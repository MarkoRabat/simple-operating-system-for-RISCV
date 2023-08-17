#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"
#include "../lib/hw.h"

void* mem_alloc(size_t size) {
    uint64 volatile x;

    x = (uint64) size;
    __asm__ volatile("ld a1, %0" :: "m" (x));
    x = 0x01;
    __asm__ volatile("ld a0, %0" :: "m" (x));
    __asm__ volatile ("ecall");
    return nullptr;
}

int mem_free(void*) {

    __asm__ volatile ("ecall");
    return 0;
}

int thread_create (
        thread_t* handle,
        void (*start_routine) (void*),
        void* arg) {

    __asm__ volatile ("ecall");
    return 0;
}

int sem_open (
        sem_t* handle,
        unsigned init ) {

    __asm__ volatile ("ecall");
    return 0;
}

int sem_close(sem_t handle) {

    __asm__ volatile ("ecall");
    return 0;
}

int sem_wait(sem_t id) {

    __asm__ volatile ("ecall");
    return 0;
}

int sem_signal(sem_t id) {

    __asm__ volatile ("ecall");
    return 0;
}

int time_sleep(time_t) {

    __asm__ volatile ("ecall");
    return 0;
}

char getc() {

    __asm__ volatile ("ecall");
    return '\0';
}

void putc(char) {

    __asm__ volatile ("ecall");
}
