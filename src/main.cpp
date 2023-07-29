#include "../h/print.hpp"
#include "../h/memoryAllocator.hpp"

int main() {

    MemoryAllocator::printMemorySpaceParams();
    MemoryAllocator::instance()->printInstanceMemorySpaceParams();
    MemoryAllocator::printMemorySpaceParams();

    MemoryAllocator::instance()->printFreeMemoryHeadData();

    MemoryAllocator::instance()->kmem_alloc(120);
    MemoryAllocator::instance()->printFreeMemoryHeadData();
    MemoryAllocator::instance()->printInstanceMemorySpaceParams();



    return 0;
}