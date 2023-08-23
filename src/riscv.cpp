#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/print.hpp"
#include "../h/ksyscall_c.hpp"
#include "../h/scheduler.hpp"

void Riscv::enterUserMode() {
    uint64 volatile x;
    x = 0x99; __asm__ volatile("ld a0, %0" :: "m" (x));
    __asm__ volatile ("ecall");
}


void Riscv::handleSyncSupervisorTrap() {
    // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
    uint64 volatile sepc = r_sepc() + 4;
    uint64 volatile sstatus = r_sstatus();

    uint64 volatile sp; __asm__ volatile("csrr %0, sscratch" : "=r" (sp));
    uint64 volatile sysCallNum; sysCallNum = *((uint64*) sp - 21);
    uint64 volatile arg1; arg1 = *((uint64*) sp - 20);
    uint64 volatile arg2; arg2 = *((uint64*) sp - 19);
    uint64 volatile arg3;arg3 = *((uint64*) sp - 18);

    uint64 volatile ret = 0;

    switch(sysCallNum) {
        case 0x01: ret = (uint64) kmem_alloc((size_t) arg1); break;
        case 0x02: ret = (uint64) kmem_free((void*) arg1); break;
        case 0x11: ret = (uint64) kthread_create((thread_t*) arg1, (void(*)(void*))arg2, (void*)arg3); break;
        case 0x12: ret = (uint64) kthread_exit(); break;
        case 0x13: kthread_dispatch(); break;
        case 0x14: kthread_join((thread_t)arg1); break;
        case 0x21: ret = (uint64) ksem_open((sem_t*) arg1, (unsigned int) arg2); break;
        case 0x22: ret = (uint64) ksem_close((sem_t) arg1); break;
        case 0x23: ret = (uint64) ksem_wait((sem_t) arg1); break;
        case 0x24: ret = (uint64) ksem_signal((sem_t) arg1); break;
        case 0x31: ret = (uint64) ktime_sleep((time_t) arg1); break;
        case 0x41: ret = (uint64) kgetc(); break;
        case 0x42: kputc((char) arg1); break;
    }
    *((uint64*) sp - 21) = ret;

    TCB::timeSliceCounter = 0;

    Scheduler::instance()->put(TCB::running);
    Scheduler::instance()->get();

    w_sstatus(sstatus);
    w_sepc(sepc);
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
        static bool once = true;
        if (once) {
            once = false;
            printString("sepc: "); printInteger(r_sepc()); printString("\n");
            printString("scause: "); printInteger(scause); printString("\n");
            printString("ERROR: unexpected trap cause"); printString("\n");
        }

    }
}