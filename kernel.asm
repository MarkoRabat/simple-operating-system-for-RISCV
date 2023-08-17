
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	72813103          	ld	sp,1832(sp) # 8000a728 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	600060ef          	jal	ra,8000661c <start>

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
    80001084:	0e0050ef          	jal	ra,80006164 <_ZN5Riscv20handleSupervisorTrapEv>

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
#include "../h/print.hpp"
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
    __asm__ volatile("sd a1, %0" :: "m" (x));
    80001138:	feb43423          	sd	a1,-24(s0)
    x = 0x01;
    8000113c:	00100793          	li	a5,1
    80001140:	fef43423          	sd	a5,-24(s0)
    __asm__ volatile("ld a0, %0" :: "m" (x));
    80001144:	fe843503          	ld	a0,-24(s0)
    __asm__ volatile ("ecall");
    80001148:	00000073          	ecall
    return nullptr;
}
    8000114c:	00000513          	li	a0,0
    80001150:	01813403          	ld	s0,24(sp)
    80001154:	02010113          	addi	sp,sp,32
    80001158:	00008067          	ret

000000008000115c <_Z8mem_freePv>:

int mem_free(void*) {
    8000115c:	ff010113          	addi	sp,sp,-16
    80001160:	00813423          	sd	s0,8(sp)
    80001164:	01010413          	addi	s0,sp,16

    __asm__ volatile ("ecall");
    80001168:	00000073          	ecall
    return 0;
}
    8000116c:	00000513          	li	a0,0
    80001170:	00813403          	ld	s0,8(sp)
    80001174:	01010113          	addi	sp,sp,16
    80001178:	00008067          	ret

000000008000117c <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create (
        thread_t* handle,
        void (*start_routine) (void*),
        void* arg) {
    8000117c:	ff010113          	addi	sp,sp,-16
    80001180:	00813423          	sd	s0,8(sp)
    80001184:	01010413          	addi	s0,sp,16

    __asm__ volatile ("ecall");
    80001188:	00000073          	ecall
    return 0;
}
    8000118c:	00000513          	li	a0,0
    80001190:	00813403          	ld	s0,8(sp)
    80001194:	01010113          	addi	sp,sp,16
    80001198:	00008067          	ret

000000008000119c <_Z8sem_openPP4_semj>:

int sem_open (
        sem_t* handle,
        unsigned init ) {
    8000119c:	ff010113          	addi	sp,sp,-16
    800011a0:	00813423          	sd	s0,8(sp)
    800011a4:	01010413          	addi	s0,sp,16

    __asm__ volatile ("ecall");
    800011a8:	00000073          	ecall
    return 0;
}
    800011ac:	00000513          	li	a0,0
    800011b0:	00813403          	ld	s0,8(sp)
    800011b4:	01010113          	addi	sp,sp,16
    800011b8:	00008067          	ret

00000000800011bc <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    800011bc:	ff010113          	addi	sp,sp,-16
    800011c0:	00813423          	sd	s0,8(sp)
    800011c4:	01010413          	addi	s0,sp,16

    __asm__ volatile ("ecall");
    800011c8:	00000073          	ecall
    return 0;
}
    800011cc:	00000513          	li	a0,0
    800011d0:	00813403          	ld	s0,8(sp)
    800011d4:	01010113          	addi	sp,sp,16
    800011d8:	00008067          	ret

00000000800011dc <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    800011dc:	ff010113          	addi	sp,sp,-16
    800011e0:	00813423          	sd	s0,8(sp)
    800011e4:	01010413          	addi	s0,sp,16

    __asm__ volatile ("ecall");
    800011e8:	00000073          	ecall
    return 0;
}
    800011ec:	00000513          	li	a0,0
    800011f0:	00813403          	ld	s0,8(sp)
    800011f4:	01010113          	addi	sp,sp,16
    800011f8:	00008067          	ret

00000000800011fc <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    800011fc:	ff010113          	addi	sp,sp,-16
    80001200:	00813423          	sd	s0,8(sp)
    80001204:	01010413          	addi	s0,sp,16

    __asm__ volatile ("ecall");
    80001208:	00000073          	ecall
    return 0;
}
    8000120c:	00000513          	li	a0,0
    80001210:	00813403          	ld	s0,8(sp)
    80001214:	01010113          	addi	sp,sp,16
    80001218:	00008067          	ret

000000008000121c <_Z10time_sleepm>:

int time_sleep(time_t) {
    8000121c:	ff010113          	addi	sp,sp,-16
    80001220:	00813423          	sd	s0,8(sp)
    80001224:	01010413          	addi	s0,sp,16

    __asm__ volatile ("ecall");
    80001228:	00000073          	ecall
    return 0;
}
    8000122c:	00000513          	li	a0,0
    80001230:	00813403          	ld	s0,8(sp)
    80001234:	01010113          	addi	sp,sp,16
    80001238:	00008067          	ret

000000008000123c <_Z4getcv>:

char getc() {
    8000123c:	ff010113          	addi	sp,sp,-16
    80001240:	00813423          	sd	s0,8(sp)
    80001244:	01010413          	addi	s0,sp,16

    __asm__ volatile ("ecall");
    80001248:	00000073          	ecall
    return '\0';
}
    8000124c:	00000513          	li	a0,0
    80001250:	00813403          	ld	s0,8(sp)
    80001254:	01010113          	addi	sp,sp,16
    80001258:	00008067          	ret

000000008000125c <_Z4putcc>:

void putc(char) {
    8000125c:	ff010113          	addi	sp,sp,-16
    80001260:	00813423          	sd	s0,8(sp)
    80001264:	01010413          	addi	s0,sp,16

    __asm__ volatile ("ecall");
    80001268:	00000073          	ecall
}
    8000126c:	00813403          	ld	s0,8(sp)
    80001270:	01010113          	addi	sp,sp,16
    80001274:	00008067          	ret

0000000080001278 <_Z5main2v>:
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"

int main2()
{
    80001278:	fb010113          	addi	sp,sp,-80
    8000127c:	04113423          	sd	ra,72(sp)
    80001280:	04813023          	sd	s0,64(sp)
    80001284:	02913c23          	sd	s1,56(sp)
    80001288:	03213823          	sd	s2,48(sp)
    8000128c:	05010413          	addi	s0,sp,80
    TCB *threads[5];

    threads[0] = TCB::createThread(nullptr);
    80001290:	00000513          	li	a0,0
    80001294:	00000097          	auipc	ra,0x0
    80001298:	64c080e7          	jalr	1612(ra) # 800018e0 <_ZN3TCB12createThreadEPFvvE>
    8000129c:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    800012a0:	00009797          	auipc	a5,0x9
    800012a4:	4907b783          	ld	a5,1168(a5) # 8000a730 <_GLOBAL_OFFSET_TABLE_+0x48>
    800012a8:	00a7b023          	sd	a0,0(a5)

    threads[1] = TCB::createThread(workerBodyA);
    800012ac:	00009517          	auipc	a0,0x9
    800012b0:	47453503          	ld	a0,1140(a0) # 8000a720 <_GLOBAL_OFFSET_TABLE_+0x38>
    800012b4:	00000097          	auipc	ra,0x0
    800012b8:	62c080e7          	jalr	1580(ra) # 800018e0 <_ZN3TCB12createThreadEPFvvE>
    800012bc:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    800012c0:	00008517          	auipc	a0,0x8
    800012c4:	d6050513          	addi	a0,a0,-672 # 80009020 <CONSOLE_STATUS+0x10>
    800012c8:	00005097          	auipc	ra,0x5
    800012cc:	1dc080e7          	jalr	476(ra) # 800064a4 <_Z11printStringPKc>
    threads[2] = TCB::createThread(workerBodyB);
    800012d0:	00009517          	auipc	a0,0x9
    800012d4:	43853503          	ld	a0,1080(a0) # 8000a708 <_GLOBAL_OFFSET_TABLE_+0x20>
    800012d8:	00000097          	auipc	ra,0x0
    800012dc:	608080e7          	jalr	1544(ra) # 800018e0 <_ZN3TCB12createThreadEPFvvE>
    800012e0:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    800012e4:	00008517          	auipc	a0,0x8
    800012e8:	d5450513          	addi	a0,a0,-684 # 80009038 <CONSOLE_STATUS+0x28>
    800012ec:	00005097          	auipc	ra,0x5
    800012f0:	1b8080e7          	jalr	440(ra) # 800064a4 <_Z11printStringPKc>
    threads[3] = TCB::createThread(workerBodyC);
    800012f4:	00009517          	auipc	a0,0x9
    800012f8:	44c53503          	ld	a0,1100(a0) # 8000a740 <_GLOBAL_OFFSET_TABLE_+0x58>
    800012fc:	00000097          	auipc	ra,0x0
    80001300:	5e4080e7          	jalr	1508(ra) # 800018e0 <_ZN3TCB12createThreadEPFvvE>
    80001304:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    80001308:	00008517          	auipc	a0,0x8
    8000130c:	d4850513          	addi	a0,a0,-696 # 80009050 <CONSOLE_STATUS+0x40>
    80001310:	00005097          	auipc	ra,0x5
    80001314:	194080e7          	jalr	404(ra) # 800064a4 <_Z11printStringPKc>
    threads[4] = TCB::createThread(workerBodyD);
    80001318:	00009517          	auipc	a0,0x9
    8000131c:	43053503          	ld	a0,1072(a0) # 8000a748 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001320:	00000097          	auipc	ra,0x0
    80001324:	5c0080e7          	jalr	1472(ra) # 800018e0 <_ZN3TCB12createThreadEPFvvE>
    80001328:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    8000132c:	00008517          	auipc	a0,0x8
    80001330:	d3c50513          	addi	a0,a0,-708 # 80009068 <CONSOLE_STATUS+0x58>
    80001334:	00005097          	auipc	ra,0x5
    80001338:	170080e7          	jalr	368(ra) # 800064a4 <_Z11printStringPKc>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    8000133c:	00009797          	auipc	a5,0x9
    80001340:	3c47b783          	ld	a5,964(a5) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x18>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001344:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001348:	00200793          	li	a5,2
    8000134c:	1007a073          	csrs	sstatus,a5
}
    80001350:	00c0006f          	j	8000135c <_Z5main2v+0xe4>
    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        TCB::yield();
    80001354:	00000097          	auipc	ra,0x0
    80001358:	654080e7          	jalr	1620(ra) # 800019a8 <_ZN3TCB5yieldEv>
    while (!(threads[1]->isFinished() &&
    8000135c:	fc043783          	ld	a5,-64(s0)
class TCB
{
public:
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    80001360:	0287c783          	lbu	a5,40(a5)
    80001364:	fe0788e3          	beqz	a5,80001354 <_Z5main2v+0xdc>
             threads[2]->isFinished() &&
    80001368:	fc843783          	ld	a5,-56(s0)
    8000136c:	0287c783          	lbu	a5,40(a5)
    while (!(threads[1]->isFinished() &&
    80001370:	fe0782e3          	beqz	a5,80001354 <_Z5main2v+0xdc>
             threads[3]->isFinished() &&
    80001374:	fd043783          	ld	a5,-48(s0)
    80001378:	0287c783          	lbu	a5,40(a5)
             threads[2]->isFinished() &&
    8000137c:	fc078ce3          	beqz	a5,80001354 <_Z5main2v+0xdc>
             threads[4]->isFinished()))
    80001380:	fd843783          	ld	a5,-40(s0)
    80001384:	0287c783          	lbu	a5,40(a5)
    while (!(threads[1]->isFinished() &&
    80001388:	fc0786e3          	beqz	a5,80001354 <_Z5main2v+0xdc>
    8000138c:	fb840493          	addi	s1,s0,-72
    80001390:	0140006f          	j	800013a4 <_Z5main2v+0x12c>
    }

    for (auto &thread: threads)
    {
        delete thread;
    80001394:	00090513          	mv	a0,s2
    80001398:	00002097          	auipc	ra,0x2
    8000139c:	d1c080e7          	jalr	-740(ra) # 800030b4 <_ZdlPv>
    for (auto &thread: threads)
    800013a0:	00848493          	addi	s1,s1,8
    800013a4:	fe040793          	addi	a5,s0,-32
    800013a8:	02f48063          	beq	s1,a5,800013c8 <_Z5main2v+0x150>
        delete thread;
    800013ac:	0004b903          	ld	s2,0(s1)
    800013b0:	fe0908e3          	beqz	s2,800013a0 <_Z5main2v+0x128>
    ~TCB() { delete[] stack; }
    800013b4:	00893503          	ld	a0,8(s2)
    800013b8:	fc050ee3          	beqz	a0,80001394 <_Z5main2v+0x11c>
    800013bc:	00002097          	auipc	ra,0x2
    800013c0:	d20080e7          	jalr	-736(ra) # 800030dc <_ZdaPv>
    800013c4:	fd1ff06f          	j	80001394 <_Z5main2v+0x11c>
    }
    printString("Finished\n");
    800013c8:	00008517          	auipc	a0,0x8
    800013cc:	cb850513          	addi	a0,a0,-840 # 80009080 <CONSOLE_STATUS+0x70>
    800013d0:	00005097          	auipc	ra,0x5
    800013d4:	0d4080e7          	jalr	212(ra) # 800064a4 <_Z11printStringPKc>

    return 0;
}
    800013d8:	00000513          	li	a0,0
    800013dc:	04813083          	ld	ra,72(sp)
    800013e0:	04013403          	ld	s0,64(sp)
    800013e4:	03813483          	ld	s1,56(sp)
    800013e8:	03013903          	ld	s2,48(sp)
    800013ec:	05010113          	addi	sp,sp,80
    800013f0:	00008067          	ret

00000000800013f4 <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    800013f4:	fe010113          	addi	sp,sp,-32
    800013f8:	00113c23          	sd	ra,24(sp)
    800013fc:	00813823          	sd	s0,16(sp)
    80001400:	00913423          	sd	s1,8(sp)
    80001404:	01213023          	sd	s2,0(sp)
    80001408:	02010413          	addi	s0,sp,32
    8000140c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001410:	00100793          	li	a5,1
    80001414:	02a7f863          	bgeu	a5,a0,80001444 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { TCB::yield(); }
    80001418:	00a00793          	li	a5,10
    8000141c:	02f577b3          	remu	a5,a0,a5
    80001420:	02078e63          	beqz	a5,8000145c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001424:	fff48513          	addi	a0,s1,-1
    80001428:	00000097          	auipc	ra,0x0
    8000142c:	fcc080e7          	jalr	-52(ra) # 800013f4 <_ZL9fibonaccim>
    80001430:	00050913          	mv	s2,a0
    80001434:	ffe48513          	addi	a0,s1,-2
    80001438:	00000097          	auipc	ra,0x0
    8000143c:	fbc080e7          	jalr	-68(ra) # 800013f4 <_ZL9fibonaccim>
    80001440:	00a90533          	add	a0,s2,a0
}
    80001444:	01813083          	ld	ra,24(sp)
    80001448:	01013403          	ld	s0,16(sp)
    8000144c:	00813483          	ld	s1,8(sp)
    80001450:	00013903          	ld	s2,0(sp)
    80001454:	02010113          	addi	sp,sp,32
    80001458:	00008067          	ret
    if (n % 10 == 0) { TCB::yield(); }
    8000145c:	00000097          	auipc	ra,0x0
    80001460:	54c080e7          	jalr	1356(ra) # 800019a8 <_ZN3TCB5yieldEv>
    80001464:	fc1ff06f          	j	80001424 <_ZL9fibonaccim+0x30>

0000000080001468 <_Z11workerBodyAv>:
{
    80001468:	fe010113          	addi	sp,sp,-32
    8000146c:	00113c23          	sd	ra,24(sp)
    80001470:	00813823          	sd	s0,16(sp)
    80001474:	00913423          	sd	s1,8(sp)
    80001478:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    8000147c:	00000493          	li	s1,0
    80001480:	0300006f          	j	800014b0 <_Z11workerBodyAv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    80001484:	00168693          	addi	a3,a3,1
    80001488:	000027b7          	lui	a5,0x2
    8000148c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001490:	00d7ee63          	bltu	a5,a3,800014ac <_Z11workerBodyAv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001494:	00000713          	li	a4,0
    80001498:	000077b7          	lui	a5,0x7
    8000149c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800014a0:	fee7e2e3          	bltu	a5,a4,80001484 <_Z11workerBodyAv+0x1c>
    800014a4:	00170713          	addi	a4,a4,1
    800014a8:	ff1ff06f          	j	80001498 <_Z11workerBodyAv+0x30>
    for (uint64 i = 0; i < 10; i++)
    800014ac:	00148493          	addi	s1,s1,1
    800014b0:	00900793          	li	a5,9
    800014b4:	0297ec63          	bltu	a5,s1,800014ec <_Z11workerBodyAv+0x84>
        printString("A: i=");
    800014b8:	00008517          	auipc	a0,0x8
    800014bc:	bd850513          	addi	a0,a0,-1064 # 80009090 <CONSOLE_STATUS+0x80>
    800014c0:	00005097          	auipc	ra,0x5
    800014c4:	fe4080e7          	jalr	-28(ra) # 800064a4 <_Z11printStringPKc>
        printInteger(i);
    800014c8:	00048513          	mv	a0,s1
    800014cc:	00005097          	auipc	ra,0x5
    800014d0:	048080e7          	jalr	72(ra) # 80006514 <_Z12printIntegerm>
        printString("\n");
    800014d4:	00008517          	auipc	a0,0x8
    800014d8:	c4c50513          	addi	a0,a0,-948 # 80009120 <CONSOLE_STATUS+0x110>
    800014dc:	00005097          	auipc	ra,0x5
    800014e0:	fc8080e7          	jalr	-56(ra) # 800064a4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800014e4:	00000693          	li	a3,0
    800014e8:	fa1ff06f          	j	80001488 <_Z11workerBodyAv+0x20>
}
    800014ec:	01813083          	ld	ra,24(sp)
    800014f0:	01013403          	ld	s0,16(sp)
    800014f4:	00813483          	ld	s1,8(sp)
    800014f8:	02010113          	addi	sp,sp,32
    800014fc:	00008067          	ret

0000000080001500 <_Z11workerBodyBv>:
{
    80001500:	fe010113          	addi	sp,sp,-32
    80001504:	00113c23          	sd	ra,24(sp)
    80001508:	00813823          	sd	s0,16(sp)
    8000150c:	00913423          	sd	s1,8(sp)
    80001510:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    80001514:	00000493          	li	s1,0
    80001518:	0300006f          	j	80001548 <_Z11workerBodyBv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    8000151c:	00168693          	addi	a3,a3,1
    80001520:	000027b7          	lui	a5,0x2
    80001524:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001528:	00d7ee63          	bltu	a5,a3,80001544 <_Z11workerBodyBv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    8000152c:	00000713          	li	a4,0
    80001530:	000077b7          	lui	a5,0x7
    80001534:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001538:	fee7e2e3          	bltu	a5,a4,8000151c <_Z11workerBodyBv+0x1c>
    8000153c:	00170713          	addi	a4,a4,1
    80001540:	ff1ff06f          	j	80001530 <_Z11workerBodyBv+0x30>
    for (uint64 i = 0; i < 16; i++)
    80001544:	00148493          	addi	s1,s1,1
    80001548:	00f00793          	li	a5,15
    8000154c:	0297ec63          	bltu	a5,s1,80001584 <_Z11workerBodyBv+0x84>
        printString("B: i=");
    80001550:	00008517          	auipc	a0,0x8
    80001554:	b4850513          	addi	a0,a0,-1208 # 80009098 <CONSOLE_STATUS+0x88>
    80001558:	00005097          	auipc	ra,0x5
    8000155c:	f4c080e7          	jalr	-180(ra) # 800064a4 <_Z11printStringPKc>
        printInteger(i);
    80001560:	00048513          	mv	a0,s1
    80001564:	00005097          	auipc	ra,0x5
    80001568:	fb0080e7          	jalr	-80(ra) # 80006514 <_Z12printIntegerm>
        printString("\n");
    8000156c:	00008517          	auipc	a0,0x8
    80001570:	bb450513          	addi	a0,a0,-1100 # 80009120 <CONSOLE_STATUS+0x110>
    80001574:	00005097          	auipc	ra,0x5
    80001578:	f30080e7          	jalr	-208(ra) # 800064a4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    8000157c:	00000693          	li	a3,0
    80001580:	fa1ff06f          	j	80001520 <_Z11workerBodyBv+0x20>
}
    80001584:	01813083          	ld	ra,24(sp)
    80001588:	01013403          	ld	s0,16(sp)
    8000158c:	00813483          	ld	s1,8(sp)
    80001590:	02010113          	addi	sp,sp,32
    80001594:	00008067          	ret

0000000080001598 <_Z11workerBodyCv>:

void workerBodyC()
{
    80001598:	fe010113          	addi	sp,sp,-32
    8000159c:	00113c23          	sd	ra,24(sp)
    800015a0:	00813823          	sd	s0,16(sp)
    800015a4:	00913423          	sd	s1,8(sp)
    800015a8:	01213023          	sd	s2,0(sp)
    800015ac:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800015b0:	00000493          	li	s1,0
    800015b4:	0380006f          	j	800015ec <_Z11workerBodyCv+0x54>
    for (; i < 3; i++)
    {
        printString("C: i=");
    800015b8:	00008517          	auipc	a0,0x8
    800015bc:	ae850513          	addi	a0,a0,-1304 # 800090a0 <CONSOLE_STATUS+0x90>
    800015c0:	00005097          	auipc	ra,0x5
    800015c4:	ee4080e7          	jalr	-284(ra) # 800064a4 <_Z11printStringPKc>
        printInteger(i);
    800015c8:	00048513          	mv	a0,s1
    800015cc:	00005097          	auipc	ra,0x5
    800015d0:	f48080e7          	jalr	-184(ra) # 80006514 <_Z12printIntegerm>
        printString("\n");
    800015d4:	00008517          	auipc	a0,0x8
    800015d8:	b4c50513          	addi	a0,a0,-1204 # 80009120 <CONSOLE_STATUS+0x110>
    800015dc:	00005097          	auipc	ra,0x5
    800015e0:	ec8080e7          	jalr	-312(ra) # 800064a4 <_Z11printStringPKc>
    for (; i < 3; i++)
    800015e4:	0014849b          	addiw	s1,s1,1
    800015e8:	0ff4f493          	andi	s1,s1,255
    800015ec:	00200793          	li	a5,2
    800015f0:	fc97f4e3          	bgeu	a5,s1,800015b8 <_Z11workerBodyCv+0x20>
    }

    printString("C: yield\n");
    800015f4:	00008517          	auipc	a0,0x8
    800015f8:	ab450513          	addi	a0,a0,-1356 # 800090a8 <CONSOLE_STATUS+0x98>
    800015fc:	00005097          	auipc	ra,0x5
    80001600:	ea8080e7          	jalr	-344(ra) # 800064a4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001604:	00700313          	li	t1,7
    TCB::yield();
    80001608:	00000097          	auipc	ra,0x0
    8000160c:	3a0080e7          	jalr	928(ra) # 800019a8 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001610:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001614:	00008517          	auipc	a0,0x8
    80001618:	aa450513          	addi	a0,a0,-1372 # 800090b8 <CONSOLE_STATUS+0xa8>
    8000161c:	00005097          	auipc	ra,0x5
    80001620:	e88080e7          	jalr	-376(ra) # 800064a4 <_Z11printStringPKc>
    printInteger(t1);
    80001624:	00090513          	mv	a0,s2
    80001628:	00005097          	auipc	ra,0x5
    8000162c:	eec080e7          	jalr	-276(ra) # 80006514 <_Z12printIntegerm>
    printString("\n");
    80001630:	00008517          	auipc	a0,0x8
    80001634:	af050513          	addi	a0,a0,-1296 # 80009120 <CONSOLE_STATUS+0x110>
    80001638:	00005097          	auipc	ra,0x5
    8000163c:	e6c080e7          	jalr	-404(ra) # 800064a4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001640:	00c00513          	li	a0,12
    80001644:	00000097          	auipc	ra,0x0
    80001648:	db0080e7          	jalr	-592(ra) # 800013f4 <_ZL9fibonaccim>
    8000164c:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001650:	00008517          	auipc	a0,0x8
    80001654:	a7050513          	addi	a0,a0,-1424 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001658:	00005097          	auipc	ra,0x5
    8000165c:	e4c080e7          	jalr	-436(ra) # 800064a4 <_Z11printStringPKc>
    printInteger(result);
    80001660:	00090513          	mv	a0,s2
    80001664:	00005097          	auipc	ra,0x5
    80001668:	eb0080e7          	jalr	-336(ra) # 80006514 <_Z12printIntegerm>
    printString("\n");
    8000166c:	00008517          	auipc	a0,0x8
    80001670:	ab450513          	addi	a0,a0,-1356 # 80009120 <CONSOLE_STATUS+0x110>
    80001674:	00005097          	auipc	ra,0x5
    80001678:	e30080e7          	jalr	-464(ra) # 800064a4 <_Z11printStringPKc>
    8000167c:	0380006f          	j	800016b4 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    80001680:	00008517          	auipc	a0,0x8
    80001684:	a2050513          	addi	a0,a0,-1504 # 800090a0 <CONSOLE_STATUS+0x90>
    80001688:	00005097          	auipc	ra,0x5
    8000168c:	e1c080e7          	jalr	-484(ra) # 800064a4 <_Z11printStringPKc>
        printInteger(i);
    80001690:	00048513          	mv	a0,s1
    80001694:	00005097          	auipc	ra,0x5
    80001698:	e80080e7          	jalr	-384(ra) # 80006514 <_Z12printIntegerm>
        printString("\n");
    8000169c:	00008517          	auipc	a0,0x8
    800016a0:	a8450513          	addi	a0,a0,-1404 # 80009120 <CONSOLE_STATUS+0x110>
    800016a4:	00005097          	auipc	ra,0x5
    800016a8:	e00080e7          	jalr	-512(ra) # 800064a4 <_Z11printStringPKc>
    for (; i < 6; i++)
    800016ac:	0014849b          	addiw	s1,s1,1
    800016b0:	0ff4f493          	andi	s1,s1,255
    800016b4:	00500793          	li	a5,5
    800016b8:	fc97f4e3          	bgeu	a5,s1,80001680 <_Z11workerBodyCv+0xe8>
    }
//    TCB::yield();
}
    800016bc:	01813083          	ld	ra,24(sp)
    800016c0:	01013403          	ld	s0,16(sp)
    800016c4:	00813483          	ld	s1,8(sp)
    800016c8:	00013903          	ld	s2,0(sp)
    800016cc:	02010113          	addi	sp,sp,32
    800016d0:	00008067          	ret

00000000800016d4 <_Z11workerBodyDv>:

void workerBodyD()
{
    800016d4:	fe010113          	addi	sp,sp,-32
    800016d8:	00113c23          	sd	ra,24(sp)
    800016dc:	00813823          	sd	s0,16(sp)
    800016e0:	00913423          	sd	s1,8(sp)
    800016e4:	01213023          	sd	s2,0(sp)
    800016e8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800016ec:	00a00493          	li	s1,10
    800016f0:	0380006f          	j	80001728 <_Z11workerBodyDv+0x54>
    for (; i < 13; i++)
    {
        printString("D: i=");
    800016f4:	00008517          	auipc	a0,0x8
    800016f8:	9dc50513          	addi	a0,a0,-1572 # 800090d0 <CONSOLE_STATUS+0xc0>
    800016fc:	00005097          	auipc	ra,0x5
    80001700:	da8080e7          	jalr	-600(ra) # 800064a4 <_Z11printStringPKc>
        printInteger(i);
    80001704:	00048513          	mv	a0,s1
    80001708:	00005097          	auipc	ra,0x5
    8000170c:	e0c080e7          	jalr	-500(ra) # 80006514 <_Z12printIntegerm>
        printString("\n");
    80001710:	00008517          	auipc	a0,0x8
    80001714:	a1050513          	addi	a0,a0,-1520 # 80009120 <CONSOLE_STATUS+0x110>
    80001718:	00005097          	auipc	ra,0x5
    8000171c:	d8c080e7          	jalr	-628(ra) # 800064a4 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001720:	0014849b          	addiw	s1,s1,1
    80001724:	0ff4f493          	andi	s1,s1,255
    80001728:	00c00793          	li	a5,12
    8000172c:	fc97f4e3          	bgeu	a5,s1,800016f4 <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    80001730:	00008517          	auipc	a0,0x8
    80001734:	9a850513          	addi	a0,a0,-1624 # 800090d8 <CONSOLE_STATUS+0xc8>
    80001738:	00005097          	auipc	ra,0x5
    8000173c:	d6c080e7          	jalr	-660(ra) # 800064a4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001740:	00500313          	li	t1,5
    TCB::yield();
    80001744:	00000097          	auipc	ra,0x0
    80001748:	264080e7          	jalr	612(ra) # 800019a8 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    8000174c:	01000513          	li	a0,16
    80001750:	00000097          	auipc	ra,0x0
    80001754:	ca4080e7          	jalr	-860(ra) # 800013f4 <_ZL9fibonaccim>
    80001758:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    8000175c:	00008517          	auipc	a0,0x8
    80001760:	98c50513          	addi	a0,a0,-1652 # 800090e8 <CONSOLE_STATUS+0xd8>
    80001764:	00005097          	auipc	ra,0x5
    80001768:	d40080e7          	jalr	-704(ra) # 800064a4 <_Z11printStringPKc>
    printInteger(result);
    8000176c:	00090513          	mv	a0,s2
    80001770:	00005097          	auipc	ra,0x5
    80001774:	da4080e7          	jalr	-604(ra) # 80006514 <_Z12printIntegerm>
    printString("\n");
    80001778:	00008517          	auipc	a0,0x8
    8000177c:	9a850513          	addi	a0,a0,-1624 # 80009120 <CONSOLE_STATUS+0x110>
    80001780:	00005097          	auipc	ra,0x5
    80001784:	d24080e7          	jalr	-732(ra) # 800064a4 <_Z11printStringPKc>
    80001788:	0380006f          	j	800017c0 <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    8000178c:	00008517          	auipc	a0,0x8
    80001790:	94450513          	addi	a0,a0,-1724 # 800090d0 <CONSOLE_STATUS+0xc0>
    80001794:	00005097          	auipc	ra,0x5
    80001798:	d10080e7          	jalr	-752(ra) # 800064a4 <_Z11printStringPKc>
        printInteger(i);
    8000179c:	00048513          	mv	a0,s1
    800017a0:	00005097          	auipc	ra,0x5
    800017a4:	d74080e7          	jalr	-652(ra) # 80006514 <_Z12printIntegerm>
        printString("\n");
    800017a8:	00008517          	auipc	a0,0x8
    800017ac:	97850513          	addi	a0,a0,-1672 # 80009120 <CONSOLE_STATUS+0x110>
    800017b0:	00005097          	auipc	ra,0x5
    800017b4:	cf4080e7          	jalr	-780(ra) # 800064a4 <_Z11printStringPKc>
    for (; i < 16; i++)
    800017b8:	0014849b          	addiw	s1,s1,1
    800017bc:	0ff4f493          	andi	s1,s1,255
    800017c0:	00f00793          	li	a5,15
    800017c4:	fc97f4e3          	bgeu	a5,s1,8000178c <_Z11workerBodyDv+0xb8>
    }
//    TCB::yield();
    800017c8:	01813083          	ld	ra,24(sp)
    800017cc:	01013403          	ld	s0,16(sp)
    800017d0:	00813483          	ld	s1,8(sp)
    800017d4:	00013903          	ld	s2,0(sp)
    800017d8:	02010113          	addi	sp,sp,32
    800017dc:	00008067          	ret

00000000800017e0 <main>:

// tests delete this before submition !!!!!!!!!!!
#include "../h/memoryAllocatorTest.hpp"
#include "../h/kObjectAllocatorTest.hpp"

int main() {
    800017e0:	fd010113          	addi	sp,sp,-48
    800017e4:	02113423          	sd	ra,40(sp)
    800017e8:	02813023          	sd	s0,32(sp)
    800017ec:	00913c23          	sd	s1,24(sp)
    800017f0:	03010413          	addi	s0,sp,48
    printString("\nx= ");
    printInteger(x);
    printString("\n");
    __asm__ volatile ("ecall");*/

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800017f4:	00009797          	auipc	a5,0x9
    800017f8:	f0c7b783          	ld	a5,-244(a5) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800017fc:	10579073          	csrw	stvec,a5
    printString("\nHello there\n");
    80001800:	00008517          	auipc	a0,0x8
    80001804:	8f850513          	addi	a0,a0,-1800 # 800090f8 <CONSOLE_STATUS+0xe8>
    80001808:	00005097          	auipc	ra,0x5
    8000180c:	c9c080e7          	jalr	-868(ra) # 800064a4 <_Z11printStringPKc>
    //Riscv::popSppSpie();
    mem_alloc(12);
    80001810:	00c00513          	li	a0,12
    80001814:	00000097          	auipc	ra,0x0
    80001818:	910080e7          	jalr	-1776(ra) # 80001124 <_Z9mem_allocm>


    printString("\nKObjectAllocator tests:\n");
    8000181c:	00008517          	auipc	a0,0x8
    80001820:	8ec50513          	addi	a0,a0,-1812 # 80009108 <CONSOLE_STATUS+0xf8>
    80001824:	00005097          	auipc	ra,0x5
    80001828:	c80080e7          	jalr	-896(ra) # 800064a4 <_Z11printStringPKc>

class KObjectAllocatorTest {
public:
    KObjectAllocatorTest() {}
    void* operator new(size_t size) {
        return MemoryAllocator::instance()->kmem_alloc(size);
    8000182c:	00000097          	auipc	ra,0x0
    80001830:	350080e7          	jalr	848(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80001834:	04000593          	li	a1,64
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	428080e7          	jalr	1064(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80001840:	00050493          	mv	s1,a0
    KObjectAllocatorTest() {}
    80001844:	00400793          	li	a5,4
    80001848:	00f53023          	sd	a5,0(a0)
    8000184c:	00008797          	auipc	a5,0x8
    80001850:	8ec78793          	addi	a5,a5,-1812 # 80009138 <CONSOLE_STATUS+0x128>
    80001854:	0007b883          	ld	a7,0(a5)
    80001858:	0087b803          	ld	a6,8(a5)
    8000185c:	0107b583          	ld	a1,16(a5)
    80001860:	0187b603          	ld	a2,24(a5)
    80001864:	0207b683          	ld	a3,32(a5)
    80001868:	0287b703          	ld	a4,40(a5)
    8000186c:	0307b783          	ld	a5,48(a5)
    80001870:	01153423          	sd	a7,8(a0)
    80001874:	01053823          	sd	a6,16(a0)
    80001878:	00b53c23          	sd	a1,24(a0)
    8000187c:	02c53023          	sd	a2,32(a0)
    80001880:	02d53423          	sd	a3,40(a0)
    80001884:	02e53823          	sd	a4,48(a0)
    80001888:	02f53c23          	sd	a5,56(a0)
    KObjectAllocatorTest* t2 = new KObjectAllocatorTest;
    t2->runTests();
    8000188c:	00004097          	auipc	ra,0x4
    80001890:	058080e7          	jalr	88(ra) # 800058e4 <_ZN20KObjectAllocatorTest8runTestsEv>
    delete t2;
    80001894:	00048c63          	beqz	s1,800018ac <main+0xcc>
    }
    void operator delete(void* p) {
        MemoryAllocator::instance()->kmem_free(p);
    80001898:	00000097          	auipc	ra,0x0
    8000189c:	2e4080e7          	jalr	740(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800018a0:	00048593          	mv	a1,s1
    800018a4:	00000097          	auipc	ra,0x0
    800018a8:	464080e7          	jalr	1124(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>

    printString("\nMemory tests:\n");
    800018ac:	00008517          	auipc	a0,0x8
    800018b0:	87c50513          	addi	a0,a0,-1924 # 80009128 <CONSOLE_STATUS+0x118>
    800018b4:	00005097          	auipc	ra,0x5
    800018b8:	bf0080e7          	jalr	-1040(ra) # 800064a4 <_Z11printStringPKc>
    MemoryAllocatorTest t1;
    t1.runTests();
    800018bc:	fd840513          	addi	a0,s0,-40
    800018c0:	00001097          	auipc	ra,0x1
    800018c4:	584080e7          	jalr	1412(ra) # 80002e44 <_ZN19MemoryAllocatorTest8runTestsEv>


    return 0;
    800018c8:	00000513          	li	a0,0
    800018cc:	02813083          	ld	ra,40(sp)
    800018d0:	02013403          	ld	s0,32(sp)
    800018d4:	01813483          	ld	s1,24(sp)
    800018d8:	03010113          	addi	sp,sp,48
    800018dc:	00008067          	ret

00000000800018e0 <_ZN3TCB12createThreadEPFvvE>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    800018e0:	fe010113          	addi	sp,sp,-32
    800018e4:	00113c23          	sd	ra,24(sp)
    800018e8:	00813823          	sd	s0,16(sp)
    800018ec:	00913423          	sd	s1,8(sp)
    800018f0:	01213023          	sd	s2,0(sp)
    800018f4:	02010413          	addi	s0,sp,32
    800018f8:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    800018fc:	03000513          	li	a0,48
    80001900:	00001097          	auipc	ra,0x1
    80001904:	764080e7          	jalr	1892(ra) # 80003064 <_Znwm>
    80001908:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    8000190c:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001910:	00090a63          	beqz	s2,80001924 <_ZN3TCB12createThreadEPFvvE+0x44>
    80001914:	00002537          	lui	a0,0x2
    80001918:	00001097          	auipc	ra,0x1
    8000191c:	774080e7          	jalr	1908(ra) # 8000308c <_Znam>
    80001920:	0080006f          	j	80001928 <_ZN3TCB12createThreadEPFvvE+0x48>
    80001924:	00000513          	li	a0,0
            finished(false)
    80001928:	00a4b423          	sd	a0,8(s1)
    8000192c:	00000797          	auipc	a5,0x0
    80001930:	09878793          	addi	a5,a5,152 # 800019c4 <_ZN3TCB13threadWrapperEv>
    80001934:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001938:	02050863          	beqz	a0,80001968 <_ZN3TCB12createThreadEPFvvE+0x88>
    8000193c:	000027b7          	lui	a5,0x2
    80001940:	00f507b3          	add	a5,a0,a5
            finished(false)
    80001944:	00f4bc23          	sd	a5,24(s1)
    80001948:	00200793          	li	a5,2
    8000194c:	02f4b023          	sd	a5,32(s1)
    80001950:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001954:	02090c63          	beqz	s2,8000198c <_ZN3TCB12createThreadEPFvvE+0xac>
    80001958:	00048513          	mv	a0,s1
    8000195c:	00005097          	auipc	ra,0x5
    80001960:	aa8080e7          	jalr	-1368(ra) # 80006404 <_ZN9Scheduler3putEP3TCB>
    80001964:	0280006f          	j	8000198c <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001968:	00000793          	li	a5,0
    8000196c:	fd9ff06f          	j	80001944 <_ZN3TCB12createThreadEPFvvE+0x64>
    80001970:	00050913          	mv	s2,a0
    80001974:	00048513          	mv	a0,s1
    80001978:	00001097          	auipc	ra,0x1
    8000197c:	73c080e7          	jalr	1852(ra) # 800030b4 <_ZdlPv>
    80001980:	00090513          	mv	a0,s2
    80001984:	0000a097          	auipc	ra,0xa
    80001988:	f24080e7          	jalr	-220(ra) # 8000b8a8 <_Unwind_Resume>
}
    8000198c:	00048513          	mv	a0,s1
    80001990:	01813083          	ld	ra,24(sp)
    80001994:	01013403          	ld	s0,16(sp)
    80001998:	00813483          	ld	s1,8(sp)
    8000199c:	00013903          	ld	s2,0(sp)
    800019a0:	02010113          	addi	sp,sp,32
    800019a4:	00008067          	ret

00000000800019a8 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    800019a8:	ff010113          	addi	sp,sp,-16
    800019ac:	00813423          	sd	s0,8(sp)
    800019b0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    800019b4:	00000073          	ecall
}
    800019b8:	00813403          	ld	s0,8(sp)
    800019bc:	01010113          	addi	sp,sp,16
    800019c0:	00008067          	ret

00000000800019c4 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    800019c4:	fe010113          	addi	sp,sp,-32
    800019c8:	00113c23          	sd	ra,24(sp)
    800019cc:	00813823          	sd	s0,16(sp)
    800019d0:	00913423          	sd	s1,8(sp)
    800019d4:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    800019d8:	00004097          	auipc	ra,0x4
    800019dc:	76c080e7          	jalr	1900(ra) # 80006144 <_ZN5Riscv10popSppSpieEv>
    running->body();
    800019e0:	00009497          	auipc	s1,0x9
    800019e4:	dc048493          	addi	s1,s1,-576 # 8000a7a0 <_ZN3TCB7runningE>
    800019e8:	0004b783          	ld	a5,0(s1)
    800019ec:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    800019f0:	000780e7          	jalr	a5
    running->setFinished(true);
    800019f4:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    800019f8:	00100713          	li	a4,1
    800019fc:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    80001a00:	00000097          	auipc	ra,0x0
    80001a04:	fa8080e7          	jalr	-88(ra) # 800019a8 <_ZN3TCB5yieldEv>
}
    80001a08:	01813083          	ld	ra,24(sp)
    80001a0c:	01013403          	ld	s0,16(sp)
    80001a10:	00813483          	ld	s1,8(sp)
    80001a14:	02010113          	addi	sp,sp,32
    80001a18:	00008067          	ret

0000000080001a1c <_ZN3TCB8dispatchEv>:
{
    80001a1c:	fe010113          	addi	sp,sp,-32
    80001a20:	00113c23          	sd	ra,24(sp)
    80001a24:	00813823          	sd	s0,16(sp)
    80001a28:	00913423          	sd	s1,8(sp)
    80001a2c:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001a30:	00009497          	auipc	s1,0x9
    80001a34:	d704b483          	ld	s1,-656(s1) # 8000a7a0 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001a38:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001a3c:	02078c63          	beqz	a5,80001a74 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001a40:	00005097          	auipc	ra,0x5
    80001a44:	95c080e7          	jalr	-1700(ra) # 8000639c <_ZN9Scheduler3getEv>
    80001a48:	00009797          	auipc	a5,0x9
    80001a4c:	d4a7bc23          	sd	a0,-680(a5) # 8000a7a0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001a50:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001a54:	01048513          	addi	a0,s1,16
    80001a58:	fffff097          	auipc	ra,0xfffff
    80001a5c:	6b8080e7          	jalr	1720(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001a60:	01813083          	ld	ra,24(sp)
    80001a64:	01013403          	ld	s0,16(sp)
    80001a68:	00813483          	ld	s1,8(sp)
    80001a6c:	02010113          	addi	sp,sp,32
    80001a70:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001a74:	00048513          	mv	a0,s1
    80001a78:	00005097          	auipc	ra,0x5
    80001a7c:	98c080e7          	jalr	-1652(ra) # 80006404 <_ZN9Scheduler3putEP3TCB>
    80001a80:	fc1ff06f          	j	80001a40 <_ZN3TCB8dispatchEv+0x24>

0000000080001a84 <_ZN15MemoryAllocator17getMinBlockNumberEm>:
    newMemoryAllocator->freeMemoryHead->next = nullptr;

    return newMemoryAllocator;
}

size_t MemoryAllocator::getMinBlockNumber(size_t size) {
    80001a84:	ff010113          	addi	sp,sp,-16
    80001a88:	00813423          	sd	s0,8(sp)
    80001a8c:	01010413          	addi	s0,sp,16
    size_t blockNo = size / MEM_BLOCK_SIZE;
    80001a90:	00655713          	srli	a4,a0,0x6
    blockNo = blockNo + (size - blockNo * MEM_BLOCK_SIZE != 0);
    80001a94:	fc057793          	andi	a5,a0,-64
    80001a98:	40a78533          	sub	a0,a5,a0
    80001a9c:	00a03533          	snez	a0,a0
    return blockNo;
}
    80001aa0:	00e50533          	add	a0,a0,a4
    80001aa4:	00813403          	ld	s0,8(sp)
    80001aa8:	01010113          	addi	sp,sp,16
    80001aac:	00008067          	ret

0000000080001ab0 <_ZN15MemoryAllocator14createInstanceEv>:
MemoryAllocator* MemoryAllocator::createInstance() {
    80001ab0:	fd010113          	addi	sp,sp,-48
    80001ab4:	02113423          	sd	ra,40(sp)
    80001ab8:	02813023          	sd	s0,32(sp)
    80001abc:	00913c23          	sd	s1,24(sp)
    80001ac0:	01213823          	sd	s2,16(sp)
    80001ac4:	01313423          	sd	s3,8(sp)
    80001ac8:	01413023          	sd	s4,0(sp)
    80001acc:	03010413          	addi	s0,sp,48
    managedMemorySpaceStart = (uint8*) HEAP_START_ADDR;
    80001ad0:	00009797          	auipc	a5,0x9
    80001ad4:	c207b783          	ld	a5,-992(a5) # 8000a6f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001ad8:	0007b903          	ld	s2,0(a5)
    managedMemorySpaceEnd = (uint8*) HEAP_END_ADDR;
    80001adc:	00009797          	auipc	a5,0x9
    80001ae0:	c5c7b783          	ld	a5,-932(a5) # 8000a738 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001ae4:	0007b483          	ld	s1,0(a5)
    80001ae8:	00009a17          	auipc	s4,0x9
    80001aec:	cc8a0a13          	addi	s4,s4,-824 # 8000a7b0 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    80001af0:	009a3023          	sd	s1,0(s4)
    minMemoryFragmentSize = getMinBlockNumber(sizeof(SegmentDescriptor)) + getMinBlockNumber(sizeof(uint64));
    80001af4:	01000513          	li	a0,16
    80001af8:	00000097          	auipc	ra,0x0
    80001afc:	f8c080e7          	jalr	-116(ra) # 80001a84 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001b00:	00050993          	mv	s3,a0
    80001b04:	00800513          	li	a0,8
    80001b08:	00000097          	auipc	ra,0x0
    80001b0c:	f7c080e7          	jalr	-132(ra) # 80001a84 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001b10:	00a989b3          	add	s3,s3,a0
    80001b14:	013a3423          	sd	s3,8(s4)
    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
    80001b18:	02000513          	li	a0,32
    80001b1c:	00000097          	auipc	ra,0x0
    80001b20:	f68080e7          	jalr	-152(ra) # 80001a84 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    managedMemorySpaceStart += noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE;
    80001b24:	00651513          	slli	a0,a0,0x6
    80001b28:	00a90533          	add	a0,s2,a0
    80001b2c:	00aa3823          	sd	a0,16(s4)
    newMemoryAllocator->totalTaken = 0;
    80001b30:	00093423          	sd	zero,8(s2)
    newMemoryAllocator->totalFree = (size_t) (managedMemorySpaceEnd - managedMemorySpaceStart);
    80001b34:	40a484b3          	sub	s1,s1,a0
    80001b38:	00993023          	sd	s1,0(s2)
    newMemoryAllocator->freeBlockNo = newMemoryAllocator->totalFree / MEM_BLOCK_SIZE;
    80001b3c:	0064d493          	srli	s1,s1,0x6
    80001b40:	00993823          	sd	s1,16(s2)
    newMemoryAllocator->freeMemoryHead = (SegmentDescriptor*) managedMemorySpaceStart;
    80001b44:	010a3783          	ld	a5,16(s4)
    80001b48:	00f93c23          	sd	a5,24(s2)
    newMemoryAllocator->freeMemoryHead->noBlocks = newMemoryAllocator->freeBlockNo;
    80001b4c:	0097b023          	sd	s1,0(a5)
    newMemoryAllocator->freeMemoryHead->next = nullptr;
    80001b50:	01893783          	ld	a5,24(s2)
    80001b54:	0007b423          	sd	zero,8(a5)
}
    80001b58:	00090513          	mv	a0,s2
    80001b5c:	02813083          	ld	ra,40(sp)
    80001b60:	02013403          	ld	s0,32(sp)
    80001b64:	01813483          	ld	s1,24(sp)
    80001b68:	01013903          	ld	s2,16(sp)
    80001b6c:	00813983          	ld	s3,8(sp)
    80001b70:	00013a03          	ld	s4,0(sp)
    80001b74:	03010113          	addi	sp,sp,48
    80001b78:	00008067          	ret

0000000080001b7c <_ZN15MemoryAllocator8instanceEv>:
    if (onlyInstance == nullptr)
    80001b7c:	00009797          	auipc	a5,0x9
    80001b80:	c4c7b783          	ld	a5,-948(a5) # 8000a7c8 <_ZN15MemoryAllocator12onlyInstanceE>
    80001b84:	00078863          	beqz	a5,80001b94 <_ZN15MemoryAllocator8instanceEv+0x18>
}
    80001b88:	00009517          	auipc	a0,0x9
    80001b8c:	c4053503          	ld	a0,-960(a0) # 8000a7c8 <_ZN15MemoryAllocator12onlyInstanceE>
    80001b90:	00008067          	ret
MemoryAllocator* MemoryAllocator::instance() {
    80001b94:	ff010113          	addi	sp,sp,-16
    80001b98:	00113423          	sd	ra,8(sp)
    80001b9c:	00813023          	sd	s0,0(sp)
    80001ba0:	01010413          	addi	s0,sp,16
        onlyInstance = createInstance();
    80001ba4:	00000097          	auipc	ra,0x0
    80001ba8:	f0c080e7          	jalr	-244(ra) # 80001ab0 <_ZN15MemoryAllocator14createInstanceEv>
    80001bac:	00009797          	auipc	a5,0x9
    80001bb0:	c0a7be23          	sd	a0,-996(a5) # 8000a7c8 <_ZN15MemoryAllocator12onlyInstanceE>
}
    80001bb4:	00009517          	auipc	a0,0x9
    80001bb8:	c1453503          	ld	a0,-1004(a0) # 8000a7c8 <_ZN15MemoryAllocator12onlyInstanceE>
    80001bbc:	00813083          	ld	ra,8(sp)
    80001bc0:	00013403          	ld	s0,0(sp)
    80001bc4:	01010113          	addi	sp,sp,16
    80001bc8:	00008067          	ret

0000000080001bcc <_ZN15MemoryAllocator8firstFitEm>:


MemoryAllocator::SegmentDescriptor* MemoryAllocator::firstFit(size_t blockNo) {
    80001bcc:	ff010113          	addi	sp,sp,-16
    80001bd0:	00813423          	sd	s0,8(sp)
    80001bd4:	01010413          	addi	s0,sp,16
    80001bd8:	00050693          	mv	a3,a0
    SegmentDescriptor* largeEnoughSegment = freeMemoryHead;
    80001bdc:	01853503          	ld	a0,24(a0)
    SegmentDescriptor* prevSegment = nullptr;
    80001be0:	00000713          	li	a4,0
    while (largeEnoughSegment && largeEnoughSegment->noBlocks < blockNo) {
    80001be4:	00050c63          	beqz	a0,80001bfc <_ZN15MemoryAllocator8firstFitEm+0x30>
    80001be8:	00053783          	ld	a5,0(a0)
    80001bec:	00b7f863          	bgeu	a5,a1,80001bfc <_ZN15MemoryAllocator8firstFitEm+0x30>
        prevSegment = largeEnoughSegment;
    80001bf0:	00050713          	mv	a4,a0
        largeEnoughSegment = largeEnoughSegment->next;
    80001bf4:	00853503          	ld	a0,8(a0)
    while (largeEnoughSegment && largeEnoughSegment->noBlocks < blockNo) {
    80001bf8:	fedff06f          	j	80001be4 <_ZN15MemoryAllocator8firstFitEm+0x18>
    }
    if (!largeEnoughSegment) return nullptr;
    80001bfc:	04050663          	beqz	a0,80001c48 <_ZN15MemoryAllocator8firstFitEm+0x7c>

    if (largeEnoughSegment->noBlocks - blockNo >= minMemoryFragmentSize) {
    80001c00:	00053783          	ld	a5,0(a0)
    80001c04:	40b787b3          	sub	a5,a5,a1
    80001c08:	00009617          	auipc	a2,0x9
    80001c0c:	bb063603          	ld	a2,-1104(a2) # 8000a7b8 <_ZN15MemoryAllocator21minMemoryFragmentSizeE>
    80001c10:	02c7e063          	bltu	a5,a2,80001c30 <_ZN15MemoryAllocator8firstFitEm+0x64>
        SegmentDescriptor* newSegment = (SegmentDescriptor*) ((uint8*) largeEnoughSegment + blockNo * MEM_BLOCK_SIZE);
    80001c14:	00659613          	slli	a2,a1,0x6
    80001c18:	00c50633          	add	a2,a0,a2
        newSegment->noBlocks = largeEnoughSegment->noBlocks - blockNo;
    80001c1c:	00f63023          	sd	a5,0(a2)
        newSegment->next = largeEnoughSegment->next;
    80001c20:	00853783          	ld	a5,8(a0)
    80001c24:	00f63423          	sd	a5,8(a2)
        largeEnoughSegment->next = newSegment;
    80001c28:	00c53423          	sd	a2,8(a0)
        largeEnoughSegment->noBlocks = blockNo;
    80001c2c:	00b53023          	sd	a1,0(a0)
    }

    if (prevSegment) prevSegment->next = largeEnoughSegment->next;
    80001c30:	00070663          	beqz	a4,80001c3c <_ZN15MemoryAllocator8firstFitEm+0x70>
    80001c34:	00853783          	ld	a5,8(a0)
    80001c38:	00f73423          	sd	a5,8(a4)
    if (freeMemoryHead == largeEnoughSegment)
    80001c3c:	0186b783          	ld	a5,24(a3)
    80001c40:	00a78a63          	beq	a5,a0,80001c54 <_ZN15MemoryAllocator8firstFitEm+0x88>
        freeMemoryHead = largeEnoughSegment->next;

    largeEnoughSegment->next = nullptr;
    80001c44:	00053423          	sd	zero,8(a0)
    return largeEnoughSegment;
}
    80001c48:	00813403          	ld	s0,8(sp)
    80001c4c:	01010113          	addi	sp,sp,16
    80001c50:	00008067          	ret
        freeMemoryHead = largeEnoughSegment->next;
    80001c54:	00853783          	ld	a5,8(a0)
    80001c58:	00f6bc23          	sd	a5,24(a3)
    80001c5c:	fe9ff06f          	j	80001c44 <_ZN15MemoryAllocator8firstFitEm+0x78>

0000000080001c60 <_ZN15MemoryAllocator10kmem_allocEm>:

void* MemoryAllocator::kmem_alloc(size_t size) {
    80001c60:	fe010113          	addi	sp,sp,-32
    80001c64:	00113c23          	sd	ra,24(sp)
    80001c68:	00813823          	sd	s0,16(sp)
    80001c6c:	00913423          	sd	s1,8(sp)
    80001c70:	01213023          	sd	s2,0(sp)
    80001c74:	02010413          	addi	s0,sp,32
    80001c78:	00050493          	mv	s1,a0
    80001c7c:	00058913          	mv	s2,a1
    size_t minBlockNo = getMinBlockNumber(size);
    80001c80:	00058513          	mv	a0,a1
    80001c84:	00000097          	auipc	ra,0x0
    80001c88:	e00080e7          	jalr	-512(ra) # 80001a84 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001c8c:	00050593          	mv	a1,a0
    if (minBlockNo * MEM_BLOCK_SIZE - size < sizeof(SegmentDescriptor)) ++minBlockNo;
    80001c90:	00651793          	slli	a5,a0,0x6
    80001c94:	41278933          	sub	s2,a5,s2
    80001c98:	00f00793          	li	a5,15
    80001c9c:	0127e463          	bltu	a5,s2,80001ca4 <_ZN15MemoryAllocator10kmem_allocEm+0x44>
    80001ca0:	00150593          	addi	a1,a0,1
    SegmentDescriptor* newTaken = firstFit(minBlockNo);
    80001ca4:	00048513          	mv	a0,s1
    80001ca8:	00000097          	auipc	ra,0x0
    80001cac:	f24080e7          	jalr	-220(ra) # 80001bcc <_ZN15MemoryAllocator8firstFitEm>
    if (!newTaken) return nullptr;
    80001cb0:	04050063          	beqz	a0,80001cf0 <_ZN15MemoryAllocator10kmem_allocEm+0x90>

    freeBlockNo -= newTaken->noBlocks;
    80001cb4:	00053703          	ld	a4,0(a0)
    80001cb8:	0104b783          	ld	a5,16(s1)
    80001cbc:	40e787b3          	sub	a5,a5,a4
    80001cc0:	00f4b823          	sd	a5,16(s1)
    totalFree -= newTaken->noBlocks * MEM_BLOCK_SIZE;
    80001cc4:	00053783          	ld	a5,0(a0)
    80001cc8:	00679713          	slli	a4,a5,0x6
    80001ccc:	0004b783          	ld	a5,0(s1)
    80001cd0:	40e787b3          	sub	a5,a5,a4
    80001cd4:	00f4b023          	sd	a5,0(s1)
    totalTaken += newTaken->noBlocks * MEM_BLOCK_SIZE;
    80001cd8:	00053783          	ld	a5,0(a0)
    80001cdc:	00679713          	slli	a4,a5,0x6
    80001ce0:	0084b783          	ld	a5,8(s1)
    80001ce4:	00e787b3          	add	a5,a5,a4
    80001ce8:	00f4b423          	sd	a5,8(s1)

    return (uint8*) newTaken + sizeof(SegmentDescriptor);
    80001cec:	01050513          	addi	a0,a0,16
}
    80001cf0:	01813083          	ld	ra,24(sp)
    80001cf4:	01013403          	ld	s0,16(sp)
    80001cf8:	00813483          	ld	s1,8(sp)
    80001cfc:	00013903          	ld	s2,0(sp)
    80001d00:	02010113          	addi	sp,sp,32
    80001d04:	00008067          	ret

0000000080001d08 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* newFree) {
    80001d08:	ff010113          	addi	sp,sp,-16
    80001d0c:	00813423          	sd	s0,8(sp)
    80001d10:	01010413          	addi	s0,sp,16
    if (newFree == nullptr) return 0;
    80001d14:	08058863          	beqz	a1,80001da4 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>
    SegmentDescriptor* newFreeSegment = (SegmentDescriptor*) ((uint8*) newFree - sizeof(SegmentDescriptor));
    80001d18:	ff058693          	addi	a3,a1,-16
    freeBlockNo += newFreeSegment->noBlocks;
    80001d1c:	ff05b703          	ld	a4,-16(a1)
    80001d20:	01053783          	ld	a5,16(a0)
    80001d24:	00e787b3          	add	a5,a5,a4
    80001d28:	00f53823          	sd	a5,16(a0)
    totalFree += newFreeSegment->noBlocks * MEM_BLOCK_SIZE;
    80001d2c:	ff05b783          	ld	a5,-16(a1)
    80001d30:	00679713          	slli	a4,a5,0x6
    80001d34:	00053783          	ld	a5,0(a0)
    80001d38:	00e787b3          	add	a5,a5,a4
    80001d3c:	00f53023          	sd	a5,0(a0)
    totalTaken -= newFreeSegment->noBlocks * MEM_BLOCK_SIZE;
    80001d40:	ff05b783          	ld	a5,-16(a1)
    80001d44:	00679713          	slli	a4,a5,0x6
    80001d48:	00853783          	ld	a5,8(a0)
    80001d4c:	40e787b3          	sub	a5,a5,a4
    80001d50:	00f53423          	sd	a5,8(a0)

    SegmentDescriptor* after = freeMemoryHead, *prev = nullptr;
    80001d54:	01853783          	ld	a5,24(a0)
    80001d58:	00000713          	li	a4,0
    while (after && after < newFreeSegment) {
    80001d5c:	00078a63          	beqz	a5,80001d70 <_ZN15MemoryAllocator9kmem_freeEPv+0x68>
    80001d60:	00d7f863          	bgeu	a5,a3,80001d70 <_ZN15MemoryAllocator9kmem_freeEPv+0x68>
        prev = after; after = after->next; }
    80001d64:	00078713          	mv	a4,a5
    80001d68:	0087b783          	ld	a5,8(a5)
    while (after && after < newFreeSegment) {
    80001d6c:	ff1ff06f          	j	80001d5c <_ZN15MemoryAllocator9kmem_freeEPv+0x54>

    newFreeSegment->next = after;
    80001d70:	fef5bc23          	sd	a5,-8(a1)
    if (prev) prev->next = newFreeSegment;
    80001d74:	04070063          	beqz	a4,80001db4 <_ZN15MemoryAllocator9kmem_freeEPv+0xac>
    80001d78:	00d73423          	sd	a3,8(a4)
    else freeMemoryHead = newFreeSegment;

    if (prev && (uint8*) prev + prev->noBlocks * MEM_BLOCK_SIZE == (uint8*) newFreeSegment) {
    80001d7c:	00070a63          	beqz	a4,80001d90 <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
    80001d80:	00073503          	ld	a0,0(a4)
    80001d84:	00651613          	slli	a2,a0,0x6
    80001d88:	00c70633          	add	a2,a4,a2
    80001d8c:	02d60863          	beq	a2,a3,80001dbc <_ZN15MemoryAllocator9kmem_freeEPv+0xb4>
        prev->next = newFreeSegment->next;
        prev->noBlocks += newFreeSegment->noBlocks;
        newFreeSegment = prev;
    }

    if (after && (uint8*) newFreeSegment + newFreeSegment->noBlocks * MEM_BLOCK_SIZE == (uint8*) after) {
    80001d90:	00078a63          	beqz	a5,80001da4 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>
    80001d94:	0006b603          	ld	a2,0(a3)
    80001d98:	00661713          	slli	a4,a2,0x6
    80001d9c:	00e68733          	add	a4,a3,a4
    80001da0:	02f70c63          	beq	a4,a5,80001dd8 <_ZN15MemoryAllocator9kmem_freeEPv+0xd0>
        newFreeSegment->next = after->next; newFreeSegment->noBlocks += after->noBlocks; }

    return 0;
}
    80001da4:	00000513          	li	a0,0
    80001da8:	00813403          	ld	s0,8(sp)
    80001dac:	01010113          	addi	sp,sp,16
    80001db0:	00008067          	ret
    else freeMemoryHead = newFreeSegment;
    80001db4:	00d53c23          	sd	a3,24(a0)
    80001db8:	fc5ff06f          	j	80001d7c <_ZN15MemoryAllocator9kmem_freeEPv+0x74>
        prev->next = newFreeSegment->next;
    80001dbc:	ff85b683          	ld	a3,-8(a1)
    80001dc0:	00d73423          	sd	a3,8(a4)
        prev->noBlocks += newFreeSegment->noBlocks;
    80001dc4:	ff05b683          	ld	a3,-16(a1)
    80001dc8:	00d50533          	add	a0,a0,a3
    80001dcc:	00a73023          	sd	a0,0(a4)
        newFreeSegment = prev;
    80001dd0:	00070693          	mv	a3,a4
    80001dd4:	fbdff06f          	j	80001d90 <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
        newFreeSegment->next = after->next; newFreeSegment->noBlocks += after->noBlocks; }
    80001dd8:	0087b703          	ld	a4,8(a5)
    80001ddc:	00e6b423          	sd	a4,8(a3)
    80001de0:	0007b783          	ld	a5,0(a5)
    80001de4:	00f60633          	add	a2,a2,a5
    80001de8:	00c6b023          	sd	a2,0(a3)
    80001dec:	fb9ff06f          	j	80001da4 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>

0000000080001df0 <_ZN15MemoryAllocator30printInstanceMemorySpaceParamsEv>:

void MemoryAllocator::printInstanceMemorySpaceParams() {
    80001df0:	fe010113          	addi	sp,sp,-32
    80001df4:	00113c23          	sd	ra,24(sp)
    80001df8:	00813823          	sd	s0,16(sp)
    80001dfc:	00913423          	sd	s1,8(sp)
    80001e00:	01213023          	sd	s2,0(sp)
    80001e04:	02010413          	addi	s0,sp,32
    80001e08:	00050493          	mv	s1,a0
    printString("##################################\n\n");
    80001e0c:	00007517          	auipc	a0,0x7
    80001e10:	36450513          	addi	a0,a0,868 # 80009170 <CONSOLE_STATUS+0x160>
    80001e14:	00004097          	auipc	ra,0x4
    80001e18:	690080e7          	jalr	1680(ra) # 800064a4 <_Z11printStringPKc>
    printString("MemoryAllocator address: "); printInteger((uint64)this); printString("\n");
    80001e1c:	00007517          	auipc	a0,0x7
    80001e20:	37c50513          	addi	a0,a0,892 # 80009198 <CONSOLE_STATUS+0x188>
    80001e24:	00004097          	auipc	ra,0x4
    80001e28:	680080e7          	jalr	1664(ra) # 800064a4 <_Z11printStringPKc>
    80001e2c:	00048513          	mv	a0,s1
    80001e30:	00004097          	auipc	ra,0x4
    80001e34:	6e4080e7          	jalr	1764(ra) # 80006514 <_Z12printIntegerm>
    80001e38:	00007517          	auipc	a0,0x7
    80001e3c:	2e850513          	addi	a0,a0,744 # 80009120 <CONSOLE_STATUS+0x110>
    80001e40:	00004097          	auipc	ra,0x4
    80001e44:	664080e7          	jalr	1636(ra) # 800064a4 <_Z11printStringPKc>

    // size_t noBlocksForStoringMemoryAllocator = sizeof(MemoryAllocator) / MEM_BLOCK_SIZE + 1;
    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
    80001e48:	02000513          	li	a0,32
    80001e4c:	00000097          	auipc	ra,0x0
    80001e50:	c38080e7          	jalr	-968(ra) # 80001a84 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001e54:	00050913          	mv	s2,a0
    printString("noBlocksForStoringMemoryAllocator: ");
    80001e58:	00007517          	auipc	a0,0x7
    80001e5c:	36050513          	addi	a0,a0,864 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80001e60:	00004097          	auipc	ra,0x4
    80001e64:	644080e7          	jalr	1604(ra) # 800064a4 <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator); printString("\n");
    80001e68:	00090513          	mv	a0,s2
    80001e6c:	00004097          	auipc	ra,0x4
    80001e70:	6a8080e7          	jalr	1704(ra) # 80006514 <_Z12printIntegerm>
    80001e74:	00007517          	auipc	a0,0x7
    80001e78:	2ac50513          	addi	a0,a0,684 # 80009120 <CONSOLE_STATUS+0x110>
    80001e7c:	00004097          	auipc	ra,0x4
    80001e80:	628080e7          	jalr	1576(ra) # 800064a4 <_Z11printStringPKc>
    printString("noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE: ");
    80001e84:	00007517          	auipc	a0,0x7
    80001e88:	35c50513          	addi	a0,a0,860 # 800091e0 <CONSOLE_STATUS+0x1d0>
    80001e8c:	00004097          	auipc	ra,0x4
    80001e90:	618080e7          	jalr	1560(ra) # 800064a4 <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE); printString("\n\n");
    80001e94:	00691513          	slli	a0,s2,0x6
    80001e98:	00004097          	auipc	ra,0x4
    80001e9c:	67c080e7          	jalr	1660(ra) # 80006514 <_Z12printIntegerm>
    80001ea0:	00007517          	auipc	a0,0x7
    80001ea4:	37850513          	addi	a0,a0,888 # 80009218 <CONSOLE_STATUS+0x208>
    80001ea8:	00004097          	auipc	ra,0x4
    80001eac:	5fc080e7          	jalr	1532(ra) # 800064a4 <_Z11printStringPKc>

    printString("Managed memory space start: ");
    80001eb0:	00007517          	auipc	a0,0x7
    80001eb4:	37050513          	addi	a0,a0,880 # 80009220 <CONSOLE_STATUS+0x210>
    80001eb8:	00004097          	auipc	ra,0x4
    80001ebc:	5ec080e7          	jalr	1516(ra) # 800064a4 <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceStart); printString("\n");
    80001ec0:	00009917          	auipc	s2,0x9
    80001ec4:	8f090913          	addi	s2,s2,-1808 # 8000a7b0 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    80001ec8:	01093503          	ld	a0,16(s2)
    80001ecc:	00004097          	auipc	ra,0x4
    80001ed0:	648080e7          	jalr	1608(ra) # 80006514 <_Z12printIntegerm>
    80001ed4:	00007517          	auipc	a0,0x7
    80001ed8:	24c50513          	addi	a0,a0,588 # 80009120 <CONSOLE_STATUS+0x110>
    80001edc:	00004097          	auipc	ra,0x4
    80001ee0:	5c8080e7          	jalr	1480(ra) # 800064a4 <_Z11printStringPKc>
    printString("Managed memory space end: ");
    80001ee4:	00007517          	auipc	a0,0x7
    80001ee8:	35c50513          	addi	a0,a0,860 # 80009240 <CONSOLE_STATUS+0x230>
    80001eec:	00004097          	auipc	ra,0x4
    80001ef0:	5b8080e7          	jalr	1464(ra) # 800064a4 <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceEnd); printString("\n\n");
    80001ef4:	00093503          	ld	a0,0(s2)
    80001ef8:	00004097          	auipc	ra,0x4
    80001efc:	61c080e7          	jalr	1564(ra) # 80006514 <_Z12printIntegerm>
    80001f00:	00007517          	auipc	a0,0x7
    80001f04:	31850513          	addi	a0,a0,792 # 80009218 <CONSOLE_STATUS+0x208>
    80001f08:	00004097          	auipc	ra,0x4
    80001f0c:	59c080e7          	jalr	1436(ra) # 800064a4 <_Z11printStringPKc>

    printString("Total Free: "); printInteger(getTotalFree()); printString("\n");
    80001f10:	00007517          	auipc	a0,0x7
    80001f14:	35050513          	addi	a0,a0,848 # 80009260 <CONSOLE_STATUS+0x250>
    80001f18:	00004097          	auipc	ra,0x4
    80001f1c:	58c080e7          	jalr	1420(ra) # 800064a4 <_Z11printStringPKc>
    80001f20:	0004b503          	ld	a0,0(s1)
    80001f24:	00004097          	auipc	ra,0x4
    80001f28:	5f0080e7          	jalr	1520(ra) # 80006514 <_Z12printIntegerm>
    80001f2c:	00007517          	auipc	a0,0x7
    80001f30:	1f450513          	addi	a0,a0,500 # 80009120 <CONSOLE_STATUS+0x110>
    80001f34:	00004097          	auipc	ra,0x4
    80001f38:	570080e7          	jalr	1392(ra) # 800064a4 <_Z11printStringPKc>
    printString("Total Taken: "); printInteger(getTotalTaken()); printString("\n");
    80001f3c:	00007517          	auipc	a0,0x7
    80001f40:	33450513          	addi	a0,a0,820 # 80009270 <CONSOLE_STATUS+0x260>
    80001f44:	00004097          	auipc	ra,0x4
    80001f48:	560080e7          	jalr	1376(ra) # 800064a4 <_Z11printStringPKc>
    80001f4c:	0084b503          	ld	a0,8(s1)
    80001f50:	00004097          	auipc	ra,0x4
    80001f54:	5c4080e7          	jalr	1476(ra) # 80006514 <_Z12printIntegerm>
    80001f58:	00007517          	auipc	a0,0x7
    80001f5c:	1c850513          	addi	a0,a0,456 # 80009120 <CONSOLE_STATUS+0x110>
    80001f60:	00004097          	auipc	ra,0x4
    80001f64:	544080e7          	jalr	1348(ra) # 800064a4 <_Z11printStringPKc>
    printString("Free Block No: "); printInteger(getFreeBlockNo()); printString("\n");
    80001f68:	00007517          	auipc	a0,0x7
    80001f6c:	31850513          	addi	a0,a0,792 # 80009280 <CONSOLE_STATUS+0x270>
    80001f70:	00004097          	auipc	ra,0x4
    80001f74:	534080e7          	jalr	1332(ra) # 800064a4 <_Z11printStringPKc>
    80001f78:	0104b503          	ld	a0,16(s1)
    80001f7c:	00004097          	auipc	ra,0x4
    80001f80:	598080e7          	jalr	1432(ra) # 80006514 <_Z12printIntegerm>
    80001f84:	00007517          	auipc	a0,0x7
    80001f88:	19c50513          	addi	a0,a0,412 # 80009120 <CONSOLE_STATUS+0x110>
    80001f8c:	00004097          	auipc	ra,0x4
    80001f90:	518080e7          	jalr	1304(ra) # 800064a4 <_Z11printStringPKc>
    printString("\n##################################\n");
    80001f94:	00007517          	auipc	a0,0x7
    80001f98:	2fc50513          	addi	a0,a0,764 # 80009290 <CONSOLE_STATUS+0x280>
    80001f9c:	00004097          	auipc	ra,0x4
    80001fa0:	508080e7          	jalr	1288(ra) # 800064a4 <_Z11printStringPKc>
}
    80001fa4:	01813083          	ld	ra,24(sp)
    80001fa8:	01013403          	ld	s0,16(sp)
    80001fac:	00813483          	ld	s1,8(sp)
    80001fb0:	00013903          	ld	s2,0(sp)
    80001fb4:	02010113          	addi	sp,sp,32
    80001fb8:	00008067          	ret

0000000080001fbc <_ZN15MemoryAllocator22printMemorySpaceParamsEv>:

void MemoryAllocator::printMemorySpaceParams() {
    80001fbc:	fe010113          	addi	sp,sp,-32
    80001fc0:	00113c23          	sd	ra,24(sp)
    80001fc4:	00813823          	sd	s0,16(sp)
    80001fc8:	00913423          	sd	s1,8(sp)
    80001fcc:	01213023          	sd	s2,0(sp)
    80001fd0:	02010413          	addi	s0,sp,32
    printString("----------------------------------\n\n");
    80001fd4:	00007517          	auipc	a0,0x7
    80001fd8:	2e450513          	addi	a0,a0,740 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80001fdc:	00004097          	auipc	ra,0x4
    80001fe0:	4c8080e7          	jalr	1224(ra) # 800064a4 <_Z11printStringPKc>
    printString("Size of MemoryAllocator class: ");
    80001fe4:	00007517          	auipc	a0,0x7
    80001fe8:	2fc50513          	addi	a0,a0,764 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80001fec:	00004097          	auipc	ra,0x4
    80001ff0:	4b8080e7          	jalr	1208(ra) # 800064a4 <_Z11printStringPKc>
    printInteger(sizeof(MemoryAllocator)); printString("\n");
    80001ff4:	02000513          	li	a0,32
    80001ff8:	00004097          	auipc	ra,0x4
    80001ffc:	51c080e7          	jalr	1308(ra) # 80006514 <_Z12printIntegerm>
    80002000:	00007517          	auipc	a0,0x7
    80002004:	12050513          	addi	a0,a0,288 # 80009120 <CONSOLE_STATUS+0x110>
    80002008:	00004097          	auipc	ra,0x4
    8000200c:	49c080e7          	jalr	1180(ra) # 800064a4 <_Z11printStringPKc>

    printString("HEAP_START_ADDR: "); printInteger((uint64)HEAP_START_ADDR); printString("\n");
    80002010:	00007517          	auipc	a0,0x7
    80002014:	31050513          	addi	a0,a0,784 # 80009320 <CONSOLE_STATUS+0x310>
    80002018:	00004097          	auipc	ra,0x4
    8000201c:	48c080e7          	jalr	1164(ra) # 800064a4 <_Z11printStringPKc>
    80002020:	00008497          	auipc	s1,0x8
    80002024:	6d04b483          	ld	s1,1744(s1) # 8000a6f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002028:	0004b503          	ld	a0,0(s1)
    8000202c:	00004097          	auipc	ra,0x4
    80002030:	4e8080e7          	jalr	1256(ra) # 80006514 <_Z12printIntegerm>
    80002034:	00007517          	auipc	a0,0x7
    80002038:	0ec50513          	addi	a0,a0,236 # 80009120 <CONSOLE_STATUS+0x110>
    8000203c:	00004097          	auipc	ra,0x4
    80002040:	468080e7          	jalr	1128(ra) # 800064a4 <_Z11printStringPKc>
    printString("HEAP_END_ADDR: "); printInteger((uint64)HEAP_END_ADDR); printString("\n");
    80002044:	00007517          	auipc	a0,0x7
    80002048:	2bc50513          	addi	a0,a0,700 # 80009300 <CONSOLE_STATUS+0x2f0>
    8000204c:	00004097          	auipc	ra,0x4
    80002050:	458080e7          	jalr	1112(ra) # 800064a4 <_Z11printStringPKc>
    80002054:	00008917          	auipc	s2,0x8
    80002058:	6e493903          	ld	s2,1764(s2) # 8000a738 <_GLOBAL_OFFSET_TABLE_+0x50>
    8000205c:	00093503          	ld	a0,0(s2)
    80002060:	00004097          	auipc	ra,0x4
    80002064:	4b4080e7          	jalr	1204(ra) # 80006514 <_Z12printIntegerm>
    80002068:	00007517          	auipc	a0,0x7
    8000206c:	0b850513          	addi	a0,a0,184 # 80009120 <CONSOLE_STATUS+0x110>
    80002070:	00004097          	auipc	ra,0x4
    80002074:	434080e7          	jalr	1076(ra) # 800064a4 <_Z11printStringPKc>

    printString("HEAP_END_ADDR - HEAP_START_ADDR: ");
    80002078:	00007517          	auipc	a0,0x7
    8000207c:	29850513          	addi	a0,a0,664 # 80009310 <CONSOLE_STATUS+0x300>
    80002080:	00004097          	auipc	ra,0x4
    80002084:	424080e7          	jalr	1060(ra) # 800064a4 <_Z11printStringPKc>
    printInteger((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)); printString("\n");
    80002088:	00093503          	ld	a0,0(s2)
    8000208c:	0004b783          	ld	a5,0(s1)
    80002090:	40f50533          	sub	a0,a0,a5
    80002094:	00004097          	auipc	ra,0x4
    80002098:	480080e7          	jalr	1152(ra) # 80006514 <_Z12printIntegerm>
    8000209c:	00007517          	auipc	a0,0x7
    800020a0:	08450513          	addi	a0,a0,132 # 80009120 <CONSOLE_STATUS+0x110>
    800020a4:	00004097          	auipc	ra,0x4
    800020a8:	400080e7          	jalr	1024(ra) # 800064a4 <_Z11printStringPKc>

    printString("MEM_BLOCK_SIZE: "); printInteger(MEM_BLOCK_SIZE); printString("\n");
    800020ac:	00007517          	auipc	a0,0x7
    800020b0:	28c50513          	addi	a0,a0,652 # 80009338 <CONSOLE_STATUS+0x328>
    800020b4:	00004097          	auipc	ra,0x4
    800020b8:	3f0080e7          	jalr	1008(ra) # 800064a4 <_Z11printStringPKc>
    800020bc:	04000513          	li	a0,64
    800020c0:	00004097          	auipc	ra,0x4
    800020c4:	454080e7          	jalr	1108(ra) # 80006514 <_Z12printIntegerm>
    800020c8:	00007517          	auipc	a0,0x7
    800020cc:	05850513          	addi	a0,a0,88 # 80009120 <CONSOLE_STATUS+0x110>
    800020d0:	00004097          	auipc	ra,0x4
    800020d4:	3d4080e7          	jalr	980(ra) # 800064a4 <_Z11printStringPKc>

    printString("Number of blocks in (HEAP_END_ADDR - HEAP_START_ADDR): ");
    800020d8:	00007517          	auipc	a0,0x7
    800020dc:	27850513          	addi	a0,a0,632 # 80009350 <CONSOLE_STATUS+0x340>
    800020e0:	00004097          	auipc	ra,0x4
    800020e4:	3c4080e7          	jalr	964(ra) # 800064a4 <_Z11printStringPKc>
    printInteger(((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)) / MEM_BLOCK_SIZE);
    800020e8:	00093503          	ld	a0,0(s2)
    800020ec:	0004b783          	ld	a5,0(s1)
    800020f0:	40f50533          	sub	a0,a0,a5
    800020f4:	00655513          	srli	a0,a0,0x6
    800020f8:	00004097          	auipc	ra,0x4
    800020fc:	41c080e7          	jalr	1052(ra) # 80006514 <_Z12printIntegerm>
    printString("\n");
    80002100:	00007517          	auipc	a0,0x7
    80002104:	02050513          	addi	a0,a0,32 # 80009120 <CONSOLE_STATUS+0x110>
    80002108:	00004097          	auipc	ra,0x4
    8000210c:	39c080e7          	jalr	924(ra) # 800064a4 <_Z11printStringPKc>
    printString("\n----------------------------------\n");
    80002110:	00007517          	auipc	a0,0x7
    80002114:	27850513          	addi	a0,a0,632 # 80009388 <CONSOLE_STATUS+0x378>
    80002118:	00004097          	auipc	ra,0x4
    8000211c:	38c080e7          	jalr	908(ra) # 800064a4 <_Z11printStringPKc>
}
    80002120:	01813083          	ld	ra,24(sp)
    80002124:	01013403          	ld	s0,16(sp)
    80002128:	00813483          	ld	s1,8(sp)
    8000212c:	00013903          	ld	s2,0(sp)
    80002130:	02010113          	addi	sp,sp,32
    80002134:	00008067          	ret

0000000080002138 <_ZN15MemoryAllocator23printFreeMemoryHeadDataEv>:

void MemoryAllocator::printFreeMemoryHeadData() {
    80002138:	fe010113          	addi	sp,sp,-32
    8000213c:	00113c23          	sd	ra,24(sp)
    80002140:	00813823          	sd	s0,16(sp)
    80002144:	00913423          	sd	s1,8(sp)
    80002148:	02010413          	addi	s0,sp,32
    8000214c:	00050493          	mv	s1,a0
    printString("##################################\n\n");
    80002150:	00007517          	auipc	a0,0x7
    80002154:	02050513          	addi	a0,a0,32 # 80009170 <CONSOLE_STATUS+0x160>
    80002158:	00004097          	auipc	ra,0x4
    8000215c:	34c080e7          	jalr	844(ra) # 800064a4 <_Z11printStringPKc>
    printString("freeMemoryHead: ");
    80002160:	00007517          	auipc	a0,0x7
    80002164:	25050513          	addi	a0,a0,592 # 800093b0 <CONSOLE_STATUS+0x3a0>
    80002168:	00004097          	auipc	ra,0x4
    8000216c:	33c080e7          	jalr	828(ra) # 800064a4 <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead); printString("\n");
    80002170:	0184b503          	ld	a0,24(s1)
    80002174:	00004097          	auipc	ra,0x4
    80002178:	3a0080e7          	jalr	928(ra) # 80006514 <_Z12printIntegerm>
    8000217c:	00007517          	auipc	a0,0x7
    80002180:	fa450513          	addi	a0,a0,-92 # 80009120 <CONSOLE_STATUS+0x110>
    80002184:	00004097          	auipc	ra,0x4
    80002188:	320080e7          	jalr	800(ra) # 800064a4 <_Z11printStringPKc>
    printString("freeMemoryHead->noBlocks: ");
    8000218c:	00007517          	auipc	a0,0x7
    80002190:	23c50513          	addi	a0,a0,572 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80002194:	00004097          	auipc	ra,0x4
    80002198:	310080e7          	jalr	784(ra) # 800064a4 <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead->noBlocks); printString("\n");
    8000219c:	0184b783          	ld	a5,24(s1)
    800021a0:	0007b503          	ld	a0,0(a5)
    800021a4:	00004097          	auipc	ra,0x4
    800021a8:	370080e7          	jalr	880(ra) # 80006514 <_Z12printIntegerm>
    800021ac:	00007517          	auipc	a0,0x7
    800021b0:	f7450513          	addi	a0,a0,-140 # 80009120 <CONSOLE_STATUS+0x110>
    800021b4:	00004097          	auipc	ra,0x4
    800021b8:	2f0080e7          	jalr	752(ra) # 800064a4 <_Z11printStringPKc>
    printString("freeMemoryHead->next: ");
    800021bc:	00007517          	auipc	a0,0x7
    800021c0:	22c50513          	addi	a0,a0,556 # 800093e8 <CONSOLE_STATUS+0x3d8>
    800021c4:	00004097          	auipc	ra,0x4
    800021c8:	2e0080e7          	jalr	736(ra) # 800064a4 <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead->next); printString("\n");
    800021cc:	0184b783          	ld	a5,24(s1)
    800021d0:	0087b503          	ld	a0,8(a5)
    800021d4:	00004097          	auipc	ra,0x4
    800021d8:	340080e7          	jalr	832(ra) # 80006514 <_Z12printIntegerm>
    800021dc:	00007517          	auipc	a0,0x7
    800021e0:	f4450513          	addi	a0,a0,-188 # 80009120 <CONSOLE_STATUS+0x110>
    800021e4:	00004097          	auipc	ra,0x4
    800021e8:	2c0080e7          	jalr	704(ra) # 800064a4 <_Z11printStringPKc>
    printString("Segment Descriptor size: ");
    800021ec:	00007517          	auipc	a0,0x7
    800021f0:	21450513          	addi	a0,a0,532 # 80009400 <CONSOLE_STATUS+0x3f0>
    800021f4:	00004097          	auipc	ra,0x4
    800021f8:	2b0080e7          	jalr	688(ra) # 800064a4 <_Z11printStringPKc>
    printInteger(sizeof(*freeMemoryHead)); printString("\n");
    800021fc:	01000513          	li	a0,16
    80002200:	00004097          	auipc	ra,0x4
    80002204:	314080e7          	jalr	788(ra) # 80006514 <_Z12printIntegerm>
    80002208:	00007517          	auipc	a0,0x7
    8000220c:	f1850513          	addi	a0,a0,-232 # 80009120 <CONSOLE_STATUS+0x110>
    80002210:	00004097          	auipc	ra,0x4
    80002214:	294080e7          	jalr	660(ra) # 800064a4 <_Z11printStringPKc>
    printString("\n##################################\n");
    80002218:	00007517          	auipc	a0,0x7
    8000221c:	07850513          	addi	a0,a0,120 # 80009290 <CONSOLE_STATUS+0x280>
    80002220:	00004097          	auipc	ra,0x4
    80002224:	284080e7          	jalr	644(ra) # 800064a4 <_Z11printStringPKc>
}
    80002228:	01813083          	ld	ra,24(sp)
    8000222c:	01013403          	ld	s0,16(sp)
    80002230:	00813483          	ld	s1,8(sp)
    80002234:	02010113          	addi	sp,sp,32
    80002238:	00008067          	ret

000000008000223c <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv>:
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    return beforeTestFreeBlockNo == afterTestFreeBlockNo - minNoBlocksForSize - addendForSegDesc;

}

size_t MemoryAllocatorTest::getFreeBlocksCnt() {
    8000223c:	ff010113          	addi	sp,sp,-16
    80002240:	00113423          	sd	ra,8(sp)
    80002244:	00813023          	sd	s0,0(sp)
    80002248:	01010413          	addi	s0,sp,16
    MemoryAllocator::SegmentDescriptor* freeMemHead = MemoryAllocator::instance()->freeMemoryHead;
    8000224c:	00000097          	auipc	ra,0x0
    80002250:	930080e7          	jalr	-1744(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002254:	01853783          	ld	a5,24(a0)
    size_t blockCnt = 0;
    80002258:	00000513          	li	a0,0
    while (freeMemHead) {
    8000225c:	00078a63          	beqz	a5,80002270 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv+0x34>
        blockCnt += freeMemHead->noBlocks;
    80002260:	0007b703          	ld	a4,0(a5)
    80002264:	00e50533          	add	a0,a0,a4
        freeMemHead = freeMemHead->next;
    80002268:	0087b783          	ld	a5,8(a5)
    while (freeMemHead) {
    8000226c:	ff1ff06f          	j	8000225c <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv+0x20>
    }
    return blockCnt;
}
    80002270:	00813083          	ld	ra,8(sp)
    80002274:	00013403          	ld	s0,0(sp)
    80002278:	01010113          	addi	sp,sp,16
    8000227c:	00008067          	ret

0000000080002280 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>:

bool MemoryAllocatorTest::testMemoryMetadataValidity() {
    80002280:	fd010113          	addi	sp,sp,-48
    80002284:	02113423          	sd	ra,40(sp)
    80002288:	02813023          	sd	s0,32(sp)
    8000228c:	00913c23          	sd	s1,24(sp)
    80002290:	01213823          	sd	s2,16(sp)
    80002294:	01313423          	sd	s3,8(sp)
    80002298:	01413023          	sd	s4,0(sp)
    8000229c:	03010413          	addi	s0,sp,48
    800022a0:	00050913          	mv	s2,a0
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    800022a4:	00000097          	auipc	ra,0x0
    800022a8:	8d8080e7          	jalr	-1832(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>

    void* kmem_alloc(size_t size);
    int kmem_free(void* newFree);
    void printInstanceMemorySpaceParams();
    void printFreeMemoryHeadData();
    size_t getTotalFree() { return totalFree; }
    800022ac:	00053483          	ld	s1,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    800022b0:	00000097          	auipc	ra,0x0
    800022b4:	8cc080e7          	jalr	-1844(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800022b8:	00853a03          	ld	s4,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    800022bc:	00000097          	auipc	ra,0x0
    800022c0:	8c0080e7          	jalr	-1856(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    800022c4:	01053983          	ld	s3,16(a0)
    size_t freeBlocksCnt = getFreeBlocksCnt();
    800022c8:	00090513          	mv	a0,s2
    800022cc:	00000097          	auipc	ra,0x0
    800022d0:	f70080e7          	jalr	-144(ra) # 8000223c <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv>

    if (freeBlocksCnt != beforeTestFreeBlockNo) return false;
    800022d4:	02a99c63          	bne	s3,a0,8000230c <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x8c>
    if (freeBlocksCnt != beforeTestTotalFree / MEM_BLOCK_SIZE) return false;
    800022d8:	0064d793          	srli	a5,s1,0x6
    800022dc:	04a79a63          	bne	a5,a0,80002330 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0xb0>

    size_t totalMemory = (size_t) (MemoryAllocator::managedMemorySpaceEnd - MemoryAllocator::managedMemorySpaceStart);
    800022e0:	00008797          	auipc	a5,0x8
    800022e4:	4187b783          	ld	a5,1048(a5) # 8000a6f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800022e8:	0007b503          	ld	a0,0(a5)
    800022ec:	00008797          	auipc	a5,0x8
    800022f0:	4647b783          	ld	a5,1124(a5) # 8000a750 <_GLOBAL_OFFSET_TABLE_+0x68>
    800022f4:	0007b783          	ld	a5,0(a5)
    800022f8:	40f507b3          	sub	a5,a0,a5
    return totalMemory == beforeTestTotalFree + beforeTestTotalTaken;
    800022fc:	01448533          	add	a0,s1,s4
    80002300:	40f50533          	sub	a0,a0,a5
    80002304:	00153513          	seqz	a0,a0
    80002308:	0080006f          	j	80002310 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x90>
    if (freeBlocksCnt != beforeTestFreeBlockNo) return false;
    8000230c:	00000513          	li	a0,0
}
    80002310:	02813083          	ld	ra,40(sp)
    80002314:	02013403          	ld	s0,32(sp)
    80002318:	01813483          	ld	s1,24(sp)
    8000231c:	01013903          	ld	s2,16(sp)
    80002320:	00813983          	ld	s3,8(sp)
    80002324:	00013a03          	ld	s4,0(sp)
    80002328:	03010113          	addi	sp,sp,48
    8000232c:	00008067          	ret
    if (freeBlocksCnt != beforeTestTotalFree / MEM_BLOCK_SIZE) return false;
    80002330:	00000513          	li	a0,0
    80002334:	fddff06f          	j	80002310 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x90>

0000000080002338 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>:
bool MemoryAllocatorTest::testMemoryAllocate(uint64 size, void** allocatedMemoryPointer) {
    80002338:	fa010113          	addi	sp,sp,-96
    8000233c:	04113c23          	sd	ra,88(sp)
    80002340:	04813823          	sd	s0,80(sp)
    80002344:	04913423          	sd	s1,72(sp)
    80002348:	05213023          	sd	s2,64(sp)
    8000234c:	03313c23          	sd	s3,56(sp)
    80002350:	03413823          	sd	s4,48(sp)
    80002354:	03513423          	sd	s5,40(sp)
    80002358:	03613023          	sd	s6,32(sp)
    8000235c:	01713c23          	sd	s7,24(sp)
    80002360:	01813823          	sd	s8,16(sp)
    80002364:	01913423          	sd	s9,8(sp)
    80002368:	01a13023          	sd	s10,0(sp)
    8000236c:	06010413          	addi	s0,sp,96
    80002370:	00050a13          	mv	s4,a0
    80002374:	00058913          	mv	s2,a1
    80002378:	00060993          	mv	s3,a2
    if (!testMemoryMetadataValidity()) return false;
    8000237c:	00000097          	auipc	ra,0x0
    80002380:	f04080e7          	jalr	-252(ra) # 80002280 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002384:	00050493          	mv	s1,a0
    80002388:	04051063          	bnez	a0,800023c8 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x90>
}
    8000238c:	00048513          	mv	a0,s1
    80002390:	05813083          	ld	ra,88(sp)
    80002394:	05013403          	ld	s0,80(sp)
    80002398:	04813483          	ld	s1,72(sp)
    8000239c:	04013903          	ld	s2,64(sp)
    800023a0:	03813983          	ld	s3,56(sp)
    800023a4:	03013a03          	ld	s4,48(sp)
    800023a8:	02813a83          	ld	s5,40(sp)
    800023ac:	02013b03          	ld	s6,32(sp)
    800023b0:	01813b83          	ld	s7,24(sp)
    800023b4:	01013c03          	ld	s8,16(sp)
    800023b8:	00813c83          	ld	s9,8(sp)
    800023bc:	00013d03          	ld	s10,0(sp)
    800023c0:	06010113          	addi	sp,sp,96
    800023c4:	00008067          	ret
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    800023c8:	fffff097          	auipc	ra,0xfffff
    800023cc:	7b4080e7          	jalr	1972(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    800023d0:	00053b03          	ld	s6,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    800023d4:	fffff097          	auipc	ra,0xfffff
    800023d8:	7a8080e7          	jalr	1960(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800023dc:	00853b83          	ld	s7,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    800023e0:	fffff097          	auipc	ra,0xfffff
    800023e4:	79c080e7          	jalr	1948(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    800023e8:	01053c03          	ld	s8,16(a0)
    *allocatedMemoryPointer = MemoryAllocator::instance()->kmem_alloc(size);
    800023ec:	fffff097          	auipc	ra,0xfffff
    800023f0:	790080e7          	jalr	1936(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800023f4:	00090593          	mv	a1,s2
    800023f8:	00000097          	auipc	ra,0x0
    800023fc:	868080e7          	jalr	-1944(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80002400:	00050a93          	mv	s5,a0
    80002404:	00a9b023          	sd	a0,0(s3)
    if (*allocatedMemoryPointer == nullptr && size == (uint64) -37) return true;
    80002408:	08050663          	beqz	a0,80002494 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x15c>
    size_t minNoBlocksForSize = MemoryAllocator::getMinBlockNumber(size);
    8000240c:	00090513          	mv	a0,s2
    80002410:	fffff097          	auipc	ra,0xfffff
    80002414:	674080e7          	jalr	1652(ra) # 80001a84 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80002418:	00050993          	mv	s3,a0
    size_t addendForSegDesc = minNoBlocksForSize * MEM_BLOCK_SIZE - size < sizeof(MemoryAllocator::SegmentDescriptor);
    8000241c:	00651593          	slli	a1,a0,0x6
    80002420:	41258933          	sub	s2,a1,s2
    80002424:	01093913          	sltiu	s2,s2,16
    size_t allocatedMemory = (minNoBlocksForSize + addendForSegDesc) * MEM_BLOCK_SIZE;
    80002428:	01250cb3          	add	s9,a0,s2
    8000242c:	006c9d13          	slli	s10,s9,0x6
    if (!testMemoryMetadataValidity()) return false;
    80002430:	000a0513          	mv	a0,s4
    80002434:	00000097          	auipc	ra,0x0
    80002438:	e4c080e7          	jalr	-436(ra) # 80002280 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    8000243c:	00050493          	mv	s1,a0
    80002440:	f40506e3          	beqz	a0,8000238c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    size_t afterTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002444:	fffff097          	auipc	ra,0xfffff
    80002448:	738080e7          	jalr	1848(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    8000244c:	00053483          	ld	s1,0(a0)
    size_t afterTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002450:	fffff097          	auipc	ra,0xfffff
    80002454:	72c080e7          	jalr	1836(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    80002458:	00853a03          	ld	s4,8(a0)
    size_t afterTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    8000245c:	fffff097          	auipc	ra,0xfffff
    80002460:	720080e7          	jalr	1824(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002464:	01053783          	ld	a5,16(a0)
    if (beforeTestTotalFree != afterTestTotalFree + allocatedMemory) return false;
    80002468:	01a484b3          	add	s1,s1,s10
    8000246c:	03649a63          	bne	s1,s6,800024a0 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x168>
    if (beforeTestTotalTaken != afterTestTotalTaken - allocatedMemory) return false;
    80002470:	41aa0d33          	sub	s10,s4,s10
    80002474:	037d1a63          	bne	s10,s7,800024a8 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x170>
    if (beforeTestFreeBlockNo != afterTestFreeBlockNo + minNoBlocksForSize + addendForSegDesc) return false;
    80002478:	013789b3          	add	s3,a5,s3
    8000247c:	01298933          	add	s2,s3,s2
    80002480:	03891863          	bne	s2,s8,800024b0 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x178>
    return segDesc->noBlocks == minNoBlocksForSize + addendForSegDesc;
    80002484:	ff0ab483          	ld	s1,-16(s5)
    80002488:	409c84b3          	sub	s1,s9,s1
    8000248c:	0014b493          	seqz	s1,s1
    80002490:	efdff06f          	j	8000238c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (*allocatedMemoryPointer == nullptr && size == (uint64) -37) return true;
    80002494:	fdb00793          	li	a5,-37
    80002498:	f6f91ae3          	bne	s2,a5,8000240c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0xd4>
    8000249c:	ef1ff06f          	j	8000238c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestTotalFree != afterTestTotalFree + allocatedMemory) return false;
    800024a0:	00000493          	li	s1,0
    800024a4:	ee9ff06f          	j	8000238c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestTotalTaken != afterTestTotalTaken - allocatedMemory) return false;
    800024a8:	00000493          	li	s1,0
    800024ac:	ee1ff06f          	j	8000238c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestFreeBlockNo != afterTestFreeBlockNo + minNoBlocksForSize + addendForSegDesc) return false;
    800024b0:	00000493          	li	s1,0
    800024b4:	ed9ff06f          	j	8000238c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>

00000000800024b8 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>:
bool MemoryAllocatorTest::testMemoryFree(uint64 size, void* allocatedMemoryPointer) {
    800024b8:	fb010113          	addi	sp,sp,-80
    800024bc:	04113423          	sd	ra,72(sp)
    800024c0:	04813023          	sd	s0,64(sp)
    800024c4:	02913c23          	sd	s1,56(sp)
    800024c8:	03213823          	sd	s2,48(sp)
    800024cc:	03313423          	sd	s3,40(sp)
    800024d0:	03413023          	sd	s4,32(sp)
    800024d4:	01513c23          	sd	s5,24(sp)
    800024d8:	01613823          	sd	s6,16(sp)
    800024dc:	01713423          	sd	s7,8(sp)
    800024e0:	01813023          	sd	s8,0(sp)
    800024e4:	05010413          	addi	s0,sp,80
    800024e8:	00050a13          	mv	s4,a0
    800024ec:	00058913          	mv	s2,a1
    800024f0:	00060493          	mv	s1,a2
    if (!testMemoryMetadataValidity()) return false;
    800024f4:	00000097          	auipc	ra,0x0
    800024f8:	d8c080e7          	jalr	-628(ra) # 80002280 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800024fc:	02051a63          	bnez	a0,80002530 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x78>
}
    80002500:	04813083          	ld	ra,72(sp)
    80002504:	04013403          	ld	s0,64(sp)
    80002508:	03813483          	ld	s1,56(sp)
    8000250c:	03013903          	ld	s2,48(sp)
    80002510:	02813983          	ld	s3,40(sp)
    80002514:	02013a03          	ld	s4,32(sp)
    80002518:	01813a83          	ld	s5,24(sp)
    8000251c:	01013b03          	ld	s6,16(sp)
    80002520:	00813b83          	ld	s7,8(sp)
    80002524:	00013c03          	ld	s8,0(sp)
    80002528:	05010113          	addi	sp,sp,80
    8000252c:	00008067          	ret
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002530:	fffff097          	auipc	ra,0xfffff
    80002534:	64c080e7          	jalr	1612(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    80002538:	00053b03          	ld	s6,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    8000253c:	fffff097          	auipc	ra,0xfffff
    80002540:	640080e7          	jalr	1600(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    80002544:	00853b83          	ld	s7,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    80002548:	fffff097          	auipc	ra,0xfffff
    8000254c:	634080e7          	jalr	1588(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002550:	01053a83          	ld	s5,16(a0)
    size_t minNoBlocksForSize = MemoryAllocator::getMinBlockNumber(size);
    80002554:	00090513          	mv	a0,s2
    80002558:	fffff097          	auipc	ra,0xfffff
    8000255c:	52c080e7          	jalr	1324(ra) # 80001a84 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80002560:	00050993          	mv	s3,a0
    size_t addendForSegDesc = minNoBlocksForSize * MEM_BLOCK_SIZE - size < sizeof(MemoryAllocator::SegmentDescriptor);
    80002564:	00651593          	slli	a1,a0,0x6
    80002568:	41258933          	sub	s2,a1,s2
    8000256c:	01093913          	sltiu	s2,s2,16
    size_t allocatedMemory = (minNoBlocksForSize + addendForSegDesc) * MEM_BLOCK_SIZE;
    80002570:	01250733          	add	a4,a0,s2
    80002574:	00671c13          	slli	s8,a4,0x6
    if (!allocatedMemoryPointer) {
    80002578:	08048463          	beqz	s1,80002600 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x148>
    if (allocatedMemoryPointer) segDesc = (MemoryAllocator::SegmentDescriptor*)
    8000257c:	08048a63          	beqz	s1,80002610 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x158>
    80002580:	ff048793          	addi	a5,s1,-16
    if (allocatedMemoryPointer)
    80002584:	00048863          	beqz	s1,80002594 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xdc>
    if (segDesc->noBlocks != minNoBlocksForSize + addendForSegDesc) return false;
    80002588:	0007b703          	ld	a4,0(a5)
    8000258c:	012987b3          	add	a5,s3,s2
    80002590:	08f71463          	bne	a4,a5,80002618 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x160>
    MemoryAllocator::instance()->kmem_free(allocatedMemoryPointer);
    80002594:	fffff097          	auipc	ra,0xfffff
    80002598:	5e8080e7          	jalr	1512(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    8000259c:	00048593          	mv	a1,s1
    800025a0:	fffff097          	auipc	ra,0xfffff
    800025a4:	768080e7          	jalr	1896(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    800025a8:	000a0513          	mv	a0,s4
    800025ac:	00000097          	auipc	ra,0x0
    800025b0:	cd4080e7          	jalr	-812(ra) # 80002280 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800025b4:	f40506e3          	beqz	a0,80002500 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    size_t afterTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    800025b8:	fffff097          	auipc	ra,0xfffff
    800025bc:	5c4080e7          	jalr	1476(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    800025c0:	00053483          	ld	s1,0(a0)
    size_t afterTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    800025c4:	fffff097          	auipc	ra,0xfffff
    800025c8:	5b8080e7          	jalr	1464(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800025cc:	00853a03          	ld	s4,8(a0)
    size_t afterTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    800025d0:	fffff097          	auipc	ra,0xfffff
    800025d4:	5ac080e7          	jalr	1452(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    800025d8:	01053783          	ld	a5,16(a0)
    if (beforeTestTotalFree != afterTestTotalFree - allocatedMemory) return false;
    800025dc:	418484b3          	sub	s1,s1,s8
    800025e0:	05649063          	bne	s1,s6,80002620 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x168>
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    800025e4:	014c0733          	add	a4,s8,s4
    800025e8:	05771063          	bne	a4,s7,80002628 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x170>
    return beforeTestFreeBlockNo == afterTestFreeBlockNo - minNoBlocksForSize - addendForSegDesc;
    800025ec:	41378533          	sub	a0,a5,s3
    800025f0:	41250533          	sub	a0,a0,s2
    800025f4:	41550533          	sub	a0,a0,s5
    800025f8:	00153513          	seqz	a0,a0
    800025fc:	f05ff06f          	j	80002500 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
        minNoBlocksForSize = 0; addendForSegDesc = 0; allocatedMemory = 0;
    80002600:	00000c13          	li	s8,0
    80002604:	00000913          	li	s2,0
    80002608:	00000993          	li	s3,0
    8000260c:	f71ff06f          	j	8000257c <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xc4>
    MemoryAllocator::SegmentDescriptor* segDesc = nullptr;
    80002610:	00048793          	mv	a5,s1
    80002614:	f71ff06f          	j	80002584 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xcc>
    if (segDesc->noBlocks != minNoBlocksForSize + addendForSegDesc) return false;
    80002618:	00000513          	li	a0,0
    8000261c:	ee5ff06f          	j	80002500 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    if (beforeTestTotalFree != afterTestTotalFree - allocatedMemory) return false;
    80002620:	00000513          	li	a0,0
    80002624:	eddff06f          	j	80002500 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    80002628:	00000513          	li	a0,0
    8000262c:	ed5ff06f          	j	80002500 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>

0000000080002630 <_ZN19MemoryAllocatorTest13firstFitTest1Ev>:
    if (!firstFitTest2()) return false;
    if (!firstFitTest3()) return false;
    return true;
}

bool MemoryAllocatorTest::firstFitTest1() {
    80002630:	fc010113          	addi	sp,sp,-64
    80002634:	02113c23          	sd	ra,56(sp)
    80002638:	02813823          	sd	s0,48(sp)
    8000263c:	02913423          	sd	s1,40(sp)
    80002640:	03213023          	sd	s2,32(sp)
    80002644:	01313c23          	sd	s3,24(sp)
    80002648:	01413823          	sd	s4,16(sp)
    8000264c:	01513423          	sd	s5,8(sp)
    80002650:	04010413          	addi	s0,sp,64
    80002654:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    80002658:	00000097          	auipc	ra,0x0
    8000265c:	c28080e7          	jalr	-984(ra) # 80002280 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002660:	02051463          	bnez	a0,80002688 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x58>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002664:	03813083          	ld	ra,56(sp)
    80002668:	03013403          	ld	s0,48(sp)
    8000266c:	02813483          	ld	s1,40(sp)
    80002670:	02013903          	ld	s2,32(sp)
    80002674:	01813983          	ld	s3,24(sp)
    80002678:	01013a03          	ld	s4,16(sp)
    8000267c:	00813a83          	ld	s5,8(sp)
    80002680:	04010113          	addi	sp,sp,64
    80002684:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002688:	fffff097          	auipc	ra,0xfffff
    8000268c:	4f4080e7          	jalr	1268(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002690:	02f00593          	li	a1,47
    80002694:	fffff097          	auipc	ra,0xfffff
    80002698:	5cc080e7          	jalr	1484(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    8000269c:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    800026a0:	00008797          	auipc	a5,0x8
    800026a4:	0b07b783          	ld	a5,176(a5) # 8000a750 <_GLOBAL_OFFSET_TABLE_+0x68>
    800026a8:	0007b783          	ld	a5,0(a5)
    800026ac:	01078793          	addi	a5,a5,16
    800026b0:	00a78663          	beq	a5,a0,800026bc <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x8c>
        return false;
    800026b4:	00000513          	li	a0,0
    800026b8:	fadff06f          	j	80002664 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    800026bc:	fffff097          	auipc	ra,0xfffff
    800026c0:	4c0080e7          	jalr	1216(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800026c4:	03000593          	li	a1,48
    800026c8:	fffff097          	auipc	ra,0xfffff
    800026cc:	598080e7          	jalr	1432(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    800026d0:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    800026d4:	00008797          	auipc	a5,0x8
    800026d8:	07c7b783          	ld	a5,124(a5) # 8000a750 <_GLOBAL_OFFSET_TABLE_+0x68>
    800026dc:	0007b783          	ld	a5,0(a5)
    800026e0:	05078793          	addi	a5,a5,80
    800026e4:	00a78663          	beq	a5,a0,800026f0 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0xc0>
        return false;
    800026e8:	00000513          	li	a0,0
    800026ec:	f79ff06f          	j	80002664 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    800026f0:	fffff097          	auipc	ra,0xfffff
    800026f4:	48c080e7          	jalr	1164(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800026f8:	03100593          	li	a1,49
    800026fc:	fffff097          	auipc	ra,0xfffff
    80002700:	564080e7          	jalr	1380(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80002704:	00050a13          	mv	s4,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + 2 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002708:	00008797          	auipc	a5,0x8
    8000270c:	0487b783          	ld	a5,72(a5) # 8000a750 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002710:	0007b783          	ld	a5,0(a5)
    80002714:	09078793          	addi	a5,a5,144
    80002718:	00a78663          	beq	a5,a0,80002724 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0xf4>
        return false;
    8000271c:	00000513          	li	a0,0
    80002720:	f45ff06f          	j	80002664 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002724:	fffff097          	auipc	ra,0xfffff
    80002728:	458080e7          	jalr	1112(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    8000272c:	00098593          	mv	a1,s3
    80002730:	fffff097          	auipc	ra,0xfffff
    80002734:	5d8080e7          	jalr	1496(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002738:	fffff097          	auipc	ra,0xfffff
    8000273c:	444080e7          	jalr	1092(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002740:	01e00593          	li	a1,30
    80002744:	fffff097          	auipc	ra,0xfffff
    80002748:	51c080e7          	jalr	1308(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    8000274c:	00050993          	mv	s3,a0
    if (pointers[3] != MemoryAllocator::managedMemorySpaceStart + 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002750:	00008797          	auipc	a5,0x8
    80002754:	0007b783          	ld	a5,0(a5) # 8000a750 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002758:	0007b783          	ld	a5,0(a5)
    8000275c:	05078793          	addi	a5,a5,80
    80002760:	00a78663          	beq	a5,a0,8000276c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x13c>
        return false;
    80002764:	00000513          	li	a0,0
    80002768:	efdff06f          	j	80002664 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    8000276c:	fffff097          	auipc	ra,0xfffff
    80002770:	410080e7          	jalr	1040(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002774:	12100593          	li	a1,289
    80002778:	fffff097          	auipc	ra,0xfffff
    8000277c:	4e8080e7          	jalr	1256(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80002780:	00050a93          	mv	s5,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + 4 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002784:	00008797          	auipc	a5,0x8
    80002788:	fcc7b783          	ld	a5,-52(a5) # 8000a750 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000278c:	0007b783          	ld	a5,0(a5)
    80002790:	11078793          	addi	a5,a5,272
    80002794:	00a78663          	beq	a5,a0,800027a0 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x170>
        return false;
    80002798:	00000513          	li	a0,0
    8000279c:	ec9ff06f          	j	80002664 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    if (!testMemoryMetadataValidity()) return false;
    800027a0:	00048513          	mv	a0,s1
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	adc080e7          	jalr	-1316(ra) # 80002280 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800027ac:	ea050ce3          	beqz	a0,80002664 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    800027b0:	fffff097          	auipc	ra,0xfffff
    800027b4:	3cc080e7          	jalr	972(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800027b8:	00090593          	mv	a1,s2
    800027bc:	fffff097          	auipc	ra,0xfffff
    800027c0:	54c080e7          	jalr	1356(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    800027c4:	fffff097          	auipc	ra,0xfffff
    800027c8:	3b8080e7          	jalr	952(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800027cc:	000a0593          	mv	a1,s4
    800027d0:	fffff097          	auipc	ra,0xfffff
    800027d4:	538080e7          	jalr	1336(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    800027d8:	fffff097          	auipc	ra,0xfffff
    800027dc:	3a4080e7          	jalr	932(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800027e0:	00098593          	mv	a1,s3
    800027e4:	fffff097          	auipc	ra,0xfffff
    800027e8:	524080e7          	jalr	1316(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    800027ec:	fffff097          	auipc	ra,0xfffff
    800027f0:	390080e7          	jalr	912(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800027f4:	000a8593          	mv	a1,s5
    800027f8:	fffff097          	auipc	ra,0xfffff
    800027fc:	510080e7          	jalr	1296(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002800:	00048513          	mv	a0,s1
    80002804:	00000097          	auipc	ra,0x0
    80002808:	a7c080e7          	jalr	-1412(ra) # 80002280 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    8000280c:	e59ff06f          	j	80002664 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>

0000000080002810 <_ZN19MemoryAllocatorTest12printPointerEiPPv>:


void MemoryAllocatorTest::printPointer(int i, void** pointers) {
    80002810:	fe010113          	addi	sp,sp,-32
    80002814:	00113c23          	sd	ra,24(sp)
    80002818:	00813823          	sd	s0,16(sp)
    8000281c:	00913423          	sd	s1,8(sp)
    80002820:	01213023          	sd	s2,0(sp)
    80002824:	02010413          	addi	s0,sp,32
    80002828:	00058913          	mv	s2,a1
    8000282c:	00060493          	mv	s1,a2
    printString("\npointers[");
    80002830:	00007517          	auipc	a0,0x7
    80002834:	bf050513          	addi	a0,a0,-1040 # 80009420 <CONSOLE_STATUS+0x410>
    80002838:	00004097          	auipc	ra,0x4
    8000283c:	c6c080e7          	jalr	-916(ra) # 800064a4 <_Z11printStringPKc>
    printInteger(i);
    80002840:	00090513          	mv	a0,s2
    80002844:	00004097          	auipc	ra,0x4
    80002848:	cd0080e7          	jalr	-816(ra) # 80006514 <_Z12printIntegerm>
    printString("]: ");
    8000284c:	00007517          	auipc	a0,0x7
    80002850:	be450513          	addi	a0,a0,-1052 # 80009430 <CONSOLE_STATUS+0x420>
    80002854:	00004097          	auipc	ra,0x4
    80002858:	c50080e7          	jalr	-944(ra) # 800064a4 <_Z11printStringPKc>
    printInteger((uint64)((uint8*) pointers[i] - MemoryAllocator::managedMemorySpaceStart));
    8000285c:	00391613          	slli	a2,s2,0x3
    80002860:	00c484b3          	add	s1,s1,a2
    80002864:	0004b503          	ld	a0,0(s1)
    80002868:	00008797          	auipc	a5,0x8
    8000286c:	ee87b783          	ld	a5,-280(a5) # 8000a750 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002870:	0007b783          	ld	a5,0(a5)
    80002874:	40f50533          	sub	a0,a0,a5
    80002878:	00004097          	auipc	ra,0x4
    8000287c:	c9c080e7          	jalr	-868(ra) # 80006514 <_Z12printIntegerm>
    printString("\npointers[");
    80002880:	00007517          	auipc	a0,0x7
    80002884:	ba050513          	addi	a0,a0,-1120 # 80009420 <CONSOLE_STATUS+0x410>
    80002888:	00004097          	auipc	ra,0x4
    8000288c:	c1c080e7          	jalr	-996(ra) # 800064a4 <_Z11printStringPKc>
    printInteger(i);
    80002890:	00090513          	mv	a0,s2
    80002894:	00004097          	auipc	ra,0x4
    80002898:	c80080e7          	jalr	-896(ra) # 80006514 <_Z12printIntegerm>
    printString("]->blockNo: "); printInteger((uint64) (((MemoryAllocator::SegmentDescriptor*) pointers[i])->noBlocks));
    8000289c:	00007517          	auipc	a0,0x7
    800028a0:	b9c50513          	addi	a0,a0,-1124 # 80009438 <CONSOLE_STATUS+0x428>
    800028a4:	00004097          	auipc	ra,0x4
    800028a8:	c00080e7          	jalr	-1024(ra) # 800064a4 <_Z11printStringPKc>
    800028ac:	0004b783          	ld	a5,0(s1)
    800028b0:	0007b503          	ld	a0,0(a5)
    800028b4:	00004097          	auipc	ra,0x4
    800028b8:	c60080e7          	jalr	-928(ra) # 80006514 <_Z12printIntegerm>
    printString("\n");
    800028bc:	00007517          	auipc	a0,0x7
    800028c0:	86450513          	addi	a0,a0,-1948 # 80009120 <CONSOLE_STATUS+0x110>
    800028c4:	00004097          	auipc	ra,0x4
    800028c8:	be0080e7          	jalr	-1056(ra) # 800064a4 <_Z11printStringPKc>
}
    800028cc:	01813083          	ld	ra,24(sp)
    800028d0:	01013403          	ld	s0,16(sp)
    800028d4:	00813483          	ld	s1,8(sp)
    800028d8:	00013903          	ld	s2,0(sp)
    800028dc:	02010113          	addi	sp,sp,32
    800028e0:	00008067          	ret

00000000800028e4 <_ZN19MemoryAllocatorTest13firstFitTest2Ev>:

bool MemoryAllocatorTest::firstFitTest2() {
    800028e4:	fc010113          	addi	sp,sp,-64
    800028e8:	02113c23          	sd	ra,56(sp)
    800028ec:	02813823          	sd	s0,48(sp)
    800028f0:	02913423          	sd	s1,40(sp)
    800028f4:	03213023          	sd	s2,32(sp)
    800028f8:	01313c23          	sd	s3,24(sp)
    800028fc:	01413823          	sd	s4,16(sp)
    80002900:	01513423          	sd	s5,8(sp)
    80002904:	04010413          	addi	s0,sp,64
    80002908:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    8000290c:	00000097          	auipc	ra,0x0
    80002910:	974080e7          	jalr	-1676(ra) # 80002280 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002914:	02051463          	bnez	a0,8000293c <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x58>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002918:	03813083          	ld	ra,56(sp)
    8000291c:	03013403          	ld	s0,48(sp)
    80002920:	02813483          	ld	s1,40(sp)
    80002924:	02013903          	ld	s2,32(sp)
    80002928:	01813983          	ld	s3,24(sp)
    8000292c:	01013a03          	ld	s4,16(sp)
    80002930:	00813a83          	ld	s5,8(sp)
    80002934:	04010113          	addi	sp,sp,64
    80002938:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    8000293c:	fffff097          	auipc	ra,0xfffff
    80002940:	240080e7          	jalr	576(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002944:	08200593          	li	a1,130
    80002948:	fffff097          	auipc	ra,0xfffff
    8000294c:	318080e7          	jalr	792(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80002950:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002954:	00008797          	auipc	a5,0x8
    80002958:	dfc7b783          	ld	a5,-516(a5) # 8000a750 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000295c:	0007b783          	ld	a5,0(a5)
    80002960:	01078793          	addi	a5,a5,16
    80002964:	00a78663          	beq	a5,a0,80002970 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x8c>
        return false;
    80002968:	00000513          	li	a0,0
    8000296c:	fadff06f          	j	80002918 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    80002970:	fffff097          	auipc	ra,0xfffff
    80002974:	20c080e7          	jalr	524(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002978:	01400593          	li	a1,20
    8000297c:	fffff097          	auipc	ra,0xfffff
    80002980:	2e4080e7          	jalr	740(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80002984:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 3 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002988:	00008797          	auipc	a5,0x8
    8000298c:	dc87b783          	ld	a5,-568(a5) # 8000a750 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002990:	0007b783          	ld	a5,0(a5)
    80002994:	0d078793          	addi	a5,a5,208
    80002998:	00a78663          	beq	a5,a0,800029a4 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0xc0>
        return false;
    8000299c:	00000513          	li	a0,0
    800029a0:	f79ff06f          	j	80002918 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    800029a4:	fffff097          	auipc	ra,0xfffff
    800029a8:	1d8080e7          	jalr	472(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800029ac:	00090593          	mv	a1,s2
    800029b0:	fffff097          	auipc	ra,0xfffff
    800029b4:	358080e7          	jalr	856(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    800029b8:	fffff097          	auipc	ra,0xfffff
    800029bc:	1c4080e7          	jalr	452(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800029c0:	07800593          	li	a1,120
    800029c4:	fffff097          	auipc	ra,0xfffff
    800029c8:	29c080e7          	jalr	668(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    800029cc:	00050913          	mv	s2,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    800029d0:	00008797          	auipc	a5,0x8
    800029d4:	d807b783          	ld	a5,-640(a5) # 8000a750 <_GLOBAL_OFFSET_TABLE_+0x68>
    800029d8:	0007b783          	ld	a5,0(a5)
    800029dc:	01078793          	addi	a5,a5,16
    800029e0:	00a78663          	beq	a5,a0,800029ec <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x108>
        return false;
    800029e4:	00000513          	li	a0,0
    800029e8:	f31ff06f          	j	80002918 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    800029ec:	fffff097          	auipc	ra,0xfffff
    800029f0:	190080e7          	jalr	400(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800029f4:	01e00593          	li	a1,30
    800029f8:	fffff097          	auipc	ra,0xfffff
    800029fc:	268080e7          	jalr	616(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80002a00:	00050a13          	mv	s4,a0
    if (pointers[3] != MemoryAllocator::managedMemorySpaceStart + 4 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002a04:	00008797          	auipc	a5,0x8
    80002a08:	d4c7b783          	ld	a5,-692(a5) # 8000a750 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a0c:	0007b783          	ld	a5,0(a5)
    80002a10:	11078793          	addi	a5,a5,272
    80002a14:	00a78663          	beq	a5,a0,80002a20 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x13c>
        return false;
    80002a18:	00000513          	li	a0,0
    80002a1c:	efdff06f          	j	80002918 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002a20:	fffff097          	auipc	ra,0xfffff
    80002a24:	15c080e7          	jalr	348(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002a28:	00090593          	mv	a1,s2
    80002a2c:	fffff097          	auipc	ra,0xfffff
    80002a30:	2dc080e7          	jalr	732(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002a34:	fffff097          	auipc	ra,0xfffff
    80002a38:	148080e7          	jalr	328(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002a3c:	02f00593          	li	a1,47
    80002a40:	fffff097          	auipc	ra,0xfffff
    80002a44:	220080e7          	jalr	544(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80002a48:	00050913          	mv	s2,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002a4c:	00008797          	auipc	a5,0x8
    80002a50:	d047b783          	ld	a5,-764(a5) # 8000a750 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a54:	0007b783          	ld	a5,0(a5)
    80002a58:	01078793          	addi	a5,a5,16
    80002a5c:	00a78663          	beq	a5,a0,80002a68 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x184>
        return false;
    80002a60:	00000513          	li	a0,0
    80002a64:	eb5ff06f          	j	80002918 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[5] = MemoryAllocator::instance()->kmem_alloc(sizes[5]);
    80002a68:	fffff097          	auipc	ra,0xfffff
    80002a6c:	114080e7          	jalr	276(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002a70:	01400593          	li	a1,20
    80002a74:	fffff097          	auipc	ra,0xfffff
    80002a78:	1ec080e7          	jalr	492(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80002a7c:	00050a93          	mv	s5,a0
    if (pointers[5] != MemoryAllocator::managedMemorySpaceStart + 1 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002a80:	00008797          	auipc	a5,0x8
    80002a84:	cd07b783          	ld	a5,-816(a5) # 8000a750 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a88:	0007b783          	ld	a5,0(a5)
    80002a8c:	05078793          	addi	a5,a5,80
    80002a90:	00a78663          	beq	a5,a0,80002a9c <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x1b8>
        return false;
    80002a94:	00000513          	li	a0,0
    80002a98:	e81ff06f          	j	80002918 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    if (!testMemoryMetadataValidity()) return false;
    80002a9c:	00048513          	mv	a0,s1
    80002aa0:	fffff097          	auipc	ra,0xfffff
    80002aa4:	7e0080e7          	jalr	2016(ra) # 80002280 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002aa8:	e60508e3          	beqz	a0,80002918 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002aac:	fffff097          	auipc	ra,0xfffff
    80002ab0:	0d0080e7          	jalr	208(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002ab4:	00098593          	mv	a1,s3
    80002ab8:	fffff097          	auipc	ra,0xfffff
    80002abc:	250080e7          	jalr	592(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002ac0:	fffff097          	auipc	ra,0xfffff
    80002ac4:	0bc080e7          	jalr	188(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002ac8:	000a0593          	mv	a1,s4
    80002acc:	fffff097          	auipc	ra,0xfffff
    80002ad0:	23c080e7          	jalr	572(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80002ad4:	fffff097          	auipc	ra,0xfffff
    80002ad8:	0a8080e7          	jalr	168(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002adc:	00090593          	mv	a1,s2
    80002ae0:	fffff097          	auipc	ra,0xfffff
    80002ae4:	228080e7          	jalr	552(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    80002ae8:	fffff097          	auipc	ra,0xfffff
    80002aec:	094080e7          	jalr	148(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002af0:	000a8593          	mv	a1,s5
    80002af4:	fffff097          	auipc	ra,0xfffff
    80002af8:	214080e7          	jalr	532(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002afc:	00048513          	mv	a0,s1
    80002b00:	fffff097          	auipc	ra,0xfffff
    80002b04:	780080e7          	jalr	1920(ra) # 80002280 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002b08:	e11ff06f          	j	80002918 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>

0000000080002b0c <_ZN19MemoryAllocatorTest13firstFitTest3Ev>:


bool MemoryAllocatorTest::firstFitTest3() {
    80002b0c:	fb010113          	addi	sp,sp,-80
    80002b10:	04113423          	sd	ra,72(sp)
    80002b14:	04813023          	sd	s0,64(sp)
    80002b18:	02913c23          	sd	s1,56(sp)
    80002b1c:	03213823          	sd	s2,48(sp)
    80002b20:	03313423          	sd	s3,40(sp)
    80002b24:	03413023          	sd	s4,32(sp)
    80002b28:	01513c23          	sd	s5,24(sp)
    80002b2c:	01613823          	sd	s6,16(sp)
    80002b30:	01713423          	sd	s7,8(sp)
    80002b34:	05010413          	addi	s0,sp,80
    80002b38:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    80002b3c:	fffff097          	auipc	ra,0xfffff
    80002b40:	744080e7          	jalr	1860(ra) # 80002280 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002b44:	02051863          	bnez	a0,80002b74 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x68>
    MemoryAllocator::instance()->kmem_free(pointers[6]);
    MemoryAllocator::instance()->kmem_free(pointers[7]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002b48:	04813083          	ld	ra,72(sp)
    80002b4c:	04013403          	ld	s0,64(sp)
    80002b50:	03813483          	ld	s1,56(sp)
    80002b54:	03013903          	ld	s2,48(sp)
    80002b58:	02813983          	ld	s3,40(sp)
    80002b5c:	02013a03          	ld	s4,32(sp)
    80002b60:	01813a83          	ld	s5,24(sp)
    80002b64:	01013b03          	ld	s6,16(sp)
    80002b68:	00813b83          	ld	s7,8(sp)
    80002b6c:	05010113          	addi	sp,sp,80
    80002b70:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002b74:	fffff097          	auipc	ra,0xfffff
    80002b78:	008080e7          	jalr	8(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002b7c:	13000593          	li	a1,304
    80002b80:	fffff097          	auipc	ra,0xfffff
    80002b84:	0e0080e7          	jalr	224(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80002b88:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002b8c:	00008797          	auipc	a5,0x8
    80002b90:	bc47b783          	ld	a5,-1084(a5) # 8000a750 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b94:	0007b783          	ld	a5,0(a5)
    80002b98:	01078793          	addi	a5,a5,16
    80002b9c:	00a78663          	beq	a5,a0,80002ba8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x9c>
        return false;
    80002ba0:	00000513          	li	a0,0
    80002ba4:	fa5ff06f          	j	80002b48 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    80002ba8:	fffff097          	auipc	ra,0xfffff
    80002bac:	fd4080e7          	jalr	-44(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002bb0:	03100593          	li	a1,49
    80002bb4:	fffff097          	auipc	ra,0xfffff
    80002bb8:	0ac080e7          	jalr	172(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80002bbc:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 5 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002bc0:	00008797          	auipc	a5,0x8
    80002bc4:	b907b783          	ld	a5,-1136(a5) # 8000a750 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002bc8:	0007b783          	ld	a5,0(a5)
    80002bcc:	15078793          	addi	a5,a5,336
    80002bd0:	00a78663          	beq	a5,a0,80002bdc <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0xd0>
        return false;
    80002bd4:	00000513          	li	a0,0
    80002bd8:	f71ff06f          	j	80002b48 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    80002bdc:	fffff097          	auipc	ra,0xfffff
    80002be0:	fa0080e7          	jalr	-96(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002be4:	00090593          	mv	a1,s2
    80002be8:	fffff097          	auipc	ra,0xfffff
    80002bec:	120080e7          	jalr	288(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    80002bf0:	fffff097          	auipc	ra,0xfffff
    80002bf4:	f8c080e7          	jalr	-116(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002bf8:	0e600593          	li	a1,230
    80002bfc:	fffff097          	auipc	ra,0xfffff
    80002c00:	064080e7          	jalr	100(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80002c04:	00050913          	mv	s2,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002c08:	00008797          	auipc	a5,0x8
    80002c0c:	b487b783          	ld	a5,-1208(a5) # 8000a750 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002c10:	0007b783          	ld	a5,0(a5)
    80002c14:	01078793          	addi	a5,a5,16
    80002c18:	00a78663          	beq	a5,a0,80002c24 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x118>
        return false;
    80002c1c:	00000513          	li	a0,0
    80002c20:	f29ff06f          	j	80002b48 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002c24:	fffff097          	auipc	ra,0xfffff
    80002c28:	f58080e7          	jalr	-168(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002c2c:	fdb00593          	li	a1,-37
    80002c30:	fffff097          	auipc	ra,0xfffff
    80002c34:	030080e7          	jalr	48(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80002c38:	00050a13          	mv	s4,a0
    if (pointers[3]) return false;
    80002c3c:	00050663          	beqz	a0,80002c48 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x13c>
    80002c40:	00000513          	li	a0,0
    80002c44:	f05ff06f          	j	80002b48 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002c48:	fffff097          	auipc	ra,0xfffff
    80002c4c:	f34080e7          	jalr	-204(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002c50:	01e00593          	li	a1,30
    80002c54:	fffff097          	auipc	ra,0xfffff
    80002c58:	00c080e7          	jalr	12(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80002c5c:	00050a93          	mv	s5,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + 7 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002c60:	00008797          	auipc	a5,0x8
    80002c64:	af07b783          	ld	a5,-1296(a5) # 8000a750 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002c68:	0007b783          	ld	a5,0(a5)
    80002c6c:	1d078793          	addi	a5,a5,464
    80002c70:	00a78663          	beq	a5,a0,80002c7c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x170>
        return false;
    80002c74:	00000513          	li	a0,0
    80002c78:	ed1ff06f          	j	80002b48 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002c7c:	fffff097          	auipc	ra,0xfffff
    80002c80:	f00080e7          	jalr	-256(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002c84:	00090593          	mv	a1,s2
    80002c88:	fffff097          	auipc	ra,0xfffff
    80002c8c:	080080e7          	jalr	128(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[5] = MemoryAllocator::instance()->kmem_alloc(sizes[5]);
    80002c90:	fffff097          	auipc	ra,0xfffff
    80002c94:	eec080e7          	jalr	-276(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002c98:	09600593          	li	a1,150
    80002c9c:	fffff097          	auipc	ra,0xfffff
    80002ca0:	fc4080e7          	jalr	-60(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80002ca4:	00050b93          	mv	s7,a0
    if (pointers[5] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002ca8:	00008797          	auipc	a5,0x8
    80002cac:	aa87b783          	ld	a5,-1368(a5) # 8000a750 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002cb0:	0007b783          	ld	a5,0(a5)
    80002cb4:	01078793          	addi	a5,a5,16
    80002cb8:	00a78663          	beq	a5,a0,80002cc4 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x1b8>
        return false;
    80002cbc:	00000513          	li	a0,0
    80002cc0:	e89ff06f          	j	80002b48 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[6] = MemoryAllocator::instance()->kmem_alloc(sizes[6]);
    80002cc4:	fffff097          	auipc	ra,0xfffff
    80002cc8:	eb8080e7          	jalr	-328(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002ccc:	02f00593          	li	a1,47
    80002cd0:	fffff097          	auipc	ra,0xfffff
    80002cd4:	f90080e7          	jalr	-112(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80002cd8:	00050b13          	mv	s6,a0
    if (pointers[6] != MemoryAllocator::managedMemorySpaceStart + 3 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002cdc:	00008797          	auipc	a5,0x8
    80002ce0:	a747b783          	ld	a5,-1420(a5) # 8000a750 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002ce4:	0007b783          	ld	a5,0(a5)
    80002ce8:	0d078793          	addi	a5,a5,208
    80002cec:	00a78663          	beq	a5,a0,80002cf8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x1ec>
        return false;
    80002cf0:	00000513          	li	a0,0
    80002cf4:	e55ff06f          	j	80002b48 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[7] = MemoryAllocator::instance()->kmem_alloc(sizes[7]);
    80002cf8:	fffff097          	auipc	ra,0xfffff
    80002cfc:	e84080e7          	jalr	-380(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002d00:	02500593          	li	a1,37
    80002d04:	fffff097          	auipc	ra,0xfffff
    80002d08:	f5c080e7          	jalr	-164(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80002d0c:	00050913          	mv	s2,a0
    if (pointers[7] != MemoryAllocator::managedMemorySpaceStart + 8 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002d10:	00008797          	auipc	a5,0x8
    80002d14:	a407b783          	ld	a5,-1472(a5) # 8000a750 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002d18:	0007b783          	ld	a5,0(a5)
    80002d1c:	21078793          	addi	a5,a5,528
    80002d20:	00a78663          	beq	a5,a0,80002d2c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x220>
        return false;
    80002d24:	00000513          	li	a0,0
    80002d28:	e21ff06f          	j	80002b48 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    if (!testMemoryMetadataValidity()) return false;
    80002d2c:	00048513          	mv	a0,s1
    80002d30:	fffff097          	auipc	ra,0xfffff
    80002d34:	550080e7          	jalr	1360(ra) # 80002280 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002d38:	e00508e3          	beqz	a0,80002b48 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002d3c:	fffff097          	auipc	ra,0xfffff
    80002d40:	e40080e7          	jalr	-448(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002d44:	00098593          	mv	a1,s3
    80002d48:	fffff097          	auipc	ra,0xfffff
    80002d4c:	fc0080e7          	jalr	-64(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002d50:	fffff097          	auipc	ra,0xfffff
    80002d54:	e2c080e7          	jalr	-468(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002d58:	000a0593          	mv	a1,s4
    80002d5c:	fffff097          	auipc	ra,0xfffff
    80002d60:	fac080e7          	jalr	-84(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80002d64:	fffff097          	auipc	ra,0xfffff
    80002d68:	e18080e7          	jalr	-488(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002d6c:	000a8593          	mv	a1,s5
    80002d70:	fffff097          	auipc	ra,0xfffff
    80002d74:	f98080e7          	jalr	-104(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    80002d78:	fffff097          	auipc	ra,0xfffff
    80002d7c:	e04080e7          	jalr	-508(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002d80:	000b8593          	mv	a1,s7
    80002d84:	fffff097          	auipc	ra,0xfffff
    80002d88:	f84080e7          	jalr	-124(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[6]);
    80002d8c:	fffff097          	auipc	ra,0xfffff
    80002d90:	df0080e7          	jalr	-528(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002d94:	000b0593          	mv	a1,s6
    80002d98:	fffff097          	auipc	ra,0xfffff
    80002d9c:	f70080e7          	jalr	-144(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[7]);
    80002da0:	fffff097          	auipc	ra,0xfffff
    80002da4:	ddc080e7          	jalr	-548(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80002da8:	00090593          	mv	a1,s2
    80002dac:	fffff097          	auipc	ra,0xfffff
    80002db0:	f5c080e7          	jalr	-164(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002db4:	00048513          	mv	a0,s1
    80002db8:	fffff097          	auipc	ra,0xfffff
    80002dbc:	4c8080e7          	jalr	1224(ra) # 80002280 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002dc0:	d89ff06f          	j	80002b48 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>

0000000080002dc4 <_ZN19MemoryAllocatorTest12testFirstFitEv>:
bool MemoryAllocatorTest::testFirstFit() {
    80002dc4:	fe010113          	addi	sp,sp,-32
    80002dc8:	00113c23          	sd	ra,24(sp)
    80002dcc:	00813823          	sd	s0,16(sp)
    80002dd0:	00913423          	sd	s1,8(sp)
    80002dd4:	02010413          	addi	s0,sp,32
    80002dd8:	00050493          	mv	s1,a0
    if (!firstFitTest1()) return false;
    80002ddc:	00000097          	auipc	ra,0x0
    80002de0:	854080e7          	jalr	-1964(ra) # 80002630 <_ZN19MemoryAllocatorTest13firstFitTest1Ev>
    80002de4:	00051c63          	bnez	a0,80002dfc <_ZN19MemoryAllocatorTest12testFirstFitEv+0x38>
}
    80002de8:	01813083          	ld	ra,24(sp)
    80002dec:	01013403          	ld	s0,16(sp)
    80002df0:	00813483          	ld	s1,8(sp)
    80002df4:	02010113          	addi	sp,sp,32
    80002df8:	00008067          	ret
    if (!firstFitTest2()) return false;
    80002dfc:	00048513          	mv	a0,s1
    80002e00:	00000097          	auipc	ra,0x0
    80002e04:	ae4080e7          	jalr	-1308(ra) # 800028e4 <_ZN19MemoryAllocatorTest13firstFitTest2Ev>
    80002e08:	fe0500e3          	beqz	a0,80002de8 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x24>
    if (!firstFitTest3()) return false;
    80002e0c:	00048513          	mv	a0,s1
    80002e10:	00000097          	auipc	ra,0x0
    80002e14:	cfc080e7          	jalr	-772(ra) # 80002b0c <_ZN19MemoryAllocatorTest13firstFitTest3Ev>
    80002e18:	fd1ff06f          	j	80002de8 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x24>

0000000080002e1c <_ZN19MemoryAllocatorTest25testSegmentDescriptorSizeEv>:

bool MemoryAllocatorTest::testSegmentDescriptorSize() {
    80002e1c:	ff010113          	addi	sp,sp,-16
    80002e20:	00113423          	sd	ra,8(sp)
    80002e24:	00813023          	sd	s0,0(sp)
    80002e28:	01010413          	addi	s0,sp,16
    if (!testMemoryMetadataValidity()) return false;
    80002e2c:	fffff097          	auipc	ra,0xfffff
    80002e30:	454080e7          	jalr	1108(ra) # 80002280 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    return sizeof(MemoryAllocator::SegmentDescriptor) == 16;
}
    80002e34:	00813083          	ld	ra,8(sp)
    80002e38:	00013403          	ld	s0,0(sp)
    80002e3c:	01010113          	addi	sp,sp,16
    80002e40:	00008067          	ret

0000000080002e44 <_ZN19MemoryAllocatorTest8runTestsEv>:
bool MemoryAllocatorTest::runTests() {
    80002e44:	f6010113          	addi	sp,sp,-160
    80002e48:	08113c23          	sd	ra,152(sp)
    80002e4c:	08813823          	sd	s0,144(sp)
    80002e50:	08913423          	sd	s1,136(sp)
    80002e54:	09213023          	sd	s2,128(sp)
    80002e58:	07313c23          	sd	s3,120(sp)
    80002e5c:	0a010413          	addi	s0,sp,160
    80002e60:	00050993          	mv	s3,a0
    sizes[0] = 3.7 * MEM_BLOCK_SIZE;
    80002e64:	0ec00793          	li	a5,236
    80002e68:	f6f43423          	sd	a5,-152(s0)
    sizes[1] = MEM_BLOCK_SIZE;
    80002e6c:	04000793          	li	a5,64
    80002e70:	f6f43823          	sd	a5,-144(s0)
    sizes[2] = 0.3 * MEM_BLOCK_SIZE;
    80002e74:	01300793          	li	a5,19
    80002e78:	f6f43c23          	sd	a5,-136(s0)
    sizes[3] = 0;
    80002e7c:	f8043023          	sd	zero,-128(s0)
    sizes[4] = -37;
    80002e80:	fdb00793          	li	a5,-37
    80002e84:	f8f43423          	sd	a5,-120(s0)
    sizes[5] = sizeof(MemoryAllocator::SegmentDescriptor) - 1;
    80002e88:	00f00793          	li	a5,15
    80002e8c:	f8f43823          	sd	a5,-112(s0)
    sizes[6] = sizeof(MemoryAllocator::SegmentDescriptor);
    80002e90:	01000793          	li	a5,16
    80002e94:	f8f43c23          	sd	a5,-104(s0)
    sizes[7] = sizeof(MemoryAllocator::SegmentDescriptor) + 1;
    80002e98:	01100793          	li	a5,17
    80002e9c:	faf43023          	sd	a5,-96(s0)
    sizes[8] = MemoryAllocator::minMemoryFragmentSize - 1;
    80002ea0:	00008797          	auipc	a5,0x8
    80002ea4:	8787b783          	ld	a5,-1928(a5) # 8000a718 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002ea8:	0007b783          	ld	a5,0(a5)
    80002eac:	fff78713          	addi	a4,a5,-1
    80002eb0:	fae43423          	sd	a4,-88(s0)
    sizes[9] = MemoryAllocator::minMemoryFragmentSize;
    80002eb4:	faf43823          	sd	a5,-80(s0)
    sizes[10] = MemoryAllocator::minMemoryFragmentSize + 1;
    80002eb8:	00178793          	addi	a5,a5,1
    80002ebc:	faf43c23          	sd	a5,-72(s0)
    sizes[11] = MEM_BLOCK_SIZE - 1;
    80002ec0:	03f00793          	li	a5,63
    80002ec4:	fcf43023          	sd	a5,-64(s0)
    sizes[12] = MEM_BLOCK_SIZE + 1;
    80002ec8:	04100793          	li	a5,65
    80002ecc:	fcf43423          	sd	a5,-56(s0)
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    80002ed0:	00000493          	li	s1,0
    80002ed4:	0880006f          	j	80002f5c <_ZN19MemoryAllocatorTest8runTestsEv+0x118>
            printString("Failed testMemoryAllocate test for input ");
    80002ed8:	00006517          	auipc	a0,0x6
    80002edc:	57050513          	addi	a0,a0,1392 # 80009448 <CONSOLE_STATUS+0x438>
    80002ee0:	00003097          	auipc	ra,0x3
    80002ee4:	5c4080e7          	jalr	1476(ra) # 800064a4 <_Z11printStringPKc>
            printInteger(sizes[i]); printString("\n"); return false;
    80002ee8:	00090513          	mv	a0,s2
    80002eec:	00003097          	auipc	ra,0x3
    80002ef0:	628080e7          	jalr	1576(ra) # 80006514 <_Z12printIntegerm>
    80002ef4:	00006517          	auipc	a0,0x6
    80002ef8:	22c50513          	addi	a0,a0,556 # 80009120 <CONSOLE_STATUS+0x110>
    80002efc:	00003097          	auipc	ra,0x3
    80002f00:	5a8080e7          	jalr	1448(ra) # 800064a4 <_Z11printStringPKc>
    80002f04:	00000493          	li	s1,0
}
    80002f08:	00048513          	mv	a0,s1
    80002f0c:	09813083          	ld	ra,152(sp)
    80002f10:	09013403          	ld	s0,144(sp)
    80002f14:	08813483          	ld	s1,136(sp)
    80002f18:	08013903          	ld	s2,128(sp)
    80002f1c:	07813983          	ld	s3,120(sp)
    80002f20:	0a010113          	addi	sp,sp,160
    80002f24:	00008067          	ret
            printString("Failed testMemoryFree test for input ");
    80002f28:	00006517          	auipc	a0,0x6
    80002f2c:	55850513          	addi	a0,a0,1368 # 80009480 <CONSOLE_STATUS+0x470>
    80002f30:	00003097          	auipc	ra,0x3
    80002f34:	574080e7          	jalr	1396(ra) # 800064a4 <_Z11printStringPKc>
            printInteger(sizes[i]); printString("\n"); return false;
    80002f38:	00090513          	mv	a0,s2
    80002f3c:	00003097          	auipc	ra,0x3
    80002f40:	5d8080e7          	jalr	1496(ra) # 80006514 <_Z12printIntegerm>
    80002f44:	00006517          	auipc	a0,0x6
    80002f48:	1dc50513          	addi	a0,a0,476 # 80009120 <CONSOLE_STATUS+0x110>
    80002f4c:	00003097          	auipc	ra,0x3
    80002f50:	558080e7          	jalr	1368(ra) # 800064a4 <_Z11printStringPKc>
    80002f54:	fb1ff06f          	j	80002f04 <_ZN19MemoryAllocatorTest8runTestsEv+0xc0>
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    80002f58:	0014849b          	addiw	s1,s1,1
    80002f5c:	00c00793          	li	a5,12
    80002f60:	0897c863          	blt	a5,s1,80002ff0 <_ZN19MemoryAllocatorTest8runTestsEv+0x1ac>
        void * allocatedMemoryPointer = nullptr;
    80002f64:	f6043023          	sd	zero,-160(s0)
        if (!testMemoryAllocate(sizes[i], &allocatedMemoryPointer)) {
    80002f68:	00349793          	slli	a5,s1,0x3
    80002f6c:	fd040713          	addi	a4,s0,-48
    80002f70:	00f707b3          	add	a5,a4,a5
    80002f74:	f987b903          	ld	s2,-104(a5)
    80002f78:	f6040613          	addi	a2,s0,-160
    80002f7c:	00090593          	mv	a1,s2
    80002f80:	00098513          	mv	a0,s3
    80002f84:	fffff097          	auipc	ra,0xfffff
    80002f88:	3b4080e7          	jalr	948(ra) # 80002338 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>
    80002f8c:	f40506e3          	beqz	a0,80002ed8 <_ZN19MemoryAllocatorTest8runTestsEv+0x94>
        } else printString("Passed ");
    80002f90:	00006517          	auipc	a0,0x6
    80002f94:	4e850513          	addi	a0,a0,1256 # 80009478 <CONSOLE_STATUS+0x468>
    80002f98:	00003097          	auipc	ra,0x3
    80002f9c:	50c080e7          	jalr	1292(ra) # 800064a4 <_Z11printStringPKc>
        if (!testMemoryFree(sizes[i], allocatedMemoryPointer)) {
    80002fa0:	f6043603          	ld	a2,-160(s0)
    80002fa4:	00090593          	mv	a1,s2
    80002fa8:	00098513          	mv	a0,s3
    80002fac:	fffff097          	auipc	ra,0xfffff
    80002fb0:	50c080e7          	jalr	1292(ra) # 800024b8 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>
    80002fb4:	f6050ae3          	beqz	a0,80002f28 <_ZN19MemoryAllocatorTest8runTestsEv+0xe4>
        } else printString("Passed ");
    80002fb8:	00006517          	auipc	a0,0x6
    80002fbc:	4c050513          	addi	a0,a0,1216 # 80009478 <CONSOLE_STATUS+0x468>
    80002fc0:	00003097          	auipc	ra,0x3
    80002fc4:	4e4080e7          	jalr	1252(ra) # 800064a4 <_Z11printStringPKc>
        if (i != 0 && (i + 1) % 5 == 0) printString("\n");
    80002fc8:	f80488e3          	beqz	s1,80002f58 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    80002fcc:	0014879b          	addiw	a5,s1,1
    80002fd0:	00500713          	li	a4,5
    80002fd4:	02e7e7bb          	remw	a5,a5,a4
    80002fd8:	f80790e3          	bnez	a5,80002f58 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    80002fdc:	00006517          	auipc	a0,0x6
    80002fe0:	14450513          	addi	a0,a0,324 # 80009120 <CONSOLE_STATUS+0x110>
    80002fe4:	00003097          	auipc	ra,0x3
    80002fe8:	4c0080e7          	jalr	1216(ra) # 800064a4 <_Z11printStringPKc>
    80002fec:	f6dff06f          	j	80002f58 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    if (!testFirstFit()) {
    80002ff0:	00098513          	mv	a0,s3
    80002ff4:	00000097          	auipc	ra,0x0
    80002ff8:	dd0080e7          	jalr	-560(ra) # 80002dc4 <_ZN19MemoryAllocatorTest12testFirstFitEv>
    80002ffc:	00050493          	mv	s1,a0
    80003000:	02050e63          	beqz	a0,8000303c <_ZN19MemoryAllocatorTest8runTestsEv+0x1f8>
    else printString("Passed ");
    80003004:	00006517          	auipc	a0,0x6
    80003008:	47450513          	addi	a0,a0,1140 # 80009478 <CONSOLE_STATUS+0x468>
    8000300c:	00003097          	auipc	ra,0x3
    80003010:	498080e7          	jalr	1176(ra) # 800064a4 <_Z11printStringPKc>
    if (!testSegmentDescriptorSize()) {
    80003014:	00098513          	mv	a0,s3
    80003018:	00000097          	auipc	ra,0x0
    8000301c:	e04080e7          	jalr	-508(ra) # 80002e1c <_ZN19MemoryAllocatorTest25testSegmentDescriptorSizeEv>
    80003020:	00050493          	mv	s1,a0
    80003024:	02050663          	beqz	a0,80003050 <_ZN19MemoryAllocatorTest8runTestsEv+0x20c>
    else printString("Passed\n");
    80003028:	00006517          	auipc	a0,0x6
    8000302c:	4c050513          	addi	a0,a0,1216 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80003030:	00003097          	auipc	ra,0x3
    80003034:	474080e7          	jalr	1140(ra) # 800064a4 <_Z11printStringPKc>
    80003038:	ed1ff06f          	j	80002f08 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>
        printString("Failed testFirstFit\n"); return false; }
    8000303c:	00006517          	auipc	a0,0x6
    80003040:	46c50513          	addi	a0,a0,1132 # 800094a8 <CONSOLE_STATUS+0x498>
    80003044:	00003097          	auipc	ra,0x3
    80003048:	460080e7          	jalr	1120(ra) # 800064a4 <_Z11printStringPKc>
    8000304c:	ebdff06f          	j	80002f08 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>
        printString("Failed testSegmentDescriptorSize\n"); return false; }
    80003050:	00006517          	auipc	a0,0x6
    80003054:	47050513          	addi	a0,a0,1136 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80003058:	00003097          	auipc	ra,0x3
    8000305c:	44c080e7          	jalr	1100(ra) # 800064a4 <_Z11printStringPKc>
    80003060:	ea9ff06f          	j	80002f08 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>

0000000080003064 <_Znwm>:


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80003064:	ff010113          	addi	sp,sp,-16
    80003068:	00113423          	sd	ra,8(sp)
    8000306c:	00813023          	sd	s0,0(sp)
    80003070:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80003074:	00005097          	auipc	ra,0x5
    80003078:	734080e7          	jalr	1844(ra) # 800087a8 <__mem_alloc>
    //return MemoryAllocator::instance()->kmem_alloc(n);
}
    8000307c:	00813083          	ld	ra,8(sp)
    80003080:	00013403          	ld	s0,0(sp)
    80003084:	01010113          	addi	sp,sp,16
    80003088:	00008067          	ret

000000008000308c <_Znam>:

void *operator new[](size_t n)
{
    8000308c:	ff010113          	addi	sp,sp,-16
    80003090:	00113423          	sd	ra,8(sp)
    80003094:	00813023          	sd	s0,0(sp)
    80003098:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    8000309c:	00005097          	auipc	ra,0x5
    800030a0:	70c080e7          	jalr	1804(ra) # 800087a8 <__mem_alloc>
    //return MemoryAllocator::instance()->kmem_alloc(n);
}
    800030a4:	00813083          	ld	ra,8(sp)
    800030a8:	00013403          	ld	s0,0(sp)
    800030ac:	01010113          	addi	sp,sp,16
    800030b0:	00008067          	ret

00000000800030b4 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    800030b4:	ff010113          	addi	sp,sp,-16
    800030b8:	00113423          	sd	ra,8(sp)
    800030bc:	00813023          	sd	s0,0(sp)
    800030c0:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800030c4:	00005097          	auipc	ra,0x5
    800030c8:	618080e7          	jalr	1560(ra) # 800086dc <__mem_free>
    //MemoryAllocator::instance()->kmem_free(p);
}
    800030cc:	00813083          	ld	ra,8(sp)
    800030d0:	00013403          	ld	s0,0(sp)
    800030d4:	01010113          	addi	sp,sp,16
    800030d8:	00008067          	ret

00000000800030dc <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    800030dc:	ff010113          	addi	sp,sp,-16
    800030e0:	00113423          	sd	ra,8(sp)
    800030e4:	00813023          	sd	s0,0(sp)
    800030e8:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800030ec:	00005097          	auipc	ra,0x5
    800030f0:	5f0080e7          	jalr	1520(ra) # 800086dc <__mem_free>
    //MemoryAllocator::instance()->kmem_free(p);
    800030f4:	00813083          	ld	ra,8(sp)
    800030f8:	00013403          	ld	s0,0(sp)
    800030fc:	01010113          	addi	sp,sp,16
    80003100:	00008067          	ret

0000000080003104 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>:
    }
    return false;
}

bool KObjectAllocatorTest::getValueOfBitAt(size_t byte, size_t bit, KObjectAllocator* objAlloc) {
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i) {
    80003104:	00000793          	li	a5,0
    80003108:	0080006f          	j	80003110 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator+0xc>
    8000310c:	00178793          	addi	a5,a5,1
    80003110:	0306b703          	ld	a4,48(a3)
    80003114:	04e7f263          	bgeu	a5,a4,80003158 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator+0x54>
        if (i * objAlloc->memorySizeForBits <= byte && byte < (i + 1) * objAlloc->memorySizeForBits)
    80003118:	0106b703          	ld	a4,16(a3)
    8000311c:	02f70533          	mul	a0,a4,a5
    80003120:	fea5e6e3          	bltu	a1,a0,8000310c <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator+0x8>
    80003124:	00178813          	addi	a6,a5,1
    80003128:	03070733          	mul	a4,a4,a6
    8000312c:	fee5f0e3          	bgeu	a1,a4,8000310c <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator+0x8>
            return (objAlloc->bitVectors[i][byte - i * objAlloc->memorySizeForBits] >> bit & (uint8) 1) != 0;
    80003130:	0286b703          	ld	a4,40(a3)
    80003134:	00379793          	slli	a5,a5,0x3
    80003138:	00f707b3          	add	a5,a4,a5
    8000313c:	0007b783          	ld	a5,0(a5)
    80003140:	40a585b3          	sub	a1,a1,a0
    80003144:	00b785b3          	add	a1,a5,a1
    80003148:	0005c503          	lbu	a0,0(a1)
    8000314c:	40c5563b          	sraw	a2,a0,a2
    80003150:	00167513          	andi	a0,a2,1
    }
    printString("ERROR: byte not in given objAlloc\n");
    return false;
}
    80003154:	00008067          	ret
bool KObjectAllocatorTest::getValueOfBitAt(size_t byte, size_t bit, KObjectAllocator* objAlloc) {
    80003158:	ff010113          	addi	sp,sp,-16
    8000315c:	00113423          	sd	ra,8(sp)
    80003160:	00813023          	sd	s0,0(sp)
    80003164:	01010413          	addi	s0,sp,16
    printString("ERROR: byte not in given objAlloc\n");
    80003168:	00006517          	auipc	a0,0x6
    8000316c:	38850513          	addi	a0,a0,904 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80003170:	00003097          	auipc	ra,0x3
    80003174:	334080e7          	jalr	820(ra) # 800064a4 <_Z11printStringPKc>
    return false;
    80003178:	00000513          	li	a0,0
}
    8000317c:	00813083          	ld	ra,8(sp)
    80003180:	00013403          	ld	s0,0(sp)
    80003184:	01010113          	addi	sp,sp,16
    80003188:	00008067          	ret

000000008000318c <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>:

size_t KObjectAllocatorTest::getByteOfObject(void* obj, KObjectAllocator* objAlloc) {
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i) {
    8000318c:	00000713          	li	a4,0
    80003190:	0080006f          	j	80003198 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator+0xc>
    80003194:	00170713          	addi	a4,a4,1
    80003198:	03063783          	ld	a5,48(a2)
    8000319c:	02f77e63          	bgeu	a4,a5,800031d8 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator+0x4c>
        if ((uint8*) obj < objAlloc->objectVectors[i]) continue;
    800031a0:	02063783          	ld	a5,32(a2)
    800031a4:	00371693          	slli	a3,a4,0x3
    800031a8:	00d787b3          	add	a5,a5,a3
    800031ac:	0007b783          	ld	a5,0(a5)
    800031b0:	fef5e2e3          	bltu	a1,a5,80003194 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator+0x8>
        size_t idiff = (size_t) ((uint8*) obj - objAlloc->objectVectors[i]);
    800031b4:	40f58533          	sub	a0,a1,a5
        size_t byte = idiff / objAlloc->objectSize / 8;
    800031b8:	01863783          	ld	a5,24(a2)
    800031bc:	02f55533          	divu	a0,a0,a5
    800031c0:	00355513          	srli	a0,a0,0x3
        if (byte >= objAlloc->memorySizeForBits) continue;
    800031c4:	01063783          	ld	a5,16(a2)
    800031c8:	fcf576e3          	bgeu	a0,a5,80003194 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator+0x8>
        return byte + i * objAlloc->memorySizeForBits;
    800031cc:	02e78733          	mul	a4,a5,a4
    800031d0:	00a70533          	add	a0,a4,a0
    }
    printString("ERROR: given object not allocated in given objAlloc\n");
    return 0;
}
    800031d4:	00008067          	ret
size_t KObjectAllocatorTest::getByteOfObject(void* obj, KObjectAllocator* objAlloc) {
    800031d8:	ff010113          	addi	sp,sp,-16
    800031dc:	00113423          	sd	ra,8(sp)
    800031e0:	00813023          	sd	s0,0(sp)
    800031e4:	01010413          	addi	s0,sp,16
    printString("ERROR: given object not allocated in given objAlloc\n");
    800031e8:	00006517          	auipc	a0,0x6
    800031ec:	33050513          	addi	a0,a0,816 # 80009518 <CONSOLE_STATUS+0x508>
    800031f0:	00003097          	auipc	ra,0x3
    800031f4:	2b4080e7          	jalr	692(ra) # 800064a4 <_Z11printStringPKc>
    return 0;
    800031f8:	00000513          	li	a0,0
}
    800031fc:	00813083          	ld	ra,8(sp)
    80003200:	00013403          	ld	s0,0(sp)
    80003204:	01010113          	addi	sp,sp,16
    80003208:	00008067          	ret

000000008000320c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>:

size_t KObjectAllocatorTest::getBitOfObject(void* obj, KObjectAllocator* objAlloc) {
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i) {
    8000320c:	00000713          	li	a4,0
    80003210:	0080006f          	j	80003218 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator+0xc>
    80003214:	00170713          	addi	a4,a4,1
    80003218:	03063783          	ld	a5,48(a2)
    8000321c:	04f77063          	bgeu	a4,a5,8000325c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator+0x50>
        if ((uint8*) obj < objAlloc->objectVectors[i]) continue;
    80003220:	02063783          	ld	a5,32(a2)
    80003224:	00371693          	slli	a3,a4,0x3
    80003228:	00d787b3          	add	a5,a5,a3
    8000322c:	0007b783          	ld	a5,0(a5)
    80003230:	fef5e2e3          	bltu	a1,a5,80003214 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator+0x8>
        size_t idiff = (size_t) ((uint8*) obj - objAlloc->objectVectors[i]);
    80003234:	40f587b3          	sub	a5,a1,a5
        size_t byte = idiff / objAlloc->objectSize / 8;
    80003238:	01863503          	ld	a0,24(a2)
    8000323c:	02a7d7b3          	divu	a5,a5,a0
    80003240:	0037d693          	srli	a3,a5,0x3
        if (byte >= objAlloc->memorySizeForBits) continue;
    80003244:	01063503          	ld	a0,16(a2)
    80003248:	fca6f6e3          	bgeu	a3,a0,80003214 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator+0x8>
        size_t bit = idiff / objAlloc->objectSize - byte * 8;
    8000324c:	ff87f513          	andi	a0,a5,-8
        return 7 - bit;
    80003250:	40f507b3          	sub	a5,a0,a5
    80003254:	00778513          	addi	a0,a5,7
    }
    printString("ERROR: given object not allocated in given objAlloc\n");
    return 0;
}
    80003258:	00008067          	ret
size_t KObjectAllocatorTest::getBitOfObject(void* obj, KObjectAllocator* objAlloc) {
    8000325c:	ff010113          	addi	sp,sp,-16
    80003260:	00113423          	sd	ra,8(sp)
    80003264:	00813023          	sd	s0,0(sp)
    80003268:	01010413          	addi	s0,sp,16
    printString("ERROR: given object not allocated in given objAlloc\n");
    8000326c:	00006517          	auipc	a0,0x6
    80003270:	2ac50513          	addi	a0,a0,684 # 80009518 <CONSOLE_STATUS+0x508>
    80003274:	00003097          	auipc	ra,0x3
    80003278:	230080e7          	jalr	560(ra) # 800064a4 <_Z11printStringPKc>
    return 0;
    8000327c:	00000513          	li	a0,0
}
    80003280:	00813083          	ld	ra,8(sp)
    80003284:	00013403          	ld	s0,0(sp)
    80003288:	01010113          	addi	sp,sp,16
    8000328c:	00008067          	ret

0000000080003290 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>:

void* KObjectAllocatorTest::getObjectAt(size_t byte, size_t bit, KObjectAllocator* objAlloc) {
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i)
    80003290:	00000793          	li	a5,0
    80003294:	0080006f          	j	8000329c <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator+0xc>
    80003298:	00178793          	addi	a5,a5,1
    8000329c:	0306b703          	ld	a4,48(a3)
    800032a0:	04e7f663          	bgeu	a5,a4,800032ec <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator+0x5c>
        if (i * objAlloc->memorySizeForBits <= byte && byte < (i + 1) * objAlloc->memorySizeForBits)
    800032a4:	0106b703          	ld	a4,16(a3)
    800032a8:	02f70833          	mul	a6,a4,a5
    800032ac:	ff05e6e3          	bltu	a1,a6,80003298 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator+0x8>
    800032b0:	00178893          	addi	a7,a5,1
    800032b4:	03170733          	mul	a4,a4,a7
    800032b8:	fee5f0e3          	bgeu	a1,a4,80003298 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator+0x8>
            return &objAlloc->objectVectors[i][((byte - i * objAlloc->memorySizeForBits) * 8 + 7 - bit) * objAlloc->objectSize];
    800032bc:	0206b703          	ld	a4,32(a3)
    800032c0:	00379793          	slli	a5,a5,0x3
    800032c4:	00f707b3          	add	a5,a4,a5
    800032c8:	0007b783          	ld	a5,0(a5)
    800032cc:	410585b3          	sub	a1,a1,a6
    800032d0:	00359593          	slli	a1,a1,0x3
    800032d4:	40c58533          	sub	a0,a1,a2
    800032d8:	00750513          	addi	a0,a0,7
    800032dc:	0186b703          	ld	a4,24(a3)
    800032e0:	02e50533          	mul	a0,a0,a4
    800032e4:	00a78533          	add	a0,a5,a0
    printString("ERROR: given object not allocated in given objAlloc\n");
    return nullptr;
}
    800032e8:	00008067          	ret
void* KObjectAllocatorTest::getObjectAt(size_t byte, size_t bit, KObjectAllocator* objAlloc) {
    800032ec:	ff010113          	addi	sp,sp,-16
    800032f0:	00113423          	sd	ra,8(sp)
    800032f4:	00813023          	sd	s0,0(sp)
    800032f8:	01010413          	addi	s0,sp,16
    printString("ERROR: given object not allocated in given objAlloc\n");
    800032fc:	00006517          	auipc	a0,0x6
    80003300:	21c50513          	addi	a0,a0,540 # 80009518 <CONSOLE_STATUS+0x508>
    80003304:	00003097          	auipc	ra,0x3
    80003308:	1a0080e7          	jalr	416(ra) # 800064a4 <_Z11printStringPKc>
    return nullptr;
    8000330c:	00000513          	li	a0,0
}
    80003310:	00813083          	ld	ra,8(sp)
    80003314:	00013403          	ld	s0,0(sp)
    80003318:	01010113          	addi	sp,sp,16
    8000331c:	00008067          	ret

0000000080003320 <_ZN20KObjectAllocatorTest5test0Em>:

bool KObjectAllocatorTest::test0(size_t size) {
    80003320:	f5010113          	addi	sp,sp,-176
    80003324:	0a113423          	sd	ra,168(sp)
    80003328:	0a813023          	sd	s0,160(sp)
    8000332c:	08913c23          	sd	s1,152(sp)
    80003330:	09213823          	sd	s2,144(sp)
    80003334:	09313423          	sd	s3,136(sp)
    80003338:	09413023          	sd	s4,128(sp)
    8000333c:	07513c23          	sd	s5,120(sp)
    80003340:	07613823          	sd	s6,112(sp)
    80003344:	07713423          	sd	s7,104(sp)
    80003348:	0b010413          	addi	s0,sp,176
    8000334c:	00050993          	mv	s3,a0
    80003350:	00058913          	mv	s2,a1
        );
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    }
    void* operator new(size_t size) {
        return MemoryAllocator::instance()->kmem_alloc(size);
    80003354:	fffff097          	auipc	ra,0xfffff
    80003358:	828080e7          	jalr	-2008(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    8000335c:	04000593          	li	a1,64
    80003360:	fffff097          	auipc	ra,0xfffff
    80003364:	900080e7          	jalr	-1792(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80003368:	00050493          	mv	s1,a0
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    8000336c:	00900793          	li	a5,9
    80003370:	00f53023          	sd	a5,0(a0)
    80003374:	00f53423          	sd	a5,8(a0)
    80003378:	01253c23          	sd	s2,24(a0)
    8000337c:	00100793          	li	a5,1
    80003380:	02f53823          	sd	a5,48(a0)
    80003384:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80003388:	ffffe097          	auipc	ra,0xffffe
    8000338c:	7f4080e7          	jalr	2036(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003390:	0304b583          	ld	a1,48(s1)
    80003394:	00359593          	slli	a1,a1,0x3
    80003398:	fffff097          	auipc	ra,0xfffff
    8000339c:	8c8080e7          	jalr	-1848(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    800033a0:	02a4b423          	sd	a0,40(s1)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    800033a4:	ffffe097          	auipc	ra,0xffffe
    800033a8:	7d8080e7          	jalr	2008(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800033ac:	0304b583          	ld	a1,48(s1)
    800033b0:	00359593          	slli	a1,a1,0x3
    800033b4:	fffff097          	auipc	ra,0xfffff
    800033b8:	8ac080e7          	jalr	-1876(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    800033bc:	02a4b023          	sd	a0,32(s1)
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    800033c0:	0084b703          	ld	a4,8(s1)
    800033c4:	ff877793          	andi	a5,a4,-8
    800033c8:	02f70463          	beq	a4,a5,800033f0 <_ZN20KObjectAllocatorTest5test0Em+0xd0>
    800033cc:	00800713          	li	a4,8
    800033d0:	00e787b3          	add	a5,a5,a4
    800033d4:	00f4b423          	sd	a5,8(s1)
    800033d8:	00f4b023          	sd	a5,0(s1)
        memorySizeForBits = numberOfObjects / 8;
    800033dc:	0037d793          	srli	a5,a5,0x3
    800033e0:	00f4b823          	sd	a5,16(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    800033e4:	ffffe097          	auipc	ra,0xffffe
    800033e8:	798080e7          	jalr	1944(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800033ec:	00c0006f          	j	800033f8 <_ZN20KObjectAllocatorTest5test0Em+0xd8>
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    800033f0:	00000713          	li	a4,0
    800033f4:	fddff06f          	j	800033d0 <_ZN20KObjectAllocatorTest5test0Em+0xb0>
                memorySizeForBits + initialNumberOfObjects * objectSize
    800033f8:	0104b583          	ld	a1,16(s1)
    800033fc:	0004b783          	ld	a5,0(s1)
    80003400:	02f907b3          	mul	a5,s2,a5
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80003404:	0284ba03          	ld	s4,40(s1)
    80003408:	00f585b3          	add	a1,a1,a5
    8000340c:	fffff097          	auipc	ra,0xfffff
    80003410:	854080e7          	jalr	-1964(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80003414:	00aa3023          	sd	a0,0(s4)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    80003418:	0284b783          	ld	a5,40(s1)
    8000341c:	0007b783          	ld	a5,0(a5)
    80003420:	0104b683          	ld	a3,16(s1)
    80003424:	0204b703          	ld	a4,32(s1)
    80003428:	00d787b3          	add	a5,a5,a3
    8000342c:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    80003430:	00000793          	li	a5,0
    80003434:	0104b703          	ld	a4,16(s1)
    80003438:	00e7fe63          	bgeu	a5,a4,80003454 <_ZN20KObjectAllocatorTest5test0Em+0x134>
    8000343c:	0284b703          	ld	a4,40(s1)
    80003440:	00073703          	ld	a4,0(a4)
    80003444:	00f70733          	add	a4,a4,a5
    80003448:	00070023          	sb	zero,0(a4)
    8000344c:	00178793          	addi	a5,a5,1
    80003450:	fe5ff06f          	j	80003434 <_ZN20KObjectAllocatorTest5test0Em+0x114>
        MemoryAllocator::instance()->kmem_free(p);
    }
    void printInternalMemory();
    size_t getObjectSize() { return objectSize; }
    size_t getInitialNumberOfObjects() { return initialNumberOfObjects; }
    size_t getNumberOfObjects() { return numberOfObjects; }
    80003454:	0084b703          	ld	a4,8(s1)
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 9);
    if (objAlloc->getNumberOfObjects() != 16) { delete objAlloc; return false; }
    80003458:	01000793          	li	a5,16
    8000345c:	0af70663          	beq	a4,a5,80003508 <_ZN20KObjectAllocatorTest5test0Em+0x1e8>
    80003460:	06048a63          	beqz	s1,800034d4 <_ZN20KObjectAllocatorTest5test0Em+0x1b4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003464:	00000913          	li	s2,0
    80003468:	0280006f          	j	80003490 <_ZN20KObjectAllocatorTest5test0Em+0x170>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    8000346c:	ffffe097          	auipc	ra,0xffffe
    80003470:	710080e7          	jalr	1808(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003474:	0284b783          	ld	a5,40(s1)
    80003478:	00391713          	slli	a4,s2,0x3
    8000347c:	00e787b3          	add	a5,a5,a4
    80003480:	0007b583          	ld	a1,0(a5)
    80003484:	fffff097          	auipc	ra,0xfffff
    80003488:	884080e7          	jalr	-1916(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000348c:	00190913          	addi	s2,s2,1
    80003490:	0304b783          	ld	a5,48(s1)
    80003494:	fcf96ce3          	bltu	s2,a5,8000346c <_ZN20KObjectAllocatorTest5test0Em+0x14c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003498:	ffffe097          	auipc	ra,0xffffe
    8000349c:	6e4080e7          	jalr	1764(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800034a0:	0284b583          	ld	a1,40(s1)
    800034a4:	fffff097          	auipc	ra,0xfffff
    800034a8:	864080e7          	jalr	-1948(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800034ac:	ffffe097          	auipc	ra,0xffffe
    800034b0:	6d0080e7          	jalr	1744(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800034b4:	0204b583          	ld	a1,32(s1)
    800034b8:	fffff097          	auipc	ra,0xfffff
    800034bc:	850080e7          	jalr	-1968(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800034c0:	ffffe097          	auipc	ra,0xffffe
    800034c4:	6bc080e7          	jalr	1724(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800034c8:	00048593          	mv	a1,s1
    800034cc:	fffff097          	auipc	ra,0xfffff
    800034d0:	83c080e7          	jalr	-1988(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    800034d4:	00000a13          	li	s4,0
        if (expectedBitValues[i] != getValueOfBitAt(byte, bit, objAlloc))
            { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    }
    delete objAlloc;
    return true;
}
    800034d8:	000a0513          	mv	a0,s4
    800034dc:	0a813083          	ld	ra,168(sp)
    800034e0:	0a013403          	ld	s0,160(sp)
    800034e4:	09813483          	ld	s1,152(sp)
    800034e8:	09013903          	ld	s2,144(sp)
    800034ec:	08813983          	ld	s3,136(sp)
    800034f0:	08013a03          	ld	s4,128(sp)
    800034f4:	07813a83          	ld	s5,120(sp)
    800034f8:	07013b03          	ld	s6,112(sp)
    800034fc:	06813b83          	ld	s7,104(sp)
    80003500:	0b010113          	addi	sp,sp,176
    80003504:	00008067          	ret
    size_t getMemorySizeForBits() { return memorySizeForBits; }
    80003508:	0104b703          	ld	a4,16(s1)
    if (objAlloc->getMemorySizeForBits() != 2) { delete objAlloc; return false; }
    8000350c:	00200793          	li	a5,2
    80003510:	08f70063          	beq	a4,a5,80003590 <_ZN20KObjectAllocatorTest5test0Em+0x270>
    80003514:	06048a63          	beqz	s1,80003588 <_ZN20KObjectAllocatorTest5test0Em+0x268>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003518:	00000913          	li	s2,0
    8000351c:	0280006f          	j	80003544 <_ZN20KObjectAllocatorTest5test0Em+0x224>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003520:	ffffe097          	auipc	ra,0xffffe
    80003524:	65c080e7          	jalr	1628(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003528:	0284b783          	ld	a5,40(s1)
    8000352c:	00391713          	slli	a4,s2,0x3
    80003530:	00e787b3          	add	a5,a5,a4
    80003534:	0007b583          	ld	a1,0(a5)
    80003538:	ffffe097          	auipc	ra,0xffffe
    8000353c:	7d0080e7          	jalr	2000(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003540:	00190913          	addi	s2,s2,1
    80003544:	0304b783          	ld	a5,48(s1)
    80003548:	fcf96ce3          	bltu	s2,a5,80003520 <_ZN20KObjectAllocatorTest5test0Em+0x200>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    8000354c:	ffffe097          	auipc	ra,0xffffe
    80003550:	630080e7          	jalr	1584(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003554:	0284b583          	ld	a1,40(s1)
    80003558:	ffffe097          	auipc	ra,0xffffe
    8000355c:	7b0080e7          	jalr	1968(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003560:	ffffe097          	auipc	ra,0xffffe
    80003564:	61c080e7          	jalr	1564(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003568:	0204b583          	ld	a1,32(s1)
    8000356c:	ffffe097          	auipc	ra,0xffffe
    80003570:	79c080e7          	jalr	1948(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003574:	ffffe097          	auipc	ra,0xffffe
    80003578:	608080e7          	jalr	1544(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    8000357c:	00048593          	mv	a1,s1
    80003580:	ffffe097          	auipc	ra,0xffffe
    80003584:	788080e7          	jalr	1928(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003588:	00000a13          	li	s4,0
    8000358c:	f4dff06f          	j	800034d8 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    size_t getObjectSize() { return objectSize; }
    80003590:	0184b783          	ld	a5,24(s1)
    if (objAlloc->getObjectSize() != size) { delete objAlloc; return false; }
    80003594:	08f90063          	beq	s2,a5,80003614 <_ZN20KObjectAllocatorTest5test0Em+0x2f4>
    80003598:	06048a63          	beqz	s1,8000360c <_ZN20KObjectAllocatorTest5test0Em+0x2ec>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000359c:	00000913          	li	s2,0
    800035a0:	0304b783          	ld	a5,48(s1)
    800035a4:	02f97663          	bgeu	s2,a5,800035d0 <_ZN20KObjectAllocatorTest5test0Em+0x2b0>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800035a8:	ffffe097          	auipc	ra,0xffffe
    800035ac:	5d4080e7          	jalr	1492(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800035b0:	0284b783          	ld	a5,40(s1)
    800035b4:	00391713          	slli	a4,s2,0x3
    800035b8:	00e787b3          	add	a5,a5,a4
    800035bc:	0007b583          	ld	a1,0(a5)
    800035c0:	ffffe097          	auipc	ra,0xffffe
    800035c4:	748080e7          	jalr	1864(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800035c8:	00190913          	addi	s2,s2,1
    800035cc:	fd5ff06f          	j	800035a0 <_ZN20KObjectAllocatorTest5test0Em+0x280>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800035d0:	ffffe097          	auipc	ra,0xffffe
    800035d4:	5ac080e7          	jalr	1452(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800035d8:	0284b583          	ld	a1,40(s1)
    800035dc:	ffffe097          	auipc	ra,0xffffe
    800035e0:	72c080e7          	jalr	1836(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800035e4:	ffffe097          	auipc	ra,0xffffe
    800035e8:	598080e7          	jalr	1432(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800035ec:	0204b583          	ld	a1,32(s1)
    800035f0:	ffffe097          	auipc	ra,0xffffe
    800035f4:	718080e7          	jalr	1816(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800035f8:	ffffe097          	auipc	ra,0xffffe
    800035fc:	584080e7          	jalr	1412(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003600:	00048593          	mv	a1,s1
    80003604:	ffffe097          	auipc	ra,0xffffe
    80003608:	704080e7          	jalr	1796(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    8000360c:	00000a13          	li	s4,0
    80003610:	ec9ff06f          	j	800034d8 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    void* objArr[10]; for (size_t i = 0; i < 10; objArr[i++] = objAlloc->allocateNewObject());
    80003614:	00000913          	li	s2,0
    80003618:	00900793          	li	a5,9
    8000361c:	0327e663          	bltu	a5,s2,80003648 <_ZN20KObjectAllocatorTest5test0Em+0x328>
    80003620:	00190a13          	addi	s4,s2,1
    80003624:	00048513          	mv	a0,s1
    80003628:	00003097          	auipc	ra,0x3
    8000362c:	a98080e7          	jalr	-1384(ra) # 800060c0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80003630:	00391913          	slli	s2,s2,0x3
    80003634:	fb040793          	addi	a5,s0,-80
    80003638:	01278933          	add	s2,a5,s2
    8000363c:	faa93823          	sd	a0,-80(s2)
    80003640:	000a0913          	mv	s2,s4
    80003644:	fd5ff06f          	j	80003618 <_ZN20KObjectAllocatorTest5test0Em+0x2f8>
    for (size_t i = 0; i < 10; ++i) {
    80003648:	00000b13          	li	s6,0
    size_t byte = 0; size_t bit = 7;
    8000364c:	00700913          	li	s2,7
    80003650:	00000a93          	li	s5,0
    80003654:	1840006f          	j	800037d8 <_ZN20KObjectAllocatorTest5test0Em+0x4b8>
        if (objArr[i] != getObjectAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003658:	06048a63          	beqz	s1,800036cc <_ZN20KObjectAllocatorTest5test0Em+0x3ac>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000365c:	00000913          	li	s2,0
    80003660:	0304b783          	ld	a5,48(s1)
    80003664:	02f97663          	bgeu	s2,a5,80003690 <_ZN20KObjectAllocatorTest5test0Em+0x370>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003668:	ffffe097          	auipc	ra,0xffffe
    8000366c:	514080e7          	jalr	1300(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003670:	0284b783          	ld	a5,40(s1)
    80003674:	00391713          	slli	a4,s2,0x3
    80003678:	00e787b3          	add	a5,a5,a4
    8000367c:	0007b583          	ld	a1,0(a5)
    80003680:	ffffe097          	auipc	ra,0xffffe
    80003684:	688080e7          	jalr	1672(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003688:	00190913          	addi	s2,s2,1
    8000368c:	fd5ff06f          	j	80003660 <_ZN20KObjectAllocatorTest5test0Em+0x340>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003690:	ffffe097          	auipc	ra,0xffffe
    80003694:	4ec080e7          	jalr	1260(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003698:	0284b583          	ld	a1,40(s1)
    8000369c:	ffffe097          	auipc	ra,0xffffe
    800036a0:	66c080e7          	jalr	1644(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800036a4:	ffffe097          	auipc	ra,0xffffe
    800036a8:	4d8080e7          	jalr	1240(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800036ac:	0204b583          	ld	a1,32(s1)
    800036b0:	ffffe097          	auipc	ra,0xffffe
    800036b4:	658080e7          	jalr	1624(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800036b8:	ffffe097          	auipc	ra,0xffffe
    800036bc:	4c4080e7          	jalr	1220(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800036c0:	00048593          	mv	a1,s1
    800036c4:	ffffe097          	auipc	ra,0xffffe
    800036c8:	644080e7          	jalr	1604(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    800036cc:	00000a13          	li	s4,0
    800036d0:	e09ff06f          	j	800034d8 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        if (objByte != byte || objBit != bit) { delete objAlloc; return false; }
    800036d4:	06048a63          	beqz	s1,80003748 <_ZN20KObjectAllocatorTest5test0Em+0x428>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800036d8:	00000913          	li	s2,0
    800036dc:	0304b783          	ld	a5,48(s1)
    800036e0:	02f97663          	bgeu	s2,a5,8000370c <_ZN20KObjectAllocatorTest5test0Em+0x3ec>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800036e4:	ffffe097          	auipc	ra,0xffffe
    800036e8:	498080e7          	jalr	1176(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800036ec:	0284b783          	ld	a5,40(s1)
    800036f0:	00391713          	slli	a4,s2,0x3
    800036f4:	00e787b3          	add	a5,a5,a4
    800036f8:	0007b583          	ld	a1,0(a5)
    800036fc:	ffffe097          	auipc	ra,0xffffe
    80003700:	60c080e7          	jalr	1548(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003704:	00190913          	addi	s2,s2,1
    80003708:	fd5ff06f          	j	800036dc <_ZN20KObjectAllocatorTest5test0Em+0x3bc>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    8000370c:	ffffe097          	auipc	ra,0xffffe
    80003710:	470080e7          	jalr	1136(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003714:	0284b583          	ld	a1,40(s1)
    80003718:	ffffe097          	auipc	ra,0xffffe
    8000371c:	5f0080e7          	jalr	1520(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003720:	ffffe097          	auipc	ra,0xffffe
    80003724:	45c080e7          	jalr	1116(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003728:	0204b583          	ld	a1,32(s1)
    8000372c:	ffffe097          	auipc	ra,0xffffe
    80003730:	5dc080e7          	jalr	1500(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003734:	ffffe097          	auipc	ra,0xffffe
    80003738:	448080e7          	jalr	1096(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    8000373c:	00048593          	mv	a1,s1
    80003740:	ffffe097          	auipc	ra,0xffffe
    80003744:	5c8080e7          	jalr	1480(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003748:	00000a13          	li	s4,0
    8000374c:	d8dff06f          	j	800034d8 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        if (!getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003750:	d80484e3          	beqz	s1,800034d8 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003754:	00000913          	li	s2,0
    80003758:	0280006f          	j	80003780 <_ZN20KObjectAllocatorTest5test0Em+0x460>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    8000375c:	ffffe097          	auipc	ra,0xffffe
    80003760:	420080e7          	jalr	1056(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003764:	0284b783          	ld	a5,40(s1)
    80003768:	00391713          	slli	a4,s2,0x3
    8000376c:	00e787b3          	add	a5,a5,a4
    80003770:	0007b583          	ld	a1,0(a5)
    80003774:	ffffe097          	auipc	ra,0xffffe
    80003778:	594080e7          	jalr	1428(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000377c:	00190913          	addi	s2,s2,1
    80003780:	0304b783          	ld	a5,48(s1)
    80003784:	fcf96ce3          	bltu	s2,a5,8000375c <_ZN20KObjectAllocatorTest5test0Em+0x43c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003788:	ffffe097          	auipc	ra,0xffffe
    8000378c:	3f4080e7          	jalr	1012(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003790:	0284b583          	ld	a1,40(s1)
    80003794:	ffffe097          	auipc	ra,0xffffe
    80003798:	574080e7          	jalr	1396(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    8000379c:	ffffe097          	auipc	ra,0xffffe
    800037a0:	3e0080e7          	jalr	992(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800037a4:	0204b583          	ld	a1,32(s1)
    800037a8:	ffffe097          	auipc	ra,0xffffe
    800037ac:	560080e7          	jalr	1376(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800037b0:	ffffe097          	auipc	ra,0xffffe
    800037b4:	3cc080e7          	jalr	972(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800037b8:	00048593          	mv	a1,s1
    800037bc:	ffffe097          	auipc	ra,0xffffe
    800037c0:	54c080e7          	jalr	1356(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    800037c4:	d15ff06f          	j	800034d8 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    800037c8:	001a8a93          	addi	s5,s5,1
    800037cc:	00800913          	li	s2,8
    800037d0:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 10; ++i) {
    800037d4:	001b0b13          	addi	s6,s6,1
    800037d8:	00900793          	li	a5,9
    800037dc:	0967e663          	bltu	a5,s6,80003868 <_ZN20KObjectAllocatorTest5test0Em+0x548>
        if (objArr[i] != getObjectAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    800037e0:	003b1793          	slli	a5,s6,0x3
    800037e4:	fb040713          	addi	a4,s0,-80
    800037e8:	00f707b3          	add	a5,a4,a5
    800037ec:	fb07ba03          	ld	s4,-80(a5)
    800037f0:	00048693          	mv	a3,s1
    800037f4:	00090613          	mv	a2,s2
    800037f8:	000a8593          	mv	a1,s5
    800037fc:	00098513          	mv	a0,s3
    80003800:	00000097          	auipc	ra,0x0
    80003804:	a90080e7          	jalr	-1392(ra) # 80003290 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>
    80003808:	e4aa18e3          	bne	s4,a0,80003658 <_ZN20KObjectAllocatorTest5test0Em+0x338>
        size_t objByte = getByteOfObject(objArr[i], objAlloc);
    8000380c:	00048613          	mv	a2,s1
    80003810:	000a0593          	mv	a1,s4
    80003814:	00098513          	mv	a0,s3
    80003818:	00000097          	auipc	ra,0x0
    8000381c:	974080e7          	jalr	-1676(ra) # 8000318c <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    80003820:	00050b93          	mv	s7,a0
        size_t objBit = getBitOfObject(objArr[i], objAlloc);
    80003824:	00048613          	mv	a2,s1
    80003828:	000a0593          	mv	a1,s4
    8000382c:	00098513          	mv	a0,s3
    80003830:	00000097          	auipc	ra,0x0
    80003834:	9dc080e7          	jalr	-1572(ra) # 8000320c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
        if (objByte != byte || objBit != bit) { delete objAlloc; return false; }
    80003838:	e97a9ee3          	bne	s5,s7,800036d4 <_ZN20KObjectAllocatorTest5test0Em+0x3b4>
    8000383c:	e8a91ce3          	bne	s2,a0,800036d4 <_ZN20KObjectAllocatorTest5test0Em+0x3b4>
        if (!getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003840:	00048693          	mv	a3,s1
    80003844:	00090613          	mv	a2,s2
    80003848:	000a8593          	mv	a1,s5
    8000384c:	00098513          	mv	a0,s3
    80003850:	00000097          	auipc	ra,0x0
    80003854:	8b4080e7          	jalr	-1868(ra) # 80003104 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80003858:	00050a13          	mv	s4,a0
    8000385c:	ee050ae3          	beqz	a0,80003750 <_ZN20KObjectAllocatorTest5test0Em+0x430>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80003860:	f60918e3          	bnez	s2,800037d0 <_ZN20KObjectAllocatorTest5test0Em+0x4b0>
    80003864:	f65ff06f          	j	800037c8 <_ZN20KObjectAllocatorTest5test0Em+0x4a8>
    for (size_t i = 0; i < 6; ++i) {
    80003868:	00000a13          	li	s4,0
    8000386c:	0900006f          	j	800038fc <_ZN20KObjectAllocatorTest5test0Em+0x5dc>
        if (getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003870:	06048a63          	beqz	s1,800038e4 <_ZN20KObjectAllocatorTest5test0Em+0x5c4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003874:	00000913          	li	s2,0
    80003878:	0304b783          	ld	a5,48(s1)
    8000387c:	02f97663          	bgeu	s2,a5,800038a8 <_ZN20KObjectAllocatorTest5test0Em+0x588>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003880:	ffffe097          	auipc	ra,0xffffe
    80003884:	2fc080e7          	jalr	764(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003888:	0284b783          	ld	a5,40(s1)
    8000388c:	00391713          	slli	a4,s2,0x3
    80003890:	00e787b3          	add	a5,a5,a4
    80003894:	0007b583          	ld	a1,0(a5)
    80003898:	ffffe097          	auipc	ra,0xffffe
    8000389c:	470080e7          	jalr	1136(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800038a0:	00190913          	addi	s2,s2,1
    800038a4:	fd5ff06f          	j	80003878 <_ZN20KObjectAllocatorTest5test0Em+0x558>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800038a8:	ffffe097          	auipc	ra,0xffffe
    800038ac:	2d4080e7          	jalr	724(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800038b0:	0284b583          	ld	a1,40(s1)
    800038b4:	ffffe097          	auipc	ra,0xffffe
    800038b8:	454080e7          	jalr	1108(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800038bc:	ffffe097          	auipc	ra,0xffffe
    800038c0:	2c0080e7          	jalr	704(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800038c4:	0204b583          	ld	a1,32(s1)
    800038c8:	ffffe097          	auipc	ra,0xffffe
    800038cc:	440080e7          	jalr	1088(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800038d0:	ffffe097          	auipc	ra,0xffffe
    800038d4:	2ac080e7          	jalr	684(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800038d8:	00048593          	mv	a1,s1
    800038dc:	ffffe097          	auipc	ra,0xffffe
    800038e0:	42c080e7          	jalr	1068(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    800038e4:	00000a13          	li	s4,0
    800038e8:	bf1ff06f          	j	800034d8 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    800038ec:	001a8a93          	addi	s5,s5,1
    800038f0:	00800913          	li	s2,8
    800038f4:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 6; ++i) {
    800038f8:	001a0a13          	addi	s4,s4,1
    800038fc:	00500793          	li	a5,5
    80003900:	0347e463          	bltu	a5,s4,80003928 <_ZN20KObjectAllocatorTest5test0Em+0x608>
        if (getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003904:	00048693          	mv	a3,s1
    80003908:	00090613          	mv	a2,s2
    8000390c:	000a8593          	mv	a1,s5
    80003910:	00098513          	mv	a0,s3
    80003914:	fffff097          	auipc	ra,0xfffff
    80003918:	7f0080e7          	jalr	2032(ra) # 80003104 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    8000391c:	f4051ae3          	bnez	a0,80003870 <_ZN20KObjectAllocatorTest5test0Em+0x550>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80003920:	fc091ae3          	bnez	s2,800038f4 <_ZN20KObjectAllocatorTest5test0Em+0x5d4>
    80003924:	fc9ff06f          	j	800038ec <_ZN20KObjectAllocatorTest5test0Em+0x5cc>
    objAlloc->freeObject(objArr[4]);
    80003928:	f8043583          	ld	a1,-128(s0)
    8000392c:	00048513          	mv	a0,s1
    80003930:	00002097          	auipc	ra,0x2
    80003934:	510080e7          	jalr	1296(ra) # 80005e40 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[7]);
    80003938:	f9843583          	ld	a1,-104(s0)
    8000393c:	00048513          	mv	a0,s1
    80003940:	00002097          	auipc	ra,0x2
    80003944:	500080e7          	jalr	1280(ra) # 80005e40 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[8]);
    80003948:	fa043583          	ld	a1,-96(s0)
    8000394c:	00048513          	mv	a0,s1
    80003950:	00002097          	auipc	ra,0x2
    80003954:	4f0080e7          	jalr	1264(ra) # 80005e40 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[4] = objAlloc->allocateNewObject();
    80003958:	00048513          	mv	a0,s1
    8000395c:	00002097          	auipc	ra,0x2
    80003960:	764080e7          	jalr	1892(ra) # 800060c0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80003964:	00050913          	mv	s2,a0
    if (objArr[4] != getObjectAt(1, 7, objAlloc)) { delete objAlloc; return false; }
    80003968:	00048693          	mv	a3,s1
    8000396c:	00700613          	li	a2,7
    80003970:	00100593          	li	a1,1
    80003974:	00098513          	mv	a0,s3
    80003978:	00000097          	auipc	ra,0x0
    8000397c:	918080e7          	jalr	-1768(ra) # 80003290 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>
    80003980:	08a90063          	beq	s2,a0,80003a00 <_ZN20KObjectAllocatorTest5test0Em+0x6e0>
    80003984:	06048a63          	beqz	s1,800039f8 <_ZN20KObjectAllocatorTest5test0Em+0x6d8>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003988:	00000913          	li	s2,0
    8000398c:	0280006f          	j	800039b4 <_ZN20KObjectAllocatorTest5test0Em+0x694>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003990:	ffffe097          	auipc	ra,0xffffe
    80003994:	1ec080e7          	jalr	492(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003998:	0284b783          	ld	a5,40(s1)
    8000399c:	00391713          	slli	a4,s2,0x3
    800039a0:	00e787b3          	add	a5,a5,a4
    800039a4:	0007b583          	ld	a1,0(a5)
    800039a8:	ffffe097          	auipc	ra,0xffffe
    800039ac:	360080e7          	jalr	864(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800039b0:	00190913          	addi	s2,s2,1
    800039b4:	0304b783          	ld	a5,48(s1)
    800039b8:	fcf96ce3          	bltu	s2,a5,80003990 <_ZN20KObjectAllocatorTest5test0Em+0x670>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800039bc:	ffffe097          	auipc	ra,0xffffe
    800039c0:	1c0080e7          	jalr	448(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800039c4:	0284b583          	ld	a1,40(s1)
    800039c8:	ffffe097          	auipc	ra,0xffffe
    800039cc:	340080e7          	jalr	832(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800039d0:	ffffe097          	auipc	ra,0xffffe
    800039d4:	1ac080e7          	jalr	428(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800039d8:	0204b583          	ld	a1,32(s1)
    800039dc:	ffffe097          	auipc	ra,0xffffe
    800039e0:	32c080e7          	jalr	812(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800039e4:	ffffe097          	auipc	ra,0xffffe
    800039e8:	198080e7          	jalr	408(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800039ec:	00048593          	mv	a1,s1
    800039f0:	ffffe097          	auipc	ra,0xffffe
    800039f4:	318080e7          	jalr	792(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    800039f8:	00000a13          	li	s4,0
    800039fc:	addff06f          	j	800034d8 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    byte = getByteOfObject(objArr[4], objAlloc);
    80003a00:	00048613          	mv	a2,s1
    80003a04:	00090593          	mv	a1,s2
    80003a08:	00098513          	mv	a0,s3
    80003a0c:	fffff097          	auipc	ra,0xfffff
    80003a10:	780080e7          	jalr	1920(ra) # 8000318c <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    80003a14:	00050a13          	mv	s4,a0
    bit = getBitOfObject(objArr[4], objAlloc);
    80003a18:	00048613          	mv	a2,s1
    80003a1c:	00090593          	mv	a1,s2
    80003a20:	00098513          	mv	a0,s3
    80003a24:	fffff097          	auipc	ra,0xfffff
    80003a28:	7e8080e7          	jalr	2024(ra) # 8000320c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80003a2c:	00050913          	mv	s2,a0
    if (byte != 1 || bit != 7) { delete objAlloc; return false; }
    80003a30:	00100793          	li	a5,1
    80003a34:	00fa1663          	bne	s4,a5,80003a40 <_ZN20KObjectAllocatorTest5test0Em+0x720>
    80003a38:	00700793          	li	a5,7
    80003a3c:	08f50063          	beq	a0,a5,80003abc <_ZN20KObjectAllocatorTest5test0Em+0x79c>
    80003a40:	06048a63          	beqz	s1,80003ab4 <_ZN20KObjectAllocatorTest5test0Em+0x794>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003a44:	00000913          	li	s2,0
    80003a48:	0280006f          	j	80003a70 <_ZN20KObjectAllocatorTest5test0Em+0x750>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003a4c:	ffffe097          	auipc	ra,0xffffe
    80003a50:	130080e7          	jalr	304(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003a54:	0284b783          	ld	a5,40(s1)
    80003a58:	00391713          	slli	a4,s2,0x3
    80003a5c:	00e787b3          	add	a5,a5,a4
    80003a60:	0007b583          	ld	a1,0(a5)
    80003a64:	ffffe097          	auipc	ra,0xffffe
    80003a68:	2a4080e7          	jalr	676(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003a6c:	00190913          	addi	s2,s2,1
    80003a70:	0304b783          	ld	a5,48(s1)
    80003a74:	fcf96ce3          	bltu	s2,a5,80003a4c <_ZN20KObjectAllocatorTest5test0Em+0x72c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003a78:	ffffe097          	auipc	ra,0xffffe
    80003a7c:	104080e7          	jalr	260(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003a80:	0284b583          	ld	a1,40(s1)
    80003a84:	ffffe097          	auipc	ra,0xffffe
    80003a88:	284080e7          	jalr	644(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003a8c:	ffffe097          	auipc	ra,0xffffe
    80003a90:	0f0080e7          	jalr	240(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003a94:	0204b583          	ld	a1,32(s1)
    80003a98:	ffffe097          	auipc	ra,0xffffe
    80003a9c:	270080e7          	jalr	624(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003aa0:	ffffe097          	auipc	ra,0xffffe
    80003aa4:	0dc080e7          	jalr	220(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003aa8:	00048593          	mv	a1,s1
    80003aac:	ffffe097          	auipc	ra,0xffffe
    80003ab0:	25c080e7          	jalr	604(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003ab4:	00000a13          	li	s4,0
    80003ab8:	a21ff06f          	j	800034d8 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    bool expectedBitValues[16] = {
    80003abc:	00006797          	auipc	a5,0x6
    80003ac0:	ab478793          	addi	a5,a5,-1356 # 80009570 <CONSOLE_STATUS+0x560>
    80003ac4:	0007b703          	ld	a4,0(a5)
    80003ac8:	f4e43823          	sd	a4,-176(s0)
    80003acc:	0087b783          	ld	a5,8(a5)
    80003ad0:	f4f43c23          	sd	a5,-168(s0)
    for (size_t i = 0; i < 16; ++i) {
    80003ad4:	00000a13          	li	s4,0
    byte = 0; bit = 7;
    80003ad8:	00000a93          	li	s5,0
    80003adc:	02c0006f          	j	80003b08 <_ZN20KObjectAllocatorTest5test0Em+0x7e8>
            { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    80003ae0:	00048863          	beqz	s1,80003af0 <_ZN20KObjectAllocatorTest5test0Em+0x7d0>
    80003ae4:	00048513          	mv	a0,s1
    80003ae8:	00002097          	auipc	ra,0x2
    80003aec:	f10080e7          	jalr	-240(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    80003af0:	00000a13          	li	s4,0
    80003af4:	9e5ff06f          	j	800034d8 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    80003af8:	001a8a93          	addi	s5,s5,1
    80003afc:	00800913          	li	s2,8
    80003b00:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 16; ++i) {
    80003b04:	001a0a13          	addi	s4,s4,1
    80003b08:	00f00793          	li	a5,15
    80003b0c:	0347ea63          	bltu	a5,s4,80003b40 <_ZN20KObjectAllocatorTest5test0Em+0x820>
        if (expectedBitValues[i] != getValueOfBitAt(byte, bit, objAlloc))
    80003b10:	fb040793          	addi	a5,s0,-80
    80003b14:	014787b3          	add	a5,a5,s4
    80003b18:	fa07cb03          	lbu	s6,-96(a5)
    80003b1c:	00048693          	mv	a3,s1
    80003b20:	00090613          	mv	a2,s2
    80003b24:	000a8593          	mv	a1,s5
    80003b28:	00098513          	mv	a0,s3
    80003b2c:	fffff097          	auipc	ra,0xfffff
    80003b30:	5d8080e7          	jalr	1496(ra) # 80003104 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80003b34:	faab16e3          	bne	s6,a0,80003ae0 <_ZN20KObjectAllocatorTest5test0Em+0x7c0>
            { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    80003b38:	fc0914e3          	bnez	s2,80003b00 <_ZN20KObjectAllocatorTest5test0Em+0x7e0>
    80003b3c:	fbdff06f          	j	80003af8 <_ZN20KObjectAllocatorTest5test0Em+0x7d8>
    delete objAlloc;
    80003b40:	06048e63          	beqz	s1,80003bbc <_ZN20KObjectAllocatorTest5test0Em+0x89c>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003b44:	00000913          	li	s2,0
    80003b48:	0280006f          	j	80003b70 <_ZN20KObjectAllocatorTest5test0Em+0x850>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003b4c:	ffffe097          	auipc	ra,0xffffe
    80003b50:	030080e7          	jalr	48(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003b54:	0284b783          	ld	a5,40(s1)
    80003b58:	00391713          	slli	a4,s2,0x3
    80003b5c:	00e787b3          	add	a5,a5,a4
    80003b60:	0007b583          	ld	a1,0(a5)
    80003b64:	ffffe097          	auipc	ra,0xffffe
    80003b68:	1a4080e7          	jalr	420(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003b6c:	00190913          	addi	s2,s2,1
    80003b70:	0304b783          	ld	a5,48(s1)
    80003b74:	fcf96ce3          	bltu	s2,a5,80003b4c <_ZN20KObjectAllocatorTest5test0Em+0x82c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003b78:	ffffe097          	auipc	ra,0xffffe
    80003b7c:	004080e7          	jalr	4(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003b80:	0284b583          	ld	a1,40(s1)
    80003b84:	ffffe097          	auipc	ra,0xffffe
    80003b88:	184080e7          	jalr	388(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003b8c:	ffffe097          	auipc	ra,0xffffe
    80003b90:	ff0080e7          	jalr	-16(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003b94:	0204b583          	ld	a1,32(s1)
    80003b98:	ffffe097          	auipc	ra,0xffffe
    80003b9c:	170080e7          	jalr	368(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003ba0:	ffffe097          	auipc	ra,0xffffe
    80003ba4:	fdc080e7          	jalr	-36(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003ba8:	00048593          	mv	a1,s1
    80003bac:	ffffe097          	auipc	ra,0xffffe
    80003bb0:	15c080e7          	jalr	348(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    return true;
    80003bb4:	00100a13          	li	s4,1
    }
    80003bb8:	921ff06f          	j	800034d8 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    80003bbc:	00100a13          	li	s4,1
    80003bc0:	919ff06f          	j	800034d8 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    80003bc4:	00050913          	mv	s2,a0
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 9);
    80003bc8:	00048513          	mv	a0,s1
    80003bcc:	00002097          	auipc	ra,0x2
    80003bd0:	e2c080e7          	jalr	-468(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    80003bd4:	00090513          	mv	a0,s2
    80003bd8:	00008097          	auipc	ra,0x8
    80003bdc:	cd0080e7          	jalr	-816(ra) # 8000b8a8 <_Unwind_Resume>

0000000080003be0 <_ZN20KObjectAllocatorTest5test1Em>:

bool KObjectAllocatorTest::test1(size_t size) {
    80003be0:	81010113          	addi	sp,sp,-2032
    80003be4:	7e113423          	sd	ra,2024(sp)
    80003be8:	7e813023          	sd	s0,2016(sp)
    80003bec:	7c913c23          	sd	s1,2008(sp)
    80003bf0:	7d213823          	sd	s2,2000(sp)
    80003bf4:	7d313423          	sd	s3,1992(sp)
    80003bf8:	7d413023          	sd	s4,1984(sp)
    80003bfc:	7b513c23          	sd	s5,1976(sp)
    80003c00:	7f010413          	addi	s0,sp,2032
    80003c04:	db010113          	addi	sp,sp,-592
    80003c08:	00050993          	mv	s3,a0
    80003c0c:	00058913          	mv	s2,a1
        return MemoryAllocator::instance()->kmem_alloc(size);
    80003c10:	ffffe097          	auipc	ra,0xffffe
    80003c14:	f6c080e7          	jalr	-148(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003c18:	04000593          	li	a1,64
    80003c1c:	ffffe097          	auipc	ra,0xffffe
    80003c20:	044080e7          	jalr	68(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80003c24:	00050493          	mv	s1,a0
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    80003c28:	14000793          	li	a5,320
    80003c2c:	00f53023          	sd	a5,0(a0)
    80003c30:	00f53423          	sd	a5,8(a0)
    80003c34:	01253c23          	sd	s2,24(a0)
    80003c38:	00100793          	li	a5,1
    80003c3c:	02f53823          	sd	a5,48(a0)
    80003c40:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80003c44:	ffffe097          	auipc	ra,0xffffe
    80003c48:	f38080e7          	jalr	-200(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003c4c:	0304b583          	ld	a1,48(s1)
    80003c50:	00359593          	slli	a1,a1,0x3
    80003c54:	ffffe097          	auipc	ra,0xffffe
    80003c58:	00c080e7          	jalr	12(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80003c5c:	02a4b423          	sd	a0,40(s1)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80003c60:	ffffe097          	auipc	ra,0xffffe
    80003c64:	f1c080e7          	jalr	-228(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003c68:	0304b583          	ld	a1,48(s1)
    80003c6c:	00359593          	slli	a1,a1,0x3
    80003c70:	ffffe097          	auipc	ra,0xffffe
    80003c74:	ff0080e7          	jalr	-16(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80003c78:	02a4b023          	sd	a0,32(s1)
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80003c7c:	0084b703          	ld	a4,8(s1)
    80003c80:	ff877793          	andi	a5,a4,-8
    80003c84:	02f70463          	beq	a4,a5,80003cac <_ZN20KObjectAllocatorTest5test1Em+0xcc>
    80003c88:	00800713          	li	a4,8
    80003c8c:	00e787b3          	add	a5,a5,a4
    80003c90:	00f4b423          	sd	a5,8(s1)
    80003c94:	00f4b023          	sd	a5,0(s1)
        memorySizeForBits = numberOfObjects / 8;
    80003c98:	0037d793          	srli	a5,a5,0x3
    80003c9c:	00f4b823          	sd	a5,16(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80003ca0:	ffffe097          	auipc	ra,0xffffe
    80003ca4:	edc080e7          	jalr	-292(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003ca8:	00c0006f          	j	80003cb4 <_ZN20KObjectAllocatorTest5test1Em+0xd4>
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80003cac:	00000713          	li	a4,0
    80003cb0:	fddff06f          	j	80003c8c <_ZN20KObjectAllocatorTest5test1Em+0xac>
                memorySizeForBits + initialNumberOfObjects * objectSize
    80003cb4:	0104b583          	ld	a1,16(s1)
    80003cb8:	0004b783          	ld	a5,0(s1)
    80003cbc:	02f907b3          	mul	a5,s2,a5
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80003cc0:	0284ba03          	ld	s4,40(s1)
    80003cc4:	00f585b3          	add	a1,a1,a5
    80003cc8:	ffffe097          	auipc	ra,0xffffe
    80003ccc:	f98080e7          	jalr	-104(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80003cd0:	00aa3023          	sd	a0,0(s4)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    80003cd4:	0284b783          	ld	a5,40(s1)
    80003cd8:	0007b783          	ld	a5,0(a5)
    80003cdc:	0104b683          	ld	a3,16(s1)
    80003ce0:	0204b703          	ld	a4,32(s1)
    80003ce4:	00d787b3          	add	a5,a5,a3
    80003ce8:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    80003cec:	00000793          	li	a5,0
    80003cf0:	0104b703          	ld	a4,16(s1)
    80003cf4:	00e7fe63          	bgeu	a5,a4,80003d10 <_ZN20KObjectAllocatorTest5test1Em+0x130>
    80003cf8:	0284b703          	ld	a4,40(s1)
    80003cfc:	00073703          	ld	a4,0(a4)
    80003d00:	00f70733          	add	a4,a4,a5
    80003d04:	00070023          	sb	zero,0(a4)
    80003d08:	00178793          	addi	a5,a5,1
    80003d0c:	fe5ff06f          	j	80003cf0 <_ZN20KObjectAllocatorTest5test1Em+0x110>
    size_t getNumberOfObjects() { return numberOfObjects; }
    80003d10:	0084b703          	ld	a4,8(s1)
    KObjectAllocator* objAlloc = new KObjectAllocator(size);
    if (objAlloc->getNumberOfObjects() != 320) { delete objAlloc; return false; }
    80003d14:	14000793          	li	a5,320
    80003d18:	0af70263          	beq	a4,a5,80003dbc <_ZN20KObjectAllocatorTest5test1Em+0x1dc>
    80003d1c:	06048a63          	beqz	s1,80003d90 <_ZN20KObjectAllocatorTest5test1Em+0x1b0>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003d20:	00000913          	li	s2,0
    80003d24:	0304b783          	ld	a5,48(s1)
    80003d28:	02f97663          	bgeu	s2,a5,80003d54 <_ZN20KObjectAllocatorTest5test1Em+0x174>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003d2c:	ffffe097          	auipc	ra,0xffffe
    80003d30:	e50080e7          	jalr	-432(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003d34:	0284b783          	ld	a5,40(s1)
    80003d38:	00391713          	slli	a4,s2,0x3
    80003d3c:	00e787b3          	add	a5,a5,a4
    80003d40:	0007b583          	ld	a1,0(a5)
    80003d44:	ffffe097          	auipc	ra,0xffffe
    80003d48:	fc4080e7          	jalr	-60(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003d4c:	00190913          	addi	s2,s2,1
    80003d50:	fd5ff06f          	j	80003d24 <_ZN20KObjectAllocatorTest5test1Em+0x144>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003d54:	ffffe097          	auipc	ra,0xffffe
    80003d58:	e28080e7          	jalr	-472(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003d5c:	0284b583          	ld	a1,40(s1)
    80003d60:	ffffe097          	auipc	ra,0xffffe
    80003d64:	fa8080e7          	jalr	-88(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003d68:	ffffe097          	auipc	ra,0xffffe
    80003d6c:	e14080e7          	jalr	-492(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003d70:	0204b583          	ld	a1,32(s1)
    80003d74:	ffffe097          	auipc	ra,0xffffe
    80003d78:	f94080e7          	jalr	-108(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003d7c:	ffffe097          	auipc	ra,0xffffe
    80003d80:	e00080e7          	jalr	-512(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003d84:	00048593          	mv	a1,s1
    80003d88:	ffffe097          	auipc	ra,0xffffe
    80003d8c:	f80080e7          	jalr	-128(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003d90:	00000513          	li	a0,0
        { delete objAlloc; return false; }
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    }
    delete objAlloc;
    return true;
}
    80003d94:	25010113          	addi	sp,sp,592
    80003d98:	7e813083          	ld	ra,2024(sp)
    80003d9c:	7e013403          	ld	s0,2016(sp)
    80003da0:	7d813483          	ld	s1,2008(sp)
    80003da4:	7d013903          	ld	s2,2000(sp)
    80003da8:	7c813983          	ld	s3,1992(sp)
    80003dac:	7c013a03          	ld	s4,1984(sp)
    80003db0:	7b813a83          	ld	s5,1976(sp)
    80003db4:	7f010113          	addi	sp,sp,2032
    80003db8:	00008067          	ret
    size_t getMemorySizeForBits() { return memorySizeForBits; }
    80003dbc:	0104b703          	ld	a4,16(s1)
    if (objAlloc->getMemorySizeForBits() != 40) { delete objAlloc; return false; }
    80003dc0:	02800793          	li	a5,40
    80003dc4:	08f70063          	beq	a4,a5,80003e44 <_ZN20KObjectAllocatorTest5test1Em+0x264>
    80003dc8:	06048a63          	beqz	s1,80003e3c <_ZN20KObjectAllocatorTest5test1Em+0x25c>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003dcc:	00000913          	li	s2,0
    80003dd0:	0304b783          	ld	a5,48(s1)
    80003dd4:	02f97663          	bgeu	s2,a5,80003e00 <_ZN20KObjectAllocatorTest5test1Em+0x220>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003dd8:	ffffe097          	auipc	ra,0xffffe
    80003ddc:	da4080e7          	jalr	-604(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003de0:	0284b783          	ld	a5,40(s1)
    80003de4:	00391713          	slli	a4,s2,0x3
    80003de8:	00e787b3          	add	a5,a5,a4
    80003dec:	0007b583          	ld	a1,0(a5)
    80003df0:	ffffe097          	auipc	ra,0xffffe
    80003df4:	f18080e7          	jalr	-232(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003df8:	00190913          	addi	s2,s2,1
    80003dfc:	fd5ff06f          	j	80003dd0 <_ZN20KObjectAllocatorTest5test1Em+0x1f0>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003e00:	ffffe097          	auipc	ra,0xffffe
    80003e04:	d7c080e7          	jalr	-644(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003e08:	0284b583          	ld	a1,40(s1)
    80003e0c:	ffffe097          	auipc	ra,0xffffe
    80003e10:	efc080e7          	jalr	-260(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003e14:	ffffe097          	auipc	ra,0xffffe
    80003e18:	d68080e7          	jalr	-664(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003e1c:	0204b583          	ld	a1,32(s1)
    80003e20:	ffffe097          	auipc	ra,0xffffe
    80003e24:	ee8080e7          	jalr	-280(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003e28:	ffffe097          	auipc	ra,0xffffe
    80003e2c:	d54080e7          	jalr	-684(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003e30:	00048593          	mv	a1,s1
    80003e34:	ffffe097          	auipc	ra,0xffffe
    80003e38:	ed4080e7          	jalr	-300(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003e3c:	00000513          	li	a0,0
    80003e40:	f55ff06f          	j	80003d94 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    size_t getObjectSize() { return objectSize; }
    80003e44:	0184b783          	ld	a5,24(s1)
    if (objAlloc->getObjectSize() != size) { delete objAlloc; return false; }
    80003e48:	08f90063          	beq	s2,a5,80003ec8 <_ZN20KObjectAllocatorTest5test1Em+0x2e8>
    80003e4c:	06048a63          	beqz	s1,80003ec0 <_ZN20KObjectAllocatorTest5test1Em+0x2e0>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003e50:	00000913          	li	s2,0
    80003e54:	0304b783          	ld	a5,48(s1)
    80003e58:	02f97663          	bgeu	s2,a5,80003e84 <_ZN20KObjectAllocatorTest5test1Em+0x2a4>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003e5c:	ffffe097          	auipc	ra,0xffffe
    80003e60:	d20080e7          	jalr	-736(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003e64:	0284b783          	ld	a5,40(s1)
    80003e68:	00391713          	slli	a4,s2,0x3
    80003e6c:	00e787b3          	add	a5,a5,a4
    80003e70:	0007b583          	ld	a1,0(a5)
    80003e74:	ffffe097          	auipc	ra,0xffffe
    80003e78:	e94080e7          	jalr	-364(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003e7c:	00190913          	addi	s2,s2,1
    80003e80:	fd5ff06f          	j	80003e54 <_ZN20KObjectAllocatorTest5test1Em+0x274>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003e84:	ffffe097          	auipc	ra,0xffffe
    80003e88:	cf8080e7          	jalr	-776(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003e8c:	0284b583          	ld	a1,40(s1)
    80003e90:	ffffe097          	auipc	ra,0xffffe
    80003e94:	e78080e7          	jalr	-392(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003e98:	ffffe097          	auipc	ra,0xffffe
    80003e9c:	ce4080e7          	jalr	-796(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003ea0:	0204b583          	ld	a1,32(s1)
    80003ea4:	ffffe097          	auipc	ra,0xffffe
    80003ea8:	e64080e7          	jalr	-412(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003eac:	ffffe097          	auipc	ra,0xffffe
    80003eb0:	cd0080e7          	jalr	-816(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003eb4:	00048593          	mv	a1,s1
    80003eb8:	ffffe097          	auipc	ra,0xffffe
    80003ebc:	e50080e7          	jalr	-432(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003ec0:	00000513          	li	a0,0
    80003ec4:	ed1ff06f          	j	80003d94 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    void* objArr[320]; for (size_t i = 0; i < 32; objArr[i++] = objAlloc->allocateNewObject());
    80003ec8:	00000913          	li	s2,0
    80003ecc:	01f00793          	li	a5,31
    80003ed0:	0327ea63          	bltu	a5,s2,80003f04 <_ZN20KObjectAllocatorTest5test1Em+0x324>
    80003ed4:	00190a13          	addi	s4,s2,1
    80003ed8:	00048513          	mv	a0,s1
    80003edc:	00002097          	auipc	ra,0x2
    80003ee0:	1e4080e7          	jalr	484(ra) # 800060c0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80003ee4:	fffff7b7          	lui	a5,0xfffff
    80003ee8:	00391913          	slli	s2,s2,0x3
    80003eec:	fc040713          	addi	a4,s0,-64
    80003ef0:	00f707b3          	add	a5,a4,a5
    80003ef4:	01278933          	add	s2,a5,s2
    80003ef8:	60a93023          	sd	a0,1536(s2)
    80003efc:	000a0913          	mv	s2,s4
    80003f00:	fcdff06f          	j	80003ecc <_ZN20KObjectAllocatorTest5test1Em+0x2ec>
    if (getByteOfObject(objArr[31], objAlloc) != 3
    80003f04:	fffff7b7          	lui	a5,0xfffff
    80003f08:	fc040713          	addi	a4,s0,-64
    80003f0c:	00f707b3          	add	a5,a4,a5
    80003f10:	6f87b903          	ld	s2,1784(a5) # fffffffffffff6f8 <end+0xffffffff7fff3ca8>
    80003f14:	00048613          	mv	a2,s1
    80003f18:	00090593          	mv	a1,s2
    80003f1c:	00098513          	mv	a0,s3
    80003f20:	fffff097          	auipc	ra,0xfffff
    80003f24:	26c080e7          	jalr	620(ra) # 8000318c <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[31], objAlloc) != 0)
    80003f28:	00300793          	li	a5,3
    80003f2c:	02f50e63          	beq	a0,a5,80003f68 <_ZN20KObjectAllocatorTest5test1Em+0x388>
        { delete objAlloc; return false; }
    80003f30:	0c048c63          	beqz	s1,80004008 <_ZN20KObjectAllocatorTest5test1Em+0x428>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003f34:	00000913          	li	s2,0
    80003f38:	0304b783          	ld	a5,48(s1)
    80003f3c:	08f97863          	bgeu	s2,a5,80003fcc <_ZN20KObjectAllocatorTest5test1Em+0x3ec>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003f40:	ffffe097          	auipc	ra,0xffffe
    80003f44:	c3c080e7          	jalr	-964(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003f48:	0284b783          	ld	a5,40(s1)
    80003f4c:	00391713          	slli	a4,s2,0x3
    80003f50:	00e787b3          	add	a5,a5,a4
    80003f54:	0007b583          	ld	a1,0(a5)
    80003f58:	ffffe097          	auipc	ra,0xffffe
    80003f5c:	db0080e7          	jalr	-592(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003f60:	00190913          	addi	s2,s2,1
    80003f64:	fd5ff06f          	j	80003f38 <_ZN20KObjectAllocatorTest5test1Em+0x358>
        || getBitOfObject(objArr[31], objAlloc) != 0)
    80003f68:	00048613          	mv	a2,s1
    80003f6c:	00090593          	mv	a1,s2
    80003f70:	00098513          	mv	a0,s3
    80003f74:	fffff097          	auipc	ra,0xfffff
    80003f78:	298080e7          	jalr	664(ra) # 8000320c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80003f7c:	00050a93          	mv	s5,a0
    80003f80:	fa0518e3          	bnez	a0,80003f30 <_ZN20KObjectAllocatorTest5test1Em+0x350>
    if (objAlloc->nextNonTakenByte != 4) { delete objAlloc; return false; }
    80003f84:	0384b703          	ld	a4,56(s1)
    80003f88:	00400793          	li	a5,4
    80003f8c:	08f71263          	bne	a4,a5,80004010 <_ZN20KObjectAllocatorTest5test1Em+0x430>
    for (size_t i = 32; i < 320; objArr[i++] = objAlloc->allocateNewObject());
    80003f90:	02000913          	li	s2,32
    80003f94:	13f00793          	li	a5,319
    80003f98:	0f27e863          	bltu	a5,s2,80004088 <_ZN20KObjectAllocatorTest5test1Em+0x4a8>
    80003f9c:	00190a13          	addi	s4,s2,1
    80003fa0:	00048513          	mv	a0,s1
    80003fa4:	00002097          	auipc	ra,0x2
    80003fa8:	11c080e7          	jalr	284(ra) # 800060c0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80003fac:	fffff7b7          	lui	a5,0xfffff
    80003fb0:	00391913          	slli	s2,s2,0x3
    80003fb4:	fc040713          	addi	a4,s0,-64
    80003fb8:	00f707b3          	add	a5,a4,a5
    80003fbc:	01278933          	add	s2,a5,s2
    80003fc0:	60a93023          	sd	a0,1536(s2)
    80003fc4:	000a0913          	mv	s2,s4
    80003fc8:	fcdff06f          	j	80003f94 <_ZN20KObjectAllocatorTest5test1Em+0x3b4>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003fcc:	ffffe097          	auipc	ra,0xffffe
    80003fd0:	bb0080e7          	jalr	-1104(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003fd4:	0284b583          	ld	a1,40(s1)
    80003fd8:	ffffe097          	auipc	ra,0xffffe
    80003fdc:	d30080e7          	jalr	-720(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003fe0:	ffffe097          	auipc	ra,0xffffe
    80003fe4:	b9c080e7          	jalr	-1124(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003fe8:	0204b583          	ld	a1,32(s1)
    80003fec:	ffffe097          	auipc	ra,0xffffe
    80003ff0:	d1c080e7          	jalr	-740(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003ff4:	ffffe097          	auipc	ra,0xffffe
    80003ff8:	b88080e7          	jalr	-1144(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80003ffc:	00048593          	mv	a1,s1
    80004000:	ffffe097          	auipc	ra,0xffffe
    80004004:	d08080e7          	jalr	-760(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        { delete objAlloc; return false; }
    80004008:	00000513          	li	a0,0
    8000400c:	d89ff06f          	j	80003d94 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    if (objAlloc->nextNonTakenByte != 4) { delete objAlloc; return false; }
    80004010:	02049663          	bnez	s1,8000403c <_ZN20KObjectAllocatorTest5test1Em+0x45c>
    80004014:	06c0006f          	j	80004080 <_ZN20KObjectAllocatorTest5test1Em+0x4a0>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004018:	ffffe097          	auipc	ra,0xffffe
    8000401c:	b64080e7          	jalr	-1180(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004020:	0284b783          	ld	a5,40(s1)
    80004024:	003a9713          	slli	a4,s5,0x3
    80004028:	00e787b3          	add	a5,a5,a4
    8000402c:	0007b583          	ld	a1,0(a5) # fffffffffffff000 <end+0xffffffff7fff35b0>
    80004030:	ffffe097          	auipc	ra,0xffffe
    80004034:	cd8080e7          	jalr	-808(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004038:	001a8a93          	addi	s5,s5,1
    8000403c:	0304b783          	ld	a5,48(s1)
    80004040:	fcfaece3          	bltu	s5,a5,80004018 <_ZN20KObjectAllocatorTest5test1Em+0x438>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004044:	ffffe097          	auipc	ra,0xffffe
    80004048:	b38080e7          	jalr	-1224(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    8000404c:	0284b583          	ld	a1,40(s1)
    80004050:	ffffe097          	auipc	ra,0xffffe
    80004054:	cb8080e7          	jalr	-840(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004058:	ffffe097          	auipc	ra,0xffffe
    8000405c:	b24080e7          	jalr	-1244(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004060:	0204b583          	ld	a1,32(s1)
    80004064:	ffffe097          	auipc	ra,0xffffe
    80004068:	ca4080e7          	jalr	-860(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    8000406c:	ffffe097          	auipc	ra,0xffffe
    80004070:	b10080e7          	jalr	-1264(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004074:	00048593          	mv	a1,s1
    80004078:	ffffe097          	auipc	ra,0xffffe
    8000407c:	c90080e7          	jalr	-880(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004080:	00000513          	li	a0,0
    80004084:	d11ff06f          	j	80003d94 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    if (objAlloc->nextNonTakenByte != 40) { delete objAlloc; return false; }
    80004088:	0384b703          	ld	a4,56(s1)
    8000408c:	02800793          	li	a5,40
    80004090:	06f70e63          	beq	a4,a5,8000410c <_ZN20KObjectAllocatorTest5test1Em+0x52c>
    80004094:	06048863          	beqz	s1,80004104 <_ZN20KObjectAllocatorTest5test1Em+0x524>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004098:	0304b783          	ld	a5,48(s1)
    8000409c:	02faf663          	bgeu	s5,a5,800040c8 <_ZN20KObjectAllocatorTest5test1Em+0x4e8>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800040a0:	ffffe097          	auipc	ra,0xffffe
    800040a4:	adc080e7          	jalr	-1316(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800040a8:	0284b783          	ld	a5,40(s1)
    800040ac:	003a9713          	slli	a4,s5,0x3
    800040b0:	00e787b3          	add	a5,a5,a4
    800040b4:	0007b583          	ld	a1,0(a5)
    800040b8:	ffffe097          	auipc	ra,0xffffe
    800040bc:	c50080e7          	jalr	-944(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800040c0:	001a8a93          	addi	s5,s5,1
    800040c4:	fd5ff06f          	j	80004098 <_ZN20KObjectAllocatorTest5test1Em+0x4b8>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800040c8:	ffffe097          	auipc	ra,0xffffe
    800040cc:	ab4080e7          	jalr	-1356(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800040d0:	0284b583          	ld	a1,40(s1)
    800040d4:	ffffe097          	auipc	ra,0xffffe
    800040d8:	c34080e7          	jalr	-972(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800040dc:	ffffe097          	auipc	ra,0xffffe
    800040e0:	aa0080e7          	jalr	-1376(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800040e4:	0204b583          	ld	a1,32(s1)
    800040e8:	ffffe097          	auipc	ra,0xffffe
    800040ec:	c20080e7          	jalr	-992(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800040f0:	ffffe097          	auipc	ra,0xffffe
    800040f4:	a8c080e7          	jalr	-1396(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800040f8:	00048593          	mv	a1,s1
    800040fc:	ffffe097          	auipc	ra,0xffffe
    80004100:	c0c080e7          	jalr	-1012(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004104:	00000513          	li	a0,0
    80004108:	c8dff06f          	j	80003d94 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    objAlloc->freeObject(objArr[7 * 8]);
    8000410c:	fffff7b7          	lui	a5,0xfffff
    80004110:	fc040713          	addi	a4,s0,-64
    80004114:	00f707b3          	add	a5,a4,a5
    80004118:	7c07b583          	ld	a1,1984(a5) # fffffffffffff7c0 <end+0xffffffff7fff3d70>
    8000411c:	00048513          	mv	a0,s1
    80004120:	00002097          	auipc	ra,0x2
    80004124:	d20080e7          	jalr	-736(ra) # 80005e40 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[7 * 8] = objAlloc->allocateNewObject();
    80004128:	00048513          	mv	a0,s1
    8000412c:	00002097          	auipc	ra,0x2
    80004130:	f94080e7          	jalr	-108(ra) # 800060c0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004134:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[7 * 8], objAlloc) != 7
    80004138:	00048613          	mv	a2,s1
    8000413c:	00050593          	mv	a1,a0
    80004140:	00098513          	mv	a0,s3
    80004144:	fffff097          	auipc	ra,0xfffff
    80004148:	048080e7          	jalr	72(ra) # 8000318c <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[7 * 8], objAlloc) != 7)
    8000414c:	00700793          	li	a5,7
    80004150:	02f50c63          	beq	a0,a5,80004188 <_ZN20KObjectAllocatorTest5test1Em+0x5a8>
        { delete objAlloc; return false; }
    80004154:	0a048663          	beqz	s1,80004200 <_ZN20KObjectAllocatorTest5test1Em+0x620>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004158:	0304b783          	ld	a5,48(s1)
    8000415c:	06faf463          	bgeu	s5,a5,800041c4 <_ZN20KObjectAllocatorTest5test1Em+0x5e4>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004160:	ffffe097          	auipc	ra,0xffffe
    80004164:	a1c080e7          	jalr	-1508(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004168:	0284b783          	ld	a5,40(s1)
    8000416c:	003a9713          	slli	a4,s5,0x3
    80004170:	00e787b3          	add	a5,a5,a4
    80004174:	0007b583          	ld	a1,0(a5)
    80004178:	ffffe097          	auipc	ra,0xffffe
    8000417c:	b90080e7          	jalr	-1136(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004180:	001a8a93          	addi	s5,s5,1
    80004184:	fd5ff06f          	j	80004158 <_ZN20KObjectAllocatorTest5test1Em+0x578>
        || getBitOfObject(objArr[7 * 8], objAlloc) != 7)
    80004188:	00048613          	mv	a2,s1
    8000418c:	00090593          	mv	a1,s2
    80004190:	00098513          	mv	a0,s3
    80004194:	fffff097          	auipc	ra,0xfffff
    80004198:	078080e7          	jalr	120(ra) # 8000320c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    8000419c:	00700793          	li	a5,7
    800041a0:	faf51ae3          	bne	a0,a5,80004154 <_ZN20KObjectAllocatorTest5test1Em+0x574>
    if (objAlloc->nextNonTakenByte != 7) { delete objAlloc; return false; }
    800041a4:	0384b703          	ld	a4,56(s1)
    800041a8:	06f70063          	beq	a4,a5,80004208 <_ZN20KObjectAllocatorTest5test1Em+0x628>
    800041ac:	00048863          	beqz	s1,800041bc <_ZN20KObjectAllocatorTest5test1Em+0x5dc>
    800041b0:	00048513          	mv	a0,s1
    800041b4:	00002097          	auipc	ra,0x2
    800041b8:	844080e7          	jalr	-1980(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    800041bc:	00000513          	li	a0,0
    800041c0:	bd5ff06f          	j	80003d94 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800041c4:	ffffe097          	auipc	ra,0xffffe
    800041c8:	9b8080e7          	jalr	-1608(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800041cc:	0284b583          	ld	a1,40(s1)
    800041d0:	ffffe097          	auipc	ra,0xffffe
    800041d4:	b38080e7          	jalr	-1224(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800041d8:	ffffe097          	auipc	ra,0xffffe
    800041dc:	9a4080e7          	jalr	-1628(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800041e0:	0204b583          	ld	a1,32(s1)
    800041e4:	ffffe097          	auipc	ra,0xffffe
    800041e8:	b24080e7          	jalr	-1244(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800041ec:	ffffe097          	auipc	ra,0xffffe
    800041f0:	990080e7          	jalr	-1648(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800041f4:	00048593          	mv	a1,s1
    800041f8:	ffffe097          	auipc	ra,0xffffe
    800041fc:	b10080e7          	jalr	-1264(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        { delete objAlloc; return false; }
    80004200:	00000513          	li	a0,0
    80004204:	b91ff06f          	j	80003d94 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    objAlloc->freeObject(objArr[6 * 8 + 3]);
    80004208:	fffff937          	lui	s2,0xfffff
    8000420c:	fc040793          	addi	a5,s0,-64
    80004210:	01278933          	add	s2,a5,s2
    80004214:	79893583          	ld	a1,1944(s2) # fffffffffffff798 <end+0xffffffff7fff3d48>
    80004218:	00048513          	mv	a0,s1
    8000421c:	00002097          	auipc	ra,0x2
    80004220:	c24080e7          	jalr	-988(ra) # 80005e40 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[7 * 8 + 4]);
    80004224:	7e093583          	ld	a1,2016(s2)
    80004228:	00048513          	mv	a0,s1
    8000422c:	00002097          	auipc	ra,0x2
    80004230:	c14080e7          	jalr	-1004(ra) # 80005e40 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[38 * 8 + 5]);
    80004234:	f6843583          	ld	a1,-152(s0)
    80004238:	00048513          	mv	a0,s1
    8000423c:	00002097          	auipc	ra,0x2
    80004240:	c04080e7          	jalr	-1020(ra) # 80005e40 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[7 * 8 + 4] = objAlloc->allocateNewObject();
    80004244:	00048513          	mv	a0,s1
    80004248:	00002097          	auipc	ra,0x2
    8000424c:	e78080e7          	jalr	-392(ra) # 800060c0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004250:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[7 * 8 + 4], objAlloc) != 7
    80004254:	00048613          	mv	a2,s1
    80004258:	00050593          	mv	a1,a0
    8000425c:	00098513          	mv	a0,s3
    80004260:	fffff097          	auipc	ra,0xfffff
    80004264:	f2c080e7          	jalr	-212(ra) # 8000318c <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[7 * 8 + 4], objAlloc) != 3)
    80004268:	00700793          	li	a5,7
    8000426c:	00f50e63          	beq	a0,a5,80004288 <_ZN20KObjectAllocatorTest5test1Em+0x6a8>
        { delete objAlloc; return false; }
    80004270:	00048863          	beqz	s1,80004280 <_ZN20KObjectAllocatorTest5test1Em+0x6a0>
    80004274:	00048513          	mv	a0,s1
    80004278:	00001097          	auipc	ra,0x1
    8000427c:	780080e7          	jalr	1920(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    80004280:	00000513          	li	a0,0
    80004284:	b11ff06f          	j	80003d94 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        || getBitOfObject(objArr[7 * 8 + 4], objAlloc) != 3)
    80004288:	00048613          	mv	a2,s1
    8000428c:	00090593          	mv	a1,s2
    80004290:	00098513          	mv	a0,s3
    80004294:	fffff097          	auipc	ra,0xfffff
    80004298:	f78080e7          	jalr	-136(ra) # 8000320c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    8000429c:	00300793          	li	a5,3
    800042a0:	fcf518e3          	bne	a0,a5,80004270 <_ZN20KObjectAllocatorTest5test1Em+0x690>
    if (objAlloc->nextNonTakenByte != 7) { delete objAlloc; return false; }
    800042a4:	0384b703          	ld	a4,56(s1)
    800042a8:	00700793          	li	a5,7
    800042ac:	00f70e63          	beq	a4,a5,800042c8 <_ZN20KObjectAllocatorTest5test1Em+0x6e8>
    800042b0:	00048863          	beqz	s1,800042c0 <_ZN20KObjectAllocatorTest5test1Em+0x6e0>
    800042b4:	00048513          	mv	a0,s1
    800042b8:	00001097          	auipc	ra,0x1
    800042bc:	740080e7          	jalr	1856(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    800042c0:	00000513          	li	a0,0
    800042c4:	ad1ff06f          	j	80003d94 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    objAlloc->freeObject(objArr[3 * 8 + 5]);
    800042c8:	fffff7b7          	lui	a5,0xfffff
    800042cc:	fc040713          	addi	a4,s0,-64
    800042d0:	00f707b3          	add	a5,a4,a5
    800042d4:	6e87b583          	ld	a1,1768(a5) # fffffffffffff6e8 <end+0xffffffff7fff3c98>
    800042d8:	00048513          	mv	a0,s1
    800042dc:	00002097          	auipc	ra,0x2
    800042e0:	b64080e7          	jalr	-1180(ra) # 80005e40 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[38 * 8 + 5] = objAlloc->allocateNewObject();
    800042e4:	00048513          	mv	a0,s1
    800042e8:	00002097          	auipc	ra,0x2
    800042ec:	dd8080e7          	jalr	-552(ra) # 800060c0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800042f0:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[38 * 8 + 5], objAlloc) != 38
    800042f4:	00048613          	mv	a2,s1
    800042f8:	00050593          	mv	a1,a0
    800042fc:	00098513          	mv	a0,s3
    80004300:	fffff097          	auipc	ra,0xfffff
    80004304:	e8c080e7          	jalr	-372(ra) # 8000318c <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[38 * 8 + 5], objAlloc) != 2)
    80004308:	02600793          	li	a5,38
    8000430c:	00f50e63          	beq	a0,a5,80004328 <_ZN20KObjectAllocatorTest5test1Em+0x748>
    { delete objAlloc; return false; }
    80004310:	00048863          	beqz	s1,80004320 <_ZN20KObjectAllocatorTest5test1Em+0x740>
    80004314:	00048513          	mv	a0,s1
    80004318:	00001097          	auipc	ra,0x1
    8000431c:	6e0080e7          	jalr	1760(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    80004320:	00000513          	li	a0,0
    80004324:	a71ff06f          	j	80003d94 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        || getBitOfObject(objArr[38 * 8 + 5], objAlloc) != 2)
    80004328:	00048613          	mv	a2,s1
    8000432c:	00090593          	mv	a1,s2
    80004330:	00098513          	mv	a0,s3
    80004334:	fffff097          	auipc	ra,0xfffff
    80004338:	ed8080e7          	jalr	-296(ra) # 8000320c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    8000433c:	00200793          	li	a5,2
    80004340:	fcf518e3          	bne	a0,a5,80004310 <_ZN20KObjectAllocatorTest5test1Em+0x730>
    if (objAlloc->nextNonTakenByte != 38) { delete objAlloc; return false; }
    80004344:	0384b703          	ld	a4,56(s1)
    80004348:	02600793          	li	a5,38
    8000434c:	00f70e63          	beq	a4,a5,80004368 <_ZN20KObjectAllocatorTest5test1Em+0x788>
    80004350:	00048863          	beqz	s1,80004360 <_ZN20KObjectAllocatorTest5test1Em+0x780>
    80004354:	00048513          	mv	a0,s1
    80004358:	00001097          	auipc	ra,0x1
    8000435c:	6a0080e7          	jalr	1696(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    80004360:	00000513          	li	a0,0
    80004364:	a31ff06f          	j	80003d94 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    objArr[3 * 8 + 5] = objAlloc->allocateNewObject();
    80004368:	00048513          	mv	a0,s1
    8000436c:	00002097          	auipc	ra,0x2
    80004370:	d54080e7          	jalr	-684(ra) # 800060c0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004374:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[3 * 8 + 5], objAlloc) != 3 || getBitOfObject(objArr[3 * 8 + 5], objAlloc) != 2)
    80004378:	00048613          	mv	a2,s1
    8000437c:	00050593          	mv	a1,a0
    80004380:	00098513          	mv	a0,s3
    80004384:	fffff097          	auipc	ra,0xfffff
    80004388:	e08080e7          	jalr	-504(ra) # 8000318c <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    8000438c:	00300793          	li	a5,3
    80004390:	02f50463          	beq	a0,a5,800043b8 <_ZN20KObjectAllocatorTest5test1Em+0x7d8>
    if (objAlloc->nextNonTakenByte != 3) { delete objAlloc; return false; }
    80004394:	0384b703          	ld	a4,56(s1)
    80004398:	00300793          	li	a5,3
    8000439c:	02f70c63          	beq	a4,a5,800043d4 <_ZN20KObjectAllocatorTest5test1Em+0x7f4>
    800043a0:	00048863          	beqz	s1,800043b0 <_ZN20KObjectAllocatorTest5test1Em+0x7d0>
    800043a4:	00048513          	mv	a0,s1
    800043a8:	00001097          	auipc	ra,0x1
    800043ac:	650080e7          	jalr	1616(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    800043b0:	00000513          	li	a0,0
    800043b4:	9e1ff06f          	j	80003d94 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    if (getByteOfObject(objArr[3 * 8 + 5], objAlloc) != 3 || getBitOfObject(objArr[3 * 8 + 5], objAlloc) != 2)
    800043b8:	00048613          	mv	a2,s1
    800043bc:	00090593          	mv	a1,s2
    800043c0:	00098513          	mv	a0,s3
    800043c4:	fffff097          	auipc	ra,0xfffff
    800043c8:	e48080e7          	jalr	-440(ra) # 8000320c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800043cc:	00200793          	li	a5,2
    800043d0:	fcf512e3          	bne	a0,a5,80004394 <_ZN20KObjectAllocatorTest5test1Em+0x7b4>
    objArr[6 * 8 + 3] = objAlloc->allocateNewObject();
    800043d4:	00048513          	mv	a0,s1
    800043d8:	00002097          	auipc	ra,0x2
    800043dc:	ce8080e7          	jalr	-792(ra) # 800060c0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800043e0:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[6 * 8 + 3], objAlloc) != 6
    800043e4:	00048613          	mv	a2,s1
    800043e8:	00050593          	mv	a1,a0
    800043ec:	00098513          	mv	a0,s3
    800043f0:	fffff097          	auipc	ra,0xfffff
    800043f4:	d9c080e7          	jalr	-612(ra) # 8000318c <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[6 * 8 + 3], objAlloc) != 4)
    800043f8:	00600793          	li	a5,6
    800043fc:	00f50e63          	beq	a0,a5,80004418 <_ZN20KObjectAllocatorTest5test1Em+0x838>
    { delete objAlloc; return false; }
    80004400:	00048863          	beqz	s1,80004410 <_ZN20KObjectAllocatorTest5test1Em+0x830>
    80004404:	00048513          	mv	a0,s1
    80004408:	00001097          	auipc	ra,0x1
    8000440c:	5f0080e7          	jalr	1520(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    80004410:	00000513          	li	a0,0
    80004414:	981ff06f          	j	80003d94 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        || getBitOfObject(objArr[6 * 8 + 3], objAlloc) != 4)
    80004418:	00048613          	mv	a2,s1
    8000441c:	00090593          	mv	a1,s2
    80004420:	00098513          	mv	a0,s3
    80004424:	fffff097          	auipc	ra,0xfffff
    80004428:	de8080e7          	jalr	-536(ra) # 8000320c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    8000442c:	00400793          	li	a5,4
    80004430:	fcf518e3          	bne	a0,a5,80004400 <_ZN20KObjectAllocatorTest5test1Em+0x820>
    if (objAlloc->nextNonTakenByte != 6) { delete objAlloc; return false; }
    80004434:	0384b703          	ld	a4,56(s1)
    80004438:	00600793          	li	a5,6
    8000443c:	0ef71463          	bne	a4,a5,80004524 <_ZN20KObjectAllocatorTest5test1Em+0x944>
    for (int i = 0; i < 3; ++i) {
    80004440:	00000a93          	li	s5,0
    80004444:	00200793          	li	a5,2
    80004448:	1557ca63          	blt	a5,s5,8000459c <_ZN20KObjectAllocatorTest5test1Em+0x9bc>
        objAlloc->freeObject(objArr[319]);
    8000444c:	fb843583          	ld	a1,-72(s0)
    80004450:	00048513          	mv	a0,s1
    80004454:	00002097          	auipc	ra,0x2
    80004458:	9ec080e7          	jalr	-1556(ra) # 80005e40 <_ZN16KObjectAllocator10freeObjectEPv>
        objArr[319] = objAlloc->allocateNewObject();
    8000445c:	00048513          	mv	a0,s1
    80004460:	00002097          	auipc	ra,0x2
    80004464:	c60080e7          	jalr	-928(ra) # 800060c0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004468:	00050913          	mv	s2,a0
    8000446c:	faa43c23          	sd	a0,-72(s0)
        if (getByteOfObject(objArr[319], objAlloc) != 39
    80004470:	00048613          	mv	a2,s1
    80004474:	00050593          	mv	a1,a0
    80004478:	00098513          	mv	a0,s3
    8000447c:	fffff097          	auipc	ra,0xfffff
    80004480:	d10080e7          	jalr	-752(ra) # 8000318c <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
            || getBitOfObject(objArr[319], objAlloc) != 0)
    80004484:	02700793          	li	a5,39
    80004488:	0af51a63          	bne	a0,a5,8000453c <_ZN20KObjectAllocatorTest5test1Em+0x95c>
    8000448c:	00048613          	mv	a2,s1
    80004490:	00090593          	mv	a1,s2
    80004494:	00098513          	mv	a0,s3
    80004498:	fffff097          	auipc	ra,0xfffff
    8000449c:	d74080e7          	jalr	-652(ra) # 8000320c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800044a0:	08051e63          	bnez	a0,8000453c <_ZN20KObjectAllocatorTest5test1Em+0x95c>
        if (objAlloc->nextNonTakenByte != 40) { delete objAlloc; return false; }
    800044a4:	0384b703          	ld	a4,56(s1)
    800044a8:	02800793          	li	a5,40
    800044ac:	0af71463          	bne	a4,a5,80004554 <_ZN20KObjectAllocatorTest5test1Em+0x974>
        objAlloc->freeObject(objArr[1]);
    800044b0:	fffffa37          	lui	s4,0xfffff
    800044b4:	fc040793          	addi	a5,s0,-64
    800044b8:	01478a33          	add	s4,a5,s4
    800044bc:	608a3583          	ld	a1,1544(s4) # fffffffffffff608 <end+0xffffffff7fff3bb8>
    800044c0:	00048513          	mv	a0,s1
    800044c4:	00002097          	auipc	ra,0x2
    800044c8:	97c080e7          	jalr	-1668(ra) # 80005e40 <_ZN16KObjectAllocator10freeObjectEPv>
        objArr[1] = objAlloc->allocateNewObject();
    800044cc:	00048513          	mv	a0,s1
    800044d0:	00002097          	auipc	ra,0x2
    800044d4:	bf0080e7          	jalr	-1040(ra) # 800060c0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800044d8:	00050913          	mv	s2,a0
    800044dc:	60aa3423          	sd	a0,1544(s4)
        if (getByteOfObject(objArr[1], objAlloc) != 0
    800044e0:	00048613          	mv	a2,s1
    800044e4:	00050593          	mv	a1,a0
    800044e8:	00098513          	mv	a0,s3
    800044ec:	fffff097          	auipc	ra,0xfffff
    800044f0:	ca0080e7          	jalr	-864(ra) # 8000318c <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
            || getBitOfObject(objArr[1], objAlloc) != 6)
    800044f4:	06051c63          	bnez	a0,8000456c <_ZN20KObjectAllocatorTest5test1Em+0x98c>
    800044f8:	00048613          	mv	a2,s1
    800044fc:	00090593          	mv	a1,s2
    80004500:	00098513          	mv	a0,s3
    80004504:	fffff097          	auipc	ra,0xfffff
    80004508:	d08080e7          	jalr	-760(ra) # 8000320c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    8000450c:	00600793          	li	a5,6
    80004510:	04f51e63          	bne	a0,a5,8000456c <_ZN20KObjectAllocatorTest5test1Em+0x98c>
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    80004514:	0384b783          	ld	a5,56(s1)
    80004518:	06079663          	bnez	a5,80004584 <_ZN20KObjectAllocatorTest5test1Em+0x9a4>
    for (int i = 0; i < 3; ++i) {
    8000451c:	001a8a9b          	addiw	s5,s5,1
    80004520:	f25ff06f          	j	80004444 <_ZN20KObjectAllocatorTest5test1Em+0x864>
    if (objAlloc->nextNonTakenByte != 6) { delete objAlloc; return false; }
    80004524:	00048863          	beqz	s1,80004534 <_ZN20KObjectAllocatorTest5test1Em+0x954>
    80004528:	00048513          	mv	a0,s1
    8000452c:	00001097          	auipc	ra,0x1
    80004530:	4cc080e7          	jalr	1228(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    80004534:	00000513          	li	a0,0
    80004538:	85dff06f          	j	80003d94 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        { delete objAlloc; return false; }
    8000453c:	00048863          	beqz	s1,8000454c <_ZN20KObjectAllocatorTest5test1Em+0x96c>
    80004540:	00048513          	mv	a0,s1
    80004544:	00001097          	auipc	ra,0x1
    80004548:	4b4080e7          	jalr	1204(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    8000454c:	00000513          	li	a0,0
    80004550:	845ff06f          	j	80003d94 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        if (objAlloc->nextNonTakenByte != 40) { delete objAlloc; return false; }
    80004554:	00048863          	beqz	s1,80004564 <_ZN20KObjectAllocatorTest5test1Em+0x984>
    80004558:	00048513          	mv	a0,s1
    8000455c:	00001097          	auipc	ra,0x1
    80004560:	49c080e7          	jalr	1180(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    80004564:	00000513          	li	a0,0
    80004568:	82dff06f          	j	80003d94 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        { delete objAlloc; return false; }
    8000456c:	00048863          	beqz	s1,8000457c <_ZN20KObjectAllocatorTest5test1Em+0x99c>
    80004570:	00048513          	mv	a0,s1
    80004574:	00001097          	auipc	ra,0x1
    80004578:	484080e7          	jalr	1156(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    8000457c:	00000513          	li	a0,0
    80004580:	815ff06f          	j	80003d94 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    80004584:	00048863          	beqz	s1,80004594 <_ZN20KObjectAllocatorTest5test1Em+0x9b4>
    80004588:	00048513          	mv	a0,s1
    8000458c:	00001097          	auipc	ra,0x1
    80004590:	46c080e7          	jalr	1132(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    80004594:	00000513          	li	a0,0
    80004598:	ffcff06f          	j	80003d94 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    delete objAlloc;
    8000459c:	00048c63          	beqz	s1,800045b4 <_ZN20KObjectAllocatorTest5test1Em+0x9d4>
    800045a0:	00048513          	mv	a0,s1
    800045a4:	00001097          	auipc	ra,0x1
    800045a8:	454080e7          	jalr	1108(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    return true;
    800045ac:	00100513          	li	a0,1
    800045b0:	fe4ff06f          	j	80003d94 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    800045b4:	00100513          	li	a0,1
    800045b8:	fdcff06f          	j	80003d94 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    800045bc:	00050913          	mv	s2,a0
    KObjectAllocator* objAlloc = new KObjectAllocator(size);
    800045c0:	00048513          	mv	a0,s1
    800045c4:	00001097          	auipc	ra,0x1
    800045c8:	434080e7          	jalr	1076(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    800045cc:	00090513          	mv	a0,s2
    800045d0:	00007097          	auipc	ra,0x7
    800045d4:	2d8080e7          	jalr	728(ra) # 8000b8a8 <_Unwind_Resume>

00000000800045d8 <_ZN20KObjectAllocatorTest5test2Em>:

bool KObjectAllocatorTest::test2(size_t size) {
    800045d8:	f5010113          	addi	sp,sp,-176
    800045dc:	0a113423          	sd	ra,168(sp)
    800045e0:	0a813023          	sd	s0,160(sp)
    800045e4:	08913c23          	sd	s1,152(sp)
    800045e8:	09213823          	sd	s2,144(sp)
    800045ec:	09313423          	sd	s3,136(sp)
    800045f0:	09413023          	sd	s4,128(sp)
    800045f4:	07513c23          	sd	s5,120(sp)
    800045f8:	07613823          	sd	s6,112(sp)
    800045fc:	07713423          	sd	s7,104(sp)
    80004600:	07813023          	sd	s8,96(sp)
    80004604:	0b010413          	addi	s0,sp,176
    80004608:	00050993          	mv	s3,a0
    8000460c:	00058913          	mv	s2,a1
        return MemoryAllocator::instance()->kmem_alloc(size);
    80004610:	ffffd097          	auipc	ra,0xffffd
    80004614:	56c080e7          	jalr	1388(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004618:	04000593          	li	a1,64
    8000461c:	ffffd097          	auipc	ra,0xffffd
    80004620:	644080e7          	jalr	1604(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80004624:	00050493          	mv	s1,a0
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    80004628:	00300793          	li	a5,3
    8000462c:	00f53023          	sd	a5,0(a0)
    80004630:	00f53423          	sd	a5,8(a0)
    80004634:	01253c23          	sd	s2,24(a0)
    80004638:	00100793          	li	a5,1
    8000463c:	02f53823          	sd	a5,48(a0)
    80004640:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80004644:	ffffd097          	auipc	ra,0xffffd
    80004648:	538080e7          	jalr	1336(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    8000464c:	0304b583          	ld	a1,48(s1)
    80004650:	00359593          	slli	a1,a1,0x3
    80004654:	ffffd097          	auipc	ra,0xffffd
    80004658:	60c080e7          	jalr	1548(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    8000465c:	02a4b423          	sd	a0,40(s1)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80004660:	ffffd097          	auipc	ra,0xffffd
    80004664:	51c080e7          	jalr	1308(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004668:	0304b583          	ld	a1,48(s1)
    8000466c:	00359593          	slli	a1,a1,0x3
    80004670:	ffffd097          	auipc	ra,0xffffd
    80004674:	5f0080e7          	jalr	1520(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80004678:	02a4b023          	sd	a0,32(s1)
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    8000467c:	0084b703          	ld	a4,8(s1)
    80004680:	ff877793          	andi	a5,a4,-8
    80004684:	02f70463          	beq	a4,a5,800046ac <_ZN20KObjectAllocatorTest5test2Em+0xd4>
    80004688:	00800713          	li	a4,8
    8000468c:	00e787b3          	add	a5,a5,a4
    80004690:	00f4b423          	sd	a5,8(s1)
    80004694:	00f4b023          	sd	a5,0(s1)
        memorySizeForBits = numberOfObjects / 8;
    80004698:	0037d793          	srli	a5,a5,0x3
    8000469c:	00f4b823          	sd	a5,16(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    800046a0:	ffffd097          	auipc	ra,0xffffd
    800046a4:	4dc080e7          	jalr	1244(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800046a8:	00c0006f          	j	800046b4 <_ZN20KObjectAllocatorTest5test2Em+0xdc>
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    800046ac:	00000713          	li	a4,0
    800046b0:	fddff06f          	j	8000468c <_ZN20KObjectAllocatorTest5test2Em+0xb4>
                memorySizeForBits + initialNumberOfObjects * objectSize
    800046b4:	0104b583          	ld	a1,16(s1)
    800046b8:	0004b783          	ld	a5,0(s1)
    800046bc:	02f907b3          	mul	a5,s2,a5
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    800046c0:	0284ba03          	ld	s4,40(s1)
    800046c4:	00f585b3          	add	a1,a1,a5
    800046c8:	ffffd097          	auipc	ra,0xffffd
    800046cc:	598080e7          	jalr	1432(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    800046d0:	00aa3023          	sd	a0,0(s4)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    800046d4:	0284b783          	ld	a5,40(s1)
    800046d8:	0007b783          	ld	a5,0(a5)
    800046dc:	0104b683          	ld	a3,16(s1)
    800046e0:	0204b703          	ld	a4,32(s1)
    800046e4:	00d787b3          	add	a5,a5,a3
    800046e8:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    800046ec:	00000793          	li	a5,0
    800046f0:	0104b703          	ld	a4,16(s1)
    800046f4:	00e7fe63          	bgeu	a5,a4,80004710 <_ZN20KObjectAllocatorTest5test2Em+0x138>
    800046f8:	0284b703          	ld	a4,40(s1)
    800046fc:	00073703          	ld	a4,0(a4)
    80004700:	00f70733          	add	a4,a4,a5
    80004704:	00070023          	sb	zero,0(a4)
    80004708:	00178793          	addi	a5,a5,1
    8000470c:	fe5ff06f          	j	800046f0 <_ZN20KObjectAllocatorTest5test2Em+0x118>
    size_t getNumberOfObjects() { return numberOfObjects; }
    80004710:	0084bb83          	ld	s7,8(s1)
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 3);
    if (objAlloc->getNumberOfObjects() != 8) { delete objAlloc; return false; }
    80004714:	00800793          	li	a5,8
    80004718:	0afb8863          	beq	s7,a5,800047c8 <_ZN20KObjectAllocatorTest5test2Em+0x1f0>
    8000471c:	06048a63          	beqz	s1,80004790 <_ZN20KObjectAllocatorTest5test2Em+0x1b8>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004720:	00000913          	li	s2,0
    80004724:	0280006f          	j	8000474c <_ZN20KObjectAllocatorTest5test2Em+0x174>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004728:	ffffd097          	auipc	ra,0xffffd
    8000472c:	454080e7          	jalr	1108(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004730:	0284b783          	ld	a5,40(s1)
    80004734:	00391713          	slli	a4,s2,0x3
    80004738:	00e787b3          	add	a5,a5,a4
    8000473c:	0007b583          	ld	a1,0(a5)
    80004740:	ffffd097          	auipc	ra,0xffffd
    80004744:	5c8080e7          	jalr	1480(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004748:	00190913          	addi	s2,s2,1
    8000474c:	0304b783          	ld	a5,48(s1)
    80004750:	fcf96ce3          	bltu	s2,a5,80004728 <_ZN20KObjectAllocatorTest5test2Em+0x150>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004754:	ffffd097          	auipc	ra,0xffffd
    80004758:	428080e7          	jalr	1064(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    8000475c:	0284b583          	ld	a1,40(s1)
    80004760:	ffffd097          	auipc	ra,0xffffd
    80004764:	5a8080e7          	jalr	1448(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004768:	ffffd097          	auipc	ra,0xffffd
    8000476c:	414080e7          	jalr	1044(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004770:	0204b583          	ld	a1,32(s1)
    80004774:	ffffd097          	auipc	ra,0xffffd
    80004778:	594080e7          	jalr	1428(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    8000477c:	ffffd097          	auipc	ra,0xffffd
    80004780:	400080e7          	jalr	1024(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004784:	00048593          	mv	a1,s1
    80004788:	ffffd097          	auipc	ra,0xffffd
    8000478c:	580080e7          	jalr	1408(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004790:	00000a13          	li	s4,0
        if (expectedBitValues[i] != getValueOfBitAt(byte, bit, objAlloc))
        { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    }
    delete objAlloc;
    return true;
}
    80004794:	000a0513          	mv	a0,s4
    80004798:	0a813083          	ld	ra,168(sp)
    8000479c:	0a013403          	ld	s0,160(sp)
    800047a0:	09813483          	ld	s1,152(sp)
    800047a4:	09013903          	ld	s2,144(sp)
    800047a8:	08813983          	ld	s3,136(sp)
    800047ac:	08013a03          	ld	s4,128(sp)
    800047b0:	07813a83          	ld	s5,120(sp)
    800047b4:	07013b03          	ld	s6,112(sp)
    800047b8:	06813b83          	ld	s7,104(sp)
    800047bc:	06013c03          	ld	s8,96(sp)
    800047c0:	0b010113          	addi	sp,sp,176
    800047c4:	00008067          	ret
    size_t getMemorySizeForBits() { return memorySizeForBits; }
    800047c8:	0104b703          	ld	a4,16(s1)
    if (objAlloc->getMemorySizeForBits() != 1) { delete objAlloc; return false; }
    800047cc:	00100793          	li	a5,1
    800047d0:	08f70063          	beq	a4,a5,80004850 <_ZN20KObjectAllocatorTest5test2Em+0x278>
    800047d4:	06048a63          	beqz	s1,80004848 <_ZN20KObjectAllocatorTest5test2Em+0x270>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800047d8:	00000913          	li	s2,0
    800047dc:	0280006f          	j	80004804 <_ZN20KObjectAllocatorTest5test2Em+0x22c>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800047e0:	ffffd097          	auipc	ra,0xffffd
    800047e4:	39c080e7          	jalr	924(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800047e8:	0284b783          	ld	a5,40(s1)
    800047ec:	00391713          	slli	a4,s2,0x3
    800047f0:	00e787b3          	add	a5,a5,a4
    800047f4:	0007b583          	ld	a1,0(a5)
    800047f8:	ffffd097          	auipc	ra,0xffffd
    800047fc:	510080e7          	jalr	1296(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004800:	00190913          	addi	s2,s2,1
    80004804:	0304b783          	ld	a5,48(s1)
    80004808:	fcf96ce3          	bltu	s2,a5,800047e0 <_ZN20KObjectAllocatorTest5test2Em+0x208>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    8000480c:	ffffd097          	auipc	ra,0xffffd
    80004810:	370080e7          	jalr	880(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004814:	0284b583          	ld	a1,40(s1)
    80004818:	ffffd097          	auipc	ra,0xffffd
    8000481c:	4f0080e7          	jalr	1264(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004820:	ffffd097          	auipc	ra,0xffffd
    80004824:	35c080e7          	jalr	860(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004828:	0204b583          	ld	a1,32(s1)
    8000482c:	ffffd097          	auipc	ra,0xffffd
    80004830:	4dc080e7          	jalr	1244(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004834:	ffffd097          	auipc	ra,0xffffd
    80004838:	348080e7          	jalr	840(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    8000483c:	00048593          	mv	a1,s1
    80004840:	ffffd097          	auipc	ra,0xffffd
    80004844:	4c8080e7          	jalr	1224(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004848:	00000a13          	li	s4,0
    8000484c:	f49ff06f          	j	80004794 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    size_t getObjectSize() { return objectSize; }
    80004850:	0184b783          	ld	a5,24(s1)
    if (objAlloc->getObjectSize() != size) { delete objAlloc; return false; }
    80004854:	08f90063          	beq	s2,a5,800048d4 <_ZN20KObjectAllocatorTest5test2Em+0x2fc>
    80004858:	06048a63          	beqz	s1,800048cc <_ZN20KObjectAllocatorTest5test2Em+0x2f4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000485c:	00000913          	li	s2,0
    80004860:	0304b783          	ld	a5,48(s1)
    80004864:	02f97663          	bgeu	s2,a5,80004890 <_ZN20KObjectAllocatorTest5test2Em+0x2b8>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004868:	ffffd097          	auipc	ra,0xffffd
    8000486c:	314080e7          	jalr	788(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004870:	0284b783          	ld	a5,40(s1)
    80004874:	00391713          	slli	a4,s2,0x3
    80004878:	00e787b3          	add	a5,a5,a4
    8000487c:	0007b583          	ld	a1,0(a5)
    80004880:	ffffd097          	auipc	ra,0xffffd
    80004884:	488080e7          	jalr	1160(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004888:	00190913          	addi	s2,s2,1
    8000488c:	fd5ff06f          	j	80004860 <_ZN20KObjectAllocatorTest5test2Em+0x288>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004890:	ffffd097          	auipc	ra,0xffffd
    80004894:	2ec080e7          	jalr	748(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004898:	0284b583          	ld	a1,40(s1)
    8000489c:	ffffd097          	auipc	ra,0xffffd
    800048a0:	46c080e7          	jalr	1132(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800048a4:	ffffd097          	auipc	ra,0xffffd
    800048a8:	2d8080e7          	jalr	728(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800048ac:	0204b583          	ld	a1,32(s1)
    800048b0:	ffffd097          	auipc	ra,0xffffd
    800048b4:	458080e7          	jalr	1112(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800048b8:	ffffd097          	auipc	ra,0xffffd
    800048bc:	2c4080e7          	jalr	708(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800048c0:	00048593          	mv	a1,s1
    800048c4:	ffffd097          	auipc	ra,0xffffd
    800048c8:	444080e7          	jalr	1092(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    800048cc:	00000a13          	li	s4,0
    800048d0:	ec5ff06f          	j	80004794 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    void* objArr[10]; for (size_t i = 0; i < 10; objArr[i++] = objAlloc->allocateNewObject());
    800048d4:	00000913          	li	s2,0
    800048d8:	00900793          	li	a5,9
    800048dc:	0327e663          	bltu	a5,s2,80004908 <_ZN20KObjectAllocatorTest5test2Em+0x330>
    800048e0:	00190a13          	addi	s4,s2,1
    800048e4:	00048513          	mv	a0,s1
    800048e8:	00001097          	auipc	ra,0x1
    800048ec:	7d8080e7          	jalr	2008(ra) # 800060c0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800048f0:	00391913          	slli	s2,s2,0x3
    800048f4:	fb040793          	addi	a5,s0,-80
    800048f8:	01278933          	add	s2,a5,s2
    800048fc:	faa93823          	sd	a0,-80(s2)
    80004900:	000a0913          	mv	s2,s4
    80004904:	fd5ff06f          	j	800048d8 <_ZN20KObjectAllocatorTest5test2Em+0x300>
    for (size_t i = 0; i < 10; ++i) {
    80004908:	00000b13          	li	s6,0
    size_t byte = 0; size_t bit = 7;
    8000490c:	00700913          	li	s2,7
    80004910:	00000a93          	li	s5,0
    80004914:	1840006f          	j	80004a98 <_ZN20KObjectAllocatorTest5test2Em+0x4c0>
        if (objArr[i] != getObjectAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004918:	06048a63          	beqz	s1,8000498c <_ZN20KObjectAllocatorTest5test2Em+0x3b4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000491c:	00000913          	li	s2,0
    80004920:	0304b783          	ld	a5,48(s1)
    80004924:	02f97663          	bgeu	s2,a5,80004950 <_ZN20KObjectAllocatorTest5test2Em+0x378>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004928:	ffffd097          	auipc	ra,0xffffd
    8000492c:	254080e7          	jalr	596(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004930:	0284b783          	ld	a5,40(s1)
    80004934:	00391713          	slli	a4,s2,0x3
    80004938:	00e787b3          	add	a5,a5,a4
    8000493c:	0007b583          	ld	a1,0(a5)
    80004940:	ffffd097          	auipc	ra,0xffffd
    80004944:	3c8080e7          	jalr	968(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004948:	00190913          	addi	s2,s2,1
    8000494c:	fd5ff06f          	j	80004920 <_ZN20KObjectAllocatorTest5test2Em+0x348>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004950:	ffffd097          	auipc	ra,0xffffd
    80004954:	22c080e7          	jalr	556(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004958:	0284b583          	ld	a1,40(s1)
    8000495c:	ffffd097          	auipc	ra,0xffffd
    80004960:	3ac080e7          	jalr	940(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004964:	ffffd097          	auipc	ra,0xffffd
    80004968:	218080e7          	jalr	536(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    8000496c:	0204b583          	ld	a1,32(s1)
    80004970:	ffffd097          	auipc	ra,0xffffd
    80004974:	398080e7          	jalr	920(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004978:	ffffd097          	auipc	ra,0xffffd
    8000497c:	204080e7          	jalr	516(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004980:	00048593          	mv	a1,s1
    80004984:	ffffd097          	auipc	ra,0xffffd
    80004988:	384080e7          	jalr	900(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    8000498c:	00000a13          	li	s4,0
    80004990:	e05ff06f          	j	80004794 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
        if (objByte != byte || objBit != bit) { delete objAlloc; return false; }
    80004994:	06048a63          	beqz	s1,80004a08 <_ZN20KObjectAllocatorTest5test2Em+0x430>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004998:	00000913          	li	s2,0
    8000499c:	0304b783          	ld	a5,48(s1)
    800049a0:	02f97663          	bgeu	s2,a5,800049cc <_ZN20KObjectAllocatorTest5test2Em+0x3f4>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800049a4:	ffffd097          	auipc	ra,0xffffd
    800049a8:	1d8080e7          	jalr	472(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800049ac:	0284b783          	ld	a5,40(s1)
    800049b0:	00391713          	slli	a4,s2,0x3
    800049b4:	00e787b3          	add	a5,a5,a4
    800049b8:	0007b583          	ld	a1,0(a5)
    800049bc:	ffffd097          	auipc	ra,0xffffd
    800049c0:	34c080e7          	jalr	844(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800049c4:	00190913          	addi	s2,s2,1
    800049c8:	fd5ff06f          	j	8000499c <_ZN20KObjectAllocatorTest5test2Em+0x3c4>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800049cc:	ffffd097          	auipc	ra,0xffffd
    800049d0:	1b0080e7          	jalr	432(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800049d4:	0284b583          	ld	a1,40(s1)
    800049d8:	ffffd097          	auipc	ra,0xffffd
    800049dc:	330080e7          	jalr	816(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800049e0:	ffffd097          	auipc	ra,0xffffd
    800049e4:	19c080e7          	jalr	412(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800049e8:	0204b583          	ld	a1,32(s1)
    800049ec:	ffffd097          	auipc	ra,0xffffd
    800049f0:	31c080e7          	jalr	796(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800049f4:	ffffd097          	auipc	ra,0xffffd
    800049f8:	188080e7          	jalr	392(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800049fc:	00048593          	mv	a1,s1
    80004a00:	ffffd097          	auipc	ra,0xffffd
    80004a04:	308080e7          	jalr	776(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004a08:	00000a13          	li	s4,0
    80004a0c:	d89ff06f          	j	80004794 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
        if (!getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004a10:	d80482e3          	beqz	s1,80004794 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004a14:	00000913          	li	s2,0
    80004a18:	0280006f          	j	80004a40 <_ZN20KObjectAllocatorTest5test2Em+0x468>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004a1c:	ffffd097          	auipc	ra,0xffffd
    80004a20:	160080e7          	jalr	352(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004a24:	0284b783          	ld	a5,40(s1)
    80004a28:	00391713          	slli	a4,s2,0x3
    80004a2c:	00e787b3          	add	a5,a5,a4
    80004a30:	0007b583          	ld	a1,0(a5)
    80004a34:	ffffd097          	auipc	ra,0xffffd
    80004a38:	2d4080e7          	jalr	724(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004a3c:	00190913          	addi	s2,s2,1
    80004a40:	0304b783          	ld	a5,48(s1)
    80004a44:	fcf96ce3          	bltu	s2,a5,80004a1c <_ZN20KObjectAllocatorTest5test2Em+0x444>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004a48:	ffffd097          	auipc	ra,0xffffd
    80004a4c:	134080e7          	jalr	308(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004a50:	0284b583          	ld	a1,40(s1)
    80004a54:	ffffd097          	auipc	ra,0xffffd
    80004a58:	2b4080e7          	jalr	692(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004a5c:	ffffd097          	auipc	ra,0xffffd
    80004a60:	120080e7          	jalr	288(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004a64:	0204b583          	ld	a1,32(s1)
    80004a68:	ffffd097          	auipc	ra,0xffffd
    80004a6c:	2a0080e7          	jalr	672(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004a70:	ffffd097          	auipc	ra,0xffffd
    80004a74:	10c080e7          	jalr	268(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004a78:	00048593          	mv	a1,s1
    80004a7c:	ffffd097          	auipc	ra,0xffffd
    80004a80:	28c080e7          	jalr	652(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004a84:	d11ff06f          	j	80004794 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80004a88:	001a8a93          	addi	s5,s5,1
    80004a8c:	000b8913          	mv	s2,s7
    80004a90:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 10; ++i) {
    80004a94:	001b0b13          	addi	s6,s6,1
    80004a98:	00900793          	li	a5,9
    80004a9c:	0967e663          	bltu	a5,s6,80004b28 <_ZN20KObjectAllocatorTest5test2Em+0x550>
        if (objArr[i] != getObjectAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004aa0:	003b1793          	slli	a5,s6,0x3
    80004aa4:	fb040713          	addi	a4,s0,-80
    80004aa8:	00f707b3          	add	a5,a4,a5
    80004aac:	fb07ba03          	ld	s4,-80(a5)
    80004ab0:	00048693          	mv	a3,s1
    80004ab4:	00090613          	mv	a2,s2
    80004ab8:	000a8593          	mv	a1,s5
    80004abc:	00098513          	mv	a0,s3
    80004ac0:	ffffe097          	auipc	ra,0xffffe
    80004ac4:	7d0080e7          	jalr	2000(ra) # 80003290 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>
    80004ac8:	e4aa18e3          	bne	s4,a0,80004918 <_ZN20KObjectAllocatorTest5test2Em+0x340>
        size_t objByte = getByteOfObject(objArr[i], objAlloc);
    80004acc:	00048613          	mv	a2,s1
    80004ad0:	000a0593          	mv	a1,s4
    80004ad4:	00098513          	mv	a0,s3
    80004ad8:	ffffe097          	auipc	ra,0xffffe
    80004adc:	6b4080e7          	jalr	1716(ra) # 8000318c <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    80004ae0:	00050c13          	mv	s8,a0
        size_t objBit = getBitOfObject(objArr[i], objAlloc);
    80004ae4:	00048613          	mv	a2,s1
    80004ae8:	000a0593          	mv	a1,s4
    80004aec:	00098513          	mv	a0,s3
    80004af0:	ffffe097          	auipc	ra,0xffffe
    80004af4:	71c080e7          	jalr	1820(ra) # 8000320c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
        if (objByte != byte || objBit != bit) { delete objAlloc; return false; }
    80004af8:	e98a9ee3          	bne	s5,s8,80004994 <_ZN20KObjectAllocatorTest5test2Em+0x3bc>
    80004afc:	e8a91ce3          	bne	s2,a0,80004994 <_ZN20KObjectAllocatorTest5test2Em+0x3bc>
        if (!getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004b00:	00048693          	mv	a3,s1
    80004b04:	00090613          	mv	a2,s2
    80004b08:	000a8593          	mv	a1,s5
    80004b0c:	00098513          	mv	a0,s3
    80004b10:	ffffe097          	auipc	ra,0xffffe
    80004b14:	5f4080e7          	jalr	1524(ra) # 80003104 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80004b18:	00050a13          	mv	s4,a0
    80004b1c:	ee050ae3          	beqz	a0,80004a10 <_ZN20KObjectAllocatorTest5test2Em+0x438>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80004b20:	f60918e3          	bnez	s2,80004a90 <_ZN20KObjectAllocatorTest5test2Em+0x4b8>
    80004b24:	f65ff06f          	j	80004a88 <_ZN20KObjectAllocatorTest5test2Em+0x4b0>
    for (size_t i = 0; i < 6; ++i) {
    80004b28:	00000a13          	li	s4,0
    80004b2c:	0900006f          	j	80004bbc <_ZN20KObjectAllocatorTest5test2Em+0x5e4>
        if (getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004b30:	06048a63          	beqz	s1,80004ba4 <_ZN20KObjectAllocatorTest5test2Em+0x5cc>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004b34:	00000913          	li	s2,0
    80004b38:	0304b783          	ld	a5,48(s1)
    80004b3c:	02f97663          	bgeu	s2,a5,80004b68 <_ZN20KObjectAllocatorTest5test2Em+0x590>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004b40:	ffffd097          	auipc	ra,0xffffd
    80004b44:	03c080e7          	jalr	60(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004b48:	0284b783          	ld	a5,40(s1)
    80004b4c:	00391713          	slli	a4,s2,0x3
    80004b50:	00e787b3          	add	a5,a5,a4
    80004b54:	0007b583          	ld	a1,0(a5)
    80004b58:	ffffd097          	auipc	ra,0xffffd
    80004b5c:	1b0080e7          	jalr	432(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004b60:	00190913          	addi	s2,s2,1
    80004b64:	fd5ff06f          	j	80004b38 <_ZN20KObjectAllocatorTest5test2Em+0x560>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004b68:	ffffd097          	auipc	ra,0xffffd
    80004b6c:	014080e7          	jalr	20(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004b70:	0284b583          	ld	a1,40(s1)
    80004b74:	ffffd097          	auipc	ra,0xffffd
    80004b78:	194080e7          	jalr	404(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004b7c:	ffffd097          	auipc	ra,0xffffd
    80004b80:	000080e7          	jalr	ra # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004b84:	0204b583          	ld	a1,32(s1)
    80004b88:	ffffd097          	auipc	ra,0xffffd
    80004b8c:	180080e7          	jalr	384(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004b90:	ffffd097          	auipc	ra,0xffffd
    80004b94:	fec080e7          	jalr	-20(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004b98:	00048593          	mv	a1,s1
    80004b9c:	ffffd097          	auipc	ra,0xffffd
    80004ba0:	16c080e7          	jalr	364(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004ba4:	00000a13          	li	s4,0
    80004ba8:	bedff06f          	j	80004794 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80004bac:	001a8a93          	addi	s5,s5,1
    80004bb0:	000b8913          	mv	s2,s7
    80004bb4:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 6; ++i) {
    80004bb8:	001a0a13          	addi	s4,s4,1
    80004bbc:	00500793          	li	a5,5
    80004bc0:	0347e463          	bltu	a5,s4,80004be8 <_ZN20KObjectAllocatorTest5test2Em+0x610>
        if (getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004bc4:	00048693          	mv	a3,s1
    80004bc8:	00090613          	mv	a2,s2
    80004bcc:	000a8593          	mv	a1,s5
    80004bd0:	00098513          	mv	a0,s3
    80004bd4:	ffffe097          	auipc	ra,0xffffe
    80004bd8:	530080e7          	jalr	1328(ra) # 80003104 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80004bdc:	f4051ae3          	bnez	a0,80004b30 <_ZN20KObjectAllocatorTest5test2Em+0x558>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80004be0:	fc091ae3          	bnez	s2,80004bb4 <_ZN20KObjectAllocatorTest5test2Em+0x5dc>
    80004be4:	fc9ff06f          	j	80004bac <_ZN20KObjectAllocatorTest5test2Em+0x5d4>
    objAlloc->freeObject(objArr[4]);
    80004be8:	f8043583          	ld	a1,-128(s0)
    80004bec:	00048513          	mv	a0,s1
    80004bf0:	00001097          	auipc	ra,0x1
    80004bf4:	250080e7          	jalr	592(ra) # 80005e40 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[7]);
    80004bf8:	f9843583          	ld	a1,-104(s0)
    80004bfc:	00048513          	mv	a0,s1
    80004c00:	00001097          	auipc	ra,0x1
    80004c04:	240080e7          	jalr	576(ra) # 80005e40 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[8]);
    80004c08:	fa043583          	ld	a1,-96(s0)
    80004c0c:	00048513          	mv	a0,s1
    80004c10:	00001097          	auipc	ra,0x1
    80004c14:	230080e7          	jalr	560(ra) # 80005e40 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[4] = objAlloc->allocateNewObject();
    80004c18:	00048513          	mv	a0,s1
    80004c1c:	00001097          	auipc	ra,0x1
    80004c20:	4a4080e7          	jalr	1188(ra) # 800060c0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004c24:	00050913          	mv	s2,a0
    if (objArr[4] != getObjectAt(1, 7, objAlloc)) { delete objAlloc; return false; }
    80004c28:	00048693          	mv	a3,s1
    80004c2c:	00700613          	li	a2,7
    80004c30:	00100593          	li	a1,1
    80004c34:	00098513          	mv	a0,s3
    80004c38:	ffffe097          	auipc	ra,0xffffe
    80004c3c:	658080e7          	jalr	1624(ra) # 80003290 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>
    80004c40:	08a90063          	beq	s2,a0,80004cc0 <_ZN20KObjectAllocatorTest5test2Em+0x6e8>
    80004c44:	06048a63          	beqz	s1,80004cb8 <_ZN20KObjectAllocatorTest5test2Em+0x6e0>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004c48:	00000913          	li	s2,0
    80004c4c:	0280006f          	j	80004c74 <_ZN20KObjectAllocatorTest5test2Em+0x69c>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004c50:	ffffd097          	auipc	ra,0xffffd
    80004c54:	f2c080e7          	jalr	-212(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004c58:	0284b783          	ld	a5,40(s1)
    80004c5c:	00391713          	slli	a4,s2,0x3
    80004c60:	00e787b3          	add	a5,a5,a4
    80004c64:	0007b583          	ld	a1,0(a5)
    80004c68:	ffffd097          	auipc	ra,0xffffd
    80004c6c:	0a0080e7          	jalr	160(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004c70:	00190913          	addi	s2,s2,1
    80004c74:	0304b783          	ld	a5,48(s1)
    80004c78:	fcf96ce3          	bltu	s2,a5,80004c50 <_ZN20KObjectAllocatorTest5test2Em+0x678>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004c7c:	ffffd097          	auipc	ra,0xffffd
    80004c80:	f00080e7          	jalr	-256(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004c84:	0284b583          	ld	a1,40(s1)
    80004c88:	ffffd097          	auipc	ra,0xffffd
    80004c8c:	080080e7          	jalr	128(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004c90:	ffffd097          	auipc	ra,0xffffd
    80004c94:	eec080e7          	jalr	-276(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004c98:	0204b583          	ld	a1,32(s1)
    80004c9c:	ffffd097          	auipc	ra,0xffffd
    80004ca0:	06c080e7          	jalr	108(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004ca4:	ffffd097          	auipc	ra,0xffffd
    80004ca8:	ed8080e7          	jalr	-296(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004cac:	00048593          	mv	a1,s1
    80004cb0:	ffffd097          	auipc	ra,0xffffd
    80004cb4:	058080e7          	jalr	88(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004cb8:	00000a13          	li	s4,0
    80004cbc:	ad9ff06f          	j	80004794 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    byte = getByteOfObject(objArr[4], objAlloc);
    80004cc0:	00048613          	mv	a2,s1
    80004cc4:	00090593          	mv	a1,s2
    80004cc8:	00098513          	mv	a0,s3
    80004ccc:	ffffe097          	auipc	ra,0xffffe
    80004cd0:	4c0080e7          	jalr	1216(ra) # 8000318c <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    80004cd4:	00050a13          	mv	s4,a0
    bit = getBitOfObject(objArr[4], objAlloc);
    80004cd8:	00048613          	mv	a2,s1
    80004cdc:	00090593          	mv	a1,s2
    80004ce0:	00098513          	mv	a0,s3
    80004ce4:	ffffe097          	auipc	ra,0xffffe
    80004ce8:	528080e7          	jalr	1320(ra) # 8000320c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80004cec:	00050913          	mv	s2,a0
    if (byte != 1 || bit != 7) { delete objAlloc; return false; }
    80004cf0:	00100793          	li	a5,1
    80004cf4:	00fa1663          	bne	s4,a5,80004d00 <_ZN20KObjectAllocatorTest5test2Em+0x728>
    80004cf8:	00700793          	li	a5,7
    80004cfc:	08f50063          	beq	a0,a5,80004d7c <_ZN20KObjectAllocatorTest5test2Em+0x7a4>
    80004d00:	06048a63          	beqz	s1,80004d74 <_ZN20KObjectAllocatorTest5test2Em+0x79c>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004d04:	00000913          	li	s2,0
    80004d08:	0280006f          	j	80004d30 <_ZN20KObjectAllocatorTest5test2Em+0x758>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004d0c:	ffffd097          	auipc	ra,0xffffd
    80004d10:	e70080e7          	jalr	-400(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004d14:	0284b783          	ld	a5,40(s1)
    80004d18:	00391713          	slli	a4,s2,0x3
    80004d1c:	00e787b3          	add	a5,a5,a4
    80004d20:	0007b583          	ld	a1,0(a5)
    80004d24:	ffffd097          	auipc	ra,0xffffd
    80004d28:	fe4080e7          	jalr	-28(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004d2c:	00190913          	addi	s2,s2,1
    80004d30:	0304b783          	ld	a5,48(s1)
    80004d34:	fcf96ce3          	bltu	s2,a5,80004d0c <_ZN20KObjectAllocatorTest5test2Em+0x734>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004d38:	ffffd097          	auipc	ra,0xffffd
    80004d3c:	e44080e7          	jalr	-444(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004d40:	0284b583          	ld	a1,40(s1)
    80004d44:	ffffd097          	auipc	ra,0xffffd
    80004d48:	fc4080e7          	jalr	-60(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004d4c:	ffffd097          	auipc	ra,0xffffd
    80004d50:	e30080e7          	jalr	-464(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004d54:	0204b583          	ld	a1,32(s1)
    80004d58:	ffffd097          	auipc	ra,0xffffd
    80004d5c:	fb0080e7          	jalr	-80(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004d60:	ffffd097          	auipc	ra,0xffffd
    80004d64:	e1c080e7          	jalr	-484(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004d68:	00048593          	mv	a1,s1
    80004d6c:	ffffd097          	auipc	ra,0xffffd
    80004d70:	f9c080e7          	jalr	-100(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004d74:	00000a13          	li	s4,0
    80004d78:	a1dff06f          	j	80004794 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    bool expectedBitValues[16] = {
    80004d7c:	00004797          	auipc	a5,0x4
    80004d80:	7f478793          	addi	a5,a5,2036 # 80009570 <CONSOLE_STATUS+0x560>
    80004d84:	0007b703          	ld	a4,0(a5)
    80004d88:	f4e43823          	sd	a4,-176(s0)
    80004d8c:	0087b783          	ld	a5,8(a5)
    80004d90:	f4f43c23          	sd	a5,-168(s0)
    for (size_t i = 0; i < 16; ++i) {
    80004d94:	00000a13          	li	s4,0
    byte = 0; bit = 7;
    80004d98:	00000a93          	li	s5,0
    80004d9c:	02c0006f          	j	80004dc8 <_ZN20KObjectAllocatorTest5test2Em+0x7f0>
        { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    80004da0:	00048863          	beqz	s1,80004db0 <_ZN20KObjectAllocatorTest5test2Em+0x7d8>
    80004da4:	00048513          	mv	a0,s1
    80004da8:	00001097          	auipc	ra,0x1
    80004dac:	c50080e7          	jalr	-944(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    80004db0:	00000a13          	li	s4,0
    80004db4:	9e1ff06f          	j	80004794 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    80004db8:	001a8a93          	addi	s5,s5,1
    80004dbc:	000b8913          	mv	s2,s7
    80004dc0:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 16; ++i) {
    80004dc4:	001a0a13          	addi	s4,s4,1
    80004dc8:	00f00793          	li	a5,15
    80004dcc:	0347ea63          	bltu	a5,s4,80004e00 <_ZN20KObjectAllocatorTest5test2Em+0x828>
        if (expectedBitValues[i] != getValueOfBitAt(byte, bit, objAlloc))
    80004dd0:	fb040793          	addi	a5,s0,-80
    80004dd4:	014787b3          	add	a5,a5,s4
    80004dd8:	fa07cb03          	lbu	s6,-96(a5)
    80004ddc:	00048693          	mv	a3,s1
    80004de0:	00090613          	mv	a2,s2
    80004de4:	000a8593          	mv	a1,s5
    80004de8:	00098513          	mv	a0,s3
    80004dec:	ffffe097          	auipc	ra,0xffffe
    80004df0:	318080e7          	jalr	792(ra) # 80003104 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80004df4:	faab16e3          	bne	s6,a0,80004da0 <_ZN20KObjectAllocatorTest5test2Em+0x7c8>
        { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    80004df8:	fc0914e3          	bnez	s2,80004dc0 <_ZN20KObjectAllocatorTest5test2Em+0x7e8>
    80004dfc:	fbdff06f          	j	80004db8 <_ZN20KObjectAllocatorTest5test2Em+0x7e0>
    delete objAlloc;
    80004e00:	06048e63          	beqz	s1,80004e7c <_ZN20KObjectAllocatorTest5test2Em+0x8a4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004e04:	00000913          	li	s2,0
    80004e08:	0280006f          	j	80004e30 <_ZN20KObjectAllocatorTest5test2Em+0x858>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004e0c:	ffffd097          	auipc	ra,0xffffd
    80004e10:	d70080e7          	jalr	-656(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004e14:	0284b783          	ld	a5,40(s1)
    80004e18:	00391713          	slli	a4,s2,0x3
    80004e1c:	00e787b3          	add	a5,a5,a4
    80004e20:	0007b583          	ld	a1,0(a5)
    80004e24:	ffffd097          	auipc	ra,0xffffd
    80004e28:	ee4080e7          	jalr	-284(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004e2c:	00190913          	addi	s2,s2,1
    80004e30:	0304b783          	ld	a5,48(s1)
    80004e34:	fcf96ce3          	bltu	s2,a5,80004e0c <_ZN20KObjectAllocatorTest5test2Em+0x834>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004e38:	ffffd097          	auipc	ra,0xffffd
    80004e3c:	d44080e7          	jalr	-700(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004e40:	0284b583          	ld	a1,40(s1)
    80004e44:	ffffd097          	auipc	ra,0xffffd
    80004e48:	ec4080e7          	jalr	-316(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004e4c:	ffffd097          	auipc	ra,0xffffd
    80004e50:	d30080e7          	jalr	-720(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004e54:	0204b583          	ld	a1,32(s1)
    80004e58:	ffffd097          	auipc	ra,0xffffd
    80004e5c:	eb0080e7          	jalr	-336(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004e60:	ffffd097          	auipc	ra,0xffffd
    80004e64:	d1c080e7          	jalr	-740(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004e68:	00048593          	mv	a1,s1
    80004e6c:	ffffd097          	auipc	ra,0xffffd
    80004e70:	e9c080e7          	jalr	-356(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    return true;
    80004e74:	00100a13          	li	s4,1
    }
    80004e78:	91dff06f          	j	80004794 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    80004e7c:	00100a13          	li	s4,1
    80004e80:	915ff06f          	j	80004794 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    80004e84:	00050913          	mv	s2,a0
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 3);
    80004e88:	00048513          	mv	a0,s1
    80004e8c:	00001097          	auipc	ra,0x1
    80004e90:	b6c080e7          	jalr	-1172(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    80004e94:	00090513          	mv	a0,s2
    80004e98:	00007097          	auipc	ra,0x7
    80004e9c:	a10080e7          	jalr	-1520(ra) # 8000b8a8 <_Unwind_Resume>

0000000080004ea0 <_ZN20KObjectAllocatorTest5test3Em>:

bool KObjectAllocatorTest::test3(size_t size) {
    80004ea0:	81010113          	addi	sp,sp,-2032
    80004ea4:	7e113423          	sd	ra,2024(sp)
    80004ea8:	7e813023          	sd	s0,2016(sp)
    80004eac:	7c913c23          	sd	s1,2008(sp)
    80004eb0:	7d213823          	sd	s2,2000(sp)
    80004eb4:	7d313423          	sd	s3,1992(sp)
    80004eb8:	7d413023          	sd	s4,1984(sp)
    80004ebc:	7b513c23          	sd	s5,1976(sp)
    80004ec0:	7f010413          	addi	s0,sp,2032
    80004ec4:	fb010113          	addi	sp,sp,-80
    80004ec8:	00050993          	mv	s3,a0
    80004ecc:	00058913          	mv	s2,a1
        return MemoryAllocator::instance()->kmem_alloc(size);
    80004ed0:	ffffd097          	auipc	ra,0xffffd
    80004ed4:	cac080e7          	jalr	-852(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004ed8:	04000593          	li	a1,64
    80004edc:	ffffd097          	auipc	ra,0xffffd
    80004ee0:	d84080e7          	jalr	-636(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80004ee4:	00050493          	mv	s1,a0
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    80004ee8:	00500793          	li	a5,5
    80004eec:	00f53023          	sd	a5,0(a0)
    80004ef0:	00f53423          	sd	a5,8(a0)
    80004ef4:	01253c23          	sd	s2,24(a0)
    80004ef8:	00100793          	li	a5,1
    80004efc:	02f53823          	sd	a5,48(a0)
    80004f00:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80004f04:	ffffd097          	auipc	ra,0xffffd
    80004f08:	c78080e7          	jalr	-904(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004f0c:	0304b583          	ld	a1,48(s1)
    80004f10:	00359593          	slli	a1,a1,0x3
    80004f14:	ffffd097          	auipc	ra,0xffffd
    80004f18:	d4c080e7          	jalr	-692(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80004f1c:	02a4b423          	sd	a0,40(s1)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80004f20:	ffffd097          	auipc	ra,0xffffd
    80004f24:	c5c080e7          	jalr	-932(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004f28:	0304b583          	ld	a1,48(s1)
    80004f2c:	00359593          	slli	a1,a1,0x3
    80004f30:	ffffd097          	auipc	ra,0xffffd
    80004f34:	d30080e7          	jalr	-720(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80004f38:	02a4b023          	sd	a0,32(s1)
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80004f3c:	0084b703          	ld	a4,8(s1)
    80004f40:	ff877793          	andi	a5,a4,-8
    80004f44:	02f70463          	beq	a4,a5,80004f6c <_ZN20KObjectAllocatorTest5test3Em+0xcc>
    80004f48:	00800713          	li	a4,8
    80004f4c:	00e787b3          	add	a5,a5,a4
    80004f50:	00f4b423          	sd	a5,8(s1)
    80004f54:	00f4b023          	sd	a5,0(s1)
        memorySizeForBits = numberOfObjects / 8;
    80004f58:	0037d793          	srli	a5,a5,0x3
    80004f5c:	00f4b823          	sd	a5,16(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80004f60:	ffffd097          	auipc	ra,0xffffd
    80004f64:	c1c080e7          	jalr	-996(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004f68:	00c0006f          	j	80004f74 <_ZN20KObjectAllocatorTest5test3Em+0xd4>
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80004f6c:	00000713          	li	a4,0
    80004f70:	fddff06f          	j	80004f4c <_ZN20KObjectAllocatorTest5test3Em+0xac>
                memorySizeForBits + initialNumberOfObjects * objectSize
    80004f74:	0104b583          	ld	a1,16(s1)
    80004f78:	0004b783          	ld	a5,0(s1)
    80004f7c:	02f907b3          	mul	a5,s2,a5
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80004f80:	0284ba03          	ld	s4,40(s1)
    80004f84:	00f585b3          	add	a1,a1,a5
    80004f88:	ffffd097          	auipc	ra,0xffffd
    80004f8c:	cd8080e7          	jalr	-808(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80004f90:	00aa3023          	sd	a0,0(s4)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    80004f94:	0284b783          	ld	a5,40(s1)
    80004f98:	0007b783          	ld	a5,0(a5)
    80004f9c:	0104b683          	ld	a3,16(s1)
    80004fa0:	0204b703          	ld	a4,32(s1)
    80004fa4:	00d787b3          	add	a5,a5,a3
    80004fa8:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    80004fac:	00000793          	li	a5,0
    80004fb0:	0104b703          	ld	a4,16(s1)
    80004fb4:	00e7fe63          	bgeu	a5,a4,80004fd0 <_ZN20KObjectAllocatorTest5test3Em+0x130>
    80004fb8:	0284b703          	ld	a4,40(s1)
    80004fbc:	00073703          	ld	a4,0(a4)
    80004fc0:	00f70733          	add	a4,a4,a5
    80004fc4:	00070023          	sb	zero,0(a4)
    80004fc8:	00178793          	addi	a5,a5,1
    80004fcc:	fe5ff06f          	j	80004fb0 <_ZN20KObjectAllocatorTest5test3Em+0x110>
    size_t getNumberOfObjects() { return numberOfObjects; }
    80004fd0:	0084b703          	ld	a4,8(s1)
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 5);
    if (objAlloc->getNumberOfObjects() != 8) { delete objAlloc; return false; }
    80004fd4:	00800793          	li	a5,8
    80004fd8:	0af70263          	beq	a4,a5,8000507c <_ZN20KObjectAllocatorTest5test3Em+0x1dc>
    80004fdc:	06048a63          	beqz	s1,80005050 <_ZN20KObjectAllocatorTest5test3Em+0x1b0>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004fe0:	00000913          	li	s2,0
    80004fe4:	0304b783          	ld	a5,48(s1)
    80004fe8:	02f97663          	bgeu	s2,a5,80005014 <_ZN20KObjectAllocatorTest5test3Em+0x174>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004fec:	ffffd097          	auipc	ra,0xffffd
    80004ff0:	b90080e7          	jalr	-1136(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80004ff4:	0284b783          	ld	a5,40(s1)
    80004ff8:	00391713          	slli	a4,s2,0x3
    80004ffc:	00e787b3          	add	a5,a5,a4
    80005000:	0007b583          	ld	a1,0(a5)
    80005004:	ffffd097          	auipc	ra,0xffffd
    80005008:	d04080e7          	jalr	-764(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000500c:	00190913          	addi	s2,s2,1
    80005010:	fd5ff06f          	j	80004fe4 <_ZN20KObjectAllocatorTest5test3Em+0x144>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80005014:	ffffd097          	auipc	ra,0xffffd
    80005018:	b68080e7          	jalr	-1176(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    8000501c:	0284b583          	ld	a1,40(s1)
    80005020:	ffffd097          	auipc	ra,0xffffd
    80005024:	ce8080e7          	jalr	-792(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80005028:	ffffd097          	auipc	ra,0xffffd
    8000502c:	b54080e7          	jalr	-1196(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80005030:	0204b583          	ld	a1,32(s1)
    80005034:	ffffd097          	auipc	ra,0xffffd
    80005038:	cd4080e7          	jalr	-812(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    8000503c:	ffffd097          	auipc	ra,0xffffd
    80005040:	b40080e7          	jalr	-1216(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80005044:	00048593          	mv	a1,s1
    80005048:	ffffd097          	auipc	ra,0xffffd
    8000504c:	cc0080e7          	jalr	-832(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    80005050:	00000513          	li	a0,0
        { delete objAlloc; return false; }
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    }
    delete objAlloc;
    return true;
    80005054:	05010113          	addi	sp,sp,80
    80005058:	7e813083          	ld	ra,2024(sp)
    8000505c:	7e013403          	ld	s0,2016(sp)
    80005060:	7d813483          	ld	s1,2008(sp)
    80005064:	7d013903          	ld	s2,2000(sp)
    80005068:	7c813983          	ld	s3,1992(sp)
    8000506c:	7c013a03          	ld	s4,1984(sp)
    80005070:	7b813a83          	ld	s5,1976(sp)
    80005074:	7f010113          	addi	sp,sp,2032
    80005078:	00008067          	ret
    size_t getMemorySizeForBits() { return memorySizeForBits; }
    8000507c:	0104b703          	ld	a4,16(s1)
    if (objAlloc->getMemorySizeForBits() != 1) { delete objAlloc; return false; }
    80005080:	00100793          	li	a5,1
    80005084:	08f70063          	beq	a4,a5,80005104 <_ZN20KObjectAllocatorTest5test3Em+0x264>
    80005088:	06048a63          	beqz	s1,800050fc <_ZN20KObjectAllocatorTest5test3Em+0x25c>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000508c:	00000913          	li	s2,0
    80005090:	0304b783          	ld	a5,48(s1)
    80005094:	02f97663          	bgeu	s2,a5,800050c0 <_ZN20KObjectAllocatorTest5test3Em+0x220>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80005098:	ffffd097          	auipc	ra,0xffffd
    8000509c:	ae4080e7          	jalr	-1308(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800050a0:	0284b783          	ld	a5,40(s1)
    800050a4:	00391713          	slli	a4,s2,0x3
    800050a8:	00e787b3          	add	a5,a5,a4
    800050ac:	0007b583          	ld	a1,0(a5)
    800050b0:	ffffd097          	auipc	ra,0xffffd
    800050b4:	c58080e7          	jalr	-936(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800050b8:	00190913          	addi	s2,s2,1
    800050bc:	fd5ff06f          	j	80005090 <_ZN20KObjectAllocatorTest5test3Em+0x1f0>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800050c0:	ffffd097          	auipc	ra,0xffffd
    800050c4:	abc080e7          	jalr	-1348(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800050c8:	0284b583          	ld	a1,40(s1)
    800050cc:	ffffd097          	auipc	ra,0xffffd
    800050d0:	c3c080e7          	jalr	-964(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800050d4:	ffffd097          	auipc	ra,0xffffd
    800050d8:	aa8080e7          	jalr	-1368(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800050dc:	0204b583          	ld	a1,32(s1)
    800050e0:	ffffd097          	auipc	ra,0xffffd
    800050e4:	c28080e7          	jalr	-984(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800050e8:	ffffd097          	auipc	ra,0xffffd
    800050ec:	a94080e7          	jalr	-1388(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800050f0:	00048593          	mv	a1,s1
    800050f4:	ffffd097          	auipc	ra,0xffffd
    800050f8:	c14080e7          	jalr	-1004(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    800050fc:	00000513          	li	a0,0
    80005100:	f55ff06f          	j	80005054 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    size_t getObjectSize() { return objectSize; }
    80005104:	0184b783          	ld	a5,24(s1)
    if (objAlloc->getObjectSize() != size) { delete objAlloc; return false; }
    80005108:	08f90063          	beq	s2,a5,80005188 <_ZN20KObjectAllocatorTest5test3Em+0x2e8>
    8000510c:	06048a63          	beqz	s1,80005180 <_ZN20KObjectAllocatorTest5test3Em+0x2e0>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005110:	00000913          	li	s2,0
    80005114:	0304b783          	ld	a5,48(s1)
    80005118:	02f97663          	bgeu	s2,a5,80005144 <_ZN20KObjectAllocatorTest5test3Em+0x2a4>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    8000511c:	ffffd097          	auipc	ra,0xffffd
    80005120:	a60080e7          	jalr	-1440(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80005124:	0284b783          	ld	a5,40(s1)
    80005128:	00391713          	slli	a4,s2,0x3
    8000512c:	00e787b3          	add	a5,a5,a4
    80005130:	0007b583          	ld	a1,0(a5)
    80005134:	ffffd097          	auipc	ra,0xffffd
    80005138:	bd4080e7          	jalr	-1068(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000513c:	00190913          	addi	s2,s2,1
    80005140:	fd5ff06f          	j	80005114 <_ZN20KObjectAllocatorTest5test3Em+0x274>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80005144:	ffffd097          	auipc	ra,0xffffd
    80005148:	a38080e7          	jalr	-1480(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    8000514c:	0284b583          	ld	a1,40(s1)
    80005150:	ffffd097          	auipc	ra,0xffffd
    80005154:	bb8080e7          	jalr	-1096(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80005158:	ffffd097          	auipc	ra,0xffffd
    8000515c:	a24080e7          	jalr	-1500(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80005160:	0204b583          	ld	a1,32(s1)
    80005164:	ffffd097          	auipc	ra,0xffffd
    80005168:	ba4080e7          	jalr	-1116(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    8000516c:	ffffd097          	auipc	ra,0xffffd
    80005170:	a10080e7          	jalr	-1520(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80005174:	00048593          	mv	a1,s1
    80005178:	ffffd097          	auipc	ra,0xffffd
    8000517c:	b90080e7          	jalr	-1136(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    80005180:	00000513          	li	a0,0
    80005184:	ed1ff06f          	j	80005054 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    void* objArr[256]; for (size_t i = 0; i < 32; objArr[i++] = objAlloc->allocateNewObject());
    80005188:	00000913          	li	s2,0
    8000518c:	01f00793          	li	a5,31
    80005190:	0327e663          	bltu	a5,s2,800051bc <_ZN20KObjectAllocatorTest5test3Em+0x31c>
    80005194:	00190a13          	addi	s4,s2,1
    80005198:	00048513          	mv	a0,s1
    8000519c:	00001097          	auipc	ra,0x1
    800051a0:	f24080e7          	jalr	-220(ra) # 800060c0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800051a4:	00391913          	slli	s2,s2,0x3
    800051a8:	fc040793          	addi	a5,s0,-64
    800051ac:	01278933          	add	s2,a5,s2
    800051b0:	80a93023          	sd	a0,-2048(s2)
    800051b4:	000a0913          	mv	s2,s4
    800051b8:	fd5ff06f          	j	8000518c <_ZN20KObjectAllocatorTest5test3Em+0x2ec>
    if (getByteOfObject(objArr[31], objAlloc) != 3
    800051bc:	8b843903          	ld	s2,-1864(s0)
    800051c0:	00048613          	mv	a2,s1
    800051c4:	00090593          	mv	a1,s2
    800051c8:	00098513          	mv	a0,s3
    800051cc:	ffffe097          	auipc	ra,0xffffe
    800051d0:	fc0080e7          	jalr	-64(ra) # 8000318c <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[31], objAlloc) != 0)
    800051d4:	00300793          	li	a5,3
    800051d8:	02f50e63          	beq	a0,a5,80005214 <_ZN20KObjectAllocatorTest5test3Em+0x374>
    { delete objAlloc; return false; }
    800051dc:	0c048863          	beqz	s1,800052ac <_ZN20KObjectAllocatorTest5test3Em+0x40c>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800051e0:	00000913          	li	s2,0
    800051e4:	0304b783          	ld	a5,48(s1)
    800051e8:	08f97463          	bgeu	s2,a5,80005270 <_ZN20KObjectAllocatorTest5test3Em+0x3d0>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800051ec:	ffffd097          	auipc	ra,0xffffd
    800051f0:	990080e7          	jalr	-1648(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800051f4:	0284b783          	ld	a5,40(s1)
    800051f8:	00391713          	slli	a4,s2,0x3
    800051fc:	00e787b3          	add	a5,a5,a4
    80005200:	0007b583          	ld	a1,0(a5)
    80005204:	ffffd097          	auipc	ra,0xffffd
    80005208:	b04080e7          	jalr	-1276(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000520c:	00190913          	addi	s2,s2,1
    80005210:	fd5ff06f          	j	800051e4 <_ZN20KObjectAllocatorTest5test3Em+0x344>
        || getBitOfObject(objArr[31], objAlloc) != 0)
    80005214:	00048613          	mv	a2,s1
    80005218:	00090593          	mv	a1,s2
    8000521c:	00098513          	mv	a0,s3
    80005220:	ffffe097          	auipc	ra,0xffffe
    80005224:	fec080e7          	jalr	-20(ra) # 8000320c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80005228:	00050a93          	mv	s5,a0
    8000522c:	fa0518e3          	bnez	a0,800051dc <_ZN20KObjectAllocatorTest5test3Em+0x33c>
    if (objAlloc->nextNonTakenByte != 4) { delete objAlloc; return false; }
    80005230:	0384b703          	ld	a4,56(s1)
    80005234:	00400793          	li	a5,4
    80005238:	06f71e63          	bne	a4,a5,800052b4 <_ZN20KObjectAllocatorTest5test3Em+0x414>
    for (size_t i = 32; i < 256; objArr[i++] = objAlloc->allocateNewObject());
    8000523c:	02000913          	li	s2,32
    80005240:	0ff00793          	li	a5,255
    80005244:	0f27e463          	bltu	a5,s2,8000532c <_ZN20KObjectAllocatorTest5test3Em+0x48c>
    80005248:	00190a13          	addi	s4,s2,1
    8000524c:	00048513          	mv	a0,s1
    80005250:	00001097          	auipc	ra,0x1
    80005254:	e70080e7          	jalr	-400(ra) # 800060c0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80005258:	00391913          	slli	s2,s2,0x3
    8000525c:	fc040793          	addi	a5,s0,-64
    80005260:	01278933          	add	s2,a5,s2
    80005264:	80a93023          	sd	a0,-2048(s2)
    80005268:	000a0913          	mv	s2,s4
    8000526c:	fd5ff06f          	j	80005240 <_ZN20KObjectAllocatorTest5test3Em+0x3a0>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80005270:	ffffd097          	auipc	ra,0xffffd
    80005274:	90c080e7          	jalr	-1780(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80005278:	0284b583          	ld	a1,40(s1)
    8000527c:	ffffd097          	auipc	ra,0xffffd
    80005280:	a8c080e7          	jalr	-1396(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80005284:	ffffd097          	auipc	ra,0xffffd
    80005288:	8f8080e7          	jalr	-1800(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    8000528c:	0204b583          	ld	a1,32(s1)
    80005290:	ffffd097          	auipc	ra,0xffffd
    80005294:	a78080e7          	jalr	-1416(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80005298:	ffffd097          	auipc	ra,0xffffd
    8000529c:	8e4080e7          	jalr	-1820(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800052a0:	00048593          	mv	a1,s1
    800052a4:	ffffd097          	auipc	ra,0xffffd
    800052a8:	a64080e7          	jalr	-1436(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    { delete objAlloc; return false; }
    800052ac:	00000513          	li	a0,0
    800052b0:	da5ff06f          	j	80005054 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    if (objAlloc->nextNonTakenByte != 4) { delete objAlloc; return false; }
    800052b4:	02049663          	bnez	s1,800052e0 <_ZN20KObjectAllocatorTest5test3Em+0x440>
    800052b8:	06c0006f          	j	80005324 <_ZN20KObjectAllocatorTest5test3Em+0x484>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800052bc:	ffffd097          	auipc	ra,0xffffd
    800052c0:	8c0080e7          	jalr	-1856(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800052c4:	0284b783          	ld	a5,40(s1)
    800052c8:	003a9713          	slli	a4,s5,0x3
    800052cc:	00e787b3          	add	a5,a5,a4
    800052d0:	0007b583          	ld	a1,0(a5)
    800052d4:	ffffd097          	auipc	ra,0xffffd
    800052d8:	a34080e7          	jalr	-1484(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800052dc:	001a8a93          	addi	s5,s5,1
    800052e0:	0304b783          	ld	a5,48(s1)
    800052e4:	fcfaece3          	bltu	s5,a5,800052bc <_ZN20KObjectAllocatorTest5test3Em+0x41c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800052e8:	ffffd097          	auipc	ra,0xffffd
    800052ec:	894080e7          	jalr	-1900(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    800052f0:	0284b583          	ld	a1,40(s1)
    800052f4:	ffffd097          	auipc	ra,0xffffd
    800052f8:	a14080e7          	jalr	-1516(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800052fc:	ffffd097          	auipc	ra,0xffffd
    80005300:	880080e7          	jalr	-1920(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80005304:	0204b583          	ld	a1,32(s1)
    80005308:	ffffd097          	auipc	ra,0xffffd
    8000530c:	a00080e7          	jalr	-1536(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80005310:	ffffd097          	auipc	ra,0xffffd
    80005314:	86c080e7          	jalr	-1940(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80005318:	00048593          	mv	a1,s1
    8000531c:	ffffd097          	auipc	ra,0xffffd
    80005320:	9ec080e7          	jalr	-1556(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    80005324:	00000513          	li	a0,0
    80005328:	d2dff06f          	j	80005054 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    if (objAlloc->nextNonTakenByte != 32) { delete objAlloc; return false; }
    8000532c:	0384b703          	ld	a4,56(s1)
    80005330:	02000793          	li	a5,32
    80005334:	06f70e63          	beq	a4,a5,800053b0 <_ZN20KObjectAllocatorTest5test3Em+0x510>
    80005338:	06048863          	beqz	s1,800053a8 <_ZN20KObjectAllocatorTest5test3Em+0x508>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000533c:	0304b783          	ld	a5,48(s1)
    80005340:	02faf663          	bgeu	s5,a5,8000536c <_ZN20KObjectAllocatorTest5test3Em+0x4cc>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80005344:	ffffd097          	auipc	ra,0xffffd
    80005348:	838080e7          	jalr	-1992(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    8000534c:	0284b783          	ld	a5,40(s1)
    80005350:	003a9713          	slli	a4,s5,0x3
    80005354:	00e787b3          	add	a5,a5,a4
    80005358:	0007b583          	ld	a1,0(a5)
    8000535c:	ffffd097          	auipc	ra,0xffffd
    80005360:	9ac080e7          	jalr	-1620(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005364:	001a8a93          	addi	s5,s5,1
    80005368:	fd5ff06f          	j	8000533c <_ZN20KObjectAllocatorTest5test3Em+0x49c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    8000536c:	ffffd097          	auipc	ra,0xffffd
    80005370:	810080e7          	jalr	-2032(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80005374:	0284b583          	ld	a1,40(s1)
    80005378:	ffffd097          	auipc	ra,0xffffd
    8000537c:	990080e7          	jalr	-1648(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80005380:	ffffc097          	auipc	ra,0xffffc
    80005384:	7fc080e7          	jalr	2044(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80005388:	0204b583          	ld	a1,32(s1)
    8000538c:	ffffd097          	auipc	ra,0xffffd
    80005390:	97c080e7          	jalr	-1668(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80005394:	ffffc097          	auipc	ra,0xffffc
    80005398:	7e8080e7          	jalr	2024(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    8000539c:	00048593          	mv	a1,s1
    800053a0:	ffffd097          	auipc	ra,0xffffd
    800053a4:	968080e7          	jalr	-1688(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    800053a8:	00000513          	li	a0,0
    800053ac:	ca9ff06f          	j	80005054 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    objAlloc->freeObject(objArr[7 * 8]);
    800053b0:	98043583          	ld	a1,-1664(s0)
    800053b4:	00048513          	mv	a0,s1
    800053b8:	00001097          	auipc	ra,0x1
    800053bc:	a88080e7          	jalr	-1400(ra) # 80005e40 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[7 * 8] = objAlloc->allocateNewObject();
    800053c0:	00048513          	mv	a0,s1
    800053c4:	00001097          	auipc	ra,0x1
    800053c8:	cfc080e7          	jalr	-772(ra) # 800060c0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800053cc:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[7 * 8], objAlloc) != 7
    800053d0:	00048613          	mv	a2,s1
    800053d4:	00050593          	mv	a1,a0
    800053d8:	00098513          	mv	a0,s3
    800053dc:	ffffe097          	auipc	ra,0xffffe
    800053e0:	db0080e7          	jalr	-592(ra) # 8000318c <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[7 * 8], objAlloc) != 7)
    800053e4:	00700793          	li	a5,7
    800053e8:	02f50c63          	beq	a0,a5,80005420 <_ZN20KObjectAllocatorTest5test3Em+0x580>
    { delete objAlloc; return false; }
    800053ec:	0a048663          	beqz	s1,80005498 <_ZN20KObjectAllocatorTest5test3Em+0x5f8>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800053f0:	0304b783          	ld	a5,48(s1)
    800053f4:	06faf463          	bgeu	s5,a5,8000545c <_ZN20KObjectAllocatorTest5test3Em+0x5bc>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800053f8:	ffffc097          	auipc	ra,0xffffc
    800053fc:	784080e7          	jalr	1924(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80005400:	0284b783          	ld	a5,40(s1)
    80005404:	003a9713          	slli	a4,s5,0x3
    80005408:	00e787b3          	add	a5,a5,a4
    8000540c:	0007b583          	ld	a1,0(a5)
    80005410:	ffffd097          	auipc	ra,0xffffd
    80005414:	8f8080e7          	jalr	-1800(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005418:	001a8a93          	addi	s5,s5,1
    8000541c:	fd5ff06f          	j	800053f0 <_ZN20KObjectAllocatorTest5test3Em+0x550>
        || getBitOfObject(objArr[7 * 8], objAlloc) != 7)
    80005420:	00048613          	mv	a2,s1
    80005424:	00090593          	mv	a1,s2
    80005428:	00098513          	mv	a0,s3
    8000542c:	ffffe097          	auipc	ra,0xffffe
    80005430:	de0080e7          	jalr	-544(ra) # 8000320c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80005434:	00700793          	li	a5,7
    80005438:	faf51ae3          	bne	a0,a5,800053ec <_ZN20KObjectAllocatorTest5test3Em+0x54c>
    if (objAlloc->nextNonTakenByte != 7) { delete objAlloc; return false; }
    8000543c:	0384b703          	ld	a4,56(s1)
    80005440:	06f70063          	beq	a4,a5,800054a0 <_ZN20KObjectAllocatorTest5test3Em+0x600>
    80005444:	00048863          	beqz	s1,80005454 <_ZN20KObjectAllocatorTest5test3Em+0x5b4>
    80005448:	00048513          	mv	a0,s1
    8000544c:	00000097          	auipc	ra,0x0
    80005450:	5ac080e7          	jalr	1452(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    80005454:	00000513          	li	a0,0
    80005458:	bfdff06f          	j	80005054 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    8000545c:	ffffc097          	auipc	ra,0xffffc
    80005460:	720080e7          	jalr	1824(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80005464:	0284b583          	ld	a1,40(s1)
    80005468:	ffffd097          	auipc	ra,0xffffd
    8000546c:	8a0080e7          	jalr	-1888(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80005470:	ffffc097          	auipc	ra,0xffffc
    80005474:	70c080e7          	jalr	1804(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80005478:	0204b583          	ld	a1,32(s1)
    8000547c:	ffffd097          	auipc	ra,0xffffd
    80005480:	88c080e7          	jalr	-1908(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80005484:	ffffc097          	auipc	ra,0xffffc
    80005488:	6f8080e7          	jalr	1784(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    8000548c:	00048593          	mv	a1,s1
    80005490:	ffffd097          	auipc	ra,0xffffd
    80005494:	878080e7          	jalr	-1928(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    { delete objAlloc; return false; }
    80005498:	00000513          	li	a0,0
    8000549c:	bb9ff06f          	j	80005054 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    objAlloc->freeObject(objArr[6 * 8 + 3]);
    800054a0:	95843583          	ld	a1,-1704(s0)
    800054a4:	00048513          	mv	a0,s1
    800054a8:	00001097          	auipc	ra,0x1
    800054ac:	998080e7          	jalr	-1640(ra) # 80005e40 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[7 * 8 + 4]);
    800054b0:	9a043583          	ld	a1,-1632(s0)
    800054b4:	00048513          	mv	a0,s1
    800054b8:	00001097          	auipc	ra,0x1
    800054bc:	988080e7          	jalr	-1656(ra) # 80005e40 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[31 * 8 + 5]);
    800054c0:	fa843583          	ld	a1,-88(s0)
    800054c4:	00048513          	mv	a0,s1
    800054c8:	00001097          	auipc	ra,0x1
    800054cc:	978080e7          	jalr	-1672(ra) # 80005e40 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[7 * 8 + 4] = objAlloc->allocateNewObject();
    800054d0:	00048513          	mv	a0,s1
    800054d4:	00001097          	auipc	ra,0x1
    800054d8:	bec080e7          	jalr	-1044(ra) # 800060c0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800054dc:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[7 * 8 + 4], objAlloc) != 7
    800054e0:	00048613          	mv	a2,s1
    800054e4:	00050593          	mv	a1,a0
    800054e8:	00098513          	mv	a0,s3
    800054ec:	ffffe097          	auipc	ra,0xffffe
    800054f0:	ca0080e7          	jalr	-864(ra) # 8000318c <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[7 * 8 + 4], objAlloc) != 3)
    800054f4:	00700793          	li	a5,7
    800054f8:	00f50e63          	beq	a0,a5,80005514 <_ZN20KObjectAllocatorTest5test3Em+0x674>
    { delete objAlloc; return false; }
    800054fc:	00048863          	beqz	s1,8000550c <_ZN20KObjectAllocatorTest5test3Em+0x66c>
    80005500:	00048513          	mv	a0,s1
    80005504:	00000097          	auipc	ra,0x0
    80005508:	4f4080e7          	jalr	1268(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    8000550c:	00000513          	li	a0,0
    80005510:	b45ff06f          	j	80005054 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        || getBitOfObject(objArr[7 * 8 + 4], objAlloc) != 3)
    80005514:	00048613          	mv	a2,s1
    80005518:	00090593          	mv	a1,s2
    8000551c:	00098513          	mv	a0,s3
    80005520:	ffffe097          	auipc	ra,0xffffe
    80005524:	cec080e7          	jalr	-788(ra) # 8000320c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80005528:	00300793          	li	a5,3
    8000552c:	fcf518e3          	bne	a0,a5,800054fc <_ZN20KObjectAllocatorTest5test3Em+0x65c>
    if (objAlloc->nextNonTakenByte != 7) { delete objAlloc; return false; }
    80005530:	0384b703          	ld	a4,56(s1)
    80005534:	00700793          	li	a5,7
    80005538:	00f70e63          	beq	a4,a5,80005554 <_ZN20KObjectAllocatorTest5test3Em+0x6b4>
    8000553c:	00048863          	beqz	s1,8000554c <_ZN20KObjectAllocatorTest5test3Em+0x6ac>
    80005540:	00048513          	mv	a0,s1
    80005544:	00000097          	auipc	ra,0x0
    80005548:	4b4080e7          	jalr	1204(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    8000554c:	00000513          	li	a0,0
    80005550:	b05ff06f          	j	80005054 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    objAlloc->freeObject(objArr[3 * 8 + 5]);
    80005554:	8a843583          	ld	a1,-1880(s0)
    80005558:	00048513          	mv	a0,s1
    8000555c:	00001097          	auipc	ra,0x1
    80005560:	8e4080e7          	jalr	-1820(ra) # 80005e40 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[31 * 8 + 5] = objAlloc->allocateNewObject();
    80005564:	00048513          	mv	a0,s1
    80005568:	00001097          	auipc	ra,0x1
    8000556c:	b58080e7          	jalr	-1192(ra) # 800060c0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80005570:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[31 * 8 + 5], objAlloc) != 31
    80005574:	00048613          	mv	a2,s1
    80005578:	00050593          	mv	a1,a0
    8000557c:	00098513          	mv	a0,s3
    80005580:	ffffe097          	auipc	ra,0xffffe
    80005584:	c0c080e7          	jalr	-1012(ra) # 8000318c <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[31 * 8 + 5], objAlloc) != 2)
    80005588:	01f00793          	li	a5,31
    8000558c:	00f50e63          	beq	a0,a5,800055a8 <_ZN20KObjectAllocatorTest5test3Em+0x708>
    { delete objAlloc; return false; }
    80005590:	00048863          	beqz	s1,800055a0 <_ZN20KObjectAllocatorTest5test3Em+0x700>
    80005594:	00048513          	mv	a0,s1
    80005598:	00000097          	auipc	ra,0x0
    8000559c:	460080e7          	jalr	1120(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    800055a0:	00000513          	li	a0,0
    800055a4:	ab1ff06f          	j	80005054 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        || getBitOfObject(objArr[31 * 8 + 5], objAlloc) != 2)
    800055a8:	00048613          	mv	a2,s1
    800055ac:	00090593          	mv	a1,s2
    800055b0:	00098513          	mv	a0,s3
    800055b4:	ffffe097          	auipc	ra,0xffffe
    800055b8:	c58080e7          	jalr	-936(ra) # 8000320c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800055bc:	00200793          	li	a5,2
    800055c0:	fcf518e3          	bne	a0,a5,80005590 <_ZN20KObjectAllocatorTest5test3Em+0x6f0>
    if (objAlloc->nextNonTakenByte != 31) { delete objAlloc; return false; }
    800055c4:	0384b703          	ld	a4,56(s1)
    800055c8:	01f00793          	li	a5,31
    800055cc:	00f70e63          	beq	a4,a5,800055e8 <_ZN20KObjectAllocatorTest5test3Em+0x748>
    800055d0:	00048863          	beqz	s1,800055e0 <_ZN20KObjectAllocatorTest5test3Em+0x740>
    800055d4:	00048513          	mv	a0,s1
    800055d8:	00000097          	auipc	ra,0x0
    800055dc:	420080e7          	jalr	1056(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    800055e0:	00000513          	li	a0,0
    800055e4:	a71ff06f          	j	80005054 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    objArr[3 * 8 + 5] = objAlloc->allocateNewObject();
    800055e8:	00048513          	mv	a0,s1
    800055ec:	00001097          	auipc	ra,0x1
    800055f0:	ad4080e7          	jalr	-1324(ra) # 800060c0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800055f4:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[3 * 8 + 5], objAlloc) != 3 || getBitOfObject(objArr[3 * 8 + 5], objAlloc) != 2)
    800055f8:	00048613          	mv	a2,s1
    800055fc:	00050593          	mv	a1,a0
    80005600:	00098513          	mv	a0,s3
    80005604:	ffffe097          	auipc	ra,0xffffe
    80005608:	b88080e7          	jalr	-1144(ra) # 8000318c <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    8000560c:	00300793          	li	a5,3
    80005610:	02f50463          	beq	a0,a5,80005638 <_ZN20KObjectAllocatorTest5test3Em+0x798>
        if (objAlloc->nextNonTakenByte != 3) { delete objAlloc; return false; }
    80005614:	0384b703          	ld	a4,56(s1)
    80005618:	00300793          	li	a5,3
    8000561c:	02f70c63          	beq	a4,a5,80005654 <_ZN20KObjectAllocatorTest5test3Em+0x7b4>
    80005620:	00048863          	beqz	s1,80005630 <_ZN20KObjectAllocatorTest5test3Em+0x790>
    80005624:	00048513          	mv	a0,s1
    80005628:	00000097          	auipc	ra,0x0
    8000562c:	3d0080e7          	jalr	976(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    80005630:	00000513          	li	a0,0
    80005634:	a21ff06f          	j	80005054 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    if (getByteOfObject(objArr[3 * 8 + 5], objAlloc) != 3 || getBitOfObject(objArr[3 * 8 + 5], objAlloc) != 2)
    80005638:	00048613          	mv	a2,s1
    8000563c:	00090593          	mv	a1,s2
    80005640:	00098513          	mv	a0,s3
    80005644:	ffffe097          	auipc	ra,0xffffe
    80005648:	bc8080e7          	jalr	-1080(ra) # 8000320c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    8000564c:	00200793          	li	a5,2
    80005650:	fcf512e3          	bne	a0,a5,80005614 <_ZN20KObjectAllocatorTest5test3Em+0x774>
    objArr[6 * 8 + 3] = objAlloc->allocateNewObject();
    80005654:	00048513          	mv	a0,s1
    80005658:	00001097          	auipc	ra,0x1
    8000565c:	a68080e7          	jalr	-1432(ra) # 800060c0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80005660:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[6 * 8 + 3], objAlloc) != 6
    80005664:	00048613          	mv	a2,s1
    80005668:	00050593          	mv	a1,a0
    8000566c:	00098513          	mv	a0,s3
    80005670:	ffffe097          	auipc	ra,0xffffe
    80005674:	b1c080e7          	jalr	-1252(ra) # 8000318c <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[6 * 8 + 3], objAlloc) != 4)
    80005678:	00600793          	li	a5,6
    8000567c:	00f50e63          	beq	a0,a5,80005698 <_ZN20KObjectAllocatorTest5test3Em+0x7f8>
    { delete objAlloc; return false; }
    80005680:	00048863          	beqz	s1,80005690 <_ZN20KObjectAllocatorTest5test3Em+0x7f0>
    80005684:	00048513          	mv	a0,s1
    80005688:	00000097          	auipc	ra,0x0
    8000568c:	370080e7          	jalr	880(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    80005690:	00000513          	li	a0,0
    80005694:	9c1ff06f          	j	80005054 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        || getBitOfObject(objArr[6 * 8 + 3], objAlloc) != 4)
    80005698:	00048613          	mv	a2,s1
    8000569c:	00090593          	mv	a1,s2
    800056a0:	00098513          	mv	a0,s3
    800056a4:	ffffe097          	auipc	ra,0xffffe
    800056a8:	b68080e7          	jalr	-1176(ra) # 8000320c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800056ac:	00400793          	li	a5,4
    800056b0:	fcf518e3          	bne	a0,a5,80005680 <_ZN20KObjectAllocatorTest5test3Em+0x7e0>
    if (objAlloc->nextNonTakenByte != 6) { delete objAlloc; return false; }
    800056b4:	0384b703          	ld	a4,56(s1)
    800056b8:	00600793          	li	a5,6
    800056bc:	0ef71863          	bne	a4,a5,800057ac <_ZN20KObjectAllocatorTest5test3Em+0x90c>
    for (int i = 0; i < 3; ++i) {
    800056c0:	00000a13          	li	s4,0
    800056c4:	00200793          	li	a5,2
    800056c8:	1547ce63          	blt	a5,s4,80005824 <_ZN20KObjectAllocatorTest5test3Em+0x984>
        objAlloc->freeObject(objArr[255]);
    800056cc:	fb843583          	ld	a1,-72(s0)
    800056d0:	00048513          	mv	a0,s1
    800056d4:	00000097          	auipc	ra,0x0
    800056d8:	76c080e7          	jalr	1900(ra) # 80005e40 <_ZN16KObjectAllocator10freeObjectEPv>
        objArr[255] = objAlloc->allocateNewObject();
    800056dc:	00048513          	mv	a0,s1
    800056e0:	00001097          	auipc	ra,0x1
    800056e4:	9e0080e7          	jalr	-1568(ra) # 800060c0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800056e8:	00050913          	mv	s2,a0
    800056ec:	faa43c23          	sd	a0,-72(s0)
        if (getByteOfObject(objArr[255], objAlloc) != 31
    800056f0:	00048613          	mv	a2,s1
    800056f4:	00050593          	mv	a1,a0
    800056f8:	00098513          	mv	a0,s3
    800056fc:	ffffe097          	auipc	ra,0xffffe
    80005700:	a90080e7          	jalr	-1392(ra) # 8000318c <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
            || getBitOfObject(objArr[255], objAlloc) != 0)
    80005704:	01f00793          	li	a5,31
    80005708:	0af51e63          	bne	a0,a5,800057c4 <_ZN20KObjectAllocatorTest5test3Em+0x924>
    8000570c:	00048613          	mv	a2,s1
    80005710:	00090593          	mv	a1,s2
    80005714:	00098513          	mv	a0,s3
    80005718:	ffffe097          	auipc	ra,0xffffe
    8000571c:	af4080e7          	jalr	-1292(ra) # 8000320c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80005720:	0a051263          	bnez	a0,800057c4 <_ZN20KObjectAllocatorTest5test3Em+0x924>
        if (objAlloc->nextNonTakenByte != 32) { delete objAlloc; return false; }
    80005724:	0384b703          	ld	a4,56(s1)
    80005728:	02000793          	li	a5,32
    8000572c:	0af71863          	bne	a4,a5,800057dc <_ZN20KObjectAllocatorTest5test3Em+0x93c>
        objAlloc->freeObject(objArr[1]);
    80005730:	fffffab7          	lui	s5,0xfffff
    80005734:	7c8a8793          	addi	a5,s5,1992 # fffffffffffff7c8 <end+0xffffffff7fff3d78>
    80005738:	008787b3          	add	a5,a5,s0
    8000573c:	0007b583          	ld	a1,0(a5)
    80005740:	00048513          	mv	a0,s1
    80005744:	00000097          	auipc	ra,0x0
    80005748:	6fc080e7          	jalr	1788(ra) # 80005e40 <_ZN16KObjectAllocator10freeObjectEPv>
        objArr[1] = objAlloc->allocateNewObject();
    8000574c:	00048513          	mv	a0,s1
    80005750:	00001097          	auipc	ra,0x1
    80005754:	970080e7          	jalr	-1680(ra) # 800060c0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80005758:	00050913          	mv	s2,a0
    8000575c:	7c8a8793          	addi	a5,s5,1992
    80005760:	008787b3          	add	a5,a5,s0
    80005764:	00a7b023          	sd	a0,0(a5)
        if (getByteOfObject(objArr[1], objAlloc) != 0
    80005768:	00048613          	mv	a2,s1
    8000576c:	00050593          	mv	a1,a0
    80005770:	00098513          	mv	a0,s3
    80005774:	ffffe097          	auipc	ra,0xffffe
    80005778:	a18080e7          	jalr	-1512(ra) # 8000318c <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
            || getBitOfObject(objArr[1], objAlloc) != 6)
    8000577c:	06051c63          	bnez	a0,800057f4 <_ZN20KObjectAllocatorTest5test3Em+0x954>
    80005780:	00048613          	mv	a2,s1
    80005784:	00090593          	mv	a1,s2
    80005788:	00098513          	mv	a0,s3
    8000578c:	ffffe097          	auipc	ra,0xffffe
    80005790:	a80080e7          	jalr	-1408(ra) # 8000320c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80005794:	00600793          	li	a5,6
    80005798:	04f51e63          	bne	a0,a5,800057f4 <_ZN20KObjectAllocatorTest5test3Em+0x954>
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    8000579c:	0384b783          	ld	a5,56(s1)
    800057a0:	06079663          	bnez	a5,8000580c <_ZN20KObjectAllocatorTest5test3Em+0x96c>
    for (int i = 0; i < 3; ++i) {
    800057a4:	001a0a1b          	addiw	s4,s4,1
    800057a8:	f1dff06f          	j	800056c4 <_ZN20KObjectAllocatorTest5test3Em+0x824>
    if (objAlloc->nextNonTakenByte != 6) { delete objAlloc; return false; }
    800057ac:	00048863          	beqz	s1,800057bc <_ZN20KObjectAllocatorTest5test3Em+0x91c>
    800057b0:	00048513          	mv	a0,s1
    800057b4:	00000097          	auipc	ra,0x0
    800057b8:	244080e7          	jalr	580(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    800057bc:	00000513          	li	a0,0
    800057c0:	895ff06f          	j	80005054 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        { delete objAlloc; return false; }
    800057c4:	00048863          	beqz	s1,800057d4 <_ZN20KObjectAllocatorTest5test3Em+0x934>
    800057c8:	00048513          	mv	a0,s1
    800057cc:	00000097          	auipc	ra,0x0
    800057d0:	22c080e7          	jalr	556(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    800057d4:	00000513          	li	a0,0
    800057d8:	87dff06f          	j	80005054 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        if (objAlloc->nextNonTakenByte != 32) { delete objAlloc; return false; }
    800057dc:	00048863          	beqz	s1,800057ec <_ZN20KObjectAllocatorTest5test3Em+0x94c>
    800057e0:	00048513          	mv	a0,s1
    800057e4:	00000097          	auipc	ra,0x0
    800057e8:	214080e7          	jalr	532(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    800057ec:	00000513          	li	a0,0
    800057f0:	865ff06f          	j	80005054 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        { delete objAlloc; return false; }
    800057f4:	00048863          	beqz	s1,80005804 <_ZN20KObjectAllocatorTest5test3Em+0x964>
    800057f8:	00048513          	mv	a0,s1
    800057fc:	00000097          	auipc	ra,0x0
    80005800:	1fc080e7          	jalr	508(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    80005804:	00000513          	li	a0,0
    80005808:	84dff06f          	j	80005054 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    8000580c:	00048863          	beqz	s1,8000581c <_ZN20KObjectAllocatorTest5test3Em+0x97c>
    80005810:	00048513          	mv	a0,s1
    80005814:	00000097          	auipc	ra,0x0
    80005818:	1e4080e7          	jalr	484(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    8000581c:	00000513          	li	a0,0
    80005820:	835ff06f          	j	80005054 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    delete objAlloc;
    80005824:	00048c63          	beqz	s1,8000583c <_ZN20KObjectAllocatorTest5test3Em+0x99c>
    80005828:	00048513          	mv	a0,s1
    8000582c:	00000097          	auipc	ra,0x0
    80005830:	1cc080e7          	jalr	460(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    return true;
    80005834:	00100513          	li	a0,1
    80005838:	81dff06f          	j	80005054 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    8000583c:	00100513          	li	a0,1
    80005840:	815ff06f          	j	80005054 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    80005844:	00050913          	mv	s2,a0
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 5);
    80005848:	00048513          	mv	a0,s1
    8000584c:	00000097          	auipc	ra,0x0
    80005850:	1ac080e7          	jalr	428(ra) # 800059f8 <_ZN16KObjectAllocatordlEPv>
    80005854:	00090513          	mv	a0,s2
    80005858:	00006097          	auipc	ra,0x6
    8000585c:	050080e7          	jalr	80(ra) # 8000b8a8 <_Unwind_Resume>

0000000080005860 <_ZN20KObjectAllocatorTest4testEmm>:
bool KObjectAllocatorTest::test(size_t i, size_t size) {
    80005860:	ff010113          	addi	sp,sp,-16
    80005864:	00113423          	sd	ra,8(sp)
    80005868:	00813023          	sd	s0,0(sp)
    8000586c:	01010413          	addi	s0,sp,16
    80005870:	00058793          	mv	a5,a1
    80005874:	00060593          	mv	a1,a2
    switch (i) {
    80005878:	00200713          	li	a4,2
    8000587c:	04e78e63          	beq	a5,a4,800058d8 <_ZN20KObjectAllocatorTest4testEmm+0x78>
    80005880:	02f76263          	bltu	a4,a5,800058a4 <_ZN20KObjectAllocatorTest4testEmm+0x44>
    80005884:	04078463          	beqz	a5,800058cc <_ZN20KObjectAllocatorTest4testEmm+0x6c>
    80005888:	00100713          	li	a4,1
    8000588c:	00e79863          	bne	a5,a4,8000589c <_ZN20KObjectAllocatorTest4testEmm+0x3c>
        case 1: return test1(size); break;
    80005890:	ffffe097          	auipc	ra,0xffffe
    80005894:	350080e7          	jalr	848(ra) # 80003be0 <_ZN20KObjectAllocatorTest5test1Em>
    80005898:	0240006f          	j	800058bc <_ZN20KObjectAllocatorTest4testEmm+0x5c>
    switch (i) {
    8000589c:	00000513          	li	a0,0
    800058a0:	01c0006f          	j	800058bc <_ZN20KObjectAllocatorTest4testEmm+0x5c>
    800058a4:	00300713          	li	a4,3
    800058a8:	00e79863          	bne	a5,a4,800058b8 <_ZN20KObjectAllocatorTest4testEmm+0x58>
        case 3: return test3(size); break;
    800058ac:	fffff097          	auipc	ra,0xfffff
    800058b0:	5f4080e7          	jalr	1524(ra) # 80004ea0 <_ZN20KObjectAllocatorTest5test3Em>
    800058b4:	0080006f          	j	800058bc <_ZN20KObjectAllocatorTest4testEmm+0x5c>
    switch (i) {
    800058b8:	00000513          	li	a0,0
}
    800058bc:	00813083          	ld	ra,8(sp)
    800058c0:	00013403          	ld	s0,0(sp)
    800058c4:	01010113          	addi	sp,sp,16
    800058c8:	00008067          	ret
        case 0: return test0(size); break;
    800058cc:	ffffe097          	auipc	ra,0xffffe
    800058d0:	a54080e7          	jalr	-1452(ra) # 80003320 <_ZN20KObjectAllocatorTest5test0Em>
    800058d4:	fe9ff06f          	j	800058bc <_ZN20KObjectAllocatorTest4testEmm+0x5c>
        case 2: return test2(size); break;
    800058d8:	fffff097          	auipc	ra,0xfffff
    800058dc:	d00080e7          	jalr	-768(ra) # 800045d8 <_ZN20KObjectAllocatorTest5test2Em>
    800058e0:	fddff06f          	j	800058bc <_ZN20KObjectAllocatorTest4testEmm+0x5c>

00000000800058e4 <_ZN20KObjectAllocatorTest8runTestsEv>:
bool KObjectAllocatorTest::runTests() {
    800058e4:	fb010113          	addi	sp,sp,-80
    800058e8:	04113423          	sd	ra,72(sp)
    800058ec:	04813023          	sd	s0,64(sp)
    800058f0:	02913c23          	sd	s1,56(sp)
    800058f4:	03213823          	sd	s2,48(sp)
    800058f8:	03313423          	sd	s3,40(sp)
    800058fc:	03413023          	sd	s4,32(sp)
    80005900:	01513c23          	sd	s5,24(sp)
    80005904:	01613823          	sd	s6,16(sp)
    80005908:	01713423          	sd	s7,8(sp)
    8000590c:	05010413          	addi	s0,sp,80
    80005910:	00050a13          	mv	s4,a0
    for (size_t size : sizes)
    80005914:	00850b13          	addi	s6,a0,8
    80005918:	04050b93          	addi	s7,a0,64
    size_t testCnt = 0;
    8000591c:	00000993          	li	s3,0
    for (size_t size : sizes)
    80005920:	0d7b0863          	beq	s6,s7,800059f0 <_ZN20KObjectAllocatorTest8runTestsEv+0x10c>
    80005924:	000b3a83          	ld	s5,0(s6)
    for (size_t i = 0; i < numberOfTests; ++i) {
    80005928:	00000493          	li	s1,0
    8000592c:	0740006f          	j	800059a0 <_ZN20KObjectAllocatorTest8runTestsEv+0xbc>
            printString("Failed KObjectAllocator test ");
    80005930:	00004517          	auipc	a0,0x4
    80005934:	c2050513          	addi	a0,a0,-992 # 80009550 <CONSOLE_STATUS+0x540>
    80005938:	00001097          	auipc	ra,0x1
    8000593c:	b6c080e7          	jalr	-1172(ra) # 800064a4 <_Z11printStringPKc>
            printInteger(i); printString("\n"); return false;
    80005940:	00048513          	mv	a0,s1
    80005944:	00001097          	auipc	ra,0x1
    80005948:	bd0080e7          	jalr	-1072(ra) # 80006514 <_Z12printIntegerm>
    8000594c:	00003517          	auipc	a0,0x3
    80005950:	7d450513          	addi	a0,a0,2004 # 80009120 <CONSOLE_STATUS+0x110>
    80005954:	00001097          	auipc	ra,0x1
    80005958:	b50080e7          	jalr	-1200(ra) # 800064a4 <_Z11printStringPKc>
}
    8000595c:	00090513          	mv	a0,s2
    80005960:	04813083          	ld	ra,72(sp)
    80005964:	04013403          	ld	s0,64(sp)
    80005968:	03813483          	ld	s1,56(sp)
    8000596c:	03013903          	ld	s2,48(sp)
    80005970:	02813983          	ld	s3,40(sp)
    80005974:	02013a03          	ld	s4,32(sp)
    80005978:	01813a83          	ld	s5,24(sp)
    8000597c:	01013b03          	ld	s6,16(sp)
    80005980:	00813b83          	ld	s7,8(sp)
    80005984:	05010113          	addi	sp,sp,80
    80005988:	00008067          	ret
        if (testCnt % 10 == 0) printString("\n");
    8000598c:	00003517          	auipc	a0,0x3
    80005990:	79450513          	addi	a0,a0,1940 # 80009120 <CONSOLE_STATUS+0x110>
    80005994:	00001097          	auipc	ra,0x1
    80005998:	b10080e7          	jalr	-1264(ra) # 800064a4 <_Z11printStringPKc>
    for (size_t i = 0; i < numberOfTests; ++i) {
    8000599c:	00148493          	addi	s1,s1,1
    800059a0:	000a3783          	ld	a5,0(s4)
    800059a4:	04f4f263          	bgeu	s1,a5,800059e8 <_ZN20KObjectAllocatorTest8runTestsEv+0x104>
        if (!test(i, size)) {
    800059a8:	000a8613          	mv	a2,s5
    800059ac:	00048593          	mv	a1,s1
    800059b0:	000a0513          	mv	a0,s4
    800059b4:	00000097          	auipc	ra,0x0
    800059b8:	eac080e7          	jalr	-340(ra) # 80005860 <_ZN20KObjectAllocatorTest4testEmm>
    800059bc:	00050913          	mv	s2,a0
    800059c0:	f60508e3          	beqz	a0,80005930 <_ZN20KObjectAllocatorTest8runTestsEv+0x4c>
        } else printString("Passed ");
    800059c4:	00004517          	auipc	a0,0x4
    800059c8:	ab450513          	addi	a0,a0,-1356 # 80009478 <CONSOLE_STATUS+0x468>
    800059cc:	00001097          	auipc	ra,0x1
    800059d0:	ad8080e7          	jalr	-1320(ra) # 800064a4 <_Z11printStringPKc>
        ++testCnt;
    800059d4:	00198993          	addi	s3,s3,1
        if (testCnt % 10 == 0) printString("\n");
    800059d8:	00a00793          	li	a5,10
    800059dc:	02f9f7b3          	remu	a5,s3,a5
    800059e0:	fa079ee3          	bnez	a5,8000599c <_ZN20KObjectAllocatorTest8runTestsEv+0xb8>
    800059e4:	fa9ff06f          	j	8000598c <_ZN20KObjectAllocatorTest8runTestsEv+0xa8>
    for (size_t size : sizes)
    800059e8:	008b0b13          	addi	s6,s6,8
    800059ec:	f35ff06f          	j	80005920 <_ZN20KObjectAllocatorTest8runTestsEv+0x3c>
    return true;
    800059f0:	00100913          	li	s2,1
    800059f4:	f69ff06f          	j	8000595c <_ZN20KObjectAllocatorTest8runTestsEv+0x78>

00000000800059f8 <_ZN16KObjectAllocatordlEPv>:
    void operator delete(void* p) {
    800059f8:	fe010113          	addi	sp,sp,-32
    800059fc:	00113c23          	sd	ra,24(sp)
    80005a00:	00813823          	sd	s0,16(sp)
    80005a04:	00913423          	sd	s1,8(sp)
    80005a08:	01213023          	sd	s2,0(sp)
    80005a0c:	02010413          	addi	s0,sp,32
    80005a10:	00050913          	mv	s2,a0
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005a14:	00000493          	li	s1,0
    80005a18:	03093783          	ld	a5,48(s2)
    80005a1c:	02f4f663          	bgeu	s1,a5,80005a48 <_ZN16KObjectAllocatordlEPv+0x50>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80005a20:	ffffc097          	auipc	ra,0xffffc
    80005a24:	15c080e7          	jalr	348(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80005a28:	02893783          	ld	a5,40(s2)
    80005a2c:	00349713          	slli	a4,s1,0x3
    80005a30:	00e787b3          	add	a5,a5,a4
    80005a34:	0007b583          	ld	a1,0(a5)
    80005a38:	ffffc097          	auipc	ra,0xffffc
    80005a3c:	2d0080e7          	jalr	720(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005a40:	00148493          	addi	s1,s1,1
    80005a44:	fd5ff06f          	j	80005a18 <_ZN16KObjectAllocatordlEPv+0x20>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80005a48:	ffffc097          	auipc	ra,0xffffc
    80005a4c:	134080e7          	jalr	308(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80005a50:	02893583          	ld	a1,40(s2)
    80005a54:	ffffc097          	auipc	ra,0xffffc
    80005a58:	2b4080e7          	jalr	692(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80005a5c:	ffffc097          	auipc	ra,0xffffc
    80005a60:	120080e7          	jalr	288(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80005a64:	02093583          	ld	a1,32(s2)
    80005a68:	ffffc097          	auipc	ra,0xffffc
    80005a6c:	2a0080e7          	jalr	672(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80005a70:	ffffc097          	auipc	ra,0xffffc
    80005a74:	10c080e7          	jalr	268(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80005a78:	00090593          	mv	a1,s2
    80005a7c:	ffffc097          	auipc	ra,0xffffc
    80005a80:	28c080e7          	jalr	652(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    }
    80005a84:	01813083          	ld	ra,24(sp)
    80005a88:	01013403          	ld	s0,16(sp)
    80005a8c:	00813483          	ld	s1,8(sp)
    80005a90:	00013903          	ld	s2,0(sp)
    80005a94:	02010113          	addi	sp,sp,32
    80005a98:	00008067          	ret

0000000080005a9c <_ZN16KObjectAllocator19printInternalMemoryEv>:
#include "../h/kObjectAllocator.hpp"
#include "../h/print.hpp"

void KObjectAllocator::printInternalMemory() {
    80005a9c:	fc010113          	addi	sp,sp,-64
    80005aa0:	02113c23          	sd	ra,56(sp)
    80005aa4:	02813823          	sd	s0,48(sp)
    80005aa8:	02913423          	sd	s1,40(sp)
    80005aac:	03213023          	sd	s2,32(sp)
    80005ab0:	01313c23          	sd	s3,24(sp)
    80005ab4:	01413823          	sd	s4,16(sp)
    80005ab8:	01513423          	sd	s5,8(sp)
    80005abc:	01613023          	sd	s6,0(sp)
    80005ac0:	04010413          	addi	s0,sp,64
    80005ac4:	00050493          	mv	s1,a0
    size_t segmentSize = 16, printedBytes = 0;
    80005ac8:	00000a93          	li	s5,0
    80005acc:	0f00006f          	j	80005bbc <_ZN16KObjectAllocator19printInternalMemoryEv+0x120>
    while (printedBytes < memorySizeForBits) {
        for (size_t i = 0; i < numberOfAllocations; ++i) {
            for (size_t j = 0; j < segmentSize; ++j) {
                if (j + printedBytes >= memorySizeForBits) printString("    ");
    80005ad0:	00004517          	auipc	a0,0x4
    80005ad4:	ab050513          	addi	a0,a0,-1360 # 80009580 <CONSOLE_STATUS+0x570>
    80005ad8:	00001097          	auipc	ra,0x1
    80005adc:	9cc080e7          	jalr	-1588(ra) # 800064a4 <_Z11printStringPKc>
    80005ae0:	04c0006f          	j	80005b2c <_ZN16KObjectAllocator19printInternalMemoryEv+0x90>
                else {
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80005ae4:	00000513          	li	a0,0
    80005ae8:	00001097          	auipc	ra,0x1
    80005aec:	a2c080e7          	jalr	-1492(ra) # 80006514 <_Z12printIntegerm>
    80005af0:	0740006f          	j	80005b64 <_ZN16KObjectAllocator19printInternalMemoryEv+0xc8>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    80005af4:	00000513          	li	a0,0
    80005af8:	00001097          	auipc	ra,0x1
    80005afc:	a1c080e7          	jalr	-1508(ra) # 80006514 <_Z12printIntegerm>
                    printInteger((uint64) bitVectors[i][j + printedBytes]);
    80005b00:	0284b783          	ld	a5,40(s1)
    80005b04:	014787b3          	add	a5,a5,s4
    80005b08:	0007b783          	ld	a5,0(a5)
    80005b0c:	013789b3          	add	s3,a5,s3
    80005b10:	0009c503          	lbu	a0,0(s3)
    80005b14:	00001097          	auipc	ra,0x1
    80005b18:	a00080e7          	jalr	-1536(ra) # 80006514 <_Z12printIntegerm>
                    printString(" ");
    80005b1c:	00004517          	auipc	a0,0x4
    80005b20:	81450513          	addi	a0,a0,-2028 # 80009330 <CONSOLE_STATUS+0x320>
    80005b24:	00001097          	auipc	ra,0x1
    80005b28:	980080e7          	jalr	-1664(ra) # 800064a4 <_Z11printStringPKc>
            for (size_t j = 0; j < segmentSize; ++j) {
    80005b2c:	00190913          	addi	s2,s2,1
    80005b30:	00f00793          	li	a5,15
    80005b34:	0527e863          	bltu	a5,s2,80005b84 <_ZN16KObjectAllocator19printInternalMemoryEv+0xe8>
                if (j + printedBytes >= memorySizeForBits) printString("    ");
    80005b38:	012a89b3          	add	s3,s5,s2
    80005b3c:	0104b783          	ld	a5,16(s1)
    80005b40:	f8f9f8e3          	bgeu	s3,a5,80005ad0 <_ZN16KObjectAllocator19printInternalMemoryEv+0x34>
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80005b44:	0284b783          	ld	a5,40(s1)
    80005b48:	003b1a13          	slli	s4,s6,0x3
    80005b4c:	014787b3          	add	a5,a5,s4
    80005b50:	0007b783          	ld	a5,0(a5)
    80005b54:	013787b3          	add	a5,a5,s3
    80005b58:	0007c703          	lbu	a4,0(a5)
    80005b5c:	06300793          	li	a5,99
    80005b60:	f8e7f2e3          	bgeu	a5,a4,80005ae4 <_ZN16KObjectAllocator19printInternalMemoryEv+0x48>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    80005b64:	0284b783          	ld	a5,40(s1)
    80005b68:	014787b3          	add	a5,a5,s4
    80005b6c:	0007b783          	ld	a5,0(a5)
    80005b70:	013787b3          	add	a5,a5,s3
    80005b74:	0007c703          	lbu	a4,0(a5)
    80005b78:	00900793          	li	a5,9
    80005b7c:	f8e7e2e3          	bltu	a5,a4,80005b00 <_ZN16KObjectAllocator19printInternalMemoryEv+0x64>
    80005b80:	f75ff06f          	j	80005af4 <_ZN16KObjectAllocator19printInternalMemoryEv+0x58>
                }
            }
            printString("  ");
    80005b84:	00004517          	auipc	a0,0x4
    80005b88:	a0450513          	addi	a0,a0,-1532 # 80009588 <CONSOLE_STATUS+0x578>
    80005b8c:	00001097          	auipc	ra,0x1
    80005b90:	918080e7          	jalr	-1768(ra) # 800064a4 <_Z11printStringPKc>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005b94:	001b0b13          	addi	s6,s6,1
    80005b98:	0304b783          	ld	a5,48(s1)
    80005b9c:	00fb7663          	bgeu	s6,a5,80005ba8 <_ZN16KObjectAllocator19printInternalMemoryEv+0x10c>
            for (size_t j = 0; j < segmentSize; ++j) {
    80005ba0:	00000913          	li	s2,0
    80005ba4:	f8dff06f          	j	80005b30 <_ZN16KObjectAllocator19printInternalMemoryEv+0x94>
        }
        printString("\n");
    80005ba8:	00003517          	auipc	a0,0x3
    80005bac:	57850513          	addi	a0,a0,1400 # 80009120 <CONSOLE_STATUS+0x110>
    80005bb0:	00001097          	auipc	ra,0x1
    80005bb4:	8f4080e7          	jalr	-1804(ra) # 800064a4 <_Z11printStringPKc>
        printedBytes += segmentSize;
    80005bb8:	010a8a93          	addi	s5,s5,16
    while (printedBytes < memorySizeForBits) {
    80005bbc:	0104b783          	ld	a5,16(s1)
    80005bc0:	00faf663          	bgeu	s5,a5,80005bcc <_ZN16KObjectAllocator19printInternalMemoryEv+0x130>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005bc4:	00000b13          	li	s6,0
    80005bc8:	fd1ff06f          	j	80005b98 <_ZN16KObjectAllocator19printInternalMemoryEv+0xfc>
    }

    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005bcc:	00000993          	li	s3,0
    80005bd0:	0180006f          	j	80005be8 <_ZN16KObjectAllocator19printInternalMemoryEv+0x14c>
        for (size_t j = 0; j < segmentSize - 1; ++j)
            printString("----");
        printString("----  ");
    80005bd4:	00004517          	auipc	a0,0x4
    80005bd8:	9c450513          	addi	a0,a0,-1596 # 80009598 <CONSOLE_STATUS+0x588>
    80005bdc:	00001097          	auipc	ra,0x1
    80005be0:	8c8080e7          	jalr	-1848(ra) # 800064a4 <_Z11printStringPKc>
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005be4:	00198993          	addi	s3,s3,1
    80005be8:	0304b783          	ld	a5,48(s1)
    80005bec:	02f9f463          	bgeu	s3,a5,80005c14 <_ZN16KObjectAllocator19printInternalMemoryEv+0x178>
        for (size_t j = 0; j < segmentSize - 1; ++j)
    80005bf0:	00000913          	li	s2,0
    80005bf4:	00e00793          	li	a5,14
    80005bf8:	fd27eee3          	bltu	a5,s2,80005bd4 <_ZN16KObjectAllocator19printInternalMemoryEv+0x138>
            printString("----");
    80005bfc:	00004517          	auipc	a0,0x4
    80005c00:	99450513          	addi	a0,a0,-1644 # 80009590 <CONSOLE_STATUS+0x580>
    80005c04:	00001097          	auipc	ra,0x1
    80005c08:	8a0080e7          	jalr	-1888(ra) # 800064a4 <_Z11printStringPKc>
        for (size_t j = 0; j < segmentSize - 1; ++j)
    80005c0c:	00190913          	addi	s2,s2,1
    80005c10:	fe5ff06f          	j	80005bf4 <_ZN16KObjectAllocator19printInternalMemoryEv+0x158>
    }
    printString("\n");
    80005c14:	00003517          	auipc	a0,0x3
    80005c18:	50c50513          	addi	a0,a0,1292 # 80009120 <CONSOLE_STATUS+0x110>
    80005c1c:	00001097          	auipc	ra,0x1
    80005c20:	888080e7          	jalr	-1912(ra) # 800064a4 <_Z11printStringPKc>

    printedBytes = memorySizeForBits;
    80005c24:	0104ba03          	ld	s4,16(s1)
    80005c28:	1000006f          	j	80005d28 <_ZN16KObjectAllocator19printInternalMemoryEv+0x28c>
    while(printedBytes < initialNumberOfObjects * objectSize) {
        for (size_t i = 0; i < numberOfAllocations; ++i) {
            for (size_t j = 0; j < segmentSize; ++j) {
                if (j + printedBytes - memorySizeForBits >= initialNumberOfObjects * objectSize) printString("    ");
    80005c2c:	00004517          	auipc	a0,0x4
    80005c30:	95450513          	addi	a0,a0,-1708 # 80009580 <CONSOLE_STATUS+0x570>
    80005c34:	00001097          	auipc	ra,0x1
    80005c38:	870080e7          	jalr	-1936(ra) # 800064a4 <_Z11printStringPKc>
    80005c3c:	04c0006f          	j	80005c88 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1ec>
                else {
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80005c40:	00000513          	li	a0,0
    80005c44:	00001097          	auipc	ra,0x1
    80005c48:	8d0080e7          	jalr	-1840(ra) # 80006514 <_Z12printIntegerm>
    80005c4c:	0840006f          	j	80005cd0 <_ZN16KObjectAllocator19printInternalMemoryEv+0x234>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    80005c50:	00000513          	li	a0,0
    80005c54:	00001097          	auipc	ra,0x1
    80005c58:	8c0080e7          	jalr	-1856(ra) # 80006514 <_Z12printIntegerm>
                    printInteger((uint64) bitVectors[i][j + printedBytes]);
    80005c5c:	0284b783          	ld	a5,40(s1)
    80005c60:	016787b3          	add	a5,a5,s6
    80005c64:	0007b783          	ld	a5,0(a5)
    80005c68:	013789b3          	add	s3,a5,s3
    80005c6c:	0009c503          	lbu	a0,0(s3)
    80005c70:	00001097          	auipc	ra,0x1
    80005c74:	8a4080e7          	jalr	-1884(ra) # 80006514 <_Z12printIntegerm>
                    printString(" ");
    80005c78:	00003517          	auipc	a0,0x3
    80005c7c:	6b850513          	addi	a0,a0,1720 # 80009330 <CONSOLE_STATUS+0x320>
    80005c80:	00001097          	auipc	ra,0x1
    80005c84:	824080e7          	jalr	-2012(ra) # 800064a4 <_Z11printStringPKc>
            for (size_t j = 0; j < segmentSize; ++j) {
    80005c88:	00190913          	addi	s2,s2,1
    80005c8c:	00f00793          	li	a5,15
    80005c90:	0727e063          	bltu	a5,s2,80005cf0 <_ZN16KObjectAllocator19printInternalMemoryEv+0x254>
                if (j + printedBytes - memorySizeForBits >= initialNumberOfObjects * objectSize) printString("    ");
    80005c94:	012a09b3          	add	s3,s4,s2
    80005c98:	0104b703          	ld	a4,16(s1)
    80005c9c:	40e98733          	sub	a4,s3,a4
    80005ca0:	0004b783          	ld	a5,0(s1)
    80005ca4:	0184b683          	ld	a3,24(s1)
    80005ca8:	02d787b3          	mul	a5,a5,a3
    80005cac:	f8f770e3          	bgeu	a4,a5,80005c2c <_ZN16KObjectAllocator19printInternalMemoryEv+0x190>
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80005cb0:	0284b783          	ld	a5,40(s1)
    80005cb4:	003a9b13          	slli	s6,s5,0x3
    80005cb8:	016787b3          	add	a5,a5,s6
    80005cbc:	0007b783          	ld	a5,0(a5)
    80005cc0:	013787b3          	add	a5,a5,s3
    80005cc4:	0007c703          	lbu	a4,0(a5)
    80005cc8:	06300793          	li	a5,99
    80005ccc:	f6e7fae3          	bgeu	a5,a4,80005c40 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1a4>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    80005cd0:	0284b783          	ld	a5,40(s1)
    80005cd4:	016787b3          	add	a5,a5,s6
    80005cd8:	0007b783          	ld	a5,0(a5)
    80005cdc:	013787b3          	add	a5,a5,s3
    80005ce0:	0007c703          	lbu	a4,0(a5)
    80005ce4:	00900793          	li	a5,9
    80005ce8:	f6e7eae3          	bltu	a5,a4,80005c5c <_ZN16KObjectAllocator19printInternalMemoryEv+0x1c0>
    80005cec:	f65ff06f          	j	80005c50 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1b4>
                }
            }
            printString("  ");
    80005cf0:	00004517          	auipc	a0,0x4
    80005cf4:	89850513          	addi	a0,a0,-1896 # 80009588 <CONSOLE_STATUS+0x578>
    80005cf8:	00000097          	auipc	ra,0x0
    80005cfc:	7ac080e7          	jalr	1964(ra) # 800064a4 <_Z11printStringPKc>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005d00:	001a8a93          	addi	s5,s5,1
    80005d04:	0304b783          	ld	a5,48(s1)
    80005d08:	00faf663          	bgeu	s5,a5,80005d14 <_ZN16KObjectAllocator19printInternalMemoryEv+0x278>
            for (size_t j = 0; j < segmentSize; ++j) {
    80005d0c:	00000913          	li	s2,0
    80005d10:	f7dff06f          	j	80005c8c <_ZN16KObjectAllocator19printInternalMemoryEv+0x1f0>
        }
        printString("\n");
    80005d14:	00003517          	auipc	a0,0x3
    80005d18:	40c50513          	addi	a0,a0,1036 # 80009120 <CONSOLE_STATUS+0x110>
    80005d1c:	00000097          	auipc	ra,0x0
    80005d20:	788080e7          	jalr	1928(ra) # 800064a4 <_Z11printStringPKc>
        printedBytes += segmentSize;
    80005d24:	010a0a13          	addi	s4,s4,16
    while(printedBytes < initialNumberOfObjects * objectSize) {
    80005d28:	0004b783          	ld	a5,0(s1)
    80005d2c:	0184b703          	ld	a4,24(s1)
    80005d30:	02e787b3          	mul	a5,a5,a4
    80005d34:	00fa7663          	bgeu	s4,a5,80005d40 <_ZN16KObjectAllocator19printInternalMemoryEv+0x2a4>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005d38:	00000a93          	li	s5,0
    80005d3c:	fc9ff06f          	j	80005d04 <_ZN16KObjectAllocator19printInternalMemoryEv+0x268>
    }
}
    80005d40:	03813083          	ld	ra,56(sp)
    80005d44:	03013403          	ld	s0,48(sp)
    80005d48:	02813483          	ld	s1,40(sp)
    80005d4c:	02013903          	ld	s2,32(sp)
    80005d50:	01813983          	ld	s3,24(sp)
    80005d54:	01013a03          	ld	s4,16(sp)
    80005d58:	00813a83          	ld	s5,8(sp)
    80005d5c:	00013b03          	ld	s6,0(sp)
    80005d60:	04010113          	addi	sp,sp,64
    80005d64:	00008067          	ret

0000000080005d68 <_ZN16KObjectAllocator18allocateFreeObjectEv>:
        }
    }
    return nullptr;
}

void* KObjectAllocator::allocateFreeObject() {
    80005d68:	ff010113          	addi	sp,sp,-16
    80005d6c:	00813423          	sd	s0,8(sp)
    80005d70:	01010413          	addi	s0,sp,16
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005d74:	00000e13          	li	t3,0
    80005d78:	03053783          	ld	a5,48(a0)
    80005d7c:	0afe7e63          	bgeu	t3,a5,80005e38 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xd0>
        for (size_t j = nextNonTakenByte; j >= i * memorySizeForBits && j < (i + 1) * memorySizeForBits; ++j) {
    80005d80:	03853303          	ld	t1,56(a0)
    80005d84:	0480006f          	j	80005dcc <_ZN16KObjectAllocator18allocateFreeObjectEv+0x64>
                    printString("j: "); printInteger(j); printString("\n");
                    printString("nextNonTakenByte: "); printInteger(nextNonTakenByte); printString("\n");
                    printString("Byte: "); printInteger(byte); printString("\n");
                    printString("Bit: "); printInteger(bit); printString("\n");
                    printString("========================");*/
                    bitVectors[i][byte] |= (uint8) 1 << (bit - 1);
    80005d88:	00100693          	li	a3,1
    80005d8c:	011698bb          	sllw	a7,a3,a7
    80005d90:	0115e5b3          	or	a1,a1,a7
    80005d94:	00b78023          	sb	a1,0(a5)
                    return &objectVectors[i][(byte * 8 + 8 - bit) * objectSize];
    80005d98:	02053783          	ld	a5,32(a0)
    80005d9c:	01078833          	add	a6,a5,a6
    80005da0:	00083783          	ld	a5,0(a6)
    80005da4:	00160613          	addi	a2,a2,1
    80005da8:	00361613          	slli	a2,a2,0x3
    80005dac:	40e60733          	sub	a4,a2,a4
    80005db0:	01853503          	ld	a0,24(a0)
    80005db4:	02a70733          	mul	a4,a4,a0
    80005db8:	00e78533          	add	a0,a5,a4
                }
            }
        }
    }
    return nullptr;
}
    80005dbc:	00813403          	ld	s0,8(sp)
    80005dc0:	01010113          	addi	sp,sp,16
    80005dc4:	00008067          	ret
        for (size_t j = nextNonTakenByte; j >= i * memorySizeForBits && j < (i + 1) * memorySizeForBits; ++j) {
    80005dc8:	00130313          	addi	t1,t1,1
    80005dcc:	01053783          	ld	a5,16(a0)
    80005dd0:	03c78633          	mul	a2,a5,t3
    80005dd4:	04c36e63          	bltu	t1,a2,80005e30 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xc8>
    80005dd8:	001e0713          	addi	a4,t3,1
    80005ddc:	02e787b3          	mul	a5,a5,a4
    80005de0:	04f37863          	bgeu	t1,a5,80005e30 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xc8>
            size_t byte = j - i * memorySizeForBits;
    80005de4:	40c30633          	sub	a2,t1,a2
            for (size_t bit = 8; bit != 0; --bit) {
    80005de8:	00800713          	li	a4,8
    80005dec:	fc070ee3          	beqz	a4,80005dc8 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x60>
                nextNonTakenByte = j + (bit == 1);
    80005df0:	fff70793          	addi	a5,a4,-1
    80005df4:	0017b793          	seqz	a5,a5
    80005df8:	006787b3          	add	a5,a5,t1
    80005dfc:	02f53c23          	sd	a5,56(a0)
                if ((bitVectors[i][byte] >> (bit - 1) & (uint8) 1) == 0) {
    80005e00:	02853783          	ld	a5,40(a0)
    80005e04:	003e1813          	slli	a6,t3,0x3
    80005e08:	010787b3          	add	a5,a5,a6
    80005e0c:	0007b783          	ld	a5,0(a5)
    80005e10:	00c787b3          	add	a5,a5,a2
    80005e14:	0007c583          	lbu	a1,0(a5)
    80005e18:	fff7089b          	addiw	a7,a4,-1
    80005e1c:	4115d6bb          	sraw	a3,a1,a7
    80005e20:	0016f693          	andi	a3,a3,1
    80005e24:	f60682e3          	beqz	a3,80005d88 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x20>
            for (size_t bit = 8; bit != 0; --bit) {
    80005e28:	fff70713          	addi	a4,a4,-1
    80005e2c:	fc1ff06f          	j	80005dec <_ZN16KObjectAllocator18allocateFreeObjectEv+0x84>
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005e30:	001e0e13          	addi	t3,t3,1
    80005e34:	f45ff06f          	j	80005d78 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x10>
    return nullptr;
    80005e38:	00000513          	li	a0,0
    80005e3c:	f81ff06f          	j	80005dbc <_ZN16KObjectAllocator18allocateFreeObjectEv+0x54>

0000000080005e40 <_ZN16KObjectAllocator10freeObjectEPv>:

void KObjectAllocator::freeObject(void* objectPointer) {
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005e40:	00000713          	li	a4,0
    80005e44:	0080006f          	j	80005e4c <_ZN16KObjectAllocator10freeObjectEPv+0xc>
    80005e48:	00170713          	addi	a4,a4,1
    80005e4c:	03053783          	ld	a5,48(a0)
    80005e50:	06f77463          	bgeu	a4,a5,80005eb8 <_ZN16KObjectAllocator10freeObjectEPv+0x78>
        if ((uint8*) objectPointer < objectVectors[i]) continue;
    80005e54:	02053783          	ld	a5,32(a0)
    80005e58:	00371693          	slli	a3,a4,0x3
    80005e5c:	00d787b3          	add	a5,a5,a3
    80005e60:	0007b783          	ld	a5,0(a5)
    80005e64:	fef5e2e3          	bltu	a1,a5,80005e48 <_ZN16KObjectAllocator10freeObjectEPv+0x8>
        size_t idiff = (size_t) ((uint8*) objectPointer - objectVectors[i]);
    80005e68:	40f587b3          	sub	a5,a1,a5
        size_t byte = idiff / objectSize / 8;
    80005e6c:	01853603          	ld	a2,24(a0)
    80005e70:	02c7d7b3          	divu	a5,a5,a2
    80005e74:	0037d813          	srli	a6,a5,0x3
        if (byte >= memorySizeForBits) continue;
    80005e78:	01053603          	ld	a2,16(a0)
    80005e7c:	fcc876e3          	bgeu	a6,a2,80005e48 <_ZN16KObjectAllocator10freeObjectEPv+0x8>
        size_t bit = idiff / objectSize - byte * 8;
    80005e80:	0077f793          	andi	a5,a5,7
        bitVectors[i][byte] &= ~((uint8) 1 << (7 - bit));
    80005e84:	02853603          	ld	a2,40(a0)
    80005e88:	00d606b3          	add	a3,a2,a3
    80005e8c:	0006b703          	ld	a4,0(a3)
    80005e90:	01070733          	add	a4,a4,a6
    80005e94:	00700693          	li	a3,7
    80005e98:	40f686bb          	subw	a3,a3,a5
    80005e9c:	00100793          	li	a5,1
    80005ea0:	00d797bb          	sllw	a5,a5,a3
    80005ea4:	fff7c793          	not	a5,a5
    80005ea8:	00074683          	lbu	a3,0(a4)
    80005eac:	00d7f7b3          	and	a5,a5,a3
    80005eb0:	00f70023          	sb	a5,0(a4)
        return;
    80005eb4:	00008067          	ret
void KObjectAllocator::freeObject(void* objectPointer) {
    80005eb8:	ff010113          	addi	sp,sp,-16
    80005ebc:	00113423          	sd	ra,8(sp)
    80005ec0:	00813023          	sd	s0,0(sp)
    80005ec4:	01010413          	addi	s0,sp,16
    }
    printString("ERROR: Object not allocated in this KObjectAllocator\n");
    80005ec8:	00003517          	auipc	a0,0x3
    80005ecc:	6d850513          	addi	a0,a0,1752 # 800095a0 <CONSOLE_STATUS+0x590>
    80005ed0:	00000097          	auipc	ra,0x0
    80005ed4:	5d4080e7          	jalr	1492(ra) # 800064a4 <_Z11printStringPKc>
}
    80005ed8:	00813083          	ld	ra,8(sp)
    80005edc:	00013403          	ld	s0,0(sp)
    80005ee0:	01010113          	addi	sp,sp,16
    80005ee4:	00008067          	ret

0000000080005ee8 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv>:

bool KObjectAllocator::handleNotEnoughMemoryProblem() {
    80005ee8:	fb010113          	addi	sp,sp,-80
    80005eec:	04113423          	sd	ra,72(sp)
    80005ef0:	04813023          	sd	s0,64(sp)
    80005ef4:	02913c23          	sd	s1,56(sp)
    80005ef8:	03213823          	sd	s2,48(sp)
    80005efc:	03313423          	sd	s3,40(sp)
    80005f00:	03413023          	sd	s4,32(sp)
    80005f04:	01513c23          	sd	s5,24(sp)
    80005f08:	01613823          	sd	s6,16(sp)
    80005f0c:	01713423          	sd	s7,8(sp)
    80005f10:	05010413          	addi	s0,sp,80
    80005f14:	00050493          	mv	s1,a0
    size_t newNumberOfAllocations = 2 * numberOfAllocations;
    80005f18:	03053a03          	ld	s4,48(a0)
    80005f1c:	001a1993          	slli	s3,s4,0x1
    size_t newNumberOfObjects = 2 * numberOfObjects;
    80005f20:	00853a83          	ld	s5,8(a0)
    uint8** newBitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(
    80005f24:	ffffc097          	auipc	ra,0xffffc
    80005f28:	c58080e7          	jalr	-936(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80005f2c:	004a1a13          	slli	s4,s4,0x4
    80005f30:	000a0593          	mv	a1,s4
    80005f34:	ffffc097          	auipc	ra,0xffffc
    80005f38:	d2c080e7          	jalr	-724(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
            newNumberOfAllocations * sizeof(uint8*)
    );
    if (!newBitVectors) return false;
    80005f3c:	14050663          	beqz	a0,80006088 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a0>
    80005f40:	001a9a93          	slli	s5,s5,0x1
    80005f44:	00050913          	mv	s2,a0
    uint8** newObjectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(
    80005f48:	ffffc097          	auipc	ra,0xffffc
    80005f4c:	c34080e7          	jalr	-972(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80005f50:	000a0593          	mv	a1,s4
    80005f54:	ffffc097          	auipc	ra,0xffffc
    80005f58:	d0c080e7          	jalr	-756(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80005f5c:	00050a13          	mv	s4,a0
            newNumberOfAllocations * sizeof(uint8*)
    );
    if (!newObjectVectors) return false;
    80005f60:	14050c63          	beqz	a0,800060b8 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1d0>

    for (size_t i = 0; i < numberOfAllocations; ++i) newBitVectors[i] = bitVectors[i];
    80005f64:	00000793          	li	a5,0
    80005f68:	0304bb03          	ld	s6,48(s1)
    80005f6c:	0367f463          	bgeu	a5,s6,80005f94 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xac>
    80005f70:	0284b703          	ld	a4,40(s1)
    80005f74:	00379693          	slli	a3,a5,0x3
    80005f78:	00d90633          	add	a2,s2,a3
    80005f7c:	00d70733          	add	a4,a4,a3
    80005f80:	00073703          	ld	a4,0(a4)
    80005f84:	00e63023          	sd	a4,0(a2)
    80005f88:	00178793          	addi	a5,a5,1
    80005f8c:	fddff06f          	j	80005f68 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x80>
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i) {
    80005f90:	001b0b13          	addi	s6,s6,1
    80005f94:	053b7063          	bgeu	s6,s3,80005fd4 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xec>
        newBitVectors[i] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80005f98:	ffffc097          	auipc	ra,0xffffc
    80005f9c:	be4080e7          	jalr	-1052(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
        memorySizeForBits + initialNumberOfObjects * objectSize );
    80005fa0:	0104b583          	ld	a1,16(s1)
    80005fa4:	0004b783          	ld	a5,0(s1)
    80005fa8:	0184b703          	ld	a4,24(s1)
    80005fac:	02e787b3          	mul	a5,a5,a4
        newBitVectors[i] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80005fb0:	003b1b93          	slli	s7,s6,0x3
    80005fb4:	01790bb3          	add	s7,s2,s7
    80005fb8:	00f585b3          	add	a1,a1,a5
    80005fbc:	ffffc097          	auipc	ra,0xffffc
    80005fc0:	ca4080e7          	jalr	-860(ra) # 80001c60 <_ZN15MemoryAllocator10kmem_allocEm>
    80005fc4:	00abb023          	sd	a0,0(s7)
        if (!newBitVectors[i]) return false;
    80005fc8:	fc0514e3          	bnez	a0,80005f90 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xa8>
    80005fcc:	00000513          	li	a0,0
    80005fd0:	0bc0006f          	j	8000608c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a4>
    }
    for (size_t i = 0; i < newNumberOfAllocations; ++i) newObjectVectors[i] = newBitVectors[i] + memorySizeForBits;
    80005fd4:	00000713          	li	a4,0
    80005fd8:	03377463          	bgeu	a4,s3,80006000 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x118>
    80005fdc:	00371793          	slli	a5,a4,0x3
    80005fe0:	00f906b3          	add	a3,s2,a5
    80005fe4:	0006b683          	ld	a3,0(a3)
    80005fe8:	0104b603          	ld	a2,16(s1)
    80005fec:	00fa07b3          	add	a5,s4,a5
    80005ff0:	00c686b3          	add	a3,a3,a2
    80005ff4:	00d7b023          	sd	a3,0(a5)
    80005ff8:	00170713          	addi	a4,a4,1
    80005ffc:	fddff06f          	j	80005fd8 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xf0>
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i)
    80006000:	0304b683          	ld	a3,48(s1)
    80006004:	0280006f          	j	8000602c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x144>
        for (size_t j = 0; j < memorySizeForBits; newBitVectors[i][j++] = 0);
    80006008:	00369713          	slli	a4,a3,0x3
    8000600c:	00e90733          	add	a4,s2,a4
    80006010:	00073703          	ld	a4,0(a4)
    80006014:	00f70733          	add	a4,a4,a5
    80006018:	00070023          	sb	zero,0(a4)
    8000601c:	00178793          	addi	a5,a5,1
    80006020:	0104b703          	ld	a4,16(s1)
    80006024:	fee7e2e3          	bltu	a5,a4,80006008 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x120>
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i)
    80006028:	00168693          	addi	a3,a3,1
    8000602c:	0136f663          	bgeu	a3,s3,80006038 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x150>
        for (size_t j = 0; j < memorySizeForBits; newBitVectors[i][j++] = 0);
    80006030:	00000793          	li	a5,0
    80006034:	fedff06f          	j	80006020 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x138>
    MemoryAllocator::instance()->kmem_free(bitVectors);
    80006038:	ffffc097          	auipc	ra,0xffffc
    8000603c:	b44080e7          	jalr	-1212(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80006040:	0284b583          	ld	a1,40(s1)
    80006044:	ffffc097          	auipc	ra,0xffffc
    80006048:	cc4080e7          	jalr	-828(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(objectVectors);
    8000604c:	ffffc097          	auipc	ra,0xffffc
    80006050:	b30080e7          	jalr	-1232(ra) # 80001b7c <_ZN15MemoryAllocator8instanceEv>
    80006054:	0204b583          	ld	a1,32(s1)
    80006058:	ffffc097          	auipc	ra,0xffffc
    8000605c:	cb0080e7          	jalr	-848(ra) # 80001d08 <_ZN15MemoryAllocator9kmem_freeEPv>

    numberOfObjects = newNumberOfObjects;
    80006060:	0154b423          	sd	s5,8(s1)
    nextNonTakenByte = numberOfAllocations * memorySizeForBits;
    80006064:	0304b783          	ld	a5,48(s1)
    80006068:	0104b703          	ld	a4,16(s1)
    8000606c:	02e787b3          	mul	a5,a5,a4
    80006070:	02f4bc23          	sd	a5,56(s1)
    numberOfAllocations = newNumberOfAllocations;
    80006074:	0334b823          	sd	s3,48(s1)
    bitVectors = newBitVectors;
    80006078:	0324b423          	sd	s2,40(s1)
    objectVectors = newObjectVectors;
    8000607c:	0344b023          	sd	s4,32(s1)

    return true;
    80006080:	00100513          	li	a0,1
    80006084:	0080006f          	j	8000608c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a4>
    if (!newBitVectors) return false;
    80006088:	00000513          	li	a0,0
}
    8000608c:	04813083          	ld	ra,72(sp)
    80006090:	04013403          	ld	s0,64(sp)
    80006094:	03813483          	ld	s1,56(sp)
    80006098:	03013903          	ld	s2,48(sp)
    8000609c:	02813983          	ld	s3,40(sp)
    800060a0:	02013a03          	ld	s4,32(sp)
    800060a4:	01813a83          	ld	s5,24(sp)
    800060a8:	01013b03          	ld	s6,16(sp)
    800060ac:	00813b83          	ld	s7,8(sp)
    800060b0:	05010113          	addi	sp,sp,80
    800060b4:	00008067          	ret
    if (!newObjectVectors) return false;
    800060b8:	00000513          	li	a0,0
    800060bc:	fd1ff06f          	j	8000608c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a4>

00000000800060c0 <_ZN16KObjectAllocator17allocateNewObjectEv>:
void* KObjectAllocator::allocateNewObject() {
    800060c0:	fe010113          	addi	sp,sp,-32
    800060c4:	00113c23          	sd	ra,24(sp)
    800060c8:	00813823          	sd	s0,16(sp)
    800060cc:	00913423          	sd	s1,8(sp)
    800060d0:	01213023          	sd	s2,0(sp)
    800060d4:	02010413          	addi	s0,sp,32
    800060d8:	00050913          	mv	s2,a0
    void* returnedObject = allocateFreeObject();
    800060dc:	00000097          	auipc	ra,0x0
    800060e0:	c8c080e7          	jalr	-884(ra) # 80005d68 <_ZN16KObjectAllocator18allocateFreeObjectEv>
    800060e4:	00050493          	mv	s1,a0
    if (returnedObject) {
    800060e8:	02050063          	beqz	a0,80006108 <_ZN16KObjectAllocator17allocateNewObjectEv+0x48>
}
    800060ec:	00048513          	mv	a0,s1
    800060f0:	01813083          	ld	ra,24(sp)
    800060f4:	01013403          	ld	s0,16(sp)
    800060f8:	00813483          	ld	s1,8(sp)
    800060fc:	00013903          	ld	s2,0(sp)
    80006100:	02010113          	addi	sp,sp,32
    80006104:	00008067          	ret
    nextNonTakenByte = 0;   // start search from start
    80006108:	02093c23          	sd	zero,56(s2)
    returnedObject = allocateFreeObject();
    8000610c:	00090513          	mv	a0,s2
    80006110:	00000097          	auipc	ra,0x0
    80006114:	c58080e7          	jalr	-936(ra) # 80005d68 <_ZN16KObjectAllocator18allocateFreeObjectEv>
    80006118:	00050493          	mv	s1,a0
    if (returnedObject) {
    8000611c:	fc0518e3          	bnez	a0,800060ec <_ZN16KObjectAllocator17allocateNewObjectEv+0x2c>
    if (handleNotEnoughMemoryProblem()) {
    80006120:	00090513          	mv	a0,s2
    80006124:	00000097          	auipc	ra,0x0
    80006128:	dc4080e7          	jalr	-572(ra) # 80005ee8 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv>
    8000612c:	fc0500e3          	beqz	a0,800060ec <_ZN16KObjectAllocator17allocateNewObjectEv+0x2c>
        returnedObject = allocateFreeObject();
    80006130:	00090513          	mv	a0,s2
    80006134:	00000097          	auipc	ra,0x0
    80006138:	c34080e7          	jalr	-972(ra) # 80005d68 <_ZN16KObjectAllocator18allocateFreeObjectEv>
    8000613c:	00050493          	mv	s1,a0
        if (returnedObject) {
    80006140:	fadff06f          	j	800060ec <_ZN16KObjectAllocator17allocateNewObjectEv+0x2c>

0000000080006144 <_ZN5Riscv10popSppSpieEv>:
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/print.hpp"

void Riscv::popSppSpie()
{
    80006144:	ff010113          	addi	sp,sp,-16
    80006148:	00813423          	sd	s0,8(sp)
    8000614c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80006150:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80006154:	10200073          	sret
}
    80006158:	00813403          	ld	s0,8(sp)
    8000615c:	01010113          	addi	sp,sp,16
    80006160:	00008067          	ret

0000000080006164 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80006164:	f8010113          	addi	sp,sp,-128
    80006168:	06113c23          	sd	ra,120(sp)
    8000616c:	06813823          	sd	s0,112(sp)
    80006170:	06913423          	sd	s1,104(sp)
    80006174:	08010413          	addi	s0,sp,128
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80006178:	142027f3          	csrr	a5,scause
    8000617c:	faf43823          	sd	a5,-80(s0)
    return scause;
    80006180:	fb043483          	ld	s1,-80(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80006184:	ff848713          	addi	a4,s1,-8
    80006188:	00100793          	li	a5,1
    8000618c:	0ae7fc63          	bgeu	a5,a4,80006244 <_ZN5Riscv20handleSupervisorTrapEv+0xe0>
        TCB::timeSliceCounter = 0;
        // TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL) {
    80006190:	fff00793          	li	a5,-1
    80006194:	03f79793          	slli	a5,a5,0x3f
    80006198:	00178793          	addi	a5,a5,1
    8000619c:	12f48e63          	beq	s1,a5,800062d8 <_ZN5Riscv20handleSupervisorTrapEv+0x174>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL) {
    800061a0:	fff00793          	li	a5,-1
    800061a4:	03f79793          	slli	a5,a5,0x3f
    800061a8:	00978793          	addi	a5,a5,9
    800061ac:	1af48263          	beq	s1,a5,80006350 <_ZN5Riscv20handleSupervisorTrapEv+0x1ec>
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    }
    else {
        printString("sepc: "); printInteger(r_sepc()); printString("\n");
    800061b0:	00003517          	auipc	a0,0x3
    800061b4:	43850513          	addi	a0,a0,1080 # 800095e8 <CONSOLE_STATUS+0x5d8>
    800061b8:	00000097          	auipc	ra,0x0
    800061bc:	2ec080e7          	jalr	748(ra) # 800064a4 <_Z11printStringPKc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800061c0:	141027f3          	csrr	a5,sepc
    800061c4:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    800061c8:	fd843503          	ld	a0,-40(s0)
    800061cc:	00000097          	auipc	ra,0x0
    800061d0:	348080e7          	jalr	840(ra) # 80006514 <_Z12printIntegerm>
    800061d4:	00003517          	auipc	a0,0x3
    800061d8:	f4c50513          	addi	a0,a0,-180 # 80009120 <CONSOLE_STATUS+0x110>
    800061dc:	00000097          	auipc	ra,0x0
    800061e0:	2c8080e7          	jalr	712(ra) # 800064a4 <_Z11printStringPKc>
        printString("scause: "); printInteger(scause); printString("\n");
    800061e4:	00003517          	auipc	a0,0x3
    800061e8:	40c50513          	addi	a0,a0,1036 # 800095f0 <CONSOLE_STATUS+0x5e0>
    800061ec:	00000097          	auipc	ra,0x0
    800061f0:	2b8080e7          	jalr	696(ra) # 800064a4 <_Z11printStringPKc>
    800061f4:	00048513          	mv	a0,s1
    800061f8:	00000097          	auipc	ra,0x0
    800061fc:	31c080e7          	jalr	796(ra) # 80006514 <_Z12printIntegerm>
    80006200:	00003517          	auipc	a0,0x3
    80006204:	f2050513          	addi	a0,a0,-224 # 80009120 <CONSOLE_STATUS+0x110>
    80006208:	00000097          	auipc	ra,0x0
    8000620c:	29c080e7          	jalr	668(ra) # 800064a4 <_Z11printStringPKc>
        printString("ERROR: unexpected trap cause"); printString("\n");
    80006210:	00003517          	auipc	a0,0x3
    80006214:	3f050513          	addi	a0,a0,1008 # 80009600 <CONSOLE_STATUS+0x5f0>
    80006218:	00000097          	auipc	ra,0x0
    8000621c:	28c080e7          	jalr	652(ra) # 800064a4 <_Z11printStringPKc>
    80006220:	00003517          	auipc	a0,0x3
    80006224:	f0050513          	addi	a0,a0,-256 # 80009120 <CONSOLE_STATUS+0x110>
    80006228:	00000097          	auipc	ra,0x0
    8000622c:	27c080e7          	jalr	636(ra) # 800064a4 <_Z11printStringPKc>
    }
    80006230:	07813083          	ld	ra,120(sp)
    80006234:	07013403          	ld	s0,112(sp)
    80006238:	06813483          	ld	s1,104(sp)
    8000623c:	08010113          	addi	sp,sp,128
    80006240:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80006244:	141027f3          	csrr	a5,sepc
    80006248:	fcf43023          	sd	a5,-64(s0)
    return sepc;
    8000624c:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80006250:	00478793          	addi	a5,a5,4
    80006254:	f8f43023          	sd	a5,-128(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80006258:	100027f3          	csrr	a5,sstatus
    8000625c:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80006260:	fb843783          	ld	a5,-72(s0)
        uint64 volatile sstatus = r_sstatus();
    80006264:	f8f43423          	sd	a5,-120(s0)
        uint64 volatile sysCallNum; __asm__ volatile("sd a0, %0" : "=m" (sysCallNum));
    80006268:	f8a43823          	sd	a0,-112(s0)
        uint64 volatile arg1; __asm__ volatile("sd a1, %0" : "=m" (arg1));
    8000626c:	f8b43c23          	sd	a1,-104(s0)
        printString("\na0 = "); printInteger(sysCallNum);
    80006270:	00003517          	auipc	a0,0x3
    80006274:	36850513          	addi	a0,a0,872 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80006278:	00000097          	auipc	ra,0x0
    8000627c:	22c080e7          	jalr	556(ra) # 800064a4 <_Z11printStringPKc>
    80006280:	f9043503          	ld	a0,-112(s0)
    80006284:	00000097          	auipc	ra,0x0
    80006288:	290080e7          	jalr	656(ra) # 80006514 <_Z12printIntegerm>
        printString("\na1 = "); printInteger(arg1); printString("\n");
    8000628c:	00003517          	auipc	a0,0x3
    80006290:	35450513          	addi	a0,a0,852 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80006294:	00000097          	auipc	ra,0x0
    80006298:	210080e7          	jalr	528(ra) # 800064a4 <_Z11printStringPKc>
    8000629c:	f9843503          	ld	a0,-104(s0)
    800062a0:	00000097          	auipc	ra,0x0
    800062a4:	274080e7          	jalr	628(ra) # 80006514 <_Z12printIntegerm>
    800062a8:	00003517          	auipc	a0,0x3
    800062ac:	e7850513          	addi	a0,a0,-392 # 80009120 <CONSOLE_STATUS+0x110>
    800062b0:	00000097          	auipc	ra,0x0
    800062b4:	1f4080e7          	jalr	500(ra) # 800064a4 <_Z11printStringPKc>
        TCB::timeSliceCounter = 0;
    800062b8:	00004797          	auipc	a5,0x4
    800062bc:	4587b783          	ld	a5,1112(a5) # 8000a710 <_GLOBAL_OFFSET_TABLE_+0x28>
    800062c0:	0007b023          	sd	zero,0(a5)
        w_sstatus(sstatus);
    800062c4:	f8843783          	ld	a5,-120(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800062c8:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800062cc:	f8043783          	ld	a5,-128(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800062d0:	14179073          	csrw	sepc,a5
}
    800062d4:	f5dff06f          	j	80006230 <_ZN5Riscv20handleSupervisorTrapEv+0xcc>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800062d8:	00200793          	li	a5,2
    800062dc:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    800062e0:	00004717          	auipc	a4,0x4
    800062e4:	43073703          	ld	a4,1072(a4) # 8000a710 <_GLOBAL_OFFSET_TABLE_+0x28>
    800062e8:	00073783          	ld	a5,0(a4)
    800062ec:	00178793          	addi	a5,a5,1
    800062f0:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
    800062f4:	00004717          	auipc	a4,0x4
    800062f8:	43c73703          	ld	a4,1084(a4) # 8000a730 <_GLOBAL_OFFSET_TABLE_+0x48>
    800062fc:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80006300:	02073703          	ld	a4,32(a4)
    80006304:	f2e7e6e3          	bltu	a5,a4,80006230 <_ZN5Riscv20handleSupervisorTrapEv+0xcc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80006308:	141027f3          	csrr	a5,sepc
    8000630c:	fcf43823          	sd	a5,-48(s0)
    return sepc;
    80006310:	fd043783          	ld	a5,-48(s0)
            uint64 volatile sepc = r_sepc();
    80006314:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80006318:	100027f3          	csrr	a5,sstatus
    8000631c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80006320:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sstatus = r_sstatus();
    80006324:	faf43423          	sd	a5,-88(s0)
            TCB::timeSliceCounter = 0;
    80006328:	00004797          	auipc	a5,0x4
    8000632c:	3e87b783          	ld	a5,1000(a5) # 8000a710 <_GLOBAL_OFFSET_TABLE_+0x28>
    80006330:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80006334:	ffffb097          	auipc	ra,0xffffb
    80006338:	6e8080e7          	jalr	1768(ra) # 80001a1c <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    8000633c:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80006340:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80006344:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80006348:	14179073          	csrw	sepc,a5
}
    8000634c:	ee5ff06f          	j	80006230 <_ZN5Riscv20handleSupervisorTrapEv+0xcc>
        console_handler();
    80006350:	00002097          	auipc	ra,0x2
    80006354:	624080e7          	jalr	1572(ra) # 80008974 <console_handler>
    80006358:	ed9ff06f          	j	80006230 <_ZN5Riscv20handleSupervisorTrapEv+0xcc>

000000008000635c <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    8000635c:	ff010113          	addi	sp,sp,-16
    80006360:	00813423          	sd	s0,8(sp)
    80006364:	01010413          	addi	s0,sp,16
    80006368:	00100793          	li	a5,1
    8000636c:	00f50863          	beq	a0,a5,8000637c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80006370:	00813403          	ld	s0,8(sp)
    80006374:	01010113          	addi	sp,sp,16
    80006378:	00008067          	ret
    8000637c:	000107b7          	lui	a5,0x10
    80006380:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006384:	fef596e3          	bne	a1,a5,80006370 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80006388:	00004797          	auipc	a5,0x4
    8000638c:	44878793          	addi	a5,a5,1096 # 8000a7d0 <_ZN9Scheduler16readyThreadQueueE>
    80006390:	0007b023          	sd	zero,0(a5)
    80006394:	0007b423          	sd	zero,8(a5)
    80006398:	fd9ff06f          	j	80006370 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000639c <_ZN9Scheduler3getEv>:
{
    8000639c:	fe010113          	addi	sp,sp,-32
    800063a0:	00113c23          	sd	ra,24(sp)
    800063a4:	00813823          	sd	s0,16(sp)
    800063a8:	00913423          	sd	s1,8(sp)
    800063ac:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800063b0:	00004517          	auipc	a0,0x4
    800063b4:	42053503          	ld	a0,1056(a0) # 8000a7d0 <_ZN9Scheduler16readyThreadQueueE>
    800063b8:	04050263          	beqz	a0,800063fc <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    800063bc:	00853783          	ld	a5,8(a0)
    800063c0:	00004717          	auipc	a4,0x4
    800063c4:	40f73823          	sd	a5,1040(a4) # 8000a7d0 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800063c8:	02078463          	beqz	a5,800063f0 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    800063cc:	00053483          	ld	s1,0(a0)
        delete elem;
    800063d0:	ffffd097          	auipc	ra,0xffffd
    800063d4:	ce4080e7          	jalr	-796(ra) # 800030b4 <_ZdlPv>
}
    800063d8:	00048513          	mv	a0,s1
    800063dc:	01813083          	ld	ra,24(sp)
    800063e0:	01013403          	ld	s0,16(sp)
    800063e4:	00813483          	ld	s1,8(sp)
    800063e8:	02010113          	addi	sp,sp,32
    800063ec:	00008067          	ret
        if (!head) { tail = 0; }
    800063f0:	00004797          	auipc	a5,0x4
    800063f4:	3e07b423          	sd	zero,1000(a5) # 8000a7d8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800063f8:	fd5ff06f          	j	800063cc <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800063fc:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80006400:	fd9ff06f          	j	800063d8 <_ZN9Scheduler3getEv+0x3c>

0000000080006404 <_ZN9Scheduler3putEP3TCB>:
{
    80006404:	fe010113          	addi	sp,sp,-32
    80006408:	00113c23          	sd	ra,24(sp)
    8000640c:	00813823          	sd	s0,16(sp)
    80006410:	00913423          	sd	s1,8(sp)
    80006414:	02010413          	addi	s0,sp,32
    80006418:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    8000641c:	01000513          	li	a0,16
    80006420:	ffffd097          	auipc	ra,0xffffd
    80006424:	c44080e7          	jalr	-956(ra) # 80003064 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80006428:	00953023          	sd	s1,0(a0)
    8000642c:	00053423          	sd	zero,8(a0)
        if (tail)
    80006430:	00004797          	auipc	a5,0x4
    80006434:	3a87b783          	ld	a5,936(a5) # 8000a7d8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80006438:	02078263          	beqz	a5,8000645c <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    8000643c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80006440:	00004797          	auipc	a5,0x4
    80006444:	38a7bc23          	sd	a0,920(a5) # 8000a7d8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80006448:	01813083          	ld	ra,24(sp)
    8000644c:	01013403          	ld	s0,16(sp)
    80006450:	00813483          	ld	s1,8(sp)
    80006454:	02010113          	addi	sp,sp,32
    80006458:	00008067          	ret
            head = tail = elem;
    8000645c:	00004797          	auipc	a5,0x4
    80006460:	37478793          	addi	a5,a5,884 # 8000a7d0 <_ZN9Scheduler16readyThreadQueueE>
    80006464:	00a7b423          	sd	a0,8(a5)
    80006468:	00a7b023          	sd	a0,0(a5)
    8000646c:	fddff06f          	j	80006448 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080006470 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80006470:	ff010113          	addi	sp,sp,-16
    80006474:	00113423          	sd	ra,8(sp)
    80006478:	00813023          	sd	s0,0(sp)
    8000647c:	01010413          	addi	s0,sp,16
    80006480:	000105b7          	lui	a1,0x10
    80006484:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80006488:	00100513          	li	a0,1
    8000648c:	00000097          	auipc	ra,0x0
    80006490:	ed0080e7          	jalr	-304(ra) # 8000635c <_Z41__static_initialization_and_destruction_0ii>
    80006494:	00813083          	ld	ra,8(sp)
    80006498:	00013403          	ld	s0,0(sp)
    8000649c:	01010113          	addi	sp,sp,16
    800064a0:	00008067          	ret

00000000800064a4 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    800064a4:	fd010113          	addi	sp,sp,-48
    800064a8:	02113423          	sd	ra,40(sp)
    800064ac:	02813023          	sd	s0,32(sp)
    800064b0:	00913c23          	sd	s1,24(sp)
    800064b4:	01213823          	sd	s2,16(sp)
    800064b8:	03010413          	addi	s0,sp,48
    800064bc:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800064c0:	100027f3          	csrr	a5,sstatus
    800064c4:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800064c8:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800064cc:	00200793          	li	a5,2
    800064d0:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    while (*string != '\0') __putc(*string++);
    800064d4:	0004c503          	lbu	a0,0(s1)
    800064d8:	00050a63          	beqz	a0,800064ec <_Z11printStringPKc+0x48>
    800064dc:	00148493          	addi	s1,s1,1
    800064e0:	00002097          	auipc	ra,0x2
    800064e4:	420080e7          	jalr	1056(ra) # 80008900 <__putc>
    800064e8:	fedff06f          	j	800064d4 <_Z11printStringPKc+0x30>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800064ec:	0009091b          	sext.w	s2,s2
    800064f0:	00297913          	andi	s2,s2,2
    800064f4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800064f8:	10092073          	csrs	sstatus,s2
}
    800064fc:	02813083          	ld	ra,40(sp)
    80006500:	02013403          	ld	s0,32(sp)
    80006504:	01813483          	ld	s1,24(sp)
    80006508:	01013903          	ld	s2,16(sp)
    8000650c:	03010113          	addi	sp,sp,48
    80006510:	00008067          	ret

0000000080006514 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80006514:	fc010113          	addi	sp,sp,-64
    80006518:	02113c23          	sd	ra,56(sp)
    8000651c:	02813823          	sd	s0,48(sp)
    80006520:	02913423          	sd	s1,40(sp)
    80006524:	03213023          	sd	s2,32(sp)
    80006528:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000652c:	100027f3          	csrr	a5,sstatus
    80006530:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80006534:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80006538:	00200793          	li	a5,2
    8000653c:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    static char digits[] = "0123456789";
    char buf[16]; int i = 0; uint64 x = integer;
    int neg = (integer & ((uint64)1 << 63)) != 0;
    80006540:	00050593          	mv	a1,a0

    if (neg) x = ~integer + 1;
    80006544:	06054463          	bltz	a0,800065ac <_Z12printIntegerm+0x98>
{
    80006548:	00000493          	li	s1,0

    do buf[i++] = digits[x % 10];
    8000654c:	00a00713          	li	a4,10
    80006550:	02e57633          	remu	a2,a0,a4
    80006554:	00048693          	mv	a3,s1
    80006558:	0014849b          	addiw	s1,s1,1
    8000655c:	00003797          	auipc	a5,0x3
    80006560:	0c478793          	addi	a5,a5,196 # 80009620 <_ZZ12printIntegermE6digits>
    80006564:	00c787b3          	add	a5,a5,a2
    80006568:	0007c603          	lbu	a2,0(a5)
    8000656c:	fe040793          	addi	a5,s0,-32
    80006570:	00d787b3          	add	a5,a5,a3
    80006574:	fec78823          	sb	a2,-16(a5)
    while ((x /= 10) != 0);
    80006578:	00050613          	mv	a2,a0
    8000657c:	02e55533          	divu	a0,a0,a4
    80006580:	00900793          	li	a5,9
    80006584:	fcc7e4e3          	bltu	a5,a2,8000654c <_Z12printIntegerm+0x38>

    if (neg) buf[i++] = '-';
    80006588:	0205c663          	bltz	a1,800065b4 <_Z12printIntegerm+0xa0>
    while (--i >= 0) { __putc(buf[i]); }
    8000658c:	fff4849b          	addiw	s1,s1,-1
    80006590:	0204ce63          	bltz	s1,800065cc <_Z12printIntegerm+0xb8>
    80006594:	fe040793          	addi	a5,s0,-32
    80006598:	009787b3          	add	a5,a5,s1
    8000659c:	ff07c503          	lbu	a0,-16(a5)
    800065a0:	00002097          	auipc	ra,0x2
    800065a4:	360080e7          	jalr	864(ra) # 80008900 <__putc>
    800065a8:	fe5ff06f          	j	8000658c <_Z12printIntegerm+0x78>
    if (neg) x = ~integer + 1;
    800065ac:	40a00533          	neg	a0,a0
    800065b0:	f99ff06f          	j	80006548 <_Z12printIntegerm+0x34>
    if (neg) buf[i++] = '-';
    800065b4:	fe040793          	addi	a5,s0,-32
    800065b8:	009784b3          	add	s1,a5,s1
    800065bc:	02d00793          	li	a5,45
    800065c0:	fef48823          	sb	a5,-16(s1)
    800065c4:	0026849b          	addiw	s1,a3,2
    800065c8:	fc5ff06f          	j	8000658c <_Z12printIntegerm+0x78>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800065cc:	0009091b          	sext.w	s2,s2
    800065d0:	00297913          	andi	s2,s2,2
    800065d4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800065d8:	10092073          	csrs	sstatus,s2
}
    800065dc:	03813083          	ld	ra,56(sp)
    800065e0:	03013403          	ld	s0,48(sp)
    800065e4:	02813483          	ld	s1,40(sp)
    800065e8:	02013903          	ld	s2,32(sp)
    800065ec:	04010113          	addi	sp,sp,64
    800065f0:	00008067          	ret

00000000800065f4 <_Z12printIntegerh>:


void printInteger(uint8 integer)
{
    800065f4:	ff010113          	addi	sp,sp,-16
    800065f8:	00113423          	sd	ra,8(sp)
    800065fc:	00813023          	sd	s0,0(sp)
    80006600:	01010413          	addi	s0,sp,16
    printInteger((uint64)integer);
    80006604:	00000097          	auipc	ra,0x0
    80006608:	f10080e7          	jalr	-240(ra) # 80006514 <_Z12printIntegerm>
}
    8000660c:	00813083          	ld	ra,8(sp)
    80006610:	00013403          	ld	s0,0(sp)
    80006614:	01010113          	addi	sp,sp,16
    80006618:	00008067          	ret

000000008000661c <start>:
    8000661c:	ff010113          	addi	sp,sp,-16
    80006620:	00813423          	sd	s0,8(sp)
    80006624:	01010413          	addi	s0,sp,16
    80006628:	300027f3          	csrr	a5,mstatus
    8000662c:	ffffe737          	lui	a4,0xffffe
    80006630:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff2daf>
    80006634:	00e7f7b3          	and	a5,a5,a4
    80006638:	00001737          	lui	a4,0x1
    8000663c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006640:	00e7e7b3          	or	a5,a5,a4
    80006644:	30079073          	csrw	mstatus,a5
    80006648:	00000797          	auipc	a5,0x0
    8000664c:	16078793          	addi	a5,a5,352 # 800067a8 <system_main>
    80006650:	34179073          	csrw	mepc,a5
    80006654:	00000793          	li	a5,0
    80006658:	18079073          	csrw	satp,a5
    8000665c:	000107b7          	lui	a5,0x10
    80006660:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006664:	30279073          	csrw	medeleg,a5
    80006668:	30379073          	csrw	mideleg,a5
    8000666c:	104027f3          	csrr	a5,sie
    80006670:	2227e793          	ori	a5,a5,546
    80006674:	10479073          	csrw	sie,a5
    80006678:	fff00793          	li	a5,-1
    8000667c:	00a7d793          	srli	a5,a5,0xa
    80006680:	3b079073          	csrw	pmpaddr0,a5
    80006684:	00f00793          	li	a5,15
    80006688:	3a079073          	csrw	pmpcfg0,a5
    8000668c:	f14027f3          	csrr	a5,mhartid
    80006690:	0200c737          	lui	a4,0x200c
    80006694:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006698:	0007869b          	sext.w	a3,a5
    8000669c:	00269713          	slli	a4,a3,0x2
    800066a0:	000f4637          	lui	a2,0xf4
    800066a4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800066a8:	00d70733          	add	a4,a4,a3
    800066ac:	0037979b          	slliw	a5,a5,0x3
    800066b0:	020046b7          	lui	a3,0x2004
    800066b4:	00d787b3          	add	a5,a5,a3
    800066b8:	00c585b3          	add	a1,a1,a2
    800066bc:	00371693          	slli	a3,a4,0x3
    800066c0:	00004717          	auipc	a4,0x4
    800066c4:	12070713          	addi	a4,a4,288 # 8000a7e0 <timer_scratch>
    800066c8:	00b7b023          	sd	a1,0(a5)
    800066cc:	00d70733          	add	a4,a4,a3
    800066d0:	00f73c23          	sd	a5,24(a4)
    800066d4:	02c73023          	sd	a2,32(a4)
    800066d8:	34071073          	csrw	mscratch,a4
    800066dc:	00000797          	auipc	a5,0x0
    800066e0:	6e478793          	addi	a5,a5,1764 # 80006dc0 <timervec>
    800066e4:	30579073          	csrw	mtvec,a5
    800066e8:	300027f3          	csrr	a5,mstatus
    800066ec:	0087e793          	ori	a5,a5,8
    800066f0:	30079073          	csrw	mstatus,a5
    800066f4:	304027f3          	csrr	a5,mie
    800066f8:	0807e793          	ori	a5,a5,128
    800066fc:	30479073          	csrw	mie,a5
    80006700:	f14027f3          	csrr	a5,mhartid
    80006704:	0007879b          	sext.w	a5,a5
    80006708:	00078213          	mv	tp,a5
    8000670c:	30200073          	mret
    80006710:	00813403          	ld	s0,8(sp)
    80006714:	01010113          	addi	sp,sp,16
    80006718:	00008067          	ret

000000008000671c <timerinit>:
    8000671c:	ff010113          	addi	sp,sp,-16
    80006720:	00813423          	sd	s0,8(sp)
    80006724:	01010413          	addi	s0,sp,16
    80006728:	f14027f3          	csrr	a5,mhartid
    8000672c:	0200c737          	lui	a4,0x200c
    80006730:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006734:	0007869b          	sext.w	a3,a5
    80006738:	00269713          	slli	a4,a3,0x2
    8000673c:	000f4637          	lui	a2,0xf4
    80006740:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006744:	00d70733          	add	a4,a4,a3
    80006748:	0037979b          	slliw	a5,a5,0x3
    8000674c:	020046b7          	lui	a3,0x2004
    80006750:	00d787b3          	add	a5,a5,a3
    80006754:	00c585b3          	add	a1,a1,a2
    80006758:	00371693          	slli	a3,a4,0x3
    8000675c:	00004717          	auipc	a4,0x4
    80006760:	08470713          	addi	a4,a4,132 # 8000a7e0 <timer_scratch>
    80006764:	00b7b023          	sd	a1,0(a5)
    80006768:	00d70733          	add	a4,a4,a3
    8000676c:	00f73c23          	sd	a5,24(a4)
    80006770:	02c73023          	sd	a2,32(a4)
    80006774:	34071073          	csrw	mscratch,a4
    80006778:	00000797          	auipc	a5,0x0
    8000677c:	64878793          	addi	a5,a5,1608 # 80006dc0 <timervec>
    80006780:	30579073          	csrw	mtvec,a5
    80006784:	300027f3          	csrr	a5,mstatus
    80006788:	0087e793          	ori	a5,a5,8
    8000678c:	30079073          	csrw	mstatus,a5
    80006790:	304027f3          	csrr	a5,mie
    80006794:	0807e793          	ori	a5,a5,128
    80006798:	30479073          	csrw	mie,a5
    8000679c:	00813403          	ld	s0,8(sp)
    800067a0:	01010113          	addi	sp,sp,16
    800067a4:	00008067          	ret

00000000800067a8 <system_main>:
    800067a8:	fe010113          	addi	sp,sp,-32
    800067ac:	00813823          	sd	s0,16(sp)
    800067b0:	00913423          	sd	s1,8(sp)
    800067b4:	00113c23          	sd	ra,24(sp)
    800067b8:	02010413          	addi	s0,sp,32
    800067bc:	00000097          	auipc	ra,0x0
    800067c0:	0c4080e7          	jalr	196(ra) # 80006880 <cpuid>
    800067c4:	00004497          	auipc	s1,0x4
    800067c8:	fac48493          	addi	s1,s1,-84 # 8000a770 <started>
    800067cc:	02050263          	beqz	a0,800067f0 <system_main+0x48>
    800067d0:	0004a783          	lw	a5,0(s1)
    800067d4:	0007879b          	sext.w	a5,a5
    800067d8:	fe078ce3          	beqz	a5,800067d0 <system_main+0x28>
    800067dc:	0ff0000f          	fence
    800067e0:	00003517          	auipc	a0,0x3
    800067e4:	e8050513          	addi	a0,a0,-384 # 80009660 <_ZZ12printIntegermE6digits+0x40>
    800067e8:	00001097          	auipc	ra,0x1
    800067ec:	a74080e7          	jalr	-1420(ra) # 8000725c <panic>
    800067f0:	00001097          	auipc	ra,0x1
    800067f4:	9c8080e7          	jalr	-1592(ra) # 800071b8 <consoleinit>
    800067f8:	00001097          	auipc	ra,0x1
    800067fc:	154080e7          	jalr	340(ra) # 8000794c <printfinit>
    80006800:	00003517          	auipc	a0,0x3
    80006804:	92050513          	addi	a0,a0,-1760 # 80009120 <CONSOLE_STATUS+0x110>
    80006808:	00001097          	auipc	ra,0x1
    8000680c:	ab0080e7          	jalr	-1360(ra) # 800072b8 <__printf>
    80006810:	00003517          	auipc	a0,0x3
    80006814:	e2050513          	addi	a0,a0,-480 # 80009630 <_ZZ12printIntegermE6digits+0x10>
    80006818:	00001097          	auipc	ra,0x1
    8000681c:	aa0080e7          	jalr	-1376(ra) # 800072b8 <__printf>
    80006820:	00003517          	auipc	a0,0x3
    80006824:	90050513          	addi	a0,a0,-1792 # 80009120 <CONSOLE_STATUS+0x110>
    80006828:	00001097          	auipc	ra,0x1
    8000682c:	a90080e7          	jalr	-1392(ra) # 800072b8 <__printf>
    80006830:	00001097          	auipc	ra,0x1
    80006834:	4a8080e7          	jalr	1192(ra) # 80007cd8 <kinit>
    80006838:	00000097          	auipc	ra,0x0
    8000683c:	148080e7          	jalr	328(ra) # 80006980 <trapinit>
    80006840:	00000097          	auipc	ra,0x0
    80006844:	16c080e7          	jalr	364(ra) # 800069ac <trapinithart>
    80006848:	00000097          	auipc	ra,0x0
    8000684c:	5b8080e7          	jalr	1464(ra) # 80006e00 <plicinit>
    80006850:	00000097          	auipc	ra,0x0
    80006854:	5d8080e7          	jalr	1496(ra) # 80006e28 <plicinithart>
    80006858:	00000097          	auipc	ra,0x0
    8000685c:	078080e7          	jalr	120(ra) # 800068d0 <userinit>
    80006860:	0ff0000f          	fence
    80006864:	00100793          	li	a5,1
    80006868:	00003517          	auipc	a0,0x3
    8000686c:	de050513          	addi	a0,a0,-544 # 80009648 <_ZZ12printIntegermE6digits+0x28>
    80006870:	00f4a023          	sw	a5,0(s1)
    80006874:	00001097          	auipc	ra,0x1
    80006878:	a44080e7          	jalr	-1468(ra) # 800072b8 <__printf>
    8000687c:	0000006f          	j	8000687c <system_main+0xd4>

0000000080006880 <cpuid>:
    80006880:	ff010113          	addi	sp,sp,-16
    80006884:	00813423          	sd	s0,8(sp)
    80006888:	01010413          	addi	s0,sp,16
    8000688c:	00020513          	mv	a0,tp
    80006890:	00813403          	ld	s0,8(sp)
    80006894:	0005051b          	sext.w	a0,a0
    80006898:	01010113          	addi	sp,sp,16
    8000689c:	00008067          	ret

00000000800068a0 <mycpu>:
    800068a0:	ff010113          	addi	sp,sp,-16
    800068a4:	00813423          	sd	s0,8(sp)
    800068a8:	01010413          	addi	s0,sp,16
    800068ac:	00020793          	mv	a5,tp
    800068b0:	00813403          	ld	s0,8(sp)
    800068b4:	0007879b          	sext.w	a5,a5
    800068b8:	00779793          	slli	a5,a5,0x7
    800068bc:	00005517          	auipc	a0,0x5
    800068c0:	f5450513          	addi	a0,a0,-172 # 8000b810 <cpus>
    800068c4:	00f50533          	add	a0,a0,a5
    800068c8:	01010113          	addi	sp,sp,16
    800068cc:	00008067          	ret

00000000800068d0 <userinit>:
    800068d0:	ff010113          	addi	sp,sp,-16
    800068d4:	00813423          	sd	s0,8(sp)
    800068d8:	01010413          	addi	s0,sp,16
    800068dc:	00813403          	ld	s0,8(sp)
    800068e0:	01010113          	addi	sp,sp,16
    800068e4:	ffffb317          	auipc	t1,0xffffb
    800068e8:	efc30067          	jr	-260(t1) # 800017e0 <main>

00000000800068ec <either_copyout>:
    800068ec:	ff010113          	addi	sp,sp,-16
    800068f0:	00813023          	sd	s0,0(sp)
    800068f4:	00113423          	sd	ra,8(sp)
    800068f8:	01010413          	addi	s0,sp,16
    800068fc:	02051663          	bnez	a0,80006928 <either_copyout+0x3c>
    80006900:	00058513          	mv	a0,a1
    80006904:	00060593          	mv	a1,a2
    80006908:	0006861b          	sext.w	a2,a3
    8000690c:	00002097          	auipc	ra,0x2
    80006910:	c58080e7          	jalr	-936(ra) # 80008564 <__memmove>
    80006914:	00813083          	ld	ra,8(sp)
    80006918:	00013403          	ld	s0,0(sp)
    8000691c:	00000513          	li	a0,0
    80006920:	01010113          	addi	sp,sp,16
    80006924:	00008067          	ret
    80006928:	00003517          	auipc	a0,0x3
    8000692c:	d6050513          	addi	a0,a0,-672 # 80009688 <_ZZ12printIntegermE6digits+0x68>
    80006930:	00001097          	auipc	ra,0x1
    80006934:	92c080e7          	jalr	-1748(ra) # 8000725c <panic>

0000000080006938 <either_copyin>:
    80006938:	ff010113          	addi	sp,sp,-16
    8000693c:	00813023          	sd	s0,0(sp)
    80006940:	00113423          	sd	ra,8(sp)
    80006944:	01010413          	addi	s0,sp,16
    80006948:	02059463          	bnez	a1,80006970 <either_copyin+0x38>
    8000694c:	00060593          	mv	a1,a2
    80006950:	0006861b          	sext.w	a2,a3
    80006954:	00002097          	auipc	ra,0x2
    80006958:	c10080e7          	jalr	-1008(ra) # 80008564 <__memmove>
    8000695c:	00813083          	ld	ra,8(sp)
    80006960:	00013403          	ld	s0,0(sp)
    80006964:	00000513          	li	a0,0
    80006968:	01010113          	addi	sp,sp,16
    8000696c:	00008067          	ret
    80006970:	00003517          	auipc	a0,0x3
    80006974:	d4050513          	addi	a0,a0,-704 # 800096b0 <_ZZ12printIntegermE6digits+0x90>
    80006978:	00001097          	auipc	ra,0x1
    8000697c:	8e4080e7          	jalr	-1820(ra) # 8000725c <panic>

0000000080006980 <trapinit>:
    80006980:	ff010113          	addi	sp,sp,-16
    80006984:	00813423          	sd	s0,8(sp)
    80006988:	01010413          	addi	s0,sp,16
    8000698c:	00813403          	ld	s0,8(sp)
    80006990:	00003597          	auipc	a1,0x3
    80006994:	d4858593          	addi	a1,a1,-696 # 800096d8 <_ZZ12printIntegermE6digits+0xb8>
    80006998:	00005517          	auipc	a0,0x5
    8000699c:	ef850513          	addi	a0,a0,-264 # 8000b890 <tickslock>
    800069a0:	01010113          	addi	sp,sp,16
    800069a4:	00001317          	auipc	t1,0x1
    800069a8:	5c430067          	jr	1476(t1) # 80007f68 <initlock>

00000000800069ac <trapinithart>:
    800069ac:	ff010113          	addi	sp,sp,-16
    800069b0:	00813423          	sd	s0,8(sp)
    800069b4:	01010413          	addi	s0,sp,16
    800069b8:	00000797          	auipc	a5,0x0
    800069bc:	2f878793          	addi	a5,a5,760 # 80006cb0 <kernelvec>
    800069c0:	10579073          	csrw	stvec,a5
    800069c4:	00813403          	ld	s0,8(sp)
    800069c8:	01010113          	addi	sp,sp,16
    800069cc:	00008067          	ret

00000000800069d0 <usertrap>:
    800069d0:	ff010113          	addi	sp,sp,-16
    800069d4:	00813423          	sd	s0,8(sp)
    800069d8:	01010413          	addi	s0,sp,16
    800069dc:	00813403          	ld	s0,8(sp)
    800069e0:	01010113          	addi	sp,sp,16
    800069e4:	00008067          	ret

00000000800069e8 <usertrapret>:
    800069e8:	ff010113          	addi	sp,sp,-16
    800069ec:	00813423          	sd	s0,8(sp)
    800069f0:	01010413          	addi	s0,sp,16
    800069f4:	00813403          	ld	s0,8(sp)
    800069f8:	01010113          	addi	sp,sp,16
    800069fc:	00008067          	ret

0000000080006a00 <kerneltrap>:
    80006a00:	fe010113          	addi	sp,sp,-32
    80006a04:	00813823          	sd	s0,16(sp)
    80006a08:	00113c23          	sd	ra,24(sp)
    80006a0c:	00913423          	sd	s1,8(sp)
    80006a10:	02010413          	addi	s0,sp,32
    80006a14:	142025f3          	csrr	a1,scause
    80006a18:	100027f3          	csrr	a5,sstatus
    80006a1c:	0027f793          	andi	a5,a5,2
    80006a20:	10079c63          	bnez	a5,80006b38 <kerneltrap+0x138>
    80006a24:	142027f3          	csrr	a5,scause
    80006a28:	0207ce63          	bltz	a5,80006a64 <kerneltrap+0x64>
    80006a2c:	00003517          	auipc	a0,0x3
    80006a30:	cf450513          	addi	a0,a0,-780 # 80009720 <_ZZ12printIntegermE6digits+0x100>
    80006a34:	00001097          	auipc	ra,0x1
    80006a38:	884080e7          	jalr	-1916(ra) # 800072b8 <__printf>
    80006a3c:	141025f3          	csrr	a1,sepc
    80006a40:	14302673          	csrr	a2,stval
    80006a44:	00003517          	auipc	a0,0x3
    80006a48:	cec50513          	addi	a0,a0,-788 # 80009730 <_ZZ12printIntegermE6digits+0x110>
    80006a4c:	00001097          	auipc	ra,0x1
    80006a50:	86c080e7          	jalr	-1940(ra) # 800072b8 <__printf>
    80006a54:	00003517          	auipc	a0,0x3
    80006a58:	cf450513          	addi	a0,a0,-780 # 80009748 <_ZZ12printIntegermE6digits+0x128>
    80006a5c:	00001097          	auipc	ra,0x1
    80006a60:	800080e7          	jalr	-2048(ra) # 8000725c <panic>
    80006a64:	0ff7f713          	andi	a4,a5,255
    80006a68:	00900693          	li	a3,9
    80006a6c:	04d70063          	beq	a4,a3,80006aac <kerneltrap+0xac>
    80006a70:	fff00713          	li	a4,-1
    80006a74:	03f71713          	slli	a4,a4,0x3f
    80006a78:	00170713          	addi	a4,a4,1
    80006a7c:	fae798e3          	bne	a5,a4,80006a2c <kerneltrap+0x2c>
    80006a80:	00000097          	auipc	ra,0x0
    80006a84:	e00080e7          	jalr	-512(ra) # 80006880 <cpuid>
    80006a88:	06050663          	beqz	a0,80006af4 <kerneltrap+0xf4>
    80006a8c:	144027f3          	csrr	a5,sip
    80006a90:	ffd7f793          	andi	a5,a5,-3
    80006a94:	14479073          	csrw	sip,a5
    80006a98:	01813083          	ld	ra,24(sp)
    80006a9c:	01013403          	ld	s0,16(sp)
    80006aa0:	00813483          	ld	s1,8(sp)
    80006aa4:	02010113          	addi	sp,sp,32
    80006aa8:	00008067          	ret
    80006aac:	00000097          	auipc	ra,0x0
    80006ab0:	3c8080e7          	jalr	968(ra) # 80006e74 <plic_claim>
    80006ab4:	00a00793          	li	a5,10
    80006ab8:	00050493          	mv	s1,a0
    80006abc:	06f50863          	beq	a0,a5,80006b2c <kerneltrap+0x12c>
    80006ac0:	fc050ce3          	beqz	a0,80006a98 <kerneltrap+0x98>
    80006ac4:	00050593          	mv	a1,a0
    80006ac8:	00003517          	auipc	a0,0x3
    80006acc:	c3850513          	addi	a0,a0,-968 # 80009700 <_ZZ12printIntegermE6digits+0xe0>
    80006ad0:	00000097          	auipc	ra,0x0
    80006ad4:	7e8080e7          	jalr	2024(ra) # 800072b8 <__printf>
    80006ad8:	01013403          	ld	s0,16(sp)
    80006adc:	01813083          	ld	ra,24(sp)
    80006ae0:	00048513          	mv	a0,s1
    80006ae4:	00813483          	ld	s1,8(sp)
    80006ae8:	02010113          	addi	sp,sp,32
    80006aec:	00000317          	auipc	t1,0x0
    80006af0:	3c030067          	jr	960(t1) # 80006eac <plic_complete>
    80006af4:	00005517          	auipc	a0,0x5
    80006af8:	d9c50513          	addi	a0,a0,-612 # 8000b890 <tickslock>
    80006afc:	00001097          	auipc	ra,0x1
    80006b00:	490080e7          	jalr	1168(ra) # 80007f8c <acquire>
    80006b04:	00004717          	auipc	a4,0x4
    80006b08:	c7070713          	addi	a4,a4,-912 # 8000a774 <ticks>
    80006b0c:	00072783          	lw	a5,0(a4)
    80006b10:	00005517          	auipc	a0,0x5
    80006b14:	d8050513          	addi	a0,a0,-640 # 8000b890 <tickslock>
    80006b18:	0017879b          	addiw	a5,a5,1
    80006b1c:	00f72023          	sw	a5,0(a4)
    80006b20:	00001097          	auipc	ra,0x1
    80006b24:	538080e7          	jalr	1336(ra) # 80008058 <release>
    80006b28:	f65ff06f          	j	80006a8c <kerneltrap+0x8c>
    80006b2c:	00001097          	auipc	ra,0x1
    80006b30:	094080e7          	jalr	148(ra) # 80007bc0 <uartintr>
    80006b34:	fa5ff06f          	j	80006ad8 <kerneltrap+0xd8>
    80006b38:	00003517          	auipc	a0,0x3
    80006b3c:	ba850513          	addi	a0,a0,-1112 # 800096e0 <_ZZ12printIntegermE6digits+0xc0>
    80006b40:	00000097          	auipc	ra,0x0
    80006b44:	71c080e7          	jalr	1820(ra) # 8000725c <panic>

0000000080006b48 <clockintr>:
    80006b48:	fe010113          	addi	sp,sp,-32
    80006b4c:	00813823          	sd	s0,16(sp)
    80006b50:	00913423          	sd	s1,8(sp)
    80006b54:	00113c23          	sd	ra,24(sp)
    80006b58:	02010413          	addi	s0,sp,32
    80006b5c:	00005497          	auipc	s1,0x5
    80006b60:	d3448493          	addi	s1,s1,-716 # 8000b890 <tickslock>
    80006b64:	00048513          	mv	a0,s1
    80006b68:	00001097          	auipc	ra,0x1
    80006b6c:	424080e7          	jalr	1060(ra) # 80007f8c <acquire>
    80006b70:	00004717          	auipc	a4,0x4
    80006b74:	c0470713          	addi	a4,a4,-1020 # 8000a774 <ticks>
    80006b78:	00072783          	lw	a5,0(a4)
    80006b7c:	01013403          	ld	s0,16(sp)
    80006b80:	01813083          	ld	ra,24(sp)
    80006b84:	00048513          	mv	a0,s1
    80006b88:	0017879b          	addiw	a5,a5,1
    80006b8c:	00813483          	ld	s1,8(sp)
    80006b90:	00f72023          	sw	a5,0(a4)
    80006b94:	02010113          	addi	sp,sp,32
    80006b98:	00001317          	auipc	t1,0x1
    80006b9c:	4c030067          	jr	1216(t1) # 80008058 <release>

0000000080006ba0 <devintr>:
    80006ba0:	142027f3          	csrr	a5,scause
    80006ba4:	00000513          	li	a0,0
    80006ba8:	0007c463          	bltz	a5,80006bb0 <devintr+0x10>
    80006bac:	00008067          	ret
    80006bb0:	fe010113          	addi	sp,sp,-32
    80006bb4:	00813823          	sd	s0,16(sp)
    80006bb8:	00113c23          	sd	ra,24(sp)
    80006bbc:	00913423          	sd	s1,8(sp)
    80006bc0:	02010413          	addi	s0,sp,32
    80006bc4:	0ff7f713          	andi	a4,a5,255
    80006bc8:	00900693          	li	a3,9
    80006bcc:	04d70c63          	beq	a4,a3,80006c24 <devintr+0x84>
    80006bd0:	fff00713          	li	a4,-1
    80006bd4:	03f71713          	slli	a4,a4,0x3f
    80006bd8:	00170713          	addi	a4,a4,1
    80006bdc:	00e78c63          	beq	a5,a4,80006bf4 <devintr+0x54>
    80006be0:	01813083          	ld	ra,24(sp)
    80006be4:	01013403          	ld	s0,16(sp)
    80006be8:	00813483          	ld	s1,8(sp)
    80006bec:	02010113          	addi	sp,sp,32
    80006bf0:	00008067          	ret
    80006bf4:	00000097          	auipc	ra,0x0
    80006bf8:	c8c080e7          	jalr	-884(ra) # 80006880 <cpuid>
    80006bfc:	06050663          	beqz	a0,80006c68 <devintr+0xc8>
    80006c00:	144027f3          	csrr	a5,sip
    80006c04:	ffd7f793          	andi	a5,a5,-3
    80006c08:	14479073          	csrw	sip,a5
    80006c0c:	01813083          	ld	ra,24(sp)
    80006c10:	01013403          	ld	s0,16(sp)
    80006c14:	00813483          	ld	s1,8(sp)
    80006c18:	00200513          	li	a0,2
    80006c1c:	02010113          	addi	sp,sp,32
    80006c20:	00008067          	ret
    80006c24:	00000097          	auipc	ra,0x0
    80006c28:	250080e7          	jalr	592(ra) # 80006e74 <plic_claim>
    80006c2c:	00a00793          	li	a5,10
    80006c30:	00050493          	mv	s1,a0
    80006c34:	06f50663          	beq	a0,a5,80006ca0 <devintr+0x100>
    80006c38:	00100513          	li	a0,1
    80006c3c:	fa0482e3          	beqz	s1,80006be0 <devintr+0x40>
    80006c40:	00048593          	mv	a1,s1
    80006c44:	00003517          	auipc	a0,0x3
    80006c48:	abc50513          	addi	a0,a0,-1348 # 80009700 <_ZZ12printIntegermE6digits+0xe0>
    80006c4c:	00000097          	auipc	ra,0x0
    80006c50:	66c080e7          	jalr	1644(ra) # 800072b8 <__printf>
    80006c54:	00048513          	mv	a0,s1
    80006c58:	00000097          	auipc	ra,0x0
    80006c5c:	254080e7          	jalr	596(ra) # 80006eac <plic_complete>
    80006c60:	00100513          	li	a0,1
    80006c64:	f7dff06f          	j	80006be0 <devintr+0x40>
    80006c68:	00005517          	auipc	a0,0x5
    80006c6c:	c2850513          	addi	a0,a0,-984 # 8000b890 <tickslock>
    80006c70:	00001097          	auipc	ra,0x1
    80006c74:	31c080e7          	jalr	796(ra) # 80007f8c <acquire>
    80006c78:	00004717          	auipc	a4,0x4
    80006c7c:	afc70713          	addi	a4,a4,-1284 # 8000a774 <ticks>
    80006c80:	00072783          	lw	a5,0(a4)
    80006c84:	00005517          	auipc	a0,0x5
    80006c88:	c0c50513          	addi	a0,a0,-1012 # 8000b890 <tickslock>
    80006c8c:	0017879b          	addiw	a5,a5,1
    80006c90:	00f72023          	sw	a5,0(a4)
    80006c94:	00001097          	auipc	ra,0x1
    80006c98:	3c4080e7          	jalr	964(ra) # 80008058 <release>
    80006c9c:	f65ff06f          	j	80006c00 <devintr+0x60>
    80006ca0:	00001097          	auipc	ra,0x1
    80006ca4:	f20080e7          	jalr	-224(ra) # 80007bc0 <uartintr>
    80006ca8:	fadff06f          	j	80006c54 <devintr+0xb4>
    80006cac:	0000                	unimp
	...

0000000080006cb0 <kernelvec>:
    80006cb0:	f0010113          	addi	sp,sp,-256
    80006cb4:	00113023          	sd	ra,0(sp)
    80006cb8:	00213423          	sd	sp,8(sp)
    80006cbc:	00313823          	sd	gp,16(sp)
    80006cc0:	00413c23          	sd	tp,24(sp)
    80006cc4:	02513023          	sd	t0,32(sp)
    80006cc8:	02613423          	sd	t1,40(sp)
    80006ccc:	02713823          	sd	t2,48(sp)
    80006cd0:	02813c23          	sd	s0,56(sp)
    80006cd4:	04913023          	sd	s1,64(sp)
    80006cd8:	04a13423          	sd	a0,72(sp)
    80006cdc:	04b13823          	sd	a1,80(sp)
    80006ce0:	04c13c23          	sd	a2,88(sp)
    80006ce4:	06d13023          	sd	a3,96(sp)
    80006ce8:	06e13423          	sd	a4,104(sp)
    80006cec:	06f13823          	sd	a5,112(sp)
    80006cf0:	07013c23          	sd	a6,120(sp)
    80006cf4:	09113023          	sd	a7,128(sp)
    80006cf8:	09213423          	sd	s2,136(sp)
    80006cfc:	09313823          	sd	s3,144(sp)
    80006d00:	09413c23          	sd	s4,152(sp)
    80006d04:	0b513023          	sd	s5,160(sp)
    80006d08:	0b613423          	sd	s6,168(sp)
    80006d0c:	0b713823          	sd	s7,176(sp)
    80006d10:	0b813c23          	sd	s8,184(sp)
    80006d14:	0d913023          	sd	s9,192(sp)
    80006d18:	0da13423          	sd	s10,200(sp)
    80006d1c:	0db13823          	sd	s11,208(sp)
    80006d20:	0dc13c23          	sd	t3,216(sp)
    80006d24:	0fd13023          	sd	t4,224(sp)
    80006d28:	0fe13423          	sd	t5,232(sp)
    80006d2c:	0ff13823          	sd	t6,240(sp)
    80006d30:	cd1ff0ef          	jal	ra,80006a00 <kerneltrap>
    80006d34:	00013083          	ld	ra,0(sp)
    80006d38:	00813103          	ld	sp,8(sp)
    80006d3c:	01013183          	ld	gp,16(sp)
    80006d40:	02013283          	ld	t0,32(sp)
    80006d44:	02813303          	ld	t1,40(sp)
    80006d48:	03013383          	ld	t2,48(sp)
    80006d4c:	03813403          	ld	s0,56(sp)
    80006d50:	04013483          	ld	s1,64(sp)
    80006d54:	04813503          	ld	a0,72(sp)
    80006d58:	05013583          	ld	a1,80(sp)
    80006d5c:	05813603          	ld	a2,88(sp)
    80006d60:	06013683          	ld	a3,96(sp)
    80006d64:	06813703          	ld	a4,104(sp)
    80006d68:	07013783          	ld	a5,112(sp)
    80006d6c:	07813803          	ld	a6,120(sp)
    80006d70:	08013883          	ld	a7,128(sp)
    80006d74:	08813903          	ld	s2,136(sp)
    80006d78:	09013983          	ld	s3,144(sp)
    80006d7c:	09813a03          	ld	s4,152(sp)
    80006d80:	0a013a83          	ld	s5,160(sp)
    80006d84:	0a813b03          	ld	s6,168(sp)
    80006d88:	0b013b83          	ld	s7,176(sp)
    80006d8c:	0b813c03          	ld	s8,184(sp)
    80006d90:	0c013c83          	ld	s9,192(sp)
    80006d94:	0c813d03          	ld	s10,200(sp)
    80006d98:	0d013d83          	ld	s11,208(sp)
    80006d9c:	0d813e03          	ld	t3,216(sp)
    80006da0:	0e013e83          	ld	t4,224(sp)
    80006da4:	0e813f03          	ld	t5,232(sp)
    80006da8:	0f013f83          	ld	t6,240(sp)
    80006dac:	10010113          	addi	sp,sp,256
    80006db0:	10200073          	sret
    80006db4:	00000013          	nop
    80006db8:	00000013          	nop
    80006dbc:	00000013          	nop

0000000080006dc0 <timervec>:
    80006dc0:	34051573          	csrrw	a0,mscratch,a0
    80006dc4:	00b53023          	sd	a1,0(a0)
    80006dc8:	00c53423          	sd	a2,8(a0)
    80006dcc:	00d53823          	sd	a3,16(a0)
    80006dd0:	01853583          	ld	a1,24(a0)
    80006dd4:	02053603          	ld	a2,32(a0)
    80006dd8:	0005b683          	ld	a3,0(a1)
    80006ddc:	00c686b3          	add	a3,a3,a2
    80006de0:	00d5b023          	sd	a3,0(a1)
    80006de4:	00200593          	li	a1,2
    80006de8:	14459073          	csrw	sip,a1
    80006dec:	01053683          	ld	a3,16(a0)
    80006df0:	00853603          	ld	a2,8(a0)
    80006df4:	00053583          	ld	a1,0(a0)
    80006df8:	34051573          	csrrw	a0,mscratch,a0
    80006dfc:	30200073          	mret

0000000080006e00 <plicinit>:
    80006e00:	ff010113          	addi	sp,sp,-16
    80006e04:	00813423          	sd	s0,8(sp)
    80006e08:	01010413          	addi	s0,sp,16
    80006e0c:	00813403          	ld	s0,8(sp)
    80006e10:	0c0007b7          	lui	a5,0xc000
    80006e14:	00100713          	li	a4,1
    80006e18:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006e1c:	00e7a223          	sw	a4,4(a5)
    80006e20:	01010113          	addi	sp,sp,16
    80006e24:	00008067          	ret

0000000080006e28 <plicinithart>:
    80006e28:	ff010113          	addi	sp,sp,-16
    80006e2c:	00813023          	sd	s0,0(sp)
    80006e30:	00113423          	sd	ra,8(sp)
    80006e34:	01010413          	addi	s0,sp,16
    80006e38:	00000097          	auipc	ra,0x0
    80006e3c:	a48080e7          	jalr	-1464(ra) # 80006880 <cpuid>
    80006e40:	0085171b          	slliw	a4,a0,0x8
    80006e44:	0c0027b7          	lui	a5,0xc002
    80006e48:	00e787b3          	add	a5,a5,a4
    80006e4c:	40200713          	li	a4,1026
    80006e50:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006e54:	00813083          	ld	ra,8(sp)
    80006e58:	00013403          	ld	s0,0(sp)
    80006e5c:	00d5151b          	slliw	a0,a0,0xd
    80006e60:	0c2017b7          	lui	a5,0xc201
    80006e64:	00a78533          	add	a0,a5,a0
    80006e68:	00052023          	sw	zero,0(a0)
    80006e6c:	01010113          	addi	sp,sp,16
    80006e70:	00008067          	ret

0000000080006e74 <plic_claim>:
    80006e74:	ff010113          	addi	sp,sp,-16
    80006e78:	00813023          	sd	s0,0(sp)
    80006e7c:	00113423          	sd	ra,8(sp)
    80006e80:	01010413          	addi	s0,sp,16
    80006e84:	00000097          	auipc	ra,0x0
    80006e88:	9fc080e7          	jalr	-1540(ra) # 80006880 <cpuid>
    80006e8c:	00813083          	ld	ra,8(sp)
    80006e90:	00013403          	ld	s0,0(sp)
    80006e94:	00d5151b          	slliw	a0,a0,0xd
    80006e98:	0c2017b7          	lui	a5,0xc201
    80006e9c:	00a78533          	add	a0,a5,a0
    80006ea0:	00452503          	lw	a0,4(a0)
    80006ea4:	01010113          	addi	sp,sp,16
    80006ea8:	00008067          	ret

0000000080006eac <plic_complete>:
    80006eac:	fe010113          	addi	sp,sp,-32
    80006eb0:	00813823          	sd	s0,16(sp)
    80006eb4:	00913423          	sd	s1,8(sp)
    80006eb8:	00113c23          	sd	ra,24(sp)
    80006ebc:	02010413          	addi	s0,sp,32
    80006ec0:	00050493          	mv	s1,a0
    80006ec4:	00000097          	auipc	ra,0x0
    80006ec8:	9bc080e7          	jalr	-1604(ra) # 80006880 <cpuid>
    80006ecc:	01813083          	ld	ra,24(sp)
    80006ed0:	01013403          	ld	s0,16(sp)
    80006ed4:	00d5179b          	slliw	a5,a0,0xd
    80006ed8:	0c201737          	lui	a4,0xc201
    80006edc:	00f707b3          	add	a5,a4,a5
    80006ee0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006ee4:	00813483          	ld	s1,8(sp)
    80006ee8:	02010113          	addi	sp,sp,32
    80006eec:	00008067          	ret

0000000080006ef0 <consolewrite>:
    80006ef0:	fb010113          	addi	sp,sp,-80
    80006ef4:	04813023          	sd	s0,64(sp)
    80006ef8:	04113423          	sd	ra,72(sp)
    80006efc:	02913c23          	sd	s1,56(sp)
    80006f00:	03213823          	sd	s2,48(sp)
    80006f04:	03313423          	sd	s3,40(sp)
    80006f08:	03413023          	sd	s4,32(sp)
    80006f0c:	01513c23          	sd	s5,24(sp)
    80006f10:	05010413          	addi	s0,sp,80
    80006f14:	06c05c63          	blez	a2,80006f8c <consolewrite+0x9c>
    80006f18:	00060993          	mv	s3,a2
    80006f1c:	00050a13          	mv	s4,a0
    80006f20:	00058493          	mv	s1,a1
    80006f24:	00000913          	li	s2,0
    80006f28:	fff00a93          	li	s5,-1
    80006f2c:	01c0006f          	j	80006f48 <consolewrite+0x58>
    80006f30:	fbf44503          	lbu	a0,-65(s0)
    80006f34:	0019091b          	addiw	s2,s2,1
    80006f38:	00148493          	addi	s1,s1,1
    80006f3c:	00001097          	auipc	ra,0x1
    80006f40:	a9c080e7          	jalr	-1380(ra) # 800079d8 <uartputc>
    80006f44:	03298063          	beq	s3,s2,80006f64 <consolewrite+0x74>
    80006f48:	00048613          	mv	a2,s1
    80006f4c:	00100693          	li	a3,1
    80006f50:	000a0593          	mv	a1,s4
    80006f54:	fbf40513          	addi	a0,s0,-65
    80006f58:	00000097          	auipc	ra,0x0
    80006f5c:	9e0080e7          	jalr	-1568(ra) # 80006938 <either_copyin>
    80006f60:	fd5518e3          	bne	a0,s5,80006f30 <consolewrite+0x40>
    80006f64:	04813083          	ld	ra,72(sp)
    80006f68:	04013403          	ld	s0,64(sp)
    80006f6c:	03813483          	ld	s1,56(sp)
    80006f70:	02813983          	ld	s3,40(sp)
    80006f74:	02013a03          	ld	s4,32(sp)
    80006f78:	01813a83          	ld	s5,24(sp)
    80006f7c:	00090513          	mv	a0,s2
    80006f80:	03013903          	ld	s2,48(sp)
    80006f84:	05010113          	addi	sp,sp,80
    80006f88:	00008067          	ret
    80006f8c:	00000913          	li	s2,0
    80006f90:	fd5ff06f          	j	80006f64 <consolewrite+0x74>

0000000080006f94 <consoleread>:
    80006f94:	f9010113          	addi	sp,sp,-112
    80006f98:	06813023          	sd	s0,96(sp)
    80006f9c:	04913c23          	sd	s1,88(sp)
    80006fa0:	05213823          	sd	s2,80(sp)
    80006fa4:	05313423          	sd	s3,72(sp)
    80006fa8:	05413023          	sd	s4,64(sp)
    80006fac:	03513c23          	sd	s5,56(sp)
    80006fb0:	03613823          	sd	s6,48(sp)
    80006fb4:	03713423          	sd	s7,40(sp)
    80006fb8:	03813023          	sd	s8,32(sp)
    80006fbc:	06113423          	sd	ra,104(sp)
    80006fc0:	01913c23          	sd	s9,24(sp)
    80006fc4:	07010413          	addi	s0,sp,112
    80006fc8:	00060b93          	mv	s7,a2
    80006fcc:	00050913          	mv	s2,a0
    80006fd0:	00058c13          	mv	s8,a1
    80006fd4:	00060b1b          	sext.w	s6,a2
    80006fd8:	00005497          	auipc	s1,0x5
    80006fdc:	8e048493          	addi	s1,s1,-1824 # 8000b8b8 <cons>
    80006fe0:	00400993          	li	s3,4
    80006fe4:	fff00a13          	li	s4,-1
    80006fe8:	00a00a93          	li	s5,10
    80006fec:	05705e63          	blez	s7,80007048 <consoleread+0xb4>
    80006ff0:	09c4a703          	lw	a4,156(s1)
    80006ff4:	0984a783          	lw	a5,152(s1)
    80006ff8:	0007071b          	sext.w	a4,a4
    80006ffc:	08e78463          	beq	a5,a4,80007084 <consoleread+0xf0>
    80007000:	07f7f713          	andi	a4,a5,127
    80007004:	00e48733          	add	a4,s1,a4
    80007008:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000700c:	0017869b          	addiw	a3,a5,1
    80007010:	08d4ac23          	sw	a3,152(s1)
    80007014:	00070c9b          	sext.w	s9,a4
    80007018:	0b370663          	beq	a4,s3,800070c4 <consoleread+0x130>
    8000701c:	00100693          	li	a3,1
    80007020:	f9f40613          	addi	a2,s0,-97
    80007024:	000c0593          	mv	a1,s8
    80007028:	00090513          	mv	a0,s2
    8000702c:	f8e40fa3          	sb	a4,-97(s0)
    80007030:	00000097          	auipc	ra,0x0
    80007034:	8bc080e7          	jalr	-1860(ra) # 800068ec <either_copyout>
    80007038:	01450863          	beq	a0,s4,80007048 <consoleread+0xb4>
    8000703c:	001c0c13          	addi	s8,s8,1
    80007040:	fffb8b9b          	addiw	s7,s7,-1
    80007044:	fb5c94e3          	bne	s9,s5,80006fec <consoleread+0x58>
    80007048:	000b851b          	sext.w	a0,s7
    8000704c:	06813083          	ld	ra,104(sp)
    80007050:	06013403          	ld	s0,96(sp)
    80007054:	05813483          	ld	s1,88(sp)
    80007058:	05013903          	ld	s2,80(sp)
    8000705c:	04813983          	ld	s3,72(sp)
    80007060:	04013a03          	ld	s4,64(sp)
    80007064:	03813a83          	ld	s5,56(sp)
    80007068:	02813b83          	ld	s7,40(sp)
    8000706c:	02013c03          	ld	s8,32(sp)
    80007070:	01813c83          	ld	s9,24(sp)
    80007074:	40ab053b          	subw	a0,s6,a0
    80007078:	03013b03          	ld	s6,48(sp)
    8000707c:	07010113          	addi	sp,sp,112
    80007080:	00008067          	ret
    80007084:	00001097          	auipc	ra,0x1
    80007088:	1d8080e7          	jalr	472(ra) # 8000825c <push_on>
    8000708c:	0984a703          	lw	a4,152(s1)
    80007090:	09c4a783          	lw	a5,156(s1)
    80007094:	0007879b          	sext.w	a5,a5
    80007098:	fef70ce3          	beq	a4,a5,80007090 <consoleread+0xfc>
    8000709c:	00001097          	auipc	ra,0x1
    800070a0:	234080e7          	jalr	564(ra) # 800082d0 <pop_on>
    800070a4:	0984a783          	lw	a5,152(s1)
    800070a8:	07f7f713          	andi	a4,a5,127
    800070ac:	00e48733          	add	a4,s1,a4
    800070b0:	01874703          	lbu	a4,24(a4)
    800070b4:	0017869b          	addiw	a3,a5,1
    800070b8:	08d4ac23          	sw	a3,152(s1)
    800070bc:	00070c9b          	sext.w	s9,a4
    800070c0:	f5371ee3          	bne	a4,s3,8000701c <consoleread+0x88>
    800070c4:	000b851b          	sext.w	a0,s7
    800070c8:	f96bf2e3          	bgeu	s7,s6,8000704c <consoleread+0xb8>
    800070cc:	08f4ac23          	sw	a5,152(s1)
    800070d0:	f7dff06f          	j	8000704c <consoleread+0xb8>

00000000800070d4 <consputc>:
    800070d4:	10000793          	li	a5,256
    800070d8:	00f50663          	beq	a0,a5,800070e4 <consputc+0x10>
    800070dc:	00001317          	auipc	t1,0x1
    800070e0:	9f430067          	jr	-1548(t1) # 80007ad0 <uartputc_sync>
    800070e4:	ff010113          	addi	sp,sp,-16
    800070e8:	00113423          	sd	ra,8(sp)
    800070ec:	00813023          	sd	s0,0(sp)
    800070f0:	01010413          	addi	s0,sp,16
    800070f4:	00800513          	li	a0,8
    800070f8:	00001097          	auipc	ra,0x1
    800070fc:	9d8080e7          	jalr	-1576(ra) # 80007ad0 <uartputc_sync>
    80007100:	02000513          	li	a0,32
    80007104:	00001097          	auipc	ra,0x1
    80007108:	9cc080e7          	jalr	-1588(ra) # 80007ad0 <uartputc_sync>
    8000710c:	00013403          	ld	s0,0(sp)
    80007110:	00813083          	ld	ra,8(sp)
    80007114:	00800513          	li	a0,8
    80007118:	01010113          	addi	sp,sp,16
    8000711c:	00001317          	auipc	t1,0x1
    80007120:	9b430067          	jr	-1612(t1) # 80007ad0 <uartputc_sync>

0000000080007124 <consoleintr>:
    80007124:	fe010113          	addi	sp,sp,-32
    80007128:	00813823          	sd	s0,16(sp)
    8000712c:	00913423          	sd	s1,8(sp)
    80007130:	01213023          	sd	s2,0(sp)
    80007134:	00113c23          	sd	ra,24(sp)
    80007138:	02010413          	addi	s0,sp,32
    8000713c:	00004917          	auipc	s2,0x4
    80007140:	77c90913          	addi	s2,s2,1916 # 8000b8b8 <cons>
    80007144:	00050493          	mv	s1,a0
    80007148:	00090513          	mv	a0,s2
    8000714c:	00001097          	auipc	ra,0x1
    80007150:	e40080e7          	jalr	-448(ra) # 80007f8c <acquire>
    80007154:	02048c63          	beqz	s1,8000718c <consoleintr+0x68>
    80007158:	0a092783          	lw	a5,160(s2)
    8000715c:	09892703          	lw	a4,152(s2)
    80007160:	07f00693          	li	a3,127
    80007164:	40e7873b          	subw	a4,a5,a4
    80007168:	02e6e263          	bltu	a3,a4,8000718c <consoleintr+0x68>
    8000716c:	00d00713          	li	a4,13
    80007170:	04e48063          	beq	s1,a4,800071b0 <consoleintr+0x8c>
    80007174:	07f7f713          	andi	a4,a5,127
    80007178:	00e90733          	add	a4,s2,a4
    8000717c:	0017879b          	addiw	a5,a5,1
    80007180:	0af92023          	sw	a5,160(s2)
    80007184:	00970c23          	sb	s1,24(a4)
    80007188:	08f92e23          	sw	a5,156(s2)
    8000718c:	01013403          	ld	s0,16(sp)
    80007190:	01813083          	ld	ra,24(sp)
    80007194:	00813483          	ld	s1,8(sp)
    80007198:	00013903          	ld	s2,0(sp)
    8000719c:	00004517          	auipc	a0,0x4
    800071a0:	71c50513          	addi	a0,a0,1820 # 8000b8b8 <cons>
    800071a4:	02010113          	addi	sp,sp,32
    800071a8:	00001317          	auipc	t1,0x1
    800071ac:	eb030067          	jr	-336(t1) # 80008058 <release>
    800071b0:	00a00493          	li	s1,10
    800071b4:	fc1ff06f          	j	80007174 <consoleintr+0x50>

00000000800071b8 <consoleinit>:
    800071b8:	fe010113          	addi	sp,sp,-32
    800071bc:	00113c23          	sd	ra,24(sp)
    800071c0:	00813823          	sd	s0,16(sp)
    800071c4:	00913423          	sd	s1,8(sp)
    800071c8:	02010413          	addi	s0,sp,32
    800071cc:	00004497          	auipc	s1,0x4
    800071d0:	6ec48493          	addi	s1,s1,1772 # 8000b8b8 <cons>
    800071d4:	00048513          	mv	a0,s1
    800071d8:	00002597          	auipc	a1,0x2
    800071dc:	58058593          	addi	a1,a1,1408 # 80009758 <_ZZ12printIntegermE6digits+0x138>
    800071e0:	00001097          	auipc	ra,0x1
    800071e4:	d88080e7          	jalr	-632(ra) # 80007f68 <initlock>
    800071e8:	00000097          	auipc	ra,0x0
    800071ec:	7ac080e7          	jalr	1964(ra) # 80007994 <uartinit>
    800071f0:	01813083          	ld	ra,24(sp)
    800071f4:	01013403          	ld	s0,16(sp)
    800071f8:	00000797          	auipc	a5,0x0
    800071fc:	d9c78793          	addi	a5,a5,-612 # 80006f94 <consoleread>
    80007200:	0af4bc23          	sd	a5,184(s1)
    80007204:	00000797          	auipc	a5,0x0
    80007208:	cec78793          	addi	a5,a5,-788 # 80006ef0 <consolewrite>
    8000720c:	0cf4b023          	sd	a5,192(s1)
    80007210:	00813483          	ld	s1,8(sp)
    80007214:	02010113          	addi	sp,sp,32
    80007218:	00008067          	ret

000000008000721c <console_read>:
    8000721c:	ff010113          	addi	sp,sp,-16
    80007220:	00813423          	sd	s0,8(sp)
    80007224:	01010413          	addi	s0,sp,16
    80007228:	00813403          	ld	s0,8(sp)
    8000722c:	00004317          	auipc	t1,0x4
    80007230:	74433303          	ld	t1,1860(t1) # 8000b970 <devsw+0x10>
    80007234:	01010113          	addi	sp,sp,16
    80007238:	00030067          	jr	t1

000000008000723c <console_write>:
    8000723c:	ff010113          	addi	sp,sp,-16
    80007240:	00813423          	sd	s0,8(sp)
    80007244:	01010413          	addi	s0,sp,16
    80007248:	00813403          	ld	s0,8(sp)
    8000724c:	00004317          	auipc	t1,0x4
    80007250:	72c33303          	ld	t1,1836(t1) # 8000b978 <devsw+0x18>
    80007254:	01010113          	addi	sp,sp,16
    80007258:	00030067          	jr	t1

000000008000725c <panic>:
    8000725c:	fe010113          	addi	sp,sp,-32
    80007260:	00113c23          	sd	ra,24(sp)
    80007264:	00813823          	sd	s0,16(sp)
    80007268:	00913423          	sd	s1,8(sp)
    8000726c:	02010413          	addi	s0,sp,32
    80007270:	00050493          	mv	s1,a0
    80007274:	00002517          	auipc	a0,0x2
    80007278:	4ec50513          	addi	a0,a0,1260 # 80009760 <_ZZ12printIntegermE6digits+0x140>
    8000727c:	00004797          	auipc	a5,0x4
    80007280:	7807ae23          	sw	zero,1948(a5) # 8000ba18 <pr+0x18>
    80007284:	00000097          	auipc	ra,0x0
    80007288:	034080e7          	jalr	52(ra) # 800072b8 <__printf>
    8000728c:	00048513          	mv	a0,s1
    80007290:	00000097          	auipc	ra,0x0
    80007294:	028080e7          	jalr	40(ra) # 800072b8 <__printf>
    80007298:	00002517          	auipc	a0,0x2
    8000729c:	e8850513          	addi	a0,a0,-376 # 80009120 <CONSOLE_STATUS+0x110>
    800072a0:	00000097          	auipc	ra,0x0
    800072a4:	018080e7          	jalr	24(ra) # 800072b8 <__printf>
    800072a8:	00100793          	li	a5,1
    800072ac:	00003717          	auipc	a4,0x3
    800072b0:	4cf72623          	sw	a5,1228(a4) # 8000a778 <panicked>
    800072b4:	0000006f          	j	800072b4 <panic+0x58>

00000000800072b8 <__printf>:
    800072b8:	f3010113          	addi	sp,sp,-208
    800072bc:	08813023          	sd	s0,128(sp)
    800072c0:	07313423          	sd	s3,104(sp)
    800072c4:	09010413          	addi	s0,sp,144
    800072c8:	05813023          	sd	s8,64(sp)
    800072cc:	08113423          	sd	ra,136(sp)
    800072d0:	06913c23          	sd	s1,120(sp)
    800072d4:	07213823          	sd	s2,112(sp)
    800072d8:	07413023          	sd	s4,96(sp)
    800072dc:	05513c23          	sd	s5,88(sp)
    800072e0:	05613823          	sd	s6,80(sp)
    800072e4:	05713423          	sd	s7,72(sp)
    800072e8:	03913c23          	sd	s9,56(sp)
    800072ec:	03a13823          	sd	s10,48(sp)
    800072f0:	03b13423          	sd	s11,40(sp)
    800072f4:	00004317          	auipc	t1,0x4
    800072f8:	70c30313          	addi	t1,t1,1804 # 8000ba00 <pr>
    800072fc:	01832c03          	lw	s8,24(t1)
    80007300:	00b43423          	sd	a1,8(s0)
    80007304:	00c43823          	sd	a2,16(s0)
    80007308:	00d43c23          	sd	a3,24(s0)
    8000730c:	02e43023          	sd	a4,32(s0)
    80007310:	02f43423          	sd	a5,40(s0)
    80007314:	03043823          	sd	a6,48(s0)
    80007318:	03143c23          	sd	a7,56(s0)
    8000731c:	00050993          	mv	s3,a0
    80007320:	4a0c1663          	bnez	s8,800077cc <__printf+0x514>
    80007324:	60098c63          	beqz	s3,8000793c <__printf+0x684>
    80007328:	0009c503          	lbu	a0,0(s3)
    8000732c:	00840793          	addi	a5,s0,8
    80007330:	f6f43c23          	sd	a5,-136(s0)
    80007334:	00000493          	li	s1,0
    80007338:	22050063          	beqz	a0,80007558 <__printf+0x2a0>
    8000733c:	00002a37          	lui	s4,0x2
    80007340:	00018ab7          	lui	s5,0x18
    80007344:	000f4b37          	lui	s6,0xf4
    80007348:	00989bb7          	lui	s7,0x989
    8000734c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007350:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007354:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007358:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000735c:	00148c9b          	addiw	s9,s1,1
    80007360:	02500793          	li	a5,37
    80007364:	01998933          	add	s2,s3,s9
    80007368:	38f51263          	bne	a0,a5,800076ec <__printf+0x434>
    8000736c:	00094783          	lbu	a5,0(s2)
    80007370:	00078c9b          	sext.w	s9,a5
    80007374:	1e078263          	beqz	a5,80007558 <__printf+0x2a0>
    80007378:	0024849b          	addiw	s1,s1,2
    8000737c:	07000713          	li	a4,112
    80007380:	00998933          	add	s2,s3,s1
    80007384:	38e78a63          	beq	a5,a4,80007718 <__printf+0x460>
    80007388:	20f76863          	bltu	a4,a5,80007598 <__printf+0x2e0>
    8000738c:	42a78863          	beq	a5,a0,800077bc <__printf+0x504>
    80007390:	06400713          	li	a4,100
    80007394:	40e79663          	bne	a5,a4,800077a0 <__printf+0x4e8>
    80007398:	f7843783          	ld	a5,-136(s0)
    8000739c:	0007a603          	lw	a2,0(a5)
    800073a0:	00878793          	addi	a5,a5,8
    800073a4:	f6f43c23          	sd	a5,-136(s0)
    800073a8:	42064a63          	bltz	a2,800077dc <__printf+0x524>
    800073ac:	00a00713          	li	a4,10
    800073b0:	02e677bb          	remuw	a5,a2,a4
    800073b4:	00002d97          	auipc	s11,0x2
    800073b8:	3d4d8d93          	addi	s11,s11,980 # 80009788 <digits>
    800073bc:	00900593          	li	a1,9
    800073c0:	0006051b          	sext.w	a0,a2
    800073c4:	00000c93          	li	s9,0
    800073c8:	02079793          	slli	a5,a5,0x20
    800073cc:	0207d793          	srli	a5,a5,0x20
    800073d0:	00fd87b3          	add	a5,s11,a5
    800073d4:	0007c783          	lbu	a5,0(a5)
    800073d8:	02e656bb          	divuw	a3,a2,a4
    800073dc:	f8f40023          	sb	a5,-128(s0)
    800073e0:	14c5d863          	bge	a1,a2,80007530 <__printf+0x278>
    800073e4:	06300593          	li	a1,99
    800073e8:	00100c93          	li	s9,1
    800073ec:	02e6f7bb          	remuw	a5,a3,a4
    800073f0:	02079793          	slli	a5,a5,0x20
    800073f4:	0207d793          	srli	a5,a5,0x20
    800073f8:	00fd87b3          	add	a5,s11,a5
    800073fc:	0007c783          	lbu	a5,0(a5)
    80007400:	02e6d73b          	divuw	a4,a3,a4
    80007404:	f8f400a3          	sb	a5,-127(s0)
    80007408:	12a5f463          	bgeu	a1,a0,80007530 <__printf+0x278>
    8000740c:	00a00693          	li	a3,10
    80007410:	00900593          	li	a1,9
    80007414:	02d777bb          	remuw	a5,a4,a3
    80007418:	02079793          	slli	a5,a5,0x20
    8000741c:	0207d793          	srli	a5,a5,0x20
    80007420:	00fd87b3          	add	a5,s11,a5
    80007424:	0007c503          	lbu	a0,0(a5)
    80007428:	02d757bb          	divuw	a5,a4,a3
    8000742c:	f8a40123          	sb	a0,-126(s0)
    80007430:	48e5f263          	bgeu	a1,a4,800078b4 <__printf+0x5fc>
    80007434:	06300513          	li	a0,99
    80007438:	02d7f5bb          	remuw	a1,a5,a3
    8000743c:	02059593          	slli	a1,a1,0x20
    80007440:	0205d593          	srli	a1,a1,0x20
    80007444:	00bd85b3          	add	a1,s11,a1
    80007448:	0005c583          	lbu	a1,0(a1)
    8000744c:	02d7d7bb          	divuw	a5,a5,a3
    80007450:	f8b401a3          	sb	a1,-125(s0)
    80007454:	48e57263          	bgeu	a0,a4,800078d8 <__printf+0x620>
    80007458:	3e700513          	li	a0,999
    8000745c:	02d7f5bb          	remuw	a1,a5,a3
    80007460:	02059593          	slli	a1,a1,0x20
    80007464:	0205d593          	srli	a1,a1,0x20
    80007468:	00bd85b3          	add	a1,s11,a1
    8000746c:	0005c583          	lbu	a1,0(a1)
    80007470:	02d7d7bb          	divuw	a5,a5,a3
    80007474:	f8b40223          	sb	a1,-124(s0)
    80007478:	46e57663          	bgeu	a0,a4,800078e4 <__printf+0x62c>
    8000747c:	02d7f5bb          	remuw	a1,a5,a3
    80007480:	02059593          	slli	a1,a1,0x20
    80007484:	0205d593          	srli	a1,a1,0x20
    80007488:	00bd85b3          	add	a1,s11,a1
    8000748c:	0005c583          	lbu	a1,0(a1)
    80007490:	02d7d7bb          	divuw	a5,a5,a3
    80007494:	f8b402a3          	sb	a1,-123(s0)
    80007498:	46ea7863          	bgeu	s4,a4,80007908 <__printf+0x650>
    8000749c:	02d7f5bb          	remuw	a1,a5,a3
    800074a0:	02059593          	slli	a1,a1,0x20
    800074a4:	0205d593          	srli	a1,a1,0x20
    800074a8:	00bd85b3          	add	a1,s11,a1
    800074ac:	0005c583          	lbu	a1,0(a1)
    800074b0:	02d7d7bb          	divuw	a5,a5,a3
    800074b4:	f8b40323          	sb	a1,-122(s0)
    800074b8:	3eeaf863          	bgeu	s5,a4,800078a8 <__printf+0x5f0>
    800074bc:	02d7f5bb          	remuw	a1,a5,a3
    800074c0:	02059593          	slli	a1,a1,0x20
    800074c4:	0205d593          	srli	a1,a1,0x20
    800074c8:	00bd85b3          	add	a1,s11,a1
    800074cc:	0005c583          	lbu	a1,0(a1)
    800074d0:	02d7d7bb          	divuw	a5,a5,a3
    800074d4:	f8b403a3          	sb	a1,-121(s0)
    800074d8:	42eb7e63          	bgeu	s6,a4,80007914 <__printf+0x65c>
    800074dc:	02d7f5bb          	remuw	a1,a5,a3
    800074e0:	02059593          	slli	a1,a1,0x20
    800074e4:	0205d593          	srli	a1,a1,0x20
    800074e8:	00bd85b3          	add	a1,s11,a1
    800074ec:	0005c583          	lbu	a1,0(a1)
    800074f0:	02d7d7bb          	divuw	a5,a5,a3
    800074f4:	f8b40423          	sb	a1,-120(s0)
    800074f8:	42ebfc63          	bgeu	s7,a4,80007930 <__printf+0x678>
    800074fc:	02079793          	slli	a5,a5,0x20
    80007500:	0207d793          	srli	a5,a5,0x20
    80007504:	00fd8db3          	add	s11,s11,a5
    80007508:	000dc703          	lbu	a4,0(s11)
    8000750c:	00a00793          	li	a5,10
    80007510:	00900c93          	li	s9,9
    80007514:	f8e404a3          	sb	a4,-119(s0)
    80007518:	00065c63          	bgez	a2,80007530 <__printf+0x278>
    8000751c:	f9040713          	addi	a4,s0,-112
    80007520:	00f70733          	add	a4,a4,a5
    80007524:	02d00693          	li	a3,45
    80007528:	fed70823          	sb	a3,-16(a4)
    8000752c:	00078c93          	mv	s9,a5
    80007530:	f8040793          	addi	a5,s0,-128
    80007534:	01978cb3          	add	s9,a5,s9
    80007538:	f7f40d13          	addi	s10,s0,-129
    8000753c:	000cc503          	lbu	a0,0(s9)
    80007540:	fffc8c93          	addi	s9,s9,-1
    80007544:	00000097          	auipc	ra,0x0
    80007548:	b90080e7          	jalr	-1136(ra) # 800070d4 <consputc>
    8000754c:	ffac98e3          	bne	s9,s10,8000753c <__printf+0x284>
    80007550:	00094503          	lbu	a0,0(s2)
    80007554:	e00514e3          	bnez	a0,8000735c <__printf+0xa4>
    80007558:	1a0c1663          	bnez	s8,80007704 <__printf+0x44c>
    8000755c:	08813083          	ld	ra,136(sp)
    80007560:	08013403          	ld	s0,128(sp)
    80007564:	07813483          	ld	s1,120(sp)
    80007568:	07013903          	ld	s2,112(sp)
    8000756c:	06813983          	ld	s3,104(sp)
    80007570:	06013a03          	ld	s4,96(sp)
    80007574:	05813a83          	ld	s5,88(sp)
    80007578:	05013b03          	ld	s6,80(sp)
    8000757c:	04813b83          	ld	s7,72(sp)
    80007580:	04013c03          	ld	s8,64(sp)
    80007584:	03813c83          	ld	s9,56(sp)
    80007588:	03013d03          	ld	s10,48(sp)
    8000758c:	02813d83          	ld	s11,40(sp)
    80007590:	0d010113          	addi	sp,sp,208
    80007594:	00008067          	ret
    80007598:	07300713          	li	a4,115
    8000759c:	1ce78a63          	beq	a5,a4,80007770 <__printf+0x4b8>
    800075a0:	07800713          	li	a4,120
    800075a4:	1ee79e63          	bne	a5,a4,800077a0 <__printf+0x4e8>
    800075a8:	f7843783          	ld	a5,-136(s0)
    800075ac:	0007a703          	lw	a4,0(a5)
    800075b0:	00878793          	addi	a5,a5,8
    800075b4:	f6f43c23          	sd	a5,-136(s0)
    800075b8:	28074263          	bltz	a4,8000783c <__printf+0x584>
    800075bc:	00002d97          	auipc	s11,0x2
    800075c0:	1ccd8d93          	addi	s11,s11,460 # 80009788 <digits>
    800075c4:	00f77793          	andi	a5,a4,15
    800075c8:	00fd87b3          	add	a5,s11,a5
    800075cc:	0007c683          	lbu	a3,0(a5)
    800075d0:	00f00613          	li	a2,15
    800075d4:	0007079b          	sext.w	a5,a4
    800075d8:	f8d40023          	sb	a3,-128(s0)
    800075dc:	0047559b          	srliw	a1,a4,0x4
    800075e0:	0047569b          	srliw	a3,a4,0x4
    800075e4:	00000c93          	li	s9,0
    800075e8:	0ee65063          	bge	a2,a4,800076c8 <__printf+0x410>
    800075ec:	00f6f693          	andi	a3,a3,15
    800075f0:	00dd86b3          	add	a3,s11,a3
    800075f4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800075f8:	0087d79b          	srliw	a5,a5,0x8
    800075fc:	00100c93          	li	s9,1
    80007600:	f8d400a3          	sb	a3,-127(s0)
    80007604:	0cb67263          	bgeu	a2,a1,800076c8 <__printf+0x410>
    80007608:	00f7f693          	andi	a3,a5,15
    8000760c:	00dd86b3          	add	a3,s11,a3
    80007610:	0006c583          	lbu	a1,0(a3)
    80007614:	00f00613          	li	a2,15
    80007618:	0047d69b          	srliw	a3,a5,0x4
    8000761c:	f8b40123          	sb	a1,-126(s0)
    80007620:	0047d593          	srli	a1,a5,0x4
    80007624:	28f67e63          	bgeu	a2,a5,800078c0 <__printf+0x608>
    80007628:	00f6f693          	andi	a3,a3,15
    8000762c:	00dd86b3          	add	a3,s11,a3
    80007630:	0006c503          	lbu	a0,0(a3)
    80007634:	0087d813          	srli	a6,a5,0x8
    80007638:	0087d69b          	srliw	a3,a5,0x8
    8000763c:	f8a401a3          	sb	a0,-125(s0)
    80007640:	28b67663          	bgeu	a2,a1,800078cc <__printf+0x614>
    80007644:	00f6f693          	andi	a3,a3,15
    80007648:	00dd86b3          	add	a3,s11,a3
    8000764c:	0006c583          	lbu	a1,0(a3)
    80007650:	00c7d513          	srli	a0,a5,0xc
    80007654:	00c7d69b          	srliw	a3,a5,0xc
    80007658:	f8b40223          	sb	a1,-124(s0)
    8000765c:	29067a63          	bgeu	a2,a6,800078f0 <__printf+0x638>
    80007660:	00f6f693          	andi	a3,a3,15
    80007664:	00dd86b3          	add	a3,s11,a3
    80007668:	0006c583          	lbu	a1,0(a3)
    8000766c:	0107d813          	srli	a6,a5,0x10
    80007670:	0107d69b          	srliw	a3,a5,0x10
    80007674:	f8b402a3          	sb	a1,-123(s0)
    80007678:	28a67263          	bgeu	a2,a0,800078fc <__printf+0x644>
    8000767c:	00f6f693          	andi	a3,a3,15
    80007680:	00dd86b3          	add	a3,s11,a3
    80007684:	0006c683          	lbu	a3,0(a3)
    80007688:	0147d79b          	srliw	a5,a5,0x14
    8000768c:	f8d40323          	sb	a3,-122(s0)
    80007690:	21067663          	bgeu	a2,a6,8000789c <__printf+0x5e4>
    80007694:	02079793          	slli	a5,a5,0x20
    80007698:	0207d793          	srli	a5,a5,0x20
    8000769c:	00fd8db3          	add	s11,s11,a5
    800076a0:	000dc683          	lbu	a3,0(s11)
    800076a4:	00800793          	li	a5,8
    800076a8:	00700c93          	li	s9,7
    800076ac:	f8d403a3          	sb	a3,-121(s0)
    800076b0:	00075c63          	bgez	a4,800076c8 <__printf+0x410>
    800076b4:	f9040713          	addi	a4,s0,-112
    800076b8:	00f70733          	add	a4,a4,a5
    800076bc:	02d00693          	li	a3,45
    800076c0:	fed70823          	sb	a3,-16(a4)
    800076c4:	00078c93          	mv	s9,a5
    800076c8:	f8040793          	addi	a5,s0,-128
    800076cc:	01978cb3          	add	s9,a5,s9
    800076d0:	f7f40d13          	addi	s10,s0,-129
    800076d4:	000cc503          	lbu	a0,0(s9)
    800076d8:	fffc8c93          	addi	s9,s9,-1
    800076dc:	00000097          	auipc	ra,0x0
    800076e0:	9f8080e7          	jalr	-1544(ra) # 800070d4 <consputc>
    800076e4:	ff9d18e3          	bne	s10,s9,800076d4 <__printf+0x41c>
    800076e8:	0100006f          	j	800076f8 <__printf+0x440>
    800076ec:	00000097          	auipc	ra,0x0
    800076f0:	9e8080e7          	jalr	-1560(ra) # 800070d4 <consputc>
    800076f4:	000c8493          	mv	s1,s9
    800076f8:	00094503          	lbu	a0,0(s2)
    800076fc:	c60510e3          	bnez	a0,8000735c <__printf+0xa4>
    80007700:	e40c0ee3          	beqz	s8,8000755c <__printf+0x2a4>
    80007704:	00004517          	auipc	a0,0x4
    80007708:	2fc50513          	addi	a0,a0,764 # 8000ba00 <pr>
    8000770c:	00001097          	auipc	ra,0x1
    80007710:	94c080e7          	jalr	-1716(ra) # 80008058 <release>
    80007714:	e49ff06f          	j	8000755c <__printf+0x2a4>
    80007718:	f7843783          	ld	a5,-136(s0)
    8000771c:	03000513          	li	a0,48
    80007720:	01000d13          	li	s10,16
    80007724:	00878713          	addi	a4,a5,8
    80007728:	0007bc83          	ld	s9,0(a5)
    8000772c:	f6e43c23          	sd	a4,-136(s0)
    80007730:	00000097          	auipc	ra,0x0
    80007734:	9a4080e7          	jalr	-1628(ra) # 800070d4 <consputc>
    80007738:	07800513          	li	a0,120
    8000773c:	00000097          	auipc	ra,0x0
    80007740:	998080e7          	jalr	-1640(ra) # 800070d4 <consputc>
    80007744:	00002d97          	auipc	s11,0x2
    80007748:	044d8d93          	addi	s11,s11,68 # 80009788 <digits>
    8000774c:	03ccd793          	srli	a5,s9,0x3c
    80007750:	00fd87b3          	add	a5,s11,a5
    80007754:	0007c503          	lbu	a0,0(a5)
    80007758:	fffd0d1b          	addiw	s10,s10,-1
    8000775c:	004c9c93          	slli	s9,s9,0x4
    80007760:	00000097          	auipc	ra,0x0
    80007764:	974080e7          	jalr	-1676(ra) # 800070d4 <consputc>
    80007768:	fe0d12e3          	bnez	s10,8000774c <__printf+0x494>
    8000776c:	f8dff06f          	j	800076f8 <__printf+0x440>
    80007770:	f7843783          	ld	a5,-136(s0)
    80007774:	0007bc83          	ld	s9,0(a5)
    80007778:	00878793          	addi	a5,a5,8
    8000777c:	f6f43c23          	sd	a5,-136(s0)
    80007780:	000c9a63          	bnez	s9,80007794 <__printf+0x4dc>
    80007784:	1080006f          	j	8000788c <__printf+0x5d4>
    80007788:	001c8c93          	addi	s9,s9,1
    8000778c:	00000097          	auipc	ra,0x0
    80007790:	948080e7          	jalr	-1720(ra) # 800070d4 <consputc>
    80007794:	000cc503          	lbu	a0,0(s9)
    80007798:	fe0518e3          	bnez	a0,80007788 <__printf+0x4d0>
    8000779c:	f5dff06f          	j	800076f8 <__printf+0x440>
    800077a0:	02500513          	li	a0,37
    800077a4:	00000097          	auipc	ra,0x0
    800077a8:	930080e7          	jalr	-1744(ra) # 800070d4 <consputc>
    800077ac:	000c8513          	mv	a0,s9
    800077b0:	00000097          	auipc	ra,0x0
    800077b4:	924080e7          	jalr	-1756(ra) # 800070d4 <consputc>
    800077b8:	f41ff06f          	j	800076f8 <__printf+0x440>
    800077bc:	02500513          	li	a0,37
    800077c0:	00000097          	auipc	ra,0x0
    800077c4:	914080e7          	jalr	-1772(ra) # 800070d4 <consputc>
    800077c8:	f31ff06f          	j	800076f8 <__printf+0x440>
    800077cc:	00030513          	mv	a0,t1
    800077d0:	00000097          	auipc	ra,0x0
    800077d4:	7bc080e7          	jalr	1980(ra) # 80007f8c <acquire>
    800077d8:	b4dff06f          	j	80007324 <__printf+0x6c>
    800077dc:	40c0053b          	negw	a0,a2
    800077e0:	00a00713          	li	a4,10
    800077e4:	02e576bb          	remuw	a3,a0,a4
    800077e8:	00002d97          	auipc	s11,0x2
    800077ec:	fa0d8d93          	addi	s11,s11,-96 # 80009788 <digits>
    800077f0:	ff700593          	li	a1,-9
    800077f4:	02069693          	slli	a3,a3,0x20
    800077f8:	0206d693          	srli	a3,a3,0x20
    800077fc:	00dd86b3          	add	a3,s11,a3
    80007800:	0006c683          	lbu	a3,0(a3)
    80007804:	02e557bb          	divuw	a5,a0,a4
    80007808:	f8d40023          	sb	a3,-128(s0)
    8000780c:	10b65e63          	bge	a2,a1,80007928 <__printf+0x670>
    80007810:	06300593          	li	a1,99
    80007814:	02e7f6bb          	remuw	a3,a5,a4
    80007818:	02069693          	slli	a3,a3,0x20
    8000781c:	0206d693          	srli	a3,a3,0x20
    80007820:	00dd86b3          	add	a3,s11,a3
    80007824:	0006c683          	lbu	a3,0(a3)
    80007828:	02e7d73b          	divuw	a4,a5,a4
    8000782c:	00200793          	li	a5,2
    80007830:	f8d400a3          	sb	a3,-127(s0)
    80007834:	bca5ece3          	bltu	a1,a0,8000740c <__printf+0x154>
    80007838:	ce5ff06f          	j	8000751c <__printf+0x264>
    8000783c:	40e007bb          	negw	a5,a4
    80007840:	00002d97          	auipc	s11,0x2
    80007844:	f48d8d93          	addi	s11,s11,-184 # 80009788 <digits>
    80007848:	00f7f693          	andi	a3,a5,15
    8000784c:	00dd86b3          	add	a3,s11,a3
    80007850:	0006c583          	lbu	a1,0(a3)
    80007854:	ff100613          	li	a2,-15
    80007858:	0047d69b          	srliw	a3,a5,0x4
    8000785c:	f8b40023          	sb	a1,-128(s0)
    80007860:	0047d59b          	srliw	a1,a5,0x4
    80007864:	0ac75e63          	bge	a4,a2,80007920 <__printf+0x668>
    80007868:	00f6f693          	andi	a3,a3,15
    8000786c:	00dd86b3          	add	a3,s11,a3
    80007870:	0006c603          	lbu	a2,0(a3)
    80007874:	00f00693          	li	a3,15
    80007878:	0087d79b          	srliw	a5,a5,0x8
    8000787c:	f8c400a3          	sb	a2,-127(s0)
    80007880:	d8b6e4e3          	bltu	a3,a1,80007608 <__printf+0x350>
    80007884:	00200793          	li	a5,2
    80007888:	e2dff06f          	j	800076b4 <__printf+0x3fc>
    8000788c:	00002c97          	auipc	s9,0x2
    80007890:	edcc8c93          	addi	s9,s9,-292 # 80009768 <_ZZ12printIntegermE6digits+0x148>
    80007894:	02800513          	li	a0,40
    80007898:	ef1ff06f          	j	80007788 <__printf+0x4d0>
    8000789c:	00700793          	li	a5,7
    800078a0:	00600c93          	li	s9,6
    800078a4:	e0dff06f          	j	800076b0 <__printf+0x3f8>
    800078a8:	00700793          	li	a5,7
    800078ac:	00600c93          	li	s9,6
    800078b0:	c69ff06f          	j	80007518 <__printf+0x260>
    800078b4:	00300793          	li	a5,3
    800078b8:	00200c93          	li	s9,2
    800078bc:	c5dff06f          	j	80007518 <__printf+0x260>
    800078c0:	00300793          	li	a5,3
    800078c4:	00200c93          	li	s9,2
    800078c8:	de9ff06f          	j	800076b0 <__printf+0x3f8>
    800078cc:	00400793          	li	a5,4
    800078d0:	00300c93          	li	s9,3
    800078d4:	dddff06f          	j	800076b0 <__printf+0x3f8>
    800078d8:	00400793          	li	a5,4
    800078dc:	00300c93          	li	s9,3
    800078e0:	c39ff06f          	j	80007518 <__printf+0x260>
    800078e4:	00500793          	li	a5,5
    800078e8:	00400c93          	li	s9,4
    800078ec:	c2dff06f          	j	80007518 <__printf+0x260>
    800078f0:	00500793          	li	a5,5
    800078f4:	00400c93          	li	s9,4
    800078f8:	db9ff06f          	j	800076b0 <__printf+0x3f8>
    800078fc:	00600793          	li	a5,6
    80007900:	00500c93          	li	s9,5
    80007904:	dadff06f          	j	800076b0 <__printf+0x3f8>
    80007908:	00600793          	li	a5,6
    8000790c:	00500c93          	li	s9,5
    80007910:	c09ff06f          	j	80007518 <__printf+0x260>
    80007914:	00800793          	li	a5,8
    80007918:	00700c93          	li	s9,7
    8000791c:	bfdff06f          	j	80007518 <__printf+0x260>
    80007920:	00100793          	li	a5,1
    80007924:	d91ff06f          	j	800076b4 <__printf+0x3fc>
    80007928:	00100793          	li	a5,1
    8000792c:	bf1ff06f          	j	8000751c <__printf+0x264>
    80007930:	00900793          	li	a5,9
    80007934:	00800c93          	li	s9,8
    80007938:	be1ff06f          	j	80007518 <__printf+0x260>
    8000793c:	00002517          	auipc	a0,0x2
    80007940:	e3450513          	addi	a0,a0,-460 # 80009770 <_ZZ12printIntegermE6digits+0x150>
    80007944:	00000097          	auipc	ra,0x0
    80007948:	918080e7          	jalr	-1768(ra) # 8000725c <panic>

000000008000794c <printfinit>:
    8000794c:	fe010113          	addi	sp,sp,-32
    80007950:	00813823          	sd	s0,16(sp)
    80007954:	00913423          	sd	s1,8(sp)
    80007958:	00113c23          	sd	ra,24(sp)
    8000795c:	02010413          	addi	s0,sp,32
    80007960:	00004497          	auipc	s1,0x4
    80007964:	0a048493          	addi	s1,s1,160 # 8000ba00 <pr>
    80007968:	00048513          	mv	a0,s1
    8000796c:	00002597          	auipc	a1,0x2
    80007970:	e1458593          	addi	a1,a1,-492 # 80009780 <_ZZ12printIntegermE6digits+0x160>
    80007974:	00000097          	auipc	ra,0x0
    80007978:	5f4080e7          	jalr	1524(ra) # 80007f68 <initlock>
    8000797c:	01813083          	ld	ra,24(sp)
    80007980:	01013403          	ld	s0,16(sp)
    80007984:	0004ac23          	sw	zero,24(s1)
    80007988:	00813483          	ld	s1,8(sp)
    8000798c:	02010113          	addi	sp,sp,32
    80007990:	00008067          	ret

0000000080007994 <uartinit>:
    80007994:	ff010113          	addi	sp,sp,-16
    80007998:	00813423          	sd	s0,8(sp)
    8000799c:	01010413          	addi	s0,sp,16
    800079a0:	100007b7          	lui	a5,0x10000
    800079a4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800079a8:	f8000713          	li	a4,-128
    800079ac:	00e781a3          	sb	a4,3(a5)
    800079b0:	00300713          	li	a4,3
    800079b4:	00e78023          	sb	a4,0(a5)
    800079b8:	000780a3          	sb	zero,1(a5)
    800079bc:	00e781a3          	sb	a4,3(a5)
    800079c0:	00700693          	li	a3,7
    800079c4:	00d78123          	sb	a3,2(a5)
    800079c8:	00e780a3          	sb	a4,1(a5)
    800079cc:	00813403          	ld	s0,8(sp)
    800079d0:	01010113          	addi	sp,sp,16
    800079d4:	00008067          	ret

00000000800079d8 <uartputc>:
    800079d8:	00003797          	auipc	a5,0x3
    800079dc:	da07a783          	lw	a5,-608(a5) # 8000a778 <panicked>
    800079e0:	00078463          	beqz	a5,800079e8 <uartputc+0x10>
    800079e4:	0000006f          	j	800079e4 <uartputc+0xc>
    800079e8:	fd010113          	addi	sp,sp,-48
    800079ec:	02813023          	sd	s0,32(sp)
    800079f0:	00913c23          	sd	s1,24(sp)
    800079f4:	01213823          	sd	s2,16(sp)
    800079f8:	01313423          	sd	s3,8(sp)
    800079fc:	02113423          	sd	ra,40(sp)
    80007a00:	03010413          	addi	s0,sp,48
    80007a04:	00003917          	auipc	s2,0x3
    80007a08:	d7c90913          	addi	s2,s2,-644 # 8000a780 <uart_tx_r>
    80007a0c:	00093783          	ld	a5,0(s2)
    80007a10:	00003497          	auipc	s1,0x3
    80007a14:	d7848493          	addi	s1,s1,-648 # 8000a788 <uart_tx_w>
    80007a18:	0004b703          	ld	a4,0(s1)
    80007a1c:	02078693          	addi	a3,a5,32
    80007a20:	00050993          	mv	s3,a0
    80007a24:	02e69c63          	bne	a3,a4,80007a5c <uartputc+0x84>
    80007a28:	00001097          	auipc	ra,0x1
    80007a2c:	834080e7          	jalr	-1996(ra) # 8000825c <push_on>
    80007a30:	00093783          	ld	a5,0(s2)
    80007a34:	0004b703          	ld	a4,0(s1)
    80007a38:	02078793          	addi	a5,a5,32
    80007a3c:	00e79463          	bne	a5,a4,80007a44 <uartputc+0x6c>
    80007a40:	0000006f          	j	80007a40 <uartputc+0x68>
    80007a44:	00001097          	auipc	ra,0x1
    80007a48:	88c080e7          	jalr	-1908(ra) # 800082d0 <pop_on>
    80007a4c:	00093783          	ld	a5,0(s2)
    80007a50:	0004b703          	ld	a4,0(s1)
    80007a54:	02078693          	addi	a3,a5,32
    80007a58:	fce688e3          	beq	a3,a4,80007a28 <uartputc+0x50>
    80007a5c:	01f77693          	andi	a3,a4,31
    80007a60:	00004597          	auipc	a1,0x4
    80007a64:	fc058593          	addi	a1,a1,-64 # 8000ba20 <uart_tx_buf>
    80007a68:	00d586b3          	add	a3,a1,a3
    80007a6c:	00170713          	addi	a4,a4,1
    80007a70:	01368023          	sb	s3,0(a3)
    80007a74:	00e4b023          	sd	a4,0(s1)
    80007a78:	10000637          	lui	a2,0x10000
    80007a7c:	02f71063          	bne	a4,a5,80007a9c <uartputc+0xc4>
    80007a80:	0340006f          	j	80007ab4 <uartputc+0xdc>
    80007a84:	00074703          	lbu	a4,0(a4)
    80007a88:	00f93023          	sd	a5,0(s2)
    80007a8c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007a90:	00093783          	ld	a5,0(s2)
    80007a94:	0004b703          	ld	a4,0(s1)
    80007a98:	00f70e63          	beq	a4,a5,80007ab4 <uartputc+0xdc>
    80007a9c:	00564683          	lbu	a3,5(a2)
    80007aa0:	01f7f713          	andi	a4,a5,31
    80007aa4:	00e58733          	add	a4,a1,a4
    80007aa8:	0206f693          	andi	a3,a3,32
    80007aac:	00178793          	addi	a5,a5,1
    80007ab0:	fc069ae3          	bnez	a3,80007a84 <uartputc+0xac>
    80007ab4:	02813083          	ld	ra,40(sp)
    80007ab8:	02013403          	ld	s0,32(sp)
    80007abc:	01813483          	ld	s1,24(sp)
    80007ac0:	01013903          	ld	s2,16(sp)
    80007ac4:	00813983          	ld	s3,8(sp)
    80007ac8:	03010113          	addi	sp,sp,48
    80007acc:	00008067          	ret

0000000080007ad0 <uartputc_sync>:
    80007ad0:	ff010113          	addi	sp,sp,-16
    80007ad4:	00813423          	sd	s0,8(sp)
    80007ad8:	01010413          	addi	s0,sp,16
    80007adc:	00003717          	auipc	a4,0x3
    80007ae0:	c9c72703          	lw	a4,-868(a4) # 8000a778 <panicked>
    80007ae4:	02071663          	bnez	a4,80007b10 <uartputc_sync+0x40>
    80007ae8:	00050793          	mv	a5,a0
    80007aec:	100006b7          	lui	a3,0x10000
    80007af0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007af4:	02077713          	andi	a4,a4,32
    80007af8:	fe070ce3          	beqz	a4,80007af0 <uartputc_sync+0x20>
    80007afc:	0ff7f793          	andi	a5,a5,255
    80007b00:	00f68023          	sb	a5,0(a3)
    80007b04:	00813403          	ld	s0,8(sp)
    80007b08:	01010113          	addi	sp,sp,16
    80007b0c:	00008067          	ret
    80007b10:	0000006f          	j	80007b10 <uartputc_sync+0x40>

0000000080007b14 <uartstart>:
    80007b14:	ff010113          	addi	sp,sp,-16
    80007b18:	00813423          	sd	s0,8(sp)
    80007b1c:	01010413          	addi	s0,sp,16
    80007b20:	00003617          	auipc	a2,0x3
    80007b24:	c6060613          	addi	a2,a2,-928 # 8000a780 <uart_tx_r>
    80007b28:	00003517          	auipc	a0,0x3
    80007b2c:	c6050513          	addi	a0,a0,-928 # 8000a788 <uart_tx_w>
    80007b30:	00063783          	ld	a5,0(a2)
    80007b34:	00053703          	ld	a4,0(a0)
    80007b38:	04f70263          	beq	a4,a5,80007b7c <uartstart+0x68>
    80007b3c:	100005b7          	lui	a1,0x10000
    80007b40:	00004817          	auipc	a6,0x4
    80007b44:	ee080813          	addi	a6,a6,-288 # 8000ba20 <uart_tx_buf>
    80007b48:	01c0006f          	j	80007b64 <uartstart+0x50>
    80007b4c:	0006c703          	lbu	a4,0(a3)
    80007b50:	00f63023          	sd	a5,0(a2)
    80007b54:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007b58:	00063783          	ld	a5,0(a2)
    80007b5c:	00053703          	ld	a4,0(a0)
    80007b60:	00f70e63          	beq	a4,a5,80007b7c <uartstart+0x68>
    80007b64:	01f7f713          	andi	a4,a5,31
    80007b68:	00e806b3          	add	a3,a6,a4
    80007b6c:	0055c703          	lbu	a4,5(a1)
    80007b70:	00178793          	addi	a5,a5,1
    80007b74:	02077713          	andi	a4,a4,32
    80007b78:	fc071ae3          	bnez	a4,80007b4c <uartstart+0x38>
    80007b7c:	00813403          	ld	s0,8(sp)
    80007b80:	01010113          	addi	sp,sp,16
    80007b84:	00008067          	ret

0000000080007b88 <uartgetc>:
    80007b88:	ff010113          	addi	sp,sp,-16
    80007b8c:	00813423          	sd	s0,8(sp)
    80007b90:	01010413          	addi	s0,sp,16
    80007b94:	10000737          	lui	a4,0x10000
    80007b98:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007b9c:	0017f793          	andi	a5,a5,1
    80007ba0:	00078c63          	beqz	a5,80007bb8 <uartgetc+0x30>
    80007ba4:	00074503          	lbu	a0,0(a4)
    80007ba8:	0ff57513          	andi	a0,a0,255
    80007bac:	00813403          	ld	s0,8(sp)
    80007bb0:	01010113          	addi	sp,sp,16
    80007bb4:	00008067          	ret
    80007bb8:	fff00513          	li	a0,-1
    80007bbc:	ff1ff06f          	j	80007bac <uartgetc+0x24>

0000000080007bc0 <uartintr>:
    80007bc0:	100007b7          	lui	a5,0x10000
    80007bc4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007bc8:	0017f793          	andi	a5,a5,1
    80007bcc:	0a078463          	beqz	a5,80007c74 <uartintr+0xb4>
    80007bd0:	fe010113          	addi	sp,sp,-32
    80007bd4:	00813823          	sd	s0,16(sp)
    80007bd8:	00913423          	sd	s1,8(sp)
    80007bdc:	00113c23          	sd	ra,24(sp)
    80007be0:	02010413          	addi	s0,sp,32
    80007be4:	100004b7          	lui	s1,0x10000
    80007be8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007bec:	0ff57513          	andi	a0,a0,255
    80007bf0:	fffff097          	auipc	ra,0xfffff
    80007bf4:	534080e7          	jalr	1332(ra) # 80007124 <consoleintr>
    80007bf8:	0054c783          	lbu	a5,5(s1)
    80007bfc:	0017f793          	andi	a5,a5,1
    80007c00:	fe0794e3          	bnez	a5,80007be8 <uartintr+0x28>
    80007c04:	00003617          	auipc	a2,0x3
    80007c08:	b7c60613          	addi	a2,a2,-1156 # 8000a780 <uart_tx_r>
    80007c0c:	00003517          	auipc	a0,0x3
    80007c10:	b7c50513          	addi	a0,a0,-1156 # 8000a788 <uart_tx_w>
    80007c14:	00063783          	ld	a5,0(a2)
    80007c18:	00053703          	ld	a4,0(a0)
    80007c1c:	04f70263          	beq	a4,a5,80007c60 <uartintr+0xa0>
    80007c20:	100005b7          	lui	a1,0x10000
    80007c24:	00004817          	auipc	a6,0x4
    80007c28:	dfc80813          	addi	a6,a6,-516 # 8000ba20 <uart_tx_buf>
    80007c2c:	01c0006f          	j	80007c48 <uartintr+0x88>
    80007c30:	0006c703          	lbu	a4,0(a3)
    80007c34:	00f63023          	sd	a5,0(a2)
    80007c38:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007c3c:	00063783          	ld	a5,0(a2)
    80007c40:	00053703          	ld	a4,0(a0)
    80007c44:	00f70e63          	beq	a4,a5,80007c60 <uartintr+0xa0>
    80007c48:	01f7f713          	andi	a4,a5,31
    80007c4c:	00e806b3          	add	a3,a6,a4
    80007c50:	0055c703          	lbu	a4,5(a1)
    80007c54:	00178793          	addi	a5,a5,1
    80007c58:	02077713          	andi	a4,a4,32
    80007c5c:	fc071ae3          	bnez	a4,80007c30 <uartintr+0x70>
    80007c60:	01813083          	ld	ra,24(sp)
    80007c64:	01013403          	ld	s0,16(sp)
    80007c68:	00813483          	ld	s1,8(sp)
    80007c6c:	02010113          	addi	sp,sp,32
    80007c70:	00008067          	ret
    80007c74:	00003617          	auipc	a2,0x3
    80007c78:	b0c60613          	addi	a2,a2,-1268 # 8000a780 <uart_tx_r>
    80007c7c:	00003517          	auipc	a0,0x3
    80007c80:	b0c50513          	addi	a0,a0,-1268 # 8000a788 <uart_tx_w>
    80007c84:	00063783          	ld	a5,0(a2)
    80007c88:	00053703          	ld	a4,0(a0)
    80007c8c:	04f70263          	beq	a4,a5,80007cd0 <uartintr+0x110>
    80007c90:	100005b7          	lui	a1,0x10000
    80007c94:	00004817          	auipc	a6,0x4
    80007c98:	d8c80813          	addi	a6,a6,-628 # 8000ba20 <uart_tx_buf>
    80007c9c:	01c0006f          	j	80007cb8 <uartintr+0xf8>
    80007ca0:	0006c703          	lbu	a4,0(a3)
    80007ca4:	00f63023          	sd	a5,0(a2)
    80007ca8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007cac:	00063783          	ld	a5,0(a2)
    80007cb0:	00053703          	ld	a4,0(a0)
    80007cb4:	02f70063          	beq	a4,a5,80007cd4 <uartintr+0x114>
    80007cb8:	01f7f713          	andi	a4,a5,31
    80007cbc:	00e806b3          	add	a3,a6,a4
    80007cc0:	0055c703          	lbu	a4,5(a1)
    80007cc4:	00178793          	addi	a5,a5,1
    80007cc8:	02077713          	andi	a4,a4,32
    80007ccc:	fc071ae3          	bnez	a4,80007ca0 <uartintr+0xe0>
    80007cd0:	00008067          	ret
    80007cd4:	00008067          	ret

0000000080007cd8 <kinit>:
    80007cd8:	fc010113          	addi	sp,sp,-64
    80007cdc:	02913423          	sd	s1,40(sp)
    80007ce0:	fffff7b7          	lui	a5,0xfffff
    80007ce4:	00005497          	auipc	s1,0x5
    80007ce8:	d6b48493          	addi	s1,s1,-661 # 8000ca4f <end+0xfff>
    80007cec:	02813823          	sd	s0,48(sp)
    80007cf0:	01313c23          	sd	s3,24(sp)
    80007cf4:	00f4f4b3          	and	s1,s1,a5
    80007cf8:	02113c23          	sd	ra,56(sp)
    80007cfc:	03213023          	sd	s2,32(sp)
    80007d00:	01413823          	sd	s4,16(sp)
    80007d04:	01513423          	sd	s5,8(sp)
    80007d08:	04010413          	addi	s0,sp,64
    80007d0c:	000017b7          	lui	a5,0x1
    80007d10:	01100993          	li	s3,17
    80007d14:	00f487b3          	add	a5,s1,a5
    80007d18:	01b99993          	slli	s3,s3,0x1b
    80007d1c:	06f9e063          	bltu	s3,a5,80007d7c <kinit+0xa4>
    80007d20:	00004a97          	auipc	s5,0x4
    80007d24:	d30a8a93          	addi	s5,s5,-720 # 8000ba50 <end>
    80007d28:	0754ec63          	bltu	s1,s5,80007da0 <kinit+0xc8>
    80007d2c:	0734fa63          	bgeu	s1,s3,80007da0 <kinit+0xc8>
    80007d30:	00088a37          	lui	s4,0x88
    80007d34:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007d38:	00003917          	auipc	s2,0x3
    80007d3c:	a5890913          	addi	s2,s2,-1448 # 8000a790 <kmem>
    80007d40:	00ca1a13          	slli	s4,s4,0xc
    80007d44:	0140006f          	j	80007d58 <kinit+0x80>
    80007d48:	000017b7          	lui	a5,0x1
    80007d4c:	00f484b3          	add	s1,s1,a5
    80007d50:	0554e863          	bltu	s1,s5,80007da0 <kinit+0xc8>
    80007d54:	0534f663          	bgeu	s1,s3,80007da0 <kinit+0xc8>
    80007d58:	00001637          	lui	a2,0x1
    80007d5c:	00100593          	li	a1,1
    80007d60:	00048513          	mv	a0,s1
    80007d64:	00000097          	auipc	ra,0x0
    80007d68:	5e4080e7          	jalr	1508(ra) # 80008348 <__memset>
    80007d6c:	00093783          	ld	a5,0(s2)
    80007d70:	00f4b023          	sd	a5,0(s1)
    80007d74:	00993023          	sd	s1,0(s2)
    80007d78:	fd4498e3          	bne	s1,s4,80007d48 <kinit+0x70>
    80007d7c:	03813083          	ld	ra,56(sp)
    80007d80:	03013403          	ld	s0,48(sp)
    80007d84:	02813483          	ld	s1,40(sp)
    80007d88:	02013903          	ld	s2,32(sp)
    80007d8c:	01813983          	ld	s3,24(sp)
    80007d90:	01013a03          	ld	s4,16(sp)
    80007d94:	00813a83          	ld	s5,8(sp)
    80007d98:	04010113          	addi	sp,sp,64
    80007d9c:	00008067          	ret
    80007da0:	00002517          	auipc	a0,0x2
    80007da4:	a0050513          	addi	a0,a0,-1536 # 800097a0 <digits+0x18>
    80007da8:	fffff097          	auipc	ra,0xfffff
    80007dac:	4b4080e7          	jalr	1204(ra) # 8000725c <panic>

0000000080007db0 <freerange>:
    80007db0:	fc010113          	addi	sp,sp,-64
    80007db4:	000017b7          	lui	a5,0x1
    80007db8:	02913423          	sd	s1,40(sp)
    80007dbc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007dc0:	009504b3          	add	s1,a0,s1
    80007dc4:	fffff537          	lui	a0,0xfffff
    80007dc8:	02813823          	sd	s0,48(sp)
    80007dcc:	02113c23          	sd	ra,56(sp)
    80007dd0:	03213023          	sd	s2,32(sp)
    80007dd4:	01313c23          	sd	s3,24(sp)
    80007dd8:	01413823          	sd	s4,16(sp)
    80007ddc:	01513423          	sd	s5,8(sp)
    80007de0:	01613023          	sd	s6,0(sp)
    80007de4:	04010413          	addi	s0,sp,64
    80007de8:	00a4f4b3          	and	s1,s1,a0
    80007dec:	00f487b3          	add	a5,s1,a5
    80007df0:	06f5e463          	bltu	a1,a5,80007e58 <freerange+0xa8>
    80007df4:	00004a97          	auipc	s5,0x4
    80007df8:	c5ca8a93          	addi	s5,s5,-932 # 8000ba50 <end>
    80007dfc:	0954e263          	bltu	s1,s5,80007e80 <freerange+0xd0>
    80007e00:	01100993          	li	s3,17
    80007e04:	01b99993          	slli	s3,s3,0x1b
    80007e08:	0734fc63          	bgeu	s1,s3,80007e80 <freerange+0xd0>
    80007e0c:	00058a13          	mv	s4,a1
    80007e10:	00003917          	auipc	s2,0x3
    80007e14:	98090913          	addi	s2,s2,-1664 # 8000a790 <kmem>
    80007e18:	00002b37          	lui	s6,0x2
    80007e1c:	0140006f          	j	80007e30 <freerange+0x80>
    80007e20:	000017b7          	lui	a5,0x1
    80007e24:	00f484b3          	add	s1,s1,a5
    80007e28:	0554ec63          	bltu	s1,s5,80007e80 <freerange+0xd0>
    80007e2c:	0534fa63          	bgeu	s1,s3,80007e80 <freerange+0xd0>
    80007e30:	00001637          	lui	a2,0x1
    80007e34:	00100593          	li	a1,1
    80007e38:	00048513          	mv	a0,s1
    80007e3c:	00000097          	auipc	ra,0x0
    80007e40:	50c080e7          	jalr	1292(ra) # 80008348 <__memset>
    80007e44:	00093703          	ld	a4,0(s2)
    80007e48:	016487b3          	add	a5,s1,s6
    80007e4c:	00e4b023          	sd	a4,0(s1)
    80007e50:	00993023          	sd	s1,0(s2)
    80007e54:	fcfa76e3          	bgeu	s4,a5,80007e20 <freerange+0x70>
    80007e58:	03813083          	ld	ra,56(sp)
    80007e5c:	03013403          	ld	s0,48(sp)
    80007e60:	02813483          	ld	s1,40(sp)
    80007e64:	02013903          	ld	s2,32(sp)
    80007e68:	01813983          	ld	s3,24(sp)
    80007e6c:	01013a03          	ld	s4,16(sp)
    80007e70:	00813a83          	ld	s5,8(sp)
    80007e74:	00013b03          	ld	s6,0(sp)
    80007e78:	04010113          	addi	sp,sp,64
    80007e7c:	00008067          	ret
    80007e80:	00002517          	auipc	a0,0x2
    80007e84:	92050513          	addi	a0,a0,-1760 # 800097a0 <digits+0x18>
    80007e88:	fffff097          	auipc	ra,0xfffff
    80007e8c:	3d4080e7          	jalr	980(ra) # 8000725c <panic>

0000000080007e90 <kfree>:
    80007e90:	fe010113          	addi	sp,sp,-32
    80007e94:	00813823          	sd	s0,16(sp)
    80007e98:	00113c23          	sd	ra,24(sp)
    80007e9c:	00913423          	sd	s1,8(sp)
    80007ea0:	02010413          	addi	s0,sp,32
    80007ea4:	03451793          	slli	a5,a0,0x34
    80007ea8:	04079c63          	bnez	a5,80007f00 <kfree+0x70>
    80007eac:	00004797          	auipc	a5,0x4
    80007eb0:	ba478793          	addi	a5,a5,-1116 # 8000ba50 <end>
    80007eb4:	00050493          	mv	s1,a0
    80007eb8:	04f56463          	bltu	a0,a5,80007f00 <kfree+0x70>
    80007ebc:	01100793          	li	a5,17
    80007ec0:	01b79793          	slli	a5,a5,0x1b
    80007ec4:	02f57e63          	bgeu	a0,a5,80007f00 <kfree+0x70>
    80007ec8:	00001637          	lui	a2,0x1
    80007ecc:	00100593          	li	a1,1
    80007ed0:	00000097          	auipc	ra,0x0
    80007ed4:	478080e7          	jalr	1144(ra) # 80008348 <__memset>
    80007ed8:	00003797          	auipc	a5,0x3
    80007edc:	8b878793          	addi	a5,a5,-1864 # 8000a790 <kmem>
    80007ee0:	0007b703          	ld	a4,0(a5)
    80007ee4:	01813083          	ld	ra,24(sp)
    80007ee8:	01013403          	ld	s0,16(sp)
    80007eec:	00e4b023          	sd	a4,0(s1)
    80007ef0:	0097b023          	sd	s1,0(a5)
    80007ef4:	00813483          	ld	s1,8(sp)
    80007ef8:	02010113          	addi	sp,sp,32
    80007efc:	00008067          	ret
    80007f00:	00002517          	auipc	a0,0x2
    80007f04:	8a050513          	addi	a0,a0,-1888 # 800097a0 <digits+0x18>
    80007f08:	fffff097          	auipc	ra,0xfffff
    80007f0c:	354080e7          	jalr	852(ra) # 8000725c <panic>

0000000080007f10 <kalloc>:
    80007f10:	fe010113          	addi	sp,sp,-32
    80007f14:	00813823          	sd	s0,16(sp)
    80007f18:	00913423          	sd	s1,8(sp)
    80007f1c:	00113c23          	sd	ra,24(sp)
    80007f20:	02010413          	addi	s0,sp,32
    80007f24:	00003797          	auipc	a5,0x3
    80007f28:	86c78793          	addi	a5,a5,-1940 # 8000a790 <kmem>
    80007f2c:	0007b483          	ld	s1,0(a5)
    80007f30:	02048063          	beqz	s1,80007f50 <kalloc+0x40>
    80007f34:	0004b703          	ld	a4,0(s1)
    80007f38:	00001637          	lui	a2,0x1
    80007f3c:	00500593          	li	a1,5
    80007f40:	00048513          	mv	a0,s1
    80007f44:	00e7b023          	sd	a4,0(a5)
    80007f48:	00000097          	auipc	ra,0x0
    80007f4c:	400080e7          	jalr	1024(ra) # 80008348 <__memset>
    80007f50:	01813083          	ld	ra,24(sp)
    80007f54:	01013403          	ld	s0,16(sp)
    80007f58:	00048513          	mv	a0,s1
    80007f5c:	00813483          	ld	s1,8(sp)
    80007f60:	02010113          	addi	sp,sp,32
    80007f64:	00008067          	ret

0000000080007f68 <initlock>:
    80007f68:	ff010113          	addi	sp,sp,-16
    80007f6c:	00813423          	sd	s0,8(sp)
    80007f70:	01010413          	addi	s0,sp,16
    80007f74:	00813403          	ld	s0,8(sp)
    80007f78:	00b53423          	sd	a1,8(a0)
    80007f7c:	00052023          	sw	zero,0(a0)
    80007f80:	00053823          	sd	zero,16(a0)
    80007f84:	01010113          	addi	sp,sp,16
    80007f88:	00008067          	ret

0000000080007f8c <acquire>:
    80007f8c:	fe010113          	addi	sp,sp,-32
    80007f90:	00813823          	sd	s0,16(sp)
    80007f94:	00913423          	sd	s1,8(sp)
    80007f98:	00113c23          	sd	ra,24(sp)
    80007f9c:	01213023          	sd	s2,0(sp)
    80007fa0:	02010413          	addi	s0,sp,32
    80007fa4:	00050493          	mv	s1,a0
    80007fa8:	10002973          	csrr	s2,sstatus
    80007fac:	100027f3          	csrr	a5,sstatus
    80007fb0:	ffd7f793          	andi	a5,a5,-3
    80007fb4:	10079073          	csrw	sstatus,a5
    80007fb8:	fffff097          	auipc	ra,0xfffff
    80007fbc:	8e8080e7          	jalr	-1816(ra) # 800068a0 <mycpu>
    80007fc0:	07852783          	lw	a5,120(a0)
    80007fc4:	06078e63          	beqz	a5,80008040 <acquire+0xb4>
    80007fc8:	fffff097          	auipc	ra,0xfffff
    80007fcc:	8d8080e7          	jalr	-1832(ra) # 800068a0 <mycpu>
    80007fd0:	07852783          	lw	a5,120(a0)
    80007fd4:	0004a703          	lw	a4,0(s1)
    80007fd8:	0017879b          	addiw	a5,a5,1
    80007fdc:	06f52c23          	sw	a5,120(a0)
    80007fe0:	04071063          	bnez	a4,80008020 <acquire+0x94>
    80007fe4:	00100713          	li	a4,1
    80007fe8:	00070793          	mv	a5,a4
    80007fec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007ff0:	0007879b          	sext.w	a5,a5
    80007ff4:	fe079ae3          	bnez	a5,80007fe8 <acquire+0x5c>
    80007ff8:	0ff0000f          	fence
    80007ffc:	fffff097          	auipc	ra,0xfffff
    80008000:	8a4080e7          	jalr	-1884(ra) # 800068a0 <mycpu>
    80008004:	01813083          	ld	ra,24(sp)
    80008008:	01013403          	ld	s0,16(sp)
    8000800c:	00a4b823          	sd	a0,16(s1)
    80008010:	00013903          	ld	s2,0(sp)
    80008014:	00813483          	ld	s1,8(sp)
    80008018:	02010113          	addi	sp,sp,32
    8000801c:	00008067          	ret
    80008020:	0104b903          	ld	s2,16(s1)
    80008024:	fffff097          	auipc	ra,0xfffff
    80008028:	87c080e7          	jalr	-1924(ra) # 800068a0 <mycpu>
    8000802c:	faa91ce3          	bne	s2,a0,80007fe4 <acquire+0x58>
    80008030:	00001517          	auipc	a0,0x1
    80008034:	77850513          	addi	a0,a0,1912 # 800097a8 <digits+0x20>
    80008038:	fffff097          	auipc	ra,0xfffff
    8000803c:	224080e7          	jalr	548(ra) # 8000725c <panic>
    80008040:	00195913          	srli	s2,s2,0x1
    80008044:	fffff097          	auipc	ra,0xfffff
    80008048:	85c080e7          	jalr	-1956(ra) # 800068a0 <mycpu>
    8000804c:	00197913          	andi	s2,s2,1
    80008050:	07252e23          	sw	s2,124(a0)
    80008054:	f75ff06f          	j	80007fc8 <acquire+0x3c>

0000000080008058 <release>:
    80008058:	fe010113          	addi	sp,sp,-32
    8000805c:	00813823          	sd	s0,16(sp)
    80008060:	00113c23          	sd	ra,24(sp)
    80008064:	00913423          	sd	s1,8(sp)
    80008068:	01213023          	sd	s2,0(sp)
    8000806c:	02010413          	addi	s0,sp,32
    80008070:	00052783          	lw	a5,0(a0)
    80008074:	00079a63          	bnez	a5,80008088 <release+0x30>
    80008078:	00001517          	auipc	a0,0x1
    8000807c:	73850513          	addi	a0,a0,1848 # 800097b0 <digits+0x28>
    80008080:	fffff097          	auipc	ra,0xfffff
    80008084:	1dc080e7          	jalr	476(ra) # 8000725c <panic>
    80008088:	01053903          	ld	s2,16(a0)
    8000808c:	00050493          	mv	s1,a0
    80008090:	fffff097          	auipc	ra,0xfffff
    80008094:	810080e7          	jalr	-2032(ra) # 800068a0 <mycpu>
    80008098:	fea910e3          	bne	s2,a0,80008078 <release+0x20>
    8000809c:	0004b823          	sd	zero,16(s1)
    800080a0:	0ff0000f          	fence
    800080a4:	0f50000f          	fence	iorw,ow
    800080a8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800080ac:	ffffe097          	auipc	ra,0xffffe
    800080b0:	7f4080e7          	jalr	2036(ra) # 800068a0 <mycpu>
    800080b4:	100027f3          	csrr	a5,sstatus
    800080b8:	0027f793          	andi	a5,a5,2
    800080bc:	04079a63          	bnez	a5,80008110 <release+0xb8>
    800080c0:	07852783          	lw	a5,120(a0)
    800080c4:	02f05e63          	blez	a5,80008100 <release+0xa8>
    800080c8:	fff7871b          	addiw	a4,a5,-1
    800080cc:	06e52c23          	sw	a4,120(a0)
    800080d0:	00071c63          	bnez	a4,800080e8 <release+0x90>
    800080d4:	07c52783          	lw	a5,124(a0)
    800080d8:	00078863          	beqz	a5,800080e8 <release+0x90>
    800080dc:	100027f3          	csrr	a5,sstatus
    800080e0:	0027e793          	ori	a5,a5,2
    800080e4:	10079073          	csrw	sstatus,a5
    800080e8:	01813083          	ld	ra,24(sp)
    800080ec:	01013403          	ld	s0,16(sp)
    800080f0:	00813483          	ld	s1,8(sp)
    800080f4:	00013903          	ld	s2,0(sp)
    800080f8:	02010113          	addi	sp,sp,32
    800080fc:	00008067          	ret
    80008100:	00001517          	auipc	a0,0x1
    80008104:	6d050513          	addi	a0,a0,1744 # 800097d0 <digits+0x48>
    80008108:	fffff097          	auipc	ra,0xfffff
    8000810c:	154080e7          	jalr	340(ra) # 8000725c <panic>
    80008110:	00001517          	auipc	a0,0x1
    80008114:	6a850513          	addi	a0,a0,1704 # 800097b8 <digits+0x30>
    80008118:	fffff097          	auipc	ra,0xfffff
    8000811c:	144080e7          	jalr	324(ra) # 8000725c <panic>

0000000080008120 <holding>:
    80008120:	00052783          	lw	a5,0(a0)
    80008124:	00079663          	bnez	a5,80008130 <holding+0x10>
    80008128:	00000513          	li	a0,0
    8000812c:	00008067          	ret
    80008130:	fe010113          	addi	sp,sp,-32
    80008134:	00813823          	sd	s0,16(sp)
    80008138:	00913423          	sd	s1,8(sp)
    8000813c:	00113c23          	sd	ra,24(sp)
    80008140:	02010413          	addi	s0,sp,32
    80008144:	01053483          	ld	s1,16(a0)
    80008148:	ffffe097          	auipc	ra,0xffffe
    8000814c:	758080e7          	jalr	1880(ra) # 800068a0 <mycpu>
    80008150:	01813083          	ld	ra,24(sp)
    80008154:	01013403          	ld	s0,16(sp)
    80008158:	40a48533          	sub	a0,s1,a0
    8000815c:	00153513          	seqz	a0,a0
    80008160:	00813483          	ld	s1,8(sp)
    80008164:	02010113          	addi	sp,sp,32
    80008168:	00008067          	ret

000000008000816c <push_off>:
    8000816c:	fe010113          	addi	sp,sp,-32
    80008170:	00813823          	sd	s0,16(sp)
    80008174:	00113c23          	sd	ra,24(sp)
    80008178:	00913423          	sd	s1,8(sp)
    8000817c:	02010413          	addi	s0,sp,32
    80008180:	100024f3          	csrr	s1,sstatus
    80008184:	100027f3          	csrr	a5,sstatus
    80008188:	ffd7f793          	andi	a5,a5,-3
    8000818c:	10079073          	csrw	sstatus,a5
    80008190:	ffffe097          	auipc	ra,0xffffe
    80008194:	710080e7          	jalr	1808(ra) # 800068a0 <mycpu>
    80008198:	07852783          	lw	a5,120(a0)
    8000819c:	02078663          	beqz	a5,800081c8 <push_off+0x5c>
    800081a0:	ffffe097          	auipc	ra,0xffffe
    800081a4:	700080e7          	jalr	1792(ra) # 800068a0 <mycpu>
    800081a8:	07852783          	lw	a5,120(a0)
    800081ac:	01813083          	ld	ra,24(sp)
    800081b0:	01013403          	ld	s0,16(sp)
    800081b4:	0017879b          	addiw	a5,a5,1
    800081b8:	06f52c23          	sw	a5,120(a0)
    800081bc:	00813483          	ld	s1,8(sp)
    800081c0:	02010113          	addi	sp,sp,32
    800081c4:	00008067          	ret
    800081c8:	0014d493          	srli	s1,s1,0x1
    800081cc:	ffffe097          	auipc	ra,0xffffe
    800081d0:	6d4080e7          	jalr	1748(ra) # 800068a0 <mycpu>
    800081d4:	0014f493          	andi	s1,s1,1
    800081d8:	06952e23          	sw	s1,124(a0)
    800081dc:	fc5ff06f          	j	800081a0 <push_off+0x34>

00000000800081e0 <pop_off>:
    800081e0:	ff010113          	addi	sp,sp,-16
    800081e4:	00813023          	sd	s0,0(sp)
    800081e8:	00113423          	sd	ra,8(sp)
    800081ec:	01010413          	addi	s0,sp,16
    800081f0:	ffffe097          	auipc	ra,0xffffe
    800081f4:	6b0080e7          	jalr	1712(ra) # 800068a0 <mycpu>
    800081f8:	100027f3          	csrr	a5,sstatus
    800081fc:	0027f793          	andi	a5,a5,2
    80008200:	04079663          	bnez	a5,8000824c <pop_off+0x6c>
    80008204:	07852783          	lw	a5,120(a0)
    80008208:	02f05a63          	blez	a5,8000823c <pop_off+0x5c>
    8000820c:	fff7871b          	addiw	a4,a5,-1
    80008210:	06e52c23          	sw	a4,120(a0)
    80008214:	00071c63          	bnez	a4,8000822c <pop_off+0x4c>
    80008218:	07c52783          	lw	a5,124(a0)
    8000821c:	00078863          	beqz	a5,8000822c <pop_off+0x4c>
    80008220:	100027f3          	csrr	a5,sstatus
    80008224:	0027e793          	ori	a5,a5,2
    80008228:	10079073          	csrw	sstatus,a5
    8000822c:	00813083          	ld	ra,8(sp)
    80008230:	00013403          	ld	s0,0(sp)
    80008234:	01010113          	addi	sp,sp,16
    80008238:	00008067          	ret
    8000823c:	00001517          	auipc	a0,0x1
    80008240:	59450513          	addi	a0,a0,1428 # 800097d0 <digits+0x48>
    80008244:	fffff097          	auipc	ra,0xfffff
    80008248:	018080e7          	jalr	24(ra) # 8000725c <panic>
    8000824c:	00001517          	auipc	a0,0x1
    80008250:	56c50513          	addi	a0,a0,1388 # 800097b8 <digits+0x30>
    80008254:	fffff097          	auipc	ra,0xfffff
    80008258:	008080e7          	jalr	8(ra) # 8000725c <panic>

000000008000825c <push_on>:
    8000825c:	fe010113          	addi	sp,sp,-32
    80008260:	00813823          	sd	s0,16(sp)
    80008264:	00113c23          	sd	ra,24(sp)
    80008268:	00913423          	sd	s1,8(sp)
    8000826c:	02010413          	addi	s0,sp,32
    80008270:	100024f3          	csrr	s1,sstatus
    80008274:	100027f3          	csrr	a5,sstatus
    80008278:	0027e793          	ori	a5,a5,2
    8000827c:	10079073          	csrw	sstatus,a5
    80008280:	ffffe097          	auipc	ra,0xffffe
    80008284:	620080e7          	jalr	1568(ra) # 800068a0 <mycpu>
    80008288:	07852783          	lw	a5,120(a0)
    8000828c:	02078663          	beqz	a5,800082b8 <push_on+0x5c>
    80008290:	ffffe097          	auipc	ra,0xffffe
    80008294:	610080e7          	jalr	1552(ra) # 800068a0 <mycpu>
    80008298:	07852783          	lw	a5,120(a0)
    8000829c:	01813083          	ld	ra,24(sp)
    800082a0:	01013403          	ld	s0,16(sp)
    800082a4:	0017879b          	addiw	a5,a5,1
    800082a8:	06f52c23          	sw	a5,120(a0)
    800082ac:	00813483          	ld	s1,8(sp)
    800082b0:	02010113          	addi	sp,sp,32
    800082b4:	00008067          	ret
    800082b8:	0014d493          	srli	s1,s1,0x1
    800082bc:	ffffe097          	auipc	ra,0xffffe
    800082c0:	5e4080e7          	jalr	1508(ra) # 800068a0 <mycpu>
    800082c4:	0014f493          	andi	s1,s1,1
    800082c8:	06952e23          	sw	s1,124(a0)
    800082cc:	fc5ff06f          	j	80008290 <push_on+0x34>

00000000800082d0 <pop_on>:
    800082d0:	ff010113          	addi	sp,sp,-16
    800082d4:	00813023          	sd	s0,0(sp)
    800082d8:	00113423          	sd	ra,8(sp)
    800082dc:	01010413          	addi	s0,sp,16
    800082e0:	ffffe097          	auipc	ra,0xffffe
    800082e4:	5c0080e7          	jalr	1472(ra) # 800068a0 <mycpu>
    800082e8:	100027f3          	csrr	a5,sstatus
    800082ec:	0027f793          	andi	a5,a5,2
    800082f0:	04078463          	beqz	a5,80008338 <pop_on+0x68>
    800082f4:	07852783          	lw	a5,120(a0)
    800082f8:	02f05863          	blez	a5,80008328 <pop_on+0x58>
    800082fc:	fff7879b          	addiw	a5,a5,-1
    80008300:	06f52c23          	sw	a5,120(a0)
    80008304:	07853783          	ld	a5,120(a0)
    80008308:	00079863          	bnez	a5,80008318 <pop_on+0x48>
    8000830c:	100027f3          	csrr	a5,sstatus
    80008310:	ffd7f793          	andi	a5,a5,-3
    80008314:	10079073          	csrw	sstatus,a5
    80008318:	00813083          	ld	ra,8(sp)
    8000831c:	00013403          	ld	s0,0(sp)
    80008320:	01010113          	addi	sp,sp,16
    80008324:	00008067          	ret
    80008328:	00001517          	auipc	a0,0x1
    8000832c:	4d050513          	addi	a0,a0,1232 # 800097f8 <digits+0x70>
    80008330:	fffff097          	auipc	ra,0xfffff
    80008334:	f2c080e7          	jalr	-212(ra) # 8000725c <panic>
    80008338:	00001517          	auipc	a0,0x1
    8000833c:	4a050513          	addi	a0,a0,1184 # 800097d8 <digits+0x50>
    80008340:	fffff097          	auipc	ra,0xfffff
    80008344:	f1c080e7          	jalr	-228(ra) # 8000725c <panic>

0000000080008348 <__memset>:
    80008348:	ff010113          	addi	sp,sp,-16
    8000834c:	00813423          	sd	s0,8(sp)
    80008350:	01010413          	addi	s0,sp,16
    80008354:	1a060e63          	beqz	a2,80008510 <__memset+0x1c8>
    80008358:	40a007b3          	neg	a5,a0
    8000835c:	0077f793          	andi	a5,a5,7
    80008360:	00778693          	addi	a3,a5,7
    80008364:	00b00813          	li	a6,11
    80008368:	0ff5f593          	andi	a1,a1,255
    8000836c:	fff6071b          	addiw	a4,a2,-1
    80008370:	1b06e663          	bltu	a3,a6,8000851c <__memset+0x1d4>
    80008374:	1cd76463          	bltu	a4,a3,8000853c <__memset+0x1f4>
    80008378:	1a078e63          	beqz	a5,80008534 <__memset+0x1ec>
    8000837c:	00b50023          	sb	a1,0(a0)
    80008380:	00100713          	li	a4,1
    80008384:	1ae78463          	beq	a5,a4,8000852c <__memset+0x1e4>
    80008388:	00b500a3          	sb	a1,1(a0)
    8000838c:	00200713          	li	a4,2
    80008390:	1ae78a63          	beq	a5,a4,80008544 <__memset+0x1fc>
    80008394:	00b50123          	sb	a1,2(a0)
    80008398:	00300713          	li	a4,3
    8000839c:	18e78463          	beq	a5,a4,80008524 <__memset+0x1dc>
    800083a0:	00b501a3          	sb	a1,3(a0)
    800083a4:	00400713          	li	a4,4
    800083a8:	1ae78263          	beq	a5,a4,8000854c <__memset+0x204>
    800083ac:	00b50223          	sb	a1,4(a0)
    800083b0:	00500713          	li	a4,5
    800083b4:	1ae78063          	beq	a5,a4,80008554 <__memset+0x20c>
    800083b8:	00b502a3          	sb	a1,5(a0)
    800083bc:	00700713          	li	a4,7
    800083c0:	18e79e63          	bne	a5,a4,8000855c <__memset+0x214>
    800083c4:	00b50323          	sb	a1,6(a0)
    800083c8:	00700e93          	li	t4,7
    800083cc:	00859713          	slli	a4,a1,0x8
    800083d0:	00e5e733          	or	a4,a1,a4
    800083d4:	01059e13          	slli	t3,a1,0x10
    800083d8:	01c76e33          	or	t3,a4,t3
    800083dc:	01859313          	slli	t1,a1,0x18
    800083e0:	006e6333          	or	t1,t3,t1
    800083e4:	02059893          	slli	a7,a1,0x20
    800083e8:	40f60e3b          	subw	t3,a2,a5
    800083ec:	011368b3          	or	a7,t1,a7
    800083f0:	02859813          	slli	a6,a1,0x28
    800083f4:	0108e833          	or	a6,a7,a6
    800083f8:	03059693          	slli	a3,a1,0x30
    800083fc:	003e589b          	srliw	a7,t3,0x3
    80008400:	00d866b3          	or	a3,a6,a3
    80008404:	03859713          	slli	a4,a1,0x38
    80008408:	00389813          	slli	a6,a7,0x3
    8000840c:	00f507b3          	add	a5,a0,a5
    80008410:	00e6e733          	or	a4,a3,a4
    80008414:	000e089b          	sext.w	a7,t3
    80008418:	00f806b3          	add	a3,a6,a5
    8000841c:	00e7b023          	sd	a4,0(a5)
    80008420:	00878793          	addi	a5,a5,8
    80008424:	fed79ce3          	bne	a5,a3,8000841c <__memset+0xd4>
    80008428:	ff8e7793          	andi	a5,t3,-8
    8000842c:	0007871b          	sext.w	a4,a5
    80008430:	01d787bb          	addw	a5,a5,t4
    80008434:	0ce88e63          	beq	a7,a4,80008510 <__memset+0x1c8>
    80008438:	00f50733          	add	a4,a0,a5
    8000843c:	00b70023          	sb	a1,0(a4)
    80008440:	0017871b          	addiw	a4,a5,1
    80008444:	0cc77663          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    80008448:	00e50733          	add	a4,a0,a4
    8000844c:	00b70023          	sb	a1,0(a4)
    80008450:	0027871b          	addiw	a4,a5,2
    80008454:	0ac77e63          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    80008458:	00e50733          	add	a4,a0,a4
    8000845c:	00b70023          	sb	a1,0(a4)
    80008460:	0037871b          	addiw	a4,a5,3
    80008464:	0ac77663          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    80008468:	00e50733          	add	a4,a0,a4
    8000846c:	00b70023          	sb	a1,0(a4)
    80008470:	0047871b          	addiw	a4,a5,4
    80008474:	08c77e63          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    80008478:	00e50733          	add	a4,a0,a4
    8000847c:	00b70023          	sb	a1,0(a4)
    80008480:	0057871b          	addiw	a4,a5,5
    80008484:	08c77663          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    80008488:	00e50733          	add	a4,a0,a4
    8000848c:	00b70023          	sb	a1,0(a4)
    80008490:	0067871b          	addiw	a4,a5,6
    80008494:	06c77e63          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    80008498:	00e50733          	add	a4,a0,a4
    8000849c:	00b70023          	sb	a1,0(a4)
    800084a0:	0077871b          	addiw	a4,a5,7
    800084a4:	06c77663          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    800084a8:	00e50733          	add	a4,a0,a4
    800084ac:	00b70023          	sb	a1,0(a4)
    800084b0:	0087871b          	addiw	a4,a5,8
    800084b4:	04c77e63          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    800084b8:	00e50733          	add	a4,a0,a4
    800084bc:	00b70023          	sb	a1,0(a4)
    800084c0:	0097871b          	addiw	a4,a5,9
    800084c4:	04c77663          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    800084c8:	00e50733          	add	a4,a0,a4
    800084cc:	00b70023          	sb	a1,0(a4)
    800084d0:	00a7871b          	addiw	a4,a5,10
    800084d4:	02c77e63          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    800084d8:	00e50733          	add	a4,a0,a4
    800084dc:	00b70023          	sb	a1,0(a4)
    800084e0:	00b7871b          	addiw	a4,a5,11
    800084e4:	02c77663          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    800084e8:	00e50733          	add	a4,a0,a4
    800084ec:	00b70023          	sb	a1,0(a4)
    800084f0:	00c7871b          	addiw	a4,a5,12
    800084f4:	00c77e63          	bgeu	a4,a2,80008510 <__memset+0x1c8>
    800084f8:	00e50733          	add	a4,a0,a4
    800084fc:	00b70023          	sb	a1,0(a4)
    80008500:	00d7879b          	addiw	a5,a5,13
    80008504:	00c7f663          	bgeu	a5,a2,80008510 <__memset+0x1c8>
    80008508:	00f507b3          	add	a5,a0,a5
    8000850c:	00b78023          	sb	a1,0(a5)
    80008510:	00813403          	ld	s0,8(sp)
    80008514:	01010113          	addi	sp,sp,16
    80008518:	00008067          	ret
    8000851c:	00b00693          	li	a3,11
    80008520:	e55ff06f          	j	80008374 <__memset+0x2c>
    80008524:	00300e93          	li	t4,3
    80008528:	ea5ff06f          	j	800083cc <__memset+0x84>
    8000852c:	00100e93          	li	t4,1
    80008530:	e9dff06f          	j	800083cc <__memset+0x84>
    80008534:	00000e93          	li	t4,0
    80008538:	e95ff06f          	j	800083cc <__memset+0x84>
    8000853c:	00000793          	li	a5,0
    80008540:	ef9ff06f          	j	80008438 <__memset+0xf0>
    80008544:	00200e93          	li	t4,2
    80008548:	e85ff06f          	j	800083cc <__memset+0x84>
    8000854c:	00400e93          	li	t4,4
    80008550:	e7dff06f          	j	800083cc <__memset+0x84>
    80008554:	00500e93          	li	t4,5
    80008558:	e75ff06f          	j	800083cc <__memset+0x84>
    8000855c:	00600e93          	li	t4,6
    80008560:	e6dff06f          	j	800083cc <__memset+0x84>

0000000080008564 <__memmove>:
    80008564:	ff010113          	addi	sp,sp,-16
    80008568:	00813423          	sd	s0,8(sp)
    8000856c:	01010413          	addi	s0,sp,16
    80008570:	0e060863          	beqz	a2,80008660 <__memmove+0xfc>
    80008574:	fff6069b          	addiw	a3,a2,-1
    80008578:	0006881b          	sext.w	a6,a3
    8000857c:	0ea5e863          	bltu	a1,a0,8000866c <__memmove+0x108>
    80008580:	00758713          	addi	a4,a1,7
    80008584:	00a5e7b3          	or	a5,a1,a0
    80008588:	40a70733          	sub	a4,a4,a0
    8000858c:	0077f793          	andi	a5,a5,7
    80008590:	00f73713          	sltiu	a4,a4,15
    80008594:	00174713          	xori	a4,a4,1
    80008598:	0017b793          	seqz	a5,a5
    8000859c:	00e7f7b3          	and	a5,a5,a4
    800085a0:	10078863          	beqz	a5,800086b0 <__memmove+0x14c>
    800085a4:	00900793          	li	a5,9
    800085a8:	1107f463          	bgeu	a5,a6,800086b0 <__memmove+0x14c>
    800085ac:	0036581b          	srliw	a6,a2,0x3
    800085b0:	fff8081b          	addiw	a6,a6,-1
    800085b4:	02081813          	slli	a6,a6,0x20
    800085b8:	01d85893          	srli	a7,a6,0x1d
    800085bc:	00858813          	addi	a6,a1,8
    800085c0:	00058793          	mv	a5,a1
    800085c4:	00050713          	mv	a4,a0
    800085c8:	01088833          	add	a6,a7,a6
    800085cc:	0007b883          	ld	a7,0(a5)
    800085d0:	00878793          	addi	a5,a5,8
    800085d4:	00870713          	addi	a4,a4,8
    800085d8:	ff173c23          	sd	a7,-8(a4)
    800085dc:	ff0798e3          	bne	a5,a6,800085cc <__memmove+0x68>
    800085e0:	ff867713          	andi	a4,a2,-8
    800085e4:	02071793          	slli	a5,a4,0x20
    800085e8:	0207d793          	srli	a5,a5,0x20
    800085ec:	00f585b3          	add	a1,a1,a5
    800085f0:	40e686bb          	subw	a3,a3,a4
    800085f4:	00f507b3          	add	a5,a0,a5
    800085f8:	06e60463          	beq	a2,a4,80008660 <__memmove+0xfc>
    800085fc:	0005c703          	lbu	a4,0(a1)
    80008600:	00e78023          	sb	a4,0(a5)
    80008604:	04068e63          	beqz	a3,80008660 <__memmove+0xfc>
    80008608:	0015c603          	lbu	a2,1(a1)
    8000860c:	00100713          	li	a4,1
    80008610:	00c780a3          	sb	a2,1(a5)
    80008614:	04e68663          	beq	a3,a4,80008660 <__memmove+0xfc>
    80008618:	0025c603          	lbu	a2,2(a1)
    8000861c:	00200713          	li	a4,2
    80008620:	00c78123          	sb	a2,2(a5)
    80008624:	02e68e63          	beq	a3,a4,80008660 <__memmove+0xfc>
    80008628:	0035c603          	lbu	a2,3(a1)
    8000862c:	00300713          	li	a4,3
    80008630:	00c781a3          	sb	a2,3(a5)
    80008634:	02e68663          	beq	a3,a4,80008660 <__memmove+0xfc>
    80008638:	0045c603          	lbu	a2,4(a1)
    8000863c:	00400713          	li	a4,4
    80008640:	00c78223          	sb	a2,4(a5)
    80008644:	00e68e63          	beq	a3,a4,80008660 <__memmove+0xfc>
    80008648:	0055c603          	lbu	a2,5(a1)
    8000864c:	00500713          	li	a4,5
    80008650:	00c782a3          	sb	a2,5(a5)
    80008654:	00e68663          	beq	a3,a4,80008660 <__memmove+0xfc>
    80008658:	0065c703          	lbu	a4,6(a1)
    8000865c:	00e78323          	sb	a4,6(a5)
    80008660:	00813403          	ld	s0,8(sp)
    80008664:	01010113          	addi	sp,sp,16
    80008668:	00008067          	ret
    8000866c:	02061713          	slli	a4,a2,0x20
    80008670:	02075713          	srli	a4,a4,0x20
    80008674:	00e587b3          	add	a5,a1,a4
    80008678:	f0f574e3          	bgeu	a0,a5,80008580 <__memmove+0x1c>
    8000867c:	02069613          	slli	a2,a3,0x20
    80008680:	02065613          	srli	a2,a2,0x20
    80008684:	fff64613          	not	a2,a2
    80008688:	00e50733          	add	a4,a0,a4
    8000868c:	00c78633          	add	a2,a5,a2
    80008690:	fff7c683          	lbu	a3,-1(a5)
    80008694:	fff78793          	addi	a5,a5,-1
    80008698:	fff70713          	addi	a4,a4,-1
    8000869c:	00d70023          	sb	a3,0(a4)
    800086a0:	fec798e3          	bne	a5,a2,80008690 <__memmove+0x12c>
    800086a4:	00813403          	ld	s0,8(sp)
    800086a8:	01010113          	addi	sp,sp,16
    800086ac:	00008067          	ret
    800086b0:	02069713          	slli	a4,a3,0x20
    800086b4:	02075713          	srli	a4,a4,0x20
    800086b8:	00170713          	addi	a4,a4,1
    800086bc:	00e50733          	add	a4,a0,a4
    800086c0:	00050793          	mv	a5,a0
    800086c4:	0005c683          	lbu	a3,0(a1)
    800086c8:	00178793          	addi	a5,a5,1
    800086cc:	00158593          	addi	a1,a1,1
    800086d0:	fed78fa3          	sb	a3,-1(a5)
    800086d4:	fee798e3          	bne	a5,a4,800086c4 <__memmove+0x160>
    800086d8:	f89ff06f          	j	80008660 <__memmove+0xfc>

00000000800086dc <__mem_free>:
    800086dc:	ff010113          	addi	sp,sp,-16
    800086e0:	00813423          	sd	s0,8(sp)
    800086e4:	01010413          	addi	s0,sp,16
    800086e8:	00002597          	auipc	a1,0x2
    800086ec:	0b058593          	addi	a1,a1,176 # 8000a798 <freep>
    800086f0:	0005b783          	ld	a5,0(a1)
    800086f4:	ff050693          	addi	a3,a0,-16
    800086f8:	0007b703          	ld	a4,0(a5)
    800086fc:	00d7fc63          	bgeu	a5,a3,80008714 <__mem_free+0x38>
    80008700:	00e6ee63          	bltu	a3,a4,8000871c <__mem_free+0x40>
    80008704:	00e7fc63          	bgeu	a5,a4,8000871c <__mem_free+0x40>
    80008708:	00070793          	mv	a5,a4
    8000870c:	0007b703          	ld	a4,0(a5)
    80008710:	fed7e8e3          	bltu	a5,a3,80008700 <__mem_free+0x24>
    80008714:	fee7eae3          	bltu	a5,a4,80008708 <__mem_free+0x2c>
    80008718:	fee6f8e3          	bgeu	a3,a4,80008708 <__mem_free+0x2c>
    8000871c:	ff852803          	lw	a6,-8(a0)
    80008720:	02081613          	slli	a2,a6,0x20
    80008724:	01c65613          	srli	a2,a2,0x1c
    80008728:	00c68633          	add	a2,a3,a2
    8000872c:	02c70a63          	beq	a4,a2,80008760 <__mem_free+0x84>
    80008730:	fee53823          	sd	a4,-16(a0)
    80008734:	0087a503          	lw	a0,8(a5)
    80008738:	02051613          	slli	a2,a0,0x20
    8000873c:	01c65613          	srli	a2,a2,0x1c
    80008740:	00c78633          	add	a2,a5,a2
    80008744:	04c68263          	beq	a3,a2,80008788 <__mem_free+0xac>
    80008748:	00813403          	ld	s0,8(sp)
    8000874c:	00d7b023          	sd	a3,0(a5)
    80008750:	00f5b023          	sd	a5,0(a1)
    80008754:	00000513          	li	a0,0
    80008758:	01010113          	addi	sp,sp,16
    8000875c:	00008067          	ret
    80008760:	00872603          	lw	a2,8(a4)
    80008764:	00073703          	ld	a4,0(a4)
    80008768:	0106083b          	addw	a6,a2,a6
    8000876c:	ff052c23          	sw	a6,-8(a0)
    80008770:	fee53823          	sd	a4,-16(a0)
    80008774:	0087a503          	lw	a0,8(a5)
    80008778:	02051613          	slli	a2,a0,0x20
    8000877c:	01c65613          	srli	a2,a2,0x1c
    80008780:	00c78633          	add	a2,a5,a2
    80008784:	fcc692e3          	bne	a3,a2,80008748 <__mem_free+0x6c>
    80008788:	00813403          	ld	s0,8(sp)
    8000878c:	0105053b          	addw	a0,a0,a6
    80008790:	00a7a423          	sw	a0,8(a5)
    80008794:	00e7b023          	sd	a4,0(a5)
    80008798:	00f5b023          	sd	a5,0(a1)
    8000879c:	00000513          	li	a0,0
    800087a0:	01010113          	addi	sp,sp,16
    800087a4:	00008067          	ret

00000000800087a8 <__mem_alloc>:
    800087a8:	fc010113          	addi	sp,sp,-64
    800087ac:	02813823          	sd	s0,48(sp)
    800087b0:	02913423          	sd	s1,40(sp)
    800087b4:	03213023          	sd	s2,32(sp)
    800087b8:	01513423          	sd	s5,8(sp)
    800087bc:	02113c23          	sd	ra,56(sp)
    800087c0:	01313c23          	sd	s3,24(sp)
    800087c4:	01413823          	sd	s4,16(sp)
    800087c8:	01613023          	sd	s6,0(sp)
    800087cc:	04010413          	addi	s0,sp,64
    800087d0:	00002a97          	auipc	s5,0x2
    800087d4:	fc8a8a93          	addi	s5,s5,-56 # 8000a798 <freep>
    800087d8:	00f50913          	addi	s2,a0,15
    800087dc:	000ab683          	ld	a3,0(s5)
    800087e0:	00495913          	srli	s2,s2,0x4
    800087e4:	0019049b          	addiw	s1,s2,1
    800087e8:	00048913          	mv	s2,s1
    800087ec:	0c068c63          	beqz	a3,800088c4 <__mem_alloc+0x11c>
    800087f0:	0006b503          	ld	a0,0(a3)
    800087f4:	00852703          	lw	a4,8(a0)
    800087f8:	10977063          	bgeu	a4,s1,800088f8 <__mem_alloc+0x150>
    800087fc:	000017b7          	lui	a5,0x1
    80008800:	0009099b          	sext.w	s3,s2
    80008804:	0af4e863          	bltu	s1,a5,800088b4 <__mem_alloc+0x10c>
    80008808:	02099a13          	slli	s4,s3,0x20
    8000880c:	01ca5a13          	srli	s4,s4,0x1c
    80008810:	fff00b13          	li	s6,-1
    80008814:	0100006f          	j	80008824 <__mem_alloc+0x7c>
    80008818:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000881c:	00852703          	lw	a4,8(a0)
    80008820:	04977463          	bgeu	a4,s1,80008868 <__mem_alloc+0xc0>
    80008824:	00050793          	mv	a5,a0
    80008828:	fea698e3          	bne	a3,a0,80008818 <__mem_alloc+0x70>
    8000882c:	000a0513          	mv	a0,s4
    80008830:	00000097          	auipc	ra,0x0
    80008834:	1f0080e7          	jalr	496(ra) # 80008a20 <kvmincrease>
    80008838:	00050793          	mv	a5,a0
    8000883c:	01050513          	addi	a0,a0,16
    80008840:	07678e63          	beq	a5,s6,800088bc <__mem_alloc+0x114>
    80008844:	0137a423          	sw	s3,8(a5)
    80008848:	00000097          	auipc	ra,0x0
    8000884c:	e94080e7          	jalr	-364(ra) # 800086dc <__mem_free>
    80008850:	000ab783          	ld	a5,0(s5)
    80008854:	06078463          	beqz	a5,800088bc <__mem_alloc+0x114>
    80008858:	0007b503          	ld	a0,0(a5)
    8000885c:	00078693          	mv	a3,a5
    80008860:	00852703          	lw	a4,8(a0)
    80008864:	fc9760e3          	bltu	a4,s1,80008824 <__mem_alloc+0x7c>
    80008868:	08e48263          	beq	s1,a4,800088ec <__mem_alloc+0x144>
    8000886c:	4127073b          	subw	a4,a4,s2
    80008870:	02071693          	slli	a3,a4,0x20
    80008874:	01c6d693          	srli	a3,a3,0x1c
    80008878:	00e52423          	sw	a4,8(a0)
    8000887c:	00d50533          	add	a0,a0,a3
    80008880:	01252423          	sw	s2,8(a0)
    80008884:	00fab023          	sd	a5,0(s5)
    80008888:	01050513          	addi	a0,a0,16
    8000888c:	03813083          	ld	ra,56(sp)
    80008890:	03013403          	ld	s0,48(sp)
    80008894:	02813483          	ld	s1,40(sp)
    80008898:	02013903          	ld	s2,32(sp)
    8000889c:	01813983          	ld	s3,24(sp)
    800088a0:	01013a03          	ld	s4,16(sp)
    800088a4:	00813a83          	ld	s5,8(sp)
    800088a8:	00013b03          	ld	s6,0(sp)
    800088ac:	04010113          	addi	sp,sp,64
    800088b0:	00008067          	ret
    800088b4:	000019b7          	lui	s3,0x1
    800088b8:	f51ff06f          	j	80008808 <__mem_alloc+0x60>
    800088bc:	00000513          	li	a0,0
    800088c0:	fcdff06f          	j	8000888c <__mem_alloc+0xe4>
    800088c4:	00003797          	auipc	a5,0x3
    800088c8:	17c78793          	addi	a5,a5,380 # 8000ba40 <base>
    800088cc:	00078513          	mv	a0,a5
    800088d0:	00fab023          	sd	a5,0(s5)
    800088d4:	00f7b023          	sd	a5,0(a5)
    800088d8:	00000713          	li	a4,0
    800088dc:	00003797          	auipc	a5,0x3
    800088e0:	1607a623          	sw	zero,364(a5) # 8000ba48 <base+0x8>
    800088e4:	00050693          	mv	a3,a0
    800088e8:	f11ff06f          	j	800087f8 <__mem_alloc+0x50>
    800088ec:	00053703          	ld	a4,0(a0)
    800088f0:	00e7b023          	sd	a4,0(a5)
    800088f4:	f91ff06f          	j	80008884 <__mem_alloc+0xdc>
    800088f8:	00068793          	mv	a5,a3
    800088fc:	f6dff06f          	j	80008868 <__mem_alloc+0xc0>

0000000080008900 <__putc>:
    80008900:	fe010113          	addi	sp,sp,-32
    80008904:	00813823          	sd	s0,16(sp)
    80008908:	00113c23          	sd	ra,24(sp)
    8000890c:	02010413          	addi	s0,sp,32
    80008910:	00050793          	mv	a5,a0
    80008914:	fef40593          	addi	a1,s0,-17
    80008918:	00100613          	li	a2,1
    8000891c:	00000513          	li	a0,0
    80008920:	fef407a3          	sb	a5,-17(s0)
    80008924:	fffff097          	auipc	ra,0xfffff
    80008928:	918080e7          	jalr	-1768(ra) # 8000723c <console_write>
    8000892c:	01813083          	ld	ra,24(sp)
    80008930:	01013403          	ld	s0,16(sp)
    80008934:	02010113          	addi	sp,sp,32
    80008938:	00008067          	ret

000000008000893c <__getc>:
    8000893c:	fe010113          	addi	sp,sp,-32
    80008940:	00813823          	sd	s0,16(sp)
    80008944:	00113c23          	sd	ra,24(sp)
    80008948:	02010413          	addi	s0,sp,32
    8000894c:	fe840593          	addi	a1,s0,-24
    80008950:	00100613          	li	a2,1
    80008954:	00000513          	li	a0,0
    80008958:	fffff097          	auipc	ra,0xfffff
    8000895c:	8c4080e7          	jalr	-1852(ra) # 8000721c <console_read>
    80008960:	fe844503          	lbu	a0,-24(s0)
    80008964:	01813083          	ld	ra,24(sp)
    80008968:	01013403          	ld	s0,16(sp)
    8000896c:	02010113          	addi	sp,sp,32
    80008970:	00008067          	ret

0000000080008974 <console_handler>:
    80008974:	fe010113          	addi	sp,sp,-32
    80008978:	00813823          	sd	s0,16(sp)
    8000897c:	00113c23          	sd	ra,24(sp)
    80008980:	00913423          	sd	s1,8(sp)
    80008984:	02010413          	addi	s0,sp,32
    80008988:	14202773          	csrr	a4,scause
    8000898c:	100027f3          	csrr	a5,sstatus
    80008990:	0027f793          	andi	a5,a5,2
    80008994:	06079e63          	bnez	a5,80008a10 <console_handler+0x9c>
    80008998:	00074c63          	bltz	a4,800089b0 <console_handler+0x3c>
    8000899c:	01813083          	ld	ra,24(sp)
    800089a0:	01013403          	ld	s0,16(sp)
    800089a4:	00813483          	ld	s1,8(sp)
    800089a8:	02010113          	addi	sp,sp,32
    800089ac:	00008067          	ret
    800089b0:	0ff77713          	andi	a4,a4,255
    800089b4:	00900793          	li	a5,9
    800089b8:	fef712e3          	bne	a4,a5,8000899c <console_handler+0x28>
    800089bc:	ffffe097          	auipc	ra,0xffffe
    800089c0:	4b8080e7          	jalr	1208(ra) # 80006e74 <plic_claim>
    800089c4:	00a00793          	li	a5,10
    800089c8:	00050493          	mv	s1,a0
    800089cc:	02f50c63          	beq	a0,a5,80008a04 <console_handler+0x90>
    800089d0:	fc0506e3          	beqz	a0,8000899c <console_handler+0x28>
    800089d4:	00050593          	mv	a1,a0
    800089d8:	00001517          	auipc	a0,0x1
    800089dc:	d2850513          	addi	a0,a0,-728 # 80009700 <_ZZ12printIntegermE6digits+0xe0>
    800089e0:	fffff097          	auipc	ra,0xfffff
    800089e4:	8d8080e7          	jalr	-1832(ra) # 800072b8 <__printf>
    800089e8:	01013403          	ld	s0,16(sp)
    800089ec:	01813083          	ld	ra,24(sp)
    800089f0:	00048513          	mv	a0,s1
    800089f4:	00813483          	ld	s1,8(sp)
    800089f8:	02010113          	addi	sp,sp,32
    800089fc:	ffffe317          	auipc	t1,0xffffe
    80008a00:	4b030067          	jr	1200(t1) # 80006eac <plic_complete>
    80008a04:	fffff097          	auipc	ra,0xfffff
    80008a08:	1bc080e7          	jalr	444(ra) # 80007bc0 <uartintr>
    80008a0c:	fddff06f          	j	800089e8 <console_handler+0x74>
    80008a10:	00001517          	auipc	a0,0x1
    80008a14:	df050513          	addi	a0,a0,-528 # 80009800 <digits+0x78>
    80008a18:	fffff097          	auipc	ra,0xfffff
    80008a1c:	844080e7          	jalr	-1980(ra) # 8000725c <panic>

0000000080008a20 <kvmincrease>:
    80008a20:	fe010113          	addi	sp,sp,-32
    80008a24:	01213023          	sd	s2,0(sp)
    80008a28:	00001937          	lui	s2,0x1
    80008a2c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80008a30:	00813823          	sd	s0,16(sp)
    80008a34:	00113c23          	sd	ra,24(sp)
    80008a38:	00913423          	sd	s1,8(sp)
    80008a3c:	02010413          	addi	s0,sp,32
    80008a40:	01250933          	add	s2,a0,s2
    80008a44:	00c95913          	srli	s2,s2,0xc
    80008a48:	02090863          	beqz	s2,80008a78 <kvmincrease+0x58>
    80008a4c:	00000493          	li	s1,0
    80008a50:	00148493          	addi	s1,s1,1
    80008a54:	fffff097          	auipc	ra,0xfffff
    80008a58:	4bc080e7          	jalr	1212(ra) # 80007f10 <kalloc>
    80008a5c:	fe991ae3          	bne	s2,s1,80008a50 <kvmincrease+0x30>
    80008a60:	01813083          	ld	ra,24(sp)
    80008a64:	01013403          	ld	s0,16(sp)
    80008a68:	00813483          	ld	s1,8(sp)
    80008a6c:	00013903          	ld	s2,0(sp)
    80008a70:	02010113          	addi	sp,sp,32
    80008a74:	00008067          	ret
    80008a78:	01813083          	ld	ra,24(sp)
    80008a7c:	01013403          	ld	s0,16(sp)
    80008a80:	00813483          	ld	s1,8(sp)
    80008a84:	00013903          	ld	s2,0(sp)
    80008a88:	00000513          	li	a0,0
    80008a8c:	02010113          	addi	sp,sp,32
    80008a90:	00008067          	ret
	...
