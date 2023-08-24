.extern _ZN5Riscv20handleSupervisorTrapEv

.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:

    csrw sscratch, sp
    addi sp, sp, -248
    .irp index, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr

    csrr s2, scause
    addi s2, s2, -8
    beqz s2, sync

    csrr s2, scause
    addi s2, s2, -9
    beqz s2, sync

async:

    call _ZN5Riscv25handleAsyncSupervisorTrapEv

    # pop all registers from stack
    .irp index, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr

    addi sp, sp, 248
    sret

sync:

    mv s3, a0
    addi s3, s3, -0x99
    beqz s3, userMode

    call _ZN5Riscv24handleSyncSupervisorTrapEv

    andi s2, s2, 0
    addi s2, s2, 0x2
    csrc sip, s2

    # load all registers from stack except x10, already loaded in called function
    .irp index, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr

    addi sp, sp, 248
    sret

userMode:

    # clear SSP bit 8 to return to user mode
    andi s2, s2, 0
    addi s2, s2, 0x100
    csrc sstatus, s2
    csrr s2, sepc
    addi s2, s2, 4
    csrw sepc, s2

    andi s2, s2, 0
    addi s2, s2, 0x2
    csrc sip, s2

    .irp index, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr

    addi sp, sp, 248
    sret
