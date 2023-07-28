#ifndef MEMORYALLOCATOR_HPP
#define MEMORYALLOCATOR_HPP

#include "../lib/hw.h"

class MemoryAllocator {
public:
    void* kmem_alloc(size_t size);
    int kmem_free(size_t size);
private:
    size_t totalTaken = 0;
    size_t totalFree = (size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR); // free memory in B
    const size_t freeBlockNo = totalFree / MEM_BLOCK_SIZE;

};

#endif