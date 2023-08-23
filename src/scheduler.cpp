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
    printString("peekFirst(): "); printInteger((uint64) readyThreadQueue.peekFirst()); printString("\n");
    printString("peekLast(): "); printInteger((uint64) readyThreadQueue.peekLast()); printString("\n");
    printString("isFinished(): ");
    printInteger((uint64)next->isFinished());
    printString("\n");
    while (/*next &&*/ next->isFinished()) {
        delete next; next = readyThreadQueue.removeFirst(); }
    if (next) next->switchTo();
}

void Scheduler::put(TCB *ccb) {
    readyThreadQueue.addLast(ccb);
}