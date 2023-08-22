#include "../h/scheduler.hpp"
#include "../h/tcb.hpp"

List Scheduler::readyThreadQueue;

void Scheduler::get() {
    TCB* next = readyThreadQueue.removeFirst();
    while (next->isFinished()) {
        delete next; next = readyThreadQueue.removeFirst(); }
    next->switchTo();
}

void Scheduler::put(TCB *ccb) {
    readyThreadQueue.addLast(ccb);
}