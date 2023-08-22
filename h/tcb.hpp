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
        return MemoryAllocator::instance()->kmem_alloc(size);
    }
    void operator delete(void* p) {
        MemoryAllocator::instance()->kmem_free(((TCB*) p)->stack);
    }
    bool isFinished() const { return finished; }
    void setFinished(bool value) { finished = value; }
    uint64 getTimeSlice() const { return timeSlice; }
    using Body = void (*)();
    /*static TCB *createThread(Body body) {
        return new TCB(body, TIME_SLICE);
    }*/
    TCB(Body body) : TCB(body, TIME_SLICE) {}
    void saveContext();
    void switchTo();
    static TCB *running;
    int val;
private:
    TCB(Body body, uint64 timeSlice) :
            body(body),
            stack(body != nullptr ? (uint64*) MemoryAllocator::instance()->kmem_alloc(STACK_SIZE * sizeof(uint64)) : nullptr),
            context({ (uint64) &threadWrapper, stack != nullptr ? (uint64) (stack + STACK_SIZE) : 0 }),
            timeSlice(timeSlice), finished(false) {
        if (body != nullptr) { printString("here"); Scheduler::instance()->put(this); printString("hello there"); }
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
    // static void dispatch();
    static uint64 timeSliceCounter;
    static uint64 constexpr STACK_SIZE = 1024;
    static uint64 constexpr TIME_SLICE = 2;
};

#endif
