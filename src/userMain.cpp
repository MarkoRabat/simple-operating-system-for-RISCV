#include "../h/userMain.hpp"
#include "../h/print.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/kObjectAllocator.hpp"
#include "../h/syscall_c.hpp"
#include "../h/tcb.hpp"
#include "../h/list.hpp"
#include "../h/semaphore.hpp"


void f(void* cond) {
    //((Semaphore*) cond)->wait(); printString("passed\n");
    for (int i = 0; i < 1010; ++i) {
        printInteger(-i);
        printString(" ");
    }
}

void userMain() {

    /*
    Semaphore* cond = new Semaphore(0);
    //Riscv::enterUserMode();

    for (int i = 0; i < 5; ++i)
        new TCB(f, (void*) cond);
    for (int i = 0; i < 4; ++i) {
        cond->signal();
        thread_dispatch();
    }
    new TCB(0, nullptr);

    while (true) { thread_dispatch(); }
    */
    printString("\nUserMain\n");
    TCB* new_t = new TCB(f, nullptr);
    Scheduler::instance()->put(new_t);
    for (size_t i = 0; i < 30; ++i) {
        if ((i + 1) % 3 == 0); // thread_dispatch();
        printInteger(i);
        printString(" ");
    }
    printString("\ndone\n");



}