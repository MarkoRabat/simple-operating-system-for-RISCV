#ifndef LIST_HPP
#define LIST_HPP

#include "kObjectAllocator.hpp"
#include "print.hpp"

class _thread;

class List
{
private:
    struct Elem {
        _thread *data;
        Elem *next;
        static void* newElem(_thread* data, Elem* next, KObjectAllocator** myAllocator) {
            if (!*myAllocator) *myAllocator = new KObjectAllocator(sizeof(Elem));
            Elem* e = (Elem*) (*myAllocator)->allocateNewObject();
            e->setData(data);
            e->setNext(next);
            return e;
        }
        static void deleteElem(void* p, KObjectAllocator* myAllocator) {
            myAllocator->freeObject(p);
        }
        void setData(_thread* ddata) { data = ddata; }
        void setNext(Elem* nnext) { next = nnext; }
    };
    Elem *head, *tail;
    KObjectAllocator* myElemAllocator;
    size_t numberOfElements;
    bool schedulerList = false;
public:
    List() : head(0), tail(0), myElemAllocator(0), numberOfElements(0) {}
    List(const List &) = delete;
    List &operator=(const List &) = delete;
    ~List() { delete myElemAllocator; }
    void initializationForDynamicAllocation() {
        myElemAllocator = nullptr; head = nullptr; tail = nullptr; numberOfElements = 0; }
    size_t getNumberOfElements() { return numberOfElements; }
    void setIsSchedulerList() { schedulerList = true; }
    void addFirst(_thread *data) {
        Elem *elem = (Elem*) Elem::newElem(data, head, &myElemAllocator);
        head = elem; if (!tail) tail = head;
        ++numberOfElements;
    }
    void addLast(_thread *data) {
        Elem *elem = (Elem*) Elem::newElem(data, 0, &myElemAllocator);
        if (tail) { tail->next = elem; tail = elem; }
        else head = tail = elem;
        ++numberOfElements;
    }
    _thread *removeFirst() {
        if (!head) { return 0; }
        Elem *elem = head;
        head = head->next;
        if (!head) tail = 0;
        _thread *ret = elem->data;
        Elem::deleteElem(elem, myElemAllocator);
        --numberOfElements;
        return ret;
    }
    _thread *peekFirst() {
        if (!head) return 0;
        return head->data;
    }
    _thread *removeLast() {
        if (!head) return 0;
        Elem *prev = 0;
        for (Elem *curr = head; curr && curr != tail; curr = curr->next) prev = curr;
        Elem *elem = tail;
        if (prev) prev->next = 0; else head = 0; tail = prev;
        _thread *ret = elem->data;
        Elem::deleteElem(elem, myElemAllocator);
        --numberOfElements;
        return ret;
    }

    _thread *peekLast() {
        if (!tail) return 0;
        return tail->data;
    }
};

#endif
