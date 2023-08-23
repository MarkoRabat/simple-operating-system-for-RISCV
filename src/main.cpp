#include "../h/print.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/kObjectAllocator.hpp"
#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../h/list.hpp"
#include "../h/semaphore.hpp"


#include "../lib/console.h"


void f(void* cond) {
    printString("cond= "); printInteger((uint64)cond); printString("\n");
    ((Semaphore*) cond)->wait(); printString("passed\n");
    printString("cond= "); printInteger((uint64)cond); printString("\n");
}

int main() {
    Riscv::w_stvec((uint64) Riscv::supervisorTrap);

    TCB* t = new TCB(0, nullptr);
    TCB::running = t;

    Semaphore* cond = new Semaphore(0);
    //Riscv::enterUserMode();

    for (int i = 0; i < 5; ++i)
        new TCB(f, (void*) cond);
    for (int i = 0; i < 4; ++i) {
        printString("cond= "); printInteger((uint64)cond); printString("\n");
        cond->signal();
        printString("1");
        thread_dispatch();
        printString("2");
    }
    new TCB(0, nullptr);

    while (true) { thread_dispatch(); }

    return 0;
}