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
        myElemAllocator->freeObject(p);
    }
    bool isFinished() const { return finished; }
    void setFinished(bool value) { finished = value; }
    uint64 getTimeSlice() const { return timeSlice; }
    using Body = void (*)();
    /*static TCB *createThread(Body body) {
        return new TCB(body, TIME_SLICE);
    }*/
    TCB(Body body) : TCB(body, TIME_SLICE) {}
    void switchTo();
    void printSp() { printString("\nsp= "); printInteger(context.sp); printString("\n"); }
    static TCB *running;
    int val;
private:
    TCB(Body body, uint64 timeSlice) :
            body(body),
            stack(body != nullptr ? (uint64*) MemoryAllocator::instance()->kmem_alloc(STACK_SIZE * sizeof(uint64)) : nullptr),
            context({ (uint64) &threadWrapper, stack != nullptr ? (uint64) (stack + STACK_SIZE) : 0 }),
            timeSlice(timeSlice), finished(false) {
        if (body != nullptr) { Scheduler::instance()->put(this); }
    }
    struct Context {
        uint64 ra;
        uint64 sp;
    };
    Body body;
    uint64 *stack;
    Context context;
    uint64 timeSlice;
    bool finished;
    friend class Riscv;
    static void threadWrapper();
    static void contextSwitch(Context *oldContext, Context *runningContext);
    static KObjectAllocator* myElemAllocator;
    static uint64 timeSliceCounter;
    static uint64 constexpr STACK_SIZE = 1024;
    static uint64 constexpr TIME_SLICE = 2;
};

#endif
