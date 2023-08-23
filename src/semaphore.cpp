#include "../h/semaphore.hpp"
#include "../h/tcb.hpp"
#include "../h/scheduler.hpp"

KObjectAllocator* Semaphore::myElemAllocator = nullptr;

void Semaphore::wait() {
    if (--val < 0) {
        blocked.addLast(TCB::running);
        Scheduler::instance()->get();
    }
}

void Semaphore::signal() {
    if (++val <= 0) {
        TCB* t = blocked.removeFirst();
        if (t) Scheduler::instance()->put(t);
    }
}