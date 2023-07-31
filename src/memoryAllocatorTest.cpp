#include "../h/memoryAllocatorTest.hpp"
#include "../lib/hw.h"
#include "../h/memoryAllocator.hpp"
#include "../h/print.hpp"

bool MemoryAllocatorTest::runTests() {
    #define SIZE_TEST_NUMBER 11

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

    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
        void * allocatedMemoryPointer = nullptr;
        if (!testMemoryAllocate(sizes[i], &allocatedMemoryPointer)) {
            printString("Failed testMemoryAllocate test for input ");
            printInteger(sizes[i]); printString("\n"); return false;
        } else printString("Passed\n");
        if (!testMemoryFree(sizes[i], allocatedMemoryPointer)) {
            printString("Failed testMemoryFree test for input ");
            printInteger(sizes[i]); printString("\n"); return false;
        } else printString("Passed\n");
    }

    if (!testFirstFit()) {
        printString("Failed testFirstFit\n"); return false; }
    else printString("Passed\n");
    if (!testSegmentDescriptorSize()) {
        printString("Failed testSegmentDescriptorSize\n"); return false; }
    else printString("Passed\n");

    return true;
}

bool MemoryAllocatorTest::testMemoryAllocate(uint64 size, void** allocatedMemoryPointer) {
    return true;
}

bool MemoryAllocatorTest::testMemoryFree(uint64 size, void* allocatedMemoryPointer) {
    return true;
}

bool MemoryAllocatorTest::testFirstFit() {
    return true;
}

bool MemoryAllocatorTest::testSegmentDescriptorSize() {
    if (sizeof(MemoryAllocator::SegmentDescriptor) != 16) return false;
    return true;
}
