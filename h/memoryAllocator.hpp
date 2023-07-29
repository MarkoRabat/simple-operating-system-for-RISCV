#ifndef MEMORYALLOCATOR_HPP
#define MEMORYALLOCATOR_HPP

#include "../lib/hw.h"

// singleton
class MemoryAllocator {
public:
    static MemoryAllocator* instance();
    static void printMemorySpaceParamsToConsole();

    void* kmem_alloc(size_t size);
    int kmem_free(size_t size);
    void printInstanceMemorySpaceParamsToConsole();
    size_t getTotalFree() { return totalFree; }
    size_t getTotalTaken() { return totalTaken; }
    size_t getFreeBlockNo() { return freeBlockNo; }
private:
    static MemoryAllocator* createInstance();
    static MemoryAllocator* onlyInstance;
    static uint8* managedMemorySpaceStart;
    static uint8* managedMemorySpaceEnd;

    size_t totalFree; size_t freeBlockNo; size_t totalTaken;

};

#endif