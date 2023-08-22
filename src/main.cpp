#include "../h/print.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/kObjectAllocator.hpp"
#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../h/list.hpp"

void f() {
    for (int i = 0; true; ++i) {
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
    Riscv::enterUserMode();

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

    int* arr = (int*) MemoryAllocator::instance()->kmem_alloc(5 * sizeof(int));
    for (int i = 0; i < 5; ++i) arr[i] = i * i * i;
    for (int i = 0; i < 5; ++i) {
        printInteger(arr[i]);
        printString(" ");
    }

    size_t cnt = 0;
    while (true) {
        ++cnt;
        //if (cnt % 4 == 0) printString("\n");
        printString("\n");
        thread_dispatch();
    }

    return 0;
}