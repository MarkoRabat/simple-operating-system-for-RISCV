#include "../h/scheduler.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/tcb.hpp"

Scheduler* Scheduler::onlyInstance = nullptr;
_thread* Scheduler::mainThread = nullptr;
_thread* Scheduler::placeHolder = nullptr;

Scheduler* Scheduler::instance() {
    if (!onlyInstance) {
        onlyInstance = (Scheduler*) MemoryAllocator::instance()->kmem_alloc(sizeof(Scheduler));
        onlyInstance->readyThreadQueue.initializationForDynamicAllocation();
    }
    return onlyInstance;
}

void Scheduler::get() {
    _thread* next = readyThreadQueue.removeFirst();
    while (next && next->isFinished()) {
        delete next; next = readyThreadQueue.removeFirst(); }
    /*printString("Number of elements: "); printInteger(readyThreadQueue.getNumberOfElements()); printString("\n");
    if (readyThreadQueue.peekFirst()) {
        printString("Thread id: "); printInteger(readyThreadQueue.peekFirst()->getTid()); printString("\n");
    }*/
    if (next) next->switchTo();
}

void Scheduler::put(_thread *ccb) {
    readyThreadQueue.addLast(ccb);
    //printString("Thread id: "); printInteger(readyThreadQueue.peekFirst()->getTid()); printString("\n");
}