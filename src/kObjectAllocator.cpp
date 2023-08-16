#include "../h/kObjectAllocator.hpp"
#include "../h/print.hpp"

void KObjectAllocator::printInternalMemory() {
    printString("\nbitVector: ");
    printInteger((uint64)bitVector);
    printString("\nobjectVector: ");
    printInteger((uint64)objectVector);
    printString("\n");
    for (size_t i = 0; i < memorySizeForBits + numberOfObjects * objectSize; ++i) {
        if (bitVector[i] / 100 == 0) printInteger((uint8) 0);
        if (bitVector[i] / 10 == 0) printInteger((uint8) 0);
        printInteger((uint64) bitVector[i]);
        printString(" ");
        if (i + 1 == memorySizeForBits) {
            printString("\n"); for (size_t j = 0; j < memorySizeForBits * 4 - 1; ++j) printString("-"); }
        if ((i + 1) % memorySizeForBits == 0) printString("\n");
    }
}

void* KObjectAllocator::allocateNewObject() {
    void* returnedObject = allocateFreeObject();
    if (returnedObject) return returnedObject;

    // optimization - search till the place prev search started from:
    size_t tmp = memorySizeForBits;
    memorySizeForBits = usedBytesCounter;

    usedBytesCounter = 0;   // start search from start
    returnedObject = allocateFreeObject();
    memorySizeForBits = tmp;    // revert back to original memory size for bits
    if (returnedObject) return returnedObject;

    if (handleNotEnoughMemoryProblem()) {
        returnedObject = allocateFreeObject();
        if (returnedObject) return returnedObject;
    }
    return nullptr;
}

void* KObjectAllocator::allocateFreeObject() {
    for (size_t byte = usedBytesCounter; byte < memorySizeForBits; ++byte)
        for (size_t bit = 8; bit != 0; --bit)
            if ((bitVector[byte] >> (bit - 1) & (uint8) 1) == 0) {
                usedBytesCounter = byte;
                bitVector[byte] |= (uint8) 1 << (bit - 1);
                return &objectVector[(byte * 8 + 8 - bit) * objectSize];
            }
    return nullptr;
}

void KObjectAllocator::freeObject(void* objectPointer) {
    size_t diff = (size_t) ((uint8*) objectPointer - objectVector);
    size_t byte = diff / objectSize / 8;
    if (byte >= memorySizeForBits) {
        printString("ERROR: Object not allocated in this KObjectAllocator\n"); return; }
    size_t bit = diff / objectSize - byte * 8;
    bitVector[byte] &= ~((uint8) 1 << (7 - bit));
}

bool KObjectAllocator::handleNotEnoughMemoryProblem() {
    printString("ERROR: couldn't allocate more memory for KObjectAllocator\n");
    return false;
}
