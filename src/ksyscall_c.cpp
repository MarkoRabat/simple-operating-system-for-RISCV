#include "../h/ksyscall_c.hpp"
#include "../h/print.hpp"
#include "../lib/hw.h"
#include "../h/memoryAllocator.hpp"
#include "../h/tcb.hpp"

void* kmem_alloc(size_t size) {
    return MemoryAllocator::instance()->kmem_alloc(size);
}

int kmem_free(void* p) {
    int volatile val = MemoryAllocator::instance()->kmem_free(p);
    return val;
}

int kthread_create ( thread_t* handle, void (*start_routine) (void*), void* arg) {
    *handle = new TCB(start_routine, arg);
    if (*handle) return 0;
    return -1;
}

int kthread_exit() {
    TCB::running->setFinished(true);
    return 0;
}

void kthread_dispatch() { ; }

void kthread_join ( thread_t handle ) {
    printString("\nkthread_join\n");

}

int ksem_open ( sem_t* handle, unsigned init ) {
    printString("\nksem_open\n");

    return 0;
}

int ksem_close(sem_t handle) {
    printString("\nksem_close\n");

    return 0;
}

int ksem_wait(sem_t id) {
    printString("\nksem_wait\n");

    return 0;
}

int ksem_signal(sem_t id) {
    printString("\nksem_signal\n");

    return 0;
}

int ktime_sleep(time_t) {
    printString("\nstime_sleep\n");

    return 0;
}

char kgetc() {
    printString("\nkgetc\n");

    return 0;
}

void kputc(char) {
    printString("\nkputc\n");
}
