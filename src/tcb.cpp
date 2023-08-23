#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/scheduler.hpp"

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
    Scheduler::instance()->put(running);
    Scheduler::instance()->get();
}

void TCB::switchTo() {

    TCB *old = running;
    running = this;
    /*if (old->getTid() == 0 || running->getTid() == 0) {
        printString("\n=======================================\n");
        printString("Saved:\n");
        printString("\noldTid= "); printInteger(old->getTid()); printString("\n");
        printString("context.ra= "); printInteger(old->context.ra); printString("\n");
        printString("context.sp= "); printInteger(old->context.sp); printString("\n");

        printString("Loaded:\n");
        printString("\nnextTid= "); printInteger(TCB::running->getTid()); printString("\n");
        printString("context.ra= "); printInteger(TCB::running->context.ra); printString("\n");
        printString("context.sp= "); printInteger(TCB::running->context.sp); printString("\n");
        printString("\n=======================================\n");
    }*/
    contextSwitch(&old->context, &context);
    /*if (old->getTid() == 0 || running->getTid() == 0) {
        printString("\n----------------------------------------\n");
        printString("Stored:\n");
        printString("\nTCB::runningTid= "); printInteger(old->getTid()); printString("\n");
        printString("context.ra= "); printInteger(old->context.ra); printString("\n");
        printString("context.sp= "); printInteger(old->context.sp); printString("\n");

        printString("Loaded:\n");
        printString("\nTCB::runningTid= "); printInteger(TCB::running->getTid()); printString("\n");
        printString("context.ra= "); printInteger(TCB::running->context.ra); printString("\n");
        printString("context.sp= "); printInteger(TCB::running->context.sp); printString("\n");
        printString("\n----------------------------------------\n");
    }*/
}
