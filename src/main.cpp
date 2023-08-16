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

    KObjectAllocator* newObj = new KObjectAllocator(sizeof(uint8), 4);
    printString("objectNumber: "); printInteger(newObj->getNumberOfObjects()); printString("\n");
    printString("memoryForBits: "); printInteger(newObj->getMemorySizeForBits()); printString("\n");
    //newObj->printInternalMemory();

    void* objArr[10];
    for (int i = 0; i < 10; ++i) {
        objArr[i] = newObj->allocateNewObject();
        if (i == 3 || i == 7 || i == 8 ) {
            printString("\n\n\nobjectNumber: "); printInteger(newObj->getNumberOfObjects()); printString("\n");
            printString("memoryForBits: "); printInteger(newObj->getMemorySizeForBits()); printString("\n");
            //newObj->printInternalMemory();
        }
    }

    printString("\nobjArr[7]: "); printInteger((uint64) objArr[7]);
    printString("\nobjArr[8]: "); printInteger((uint64) objArr[8]);
    printString("\nobjArr[9]: "); printInteger((uint64) objArr[9]); printString("\n");
    for (int i = 0; i < 10; ++i) newObj->freeObject(objArr[i]);


    delete newObj;

    /*printString("\nKObjectAllocator tests:\n");
    KObjectAllocatorTest* t2 = new KObjectAllocatorTest;
    t2->runTests();
    delete t2;*/

    printString("\nMemory tests:\n");
    MemoryAllocatorTest t1;
    t1.runTests();


    return 0;
}