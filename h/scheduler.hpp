#ifndef SCHEDULER_HPP
#define SCHEDULER_HPP

#include "list.hpp"
#include "riscv.hpp"

class _thread;

class Scheduler
{
private:
    List readyThreadQueue;
    static Scheduler* onlyInstance;
    static _thread* mainThread;
    static _thread* placeHolder;
    static uint64 mainRet;
    friend _thread;
    friend Riscv;
    friend void main();
    friend int kthread_exit();
    friend void infiniteDispatchLoop(void*);
public:
    static Scheduler* instance();
    void get();
    void put(_thread *ccb);
    size_t readyThreadCnt() { return readyThreadQueue.getNumberOfElements(); }
};

#endif
