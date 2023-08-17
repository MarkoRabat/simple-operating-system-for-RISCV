
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	6f813103          	ld	sp,1784(sp) # 8000a6f8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	584060ef          	jal	ra,800065a0 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001084:	0e4050ef          	jal	ra,80006168 <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256

    sret
    8000110c:	10200073          	sret

0000000080001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    80001120:	00008067          	ret

0000000080001124 <_Z9mem_allocm>:
#include "../h/syscall_c.hpp"
#include "../h/riscv.hpp"
#include "../lib/hw.h"

void* mem_alloc(size_t size) {
    80001124:	fe010113          	addi	sp,sp,-32
    80001128:	00813c23          	sd	s0,24(sp)
    8000112c:	02010413          	addi	s0,sp,32
    uint64 volatile x;

    x = (uint64) size;
    80001130:	fea43423          	sd	a0,-24(s0)
    __asm__ volatile("ld a1, %0" :: "m" (x));
    80001134:	fe843583          	ld	a1,-24(s0)
    x = 0x01;
    80001138:	00100793          	li	a5,1
    8000113c:	fef43423          	sd	a5,-24(s0)
    __asm__ volatile("ld a0, %0" :: "m" (x));
    80001140:	fe843503          	ld	a0,-24(s0)
    __asm__ volatile ("ecall");
    80001144:	00000073          	ecall
    return nullptr;
}
    80001148:	00000513          	li	a0,0
    8000114c:	01813403          	ld	s0,24(sp)
    80001150:	02010113          	addi	sp,sp,32
    80001154:	00008067          	ret

0000000080001158 <_Z8mem_freePv>:

int mem_free(void*) {
    80001158:	ff010113          	addi	sp,sp,-16
    8000115c:	00813423          	sd	s0,8(sp)
    80001160:	01010413          	addi	s0,sp,16

    __asm__ volatile ("ecall");
    80001164:	00000073          	ecall
    return 0;
}
    80001168:	00000513          	li	a0,0
    8000116c:	00813403          	ld	s0,8(sp)
    80001170:	01010113          	addi	sp,sp,16
    80001174:	00008067          	ret

0000000080001178 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create (
        thread_t* handle,
        void (*start_routine) (void*),
        void* arg) {
    80001178:	ff010113          	addi	sp,sp,-16
    8000117c:	00813423          	sd	s0,8(sp)
    80001180:	01010413          	addi	s0,sp,16

    __asm__ volatile ("ecall");
    80001184:	00000073          	ecall
    return 0;
}
    80001188:	00000513          	li	a0,0
    8000118c:	00813403          	ld	s0,8(sp)
    80001190:	01010113          	addi	sp,sp,16
    80001194:	00008067          	ret

0000000080001198 <_Z8sem_openPP4_semj>:

int sem_open (
        sem_t* handle,
        unsigned init ) {
    80001198:	ff010113          	addi	sp,sp,-16
    8000119c:	00813423          	sd	s0,8(sp)
    800011a0:	01010413          	addi	s0,sp,16

    __asm__ volatile ("ecall");
    800011a4:	00000073          	ecall
    return 0;
}
    800011a8:	00000513          	li	a0,0
    800011ac:	00813403          	ld	s0,8(sp)
    800011b0:	01010113          	addi	sp,sp,16
    800011b4:	00008067          	ret

00000000800011b8 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    800011b8:	ff010113          	addi	sp,sp,-16
    800011bc:	00813423          	sd	s0,8(sp)
    800011c0:	01010413          	addi	s0,sp,16

    __asm__ volatile ("ecall");
    800011c4:	00000073          	ecall
    return 0;
}
    800011c8:	00000513          	li	a0,0
    800011cc:	00813403          	ld	s0,8(sp)
    800011d0:	01010113          	addi	sp,sp,16
    800011d4:	00008067          	ret

00000000800011d8 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    800011d8:	ff010113          	addi	sp,sp,-16
    800011dc:	00813423          	sd	s0,8(sp)
    800011e0:	01010413          	addi	s0,sp,16

    __asm__ volatile ("ecall");
    800011e4:	00000073          	ecall
    return 0;
}
    800011e8:	00000513          	li	a0,0
    800011ec:	00813403          	ld	s0,8(sp)
    800011f0:	01010113          	addi	sp,sp,16
    800011f4:	00008067          	ret

00000000800011f8 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    800011f8:	ff010113          	addi	sp,sp,-16
    800011fc:	00813423          	sd	s0,8(sp)
    80001200:	01010413          	addi	s0,sp,16

    __asm__ volatile ("ecall");
    80001204:	00000073          	ecall
    return 0;
}
    80001208:	00000513          	li	a0,0
    8000120c:	00813403          	ld	s0,8(sp)
    80001210:	01010113          	addi	sp,sp,16
    80001214:	00008067          	ret

0000000080001218 <_Z10time_sleepm>:

int time_sleep(time_t) {
    80001218:	ff010113          	addi	sp,sp,-16
    8000121c:	00813423          	sd	s0,8(sp)
    80001220:	01010413          	addi	s0,sp,16

    __asm__ volatile ("ecall");
    80001224:	00000073          	ecall
    return 0;
}
    80001228:	00000513          	li	a0,0
    8000122c:	00813403          	ld	s0,8(sp)
    80001230:	01010113          	addi	sp,sp,16
    80001234:	00008067          	ret

0000000080001238 <_Z4getcv>:

char getc() {
    80001238:	ff010113          	addi	sp,sp,-16
    8000123c:	00813423          	sd	s0,8(sp)
    80001240:	01010413          	addi	s0,sp,16

    __asm__ volatile ("ecall");
    80001244:	00000073          	ecall
    return '\0';
}
    80001248:	00000513          	li	a0,0
    8000124c:	00813403          	ld	s0,8(sp)
    80001250:	01010113          	addi	sp,sp,16
    80001254:	00008067          	ret

0000000080001258 <_Z4putcc>:

void putc(char) {
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16

    __asm__ volatile ("ecall");
    80001264:	00000073          	ecall
}
    80001268:	00813403          	ld	s0,8(sp)
    8000126c:	01010113          	addi	sp,sp,16
    80001270:	00008067          	ret

0000000080001274 <_Z5main2v>:
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"

int main2()
{
    80001274:	fb010113          	addi	sp,sp,-80
    80001278:	04113423          	sd	ra,72(sp)
    8000127c:	04813023          	sd	s0,64(sp)
    80001280:	02913c23          	sd	s1,56(sp)
    80001284:	03213823          	sd	s2,48(sp)
    80001288:	05010413          	addi	s0,sp,80
    TCB *threads[5];

    threads[0] = TCB::createThread(nullptr);
    8000128c:	00000513          	li	a0,0
    80001290:	00000097          	auipc	ra,0x0
    80001294:	654080e7          	jalr	1620(ra) # 800018e4 <_ZN3TCB12createThreadEPFvvE>
    80001298:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    8000129c:	00009797          	auipc	a5,0x9
    800012a0:	4647b783          	ld	a5,1124(a5) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x48>
    800012a4:	00a7b023          	sd	a0,0(a5)

    threads[1] = TCB::createThread(workerBodyA);
    800012a8:	00009517          	auipc	a0,0x9
    800012ac:	44853503          	ld	a0,1096(a0) # 8000a6f0 <_GLOBAL_OFFSET_TABLE_+0x38>
    800012b0:	00000097          	auipc	ra,0x0
    800012b4:	634080e7          	jalr	1588(ra) # 800018e4 <_ZN3TCB12createThreadEPFvvE>
    800012b8:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    800012bc:	00008517          	auipc	a0,0x8
    800012c0:	d6450513          	addi	a0,a0,-668 # 80009020 <CONSOLE_STATUS+0x10>
    800012c4:	00005097          	auipc	ra,0x5
    800012c8:	164080e7          	jalr	356(ra) # 80006428 <_Z11printStringPKc>
    threads[2] = TCB::createThread(workerBodyB);
    800012cc:	00009517          	auipc	a0,0x9
    800012d0:	40c53503          	ld	a0,1036(a0) # 8000a6d8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800012d4:	00000097          	auipc	ra,0x0
    800012d8:	610080e7          	jalr	1552(ra) # 800018e4 <_ZN3TCB12createThreadEPFvvE>
    800012dc:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    800012e0:	00008517          	auipc	a0,0x8
    800012e4:	d5850513          	addi	a0,a0,-680 # 80009038 <CONSOLE_STATUS+0x28>
    800012e8:	00005097          	auipc	ra,0x5
    800012ec:	140080e7          	jalr	320(ra) # 80006428 <_Z11printStringPKc>
    threads[3] = TCB::createThread(workerBodyC);
    800012f0:	00009517          	auipc	a0,0x9
    800012f4:	42053503          	ld	a0,1056(a0) # 8000a710 <_GLOBAL_OFFSET_TABLE_+0x58>
    800012f8:	00000097          	auipc	ra,0x0
    800012fc:	5ec080e7          	jalr	1516(ra) # 800018e4 <_ZN3TCB12createThreadEPFvvE>
    80001300:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    80001304:	00008517          	auipc	a0,0x8
    80001308:	d4c50513          	addi	a0,a0,-692 # 80009050 <CONSOLE_STATUS+0x40>
    8000130c:	00005097          	auipc	ra,0x5
    80001310:	11c080e7          	jalr	284(ra) # 80006428 <_Z11printStringPKc>
    threads[4] = TCB::createThread(workerBodyD);
    80001314:	00009517          	auipc	a0,0x9
    80001318:	40453503          	ld	a0,1028(a0) # 8000a718 <_GLOBAL_OFFSET_TABLE_+0x60>
    8000131c:	00000097          	auipc	ra,0x0
    80001320:	5c8080e7          	jalr	1480(ra) # 800018e4 <_ZN3TCB12createThreadEPFvvE>
    80001324:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    80001328:	00008517          	auipc	a0,0x8
    8000132c:	d4050513          	addi	a0,a0,-704 # 80009068 <CONSOLE_STATUS+0x58>
    80001330:	00005097          	auipc	ra,0x5
    80001334:	0f8080e7          	jalr	248(ra) # 80006428 <_Z11printStringPKc>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001338:	00009797          	auipc	a5,0x9
    8000133c:	3987b783          	ld	a5,920(a5) # 8000a6d0 <_GLOBAL_OFFSET_TABLE_+0x18>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001340:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001344:	00200793          	li	a5,2
    80001348:	1007a073          	csrs	sstatus,a5
}
    8000134c:	00c0006f          	j	80001358 <_Z5main2v+0xe4>
    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        TCB::yield();
    80001350:	00000097          	auipc	ra,0x0
    80001354:	65c080e7          	jalr	1628(ra) # 800019ac <_ZN3TCB5yieldEv>
    while (!(threads[1]->isFinished() &&
    80001358:	fc043783          	ld	a5,-64(s0)
class TCB
{
public:
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    8000135c:	0287c783          	lbu	a5,40(a5)
    80001360:	fe0788e3          	beqz	a5,80001350 <_Z5main2v+0xdc>
             threads[2]->isFinished() &&
    80001364:	fc843783          	ld	a5,-56(s0)
    80001368:	0287c783          	lbu	a5,40(a5)
    while (!(threads[1]->isFinished() &&
    8000136c:	fe0782e3          	beqz	a5,80001350 <_Z5main2v+0xdc>
             threads[3]->isFinished() &&
    80001370:	fd043783          	ld	a5,-48(s0)
    80001374:	0287c783          	lbu	a5,40(a5)
             threads[2]->isFinished() &&
    80001378:	fc078ce3          	beqz	a5,80001350 <_Z5main2v+0xdc>
             threads[4]->isFinished()))
    8000137c:	fd843783          	ld	a5,-40(s0)
    80001380:	0287c783          	lbu	a5,40(a5)
    while (!(threads[1]->isFinished() &&
    80001384:	fc0786e3          	beqz	a5,80001350 <_Z5main2v+0xdc>
    80001388:	fb840493          	addi	s1,s0,-72
    8000138c:	0140006f          	j	800013a0 <_Z5main2v+0x12c>
    }

    for (auto &thread: threads)
    {
        delete thread;
    80001390:	00090513          	mv	a0,s2
    80001394:	00002097          	auipc	ra,0x2
    80001398:	d24080e7          	jalr	-732(ra) # 800030b8 <_ZdlPv>
    for (auto &thread: threads)
    8000139c:	00848493          	addi	s1,s1,8
    800013a0:	fe040793          	addi	a5,s0,-32
    800013a4:	02f48063          	beq	s1,a5,800013c4 <_Z5main2v+0x150>
        delete thread;
    800013a8:	0004b903          	ld	s2,0(s1)
    800013ac:	fe0908e3          	beqz	s2,8000139c <_Z5main2v+0x128>
    ~TCB() { delete[] stack; }
    800013b0:	00893503          	ld	a0,8(s2)
    800013b4:	fc050ee3          	beqz	a0,80001390 <_Z5main2v+0x11c>
    800013b8:	00002097          	auipc	ra,0x2
    800013bc:	d28080e7          	jalr	-728(ra) # 800030e0 <_ZdaPv>
    800013c0:	fd1ff06f          	j	80001390 <_Z5main2v+0x11c>
    }
    printString("Finished\n");
    800013c4:	00008517          	auipc	a0,0x8
    800013c8:	cbc50513          	addi	a0,a0,-836 # 80009080 <CONSOLE_STATUS+0x70>
    800013cc:	00005097          	auipc	ra,0x5
    800013d0:	05c080e7          	jalr	92(ra) # 80006428 <_Z11printStringPKc>

    return 0;
}
    800013d4:	00000513          	li	a0,0
    800013d8:	04813083          	ld	ra,72(sp)
    800013dc:	04013403          	ld	s0,64(sp)
    800013e0:	03813483          	ld	s1,56(sp)
    800013e4:	03013903          	ld	s2,48(sp)
    800013e8:	05010113          	addi	sp,sp,80
    800013ec:	00008067          	ret

00000000800013f0 <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    800013f0:	fe010113          	addi	sp,sp,-32
    800013f4:	00113c23          	sd	ra,24(sp)
    800013f8:	00813823          	sd	s0,16(sp)
    800013fc:	00913423          	sd	s1,8(sp)
    80001400:	01213023          	sd	s2,0(sp)
    80001404:	02010413          	addi	s0,sp,32
    80001408:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000140c:	00100793          	li	a5,1
    80001410:	02a7f863          	bgeu	a5,a0,80001440 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { TCB::yield(); }
    80001414:	00a00793          	li	a5,10
    80001418:	02f577b3          	remu	a5,a0,a5
    8000141c:	02078e63          	beqz	a5,80001458 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001420:	fff48513          	addi	a0,s1,-1
    80001424:	00000097          	auipc	ra,0x0
    80001428:	fcc080e7          	jalr	-52(ra) # 800013f0 <_ZL9fibonaccim>
    8000142c:	00050913          	mv	s2,a0
    80001430:	ffe48513          	addi	a0,s1,-2
    80001434:	00000097          	auipc	ra,0x0
    80001438:	fbc080e7          	jalr	-68(ra) # 800013f0 <_ZL9fibonaccim>
    8000143c:	00a90533          	add	a0,s2,a0
}
    80001440:	01813083          	ld	ra,24(sp)
    80001444:	01013403          	ld	s0,16(sp)
    80001448:	00813483          	ld	s1,8(sp)
    8000144c:	00013903          	ld	s2,0(sp)
    80001450:	02010113          	addi	sp,sp,32
    80001454:	00008067          	ret
    if (n % 10 == 0) { TCB::yield(); }
    80001458:	00000097          	auipc	ra,0x0
    8000145c:	554080e7          	jalr	1364(ra) # 800019ac <_ZN3TCB5yieldEv>
    80001460:	fc1ff06f          	j	80001420 <_ZL9fibonaccim+0x30>

0000000080001464 <_Z11workerBodyAv>:
{
    80001464:	fe010113          	addi	sp,sp,-32
    80001468:	00113c23          	sd	ra,24(sp)
    8000146c:	00813823          	sd	s0,16(sp)
    80001470:	00913423          	sd	s1,8(sp)
    80001474:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    80001478:	00000493          	li	s1,0
    8000147c:	0300006f          	j	800014ac <_Z11workerBodyAv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    80001480:	00168693          	addi	a3,a3,1
    80001484:	000027b7          	lui	a5,0x2
    80001488:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000148c:	00d7ee63          	bltu	a5,a3,800014a8 <_Z11workerBodyAv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001490:	00000713          	li	a4,0
    80001494:	000077b7          	lui	a5,0x7
    80001498:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000149c:	fee7e2e3          	bltu	a5,a4,80001480 <_Z11workerBodyAv+0x1c>
    800014a0:	00170713          	addi	a4,a4,1
    800014a4:	ff1ff06f          	j	80001494 <_Z11workerBodyAv+0x30>
    for (uint64 i = 0; i < 10; i++)
    800014a8:	00148493          	addi	s1,s1,1
    800014ac:	00900793          	li	a5,9
    800014b0:	0297ec63          	bltu	a5,s1,800014e8 <_Z11workerBodyAv+0x84>
        printString("A: i=");
    800014b4:	00008517          	auipc	a0,0x8
    800014b8:	bdc50513          	addi	a0,a0,-1060 # 80009090 <CONSOLE_STATUS+0x80>
    800014bc:	00005097          	auipc	ra,0x5
    800014c0:	f6c080e7          	jalr	-148(ra) # 80006428 <_Z11printStringPKc>
        printInteger(i);
    800014c4:	00048513          	mv	a0,s1
    800014c8:	00005097          	auipc	ra,0x5
    800014cc:	fd0080e7          	jalr	-48(ra) # 80006498 <_Z12printIntegerm>
        printString("\n");
    800014d0:	00008517          	auipc	a0,0x8
    800014d4:	c5050513          	addi	a0,a0,-944 # 80009120 <CONSOLE_STATUS+0x110>
    800014d8:	00005097          	auipc	ra,0x5
    800014dc:	f50080e7          	jalr	-176(ra) # 80006428 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800014e0:	00000693          	li	a3,0
    800014e4:	fa1ff06f          	j	80001484 <_Z11workerBodyAv+0x20>
}
    800014e8:	01813083          	ld	ra,24(sp)
    800014ec:	01013403          	ld	s0,16(sp)
    800014f0:	00813483          	ld	s1,8(sp)
    800014f4:	02010113          	addi	sp,sp,32
    800014f8:	00008067          	ret

00000000800014fc <_Z11workerBodyBv>:
{
    800014fc:	fe010113          	addi	sp,sp,-32
    80001500:	00113c23          	sd	ra,24(sp)
    80001504:	00813823          	sd	s0,16(sp)
    80001508:	00913423          	sd	s1,8(sp)
    8000150c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    80001510:	00000493          	li	s1,0
    80001514:	0300006f          	j	80001544 <_Z11workerBodyBv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    80001518:	00168693          	addi	a3,a3,1
    8000151c:	000027b7          	lui	a5,0x2
    80001520:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001524:	00d7ee63          	bltu	a5,a3,80001540 <_Z11workerBodyBv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001528:	00000713          	li	a4,0
    8000152c:	000077b7          	lui	a5,0x7
    80001530:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001534:	fee7e2e3          	bltu	a5,a4,80001518 <_Z11workerBodyBv+0x1c>
    80001538:	00170713          	addi	a4,a4,1
    8000153c:	ff1ff06f          	j	8000152c <_Z11workerBodyBv+0x30>
    for (uint64 i = 0; i < 16; i++)
    80001540:	00148493          	addi	s1,s1,1
    80001544:	00f00793          	li	a5,15
    80001548:	0297ec63          	bltu	a5,s1,80001580 <_Z11workerBodyBv+0x84>
        printString("B: i=");
    8000154c:	00008517          	auipc	a0,0x8
    80001550:	b4c50513          	addi	a0,a0,-1204 # 80009098 <CONSOLE_STATUS+0x88>
    80001554:	00005097          	auipc	ra,0x5
    80001558:	ed4080e7          	jalr	-300(ra) # 80006428 <_Z11printStringPKc>
        printInteger(i);
    8000155c:	00048513          	mv	a0,s1
    80001560:	00005097          	auipc	ra,0x5
    80001564:	f38080e7          	jalr	-200(ra) # 80006498 <_Z12printIntegerm>
        printString("\n");
    80001568:	00008517          	auipc	a0,0x8
    8000156c:	bb850513          	addi	a0,a0,-1096 # 80009120 <CONSOLE_STATUS+0x110>
    80001570:	00005097          	auipc	ra,0x5
    80001574:	eb8080e7          	jalr	-328(ra) # 80006428 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001578:	00000693          	li	a3,0
    8000157c:	fa1ff06f          	j	8000151c <_Z11workerBodyBv+0x20>
}
    80001580:	01813083          	ld	ra,24(sp)
    80001584:	01013403          	ld	s0,16(sp)
    80001588:	00813483          	ld	s1,8(sp)
    8000158c:	02010113          	addi	sp,sp,32
    80001590:	00008067          	ret

0000000080001594 <_Z11workerBodyCv>:

void workerBodyC()
{
    80001594:	fe010113          	addi	sp,sp,-32
    80001598:	00113c23          	sd	ra,24(sp)
    8000159c:	00813823          	sd	s0,16(sp)
    800015a0:	00913423          	sd	s1,8(sp)
    800015a4:	01213023          	sd	s2,0(sp)
    800015a8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800015ac:	00000493          	li	s1,0
    800015b0:	0380006f          	j	800015e8 <_Z11workerBodyCv+0x54>
    for (; i < 3; i++)
    {
        printString("C: i=");
    800015b4:	00008517          	auipc	a0,0x8
    800015b8:	aec50513          	addi	a0,a0,-1300 # 800090a0 <CONSOLE_STATUS+0x90>
    800015bc:	00005097          	auipc	ra,0x5
    800015c0:	e6c080e7          	jalr	-404(ra) # 80006428 <_Z11printStringPKc>
        printInteger(i);
    800015c4:	00048513          	mv	a0,s1
    800015c8:	00005097          	auipc	ra,0x5
    800015cc:	ed0080e7          	jalr	-304(ra) # 80006498 <_Z12printIntegerm>
        printString("\n");
    800015d0:	00008517          	auipc	a0,0x8
    800015d4:	b5050513          	addi	a0,a0,-1200 # 80009120 <CONSOLE_STATUS+0x110>
    800015d8:	00005097          	auipc	ra,0x5
    800015dc:	e50080e7          	jalr	-432(ra) # 80006428 <_Z11printStringPKc>
    for (; i < 3; i++)
    800015e0:	0014849b          	addiw	s1,s1,1
    800015e4:	0ff4f493          	andi	s1,s1,255
    800015e8:	00200793          	li	a5,2
    800015ec:	fc97f4e3          	bgeu	a5,s1,800015b4 <_Z11workerBodyCv+0x20>
    }

    printString("C: yield\n");
    800015f0:	00008517          	auipc	a0,0x8
    800015f4:	ab850513          	addi	a0,a0,-1352 # 800090a8 <CONSOLE_STATUS+0x98>
    800015f8:	00005097          	auipc	ra,0x5
    800015fc:	e30080e7          	jalr	-464(ra) # 80006428 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001600:	00700313          	li	t1,7
    TCB::yield();
    80001604:	00000097          	auipc	ra,0x0
    80001608:	3a8080e7          	jalr	936(ra) # 800019ac <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000160c:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001610:	00008517          	auipc	a0,0x8
    80001614:	aa850513          	addi	a0,a0,-1368 # 800090b8 <CONSOLE_STATUS+0xa8>
    80001618:	00005097          	auipc	ra,0x5
    8000161c:	e10080e7          	jalr	-496(ra) # 80006428 <_Z11printStringPKc>
    printInteger(t1);
    80001620:	00090513          	mv	a0,s2
    80001624:	00005097          	auipc	ra,0x5
    80001628:	e74080e7          	jalr	-396(ra) # 80006498 <_Z12printIntegerm>
    printString("\n");
    8000162c:	00008517          	auipc	a0,0x8
    80001630:	af450513          	addi	a0,a0,-1292 # 80009120 <CONSOLE_STATUS+0x110>
    80001634:	00005097          	auipc	ra,0x5
    80001638:	df4080e7          	jalr	-524(ra) # 80006428 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    8000163c:	00c00513          	li	a0,12
    80001640:	00000097          	auipc	ra,0x0
    80001644:	db0080e7          	jalr	-592(ra) # 800013f0 <_ZL9fibonaccim>
    80001648:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    8000164c:	00008517          	auipc	a0,0x8
    80001650:	a7450513          	addi	a0,a0,-1420 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001654:	00005097          	auipc	ra,0x5
    80001658:	dd4080e7          	jalr	-556(ra) # 80006428 <_Z11printStringPKc>
    printInteger(result);
    8000165c:	00090513          	mv	a0,s2
    80001660:	00005097          	auipc	ra,0x5
    80001664:	e38080e7          	jalr	-456(ra) # 80006498 <_Z12printIntegerm>
    printString("\n");
    80001668:	00008517          	auipc	a0,0x8
    8000166c:	ab850513          	addi	a0,a0,-1352 # 80009120 <CONSOLE_STATUS+0x110>
    80001670:	00005097          	auipc	ra,0x5
    80001674:	db8080e7          	jalr	-584(ra) # 80006428 <_Z11printStringPKc>
    80001678:	0380006f          	j	800016b0 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    8000167c:	00008517          	auipc	a0,0x8
    80001680:	a2450513          	addi	a0,a0,-1500 # 800090a0 <CONSOLE_STATUS+0x90>
    80001684:	00005097          	auipc	ra,0x5
    80001688:	da4080e7          	jalr	-604(ra) # 80006428 <_Z11printStringPKc>
        printInteger(i);
    8000168c:	00048513          	mv	a0,s1
    80001690:	00005097          	auipc	ra,0x5
    80001694:	e08080e7          	jalr	-504(ra) # 80006498 <_Z12printIntegerm>
        printString("\n");
    80001698:	00008517          	auipc	a0,0x8
    8000169c:	a8850513          	addi	a0,a0,-1400 # 80009120 <CONSOLE_STATUS+0x110>
    800016a0:	00005097          	auipc	ra,0x5
    800016a4:	d88080e7          	jalr	-632(ra) # 80006428 <_Z11printStringPKc>
    for (; i < 6; i++)
    800016a8:	0014849b          	addiw	s1,s1,1
    800016ac:	0ff4f493          	andi	s1,s1,255
    800016b0:	00500793          	li	a5,5
    800016b4:	fc97f4e3          	bgeu	a5,s1,8000167c <_Z11workerBodyCv+0xe8>
    }
//    TCB::yield();
}
    800016b8:	01813083          	ld	ra,24(sp)
    800016bc:	01013403          	ld	s0,16(sp)
    800016c0:	00813483          	ld	s1,8(sp)
    800016c4:	00013903          	ld	s2,0(sp)
    800016c8:	02010113          	addi	sp,sp,32
    800016cc:	00008067          	ret

00000000800016d0 <_Z11workerBodyDv>:

void workerBodyD()
{
    800016d0:	fe010113          	addi	sp,sp,-32
    800016d4:	00113c23          	sd	ra,24(sp)
    800016d8:	00813823          	sd	s0,16(sp)
    800016dc:	00913423          	sd	s1,8(sp)
    800016e0:	01213023          	sd	s2,0(sp)
    800016e4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800016e8:	00a00493          	li	s1,10
    800016ec:	0380006f          	j	80001724 <_Z11workerBodyDv+0x54>
    for (; i < 13; i++)
    {
        printString("D: i=");
    800016f0:	00008517          	auipc	a0,0x8
    800016f4:	9e050513          	addi	a0,a0,-1568 # 800090d0 <CONSOLE_STATUS+0xc0>
    800016f8:	00005097          	auipc	ra,0x5
    800016fc:	d30080e7          	jalr	-720(ra) # 80006428 <_Z11printStringPKc>
        printInteger(i);
    80001700:	00048513          	mv	a0,s1
    80001704:	00005097          	auipc	ra,0x5
    80001708:	d94080e7          	jalr	-620(ra) # 80006498 <_Z12printIntegerm>
        printString("\n");
    8000170c:	00008517          	auipc	a0,0x8
    80001710:	a1450513          	addi	a0,a0,-1516 # 80009120 <CONSOLE_STATUS+0x110>
    80001714:	00005097          	auipc	ra,0x5
    80001718:	d14080e7          	jalr	-748(ra) # 80006428 <_Z11printStringPKc>
    for (; i < 13; i++)
    8000171c:	0014849b          	addiw	s1,s1,1
    80001720:	0ff4f493          	andi	s1,s1,255
    80001724:	00c00793          	li	a5,12
    80001728:	fc97f4e3          	bgeu	a5,s1,800016f0 <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    8000172c:	00008517          	auipc	a0,0x8
    80001730:	9ac50513          	addi	a0,a0,-1620 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001734:	00005097          	auipc	ra,0x5
    80001738:	cf4080e7          	jalr	-780(ra) # 80006428 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000173c:	00500313          	li	t1,5
    TCB::yield();
    80001740:	00000097          	auipc	ra,0x0
    80001744:	26c080e7          	jalr	620(ra) # 800019ac <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    80001748:	01000513          	li	a0,16
    8000174c:	00000097          	auipc	ra,0x0
    80001750:	ca4080e7          	jalr	-860(ra) # 800013f0 <_ZL9fibonaccim>
    80001754:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001758:	00008517          	auipc	a0,0x8
    8000175c:	99050513          	addi	a0,a0,-1648 # 800090e8 <CONSOLE_STATUS+0xd8>
    80001760:	00005097          	auipc	ra,0x5
    80001764:	cc8080e7          	jalr	-824(ra) # 80006428 <_Z11printStringPKc>
    printInteger(result);
    80001768:	00090513          	mv	a0,s2
    8000176c:	00005097          	auipc	ra,0x5
    80001770:	d2c080e7          	jalr	-724(ra) # 80006498 <_Z12printIntegerm>
    printString("\n");
    80001774:	00008517          	auipc	a0,0x8
    80001778:	9ac50513          	addi	a0,a0,-1620 # 80009120 <CONSOLE_STATUS+0x110>
    8000177c:	00005097          	auipc	ra,0x5
    80001780:	cac080e7          	jalr	-852(ra) # 80006428 <_Z11printStringPKc>
    80001784:	0380006f          	j	800017bc <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    80001788:	00008517          	auipc	a0,0x8
    8000178c:	94850513          	addi	a0,a0,-1720 # 800090d0 <CONSOLE_STATUS+0xc0>
    80001790:	00005097          	auipc	ra,0x5
    80001794:	c98080e7          	jalr	-872(ra) # 80006428 <_Z11printStringPKc>
        printInteger(i);
    80001798:	00048513          	mv	a0,s1
    8000179c:	00005097          	auipc	ra,0x5
    800017a0:	cfc080e7          	jalr	-772(ra) # 80006498 <_Z12printIntegerm>
        printString("\n");
    800017a4:	00008517          	auipc	a0,0x8
    800017a8:	97c50513          	addi	a0,a0,-1668 # 80009120 <CONSOLE_STATUS+0x110>
    800017ac:	00005097          	auipc	ra,0x5
    800017b0:	c7c080e7          	jalr	-900(ra) # 80006428 <_Z11printStringPKc>
    for (; i < 16; i++)
    800017b4:	0014849b          	addiw	s1,s1,1
    800017b8:	0ff4f493          	andi	s1,s1,255
    800017bc:	00f00793          	li	a5,15
    800017c0:	fc97f4e3          	bgeu	a5,s1,80001788 <_Z11workerBodyDv+0xb8>
    }
//    TCB::yield();
    800017c4:	01813083          	ld	ra,24(sp)
    800017c8:	01013403          	ld	s0,16(sp)
    800017cc:	00813483          	ld	s1,8(sp)
    800017d0:	00013903          	ld	s2,0(sp)
    800017d4:	02010113          	addi	sp,sp,32
    800017d8:	00008067          	ret

00000000800017dc <main>:

// tests delete this before submition !!!!!!!!!!!
#include "../h/memoryAllocatorTest.hpp"
#include "../h/kObjectAllocatorTest.hpp"

int main() {
    800017dc:	fd010113          	addi	sp,sp,-48
    800017e0:	02113423          	sd	ra,40(sp)
    800017e4:	02813023          	sd	s0,32(sp)
    800017e8:	00913c23          	sd	s1,24(sp)
    800017ec:	03010413          	addi	s0,sp,48
    printString("\nx= ");
    printInteger(x);
    printString("\n");
    __asm__ volatile ("ecall");*/

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800017f0:	00009797          	auipc	a5,0x9
    800017f4:	ee07b783          	ld	a5,-288(a5) # 8000a6d0 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800017f8:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800017fc:	00200793          	li	a5,2
    80001800:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    //Riscv::popSppSpie();
    printString("\nHello there\n");
    80001804:	00008517          	auipc	a0,0x8
    80001808:	8f450513          	addi	a0,a0,-1804 # 800090f8 <CONSOLE_STATUS+0xe8>
    8000180c:	00005097          	auipc	ra,0x5
    80001810:	c1c080e7          	jalr	-996(ra) # 80006428 <_Z11printStringPKc>
    mem_alloc(12);
    80001814:	00c00513          	li	a0,12
    80001818:	00000097          	auipc	ra,0x0
    8000181c:	90c080e7          	jalr	-1780(ra) # 80001124 <_Z9mem_allocm>


    printString("\nKObjectAllocator tests:\n");
    80001820:	00008517          	auipc	a0,0x8
    80001824:	8e850513          	addi	a0,a0,-1816 # 80009108 <CONSOLE_STATUS+0xf8>
    80001828:	00005097          	auipc	ra,0x5
    8000182c:	c00080e7          	jalr	-1024(ra) # 80006428 <_Z11printStringPKc>

class KObjectAllocatorTest {
public:
    KObjectAllocatorTest() {}
    void* operator new(size_t size) {
        return MemoryAllocator::instance()->kmem_alloc(size);
    80001830:	00000097          	auipc	ra,0x0
    80001834:	350080e7          	jalr	848(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80001838:	04000593          	li	a1,64
    8000183c:	00000097          	auipc	ra,0x0
    80001840:	428080e7          	jalr	1064(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80001844:	00050493          	mv	s1,a0
    KObjectAllocatorTest() {}
    80001848:	00400793          	li	a5,4
    8000184c:	00f53023          	sd	a5,0(a0)
    80001850:	00008797          	auipc	a5,0x8
    80001854:	8e878793          	addi	a5,a5,-1816 # 80009138 <CONSOLE_STATUS+0x128>
    80001858:	0007b883          	ld	a7,0(a5)
    8000185c:	0087b803          	ld	a6,8(a5)
    80001860:	0107b583          	ld	a1,16(a5)
    80001864:	0187b603          	ld	a2,24(a5)
    80001868:	0207b683          	ld	a3,32(a5)
    8000186c:	0287b703          	ld	a4,40(a5)
    80001870:	0307b783          	ld	a5,48(a5)
    80001874:	01153423          	sd	a7,8(a0)
    80001878:	01053823          	sd	a6,16(a0)
    8000187c:	00b53c23          	sd	a1,24(a0)
    80001880:	02c53023          	sd	a2,32(a0)
    80001884:	02d53423          	sd	a3,40(a0)
    80001888:	02e53823          	sd	a4,48(a0)
    8000188c:	02f53c23          	sd	a5,56(a0)
    KObjectAllocatorTest* t2 = new KObjectAllocatorTest;
    t2->runTests();
    80001890:	00004097          	auipc	ra,0x4
    80001894:	058080e7          	jalr	88(ra) # 800058e8 <_ZN20KObjectAllocatorTest8runTestsEv>
    delete t2;
    80001898:	00048c63          	beqz	s1,800018b0 <main+0xd4>
    }
    void operator delete(void* p) {
        MemoryAllocator::instance()->kmem_free(p);
    8000189c:	00000097          	auipc	ra,0x0
    800018a0:	2e4080e7          	jalr	740(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800018a4:	00048593          	mv	a1,s1
    800018a8:	00000097          	auipc	ra,0x0
    800018ac:	464080e7          	jalr	1124(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>

    printString("\nMemory tests:\n");
    800018b0:	00008517          	auipc	a0,0x8
    800018b4:	87850513          	addi	a0,a0,-1928 # 80009128 <CONSOLE_STATUS+0x118>
    800018b8:	00005097          	auipc	ra,0x5
    800018bc:	b70080e7          	jalr	-1168(ra) # 80006428 <_Z11printStringPKc>
    MemoryAllocatorTest t1;
    t1.runTests();
    800018c0:	fd840513          	addi	a0,s0,-40
    800018c4:	00001097          	auipc	ra,0x1
    800018c8:	584080e7          	jalr	1412(ra) # 80002e48 <_ZN19MemoryAllocatorTest8runTestsEv>


    return 0;
    800018cc:	00000513          	li	a0,0
    800018d0:	02813083          	ld	ra,40(sp)
    800018d4:	02013403          	ld	s0,32(sp)
    800018d8:	01813483          	ld	s1,24(sp)
    800018dc:	03010113          	addi	sp,sp,48
    800018e0:	00008067          	ret

00000000800018e4 <_ZN3TCB12createThreadEPFvvE>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    800018e4:	fe010113          	addi	sp,sp,-32
    800018e8:	00113c23          	sd	ra,24(sp)
    800018ec:	00813823          	sd	s0,16(sp)
    800018f0:	00913423          	sd	s1,8(sp)
    800018f4:	01213023          	sd	s2,0(sp)
    800018f8:	02010413          	addi	s0,sp,32
    800018fc:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    80001900:	03000513          	li	a0,48
    80001904:	00001097          	auipc	ra,0x1
    80001908:	764080e7          	jalr	1892(ra) # 80003068 <_Znwm>
    8000190c:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    80001910:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001914:	00090a63          	beqz	s2,80001928 <_ZN3TCB12createThreadEPFvvE+0x44>
    80001918:	00002537          	lui	a0,0x2
    8000191c:	00001097          	auipc	ra,0x1
    80001920:	774080e7          	jalr	1908(ra) # 80003090 <_Znam>
    80001924:	0080006f          	j	8000192c <_ZN3TCB12createThreadEPFvvE+0x48>
    80001928:	00000513          	li	a0,0
            finished(false)
    8000192c:	00a4b423          	sd	a0,8(s1)
    80001930:	00000797          	auipc	a5,0x0
    80001934:	09878793          	addi	a5,a5,152 # 800019c8 <_ZN3TCB13threadWrapperEv>
    80001938:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    8000193c:	02050863          	beqz	a0,8000196c <_ZN3TCB12createThreadEPFvvE+0x88>
    80001940:	000027b7          	lui	a5,0x2
    80001944:	00f507b3          	add	a5,a0,a5
            finished(false)
    80001948:	00f4bc23          	sd	a5,24(s1)
    8000194c:	00200793          	li	a5,2
    80001950:	02f4b023          	sd	a5,32(s1)
    80001954:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001958:	02090c63          	beqz	s2,80001990 <_ZN3TCB12createThreadEPFvvE+0xac>
    8000195c:	00048513          	mv	a0,s1
    80001960:	00005097          	auipc	ra,0x5
    80001964:	a28080e7          	jalr	-1496(ra) # 80006388 <_ZN9Scheduler3putEP3TCB>
    80001968:	0280006f          	j	80001990 <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    8000196c:	00000793          	li	a5,0
    80001970:	fd9ff06f          	j	80001948 <_ZN3TCB12createThreadEPFvvE+0x64>
    80001974:	00050913          	mv	s2,a0
    80001978:	00048513          	mv	a0,s1
    8000197c:	00001097          	auipc	ra,0x1
    80001980:	73c080e7          	jalr	1852(ra) # 800030b8 <_ZdlPv>
    80001984:	00090513          	mv	a0,s2
    80001988:	0000a097          	auipc	ra,0xa
    8000198c:	ef0080e7          	jalr	-272(ra) # 8000b878 <_Unwind_Resume>
}
    80001990:	00048513          	mv	a0,s1
    80001994:	01813083          	ld	ra,24(sp)
    80001998:	01013403          	ld	s0,16(sp)
    8000199c:	00813483          	ld	s1,8(sp)
    800019a0:	00013903          	ld	s2,0(sp)
    800019a4:	02010113          	addi	sp,sp,32
    800019a8:	00008067          	ret

00000000800019ac <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    800019ac:	ff010113          	addi	sp,sp,-16
    800019b0:	00813423          	sd	s0,8(sp)
    800019b4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    800019b8:	00000073          	ecall
}
    800019bc:	00813403          	ld	s0,8(sp)
    800019c0:	01010113          	addi	sp,sp,16
    800019c4:	00008067          	ret

00000000800019c8 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    800019c8:	fe010113          	addi	sp,sp,-32
    800019cc:	00113c23          	sd	ra,24(sp)
    800019d0:	00813823          	sd	s0,16(sp)
    800019d4:	00913423          	sd	s1,8(sp)
    800019d8:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    800019dc:	00004097          	auipc	ra,0x4
    800019e0:	76c080e7          	jalr	1900(ra) # 80006148 <_ZN5Riscv10popSppSpieEv>
    running->body();
    800019e4:	00009497          	auipc	s1,0x9
    800019e8:	d8c48493          	addi	s1,s1,-628 # 8000a770 <_ZN3TCB7runningE>
    800019ec:	0004b783          	ld	a5,0(s1)
    800019f0:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    800019f4:	000780e7          	jalr	a5
    running->setFinished(true);
    800019f8:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    800019fc:	00100713          	li	a4,1
    80001a00:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	fa8080e7          	jalr	-88(ra) # 800019ac <_ZN3TCB5yieldEv>
}
    80001a0c:	01813083          	ld	ra,24(sp)
    80001a10:	01013403          	ld	s0,16(sp)
    80001a14:	00813483          	ld	s1,8(sp)
    80001a18:	02010113          	addi	sp,sp,32
    80001a1c:	00008067          	ret

0000000080001a20 <_ZN3TCB8dispatchEv>:
{
    80001a20:	fe010113          	addi	sp,sp,-32
    80001a24:	00113c23          	sd	ra,24(sp)
    80001a28:	00813823          	sd	s0,16(sp)
    80001a2c:	00913423          	sd	s1,8(sp)
    80001a30:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001a34:	00009497          	auipc	s1,0x9
    80001a38:	d3c4b483          	ld	s1,-708(s1) # 8000a770 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001a3c:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001a40:	02078c63          	beqz	a5,80001a78 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001a44:	00005097          	auipc	ra,0x5
    80001a48:	8dc080e7          	jalr	-1828(ra) # 80006320 <_ZN9Scheduler3getEv>
    80001a4c:	00009797          	auipc	a5,0x9
    80001a50:	d2a7b223          	sd	a0,-732(a5) # 8000a770 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001a54:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001a58:	01048513          	addi	a0,s1,16
    80001a5c:	fffff097          	auipc	ra,0xfffff
    80001a60:	6b4080e7          	jalr	1716(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001a64:	01813083          	ld	ra,24(sp)
    80001a68:	01013403          	ld	s0,16(sp)
    80001a6c:	00813483          	ld	s1,8(sp)
    80001a70:	02010113          	addi	sp,sp,32
    80001a74:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001a78:	00048513          	mv	a0,s1
    80001a7c:	00005097          	auipc	ra,0x5
    80001a80:	90c080e7          	jalr	-1780(ra) # 80006388 <_ZN9Scheduler3putEP3TCB>
    80001a84:	fc1ff06f          	j	80001a44 <_ZN3TCB8dispatchEv+0x24>

0000000080001a88 <_ZN15MemoryAllocator17getMinBlockNumberEm>:
    newMemoryAllocator->freeMemoryHead->next = nullptr;

    return newMemoryAllocator;
}

size_t MemoryAllocator::getMinBlockNumber(size_t size) {
    80001a88:	ff010113          	addi	sp,sp,-16
    80001a8c:	00813423          	sd	s0,8(sp)
    80001a90:	01010413          	addi	s0,sp,16
    size_t blockNo = size / MEM_BLOCK_SIZE;
    80001a94:	00655713          	srli	a4,a0,0x6
    blockNo = blockNo + (size - blockNo * MEM_BLOCK_SIZE != 0);
    80001a98:	fc057793          	andi	a5,a0,-64
    80001a9c:	40a78533          	sub	a0,a5,a0
    80001aa0:	00a03533          	snez	a0,a0
    return blockNo;
}
    80001aa4:	00e50533          	add	a0,a0,a4
    80001aa8:	00813403          	ld	s0,8(sp)
    80001aac:	01010113          	addi	sp,sp,16
    80001ab0:	00008067          	ret

0000000080001ab4 <_ZN15MemoryAllocator14createInstanceEv>:
MemoryAllocator* MemoryAllocator::createInstance() {
    80001ab4:	fd010113          	addi	sp,sp,-48
    80001ab8:	02113423          	sd	ra,40(sp)
    80001abc:	02813023          	sd	s0,32(sp)
    80001ac0:	00913c23          	sd	s1,24(sp)
    80001ac4:	01213823          	sd	s2,16(sp)
    80001ac8:	01313423          	sd	s3,8(sp)
    80001acc:	01413023          	sd	s4,0(sp)
    80001ad0:	03010413          	addi	s0,sp,48
    managedMemorySpaceStart = (uint8*) HEAP_START_ADDR;
    80001ad4:	00009797          	auipc	a5,0x9
    80001ad8:	bec7b783          	ld	a5,-1044(a5) # 8000a6c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001adc:	0007b903          	ld	s2,0(a5)
    managedMemorySpaceEnd = (uint8*) HEAP_END_ADDR;
    80001ae0:	00009797          	auipc	a5,0x9
    80001ae4:	c287b783          	ld	a5,-984(a5) # 8000a708 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001ae8:	0007b483          	ld	s1,0(a5)
    80001aec:	00009a17          	auipc	s4,0x9
    80001af0:	c94a0a13          	addi	s4,s4,-876 # 8000a780 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    80001af4:	009a3023          	sd	s1,0(s4)
    minMemoryFragmentSize = getMinBlockNumber(sizeof(SegmentDescriptor)) + getMinBlockNumber(sizeof(uint64));
    80001af8:	01000513          	li	a0,16
    80001afc:	00000097          	auipc	ra,0x0
    80001b00:	f8c080e7          	jalr	-116(ra) # 80001a88 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001b04:	00050993          	mv	s3,a0
    80001b08:	00800513          	li	a0,8
    80001b0c:	00000097          	auipc	ra,0x0
    80001b10:	f7c080e7          	jalr	-132(ra) # 80001a88 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001b14:	00a989b3          	add	s3,s3,a0
    80001b18:	013a3423          	sd	s3,8(s4)
    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
    80001b1c:	02000513          	li	a0,32
    80001b20:	00000097          	auipc	ra,0x0
    80001b24:	f68080e7          	jalr	-152(ra) # 80001a88 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    managedMemorySpaceStart += noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE;
    80001b28:	00651513          	slli	a0,a0,0x6
    80001b2c:	00a90533          	add	a0,s2,a0
    80001b30:	00aa3823          	sd	a0,16(s4)
    newMemoryAllocator->totalTaken = 0;
    80001b34:	00093423          	sd	zero,8(s2)
    newMemoryAllocator->totalFree = (size_t) (managedMemorySpaceEnd - managedMemorySpaceStart);
    80001b38:	40a484b3          	sub	s1,s1,a0
    80001b3c:	00993023          	sd	s1,0(s2)
    newMemoryAllocator->freeBlockNo = newMemoryAllocator->totalFree / MEM_BLOCK_SIZE;
    80001b40:	0064d493          	srli	s1,s1,0x6
    80001b44:	00993823          	sd	s1,16(s2)
    newMemoryAllocator->freeMemoryHead = (SegmentDescriptor*) managedMemorySpaceStart;
    80001b48:	010a3783          	ld	a5,16(s4)
    80001b4c:	00f93c23          	sd	a5,24(s2)
    newMemoryAllocator->freeMemoryHead->noBlocks = newMemoryAllocator->freeBlockNo;
    80001b50:	0097b023          	sd	s1,0(a5)
    newMemoryAllocator->freeMemoryHead->next = nullptr;
    80001b54:	01893783          	ld	a5,24(s2)
    80001b58:	0007b423          	sd	zero,8(a5)
}
    80001b5c:	00090513          	mv	a0,s2
    80001b60:	02813083          	ld	ra,40(sp)
    80001b64:	02013403          	ld	s0,32(sp)
    80001b68:	01813483          	ld	s1,24(sp)
    80001b6c:	01013903          	ld	s2,16(sp)
    80001b70:	00813983          	ld	s3,8(sp)
    80001b74:	00013a03          	ld	s4,0(sp)
    80001b78:	03010113          	addi	sp,sp,48
    80001b7c:	00008067          	ret

0000000080001b80 <_ZN15MemoryAllocator8instanceEv>:
    if (onlyInstance == nullptr)
    80001b80:	00009797          	auipc	a5,0x9
    80001b84:	c187b783          	ld	a5,-1000(a5) # 8000a798 <_ZN15MemoryAllocator12onlyInstanceE>
    80001b88:	00078863          	beqz	a5,80001b98 <_ZN15MemoryAllocator8instanceEv+0x18>
}
    80001b8c:	00009517          	auipc	a0,0x9
    80001b90:	c0c53503          	ld	a0,-1012(a0) # 8000a798 <_ZN15MemoryAllocator12onlyInstanceE>
    80001b94:	00008067          	ret
MemoryAllocator* MemoryAllocator::instance() {
    80001b98:	ff010113          	addi	sp,sp,-16
    80001b9c:	00113423          	sd	ra,8(sp)
    80001ba0:	00813023          	sd	s0,0(sp)
    80001ba4:	01010413          	addi	s0,sp,16
        onlyInstance = createInstance();
    80001ba8:	00000097          	auipc	ra,0x0
    80001bac:	f0c080e7          	jalr	-244(ra) # 80001ab4 <_ZN15MemoryAllocator14createInstanceEv>
    80001bb0:	00009797          	auipc	a5,0x9
    80001bb4:	bea7b423          	sd	a0,-1048(a5) # 8000a798 <_ZN15MemoryAllocator12onlyInstanceE>
}
    80001bb8:	00009517          	auipc	a0,0x9
    80001bbc:	be053503          	ld	a0,-1056(a0) # 8000a798 <_ZN15MemoryAllocator12onlyInstanceE>
    80001bc0:	00813083          	ld	ra,8(sp)
    80001bc4:	00013403          	ld	s0,0(sp)
    80001bc8:	01010113          	addi	sp,sp,16
    80001bcc:	00008067          	ret

0000000080001bd0 <_ZN15MemoryAllocator8firstFitEm>:


MemoryAllocator::SegmentDescriptor* MemoryAllocator::firstFit(size_t blockNo) {
    80001bd0:	ff010113          	addi	sp,sp,-16
    80001bd4:	00813423          	sd	s0,8(sp)
    80001bd8:	01010413          	addi	s0,sp,16
    80001bdc:	00050693          	mv	a3,a0
    SegmentDescriptor* largeEnoughSegment = freeMemoryHead;
    80001be0:	01853503          	ld	a0,24(a0)
    SegmentDescriptor* prevSegment = nullptr;
    80001be4:	00000713          	li	a4,0
    while (largeEnoughSegment && largeEnoughSegment->noBlocks < blockNo) {
    80001be8:	00050c63          	beqz	a0,80001c00 <_ZN15MemoryAllocator8firstFitEm+0x30>
    80001bec:	00053783          	ld	a5,0(a0)
    80001bf0:	00b7f863          	bgeu	a5,a1,80001c00 <_ZN15MemoryAllocator8firstFitEm+0x30>
        prevSegment = largeEnoughSegment;
    80001bf4:	00050713          	mv	a4,a0
        largeEnoughSegment = largeEnoughSegment->next;
    80001bf8:	00853503          	ld	a0,8(a0)
    while (largeEnoughSegment && largeEnoughSegment->noBlocks < blockNo) {
    80001bfc:	fedff06f          	j	80001be8 <_ZN15MemoryAllocator8firstFitEm+0x18>
    }
    if (!largeEnoughSegment) return nullptr;
    80001c00:	04050663          	beqz	a0,80001c4c <_ZN15MemoryAllocator8firstFitEm+0x7c>

    if (largeEnoughSegment->noBlocks - blockNo >= minMemoryFragmentSize) {
    80001c04:	00053783          	ld	a5,0(a0)
    80001c08:	40b787b3          	sub	a5,a5,a1
    80001c0c:	00009617          	auipc	a2,0x9
    80001c10:	b7c63603          	ld	a2,-1156(a2) # 8000a788 <_ZN15MemoryAllocator21minMemoryFragmentSizeE>
    80001c14:	02c7e063          	bltu	a5,a2,80001c34 <_ZN15MemoryAllocator8firstFitEm+0x64>
        SegmentDescriptor* newSegment = (SegmentDescriptor*) ((uint8*) largeEnoughSegment + blockNo * MEM_BLOCK_SIZE);
    80001c18:	00659613          	slli	a2,a1,0x6
    80001c1c:	00c50633          	add	a2,a0,a2
        newSegment->noBlocks = largeEnoughSegment->noBlocks - blockNo;
    80001c20:	00f63023          	sd	a5,0(a2)
        newSegment->next = largeEnoughSegment->next;
    80001c24:	00853783          	ld	a5,8(a0)
    80001c28:	00f63423          	sd	a5,8(a2)
        largeEnoughSegment->next = newSegment;
    80001c2c:	00c53423          	sd	a2,8(a0)
        largeEnoughSegment->noBlocks = blockNo;
    80001c30:	00b53023          	sd	a1,0(a0)
    }

    if (prevSegment) prevSegment->next = largeEnoughSegment->next;
    80001c34:	00070663          	beqz	a4,80001c40 <_ZN15MemoryAllocator8firstFitEm+0x70>
    80001c38:	00853783          	ld	a5,8(a0)
    80001c3c:	00f73423          	sd	a5,8(a4)
    if (freeMemoryHead == largeEnoughSegment)
    80001c40:	0186b783          	ld	a5,24(a3)
    80001c44:	00a78a63          	beq	a5,a0,80001c58 <_ZN15MemoryAllocator8firstFitEm+0x88>
        freeMemoryHead = largeEnoughSegment->next;

    largeEnoughSegment->next = nullptr;
    80001c48:	00053423          	sd	zero,8(a0)
    return largeEnoughSegment;
}
    80001c4c:	00813403          	ld	s0,8(sp)
    80001c50:	01010113          	addi	sp,sp,16
    80001c54:	00008067          	ret
        freeMemoryHead = largeEnoughSegment->next;
    80001c58:	00853783          	ld	a5,8(a0)
    80001c5c:	00f6bc23          	sd	a5,24(a3)
    80001c60:	fe9ff06f          	j	80001c48 <_ZN15MemoryAllocator8firstFitEm+0x78>

0000000080001c64 <_ZN15MemoryAllocator10kmem_allocEm>:

void* MemoryAllocator::kmem_alloc(size_t size) {
    80001c64:	fe010113          	addi	sp,sp,-32
    80001c68:	00113c23          	sd	ra,24(sp)
    80001c6c:	00813823          	sd	s0,16(sp)
    80001c70:	00913423          	sd	s1,8(sp)
    80001c74:	01213023          	sd	s2,0(sp)
    80001c78:	02010413          	addi	s0,sp,32
    80001c7c:	00050493          	mv	s1,a0
    80001c80:	00058913          	mv	s2,a1
    size_t minBlockNo = getMinBlockNumber(size);
    80001c84:	00058513          	mv	a0,a1
    80001c88:	00000097          	auipc	ra,0x0
    80001c8c:	e00080e7          	jalr	-512(ra) # 80001a88 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001c90:	00050593          	mv	a1,a0
    if (minBlockNo * MEM_BLOCK_SIZE - size < sizeof(SegmentDescriptor)) ++minBlockNo;
    80001c94:	00651793          	slli	a5,a0,0x6
    80001c98:	41278933          	sub	s2,a5,s2
    80001c9c:	00f00793          	li	a5,15
    80001ca0:	0127e463          	bltu	a5,s2,80001ca8 <_ZN15MemoryAllocator10kmem_allocEm+0x44>
    80001ca4:	00150593          	addi	a1,a0,1
    SegmentDescriptor* newTaken = firstFit(minBlockNo);
    80001ca8:	00048513          	mv	a0,s1
    80001cac:	00000097          	auipc	ra,0x0
    80001cb0:	f24080e7          	jalr	-220(ra) # 80001bd0 <_ZN15MemoryAllocator8firstFitEm>
    if (!newTaken) return nullptr;
    80001cb4:	04050063          	beqz	a0,80001cf4 <_ZN15MemoryAllocator10kmem_allocEm+0x90>

    freeBlockNo -= newTaken->noBlocks;
    80001cb8:	00053703          	ld	a4,0(a0)
    80001cbc:	0104b783          	ld	a5,16(s1)
    80001cc0:	40e787b3          	sub	a5,a5,a4
    80001cc4:	00f4b823          	sd	a5,16(s1)
    totalFree -= newTaken->noBlocks * MEM_BLOCK_SIZE;
    80001cc8:	00053783          	ld	a5,0(a0)
    80001ccc:	00679713          	slli	a4,a5,0x6
    80001cd0:	0004b783          	ld	a5,0(s1)
    80001cd4:	40e787b3          	sub	a5,a5,a4
    80001cd8:	00f4b023          	sd	a5,0(s1)
    totalTaken += newTaken->noBlocks * MEM_BLOCK_SIZE;
    80001cdc:	00053783          	ld	a5,0(a0)
    80001ce0:	00679713          	slli	a4,a5,0x6
    80001ce4:	0084b783          	ld	a5,8(s1)
    80001ce8:	00e787b3          	add	a5,a5,a4
    80001cec:	00f4b423          	sd	a5,8(s1)

    return (uint8*) newTaken + sizeof(SegmentDescriptor);
    80001cf0:	01050513          	addi	a0,a0,16
}
    80001cf4:	01813083          	ld	ra,24(sp)
    80001cf8:	01013403          	ld	s0,16(sp)
    80001cfc:	00813483          	ld	s1,8(sp)
    80001d00:	00013903          	ld	s2,0(sp)
    80001d04:	02010113          	addi	sp,sp,32
    80001d08:	00008067          	ret

0000000080001d0c <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* newFree) {
    80001d0c:	ff010113          	addi	sp,sp,-16
    80001d10:	00813423          	sd	s0,8(sp)
    80001d14:	01010413          	addi	s0,sp,16
    if (newFree == nullptr) return 0;
    80001d18:	08058863          	beqz	a1,80001da8 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>
    SegmentDescriptor* newFreeSegment = (SegmentDescriptor*) ((uint8*) newFree - sizeof(SegmentDescriptor));
    80001d1c:	ff058693          	addi	a3,a1,-16
    freeBlockNo += newFreeSegment->noBlocks;
    80001d20:	ff05b703          	ld	a4,-16(a1)
    80001d24:	01053783          	ld	a5,16(a0)
    80001d28:	00e787b3          	add	a5,a5,a4
    80001d2c:	00f53823          	sd	a5,16(a0)
    totalFree += newFreeSegment->noBlocks * MEM_BLOCK_SIZE;
    80001d30:	ff05b783          	ld	a5,-16(a1)
    80001d34:	00679713          	slli	a4,a5,0x6
    80001d38:	00053783          	ld	a5,0(a0)
    80001d3c:	00e787b3          	add	a5,a5,a4
    80001d40:	00f53023          	sd	a5,0(a0)
    totalTaken -= newFreeSegment->noBlocks * MEM_BLOCK_SIZE;
    80001d44:	ff05b783          	ld	a5,-16(a1)
    80001d48:	00679713          	slli	a4,a5,0x6
    80001d4c:	00853783          	ld	a5,8(a0)
    80001d50:	40e787b3          	sub	a5,a5,a4
    80001d54:	00f53423          	sd	a5,8(a0)

    SegmentDescriptor* after = freeMemoryHead, *prev = nullptr;
    80001d58:	01853783          	ld	a5,24(a0)
    80001d5c:	00000713          	li	a4,0
    while (after && after < newFreeSegment) {
    80001d60:	00078a63          	beqz	a5,80001d74 <_ZN15MemoryAllocator9kmem_freeEPv+0x68>
    80001d64:	00d7f863          	bgeu	a5,a3,80001d74 <_ZN15MemoryAllocator9kmem_freeEPv+0x68>
        prev = after; after = after->next; }
    80001d68:	00078713          	mv	a4,a5
    80001d6c:	0087b783          	ld	a5,8(a5)
    while (after && after < newFreeSegment) {
    80001d70:	ff1ff06f          	j	80001d60 <_ZN15MemoryAllocator9kmem_freeEPv+0x54>

    newFreeSegment->next = after;
    80001d74:	fef5bc23          	sd	a5,-8(a1)
    if (prev) prev->next = newFreeSegment;
    80001d78:	04070063          	beqz	a4,80001db8 <_ZN15MemoryAllocator9kmem_freeEPv+0xac>
    80001d7c:	00d73423          	sd	a3,8(a4)
    else freeMemoryHead = newFreeSegment;

    if (prev && (uint8*) prev + prev->noBlocks * MEM_BLOCK_SIZE == (uint8*) newFreeSegment) {
    80001d80:	00070a63          	beqz	a4,80001d94 <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
    80001d84:	00073503          	ld	a0,0(a4)
    80001d88:	00651613          	slli	a2,a0,0x6
    80001d8c:	00c70633          	add	a2,a4,a2
    80001d90:	02d60863          	beq	a2,a3,80001dc0 <_ZN15MemoryAllocator9kmem_freeEPv+0xb4>
        prev->next = newFreeSegment->next;
        prev->noBlocks += newFreeSegment->noBlocks;
        newFreeSegment = prev;
    }

    if (after && (uint8*) newFreeSegment + newFreeSegment->noBlocks * MEM_BLOCK_SIZE == (uint8*) after) {
    80001d94:	00078a63          	beqz	a5,80001da8 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>
    80001d98:	0006b603          	ld	a2,0(a3)
    80001d9c:	00661713          	slli	a4,a2,0x6
    80001da0:	00e68733          	add	a4,a3,a4
    80001da4:	02f70c63          	beq	a4,a5,80001ddc <_ZN15MemoryAllocator9kmem_freeEPv+0xd0>
        newFreeSegment->next = after->next; newFreeSegment->noBlocks += after->noBlocks; }

    return 0;
}
    80001da8:	00000513          	li	a0,0
    80001dac:	00813403          	ld	s0,8(sp)
    80001db0:	01010113          	addi	sp,sp,16
    80001db4:	00008067          	ret
    else freeMemoryHead = newFreeSegment;
    80001db8:	00d53c23          	sd	a3,24(a0)
    80001dbc:	fc5ff06f          	j	80001d80 <_ZN15MemoryAllocator9kmem_freeEPv+0x74>
        prev->next = newFreeSegment->next;
    80001dc0:	ff85b683          	ld	a3,-8(a1)
    80001dc4:	00d73423          	sd	a3,8(a4)
        prev->noBlocks += newFreeSegment->noBlocks;
    80001dc8:	ff05b683          	ld	a3,-16(a1)
    80001dcc:	00d50533          	add	a0,a0,a3
    80001dd0:	00a73023          	sd	a0,0(a4)
        newFreeSegment = prev;
    80001dd4:	00070693          	mv	a3,a4
    80001dd8:	fbdff06f          	j	80001d94 <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
        newFreeSegment->next = after->next; newFreeSegment->noBlocks += after->noBlocks; }
    80001ddc:	0087b703          	ld	a4,8(a5)
    80001de0:	00e6b423          	sd	a4,8(a3)
    80001de4:	0007b783          	ld	a5,0(a5)
    80001de8:	00f60633          	add	a2,a2,a5
    80001dec:	00c6b023          	sd	a2,0(a3)
    80001df0:	fb9ff06f          	j	80001da8 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>

0000000080001df4 <_ZN15MemoryAllocator30printInstanceMemorySpaceParamsEv>:

void MemoryAllocator::printInstanceMemorySpaceParams() {
    80001df4:	fe010113          	addi	sp,sp,-32
    80001df8:	00113c23          	sd	ra,24(sp)
    80001dfc:	00813823          	sd	s0,16(sp)
    80001e00:	00913423          	sd	s1,8(sp)
    80001e04:	01213023          	sd	s2,0(sp)
    80001e08:	02010413          	addi	s0,sp,32
    80001e0c:	00050493          	mv	s1,a0
    printString("##################################\n\n");
    80001e10:	00007517          	auipc	a0,0x7
    80001e14:	36050513          	addi	a0,a0,864 # 80009170 <CONSOLE_STATUS+0x160>
    80001e18:	00004097          	auipc	ra,0x4
    80001e1c:	610080e7          	jalr	1552(ra) # 80006428 <_Z11printStringPKc>
    printString("MemoryAllocator address: "); printInteger((uint64)this); printString("\n");
    80001e20:	00007517          	auipc	a0,0x7
    80001e24:	37850513          	addi	a0,a0,888 # 80009198 <CONSOLE_STATUS+0x188>
    80001e28:	00004097          	auipc	ra,0x4
    80001e2c:	600080e7          	jalr	1536(ra) # 80006428 <_Z11printStringPKc>
    80001e30:	00048513          	mv	a0,s1
    80001e34:	00004097          	auipc	ra,0x4
    80001e38:	664080e7          	jalr	1636(ra) # 80006498 <_Z12printIntegerm>
    80001e3c:	00007517          	auipc	a0,0x7
    80001e40:	2e450513          	addi	a0,a0,740 # 80009120 <CONSOLE_STATUS+0x110>
    80001e44:	00004097          	auipc	ra,0x4
    80001e48:	5e4080e7          	jalr	1508(ra) # 80006428 <_Z11printStringPKc>

    // size_t noBlocksForStoringMemoryAllocator = sizeof(MemoryAllocator) / MEM_BLOCK_SIZE + 1;
    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
    80001e4c:	02000513          	li	a0,32
    80001e50:	00000097          	auipc	ra,0x0
    80001e54:	c38080e7          	jalr	-968(ra) # 80001a88 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001e58:	00050913          	mv	s2,a0
    printString("noBlocksForStoringMemoryAllocator: ");
    80001e5c:	00007517          	auipc	a0,0x7
    80001e60:	35c50513          	addi	a0,a0,860 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80001e64:	00004097          	auipc	ra,0x4
    80001e68:	5c4080e7          	jalr	1476(ra) # 80006428 <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator); printString("\n");
    80001e6c:	00090513          	mv	a0,s2
    80001e70:	00004097          	auipc	ra,0x4
    80001e74:	628080e7          	jalr	1576(ra) # 80006498 <_Z12printIntegerm>
    80001e78:	00007517          	auipc	a0,0x7
    80001e7c:	2a850513          	addi	a0,a0,680 # 80009120 <CONSOLE_STATUS+0x110>
    80001e80:	00004097          	auipc	ra,0x4
    80001e84:	5a8080e7          	jalr	1448(ra) # 80006428 <_Z11printStringPKc>
    printString("noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE: ");
    80001e88:	00007517          	auipc	a0,0x7
    80001e8c:	35850513          	addi	a0,a0,856 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80001e90:	00004097          	auipc	ra,0x4
    80001e94:	598080e7          	jalr	1432(ra) # 80006428 <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE); printString("\n\n");
    80001e98:	00691513          	slli	a0,s2,0x6
    80001e9c:	00004097          	auipc	ra,0x4
    80001ea0:	5fc080e7          	jalr	1532(ra) # 80006498 <_Z12printIntegerm>
    80001ea4:	00007517          	auipc	a0,0x7
    80001ea8:	37450513          	addi	a0,a0,884 # 80009218 <CONSOLE_STATUS+0x208>
    80001eac:	00004097          	auipc	ra,0x4
    80001eb0:	57c080e7          	jalr	1404(ra) # 80006428 <_Z11printStringPKc>

    printString("Managed memory space start: ");
    80001eb4:	00007517          	auipc	a0,0x7
    80001eb8:	36c50513          	addi	a0,a0,876 # 80009220 <CONSOLE_STATUS+0x210>
    80001ebc:	00004097          	auipc	ra,0x4
    80001ec0:	56c080e7          	jalr	1388(ra) # 80006428 <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceStart); printString("\n");
    80001ec4:	00009917          	auipc	s2,0x9
    80001ec8:	8bc90913          	addi	s2,s2,-1860 # 8000a780 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    80001ecc:	01093503          	ld	a0,16(s2)
    80001ed0:	00004097          	auipc	ra,0x4
    80001ed4:	5c8080e7          	jalr	1480(ra) # 80006498 <_Z12printIntegerm>
    80001ed8:	00007517          	auipc	a0,0x7
    80001edc:	24850513          	addi	a0,a0,584 # 80009120 <CONSOLE_STATUS+0x110>
    80001ee0:	00004097          	auipc	ra,0x4
    80001ee4:	548080e7          	jalr	1352(ra) # 80006428 <_Z11printStringPKc>
    printString("Managed memory space end: ");
    80001ee8:	00007517          	auipc	a0,0x7
    80001eec:	35850513          	addi	a0,a0,856 # 80009240 <CONSOLE_STATUS+0x230>
    80001ef0:	00004097          	auipc	ra,0x4
    80001ef4:	538080e7          	jalr	1336(ra) # 80006428 <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceEnd); printString("\n\n");
    80001ef8:	00093503          	ld	a0,0(s2)
    80001efc:	00004097          	auipc	ra,0x4
    80001f00:	59c080e7          	jalr	1436(ra) # 80006498 <_Z12printIntegerm>
    80001f04:	00007517          	auipc	a0,0x7
    80001f08:	31450513          	addi	a0,a0,788 # 80009218 <CONSOLE_STATUS+0x208>
    80001f0c:	00004097          	auipc	ra,0x4
    80001f10:	51c080e7          	jalr	1308(ra) # 80006428 <_Z11printStringPKc>

    printString("Total Free: "); printInteger(getTotalFree()); printString("\n");
    80001f14:	00007517          	auipc	a0,0x7
    80001f18:	34c50513          	addi	a0,a0,844 # 80009260 <CONSOLE_STATUS+0x250>
    80001f1c:	00004097          	auipc	ra,0x4
    80001f20:	50c080e7          	jalr	1292(ra) # 80006428 <_Z11printStringPKc>
    80001f24:	0004b503          	ld	a0,0(s1)
    80001f28:	00004097          	auipc	ra,0x4
    80001f2c:	570080e7          	jalr	1392(ra) # 80006498 <_Z12printIntegerm>
    80001f30:	00007517          	auipc	a0,0x7
    80001f34:	1f050513          	addi	a0,a0,496 # 80009120 <CONSOLE_STATUS+0x110>
    80001f38:	00004097          	auipc	ra,0x4
    80001f3c:	4f0080e7          	jalr	1264(ra) # 80006428 <_Z11printStringPKc>
    printString("Total Taken: "); printInteger(getTotalTaken()); printString("\n");
    80001f40:	00007517          	auipc	a0,0x7
    80001f44:	33050513          	addi	a0,a0,816 # 80009270 <CONSOLE_STATUS+0x260>
    80001f48:	00004097          	auipc	ra,0x4
    80001f4c:	4e0080e7          	jalr	1248(ra) # 80006428 <_Z11printStringPKc>
    80001f50:	0084b503          	ld	a0,8(s1)
    80001f54:	00004097          	auipc	ra,0x4
    80001f58:	544080e7          	jalr	1348(ra) # 80006498 <_Z12printIntegerm>
    80001f5c:	00007517          	auipc	a0,0x7
    80001f60:	1c450513          	addi	a0,a0,452 # 80009120 <CONSOLE_STATUS+0x110>
    80001f64:	00004097          	auipc	ra,0x4
    80001f68:	4c4080e7          	jalr	1220(ra) # 80006428 <_Z11printStringPKc>
    printString("Free Block No: "); printInteger(getFreeBlockNo()); printString("\n");
    80001f6c:	00007517          	auipc	a0,0x7
    80001f70:	31450513          	addi	a0,a0,788 # 80009280 <CONSOLE_STATUS+0x270>
    80001f74:	00004097          	auipc	ra,0x4
    80001f78:	4b4080e7          	jalr	1204(ra) # 80006428 <_Z11printStringPKc>
    80001f7c:	0104b503          	ld	a0,16(s1)
    80001f80:	00004097          	auipc	ra,0x4
    80001f84:	518080e7          	jalr	1304(ra) # 80006498 <_Z12printIntegerm>
    80001f88:	00007517          	auipc	a0,0x7
    80001f8c:	19850513          	addi	a0,a0,408 # 80009120 <CONSOLE_STATUS+0x110>
    80001f90:	00004097          	auipc	ra,0x4
    80001f94:	498080e7          	jalr	1176(ra) # 80006428 <_Z11printStringPKc>
    printString("\n##################################\n");
    80001f98:	00007517          	auipc	a0,0x7
    80001f9c:	2f850513          	addi	a0,a0,760 # 80009290 <CONSOLE_STATUS+0x280>
    80001fa0:	00004097          	auipc	ra,0x4
    80001fa4:	488080e7          	jalr	1160(ra) # 80006428 <_Z11printStringPKc>
}
    80001fa8:	01813083          	ld	ra,24(sp)
    80001fac:	01013403          	ld	s0,16(sp)
    80001fb0:	00813483          	ld	s1,8(sp)
    80001fb4:	00013903          	ld	s2,0(sp)
    80001fb8:	02010113          	addi	sp,sp,32
    80001fbc:	00008067          	ret

0000000080001fc0 <_ZN15MemoryAllocator22printMemorySpaceParamsEv>:

void MemoryAllocator::printMemorySpaceParams() {
    80001fc0:	fe010113          	addi	sp,sp,-32
    80001fc4:	00113c23          	sd	ra,24(sp)
    80001fc8:	00813823          	sd	s0,16(sp)
    80001fcc:	00913423          	sd	s1,8(sp)
    80001fd0:	01213023          	sd	s2,0(sp)
    80001fd4:	02010413          	addi	s0,sp,32
    printString("----------------------------------\n\n");
    80001fd8:	00007517          	auipc	a0,0x7
    80001fdc:	2e050513          	addi	a0,a0,736 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80001fe0:	00004097          	auipc	ra,0x4
    80001fe4:	448080e7          	jalr	1096(ra) # 80006428 <_Z11printStringPKc>
    printString("Size of MemoryAllocator class: ");
    80001fe8:	00007517          	auipc	a0,0x7
    80001fec:	2f850513          	addi	a0,a0,760 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80001ff0:	00004097          	auipc	ra,0x4
    80001ff4:	438080e7          	jalr	1080(ra) # 80006428 <_Z11printStringPKc>
    printInteger(sizeof(MemoryAllocator)); printString("\n");
    80001ff8:	02000513          	li	a0,32
    80001ffc:	00004097          	auipc	ra,0x4
    80002000:	49c080e7          	jalr	1180(ra) # 80006498 <_Z12printIntegerm>
    80002004:	00007517          	auipc	a0,0x7
    80002008:	11c50513          	addi	a0,a0,284 # 80009120 <CONSOLE_STATUS+0x110>
    8000200c:	00004097          	auipc	ra,0x4
    80002010:	41c080e7          	jalr	1052(ra) # 80006428 <_Z11printStringPKc>

    printString("HEAP_START_ADDR: "); printInteger((uint64)HEAP_START_ADDR); printString("\n");
    80002014:	00007517          	auipc	a0,0x7
    80002018:	30c50513          	addi	a0,a0,780 # 80009320 <CONSOLE_STATUS+0x310>
    8000201c:	00004097          	auipc	ra,0x4
    80002020:	40c080e7          	jalr	1036(ra) # 80006428 <_Z11printStringPKc>
    80002024:	00008497          	auipc	s1,0x8
    80002028:	69c4b483          	ld	s1,1692(s1) # 8000a6c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000202c:	0004b503          	ld	a0,0(s1)
    80002030:	00004097          	auipc	ra,0x4
    80002034:	468080e7          	jalr	1128(ra) # 80006498 <_Z12printIntegerm>
    80002038:	00007517          	auipc	a0,0x7
    8000203c:	0e850513          	addi	a0,a0,232 # 80009120 <CONSOLE_STATUS+0x110>
    80002040:	00004097          	auipc	ra,0x4
    80002044:	3e8080e7          	jalr	1000(ra) # 80006428 <_Z11printStringPKc>
    printString("HEAP_END_ADDR: "); printInteger((uint64)HEAP_END_ADDR); printString("\n");
    80002048:	00007517          	auipc	a0,0x7
    8000204c:	2b850513          	addi	a0,a0,696 # 80009300 <CONSOLE_STATUS+0x2f0>
    80002050:	00004097          	auipc	ra,0x4
    80002054:	3d8080e7          	jalr	984(ra) # 80006428 <_Z11printStringPKc>
    80002058:	00008917          	auipc	s2,0x8
    8000205c:	6b093903          	ld	s2,1712(s2) # 8000a708 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002060:	00093503          	ld	a0,0(s2)
    80002064:	00004097          	auipc	ra,0x4
    80002068:	434080e7          	jalr	1076(ra) # 80006498 <_Z12printIntegerm>
    8000206c:	00007517          	auipc	a0,0x7
    80002070:	0b450513          	addi	a0,a0,180 # 80009120 <CONSOLE_STATUS+0x110>
    80002074:	00004097          	auipc	ra,0x4
    80002078:	3b4080e7          	jalr	948(ra) # 80006428 <_Z11printStringPKc>

    printString("HEAP_END_ADDR - HEAP_START_ADDR: ");
    8000207c:	00007517          	auipc	a0,0x7
    80002080:	29450513          	addi	a0,a0,660 # 80009310 <CONSOLE_STATUS+0x300>
    80002084:	00004097          	auipc	ra,0x4
    80002088:	3a4080e7          	jalr	932(ra) # 80006428 <_Z11printStringPKc>
    printInteger((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)); printString("\n");
    8000208c:	00093503          	ld	a0,0(s2)
    80002090:	0004b783          	ld	a5,0(s1)
    80002094:	40f50533          	sub	a0,a0,a5
    80002098:	00004097          	auipc	ra,0x4
    8000209c:	400080e7          	jalr	1024(ra) # 80006498 <_Z12printIntegerm>
    800020a0:	00007517          	auipc	a0,0x7
    800020a4:	08050513          	addi	a0,a0,128 # 80009120 <CONSOLE_STATUS+0x110>
    800020a8:	00004097          	auipc	ra,0x4
    800020ac:	380080e7          	jalr	896(ra) # 80006428 <_Z11printStringPKc>

    printString("MEM_BLOCK_SIZE: "); printInteger(MEM_BLOCK_SIZE); printString("\n");
    800020b0:	00007517          	auipc	a0,0x7
    800020b4:	28850513          	addi	a0,a0,648 # 80009338 <CONSOLE_STATUS+0x328>
    800020b8:	00004097          	auipc	ra,0x4
    800020bc:	370080e7          	jalr	880(ra) # 80006428 <_Z11printStringPKc>
    800020c0:	04000513          	li	a0,64
    800020c4:	00004097          	auipc	ra,0x4
    800020c8:	3d4080e7          	jalr	980(ra) # 80006498 <_Z12printIntegerm>
    800020cc:	00007517          	auipc	a0,0x7
    800020d0:	05450513          	addi	a0,a0,84 # 80009120 <CONSOLE_STATUS+0x110>
    800020d4:	00004097          	auipc	ra,0x4
    800020d8:	354080e7          	jalr	852(ra) # 80006428 <_Z11printStringPKc>

    printString("Number of blocks in (HEAP_END_ADDR - HEAP_START_ADDR): ");
    800020dc:	00007517          	auipc	a0,0x7
    800020e0:	27450513          	addi	a0,a0,628 # 80009350 <CONSOLE_STATUS+0x340>
    800020e4:	00004097          	auipc	ra,0x4
    800020e8:	344080e7          	jalr	836(ra) # 80006428 <_Z11printStringPKc>
    printInteger(((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)) / MEM_BLOCK_SIZE);
    800020ec:	00093503          	ld	a0,0(s2)
    800020f0:	0004b783          	ld	a5,0(s1)
    800020f4:	40f50533          	sub	a0,a0,a5
    800020f8:	00655513          	srli	a0,a0,0x6
    800020fc:	00004097          	auipc	ra,0x4
    80002100:	39c080e7          	jalr	924(ra) # 80006498 <_Z12printIntegerm>
    printString("\n");
    80002104:	00007517          	auipc	a0,0x7
    80002108:	01c50513          	addi	a0,a0,28 # 80009120 <CONSOLE_STATUS+0x110>
    8000210c:	00004097          	auipc	ra,0x4
    80002110:	31c080e7          	jalr	796(ra) # 80006428 <_Z11printStringPKc>
    printString("\n----------------------------------\n");
    80002114:	00007517          	auipc	a0,0x7
    80002118:	27450513          	addi	a0,a0,628 # 80009388 <CONSOLE_STATUS+0x378>
    8000211c:	00004097          	auipc	ra,0x4
    80002120:	30c080e7          	jalr	780(ra) # 80006428 <_Z11printStringPKc>
}
    80002124:	01813083          	ld	ra,24(sp)
    80002128:	01013403          	ld	s0,16(sp)
    8000212c:	00813483          	ld	s1,8(sp)
    80002130:	00013903          	ld	s2,0(sp)
    80002134:	02010113          	addi	sp,sp,32
    80002138:	00008067          	ret

000000008000213c <_ZN15MemoryAllocator23printFreeMemoryHeadDataEv>:

void MemoryAllocator::printFreeMemoryHeadData() {
    8000213c:	fe010113          	addi	sp,sp,-32
    80002140:	00113c23          	sd	ra,24(sp)
    80002144:	00813823          	sd	s0,16(sp)
    80002148:	00913423          	sd	s1,8(sp)
    8000214c:	02010413          	addi	s0,sp,32
    80002150:	00050493          	mv	s1,a0
    printString("##################################\n\n");
    80002154:	00007517          	auipc	a0,0x7
    80002158:	01c50513          	addi	a0,a0,28 # 80009170 <CONSOLE_STATUS+0x160>
    8000215c:	00004097          	auipc	ra,0x4
    80002160:	2cc080e7          	jalr	716(ra) # 80006428 <_Z11printStringPKc>
    printString("freeMemoryHead: ");
    80002164:	00007517          	auipc	a0,0x7
    80002168:	24c50513          	addi	a0,a0,588 # 800093b0 <CONSOLE_STATUS+0x3a0>
    8000216c:	00004097          	auipc	ra,0x4
    80002170:	2bc080e7          	jalr	700(ra) # 80006428 <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead); printString("\n");
    80002174:	0184b503          	ld	a0,24(s1)
    80002178:	00004097          	auipc	ra,0x4
    8000217c:	320080e7          	jalr	800(ra) # 80006498 <_Z12printIntegerm>
    80002180:	00007517          	auipc	a0,0x7
    80002184:	fa050513          	addi	a0,a0,-96 # 80009120 <CONSOLE_STATUS+0x110>
    80002188:	00004097          	auipc	ra,0x4
    8000218c:	2a0080e7          	jalr	672(ra) # 80006428 <_Z11printStringPKc>
    printString("freeMemoryHead->noBlocks: ");
    80002190:	00007517          	auipc	a0,0x7
    80002194:	23850513          	addi	a0,a0,568 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80002198:	00004097          	auipc	ra,0x4
    8000219c:	290080e7          	jalr	656(ra) # 80006428 <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead->noBlocks); printString("\n");
    800021a0:	0184b783          	ld	a5,24(s1)
    800021a4:	0007b503          	ld	a0,0(a5)
    800021a8:	00004097          	auipc	ra,0x4
    800021ac:	2f0080e7          	jalr	752(ra) # 80006498 <_Z12printIntegerm>
    800021b0:	00007517          	auipc	a0,0x7
    800021b4:	f7050513          	addi	a0,a0,-144 # 80009120 <CONSOLE_STATUS+0x110>
    800021b8:	00004097          	auipc	ra,0x4
    800021bc:	270080e7          	jalr	624(ra) # 80006428 <_Z11printStringPKc>
    printString("freeMemoryHead->next: ");
    800021c0:	00007517          	auipc	a0,0x7
    800021c4:	22850513          	addi	a0,a0,552 # 800093e8 <CONSOLE_STATUS+0x3d8>
    800021c8:	00004097          	auipc	ra,0x4
    800021cc:	260080e7          	jalr	608(ra) # 80006428 <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead->next); printString("\n");
    800021d0:	0184b783          	ld	a5,24(s1)
    800021d4:	0087b503          	ld	a0,8(a5)
    800021d8:	00004097          	auipc	ra,0x4
    800021dc:	2c0080e7          	jalr	704(ra) # 80006498 <_Z12printIntegerm>
    800021e0:	00007517          	auipc	a0,0x7
    800021e4:	f4050513          	addi	a0,a0,-192 # 80009120 <CONSOLE_STATUS+0x110>
    800021e8:	00004097          	auipc	ra,0x4
    800021ec:	240080e7          	jalr	576(ra) # 80006428 <_Z11printStringPKc>
    printString("Segment Descriptor size: ");
    800021f0:	00007517          	auipc	a0,0x7
    800021f4:	21050513          	addi	a0,a0,528 # 80009400 <CONSOLE_STATUS+0x3f0>
    800021f8:	00004097          	auipc	ra,0x4
    800021fc:	230080e7          	jalr	560(ra) # 80006428 <_Z11printStringPKc>
    printInteger(sizeof(*freeMemoryHead)); printString("\n");
    80002200:	01000513          	li	a0,16
    80002204:	00004097          	auipc	ra,0x4
    80002208:	294080e7          	jalr	660(ra) # 80006498 <_Z12printIntegerm>
    8000220c:	00007517          	auipc	a0,0x7
    80002210:	f1450513          	addi	a0,a0,-236 # 80009120 <CONSOLE_STATUS+0x110>
    80002214:	00004097          	auipc	ra,0x4
    80002218:	214080e7          	jalr	532(ra) # 80006428 <_Z11printStringPKc>
    printString("\n##################################\n");
    8000221c:	00007517          	auipc	a0,0x7
    80002220:	07450513          	addi	a0,a0,116 # 80009290 <CONSOLE_STATUS+0x280>
    80002224:	00004097          	auipc	ra,0x4
    80002228:	204080e7          	jalr	516(ra) # 80006428 <_Z11printStringPKc>
}
    8000222c:	01813083          	ld	ra,24(sp)
    80002230:	01013403          	ld	s0,16(sp)
    80002234:	00813483          	ld	s1,8(sp)
    80002238:	02010113          	addi	sp,sp,32
    8000223c:	00008067          	ret

0000000080002240 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv>:
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    return beforeTestFreeBlockNo == afterTestFreeBlockNo - minNoBlocksForSize - addendForSegDesc;

}

size_t MemoryAllocatorTest::getFreeBlocksCnt() {
    80002240:	ff010113          	addi	sp,sp,-16
    80002244:	00113423          	sd	ra,8(sp)
    80002248:	00813023          	sd	s0,0(sp)
    8000224c:	01010413          	addi	s0,sp,16
    MemoryAllocator::SegmentDescriptor* freeMemHead = MemoryAllocator::instance()->freeMemoryHead;
    80002250:	00000097          	auipc	ra,0x0
    80002254:	930080e7          	jalr	-1744(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002258:	01853783          	ld	a5,24(a0)
    size_t blockCnt = 0;
    8000225c:	00000513          	li	a0,0
    while (freeMemHead) {
    80002260:	00078a63          	beqz	a5,80002274 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv+0x34>
        blockCnt += freeMemHead->noBlocks;
    80002264:	0007b703          	ld	a4,0(a5)
    80002268:	00e50533          	add	a0,a0,a4
        freeMemHead = freeMemHead->next;
    8000226c:	0087b783          	ld	a5,8(a5)
    while (freeMemHead) {
    80002270:	ff1ff06f          	j	80002260 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv+0x20>
    }
    return blockCnt;
}
    80002274:	00813083          	ld	ra,8(sp)
    80002278:	00013403          	ld	s0,0(sp)
    8000227c:	01010113          	addi	sp,sp,16
    80002280:	00008067          	ret

0000000080002284 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>:

bool MemoryAllocatorTest::testMemoryMetadataValidity() {
    80002284:	fd010113          	addi	sp,sp,-48
    80002288:	02113423          	sd	ra,40(sp)
    8000228c:	02813023          	sd	s0,32(sp)
    80002290:	00913c23          	sd	s1,24(sp)
    80002294:	01213823          	sd	s2,16(sp)
    80002298:	01313423          	sd	s3,8(sp)
    8000229c:	01413023          	sd	s4,0(sp)
    800022a0:	03010413          	addi	s0,sp,48
    800022a4:	00050913          	mv	s2,a0
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    800022a8:	00000097          	auipc	ra,0x0
    800022ac:	8d8080e7          	jalr	-1832(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>

    void* kmem_alloc(size_t size);
    int kmem_free(void* newFree);
    void printInstanceMemorySpaceParams();
    void printFreeMemoryHeadData();
    size_t getTotalFree() { return totalFree; }
    800022b0:	00053483          	ld	s1,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    800022b4:	00000097          	auipc	ra,0x0
    800022b8:	8cc080e7          	jalr	-1844(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800022bc:	00853a03          	ld	s4,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    800022c0:	00000097          	auipc	ra,0x0
    800022c4:	8c0080e7          	jalr	-1856(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    800022c8:	01053983          	ld	s3,16(a0)
    size_t freeBlocksCnt = getFreeBlocksCnt();
    800022cc:	00090513          	mv	a0,s2
    800022d0:	00000097          	auipc	ra,0x0
    800022d4:	f70080e7          	jalr	-144(ra) # 80002240 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv>

    if (freeBlocksCnt != beforeTestFreeBlockNo) return false;
    800022d8:	02a99c63          	bne	s3,a0,80002310 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x8c>
    if (freeBlocksCnt != beforeTestTotalFree / MEM_BLOCK_SIZE) return false;
    800022dc:	0064d793          	srli	a5,s1,0x6
    800022e0:	04a79a63          	bne	a5,a0,80002334 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0xb0>

    size_t totalMemory = (size_t) (MemoryAllocator::managedMemorySpaceEnd - MemoryAllocator::managedMemorySpaceStart);
    800022e4:	00008797          	auipc	a5,0x8
    800022e8:	3e47b783          	ld	a5,996(a5) # 8000a6c8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800022ec:	0007b503          	ld	a0,0(a5)
    800022f0:	00008797          	auipc	a5,0x8
    800022f4:	4307b783          	ld	a5,1072(a5) # 8000a720 <_GLOBAL_OFFSET_TABLE_+0x68>
    800022f8:	0007b783          	ld	a5,0(a5)
    800022fc:	40f507b3          	sub	a5,a0,a5
    return totalMemory == beforeTestTotalFree + beforeTestTotalTaken;
    80002300:	01448533          	add	a0,s1,s4
    80002304:	40f50533          	sub	a0,a0,a5
    80002308:	00153513          	seqz	a0,a0
    8000230c:	0080006f          	j	80002314 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x90>
    if (freeBlocksCnt != beforeTestFreeBlockNo) return false;
    80002310:	00000513          	li	a0,0
}
    80002314:	02813083          	ld	ra,40(sp)
    80002318:	02013403          	ld	s0,32(sp)
    8000231c:	01813483          	ld	s1,24(sp)
    80002320:	01013903          	ld	s2,16(sp)
    80002324:	00813983          	ld	s3,8(sp)
    80002328:	00013a03          	ld	s4,0(sp)
    8000232c:	03010113          	addi	sp,sp,48
    80002330:	00008067          	ret
    if (freeBlocksCnt != beforeTestTotalFree / MEM_BLOCK_SIZE) return false;
    80002334:	00000513          	li	a0,0
    80002338:	fddff06f          	j	80002314 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x90>

000000008000233c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>:
bool MemoryAllocatorTest::testMemoryAllocate(uint64 size, void** allocatedMemoryPointer) {
    8000233c:	fa010113          	addi	sp,sp,-96
    80002340:	04113c23          	sd	ra,88(sp)
    80002344:	04813823          	sd	s0,80(sp)
    80002348:	04913423          	sd	s1,72(sp)
    8000234c:	05213023          	sd	s2,64(sp)
    80002350:	03313c23          	sd	s3,56(sp)
    80002354:	03413823          	sd	s4,48(sp)
    80002358:	03513423          	sd	s5,40(sp)
    8000235c:	03613023          	sd	s6,32(sp)
    80002360:	01713c23          	sd	s7,24(sp)
    80002364:	01813823          	sd	s8,16(sp)
    80002368:	01913423          	sd	s9,8(sp)
    8000236c:	01a13023          	sd	s10,0(sp)
    80002370:	06010413          	addi	s0,sp,96
    80002374:	00050a13          	mv	s4,a0
    80002378:	00058913          	mv	s2,a1
    8000237c:	00060993          	mv	s3,a2
    if (!testMemoryMetadataValidity()) return false;
    80002380:	00000097          	auipc	ra,0x0
    80002384:	f04080e7          	jalr	-252(ra) # 80002284 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002388:	00050493          	mv	s1,a0
    8000238c:	04051063          	bnez	a0,800023cc <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x90>
}
    80002390:	00048513          	mv	a0,s1
    80002394:	05813083          	ld	ra,88(sp)
    80002398:	05013403          	ld	s0,80(sp)
    8000239c:	04813483          	ld	s1,72(sp)
    800023a0:	04013903          	ld	s2,64(sp)
    800023a4:	03813983          	ld	s3,56(sp)
    800023a8:	03013a03          	ld	s4,48(sp)
    800023ac:	02813a83          	ld	s5,40(sp)
    800023b0:	02013b03          	ld	s6,32(sp)
    800023b4:	01813b83          	ld	s7,24(sp)
    800023b8:	01013c03          	ld	s8,16(sp)
    800023bc:	00813c83          	ld	s9,8(sp)
    800023c0:	00013d03          	ld	s10,0(sp)
    800023c4:	06010113          	addi	sp,sp,96
    800023c8:	00008067          	ret
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    800023cc:	fffff097          	auipc	ra,0xfffff
    800023d0:	7b4080e7          	jalr	1972(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    800023d4:	00053b03          	ld	s6,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    800023d8:	fffff097          	auipc	ra,0xfffff
    800023dc:	7a8080e7          	jalr	1960(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800023e0:	00853b83          	ld	s7,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    800023e4:	fffff097          	auipc	ra,0xfffff
    800023e8:	79c080e7          	jalr	1948(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    800023ec:	01053c03          	ld	s8,16(a0)
    *allocatedMemoryPointer = MemoryAllocator::instance()->kmem_alloc(size);
    800023f0:	fffff097          	auipc	ra,0xfffff
    800023f4:	790080e7          	jalr	1936(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800023f8:	00090593          	mv	a1,s2
    800023fc:	00000097          	auipc	ra,0x0
    80002400:	868080e7          	jalr	-1944(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80002404:	00050a93          	mv	s5,a0
    80002408:	00a9b023          	sd	a0,0(s3)
    if (*allocatedMemoryPointer == nullptr && size == (uint64) -37) return true;
    8000240c:	08050663          	beqz	a0,80002498 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x15c>
    size_t minNoBlocksForSize = MemoryAllocator::getMinBlockNumber(size);
    80002410:	00090513          	mv	a0,s2
    80002414:	fffff097          	auipc	ra,0xfffff
    80002418:	674080e7          	jalr	1652(ra) # 80001a88 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    8000241c:	00050993          	mv	s3,a0
    size_t addendForSegDesc = minNoBlocksForSize * MEM_BLOCK_SIZE - size < sizeof(MemoryAllocator::SegmentDescriptor);
    80002420:	00651593          	slli	a1,a0,0x6
    80002424:	41258933          	sub	s2,a1,s2
    80002428:	01093913          	sltiu	s2,s2,16
    size_t allocatedMemory = (minNoBlocksForSize + addendForSegDesc) * MEM_BLOCK_SIZE;
    8000242c:	01250cb3          	add	s9,a0,s2
    80002430:	006c9d13          	slli	s10,s9,0x6
    if (!testMemoryMetadataValidity()) return false;
    80002434:	000a0513          	mv	a0,s4
    80002438:	00000097          	auipc	ra,0x0
    8000243c:	e4c080e7          	jalr	-436(ra) # 80002284 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002440:	00050493          	mv	s1,a0
    80002444:	f40506e3          	beqz	a0,80002390 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    size_t afterTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002448:	fffff097          	auipc	ra,0xfffff
    8000244c:	738080e7          	jalr	1848(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    80002450:	00053483          	ld	s1,0(a0)
    size_t afterTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002454:	fffff097          	auipc	ra,0xfffff
    80002458:	72c080e7          	jalr	1836(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    8000245c:	00853a03          	ld	s4,8(a0)
    size_t afterTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    80002460:	fffff097          	auipc	ra,0xfffff
    80002464:	720080e7          	jalr	1824(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002468:	01053783          	ld	a5,16(a0)
    if (beforeTestTotalFree != afterTestTotalFree + allocatedMemory) return false;
    8000246c:	01a484b3          	add	s1,s1,s10
    80002470:	03649a63          	bne	s1,s6,800024a4 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x168>
    if (beforeTestTotalTaken != afterTestTotalTaken - allocatedMemory) return false;
    80002474:	41aa0d33          	sub	s10,s4,s10
    80002478:	037d1a63          	bne	s10,s7,800024ac <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x170>
    if (beforeTestFreeBlockNo != afterTestFreeBlockNo + minNoBlocksForSize + addendForSegDesc) return false;
    8000247c:	013789b3          	add	s3,a5,s3
    80002480:	01298933          	add	s2,s3,s2
    80002484:	03891863          	bne	s2,s8,800024b4 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x178>
    return segDesc->noBlocks == minNoBlocksForSize + addendForSegDesc;
    80002488:	ff0ab483          	ld	s1,-16(s5)
    8000248c:	409c84b3          	sub	s1,s9,s1
    80002490:	0014b493          	seqz	s1,s1
    80002494:	efdff06f          	j	80002390 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (*allocatedMemoryPointer == nullptr && size == (uint64) -37) return true;
    80002498:	fdb00793          	li	a5,-37
    8000249c:	f6f91ae3          	bne	s2,a5,80002410 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0xd4>
    800024a0:	ef1ff06f          	j	80002390 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestTotalFree != afterTestTotalFree + allocatedMemory) return false;
    800024a4:	00000493          	li	s1,0
    800024a8:	ee9ff06f          	j	80002390 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestTotalTaken != afterTestTotalTaken - allocatedMemory) return false;
    800024ac:	00000493          	li	s1,0
    800024b0:	ee1ff06f          	j	80002390 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestFreeBlockNo != afterTestFreeBlockNo + minNoBlocksForSize + addendForSegDesc) return false;
    800024b4:	00000493          	li	s1,0
    800024b8:	ed9ff06f          	j	80002390 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>

00000000800024bc <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>:
bool MemoryAllocatorTest::testMemoryFree(uint64 size, void* allocatedMemoryPointer) {
    800024bc:	fb010113          	addi	sp,sp,-80
    800024c0:	04113423          	sd	ra,72(sp)
    800024c4:	04813023          	sd	s0,64(sp)
    800024c8:	02913c23          	sd	s1,56(sp)
    800024cc:	03213823          	sd	s2,48(sp)
    800024d0:	03313423          	sd	s3,40(sp)
    800024d4:	03413023          	sd	s4,32(sp)
    800024d8:	01513c23          	sd	s5,24(sp)
    800024dc:	01613823          	sd	s6,16(sp)
    800024e0:	01713423          	sd	s7,8(sp)
    800024e4:	01813023          	sd	s8,0(sp)
    800024e8:	05010413          	addi	s0,sp,80
    800024ec:	00050a13          	mv	s4,a0
    800024f0:	00058913          	mv	s2,a1
    800024f4:	00060493          	mv	s1,a2
    if (!testMemoryMetadataValidity()) return false;
    800024f8:	00000097          	auipc	ra,0x0
    800024fc:	d8c080e7          	jalr	-628(ra) # 80002284 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002500:	02051a63          	bnez	a0,80002534 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x78>
}
    80002504:	04813083          	ld	ra,72(sp)
    80002508:	04013403          	ld	s0,64(sp)
    8000250c:	03813483          	ld	s1,56(sp)
    80002510:	03013903          	ld	s2,48(sp)
    80002514:	02813983          	ld	s3,40(sp)
    80002518:	02013a03          	ld	s4,32(sp)
    8000251c:	01813a83          	ld	s5,24(sp)
    80002520:	01013b03          	ld	s6,16(sp)
    80002524:	00813b83          	ld	s7,8(sp)
    80002528:	00013c03          	ld	s8,0(sp)
    8000252c:	05010113          	addi	sp,sp,80
    80002530:	00008067          	ret
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002534:	fffff097          	auipc	ra,0xfffff
    80002538:	64c080e7          	jalr	1612(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    8000253c:	00053b03          	ld	s6,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002540:	fffff097          	auipc	ra,0xfffff
    80002544:	640080e7          	jalr	1600(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    80002548:	00853b83          	ld	s7,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    8000254c:	fffff097          	auipc	ra,0xfffff
    80002550:	634080e7          	jalr	1588(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002554:	01053a83          	ld	s5,16(a0)
    size_t minNoBlocksForSize = MemoryAllocator::getMinBlockNumber(size);
    80002558:	00090513          	mv	a0,s2
    8000255c:	fffff097          	auipc	ra,0xfffff
    80002560:	52c080e7          	jalr	1324(ra) # 80001a88 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80002564:	00050993          	mv	s3,a0
    size_t addendForSegDesc = minNoBlocksForSize * MEM_BLOCK_SIZE - size < sizeof(MemoryAllocator::SegmentDescriptor);
    80002568:	00651593          	slli	a1,a0,0x6
    8000256c:	41258933          	sub	s2,a1,s2
    80002570:	01093913          	sltiu	s2,s2,16
    size_t allocatedMemory = (minNoBlocksForSize + addendForSegDesc) * MEM_BLOCK_SIZE;
    80002574:	01250733          	add	a4,a0,s2
    80002578:	00671c13          	slli	s8,a4,0x6
    if (!allocatedMemoryPointer) {
    8000257c:	08048463          	beqz	s1,80002604 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x148>
    if (allocatedMemoryPointer) segDesc = (MemoryAllocator::SegmentDescriptor*)
    80002580:	08048a63          	beqz	s1,80002614 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x158>
    80002584:	ff048793          	addi	a5,s1,-16
    if (allocatedMemoryPointer)
    80002588:	00048863          	beqz	s1,80002598 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xdc>
    if (segDesc->noBlocks != minNoBlocksForSize + addendForSegDesc) return false;
    8000258c:	0007b703          	ld	a4,0(a5)
    80002590:	012987b3          	add	a5,s3,s2
    80002594:	08f71463          	bne	a4,a5,8000261c <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x160>
    MemoryAllocator::instance()->kmem_free(allocatedMemoryPointer);
    80002598:	fffff097          	auipc	ra,0xfffff
    8000259c:	5e8080e7          	jalr	1512(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800025a0:	00048593          	mv	a1,s1
    800025a4:	fffff097          	auipc	ra,0xfffff
    800025a8:	768080e7          	jalr	1896(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    800025ac:	000a0513          	mv	a0,s4
    800025b0:	00000097          	auipc	ra,0x0
    800025b4:	cd4080e7          	jalr	-812(ra) # 80002284 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800025b8:	f40506e3          	beqz	a0,80002504 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    size_t afterTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    800025bc:	fffff097          	auipc	ra,0xfffff
    800025c0:	5c4080e7          	jalr	1476(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    800025c4:	00053483          	ld	s1,0(a0)
    size_t afterTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    800025c8:	fffff097          	auipc	ra,0xfffff
    800025cc:	5b8080e7          	jalr	1464(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800025d0:	00853a03          	ld	s4,8(a0)
    size_t afterTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    800025d4:	fffff097          	auipc	ra,0xfffff
    800025d8:	5ac080e7          	jalr	1452(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    800025dc:	01053783          	ld	a5,16(a0)
    if (beforeTestTotalFree != afterTestTotalFree - allocatedMemory) return false;
    800025e0:	418484b3          	sub	s1,s1,s8
    800025e4:	05649063          	bne	s1,s6,80002624 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x168>
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    800025e8:	014c0733          	add	a4,s8,s4
    800025ec:	05771063          	bne	a4,s7,8000262c <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x170>
    return beforeTestFreeBlockNo == afterTestFreeBlockNo - minNoBlocksForSize - addendForSegDesc;
    800025f0:	41378533          	sub	a0,a5,s3
    800025f4:	41250533          	sub	a0,a0,s2
    800025f8:	41550533          	sub	a0,a0,s5
    800025fc:	00153513          	seqz	a0,a0
    80002600:	f05ff06f          	j	80002504 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
        minNoBlocksForSize = 0; addendForSegDesc = 0; allocatedMemory = 0;
    80002604:	00000c13          	li	s8,0
    80002608:	00000913          	li	s2,0
    8000260c:	00000993          	li	s3,0
    80002610:	f71ff06f          	j	80002580 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xc4>
    MemoryAllocator::SegmentDescriptor* segDesc = nullptr;
    80002614:	00048793          	mv	a5,s1
    80002618:	f71ff06f          	j	80002588 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xcc>
    if (segDesc->noBlocks != minNoBlocksForSize + addendForSegDesc) return false;
    8000261c:	00000513          	li	a0,0
    80002620:	ee5ff06f          	j	80002504 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    if (beforeTestTotalFree != afterTestTotalFree - allocatedMemory) return false;
    80002624:	00000513          	li	a0,0
    80002628:	eddff06f          	j	80002504 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    8000262c:	00000513          	li	a0,0
    80002630:	ed5ff06f          	j	80002504 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>

0000000080002634 <_ZN19MemoryAllocatorTest13firstFitTest1Ev>:
    if (!firstFitTest2()) return false;
    if (!firstFitTest3()) return false;
    return true;
}

bool MemoryAllocatorTest::firstFitTest1() {
    80002634:	fc010113          	addi	sp,sp,-64
    80002638:	02113c23          	sd	ra,56(sp)
    8000263c:	02813823          	sd	s0,48(sp)
    80002640:	02913423          	sd	s1,40(sp)
    80002644:	03213023          	sd	s2,32(sp)
    80002648:	01313c23          	sd	s3,24(sp)
    8000264c:	01413823          	sd	s4,16(sp)
    80002650:	01513423          	sd	s5,8(sp)
    80002654:	04010413          	addi	s0,sp,64
    80002658:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    8000265c:	00000097          	auipc	ra,0x0
    80002660:	c28080e7          	jalr	-984(ra) # 80002284 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002664:	02051463          	bnez	a0,8000268c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x58>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002668:	03813083          	ld	ra,56(sp)
    8000266c:	03013403          	ld	s0,48(sp)
    80002670:	02813483          	ld	s1,40(sp)
    80002674:	02013903          	ld	s2,32(sp)
    80002678:	01813983          	ld	s3,24(sp)
    8000267c:	01013a03          	ld	s4,16(sp)
    80002680:	00813a83          	ld	s5,8(sp)
    80002684:	04010113          	addi	sp,sp,64
    80002688:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    8000268c:	fffff097          	auipc	ra,0xfffff
    80002690:	4f4080e7          	jalr	1268(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002694:	02f00593          	li	a1,47
    80002698:	fffff097          	auipc	ra,0xfffff
    8000269c:	5cc080e7          	jalr	1484(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    800026a0:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    800026a4:	00008797          	auipc	a5,0x8
    800026a8:	07c7b783          	ld	a5,124(a5) # 8000a720 <_GLOBAL_OFFSET_TABLE_+0x68>
    800026ac:	0007b783          	ld	a5,0(a5)
    800026b0:	01078793          	addi	a5,a5,16
    800026b4:	00a78663          	beq	a5,a0,800026c0 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x8c>
        return false;
    800026b8:	00000513          	li	a0,0
    800026bc:	fadff06f          	j	80002668 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    800026c0:	fffff097          	auipc	ra,0xfffff
    800026c4:	4c0080e7          	jalr	1216(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800026c8:	03000593          	li	a1,48
    800026cc:	fffff097          	auipc	ra,0xfffff
    800026d0:	598080e7          	jalr	1432(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    800026d4:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    800026d8:	00008797          	auipc	a5,0x8
    800026dc:	0487b783          	ld	a5,72(a5) # 8000a720 <_GLOBAL_OFFSET_TABLE_+0x68>
    800026e0:	0007b783          	ld	a5,0(a5)
    800026e4:	05078793          	addi	a5,a5,80
    800026e8:	00a78663          	beq	a5,a0,800026f4 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0xc0>
        return false;
    800026ec:	00000513          	li	a0,0
    800026f0:	f79ff06f          	j	80002668 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    800026f4:	fffff097          	auipc	ra,0xfffff
    800026f8:	48c080e7          	jalr	1164(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800026fc:	03100593          	li	a1,49
    80002700:	fffff097          	auipc	ra,0xfffff
    80002704:	564080e7          	jalr	1380(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80002708:	00050a13          	mv	s4,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + 2 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    8000270c:	00008797          	auipc	a5,0x8
    80002710:	0147b783          	ld	a5,20(a5) # 8000a720 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002714:	0007b783          	ld	a5,0(a5)
    80002718:	09078793          	addi	a5,a5,144
    8000271c:	00a78663          	beq	a5,a0,80002728 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0xf4>
        return false;
    80002720:	00000513          	li	a0,0
    80002724:	f45ff06f          	j	80002668 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002728:	fffff097          	auipc	ra,0xfffff
    8000272c:	458080e7          	jalr	1112(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002730:	00098593          	mv	a1,s3
    80002734:	fffff097          	auipc	ra,0xfffff
    80002738:	5d8080e7          	jalr	1496(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    8000273c:	fffff097          	auipc	ra,0xfffff
    80002740:	444080e7          	jalr	1092(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002744:	01e00593          	li	a1,30
    80002748:	fffff097          	auipc	ra,0xfffff
    8000274c:	51c080e7          	jalr	1308(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80002750:	00050993          	mv	s3,a0
    if (pointers[3] != MemoryAllocator::managedMemorySpaceStart + 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002754:	00008797          	auipc	a5,0x8
    80002758:	fcc7b783          	ld	a5,-52(a5) # 8000a720 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000275c:	0007b783          	ld	a5,0(a5)
    80002760:	05078793          	addi	a5,a5,80
    80002764:	00a78663          	beq	a5,a0,80002770 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x13c>
        return false;
    80002768:	00000513          	li	a0,0
    8000276c:	efdff06f          	j	80002668 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002770:	fffff097          	auipc	ra,0xfffff
    80002774:	410080e7          	jalr	1040(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002778:	12100593          	li	a1,289
    8000277c:	fffff097          	auipc	ra,0xfffff
    80002780:	4e8080e7          	jalr	1256(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80002784:	00050a93          	mv	s5,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + 4 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002788:	00008797          	auipc	a5,0x8
    8000278c:	f987b783          	ld	a5,-104(a5) # 8000a720 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002790:	0007b783          	ld	a5,0(a5)
    80002794:	11078793          	addi	a5,a5,272
    80002798:	00a78663          	beq	a5,a0,800027a4 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x170>
        return false;
    8000279c:	00000513          	li	a0,0
    800027a0:	ec9ff06f          	j	80002668 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    if (!testMemoryMetadataValidity()) return false;
    800027a4:	00048513          	mv	a0,s1
    800027a8:	00000097          	auipc	ra,0x0
    800027ac:	adc080e7          	jalr	-1316(ra) # 80002284 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800027b0:	ea050ce3          	beqz	a0,80002668 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    800027b4:	fffff097          	auipc	ra,0xfffff
    800027b8:	3cc080e7          	jalr	972(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800027bc:	00090593          	mv	a1,s2
    800027c0:	fffff097          	auipc	ra,0xfffff
    800027c4:	54c080e7          	jalr	1356(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    800027c8:	fffff097          	auipc	ra,0xfffff
    800027cc:	3b8080e7          	jalr	952(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800027d0:	000a0593          	mv	a1,s4
    800027d4:	fffff097          	auipc	ra,0xfffff
    800027d8:	538080e7          	jalr	1336(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    800027dc:	fffff097          	auipc	ra,0xfffff
    800027e0:	3a4080e7          	jalr	932(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800027e4:	00098593          	mv	a1,s3
    800027e8:	fffff097          	auipc	ra,0xfffff
    800027ec:	524080e7          	jalr	1316(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    800027f0:	fffff097          	auipc	ra,0xfffff
    800027f4:	390080e7          	jalr	912(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800027f8:	000a8593          	mv	a1,s5
    800027fc:	fffff097          	auipc	ra,0xfffff
    80002800:	510080e7          	jalr	1296(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002804:	00048513          	mv	a0,s1
    80002808:	00000097          	auipc	ra,0x0
    8000280c:	a7c080e7          	jalr	-1412(ra) # 80002284 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002810:	e59ff06f          	j	80002668 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>

0000000080002814 <_ZN19MemoryAllocatorTest12printPointerEiPPv>:


void MemoryAllocatorTest::printPointer(int i, void** pointers) {
    80002814:	fe010113          	addi	sp,sp,-32
    80002818:	00113c23          	sd	ra,24(sp)
    8000281c:	00813823          	sd	s0,16(sp)
    80002820:	00913423          	sd	s1,8(sp)
    80002824:	01213023          	sd	s2,0(sp)
    80002828:	02010413          	addi	s0,sp,32
    8000282c:	00058913          	mv	s2,a1
    80002830:	00060493          	mv	s1,a2
    printString("\npointers[");
    80002834:	00007517          	auipc	a0,0x7
    80002838:	bec50513          	addi	a0,a0,-1044 # 80009420 <CONSOLE_STATUS+0x410>
    8000283c:	00004097          	auipc	ra,0x4
    80002840:	bec080e7          	jalr	-1044(ra) # 80006428 <_Z11printStringPKc>
    printInteger(i);
    80002844:	00090513          	mv	a0,s2
    80002848:	00004097          	auipc	ra,0x4
    8000284c:	c50080e7          	jalr	-944(ra) # 80006498 <_Z12printIntegerm>
    printString("]: ");
    80002850:	00007517          	auipc	a0,0x7
    80002854:	be050513          	addi	a0,a0,-1056 # 80009430 <CONSOLE_STATUS+0x420>
    80002858:	00004097          	auipc	ra,0x4
    8000285c:	bd0080e7          	jalr	-1072(ra) # 80006428 <_Z11printStringPKc>
    printInteger((uint64)((uint8*) pointers[i] - MemoryAllocator::managedMemorySpaceStart));
    80002860:	00391613          	slli	a2,s2,0x3
    80002864:	00c484b3          	add	s1,s1,a2
    80002868:	0004b503          	ld	a0,0(s1)
    8000286c:	00008797          	auipc	a5,0x8
    80002870:	eb47b783          	ld	a5,-332(a5) # 8000a720 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002874:	0007b783          	ld	a5,0(a5)
    80002878:	40f50533          	sub	a0,a0,a5
    8000287c:	00004097          	auipc	ra,0x4
    80002880:	c1c080e7          	jalr	-996(ra) # 80006498 <_Z12printIntegerm>
    printString("\npointers[");
    80002884:	00007517          	auipc	a0,0x7
    80002888:	b9c50513          	addi	a0,a0,-1124 # 80009420 <CONSOLE_STATUS+0x410>
    8000288c:	00004097          	auipc	ra,0x4
    80002890:	b9c080e7          	jalr	-1124(ra) # 80006428 <_Z11printStringPKc>
    printInteger(i);
    80002894:	00090513          	mv	a0,s2
    80002898:	00004097          	auipc	ra,0x4
    8000289c:	c00080e7          	jalr	-1024(ra) # 80006498 <_Z12printIntegerm>
    printString("]->blockNo: "); printInteger((uint64) (((MemoryAllocator::SegmentDescriptor*) pointers[i])->noBlocks));
    800028a0:	00007517          	auipc	a0,0x7
    800028a4:	b9850513          	addi	a0,a0,-1128 # 80009438 <CONSOLE_STATUS+0x428>
    800028a8:	00004097          	auipc	ra,0x4
    800028ac:	b80080e7          	jalr	-1152(ra) # 80006428 <_Z11printStringPKc>
    800028b0:	0004b783          	ld	a5,0(s1)
    800028b4:	0007b503          	ld	a0,0(a5)
    800028b8:	00004097          	auipc	ra,0x4
    800028bc:	be0080e7          	jalr	-1056(ra) # 80006498 <_Z12printIntegerm>
    printString("\n");
    800028c0:	00007517          	auipc	a0,0x7
    800028c4:	86050513          	addi	a0,a0,-1952 # 80009120 <CONSOLE_STATUS+0x110>
    800028c8:	00004097          	auipc	ra,0x4
    800028cc:	b60080e7          	jalr	-1184(ra) # 80006428 <_Z11printStringPKc>
}
    800028d0:	01813083          	ld	ra,24(sp)
    800028d4:	01013403          	ld	s0,16(sp)
    800028d8:	00813483          	ld	s1,8(sp)
    800028dc:	00013903          	ld	s2,0(sp)
    800028e0:	02010113          	addi	sp,sp,32
    800028e4:	00008067          	ret

00000000800028e8 <_ZN19MemoryAllocatorTest13firstFitTest2Ev>:

bool MemoryAllocatorTest::firstFitTest2() {
    800028e8:	fc010113          	addi	sp,sp,-64
    800028ec:	02113c23          	sd	ra,56(sp)
    800028f0:	02813823          	sd	s0,48(sp)
    800028f4:	02913423          	sd	s1,40(sp)
    800028f8:	03213023          	sd	s2,32(sp)
    800028fc:	01313c23          	sd	s3,24(sp)
    80002900:	01413823          	sd	s4,16(sp)
    80002904:	01513423          	sd	s5,8(sp)
    80002908:	04010413          	addi	s0,sp,64
    8000290c:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    80002910:	00000097          	auipc	ra,0x0
    80002914:	974080e7          	jalr	-1676(ra) # 80002284 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002918:	02051463          	bnez	a0,80002940 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x58>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    8000291c:	03813083          	ld	ra,56(sp)
    80002920:	03013403          	ld	s0,48(sp)
    80002924:	02813483          	ld	s1,40(sp)
    80002928:	02013903          	ld	s2,32(sp)
    8000292c:	01813983          	ld	s3,24(sp)
    80002930:	01013a03          	ld	s4,16(sp)
    80002934:	00813a83          	ld	s5,8(sp)
    80002938:	04010113          	addi	sp,sp,64
    8000293c:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002940:	fffff097          	auipc	ra,0xfffff
    80002944:	240080e7          	jalr	576(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002948:	08200593          	li	a1,130
    8000294c:	fffff097          	auipc	ra,0xfffff
    80002950:	318080e7          	jalr	792(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80002954:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002958:	00008797          	auipc	a5,0x8
    8000295c:	dc87b783          	ld	a5,-568(a5) # 8000a720 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002960:	0007b783          	ld	a5,0(a5)
    80002964:	01078793          	addi	a5,a5,16
    80002968:	00a78663          	beq	a5,a0,80002974 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x8c>
        return false;
    8000296c:	00000513          	li	a0,0
    80002970:	fadff06f          	j	8000291c <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    80002974:	fffff097          	auipc	ra,0xfffff
    80002978:	20c080e7          	jalr	524(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    8000297c:	01400593          	li	a1,20
    80002980:	fffff097          	auipc	ra,0xfffff
    80002984:	2e4080e7          	jalr	740(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80002988:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 3 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    8000298c:	00008797          	auipc	a5,0x8
    80002990:	d947b783          	ld	a5,-620(a5) # 8000a720 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002994:	0007b783          	ld	a5,0(a5)
    80002998:	0d078793          	addi	a5,a5,208
    8000299c:	00a78663          	beq	a5,a0,800029a8 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0xc0>
        return false;
    800029a0:	00000513          	li	a0,0
    800029a4:	f79ff06f          	j	8000291c <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    800029a8:	fffff097          	auipc	ra,0xfffff
    800029ac:	1d8080e7          	jalr	472(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800029b0:	00090593          	mv	a1,s2
    800029b4:	fffff097          	auipc	ra,0xfffff
    800029b8:	358080e7          	jalr	856(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    800029bc:	fffff097          	auipc	ra,0xfffff
    800029c0:	1c4080e7          	jalr	452(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800029c4:	07800593          	li	a1,120
    800029c8:	fffff097          	auipc	ra,0xfffff
    800029cc:	29c080e7          	jalr	668(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    800029d0:	00050913          	mv	s2,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    800029d4:	00008797          	auipc	a5,0x8
    800029d8:	d4c7b783          	ld	a5,-692(a5) # 8000a720 <_GLOBAL_OFFSET_TABLE_+0x68>
    800029dc:	0007b783          	ld	a5,0(a5)
    800029e0:	01078793          	addi	a5,a5,16
    800029e4:	00a78663          	beq	a5,a0,800029f0 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x108>
        return false;
    800029e8:	00000513          	li	a0,0
    800029ec:	f31ff06f          	j	8000291c <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    800029f0:	fffff097          	auipc	ra,0xfffff
    800029f4:	190080e7          	jalr	400(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800029f8:	01e00593          	li	a1,30
    800029fc:	fffff097          	auipc	ra,0xfffff
    80002a00:	268080e7          	jalr	616(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80002a04:	00050a13          	mv	s4,a0
    if (pointers[3] != MemoryAllocator::managedMemorySpaceStart + 4 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002a08:	00008797          	auipc	a5,0x8
    80002a0c:	d187b783          	ld	a5,-744(a5) # 8000a720 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a10:	0007b783          	ld	a5,0(a5)
    80002a14:	11078793          	addi	a5,a5,272
    80002a18:	00a78663          	beq	a5,a0,80002a24 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x13c>
        return false;
    80002a1c:	00000513          	li	a0,0
    80002a20:	efdff06f          	j	8000291c <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002a24:	fffff097          	auipc	ra,0xfffff
    80002a28:	15c080e7          	jalr	348(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002a2c:	00090593          	mv	a1,s2
    80002a30:	fffff097          	auipc	ra,0xfffff
    80002a34:	2dc080e7          	jalr	732(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002a38:	fffff097          	auipc	ra,0xfffff
    80002a3c:	148080e7          	jalr	328(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002a40:	02f00593          	li	a1,47
    80002a44:	fffff097          	auipc	ra,0xfffff
    80002a48:	220080e7          	jalr	544(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80002a4c:	00050913          	mv	s2,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002a50:	00008797          	auipc	a5,0x8
    80002a54:	cd07b783          	ld	a5,-816(a5) # 8000a720 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a58:	0007b783          	ld	a5,0(a5)
    80002a5c:	01078793          	addi	a5,a5,16
    80002a60:	00a78663          	beq	a5,a0,80002a6c <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x184>
        return false;
    80002a64:	00000513          	li	a0,0
    80002a68:	eb5ff06f          	j	8000291c <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[5] = MemoryAllocator::instance()->kmem_alloc(sizes[5]);
    80002a6c:	fffff097          	auipc	ra,0xfffff
    80002a70:	114080e7          	jalr	276(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002a74:	01400593          	li	a1,20
    80002a78:	fffff097          	auipc	ra,0xfffff
    80002a7c:	1ec080e7          	jalr	492(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80002a80:	00050a93          	mv	s5,a0
    if (pointers[5] != MemoryAllocator::managedMemorySpaceStart + 1 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002a84:	00008797          	auipc	a5,0x8
    80002a88:	c9c7b783          	ld	a5,-868(a5) # 8000a720 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a8c:	0007b783          	ld	a5,0(a5)
    80002a90:	05078793          	addi	a5,a5,80
    80002a94:	00a78663          	beq	a5,a0,80002aa0 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x1b8>
        return false;
    80002a98:	00000513          	li	a0,0
    80002a9c:	e81ff06f          	j	8000291c <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    if (!testMemoryMetadataValidity()) return false;
    80002aa0:	00048513          	mv	a0,s1
    80002aa4:	fffff097          	auipc	ra,0xfffff
    80002aa8:	7e0080e7          	jalr	2016(ra) # 80002284 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002aac:	e60508e3          	beqz	a0,8000291c <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002ab0:	fffff097          	auipc	ra,0xfffff
    80002ab4:	0d0080e7          	jalr	208(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002ab8:	00098593          	mv	a1,s3
    80002abc:	fffff097          	auipc	ra,0xfffff
    80002ac0:	250080e7          	jalr	592(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002ac4:	fffff097          	auipc	ra,0xfffff
    80002ac8:	0bc080e7          	jalr	188(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002acc:	000a0593          	mv	a1,s4
    80002ad0:	fffff097          	auipc	ra,0xfffff
    80002ad4:	23c080e7          	jalr	572(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80002ad8:	fffff097          	auipc	ra,0xfffff
    80002adc:	0a8080e7          	jalr	168(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002ae0:	00090593          	mv	a1,s2
    80002ae4:	fffff097          	auipc	ra,0xfffff
    80002ae8:	228080e7          	jalr	552(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    80002aec:	fffff097          	auipc	ra,0xfffff
    80002af0:	094080e7          	jalr	148(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002af4:	000a8593          	mv	a1,s5
    80002af8:	fffff097          	auipc	ra,0xfffff
    80002afc:	214080e7          	jalr	532(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002b00:	00048513          	mv	a0,s1
    80002b04:	fffff097          	auipc	ra,0xfffff
    80002b08:	780080e7          	jalr	1920(ra) # 80002284 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002b0c:	e11ff06f          	j	8000291c <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>

0000000080002b10 <_ZN19MemoryAllocatorTest13firstFitTest3Ev>:


bool MemoryAllocatorTest::firstFitTest3() {
    80002b10:	fb010113          	addi	sp,sp,-80
    80002b14:	04113423          	sd	ra,72(sp)
    80002b18:	04813023          	sd	s0,64(sp)
    80002b1c:	02913c23          	sd	s1,56(sp)
    80002b20:	03213823          	sd	s2,48(sp)
    80002b24:	03313423          	sd	s3,40(sp)
    80002b28:	03413023          	sd	s4,32(sp)
    80002b2c:	01513c23          	sd	s5,24(sp)
    80002b30:	01613823          	sd	s6,16(sp)
    80002b34:	01713423          	sd	s7,8(sp)
    80002b38:	05010413          	addi	s0,sp,80
    80002b3c:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    80002b40:	fffff097          	auipc	ra,0xfffff
    80002b44:	744080e7          	jalr	1860(ra) # 80002284 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002b48:	02051863          	bnez	a0,80002b78 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x68>
    MemoryAllocator::instance()->kmem_free(pointers[6]);
    MemoryAllocator::instance()->kmem_free(pointers[7]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002b4c:	04813083          	ld	ra,72(sp)
    80002b50:	04013403          	ld	s0,64(sp)
    80002b54:	03813483          	ld	s1,56(sp)
    80002b58:	03013903          	ld	s2,48(sp)
    80002b5c:	02813983          	ld	s3,40(sp)
    80002b60:	02013a03          	ld	s4,32(sp)
    80002b64:	01813a83          	ld	s5,24(sp)
    80002b68:	01013b03          	ld	s6,16(sp)
    80002b6c:	00813b83          	ld	s7,8(sp)
    80002b70:	05010113          	addi	sp,sp,80
    80002b74:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002b78:	fffff097          	auipc	ra,0xfffff
    80002b7c:	008080e7          	jalr	8(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002b80:	13000593          	li	a1,304
    80002b84:	fffff097          	auipc	ra,0xfffff
    80002b88:	0e0080e7          	jalr	224(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80002b8c:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002b90:	00008797          	auipc	a5,0x8
    80002b94:	b907b783          	ld	a5,-1136(a5) # 8000a720 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b98:	0007b783          	ld	a5,0(a5)
    80002b9c:	01078793          	addi	a5,a5,16
    80002ba0:	00a78663          	beq	a5,a0,80002bac <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x9c>
        return false;
    80002ba4:	00000513          	li	a0,0
    80002ba8:	fa5ff06f          	j	80002b4c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    80002bac:	fffff097          	auipc	ra,0xfffff
    80002bb0:	fd4080e7          	jalr	-44(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002bb4:	03100593          	li	a1,49
    80002bb8:	fffff097          	auipc	ra,0xfffff
    80002bbc:	0ac080e7          	jalr	172(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80002bc0:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 5 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002bc4:	00008797          	auipc	a5,0x8
    80002bc8:	b5c7b783          	ld	a5,-1188(a5) # 8000a720 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002bcc:	0007b783          	ld	a5,0(a5)
    80002bd0:	15078793          	addi	a5,a5,336
    80002bd4:	00a78663          	beq	a5,a0,80002be0 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0xd0>
        return false;
    80002bd8:	00000513          	li	a0,0
    80002bdc:	f71ff06f          	j	80002b4c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    80002be0:	fffff097          	auipc	ra,0xfffff
    80002be4:	fa0080e7          	jalr	-96(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002be8:	00090593          	mv	a1,s2
    80002bec:	fffff097          	auipc	ra,0xfffff
    80002bf0:	120080e7          	jalr	288(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    80002bf4:	fffff097          	auipc	ra,0xfffff
    80002bf8:	f8c080e7          	jalr	-116(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002bfc:	0e600593          	li	a1,230
    80002c00:	fffff097          	auipc	ra,0xfffff
    80002c04:	064080e7          	jalr	100(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80002c08:	00050913          	mv	s2,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002c0c:	00008797          	auipc	a5,0x8
    80002c10:	b147b783          	ld	a5,-1260(a5) # 8000a720 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002c14:	0007b783          	ld	a5,0(a5)
    80002c18:	01078793          	addi	a5,a5,16
    80002c1c:	00a78663          	beq	a5,a0,80002c28 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x118>
        return false;
    80002c20:	00000513          	li	a0,0
    80002c24:	f29ff06f          	j	80002b4c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002c28:	fffff097          	auipc	ra,0xfffff
    80002c2c:	f58080e7          	jalr	-168(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002c30:	fdb00593          	li	a1,-37
    80002c34:	fffff097          	auipc	ra,0xfffff
    80002c38:	030080e7          	jalr	48(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80002c3c:	00050a13          	mv	s4,a0
    if (pointers[3]) return false;
    80002c40:	00050663          	beqz	a0,80002c4c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x13c>
    80002c44:	00000513          	li	a0,0
    80002c48:	f05ff06f          	j	80002b4c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002c4c:	fffff097          	auipc	ra,0xfffff
    80002c50:	f34080e7          	jalr	-204(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002c54:	01e00593          	li	a1,30
    80002c58:	fffff097          	auipc	ra,0xfffff
    80002c5c:	00c080e7          	jalr	12(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80002c60:	00050a93          	mv	s5,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + 7 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002c64:	00008797          	auipc	a5,0x8
    80002c68:	abc7b783          	ld	a5,-1348(a5) # 8000a720 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002c6c:	0007b783          	ld	a5,0(a5)
    80002c70:	1d078793          	addi	a5,a5,464
    80002c74:	00a78663          	beq	a5,a0,80002c80 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x170>
        return false;
    80002c78:	00000513          	li	a0,0
    80002c7c:	ed1ff06f          	j	80002b4c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002c80:	fffff097          	auipc	ra,0xfffff
    80002c84:	f00080e7          	jalr	-256(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002c88:	00090593          	mv	a1,s2
    80002c8c:	fffff097          	auipc	ra,0xfffff
    80002c90:	080080e7          	jalr	128(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[5] = MemoryAllocator::instance()->kmem_alloc(sizes[5]);
    80002c94:	fffff097          	auipc	ra,0xfffff
    80002c98:	eec080e7          	jalr	-276(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002c9c:	09600593          	li	a1,150
    80002ca0:	fffff097          	auipc	ra,0xfffff
    80002ca4:	fc4080e7          	jalr	-60(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80002ca8:	00050b93          	mv	s7,a0
    if (pointers[5] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002cac:	00008797          	auipc	a5,0x8
    80002cb0:	a747b783          	ld	a5,-1420(a5) # 8000a720 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002cb4:	0007b783          	ld	a5,0(a5)
    80002cb8:	01078793          	addi	a5,a5,16
    80002cbc:	00a78663          	beq	a5,a0,80002cc8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x1b8>
        return false;
    80002cc0:	00000513          	li	a0,0
    80002cc4:	e89ff06f          	j	80002b4c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[6] = MemoryAllocator::instance()->kmem_alloc(sizes[6]);
    80002cc8:	fffff097          	auipc	ra,0xfffff
    80002ccc:	eb8080e7          	jalr	-328(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002cd0:	02f00593          	li	a1,47
    80002cd4:	fffff097          	auipc	ra,0xfffff
    80002cd8:	f90080e7          	jalr	-112(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80002cdc:	00050b13          	mv	s6,a0
    if (pointers[6] != MemoryAllocator::managedMemorySpaceStart + 3 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002ce0:	00008797          	auipc	a5,0x8
    80002ce4:	a407b783          	ld	a5,-1472(a5) # 8000a720 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002ce8:	0007b783          	ld	a5,0(a5)
    80002cec:	0d078793          	addi	a5,a5,208
    80002cf0:	00a78663          	beq	a5,a0,80002cfc <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x1ec>
        return false;
    80002cf4:	00000513          	li	a0,0
    80002cf8:	e55ff06f          	j	80002b4c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[7] = MemoryAllocator::instance()->kmem_alloc(sizes[7]);
    80002cfc:	fffff097          	auipc	ra,0xfffff
    80002d00:	e84080e7          	jalr	-380(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002d04:	02500593          	li	a1,37
    80002d08:	fffff097          	auipc	ra,0xfffff
    80002d0c:	f5c080e7          	jalr	-164(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80002d10:	00050913          	mv	s2,a0
    if (pointers[7] != MemoryAllocator::managedMemorySpaceStart + 8 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002d14:	00008797          	auipc	a5,0x8
    80002d18:	a0c7b783          	ld	a5,-1524(a5) # 8000a720 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002d1c:	0007b783          	ld	a5,0(a5)
    80002d20:	21078793          	addi	a5,a5,528
    80002d24:	00a78663          	beq	a5,a0,80002d30 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x220>
        return false;
    80002d28:	00000513          	li	a0,0
    80002d2c:	e21ff06f          	j	80002b4c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    if (!testMemoryMetadataValidity()) return false;
    80002d30:	00048513          	mv	a0,s1
    80002d34:	fffff097          	auipc	ra,0xfffff
    80002d38:	550080e7          	jalr	1360(ra) # 80002284 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002d3c:	e00508e3          	beqz	a0,80002b4c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002d40:	fffff097          	auipc	ra,0xfffff
    80002d44:	e40080e7          	jalr	-448(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002d48:	00098593          	mv	a1,s3
    80002d4c:	fffff097          	auipc	ra,0xfffff
    80002d50:	fc0080e7          	jalr	-64(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002d54:	fffff097          	auipc	ra,0xfffff
    80002d58:	e2c080e7          	jalr	-468(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002d5c:	000a0593          	mv	a1,s4
    80002d60:	fffff097          	auipc	ra,0xfffff
    80002d64:	fac080e7          	jalr	-84(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80002d68:	fffff097          	auipc	ra,0xfffff
    80002d6c:	e18080e7          	jalr	-488(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002d70:	000a8593          	mv	a1,s5
    80002d74:	fffff097          	auipc	ra,0xfffff
    80002d78:	f98080e7          	jalr	-104(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    80002d7c:	fffff097          	auipc	ra,0xfffff
    80002d80:	e04080e7          	jalr	-508(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002d84:	000b8593          	mv	a1,s7
    80002d88:	fffff097          	auipc	ra,0xfffff
    80002d8c:	f84080e7          	jalr	-124(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[6]);
    80002d90:	fffff097          	auipc	ra,0xfffff
    80002d94:	df0080e7          	jalr	-528(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002d98:	000b0593          	mv	a1,s6
    80002d9c:	fffff097          	auipc	ra,0xfffff
    80002da0:	f70080e7          	jalr	-144(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[7]);
    80002da4:	fffff097          	auipc	ra,0xfffff
    80002da8:	ddc080e7          	jalr	-548(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80002dac:	00090593          	mv	a1,s2
    80002db0:	fffff097          	auipc	ra,0xfffff
    80002db4:	f5c080e7          	jalr	-164(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002db8:	00048513          	mv	a0,s1
    80002dbc:	fffff097          	auipc	ra,0xfffff
    80002dc0:	4c8080e7          	jalr	1224(ra) # 80002284 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002dc4:	d89ff06f          	j	80002b4c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>

0000000080002dc8 <_ZN19MemoryAllocatorTest12testFirstFitEv>:
bool MemoryAllocatorTest::testFirstFit() {
    80002dc8:	fe010113          	addi	sp,sp,-32
    80002dcc:	00113c23          	sd	ra,24(sp)
    80002dd0:	00813823          	sd	s0,16(sp)
    80002dd4:	00913423          	sd	s1,8(sp)
    80002dd8:	02010413          	addi	s0,sp,32
    80002ddc:	00050493          	mv	s1,a0
    if (!firstFitTest1()) return false;
    80002de0:	00000097          	auipc	ra,0x0
    80002de4:	854080e7          	jalr	-1964(ra) # 80002634 <_ZN19MemoryAllocatorTest13firstFitTest1Ev>
    80002de8:	00051c63          	bnez	a0,80002e00 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x38>
}
    80002dec:	01813083          	ld	ra,24(sp)
    80002df0:	01013403          	ld	s0,16(sp)
    80002df4:	00813483          	ld	s1,8(sp)
    80002df8:	02010113          	addi	sp,sp,32
    80002dfc:	00008067          	ret
    if (!firstFitTest2()) return false;
    80002e00:	00048513          	mv	a0,s1
    80002e04:	00000097          	auipc	ra,0x0
    80002e08:	ae4080e7          	jalr	-1308(ra) # 800028e8 <_ZN19MemoryAllocatorTest13firstFitTest2Ev>
    80002e0c:	fe0500e3          	beqz	a0,80002dec <_ZN19MemoryAllocatorTest12testFirstFitEv+0x24>
    if (!firstFitTest3()) return false;
    80002e10:	00048513          	mv	a0,s1
    80002e14:	00000097          	auipc	ra,0x0
    80002e18:	cfc080e7          	jalr	-772(ra) # 80002b10 <_ZN19MemoryAllocatorTest13firstFitTest3Ev>
    80002e1c:	fd1ff06f          	j	80002dec <_ZN19MemoryAllocatorTest12testFirstFitEv+0x24>

0000000080002e20 <_ZN19MemoryAllocatorTest25testSegmentDescriptorSizeEv>:

bool MemoryAllocatorTest::testSegmentDescriptorSize() {
    80002e20:	ff010113          	addi	sp,sp,-16
    80002e24:	00113423          	sd	ra,8(sp)
    80002e28:	00813023          	sd	s0,0(sp)
    80002e2c:	01010413          	addi	s0,sp,16
    if (!testMemoryMetadataValidity()) return false;
    80002e30:	fffff097          	auipc	ra,0xfffff
    80002e34:	454080e7          	jalr	1108(ra) # 80002284 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    return sizeof(MemoryAllocator::SegmentDescriptor) == 16;
}
    80002e38:	00813083          	ld	ra,8(sp)
    80002e3c:	00013403          	ld	s0,0(sp)
    80002e40:	01010113          	addi	sp,sp,16
    80002e44:	00008067          	ret

0000000080002e48 <_ZN19MemoryAllocatorTest8runTestsEv>:
bool MemoryAllocatorTest::runTests() {
    80002e48:	f6010113          	addi	sp,sp,-160
    80002e4c:	08113c23          	sd	ra,152(sp)
    80002e50:	08813823          	sd	s0,144(sp)
    80002e54:	08913423          	sd	s1,136(sp)
    80002e58:	09213023          	sd	s2,128(sp)
    80002e5c:	07313c23          	sd	s3,120(sp)
    80002e60:	0a010413          	addi	s0,sp,160
    80002e64:	00050993          	mv	s3,a0
    sizes[0] = 3.7 * MEM_BLOCK_SIZE;
    80002e68:	0ec00793          	li	a5,236
    80002e6c:	f6f43423          	sd	a5,-152(s0)
    sizes[1] = MEM_BLOCK_SIZE;
    80002e70:	04000793          	li	a5,64
    80002e74:	f6f43823          	sd	a5,-144(s0)
    sizes[2] = 0.3 * MEM_BLOCK_SIZE;
    80002e78:	01300793          	li	a5,19
    80002e7c:	f6f43c23          	sd	a5,-136(s0)
    sizes[3] = 0;
    80002e80:	f8043023          	sd	zero,-128(s0)
    sizes[4] = -37;
    80002e84:	fdb00793          	li	a5,-37
    80002e88:	f8f43423          	sd	a5,-120(s0)
    sizes[5] = sizeof(MemoryAllocator::SegmentDescriptor) - 1;
    80002e8c:	00f00793          	li	a5,15
    80002e90:	f8f43823          	sd	a5,-112(s0)
    sizes[6] = sizeof(MemoryAllocator::SegmentDescriptor);
    80002e94:	01000793          	li	a5,16
    80002e98:	f8f43c23          	sd	a5,-104(s0)
    sizes[7] = sizeof(MemoryAllocator::SegmentDescriptor) + 1;
    80002e9c:	01100793          	li	a5,17
    80002ea0:	faf43023          	sd	a5,-96(s0)
    sizes[8] = MemoryAllocator::minMemoryFragmentSize - 1;
    80002ea4:	00008797          	auipc	a5,0x8
    80002ea8:	8447b783          	ld	a5,-1980(a5) # 8000a6e8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002eac:	0007b783          	ld	a5,0(a5)
    80002eb0:	fff78713          	addi	a4,a5,-1
    80002eb4:	fae43423          	sd	a4,-88(s0)
    sizes[9] = MemoryAllocator::minMemoryFragmentSize;
    80002eb8:	faf43823          	sd	a5,-80(s0)
    sizes[10] = MemoryAllocator::minMemoryFragmentSize + 1;
    80002ebc:	00178793          	addi	a5,a5,1
    80002ec0:	faf43c23          	sd	a5,-72(s0)
    sizes[11] = MEM_BLOCK_SIZE - 1;
    80002ec4:	03f00793          	li	a5,63
    80002ec8:	fcf43023          	sd	a5,-64(s0)
    sizes[12] = MEM_BLOCK_SIZE + 1;
    80002ecc:	04100793          	li	a5,65
    80002ed0:	fcf43423          	sd	a5,-56(s0)
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    80002ed4:	00000493          	li	s1,0
    80002ed8:	0880006f          	j	80002f60 <_ZN19MemoryAllocatorTest8runTestsEv+0x118>
            printString("Failed testMemoryAllocate test for input ");
    80002edc:	00006517          	auipc	a0,0x6
    80002ee0:	56c50513          	addi	a0,a0,1388 # 80009448 <CONSOLE_STATUS+0x438>
    80002ee4:	00003097          	auipc	ra,0x3
    80002ee8:	544080e7          	jalr	1348(ra) # 80006428 <_Z11printStringPKc>
            printInteger(sizes[i]); printString("\n"); return false;
    80002eec:	00090513          	mv	a0,s2
    80002ef0:	00003097          	auipc	ra,0x3
    80002ef4:	5a8080e7          	jalr	1448(ra) # 80006498 <_Z12printIntegerm>
    80002ef8:	00006517          	auipc	a0,0x6
    80002efc:	22850513          	addi	a0,a0,552 # 80009120 <CONSOLE_STATUS+0x110>
    80002f00:	00003097          	auipc	ra,0x3
    80002f04:	528080e7          	jalr	1320(ra) # 80006428 <_Z11printStringPKc>
    80002f08:	00000493          	li	s1,0
}
    80002f0c:	00048513          	mv	a0,s1
    80002f10:	09813083          	ld	ra,152(sp)
    80002f14:	09013403          	ld	s0,144(sp)
    80002f18:	08813483          	ld	s1,136(sp)
    80002f1c:	08013903          	ld	s2,128(sp)
    80002f20:	07813983          	ld	s3,120(sp)
    80002f24:	0a010113          	addi	sp,sp,160
    80002f28:	00008067          	ret
            printString("Failed testMemoryFree test for input ");
    80002f2c:	00006517          	auipc	a0,0x6
    80002f30:	55450513          	addi	a0,a0,1364 # 80009480 <CONSOLE_STATUS+0x470>
    80002f34:	00003097          	auipc	ra,0x3
    80002f38:	4f4080e7          	jalr	1268(ra) # 80006428 <_Z11printStringPKc>
            printInteger(sizes[i]); printString("\n"); return false;
    80002f3c:	00090513          	mv	a0,s2
    80002f40:	00003097          	auipc	ra,0x3
    80002f44:	558080e7          	jalr	1368(ra) # 80006498 <_Z12printIntegerm>
    80002f48:	00006517          	auipc	a0,0x6
    80002f4c:	1d850513          	addi	a0,a0,472 # 80009120 <CONSOLE_STATUS+0x110>
    80002f50:	00003097          	auipc	ra,0x3
    80002f54:	4d8080e7          	jalr	1240(ra) # 80006428 <_Z11printStringPKc>
    80002f58:	fb1ff06f          	j	80002f08 <_ZN19MemoryAllocatorTest8runTestsEv+0xc0>
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    80002f5c:	0014849b          	addiw	s1,s1,1
    80002f60:	00c00793          	li	a5,12
    80002f64:	0897c863          	blt	a5,s1,80002ff4 <_ZN19MemoryAllocatorTest8runTestsEv+0x1ac>
        void * allocatedMemoryPointer = nullptr;
    80002f68:	f6043023          	sd	zero,-160(s0)
        if (!testMemoryAllocate(sizes[i], &allocatedMemoryPointer)) {
    80002f6c:	00349793          	slli	a5,s1,0x3
    80002f70:	fd040713          	addi	a4,s0,-48
    80002f74:	00f707b3          	add	a5,a4,a5
    80002f78:	f987b903          	ld	s2,-104(a5)
    80002f7c:	f6040613          	addi	a2,s0,-160
    80002f80:	00090593          	mv	a1,s2
    80002f84:	00098513          	mv	a0,s3
    80002f88:	fffff097          	auipc	ra,0xfffff
    80002f8c:	3b4080e7          	jalr	948(ra) # 8000233c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>
    80002f90:	f40506e3          	beqz	a0,80002edc <_ZN19MemoryAllocatorTest8runTestsEv+0x94>
        } else printString("Passed ");
    80002f94:	00006517          	auipc	a0,0x6
    80002f98:	4e450513          	addi	a0,a0,1252 # 80009478 <CONSOLE_STATUS+0x468>
    80002f9c:	00003097          	auipc	ra,0x3
    80002fa0:	48c080e7          	jalr	1164(ra) # 80006428 <_Z11printStringPKc>
        if (!testMemoryFree(sizes[i], allocatedMemoryPointer)) {
    80002fa4:	f6043603          	ld	a2,-160(s0)
    80002fa8:	00090593          	mv	a1,s2
    80002fac:	00098513          	mv	a0,s3
    80002fb0:	fffff097          	auipc	ra,0xfffff
    80002fb4:	50c080e7          	jalr	1292(ra) # 800024bc <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>
    80002fb8:	f6050ae3          	beqz	a0,80002f2c <_ZN19MemoryAllocatorTest8runTestsEv+0xe4>
        } else printString("Passed ");
    80002fbc:	00006517          	auipc	a0,0x6
    80002fc0:	4bc50513          	addi	a0,a0,1212 # 80009478 <CONSOLE_STATUS+0x468>
    80002fc4:	00003097          	auipc	ra,0x3
    80002fc8:	464080e7          	jalr	1124(ra) # 80006428 <_Z11printStringPKc>
        if (i != 0 && (i + 1) % 5 == 0) printString("\n");
    80002fcc:	f80488e3          	beqz	s1,80002f5c <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    80002fd0:	0014879b          	addiw	a5,s1,1
    80002fd4:	00500713          	li	a4,5
    80002fd8:	02e7e7bb          	remw	a5,a5,a4
    80002fdc:	f80790e3          	bnez	a5,80002f5c <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    80002fe0:	00006517          	auipc	a0,0x6
    80002fe4:	14050513          	addi	a0,a0,320 # 80009120 <CONSOLE_STATUS+0x110>
    80002fe8:	00003097          	auipc	ra,0x3
    80002fec:	440080e7          	jalr	1088(ra) # 80006428 <_Z11printStringPKc>
    80002ff0:	f6dff06f          	j	80002f5c <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    if (!testFirstFit()) {
    80002ff4:	00098513          	mv	a0,s3
    80002ff8:	00000097          	auipc	ra,0x0
    80002ffc:	dd0080e7          	jalr	-560(ra) # 80002dc8 <_ZN19MemoryAllocatorTest12testFirstFitEv>
    80003000:	00050493          	mv	s1,a0
    80003004:	02050e63          	beqz	a0,80003040 <_ZN19MemoryAllocatorTest8runTestsEv+0x1f8>
    else printString("Passed ");
    80003008:	00006517          	auipc	a0,0x6
    8000300c:	47050513          	addi	a0,a0,1136 # 80009478 <CONSOLE_STATUS+0x468>
    80003010:	00003097          	auipc	ra,0x3
    80003014:	418080e7          	jalr	1048(ra) # 80006428 <_Z11printStringPKc>
    if (!testSegmentDescriptorSize()) {
    80003018:	00098513          	mv	a0,s3
    8000301c:	00000097          	auipc	ra,0x0
    80003020:	e04080e7          	jalr	-508(ra) # 80002e20 <_ZN19MemoryAllocatorTest25testSegmentDescriptorSizeEv>
    80003024:	00050493          	mv	s1,a0
    80003028:	02050663          	beqz	a0,80003054 <_ZN19MemoryAllocatorTest8runTestsEv+0x20c>
    else printString("Passed\n");
    8000302c:	00006517          	auipc	a0,0x6
    80003030:	4bc50513          	addi	a0,a0,1212 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80003034:	00003097          	auipc	ra,0x3
    80003038:	3f4080e7          	jalr	1012(ra) # 80006428 <_Z11printStringPKc>
    8000303c:	ed1ff06f          	j	80002f0c <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>
        printString("Failed testFirstFit\n"); return false; }
    80003040:	00006517          	auipc	a0,0x6
    80003044:	46850513          	addi	a0,a0,1128 # 800094a8 <CONSOLE_STATUS+0x498>
    80003048:	00003097          	auipc	ra,0x3
    8000304c:	3e0080e7          	jalr	992(ra) # 80006428 <_Z11printStringPKc>
    80003050:	ebdff06f          	j	80002f0c <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>
        printString("Failed testSegmentDescriptorSize\n"); return false; }
    80003054:	00006517          	auipc	a0,0x6
    80003058:	46c50513          	addi	a0,a0,1132 # 800094c0 <CONSOLE_STATUS+0x4b0>
    8000305c:	00003097          	auipc	ra,0x3
    80003060:	3cc080e7          	jalr	972(ra) # 80006428 <_Z11printStringPKc>
    80003064:	ea9ff06f          	j	80002f0c <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>

0000000080003068 <_Znwm>:


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80003068:	ff010113          	addi	sp,sp,-16
    8000306c:	00113423          	sd	ra,8(sp)
    80003070:	00813023          	sd	s0,0(sp)
    80003074:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80003078:	00005097          	auipc	ra,0x5
    8000307c:	6b0080e7          	jalr	1712(ra) # 80008728 <__mem_alloc>
    //return MemoryAllocator::instance()->kmem_alloc(n);
}
    80003080:	00813083          	ld	ra,8(sp)
    80003084:	00013403          	ld	s0,0(sp)
    80003088:	01010113          	addi	sp,sp,16
    8000308c:	00008067          	ret

0000000080003090 <_Znam>:

void *operator new[](size_t n)
{
    80003090:	ff010113          	addi	sp,sp,-16
    80003094:	00113423          	sd	ra,8(sp)
    80003098:	00813023          	sd	s0,0(sp)
    8000309c:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    800030a0:	00005097          	auipc	ra,0x5
    800030a4:	688080e7          	jalr	1672(ra) # 80008728 <__mem_alloc>
    //return MemoryAllocator::instance()->kmem_alloc(n);
}
    800030a8:	00813083          	ld	ra,8(sp)
    800030ac:	00013403          	ld	s0,0(sp)
    800030b0:	01010113          	addi	sp,sp,16
    800030b4:	00008067          	ret

00000000800030b8 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    800030b8:	ff010113          	addi	sp,sp,-16
    800030bc:	00113423          	sd	ra,8(sp)
    800030c0:	00813023          	sd	s0,0(sp)
    800030c4:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800030c8:	00005097          	auipc	ra,0x5
    800030cc:	594080e7          	jalr	1428(ra) # 8000865c <__mem_free>
    //MemoryAllocator::instance()->kmem_free(p);
}
    800030d0:	00813083          	ld	ra,8(sp)
    800030d4:	00013403          	ld	s0,0(sp)
    800030d8:	01010113          	addi	sp,sp,16
    800030dc:	00008067          	ret

00000000800030e0 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    800030e0:	ff010113          	addi	sp,sp,-16
    800030e4:	00113423          	sd	ra,8(sp)
    800030e8:	00813023          	sd	s0,0(sp)
    800030ec:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800030f0:	00005097          	auipc	ra,0x5
    800030f4:	56c080e7          	jalr	1388(ra) # 8000865c <__mem_free>
    //MemoryAllocator::instance()->kmem_free(p);
    800030f8:	00813083          	ld	ra,8(sp)
    800030fc:	00013403          	ld	s0,0(sp)
    80003100:	01010113          	addi	sp,sp,16
    80003104:	00008067          	ret

0000000080003108 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>:
    }
    return false;
}

bool KObjectAllocatorTest::getValueOfBitAt(size_t byte, size_t bit, KObjectAllocator* objAlloc) {
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i) {
    80003108:	00000793          	li	a5,0
    8000310c:	0080006f          	j	80003114 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator+0xc>
    80003110:	00178793          	addi	a5,a5,1
    80003114:	0306b703          	ld	a4,48(a3)
    80003118:	04e7f263          	bgeu	a5,a4,8000315c <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator+0x54>
        if (i * objAlloc->memorySizeForBits <= byte && byte < (i + 1) * objAlloc->memorySizeForBits)
    8000311c:	0106b703          	ld	a4,16(a3)
    80003120:	02f70533          	mul	a0,a4,a5
    80003124:	fea5e6e3          	bltu	a1,a0,80003110 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator+0x8>
    80003128:	00178813          	addi	a6,a5,1
    8000312c:	03070733          	mul	a4,a4,a6
    80003130:	fee5f0e3          	bgeu	a1,a4,80003110 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator+0x8>
            return (objAlloc->bitVectors[i][byte - i * objAlloc->memorySizeForBits] >> bit & (uint8) 1) != 0;
    80003134:	0286b703          	ld	a4,40(a3)
    80003138:	00379793          	slli	a5,a5,0x3
    8000313c:	00f707b3          	add	a5,a4,a5
    80003140:	0007b783          	ld	a5,0(a5)
    80003144:	40a585b3          	sub	a1,a1,a0
    80003148:	00b785b3          	add	a1,a5,a1
    8000314c:	0005c503          	lbu	a0,0(a1)
    80003150:	40c5563b          	sraw	a2,a0,a2
    80003154:	00167513          	andi	a0,a2,1
    }
    printString("ERROR: byte not in given objAlloc\n");
    return false;
}
    80003158:	00008067          	ret
bool KObjectAllocatorTest::getValueOfBitAt(size_t byte, size_t bit, KObjectAllocator* objAlloc) {
    8000315c:	ff010113          	addi	sp,sp,-16
    80003160:	00113423          	sd	ra,8(sp)
    80003164:	00813023          	sd	s0,0(sp)
    80003168:	01010413          	addi	s0,sp,16
    printString("ERROR: byte not in given objAlloc\n");
    8000316c:	00006517          	auipc	a0,0x6
    80003170:	38450513          	addi	a0,a0,900 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80003174:	00003097          	auipc	ra,0x3
    80003178:	2b4080e7          	jalr	692(ra) # 80006428 <_Z11printStringPKc>
    return false;
    8000317c:	00000513          	li	a0,0
}
    80003180:	00813083          	ld	ra,8(sp)
    80003184:	00013403          	ld	s0,0(sp)
    80003188:	01010113          	addi	sp,sp,16
    8000318c:	00008067          	ret

0000000080003190 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>:

size_t KObjectAllocatorTest::getByteOfObject(void* obj, KObjectAllocator* objAlloc) {
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i) {
    80003190:	00000713          	li	a4,0
    80003194:	0080006f          	j	8000319c <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator+0xc>
    80003198:	00170713          	addi	a4,a4,1
    8000319c:	03063783          	ld	a5,48(a2)
    800031a0:	02f77e63          	bgeu	a4,a5,800031dc <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator+0x4c>
        if ((uint8*) obj < objAlloc->objectVectors[i]) continue;
    800031a4:	02063783          	ld	a5,32(a2)
    800031a8:	00371693          	slli	a3,a4,0x3
    800031ac:	00d787b3          	add	a5,a5,a3
    800031b0:	0007b783          	ld	a5,0(a5)
    800031b4:	fef5e2e3          	bltu	a1,a5,80003198 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator+0x8>
        size_t idiff = (size_t) ((uint8*) obj - objAlloc->objectVectors[i]);
    800031b8:	40f58533          	sub	a0,a1,a5
        size_t byte = idiff / objAlloc->objectSize / 8;
    800031bc:	01863783          	ld	a5,24(a2)
    800031c0:	02f55533          	divu	a0,a0,a5
    800031c4:	00355513          	srli	a0,a0,0x3
        if (byte >= objAlloc->memorySizeForBits) continue;
    800031c8:	01063783          	ld	a5,16(a2)
    800031cc:	fcf576e3          	bgeu	a0,a5,80003198 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator+0x8>
        return byte + i * objAlloc->memorySizeForBits;
    800031d0:	02e78733          	mul	a4,a5,a4
    800031d4:	00a70533          	add	a0,a4,a0
    }
    printString("ERROR: given object not allocated in given objAlloc\n");
    return 0;
}
    800031d8:	00008067          	ret
size_t KObjectAllocatorTest::getByteOfObject(void* obj, KObjectAllocator* objAlloc) {
    800031dc:	ff010113          	addi	sp,sp,-16
    800031e0:	00113423          	sd	ra,8(sp)
    800031e4:	00813023          	sd	s0,0(sp)
    800031e8:	01010413          	addi	s0,sp,16
    printString("ERROR: given object not allocated in given objAlloc\n");
    800031ec:	00006517          	auipc	a0,0x6
    800031f0:	32c50513          	addi	a0,a0,812 # 80009518 <CONSOLE_STATUS+0x508>
    800031f4:	00003097          	auipc	ra,0x3
    800031f8:	234080e7          	jalr	564(ra) # 80006428 <_Z11printStringPKc>
    return 0;
    800031fc:	00000513          	li	a0,0
}
    80003200:	00813083          	ld	ra,8(sp)
    80003204:	00013403          	ld	s0,0(sp)
    80003208:	01010113          	addi	sp,sp,16
    8000320c:	00008067          	ret

0000000080003210 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>:

size_t KObjectAllocatorTest::getBitOfObject(void* obj, KObjectAllocator* objAlloc) {
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i) {
    80003210:	00000713          	li	a4,0
    80003214:	0080006f          	j	8000321c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator+0xc>
    80003218:	00170713          	addi	a4,a4,1
    8000321c:	03063783          	ld	a5,48(a2)
    80003220:	04f77063          	bgeu	a4,a5,80003260 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator+0x50>
        if ((uint8*) obj < objAlloc->objectVectors[i]) continue;
    80003224:	02063783          	ld	a5,32(a2)
    80003228:	00371693          	slli	a3,a4,0x3
    8000322c:	00d787b3          	add	a5,a5,a3
    80003230:	0007b783          	ld	a5,0(a5)
    80003234:	fef5e2e3          	bltu	a1,a5,80003218 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator+0x8>
        size_t idiff = (size_t) ((uint8*) obj - objAlloc->objectVectors[i]);
    80003238:	40f587b3          	sub	a5,a1,a5
        size_t byte = idiff / objAlloc->objectSize / 8;
    8000323c:	01863503          	ld	a0,24(a2)
    80003240:	02a7d7b3          	divu	a5,a5,a0
    80003244:	0037d693          	srli	a3,a5,0x3
        if (byte >= objAlloc->memorySizeForBits) continue;
    80003248:	01063503          	ld	a0,16(a2)
    8000324c:	fca6f6e3          	bgeu	a3,a0,80003218 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator+0x8>
        size_t bit = idiff / objAlloc->objectSize - byte * 8;
    80003250:	ff87f513          	andi	a0,a5,-8
        return 7 - bit;
    80003254:	40f507b3          	sub	a5,a0,a5
    80003258:	00778513          	addi	a0,a5,7
    }
    printString("ERROR: given object not allocated in given objAlloc\n");
    return 0;
}
    8000325c:	00008067          	ret
size_t KObjectAllocatorTest::getBitOfObject(void* obj, KObjectAllocator* objAlloc) {
    80003260:	ff010113          	addi	sp,sp,-16
    80003264:	00113423          	sd	ra,8(sp)
    80003268:	00813023          	sd	s0,0(sp)
    8000326c:	01010413          	addi	s0,sp,16
    printString("ERROR: given object not allocated in given objAlloc\n");
    80003270:	00006517          	auipc	a0,0x6
    80003274:	2a850513          	addi	a0,a0,680 # 80009518 <CONSOLE_STATUS+0x508>
    80003278:	00003097          	auipc	ra,0x3
    8000327c:	1b0080e7          	jalr	432(ra) # 80006428 <_Z11printStringPKc>
    return 0;
    80003280:	00000513          	li	a0,0
}
    80003284:	00813083          	ld	ra,8(sp)
    80003288:	00013403          	ld	s0,0(sp)
    8000328c:	01010113          	addi	sp,sp,16
    80003290:	00008067          	ret

0000000080003294 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>:

void* KObjectAllocatorTest::getObjectAt(size_t byte, size_t bit, KObjectAllocator* objAlloc) {
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i)
    80003294:	00000793          	li	a5,0
    80003298:	0080006f          	j	800032a0 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator+0xc>
    8000329c:	00178793          	addi	a5,a5,1
    800032a0:	0306b703          	ld	a4,48(a3)
    800032a4:	04e7f663          	bgeu	a5,a4,800032f0 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator+0x5c>
        if (i * objAlloc->memorySizeForBits <= byte && byte < (i + 1) * objAlloc->memorySizeForBits)
    800032a8:	0106b703          	ld	a4,16(a3)
    800032ac:	02f70833          	mul	a6,a4,a5
    800032b0:	ff05e6e3          	bltu	a1,a6,8000329c <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator+0x8>
    800032b4:	00178893          	addi	a7,a5,1
    800032b8:	03170733          	mul	a4,a4,a7
    800032bc:	fee5f0e3          	bgeu	a1,a4,8000329c <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator+0x8>
            return &objAlloc->objectVectors[i][((byte - i * objAlloc->memorySizeForBits) * 8 + 7 - bit) * objAlloc->objectSize];
    800032c0:	0206b703          	ld	a4,32(a3)
    800032c4:	00379793          	slli	a5,a5,0x3
    800032c8:	00f707b3          	add	a5,a4,a5
    800032cc:	0007b783          	ld	a5,0(a5)
    800032d0:	410585b3          	sub	a1,a1,a6
    800032d4:	00359593          	slli	a1,a1,0x3
    800032d8:	40c58533          	sub	a0,a1,a2
    800032dc:	00750513          	addi	a0,a0,7
    800032e0:	0186b703          	ld	a4,24(a3)
    800032e4:	02e50533          	mul	a0,a0,a4
    800032e8:	00a78533          	add	a0,a5,a0
    printString("ERROR: given object not allocated in given objAlloc\n");
    return nullptr;
}
    800032ec:	00008067          	ret
void* KObjectAllocatorTest::getObjectAt(size_t byte, size_t bit, KObjectAllocator* objAlloc) {
    800032f0:	ff010113          	addi	sp,sp,-16
    800032f4:	00113423          	sd	ra,8(sp)
    800032f8:	00813023          	sd	s0,0(sp)
    800032fc:	01010413          	addi	s0,sp,16
    printString("ERROR: given object not allocated in given objAlloc\n");
    80003300:	00006517          	auipc	a0,0x6
    80003304:	21850513          	addi	a0,a0,536 # 80009518 <CONSOLE_STATUS+0x508>
    80003308:	00003097          	auipc	ra,0x3
    8000330c:	120080e7          	jalr	288(ra) # 80006428 <_Z11printStringPKc>
    return nullptr;
    80003310:	00000513          	li	a0,0
}
    80003314:	00813083          	ld	ra,8(sp)
    80003318:	00013403          	ld	s0,0(sp)
    8000331c:	01010113          	addi	sp,sp,16
    80003320:	00008067          	ret

0000000080003324 <_ZN20KObjectAllocatorTest5test0Em>:

bool KObjectAllocatorTest::test0(size_t size) {
    80003324:	f5010113          	addi	sp,sp,-176
    80003328:	0a113423          	sd	ra,168(sp)
    8000332c:	0a813023          	sd	s0,160(sp)
    80003330:	08913c23          	sd	s1,152(sp)
    80003334:	09213823          	sd	s2,144(sp)
    80003338:	09313423          	sd	s3,136(sp)
    8000333c:	09413023          	sd	s4,128(sp)
    80003340:	07513c23          	sd	s5,120(sp)
    80003344:	07613823          	sd	s6,112(sp)
    80003348:	07713423          	sd	s7,104(sp)
    8000334c:	0b010413          	addi	s0,sp,176
    80003350:	00050993          	mv	s3,a0
    80003354:	00058913          	mv	s2,a1
        );
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    }
    void* operator new(size_t size) {
        return MemoryAllocator::instance()->kmem_alloc(size);
    80003358:	fffff097          	auipc	ra,0xfffff
    8000335c:	828080e7          	jalr	-2008(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003360:	04000593          	li	a1,64
    80003364:	fffff097          	auipc	ra,0xfffff
    80003368:	900080e7          	jalr	-1792(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    8000336c:	00050493          	mv	s1,a0
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    80003370:	00900793          	li	a5,9
    80003374:	00f53023          	sd	a5,0(a0)
    80003378:	00f53423          	sd	a5,8(a0)
    8000337c:	01253c23          	sd	s2,24(a0)
    80003380:	00100793          	li	a5,1
    80003384:	02f53823          	sd	a5,48(a0)
    80003388:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    8000338c:	ffffe097          	auipc	ra,0xffffe
    80003390:	7f4080e7          	jalr	2036(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003394:	0304b583          	ld	a1,48(s1)
    80003398:	00359593          	slli	a1,a1,0x3
    8000339c:	fffff097          	auipc	ra,0xfffff
    800033a0:	8c8080e7          	jalr	-1848(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    800033a4:	02a4b423          	sd	a0,40(s1)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    800033a8:	ffffe097          	auipc	ra,0xffffe
    800033ac:	7d8080e7          	jalr	2008(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800033b0:	0304b583          	ld	a1,48(s1)
    800033b4:	00359593          	slli	a1,a1,0x3
    800033b8:	fffff097          	auipc	ra,0xfffff
    800033bc:	8ac080e7          	jalr	-1876(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    800033c0:	02a4b023          	sd	a0,32(s1)
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    800033c4:	0084b703          	ld	a4,8(s1)
    800033c8:	ff877793          	andi	a5,a4,-8
    800033cc:	02f70463          	beq	a4,a5,800033f4 <_ZN20KObjectAllocatorTest5test0Em+0xd0>
    800033d0:	00800713          	li	a4,8
    800033d4:	00e787b3          	add	a5,a5,a4
    800033d8:	00f4b423          	sd	a5,8(s1)
    800033dc:	00f4b023          	sd	a5,0(s1)
        memorySizeForBits = numberOfObjects / 8;
    800033e0:	0037d793          	srli	a5,a5,0x3
    800033e4:	00f4b823          	sd	a5,16(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    800033e8:	ffffe097          	auipc	ra,0xffffe
    800033ec:	798080e7          	jalr	1944(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800033f0:	00c0006f          	j	800033fc <_ZN20KObjectAllocatorTest5test0Em+0xd8>
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    800033f4:	00000713          	li	a4,0
    800033f8:	fddff06f          	j	800033d4 <_ZN20KObjectAllocatorTest5test0Em+0xb0>
                memorySizeForBits + initialNumberOfObjects * objectSize
    800033fc:	0104b583          	ld	a1,16(s1)
    80003400:	0004b783          	ld	a5,0(s1)
    80003404:	02f907b3          	mul	a5,s2,a5
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80003408:	0284ba03          	ld	s4,40(s1)
    8000340c:	00f585b3          	add	a1,a1,a5
    80003410:	fffff097          	auipc	ra,0xfffff
    80003414:	854080e7          	jalr	-1964(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80003418:	00aa3023          	sd	a0,0(s4)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    8000341c:	0284b783          	ld	a5,40(s1)
    80003420:	0007b783          	ld	a5,0(a5)
    80003424:	0104b683          	ld	a3,16(s1)
    80003428:	0204b703          	ld	a4,32(s1)
    8000342c:	00d787b3          	add	a5,a5,a3
    80003430:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    80003434:	00000793          	li	a5,0
    80003438:	0104b703          	ld	a4,16(s1)
    8000343c:	00e7fe63          	bgeu	a5,a4,80003458 <_ZN20KObjectAllocatorTest5test0Em+0x134>
    80003440:	0284b703          	ld	a4,40(s1)
    80003444:	00073703          	ld	a4,0(a4)
    80003448:	00f70733          	add	a4,a4,a5
    8000344c:	00070023          	sb	zero,0(a4)
    80003450:	00178793          	addi	a5,a5,1
    80003454:	fe5ff06f          	j	80003438 <_ZN20KObjectAllocatorTest5test0Em+0x114>
        MemoryAllocator::instance()->kmem_free(p);
    }
    void printInternalMemory();
    size_t getObjectSize() { return objectSize; }
    size_t getInitialNumberOfObjects() { return initialNumberOfObjects; }
    size_t getNumberOfObjects() { return numberOfObjects; }
    80003458:	0084b703          	ld	a4,8(s1)
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 9);
    if (objAlloc->getNumberOfObjects() != 16) { delete objAlloc; return false; }
    8000345c:	01000793          	li	a5,16
    80003460:	0af70663          	beq	a4,a5,8000350c <_ZN20KObjectAllocatorTest5test0Em+0x1e8>
    80003464:	06048a63          	beqz	s1,800034d8 <_ZN20KObjectAllocatorTest5test0Em+0x1b4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003468:	00000913          	li	s2,0
    8000346c:	0280006f          	j	80003494 <_ZN20KObjectAllocatorTest5test0Em+0x170>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003470:	ffffe097          	auipc	ra,0xffffe
    80003474:	710080e7          	jalr	1808(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003478:	0284b783          	ld	a5,40(s1)
    8000347c:	00391713          	slli	a4,s2,0x3
    80003480:	00e787b3          	add	a5,a5,a4
    80003484:	0007b583          	ld	a1,0(a5)
    80003488:	fffff097          	auipc	ra,0xfffff
    8000348c:	884080e7          	jalr	-1916(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003490:	00190913          	addi	s2,s2,1
    80003494:	0304b783          	ld	a5,48(s1)
    80003498:	fcf96ce3          	bltu	s2,a5,80003470 <_ZN20KObjectAllocatorTest5test0Em+0x14c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    8000349c:	ffffe097          	auipc	ra,0xffffe
    800034a0:	6e4080e7          	jalr	1764(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800034a4:	0284b583          	ld	a1,40(s1)
    800034a8:	fffff097          	auipc	ra,0xfffff
    800034ac:	864080e7          	jalr	-1948(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800034b0:	ffffe097          	auipc	ra,0xffffe
    800034b4:	6d0080e7          	jalr	1744(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800034b8:	0204b583          	ld	a1,32(s1)
    800034bc:	fffff097          	auipc	ra,0xfffff
    800034c0:	850080e7          	jalr	-1968(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800034c4:	ffffe097          	auipc	ra,0xffffe
    800034c8:	6bc080e7          	jalr	1724(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800034cc:	00048593          	mv	a1,s1
    800034d0:	fffff097          	auipc	ra,0xfffff
    800034d4:	83c080e7          	jalr	-1988(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    800034d8:	00000a13          	li	s4,0
        if (expectedBitValues[i] != getValueOfBitAt(byte, bit, objAlloc))
            { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    }
    delete objAlloc;
    return true;
}
    800034dc:	000a0513          	mv	a0,s4
    800034e0:	0a813083          	ld	ra,168(sp)
    800034e4:	0a013403          	ld	s0,160(sp)
    800034e8:	09813483          	ld	s1,152(sp)
    800034ec:	09013903          	ld	s2,144(sp)
    800034f0:	08813983          	ld	s3,136(sp)
    800034f4:	08013a03          	ld	s4,128(sp)
    800034f8:	07813a83          	ld	s5,120(sp)
    800034fc:	07013b03          	ld	s6,112(sp)
    80003500:	06813b83          	ld	s7,104(sp)
    80003504:	0b010113          	addi	sp,sp,176
    80003508:	00008067          	ret
    size_t getMemorySizeForBits() { return memorySizeForBits; }
    8000350c:	0104b703          	ld	a4,16(s1)
    if (objAlloc->getMemorySizeForBits() != 2) { delete objAlloc; return false; }
    80003510:	00200793          	li	a5,2
    80003514:	08f70063          	beq	a4,a5,80003594 <_ZN20KObjectAllocatorTest5test0Em+0x270>
    80003518:	06048a63          	beqz	s1,8000358c <_ZN20KObjectAllocatorTest5test0Em+0x268>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000351c:	00000913          	li	s2,0
    80003520:	0280006f          	j	80003548 <_ZN20KObjectAllocatorTest5test0Em+0x224>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003524:	ffffe097          	auipc	ra,0xffffe
    80003528:	65c080e7          	jalr	1628(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    8000352c:	0284b783          	ld	a5,40(s1)
    80003530:	00391713          	slli	a4,s2,0x3
    80003534:	00e787b3          	add	a5,a5,a4
    80003538:	0007b583          	ld	a1,0(a5)
    8000353c:	ffffe097          	auipc	ra,0xffffe
    80003540:	7d0080e7          	jalr	2000(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003544:	00190913          	addi	s2,s2,1
    80003548:	0304b783          	ld	a5,48(s1)
    8000354c:	fcf96ce3          	bltu	s2,a5,80003524 <_ZN20KObjectAllocatorTest5test0Em+0x200>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003550:	ffffe097          	auipc	ra,0xffffe
    80003554:	630080e7          	jalr	1584(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003558:	0284b583          	ld	a1,40(s1)
    8000355c:	ffffe097          	auipc	ra,0xffffe
    80003560:	7b0080e7          	jalr	1968(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003564:	ffffe097          	auipc	ra,0xffffe
    80003568:	61c080e7          	jalr	1564(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    8000356c:	0204b583          	ld	a1,32(s1)
    80003570:	ffffe097          	auipc	ra,0xffffe
    80003574:	79c080e7          	jalr	1948(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003578:	ffffe097          	auipc	ra,0xffffe
    8000357c:	608080e7          	jalr	1544(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003580:	00048593          	mv	a1,s1
    80003584:	ffffe097          	auipc	ra,0xffffe
    80003588:	788080e7          	jalr	1928(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    8000358c:	00000a13          	li	s4,0
    80003590:	f4dff06f          	j	800034dc <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    size_t getObjectSize() { return objectSize; }
    80003594:	0184b783          	ld	a5,24(s1)
    if (objAlloc->getObjectSize() != size) { delete objAlloc; return false; }
    80003598:	08f90063          	beq	s2,a5,80003618 <_ZN20KObjectAllocatorTest5test0Em+0x2f4>
    8000359c:	06048a63          	beqz	s1,80003610 <_ZN20KObjectAllocatorTest5test0Em+0x2ec>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800035a0:	00000913          	li	s2,0
    800035a4:	0304b783          	ld	a5,48(s1)
    800035a8:	02f97663          	bgeu	s2,a5,800035d4 <_ZN20KObjectAllocatorTest5test0Em+0x2b0>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800035ac:	ffffe097          	auipc	ra,0xffffe
    800035b0:	5d4080e7          	jalr	1492(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800035b4:	0284b783          	ld	a5,40(s1)
    800035b8:	00391713          	slli	a4,s2,0x3
    800035bc:	00e787b3          	add	a5,a5,a4
    800035c0:	0007b583          	ld	a1,0(a5)
    800035c4:	ffffe097          	auipc	ra,0xffffe
    800035c8:	748080e7          	jalr	1864(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800035cc:	00190913          	addi	s2,s2,1
    800035d0:	fd5ff06f          	j	800035a4 <_ZN20KObjectAllocatorTest5test0Em+0x280>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800035d4:	ffffe097          	auipc	ra,0xffffe
    800035d8:	5ac080e7          	jalr	1452(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800035dc:	0284b583          	ld	a1,40(s1)
    800035e0:	ffffe097          	auipc	ra,0xffffe
    800035e4:	72c080e7          	jalr	1836(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800035e8:	ffffe097          	auipc	ra,0xffffe
    800035ec:	598080e7          	jalr	1432(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800035f0:	0204b583          	ld	a1,32(s1)
    800035f4:	ffffe097          	auipc	ra,0xffffe
    800035f8:	718080e7          	jalr	1816(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800035fc:	ffffe097          	auipc	ra,0xffffe
    80003600:	584080e7          	jalr	1412(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003604:	00048593          	mv	a1,s1
    80003608:	ffffe097          	auipc	ra,0xffffe
    8000360c:	704080e7          	jalr	1796(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    80003610:	00000a13          	li	s4,0
    80003614:	ec9ff06f          	j	800034dc <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    void* objArr[10]; for (size_t i = 0; i < 10; objArr[i++] = objAlloc->allocateNewObject());
    80003618:	00000913          	li	s2,0
    8000361c:	00900793          	li	a5,9
    80003620:	0327e663          	bltu	a5,s2,8000364c <_ZN20KObjectAllocatorTest5test0Em+0x328>
    80003624:	00190a13          	addi	s4,s2,1
    80003628:	00048513          	mv	a0,s1
    8000362c:	00003097          	auipc	ra,0x3
    80003630:	a98080e7          	jalr	-1384(ra) # 800060c4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80003634:	00391913          	slli	s2,s2,0x3
    80003638:	fb040793          	addi	a5,s0,-80
    8000363c:	01278933          	add	s2,a5,s2
    80003640:	faa93823          	sd	a0,-80(s2)
    80003644:	000a0913          	mv	s2,s4
    80003648:	fd5ff06f          	j	8000361c <_ZN20KObjectAllocatorTest5test0Em+0x2f8>
    for (size_t i = 0; i < 10; ++i) {
    8000364c:	00000b13          	li	s6,0
    size_t byte = 0; size_t bit = 7;
    80003650:	00700913          	li	s2,7
    80003654:	00000a93          	li	s5,0
    80003658:	1840006f          	j	800037dc <_ZN20KObjectAllocatorTest5test0Em+0x4b8>
        if (objArr[i] != getObjectAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    8000365c:	06048a63          	beqz	s1,800036d0 <_ZN20KObjectAllocatorTest5test0Em+0x3ac>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003660:	00000913          	li	s2,0
    80003664:	0304b783          	ld	a5,48(s1)
    80003668:	02f97663          	bgeu	s2,a5,80003694 <_ZN20KObjectAllocatorTest5test0Em+0x370>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    8000366c:	ffffe097          	auipc	ra,0xffffe
    80003670:	514080e7          	jalr	1300(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003674:	0284b783          	ld	a5,40(s1)
    80003678:	00391713          	slli	a4,s2,0x3
    8000367c:	00e787b3          	add	a5,a5,a4
    80003680:	0007b583          	ld	a1,0(a5)
    80003684:	ffffe097          	auipc	ra,0xffffe
    80003688:	688080e7          	jalr	1672(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000368c:	00190913          	addi	s2,s2,1
    80003690:	fd5ff06f          	j	80003664 <_ZN20KObjectAllocatorTest5test0Em+0x340>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003694:	ffffe097          	auipc	ra,0xffffe
    80003698:	4ec080e7          	jalr	1260(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    8000369c:	0284b583          	ld	a1,40(s1)
    800036a0:	ffffe097          	auipc	ra,0xffffe
    800036a4:	66c080e7          	jalr	1644(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800036a8:	ffffe097          	auipc	ra,0xffffe
    800036ac:	4d8080e7          	jalr	1240(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800036b0:	0204b583          	ld	a1,32(s1)
    800036b4:	ffffe097          	auipc	ra,0xffffe
    800036b8:	658080e7          	jalr	1624(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800036bc:	ffffe097          	auipc	ra,0xffffe
    800036c0:	4c4080e7          	jalr	1220(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800036c4:	00048593          	mv	a1,s1
    800036c8:	ffffe097          	auipc	ra,0xffffe
    800036cc:	644080e7          	jalr	1604(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    800036d0:	00000a13          	li	s4,0
    800036d4:	e09ff06f          	j	800034dc <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        if (objByte != byte || objBit != bit) { delete objAlloc; return false; }
    800036d8:	06048a63          	beqz	s1,8000374c <_ZN20KObjectAllocatorTest5test0Em+0x428>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800036dc:	00000913          	li	s2,0
    800036e0:	0304b783          	ld	a5,48(s1)
    800036e4:	02f97663          	bgeu	s2,a5,80003710 <_ZN20KObjectAllocatorTest5test0Em+0x3ec>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800036e8:	ffffe097          	auipc	ra,0xffffe
    800036ec:	498080e7          	jalr	1176(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800036f0:	0284b783          	ld	a5,40(s1)
    800036f4:	00391713          	slli	a4,s2,0x3
    800036f8:	00e787b3          	add	a5,a5,a4
    800036fc:	0007b583          	ld	a1,0(a5)
    80003700:	ffffe097          	auipc	ra,0xffffe
    80003704:	60c080e7          	jalr	1548(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003708:	00190913          	addi	s2,s2,1
    8000370c:	fd5ff06f          	j	800036e0 <_ZN20KObjectAllocatorTest5test0Em+0x3bc>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003710:	ffffe097          	auipc	ra,0xffffe
    80003714:	470080e7          	jalr	1136(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003718:	0284b583          	ld	a1,40(s1)
    8000371c:	ffffe097          	auipc	ra,0xffffe
    80003720:	5f0080e7          	jalr	1520(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003724:	ffffe097          	auipc	ra,0xffffe
    80003728:	45c080e7          	jalr	1116(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    8000372c:	0204b583          	ld	a1,32(s1)
    80003730:	ffffe097          	auipc	ra,0xffffe
    80003734:	5dc080e7          	jalr	1500(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003738:	ffffe097          	auipc	ra,0xffffe
    8000373c:	448080e7          	jalr	1096(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003740:	00048593          	mv	a1,s1
    80003744:	ffffe097          	auipc	ra,0xffffe
    80003748:	5c8080e7          	jalr	1480(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    8000374c:	00000a13          	li	s4,0
    80003750:	d8dff06f          	j	800034dc <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        if (!getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003754:	d80484e3          	beqz	s1,800034dc <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003758:	00000913          	li	s2,0
    8000375c:	0280006f          	j	80003784 <_ZN20KObjectAllocatorTest5test0Em+0x460>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003760:	ffffe097          	auipc	ra,0xffffe
    80003764:	420080e7          	jalr	1056(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003768:	0284b783          	ld	a5,40(s1)
    8000376c:	00391713          	slli	a4,s2,0x3
    80003770:	00e787b3          	add	a5,a5,a4
    80003774:	0007b583          	ld	a1,0(a5)
    80003778:	ffffe097          	auipc	ra,0xffffe
    8000377c:	594080e7          	jalr	1428(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003780:	00190913          	addi	s2,s2,1
    80003784:	0304b783          	ld	a5,48(s1)
    80003788:	fcf96ce3          	bltu	s2,a5,80003760 <_ZN20KObjectAllocatorTest5test0Em+0x43c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    8000378c:	ffffe097          	auipc	ra,0xffffe
    80003790:	3f4080e7          	jalr	1012(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003794:	0284b583          	ld	a1,40(s1)
    80003798:	ffffe097          	auipc	ra,0xffffe
    8000379c:	574080e7          	jalr	1396(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800037a0:	ffffe097          	auipc	ra,0xffffe
    800037a4:	3e0080e7          	jalr	992(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800037a8:	0204b583          	ld	a1,32(s1)
    800037ac:	ffffe097          	auipc	ra,0xffffe
    800037b0:	560080e7          	jalr	1376(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800037b4:	ffffe097          	auipc	ra,0xffffe
    800037b8:	3cc080e7          	jalr	972(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800037bc:	00048593          	mv	a1,s1
    800037c0:	ffffe097          	auipc	ra,0xffffe
    800037c4:	54c080e7          	jalr	1356(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    800037c8:	d15ff06f          	j	800034dc <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    800037cc:	001a8a93          	addi	s5,s5,1
    800037d0:	00800913          	li	s2,8
    800037d4:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 10; ++i) {
    800037d8:	001b0b13          	addi	s6,s6,1
    800037dc:	00900793          	li	a5,9
    800037e0:	0967e663          	bltu	a5,s6,8000386c <_ZN20KObjectAllocatorTest5test0Em+0x548>
        if (objArr[i] != getObjectAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    800037e4:	003b1793          	slli	a5,s6,0x3
    800037e8:	fb040713          	addi	a4,s0,-80
    800037ec:	00f707b3          	add	a5,a4,a5
    800037f0:	fb07ba03          	ld	s4,-80(a5)
    800037f4:	00048693          	mv	a3,s1
    800037f8:	00090613          	mv	a2,s2
    800037fc:	000a8593          	mv	a1,s5
    80003800:	00098513          	mv	a0,s3
    80003804:	00000097          	auipc	ra,0x0
    80003808:	a90080e7          	jalr	-1392(ra) # 80003294 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>
    8000380c:	e4aa18e3          	bne	s4,a0,8000365c <_ZN20KObjectAllocatorTest5test0Em+0x338>
        size_t objByte = getByteOfObject(objArr[i], objAlloc);
    80003810:	00048613          	mv	a2,s1
    80003814:	000a0593          	mv	a1,s4
    80003818:	00098513          	mv	a0,s3
    8000381c:	00000097          	auipc	ra,0x0
    80003820:	974080e7          	jalr	-1676(ra) # 80003190 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    80003824:	00050b93          	mv	s7,a0
        size_t objBit = getBitOfObject(objArr[i], objAlloc);
    80003828:	00048613          	mv	a2,s1
    8000382c:	000a0593          	mv	a1,s4
    80003830:	00098513          	mv	a0,s3
    80003834:	00000097          	auipc	ra,0x0
    80003838:	9dc080e7          	jalr	-1572(ra) # 80003210 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
        if (objByte != byte || objBit != bit) { delete objAlloc; return false; }
    8000383c:	e97a9ee3          	bne	s5,s7,800036d8 <_ZN20KObjectAllocatorTest5test0Em+0x3b4>
    80003840:	e8a91ce3          	bne	s2,a0,800036d8 <_ZN20KObjectAllocatorTest5test0Em+0x3b4>
        if (!getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003844:	00048693          	mv	a3,s1
    80003848:	00090613          	mv	a2,s2
    8000384c:	000a8593          	mv	a1,s5
    80003850:	00098513          	mv	a0,s3
    80003854:	00000097          	auipc	ra,0x0
    80003858:	8b4080e7          	jalr	-1868(ra) # 80003108 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    8000385c:	00050a13          	mv	s4,a0
    80003860:	ee050ae3          	beqz	a0,80003754 <_ZN20KObjectAllocatorTest5test0Em+0x430>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80003864:	f60918e3          	bnez	s2,800037d4 <_ZN20KObjectAllocatorTest5test0Em+0x4b0>
    80003868:	f65ff06f          	j	800037cc <_ZN20KObjectAllocatorTest5test0Em+0x4a8>
    for (size_t i = 0; i < 6; ++i) {
    8000386c:	00000a13          	li	s4,0
    80003870:	0900006f          	j	80003900 <_ZN20KObjectAllocatorTest5test0Em+0x5dc>
        if (getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003874:	06048a63          	beqz	s1,800038e8 <_ZN20KObjectAllocatorTest5test0Em+0x5c4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003878:	00000913          	li	s2,0
    8000387c:	0304b783          	ld	a5,48(s1)
    80003880:	02f97663          	bgeu	s2,a5,800038ac <_ZN20KObjectAllocatorTest5test0Em+0x588>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003884:	ffffe097          	auipc	ra,0xffffe
    80003888:	2fc080e7          	jalr	764(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    8000388c:	0284b783          	ld	a5,40(s1)
    80003890:	00391713          	slli	a4,s2,0x3
    80003894:	00e787b3          	add	a5,a5,a4
    80003898:	0007b583          	ld	a1,0(a5)
    8000389c:	ffffe097          	auipc	ra,0xffffe
    800038a0:	470080e7          	jalr	1136(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800038a4:	00190913          	addi	s2,s2,1
    800038a8:	fd5ff06f          	j	8000387c <_ZN20KObjectAllocatorTest5test0Em+0x558>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800038ac:	ffffe097          	auipc	ra,0xffffe
    800038b0:	2d4080e7          	jalr	724(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800038b4:	0284b583          	ld	a1,40(s1)
    800038b8:	ffffe097          	auipc	ra,0xffffe
    800038bc:	454080e7          	jalr	1108(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800038c0:	ffffe097          	auipc	ra,0xffffe
    800038c4:	2c0080e7          	jalr	704(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800038c8:	0204b583          	ld	a1,32(s1)
    800038cc:	ffffe097          	auipc	ra,0xffffe
    800038d0:	440080e7          	jalr	1088(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800038d4:	ffffe097          	auipc	ra,0xffffe
    800038d8:	2ac080e7          	jalr	684(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800038dc:	00048593          	mv	a1,s1
    800038e0:	ffffe097          	auipc	ra,0xffffe
    800038e4:	42c080e7          	jalr	1068(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    800038e8:	00000a13          	li	s4,0
    800038ec:	bf1ff06f          	j	800034dc <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    800038f0:	001a8a93          	addi	s5,s5,1
    800038f4:	00800913          	li	s2,8
    800038f8:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 6; ++i) {
    800038fc:	001a0a13          	addi	s4,s4,1
    80003900:	00500793          	li	a5,5
    80003904:	0347e463          	bltu	a5,s4,8000392c <_ZN20KObjectAllocatorTest5test0Em+0x608>
        if (getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003908:	00048693          	mv	a3,s1
    8000390c:	00090613          	mv	a2,s2
    80003910:	000a8593          	mv	a1,s5
    80003914:	00098513          	mv	a0,s3
    80003918:	fffff097          	auipc	ra,0xfffff
    8000391c:	7f0080e7          	jalr	2032(ra) # 80003108 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80003920:	f4051ae3          	bnez	a0,80003874 <_ZN20KObjectAllocatorTest5test0Em+0x550>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80003924:	fc091ae3          	bnez	s2,800038f8 <_ZN20KObjectAllocatorTest5test0Em+0x5d4>
    80003928:	fc9ff06f          	j	800038f0 <_ZN20KObjectAllocatorTest5test0Em+0x5cc>
    objAlloc->freeObject(objArr[4]);
    8000392c:	f8043583          	ld	a1,-128(s0)
    80003930:	00048513          	mv	a0,s1
    80003934:	00002097          	auipc	ra,0x2
    80003938:	510080e7          	jalr	1296(ra) # 80005e44 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[7]);
    8000393c:	f9843583          	ld	a1,-104(s0)
    80003940:	00048513          	mv	a0,s1
    80003944:	00002097          	auipc	ra,0x2
    80003948:	500080e7          	jalr	1280(ra) # 80005e44 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[8]);
    8000394c:	fa043583          	ld	a1,-96(s0)
    80003950:	00048513          	mv	a0,s1
    80003954:	00002097          	auipc	ra,0x2
    80003958:	4f0080e7          	jalr	1264(ra) # 80005e44 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[4] = objAlloc->allocateNewObject();
    8000395c:	00048513          	mv	a0,s1
    80003960:	00002097          	auipc	ra,0x2
    80003964:	764080e7          	jalr	1892(ra) # 800060c4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80003968:	00050913          	mv	s2,a0
    if (objArr[4] != getObjectAt(1, 7, objAlloc)) { delete objAlloc; return false; }
    8000396c:	00048693          	mv	a3,s1
    80003970:	00700613          	li	a2,7
    80003974:	00100593          	li	a1,1
    80003978:	00098513          	mv	a0,s3
    8000397c:	00000097          	auipc	ra,0x0
    80003980:	918080e7          	jalr	-1768(ra) # 80003294 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>
    80003984:	08a90063          	beq	s2,a0,80003a04 <_ZN20KObjectAllocatorTest5test0Em+0x6e0>
    80003988:	06048a63          	beqz	s1,800039fc <_ZN20KObjectAllocatorTest5test0Em+0x6d8>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000398c:	00000913          	li	s2,0
    80003990:	0280006f          	j	800039b8 <_ZN20KObjectAllocatorTest5test0Em+0x694>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003994:	ffffe097          	auipc	ra,0xffffe
    80003998:	1ec080e7          	jalr	492(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    8000399c:	0284b783          	ld	a5,40(s1)
    800039a0:	00391713          	slli	a4,s2,0x3
    800039a4:	00e787b3          	add	a5,a5,a4
    800039a8:	0007b583          	ld	a1,0(a5)
    800039ac:	ffffe097          	auipc	ra,0xffffe
    800039b0:	360080e7          	jalr	864(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800039b4:	00190913          	addi	s2,s2,1
    800039b8:	0304b783          	ld	a5,48(s1)
    800039bc:	fcf96ce3          	bltu	s2,a5,80003994 <_ZN20KObjectAllocatorTest5test0Em+0x670>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800039c0:	ffffe097          	auipc	ra,0xffffe
    800039c4:	1c0080e7          	jalr	448(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800039c8:	0284b583          	ld	a1,40(s1)
    800039cc:	ffffe097          	auipc	ra,0xffffe
    800039d0:	340080e7          	jalr	832(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800039d4:	ffffe097          	auipc	ra,0xffffe
    800039d8:	1ac080e7          	jalr	428(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800039dc:	0204b583          	ld	a1,32(s1)
    800039e0:	ffffe097          	auipc	ra,0xffffe
    800039e4:	32c080e7          	jalr	812(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800039e8:	ffffe097          	auipc	ra,0xffffe
    800039ec:	198080e7          	jalr	408(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800039f0:	00048593          	mv	a1,s1
    800039f4:	ffffe097          	auipc	ra,0xffffe
    800039f8:	318080e7          	jalr	792(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    800039fc:	00000a13          	li	s4,0
    80003a00:	addff06f          	j	800034dc <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    byte = getByteOfObject(objArr[4], objAlloc);
    80003a04:	00048613          	mv	a2,s1
    80003a08:	00090593          	mv	a1,s2
    80003a0c:	00098513          	mv	a0,s3
    80003a10:	fffff097          	auipc	ra,0xfffff
    80003a14:	780080e7          	jalr	1920(ra) # 80003190 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    80003a18:	00050a13          	mv	s4,a0
    bit = getBitOfObject(objArr[4], objAlloc);
    80003a1c:	00048613          	mv	a2,s1
    80003a20:	00090593          	mv	a1,s2
    80003a24:	00098513          	mv	a0,s3
    80003a28:	fffff097          	auipc	ra,0xfffff
    80003a2c:	7e8080e7          	jalr	2024(ra) # 80003210 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80003a30:	00050913          	mv	s2,a0
    if (byte != 1 || bit != 7) { delete objAlloc; return false; }
    80003a34:	00100793          	li	a5,1
    80003a38:	00fa1663          	bne	s4,a5,80003a44 <_ZN20KObjectAllocatorTest5test0Em+0x720>
    80003a3c:	00700793          	li	a5,7
    80003a40:	08f50063          	beq	a0,a5,80003ac0 <_ZN20KObjectAllocatorTest5test0Em+0x79c>
    80003a44:	06048a63          	beqz	s1,80003ab8 <_ZN20KObjectAllocatorTest5test0Em+0x794>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003a48:	00000913          	li	s2,0
    80003a4c:	0280006f          	j	80003a74 <_ZN20KObjectAllocatorTest5test0Em+0x750>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003a50:	ffffe097          	auipc	ra,0xffffe
    80003a54:	130080e7          	jalr	304(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003a58:	0284b783          	ld	a5,40(s1)
    80003a5c:	00391713          	slli	a4,s2,0x3
    80003a60:	00e787b3          	add	a5,a5,a4
    80003a64:	0007b583          	ld	a1,0(a5)
    80003a68:	ffffe097          	auipc	ra,0xffffe
    80003a6c:	2a4080e7          	jalr	676(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003a70:	00190913          	addi	s2,s2,1
    80003a74:	0304b783          	ld	a5,48(s1)
    80003a78:	fcf96ce3          	bltu	s2,a5,80003a50 <_ZN20KObjectAllocatorTest5test0Em+0x72c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003a7c:	ffffe097          	auipc	ra,0xffffe
    80003a80:	104080e7          	jalr	260(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003a84:	0284b583          	ld	a1,40(s1)
    80003a88:	ffffe097          	auipc	ra,0xffffe
    80003a8c:	284080e7          	jalr	644(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003a90:	ffffe097          	auipc	ra,0xffffe
    80003a94:	0f0080e7          	jalr	240(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003a98:	0204b583          	ld	a1,32(s1)
    80003a9c:	ffffe097          	auipc	ra,0xffffe
    80003aa0:	270080e7          	jalr	624(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003aa4:	ffffe097          	auipc	ra,0xffffe
    80003aa8:	0dc080e7          	jalr	220(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003aac:	00048593          	mv	a1,s1
    80003ab0:	ffffe097          	auipc	ra,0xffffe
    80003ab4:	25c080e7          	jalr	604(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    80003ab8:	00000a13          	li	s4,0
    80003abc:	a21ff06f          	j	800034dc <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    bool expectedBitValues[16] = {
    80003ac0:	00006797          	auipc	a5,0x6
    80003ac4:	ab078793          	addi	a5,a5,-1360 # 80009570 <CONSOLE_STATUS+0x560>
    80003ac8:	0007b703          	ld	a4,0(a5)
    80003acc:	f4e43823          	sd	a4,-176(s0)
    80003ad0:	0087b783          	ld	a5,8(a5)
    80003ad4:	f4f43c23          	sd	a5,-168(s0)
    for (size_t i = 0; i < 16; ++i) {
    80003ad8:	00000a13          	li	s4,0
    byte = 0; bit = 7;
    80003adc:	00000a93          	li	s5,0
    80003ae0:	02c0006f          	j	80003b0c <_ZN20KObjectAllocatorTest5test0Em+0x7e8>
            { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    80003ae4:	00048863          	beqz	s1,80003af4 <_ZN20KObjectAllocatorTest5test0Em+0x7d0>
    80003ae8:	00048513          	mv	a0,s1
    80003aec:	00002097          	auipc	ra,0x2
    80003af0:	f10080e7          	jalr	-240(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    80003af4:	00000a13          	li	s4,0
    80003af8:	9e5ff06f          	j	800034dc <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    80003afc:	001a8a93          	addi	s5,s5,1
    80003b00:	00800913          	li	s2,8
    80003b04:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 16; ++i) {
    80003b08:	001a0a13          	addi	s4,s4,1
    80003b0c:	00f00793          	li	a5,15
    80003b10:	0347ea63          	bltu	a5,s4,80003b44 <_ZN20KObjectAllocatorTest5test0Em+0x820>
        if (expectedBitValues[i] != getValueOfBitAt(byte, bit, objAlloc))
    80003b14:	fb040793          	addi	a5,s0,-80
    80003b18:	014787b3          	add	a5,a5,s4
    80003b1c:	fa07cb03          	lbu	s6,-96(a5)
    80003b20:	00048693          	mv	a3,s1
    80003b24:	00090613          	mv	a2,s2
    80003b28:	000a8593          	mv	a1,s5
    80003b2c:	00098513          	mv	a0,s3
    80003b30:	fffff097          	auipc	ra,0xfffff
    80003b34:	5d8080e7          	jalr	1496(ra) # 80003108 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80003b38:	faab16e3          	bne	s6,a0,80003ae4 <_ZN20KObjectAllocatorTest5test0Em+0x7c0>
            { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    80003b3c:	fc0914e3          	bnez	s2,80003b04 <_ZN20KObjectAllocatorTest5test0Em+0x7e0>
    80003b40:	fbdff06f          	j	80003afc <_ZN20KObjectAllocatorTest5test0Em+0x7d8>
    delete objAlloc;
    80003b44:	06048e63          	beqz	s1,80003bc0 <_ZN20KObjectAllocatorTest5test0Em+0x89c>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003b48:	00000913          	li	s2,0
    80003b4c:	0280006f          	j	80003b74 <_ZN20KObjectAllocatorTest5test0Em+0x850>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003b50:	ffffe097          	auipc	ra,0xffffe
    80003b54:	030080e7          	jalr	48(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003b58:	0284b783          	ld	a5,40(s1)
    80003b5c:	00391713          	slli	a4,s2,0x3
    80003b60:	00e787b3          	add	a5,a5,a4
    80003b64:	0007b583          	ld	a1,0(a5)
    80003b68:	ffffe097          	auipc	ra,0xffffe
    80003b6c:	1a4080e7          	jalr	420(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003b70:	00190913          	addi	s2,s2,1
    80003b74:	0304b783          	ld	a5,48(s1)
    80003b78:	fcf96ce3          	bltu	s2,a5,80003b50 <_ZN20KObjectAllocatorTest5test0Em+0x82c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003b7c:	ffffe097          	auipc	ra,0xffffe
    80003b80:	004080e7          	jalr	4(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003b84:	0284b583          	ld	a1,40(s1)
    80003b88:	ffffe097          	auipc	ra,0xffffe
    80003b8c:	184080e7          	jalr	388(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003b90:	ffffe097          	auipc	ra,0xffffe
    80003b94:	ff0080e7          	jalr	-16(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003b98:	0204b583          	ld	a1,32(s1)
    80003b9c:	ffffe097          	auipc	ra,0xffffe
    80003ba0:	170080e7          	jalr	368(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003ba4:	ffffe097          	auipc	ra,0xffffe
    80003ba8:	fdc080e7          	jalr	-36(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003bac:	00048593          	mv	a1,s1
    80003bb0:	ffffe097          	auipc	ra,0xffffe
    80003bb4:	15c080e7          	jalr	348(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    return true;
    80003bb8:	00100a13          	li	s4,1
    }
    80003bbc:	921ff06f          	j	800034dc <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    80003bc0:	00100a13          	li	s4,1
    80003bc4:	919ff06f          	j	800034dc <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    80003bc8:	00050913          	mv	s2,a0
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 9);
    80003bcc:	00048513          	mv	a0,s1
    80003bd0:	00002097          	auipc	ra,0x2
    80003bd4:	e2c080e7          	jalr	-468(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    80003bd8:	00090513          	mv	a0,s2
    80003bdc:	00008097          	auipc	ra,0x8
    80003be0:	c9c080e7          	jalr	-868(ra) # 8000b878 <_Unwind_Resume>

0000000080003be4 <_ZN20KObjectAllocatorTest5test1Em>:

bool KObjectAllocatorTest::test1(size_t size) {
    80003be4:	81010113          	addi	sp,sp,-2032
    80003be8:	7e113423          	sd	ra,2024(sp)
    80003bec:	7e813023          	sd	s0,2016(sp)
    80003bf0:	7c913c23          	sd	s1,2008(sp)
    80003bf4:	7d213823          	sd	s2,2000(sp)
    80003bf8:	7d313423          	sd	s3,1992(sp)
    80003bfc:	7d413023          	sd	s4,1984(sp)
    80003c00:	7b513c23          	sd	s5,1976(sp)
    80003c04:	7f010413          	addi	s0,sp,2032
    80003c08:	db010113          	addi	sp,sp,-592
    80003c0c:	00050993          	mv	s3,a0
    80003c10:	00058913          	mv	s2,a1
        return MemoryAllocator::instance()->kmem_alloc(size);
    80003c14:	ffffe097          	auipc	ra,0xffffe
    80003c18:	f6c080e7          	jalr	-148(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003c1c:	04000593          	li	a1,64
    80003c20:	ffffe097          	auipc	ra,0xffffe
    80003c24:	044080e7          	jalr	68(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80003c28:	00050493          	mv	s1,a0
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    80003c2c:	14000793          	li	a5,320
    80003c30:	00f53023          	sd	a5,0(a0)
    80003c34:	00f53423          	sd	a5,8(a0)
    80003c38:	01253c23          	sd	s2,24(a0)
    80003c3c:	00100793          	li	a5,1
    80003c40:	02f53823          	sd	a5,48(a0)
    80003c44:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80003c48:	ffffe097          	auipc	ra,0xffffe
    80003c4c:	f38080e7          	jalr	-200(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003c50:	0304b583          	ld	a1,48(s1)
    80003c54:	00359593          	slli	a1,a1,0x3
    80003c58:	ffffe097          	auipc	ra,0xffffe
    80003c5c:	00c080e7          	jalr	12(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80003c60:	02a4b423          	sd	a0,40(s1)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80003c64:	ffffe097          	auipc	ra,0xffffe
    80003c68:	f1c080e7          	jalr	-228(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003c6c:	0304b583          	ld	a1,48(s1)
    80003c70:	00359593          	slli	a1,a1,0x3
    80003c74:	ffffe097          	auipc	ra,0xffffe
    80003c78:	ff0080e7          	jalr	-16(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80003c7c:	02a4b023          	sd	a0,32(s1)
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80003c80:	0084b703          	ld	a4,8(s1)
    80003c84:	ff877793          	andi	a5,a4,-8
    80003c88:	02f70463          	beq	a4,a5,80003cb0 <_ZN20KObjectAllocatorTest5test1Em+0xcc>
    80003c8c:	00800713          	li	a4,8
    80003c90:	00e787b3          	add	a5,a5,a4
    80003c94:	00f4b423          	sd	a5,8(s1)
    80003c98:	00f4b023          	sd	a5,0(s1)
        memorySizeForBits = numberOfObjects / 8;
    80003c9c:	0037d793          	srli	a5,a5,0x3
    80003ca0:	00f4b823          	sd	a5,16(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80003ca4:	ffffe097          	auipc	ra,0xffffe
    80003ca8:	edc080e7          	jalr	-292(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003cac:	00c0006f          	j	80003cb8 <_ZN20KObjectAllocatorTest5test1Em+0xd4>
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80003cb0:	00000713          	li	a4,0
    80003cb4:	fddff06f          	j	80003c90 <_ZN20KObjectAllocatorTest5test1Em+0xac>
                memorySizeForBits + initialNumberOfObjects * objectSize
    80003cb8:	0104b583          	ld	a1,16(s1)
    80003cbc:	0004b783          	ld	a5,0(s1)
    80003cc0:	02f907b3          	mul	a5,s2,a5
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80003cc4:	0284ba03          	ld	s4,40(s1)
    80003cc8:	00f585b3          	add	a1,a1,a5
    80003ccc:	ffffe097          	auipc	ra,0xffffe
    80003cd0:	f98080e7          	jalr	-104(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80003cd4:	00aa3023          	sd	a0,0(s4)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    80003cd8:	0284b783          	ld	a5,40(s1)
    80003cdc:	0007b783          	ld	a5,0(a5)
    80003ce0:	0104b683          	ld	a3,16(s1)
    80003ce4:	0204b703          	ld	a4,32(s1)
    80003ce8:	00d787b3          	add	a5,a5,a3
    80003cec:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    80003cf0:	00000793          	li	a5,0
    80003cf4:	0104b703          	ld	a4,16(s1)
    80003cf8:	00e7fe63          	bgeu	a5,a4,80003d14 <_ZN20KObjectAllocatorTest5test1Em+0x130>
    80003cfc:	0284b703          	ld	a4,40(s1)
    80003d00:	00073703          	ld	a4,0(a4)
    80003d04:	00f70733          	add	a4,a4,a5
    80003d08:	00070023          	sb	zero,0(a4)
    80003d0c:	00178793          	addi	a5,a5,1
    80003d10:	fe5ff06f          	j	80003cf4 <_ZN20KObjectAllocatorTest5test1Em+0x110>
    size_t getNumberOfObjects() { return numberOfObjects; }
    80003d14:	0084b703          	ld	a4,8(s1)
    KObjectAllocator* objAlloc = new KObjectAllocator(size);
    if (objAlloc->getNumberOfObjects() != 320) { delete objAlloc; return false; }
    80003d18:	14000793          	li	a5,320
    80003d1c:	0af70263          	beq	a4,a5,80003dc0 <_ZN20KObjectAllocatorTest5test1Em+0x1dc>
    80003d20:	06048a63          	beqz	s1,80003d94 <_ZN20KObjectAllocatorTest5test1Em+0x1b0>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003d24:	00000913          	li	s2,0
    80003d28:	0304b783          	ld	a5,48(s1)
    80003d2c:	02f97663          	bgeu	s2,a5,80003d58 <_ZN20KObjectAllocatorTest5test1Em+0x174>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003d30:	ffffe097          	auipc	ra,0xffffe
    80003d34:	e50080e7          	jalr	-432(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003d38:	0284b783          	ld	a5,40(s1)
    80003d3c:	00391713          	slli	a4,s2,0x3
    80003d40:	00e787b3          	add	a5,a5,a4
    80003d44:	0007b583          	ld	a1,0(a5)
    80003d48:	ffffe097          	auipc	ra,0xffffe
    80003d4c:	fc4080e7          	jalr	-60(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003d50:	00190913          	addi	s2,s2,1
    80003d54:	fd5ff06f          	j	80003d28 <_ZN20KObjectAllocatorTest5test1Em+0x144>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003d58:	ffffe097          	auipc	ra,0xffffe
    80003d5c:	e28080e7          	jalr	-472(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003d60:	0284b583          	ld	a1,40(s1)
    80003d64:	ffffe097          	auipc	ra,0xffffe
    80003d68:	fa8080e7          	jalr	-88(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003d6c:	ffffe097          	auipc	ra,0xffffe
    80003d70:	e14080e7          	jalr	-492(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003d74:	0204b583          	ld	a1,32(s1)
    80003d78:	ffffe097          	auipc	ra,0xffffe
    80003d7c:	f94080e7          	jalr	-108(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003d80:	ffffe097          	auipc	ra,0xffffe
    80003d84:	e00080e7          	jalr	-512(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003d88:	00048593          	mv	a1,s1
    80003d8c:	ffffe097          	auipc	ra,0xffffe
    80003d90:	f80080e7          	jalr	-128(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    80003d94:	00000513          	li	a0,0
        { delete objAlloc; return false; }
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    }
    delete objAlloc;
    return true;
}
    80003d98:	25010113          	addi	sp,sp,592
    80003d9c:	7e813083          	ld	ra,2024(sp)
    80003da0:	7e013403          	ld	s0,2016(sp)
    80003da4:	7d813483          	ld	s1,2008(sp)
    80003da8:	7d013903          	ld	s2,2000(sp)
    80003dac:	7c813983          	ld	s3,1992(sp)
    80003db0:	7c013a03          	ld	s4,1984(sp)
    80003db4:	7b813a83          	ld	s5,1976(sp)
    80003db8:	7f010113          	addi	sp,sp,2032
    80003dbc:	00008067          	ret
    size_t getMemorySizeForBits() { return memorySizeForBits; }
    80003dc0:	0104b703          	ld	a4,16(s1)
    if (objAlloc->getMemorySizeForBits() != 40) { delete objAlloc; return false; }
    80003dc4:	02800793          	li	a5,40
    80003dc8:	08f70063          	beq	a4,a5,80003e48 <_ZN20KObjectAllocatorTest5test1Em+0x264>
    80003dcc:	06048a63          	beqz	s1,80003e40 <_ZN20KObjectAllocatorTest5test1Em+0x25c>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003dd0:	00000913          	li	s2,0
    80003dd4:	0304b783          	ld	a5,48(s1)
    80003dd8:	02f97663          	bgeu	s2,a5,80003e04 <_ZN20KObjectAllocatorTest5test1Em+0x220>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003ddc:	ffffe097          	auipc	ra,0xffffe
    80003de0:	da4080e7          	jalr	-604(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003de4:	0284b783          	ld	a5,40(s1)
    80003de8:	00391713          	slli	a4,s2,0x3
    80003dec:	00e787b3          	add	a5,a5,a4
    80003df0:	0007b583          	ld	a1,0(a5)
    80003df4:	ffffe097          	auipc	ra,0xffffe
    80003df8:	f18080e7          	jalr	-232(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003dfc:	00190913          	addi	s2,s2,1
    80003e00:	fd5ff06f          	j	80003dd4 <_ZN20KObjectAllocatorTest5test1Em+0x1f0>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003e04:	ffffe097          	auipc	ra,0xffffe
    80003e08:	d7c080e7          	jalr	-644(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003e0c:	0284b583          	ld	a1,40(s1)
    80003e10:	ffffe097          	auipc	ra,0xffffe
    80003e14:	efc080e7          	jalr	-260(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003e18:	ffffe097          	auipc	ra,0xffffe
    80003e1c:	d68080e7          	jalr	-664(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003e20:	0204b583          	ld	a1,32(s1)
    80003e24:	ffffe097          	auipc	ra,0xffffe
    80003e28:	ee8080e7          	jalr	-280(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003e2c:	ffffe097          	auipc	ra,0xffffe
    80003e30:	d54080e7          	jalr	-684(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003e34:	00048593          	mv	a1,s1
    80003e38:	ffffe097          	auipc	ra,0xffffe
    80003e3c:	ed4080e7          	jalr	-300(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    80003e40:	00000513          	li	a0,0
    80003e44:	f55ff06f          	j	80003d98 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    size_t getObjectSize() { return objectSize; }
    80003e48:	0184b783          	ld	a5,24(s1)
    if (objAlloc->getObjectSize() != size) { delete objAlloc; return false; }
    80003e4c:	08f90063          	beq	s2,a5,80003ecc <_ZN20KObjectAllocatorTest5test1Em+0x2e8>
    80003e50:	06048a63          	beqz	s1,80003ec4 <_ZN20KObjectAllocatorTest5test1Em+0x2e0>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003e54:	00000913          	li	s2,0
    80003e58:	0304b783          	ld	a5,48(s1)
    80003e5c:	02f97663          	bgeu	s2,a5,80003e88 <_ZN20KObjectAllocatorTest5test1Em+0x2a4>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003e60:	ffffe097          	auipc	ra,0xffffe
    80003e64:	d20080e7          	jalr	-736(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003e68:	0284b783          	ld	a5,40(s1)
    80003e6c:	00391713          	slli	a4,s2,0x3
    80003e70:	00e787b3          	add	a5,a5,a4
    80003e74:	0007b583          	ld	a1,0(a5)
    80003e78:	ffffe097          	auipc	ra,0xffffe
    80003e7c:	e94080e7          	jalr	-364(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003e80:	00190913          	addi	s2,s2,1
    80003e84:	fd5ff06f          	j	80003e58 <_ZN20KObjectAllocatorTest5test1Em+0x274>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003e88:	ffffe097          	auipc	ra,0xffffe
    80003e8c:	cf8080e7          	jalr	-776(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003e90:	0284b583          	ld	a1,40(s1)
    80003e94:	ffffe097          	auipc	ra,0xffffe
    80003e98:	e78080e7          	jalr	-392(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003e9c:	ffffe097          	auipc	ra,0xffffe
    80003ea0:	ce4080e7          	jalr	-796(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003ea4:	0204b583          	ld	a1,32(s1)
    80003ea8:	ffffe097          	auipc	ra,0xffffe
    80003eac:	e64080e7          	jalr	-412(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003eb0:	ffffe097          	auipc	ra,0xffffe
    80003eb4:	cd0080e7          	jalr	-816(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003eb8:	00048593          	mv	a1,s1
    80003ebc:	ffffe097          	auipc	ra,0xffffe
    80003ec0:	e50080e7          	jalr	-432(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    80003ec4:	00000513          	li	a0,0
    80003ec8:	ed1ff06f          	j	80003d98 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    void* objArr[320]; for (size_t i = 0; i < 32; objArr[i++] = objAlloc->allocateNewObject());
    80003ecc:	00000913          	li	s2,0
    80003ed0:	01f00793          	li	a5,31
    80003ed4:	0327ea63          	bltu	a5,s2,80003f08 <_ZN20KObjectAllocatorTest5test1Em+0x324>
    80003ed8:	00190a13          	addi	s4,s2,1
    80003edc:	00048513          	mv	a0,s1
    80003ee0:	00002097          	auipc	ra,0x2
    80003ee4:	1e4080e7          	jalr	484(ra) # 800060c4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80003ee8:	fffff7b7          	lui	a5,0xfffff
    80003eec:	00391913          	slli	s2,s2,0x3
    80003ef0:	fc040713          	addi	a4,s0,-64
    80003ef4:	00f707b3          	add	a5,a4,a5
    80003ef8:	01278933          	add	s2,a5,s2
    80003efc:	60a93023          	sd	a0,1536(s2)
    80003f00:	000a0913          	mv	s2,s4
    80003f04:	fcdff06f          	j	80003ed0 <_ZN20KObjectAllocatorTest5test1Em+0x2ec>
    if (getByteOfObject(objArr[31], objAlloc) != 3
    80003f08:	fffff7b7          	lui	a5,0xfffff
    80003f0c:	fc040713          	addi	a4,s0,-64
    80003f10:	00f707b3          	add	a5,a4,a5
    80003f14:	6f87b903          	ld	s2,1784(a5) # fffffffffffff6f8 <end+0xffffffff7fff3cd8>
    80003f18:	00048613          	mv	a2,s1
    80003f1c:	00090593          	mv	a1,s2
    80003f20:	00098513          	mv	a0,s3
    80003f24:	fffff097          	auipc	ra,0xfffff
    80003f28:	26c080e7          	jalr	620(ra) # 80003190 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[31], objAlloc) != 0)
    80003f2c:	00300793          	li	a5,3
    80003f30:	02f50e63          	beq	a0,a5,80003f6c <_ZN20KObjectAllocatorTest5test1Em+0x388>
        { delete objAlloc; return false; }
    80003f34:	0c048c63          	beqz	s1,8000400c <_ZN20KObjectAllocatorTest5test1Em+0x428>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003f38:	00000913          	li	s2,0
    80003f3c:	0304b783          	ld	a5,48(s1)
    80003f40:	08f97863          	bgeu	s2,a5,80003fd0 <_ZN20KObjectAllocatorTest5test1Em+0x3ec>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003f44:	ffffe097          	auipc	ra,0xffffe
    80003f48:	c3c080e7          	jalr	-964(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003f4c:	0284b783          	ld	a5,40(s1)
    80003f50:	00391713          	slli	a4,s2,0x3
    80003f54:	00e787b3          	add	a5,a5,a4
    80003f58:	0007b583          	ld	a1,0(a5)
    80003f5c:	ffffe097          	auipc	ra,0xffffe
    80003f60:	db0080e7          	jalr	-592(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003f64:	00190913          	addi	s2,s2,1
    80003f68:	fd5ff06f          	j	80003f3c <_ZN20KObjectAllocatorTest5test1Em+0x358>
        || getBitOfObject(objArr[31], objAlloc) != 0)
    80003f6c:	00048613          	mv	a2,s1
    80003f70:	00090593          	mv	a1,s2
    80003f74:	00098513          	mv	a0,s3
    80003f78:	fffff097          	auipc	ra,0xfffff
    80003f7c:	298080e7          	jalr	664(ra) # 80003210 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80003f80:	00050a93          	mv	s5,a0
    80003f84:	fa0518e3          	bnez	a0,80003f34 <_ZN20KObjectAllocatorTest5test1Em+0x350>
    if (objAlloc->nextNonTakenByte != 4) { delete objAlloc; return false; }
    80003f88:	0384b703          	ld	a4,56(s1)
    80003f8c:	00400793          	li	a5,4
    80003f90:	08f71263          	bne	a4,a5,80004014 <_ZN20KObjectAllocatorTest5test1Em+0x430>
    for (size_t i = 32; i < 320; objArr[i++] = objAlloc->allocateNewObject());
    80003f94:	02000913          	li	s2,32
    80003f98:	13f00793          	li	a5,319
    80003f9c:	0f27e863          	bltu	a5,s2,8000408c <_ZN20KObjectAllocatorTest5test1Em+0x4a8>
    80003fa0:	00190a13          	addi	s4,s2,1
    80003fa4:	00048513          	mv	a0,s1
    80003fa8:	00002097          	auipc	ra,0x2
    80003fac:	11c080e7          	jalr	284(ra) # 800060c4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80003fb0:	fffff7b7          	lui	a5,0xfffff
    80003fb4:	00391913          	slli	s2,s2,0x3
    80003fb8:	fc040713          	addi	a4,s0,-64
    80003fbc:	00f707b3          	add	a5,a4,a5
    80003fc0:	01278933          	add	s2,a5,s2
    80003fc4:	60a93023          	sd	a0,1536(s2)
    80003fc8:	000a0913          	mv	s2,s4
    80003fcc:	fcdff06f          	j	80003f98 <_ZN20KObjectAllocatorTest5test1Em+0x3b4>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003fd0:	ffffe097          	auipc	ra,0xffffe
    80003fd4:	bb0080e7          	jalr	-1104(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003fd8:	0284b583          	ld	a1,40(s1)
    80003fdc:	ffffe097          	auipc	ra,0xffffe
    80003fe0:	d30080e7          	jalr	-720(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003fe4:	ffffe097          	auipc	ra,0xffffe
    80003fe8:	b9c080e7          	jalr	-1124(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80003fec:	0204b583          	ld	a1,32(s1)
    80003ff0:	ffffe097          	auipc	ra,0xffffe
    80003ff4:	d1c080e7          	jalr	-740(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003ff8:	ffffe097          	auipc	ra,0xffffe
    80003ffc:	b88080e7          	jalr	-1144(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004000:	00048593          	mv	a1,s1
    80004004:	ffffe097          	auipc	ra,0xffffe
    80004008:	d08080e7          	jalr	-760(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        { delete objAlloc; return false; }
    8000400c:	00000513          	li	a0,0
    80004010:	d89ff06f          	j	80003d98 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    if (objAlloc->nextNonTakenByte != 4) { delete objAlloc; return false; }
    80004014:	02049663          	bnez	s1,80004040 <_ZN20KObjectAllocatorTest5test1Em+0x45c>
    80004018:	06c0006f          	j	80004084 <_ZN20KObjectAllocatorTest5test1Em+0x4a0>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    8000401c:	ffffe097          	auipc	ra,0xffffe
    80004020:	b64080e7          	jalr	-1180(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004024:	0284b783          	ld	a5,40(s1)
    80004028:	003a9713          	slli	a4,s5,0x3
    8000402c:	00e787b3          	add	a5,a5,a4
    80004030:	0007b583          	ld	a1,0(a5) # fffffffffffff000 <end+0xffffffff7fff35e0>
    80004034:	ffffe097          	auipc	ra,0xffffe
    80004038:	cd8080e7          	jalr	-808(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000403c:	001a8a93          	addi	s5,s5,1
    80004040:	0304b783          	ld	a5,48(s1)
    80004044:	fcfaece3          	bltu	s5,a5,8000401c <_ZN20KObjectAllocatorTest5test1Em+0x438>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004048:	ffffe097          	auipc	ra,0xffffe
    8000404c:	b38080e7          	jalr	-1224(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004050:	0284b583          	ld	a1,40(s1)
    80004054:	ffffe097          	auipc	ra,0xffffe
    80004058:	cb8080e7          	jalr	-840(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    8000405c:	ffffe097          	auipc	ra,0xffffe
    80004060:	b24080e7          	jalr	-1244(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004064:	0204b583          	ld	a1,32(s1)
    80004068:	ffffe097          	auipc	ra,0xffffe
    8000406c:	ca4080e7          	jalr	-860(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004070:	ffffe097          	auipc	ra,0xffffe
    80004074:	b10080e7          	jalr	-1264(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004078:	00048593          	mv	a1,s1
    8000407c:	ffffe097          	auipc	ra,0xffffe
    80004080:	c90080e7          	jalr	-880(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    80004084:	00000513          	li	a0,0
    80004088:	d11ff06f          	j	80003d98 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    if (objAlloc->nextNonTakenByte != 40) { delete objAlloc; return false; }
    8000408c:	0384b703          	ld	a4,56(s1)
    80004090:	02800793          	li	a5,40
    80004094:	06f70e63          	beq	a4,a5,80004110 <_ZN20KObjectAllocatorTest5test1Em+0x52c>
    80004098:	06048863          	beqz	s1,80004108 <_ZN20KObjectAllocatorTest5test1Em+0x524>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000409c:	0304b783          	ld	a5,48(s1)
    800040a0:	02faf663          	bgeu	s5,a5,800040cc <_ZN20KObjectAllocatorTest5test1Em+0x4e8>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800040a4:	ffffe097          	auipc	ra,0xffffe
    800040a8:	adc080e7          	jalr	-1316(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800040ac:	0284b783          	ld	a5,40(s1)
    800040b0:	003a9713          	slli	a4,s5,0x3
    800040b4:	00e787b3          	add	a5,a5,a4
    800040b8:	0007b583          	ld	a1,0(a5)
    800040bc:	ffffe097          	auipc	ra,0xffffe
    800040c0:	c50080e7          	jalr	-944(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800040c4:	001a8a93          	addi	s5,s5,1
    800040c8:	fd5ff06f          	j	8000409c <_ZN20KObjectAllocatorTest5test1Em+0x4b8>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800040cc:	ffffe097          	auipc	ra,0xffffe
    800040d0:	ab4080e7          	jalr	-1356(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800040d4:	0284b583          	ld	a1,40(s1)
    800040d8:	ffffe097          	auipc	ra,0xffffe
    800040dc:	c34080e7          	jalr	-972(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800040e0:	ffffe097          	auipc	ra,0xffffe
    800040e4:	aa0080e7          	jalr	-1376(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800040e8:	0204b583          	ld	a1,32(s1)
    800040ec:	ffffe097          	auipc	ra,0xffffe
    800040f0:	c20080e7          	jalr	-992(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800040f4:	ffffe097          	auipc	ra,0xffffe
    800040f8:	a8c080e7          	jalr	-1396(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800040fc:	00048593          	mv	a1,s1
    80004100:	ffffe097          	auipc	ra,0xffffe
    80004104:	c0c080e7          	jalr	-1012(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    80004108:	00000513          	li	a0,0
    8000410c:	c8dff06f          	j	80003d98 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    objAlloc->freeObject(objArr[7 * 8]);
    80004110:	fffff7b7          	lui	a5,0xfffff
    80004114:	fc040713          	addi	a4,s0,-64
    80004118:	00f707b3          	add	a5,a4,a5
    8000411c:	7c07b583          	ld	a1,1984(a5) # fffffffffffff7c0 <end+0xffffffff7fff3da0>
    80004120:	00048513          	mv	a0,s1
    80004124:	00002097          	auipc	ra,0x2
    80004128:	d20080e7          	jalr	-736(ra) # 80005e44 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[7 * 8] = objAlloc->allocateNewObject();
    8000412c:	00048513          	mv	a0,s1
    80004130:	00002097          	auipc	ra,0x2
    80004134:	f94080e7          	jalr	-108(ra) # 800060c4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004138:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[7 * 8], objAlloc) != 7
    8000413c:	00048613          	mv	a2,s1
    80004140:	00050593          	mv	a1,a0
    80004144:	00098513          	mv	a0,s3
    80004148:	fffff097          	auipc	ra,0xfffff
    8000414c:	048080e7          	jalr	72(ra) # 80003190 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[7 * 8], objAlloc) != 7)
    80004150:	00700793          	li	a5,7
    80004154:	02f50c63          	beq	a0,a5,8000418c <_ZN20KObjectAllocatorTest5test1Em+0x5a8>
        { delete objAlloc; return false; }
    80004158:	0a048663          	beqz	s1,80004204 <_ZN20KObjectAllocatorTest5test1Em+0x620>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000415c:	0304b783          	ld	a5,48(s1)
    80004160:	06faf463          	bgeu	s5,a5,800041c8 <_ZN20KObjectAllocatorTest5test1Em+0x5e4>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004164:	ffffe097          	auipc	ra,0xffffe
    80004168:	a1c080e7          	jalr	-1508(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    8000416c:	0284b783          	ld	a5,40(s1)
    80004170:	003a9713          	slli	a4,s5,0x3
    80004174:	00e787b3          	add	a5,a5,a4
    80004178:	0007b583          	ld	a1,0(a5)
    8000417c:	ffffe097          	auipc	ra,0xffffe
    80004180:	b90080e7          	jalr	-1136(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004184:	001a8a93          	addi	s5,s5,1
    80004188:	fd5ff06f          	j	8000415c <_ZN20KObjectAllocatorTest5test1Em+0x578>
        || getBitOfObject(objArr[7 * 8], objAlloc) != 7)
    8000418c:	00048613          	mv	a2,s1
    80004190:	00090593          	mv	a1,s2
    80004194:	00098513          	mv	a0,s3
    80004198:	fffff097          	auipc	ra,0xfffff
    8000419c:	078080e7          	jalr	120(ra) # 80003210 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800041a0:	00700793          	li	a5,7
    800041a4:	faf51ae3          	bne	a0,a5,80004158 <_ZN20KObjectAllocatorTest5test1Em+0x574>
    if (objAlloc->nextNonTakenByte != 7) { delete objAlloc; return false; }
    800041a8:	0384b703          	ld	a4,56(s1)
    800041ac:	06f70063          	beq	a4,a5,8000420c <_ZN20KObjectAllocatorTest5test1Em+0x628>
    800041b0:	00048863          	beqz	s1,800041c0 <_ZN20KObjectAllocatorTest5test1Em+0x5dc>
    800041b4:	00048513          	mv	a0,s1
    800041b8:	00002097          	auipc	ra,0x2
    800041bc:	844080e7          	jalr	-1980(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    800041c0:	00000513          	li	a0,0
    800041c4:	bd5ff06f          	j	80003d98 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800041c8:	ffffe097          	auipc	ra,0xffffe
    800041cc:	9b8080e7          	jalr	-1608(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800041d0:	0284b583          	ld	a1,40(s1)
    800041d4:	ffffe097          	auipc	ra,0xffffe
    800041d8:	b38080e7          	jalr	-1224(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800041dc:	ffffe097          	auipc	ra,0xffffe
    800041e0:	9a4080e7          	jalr	-1628(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800041e4:	0204b583          	ld	a1,32(s1)
    800041e8:	ffffe097          	auipc	ra,0xffffe
    800041ec:	b24080e7          	jalr	-1244(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800041f0:	ffffe097          	auipc	ra,0xffffe
    800041f4:	990080e7          	jalr	-1648(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800041f8:	00048593          	mv	a1,s1
    800041fc:	ffffe097          	auipc	ra,0xffffe
    80004200:	b10080e7          	jalr	-1264(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        { delete objAlloc; return false; }
    80004204:	00000513          	li	a0,0
    80004208:	b91ff06f          	j	80003d98 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    objAlloc->freeObject(objArr[6 * 8 + 3]);
    8000420c:	fffff937          	lui	s2,0xfffff
    80004210:	fc040793          	addi	a5,s0,-64
    80004214:	01278933          	add	s2,a5,s2
    80004218:	79893583          	ld	a1,1944(s2) # fffffffffffff798 <end+0xffffffff7fff3d78>
    8000421c:	00048513          	mv	a0,s1
    80004220:	00002097          	auipc	ra,0x2
    80004224:	c24080e7          	jalr	-988(ra) # 80005e44 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[7 * 8 + 4]);
    80004228:	7e093583          	ld	a1,2016(s2)
    8000422c:	00048513          	mv	a0,s1
    80004230:	00002097          	auipc	ra,0x2
    80004234:	c14080e7          	jalr	-1004(ra) # 80005e44 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[38 * 8 + 5]);
    80004238:	f6843583          	ld	a1,-152(s0)
    8000423c:	00048513          	mv	a0,s1
    80004240:	00002097          	auipc	ra,0x2
    80004244:	c04080e7          	jalr	-1020(ra) # 80005e44 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[7 * 8 + 4] = objAlloc->allocateNewObject();
    80004248:	00048513          	mv	a0,s1
    8000424c:	00002097          	auipc	ra,0x2
    80004250:	e78080e7          	jalr	-392(ra) # 800060c4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004254:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[7 * 8 + 4], objAlloc) != 7
    80004258:	00048613          	mv	a2,s1
    8000425c:	00050593          	mv	a1,a0
    80004260:	00098513          	mv	a0,s3
    80004264:	fffff097          	auipc	ra,0xfffff
    80004268:	f2c080e7          	jalr	-212(ra) # 80003190 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[7 * 8 + 4], objAlloc) != 3)
    8000426c:	00700793          	li	a5,7
    80004270:	00f50e63          	beq	a0,a5,8000428c <_ZN20KObjectAllocatorTest5test1Em+0x6a8>
        { delete objAlloc; return false; }
    80004274:	00048863          	beqz	s1,80004284 <_ZN20KObjectAllocatorTest5test1Em+0x6a0>
    80004278:	00048513          	mv	a0,s1
    8000427c:	00001097          	auipc	ra,0x1
    80004280:	780080e7          	jalr	1920(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    80004284:	00000513          	li	a0,0
    80004288:	b11ff06f          	j	80003d98 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        || getBitOfObject(objArr[7 * 8 + 4], objAlloc) != 3)
    8000428c:	00048613          	mv	a2,s1
    80004290:	00090593          	mv	a1,s2
    80004294:	00098513          	mv	a0,s3
    80004298:	fffff097          	auipc	ra,0xfffff
    8000429c:	f78080e7          	jalr	-136(ra) # 80003210 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800042a0:	00300793          	li	a5,3
    800042a4:	fcf518e3          	bne	a0,a5,80004274 <_ZN20KObjectAllocatorTest5test1Em+0x690>
    if (objAlloc->nextNonTakenByte != 7) { delete objAlloc; return false; }
    800042a8:	0384b703          	ld	a4,56(s1)
    800042ac:	00700793          	li	a5,7
    800042b0:	00f70e63          	beq	a4,a5,800042cc <_ZN20KObjectAllocatorTest5test1Em+0x6e8>
    800042b4:	00048863          	beqz	s1,800042c4 <_ZN20KObjectAllocatorTest5test1Em+0x6e0>
    800042b8:	00048513          	mv	a0,s1
    800042bc:	00001097          	auipc	ra,0x1
    800042c0:	740080e7          	jalr	1856(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    800042c4:	00000513          	li	a0,0
    800042c8:	ad1ff06f          	j	80003d98 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    objAlloc->freeObject(objArr[3 * 8 + 5]);
    800042cc:	fffff7b7          	lui	a5,0xfffff
    800042d0:	fc040713          	addi	a4,s0,-64
    800042d4:	00f707b3          	add	a5,a4,a5
    800042d8:	6e87b583          	ld	a1,1768(a5) # fffffffffffff6e8 <end+0xffffffff7fff3cc8>
    800042dc:	00048513          	mv	a0,s1
    800042e0:	00002097          	auipc	ra,0x2
    800042e4:	b64080e7          	jalr	-1180(ra) # 80005e44 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[38 * 8 + 5] = objAlloc->allocateNewObject();
    800042e8:	00048513          	mv	a0,s1
    800042ec:	00002097          	auipc	ra,0x2
    800042f0:	dd8080e7          	jalr	-552(ra) # 800060c4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800042f4:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[38 * 8 + 5], objAlloc) != 38
    800042f8:	00048613          	mv	a2,s1
    800042fc:	00050593          	mv	a1,a0
    80004300:	00098513          	mv	a0,s3
    80004304:	fffff097          	auipc	ra,0xfffff
    80004308:	e8c080e7          	jalr	-372(ra) # 80003190 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[38 * 8 + 5], objAlloc) != 2)
    8000430c:	02600793          	li	a5,38
    80004310:	00f50e63          	beq	a0,a5,8000432c <_ZN20KObjectAllocatorTest5test1Em+0x748>
    { delete objAlloc; return false; }
    80004314:	00048863          	beqz	s1,80004324 <_ZN20KObjectAllocatorTest5test1Em+0x740>
    80004318:	00048513          	mv	a0,s1
    8000431c:	00001097          	auipc	ra,0x1
    80004320:	6e0080e7          	jalr	1760(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    80004324:	00000513          	li	a0,0
    80004328:	a71ff06f          	j	80003d98 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        || getBitOfObject(objArr[38 * 8 + 5], objAlloc) != 2)
    8000432c:	00048613          	mv	a2,s1
    80004330:	00090593          	mv	a1,s2
    80004334:	00098513          	mv	a0,s3
    80004338:	fffff097          	auipc	ra,0xfffff
    8000433c:	ed8080e7          	jalr	-296(ra) # 80003210 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80004340:	00200793          	li	a5,2
    80004344:	fcf518e3          	bne	a0,a5,80004314 <_ZN20KObjectAllocatorTest5test1Em+0x730>
    if (objAlloc->nextNonTakenByte != 38) { delete objAlloc; return false; }
    80004348:	0384b703          	ld	a4,56(s1)
    8000434c:	02600793          	li	a5,38
    80004350:	00f70e63          	beq	a4,a5,8000436c <_ZN20KObjectAllocatorTest5test1Em+0x788>
    80004354:	00048863          	beqz	s1,80004364 <_ZN20KObjectAllocatorTest5test1Em+0x780>
    80004358:	00048513          	mv	a0,s1
    8000435c:	00001097          	auipc	ra,0x1
    80004360:	6a0080e7          	jalr	1696(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    80004364:	00000513          	li	a0,0
    80004368:	a31ff06f          	j	80003d98 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    objArr[3 * 8 + 5] = objAlloc->allocateNewObject();
    8000436c:	00048513          	mv	a0,s1
    80004370:	00002097          	auipc	ra,0x2
    80004374:	d54080e7          	jalr	-684(ra) # 800060c4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004378:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[3 * 8 + 5], objAlloc) != 3 || getBitOfObject(objArr[3 * 8 + 5], objAlloc) != 2)
    8000437c:	00048613          	mv	a2,s1
    80004380:	00050593          	mv	a1,a0
    80004384:	00098513          	mv	a0,s3
    80004388:	fffff097          	auipc	ra,0xfffff
    8000438c:	e08080e7          	jalr	-504(ra) # 80003190 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    80004390:	00300793          	li	a5,3
    80004394:	02f50463          	beq	a0,a5,800043bc <_ZN20KObjectAllocatorTest5test1Em+0x7d8>
    if (objAlloc->nextNonTakenByte != 3) { delete objAlloc; return false; }
    80004398:	0384b703          	ld	a4,56(s1)
    8000439c:	00300793          	li	a5,3
    800043a0:	02f70c63          	beq	a4,a5,800043d8 <_ZN20KObjectAllocatorTest5test1Em+0x7f4>
    800043a4:	00048863          	beqz	s1,800043b4 <_ZN20KObjectAllocatorTest5test1Em+0x7d0>
    800043a8:	00048513          	mv	a0,s1
    800043ac:	00001097          	auipc	ra,0x1
    800043b0:	650080e7          	jalr	1616(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    800043b4:	00000513          	li	a0,0
    800043b8:	9e1ff06f          	j	80003d98 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    if (getByteOfObject(objArr[3 * 8 + 5], objAlloc) != 3 || getBitOfObject(objArr[3 * 8 + 5], objAlloc) != 2)
    800043bc:	00048613          	mv	a2,s1
    800043c0:	00090593          	mv	a1,s2
    800043c4:	00098513          	mv	a0,s3
    800043c8:	fffff097          	auipc	ra,0xfffff
    800043cc:	e48080e7          	jalr	-440(ra) # 80003210 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800043d0:	00200793          	li	a5,2
    800043d4:	fcf512e3          	bne	a0,a5,80004398 <_ZN20KObjectAllocatorTest5test1Em+0x7b4>
    objArr[6 * 8 + 3] = objAlloc->allocateNewObject();
    800043d8:	00048513          	mv	a0,s1
    800043dc:	00002097          	auipc	ra,0x2
    800043e0:	ce8080e7          	jalr	-792(ra) # 800060c4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800043e4:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[6 * 8 + 3], objAlloc) != 6
    800043e8:	00048613          	mv	a2,s1
    800043ec:	00050593          	mv	a1,a0
    800043f0:	00098513          	mv	a0,s3
    800043f4:	fffff097          	auipc	ra,0xfffff
    800043f8:	d9c080e7          	jalr	-612(ra) # 80003190 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[6 * 8 + 3], objAlloc) != 4)
    800043fc:	00600793          	li	a5,6
    80004400:	00f50e63          	beq	a0,a5,8000441c <_ZN20KObjectAllocatorTest5test1Em+0x838>
    { delete objAlloc; return false; }
    80004404:	00048863          	beqz	s1,80004414 <_ZN20KObjectAllocatorTest5test1Em+0x830>
    80004408:	00048513          	mv	a0,s1
    8000440c:	00001097          	auipc	ra,0x1
    80004410:	5f0080e7          	jalr	1520(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    80004414:	00000513          	li	a0,0
    80004418:	981ff06f          	j	80003d98 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        || getBitOfObject(objArr[6 * 8 + 3], objAlloc) != 4)
    8000441c:	00048613          	mv	a2,s1
    80004420:	00090593          	mv	a1,s2
    80004424:	00098513          	mv	a0,s3
    80004428:	fffff097          	auipc	ra,0xfffff
    8000442c:	de8080e7          	jalr	-536(ra) # 80003210 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80004430:	00400793          	li	a5,4
    80004434:	fcf518e3          	bne	a0,a5,80004404 <_ZN20KObjectAllocatorTest5test1Em+0x820>
    if (objAlloc->nextNonTakenByte != 6) { delete objAlloc; return false; }
    80004438:	0384b703          	ld	a4,56(s1)
    8000443c:	00600793          	li	a5,6
    80004440:	0ef71463          	bne	a4,a5,80004528 <_ZN20KObjectAllocatorTest5test1Em+0x944>
    for (int i = 0; i < 3; ++i) {
    80004444:	00000a93          	li	s5,0
    80004448:	00200793          	li	a5,2
    8000444c:	1557ca63          	blt	a5,s5,800045a0 <_ZN20KObjectAllocatorTest5test1Em+0x9bc>
        objAlloc->freeObject(objArr[319]);
    80004450:	fb843583          	ld	a1,-72(s0)
    80004454:	00048513          	mv	a0,s1
    80004458:	00002097          	auipc	ra,0x2
    8000445c:	9ec080e7          	jalr	-1556(ra) # 80005e44 <_ZN16KObjectAllocator10freeObjectEPv>
        objArr[319] = objAlloc->allocateNewObject();
    80004460:	00048513          	mv	a0,s1
    80004464:	00002097          	auipc	ra,0x2
    80004468:	c60080e7          	jalr	-928(ra) # 800060c4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    8000446c:	00050913          	mv	s2,a0
    80004470:	faa43c23          	sd	a0,-72(s0)
        if (getByteOfObject(objArr[319], objAlloc) != 39
    80004474:	00048613          	mv	a2,s1
    80004478:	00050593          	mv	a1,a0
    8000447c:	00098513          	mv	a0,s3
    80004480:	fffff097          	auipc	ra,0xfffff
    80004484:	d10080e7          	jalr	-752(ra) # 80003190 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
            || getBitOfObject(objArr[319], objAlloc) != 0)
    80004488:	02700793          	li	a5,39
    8000448c:	0af51a63          	bne	a0,a5,80004540 <_ZN20KObjectAllocatorTest5test1Em+0x95c>
    80004490:	00048613          	mv	a2,s1
    80004494:	00090593          	mv	a1,s2
    80004498:	00098513          	mv	a0,s3
    8000449c:	fffff097          	auipc	ra,0xfffff
    800044a0:	d74080e7          	jalr	-652(ra) # 80003210 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800044a4:	08051e63          	bnez	a0,80004540 <_ZN20KObjectAllocatorTest5test1Em+0x95c>
        if (objAlloc->nextNonTakenByte != 40) { delete objAlloc; return false; }
    800044a8:	0384b703          	ld	a4,56(s1)
    800044ac:	02800793          	li	a5,40
    800044b0:	0af71463          	bne	a4,a5,80004558 <_ZN20KObjectAllocatorTest5test1Em+0x974>
        objAlloc->freeObject(objArr[1]);
    800044b4:	fffffa37          	lui	s4,0xfffff
    800044b8:	fc040793          	addi	a5,s0,-64
    800044bc:	01478a33          	add	s4,a5,s4
    800044c0:	608a3583          	ld	a1,1544(s4) # fffffffffffff608 <end+0xffffffff7fff3be8>
    800044c4:	00048513          	mv	a0,s1
    800044c8:	00002097          	auipc	ra,0x2
    800044cc:	97c080e7          	jalr	-1668(ra) # 80005e44 <_ZN16KObjectAllocator10freeObjectEPv>
        objArr[1] = objAlloc->allocateNewObject();
    800044d0:	00048513          	mv	a0,s1
    800044d4:	00002097          	auipc	ra,0x2
    800044d8:	bf0080e7          	jalr	-1040(ra) # 800060c4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800044dc:	00050913          	mv	s2,a0
    800044e0:	60aa3423          	sd	a0,1544(s4)
        if (getByteOfObject(objArr[1], objAlloc) != 0
    800044e4:	00048613          	mv	a2,s1
    800044e8:	00050593          	mv	a1,a0
    800044ec:	00098513          	mv	a0,s3
    800044f0:	fffff097          	auipc	ra,0xfffff
    800044f4:	ca0080e7          	jalr	-864(ra) # 80003190 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
            || getBitOfObject(objArr[1], objAlloc) != 6)
    800044f8:	06051c63          	bnez	a0,80004570 <_ZN20KObjectAllocatorTest5test1Em+0x98c>
    800044fc:	00048613          	mv	a2,s1
    80004500:	00090593          	mv	a1,s2
    80004504:	00098513          	mv	a0,s3
    80004508:	fffff097          	auipc	ra,0xfffff
    8000450c:	d08080e7          	jalr	-760(ra) # 80003210 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80004510:	00600793          	li	a5,6
    80004514:	04f51e63          	bne	a0,a5,80004570 <_ZN20KObjectAllocatorTest5test1Em+0x98c>
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    80004518:	0384b783          	ld	a5,56(s1)
    8000451c:	06079663          	bnez	a5,80004588 <_ZN20KObjectAllocatorTest5test1Em+0x9a4>
    for (int i = 0; i < 3; ++i) {
    80004520:	001a8a9b          	addiw	s5,s5,1
    80004524:	f25ff06f          	j	80004448 <_ZN20KObjectAllocatorTest5test1Em+0x864>
    if (objAlloc->nextNonTakenByte != 6) { delete objAlloc; return false; }
    80004528:	00048863          	beqz	s1,80004538 <_ZN20KObjectAllocatorTest5test1Em+0x954>
    8000452c:	00048513          	mv	a0,s1
    80004530:	00001097          	auipc	ra,0x1
    80004534:	4cc080e7          	jalr	1228(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    80004538:	00000513          	li	a0,0
    8000453c:	85dff06f          	j	80003d98 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        { delete objAlloc; return false; }
    80004540:	00048863          	beqz	s1,80004550 <_ZN20KObjectAllocatorTest5test1Em+0x96c>
    80004544:	00048513          	mv	a0,s1
    80004548:	00001097          	auipc	ra,0x1
    8000454c:	4b4080e7          	jalr	1204(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    80004550:	00000513          	li	a0,0
    80004554:	845ff06f          	j	80003d98 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        if (objAlloc->nextNonTakenByte != 40) { delete objAlloc; return false; }
    80004558:	00048863          	beqz	s1,80004568 <_ZN20KObjectAllocatorTest5test1Em+0x984>
    8000455c:	00048513          	mv	a0,s1
    80004560:	00001097          	auipc	ra,0x1
    80004564:	49c080e7          	jalr	1180(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    80004568:	00000513          	li	a0,0
    8000456c:	82dff06f          	j	80003d98 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        { delete objAlloc; return false; }
    80004570:	00048863          	beqz	s1,80004580 <_ZN20KObjectAllocatorTest5test1Em+0x99c>
    80004574:	00048513          	mv	a0,s1
    80004578:	00001097          	auipc	ra,0x1
    8000457c:	484080e7          	jalr	1156(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    80004580:	00000513          	li	a0,0
    80004584:	815ff06f          	j	80003d98 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    80004588:	00048863          	beqz	s1,80004598 <_ZN20KObjectAllocatorTest5test1Em+0x9b4>
    8000458c:	00048513          	mv	a0,s1
    80004590:	00001097          	auipc	ra,0x1
    80004594:	46c080e7          	jalr	1132(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    80004598:	00000513          	li	a0,0
    8000459c:	ffcff06f          	j	80003d98 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    delete objAlloc;
    800045a0:	00048c63          	beqz	s1,800045b8 <_ZN20KObjectAllocatorTest5test1Em+0x9d4>
    800045a4:	00048513          	mv	a0,s1
    800045a8:	00001097          	auipc	ra,0x1
    800045ac:	454080e7          	jalr	1108(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    return true;
    800045b0:	00100513          	li	a0,1
    800045b4:	fe4ff06f          	j	80003d98 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    800045b8:	00100513          	li	a0,1
    800045bc:	fdcff06f          	j	80003d98 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    800045c0:	00050913          	mv	s2,a0
    KObjectAllocator* objAlloc = new KObjectAllocator(size);
    800045c4:	00048513          	mv	a0,s1
    800045c8:	00001097          	auipc	ra,0x1
    800045cc:	434080e7          	jalr	1076(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    800045d0:	00090513          	mv	a0,s2
    800045d4:	00007097          	auipc	ra,0x7
    800045d8:	2a4080e7          	jalr	676(ra) # 8000b878 <_Unwind_Resume>

00000000800045dc <_ZN20KObjectAllocatorTest5test2Em>:

bool KObjectAllocatorTest::test2(size_t size) {
    800045dc:	f5010113          	addi	sp,sp,-176
    800045e0:	0a113423          	sd	ra,168(sp)
    800045e4:	0a813023          	sd	s0,160(sp)
    800045e8:	08913c23          	sd	s1,152(sp)
    800045ec:	09213823          	sd	s2,144(sp)
    800045f0:	09313423          	sd	s3,136(sp)
    800045f4:	09413023          	sd	s4,128(sp)
    800045f8:	07513c23          	sd	s5,120(sp)
    800045fc:	07613823          	sd	s6,112(sp)
    80004600:	07713423          	sd	s7,104(sp)
    80004604:	07813023          	sd	s8,96(sp)
    80004608:	0b010413          	addi	s0,sp,176
    8000460c:	00050993          	mv	s3,a0
    80004610:	00058913          	mv	s2,a1
        return MemoryAllocator::instance()->kmem_alloc(size);
    80004614:	ffffd097          	auipc	ra,0xffffd
    80004618:	56c080e7          	jalr	1388(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    8000461c:	04000593          	li	a1,64
    80004620:	ffffd097          	auipc	ra,0xffffd
    80004624:	644080e7          	jalr	1604(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80004628:	00050493          	mv	s1,a0
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    8000462c:	00300793          	li	a5,3
    80004630:	00f53023          	sd	a5,0(a0)
    80004634:	00f53423          	sd	a5,8(a0)
    80004638:	01253c23          	sd	s2,24(a0)
    8000463c:	00100793          	li	a5,1
    80004640:	02f53823          	sd	a5,48(a0)
    80004644:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80004648:	ffffd097          	auipc	ra,0xffffd
    8000464c:	538080e7          	jalr	1336(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004650:	0304b583          	ld	a1,48(s1)
    80004654:	00359593          	slli	a1,a1,0x3
    80004658:	ffffd097          	auipc	ra,0xffffd
    8000465c:	60c080e7          	jalr	1548(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80004660:	02a4b423          	sd	a0,40(s1)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80004664:	ffffd097          	auipc	ra,0xffffd
    80004668:	51c080e7          	jalr	1308(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    8000466c:	0304b583          	ld	a1,48(s1)
    80004670:	00359593          	slli	a1,a1,0x3
    80004674:	ffffd097          	auipc	ra,0xffffd
    80004678:	5f0080e7          	jalr	1520(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    8000467c:	02a4b023          	sd	a0,32(s1)
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80004680:	0084b703          	ld	a4,8(s1)
    80004684:	ff877793          	andi	a5,a4,-8
    80004688:	02f70463          	beq	a4,a5,800046b0 <_ZN20KObjectAllocatorTest5test2Em+0xd4>
    8000468c:	00800713          	li	a4,8
    80004690:	00e787b3          	add	a5,a5,a4
    80004694:	00f4b423          	sd	a5,8(s1)
    80004698:	00f4b023          	sd	a5,0(s1)
        memorySizeForBits = numberOfObjects / 8;
    8000469c:	0037d793          	srli	a5,a5,0x3
    800046a0:	00f4b823          	sd	a5,16(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    800046a4:	ffffd097          	auipc	ra,0xffffd
    800046a8:	4dc080e7          	jalr	1244(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800046ac:	00c0006f          	j	800046b8 <_ZN20KObjectAllocatorTest5test2Em+0xdc>
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    800046b0:	00000713          	li	a4,0
    800046b4:	fddff06f          	j	80004690 <_ZN20KObjectAllocatorTest5test2Em+0xb4>
                memorySizeForBits + initialNumberOfObjects * objectSize
    800046b8:	0104b583          	ld	a1,16(s1)
    800046bc:	0004b783          	ld	a5,0(s1)
    800046c0:	02f907b3          	mul	a5,s2,a5
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    800046c4:	0284ba03          	ld	s4,40(s1)
    800046c8:	00f585b3          	add	a1,a1,a5
    800046cc:	ffffd097          	auipc	ra,0xffffd
    800046d0:	598080e7          	jalr	1432(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    800046d4:	00aa3023          	sd	a0,0(s4)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    800046d8:	0284b783          	ld	a5,40(s1)
    800046dc:	0007b783          	ld	a5,0(a5)
    800046e0:	0104b683          	ld	a3,16(s1)
    800046e4:	0204b703          	ld	a4,32(s1)
    800046e8:	00d787b3          	add	a5,a5,a3
    800046ec:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    800046f0:	00000793          	li	a5,0
    800046f4:	0104b703          	ld	a4,16(s1)
    800046f8:	00e7fe63          	bgeu	a5,a4,80004714 <_ZN20KObjectAllocatorTest5test2Em+0x138>
    800046fc:	0284b703          	ld	a4,40(s1)
    80004700:	00073703          	ld	a4,0(a4)
    80004704:	00f70733          	add	a4,a4,a5
    80004708:	00070023          	sb	zero,0(a4)
    8000470c:	00178793          	addi	a5,a5,1
    80004710:	fe5ff06f          	j	800046f4 <_ZN20KObjectAllocatorTest5test2Em+0x118>
    size_t getNumberOfObjects() { return numberOfObjects; }
    80004714:	0084bb83          	ld	s7,8(s1)
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 3);
    if (objAlloc->getNumberOfObjects() != 8) { delete objAlloc; return false; }
    80004718:	00800793          	li	a5,8
    8000471c:	0afb8863          	beq	s7,a5,800047cc <_ZN20KObjectAllocatorTest5test2Em+0x1f0>
    80004720:	06048a63          	beqz	s1,80004794 <_ZN20KObjectAllocatorTest5test2Em+0x1b8>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004724:	00000913          	li	s2,0
    80004728:	0280006f          	j	80004750 <_ZN20KObjectAllocatorTest5test2Em+0x174>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    8000472c:	ffffd097          	auipc	ra,0xffffd
    80004730:	454080e7          	jalr	1108(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004734:	0284b783          	ld	a5,40(s1)
    80004738:	00391713          	slli	a4,s2,0x3
    8000473c:	00e787b3          	add	a5,a5,a4
    80004740:	0007b583          	ld	a1,0(a5)
    80004744:	ffffd097          	auipc	ra,0xffffd
    80004748:	5c8080e7          	jalr	1480(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000474c:	00190913          	addi	s2,s2,1
    80004750:	0304b783          	ld	a5,48(s1)
    80004754:	fcf96ce3          	bltu	s2,a5,8000472c <_ZN20KObjectAllocatorTest5test2Em+0x150>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004758:	ffffd097          	auipc	ra,0xffffd
    8000475c:	428080e7          	jalr	1064(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004760:	0284b583          	ld	a1,40(s1)
    80004764:	ffffd097          	auipc	ra,0xffffd
    80004768:	5a8080e7          	jalr	1448(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    8000476c:	ffffd097          	auipc	ra,0xffffd
    80004770:	414080e7          	jalr	1044(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004774:	0204b583          	ld	a1,32(s1)
    80004778:	ffffd097          	auipc	ra,0xffffd
    8000477c:	594080e7          	jalr	1428(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004780:	ffffd097          	auipc	ra,0xffffd
    80004784:	400080e7          	jalr	1024(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004788:	00048593          	mv	a1,s1
    8000478c:	ffffd097          	auipc	ra,0xffffd
    80004790:	580080e7          	jalr	1408(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    80004794:	00000a13          	li	s4,0
        if (expectedBitValues[i] != getValueOfBitAt(byte, bit, objAlloc))
        { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    }
    delete objAlloc;
    return true;
}
    80004798:	000a0513          	mv	a0,s4
    8000479c:	0a813083          	ld	ra,168(sp)
    800047a0:	0a013403          	ld	s0,160(sp)
    800047a4:	09813483          	ld	s1,152(sp)
    800047a8:	09013903          	ld	s2,144(sp)
    800047ac:	08813983          	ld	s3,136(sp)
    800047b0:	08013a03          	ld	s4,128(sp)
    800047b4:	07813a83          	ld	s5,120(sp)
    800047b8:	07013b03          	ld	s6,112(sp)
    800047bc:	06813b83          	ld	s7,104(sp)
    800047c0:	06013c03          	ld	s8,96(sp)
    800047c4:	0b010113          	addi	sp,sp,176
    800047c8:	00008067          	ret
    size_t getMemorySizeForBits() { return memorySizeForBits; }
    800047cc:	0104b703          	ld	a4,16(s1)
    if (objAlloc->getMemorySizeForBits() != 1) { delete objAlloc; return false; }
    800047d0:	00100793          	li	a5,1
    800047d4:	08f70063          	beq	a4,a5,80004854 <_ZN20KObjectAllocatorTest5test2Em+0x278>
    800047d8:	06048a63          	beqz	s1,8000484c <_ZN20KObjectAllocatorTest5test2Em+0x270>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800047dc:	00000913          	li	s2,0
    800047e0:	0280006f          	j	80004808 <_ZN20KObjectAllocatorTest5test2Em+0x22c>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800047e4:	ffffd097          	auipc	ra,0xffffd
    800047e8:	39c080e7          	jalr	924(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800047ec:	0284b783          	ld	a5,40(s1)
    800047f0:	00391713          	slli	a4,s2,0x3
    800047f4:	00e787b3          	add	a5,a5,a4
    800047f8:	0007b583          	ld	a1,0(a5)
    800047fc:	ffffd097          	auipc	ra,0xffffd
    80004800:	510080e7          	jalr	1296(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004804:	00190913          	addi	s2,s2,1
    80004808:	0304b783          	ld	a5,48(s1)
    8000480c:	fcf96ce3          	bltu	s2,a5,800047e4 <_ZN20KObjectAllocatorTest5test2Em+0x208>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004810:	ffffd097          	auipc	ra,0xffffd
    80004814:	370080e7          	jalr	880(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004818:	0284b583          	ld	a1,40(s1)
    8000481c:	ffffd097          	auipc	ra,0xffffd
    80004820:	4f0080e7          	jalr	1264(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004824:	ffffd097          	auipc	ra,0xffffd
    80004828:	35c080e7          	jalr	860(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    8000482c:	0204b583          	ld	a1,32(s1)
    80004830:	ffffd097          	auipc	ra,0xffffd
    80004834:	4dc080e7          	jalr	1244(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004838:	ffffd097          	auipc	ra,0xffffd
    8000483c:	348080e7          	jalr	840(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004840:	00048593          	mv	a1,s1
    80004844:	ffffd097          	auipc	ra,0xffffd
    80004848:	4c8080e7          	jalr	1224(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    8000484c:	00000a13          	li	s4,0
    80004850:	f49ff06f          	j	80004798 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    size_t getObjectSize() { return objectSize; }
    80004854:	0184b783          	ld	a5,24(s1)
    if (objAlloc->getObjectSize() != size) { delete objAlloc; return false; }
    80004858:	08f90063          	beq	s2,a5,800048d8 <_ZN20KObjectAllocatorTest5test2Em+0x2fc>
    8000485c:	06048a63          	beqz	s1,800048d0 <_ZN20KObjectAllocatorTest5test2Em+0x2f4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004860:	00000913          	li	s2,0
    80004864:	0304b783          	ld	a5,48(s1)
    80004868:	02f97663          	bgeu	s2,a5,80004894 <_ZN20KObjectAllocatorTest5test2Em+0x2b8>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    8000486c:	ffffd097          	auipc	ra,0xffffd
    80004870:	314080e7          	jalr	788(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004874:	0284b783          	ld	a5,40(s1)
    80004878:	00391713          	slli	a4,s2,0x3
    8000487c:	00e787b3          	add	a5,a5,a4
    80004880:	0007b583          	ld	a1,0(a5)
    80004884:	ffffd097          	auipc	ra,0xffffd
    80004888:	488080e7          	jalr	1160(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000488c:	00190913          	addi	s2,s2,1
    80004890:	fd5ff06f          	j	80004864 <_ZN20KObjectAllocatorTest5test2Em+0x288>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004894:	ffffd097          	auipc	ra,0xffffd
    80004898:	2ec080e7          	jalr	748(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    8000489c:	0284b583          	ld	a1,40(s1)
    800048a0:	ffffd097          	auipc	ra,0xffffd
    800048a4:	46c080e7          	jalr	1132(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800048a8:	ffffd097          	auipc	ra,0xffffd
    800048ac:	2d8080e7          	jalr	728(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800048b0:	0204b583          	ld	a1,32(s1)
    800048b4:	ffffd097          	auipc	ra,0xffffd
    800048b8:	458080e7          	jalr	1112(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800048bc:	ffffd097          	auipc	ra,0xffffd
    800048c0:	2c4080e7          	jalr	708(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800048c4:	00048593          	mv	a1,s1
    800048c8:	ffffd097          	auipc	ra,0xffffd
    800048cc:	444080e7          	jalr	1092(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    800048d0:	00000a13          	li	s4,0
    800048d4:	ec5ff06f          	j	80004798 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    void* objArr[10]; for (size_t i = 0; i < 10; objArr[i++] = objAlloc->allocateNewObject());
    800048d8:	00000913          	li	s2,0
    800048dc:	00900793          	li	a5,9
    800048e0:	0327e663          	bltu	a5,s2,8000490c <_ZN20KObjectAllocatorTest5test2Em+0x330>
    800048e4:	00190a13          	addi	s4,s2,1
    800048e8:	00048513          	mv	a0,s1
    800048ec:	00001097          	auipc	ra,0x1
    800048f0:	7d8080e7          	jalr	2008(ra) # 800060c4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800048f4:	00391913          	slli	s2,s2,0x3
    800048f8:	fb040793          	addi	a5,s0,-80
    800048fc:	01278933          	add	s2,a5,s2
    80004900:	faa93823          	sd	a0,-80(s2)
    80004904:	000a0913          	mv	s2,s4
    80004908:	fd5ff06f          	j	800048dc <_ZN20KObjectAllocatorTest5test2Em+0x300>
    for (size_t i = 0; i < 10; ++i) {
    8000490c:	00000b13          	li	s6,0
    size_t byte = 0; size_t bit = 7;
    80004910:	00700913          	li	s2,7
    80004914:	00000a93          	li	s5,0
    80004918:	1840006f          	j	80004a9c <_ZN20KObjectAllocatorTest5test2Em+0x4c0>
        if (objArr[i] != getObjectAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    8000491c:	06048a63          	beqz	s1,80004990 <_ZN20KObjectAllocatorTest5test2Em+0x3b4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004920:	00000913          	li	s2,0
    80004924:	0304b783          	ld	a5,48(s1)
    80004928:	02f97663          	bgeu	s2,a5,80004954 <_ZN20KObjectAllocatorTest5test2Em+0x378>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    8000492c:	ffffd097          	auipc	ra,0xffffd
    80004930:	254080e7          	jalr	596(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004934:	0284b783          	ld	a5,40(s1)
    80004938:	00391713          	slli	a4,s2,0x3
    8000493c:	00e787b3          	add	a5,a5,a4
    80004940:	0007b583          	ld	a1,0(a5)
    80004944:	ffffd097          	auipc	ra,0xffffd
    80004948:	3c8080e7          	jalr	968(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000494c:	00190913          	addi	s2,s2,1
    80004950:	fd5ff06f          	j	80004924 <_ZN20KObjectAllocatorTest5test2Em+0x348>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004954:	ffffd097          	auipc	ra,0xffffd
    80004958:	22c080e7          	jalr	556(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    8000495c:	0284b583          	ld	a1,40(s1)
    80004960:	ffffd097          	auipc	ra,0xffffd
    80004964:	3ac080e7          	jalr	940(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004968:	ffffd097          	auipc	ra,0xffffd
    8000496c:	218080e7          	jalr	536(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004970:	0204b583          	ld	a1,32(s1)
    80004974:	ffffd097          	auipc	ra,0xffffd
    80004978:	398080e7          	jalr	920(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    8000497c:	ffffd097          	auipc	ra,0xffffd
    80004980:	204080e7          	jalr	516(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004984:	00048593          	mv	a1,s1
    80004988:	ffffd097          	auipc	ra,0xffffd
    8000498c:	384080e7          	jalr	900(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    80004990:	00000a13          	li	s4,0
    80004994:	e05ff06f          	j	80004798 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
        if (objByte != byte || objBit != bit) { delete objAlloc; return false; }
    80004998:	06048a63          	beqz	s1,80004a0c <_ZN20KObjectAllocatorTest5test2Em+0x430>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000499c:	00000913          	li	s2,0
    800049a0:	0304b783          	ld	a5,48(s1)
    800049a4:	02f97663          	bgeu	s2,a5,800049d0 <_ZN20KObjectAllocatorTest5test2Em+0x3f4>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800049a8:	ffffd097          	auipc	ra,0xffffd
    800049ac:	1d8080e7          	jalr	472(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800049b0:	0284b783          	ld	a5,40(s1)
    800049b4:	00391713          	slli	a4,s2,0x3
    800049b8:	00e787b3          	add	a5,a5,a4
    800049bc:	0007b583          	ld	a1,0(a5)
    800049c0:	ffffd097          	auipc	ra,0xffffd
    800049c4:	34c080e7          	jalr	844(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800049c8:	00190913          	addi	s2,s2,1
    800049cc:	fd5ff06f          	j	800049a0 <_ZN20KObjectAllocatorTest5test2Em+0x3c4>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800049d0:	ffffd097          	auipc	ra,0xffffd
    800049d4:	1b0080e7          	jalr	432(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800049d8:	0284b583          	ld	a1,40(s1)
    800049dc:	ffffd097          	auipc	ra,0xffffd
    800049e0:	330080e7          	jalr	816(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800049e4:	ffffd097          	auipc	ra,0xffffd
    800049e8:	19c080e7          	jalr	412(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800049ec:	0204b583          	ld	a1,32(s1)
    800049f0:	ffffd097          	auipc	ra,0xffffd
    800049f4:	31c080e7          	jalr	796(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800049f8:	ffffd097          	auipc	ra,0xffffd
    800049fc:	188080e7          	jalr	392(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004a00:	00048593          	mv	a1,s1
    80004a04:	ffffd097          	auipc	ra,0xffffd
    80004a08:	308080e7          	jalr	776(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    80004a0c:	00000a13          	li	s4,0
    80004a10:	d89ff06f          	j	80004798 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
        if (!getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004a14:	d80482e3          	beqz	s1,80004798 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004a18:	00000913          	li	s2,0
    80004a1c:	0280006f          	j	80004a44 <_ZN20KObjectAllocatorTest5test2Em+0x468>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004a20:	ffffd097          	auipc	ra,0xffffd
    80004a24:	160080e7          	jalr	352(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004a28:	0284b783          	ld	a5,40(s1)
    80004a2c:	00391713          	slli	a4,s2,0x3
    80004a30:	00e787b3          	add	a5,a5,a4
    80004a34:	0007b583          	ld	a1,0(a5)
    80004a38:	ffffd097          	auipc	ra,0xffffd
    80004a3c:	2d4080e7          	jalr	724(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004a40:	00190913          	addi	s2,s2,1
    80004a44:	0304b783          	ld	a5,48(s1)
    80004a48:	fcf96ce3          	bltu	s2,a5,80004a20 <_ZN20KObjectAllocatorTest5test2Em+0x444>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004a4c:	ffffd097          	auipc	ra,0xffffd
    80004a50:	134080e7          	jalr	308(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004a54:	0284b583          	ld	a1,40(s1)
    80004a58:	ffffd097          	auipc	ra,0xffffd
    80004a5c:	2b4080e7          	jalr	692(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004a60:	ffffd097          	auipc	ra,0xffffd
    80004a64:	120080e7          	jalr	288(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004a68:	0204b583          	ld	a1,32(s1)
    80004a6c:	ffffd097          	auipc	ra,0xffffd
    80004a70:	2a0080e7          	jalr	672(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004a74:	ffffd097          	auipc	ra,0xffffd
    80004a78:	10c080e7          	jalr	268(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004a7c:	00048593          	mv	a1,s1
    80004a80:	ffffd097          	auipc	ra,0xffffd
    80004a84:	28c080e7          	jalr	652(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    80004a88:	d11ff06f          	j	80004798 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80004a8c:	001a8a93          	addi	s5,s5,1
    80004a90:	000b8913          	mv	s2,s7
    80004a94:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 10; ++i) {
    80004a98:	001b0b13          	addi	s6,s6,1
    80004a9c:	00900793          	li	a5,9
    80004aa0:	0967e663          	bltu	a5,s6,80004b2c <_ZN20KObjectAllocatorTest5test2Em+0x550>
        if (objArr[i] != getObjectAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004aa4:	003b1793          	slli	a5,s6,0x3
    80004aa8:	fb040713          	addi	a4,s0,-80
    80004aac:	00f707b3          	add	a5,a4,a5
    80004ab0:	fb07ba03          	ld	s4,-80(a5)
    80004ab4:	00048693          	mv	a3,s1
    80004ab8:	00090613          	mv	a2,s2
    80004abc:	000a8593          	mv	a1,s5
    80004ac0:	00098513          	mv	a0,s3
    80004ac4:	ffffe097          	auipc	ra,0xffffe
    80004ac8:	7d0080e7          	jalr	2000(ra) # 80003294 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>
    80004acc:	e4aa18e3          	bne	s4,a0,8000491c <_ZN20KObjectAllocatorTest5test2Em+0x340>
        size_t objByte = getByteOfObject(objArr[i], objAlloc);
    80004ad0:	00048613          	mv	a2,s1
    80004ad4:	000a0593          	mv	a1,s4
    80004ad8:	00098513          	mv	a0,s3
    80004adc:	ffffe097          	auipc	ra,0xffffe
    80004ae0:	6b4080e7          	jalr	1716(ra) # 80003190 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    80004ae4:	00050c13          	mv	s8,a0
        size_t objBit = getBitOfObject(objArr[i], objAlloc);
    80004ae8:	00048613          	mv	a2,s1
    80004aec:	000a0593          	mv	a1,s4
    80004af0:	00098513          	mv	a0,s3
    80004af4:	ffffe097          	auipc	ra,0xffffe
    80004af8:	71c080e7          	jalr	1820(ra) # 80003210 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
        if (objByte != byte || objBit != bit) { delete objAlloc; return false; }
    80004afc:	e98a9ee3          	bne	s5,s8,80004998 <_ZN20KObjectAllocatorTest5test2Em+0x3bc>
    80004b00:	e8a91ce3          	bne	s2,a0,80004998 <_ZN20KObjectAllocatorTest5test2Em+0x3bc>
        if (!getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004b04:	00048693          	mv	a3,s1
    80004b08:	00090613          	mv	a2,s2
    80004b0c:	000a8593          	mv	a1,s5
    80004b10:	00098513          	mv	a0,s3
    80004b14:	ffffe097          	auipc	ra,0xffffe
    80004b18:	5f4080e7          	jalr	1524(ra) # 80003108 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80004b1c:	00050a13          	mv	s4,a0
    80004b20:	ee050ae3          	beqz	a0,80004a14 <_ZN20KObjectAllocatorTest5test2Em+0x438>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80004b24:	f60918e3          	bnez	s2,80004a94 <_ZN20KObjectAllocatorTest5test2Em+0x4b8>
    80004b28:	f65ff06f          	j	80004a8c <_ZN20KObjectAllocatorTest5test2Em+0x4b0>
    for (size_t i = 0; i < 6; ++i) {
    80004b2c:	00000a13          	li	s4,0
    80004b30:	0900006f          	j	80004bc0 <_ZN20KObjectAllocatorTest5test2Em+0x5e4>
        if (getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004b34:	06048a63          	beqz	s1,80004ba8 <_ZN20KObjectAllocatorTest5test2Em+0x5cc>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004b38:	00000913          	li	s2,0
    80004b3c:	0304b783          	ld	a5,48(s1)
    80004b40:	02f97663          	bgeu	s2,a5,80004b6c <_ZN20KObjectAllocatorTest5test2Em+0x590>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004b44:	ffffd097          	auipc	ra,0xffffd
    80004b48:	03c080e7          	jalr	60(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004b4c:	0284b783          	ld	a5,40(s1)
    80004b50:	00391713          	slli	a4,s2,0x3
    80004b54:	00e787b3          	add	a5,a5,a4
    80004b58:	0007b583          	ld	a1,0(a5)
    80004b5c:	ffffd097          	auipc	ra,0xffffd
    80004b60:	1b0080e7          	jalr	432(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004b64:	00190913          	addi	s2,s2,1
    80004b68:	fd5ff06f          	j	80004b3c <_ZN20KObjectAllocatorTest5test2Em+0x560>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004b6c:	ffffd097          	auipc	ra,0xffffd
    80004b70:	014080e7          	jalr	20(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004b74:	0284b583          	ld	a1,40(s1)
    80004b78:	ffffd097          	auipc	ra,0xffffd
    80004b7c:	194080e7          	jalr	404(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004b80:	ffffd097          	auipc	ra,0xffffd
    80004b84:	000080e7          	jalr	ra # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004b88:	0204b583          	ld	a1,32(s1)
    80004b8c:	ffffd097          	auipc	ra,0xffffd
    80004b90:	180080e7          	jalr	384(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004b94:	ffffd097          	auipc	ra,0xffffd
    80004b98:	fec080e7          	jalr	-20(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004b9c:	00048593          	mv	a1,s1
    80004ba0:	ffffd097          	auipc	ra,0xffffd
    80004ba4:	16c080e7          	jalr	364(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    80004ba8:	00000a13          	li	s4,0
    80004bac:	bedff06f          	j	80004798 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80004bb0:	001a8a93          	addi	s5,s5,1
    80004bb4:	000b8913          	mv	s2,s7
    80004bb8:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 6; ++i) {
    80004bbc:	001a0a13          	addi	s4,s4,1
    80004bc0:	00500793          	li	a5,5
    80004bc4:	0347e463          	bltu	a5,s4,80004bec <_ZN20KObjectAllocatorTest5test2Em+0x610>
        if (getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004bc8:	00048693          	mv	a3,s1
    80004bcc:	00090613          	mv	a2,s2
    80004bd0:	000a8593          	mv	a1,s5
    80004bd4:	00098513          	mv	a0,s3
    80004bd8:	ffffe097          	auipc	ra,0xffffe
    80004bdc:	530080e7          	jalr	1328(ra) # 80003108 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80004be0:	f4051ae3          	bnez	a0,80004b34 <_ZN20KObjectAllocatorTest5test2Em+0x558>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80004be4:	fc091ae3          	bnez	s2,80004bb8 <_ZN20KObjectAllocatorTest5test2Em+0x5dc>
    80004be8:	fc9ff06f          	j	80004bb0 <_ZN20KObjectAllocatorTest5test2Em+0x5d4>
    objAlloc->freeObject(objArr[4]);
    80004bec:	f8043583          	ld	a1,-128(s0)
    80004bf0:	00048513          	mv	a0,s1
    80004bf4:	00001097          	auipc	ra,0x1
    80004bf8:	250080e7          	jalr	592(ra) # 80005e44 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[7]);
    80004bfc:	f9843583          	ld	a1,-104(s0)
    80004c00:	00048513          	mv	a0,s1
    80004c04:	00001097          	auipc	ra,0x1
    80004c08:	240080e7          	jalr	576(ra) # 80005e44 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[8]);
    80004c0c:	fa043583          	ld	a1,-96(s0)
    80004c10:	00048513          	mv	a0,s1
    80004c14:	00001097          	auipc	ra,0x1
    80004c18:	230080e7          	jalr	560(ra) # 80005e44 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[4] = objAlloc->allocateNewObject();
    80004c1c:	00048513          	mv	a0,s1
    80004c20:	00001097          	auipc	ra,0x1
    80004c24:	4a4080e7          	jalr	1188(ra) # 800060c4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004c28:	00050913          	mv	s2,a0
    if (objArr[4] != getObjectAt(1, 7, objAlloc)) { delete objAlloc; return false; }
    80004c2c:	00048693          	mv	a3,s1
    80004c30:	00700613          	li	a2,7
    80004c34:	00100593          	li	a1,1
    80004c38:	00098513          	mv	a0,s3
    80004c3c:	ffffe097          	auipc	ra,0xffffe
    80004c40:	658080e7          	jalr	1624(ra) # 80003294 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>
    80004c44:	08a90063          	beq	s2,a0,80004cc4 <_ZN20KObjectAllocatorTest5test2Em+0x6e8>
    80004c48:	06048a63          	beqz	s1,80004cbc <_ZN20KObjectAllocatorTest5test2Em+0x6e0>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004c4c:	00000913          	li	s2,0
    80004c50:	0280006f          	j	80004c78 <_ZN20KObjectAllocatorTest5test2Em+0x69c>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004c54:	ffffd097          	auipc	ra,0xffffd
    80004c58:	f2c080e7          	jalr	-212(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004c5c:	0284b783          	ld	a5,40(s1)
    80004c60:	00391713          	slli	a4,s2,0x3
    80004c64:	00e787b3          	add	a5,a5,a4
    80004c68:	0007b583          	ld	a1,0(a5)
    80004c6c:	ffffd097          	auipc	ra,0xffffd
    80004c70:	0a0080e7          	jalr	160(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004c74:	00190913          	addi	s2,s2,1
    80004c78:	0304b783          	ld	a5,48(s1)
    80004c7c:	fcf96ce3          	bltu	s2,a5,80004c54 <_ZN20KObjectAllocatorTest5test2Em+0x678>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004c80:	ffffd097          	auipc	ra,0xffffd
    80004c84:	f00080e7          	jalr	-256(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004c88:	0284b583          	ld	a1,40(s1)
    80004c8c:	ffffd097          	auipc	ra,0xffffd
    80004c90:	080080e7          	jalr	128(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004c94:	ffffd097          	auipc	ra,0xffffd
    80004c98:	eec080e7          	jalr	-276(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004c9c:	0204b583          	ld	a1,32(s1)
    80004ca0:	ffffd097          	auipc	ra,0xffffd
    80004ca4:	06c080e7          	jalr	108(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004ca8:	ffffd097          	auipc	ra,0xffffd
    80004cac:	ed8080e7          	jalr	-296(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004cb0:	00048593          	mv	a1,s1
    80004cb4:	ffffd097          	auipc	ra,0xffffd
    80004cb8:	058080e7          	jalr	88(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    80004cbc:	00000a13          	li	s4,0
    80004cc0:	ad9ff06f          	j	80004798 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    byte = getByteOfObject(objArr[4], objAlloc);
    80004cc4:	00048613          	mv	a2,s1
    80004cc8:	00090593          	mv	a1,s2
    80004ccc:	00098513          	mv	a0,s3
    80004cd0:	ffffe097          	auipc	ra,0xffffe
    80004cd4:	4c0080e7          	jalr	1216(ra) # 80003190 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    80004cd8:	00050a13          	mv	s4,a0
    bit = getBitOfObject(objArr[4], objAlloc);
    80004cdc:	00048613          	mv	a2,s1
    80004ce0:	00090593          	mv	a1,s2
    80004ce4:	00098513          	mv	a0,s3
    80004ce8:	ffffe097          	auipc	ra,0xffffe
    80004cec:	528080e7          	jalr	1320(ra) # 80003210 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80004cf0:	00050913          	mv	s2,a0
    if (byte != 1 || bit != 7) { delete objAlloc; return false; }
    80004cf4:	00100793          	li	a5,1
    80004cf8:	00fa1663          	bne	s4,a5,80004d04 <_ZN20KObjectAllocatorTest5test2Em+0x728>
    80004cfc:	00700793          	li	a5,7
    80004d00:	08f50063          	beq	a0,a5,80004d80 <_ZN20KObjectAllocatorTest5test2Em+0x7a4>
    80004d04:	06048a63          	beqz	s1,80004d78 <_ZN20KObjectAllocatorTest5test2Em+0x79c>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004d08:	00000913          	li	s2,0
    80004d0c:	0280006f          	j	80004d34 <_ZN20KObjectAllocatorTest5test2Em+0x758>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004d10:	ffffd097          	auipc	ra,0xffffd
    80004d14:	e70080e7          	jalr	-400(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004d18:	0284b783          	ld	a5,40(s1)
    80004d1c:	00391713          	slli	a4,s2,0x3
    80004d20:	00e787b3          	add	a5,a5,a4
    80004d24:	0007b583          	ld	a1,0(a5)
    80004d28:	ffffd097          	auipc	ra,0xffffd
    80004d2c:	fe4080e7          	jalr	-28(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004d30:	00190913          	addi	s2,s2,1
    80004d34:	0304b783          	ld	a5,48(s1)
    80004d38:	fcf96ce3          	bltu	s2,a5,80004d10 <_ZN20KObjectAllocatorTest5test2Em+0x734>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004d3c:	ffffd097          	auipc	ra,0xffffd
    80004d40:	e44080e7          	jalr	-444(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004d44:	0284b583          	ld	a1,40(s1)
    80004d48:	ffffd097          	auipc	ra,0xffffd
    80004d4c:	fc4080e7          	jalr	-60(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004d50:	ffffd097          	auipc	ra,0xffffd
    80004d54:	e30080e7          	jalr	-464(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004d58:	0204b583          	ld	a1,32(s1)
    80004d5c:	ffffd097          	auipc	ra,0xffffd
    80004d60:	fb0080e7          	jalr	-80(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004d64:	ffffd097          	auipc	ra,0xffffd
    80004d68:	e1c080e7          	jalr	-484(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004d6c:	00048593          	mv	a1,s1
    80004d70:	ffffd097          	auipc	ra,0xffffd
    80004d74:	f9c080e7          	jalr	-100(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    80004d78:	00000a13          	li	s4,0
    80004d7c:	a1dff06f          	j	80004798 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    bool expectedBitValues[16] = {
    80004d80:	00004797          	auipc	a5,0x4
    80004d84:	7f078793          	addi	a5,a5,2032 # 80009570 <CONSOLE_STATUS+0x560>
    80004d88:	0007b703          	ld	a4,0(a5)
    80004d8c:	f4e43823          	sd	a4,-176(s0)
    80004d90:	0087b783          	ld	a5,8(a5)
    80004d94:	f4f43c23          	sd	a5,-168(s0)
    for (size_t i = 0; i < 16; ++i) {
    80004d98:	00000a13          	li	s4,0
    byte = 0; bit = 7;
    80004d9c:	00000a93          	li	s5,0
    80004da0:	02c0006f          	j	80004dcc <_ZN20KObjectAllocatorTest5test2Em+0x7f0>
        { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    80004da4:	00048863          	beqz	s1,80004db4 <_ZN20KObjectAllocatorTest5test2Em+0x7d8>
    80004da8:	00048513          	mv	a0,s1
    80004dac:	00001097          	auipc	ra,0x1
    80004db0:	c50080e7          	jalr	-944(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    80004db4:	00000a13          	li	s4,0
    80004db8:	9e1ff06f          	j	80004798 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    80004dbc:	001a8a93          	addi	s5,s5,1
    80004dc0:	000b8913          	mv	s2,s7
    80004dc4:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 16; ++i) {
    80004dc8:	001a0a13          	addi	s4,s4,1
    80004dcc:	00f00793          	li	a5,15
    80004dd0:	0347ea63          	bltu	a5,s4,80004e04 <_ZN20KObjectAllocatorTest5test2Em+0x828>
        if (expectedBitValues[i] != getValueOfBitAt(byte, bit, objAlloc))
    80004dd4:	fb040793          	addi	a5,s0,-80
    80004dd8:	014787b3          	add	a5,a5,s4
    80004ddc:	fa07cb03          	lbu	s6,-96(a5)
    80004de0:	00048693          	mv	a3,s1
    80004de4:	00090613          	mv	a2,s2
    80004de8:	000a8593          	mv	a1,s5
    80004dec:	00098513          	mv	a0,s3
    80004df0:	ffffe097          	auipc	ra,0xffffe
    80004df4:	318080e7          	jalr	792(ra) # 80003108 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80004df8:	faab16e3          	bne	s6,a0,80004da4 <_ZN20KObjectAllocatorTest5test2Em+0x7c8>
        { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    80004dfc:	fc0914e3          	bnez	s2,80004dc4 <_ZN20KObjectAllocatorTest5test2Em+0x7e8>
    80004e00:	fbdff06f          	j	80004dbc <_ZN20KObjectAllocatorTest5test2Em+0x7e0>
    delete objAlloc;
    80004e04:	06048e63          	beqz	s1,80004e80 <_ZN20KObjectAllocatorTest5test2Em+0x8a4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004e08:	00000913          	li	s2,0
    80004e0c:	0280006f          	j	80004e34 <_ZN20KObjectAllocatorTest5test2Em+0x858>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004e10:	ffffd097          	auipc	ra,0xffffd
    80004e14:	d70080e7          	jalr	-656(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004e18:	0284b783          	ld	a5,40(s1)
    80004e1c:	00391713          	slli	a4,s2,0x3
    80004e20:	00e787b3          	add	a5,a5,a4
    80004e24:	0007b583          	ld	a1,0(a5)
    80004e28:	ffffd097          	auipc	ra,0xffffd
    80004e2c:	ee4080e7          	jalr	-284(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004e30:	00190913          	addi	s2,s2,1
    80004e34:	0304b783          	ld	a5,48(s1)
    80004e38:	fcf96ce3          	bltu	s2,a5,80004e10 <_ZN20KObjectAllocatorTest5test2Em+0x834>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004e3c:	ffffd097          	auipc	ra,0xffffd
    80004e40:	d44080e7          	jalr	-700(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004e44:	0284b583          	ld	a1,40(s1)
    80004e48:	ffffd097          	auipc	ra,0xffffd
    80004e4c:	ec4080e7          	jalr	-316(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004e50:	ffffd097          	auipc	ra,0xffffd
    80004e54:	d30080e7          	jalr	-720(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004e58:	0204b583          	ld	a1,32(s1)
    80004e5c:	ffffd097          	auipc	ra,0xffffd
    80004e60:	eb0080e7          	jalr	-336(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004e64:	ffffd097          	auipc	ra,0xffffd
    80004e68:	d1c080e7          	jalr	-740(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004e6c:	00048593          	mv	a1,s1
    80004e70:	ffffd097          	auipc	ra,0xffffd
    80004e74:	e9c080e7          	jalr	-356(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    return true;
    80004e78:	00100a13          	li	s4,1
    }
    80004e7c:	91dff06f          	j	80004798 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    80004e80:	00100a13          	li	s4,1
    80004e84:	915ff06f          	j	80004798 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    80004e88:	00050913          	mv	s2,a0
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 3);
    80004e8c:	00048513          	mv	a0,s1
    80004e90:	00001097          	auipc	ra,0x1
    80004e94:	b6c080e7          	jalr	-1172(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    80004e98:	00090513          	mv	a0,s2
    80004e9c:	00007097          	auipc	ra,0x7
    80004ea0:	9dc080e7          	jalr	-1572(ra) # 8000b878 <_Unwind_Resume>

0000000080004ea4 <_ZN20KObjectAllocatorTest5test3Em>:

bool KObjectAllocatorTest::test3(size_t size) {
    80004ea4:	81010113          	addi	sp,sp,-2032
    80004ea8:	7e113423          	sd	ra,2024(sp)
    80004eac:	7e813023          	sd	s0,2016(sp)
    80004eb0:	7c913c23          	sd	s1,2008(sp)
    80004eb4:	7d213823          	sd	s2,2000(sp)
    80004eb8:	7d313423          	sd	s3,1992(sp)
    80004ebc:	7d413023          	sd	s4,1984(sp)
    80004ec0:	7b513c23          	sd	s5,1976(sp)
    80004ec4:	7f010413          	addi	s0,sp,2032
    80004ec8:	fb010113          	addi	sp,sp,-80
    80004ecc:	00050993          	mv	s3,a0
    80004ed0:	00058913          	mv	s2,a1
        return MemoryAllocator::instance()->kmem_alloc(size);
    80004ed4:	ffffd097          	auipc	ra,0xffffd
    80004ed8:	cac080e7          	jalr	-852(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004edc:	04000593          	li	a1,64
    80004ee0:	ffffd097          	auipc	ra,0xffffd
    80004ee4:	d84080e7          	jalr	-636(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80004ee8:	00050493          	mv	s1,a0
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    80004eec:	00500793          	li	a5,5
    80004ef0:	00f53023          	sd	a5,0(a0)
    80004ef4:	00f53423          	sd	a5,8(a0)
    80004ef8:	01253c23          	sd	s2,24(a0)
    80004efc:	00100793          	li	a5,1
    80004f00:	02f53823          	sd	a5,48(a0)
    80004f04:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80004f08:	ffffd097          	auipc	ra,0xffffd
    80004f0c:	c78080e7          	jalr	-904(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004f10:	0304b583          	ld	a1,48(s1)
    80004f14:	00359593          	slli	a1,a1,0x3
    80004f18:	ffffd097          	auipc	ra,0xffffd
    80004f1c:	d4c080e7          	jalr	-692(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80004f20:	02a4b423          	sd	a0,40(s1)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80004f24:	ffffd097          	auipc	ra,0xffffd
    80004f28:	c5c080e7          	jalr	-932(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004f2c:	0304b583          	ld	a1,48(s1)
    80004f30:	00359593          	slli	a1,a1,0x3
    80004f34:	ffffd097          	auipc	ra,0xffffd
    80004f38:	d30080e7          	jalr	-720(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80004f3c:	02a4b023          	sd	a0,32(s1)
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80004f40:	0084b703          	ld	a4,8(s1)
    80004f44:	ff877793          	andi	a5,a4,-8
    80004f48:	02f70463          	beq	a4,a5,80004f70 <_ZN20KObjectAllocatorTest5test3Em+0xcc>
    80004f4c:	00800713          	li	a4,8
    80004f50:	00e787b3          	add	a5,a5,a4
    80004f54:	00f4b423          	sd	a5,8(s1)
    80004f58:	00f4b023          	sd	a5,0(s1)
        memorySizeForBits = numberOfObjects / 8;
    80004f5c:	0037d793          	srli	a5,a5,0x3
    80004f60:	00f4b823          	sd	a5,16(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80004f64:	ffffd097          	auipc	ra,0xffffd
    80004f68:	c1c080e7          	jalr	-996(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004f6c:	00c0006f          	j	80004f78 <_ZN20KObjectAllocatorTest5test3Em+0xd4>
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80004f70:	00000713          	li	a4,0
    80004f74:	fddff06f          	j	80004f50 <_ZN20KObjectAllocatorTest5test3Em+0xac>
                memorySizeForBits + initialNumberOfObjects * objectSize
    80004f78:	0104b583          	ld	a1,16(s1)
    80004f7c:	0004b783          	ld	a5,0(s1)
    80004f80:	02f907b3          	mul	a5,s2,a5
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80004f84:	0284ba03          	ld	s4,40(s1)
    80004f88:	00f585b3          	add	a1,a1,a5
    80004f8c:	ffffd097          	auipc	ra,0xffffd
    80004f90:	cd8080e7          	jalr	-808(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80004f94:	00aa3023          	sd	a0,0(s4)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    80004f98:	0284b783          	ld	a5,40(s1)
    80004f9c:	0007b783          	ld	a5,0(a5)
    80004fa0:	0104b683          	ld	a3,16(s1)
    80004fa4:	0204b703          	ld	a4,32(s1)
    80004fa8:	00d787b3          	add	a5,a5,a3
    80004fac:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    80004fb0:	00000793          	li	a5,0
    80004fb4:	0104b703          	ld	a4,16(s1)
    80004fb8:	00e7fe63          	bgeu	a5,a4,80004fd4 <_ZN20KObjectAllocatorTest5test3Em+0x130>
    80004fbc:	0284b703          	ld	a4,40(s1)
    80004fc0:	00073703          	ld	a4,0(a4)
    80004fc4:	00f70733          	add	a4,a4,a5
    80004fc8:	00070023          	sb	zero,0(a4)
    80004fcc:	00178793          	addi	a5,a5,1
    80004fd0:	fe5ff06f          	j	80004fb4 <_ZN20KObjectAllocatorTest5test3Em+0x110>
    size_t getNumberOfObjects() { return numberOfObjects; }
    80004fd4:	0084b703          	ld	a4,8(s1)
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 5);
    if (objAlloc->getNumberOfObjects() != 8) { delete objAlloc; return false; }
    80004fd8:	00800793          	li	a5,8
    80004fdc:	0af70263          	beq	a4,a5,80005080 <_ZN20KObjectAllocatorTest5test3Em+0x1dc>
    80004fe0:	06048a63          	beqz	s1,80005054 <_ZN20KObjectAllocatorTest5test3Em+0x1b0>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004fe4:	00000913          	li	s2,0
    80004fe8:	0304b783          	ld	a5,48(s1)
    80004fec:	02f97663          	bgeu	s2,a5,80005018 <_ZN20KObjectAllocatorTest5test3Em+0x174>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004ff0:	ffffd097          	auipc	ra,0xffffd
    80004ff4:	b90080e7          	jalr	-1136(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80004ff8:	0284b783          	ld	a5,40(s1)
    80004ffc:	00391713          	slli	a4,s2,0x3
    80005000:	00e787b3          	add	a5,a5,a4
    80005004:	0007b583          	ld	a1,0(a5)
    80005008:	ffffd097          	auipc	ra,0xffffd
    8000500c:	d04080e7          	jalr	-764(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005010:	00190913          	addi	s2,s2,1
    80005014:	fd5ff06f          	j	80004fe8 <_ZN20KObjectAllocatorTest5test3Em+0x144>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80005018:	ffffd097          	auipc	ra,0xffffd
    8000501c:	b68080e7          	jalr	-1176(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80005020:	0284b583          	ld	a1,40(s1)
    80005024:	ffffd097          	auipc	ra,0xffffd
    80005028:	ce8080e7          	jalr	-792(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    8000502c:	ffffd097          	auipc	ra,0xffffd
    80005030:	b54080e7          	jalr	-1196(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80005034:	0204b583          	ld	a1,32(s1)
    80005038:	ffffd097          	auipc	ra,0xffffd
    8000503c:	cd4080e7          	jalr	-812(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80005040:	ffffd097          	auipc	ra,0xffffd
    80005044:	b40080e7          	jalr	-1216(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80005048:	00048593          	mv	a1,s1
    8000504c:	ffffd097          	auipc	ra,0xffffd
    80005050:	cc0080e7          	jalr	-832(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    80005054:	00000513          	li	a0,0
        { delete objAlloc; return false; }
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    }
    delete objAlloc;
    return true;
    80005058:	05010113          	addi	sp,sp,80
    8000505c:	7e813083          	ld	ra,2024(sp)
    80005060:	7e013403          	ld	s0,2016(sp)
    80005064:	7d813483          	ld	s1,2008(sp)
    80005068:	7d013903          	ld	s2,2000(sp)
    8000506c:	7c813983          	ld	s3,1992(sp)
    80005070:	7c013a03          	ld	s4,1984(sp)
    80005074:	7b813a83          	ld	s5,1976(sp)
    80005078:	7f010113          	addi	sp,sp,2032
    8000507c:	00008067          	ret
    size_t getMemorySizeForBits() { return memorySizeForBits; }
    80005080:	0104b703          	ld	a4,16(s1)
    if (objAlloc->getMemorySizeForBits() != 1) { delete objAlloc; return false; }
    80005084:	00100793          	li	a5,1
    80005088:	08f70063          	beq	a4,a5,80005108 <_ZN20KObjectAllocatorTest5test3Em+0x264>
    8000508c:	06048a63          	beqz	s1,80005100 <_ZN20KObjectAllocatorTest5test3Em+0x25c>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005090:	00000913          	li	s2,0
    80005094:	0304b783          	ld	a5,48(s1)
    80005098:	02f97663          	bgeu	s2,a5,800050c4 <_ZN20KObjectAllocatorTest5test3Em+0x220>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    8000509c:	ffffd097          	auipc	ra,0xffffd
    800050a0:	ae4080e7          	jalr	-1308(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800050a4:	0284b783          	ld	a5,40(s1)
    800050a8:	00391713          	slli	a4,s2,0x3
    800050ac:	00e787b3          	add	a5,a5,a4
    800050b0:	0007b583          	ld	a1,0(a5)
    800050b4:	ffffd097          	auipc	ra,0xffffd
    800050b8:	c58080e7          	jalr	-936(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800050bc:	00190913          	addi	s2,s2,1
    800050c0:	fd5ff06f          	j	80005094 <_ZN20KObjectAllocatorTest5test3Em+0x1f0>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800050c4:	ffffd097          	auipc	ra,0xffffd
    800050c8:	abc080e7          	jalr	-1348(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800050cc:	0284b583          	ld	a1,40(s1)
    800050d0:	ffffd097          	auipc	ra,0xffffd
    800050d4:	c3c080e7          	jalr	-964(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800050d8:	ffffd097          	auipc	ra,0xffffd
    800050dc:	aa8080e7          	jalr	-1368(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800050e0:	0204b583          	ld	a1,32(s1)
    800050e4:	ffffd097          	auipc	ra,0xffffd
    800050e8:	c28080e7          	jalr	-984(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800050ec:	ffffd097          	auipc	ra,0xffffd
    800050f0:	a94080e7          	jalr	-1388(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800050f4:	00048593          	mv	a1,s1
    800050f8:	ffffd097          	auipc	ra,0xffffd
    800050fc:	c14080e7          	jalr	-1004(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    80005100:	00000513          	li	a0,0
    80005104:	f55ff06f          	j	80005058 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    size_t getObjectSize() { return objectSize; }
    80005108:	0184b783          	ld	a5,24(s1)
    if (objAlloc->getObjectSize() != size) { delete objAlloc; return false; }
    8000510c:	08f90063          	beq	s2,a5,8000518c <_ZN20KObjectAllocatorTest5test3Em+0x2e8>
    80005110:	06048a63          	beqz	s1,80005184 <_ZN20KObjectAllocatorTest5test3Em+0x2e0>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005114:	00000913          	li	s2,0
    80005118:	0304b783          	ld	a5,48(s1)
    8000511c:	02f97663          	bgeu	s2,a5,80005148 <_ZN20KObjectAllocatorTest5test3Em+0x2a4>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80005120:	ffffd097          	auipc	ra,0xffffd
    80005124:	a60080e7          	jalr	-1440(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80005128:	0284b783          	ld	a5,40(s1)
    8000512c:	00391713          	slli	a4,s2,0x3
    80005130:	00e787b3          	add	a5,a5,a4
    80005134:	0007b583          	ld	a1,0(a5)
    80005138:	ffffd097          	auipc	ra,0xffffd
    8000513c:	bd4080e7          	jalr	-1068(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005140:	00190913          	addi	s2,s2,1
    80005144:	fd5ff06f          	j	80005118 <_ZN20KObjectAllocatorTest5test3Em+0x274>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80005148:	ffffd097          	auipc	ra,0xffffd
    8000514c:	a38080e7          	jalr	-1480(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80005150:	0284b583          	ld	a1,40(s1)
    80005154:	ffffd097          	auipc	ra,0xffffd
    80005158:	bb8080e7          	jalr	-1096(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    8000515c:	ffffd097          	auipc	ra,0xffffd
    80005160:	a24080e7          	jalr	-1500(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80005164:	0204b583          	ld	a1,32(s1)
    80005168:	ffffd097          	auipc	ra,0xffffd
    8000516c:	ba4080e7          	jalr	-1116(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80005170:	ffffd097          	auipc	ra,0xffffd
    80005174:	a10080e7          	jalr	-1520(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80005178:	00048593          	mv	a1,s1
    8000517c:	ffffd097          	auipc	ra,0xffffd
    80005180:	b90080e7          	jalr	-1136(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    80005184:	00000513          	li	a0,0
    80005188:	ed1ff06f          	j	80005058 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    void* objArr[256]; for (size_t i = 0; i < 32; objArr[i++] = objAlloc->allocateNewObject());
    8000518c:	00000913          	li	s2,0
    80005190:	01f00793          	li	a5,31
    80005194:	0327e663          	bltu	a5,s2,800051c0 <_ZN20KObjectAllocatorTest5test3Em+0x31c>
    80005198:	00190a13          	addi	s4,s2,1
    8000519c:	00048513          	mv	a0,s1
    800051a0:	00001097          	auipc	ra,0x1
    800051a4:	f24080e7          	jalr	-220(ra) # 800060c4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800051a8:	00391913          	slli	s2,s2,0x3
    800051ac:	fc040793          	addi	a5,s0,-64
    800051b0:	01278933          	add	s2,a5,s2
    800051b4:	80a93023          	sd	a0,-2048(s2)
    800051b8:	000a0913          	mv	s2,s4
    800051bc:	fd5ff06f          	j	80005190 <_ZN20KObjectAllocatorTest5test3Em+0x2ec>
    if (getByteOfObject(objArr[31], objAlloc) != 3
    800051c0:	8b843903          	ld	s2,-1864(s0)
    800051c4:	00048613          	mv	a2,s1
    800051c8:	00090593          	mv	a1,s2
    800051cc:	00098513          	mv	a0,s3
    800051d0:	ffffe097          	auipc	ra,0xffffe
    800051d4:	fc0080e7          	jalr	-64(ra) # 80003190 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[31], objAlloc) != 0)
    800051d8:	00300793          	li	a5,3
    800051dc:	02f50e63          	beq	a0,a5,80005218 <_ZN20KObjectAllocatorTest5test3Em+0x374>
    { delete objAlloc; return false; }
    800051e0:	0c048863          	beqz	s1,800052b0 <_ZN20KObjectAllocatorTest5test3Em+0x40c>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800051e4:	00000913          	li	s2,0
    800051e8:	0304b783          	ld	a5,48(s1)
    800051ec:	08f97463          	bgeu	s2,a5,80005274 <_ZN20KObjectAllocatorTest5test3Em+0x3d0>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800051f0:	ffffd097          	auipc	ra,0xffffd
    800051f4:	990080e7          	jalr	-1648(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800051f8:	0284b783          	ld	a5,40(s1)
    800051fc:	00391713          	slli	a4,s2,0x3
    80005200:	00e787b3          	add	a5,a5,a4
    80005204:	0007b583          	ld	a1,0(a5)
    80005208:	ffffd097          	auipc	ra,0xffffd
    8000520c:	b04080e7          	jalr	-1276(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005210:	00190913          	addi	s2,s2,1
    80005214:	fd5ff06f          	j	800051e8 <_ZN20KObjectAllocatorTest5test3Em+0x344>
        || getBitOfObject(objArr[31], objAlloc) != 0)
    80005218:	00048613          	mv	a2,s1
    8000521c:	00090593          	mv	a1,s2
    80005220:	00098513          	mv	a0,s3
    80005224:	ffffe097          	auipc	ra,0xffffe
    80005228:	fec080e7          	jalr	-20(ra) # 80003210 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    8000522c:	00050a93          	mv	s5,a0
    80005230:	fa0518e3          	bnez	a0,800051e0 <_ZN20KObjectAllocatorTest5test3Em+0x33c>
    if (objAlloc->nextNonTakenByte != 4) { delete objAlloc; return false; }
    80005234:	0384b703          	ld	a4,56(s1)
    80005238:	00400793          	li	a5,4
    8000523c:	06f71e63          	bne	a4,a5,800052b8 <_ZN20KObjectAllocatorTest5test3Em+0x414>
    for (size_t i = 32; i < 256; objArr[i++] = objAlloc->allocateNewObject());
    80005240:	02000913          	li	s2,32
    80005244:	0ff00793          	li	a5,255
    80005248:	0f27e463          	bltu	a5,s2,80005330 <_ZN20KObjectAllocatorTest5test3Em+0x48c>
    8000524c:	00190a13          	addi	s4,s2,1
    80005250:	00048513          	mv	a0,s1
    80005254:	00001097          	auipc	ra,0x1
    80005258:	e70080e7          	jalr	-400(ra) # 800060c4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    8000525c:	00391913          	slli	s2,s2,0x3
    80005260:	fc040793          	addi	a5,s0,-64
    80005264:	01278933          	add	s2,a5,s2
    80005268:	80a93023          	sd	a0,-2048(s2)
    8000526c:	000a0913          	mv	s2,s4
    80005270:	fd5ff06f          	j	80005244 <_ZN20KObjectAllocatorTest5test3Em+0x3a0>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80005274:	ffffd097          	auipc	ra,0xffffd
    80005278:	90c080e7          	jalr	-1780(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    8000527c:	0284b583          	ld	a1,40(s1)
    80005280:	ffffd097          	auipc	ra,0xffffd
    80005284:	a8c080e7          	jalr	-1396(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80005288:	ffffd097          	auipc	ra,0xffffd
    8000528c:	8f8080e7          	jalr	-1800(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80005290:	0204b583          	ld	a1,32(s1)
    80005294:	ffffd097          	auipc	ra,0xffffd
    80005298:	a78080e7          	jalr	-1416(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    8000529c:	ffffd097          	auipc	ra,0xffffd
    800052a0:	8e4080e7          	jalr	-1820(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800052a4:	00048593          	mv	a1,s1
    800052a8:	ffffd097          	auipc	ra,0xffffd
    800052ac:	a64080e7          	jalr	-1436(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    { delete objAlloc; return false; }
    800052b0:	00000513          	li	a0,0
    800052b4:	da5ff06f          	j	80005058 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    if (objAlloc->nextNonTakenByte != 4) { delete objAlloc; return false; }
    800052b8:	02049663          	bnez	s1,800052e4 <_ZN20KObjectAllocatorTest5test3Em+0x440>
    800052bc:	06c0006f          	j	80005328 <_ZN20KObjectAllocatorTest5test3Em+0x484>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800052c0:	ffffd097          	auipc	ra,0xffffd
    800052c4:	8c0080e7          	jalr	-1856(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800052c8:	0284b783          	ld	a5,40(s1)
    800052cc:	003a9713          	slli	a4,s5,0x3
    800052d0:	00e787b3          	add	a5,a5,a4
    800052d4:	0007b583          	ld	a1,0(a5)
    800052d8:	ffffd097          	auipc	ra,0xffffd
    800052dc:	a34080e7          	jalr	-1484(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800052e0:	001a8a93          	addi	s5,s5,1
    800052e4:	0304b783          	ld	a5,48(s1)
    800052e8:	fcfaece3          	bltu	s5,a5,800052c0 <_ZN20KObjectAllocatorTest5test3Em+0x41c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800052ec:	ffffd097          	auipc	ra,0xffffd
    800052f0:	894080e7          	jalr	-1900(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800052f4:	0284b583          	ld	a1,40(s1)
    800052f8:	ffffd097          	auipc	ra,0xffffd
    800052fc:	a14080e7          	jalr	-1516(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80005300:	ffffd097          	auipc	ra,0xffffd
    80005304:	880080e7          	jalr	-1920(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80005308:	0204b583          	ld	a1,32(s1)
    8000530c:	ffffd097          	auipc	ra,0xffffd
    80005310:	a00080e7          	jalr	-1536(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80005314:	ffffd097          	auipc	ra,0xffffd
    80005318:	86c080e7          	jalr	-1940(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    8000531c:	00048593          	mv	a1,s1
    80005320:	ffffd097          	auipc	ra,0xffffd
    80005324:	9ec080e7          	jalr	-1556(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    80005328:	00000513          	li	a0,0
    8000532c:	d2dff06f          	j	80005058 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    if (objAlloc->nextNonTakenByte != 32) { delete objAlloc; return false; }
    80005330:	0384b703          	ld	a4,56(s1)
    80005334:	02000793          	li	a5,32
    80005338:	06f70e63          	beq	a4,a5,800053b4 <_ZN20KObjectAllocatorTest5test3Em+0x510>
    8000533c:	06048863          	beqz	s1,800053ac <_ZN20KObjectAllocatorTest5test3Em+0x508>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005340:	0304b783          	ld	a5,48(s1)
    80005344:	02faf663          	bgeu	s5,a5,80005370 <_ZN20KObjectAllocatorTest5test3Em+0x4cc>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80005348:	ffffd097          	auipc	ra,0xffffd
    8000534c:	838080e7          	jalr	-1992(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80005350:	0284b783          	ld	a5,40(s1)
    80005354:	003a9713          	slli	a4,s5,0x3
    80005358:	00e787b3          	add	a5,a5,a4
    8000535c:	0007b583          	ld	a1,0(a5)
    80005360:	ffffd097          	auipc	ra,0xffffd
    80005364:	9ac080e7          	jalr	-1620(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005368:	001a8a93          	addi	s5,s5,1
    8000536c:	fd5ff06f          	j	80005340 <_ZN20KObjectAllocatorTest5test3Em+0x49c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80005370:	ffffd097          	auipc	ra,0xffffd
    80005374:	810080e7          	jalr	-2032(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80005378:	0284b583          	ld	a1,40(s1)
    8000537c:	ffffd097          	auipc	ra,0xffffd
    80005380:	990080e7          	jalr	-1648(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80005384:	ffffc097          	auipc	ra,0xffffc
    80005388:	7fc080e7          	jalr	2044(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    8000538c:	0204b583          	ld	a1,32(s1)
    80005390:	ffffd097          	auipc	ra,0xffffd
    80005394:	97c080e7          	jalr	-1668(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80005398:	ffffc097          	auipc	ra,0xffffc
    8000539c:	7e8080e7          	jalr	2024(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    800053a0:	00048593          	mv	a1,s1
    800053a4:	ffffd097          	auipc	ra,0xffffd
    800053a8:	968080e7          	jalr	-1688(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    800053ac:	00000513          	li	a0,0
    800053b0:	ca9ff06f          	j	80005058 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    objAlloc->freeObject(objArr[7 * 8]);
    800053b4:	98043583          	ld	a1,-1664(s0)
    800053b8:	00048513          	mv	a0,s1
    800053bc:	00001097          	auipc	ra,0x1
    800053c0:	a88080e7          	jalr	-1400(ra) # 80005e44 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[7 * 8] = objAlloc->allocateNewObject();
    800053c4:	00048513          	mv	a0,s1
    800053c8:	00001097          	auipc	ra,0x1
    800053cc:	cfc080e7          	jalr	-772(ra) # 800060c4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800053d0:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[7 * 8], objAlloc) != 7
    800053d4:	00048613          	mv	a2,s1
    800053d8:	00050593          	mv	a1,a0
    800053dc:	00098513          	mv	a0,s3
    800053e0:	ffffe097          	auipc	ra,0xffffe
    800053e4:	db0080e7          	jalr	-592(ra) # 80003190 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[7 * 8], objAlloc) != 7)
    800053e8:	00700793          	li	a5,7
    800053ec:	02f50c63          	beq	a0,a5,80005424 <_ZN20KObjectAllocatorTest5test3Em+0x580>
    { delete objAlloc; return false; }
    800053f0:	0a048663          	beqz	s1,8000549c <_ZN20KObjectAllocatorTest5test3Em+0x5f8>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800053f4:	0304b783          	ld	a5,48(s1)
    800053f8:	06faf463          	bgeu	s5,a5,80005460 <_ZN20KObjectAllocatorTest5test3Em+0x5bc>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800053fc:	ffffc097          	auipc	ra,0xffffc
    80005400:	784080e7          	jalr	1924(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80005404:	0284b783          	ld	a5,40(s1)
    80005408:	003a9713          	slli	a4,s5,0x3
    8000540c:	00e787b3          	add	a5,a5,a4
    80005410:	0007b583          	ld	a1,0(a5)
    80005414:	ffffd097          	auipc	ra,0xffffd
    80005418:	8f8080e7          	jalr	-1800(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000541c:	001a8a93          	addi	s5,s5,1
    80005420:	fd5ff06f          	j	800053f4 <_ZN20KObjectAllocatorTest5test3Em+0x550>
        || getBitOfObject(objArr[7 * 8], objAlloc) != 7)
    80005424:	00048613          	mv	a2,s1
    80005428:	00090593          	mv	a1,s2
    8000542c:	00098513          	mv	a0,s3
    80005430:	ffffe097          	auipc	ra,0xffffe
    80005434:	de0080e7          	jalr	-544(ra) # 80003210 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80005438:	00700793          	li	a5,7
    8000543c:	faf51ae3          	bne	a0,a5,800053f0 <_ZN20KObjectAllocatorTest5test3Em+0x54c>
    if (objAlloc->nextNonTakenByte != 7) { delete objAlloc; return false; }
    80005440:	0384b703          	ld	a4,56(s1)
    80005444:	06f70063          	beq	a4,a5,800054a4 <_ZN20KObjectAllocatorTest5test3Em+0x600>
    80005448:	00048863          	beqz	s1,80005458 <_ZN20KObjectAllocatorTest5test3Em+0x5b4>
    8000544c:	00048513          	mv	a0,s1
    80005450:	00000097          	auipc	ra,0x0
    80005454:	5ac080e7          	jalr	1452(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    80005458:	00000513          	li	a0,0
    8000545c:	bfdff06f          	j	80005058 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80005460:	ffffc097          	auipc	ra,0xffffc
    80005464:	720080e7          	jalr	1824(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80005468:	0284b583          	ld	a1,40(s1)
    8000546c:	ffffd097          	auipc	ra,0xffffd
    80005470:	8a0080e7          	jalr	-1888(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80005474:	ffffc097          	auipc	ra,0xffffc
    80005478:	70c080e7          	jalr	1804(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    8000547c:	0204b583          	ld	a1,32(s1)
    80005480:	ffffd097          	auipc	ra,0xffffd
    80005484:	88c080e7          	jalr	-1908(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80005488:	ffffc097          	auipc	ra,0xffffc
    8000548c:	6f8080e7          	jalr	1784(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80005490:	00048593          	mv	a1,s1
    80005494:	ffffd097          	auipc	ra,0xffffd
    80005498:	878080e7          	jalr	-1928(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    { delete objAlloc; return false; }
    8000549c:	00000513          	li	a0,0
    800054a0:	bb9ff06f          	j	80005058 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    objAlloc->freeObject(objArr[6 * 8 + 3]);
    800054a4:	95843583          	ld	a1,-1704(s0)
    800054a8:	00048513          	mv	a0,s1
    800054ac:	00001097          	auipc	ra,0x1
    800054b0:	998080e7          	jalr	-1640(ra) # 80005e44 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[7 * 8 + 4]);
    800054b4:	9a043583          	ld	a1,-1632(s0)
    800054b8:	00048513          	mv	a0,s1
    800054bc:	00001097          	auipc	ra,0x1
    800054c0:	988080e7          	jalr	-1656(ra) # 80005e44 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[31 * 8 + 5]);
    800054c4:	fa843583          	ld	a1,-88(s0)
    800054c8:	00048513          	mv	a0,s1
    800054cc:	00001097          	auipc	ra,0x1
    800054d0:	978080e7          	jalr	-1672(ra) # 80005e44 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[7 * 8 + 4] = objAlloc->allocateNewObject();
    800054d4:	00048513          	mv	a0,s1
    800054d8:	00001097          	auipc	ra,0x1
    800054dc:	bec080e7          	jalr	-1044(ra) # 800060c4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800054e0:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[7 * 8 + 4], objAlloc) != 7
    800054e4:	00048613          	mv	a2,s1
    800054e8:	00050593          	mv	a1,a0
    800054ec:	00098513          	mv	a0,s3
    800054f0:	ffffe097          	auipc	ra,0xffffe
    800054f4:	ca0080e7          	jalr	-864(ra) # 80003190 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[7 * 8 + 4], objAlloc) != 3)
    800054f8:	00700793          	li	a5,7
    800054fc:	00f50e63          	beq	a0,a5,80005518 <_ZN20KObjectAllocatorTest5test3Em+0x674>
    { delete objAlloc; return false; }
    80005500:	00048863          	beqz	s1,80005510 <_ZN20KObjectAllocatorTest5test3Em+0x66c>
    80005504:	00048513          	mv	a0,s1
    80005508:	00000097          	auipc	ra,0x0
    8000550c:	4f4080e7          	jalr	1268(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    80005510:	00000513          	li	a0,0
    80005514:	b45ff06f          	j	80005058 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        || getBitOfObject(objArr[7 * 8 + 4], objAlloc) != 3)
    80005518:	00048613          	mv	a2,s1
    8000551c:	00090593          	mv	a1,s2
    80005520:	00098513          	mv	a0,s3
    80005524:	ffffe097          	auipc	ra,0xffffe
    80005528:	cec080e7          	jalr	-788(ra) # 80003210 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    8000552c:	00300793          	li	a5,3
    80005530:	fcf518e3          	bne	a0,a5,80005500 <_ZN20KObjectAllocatorTest5test3Em+0x65c>
    if (objAlloc->nextNonTakenByte != 7) { delete objAlloc; return false; }
    80005534:	0384b703          	ld	a4,56(s1)
    80005538:	00700793          	li	a5,7
    8000553c:	00f70e63          	beq	a4,a5,80005558 <_ZN20KObjectAllocatorTest5test3Em+0x6b4>
    80005540:	00048863          	beqz	s1,80005550 <_ZN20KObjectAllocatorTest5test3Em+0x6ac>
    80005544:	00048513          	mv	a0,s1
    80005548:	00000097          	auipc	ra,0x0
    8000554c:	4b4080e7          	jalr	1204(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    80005550:	00000513          	li	a0,0
    80005554:	b05ff06f          	j	80005058 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    objAlloc->freeObject(objArr[3 * 8 + 5]);
    80005558:	8a843583          	ld	a1,-1880(s0)
    8000555c:	00048513          	mv	a0,s1
    80005560:	00001097          	auipc	ra,0x1
    80005564:	8e4080e7          	jalr	-1820(ra) # 80005e44 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[31 * 8 + 5] = objAlloc->allocateNewObject();
    80005568:	00048513          	mv	a0,s1
    8000556c:	00001097          	auipc	ra,0x1
    80005570:	b58080e7          	jalr	-1192(ra) # 800060c4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80005574:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[31 * 8 + 5], objAlloc) != 31
    80005578:	00048613          	mv	a2,s1
    8000557c:	00050593          	mv	a1,a0
    80005580:	00098513          	mv	a0,s3
    80005584:	ffffe097          	auipc	ra,0xffffe
    80005588:	c0c080e7          	jalr	-1012(ra) # 80003190 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[31 * 8 + 5], objAlloc) != 2)
    8000558c:	01f00793          	li	a5,31
    80005590:	00f50e63          	beq	a0,a5,800055ac <_ZN20KObjectAllocatorTest5test3Em+0x708>
    { delete objAlloc; return false; }
    80005594:	00048863          	beqz	s1,800055a4 <_ZN20KObjectAllocatorTest5test3Em+0x700>
    80005598:	00048513          	mv	a0,s1
    8000559c:	00000097          	auipc	ra,0x0
    800055a0:	460080e7          	jalr	1120(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    800055a4:	00000513          	li	a0,0
    800055a8:	ab1ff06f          	j	80005058 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        || getBitOfObject(objArr[31 * 8 + 5], objAlloc) != 2)
    800055ac:	00048613          	mv	a2,s1
    800055b0:	00090593          	mv	a1,s2
    800055b4:	00098513          	mv	a0,s3
    800055b8:	ffffe097          	auipc	ra,0xffffe
    800055bc:	c58080e7          	jalr	-936(ra) # 80003210 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800055c0:	00200793          	li	a5,2
    800055c4:	fcf518e3          	bne	a0,a5,80005594 <_ZN20KObjectAllocatorTest5test3Em+0x6f0>
    if (objAlloc->nextNonTakenByte != 31) { delete objAlloc; return false; }
    800055c8:	0384b703          	ld	a4,56(s1)
    800055cc:	01f00793          	li	a5,31
    800055d0:	00f70e63          	beq	a4,a5,800055ec <_ZN20KObjectAllocatorTest5test3Em+0x748>
    800055d4:	00048863          	beqz	s1,800055e4 <_ZN20KObjectAllocatorTest5test3Em+0x740>
    800055d8:	00048513          	mv	a0,s1
    800055dc:	00000097          	auipc	ra,0x0
    800055e0:	420080e7          	jalr	1056(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    800055e4:	00000513          	li	a0,0
    800055e8:	a71ff06f          	j	80005058 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    objArr[3 * 8 + 5] = objAlloc->allocateNewObject();
    800055ec:	00048513          	mv	a0,s1
    800055f0:	00001097          	auipc	ra,0x1
    800055f4:	ad4080e7          	jalr	-1324(ra) # 800060c4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800055f8:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[3 * 8 + 5], objAlloc) != 3 || getBitOfObject(objArr[3 * 8 + 5], objAlloc) != 2)
    800055fc:	00048613          	mv	a2,s1
    80005600:	00050593          	mv	a1,a0
    80005604:	00098513          	mv	a0,s3
    80005608:	ffffe097          	auipc	ra,0xffffe
    8000560c:	b88080e7          	jalr	-1144(ra) # 80003190 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    80005610:	00300793          	li	a5,3
    80005614:	02f50463          	beq	a0,a5,8000563c <_ZN20KObjectAllocatorTest5test3Em+0x798>
        if (objAlloc->nextNonTakenByte != 3) { delete objAlloc; return false; }
    80005618:	0384b703          	ld	a4,56(s1)
    8000561c:	00300793          	li	a5,3
    80005620:	02f70c63          	beq	a4,a5,80005658 <_ZN20KObjectAllocatorTest5test3Em+0x7b4>
    80005624:	00048863          	beqz	s1,80005634 <_ZN20KObjectAllocatorTest5test3Em+0x790>
    80005628:	00048513          	mv	a0,s1
    8000562c:	00000097          	auipc	ra,0x0
    80005630:	3d0080e7          	jalr	976(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    80005634:	00000513          	li	a0,0
    80005638:	a21ff06f          	j	80005058 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    if (getByteOfObject(objArr[3 * 8 + 5], objAlloc) != 3 || getBitOfObject(objArr[3 * 8 + 5], objAlloc) != 2)
    8000563c:	00048613          	mv	a2,s1
    80005640:	00090593          	mv	a1,s2
    80005644:	00098513          	mv	a0,s3
    80005648:	ffffe097          	auipc	ra,0xffffe
    8000564c:	bc8080e7          	jalr	-1080(ra) # 80003210 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80005650:	00200793          	li	a5,2
    80005654:	fcf512e3          	bne	a0,a5,80005618 <_ZN20KObjectAllocatorTest5test3Em+0x774>
    objArr[6 * 8 + 3] = objAlloc->allocateNewObject();
    80005658:	00048513          	mv	a0,s1
    8000565c:	00001097          	auipc	ra,0x1
    80005660:	a68080e7          	jalr	-1432(ra) # 800060c4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80005664:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[6 * 8 + 3], objAlloc) != 6
    80005668:	00048613          	mv	a2,s1
    8000566c:	00050593          	mv	a1,a0
    80005670:	00098513          	mv	a0,s3
    80005674:	ffffe097          	auipc	ra,0xffffe
    80005678:	b1c080e7          	jalr	-1252(ra) # 80003190 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[6 * 8 + 3], objAlloc) != 4)
    8000567c:	00600793          	li	a5,6
    80005680:	00f50e63          	beq	a0,a5,8000569c <_ZN20KObjectAllocatorTest5test3Em+0x7f8>
    { delete objAlloc; return false; }
    80005684:	00048863          	beqz	s1,80005694 <_ZN20KObjectAllocatorTest5test3Em+0x7f0>
    80005688:	00048513          	mv	a0,s1
    8000568c:	00000097          	auipc	ra,0x0
    80005690:	370080e7          	jalr	880(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    80005694:	00000513          	li	a0,0
    80005698:	9c1ff06f          	j	80005058 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        || getBitOfObject(objArr[6 * 8 + 3], objAlloc) != 4)
    8000569c:	00048613          	mv	a2,s1
    800056a0:	00090593          	mv	a1,s2
    800056a4:	00098513          	mv	a0,s3
    800056a8:	ffffe097          	auipc	ra,0xffffe
    800056ac:	b68080e7          	jalr	-1176(ra) # 80003210 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800056b0:	00400793          	li	a5,4
    800056b4:	fcf518e3          	bne	a0,a5,80005684 <_ZN20KObjectAllocatorTest5test3Em+0x7e0>
    if (objAlloc->nextNonTakenByte != 6) { delete objAlloc; return false; }
    800056b8:	0384b703          	ld	a4,56(s1)
    800056bc:	00600793          	li	a5,6
    800056c0:	0ef71863          	bne	a4,a5,800057b0 <_ZN20KObjectAllocatorTest5test3Em+0x90c>
    for (int i = 0; i < 3; ++i) {
    800056c4:	00000a13          	li	s4,0
    800056c8:	00200793          	li	a5,2
    800056cc:	1547ce63          	blt	a5,s4,80005828 <_ZN20KObjectAllocatorTest5test3Em+0x984>
        objAlloc->freeObject(objArr[255]);
    800056d0:	fb843583          	ld	a1,-72(s0)
    800056d4:	00048513          	mv	a0,s1
    800056d8:	00000097          	auipc	ra,0x0
    800056dc:	76c080e7          	jalr	1900(ra) # 80005e44 <_ZN16KObjectAllocator10freeObjectEPv>
        objArr[255] = objAlloc->allocateNewObject();
    800056e0:	00048513          	mv	a0,s1
    800056e4:	00001097          	auipc	ra,0x1
    800056e8:	9e0080e7          	jalr	-1568(ra) # 800060c4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800056ec:	00050913          	mv	s2,a0
    800056f0:	faa43c23          	sd	a0,-72(s0)
        if (getByteOfObject(objArr[255], objAlloc) != 31
    800056f4:	00048613          	mv	a2,s1
    800056f8:	00050593          	mv	a1,a0
    800056fc:	00098513          	mv	a0,s3
    80005700:	ffffe097          	auipc	ra,0xffffe
    80005704:	a90080e7          	jalr	-1392(ra) # 80003190 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
            || getBitOfObject(objArr[255], objAlloc) != 0)
    80005708:	01f00793          	li	a5,31
    8000570c:	0af51e63          	bne	a0,a5,800057c8 <_ZN20KObjectAllocatorTest5test3Em+0x924>
    80005710:	00048613          	mv	a2,s1
    80005714:	00090593          	mv	a1,s2
    80005718:	00098513          	mv	a0,s3
    8000571c:	ffffe097          	auipc	ra,0xffffe
    80005720:	af4080e7          	jalr	-1292(ra) # 80003210 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80005724:	0a051263          	bnez	a0,800057c8 <_ZN20KObjectAllocatorTest5test3Em+0x924>
        if (objAlloc->nextNonTakenByte != 32) { delete objAlloc; return false; }
    80005728:	0384b703          	ld	a4,56(s1)
    8000572c:	02000793          	li	a5,32
    80005730:	0af71863          	bne	a4,a5,800057e0 <_ZN20KObjectAllocatorTest5test3Em+0x93c>
        objAlloc->freeObject(objArr[1]);
    80005734:	fffffab7          	lui	s5,0xfffff
    80005738:	7c8a8793          	addi	a5,s5,1992 # fffffffffffff7c8 <end+0xffffffff7fff3da8>
    8000573c:	008787b3          	add	a5,a5,s0
    80005740:	0007b583          	ld	a1,0(a5)
    80005744:	00048513          	mv	a0,s1
    80005748:	00000097          	auipc	ra,0x0
    8000574c:	6fc080e7          	jalr	1788(ra) # 80005e44 <_ZN16KObjectAllocator10freeObjectEPv>
        objArr[1] = objAlloc->allocateNewObject();
    80005750:	00048513          	mv	a0,s1
    80005754:	00001097          	auipc	ra,0x1
    80005758:	970080e7          	jalr	-1680(ra) # 800060c4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    8000575c:	00050913          	mv	s2,a0
    80005760:	7c8a8793          	addi	a5,s5,1992
    80005764:	008787b3          	add	a5,a5,s0
    80005768:	00a7b023          	sd	a0,0(a5)
        if (getByteOfObject(objArr[1], objAlloc) != 0
    8000576c:	00048613          	mv	a2,s1
    80005770:	00050593          	mv	a1,a0
    80005774:	00098513          	mv	a0,s3
    80005778:	ffffe097          	auipc	ra,0xffffe
    8000577c:	a18080e7          	jalr	-1512(ra) # 80003190 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
            || getBitOfObject(objArr[1], objAlloc) != 6)
    80005780:	06051c63          	bnez	a0,800057f8 <_ZN20KObjectAllocatorTest5test3Em+0x954>
    80005784:	00048613          	mv	a2,s1
    80005788:	00090593          	mv	a1,s2
    8000578c:	00098513          	mv	a0,s3
    80005790:	ffffe097          	auipc	ra,0xffffe
    80005794:	a80080e7          	jalr	-1408(ra) # 80003210 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80005798:	00600793          	li	a5,6
    8000579c:	04f51e63          	bne	a0,a5,800057f8 <_ZN20KObjectAllocatorTest5test3Em+0x954>
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    800057a0:	0384b783          	ld	a5,56(s1)
    800057a4:	06079663          	bnez	a5,80005810 <_ZN20KObjectAllocatorTest5test3Em+0x96c>
    for (int i = 0; i < 3; ++i) {
    800057a8:	001a0a1b          	addiw	s4,s4,1
    800057ac:	f1dff06f          	j	800056c8 <_ZN20KObjectAllocatorTest5test3Em+0x824>
    if (objAlloc->nextNonTakenByte != 6) { delete objAlloc; return false; }
    800057b0:	00048863          	beqz	s1,800057c0 <_ZN20KObjectAllocatorTest5test3Em+0x91c>
    800057b4:	00048513          	mv	a0,s1
    800057b8:	00000097          	auipc	ra,0x0
    800057bc:	244080e7          	jalr	580(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    800057c0:	00000513          	li	a0,0
    800057c4:	895ff06f          	j	80005058 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        { delete objAlloc; return false; }
    800057c8:	00048863          	beqz	s1,800057d8 <_ZN20KObjectAllocatorTest5test3Em+0x934>
    800057cc:	00048513          	mv	a0,s1
    800057d0:	00000097          	auipc	ra,0x0
    800057d4:	22c080e7          	jalr	556(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    800057d8:	00000513          	li	a0,0
    800057dc:	87dff06f          	j	80005058 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        if (objAlloc->nextNonTakenByte != 32) { delete objAlloc; return false; }
    800057e0:	00048863          	beqz	s1,800057f0 <_ZN20KObjectAllocatorTest5test3Em+0x94c>
    800057e4:	00048513          	mv	a0,s1
    800057e8:	00000097          	auipc	ra,0x0
    800057ec:	214080e7          	jalr	532(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    800057f0:	00000513          	li	a0,0
    800057f4:	865ff06f          	j	80005058 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        { delete objAlloc; return false; }
    800057f8:	00048863          	beqz	s1,80005808 <_ZN20KObjectAllocatorTest5test3Em+0x964>
    800057fc:	00048513          	mv	a0,s1
    80005800:	00000097          	auipc	ra,0x0
    80005804:	1fc080e7          	jalr	508(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    80005808:	00000513          	li	a0,0
    8000580c:	84dff06f          	j	80005058 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    80005810:	00048863          	beqz	s1,80005820 <_ZN20KObjectAllocatorTest5test3Em+0x97c>
    80005814:	00048513          	mv	a0,s1
    80005818:	00000097          	auipc	ra,0x0
    8000581c:	1e4080e7          	jalr	484(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    80005820:	00000513          	li	a0,0
    80005824:	835ff06f          	j	80005058 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    delete objAlloc;
    80005828:	00048c63          	beqz	s1,80005840 <_ZN20KObjectAllocatorTest5test3Em+0x99c>
    8000582c:	00048513          	mv	a0,s1
    80005830:	00000097          	auipc	ra,0x0
    80005834:	1cc080e7          	jalr	460(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    return true;
    80005838:	00100513          	li	a0,1
    8000583c:	81dff06f          	j	80005058 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    80005840:	00100513          	li	a0,1
    80005844:	815ff06f          	j	80005058 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    80005848:	00050913          	mv	s2,a0
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 5);
    8000584c:	00048513          	mv	a0,s1
    80005850:	00000097          	auipc	ra,0x0
    80005854:	1ac080e7          	jalr	428(ra) # 800059fc <_ZN16KObjectAllocatordlEPv>
    80005858:	00090513          	mv	a0,s2
    8000585c:	00006097          	auipc	ra,0x6
    80005860:	01c080e7          	jalr	28(ra) # 8000b878 <_Unwind_Resume>

0000000080005864 <_ZN20KObjectAllocatorTest4testEmm>:
bool KObjectAllocatorTest::test(size_t i, size_t size) {
    80005864:	ff010113          	addi	sp,sp,-16
    80005868:	00113423          	sd	ra,8(sp)
    8000586c:	00813023          	sd	s0,0(sp)
    80005870:	01010413          	addi	s0,sp,16
    80005874:	00058793          	mv	a5,a1
    80005878:	00060593          	mv	a1,a2
    switch (i) {
    8000587c:	00200713          	li	a4,2
    80005880:	04e78e63          	beq	a5,a4,800058dc <_ZN20KObjectAllocatorTest4testEmm+0x78>
    80005884:	02f76263          	bltu	a4,a5,800058a8 <_ZN20KObjectAllocatorTest4testEmm+0x44>
    80005888:	04078463          	beqz	a5,800058d0 <_ZN20KObjectAllocatorTest4testEmm+0x6c>
    8000588c:	00100713          	li	a4,1
    80005890:	00e79863          	bne	a5,a4,800058a0 <_ZN20KObjectAllocatorTest4testEmm+0x3c>
        case 1: return test1(size); break;
    80005894:	ffffe097          	auipc	ra,0xffffe
    80005898:	350080e7          	jalr	848(ra) # 80003be4 <_ZN20KObjectAllocatorTest5test1Em>
    8000589c:	0240006f          	j	800058c0 <_ZN20KObjectAllocatorTest4testEmm+0x5c>
    switch (i) {
    800058a0:	00000513          	li	a0,0
    800058a4:	01c0006f          	j	800058c0 <_ZN20KObjectAllocatorTest4testEmm+0x5c>
    800058a8:	00300713          	li	a4,3
    800058ac:	00e79863          	bne	a5,a4,800058bc <_ZN20KObjectAllocatorTest4testEmm+0x58>
        case 3: return test3(size); break;
    800058b0:	fffff097          	auipc	ra,0xfffff
    800058b4:	5f4080e7          	jalr	1524(ra) # 80004ea4 <_ZN20KObjectAllocatorTest5test3Em>
    800058b8:	0080006f          	j	800058c0 <_ZN20KObjectAllocatorTest4testEmm+0x5c>
    switch (i) {
    800058bc:	00000513          	li	a0,0
}
    800058c0:	00813083          	ld	ra,8(sp)
    800058c4:	00013403          	ld	s0,0(sp)
    800058c8:	01010113          	addi	sp,sp,16
    800058cc:	00008067          	ret
        case 0: return test0(size); break;
    800058d0:	ffffe097          	auipc	ra,0xffffe
    800058d4:	a54080e7          	jalr	-1452(ra) # 80003324 <_ZN20KObjectAllocatorTest5test0Em>
    800058d8:	fe9ff06f          	j	800058c0 <_ZN20KObjectAllocatorTest4testEmm+0x5c>
        case 2: return test2(size); break;
    800058dc:	fffff097          	auipc	ra,0xfffff
    800058e0:	d00080e7          	jalr	-768(ra) # 800045dc <_ZN20KObjectAllocatorTest5test2Em>
    800058e4:	fddff06f          	j	800058c0 <_ZN20KObjectAllocatorTest4testEmm+0x5c>

00000000800058e8 <_ZN20KObjectAllocatorTest8runTestsEv>:
bool KObjectAllocatorTest::runTests() {
    800058e8:	fb010113          	addi	sp,sp,-80
    800058ec:	04113423          	sd	ra,72(sp)
    800058f0:	04813023          	sd	s0,64(sp)
    800058f4:	02913c23          	sd	s1,56(sp)
    800058f8:	03213823          	sd	s2,48(sp)
    800058fc:	03313423          	sd	s3,40(sp)
    80005900:	03413023          	sd	s4,32(sp)
    80005904:	01513c23          	sd	s5,24(sp)
    80005908:	01613823          	sd	s6,16(sp)
    8000590c:	01713423          	sd	s7,8(sp)
    80005910:	05010413          	addi	s0,sp,80
    80005914:	00050a13          	mv	s4,a0
    for (size_t size : sizes)
    80005918:	00850b13          	addi	s6,a0,8
    8000591c:	04050b93          	addi	s7,a0,64
    size_t testCnt = 0;
    80005920:	00000993          	li	s3,0
    for (size_t size : sizes)
    80005924:	0d7b0863          	beq	s6,s7,800059f4 <_ZN20KObjectAllocatorTest8runTestsEv+0x10c>
    80005928:	000b3a83          	ld	s5,0(s6)
    for (size_t i = 0; i < numberOfTests; ++i) {
    8000592c:	00000493          	li	s1,0
    80005930:	0740006f          	j	800059a4 <_ZN20KObjectAllocatorTest8runTestsEv+0xbc>
            printString("Failed KObjectAllocator test ");
    80005934:	00004517          	auipc	a0,0x4
    80005938:	c1c50513          	addi	a0,a0,-996 # 80009550 <CONSOLE_STATUS+0x540>
    8000593c:	00001097          	auipc	ra,0x1
    80005940:	aec080e7          	jalr	-1300(ra) # 80006428 <_Z11printStringPKc>
            printInteger(i); printString("\n"); return false;
    80005944:	00048513          	mv	a0,s1
    80005948:	00001097          	auipc	ra,0x1
    8000594c:	b50080e7          	jalr	-1200(ra) # 80006498 <_Z12printIntegerm>
    80005950:	00003517          	auipc	a0,0x3
    80005954:	7d050513          	addi	a0,a0,2000 # 80009120 <CONSOLE_STATUS+0x110>
    80005958:	00001097          	auipc	ra,0x1
    8000595c:	ad0080e7          	jalr	-1328(ra) # 80006428 <_Z11printStringPKc>
}
    80005960:	00090513          	mv	a0,s2
    80005964:	04813083          	ld	ra,72(sp)
    80005968:	04013403          	ld	s0,64(sp)
    8000596c:	03813483          	ld	s1,56(sp)
    80005970:	03013903          	ld	s2,48(sp)
    80005974:	02813983          	ld	s3,40(sp)
    80005978:	02013a03          	ld	s4,32(sp)
    8000597c:	01813a83          	ld	s5,24(sp)
    80005980:	01013b03          	ld	s6,16(sp)
    80005984:	00813b83          	ld	s7,8(sp)
    80005988:	05010113          	addi	sp,sp,80
    8000598c:	00008067          	ret
        if (testCnt % 10 == 0) printString("\n");
    80005990:	00003517          	auipc	a0,0x3
    80005994:	79050513          	addi	a0,a0,1936 # 80009120 <CONSOLE_STATUS+0x110>
    80005998:	00001097          	auipc	ra,0x1
    8000599c:	a90080e7          	jalr	-1392(ra) # 80006428 <_Z11printStringPKc>
    for (size_t i = 0; i < numberOfTests; ++i) {
    800059a0:	00148493          	addi	s1,s1,1
    800059a4:	000a3783          	ld	a5,0(s4)
    800059a8:	04f4f263          	bgeu	s1,a5,800059ec <_ZN20KObjectAllocatorTest8runTestsEv+0x104>
        if (!test(i, size)) {
    800059ac:	000a8613          	mv	a2,s5
    800059b0:	00048593          	mv	a1,s1
    800059b4:	000a0513          	mv	a0,s4
    800059b8:	00000097          	auipc	ra,0x0
    800059bc:	eac080e7          	jalr	-340(ra) # 80005864 <_ZN20KObjectAllocatorTest4testEmm>
    800059c0:	00050913          	mv	s2,a0
    800059c4:	f60508e3          	beqz	a0,80005934 <_ZN20KObjectAllocatorTest8runTestsEv+0x4c>
        } else printString("Passed ");
    800059c8:	00004517          	auipc	a0,0x4
    800059cc:	ab050513          	addi	a0,a0,-1360 # 80009478 <CONSOLE_STATUS+0x468>
    800059d0:	00001097          	auipc	ra,0x1
    800059d4:	a58080e7          	jalr	-1448(ra) # 80006428 <_Z11printStringPKc>
        ++testCnt;
    800059d8:	00198993          	addi	s3,s3,1
        if (testCnt % 10 == 0) printString("\n");
    800059dc:	00a00793          	li	a5,10
    800059e0:	02f9f7b3          	remu	a5,s3,a5
    800059e4:	fa079ee3          	bnez	a5,800059a0 <_ZN20KObjectAllocatorTest8runTestsEv+0xb8>
    800059e8:	fa9ff06f          	j	80005990 <_ZN20KObjectAllocatorTest8runTestsEv+0xa8>
    for (size_t size : sizes)
    800059ec:	008b0b13          	addi	s6,s6,8
    800059f0:	f35ff06f          	j	80005924 <_ZN20KObjectAllocatorTest8runTestsEv+0x3c>
    return true;
    800059f4:	00100913          	li	s2,1
    800059f8:	f69ff06f          	j	80005960 <_ZN20KObjectAllocatorTest8runTestsEv+0x78>

00000000800059fc <_ZN16KObjectAllocatordlEPv>:
    void operator delete(void* p) {
    800059fc:	fe010113          	addi	sp,sp,-32
    80005a00:	00113c23          	sd	ra,24(sp)
    80005a04:	00813823          	sd	s0,16(sp)
    80005a08:	00913423          	sd	s1,8(sp)
    80005a0c:	01213023          	sd	s2,0(sp)
    80005a10:	02010413          	addi	s0,sp,32
    80005a14:	00050913          	mv	s2,a0
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005a18:	00000493          	li	s1,0
    80005a1c:	03093783          	ld	a5,48(s2)
    80005a20:	02f4f663          	bgeu	s1,a5,80005a4c <_ZN16KObjectAllocatordlEPv+0x50>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80005a24:	ffffc097          	auipc	ra,0xffffc
    80005a28:	15c080e7          	jalr	348(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80005a2c:	02893783          	ld	a5,40(s2)
    80005a30:	00349713          	slli	a4,s1,0x3
    80005a34:	00e787b3          	add	a5,a5,a4
    80005a38:	0007b583          	ld	a1,0(a5)
    80005a3c:	ffffc097          	auipc	ra,0xffffc
    80005a40:	2d0080e7          	jalr	720(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005a44:	00148493          	addi	s1,s1,1
    80005a48:	fd5ff06f          	j	80005a1c <_ZN16KObjectAllocatordlEPv+0x20>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80005a4c:	ffffc097          	auipc	ra,0xffffc
    80005a50:	134080e7          	jalr	308(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80005a54:	02893583          	ld	a1,40(s2)
    80005a58:	ffffc097          	auipc	ra,0xffffc
    80005a5c:	2b4080e7          	jalr	692(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80005a60:	ffffc097          	auipc	ra,0xffffc
    80005a64:	120080e7          	jalr	288(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80005a68:	02093583          	ld	a1,32(s2)
    80005a6c:	ffffc097          	auipc	ra,0xffffc
    80005a70:	2a0080e7          	jalr	672(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80005a74:	ffffc097          	auipc	ra,0xffffc
    80005a78:	10c080e7          	jalr	268(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80005a7c:	00090593          	mv	a1,s2
    80005a80:	ffffc097          	auipc	ra,0xffffc
    80005a84:	28c080e7          	jalr	652(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    }
    80005a88:	01813083          	ld	ra,24(sp)
    80005a8c:	01013403          	ld	s0,16(sp)
    80005a90:	00813483          	ld	s1,8(sp)
    80005a94:	00013903          	ld	s2,0(sp)
    80005a98:	02010113          	addi	sp,sp,32
    80005a9c:	00008067          	ret

0000000080005aa0 <_ZN16KObjectAllocator19printInternalMemoryEv>:
#include "../h/kObjectAllocator.hpp"
#include "../h/print.hpp"

void KObjectAllocator::printInternalMemory() {
    80005aa0:	fc010113          	addi	sp,sp,-64
    80005aa4:	02113c23          	sd	ra,56(sp)
    80005aa8:	02813823          	sd	s0,48(sp)
    80005aac:	02913423          	sd	s1,40(sp)
    80005ab0:	03213023          	sd	s2,32(sp)
    80005ab4:	01313c23          	sd	s3,24(sp)
    80005ab8:	01413823          	sd	s4,16(sp)
    80005abc:	01513423          	sd	s5,8(sp)
    80005ac0:	01613023          	sd	s6,0(sp)
    80005ac4:	04010413          	addi	s0,sp,64
    80005ac8:	00050493          	mv	s1,a0
    size_t segmentSize = 16, printedBytes = 0;
    80005acc:	00000a93          	li	s5,0
    80005ad0:	0f00006f          	j	80005bc0 <_ZN16KObjectAllocator19printInternalMemoryEv+0x120>
    while (printedBytes < memorySizeForBits) {
        for (size_t i = 0; i < numberOfAllocations; ++i) {
            for (size_t j = 0; j < segmentSize; ++j) {
                if (j + printedBytes >= memorySizeForBits) printString("    ");
    80005ad4:	00004517          	auipc	a0,0x4
    80005ad8:	aac50513          	addi	a0,a0,-1364 # 80009580 <CONSOLE_STATUS+0x570>
    80005adc:	00001097          	auipc	ra,0x1
    80005ae0:	94c080e7          	jalr	-1716(ra) # 80006428 <_Z11printStringPKc>
    80005ae4:	04c0006f          	j	80005b30 <_ZN16KObjectAllocator19printInternalMemoryEv+0x90>
                else {
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80005ae8:	00000513          	li	a0,0
    80005aec:	00001097          	auipc	ra,0x1
    80005af0:	9ac080e7          	jalr	-1620(ra) # 80006498 <_Z12printIntegerm>
    80005af4:	0740006f          	j	80005b68 <_ZN16KObjectAllocator19printInternalMemoryEv+0xc8>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    80005af8:	00000513          	li	a0,0
    80005afc:	00001097          	auipc	ra,0x1
    80005b00:	99c080e7          	jalr	-1636(ra) # 80006498 <_Z12printIntegerm>
                    printInteger((uint64) bitVectors[i][j + printedBytes]);
    80005b04:	0284b783          	ld	a5,40(s1)
    80005b08:	014787b3          	add	a5,a5,s4
    80005b0c:	0007b783          	ld	a5,0(a5)
    80005b10:	013789b3          	add	s3,a5,s3
    80005b14:	0009c503          	lbu	a0,0(s3)
    80005b18:	00001097          	auipc	ra,0x1
    80005b1c:	980080e7          	jalr	-1664(ra) # 80006498 <_Z12printIntegerm>
                    printString(" ");
    80005b20:	00004517          	auipc	a0,0x4
    80005b24:	81050513          	addi	a0,a0,-2032 # 80009330 <CONSOLE_STATUS+0x320>
    80005b28:	00001097          	auipc	ra,0x1
    80005b2c:	900080e7          	jalr	-1792(ra) # 80006428 <_Z11printStringPKc>
            for (size_t j = 0; j < segmentSize; ++j) {
    80005b30:	00190913          	addi	s2,s2,1
    80005b34:	00f00793          	li	a5,15
    80005b38:	0527e863          	bltu	a5,s2,80005b88 <_ZN16KObjectAllocator19printInternalMemoryEv+0xe8>
                if (j + printedBytes >= memorySizeForBits) printString("    ");
    80005b3c:	012a89b3          	add	s3,s5,s2
    80005b40:	0104b783          	ld	a5,16(s1)
    80005b44:	f8f9f8e3          	bgeu	s3,a5,80005ad4 <_ZN16KObjectAllocator19printInternalMemoryEv+0x34>
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80005b48:	0284b783          	ld	a5,40(s1)
    80005b4c:	003b1a13          	slli	s4,s6,0x3
    80005b50:	014787b3          	add	a5,a5,s4
    80005b54:	0007b783          	ld	a5,0(a5)
    80005b58:	013787b3          	add	a5,a5,s3
    80005b5c:	0007c703          	lbu	a4,0(a5)
    80005b60:	06300793          	li	a5,99
    80005b64:	f8e7f2e3          	bgeu	a5,a4,80005ae8 <_ZN16KObjectAllocator19printInternalMemoryEv+0x48>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    80005b68:	0284b783          	ld	a5,40(s1)
    80005b6c:	014787b3          	add	a5,a5,s4
    80005b70:	0007b783          	ld	a5,0(a5)
    80005b74:	013787b3          	add	a5,a5,s3
    80005b78:	0007c703          	lbu	a4,0(a5)
    80005b7c:	00900793          	li	a5,9
    80005b80:	f8e7e2e3          	bltu	a5,a4,80005b04 <_ZN16KObjectAllocator19printInternalMemoryEv+0x64>
    80005b84:	f75ff06f          	j	80005af8 <_ZN16KObjectAllocator19printInternalMemoryEv+0x58>
                }
            }
            printString("  ");
    80005b88:	00004517          	auipc	a0,0x4
    80005b8c:	a0050513          	addi	a0,a0,-1536 # 80009588 <CONSOLE_STATUS+0x578>
    80005b90:	00001097          	auipc	ra,0x1
    80005b94:	898080e7          	jalr	-1896(ra) # 80006428 <_Z11printStringPKc>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005b98:	001b0b13          	addi	s6,s6,1
    80005b9c:	0304b783          	ld	a5,48(s1)
    80005ba0:	00fb7663          	bgeu	s6,a5,80005bac <_ZN16KObjectAllocator19printInternalMemoryEv+0x10c>
            for (size_t j = 0; j < segmentSize; ++j) {
    80005ba4:	00000913          	li	s2,0
    80005ba8:	f8dff06f          	j	80005b34 <_ZN16KObjectAllocator19printInternalMemoryEv+0x94>
        }
        printString("\n");
    80005bac:	00003517          	auipc	a0,0x3
    80005bb0:	57450513          	addi	a0,a0,1396 # 80009120 <CONSOLE_STATUS+0x110>
    80005bb4:	00001097          	auipc	ra,0x1
    80005bb8:	874080e7          	jalr	-1932(ra) # 80006428 <_Z11printStringPKc>
        printedBytes += segmentSize;
    80005bbc:	010a8a93          	addi	s5,s5,16
    while (printedBytes < memorySizeForBits) {
    80005bc0:	0104b783          	ld	a5,16(s1)
    80005bc4:	00faf663          	bgeu	s5,a5,80005bd0 <_ZN16KObjectAllocator19printInternalMemoryEv+0x130>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005bc8:	00000b13          	li	s6,0
    80005bcc:	fd1ff06f          	j	80005b9c <_ZN16KObjectAllocator19printInternalMemoryEv+0xfc>
    }

    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005bd0:	00000993          	li	s3,0
    80005bd4:	0180006f          	j	80005bec <_ZN16KObjectAllocator19printInternalMemoryEv+0x14c>
        for (size_t j = 0; j < segmentSize - 1; ++j)
            printString("----");
        printString("----  ");
    80005bd8:	00004517          	auipc	a0,0x4
    80005bdc:	9c050513          	addi	a0,a0,-1600 # 80009598 <CONSOLE_STATUS+0x588>
    80005be0:	00001097          	auipc	ra,0x1
    80005be4:	848080e7          	jalr	-1976(ra) # 80006428 <_Z11printStringPKc>
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005be8:	00198993          	addi	s3,s3,1
    80005bec:	0304b783          	ld	a5,48(s1)
    80005bf0:	02f9f463          	bgeu	s3,a5,80005c18 <_ZN16KObjectAllocator19printInternalMemoryEv+0x178>
        for (size_t j = 0; j < segmentSize - 1; ++j)
    80005bf4:	00000913          	li	s2,0
    80005bf8:	00e00793          	li	a5,14
    80005bfc:	fd27eee3          	bltu	a5,s2,80005bd8 <_ZN16KObjectAllocator19printInternalMemoryEv+0x138>
            printString("----");
    80005c00:	00004517          	auipc	a0,0x4
    80005c04:	99050513          	addi	a0,a0,-1648 # 80009590 <CONSOLE_STATUS+0x580>
    80005c08:	00001097          	auipc	ra,0x1
    80005c0c:	820080e7          	jalr	-2016(ra) # 80006428 <_Z11printStringPKc>
        for (size_t j = 0; j < segmentSize - 1; ++j)
    80005c10:	00190913          	addi	s2,s2,1
    80005c14:	fe5ff06f          	j	80005bf8 <_ZN16KObjectAllocator19printInternalMemoryEv+0x158>
    }
    printString("\n");
    80005c18:	00003517          	auipc	a0,0x3
    80005c1c:	50850513          	addi	a0,a0,1288 # 80009120 <CONSOLE_STATUS+0x110>
    80005c20:	00001097          	auipc	ra,0x1
    80005c24:	808080e7          	jalr	-2040(ra) # 80006428 <_Z11printStringPKc>

    printedBytes = memorySizeForBits;
    80005c28:	0104ba03          	ld	s4,16(s1)
    80005c2c:	1000006f          	j	80005d2c <_ZN16KObjectAllocator19printInternalMemoryEv+0x28c>
    while(printedBytes < initialNumberOfObjects * objectSize) {
        for (size_t i = 0; i < numberOfAllocations; ++i) {
            for (size_t j = 0; j < segmentSize; ++j) {
                if (j + printedBytes - memorySizeForBits >= initialNumberOfObjects * objectSize) printString("    ");
    80005c30:	00004517          	auipc	a0,0x4
    80005c34:	95050513          	addi	a0,a0,-1712 # 80009580 <CONSOLE_STATUS+0x570>
    80005c38:	00000097          	auipc	ra,0x0
    80005c3c:	7f0080e7          	jalr	2032(ra) # 80006428 <_Z11printStringPKc>
    80005c40:	04c0006f          	j	80005c8c <_ZN16KObjectAllocator19printInternalMemoryEv+0x1ec>
                else {
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80005c44:	00000513          	li	a0,0
    80005c48:	00001097          	auipc	ra,0x1
    80005c4c:	850080e7          	jalr	-1968(ra) # 80006498 <_Z12printIntegerm>
    80005c50:	0840006f          	j	80005cd4 <_ZN16KObjectAllocator19printInternalMemoryEv+0x234>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    80005c54:	00000513          	li	a0,0
    80005c58:	00001097          	auipc	ra,0x1
    80005c5c:	840080e7          	jalr	-1984(ra) # 80006498 <_Z12printIntegerm>
                    printInteger((uint64) bitVectors[i][j + printedBytes]);
    80005c60:	0284b783          	ld	a5,40(s1)
    80005c64:	016787b3          	add	a5,a5,s6
    80005c68:	0007b783          	ld	a5,0(a5)
    80005c6c:	013789b3          	add	s3,a5,s3
    80005c70:	0009c503          	lbu	a0,0(s3)
    80005c74:	00001097          	auipc	ra,0x1
    80005c78:	824080e7          	jalr	-2012(ra) # 80006498 <_Z12printIntegerm>
                    printString(" ");
    80005c7c:	00003517          	auipc	a0,0x3
    80005c80:	6b450513          	addi	a0,a0,1716 # 80009330 <CONSOLE_STATUS+0x320>
    80005c84:	00000097          	auipc	ra,0x0
    80005c88:	7a4080e7          	jalr	1956(ra) # 80006428 <_Z11printStringPKc>
            for (size_t j = 0; j < segmentSize; ++j) {
    80005c8c:	00190913          	addi	s2,s2,1
    80005c90:	00f00793          	li	a5,15
    80005c94:	0727e063          	bltu	a5,s2,80005cf4 <_ZN16KObjectAllocator19printInternalMemoryEv+0x254>
                if (j + printedBytes - memorySizeForBits >= initialNumberOfObjects * objectSize) printString("    ");
    80005c98:	012a09b3          	add	s3,s4,s2
    80005c9c:	0104b703          	ld	a4,16(s1)
    80005ca0:	40e98733          	sub	a4,s3,a4
    80005ca4:	0004b783          	ld	a5,0(s1)
    80005ca8:	0184b683          	ld	a3,24(s1)
    80005cac:	02d787b3          	mul	a5,a5,a3
    80005cb0:	f8f770e3          	bgeu	a4,a5,80005c30 <_ZN16KObjectAllocator19printInternalMemoryEv+0x190>
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80005cb4:	0284b783          	ld	a5,40(s1)
    80005cb8:	003a9b13          	slli	s6,s5,0x3
    80005cbc:	016787b3          	add	a5,a5,s6
    80005cc0:	0007b783          	ld	a5,0(a5)
    80005cc4:	013787b3          	add	a5,a5,s3
    80005cc8:	0007c703          	lbu	a4,0(a5)
    80005ccc:	06300793          	li	a5,99
    80005cd0:	f6e7fae3          	bgeu	a5,a4,80005c44 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1a4>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    80005cd4:	0284b783          	ld	a5,40(s1)
    80005cd8:	016787b3          	add	a5,a5,s6
    80005cdc:	0007b783          	ld	a5,0(a5)
    80005ce0:	013787b3          	add	a5,a5,s3
    80005ce4:	0007c703          	lbu	a4,0(a5)
    80005ce8:	00900793          	li	a5,9
    80005cec:	f6e7eae3          	bltu	a5,a4,80005c60 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1c0>
    80005cf0:	f65ff06f          	j	80005c54 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1b4>
                }
            }
            printString("  ");
    80005cf4:	00004517          	auipc	a0,0x4
    80005cf8:	89450513          	addi	a0,a0,-1900 # 80009588 <CONSOLE_STATUS+0x578>
    80005cfc:	00000097          	auipc	ra,0x0
    80005d00:	72c080e7          	jalr	1836(ra) # 80006428 <_Z11printStringPKc>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005d04:	001a8a93          	addi	s5,s5,1
    80005d08:	0304b783          	ld	a5,48(s1)
    80005d0c:	00faf663          	bgeu	s5,a5,80005d18 <_ZN16KObjectAllocator19printInternalMemoryEv+0x278>
            for (size_t j = 0; j < segmentSize; ++j) {
    80005d10:	00000913          	li	s2,0
    80005d14:	f7dff06f          	j	80005c90 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1f0>
        }
        printString("\n");
    80005d18:	00003517          	auipc	a0,0x3
    80005d1c:	40850513          	addi	a0,a0,1032 # 80009120 <CONSOLE_STATUS+0x110>
    80005d20:	00000097          	auipc	ra,0x0
    80005d24:	708080e7          	jalr	1800(ra) # 80006428 <_Z11printStringPKc>
        printedBytes += segmentSize;
    80005d28:	010a0a13          	addi	s4,s4,16
    while(printedBytes < initialNumberOfObjects * objectSize) {
    80005d2c:	0004b783          	ld	a5,0(s1)
    80005d30:	0184b703          	ld	a4,24(s1)
    80005d34:	02e787b3          	mul	a5,a5,a4
    80005d38:	00fa7663          	bgeu	s4,a5,80005d44 <_ZN16KObjectAllocator19printInternalMemoryEv+0x2a4>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005d3c:	00000a93          	li	s5,0
    80005d40:	fc9ff06f          	j	80005d08 <_ZN16KObjectAllocator19printInternalMemoryEv+0x268>
    }
}
    80005d44:	03813083          	ld	ra,56(sp)
    80005d48:	03013403          	ld	s0,48(sp)
    80005d4c:	02813483          	ld	s1,40(sp)
    80005d50:	02013903          	ld	s2,32(sp)
    80005d54:	01813983          	ld	s3,24(sp)
    80005d58:	01013a03          	ld	s4,16(sp)
    80005d5c:	00813a83          	ld	s5,8(sp)
    80005d60:	00013b03          	ld	s6,0(sp)
    80005d64:	04010113          	addi	sp,sp,64
    80005d68:	00008067          	ret

0000000080005d6c <_ZN16KObjectAllocator18allocateFreeObjectEv>:
        }
    }
    return nullptr;
}

void* KObjectAllocator::allocateFreeObject() {
    80005d6c:	ff010113          	addi	sp,sp,-16
    80005d70:	00813423          	sd	s0,8(sp)
    80005d74:	01010413          	addi	s0,sp,16
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005d78:	00000e13          	li	t3,0
    80005d7c:	03053783          	ld	a5,48(a0)
    80005d80:	0afe7e63          	bgeu	t3,a5,80005e3c <_ZN16KObjectAllocator18allocateFreeObjectEv+0xd0>
        for (size_t j = nextNonTakenByte; j >= i * memorySizeForBits && j < (i + 1) * memorySizeForBits; ++j) {
    80005d84:	03853303          	ld	t1,56(a0)
    80005d88:	0480006f          	j	80005dd0 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x64>
                    printString("j: "); printInteger(j); printString("\n");
                    printString("nextNonTakenByte: "); printInteger(nextNonTakenByte); printString("\n");
                    printString("Byte: "); printInteger(byte); printString("\n");
                    printString("Bit: "); printInteger(bit); printString("\n");
                    printString("========================");*/
                    bitVectors[i][byte] |= (uint8) 1 << (bit - 1);
    80005d8c:	00100693          	li	a3,1
    80005d90:	011698bb          	sllw	a7,a3,a7
    80005d94:	0115e5b3          	or	a1,a1,a7
    80005d98:	00b78023          	sb	a1,0(a5)
                    return &objectVectors[i][(byte * 8 + 8 - bit) * objectSize];
    80005d9c:	02053783          	ld	a5,32(a0)
    80005da0:	01078833          	add	a6,a5,a6
    80005da4:	00083783          	ld	a5,0(a6)
    80005da8:	00160613          	addi	a2,a2,1
    80005dac:	00361613          	slli	a2,a2,0x3
    80005db0:	40e60733          	sub	a4,a2,a4
    80005db4:	01853503          	ld	a0,24(a0)
    80005db8:	02a70733          	mul	a4,a4,a0
    80005dbc:	00e78533          	add	a0,a5,a4
                }
            }
        }
    }
    return nullptr;
}
    80005dc0:	00813403          	ld	s0,8(sp)
    80005dc4:	01010113          	addi	sp,sp,16
    80005dc8:	00008067          	ret
        for (size_t j = nextNonTakenByte; j >= i * memorySizeForBits && j < (i + 1) * memorySizeForBits; ++j) {
    80005dcc:	00130313          	addi	t1,t1,1
    80005dd0:	01053783          	ld	a5,16(a0)
    80005dd4:	03c78633          	mul	a2,a5,t3
    80005dd8:	04c36e63          	bltu	t1,a2,80005e34 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xc8>
    80005ddc:	001e0713          	addi	a4,t3,1
    80005de0:	02e787b3          	mul	a5,a5,a4
    80005de4:	04f37863          	bgeu	t1,a5,80005e34 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xc8>
            size_t byte = j - i * memorySizeForBits;
    80005de8:	40c30633          	sub	a2,t1,a2
            for (size_t bit = 8; bit != 0; --bit) {
    80005dec:	00800713          	li	a4,8
    80005df0:	fc070ee3          	beqz	a4,80005dcc <_ZN16KObjectAllocator18allocateFreeObjectEv+0x60>
                nextNonTakenByte = j + (bit == 1);
    80005df4:	fff70793          	addi	a5,a4,-1
    80005df8:	0017b793          	seqz	a5,a5
    80005dfc:	006787b3          	add	a5,a5,t1
    80005e00:	02f53c23          	sd	a5,56(a0)
                if ((bitVectors[i][byte] >> (bit - 1) & (uint8) 1) == 0) {
    80005e04:	02853783          	ld	a5,40(a0)
    80005e08:	003e1813          	slli	a6,t3,0x3
    80005e0c:	010787b3          	add	a5,a5,a6
    80005e10:	0007b783          	ld	a5,0(a5)
    80005e14:	00c787b3          	add	a5,a5,a2
    80005e18:	0007c583          	lbu	a1,0(a5)
    80005e1c:	fff7089b          	addiw	a7,a4,-1
    80005e20:	4115d6bb          	sraw	a3,a1,a7
    80005e24:	0016f693          	andi	a3,a3,1
    80005e28:	f60682e3          	beqz	a3,80005d8c <_ZN16KObjectAllocator18allocateFreeObjectEv+0x20>
            for (size_t bit = 8; bit != 0; --bit) {
    80005e2c:	fff70713          	addi	a4,a4,-1
    80005e30:	fc1ff06f          	j	80005df0 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x84>
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005e34:	001e0e13          	addi	t3,t3,1
    80005e38:	f45ff06f          	j	80005d7c <_ZN16KObjectAllocator18allocateFreeObjectEv+0x10>
    return nullptr;
    80005e3c:	00000513          	li	a0,0
    80005e40:	f81ff06f          	j	80005dc0 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x54>

0000000080005e44 <_ZN16KObjectAllocator10freeObjectEPv>:

void KObjectAllocator::freeObject(void* objectPointer) {
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005e44:	00000713          	li	a4,0
    80005e48:	0080006f          	j	80005e50 <_ZN16KObjectAllocator10freeObjectEPv+0xc>
    80005e4c:	00170713          	addi	a4,a4,1
    80005e50:	03053783          	ld	a5,48(a0)
    80005e54:	06f77463          	bgeu	a4,a5,80005ebc <_ZN16KObjectAllocator10freeObjectEPv+0x78>
        if ((uint8*) objectPointer < objectVectors[i]) continue;
    80005e58:	02053783          	ld	a5,32(a0)
    80005e5c:	00371693          	slli	a3,a4,0x3
    80005e60:	00d787b3          	add	a5,a5,a3
    80005e64:	0007b783          	ld	a5,0(a5)
    80005e68:	fef5e2e3          	bltu	a1,a5,80005e4c <_ZN16KObjectAllocator10freeObjectEPv+0x8>
        size_t idiff = (size_t) ((uint8*) objectPointer - objectVectors[i]);
    80005e6c:	40f587b3          	sub	a5,a1,a5
        size_t byte = idiff / objectSize / 8;
    80005e70:	01853603          	ld	a2,24(a0)
    80005e74:	02c7d7b3          	divu	a5,a5,a2
    80005e78:	0037d813          	srli	a6,a5,0x3
        if (byte >= memorySizeForBits) continue;
    80005e7c:	01053603          	ld	a2,16(a0)
    80005e80:	fcc876e3          	bgeu	a6,a2,80005e4c <_ZN16KObjectAllocator10freeObjectEPv+0x8>
        size_t bit = idiff / objectSize - byte * 8;
    80005e84:	0077f793          	andi	a5,a5,7
        bitVectors[i][byte] &= ~((uint8) 1 << (7 - bit));
    80005e88:	02853603          	ld	a2,40(a0)
    80005e8c:	00d606b3          	add	a3,a2,a3
    80005e90:	0006b703          	ld	a4,0(a3)
    80005e94:	01070733          	add	a4,a4,a6
    80005e98:	00700693          	li	a3,7
    80005e9c:	40f686bb          	subw	a3,a3,a5
    80005ea0:	00100793          	li	a5,1
    80005ea4:	00d797bb          	sllw	a5,a5,a3
    80005ea8:	fff7c793          	not	a5,a5
    80005eac:	00074683          	lbu	a3,0(a4)
    80005eb0:	00d7f7b3          	and	a5,a5,a3
    80005eb4:	00f70023          	sb	a5,0(a4)
        return;
    80005eb8:	00008067          	ret
void KObjectAllocator::freeObject(void* objectPointer) {
    80005ebc:	ff010113          	addi	sp,sp,-16
    80005ec0:	00113423          	sd	ra,8(sp)
    80005ec4:	00813023          	sd	s0,0(sp)
    80005ec8:	01010413          	addi	s0,sp,16
    }
    printString("ERROR: Object not allocated in this KObjectAllocator\n");
    80005ecc:	00003517          	auipc	a0,0x3
    80005ed0:	6d450513          	addi	a0,a0,1748 # 800095a0 <CONSOLE_STATUS+0x590>
    80005ed4:	00000097          	auipc	ra,0x0
    80005ed8:	554080e7          	jalr	1364(ra) # 80006428 <_Z11printStringPKc>
}
    80005edc:	00813083          	ld	ra,8(sp)
    80005ee0:	00013403          	ld	s0,0(sp)
    80005ee4:	01010113          	addi	sp,sp,16
    80005ee8:	00008067          	ret

0000000080005eec <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv>:

bool KObjectAllocator::handleNotEnoughMemoryProblem() {
    80005eec:	fb010113          	addi	sp,sp,-80
    80005ef0:	04113423          	sd	ra,72(sp)
    80005ef4:	04813023          	sd	s0,64(sp)
    80005ef8:	02913c23          	sd	s1,56(sp)
    80005efc:	03213823          	sd	s2,48(sp)
    80005f00:	03313423          	sd	s3,40(sp)
    80005f04:	03413023          	sd	s4,32(sp)
    80005f08:	01513c23          	sd	s5,24(sp)
    80005f0c:	01613823          	sd	s6,16(sp)
    80005f10:	01713423          	sd	s7,8(sp)
    80005f14:	05010413          	addi	s0,sp,80
    80005f18:	00050493          	mv	s1,a0
    size_t newNumberOfAllocations = 2 * numberOfAllocations;
    80005f1c:	03053a03          	ld	s4,48(a0)
    80005f20:	001a1993          	slli	s3,s4,0x1
    size_t newNumberOfObjects = 2 * numberOfObjects;
    80005f24:	00853a83          	ld	s5,8(a0)
    uint8** newBitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(
    80005f28:	ffffc097          	auipc	ra,0xffffc
    80005f2c:	c58080e7          	jalr	-936(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80005f30:	004a1a13          	slli	s4,s4,0x4
    80005f34:	000a0593          	mv	a1,s4
    80005f38:	ffffc097          	auipc	ra,0xffffc
    80005f3c:	d2c080e7          	jalr	-724(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
            newNumberOfAllocations * sizeof(uint8*)
    );
    if (!newBitVectors) return false;
    80005f40:	14050663          	beqz	a0,8000608c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a0>
    80005f44:	001a9a93          	slli	s5,s5,0x1
    80005f48:	00050913          	mv	s2,a0
    uint8** newObjectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(
    80005f4c:	ffffc097          	auipc	ra,0xffffc
    80005f50:	c34080e7          	jalr	-972(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80005f54:	000a0593          	mv	a1,s4
    80005f58:	ffffc097          	auipc	ra,0xffffc
    80005f5c:	d0c080e7          	jalr	-756(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80005f60:	00050a13          	mv	s4,a0
            newNumberOfAllocations * sizeof(uint8*)
    );
    if (!newObjectVectors) return false;
    80005f64:	14050c63          	beqz	a0,800060bc <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1d0>

    for (size_t i = 0; i < numberOfAllocations; ++i) newBitVectors[i] = bitVectors[i];
    80005f68:	00000793          	li	a5,0
    80005f6c:	0304bb03          	ld	s6,48(s1)
    80005f70:	0367f463          	bgeu	a5,s6,80005f98 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xac>
    80005f74:	0284b703          	ld	a4,40(s1)
    80005f78:	00379693          	slli	a3,a5,0x3
    80005f7c:	00d90633          	add	a2,s2,a3
    80005f80:	00d70733          	add	a4,a4,a3
    80005f84:	00073703          	ld	a4,0(a4)
    80005f88:	00e63023          	sd	a4,0(a2)
    80005f8c:	00178793          	addi	a5,a5,1
    80005f90:	fddff06f          	j	80005f6c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x80>
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i) {
    80005f94:	001b0b13          	addi	s6,s6,1
    80005f98:	053b7063          	bgeu	s6,s3,80005fd8 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xec>
        newBitVectors[i] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80005f9c:	ffffc097          	auipc	ra,0xffffc
    80005fa0:	be4080e7          	jalr	-1052(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
        memorySizeForBits + initialNumberOfObjects * objectSize );
    80005fa4:	0104b583          	ld	a1,16(s1)
    80005fa8:	0004b783          	ld	a5,0(s1)
    80005fac:	0184b703          	ld	a4,24(s1)
    80005fb0:	02e787b3          	mul	a5,a5,a4
        newBitVectors[i] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80005fb4:	003b1b93          	slli	s7,s6,0x3
    80005fb8:	01790bb3          	add	s7,s2,s7
    80005fbc:	00f585b3          	add	a1,a1,a5
    80005fc0:	ffffc097          	auipc	ra,0xffffc
    80005fc4:	ca4080e7          	jalr	-860(ra) # 80001c64 <_ZN15MemoryAllocator10kmem_allocEm>
    80005fc8:	00abb023          	sd	a0,0(s7)
        if (!newBitVectors[i]) return false;
    80005fcc:	fc0514e3          	bnez	a0,80005f94 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xa8>
    80005fd0:	00000513          	li	a0,0
    80005fd4:	0bc0006f          	j	80006090 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a4>
    }
    for (size_t i = 0; i < newNumberOfAllocations; ++i) newObjectVectors[i] = newBitVectors[i] + memorySizeForBits;
    80005fd8:	00000713          	li	a4,0
    80005fdc:	03377463          	bgeu	a4,s3,80006004 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x118>
    80005fe0:	00371793          	slli	a5,a4,0x3
    80005fe4:	00f906b3          	add	a3,s2,a5
    80005fe8:	0006b683          	ld	a3,0(a3)
    80005fec:	0104b603          	ld	a2,16(s1)
    80005ff0:	00fa07b3          	add	a5,s4,a5
    80005ff4:	00c686b3          	add	a3,a3,a2
    80005ff8:	00d7b023          	sd	a3,0(a5)
    80005ffc:	00170713          	addi	a4,a4,1
    80006000:	fddff06f          	j	80005fdc <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xf0>
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i)
    80006004:	0304b683          	ld	a3,48(s1)
    80006008:	0280006f          	j	80006030 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x144>
        for (size_t j = 0; j < memorySizeForBits; newBitVectors[i][j++] = 0);
    8000600c:	00369713          	slli	a4,a3,0x3
    80006010:	00e90733          	add	a4,s2,a4
    80006014:	00073703          	ld	a4,0(a4)
    80006018:	00f70733          	add	a4,a4,a5
    8000601c:	00070023          	sb	zero,0(a4)
    80006020:	00178793          	addi	a5,a5,1
    80006024:	0104b703          	ld	a4,16(s1)
    80006028:	fee7e2e3          	bltu	a5,a4,8000600c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x120>
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i)
    8000602c:	00168693          	addi	a3,a3,1
    80006030:	0136f663          	bgeu	a3,s3,8000603c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x150>
        for (size_t j = 0; j < memorySizeForBits; newBitVectors[i][j++] = 0);
    80006034:	00000793          	li	a5,0
    80006038:	fedff06f          	j	80006024 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x138>
    MemoryAllocator::instance()->kmem_free(bitVectors);
    8000603c:	ffffc097          	auipc	ra,0xffffc
    80006040:	b44080e7          	jalr	-1212(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80006044:	0284b583          	ld	a1,40(s1)
    80006048:	ffffc097          	auipc	ra,0xffffc
    8000604c:	cc4080e7          	jalr	-828(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(objectVectors);
    80006050:	ffffc097          	auipc	ra,0xffffc
    80006054:	b30080e7          	jalr	-1232(ra) # 80001b80 <_ZN15MemoryAllocator8instanceEv>
    80006058:	0204b583          	ld	a1,32(s1)
    8000605c:	ffffc097          	auipc	ra,0xffffc
    80006060:	cb0080e7          	jalr	-848(ra) # 80001d0c <_ZN15MemoryAllocator9kmem_freeEPv>

    numberOfObjects = newNumberOfObjects;
    80006064:	0154b423          	sd	s5,8(s1)
    nextNonTakenByte = numberOfAllocations * memorySizeForBits;
    80006068:	0304b783          	ld	a5,48(s1)
    8000606c:	0104b703          	ld	a4,16(s1)
    80006070:	02e787b3          	mul	a5,a5,a4
    80006074:	02f4bc23          	sd	a5,56(s1)
    numberOfAllocations = newNumberOfAllocations;
    80006078:	0334b823          	sd	s3,48(s1)
    bitVectors = newBitVectors;
    8000607c:	0324b423          	sd	s2,40(s1)
    objectVectors = newObjectVectors;
    80006080:	0344b023          	sd	s4,32(s1)

    return true;
    80006084:	00100513          	li	a0,1
    80006088:	0080006f          	j	80006090 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a4>
    if (!newBitVectors) return false;
    8000608c:	00000513          	li	a0,0
}
    80006090:	04813083          	ld	ra,72(sp)
    80006094:	04013403          	ld	s0,64(sp)
    80006098:	03813483          	ld	s1,56(sp)
    8000609c:	03013903          	ld	s2,48(sp)
    800060a0:	02813983          	ld	s3,40(sp)
    800060a4:	02013a03          	ld	s4,32(sp)
    800060a8:	01813a83          	ld	s5,24(sp)
    800060ac:	01013b03          	ld	s6,16(sp)
    800060b0:	00813b83          	ld	s7,8(sp)
    800060b4:	05010113          	addi	sp,sp,80
    800060b8:	00008067          	ret
    if (!newObjectVectors) return false;
    800060bc:	00000513          	li	a0,0
    800060c0:	fd1ff06f          	j	80006090 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a4>

00000000800060c4 <_ZN16KObjectAllocator17allocateNewObjectEv>:
void* KObjectAllocator::allocateNewObject() {
    800060c4:	fe010113          	addi	sp,sp,-32
    800060c8:	00113c23          	sd	ra,24(sp)
    800060cc:	00813823          	sd	s0,16(sp)
    800060d0:	00913423          	sd	s1,8(sp)
    800060d4:	01213023          	sd	s2,0(sp)
    800060d8:	02010413          	addi	s0,sp,32
    800060dc:	00050913          	mv	s2,a0
    void* returnedObject = allocateFreeObject();
    800060e0:	00000097          	auipc	ra,0x0
    800060e4:	c8c080e7          	jalr	-884(ra) # 80005d6c <_ZN16KObjectAllocator18allocateFreeObjectEv>
    800060e8:	00050493          	mv	s1,a0
    if (returnedObject) {
    800060ec:	02050063          	beqz	a0,8000610c <_ZN16KObjectAllocator17allocateNewObjectEv+0x48>
}
    800060f0:	00048513          	mv	a0,s1
    800060f4:	01813083          	ld	ra,24(sp)
    800060f8:	01013403          	ld	s0,16(sp)
    800060fc:	00813483          	ld	s1,8(sp)
    80006100:	00013903          	ld	s2,0(sp)
    80006104:	02010113          	addi	sp,sp,32
    80006108:	00008067          	ret
    nextNonTakenByte = 0;   // start search from start
    8000610c:	02093c23          	sd	zero,56(s2)
    returnedObject = allocateFreeObject();
    80006110:	00090513          	mv	a0,s2
    80006114:	00000097          	auipc	ra,0x0
    80006118:	c58080e7          	jalr	-936(ra) # 80005d6c <_ZN16KObjectAllocator18allocateFreeObjectEv>
    8000611c:	00050493          	mv	s1,a0
    if (returnedObject) {
    80006120:	fc0518e3          	bnez	a0,800060f0 <_ZN16KObjectAllocator17allocateNewObjectEv+0x2c>
    if (handleNotEnoughMemoryProblem()) {
    80006124:	00090513          	mv	a0,s2
    80006128:	00000097          	auipc	ra,0x0
    8000612c:	dc4080e7          	jalr	-572(ra) # 80005eec <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv>
    80006130:	fc0500e3          	beqz	a0,800060f0 <_ZN16KObjectAllocator17allocateNewObjectEv+0x2c>
        returnedObject = allocateFreeObject();
    80006134:	00090513          	mv	a0,s2
    80006138:	00000097          	auipc	ra,0x0
    8000613c:	c34080e7          	jalr	-972(ra) # 80005d6c <_ZN16KObjectAllocator18allocateFreeObjectEv>
    80006140:	00050493          	mv	s1,a0
        if (returnedObject) {
    80006144:	fadff06f          	j	800060f0 <_ZN16KObjectAllocator17allocateNewObjectEv+0x2c>

0000000080006148 <_ZN5Riscv10popSppSpieEv>:
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/print.hpp"

void Riscv::popSppSpie()
{
    80006148:	ff010113          	addi	sp,sp,-16
    8000614c:	00813423          	sd	s0,8(sp)
    80006150:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80006154:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80006158:	10200073          	sret
}
    8000615c:	00813403          	ld	s0,8(sp)
    80006160:	01010113          	addi	sp,sp,16
    80006164:	00008067          	ret

0000000080006168 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80006168:	f9010113          	addi	sp,sp,-112
    8000616c:	06113423          	sd	ra,104(sp)
    80006170:	06813023          	sd	s0,96(sp)
    80006174:	07010413          	addi	s0,sp,112
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80006178:	142027f3          	csrr	a5,scause
    8000617c:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80006180:	fc843703          	ld	a4,-56(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80006184:	ff870693          	addi	a3,a4,-8
    80006188:	00100793          	li	a5,1
    8000618c:	02d7fa63          	bgeu	a5,a3,800061c0 <_ZN5Riscv20handleSupervisorTrapEv+0x58>
        TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80006190:	fff00793          	li	a5,-1
    80006194:	03f79793          	slli	a5,a5,0x3f
    80006198:	00178793          	addi	a5,a5,1
    8000619c:	0cf70063          	beq	a4,a5,8000625c <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    800061a0:	fff00793          	li	a5,-1
    800061a4:	03f79793          	slli	a5,a5,0x3f
    800061a8:	00978793          	addi	a5,a5,9
    800061ac:	12f70463          	beq	a4,a5,800062d4 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
    }
    else
    {
        // unexpected trap cause
    }
    800061b0:	06813083          	ld	ra,104(sp)
    800061b4:	06013403          	ld	s0,96(sp)
    800061b8:	07010113          	addi	sp,sp,112
    800061bc:	00008067          	ret
        printString("Here");
    800061c0:	00003517          	auipc	a0,0x3
    800061c4:	41850513          	addi	a0,a0,1048 # 800095d8 <CONSOLE_STATUS+0x5c8>
    800061c8:	00000097          	auipc	ra,0x0
    800061cc:	260080e7          	jalr	608(ra) # 80006428 <_Z11printStringPKc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800061d0:	141027f3          	csrr	a5,sepc
    800061d4:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    800061d8:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    800061dc:	00478793          	addi	a5,a5,4
    800061e0:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800061e4:	100027f3          	csrr	a5,sstatus
    800061e8:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    800061ec:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    800061f0:	faf43023          	sd	a5,-96(s0)
        __asm__ volatile("sd a0, %0" : "=m" (sysCallNum));
    800061f4:	faa43423          	sd	a0,-88(s0)
        printString("\na0 = "); printInteger(sysCallNum);
    800061f8:	00003517          	auipc	a0,0x3
    800061fc:	3e850513          	addi	a0,a0,1000 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80006200:	00000097          	auipc	ra,0x0
    80006204:	228080e7          	jalr	552(ra) # 80006428 <_Z11printStringPKc>
    80006208:	fa843503          	ld	a0,-88(s0)
    8000620c:	00000097          	auipc	ra,0x0
    80006210:	28c080e7          	jalr	652(ra) # 80006498 <_Z12printIntegerm>
        __asm__ volatile("sd a0, %0" : "=m" (arg1));
    80006214:	faa43823          	sd	a0,-80(s0)
        printString("\na1 = "); printInteger(arg1);
    80006218:	00003517          	auipc	a0,0x3
    8000621c:	3d050513          	addi	a0,a0,976 # 800095e8 <CONSOLE_STATUS+0x5d8>
    80006220:	00000097          	auipc	ra,0x0
    80006224:	208080e7          	jalr	520(ra) # 80006428 <_Z11printStringPKc>
    80006228:	fb043503          	ld	a0,-80(s0)
    8000622c:	00000097          	auipc	ra,0x0
    80006230:	26c080e7          	jalr	620(ra) # 80006498 <_Z12printIntegerm>
        TCB::timeSliceCounter = 0;
    80006234:	00004797          	auipc	a5,0x4
    80006238:	4ac7b783          	ld	a5,1196(a5) # 8000a6e0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000623c:	0007b023          	sd	zero,0(a5)
        TCB::dispatch();
    80006240:	ffffb097          	auipc	ra,0xffffb
    80006244:	7e0080e7          	jalr	2016(ra) # 80001a20 <_ZN3TCB8dispatchEv>
        w_sstatus(sstatus);
    80006248:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000624c:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80006250:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80006254:	14179073          	csrw	sepc,a5
}
    80006258:	f59ff06f          	j	800061b0 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    8000625c:	00200793          	li	a5,2
    80006260:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80006264:	00004717          	auipc	a4,0x4
    80006268:	47c73703          	ld	a4,1148(a4) # 8000a6e0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000626c:	00073783          	ld	a5,0(a4)
    80006270:	00178793          	addi	a5,a5,1
    80006274:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80006278:	00004717          	auipc	a4,0x4
    8000627c:	48873703          	ld	a4,1160(a4) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x48>
    80006280:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80006284:	02073703          	ld	a4,32(a4)
    80006288:	f2e7e4e3          	bltu	a5,a4,800061b0 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000628c:	141027f3          	csrr	a5,sepc
    80006290:	fef43423          	sd	a5,-24(s0)
    return sepc;
    80006294:	fe843783          	ld	a5,-24(s0)
            uint64 volatile sepc = r_sepc();
    80006298:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000629c:	100027f3          	csrr	a5,sstatus
    800062a0:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    800062a4:	fe043783          	ld	a5,-32(s0)
            uint64 volatile sstatus = r_sstatus();
    800062a8:	fcf43023          	sd	a5,-64(s0)
            TCB::timeSliceCounter = 0;
    800062ac:	00004797          	auipc	a5,0x4
    800062b0:	4347b783          	ld	a5,1076(a5) # 8000a6e0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800062b4:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800062b8:	ffffb097          	auipc	ra,0xffffb
    800062bc:	768080e7          	jalr	1896(ra) # 80001a20 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    800062c0:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800062c4:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    800062c8:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800062cc:	14179073          	csrw	sepc,a5
}
    800062d0:	ee1ff06f          	j	800061b0 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
        console_handler();
    800062d4:	00002097          	auipc	ra,0x2
    800062d8:	620080e7          	jalr	1568(ra) # 800088f4 <console_handler>
    800062dc:	ed5ff06f          	j	800061b0 <_ZN5Riscv20handleSupervisorTrapEv+0x48>

00000000800062e0 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    800062e0:	ff010113          	addi	sp,sp,-16
    800062e4:	00813423          	sd	s0,8(sp)
    800062e8:	01010413          	addi	s0,sp,16
    800062ec:	00100793          	li	a5,1
    800062f0:	00f50863          	beq	a0,a5,80006300 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800062f4:	00813403          	ld	s0,8(sp)
    800062f8:	01010113          	addi	sp,sp,16
    800062fc:	00008067          	ret
    80006300:	000107b7          	lui	a5,0x10
    80006304:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006308:	fef596e3          	bne	a1,a5,800062f4 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    8000630c:	00004797          	auipc	a5,0x4
    80006310:	49478793          	addi	a5,a5,1172 # 8000a7a0 <_ZN9Scheduler16readyThreadQueueE>
    80006314:	0007b023          	sd	zero,0(a5)
    80006318:	0007b423          	sd	zero,8(a5)
    8000631c:	fd9ff06f          	j	800062f4 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080006320 <_ZN9Scheduler3getEv>:
{
    80006320:	fe010113          	addi	sp,sp,-32
    80006324:	00113c23          	sd	ra,24(sp)
    80006328:	00813823          	sd	s0,16(sp)
    8000632c:	00913423          	sd	s1,8(sp)
    80006330:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80006334:	00004517          	auipc	a0,0x4
    80006338:	46c53503          	ld	a0,1132(a0) # 8000a7a0 <_ZN9Scheduler16readyThreadQueueE>
    8000633c:	04050263          	beqz	a0,80006380 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80006340:	00853783          	ld	a5,8(a0)
    80006344:	00004717          	auipc	a4,0x4
    80006348:	44f73e23          	sd	a5,1116(a4) # 8000a7a0 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    8000634c:	02078463          	beqz	a5,80006374 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80006350:	00053483          	ld	s1,0(a0)
        delete elem;
    80006354:	ffffd097          	auipc	ra,0xffffd
    80006358:	d64080e7          	jalr	-668(ra) # 800030b8 <_ZdlPv>
}
    8000635c:	00048513          	mv	a0,s1
    80006360:	01813083          	ld	ra,24(sp)
    80006364:	01013403          	ld	s0,16(sp)
    80006368:	00813483          	ld	s1,8(sp)
    8000636c:	02010113          	addi	sp,sp,32
    80006370:	00008067          	ret
        if (!head) { tail = 0; }
    80006374:	00004797          	auipc	a5,0x4
    80006378:	4207ba23          	sd	zero,1076(a5) # 8000a7a8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000637c:	fd5ff06f          	j	80006350 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80006380:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80006384:	fd9ff06f          	j	8000635c <_ZN9Scheduler3getEv+0x3c>

0000000080006388 <_ZN9Scheduler3putEP3TCB>:
{
    80006388:	fe010113          	addi	sp,sp,-32
    8000638c:	00113c23          	sd	ra,24(sp)
    80006390:	00813823          	sd	s0,16(sp)
    80006394:	00913423          	sd	s1,8(sp)
    80006398:	02010413          	addi	s0,sp,32
    8000639c:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800063a0:	01000513          	li	a0,16
    800063a4:	ffffd097          	auipc	ra,0xffffd
    800063a8:	cc4080e7          	jalr	-828(ra) # 80003068 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800063ac:	00953023          	sd	s1,0(a0)
    800063b0:	00053423          	sd	zero,8(a0)
        if (tail)
    800063b4:	00004797          	auipc	a5,0x4
    800063b8:	3f47b783          	ld	a5,1012(a5) # 8000a7a8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800063bc:	02078263          	beqz	a5,800063e0 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    800063c0:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800063c4:	00004797          	auipc	a5,0x4
    800063c8:	3ea7b223          	sd	a0,996(a5) # 8000a7a8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800063cc:	01813083          	ld	ra,24(sp)
    800063d0:	01013403          	ld	s0,16(sp)
    800063d4:	00813483          	ld	s1,8(sp)
    800063d8:	02010113          	addi	sp,sp,32
    800063dc:	00008067          	ret
            head = tail = elem;
    800063e0:	00004797          	auipc	a5,0x4
    800063e4:	3c078793          	addi	a5,a5,960 # 8000a7a0 <_ZN9Scheduler16readyThreadQueueE>
    800063e8:	00a7b423          	sd	a0,8(a5)
    800063ec:	00a7b023          	sd	a0,0(a5)
    800063f0:	fddff06f          	j	800063cc <_ZN9Scheduler3putEP3TCB+0x44>

00000000800063f4 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800063f4:	ff010113          	addi	sp,sp,-16
    800063f8:	00113423          	sd	ra,8(sp)
    800063fc:	00813023          	sd	s0,0(sp)
    80006400:	01010413          	addi	s0,sp,16
    80006404:	000105b7          	lui	a1,0x10
    80006408:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    8000640c:	00100513          	li	a0,1
    80006410:	00000097          	auipc	ra,0x0
    80006414:	ed0080e7          	jalr	-304(ra) # 800062e0 <_Z41__static_initialization_and_destruction_0ii>
    80006418:	00813083          	ld	ra,8(sp)
    8000641c:	00013403          	ld	s0,0(sp)
    80006420:	01010113          	addi	sp,sp,16
    80006424:	00008067          	ret

0000000080006428 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80006428:	fd010113          	addi	sp,sp,-48
    8000642c:	02113423          	sd	ra,40(sp)
    80006430:	02813023          	sd	s0,32(sp)
    80006434:	00913c23          	sd	s1,24(sp)
    80006438:	01213823          	sd	s2,16(sp)
    8000643c:	03010413          	addi	s0,sp,48
    80006440:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80006444:	100027f3          	csrr	a5,sstatus
    80006448:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    8000644c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80006450:	00200793          	li	a5,2
    80006454:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    while (*string != '\0') __putc(*string++);
    80006458:	0004c503          	lbu	a0,0(s1)
    8000645c:	00050a63          	beqz	a0,80006470 <_Z11printStringPKc+0x48>
    80006460:	00148493          	addi	s1,s1,1
    80006464:	00002097          	auipc	ra,0x2
    80006468:	41c080e7          	jalr	1052(ra) # 80008880 <__putc>
    8000646c:	fedff06f          	j	80006458 <_Z11printStringPKc+0x30>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80006470:	0009091b          	sext.w	s2,s2
    80006474:	00297913          	andi	s2,s2,2
    80006478:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000647c:	10092073          	csrs	sstatus,s2
}
    80006480:	02813083          	ld	ra,40(sp)
    80006484:	02013403          	ld	s0,32(sp)
    80006488:	01813483          	ld	s1,24(sp)
    8000648c:	01013903          	ld	s2,16(sp)
    80006490:	03010113          	addi	sp,sp,48
    80006494:	00008067          	ret

0000000080006498 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80006498:	fc010113          	addi	sp,sp,-64
    8000649c:	02113c23          	sd	ra,56(sp)
    800064a0:	02813823          	sd	s0,48(sp)
    800064a4:	02913423          	sd	s1,40(sp)
    800064a8:	03213023          	sd	s2,32(sp)
    800064ac:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800064b0:	100027f3          	csrr	a5,sstatus
    800064b4:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800064b8:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800064bc:	00200793          	li	a5,2
    800064c0:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    static char digits[] = "0123456789";
    char buf[16]; int i = 0; uint64 x = integer;
    int neg = (integer & ((uint64)1 << 63)) != 0;
    800064c4:	00050593          	mv	a1,a0

    if (neg) x = ~integer + 1;
    800064c8:	06054463          	bltz	a0,80006530 <_Z12printIntegerm+0x98>
{
    800064cc:	00000493          	li	s1,0

    do buf[i++] = digits[x % 10];
    800064d0:	00a00713          	li	a4,10
    800064d4:	02e57633          	remu	a2,a0,a4
    800064d8:	00048693          	mv	a3,s1
    800064dc:	0014849b          	addiw	s1,s1,1
    800064e0:	00003797          	auipc	a5,0x3
    800064e4:	11078793          	addi	a5,a5,272 # 800095f0 <_ZZ12printIntegermE6digits>
    800064e8:	00c787b3          	add	a5,a5,a2
    800064ec:	0007c603          	lbu	a2,0(a5)
    800064f0:	fe040793          	addi	a5,s0,-32
    800064f4:	00d787b3          	add	a5,a5,a3
    800064f8:	fec78823          	sb	a2,-16(a5)
    while ((x /= 10) != 0);
    800064fc:	00050613          	mv	a2,a0
    80006500:	02e55533          	divu	a0,a0,a4
    80006504:	00900793          	li	a5,9
    80006508:	fcc7e4e3          	bltu	a5,a2,800064d0 <_Z12printIntegerm+0x38>

    if (neg) buf[i++] = '-';
    8000650c:	0205c663          	bltz	a1,80006538 <_Z12printIntegerm+0xa0>
    while (--i >= 0) { __putc(buf[i]); }
    80006510:	fff4849b          	addiw	s1,s1,-1
    80006514:	0204ce63          	bltz	s1,80006550 <_Z12printIntegerm+0xb8>
    80006518:	fe040793          	addi	a5,s0,-32
    8000651c:	009787b3          	add	a5,a5,s1
    80006520:	ff07c503          	lbu	a0,-16(a5)
    80006524:	00002097          	auipc	ra,0x2
    80006528:	35c080e7          	jalr	860(ra) # 80008880 <__putc>
    8000652c:	fe5ff06f          	j	80006510 <_Z12printIntegerm+0x78>
    if (neg) x = ~integer + 1;
    80006530:	40a00533          	neg	a0,a0
    80006534:	f99ff06f          	j	800064cc <_Z12printIntegerm+0x34>
    if (neg) buf[i++] = '-';
    80006538:	fe040793          	addi	a5,s0,-32
    8000653c:	009784b3          	add	s1,a5,s1
    80006540:	02d00793          	li	a5,45
    80006544:	fef48823          	sb	a5,-16(s1)
    80006548:	0026849b          	addiw	s1,a3,2
    8000654c:	fc5ff06f          	j	80006510 <_Z12printIntegerm+0x78>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80006550:	0009091b          	sext.w	s2,s2
    80006554:	00297913          	andi	s2,s2,2
    80006558:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000655c:	10092073          	csrs	sstatus,s2
}
    80006560:	03813083          	ld	ra,56(sp)
    80006564:	03013403          	ld	s0,48(sp)
    80006568:	02813483          	ld	s1,40(sp)
    8000656c:	02013903          	ld	s2,32(sp)
    80006570:	04010113          	addi	sp,sp,64
    80006574:	00008067          	ret

0000000080006578 <_Z12printIntegerh>:


void printInteger(uint8 integer)
{
    80006578:	ff010113          	addi	sp,sp,-16
    8000657c:	00113423          	sd	ra,8(sp)
    80006580:	00813023          	sd	s0,0(sp)
    80006584:	01010413          	addi	s0,sp,16
    printInteger((uint64)integer);
    80006588:	00000097          	auipc	ra,0x0
    8000658c:	f10080e7          	jalr	-240(ra) # 80006498 <_Z12printIntegerm>
}
    80006590:	00813083          	ld	ra,8(sp)
    80006594:	00013403          	ld	s0,0(sp)
    80006598:	01010113          	addi	sp,sp,16
    8000659c:	00008067          	ret

00000000800065a0 <start>:
    800065a0:	ff010113          	addi	sp,sp,-16
    800065a4:	00813423          	sd	s0,8(sp)
    800065a8:	01010413          	addi	s0,sp,16
    800065ac:	300027f3          	csrr	a5,mstatus
    800065b0:	ffffe737          	lui	a4,0xffffe
    800065b4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff2ddf>
    800065b8:	00e7f7b3          	and	a5,a5,a4
    800065bc:	00001737          	lui	a4,0x1
    800065c0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800065c4:	00e7e7b3          	or	a5,a5,a4
    800065c8:	30079073          	csrw	mstatus,a5
    800065cc:	00000797          	auipc	a5,0x0
    800065d0:	16078793          	addi	a5,a5,352 # 8000672c <system_main>
    800065d4:	34179073          	csrw	mepc,a5
    800065d8:	00000793          	li	a5,0
    800065dc:	18079073          	csrw	satp,a5
    800065e0:	000107b7          	lui	a5,0x10
    800065e4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800065e8:	30279073          	csrw	medeleg,a5
    800065ec:	30379073          	csrw	mideleg,a5
    800065f0:	104027f3          	csrr	a5,sie
    800065f4:	2227e793          	ori	a5,a5,546
    800065f8:	10479073          	csrw	sie,a5
    800065fc:	fff00793          	li	a5,-1
    80006600:	00a7d793          	srli	a5,a5,0xa
    80006604:	3b079073          	csrw	pmpaddr0,a5
    80006608:	00f00793          	li	a5,15
    8000660c:	3a079073          	csrw	pmpcfg0,a5
    80006610:	f14027f3          	csrr	a5,mhartid
    80006614:	0200c737          	lui	a4,0x200c
    80006618:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000661c:	0007869b          	sext.w	a3,a5
    80006620:	00269713          	slli	a4,a3,0x2
    80006624:	000f4637          	lui	a2,0xf4
    80006628:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000662c:	00d70733          	add	a4,a4,a3
    80006630:	0037979b          	slliw	a5,a5,0x3
    80006634:	020046b7          	lui	a3,0x2004
    80006638:	00d787b3          	add	a5,a5,a3
    8000663c:	00c585b3          	add	a1,a1,a2
    80006640:	00371693          	slli	a3,a4,0x3
    80006644:	00004717          	auipc	a4,0x4
    80006648:	16c70713          	addi	a4,a4,364 # 8000a7b0 <timer_scratch>
    8000664c:	00b7b023          	sd	a1,0(a5)
    80006650:	00d70733          	add	a4,a4,a3
    80006654:	00f73c23          	sd	a5,24(a4)
    80006658:	02c73023          	sd	a2,32(a4)
    8000665c:	34071073          	csrw	mscratch,a4
    80006660:	00000797          	auipc	a5,0x0
    80006664:	6e078793          	addi	a5,a5,1760 # 80006d40 <timervec>
    80006668:	30579073          	csrw	mtvec,a5
    8000666c:	300027f3          	csrr	a5,mstatus
    80006670:	0087e793          	ori	a5,a5,8
    80006674:	30079073          	csrw	mstatus,a5
    80006678:	304027f3          	csrr	a5,mie
    8000667c:	0807e793          	ori	a5,a5,128
    80006680:	30479073          	csrw	mie,a5
    80006684:	f14027f3          	csrr	a5,mhartid
    80006688:	0007879b          	sext.w	a5,a5
    8000668c:	00078213          	mv	tp,a5
    80006690:	30200073          	mret
    80006694:	00813403          	ld	s0,8(sp)
    80006698:	01010113          	addi	sp,sp,16
    8000669c:	00008067          	ret

00000000800066a0 <timerinit>:
    800066a0:	ff010113          	addi	sp,sp,-16
    800066a4:	00813423          	sd	s0,8(sp)
    800066a8:	01010413          	addi	s0,sp,16
    800066ac:	f14027f3          	csrr	a5,mhartid
    800066b0:	0200c737          	lui	a4,0x200c
    800066b4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800066b8:	0007869b          	sext.w	a3,a5
    800066bc:	00269713          	slli	a4,a3,0x2
    800066c0:	000f4637          	lui	a2,0xf4
    800066c4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800066c8:	00d70733          	add	a4,a4,a3
    800066cc:	0037979b          	slliw	a5,a5,0x3
    800066d0:	020046b7          	lui	a3,0x2004
    800066d4:	00d787b3          	add	a5,a5,a3
    800066d8:	00c585b3          	add	a1,a1,a2
    800066dc:	00371693          	slli	a3,a4,0x3
    800066e0:	00004717          	auipc	a4,0x4
    800066e4:	0d070713          	addi	a4,a4,208 # 8000a7b0 <timer_scratch>
    800066e8:	00b7b023          	sd	a1,0(a5)
    800066ec:	00d70733          	add	a4,a4,a3
    800066f0:	00f73c23          	sd	a5,24(a4)
    800066f4:	02c73023          	sd	a2,32(a4)
    800066f8:	34071073          	csrw	mscratch,a4
    800066fc:	00000797          	auipc	a5,0x0
    80006700:	64478793          	addi	a5,a5,1604 # 80006d40 <timervec>
    80006704:	30579073          	csrw	mtvec,a5
    80006708:	300027f3          	csrr	a5,mstatus
    8000670c:	0087e793          	ori	a5,a5,8
    80006710:	30079073          	csrw	mstatus,a5
    80006714:	304027f3          	csrr	a5,mie
    80006718:	0807e793          	ori	a5,a5,128
    8000671c:	30479073          	csrw	mie,a5
    80006720:	00813403          	ld	s0,8(sp)
    80006724:	01010113          	addi	sp,sp,16
    80006728:	00008067          	ret

000000008000672c <system_main>:
    8000672c:	fe010113          	addi	sp,sp,-32
    80006730:	00813823          	sd	s0,16(sp)
    80006734:	00913423          	sd	s1,8(sp)
    80006738:	00113c23          	sd	ra,24(sp)
    8000673c:	02010413          	addi	s0,sp,32
    80006740:	00000097          	auipc	ra,0x0
    80006744:	0c4080e7          	jalr	196(ra) # 80006804 <cpuid>
    80006748:	00004497          	auipc	s1,0x4
    8000674c:	ff848493          	addi	s1,s1,-8 # 8000a740 <started>
    80006750:	02050263          	beqz	a0,80006774 <system_main+0x48>
    80006754:	0004a783          	lw	a5,0(s1)
    80006758:	0007879b          	sext.w	a5,a5
    8000675c:	fe078ce3          	beqz	a5,80006754 <system_main+0x28>
    80006760:	0ff0000f          	fence
    80006764:	00003517          	auipc	a0,0x3
    80006768:	ecc50513          	addi	a0,a0,-308 # 80009630 <_ZZ12printIntegermE6digits+0x40>
    8000676c:	00001097          	auipc	ra,0x1
    80006770:	a70080e7          	jalr	-1424(ra) # 800071dc <panic>
    80006774:	00001097          	auipc	ra,0x1
    80006778:	9c4080e7          	jalr	-1596(ra) # 80007138 <consoleinit>
    8000677c:	00001097          	auipc	ra,0x1
    80006780:	150080e7          	jalr	336(ra) # 800078cc <printfinit>
    80006784:	00003517          	auipc	a0,0x3
    80006788:	99c50513          	addi	a0,a0,-1636 # 80009120 <CONSOLE_STATUS+0x110>
    8000678c:	00001097          	auipc	ra,0x1
    80006790:	aac080e7          	jalr	-1364(ra) # 80007238 <__printf>
    80006794:	00003517          	auipc	a0,0x3
    80006798:	e6c50513          	addi	a0,a0,-404 # 80009600 <_ZZ12printIntegermE6digits+0x10>
    8000679c:	00001097          	auipc	ra,0x1
    800067a0:	a9c080e7          	jalr	-1380(ra) # 80007238 <__printf>
    800067a4:	00003517          	auipc	a0,0x3
    800067a8:	97c50513          	addi	a0,a0,-1668 # 80009120 <CONSOLE_STATUS+0x110>
    800067ac:	00001097          	auipc	ra,0x1
    800067b0:	a8c080e7          	jalr	-1396(ra) # 80007238 <__printf>
    800067b4:	00001097          	auipc	ra,0x1
    800067b8:	4a4080e7          	jalr	1188(ra) # 80007c58 <kinit>
    800067bc:	00000097          	auipc	ra,0x0
    800067c0:	148080e7          	jalr	328(ra) # 80006904 <trapinit>
    800067c4:	00000097          	auipc	ra,0x0
    800067c8:	16c080e7          	jalr	364(ra) # 80006930 <trapinithart>
    800067cc:	00000097          	auipc	ra,0x0
    800067d0:	5b4080e7          	jalr	1460(ra) # 80006d80 <plicinit>
    800067d4:	00000097          	auipc	ra,0x0
    800067d8:	5d4080e7          	jalr	1492(ra) # 80006da8 <plicinithart>
    800067dc:	00000097          	auipc	ra,0x0
    800067e0:	078080e7          	jalr	120(ra) # 80006854 <userinit>
    800067e4:	0ff0000f          	fence
    800067e8:	00100793          	li	a5,1
    800067ec:	00003517          	auipc	a0,0x3
    800067f0:	e2c50513          	addi	a0,a0,-468 # 80009618 <_ZZ12printIntegermE6digits+0x28>
    800067f4:	00f4a023          	sw	a5,0(s1)
    800067f8:	00001097          	auipc	ra,0x1
    800067fc:	a40080e7          	jalr	-1472(ra) # 80007238 <__printf>
    80006800:	0000006f          	j	80006800 <system_main+0xd4>

0000000080006804 <cpuid>:
    80006804:	ff010113          	addi	sp,sp,-16
    80006808:	00813423          	sd	s0,8(sp)
    8000680c:	01010413          	addi	s0,sp,16
    80006810:	00020513          	mv	a0,tp
    80006814:	00813403          	ld	s0,8(sp)
    80006818:	0005051b          	sext.w	a0,a0
    8000681c:	01010113          	addi	sp,sp,16
    80006820:	00008067          	ret

0000000080006824 <mycpu>:
    80006824:	ff010113          	addi	sp,sp,-16
    80006828:	00813423          	sd	s0,8(sp)
    8000682c:	01010413          	addi	s0,sp,16
    80006830:	00020793          	mv	a5,tp
    80006834:	00813403          	ld	s0,8(sp)
    80006838:	0007879b          	sext.w	a5,a5
    8000683c:	00779793          	slli	a5,a5,0x7
    80006840:	00005517          	auipc	a0,0x5
    80006844:	fa050513          	addi	a0,a0,-96 # 8000b7e0 <cpus>
    80006848:	00f50533          	add	a0,a0,a5
    8000684c:	01010113          	addi	sp,sp,16
    80006850:	00008067          	ret

0000000080006854 <userinit>:
    80006854:	ff010113          	addi	sp,sp,-16
    80006858:	00813423          	sd	s0,8(sp)
    8000685c:	01010413          	addi	s0,sp,16
    80006860:	00813403          	ld	s0,8(sp)
    80006864:	01010113          	addi	sp,sp,16
    80006868:	ffffb317          	auipc	t1,0xffffb
    8000686c:	f7430067          	jr	-140(t1) # 800017dc <main>

0000000080006870 <either_copyout>:
    80006870:	ff010113          	addi	sp,sp,-16
    80006874:	00813023          	sd	s0,0(sp)
    80006878:	00113423          	sd	ra,8(sp)
    8000687c:	01010413          	addi	s0,sp,16
    80006880:	02051663          	bnez	a0,800068ac <either_copyout+0x3c>
    80006884:	00058513          	mv	a0,a1
    80006888:	00060593          	mv	a1,a2
    8000688c:	0006861b          	sext.w	a2,a3
    80006890:	00002097          	auipc	ra,0x2
    80006894:	c54080e7          	jalr	-940(ra) # 800084e4 <__memmove>
    80006898:	00813083          	ld	ra,8(sp)
    8000689c:	00013403          	ld	s0,0(sp)
    800068a0:	00000513          	li	a0,0
    800068a4:	01010113          	addi	sp,sp,16
    800068a8:	00008067          	ret
    800068ac:	00003517          	auipc	a0,0x3
    800068b0:	dac50513          	addi	a0,a0,-596 # 80009658 <_ZZ12printIntegermE6digits+0x68>
    800068b4:	00001097          	auipc	ra,0x1
    800068b8:	928080e7          	jalr	-1752(ra) # 800071dc <panic>

00000000800068bc <either_copyin>:
    800068bc:	ff010113          	addi	sp,sp,-16
    800068c0:	00813023          	sd	s0,0(sp)
    800068c4:	00113423          	sd	ra,8(sp)
    800068c8:	01010413          	addi	s0,sp,16
    800068cc:	02059463          	bnez	a1,800068f4 <either_copyin+0x38>
    800068d0:	00060593          	mv	a1,a2
    800068d4:	0006861b          	sext.w	a2,a3
    800068d8:	00002097          	auipc	ra,0x2
    800068dc:	c0c080e7          	jalr	-1012(ra) # 800084e4 <__memmove>
    800068e0:	00813083          	ld	ra,8(sp)
    800068e4:	00013403          	ld	s0,0(sp)
    800068e8:	00000513          	li	a0,0
    800068ec:	01010113          	addi	sp,sp,16
    800068f0:	00008067          	ret
    800068f4:	00003517          	auipc	a0,0x3
    800068f8:	d8c50513          	addi	a0,a0,-628 # 80009680 <_ZZ12printIntegermE6digits+0x90>
    800068fc:	00001097          	auipc	ra,0x1
    80006900:	8e0080e7          	jalr	-1824(ra) # 800071dc <panic>

0000000080006904 <trapinit>:
    80006904:	ff010113          	addi	sp,sp,-16
    80006908:	00813423          	sd	s0,8(sp)
    8000690c:	01010413          	addi	s0,sp,16
    80006910:	00813403          	ld	s0,8(sp)
    80006914:	00003597          	auipc	a1,0x3
    80006918:	d9458593          	addi	a1,a1,-620 # 800096a8 <_ZZ12printIntegermE6digits+0xb8>
    8000691c:	00005517          	auipc	a0,0x5
    80006920:	f4450513          	addi	a0,a0,-188 # 8000b860 <tickslock>
    80006924:	01010113          	addi	sp,sp,16
    80006928:	00001317          	auipc	t1,0x1
    8000692c:	5c030067          	jr	1472(t1) # 80007ee8 <initlock>

0000000080006930 <trapinithart>:
    80006930:	ff010113          	addi	sp,sp,-16
    80006934:	00813423          	sd	s0,8(sp)
    80006938:	01010413          	addi	s0,sp,16
    8000693c:	00000797          	auipc	a5,0x0
    80006940:	2f478793          	addi	a5,a5,756 # 80006c30 <kernelvec>
    80006944:	10579073          	csrw	stvec,a5
    80006948:	00813403          	ld	s0,8(sp)
    8000694c:	01010113          	addi	sp,sp,16
    80006950:	00008067          	ret

0000000080006954 <usertrap>:
    80006954:	ff010113          	addi	sp,sp,-16
    80006958:	00813423          	sd	s0,8(sp)
    8000695c:	01010413          	addi	s0,sp,16
    80006960:	00813403          	ld	s0,8(sp)
    80006964:	01010113          	addi	sp,sp,16
    80006968:	00008067          	ret

000000008000696c <usertrapret>:
    8000696c:	ff010113          	addi	sp,sp,-16
    80006970:	00813423          	sd	s0,8(sp)
    80006974:	01010413          	addi	s0,sp,16
    80006978:	00813403          	ld	s0,8(sp)
    8000697c:	01010113          	addi	sp,sp,16
    80006980:	00008067          	ret

0000000080006984 <kerneltrap>:
    80006984:	fe010113          	addi	sp,sp,-32
    80006988:	00813823          	sd	s0,16(sp)
    8000698c:	00113c23          	sd	ra,24(sp)
    80006990:	00913423          	sd	s1,8(sp)
    80006994:	02010413          	addi	s0,sp,32
    80006998:	142025f3          	csrr	a1,scause
    8000699c:	100027f3          	csrr	a5,sstatus
    800069a0:	0027f793          	andi	a5,a5,2
    800069a4:	10079c63          	bnez	a5,80006abc <kerneltrap+0x138>
    800069a8:	142027f3          	csrr	a5,scause
    800069ac:	0207ce63          	bltz	a5,800069e8 <kerneltrap+0x64>
    800069b0:	00003517          	auipc	a0,0x3
    800069b4:	d4050513          	addi	a0,a0,-704 # 800096f0 <_ZZ12printIntegermE6digits+0x100>
    800069b8:	00001097          	auipc	ra,0x1
    800069bc:	880080e7          	jalr	-1920(ra) # 80007238 <__printf>
    800069c0:	141025f3          	csrr	a1,sepc
    800069c4:	14302673          	csrr	a2,stval
    800069c8:	00003517          	auipc	a0,0x3
    800069cc:	d3850513          	addi	a0,a0,-712 # 80009700 <_ZZ12printIntegermE6digits+0x110>
    800069d0:	00001097          	auipc	ra,0x1
    800069d4:	868080e7          	jalr	-1944(ra) # 80007238 <__printf>
    800069d8:	00003517          	auipc	a0,0x3
    800069dc:	d4050513          	addi	a0,a0,-704 # 80009718 <_ZZ12printIntegermE6digits+0x128>
    800069e0:	00000097          	auipc	ra,0x0
    800069e4:	7fc080e7          	jalr	2044(ra) # 800071dc <panic>
    800069e8:	0ff7f713          	andi	a4,a5,255
    800069ec:	00900693          	li	a3,9
    800069f0:	04d70063          	beq	a4,a3,80006a30 <kerneltrap+0xac>
    800069f4:	fff00713          	li	a4,-1
    800069f8:	03f71713          	slli	a4,a4,0x3f
    800069fc:	00170713          	addi	a4,a4,1
    80006a00:	fae798e3          	bne	a5,a4,800069b0 <kerneltrap+0x2c>
    80006a04:	00000097          	auipc	ra,0x0
    80006a08:	e00080e7          	jalr	-512(ra) # 80006804 <cpuid>
    80006a0c:	06050663          	beqz	a0,80006a78 <kerneltrap+0xf4>
    80006a10:	144027f3          	csrr	a5,sip
    80006a14:	ffd7f793          	andi	a5,a5,-3
    80006a18:	14479073          	csrw	sip,a5
    80006a1c:	01813083          	ld	ra,24(sp)
    80006a20:	01013403          	ld	s0,16(sp)
    80006a24:	00813483          	ld	s1,8(sp)
    80006a28:	02010113          	addi	sp,sp,32
    80006a2c:	00008067          	ret
    80006a30:	00000097          	auipc	ra,0x0
    80006a34:	3c4080e7          	jalr	964(ra) # 80006df4 <plic_claim>
    80006a38:	00a00793          	li	a5,10
    80006a3c:	00050493          	mv	s1,a0
    80006a40:	06f50863          	beq	a0,a5,80006ab0 <kerneltrap+0x12c>
    80006a44:	fc050ce3          	beqz	a0,80006a1c <kerneltrap+0x98>
    80006a48:	00050593          	mv	a1,a0
    80006a4c:	00003517          	auipc	a0,0x3
    80006a50:	c8450513          	addi	a0,a0,-892 # 800096d0 <_ZZ12printIntegermE6digits+0xe0>
    80006a54:	00000097          	auipc	ra,0x0
    80006a58:	7e4080e7          	jalr	2020(ra) # 80007238 <__printf>
    80006a5c:	01013403          	ld	s0,16(sp)
    80006a60:	01813083          	ld	ra,24(sp)
    80006a64:	00048513          	mv	a0,s1
    80006a68:	00813483          	ld	s1,8(sp)
    80006a6c:	02010113          	addi	sp,sp,32
    80006a70:	00000317          	auipc	t1,0x0
    80006a74:	3bc30067          	jr	956(t1) # 80006e2c <plic_complete>
    80006a78:	00005517          	auipc	a0,0x5
    80006a7c:	de850513          	addi	a0,a0,-536 # 8000b860 <tickslock>
    80006a80:	00001097          	auipc	ra,0x1
    80006a84:	48c080e7          	jalr	1164(ra) # 80007f0c <acquire>
    80006a88:	00004717          	auipc	a4,0x4
    80006a8c:	cbc70713          	addi	a4,a4,-836 # 8000a744 <ticks>
    80006a90:	00072783          	lw	a5,0(a4)
    80006a94:	00005517          	auipc	a0,0x5
    80006a98:	dcc50513          	addi	a0,a0,-564 # 8000b860 <tickslock>
    80006a9c:	0017879b          	addiw	a5,a5,1
    80006aa0:	00f72023          	sw	a5,0(a4)
    80006aa4:	00001097          	auipc	ra,0x1
    80006aa8:	534080e7          	jalr	1332(ra) # 80007fd8 <release>
    80006aac:	f65ff06f          	j	80006a10 <kerneltrap+0x8c>
    80006ab0:	00001097          	auipc	ra,0x1
    80006ab4:	090080e7          	jalr	144(ra) # 80007b40 <uartintr>
    80006ab8:	fa5ff06f          	j	80006a5c <kerneltrap+0xd8>
    80006abc:	00003517          	auipc	a0,0x3
    80006ac0:	bf450513          	addi	a0,a0,-1036 # 800096b0 <_ZZ12printIntegermE6digits+0xc0>
    80006ac4:	00000097          	auipc	ra,0x0
    80006ac8:	718080e7          	jalr	1816(ra) # 800071dc <panic>

0000000080006acc <clockintr>:
    80006acc:	fe010113          	addi	sp,sp,-32
    80006ad0:	00813823          	sd	s0,16(sp)
    80006ad4:	00913423          	sd	s1,8(sp)
    80006ad8:	00113c23          	sd	ra,24(sp)
    80006adc:	02010413          	addi	s0,sp,32
    80006ae0:	00005497          	auipc	s1,0x5
    80006ae4:	d8048493          	addi	s1,s1,-640 # 8000b860 <tickslock>
    80006ae8:	00048513          	mv	a0,s1
    80006aec:	00001097          	auipc	ra,0x1
    80006af0:	420080e7          	jalr	1056(ra) # 80007f0c <acquire>
    80006af4:	00004717          	auipc	a4,0x4
    80006af8:	c5070713          	addi	a4,a4,-944 # 8000a744 <ticks>
    80006afc:	00072783          	lw	a5,0(a4)
    80006b00:	01013403          	ld	s0,16(sp)
    80006b04:	01813083          	ld	ra,24(sp)
    80006b08:	00048513          	mv	a0,s1
    80006b0c:	0017879b          	addiw	a5,a5,1
    80006b10:	00813483          	ld	s1,8(sp)
    80006b14:	00f72023          	sw	a5,0(a4)
    80006b18:	02010113          	addi	sp,sp,32
    80006b1c:	00001317          	auipc	t1,0x1
    80006b20:	4bc30067          	jr	1212(t1) # 80007fd8 <release>

0000000080006b24 <devintr>:
    80006b24:	142027f3          	csrr	a5,scause
    80006b28:	00000513          	li	a0,0
    80006b2c:	0007c463          	bltz	a5,80006b34 <devintr+0x10>
    80006b30:	00008067          	ret
    80006b34:	fe010113          	addi	sp,sp,-32
    80006b38:	00813823          	sd	s0,16(sp)
    80006b3c:	00113c23          	sd	ra,24(sp)
    80006b40:	00913423          	sd	s1,8(sp)
    80006b44:	02010413          	addi	s0,sp,32
    80006b48:	0ff7f713          	andi	a4,a5,255
    80006b4c:	00900693          	li	a3,9
    80006b50:	04d70c63          	beq	a4,a3,80006ba8 <devintr+0x84>
    80006b54:	fff00713          	li	a4,-1
    80006b58:	03f71713          	slli	a4,a4,0x3f
    80006b5c:	00170713          	addi	a4,a4,1
    80006b60:	00e78c63          	beq	a5,a4,80006b78 <devintr+0x54>
    80006b64:	01813083          	ld	ra,24(sp)
    80006b68:	01013403          	ld	s0,16(sp)
    80006b6c:	00813483          	ld	s1,8(sp)
    80006b70:	02010113          	addi	sp,sp,32
    80006b74:	00008067          	ret
    80006b78:	00000097          	auipc	ra,0x0
    80006b7c:	c8c080e7          	jalr	-884(ra) # 80006804 <cpuid>
    80006b80:	06050663          	beqz	a0,80006bec <devintr+0xc8>
    80006b84:	144027f3          	csrr	a5,sip
    80006b88:	ffd7f793          	andi	a5,a5,-3
    80006b8c:	14479073          	csrw	sip,a5
    80006b90:	01813083          	ld	ra,24(sp)
    80006b94:	01013403          	ld	s0,16(sp)
    80006b98:	00813483          	ld	s1,8(sp)
    80006b9c:	00200513          	li	a0,2
    80006ba0:	02010113          	addi	sp,sp,32
    80006ba4:	00008067          	ret
    80006ba8:	00000097          	auipc	ra,0x0
    80006bac:	24c080e7          	jalr	588(ra) # 80006df4 <plic_claim>
    80006bb0:	00a00793          	li	a5,10
    80006bb4:	00050493          	mv	s1,a0
    80006bb8:	06f50663          	beq	a0,a5,80006c24 <devintr+0x100>
    80006bbc:	00100513          	li	a0,1
    80006bc0:	fa0482e3          	beqz	s1,80006b64 <devintr+0x40>
    80006bc4:	00048593          	mv	a1,s1
    80006bc8:	00003517          	auipc	a0,0x3
    80006bcc:	b0850513          	addi	a0,a0,-1272 # 800096d0 <_ZZ12printIntegermE6digits+0xe0>
    80006bd0:	00000097          	auipc	ra,0x0
    80006bd4:	668080e7          	jalr	1640(ra) # 80007238 <__printf>
    80006bd8:	00048513          	mv	a0,s1
    80006bdc:	00000097          	auipc	ra,0x0
    80006be0:	250080e7          	jalr	592(ra) # 80006e2c <plic_complete>
    80006be4:	00100513          	li	a0,1
    80006be8:	f7dff06f          	j	80006b64 <devintr+0x40>
    80006bec:	00005517          	auipc	a0,0x5
    80006bf0:	c7450513          	addi	a0,a0,-908 # 8000b860 <tickslock>
    80006bf4:	00001097          	auipc	ra,0x1
    80006bf8:	318080e7          	jalr	792(ra) # 80007f0c <acquire>
    80006bfc:	00004717          	auipc	a4,0x4
    80006c00:	b4870713          	addi	a4,a4,-1208 # 8000a744 <ticks>
    80006c04:	00072783          	lw	a5,0(a4)
    80006c08:	00005517          	auipc	a0,0x5
    80006c0c:	c5850513          	addi	a0,a0,-936 # 8000b860 <tickslock>
    80006c10:	0017879b          	addiw	a5,a5,1
    80006c14:	00f72023          	sw	a5,0(a4)
    80006c18:	00001097          	auipc	ra,0x1
    80006c1c:	3c0080e7          	jalr	960(ra) # 80007fd8 <release>
    80006c20:	f65ff06f          	j	80006b84 <devintr+0x60>
    80006c24:	00001097          	auipc	ra,0x1
    80006c28:	f1c080e7          	jalr	-228(ra) # 80007b40 <uartintr>
    80006c2c:	fadff06f          	j	80006bd8 <devintr+0xb4>

0000000080006c30 <kernelvec>:
    80006c30:	f0010113          	addi	sp,sp,-256
    80006c34:	00113023          	sd	ra,0(sp)
    80006c38:	00213423          	sd	sp,8(sp)
    80006c3c:	00313823          	sd	gp,16(sp)
    80006c40:	00413c23          	sd	tp,24(sp)
    80006c44:	02513023          	sd	t0,32(sp)
    80006c48:	02613423          	sd	t1,40(sp)
    80006c4c:	02713823          	sd	t2,48(sp)
    80006c50:	02813c23          	sd	s0,56(sp)
    80006c54:	04913023          	sd	s1,64(sp)
    80006c58:	04a13423          	sd	a0,72(sp)
    80006c5c:	04b13823          	sd	a1,80(sp)
    80006c60:	04c13c23          	sd	a2,88(sp)
    80006c64:	06d13023          	sd	a3,96(sp)
    80006c68:	06e13423          	sd	a4,104(sp)
    80006c6c:	06f13823          	sd	a5,112(sp)
    80006c70:	07013c23          	sd	a6,120(sp)
    80006c74:	09113023          	sd	a7,128(sp)
    80006c78:	09213423          	sd	s2,136(sp)
    80006c7c:	09313823          	sd	s3,144(sp)
    80006c80:	09413c23          	sd	s4,152(sp)
    80006c84:	0b513023          	sd	s5,160(sp)
    80006c88:	0b613423          	sd	s6,168(sp)
    80006c8c:	0b713823          	sd	s7,176(sp)
    80006c90:	0b813c23          	sd	s8,184(sp)
    80006c94:	0d913023          	sd	s9,192(sp)
    80006c98:	0da13423          	sd	s10,200(sp)
    80006c9c:	0db13823          	sd	s11,208(sp)
    80006ca0:	0dc13c23          	sd	t3,216(sp)
    80006ca4:	0fd13023          	sd	t4,224(sp)
    80006ca8:	0fe13423          	sd	t5,232(sp)
    80006cac:	0ff13823          	sd	t6,240(sp)
    80006cb0:	cd5ff0ef          	jal	ra,80006984 <kerneltrap>
    80006cb4:	00013083          	ld	ra,0(sp)
    80006cb8:	00813103          	ld	sp,8(sp)
    80006cbc:	01013183          	ld	gp,16(sp)
    80006cc0:	02013283          	ld	t0,32(sp)
    80006cc4:	02813303          	ld	t1,40(sp)
    80006cc8:	03013383          	ld	t2,48(sp)
    80006ccc:	03813403          	ld	s0,56(sp)
    80006cd0:	04013483          	ld	s1,64(sp)
    80006cd4:	04813503          	ld	a0,72(sp)
    80006cd8:	05013583          	ld	a1,80(sp)
    80006cdc:	05813603          	ld	a2,88(sp)
    80006ce0:	06013683          	ld	a3,96(sp)
    80006ce4:	06813703          	ld	a4,104(sp)
    80006ce8:	07013783          	ld	a5,112(sp)
    80006cec:	07813803          	ld	a6,120(sp)
    80006cf0:	08013883          	ld	a7,128(sp)
    80006cf4:	08813903          	ld	s2,136(sp)
    80006cf8:	09013983          	ld	s3,144(sp)
    80006cfc:	09813a03          	ld	s4,152(sp)
    80006d00:	0a013a83          	ld	s5,160(sp)
    80006d04:	0a813b03          	ld	s6,168(sp)
    80006d08:	0b013b83          	ld	s7,176(sp)
    80006d0c:	0b813c03          	ld	s8,184(sp)
    80006d10:	0c013c83          	ld	s9,192(sp)
    80006d14:	0c813d03          	ld	s10,200(sp)
    80006d18:	0d013d83          	ld	s11,208(sp)
    80006d1c:	0d813e03          	ld	t3,216(sp)
    80006d20:	0e013e83          	ld	t4,224(sp)
    80006d24:	0e813f03          	ld	t5,232(sp)
    80006d28:	0f013f83          	ld	t6,240(sp)
    80006d2c:	10010113          	addi	sp,sp,256
    80006d30:	10200073          	sret
    80006d34:	00000013          	nop
    80006d38:	00000013          	nop
    80006d3c:	00000013          	nop

0000000080006d40 <timervec>:
    80006d40:	34051573          	csrrw	a0,mscratch,a0
    80006d44:	00b53023          	sd	a1,0(a0)
    80006d48:	00c53423          	sd	a2,8(a0)
    80006d4c:	00d53823          	sd	a3,16(a0)
    80006d50:	01853583          	ld	a1,24(a0)
    80006d54:	02053603          	ld	a2,32(a0)
    80006d58:	0005b683          	ld	a3,0(a1)
    80006d5c:	00c686b3          	add	a3,a3,a2
    80006d60:	00d5b023          	sd	a3,0(a1)
    80006d64:	00200593          	li	a1,2
    80006d68:	14459073          	csrw	sip,a1
    80006d6c:	01053683          	ld	a3,16(a0)
    80006d70:	00853603          	ld	a2,8(a0)
    80006d74:	00053583          	ld	a1,0(a0)
    80006d78:	34051573          	csrrw	a0,mscratch,a0
    80006d7c:	30200073          	mret

0000000080006d80 <plicinit>:
    80006d80:	ff010113          	addi	sp,sp,-16
    80006d84:	00813423          	sd	s0,8(sp)
    80006d88:	01010413          	addi	s0,sp,16
    80006d8c:	00813403          	ld	s0,8(sp)
    80006d90:	0c0007b7          	lui	a5,0xc000
    80006d94:	00100713          	li	a4,1
    80006d98:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006d9c:	00e7a223          	sw	a4,4(a5)
    80006da0:	01010113          	addi	sp,sp,16
    80006da4:	00008067          	ret

0000000080006da8 <plicinithart>:
    80006da8:	ff010113          	addi	sp,sp,-16
    80006dac:	00813023          	sd	s0,0(sp)
    80006db0:	00113423          	sd	ra,8(sp)
    80006db4:	01010413          	addi	s0,sp,16
    80006db8:	00000097          	auipc	ra,0x0
    80006dbc:	a4c080e7          	jalr	-1460(ra) # 80006804 <cpuid>
    80006dc0:	0085171b          	slliw	a4,a0,0x8
    80006dc4:	0c0027b7          	lui	a5,0xc002
    80006dc8:	00e787b3          	add	a5,a5,a4
    80006dcc:	40200713          	li	a4,1026
    80006dd0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006dd4:	00813083          	ld	ra,8(sp)
    80006dd8:	00013403          	ld	s0,0(sp)
    80006ddc:	00d5151b          	slliw	a0,a0,0xd
    80006de0:	0c2017b7          	lui	a5,0xc201
    80006de4:	00a78533          	add	a0,a5,a0
    80006de8:	00052023          	sw	zero,0(a0)
    80006dec:	01010113          	addi	sp,sp,16
    80006df0:	00008067          	ret

0000000080006df4 <plic_claim>:
    80006df4:	ff010113          	addi	sp,sp,-16
    80006df8:	00813023          	sd	s0,0(sp)
    80006dfc:	00113423          	sd	ra,8(sp)
    80006e00:	01010413          	addi	s0,sp,16
    80006e04:	00000097          	auipc	ra,0x0
    80006e08:	a00080e7          	jalr	-1536(ra) # 80006804 <cpuid>
    80006e0c:	00813083          	ld	ra,8(sp)
    80006e10:	00013403          	ld	s0,0(sp)
    80006e14:	00d5151b          	slliw	a0,a0,0xd
    80006e18:	0c2017b7          	lui	a5,0xc201
    80006e1c:	00a78533          	add	a0,a5,a0
    80006e20:	00452503          	lw	a0,4(a0)
    80006e24:	01010113          	addi	sp,sp,16
    80006e28:	00008067          	ret

0000000080006e2c <plic_complete>:
    80006e2c:	fe010113          	addi	sp,sp,-32
    80006e30:	00813823          	sd	s0,16(sp)
    80006e34:	00913423          	sd	s1,8(sp)
    80006e38:	00113c23          	sd	ra,24(sp)
    80006e3c:	02010413          	addi	s0,sp,32
    80006e40:	00050493          	mv	s1,a0
    80006e44:	00000097          	auipc	ra,0x0
    80006e48:	9c0080e7          	jalr	-1600(ra) # 80006804 <cpuid>
    80006e4c:	01813083          	ld	ra,24(sp)
    80006e50:	01013403          	ld	s0,16(sp)
    80006e54:	00d5179b          	slliw	a5,a0,0xd
    80006e58:	0c201737          	lui	a4,0xc201
    80006e5c:	00f707b3          	add	a5,a4,a5
    80006e60:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006e64:	00813483          	ld	s1,8(sp)
    80006e68:	02010113          	addi	sp,sp,32
    80006e6c:	00008067          	ret

0000000080006e70 <consolewrite>:
    80006e70:	fb010113          	addi	sp,sp,-80
    80006e74:	04813023          	sd	s0,64(sp)
    80006e78:	04113423          	sd	ra,72(sp)
    80006e7c:	02913c23          	sd	s1,56(sp)
    80006e80:	03213823          	sd	s2,48(sp)
    80006e84:	03313423          	sd	s3,40(sp)
    80006e88:	03413023          	sd	s4,32(sp)
    80006e8c:	01513c23          	sd	s5,24(sp)
    80006e90:	05010413          	addi	s0,sp,80
    80006e94:	06c05c63          	blez	a2,80006f0c <consolewrite+0x9c>
    80006e98:	00060993          	mv	s3,a2
    80006e9c:	00050a13          	mv	s4,a0
    80006ea0:	00058493          	mv	s1,a1
    80006ea4:	00000913          	li	s2,0
    80006ea8:	fff00a93          	li	s5,-1
    80006eac:	01c0006f          	j	80006ec8 <consolewrite+0x58>
    80006eb0:	fbf44503          	lbu	a0,-65(s0)
    80006eb4:	0019091b          	addiw	s2,s2,1
    80006eb8:	00148493          	addi	s1,s1,1
    80006ebc:	00001097          	auipc	ra,0x1
    80006ec0:	a9c080e7          	jalr	-1380(ra) # 80007958 <uartputc>
    80006ec4:	03298063          	beq	s3,s2,80006ee4 <consolewrite+0x74>
    80006ec8:	00048613          	mv	a2,s1
    80006ecc:	00100693          	li	a3,1
    80006ed0:	000a0593          	mv	a1,s4
    80006ed4:	fbf40513          	addi	a0,s0,-65
    80006ed8:	00000097          	auipc	ra,0x0
    80006edc:	9e4080e7          	jalr	-1564(ra) # 800068bc <either_copyin>
    80006ee0:	fd5518e3          	bne	a0,s5,80006eb0 <consolewrite+0x40>
    80006ee4:	04813083          	ld	ra,72(sp)
    80006ee8:	04013403          	ld	s0,64(sp)
    80006eec:	03813483          	ld	s1,56(sp)
    80006ef0:	02813983          	ld	s3,40(sp)
    80006ef4:	02013a03          	ld	s4,32(sp)
    80006ef8:	01813a83          	ld	s5,24(sp)
    80006efc:	00090513          	mv	a0,s2
    80006f00:	03013903          	ld	s2,48(sp)
    80006f04:	05010113          	addi	sp,sp,80
    80006f08:	00008067          	ret
    80006f0c:	00000913          	li	s2,0
    80006f10:	fd5ff06f          	j	80006ee4 <consolewrite+0x74>

0000000080006f14 <consoleread>:
    80006f14:	f9010113          	addi	sp,sp,-112
    80006f18:	06813023          	sd	s0,96(sp)
    80006f1c:	04913c23          	sd	s1,88(sp)
    80006f20:	05213823          	sd	s2,80(sp)
    80006f24:	05313423          	sd	s3,72(sp)
    80006f28:	05413023          	sd	s4,64(sp)
    80006f2c:	03513c23          	sd	s5,56(sp)
    80006f30:	03613823          	sd	s6,48(sp)
    80006f34:	03713423          	sd	s7,40(sp)
    80006f38:	03813023          	sd	s8,32(sp)
    80006f3c:	06113423          	sd	ra,104(sp)
    80006f40:	01913c23          	sd	s9,24(sp)
    80006f44:	07010413          	addi	s0,sp,112
    80006f48:	00060b93          	mv	s7,a2
    80006f4c:	00050913          	mv	s2,a0
    80006f50:	00058c13          	mv	s8,a1
    80006f54:	00060b1b          	sext.w	s6,a2
    80006f58:	00005497          	auipc	s1,0x5
    80006f5c:	93048493          	addi	s1,s1,-1744 # 8000b888 <cons>
    80006f60:	00400993          	li	s3,4
    80006f64:	fff00a13          	li	s4,-1
    80006f68:	00a00a93          	li	s5,10
    80006f6c:	05705e63          	blez	s7,80006fc8 <consoleread+0xb4>
    80006f70:	09c4a703          	lw	a4,156(s1)
    80006f74:	0984a783          	lw	a5,152(s1)
    80006f78:	0007071b          	sext.w	a4,a4
    80006f7c:	08e78463          	beq	a5,a4,80007004 <consoleread+0xf0>
    80006f80:	07f7f713          	andi	a4,a5,127
    80006f84:	00e48733          	add	a4,s1,a4
    80006f88:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006f8c:	0017869b          	addiw	a3,a5,1
    80006f90:	08d4ac23          	sw	a3,152(s1)
    80006f94:	00070c9b          	sext.w	s9,a4
    80006f98:	0b370663          	beq	a4,s3,80007044 <consoleread+0x130>
    80006f9c:	00100693          	li	a3,1
    80006fa0:	f9f40613          	addi	a2,s0,-97
    80006fa4:	000c0593          	mv	a1,s8
    80006fa8:	00090513          	mv	a0,s2
    80006fac:	f8e40fa3          	sb	a4,-97(s0)
    80006fb0:	00000097          	auipc	ra,0x0
    80006fb4:	8c0080e7          	jalr	-1856(ra) # 80006870 <either_copyout>
    80006fb8:	01450863          	beq	a0,s4,80006fc8 <consoleread+0xb4>
    80006fbc:	001c0c13          	addi	s8,s8,1
    80006fc0:	fffb8b9b          	addiw	s7,s7,-1
    80006fc4:	fb5c94e3          	bne	s9,s5,80006f6c <consoleread+0x58>
    80006fc8:	000b851b          	sext.w	a0,s7
    80006fcc:	06813083          	ld	ra,104(sp)
    80006fd0:	06013403          	ld	s0,96(sp)
    80006fd4:	05813483          	ld	s1,88(sp)
    80006fd8:	05013903          	ld	s2,80(sp)
    80006fdc:	04813983          	ld	s3,72(sp)
    80006fe0:	04013a03          	ld	s4,64(sp)
    80006fe4:	03813a83          	ld	s5,56(sp)
    80006fe8:	02813b83          	ld	s7,40(sp)
    80006fec:	02013c03          	ld	s8,32(sp)
    80006ff0:	01813c83          	ld	s9,24(sp)
    80006ff4:	40ab053b          	subw	a0,s6,a0
    80006ff8:	03013b03          	ld	s6,48(sp)
    80006ffc:	07010113          	addi	sp,sp,112
    80007000:	00008067          	ret
    80007004:	00001097          	auipc	ra,0x1
    80007008:	1d8080e7          	jalr	472(ra) # 800081dc <push_on>
    8000700c:	0984a703          	lw	a4,152(s1)
    80007010:	09c4a783          	lw	a5,156(s1)
    80007014:	0007879b          	sext.w	a5,a5
    80007018:	fef70ce3          	beq	a4,a5,80007010 <consoleread+0xfc>
    8000701c:	00001097          	auipc	ra,0x1
    80007020:	234080e7          	jalr	564(ra) # 80008250 <pop_on>
    80007024:	0984a783          	lw	a5,152(s1)
    80007028:	07f7f713          	andi	a4,a5,127
    8000702c:	00e48733          	add	a4,s1,a4
    80007030:	01874703          	lbu	a4,24(a4)
    80007034:	0017869b          	addiw	a3,a5,1
    80007038:	08d4ac23          	sw	a3,152(s1)
    8000703c:	00070c9b          	sext.w	s9,a4
    80007040:	f5371ee3          	bne	a4,s3,80006f9c <consoleread+0x88>
    80007044:	000b851b          	sext.w	a0,s7
    80007048:	f96bf2e3          	bgeu	s7,s6,80006fcc <consoleread+0xb8>
    8000704c:	08f4ac23          	sw	a5,152(s1)
    80007050:	f7dff06f          	j	80006fcc <consoleread+0xb8>

0000000080007054 <consputc>:
    80007054:	10000793          	li	a5,256
    80007058:	00f50663          	beq	a0,a5,80007064 <consputc+0x10>
    8000705c:	00001317          	auipc	t1,0x1
    80007060:	9f430067          	jr	-1548(t1) # 80007a50 <uartputc_sync>
    80007064:	ff010113          	addi	sp,sp,-16
    80007068:	00113423          	sd	ra,8(sp)
    8000706c:	00813023          	sd	s0,0(sp)
    80007070:	01010413          	addi	s0,sp,16
    80007074:	00800513          	li	a0,8
    80007078:	00001097          	auipc	ra,0x1
    8000707c:	9d8080e7          	jalr	-1576(ra) # 80007a50 <uartputc_sync>
    80007080:	02000513          	li	a0,32
    80007084:	00001097          	auipc	ra,0x1
    80007088:	9cc080e7          	jalr	-1588(ra) # 80007a50 <uartputc_sync>
    8000708c:	00013403          	ld	s0,0(sp)
    80007090:	00813083          	ld	ra,8(sp)
    80007094:	00800513          	li	a0,8
    80007098:	01010113          	addi	sp,sp,16
    8000709c:	00001317          	auipc	t1,0x1
    800070a0:	9b430067          	jr	-1612(t1) # 80007a50 <uartputc_sync>

00000000800070a4 <consoleintr>:
    800070a4:	fe010113          	addi	sp,sp,-32
    800070a8:	00813823          	sd	s0,16(sp)
    800070ac:	00913423          	sd	s1,8(sp)
    800070b0:	01213023          	sd	s2,0(sp)
    800070b4:	00113c23          	sd	ra,24(sp)
    800070b8:	02010413          	addi	s0,sp,32
    800070bc:	00004917          	auipc	s2,0x4
    800070c0:	7cc90913          	addi	s2,s2,1996 # 8000b888 <cons>
    800070c4:	00050493          	mv	s1,a0
    800070c8:	00090513          	mv	a0,s2
    800070cc:	00001097          	auipc	ra,0x1
    800070d0:	e40080e7          	jalr	-448(ra) # 80007f0c <acquire>
    800070d4:	02048c63          	beqz	s1,8000710c <consoleintr+0x68>
    800070d8:	0a092783          	lw	a5,160(s2)
    800070dc:	09892703          	lw	a4,152(s2)
    800070e0:	07f00693          	li	a3,127
    800070e4:	40e7873b          	subw	a4,a5,a4
    800070e8:	02e6e263          	bltu	a3,a4,8000710c <consoleintr+0x68>
    800070ec:	00d00713          	li	a4,13
    800070f0:	04e48063          	beq	s1,a4,80007130 <consoleintr+0x8c>
    800070f4:	07f7f713          	andi	a4,a5,127
    800070f8:	00e90733          	add	a4,s2,a4
    800070fc:	0017879b          	addiw	a5,a5,1
    80007100:	0af92023          	sw	a5,160(s2)
    80007104:	00970c23          	sb	s1,24(a4)
    80007108:	08f92e23          	sw	a5,156(s2)
    8000710c:	01013403          	ld	s0,16(sp)
    80007110:	01813083          	ld	ra,24(sp)
    80007114:	00813483          	ld	s1,8(sp)
    80007118:	00013903          	ld	s2,0(sp)
    8000711c:	00004517          	auipc	a0,0x4
    80007120:	76c50513          	addi	a0,a0,1900 # 8000b888 <cons>
    80007124:	02010113          	addi	sp,sp,32
    80007128:	00001317          	auipc	t1,0x1
    8000712c:	eb030067          	jr	-336(t1) # 80007fd8 <release>
    80007130:	00a00493          	li	s1,10
    80007134:	fc1ff06f          	j	800070f4 <consoleintr+0x50>

0000000080007138 <consoleinit>:
    80007138:	fe010113          	addi	sp,sp,-32
    8000713c:	00113c23          	sd	ra,24(sp)
    80007140:	00813823          	sd	s0,16(sp)
    80007144:	00913423          	sd	s1,8(sp)
    80007148:	02010413          	addi	s0,sp,32
    8000714c:	00004497          	auipc	s1,0x4
    80007150:	73c48493          	addi	s1,s1,1852 # 8000b888 <cons>
    80007154:	00048513          	mv	a0,s1
    80007158:	00002597          	auipc	a1,0x2
    8000715c:	5d058593          	addi	a1,a1,1488 # 80009728 <_ZZ12printIntegermE6digits+0x138>
    80007160:	00001097          	auipc	ra,0x1
    80007164:	d88080e7          	jalr	-632(ra) # 80007ee8 <initlock>
    80007168:	00000097          	auipc	ra,0x0
    8000716c:	7ac080e7          	jalr	1964(ra) # 80007914 <uartinit>
    80007170:	01813083          	ld	ra,24(sp)
    80007174:	01013403          	ld	s0,16(sp)
    80007178:	00000797          	auipc	a5,0x0
    8000717c:	d9c78793          	addi	a5,a5,-612 # 80006f14 <consoleread>
    80007180:	0af4bc23          	sd	a5,184(s1)
    80007184:	00000797          	auipc	a5,0x0
    80007188:	cec78793          	addi	a5,a5,-788 # 80006e70 <consolewrite>
    8000718c:	0cf4b023          	sd	a5,192(s1)
    80007190:	00813483          	ld	s1,8(sp)
    80007194:	02010113          	addi	sp,sp,32
    80007198:	00008067          	ret

000000008000719c <console_read>:
    8000719c:	ff010113          	addi	sp,sp,-16
    800071a0:	00813423          	sd	s0,8(sp)
    800071a4:	01010413          	addi	s0,sp,16
    800071a8:	00813403          	ld	s0,8(sp)
    800071ac:	00004317          	auipc	t1,0x4
    800071b0:	79433303          	ld	t1,1940(t1) # 8000b940 <devsw+0x10>
    800071b4:	01010113          	addi	sp,sp,16
    800071b8:	00030067          	jr	t1

00000000800071bc <console_write>:
    800071bc:	ff010113          	addi	sp,sp,-16
    800071c0:	00813423          	sd	s0,8(sp)
    800071c4:	01010413          	addi	s0,sp,16
    800071c8:	00813403          	ld	s0,8(sp)
    800071cc:	00004317          	auipc	t1,0x4
    800071d0:	77c33303          	ld	t1,1916(t1) # 8000b948 <devsw+0x18>
    800071d4:	01010113          	addi	sp,sp,16
    800071d8:	00030067          	jr	t1

00000000800071dc <panic>:
    800071dc:	fe010113          	addi	sp,sp,-32
    800071e0:	00113c23          	sd	ra,24(sp)
    800071e4:	00813823          	sd	s0,16(sp)
    800071e8:	00913423          	sd	s1,8(sp)
    800071ec:	02010413          	addi	s0,sp,32
    800071f0:	00050493          	mv	s1,a0
    800071f4:	00002517          	auipc	a0,0x2
    800071f8:	53c50513          	addi	a0,a0,1340 # 80009730 <_ZZ12printIntegermE6digits+0x140>
    800071fc:	00004797          	auipc	a5,0x4
    80007200:	7e07a623          	sw	zero,2028(a5) # 8000b9e8 <pr+0x18>
    80007204:	00000097          	auipc	ra,0x0
    80007208:	034080e7          	jalr	52(ra) # 80007238 <__printf>
    8000720c:	00048513          	mv	a0,s1
    80007210:	00000097          	auipc	ra,0x0
    80007214:	028080e7          	jalr	40(ra) # 80007238 <__printf>
    80007218:	00002517          	auipc	a0,0x2
    8000721c:	f0850513          	addi	a0,a0,-248 # 80009120 <CONSOLE_STATUS+0x110>
    80007220:	00000097          	auipc	ra,0x0
    80007224:	018080e7          	jalr	24(ra) # 80007238 <__printf>
    80007228:	00100793          	li	a5,1
    8000722c:	00003717          	auipc	a4,0x3
    80007230:	50f72e23          	sw	a5,1308(a4) # 8000a748 <panicked>
    80007234:	0000006f          	j	80007234 <panic+0x58>

0000000080007238 <__printf>:
    80007238:	f3010113          	addi	sp,sp,-208
    8000723c:	08813023          	sd	s0,128(sp)
    80007240:	07313423          	sd	s3,104(sp)
    80007244:	09010413          	addi	s0,sp,144
    80007248:	05813023          	sd	s8,64(sp)
    8000724c:	08113423          	sd	ra,136(sp)
    80007250:	06913c23          	sd	s1,120(sp)
    80007254:	07213823          	sd	s2,112(sp)
    80007258:	07413023          	sd	s4,96(sp)
    8000725c:	05513c23          	sd	s5,88(sp)
    80007260:	05613823          	sd	s6,80(sp)
    80007264:	05713423          	sd	s7,72(sp)
    80007268:	03913c23          	sd	s9,56(sp)
    8000726c:	03a13823          	sd	s10,48(sp)
    80007270:	03b13423          	sd	s11,40(sp)
    80007274:	00004317          	auipc	t1,0x4
    80007278:	75c30313          	addi	t1,t1,1884 # 8000b9d0 <pr>
    8000727c:	01832c03          	lw	s8,24(t1)
    80007280:	00b43423          	sd	a1,8(s0)
    80007284:	00c43823          	sd	a2,16(s0)
    80007288:	00d43c23          	sd	a3,24(s0)
    8000728c:	02e43023          	sd	a4,32(s0)
    80007290:	02f43423          	sd	a5,40(s0)
    80007294:	03043823          	sd	a6,48(s0)
    80007298:	03143c23          	sd	a7,56(s0)
    8000729c:	00050993          	mv	s3,a0
    800072a0:	4a0c1663          	bnez	s8,8000774c <__printf+0x514>
    800072a4:	60098c63          	beqz	s3,800078bc <__printf+0x684>
    800072a8:	0009c503          	lbu	a0,0(s3)
    800072ac:	00840793          	addi	a5,s0,8
    800072b0:	f6f43c23          	sd	a5,-136(s0)
    800072b4:	00000493          	li	s1,0
    800072b8:	22050063          	beqz	a0,800074d8 <__printf+0x2a0>
    800072bc:	00002a37          	lui	s4,0x2
    800072c0:	00018ab7          	lui	s5,0x18
    800072c4:	000f4b37          	lui	s6,0xf4
    800072c8:	00989bb7          	lui	s7,0x989
    800072cc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800072d0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800072d4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800072d8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800072dc:	00148c9b          	addiw	s9,s1,1
    800072e0:	02500793          	li	a5,37
    800072e4:	01998933          	add	s2,s3,s9
    800072e8:	38f51263          	bne	a0,a5,8000766c <__printf+0x434>
    800072ec:	00094783          	lbu	a5,0(s2)
    800072f0:	00078c9b          	sext.w	s9,a5
    800072f4:	1e078263          	beqz	a5,800074d8 <__printf+0x2a0>
    800072f8:	0024849b          	addiw	s1,s1,2
    800072fc:	07000713          	li	a4,112
    80007300:	00998933          	add	s2,s3,s1
    80007304:	38e78a63          	beq	a5,a4,80007698 <__printf+0x460>
    80007308:	20f76863          	bltu	a4,a5,80007518 <__printf+0x2e0>
    8000730c:	42a78863          	beq	a5,a0,8000773c <__printf+0x504>
    80007310:	06400713          	li	a4,100
    80007314:	40e79663          	bne	a5,a4,80007720 <__printf+0x4e8>
    80007318:	f7843783          	ld	a5,-136(s0)
    8000731c:	0007a603          	lw	a2,0(a5)
    80007320:	00878793          	addi	a5,a5,8
    80007324:	f6f43c23          	sd	a5,-136(s0)
    80007328:	42064a63          	bltz	a2,8000775c <__printf+0x524>
    8000732c:	00a00713          	li	a4,10
    80007330:	02e677bb          	remuw	a5,a2,a4
    80007334:	00002d97          	auipc	s11,0x2
    80007338:	424d8d93          	addi	s11,s11,1060 # 80009758 <digits>
    8000733c:	00900593          	li	a1,9
    80007340:	0006051b          	sext.w	a0,a2
    80007344:	00000c93          	li	s9,0
    80007348:	02079793          	slli	a5,a5,0x20
    8000734c:	0207d793          	srli	a5,a5,0x20
    80007350:	00fd87b3          	add	a5,s11,a5
    80007354:	0007c783          	lbu	a5,0(a5)
    80007358:	02e656bb          	divuw	a3,a2,a4
    8000735c:	f8f40023          	sb	a5,-128(s0)
    80007360:	14c5d863          	bge	a1,a2,800074b0 <__printf+0x278>
    80007364:	06300593          	li	a1,99
    80007368:	00100c93          	li	s9,1
    8000736c:	02e6f7bb          	remuw	a5,a3,a4
    80007370:	02079793          	slli	a5,a5,0x20
    80007374:	0207d793          	srli	a5,a5,0x20
    80007378:	00fd87b3          	add	a5,s11,a5
    8000737c:	0007c783          	lbu	a5,0(a5)
    80007380:	02e6d73b          	divuw	a4,a3,a4
    80007384:	f8f400a3          	sb	a5,-127(s0)
    80007388:	12a5f463          	bgeu	a1,a0,800074b0 <__printf+0x278>
    8000738c:	00a00693          	li	a3,10
    80007390:	00900593          	li	a1,9
    80007394:	02d777bb          	remuw	a5,a4,a3
    80007398:	02079793          	slli	a5,a5,0x20
    8000739c:	0207d793          	srli	a5,a5,0x20
    800073a0:	00fd87b3          	add	a5,s11,a5
    800073a4:	0007c503          	lbu	a0,0(a5)
    800073a8:	02d757bb          	divuw	a5,a4,a3
    800073ac:	f8a40123          	sb	a0,-126(s0)
    800073b0:	48e5f263          	bgeu	a1,a4,80007834 <__printf+0x5fc>
    800073b4:	06300513          	li	a0,99
    800073b8:	02d7f5bb          	remuw	a1,a5,a3
    800073bc:	02059593          	slli	a1,a1,0x20
    800073c0:	0205d593          	srli	a1,a1,0x20
    800073c4:	00bd85b3          	add	a1,s11,a1
    800073c8:	0005c583          	lbu	a1,0(a1)
    800073cc:	02d7d7bb          	divuw	a5,a5,a3
    800073d0:	f8b401a3          	sb	a1,-125(s0)
    800073d4:	48e57263          	bgeu	a0,a4,80007858 <__printf+0x620>
    800073d8:	3e700513          	li	a0,999
    800073dc:	02d7f5bb          	remuw	a1,a5,a3
    800073e0:	02059593          	slli	a1,a1,0x20
    800073e4:	0205d593          	srli	a1,a1,0x20
    800073e8:	00bd85b3          	add	a1,s11,a1
    800073ec:	0005c583          	lbu	a1,0(a1)
    800073f0:	02d7d7bb          	divuw	a5,a5,a3
    800073f4:	f8b40223          	sb	a1,-124(s0)
    800073f8:	46e57663          	bgeu	a0,a4,80007864 <__printf+0x62c>
    800073fc:	02d7f5bb          	remuw	a1,a5,a3
    80007400:	02059593          	slli	a1,a1,0x20
    80007404:	0205d593          	srli	a1,a1,0x20
    80007408:	00bd85b3          	add	a1,s11,a1
    8000740c:	0005c583          	lbu	a1,0(a1)
    80007410:	02d7d7bb          	divuw	a5,a5,a3
    80007414:	f8b402a3          	sb	a1,-123(s0)
    80007418:	46ea7863          	bgeu	s4,a4,80007888 <__printf+0x650>
    8000741c:	02d7f5bb          	remuw	a1,a5,a3
    80007420:	02059593          	slli	a1,a1,0x20
    80007424:	0205d593          	srli	a1,a1,0x20
    80007428:	00bd85b3          	add	a1,s11,a1
    8000742c:	0005c583          	lbu	a1,0(a1)
    80007430:	02d7d7bb          	divuw	a5,a5,a3
    80007434:	f8b40323          	sb	a1,-122(s0)
    80007438:	3eeaf863          	bgeu	s5,a4,80007828 <__printf+0x5f0>
    8000743c:	02d7f5bb          	remuw	a1,a5,a3
    80007440:	02059593          	slli	a1,a1,0x20
    80007444:	0205d593          	srli	a1,a1,0x20
    80007448:	00bd85b3          	add	a1,s11,a1
    8000744c:	0005c583          	lbu	a1,0(a1)
    80007450:	02d7d7bb          	divuw	a5,a5,a3
    80007454:	f8b403a3          	sb	a1,-121(s0)
    80007458:	42eb7e63          	bgeu	s6,a4,80007894 <__printf+0x65c>
    8000745c:	02d7f5bb          	remuw	a1,a5,a3
    80007460:	02059593          	slli	a1,a1,0x20
    80007464:	0205d593          	srli	a1,a1,0x20
    80007468:	00bd85b3          	add	a1,s11,a1
    8000746c:	0005c583          	lbu	a1,0(a1)
    80007470:	02d7d7bb          	divuw	a5,a5,a3
    80007474:	f8b40423          	sb	a1,-120(s0)
    80007478:	42ebfc63          	bgeu	s7,a4,800078b0 <__printf+0x678>
    8000747c:	02079793          	slli	a5,a5,0x20
    80007480:	0207d793          	srli	a5,a5,0x20
    80007484:	00fd8db3          	add	s11,s11,a5
    80007488:	000dc703          	lbu	a4,0(s11)
    8000748c:	00a00793          	li	a5,10
    80007490:	00900c93          	li	s9,9
    80007494:	f8e404a3          	sb	a4,-119(s0)
    80007498:	00065c63          	bgez	a2,800074b0 <__printf+0x278>
    8000749c:	f9040713          	addi	a4,s0,-112
    800074a0:	00f70733          	add	a4,a4,a5
    800074a4:	02d00693          	li	a3,45
    800074a8:	fed70823          	sb	a3,-16(a4)
    800074ac:	00078c93          	mv	s9,a5
    800074b0:	f8040793          	addi	a5,s0,-128
    800074b4:	01978cb3          	add	s9,a5,s9
    800074b8:	f7f40d13          	addi	s10,s0,-129
    800074bc:	000cc503          	lbu	a0,0(s9)
    800074c0:	fffc8c93          	addi	s9,s9,-1
    800074c4:	00000097          	auipc	ra,0x0
    800074c8:	b90080e7          	jalr	-1136(ra) # 80007054 <consputc>
    800074cc:	ffac98e3          	bne	s9,s10,800074bc <__printf+0x284>
    800074d0:	00094503          	lbu	a0,0(s2)
    800074d4:	e00514e3          	bnez	a0,800072dc <__printf+0xa4>
    800074d8:	1a0c1663          	bnez	s8,80007684 <__printf+0x44c>
    800074dc:	08813083          	ld	ra,136(sp)
    800074e0:	08013403          	ld	s0,128(sp)
    800074e4:	07813483          	ld	s1,120(sp)
    800074e8:	07013903          	ld	s2,112(sp)
    800074ec:	06813983          	ld	s3,104(sp)
    800074f0:	06013a03          	ld	s4,96(sp)
    800074f4:	05813a83          	ld	s5,88(sp)
    800074f8:	05013b03          	ld	s6,80(sp)
    800074fc:	04813b83          	ld	s7,72(sp)
    80007500:	04013c03          	ld	s8,64(sp)
    80007504:	03813c83          	ld	s9,56(sp)
    80007508:	03013d03          	ld	s10,48(sp)
    8000750c:	02813d83          	ld	s11,40(sp)
    80007510:	0d010113          	addi	sp,sp,208
    80007514:	00008067          	ret
    80007518:	07300713          	li	a4,115
    8000751c:	1ce78a63          	beq	a5,a4,800076f0 <__printf+0x4b8>
    80007520:	07800713          	li	a4,120
    80007524:	1ee79e63          	bne	a5,a4,80007720 <__printf+0x4e8>
    80007528:	f7843783          	ld	a5,-136(s0)
    8000752c:	0007a703          	lw	a4,0(a5)
    80007530:	00878793          	addi	a5,a5,8
    80007534:	f6f43c23          	sd	a5,-136(s0)
    80007538:	28074263          	bltz	a4,800077bc <__printf+0x584>
    8000753c:	00002d97          	auipc	s11,0x2
    80007540:	21cd8d93          	addi	s11,s11,540 # 80009758 <digits>
    80007544:	00f77793          	andi	a5,a4,15
    80007548:	00fd87b3          	add	a5,s11,a5
    8000754c:	0007c683          	lbu	a3,0(a5)
    80007550:	00f00613          	li	a2,15
    80007554:	0007079b          	sext.w	a5,a4
    80007558:	f8d40023          	sb	a3,-128(s0)
    8000755c:	0047559b          	srliw	a1,a4,0x4
    80007560:	0047569b          	srliw	a3,a4,0x4
    80007564:	00000c93          	li	s9,0
    80007568:	0ee65063          	bge	a2,a4,80007648 <__printf+0x410>
    8000756c:	00f6f693          	andi	a3,a3,15
    80007570:	00dd86b3          	add	a3,s11,a3
    80007574:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007578:	0087d79b          	srliw	a5,a5,0x8
    8000757c:	00100c93          	li	s9,1
    80007580:	f8d400a3          	sb	a3,-127(s0)
    80007584:	0cb67263          	bgeu	a2,a1,80007648 <__printf+0x410>
    80007588:	00f7f693          	andi	a3,a5,15
    8000758c:	00dd86b3          	add	a3,s11,a3
    80007590:	0006c583          	lbu	a1,0(a3)
    80007594:	00f00613          	li	a2,15
    80007598:	0047d69b          	srliw	a3,a5,0x4
    8000759c:	f8b40123          	sb	a1,-126(s0)
    800075a0:	0047d593          	srli	a1,a5,0x4
    800075a4:	28f67e63          	bgeu	a2,a5,80007840 <__printf+0x608>
    800075a8:	00f6f693          	andi	a3,a3,15
    800075ac:	00dd86b3          	add	a3,s11,a3
    800075b0:	0006c503          	lbu	a0,0(a3)
    800075b4:	0087d813          	srli	a6,a5,0x8
    800075b8:	0087d69b          	srliw	a3,a5,0x8
    800075bc:	f8a401a3          	sb	a0,-125(s0)
    800075c0:	28b67663          	bgeu	a2,a1,8000784c <__printf+0x614>
    800075c4:	00f6f693          	andi	a3,a3,15
    800075c8:	00dd86b3          	add	a3,s11,a3
    800075cc:	0006c583          	lbu	a1,0(a3)
    800075d0:	00c7d513          	srli	a0,a5,0xc
    800075d4:	00c7d69b          	srliw	a3,a5,0xc
    800075d8:	f8b40223          	sb	a1,-124(s0)
    800075dc:	29067a63          	bgeu	a2,a6,80007870 <__printf+0x638>
    800075e0:	00f6f693          	andi	a3,a3,15
    800075e4:	00dd86b3          	add	a3,s11,a3
    800075e8:	0006c583          	lbu	a1,0(a3)
    800075ec:	0107d813          	srli	a6,a5,0x10
    800075f0:	0107d69b          	srliw	a3,a5,0x10
    800075f4:	f8b402a3          	sb	a1,-123(s0)
    800075f8:	28a67263          	bgeu	a2,a0,8000787c <__printf+0x644>
    800075fc:	00f6f693          	andi	a3,a3,15
    80007600:	00dd86b3          	add	a3,s11,a3
    80007604:	0006c683          	lbu	a3,0(a3)
    80007608:	0147d79b          	srliw	a5,a5,0x14
    8000760c:	f8d40323          	sb	a3,-122(s0)
    80007610:	21067663          	bgeu	a2,a6,8000781c <__printf+0x5e4>
    80007614:	02079793          	slli	a5,a5,0x20
    80007618:	0207d793          	srli	a5,a5,0x20
    8000761c:	00fd8db3          	add	s11,s11,a5
    80007620:	000dc683          	lbu	a3,0(s11)
    80007624:	00800793          	li	a5,8
    80007628:	00700c93          	li	s9,7
    8000762c:	f8d403a3          	sb	a3,-121(s0)
    80007630:	00075c63          	bgez	a4,80007648 <__printf+0x410>
    80007634:	f9040713          	addi	a4,s0,-112
    80007638:	00f70733          	add	a4,a4,a5
    8000763c:	02d00693          	li	a3,45
    80007640:	fed70823          	sb	a3,-16(a4)
    80007644:	00078c93          	mv	s9,a5
    80007648:	f8040793          	addi	a5,s0,-128
    8000764c:	01978cb3          	add	s9,a5,s9
    80007650:	f7f40d13          	addi	s10,s0,-129
    80007654:	000cc503          	lbu	a0,0(s9)
    80007658:	fffc8c93          	addi	s9,s9,-1
    8000765c:	00000097          	auipc	ra,0x0
    80007660:	9f8080e7          	jalr	-1544(ra) # 80007054 <consputc>
    80007664:	ff9d18e3          	bne	s10,s9,80007654 <__printf+0x41c>
    80007668:	0100006f          	j	80007678 <__printf+0x440>
    8000766c:	00000097          	auipc	ra,0x0
    80007670:	9e8080e7          	jalr	-1560(ra) # 80007054 <consputc>
    80007674:	000c8493          	mv	s1,s9
    80007678:	00094503          	lbu	a0,0(s2)
    8000767c:	c60510e3          	bnez	a0,800072dc <__printf+0xa4>
    80007680:	e40c0ee3          	beqz	s8,800074dc <__printf+0x2a4>
    80007684:	00004517          	auipc	a0,0x4
    80007688:	34c50513          	addi	a0,a0,844 # 8000b9d0 <pr>
    8000768c:	00001097          	auipc	ra,0x1
    80007690:	94c080e7          	jalr	-1716(ra) # 80007fd8 <release>
    80007694:	e49ff06f          	j	800074dc <__printf+0x2a4>
    80007698:	f7843783          	ld	a5,-136(s0)
    8000769c:	03000513          	li	a0,48
    800076a0:	01000d13          	li	s10,16
    800076a4:	00878713          	addi	a4,a5,8
    800076a8:	0007bc83          	ld	s9,0(a5)
    800076ac:	f6e43c23          	sd	a4,-136(s0)
    800076b0:	00000097          	auipc	ra,0x0
    800076b4:	9a4080e7          	jalr	-1628(ra) # 80007054 <consputc>
    800076b8:	07800513          	li	a0,120
    800076bc:	00000097          	auipc	ra,0x0
    800076c0:	998080e7          	jalr	-1640(ra) # 80007054 <consputc>
    800076c4:	00002d97          	auipc	s11,0x2
    800076c8:	094d8d93          	addi	s11,s11,148 # 80009758 <digits>
    800076cc:	03ccd793          	srli	a5,s9,0x3c
    800076d0:	00fd87b3          	add	a5,s11,a5
    800076d4:	0007c503          	lbu	a0,0(a5)
    800076d8:	fffd0d1b          	addiw	s10,s10,-1
    800076dc:	004c9c93          	slli	s9,s9,0x4
    800076e0:	00000097          	auipc	ra,0x0
    800076e4:	974080e7          	jalr	-1676(ra) # 80007054 <consputc>
    800076e8:	fe0d12e3          	bnez	s10,800076cc <__printf+0x494>
    800076ec:	f8dff06f          	j	80007678 <__printf+0x440>
    800076f0:	f7843783          	ld	a5,-136(s0)
    800076f4:	0007bc83          	ld	s9,0(a5)
    800076f8:	00878793          	addi	a5,a5,8
    800076fc:	f6f43c23          	sd	a5,-136(s0)
    80007700:	000c9a63          	bnez	s9,80007714 <__printf+0x4dc>
    80007704:	1080006f          	j	8000780c <__printf+0x5d4>
    80007708:	001c8c93          	addi	s9,s9,1
    8000770c:	00000097          	auipc	ra,0x0
    80007710:	948080e7          	jalr	-1720(ra) # 80007054 <consputc>
    80007714:	000cc503          	lbu	a0,0(s9)
    80007718:	fe0518e3          	bnez	a0,80007708 <__printf+0x4d0>
    8000771c:	f5dff06f          	j	80007678 <__printf+0x440>
    80007720:	02500513          	li	a0,37
    80007724:	00000097          	auipc	ra,0x0
    80007728:	930080e7          	jalr	-1744(ra) # 80007054 <consputc>
    8000772c:	000c8513          	mv	a0,s9
    80007730:	00000097          	auipc	ra,0x0
    80007734:	924080e7          	jalr	-1756(ra) # 80007054 <consputc>
    80007738:	f41ff06f          	j	80007678 <__printf+0x440>
    8000773c:	02500513          	li	a0,37
    80007740:	00000097          	auipc	ra,0x0
    80007744:	914080e7          	jalr	-1772(ra) # 80007054 <consputc>
    80007748:	f31ff06f          	j	80007678 <__printf+0x440>
    8000774c:	00030513          	mv	a0,t1
    80007750:	00000097          	auipc	ra,0x0
    80007754:	7bc080e7          	jalr	1980(ra) # 80007f0c <acquire>
    80007758:	b4dff06f          	j	800072a4 <__printf+0x6c>
    8000775c:	40c0053b          	negw	a0,a2
    80007760:	00a00713          	li	a4,10
    80007764:	02e576bb          	remuw	a3,a0,a4
    80007768:	00002d97          	auipc	s11,0x2
    8000776c:	ff0d8d93          	addi	s11,s11,-16 # 80009758 <digits>
    80007770:	ff700593          	li	a1,-9
    80007774:	02069693          	slli	a3,a3,0x20
    80007778:	0206d693          	srli	a3,a3,0x20
    8000777c:	00dd86b3          	add	a3,s11,a3
    80007780:	0006c683          	lbu	a3,0(a3)
    80007784:	02e557bb          	divuw	a5,a0,a4
    80007788:	f8d40023          	sb	a3,-128(s0)
    8000778c:	10b65e63          	bge	a2,a1,800078a8 <__printf+0x670>
    80007790:	06300593          	li	a1,99
    80007794:	02e7f6bb          	remuw	a3,a5,a4
    80007798:	02069693          	slli	a3,a3,0x20
    8000779c:	0206d693          	srli	a3,a3,0x20
    800077a0:	00dd86b3          	add	a3,s11,a3
    800077a4:	0006c683          	lbu	a3,0(a3)
    800077a8:	02e7d73b          	divuw	a4,a5,a4
    800077ac:	00200793          	li	a5,2
    800077b0:	f8d400a3          	sb	a3,-127(s0)
    800077b4:	bca5ece3          	bltu	a1,a0,8000738c <__printf+0x154>
    800077b8:	ce5ff06f          	j	8000749c <__printf+0x264>
    800077bc:	40e007bb          	negw	a5,a4
    800077c0:	00002d97          	auipc	s11,0x2
    800077c4:	f98d8d93          	addi	s11,s11,-104 # 80009758 <digits>
    800077c8:	00f7f693          	andi	a3,a5,15
    800077cc:	00dd86b3          	add	a3,s11,a3
    800077d0:	0006c583          	lbu	a1,0(a3)
    800077d4:	ff100613          	li	a2,-15
    800077d8:	0047d69b          	srliw	a3,a5,0x4
    800077dc:	f8b40023          	sb	a1,-128(s0)
    800077e0:	0047d59b          	srliw	a1,a5,0x4
    800077e4:	0ac75e63          	bge	a4,a2,800078a0 <__printf+0x668>
    800077e8:	00f6f693          	andi	a3,a3,15
    800077ec:	00dd86b3          	add	a3,s11,a3
    800077f0:	0006c603          	lbu	a2,0(a3)
    800077f4:	00f00693          	li	a3,15
    800077f8:	0087d79b          	srliw	a5,a5,0x8
    800077fc:	f8c400a3          	sb	a2,-127(s0)
    80007800:	d8b6e4e3          	bltu	a3,a1,80007588 <__printf+0x350>
    80007804:	00200793          	li	a5,2
    80007808:	e2dff06f          	j	80007634 <__printf+0x3fc>
    8000780c:	00002c97          	auipc	s9,0x2
    80007810:	f2cc8c93          	addi	s9,s9,-212 # 80009738 <_ZZ12printIntegermE6digits+0x148>
    80007814:	02800513          	li	a0,40
    80007818:	ef1ff06f          	j	80007708 <__printf+0x4d0>
    8000781c:	00700793          	li	a5,7
    80007820:	00600c93          	li	s9,6
    80007824:	e0dff06f          	j	80007630 <__printf+0x3f8>
    80007828:	00700793          	li	a5,7
    8000782c:	00600c93          	li	s9,6
    80007830:	c69ff06f          	j	80007498 <__printf+0x260>
    80007834:	00300793          	li	a5,3
    80007838:	00200c93          	li	s9,2
    8000783c:	c5dff06f          	j	80007498 <__printf+0x260>
    80007840:	00300793          	li	a5,3
    80007844:	00200c93          	li	s9,2
    80007848:	de9ff06f          	j	80007630 <__printf+0x3f8>
    8000784c:	00400793          	li	a5,4
    80007850:	00300c93          	li	s9,3
    80007854:	dddff06f          	j	80007630 <__printf+0x3f8>
    80007858:	00400793          	li	a5,4
    8000785c:	00300c93          	li	s9,3
    80007860:	c39ff06f          	j	80007498 <__printf+0x260>
    80007864:	00500793          	li	a5,5
    80007868:	00400c93          	li	s9,4
    8000786c:	c2dff06f          	j	80007498 <__printf+0x260>
    80007870:	00500793          	li	a5,5
    80007874:	00400c93          	li	s9,4
    80007878:	db9ff06f          	j	80007630 <__printf+0x3f8>
    8000787c:	00600793          	li	a5,6
    80007880:	00500c93          	li	s9,5
    80007884:	dadff06f          	j	80007630 <__printf+0x3f8>
    80007888:	00600793          	li	a5,6
    8000788c:	00500c93          	li	s9,5
    80007890:	c09ff06f          	j	80007498 <__printf+0x260>
    80007894:	00800793          	li	a5,8
    80007898:	00700c93          	li	s9,7
    8000789c:	bfdff06f          	j	80007498 <__printf+0x260>
    800078a0:	00100793          	li	a5,1
    800078a4:	d91ff06f          	j	80007634 <__printf+0x3fc>
    800078a8:	00100793          	li	a5,1
    800078ac:	bf1ff06f          	j	8000749c <__printf+0x264>
    800078b0:	00900793          	li	a5,9
    800078b4:	00800c93          	li	s9,8
    800078b8:	be1ff06f          	j	80007498 <__printf+0x260>
    800078bc:	00002517          	auipc	a0,0x2
    800078c0:	e8450513          	addi	a0,a0,-380 # 80009740 <_ZZ12printIntegermE6digits+0x150>
    800078c4:	00000097          	auipc	ra,0x0
    800078c8:	918080e7          	jalr	-1768(ra) # 800071dc <panic>

00000000800078cc <printfinit>:
    800078cc:	fe010113          	addi	sp,sp,-32
    800078d0:	00813823          	sd	s0,16(sp)
    800078d4:	00913423          	sd	s1,8(sp)
    800078d8:	00113c23          	sd	ra,24(sp)
    800078dc:	02010413          	addi	s0,sp,32
    800078e0:	00004497          	auipc	s1,0x4
    800078e4:	0f048493          	addi	s1,s1,240 # 8000b9d0 <pr>
    800078e8:	00048513          	mv	a0,s1
    800078ec:	00002597          	auipc	a1,0x2
    800078f0:	e6458593          	addi	a1,a1,-412 # 80009750 <_ZZ12printIntegermE6digits+0x160>
    800078f4:	00000097          	auipc	ra,0x0
    800078f8:	5f4080e7          	jalr	1524(ra) # 80007ee8 <initlock>
    800078fc:	01813083          	ld	ra,24(sp)
    80007900:	01013403          	ld	s0,16(sp)
    80007904:	0004ac23          	sw	zero,24(s1)
    80007908:	00813483          	ld	s1,8(sp)
    8000790c:	02010113          	addi	sp,sp,32
    80007910:	00008067          	ret

0000000080007914 <uartinit>:
    80007914:	ff010113          	addi	sp,sp,-16
    80007918:	00813423          	sd	s0,8(sp)
    8000791c:	01010413          	addi	s0,sp,16
    80007920:	100007b7          	lui	a5,0x10000
    80007924:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007928:	f8000713          	li	a4,-128
    8000792c:	00e781a3          	sb	a4,3(a5)
    80007930:	00300713          	li	a4,3
    80007934:	00e78023          	sb	a4,0(a5)
    80007938:	000780a3          	sb	zero,1(a5)
    8000793c:	00e781a3          	sb	a4,3(a5)
    80007940:	00700693          	li	a3,7
    80007944:	00d78123          	sb	a3,2(a5)
    80007948:	00e780a3          	sb	a4,1(a5)
    8000794c:	00813403          	ld	s0,8(sp)
    80007950:	01010113          	addi	sp,sp,16
    80007954:	00008067          	ret

0000000080007958 <uartputc>:
    80007958:	00003797          	auipc	a5,0x3
    8000795c:	df07a783          	lw	a5,-528(a5) # 8000a748 <panicked>
    80007960:	00078463          	beqz	a5,80007968 <uartputc+0x10>
    80007964:	0000006f          	j	80007964 <uartputc+0xc>
    80007968:	fd010113          	addi	sp,sp,-48
    8000796c:	02813023          	sd	s0,32(sp)
    80007970:	00913c23          	sd	s1,24(sp)
    80007974:	01213823          	sd	s2,16(sp)
    80007978:	01313423          	sd	s3,8(sp)
    8000797c:	02113423          	sd	ra,40(sp)
    80007980:	03010413          	addi	s0,sp,48
    80007984:	00003917          	auipc	s2,0x3
    80007988:	dcc90913          	addi	s2,s2,-564 # 8000a750 <uart_tx_r>
    8000798c:	00093783          	ld	a5,0(s2)
    80007990:	00003497          	auipc	s1,0x3
    80007994:	dc848493          	addi	s1,s1,-568 # 8000a758 <uart_tx_w>
    80007998:	0004b703          	ld	a4,0(s1)
    8000799c:	02078693          	addi	a3,a5,32
    800079a0:	00050993          	mv	s3,a0
    800079a4:	02e69c63          	bne	a3,a4,800079dc <uartputc+0x84>
    800079a8:	00001097          	auipc	ra,0x1
    800079ac:	834080e7          	jalr	-1996(ra) # 800081dc <push_on>
    800079b0:	00093783          	ld	a5,0(s2)
    800079b4:	0004b703          	ld	a4,0(s1)
    800079b8:	02078793          	addi	a5,a5,32
    800079bc:	00e79463          	bne	a5,a4,800079c4 <uartputc+0x6c>
    800079c0:	0000006f          	j	800079c0 <uartputc+0x68>
    800079c4:	00001097          	auipc	ra,0x1
    800079c8:	88c080e7          	jalr	-1908(ra) # 80008250 <pop_on>
    800079cc:	00093783          	ld	a5,0(s2)
    800079d0:	0004b703          	ld	a4,0(s1)
    800079d4:	02078693          	addi	a3,a5,32
    800079d8:	fce688e3          	beq	a3,a4,800079a8 <uartputc+0x50>
    800079dc:	01f77693          	andi	a3,a4,31
    800079e0:	00004597          	auipc	a1,0x4
    800079e4:	01058593          	addi	a1,a1,16 # 8000b9f0 <uart_tx_buf>
    800079e8:	00d586b3          	add	a3,a1,a3
    800079ec:	00170713          	addi	a4,a4,1
    800079f0:	01368023          	sb	s3,0(a3)
    800079f4:	00e4b023          	sd	a4,0(s1)
    800079f8:	10000637          	lui	a2,0x10000
    800079fc:	02f71063          	bne	a4,a5,80007a1c <uartputc+0xc4>
    80007a00:	0340006f          	j	80007a34 <uartputc+0xdc>
    80007a04:	00074703          	lbu	a4,0(a4)
    80007a08:	00f93023          	sd	a5,0(s2)
    80007a0c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007a10:	00093783          	ld	a5,0(s2)
    80007a14:	0004b703          	ld	a4,0(s1)
    80007a18:	00f70e63          	beq	a4,a5,80007a34 <uartputc+0xdc>
    80007a1c:	00564683          	lbu	a3,5(a2)
    80007a20:	01f7f713          	andi	a4,a5,31
    80007a24:	00e58733          	add	a4,a1,a4
    80007a28:	0206f693          	andi	a3,a3,32
    80007a2c:	00178793          	addi	a5,a5,1
    80007a30:	fc069ae3          	bnez	a3,80007a04 <uartputc+0xac>
    80007a34:	02813083          	ld	ra,40(sp)
    80007a38:	02013403          	ld	s0,32(sp)
    80007a3c:	01813483          	ld	s1,24(sp)
    80007a40:	01013903          	ld	s2,16(sp)
    80007a44:	00813983          	ld	s3,8(sp)
    80007a48:	03010113          	addi	sp,sp,48
    80007a4c:	00008067          	ret

0000000080007a50 <uartputc_sync>:
    80007a50:	ff010113          	addi	sp,sp,-16
    80007a54:	00813423          	sd	s0,8(sp)
    80007a58:	01010413          	addi	s0,sp,16
    80007a5c:	00003717          	auipc	a4,0x3
    80007a60:	cec72703          	lw	a4,-788(a4) # 8000a748 <panicked>
    80007a64:	02071663          	bnez	a4,80007a90 <uartputc_sync+0x40>
    80007a68:	00050793          	mv	a5,a0
    80007a6c:	100006b7          	lui	a3,0x10000
    80007a70:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007a74:	02077713          	andi	a4,a4,32
    80007a78:	fe070ce3          	beqz	a4,80007a70 <uartputc_sync+0x20>
    80007a7c:	0ff7f793          	andi	a5,a5,255
    80007a80:	00f68023          	sb	a5,0(a3)
    80007a84:	00813403          	ld	s0,8(sp)
    80007a88:	01010113          	addi	sp,sp,16
    80007a8c:	00008067          	ret
    80007a90:	0000006f          	j	80007a90 <uartputc_sync+0x40>

0000000080007a94 <uartstart>:
    80007a94:	ff010113          	addi	sp,sp,-16
    80007a98:	00813423          	sd	s0,8(sp)
    80007a9c:	01010413          	addi	s0,sp,16
    80007aa0:	00003617          	auipc	a2,0x3
    80007aa4:	cb060613          	addi	a2,a2,-848 # 8000a750 <uart_tx_r>
    80007aa8:	00003517          	auipc	a0,0x3
    80007aac:	cb050513          	addi	a0,a0,-848 # 8000a758 <uart_tx_w>
    80007ab0:	00063783          	ld	a5,0(a2)
    80007ab4:	00053703          	ld	a4,0(a0)
    80007ab8:	04f70263          	beq	a4,a5,80007afc <uartstart+0x68>
    80007abc:	100005b7          	lui	a1,0x10000
    80007ac0:	00004817          	auipc	a6,0x4
    80007ac4:	f3080813          	addi	a6,a6,-208 # 8000b9f0 <uart_tx_buf>
    80007ac8:	01c0006f          	j	80007ae4 <uartstart+0x50>
    80007acc:	0006c703          	lbu	a4,0(a3)
    80007ad0:	00f63023          	sd	a5,0(a2)
    80007ad4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007ad8:	00063783          	ld	a5,0(a2)
    80007adc:	00053703          	ld	a4,0(a0)
    80007ae0:	00f70e63          	beq	a4,a5,80007afc <uartstart+0x68>
    80007ae4:	01f7f713          	andi	a4,a5,31
    80007ae8:	00e806b3          	add	a3,a6,a4
    80007aec:	0055c703          	lbu	a4,5(a1)
    80007af0:	00178793          	addi	a5,a5,1
    80007af4:	02077713          	andi	a4,a4,32
    80007af8:	fc071ae3          	bnez	a4,80007acc <uartstart+0x38>
    80007afc:	00813403          	ld	s0,8(sp)
    80007b00:	01010113          	addi	sp,sp,16
    80007b04:	00008067          	ret

0000000080007b08 <uartgetc>:
    80007b08:	ff010113          	addi	sp,sp,-16
    80007b0c:	00813423          	sd	s0,8(sp)
    80007b10:	01010413          	addi	s0,sp,16
    80007b14:	10000737          	lui	a4,0x10000
    80007b18:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007b1c:	0017f793          	andi	a5,a5,1
    80007b20:	00078c63          	beqz	a5,80007b38 <uartgetc+0x30>
    80007b24:	00074503          	lbu	a0,0(a4)
    80007b28:	0ff57513          	andi	a0,a0,255
    80007b2c:	00813403          	ld	s0,8(sp)
    80007b30:	01010113          	addi	sp,sp,16
    80007b34:	00008067          	ret
    80007b38:	fff00513          	li	a0,-1
    80007b3c:	ff1ff06f          	j	80007b2c <uartgetc+0x24>

0000000080007b40 <uartintr>:
    80007b40:	100007b7          	lui	a5,0x10000
    80007b44:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007b48:	0017f793          	andi	a5,a5,1
    80007b4c:	0a078463          	beqz	a5,80007bf4 <uartintr+0xb4>
    80007b50:	fe010113          	addi	sp,sp,-32
    80007b54:	00813823          	sd	s0,16(sp)
    80007b58:	00913423          	sd	s1,8(sp)
    80007b5c:	00113c23          	sd	ra,24(sp)
    80007b60:	02010413          	addi	s0,sp,32
    80007b64:	100004b7          	lui	s1,0x10000
    80007b68:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007b6c:	0ff57513          	andi	a0,a0,255
    80007b70:	fffff097          	auipc	ra,0xfffff
    80007b74:	534080e7          	jalr	1332(ra) # 800070a4 <consoleintr>
    80007b78:	0054c783          	lbu	a5,5(s1)
    80007b7c:	0017f793          	andi	a5,a5,1
    80007b80:	fe0794e3          	bnez	a5,80007b68 <uartintr+0x28>
    80007b84:	00003617          	auipc	a2,0x3
    80007b88:	bcc60613          	addi	a2,a2,-1076 # 8000a750 <uart_tx_r>
    80007b8c:	00003517          	auipc	a0,0x3
    80007b90:	bcc50513          	addi	a0,a0,-1076 # 8000a758 <uart_tx_w>
    80007b94:	00063783          	ld	a5,0(a2)
    80007b98:	00053703          	ld	a4,0(a0)
    80007b9c:	04f70263          	beq	a4,a5,80007be0 <uartintr+0xa0>
    80007ba0:	100005b7          	lui	a1,0x10000
    80007ba4:	00004817          	auipc	a6,0x4
    80007ba8:	e4c80813          	addi	a6,a6,-436 # 8000b9f0 <uart_tx_buf>
    80007bac:	01c0006f          	j	80007bc8 <uartintr+0x88>
    80007bb0:	0006c703          	lbu	a4,0(a3)
    80007bb4:	00f63023          	sd	a5,0(a2)
    80007bb8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007bbc:	00063783          	ld	a5,0(a2)
    80007bc0:	00053703          	ld	a4,0(a0)
    80007bc4:	00f70e63          	beq	a4,a5,80007be0 <uartintr+0xa0>
    80007bc8:	01f7f713          	andi	a4,a5,31
    80007bcc:	00e806b3          	add	a3,a6,a4
    80007bd0:	0055c703          	lbu	a4,5(a1)
    80007bd4:	00178793          	addi	a5,a5,1
    80007bd8:	02077713          	andi	a4,a4,32
    80007bdc:	fc071ae3          	bnez	a4,80007bb0 <uartintr+0x70>
    80007be0:	01813083          	ld	ra,24(sp)
    80007be4:	01013403          	ld	s0,16(sp)
    80007be8:	00813483          	ld	s1,8(sp)
    80007bec:	02010113          	addi	sp,sp,32
    80007bf0:	00008067          	ret
    80007bf4:	00003617          	auipc	a2,0x3
    80007bf8:	b5c60613          	addi	a2,a2,-1188 # 8000a750 <uart_tx_r>
    80007bfc:	00003517          	auipc	a0,0x3
    80007c00:	b5c50513          	addi	a0,a0,-1188 # 8000a758 <uart_tx_w>
    80007c04:	00063783          	ld	a5,0(a2)
    80007c08:	00053703          	ld	a4,0(a0)
    80007c0c:	04f70263          	beq	a4,a5,80007c50 <uartintr+0x110>
    80007c10:	100005b7          	lui	a1,0x10000
    80007c14:	00004817          	auipc	a6,0x4
    80007c18:	ddc80813          	addi	a6,a6,-548 # 8000b9f0 <uart_tx_buf>
    80007c1c:	01c0006f          	j	80007c38 <uartintr+0xf8>
    80007c20:	0006c703          	lbu	a4,0(a3)
    80007c24:	00f63023          	sd	a5,0(a2)
    80007c28:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007c2c:	00063783          	ld	a5,0(a2)
    80007c30:	00053703          	ld	a4,0(a0)
    80007c34:	02f70063          	beq	a4,a5,80007c54 <uartintr+0x114>
    80007c38:	01f7f713          	andi	a4,a5,31
    80007c3c:	00e806b3          	add	a3,a6,a4
    80007c40:	0055c703          	lbu	a4,5(a1)
    80007c44:	00178793          	addi	a5,a5,1
    80007c48:	02077713          	andi	a4,a4,32
    80007c4c:	fc071ae3          	bnez	a4,80007c20 <uartintr+0xe0>
    80007c50:	00008067          	ret
    80007c54:	00008067          	ret

0000000080007c58 <kinit>:
    80007c58:	fc010113          	addi	sp,sp,-64
    80007c5c:	02913423          	sd	s1,40(sp)
    80007c60:	fffff7b7          	lui	a5,0xfffff
    80007c64:	00005497          	auipc	s1,0x5
    80007c68:	dbb48493          	addi	s1,s1,-581 # 8000ca1f <end+0xfff>
    80007c6c:	02813823          	sd	s0,48(sp)
    80007c70:	01313c23          	sd	s3,24(sp)
    80007c74:	00f4f4b3          	and	s1,s1,a5
    80007c78:	02113c23          	sd	ra,56(sp)
    80007c7c:	03213023          	sd	s2,32(sp)
    80007c80:	01413823          	sd	s4,16(sp)
    80007c84:	01513423          	sd	s5,8(sp)
    80007c88:	04010413          	addi	s0,sp,64
    80007c8c:	000017b7          	lui	a5,0x1
    80007c90:	01100993          	li	s3,17
    80007c94:	00f487b3          	add	a5,s1,a5
    80007c98:	01b99993          	slli	s3,s3,0x1b
    80007c9c:	06f9e063          	bltu	s3,a5,80007cfc <kinit+0xa4>
    80007ca0:	00004a97          	auipc	s5,0x4
    80007ca4:	d80a8a93          	addi	s5,s5,-640 # 8000ba20 <end>
    80007ca8:	0754ec63          	bltu	s1,s5,80007d20 <kinit+0xc8>
    80007cac:	0734fa63          	bgeu	s1,s3,80007d20 <kinit+0xc8>
    80007cb0:	00088a37          	lui	s4,0x88
    80007cb4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007cb8:	00003917          	auipc	s2,0x3
    80007cbc:	aa890913          	addi	s2,s2,-1368 # 8000a760 <kmem>
    80007cc0:	00ca1a13          	slli	s4,s4,0xc
    80007cc4:	0140006f          	j	80007cd8 <kinit+0x80>
    80007cc8:	000017b7          	lui	a5,0x1
    80007ccc:	00f484b3          	add	s1,s1,a5
    80007cd0:	0554e863          	bltu	s1,s5,80007d20 <kinit+0xc8>
    80007cd4:	0534f663          	bgeu	s1,s3,80007d20 <kinit+0xc8>
    80007cd8:	00001637          	lui	a2,0x1
    80007cdc:	00100593          	li	a1,1
    80007ce0:	00048513          	mv	a0,s1
    80007ce4:	00000097          	auipc	ra,0x0
    80007ce8:	5e4080e7          	jalr	1508(ra) # 800082c8 <__memset>
    80007cec:	00093783          	ld	a5,0(s2)
    80007cf0:	00f4b023          	sd	a5,0(s1)
    80007cf4:	00993023          	sd	s1,0(s2)
    80007cf8:	fd4498e3          	bne	s1,s4,80007cc8 <kinit+0x70>
    80007cfc:	03813083          	ld	ra,56(sp)
    80007d00:	03013403          	ld	s0,48(sp)
    80007d04:	02813483          	ld	s1,40(sp)
    80007d08:	02013903          	ld	s2,32(sp)
    80007d0c:	01813983          	ld	s3,24(sp)
    80007d10:	01013a03          	ld	s4,16(sp)
    80007d14:	00813a83          	ld	s5,8(sp)
    80007d18:	04010113          	addi	sp,sp,64
    80007d1c:	00008067          	ret
    80007d20:	00002517          	auipc	a0,0x2
    80007d24:	a5050513          	addi	a0,a0,-1456 # 80009770 <digits+0x18>
    80007d28:	fffff097          	auipc	ra,0xfffff
    80007d2c:	4b4080e7          	jalr	1204(ra) # 800071dc <panic>

0000000080007d30 <freerange>:
    80007d30:	fc010113          	addi	sp,sp,-64
    80007d34:	000017b7          	lui	a5,0x1
    80007d38:	02913423          	sd	s1,40(sp)
    80007d3c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007d40:	009504b3          	add	s1,a0,s1
    80007d44:	fffff537          	lui	a0,0xfffff
    80007d48:	02813823          	sd	s0,48(sp)
    80007d4c:	02113c23          	sd	ra,56(sp)
    80007d50:	03213023          	sd	s2,32(sp)
    80007d54:	01313c23          	sd	s3,24(sp)
    80007d58:	01413823          	sd	s4,16(sp)
    80007d5c:	01513423          	sd	s5,8(sp)
    80007d60:	01613023          	sd	s6,0(sp)
    80007d64:	04010413          	addi	s0,sp,64
    80007d68:	00a4f4b3          	and	s1,s1,a0
    80007d6c:	00f487b3          	add	a5,s1,a5
    80007d70:	06f5e463          	bltu	a1,a5,80007dd8 <freerange+0xa8>
    80007d74:	00004a97          	auipc	s5,0x4
    80007d78:	caca8a93          	addi	s5,s5,-852 # 8000ba20 <end>
    80007d7c:	0954e263          	bltu	s1,s5,80007e00 <freerange+0xd0>
    80007d80:	01100993          	li	s3,17
    80007d84:	01b99993          	slli	s3,s3,0x1b
    80007d88:	0734fc63          	bgeu	s1,s3,80007e00 <freerange+0xd0>
    80007d8c:	00058a13          	mv	s4,a1
    80007d90:	00003917          	auipc	s2,0x3
    80007d94:	9d090913          	addi	s2,s2,-1584 # 8000a760 <kmem>
    80007d98:	00002b37          	lui	s6,0x2
    80007d9c:	0140006f          	j	80007db0 <freerange+0x80>
    80007da0:	000017b7          	lui	a5,0x1
    80007da4:	00f484b3          	add	s1,s1,a5
    80007da8:	0554ec63          	bltu	s1,s5,80007e00 <freerange+0xd0>
    80007dac:	0534fa63          	bgeu	s1,s3,80007e00 <freerange+0xd0>
    80007db0:	00001637          	lui	a2,0x1
    80007db4:	00100593          	li	a1,1
    80007db8:	00048513          	mv	a0,s1
    80007dbc:	00000097          	auipc	ra,0x0
    80007dc0:	50c080e7          	jalr	1292(ra) # 800082c8 <__memset>
    80007dc4:	00093703          	ld	a4,0(s2)
    80007dc8:	016487b3          	add	a5,s1,s6
    80007dcc:	00e4b023          	sd	a4,0(s1)
    80007dd0:	00993023          	sd	s1,0(s2)
    80007dd4:	fcfa76e3          	bgeu	s4,a5,80007da0 <freerange+0x70>
    80007dd8:	03813083          	ld	ra,56(sp)
    80007ddc:	03013403          	ld	s0,48(sp)
    80007de0:	02813483          	ld	s1,40(sp)
    80007de4:	02013903          	ld	s2,32(sp)
    80007de8:	01813983          	ld	s3,24(sp)
    80007dec:	01013a03          	ld	s4,16(sp)
    80007df0:	00813a83          	ld	s5,8(sp)
    80007df4:	00013b03          	ld	s6,0(sp)
    80007df8:	04010113          	addi	sp,sp,64
    80007dfc:	00008067          	ret
    80007e00:	00002517          	auipc	a0,0x2
    80007e04:	97050513          	addi	a0,a0,-1680 # 80009770 <digits+0x18>
    80007e08:	fffff097          	auipc	ra,0xfffff
    80007e0c:	3d4080e7          	jalr	980(ra) # 800071dc <panic>

0000000080007e10 <kfree>:
    80007e10:	fe010113          	addi	sp,sp,-32
    80007e14:	00813823          	sd	s0,16(sp)
    80007e18:	00113c23          	sd	ra,24(sp)
    80007e1c:	00913423          	sd	s1,8(sp)
    80007e20:	02010413          	addi	s0,sp,32
    80007e24:	03451793          	slli	a5,a0,0x34
    80007e28:	04079c63          	bnez	a5,80007e80 <kfree+0x70>
    80007e2c:	00004797          	auipc	a5,0x4
    80007e30:	bf478793          	addi	a5,a5,-1036 # 8000ba20 <end>
    80007e34:	00050493          	mv	s1,a0
    80007e38:	04f56463          	bltu	a0,a5,80007e80 <kfree+0x70>
    80007e3c:	01100793          	li	a5,17
    80007e40:	01b79793          	slli	a5,a5,0x1b
    80007e44:	02f57e63          	bgeu	a0,a5,80007e80 <kfree+0x70>
    80007e48:	00001637          	lui	a2,0x1
    80007e4c:	00100593          	li	a1,1
    80007e50:	00000097          	auipc	ra,0x0
    80007e54:	478080e7          	jalr	1144(ra) # 800082c8 <__memset>
    80007e58:	00003797          	auipc	a5,0x3
    80007e5c:	90878793          	addi	a5,a5,-1784 # 8000a760 <kmem>
    80007e60:	0007b703          	ld	a4,0(a5)
    80007e64:	01813083          	ld	ra,24(sp)
    80007e68:	01013403          	ld	s0,16(sp)
    80007e6c:	00e4b023          	sd	a4,0(s1)
    80007e70:	0097b023          	sd	s1,0(a5)
    80007e74:	00813483          	ld	s1,8(sp)
    80007e78:	02010113          	addi	sp,sp,32
    80007e7c:	00008067          	ret
    80007e80:	00002517          	auipc	a0,0x2
    80007e84:	8f050513          	addi	a0,a0,-1808 # 80009770 <digits+0x18>
    80007e88:	fffff097          	auipc	ra,0xfffff
    80007e8c:	354080e7          	jalr	852(ra) # 800071dc <panic>

0000000080007e90 <kalloc>:
    80007e90:	fe010113          	addi	sp,sp,-32
    80007e94:	00813823          	sd	s0,16(sp)
    80007e98:	00913423          	sd	s1,8(sp)
    80007e9c:	00113c23          	sd	ra,24(sp)
    80007ea0:	02010413          	addi	s0,sp,32
    80007ea4:	00003797          	auipc	a5,0x3
    80007ea8:	8bc78793          	addi	a5,a5,-1860 # 8000a760 <kmem>
    80007eac:	0007b483          	ld	s1,0(a5)
    80007eb0:	02048063          	beqz	s1,80007ed0 <kalloc+0x40>
    80007eb4:	0004b703          	ld	a4,0(s1)
    80007eb8:	00001637          	lui	a2,0x1
    80007ebc:	00500593          	li	a1,5
    80007ec0:	00048513          	mv	a0,s1
    80007ec4:	00e7b023          	sd	a4,0(a5)
    80007ec8:	00000097          	auipc	ra,0x0
    80007ecc:	400080e7          	jalr	1024(ra) # 800082c8 <__memset>
    80007ed0:	01813083          	ld	ra,24(sp)
    80007ed4:	01013403          	ld	s0,16(sp)
    80007ed8:	00048513          	mv	a0,s1
    80007edc:	00813483          	ld	s1,8(sp)
    80007ee0:	02010113          	addi	sp,sp,32
    80007ee4:	00008067          	ret

0000000080007ee8 <initlock>:
    80007ee8:	ff010113          	addi	sp,sp,-16
    80007eec:	00813423          	sd	s0,8(sp)
    80007ef0:	01010413          	addi	s0,sp,16
    80007ef4:	00813403          	ld	s0,8(sp)
    80007ef8:	00b53423          	sd	a1,8(a0)
    80007efc:	00052023          	sw	zero,0(a0)
    80007f00:	00053823          	sd	zero,16(a0)
    80007f04:	01010113          	addi	sp,sp,16
    80007f08:	00008067          	ret

0000000080007f0c <acquire>:
    80007f0c:	fe010113          	addi	sp,sp,-32
    80007f10:	00813823          	sd	s0,16(sp)
    80007f14:	00913423          	sd	s1,8(sp)
    80007f18:	00113c23          	sd	ra,24(sp)
    80007f1c:	01213023          	sd	s2,0(sp)
    80007f20:	02010413          	addi	s0,sp,32
    80007f24:	00050493          	mv	s1,a0
    80007f28:	10002973          	csrr	s2,sstatus
    80007f2c:	100027f3          	csrr	a5,sstatus
    80007f30:	ffd7f793          	andi	a5,a5,-3
    80007f34:	10079073          	csrw	sstatus,a5
    80007f38:	fffff097          	auipc	ra,0xfffff
    80007f3c:	8ec080e7          	jalr	-1812(ra) # 80006824 <mycpu>
    80007f40:	07852783          	lw	a5,120(a0)
    80007f44:	06078e63          	beqz	a5,80007fc0 <acquire+0xb4>
    80007f48:	fffff097          	auipc	ra,0xfffff
    80007f4c:	8dc080e7          	jalr	-1828(ra) # 80006824 <mycpu>
    80007f50:	07852783          	lw	a5,120(a0)
    80007f54:	0004a703          	lw	a4,0(s1)
    80007f58:	0017879b          	addiw	a5,a5,1
    80007f5c:	06f52c23          	sw	a5,120(a0)
    80007f60:	04071063          	bnez	a4,80007fa0 <acquire+0x94>
    80007f64:	00100713          	li	a4,1
    80007f68:	00070793          	mv	a5,a4
    80007f6c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007f70:	0007879b          	sext.w	a5,a5
    80007f74:	fe079ae3          	bnez	a5,80007f68 <acquire+0x5c>
    80007f78:	0ff0000f          	fence
    80007f7c:	fffff097          	auipc	ra,0xfffff
    80007f80:	8a8080e7          	jalr	-1880(ra) # 80006824 <mycpu>
    80007f84:	01813083          	ld	ra,24(sp)
    80007f88:	01013403          	ld	s0,16(sp)
    80007f8c:	00a4b823          	sd	a0,16(s1)
    80007f90:	00013903          	ld	s2,0(sp)
    80007f94:	00813483          	ld	s1,8(sp)
    80007f98:	02010113          	addi	sp,sp,32
    80007f9c:	00008067          	ret
    80007fa0:	0104b903          	ld	s2,16(s1)
    80007fa4:	fffff097          	auipc	ra,0xfffff
    80007fa8:	880080e7          	jalr	-1920(ra) # 80006824 <mycpu>
    80007fac:	faa91ce3          	bne	s2,a0,80007f64 <acquire+0x58>
    80007fb0:	00001517          	auipc	a0,0x1
    80007fb4:	7c850513          	addi	a0,a0,1992 # 80009778 <digits+0x20>
    80007fb8:	fffff097          	auipc	ra,0xfffff
    80007fbc:	224080e7          	jalr	548(ra) # 800071dc <panic>
    80007fc0:	00195913          	srli	s2,s2,0x1
    80007fc4:	fffff097          	auipc	ra,0xfffff
    80007fc8:	860080e7          	jalr	-1952(ra) # 80006824 <mycpu>
    80007fcc:	00197913          	andi	s2,s2,1
    80007fd0:	07252e23          	sw	s2,124(a0)
    80007fd4:	f75ff06f          	j	80007f48 <acquire+0x3c>

0000000080007fd8 <release>:
    80007fd8:	fe010113          	addi	sp,sp,-32
    80007fdc:	00813823          	sd	s0,16(sp)
    80007fe0:	00113c23          	sd	ra,24(sp)
    80007fe4:	00913423          	sd	s1,8(sp)
    80007fe8:	01213023          	sd	s2,0(sp)
    80007fec:	02010413          	addi	s0,sp,32
    80007ff0:	00052783          	lw	a5,0(a0)
    80007ff4:	00079a63          	bnez	a5,80008008 <release+0x30>
    80007ff8:	00001517          	auipc	a0,0x1
    80007ffc:	78850513          	addi	a0,a0,1928 # 80009780 <digits+0x28>
    80008000:	fffff097          	auipc	ra,0xfffff
    80008004:	1dc080e7          	jalr	476(ra) # 800071dc <panic>
    80008008:	01053903          	ld	s2,16(a0)
    8000800c:	00050493          	mv	s1,a0
    80008010:	fffff097          	auipc	ra,0xfffff
    80008014:	814080e7          	jalr	-2028(ra) # 80006824 <mycpu>
    80008018:	fea910e3          	bne	s2,a0,80007ff8 <release+0x20>
    8000801c:	0004b823          	sd	zero,16(s1)
    80008020:	0ff0000f          	fence
    80008024:	0f50000f          	fence	iorw,ow
    80008028:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000802c:	ffffe097          	auipc	ra,0xffffe
    80008030:	7f8080e7          	jalr	2040(ra) # 80006824 <mycpu>
    80008034:	100027f3          	csrr	a5,sstatus
    80008038:	0027f793          	andi	a5,a5,2
    8000803c:	04079a63          	bnez	a5,80008090 <release+0xb8>
    80008040:	07852783          	lw	a5,120(a0)
    80008044:	02f05e63          	blez	a5,80008080 <release+0xa8>
    80008048:	fff7871b          	addiw	a4,a5,-1
    8000804c:	06e52c23          	sw	a4,120(a0)
    80008050:	00071c63          	bnez	a4,80008068 <release+0x90>
    80008054:	07c52783          	lw	a5,124(a0)
    80008058:	00078863          	beqz	a5,80008068 <release+0x90>
    8000805c:	100027f3          	csrr	a5,sstatus
    80008060:	0027e793          	ori	a5,a5,2
    80008064:	10079073          	csrw	sstatus,a5
    80008068:	01813083          	ld	ra,24(sp)
    8000806c:	01013403          	ld	s0,16(sp)
    80008070:	00813483          	ld	s1,8(sp)
    80008074:	00013903          	ld	s2,0(sp)
    80008078:	02010113          	addi	sp,sp,32
    8000807c:	00008067          	ret
    80008080:	00001517          	auipc	a0,0x1
    80008084:	72050513          	addi	a0,a0,1824 # 800097a0 <digits+0x48>
    80008088:	fffff097          	auipc	ra,0xfffff
    8000808c:	154080e7          	jalr	340(ra) # 800071dc <panic>
    80008090:	00001517          	auipc	a0,0x1
    80008094:	6f850513          	addi	a0,a0,1784 # 80009788 <digits+0x30>
    80008098:	fffff097          	auipc	ra,0xfffff
    8000809c:	144080e7          	jalr	324(ra) # 800071dc <panic>

00000000800080a0 <holding>:
    800080a0:	00052783          	lw	a5,0(a0)
    800080a4:	00079663          	bnez	a5,800080b0 <holding+0x10>
    800080a8:	00000513          	li	a0,0
    800080ac:	00008067          	ret
    800080b0:	fe010113          	addi	sp,sp,-32
    800080b4:	00813823          	sd	s0,16(sp)
    800080b8:	00913423          	sd	s1,8(sp)
    800080bc:	00113c23          	sd	ra,24(sp)
    800080c0:	02010413          	addi	s0,sp,32
    800080c4:	01053483          	ld	s1,16(a0)
    800080c8:	ffffe097          	auipc	ra,0xffffe
    800080cc:	75c080e7          	jalr	1884(ra) # 80006824 <mycpu>
    800080d0:	01813083          	ld	ra,24(sp)
    800080d4:	01013403          	ld	s0,16(sp)
    800080d8:	40a48533          	sub	a0,s1,a0
    800080dc:	00153513          	seqz	a0,a0
    800080e0:	00813483          	ld	s1,8(sp)
    800080e4:	02010113          	addi	sp,sp,32
    800080e8:	00008067          	ret

00000000800080ec <push_off>:
    800080ec:	fe010113          	addi	sp,sp,-32
    800080f0:	00813823          	sd	s0,16(sp)
    800080f4:	00113c23          	sd	ra,24(sp)
    800080f8:	00913423          	sd	s1,8(sp)
    800080fc:	02010413          	addi	s0,sp,32
    80008100:	100024f3          	csrr	s1,sstatus
    80008104:	100027f3          	csrr	a5,sstatus
    80008108:	ffd7f793          	andi	a5,a5,-3
    8000810c:	10079073          	csrw	sstatus,a5
    80008110:	ffffe097          	auipc	ra,0xffffe
    80008114:	714080e7          	jalr	1812(ra) # 80006824 <mycpu>
    80008118:	07852783          	lw	a5,120(a0)
    8000811c:	02078663          	beqz	a5,80008148 <push_off+0x5c>
    80008120:	ffffe097          	auipc	ra,0xffffe
    80008124:	704080e7          	jalr	1796(ra) # 80006824 <mycpu>
    80008128:	07852783          	lw	a5,120(a0)
    8000812c:	01813083          	ld	ra,24(sp)
    80008130:	01013403          	ld	s0,16(sp)
    80008134:	0017879b          	addiw	a5,a5,1
    80008138:	06f52c23          	sw	a5,120(a0)
    8000813c:	00813483          	ld	s1,8(sp)
    80008140:	02010113          	addi	sp,sp,32
    80008144:	00008067          	ret
    80008148:	0014d493          	srli	s1,s1,0x1
    8000814c:	ffffe097          	auipc	ra,0xffffe
    80008150:	6d8080e7          	jalr	1752(ra) # 80006824 <mycpu>
    80008154:	0014f493          	andi	s1,s1,1
    80008158:	06952e23          	sw	s1,124(a0)
    8000815c:	fc5ff06f          	j	80008120 <push_off+0x34>

0000000080008160 <pop_off>:
    80008160:	ff010113          	addi	sp,sp,-16
    80008164:	00813023          	sd	s0,0(sp)
    80008168:	00113423          	sd	ra,8(sp)
    8000816c:	01010413          	addi	s0,sp,16
    80008170:	ffffe097          	auipc	ra,0xffffe
    80008174:	6b4080e7          	jalr	1716(ra) # 80006824 <mycpu>
    80008178:	100027f3          	csrr	a5,sstatus
    8000817c:	0027f793          	andi	a5,a5,2
    80008180:	04079663          	bnez	a5,800081cc <pop_off+0x6c>
    80008184:	07852783          	lw	a5,120(a0)
    80008188:	02f05a63          	blez	a5,800081bc <pop_off+0x5c>
    8000818c:	fff7871b          	addiw	a4,a5,-1
    80008190:	06e52c23          	sw	a4,120(a0)
    80008194:	00071c63          	bnez	a4,800081ac <pop_off+0x4c>
    80008198:	07c52783          	lw	a5,124(a0)
    8000819c:	00078863          	beqz	a5,800081ac <pop_off+0x4c>
    800081a0:	100027f3          	csrr	a5,sstatus
    800081a4:	0027e793          	ori	a5,a5,2
    800081a8:	10079073          	csrw	sstatus,a5
    800081ac:	00813083          	ld	ra,8(sp)
    800081b0:	00013403          	ld	s0,0(sp)
    800081b4:	01010113          	addi	sp,sp,16
    800081b8:	00008067          	ret
    800081bc:	00001517          	auipc	a0,0x1
    800081c0:	5e450513          	addi	a0,a0,1508 # 800097a0 <digits+0x48>
    800081c4:	fffff097          	auipc	ra,0xfffff
    800081c8:	018080e7          	jalr	24(ra) # 800071dc <panic>
    800081cc:	00001517          	auipc	a0,0x1
    800081d0:	5bc50513          	addi	a0,a0,1468 # 80009788 <digits+0x30>
    800081d4:	fffff097          	auipc	ra,0xfffff
    800081d8:	008080e7          	jalr	8(ra) # 800071dc <panic>

00000000800081dc <push_on>:
    800081dc:	fe010113          	addi	sp,sp,-32
    800081e0:	00813823          	sd	s0,16(sp)
    800081e4:	00113c23          	sd	ra,24(sp)
    800081e8:	00913423          	sd	s1,8(sp)
    800081ec:	02010413          	addi	s0,sp,32
    800081f0:	100024f3          	csrr	s1,sstatus
    800081f4:	100027f3          	csrr	a5,sstatus
    800081f8:	0027e793          	ori	a5,a5,2
    800081fc:	10079073          	csrw	sstatus,a5
    80008200:	ffffe097          	auipc	ra,0xffffe
    80008204:	624080e7          	jalr	1572(ra) # 80006824 <mycpu>
    80008208:	07852783          	lw	a5,120(a0)
    8000820c:	02078663          	beqz	a5,80008238 <push_on+0x5c>
    80008210:	ffffe097          	auipc	ra,0xffffe
    80008214:	614080e7          	jalr	1556(ra) # 80006824 <mycpu>
    80008218:	07852783          	lw	a5,120(a0)
    8000821c:	01813083          	ld	ra,24(sp)
    80008220:	01013403          	ld	s0,16(sp)
    80008224:	0017879b          	addiw	a5,a5,1
    80008228:	06f52c23          	sw	a5,120(a0)
    8000822c:	00813483          	ld	s1,8(sp)
    80008230:	02010113          	addi	sp,sp,32
    80008234:	00008067          	ret
    80008238:	0014d493          	srli	s1,s1,0x1
    8000823c:	ffffe097          	auipc	ra,0xffffe
    80008240:	5e8080e7          	jalr	1512(ra) # 80006824 <mycpu>
    80008244:	0014f493          	andi	s1,s1,1
    80008248:	06952e23          	sw	s1,124(a0)
    8000824c:	fc5ff06f          	j	80008210 <push_on+0x34>

0000000080008250 <pop_on>:
    80008250:	ff010113          	addi	sp,sp,-16
    80008254:	00813023          	sd	s0,0(sp)
    80008258:	00113423          	sd	ra,8(sp)
    8000825c:	01010413          	addi	s0,sp,16
    80008260:	ffffe097          	auipc	ra,0xffffe
    80008264:	5c4080e7          	jalr	1476(ra) # 80006824 <mycpu>
    80008268:	100027f3          	csrr	a5,sstatus
    8000826c:	0027f793          	andi	a5,a5,2
    80008270:	04078463          	beqz	a5,800082b8 <pop_on+0x68>
    80008274:	07852783          	lw	a5,120(a0)
    80008278:	02f05863          	blez	a5,800082a8 <pop_on+0x58>
    8000827c:	fff7879b          	addiw	a5,a5,-1
    80008280:	06f52c23          	sw	a5,120(a0)
    80008284:	07853783          	ld	a5,120(a0)
    80008288:	00079863          	bnez	a5,80008298 <pop_on+0x48>
    8000828c:	100027f3          	csrr	a5,sstatus
    80008290:	ffd7f793          	andi	a5,a5,-3
    80008294:	10079073          	csrw	sstatus,a5
    80008298:	00813083          	ld	ra,8(sp)
    8000829c:	00013403          	ld	s0,0(sp)
    800082a0:	01010113          	addi	sp,sp,16
    800082a4:	00008067          	ret
    800082a8:	00001517          	auipc	a0,0x1
    800082ac:	52050513          	addi	a0,a0,1312 # 800097c8 <digits+0x70>
    800082b0:	fffff097          	auipc	ra,0xfffff
    800082b4:	f2c080e7          	jalr	-212(ra) # 800071dc <panic>
    800082b8:	00001517          	auipc	a0,0x1
    800082bc:	4f050513          	addi	a0,a0,1264 # 800097a8 <digits+0x50>
    800082c0:	fffff097          	auipc	ra,0xfffff
    800082c4:	f1c080e7          	jalr	-228(ra) # 800071dc <panic>

00000000800082c8 <__memset>:
    800082c8:	ff010113          	addi	sp,sp,-16
    800082cc:	00813423          	sd	s0,8(sp)
    800082d0:	01010413          	addi	s0,sp,16
    800082d4:	1a060e63          	beqz	a2,80008490 <__memset+0x1c8>
    800082d8:	40a007b3          	neg	a5,a0
    800082dc:	0077f793          	andi	a5,a5,7
    800082e0:	00778693          	addi	a3,a5,7
    800082e4:	00b00813          	li	a6,11
    800082e8:	0ff5f593          	andi	a1,a1,255
    800082ec:	fff6071b          	addiw	a4,a2,-1
    800082f0:	1b06e663          	bltu	a3,a6,8000849c <__memset+0x1d4>
    800082f4:	1cd76463          	bltu	a4,a3,800084bc <__memset+0x1f4>
    800082f8:	1a078e63          	beqz	a5,800084b4 <__memset+0x1ec>
    800082fc:	00b50023          	sb	a1,0(a0)
    80008300:	00100713          	li	a4,1
    80008304:	1ae78463          	beq	a5,a4,800084ac <__memset+0x1e4>
    80008308:	00b500a3          	sb	a1,1(a0)
    8000830c:	00200713          	li	a4,2
    80008310:	1ae78a63          	beq	a5,a4,800084c4 <__memset+0x1fc>
    80008314:	00b50123          	sb	a1,2(a0)
    80008318:	00300713          	li	a4,3
    8000831c:	18e78463          	beq	a5,a4,800084a4 <__memset+0x1dc>
    80008320:	00b501a3          	sb	a1,3(a0)
    80008324:	00400713          	li	a4,4
    80008328:	1ae78263          	beq	a5,a4,800084cc <__memset+0x204>
    8000832c:	00b50223          	sb	a1,4(a0)
    80008330:	00500713          	li	a4,5
    80008334:	1ae78063          	beq	a5,a4,800084d4 <__memset+0x20c>
    80008338:	00b502a3          	sb	a1,5(a0)
    8000833c:	00700713          	li	a4,7
    80008340:	18e79e63          	bne	a5,a4,800084dc <__memset+0x214>
    80008344:	00b50323          	sb	a1,6(a0)
    80008348:	00700e93          	li	t4,7
    8000834c:	00859713          	slli	a4,a1,0x8
    80008350:	00e5e733          	or	a4,a1,a4
    80008354:	01059e13          	slli	t3,a1,0x10
    80008358:	01c76e33          	or	t3,a4,t3
    8000835c:	01859313          	slli	t1,a1,0x18
    80008360:	006e6333          	or	t1,t3,t1
    80008364:	02059893          	slli	a7,a1,0x20
    80008368:	40f60e3b          	subw	t3,a2,a5
    8000836c:	011368b3          	or	a7,t1,a7
    80008370:	02859813          	slli	a6,a1,0x28
    80008374:	0108e833          	or	a6,a7,a6
    80008378:	03059693          	slli	a3,a1,0x30
    8000837c:	003e589b          	srliw	a7,t3,0x3
    80008380:	00d866b3          	or	a3,a6,a3
    80008384:	03859713          	slli	a4,a1,0x38
    80008388:	00389813          	slli	a6,a7,0x3
    8000838c:	00f507b3          	add	a5,a0,a5
    80008390:	00e6e733          	or	a4,a3,a4
    80008394:	000e089b          	sext.w	a7,t3
    80008398:	00f806b3          	add	a3,a6,a5
    8000839c:	00e7b023          	sd	a4,0(a5)
    800083a0:	00878793          	addi	a5,a5,8
    800083a4:	fed79ce3          	bne	a5,a3,8000839c <__memset+0xd4>
    800083a8:	ff8e7793          	andi	a5,t3,-8
    800083ac:	0007871b          	sext.w	a4,a5
    800083b0:	01d787bb          	addw	a5,a5,t4
    800083b4:	0ce88e63          	beq	a7,a4,80008490 <__memset+0x1c8>
    800083b8:	00f50733          	add	a4,a0,a5
    800083bc:	00b70023          	sb	a1,0(a4)
    800083c0:	0017871b          	addiw	a4,a5,1
    800083c4:	0cc77663          	bgeu	a4,a2,80008490 <__memset+0x1c8>
    800083c8:	00e50733          	add	a4,a0,a4
    800083cc:	00b70023          	sb	a1,0(a4)
    800083d0:	0027871b          	addiw	a4,a5,2
    800083d4:	0ac77e63          	bgeu	a4,a2,80008490 <__memset+0x1c8>
    800083d8:	00e50733          	add	a4,a0,a4
    800083dc:	00b70023          	sb	a1,0(a4)
    800083e0:	0037871b          	addiw	a4,a5,3
    800083e4:	0ac77663          	bgeu	a4,a2,80008490 <__memset+0x1c8>
    800083e8:	00e50733          	add	a4,a0,a4
    800083ec:	00b70023          	sb	a1,0(a4)
    800083f0:	0047871b          	addiw	a4,a5,4
    800083f4:	08c77e63          	bgeu	a4,a2,80008490 <__memset+0x1c8>
    800083f8:	00e50733          	add	a4,a0,a4
    800083fc:	00b70023          	sb	a1,0(a4)
    80008400:	0057871b          	addiw	a4,a5,5
    80008404:	08c77663          	bgeu	a4,a2,80008490 <__memset+0x1c8>
    80008408:	00e50733          	add	a4,a0,a4
    8000840c:	00b70023          	sb	a1,0(a4)
    80008410:	0067871b          	addiw	a4,a5,6
    80008414:	06c77e63          	bgeu	a4,a2,80008490 <__memset+0x1c8>
    80008418:	00e50733          	add	a4,a0,a4
    8000841c:	00b70023          	sb	a1,0(a4)
    80008420:	0077871b          	addiw	a4,a5,7
    80008424:	06c77663          	bgeu	a4,a2,80008490 <__memset+0x1c8>
    80008428:	00e50733          	add	a4,a0,a4
    8000842c:	00b70023          	sb	a1,0(a4)
    80008430:	0087871b          	addiw	a4,a5,8
    80008434:	04c77e63          	bgeu	a4,a2,80008490 <__memset+0x1c8>
    80008438:	00e50733          	add	a4,a0,a4
    8000843c:	00b70023          	sb	a1,0(a4)
    80008440:	0097871b          	addiw	a4,a5,9
    80008444:	04c77663          	bgeu	a4,a2,80008490 <__memset+0x1c8>
    80008448:	00e50733          	add	a4,a0,a4
    8000844c:	00b70023          	sb	a1,0(a4)
    80008450:	00a7871b          	addiw	a4,a5,10
    80008454:	02c77e63          	bgeu	a4,a2,80008490 <__memset+0x1c8>
    80008458:	00e50733          	add	a4,a0,a4
    8000845c:	00b70023          	sb	a1,0(a4)
    80008460:	00b7871b          	addiw	a4,a5,11
    80008464:	02c77663          	bgeu	a4,a2,80008490 <__memset+0x1c8>
    80008468:	00e50733          	add	a4,a0,a4
    8000846c:	00b70023          	sb	a1,0(a4)
    80008470:	00c7871b          	addiw	a4,a5,12
    80008474:	00c77e63          	bgeu	a4,a2,80008490 <__memset+0x1c8>
    80008478:	00e50733          	add	a4,a0,a4
    8000847c:	00b70023          	sb	a1,0(a4)
    80008480:	00d7879b          	addiw	a5,a5,13
    80008484:	00c7f663          	bgeu	a5,a2,80008490 <__memset+0x1c8>
    80008488:	00f507b3          	add	a5,a0,a5
    8000848c:	00b78023          	sb	a1,0(a5)
    80008490:	00813403          	ld	s0,8(sp)
    80008494:	01010113          	addi	sp,sp,16
    80008498:	00008067          	ret
    8000849c:	00b00693          	li	a3,11
    800084a0:	e55ff06f          	j	800082f4 <__memset+0x2c>
    800084a4:	00300e93          	li	t4,3
    800084a8:	ea5ff06f          	j	8000834c <__memset+0x84>
    800084ac:	00100e93          	li	t4,1
    800084b0:	e9dff06f          	j	8000834c <__memset+0x84>
    800084b4:	00000e93          	li	t4,0
    800084b8:	e95ff06f          	j	8000834c <__memset+0x84>
    800084bc:	00000793          	li	a5,0
    800084c0:	ef9ff06f          	j	800083b8 <__memset+0xf0>
    800084c4:	00200e93          	li	t4,2
    800084c8:	e85ff06f          	j	8000834c <__memset+0x84>
    800084cc:	00400e93          	li	t4,4
    800084d0:	e7dff06f          	j	8000834c <__memset+0x84>
    800084d4:	00500e93          	li	t4,5
    800084d8:	e75ff06f          	j	8000834c <__memset+0x84>
    800084dc:	00600e93          	li	t4,6
    800084e0:	e6dff06f          	j	8000834c <__memset+0x84>

00000000800084e4 <__memmove>:
    800084e4:	ff010113          	addi	sp,sp,-16
    800084e8:	00813423          	sd	s0,8(sp)
    800084ec:	01010413          	addi	s0,sp,16
    800084f0:	0e060863          	beqz	a2,800085e0 <__memmove+0xfc>
    800084f4:	fff6069b          	addiw	a3,a2,-1
    800084f8:	0006881b          	sext.w	a6,a3
    800084fc:	0ea5e863          	bltu	a1,a0,800085ec <__memmove+0x108>
    80008500:	00758713          	addi	a4,a1,7
    80008504:	00a5e7b3          	or	a5,a1,a0
    80008508:	40a70733          	sub	a4,a4,a0
    8000850c:	0077f793          	andi	a5,a5,7
    80008510:	00f73713          	sltiu	a4,a4,15
    80008514:	00174713          	xori	a4,a4,1
    80008518:	0017b793          	seqz	a5,a5
    8000851c:	00e7f7b3          	and	a5,a5,a4
    80008520:	10078863          	beqz	a5,80008630 <__memmove+0x14c>
    80008524:	00900793          	li	a5,9
    80008528:	1107f463          	bgeu	a5,a6,80008630 <__memmove+0x14c>
    8000852c:	0036581b          	srliw	a6,a2,0x3
    80008530:	fff8081b          	addiw	a6,a6,-1
    80008534:	02081813          	slli	a6,a6,0x20
    80008538:	01d85893          	srli	a7,a6,0x1d
    8000853c:	00858813          	addi	a6,a1,8
    80008540:	00058793          	mv	a5,a1
    80008544:	00050713          	mv	a4,a0
    80008548:	01088833          	add	a6,a7,a6
    8000854c:	0007b883          	ld	a7,0(a5)
    80008550:	00878793          	addi	a5,a5,8
    80008554:	00870713          	addi	a4,a4,8
    80008558:	ff173c23          	sd	a7,-8(a4)
    8000855c:	ff0798e3          	bne	a5,a6,8000854c <__memmove+0x68>
    80008560:	ff867713          	andi	a4,a2,-8
    80008564:	02071793          	slli	a5,a4,0x20
    80008568:	0207d793          	srli	a5,a5,0x20
    8000856c:	00f585b3          	add	a1,a1,a5
    80008570:	40e686bb          	subw	a3,a3,a4
    80008574:	00f507b3          	add	a5,a0,a5
    80008578:	06e60463          	beq	a2,a4,800085e0 <__memmove+0xfc>
    8000857c:	0005c703          	lbu	a4,0(a1)
    80008580:	00e78023          	sb	a4,0(a5)
    80008584:	04068e63          	beqz	a3,800085e0 <__memmove+0xfc>
    80008588:	0015c603          	lbu	a2,1(a1)
    8000858c:	00100713          	li	a4,1
    80008590:	00c780a3          	sb	a2,1(a5)
    80008594:	04e68663          	beq	a3,a4,800085e0 <__memmove+0xfc>
    80008598:	0025c603          	lbu	a2,2(a1)
    8000859c:	00200713          	li	a4,2
    800085a0:	00c78123          	sb	a2,2(a5)
    800085a4:	02e68e63          	beq	a3,a4,800085e0 <__memmove+0xfc>
    800085a8:	0035c603          	lbu	a2,3(a1)
    800085ac:	00300713          	li	a4,3
    800085b0:	00c781a3          	sb	a2,3(a5)
    800085b4:	02e68663          	beq	a3,a4,800085e0 <__memmove+0xfc>
    800085b8:	0045c603          	lbu	a2,4(a1)
    800085bc:	00400713          	li	a4,4
    800085c0:	00c78223          	sb	a2,4(a5)
    800085c4:	00e68e63          	beq	a3,a4,800085e0 <__memmove+0xfc>
    800085c8:	0055c603          	lbu	a2,5(a1)
    800085cc:	00500713          	li	a4,5
    800085d0:	00c782a3          	sb	a2,5(a5)
    800085d4:	00e68663          	beq	a3,a4,800085e0 <__memmove+0xfc>
    800085d8:	0065c703          	lbu	a4,6(a1)
    800085dc:	00e78323          	sb	a4,6(a5)
    800085e0:	00813403          	ld	s0,8(sp)
    800085e4:	01010113          	addi	sp,sp,16
    800085e8:	00008067          	ret
    800085ec:	02061713          	slli	a4,a2,0x20
    800085f0:	02075713          	srli	a4,a4,0x20
    800085f4:	00e587b3          	add	a5,a1,a4
    800085f8:	f0f574e3          	bgeu	a0,a5,80008500 <__memmove+0x1c>
    800085fc:	02069613          	slli	a2,a3,0x20
    80008600:	02065613          	srli	a2,a2,0x20
    80008604:	fff64613          	not	a2,a2
    80008608:	00e50733          	add	a4,a0,a4
    8000860c:	00c78633          	add	a2,a5,a2
    80008610:	fff7c683          	lbu	a3,-1(a5)
    80008614:	fff78793          	addi	a5,a5,-1
    80008618:	fff70713          	addi	a4,a4,-1
    8000861c:	00d70023          	sb	a3,0(a4)
    80008620:	fec798e3          	bne	a5,a2,80008610 <__memmove+0x12c>
    80008624:	00813403          	ld	s0,8(sp)
    80008628:	01010113          	addi	sp,sp,16
    8000862c:	00008067          	ret
    80008630:	02069713          	slli	a4,a3,0x20
    80008634:	02075713          	srli	a4,a4,0x20
    80008638:	00170713          	addi	a4,a4,1
    8000863c:	00e50733          	add	a4,a0,a4
    80008640:	00050793          	mv	a5,a0
    80008644:	0005c683          	lbu	a3,0(a1)
    80008648:	00178793          	addi	a5,a5,1
    8000864c:	00158593          	addi	a1,a1,1
    80008650:	fed78fa3          	sb	a3,-1(a5)
    80008654:	fee798e3          	bne	a5,a4,80008644 <__memmove+0x160>
    80008658:	f89ff06f          	j	800085e0 <__memmove+0xfc>

000000008000865c <__mem_free>:
    8000865c:	ff010113          	addi	sp,sp,-16
    80008660:	00813423          	sd	s0,8(sp)
    80008664:	01010413          	addi	s0,sp,16
    80008668:	00002597          	auipc	a1,0x2
    8000866c:	10058593          	addi	a1,a1,256 # 8000a768 <freep>
    80008670:	0005b783          	ld	a5,0(a1)
    80008674:	ff050693          	addi	a3,a0,-16
    80008678:	0007b703          	ld	a4,0(a5)
    8000867c:	00d7fc63          	bgeu	a5,a3,80008694 <__mem_free+0x38>
    80008680:	00e6ee63          	bltu	a3,a4,8000869c <__mem_free+0x40>
    80008684:	00e7fc63          	bgeu	a5,a4,8000869c <__mem_free+0x40>
    80008688:	00070793          	mv	a5,a4
    8000868c:	0007b703          	ld	a4,0(a5)
    80008690:	fed7e8e3          	bltu	a5,a3,80008680 <__mem_free+0x24>
    80008694:	fee7eae3          	bltu	a5,a4,80008688 <__mem_free+0x2c>
    80008698:	fee6f8e3          	bgeu	a3,a4,80008688 <__mem_free+0x2c>
    8000869c:	ff852803          	lw	a6,-8(a0)
    800086a0:	02081613          	slli	a2,a6,0x20
    800086a4:	01c65613          	srli	a2,a2,0x1c
    800086a8:	00c68633          	add	a2,a3,a2
    800086ac:	02c70a63          	beq	a4,a2,800086e0 <__mem_free+0x84>
    800086b0:	fee53823          	sd	a4,-16(a0)
    800086b4:	0087a503          	lw	a0,8(a5)
    800086b8:	02051613          	slli	a2,a0,0x20
    800086bc:	01c65613          	srli	a2,a2,0x1c
    800086c0:	00c78633          	add	a2,a5,a2
    800086c4:	04c68263          	beq	a3,a2,80008708 <__mem_free+0xac>
    800086c8:	00813403          	ld	s0,8(sp)
    800086cc:	00d7b023          	sd	a3,0(a5)
    800086d0:	00f5b023          	sd	a5,0(a1)
    800086d4:	00000513          	li	a0,0
    800086d8:	01010113          	addi	sp,sp,16
    800086dc:	00008067          	ret
    800086e0:	00872603          	lw	a2,8(a4)
    800086e4:	00073703          	ld	a4,0(a4)
    800086e8:	0106083b          	addw	a6,a2,a6
    800086ec:	ff052c23          	sw	a6,-8(a0)
    800086f0:	fee53823          	sd	a4,-16(a0)
    800086f4:	0087a503          	lw	a0,8(a5)
    800086f8:	02051613          	slli	a2,a0,0x20
    800086fc:	01c65613          	srli	a2,a2,0x1c
    80008700:	00c78633          	add	a2,a5,a2
    80008704:	fcc692e3          	bne	a3,a2,800086c8 <__mem_free+0x6c>
    80008708:	00813403          	ld	s0,8(sp)
    8000870c:	0105053b          	addw	a0,a0,a6
    80008710:	00a7a423          	sw	a0,8(a5)
    80008714:	00e7b023          	sd	a4,0(a5)
    80008718:	00f5b023          	sd	a5,0(a1)
    8000871c:	00000513          	li	a0,0
    80008720:	01010113          	addi	sp,sp,16
    80008724:	00008067          	ret

0000000080008728 <__mem_alloc>:
    80008728:	fc010113          	addi	sp,sp,-64
    8000872c:	02813823          	sd	s0,48(sp)
    80008730:	02913423          	sd	s1,40(sp)
    80008734:	03213023          	sd	s2,32(sp)
    80008738:	01513423          	sd	s5,8(sp)
    8000873c:	02113c23          	sd	ra,56(sp)
    80008740:	01313c23          	sd	s3,24(sp)
    80008744:	01413823          	sd	s4,16(sp)
    80008748:	01613023          	sd	s6,0(sp)
    8000874c:	04010413          	addi	s0,sp,64
    80008750:	00002a97          	auipc	s5,0x2
    80008754:	018a8a93          	addi	s5,s5,24 # 8000a768 <freep>
    80008758:	00f50913          	addi	s2,a0,15
    8000875c:	000ab683          	ld	a3,0(s5)
    80008760:	00495913          	srli	s2,s2,0x4
    80008764:	0019049b          	addiw	s1,s2,1
    80008768:	00048913          	mv	s2,s1
    8000876c:	0c068c63          	beqz	a3,80008844 <__mem_alloc+0x11c>
    80008770:	0006b503          	ld	a0,0(a3)
    80008774:	00852703          	lw	a4,8(a0)
    80008778:	10977063          	bgeu	a4,s1,80008878 <__mem_alloc+0x150>
    8000877c:	000017b7          	lui	a5,0x1
    80008780:	0009099b          	sext.w	s3,s2
    80008784:	0af4e863          	bltu	s1,a5,80008834 <__mem_alloc+0x10c>
    80008788:	02099a13          	slli	s4,s3,0x20
    8000878c:	01ca5a13          	srli	s4,s4,0x1c
    80008790:	fff00b13          	li	s6,-1
    80008794:	0100006f          	j	800087a4 <__mem_alloc+0x7c>
    80008798:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000879c:	00852703          	lw	a4,8(a0)
    800087a0:	04977463          	bgeu	a4,s1,800087e8 <__mem_alloc+0xc0>
    800087a4:	00050793          	mv	a5,a0
    800087a8:	fea698e3          	bne	a3,a0,80008798 <__mem_alloc+0x70>
    800087ac:	000a0513          	mv	a0,s4
    800087b0:	00000097          	auipc	ra,0x0
    800087b4:	1f0080e7          	jalr	496(ra) # 800089a0 <kvmincrease>
    800087b8:	00050793          	mv	a5,a0
    800087bc:	01050513          	addi	a0,a0,16
    800087c0:	07678e63          	beq	a5,s6,8000883c <__mem_alloc+0x114>
    800087c4:	0137a423          	sw	s3,8(a5)
    800087c8:	00000097          	auipc	ra,0x0
    800087cc:	e94080e7          	jalr	-364(ra) # 8000865c <__mem_free>
    800087d0:	000ab783          	ld	a5,0(s5)
    800087d4:	06078463          	beqz	a5,8000883c <__mem_alloc+0x114>
    800087d8:	0007b503          	ld	a0,0(a5)
    800087dc:	00078693          	mv	a3,a5
    800087e0:	00852703          	lw	a4,8(a0)
    800087e4:	fc9760e3          	bltu	a4,s1,800087a4 <__mem_alloc+0x7c>
    800087e8:	08e48263          	beq	s1,a4,8000886c <__mem_alloc+0x144>
    800087ec:	4127073b          	subw	a4,a4,s2
    800087f0:	02071693          	slli	a3,a4,0x20
    800087f4:	01c6d693          	srli	a3,a3,0x1c
    800087f8:	00e52423          	sw	a4,8(a0)
    800087fc:	00d50533          	add	a0,a0,a3
    80008800:	01252423          	sw	s2,8(a0)
    80008804:	00fab023          	sd	a5,0(s5)
    80008808:	01050513          	addi	a0,a0,16
    8000880c:	03813083          	ld	ra,56(sp)
    80008810:	03013403          	ld	s0,48(sp)
    80008814:	02813483          	ld	s1,40(sp)
    80008818:	02013903          	ld	s2,32(sp)
    8000881c:	01813983          	ld	s3,24(sp)
    80008820:	01013a03          	ld	s4,16(sp)
    80008824:	00813a83          	ld	s5,8(sp)
    80008828:	00013b03          	ld	s6,0(sp)
    8000882c:	04010113          	addi	sp,sp,64
    80008830:	00008067          	ret
    80008834:	000019b7          	lui	s3,0x1
    80008838:	f51ff06f          	j	80008788 <__mem_alloc+0x60>
    8000883c:	00000513          	li	a0,0
    80008840:	fcdff06f          	j	8000880c <__mem_alloc+0xe4>
    80008844:	00003797          	auipc	a5,0x3
    80008848:	1cc78793          	addi	a5,a5,460 # 8000ba10 <base>
    8000884c:	00078513          	mv	a0,a5
    80008850:	00fab023          	sd	a5,0(s5)
    80008854:	00f7b023          	sd	a5,0(a5)
    80008858:	00000713          	li	a4,0
    8000885c:	00003797          	auipc	a5,0x3
    80008860:	1a07ae23          	sw	zero,444(a5) # 8000ba18 <base+0x8>
    80008864:	00050693          	mv	a3,a0
    80008868:	f11ff06f          	j	80008778 <__mem_alloc+0x50>
    8000886c:	00053703          	ld	a4,0(a0)
    80008870:	00e7b023          	sd	a4,0(a5)
    80008874:	f91ff06f          	j	80008804 <__mem_alloc+0xdc>
    80008878:	00068793          	mv	a5,a3
    8000887c:	f6dff06f          	j	800087e8 <__mem_alloc+0xc0>

0000000080008880 <__putc>:
    80008880:	fe010113          	addi	sp,sp,-32
    80008884:	00813823          	sd	s0,16(sp)
    80008888:	00113c23          	sd	ra,24(sp)
    8000888c:	02010413          	addi	s0,sp,32
    80008890:	00050793          	mv	a5,a0
    80008894:	fef40593          	addi	a1,s0,-17
    80008898:	00100613          	li	a2,1
    8000889c:	00000513          	li	a0,0
    800088a0:	fef407a3          	sb	a5,-17(s0)
    800088a4:	fffff097          	auipc	ra,0xfffff
    800088a8:	918080e7          	jalr	-1768(ra) # 800071bc <console_write>
    800088ac:	01813083          	ld	ra,24(sp)
    800088b0:	01013403          	ld	s0,16(sp)
    800088b4:	02010113          	addi	sp,sp,32
    800088b8:	00008067          	ret

00000000800088bc <__getc>:
    800088bc:	fe010113          	addi	sp,sp,-32
    800088c0:	00813823          	sd	s0,16(sp)
    800088c4:	00113c23          	sd	ra,24(sp)
    800088c8:	02010413          	addi	s0,sp,32
    800088cc:	fe840593          	addi	a1,s0,-24
    800088d0:	00100613          	li	a2,1
    800088d4:	00000513          	li	a0,0
    800088d8:	fffff097          	auipc	ra,0xfffff
    800088dc:	8c4080e7          	jalr	-1852(ra) # 8000719c <console_read>
    800088e0:	fe844503          	lbu	a0,-24(s0)
    800088e4:	01813083          	ld	ra,24(sp)
    800088e8:	01013403          	ld	s0,16(sp)
    800088ec:	02010113          	addi	sp,sp,32
    800088f0:	00008067          	ret

00000000800088f4 <console_handler>:
    800088f4:	fe010113          	addi	sp,sp,-32
    800088f8:	00813823          	sd	s0,16(sp)
    800088fc:	00113c23          	sd	ra,24(sp)
    80008900:	00913423          	sd	s1,8(sp)
    80008904:	02010413          	addi	s0,sp,32
    80008908:	14202773          	csrr	a4,scause
    8000890c:	100027f3          	csrr	a5,sstatus
    80008910:	0027f793          	andi	a5,a5,2
    80008914:	06079e63          	bnez	a5,80008990 <console_handler+0x9c>
    80008918:	00074c63          	bltz	a4,80008930 <console_handler+0x3c>
    8000891c:	01813083          	ld	ra,24(sp)
    80008920:	01013403          	ld	s0,16(sp)
    80008924:	00813483          	ld	s1,8(sp)
    80008928:	02010113          	addi	sp,sp,32
    8000892c:	00008067          	ret
    80008930:	0ff77713          	andi	a4,a4,255
    80008934:	00900793          	li	a5,9
    80008938:	fef712e3          	bne	a4,a5,8000891c <console_handler+0x28>
    8000893c:	ffffe097          	auipc	ra,0xffffe
    80008940:	4b8080e7          	jalr	1208(ra) # 80006df4 <plic_claim>
    80008944:	00a00793          	li	a5,10
    80008948:	00050493          	mv	s1,a0
    8000894c:	02f50c63          	beq	a0,a5,80008984 <console_handler+0x90>
    80008950:	fc0506e3          	beqz	a0,8000891c <console_handler+0x28>
    80008954:	00050593          	mv	a1,a0
    80008958:	00001517          	auipc	a0,0x1
    8000895c:	d7850513          	addi	a0,a0,-648 # 800096d0 <_ZZ12printIntegermE6digits+0xe0>
    80008960:	fffff097          	auipc	ra,0xfffff
    80008964:	8d8080e7          	jalr	-1832(ra) # 80007238 <__printf>
    80008968:	01013403          	ld	s0,16(sp)
    8000896c:	01813083          	ld	ra,24(sp)
    80008970:	00048513          	mv	a0,s1
    80008974:	00813483          	ld	s1,8(sp)
    80008978:	02010113          	addi	sp,sp,32
    8000897c:	ffffe317          	auipc	t1,0xffffe
    80008980:	4b030067          	jr	1200(t1) # 80006e2c <plic_complete>
    80008984:	fffff097          	auipc	ra,0xfffff
    80008988:	1bc080e7          	jalr	444(ra) # 80007b40 <uartintr>
    8000898c:	fddff06f          	j	80008968 <console_handler+0x74>
    80008990:	00001517          	auipc	a0,0x1
    80008994:	e4050513          	addi	a0,a0,-448 # 800097d0 <digits+0x78>
    80008998:	fffff097          	auipc	ra,0xfffff
    8000899c:	844080e7          	jalr	-1980(ra) # 800071dc <panic>

00000000800089a0 <kvmincrease>:
    800089a0:	fe010113          	addi	sp,sp,-32
    800089a4:	01213023          	sd	s2,0(sp)
    800089a8:	00001937          	lui	s2,0x1
    800089ac:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    800089b0:	00813823          	sd	s0,16(sp)
    800089b4:	00113c23          	sd	ra,24(sp)
    800089b8:	00913423          	sd	s1,8(sp)
    800089bc:	02010413          	addi	s0,sp,32
    800089c0:	01250933          	add	s2,a0,s2
    800089c4:	00c95913          	srli	s2,s2,0xc
    800089c8:	02090863          	beqz	s2,800089f8 <kvmincrease+0x58>
    800089cc:	00000493          	li	s1,0
    800089d0:	00148493          	addi	s1,s1,1
    800089d4:	fffff097          	auipc	ra,0xfffff
    800089d8:	4bc080e7          	jalr	1212(ra) # 80007e90 <kalloc>
    800089dc:	fe991ae3          	bne	s2,s1,800089d0 <kvmincrease+0x30>
    800089e0:	01813083          	ld	ra,24(sp)
    800089e4:	01013403          	ld	s0,16(sp)
    800089e8:	00813483          	ld	s1,8(sp)
    800089ec:	00013903          	ld	s2,0(sp)
    800089f0:	02010113          	addi	sp,sp,32
    800089f4:	00008067          	ret
    800089f8:	01813083          	ld	ra,24(sp)
    800089fc:	01013403          	ld	s0,16(sp)
    80008a00:	00813483          	ld	s1,8(sp)
    80008a04:	00013903          	ld	s2,0(sp)
    80008a08:	00000513          	li	a0,0
    80008a0c:	02010113          	addi	sp,sp,32
    80008a10:	00008067          	ret
	...
