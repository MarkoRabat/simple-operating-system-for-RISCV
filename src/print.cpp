//
// Created by marko on 20.4.22..
//

#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    while (*string != '\0') __putc(*string++);

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
}

void printInteger(uint64 integer)
{
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    static char digits[] = "0123456789";
    char buf[16]; int i = 0; uint64 x = integer;
    int neg = (integer & ((uint64)1 << 63)) != 0;

    if (neg) x = ~integer + 1;

    do buf[i++] = digits[x % 10];
    while ((x /= 10) != 0);

    if (neg) buf[i++] = '-';
    while (--i >= 0) { __putc(buf[i]); }

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
}
