#include "../h/print.hpp"
#include "../h/memoryAllocator.hpp"

int main() {

    MemoryAllocator::printParamsToConsole();

    printString("Printing result of for loop:\n");
    for (int i = -300; i <= 300; ++i) {
        printInteger(i);
        printString(" ");
        if (!(i % 10))
            printString("\n");
    }

    return 0;
}