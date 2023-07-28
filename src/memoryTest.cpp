#include "../h/memoryTest.hpp"
#include "../lib/hw.h"

bool MemoryTest::runTests() {
    #define SIZE_TEST_NUMBER 5

    uint64 sizes[SIZE_TEST_NUMBER];
    sizes[0] = 3.7 * MEM_BLOCK_SIZE;
    sizes[1] = MEM_BLOCK_SIZE;
    sizes[2] = 0.3 * MEM_BLOCK_SIZE;
    sizes[3] = 0;
    sizes[4] = -37;

    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
        void *allocatedMemoryPoiner = nullptr;
        if (!testMemoryAllocate(sizes[i], &allocatedMemoryPointer)) return false;
        if (!testMemoryFree(sizes[i], allocatedMemoryPointer)) return false;
    }

    if (!testFirstFit()) return false;


    return true;
}

bool MemoryTest::testMemoryAllocate(uint64 size, void** allocatedMemoryPointer) {
    return true;
}

bool MemoryTest::testMemoryFree(uint64 size, void* allocatedMemoryPointer) {
    return true;
}

bool MemoryTest::testFirstFit() {
    return true;
}
