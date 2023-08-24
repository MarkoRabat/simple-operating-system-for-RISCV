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
    sem_wait(((_sem**)cond)[0]);
    printString("passed\n");
    for (int i = 0; i < 10; ++i) {
        if (!(i % 3)) {
            //thread_dispatch();
        }
        printInteger(-i);
        printString(" ");
    }
    sem_signal(((_sem**)cond)[1]);
    /*printString("\nScause: ");
    printInteger(Riscv::r_scause());
    printString("\n");*/
}

void userMain() {

    sem_t sem, sem2;
    sem_open(&sem, 0);
    sem_open(&sem2, 0);
    _sem** s = (_sem**) mem_alloc(2 * sizeof(_sem*));
    s[0] = sem; s[1] = sem2;
    thread_t new_t1;
    thread_create(&new_t1, f, s);

    sem_t sem3, sem4;
    sem_open(&sem3, 0);
    sem_open(&sem4, 0);
    s = (_sem**) mem_alloc(2 * sizeof(_sem*));
    s[0] = sem3; s[1] = sem4;
    thread_t new_t2;
    thread_create(&new_t2, f, s);

    for (volatile size_t i = 0; i < 30; ++i) {
        if ((i + 1) % 3 == 0) {
            thread_dispatch();
        }
        printInteger(i); printString(" ");
    }
    sem_signal(sem);
    thread_dispatch();
    sem_signal(sem3);
    thread_join(new_t2);
    thread_join(new_t1);

    mem_free(s);
    printString("\ndone\n");

}