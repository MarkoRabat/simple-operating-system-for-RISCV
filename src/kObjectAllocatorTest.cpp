#include "../h/kObjectAllocatorTest.hpp"
#include "../h/print.hpp"

bool KObjectAllocatorTest::runTests() {
    for (size_t size : sizes)
    for (size_t i = 0; i < numberOfTests; ++i) {
        if (!test(i, size)) {
            printString("Failed KObjectAllocator test ");
            printInteger(i); printString("\n"); return false;
        } else printString("Passed ");
        if (i != 0 && (i + 1) % 10 == 0) printString("\n");
    }
    return true;
}

bool KObjectAllocatorTest::test(size_t i, size_t size) {
    switch (i) {
        case 0: return test0(size); break;
        case 1: return test1(size); break;
        case 2: return test2(size); break;
        case 3: return test3(size); break;
        case 4: return test4(size); break;
        case 5: return test5(size); break;
        case 6: return test6(size); break;
        case 7: return test7(size); break;
        case 8: return test8(size); break;
        case 9: return test9(size); break;
        default: break;
    }
    return false;
}

bool KObjectAllocatorTest::getValueOfBitAt(size_t byte, size_t bit) {
    return (bitVector[byte] >> bit & (uint8) 1) != 0;
}

size_t KObjectAllocatorTest::getByteOfObject(void* obj, KObjectAllocator* objAlloc) {
    size_t diff = (size_t) ((uint8*) obj - objAlloc->objectVector);
    size_t byte = diff / objAlloc->objectSize / 8;
    return byte;
}

size_t KObjectAllocatorTest::getBitOfObject(void* obj, KObjectAllocator* objAlloc) {
    size_t diff = (size_t) ((uint8*) obj - objAlloc->objectVector);
    size_t byte = diff / objAlloc->objectSize / 8;
    size_t bit = diff / objAlloc->objectSize - byte * 8;
    return 7 - bit;
}

void* KObjectAllocatorTest::getObjectAt(size_t byte, size_t bit, KObjectAllocator* objAlloc) {
    return &objAlloc->objectVector[(byte * 8 + 7 - bit) * objAlloc->objectSize];
}

bool KObjectAllocatorTest::test0(size_t size) {
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 9);
    if (objAlloc->getNumberOfObjects() != 16) return false;
    if (objAlloc->getMemorySizeForBits() != 2) return false;
    if (objAlloc->getObjectSize() != size) return false;
    void* objArr[10]; for (size_t i = 0; i < 9; objArr[i++] = objAlloc->allocateNewObject());
    size_t byte = 0; size_t bit = 0;
    for (size_t i = 0; i < 10; ++i) {
        if (objArr[i] != getObjectAt(byte, bit, objAlloc)) return false;

    }


    delete objAlloc;
    return true;
}

bool KObjectAllocatorTest::test1(size_t size) {
    return true;
}

bool KObjectAllocatorTest::test2(size_t size) {
    return true;
}

bool KObjectAllocatorTest::test3(size_t size) {
    return true;
}

bool KObjectAllocatorTest::test4(size_t size) {
    return true;
}

bool KObjectAllocatorTest::test5(size_t size) {
    return true;
}

bool KObjectAllocatorTest::test6(size_t size) {
    return true;
}

bool KObjectAllocatorTest::test7(size_t size) {
    return true;
}

bool KObjectAllocatorTest::test8(size_t size) {
    return true;
}

bool KObjectAllocatorTest::test9(size_t size) {
    return true;
}