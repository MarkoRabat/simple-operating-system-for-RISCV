#include "../h/print.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/kObjectAllocator.hpp"
#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"

// tests delete this before submition !!!!!!!!!!!
#include "../h/memoryAllocatorTest.hpp"
#include "../h/kObjectAllocatorTest.hpp"

int main() {

    //mem_alloc(12);

    /*__asm__ volatile ("ld a0, #0x01");
    uint64 volatile x;
    __asm__ volatile ("sd a0, %0" : "=m" (x));
    printString("\nx= ");
    printInteger(x);
    printString("\n");
    __asm__ volatile ("ecall");*/

    Riscv::w_stvec((uint64) Riscv::supervisorTrap);
    //Riscv::popSppSpie((uint64)&&continueFrom);
    Riscv::enterUserMode();
    void* p = mem_alloc(1);
    printString("\nmem_free:"); printInteger((uint64)mem_free(p)); printString("\n");
    printString("\nthread_create:"); printInteger((uint64)thread_create(0, 0, 0)); printString("\n");
    printString("\nthread_exit:"); printInteger((uint64)thread_exit()); printString("\n");
    printString("\nthread_dispatch:"); thread_dispatch(); printString("\n");
    printString("\nthreadJoin:"); thread_join(0); printString("\n");
    printString("\nsem_open:"); printInteger((uint64)sem_open(0, 0)); printString("\n");
    printString("\nsem_close:"); printInteger((uint64)sem_close(0)); printString("\n");
    printString("\nsem_wait:"); printInteger((uint64)sem_wait(0)); printString("\n");
    printString("\nsem_signal:"); printInteger((uint64)sem_signal(0)); printString("\n");
    printString("\ntime_sleep:"); printInteger((uint64)time_sleep(0)); printString("\n");
    printString("\ngetc:"); printInteger((uint64)getc()); printString("\n");
    printString("\nputc:"); putc(0); printString("\n");

    printString("\nKObjectAllocator tests:\n");
    KObjectAllocatorTest* t2 = new KObjectAllocatorTest;
    t2->runTests();
    delete t2;

    printString("\nMemory tests:\n");
    MemoryAllocatorTest t1;
    t1.runTests();


    return 0;
}