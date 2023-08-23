#include "../h/scheduler.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/tcb.hpp"

Scheduler* Scheduler::onlyInstance = nullptr;

Scheduler* Scheduler::instance() {
    if (!onlyInstance) {
        onlyInstance = (Scheduler*) MemoryAllocator::instance()->kmem_alloc(sizeof(Scheduler));
        onlyInstance->readyThreadQueue.initializationForDynamicAllocation();
    }
    return onlyInstance;
}

void Scheduler::get() {
    TCB* next = readyThreadQueue.removeFirst();
    while (next && next->isFinished()) {
        delete next; next = readyThreadQueue.removeFirst(); }
    /*printString("\nNumber of elements in scheduler= ");
    printInteger(readyThreadQueue.getNumberOfElements());
    printString("\n");*/

    /*if (readyThreadQueue.getNumberOfElements() == 1) {
        printString("\nLast\n");
        printString("remaining in queue: "); printInteger(readyThreadQueue.peekFirst()->getTid());
    }*/
    /*printString("\nnextTid= "); printInteger(next->getTid()); printString("\n");
    printString("\nTCB::runningTid= "); printInteger(TCB::running->getTid()); printString("\n");*/
    if (next /*&& next != TCB::running*/) next->switchTo();
    /*printString("\nAfter\nnextTid= "); printInteger(next->getTid()); printString("\n");
    printString("\nTCB::runningTid= "); printInteger(TCB::running->getTid()); printString("\n");*/
}

void Scheduler::put(TCB *ccb) {
    readyThreadQueue.addLast(ccb);
}