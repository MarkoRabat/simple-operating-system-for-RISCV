#include "../h/kObjectAllocator.hpp"
#include "../h/print.hpp"

void KObjectAllocator::printInternalMemory() {
    for (size_t i = 0; i < memoryForBits + initialObjectNumber * objectSize; ++i) {
        if (bitVector[i] / 100 == 0) printInteger((uint8) 0);
        if (bitVector[i] / 10 == 0) printInteger((uint8) 0);
        printInteger(bitVector[i]);
        printString(" ");
        if (i + 1 == memoryForBits) {
            printString("\n"); for (size_t j = 0; j < memoryForBits * 4 - 1; ++j) printString("-"); }
        if ((i + 1) % memoryForBits == 0) printString("\n");
    }
}

void* KObjectAllocator::allocateNewObject() {
    for (size_t i = 0; i < memoryForBits; ++i)
        for (size_t j = 7; j >= 0; --j)
            if ((bitVector[i] >> j & (uint8) 1) == 0) {
                bitVector[i] |= (uint8) 1 << j;
                return &objectVector[i * 8 + 8 - j];
            }
    return nullptr;
}
