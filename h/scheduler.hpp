#ifndef SCHEDULER_HPP
#define SCHEDULER_HPP

#include "list.hpp"

class TCB;

class Scheduler
{
private:
    List readyThreadQueue;
    static Scheduler* onlyInstance;
public:
    static Scheduler* instance();
    void get();
    void put(TCB *ccb);
    size_t readyThreadCnt() { return readyThreadQueue.getNumberOfElements(); }
};

#endif
