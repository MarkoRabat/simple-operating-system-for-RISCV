#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/scheduler.hpp"
#include "../h/syscall_c.hpp"

TCB *TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;
uint64 TCB::nextTid = 0;
KObjectAllocator* TCB::myElemAllocator = nullptr;

/*
void TCB::dispatch() {
    TCB *old = running;
    if (!old->isFinished()) { Scheduler::put(old); }
    running = Scheduler::get();
    TCB::contextSwitch(&old->context, &running->context);
}
*/

void TCB::threadWrapper() {
    //Riscv::enterUserMode();
    running->body(running->arg);
    running->setFinished(true);
    /*Scheduler::instance()->put(running);
    Scheduler::instance()->get();*/
    thread_dispatch();
}

void TCB::switchTo() {
    TCB *old = running; running = this;
    contextSwitch(&old->context, &context);
}
