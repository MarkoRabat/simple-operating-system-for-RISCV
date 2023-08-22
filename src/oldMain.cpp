#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"

int main2()
{
    TCB *threads[5];

    threads[0] = new TCB(nullptr);
    TCB::running = threads[0];

    threads[1] = new TCB(workerBodyA);
    printString("ThreadA created\n");
    threads[2] = new TCB(workerBodyB);
    printString("ThreadB created\n");
    threads[3] = new TCB(workerBodyC);
    printString("ThreadC created\n");
    threads[4] = new TCB(workerBodyD);
    printString("ThreadD created\n");

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    { thread_dispatch(); }

    for (auto &thread: threads) {
        delete thread;
    }
    printString("Finished\n");

    return 0;
}
