#include "../h/print.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/kObjectAllocator.hpp"
#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../h/list.hpp"

void f2(void* p) {
    printString("f2\n");
    int* a = (int*)p;
    for (int i = 0; i < a[0]; ++i) {
        printInteger(a[i + 1]);
        printString(" ");
    }
    printString("\n");
    mem_free(a);
}

void f(void*) {
    int* arr = (int*) mem_alloc(8 * sizeof(int));
    arr[0] = 7;
    for (int i = 0; i < arr[0]; ++i) arr[i + 1] = -i;
    thread_t handle;
    printString("1\n");
    int i = thread_create(&handle, f2, arr);
    printString("2\n");
    printString("\nreturn val from thread_create: ");
    printInteger(i);
    for (volatile int i = 0; i < 10000; ++i) {
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

    TCB* t = new TCB(0, nullptr);
    TCB::running = t;
    TCB* thread2 = new TCB(f, nullptr);
    printString("\nthread2: ");
    printInteger((uint64)thread2); printString("\n");

    TCB* thread3 = new TCB(f, nullptr);
    printString("\nthread3: ");
    printInteger((uint64)thread3); printString("\n");


    TCB* thread4 = new TCB(f, nullptr);
    printString("\nthread4: ");
    printInteger((uint64)thread4); printString("\n");

    Riscv::enterUserMode();

    int* arr = (int*) mem_alloc(5 * sizeof(int));
    for (int i = 0; i < 5; ++i) arr[i] = i * i * i;
    for (int i = 0; i < 5; ++i) {
        printInteger(arr[i]);
        printString(" ");
    }


    volatile int a = 1;
    while (a) {
        //if (cnt % 4 == 0) printString("\n");
        printString("here");
        thread_dispatch();
    }

    return 0;
}