#include "../h/kObjectAllocator.hpp"
#include "../h/print.hpp"

void KObjectAllocator::printInternalMemory() {
    printString("\nbitVector: ");
    printInteger((uint64)bitVector);
    printString("\nobjectVector: ");
    printInteger((uint64)objectVector);
    printString("\n");
    for (size_t i = 0; i < memoryForBits + initialObjectNumber * objectSize; ++i) {
        if (bitVector[i] / 100 == 0) printInteger((uint8) 0);
        if (bitVector[i] / 10 == 0) printInteger((uint8) 0);
        printInteger((uint64) bitVector[i]);
        printString(" ");
        if (i + 1 == memoryForBits) {
            printString("\n"); for (size_t j = 0; j < memoryForBits * 4 - 1; ++j) printString("-"); }
        if ((i + 1) % memoryForBits == 0) printString("\n");
    }
}

void* KObjectAllocator::allocateNewObject() {
    for (size_t byte = 0; byte < memoryForBits; ++byte)
        for (size_t bit = 8; bit != 0; --bit)
            if ((bitVector[byte] >> (bit - 1) & (uint8) 1) == 0) {
                bitVector[byte] |= (uint8) 1 << (bit - 1);
                return &objectVector[byte * 8 + 8 - bit];
            }
    return nullptr;
}

void KObjectAllocator::freeObject(void* objectPointer) {
    size_t diff = (size_t) ((uint8*) objectPointer - objectVector);
    size_t byte = diff / 8;
    size_t bit = diff - byte * 8;
    bitVector[byte] &= ~((uint8) 1 << (7 - bit));
}
