#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/userMain.hpp"
#include "../h/syscall_c.hpp"


void main() {
    Riscv::w_stvec((uint64) Riscv::supervisorTrap);

    printString("Here");
    _thread* mainThread = new _thread(0, nullptr);
    _thread::running = mainThread;
    printString("Here");

    Riscv::enterUserMode();
    userMain();

}