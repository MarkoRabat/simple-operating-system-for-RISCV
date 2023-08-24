#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"
#include "../h/print.hpp"

void* operator new (size_t s) {
    return mem_alloc(s);
}

void operator delete (void* p) {
    mem_free(p);
}

Thread::Thread (void (*body) (void*), void* arg) {
    this->body = body;
    this->arg = arg;
}

Thread::~Thread () {}

void threadWrapperRun(void* t) {
    printString("\nin wrapper\n");
    ((Thread*) t)->run();
}

int Thread::start() {
    if (body)
        return thread_create(&myHandle, body, arg);
    else {
        return thread_create(&myHandle, threadWrapperRun, this);
    }
    return -1;
}

void Thread::join() {
    thread_join(myHandle);
}

void Thread::dispatch () {
    thread_dispatch();
}

int Thread::sleep (time_t t) {
    return time_sleep(t);
}

Thread::Thread () { body = nullptr; }


Semaphore::Semaphore (unsigned init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore () {}

int Semaphore::wait () {
    return sem_wait(myHandle);
}

int Semaphore::signal () {
    return sem_signal(myHandle);
}
