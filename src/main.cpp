#include "../h/print.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/kObjectAllocator.hpp"

// tests delete this before submition !!!!!!!!!!!
#include "../h/memoryAllocatorTest.hpp"
#include "../h/kObjectAllocatorTest.hpp"

int main() {

    //KObjectAllocator* newObj = new KObjectAllocator(sizeof(uint8), 4);
    KObjectAllocator* newObj = new KObjectAllocator(sizeof(uint8), 4);

    void* objArr[200];
    for (int i = 0; i < 20; ++i) {
        objArr[i] = newObj->allocateNewObject();
        if (i == 14) newObj->freeObject(objArr[4]);
        if (i == 14) newObj->freeObject(objArr[9]);
        *(uint8*) objArr[i] = 128;
        printString("\nobjectNumber: "); printInteger(newObj->getNumberOfObjects()); printString("\n");
        printString("numberOfAllocations: "); printInteger(newObj->getNumberOfAllocations()); printString("\n");
        newObj->printInternalMemory();
        printString("\n");
    }

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