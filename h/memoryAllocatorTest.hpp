#ifndef MEMORYALLOCATORTEST_HPP
#define MEMORYALLOCATORTEST_HPP

#include "../lib/hw.h"

class MemoryAllocatorTest {
public:
    bool runTests();
private:
    bool testMemoryAllocate(uint64 size, void** allocatedMemoryPointer);
    bool testMemoryFree(uint64 size, void* allocatedMemoryPointer);
    bool testFirstFit();
    bool firstFitTest1();
    bool firstFitTest2();
    bool firstFitTest3();
    void printPointer(int i, void** pointers);
    bool testSegmentDescriptorSize();
    bool testMemoryMetadataValidity();
    size_t getFreeBlocksCnt();
};

#endif