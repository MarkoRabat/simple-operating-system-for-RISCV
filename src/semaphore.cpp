#include "../h/semaphore.hpp"
#include "../h/tcb.hpp"
#include "../h/scheduler.hpp"

KObjectAllocator* Semaphore::myElemAllocator = nullptr;

void Semaphore::wait() {
    printString("\n\nin waiting\n\n");
    printString("\nval= "); printInteger((uint64)*val); printString("\n");
    setValue(value() - 1);
    if (value() < 0) {
        printString("\nhere1\n");
        blocked.addLast(TCB::running);
        printString("\nhere2\n");
        Scheduler::instance()->get();
        printString("\nhere3\n");
    }
}

void Semaphore::signal() {

    printString("\nval= "); printInteger((uint64)*val); printString("\n");
    if (++*val <= 0) {
        TCB* t = blocked.removeFirst();
        if (t) Scheduler::instance()->put(t);
    }
}