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
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
        // one bit for each object which indicates whether memory
        // corresponding to that object is allocated or free
        memorySizeForBits = numberOfObjects / 8;
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
                memorySizeForBits + initialNumberOfObjects * objectSize
        );
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    }
    void* operator new(size_t size) {
        return MemoryAllocator::instance()->kmem_alloc(size);
    }
    void operator delete(void* p) {
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
        MemoryAllocator::instance()->kmem_free(p);
    }
    void printInternalMemory();
    size_t getObjectSize() { return objectSize; }
    size_t getInitialNumberOfObjects() { return initialNumberOfObjects; }
    size_t getNumberOfObjects() { return numberOfObjects; }
    size_t getMemorySizeForBits() { return memorySizeForBits; }
    size_t getNumberOfAllocations() { return numberOfAllocations; }
    void* allocateNewObject();
    void freeObject(void* objectPointer);
private:
    bool handleNotEnoughMemoryProblem();
    void* allocateFreeObject();
    size_t initialNumberOfObjects;
    size_t numberOfObjects;
    size_t memorySizeForBits;
    size_t objectSize;
    uint8** objectVectors;
    uint8** bitVectors;
    size_t numberOfAllocations = 1;
    size_t nextNonTakenByte = 0;
};

#endif
