#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/print.hpp"
#include "ksyscall_c.hpp"

void Riscv::popSppSpie()
{
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap()
{
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {
        // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
        uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus();

        uint64 volatile sysCallNum; __asm__ volatile("sd a0, %0" : "=m" (sysCallNum));
        uint64 volatile arg1; __asm__ volatile("sd a1, %0" : "=m" (arg1));
        uint64 volatile arg2; __asm__ volatile("sd a1, %0" : "=m" (arg1));
        uint64 volatile arg3; __asm__ volatile("sd a1, %0" : "=m" (arg1));
        uint64 volatile s[12];
        __asm__ volatile("sd s0, %0" : "=m" (s[0]));
        __asm__ volatile("sd s1, %0" : "=m" (s[1]));
        __asm__ volatile("sd s2, %0" : "=m" (s[2]));
        __asm__ volatile("sd s3, %0" : "=m" (s[3]));
        __asm__ volatile("sd s4, %0" : "=m" (s[4]));
        __asm__ volatile("sd s5, %0" : "=m" (s[5]));
        __asm__ volatile("sd s6, %0" : "=m" (s[6]));
        __asm__ volatile("sd s7, %0" : "=m" (s[7]));
        __asm__ volatile("sd s8, %0" : "=m" (s[8]));
        __asm__ volatile("sd s9, %0" : "=m" (s[9]));
        __asm__ volatile("sd s10, %0" : "=m" (s[10]));
        __asm__ volatile("sd s11, %0" : "=m" (s[11]));

        switch(sysCallNum) {
            case 0x01: __asm__ volatile("call kmem_alloc"); break;
            case 0x02: __asm__ volatile("call kmem_free"); break;
            case 0x11: __asm__ volatile("call kthread_create"); break;
            case 0x12: __asm__ volatile("call kthread_exit"); break;
            case 0x13: __asm__ volatile("call kthread_dispatch"); break;
            case 0x14: __asm__ volatile("call kthread_join"); break;
            case 0x21: __asm__ volatile("call ksem_open"); break;
            case 0x22: __asm__ volatile("call ksem_close"); break;
            case 0x23: __asm__ volatile("call ksem_wait"); break;
            case 0x24: __asm__ volatile("call ksem_signal"); break;
            case 0x31: __asm__ volatile("call ktime_sleep"); break;
            case 0x41: __asm__ volatile("call kgetc"); break;
            case 0x42: __asm__ volatile("call kputc"); break;
        }

        TCB::timeSliceCounter = 0;
        // TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL) {
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