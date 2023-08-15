#include "../h/memoryAllocatorTest.hpp"
#include "../lib/hw.h"
#include "../h/memoryAllocator.hpp"
#include "../h/print.hpp"

bool MemoryAllocatorTest::runTests() {
    #define SIZE_TEST_NUMBER 13

    uint64 sizes[SIZE_TEST_NUMBER];
    sizes[0] = 3.7 * MEM_BLOCK_SIZE;
    sizes[1] = MEM_BLOCK_SIZE;
    sizes[2] = 0.3 * MEM_BLOCK_SIZE;
    sizes[3] = 0;
    sizes[4] = -37;
    sizes[5] = sizeof(MemoryAllocator::SegmentDescriptor) - 1;
    sizes[6] = sizeof(MemoryAllocator::SegmentDescriptor);
    sizes[7] = sizeof(MemoryAllocator::SegmentDescriptor) + 1;
    sizes[8] = MemoryAllocator::minMemoryFragmentSize - 1;
    sizes[9] = MemoryAllocator::minMemoryFragmentSize;
    sizes[10] = MemoryAllocator::minMemoryFragmentSize + 1;
    sizes[11] = MEM_BLOCK_SIZE - 1;
    sizes[12] = MEM_BLOCK_SIZE + 1;

    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
        void * allocatedMemoryPointer = nullptr;
        if (!testMemoryAllocate(sizes[i], &allocatedMemoryPointer)) {
            printString("Failed testMemoryAllocate test for input ");
            printInteger(sizes[i]); printString("\n"); return false;
        } else printString("Passed ");
        if (!testMemoryFree(sizes[i], allocatedMemoryPointer)) {
            printString("Failed testMemoryFree test for input ");
            printInteger(sizes[i]); printString("\n"); return false;
        } else printString("Passed ");
        if (i != 0 && (i + 1) % 5 == 0) printString("\n");
    }

    if (!testFirstFit()) {
        printString("Failed testFirstFit\n"); return false; }
    else printString("Passed ");
    if (!testSegmentDescriptorSize()) {
        printString("Failed testSegmentDescriptorSize\n"); return false; }
    else printString("Passed\n");

    return true;
}

bool MemoryAllocatorTest::testMemoryAllocate(uint64 size, void** allocatedMemoryPointer) {
    if (!testMemoryMetadataValidity()) return false;
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();

    *allocatedMemoryPointer = MemoryAllocator::instance()->kmem_alloc(size);
    if (*allocatedMemoryPointer == nullptr && size == (uint64) -37) return true;
    MemoryAllocator::SegmentDescriptor* segDesc = (MemoryAllocator::SegmentDescriptor*)
            ((uint8*) *allocatedMemoryPointer - sizeof(MemoryAllocator::SegmentDescriptor));

    size_t minNoBlocksForSize = MemoryAllocator::getMinBlockNumber(size);
    size_t addendForSegDesc = minNoBlocksForSize * MEM_BLOCK_SIZE - size < sizeof(MemoryAllocator::SegmentDescriptor);
    size_t allocatedMemory = (minNoBlocksForSize + addendForSegDesc) * MEM_BLOCK_SIZE;

    if (!testMemoryMetadataValidity()) return false;
    size_t afterTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    size_t afterTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    size_t afterTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();

    if (beforeTestTotalFree != afterTestTotalFree + allocatedMemory) return false;
    if (beforeTestTotalTaken != afterTestTotalTaken - allocatedMemory) return false;
    if (beforeTestFreeBlockNo != afterTestFreeBlockNo + minNoBlocksForSize + addendForSegDesc) return false;

    return segDesc->noBlocks == minNoBlocksForSize + addendForSegDesc;
}

bool MemoryAllocatorTest::testMemoryFree(uint64 size, void* allocatedMemoryPointer) {
    if (!testMemoryMetadataValidity()) return false;
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();


    size_t minNoBlocksForSize = MemoryAllocator::getMinBlockNumber(size);
    size_t addendForSegDesc = minNoBlocksForSize * MEM_BLOCK_SIZE - size < sizeof(MemoryAllocator::SegmentDescriptor);
    size_t allocatedMemory = (minNoBlocksForSize + addendForSegDesc) * MEM_BLOCK_SIZE;
    if (!allocatedMemoryPointer) {
        minNoBlocksForSize = 0; addendForSegDesc = 0; allocatedMemory = 0;
    }

    MemoryAllocator::SegmentDescriptor* segDesc = nullptr;
    if (allocatedMemoryPointer) segDesc = (MemoryAllocator::SegmentDescriptor*)
            ((uint8*) allocatedMemoryPointer - sizeof(MemoryAllocator::SegmentDescriptor));

    if (allocatedMemoryPointer)
    if (segDesc->noBlocks != minNoBlocksForSize + addendForSegDesc) return false;
    MemoryAllocator::instance()->kmem_free(allocatedMemoryPointer);

    if (!testMemoryMetadataValidity()) return false;
    size_t afterTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    size_t afterTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    size_t afterTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();

    if (beforeTestTotalFree != afterTestTotalFree - allocatedMemory) return false;
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    return beforeTestFreeBlockNo == afterTestFreeBlockNo - minNoBlocksForSize - addendForSegDesc;

}

size_t MemoryAllocatorTest::getFreeBlocksCnt() {
    MemoryAllocator::SegmentDescriptor* freeMemHead = MemoryAllocator::instance()->freeMemoryHead;
    size_t blockCnt = 0;
    while (freeMemHead) {
        blockCnt += freeMemHead->noBlocks;
        freeMemHead = freeMemHead->next;
    }
    return blockCnt;
}

bool MemoryAllocatorTest::testMemoryMetadataValidity() {
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    size_t freeBlocksCnt = getFreeBlocksCnt();

    if (freeBlocksCnt != beforeTestFreeBlockNo) return false;
    if (freeBlocksCnt != beforeTestTotalFree / MEM_BLOCK_SIZE) return false;

    size_t totalMemory = (size_t) (MemoryAllocator::managedMemorySpaceEnd - MemoryAllocator::managedMemorySpaceStart);
    return totalMemory == beforeTestTotalFree + beforeTestTotalTaken;
}

bool MemoryAllocatorTest::testFirstFit() {
    if (!firstFitTest1()) return false;
    if (!firstFitTest2()) return false;
    if (!firstFitTest3()) return false;
    return true;
}

bool MemoryAllocatorTest::firstFitTest1() {
    if (!testMemoryMetadataValidity()) return false;
    size_t sizes[5] = {47, 48, 49, 30, 289};
    void* pointers[5];

    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
        return false;

    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 64 + sizeof(MemoryAllocator::SegmentDescriptor))
        return false;

    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + 2 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
        return false;

    MemoryAllocator::instance()->kmem_free(pointers[1]);
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    if (pointers[3] != MemoryAllocator::managedMemorySpaceStart + 64 + sizeof(MemoryAllocator::SegmentDescriptor))
        return false;

    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + 4 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
        return false;

    if (!testMemoryMetadataValidity()) return false;
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}


void MemoryAllocatorTest::printPointer(int i, void** pointers) {
    printString("\npointers[");
    printInteger(i);
    printString("]: ");
    printInteger((uint64)((uint8*) pointers[i] - MemoryAllocator::managedMemorySpaceStart));
    printString("\npointers[");
    printInteger(i);
    printString("]->blockNo: "); printInteger((uint64) (((MemoryAllocator::SegmentDescriptor*) pointers[i])->noBlocks));
    printString("\n");
}

bool MemoryAllocatorTest::firstFitTest2() {
    if (!testMemoryMetadataValidity()) return false;
    size_t sizes[6] = {130, 20, 120, 30, 47, 20};
    void* pointers[6];

    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
        return false;

    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 3 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
        return false;

    MemoryAllocator::instance()->kmem_free(pointers[0]);
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
        return false;

    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    if (pointers[3] != MemoryAllocator::managedMemorySpaceStart + 4 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
        return false;

    MemoryAllocator::instance()->kmem_free(pointers[2]);
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
        return false;

    pointers[5] = MemoryAllocator::instance()->kmem_alloc(sizes[5]);
    if (pointers[5] != MemoryAllocator::managedMemorySpaceStart + 1 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
        return false;

    if (!testMemoryMetadataValidity()) return false;
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}


bool MemoryAllocatorTest::firstFitTest3() {
    if (!testMemoryMetadataValidity()) return false;
    size_t sizes[8] = {304, 49, 230, (size_t) -37, 30, 150, 47, 37};
    void* pointers[8];

    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
        return false;

    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 5 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
        return false;

    MemoryAllocator::instance()->kmem_free(pointers[0]);
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
        return false;

    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    if (pointers[3]) return false;

    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + 7 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
        return false;

    MemoryAllocator::instance()->kmem_free(pointers[2]);
    pointers[5] = MemoryAllocator::instance()->kmem_alloc(sizes[5]);
    if (pointers[5] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
        return false;

    pointers[6] = MemoryAllocator::instance()->kmem_alloc(sizes[6]);
    if (pointers[6] != MemoryAllocator::managedMemorySpaceStart + 3 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
        return false;

    pointers[7] = MemoryAllocator::instance()->kmem_alloc(sizes[7]);
    if (pointers[7] != MemoryAllocator::managedMemorySpaceStart + 8 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
        return false;

    if (!testMemoryMetadataValidity()) return false;
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    MemoryAllocator::instance()->kmem_free(pointers[6]);
    MemoryAllocator::instance()->kmem_free(pointers[7]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}

bool MemoryAllocatorTest::testSegmentDescriptorSize() {
    if (!testMemoryMetadataValidity()) return false;
    return sizeof(MemoryAllocator::SegmentDescriptor) == 16;
}
