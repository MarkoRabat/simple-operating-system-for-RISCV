#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/userMain.hpp"
#include "../h/syscall_c.hpp"


void main() {
    Riscv::w_stvec((uint64) Riscv::supervisorTrap);

    TCB* mainThread = new TCB(0, nullptr);
    TCB::running = mainThread;

    Riscv::enterUserMode();
    userMain();

}