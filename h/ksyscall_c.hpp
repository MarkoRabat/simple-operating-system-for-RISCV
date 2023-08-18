#ifndef KSYSCALL_C_HPP
#define KSYSCALL_C_HPP

#include "../lib/hw.h"

void* kmem_alloc(size_t size);
int kmem_free(void*);

class _thread;
typedef _thread* thread_t;
int kthread_create (
        thread_t* handle,
        void (*start_routine) (void*),
        void* arg
);
int kthread_exit();
void kthread_dispatch();
void kthread_join (
        thread_t handle
);

class _sem;
typedef _sem* sem_t;
int ksem_open (
        sem_t* handle,
        unsigned init
);
int ksem_close(sem_t handle);
int ksem_wait(sem_t id);
int ksem_signal(sem_t id);

typedef unsigned long time_t;
int ktime_sleep(time_t);

const int EOF = -1;
char kgetc();
void kputc(char);

#endif