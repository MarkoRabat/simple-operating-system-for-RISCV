#include "../h/memoryAllocator.hpp"
#include "../lib/hw.h"
#include "../h/print.hpp"

MemoryAllocator* MemoryAllocator::onlyInstance = nullptr;
uint8* MemoryAllocator::managedMemorySpaceStart = nullptr;
uint8* MemoryAllocator::managedMemorySpaceEnd = nullptr;

MemoryAllocator* MemoryAllocator::instance() {
    if (onlyInstance == nullptr)
        onlyInstance = createInstance();
    return onlyInstance;
}

MemoryAllocator* MemoryAllocator::createInstance() {
    managedMemorySpaceStart = (uint8*) HEAP_START_ADDR;
    managedMemorySpaceEnd = (uint8*) HEAP_END_ADDR;

    size_t noBlocksForStoringMemoryAllocator = sizeof(MemoryAllocator) / MEM_BLOCK_SIZE + 1;
    MemoryAllocator* newMemoryAllocator = (MemoryAllocator*)managedMemorySpaceStart;
    managedMemorySpaceStart += noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE;

    newMemoryAllocator->totalTaken = 0;
    newMemoryAllocator->totalFree = (size_t) (managedMemorySpaceEnd - managedMemorySpaceStart); // free memory in Bytes
    newMemoryAllocator->freeBlockNo = newMemoryAllocator->totalFree / MEM_BLOCK_SIZE;

    return newMemoryAllocator;
}


void MemoryAllocator::printInstanceMemorySpaceParamsToConsole() {
    printString("##################################\n\n");
    printString("MemoryAllocator address: "); printInteger((uint64)this); printString("\n");

    size_t noBlocksForStoringMemoryAllocator = sizeof(MemoryAllocator) / MEM_BLOCK_SIZE + 1;
    printString("noBlocksForStoringMemoryAllocator: ");
    printInteger(noBlocksForStoringMemoryAllocator); printString("\n");
    printString("noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE: ");
    printInteger(noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE); printString("\n\n");

    printString("Managed memory space start: ");
    printInteger((uint64)managedMemorySpaceStart); printString("\n");
    printString("Managed memory space end: ");
    printInteger((uint64)managedMemorySpaceEnd); printString("\n\n");

    printString("Total Free: "); printInteger(getTotalFree()); printString("\n");
    printString("Total Taken: "); printInteger(getTotalTaken()); printString("\n");
    printString("Free Block No: "); printInteger(getFreeBlockNo()); printString("\n");
    printString("\n##################################\n");
}

void MemoryAllocator::printMemorySpaceParamsToConsole() {
    printString("----------------------------------\n\n");
    printString("Size of MemoryAllocator class: ");
    printInteger(sizeof(MemoryAllocator)); printString("\n");

    printString("HEAP_START_ADDR: "); printInteger((uint64)HEAP_START_ADDR); printString("\n");
    printString("HEAP_END_ADDR: "); printInteger((uint64)HEAP_END_ADDR); printString("\n");

    printString("HEAP_END_ADDR - HEAP_START_ADDR: ");
    printInteger((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)); printString("\n");

    printString("MEM_BLOCK_SIZE: "); printInteger(MEM_BLOCK_SIZE); printString("\n");

    printString("Number of blocks in (HEAP_END_ADDR - HEAP_START_ADDR): ");
    printInteger(((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)) / MEM_BLOCK_SIZE);
    printString("\n");
    printString("\n----------------------------------\n");
}

void* MemoryAllocator::kmem_alloc(size_t size) {
    return nullptr;
}

int MemoryAllocator::kmem_free(size_t size) {
    return 0;
}
