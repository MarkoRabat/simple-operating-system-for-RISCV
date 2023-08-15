#include "../h/print.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/memoryAllocatorTest.hpp"

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

    printString("\nMemory tests:\n");
    MemoryAllocatorTest t1;
    t1.runTests();


    return 0;
}