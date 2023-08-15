#include "../h/print.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/memoryAllocatorTest.hpp"
#include "../h/kObjectAllocator.hpp"

int main() {

    uint64* arr = (uint64*) MemoryAllocator::instance()->kmem_alloc(64 * 100);
    for (int i = 0; i < 100; ++i) arr[i] = (uint64) -1;
    MemoryAllocator::instance()->kmem_free(arr);

    KObjectAllocator* newObj = new KObjectAllocator(1);
    uint8* i0 = (uint8*) newObj->allocateNewObject();
    uint8* i1 = (uint8*) newObj->allocateNewObject();
    uint8* i2 = (uint8*) newObj->allocateNewObject();
    uint8* i3 = (uint8*) newObj->allocateNewObject();
    uint8* i4 = (uint8*) newObj->allocateNewObject();
    uint8* i5 = (uint8*) newObj->allocateNewObject();
    uint8* i6 = (uint8*) newObj->allocateNewObject();
    uint8* i7 = (uint8*) newObj->allocateNewObject();
    uint8* i8 = (uint8*) newObj->allocateNewObject();
    uint8* i9 = (uint8*) newObj->allocateNewObject();
    uint8* i10 = (uint8*) newObj->allocateNewObject();
    uint8* i11 = (uint8*) newObj->allocateNewObject();
    uint8* i12 = (uint8*) newObj->allocateNewObject();

    *i0 = 1; printString("i: "); printInteger((uint64) i0); printString("\n");
    *i1 = 1; printString("i: "); printInteger((uint64) i1); printString("\n");
    *i2 = 1; printString("i: "); printInteger((uint64) i2); printString("\n");
    *i3 = 1; printString("i: "); printInteger((uint64) i3); printString("\n");
    *i4 = 1; printString("i: "); printInteger((uint64) i4); printString("\n");
    *i5 = 1; printString("i: "); printInteger((uint64) i5); printString("\n");
    *i6 = 1; printString("i: "); printInteger((uint64) i6); printString("\n");
    *i7 = 1; printString("i: "); printInteger((uint64) i7); printString("\n");
    *i8 = 1; printString("i: "); printInteger((uint64) i8); printString("\n");
    *i9 = 1; printString("i: "); printInteger((uint64) i9); printString("\n");
    *i10 = 1; printString("i: "); printInteger((uint64) i10); printString("\n");
    *i11 = 1; printString("i: "); printInteger((uint64) i11); printString("\n");
    *i12 = 1; printString("i: "); printInteger((uint64) i12); printString("\n");

    newObj->freeObject(i7);
    newObj->freeObject(i8);
    newObj->freeObject(i0);

    newObj->printInternalMemory();

    printInteger(sizeof(int));

    delete newObj;

    printString("\nMemory tests:\n");
    MemoryAllocatorTest t1;
    t1.runTests();


    return 0;
}