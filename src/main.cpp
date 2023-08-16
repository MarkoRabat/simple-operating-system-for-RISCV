#include "../h/print.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/kObjectAllocator.hpp"

// tests delete this before submition !!!!!!!!!!!
#include "../h/memoryAllocatorTest.hpp"
#include "../h/kObjectAllocatorTest.hpp"

int main() {

    uint64* arr = (uint64*) MemoryAllocator::instance()->kmem_alloc(64 * 100);
    for (int i = 0; i < 100; ++i) arr[i] = (uint64) -1;
    MemoryAllocator::instance()->kmem_free(arr);

    KObjectAllocator* newObj = new KObjectAllocator(3243, 328);
    printString("\nobjectSize: ");
    printInteger(newObj->getObjectSize());
    printString("\n");

    printString("objectNumber: ");
    printInteger(newObj->getNumberOfObjects());
    printString("\n");

    printString("memoryForBits: ");
    printInteger(newObj->getMemorySizeForBits());
    printString("\n");

    delete newObj;

    printString("\nKObjectAllocator tests:\n");
    KObjectAllocatorTest* t2 = new KObjectAllocatorTest;
    t2->runTests();
    delete t2;

    printString("\nMemory tests:\n");
    MemoryAllocatorTest t1;
    t1.runTests();


    return 0;
}