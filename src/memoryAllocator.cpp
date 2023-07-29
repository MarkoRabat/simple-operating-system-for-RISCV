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

    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
    MemoryAllocator* newMemoryAllocator = (MemoryAllocator*)managedMemorySpaceStart;
    managedMemorySpaceStart += noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE;

    newMemoryAllocator->totalTaken = 0;
    newMemoryAllocator->totalFree = (size_t) (managedMemorySpaceEnd - managedMemorySpaceStart);
    newMemoryAllocator->freeBlockNo = newMemoryAllocator->totalFree / MEM_BLOCK_SIZE;

    newMemoryAllocator->freeMemoryHead = (SegmentDescriptor*) managedMemorySpaceStart;

    size_t minBlockNoForSegmentDesc = getMinBlockNumber(sizeof(SegmentDescriptor));
    newMemoryAllocator->totalTaken +=  minBlockNoForSegmentDesc * MEM_BLOCK_SIZE;
    newMemoryAllocator->freeBlockNo -= minBlockNoForSegmentDesc;
    newMemoryAllocator->totalFree -= newMemoryAllocator->totalTaken;

    newMemoryAllocator->freeMemoryHead->noBlocks = newMemoryAllocator->freeBlockNo;
    newMemoryAllocator->freeMemoryHead->next = nullptr;

    return newMemoryAllocator;
}

size_t MemoryAllocator::getMinBlockNumber(size_t size) {
    size_t blockNo = size / MEM_BLOCK_SIZE;
    blockNo = blockNo + (size - blockNo * MEM_BLOCK_SIZE != 0);
    return blockNo;
}


SegmentDesc* MemoryAllocator::firstFit(size_t blockNo) {
    SegmentDescriptor* largeEnoughSegment = freeMemoryHead;
    SegmentDescriptor* prevSegment = nullptr;
    while (largeEnoughSegment && largeEnoughSegment->noBlocks + 1 < blockNo) {
        prevSegment = largeEnoughSegment;
        largeEnoughSegment = largeEnoughSegment->next;
    }
    if (!largeEnoughSegment) return nullptr;

    size_t minFragmentSize = getMinBlockNumber(sizeof(SegmentDescriptor)) + getMinBlockNumber(sizeof(uint64));
    if (largeEnoughSegment->noBlocks + 1 - blockNo >= minFragmentSize) {
        SegmentDescriptor* newSegment = (SegmentDescriptor*) ((uint8*) largeEnoughSegment + blockNo * MEM_BLOCK_SIZE);
        newSegment->noBlocks = largeEnoughSegment->noBlocks - blockNo;
        newSegment->next = largeEnoughSegment->next;
        largeEnoughSegment->next = newSegment;
        largeEnoughSegment->noBlocks = blockNo;
    }
    if (prevSegment) prevSegment->next = largeEnoughSegment->next;

    if (freeMemoryHead == largeEnoughSegment)
        freeMemoryHead = largeEnoughSegment->next;

    largeEnoughSegment->next = nullptr;
    return largeEnoughSegment;
}

void* MemoryAllocator::kmem_alloc(size_t size) {
    size_t minBlockNo = getMinBlockNumber(size);
    if (minBlockNo * MEM_BLOCK_SIZE - size < sizeof(SegmentDescriptor)) ++minBlockNo;
    SegmentDescriptor* newTaken = firstFit(minBlockNo);

    freeBlockNo -= minBlockNo;
    totalFree -= minBlockNo * MEM_BLOCK_SIZE;
    totalTaken += minBlockNo * MEM_BLOCK_SIZE;

    return (uint8*) takenSegmentHead + sizeof(SegmentDescriptor);
}

int MemoryAllocator::kmem_free(size_t size) {
    return 0;
}

void MemoryAllocator::printInstanceMemorySpaceParams() {
    printString("##################################\n\n");
    printString("MemoryAllocator address: "); printInteger((uint64)this); printString("\n");

    // size_t noBlocksForStoringMemoryAllocator = sizeof(MemoryAllocator) / MEM_BLOCK_SIZE + 1;
    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
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

void MemoryAllocator::printMemorySpaceParams() {
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

void MemoryAllocator::printFreeMemoryHeadData() {
    printString("##################################\n\n");
    printString("freeMemoryHead: ");
    printInteger((uint64)freeMemoryHead); printString("\n");
    printString("freeMemoryHead->noBlocks: ");
    printInteger((uint64)freeMemoryHead->noBlocks); printString("\n");
    printString("freeMemoryHead->next: ");
    printInteger((uint64)freeMemoryHead->next); printString("\n");
    printString("Segment Descriptor size: ");
    printInteger(sizeof(*freeMemoryHead)); printString("\n");
    printString("\n##################################\n");
}
