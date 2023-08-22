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
    int i = 0;
    for (; i < 10; ++i)
        i *= i;
    printString("\ni = ");
    printInteger(i);
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

    List l;
    TCB* arr[5];
    for (int i = 0; i < 5; ++i) {
        arr[i] = new TCB(f);
        arr[i]->val = i;
    }
    for (int i = 0; i < 5; ++i) l.addFirst(arr[i]);
    printString("\npeekFirst(): "); printInteger(l.peekFirst()->val);
    printString("\npeekLast(): "); printInteger(l.peekLast()->val);
    printString("\n");
    for (int i = 0; i < 5; ++i) {
        TCB* t = l.removeFirst();
        arr[i] = new TCB(f);
        arr[i]->val = i * i;
        l.addLast(arr[i]);
        printInteger(t->val);
        printString(" ");
        delete t;
    }

    for (int i = 0; i < 5; ++i) {
        TCB *t = l.removeFirst();
        printInteger(t->val);
        printString(" ");
        delete t;
    }


    printString("\nKObjectAllocator tests:\n");
    KObjectAllocatorTest* t2 = new KObjectAllocatorTest;
    t2->runTests();
    delete t2;

    printString("\nMemory tests:\n");
    MemoryAllocatorTest t1;
    t1.runTests();


    return 0;
}