#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/print.hpp"
#include "../h/ksyscall_c.hpp"

void Riscv::enterUserMode() {
    uint64 volatile x;
    x = 0x99; __asm__ volatile("ld a0, %0" :: "m" (x));
    __asm__ volatile ("ecall");
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
    uint64 volatile arg1; __asm__ volatile("sd a1, %0" : "=m" (arg1));
    uint64 volatile arg2; __asm__ volatile("sd a1, %0" : "=m" (arg2));
    uint64 volatile arg3; __asm__ volatile("sd a1, %0" : "=m" (arg3));

    switch(sysCallNum) {
        case 0x01: kmem_alloc((size_t) arg1); break;
        case 0x02: kmem_free((void*) arg1); break;
        case 0x11: kthread_create((thread_t*) arg1, (void(*)(void*))arg2, (void*)arg3); break;
        case 0x12: kthread_exit(); break;
        case 0x13: kthread_dispatch(); break;
        case 0x14: kthread_join((thread_t)arg1); break;
        case 0x21: ksem_open((sem_t*) arg1, (unsigned int) arg2); break;
        case 0x22: ksem_close((sem_t) arg1); break;
        case 0x23: ksem_wait((sem_t) arg1); break;
        case 0x24: ksem_signal((sem_t) arg1); break;
        case 0x31: ktime_sleep((time_t) arg1); break;
        case 0x41: kgetc(); break;
        case 0x42: kputc((char) arg1); break;
    }
    uint64 volatile a0; __asm__ volatile("sd a0, %0" : "=m" (a0));
    TCB::timeSliceCounter = 0;
    // TCB::dispatch();

    w_sstatus(sstatus);
    w_sepc(sepc);
    __asm__ volatile("ld a0, %0" :: "m" (a0));
    __asm__ volatile ("ld ra, %0" :: "m" (ra));
}

void Riscv::handleAsyncSupervisorTrap()
{

    //printString("Asynch\n");
    uint64 scause = r_scause();
    if (scause == 0x8000000000000001UL) {
        // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
        mc_sip(SIP_SSIP);
        /*TCB::timeSliceCounter++;
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
            uint64 volatile sepc = r_sepc();
            uint64 volatile sstatus = r_sstatus();
            TCB::timeSliceCounter = 0;
            //TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }*/
    }
    else if (scause == 0x8000000000000009UL) {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    }
    else { //} if (scause == 0x8000000000000005UL || scause == 0x8000000000000007UL){
        printString("sepc: "); printInteger(r_sepc()); printString("\n");
        printString("scause: "); printInteger(scause); printString("\n");
        printString("ERROR: unexpected trap cause"); printString("\n");
    }
}