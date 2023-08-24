#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"
#include "../h/print.hpp"
#include "../lib/hw.h"

void* mem_alloc(size_t size) {
    uint64 volatile x;
    x = (uint64) size; __asm__ volatile("ld a1, %0" :: "m" (x));
    x = 0x01; __asm__ volatile("ld a0, %0" :: "m" (x));
    __asm__ volatile ("ecall");
    __asm__ volatile("sd a0, %0" : "=m" (x)); return (void*) x;
}

int mem_free(void* p) {
    uint64 volatile x;
    x = (uint64) p; __asm__ volatile("ld a1, %0" :: "m" (x));
    x = 0x02; __asm__ volatile("ld a0, %0" :: "m" (x));
    __asm__ volatile ("ecall");
    __asm__ volatile("sd a0, %0" : "=m" (x)); return (int) x;
}

int thread_create (thread_t* handle, void (*start_routine) (void*), void* arg) {
    uint64 volatile x;
    x = (uint64) arg; __asm__ volatile("ld a3, %0" :: "m" (x));
    x = (uint64) start_routine; __asm__ volatile("ld a2, %0" :: "m" (x));
    x = (uint64) handle; __asm__ volatile("ld a1, %0" :: "m" (x));
    x = 0x11; __asm__ volatile("ld a0, %0" :: "m" (x));
    __asm__ volatile ("ecall");
    __asm__ volatile("sd a0, %0" : "=m" (x)); return (int) x;
}

int thread_exit() {
    uint64 volatile x;
    x = 0x12; __asm__ volatile("ld a0, %0" :: "m" (x));
    __asm__ volatile ("ecall");
    __asm__ volatile("sd a0, %0" : "=m" (x)); return (int) x;
}

void thread_dispatch() {
    uint64 volatile x;
    x = 0x13; __asm__ volatile("ld a0, %0" :: "m" (x));
    __asm__ volatile ("ecall");
}

void thread_join (thread_t handle) {
    uint64 volatile x;
    x = 0x14; __asm__ volatile("ld a0, %0" :: "m" (x));
    __asm__ volatile ("ecall");
}

int sem_open (sem_t* handle, unsigned init ) {
    uint64 volatile x;
    x = (uint64) init; __asm__ volatile("ld a2, %0" :: "m" (x));
    x = (uint64) handle; __asm__ volatile("ld a1, %0" :: "m" (x));
    x = 0x21; __asm__ volatile("ld a0, %0" :: "m" (x));
    __asm__ volatile ("ecall");
    __asm__ volatile("sd a0, %0" : "=m" (x)); return (int) x;
}

int sem_close(sem_t handle) {
    uint64 volatile x;
    x = (uint64) handle; __asm__ volatile("ld a1, %0" :: "m" (x));
    x = 0x22; __asm__ volatile("ld a0, %0" :: "m" (x));
    __asm__ volatile ("ecall");
    __asm__ volatile("sd a0, %0" : "=m" (x)); return (int) x;
}

int sem_wait(sem_t id) {
    uint64 volatile x;
    x = (uint64) id; __asm__ volatile("ld a1, %0" :: "m" (x));
    x = 0x23; __asm__ volatile("ld a0, %0" :: "m" (x));
    __asm__ volatile ("ecall");
    __asm__ volatile("sd a0, %0" : "=m" (x)); return (int) x;
}

int sem_signal(sem_t id) {
    uint64 volatile x;
    x = (uint64) id; __asm__ volatile("ld a1, %0" :: "m" (x));
    x = 0x24; __asm__ volatile("ld a0, %0" :: "m" (x));
    __asm__ volatile ("ecall");
    __asm__ volatile("sd a0, %0" : "=m" (x)); return (int) x;
}

int time_sleep(time_t id) {
    uint64 volatile x;
    x = (uint64) id; __asm__ volatile("ld a1, %0" :: "m" (x));
    x = 0x31; __asm__ volatile("ld a0, %0" :: "m" (x));
    __asm__ volatile ("ecall");
    __asm__ volatile("sd a0, %0" : "=m" (x)); return (int) x;
}

char getc() {
    uint64 volatile x;
    x = 0x41; __asm__ volatile("ld a0, %0" :: "m" (x));
    __asm__ volatile ("ecall");
    __asm__ volatile("sd a0, %0" : "=m" (x)); return (char) x;
}

void putc(char c) {
    uint64 volatile x;
    x = (uint64) c; __asm__ volatile("ld a1, %0" :: "m" (x));
    x = 0x42; __asm__ volatile("ld a0, %0" :: "m" (x));
    __asm__ volatile ("ecall");
}
