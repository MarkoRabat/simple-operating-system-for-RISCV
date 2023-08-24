#include "../h/semaphore.hpp"
#include "../h/tcb.hpp"
#include "../h/scheduler.hpp"

KObjectAllocator* _sem::myElemAllocator = nullptr;

int _sem::wait(_sem* s) {
    printString("s= "); printInteger((uint64) s); printString("\n");
    printString("s= "); printInteger(s->value()); printString("\n");
    if (--s->val < 0) {
        s->blocked.addLast(_thread::running);
        _thread::running->setBlocked(true);
        Scheduler::instance()->get();
    }
    return s->semDeleted;
}

int _sem::signal(_sem* s) {
    if (++s->val <= 0) {
        _thread* t = s->blocked.removeFirst();
        t->setBlocked(false);
        Scheduler::instance()->put(t);
    }
    return s->semDeleted;

}
