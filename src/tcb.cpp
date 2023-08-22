#include "../h/tcb.hpp"
#include "../h/riscv.hpp"

TCB *TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;
TCB *TCB::createThread(Body body) {
    return new TCB(body, TIME_SLICE);
}

/*
void TCB::dispatch() {
    TCB *old = running;
    if (!old->isFinished()) { Scheduler::put(old); }
    running = Scheduler::get();
    TCB::contextSwitch(&old->context, &running->context);
}
*/

void TCB::threadWrapper() {
    Riscv::enterUserMode();
    running->body();
    running->setFinished(true);
}

void TCB::saveContext() {
    contextSwitch(&context, &context);
}

void TCB::switchTo() {
    TCB *old = running;
    running = this;
    contextSwitch(&old->context, &context);
}
