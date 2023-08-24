#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/scheduler.hpp"
#include "../h/syscall_c.hpp"

_thread *_thread::running = nullptr;
uint64 _thread::timeSliceCounter = 0;
uint64 _thread::nextTid = 0;
KObjectAllocator* _thread::myElemAllocator = nullptr;

void _thread::threadWrapper() {
    Riscv::enterUserMode();
    running->body(running->arg);
    running->setFinished(true);
    thread_dispatch();
}

void _thread::switchTo() {
    _thread *old = running; running = this;
    contextSwitch(&old->context, &context);
}

void infiniteDispatchLoop(void*) {
    while(true) {
        thread_dispatch();
    }
}
