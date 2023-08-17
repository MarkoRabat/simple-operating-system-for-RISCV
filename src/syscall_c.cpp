#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"
#include "../h/print.hpp"
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

int mem_free(void* p) {
    uint64 volatile x;
    x = (uint64) p;
    __asm__ volatile("sd a1, %0" :: "m" (x));
    x = 0x02;
    __asm__ volatile("ld a0, %0" :: "m" (x));
    __asm__ volatile ("ecall");
    return 0;
}

int thread_create (
        thread_t* handle,
        void (*start_routine) (void*),
        void* arg) {
    uint64 volatile x;
    x = (uint64) handle;
    __asm__ volatile("sd a1, %0" :: "m" (x));
    x = (uint64) start_routine;
    __asm__ volatile("sd a2, %0" :: "m" (x));
    x = (uint64) arg;
    __asm__ volatile("sd a2, %0" :: "m" (x));
    x = 0x11;
    __asm__ volatile("ld a0, %0" :: "m" (x));
    __asm__ volatile ("ecall");
    return 0;
}

int thread_exit() {
    x = 0x11;
    __asm__ volatile("ld a0, %0" :: "m" (x));
    __asm__ volatile ("ecall");
    return 0;
}

void thread_dispatch() {
    x = 0x11;
    __asm__ volatile("ld a0, %0" :: "m" (x));
    __asm__ volatile ("ecall");
}

void thread_join (thread_t handle) {

}

int sem_open (
        sem_t* handle,
        unsigned init ) {
    uint64 volatile x;
    x = (uint64) handle;
    __asm__ volatile("sd a1, %0" :: "m" (x));
    x = (uint64) init;
    __asm__ volatile("sd a2, %0" :: "m" (x));
    x = 0x03;
    __asm__ volatile("ld a0, %0" :: "m" (x));
    __asm__ volatile ("ecall");
    return 0;
}

int sem_close(sem_t handle) {
    uint64 volatile x;
    x = (uint64) handle;
    __asm__ volatile("sd a1, %0" :: "m" (x));
    x = 0x03;
    __asm__ volatile("ld a0, %0" :: "m" (x));
    __asm__ volatile ("ecall");
    return 0;
}

int sem_wait(sem_t id) {

    uint64 volatile x;
    x = (uint64) handle;
    __asm__ volatile("sd a1, %0" :: "m" (x));
    x = 0x03;
    __asm__ volatile("ld a0, %0" :: "m" (x));
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
