#include "../h/print.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/kObjectAllocator.hpp"
#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"

// tests delete this before submition !!!!!!!!!!!
#include "../h/memoryAllocatorTest.hpp"
#include "../h/kObjectAllocatorTest.hpp"

int main() {

    //mem_alloc(12);

    /*__asm__ volatile ("ld a0, #0x01");
    uint64 volatile x;
    __asm__ volatile ("sd a0, %0" : "=m" (x));
    printString("\nx= ");
    printInteger(x);
    printString("\n");
    __asm__ volatile ("ecall");*/

    Riscv::w_stvec((uint64) Riscv::supervisorTrap);
    Riscv::popSppSpie();
    printString("\nret:");
    printInteger((uint64)mem_alloc(12));
    printString("\n");


    printString("\nKObjectAllocator tests:\n");
    KObjectAllocatorTest* t2 = new KObjectAllocatorTest;
    t2->runTests();
    delete t2;

    printString("\nMemory tests:\n");
    MemoryAllocatorTest t1;
    t1.runTests();


    return 0;
}