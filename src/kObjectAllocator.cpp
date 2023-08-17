#include "../h/kObjectAllocator.hpp"
#include "../h/print.hpp"

void KObjectAllocator::printInternalMemory() {
    size_t segmentSize = 16, printedBytes = 0;
    while (printedBytes < memorySizeForBits) {
        for (size_t i = 0; i < numberOfAllocations; ++i) {
            for (size_t j = 0; j < segmentSize; ++j) {
                if (j + printedBytes >= memorySizeForBits) printString("    ");
                else {
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
                    printInteger((uint64) bitVectors[i][j + printedBytes]);
                    printString(" ");
                }
            }
            printString("  ");
        }
        printString("\n");
        printedBytes += segmentSize;
    }

    for (size_t i = 0; i < numberOfAllocations; ++i) {
        for (size_t j = 0; j < segmentSize - 1; ++j)
            printString("----");
        printString("----  ");
    }
    printString("\n");

    printedBytes = memorySizeForBits;
    while(printedBytes < initialNumberOfObjects * objectSize) {
        for (size_t i = 0; i < numberOfAllocations; ++i) {
            for (size_t j = 0; j < segmentSize; ++j) {
                if (j + printedBytes - memorySizeForBits >= initialNumberOfObjects * objectSize) printString("    ");
                else {
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
                    printInteger((uint64) bitVectors[i][j + printedBytes]);
                    printString(" ");
                }
            }
            printString("  ");
        }
        printString("\n");
        printedBytes += segmentSize;
    }
}

void* KObjectAllocator::allocateNewObject() {
    void* returnedObject = allocateFreeObject();
    if (returnedObject) {
        //printString("\nreturn1: ");
        //printInteger((uint64) returnedObject);
        return returnedObject;
    }

    nextNonTakenByte = 0;   // start search from start
    returnedObject = allocateFreeObject();
    if (returnedObject) {
        //printString("\nreturn2: ");
        //printInteger((uint64) returnedObject);
        return returnedObject;
    }


    if (handleNotEnoughMemoryProblem()) {
        returnedObject = allocateFreeObject();
        if (returnedObject) {
            //printString("\nreturn3: ");
            //printInteger((uint64) returnedObject);
            return returnedObject;
        }
    }
    return nullptr;
}

void* KObjectAllocator::allocateFreeObject() {
    for (size_t i = 0; i < numberOfAllocations; ++i) {
        for (size_t j = nextNonTakenByte; j >= i * memorySizeForBits && j < (i + 1) * memorySizeForBits; ++j) {
            size_t byte = j - i * memorySizeForBits;
            for (size_t bit = 8; bit != 0; --bit) {

                /*printString("\ntest:\n");
                printString("i: "); printInteger(i); printString("\n");
                printString("j: "); printInteger(j); printString("\n");
                printString("nextNonTakenByte: "); printInteger(nextNonTakenByte); printString("\n");
                printString("Byte: "); printInteger(byte); printString("\n");
                printString("Bit: "); printInteger(bit); printString("\n");
                printString("ifCondition: ");
                printInteger((bitVectors[i][byte] >> (bit - 1) & (uint8) 1) == 0); printString("\n");*/
                nextNonTakenByte = j + (bit == 1);
                if ((bitVectors[i][byte] >> (bit - 1) & (uint8) 1) == 0) {
                    /*printString("========================");
                    printString("\nSUCCESS:\n");
                    printString("i: "); printInteger(i); printString("\n");
                    printString("j: "); printInteger(j); printString("\n");
                    printString("nextNonTakenByte: "); printInteger(nextNonTakenByte); printString("\n");
                    printString("Byte: "); printInteger(byte); printString("\n");
                    printString("Bit: "); printInteger(bit); printString("\n");
                    printString("========================");*/
                    bitVectors[i][byte] |= (uint8) 1 << (bit - 1);
                    return &objectVectors[i][(byte * 8 + 8 - bit) * objectSize];
                }
            }
        }
    }
    return nullptr;
}

void KObjectAllocator::freeObject(void* objectPointer) {
    for (size_t i = 0; i < numberOfAllocations; ++i) {
        if ((uint8*) objectPointer < objectVectors[i]) continue;
        size_t idiff = (size_t) ((uint8*) objectPointer - objectVectors[i]);
        size_t byte = idiff / objectSize / 8;
        if (byte >= memorySizeForBits) continue;
        size_t bit = idiff / objectSize - byte * 8;
        bitVectors[i][byte] &= ~((uint8) 1 << (7 - bit));
        return;
    }
    printString("ERROR: Object not allocated in this KObjectAllocator\n");
}

bool KObjectAllocator::handleNotEnoughMemoryProblem() {
    size_t newNumberOfAllocations = 2 * numberOfAllocations;
    size_t newNumberOfObjects = 2 * numberOfObjects;
    uint8** newBitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(
            newNumberOfAllocations * sizeof(uint8*)
    );
    if (!newBitVectors) return false;
    uint8** newObjectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(
            newNumberOfAllocations * sizeof(uint8*)
    );
    if (!newObjectVectors) return false;

    for (size_t i = 0; i < numberOfAllocations; ++i) newBitVectors[i] = bitVectors[i];
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i) {
        newBitVectors[i] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
        memorySizeForBits + initialNumberOfObjects * objectSize );
        if (!newBitVectors[i]) return false;
    }
    for (size_t i = 0; i < newNumberOfAllocations; ++i) newObjectVectors[i] = newBitVectors[i] + memorySizeForBits;
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i)
        for (size_t j = 0; j < memorySizeForBits; newBitVectors[i][j++] = 0);
    MemoryAllocator::instance()->kmem_free(bitVectors);
    MemoryAllocator::instance()->kmem_free(objectVectors);

    numberOfObjects = newNumberOfObjects;
    nextNonTakenByte = numberOfAllocations * memorySizeForBits;
    numberOfAllocations = newNumberOfAllocations;
    bitVectors = newBitVectors;
    objectVectors = newObjectVectors;

    return true;
}
