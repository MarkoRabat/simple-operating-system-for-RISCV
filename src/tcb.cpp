#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/scheduler.hpp"

TCB *TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;
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
    Scheduler::instance()->put(running);
    Scheduler::instance()->get();
}

void TCB::switchTo() {
    TCB *old = running;
    running = this;
    contextSwitch(&old->context, &context);
}
