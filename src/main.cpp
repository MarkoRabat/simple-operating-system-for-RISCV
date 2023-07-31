#include "../h/print.hpp"
#include "../h/memoryAllocator.hpp"

int main() {

    //MemoryAllocator::instance()->printFreeMemoryHeadData();
    MemoryAllocator::instance()->printInstanceMemorySpaceParams();

    printString("ALOCATED:::::::::::::::::::::::::::::::::::");
    void* p = MemoryAllocator::instance()->kmem_alloc(120);
    //MemoryAllocator::instance()->printFreeMemoryHeadData();
    MemoryAllocator::instance()->printInstanceMemorySpaceParams();

    printString("FREE:::::::::::::::::::::::::::::::::::::::");
    MemoryAllocator::instance()->kmem_free(p);
    //MemoryAllocator::instance()->printFreeMemoryHeadData();
    MemoryAllocator::instance()->printInstanceMemorySpaceParams();



    return 0;
}