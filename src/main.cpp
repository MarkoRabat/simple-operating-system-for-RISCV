#include "../h/print.hpp"
#include "../h/memoryAllocator.hpp"

int main() {

    MemoryAllocator::printMemorySpaceParamsToConsole();
    MemoryAllocator::instance()->printInstanceMemorySpaceParamsToConsole();
    MemoryAllocator::printMemorySpaceParamsToConsole();

    return 0;
}