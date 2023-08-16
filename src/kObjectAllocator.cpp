#include "../h/kObjectAllocator.hpp"
#include "../h/print.hpp"

void KObjectAllocator::printInternalMemory() {
    printString("\nbitVector: "); printInteger((uint64)bitVectors[0]);
    printString("\nobjectVector: "); printInteger((uint64)objectVectors[0]); printString("\n");
    /*for (size_t i = 0; i < memorySizeForBits + numberOfObjects * objectSize; ++i) {
        if (bitVector[i] / 100 == 0) printInteger((uint8) 0);
        if (bitVector[i] / 10 == 0) printInteger((uint8) 0);
        printInteger((uint64) bitVectors[0][i]);
        printString(" ");
        if (memorySizeForBits >= 40 && i + 1 == memorySizeForBits) {
            printString("\n"); for (size_t j = 0; j < memorySizeForBits * 4 - 1; ++j) printString("-"); }
        else if (memorySizeForBits < 40 && i + 1 == memorySizeForBits) printString("| ");
        if (memorySizeForBits >= 40 && (i + 1) % memorySizeForBits == 0) printString("\n");
        else if (memorySizeForBits < 40 && (i + 1) % 20 == 0) printString("\n");
    }*/
}

void* KObjectAllocator::allocateNewObject() {
    void* returnedObject = allocateFreeObject();
    printString("\nreturnedObject before: ");
    printInteger((uint64)returnedObject);
    printString("\n");
    if (returnedObject) return returnedObject;

    nextNonTakenByte = 0;   // start search from start
    returnedObject = allocateFreeObject();
    printString("\nreturnedObject: ");
    printInteger((uint64)returnedObject);
    printString("\n");
    if (returnedObject) return returnedObject;
    printString("\nHere\n");

    if (handleNotEnoughMemoryProblem()) {
        returnedObject = allocateFreeObject();
        if (returnedObject) return returnedObject;
    }
    return nullptr;
}

void* KObjectAllocator::allocateFreeObject() {
    for (size_t i = 0; i < numberOfAllocations; ++i) {
        for (size_t j = nextNonTakenByte; j < (i + 1) * memorySizeForBits; ++j) {
            size_t byte = j - i * memorySizeForBits;
            for (size_t bit = 8; bit != 0; --bit)
                if ((bitVectors[i][byte] >> (bit - 1) & (uint8) 1) == 0) {
                    nextNonTakenByte = j + (bit == 1);
                    bitVectors[i][byte] |= (uint8) 1 << (bit - 1);
                    return &objectVectors[i][(byte * 8 + 8 - bit) * objectSize];
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
    uint8** newObjectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(
            newNumberOfAllocations * sizeof(uint8*)
    );

    for (size_t i = 0; i < numberOfAllocations; ++i) newBitVectors[i] = bitVectors[i];
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i) {
        newBitVectors[i] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
        memorySizeForBits + initialNumberOfObjects * objectSize );
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
