#ifndef KOBJECTALLOCATORTEST_H
#define KOBJECTALLOCATORTEST_H

#include "memoryAllocator.hpp"
#include "kObjectAllocator.hpp"

class KObjectAllocatorTest {
public:
    KObjectAllocatorTest() {}
    void* operator new(size_t size) {
        return MemoryAllocator::instance()->kmem_alloc(size);
    }
    void operator delete(void* p) {
        MemoryAllocator::instance()->kmem_free(p);
    }
    bool runTests();
private:
    bool getValueOfBitAt(size_t byte, size_t bit, KObjectAllocator* objAlloc);
    size_t getByteOfObject(void* obj, KObjectAllocator* objAlloc);
    size_t getBitOfObject(void* obj, KObjectAllocator* objAlloc);
    void* getObjectAt(size_t byte, size_t bit, KObjectAllocator* objAlloc);
    bool test0(size_t size);
    bool test1(size_t size);
    bool test2(size_t size);
    bool test3(size_t size);
    bool test(size_t i, size_t size);
    size_t numberOfTests = 4;
    size_t sizes[7] = {
            sizeof(uint64),
            sizeof(int),
            sizeof(uint8),
            sizeof(MemoryAllocator),
            sizeof(MemoryAllocator::SegmentDescriptor),
            sizeof(KObjectAllocatorTest),
            sizeof(KObjectAllocator)
    };
};

#endif