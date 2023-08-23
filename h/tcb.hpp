#ifndef TCB_HPP
#define TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"
#include "print.hpp"

// Thread Control Block
class TCB
{
public:
    void* operator new(size_t size) {
        if (!myElemAllocator) myElemAllocator = new KObjectAllocator(sizeof(TCB));
        return myElemAllocator->allocateNewObject();
    }
    void operator delete(void* p) {
        if (p) myElemAllocator->freeObject(p);
    }
    bool isFinished() const { return finished; }
    void setFinished(bool value) { finished = value; }
    uint64 getTimeSlice() const { return timeSlice; }
    using Body = void (*)(void*);
    /*static TCB *createThread(Body body) {
        return new TCB(body, TIME_SLICE);
    }*/
    TCB(Body body, void* arg) : TCB(body, arg, TIME_SLICE) {}
    void switchTo();
    uint64 getTid() { return tid; }
    static TCB *running;
private:
    TCB(Body body, void* arg, uint64 timeSlice) :
            body(body), arg(arg),
            stack(body != nullptr ? (uint64*) MemoryAllocator::instance()->kmem_alloc(STACK_SIZE * sizeof(uint64)) : nullptr),
            context({ (uint64) &threadWrapper, stack != nullptr ? (uint64) (stack + STACK_SIZE) : 0 }),
            timeSlice(timeSlice), tid(nextTid++), finished(false) {}
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
    bool finished;
    friend class Riscv;
    static void threadWrapper();
    static void contextSwitch(Context *oldContext, Context *runningContext);
    static KObjectAllocator* myElemAllocator;
    static uint64 timeSliceCounter;
    static uint64 nextTid;
    static uint64 constexpr STACK_SIZE = 1024;
    static uint64 constexpr TIME_SLICE = 2;
};

#endif
