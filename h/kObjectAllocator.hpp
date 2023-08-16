#ifndef KOBJECTALLOCATOR_HPP
#define KOBJECTALLOCATOR_HPP

#include "../h/memoryAllocator.hpp"

class KObjectAllocatorTest;

/*          ^
 *          |
 *          |
 *          |
 * DELETE THIS CLASS DECLARATION
 */


class KObjectAllocator {
public:

    /*
     *
     *
     *
     *
     *
     *
     *                      #####################################
     *                      #####################################
     *                      #####################################
     *                     ### NE SMEJU SE PREDATI TESTOVI !!! ###
     *                      #####################################
     *                      #####################################
     *                      #####################################
     *
     *
     *
     *
     *
     *
     */
    friend KObjectAllocatorTest;

    /*                         ^
     *                         |
     *      DELETE THIS FRIEND |
     *
     */


    KObjectAllocator(size_t objectSize) : KObjectAllocator(objectSize, 320) {}
    KObjectAllocator(size_t objectSize, size_t initialObjectNumber)
            : numberOfObjects(initialObjectNumber), objectSize(objectSize) {
        numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
        // one bit for each object which indicates whether memory
        // corresponding to that object is allocated or free
        memorySizeForBits = numberOfObjects / 8;
        bitVector = (uint8*) MemoryAllocator::instance()->kmem_alloc(
                memorySizeForBits + numberOfObjects * objectSize
        );
        objectVector = bitVector + memorySizeForBits;   // start of memory for objects
        for (size_t i = 0; i < memorySizeForBits; bitVector[i++] = 0);
    }
    void* operator new(size_t size) {
        return MemoryAllocator::instance()->kmem_alloc(size);
    }
    void operator delete(void* p) {
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVector);
        MemoryAllocator::instance()->kmem_free(p);
    }
    void printInternalMemory();
    int getObjectSize() { return objectSize; }
    int getNumberOfObjects() { return numberOfObjects; }
    int getMemorySizeForBits() { return memorySizeForBits; }
    void* allocateNewObject();
    void freeObject(void* objectPointer);
private:
    bool handleNotEnoughMemoryProblem();
    void* allocateFreeObject();
    size_t numberOfObjects;
    size_t memorySizeForBits;
    size_t objectSize;
    uint8* objectVector;
    uint8* bitVector;
    size_t usedBytesCounter = 0;
};

#endif
