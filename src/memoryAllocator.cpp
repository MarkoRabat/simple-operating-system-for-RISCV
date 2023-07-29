#include "../h/memoryAllocator.hpp"
#include "../lib/hw.h"
#include "../h/print.hpp"

MemoryAllocator* MemoryAllocator::onlyInstance = nullptr;
uint8* MemoryAllocator::managedMemorySpaceStart = (uint8*) HEAP_START_ADDR;
uint8* MemoryAllocator::managedMemorySpaceEnd = (uint8*) HEAP_END_ADDR;

MemoryAllocator* MemoryAllocator::instance() {
    if (onlyInstance == nullptr)
        onlyInstance = createInstance();
    return onlyInstance;
}

MemoryAllocator* MemoryAllocator::createInstance() {
    return nullptr;
}

void MemoryAllocator::printParamsToConsole() {
    printString("Size of MemoryAllocator class: ");
    printInteger(sizeof(MemoryAllocator));
    printString("\n");

    printString("HEAP_END_ADDR - HEAP_START_ADDR: ");
    printInteger((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR));
    printString("\n");

    printString("MEM_BLOCK_SIZE: ");
    printInteger(MEM_BLOCK_SIZE);
    printString("\n");

    printString("Number of blocks in (HEAP_END_ADDR - HEAP_START_ADDR): ");
    printInteger(((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)) / MEM_BLOCK_SIZE);
    printString("\n");
}

void* MemoryAllocator::kmem_alloc(size_t size) {
    return nullptr;
}

int MemoryAllocator::kmem_free(size_t size) {
    return 0;
}
