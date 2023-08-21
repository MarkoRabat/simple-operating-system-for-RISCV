#include "../h/ksyscall_c.hpp"
#include "../h/print.hpp"
#include "../lib/hw.h"
#include "../h/memoryAllocator.hpp"

void* kmem_alloc(size_t size) {
    return MemoryAllocator::instance()->kmem_alloc(size);
}

int kmem_free(void* p) {
    printString("Here1\n");
    int val = MemoryAllocator::instance()->kmem_free(p);
    printString("Here2\n");
    return val;
}

int kthread_create ( thread_t* handle, void (*start_routine) (void*), void* arg ) {
    printString("\nkthread_create\n");

    return 0;
}

int kthread_exit() {
    printString("\nkthread_exit\n");

    return 0;
}

void kthread_dispatch() {
    printString("\nkthread_dispatch\n");

}

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
