#ifndef TCB_HPP
#define TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"
#include "print.hpp"

void infiniteDispatchLoop(void*);


// Thread Control Block
class _thread
{
public:
    void* operator new(size_t size) {
        if (!myElemAllocator) myElemAllocator = new KObjectAllocator(sizeof(_thread));
        return myElemAllocator->allocateNewObject();
    }
    void operator delete(void* p) {
        if (p) myElemAllocator->freeObject(p);
    }
    bool isFinished() const { return finished; }
    void setFinished(bool value) { finished = value; }
    uint64 getTimeSlice() const { return timeSlice; }
    using Body = void (*)(void*);
    /*static _thread *createThread(Body body) {
        return new _thread(body, TIME_SLICE);
    }*/
    _thread(Body body, void* arg) : _thread(body, arg, TIME_SLICE) {}
    void switchTo();
    uint64 getTid() { return tid; }
    static _thread *running;
    friend class Riscv;
    void setBlocked(bool b) { blocked = b; }
    bool getBlocked() { return blocked; }
private:
    _thread(Body body, void* arg, uint64 timeSlice) :
            body(body), arg(arg),
            stack(body != nullptr ? (uint64*) MemoryAllocator::instance()->kmem_alloc(STACK_SIZE * sizeof(uint64)) : nullptr),
            context({ (uint64) &threadWrapper, stack != nullptr ? (uint64) (stack + STACK_SIZE) : 0 }),
            timeSlice(timeSlice), tid(nextTid++), finished(false) {
        if (body == nullptr && Scheduler::mainThread == nullptr) {
            Scheduler::mainThread = this;
            Scheduler::placeHolder = new _thread(infiniteDispatchLoop, nullptr, TIME_SLICE);
            Scheduler::instance()->put(Scheduler::placeHolder);
        }
    }
    struct Context {
        uint64 ra;
        uint64 sp;
    };
    Body body;
    void* arg;
    uint64 *stack;
    Context context;
    uint64 timeSlice;
    uint64 tid;
    bool blocked = false;
    bool finished;
    static void threadWrapper();
    static void contextSwitch(Context *oldContext, Context *runningContext);
    static KObjectAllocator* myElemAllocator;
    static uint64 timeSliceCounter;
    static uint64 nextTid;
    static uint64 constexpr STACK_SIZE = 1024;
    static uint64 constexpr TIME_SLICE = 2;
};

#endif
