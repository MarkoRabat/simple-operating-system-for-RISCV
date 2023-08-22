#ifndef LIST_HPP
#define LIST_HPP

#include "kObjectAllocator.hpp"
#include "print.hpp"

class TCB;

class List
{
private:
    struct Elem {
        TCB *data;
        Elem *next;
        static void* newElem(TCB* data, Elem* next, KObjectAllocator* myAllocator) {
            if (!myAllocator) myAllocator = new KObjectAllocator(sizeof(Elem));
            printString("\n1\n");
            Elem* e = (Elem*) myAllocator->allocateNewObject();
            printString("\n2\n");
            e->setData(data);
            printString("\n3\n");
            e->setNext(next);
            printString("\n4\n");
            return e;
        }
        static void deleteElem(void* p, KObjectAllocator* myAllocator) { myAllocator->freeObject(p); }
        void setData(TCB* ddata) { data = ddata; }
        void setNext(Elem* nnext) { next = nnext; }
    };
    Elem *head, *tail;
    KObjectAllocator* myElemAllocator = nullptr;
public:
    List() : head(0), tail(0) {}
    List(const List &) = delete;
    List &operator=(const List &) = delete;
    ~List() { delete myElemAllocator; }
    void addFirst(TCB *data) {
        Elem *elem = (Elem*) Elem::newElem(data, head, myElemAllocator);
        head = elem; if (!tail) tail = head;
    }
    void addLast(TCB *data) {
        printString("\nhello from last1\n");
        Elem *elem = (Elem*) Elem::newElem(data, 0, myElemAllocator);
        printString("\nhello from last2\n");
        if (tail) { tail->next = elem; tail = elem; }
        else head = tail = elem;
    }
    TCB *removeFirst() {
        if (!head) { return 0; }
        Elem *elem = head;
        head = head->next;
        if (!head) tail = 0;
        TCB *ret = elem->data;
        Elem::deleteElem(elem, myElemAllocator);
        return ret;
    }
    TCB *peekFirst() {
        if (!head) return 0;
        return head->data;
    }
    TCB *removeLast() {
        if (!head) return 0;
        Elem *prev = 0;
        for (Elem *curr = head; curr && curr != tail; curr = curr->next) prev = curr;
        Elem *elem = tail;
        if (prev) prev->next = 0; else head = 0; tail = prev;
        TCB *ret = elem->data;
        Elem::deleteElem(elem, myElemAllocator);
        return ret;
    }

    TCB *peekLast() {
        if (!tail) return 0;
        return tail->data;
    }
};

#endif
