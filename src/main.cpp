#include "../h/print.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/kObjectAllocator.hpp"
#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../h/list.hpp"

// tests delete this before submition !!!!!!!!!!!
#include "../h/memoryAllocatorTest.hpp"
#include "../h/kObjectAllocatorTest.hpp"

void f() {
    for (int i = 0; i < 10; ++i) {
        printInteger(-i);
        printString(" ");
        if ((i + 1) % 3 == 0) thread_dispatch();
    }
}

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
    //Riscv::popSppSpie((uint64)&&continueFrom);
    //Riscv::enterUserMode();

    TCB* t = new TCB(0);
    TCB::running = t;
    TCB* thread2 = new TCB(f);
    printString("\nthread2: ");
    printInteger((uint64)thread2); printString("\n");

    TCB* thread3 = new TCB(f);
    printString("\nthread3: ");
    printInteger((uint64)thread3); printString("\n");


    TCB* thread4 = new TCB(f);
    printString("\nthread4: ");
    printInteger((uint64)thread4); printString("\n");

    Riscv::enterUserMode();

    int* arr = (int*) mem_alloc(10 * sizeof(int));
    for (int i = 0; i < 10; ++i) arr[i] = i;
    int sum = 0;
    for (int i = 0; i < 10; ++i) {
        sum += arr[i]; printInteger(sum); printString(" ");
        if ((i + 1) % 3 == 0) thread_dispatch();
    }
    printString("\n");
    mem_free(arr);


    printString("\nKObjectAllocator tests:\n");
    KObjectAllocatorTest* t2 = new KObjectAllocatorTest;
    t2->runTests();
    delete t2;

    printString("\nMemory tests:\n");
    MemoryAllocatorTest t1;
    t1.runTests();


    return 0;
}