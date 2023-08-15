#include "../lib/mem.h"
//#include "../h/memoryAllocator.hpp"


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    return __mem_alloc(n);
    //return MemoryAllocator::instance()->kmem_alloc(n);
}

void *operator new[](size_t n)
{
    return __mem_alloc(n);
    //return MemoryAllocator::instance()->kmem_alloc(n);
}

void operator delete(void *p) noexcept
{
    __mem_free(p);
    //MemoryAllocator::instance()->kmem_free(p);
}

void operator delete[](void *p) noexcept
{
    __mem_free(p);
    //MemoryAllocator::instance()->kmem_free(p);
}