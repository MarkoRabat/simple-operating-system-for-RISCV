#ifndef MEMORYALLOCATOR_HPP
#define MEMORYALLOCATOR_HPP

#include "../lib/hw.h"

// singleton
class MemoryAllocator {
public:
    static MemoryAllocator* instance();
    void* kmem_alloc(size_t size);
    int kmem_free(size_t size);
    static void printParamsToConsole();
    static MemoryAllocator* createInstance();
protected:
private:
    static MemoryAllocator* onlyInstance;
    static uint8* managedMemorySpaceStart;
    static uint8* managedMemorySpaceEnd;

    size_t totalTaken = 0;
    size_t totalFree = (size_t) (managedMemorySpaceEnd - managedMemorySpaceStart); // free memory in B
    const size_t freeBlockNo = totalFree / MEM_BLOCK_SIZE;

};

#endif