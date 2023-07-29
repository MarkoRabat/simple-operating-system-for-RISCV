#include "../h/print.hpp"
#include "../h/memoryAllocator.hpp"

int main() {

    MemoryAllocator::printMemorySpaceParams();
    MemoryAllocator::instance()->printInstanceMemorySpaceParams();
    MemoryAllocator::printMemorySpaceParams();

    MemoryAllocator::instance()->printFreeMemoryHeadData();


    return 0;
}