#ifndef KOBJECTALLOCATOR_HPP
#define KOBJECTALLOCATOR_HPP

#include "../h/memoryAllocator.hpp"

class KObjectAllocator {
public:
    KObjectAllocator(size_t objectSize) : objectSize(objectSize) {
        bitVector = (uint8*) MemoryAllocator::instance()->kmem_alloc(
            memoryForBits + initialObjectNumber * objectSize
        );
        objectVector = bitVector + memoryForBits;
        for (size_t i = 0; i < memoryForBits; bitVector[i++] = 0);
    }
    void* operator new(size_t size) {
        return MemoryAllocator::instance()->kmem_alloc(size);
    }
    void operator delete(void* p) {
        MemoryAllocator::instance()->kmem_free(p);
    }
    void printInternalMemory();
    void* allocateNewObject();
    void freeObject(void* objectPointer);
private:
    size_t objectSize;
    size_t initialObjectNumber = 320;
    size_t memoryForBits = 40; // 40B = 320b
    uint8* objectVector;
    uint8* bitVector;

};

#endif
