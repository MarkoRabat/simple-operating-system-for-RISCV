#include "../h/ksyscall_c.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/hw.h"
#include "../h/memoryAllocator.hpp"
#include "../h/tcb.hpp"
#include "../h/semaphore.hpp"
#include "../h/scheduler.hpp"

void* kmem_alloc(size_t size) {
    return MemoryAllocator::instance()->kmem_alloc(size);
}

int kmem_free(void* p) {
    return MemoryAllocator::instance()->kmem_free(p);
}

int kthread_create (thread_t* handle, void (*start_routine) (void*), void* arg) {
    *handle = new _thread(start_routine, arg);
    if(!*handle) return -1;
    (*handle)->setPointerToMe(handle);
    Scheduler::instance()->put(*handle);
    return 0;
}

int kthread_exit() {
    _thread::running->setFinished(true);
    return 0;
}

void kthread_dispatch() { ; }

void kthread_join (thread_t handle) {
    if (handle == 0) return;
    handle->join();
}

int ksem_open ( sem_t* handle, unsigned init ) {
    *handle = new _sem(init);
    if (*handle) return 0;
    return -1;
}

int ksem_close(sem_t handle) {
    delete handle;
    return 0;
}

int ksem_wait(sem_t id) {
    return _sem::wait(id);
}

int ksem_signal(sem_t id) {
    return _sem::signal(id);
}

int ktime_sleep(time_t) {
    return 0;
}

char kgetc() {
    printString("\nkgetc\n");

    return 0;
}

void kputc(char) {
    printString("\nkputc\n");
}
