#ifndef MEMORYTEST_HPP
#define MEMORYTEST_HPP

class MemoryTest {
public:
    bool runTests();
private:
    bool testMemoryAllocate(uint64 size, void** allocatedMemoryPointer);
    bool testMemoryFree(uint64 size, void* allocatedMemoryPointer);
    bool testFirstFit();
};

#endif