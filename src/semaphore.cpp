#include "../h/semaphore.hpp"
#include "../h/tcb.hpp"
#include "../h/scheduler.hpp"

KObjectAllocator* _sem::myElemAllocator = nullptr;

int _sem::wait(_sem* s) {
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
        _thread::running->setBlocked(false);
        if (t) Scheduler::instance()->put(t);
    }
    return s->semDeleted;

}
