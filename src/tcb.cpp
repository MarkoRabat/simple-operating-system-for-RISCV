#include "../h/tcb.hpp"
#include "../h/riscv.hpp"

TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body) {
    return new TCB(body, TIME_SLICE);
}

void TCB::yield() {
    __asm__ volatile ("ecall");
}

void TCB::dispatch() {
    TCB *old = running;
    if (!old->isFinished()) { Scheduler::put(old); }
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    // Riscv::popSppSpie((uint64)&&continueFrom);
    Riscv::enterUserMode();
    running->body();
    running->setFinished(true);
    TCB::yield();
}

void TCB::saveContext() {
    contextSwitch(&context, &context);
}

void switchTo() {
    TCB *old = running;
    running = this;
    contextSwitch(&old->context, &context);
}
