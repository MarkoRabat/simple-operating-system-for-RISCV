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
        default: break;
    }
    return false;
}

bool KObjectAllocatorTest::getValueOfBitAt(size_t byte, size_t bit, KObjectAllocator* objAlloc) {
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i) {
        if (i * objAlloc->memorySizeForBits <= byte && byte < (i + 1) * objAlloc->memorySizeForBits)
            return (objAlloc->bitVectors[i][byte - i * objAlloc->memorySizeForBits] >> bit & (uint8) 1) != 0;
    }
    printString("ERROR: byte not in given objAlloc\n");
    return false;
}

size_t KObjectAllocatorTest::getByteOfObject(void* obj, KObjectAllocator* objAlloc) {
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i) {
        if ((uint8*) obj < objAlloc->objectVectors[i]) continue;
        size_t idiff = (size_t) ((uint8*) obj - objAlloc->objectVectors[i]);
        size_t byte = idiff / objAlloc->objectSize / 8;
        if (byte >= objAlloc->memorySizeForBits) continue;
        printString("\ni = "); printInteger(i); printString("\n");
        printString("\nbyte = "); printInteger(byte); printString("\n");
        return byte + i * objAlloc->memorySizeForBits;
    }
    printString("ERROR: given object not allocated in given objAlloc\n");
    return 0;
}

size_t KObjectAllocatorTest::getBitOfObject(void* obj, KObjectAllocator* objAlloc) {
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i) {
        if ((uint8*) obj < objAlloc->objectVectors[i]) continue;
        size_t idiff = (size_t) ((uint8*) obj - objAlloc->objectVectors[i]);
        size_t byte = idiff / objAlloc->objectSize / 8;
        if (byte >= objAlloc->memorySizeForBits) continue;
        size_t bit = idiff / objAlloc->objectSize - byte * 8;
        return 7 - bit;
    }
    printString("ERROR: given object not allocated in given objAlloc\n");
    return 0;
}

void* KObjectAllocatorTest::getObjectAt(size_t byte, size_t bit, KObjectAllocator* objAlloc) {
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i)
        if (i * objAlloc->memorySizeForBits <= byte && byte < (i + 1) * objAlloc->memorySizeForBits)
            return &objAlloc->objectVectors[i][((byte - i * objAlloc->memorySizeForBits) * 8 + 7 - bit) * objAlloc->objectSize];
    printString("ERROR: given object not allocated in given objAlloc\n");
    return nullptr;
}

bool KObjectAllocatorTest::test0(size_t size) {
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 9);
    if (objAlloc->getNumberOfObjects() != 16) { delete objAlloc; return false; }
    if (objAlloc->getMemorySizeForBits() != 2) { delete objAlloc; return false; }
    if (objAlloc->getObjectSize() != size) { delete objAlloc; return false; }
    void* objArr[10]; for (size_t i = 0; i < 10; objArr[i++] = objAlloc->allocateNewObject());
    size_t byte = 0; size_t bit = 7;
    for (size_t i = 0; i < 10; ++i) {
        if (objArr[i] != getObjectAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
        size_t objByte = getByteOfObject(objArr[i], objAlloc);
        size_t objBit = getBitOfObject(objArr[i], objAlloc);
        if (objByte != byte || objBit != bit) { delete objAlloc; return false; }
        if (!getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
        if (bit == 0) { ++byte; bit = 8; } --bit;
    }
    for (size_t i = 0; i < 6; ++i) {
        if (getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
        if (bit == 0) { ++byte; bit = 8; } --bit;
    }
    objAlloc->freeObject(objArr[4]);
    objAlloc->freeObject(objArr[7]);
    objAlloc->freeObject(objArr[8]);
    objArr[4] = objAlloc->allocateNewObject();
    if (objArr[4] != getObjectAt(1, 7, objAlloc)) { delete objAlloc; return false; }
    byte = getByteOfObject(objArr[4], objAlloc);
    bit = getBitOfObject(objArr[4], objAlloc);
    if (byte != 1 || bit != 7) { delete objAlloc; return false; }
    bool expectedBitValues[16] = {
            true, true, true, true, false, true, true, false,
            true, true, false, false, false, false, false, false
    };
    byte = 0; bit = 7;
    for (size_t i = 0; i < 16; ++i) {
        if (expectedBitValues[i] != getValueOfBitAt(byte, bit, objAlloc))
            { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    }
    delete objAlloc;
    return true;
}

bool KObjectAllocatorTest::test1(size_t size) {
    KObjectAllocator* objAlloc = new KObjectAllocator(size);
    if (objAlloc->getNumberOfObjects() != 320) { delete objAlloc; return false; }
    if (objAlloc->getMemorySizeForBits() != 40) { delete objAlloc; return false; }
    if (objAlloc->getObjectSize() != size) { delete objAlloc; return false; }
    void* objArr[320]; for (size_t i = 0; i < 32; objArr[i++] = objAlloc->allocateNewObject());
    if (getByteOfObject(objArr[31], objAlloc) != 3
        || getBitOfObject(objArr[31], objAlloc) != 0)
        { delete objAlloc; return false; }

    if (objAlloc->nextNonTakenByte != 4) { delete objAlloc; return false; }
    for (size_t i = 32; i < 320; objArr[i++] = objAlloc->allocateNewObject());
    if (objAlloc->nextNonTakenByte != 40) { delete objAlloc; return false; }

    objAlloc->freeObject(objArr[7 * 8]);
    objArr[7 * 8] = objAlloc->allocateNewObject();
    if (getByteOfObject(objArr[7 * 8], objAlloc) != 7
        || getBitOfObject(objArr[7 * 8], objAlloc) != 7)
        { delete objAlloc; return false; }
    if (objAlloc->nextNonTakenByte != 7) { delete objAlloc; return false; }

    objAlloc->freeObject(objArr[6 * 8 + 3]);
    objAlloc->freeObject(objArr[7 * 8 + 4]);
    objAlloc->freeObject(objArr[38 * 8 + 5]);

    objArr[7 * 8 + 4] = objAlloc->allocateNewObject();
    if (getByteOfObject(objArr[7 * 8 + 4], objAlloc) != 7
        || getBitOfObject(objArr[7 * 8 + 4], objAlloc) != 3)
        { delete objAlloc; return false; }
    if (objAlloc->nextNonTakenByte != 7) { delete objAlloc; return false; }
    objAlloc->freeObject(objArr[3 * 8 + 5]);

    objArr[38 * 8 + 5] = objAlloc->allocateNewObject();
    if (getByteOfObject(objArr[38 * 8 + 5], objAlloc) != 38
        || getBitOfObject(objArr[38 * 8 + 5], objAlloc) != 2)
    { delete objAlloc; return false; }
    if (objAlloc->nextNonTakenByte != 38) { delete objAlloc; return false; }


    objArr[3 * 8 + 5] = objAlloc->allocateNewObject();
    if (getByteOfObject(objArr[3 * 8 + 5], objAlloc) != 3 || getBitOfObject(objArr[3 * 8 + 5], objAlloc) != 2)
    if (objAlloc->nextNonTakenByte != 3) { delete objAlloc; return false; }

    objArr[6 * 8 + 3] = objAlloc->allocateNewObject();
    if (getByteOfObject(objArr[6 * 8 + 3], objAlloc) != 6
        || getBitOfObject(objArr[6 * 8 + 3], objAlloc) != 4)
    { delete objAlloc; return false; }
    if (objAlloc->nextNonTakenByte != 6) { delete objAlloc; return false; }

    for (int i = 0; i < 3; ++i) {
        objAlloc->freeObject(objArr[319]);
        objArr[319] = objAlloc->allocateNewObject();
        if (getByteOfObject(objArr[319], objAlloc) != 39
            || getBitOfObject(objArr[319], objAlloc) != 0)
        { delete objAlloc; return false; }
        if (objAlloc->nextNonTakenByte != 40) { delete objAlloc; return false; }

        objAlloc->freeObject(objArr[1]);
        objArr[1] = objAlloc->allocateNewObject();
        if (getByteOfObject(objArr[1], objAlloc) != 0
            || getBitOfObject(objArr[1], objAlloc) != 6)
        { delete objAlloc; return false; }
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    }
    delete objAlloc;
    return true;
}

bool KObjectAllocatorTest::test2(size_t size) {
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 3);
    if (objAlloc->getNumberOfObjects() != 8) { delete objAlloc; return false; }
    if (objAlloc->getMemorySizeForBits() != 1) { delete objAlloc; return false; }
    if (objAlloc->getObjectSize() != size) { delete objAlloc; return false; }
    void* objArr[10]; for (size_t i = 0; i < 10; objArr[i++] = objAlloc->allocateNewObject());
    size_t byte = 0; size_t bit = 7;
    for (size_t i = 0; i < 10; ++i) {
        if (objArr[i] != getObjectAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
        size_t objByte = getByteOfObject(objArr[i], objAlloc);
        size_t objBit = getBitOfObject(objArr[i], objAlloc);
        if (objByte != byte || objBit != bit) { delete objAlloc; return false; }
        if (!getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
        if (bit == 0) { ++byte; bit = 8; } --bit;
    }
    for (size_t i = 0; i < 6; ++i) {
        if (getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
        if (bit == 0) { ++byte; bit = 8; } --bit;
    }
    objAlloc->freeObject(objArr[4]);
    objAlloc->freeObject(objArr[7]);
    objAlloc->freeObject(objArr[8]);
    objArr[4] = objAlloc->allocateNewObject();
    if (objArr[4] != getObjectAt(1, 7, objAlloc)) { delete objAlloc; return false; }
    byte = getByteOfObject(objArr[4], objAlloc);
    bit = getBitOfObject(objArr[4], objAlloc);
    if (byte != 1 || bit != 7) { delete objAlloc; return false; }
    bool expectedBitValues[16] = {
            true, true, true, true, false, true, true, false,
            true, true, false, false, false, false, false, false
    };
    byte = 0; bit = 7;
    for (size_t i = 0; i < 16; ++i) {
        if (expectedBitValues[i] != getValueOfBitAt(byte, bit, objAlloc))
        { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    }
    delete objAlloc;
    return true;
}

bool KObjectAllocatorTest::test3(size_t size) {
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 5);
    if (objAlloc->getNumberOfObjects() != 8) { delete objAlloc; return false; }
    if (objAlloc->getMemorySizeForBits() != 1) { delete objAlloc; return false; }
    if (objAlloc->getObjectSize() != size) { delete objAlloc; return false; }
    void* objArr[320]; for (size_t i = 0; i < 32; objArr[i++] = objAlloc->allocateNewObject());
    if (getByteOfObject(objArr[31], objAlloc) != 3
        || getBitOfObject(objArr[31], objAlloc) != 0)
    { delete objAlloc; return false; }


    if (objAlloc->nextNonTakenByte != 4) { delete objAlloc; return false; }
    for (size_t i = 32; i < 320; objArr[i++] = objAlloc->allocateNewObject());
    if (objAlloc->nextNonTakenByte != 40) { delete objAlloc; return false; }


    printString("\nbefore here\n");

    objAlloc->freeObject(objArr[7 * 8]);
    objArr[7 * 8] = objAlloc->allocateNewObject();
    printString("\n");
    printInteger((uint64)getByteOfObject(objArr[7 * 8], objAlloc));
    printString("\n");
    printInteger((uint64)getBitOfObject(objArr[7 * 8], objAlloc));
    printString("\n");
    if (getByteOfObject(objArr[7 * 8], objAlloc) != 7
        || getBitOfObject(objArr[7 * 8], objAlloc) != 7)
    { delete objAlloc; return false; }
    if (objAlloc->nextNonTakenByte != 7) { delete objAlloc; return false; }

    printString("\nhere\n");

    objAlloc->freeObject(objArr[6 * 8 + 3]);
    objAlloc->freeObject(objArr[7 * 8 + 4]);
    objAlloc->freeObject(objArr[38 * 8 + 5]);


    objArr[7 * 8 + 4] = objAlloc->allocateNewObject();
    if (getByteOfObject(objArr[7 * 8 + 4], objAlloc) != 7
        || getBitOfObject(objArr[7 * 8 + 4], objAlloc) != 3)
    { delete objAlloc; return false; }
    if (objAlloc->nextNonTakenByte != 7) { delete objAlloc; return false; }
    objAlloc->freeObject(objArr[3 * 8 + 5]);

    objArr[38 * 8 + 5] = objAlloc->allocateNewObject();
    if (getByteOfObject(objArr[38 * 8 + 5], objAlloc) != 38
        || getBitOfObject(objArr[38 * 8 + 5], objAlloc) != 2)
    { delete objAlloc; return false; }
    if (objAlloc->nextNonTakenByte != 38) { delete objAlloc; return false; }


    objArr[3 * 8 + 5] = objAlloc->allocateNewObject();
    if (getByteOfObject(objArr[3 * 8 + 5], objAlloc) != 3 || getBitOfObject(objArr[3 * 8 + 5], objAlloc) != 2)
        if (objAlloc->nextNonTakenByte != 3) { delete objAlloc; return false; }

    objArr[6 * 8 + 3] = objAlloc->allocateNewObject();
    if (getByteOfObject(objArr[6 * 8 + 3], objAlloc) != 6
        || getBitOfObject(objArr[6 * 8 + 3], objAlloc) != 4)
    { delete objAlloc; return false; }
    if (objAlloc->nextNonTakenByte != 6) { delete objAlloc; return false; }

    for (int i = 0; i < 3; ++i) {
        objAlloc->freeObject(objArr[319]);
        objArr[319] = objAlloc->allocateNewObject();
        if (getByteOfObject(objArr[319], objAlloc) != 39
            || getBitOfObject(objArr[319], objAlloc) != 0)
        { delete objAlloc; return false; }
        if (objAlloc->nextNonTakenByte != 40) { delete objAlloc; return false; }

        objAlloc->freeObject(objArr[1]);
        objArr[1] = objAlloc->allocateNewObject();
        if (getByteOfObject(objArr[1], objAlloc) != 0
            || getBitOfObject(objArr[1], objAlloc) != 6)
        { delete objAlloc; return false; }
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    }
    delete objAlloc;
    return true;
}