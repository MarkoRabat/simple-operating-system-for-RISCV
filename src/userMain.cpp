#include "../h/userMain.hpp"
#include "../h/print.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/kObjectAllocator.hpp"
#include "../h/tcb.hpp"
#include "../h/list.hpp"
#include "../h/semaphore.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/syscall_cpp.hpp"


void f(void* cond) {
    printString("\nhello from f\n");
    sem_wait(((_sem**)cond)[0]);
    Semaphore* s1 = ((Semaphore**) cond)[0];
    s1->signal();
    printString("passed\n");
    for (int i = 0; i < 10; ++i) {
        if (!(i % 3)) {
            //thread_dispatch();
        }
        printInteger(-i);
        printString(" ");
    }
    Semaphore* s2 = ((Semaphore**) cond)[1];
    s2->signal();
}

class NT : public Thread {
    virtual void run () {
        printString("\nRun start\n");
        for (int i = 0; i < 10; ++i) {
            printInteger(i);
            printString(" ");
        }
        printString("\nRun end\n");
    }
};

void userMain() {

    Semaphore s1(0);
    Semaphore s2(0);
    Semaphore** s = (Semaphore**) mem_alloc(2 * sizeof(Semaphore*));
    s[0] = &s1; s[1] = &s2;

    Thread t1(f, s);
    t1.start();
    printString("\nt1 started\n");

    Semaphore s3(0);
    Semaphore s4(0);
    Semaphore** s0 = (Semaphore**) mem_alloc(2 * sizeof(Semaphore*));
    s0[0] = &s3; s0[1] = &s4;

    NT t2;
    t2.start();
    printString("\nt1 started\n");


    for (volatile size_t i = 0; i < 30; ++i) {
        printInteger(i); printString(" ");
        if ((i + 1) % 3 == 0) {
            thread_dispatch();
        }
    }
    Thread::dispatch();
    t1.join();
    printString("\nPassed t1 join\n");
    t2.join();
    printString("\nPassed t2 join\n");

    mem_free(s);
    mem_free(s0);
    printString("\ndone\n");

}