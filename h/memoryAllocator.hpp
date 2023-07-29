#ifndef MEMORYALLOCATOR_HPP
#define MEMORYALLOCATOR_HPP

#include "../lib/hw.h"

class MemoryAllocatorTest;

// singleton
class MemoryAllocator {
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
    friend MemoryAllocatorTest;

    static MemoryAllocator* instance();
    static void printMemorySpaceParams();
    static size_t getMinBlockNumber (size_t size);

    void* kmem_alloc(size_t size);
    int kmem_free(size_t size);
    void printInstanceMemorySpaceParams();
    void printFreeMemoryHeadData();
    size_t getTotalFree() { return totalFree; }
    size_t getTotalTaken() { return totalTaken; }
    size_t getFreeBlockNo() { return freeBlockNo; }
private:
    struct SegmentDescriptor {
    public:
        size_t noBlocks = 0;
        SegmentDescriptor* next = nullptr;
    };
    static MemoryAllocator* createInstance();
    static MemoryAllocator* onlyInstance;
    static uint8* managedMemorySpaceStart;
    static uint8* managedMemorySpaceEnd;

    SegmentDescriptor* firstFit(size_t blockNo);

    // totalFree|Taken memory in Bytes
    size_t totalFree; size_t totalTaken;
    size_t freeBlockNo;
    SegmentDescriptor* freeMemoryHead;
};

#endif