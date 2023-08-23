#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/userMain.hpp"


void threadUserMain(void*) {
    Riscv::enterUserMode();
    userMain();
}

void main() {
    Riscv::w_stvec((uint64) Riscv::supervisorTrap);

    TCB* mainThread = new TCB(0, nullptr);
    TCB::running = mainThread;

    TCB* userMain = new TCB(threadUserMain, nullptr);
    Scheduler::instance()->put(userMain);
    Scheduler::instance()->get();

}