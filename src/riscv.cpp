#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/print.hpp"
#include "../h/ksyscall_c.hpp"

void Riscv::popSppSpie()
{
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}


void Riscv::handleSyncSupervisorTrap() {
    // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
    uint64 volatile sepc = r_sepc() + 4;
    /*printString("sepc: ");
    printInteger(sepc);
    printString("\n");*/
    uint64 volatile sstatus = r_sstatus();

    uint64 volatile ra; __asm__ volatile("sd ra, %0" : "=m" (ra));
    uint64 volatile sysCallNum; __asm__ volatile("sd a0, %0" : "=m" (sysCallNum));
    //uint64 volatile arg1; __asm__ volatile("sd a1, %0" : "=m" (arg1));
    //uint64 volatile arg2; __asm__ volatile("sd a1, %0" : "=m" (arg2));
    //uint64 volatile arg3; __asm__ volatile("sd a1, %0" : "=m" (arg3));

    switch(sysCallNum) {
        case 0x01: __asm__ volatile("call %0" :: "i" (kmem_alloc)); break;
        case 0x02: __asm__ volatile("call %0" :: "i" (kthread_create)); break;
        case 0x11: __asm__ volatile("call %0" :: "i" (kthread_exit)); break;
        case 0x12: __asm__ volatile("call %0" :: "i" (kthread_dispatch)); break;
        case 0x13: __asm__ volatile("call %0" :: "i" (kthread_join)); break;
        case 0x14: __asm__ volatile("call %0" :: "i" (ksem_open)); break;
        case 0x21: __asm__ volatile("call %0" :: "i" (ksem_close)); break;
        case 0x22: __asm__ volatile("call %0" :: "i" (ksem_wait)); break;
        case 0x23: __asm__ volatile("call %0" :: "i" (ksem_signal)); break;
        case 0x24: __asm__ volatile("call %0" :: "i" (ktime_sleep)); break;
        case 0x31: __asm__ volatile("call %0" :: "i" (kgetc)); break;
        case 0x32: __asm__ volatile("call %0" :: "i" (kputc)); break;
    }
    TCB::timeSliceCounter = 0;
    // TCB::dispatch();
    w_sstatus(sstatus);
    w_sepc(sepc);
    __asm__ volatile ("ld ra, %0" :: "m" (ra));
}

void Riscv::handleAsyncSupervisorTrap()
{

    printString("Asynch\n");
    uint64 scause = r_scause();
    if (scause == 0x8000000000000001UL) {
        // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
        mc_sip(SIP_SSIP);
        TCB::timeSliceCounter++;
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
            uint64 volatile sepc = r_sepc();
            uint64 volatile sstatus = r_sstatus();
            TCB::timeSliceCounter = 0;
            //TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL) {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    }
    else {
        printString("sepc: "); printInteger(r_sepc()); printString("\n");
        printString("scause: "); printInteger(scause); printString("\n");
        printString("ERROR: unexpected trap cause"); printString("\n");
    }
}