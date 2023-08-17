#include "../h/print.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/kObjectAllocator.hpp"

// tests delete this before submition !!!!!!!!!!!
#include "../h/memoryAllocatorTest.hpp"
#include "../h/kObjectAllocatorTest.hpp"

int main() {

    //KObjectAllocator* newObj = new KObjectAllocator(sizeof(uint8), 4);
    KObjectAllocator* newObj = new KObjectAllocator(sizeof(uint8), 20);

    void* objArr[100];
    size_t objNumber = 0; //newObj->getNumberOfObjects();
    for (int i = 0; i < 100; ++i) {
        objArr[i] = newObj->allocateNewObject();
        if (i == 14) newObj->freeObject(objArr[4]);
        if (i == 14) newObj->freeObject(objArr[9]);
        *(uint8*) objArr[i] = 128;
        if (objNumber != newObj->getNumberOfObjects() || i % 100 == 0) {
            objNumber = newObj->getNumberOfObjects();
            //printString("\nobjectNumber: "); printInteger(newObj->getNumberOfObjects()); printString("\n");
            //printString("numberOfAllocations: "); printInteger(newObj->getNumberOfAllocations()); printString("\n");
            //printString("\n\n");
            newObj->printInternalMemory();
            printString("\n");
        }
    }

    for (int i = 0; i < 10; ++i) newObj->freeObject(objArr[i]);

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