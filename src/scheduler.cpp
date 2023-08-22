#include "../h/scheduler.hpp"

List<TCB> Scheduler::readyThreadQueue;

TCB *Scheduler::get() {
    TCB* next = readyThreadQueue.removeFirst();
    while (next->isFinished()) {
        delete next; next = readyThreadQueue.removeFirst(); }
    next->switchTo();
}

void Scheduler::put(TCB *ccb) {
    readyThreadQueue.addLast(ccb);
}