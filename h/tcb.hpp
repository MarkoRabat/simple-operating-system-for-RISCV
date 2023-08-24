#ifndef TCB_HPP
#define TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"
#include "semaphore.hpp"
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
        delete ((_thread*)p)->mySem;
        myElemAllocator->freeObject(p);
    }
    using Body = void (*)(void*);
    _thread(Body body, void* arg) : _thread(body, arg, TIME_SLICE) {}
    bool isFinished() const { return finished; }
    void setFinished(bool value) { finished = value; }
    uint64 getTimeSlice() const { return timeSlice; }
    void switchTo();
    void join() { _sem::wait(mySem); }
    uint64 getTid() { return tid; }
    void setBlocked(bool b) { blocked = b; }
    bool getBlocked() { return blocked; }
    friend class Riscv;
    static _thread *running;
private:
    _thread(Body body, void* arg, uint64 timeSlice) :
            body(body), arg(arg),
            stack(body != nullptr ? (uint64*) MemoryAllocator::instance()->kmem_alloc(STACK_SIZE * sizeof(uint64)) : nullptr),
            context({ (uint64) &threadWrapper, stack != nullptr ? (uint64) (stack + STACK_SIZE) : 0 }),
            timeSlice(timeSlice), tid(nextTid++), finished(false) {

        mySem = new _sem(0);
        printString("\n&mySem = "); printInteger((uint64)mySem); printString("\n");

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
    _sem* mySem;
    static void threadWrapper();
    static void contextSwitch(Context *oldContext, Context *runningContext);
    static KObjectAllocator* myElemAllocator;
    static uint64 timeSliceCounter;
    static uint64 nextTid;
    static uint64 constexpr STACK_SIZE = 1024;
    static uint64 constexpr TIME_SLICE = 2;
};

#endif
