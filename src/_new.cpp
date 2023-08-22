#include "../h/memoryAllocator.hpp"


using size_t = decltype(sizeof(0));

void *operator new(size_t n) {
    return MemoryAllocator::instance()->kmem_alloc(n);
}

void *operator new[](size_t n) {
    return MemoryAllocator::instance()->kmem_alloc(n);
}

void operator delete(void *p) noexcept {
    MemoryAllocator::instance()->kmem_free(p);
}

void operator delete[](void *p) noexcept {
    MemoryAllocator::instance()->kmem_free(p);
}