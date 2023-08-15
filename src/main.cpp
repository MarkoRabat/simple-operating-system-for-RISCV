#include "../h/print.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/memoryAllocatorTest.hpp"
#include "../h/kObjectAllocator.hpp"

int main() {

    uint64* arr = (uint64*) MemoryAllocator::instance()->kmem_alloc(64 * 100);
    for (int i = 0; i < 100; ++i) arr[i] = (uint64) -1;
    MemoryAllocator::instance()->kmem_free(arr);

    KObjectAllocator* newObj = new KObjectAllocator(10);
    newObj->printInternalMemory();
    delete newObj;

    printString("\n");
    printInteger((uint8) -1 >> 4 & (uint8) 1);

    printString("\nMemory tests:\n");
    MemoryAllocatorTest t1;
    t1.runTests();


    return 0;
}