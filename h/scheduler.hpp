#ifndef SCHEDULER_HPP
#define SCHEDULER_HPP

#include "list.hpp"

class TCB;

class Scheduler
{
private:
    static List readyThreadQueue;

public:
    static void get();
    static void put(TCB *ccb);
};

#endif
