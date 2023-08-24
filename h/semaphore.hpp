#ifndef _SEMAPHORE_HPP_
#define _SEMAPHORE_HPP_

#include "list.hpp"

class _sem {
public:
    _sem(int init=1) : _sem(init, 0) {}
    _sem(int init, int ssemDeleted) : val(init), semDeleted(ssemDeleted) {}
    static int wait(_sem*);
    static int signal(_sem*);
    int value() const { return val; }
    void* operator new(size_t size) {
        if (!myElemAllocator) myElemAllocator = new KObjectAllocator(sizeof(_sem));
        return myElemAllocator->allocateNewObject();
    }
    void operator delete(void* p) {
        ((_sem*) p)->semDeleted = 1;
        while (((_sem*) p)->val > 0) signal((_sem*)p);
        myElemAllocator->freeObject(p);
    }
private:
    int val;
    int semDeleted;
    static KObjectAllocator* myElemAllocator;
    List blocked;
};

#endif