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
    //((Semaphore*) cond)->wait(); printString("passed\n");
    printString("\nhello from f\n");
    for (int i = 0; i < 10; ++i) {
        if (i % 3) thread_dispatch();
        printInteger(-i);
        printString(" ");
    }
    /*printString("\nScause: ");
    printInteger(Riscv::r_scause());
    printString("\n");*/
}

void userMain() {

    printString("\nUserMain\n");
    TCB* new_t = new TCB(f, nullptr);
    Scheduler::instance()->put(new_t);
    for (volatile size_t i = 0; i < 30; ++i) {
        if ((i + 1) % 3 == 0) {
            thread_dispatch();
        }
        printInteger(i);
        printString(" ");
    }
    printString("\ndone\n");

}