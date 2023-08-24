#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/userMain.hpp"
#include "../h/syscall_c.hpp"
#include "../h/scheduler.hpp"


void main() {
    Riscv::w_stvec((uint64) Riscv::supervisorTrap);

    Scheduler::mainRet = (uint64) &&mainReturn;
    printString("mainRet: ");
    printInteger(Scheduler::mainRet);
    printString("\n");

    _thread* mainThread = new _thread(0, nullptr);
    _thread::running = mainThread;

    Riscv::enterUserMode();
    userMain();


    mainReturn:

    printString("\n\n\n\nIM BACK IN MAIN here\n\n\n\n");
    return;

}