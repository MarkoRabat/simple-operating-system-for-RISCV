#ifndef _SEMAPHORE_HPP_
#define _SEMAPHORE_HPP_

#include "list.hpp"

class Semaphore {
public:
    Semaphore(int init=1) : val(init) {}
    void wait();
    void signal();
    int value() const { return val; }
    void setValue(int newVal) { val = newVal; }
    void* operator new(size_t size) {
        if (!myElemAllocator) myElemAllocator = new KObjectAllocator(sizeof(Semaphore));
        return myElemAllocator->allocateNewObject();
    }
    void operator delete(void* p) {
        myElemAllocator->freeObject(p);
    }
private:
    int val;
    static KObjectAllocator* myElemAllocator;
    List blocked;
};

#endif