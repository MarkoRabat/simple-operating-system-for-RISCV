#include "../h/ksyscall_c.hpp"

void* kmem_alloc(size_t size) {

}

int kmem_free(void*) {

}

int kthread_create ( thread_t* handle, void (*start_routine) (void*), void* arg ) {

}

int kthread_exit() {

}

void kthread_dispatch() {

}

void kthread_join ( thread_t handle ) {

}

int ksem_open ( sem_t* handle, unsigned init ) {

}

int ksem_close(sem_t handle) {

}

int ksem_wait(sem_t id) {

}

int ksem_signal(sem_t id) {

}

int ktime_sleep(time_t) {

}

char kgetc() {

}

void kputc(char) {

}
