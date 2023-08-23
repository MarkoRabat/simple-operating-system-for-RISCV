#include "../h/userMain.hpp"
#include "../h/print.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/kObjectAllocator.hpp"
#include "../h/syscall_c.hpp"
#include "../h/tcb.hpp"
#include "../h/list.hpp"
#include "../h/semaphore.hpp"
#include "../h/riscv.hpp"


void f(void* cond) {
    printString("\nhello from f\n");
    (*(Semaphore**)cond)->signal(); printString("passed\n");
    for (int i = 0; i < 10; ++i) {
        if (i % 3) thread_dispatch();
        printInteger(-i);
        printString(" ");
    }
    ((Semaphore**)cond)[1]->signal();
    /*printString("\nScause: ");
    printInteger(Riscv::r_scause());
    printString("\n");*/
}

void userMain() {

    Semaphore* sem = new Semaphore(0);
    Semaphore* sem2 = new Semaphore(0);
    Semaphore** s = (Semaphore**) mem_alloc(2 * sizeof(Semaphore*));
    s[0] = sem; s[1] = sem2;
    TCB* new_t = new TCB(f, s);
    Scheduler::instance()->put(new_t);
    for (volatile size_t i = 0; i < 30; ++i) {
        if ((i + 1) % 3 == 0) {
            thread_dispatch();
        }
        printString("\nsem= "); printInteger((uint64)sem); printString("\n");
        printString("\nsem2= "); printInteger((uint64)sem2); printString("\n");
        printInteger(i);
        printString(" ");
    }
    printString("\nsem= "); printInteger((uint64)sem); printString("\n");
    sem->wait();
    printString("\nsem2= "); printInteger((uint64)sem2); printString("\n");
    sem2->wait();
    printString("\ndone\n");

}