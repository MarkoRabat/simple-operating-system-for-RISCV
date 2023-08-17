
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	6d813103          	ld	sp,1752(sp) # 8000a6d8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	558060ef          	jal	ra,80006574 <start>

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
    80001084:	0c8050ef          	jal	ra,8000614c <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001294:	638080e7          	jalr	1592(ra) # 800018c8 <_ZN3TCB12createThreadEPFvvE>
    80001298:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    8000129c:	00009797          	auipc	a5,0x9
    800012a0:	4447b783          	ld	a5,1092(a5) # 8000a6e0 <_GLOBAL_OFFSET_TABLE_+0x48>
    800012a4:	00a7b023          	sd	a0,0(a5)

    threads[1] = TCB::createThread(workerBodyA);
    800012a8:	00009517          	auipc	a0,0x9
    800012ac:	42853503          	ld	a0,1064(a0) # 8000a6d0 <_GLOBAL_OFFSET_TABLE_+0x38>
    800012b0:	00000097          	auipc	ra,0x0
    800012b4:	618080e7          	jalr	1560(ra) # 800018c8 <_ZN3TCB12createThreadEPFvvE>
    800012b8:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    800012bc:	00008517          	auipc	a0,0x8
    800012c0:	d6450513          	addi	a0,a0,-668 # 80009020 <CONSOLE_STATUS+0x10>
    800012c4:	00005097          	auipc	ra,0x5
    800012c8:	138080e7          	jalr	312(ra) # 800063fc <_Z11printStringPKc>
    threads[2] = TCB::createThread(workerBodyB);
    800012cc:	00009517          	auipc	a0,0x9
    800012d0:	3ec53503          	ld	a0,1004(a0) # 8000a6b8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800012d4:	00000097          	auipc	ra,0x0
    800012d8:	5f4080e7          	jalr	1524(ra) # 800018c8 <_ZN3TCB12createThreadEPFvvE>
    800012dc:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    800012e0:	00008517          	auipc	a0,0x8
    800012e4:	d5850513          	addi	a0,a0,-680 # 80009038 <CONSOLE_STATUS+0x28>
    800012e8:	00005097          	auipc	ra,0x5
    800012ec:	114080e7          	jalr	276(ra) # 800063fc <_Z11printStringPKc>
    threads[3] = TCB::createThread(workerBodyC);
    800012f0:	00009517          	auipc	a0,0x9
    800012f4:	40053503          	ld	a0,1024(a0) # 8000a6f0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800012f8:	00000097          	auipc	ra,0x0
    800012fc:	5d0080e7          	jalr	1488(ra) # 800018c8 <_ZN3TCB12createThreadEPFvvE>
    80001300:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    80001304:	00008517          	auipc	a0,0x8
    80001308:	d4c50513          	addi	a0,a0,-692 # 80009050 <CONSOLE_STATUS+0x40>
    8000130c:	00005097          	auipc	ra,0x5
    80001310:	0f0080e7          	jalr	240(ra) # 800063fc <_Z11printStringPKc>
    threads[4] = TCB::createThread(workerBodyD);
    80001314:	00009517          	auipc	a0,0x9
    80001318:	3e453503          	ld	a0,996(a0) # 8000a6f8 <_GLOBAL_OFFSET_TABLE_+0x60>
    8000131c:	00000097          	auipc	ra,0x0
    80001320:	5ac080e7          	jalr	1452(ra) # 800018c8 <_ZN3TCB12createThreadEPFvvE>
    80001324:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    80001328:	00008517          	auipc	a0,0x8
    8000132c:	d4050513          	addi	a0,a0,-704 # 80009068 <CONSOLE_STATUS+0x58>
    80001330:	00005097          	auipc	ra,0x5
    80001334:	0cc080e7          	jalr	204(ra) # 800063fc <_Z11printStringPKc>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001338:	00009797          	auipc	a5,0x9
    8000133c:	3787b783          	ld	a5,888(a5) # 8000a6b0 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80001354:	640080e7          	jalr	1600(ra) # 80001990 <_ZN3TCB5yieldEv>
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
    80001398:	d08080e7          	jalr	-760(ra) # 8000309c <_ZdlPv>
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
    800013bc:	d0c080e7          	jalr	-756(ra) # 800030c4 <_ZdaPv>
    800013c0:	fd1ff06f          	j	80001390 <_Z5main2v+0x11c>
    }
    printString("Finished\n");
    800013c4:	00008517          	auipc	a0,0x8
    800013c8:	cbc50513          	addi	a0,a0,-836 # 80009080 <CONSOLE_STATUS+0x70>
    800013cc:	00005097          	auipc	ra,0x5
    800013d0:	030080e7          	jalr	48(ra) # 800063fc <_Z11printStringPKc>

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
    8000145c:	538080e7          	jalr	1336(ra) # 80001990 <_ZN3TCB5yieldEv>
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
    800014c0:	f40080e7          	jalr	-192(ra) # 800063fc <_Z11printStringPKc>
        printInteger(i);
    800014c4:	00048513          	mv	a0,s1
    800014c8:	00005097          	auipc	ra,0x5
    800014cc:	fa4080e7          	jalr	-92(ra) # 8000646c <_Z12printIntegerm>
        printString("\n");
    800014d0:	00008517          	auipc	a0,0x8
    800014d4:	c4050513          	addi	a0,a0,-960 # 80009110 <CONSOLE_STATUS+0x100>
    800014d8:	00005097          	auipc	ra,0x5
    800014dc:	f24080e7          	jalr	-220(ra) # 800063fc <_Z11printStringPKc>
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
    80001558:	ea8080e7          	jalr	-344(ra) # 800063fc <_Z11printStringPKc>
        printInteger(i);
    8000155c:	00048513          	mv	a0,s1
    80001560:	00005097          	auipc	ra,0x5
    80001564:	f0c080e7          	jalr	-244(ra) # 8000646c <_Z12printIntegerm>
        printString("\n");
    80001568:	00008517          	auipc	a0,0x8
    8000156c:	ba850513          	addi	a0,a0,-1112 # 80009110 <CONSOLE_STATUS+0x100>
    80001570:	00005097          	auipc	ra,0x5
    80001574:	e8c080e7          	jalr	-372(ra) # 800063fc <_Z11printStringPKc>
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
    800015c0:	e40080e7          	jalr	-448(ra) # 800063fc <_Z11printStringPKc>
        printInteger(i);
    800015c4:	00048513          	mv	a0,s1
    800015c8:	00005097          	auipc	ra,0x5
    800015cc:	ea4080e7          	jalr	-348(ra) # 8000646c <_Z12printIntegerm>
        printString("\n");
    800015d0:	00008517          	auipc	a0,0x8
    800015d4:	b4050513          	addi	a0,a0,-1216 # 80009110 <CONSOLE_STATUS+0x100>
    800015d8:	00005097          	auipc	ra,0x5
    800015dc:	e24080e7          	jalr	-476(ra) # 800063fc <_Z11printStringPKc>
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
    800015fc:	e04080e7          	jalr	-508(ra) # 800063fc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001600:	00700313          	li	t1,7
    TCB::yield();
    80001604:	00000097          	auipc	ra,0x0
    80001608:	38c080e7          	jalr	908(ra) # 80001990 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000160c:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001610:	00008517          	auipc	a0,0x8
    80001614:	aa850513          	addi	a0,a0,-1368 # 800090b8 <CONSOLE_STATUS+0xa8>
    80001618:	00005097          	auipc	ra,0x5
    8000161c:	de4080e7          	jalr	-540(ra) # 800063fc <_Z11printStringPKc>
    printInteger(t1);
    80001620:	00090513          	mv	a0,s2
    80001624:	00005097          	auipc	ra,0x5
    80001628:	e48080e7          	jalr	-440(ra) # 8000646c <_Z12printIntegerm>
    printString("\n");
    8000162c:	00008517          	auipc	a0,0x8
    80001630:	ae450513          	addi	a0,a0,-1308 # 80009110 <CONSOLE_STATUS+0x100>
    80001634:	00005097          	auipc	ra,0x5
    80001638:	dc8080e7          	jalr	-568(ra) # 800063fc <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    8000163c:	00c00513          	li	a0,12
    80001640:	00000097          	auipc	ra,0x0
    80001644:	db0080e7          	jalr	-592(ra) # 800013f0 <_ZL9fibonaccim>
    80001648:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    8000164c:	00008517          	auipc	a0,0x8
    80001650:	a7450513          	addi	a0,a0,-1420 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001654:	00005097          	auipc	ra,0x5
    80001658:	da8080e7          	jalr	-600(ra) # 800063fc <_Z11printStringPKc>
    printInteger(result);
    8000165c:	00090513          	mv	a0,s2
    80001660:	00005097          	auipc	ra,0x5
    80001664:	e0c080e7          	jalr	-500(ra) # 8000646c <_Z12printIntegerm>
    printString("\n");
    80001668:	00008517          	auipc	a0,0x8
    8000166c:	aa850513          	addi	a0,a0,-1368 # 80009110 <CONSOLE_STATUS+0x100>
    80001670:	00005097          	auipc	ra,0x5
    80001674:	d8c080e7          	jalr	-628(ra) # 800063fc <_Z11printStringPKc>
    80001678:	0380006f          	j	800016b0 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    8000167c:	00008517          	auipc	a0,0x8
    80001680:	a2450513          	addi	a0,a0,-1500 # 800090a0 <CONSOLE_STATUS+0x90>
    80001684:	00005097          	auipc	ra,0x5
    80001688:	d78080e7          	jalr	-648(ra) # 800063fc <_Z11printStringPKc>
        printInteger(i);
    8000168c:	00048513          	mv	a0,s1
    80001690:	00005097          	auipc	ra,0x5
    80001694:	ddc080e7          	jalr	-548(ra) # 8000646c <_Z12printIntegerm>
        printString("\n");
    80001698:	00008517          	auipc	a0,0x8
    8000169c:	a7850513          	addi	a0,a0,-1416 # 80009110 <CONSOLE_STATUS+0x100>
    800016a0:	00005097          	auipc	ra,0x5
    800016a4:	d5c080e7          	jalr	-676(ra) # 800063fc <_Z11printStringPKc>
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
    800016fc:	d04080e7          	jalr	-764(ra) # 800063fc <_Z11printStringPKc>
        printInteger(i);
    80001700:	00048513          	mv	a0,s1
    80001704:	00005097          	auipc	ra,0x5
    80001708:	d68080e7          	jalr	-664(ra) # 8000646c <_Z12printIntegerm>
        printString("\n");
    8000170c:	00008517          	auipc	a0,0x8
    80001710:	a0450513          	addi	a0,a0,-1532 # 80009110 <CONSOLE_STATUS+0x100>
    80001714:	00005097          	auipc	ra,0x5
    80001718:	ce8080e7          	jalr	-792(ra) # 800063fc <_Z11printStringPKc>
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
    80001738:	cc8080e7          	jalr	-824(ra) # 800063fc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000173c:	00500313          	li	t1,5
    TCB::yield();
    80001740:	00000097          	auipc	ra,0x0
    80001744:	250080e7          	jalr	592(ra) # 80001990 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    80001748:	01000513          	li	a0,16
    8000174c:	00000097          	auipc	ra,0x0
    80001750:	ca4080e7          	jalr	-860(ra) # 800013f0 <_ZL9fibonaccim>
    80001754:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001758:	00008517          	auipc	a0,0x8
    8000175c:	99050513          	addi	a0,a0,-1648 # 800090e8 <CONSOLE_STATUS+0xd8>
    80001760:	00005097          	auipc	ra,0x5
    80001764:	c9c080e7          	jalr	-868(ra) # 800063fc <_Z11printStringPKc>
    printInteger(result);
    80001768:	00090513          	mv	a0,s2
    8000176c:	00005097          	auipc	ra,0x5
    80001770:	d00080e7          	jalr	-768(ra) # 8000646c <_Z12printIntegerm>
    printString("\n");
    80001774:	00008517          	auipc	a0,0x8
    80001778:	99c50513          	addi	a0,a0,-1636 # 80009110 <CONSOLE_STATUS+0x100>
    8000177c:	00005097          	auipc	ra,0x5
    80001780:	c80080e7          	jalr	-896(ra) # 800063fc <_Z11printStringPKc>
    80001784:	0380006f          	j	800017bc <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    80001788:	00008517          	auipc	a0,0x8
    8000178c:	94850513          	addi	a0,a0,-1720 # 800090d0 <CONSOLE_STATUS+0xc0>
    80001790:	00005097          	auipc	ra,0x5
    80001794:	c6c080e7          	jalr	-916(ra) # 800063fc <_Z11printStringPKc>
        printInteger(i);
    80001798:	00048513          	mv	a0,s1
    8000179c:	00005097          	auipc	ra,0x5
    800017a0:	cd0080e7          	jalr	-816(ra) # 8000646c <_Z12printIntegerm>
        printString("\n");
    800017a4:	00008517          	auipc	a0,0x8
    800017a8:	96c50513          	addi	a0,a0,-1684 # 80009110 <CONSOLE_STATUS+0x100>
    800017ac:	00005097          	auipc	ra,0x5
    800017b0:	c50080e7          	jalr	-944(ra) # 800063fc <_Z11printStringPKc>
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

    Riscv::popSppSpie();
    800017f0:	00005097          	auipc	ra,0x5
    800017f4:	93c080e7          	jalr	-1732(ra) # 8000612c <_ZN5Riscv10popSppSpieEv>
    mem_alloc(12);
    800017f8:	00c00513          	li	a0,12
    800017fc:	00000097          	auipc	ra,0x0
    80001800:	928080e7          	jalr	-1752(ra) # 80001124 <_Z9mem_allocm>


    printString("\nKObjectAllocator tests:\n");
    80001804:	00008517          	auipc	a0,0x8
    80001808:	8f450513          	addi	a0,a0,-1804 # 800090f8 <CONSOLE_STATUS+0xe8>
    8000180c:	00005097          	auipc	ra,0x5
    80001810:	bf0080e7          	jalr	-1040(ra) # 800063fc <_Z11printStringPKc>

class KObjectAllocatorTest {
public:
    KObjectAllocatorTest() {}
    void* operator new(size_t size) {
        return MemoryAllocator::instance()->kmem_alloc(size);
    80001814:	00000097          	auipc	ra,0x0
    80001818:	350080e7          	jalr	848(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    8000181c:	04000593          	li	a1,64
    80001820:	00000097          	auipc	ra,0x0
    80001824:	428080e7          	jalr	1064(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80001828:	00050493          	mv	s1,a0
    KObjectAllocatorTest() {}
    8000182c:	00400793          	li	a5,4
    80001830:	00f53023          	sd	a5,0(a0)
    80001834:	00008797          	auipc	a5,0x8
    80001838:	8f478793          	addi	a5,a5,-1804 # 80009128 <CONSOLE_STATUS+0x118>
    8000183c:	0007b883          	ld	a7,0(a5)
    80001840:	0087b803          	ld	a6,8(a5)
    80001844:	0107b583          	ld	a1,16(a5)
    80001848:	0187b603          	ld	a2,24(a5)
    8000184c:	0207b683          	ld	a3,32(a5)
    80001850:	0287b703          	ld	a4,40(a5)
    80001854:	0307b783          	ld	a5,48(a5)
    80001858:	01153423          	sd	a7,8(a0)
    8000185c:	01053823          	sd	a6,16(a0)
    80001860:	00b53c23          	sd	a1,24(a0)
    80001864:	02c53023          	sd	a2,32(a0)
    80001868:	02d53423          	sd	a3,40(a0)
    8000186c:	02e53823          	sd	a4,48(a0)
    80001870:	02f53c23          	sd	a5,56(a0)
    KObjectAllocatorTest* t2 = new KObjectAllocatorTest;
    t2->runTests();
    80001874:	00004097          	auipc	ra,0x4
    80001878:	058080e7          	jalr	88(ra) # 800058cc <_ZN20KObjectAllocatorTest8runTestsEv>
    delete t2;
    8000187c:	00048c63          	beqz	s1,80001894 <main+0xb8>
    }
    void operator delete(void* p) {
        MemoryAllocator::instance()->kmem_free(p);
    80001880:	00000097          	auipc	ra,0x0
    80001884:	2e4080e7          	jalr	740(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80001888:	00048593          	mv	a1,s1
    8000188c:	00000097          	auipc	ra,0x0
    80001890:	464080e7          	jalr	1124(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>

    printString("\nMemory tests:\n");
    80001894:	00008517          	auipc	a0,0x8
    80001898:	88450513          	addi	a0,a0,-1916 # 80009118 <CONSOLE_STATUS+0x108>
    8000189c:	00005097          	auipc	ra,0x5
    800018a0:	b60080e7          	jalr	-1184(ra) # 800063fc <_Z11printStringPKc>
    MemoryAllocatorTest t1;
    t1.runTests();
    800018a4:	fd840513          	addi	a0,s0,-40
    800018a8:	00001097          	auipc	ra,0x1
    800018ac:	584080e7          	jalr	1412(ra) # 80002e2c <_ZN19MemoryAllocatorTest8runTestsEv>


    return 0;
    800018b0:	00000513          	li	a0,0
    800018b4:	02813083          	ld	ra,40(sp)
    800018b8:	02013403          	ld	s0,32(sp)
    800018bc:	01813483          	ld	s1,24(sp)
    800018c0:	03010113          	addi	sp,sp,48
    800018c4:	00008067          	ret

00000000800018c8 <_ZN3TCB12createThreadEPFvvE>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    800018c8:	fe010113          	addi	sp,sp,-32
    800018cc:	00113c23          	sd	ra,24(sp)
    800018d0:	00813823          	sd	s0,16(sp)
    800018d4:	00913423          	sd	s1,8(sp)
    800018d8:	01213023          	sd	s2,0(sp)
    800018dc:	02010413          	addi	s0,sp,32
    800018e0:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    800018e4:	03000513          	li	a0,48
    800018e8:	00001097          	auipc	ra,0x1
    800018ec:	764080e7          	jalr	1892(ra) # 8000304c <_Znwm>
    800018f0:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    800018f4:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    800018f8:	00090a63          	beqz	s2,8000190c <_ZN3TCB12createThreadEPFvvE+0x44>
    800018fc:	00002537          	lui	a0,0x2
    80001900:	00001097          	auipc	ra,0x1
    80001904:	774080e7          	jalr	1908(ra) # 80003074 <_Znam>
    80001908:	0080006f          	j	80001910 <_ZN3TCB12createThreadEPFvvE+0x48>
    8000190c:	00000513          	li	a0,0
            finished(false)
    80001910:	00a4b423          	sd	a0,8(s1)
    80001914:	00000797          	auipc	a5,0x0
    80001918:	09878793          	addi	a5,a5,152 # 800019ac <_ZN3TCB13threadWrapperEv>
    8000191c:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001920:	02050863          	beqz	a0,80001950 <_ZN3TCB12createThreadEPFvvE+0x88>
    80001924:	000027b7          	lui	a5,0x2
    80001928:	00f507b3          	add	a5,a0,a5
            finished(false)
    8000192c:	00f4bc23          	sd	a5,24(s1)
    80001930:	00200793          	li	a5,2
    80001934:	02f4b023          	sd	a5,32(s1)
    80001938:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    8000193c:	02090c63          	beqz	s2,80001974 <_ZN3TCB12createThreadEPFvvE+0xac>
    80001940:	00048513          	mv	a0,s1
    80001944:	00005097          	auipc	ra,0x5
    80001948:	a18080e7          	jalr	-1512(ra) # 8000635c <_ZN9Scheduler3putEP3TCB>
    8000194c:	0280006f          	j	80001974 <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001950:	00000793          	li	a5,0
    80001954:	fd9ff06f          	j	8000192c <_ZN3TCB12createThreadEPFvvE+0x64>
    80001958:	00050913          	mv	s2,a0
    8000195c:	00048513          	mv	a0,s1
    80001960:	00001097          	auipc	ra,0x1
    80001964:	73c080e7          	jalr	1852(ra) # 8000309c <_ZdlPv>
    80001968:	00090513          	mv	a0,s2
    8000196c:	0000a097          	auipc	ra,0xa
    80001970:	eec080e7          	jalr	-276(ra) # 8000b858 <_Unwind_Resume>
}
    80001974:	00048513          	mv	a0,s1
    80001978:	01813083          	ld	ra,24(sp)
    8000197c:	01013403          	ld	s0,16(sp)
    80001980:	00813483          	ld	s1,8(sp)
    80001984:	00013903          	ld	s2,0(sp)
    80001988:	02010113          	addi	sp,sp,32
    8000198c:	00008067          	ret

0000000080001990 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    80001990:	ff010113          	addi	sp,sp,-16
    80001994:	00813423          	sd	s0,8(sp)
    80001998:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    8000199c:	00000073          	ecall
}
    800019a0:	00813403          	ld	s0,8(sp)
    800019a4:	01010113          	addi	sp,sp,16
    800019a8:	00008067          	ret

00000000800019ac <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    800019ac:	fe010113          	addi	sp,sp,-32
    800019b0:	00113c23          	sd	ra,24(sp)
    800019b4:	00813823          	sd	s0,16(sp)
    800019b8:	00913423          	sd	s1,8(sp)
    800019bc:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    800019c0:	00004097          	auipc	ra,0x4
    800019c4:	76c080e7          	jalr	1900(ra) # 8000612c <_ZN5Riscv10popSppSpieEv>
    running->body();
    800019c8:	00009497          	auipc	s1,0x9
    800019cc:	d8848493          	addi	s1,s1,-632 # 8000a750 <_ZN3TCB7runningE>
    800019d0:	0004b783          	ld	a5,0(s1)
    800019d4:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    800019d8:	000780e7          	jalr	a5
    running->setFinished(true);
    800019dc:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    800019e0:	00100713          	li	a4,1
    800019e4:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    800019e8:	00000097          	auipc	ra,0x0
    800019ec:	fa8080e7          	jalr	-88(ra) # 80001990 <_ZN3TCB5yieldEv>
}
    800019f0:	01813083          	ld	ra,24(sp)
    800019f4:	01013403          	ld	s0,16(sp)
    800019f8:	00813483          	ld	s1,8(sp)
    800019fc:	02010113          	addi	sp,sp,32
    80001a00:	00008067          	ret

0000000080001a04 <_ZN3TCB8dispatchEv>:
{
    80001a04:	fe010113          	addi	sp,sp,-32
    80001a08:	00113c23          	sd	ra,24(sp)
    80001a0c:	00813823          	sd	s0,16(sp)
    80001a10:	00913423          	sd	s1,8(sp)
    80001a14:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001a18:	00009497          	auipc	s1,0x9
    80001a1c:	d384b483          	ld	s1,-712(s1) # 8000a750 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001a20:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001a24:	02078c63          	beqz	a5,80001a5c <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001a28:	00005097          	auipc	ra,0x5
    80001a2c:	8cc080e7          	jalr	-1844(ra) # 800062f4 <_ZN9Scheduler3getEv>
    80001a30:	00009797          	auipc	a5,0x9
    80001a34:	d2a7b023          	sd	a0,-736(a5) # 8000a750 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001a38:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001a3c:	01048513          	addi	a0,s1,16
    80001a40:	fffff097          	auipc	ra,0xfffff
    80001a44:	6d0080e7          	jalr	1744(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001a48:	01813083          	ld	ra,24(sp)
    80001a4c:	01013403          	ld	s0,16(sp)
    80001a50:	00813483          	ld	s1,8(sp)
    80001a54:	02010113          	addi	sp,sp,32
    80001a58:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001a5c:	00048513          	mv	a0,s1
    80001a60:	00005097          	auipc	ra,0x5
    80001a64:	8fc080e7          	jalr	-1796(ra) # 8000635c <_ZN9Scheduler3putEP3TCB>
    80001a68:	fc1ff06f          	j	80001a28 <_ZN3TCB8dispatchEv+0x24>

0000000080001a6c <_ZN15MemoryAllocator17getMinBlockNumberEm>:
    newMemoryAllocator->freeMemoryHead->next = nullptr;

    return newMemoryAllocator;
}

size_t MemoryAllocator::getMinBlockNumber(size_t size) {
    80001a6c:	ff010113          	addi	sp,sp,-16
    80001a70:	00813423          	sd	s0,8(sp)
    80001a74:	01010413          	addi	s0,sp,16
    size_t blockNo = size / MEM_BLOCK_SIZE;
    80001a78:	00655713          	srli	a4,a0,0x6
    blockNo = blockNo + (size - blockNo * MEM_BLOCK_SIZE != 0);
    80001a7c:	fc057793          	andi	a5,a0,-64
    80001a80:	40a78533          	sub	a0,a5,a0
    80001a84:	00a03533          	snez	a0,a0
    return blockNo;
}
    80001a88:	00e50533          	add	a0,a0,a4
    80001a8c:	00813403          	ld	s0,8(sp)
    80001a90:	01010113          	addi	sp,sp,16
    80001a94:	00008067          	ret

0000000080001a98 <_ZN15MemoryAllocator14createInstanceEv>:
MemoryAllocator* MemoryAllocator::createInstance() {
    80001a98:	fd010113          	addi	sp,sp,-48
    80001a9c:	02113423          	sd	ra,40(sp)
    80001aa0:	02813023          	sd	s0,32(sp)
    80001aa4:	00913c23          	sd	s1,24(sp)
    80001aa8:	01213823          	sd	s2,16(sp)
    80001aac:	01313423          	sd	s3,8(sp)
    80001ab0:	01413023          	sd	s4,0(sp)
    80001ab4:	03010413          	addi	s0,sp,48
    managedMemorySpaceStart = (uint8*) HEAP_START_ADDR;
    80001ab8:	00009797          	auipc	a5,0x9
    80001abc:	be87b783          	ld	a5,-1048(a5) # 8000a6a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001ac0:	0007b903          	ld	s2,0(a5)
    managedMemorySpaceEnd = (uint8*) HEAP_END_ADDR;
    80001ac4:	00009797          	auipc	a5,0x9
    80001ac8:	c247b783          	ld	a5,-988(a5) # 8000a6e8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001acc:	0007b483          	ld	s1,0(a5)
    80001ad0:	00009a17          	auipc	s4,0x9
    80001ad4:	c90a0a13          	addi	s4,s4,-880 # 8000a760 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    80001ad8:	009a3023          	sd	s1,0(s4)
    minMemoryFragmentSize = getMinBlockNumber(sizeof(SegmentDescriptor)) + getMinBlockNumber(sizeof(uint64));
    80001adc:	01000513          	li	a0,16
    80001ae0:	00000097          	auipc	ra,0x0
    80001ae4:	f8c080e7          	jalr	-116(ra) # 80001a6c <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001ae8:	00050993          	mv	s3,a0
    80001aec:	00800513          	li	a0,8
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	f7c080e7          	jalr	-132(ra) # 80001a6c <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001af8:	00a989b3          	add	s3,s3,a0
    80001afc:	013a3423          	sd	s3,8(s4)
    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
    80001b00:	02000513          	li	a0,32
    80001b04:	00000097          	auipc	ra,0x0
    80001b08:	f68080e7          	jalr	-152(ra) # 80001a6c <_ZN15MemoryAllocator17getMinBlockNumberEm>
    managedMemorySpaceStart += noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE;
    80001b0c:	00651513          	slli	a0,a0,0x6
    80001b10:	00a90533          	add	a0,s2,a0
    80001b14:	00aa3823          	sd	a0,16(s4)
    newMemoryAllocator->totalTaken = 0;
    80001b18:	00093423          	sd	zero,8(s2)
    newMemoryAllocator->totalFree = (size_t) (managedMemorySpaceEnd - managedMemorySpaceStart);
    80001b1c:	40a484b3          	sub	s1,s1,a0
    80001b20:	00993023          	sd	s1,0(s2)
    newMemoryAllocator->freeBlockNo = newMemoryAllocator->totalFree / MEM_BLOCK_SIZE;
    80001b24:	0064d493          	srli	s1,s1,0x6
    80001b28:	00993823          	sd	s1,16(s2)
    newMemoryAllocator->freeMemoryHead = (SegmentDescriptor*) managedMemorySpaceStart;
    80001b2c:	010a3783          	ld	a5,16(s4)
    80001b30:	00f93c23          	sd	a5,24(s2)
    newMemoryAllocator->freeMemoryHead->noBlocks = newMemoryAllocator->freeBlockNo;
    80001b34:	0097b023          	sd	s1,0(a5)
    newMemoryAllocator->freeMemoryHead->next = nullptr;
    80001b38:	01893783          	ld	a5,24(s2)
    80001b3c:	0007b423          	sd	zero,8(a5)
}
    80001b40:	00090513          	mv	a0,s2
    80001b44:	02813083          	ld	ra,40(sp)
    80001b48:	02013403          	ld	s0,32(sp)
    80001b4c:	01813483          	ld	s1,24(sp)
    80001b50:	01013903          	ld	s2,16(sp)
    80001b54:	00813983          	ld	s3,8(sp)
    80001b58:	00013a03          	ld	s4,0(sp)
    80001b5c:	03010113          	addi	sp,sp,48
    80001b60:	00008067          	ret

0000000080001b64 <_ZN15MemoryAllocator8instanceEv>:
    if (onlyInstance == nullptr)
    80001b64:	00009797          	auipc	a5,0x9
    80001b68:	c147b783          	ld	a5,-1004(a5) # 8000a778 <_ZN15MemoryAllocator12onlyInstanceE>
    80001b6c:	00078863          	beqz	a5,80001b7c <_ZN15MemoryAllocator8instanceEv+0x18>
}
    80001b70:	00009517          	auipc	a0,0x9
    80001b74:	c0853503          	ld	a0,-1016(a0) # 8000a778 <_ZN15MemoryAllocator12onlyInstanceE>
    80001b78:	00008067          	ret
MemoryAllocator* MemoryAllocator::instance() {
    80001b7c:	ff010113          	addi	sp,sp,-16
    80001b80:	00113423          	sd	ra,8(sp)
    80001b84:	00813023          	sd	s0,0(sp)
    80001b88:	01010413          	addi	s0,sp,16
        onlyInstance = createInstance();
    80001b8c:	00000097          	auipc	ra,0x0
    80001b90:	f0c080e7          	jalr	-244(ra) # 80001a98 <_ZN15MemoryAllocator14createInstanceEv>
    80001b94:	00009797          	auipc	a5,0x9
    80001b98:	bea7b223          	sd	a0,-1052(a5) # 8000a778 <_ZN15MemoryAllocator12onlyInstanceE>
}
    80001b9c:	00009517          	auipc	a0,0x9
    80001ba0:	bdc53503          	ld	a0,-1060(a0) # 8000a778 <_ZN15MemoryAllocator12onlyInstanceE>
    80001ba4:	00813083          	ld	ra,8(sp)
    80001ba8:	00013403          	ld	s0,0(sp)
    80001bac:	01010113          	addi	sp,sp,16
    80001bb0:	00008067          	ret

0000000080001bb4 <_ZN15MemoryAllocator8firstFitEm>:


MemoryAllocator::SegmentDescriptor* MemoryAllocator::firstFit(size_t blockNo) {
    80001bb4:	ff010113          	addi	sp,sp,-16
    80001bb8:	00813423          	sd	s0,8(sp)
    80001bbc:	01010413          	addi	s0,sp,16
    80001bc0:	00050693          	mv	a3,a0
    SegmentDescriptor* largeEnoughSegment = freeMemoryHead;
    80001bc4:	01853503          	ld	a0,24(a0)
    SegmentDescriptor* prevSegment = nullptr;
    80001bc8:	00000713          	li	a4,0
    while (largeEnoughSegment && largeEnoughSegment->noBlocks < blockNo) {
    80001bcc:	00050c63          	beqz	a0,80001be4 <_ZN15MemoryAllocator8firstFitEm+0x30>
    80001bd0:	00053783          	ld	a5,0(a0)
    80001bd4:	00b7f863          	bgeu	a5,a1,80001be4 <_ZN15MemoryAllocator8firstFitEm+0x30>
        prevSegment = largeEnoughSegment;
    80001bd8:	00050713          	mv	a4,a0
        largeEnoughSegment = largeEnoughSegment->next;
    80001bdc:	00853503          	ld	a0,8(a0)
    while (largeEnoughSegment && largeEnoughSegment->noBlocks < blockNo) {
    80001be0:	fedff06f          	j	80001bcc <_ZN15MemoryAllocator8firstFitEm+0x18>
    }
    if (!largeEnoughSegment) return nullptr;
    80001be4:	04050663          	beqz	a0,80001c30 <_ZN15MemoryAllocator8firstFitEm+0x7c>

    if (largeEnoughSegment->noBlocks - blockNo >= minMemoryFragmentSize) {
    80001be8:	00053783          	ld	a5,0(a0)
    80001bec:	40b787b3          	sub	a5,a5,a1
    80001bf0:	00009617          	auipc	a2,0x9
    80001bf4:	b7863603          	ld	a2,-1160(a2) # 8000a768 <_ZN15MemoryAllocator21minMemoryFragmentSizeE>
    80001bf8:	02c7e063          	bltu	a5,a2,80001c18 <_ZN15MemoryAllocator8firstFitEm+0x64>
        SegmentDescriptor* newSegment = (SegmentDescriptor*) ((uint8*) largeEnoughSegment + blockNo * MEM_BLOCK_SIZE);
    80001bfc:	00659613          	slli	a2,a1,0x6
    80001c00:	00c50633          	add	a2,a0,a2
        newSegment->noBlocks = largeEnoughSegment->noBlocks - blockNo;
    80001c04:	00f63023          	sd	a5,0(a2)
        newSegment->next = largeEnoughSegment->next;
    80001c08:	00853783          	ld	a5,8(a0)
    80001c0c:	00f63423          	sd	a5,8(a2)
        largeEnoughSegment->next = newSegment;
    80001c10:	00c53423          	sd	a2,8(a0)
        largeEnoughSegment->noBlocks = blockNo;
    80001c14:	00b53023          	sd	a1,0(a0)
    }

    if (prevSegment) prevSegment->next = largeEnoughSegment->next;
    80001c18:	00070663          	beqz	a4,80001c24 <_ZN15MemoryAllocator8firstFitEm+0x70>
    80001c1c:	00853783          	ld	a5,8(a0)
    80001c20:	00f73423          	sd	a5,8(a4)
    if (freeMemoryHead == largeEnoughSegment)
    80001c24:	0186b783          	ld	a5,24(a3)
    80001c28:	00a78a63          	beq	a5,a0,80001c3c <_ZN15MemoryAllocator8firstFitEm+0x88>
        freeMemoryHead = largeEnoughSegment->next;

    largeEnoughSegment->next = nullptr;
    80001c2c:	00053423          	sd	zero,8(a0)
    return largeEnoughSegment;
}
    80001c30:	00813403          	ld	s0,8(sp)
    80001c34:	01010113          	addi	sp,sp,16
    80001c38:	00008067          	ret
        freeMemoryHead = largeEnoughSegment->next;
    80001c3c:	00853783          	ld	a5,8(a0)
    80001c40:	00f6bc23          	sd	a5,24(a3)
    80001c44:	fe9ff06f          	j	80001c2c <_ZN15MemoryAllocator8firstFitEm+0x78>

0000000080001c48 <_ZN15MemoryAllocator10kmem_allocEm>:

void* MemoryAllocator::kmem_alloc(size_t size) {
    80001c48:	fe010113          	addi	sp,sp,-32
    80001c4c:	00113c23          	sd	ra,24(sp)
    80001c50:	00813823          	sd	s0,16(sp)
    80001c54:	00913423          	sd	s1,8(sp)
    80001c58:	01213023          	sd	s2,0(sp)
    80001c5c:	02010413          	addi	s0,sp,32
    80001c60:	00050493          	mv	s1,a0
    80001c64:	00058913          	mv	s2,a1
    size_t minBlockNo = getMinBlockNumber(size);
    80001c68:	00058513          	mv	a0,a1
    80001c6c:	00000097          	auipc	ra,0x0
    80001c70:	e00080e7          	jalr	-512(ra) # 80001a6c <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001c74:	00050593          	mv	a1,a0
    if (minBlockNo * MEM_BLOCK_SIZE - size < sizeof(SegmentDescriptor)) ++minBlockNo;
    80001c78:	00651793          	slli	a5,a0,0x6
    80001c7c:	41278933          	sub	s2,a5,s2
    80001c80:	00f00793          	li	a5,15
    80001c84:	0127e463          	bltu	a5,s2,80001c8c <_ZN15MemoryAllocator10kmem_allocEm+0x44>
    80001c88:	00150593          	addi	a1,a0,1
    SegmentDescriptor* newTaken = firstFit(minBlockNo);
    80001c8c:	00048513          	mv	a0,s1
    80001c90:	00000097          	auipc	ra,0x0
    80001c94:	f24080e7          	jalr	-220(ra) # 80001bb4 <_ZN15MemoryAllocator8firstFitEm>
    if (!newTaken) return nullptr;
    80001c98:	04050063          	beqz	a0,80001cd8 <_ZN15MemoryAllocator10kmem_allocEm+0x90>

    freeBlockNo -= newTaken->noBlocks;
    80001c9c:	00053703          	ld	a4,0(a0)
    80001ca0:	0104b783          	ld	a5,16(s1)
    80001ca4:	40e787b3          	sub	a5,a5,a4
    80001ca8:	00f4b823          	sd	a5,16(s1)
    totalFree -= newTaken->noBlocks * MEM_BLOCK_SIZE;
    80001cac:	00053783          	ld	a5,0(a0)
    80001cb0:	00679713          	slli	a4,a5,0x6
    80001cb4:	0004b783          	ld	a5,0(s1)
    80001cb8:	40e787b3          	sub	a5,a5,a4
    80001cbc:	00f4b023          	sd	a5,0(s1)
    totalTaken += newTaken->noBlocks * MEM_BLOCK_SIZE;
    80001cc0:	00053783          	ld	a5,0(a0)
    80001cc4:	00679713          	slli	a4,a5,0x6
    80001cc8:	0084b783          	ld	a5,8(s1)
    80001ccc:	00e787b3          	add	a5,a5,a4
    80001cd0:	00f4b423          	sd	a5,8(s1)

    return (uint8*) newTaken + sizeof(SegmentDescriptor);
    80001cd4:	01050513          	addi	a0,a0,16
}
    80001cd8:	01813083          	ld	ra,24(sp)
    80001cdc:	01013403          	ld	s0,16(sp)
    80001ce0:	00813483          	ld	s1,8(sp)
    80001ce4:	00013903          	ld	s2,0(sp)
    80001ce8:	02010113          	addi	sp,sp,32
    80001cec:	00008067          	ret

0000000080001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* newFree) {
    80001cf0:	ff010113          	addi	sp,sp,-16
    80001cf4:	00813423          	sd	s0,8(sp)
    80001cf8:	01010413          	addi	s0,sp,16
    if (newFree == nullptr) return 0;
    80001cfc:	08058863          	beqz	a1,80001d8c <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>
    SegmentDescriptor* newFreeSegment = (SegmentDescriptor*) ((uint8*) newFree - sizeof(SegmentDescriptor));
    80001d00:	ff058693          	addi	a3,a1,-16
    freeBlockNo += newFreeSegment->noBlocks;
    80001d04:	ff05b703          	ld	a4,-16(a1)
    80001d08:	01053783          	ld	a5,16(a0)
    80001d0c:	00e787b3          	add	a5,a5,a4
    80001d10:	00f53823          	sd	a5,16(a0)
    totalFree += newFreeSegment->noBlocks * MEM_BLOCK_SIZE;
    80001d14:	ff05b783          	ld	a5,-16(a1)
    80001d18:	00679713          	slli	a4,a5,0x6
    80001d1c:	00053783          	ld	a5,0(a0)
    80001d20:	00e787b3          	add	a5,a5,a4
    80001d24:	00f53023          	sd	a5,0(a0)
    totalTaken -= newFreeSegment->noBlocks * MEM_BLOCK_SIZE;
    80001d28:	ff05b783          	ld	a5,-16(a1)
    80001d2c:	00679713          	slli	a4,a5,0x6
    80001d30:	00853783          	ld	a5,8(a0)
    80001d34:	40e787b3          	sub	a5,a5,a4
    80001d38:	00f53423          	sd	a5,8(a0)

    SegmentDescriptor* after = freeMemoryHead, *prev = nullptr;
    80001d3c:	01853783          	ld	a5,24(a0)
    80001d40:	00000713          	li	a4,0
    while (after && after < newFreeSegment) {
    80001d44:	00078a63          	beqz	a5,80001d58 <_ZN15MemoryAllocator9kmem_freeEPv+0x68>
    80001d48:	00d7f863          	bgeu	a5,a3,80001d58 <_ZN15MemoryAllocator9kmem_freeEPv+0x68>
        prev = after; after = after->next; }
    80001d4c:	00078713          	mv	a4,a5
    80001d50:	0087b783          	ld	a5,8(a5)
    while (after && after < newFreeSegment) {
    80001d54:	ff1ff06f          	j	80001d44 <_ZN15MemoryAllocator9kmem_freeEPv+0x54>

    newFreeSegment->next = after;
    80001d58:	fef5bc23          	sd	a5,-8(a1)
    if (prev) prev->next = newFreeSegment;
    80001d5c:	04070063          	beqz	a4,80001d9c <_ZN15MemoryAllocator9kmem_freeEPv+0xac>
    80001d60:	00d73423          	sd	a3,8(a4)
    else freeMemoryHead = newFreeSegment;

    if (prev && (uint8*) prev + prev->noBlocks * MEM_BLOCK_SIZE == (uint8*) newFreeSegment) {
    80001d64:	00070a63          	beqz	a4,80001d78 <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
    80001d68:	00073503          	ld	a0,0(a4)
    80001d6c:	00651613          	slli	a2,a0,0x6
    80001d70:	00c70633          	add	a2,a4,a2
    80001d74:	02d60863          	beq	a2,a3,80001da4 <_ZN15MemoryAllocator9kmem_freeEPv+0xb4>
        prev->next = newFreeSegment->next;
        prev->noBlocks += newFreeSegment->noBlocks;
        newFreeSegment = prev;
    }

    if (after && (uint8*) newFreeSegment + newFreeSegment->noBlocks * MEM_BLOCK_SIZE == (uint8*) after) {
    80001d78:	00078a63          	beqz	a5,80001d8c <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>
    80001d7c:	0006b603          	ld	a2,0(a3)
    80001d80:	00661713          	slli	a4,a2,0x6
    80001d84:	00e68733          	add	a4,a3,a4
    80001d88:	02f70c63          	beq	a4,a5,80001dc0 <_ZN15MemoryAllocator9kmem_freeEPv+0xd0>
        newFreeSegment->next = after->next; newFreeSegment->noBlocks += after->noBlocks; }

    return 0;
}
    80001d8c:	00000513          	li	a0,0
    80001d90:	00813403          	ld	s0,8(sp)
    80001d94:	01010113          	addi	sp,sp,16
    80001d98:	00008067          	ret
    else freeMemoryHead = newFreeSegment;
    80001d9c:	00d53c23          	sd	a3,24(a0)
    80001da0:	fc5ff06f          	j	80001d64 <_ZN15MemoryAllocator9kmem_freeEPv+0x74>
        prev->next = newFreeSegment->next;
    80001da4:	ff85b683          	ld	a3,-8(a1)
    80001da8:	00d73423          	sd	a3,8(a4)
        prev->noBlocks += newFreeSegment->noBlocks;
    80001dac:	ff05b683          	ld	a3,-16(a1)
    80001db0:	00d50533          	add	a0,a0,a3
    80001db4:	00a73023          	sd	a0,0(a4)
        newFreeSegment = prev;
    80001db8:	00070693          	mv	a3,a4
    80001dbc:	fbdff06f          	j	80001d78 <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
        newFreeSegment->next = after->next; newFreeSegment->noBlocks += after->noBlocks; }
    80001dc0:	0087b703          	ld	a4,8(a5)
    80001dc4:	00e6b423          	sd	a4,8(a3)
    80001dc8:	0007b783          	ld	a5,0(a5)
    80001dcc:	00f60633          	add	a2,a2,a5
    80001dd0:	00c6b023          	sd	a2,0(a3)
    80001dd4:	fb9ff06f          	j	80001d8c <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>

0000000080001dd8 <_ZN15MemoryAllocator30printInstanceMemorySpaceParamsEv>:

void MemoryAllocator::printInstanceMemorySpaceParams() {
    80001dd8:	fe010113          	addi	sp,sp,-32
    80001ddc:	00113c23          	sd	ra,24(sp)
    80001de0:	00813823          	sd	s0,16(sp)
    80001de4:	00913423          	sd	s1,8(sp)
    80001de8:	01213023          	sd	s2,0(sp)
    80001dec:	02010413          	addi	s0,sp,32
    80001df0:	00050493          	mv	s1,a0
    printString("##################################\n\n");
    80001df4:	00007517          	auipc	a0,0x7
    80001df8:	36c50513          	addi	a0,a0,876 # 80009160 <CONSOLE_STATUS+0x150>
    80001dfc:	00004097          	auipc	ra,0x4
    80001e00:	600080e7          	jalr	1536(ra) # 800063fc <_Z11printStringPKc>
    printString("MemoryAllocator address: "); printInteger((uint64)this); printString("\n");
    80001e04:	00007517          	auipc	a0,0x7
    80001e08:	38450513          	addi	a0,a0,900 # 80009188 <CONSOLE_STATUS+0x178>
    80001e0c:	00004097          	auipc	ra,0x4
    80001e10:	5f0080e7          	jalr	1520(ra) # 800063fc <_Z11printStringPKc>
    80001e14:	00048513          	mv	a0,s1
    80001e18:	00004097          	auipc	ra,0x4
    80001e1c:	654080e7          	jalr	1620(ra) # 8000646c <_Z12printIntegerm>
    80001e20:	00007517          	auipc	a0,0x7
    80001e24:	2f050513          	addi	a0,a0,752 # 80009110 <CONSOLE_STATUS+0x100>
    80001e28:	00004097          	auipc	ra,0x4
    80001e2c:	5d4080e7          	jalr	1492(ra) # 800063fc <_Z11printStringPKc>

    // size_t noBlocksForStoringMemoryAllocator = sizeof(MemoryAllocator) / MEM_BLOCK_SIZE + 1;
    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
    80001e30:	02000513          	li	a0,32
    80001e34:	00000097          	auipc	ra,0x0
    80001e38:	c38080e7          	jalr	-968(ra) # 80001a6c <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001e3c:	00050913          	mv	s2,a0
    printString("noBlocksForStoringMemoryAllocator: ");
    80001e40:	00007517          	auipc	a0,0x7
    80001e44:	36850513          	addi	a0,a0,872 # 800091a8 <CONSOLE_STATUS+0x198>
    80001e48:	00004097          	auipc	ra,0x4
    80001e4c:	5b4080e7          	jalr	1460(ra) # 800063fc <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator); printString("\n");
    80001e50:	00090513          	mv	a0,s2
    80001e54:	00004097          	auipc	ra,0x4
    80001e58:	618080e7          	jalr	1560(ra) # 8000646c <_Z12printIntegerm>
    80001e5c:	00007517          	auipc	a0,0x7
    80001e60:	2b450513          	addi	a0,a0,692 # 80009110 <CONSOLE_STATUS+0x100>
    80001e64:	00004097          	auipc	ra,0x4
    80001e68:	598080e7          	jalr	1432(ra) # 800063fc <_Z11printStringPKc>
    printString("noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE: ");
    80001e6c:	00007517          	auipc	a0,0x7
    80001e70:	36450513          	addi	a0,a0,868 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80001e74:	00004097          	auipc	ra,0x4
    80001e78:	588080e7          	jalr	1416(ra) # 800063fc <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE); printString("\n\n");
    80001e7c:	00691513          	slli	a0,s2,0x6
    80001e80:	00004097          	auipc	ra,0x4
    80001e84:	5ec080e7          	jalr	1516(ra) # 8000646c <_Z12printIntegerm>
    80001e88:	00007517          	auipc	a0,0x7
    80001e8c:	38050513          	addi	a0,a0,896 # 80009208 <CONSOLE_STATUS+0x1f8>
    80001e90:	00004097          	auipc	ra,0x4
    80001e94:	56c080e7          	jalr	1388(ra) # 800063fc <_Z11printStringPKc>

    printString("Managed memory space start: ");
    80001e98:	00007517          	auipc	a0,0x7
    80001e9c:	37850513          	addi	a0,a0,888 # 80009210 <CONSOLE_STATUS+0x200>
    80001ea0:	00004097          	auipc	ra,0x4
    80001ea4:	55c080e7          	jalr	1372(ra) # 800063fc <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceStart); printString("\n");
    80001ea8:	00009917          	auipc	s2,0x9
    80001eac:	8b890913          	addi	s2,s2,-1864 # 8000a760 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    80001eb0:	01093503          	ld	a0,16(s2)
    80001eb4:	00004097          	auipc	ra,0x4
    80001eb8:	5b8080e7          	jalr	1464(ra) # 8000646c <_Z12printIntegerm>
    80001ebc:	00007517          	auipc	a0,0x7
    80001ec0:	25450513          	addi	a0,a0,596 # 80009110 <CONSOLE_STATUS+0x100>
    80001ec4:	00004097          	auipc	ra,0x4
    80001ec8:	538080e7          	jalr	1336(ra) # 800063fc <_Z11printStringPKc>
    printString("Managed memory space end: ");
    80001ecc:	00007517          	auipc	a0,0x7
    80001ed0:	36450513          	addi	a0,a0,868 # 80009230 <CONSOLE_STATUS+0x220>
    80001ed4:	00004097          	auipc	ra,0x4
    80001ed8:	528080e7          	jalr	1320(ra) # 800063fc <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceEnd); printString("\n\n");
    80001edc:	00093503          	ld	a0,0(s2)
    80001ee0:	00004097          	auipc	ra,0x4
    80001ee4:	58c080e7          	jalr	1420(ra) # 8000646c <_Z12printIntegerm>
    80001ee8:	00007517          	auipc	a0,0x7
    80001eec:	32050513          	addi	a0,a0,800 # 80009208 <CONSOLE_STATUS+0x1f8>
    80001ef0:	00004097          	auipc	ra,0x4
    80001ef4:	50c080e7          	jalr	1292(ra) # 800063fc <_Z11printStringPKc>

    printString("Total Free: "); printInteger(getTotalFree()); printString("\n");
    80001ef8:	00007517          	auipc	a0,0x7
    80001efc:	35850513          	addi	a0,a0,856 # 80009250 <CONSOLE_STATUS+0x240>
    80001f00:	00004097          	auipc	ra,0x4
    80001f04:	4fc080e7          	jalr	1276(ra) # 800063fc <_Z11printStringPKc>
    80001f08:	0004b503          	ld	a0,0(s1)
    80001f0c:	00004097          	auipc	ra,0x4
    80001f10:	560080e7          	jalr	1376(ra) # 8000646c <_Z12printIntegerm>
    80001f14:	00007517          	auipc	a0,0x7
    80001f18:	1fc50513          	addi	a0,a0,508 # 80009110 <CONSOLE_STATUS+0x100>
    80001f1c:	00004097          	auipc	ra,0x4
    80001f20:	4e0080e7          	jalr	1248(ra) # 800063fc <_Z11printStringPKc>
    printString("Total Taken: "); printInteger(getTotalTaken()); printString("\n");
    80001f24:	00007517          	auipc	a0,0x7
    80001f28:	33c50513          	addi	a0,a0,828 # 80009260 <CONSOLE_STATUS+0x250>
    80001f2c:	00004097          	auipc	ra,0x4
    80001f30:	4d0080e7          	jalr	1232(ra) # 800063fc <_Z11printStringPKc>
    80001f34:	0084b503          	ld	a0,8(s1)
    80001f38:	00004097          	auipc	ra,0x4
    80001f3c:	534080e7          	jalr	1332(ra) # 8000646c <_Z12printIntegerm>
    80001f40:	00007517          	auipc	a0,0x7
    80001f44:	1d050513          	addi	a0,a0,464 # 80009110 <CONSOLE_STATUS+0x100>
    80001f48:	00004097          	auipc	ra,0x4
    80001f4c:	4b4080e7          	jalr	1204(ra) # 800063fc <_Z11printStringPKc>
    printString("Free Block No: "); printInteger(getFreeBlockNo()); printString("\n");
    80001f50:	00007517          	auipc	a0,0x7
    80001f54:	32050513          	addi	a0,a0,800 # 80009270 <CONSOLE_STATUS+0x260>
    80001f58:	00004097          	auipc	ra,0x4
    80001f5c:	4a4080e7          	jalr	1188(ra) # 800063fc <_Z11printStringPKc>
    80001f60:	0104b503          	ld	a0,16(s1)
    80001f64:	00004097          	auipc	ra,0x4
    80001f68:	508080e7          	jalr	1288(ra) # 8000646c <_Z12printIntegerm>
    80001f6c:	00007517          	auipc	a0,0x7
    80001f70:	1a450513          	addi	a0,a0,420 # 80009110 <CONSOLE_STATUS+0x100>
    80001f74:	00004097          	auipc	ra,0x4
    80001f78:	488080e7          	jalr	1160(ra) # 800063fc <_Z11printStringPKc>
    printString("\n##################################\n");
    80001f7c:	00007517          	auipc	a0,0x7
    80001f80:	30450513          	addi	a0,a0,772 # 80009280 <CONSOLE_STATUS+0x270>
    80001f84:	00004097          	auipc	ra,0x4
    80001f88:	478080e7          	jalr	1144(ra) # 800063fc <_Z11printStringPKc>
}
    80001f8c:	01813083          	ld	ra,24(sp)
    80001f90:	01013403          	ld	s0,16(sp)
    80001f94:	00813483          	ld	s1,8(sp)
    80001f98:	00013903          	ld	s2,0(sp)
    80001f9c:	02010113          	addi	sp,sp,32
    80001fa0:	00008067          	ret

0000000080001fa4 <_ZN15MemoryAllocator22printMemorySpaceParamsEv>:

void MemoryAllocator::printMemorySpaceParams() {
    80001fa4:	fe010113          	addi	sp,sp,-32
    80001fa8:	00113c23          	sd	ra,24(sp)
    80001fac:	00813823          	sd	s0,16(sp)
    80001fb0:	00913423          	sd	s1,8(sp)
    80001fb4:	01213023          	sd	s2,0(sp)
    80001fb8:	02010413          	addi	s0,sp,32
    printString("----------------------------------\n\n");
    80001fbc:	00007517          	auipc	a0,0x7
    80001fc0:	2ec50513          	addi	a0,a0,748 # 800092a8 <CONSOLE_STATUS+0x298>
    80001fc4:	00004097          	auipc	ra,0x4
    80001fc8:	438080e7          	jalr	1080(ra) # 800063fc <_Z11printStringPKc>
    printString("Size of MemoryAllocator class: ");
    80001fcc:	00007517          	auipc	a0,0x7
    80001fd0:	30450513          	addi	a0,a0,772 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80001fd4:	00004097          	auipc	ra,0x4
    80001fd8:	428080e7          	jalr	1064(ra) # 800063fc <_Z11printStringPKc>
    printInteger(sizeof(MemoryAllocator)); printString("\n");
    80001fdc:	02000513          	li	a0,32
    80001fe0:	00004097          	auipc	ra,0x4
    80001fe4:	48c080e7          	jalr	1164(ra) # 8000646c <_Z12printIntegerm>
    80001fe8:	00007517          	auipc	a0,0x7
    80001fec:	12850513          	addi	a0,a0,296 # 80009110 <CONSOLE_STATUS+0x100>
    80001ff0:	00004097          	auipc	ra,0x4
    80001ff4:	40c080e7          	jalr	1036(ra) # 800063fc <_Z11printStringPKc>

    printString("HEAP_START_ADDR: "); printInteger((uint64)HEAP_START_ADDR); printString("\n");
    80001ff8:	00007517          	auipc	a0,0x7
    80001ffc:	31850513          	addi	a0,a0,792 # 80009310 <CONSOLE_STATUS+0x300>
    80002000:	00004097          	auipc	ra,0x4
    80002004:	3fc080e7          	jalr	1020(ra) # 800063fc <_Z11printStringPKc>
    80002008:	00008497          	auipc	s1,0x8
    8000200c:	6984b483          	ld	s1,1688(s1) # 8000a6a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002010:	0004b503          	ld	a0,0(s1)
    80002014:	00004097          	auipc	ra,0x4
    80002018:	458080e7          	jalr	1112(ra) # 8000646c <_Z12printIntegerm>
    8000201c:	00007517          	auipc	a0,0x7
    80002020:	0f450513          	addi	a0,a0,244 # 80009110 <CONSOLE_STATUS+0x100>
    80002024:	00004097          	auipc	ra,0x4
    80002028:	3d8080e7          	jalr	984(ra) # 800063fc <_Z11printStringPKc>
    printString("HEAP_END_ADDR: "); printInteger((uint64)HEAP_END_ADDR); printString("\n");
    8000202c:	00007517          	auipc	a0,0x7
    80002030:	2c450513          	addi	a0,a0,708 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80002034:	00004097          	auipc	ra,0x4
    80002038:	3c8080e7          	jalr	968(ra) # 800063fc <_Z11printStringPKc>
    8000203c:	00008917          	auipc	s2,0x8
    80002040:	6ac93903          	ld	s2,1708(s2) # 8000a6e8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002044:	00093503          	ld	a0,0(s2)
    80002048:	00004097          	auipc	ra,0x4
    8000204c:	424080e7          	jalr	1060(ra) # 8000646c <_Z12printIntegerm>
    80002050:	00007517          	auipc	a0,0x7
    80002054:	0c050513          	addi	a0,a0,192 # 80009110 <CONSOLE_STATUS+0x100>
    80002058:	00004097          	auipc	ra,0x4
    8000205c:	3a4080e7          	jalr	932(ra) # 800063fc <_Z11printStringPKc>

    printString("HEAP_END_ADDR - HEAP_START_ADDR: ");
    80002060:	00007517          	auipc	a0,0x7
    80002064:	2a050513          	addi	a0,a0,672 # 80009300 <CONSOLE_STATUS+0x2f0>
    80002068:	00004097          	auipc	ra,0x4
    8000206c:	394080e7          	jalr	916(ra) # 800063fc <_Z11printStringPKc>
    printInteger((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)); printString("\n");
    80002070:	00093503          	ld	a0,0(s2)
    80002074:	0004b783          	ld	a5,0(s1)
    80002078:	40f50533          	sub	a0,a0,a5
    8000207c:	00004097          	auipc	ra,0x4
    80002080:	3f0080e7          	jalr	1008(ra) # 8000646c <_Z12printIntegerm>
    80002084:	00007517          	auipc	a0,0x7
    80002088:	08c50513          	addi	a0,a0,140 # 80009110 <CONSOLE_STATUS+0x100>
    8000208c:	00004097          	auipc	ra,0x4
    80002090:	370080e7          	jalr	880(ra) # 800063fc <_Z11printStringPKc>

    printString("MEM_BLOCK_SIZE: "); printInteger(MEM_BLOCK_SIZE); printString("\n");
    80002094:	00007517          	auipc	a0,0x7
    80002098:	29450513          	addi	a0,a0,660 # 80009328 <CONSOLE_STATUS+0x318>
    8000209c:	00004097          	auipc	ra,0x4
    800020a0:	360080e7          	jalr	864(ra) # 800063fc <_Z11printStringPKc>
    800020a4:	04000513          	li	a0,64
    800020a8:	00004097          	auipc	ra,0x4
    800020ac:	3c4080e7          	jalr	964(ra) # 8000646c <_Z12printIntegerm>
    800020b0:	00007517          	auipc	a0,0x7
    800020b4:	06050513          	addi	a0,a0,96 # 80009110 <CONSOLE_STATUS+0x100>
    800020b8:	00004097          	auipc	ra,0x4
    800020bc:	344080e7          	jalr	836(ra) # 800063fc <_Z11printStringPKc>

    printString("Number of blocks in (HEAP_END_ADDR - HEAP_START_ADDR): ");
    800020c0:	00007517          	auipc	a0,0x7
    800020c4:	28050513          	addi	a0,a0,640 # 80009340 <CONSOLE_STATUS+0x330>
    800020c8:	00004097          	auipc	ra,0x4
    800020cc:	334080e7          	jalr	820(ra) # 800063fc <_Z11printStringPKc>
    printInteger(((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)) / MEM_BLOCK_SIZE);
    800020d0:	00093503          	ld	a0,0(s2)
    800020d4:	0004b783          	ld	a5,0(s1)
    800020d8:	40f50533          	sub	a0,a0,a5
    800020dc:	00655513          	srli	a0,a0,0x6
    800020e0:	00004097          	auipc	ra,0x4
    800020e4:	38c080e7          	jalr	908(ra) # 8000646c <_Z12printIntegerm>
    printString("\n");
    800020e8:	00007517          	auipc	a0,0x7
    800020ec:	02850513          	addi	a0,a0,40 # 80009110 <CONSOLE_STATUS+0x100>
    800020f0:	00004097          	auipc	ra,0x4
    800020f4:	30c080e7          	jalr	780(ra) # 800063fc <_Z11printStringPKc>
    printString("\n----------------------------------\n");
    800020f8:	00007517          	auipc	a0,0x7
    800020fc:	28050513          	addi	a0,a0,640 # 80009378 <CONSOLE_STATUS+0x368>
    80002100:	00004097          	auipc	ra,0x4
    80002104:	2fc080e7          	jalr	764(ra) # 800063fc <_Z11printStringPKc>
}
    80002108:	01813083          	ld	ra,24(sp)
    8000210c:	01013403          	ld	s0,16(sp)
    80002110:	00813483          	ld	s1,8(sp)
    80002114:	00013903          	ld	s2,0(sp)
    80002118:	02010113          	addi	sp,sp,32
    8000211c:	00008067          	ret

0000000080002120 <_ZN15MemoryAllocator23printFreeMemoryHeadDataEv>:

void MemoryAllocator::printFreeMemoryHeadData() {
    80002120:	fe010113          	addi	sp,sp,-32
    80002124:	00113c23          	sd	ra,24(sp)
    80002128:	00813823          	sd	s0,16(sp)
    8000212c:	00913423          	sd	s1,8(sp)
    80002130:	02010413          	addi	s0,sp,32
    80002134:	00050493          	mv	s1,a0
    printString("##################################\n\n");
    80002138:	00007517          	auipc	a0,0x7
    8000213c:	02850513          	addi	a0,a0,40 # 80009160 <CONSOLE_STATUS+0x150>
    80002140:	00004097          	auipc	ra,0x4
    80002144:	2bc080e7          	jalr	700(ra) # 800063fc <_Z11printStringPKc>
    printString("freeMemoryHead: ");
    80002148:	00007517          	auipc	a0,0x7
    8000214c:	25850513          	addi	a0,a0,600 # 800093a0 <CONSOLE_STATUS+0x390>
    80002150:	00004097          	auipc	ra,0x4
    80002154:	2ac080e7          	jalr	684(ra) # 800063fc <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead); printString("\n");
    80002158:	0184b503          	ld	a0,24(s1)
    8000215c:	00004097          	auipc	ra,0x4
    80002160:	310080e7          	jalr	784(ra) # 8000646c <_Z12printIntegerm>
    80002164:	00007517          	auipc	a0,0x7
    80002168:	fac50513          	addi	a0,a0,-84 # 80009110 <CONSOLE_STATUS+0x100>
    8000216c:	00004097          	auipc	ra,0x4
    80002170:	290080e7          	jalr	656(ra) # 800063fc <_Z11printStringPKc>
    printString("freeMemoryHead->noBlocks: ");
    80002174:	00007517          	auipc	a0,0x7
    80002178:	24450513          	addi	a0,a0,580 # 800093b8 <CONSOLE_STATUS+0x3a8>
    8000217c:	00004097          	auipc	ra,0x4
    80002180:	280080e7          	jalr	640(ra) # 800063fc <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead->noBlocks); printString("\n");
    80002184:	0184b783          	ld	a5,24(s1)
    80002188:	0007b503          	ld	a0,0(a5)
    8000218c:	00004097          	auipc	ra,0x4
    80002190:	2e0080e7          	jalr	736(ra) # 8000646c <_Z12printIntegerm>
    80002194:	00007517          	auipc	a0,0x7
    80002198:	f7c50513          	addi	a0,a0,-132 # 80009110 <CONSOLE_STATUS+0x100>
    8000219c:	00004097          	auipc	ra,0x4
    800021a0:	260080e7          	jalr	608(ra) # 800063fc <_Z11printStringPKc>
    printString("freeMemoryHead->next: ");
    800021a4:	00007517          	auipc	a0,0x7
    800021a8:	23450513          	addi	a0,a0,564 # 800093d8 <CONSOLE_STATUS+0x3c8>
    800021ac:	00004097          	auipc	ra,0x4
    800021b0:	250080e7          	jalr	592(ra) # 800063fc <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead->next); printString("\n");
    800021b4:	0184b783          	ld	a5,24(s1)
    800021b8:	0087b503          	ld	a0,8(a5)
    800021bc:	00004097          	auipc	ra,0x4
    800021c0:	2b0080e7          	jalr	688(ra) # 8000646c <_Z12printIntegerm>
    800021c4:	00007517          	auipc	a0,0x7
    800021c8:	f4c50513          	addi	a0,a0,-180 # 80009110 <CONSOLE_STATUS+0x100>
    800021cc:	00004097          	auipc	ra,0x4
    800021d0:	230080e7          	jalr	560(ra) # 800063fc <_Z11printStringPKc>
    printString("Segment Descriptor size: ");
    800021d4:	00007517          	auipc	a0,0x7
    800021d8:	21c50513          	addi	a0,a0,540 # 800093f0 <CONSOLE_STATUS+0x3e0>
    800021dc:	00004097          	auipc	ra,0x4
    800021e0:	220080e7          	jalr	544(ra) # 800063fc <_Z11printStringPKc>
    printInteger(sizeof(*freeMemoryHead)); printString("\n");
    800021e4:	01000513          	li	a0,16
    800021e8:	00004097          	auipc	ra,0x4
    800021ec:	284080e7          	jalr	644(ra) # 8000646c <_Z12printIntegerm>
    800021f0:	00007517          	auipc	a0,0x7
    800021f4:	f2050513          	addi	a0,a0,-224 # 80009110 <CONSOLE_STATUS+0x100>
    800021f8:	00004097          	auipc	ra,0x4
    800021fc:	204080e7          	jalr	516(ra) # 800063fc <_Z11printStringPKc>
    printString("\n##################################\n");
    80002200:	00007517          	auipc	a0,0x7
    80002204:	08050513          	addi	a0,a0,128 # 80009280 <CONSOLE_STATUS+0x270>
    80002208:	00004097          	auipc	ra,0x4
    8000220c:	1f4080e7          	jalr	500(ra) # 800063fc <_Z11printStringPKc>
}
    80002210:	01813083          	ld	ra,24(sp)
    80002214:	01013403          	ld	s0,16(sp)
    80002218:	00813483          	ld	s1,8(sp)
    8000221c:	02010113          	addi	sp,sp,32
    80002220:	00008067          	ret

0000000080002224 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv>:
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    return beforeTestFreeBlockNo == afterTestFreeBlockNo - minNoBlocksForSize - addendForSegDesc;

}

size_t MemoryAllocatorTest::getFreeBlocksCnt() {
    80002224:	ff010113          	addi	sp,sp,-16
    80002228:	00113423          	sd	ra,8(sp)
    8000222c:	00813023          	sd	s0,0(sp)
    80002230:	01010413          	addi	s0,sp,16
    MemoryAllocator::SegmentDescriptor* freeMemHead = MemoryAllocator::instance()->freeMemoryHead;
    80002234:	00000097          	auipc	ra,0x0
    80002238:	930080e7          	jalr	-1744(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    8000223c:	01853783          	ld	a5,24(a0)
    size_t blockCnt = 0;
    80002240:	00000513          	li	a0,0
    while (freeMemHead) {
    80002244:	00078a63          	beqz	a5,80002258 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv+0x34>
        blockCnt += freeMemHead->noBlocks;
    80002248:	0007b703          	ld	a4,0(a5)
    8000224c:	00e50533          	add	a0,a0,a4
        freeMemHead = freeMemHead->next;
    80002250:	0087b783          	ld	a5,8(a5)
    while (freeMemHead) {
    80002254:	ff1ff06f          	j	80002244 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv+0x20>
    }
    return blockCnt;
}
    80002258:	00813083          	ld	ra,8(sp)
    8000225c:	00013403          	ld	s0,0(sp)
    80002260:	01010113          	addi	sp,sp,16
    80002264:	00008067          	ret

0000000080002268 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>:

bool MemoryAllocatorTest::testMemoryMetadataValidity() {
    80002268:	fd010113          	addi	sp,sp,-48
    8000226c:	02113423          	sd	ra,40(sp)
    80002270:	02813023          	sd	s0,32(sp)
    80002274:	00913c23          	sd	s1,24(sp)
    80002278:	01213823          	sd	s2,16(sp)
    8000227c:	01313423          	sd	s3,8(sp)
    80002280:	01413023          	sd	s4,0(sp)
    80002284:	03010413          	addi	s0,sp,48
    80002288:	00050913          	mv	s2,a0
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    8000228c:	00000097          	auipc	ra,0x0
    80002290:	8d8080e7          	jalr	-1832(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>

    void* kmem_alloc(size_t size);
    int kmem_free(void* newFree);
    void printInstanceMemorySpaceParams();
    void printFreeMemoryHeadData();
    size_t getTotalFree() { return totalFree; }
    80002294:	00053483          	ld	s1,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002298:	00000097          	auipc	ra,0x0
    8000229c:	8cc080e7          	jalr	-1844(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800022a0:	00853a03          	ld	s4,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    800022a4:	00000097          	auipc	ra,0x0
    800022a8:	8c0080e7          	jalr	-1856(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    800022ac:	01053983          	ld	s3,16(a0)
    size_t freeBlocksCnt = getFreeBlocksCnt();
    800022b0:	00090513          	mv	a0,s2
    800022b4:	00000097          	auipc	ra,0x0
    800022b8:	f70080e7          	jalr	-144(ra) # 80002224 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv>

    if (freeBlocksCnt != beforeTestFreeBlockNo) return false;
    800022bc:	02a99c63          	bne	s3,a0,800022f4 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x8c>
    if (freeBlocksCnt != beforeTestTotalFree / MEM_BLOCK_SIZE) return false;
    800022c0:	0064d793          	srli	a5,s1,0x6
    800022c4:	04a79a63          	bne	a5,a0,80002318 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0xb0>

    size_t totalMemory = (size_t) (MemoryAllocator::managedMemorySpaceEnd - MemoryAllocator::managedMemorySpaceStart);
    800022c8:	00008797          	auipc	a5,0x8
    800022cc:	3e07b783          	ld	a5,992(a5) # 8000a6a8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800022d0:	0007b503          	ld	a0,0(a5)
    800022d4:	00008797          	auipc	a5,0x8
    800022d8:	42c7b783          	ld	a5,1068(a5) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x68>
    800022dc:	0007b783          	ld	a5,0(a5)
    800022e0:	40f507b3          	sub	a5,a0,a5
    return totalMemory == beforeTestTotalFree + beforeTestTotalTaken;
    800022e4:	01448533          	add	a0,s1,s4
    800022e8:	40f50533          	sub	a0,a0,a5
    800022ec:	00153513          	seqz	a0,a0
    800022f0:	0080006f          	j	800022f8 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x90>
    if (freeBlocksCnt != beforeTestFreeBlockNo) return false;
    800022f4:	00000513          	li	a0,0
}
    800022f8:	02813083          	ld	ra,40(sp)
    800022fc:	02013403          	ld	s0,32(sp)
    80002300:	01813483          	ld	s1,24(sp)
    80002304:	01013903          	ld	s2,16(sp)
    80002308:	00813983          	ld	s3,8(sp)
    8000230c:	00013a03          	ld	s4,0(sp)
    80002310:	03010113          	addi	sp,sp,48
    80002314:	00008067          	ret
    if (freeBlocksCnt != beforeTestTotalFree / MEM_BLOCK_SIZE) return false;
    80002318:	00000513          	li	a0,0
    8000231c:	fddff06f          	j	800022f8 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x90>

0000000080002320 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>:
bool MemoryAllocatorTest::testMemoryAllocate(uint64 size, void** allocatedMemoryPointer) {
    80002320:	fa010113          	addi	sp,sp,-96
    80002324:	04113c23          	sd	ra,88(sp)
    80002328:	04813823          	sd	s0,80(sp)
    8000232c:	04913423          	sd	s1,72(sp)
    80002330:	05213023          	sd	s2,64(sp)
    80002334:	03313c23          	sd	s3,56(sp)
    80002338:	03413823          	sd	s4,48(sp)
    8000233c:	03513423          	sd	s5,40(sp)
    80002340:	03613023          	sd	s6,32(sp)
    80002344:	01713c23          	sd	s7,24(sp)
    80002348:	01813823          	sd	s8,16(sp)
    8000234c:	01913423          	sd	s9,8(sp)
    80002350:	01a13023          	sd	s10,0(sp)
    80002354:	06010413          	addi	s0,sp,96
    80002358:	00050a13          	mv	s4,a0
    8000235c:	00058913          	mv	s2,a1
    80002360:	00060993          	mv	s3,a2
    if (!testMemoryMetadataValidity()) return false;
    80002364:	00000097          	auipc	ra,0x0
    80002368:	f04080e7          	jalr	-252(ra) # 80002268 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    8000236c:	00050493          	mv	s1,a0
    80002370:	04051063          	bnez	a0,800023b0 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x90>
}
    80002374:	00048513          	mv	a0,s1
    80002378:	05813083          	ld	ra,88(sp)
    8000237c:	05013403          	ld	s0,80(sp)
    80002380:	04813483          	ld	s1,72(sp)
    80002384:	04013903          	ld	s2,64(sp)
    80002388:	03813983          	ld	s3,56(sp)
    8000238c:	03013a03          	ld	s4,48(sp)
    80002390:	02813a83          	ld	s5,40(sp)
    80002394:	02013b03          	ld	s6,32(sp)
    80002398:	01813b83          	ld	s7,24(sp)
    8000239c:	01013c03          	ld	s8,16(sp)
    800023a0:	00813c83          	ld	s9,8(sp)
    800023a4:	00013d03          	ld	s10,0(sp)
    800023a8:	06010113          	addi	sp,sp,96
    800023ac:	00008067          	ret
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    800023b0:	fffff097          	auipc	ra,0xfffff
    800023b4:	7b4080e7          	jalr	1972(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    800023b8:	00053b03          	ld	s6,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    800023bc:	fffff097          	auipc	ra,0xfffff
    800023c0:	7a8080e7          	jalr	1960(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800023c4:	00853b83          	ld	s7,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    800023c8:	fffff097          	auipc	ra,0xfffff
    800023cc:	79c080e7          	jalr	1948(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    800023d0:	01053c03          	ld	s8,16(a0)
    *allocatedMemoryPointer = MemoryAllocator::instance()->kmem_alloc(size);
    800023d4:	fffff097          	auipc	ra,0xfffff
    800023d8:	790080e7          	jalr	1936(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800023dc:	00090593          	mv	a1,s2
    800023e0:	00000097          	auipc	ra,0x0
    800023e4:	868080e7          	jalr	-1944(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    800023e8:	00050a93          	mv	s5,a0
    800023ec:	00a9b023          	sd	a0,0(s3)
    if (*allocatedMemoryPointer == nullptr && size == (uint64) -37) return true;
    800023f0:	08050663          	beqz	a0,8000247c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x15c>
    size_t minNoBlocksForSize = MemoryAllocator::getMinBlockNumber(size);
    800023f4:	00090513          	mv	a0,s2
    800023f8:	fffff097          	auipc	ra,0xfffff
    800023fc:	674080e7          	jalr	1652(ra) # 80001a6c <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80002400:	00050993          	mv	s3,a0
    size_t addendForSegDesc = minNoBlocksForSize * MEM_BLOCK_SIZE - size < sizeof(MemoryAllocator::SegmentDescriptor);
    80002404:	00651593          	slli	a1,a0,0x6
    80002408:	41258933          	sub	s2,a1,s2
    8000240c:	01093913          	sltiu	s2,s2,16
    size_t allocatedMemory = (minNoBlocksForSize + addendForSegDesc) * MEM_BLOCK_SIZE;
    80002410:	01250cb3          	add	s9,a0,s2
    80002414:	006c9d13          	slli	s10,s9,0x6
    if (!testMemoryMetadataValidity()) return false;
    80002418:	000a0513          	mv	a0,s4
    8000241c:	00000097          	auipc	ra,0x0
    80002420:	e4c080e7          	jalr	-436(ra) # 80002268 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002424:	00050493          	mv	s1,a0
    80002428:	f40506e3          	beqz	a0,80002374 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    size_t afterTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    8000242c:	fffff097          	auipc	ra,0xfffff
    80002430:	738080e7          	jalr	1848(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    80002434:	00053483          	ld	s1,0(a0)
    size_t afterTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002438:	fffff097          	auipc	ra,0xfffff
    8000243c:	72c080e7          	jalr	1836(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    80002440:	00853a03          	ld	s4,8(a0)
    size_t afterTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    80002444:	fffff097          	auipc	ra,0xfffff
    80002448:	720080e7          	jalr	1824(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    8000244c:	01053783          	ld	a5,16(a0)
    if (beforeTestTotalFree != afterTestTotalFree + allocatedMemory) return false;
    80002450:	01a484b3          	add	s1,s1,s10
    80002454:	03649a63          	bne	s1,s6,80002488 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x168>
    if (beforeTestTotalTaken != afterTestTotalTaken - allocatedMemory) return false;
    80002458:	41aa0d33          	sub	s10,s4,s10
    8000245c:	037d1a63          	bne	s10,s7,80002490 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x170>
    if (beforeTestFreeBlockNo != afterTestFreeBlockNo + minNoBlocksForSize + addendForSegDesc) return false;
    80002460:	013789b3          	add	s3,a5,s3
    80002464:	01298933          	add	s2,s3,s2
    80002468:	03891863          	bne	s2,s8,80002498 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x178>
    return segDesc->noBlocks == minNoBlocksForSize + addendForSegDesc;
    8000246c:	ff0ab483          	ld	s1,-16(s5)
    80002470:	409c84b3          	sub	s1,s9,s1
    80002474:	0014b493          	seqz	s1,s1
    80002478:	efdff06f          	j	80002374 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (*allocatedMemoryPointer == nullptr && size == (uint64) -37) return true;
    8000247c:	fdb00793          	li	a5,-37
    80002480:	f6f91ae3          	bne	s2,a5,800023f4 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0xd4>
    80002484:	ef1ff06f          	j	80002374 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestTotalFree != afterTestTotalFree + allocatedMemory) return false;
    80002488:	00000493          	li	s1,0
    8000248c:	ee9ff06f          	j	80002374 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestTotalTaken != afterTestTotalTaken - allocatedMemory) return false;
    80002490:	00000493          	li	s1,0
    80002494:	ee1ff06f          	j	80002374 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestFreeBlockNo != afterTestFreeBlockNo + minNoBlocksForSize + addendForSegDesc) return false;
    80002498:	00000493          	li	s1,0
    8000249c:	ed9ff06f          	j	80002374 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>

00000000800024a0 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>:
bool MemoryAllocatorTest::testMemoryFree(uint64 size, void* allocatedMemoryPointer) {
    800024a0:	fb010113          	addi	sp,sp,-80
    800024a4:	04113423          	sd	ra,72(sp)
    800024a8:	04813023          	sd	s0,64(sp)
    800024ac:	02913c23          	sd	s1,56(sp)
    800024b0:	03213823          	sd	s2,48(sp)
    800024b4:	03313423          	sd	s3,40(sp)
    800024b8:	03413023          	sd	s4,32(sp)
    800024bc:	01513c23          	sd	s5,24(sp)
    800024c0:	01613823          	sd	s6,16(sp)
    800024c4:	01713423          	sd	s7,8(sp)
    800024c8:	01813023          	sd	s8,0(sp)
    800024cc:	05010413          	addi	s0,sp,80
    800024d0:	00050a13          	mv	s4,a0
    800024d4:	00058913          	mv	s2,a1
    800024d8:	00060493          	mv	s1,a2
    if (!testMemoryMetadataValidity()) return false;
    800024dc:	00000097          	auipc	ra,0x0
    800024e0:	d8c080e7          	jalr	-628(ra) # 80002268 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800024e4:	02051a63          	bnez	a0,80002518 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x78>
}
    800024e8:	04813083          	ld	ra,72(sp)
    800024ec:	04013403          	ld	s0,64(sp)
    800024f0:	03813483          	ld	s1,56(sp)
    800024f4:	03013903          	ld	s2,48(sp)
    800024f8:	02813983          	ld	s3,40(sp)
    800024fc:	02013a03          	ld	s4,32(sp)
    80002500:	01813a83          	ld	s5,24(sp)
    80002504:	01013b03          	ld	s6,16(sp)
    80002508:	00813b83          	ld	s7,8(sp)
    8000250c:	00013c03          	ld	s8,0(sp)
    80002510:	05010113          	addi	sp,sp,80
    80002514:	00008067          	ret
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002518:	fffff097          	auipc	ra,0xfffff
    8000251c:	64c080e7          	jalr	1612(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    80002520:	00053b03          	ld	s6,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002524:	fffff097          	auipc	ra,0xfffff
    80002528:	640080e7          	jalr	1600(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    8000252c:	00853b83          	ld	s7,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    80002530:	fffff097          	auipc	ra,0xfffff
    80002534:	634080e7          	jalr	1588(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002538:	01053a83          	ld	s5,16(a0)
    size_t minNoBlocksForSize = MemoryAllocator::getMinBlockNumber(size);
    8000253c:	00090513          	mv	a0,s2
    80002540:	fffff097          	auipc	ra,0xfffff
    80002544:	52c080e7          	jalr	1324(ra) # 80001a6c <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80002548:	00050993          	mv	s3,a0
    size_t addendForSegDesc = minNoBlocksForSize * MEM_BLOCK_SIZE - size < sizeof(MemoryAllocator::SegmentDescriptor);
    8000254c:	00651593          	slli	a1,a0,0x6
    80002550:	41258933          	sub	s2,a1,s2
    80002554:	01093913          	sltiu	s2,s2,16
    size_t allocatedMemory = (minNoBlocksForSize + addendForSegDesc) * MEM_BLOCK_SIZE;
    80002558:	01250733          	add	a4,a0,s2
    8000255c:	00671c13          	slli	s8,a4,0x6
    if (!allocatedMemoryPointer) {
    80002560:	08048463          	beqz	s1,800025e8 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x148>
    if (allocatedMemoryPointer) segDesc = (MemoryAllocator::SegmentDescriptor*)
    80002564:	08048a63          	beqz	s1,800025f8 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x158>
    80002568:	ff048793          	addi	a5,s1,-16
    if (allocatedMemoryPointer)
    8000256c:	00048863          	beqz	s1,8000257c <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xdc>
    if (segDesc->noBlocks != minNoBlocksForSize + addendForSegDesc) return false;
    80002570:	0007b703          	ld	a4,0(a5)
    80002574:	012987b3          	add	a5,s3,s2
    80002578:	08f71463          	bne	a4,a5,80002600 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x160>
    MemoryAllocator::instance()->kmem_free(allocatedMemoryPointer);
    8000257c:	fffff097          	auipc	ra,0xfffff
    80002580:	5e8080e7          	jalr	1512(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002584:	00048593          	mv	a1,s1
    80002588:	fffff097          	auipc	ra,0xfffff
    8000258c:	768080e7          	jalr	1896(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002590:	000a0513          	mv	a0,s4
    80002594:	00000097          	auipc	ra,0x0
    80002598:	cd4080e7          	jalr	-812(ra) # 80002268 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    8000259c:	f40506e3          	beqz	a0,800024e8 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    size_t afterTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    800025a0:	fffff097          	auipc	ra,0xfffff
    800025a4:	5c4080e7          	jalr	1476(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    800025a8:	00053483          	ld	s1,0(a0)
    size_t afterTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    800025ac:	fffff097          	auipc	ra,0xfffff
    800025b0:	5b8080e7          	jalr	1464(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800025b4:	00853a03          	ld	s4,8(a0)
    size_t afterTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    800025b8:	fffff097          	auipc	ra,0xfffff
    800025bc:	5ac080e7          	jalr	1452(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    800025c0:	01053783          	ld	a5,16(a0)
    if (beforeTestTotalFree != afterTestTotalFree - allocatedMemory) return false;
    800025c4:	418484b3          	sub	s1,s1,s8
    800025c8:	05649063          	bne	s1,s6,80002608 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x168>
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    800025cc:	014c0733          	add	a4,s8,s4
    800025d0:	05771063          	bne	a4,s7,80002610 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x170>
    return beforeTestFreeBlockNo == afterTestFreeBlockNo - minNoBlocksForSize - addendForSegDesc;
    800025d4:	41378533          	sub	a0,a5,s3
    800025d8:	41250533          	sub	a0,a0,s2
    800025dc:	41550533          	sub	a0,a0,s5
    800025e0:	00153513          	seqz	a0,a0
    800025e4:	f05ff06f          	j	800024e8 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
        minNoBlocksForSize = 0; addendForSegDesc = 0; allocatedMemory = 0;
    800025e8:	00000c13          	li	s8,0
    800025ec:	00000913          	li	s2,0
    800025f0:	00000993          	li	s3,0
    800025f4:	f71ff06f          	j	80002564 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xc4>
    MemoryAllocator::SegmentDescriptor* segDesc = nullptr;
    800025f8:	00048793          	mv	a5,s1
    800025fc:	f71ff06f          	j	8000256c <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xcc>
    if (segDesc->noBlocks != minNoBlocksForSize + addendForSegDesc) return false;
    80002600:	00000513          	li	a0,0
    80002604:	ee5ff06f          	j	800024e8 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    if (beforeTestTotalFree != afterTestTotalFree - allocatedMemory) return false;
    80002608:	00000513          	li	a0,0
    8000260c:	eddff06f          	j	800024e8 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    80002610:	00000513          	li	a0,0
    80002614:	ed5ff06f          	j	800024e8 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>

0000000080002618 <_ZN19MemoryAllocatorTest13firstFitTest1Ev>:
    if (!firstFitTest2()) return false;
    if (!firstFitTest3()) return false;
    return true;
}

bool MemoryAllocatorTest::firstFitTest1() {
    80002618:	fc010113          	addi	sp,sp,-64
    8000261c:	02113c23          	sd	ra,56(sp)
    80002620:	02813823          	sd	s0,48(sp)
    80002624:	02913423          	sd	s1,40(sp)
    80002628:	03213023          	sd	s2,32(sp)
    8000262c:	01313c23          	sd	s3,24(sp)
    80002630:	01413823          	sd	s4,16(sp)
    80002634:	01513423          	sd	s5,8(sp)
    80002638:	04010413          	addi	s0,sp,64
    8000263c:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    80002640:	00000097          	auipc	ra,0x0
    80002644:	c28080e7          	jalr	-984(ra) # 80002268 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002648:	02051463          	bnez	a0,80002670 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x58>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    8000264c:	03813083          	ld	ra,56(sp)
    80002650:	03013403          	ld	s0,48(sp)
    80002654:	02813483          	ld	s1,40(sp)
    80002658:	02013903          	ld	s2,32(sp)
    8000265c:	01813983          	ld	s3,24(sp)
    80002660:	01013a03          	ld	s4,16(sp)
    80002664:	00813a83          	ld	s5,8(sp)
    80002668:	04010113          	addi	sp,sp,64
    8000266c:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002670:	fffff097          	auipc	ra,0xfffff
    80002674:	4f4080e7          	jalr	1268(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002678:	02f00593          	li	a1,47
    8000267c:	fffff097          	auipc	ra,0xfffff
    80002680:	5cc080e7          	jalr	1484(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002684:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002688:	00008797          	auipc	a5,0x8
    8000268c:	0787b783          	ld	a5,120(a5) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002690:	0007b783          	ld	a5,0(a5)
    80002694:	01078793          	addi	a5,a5,16
    80002698:	00a78663          	beq	a5,a0,800026a4 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x8c>
        return false;
    8000269c:	00000513          	li	a0,0
    800026a0:	fadff06f          	j	8000264c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    800026a4:	fffff097          	auipc	ra,0xfffff
    800026a8:	4c0080e7          	jalr	1216(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800026ac:	03000593          	li	a1,48
    800026b0:	fffff097          	auipc	ra,0xfffff
    800026b4:	598080e7          	jalr	1432(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    800026b8:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    800026bc:	00008797          	auipc	a5,0x8
    800026c0:	0447b783          	ld	a5,68(a5) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x68>
    800026c4:	0007b783          	ld	a5,0(a5)
    800026c8:	05078793          	addi	a5,a5,80
    800026cc:	00a78663          	beq	a5,a0,800026d8 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0xc0>
        return false;
    800026d0:	00000513          	li	a0,0
    800026d4:	f79ff06f          	j	8000264c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    800026d8:	fffff097          	auipc	ra,0xfffff
    800026dc:	48c080e7          	jalr	1164(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800026e0:	03100593          	li	a1,49
    800026e4:	fffff097          	auipc	ra,0xfffff
    800026e8:	564080e7          	jalr	1380(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    800026ec:	00050a13          	mv	s4,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + 2 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    800026f0:	00008797          	auipc	a5,0x8
    800026f4:	0107b783          	ld	a5,16(a5) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x68>
    800026f8:	0007b783          	ld	a5,0(a5)
    800026fc:	09078793          	addi	a5,a5,144
    80002700:	00a78663          	beq	a5,a0,8000270c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0xf4>
        return false;
    80002704:	00000513          	li	a0,0
    80002708:	f45ff06f          	j	8000264c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    8000270c:	fffff097          	auipc	ra,0xfffff
    80002710:	458080e7          	jalr	1112(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002714:	00098593          	mv	a1,s3
    80002718:	fffff097          	auipc	ra,0xfffff
    8000271c:	5d8080e7          	jalr	1496(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002720:	fffff097          	auipc	ra,0xfffff
    80002724:	444080e7          	jalr	1092(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002728:	01e00593          	li	a1,30
    8000272c:	fffff097          	auipc	ra,0xfffff
    80002730:	51c080e7          	jalr	1308(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002734:	00050993          	mv	s3,a0
    if (pointers[3] != MemoryAllocator::managedMemorySpaceStart + 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002738:	00008797          	auipc	a5,0x8
    8000273c:	fc87b783          	ld	a5,-56(a5) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002740:	0007b783          	ld	a5,0(a5)
    80002744:	05078793          	addi	a5,a5,80
    80002748:	00a78663          	beq	a5,a0,80002754 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x13c>
        return false;
    8000274c:	00000513          	li	a0,0
    80002750:	efdff06f          	j	8000264c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002754:	fffff097          	auipc	ra,0xfffff
    80002758:	410080e7          	jalr	1040(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    8000275c:	12100593          	li	a1,289
    80002760:	fffff097          	auipc	ra,0xfffff
    80002764:	4e8080e7          	jalr	1256(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002768:	00050a93          	mv	s5,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + 4 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    8000276c:	00008797          	auipc	a5,0x8
    80002770:	f947b783          	ld	a5,-108(a5) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002774:	0007b783          	ld	a5,0(a5)
    80002778:	11078793          	addi	a5,a5,272
    8000277c:	00a78663          	beq	a5,a0,80002788 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x170>
        return false;
    80002780:	00000513          	li	a0,0
    80002784:	ec9ff06f          	j	8000264c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    if (!testMemoryMetadataValidity()) return false;
    80002788:	00048513          	mv	a0,s1
    8000278c:	00000097          	auipc	ra,0x0
    80002790:	adc080e7          	jalr	-1316(ra) # 80002268 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002794:	ea050ce3          	beqz	a0,8000264c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    80002798:	fffff097          	auipc	ra,0xfffff
    8000279c:	3cc080e7          	jalr	972(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800027a0:	00090593          	mv	a1,s2
    800027a4:	fffff097          	auipc	ra,0xfffff
    800027a8:	54c080e7          	jalr	1356(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    800027ac:	fffff097          	auipc	ra,0xfffff
    800027b0:	3b8080e7          	jalr	952(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800027b4:	000a0593          	mv	a1,s4
    800027b8:	fffff097          	auipc	ra,0xfffff
    800027bc:	538080e7          	jalr	1336(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    800027c0:	fffff097          	auipc	ra,0xfffff
    800027c4:	3a4080e7          	jalr	932(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800027c8:	00098593          	mv	a1,s3
    800027cc:	fffff097          	auipc	ra,0xfffff
    800027d0:	524080e7          	jalr	1316(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    800027d4:	fffff097          	auipc	ra,0xfffff
    800027d8:	390080e7          	jalr	912(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800027dc:	000a8593          	mv	a1,s5
    800027e0:	fffff097          	auipc	ra,0xfffff
    800027e4:	510080e7          	jalr	1296(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    800027e8:	00048513          	mv	a0,s1
    800027ec:	00000097          	auipc	ra,0x0
    800027f0:	a7c080e7          	jalr	-1412(ra) # 80002268 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800027f4:	e59ff06f          	j	8000264c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>

00000000800027f8 <_ZN19MemoryAllocatorTest12printPointerEiPPv>:


void MemoryAllocatorTest::printPointer(int i, void** pointers) {
    800027f8:	fe010113          	addi	sp,sp,-32
    800027fc:	00113c23          	sd	ra,24(sp)
    80002800:	00813823          	sd	s0,16(sp)
    80002804:	00913423          	sd	s1,8(sp)
    80002808:	01213023          	sd	s2,0(sp)
    8000280c:	02010413          	addi	s0,sp,32
    80002810:	00058913          	mv	s2,a1
    80002814:	00060493          	mv	s1,a2
    printString("\npointers[");
    80002818:	00007517          	auipc	a0,0x7
    8000281c:	bf850513          	addi	a0,a0,-1032 # 80009410 <CONSOLE_STATUS+0x400>
    80002820:	00004097          	auipc	ra,0x4
    80002824:	bdc080e7          	jalr	-1060(ra) # 800063fc <_Z11printStringPKc>
    printInteger(i);
    80002828:	00090513          	mv	a0,s2
    8000282c:	00004097          	auipc	ra,0x4
    80002830:	c40080e7          	jalr	-960(ra) # 8000646c <_Z12printIntegerm>
    printString("]: ");
    80002834:	00007517          	auipc	a0,0x7
    80002838:	bec50513          	addi	a0,a0,-1044 # 80009420 <CONSOLE_STATUS+0x410>
    8000283c:	00004097          	auipc	ra,0x4
    80002840:	bc0080e7          	jalr	-1088(ra) # 800063fc <_Z11printStringPKc>
    printInteger((uint64)((uint8*) pointers[i] - MemoryAllocator::managedMemorySpaceStart));
    80002844:	00391613          	slli	a2,s2,0x3
    80002848:	00c484b3          	add	s1,s1,a2
    8000284c:	0004b503          	ld	a0,0(s1)
    80002850:	00008797          	auipc	a5,0x8
    80002854:	eb07b783          	ld	a5,-336(a5) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002858:	0007b783          	ld	a5,0(a5)
    8000285c:	40f50533          	sub	a0,a0,a5
    80002860:	00004097          	auipc	ra,0x4
    80002864:	c0c080e7          	jalr	-1012(ra) # 8000646c <_Z12printIntegerm>
    printString("\npointers[");
    80002868:	00007517          	auipc	a0,0x7
    8000286c:	ba850513          	addi	a0,a0,-1112 # 80009410 <CONSOLE_STATUS+0x400>
    80002870:	00004097          	auipc	ra,0x4
    80002874:	b8c080e7          	jalr	-1140(ra) # 800063fc <_Z11printStringPKc>
    printInteger(i);
    80002878:	00090513          	mv	a0,s2
    8000287c:	00004097          	auipc	ra,0x4
    80002880:	bf0080e7          	jalr	-1040(ra) # 8000646c <_Z12printIntegerm>
    printString("]->blockNo: "); printInteger((uint64) (((MemoryAllocator::SegmentDescriptor*) pointers[i])->noBlocks));
    80002884:	00007517          	auipc	a0,0x7
    80002888:	ba450513          	addi	a0,a0,-1116 # 80009428 <CONSOLE_STATUS+0x418>
    8000288c:	00004097          	auipc	ra,0x4
    80002890:	b70080e7          	jalr	-1168(ra) # 800063fc <_Z11printStringPKc>
    80002894:	0004b783          	ld	a5,0(s1)
    80002898:	0007b503          	ld	a0,0(a5)
    8000289c:	00004097          	auipc	ra,0x4
    800028a0:	bd0080e7          	jalr	-1072(ra) # 8000646c <_Z12printIntegerm>
    printString("\n");
    800028a4:	00007517          	auipc	a0,0x7
    800028a8:	86c50513          	addi	a0,a0,-1940 # 80009110 <CONSOLE_STATUS+0x100>
    800028ac:	00004097          	auipc	ra,0x4
    800028b0:	b50080e7          	jalr	-1200(ra) # 800063fc <_Z11printStringPKc>
}
    800028b4:	01813083          	ld	ra,24(sp)
    800028b8:	01013403          	ld	s0,16(sp)
    800028bc:	00813483          	ld	s1,8(sp)
    800028c0:	00013903          	ld	s2,0(sp)
    800028c4:	02010113          	addi	sp,sp,32
    800028c8:	00008067          	ret

00000000800028cc <_ZN19MemoryAllocatorTest13firstFitTest2Ev>:

bool MemoryAllocatorTest::firstFitTest2() {
    800028cc:	fc010113          	addi	sp,sp,-64
    800028d0:	02113c23          	sd	ra,56(sp)
    800028d4:	02813823          	sd	s0,48(sp)
    800028d8:	02913423          	sd	s1,40(sp)
    800028dc:	03213023          	sd	s2,32(sp)
    800028e0:	01313c23          	sd	s3,24(sp)
    800028e4:	01413823          	sd	s4,16(sp)
    800028e8:	01513423          	sd	s5,8(sp)
    800028ec:	04010413          	addi	s0,sp,64
    800028f0:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    800028f4:	00000097          	auipc	ra,0x0
    800028f8:	974080e7          	jalr	-1676(ra) # 80002268 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800028fc:	02051463          	bnez	a0,80002924 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x58>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002900:	03813083          	ld	ra,56(sp)
    80002904:	03013403          	ld	s0,48(sp)
    80002908:	02813483          	ld	s1,40(sp)
    8000290c:	02013903          	ld	s2,32(sp)
    80002910:	01813983          	ld	s3,24(sp)
    80002914:	01013a03          	ld	s4,16(sp)
    80002918:	00813a83          	ld	s5,8(sp)
    8000291c:	04010113          	addi	sp,sp,64
    80002920:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002924:	fffff097          	auipc	ra,0xfffff
    80002928:	240080e7          	jalr	576(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    8000292c:	08200593          	li	a1,130
    80002930:	fffff097          	auipc	ra,0xfffff
    80002934:	318080e7          	jalr	792(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002938:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    8000293c:	00008797          	auipc	a5,0x8
    80002940:	dc47b783          	ld	a5,-572(a5) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002944:	0007b783          	ld	a5,0(a5)
    80002948:	01078793          	addi	a5,a5,16
    8000294c:	00a78663          	beq	a5,a0,80002958 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x8c>
        return false;
    80002950:	00000513          	li	a0,0
    80002954:	fadff06f          	j	80002900 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    80002958:	fffff097          	auipc	ra,0xfffff
    8000295c:	20c080e7          	jalr	524(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002960:	01400593          	li	a1,20
    80002964:	fffff097          	auipc	ra,0xfffff
    80002968:	2e4080e7          	jalr	740(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    8000296c:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 3 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002970:	00008797          	auipc	a5,0x8
    80002974:	d907b783          	ld	a5,-624(a5) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002978:	0007b783          	ld	a5,0(a5)
    8000297c:	0d078793          	addi	a5,a5,208
    80002980:	00a78663          	beq	a5,a0,8000298c <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0xc0>
        return false;
    80002984:	00000513          	li	a0,0
    80002988:	f79ff06f          	j	80002900 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    8000298c:	fffff097          	auipc	ra,0xfffff
    80002990:	1d8080e7          	jalr	472(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002994:	00090593          	mv	a1,s2
    80002998:	fffff097          	auipc	ra,0xfffff
    8000299c:	358080e7          	jalr	856(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    800029a0:	fffff097          	auipc	ra,0xfffff
    800029a4:	1c4080e7          	jalr	452(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800029a8:	07800593          	li	a1,120
    800029ac:	fffff097          	auipc	ra,0xfffff
    800029b0:	29c080e7          	jalr	668(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    800029b4:	00050913          	mv	s2,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    800029b8:	00008797          	auipc	a5,0x8
    800029bc:	d487b783          	ld	a5,-696(a5) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x68>
    800029c0:	0007b783          	ld	a5,0(a5)
    800029c4:	01078793          	addi	a5,a5,16
    800029c8:	00a78663          	beq	a5,a0,800029d4 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x108>
        return false;
    800029cc:	00000513          	li	a0,0
    800029d0:	f31ff06f          	j	80002900 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    800029d4:	fffff097          	auipc	ra,0xfffff
    800029d8:	190080e7          	jalr	400(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800029dc:	01e00593          	li	a1,30
    800029e0:	fffff097          	auipc	ra,0xfffff
    800029e4:	268080e7          	jalr	616(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    800029e8:	00050a13          	mv	s4,a0
    if (pointers[3] != MemoryAllocator::managedMemorySpaceStart + 4 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    800029ec:	00008797          	auipc	a5,0x8
    800029f0:	d147b783          	ld	a5,-748(a5) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x68>
    800029f4:	0007b783          	ld	a5,0(a5)
    800029f8:	11078793          	addi	a5,a5,272
    800029fc:	00a78663          	beq	a5,a0,80002a08 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x13c>
        return false;
    80002a00:	00000513          	li	a0,0
    80002a04:	efdff06f          	j	80002900 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002a08:	fffff097          	auipc	ra,0xfffff
    80002a0c:	15c080e7          	jalr	348(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002a10:	00090593          	mv	a1,s2
    80002a14:	fffff097          	auipc	ra,0xfffff
    80002a18:	2dc080e7          	jalr	732(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002a1c:	fffff097          	auipc	ra,0xfffff
    80002a20:	148080e7          	jalr	328(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002a24:	02f00593          	li	a1,47
    80002a28:	fffff097          	auipc	ra,0xfffff
    80002a2c:	220080e7          	jalr	544(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002a30:	00050913          	mv	s2,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002a34:	00008797          	auipc	a5,0x8
    80002a38:	ccc7b783          	ld	a5,-820(a5) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a3c:	0007b783          	ld	a5,0(a5)
    80002a40:	01078793          	addi	a5,a5,16
    80002a44:	00a78663          	beq	a5,a0,80002a50 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x184>
        return false;
    80002a48:	00000513          	li	a0,0
    80002a4c:	eb5ff06f          	j	80002900 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[5] = MemoryAllocator::instance()->kmem_alloc(sizes[5]);
    80002a50:	fffff097          	auipc	ra,0xfffff
    80002a54:	114080e7          	jalr	276(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002a58:	01400593          	li	a1,20
    80002a5c:	fffff097          	auipc	ra,0xfffff
    80002a60:	1ec080e7          	jalr	492(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002a64:	00050a93          	mv	s5,a0
    if (pointers[5] != MemoryAllocator::managedMemorySpaceStart + 1 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002a68:	00008797          	auipc	a5,0x8
    80002a6c:	c987b783          	ld	a5,-872(a5) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a70:	0007b783          	ld	a5,0(a5)
    80002a74:	05078793          	addi	a5,a5,80
    80002a78:	00a78663          	beq	a5,a0,80002a84 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x1b8>
        return false;
    80002a7c:	00000513          	li	a0,0
    80002a80:	e81ff06f          	j	80002900 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    if (!testMemoryMetadataValidity()) return false;
    80002a84:	00048513          	mv	a0,s1
    80002a88:	fffff097          	auipc	ra,0xfffff
    80002a8c:	7e0080e7          	jalr	2016(ra) # 80002268 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002a90:	e60508e3          	beqz	a0,80002900 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002a94:	fffff097          	auipc	ra,0xfffff
    80002a98:	0d0080e7          	jalr	208(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002a9c:	00098593          	mv	a1,s3
    80002aa0:	fffff097          	auipc	ra,0xfffff
    80002aa4:	250080e7          	jalr	592(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002aa8:	fffff097          	auipc	ra,0xfffff
    80002aac:	0bc080e7          	jalr	188(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002ab0:	000a0593          	mv	a1,s4
    80002ab4:	fffff097          	auipc	ra,0xfffff
    80002ab8:	23c080e7          	jalr	572(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80002abc:	fffff097          	auipc	ra,0xfffff
    80002ac0:	0a8080e7          	jalr	168(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002ac4:	00090593          	mv	a1,s2
    80002ac8:	fffff097          	auipc	ra,0xfffff
    80002acc:	228080e7          	jalr	552(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    80002ad0:	fffff097          	auipc	ra,0xfffff
    80002ad4:	094080e7          	jalr	148(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002ad8:	000a8593          	mv	a1,s5
    80002adc:	fffff097          	auipc	ra,0xfffff
    80002ae0:	214080e7          	jalr	532(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002ae4:	00048513          	mv	a0,s1
    80002ae8:	fffff097          	auipc	ra,0xfffff
    80002aec:	780080e7          	jalr	1920(ra) # 80002268 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002af0:	e11ff06f          	j	80002900 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>

0000000080002af4 <_ZN19MemoryAllocatorTest13firstFitTest3Ev>:


bool MemoryAllocatorTest::firstFitTest3() {
    80002af4:	fb010113          	addi	sp,sp,-80
    80002af8:	04113423          	sd	ra,72(sp)
    80002afc:	04813023          	sd	s0,64(sp)
    80002b00:	02913c23          	sd	s1,56(sp)
    80002b04:	03213823          	sd	s2,48(sp)
    80002b08:	03313423          	sd	s3,40(sp)
    80002b0c:	03413023          	sd	s4,32(sp)
    80002b10:	01513c23          	sd	s5,24(sp)
    80002b14:	01613823          	sd	s6,16(sp)
    80002b18:	01713423          	sd	s7,8(sp)
    80002b1c:	05010413          	addi	s0,sp,80
    80002b20:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    80002b24:	fffff097          	auipc	ra,0xfffff
    80002b28:	744080e7          	jalr	1860(ra) # 80002268 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002b2c:	02051863          	bnez	a0,80002b5c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x68>
    MemoryAllocator::instance()->kmem_free(pointers[6]);
    MemoryAllocator::instance()->kmem_free(pointers[7]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002b30:	04813083          	ld	ra,72(sp)
    80002b34:	04013403          	ld	s0,64(sp)
    80002b38:	03813483          	ld	s1,56(sp)
    80002b3c:	03013903          	ld	s2,48(sp)
    80002b40:	02813983          	ld	s3,40(sp)
    80002b44:	02013a03          	ld	s4,32(sp)
    80002b48:	01813a83          	ld	s5,24(sp)
    80002b4c:	01013b03          	ld	s6,16(sp)
    80002b50:	00813b83          	ld	s7,8(sp)
    80002b54:	05010113          	addi	sp,sp,80
    80002b58:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002b5c:	fffff097          	auipc	ra,0xfffff
    80002b60:	008080e7          	jalr	8(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002b64:	13000593          	li	a1,304
    80002b68:	fffff097          	auipc	ra,0xfffff
    80002b6c:	0e0080e7          	jalr	224(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002b70:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002b74:	00008797          	auipc	a5,0x8
    80002b78:	b8c7b783          	ld	a5,-1140(a5) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b7c:	0007b783          	ld	a5,0(a5)
    80002b80:	01078793          	addi	a5,a5,16
    80002b84:	00a78663          	beq	a5,a0,80002b90 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x9c>
        return false;
    80002b88:	00000513          	li	a0,0
    80002b8c:	fa5ff06f          	j	80002b30 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    80002b90:	fffff097          	auipc	ra,0xfffff
    80002b94:	fd4080e7          	jalr	-44(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002b98:	03100593          	li	a1,49
    80002b9c:	fffff097          	auipc	ra,0xfffff
    80002ba0:	0ac080e7          	jalr	172(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002ba4:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 5 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002ba8:	00008797          	auipc	a5,0x8
    80002bac:	b587b783          	ld	a5,-1192(a5) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002bb0:	0007b783          	ld	a5,0(a5)
    80002bb4:	15078793          	addi	a5,a5,336
    80002bb8:	00a78663          	beq	a5,a0,80002bc4 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0xd0>
        return false;
    80002bbc:	00000513          	li	a0,0
    80002bc0:	f71ff06f          	j	80002b30 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    80002bc4:	fffff097          	auipc	ra,0xfffff
    80002bc8:	fa0080e7          	jalr	-96(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002bcc:	00090593          	mv	a1,s2
    80002bd0:	fffff097          	auipc	ra,0xfffff
    80002bd4:	120080e7          	jalr	288(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    80002bd8:	fffff097          	auipc	ra,0xfffff
    80002bdc:	f8c080e7          	jalr	-116(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002be0:	0e600593          	li	a1,230
    80002be4:	fffff097          	auipc	ra,0xfffff
    80002be8:	064080e7          	jalr	100(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002bec:	00050913          	mv	s2,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002bf0:	00008797          	auipc	a5,0x8
    80002bf4:	b107b783          	ld	a5,-1264(a5) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002bf8:	0007b783          	ld	a5,0(a5)
    80002bfc:	01078793          	addi	a5,a5,16
    80002c00:	00a78663          	beq	a5,a0,80002c0c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x118>
        return false;
    80002c04:	00000513          	li	a0,0
    80002c08:	f29ff06f          	j	80002b30 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002c0c:	fffff097          	auipc	ra,0xfffff
    80002c10:	f58080e7          	jalr	-168(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002c14:	fdb00593          	li	a1,-37
    80002c18:	fffff097          	auipc	ra,0xfffff
    80002c1c:	030080e7          	jalr	48(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002c20:	00050a13          	mv	s4,a0
    if (pointers[3]) return false;
    80002c24:	00050663          	beqz	a0,80002c30 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x13c>
    80002c28:	00000513          	li	a0,0
    80002c2c:	f05ff06f          	j	80002b30 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002c30:	fffff097          	auipc	ra,0xfffff
    80002c34:	f34080e7          	jalr	-204(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002c38:	01e00593          	li	a1,30
    80002c3c:	fffff097          	auipc	ra,0xfffff
    80002c40:	00c080e7          	jalr	12(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002c44:	00050a93          	mv	s5,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + 7 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002c48:	00008797          	auipc	a5,0x8
    80002c4c:	ab87b783          	ld	a5,-1352(a5) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002c50:	0007b783          	ld	a5,0(a5)
    80002c54:	1d078793          	addi	a5,a5,464
    80002c58:	00a78663          	beq	a5,a0,80002c64 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x170>
        return false;
    80002c5c:	00000513          	li	a0,0
    80002c60:	ed1ff06f          	j	80002b30 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002c64:	fffff097          	auipc	ra,0xfffff
    80002c68:	f00080e7          	jalr	-256(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002c6c:	00090593          	mv	a1,s2
    80002c70:	fffff097          	auipc	ra,0xfffff
    80002c74:	080080e7          	jalr	128(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[5] = MemoryAllocator::instance()->kmem_alloc(sizes[5]);
    80002c78:	fffff097          	auipc	ra,0xfffff
    80002c7c:	eec080e7          	jalr	-276(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002c80:	09600593          	li	a1,150
    80002c84:	fffff097          	auipc	ra,0xfffff
    80002c88:	fc4080e7          	jalr	-60(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002c8c:	00050b93          	mv	s7,a0
    if (pointers[5] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002c90:	00008797          	auipc	a5,0x8
    80002c94:	a707b783          	ld	a5,-1424(a5) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002c98:	0007b783          	ld	a5,0(a5)
    80002c9c:	01078793          	addi	a5,a5,16
    80002ca0:	00a78663          	beq	a5,a0,80002cac <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x1b8>
        return false;
    80002ca4:	00000513          	li	a0,0
    80002ca8:	e89ff06f          	j	80002b30 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[6] = MemoryAllocator::instance()->kmem_alloc(sizes[6]);
    80002cac:	fffff097          	auipc	ra,0xfffff
    80002cb0:	eb8080e7          	jalr	-328(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002cb4:	02f00593          	li	a1,47
    80002cb8:	fffff097          	auipc	ra,0xfffff
    80002cbc:	f90080e7          	jalr	-112(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002cc0:	00050b13          	mv	s6,a0
    if (pointers[6] != MemoryAllocator::managedMemorySpaceStart + 3 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002cc4:	00008797          	auipc	a5,0x8
    80002cc8:	a3c7b783          	ld	a5,-1476(a5) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002ccc:	0007b783          	ld	a5,0(a5)
    80002cd0:	0d078793          	addi	a5,a5,208
    80002cd4:	00a78663          	beq	a5,a0,80002ce0 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x1ec>
        return false;
    80002cd8:	00000513          	li	a0,0
    80002cdc:	e55ff06f          	j	80002b30 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[7] = MemoryAllocator::instance()->kmem_alloc(sizes[7]);
    80002ce0:	fffff097          	auipc	ra,0xfffff
    80002ce4:	e84080e7          	jalr	-380(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002ce8:	02500593          	li	a1,37
    80002cec:	fffff097          	auipc	ra,0xfffff
    80002cf0:	f5c080e7          	jalr	-164(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002cf4:	00050913          	mv	s2,a0
    if (pointers[7] != MemoryAllocator::managedMemorySpaceStart + 8 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002cf8:	00008797          	auipc	a5,0x8
    80002cfc:	a087b783          	ld	a5,-1528(a5) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002d00:	0007b783          	ld	a5,0(a5)
    80002d04:	21078793          	addi	a5,a5,528
    80002d08:	00a78663          	beq	a5,a0,80002d14 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x220>
        return false;
    80002d0c:	00000513          	li	a0,0
    80002d10:	e21ff06f          	j	80002b30 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    if (!testMemoryMetadataValidity()) return false;
    80002d14:	00048513          	mv	a0,s1
    80002d18:	fffff097          	auipc	ra,0xfffff
    80002d1c:	550080e7          	jalr	1360(ra) # 80002268 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002d20:	e00508e3          	beqz	a0,80002b30 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002d24:	fffff097          	auipc	ra,0xfffff
    80002d28:	e40080e7          	jalr	-448(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002d2c:	00098593          	mv	a1,s3
    80002d30:	fffff097          	auipc	ra,0xfffff
    80002d34:	fc0080e7          	jalr	-64(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002d38:	fffff097          	auipc	ra,0xfffff
    80002d3c:	e2c080e7          	jalr	-468(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002d40:	000a0593          	mv	a1,s4
    80002d44:	fffff097          	auipc	ra,0xfffff
    80002d48:	fac080e7          	jalr	-84(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80002d4c:	fffff097          	auipc	ra,0xfffff
    80002d50:	e18080e7          	jalr	-488(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002d54:	000a8593          	mv	a1,s5
    80002d58:	fffff097          	auipc	ra,0xfffff
    80002d5c:	f98080e7          	jalr	-104(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    80002d60:	fffff097          	auipc	ra,0xfffff
    80002d64:	e04080e7          	jalr	-508(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002d68:	000b8593          	mv	a1,s7
    80002d6c:	fffff097          	auipc	ra,0xfffff
    80002d70:	f84080e7          	jalr	-124(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[6]);
    80002d74:	fffff097          	auipc	ra,0xfffff
    80002d78:	df0080e7          	jalr	-528(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002d7c:	000b0593          	mv	a1,s6
    80002d80:	fffff097          	auipc	ra,0xfffff
    80002d84:	f70080e7          	jalr	-144(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[7]);
    80002d88:	fffff097          	auipc	ra,0xfffff
    80002d8c:	ddc080e7          	jalr	-548(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80002d90:	00090593          	mv	a1,s2
    80002d94:	fffff097          	auipc	ra,0xfffff
    80002d98:	f5c080e7          	jalr	-164(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002d9c:	00048513          	mv	a0,s1
    80002da0:	fffff097          	auipc	ra,0xfffff
    80002da4:	4c8080e7          	jalr	1224(ra) # 80002268 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002da8:	d89ff06f          	j	80002b30 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>

0000000080002dac <_ZN19MemoryAllocatorTest12testFirstFitEv>:
bool MemoryAllocatorTest::testFirstFit() {
    80002dac:	fe010113          	addi	sp,sp,-32
    80002db0:	00113c23          	sd	ra,24(sp)
    80002db4:	00813823          	sd	s0,16(sp)
    80002db8:	00913423          	sd	s1,8(sp)
    80002dbc:	02010413          	addi	s0,sp,32
    80002dc0:	00050493          	mv	s1,a0
    if (!firstFitTest1()) return false;
    80002dc4:	00000097          	auipc	ra,0x0
    80002dc8:	854080e7          	jalr	-1964(ra) # 80002618 <_ZN19MemoryAllocatorTest13firstFitTest1Ev>
    80002dcc:	00051c63          	bnez	a0,80002de4 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x38>
}
    80002dd0:	01813083          	ld	ra,24(sp)
    80002dd4:	01013403          	ld	s0,16(sp)
    80002dd8:	00813483          	ld	s1,8(sp)
    80002ddc:	02010113          	addi	sp,sp,32
    80002de0:	00008067          	ret
    if (!firstFitTest2()) return false;
    80002de4:	00048513          	mv	a0,s1
    80002de8:	00000097          	auipc	ra,0x0
    80002dec:	ae4080e7          	jalr	-1308(ra) # 800028cc <_ZN19MemoryAllocatorTest13firstFitTest2Ev>
    80002df0:	fe0500e3          	beqz	a0,80002dd0 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x24>
    if (!firstFitTest3()) return false;
    80002df4:	00048513          	mv	a0,s1
    80002df8:	00000097          	auipc	ra,0x0
    80002dfc:	cfc080e7          	jalr	-772(ra) # 80002af4 <_ZN19MemoryAllocatorTest13firstFitTest3Ev>
    80002e00:	fd1ff06f          	j	80002dd0 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x24>

0000000080002e04 <_ZN19MemoryAllocatorTest25testSegmentDescriptorSizeEv>:

bool MemoryAllocatorTest::testSegmentDescriptorSize() {
    80002e04:	ff010113          	addi	sp,sp,-16
    80002e08:	00113423          	sd	ra,8(sp)
    80002e0c:	00813023          	sd	s0,0(sp)
    80002e10:	01010413          	addi	s0,sp,16
    if (!testMemoryMetadataValidity()) return false;
    80002e14:	fffff097          	auipc	ra,0xfffff
    80002e18:	454080e7          	jalr	1108(ra) # 80002268 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    return sizeof(MemoryAllocator::SegmentDescriptor) == 16;
}
    80002e1c:	00813083          	ld	ra,8(sp)
    80002e20:	00013403          	ld	s0,0(sp)
    80002e24:	01010113          	addi	sp,sp,16
    80002e28:	00008067          	ret

0000000080002e2c <_ZN19MemoryAllocatorTest8runTestsEv>:
bool MemoryAllocatorTest::runTests() {
    80002e2c:	f6010113          	addi	sp,sp,-160
    80002e30:	08113c23          	sd	ra,152(sp)
    80002e34:	08813823          	sd	s0,144(sp)
    80002e38:	08913423          	sd	s1,136(sp)
    80002e3c:	09213023          	sd	s2,128(sp)
    80002e40:	07313c23          	sd	s3,120(sp)
    80002e44:	0a010413          	addi	s0,sp,160
    80002e48:	00050993          	mv	s3,a0
    sizes[0] = 3.7 * MEM_BLOCK_SIZE;
    80002e4c:	0ec00793          	li	a5,236
    80002e50:	f6f43423          	sd	a5,-152(s0)
    sizes[1] = MEM_BLOCK_SIZE;
    80002e54:	04000793          	li	a5,64
    80002e58:	f6f43823          	sd	a5,-144(s0)
    sizes[2] = 0.3 * MEM_BLOCK_SIZE;
    80002e5c:	01300793          	li	a5,19
    80002e60:	f6f43c23          	sd	a5,-136(s0)
    sizes[3] = 0;
    80002e64:	f8043023          	sd	zero,-128(s0)
    sizes[4] = -37;
    80002e68:	fdb00793          	li	a5,-37
    80002e6c:	f8f43423          	sd	a5,-120(s0)
    sizes[5] = sizeof(MemoryAllocator::SegmentDescriptor) - 1;
    80002e70:	00f00793          	li	a5,15
    80002e74:	f8f43823          	sd	a5,-112(s0)
    sizes[6] = sizeof(MemoryAllocator::SegmentDescriptor);
    80002e78:	01000793          	li	a5,16
    80002e7c:	f8f43c23          	sd	a5,-104(s0)
    sizes[7] = sizeof(MemoryAllocator::SegmentDescriptor) + 1;
    80002e80:	01100793          	li	a5,17
    80002e84:	faf43023          	sd	a5,-96(s0)
    sizes[8] = MemoryAllocator::minMemoryFragmentSize - 1;
    80002e88:	00008797          	auipc	a5,0x8
    80002e8c:	8407b783          	ld	a5,-1984(a5) # 8000a6c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002e90:	0007b783          	ld	a5,0(a5)
    80002e94:	fff78713          	addi	a4,a5,-1
    80002e98:	fae43423          	sd	a4,-88(s0)
    sizes[9] = MemoryAllocator::minMemoryFragmentSize;
    80002e9c:	faf43823          	sd	a5,-80(s0)
    sizes[10] = MemoryAllocator::minMemoryFragmentSize + 1;
    80002ea0:	00178793          	addi	a5,a5,1
    80002ea4:	faf43c23          	sd	a5,-72(s0)
    sizes[11] = MEM_BLOCK_SIZE - 1;
    80002ea8:	03f00793          	li	a5,63
    80002eac:	fcf43023          	sd	a5,-64(s0)
    sizes[12] = MEM_BLOCK_SIZE + 1;
    80002eb0:	04100793          	li	a5,65
    80002eb4:	fcf43423          	sd	a5,-56(s0)
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    80002eb8:	00000493          	li	s1,0
    80002ebc:	0880006f          	j	80002f44 <_ZN19MemoryAllocatorTest8runTestsEv+0x118>
            printString("Failed testMemoryAllocate test for input ");
    80002ec0:	00006517          	auipc	a0,0x6
    80002ec4:	57850513          	addi	a0,a0,1400 # 80009438 <CONSOLE_STATUS+0x428>
    80002ec8:	00003097          	auipc	ra,0x3
    80002ecc:	534080e7          	jalr	1332(ra) # 800063fc <_Z11printStringPKc>
            printInteger(sizes[i]); printString("\n"); return false;
    80002ed0:	00090513          	mv	a0,s2
    80002ed4:	00003097          	auipc	ra,0x3
    80002ed8:	598080e7          	jalr	1432(ra) # 8000646c <_Z12printIntegerm>
    80002edc:	00006517          	auipc	a0,0x6
    80002ee0:	23450513          	addi	a0,a0,564 # 80009110 <CONSOLE_STATUS+0x100>
    80002ee4:	00003097          	auipc	ra,0x3
    80002ee8:	518080e7          	jalr	1304(ra) # 800063fc <_Z11printStringPKc>
    80002eec:	00000493          	li	s1,0
}
    80002ef0:	00048513          	mv	a0,s1
    80002ef4:	09813083          	ld	ra,152(sp)
    80002ef8:	09013403          	ld	s0,144(sp)
    80002efc:	08813483          	ld	s1,136(sp)
    80002f00:	08013903          	ld	s2,128(sp)
    80002f04:	07813983          	ld	s3,120(sp)
    80002f08:	0a010113          	addi	sp,sp,160
    80002f0c:	00008067          	ret
            printString("Failed testMemoryFree test for input ");
    80002f10:	00006517          	auipc	a0,0x6
    80002f14:	56050513          	addi	a0,a0,1376 # 80009470 <CONSOLE_STATUS+0x460>
    80002f18:	00003097          	auipc	ra,0x3
    80002f1c:	4e4080e7          	jalr	1252(ra) # 800063fc <_Z11printStringPKc>
            printInteger(sizes[i]); printString("\n"); return false;
    80002f20:	00090513          	mv	a0,s2
    80002f24:	00003097          	auipc	ra,0x3
    80002f28:	548080e7          	jalr	1352(ra) # 8000646c <_Z12printIntegerm>
    80002f2c:	00006517          	auipc	a0,0x6
    80002f30:	1e450513          	addi	a0,a0,484 # 80009110 <CONSOLE_STATUS+0x100>
    80002f34:	00003097          	auipc	ra,0x3
    80002f38:	4c8080e7          	jalr	1224(ra) # 800063fc <_Z11printStringPKc>
    80002f3c:	fb1ff06f          	j	80002eec <_ZN19MemoryAllocatorTest8runTestsEv+0xc0>
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    80002f40:	0014849b          	addiw	s1,s1,1
    80002f44:	00c00793          	li	a5,12
    80002f48:	0897c863          	blt	a5,s1,80002fd8 <_ZN19MemoryAllocatorTest8runTestsEv+0x1ac>
        void * allocatedMemoryPointer = nullptr;
    80002f4c:	f6043023          	sd	zero,-160(s0)
        if (!testMemoryAllocate(sizes[i], &allocatedMemoryPointer)) {
    80002f50:	00349793          	slli	a5,s1,0x3
    80002f54:	fd040713          	addi	a4,s0,-48
    80002f58:	00f707b3          	add	a5,a4,a5
    80002f5c:	f987b903          	ld	s2,-104(a5)
    80002f60:	f6040613          	addi	a2,s0,-160
    80002f64:	00090593          	mv	a1,s2
    80002f68:	00098513          	mv	a0,s3
    80002f6c:	fffff097          	auipc	ra,0xfffff
    80002f70:	3b4080e7          	jalr	948(ra) # 80002320 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>
    80002f74:	f40506e3          	beqz	a0,80002ec0 <_ZN19MemoryAllocatorTest8runTestsEv+0x94>
        } else printString("Passed ");
    80002f78:	00006517          	auipc	a0,0x6
    80002f7c:	4f050513          	addi	a0,a0,1264 # 80009468 <CONSOLE_STATUS+0x458>
    80002f80:	00003097          	auipc	ra,0x3
    80002f84:	47c080e7          	jalr	1148(ra) # 800063fc <_Z11printStringPKc>
        if (!testMemoryFree(sizes[i], allocatedMemoryPointer)) {
    80002f88:	f6043603          	ld	a2,-160(s0)
    80002f8c:	00090593          	mv	a1,s2
    80002f90:	00098513          	mv	a0,s3
    80002f94:	fffff097          	auipc	ra,0xfffff
    80002f98:	50c080e7          	jalr	1292(ra) # 800024a0 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>
    80002f9c:	f6050ae3          	beqz	a0,80002f10 <_ZN19MemoryAllocatorTest8runTestsEv+0xe4>
        } else printString("Passed ");
    80002fa0:	00006517          	auipc	a0,0x6
    80002fa4:	4c850513          	addi	a0,a0,1224 # 80009468 <CONSOLE_STATUS+0x458>
    80002fa8:	00003097          	auipc	ra,0x3
    80002fac:	454080e7          	jalr	1108(ra) # 800063fc <_Z11printStringPKc>
        if (i != 0 && (i + 1) % 5 == 0) printString("\n");
    80002fb0:	f80488e3          	beqz	s1,80002f40 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    80002fb4:	0014879b          	addiw	a5,s1,1
    80002fb8:	00500713          	li	a4,5
    80002fbc:	02e7e7bb          	remw	a5,a5,a4
    80002fc0:	f80790e3          	bnez	a5,80002f40 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    80002fc4:	00006517          	auipc	a0,0x6
    80002fc8:	14c50513          	addi	a0,a0,332 # 80009110 <CONSOLE_STATUS+0x100>
    80002fcc:	00003097          	auipc	ra,0x3
    80002fd0:	430080e7          	jalr	1072(ra) # 800063fc <_Z11printStringPKc>
    80002fd4:	f6dff06f          	j	80002f40 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    if (!testFirstFit()) {
    80002fd8:	00098513          	mv	a0,s3
    80002fdc:	00000097          	auipc	ra,0x0
    80002fe0:	dd0080e7          	jalr	-560(ra) # 80002dac <_ZN19MemoryAllocatorTest12testFirstFitEv>
    80002fe4:	00050493          	mv	s1,a0
    80002fe8:	02050e63          	beqz	a0,80003024 <_ZN19MemoryAllocatorTest8runTestsEv+0x1f8>
    else printString("Passed ");
    80002fec:	00006517          	auipc	a0,0x6
    80002ff0:	47c50513          	addi	a0,a0,1148 # 80009468 <CONSOLE_STATUS+0x458>
    80002ff4:	00003097          	auipc	ra,0x3
    80002ff8:	408080e7          	jalr	1032(ra) # 800063fc <_Z11printStringPKc>
    if (!testSegmentDescriptorSize()) {
    80002ffc:	00098513          	mv	a0,s3
    80003000:	00000097          	auipc	ra,0x0
    80003004:	e04080e7          	jalr	-508(ra) # 80002e04 <_ZN19MemoryAllocatorTest25testSegmentDescriptorSizeEv>
    80003008:	00050493          	mv	s1,a0
    8000300c:	02050663          	beqz	a0,80003038 <_ZN19MemoryAllocatorTest8runTestsEv+0x20c>
    else printString("Passed\n");
    80003010:	00006517          	auipc	a0,0x6
    80003014:	4c850513          	addi	a0,a0,1224 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80003018:	00003097          	auipc	ra,0x3
    8000301c:	3e4080e7          	jalr	996(ra) # 800063fc <_Z11printStringPKc>
    80003020:	ed1ff06f          	j	80002ef0 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>
        printString("Failed testFirstFit\n"); return false; }
    80003024:	00006517          	auipc	a0,0x6
    80003028:	47450513          	addi	a0,a0,1140 # 80009498 <CONSOLE_STATUS+0x488>
    8000302c:	00003097          	auipc	ra,0x3
    80003030:	3d0080e7          	jalr	976(ra) # 800063fc <_Z11printStringPKc>
    80003034:	ebdff06f          	j	80002ef0 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>
        printString("Failed testSegmentDescriptorSize\n"); return false; }
    80003038:	00006517          	auipc	a0,0x6
    8000303c:	47850513          	addi	a0,a0,1144 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80003040:	00003097          	auipc	ra,0x3
    80003044:	3bc080e7          	jalr	956(ra) # 800063fc <_Z11printStringPKc>
    80003048:	ea9ff06f          	j	80002ef0 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>

000000008000304c <_Znwm>:


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    8000304c:	ff010113          	addi	sp,sp,-16
    80003050:	00113423          	sd	ra,8(sp)
    80003054:	00813023          	sd	s0,0(sp)
    80003058:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    8000305c:	00005097          	auipc	ra,0x5
    80003060:	6ac080e7          	jalr	1708(ra) # 80008708 <__mem_alloc>
    //return MemoryAllocator::instance()->kmem_alloc(n);
}
    80003064:	00813083          	ld	ra,8(sp)
    80003068:	00013403          	ld	s0,0(sp)
    8000306c:	01010113          	addi	sp,sp,16
    80003070:	00008067          	ret

0000000080003074 <_Znam>:

void *operator new[](size_t n)
{
    80003074:	ff010113          	addi	sp,sp,-16
    80003078:	00113423          	sd	ra,8(sp)
    8000307c:	00813023          	sd	s0,0(sp)
    80003080:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80003084:	00005097          	auipc	ra,0x5
    80003088:	684080e7          	jalr	1668(ra) # 80008708 <__mem_alloc>
    //return MemoryAllocator::instance()->kmem_alloc(n);
}
    8000308c:	00813083          	ld	ra,8(sp)
    80003090:	00013403          	ld	s0,0(sp)
    80003094:	01010113          	addi	sp,sp,16
    80003098:	00008067          	ret

000000008000309c <_ZdlPv>:

void operator delete(void *p) noexcept
{
    8000309c:	ff010113          	addi	sp,sp,-16
    800030a0:	00113423          	sd	ra,8(sp)
    800030a4:	00813023          	sd	s0,0(sp)
    800030a8:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800030ac:	00005097          	auipc	ra,0x5
    800030b0:	590080e7          	jalr	1424(ra) # 8000863c <__mem_free>
    //MemoryAllocator::instance()->kmem_free(p);
}
    800030b4:	00813083          	ld	ra,8(sp)
    800030b8:	00013403          	ld	s0,0(sp)
    800030bc:	01010113          	addi	sp,sp,16
    800030c0:	00008067          	ret

00000000800030c4 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    800030c4:	ff010113          	addi	sp,sp,-16
    800030c8:	00113423          	sd	ra,8(sp)
    800030cc:	00813023          	sd	s0,0(sp)
    800030d0:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800030d4:	00005097          	auipc	ra,0x5
    800030d8:	568080e7          	jalr	1384(ra) # 8000863c <__mem_free>
    //MemoryAllocator::instance()->kmem_free(p);
    800030dc:	00813083          	ld	ra,8(sp)
    800030e0:	00013403          	ld	s0,0(sp)
    800030e4:	01010113          	addi	sp,sp,16
    800030e8:	00008067          	ret

00000000800030ec <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>:
    }
    return false;
}

bool KObjectAllocatorTest::getValueOfBitAt(size_t byte, size_t bit, KObjectAllocator* objAlloc) {
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i) {
    800030ec:	00000793          	li	a5,0
    800030f0:	0080006f          	j	800030f8 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator+0xc>
    800030f4:	00178793          	addi	a5,a5,1
    800030f8:	0306b703          	ld	a4,48(a3)
    800030fc:	04e7f263          	bgeu	a5,a4,80003140 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator+0x54>
        if (i * objAlloc->memorySizeForBits <= byte && byte < (i + 1) * objAlloc->memorySizeForBits)
    80003100:	0106b703          	ld	a4,16(a3)
    80003104:	02f70533          	mul	a0,a4,a5
    80003108:	fea5e6e3          	bltu	a1,a0,800030f4 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator+0x8>
    8000310c:	00178813          	addi	a6,a5,1
    80003110:	03070733          	mul	a4,a4,a6
    80003114:	fee5f0e3          	bgeu	a1,a4,800030f4 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator+0x8>
            return (objAlloc->bitVectors[i][byte - i * objAlloc->memorySizeForBits] >> bit & (uint8) 1) != 0;
    80003118:	0286b703          	ld	a4,40(a3)
    8000311c:	00379793          	slli	a5,a5,0x3
    80003120:	00f707b3          	add	a5,a4,a5
    80003124:	0007b783          	ld	a5,0(a5)
    80003128:	40a585b3          	sub	a1,a1,a0
    8000312c:	00b785b3          	add	a1,a5,a1
    80003130:	0005c503          	lbu	a0,0(a1)
    80003134:	40c5563b          	sraw	a2,a0,a2
    80003138:	00167513          	andi	a0,a2,1
    }
    printString("ERROR: byte not in given objAlloc\n");
    return false;
}
    8000313c:	00008067          	ret
bool KObjectAllocatorTest::getValueOfBitAt(size_t byte, size_t bit, KObjectAllocator* objAlloc) {
    80003140:	ff010113          	addi	sp,sp,-16
    80003144:	00113423          	sd	ra,8(sp)
    80003148:	00813023          	sd	s0,0(sp)
    8000314c:	01010413          	addi	s0,sp,16
    printString("ERROR: byte not in given objAlloc\n");
    80003150:	00006517          	auipc	a0,0x6
    80003154:	39050513          	addi	a0,a0,912 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80003158:	00003097          	auipc	ra,0x3
    8000315c:	2a4080e7          	jalr	676(ra) # 800063fc <_Z11printStringPKc>
    return false;
    80003160:	00000513          	li	a0,0
}
    80003164:	00813083          	ld	ra,8(sp)
    80003168:	00013403          	ld	s0,0(sp)
    8000316c:	01010113          	addi	sp,sp,16
    80003170:	00008067          	ret

0000000080003174 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>:

size_t KObjectAllocatorTest::getByteOfObject(void* obj, KObjectAllocator* objAlloc) {
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i) {
    80003174:	00000713          	li	a4,0
    80003178:	0080006f          	j	80003180 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator+0xc>
    8000317c:	00170713          	addi	a4,a4,1
    80003180:	03063783          	ld	a5,48(a2)
    80003184:	02f77e63          	bgeu	a4,a5,800031c0 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator+0x4c>
        if ((uint8*) obj < objAlloc->objectVectors[i]) continue;
    80003188:	02063783          	ld	a5,32(a2)
    8000318c:	00371693          	slli	a3,a4,0x3
    80003190:	00d787b3          	add	a5,a5,a3
    80003194:	0007b783          	ld	a5,0(a5)
    80003198:	fef5e2e3          	bltu	a1,a5,8000317c <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator+0x8>
        size_t idiff = (size_t) ((uint8*) obj - objAlloc->objectVectors[i]);
    8000319c:	40f58533          	sub	a0,a1,a5
        size_t byte = idiff / objAlloc->objectSize / 8;
    800031a0:	01863783          	ld	a5,24(a2)
    800031a4:	02f55533          	divu	a0,a0,a5
    800031a8:	00355513          	srli	a0,a0,0x3
        if (byte >= objAlloc->memorySizeForBits) continue;
    800031ac:	01063783          	ld	a5,16(a2)
    800031b0:	fcf576e3          	bgeu	a0,a5,8000317c <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator+0x8>
        return byte + i * objAlloc->memorySizeForBits;
    800031b4:	02e78733          	mul	a4,a5,a4
    800031b8:	00a70533          	add	a0,a4,a0
    }
    printString("ERROR: given object not allocated in given objAlloc\n");
    return 0;
}
    800031bc:	00008067          	ret
size_t KObjectAllocatorTest::getByteOfObject(void* obj, KObjectAllocator* objAlloc) {
    800031c0:	ff010113          	addi	sp,sp,-16
    800031c4:	00113423          	sd	ra,8(sp)
    800031c8:	00813023          	sd	s0,0(sp)
    800031cc:	01010413          	addi	s0,sp,16
    printString("ERROR: given object not allocated in given objAlloc\n");
    800031d0:	00006517          	auipc	a0,0x6
    800031d4:	33850513          	addi	a0,a0,824 # 80009508 <CONSOLE_STATUS+0x4f8>
    800031d8:	00003097          	auipc	ra,0x3
    800031dc:	224080e7          	jalr	548(ra) # 800063fc <_Z11printStringPKc>
    return 0;
    800031e0:	00000513          	li	a0,0
}
    800031e4:	00813083          	ld	ra,8(sp)
    800031e8:	00013403          	ld	s0,0(sp)
    800031ec:	01010113          	addi	sp,sp,16
    800031f0:	00008067          	ret

00000000800031f4 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>:

size_t KObjectAllocatorTest::getBitOfObject(void* obj, KObjectAllocator* objAlloc) {
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i) {
    800031f4:	00000713          	li	a4,0
    800031f8:	0080006f          	j	80003200 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator+0xc>
    800031fc:	00170713          	addi	a4,a4,1
    80003200:	03063783          	ld	a5,48(a2)
    80003204:	04f77063          	bgeu	a4,a5,80003244 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator+0x50>
        if ((uint8*) obj < objAlloc->objectVectors[i]) continue;
    80003208:	02063783          	ld	a5,32(a2)
    8000320c:	00371693          	slli	a3,a4,0x3
    80003210:	00d787b3          	add	a5,a5,a3
    80003214:	0007b783          	ld	a5,0(a5)
    80003218:	fef5e2e3          	bltu	a1,a5,800031fc <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator+0x8>
        size_t idiff = (size_t) ((uint8*) obj - objAlloc->objectVectors[i]);
    8000321c:	40f587b3          	sub	a5,a1,a5
        size_t byte = idiff / objAlloc->objectSize / 8;
    80003220:	01863503          	ld	a0,24(a2)
    80003224:	02a7d7b3          	divu	a5,a5,a0
    80003228:	0037d693          	srli	a3,a5,0x3
        if (byte >= objAlloc->memorySizeForBits) continue;
    8000322c:	01063503          	ld	a0,16(a2)
    80003230:	fca6f6e3          	bgeu	a3,a0,800031fc <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator+0x8>
        size_t bit = idiff / objAlloc->objectSize - byte * 8;
    80003234:	ff87f513          	andi	a0,a5,-8
        return 7 - bit;
    80003238:	40f507b3          	sub	a5,a0,a5
    8000323c:	00778513          	addi	a0,a5,7
    }
    printString("ERROR: given object not allocated in given objAlloc\n");
    return 0;
}
    80003240:	00008067          	ret
size_t KObjectAllocatorTest::getBitOfObject(void* obj, KObjectAllocator* objAlloc) {
    80003244:	ff010113          	addi	sp,sp,-16
    80003248:	00113423          	sd	ra,8(sp)
    8000324c:	00813023          	sd	s0,0(sp)
    80003250:	01010413          	addi	s0,sp,16
    printString("ERROR: given object not allocated in given objAlloc\n");
    80003254:	00006517          	auipc	a0,0x6
    80003258:	2b450513          	addi	a0,a0,692 # 80009508 <CONSOLE_STATUS+0x4f8>
    8000325c:	00003097          	auipc	ra,0x3
    80003260:	1a0080e7          	jalr	416(ra) # 800063fc <_Z11printStringPKc>
    return 0;
    80003264:	00000513          	li	a0,0
}
    80003268:	00813083          	ld	ra,8(sp)
    8000326c:	00013403          	ld	s0,0(sp)
    80003270:	01010113          	addi	sp,sp,16
    80003274:	00008067          	ret

0000000080003278 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>:

void* KObjectAllocatorTest::getObjectAt(size_t byte, size_t bit, KObjectAllocator* objAlloc) {
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i)
    80003278:	00000793          	li	a5,0
    8000327c:	0080006f          	j	80003284 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator+0xc>
    80003280:	00178793          	addi	a5,a5,1
    80003284:	0306b703          	ld	a4,48(a3)
    80003288:	04e7f663          	bgeu	a5,a4,800032d4 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator+0x5c>
        if (i * objAlloc->memorySizeForBits <= byte && byte < (i + 1) * objAlloc->memorySizeForBits)
    8000328c:	0106b703          	ld	a4,16(a3)
    80003290:	02f70833          	mul	a6,a4,a5
    80003294:	ff05e6e3          	bltu	a1,a6,80003280 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator+0x8>
    80003298:	00178893          	addi	a7,a5,1
    8000329c:	03170733          	mul	a4,a4,a7
    800032a0:	fee5f0e3          	bgeu	a1,a4,80003280 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator+0x8>
            return &objAlloc->objectVectors[i][((byte - i * objAlloc->memorySizeForBits) * 8 + 7 - bit) * objAlloc->objectSize];
    800032a4:	0206b703          	ld	a4,32(a3)
    800032a8:	00379793          	slli	a5,a5,0x3
    800032ac:	00f707b3          	add	a5,a4,a5
    800032b0:	0007b783          	ld	a5,0(a5)
    800032b4:	410585b3          	sub	a1,a1,a6
    800032b8:	00359593          	slli	a1,a1,0x3
    800032bc:	40c58533          	sub	a0,a1,a2
    800032c0:	00750513          	addi	a0,a0,7
    800032c4:	0186b703          	ld	a4,24(a3)
    800032c8:	02e50533          	mul	a0,a0,a4
    800032cc:	00a78533          	add	a0,a5,a0
    printString("ERROR: given object not allocated in given objAlloc\n");
    return nullptr;
}
    800032d0:	00008067          	ret
void* KObjectAllocatorTest::getObjectAt(size_t byte, size_t bit, KObjectAllocator* objAlloc) {
    800032d4:	ff010113          	addi	sp,sp,-16
    800032d8:	00113423          	sd	ra,8(sp)
    800032dc:	00813023          	sd	s0,0(sp)
    800032e0:	01010413          	addi	s0,sp,16
    printString("ERROR: given object not allocated in given objAlloc\n");
    800032e4:	00006517          	auipc	a0,0x6
    800032e8:	22450513          	addi	a0,a0,548 # 80009508 <CONSOLE_STATUS+0x4f8>
    800032ec:	00003097          	auipc	ra,0x3
    800032f0:	110080e7          	jalr	272(ra) # 800063fc <_Z11printStringPKc>
    return nullptr;
    800032f4:	00000513          	li	a0,0
}
    800032f8:	00813083          	ld	ra,8(sp)
    800032fc:	00013403          	ld	s0,0(sp)
    80003300:	01010113          	addi	sp,sp,16
    80003304:	00008067          	ret

0000000080003308 <_ZN20KObjectAllocatorTest5test0Em>:

bool KObjectAllocatorTest::test0(size_t size) {
    80003308:	f5010113          	addi	sp,sp,-176
    8000330c:	0a113423          	sd	ra,168(sp)
    80003310:	0a813023          	sd	s0,160(sp)
    80003314:	08913c23          	sd	s1,152(sp)
    80003318:	09213823          	sd	s2,144(sp)
    8000331c:	09313423          	sd	s3,136(sp)
    80003320:	09413023          	sd	s4,128(sp)
    80003324:	07513c23          	sd	s5,120(sp)
    80003328:	07613823          	sd	s6,112(sp)
    8000332c:	07713423          	sd	s7,104(sp)
    80003330:	0b010413          	addi	s0,sp,176
    80003334:	00050993          	mv	s3,a0
    80003338:	00058913          	mv	s2,a1
        );
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    }
    void* operator new(size_t size) {
        return MemoryAllocator::instance()->kmem_alloc(size);
    8000333c:	fffff097          	auipc	ra,0xfffff
    80003340:	828080e7          	jalr	-2008(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003344:	04000593          	li	a1,64
    80003348:	fffff097          	auipc	ra,0xfffff
    8000334c:	900080e7          	jalr	-1792(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80003350:	00050493          	mv	s1,a0
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    80003354:	00900793          	li	a5,9
    80003358:	00f53023          	sd	a5,0(a0)
    8000335c:	00f53423          	sd	a5,8(a0)
    80003360:	01253c23          	sd	s2,24(a0)
    80003364:	00100793          	li	a5,1
    80003368:	02f53823          	sd	a5,48(a0)
    8000336c:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80003370:	ffffe097          	auipc	ra,0xffffe
    80003374:	7f4080e7          	jalr	2036(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003378:	0304b583          	ld	a1,48(s1)
    8000337c:	00359593          	slli	a1,a1,0x3
    80003380:	fffff097          	auipc	ra,0xfffff
    80003384:	8c8080e7          	jalr	-1848(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80003388:	02a4b423          	sd	a0,40(s1)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    8000338c:	ffffe097          	auipc	ra,0xffffe
    80003390:	7d8080e7          	jalr	2008(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003394:	0304b583          	ld	a1,48(s1)
    80003398:	00359593          	slli	a1,a1,0x3
    8000339c:	fffff097          	auipc	ra,0xfffff
    800033a0:	8ac080e7          	jalr	-1876(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    800033a4:	02a4b023          	sd	a0,32(s1)
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    800033a8:	0084b703          	ld	a4,8(s1)
    800033ac:	ff877793          	andi	a5,a4,-8
    800033b0:	02f70463          	beq	a4,a5,800033d8 <_ZN20KObjectAllocatorTest5test0Em+0xd0>
    800033b4:	00800713          	li	a4,8
    800033b8:	00e787b3          	add	a5,a5,a4
    800033bc:	00f4b423          	sd	a5,8(s1)
    800033c0:	00f4b023          	sd	a5,0(s1)
        memorySizeForBits = numberOfObjects / 8;
    800033c4:	0037d793          	srli	a5,a5,0x3
    800033c8:	00f4b823          	sd	a5,16(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    800033cc:	ffffe097          	auipc	ra,0xffffe
    800033d0:	798080e7          	jalr	1944(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800033d4:	00c0006f          	j	800033e0 <_ZN20KObjectAllocatorTest5test0Em+0xd8>
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    800033d8:	00000713          	li	a4,0
    800033dc:	fddff06f          	j	800033b8 <_ZN20KObjectAllocatorTest5test0Em+0xb0>
                memorySizeForBits + initialNumberOfObjects * objectSize
    800033e0:	0104b583          	ld	a1,16(s1)
    800033e4:	0004b783          	ld	a5,0(s1)
    800033e8:	02f907b3          	mul	a5,s2,a5
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    800033ec:	0284ba03          	ld	s4,40(s1)
    800033f0:	00f585b3          	add	a1,a1,a5
    800033f4:	fffff097          	auipc	ra,0xfffff
    800033f8:	854080e7          	jalr	-1964(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    800033fc:	00aa3023          	sd	a0,0(s4)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    80003400:	0284b783          	ld	a5,40(s1)
    80003404:	0007b783          	ld	a5,0(a5)
    80003408:	0104b683          	ld	a3,16(s1)
    8000340c:	0204b703          	ld	a4,32(s1)
    80003410:	00d787b3          	add	a5,a5,a3
    80003414:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    80003418:	00000793          	li	a5,0
    8000341c:	0104b703          	ld	a4,16(s1)
    80003420:	00e7fe63          	bgeu	a5,a4,8000343c <_ZN20KObjectAllocatorTest5test0Em+0x134>
    80003424:	0284b703          	ld	a4,40(s1)
    80003428:	00073703          	ld	a4,0(a4)
    8000342c:	00f70733          	add	a4,a4,a5
    80003430:	00070023          	sb	zero,0(a4)
    80003434:	00178793          	addi	a5,a5,1
    80003438:	fe5ff06f          	j	8000341c <_ZN20KObjectAllocatorTest5test0Em+0x114>
        MemoryAllocator::instance()->kmem_free(p);
    }
    void printInternalMemory();
    size_t getObjectSize() { return objectSize; }
    size_t getInitialNumberOfObjects() { return initialNumberOfObjects; }
    size_t getNumberOfObjects() { return numberOfObjects; }
    8000343c:	0084b703          	ld	a4,8(s1)
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 9);
    if (objAlloc->getNumberOfObjects() != 16) { delete objAlloc; return false; }
    80003440:	01000793          	li	a5,16
    80003444:	0af70663          	beq	a4,a5,800034f0 <_ZN20KObjectAllocatorTest5test0Em+0x1e8>
    80003448:	06048a63          	beqz	s1,800034bc <_ZN20KObjectAllocatorTest5test0Em+0x1b4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000344c:	00000913          	li	s2,0
    80003450:	0280006f          	j	80003478 <_ZN20KObjectAllocatorTest5test0Em+0x170>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003454:	ffffe097          	auipc	ra,0xffffe
    80003458:	710080e7          	jalr	1808(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    8000345c:	0284b783          	ld	a5,40(s1)
    80003460:	00391713          	slli	a4,s2,0x3
    80003464:	00e787b3          	add	a5,a5,a4
    80003468:	0007b583          	ld	a1,0(a5)
    8000346c:	fffff097          	auipc	ra,0xfffff
    80003470:	884080e7          	jalr	-1916(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003474:	00190913          	addi	s2,s2,1
    80003478:	0304b783          	ld	a5,48(s1)
    8000347c:	fcf96ce3          	bltu	s2,a5,80003454 <_ZN20KObjectAllocatorTest5test0Em+0x14c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003480:	ffffe097          	auipc	ra,0xffffe
    80003484:	6e4080e7          	jalr	1764(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003488:	0284b583          	ld	a1,40(s1)
    8000348c:	fffff097          	auipc	ra,0xfffff
    80003490:	864080e7          	jalr	-1948(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003494:	ffffe097          	auipc	ra,0xffffe
    80003498:	6d0080e7          	jalr	1744(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    8000349c:	0204b583          	ld	a1,32(s1)
    800034a0:	fffff097          	auipc	ra,0xfffff
    800034a4:	850080e7          	jalr	-1968(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800034a8:	ffffe097          	auipc	ra,0xffffe
    800034ac:	6bc080e7          	jalr	1724(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800034b0:	00048593          	mv	a1,s1
    800034b4:	fffff097          	auipc	ra,0xfffff
    800034b8:	83c080e7          	jalr	-1988(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    800034bc:	00000a13          	li	s4,0
        if (expectedBitValues[i] != getValueOfBitAt(byte, bit, objAlloc))
            { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    }
    delete objAlloc;
    return true;
}
    800034c0:	000a0513          	mv	a0,s4
    800034c4:	0a813083          	ld	ra,168(sp)
    800034c8:	0a013403          	ld	s0,160(sp)
    800034cc:	09813483          	ld	s1,152(sp)
    800034d0:	09013903          	ld	s2,144(sp)
    800034d4:	08813983          	ld	s3,136(sp)
    800034d8:	08013a03          	ld	s4,128(sp)
    800034dc:	07813a83          	ld	s5,120(sp)
    800034e0:	07013b03          	ld	s6,112(sp)
    800034e4:	06813b83          	ld	s7,104(sp)
    800034e8:	0b010113          	addi	sp,sp,176
    800034ec:	00008067          	ret
    size_t getMemorySizeForBits() { return memorySizeForBits; }
    800034f0:	0104b703          	ld	a4,16(s1)
    if (objAlloc->getMemorySizeForBits() != 2) { delete objAlloc; return false; }
    800034f4:	00200793          	li	a5,2
    800034f8:	08f70063          	beq	a4,a5,80003578 <_ZN20KObjectAllocatorTest5test0Em+0x270>
    800034fc:	06048a63          	beqz	s1,80003570 <_ZN20KObjectAllocatorTest5test0Em+0x268>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003500:	00000913          	li	s2,0
    80003504:	0280006f          	j	8000352c <_ZN20KObjectAllocatorTest5test0Em+0x224>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003508:	ffffe097          	auipc	ra,0xffffe
    8000350c:	65c080e7          	jalr	1628(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003510:	0284b783          	ld	a5,40(s1)
    80003514:	00391713          	slli	a4,s2,0x3
    80003518:	00e787b3          	add	a5,a5,a4
    8000351c:	0007b583          	ld	a1,0(a5)
    80003520:	ffffe097          	auipc	ra,0xffffe
    80003524:	7d0080e7          	jalr	2000(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003528:	00190913          	addi	s2,s2,1
    8000352c:	0304b783          	ld	a5,48(s1)
    80003530:	fcf96ce3          	bltu	s2,a5,80003508 <_ZN20KObjectAllocatorTest5test0Em+0x200>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003534:	ffffe097          	auipc	ra,0xffffe
    80003538:	630080e7          	jalr	1584(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    8000353c:	0284b583          	ld	a1,40(s1)
    80003540:	ffffe097          	auipc	ra,0xffffe
    80003544:	7b0080e7          	jalr	1968(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003548:	ffffe097          	auipc	ra,0xffffe
    8000354c:	61c080e7          	jalr	1564(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003550:	0204b583          	ld	a1,32(s1)
    80003554:	ffffe097          	auipc	ra,0xffffe
    80003558:	79c080e7          	jalr	1948(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    8000355c:	ffffe097          	auipc	ra,0xffffe
    80003560:	608080e7          	jalr	1544(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003564:	00048593          	mv	a1,s1
    80003568:	ffffe097          	auipc	ra,0xffffe
    8000356c:	788080e7          	jalr	1928(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003570:	00000a13          	li	s4,0
    80003574:	f4dff06f          	j	800034c0 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    size_t getObjectSize() { return objectSize; }
    80003578:	0184b783          	ld	a5,24(s1)
    if (objAlloc->getObjectSize() != size) { delete objAlloc; return false; }
    8000357c:	08f90063          	beq	s2,a5,800035fc <_ZN20KObjectAllocatorTest5test0Em+0x2f4>
    80003580:	06048a63          	beqz	s1,800035f4 <_ZN20KObjectAllocatorTest5test0Em+0x2ec>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003584:	00000913          	li	s2,0
    80003588:	0304b783          	ld	a5,48(s1)
    8000358c:	02f97663          	bgeu	s2,a5,800035b8 <_ZN20KObjectAllocatorTest5test0Em+0x2b0>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003590:	ffffe097          	auipc	ra,0xffffe
    80003594:	5d4080e7          	jalr	1492(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003598:	0284b783          	ld	a5,40(s1)
    8000359c:	00391713          	slli	a4,s2,0x3
    800035a0:	00e787b3          	add	a5,a5,a4
    800035a4:	0007b583          	ld	a1,0(a5)
    800035a8:	ffffe097          	auipc	ra,0xffffe
    800035ac:	748080e7          	jalr	1864(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800035b0:	00190913          	addi	s2,s2,1
    800035b4:	fd5ff06f          	j	80003588 <_ZN20KObjectAllocatorTest5test0Em+0x280>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800035b8:	ffffe097          	auipc	ra,0xffffe
    800035bc:	5ac080e7          	jalr	1452(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800035c0:	0284b583          	ld	a1,40(s1)
    800035c4:	ffffe097          	auipc	ra,0xffffe
    800035c8:	72c080e7          	jalr	1836(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800035cc:	ffffe097          	auipc	ra,0xffffe
    800035d0:	598080e7          	jalr	1432(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800035d4:	0204b583          	ld	a1,32(s1)
    800035d8:	ffffe097          	auipc	ra,0xffffe
    800035dc:	718080e7          	jalr	1816(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800035e0:	ffffe097          	auipc	ra,0xffffe
    800035e4:	584080e7          	jalr	1412(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800035e8:	00048593          	mv	a1,s1
    800035ec:	ffffe097          	auipc	ra,0xffffe
    800035f0:	704080e7          	jalr	1796(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    800035f4:	00000a13          	li	s4,0
    800035f8:	ec9ff06f          	j	800034c0 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    void* objArr[10]; for (size_t i = 0; i < 10; objArr[i++] = objAlloc->allocateNewObject());
    800035fc:	00000913          	li	s2,0
    80003600:	00900793          	li	a5,9
    80003604:	0327e663          	bltu	a5,s2,80003630 <_ZN20KObjectAllocatorTest5test0Em+0x328>
    80003608:	00190a13          	addi	s4,s2,1
    8000360c:	00048513          	mv	a0,s1
    80003610:	00003097          	auipc	ra,0x3
    80003614:	a98080e7          	jalr	-1384(ra) # 800060a8 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80003618:	00391913          	slli	s2,s2,0x3
    8000361c:	fb040793          	addi	a5,s0,-80
    80003620:	01278933          	add	s2,a5,s2
    80003624:	faa93823          	sd	a0,-80(s2)
    80003628:	000a0913          	mv	s2,s4
    8000362c:	fd5ff06f          	j	80003600 <_ZN20KObjectAllocatorTest5test0Em+0x2f8>
    for (size_t i = 0; i < 10; ++i) {
    80003630:	00000b13          	li	s6,0
    size_t byte = 0; size_t bit = 7;
    80003634:	00700913          	li	s2,7
    80003638:	00000a93          	li	s5,0
    8000363c:	1840006f          	j	800037c0 <_ZN20KObjectAllocatorTest5test0Em+0x4b8>
        if (objArr[i] != getObjectAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003640:	06048a63          	beqz	s1,800036b4 <_ZN20KObjectAllocatorTest5test0Em+0x3ac>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003644:	00000913          	li	s2,0
    80003648:	0304b783          	ld	a5,48(s1)
    8000364c:	02f97663          	bgeu	s2,a5,80003678 <_ZN20KObjectAllocatorTest5test0Em+0x370>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003650:	ffffe097          	auipc	ra,0xffffe
    80003654:	514080e7          	jalr	1300(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003658:	0284b783          	ld	a5,40(s1)
    8000365c:	00391713          	slli	a4,s2,0x3
    80003660:	00e787b3          	add	a5,a5,a4
    80003664:	0007b583          	ld	a1,0(a5)
    80003668:	ffffe097          	auipc	ra,0xffffe
    8000366c:	688080e7          	jalr	1672(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003670:	00190913          	addi	s2,s2,1
    80003674:	fd5ff06f          	j	80003648 <_ZN20KObjectAllocatorTest5test0Em+0x340>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003678:	ffffe097          	auipc	ra,0xffffe
    8000367c:	4ec080e7          	jalr	1260(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003680:	0284b583          	ld	a1,40(s1)
    80003684:	ffffe097          	auipc	ra,0xffffe
    80003688:	66c080e7          	jalr	1644(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    8000368c:	ffffe097          	auipc	ra,0xffffe
    80003690:	4d8080e7          	jalr	1240(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003694:	0204b583          	ld	a1,32(s1)
    80003698:	ffffe097          	auipc	ra,0xffffe
    8000369c:	658080e7          	jalr	1624(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800036a0:	ffffe097          	auipc	ra,0xffffe
    800036a4:	4c4080e7          	jalr	1220(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800036a8:	00048593          	mv	a1,s1
    800036ac:	ffffe097          	auipc	ra,0xffffe
    800036b0:	644080e7          	jalr	1604(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    800036b4:	00000a13          	li	s4,0
    800036b8:	e09ff06f          	j	800034c0 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        if (objByte != byte || objBit != bit) { delete objAlloc; return false; }
    800036bc:	06048a63          	beqz	s1,80003730 <_ZN20KObjectAllocatorTest5test0Em+0x428>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800036c0:	00000913          	li	s2,0
    800036c4:	0304b783          	ld	a5,48(s1)
    800036c8:	02f97663          	bgeu	s2,a5,800036f4 <_ZN20KObjectAllocatorTest5test0Em+0x3ec>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800036cc:	ffffe097          	auipc	ra,0xffffe
    800036d0:	498080e7          	jalr	1176(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800036d4:	0284b783          	ld	a5,40(s1)
    800036d8:	00391713          	slli	a4,s2,0x3
    800036dc:	00e787b3          	add	a5,a5,a4
    800036e0:	0007b583          	ld	a1,0(a5)
    800036e4:	ffffe097          	auipc	ra,0xffffe
    800036e8:	60c080e7          	jalr	1548(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800036ec:	00190913          	addi	s2,s2,1
    800036f0:	fd5ff06f          	j	800036c4 <_ZN20KObjectAllocatorTest5test0Em+0x3bc>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800036f4:	ffffe097          	auipc	ra,0xffffe
    800036f8:	470080e7          	jalr	1136(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800036fc:	0284b583          	ld	a1,40(s1)
    80003700:	ffffe097          	auipc	ra,0xffffe
    80003704:	5f0080e7          	jalr	1520(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003708:	ffffe097          	auipc	ra,0xffffe
    8000370c:	45c080e7          	jalr	1116(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003710:	0204b583          	ld	a1,32(s1)
    80003714:	ffffe097          	auipc	ra,0xffffe
    80003718:	5dc080e7          	jalr	1500(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    8000371c:	ffffe097          	auipc	ra,0xffffe
    80003720:	448080e7          	jalr	1096(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003724:	00048593          	mv	a1,s1
    80003728:	ffffe097          	auipc	ra,0xffffe
    8000372c:	5c8080e7          	jalr	1480(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003730:	00000a13          	li	s4,0
    80003734:	d8dff06f          	j	800034c0 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        if (!getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003738:	d80484e3          	beqz	s1,800034c0 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000373c:	00000913          	li	s2,0
    80003740:	0280006f          	j	80003768 <_ZN20KObjectAllocatorTest5test0Em+0x460>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003744:	ffffe097          	auipc	ra,0xffffe
    80003748:	420080e7          	jalr	1056(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    8000374c:	0284b783          	ld	a5,40(s1)
    80003750:	00391713          	slli	a4,s2,0x3
    80003754:	00e787b3          	add	a5,a5,a4
    80003758:	0007b583          	ld	a1,0(a5)
    8000375c:	ffffe097          	auipc	ra,0xffffe
    80003760:	594080e7          	jalr	1428(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003764:	00190913          	addi	s2,s2,1
    80003768:	0304b783          	ld	a5,48(s1)
    8000376c:	fcf96ce3          	bltu	s2,a5,80003744 <_ZN20KObjectAllocatorTest5test0Em+0x43c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003770:	ffffe097          	auipc	ra,0xffffe
    80003774:	3f4080e7          	jalr	1012(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003778:	0284b583          	ld	a1,40(s1)
    8000377c:	ffffe097          	auipc	ra,0xffffe
    80003780:	574080e7          	jalr	1396(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003784:	ffffe097          	auipc	ra,0xffffe
    80003788:	3e0080e7          	jalr	992(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    8000378c:	0204b583          	ld	a1,32(s1)
    80003790:	ffffe097          	auipc	ra,0xffffe
    80003794:	560080e7          	jalr	1376(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003798:	ffffe097          	auipc	ra,0xffffe
    8000379c:	3cc080e7          	jalr	972(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800037a0:	00048593          	mv	a1,s1
    800037a4:	ffffe097          	auipc	ra,0xffffe
    800037a8:	54c080e7          	jalr	1356(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    800037ac:	d15ff06f          	j	800034c0 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    800037b0:	001a8a93          	addi	s5,s5,1
    800037b4:	00800913          	li	s2,8
    800037b8:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 10; ++i) {
    800037bc:	001b0b13          	addi	s6,s6,1
    800037c0:	00900793          	li	a5,9
    800037c4:	0967e663          	bltu	a5,s6,80003850 <_ZN20KObjectAllocatorTest5test0Em+0x548>
        if (objArr[i] != getObjectAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    800037c8:	003b1793          	slli	a5,s6,0x3
    800037cc:	fb040713          	addi	a4,s0,-80
    800037d0:	00f707b3          	add	a5,a4,a5
    800037d4:	fb07ba03          	ld	s4,-80(a5)
    800037d8:	00048693          	mv	a3,s1
    800037dc:	00090613          	mv	a2,s2
    800037e0:	000a8593          	mv	a1,s5
    800037e4:	00098513          	mv	a0,s3
    800037e8:	00000097          	auipc	ra,0x0
    800037ec:	a90080e7          	jalr	-1392(ra) # 80003278 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>
    800037f0:	e4aa18e3          	bne	s4,a0,80003640 <_ZN20KObjectAllocatorTest5test0Em+0x338>
        size_t objByte = getByteOfObject(objArr[i], objAlloc);
    800037f4:	00048613          	mv	a2,s1
    800037f8:	000a0593          	mv	a1,s4
    800037fc:	00098513          	mv	a0,s3
    80003800:	00000097          	auipc	ra,0x0
    80003804:	974080e7          	jalr	-1676(ra) # 80003174 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    80003808:	00050b93          	mv	s7,a0
        size_t objBit = getBitOfObject(objArr[i], objAlloc);
    8000380c:	00048613          	mv	a2,s1
    80003810:	000a0593          	mv	a1,s4
    80003814:	00098513          	mv	a0,s3
    80003818:	00000097          	auipc	ra,0x0
    8000381c:	9dc080e7          	jalr	-1572(ra) # 800031f4 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
        if (objByte != byte || objBit != bit) { delete objAlloc; return false; }
    80003820:	e97a9ee3          	bne	s5,s7,800036bc <_ZN20KObjectAllocatorTest5test0Em+0x3b4>
    80003824:	e8a91ce3          	bne	s2,a0,800036bc <_ZN20KObjectAllocatorTest5test0Em+0x3b4>
        if (!getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003828:	00048693          	mv	a3,s1
    8000382c:	00090613          	mv	a2,s2
    80003830:	000a8593          	mv	a1,s5
    80003834:	00098513          	mv	a0,s3
    80003838:	00000097          	auipc	ra,0x0
    8000383c:	8b4080e7          	jalr	-1868(ra) # 800030ec <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80003840:	00050a13          	mv	s4,a0
    80003844:	ee050ae3          	beqz	a0,80003738 <_ZN20KObjectAllocatorTest5test0Em+0x430>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80003848:	f60918e3          	bnez	s2,800037b8 <_ZN20KObjectAllocatorTest5test0Em+0x4b0>
    8000384c:	f65ff06f          	j	800037b0 <_ZN20KObjectAllocatorTest5test0Em+0x4a8>
    for (size_t i = 0; i < 6; ++i) {
    80003850:	00000a13          	li	s4,0
    80003854:	0900006f          	j	800038e4 <_ZN20KObjectAllocatorTest5test0Em+0x5dc>
        if (getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003858:	06048a63          	beqz	s1,800038cc <_ZN20KObjectAllocatorTest5test0Em+0x5c4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000385c:	00000913          	li	s2,0
    80003860:	0304b783          	ld	a5,48(s1)
    80003864:	02f97663          	bgeu	s2,a5,80003890 <_ZN20KObjectAllocatorTest5test0Em+0x588>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003868:	ffffe097          	auipc	ra,0xffffe
    8000386c:	2fc080e7          	jalr	764(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003870:	0284b783          	ld	a5,40(s1)
    80003874:	00391713          	slli	a4,s2,0x3
    80003878:	00e787b3          	add	a5,a5,a4
    8000387c:	0007b583          	ld	a1,0(a5)
    80003880:	ffffe097          	auipc	ra,0xffffe
    80003884:	470080e7          	jalr	1136(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003888:	00190913          	addi	s2,s2,1
    8000388c:	fd5ff06f          	j	80003860 <_ZN20KObjectAllocatorTest5test0Em+0x558>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003890:	ffffe097          	auipc	ra,0xffffe
    80003894:	2d4080e7          	jalr	724(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003898:	0284b583          	ld	a1,40(s1)
    8000389c:	ffffe097          	auipc	ra,0xffffe
    800038a0:	454080e7          	jalr	1108(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800038a4:	ffffe097          	auipc	ra,0xffffe
    800038a8:	2c0080e7          	jalr	704(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800038ac:	0204b583          	ld	a1,32(s1)
    800038b0:	ffffe097          	auipc	ra,0xffffe
    800038b4:	440080e7          	jalr	1088(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800038b8:	ffffe097          	auipc	ra,0xffffe
    800038bc:	2ac080e7          	jalr	684(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800038c0:	00048593          	mv	a1,s1
    800038c4:	ffffe097          	auipc	ra,0xffffe
    800038c8:	42c080e7          	jalr	1068(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    800038cc:	00000a13          	li	s4,0
    800038d0:	bf1ff06f          	j	800034c0 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    800038d4:	001a8a93          	addi	s5,s5,1
    800038d8:	00800913          	li	s2,8
    800038dc:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 6; ++i) {
    800038e0:	001a0a13          	addi	s4,s4,1
    800038e4:	00500793          	li	a5,5
    800038e8:	0347e463          	bltu	a5,s4,80003910 <_ZN20KObjectAllocatorTest5test0Em+0x608>
        if (getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    800038ec:	00048693          	mv	a3,s1
    800038f0:	00090613          	mv	a2,s2
    800038f4:	000a8593          	mv	a1,s5
    800038f8:	00098513          	mv	a0,s3
    800038fc:	fffff097          	auipc	ra,0xfffff
    80003900:	7f0080e7          	jalr	2032(ra) # 800030ec <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80003904:	f4051ae3          	bnez	a0,80003858 <_ZN20KObjectAllocatorTest5test0Em+0x550>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80003908:	fc091ae3          	bnez	s2,800038dc <_ZN20KObjectAllocatorTest5test0Em+0x5d4>
    8000390c:	fc9ff06f          	j	800038d4 <_ZN20KObjectAllocatorTest5test0Em+0x5cc>
    objAlloc->freeObject(objArr[4]);
    80003910:	f8043583          	ld	a1,-128(s0)
    80003914:	00048513          	mv	a0,s1
    80003918:	00002097          	auipc	ra,0x2
    8000391c:	510080e7          	jalr	1296(ra) # 80005e28 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[7]);
    80003920:	f9843583          	ld	a1,-104(s0)
    80003924:	00048513          	mv	a0,s1
    80003928:	00002097          	auipc	ra,0x2
    8000392c:	500080e7          	jalr	1280(ra) # 80005e28 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[8]);
    80003930:	fa043583          	ld	a1,-96(s0)
    80003934:	00048513          	mv	a0,s1
    80003938:	00002097          	auipc	ra,0x2
    8000393c:	4f0080e7          	jalr	1264(ra) # 80005e28 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[4] = objAlloc->allocateNewObject();
    80003940:	00048513          	mv	a0,s1
    80003944:	00002097          	auipc	ra,0x2
    80003948:	764080e7          	jalr	1892(ra) # 800060a8 <_ZN16KObjectAllocator17allocateNewObjectEv>
    8000394c:	00050913          	mv	s2,a0
    if (objArr[4] != getObjectAt(1, 7, objAlloc)) { delete objAlloc; return false; }
    80003950:	00048693          	mv	a3,s1
    80003954:	00700613          	li	a2,7
    80003958:	00100593          	li	a1,1
    8000395c:	00098513          	mv	a0,s3
    80003960:	00000097          	auipc	ra,0x0
    80003964:	918080e7          	jalr	-1768(ra) # 80003278 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>
    80003968:	08a90063          	beq	s2,a0,800039e8 <_ZN20KObjectAllocatorTest5test0Em+0x6e0>
    8000396c:	06048a63          	beqz	s1,800039e0 <_ZN20KObjectAllocatorTest5test0Em+0x6d8>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003970:	00000913          	li	s2,0
    80003974:	0280006f          	j	8000399c <_ZN20KObjectAllocatorTest5test0Em+0x694>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003978:	ffffe097          	auipc	ra,0xffffe
    8000397c:	1ec080e7          	jalr	492(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003980:	0284b783          	ld	a5,40(s1)
    80003984:	00391713          	slli	a4,s2,0x3
    80003988:	00e787b3          	add	a5,a5,a4
    8000398c:	0007b583          	ld	a1,0(a5)
    80003990:	ffffe097          	auipc	ra,0xffffe
    80003994:	360080e7          	jalr	864(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003998:	00190913          	addi	s2,s2,1
    8000399c:	0304b783          	ld	a5,48(s1)
    800039a0:	fcf96ce3          	bltu	s2,a5,80003978 <_ZN20KObjectAllocatorTest5test0Em+0x670>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800039a4:	ffffe097          	auipc	ra,0xffffe
    800039a8:	1c0080e7          	jalr	448(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800039ac:	0284b583          	ld	a1,40(s1)
    800039b0:	ffffe097          	auipc	ra,0xffffe
    800039b4:	340080e7          	jalr	832(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800039b8:	ffffe097          	auipc	ra,0xffffe
    800039bc:	1ac080e7          	jalr	428(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800039c0:	0204b583          	ld	a1,32(s1)
    800039c4:	ffffe097          	auipc	ra,0xffffe
    800039c8:	32c080e7          	jalr	812(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800039cc:	ffffe097          	auipc	ra,0xffffe
    800039d0:	198080e7          	jalr	408(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800039d4:	00048593          	mv	a1,s1
    800039d8:	ffffe097          	auipc	ra,0xffffe
    800039dc:	318080e7          	jalr	792(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    800039e0:	00000a13          	li	s4,0
    800039e4:	addff06f          	j	800034c0 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    byte = getByteOfObject(objArr[4], objAlloc);
    800039e8:	00048613          	mv	a2,s1
    800039ec:	00090593          	mv	a1,s2
    800039f0:	00098513          	mv	a0,s3
    800039f4:	fffff097          	auipc	ra,0xfffff
    800039f8:	780080e7          	jalr	1920(ra) # 80003174 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    800039fc:	00050a13          	mv	s4,a0
    bit = getBitOfObject(objArr[4], objAlloc);
    80003a00:	00048613          	mv	a2,s1
    80003a04:	00090593          	mv	a1,s2
    80003a08:	00098513          	mv	a0,s3
    80003a0c:	fffff097          	auipc	ra,0xfffff
    80003a10:	7e8080e7          	jalr	2024(ra) # 800031f4 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80003a14:	00050913          	mv	s2,a0
    if (byte != 1 || bit != 7) { delete objAlloc; return false; }
    80003a18:	00100793          	li	a5,1
    80003a1c:	00fa1663          	bne	s4,a5,80003a28 <_ZN20KObjectAllocatorTest5test0Em+0x720>
    80003a20:	00700793          	li	a5,7
    80003a24:	08f50063          	beq	a0,a5,80003aa4 <_ZN20KObjectAllocatorTest5test0Em+0x79c>
    80003a28:	06048a63          	beqz	s1,80003a9c <_ZN20KObjectAllocatorTest5test0Em+0x794>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003a2c:	00000913          	li	s2,0
    80003a30:	0280006f          	j	80003a58 <_ZN20KObjectAllocatorTest5test0Em+0x750>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003a34:	ffffe097          	auipc	ra,0xffffe
    80003a38:	130080e7          	jalr	304(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003a3c:	0284b783          	ld	a5,40(s1)
    80003a40:	00391713          	slli	a4,s2,0x3
    80003a44:	00e787b3          	add	a5,a5,a4
    80003a48:	0007b583          	ld	a1,0(a5)
    80003a4c:	ffffe097          	auipc	ra,0xffffe
    80003a50:	2a4080e7          	jalr	676(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003a54:	00190913          	addi	s2,s2,1
    80003a58:	0304b783          	ld	a5,48(s1)
    80003a5c:	fcf96ce3          	bltu	s2,a5,80003a34 <_ZN20KObjectAllocatorTest5test0Em+0x72c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003a60:	ffffe097          	auipc	ra,0xffffe
    80003a64:	104080e7          	jalr	260(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003a68:	0284b583          	ld	a1,40(s1)
    80003a6c:	ffffe097          	auipc	ra,0xffffe
    80003a70:	284080e7          	jalr	644(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003a74:	ffffe097          	auipc	ra,0xffffe
    80003a78:	0f0080e7          	jalr	240(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003a7c:	0204b583          	ld	a1,32(s1)
    80003a80:	ffffe097          	auipc	ra,0xffffe
    80003a84:	270080e7          	jalr	624(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003a88:	ffffe097          	auipc	ra,0xffffe
    80003a8c:	0dc080e7          	jalr	220(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003a90:	00048593          	mv	a1,s1
    80003a94:	ffffe097          	auipc	ra,0xffffe
    80003a98:	25c080e7          	jalr	604(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003a9c:	00000a13          	li	s4,0
    80003aa0:	a21ff06f          	j	800034c0 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    bool expectedBitValues[16] = {
    80003aa4:	00006797          	auipc	a5,0x6
    80003aa8:	abc78793          	addi	a5,a5,-1348 # 80009560 <CONSOLE_STATUS+0x550>
    80003aac:	0007b703          	ld	a4,0(a5)
    80003ab0:	f4e43823          	sd	a4,-176(s0)
    80003ab4:	0087b783          	ld	a5,8(a5)
    80003ab8:	f4f43c23          	sd	a5,-168(s0)
    for (size_t i = 0; i < 16; ++i) {
    80003abc:	00000a13          	li	s4,0
    byte = 0; bit = 7;
    80003ac0:	00000a93          	li	s5,0
    80003ac4:	02c0006f          	j	80003af0 <_ZN20KObjectAllocatorTest5test0Em+0x7e8>
            { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    80003ac8:	00048863          	beqz	s1,80003ad8 <_ZN20KObjectAllocatorTest5test0Em+0x7d0>
    80003acc:	00048513          	mv	a0,s1
    80003ad0:	00002097          	auipc	ra,0x2
    80003ad4:	f10080e7          	jalr	-240(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    80003ad8:	00000a13          	li	s4,0
    80003adc:	9e5ff06f          	j	800034c0 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    80003ae0:	001a8a93          	addi	s5,s5,1
    80003ae4:	00800913          	li	s2,8
    80003ae8:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 16; ++i) {
    80003aec:	001a0a13          	addi	s4,s4,1
    80003af0:	00f00793          	li	a5,15
    80003af4:	0347ea63          	bltu	a5,s4,80003b28 <_ZN20KObjectAllocatorTest5test0Em+0x820>
        if (expectedBitValues[i] != getValueOfBitAt(byte, bit, objAlloc))
    80003af8:	fb040793          	addi	a5,s0,-80
    80003afc:	014787b3          	add	a5,a5,s4
    80003b00:	fa07cb03          	lbu	s6,-96(a5)
    80003b04:	00048693          	mv	a3,s1
    80003b08:	00090613          	mv	a2,s2
    80003b0c:	000a8593          	mv	a1,s5
    80003b10:	00098513          	mv	a0,s3
    80003b14:	fffff097          	auipc	ra,0xfffff
    80003b18:	5d8080e7          	jalr	1496(ra) # 800030ec <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80003b1c:	faab16e3          	bne	s6,a0,80003ac8 <_ZN20KObjectAllocatorTest5test0Em+0x7c0>
            { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    80003b20:	fc0914e3          	bnez	s2,80003ae8 <_ZN20KObjectAllocatorTest5test0Em+0x7e0>
    80003b24:	fbdff06f          	j	80003ae0 <_ZN20KObjectAllocatorTest5test0Em+0x7d8>
    delete objAlloc;
    80003b28:	06048e63          	beqz	s1,80003ba4 <_ZN20KObjectAllocatorTest5test0Em+0x89c>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003b2c:	00000913          	li	s2,0
    80003b30:	0280006f          	j	80003b58 <_ZN20KObjectAllocatorTest5test0Em+0x850>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003b34:	ffffe097          	auipc	ra,0xffffe
    80003b38:	030080e7          	jalr	48(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003b3c:	0284b783          	ld	a5,40(s1)
    80003b40:	00391713          	slli	a4,s2,0x3
    80003b44:	00e787b3          	add	a5,a5,a4
    80003b48:	0007b583          	ld	a1,0(a5)
    80003b4c:	ffffe097          	auipc	ra,0xffffe
    80003b50:	1a4080e7          	jalr	420(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003b54:	00190913          	addi	s2,s2,1
    80003b58:	0304b783          	ld	a5,48(s1)
    80003b5c:	fcf96ce3          	bltu	s2,a5,80003b34 <_ZN20KObjectAllocatorTest5test0Em+0x82c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003b60:	ffffe097          	auipc	ra,0xffffe
    80003b64:	004080e7          	jalr	4(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003b68:	0284b583          	ld	a1,40(s1)
    80003b6c:	ffffe097          	auipc	ra,0xffffe
    80003b70:	184080e7          	jalr	388(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003b74:	ffffe097          	auipc	ra,0xffffe
    80003b78:	ff0080e7          	jalr	-16(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003b7c:	0204b583          	ld	a1,32(s1)
    80003b80:	ffffe097          	auipc	ra,0xffffe
    80003b84:	170080e7          	jalr	368(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003b88:	ffffe097          	auipc	ra,0xffffe
    80003b8c:	fdc080e7          	jalr	-36(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003b90:	00048593          	mv	a1,s1
    80003b94:	ffffe097          	auipc	ra,0xffffe
    80003b98:	15c080e7          	jalr	348(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    return true;
    80003b9c:	00100a13          	li	s4,1
    }
    80003ba0:	921ff06f          	j	800034c0 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    80003ba4:	00100a13          	li	s4,1
    80003ba8:	919ff06f          	j	800034c0 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    80003bac:	00050913          	mv	s2,a0
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 9);
    80003bb0:	00048513          	mv	a0,s1
    80003bb4:	00002097          	auipc	ra,0x2
    80003bb8:	e2c080e7          	jalr	-468(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    80003bbc:	00090513          	mv	a0,s2
    80003bc0:	00008097          	auipc	ra,0x8
    80003bc4:	c98080e7          	jalr	-872(ra) # 8000b858 <_Unwind_Resume>

0000000080003bc8 <_ZN20KObjectAllocatorTest5test1Em>:

bool KObjectAllocatorTest::test1(size_t size) {
    80003bc8:	81010113          	addi	sp,sp,-2032
    80003bcc:	7e113423          	sd	ra,2024(sp)
    80003bd0:	7e813023          	sd	s0,2016(sp)
    80003bd4:	7c913c23          	sd	s1,2008(sp)
    80003bd8:	7d213823          	sd	s2,2000(sp)
    80003bdc:	7d313423          	sd	s3,1992(sp)
    80003be0:	7d413023          	sd	s4,1984(sp)
    80003be4:	7b513c23          	sd	s5,1976(sp)
    80003be8:	7f010413          	addi	s0,sp,2032
    80003bec:	db010113          	addi	sp,sp,-592
    80003bf0:	00050993          	mv	s3,a0
    80003bf4:	00058913          	mv	s2,a1
        return MemoryAllocator::instance()->kmem_alloc(size);
    80003bf8:	ffffe097          	auipc	ra,0xffffe
    80003bfc:	f6c080e7          	jalr	-148(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003c00:	04000593          	li	a1,64
    80003c04:	ffffe097          	auipc	ra,0xffffe
    80003c08:	044080e7          	jalr	68(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80003c0c:	00050493          	mv	s1,a0
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    80003c10:	14000793          	li	a5,320
    80003c14:	00f53023          	sd	a5,0(a0)
    80003c18:	00f53423          	sd	a5,8(a0)
    80003c1c:	01253c23          	sd	s2,24(a0)
    80003c20:	00100793          	li	a5,1
    80003c24:	02f53823          	sd	a5,48(a0)
    80003c28:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80003c2c:	ffffe097          	auipc	ra,0xffffe
    80003c30:	f38080e7          	jalr	-200(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003c34:	0304b583          	ld	a1,48(s1)
    80003c38:	00359593          	slli	a1,a1,0x3
    80003c3c:	ffffe097          	auipc	ra,0xffffe
    80003c40:	00c080e7          	jalr	12(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80003c44:	02a4b423          	sd	a0,40(s1)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80003c48:	ffffe097          	auipc	ra,0xffffe
    80003c4c:	f1c080e7          	jalr	-228(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003c50:	0304b583          	ld	a1,48(s1)
    80003c54:	00359593          	slli	a1,a1,0x3
    80003c58:	ffffe097          	auipc	ra,0xffffe
    80003c5c:	ff0080e7          	jalr	-16(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80003c60:	02a4b023          	sd	a0,32(s1)
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80003c64:	0084b703          	ld	a4,8(s1)
    80003c68:	ff877793          	andi	a5,a4,-8
    80003c6c:	02f70463          	beq	a4,a5,80003c94 <_ZN20KObjectAllocatorTest5test1Em+0xcc>
    80003c70:	00800713          	li	a4,8
    80003c74:	00e787b3          	add	a5,a5,a4
    80003c78:	00f4b423          	sd	a5,8(s1)
    80003c7c:	00f4b023          	sd	a5,0(s1)
        memorySizeForBits = numberOfObjects / 8;
    80003c80:	0037d793          	srli	a5,a5,0x3
    80003c84:	00f4b823          	sd	a5,16(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80003c88:	ffffe097          	auipc	ra,0xffffe
    80003c8c:	edc080e7          	jalr	-292(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003c90:	00c0006f          	j	80003c9c <_ZN20KObjectAllocatorTest5test1Em+0xd4>
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80003c94:	00000713          	li	a4,0
    80003c98:	fddff06f          	j	80003c74 <_ZN20KObjectAllocatorTest5test1Em+0xac>
                memorySizeForBits + initialNumberOfObjects * objectSize
    80003c9c:	0104b583          	ld	a1,16(s1)
    80003ca0:	0004b783          	ld	a5,0(s1)
    80003ca4:	02f907b3          	mul	a5,s2,a5
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80003ca8:	0284ba03          	ld	s4,40(s1)
    80003cac:	00f585b3          	add	a1,a1,a5
    80003cb0:	ffffe097          	auipc	ra,0xffffe
    80003cb4:	f98080e7          	jalr	-104(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80003cb8:	00aa3023          	sd	a0,0(s4)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    80003cbc:	0284b783          	ld	a5,40(s1)
    80003cc0:	0007b783          	ld	a5,0(a5)
    80003cc4:	0104b683          	ld	a3,16(s1)
    80003cc8:	0204b703          	ld	a4,32(s1)
    80003ccc:	00d787b3          	add	a5,a5,a3
    80003cd0:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    80003cd4:	00000793          	li	a5,0
    80003cd8:	0104b703          	ld	a4,16(s1)
    80003cdc:	00e7fe63          	bgeu	a5,a4,80003cf8 <_ZN20KObjectAllocatorTest5test1Em+0x130>
    80003ce0:	0284b703          	ld	a4,40(s1)
    80003ce4:	00073703          	ld	a4,0(a4)
    80003ce8:	00f70733          	add	a4,a4,a5
    80003cec:	00070023          	sb	zero,0(a4)
    80003cf0:	00178793          	addi	a5,a5,1
    80003cf4:	fe5ff06f          	j	80003cd8 <_ZN20KObjectAllocatorTest5test1Em+0x110>
    size_t getNumberOfObjects() { return numberOfObjects; }
    80003cf8:	0084b703          	ld	a4,8(s1)
    KObjectAllocator* objAlloc = new KObjectAllocator(size);
    if (objAlloc->getNumberOfObjects() != 320) { delete objAlloc; return false; }
    80003cfc:	14000793          	li	a5,320
    80003d00:	0af70263          	beq	a4,a5,80003da4 <_ZN20KObjectAllocatorTest5test1Em+0x1dc>
    80003d04:	06048a63          	beqz	s1,80003d78 <_ZN20KObjectAllocatorTest5test1Em+0x1b0>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003d08:	00000913          	li	s2,0
    80003d0c:	0304b783          	ld	a5,48(s1)
    80003d10:	02f97663          	bgeu	s2,a5,80003d3c <_ZN20KObjectAllocatorTest5test1Em+0x174>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003d14:	ffffe097          	auipc	ra,0xffffe
    80003d18:	e50080e7          	jalr	-432(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003d1c:	0284b783          	ld	a5,40(s1)
    80003d20:	00391713          	slli	a4,s2,0x3
    80003d24:	00e787b3          	add	a5,a5,a4
    80003d28:	0007b583          	ld	a1,0(a5)
    80003d2c:	ffffe097          	auipc	ra,0xffffe
    80003d30:	fc4080e7          	jalr	-60(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003d34:	00190913          	addi	s2,s2,1
    80003d38:	fd5ff06f          	j	80003d0c <_ZN20KObjectAllocatorTest5test1Em+0x144>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003d3c:	ffffe097          	auipc	ra,0xffffe
    80003d40:	e28080e7          	jalr	-472(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003d44:	0284b583          	ld	a1,40(s1)
    80003d48:	ffffe097          	auipc	ra,0xffffe
    80003d4c:	fa8080e7          	jalr	-88(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003d50:	ffffe097          	auipc	ra,0xffffe
    80003d54:	e14080e7          	jalr	-492(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003d58:	0204b583          	ld	a1,32(s1)
    80003d5c:	ffffe097          	auipc	ra,0xffffe
    80003d60:	f94080e7          	jalr	-108(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003d64:	ffffe097          	auipc	ra,0xffffe
    80003d68:	e00080e7          	jalr	-512(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003d6c:	00048593          	mv	a1,s1
    80003d70:	ffffe097          	auipc	ra,0xffffe
    80003d74:	f80080e7          	jalr	-128(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003d78:	00000513          	li	a0,0
        { delete objAlloc; return false; }
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    }
    delete objAlloc;
    return true;
}
    80003d7c:	25010113          	addi	sp,sp,592
    80003d80:	7e813083          	ld	ra,2024(sp)
    80003d84:	7e013403          	ld	s0,2016(sp)
    80003d88:	7d813483          	ld	s1,2008(sp)
    80003d8c:	7d013903          	ld	s2,2000(sp)
    80003d90:	7c813983          	ld	s3,1992(sp)
    80003d94:	7c013a03          	ld	s4,1984(sp)
    80003d98:	7b813a83          	ld	s5,1976(sp)
    80003d9c:	7f010113          	addi	sp,sp,2032
    80003da0:	00008067          	ret
    size_t getMemorySizeForBits() { return memorySizeForBits; }
    80003da4:	0104b703          	ld	a4,16(s1)
    if (objAlloc->getMemorySizeForBits() != 40) { delete objAlloc; return false; }
    80003da8:	02800793          	li	a5,40
    80003dac:	08f70063          	beq	a4,a5,80003e2c <_ZN20KObjectAllocatorTest5test1Em+0x264>
    80003db0:	06048a63          	beqz	s1,80003e24 <_ZN20KObjectAllocatorTest5test1Em+0x25c>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003db4:	00000913          	li	s2,0
    80003db8:	0304b783          	ld	a5,48(s1)
    80003dbc:	02f97663          	bgeu	s2,a5,80003de8 <_ZN20KObjectAllocatorTest5test1Em+0x220>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003dc0:	ffffe097          	auipc	ra,0xffffe
    80003dc4:	da4080e7          	jalr	-604(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003dc8:	0284b783          	ld	a5,40(s1)
    80003dcc:	00391713          	slli	a4,s2,0x3
    80003dd0:	00e787b3          	add	a5,a5,a4
    80003dd4:	0007b583          	ld	a1,0(a5)
    80003dd8:	ffffe097          	auipc	ra,0xffffe
    80003ddc:	f18080e7          	jalr	-232(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003de0:	00190913          	addi	s2,s2,1
    80003de4:	fd5ff06f          	j	80003db8 <_ZN20KObjectAllocatorTest5test1Em+0x1f0>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003de8:	ffffe097          	auipc	ra,0xffffe
    80003dec:	d7c080e7          	jalr	-644(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003df0:	0284b583          	ld	a1,40(s1)
    80003df4:	ffffe097          	auipc	ra,0xffffe
    80003df8:	efc080e7          	jalr	-260(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003dfc:	ffffe097          	auipc	ra,0xffffe
    80003e00:	d68080e7          	jalr	-664(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003e04:	0204b583          	ld	a1,32(s1)
    80003e08:	ffffe097          	auipc	ra,0xffffe
    80003e0c:	ee8080e7          	jalr	-280(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003e10:	ffffe097          	auipc	ra,0xffffe
    80003e14:	d54080e7          	jalr	-684(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003e18:	00048593          	mv	a1,s1
    80003e1c:	ffffe097          	auipc	ra,0xffffe
    80003e20:	ed4080e7          	jalr	-300(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003e24:	00000513          	li	a0,0
    80003e28:	f55ff06f          	j	80003d7c <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    size_t getObjectSize() { return objectSize; }
    80003e2c:	0184b783          	ld	a5,24(s1)
    if (objAlloc->getObjectSize() != size) { delete objAlloc; return false; }
    80003e30:	08f90063          	beq	s2,a5,80003eb0 <_ZN20KObjectAllocatorTest5test1Em+0x2e8>
    80003e34:	06048a63          	beqz	s1,80003ea8 <_ZN20KObjectAllocatorTest5test1Em+0x2e0>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003e38:	00000913          	li	s2,0
    80003e3c:	0304b783          	ld	a5,48(s1)
    80003e40:	02f97663          	bgeu	s2,a5,80003e6c <_ZN20KObjectAllocatorTest5test1Em+0x2a4>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003e44:	ffffe097          	auipc	ra,0xffffe
    80003e48:	d20080e7          	jalr	-736(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003e4c:	0284b783          	ld	a5,40(s1)
    80003e50:	00391713          	slli	a4,s2,0x3
    80003e54:	00e787b3          	add	a5,a5,a4
    80003e58:	0007b583          	ld	a1,0(a5)
    80003e5c:	ffffe097          	auipc	ra,0xffffe
    80003e60:	e94080e7          	jalr	-364(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003e64:	00190913          	addi	s2,s2,1
    80003e68:	fd5ff06f          	j	80003e3c <_ZN20KObjectAllocatorTest5test1Em+0x274>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003e6c:	ffffe097          	auipc	ra,0xffffe
    80003e70:	cf8080e7          	jalr	-776(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003e74:	0284b583          	ld	a1,40(s1)
    80003e78:	ffffe097          	auipc	ra,0xffffe
    80003e7c:	e78080e7          	jalr	-392(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003e80:	ffffe097          	auipc	ra,0xffffe
    80003e84:	ce4080e7          	jalr	-796(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003e88:	0204b583          	ld	a1,32(s1)
    80003e8c:	ffffe097          	auipc	ra,0xffffe
    80003e90:	e64080e7          	jalr	-412(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003e94:	ffffe097          	auipc	ra,0xffffe
    80003e98:	cd0080e7          	jalr	-816(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003e9c:	00048593          	mv	a1,s1
    80003ea0:	ffffe097          	auipc	ra,0xffffe
    80003ea4:	e50080e7          	jalr	-432(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003ea8:	00000513          	li	a0,0
    80003eac:	ed1ff06f          	j	80003d7c <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    void* objArr[320]; for (size_t i = 0; i < 32; objArr[i++] = objAlloc->allocateNewObject());
    80003eb0:	00000913          	li	s2,0
    80003eb4:	01f00793          	li	a5,31
    80003eb8:	0327ea63          	bltu	a5,s2,80003eec <_ZN20KObjectAllocatorTest5test1Em+0x324>
    80003ebc:	00190a13          	addi	s4,s2,1
    80003ec0:	00048513          	mv	a0,s1
    80003ec4:	00002097          	auipc	ra,0x2
    80003ec8:	1e4080e7          	jalr	484(ra) # 800060a8 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80003ecc:	fffff7b7          	lui	a5,0xfffff
    80003ed0:	00391913          	slli	s2,s2,0x3
    80003ed4:	fc040713          	addi	a4,s0,-64
    80003ed8:	00f707b3          	add	a5,a4,a5
    80003edc:	01278933          	add	s2,a5,s2
    80003ee0:	60a93023          	sd	a0,1536(s2)
    80003ee4:	000a0913          	mv	s2,s4
    80003ee8:	fcdff06f          	j	80003eb4 <_ZN20KObjectAllocatorTest5test1Em+0x2ec>
    if (getByteOfObject(objArr[31], objAlloc) != 3
    80003eec:	fffff7b7          	lui	a5,0xfffff
    80003ef0:	fc040713          	addi	a4,s0,-64
    80003ef4:	00f707b3          	add	a5,a4,a5
    80003ef8:	6f87b903          	ld	s2,1784(a5) # fffffffffffff6f8 <end+0xffffffff7fff3cf8>
    80003efc:	00048613          	mv	a2,s1
    80003f00:	00090593          	mv	a1,s2
    80003f04:	00098513          	mv	a0,s3
    80003f08:	fffff097          	auipc	ra,0xfffff
    80003f0c:	26c080e7          	jalr	620(ra) # 80003174 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[31], objAlloc) != 0)
    80003f10:	00300793          	li	a5,3
    80003f14:	02f50e63          	beq	a0,a5,80003f50 <_ZN20KObjectAllocatorTest5test1Em+0x388>
        { delete objAlloc; return false; }
    80003f18:	0c048c63          	beqz	s1,80003ff0 <_ZN20KObjectAllocatorTest5test1Em+0x428>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003f1c:	00000913          	li	s2,0
    80003f20:	0304b783          	ld	a5,48(s1)
    80003f24:	08f97863          	bgeu	s2,a5,80003fb4 <_ZN20KObjectAllocatorTest5test1Em+0x3ec>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003f28:	ffffe097          	auipc	ra,0xffffe
    80003f2c:	c3c080e7          	jalr	-964(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003f30:	0284b783          	ld	a5,40(s1)
    80003f34:	00391713          	slli	a4,s2,0x3
    80003f38:	00e787b3          	add	a5,a5,a4
    80003f3c:	0007b583          	ld	a1,0(a5)
    80003f40:	ffffe097          	auipc	ra,0xffffe
    80003f44:	db0080e7          	jalr	-592(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003f48:	00190913          	addi	s2,s2,1
    80003f4c:	fd5ff06f          	j	80003f20 <_ZN20KObjectAllocatorTest5test1Em+0x358>
        || getBitOfObject(objArr[31], objAlloc) != 0)
    80003f50:	00048613          	mv	a2,s1
    80003f54:	00090593          	mv	a1,s2
    80003f58:	00098513          	mv	a0,s3
    80003f5c:	fffff097          	auipc	ra,0xfffff
    80003f60:	298080e7          	jalr	664(ra) # 800031f4 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80003f64:	00050a93          	mv	s5,a0
    80003f68:	fa0518e3          	bnez	a0,80003f18 <_ZN20KObjectAllocatorTest5test1Em+0x350>
    if (objAlloc->nextNonTakenByte != 4) { delete objAlloc; return false; }
    80003f6c:	0384b703          	ld	a4,56(s1)
    80003f70:	00400793          	li	a5,4
    80003f74:	08f71263          	bne	a4,a5,80003ff8 <_ZN20KObjectAllocatorTest5test1Em+0x430>
    for (size_t i = 32; i < 320; objArr[i++] = objAlloc->allocateNewObject());
    80003f78:	02000913          	li	s2,32
    80003f7c:	13f00793          	li	a5,319
    80003f80:	0f27e863          	bltu	a5,s2,80004070 <_ZN20KObjectAllocatorTest5test1Em+0x4a8>
    80003f84:	00190a13          	addi	s4,s2,1
    80003f88:	00048513          	mv	a0,s1
    80003f8c:	00002097          	auipc	ra,0x2
    80003f90:	11c080e7          	jalr	284(ra) # 800060a8 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80003f94:	fffff7b7          	lui	a5,0xfffff
    80003f98:	00391913          	slli	s2,s2,0x3
    80003f9c:	fc040713          	addi	a4,s0,-64
    80003fa0:	00f707b3          	add	a5,a4,a5
    80003fa4:	01278933          	add	s2,a5,s2
    80003fa8:	60a93023          	sd	a0,1536(s2)
    80003fac:	000a0913          	mv	s2,s4
    80003fb0:	fcdff06f          	j	80003f7c <_ZN20KObjectAllocatorTest5test1Em+0x3b4>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003fb4:	ffffe097          	auipc	ra,0xffffe
    80003fb8:	bb0080e7          	jalr	-1104(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003fbc:	0284b583          	ld	a1,40(s1)
    80003fc0:	ffffe097          	auipc	ra,0xffffe
    80003fc4:	d30080e7          	jalr	-720(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003fc8:	ffffe097          	auipc	ra,0xffffe
    80003fcc:	b9c080e7          	jalr	-1124(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003fd0:	0204b583          	ld	a1,32(s1)
    80003fd4:	ffffe097          	auipc	ra,0xffffe
    80003fd8:	d1c080e7          	jalr	-740(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003fdc:	ffffe097          	auipc	ra,0xffffe
    80003fe0:	b88080e7          	jalr	-1144(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80003fe4:	00048593          	mv	a1,s1
    80003fe8:	ffffe097          	auipc	ra,0xffffe
    80003fec:	d08080e7          	jalr	-760(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        { delete objAlloc; return false; }
    80003ff0:	00000513          	li	a0,0
    80003ff4:	d89ff06f          	j	80003d7c <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    if (objAlloc->nextNonTakenByte != 4) { delete objAlloc; return false; }
    80003ff8:	02049663          	bnez	s1,80004024 <_ZN20KObjectAllocatorTest5test1Em+0x45c>
    80003ffc:	06c0006f          	j	80004068 <_ZN20KObjectAllocatorTest5test1Em+0x4a0>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004000:	ffffe097          	auipc	ra,0xffffe
    80004004:	b64080e7          	jalr	-1180(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004008:	0284b783          	ld	a5,40(s1)
    8000400c:	003a9713          	slli	a4,s5,0x3
    80004010:	00e787b3          	add	a5,a5,a4
    80004014:	0007b583          	ld	a1,0(a5) # fffffffffffff000 <end+0xffffffff7fff3600>
    80004018:	ffffe097          	auipc	ra,0xffffe
    8000401c:	cd8080e7          	jalr	-808(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004020:	001a8a93          	addi	s5,s5,1
    80004024:	0304b783          	ld	a5,48(s1)
    80004028:	fcfaece3          	bltu	s5,a5,80004000 <_ZN20KObjectAllocatorTest5test1Em+0x438>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    8000402c:	ffffe097          	auipc	ra,0xffffe
    80004030:	b38080e7          	jalr	-1224(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004034:	0284b583          	ld	a1,40(s1)
    80004038:	ffffe097          	auipc	ra,0xffffe
    8000403c:	cb8080e7          	jalr	-840(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004040:	ffffe097          	auipc	ra,0xffffe
    80004044:	b24080e7          	jalr	-1244(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004048:	0204b583          	ld	a1,32(s1)
    8000404c:	ffffe097          	auipc	ra,0xffffe
    80004050:	ca4080e7          	jalr	-860(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004054:	ffffe097          	auipc	ra,0xffffe
    80004058:	b10080e7          	jalr	-1264(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    8000405c:	00048593          	mv	a1,s1
    80004060:	ffffe097          	auipc	ra,0xffffe
    80004064:	c90080e7          	jalr	-880(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004068:	00000513          	li	a0,0
    8000406c:	d11ff06f          	j	80003d7c <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    if (objAlloc->nextNonTakenByte != 40) { delete objAlloc; return false; }
    80004070:	0384b703          	ld	a4,56(s1)
    80004074:	02800793          	li	a5,40
    80004078:	06f70e63          	beq	a4,a5,800040f4 <_ZN20KObjectAllocatorTest5test1Em+0x52c>
    8000407c:	06048863          	beqz	s1,800040ec <_ZN20KObjectAllocatorTest5test1Em+0x524>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004080:	0304b783          	ld	a5,48(s1)
    80004084:	02faf663          	bgeu	s5,a5,800040b0 <_ZN20KObjectAllocatorTest5test1Em+0x4e8>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004088:	ffffe097          	auipc	ra,0xffffe
    8000408c:	adc080e7          	jalr	-1316(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004090:	0284b783          	ld	a5,40(s1)
    80004094:	003a9713          	slli	a4,s5,0x3
    80004098:	00e787b3          	add	a5,a5,a4
    8000409c:	0007b583          	ld	a1,0(a5)
    800040a0:	ffffe097          	auipc	ra,0xffffe
    800040a4:	c50080e7          	jalr	-944(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800040a8:	001a8a93          	addi	s5,s5,1
    800040ac:	fd5ff06f          	j	80004080 <_ZN20KObjectAllocatorTest5test1Em+0x4b8>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800040b0:	ffffe097          	auipc	ra,0xffffe
    800040b4:	ab4080e7          	jalr	-1356(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800040b8:	0284b583          	ld	a1,40(s1)
    800040bc:	ffffe097          	auipc	ra,0xffffe
    800040c0:	c34080e7          	jalr	-972(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800040c4:	ffffe097          	auipc	ra,0xffffe
    800040c8:	aa0080e7          	jalr	-1376(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800040cc:	0204b583          	ld	a1,32(s1)
    800040d0:	ffffe097          	auipc	ra,0xffffe
    800040d4:	c20080e7          	jalr	-992(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800040d8:	ffffe097          	auipc	ra,0xffffe
    800040dc:	a8c080e7          	jalr	-1396(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800040e0:	00048593          	mv	a1,s1
    800040e4:	ffffe097          	auipc	ra,0xffffe
    800040e8:	c0c080e7          	jalr	-1012(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    800040ec:	00000513          	li	a0,0
    800040f0:	c8dff06f          	j	80003d7c <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    objAlloc->freeObject(objArr[7 * 8]);
    800040f4:	fffff7b7          	lui	a5,0xfffff
    800040f8:	fc040713          	addi	a4,s0,-64
    800040fc:	00f707b3          	add	a5,a4,a5
    80004100:	7c07b583          	ld	a1,1984(a5) # fffffffffffff7c0 <end+0xffffffff7fff3dc0>
    80004104:	00048513          	mv	a0,s1
    80004108:	00002097          	auipc	ra,0x2
    8000410c:	d20080e7          	jalr	-736(ra) # 80005e28 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[7 * 8] = objAlloc->allocateNewObject();
    80004110:	00048513          	mv	a0,s1
    80004114:	00002097          	auipc	ra,0x2
    80004118:	f94080e7          	jalr	-108(ra) # 800060a8 <_ZN16KObjectAllocator17allocateNewObjectEv>
    8000411c:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[7 * 8], objAlloc) != 7
    80004120:	00048613          	mv	a2,s1
    80004124:	00050593          	mv	a1,a0
    80004128:	00098513          	mv	a0,s3
    8000412c:	fffff097          	auipc	ra,0xfffff
    80004130:	048080e7          	jalr	72(ra) # 80003174 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[7 * 8], objAlloc) != 7)
    80004134:	00700793          	li	a5,7
    80004138:	02f50c63          	beq	a0,a5,80004170 <_ZN20KObjectAllocatorTest5test1Em+0x5a8>
        { delete objAlloc; return false; }
    8000413c:	0a048663          	beqz	s1,800041e8 <_ZN20KObjectAllocatorTest5test1Em+0x620>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004140:	0304b783          	ld	a5,48(s1)
    80004144:	06faf463          	bgeu	s5,a5,800041ac <_ZN20KObjectAllocatorTest5test1Em+0x5e4>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004148:	ffffe097          	auipc	ra,0xffffe
    8000414c:	a1c080e7          	jalr	-1508(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004150:	0284b783          	ld	a5,40(s1)
    80004154:	003a9713          	slli	a4,s5,0x3
    80004158:	00e787b3          	add	a5,a5,a4
    8000415c:	0007b583          	ld	a1,0(a5)
    80004160:	ffffe097          	auipc	ra,0xffffe
    80004164:	b90080e7          	jalr	-1136(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004168:	001a8a93          	addi	s5,s5,1
    8000416c:	fd5ff06f          	j	80004140 <_ZN20KObjectAllocatorTest5test1Em+0x578>
        || getBitOfObject(objArr[7 * 8], objAlloc) != 7)
    80004170:	00048613          	mv	a2,s1
    80004174:	00090593          	mv	a1,s2
    80004178:	00098513          	mv	a0,s3
    8000417c:	fffff097          	auipc	ra,0xfffff
    80004180:	078080e7          	jalr	120(ra) # 800031f4 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80004184:	00700793          	li	a5,7
    80004188:	faf51ae3          	bne	a0,a5,8000413c <_ZN20KObjectAllocatorTest5test1Em+0x574>
    if (objAlloc->nextNonTakenByte != 7) { delete objAlloc; return false; }
    8000418c:	0384b703          	ld	a4,56(s1)
    80004190:	06f70063          	beq	a4,a5,800041f0 <_ZN20KObjectAllocatorTest5test1Em+0x628>
    80004194:	00048863          	beqz	s1,800041a4 <_ZN20KObjectAllocatorTest5test1Em+0x5dc>
    80004198:	00048513          	mv	a0,s1
    8000419c:	00002097          	auipc	ra,0x2
    800041a0:	844080e7          	jalr	-1980(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    800041a4:	00000513          	li	a0,0
    800041a8:	bd5ff06f          	j	80003d7c <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800041ac:	ffffe097          	auipc	ra,0xffffe
    800041b0:	9b8080e7          	jalr	-1608(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800041b4:	0284b583          	ld	a1,40(s1)
    800041b8:	ffffe097          	auipc	ra,0xffffe
    800041bc:	b38080e7          	jalr	-1224(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800041c0:	ffffe097          	auipc	ra,0xffffe
    800041c4:	9a4080e7          	jalr	-1628(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800041c8:	0204b583          	ld	a1,32(s1)
    800041cc:	ffffe097          	auipc	ra,0xffffe
    800041d0:	b24080e7          	jalr	-1244(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800041d4:	ffffe097          	auipc	ra,0xffffe
    800041d8:	990080e7          	jalr	-1648(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800041dc:	00048593          	mv	a1,s1
    800041e0:	ffffe097          	auipc	ra,0xffffe
    800041e4:	b10080e7          	jalr	-1264(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        { delete objAlloc; return false; }
    800041e8:	00000513          	li	a0,0
    800041ec:	b91ff06f          	j	80003d7c <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    objAlloc->freeObject(objArr[6 * 8 + 3]);
    800041f0:	fffff937          	lui	s2,0xfffff
    800041f4:	fc040793          	addi	a5,s0,-64
    800041f8:	01278933          	add	s2,a5,s2
    800041fc:	79893583          	ld	a1,1944(s2) # fffffffffffff798 <end+0xffffffff7fff3d98>
    80004200:	00048513          	mv	a0,s1
    80004204:	00002097          	auipc	ra,0x2
    80004208:	c24080e7          	jalr	-988(ra) # 80005e28 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[7 * 8 + 4]);
    8000420c:	7e093583          	ld	a1,2016(s2)
    80004210:	00048513          	mv	a0,s1
    80004214:	00002097          	auipc	ra,0x2
    80004218:	c14080e7          	jalr	-1004(ra) # 80005e28 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[38 * 8 + 5]);
    8000421c:	f6843583          	ld	a1,-152(s0)
    80004220:	00048513          	mv	a0,s1
    80004224:	00002097          	auipc	ra,0x2
    80004228:	c04080e7          	jalr	-1020(ra) # 80005e28 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[7 * 8 + 4] = objAlloc->allocateNewObject();
    8000422c:	00048513          	mv	a0,s1
    80004230:	00002097          	auipc	ra,0x2
    80004234:	e78080e7          	jalr	-392(ra) # 800060a8 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004238:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[7 * 8 + 4], objAlloc) != 7
    8000423c:	00048613          	mv	a2,s1
    80004240:	00050593          	mv	a1,a0
    80004244:	00098513          	mv	a0,s3
    80004248:	fffff097          	auipc	ra,0xfffff
    8000424c:	f2c080e7          	jalr	-212(ra) # 80003174 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[7 * 8 + 4], objAlloc) != 3)
    80004250:	00700793          	li	a5,7
    80004254:	00f50e63          	beq	a0,a5,80004270 <_ZN20KObjectAllocatorTest5test1Em+0x6a8>
        { delete objAlloc; return false; }
    80004258:	00048863          	beqz	s1,80004268 <_ZN20KObjectAllocatorTest5test1Em+0x6a0>
    8000425c:	00048513          	mv	a0,s1
    80004260:	00001097          	auipc	ra,0x1
    80004264:	780080e7          	jalr	1920(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    80004268:	00000513          	li	a0,0
    8000426c:	b11ff06f          	j	80003d7c <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        || getBitOfObject(objArr[7 * 8 + 4], objAlloc) != 3)
    80004270:	00048613          	mv	a2,s1
    80004274:	00090593          	mv	a1,s2
    80004278:	00098513          	mv	a0,s3
    8000427c:	fffff097          	auipc	ra,0xfffff
    80004280:	f78080e7          	jalr	-136(ra) # 800031f4 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80004284:	00300793          	li	a5,3
    80004288:	fcf518e3          	bne	a0,a5,80004258 <_ZN20KObjectAllocatorTest5test1Em+0x690>
    if (objAlloc->nextNonTakenByte != 7) { delete objAlloc; return false; }
    8000428c:	0384b703          	ld	a4,56(s1)
    80004290:	00700793          	li	a5,7
    80004294:	00f70e63          	beq	a4,a5,800042b0 <_ZN20KObjectAllocatorTest5test1Em+0x6e8>
    80004298:	00048863          	beqz	s1,800042a8 <_ZN20KObjectAllocatorTest5test1Em+0x6e0>
    8000429c:	00048513          	mv	a0,s1
    800042a0:	00001097          	auipc	ra,0x1
    800042a4:	740080e7          	jalr	1856(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    800042a8:	00000513          	li	a0,0
    800042ac:	ad1ff06f          	j	80003d7c <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    objAlloc->freeObject(objArr[3 * 8 + 5]);
    800042b0:	fffff7b7          	lui	a5,0xfffff
    800042b4:	fc040713          	addi	a4,s0,-64
    800042b8:	00f707b3          	add	a5,a4,a5
    800042bc:	6e87b583          	ld	a1,1768(a5) # fffffffffffff6e8 <end+0xffffffff7fff3ce8>
    800042c0:	00048513          	mv	a0,s1
    800042c4:	00002097          	auipc	ra,0x2
    800042c8:	b64080e7          	jalr	-1180(ra) # 80005e28 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[38 * 8 + 5] = objAlloc->allocateNewObject();
    800042cc:	00048513          	mv	a0,s1
    800042d0:	00002097          	auipc	ra,0x2
    800042d4:	dd8080e7          	jalr	-552(ra) # 800060a8 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800042d8:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[38 * 8 + 5], objAlloc) != 38
    800042dc:	00048613          	mv	a2,s1
    800042e0:	00050593          	mv	a1,a0
    800042e4:	00098513          	mv	a0,s3
    800042e8:	fffff097          	auipc	ra,0xfffff
    800042ec:	e8c080e7          	jalr	-372(ra) # 80003174 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[38 * 8 + 5], objAlloc) != 2)
    800042f0:	02600793          	li	a5,38
    800042f4:	00f50e63          	beq	a0,a5,80004310 <_ZN20KObjectAllocatorTest5test1Em+0x748>
    { delete objAlloc; return false; }
    800042f8:	00048863          	beqz	s1,80004308 <_ZN20KObjectAllocatorTest5test1Em+0x740>
    800042fc:	00048513          	mv	a0,s1
    80004300:	00001097          	auipc	ra,0x1
    80004304:	6e0080e7          	jalr	1760(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    80004308:	00000513          	li	a0,0
    8000430c:	a71ff06f          	j	80003d7c <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        || getBitOfObject(objArr[38 * 8 + 5], objAlloc) != 2)
    80004310:	00048613          	mv	a2,s1
    80004314:	00090593          	mv	a1,s2
    80004318:	00098513          	mv	a0,s3
    8000431c:	fffff097          	auipc	ra,0xfffff
    80004320:	ed8080e7          	jalr	-296(ra) # 800031f4 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80004324:	00200793          	li	a5,2
    80004328:	fcf518e3          	bne	a0,a5,800042f8 <_ZN20KObjectAllocatorTest5test1Em+0x730>
    if (objAlloc->nextNonTakenByte != 38) { delete objAlloc; return false; }
    8000432c:	0384b703          	ld	a4,56(s1)
    80004330:	02600793          	li	a5,38
    80004334:	00f70e63          	beq	a4,a5,80004350 <_ZN20KObjectAllocatorTest5test1Em+0x788>
    80004338:	00048863          	beqz	s1,80004348 <_ZN20KObjectAllocatorTest5test1Em+0x780>
    8000433c:	00048513          	mv	a0,s1
    80004340:	00001097          	auipc	ra,0x1
    80004344:	6a0080e7          	jalr	1696(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    80004348:	00000513          	li	a0,0
    8000434c:	a31ff06f          	j	80003d7c <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    objArr[3 * 8 + 5] = objAlloc->allocateNewObject();
    80004350:	00048513          	mv	a0,s1
    80004354:	00002097          	auipc	ra,0x2
    80004358:	d54080e7          	jalr	-684(ra) # 800060a8 <_ZN16KObjectAllocator17allocateNewObjectEv>
    8000435c:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[3 * 8 + 5], objAlloc) != 3 || getBitOfObject(objArr[3 * 8 + 5], objAlloc) != 2)
    80004360:	00048613          	mv	a2,s1
    80004364:	00050593          	mv	a1,a0
    80004368:	00098513          	mv	a0,s3
    8000436c:	fffff097          	auipc	ra,0xfffff
    80004370:	e08080e7          	jalr	-504(ra) # 80003174 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    80004374:	00300793          	li	a5,3
    80004378:	02f50463          	beq	a0,a5,800043a0 <_ZN20KObjectAllocatorTest5test1Em+0x7d8>
    if (objAlloc->nextNonTakenByte != 3) { delete objAlloc; return false; }
    8000437c:	0384b703          	ld	a4,56(s1)
    80004380:	00300793          	li	a5,3
    80004384:	02f70c63          	beq	a4,a5,800043bc <_ZN20KObjectAllocatorTest5test1Em+0x7f4>
    80004388:	00048863          	beqz	s1,80004398 <_ZN20KObjectAllocatorTest5test1Em+0x7d0>
    8000438c:	00048513          	mv	a0,s1
    80004390:	00001097          	auipc	ra,0x1
    80004394:	650080e7          	jalr	1616(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    80004398:	00000513          	li	a0,0
    8000439c:	9e1ff06f          	j	80003d7c <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    if (getByteOfObject(objArr[3 * 8 + 5], objAlloc) != 3 || getBitOfObject(objArr[3 * 8 + 5], objAlloc) != 2)
    800043a0:	00048613          	mv	a2,s1
    800043a4:	00090593          	mv	a1,s2
    800043a8:	00098513          	mv	a0,s3
    800043ac:	fffff097          	auipc	ra,0xfffff
    800043b0:	e48080e7          	jalr	-440(ra) # 800031f4 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800043b4:	00200793          	li	a5,2
    800043b8:	fcf512e3          	bne	a0,a5,8000437c <_ZN20KObjectAllocatorTest5test1Em+0x7b4>
    objArr[6 * 8 + 3] = objAlloc->allocateNewObject();
    800043bc:	00048513          	mv	a0,s1
    800043c0:	00002097          	auipc	ra,0x2
    800043c4:	ce8080e7          	jalr	-792(ra) # 800060a8 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800043c8:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[6 * 8 + 3], objAlloc) != 6
    800043cc:	00048613          	mv	a2,s1
    800043d0:	00050593          	mv	a1,a0
    800043d4:	00098513          	mv	a0,s3
    800043d8:	fffff097          	auipc	ra,0xfffff
    800043dc:	d9c080e7          	jalr	-612(ra) # 80003174 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[6 * 8 + 3], objAlloc) != 4)
    800043e0:	00600793          	li	a5,6
    800043e4:	00f50e63          	beq	a0,a5,80004400 <_ZN20KObjectAllocatorTest5test1Em+0x838>
    { delete objAlloc; return false; }
    800043e8:	00048863          	beqz	s1,800043f8 <_ZN20KObjectAllocatorTest5test1Em+0x830>
    800043ec:	00048513          	mv	a0,s1
    800043f0:	00001097          	auipc	ra,0x1
    800043f4:	5f0080e7          	jalr	1520(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    800043f8:	00000513          	li	a0,0
    800043fc:	981ff06f          	j	80003d7c <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        || getBitOfObject(objArr[6 * 8 + 3], objAlloc) != 4)
    80004400:	00048613          	mv	a2,s1
    80004404:	00090593          	mv	a1,s2
    80004408:	00098513          	mv	a0,s3
    8000440c:	fffff097          	auipc	ra,0xfffff
    80004410:	de8080e7          	jalr	-536(ra) # 800031f4 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80004414:	00400793          	li	a5,4
    80004418:	fcf518e3          	bne	a0,a5,800043e8 <_ZN20KObjectAllocatorTest5test1Em+0x820>
    if (objAlloc->nextNonTakenByte != 6) { delete objAlloc; return false; }
    8000441c:	0384b703          	ld	a4,56(s1)
    80004420:	00600793          	li	a5,6
    80004424:	0ef71463          	bne	a4,a5,8000450c <_ZN20KObjectAllocatorTest5test1Em+0x944>
    for (int i = 0; i < 3; ++i) {
    80004428:	00000a93          	li	s5,0
    8000442c:	00200793          	li	a5,2
    80004430:	1557ca63          	blt	a5,s5,80004584 <_ZN20KObjectAllocatorTest5test1Em+0x9bc>
        objAlloc->freeObject(objArr[319]);
    80004434:	fb843583          	ld	a1,-72(s0)
    80004438:	00048513          	mv	a0,s1
    8000443c:	00002097          	auipc	ra,0x2
    80004440:	9ec080e7          	jalr	-1556(ra) # 80005e28 <_ZN16KObjectAllocator10freeObjectEPv>
        objArr[319] = objAlloc->allocateNewObject();
    80004444:	00048513          	mv	a0,s1
    80004448:	00002097          	auipc	ra,0x2
    8000444c:	c60080e7          	jalr	-928(ra) # 800060a8 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004450:	00050913          	mv	s2,a0
    80004454:	faa43c23          	sd	a0,-72(s0)
        if (getByteOfObject(objArr[319], objAlloc) != 39
    80004458:	00048613          	mv	a2,s1
    8000445c:	00050593          	mv	a1,a0
    80004460:	00098513          	mv	a0,s3
    80004464:	fffff097          	auipc	ra,0xfffff
    80004468:	d10080e7          	jalr	-752(ra) # 80003174 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
            || getBitOfObject(objArr[319], objAlloc) != 0)
    8000446c:	02700793          	li	a5,39
    80004470:	0af51a63          	bne	a0,a5,80004524 <_ZN20KObjectAllocatorTest5test1Em+0x95c>
    80004474:	00048613          	mv	a2,s1
    80004478:	00090593          	mv	a1,s2
    8000447c:	00098513          	mv	a0,s3
    80004480:	fffff097          	auipc	ra,0xfffff
    80004484:	d74080e7          	jalr	-652(ra) # 800031f4 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80004488:	08051e63          	bnez	a0,80004524 <_ZN20KObjectAllocatorTest5test1Em+0x95c>
        if (objAlloc->nextNonTakenByte != 40) { delete objAlloc; return false; }
    8000448c:	0384b703          	ld	a4,56(s1)
    80004490:	02800793          	li	a5,40
    80004494:	0af71463          	bne	a4,a5,8000453c <_ZN20KObjectAllocatorTest5test1Em+0x974>
        objAlloc->freeObject(objArr[1]);
    80004498:	fffffa37          	lui	s4,0xfffff
    8000449c:	fc040793          	addi	a5,s0,-64
    800044a0:	01478a33          	add	s4,a5,s4
    800044a4:	608a3583          	ld	a1,1544(s4) # fffffffffffff608 <end+0xffffffff7fff3c08>
    800044a8:	00048513          	mv	a0,s1
    800044ac:	00002097          	auipc	ra,0x2
    800044b0:	97c080e7          	jalr	-1668(ra) # 80005e28 <_ZN16KObjectAllocator10freeObjectEPv>
        objArr[1] = objAlloc->allocateNewObject();
    800044b4:	00048513          	mv	a0,s1
    800044b8:	00002097          	auipc	ra,0x2
    800044bc:	bf0080e7          	jalr	-1040(ra) # 800060a8 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800044c0:	00050913          	mv	s2,a0
    800044c4:	60aa3423          	sd	a0,1544(s4)
        if (getByteOfObject(objArr[1], objAlloc) != 0
    800044c8:	00048613          	mv	a2,s1
    800044cc:	00050593          	mv	a1,a0
    800044d0:	00098513          	mv	a0,s3
    800044d4:	fffff097          	auipc	ra,0xfffff
    800044d8:	ca0080e7          	jalr	-864(ra) # 80003174 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
            || getBitOfObject(objArr[1], objAlloc) != 6)
    800044dc:	06051c63          	bnez	a0,80004554 <_ZN20KObjectAllocatorTest5test1Em+0x98c>
    800044e0:	00048613          	mv	a2,s1
    800044e4:	00090593          	mv	a1,s2
    800044e8:	00098513          	mv	a0,s3
    800044ec:	fffff097          	auipc	ra,0xfffff
    800044f0:	d08080e7          	jalr	-760(ra) # 800031f4 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800044f4:	00600793          	li	a5,6
    800044f8:	04f51e63          	bne	a0,a5,80004554 <_ZN20KObjectAllocatorTest5test1Em+0x98c>
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    800044fc:	0384b783          	ld	a5,56(s1)
    80004500:	06079663          	bnez	a5,8000456c <_ZN20KObjectAllocatorTest5test1Em+0x9a4>
    for (int i = 0; i < 3; ++i) {
    80004504:	001a8a9b          	addiw	s5,s5,1
    80004508:	f25ff06f          	j	8000442c <_ZN20KObjectAllocatorTest5test1Em+0x864>
    if (objAlloc->nextNonTakenByte != 6) { delete objAlloc; return false; }
    8000450c:	00048863          	beqz	s1,8000451c <_ZN20KObjectAllocatorTest5test1Em+0x954>
    80004510:	00048513          	mv	a0,s1
    80004514:	00001097          	auipc	ra,0x1
    80004518:	4cc080e7          	jalr	1228(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    8000451c:	00000513          	li	a0,0
    80004520:	85dff06f          	j	80003d7c <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        { delete objAlloc; return false; }
    80004524:	00048863          	beqz	s1,80004534 <_ZN20KObjectAllocatorTest5test1Em+0x96c>
    80004528:	00048513          	mv	a0,s1
    8000452c:	00001097          	auipc	ra,0x1
    80004530:	4b4080e7          	jalr	1204(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    80004534:	00000513          	li	a0,0
    80004538:	845ff06f          	j	80003d7c <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        if (objAlloc->nextNonTakenByte != 40) { delete objAlloc; return false; }
    8000453c:	00048863          	beqz	s1,8000454c <_ZN20KObjectAllocatorTest5test1Em+0x984>
    80004540:	00048513          	mv	a0,s1
    80004544:	00001097          	auipc	ra,0x1
    80004548:	49c080e7          	jalr	1180(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    8000454c:	00000513          	li	a0,0
    80004550:	82dff06f          	j	80003d7c <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        { delete objAlloc; return false; }
    80004554:	00048863          	beqz	s1,80004564 <_ZN20KObjectAllocatorTest5test1Em+0x99c>
    80004558:	00048513          	mv	a0,s1
    8000455c:	00001097          	auipc	ra,0x1
    80004560:	484080e7          	jalr	1156(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    80004564:	00000513          	li	a0,0
    80004568:	815ff06f          	j	80003d7c <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    8000456c:	00048863          	beqz	s1,8000457c <_ZN20KObjectAllocatorTest5test1Em+0x9b4>
    80004570:	00048513          	mv	a0,s1
    80004574:	00001097          	auipc	ra,0x1
    80004578:	46c080e7          	jalr	1132(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    8000457c:	00000513          	li	a0,0
    80004580:	ffcff06f          	j	80003d7c <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    delete objAlloc;
    80004584:	00048c63          	beqz	s1,8000459c <_ZN20KObjectAllocatorTest5test1Em+0x9d4>
    80004588:	00048513          	mv	a0,s1
    8000458c:	00001097          	auipc	ra,0x1
    80004590:	454080e7          	jalr	1108(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    return true;
    80004594:	00100513          	li	a0,1
    80004598:	fe4ff06f          	j	80003d7c <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    8000459c:	00100513          	li	a0,1
    800045a0:	fdcff06f          	j	80003d7c <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    800045a4:	00050913          	mv	s2,a0
    KObjectAllocator* objAlloc = new KObjectAllocator(size);
    800045a8:	00048513          	mv	a0,s1
    800045ac:	00001097          	auipc	ra,0x1
    800045b0:	434080e7          	jalr	1076(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    800045b4:	00090513          	mv	a0,s2
    800045b8:	00007097          	auipc	ra,0x7
    800045bc:	2a0080e7          	jalr	672(ra) # 8000b858 <_Unwind_Resume>

00000000800045c0 <_ZN20KObjectAllocatorTest5test2Em>:

bool KObjectAllocatorTest::test2(size_t size) {
    800045c0:	f5010113          	addi	sp,sp,-176
    800045c4:	0a113423          	sd	ra,168(sp)
    800045c8:	0a813023          	sd	s0,160(sp)
    800045cc:	08913c23          	sd	s1,152(sp)
    800045d0:	09213823          	sd	s2,144(sp)
    800045d4:	09313423          	sd	s3,136(sp)
    800045d8:	09413023          	sd	s4,128(sp)
    800045dc:	07513c23          	sd	s5,120(sp)
    800045e0:	07613823          	sd	s6,112(sp)
    800045e4:	07713423          	sd	s7,104(sp)
    800045e8:	07813023          	sd	s8,96(sp)
    800045ec:	0b010413          	addi	s0,sp,176
    800045f0:	00050993          	mv	s3,a0
    800045f4:	00058913          	mv	s2,a1
        return MemoryAllocator::instance()->kmem_alloc(size);
    800045f8:	ffffd097          	auipc	ra,0xffffd
    800045fc:	56c080e7          	jalr	1388(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004600:	04000593          	li	a1,64
    80004604:	ffffd097          	auipc	ra,0xffffd
    80004608:	644080e7          	jalr	1604(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    8000460c:	00050493          	mv	s1,a0
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    80004610:	00300793          	li	a5,3
    80004614:	00f53023          	sd	a5,0(a0)
    80004618:	00f53423          	sd	a5,8(a0)
    8000461c:	01253c23          	sd	s2,24(a0)
    80004620:	00100793          	li	a5,1
    80004624:	02f53823          	sd	a5,48(a0)
    80004628:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    8000462c:	ffffd097          	auipc	ra,0xffffd
    80004630:	538080e7          	jalr	1336(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004634:	0304b583          	ld	a1,48(s1)
    80004638:	00359593          	slli	a1,a1,0x3
    8000463c:	ffffd097          	auipc	ra,0xffffd
    80004640:	60c080e7          	jalr	1548(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80004644:	02a4b423          	sd	a0,40(s1)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80004648:	ffffd097          	auipc	ra,0xffffd
    8000464c:	51c080e7          	jalr	1308(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004650:	0304b583          	ld	a1,48(s1)
    80004654:	00359593          	slli	a1,a1,0x3
    80004658:	ffffd097          	auipc	ra,0xffffd
    8000465c:	5f0080e7          	jalr	1520(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80004660:	02a4b023          	sd	a0,32(s1)
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80004664:	0084b703          	ld	a4,8(s1)
    80004668:	ff877793          	andi	a5,a4,-8
    8000466c:	02f70463          	beq	a4,a5,80004694 <_ZN20KObjectAllocatorTest5test2Em+0xd4>
    80004670:	00800713          	li	a4,8
    80004674:	00e787b3          	add	a5,a5,a4
    80004678:	00f4b423          	sd	a5,8(s1)
    8000467c:	00f4b023          	sd	a5,0(s1)
        memorySizeForBits = numberOfObjects / 8;
    80004680:	0037d793          	srli	a5,a5,0x3
    80004684:	00f4b823          	sd	a5,16(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80004688:	ffffd097          	auipc	ra,0xffffd
    8000468c:	4dc080e7          	jalr	1244(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004690:	00c0006f          	j	8000469c <_ZN20KObjectAllocatorTest5test2Em+0xdc>
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80004694:	00000713          	li	a4,0
    80004698:	fddff06f          	j	80004674 <_ZN20KObjectAllocatorTest5test2Em+0xb4>
                memorySizeForBits + initialNumberOfObjects * objectSize
    8000469c:	0104b583          	ld	a1,16(s1)
    800046a0:	0004b783          	ld	a5,0(s1)
    800046a4:	02f907b3          	mul	a5,s2,a5
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    800046a8:	0284ba03          	ld	s4,40(s1)
    800046ac:	00f585b3          	add	a1,a1,a5
    800046b0:	ffffd097          	auipc	ra,0xffffd
    800046b4:	598080e7          	jalr	1432(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    800046b8:	00aa3023          	sd	a0,0(s4)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    800046bc:	0284b783          	ld	a5,40(s1)
    800046c0:	0007b783          	ld	a5,0(a5)
    800046c4:	0104b683          	ld	a3,16(s1)
    800046c8:	0204b703          	ld	a4,32(s1)
    800046cc:	00d787b3          	add	a5,a5,a3
    800046d0:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    800046d4:	00000793          	li	a5,0
    800046d8:	0104b703          	ld	a4,16(s1)
    800046dc:	00e7fe63          	bgeu	a5,a4,800046f8 <_ZN20KObjectAllocatorTest5test2Em+0x138>
    800046e0:	0284b703          	ld	a4,40(s1)
    800046e4:	00073703          	ld	a4,0(a4)
    800046e8:	00f70733          	add	a4,a4,a5
    800046ec:	00070023          	sb	zero,0(a4)
    800046f0:	00178793          	addi	a5,a5,1
    800046f4:	fe5ff06f          	j	800046d8 <_ZN20KObjectAllocatorTest5test2Em+0x118>
    size_t getNumberOfObjects() { return numberOfObjects; }
    800046f8:	0084bb83          	ld	s7,8(s1)
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 3);
    if (objAlloc->getNumberOfObjects() != 8) { delete objAlloc; return false; }
    800046fc:	00800793          	li	a5,8
    80004700:	0afb8863          	beq	s7,a5,800047b0 <_ZN20KObjectAllocatorTest5test2Em+0x1f0>
    80004704:	06048a63          	beqz	s1,80004778 <_ZN20KObjectAllocatorTest5test2Em+0x1b8>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004708:	00000913          	li	s2,0
    8000470c:	0280006f          	j	80004734 <_ZN20KObjectAllocatorTest5test2Em+0x174>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004710:	ffffd097          	auipc	ra,0xffffd
    80004714:	454080e7          	jalr	1108(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004718:	0284b783          	ld	a5,40(s1)
    8000471c:	00391713          	slli	a4,s2,0x3
    80004720:	00e787b3          	add	a5,a5,a4
    80004724:	0007b583          	ld	a1,0(a5)
    80004728:	ffffd097          	auipc	ra,0xffffd
    8000472c:	5c8080e7          	jalr	1480(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004730:	00190913          	addi	s2,s2,1
    80004734:	0304b783          	ld	a5,48(s1)
    80004738:	fcf96ce3          	bltu	s2,a5,80004710 <_ZN20KObjectAllocatorTest5test2Em+0x150>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    8000473c:	ffffd097          	auipc	ra,0xffffd
    80004740:	428080e7          	jalr	1064(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004744:	0284b583          	ld	a1,40(s1)
    80004748:	ffffd097          	auipc	ra,0xffffd
    8000474c:	5a8080e7          	jalr	1448(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004750:	ffffd097          	auipc	ra,0xffffd
    80004754:	414080e7          	jalr	1044(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004758:	0204b583          	ld	a1,32(s1)
    8000475c:	ffffd097          	auipc	ra,0xffffd
    80004760:	594080e7          	jalr	1428(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004764:	ffffd097          	auipc	ra,0xffffd
    80004768:	400080e7          	jalr	1024(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    8000476c:	00048593          	mv	a1,s1
    80004770:	ffffd097          	auipc	ra,0xffffd
    80004774:	580080e7          	jalr	1408(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004778:	00000a13          	li	s4,0
        if (expectedBitValues[i] != getValueOfBitAt(byte, bit, objAlloc))
        { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    }
    delete objAlloc;
    return true;
}
    8000477c:	000a0513          	mv	a0,s4
    80004780:	0a813083          	ld	ra,168(sp)
    80004784:	0a013403          	ld	s0,160(sp)
    80004788:	09813483          	ld	s1,152(sp)
    8000478c:	09013903          	ld	s2,144(sp)
    80004790:	08813983          	ld	s3,136(sp)
    80004794:	08013a03          	ld	s4,128(sp)
    80004798:	07813a83          	ld	s5,120(sp)
    8000479c:	07013b03          	ld	s6,112(sp)
    800047a0:	06813b83          	ld	s7,104(sp)
    800047a4:	06013c03          	ld	s8,96(sp)
    800047a8:	0b010113          	addi	sp,sp,176
    800047ac:	00008067          	ret
    size_t getMemorySizeForBits() { return memorySizeForBits; }
    800047b0:	0104b703          	ld	a4,16(s1)
    if (objAlloc->getMemorySizeForBits() != 1) { delete objAlloc; return false; }
    800047b4:	00100793          	li	a5,1
    800047b8:	08f70063          	beq	a4,a5,80004838 <_ZN20KObjectAllocatorTest5test2Em+0x278>
    800047bc:	06048a63          	beqz	s1,80004830 <_ZN20KObjectAllocatorTest5test2Em+0x270>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800047c0:	00000913          	li	s2,0
    800047c4:	0280006f          	j	800047ec <_ZN20KObjectAllocatorTest5test2Em+0x22c>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800047c8:	ffffd097          	auipc	ra,0xffffd
    800047cc:	39c080e7          	jalr	924(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800047d0:	0284b783          	ld	a5,40(s1)
    800047d4:	00391713          	slli	a4,s2,0x3
    800047d8:	00e787b3          	add	a5,a5,a4
    800047dc:	0007b583          	ld	a1,0(a5)
    800047e0:	ffffd097          	auipc	ra,0xffffd
    800047e4:	510080e7          	jalr	1296(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800047e8:	00190913          	addi	s2,s2,1
    800047ec:	0304b783          	ld	a5,48(s1)
    800047f0:	fcf96ce3          	bltu	s2,a5,800047c8 <_ZN20KObjectAllocatorTest5test2Em+0x208>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800047f4:	ffffd097          	auipc	ra,0xffffd
    800047f8:	370080e7          	jalr	880(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800047fc:	0284b583          	ld	a1,40(s1)
    80004800:	ffffd097          	auipc	ra,0xffffd
    80004804:	4f0080e7          	jalr	1264(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004808:	ffffd097          	auipc	ra,0xffffd
    8000480c:	35c080e7          	jalr	860(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004810:	0204b583          	ld	a1,32(s1)
    80004814:	ffffd097          	auipc	ra,0xffffd
    80004818:	4dc080e7          	jalr	1244(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    8000481c:	ffffd097          	auipc	ra,0xffffd
    80004820:	348080e7          	jalr	840(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004824:	00048593          	mv	a1,s1
    80004828:	ffffd097          	auipc	ra,0xffffd
    8000482c:	4c8080e7          	jalr	1224(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004830:	00000a13          	li	s4,0
    80004834:	f49ff06f          	j	8000477c <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    size_t getObjectSize() { return objectSize; }
    80004838:	0184b783          	ld	a5,24(s1)
    if (objAlloc->getObjectSize() != size) { delete objAlloc; return false; }
    8000483c:	08f90063          	beq	s2,a5,800048bc <_ZN20KObjectAllocatorTest5test2Em+0x2fc>
    80004840:	06048a63          	beqz	s1,800048b4 <_ZN20KObjectAllocatorTest5test2Em+0x2f4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004844:	00000913          	li	s2,0
    80004848:	0304b783          	ld	a5,48(s1)
    8000484c:	02f97663          	bgeu	s2,a5,80004878 <_ZN20KObjectAllocatorTest5test2Em+0x2b8>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004850:	ffffd097          	auipc	ra,0xffffd
    80004854:	314080e7          	jalr	788(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004858:	0284b783          	ld	a5,40(s1)
    8000485c:	00391713          	slli	a4,s2,0x3
    80004860:	00e787b3          	add	a5,a5,a4
    80004864:	0007b583          	ld	a1,0(a5)
    80004868:	ffffd097          	auipc	ra,0xffffd
    8000486c:	488080e7          	jalr	1160(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004870:	00190913          	addi	s2,s2,1
    80004874:	fd5ff06f          	j	80004848 <_ZN20KObjectAllocatorTest5test2Em+0x288>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004878:	ffffd097          	auipc	ra,0xffffd
    8000487c:	2ec080e7          	jalr	748(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004880:	0284b583          	ld	a1,40(s1)
    80004884:	ffffd097          	auipc	ra,0xffffd
    80004888:	46c080e7          	jalr	1132(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    8000488c:	ffffd097          	auipc	ra,0xffffd
    80004890:	2d8080e7          	jalr	728(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004894:	0204b583          	ld	a1,32(s1)
    80004898:	ffffd097          	auipc	ra,0xffffd
    8000489c:	458080e7          	jalr	1112(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800048a0:	ffffd097          	auipc	ra,0xffffd
    800048a4:	2c4080e7          	jalr	708(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800048a8:	00048593          	mv	a1,s1
    800048ac:	ffffd097          	auipc	ra,0xffffd
    800048b0:	444080e7          	jalr	1092(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    800048b4:	00000a13          	li	s4,0
    800048b8:	ec5ff06f          	j	8000477c <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    void* objArr[10]; for (size_t i = 0; i < 10; objArr[i++] = objAlloc->allocateNewObject());
    800048bc:	00000913          	li	s2,0
    800048c0:	00900793          	li	a5,9
    800048c4:	0327e663          	bltu	a5,s2,800048f0 <_ZN20KObjectAllocatorTest5test2Em+0x330>
    800048c8:	00190a13          	addi	s4,s2,1
    800048cc:	00048513          	mv	a0,s1
    800048d0:	00001097          	auipc	ra,0x1
    800048d4:	7d8080e7          	jalr	2008(ra) # 800060a8 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800048d8:	00391913          	slli	s2,s2,0x3
    800048dc:	fb040793          	addi	a5,s0,-80
    800048e0:	01278933          	add	s2,a5,s2
    800048e4:	faa93823          	sd	a0,-80(s2)
    800048e8:	000a0913          	mv	s2,s4
    800048ec:	fd5ff06f          	j	800048c0 <_ZN20KObjectAllocatorTest5test2Em+0x300>
    for (size_t i = 0; i < 10; ++i) {
    800048f0:	00000b13          	li	s6,0
    size_t byte = 0; size_t bit = 7;
    800048f4:	00700913          	li	s2,7
    800048f8:	00000a93          	li	s5,0
    800048fc:	1840006f          	j	80004a80 <_ZN20KObjectAllocatorTest5test2Em+0x4c0>
        if (objArr[i] != getObjectAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004900:	06048a63          	beqz	s1,80004974 <_ZN20KObjectAllocatorTest5test2Em+0x3b4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004904:	00000913          	li	s2,0
    80004908:	0304b783          	ld	a5,48(s1)
    8000490c:	02f97663          	bgeu	s2,a5,80004938 <_ZN20KObjectAllocatorTest5test2Em+0x378>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004910:	ffffd097          	auipc	ra,0xffffd
    80004914:	254080e7          	jalr	596(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004918:	0284b783          	ld	a5,40(s1)
    8000491c:	00391713          	slli	a4,s2,0x3
    80004920:	00e787b3          	add	a5,a5,a4
    80004924:	0007b583          	ld	a1,0(a5)
    80004928:	ffffd097          	auipc	ra,0xffffd
    8000492c:	3c8080e7          	jalr	968(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004930:	00190913          	addi	s2,s2,1
    80004934:	fd5ff06f          	j	80004908 <_ZN20KObjectAllocatorTest5test2Em+0x348>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004938:	ffffd097          	auipc	ra,0xffffd
    8000493c:	22c080e7          	jalr	556(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004940:	0284b583          	ld	a1,40(s1)
    80004944:	ffffd097          	auipc	ra,0xffffd
    80004948:	3ac080e7          	jalr	940(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    8000494c:	ffffd097          	auipc	ra,0xffffd
    80004950:	218080e7          	jalr	536(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004954:	0204b583          	ld	a1,32(s1)
    80004958:	ffffd097          	auipc	ra,0xffffd
    8000495c:	398080e7          	jalr	920(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004960:	ffffd097          	auipc	ra,0xffffd
    80004964:	204080e7          	jalr	516(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004968:	00048593          	mv	a1,s1
    8000496c:	ffffd097          	auipc	ra,0xffffd
    80004970:	384080e7          	jalr	900(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004974:	00000a13          	li	s4,0
    80004978:	e05ff06f          	j	8000477c <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
        if (objByte != byte || objBit != bit) { delete objAlloc; return false; }
    8000497c:	06048a63          	beqz	s1,800049f0 <_ZN20KObjectAllocatorTest5test2Em+0x430>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004980:	00000913          	li	s2,0
    80004984:	0304b783          	ld	a5,48(s1)
    80004988:	02f97663          	bgeu	s2,a5,800049b4 <_ZN20KObjectAllocatorTest5test2Em+0x3f4>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    8000498c:	ffffd097          	auipc	ra,0xffffd
    80004990:	1d8080e7          	jalr	472(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004994:	0284b783          	ld	a5,40(s1)
    80004998:	00391713          	slli	a4,s2,0x3
    8000499c:	00e787b3          	add	a5,a5,a4
    800049a0:	0007b583          	ld	a1,0(a5)
    800049a4:	ffffd097          	auipc	ra,0xffffd
    800049a8:	34c080e7          	jalr	844(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800049ac:	00190913          	addi	s2,s2,1
    800049b0:	fd5ff06f          	j	80004984 <_ZN20KObjectAllocatorTest5test2Em+0x3c4>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800049b4:	ffffd097          	auipc	ra,0xffffd
    800049b8:	1b0080e7          	jalr	432(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800049bc:	0284b583          	ld	a1,40(s1)
    800049c0:	ffffd097          	auipc	ra,0xffffd
    800049c4:	330080e7          	jalr	816(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800049c8:	ffffd097          	auipc	ra,0xffffd
    800049cc:	19c080e7          	jalr	412(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800049d0:	0204b583          	ld	a1,32(s1)
    800049d4:	ffffd097          	auipc	ra,0xffffd
    800049d8:	31c080e7          	jalr	796(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800049dc:	ffffd097          	auipc	ra,0xffffd
    800049e0:	188080e7          	jalr	392(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800049e4:	00048593          	mv	a1,s1
    800049e8:	ffffd097          	auipc	ra,0xffffd
    800049ec:	308080e7          	jalr	776(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    800049f0:	00000a13          	li	s4,0
    800049f4:	d89ff06f          	j	8000477c <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
        if (!getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    800049f8:	d80482e3          	beqz	s1,8000477c <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800049fc:	00000913          	li	s2,0
    80004a00:	0280006f          	j	80004a28 <_ZN20KObjectAllocatorTest5test2Em+0x468>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004a04:	ffffd097          	auipc	ra,0xffffd
    80004a08:	160080e7          	jalr	352(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004a0c:	0284b783          	ld	a5,40(s1)
    80004a10:	00391713          	slli	a4,s2,0x3
    80004a14:	00e787b3          	add	a5,a5,a4
    80004a18:	0007b583          	ld	a1,0(a5)
    80004a1c:	ffffd097          	auipc	ra,0xffffd
    80004a20:	2d4080e7          	jalr	724(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004a24:	00190913          	addi	s2,s2,1
    80004a28:	0304b783          	ld	a5,48(s1)
    80004a2c:	fcf96ce3          	bltu	s2,a5,80004a04 <_ZN20KObjectAllocatorTest5test2Em+0x444>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004a30:	ffffd097          	auipc	ra,0xffffd
    80004a34:	134080e7          	jalr	308(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004a38:	0284b583          	ld	a1,40(s1)
    80004a3c:	ffffd097          	auipc	ra,0xffffd
    80004a40:	2b4080e7          	jalr	692(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004a44:	ffffd097          	auipc	ra,0xffffd
    80004a48:	120080e7          	jalr	288(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004a4c:	0204b583          	ld	a1,32(s1)
    80004a50:	ffffd097          	auipc	ra,0xffffd
    80004a54:	2a0080e7          	jalr	672(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004a58:	ffffd097          	auipc	ra,0xffffd
    80004a5c:	10c080e7          	jalr	268(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004a60:	00048593          	mv	a1,s1
    80004a64:	ffffd097          	auipc	ra,0xffffd
    80004a68:	28c080e7          	jalr	652(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004a6c:	d11ff06f          	j	8000477c <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80004a70:	001a8a93          	addi	s5,s5,1
    80004a74:	000b8913          	mv	s2,s7
    80004a78:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 10; ++i) {
    80004a7c:	001b0b13          	addi	s6,s6,1
    80004a80:	00900793          	li	a5,9
    80004a84:	0967e663          	bltu	a5,s6,80004b10 <_ZN20KObjectAllocatorTest5test2Em+0x550>
        if (objArr[i] != getObjectAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004a88:	003b1793          	slli	a5,s6,0x3
    80004a8c:	fb040713          	addi	a4,s0,-80
    80004a90:	00f707b3          	add	a5,a4,a5
    80004a94:	fb07ba03          	ld	s4,-80(a5)
    80004a98:	00048693          	mv	a3,s1
    80004a9c:	00090613          	mv	a2,s2
    80004aa0:	000a8593          	mv	a1,s5
    80004aa4:	00098513          	mv	a0,s3
    80004aa8:	ffffe097          	auipc	ra,0xffffe
    80004aac:	7d0080e7          	jalr	2000(ra) # 80003278 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>
    80004ab0:	e4aa18e3          	bne	s4,a0,80004900 <_ZN20KObjectAllocatorTest5test2Em+0x340>
        size_t objByte = getByteOfObject(objArr[i], objAlloc);
    80004ab4:	00048613          	mv	a2,s1
    80004ab8:	000a0593          	mv	a1,s4
    80004abc:	00098513          	mv	a0,s3
    80004ac0:	ffffe097          	auipc	ra,0xffffe
    80004ac4:	6b4080e7          	jalr	1716(ra) # 80003174 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    80004ac8:	00050c13          	mv	s8,a0
        size_t objBit = getBitOfObject(objArr[i], objAlloc);
    80004acc:	00048613          	mv	a2,s1
    80004ad0:	000a0593          	mv	a1,s4
    80004ad4:	00098513          	mv	a0,s3
    80004ad8:	ffffe097          	auipc	ra,0xffffe
    80004adc:	71c080e7          	jalr	1820(ra) # 800031f4 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
        if (objByte != byte || objBit != bit) { delete objAlloc; return false; }
    80004ae0:	e98a9ee3          	bne	s5,s8,8000497c <_ZN20KObjectAllocatorTest5test2Em+0x3bc>
    80004ae4:	e8a91ce3          	bne	s2,a0,8000497c <_ZN20KObjectAllocatorTest5test2Em+0x3bc>
        if (!getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004ae8:	00048693          	mv	a3,s1
    80004aec:	00090613          	mv	a2,s2
    80004af0:	000a8593          	mv	a1,s5
    80004af4:	00098513          	mv	a0,s3
    80004af8:	ffffe097          	auipc	ra,0xffffe
    80004afc:	5f4080e7          	jalr	1524(ra) # 800030ec <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80004b00:	00050a13          	mv	s4,a0
    80004b04:	ee050ae3          	beqz	a0,800049f8 <_ZN20KObjectAllocatorTest5test2Em+0x438>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80004b08:	f60918e3          	bnez	s2,80004a78 <_ZN20KObjectAllocatorTest5test2Em+0x4b8>
    80004b0c:	f65ff06f          	j	80004a70 <_ZN20KObjectAllocatorTest5test2Em+0x4b0>
    for (size_t i = 0; i < 6; ++i) {
    80004b10:	00000a13          	li	s4,0
    80004b14:	0900006f          	j	80004ba4 <_ZN20KObjectAllocatorTest5test2Em+0x5e4>
        if (getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004b18:	06048a63          	beqz	s1,80004b8c <_ZN20KObjectAllocatorTest5test2Em+0x5cc>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004b1c:	00000913          	li	s2,0
    80004b20:	0304b783          	ld	a5,48(s1)
    80004b24:	02f97663          	bgeu	s2,a5,80004b50 <_ZN20KObjectAllocatorTest5test2Em+0x590>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004b28:	ffffd097          	auipc	ra,0xffffd
    80004b2c:	03c080e7          	jalr	60(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004b30:	0284b783          	ld	a5,40(s1)
    80004b34:	00391713          	slli	a4,s2,0x3
    80004b38:	00e787b3          	add	a5,a5,a4
    80004b3c:	0007b583          	ld	a1,0(a5)
    80004b40:	ffffd097          	auipc	ra,0xffffd
    80004b44:	1b0080e7          	jalr	432(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004b48:	00190913          	addi	s2,s2,1
    80004b4c:	fd5ff06f          	j	80004b20 <_ZN20KObjectAllocatorTest5test2Em+0x560>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004b50:	ffffd097          	auipc	ra,0xffffd
    80004b54:	014080e7          	jalr	20(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004b58:	0284b583          	ld	a1,40(s1)
    80004b5c:	ffffd097          	auipc	ra,0xffffd
    80004b60:	194080e7          	jalr	404(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004b64:	ffffd097          	auipc	ra,0xffffd
    80004b68:	000080e7          	jalr	ra # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004b6c:	0204b583          	ld	a1,32(s1)
    80004b70:	ffffd097          	auipc	ra,0xffffd
    80004b74:	180080e7          	jalr	384(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004b78:	ffffd097          	auipc	ra,0xffffd
    80004b7c:	fec080e7          	jalr	-20(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004b80:	00048593          	mv	a1,s1
    80004b84:	ffffd097          	auipc	ra,0xffffd
    80004b88:	16c080e7          	jalr	364(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004b8c:	00000a13          	li	s4,0
    80004b90:	bedff06f          	j	8000477c <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80004b94:	001a8a93          	addi	s5,s5,1
    80004b98:	000b8913          	mv	s2,s7
    80004b9c:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 6; ++i) {
    80004ba0:	001a0a13          	addi	s4,s4,1
    80004ba4:	00500793          	li	a5,5
    80004ba8:	0347e463          	bltu	a5,s4,80004bd0 <_ZN20KObjectAllocatorTest5test2Em+0x610>
        if (getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004bac:	00048693          	mv	a3,s1
    80004bb0:	00090613          	mv	a2,s2
    80004bb4:	000a8593          	mv	a1,s5
    80004bb8:	00098513          	mv	a0,s3
    80004bbc:	ffffe097          	auipc	ra,0xffffe
    80004bc0:	530080e7          	jalr	1328(ra) # 800030ec <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80004bc4:	f4051ae3          	bnez	a0,80004b18 <_ZN20KObjectAllocatorTest5test2Em+0x558>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80004bc8:	fc091ae3          	bnez	s2,80004b9c <_ZN20KObjectAllocatorTest5test2Em+0x5dc>
    80004bcc:	fc9ff06f          	j	80004b94 <_ZN20KObjectAllocatorTest5test2Em+0x5d4>
    objAlloc->freeObject(objArr[4]);
    80004bd0:	f8043583          	ld	a1,-128(s0)
    80004bd4:	00048513          	mv	a0,s1
    80004bd8:	00001097          	auipc	ra,0x1
    80004bdc:	250080e7          	jalr	592(ra) # 80005e28 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[7]);
    80004be0:	f9843583          	ld	a1,-104(s0)
    80004be4:	00048513          	mv	a0,s1
    80004be8:	00001097          	auipc	ra,0x1
    80004bec:	240080e7          	jalr	576(ra) # 80005e28 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[8]);
    80004bf0:	fa043583          	ld	a1,-96(s0)
    80004bf4:	00048513          	mv	a0,s1
    80004bf8:	00001097          	auipc	ra,0x1
    80004bfc:	230080e7          	jalr	560(ra) # 80005e28 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[4] = objAlloc->allocateNewObject();
    80004c00:	00048513          	mv	a0,s1
    80004c04:	00001097          	auipc	ra,0x1
    80004c08:	4a4080e7          	jalr	1188(ra) # 800060a8 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004c0c:	00050913          	mv	s2,a0
    if (objArr[4] != getObjectAt(1, 7, objAlloc)) { delete objAlloc; return false; }
    80004c10:	00048693          	mv	a3,s1
    80004c14:	00700613          	li	a2,7
    80004c18:	00100593          	li	a1,1
    80004c1c:	00098513          	mv	a0,s3
    80004c20:	ffffe097          	auipc	ra,0xffffe
    80004c24:	658080e7          	jalr	1624(ra) # 80003278 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>
    80004c28:	08a90063          	beq	s2,a0,80004ca8 <_ZN20KObjectAllocatorTest5test2Em+0x6e8>
    80004c2c:	06048a63          	beqz	s1,80004ca0 <_ZN20KObjectAllocatorTest5test2Em+0x6e0>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004c30:	00000913          	li	s2,0
    80004c34:	0280006f          	j	80004c5c <_ZN20KObjectAllocatorTest5test2Em+0x69c>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004c38:	ffffd097          	auipc	ra,0xffffd
    80004c3c:	f2c080e7          	jalr	-212(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004c40:	0284b783          	ld	a5,40(s1)
    80004c44:	00391713          	slli	a4,s2,0x3
    80004c48:	00e787b3          	add	a5,a5,a4
    80004c4c:	0007b583          	ld	a1,0(a5)
    80004c50:	ffffd097          	auipc	ra,0xffffd
    80004c54:	0a0080e7          	jalr	160(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004c58:	00190913          	addi	s2,s2,1
    80004c5c:	0304b783          	ld	a5,48(s1)
    80004c60:	fcf96ce3          	bltu	s2,a5,80004c38 <_ZN20KObjectAllocatorTest5test2Em+0x678>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004c64:	ffffd097          	auipc	ra,0xffffd
    80004c68:	f00080e7          	jalr	-256(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004c6c:	0284b583          	ld	a1,40(s1)
    80004c70:	ffffd097          	auipc	ra,0xffffd
    80004c74:	080080e7          	jalr	128(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004c78:	ffffd097          	auipc	ra,0xffffd
    80004c7c:	eec080e7          	jalr	-276(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004c80:	0204b583          	ld	a1,32(s1)
    80004c84:	ffffd097          	auipc	ra,0xffffd
    80004c88:	06c080e7          	jalr	108(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004c8c:	ffffd097          	auipc	ra,0xffffd
    80004c90:	ed8080e7          	jalr	-296(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004c94:	00048593          	mv	a1,s1
    80004c98:	ffffd097          	auipc	ra,0xffffd
    80004c9c:	058080e7          	jalr	88(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004ca0:	00000a13          	li	s4,0
    80004ca4:	ad9ff06f          	j	8000477c <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    byte = getByteOfObject(objArr[4], objAlloc);
    80004ca8:	00048613          	mv	a2,s1
    80004cac:	00090593          	mv	a1,s2
    80004cb0:	00098513          	mv	a0,s3
    80004cb4:	ffffe097          	auipc	ra,0xffffe
    80004cb8:	4c0080e7          	jalr	1216(ra) # 80003174 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    80004cbc:	00050a13          	mv	s4,a0
    bit = getBitOfObject(objArr[4], objAlloc);
    80004cc0:	00048613          	mv	a2,s1
    80004cc4:	00090593          	mv	a1,s2
    80004cc8:	00098513          	mv	a0,s3
    80004ccc:	ffffe097          	auipc	ra,0xffffe
    80004cd0:	528080e7          	jalr	1320(ra) # 800031f4 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80004cd4:	00050913          	mv	s2,a0
    if (byte != 1 || bit != 7) { delete objAlloc; return false; }
    80004cd8:	00100793          	li	a5,1
    80004cdc:	00fa1663          	bne	s4,a5,80004ce8 <_ZN20KObjectAllocatorTest5test2Em+0x728>
    80004ce0:	00700793          	li	a5,7
    80004ce4:	08f50063          	beq	a0,a5,80004d64 <_ZN20KObjectAllocatorTest5test2Em+0x7a4>
    80004ce8:	06048a63          	beqz	s1,80004d5c <_ZN20KObjectAllocatorTest5test2Em+0x79c>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004cec:	00000913          	li	s2,0
    80004cf0:	0280006f          	j	80004d18 <_ZN20KObjectAllocatorTest5test2Em+0x758>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004cf4:	ffffd097          	auipc	ra,0xffffd
    80004cf8:	e70080e7          	jalr	-400(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004cfc:	0284b783          	ld	a5,40(s1)
    80004d00:	00391713          	slli	a4,s2,0x3
    80004d04:	00e787b3          	add	a5,a5,a4
    80004d08:	0007b583          	ld	a1,0(a5)
    80004d0c:	ffffd097          	auipc	ra,0xffffd
    80004d10:	fe4080e7          	jalr	-28(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004d14:	00190913          	addi	s2,s2,1
    80004d18:	0304b783          	ld	a5,48(s1)
    80004d1c:	fcf96ce3          	bltu	s2,a5,80004cf4 <_ZN20KObjectAllocatorTest5test2Em+0x734>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004d20:	ffffd097          	auipc	ra,0xffffd
    80004d24:	e44080e7          	jalr	-444(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004d28:	0284b583          	ld	a1,40(s1)
    80004d2c:	ffffd097          	auipc	ra,0xffffd
    80004d30:	fc4080e7          	jalr	-60(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004d34:	ffffd097          	auipc	ra,0xffffd
    80004d38:	e30080e7          	jalr	-464(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004d3c:	0204b583          	ld	a1,32(s1)
    80004d40:	ffffd097          	auipc	ra,0xffffd
    80004d44:	fb0080e7          	jalr	-80(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004d48:	ffffd097          	auipc	ra,0xffffd
    80004d4c:	e1c080e7          	jalr	-484(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004d50:	00048593          	mv	a1,s1
    80004d54:	ffffd097          	auipc	ra,0xffffd
    80004d58:	f9c080e7          	jalr	-100(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004d5c:	00000a13          	li	s4,0
    80004d60:	a1dff06f          	j	8000477c <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    bool expectedBitValues[16] = {
    80004d64:	00004797          	auipc	a5,0x4
    80004d68:	7fc78793          	addi	a5,a5,2044 # 80009560 <CONSOLE_STATUS+0x550>
    80004d6c:	0007b703          	ld	a4,0(a5)
    80004d70:	f4e43823          	sd	a4,-176(s0)
    80004d74:	0087b783          	ld	a5,8(a5)
    80004d78:	f4f43c23          	sd	a5,-168(s0)
    for (size_t i = 0; i < 16; ++i) {
    80004d7c:	00000a13          	li	s4,0
    byte = 0; bit = 7;
    80004d80:	00000a93          	li	s5,0
    80004d84:	02c0006f          	j	80004db0 <_ZN20KObjectAllocatorTest5test2Em+0x7f0>
        { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    80004d88:	00048863          	beqz	s1,80004d98 <_ZN20KObjectAllocatorTest5test2Em+0x7d8>
    80004d8c:	00048513          	mv	a0,s1
    80004d90:	00001097          	auipc	ra,0x1
    80004d94:	c50080e7          	jalr	-944(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    80004d98:	00000a13          	li	s4,0
    80004d9c:	9e1ff06f          	j	8000477c <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    80004da0:	001a8a93          	addi	s5,s5,1
    80004da4:	000b8913          	mv	s2,s7
    80004da8:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 16; ++i) {
    80004dac:	001a0a13          	addi	s4,s4,1
    80004db0:	00f00793          	li	a5,15
    80004db4:	0347ea63          	bltu	a5,s4,80004de8 <_ZN20KObjectAllocatorTest5test2Em+0x828>
        if (expectedBitValues[i] != getValueOfBitAt(byte, bit, objAlloc))
    80004db8:	fb040793          	addi	a5,s0,-80
    80004dbc:	014787b3          	add	a5,a5,s4
    80004dc0:	fa07cb03          	lbu	s6,-96(a5)
    80004dc4:	00048693          	mv	a3,s1
    80004dc8:	00090613          	mv	a2,s2
    80004dcc:	000a8593          	mv	a1,s5
    80004dd0:	00098513          	mv	a0,s3
    80004dd4:	ffffe097          	auipc	ra,0xffffe
    80004dd8:	318080e7          	jalr	792(ra) # 800030ec <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80004ddc:	faab16e3          	bne	s6,a0,80004d88 <_ZN20KObjectAllocatorTest5test2Em+0x7c8>
        { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    80004de0:	fc0914e3          	bnez	s2,80004da8 <_ZN20KObjectAllocatorTest5test2Em+0x7e8>
    80004de4:	fbdff06f          	j	80004da0 <_ZN20KObjectAllocatorTest5test2Em+0x7e0>
    delete objAlloc;
    80004de8:	06048e63          	beqz	s1,80004e64 <_ZN20KObjectAllocatorTest5test2Em+0x8a4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004dec:	00000913          	li	s2,0
    80004df0:	0280006f          	j	80004e18 <_ZN20KObjectAllocatorTest5test2Em+0x858>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004df4:	ffffd097          	auipc	ra,0xffffd
    80004df8:	d70080e7          	jalr	-656(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004dfc:	0284b783          	ld	a5,40(s1)
    80004e00:	00391713          	slli	a4,s2,0x3
    80004e04:	00e787b3          	add	a5,a5,a4
    80004e08:	0007b583          	ld	a1,0(a5)
    80004e0c:	ffffd097          	auipc	ra,0xffffd
    80004e10:	ee4080e7          	jalr	-284(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004e14:	00190913          	addi	s2,s2,1
    80004e18:	0304b783          	ld	a5,48(s1)
    80004e1c:	fcf96ce3          	bltu	s2,a5,80004df4 <_ZN20KObjectAllocatorTest5test2Em+0x834>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004e20:	ffffd097          	auipc	ra,0xffffd
    80004e24:	d44080e7          	jalr	-700(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004e28:	0284b583          	ld	a1,40(s1)
    80004e2c:	ffffd097          	auipc	ra,0xffffd
    80004e30:	ec4080e7          	jalr	-316(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004e34:	ffffd097          	auipc	ra,0xffffd
    80004e38:	d30080e7          	jalr	-720(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004e3c:	0204b583          	ld	a1,32(s1)
    80004e40:	ffffd097          	auipc	ra,0xffffd
    80004e44:	eb0080e7          	jalr	-336(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004e48:	ffffd097          	auipc	ra,0xffffd
    80004e4c:	d1c080e7          	jalr	-740(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004e50:	00048593          	mv	a1,s1
    80004e54:	ffffd097          	auipc	ra,0xffffd
    80004e58:	e9c080e7          	jalr	-356(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    return true;
    80004e5c:	00100a13          	li	s4,1
    }
    80004e60:	91dff06f          	j	8000477c <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    80004e64:	00100a13          	li	s4,1
    80004e68:	915ff06f          	j	8000477c <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    80004e6c:	00050913          	mv	s2,a0
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 3);
    80004e70:	00048513          	mv	a0,s1
    80004e74:	00001097          	auipc	ra,0x1
    80004e78:	b6c080e7          	jalr	-1172(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    80004e7c:	00090513          	mv	a0,s2
    80004e80:	00007097          	auipc	ra,0x7
    80004e84:	9d8080e7          	jalr	-1576(ra) # 8000b858 <_Unwind_Resume>

0000000080004e88 <_ZN20KObjectAllocatorTest5test3Em>:

bool KObjectAllocatorTest::test3(size_t size) {
    80004e88:	81010113          	addi	sp,sp,-2032
    80004e8c:	7e113423          	sd	ra,2024(sp)
    80004e90:	7e813023          	sd	s0,2016(sp)
    80004e94:	7c913c23          	sd	s1,2008(sp)
    80004e98:	7d213823          	sd	s2,2000(sp)
    80004e9c:	7d313423          	sd	s3,1992(sp)
    80004ea0:	7d413023          	sd	s4,1984(sp)
    80004ea4:	7b513c23          	sd	s5,1976(sp)
    80004ea8:	7f010413          	addi	s0,sp,2032
    80004eac:	fb010113          	addi	sp,sp,-80
    80004eb0:	00050993          	mv	s3,a0
    80004eb4:	00058913          	mv	s2,a1
        return MemoryAllocator::instance()->kmem_alloc(size);
    80004eb8:	ffffd097          	auipc	ra,0xffffd
    80004ebc:	cac080e7          	jalr	-852(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004ec0:	04000593          	li	a1,64
    80004ec4:	ffffd097          	auipc	ra,0xffffd
    80004ec8:	d84080e7          	jalr	-636(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80004ecc:	00050493          	mv	s1,a0
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    80004ed0:	00500793          	li	a5,5
    80004ed4:	00f53023          	sd	a5,0(a0)
    80004ed8:	00f53423          	sd	a5,8(a0)
    80004edc:	01253c23          	sd	s2,24(a0)
    80004ee0:	00100793          	li	a5,1
    80004ee4:	02f53823          	sd	a5,48(a0)
    80004ee8:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80004eec:	ffffd097          	auipc	ra,0xffffd
    80004ef0:	c78080e7          	jalr	-904(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004ef4:	0304b583          	ld	a1,48(s1)
    80004ef8:	00359593          	slli	a1,a1,0x3
    80004efc:	ffffd097          	auipc	ra,0xffffd
    80004f00:	d4c080e7          	jalr	-692(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80004f04:	02a4b423          	sd	a0,40(s1)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80004f08:	ffffd097          	auipc	ra,0xffffd
    80004f0c:	c5c080e7          	jalr	-932(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004f10:	0304b583          	ld	a1,48(s1)
    80004f14:	00359593          	slli	a1,a1,0x3
    80004f18:	ffffd097          	auipc	ra,0xffffd
    80004f1c:	d30080e7          	jalr	-720(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80004f20:	02a4b023          	sd	a0,32(s1)
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80004f24:	0084b703          	ld	a4,8(s1)
    80004f28:	ff877793          	andi	a5,a4,-8
    80004f2c:	02f70463          	beq	a4,a5,80004f54 <_ZN20KObjectAllocatorTest5test3Em+0xcc>
    80004f30:	00800713          	li	a4,8
    80004f34:	00e787b3          	add	a5,a5,a4
    80004f38:	00f4b423          	sd	a5,8(s1)
    80004f3c:	00f4b023          	sd	a5,0(s1)
        memorySizeForBits = numberOfObjects / 8;
    80004f40:	0037d793          	srli	a5,a5,0x3
    80004f44:	00f4b823          	sd	a5,16(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80004f48:	ffffd097          	auipc	ra,0xffffd
    80004f4c:	c1c080e7          	jalr	-996(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004f50:	00c0006f          	j	80004f5c <_ZN20KObjectAllocatorTest5test3Em+0xd4>
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80004f54:	00000713          	li	a4,0
    80004f58:	fddff06f          	j	80004f34 <_ZN20KObjectAllocatorTest5test3Em+0xac>
                memorySizeForBits + initialNumberOfObjects * objectSize
    80004f5c:	0104b583          	ld	a1,16(s1)
    80004f60:	0004b783          	ld	a5,0(s1)
    80004f64:	02f907b3          	mul	a5,s2,a5
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80004f68:	0284ba03          	ld	s4,40(s1)
    80004f6c:	00f585b3          	add	a1,a1,a5
    80004f70:	ffffd097          	auipc	ra,0xffffd
    80004f74:	cd8080e7          	jalr	-808(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80004f78:	00aa3023          	sd	a0,0(s4)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    80004f7c:	0284b783          	ld	a5,40(s1)
    80004f80:	0007b783          	ld	a5,0(a5)
    80004f84:	0104b683          	ld	a3,16(s1)
    80004f88:	0204b703          	ld	a4,32(s1)
    80004f8c:	00d787b3          	add	a5,a5,a3
    80004f90:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    80004f94:	00000793          	li	a5,0
    80004f98:	0104b703          	ld	a4,16(s1)
    80004f9c:	00e7fe63          	bgeu	a5,a4,80004fb8 <_ZN20KObjectAllocatorTest5test3Em+0x130>
    80004fa0:	0284b703          	ld	a4,40(s1)
    80004fa4:	00073703          	ld	a4,0(a4)
    80004fa8:	00f70733          	add	a4,a4,a5
    80004fac:	00070023          	sb	zero,0(a4)
    80004fb0:	00178793          	addi	a5,a5,1
    80004fb4:	fe5ff06f          	j	80004f98 <_ZN20KObjectAllocatorTest5test3Em+0x110>
    size_t getNumberOfObjects() { return numberOfObjects; }
    80004fb8:	0084b703          	ld	a4,8(s1)
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 5);
    if (objAlloc->getNumberOfObjects() != 8) { delete objAlloc; return false; }
    80004fbc:	00800793          	li	a5,8
    80004fc0:	0af70263          	beq	a4,a5,80005064 <_ZN20KObjectAllocatorTest5test3Em+0x1dc>
    80004fc4:	06048a63          	beqz	s1,80005038 <_ZN20KObjectAllocatorTest5test3Em+0x1b0>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004fc8:	00000913          	li	s2,0
    80004fcc:	0304b783          	ld	a5,48(s1)
    80004fd0:	02f97663          	bgeu	s2,a5,80004ffc <_ZN20KObjectAllocatorTest5test3Em+0x174>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004fd4:	ffffd097          	auipc	ra,0xffffd
    80004fd8:	b90080e7          	jalr	-1136(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80004fdc:	0284b783          	ld	a5,40(s1)
    80004fe0:	00391713          	slli	a4,s2,0x3
    80004fe4:	00e787b3          	add	a5,a5,a4
    80004fe8:	0007b583          	ld	a1,0(a5)
    80004fec:	ffffd097          	auipc	ra,0xffffd
    80004ff0:	d04080e7          	jalr	-764(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004ff4:	00190913          	addi	s2,s2,1
    80004ff8:	fd5ff06f          	j	80004fcc <_ZN20KObjectAllocatorTest5test3Em+0x144>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004ffc:	ffffd097          	auipc	ra,0xffffd
    80005000:	b68080e7          	jalr	-1176(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80005004:	0284b583          	ld	a1,40(s1)
    80005008:	ffffd097          	auipc	ra,0xffffd
    8000500c:	ce8080e7          	jalr	-792(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80005010:	ffffd097          	auipc	ra,0xffffd
    80005014:	b54080e7          	jalr	-1196(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80005018:	0204b583          	ld	a1,32(s1)
    8000501c:	ffffd097          	auipc	ra,0xffffd
    80005020:	cd4080e7          	jalr	-812(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80005024:	ffffd097          	auipc	ra,0xffffd
    80005028:	b40080e7          	jalr	-1216(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    8000502c:	00048593          	mv	a1,s1
    80005030:	ffffd097          	auipc	ra,0xffffd
    80005034:	cc0080e7          	jalr	-832(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    80005038:	00000513          	li	a0,0
        { delete objAlloc; return false; }
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    }
    delete objAlloc;
    return true;
    8000503c:	05010113          	addi	sp,sp,80
    80005040:	7e813083          	ld	ra,2024(sp)
    80005044:	7e013403          	ld	s0,2016(sp)
    80005048:	7d813483          	ld	s1,2008(sp)
    8000504c:	7d013903          	ld	s2,2000(sp)
    80005050:	7c813983          	ld	s3,1992(sp)
    80005054:	7c013a03          	ld	s4,1984(sp)
    80005058:	7b813a83          	ld	s5,1976(sp)
    8000505c:	7f010113          	addi	sp,sp,2032
    80005060:	00008067          	ret
    size_t getMemorySizeForBits() { return memorySizeForBits; }
    80005064:	0104b703          	ld	a4,16(s1)
    if (objAlloc->getMemorySizeForBits() != 1) { delete objAlloc; return false; }
    80005068:	00100793          	li	a5,1
    8000506c:	08f70063          	beq	a4,a5,800050ec <_ZN20KObjectAllocatorTest5test3Em+0x264>
    80005070:	06048a63          	beqz	s1,800050e4 <_ZN20KObjectAllocatorTest5test3Em+0x25c>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005074:	00000913          	li	s2,0
    80005078:	0304b783          	ld	a5,48(s1)
    8000507c:	02f97663          	bgeu	s2,a5,800050a8 <_ZN20KObjectAllocatorTest5test3Em+0x220>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80005080:	ffffd097          	auipc	ra,0xffffd
    80005084:	ae4080e7          	jalr	-1308(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80005088:	0284b783          	ld	a5,40(s1)
    8000508c:	00391713          	slli	a4,s2,0x3
    80005090:	00e787b3          	add	a5,a5,a4
    80005094:	0007b583          	ld	a1,0(a5)
    80005098:	ffffd097          	auipc	ra,0xffffd
    8000509c:	c58080e7          	jalr	-936(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800050a0:	00190913          	addi	s2,s2,1
    800050a4:	fd5ff06f          	j	80005078 <_ZN20KObjectAllocatorTest5test3Em+0x1f0>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800050a8:	ffffd097          	auipc	ra,0xffffd
    800050ac:	abc080e7          	jalr	-1348(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800050b0:	0284b583          	ld	a1,40(s1)
    800050b4:	ffffd097          	auipc	ra,0xffffd
    800050b8:	c3c080e7          	jalr	-964(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800050bc:	ffffd097          	auipc	ra,0xffffd
    800050c0:	aa8080e7          	jalr	-1368(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800050c4:	0204b583          	ld	a1,32(s1)
    800050c8:	ffffd097          	auipc	ra,0xffffd
    800050cc:	c28080e7          	jalr	-984(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800050d0:	ffffd097          	auipc	ra,0xffffd
    800050d4:	a94080e7          	jalr	-1388(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800050d8:	00048593          	mv	a1,s1
    800050dc:	ffffd097          	auipc	ra,0xffffd
    800050e0:	c14080e7          	jalr	-1004(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    800050e4:	00000513          	li	a0,0
    800050e8:	f55ff06f          	j	8000503c <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    size_t getObjectSize() { return objectSize; }
    800050ec:	0184b783          	ld	a5,24(s1)
    if (objAlloc->getObjectSize() != size) { delete objAlloc; return false; }
    800050f0:	08f90063          	beq	s2,a5,80005170 <_ZN20KObjectAllocatorTest5test3Em+0x2e8>
    800050f4:	06048a63          	beqz	s1,80005168 <_ZN20KObjectAllocatorTest5test3Em+0x2e0>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800050f8:	00000913          	li	s2,0
    800050fc:	0304b783          	ld	a5,48(s1)
    80005100:	02f97663          	bgeu	s2,a5,8000512c <_ZN20KObjectAllocatorTest5test3Em+0x2a4>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80005104:	ffffd097          	auipc	ra,0xffffd
    80005108:	a60080e7          	jalr	-1440(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    8000510c:	0284b783          	ld	a5,40(s1)
    80005110:	00391713          	slli	a4,s2,0x3
    80005114:	00e787b3          	add	a5,a5,a4
    80005118:	0007b583          	ld	a1,0(a5)
    8000511c:	ffffd097          	auipc	ra,0xffffd
    80005120:	bd4080e7          	jalr	-1068(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005124:	00190913          	addi	s2,s2,1
    80005128:	fd5ff06f          	j	800050fc <_ZN20KObjectAllocatorTest5test3Em+0x274>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    8000512c:	ffffd097          	auipc	ra,0xffffd
    80005130:	a38080e7          	jalr	-1480(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80005134:	0284b583          	ld	a1,40(s1)
    80005138:	ffffd097          	auipc	ra,0xffffd
    8000513c:	bb8080e7          	jalr	-1096(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80005140:	ffffd097          	auipc	ra,0xffffd
    80005144:	a24080e7          	jalr	-1500(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80005148:	0204b583          	ld	a1,32(s1)
    8000514c:	ffffd097          	auipc	ra,0xffffd
    80005150:	ba4080e7          	jalr	-1116(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80005154:	ffffd097          	auipc	ra,0xffffd
    80005158:	a10080e7          	jalr	-1520(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    8000515c:	00048593          	mv	a1,s1
    80005160:	ffffd097          	auipc	ra,0xffffd
    80005164:	b90080e7          	jalr	-1136(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    80005168:	00000513          	li	a0,0
    8000516c:	ed1ff06f          	j	8000503c <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    void* objArr[256]; for (size_t i = 0; i < 32; objArr[i++] = objAlloc->allocateNewObject());
    80005170:	00000913          	li	s2,0
    80005174:	01f00793          	li	a5,31
    80005178:	0327e663          	bltu	a5,s2,800051a4 <_ZN20KObjectAllocatorTest5test3Em+0x31c>
    8000517c:	00190a13          	addi	s4,s2,1
    80005180:	00048513          	mv	a0,s1
    80005184:	00001097          	auipc	ra,0x1
    80005188:	f24080e7          	jalr	-220(ra) # 800060a8 <_ZN16KObjectAllocator17allocateNewObjectEv>
    8000518c:	00391913          	slli	s2,s2,0x3
    80005190:	fc040793          	addi	a5,s0,-64
    80005194:	01278933          	add	s2,a5,s2
    80005198:	80a93023          	sd	a0,-2048(s2)
    8000519c:	000a0913          	mv	s2,s4
    800051a0:	fd5ff06f          	j	80005174 <_ZN20KObjectAllocatorTest5test3Em+0x2ec>
    if (getByteOfObject(objArr[31], objAlloc) != 3
    800051a4:	8b843903          	ld	s2,-1864(s0)
    800051a8:	00048613          	mv	a2,s1
    800051ac:	00090593          	mv	a1,s2
    800051b0:	00098513          	mv	a0,s3
    800051b4:	ffffe097          	auipc	ra,0xffffe
    800051b8:	fc0080e7          	jalr	-64(ra) # 80003174 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[31], objAlloc) != 0)
    800051bc:	00300793          	li	a5,3
    800051c0:	02f50e63          	beq	a0,a5,800051fc <_ZN20KObjectAllocatorTest5test3Em+0x374>
    { delete objAlloc; return false; }
    800051c4:	0c048863          	beqz	s1,80005294 <_ZN20KObjectAllocatorTest5test3Em+0x40c>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800051c8:	00000913          	li	s2,0
    800051cc:	0304b783          	ld	a5,48(s1)
    800051d0:	08f97463          	bgeu	s2,a5,80005258 <_ZN20KObjectAllocatorTest5test3Em+0x3d0>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800051d4:	ffffd097          	auipc	ra,0xffffd
    800051d8:	990080e7          	jalr	-1648(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800051dc:	0284b783          	ld	a5,40(s1)
    800051e0:	00391713          	slli	a4,s2,0x3
    800051e4:	00e787b3          	add	a5,a5,a4
    800051e8:	0007b583          	ld	a1,0(a5)
    800051ec:	ffffd097          	auipc	ra,0xffffd
    800051f0:	b04080e7          	jalr	-1276(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800051f4:	00190913          	addi	s2,s2,1
    800051f8:	fd5ff06f          	j	800051cc <_ZN20KObjectAllocatorTest5test3Em+0x344>
        || getBitOfObject(objArr[31], objAlloc) != 0)
    800051fc:	00048613          	mv	a2,s1
    80005200:	00090593          	mv	a1,s2
    80005204:	00098513          	mv	a0,s3
    80005208:	ffffe097          	auipc	ra,0xffffe
    8000520c:	fec080e7          	jalr	-20(ra) # 800031f4 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80005210:	00050a93          	mv	s5,a0
    80005214:	fa0518e3          	bnez	a0,800051c4 <_ZN20KObjectAllocatorTest5test3Em+0x33c>
    if (objAlloc->nextNonTakenByte != 4) { delete objAlloc; return false; }
    80005218:	0384b703          	ld	a4,56(s1)
    8000521c:	00400793          	li	a5,4
    80005220:	06f71e63          	bne	a4,a5,8000529c <_ZN20KObjectAllocatorTest5test3Em+0x414>
    for (size_t i = 32; i < 256; objArr[i++] = objAlloc->allocateNewObject());
    80005224:	02000913          	li	s2,32
    80005228:	0ff00793          	li	a5,255
    8000522c:	0f27e463          	bltu	a5,s2,80005314 <_ZN20KObjectAllocatorTest5test3Em+0x48c>
    80005230:	00190a13          	addi	s4,s2,1
    80005234:	00048513          	mv	a0,s1
    80005238:	00001097          	auipc	ra,0x1
    8000523c:	e70080e7          	jalr	-400(ra) # 800060a8 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80005240:	00391913          	slli	s2,s2,0x3
    80005244:	fc040793          	addi	a5,s0,-64
    80005248:	01278933          	add	s2,a5,s2
    8000524c:	80a93023          	sd	a0,-2048(s2)
    80005250:	000a0913          	mv	s2,s4
    80005254:	fd5ff06f          	j	80005228 <_ZN20KObjectAllocatorTest5test3Em+0x3a0>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80005258:	ffffd097          	auipc	ra,0xffffd
    8000525c:	90c080e7          	jalr	-1780(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80005260:	0284b583          	ld	a1,40(s1)
    80005264:	ffffd097          	auipc	ra,0xffffd
    80005268:	a8c080e7          	jalr	-1396(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    8000526c:	ffffd097          	auipc	ra,0xffffd
    80005270:	8f8080e7          	jalr	-1800(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80005274:	0204b583          	ld	a1,32(s1)
    80005278:	ffffd097          	auipc	ra,0xffffd
    8000527c:	a78080e7          	jalr	-1416(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80005280:	ffffd097          	auipc	ra,0xffffd
    80005284:	8e4080e7          	jalr	-1820(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80005288:	00048593          	mv	a1,s1
    8000528c:	ffffd097          	auipc	ra,0xffffd
    80005290:	a64080e7          	jalr	-1436(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    { delete objAlloc; return false; }
    80005294:	00000513          	li	a0,0
    80005298:	da5ff06f          	j	8000503c <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    if (objAlloc->nextNonTakenByte != 4) { delete objAlloc; return false; }
    8000529c:	02049663          	bnez	s1,800052c8 <_ZN20KObjectAllocatorTest5test3Em+0x440>
    800052a0:	06c0006f          	j	8000530c <_ZN20KObjectAllocatorTest5test3Em+0x484>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800052a4:	ffffd097          	auipc	ra,0xffffd
    800052a8:	8c0080e7          	jalr	-1856(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800052ac:	0284b783          	ld	a5,40(s1)
    800052b0:	003a9713          	slli	a4,s5,0x3
    800052b4:	00e787b3          	add	a5,a5,a4
    800052b8:	0007b583          	ld	a1,0(a5)
    800052bc:	ffffd097          	auipc	ra,0xffffd
    800052c0:	a34080e7          	jalr	-1484(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800052c4:	001a8a93          	addi	s5,s5,1
    800052c8:	0304b783          	ld	a5,48(s1)
    800052cc:	fcfaece3          	bltu	s5,a5,800052a4 <_ZN20KObjectAllocatorTest5test3Em+0x41c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800052d0:	ffffd097          	auipc	ra,0xffffd
    800052d4:	894080e7          	jalr	-1900(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800052d8:	0284b583          	ld	a1,40(s1)
    800052dc:	ffffd097          	auipc	ra,0xffffd
    800052e0:	a14080e7          	jalr	-1516(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800052e4:	ffffd097          	auipc	ra,0xffffd
    800052e8:	880080e7          	jalr	-1920(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800052ec:	0204b583          	ld	a1,32(s1)
    800052f0:	ffffd097          	auipc	ra,0xffffd
    800052f4:	a00080e7          	jalr	-1536(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800052f8:	ffffd097          	auipc	ra,0xffffd
    800052fc:	86c080e7          	jalr	-1940(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80005300:	00048593          	mv	a1,s1
    80005304:	ffffd097          	auipc	ra,0xffffd
    80005308:	9ec080e7          	jalr	-1556(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    8000530c:	00000513          	li	a0,0
    80005310:	d2dff06f          	j	8000503c <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    if (objAlloc->nextNonTakenByte != 32) { delete objAlloc; return false; }
    80005314:	0384b703          	ld	a4,56(s1)
    80005318:	02000793          	li	a5,32
    8000531c:	06f70e63          	beq	a4,a5,80005398 <_ZN20KObjectAllocatorTest5test3Em+0x510>
    80005320:	06048863          	beqz	s1,80005390 <_ZN20KObjectAllocatorTest5test3Em+0x508>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005324:	0304b783          	ld	a5,48(s1)
    80005328:	02faf663          	bgeu	s5,a5,80005354 <_ZN20KObjectAllocatorTest5test3Em+0x4cc>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    8000532c:	ffffd097          	auipc	ra,0xffffd
    80005330:	838080e7          	jalr	-1992(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80005334:	0284b783          	ld	a5,40(s1)
    80005338:	003a9713          	slli	a4,s5,0x3
    8000533c:	00e787b3          	add	a5,a5,a4
    80005340:	0007b583          	ld	a1,0(a5)
    80005344:	ffffd097          	auipc	ra,0xffffd
    80005348:	9ac080e7          	jalr	-1620(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000534c:	001a8a93          	addi	s5,s5,1
    80005350:	fd5ff06f          	j	80005324 <_ZN20KObjectAllocatorTest5test3Em+0x49c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80005354:	ffffd097          	auipc	ra,0xffffd
    80005358:	810080e7          	jalr	-2032(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    8000535c:	0284b583          	ld	a1,40(s1)
    80005360:	ffffd097          	auipc	ra,0xffffd
    80005364:	990080e7          	jalr	-1648(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80005368:	ffffc097          	auipc	ra,0xffffc
    8000536c:	7fc080e7          	jalr	2044(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80005370:	0204b583          	ld	a1,32(s1)
    80005374:	ffffd097          	auipc	ra,0xffffd
    80005378:	97c080e7          	jalr	-1668(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    8000537c:	ffffc097          	auipc	ra,0xffffc
    80005380:	7e8080e7          	jalr	2024(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80005384:	00048593          	mv	a1,s1
    80005388:	ffffd097          	auipc	ra,0xffffd
    8000538c:	968080e7          	jalr	-1688(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    80005390:	00000513          	li	a0,0
    80005394:	ca9ff06f          	j	8000503c <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    objAlloc->freeObject(objArr[7 * 8]);
    80005398:	98043583          	ld	a1,-1664(s0)
    8000539c:	00048513          	mv	a0,s1
    800053a0:	00001097          	auipc	ra,0x1
    800053a4:	a88080e7          	jalr	-1400(ra) # 80005e28 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[7 * 8] = objAlloc->allocateNewObject();
    800053a8:	00048513          	mv	a0,s1
    800053ac:	00001097          	auipc	ra,0x1
    800053b0:	cfc080e7          	jalr	-772(ra) # 800060a8 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800053b4:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[7 * 8], objAlloc) != 7
    800053b8:	00048613          	mv	a2,s1
    800053bc:	00050593          	mv	a1,a0
    800053c0:	00098513          	mv	a0,s3
    800053c4:	ffffe097          	auipc	ra,0xffffe
    800053c8:	db0080e7          	jalr	-592(ra) # 80003174 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[7 * 8], objAlloc) != 7)
    800053cc:	00700793          	li	a5,7
    800053d0:	02f50c63          	beq	a0,a5,80005408 <_ZN20KObjectAllocatorTest5test3Em+0x580>
    { delete objAlloc; return false; }
    800053d4:	0a048663          	beqz	s1,80005480 <_ZN20KObjectAllocatorTest5test3Em+0x5f8>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800053d8:	0304b783          	ld	a5,48(s1)
    800053dc:	06faf463          	bgeu	s5,a5,80005444 <_ZN20KObjectAllocatorTest5test3Em+0x5bc>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800053e0:	ffffc097          	auipc	ra,0xffffc
    800053e4:	784080e7          	jalr	1924(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    800053e8:	0284b783          	ld	a5,40(s1)
    800053ec:	003a9713          	slli	a4,s5,0x3
    800053f0:	00e787b3          	add	a5,a5,a4
    800053f4:	0007b583          	ld	a1,0(a5)
    800053f8:	ffffd097          	auipc	ra,0xffffd
    800053fc:	8f8080e7          	jalr	-1800(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005400:	001a8a93          	addi	s5,s5,1
    80005404:	fd5ff06f          	j	800053d8 <_ZN20KObjectAllocatorTest5test3Em+0x550>
        || getBitOfObject(objArr[7 * 8], objAlloc) != 7)
    80005408:	00048613          	mv	a2,s1
    8000540c:	00090593          	mv	a1,s2
    80005410:	00098513          	mv	a0,s3
    80005414:	ffffe097          	auipc	ra,0xffffe
    80005418:	de0080e7          	jalr	-544(ra) # 800031f4 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    8000541c:	00700793          	li	a5,7
    80005420:	faf51ae3          	bne	a0,a5,800053d4 <_ZN20KObjectAllocatorTest5test3Em+0x54c>
    if (objAlloc->nextNonTakenByte != 7) { delete objAlloc; return false; }
    80005424:	0384b703          	ld	a4,56(s1)
    80005428:	06f70063          	beq	a4,a5,80005488 <_ZN20KObjectAllocatorTest5test3Em+0x600>
    8000542c:	00048863          	beqz	s1,8000543c <_ZN20KObjectAllocatorTest5test3Em+0x5b4>
    80005430:	00048513          	mv	a0,s1
    80005434:	00000097          	auipc	ra,0x0
    80005438:	5ac080e7          	jalr	1452(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    8000543c:	00000513          	li	a0,0
    80005440:	bfdff06f          	j	8000503c <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80005444:	ffffc097          	auipc	ra,0xffffc
    80005448:	720080e7          	jalr	1824(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    8000544c:	0284b583          	ld	a1,40(s1)
    80005450:	ffffd097          	auipc	ra,0xffffd
    80005454:	8a0080e7          	jalr	-1888(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80005458:	ffffc097          	auipc	ra,0xffffc
    8000545c:	70c080e7          	jalr	1804(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80005460:	0204b583          	ld	a1,32(s1)
    80005464:	ffffd097          	auipc	ra,0xffffd
    80005468:	88c080e7          	jalr	-1908(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    8000546c:	ffffc097          	auipc	ra,0xffffc
    80005470:	6f8080e7          	jalr	1784(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80005474:	00048593          	mv	a1,s1
    80005478:	ffffd097          	auipc	ra,0xffffd
    8000547c:	878080e7          	jalr	-1928(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    { delete objAlloc; return false; }
    80005480:	00000513          	li	a0,0
    80005484:	bb9ff06f          	j	8000503c <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    objAlloc->freeObject(objArr[6 * 8 + 3]);
    80005488:	95843583          	ld	a1,-1704(s0)
    8000548c:	00048513          	mv	a0,s1
    80005490:	00001097          	auipc	ra,0x1
    80005494:	998080e7          	jalr	-1640(ra) # 80005e28 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[7 * 8 + 4]);
    80005498:	9a043583          	ld	a1,-1632(s0)
    8000549c:	00048513          	mv	a0,s1
    800054a0:	00001097          	auipc	ra,0x1
    800054a4:	988080e7          	jalr	-1656(ra) # 80005e28 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[31 * 8 + 5]);
    800054a8:	fa843583          	ld	a1,-88(s0)
    800054ac:	00048513          	mv	a0,s1
    800054b0:	00001097          	auipc	ra,0x1
    800054b4:	978080e7          	jalr	-1672(ra) # 80005e28 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[7 * 8 + 4] = objAlloc->allocateNewObject();
    800054b8:	00048513          	mv	a0,s1
    800054bc:	00001097          	auipc	ra,0x1
    800054c0:	bec080e7          	jalr	-1044(ra) # 800060a8 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800054c4:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[7 * 8 + 4], objAlloc) != 7
    800054c8:	00048613          	mv	a2,s1
    800054cc:	00050593          	mv	a1,a0
    800054d0:	00098513          	mv	a0,s3
    800054d4:	ffffe097          	auipc	ra,0xffffe
    800054d8:	ca0080e7          	jalr	-864(ra) # 80003174 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[7 * 8 + 4], objAlloc) != 3)
    800054dc:	00700793          	li	a5,7
    800054e0:	00f50e63          	beq	a0,a5,800054fc <_ZN20KObjectAllocatorTest5test3Em+0x674>
    { delete objAlloc; return false; }
    800054e4:	00048863          	beqz	s1,800054f4 <_ZN20KObjectAllocatorTest5test3Em+0x66c>
    800054e8:	00048513          	mv	a0,s1
    800054ec:	00000097          	auipc	ra,0x0
    800054f0:	4f4080e7          	jalr	1268(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    800054f4:	00000513          	li	a0,0
    800054f8:	b45ff06f          	j	8000503c <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        || getBitOfObject(objArr[7 * 8 + 4], objAlloc) != 3)
    800054fc:	00048613          	mv	a2,s1
    80005500:	00090593          	mv	a1,s2
    80005504:	00098513          	mv	a0,s3
    80005508:	ffffe097          	auipc	ra,0xffffe
    8000550c:	cec080e7          	jalr	-788(ra) # 800031f4 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80005510:	00300793          	li	a5,3
    80005514:	fcf518e3          	bne	a0,a5,800054e4 <_ZN20KObjectAllocatorTest5test3Em+0x65c>
    if (objAlloc->nextNonTakenByte != 7) { delete objAlloc; return false; }
    80005518:	0384b703          	ld	a4,56(s1)
    8000551c:	00700793          	li	a5,7
    80005520:	00f70e63          	beq	a4,a5,8000553c <_ZN20KObjectAllocatorTest5test3Em+0x6b4>
    80005524:	00048863          	beqz	s1,80005534 <_ZN20KObjectAllocatorTest5test3Em+0x6ac>
    80005528:	00048513          	mv	a0,s1
    8000552c:	00000097          	auipc	ra,0x0
    80005530:	4b4080e7          	jalr	1204(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    80005534:	00000513          	li	a0,0
    80005538:	b05ff06f          	j	8000503c <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    objAlloc->freeObject(objArr[3 * 8 + 5]);
    8000553c:	8a843583          	ld	a1,-1880(s0)
    80005540:	00048513          	mv	a0,s1
    80005544:	00001097          	auipc	ra,0x1
    80005548:	8e4080e7          	jalr	-1820(ra) # 80005e28 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[31 * 8 + 5] = objAlloc->allocateNewObject();
    8000554c:	00048513          	mv	a0,s1
    80005550:	00001097          	auipc	ra,0x1
    80005554:	b58080e7          	jalr	-1192(ra) # 800060a8 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80005558:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[31 * 8 + 5], objAlloc) != 31
    8000555c:	00048613          	mv	a2,s1
    80005560:	00050593          	mv	a1,a0
    80005564:	00098513          	mv	a0,s3
    80005568:	ffffe097          	auipc	ra,0xffffe
    8000556c:	c0c080e7          	jalr	-1012(ra) # 80003174 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[31 * 8 + 5], objAlloc) != 2)
    80005570:	01f00793          	li	a5,31
    80005574:	00f50e63          	beq	a0,a5,80005590 <_ZN20KObjectAllocatorTest5test3Em+0x708>
    { delete objAlloc; return false; }
    80005578:	00048863          	beqz	s1,80005588 <_ZN20KObjectAllocatorTest5test3Em+0x700>
    8000557c:	00048513          	mv	a0,s1
    80005580:	00000097          	auipc	ra,0x0
    80005584:	460080e7          	jalr	1120(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    80005588:	00000513          	li	a0,0
    8000558c:	ab1ff06f          	j	8000503c <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        || getBitOfObject(objArr[31 * 8 + 5], objAlloc) != 2)
    80005590:	00048613          	mv	a2,s1
    80005594:	00090593          	mv	a1,s2
    80005598:	00098513          	mv	a0,s3
    8000559c:	ffffe097          	auipc	ra,0xffffe
    800055a0:	c58080e7          	jalr	-936(ra) # 800031f4 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800055a4:	00200793          	li	a5,2
    800055a8:	fcf518e3          	bne	a0,a5,80005578 <_ZN20KObjectAllocatorTest5test3Em+0x6f0>
    if (objAlloc->nextNonTakenByte != 31) { delete objAlloc; return false; }
    800055ac:	0384b703          	ld	a4,56(s1)
    800055b0:	01f00793          	li	a5,31
    800055b4:	00f70e63          	beq	a4,a5,800055d0 <_ZN20KObjectAllocatorTest5test3Em+0x748>
    800055b8:	00048863          	beqz	s1,800055c8 <_ZN20KObjectAllocatorTest5test3Em+0x740>
    800055bc:	00048513          	mv	a0,s1
    800055c0:	00000097          	auipc	ra,0x0
    800055c4:	420080e7          	jalr	1056(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    800055c8:	00000513          	li	a0,0
    800055cc:	a71ff06f          	j	8000503c <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    objArr[3 * 8 + 5] = objAlloc->allocateNewObject();
    800055d0:	00048513          	mv	a0,s1
    800055d4:	00001097          	auipc	ra,0x1
    800055d8:	ad4080e7          	jalr	-1324(ra) # 800060a8 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800055dc:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[3 * 8 + 5], objAlloc) != 3 || getBitOfObject(objArr[3 * 8 + 5], objAlloc) != 2)
    800055e0:	00048613          	mv	a2,s1
    800055e4:	00050593          	mv	a1,a0
    800055e8:	00098513          	mv	a0,s3
    800055ec:	ffffe097          	auipc	ra,0xffffe
    800055f0:	b88080e7          	jalr	-1144(ra) # 80003174 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    800055f4:	00300793          	li	a5,3
    800055f8:	02f50463          	beq	a0,a5,80005620 <_ZN20KObjectAllocatorTest5test3Em+0x798>
        if (objAlloc->nextNonTakenByte != 3) { delete objAlloc; return false; }
    800055fc:	0384b703          	ld	a4,56(s1)
    80005600:	00300793          	li	a5,3
    80005604:	02f70c63          	beq	a4,a5,8000563c <_ZN20KObjectAllocatorTest5test3Em+0x7b4>
    80005608:	00048863          	beqz	s1,80005618 <_ZN20KObjectAllocatorTest5test3Em+0x790>
    8000560c:	00048513          	mv	a0,s1
    80005610:	00000097          	auipc	ra,0x0
    80005614:	3d0080e7          	jalr	976(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    80005618:	00000513          	li	a0,0
    8000561c:	a21ff06f          	j	8000503c <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    if (getByteOfObject(objArr[3 * 8 + 5], objAlloc) != 3 || getBitOfObject(objArr[3 * 8 + 5], objAlloc) != 2)
    80005620:	00048613          	mv	a2,s1
    80005624:	00090593          	mv	a1,s2
    80005628:	00098513          	mv	a0,s3
    8000562c:	ffffe097          	auipc	ra,0xffffe
    80005630:	bc8080e7          	jalr	-1080(ra) # 800031f4 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80005634:	00200793          	li	a5,2
    80005638:	fcf512e3          	bne	a0,a5,800055fc <_ZN20KObjectAllocatorTest5test3Em+0x774>
    objArr[6 * 8 + 3] = objAlloc->allocateNewObject();
    8000563c:	00048513          	mv	a0,s1
    80005640:	00001097          	auipc	ra,0x1
    80005644:	a68080e7          	jalr	-1432(ra) # 800060a8 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80005648:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[6 * 8 + 3], objAlloc) != 6
    8000564c:	00048613          	mv	a2,s1
    80005650:	00050593          	mv	a1,a0
    80005654:	00098513          	mv	a0,s3
    80005658:	ffffe097          	auipc	ra,0xffffe
    8000565c:	b1c080e7          	jalr	-1252(ra) # 80003174 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[6 * 8 + 3], objAlloc) != 4)
    80005660:	00600793          	li	a5,6
    80005664:	00f50e63          	beq	a0,a5,80005680 <_ZN20KObjectAllocatorTest5test3Em+0x7f8>
    { delete objAlloc; return false; }
    80005668:	00048863          	beqz	s1,80005678 <_ZN20KObjectAllocatorTest5test3Em+0x7f0>
    8000566c:	00048513          	mv	a0,s1
    80005670:	00000097          	auipc	ra,0x0
    80005674:	370080e7          	jalr	880(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    80005678:	00000513          	li	a0,0
    8000567c:	9c1ff06f          	j	8000503c <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        || getBitOfObject(objArr[6 * 8 + 3], objAlloc) != 4)
    80005680:	00048613          	mv	a2,s1
    80005684:	00090593          	mv	a1,s2
    80005688:	00098513          	mv	a0,s3
    8000568c:	ffffe097          	auipc	ra,0xffffe
    80005690:	b68080e7          	jalr	-1176(ra) # 800031f4 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80005694:	00400793          	li	a5,4
    80005698:	fcf518e3          	bne	a0,a5,80005668 <_ZN20KObjectAllocatorTest5test3Em+0x7e0>
    if (objAlloc->nextNonTakenByte != 6) { delete objAlloc; return false; }
    8000569c:	0384b703          	ld	a4,56(s1)
    800056a0:	00600793          	li	a5,6
    800056a4:	0ef71863          	bne	a4,a5,80005794 <_ZN20KObjectAllocatorTest5test3Em+0x90c>
    for (int i = 0; i < 3; ++i) {
    800056a8:	00000a13          	li	s4,0
    800056ac:	00200793          	li	a5,2
    800056b0:	1547ce63          	blt	a5,s4,8000580c <_ZN20KObjectAllocatorTest5test3Em+0x984>
        objAlloc->freeObject(objArr[255]);
    800056b4:	fb843583          	ld	a1,-72(s0)
    800056b8:	00048513          	mv	a0,s1
    800056bc:	00000097          	auipc	ra,0x0
    800056c0:	76c080e7          	jalr	1900(ra) # 80005e28 <_ZN16KObjectAllocator10freeObjectEPv>
        objArr[255] = objAlloc->allocateNewObject();
    800056c4:	00048513          	mv	a0,s1
    800056c8:	00001097          	auipc	ra,0x1
    800056cc:	9e0080e7          	jalr	-1568(ra) # 800060a8 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800056d0:	00050913          	mv	s2,a0
    800056d4:	faa43c23          	sd	a0,-72(s0)
        if (getByteOfObject(objArr[255], objAlloc) != 31
    800056d8:	00048613          	mv	a2,s1
    800056dc:	00050593          	mv	a1,a0
    800056e0:	00098513          	mv	a0,s3
    800056e4:	ffffe097          	auipc	ra,0xffffe
    800056e8:	a90080e7          	jalr	-1392(ra) # 80003174 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
            || getBitOfObject(objArr[255], objAlloc) != 0)
    800056ec:	01f00793          	li	a5,31
    800056f0:	0af51e63          	bne	a0,a5,800057ac <_ZN20KObjectAllocatorTest5test3Em+0x924>
    800056f4:	00048613          	mv	a2,s1
    800056f8:	00090593          	mv	a1,s2
    800056fc:	00098513          	mv	a0,s3
    80005700:	ffffe097          	auipc	ra,0xffffe
    80005704:	af4080e7          	jalr	-1292(ra) # 800031f4 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80005708:	0a051263          	bnez	a0,800057ac <_ZN20KObjectAllocatorTest5test3Em+0x924>
        if (objAlloc->nextNonTakenByte != 32) { delete objAlloc; return false; }
    8000570c:	0384b703          	ld	a4,56(s1)
    80005710:	02000793          	li	a5,32
    80005714:	0af71863          	bne	a4,a5,800057c4 <_ZN20KObjectAllocatorTest5test3Em+0x93c>
        objAlloc->freeObject(objArr[1]);
    80005718:	fffffab7          	lui	s5,0xfffff
    8000571c:	7c8a8793          	addi	a5,s5,1992 # fffffffffffff7c8 <end+0xffffffff7fff3dc8>
    80005720:	008787b3          	add	a5,a5,s0
    80005724:	0007b583          	ld	a1,0(a5)
    80005728:	00048513          	mv	a0,s1
    8000572c:	00000097          	auipc	ra,0x0
    80005730:	6fc080e7          	jalr	1788(ra) # 80005e28 <_ZN16KObjectAllocator10freeObjectEPv>
        objArr[1] = objAlloc->allocateNewObject();
    80005734:	00048513          	mv	a0,s1
    80005738:	00001097          	auipc	ra,0x1
    8000573c:	970080e7          	jalr	-1680(ra) # 800060a8 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80005740:	00050913          	mv	s2,a0
    80005744:	7c8a8793          	addi	a5,s5,1992
    80005748:	008787b3          	add	a5,a5,s0
    8000574c:	00a7b023          	sd	a0,0(a5)
        if (getByteOfObject(objArr[1], objAlloc) != 0
    80005750:	00048613          	mv	a2,s1
    80005754:	00050593          	mv	a1,a0
    80005758:	00098513          	mv	a0,s3
    8000575c:	ffffe097          	auipc	ra,0xffffe
    80005760:	a18080e7          	jalr	-1512(ra) # 80003174 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
            || getBitOfObject(objArr[1], objAlloc) != 6)
    80005764:	06051c63          	bnez	a0,800057dc <_ZN20KObjectAllocatorTest5test3Em+0x954>
    80005768:	00048613          	mv	a2,s1
    8000576c:	00090593          	mv	a1,s2
    80005770:	00098513          	mv	a0,s3
    80005774:	ffffe097          	auipc	ra,0xffffe
    80005778:	a80080e7          	jalr	-1408(ra) # 800031f4 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    8000577c:	00600793          	li	a5,6
    80005780:	04f51e63          	bne	a0,a5,800057dc <_ZN20KObjectAllocatorTest5test3Em+0x954>
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    80005784:	0384b783          	ld	a5,56(s1)
    80005788:	06079663          	bnez	a5,800057f4 <_ZN20KObjectAllocatorTest5test3Em+0x96c>
    for (int i = 0; i < 3; ++i) {
    8000578c:	001a0a1b          	addiw	s4,s4,1
    80005790:	f1dff06f          	j	800056ac <_ZN20KObjectAllocatorTest5test3Em+0x824>
    if (objAlloc->nextNonTakenByte != 6) { delete objAlloc; return false; }
    80005794:	00048863          	beqz	s1,800057a4 <_ZN20KObjectAllocatorTest5test3Em+0x91c>
    80005798:	00048513          	mv	a0,s1
    8000579c:	00000097          	auipc	ra,0x0
    800057a0:	244080e7          	jalr	580(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    800057a4:	00000513          	li	a0,0
    800057a8:	895ff06f          	j	8000503c <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        { delete objAlloc; return false; }
    800057ac:	00048863          	beqz	s1,800057bc <_ZN20KObjectAllocatorTest5test3Em+0x934>
    800057b0:	00048513          	mv	a0,s1
    800057b4:	00000097          	auipc	ra,0x0
    800057b8:	22c080e7          	jalr	556(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    800057bc:	00000513          	li	a0,0
    800057c0:	87dff06f          	j	8000503c <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        if (objAlloc->nextNonTakenByte != 32) { delete objAlloc; return false; }
    800057c4:	00048863          	beqz	s1,800057d4 <_ZN20KObjectAllocatorTest5test3Em+0x94c>
    800057c8:	00048513          	mv	a0,s1
    800057cc:	00000097          	auipc	ra,0x0
    800057d0:	214080e7          	jalr	532(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    800057d4:	00000513          	li	a0,0
    800057d8:	865ff06f          	j	8000503c <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        { delete objAlloc; return false; }
    800057dc:	00048863          	beqz	s1,800057ec <_ZN20KObjectAllocatorTest5test3Em+0x964>
    800057e0:	00048513          	mv	a0,s1
    800057e4:	00000097          	auipc	ra,0x0
    800057e8:	1fc080e7          	jalr	508(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    800057ec:	00000513          	li	a0,0
    800057f0:	84dff06f          	j	8000503c <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    800057f4:	00048863          	beqz	s1,80005804 <_ZN20KObjectAllocatorTest5test3Em+0x97c>
    800057f8:	00048513          	mv	a0,s1
    800057fc:	00000097          	auipc	ra,0x0
    80005800:	1e4080e7          	jalr	484(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    80005804:	00000513          	li	a0,0
    80005808:	835ff06f          	j	8000503c <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    delete objAlloc;
    8000580c:	00048c63          	beqz	s1,80005824 <_ZN20KObjectAllocatorTest5test3Em+0x99c>
    80005810:	00048513          	mv	a0,s1
    80005814:	00000097          	auipc	ra,0x0
    80005818:	1cc080e7          	jalr	460(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    return true;
    8000581c:	00100513          	li	a0,1
    80005820:	81dff06f          	j	8000503c <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    80005824:	00100513          	li	a0,1
    80005828:	815ff06f          	j	8000503c <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    8000582c:	00050913          	mv	s2,a0
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 5);
    80005830:	00048513          	mv	a0,s1
    80005834:	00000097          	auipc	ra,0x0
    80005838:	1ac080e7          	jalr	428(ra) # 800059e0 <_ZN16KObjectAllocatordlEPv>
    8000583c:	00090513          	mv	a0,s2
    80005840:	00006097          	auipc	ra,0x6
    80005844:	018080e7          	jalr	24(ra) # 8000b858 <_Unwind_Resume>

0000000080005848 <_ZN20KObjectAllocatorTest4testEmm>:
bool KObjectAllocatorTest::test(size_t i, size_t size) {
    80005848:	ff010113          	addi	sp,sp,-16
    8000584c:	00113423          	sd	ra,8(sp)
    80005850:	00813023          	sd	s0,0(sp)
    80005854:	01010413          	addi	s0,sp,16
    80005858:	00058793          	mv	a5,a1
    8000585c:	00060593          	mv	a1,a2
    switch (i) {
    80005860:	00200713          	li	a4,2
    80005864:	04e78e63          	beq	a5,a4,800058c0 <_ZN20KObjectAllocatorTest4testEmm+0x78>
    80005868:	02f76263          	bltu	a4,a5,8000588c <_ZN20KObjectAllocatorTest4testEmm+0x44>
    8000586c:	04078463          	beqz	a5,800058b4 <_ZN20KObjectAllocatorTest4testEmm+0x6c>
    80005870:	00100713          	li	a4,1
    80005874:	00e79863          	bne	a5,a4,80005884 <_ZN20KObjectAllocatorTest4testEmm+0x3c>
        case 1: return test1(size); break;
    80005878:	ffffe097          	auipc	ra,0xffffe
    8000587c:	350080e7          	jalr	848(ra) # 80003bc8 <_ZN20KObjectAllocatorTest5test1Em>
    80005880:	0240006f          	j	800058a4 <_ZN20KObjectAllocatorTest4testEmm+0x5c>
    switch (i) {
    80005884:	00000513          	li	a0,0
    80005888:	01c0006f          	j	800058a4 <_ZN20KObjectAllocatorTest4testEmm+0x5c>
    8000588c:	00300713          	li	a4,3
    80005890:	00e79863          	bne	a5,a4,800058a0 <_ZN20KObjectAllocatorTest4testEmm+0x58>
        case 3: return test3(size); break;
    80005894:	fffff097          	auipc	ra,0xfffff
    80005898:	5f4080e7          	jalr	1524(ra) # 80004e88 <_ZN20KObjectAllocatorTest5test3Em>
    8000589c:	0080006f          	j	800058a4 <_ZN20KObjectAllocatorTest4testEmm+0x5c>
    switch (i) {
    800058a0:	00000513          	li	a0,0
}
    800058a4:	00813083          	ld	ra,8(sp)
    800058a8:	00013403          	ld	s0,0(sp)
    800058ac:	01010113          	addi	sp,sp,16
    800058b0:	00008067          	ret
        case 0: return test0(size); break;
    800058b4:	ffffe097          	auipc	ra,0xffffe
    800058b8:	a54080e7          	jalr	-1452(ra) # 80003308 <_ZN20KObjectAllocatorTest5test0Em>
    800058bc:	fe9ff06f          	j	800058a4 <_ZN20KObjectAllocatorTest4testEmm+0x5c>
        case 2: return test2(size); break;
    800058c0:	fffff097          	auipc	ra,0xfffff
    800058c4:	d00080e7          	jalr	-768(ra) # 800045c0 <_ZN20KObjectAllocatorTest5test2Em>
    800058c8:	fddff06f          	j	800058a4 <_ZN20KObjectAllocatorTest4testEmm+0x5c>

00000000800058cc <_ZN20KObjectAllocatorTest8runTestsEv>:
bool KObjectAllocatorTest::runTests() {
    800058cc:	fb010113          	addi	sp,sp,-80
    800058d0:	04113423          	sd	ra,72(sp)
    800058d4:	04813023          	sd	s0,64(sp)
    800058d8:	02913c23          	sd	s1,56(sp)
    800058dc:	03213823          	sd	s2,48(sp)
    800058e0:	03313423          	sd	s3,40(sp)
    800058e4:	03413023          	sd	s4,32(sp)
    800058e8:	01513c23          	sd	s5,24(sp)
    800058ec:	01613823          	sd	s6,16(sp)
    800058f0:	01713423          	sd	s7,8(sp)
    800058f4:	05010413          	addi	s0,sp,80
    800058f8:	00050a13          	mv	s4,a0
    for (size_t size : sizes)
    800058fc:	00850b13          	addi	s6,a0,8
    80005900:	04050b93          	addi	s7,a0,64
    size_t testCnt = 0;
    80005904:	00000993          	li	s3,0
    for (size_t size : sizes)
    80005908:	0d7b0863          	beq	s6,s7,800059d8 <_ZN20KObjectAllocatorTest8runTestsEv+0x10c>
    8000590c:	000b3a83          	ld	s5,0(s6)
    for (size_t i = 0; i < numberOfTests; ++i) {
    80005910:	00000493          	li	s1,0
    80005914:	0740006f          	j	80005988 <_ZN20KObjectAllocatorTest8runTestsEv+0xbc>
            printString("Failed KObjectAllocator test ");
    80005918:	00004517          	auipc	a0,0x4
    8000591c:	c2850513          	addi	a0,a0,-984 # 80009540 <CONSOLE_STATUS+0x530>
    80005920:	00001097          	auipc	ra,0x1
    80005924:	adc080e7          	jalr	-1316(ra) # 800063fc <_Z11printStringPKc>
            printInteger(i); printString("\n"); return false;
    80005928:	00048513          	mv	a0,s1
    8000592c:	00001097          	auipc	ra,0x1
    80005930:	b40080e7          	jalr	-1216(ra) # 8000646c <_Z12printIntegerm>
    80005934:	00003517          	auipc	a0,0x3
    80005938:	7dc50513          	addi	a0,a0,2012 # 80009110 <CONSOLE_STATUS+0x100>
    8000593c:	00001097          	auipc	ra,0x1
    80005940:	ac0080e7          	jalr	-1344(ra) # 800063fc <_Z11printStringPKc>
}
    80005944:	00090513          	mv	a0,s2
    80005948:	04813083          	ld	ra,72(sp)
    8000594c:	04013403          	ld	s0,64(sp)
    80005950:	03813483          	ld	s1,56(sp)
    80005954:	03013903          	ld	s2,48(sp)
    80005958:	02813983          	ld	s3,40(sp)
    8000595c:	02013a03          	ld	s4,32(sp)
    80005960:	01813a83          	ld	s5,24(sp)
    80005964:	01013b03          	ld	s6,16(sp)
    80005968:	00813b83          	ld	s7,8(sp)
    8000596c:	05010113          	addi	sp,sp,80
    80005970:	00008067          	ret
        if (testCnt % 10 == 0) printString("\n");
    80005974:	00003517          	auipc	a0,0x3
    80005978:	79c50513          	addi	a0,a0,1948 # 80009110 <CONSOLE_STATUS+0x100>
    8000597c:	00001097          	auipc	ra,0x1
    80005980:	a80080e7          	jalr	-1408(ra) # 800063fc <_Z11printStringPKc>
    for (size_t i = 0; i < numberOfTests; ++i) {
    80005984:	00148493          	addi	s1,s1,1
    80005988:	000a3783          	ld	a5,0(s4)
    8000598c:	04f4f263          	bgeu	s1,a5,800059d0 <_ZN20KObjectAllocatorTest8runTestsEv+0x104>
        if (!test(i, size)) {
    80005990:	000a8613          	mv	a2,s5
    80005994:	00048593          	mv	a1,s1
    80005998:	000a0513          	mv	a0,s4
    8000599c:	00000097          	auipc	ra,0x0
    800059a0:	eac080e7          	jalr	-340(ra) # 80005848 <_ZN20KObjectAllocatorTest4testEmm>
    800059a4:	00050913          	mv	s2,a0
    800059a8:	f60508e3          	beqz	a0,80005918 <_ZN20KObjectAllocatorTest8runTestsEv+0x4c>
        } else printString("Passed ");
    800059ac:	00004517          	auipc	a0,0x4
    800059b0:	abc50513          	addi	a0,a0,-1348 # 80009468 <CONSOLE_STATUS+0x458>
    800059b4:	00001097          	auipc	ra,0x1
    800059b8:	a48080e7          	jalr	-1464(ra) # 800063fc <_Z11printStringPKc>
        ++testCnt;
    800059bc:	00198993          	addi	s3,s3,1
        if (testCnt % 10 == 0) printString("\n");
    800059c0:	00a00793          	li	a5,10
    800059c4:	02f9f7b3          	remu	a5,s3,a5
    800059c8:	fa079ee3          	bnez	a5,80005984 <_ZN20KObjectAllocatorTest8runTestsEv+0xb8>
    800059cc:	fa9ff06f          	j	80005974 <_ZN20KObjectAllocatorTest8runTestsEv+0xa8>
    for (size_t size : sizes)
    800059d0:	008b0b13          	addi	s6,s6,8
    800059d4:	f35ff06f          	j	80005908 <_ZN20KObjectAllocatorTest8runTestsEv+0x3c>
    return true;
    800059d8:	00100913          	li	s2,1
    800059dc:	f69ff06f          	j	80005944 <_ZN20KObjectAllocatorTest8runTestsEv+0x78>

00000000800059e0 <_ZN16KObjectAllocatordlEPv>:
    void operator delete(void* p) {
    800059e0:	fe010113          	addi	sp,sp,-32
    800059e4:	00113c23          	sd	ra,24(sp)
    800059e8:	00813823          	sd	s0,16(sp)
    800059ec:	00913423          	sd	s1,8(sp)
    800059f0:	01213023          	sd	s2,0(sp)
    800059f4:	02010413          	addi	s0,sp,32
    800059f8:	00050913          	mv	s2,a0
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800059fc:	00000493          	li	s1,0
    80005a00:	03093783          	ld	a5,48(s2)
    80005a04:	02f4f663          	bgeu	s1,a5,80005a30 <_ZN16KObjectAllocatordlEPv+0x50>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80005a08:	ffffc097          	auipc	ra,0xffffc
    80005a0c:	15c080e7          	jalr	348(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80005a10:	02893783          	ld	a5,40(s2)
    80005a14:	00349713          	slli	a4,s1,0x3
    80005a18:	00e787b3          	add	a5,a5,a4
    80005a1c:	0007b583          	ld	a1,0(a5)
    80005a20:	ffffc097          	auipc	ra,0xffffc
    80005a24:	2d0080e7          	jalr	720(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005a28:	00148493          	addi	s1,s1,1
    80005a2c:	fd5ff06f          	j	80005a00 <_ZN16KObjectAllocatordlEPv+0x20>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80005a30:	ffffc097          	auipc	ra,0xffffc
    80005a34:	134080e7          	jalr	308(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80005a38:	02893583          	ld	a1,40(s2)
    80005a3c:	ffffc097          	auipc	ra,0xffffc
    80005a40:	2b4080e7          	jalr	692(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80005a44:	ffffc097          	auipc	ra,0xffffc
    80005a48:	120080e7          	jalr	288(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80005a4c:	02093583          	ld	a1,32(s2)
    80005a50:	ffffc097          	auipc	ra,0xffffc
    80005a54:	2a0080e7          	jalr	672(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80005a58:	ffffc097          	auipc	ra,0xffffc
    80005a5c:	10c080e7          	jalr	268(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80005a60:	00090593          	mv	a1,s2
    80005a64:	ffffc097          	auipc	ra,0xffffc
    80005a68:	28c080e7          	jalr	652(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    }
    80005a6c:	01813083          	ld	ra,24(sp)
    80005a70:	01013403          	ld	s0,16(sp)
    80005a74:	00813483          	ld	s1,8(sp)
    80005a78:	00013903          	ld	s2,0(sp)
    80005a7c:	02010113          	addi	sp,sp,32
    80005a80:	00008067          	ret

0000000080005a84 <_ZN16KObjectAllocator19printInternalMemoryEv>:
#include "../h/kObjectAllocator.hpp"
#include "../h/print.hpp"

void KObjectAllocator::printInternalMemory() {
    80005a84:	fc010113          	addi	sp,sp,-64
    80005a88:	02113c23          	sd	ra,56(sp)
    80005a8c:	02813823          	sd	s0,48(sp)
    80005a90:	02913423          	sd	s1,40(sp)
    80005a94:	03213023          	sd	s2,32(sp)
    80005a98:	01313c23          	sd	s3,24(sp)
    80005a9c:	01413823          	sd	s4,16(sp)
    80005aa0:	01513423          	sd	s5,8(sp)
    80005aa4:	01613023          	sd	s6,0(sp)
    80005aa8:	04010413          	addi	s0,sp,64
    80005aac:	00050493          	mv	s1,a0
    size_t segmentSize = 16, printedBytes = 0;
    80005ab0:	00000a93          	li	s5,0
    80005ab4:	0f00006f          	j	80005ba4 <_ZN16KObjectAllocator19printInternalMemoryEv+0x120>
    while (printedBytes < memorySizeForBits) {
        for (size_t i = 0; i < numberOfAllocations; ++i) {
            for (size_t j = 0; j < segmentSize; ++j) {
                if (j + printedBytes >= memorySizeForBits) printString("    ");
    80005ab8:	00004517          	auipc	a0,0x4
    80005abc:	ab850513          	addi	a0,a0,-1352 # 80009570 <CONSOLE_STATUS+0x560>
    80005ac0:	00001097          	auipc	ra,0x1
    80005ac4:	93c080e7          	jalr	-1732(ra) # 800063fc <_Z11printStringPKc>
    80005ac8:	04c0006f          	j	80005b14 <_ZN16KObjectAllocator19printInternalMemoryEv+0x90>
                else {
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80005acc:	00000513          	li	a0,0
    80005ad0:	00001097          	auipc	ra,0x1
    80005ad4:	99c080e7          	jalr	-1636(ra) # 8000646c <_Z12printIntegerm>
    80005ad8:	0740006f          	j	80005b4c <_ZN16KObjectAllocator19printInternalMemoryEv+0xc8>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    80005adc:	00000513          	li	a0,0
    80005ae0:	00001097          	auipc	ra,0x1
    80005ae4:	98c080e7          	jalr	-1652(ra) # 8000646c <_Z12printIntegerm>
                    printInteger((uint64) bitVectors[i][j + printedBytes]);
    80005ae8:	0284b783          	ld	a5,40(s1)
    80005aec:	014787b3          	add	a5,a5,s4
    80005af0:	0007b783          	ld	a5,0(a5)
    80005af4:	013789b3          	add	s3,a5,s3
    80005af8:	0009c503          	lbu	a0,0(s3)
    80005afc:	00001097          	auipc	ra,0x1
    80005b00:	970080e7          	jalr	-1680(ra) # 8000646c <_Z12printIntegerm>
                    printString(" ");
    80005b04:	00004517          	auipc	a0,0x4
    80005b08:	81c50513          	addi	a0,a0,-2020 # 80009320 <CONSOLE_STATUS+0x310>
    80005b0c:	00001097          	auipc	ra,0x1
    80005b10:	8f0080e7          	jalr	-1808(ra) # 800063fc <_Z11printStringPKc>
            for (size_t j = 0; j < segmentSize; ++j) {
    80005b14:	00190913          	addi	s2,s2,1
    80005b18:	00f00793          	li	a5,15
    80005b1c:	0527e863          	bltu	a5,s2,80005b6c <_ZN16KObjectAllocator19printInternalMemoryEv+0xe8>
                if (j + printedBytes >= memorySizeForBits) printString("    ");
    80005b20:	012a89b3          	add	s3,s5,s2
    80005b24:	0104b783          	ld	a5,16(s1)
    80005b28:	f8f9f8e3          	bgeu	s3,a5,80005ab8 <_ZN16KObjectAllocator19printInternalMemoryEv+0x34>
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80005b2c:	0284b783          	ld	a5,40(s1)
    80005b30:	003b1a13          	slli	s4,s6,0x3
    80005b34:	014787b3          	add	a5,a5,s4
    80005b38:	0007b783          	ld	a5,0(a5)
    80005b3c:	013787b3          	add	a5,a5,s3
    80005b40:	0007c703          	lbu	a4,0(a5)
    80005b44:	06300793          	li	a5,99
    80005b48:	f8e7f2e3          	bgeu	a5,a4,80005acc <_ZN16KObjectAllocator19printInternalMemoryEv+0x48>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    80005b4c:	0284b783          	ld	a5,40(s1)
    80005b50:	014787b3          	add	a5,a5,s4
    80005b54:	0007b783          	ld	a5,0(a5)
    80005b58:	013787b3          	add	a5,a5,s3
    80005b5c:	0007c703          	lbu	a4,0(a5)
    80005b60:	00900793          	li	a5,9
    80005b64:	f8e7e2e3          	bltu	a5,a4,80005ae8 <_ZN16KObjectAllocator19printInternalMemoryEv+0x64>
    80005b68:	f75ff06f          	j	80005adc <_ZN16KObjectAllocator19printInternalMemoryEv+0x58>
                }
            }
            printString("  ");
    80005b6c:	00004517          	auipc	a0,0x4
    80005b70:	a0c50513          	addi	a0,a0,-1524 # 80009578 <CONSOLE_STATUS+0x568>
    80005b74:	00001097          	auipc	ra,0x1
    80005b78:	888080e7          	jalr	-1912(ra) # 800063fc <_Z11printStringPKc>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005b7c:	001b0b13          	addi	s6,s6,1
    80005b80:	0304b783          	ld	a5,48(s1)
    80005b84:	00fb7663          	bgeu	s6,a5,80005b90 <_ZN16KObjectAllocator19printInternalMemoryEv+0x10c>
            for (size_t j = 0; j < segmentSize; ++j) {
    80005b88:	00000913          	li	s2,0
    80005b8c:	f8dff06f          	j	80005b18 <_ZN16KObjectAllocator19printInternalMemoryEv+0x94>
        }
        printString("\n");
    80005b90:	00003517          	auipc	a0,0x3
    80005b94:	58050513          	addi	a0,a0,1408 # 80009110 <CONSOLE_STATUS+0x100>
    80005b98:	00001097          	auipc	ra,0x1
    80005b9c:	864080e7          	jalr	-1948(ra) # 800063fc <_Z11printStringPKc>
        printedBytes += segmentSize;
    80005ba0:	010a8a93          	addi	s5,s5,16
    while (printedBytes < memorySizeForBits) {
    80005ba4:	0104b783          	ld	a5,16(s1)
    80005ba8:	00faf663          	bgeu	s5,a5,80005bb4 <_ZN16KObjectAllocator19printInternalMemoryEv+0x130>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005bac:	00000b13          	li	s6,0
    80005bb0:	fd1ff06f          	j	80005b80 <_ZN16KObjectAllocator19printInternalMemoryEv+0xfc>
    }

    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005bb4:	00000993          	li	s3,0
    80005bb8:	0180006f          	j	80005bd0 <_ZN16KObjectAllocator19printInternalMemoryEv+0x14c>
        for (size_t j = 0; j < segmentSize - 1; ++j)
            printString("----");
        printString("----  ");
    80005bbc:	00004517          	auipc	a0,0x4
    80005bc0:	9cc50513          	addi	a0,a0,-1588 # 80009588 <CONSOLE_STATUS+0x578>
    80005bc4:	00001097          	auipc	ra,0x1
    80005bc8:	838080e7          	jalr	-1992(ra) # 800063fc <_Z11printStringPKc>
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005bcc:	00198993          	addi	s3,s3,1
    80005bd0:	0304b783          	ld	a5,48(s1)
    80005bd4:	02f9f463          	bgeu	s3,a5,80005bfc <_ZN16KObjectAllocator19printInternalMemoryEv+0x178>
        for (size_t j = 0; j < segmentSize - 1; ++j)
    80005bd8:	00000913          	li	s2,0
    80005bdc:	00e00793          	li	a5,14
    80005be0:	fd27eee3          	bltu	a5,s2,80005bbc <_ZN16KObjectAllocator19printInternalMemoryEv+0x138>
            printString("----");
    80005be4:	00004517          	auipc	a0,0x4
    80005be8:	99c50513          	addi	a0,a0,-1636 # 80009580 <CONSOLE_STATUS+0x570>
    80005bec:	00001097          	auipc	ra,0x1
    80005bf0:	810080e7          	jalr	-2032(ra) # 800063fc <_Z11printStringPKc>
        for (size_t j = 0; j < segmentSize - 1; ++j)
    80005bf4:	00190913          	addi	s2,s2,1
    80005bf8:	fe5ff06f          	j	80005bdc <_ZN16KObjectAllocator19printInternalMemoryEv+0x158>
    }
    printString("\n");
    80005bfc:	00003517          	auipc	a0,0x3
    80005c00:	51450513          	addi	a0,a0,1300 # 80009110 <CONSOLE_STATUS+0x100>
    80005c04:	00000097          	auipc	ra,0x0
    80005c08:	7f8080e7          	jalr	2040(ra) # 800063fc <_Z11printStringPKc>

    printedBytes = memorySizeForBits;
    80005c0c:	0104ba03          	ld	s4,16(s1)
    80005c10:	1000006f          	j	80005d10 <_ZN16KObjectAllocator19printInternalMemoryEv+0x28c>
    while(printedBytes < initialNumberOfObjects * objectSize) {
        for (size_t i = 0; i < numberOfAllocations; ++i) {
            for (size_t j = 0; j < segmentSize; ++j) {
                if (j + printedBytes - memorySizeForBits >= initialNumberOfObjects * objectSize) printString("    ");
    80005c14:	00004517          	auipc	a0,0x4
    80005c18:	95c50513          	addi	a0,a0,-1700 # 80009570 <CONSOLE_STATUS+0x560>
    80005c1c:	00000097          	auipc	ra,0x0
    80005c20:	7e0080e7          	jalr	2016(ra) # 800063fc <_Z11printStringPKc>
    80005c24:	04c0006f          	j	80005c70 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1ec>
                else {
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80005c28:	00000513          	li	a0,0
    80005c2c:	00001097          	auipc	ra,0x1
    80005c30:	840080e7          	jalr	-1984(ra) # 8000646c <_Z12printIntegerm>
    80005c34:	0840006f          	j	80005cb8 <_ZN16KObjectAllocator19printInternalMemoryEv+0x234>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    80005c38:	00000513          	li	a0,0
    80005c3c:	00001097          	auipc	ra,0x1
    80005c40:	830080e7          	jalr	-2000(ra) # 8000646c <_Z12printIntegerm>
                    printInteger((uint64) bitVectors[i][j + printedBytes]);
    80005c44:	0284b783          	ld	a5,40(s1)
    80005c48:	016787b3          	add	a5,a5,s6
    80005c4c:	0007b783          	ld	a5,0(a5)
    80005c50:	013789b3          	add	s3,a5,s3
    80005c54:	0009c503          	lbu	a0,0(s3)
    80005c58:	00001097          	auipc	ra,0x1
    80005c5c:	814080e7          	jalr	-2028(ra) # 8000646c <_Z12printIntegerm>
                    printString(" ");
    80005c60:	00003517          	auipc	a0,0x3
    80005c64:	6c050513          	addi	a0,a0,1728 # 80009320 <CONSOLE_STATUS+0x310>
    80005c68:	00000097          	auipc	ra,0x0
    80005c6c:	794080e7          	jalr	1940(ra) # 800063fc <_Z11printStringPKc>
            for (size_t j = 0; j < segmentSize; ++j) {
    80005c70:	00190913          	addi	s2,s2,1
    80005c74:	00f00793          	li	a5,15
    80005c78:	0727e063          	bltu	a5,s2,80005cd8 <_ZN16KObjectAllocator19printInternalMemoryEv+0x254>
                if (j + printedBytes - memorySizeForBits >= initialNumberOfObjects * objectSize) printString("    ");
    80005c7c:	012a09b3          	add	s3,s4,s2
    80005c80:	0104b703          	ld	a4,16(s1)
    80005c84:	40e98733          	sub	a4,s3,a4
    80005c88:	0004b783          	ld	a5,0(s1)
    80005c8c:	0184b683          	ld	a3,24(s1)
    80005c90:	02d787b3          	mul	a5,a5,a3
    80005c94:	f8f770e3          	bgeu	a4,a5,80005c14 <_ZN16KObjectAllocator19printInternalMemoryEv+0x190>
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80005c98:	0284b783          	ld	a5,40(s1)
    80005c9c:	003a9b13          	slli	s6,s5,0x3
    80005ca0:	016787b3          	add	a5,a5,s6
    80005ca4:	0007b783          	ld	a5,0(a5)
    80005ca8:	013787b3          	add	a5,a5,s3
    80005cac:	0007c703          	lbu	a4,0(a5)
    80005cb0:	06300793          	li	a5,99
    80005cb4:	f6e7fae3          	bgeu	a5,a4,80005c28 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1a4>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    80005cb8:	0284b783          	ld	a5,40(s1)
    80005cbc:	016787b3          	add	a5,a5,s6
    80005cc0:	0007b783          	ld	a5,0(a5)
    80005cc4:	013787b3          	add	a5,a5,s3
    80005cc8:	0007c703          	lbu	a4,0(a5)
    80005ccc:	00900793          	li	a5,9
    80005cd0:	f6e7eae3          	bltu	a5,a4,80005c44 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1c0>
    80005cd4:	f65ff06f          	j	80005c38 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1b4>
                }
            }
            printString("  ");
    80005cd8:	00004517          	auipc	a0,0x4
    80005cdc:	8a050513          	addi	a0,a0,-1888 # 80009578 <CONSOLE_STATUS+0x568>
    80005ce0:	00000097          	auipc	ra,0x0
    80005ce4:	71c080e7          	jalr	1820(ra) # 800063fc <_Z11printStringPKc>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005ce8:	001a8a93          	addi	s5,s5,1
    80005cec:	0304b783          	ld	a5,48(s1)
    80005cf0:	00faf663          	bgeu	s5,a5,80005cfc <_ZN16KObjectAllocator19printInternalMemoryEv+0x278>
            for (size_t j = 0; j < segmentSize; ++j) {
    80005cf4:	00000913          	li	s2,0
    80005cf8:	f7dff06f          	j	80005c74 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1f0>
        }
        printString("\n");
    80005cfc:	00003517          	auipc	a0,0x3
    80005d00:	41450513          	addi	a0,a0,1044 # 80009110 <CONSOLE_STATUS+0x100>
    80005d04:	00000097          	auipc	ra,0x0
    80005d08:	6f8080e7          	jalr	1784(ra) # 800063fc <_Z11printStringPKc>
        printedBytes += segmentSize;
    80005d0c:	010a0a13          	addi	s4,s4,16
    while(printedBytes < initialNumberOfObjects * objectSize) {
    80005d10:	0004b783          	ld	a5,0(s1)
    80005d14:	0184b703          	ld	a4,24(s1)
    80005d18:	02e787b3          	mul	a5,a5,a4
    80005d1c:	00fa7663          	bgeu	s4,a5,80005d28 <_ZN16KObjectAllocator19printInternalMemoryEv+0x2a4>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005d20:	00000a93          	li	s5,0
    80005d24:	fc9ff06f          	j	80005cec <_ZN16KObjectAllocator19printInternalMemoryEv+0x268>
    }
}
    80005d28:	03813083          	ld	ra,56(sp)
    80005d2c:	03013403          	ld	s0,48(sp)
    80005d30:	02813483          	ld	s1,40(sp)
    80005d34:	02013903          	ld	s2,32(sp)
    80005d38:	01813983          	ld	s3,24(sp)
    80005d3c:	01013a03          	ld	s4,16(sp)
    80005d40:	00813a83          	ld	s5,8(sp)
    80005d44:	00013b03          	ld	s6,0(sp)
    80005d48:	04010113          	addi	sp,sp,64
    80005d4c:	00008067          	ret

0000000080005d50 <_ZN16KObjectAllocator18allocateFreeObjectEv>:
        }
    }
    return nullptr;
}

void* KObjectAllocator::allocateFreeObject() {
    80005d50:	ff010113          	addi	sp,sp,-16
    80005d54:	00813423          	sd	s0,8(sp)
    80005d58:	01010413          	addi	s0,sp,16
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005d5c:	00000e13          	li	t3,0
    80005d60:	03053783          	ld	a5,48(a0)
    80005d64:	0afe7e63          	bgeu	t3,a5,80005e20 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xd0>
        for (size_t j = nextNonTakenByte; j >= i * memorySizeForBits && j < (i + 1) * memorySizeForBits; ++j) {
    80005d68:	03853303          	ld	t1,56(a0)
    80005d6c:	0480006f          	j	80005db4 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x64>
                    printString("j: "); printInteger(j); printString("\n");
                    printString("nextNonTakenByte: "); printInteger(nextNonTakenByte); printString("\n");
                    printString("Byte: "); printInteger(byte); printString("\n");
                    printString("Bit: "); printInteger(bit); printString("\n");
                    printString("========================");*/
                    bitVectors[i][byte] |= (uint8) 1 << (bit - 1);
    80005d70:	00100693          	li	a3,1
    80005d74:	011698bb          	sllw	a7,a3,a7
    80005d78:	0115e5b3          	or	a1,a1,a7
    80005d7c:	00b78023          	sb	a1,0(a5)
                    return &objectVectors[i][(byte * 8 + 8 - bit) * objectSize];
    80005d80:	02053783          	ld	a5,32(a0)
    80005d84:	01078833          	add	a6,a5,a6
    80005d88:	00083783          	ld	a5,0(a6)
    80005d8c:	00160613          	addi	a2,a2,1
    80005d90:	00361613          	slli	a2,a2,0x3
    80005d94:	40e60733          	sub	a4,a2,a4
    80005d98:	01853503          	ld	a0,24(a0)
    80005d9c:	02a70733          	mul	a4,a4,a0
    80005da0:	00e78533          	add	a0,a5,a4
                }
            }
        }
    }
    return nullptr;
}
    80005da4:	00813403          	ld	s0,8(sp)
    80005da8:	01010113          	addi	sp,sp,16
    80005dac:	00008067          	ret
        for (size_t j = nextNonTakenByte; j >= i * memorySizeForBits && j < (i + 1) * memorySizeForBits; ++j) {
    80005db0:	00130313          	addi	t1,t1,1
    80005db4:	01053783          	ld	a5,16(a0)
    80005db8:	03c78633          	mul	a2,a5,t3
    80005dbc:	04c36e63          	bltu	t1,a2,80005e18 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xc8>
    80005dc0:	001e0713          	addi	a4,t3,1
    80005dc4:	02e787b3          	mul	a5,a5,a4
    80005dc8:	04f37863          	bgeu	t1,a5,80005e18 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xc8>
            size_t byte = j - i * memorySizeForBits;
    80005dcc:	40c30633          	sub	a2,t1,a2
            for (size_t bit = 8; bit != 0; --bit) {
    80005dd0:	00800713          	li	a4,8
    80005dd4:	fc070ee3          	beqz	a4,80005db0 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x60>
                nextNonTakenByte = j + (bit == 1);
    80005dd8:	fff70793          	addi	a5,a4,-1
    80005ddc:	0017b793          	seqz	a5,a5
    80005de0:	006787b3          	add	a5,a5,t1
    80005de4:	02f53c23          	sd	a5,56(a0)
                if ((bitVectors[i][byte] >> (bit - 1) & (uint8) 1) == 0) {
    80005de8:	02853783          	ld	a5,40(a0)
    80005dec:	003e1813          	slli	a6,t3,0x3
    80005df0:	010787b3          	add	a5,a5,a6
    80005df4:	0007b783          	ld	a5,0(a5)
    80005df8:	00c787b3          	add	a5,a5,a2
    80005dfc:	0007c583          	lbu	a1,0(a5)
    80005e00:	fff7089b          	addiw	a7,a4,-1
    80005e04:	4115d6bb          	sraw	a3,a1,a7
    80005e08:	0016f693          	andi	a3,a3,1
    80005e0c:	f60682e3          	beqz	a3,80005d70 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x20>
            for (size_t bit = 8; bit != 0; --bit) {
    80005e10:	fff70713          	addi	a4,a4,-1
    80005e14:	fc1ff06f          	j	80005dd4 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x84>
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005e18:	001e0e13          	addi	t3,t3,1
    80005e1c:	f45ff06f          	j	80005d60 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x10>
    return nullptr;
    80005e20:	00000513          	li	a0,0
    80005e24:	f81ff06f          	j	80005da4 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x54>

0000000080005e28 <_ZN16KObjectAllocator10freeObjectEPv>:

void KObjectAllocator::freeObject(void* objectPointer) {
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005e28:	00000713          	li	a4,0
    80005e2c:	0080006f          	j	80005e34 <_ZN16KObjectAllocator10freeObjectEPv+0xc>
    80005e30:	00170713          	addi	a4,a4,1
    80005e34:	03053783          	ld	a5,48(a0)
    80005e38:	06f77463          	bgeu	a4,a5,80005ea0 <_ZN16KObjectAllocator10freeObjectEPv+0x78>
        if ((uint8*) objectPointer < objectVectors[i]) continue;
    80005e3c:	02053783          	ld	a5,32(a0)
    80005e40:	00371693          	slli	a3,a4,0x3
    80005e44:	00d787b3          	add	a5,a5,a3
    80005e48:	0007b783          	ld	a5,0(a5)
    80005e4c:	fef5e2e3          	bltu	a1,a5,80005e30 <_ZN16KObjectAllocator10freeObjectEPv+0x8>
        size_t idiff = (size_t) ((uint8*) objectPointer - objectVectors[i]);
    80005e50:	40f587b3          	sub	a5,a1,a5
        size_t byte = idiff / objectSize / 8;
    80005e54:	01853603          	ld	a2,24(a0)
    80005e58:	02c7d7b3          	divu	a5,a5,a2
    80005e5c:	0037d813          	srli	a6,a5,0x3
        if (byte >= memorySizeForBits) continue;
    80005e60:	01053603          	ld	a2,16(a0)
    80005e64:	fcc876e3          	bgeu	a6,a2,80005e30 <_ZN16KObjectAllocator10freeObjectEPv+0x8>
        size_t bit = idiff / objectSize - byte * 8;
    80005e68:	0077f793          	andi	a5,a5,7
        bitVectors[i][byte] &= ~((uint8) 1 << (7 - bit));
    80005e6c:	02853603          	ld	a2,40(a0)
    80005e70:	00d606b3          	add	a3,a2,a3
    80005e74:	0006b703          	ld	a4,0(a3)
    80005e78:	01070733          	add	a4,a4,a6
    80005e7c:	00700693          	li	a3,7
    80005e80:	40f686bb          	subw	a3,a3,a5
    80005e84:	00100793          	li	a5,1
    80005e88:	00d797bb          	sllw	a5,a5,a3
    80005e8c:	fff7c793          	not	a5,a5
    80005e90:	00074683          	lbu	a3,0(a4)
    80005e94:	00d7f7b3          	and	a5,a5,a3
    80005e98:	00f70023          	sb	a5,0(a4)
        return;
    80005e9c:	00008067          	ret
void KObjectAllocator::freeObject(void* objectPointer) {
    80005ea0:	ff010113          	addi	sp,sp,-16
    80005ea4:	00113423          	sd	ra,8(sp)
    80005ea8:	00813023          	sd	s0,0(sp)
    80005eac:	01010413          	addi	s0,sp,16
    }
    printString("ERROR: Object not allocated in this KObjectAllocator\n");
    80005eb0:	00003517          	auipc	a0,0x3
    80005eb4:	6e050513          	addi	a0,a0,1760 # 80009590 <CONSOLE_STATUS+0x580>
    80005eb8:	00000097          	auipc	ra,0x0
    80005ebc:	544080e7          	jalr	1348(ra) # 800063fc <_Z11printStringPKc>
}
    80005ec0:	00813083          	ld	ra,8(sp)
    80005ec4:	00013403          	ld	s0,0(sp)
    80005ec8:	01010113          	addi	sp,sp,16
    80005ecc:	00008067          	ret

0000000080005ed0 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv>:

bool KObjectAllocator::handleNotEnoughMemoryProblem() {
    80005ed0:	fb010113          	addi	sp,sp,-80
    80005ed4:	04113423          	sd	ra,72(sp)
    80005ed8:	04813023          	sd	s0,64(sp)
    80005edc:	02913c23          	sd	s1,56(sp)
    80005ee0:	03213823          	sd	s2,48(sp)
    80005ee4:	03313423          	sd	s3,40(sp)
    80005ee8:	03413023          	sd	s4,32(sp)
    80005eec:	01513c23          	sd	s5,24(sp)
    80005ef0:	01613823          	sd	s6,16(sp)
    80005ef4:	01713423          	sd	s7,8(sp)
    80005ef8:	05010413          	addi	s0,sp,80
    80005efc:	00050493          	mv	s1,a0
    size_t newNumberOfAllocations = 2 * numberOfAllocations;
    80005f00:	03053a03          	ld	s4,48(a0)
    80005f04:	001a1993          	slli	s3,s4,0x1
    size_t newNumberOfObjects = 2 * numberOfObjects;
    80005f08:	00853a83          	ld	s5,8(a0)
    uint8** newBitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(
    80005f0c:	ffffc097          	auipc	ra,0xffffc
    80005f10:	c58080e7          	jalr	-936(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80005f14:	004a1a13          	slli	s4,s4,0x4
    80005f18:	000a0593          	mv	a1,s4
    80005f1c:	ffffc097          	auipc	ra,0xffffc
    80005f20:	d2c080e7          	jalr	-724(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
            newNumberOfAllocations * sizeof(uint8*)
    );
    if (!newBitVectors) return false;
    80005f24:	14050663          	beqz	a0,80006070 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a0>
    80005f28:	001a9a93          	slli	s5,s5,0x1
    80005f2c:	00050913          	mv	s2,a0
    uint8** newObjectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(
    80005f30:	ffffc097          	auipc	ra,0xffffc
    80005f34:	c34080e7          	jalr	-972(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80005f38:	000a0593          	mv	a1,s4
    80005f3c:	ffffc097          	auipc	ra,0xffffc
    80005f40:	d0c080e7          	jalr	-756(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80005f44:	00050a13          	mv	s4,a0
            newNumberOfAllocations * sizeof(uint8*)
    );
    if (!newObjectVectors) return false;
    80005f48:	14050c63          	beqz	a0,800060a0 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1d0>

    for (size_t i = 0; i < numberOfAllocations; ++i) newBitVectors[i] = bitVectors[i];
    80005f4c:	00000793          	li	a5,0
    80005f50:	0304bb03          	ld	s6,48(s1)
    80005f54:	0367f463          	bgeu	a5,s6,80005f7c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xac>
    80005f58:	0284b703          	ld	a4,40(s1)
    80005f5c:	00379693          	slli	a3,a5,0x3
    80005f60:	00d90633          	add	a2,s2,a3
    80005f64:	00d70733          	add	a4,a4,a3
    80005f68:	00073703          	ld	a4,0(a4)
    80005f6c:	00e63023          	sd	a4,0(a2)
    80005f70:	00178793          	addi	a5,a5,1
    80005f74:	fddff06f          	j	80005f50 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x80>
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i) {
    80005f78:	001b0b13          	addi	s6,s6,1
    80005f7c:	053b7063          	bgeu	s6,s3,80005fbc <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xec>
        newBitVectors[i] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80005f80:	ffffc097          	auipc	ra,0xffffc
    80005f84:	be4080e7          	jalr	-1052(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
        memorySizeForBits + initialNumberOfObjects * objectSize );
    80005f88:	0104b583          	ld	a1,16(s1)
    80005f8c:	0004b783          	ld	a5,0(s1)
    80005f90:	0184b703          	ld	a4,24(s1)
    80005f94:	02e787b3          	mul	a5,a5,a4
        newBitVectors[i] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80005f98:	003b1b93          	slli	s7,s6,0x3
    80005f9c:	01790bb3          	add	s7,s2,s7
    80005fa0:	00f585b3          	add	a1,a1,a5
    80005fa4:	ffffc097          	auipc	ra,0xffffc
    80005fa8:	ca4080e7          	jalr	-860(ra) # 80001c48 <_ZN15MemoryAllocator10kmem_allocEm>
    80005fac:	00abb023          	sd	a0,0(s7)
        if (!newBitVectors[i]) return false;
    80005fb0:	fc0514e3          	bnez	a0,80005f78 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xa8>
    80005fb4:	00000513          	li	a0,0
    80005fb8:	0bc0006f          	j	80006074 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a4>
    }
    for (size_t i = 0; i < newNumberOfAllocations; ++i) newObjectVectors[i] = newBitVectors[i] + memorySizeForBits;
    80005fbc:	00000713          	li	a4,0
    80005fc0:	03377463          	bgeu	a4,s3,80005fe8 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x118>
    80005fc4:	00371793          	slli	a5,a4,0x3
    80005fc8:	00f906b3          	add	a3,s2,a5
    80005fcc:	0006b683          	ld	a3,0(a3)
    80005fd0:	0104b603          	ld	a2,16(s1)
    80005fd4:	00fa07b3          	add	a5,s4,a5
    80005fd8:	00c686b3          	add	a3,a3,a2
    80005fdc:	00d7b023          	sd	a3,0(a5)
    80005fe0:	00170713          	addi	a4,a4,1
    80005fe4:	fddff06f          	j	80005fc0 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xf0>
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i)
    80005fe8:	0304b683          	ld	a3,48(s1)
    80005fec:	0280006f          	j	80006014 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x144>
        for (size_t j = 0; j < memorySizeForBits; newBitVectors[i][j++] = 0);
    80005ff0:	00369713          	slli	a4,a3,0x3
    80005ff4:	00e90733          	add	a4,s2,a4
    80005ff8:	00073703          	ld	a4,0(a4)
    80005ffc:	00f70733          	add	a4,a4,a5
    80006000:	00070023          	sb	zero,0(a4)
    80006004:	00178793          	addi	a5,a5,1
    80006008:	0104b703          	ld	a4,16(s1)
    8000600c:	fee7e2e3          	bltu	a5,a4,80005ff0 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x120>
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i)
    80006010:	00168693          	addi	a3,a3,1
    80006014:	0136f663          	bgeu	a3,s3,80006020 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x150>
        for (size_t j = 0; j < memorySizeForBits; newBitVectors[i][j++] = 0);
    80006018:	00000793          	li	a5,0
    8000601c:	fedff06f          	j	80006008 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x138>
    MemoryAllocator::instance()->kmem_free(bitVectors);
    80006020:	ffffc097          	auipc	ra,0xffffc
    80006024:	b44080e7          	jalr	-1212(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    80006028:	0284b583          	ld	a1,40(s1)
    8000602c:	ffffc097          	auipc	ra,0xffffc
    80006030:	cc4080e7          	jalr	-828(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(objectVectors);
    80006034:	ffffc097          	auipc	ra,0xffffc
    80006038:	b30080e7          	jalr	-1232(ra) # 80001b64 <_ZN15MemoryAllocator8instanceEv>
    8000603c:	0204b583          	ld	a1,32(s1)
    80006040:	ffffc097          	auipc	ra,0xffffc
    80006044:	cb0080e7          	jalr	-848(ra) # 80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv>

    numberOfObjects = newNumberOfObjects;
    80006048:	0154b423          	sd	s5,8(s1)
    nextNonTakenByte = numberOfAllocations * memorySizeForBits;
    8000604c:	0304b783          	ld	a5,48(s1)
    80006050:	0104b703          	ld	a4,16(s1)
    80006054:	02e787b3          	mul	a5,a5,a4
    80006058:	02f4bc23          	sd	a5,56(s1)
    numberOfAllocations = newNumberOfAllocations;
    8000605c:	0334b823          	sd	s3,48(s1)
    bitVectors = newBitVectors;
    80006060:	0324b423          	sd	s2,40(s1)
    objectVectors = newObjectVectors;
    80006064:	0344b023          	sd	s4,32(s1)

    return true;
    80006068:	00100513          	li	a0,1
    8000606c:	0080006f          	j	80006074 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a4>
    if (!newBitVectors) return false;
    80006070:	00000513          	li	a0,0
}
    80006074:	04813083          	ld	ra,72(sp)
    80006078:	04013403          	ld	s0,64(sp)
    8000607c:	03813483          	ld	s1,56(sp)
    80006080:	03013903          	ld	s2,48(sp)
    80006084:	02813983          	ld	s3,40(sp)
    80006088:	02013a03          	ld	s4,32(sp)
    8000608c:	01813a83          	ld	s5,24(sp)
    80006090:	01013b03          	ld	s6,16(sp)
    80006094:	00813b83          	ld	s7,8(sp)
    80006098:	05010113          	addi	sp,sp,80
    8000609c:	00008067          	ret
    if (!newObjectVectors) return false;
    800060a0:	00000513          	li	a0,0
    800060a4:	fd1ff06f          	j	80006074 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a4>

00000000800060a8 <_ZN16KObjectAllocator17allocateNewObjectEv>:
void* KObjectAllocator::allocateNewObject() {
    800060a8:	fe010113          	addi	sp,sp,-32
    800060ac:	00113c23          	sd	ra,24(sp)
    800060b0:	00813823          	sd	s0,16(sp)
    800060b4:	00913423          	sd	s1,8(sp)
    800060b8:	01213023          	sd	s2,0(sp)
    800060bc:	02010413          	addi	s0,sp,32
    800060c0:	00050913          	mv	s2,a0
    void* returnedObject = allocateFreeObject();
    800060c4:	00000097          	auipc	ra,0x0
    800060c8:	c8c080e7          	jalr	-884(ra) # 80005d50 <_ZN16KObjectAllocator18allocateFreeObjectEv>
    800060cc:	00050493          	mv	s1,a0
    if (returnedObject) {
    800060d0:	02050063          	beqz	a0,800060f0 <_ZN16KObjectAllocator17allocateNewObjectEv+0x48>
}
    800060d4:	00048513          	mv	a0,s1
    800060d8:	01813083          	ld	ra,24(sp)
    800060dc:	01013403          	ld	s0,16(sp)
    800060e0:	00813483          	ld	s1,8(sp)
    800060e4:	00013903          	ld	s2,0(sp)
    800060e8:	02010113          	addi	sp,sp,32
    800060ec:	00008067          	ret
    nextNonTakenByte = 0;   // start search from start
    800060f0:	02093c23          	sd	zero,56(s2)
    returnedObject = allocateFreeObject();
    800060f4:	00090513          	mv	a0,s2
    800060f8:	00000097          	auipc	ra,0x0
    800060fc:	c58080e7          	jalr	-936(ra) # 80005d50 <_ZN16KObjectAllocator18allocateFreeObjectEv>
    80006100:	00050493          	mv	s1,a0
    if (returnedObject) {
    80006104:	fc0518e3          	bnez	a0,800060d4 <_ZN16KObjectAllocator17allocateNewObjectEv+0x2c>
    if (handleNotEnoughMemoryProblem()) {
    80006108:	00090513          	mv	a0,s2
    8000610c:	00000097          	auipc	ra,0x0
    80006110:	dc4080e7          	jalr	-572(ra) # 80005ed0 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv>
    80006114:	fc0500e3          	beqz	a0,800060d4 <_ZN16KObjectAllocator17allocateNewObjectEv+0x2c>
        returnedObject = allocateFreeObject();
    80006118:	00090513          	mv	a0,s2
    8000611c:	00000097          	auipc	ra,0x0
    80006120:	c34080e7          	jalr	-972(ra) # 80005d50 <_ZN16KObjectAllocator18allocateFreeObjectEv>
    80006124:	00050493          	mv	s1,a0
        if (returnedObject) {
    80006128:	fadff06f          	j	800060d4 <_ZN16KObjectAllocator17allocateNewObjectEv+0x2c>

000000008000612c <_ZN5Riscv10popSppSpieEv>:
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/print.hpp"

void Riscv::popSppSpie()
{
    8000612c:	ff010113          	addi	sp,sp,-16
    80006130:	00813423          	sd	s0,8(sp)
    80006134:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80006138:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    8000613c:	10200073          	sret
}
    80006140:	00813403          	ld	s0,8(sp)
    80006144:	01010113          	addi	sp,sp,16
    80006148:	00008067          	ret

000000008000614c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    8000614c:	f9010113          	addi	sp,sp,-112
    80006150:	06113423          	sd	ra,104(sp)
    80006154:	06813023          	sd	s0,96(sp)
    80006158:	07010413          	addi	s0,sp,112
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000615c:	142027f3          	csrr	a5,scause
    80006160:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80006164:	fc843703          	ld	a4,-56(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80006168:	ff870693          	addi	a3,a4,-8
    8000616c:	00100793          	li	a5,1
    80006170:	02d7fa63          	bgeu	a5,a3,800061a4 <_ZN5Riscv20handleSupervisorTrapEv+0x58>
        TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80006174:	fff00793          	li	a5,-1
    80006178:	03f79793          	slli	a5,a5,0x3f
    8000617c:	00178793          	addi	a5,a5,1
    80006180:	0af70863          	beq	a4,a5,80006230 <_ZN5Riscv20handleSupervisorTrapEv+0xe4>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80006184:	fff00793          	li	a5,-1
    80006188:	03f79793          	slli	a5,a5,0x3f
    8000618c:	00978793          	addi	a5,a5,9
    80006190:	10f70c63          	beq	a4,a5,800062a8 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
    }
    else
    {
        // unexpected trap cause
    }
    80006194:	06813083          	ld	ra,104(sp)
    80006198:	06013403          	ld	s0,96(sp)
    8000619c:	07010113          	addi	sp,sp,112
    800061a0:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800061a4:	141027f3          	csrr	a5,sepc
    800061a8:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    800061ac:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    800061b0:	00478793          	addi	a5,a5,4
    800061b4:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800061b8:	100027f3          	csrr	a5,sstatus
    800061bc:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    800061c0:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    800061c4:	faf43023          	sd	a5,-96(s0)
        __asm__ volatile("sd a0, %0" : "=m" (sysCallNum));
    800061c8:	faa43423          	sd	a0,-88(s0)
        printString("\na0 = "); printInteger(sysCallNum);
    800061cc:	00003517          	auipc	a0,0x3
    800061d0:	3fc50513          	addi	a0,a0,1020 # 800095c8 <CONSOLE_STATUS+0x5b8>
    800061d4:	00000097          	auipc	ra,0x0
    800061d8:	228080e7          	jalr	552(ra) # 800063fc <_Z11printStringPKc>
    800061dc:	fa843503          	ld	a0,-88(s0)
    800061e0:	00000097          	auipc	ra,0x0
    800061e4:	28c080e7          	jalr	652(ra) # 8000646c <_Z12printIntegerm>
        __asm__ volatile("sd a0, %0" : "=m" (arg1));
    800061e8:	faa43823          	sd	a0,-80(s0)
        printString("\na1 = "); printInteger(arg1);
    800061ec:	00003517          	auipc	a0,0x3
    800061f0:	3e450513          	addi	a0,a0,996 # 800095d0 <CONSOLE_STATUS+0x5c0>
    800061f4:	00000097          	auipc	ra,0x0
    800061f8:	208080e7          	jalr	520(ra) # 800063fc <_Z11printStringPKc>
    800061fc:	fb043503          	ld	a0,-80(s0)
    80006200:	00000097          	auipc	ra,0x0
    80006204:	26c080e7          	jalr	620(ra) # 8000646c <_Z12printIntegerm>
        TCB::timeSliceCounter = 0;
    80006208:	00004797          	auipc	a5,0x4
    8000620c:	4b87b783          	ld	a5,1208(a5) # 8000a6c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80006210:	0007b023          	sd	zero,0(a5)
        TCB::dispatch();
    80006214:	ffffb097          	auipc	ra,0xffffb
    80006218:	7f0080e7          	jalr	2032(ra) # 80001a04 <_ZN3TCB8dispatchEv>
        w_sstatus(sstatus);
    8000621c:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80006220:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80006224:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80006228:	14179073          	csrw	sepc,a5
}
    8000622c:	f69ff06f          	j	80006194 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80006230:	00200793          	li	a5,2
    80006234:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80006238:	00004717          	auipc	a4,0x4
    8000623c:	48873703          	ld	a4,1160(a4) # 8000a6c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80006240:	00073783          	ld	a5,0(a4)
    80006244:	00178793          	addi	a5,a5,1
    80006248:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    8000624c:	00004717          	auipc	a4,0x4
    80006250:	49473703          	ld	a4,1172(a4) # 8000a6e0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80006254:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80006258:	02073703          	ld	a4,32(a4)
    8000625c:	f2e7ece3          	bltu	a5,a4,80006194 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80006260:	141027f3          	csrr	a5,sepc
    80006264:	fef43423          	sd	a5,-24(s0)
    return sepc;
    80006268:	fe843783          	ld	a5,-24(s0)
            uint64 volatile sepc = r_sepc();
    8000626c:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80006270:	100027f3          	csrr	a5,sstatus
    80006274:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    80006278:	fe043783          	ld	a5,-32(s0)
            uint64 volatile sstatus = r_sstatus();
    8000627c:	fcf43023          	sd	a5,-64(s0)
            TCB::timeSliceCounter = 0;
    80006280:	00004797          	auipc	a5,0x4
    80006284:	4407b783          	ld	a5,1088(a5) # 8000a6c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80006288:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    8000628c:	ffffb097          	auipc	ra,0xffffb
    80006290:	778080e7          	jalr	1912(ra) # 80001a04 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80006294:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80006298:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    8000629c:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800062a0:	14179073          	csrw	sepc,a5
}
    800062a4:	ef1ff06f          	j	80006194 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
        console_handler();
    800062a8:	00002097          	auipc	ra,0x2
    800062ac:	62c080e7          	jalr	1580(ra) # 800088d4 <console_handler>
    800062b0:	ee5ff06f          	j	80006194 <_ZN5Riscv20handleSupervisorTrapEv+0x48>

00000000800062b4 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    800062b4:	ff010113          	addi	sp,sp,-16
    800062b8:	00813423          	sd	s0,8(sp)
    800062bc:	01010413          	addi	s0,sp,16
    800062c0:	00100793          	li	a5,1
    800062c4:	00f50863          	beq	a0,a5,800062d4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800062c8:	00813403          	ld	s0,8(sp)
    800062cc:	01010113          	addi	sp,sp,16
    800062d0:	00008067          	ret
    800062d4:	000107b7          	lui	a5,0x10
    800062d8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800062dc:	fef596e3          	bne	a1,a5,800062c8 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800062e0:	00004797          	auipc	a5,0x4
    800062e4:	4a078793          	addi	a5,a5,1184 # 8000a780 <_ZN9Scheduler16readyThreadQueueE>
    800062e8:	0007b023          	sd	zero,0(a5)
    800062ec:	0007b423          	sd	zero,8(a5)
    800062f0:	fd9ff06f          	j	800062c8 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800062f4 <_ZN9Scheduler3getEv>:
{
    800062f4:	fe010113          	addi	sp,sp,-32
    800062f8:	00113c23          	sd	ra,24(sp)
    800062fc:	00813823          	sd	s0,16(sp)
    80006300:	00913423          	sd	s1,8(sp)
    80006304:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80006308:	00004517          	auipc	a0,0x4
    8000630c:	47853503          	ld	a0,1144(a0) # 8000a780 <_ZN9Scheduler16readyThreadQueueE>
    80006310:	04050263          	beqz	a0,80006354 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80006314:	00853783          	ld	a5,8(a0)
    80006318:	00004717          	auipc	a4,0x4
    8000631c:	46f73423          	sd	a5,1128(a4) # 8000a780 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80006320:	02078463          	beqz	a5,80006348 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80006324:	00053483          	ld	s1,0(a0)
        delete elem;
    80006328:	ffffd097          	auipc	ra,0xffffd
    8000632c:	d74080e7          	jalr	-652(ra) # 8000309c <_ZdlPv>
}
    80006330:	00048513          	mv	a0,s1
    80006334:	01813083          	ld	ra,24(sp)
    80006338:	01013403          	ld	s0,16(sp)
    8000633c:	00813483          	ld	s1,8(sp)
    80006340:	02010113          	addi	sp,sp,32
    80006344:	00008067          	ret
        if (!head) { tail = 0; }
    80006348:	00004797          	auipc	a5,0x4
    8000634c:	4407b023          	sd	zero,1088(a5) # 8000a788 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80006350:	fd5ff06f          	j	80006324 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80006354:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80006358:	fd9ff06f          	j	80006330 <_ZN9Scheduler3getEv+0x3c>

000000008000635c <_ZN9Scheduler3putEP3TCB>:
{
    8000635c:	fe010113          	addi	sp,sp,-32
    80006360:	00113c23          	sd	ra,24(sp)
    80006364:	00813823          	sd	s0,16(sp)
    80006368:	00913423          	sd	s1,8(sp)
    8000636c:	02010413          	addi	s0,sp,32
    80006370:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80006374:	01000513          	li	a0,16
    80006378:	ffffd097          	auipc	ra,0xffffd
    8000637c:	cd4080e7          	jalr	-812(ra) # 8000304c <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80006380:	00953023          	sd	s1,0(a0)
    80006384:	00053423          	sd	zero,8(a0)
        if (tail)
    80006388:	00004797          	auipc	a5,0x4
    8000638c:	4007b783          	ld	a5,1024(a5) # 8000a788 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80006390:	02078263          	beqz	a5,800063b4 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80006394:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80006398:	00004797          	auipc	a5,0x4
    8000639c:	3ea7b823          	sd	a0,1008(a5) # 8000a788 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800063a0:	01813083          	ld	ra,24(sp)
    800063a4:	01013403          	ld	s0,16(sp)
    800063a8:	00813483          	ld	s1,8(sp)
    800063ac:	02010113          	addi	sp,sp,32
    800063b0:	00008067          	ret
            head = tail = elem;
    800063b4:	00004797          	auipc	a5,0x4
    800063b8:	3cc78793          	addi	a5,a5,972 # 8000a780 <_ZN9Scheduler16readyThreadQueueE>
    800063bc:	00a7b423          	sd	a0,8(a5)
    800063c0:	00a7b023          	sd	a0,0(a5)
    800063c4:	fddff06f          	j	800063a0 <_ZN9Scheduler3putEP3TCB+0x44>

00000000800063c8 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800063c8:	ff010113          	addi	sp,sp,-16
    800063cc:	00113423          	sd	ra,8(sp)
    800063d0:	00813023          	sd	s0,0(sp)
    800063d4:	01010413          	addi	s0,sp,16
    800063d8:	000105b7          	lui	a1,0x10
    800063dc:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800063e0:	00100513          	li	a0,1
    800063e4:	00000097          	auipc	ra,0x0
    800063e8:	ed0080e7          	jalr	-304(ra) # 800062b4 <_Z41__static_initialization_and_destruction_0ii>
    800063ec:	00813083          	ld	ra,8(sp)
    800063f0:	00013403          	ld	s0,0(sp)
    800063f4:	01010113          	addi	sp,sp,16
    800063f8:	00008067          	ret

00000000800063fc <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    800063fc:	fd010113          	addi	sp,sp,-48
    80006400:	02113423          	sd	ra,40(sp)
    80006404:	02813023          	sd	s0,32(sp)
    80006408:	00913c23          	sd	s1,24(sp)
    8000640c:	01213823          	sd	s2,16(sp)
    80006410:	03010413          	addi	s0,sp,48
    80006414:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80006418:	100027f3          	csrr	a5,sstatus
    8000641c:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80006420:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80006424:	00200793          	li	a5,2
    80006428:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    while (*string != '\0') __putc(*string++);
    8000642c:	0004c503          	lbu	a0,0(s1)
    80006430:	00050a63          	beqz	a0,80006444 <_Z11printStringPKc+0x48>
    80006434:	00148493          	addi	s1,s1,1
    80006438:	00002097          	auipc	ra,0x2
    8000643c:	428080e7          	jalr	1064(ra) # 80008860 <__putc>
    80006440:	fedff06f          	j	8000642c <_Z11printStringPKc+0x30>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80006444:	0009091b          	sext.w	s2,s2
    80006448:	00297913          	andi	s2,s2,2
    8000644c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80006450:	10092073          	csrs	sstatus,s2
}
    80006454:	02813083          	ld	ra,40(sp)
    80006458:	02013403          	ld	s0,32(sp)
    8000645c:	01813483          	ld	s1,24(sp)
    80006460:	01013903          	ld	s2,16(sp)
    80006464:	03010113          	addi	sp,sp,48
    80006468:	00008067          	ret

000000008000646c <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    8000646c:	fc010113          	addi	sp,sp,-64
    80006470:	02113c23          	sd	ra,56(sp)
    80006474:	02813823          	sd	s0,48(sp)
    80006478:	02913423          	sd	s1,40(sp)
    8000647c:	03213023          	sd	s2,32(sp)
    80006480:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80006484:	100027f3          	csrr	a5,sstatus
    80006488:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    8000648c:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80006490:	00200793          	li	a5,2
    80006494:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    static char digits[] = "0123456789";
    char buf[16]; int i = 0; uint64 x = integer;
    int neg = (integer & ((uint64)1 << 63)) != 0;
    80006498:	00050593          	mv	a1,a0

    if (neg) x = ~integer + 1;
    8000649c:	06054463          	bltz	a0,80006504 <_Z12printIntegerm+0x98>
{
    800064a0:	00000493          	li	s1,0

    do buf[i++] = digits[x % 10];
    800064a4:	00a00713          	li	a4,10
    800064a8:	02e57633          	remu	a2,a0,a4
    800064ac:	00048693          	mv	a3,s1
    800064b0:	0014849b          	addiw	s1,s1,1
    800064b4:	00003797          	auipc	a5,0x3
    800064b8:	12478793          	addi	a5,a5,292 # 800095d8 <_ZZ12printIntegermE6digits>
    800064bc:	00c787b3          	add	a5,a5,a2
    800064c0:	0007c603          	lbu	a2,0(a5)
    800064c4:	fe040793          	addi	a5,s0,-32
    800064c8:	00d787b3          	add	a5,a5,a3
    800064cc:	fec78823          	sb	a2,-16(a5)
    while ((x /= 10) != 0);
    800064d0:	00050613          	mv	a2,a0
    800064d4:	02e55533          	divu	a0,a0,a4
    800064d8:	00900793          	li	a5,9
    800064dc:	fcc7e4e3          	bltu	a5,a2,800064a4 <_Z12printIntegerm+0x38>

    if (neg) buf[i++] = '-';
    800064e0:	0205c663          	bltz	a1,8000650c <_Z12printIntegerm+0xa0>
    while (--i >= 0) { __putc(buf[i]); }
    800064e4:	fff4849b          	addiw	s1,s1,-1
    800064e8:	0204ce63          	bltz	s1,80006524 <_Z12printIntegerm+0xb8>
    800064ec:	fe040793          	addi	a5,s0,-32
    800064f0:	009787b3          	add	a5,a5,s1
    800064f4:	ff07c503          	lbu	a0,-16(a5)
    800064f8:	00002097          	auipc	ra,0x2
    800064fc:	368080e7          	jalr	872(ra) # 80008860 <__putc>
    80006500:	fe5ff06f          	j	800064e4 <_Z12printIntegerm+0x78>
    if (neg) x = ~integer + 1;
    80006504:	40a00533          	neg	a0,a0
    80006508:	f99ff06f          	j	800064a0 <_Z12printIntegerm+0x34>
    if (neg) buf[i++] = '-';
    8000650c:	fe040793          	addi	a5,s0,-32
    80006510:	009784b3          	add	s1,a5,s1
    80006514:	02d00793          	li	a5,45
    80006518:	fef48823          	sb	a5,-16(s1)
    8000651c:	0026849b          	addiw	s1,a3,2
    80006520:	fc5ff06f          	j	800064e4 <_Z12printIntegerm+0x78>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80006524:	0009091b          	sext.w	s2,s2
    80006528:	00297913          	andi	s2,s2,2
    8000652c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80006530:	10092073          	csrs	sstatus,s2
}
    80006534:	03813083          	ld	ra,56(sp)
    80006538:	03013403          	ld	s0,48(sp)
    8000653c:	02813483          	ld	s1,40(sp)
    80006540:	02013903          	ld	s2,32(sp)
    80006544:	04010113          	addi	sp,sp,64
    80006548:	00008067          	ret

000000008000654c <_Z12printIntegerh>:


void printInteger(uint8 integer)
{
    8000654c:	ff010113          	addi	sp,sp,-16
    80006550:	00113423          	sd	ra,8(sp)
    80006554:	00813023          	sd	s0,0(sp)
    80006558:	01010413          	addi	s0,sp,16
    printInteger((uint64)integer);
    8000655c:	00000097          	auipc	ra,0x0
    80006560:	f10080e7          	jalr	-240(ra) # 8000646c <_Z12printIntegerm>
}
    80006564:	00813083          	ld	ra,8(sp)
    80006568:	00013403          	ld	s0,0(sp)
    8000656c:	01010113          	addi	sp,sp,16
    80006570:	00008067          	ret

0000000080006574 <start>:
    80006574:	ff010113          	addi	sp,sp,-16
    80006578:	00813423          	sd	s0,8(sp)
    8000657c:	01010413          	addi	s0,sp,16
    80006580:	300027f3          	csrr	a5,mstatus
    80006584:	ffffe737          	lui	a4,0xffffe
    80006588:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff2dff>
    8000658c:	00e7f7b3          	and	a5,a5,a4
    80006590:	00001737          	lui	a4,0x1
    80006594:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006598:	00e7e7b3          	or	a5,a5,a4
    8000659c:	30079073          	csrw	mstatus,a5
    800065a0:	00000797          	auipc	a5,0x0
    800065a4:	16078793          	addi	a5,a5,352 # 80006700 <system_main>
    800065a8:	34179073          	csrw	mepc,a5
    800065ac:	00000793          	li	a5,0
    800065b0:	18079073          	csrw	satp,a5
    800065b4:	000107b7          	lui	a5,0x10
    800065b8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800065bc:	30279073          	csrw	medeleg,a5
    800065c0:	30379073          	csrw	mideleg,a5
    800065c4:	104027f3          	csrr	a5,sie
    800065c8:	2227e793          	ori	a5,a5,546
    800065cc:	10479073          	csrw	sie,a5
    800065d0:	fff00793          	li	a5,-1
    800065d4:	00a7d793          	srli	a5,a5,0xa
    800065d8:	3b079073          	csrw	pmpaddr0,a5
    800065dc:	00f00793          	li	a5,15
    800065e0:	3a079073          	csrw	pmpcfg0,a5
    800065e4:	f14027f3          	csrr	a5,mhartid
    800065e8:	0200c737          	lui	a4,0x200c
    800065ec:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800065f0:	0007869b          	sext.w	a3,a5
    800065f4:	00269713          	slli	a4,a3,0x2
    800065f8:	000f4637          	lui	a2,0xf4
    800065fc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006600:	00d70733          	add	a4,a4,a3
    80006604:	0037979b          	slliw	a5,a5,0x3
    80006608:	020046b7          	lui	a3,0x2004
    8000660c:	00d787b3          	add	a5,a5,a3
    80006610:	00c585b3          	add	a1,a1,a2
    80006614:	00371693          	slli	a3,a4,0x3
    80006618:	00004717          	auipc	a4,0x4
    8000661c:	17870713          	addi	a4,a4,376 # 8000a790 <timer_scratch>
    80006620:	00b7b023          	sd	a1,0(a5)
    80006624:	00d70733          	add	a4,a4,a3
    80006628:	00f73c23          	sd	a5,24(a4)
    8000662c:	02c73023          	sd	a2,32(a4)
    80006630:	34071073          	csrw	mscratch,a4
    80006634:	00000797          	auipc	a5,0x0
    80006638:	6ec78793          	addi	a5,a5,1772 # 80006d20 <timervec>
    8000663c:	30579073          	csrw	mtvec,a5
    80006640:	300027f3          	csrr	a5,mstatus
    80006644:	0087e793          	ori	a5,a5,8
    80006648:	30079073          	csrw	mstatus,a5
    8000664c:	304027f3          	csrr	a5,mie
    80006650:	0807e793          	ori	a5,a5,128
    80006654:	30479073          	csrw	mie,a5
    80006658:	f14027f3          	csrr	a5,mhartid
    8000665c:	0007879b          	sext.w	a5,a5
    80006660:	00078213          	mv	tp,a5
    80006664:	30200073          	mret
    80006668:	00813403          	ld	s0,8(sp)
    8000666c:	01010113          	addi	sp,sp,16
    80006670:	00008067          	ret

0000000080006674 <timerinit>:
    80006674:	ff010113          	addi	sp,sp,-16
    80006678:	00813423          	sd	s0,8(sp)
    8000667c:	01010413          	addi	s0,sp,16
    80006680:	f14027f3          	csrr	a5,mhartid
    80006684:	0200c737          	lui	a4,0x200c
    80006688:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000668c:	0007869b          	sext.w	a3,a5
    80006690:	00269713          	slli	a4,a3,0x2
    80006694:	000f4637          	lui	a2,0xf4
    80006698:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000669c:	00d70733          	add	a4,a4,a3
    800066a0:	0037979b          	slliw	a5,a5,0x3
    800066a4:	020046b7          	lui	a3,0x2004
    800066a8:	00d787b3          	add	a5,a5,a3
    800066ac:	00c585b3          	add	a1,a1,a2
    800066b0:	00371693          	slli	a3,a4,0x3
    800066b4:	00004717          	auipc	a4,0x4
    800066b8:	0dc70713          	addi	a4,a4,220 # 8000a790 <timer_scratch>
    800066bc:	00b7b023          	sd	a1,0(a5)
    800066c0:	00d70733          	add	a4,a4,a3
    800066c4:	00f73c23          	sd	a5,24(a4)
    800066c8:	02c73023          	sd	a2,32(a4)
    800066cc:	34071073          	csrw	mscratch,a4
    800066d0:	00000797          	auipc	a5,0x0
    800066d4:	65078793          	addi	a5,a5,1616 # 80006d20 <timervec>
    800066d8:	30579073          	csrw	mtvec,a5
    800066dc:	300027f3          	csrr	a5,mstatus
    800066e0:	0087e793          	ori	a5,a5,8
    800066e4:	30079073          	csrw	mstatus,a5
    800066e8:	304027f3          	csrr	a5,mie
    800066ec:	0807e793          	ori	a5,a5,128
    800066f0:	30479073          	csrw	mie,a5
    800066f4:	00813403          	ld	s0,8(sp)
    800066f8:	01010113          	addi	sp,sp,16
    800066fc:	00008067          	ret

0000000080006700 <system_main>:
    80006700:	fe010113          	addi	sp,sp,-32
    80006704:	00813823          	sd	s0,16(sp)
    80006708:	00913423          	sd	s1,8(sp)
    8000670c:	00113c23          	sd	ra,24(sp)
    80006710:	02010413          	addi	s0,sp,32
    80006714:	00000097          	auipc	ra,0x0
    80006718:	0c4080e7          	jalr	196(ra) # 800067d8 <cpuid>
    8000671c:	00004497          	auipc	s1,0x4
    80006720:	00448493          	addi	s1,s1,4 # 8000a720 <started>
    80006724:	02050263          	beqz	a0,80006748 <system_main+0x48>
    80006728:	0004a783          	lw	a5,0(s1)
    8000672c:	0007879b          	sext.w	a5,a5
    80006730:	fe078ce3          	beqz	a5,80006728 <system_main+0x28>
    80006734:	0ff0000f          	fence
    80006738:	00003517          	auipc	a0,0x3
    8000673c:	ee050513          	addi	a0,a0,-288 # 80009618 <_ZZ12printIntegermE6digits+0x40>
    80006740:	00001097          	auipc	ra,0x1
    80006744:	a7c080e7          	jalr	-1412(ra) # 800071bc <panic>
    80006748:	00001097          	auipc	ra,0x1
    8000674c:	9d0080e7          	jalr	-1584(ra) # 80007118 <consoleinit>
    80006750:	00001097          	auipc	ra,0x1
    80006754:	15c080e7          	jalr	348(ra) # 800078ac <printfinit>
    80006758:	00003517          	auipc	a0,0x3
    8000675c:	9b850513          	addi	a0,a0,-1608 # 80009110 <CONSOLE_STATUS+0x100>
    80006760:	00001097          	auipc	ra,0x1
    80006764:	ab8080e7          	jalr	-1352(ra) # 80007218 <__printf>
    80006768:	00003517          	auipc	a0,0x3
    8000676c:	e8050513          	addi	a0,a0,-384 # 800095e8 <_ZZ12printIntegermE6digits+0x10>
    80006770:	00001097          	auipc	ra,0x1
    80006774:	aa8080e7          	jalr	-1368(ra) # 80007218 <__printf>
    80006778:	00003517          	auipc	a0,0x3
    8000677c:	99850513          	addi	a0,a0,-1640 # 80009110 <CONSOLE_STATUS+0x100>
    80006780:	00001097          	auipc	ra,0x1
    80006784:	a98080e7          	jalr	-1384(ra) # 80007218 <__printf>
    80006788:	00001097          	auipc	ra,0x1
    8000678c:	4b0080e7          	jalr	1200(ra) # 80007c38 <kinit>
    80006790:	00000097          	auipc	ra,0x0
    80006794:	148080e7          	jalr	328(ra) # 800068d8 <trapinit>
    80006798:	00000097          	auipc	ra,0x0
    8000679c:	16c080e7          	jalr	364(ra) # 80006904 <trapinithart>
    800067a0:	00000097          	auipc	ra,0x0
    800067a4:	5c0080e7          	jalr	1472(ra) # 80006d60 <plicinit>
    800067a8:	00000097          	auipc	ra,0x0
    800067ac:	5e0080e7          	jalr	1504(ra) # 80006d88 <plicinithart>
    800067b0:	00000097          	auipc	ra,0x0
    800067b4:	078080e7          	jalr	120(ra) # 80006828 <userinit>
    800067b8:	0ff0000f          	fence
    800067bc:	00100793          	li	a5,1
    800067c0:	00003517          	auipc	a0,0x3
    800067c4:	e4050513          	addi	a0,a0,-448 # 80009600 <_ZZ12printIntegermE6digits+0x28>
    800067c8:	00f4a023          	sw	a5,0(s1)
    800067cc:	00001097          	auipc	ra,0x1
    800067d0:	a4c080e7          	jalr	-1460(ra) # 80007218 <__printf>
    800067d4:	0000006f          	j	800067d4 <system_main+0xd4>

00000000800067d8 <cpuid>:
    800067d8:	ff010113          	addi	sp,sp,-16
    800067dc:	00813423          	sd	s0,8(sp)
    800067e0:	01010413          	addi	s0,sp,16
    800067e4:	00020513          	mv	a0,tp
    800067e8:	00813403          	ld	s0,8(sp)
    800067ec:	0005051b          	sext.w	a0,a0
    800067f0:	01010113          	addi	sp,sp,16
    800067f4:	00008067          	ret

00000000800067f8 <mycpu>:
    800067f8:	ff010113          	addi	sp,sp,-16
    800067fc:	00813423          	sd	s0,8(sp)
    80006800:	01010413          	addi	s0,sp,16
    80006804:	00020793          	mv	a5,tp
    80006808:	00813403          	ld	s0,8(sp)
    8000680c:	0007879b          	sext.w	a5,a5
    80006810:	00779793          	slli	a5,a5,0x7
    80006814:	00005517          	auipc	a0,0x5
    80006818:	fac50513          	addi	a0,a0,-84 # 8000b7c0 <cpus>
    8000681c:	00f50533          	add	a0,a0,a5
    80006820:	01010113          	addi	sp,sp,16
    80006824:	00008067          	ret

0000000080006828 <userinit>:
    80006828:	ff010113          	addi	sp,sp,-16
    8000682c:	00813423          	sd	s0,8(sp)
    80006830:	01010413          	addi	s0,sp,16
    80006834:	00813403          	ld	s0,8(sp)
    80006838:	01010113          	addi	sp,sp,16
    8000683c:	ffffb317          	auipc	t1,0xffffb
    80006840:	fa030067          	jr	-96(t1) # 800017dc <main>

0000000080006844 <either_copyout>:
    80006844:	ff010113          	addi	sp,sp,-16
    80006848:	00813023          	sd	s0,0(sp)
    8000684c:	00113423          	sd	ra,8(sp)
    80006850:	01010413          	addi	s0,sp,16
    80006854:	02051663          	bnez	a0,80006880 <either_copyout+0x3c>
    80006858:	00058513          	mv	a0,a1
    8000685c:	00060593          	mv	a1,a2
    80006860:	0006861b          	sext.w	a2,a3
    80006864:	00002097          	auipc	ra,0x2
    80006868:	c60080e7          	jalr	-928(ra) # 800084c4 <__memmove>
    8000686c:	00813083          	ld	ra,8(sp)
    80006870:	00013403          	ld	s0,0(sp)
    80006874:	00000513          	li	a0,0
    80006878:	01010113          	addi	sp,sp,16
    8000687c:	00008067          	ret
    80006880:	00003517          	auipc	a0,0x3
    80006884:	dc050513          	addi	a0,a0,-576 # 80009640 <_ZZ12printIntegermE6digits+0x68>
    80006888:	00001097          	auipc	ra,0x1
    8000688c:	934080e7          	jalr	-1740(ra) # 800071bc <panic>

0000000080006890 <either_copyin>:
    80006890:	ff010113          	addi	sp,sp,-16
    80006894:	00813023          	sd	s0,0(sp)
    80006898:	00113423          	sd	ra,8(sp)
    8000689c:	01010413          	addi	s0,sp,16
    800068a0:	02059463          	bnez	a1,800068c8 <either_copyin+0x38>
    800068a4:	00060593          	mv	a1,a2
    800068a8:	0006861b          	sext.w	a2,a3
    800068ac:	00002097          	auipc	ra,0x2
    800068b0:	c18080e7          	jalr	-1000(ra) # 800084c4 <__memmove>
    800068b4:	00813083          	ld	ra,8(sp)
    800068b8:	00013403          	ld	s0,0(sp)
    800068bc:	00000513          	li	a0,0
    800068c0:	01010113          	addi	sp,sp,16
    800068c4:	00008067          	ret
    800068c8:	00003517          	auipc	a0,0x3
    800068cc:	da050513          	addi	a0,a0,-608 # 80009668 <_ZZ12printIntegermE6digits+0x90>
    800068d0:	00001097          	auipc	ra,0x1
    800068d4:	8ec080e7          	jalr	-1812(ra) # 800071bc <panic>

00000000800068d8 <trapinit>:
    800068d8:	ff010113          	addi	sp,sp,-16
    800068dc:	00813423          	sd	s0,8(sp)
    800068e0:	01010413          	addi	s0,sp,16
    800068e4:	00813403          	ld	s0,8(sp)
    800068e8:	00003597          	auipc	a1,0x3
    800068ec:	da858593          	addi	a1,a1,-600 # 80009690 <_ZZ12printIntegermE6digits+0xb8>
    800068f0:	00005517          	auipc	a0,0x5
    800068f4:	f5050513          	addi	a0,a0,-176 # 8000b840 <tickslock>
    800068f8:	01010113          	addi	sp,sp,16
    800068fc:	00001317          	auipc	t1,0x1
    80006900:	5cc30067          	jr	1484(t1) # 80007ec8 <initlock>

0000000080006904 <trapinithart>:
    80006904:	ff010113          	addi	sp,sp,-16
    80006908:	00813423          	sd	s0,8(sp)
    8000690c:	01010413          	addi	s0,sp,16
    80006910:	00000797          	auipc	a5,0x0
    80006914:	30078793          	addi	a5,a5,768 # 80006c10 <kernelvec>
    80006918:	10579073          	csrw	stvec,a5
    8000691c:	00813403          	ld	s0,8(sp)
    80006920:	01010113          	addi	sp,sp,16
    80006924:	00008067          	ret

0000000080006928 <usertrap>:
    80006928:	ff010113          	addi	sp,sp,-16
    8000692c:	00813423          	sd	s0,8(sp)
    80006930:	01010413          	addi	s0,sp,16
    80006934:	00813403          	ld	s0,8(sp)
    80006938:	01010113          	addi	sp,sp,16
    8000693c:	00008067          	ret

0000000080006940 <usertrapret>:
    80006940:	ff010113          	addi	sp,sp,-16
    80006944:	00813423          	sd	s0,8(sp)
    80006948:	01010413          	addi	s0,sp,16
    8000694c:	00813403          	ld	s0,8(sp)
    80006950:	01010113          	addi	sp,sp,16
    80006954:	00008067          	ret

0000000080006958 <kerneltrap>:
    80006958:	fe010113          	addi	sp,sp,-32
    8000695c:	00813823          	sd	s0,16(sp)
    80006960:	00113c23          	sd	ra,24(sp)
    80006964:	00913423          	sd	s1,8(sp)
    80006968:	02010413          	addi	s0,sp,32
    8000696c:	142025f3          	csrr	a1,scause
    80006970:	100027f3          	csrr	a5,sstatus
    80006974:	0027f793          	andi	a5,a5,2
    80006978:	10079c63          	bnez	a5,80006a90 <kerneltrap+0x138>
    8000697c:	142027f3          	csrr	a5,scause
    80006980:	0207ce63          	bltz	a5,800069bc <kerneltrap+0x64>
    80006984:	00003517          	auipc	a0,0x3
    80006988:	d5450513          	addi	a0,a0,-684 # 800096d8 <_ZZ12printIntegermE6digits+0x100>
    8000698c:	00001097          	auipc	ra,0x1
    80006990:	88c080e7          	jalr	-1908(ra) # 80007218 <__printf>
    80006994:	141025f3          	csrr	a1,sepc
    80006998:	14302673          	csrr	a2,stval
    8000699c:	00003517          	auipc	a0,0x3
    800069a0:	d4c50513          	addi	a0,a0,-692 # 800096e8 <_ZZ12printIntegermE6digits+0x110>
    800069a4:	00001097          	auipc	ra,0x1
    800069a8:	874080e7          	jalr	-1932(ra) # 80007218 <__printf>
    800069ac:	00003517          	auipc	a0,0x3
    800069b0:	d5450513          	addi	a0,a0,-684 # 80009700 <_ZZ12printIntegermE6digits+0x128>
    800069b4:	00001097          	auipc	ra,0x1
    800069b8:	808080e7          	jalr	-2040(ra) # 800071bc <panic>
    800069bc:	0ff7f713          	andi	a4,a5,255
    800069c0:	00900693          	li	a3,9
    800069c4:	04d70063          	beq	a4,a3,80006a04 <kerneltrap+0xac>
    800069c8:	fff00713          	li	a4,-1
    800069cc:	03f71713          	slli	a4,a4,0x3f
    800069d0:	00170713          	addi	a4,a4,1
    800069d4:	fae798e3          	bne	a5,a4,80006984 <kerneltrap+0x2c>
    800069d8:	00000097          	auipc	ra,0x0
    800069dc:	e00080e7          	jalr	-512(ra) # 800067d8 <cpuid>
    800069e0:	06050663          	beqz	a0,80006a4c <kerneltrap+0xf4>
    800069e4:	144027f3          	csrr	a5,sip
    800069e8:	ffd7f793          	andi	a5,a5,-3
    800069ec:	14479073          	csrw	sip,a5
    800069f0:	01813083          	ld	ra,24(sp)
    800069f4:	01013403          	ld	s0,16(sp)
    800069f8:	00813483          	ld	s1,8(sp)
    800069fc:	02010113          	addi	sp,sp,32
    80006a00:	00008067          	ret
    80006a04:	00000097          	auipc	ra,0x0
    80006a08:	3d0080e7          	jalr	976(ra) # 80006dd4 <plic_claim>
    80006a0c:	00a00793          	li	a5,10
    80006a10:	00050493          	mv	s1,a0
    80006a14:	06f50863          	beq	a0,a5,80006a84 <kerneltrap+0x12c>
    80006a18:	fc050ce3          	beqz	a0,800069f0 <kerneltrap+0x98>
    80006a1c:	00050593          	mv	a1,a0
    80006a20:	00003517          	auipc	a0,0x3
    80006a24:	c9850513          	addi	a0,a0,-872 # 800096b8 <_ZZ12printIntegermE6digits+0xe0>
    80006a28:	00000097          	auipc	ra,0x0
    80006a2c:	7f0080e7          	jalr	2032(ra) # 80007218 <__printf>
    80006a30:	01013403          	ld	s0,16(sp)
    80006a34:	01813083          	ld	ra,24(sp)
    80006a38:	00048513          	mv	a0,s1
    80006a3c:	00813483          	ld	s1,8(sp)
    80006a40:	02010113          	addi	sp,sp,32
    80006a44:	00000317          	auipc	t1,0x0
    80006a48:	3c830067          	jr	968(t1) # 80006e0c <plic_complete>
    80006a4c:	00005517          	auipc	a0,0x5
    80006a50:	df450513          	addi	a0,a0,-524 # 8000b840 <tickslock>
    80006a54:	00001097          	auipc	ra,0x1
    80006a58:	498080e7          	jalr	1176(ra) # 80007eec <acquire>
    80006a5c:	00004717          	auipc	a4,0x4
    80006a60:	cc870713          	addi	a4,a4,-824 # 8000a724 <ticks>
    80006a64:	00072783          	lw	a5,0(a4)
    80006a68:	00005517          	auipc	a0,0x5
    80006a6c:	dd850513          	addi	a0,a0,-552 # 8000b840 <tickslock>
    80006a70:	0017879b          	addiw	a5,a5,1
    80006a74:	00f72023          	sw	a5,0(a4)
    80006a78:	00001097          	auipc	ra,0x1
    80006a7c:	540080e7          	jalr	1344(ra) # 80007fb8 <release>
    80006a80:	f65ff06f          	j	800069e4 <kerneltrap+0x8c>
    80006a84:	00001097          	auipc	ra,0x1
    80006a88:	09c080e7          	jalr	156(ra) # 80007b20 <uartintr>
    80006a8c:	fa5ff06f          	j	80006a30 <kerneltrap+0xd8>
    80006a90:	00003517          	auipc	a0,0x3
    80006a94:	c0850513          	addi	a0,a0,-1016 # 80009698 <_ZZ12printIntegermE6digits+0xc0>
    80006a98:	00000097          	auipc	ra,0x0
    80006a9c:	724080e7          	jalr	1828(ra) # 800071bc <panic>

0000000080006aa0 <clockintr>:
    80006aa0:	fe010113          	addi	sp,sp,-32
    80006aa4:	00813823          	sd	s0,16(sp)
    80006aa8:	00913423          	sd	s1,8(sp)
    80006aac:	00113c23          	sd	ra,24(sp)
    80006ab0:	02010413          	addi	s0,sp,32
    80006ab4:	00005497          	auipc	s1,0x5
    80006ab8:	d8c48493          	addi	s1,s1,-628 # 8000b840 <tickslock>
    80006abc:	00048513          	mv	a0,s1
    80006ac0:	00001097          	auipc	ra,0x1
    80006ac4:	42c080e7          	jalr	1068(ra) # 80007eec <acquire>
    80006ac8:	00004717          	auipc	a4,0x4
    80006acc:	c5c70713          	addi	a4,a4,-932 # 8000a724 <ticks>
    80006ad0:	00072783          	lw	a5,0(a4)
    80006ad4:	01013403          	ld	s0,16(sp)
    80006ad8:	01813083          	ld	ra,24(sp)
    80006adc:	00048513          	mv	a0,s1
    80006ae0:	0017879b          	addiw	a5,a5,1
    80006ae4:	00813483          	ld	s1,8(sp)
    80006ae8:	00f72023          	sw	a5,0(a4)
    80006aec:	02010113          	addi	sp,sp,32
    80006af0:	00001317          	auipc	t1,0x1
    80006af4:	4c830067          	jr	1224(t1) # 80007fb8 <release>

0000000080006af8 <devintr>:
    80006af8:	142027f3          	csrr	a5,scause
    80006afc:	00000513          	li	a0,0
    80006b00:	0007c463          	bltz	a5,80006b08 <devintr+0x10>
    80006b04:	00008067          	ret
    80006b08:	fe010113          	addi	sp,sp,-32
    80006b0c:	00813823          	sd	s0,16(sp)
    80006b10:	00113c23          	sd	ra,24(sp)
    80006b14:	00913423          	sd	s1,8(sp)
    80006b18:	02010413          	addi	s0,sp,32
    80006b1c:	0ff7f713          	andi	a4,a5,255
    80006b20:	00900693          	li	a3,9
    80006b24:	04d70c63          	beq	a4,a3,80006b7c <devintr+0x84>
    80006b28:	fff00713          	li	a4,-1
    80006b2c:	03f71713          	slli	a4,a4,0x3f
    80006b30:	00170713          	addi	a4,a4,1
    80006b34:	00e78c63          	beq	a5,a4,80006b4c <devintr+0x54>
    80006b38:	01813083          	ld	ra,24(sp)
    80006b3c:	01013403          	ld	s0,16(sp)
    80006b40:	00813483          	ld	s1,8(sp)
    80006b44:	02010113          	addi	sp,sp,32
    80006b48:	00008067          	ret
    80006b4c:	00000097          	auipc	ra,0x0
    80006b50:	c8c080e7          	jalr	-884(ra) # 800067d8 <cpuid>
    80006b54:	06050663          	beqz	a0,80006bc0 <devintr+0xc8>
    80006b58:	144027f3          	csrr	a5,sip
    80006b5c:	ffd7f793          	andi	a5,a5,-3
    80006b60:	14479073          	csrw	sip,a5
    80006b64:	01813083          	ld	ra,24(sp)
    80006b68:	01013403          	ld	s0,16(sp)
    80006b6c:	00813483          	ld	s1,8(sp)
    80006b70:	00200513          	li	a0,2
    80006b74:	02010113          	addi	sp,sp,32
    80006b78:	00008067          	ret
    80006b7c:	00000097          	auipc	ra,0x0
    80006b80:	258080e7          	jalr	600(ra) # 80006dd4 <plic_claim>
    80006b84:	00a00793          	li	a5,10
    80006b88:	00050493          	mv	s1,a0
    80006b8c:	06f50663          	beq	a0,a5,80006bf8 <devintr+0x100>
    80006b90:	00100513          	li	a0,1
    80006b94:	fa0482e3          	beqz	s1,80006b38 <devintr+0x40>
    80006b98:	00048593          	mv	a1,s1
    80006b9c:	00003517          	auipc	a0,0x3
    80006ba0:	b1c50513          	addi	a0,a0,-1252 # 800096b8 <_ZZ12printIntegermE6digits+0xe0>
    80006ba4:	00000097          	auipc	ra,0x0
    80006ba8:	674080e7          	jalr	1652(ra) # 80007218 <__printf>
    80006bac:	00048513          	mv	a0,s1
    80006bb0:	00000097          	auipc	ra,0x0
    80006bb4:	25c080e7          	jalr	604(ra) # 80006e0c <plic_complete>
    80006bb8:	00100513          	li	a0,1
    80006bbc:	f7dff06f          	j	80006b38 <devintr+0x40>
    80006bc0:	00005517          	auipc	a0,0x5
    80006bc4:	c8050513          	addi	a0,a0,-896 # 8000b840 <tickslock>
    80006bc8:	00001097          	auipc	ra,0x1
    80006bcc:	324080e7          	jalr	804(ra) # 80007eec <acquire>
    80006bd0:	00004717          	auipc	a4,0x4
    80006bd4:	b5470713          	addi	a4,a4,-1196 # 8000a724 <ticks>
    80006bd8:	00072783          	lw	a5,0(a4)
    80006bdc:	00005517          	auipc	a0,0x5
    80006be0:	c6450513          	addi	a0,a0,-924 # 8000b840 <tickslock>
    80006be4:	0017879b          	addiw	a5,a5,1
    80006be8:	00f72023          	sw	a5,0(a4)
    80006bec:	00001097          	auipc	ra,0x1
    80006bf0:	3cc080e7          	jalr	972(ra) # 80007fb8 <release>
    80006bf4:	f65ff06f          	j	80006b58 <devintr+0x60>
    80006bf8:	00001097          	auipc	ra,0x1
    80006bfc:	f28080e7          	jalr	-216(ra) # 80007b20 <uartintr>
    80006c00:	fadff06f          	j	80006bac <devintr+0xb4>
	...

0000000080006c10 <kernelvec>:
    80006c10:	f0010113          	addi	sp,sp,-256
    80006c14:	00113023          	sd	ra,0(sp)
    80006c18:	00213423          	sd	sp,8(sp)
    80006c1c:	00313823          	sd	gp,16(sp)
    80006c20:	00413c23          	sd	tp,24(sp)
    80006c24:	02513023          	sd	t0,32(sp)
    80006c28:	02613423          	sd	t1,40(sp)
    80006c2c:	02713823          	sd	t2,48(sp)
    80006c30:	02813c23          	sd	s0,56(sp)
    80006c34:	04913023          	sd	s1,64(sp)
    80006c38:	04a13423          	sd	a0,72(sp)
    80006c3c:	04b13823          	sd	a1,80(sp)
    80006c40:	04c13c23          	sd	a2,88(sp)
    80006c44:	06d13023          	sd	a3,96(sp)
    80006c48:	06e13423          	sd	a4,104(sp)
    80006c4c:	06f13823          	sd	a5,112(sp)
    80006c50:	07013c23          	sd	a6,120(sp)
    80006c54:	09113023          	sd	a7,128(sp)
    80006c58:	09213423          	sd	s2,136(sp)
    80006c5c:	09313823          	sd	s3,144(sp)
    80006c60:	09413c23          	sd	s4,152(sp)
    80006c64:	0b513023          	sd	s5,160(sp)
    80006c68:	0b613423          	sd	s6,168(sp)
    80006c6c:	0b713823          	sd	s7,176(sp)
    80006c70:	0b813c23          	sd	s8,184(sp)
    80006c74:	0d913023          	sd	s9,192(sp)
    80006c78:	0da13423          	sd	s10,200(sp)
    80006c7c:	0db13823          	sd	s11,208(sp)
    80006c80:	0dc13c23          	sd	t3,216(sp)
    80006c84:	0fd13023          	sd	t4,224(sp)
    80006c88:	0fe13423          	sd	t5,232(sp)
    80006c8c:	0ff13823          	sd	t6,240(sp)
    80006c90:	cc9ff0ef          	jal	ra,80006958 <kerneltrap>
    80006c94:	00013083          	ld	ra,0(sp)
    80006c98:	00813103          	ld	sp,8(sp)
    80006c9c:	01013183          	ld	gp,16(sp)
    80006ca0:	02013283          	ld	t0,32(sp)
    80006ca4:	02813303          	ld	t1,40(sp)
    80006ca8:	03013383          	ld	t2,48(sp)
    80006cac:	03813403          	ld	s0,56(sp)
    80006cb0:	04013483          	ld	s1,64(sp)
    80006cb4:	04813503          	ld	a0,72(sp)
    80006cb8:	05013583          	ld	a1,80(sp)
    80006cbc:	05813603          	ld	a2,88(sp)
    80006cc0:	06013683          	ld	a3,96(sp)
    80006cc4:	06813703          	ld	a4,104(sp)
    80006cc8:	07013783          	ld	a5,112(sp)
    80006ccc:	07813803          	ld	a6,120(sp)
    80006cd0:	08013883          	ld	a7,128(sp)
    80006cd4:	08813903          	ld	s2,136(sp)
    80006cd8:	09013983          	ld	s3,144(sp)
    80006cdc:	09813a03          	ld	s4,152(sp)
    80006ce0:	0a013a83          	ld	s5,160(sp)
    80006ce4:	0a813b03          	ld	s6,168(sp)
    80006ce8:	0b013b83          	ld	s7,176(sp)
    80006cec:	0b813c03          	ld	s8,184(sp)
    80006cf0:	0c013c83          	ld	s9,192(sp)
    80006cf4:	0c813d03          	ld	s10,200(sp)
    80006cf8:	0d013d83          	ld	s11,208(sp)
    80006cfc:	0d813e03          	ld	t3,216(sp)
    80006d00:	0e013e83          	ld	t4,224(sp)
    80006d04:	0e813f03          	ld	t5,232(sp)
    80006d08:	0f013f83          	ld	t6,240(sp)
    80006d0c:	10010113          	addi	sp,sp,256
    80006d10:	10200073          	sret
    80006d14:	00000013          	nop
    80006d18:	00000013          	nop
    80006d1c:	00000013          	nop

0000000080006d20 <timervec>:
    80006d20:	34051573          	csrrw	a0,mscratch,a0
    80006d24:	00b53023          	sd	a1,0(a0)
    80006d28:	00c53423          	sd	a2,8(a0)
    80006d2c:	00d53823          	sd	a3,16(a0)
    80006d30:	01853583          	ld	a1,24(a0)
    80006d34:	02053603          	ld	a2,32(a0)
    80006d38:	0005b683          	ld	a3,0(a1)
    80006d3c:	00c686b3          	add	a3,a3,a2
    80006d40:	00d5b023          	sd	a3,0(a1)
    80006d44:	00200593          	li	a1,2
    80006d48:	14459073          	csrw	sip,a1
    80006d4c:	01053683          	ld	a3,16(a0)
    80006d50:	00853603          	ld	a2,8(a0)
    80006d54:	00053583          	ld	a1,0(a0)
    80006d58:	34051573          	csrrw	a0,mscratch,a0
    80006d5c:	30200073          	mret

0000000080006d60 <plicinit>:
    80006d60:	ff010113          	addi	sp,sp,-16
    80006d64:	00813423          	sd	s0,8(sp)
    80006d68:	01010413          	addi	s0,sp,16
    80006d6c:	00813403          	ld	s0,8(sp)
    80006d70:	0c0007b7          	lui	a5,0xc000
    80006d74:	00100713          	li	a4,1
    80006d78:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006d7c:	00e7a223          	sw	a4,4(a5)
    80006d80:	01010113          	addi	sp,sp,16
    80006d84:	00008067          	ret

0000000080006d88 <plicinithart>:
    80006d88:	ff010113          	addi	sp,sp,-16
    80006d8c:	00813023          	sd	s0,0(sp)
    80006d90:	00113423          	sd	ra,8(sp)
    80006d94:	01010413          	addi	s0,sp,16
    80006d98:	00000097          	auipc	ra,0x0
    80006d9c:	a40080e7          	jalr	-1472(ra) # 800067d8 <cpuid>
    80006da0:	0085171b          	slliw	a4,a0,0x8
    80006da4:	0c0027b7          	lui	a5,0xc002
    80006da8:	00e787b3          	add	a5,a5,a4
    80006dac:	40200713          	li	a4,1026
    80006db0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006db4:	00813083          	ld	ra,8(sp)
    80006db8:	00013403          	ld	s0,0(sp)
    80006dbc:	00d5151b          	slliw	a0,a0,0xd
    80006dc0:	0c2017b7          	lui	a5,0xc201
    80006dc4:	00a78533          	add	a0,a5,a0
    80006dc8:	00052023          	sw	zero,0(a0)
    80006dcc:	01010113          	addi	sp,sp,16
    80006dd0:	00008067          	ret

0000000080006dd4 <plic_claim>:
    80006dd4:	ff010113          	addi	sp,sp,-16
    80006dd8:	00813023          	sd	s0,0(sp)
    80006ddc:	00113423          	sd	ra,8(sp)
    80006de0:	01010413          	addi	s0,sp,16
    80006de4:	00000097          	auipc	ra,0x0
    80006de8:	9f4080e7          	jalr	-1548(ra) # 800067d8 <cpuid>
    80006dec:	00813083          	ld	ra,8(sp)
    80006df0:	00013403          	ld	s0,0(sp)
    80006df4:	00d5151b          	slliw	a0,a0,0xd
    80006df8:	0c2017b7          	lui	a5,0xc201
    80006dfc:	00a78533          	add	a0,a5,a0
    80006e00:	00452503          	lw	a0,4(a0)
    80006e04:	01010113          	addi	sp,sp,16
    80006e08:	00008067          	ret

0000000080006e0c <plic_complete>:
    80006e0c:	fe010113          	addi	sp,sp,-32
    80006e10:	00813823          	sd	s0,16(sp)
    80006e14:	00913423          	sd	s1,8(sp)
    80006e18:	00113c23          	sd	ra,24(sp)
    80006e1c:	02010413          	addi	s0,sp,32
    80006e20:	00050493          	mv	s1,a0
    80006e24:	00000097          	auipc	ra,0x0
    80006e28:	9b4080e7          	jalr	-1612(ra) # 800067d8 <cpuid>
    80006e2c:	01813083          	ld	ra,24(sp)
    80006e30:	01013403          	ld	s0,16(sp)
    80006e34:	00d5179b          	slliw	a5,a0,0xd
    80006e38:	0c201737          	lui	a4,0xc201
    80006e3c:	00f707b3          	add	a5,a4,a5
    80006e40:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006e44:	00813483          	ld	s1,8(sp)
    80006e48:	02010113          	addi	sp,sp,32
    80006e4c:	00008067          	ret

0000000080006e50 <consolewrite>:
    80006e50:	fb010113          	addi	sp,sp,-80
    80006e54:	04813023          	sd	s0,64(sp)
    80006e58:	04113423          	sd	ra,72(sp)
    80006e5c:	02913c23          	sd	s1,56(sp)
    80006e60:	03213823          	sd	s2,48(sp)
    80006e64:	03313423          	sd	s3,40(sp)
    80006e68:	03413023          	sd	s4,32(sp)
    80006e6c:	01513c23          	sd	s5,24(sp)
    80006e70:	05010413          	addi	s0,sp,80
    80006e74:	06c05c63          	blez	a2,80006eec <consolewrite+0x9c>
    80006e78:	00060993          	mv	s3,a2
    80006e7c:	00050a13          	mv	s4,a0
    80006e80:	00058493          	mv	s1,a1
    80006e84:	00000913          	li	s2,0
    80006e88:	fff00a93          	li	s5,-1
    80006e8c:	01c0006f          	j	80006ea8 <consolewrite+0x58>
    80006e90:	fbf44503          	lbu	a0,-65(s0)
    80006e94:	0019091b          	addiw	s2,s2,1
    80006e98:	00148493          	addi	s1,s1,1
    80006e9c:	00001097          	auipc	ra,0x1
    80006ea0:	a9c080e7          	jalr	-1380(ra) # 80007938 <uartputc>
    80006ea4:	03298063          	beq	s3,s2,80006ec4 <consolewrite+0x74>
    80006ea8:	00048613          	mv	a2,s1
    80006eac:	00100693          	li	a3,1
    80006eb0:	000a0593          	mv	a1,s4
    80006eb4:	fbf40513          	addi	a0,s0,-65
    80006eb8:	00000097          	auipc	ra,0x0
    80006ebc:	9d8080e7          	jalr	-1576(ra) # 80006890 <either_copyin>
    80006ec0:	fd5518e3          	bne	a0,s5,80006e90 <consolewrite+0x40>
    80006ec4:	04813083          	ld	ra,72(sp)
    80006ec8:	04013403          	ld	s0,64(sp)
    80006ecc:	03813483          	ld	s1,56(sp)
    80006ed0:	02813983          	ld	s3,40(sp)
    80006ed4:	02013a03          	ld	s4,32(sp)
    80006ed8:	01813a83          	ld	s5,24(sp)
    80006edc:	00090513          	mv	a0,s2
    80006ee0:	03013903          	ld	s2,48(sp)
    80006ee4:	05010113          	addi	sp,sp,80
    80006ee8:	00008067          	ret
    80006eec:	00000913          	li	s2,0
    80006ef0:	fd5ff06f          	j	80006ec4 <consolewrite+0x74>

0000000080006ef4 <consoleread>:
    80006ef4:	f9010113          	addi	sp,sp,-112
    80006ef8:	06813023          	sd	s0,96(sp)
    80006efc:	04913c23          	sd	s1,88(sp)
    80006f00:	05213823          	sd	s2,80(sp)
    80006f04:	05313423          	sd	s3,72(sp)
    80006f08:	05413023          	sd	s4,64(sp)
    80006f0c:	03513c23          	sd	s5,56(sp)
    80006f10:	03613823          	sd	s6,48(sp)
    80006f14:	03713423          	sd	s7,40(sp)
    80006f18:	03813023          	sd	s8,32(sp)
    80006f1c:	06113423          	sd	ra,104(sp)
    80006f20:	01913c23          	sd	s9,24(sp)
    80006f24:	07010413          	addi	s0,sp,112
    80006f28:	00060b93          	mv	s7,a2
    80006f2c:	00050913          	mv	s2,a0
    80006f30:	00058c13          	mv	s8,a1
    80006f34:	00060b1b          	sext.w	s6,a2
    80006f38:	00005497          	auipc	s1,0x5
    80006f3c:	93048493          	addi	s1,s1,-1744 # 8000b868 <cons>
    80006f40:	00400993          	li	s3,4
    80006f44:	fff00a13          	li	s4,-1
    80006f48:	00a00a93          	li	s5,10
    80006f4c:	05705e63          	blez	s7,80006fa8 <consoleread+0xb4>
    80006f50:	09c4a703          	lw	a4,156(s1)
    80006f54:	0984a783          	lw	a5,152(s1)
    80006f58:	0007071b          	sext.w	a4,a4
    80006f5c:	08e78463          	beq	a5,a4,80006fe4 <consoleread+0xf0>
    80006f60:	07f7f713          	andi	a4,a5,127
    80006f64:	00e48733          	add	a4,s1,a4
    80006f68:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006f6c:	0017869b          	addiw	a3,a5,1
    80006f70:	08d4ac23          	sw	a3,152(s1)
    80006f74:	00070c9b          	sext.w	s9,a4
    80006f78:	0b370663          	beq	a4,s3,80007024 <consoleread+0x130>
    80006f7c:	00100693          	li	a3,1
    80006f80:	f9f40613          	addi	a2,s0,-97
    80006f84:	000c0593          	mv	a1,s8
    80006f88:	00090513          	mv	a0,s2
    80006f8c:	f8e40fa3          	sb	a4,-97(s0)
    80006f90:	00000097          	auipc	ra,0x0
    80006f94:	8b4080e7          	jalr	-1868(ra) # 80006844 <either_copyout>
    80006f98:	01450863          	beq	a0,s4,80006fa8 <consoleread+0xb4>
    80006f9c:	001c0c13          	addi	s8,s8,1
    80006fa0:	fffb8b9b          	addiw	s7,s7,-1
    80006fa4:	fb5c94e3          	bne	s9,s5,80006f4c <consoleread+0x58>
    80006fa8:	000b851b          	sext.w	a0,s7
    80006fac:	06813083          	ld	ra,104(sp)
    80006fb0:	06013403          	ld	s0,96(sp)
    80006fb4:	05813483          	ld	s1,88(sp)
    80006fb8:	05013903          	ld	s2,80(sp)
    80006fbc:	04813983          	ld	s3,72(sp)
    80006fc0:	04013a03          	ld	s4,64(sp)
    80006fc4:	03813a83          	ld	s5,56(sp)
    80006fc8:	02813b83          	ld	s7,40(sp)
    80006fcc:	02013c03          	ld	s8,32(sp)
    80006fd0:	01813c83          	ld	s9,24(sp)
    80006fd4:	40ab053b          	subw	a0,s6,a0
    80006fd8:	03013b03          	ld	s6,48(sp)
    80006fdc:	07010113          	addi	sp,sp,112
    80006fe0:	00008067          	ret
    80006fe4:	00001097          	auipc	ra,0x1
    80006fe8:	1d8080e7          	jalr	472(ra) # 800081bc <push_on>
    80006fec:	0984a703          	lw	a4,152(s1)
    80006ff0:	09c4a783          	lw	a5,156(s1)
    80006ff4:	0007879b          	sext.w	a5,a5
    80006ff8:	fef70ce3          	beq	a4,a5,80006ff0 <consoleread+0xfc>
    80006ffc:	00001097          	auipc	ra,0x1
    80007000:	234080e7          	jalr	564(ra) # 80008230 <pop_on>
    80007004:	0984a783          	lw	a5,152(s1)
    80007008:	07f7f713          	andi	a4,a5,127
    8000700c:	00e48733          	add	a4,s1,a4
    80007010:	01874703          	lbu	a4,24(a4)
    80007014:	0017869b          	addiw	a3,a5,1
    80007018:	08d4ac23          	sw	a3,152(s1)
    8000701c:	00070c9b          	sext.w	s9,a4
    80007020:	f5371ee3          	bne	a4,s3,80006f7c <consoleread+0x88>
    80007024:	000b851b          	sext.w	a0,s7
    80007028:	f96bf2e3          	bgeu	s7,s6,80006fac <consoleread+0xb8>
    8000702c:	08f4ac23          	sw	a5,152(s1)
    80007030:	f7dff06f          	j	80006fac <consoleread+0xb8>

0000000080007034 <consputc>:
    80007034:	10000793          	li	a5,256
    80007038:	00f50663          	beq	a0,a5,80007044 <consputc+0x10>
    8000703c:	00001317          	auipc	t1,0x1
    80007040:	9f430067          	jr	-1548(t1) # 80007a30 <uartputc_sync>
    80007044:	ff010113          	addi	sp,sp,-16
    80007048:	00113423          	sd	ra,8(sp)
    8000704c:	00813023          	sd	s0,0(sp)
    80007050:	01010413          	addi	s0,sp,16
    80007054:	00800513          	li	a0,8
    80007058:	00001097          	auipc	ra,0x1
    8000705c:	9d8080e7          	jalr	-1576(ra) # 80007a30 <uartputc_sync>
    80007060:	02000513          	li	a0,32
    80007064:	00001097          	auipc	ra,0x1
    80007068:	9cc080e7          	jalr	-1588(ra) # 80007a30 <uartputc_sync>
    8000706c:	00013403          	ld	s0,0(sp)
    80007070:	00813083          	ld	ra,8(sp)
    80007074:	00800513          	li	a0,8
    80007078:	01010113          	addi	sp,sp,16
    8000707c:	00001317          	auipc	t1,0x1
    80007080:	9b430067          	jr	-1612(t1) # 80007a30 <uartputc_sync>

0000000080007084 <consoleintr>:
    80007084:	fe010113          	addi	sp,sp,-32
    80007088:	00813823          	sd	s0,16(sp)
    8000708c:	00913423          	sd	s1,8(sp)
    80007090:	01213023          	sd	s2,0(sp)
    80007094:	00113c23          	sd	ra,24(sp)
    80007098:	02010413          	addi	s0,sp,32
    8000709c:	00004917          	auipc	s2,0x4
    800070a0:	7cc90913          	addi	s2,s2,1996 # 8000b868 <cons>
    800070a4:	00050493          	mv	s1,a0
    800070a8:	00090513          	mv	a0,s2
    800070ac:	00001097          	auipc	ra,0x1
    800070b0:	e40080e7          	jalr	-448(ra) # 80007eec <acquire>
    800070b4:	02048c63          	beqz	s1,800070ec <consoleintr+0x68>
    800070b8:	0a092783          	lw	a5,160(s2)
    800070bc:	09892703          	lw	a4,152(s2)
    800070c0:	07f00693          	li	a3,127
    800070c4:	40e7873b          	subw	a4,a5,a4
    800070c8:	02e6e263          	bltu	a3,a4,800070ec <consoleintr+0x68>
    800070cc:	00d00713          	li	a4,13
    800070d0:	04e48063          	beq	s1,a4,80007110 <consoleintr+0x8c>
    800070d4:	07f7f713          	andi	a4,a5,127
    800070d8:	00e90733          	add	a4,s2,a4
    800070dc:	0017879b          	addiw	a5,a5,1
    800070e0:	0af92023          	sw	a5,160(s2)
    800070e4:	00970c23          	sb	s1,24(a4)
    800070e8:	08f92e23          	sw	a5,156(s2)
    800070ec:	01013403          	ld	s0,16(sp)
    800070f0:	01813083          	ld	ra,24(sp)
    800070f4:	00813483          	ld	s1,8(sp)
    800070f8:	00013903          	ld	s2,0(sp)
    800070fc:	00004517          	auipc	a0,0x4
    80007100:	76c50513          	addi	a0,a0,1900 # 8000b868 <cons>
    80007104:	02010113          	addi	sp,sp,32
    80007108:	00001317          	auipc	t1,0x1
    8000710c:	eb030067          	jr	-336(t1) # 80007fb8 <release>
    80007110:	00a00493          	li	s1,10
    80007114:	fc1ff06f          	j	800070d4 <consoleintr+0x50>

0000000080007118 <consoleinit>:
    80007118:	fe010113          	addi	sp,sp,-32
    8000711c:	00113c23          	sd	ra,24(sp)
    80007120:	00813823          	sd	s0,16(sp)
    80007124:	00913423          	sd	s1,8(sp)
    80007128:	02010413          	addi	s0,sp,32
    8000712c:	00004497          	auipc	s1,0x4
    80007130:	73c48493          	addi	s1,s1,1852 # 8000b868 <cons>
    80007134:	00048513          	mv	a0,s1
    80007138:	00002597          	auipc	a1,0x2
    8000713c:	5d858593          	addi	a1,a1,1496 # 80009710 <_ZZ12printIntegermE6digits+0x138>
    80007140:	00001097          	auipc	ra,0x1
    80007144:	d88080e7          	jalr	-632(ra) # 80007ec8 <initlock>
    80007148:	00000097          	auipc	ra,0x0
    8000714c:	7ac080e7          	jalr	1964(ra) # 800078f4 <uartinit>
    80007150:	01813083          	ld	ra,24(sp)
    80007154:	01013403          	ld	s0,16(sp)
    80007158:	00000797          	auipc	a5,0x0
    8000715c:	d9c78793          	addi	a5,a5,-612 # 80006ef4 <consoleread>
    80007160:	0af4bc23          	sd	a5,184(s1)
    80007164:	00000797          	auipc	a5,0x0
    80007168:	cec78793          	addi	a5,a5,-788 # 80006e50 <consolewrite>
    8000716c:	0cf4b023          	sd	a5,192(s1)
    80007170:	00813483          	ld	s1,8(sp)
    80007174:	02010113          	addi	sp,sp,32
    80007178:	00008067          	ret

000000008000717c <console_read>:
    8000717c:	ff010113          	addi	sp,sp,-16
    80007180:	00813423          	sd	s0,8(sp)
    80007184:	01010413          	addi	s0,sp,16
    80007188:	00813403          	ld	s0,8(sp)
    8000718c:	00004317          	auipc	t1,0x4
    80007190:	79433303          	ld	t1,1940(t1) # 8000b920 <devsw+0x10>
    80007194:	01010113          	addi	sp,sp,16
    80007198:	00030067          	jr	t1

000000008000719c <console_write>:
    8000719c:	ff010113          	addi	sp,sp,-16
    800071a0:	00813423          	sd	s0,8(sp)
    800071a4:	01010413          	addi	s0,sp,16
    800071a8:	00813403          	ld	s0,8(sp)
    800071ac:	00004317          	auipc	t1,0x4
    800071b0:	77c33303          	ld	t1,1916(t1) # 8000b928 <devsw+0x18>
    800071b4:	01010113          	addi	sp,sp,16
    800071b8:	00030067          	jr	t1

00000000800071bc <panic>:
    800071bc:	fe010113          	addi	sp,sp,-32
    800071c0:	00113c23          	sd	ra,24(sp)
    800071c4:	00813823          	sd	s0,16(sp)
    800071c8:	00913423          	sd	s1,8(sp)
    800071cc:	02010413          	addi	s0,sp,32
    800071d0:	00050493          	mv	s1,a0
    800071d4:	00002517          	auipc	a0,0x2
    800071d8:	54450513          	addi	a0,a0,1348 # 80009718 <_ZZ12printIntegermE6digits+0x140>
    800071dc:	00004797          	auipc	a5,0x4
    800071e0:	7e07a623          	sw	zero,2028(a5) # 8000b9c8 <pr+0x18>
    800071e4:	00000097          	auipc	ra,0x0
    800071e8:	034080e7          	jalr	52(ra) # 80007218 <__printf>
    800071ec:	00048513          	mv	a0,s1
    800071f0:	00000097          	auipc	ra,0x0
    800071f4:	028080e7          	jalr	40(ra) # 80007218 <__printf>
    800071f8:	00002517          	auipc	a0,0x2
    800071fc:	f1850513          	addi	a0,a0,-232 # 80009110 <CONSOLE_STATUS+0x100>
    80007200:	00000097          	auipc	ra,0x0
    80007204:	018080e7          	jalr	24(ra) # 80007218 <__printf>
    80007208:	00100793          	li	a5,1
    8000720c:	00003717          	auipc	a4,0x3
    80007210:	50f72e23          	sw	a5,1308(a4) # 8000a728 <panicked>
    80007214:	0000006f          	j	80007214 <panic+0x58>

0000000080007218 <__printf>:
    80007218:	f3010113          	addi	sp,sp,-208
    8000721c:	08813023          	sd	s0,128(sp)
    80007220:	07313423          	sd	s3,104(sp)
    80007224:	09010413          	addi	s0,sp,144
    80007228:	05813023          	sd	s8,64(sp)
    8000722c:	08113423          	sd	ra,136(sp)
    80007230:	06913c23          	sd	s1,120(sp)
    80007234:	07213823          	sd	s2,112(sp)
    80007238:	07413023          	sd	s4,96(sp)
    8000723c:	05513c23          	sd	s5,88(sp)
    80007240:	05613823          	sd	s6,80(sp)
    80007244:	05713423          	sd	s7,72(sp)
    80007248:	03913c23          	sd	s9,56(sp)
    8000724c:	03a13823          	sd	s10,48(sp)
    80007250:	03b13423          	sd	s11,40(sp)
    80007254:	00004317          	auipc	t1,0x4
    80007258:	75c30313          	addi	t1,t1,1884 # 8000b9b0 <pr>
    8000725c:	01832c03          	lw	s8,24(t1)
    80007260:	00b43423          	sd	a1,8(s0)
    80007264:	00c43823          	sd	a2,16(s0)
    80007268:	00d43c23          	sd	a3,24(s0)
    8000726c:	02e43023          	sd	a4,32(s0)
    80007270:	02f43423          	sd	a5,40(s0)
    80007274:	03043823          	sd	a6,48(s0)
    80007278:	03143c23          	sd	a7,56(s0)
    8000727c:	00050993          	mv	s3,a0
    80007280:	4a0c1663          	bnez	s8,8000772c <__printf+0x514>
    80007284:	60098c63          	beqz	s3,8000789c <__printf+0x684>
    80007288:	0009c503          	lbu	a0,0(s3)
    8000728c:	00840793          	addi	a5,s0,8
    80007290:	f6f43c23          	sd	a5,-136(s0)
    80007294:	00000493          	li	s1,0
    80007298:	22050063          	beqz	a0,800074b8 <__printf+0x2a0>
    8000729c:	00002a37          	lui	s4,0x2
    800072a0:	00018ab7          	lui	s5,0x18
    800072a4:	000f4b37          	lui	s6,0xf4
    800072a8:	00989bb7          	lui	s7,0x989
    800072ac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800072b0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800072b4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800072b8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800072bc:	00148c9b          	addiw	s9,s1,1
    800072c0:	02500793          	li	a5,37
    800072c4:	01998933          	add	s2,s3,s9
    800072c8:	38f51263          	bne	a0,a5,8000764c <__printf+0x434>
    800072cc:	00094783          	lbu	a5,0(s2)
    800072d0:	00078c9b          	sext.w	s9,a5
    800072d4:	1e078263          	beqz	a5,800074b8 <__printf+0x2a0>
    800072d8:	0024849b          	addiw	s1,s1,2
    800072dc:	07000713          	li	a4,112
    800072e0:	00998933          	add	s2,s3,s1
    800072e4:	38e78a63          	beq	a5,a4,80007678 <__printf+0x460>
    800072e8:	20f76863          	bltu	a4,a5,800074f8 <__printf+0x2e0>
    800072ec:	42a78863          	beq	a5,a0,8000771c <__printf+0x504>
    800072f0:	06400713          	li	a4,100
    800072f4:	40e79663          	bne	a5,a4,80007700 <__printf+0x4e8>
    800072f8:	f7843783          	ld	a5,-136(s0)
    800072fc:	0007a603          	lw	a2,0(a5)
    80007300:	00878793          	addi	a5,a5,8
    80007304:	f6f43c23          	sd	a5,-136(s0)
    80007308:	42064a63          	bltz	a2,8000773c <__printf+0x524>
    8000730c:	00a00713          	li	a4,10
    80007310:	02e677bb          	remuw	a5,a2,a4
    80007314:	00002d97          	auipc	s11,0x2
    80007318:	42cd8d93          	addi	s11,s11,1068 # 80009740 <digits>
    8000731c:	00900593          	li	a1,9
    80007320:	0006051b          	sext.w	a0,a2
    80007324:	00000c93          	li	s9,0
    80007328:	02079793          	slli	a5,a5,0x20
    8000732c:	0207d793          	srli	a5,a5,0x20
    80007330:	00fd87b3          	add	a5,s11,a5
    80007334:	0007c783          	lbu	a5,0(a5)
    80007338:	02e656bb          	divuw	a3,a2,a4
    8000733c:	f8f40023          	sb	a5,-128(s0)
    80007340:	14c5d863          	bge	a1,a2,80007490 <__printf+0x278>
    80007344:	06300593          	li	a1,99
    80007348:	00100c93          	li	s9,1
    8000734c:	02e6f7bb          	remuw	a5,a3,a4
    80007350:	02079793          	slli	a5,a5,0x20
    80007354:	0207d793          	srli	a5,a5,0x20
    80007358:	00fd87b3          	add	a5,s11,a5
    8000735c:	0007c783          	lbu	a5,0(a5)
    80007360:	02e6d73b          	divuw	a4,a3,a4
    80007364:	f8f400a3          	sb	a5,-127(s0)
    80007368:	12a5f463          	bgeu	a1,a0,80007490 <__printf+0x278>
    8000736c:	00a00693          	li	a3,10
    80007370:	00900593          	li	a1,9
    80007374:	02d777bb          	remuw	a5,a4,a3
    80007378:	02079793          	slli	a5,a5,0x20
    8000737c:	0207d793          	srli	a5,a5,0x20
    80007380:	00fd87b3          	add	a5,s11,a5
    80007384:	0007c503          	lbu	a0,0(a5)
    80007388:	02d757bb          	divuw	a5,a4,a3
    8000738c:	f8a40123          	sb	a0,-126(s0)
    80007390:	48e5f263          	bgeu	a1,a4,80007814 <__printf+0x5fc>
    80007394:	06300513          	li	a0,99
    80007398:	02d7f5bb          	remuw	a1,a5,a3
    8000739c:	02059593          	slli	a1,a1,0x20
    800073a0:	0205d593          	srli	a1,a1,0x20
    800073a4:	00bd85b3          	add	a1,s11,a1
    800073a8:	0005c583          	lbu	a1,0(a1)
    800073ac:	02d7d7bb          	divuw	a5,a5,a3
    800073b0:	f8b401a3          	sb	a1,-125(s0)
    800073b4:	48e57263          	bgeu	a0,a4,80007838 <__printf+0x620>
    800073b8:	3e700513          	li	a0,999
    800073bc:	02d7f5bb          	remuw	a1,a5,a3
    800073c0:	02059593          	slli	a1,a1,0x20
    800073c4:	0205d593          	srli	a1,a1,0x20
    800073c8:	00bd85b3          	add	a1,s11,a1
    800073cc:	0005c583          	lbu	a1,0(a1)
    800073d0:	02d7d7bb          	divuw	a5,a5,a3
    800073d4:	f8b40223          	sb	a1,-124(s0)
    800073d8:	46e57663          	bgeu	a0,a4,80007844 <__printf+0x62c>
    800073dc:	02d7f5bb          	remuw	a1,a5,a3
    800073e0:	02059593          	slli	a1,a1,0x20
    800073e4:	0205d593          	srli	a1,a1,0x20
    800073e8:	00bd85b3          	add	a1,s11,a1
    800073ec:	0005c583          	lbu	a1,0(a1)
    800073f0:	02d7d7bb          	divuw	a5,a5,a3
    800073f4:	f8b402a3          	sb	a1,-123(s0)
    800073f8:	46ea7863          	bgeu	s4,a4,80007868 <__printf+0x650>
    800073fc:	02d7f5bb          	remuw	a1,a5,a3
    80007400:	02059593          	slli	a1,a1,0x20
    80007404:	0205d593          	srli	a1,a1,0x20
    80007408:	00bd85b3          	add	a1,s11,a1
    8000740c:	0005c583          	lbu	a1,0(a1)
    80007410:	02d7d7bb          	divuw	a5,a5,a3
    80007414:	f8b40323          	sb	a1,-122(s0)
    80007418:	3eeaf863          	bgeu	s5,a4,80007808 <__printf+0x5f0>
    8000741c:	02d7f5bb          	remuw	a1,a5,a3
    80007420:	02059593          	slli	a1,a1,0x20
    80007424:	0205d593          	srli	a1,a1,0x20
    80007428:	00bd85b3          	add	a1,s11,a1
    8000742c:	0005c583          	lbu	a1,0(a1)
    80007430:	02d7d7bb          	divuw	a5,a5,a3
    80007434:	f8b403a3          	sb	a1,-121(s0)
    80007438:	42eb7e63          	bgeu	s6,a4,80007874 <__printf+0x65c>
    8000743c:	02d7f5bb          	remuw	a1,a5,a3
    80007440:	02059593          	slli	a1,a1,0x20
    80007444:	0205d593          	srli	a1,a1,0x20
    80007448:	00bd85b3          	add	a1,s11,a1
    8000744c:	0005c583          	lbu	a1,0(a1)
    80007450:	02d7d7bb          	divuw	a5,a5,a3
    80007454:	f8b40423          	sb	a1,-120(s0)
    80007458:	42ebfc63          	bgeu	s7,a4,80007890 <__printf+0x678>
    8000745c:	02079793          	slli	a5,a5,0x20
    80007460:	0207d793          	srli	a5,a5,0x20
    80007464:	00fd8db3          	add	s11,s11,a5
    80007468:	000dc703          	lbu	a4,0(s11)
    8000746c:	00a00793          	li	a5,10
    80007470:	00900c93          	li	s9,9
    80007474:	f8e404a3          	sb	a4,-119(s0)
    80007478:	00065c63          	bgez	a2,80007490 <__printf+0x278>
    8000747c:	f9040713          	addi	a4,s0,-112
    80007480:	00f70733          	add	a4,a4,a5
    80007484:	02d00693          	li	a3,45
    80007488:	fed70823          	sb	a3,-16(a4)
    8000748c:	00078c93          	mv	s9,a5
    80007490:	f8040793          	addi	a5,s0,-128
    80007494:	01978cb3          	add	s9,a5,s9
    80007498:	f7f40d13          	addi	s10,s0,-129
    8000749c:	000cc503          	lbu	a0,0(s9)
    800074a0:	fffc8c93          	addi	s9,s9,-1
    800074a4:	00000097          	auipc	ra,0x0
    800074a8:	b90080e7          	jalr	-1136(ra) # 80007034 <consputc>
    800074ac:	ffac98e3          	bne	s9,s10,8000749c <__printf+0x284>
    800074b0:	00094503          	lbu	a0,0(s2)
    800074b4:	e00514e3          	bnez	a0,800072bc <__printf+0xa4>
    800074b8:	1a0c1663          	bnez	s8,80007664 <__printf+0x44c>
    800074bc:	08813083          	ld	ra,136(sp)
    800074c0:	08013403          	ld	s0,128(sp)
    800074c4:	07813483          	ld	s1,120(sp)
    800074c8:	07013903          	ld	s2,112(sp)
    800074cc:	06813983          	ld	s3,104(sp)
    800074d0:	06013a03          	ld	s4,96(sp)
    800074d4:	05813a83          	ld	s5,88(sp)
    800074d8:	05013b03          	ld	s6,80(sp)
    800074dc:	04813b83          	ld	s7,72(sp)
    800074e0:	04013c03          	ld	s8,64(sp)
    800074e4:	03813c83          	ld	s9,56(sp)
    800074e8:	03013d03          	ld	s10,48(sp)
    800074ec:	02813d83          	ld	s11,40(sp)
    800074f0:	0d010113          	addi	sp,sp,208
    800074f4:	00008067          	ret
    800074f8:	07300713          	li	a4,115
    800074fc:	1ce78a63          	beq	a5,a4,800076d0 <__printf+0x4b8>
    80007500:	07800713          	li	a4,120
    80007504:	1ee79e63          	bne	a5,a4,80007700 <__printf+0x4e8>
    80007508:	f7843783          	ld	a5,-136(s0)
    8000750c:	0007a703          	lw	a4,0(a5)
    80007510:	00878793          	addi	a5,a5,8
    80007514:	f6f43c23          	sd	a5,-136(s0)
    80007518:	28074263          	bltz	a4,8000779c <__printf+0x584>
    8000751c:	00002d97          	auipc	s11,0x2
    80007520:	224d8d93          	addi	s11,s11,548 # 80009740 <digits>
    80007524:	00f77793          	andi	a5,a4,15
    80007528:	00fd87b3          	add	a5,s11,a5
    8000752c:	0007c683          	lbu	a3,0(a5)
    80007530:	00f00613          	li	a2,15
    80007534:	0007079b          	sext.w	a5,a4
    80007538:	f8d40023          	sb	a3,-128(s0)
    8000753c:	0047559b          	srliw	a1,a4,0x4
    80007540:	0047569b          	srliw	a3,a4,0x4
    80007544:	00000c93          	li	s9,0
    80007548:	0ee65063          	bge	a2,a4,80007628 <__printf+0x410>
    8000754c:	00f6f693          	andi	a3,a3,15
    80007550:	00dd86b3          	add	a3,s11,a3
    80007554:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007558:	0087d79b          	srliw	a5,a5,0x8
    8000755c:	00100c93          	li	s9,1
    80007560:	f8d400a3          	sb	a3,-127(s0)
    80007564:	0cb67263          	bgeu	a2,a1,80007628 <__printf+0x410>
    80007568:	00f7f693          	andi	a3,a5,15
    8000756c:	00dd86b3          	add	a3,s11,a3
    80007570:	0006c583          	lbu	a1,0(a3)
    80007574:	00f00613          	li	a2,15
    80007578:	0047d69b          	srliw	a3,a5,0x4
    8000757c:	f8b40123          	sb	a1,-126(s0)
    80007580:	0047d593          	srli	a1,a5,0x4
    80007584:	28f67e63          	bgeu	a2,a5,80007820 <__printf+0x608>
    80007588:	00f6f693          	andi	a3,a3,15
    8000758c:	00dd86b3          	add	a3,s11,a3
    80007590:	0006c503          	lbu	a0,0(a3)
    80007594:	0087d813          	srli	a6,a5,0x8
    80007598:	0087d69b          	srliw	a3,a5,0x8
    8000759c:	f8a401a3          	sb	a0,-125(s0)
    800075a0:	28b67663          	bgeu	a2,a1,8000782c <__printf+0x614>
    800075a4:	00f6f693          	andi	a3,a3,15
    800075a8:	00dd86b3          	add	a3,s11,a3
    800075ac:	0006c583          	lbu	a1,0(a3)
    800075b0:	00c7d513          	srli	a0,a5,0xc
    800075b4:	00c7d69b          	srliw	a3,a5,0xc
    800075b8:	f8b40223          	sb	a1,-124(s0)
    800075bc:	29067a63          	bgeu	a2,a6,80007850 <__printf+0x638>
    800075c0:	00f6f693          	andi	a3,a3,15
    800075c4:	00dd86b3          	add	a3,s11,a3
    800075c8:	0006c583          	lbu	a1,0(a3)
    800075cc:	0107d813          	srli	a6,a5,0x10
    800075d0:	0107d69b          	srliw	a3,a5,0x10
    800075d4:	f8b402a3          	sb	a1,-123(s0)
    800075d8:	28a67263          	bgeu	a2,a0,8000785c <__printf+0x644>
    800075dc:	00f6f693          	andi	a3,a3,15
    800075e0:	00dd86b3          	add	a3,s11,a3
    800075e4:	0006c683          	lbu	a3,0(a3)
    800075e8:	0147d79b          	srliw	a5,a5,0x14
    800075ec:	f8d40323          	sb	a3,-122(s0)
    800075f0:	21067663          	bgeu	a2,a6,800077fc <__printf+0x5e4>
    800075f4:	02079793          	slli	a5,a5,0x20
    800075f8:	0207d793          	srli	a5,a5,0x20
    800075fc:	00fd8db3          	add	s11,s11,a5
    80007600:	000dc683          	lbu	a3,0(s11)
    80007604:	00800793          	li	a5,8
    80007608:	00700c93          	li	s9,7
    8000760c:	f8d403a3          	sb	a3,-121(s0)
    80007610:	00075c63          	bgez	a4,80007628 <__printf+0x410>
    80007614:	f9040713          	addi	a4,s0,-112
    80007618:	00f70733          	add	a4,a4,a5
    8000761c:	02d00693          	li	a3,45
    80007620:	fed70823          	sb	a3,-16(a4)
    80007624:	00078c93          	mv	s9,a5
    80007628:	f8040793          	addi	a5,s0,-128
    8000762c:	01978cb3          	add	s9,a5,s9
    80007630:	f7f40d13          	addi	s10,s0,-129
    80007634:	000cc503          	lbu	a0,0(s9)
    80007638:	fffc8c93          	addi	s9,s9,-1
    8000763c:	00000097          	auipc	ra,0x0
    80007640:	9f8080e7          	jalr	-1544(ra) # 80007034 <consputc>
    80007644:	ff9d18e3          	bne	s10,s9,80007634 <__printf+0x41c>
    80007648:	0100006f          	j	80007658 <__printf+0x440>
    8000764c:	00000097          	auipc	ra,0x0
    80007650:	9e8080e7          	jalr	-1560(ra) # 80007034 <consputc>
    80007654:	000c8493          	mv	s1,s9
    80007658:	00094503          	lbu	a0,0(s2)
    8000765c:	c60510e3          	bnez	a0,800072bc <__printf+0xa4>
    80007660:	e40c0ee3          	beqz	s8,800074bc <__printf+0x2a4>
    80007664:	00004517          	auipc	a0,0x4
    80007668:	34c50513          	addi	a0,a0,844 # 8000b9b0 <pr>
    8000766c:	00001097          	auipc	ra,0x1
    80007670:	94c080e7          	jalr	-1716(ra) # 80007fb8 <release>
    80007674:	e49ff06f          	j	800074bc <__printf+0x2a4>
    80007678:	f7843783          	ld	a5,-136(s0)
    8000767c:	03000513          	li	a0,48
    80007680:	01000d13          	li	s10,16
    80007684:	00878713          	addi	a4,a5,8
    80007688:	0007bc83          	ld	s9,0(a5)
    8000768c:	f6e43c23          	sd	a4,-136(s0)
    80007690:	00000097          	auipc	ra,0x0
    80007694:	9a4080e7          	jalr	-1628(ra) # 80007034 <consputc>
    80007698:	07800513          	li	a0,120
    8000769c:	00000097          	auipc	ra,0x0
    800076a0:	998080e7          	jalr	-1640(ra) # 80007034 <consputc>
    800076a4:	00002d97          	auipc	s11,0x2
    800076a8:	09cd8d93          	addi	s11,s11,156 # 80009740 <digits>
    800076ac:	03ccd793          	srli	a5,s9,0x3c
    800076b0:	00fd87b3          	add	a5,s11,a5
    800076b4:	0007c503          	lbu	a0,0(a5)
    800076b8:	fffd0d1b          	addiw	s10,s10,-1
    800076bc:	004c9c93          	slli	s9,s9,0x4
    800076c0:	00000097          	auipc	ra,0x0
    800076c4:	974080e7          	jalr	-1676(ra) # 80007034 <consputc>
    800076c8:	fe0d12e3          	bnez	s10,800076ac <__printf+0x494>
    800076cc:	f8dff06f          	j	80007658 <__printf+0x440>
    800076d0:	f7843783          	ld	a5,-136(s0)
    800076d4:	0007bc83          	ld	s9,0(a5)
    800076d8:	00878793          	addi	a5,a5,8
    800076dc:	f6f43c23          	sd	a5,-136(s0)
    800076e0:	000c9a63          	bnez	s9,800076f4 <__printf+0x4dc>
    800076e4:	1080006f          	j	800077ec <__printf+0x5d4>
    800076e8:	001c8c93          	addi	s9,s9,1
    800076ec:	00000097          	auipc	ra,0x0
    800076f0:	948080e7          	jalr	-1720(ra) # 80007034 <consputc>
    800076f4:	000cc503          	lbu	a0,0(s9)
    800076f8:	fe0518e3          	bnez	a0,800076e8 <__printf+0x4d0>
    800076fc:	f5dff06f          	j	80007658 <__printf+0x440>
    80007700:	02500513          	li	a0,37
    80007704:	00000097          	auipc	ra,0x0
    80007708:	930080e7          	jalr	-1744(ra) # 80007034 <consputc>
    8000770c:	000c8513          	mv	a0,s9
    80007710:	00000097          	auipc	ra,0x0
    80007714:	924080e7          	jalr	-1756(ra) # 80007034 <consputc>
    80007718:	f41ff06f          	j	80007658 <__printf+0x440>
    8000771c:	02500513          	li	a0,37
    80007720:	00000097          	auipc	ra,0x0
    80007724:	914080e7          	jalr	-1772(ra) # 80007034 <consputc>
    80007728:	f31ff06f          	j	80007658 <__printf+0x440>
    8000772c:	00030513          	mv	a0,t1
    80007730:	00000097          	auipc	ra,0x0
    80007734:	7bc080e7          	jalr	1980(ra) # 80007eec <acquire>
    80007738:	b4dff06f          	j	80007284 <__printf+0x6c>
    8000773c:	40c0053b          	negw	a0,a2
    80007740:	00a00713          	li	a4,10
    80007744:	02e576bb          	remuw	a3,a0,a4
    80007748:	00002d97          	auipc	s11,0x2
    8000774c:	ff8d8d93          	addi	s11,s11,-8 # 80009740 <digits>
    80007750:	ff700593          	li	a1,-9
    80007754:	02069693          	slli	a3,a3,0x20
    80007758:	0206d693          	srli	a3,a3,0x20
    8000775c:	00dd86b3          	add	a3,s11,a3
    80007760:	0006c683          	lbu	a3,0(a3)
    80007764:	02e557bb          	divuw	a5,a0,a4
    80007768:	f8d40023          	sb	a3,-128(s0)
    8000776c:	10b65e63          	bge	a2,a1,80007888 <__printf+0x670>
    80007770:	06300593          	li	a1,99
    80007774:	02e7f6bb          	remuw	a3,a5,a4
    80007778:	02069693          	slli	a3,a3,0x20
    8000777c:	0206d693          	srli	a3,a3,0x20
    80007780:	00dd86b3          	add	a3,s11,a3
    80007784:	0006c683          	lbu	a3,0(a3)
    80007788:	02e7d73b          	divuw	a4,a5,a4
    8000778c:	00200793          	li	a5,2
    80007790:	f8d400a3          	sb	a3,-127(s0)
    80007794:	bca5ece3          	bltu	a1,a0,8000736c <__printf+0x154>
    80007798:	ce5ff06f          	j	8000747c <__printf+0x264>
    8000779c:	40e007bb          	negw	a5,a4
    800077a0:	00002d97          	auipc	s11,0x2
    800077a4:	fa0d8d93          	addi	s11,s11,-96 # 80009740 <digits>
    800077a8:	00f7f693          	andi	a3,a5,15
    800077ac:	00dd86b3          	add	a3,s11,a3
    800077b0:	0006c583          	lbu	a1,0(a3)
    800077b4:	ff100613          	li	a2,-15
    800077b8:	0047d69b          	srliw	a3,a5,0x4
    800077bc:	f8b40023          	sb	a1,-128(s0)
    800077c0:	0047d59b          	srliw	a1,a5,0x4
    800077c4:	0ac75e63          	bge	a4,a2,80007880 <__printf+0x668>
    800077c8:	00f6f693          	andi	a3,a3,15
    800077cc:	00dd86b3          	add	a3,s11,a3
    800077d0:	0006c603          	lbu	a2,0(a3)
    800077d4:	00f00693          	li	a3,15
    800077d8:	0087d79b          	srliw	a5,a5,0x8
    800077dc:	f8c400a3          	sb	a2,-127(s0)
    800077e0:	d8b6e4e3          	bltu	a3,a1,80007568 <__printf+0x350>
    800077e4:	00200793          	li	a5,2
    800077e8:	e2dff06f          	j	80007614 <__printf+0x3fc>
    800077ec:	00002c97          	auipc	s9,0x2
    800077f0:	f34c8c93          	addi	s9,s9,-204 # 80009720 <_ZZ12printIntegermE6digits+0x148>
    800077f4:	02800513          	li	a0,40
    800077f8:	ef1ff06f          	j	800076e8 <__printf+0x4d0>
    800077fc:	00700793          	li	a5,7
    80007800:	00600c93          	li	s9,6
    80007804:	e0dff06f          	j	80007610 <__printf+0x3f8>
    80007808:	00700793          	li	a5,7
    8000780c:	00600c93          	li	s9,6
    80007810:	c69ff06f          	j	80007478 <__printf+0x260>
    80007814:	00300793          	li	a5,3
    80007818:	00200c93          	li	s9,2
    8000781c:	c5dff06f          	j	80007478 <__printf+0x260>
    80007820:	00300793          	li	a5,3
    80007824:	00200c93          	li	s9,2
    80007828:	de9ff06f          	j	80007610 <__printf+0x3f8>
    8000782c:	00400793          	li	a5,4
    80007830:	00300c93          	li	s9,3
    80007834:	dddff06f          	j	80007610 <__printf+0x3f8>
    80007838:	00400793          	li	a5,4
    8000783c:	00300c93          	li	s9,3
    80007840:	c39ff06f          	j	80007478 <__printf+0x260>
    80007844:	00500793          	li	a5,5
    80007848:	00400c93          	li	s9,4
    8000784c:	c2dff06f          	j	80007478 <__printf+0x260>
    80007850:	00500793          	li	a5,5
    80007854:	00400c93          	li	s9,4
    80007858:	db9ff06f          	j	80007610 <__printf+0x3f8>
    8000785c:	00600793          	li	a5,6
    80007860:	00500c93          	li	s9,5
    80007864:	dadff06f          	j	80007610 <__printf+0x3f8>
    80007868:	00600793          	li	a5,6
    8000786c:	00500c93          	li	s9,5
    80007870:	c09ff06f          	j	80007478 <__printf+0x260>
    80007874:	00800793          	li	a5,8
    80007878:	00700c93          	li	s9,7
    8000787c:	bfdff06f          	j	80007478 <__printf+0x260>
    80007880:	00100793          	li	a5,1
    80007884:	d91ff06f          	j	80007614 <__printf+0x3fc>
    80007888:	00100793          	li	a5,1
    8000788c:	bf1ff06f          	j	8000747c <__printf+0x264>
    80007890:	00900793          	li	a5,9
    80007894:	00800c93          	li	s9,8
    80007898:	be1ff06f          	j	80007478 <__printf+0x260>
    8000789c:	00002517          	auipc	a0,0x2
    800078a0:	e8c50513          	addi	a0,a0,-372 # 80009728 <_ZZ12printIntegermE6digits+0x150>
    800078a4:	00000097          	auipc	ra,0x0
    800078a8:	918080e7          	jalr	-1768(ra) # 800071bc <panic>

00000000800078ac <printfinit>:
    800078ac:	fe010113          	addi	sp,sp,-32
    800078b0:	00813823          	sd	s0,16(sp)
    800078b4:	00913423          	sd	s1,8(sp)
    800078b8:	00113c23          	sd	ra,24(sp)
    800078bc:	02010413          	addi	s0,sp,32
    800078c0:	00004497          	auipc	s1,0x4
    800078c4:	0f048493          	addi	s1,s1,240 # 8000b9b0 <pr>
    800078c8:	00048513          	mv	a0,s1
    800078cc:	00002597          	auipc	a1,0x2
    800078d0:	e6c58593          	addi	a1,a1,-404 # 80009738 <_ZZ12printIntegermE6digits+0x160>
    800078d4:	00000097          	auipc	ra,0x0
    800078d8:	5f4080e7          	jalr	1524(ra) # 80007ec8 <initlock>
    800078dc:	01813083          	ld	ra,24(sp)
    800078e0:	01013403          	ld	s0,16(sp)
    800078e4:	0004ac23          	sw	zero,24(s1)
    800078e8:	00813483          	ld	s1,8(sp)
    800078ec:	02010113          	addi	sp,sp,32
    800078f0:	00008067          	ret

00000000800078f4 <uartinit>:
    800078f4:	ff010113          	addi	sp,sp,-16
    800078f8:	00813423          	sd	s0,8(sp)
    800078fc:	01010413          	addi	s0,sp,16
    80007900:	100007b7          	lui	a5,0x10000
    80007904:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007908:	f8000713          	li	a4,-128
    8000790c:	00e781a3          	sb	a4,3(a5)
    80007910:	00300713          	li	a4,3
    80007914:	00e78023          	sb	a4,0(a5)
    80007918:	000780a3          	sb	zero,1(a5)
    8000791c:	00e781a3          	sb	a4,3(a5)
    80007920:	00700693          	li	a3,7
    80007924:	00d78123          	sb	a3,2(a5)
    80007928:	00e780a3          	sb	a4,1(a5)
    8000792c:	00813403          	ld	s0,8(sp)
    80007930:	01010113          	addi	sp,sp,16
    80007934:	00008067          	ret

0000000080007938 <uartputc>:
    80007938:	00003797          	auipc	a5,0x3
    8000793c:	df07a783          	lw	a5,-528(a5) # 8000a728 <panicked>
    80007940:	00078463          	beqz	a5,80007948 <uartputc+0x10>
    80007944:	0000006f          	j	80007944 <uartputc+0xc>
    80007948:	fd010113          	addi	sp,sp,-48
    8000794c:	02813023          	sd	s0,32(sp)
    80007950:	00913c23          	sd	s1,24(sp)
    80007954:	01213823          	sd	s2,16(sp)
    80007958:	01313423          	sd	s3,8(sp)
    8000795c:	02113423          	sd	ra,40(sp)
    80007960:	03010413          	addi	s0,sp,48
    80007964:	00003917          	auipc	s2,0x3
    80007968:	dcc90913          	addi	s2,s2,-564 # 8000a730 <uart_tx_r>
    8000796c:	00093783          	ld	a5,0(s2)
    80007970:	00003497          	auipc	s1,0x3
    80007974:	dc848493          	addi	s1,s1,-568 # 8000a738 <uart_tx_w>
    80007978:	0004b703          	ld	a4,0(s1)
    8000797c:	02078693          	addi	a3,a5,32
    80007980:	00050993          	mv	s3,a0
    80007984:	02e69c63          	bne	a3,a4,800079bc <uartputc+0x84>
    80007988:	00001097          	auipc	ra,0x1
    8000798c:	834080e7          	jalr	-1996(ra) # 800081bc <push_on>
    80007990:	00093783          	ld	a5,0(s2)
    80007994:	0004b703          	ld	a4,0(s1)
    80007998:	02078793          	addi	a5,a5,32
    8000799c:	00e79463          	bne	a5,a4,800079a4 <uartputc+0x6c>
    800079a0:	0000006f          	j	800079a0 <uartputc+0x68>
    800079a4:	00001097          	auipc	ra,0x1
    800079a8:	88c080e7          	jalr	-1908(ra) # 80008230 <pop_on>
    800079ac:	00093783          	ld	a5,0(s2)
    800079b0:	0004b703          	ld	a4,0(s1)
    800079b4:	02078693          	addi	a3,a5,32
    800079b8:	fce688e3          	beq	a3,a4,80007988 <uartputc+0x50>
    800079bc:	01f77693          	andi	a3,a4,31
    800079c0:	00004597          	auipc	a1,0x4
    800079c4:	01058593          	addi	a1,a1,16 # 8000b9d0 <uart_tx_buf>
    800079c8:	00d586b3          	add	a3,a1,a3
    800079cc:	00170713          	addi	a4,a4,1
    800079d0:	01368023          	sb	s3,0(a3)
    800079d4:	00e4b023          	sd	a4,0(s1)
    800079d8:	10000637          	lui	a2,0x10000
    800079dc:	02f71063          	bne	a4,a5,800079fc <uartputc+0xc4>
    800079e0:	0340006f          	j	80007a14 <uartputc+0xdc>
    800079e4:	00074703          	lbu	a4,0(a4)
    800079e8:	00f93023          	sd	a5,0(s2)
    800079ec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800079f0:	00093783          	ld	a5,0(s2)
    800079f4:	0004b703          	ld	a4,0(s1)
    800079f8:	00f70e63          	beq	a4,a5,80007a14 <uartputc+0xdc>
    800079fc:	00564683          	lbu	a3,5(a2)
    80007a00:	01f7f713          	andi	a4,a5,31
    80007a04:	00e58733          	add	a4,a1,a4
    80007a08:	0206f693          	andi	a3,a3,32
    80007a0c:	00178793          	addi	a5,a5,1
    80007a10:	fc069ae3          	bnez	a3,800079e4 <uartputc+0xac>
    80007a14:	02813083          	ld	ra,40(sp)
    80007a18:	02013403          	ld	s0,32(sp)
    80007a1c:	01813483          	ld	s1,24(sp)
    80007a20:	01013903          	ld	s2,16(sp)
    80007a24:	00813983          	ld	s3,8(sp)
    80007a28:	03010113          	addi	sp,sp,48
    80007a2c:	00008067          	ret

0000000080007a30 <uartputc_sync>:
    80007a30:	ff010113          	addi	sp,sp,-16
    80007a34:	00813423          	sd	s0,8(sp)
    80007a38:	01010413          	addi	s0,sp,16
    80007a3c:	00003717          	auipc	a4,0x3
    80007a40:	cec72703          	lw	a4,-788(a4) # 8000a728 <panicked>
    80007a44:	02071663          	bnez	a4,80007a70 <uartputc_sync+0x40>
    80007a48:	00050793          	mv	a5,a0
    80007a4c:	100006b7          	lui	a3,0x10000
    80007a50:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007a54:	02077713          	andi	a4,a4,32
    80007a58:	fe070ce3          	beqz	a4,80007a50 <uartputc_sync+0x20>
    80007a5c:	0ff7f793          	andi	a5,a5,255
    80007a60:	00f68023          	sb	a5,0(a3)
    80007a64:	00813403          	ld	s0,8(sp)
    80007a68:	01010113          	addi	sp,sp,16
    80007a6c:	00008067          	ret
    80007a70:	0000006f          	j	80007a70 <uartputc_sync+0x40>

0000000080007a74 <uartstart>:
    80007a74:	ff010113          	addi	sp,sp,-16
    80007a78:	00813423          	sd	s0,8(sp)
    80007a7c:	01010413          	addi	s0,sp,16
    80007a80:	00003617          	auipc	a2,0x3
    80007a84:	cb060613          	addi	a2,a2,-848 # 8000a730 <uart_tx_r>
    80007a88:	00003517          	auipc	a0,0x3
    80007a8c:	cb050513          	addi	a0,a0,-848 # 8000a738 <uart_tx_w>
    80007a90:	00063783          	ld	a5,0(a2)
    80007a94:	00053703          	ld	a4,0(a0)
    80007a98:	04f70263          	beq	a4,a5,80007adc <uartstart+0x68>
    80007a9c:	100005b7          	lui	a1,0x10000
    80007aa0:	00004817          	auipc	a6,0x4
    80007aa4:	f3080813          	addi	a6,a6,-208 # 8000b9d0 <uart_tx_buf>
    80007aa8:	01c0006f          	j	80007ac4 <uartstart+0x50>
    80007aac:	0006c703          	lbu	a4,0(a3)
    80007ab0:	00f63023          	sd	a5,0(a2)
    80007ab4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007ab8:	00063783          	ld	a5,0(a2)
    80007abc:	00053703          	ld	a4,0(a0)
    80007ac0:	00f70e63          	beq	a4,a5,80007adc <uartstart+0x68>
    80007ac4:	01f7f713          	andi	a4,a5,31
    80007ac8:	00e806b3          	add	a3,a6,a4
    80007acc:	0055c703          	lbu	a4,5(a1)
    80007ad0:	00178793          	addi	a5,a5,1
    80007ad4:	02077713          	andi	a4,a4,32
    80007ad8:	fc071ae3          	bnez	a4,80007aac <uartstart+0x38>
    80007adc:	00813403          	ld	s0,8(sp)
    80007ae0:	01010113          	addi	sp,sp,16
    80007ae4:	00008067          	ret

0000000080007ae8 <uartgetc>:
    80007ae8:	ff010113          	addi	sp,sp,-16
    80007aec:	00813423          	sd	s0,8(sp)
    80007af0:	01010413          	addi	s0,sp,16
    80007af4:	10000737          	lui	a4,0x10000
    80007af8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007afc:	0017f793          	andi	a5,a5,1
    80007b00:	00078c63          	beqz	a5,80007b18 <uartgetc+0x30>
    80007b04:	00074503          	lbu	a0,0(a4)
    80007b08:	0ff57513          	andi	a0,a0,255
    80007b0c:	00813403          	ld	s0,8(sp)
    80007b10:	01010113          	addi	sp,sp,16
    80007b14:	00008067          	ret
    80007b18:	fff00513          	li	a0,-1
    80007b1c:	ff1ff06f          	j	80007b0c <uartgetc+0x24>

0000000080007b20 <uartintr>:
    80007b20:	100007b7          	lui	a5,0x10000
    80007b24:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007b28:	0017f793          	andi	a5,a5,1
    80007b2c:	0a078463          	beqz	a5,80007bd4 <uartintr+0xb4>
    80007b30:	fe010113          	addi	sp,sp,-32
    80007b34:	00813823          	sd	s0,16(sp)
    80007b38:	00913423          	sd	s1,8(sp)
    80007b3c:	00113c23          	sd	ra,24(sp)
    80007b40:	02010413          	addi	s0,sp,32
    80007b44:	100004b7          	lui	s1,0x10000
    80007b48:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007b4c:	0ff57513          	andi	a0,a0,255
    80007b50:	fffff097          	auipc	ra,0xfffff
    80007b54:	534080e7          	jalr	1332(ra) # 80007084 <consoleintr>
    80007b58:	0054c783          	lbu	a5,5(s1)
    80007b5c:	0017f793          	andi	a5,a5,1
    80007b60:	fe0794e3          	bnez	a5,80007b48 <uartintr+0x28>
    80007b64:	00003617          	auipc	a2,0x3
    80007b68:	bcc60613          	addi	a2,a2,-1076 # 8000a730 <uart_tx_r>
    80007b6c:	00003517          	auipc	a0,0x3
    80007b70:	bcc50513          	addi	a0,a0,-1076 # 8000a738 <uart_tx_w>
    80007b74:	00063783          	ld	a5,0(a2)
    80007b78:	00053703          	ld	a4,0(a0)
    80007b7c:	04f70263          	beq	a4,a5,80007bc0 <uartintr+0xa0>
    80007b80:	100005b7          	lui	a1,0x10000
    80007b84:	00004817          	auipc	a6,0x4
    80007b88:	e4c80813          	addi	a6,a6,-436 # 8000b9d0 <uart_tx_buf>
    80007b8c:	01c0006f          	j	80007ba8 <uartintr+0x88>
    80007b90:	0006c703          	lbu	a4,0(a3)
    80007b94:	00f63023          	sd	a5,0(a2)
    80007b98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007b9c:	00063783          	ld	a5,0(a2)
    80007ba0:	00053703          	ld	a4,0(a0)
    80007ba4:	00f70e63          	beq	a4,a5,80007bc0 <uartintr+0xa0>
    80007ba8:	01f7f713          	andi	a4,a5,31
    80007bac:	00e806b3          	add	a3,a6,a4
    80007bb0:	0055c703          	lbu	a4,5(a1)
    80007bb4:	00178793          	addi	a5,a5,1
    80007bb8:	02077713          	andi	a4,a4,32
    80007bbc:	fc071ae3          	bnez	a4,80007b90 <uartintr+0x70>
    80007bc0:	01813083          	ld	ra,24(sp)
    80007bc4:	01013403          	ld	s0,16(sp)
    80007bc8:	00813483          	ld	s1,8(sp)
    80007bcc:	02010113          	addi	sp,sp,32
    80007bd0:	00008067          	ret
    80007bd4:	00003617          	auipc	a2,0x3
    80007bd8:	b5c60613          	addi	a2,a2,-1188 # 8000a730 <uart_tx_r>
    80007bdc:	00003517          	auipc	a0,0x3
    80007be0:	b5c50513          	addi	a0,a0,-1188 # 8000a738 <uart_tx_w>
    80007be4:	00063783          	ld	a5,0(a2)
    80007be8:	00053703          	ld	a4,0(a0)
    80007bec:	04f70263          	beq	a4,a5,80007c30 <uartintr+0x110>
    80007bf0:	100005b7          	lui	a1,0x10000
    80007bf4:	00004817          	auipc	a6,0x4
    80007bf8:	ddc80813          	addi	a6,a6,-548 # 8000b9d0 <uart_tx_buf>
    80007bfc:	01c0006f          	j	80007c18 <uartintr+0xf8>
    80007c00:	0006c703          	lbu	a4,0(a3)
    80007c04:	00f63023          	sd	a5,0(a2)
    80007c08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007c0c:	00063783          	ld	a5,0(a2)
    80007c10:	00053703          	ld	a4,0(a0)
    80007c14:	02f70063          	beq	a4,a5,80007c34 <uartintr+0x114>
    80007c18:	01f7f713          	andi	a4,a5,31
    80007c1c:	00e806b3          	add	a3,a6,a4
    80007c20:	0055c703          	lbu	a4,5(a1)
    80007c24:	00178793          	addi	a5,a5,1
    80007c28:	02077713          	andi	a4,a4,32
    80007c2c:	fc071ae3          	bnez	a4,80007c00 <uartintr+0xe0>
    80007c30:	00008067          	ret
    80007c34:	00008067          	ret

0000000080007c38 <kinit>:
    80007c38:	fc010113          	addi	sp,sp,-64
    80007c3c:	02913423          	sd	s1,40(sp)
    80007c40:	fffff7b7          	lui	a5,0xfffff
    80007c44:	00005497          	auipc	s1,0x5
    80007c48:	dbb48493          	addi	s1,s1,-581 # 8000c9ff <end+0xfff>
    80007c4c:	02813823          	sd	s0,48(sp)
    80007c50:	01313c23          	sd	s3,24(sp)
    80007c54:	00f4f4b3          	and	s1,s1,a5
    80007c58:	02113c23          	sd	ra,56(sp)
    80007c5c:	03213023          	sd	s2,32(sp)
    80007c60:	01413823          	sd	s4,16(sp)
    80007c64:	01513423          	sd	s5,8(sp)
    80007c68:	04010413          	addi	s0,sp,64
    80007c6c:	000017b7          	lui	a5,0x1
    80007c70:	01100993          	li	s3,17
    80007c74:	00f487b3          	add	a5,s1,a5
    80007c78:	01b99993          	slli	s3,s3,0x1b
    80007c7c:	06f9e063          	bltu	s3,a5,80007cdc <kinit+0xa4>
    80007c80:	00004a97          	auipc	s5,0x4
    80007c84:	d80a8a93          	addi	s5,s5,-640 # 8000ba00 <end>
    80007c88:	0754ec63          	bltu	s1,s5,80007d00 <kinit+0xc8>
    80007c8c:	0734fa63          	bgeu	s1,s3,80007d00 <kinit+0xc8>
    80007c90:	00088a37          	lui	s4,0x88
    80007c94:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007c98:	00003917          	auipc	s2,0x3
    80007c9c:	aa890913          	addi	s2,s2,-1368 # 8000a740 <kmem>
    80007ca0:	00ca1a13          	slli	s4,s4,0xc
    80007ca4:	0140006f          	j	80007cb8 <kinit+0x80>
    80007ca8:	000017b7          	lui	a5,0x1
    80007cac:	00f484b3          	add	s1,s1,a5
    80007cb0:	0554e863          	bltu	s1,s5,80007d00 <kinit+0xc8>
    80007cb4:	0534f663          	bgeu	s1,s3,80007d00 <kinit+0xc8>
    80007cb8:	00001637          	lui	a2,0x1
    80007cbc:	00100593          	li	a1,1
    80007cc0:	00048513          	mv	a0,s1
    80007cc4:	00000097          	auipc	ra,0x0
    80007cc8:	5e4080e7          	jalr	1508(ra) # 800082a8 <__memset>
    80007ccc:	00093783          	ld	a5,0(s2)
    80007cd0:	00f4b023          	sd	a5,0(s1)
    80007cd4:	00993023          	sd	s1,0(s2)
    80007cd8:	fd4498e3          	bne	s1,s4,80007ca8 <kinit+0x70>
    80007cdc:	03813083          	ld	ra,56(sp)
    80007ce0:	03013403          	ld	s0,48(sp)
    80007ce4:	02813483          	ld	s1,40(sp)
    80007ce8:	02013903          	ld	s2,32(sp)
    80007cec:	01813983          	ld	s3,24(sp)
    80007cf0:	01013a03          	ld	s4,16(sp)
    80007cf4:	00813a83          	ld	s5,8(sp)
    80007cf8:	04010113          	addi	sp,sp,64
    80007cfc:	00008067          	ret
    80007d00:	00002517          	auipc	a0,0x2
    80007d04:	a5850513          	addi	a0,a0,-1448 # 80009758 <digits+0x18>
    80007d08:	fffff097          	auipc	ra,0xfffff
    80007d0c:	4b4080e7          	jalr	1204(ra) # 800071bc <panic>

0000000080007d10 <freerange>:
    80007d10:	fc010113          	addi	sp,sp,-64
    80007d14:	000017b7          	lui	a5,0x1
    80007d18:	02913423          	sd	s1,40(sp)
    80007d1c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007d20:	009504b3          	add	s1,a0,s1
    80007d24:	fffff537          	lui	a0,0xfffff
    80007d28:	02813823          	sd	s0,48(sp)
    80007d2c:	02113c23          	sd	ra,56(sp)
    80007d30:	03213023          	sd	s2,32(sp)
    80007d34:	01313c23          	sd	s3,24(sp)
    80007d38:	01413823          	sd	s4,16(sp)
    80007d3c:	01513423          	sd	s5,8(sp)
    80007d40:	01613023          	sd	s6,0(sp)
    80007d44:	04010413          	addi	s0,sp,64
    80007d48:	00a4f4b3          	and	s1,s1,a0
    80007d4c:	00f487b3          	add	a5,s1,a5
    80007d50:	06f5e463          	bltu	a1,a5,80007db8 <freerange+0xa8>
    80007d54:	00004a97          	auipc	s5,0x4
    80007d58:	caca8a93          	addi	s5,s5,-852 # 8000ba00 <end>
    80007d5c:	0954e263          	bltu	s1,s5,80007de0 <freerange+0xd0>
    80007d60:	01100993          	li	s3,17
    80007d64:	01b99993          	slli	s3,s3,0x1b
    80007d68:	0734fc63          	bgeu	s1,s3,80007de0 <freerange+0xd0>
    80007d6c:	00058a13          	mv	s4,a1
    80007d70:	00003917          	auipc	s2,0x3
    80007d74:	9d090913          	addi	s2,s2,-1584 # 8000a740 <kmem>
    80007d78:	00002b37          	lui	s6,0x2
    80007d7c:	0140006f          	j	80007d90 <freerange+0x80>
    80007d80:	000017b7          	lui	a5,0x1
    80007d84:	00f484b3          	add	s1,s1,a5
    80007d88:	0554ec63          	bltu	s1,s5,80007de0 <freerange+0xd0>
    80007d8c:	0534fa63          	bgeu	s1,s3,80007de0 <freerange+0xd0>
    80007d90:	00001637          	lui	a2,0x1
    80007d94:	00100593          	li	a1,1
    80007d98:	00048513          	mv	a0,s1
    80007d9c:	00000097          	auipc	ra,0x0
    80007da0:	50c080e7          	jalr	1292(ra) # 800082a8 <__memset>
    80007da4:	00093703          	ld	a4,0(s2)
    80007da8:	016487b3          	add	a5,s1,s6
    80007dac:	00e4b023          	sd	a4,0(s1)
    80007db0:	00993023          	sd	s1,0(s2)
    80007db4:	fcfa76e3          	bgeu	s4,a5,80007d80 <freerange+0x70>
    80007db8:	03813083          	ld	ra,56(sp)
    80007dbc:	03013403          	ld	s0,48(sp)
    80007dc0:	02813483          	ld	s1,40(sp)
    80007dc4:	02013903          	ld	s2,32(sp)
    80007dc8:	01813983          	ld	s3,24(sp)
    80007dcc:	01013a03          	ld	s4,16(sp)
    80007dd0:	00813a83          	ld	s5,8(sp)
    80007dd4:	00013b03          	ld	s6,0(sp)
    80007dd8:	04010113          	addi	sp,sp,64
    80007ddc:	00008067          	ret
    80007de0:	00002517          	auipc	a0,0x2
    80007de4:	97850513          	addi	a0,a0,-1672 # 80009758 <digits+0x18>
    80007de8:	fffff097          	auipc	ra,0xfffff
    80007dec:	3d4080e7          	jalr	980(ra) # 800071bc <panic>

0000000080007df0 <kfree>:
    80007df0:	fe010113          	addi	sp,sp,-32
    80007df4:	00813823          	sd	s0,16(sp)
    80007df8:	00113c23          	sd	ra,24(sp)
    80007dfc:	00913423          	sd	s1,8(sp)
    80007e00:	02010413          	addi	s0,sp,32
    80007e04:	03451793          	slli	a5,a0,0x34
    80007e08:	04079c63          	bnez	a5,80007e60 <kfree+0x70>
    80007e0c:	00004797          	auipc	a5,0x4
    80007e10:	bf478793          	addi	a5,a5,-1036 # 8000ba00 <end>
    80007e14:	00050493          	mv	s1,a0
    80007e18:	04f56463          	bltu	a0,a5,80007e60 <kfree+0x70>
    80007e1c:	01100793          	li	a5,17
    80007e20:	01b79793          	slli	a5,a5,0x1b
    80007e24:	02f57e63          	bgeu	a0,a5,80007e60 <kfree+0x70>
    80007e28:	00001637          	lui	a2,0x1
    80007e2c:	00100593          	li	a1,1
    80007e30:	00000097          	auipc	ra,0x0
    80007e34:	478080e7          	jalr	1144(ra) # 800082a8 <__memset>
    80007e38:	00003797          	auipc	a5,0x3
    80007e3c:	90878793          	addi	a5,a5,-1784 # 8000a740 <kmem>
    80007e40:	0007b703          	ld	a4,0(a5)
    80007e44:	01813083          	ld	ra,24(sp)
    80007e48:	01013403          	ld	s0,16(sp)
    80007e4c:	00e4b023          	sd	a4,0(s1)
    80007e50:	0097b023          	sd	s1,0(a5)
    80007e54:	00813483          	ld	s1,8(sp)
    80007e58:	02010113          	addi	sp,sp,32
    80007e5c:	00008067          	ret
    80007e60:	00002517          	auipc	a0,0x2
    80007e64:	8f850513          	addi	a0,a0,-1800 # 80009758 <digits+0x18>
    80007e68:	fffff097          	auipc	ra,0xfffff
    80007e6c:	354080e7          	jalr	852(ra) # 800071bc <panic>

0000000080007e70 <kalloc>:
    80007e70:	fe010113          	addi	sp,sp,-32
    80007e74:	00813823          	sd	s0,16(sp)
    80007e78:	00913423          	sd	s1,8(sp)
    80007e7c:	00113c23          	sd	ra,24(sp)
    80007e80:	02010413          	addi	s0,sp,32
    80007e84:	00003797          	auipc	a5,0x3
    80007e88:	8bc78793          	addi	a5,a5,-1860 # 8000a740 <kmem>
    80007e8c:	0007b483          	ld	s1,0(a5)
    80007e90:	02048063          	beqz	s1,80007eb0 <kalloc+0x40>
    80007e94:	0004b703          	ld	a4,0(s1)
    80007e98:	00001637          	lui	a2,0x1
    80007e9c:	00500593          	li	a1,5
    80007ea0:	00048513          	mv	a0,s1
    80007ea4:	00e7b023          	sd	a4,0(a5)
    80007ea8:	00000097          	auipc	ra,0x0
    80007eac:	400080e7          	jalr	1024(ra) # 800082a8 <__memset>
    80007eb0:	01813083          	ld	ra,24(sp)
    80007eb4:	01013403          	ld	s0,16(sp)
    80007eb8:	00048513          	mv	a0,s1
    80007ebc:	00813483          	ld	s1,8(sp)
    80007ec0:	02010113          	addi	sp,sp,32
    80007ec4:	00008067          	ret

0000000080007ec8 <initlock>:
    80007ec8:	ff010113          	addi	sp,sp,-16
    80007ecc:	00813423          	sd	s0,8(sp)
    80007ed0:	01010413          	addi	s0,sp,16
    80007ed4:	00813403          	ld	s0,8(sp)
    80007ed8:	00b53423          	sd	a1,8(a0)
    80007edc:	00052023          	sw	zero,0(a0)
    80007ee0:	00053823          	sd	zero,16(a0)
    80007ee4:	01010113          	addi	sp,sp,16
    80007ee8:	00008067          	ret

0000000080007eec <acquire>:
    80007eec:	fe010113          	addi	sp,sp,-32
    80007ef0:	00813823          	sd	s0,16(sp)
    80007ef4:	00913423          	sd	s1,8(sp)
    80007ef8:	00113c23          	sd	ra,24(sp)
    80007efc:	01213023          	sd	s2,0(sp)
    80007f00:	02010413          	addi	s0,sp,32
    80007f04:	00050493          	mv	s1,a0
    80007f08:	10002973          	csrr	s2,sstatus
    80007f0c:	100027f3          	csrr	a5,sstatus
    80007f10:	ffd7f793          	andi	a5,a5,-3
    80007f14:	10079073          	csrw	sstatus,a5
    80007f18:	fffff097          	auipc	ra,0xfffff
    80007f1c:	8e0080e7          	jalr	-1824(ra) # 800067f8 <mycpu>
    80007f20:	07852783          	lw	a5,120(a0)
    80007f24:	06078e63          	beqz	a5,80007fa0 <acquire+0xb4>
    80007f28:	fffff097          	auipc	ra,0xfffff
    80007f2c:	8d0080e7          	jalr	-1840(ra) # 800067f8 <mycpu>
    80007f30:	07852783          	lw	a5,120(a0)
    80007f34:	0004a703          	lw	a4,0(s1)
    80007f38:	0017879b          	addiw	a5,a5,1
    80007f3c:	06f52c23          	sw	a5,120(a0)
    80007f40:	04071063          	bnez	a4,80007f80 <acquire+0x94>
    80007f44:	00100713          	li	a4,1
    80007f48:	00070793          	mv	a5,a4
    80007f4c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007f50:	0007879b          	sext.w	a5,a5
    80007f54:	fe079ae3          	bnez	a5,80007f48 <acquire+0x5c>
    80007f58:	0ff0000f          	fence
    80007f5c:	fffff097          	auipc	ra,0xfffff
    80007f60:	89c080e7          	jalr	-1892(ra) # 800067f8 <mycpu>
    80007f64:	01813083          	ld	ra,24(sp)
    80007f68:	01013403          	ld	s0,16(sp)
    80007f6c:	00a4b823          	sd	a0,16(s1)
    80007f70:	00013903          	ld	s2,0(sp)
    80007f74:	00813483          	ld	s1,8(sp)
    80007f78:	02010113          	addi	sp,sp,32
    80007f7c:	00008067          	ret
    80007f80:	0104b903          	ld	s2,16(s1)
    80007f84:	fffff097          	auipc	ra,0xfffff
    80007f88:	874080e7          	jalr	-1932(ra) # 800067f8 <mycpu>
    80007f8c:	faa91ce3          	bne	s2,a0,80007f44 <acquire+0x58>
    80007f90:	00001517          	auipc	a0,0x1
    80007f94:	7d050513          	addi	a0,a0,2000 # 80009760 <digits+0x20>
    80007f98:	fffff097          	auipc	ra,0xfffff
    80007f9c:	224080e7          	jalr	548(ra) # 800071bc <panic>
    80007fa0:	00195913          	srli	s2,s2,0x1
    80007fa4:	fffff097          	auipc	ra,0xfffff
    80007fa8:	854080e7          	jalr	-1964(ra) # 800067f8 <mycpu>
    80007fac:	00197913          	andi	s2,s2,1
    80007fb0:	07252e23          	sw	s2,124(a0)
    80007fb4:	f75ff06f          	j	80007f28 <acquire+0x3c>

0000000080007fb8 <release>:
    80007fb8:	fe010113          	addi	sp,sp,-32
    80007fbc:	00813823          	sd	s0,16(sp)
    80007fc0:	00113c23          	sd	ra,24(sp)
    80007fc4:	00913423          	sd	s1,8(sp)
    80007fc8:	01213023          	sd	s2,0(sp)
    80007fcc:	02010413          	addi	s0,sp,32
    80007fd0:	00052783          	lw	a5,0(a0)
    80007fd4:	00079a63          	bnez	a5,80007fe8 <release+0x30>
    80007fd8:	00001517          	auipc	a0,0x1
    80007fdc:	79050513          	addi	a0,a0,1936 # 80009768 <digits+0x28>
    80007fe0:	fffff097          	auipc	ra,0xfffff
    80007fe4:	1dc080e7          	jalr	476(ra) # 800071bc <panic>
    80007fe8:	01053903          	ld	s2,16(a0)
    80007fec:	00050493          	mv	s1,a0
    80007ff0:	fffff097          	auipc	ra,0xfffff
    80007ff4:	808080e7          	jalr	-2040(ra) # 800067f8 <mycpu>
    80007ff8:	fea910e3          	bne	s2,a0,80007fd8 <release+0x20>
    80007ffc:	0004b823          	sd	zero,16(s1)
    80008000:	0ff0000f          	fence
    80008004:	0f50000f          	fence	iorw,ow
    80008008:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000800c:	ffffe097          	auipc	ra,0xffffe
    80008010:	7ec080e7          	jalr	2028(ra) # 800067f8 <mycpu>
    80008014:	100027f3          	csrr	a5,sstatus
    80008018:	0027f793          	andi	a5,a5,2
    8000801c:	04079a63          	bnez	a5,80008070 <release+0xb8>
    80008020:	07852783          	lw	a5,120(a0)
    80008024:	02f05e63          	blez	a5,80008060 <release+0xa8>
    80008028:	fff7871b          	addiw	a4,a5,-1
    8000802c:	06e52c23          	sw	a4,120(a0)
    80008030:	00071c63          	bnez	a4,80008048 <release+0x90>
    80008034:	07c52783          	lw	a5,124(a0)
    80008038:	00078863          	beqz	a5,80008048 <release+0x90>
    8000803c:	100027f3          	csrr	a5,sstatus
    80008040:	0027e793          	ori	a5,a5,2
    80008044:	10079073          	csrw	sstatus,a5
    80008048:	01813083          	ld	ra,24(sp)
    8000804c:	01013403          	ld	s0,16(sp)
    80008050:	00813483          	ld	s1,8(sp)
    80008054:	00013903          	ld	s2,0(sp)
    80008058:	02010113          	addi	sp,sp,32
    8000805c:	00008067          	ret
    80008060:	00001517          	auipc	a0,0x1
    80008064:	72850513          	addi	a0,a0,1832 # 80009788 <digits+0x48>
    80008068:	fffff097          	auipc	ra,0xfffff
    8000806c:	154080e7          	jalr	340(ra) # 800071bc <panic>
    80008070:	00001517          	auipc	a0,0x1
    80008074:	70050513          	addi	a0,a0,1792 # 80009770 <digits+0x30>
    80008078:	fffff097          	auipc	ra,0xfffff
    8000807c:	144080e7          	jalr	324(ra) # 800071bc <panic>

0000000080008080 <holding>:
    80008080:	00052783          	lw	a5,0(a0)
    80008084:	00079663          	bnez	a5,80008090 <holding+0x10>
    80008088:	00000513          	li	a0,0
    8000808c:	00008067          	ret
    80008090:	fe010113          	addi	sp,sp,-32
    80008094:	00813823          	sd	s0,16(sp)
    80008098:	00913423          	sd	s1,8(sp)
    8000809c:	00113c23          	sd	ra,24(sp)
    800080a0:	02010413          	addi	s0,sp,32
    800080a4:	01053483          	ld	s1,16(a0)
    800080a8:	ffffe097          	auipc	ra,0xffffe
    800080ac:	750080e7          	jalr	1872(ra) # 800067f8 <mycpu>
    800080b0:	01813083          	ld	ra,24(sp)
    800080b4:	01013403          	ld	s0,16(sp)
    800080b8:	40a48533          	sub	a0,s1,a0
    800080bc:	00153513          	seqz	a0,a0
    800080c0:	00813483          	ld	s1,8(sp)
    800080c4:	02010113          	addi	sp,sp,32
    800080c8:	00008067          	ret

00000000800080cc <push_off>:
    800080cc:	fe010113          	addi	sp,sp,-32
    800080d0:	00813823          	sd	s0,16(sp)
    800080d4:	00113c23          	sd	ra,24(sp)
    800080d8:	00913423          	sd	s1,8(sp)
    800080dc:	02010413          	addi	s0,sp,32
    800080e0:	100024f3          	csrr	s1,sstatus
    800080e4:	100027f3          	csrr	a5,sstatus
    800080e8:	ffd7f793          	andi	a5,a5,-3
    800080ec:	10079073          	csrw	sstatus,a5
    800080f0:	ffffe097          	auipc	ra,0xffffe
    800080f4:	708080e7          	jalr	1800(ra) # 800067f8 <mycpu>
    800080f8:	07852783          	lw	a5,120(a0)
    800080fc:	02078663          	beqz	a5,80008128 <push_off+0x5c>
    80008100:	ffffe097          	auipc	ra,0xffffe
    80008104:	6f8080e7          	jalr	1784(ra) # 800067f8 <mycpu>
    80008108:	07852783          	lw	a5,120(a0)
    8000810c:	01813083          	ld	ra,24(sp)
    80008110:	01013403          	ld	s0,16(sp)
    80008114:	0017879b          	addiw	a5,a5,1
    80008118:	06f52c23          	sw	a5,120(a0)
    8000811c:	00813483          	ld	s1,8(sp)
    80008120:	02010113          	addi	sp,sp,32
    80008124:	00008067          	ret
    80008128:	0014d493          	srli	s1,s1,0x1
    8000812c:	ffffe097          	auipc	ra,0xffffe
    80008130:	6cc080e7          	jalr	1740(ra) # 800067f8 <mycpu>
    80008134:	0014f493          	andi	s1,s1,1
    80008138:	06952e23          	sw	s1,124(a0)
    8000813c:	fc5ff06f          	j	80008100 <push_off+0x34>

0000000080008140 <pop_off>:
    80008140:	ff010113          	addi	sp,sp,-16
    80008144:	00813023          	sd	s0,0(sp)
    80008148:	00113423          	sd	ra,8(sp)
    8000814c:	01010413          	addi	s0,sp,16
    80008150:	ffffe097          	auipc	ra,0xffffe
    80008154:	6a8080e7          	jalr	1704(ra) # 800067f8 <mycpu>
    80008158:	100027f3          	csrr	a5,sstatus
    8000815c:	0027f793          	andi	a5,a5,2
    80008160:	04079663          	bnez	a5,800081ac <pop_off+0x6c>
    80008164:	07852783          	lw	a5,120(a0)
    80008168:	02f05a63          	blez	a5,8000819c <pop_off+0x5c>
    8000816c:	fff7871b          	addiw	a4,a5,-1
    80008170:	06e52c23          	sw	a4,120(a0)
    80008174:	00071c63          	bnez	a4,8000818c <pop_off+0x4c>
    80008178:	07c52783          	lw	a5,124(a0)
    8000817c:	00078863          	beqz	a5,8000818c <pop_off+0x4c>
    80008180:	100027f3          	csrr	a5,sstatus
    80008184:	0027e793          	ori	a5,a5,2
    80008188:	10079073          	csrw	sstatus,a5
    8000818c:	00813083          	ld	ra,8(sp)
    80008190:	00013403          	ld	s0,0(sp)
    80008194:	01010113          	addi	sp,sp,16
    80008198:	00008067          	ret
    8000819c:	00001517          	auipc	a0,0x1
    800081a0:	5ec50513          	addi	a0,a0,1516 # 80009788 <digits+0x48>
    800081a4:	fffff097          	auipc	ra,0xfffff
    800081a8:	018080e7          	jalr	24(ra) # 800071bc <panic>
    800081ac:	00001517          	auipc	a0,0x1
    800081b0:	5c450513          	addi	a0,a0,1476 # 80009770 <digits+0x30>
    800081b4:	fffff097          	auipc	ra,0xfffff
    800081b8:	008080e7          	jalr	8(ra) # 800071bc <panic>

00000000800081bc <push_on>:
    800081bc:	fe010113          	addi	sp,sp,-32
    800081c0:	00813823          	sd	s0,16(sp)
    800081c4:	00113c23          	sd	ra,24(sp)
    800081c8:	00913423          	sd	s1,8(sp)
    800081cc:	02010413          	addi	s0,sp,32
    800081d0:	100024f3          	csrr	s1,sstatus
    800081d4:	100027f3          	csrr	a5,sstatus
    800081d8:	0027e793          	ori	a5,a5,2
    800081dc:	10079073          	csrw	sstatus,a5
    800081e0:	ffffe097          	auipc	ra,0xffffe
    800081e4:	618080e7          	jalr	1560(ra) # 800067f8 <mycpu>
    800081e8:	07852783          	lw	a5,120(a0)
    800081ec:	02078663          	beqz	a5,80008218 <push_on+0x5c>
    800081f0:	ffffe097          	auipc	ra,0xffffe
    800081f4:	608080e7          	jalr	1544(ra) # 800067f8 <mycpu>
    800081f8:	07852783          	lw	a5,120(a0)
    800081fc:	01813083          	ld	ra,24(sp)
    80008200:	01013403          	ld	s0,16(sp)
    80008204:	0017879b          	addiw	a5,a5,1
    80008208:	06f52c23          	sw	a5,120(a0)
    8000820c:	00813483          	ld	s1,8(sp)
    80008210:	02010113          	addi	sp,sp,32
    80008214:	00008067          	ret
    80008218:	0014d493          	srli	s1,s1,0x1
    8000821c:	ffffe097          	auipc	ra,0xffffe
    80008220:	5dc080e7          	jalr	1500(ra) # 800067f8 <mycpu>
    80008224:	0014f493          	andi	s1,s1,1
    80008228:	06952e23          	sw	s1,124(a0)
    8000822c:	fc5ff06f          	j	800081f0 <push_on+0x34>

0000000080008230 <pop_on>:
    80008230:	ff010113          	addi	sp,sp,-16
    80008234:	00813023          	sd	s0,0(sp)
    80008238:	00113423          	sd	ra,8(sp)
    8000823c:	01010413          	addi	s0,sp,16
    80008240:	ffffe097          	auipc	ra,0xffffe
    80008244:	5b8080e7          	jalr	1464(ra) # 800067f8 <mycpu>
    80008248:	100027f3          	csrr	a5,sstatus
    8000824c:	0027f793          	andi	a5,a5,2
    80008250:	04078463          	beqz	a5,80008298 <pop_on+0x68>
    80008254:	07852783          	lw	a5,120(a0)
    80008258:	02f05863          	blez	a5,80008288 <pop_on+0x58>
    8000825c:	fff7879b          	addiw	a5,a5,-1
    80008260:	06f52c23          	sw	a5,120(a0)
    80008264:	07853783          	ld	a5,120(a0)
    80008268:	00079863          	bnez	a5,80008278 <pop_on+0x48>
    8000826c:	100027f3          	csrr	a5,sstatus
    80008270:	ffd7f793          	andi	a5,a5,-3
    80008274:	10079073          	csrw	sstatus,a5
    80008278:	00813083          	ld	ra,8(sp)
    8000827c:	00013403          	ld	s0,0(sp)
    80008280:	01010113          	addi	sp,sp,16
    80008284:	00008067          	ret
    80008288:	00001517          	auipc	a0,0x1
    8000828c:	52850513          	addi	a0,a0,1320 # 800097b0 <digits+0x70>
    80008290:	fffff097          	auipc	ra,0xfffff
    80008294:	f2c080e7          	jalr	-212(ra) # 800071bc <panic>
    80008298:	00001517          	auipc	a0,0x1
    8000829c:	4f850513          	addi	a0,a0,1272 # 80009790 <digits+0x50>
    800082a0:	fffff097          	auipc	ra,0xfffff
    800082a4:	f1c080e7          	jalr	-228(ra) # 800071bc <panic>

00000000800082a8 <__memset>:
    800082a8:	ff010113          	addi	sp,sp,-16
    800082ac:	00813423          	sd	s0,8(sp)
    800082b0:	01010413          	addi	s0,sp,16
    800082b4:	1a060e63          	beqz	a2,80008470 <__memset+0x1c8>
    800082b8:	40a007b3          	neg	a5,a0
    800082bc:	0077f793          	andi	a5,a5,7
    800082c0:	00778693          	addi	a3,a5,7
    800082c4:	00b00813          	li	a6,11
    800082c8:	0ff5f593          	andi	a1,a1,255
    800082cc:	fff6071b          	addiw	a4,a2,-1
    800082d0:	1b06e663          	bltu	a3,a6,8000847c <__memset+0x1d4>
    800082d4:	1cd76463          	bltu	a4,a3,8000849c <__memset+0x1f4>
    800082d8:	1a078e63          	beqz	a5,80008494 <__memset+0x1ec>
    800082dc:	00b50023          	sb	a1,0(a0)
    800082e0:	00100713          	li	a4,1
    800082e4:	1ae78463          	beq	a5,a4,8000848c <__memset+0x1e4>
    800082e8:	00b500a3          	sb	a1,1(a0)
    800082ec:	00200713          	li	a4,2
    800082f0:	1ae78a63          	beq	a5,a4,800084a4 <__memset+0x1fc>
    800082f4:	00b50123          	sb	a1,2(a0)
    800082f8:	00300713          	li	a4,3
    800082fc:	18e78463          	beq	a5,a4,80008484 <__memset+0x1dc>
    80008300:	00b501a3          	sb	a1,3(a0)
    80008304:	00400713          	li	a4,4
    80008308:	1ae78263          	beq	a5,a4,800084ac <__memset+0x204>
    8000830c:	00b50223          	sb	a1,4(a0)
    80008310:	00500713          	li	a4,5
    80008314:	1ae78063          	beq	a5,a4,800084b4 <__memset+0x20c>
    80008318:	00b502a3          	sb	a1,5(a0)
    8000831c:	00700713          	li	a4,7
    80008320:	18e79e63          	bne	a5,a4,800084bc <__memset+0x214>
    80008324:	00b50323          	sb	a1,6(a0)
    80008328:	00700e93          	li	t4,7
    8000832c:	00859713          	slli	a4,a1,0x8
    80008330:	00e5e733          	or	a4,a1,a4
    80008334:	01059e13          	slli	t3,a1,0x10
    80008338:	01c76e33          	or	t3,a4,t3
    8000833c:	01859313          	slli	t1,a1,0x18
    80008340:	006e6333          	or	t1,t3,t1
    80008344:	02059893          	slli	a7,a1,0x20
    80008348:	40f60e3b          	subw	t3,a2,a5
    8000834c:	011368b3          	or	a7,t1,a7
    80008350:	02859813          	slli	a6,a1,0x28
    80008354:	0108e833          	or	a6,a7,a6
    80008358:	03059693          	slli	a3,a1,0x30
    8000835c:	003e589b          	srliw	a7,t3,0x3
    80008360:	00d866b3          	or	a3,a6,a3
    80008364:	03859713          	slli	a4,a1,0x38
    80008368:	00389813          	slli	a6,a7,0x3
    8000836c:	00f507b3          	add	a5,a0,a5
    80008370:	00e6e733          	or	a4,a3,a4
    80008374:	000e089b          	sext.w	a7,t3
    80008378:	00f806b3          	add	a3,a6,a5
    8000837c:	00e7b023          	sd	a4,0(a5)
    80008380:	00878793          	addi	a5,a5,8
    80008384:	fed79ce3          	bne	a5,a3,8000837c <__memset+0xd4>
    80008388:	ff8e7793          	andi	a5,t3,-8
    8000838c:	0007871b          	sext.w	a4,a5
    80008390:	01d787bb          	addw	a5,a5,t4
    80008394:	0ce88e63          	beq	a7,a4,80008470 <__memset+0x1c8>
    80008398:	00f50733          	add	a4,a0,a5
    8000839c:	00b70023          	sb	a1,0(a4)
    800083a0:	0017871b          	addiw	a4,a5,1
    800083a4:	0cc77663          	bgeu	a4,a2,80008470 <__memset+0x1c8>
    800083a8:	00e50733          	add	a4,a0,a4
    800083ac:	00b70023          	sb	a1,0(a4)
    800083b0:	0027871b          	addiw	a4,a5,2
    800083b4:	0ac77e63          	bgeu	a4,a2,80008470 <__memset+0x1c8>
    800083b8:	00e50733          	add	a4,a0,a4
    800083bc:	00b70023          	sb	a1,0(a4)
    800083c0:	0037871b          	addiw	a4,a5,3
    800083c4:	0ac77663          	bgeu	a4,a2,80008470 <__memset+0x1c8>
    800083c8:	00e50733          	add	a4,a0,a4
    800083cc:	00b70023          	sb	a1,0(a4)
    800083d0:	0047871b          	addiw	a4,a5,4
    800083d4:	08c77e63          	bgeu	a4,a2,80008470 <__memset+0x1c8>
    800083d8:	00e50733          	add	a4,a0,a4
    800083dc:	00b70023          	sb	a1,0(a4)
    800083e0:	0057871b          	addiw	a4,a5,5
    800083e4:	08c77663          	bgeu	a4,a2,80008470 <__memset+0x1c8>
    800083e8:	00e50733          	add	a4,a0,a4
    800083ec:	00b70023          	sb	a1,0(a4)
    800083f0:	0067871b          	addiw	a4,a5,6
    800083f4:	06c77e63          	bgeu	a4,a2,80008470 <__memset+0x1c8>
    800083f8:	00e50733          	add	a4,a0,a4
    800083fc:	00b70023          	sb	a1,0(a4)
    80008400:	0077871b          	addiw	a4,a5,7
    80008404:	06c77663          	bgeu	a4,a2,80008470 <__memset+0x1c8>
    80008408:	00e50733          	add	a4,a0,a4
    8000840c:	00b70023          	sb	a1,0(a4)
    80008410:	0087871b          	addiw	a4,a5,8
    80008414:	04c77e63          	bgeu	a4,a2,80008470 <__memset+0x1c8>
    80008418:	00e50733          	add	a4,a0,a4
    8000841c:	00b70023          	sb	a1,0(a4)
    80008420:	0097871b          	addiw	a4,a5,9
    80008424:	04c77663          	bgeu	a4,a2,80008470 <__memset+0x1c8>
    80008428:	00e50733          	add	a4,a0,a4
    8000842c:	00b70023          	sb	a1,0(a4)
    80008430:	00a7871b          	addiw	a4,a5,10
    80008434:	02c77e63          	bgeu	a4,a2,80008470 <__memset+0x1c8>
    80008438:	00e50733          	add	a4,a0,a4
    8000843c:	00b70023          	sb	a1,0(a4)
    80008440:	00b7871b          	addiw	a4,a5,11
    80008444:	02c77663          	bgeu	a4,a2,80008470 <__memset+0x1c8>
    80008448:	00e50733          	add	a4,a0,a4
    8000844c:	00b70023          	sb	a1,0(a4)
    80008450:	00c7871b          	addiw	a4,a5,12
    80008454:	00c77e63          	bgeu	a4,a2,80008470 <__memset+0x1c8>
    80008458:	00e50733          	add	a4,a0,a4
    8000845c:	00b70023          	sb	a1,0(a4)
    80008460:	00d7879b          	addiw	a5,a5,13
    80008464:	00c7f663          	bgeu	a5,a2,80008470 <__memset+0x1c8>
    80008468:	00f507b3          	add	a5,a0,a5
    8000846c:	00b78023          	sb	a1,0(a5)
    80008470:	00813403          	ld	s0,8(sp)
    80008474:	01010113          	addi	sp,sp,16
    80008478:	00008067          	ret
    8000847c:	00b00693          	li	a3,11
    80008480:	e55ff06f          	j	800082d4 <__memset+0x2c>
    80008484:	00300e93          	li	t4,3
    80008488:	ea5ff06f          	j	8000832c <__memset+0x84>
    8000848c:	00100e93          	li	t4,1
    80008490:	e9dff06f          	j	8000832c <__memset+0x84>
    80008494:	00000e93          	li	t4,0
    80008498:	e95ff06f          	j	8000832c <__memset+0x84>
    8000849c:	00000793          	li	a5,0
    800084a0:	ef9ff06f          	j	80008398 <__memset+0xf0>
    800084a4:	00200e93          	li	t4,2
    800084a8:	e85ff06f          	j	8000832c <__memset+0x84>
    800084ac:	00400e93          	li	t4,4
    800084b0:	e7dff06f          	j	8000832c <__memset+0x84>
    800084b4:	00500e93          	li	t4,5
    800084b8:	e75ff06f          	j	8000832c <__memset+0x84>
    800084bc:	00600e93          	li	t4,6
    800084c0:	e6dff06f          	j	8000832c <__memset+0x84>

00000000800084c4 <__memmove>:
    800084c4:	ff010113          	addi	sp,sp,-16
    800084c8:	00813423          	sd	s0,8(sp)
    800084cc:	01010413          	addi	s0,sp,16
    800084d0:	0e060863          	beqz	a2,800085c0 <__memmove+0xfc>
    800084d4:	fff6069b          	addiw	a3,a2,-1
    800084d8:	0006881b          	sext.w	a6,a3
    800084dc:	0ea5e863          	bltu	a1,a0,800085cc <__memmove+0x108>
    800084e0:	00758713          	addi	a4,a1,7
    800084e4:	00a5e7b3          	or	a5,a1,a0
    800084e8:	40a70733          	sub	a4,a4,a0
    800084ec:	0077f793          	andi	a5,a5,7
    800084f0:	00f73713          	sltiu	a4,a4,15
    800084f4:	00174713          	xori	a4,a4,1
    800084f8:	0017b793          	seqz	a5,a5
    800084fc:	00e7f7b3          	and	a5,a5,a4
    80008500:	10078863          	beqz	a5,80008610 <__memmove+0x14c>
    80008504:	00900793          	li	a5,9
    80008508:	1107f463          	bgeu	a5,a6,80008610 <__memmove+0x14c>
    8000850c:	0036581b          	srliw	a6,a2,0x3
    80008510:	fff8081b          	addiw	a6,a6,-1
    80008514:	02081813          	slli	a6,a6,0x20
    80008518:	01d85893          	srli	a7,a6,0x1d
    8000851c:	00858813          	addi	a6,a1,8
    80008520:	00058793          	mv	a5,a1
    80008524:	00050713          	mv	a4,a0
    80008528:	01088833          	add	a6,a7,a6
    8000852c:	0007b883          	ld	a7,0(a5)
    80008530:	00878793          	addi	a5,a5,8
    80008534:	00870713          	addi	a4,a4,8
    80008538:	ff173c23          	sd	a7,-8(a4)
    8000853c:	ff0798e3          	bne	a5,a6,8000852c <__memmove+0x68>
    80008540:	ff867713          	andi	a4,a2,-8
    80008544:	02071793          	slli	a5,a4,0x20
    80008548:	0207d793          	srli	a5,a5,0x20
    8000854c:	00f585b3          	add	a1,a1,a5
    80008550:	40e686bb          	subw	a3,a3,a4
    80008554:	00f507b3          	add	a5,a0,a5
    80008558:	06e60463          	beq	a2,a4,800085c0 <__memmove+0xfc>
    8000855c:	0005c703          	lbu	a4,0(a1)
    80008560:	00e78023          	sb	a4,0(a5)
    80008564:	04068e63          	beqz	a3,800085c0 <__memmove+0xfc>
    80008568:	0015c603          	lbu	a2,1(a1)
    8000856c:	00100713          	li	a4,1
    80008570:	00c780a3          	sb	a2,1(a5)
    80008574:	04e68663          	beq	a3,a4,800085c0 <__memmove+0xfc>
    80008578:	0025c603          	lbu	a2,2(a1)
    8000857c:	00200713          	li	a4,2
    80008580:	00c78123          	sb	a2,2(a5)
    80008584:	02e68e63          	beq	a3,a4,800085c0 <__memmove+0xfc>
    80008588:	0035c603          	lbu	a2,3(a1)
    8000858c:	00300713          	li	a4,3
    80008590:	00c781a3          	sb	a2,3(a5)
    80008594:	02e68663          	beq	a3,a4,800085c0 <__memmove+0xfc>
    80008598:	0045c603          	lbu	a2,4(a1)
    8000859c:	00400713          	li	a4,4
    800085a0:	00c78223          	sb	a2,4(a5)
    800085a4:	00e68e63          	beq	a3,a4,800085c0 <__memmove+0xfc>
    800085a8:	0055c603          	lbu	a2,5(a1)
    800085ac:	00500713          	li	a4,5
    800085b0:	00c782a3          	sb	a2,5(a5)
    800085b4:	00e68663          	beq	a3,a4,800085c0 <__memmove+0xfc>
    800085b8:	0065c703          	lbu	a4,6(a1)
    800085bc:	00e78323          	sb	a4,6(a5)
    800085c0:	00813403          	ld	s0,8(sp)
    800085c4:	01010113          	addi	sp,sp,16
    800085c8:	00008067          	ret
    800085cc:	02061713          	slli	a4,a2,0x20
    800085d0:	02075713          	srli	a4,a4,0x20
    800085d4:	00e587b3          	add	a5,a1,a4
    800085d8:	f0f574e3          	bgeu	a0,a5,800084e0 <__memmove+0x1c>
    800085dc:	02069613          	slli	a2,a3,0x20
    800085e0:	02065613          	srli	a2,a2,0x20
    800085e4:	fff64613          	not	a2,a2
    800085e8:	00e50733          	add	a4,a0,a4
    800085ec:	00c78633          	add	a2,a5,a2
    800085f0:	fff7c683          	lbu	a3,-1(a5)
    800085f4:	fff78793          	addi	a5,a5,-1
    800085f8:	fff70713          	addi	a4,a4,-1
    800085fc:	00d70023          	sb	a3,0(a4)
    80008600:	fec798e3          	bne	a5,a2,800085f0 <__memmove+0x12c>
    80008604:	00813403          	ld	s0,8(sp)
    80008608:	01010113          	addi	sp,sp,16
    8000860c:	00008067          	ret
    80008610:	02069713          	slli	a4,a3,0x20
    80008614:	02075713          	srli	a4,a4,0x20
    80008618:	00170713          	addi	a4,a4,1
    8000861c:	00e50733          	add	a4,a0,a4
    80008620:	00050793          	mv	a5,a0
    80008624:	0005c683          	lbu	a3,0(a1)
    80008628:	00178793          	addi	a5,a5,1
    8000862c:	00158593          	addi	a1,a1,1
    80008630:	fed78fa3          	sb	a3,-1(a5)
    80008634:	fee798e3          	bne	a5,a4,80008624 <__memmove+0x160>
    80008638:	f89ff06f          	j	800085c0 <__memmove+0xfc>

000000008000863c <__mem_free>:
    8000863c:	ff010113          	addi	sp,sp,-16
    80008640:	00813423          	sd	s0,8(sp)
    80008644:	01010413          	addi	s0,sp,16
    80008648:	00002597          	auipc	a1,0x2
    8000864c:	10058593          	addi	a1,a1,256 # 8000a748 <freep>
    80008650:	0005b783          	ld	a5,0(a1)
    80008654:	ff050693          	addi	a3,a0,-16
    80008658:	0007b703          	ld	a4,0(a5)
    8000865c:	00d7fc63          	bgeu	a5,a3,80008674 <__mem_free+0x38>
    80008660:	00e6ee63          	bltu	a3,a4,8000867c <__mem_free+0x40>
    80008664:	00e7fc63          	bgeu	a5,a4,8000867c <__mem_free+0x40>
    80008668:	00070793          	mv	a5,a4
    8000866c:	0007b703          	ld	a4,0(a5)
    80008670:	fed7e8e3          	bltu	a5,a3,80008660 <__mem_free+0x24>
    80008674:	fee7eae3          	bltu	a5,a4,80008668 <__mem_free+0x2c>
    80008678:	fee6f8e3          	bgeu	a3,a4,80008668 <__mem_free+0x2c>
    8000867c:	ff852803          	lw	a6,-8(a0)
    80008680:	02081613          	slli	a2,a6,0x20
    80008684:	01c65613          	srli	a2,a2,0x1c
    80008688:	00c68633          	add	a2,a3,a2
    8000868c:	02c70a63          	beq	a4,a2,800086c0 <__mem_free+0x84>
    80008690:	fee53823          	sd	a4,-16(a0)
    80008694:	0087a503          	lw	a0,8(a5)
    80008698:	02051613          	slli	a2,a0,0x20
    8000869c:	01c65613          	srli	a2,a2,0x1c
    800086a0:	00c78633          	add	a2,a5,a2
    800086a4:	04c68263          	beq	a3,a2,800086e8 <__mem_free+0xac>
    800086a8:	00813403          	ld	s0,8(sp)
    800086ac:	00d7b023          	sd	a3,0(a5)
    800086b0:	00f5b023          	sd	a5,0(a1)
    800086b4:	00000513          	li	a0,0
    800086b8:	01010113          	addi	sp,sp,16
    800086bc:	00008067          	ret
    800086c0:	00872603          	lw	a2,8(a4)
    800086c4:	00073703          	ld	a4,0(a4)
    800086c8:	0106083b          	addw	a6,a2,a6
    800086cc:	ff052c23          	sw	a6,-8(a0)
    800086d0:	fee53823          	sd	a4,-16(a0)
    800086d4:	0087a503          	lw	a0,8(a5)
    800086d8:	02051613          	slli	a2,a0,0x20
    800086dc:	01c65613          	srli	a2,a2,0x1c
    800086e0:	00c78633          	add	a2,a5,a2
    800086e4:	fcc692e3          	bne	a3,a2,800086a8 <__mem_free+0x6c>
    800086e8:	00813403          	ld	s0,8(sp)
    800086ec:	0105053b          	addw	a0,a0,a6
    800086f0:	00a7a423          	sw	a0,8(a5)
    800086f4:	00e7b023          	sd	a4,0(a5)
    800086f8:	00f5b023          	sd	a5,0(a1)
    800086fc:	00000513          	li	a0,0
    80008700:	01010113          	addi	sp,sp,16
    80008704:	00008067          	ret

0000000080008708 <__mem_alloc>:
    80008708:	fc010113          	addi	sp,sp,-64
    8000870c:	02813823          	sd	s0,48(sp)
    80008710:	02913423          	sd	s1,40(sp)
    80008714:	03213023          	sd	s2,32(sp)
    80008718:	01513423          	sd	s5,8(sp)
    8000871c:	02113c23          	sd	ra,56(sp)
    80008720:	01313c23          	sd	s3,24(sp)
    80008724:	01413823          	sd	s4,16(sp)
    80008728:	01613023          	sd	s6,0(sp)
    8000872c:	04010413          	addi	s0,sp,64
    80008730:	00002a97          	auipc	s5,0x2
    80008734:	018a8a93          	addi	s5,s5,24 # 8000a748 <freep>
    80008738:	00f50913          	addi	s2,a0,15
    8000873c:	000ab683          	ld	a3,0(s5)
    80008740:	00495913          	srli	s2,s2,0x4
    80008744:	0019049b          	addiw	s1,s2,1
    80008748:	00048913          	mv	s2,s1
    8000874c:	0c068c63          	beqz	a3,80008824 <__mem_alloc+0x11c>
    80008750:	0006b503          	ld	a0,0(a3)
    80008754:	00852703          	lw	a4,8(a0)
    80008758:	10977063          	bgeu	a4,s1,80008858 <__mem_alloc+0x150>
    8000875c:	000017b7          	lui	a5,0x1
    80008760:	0009099b          	sext.w	s3,s2
    80008764:	0af4e863          	bltu	s1,a5,80008814 <__mem_alloc+0x10c>
    80008768:	02099a13          	slli	s4,s3,0x20
    8000876c:	01ca5a13          	srli	s4,s4,0x1c
    80008770:	fff00b13          	li	s6,-1
    80008774:	0100006f          	j	80008784 <__mem_alloc+0x7c>
    80008778:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000877c:	00852703          	lw	a4,8(a0)
    80008780:	04977463          	bgeu	a4,s1,800087c8 <__mem_alloc+0xc0>
    80008784:	00050793          	mv	a5,a0
    80008788:	fea698e3          	bne	a3,a0,80008778 <__mem_alloc+0x70>
    8000878c:	000a0513          	mv	a0,s4
    80008790:	00000097          	auipc	ra,0x0
    80008794:	1f0080e7          	jalr	496(ra) # 80008980 <kvmincrease>
    80008798:	00050793          	mv	a5,a0
    8000879c:	01050513          	addi	a0,a0,16
    800087a0:	07678e63          	beq	a5,s6,8000881c <__mem_alloc+0x114>
    800087a4:	0137a423          	sw	s3,8(a5)
    800087a8:	00000097          	auipc	ra,0x0
    800087ac:	e94080e7          	jalr	-364(ra) # 8000863c <__mem_free>
    800087b0:	000ab783          	ld	a5,0(s5)
    800087b4:	06078463          	beqz	a5,8000881c <__mem_alloc+0x114>
    800087b8:	0007b503          	ld	a0,0(a5)
    800087bc:	00078693          	mv	a3,a5
    800087c0:	00852703          	lw	a4,8(a0)
    800087c4:	fc9760e3          	bltu	a4,s1,80008784 <__mem_alloc+0x7c>
    800087c8:	08e48263          	beq	s1,a4,8000884c <__mem_alloc+0x144>
    800087cc:	4127073b          	subw	a4,a4,s2
    800087d0:	02071693          	slli	a3,a4,0x20
    800087d4:	01c6d693          	srli	a3,a3,0x1c
    800087d8:	00e52423          	sw	a4,8(a0)
    800087dc:	00d50533          	add	a0,a0,a3
    800087e0:	01252423          	sw	s2,8(a0)
    800087e4:	00fab023          	sd	a5,0(s5)
    800087e8:	01050513          	addi	a0,a0,16
    800087ec:	03813083          	ld	ra,56(sp)
    800087f0:	03013403          	ld	s0,48(sp)
    800087f4:	02813483          	ld	s1,40(sp)
    800087f8:	02013903          	ld	s2,32(sp)
    800087fc:	01813983          	ld	s3,24(sp)
    80008800:	01013a03          	ld	s4,16(sp)
    80008804:	00813a83          	ld	s5,8(sp)
    80008808:	00013b03          	ld	s6,0(sp)
    8000880c:	04010113          	addi	sp,sp,64
    80008810:	00008067          	ret
    80008814:	000019b7          	lui	s3,0x1
    80008818:	f51ff06f          	j	80008768 <__mem_alloc+0x60>
    8000881c:	00000513          	li	a0,0
    80008820:	fcdff06f          	j	800087ec <__mem_alloc+0xe4>
    80008824:	00003797          	auipc	a5,0x3
    80008828:	1cc78793          	addi	a5,a5,460 # 8000b9f0 <base>
    8000882c:	00078513          	mv	a0,a5
    80008830:	00fab023          	sd	a5,0(s5)
    80008834:	00f7b023          	sd	a5,0(a5)
    80008838:	00000713          	li	a4,0
    8000883c:	00003797          	auipc	a5,0x3
    80008840:	1a07ae23          	sw	zero,444(a5) # 8000b9f8 <base+0x8>
    80008844:	00050693          	mv	a3,a0
    80008848:	f11ff06f          	j	80008758 <__mem_alloc+0x50>
    8000884c:	00053703          	ld	a4,0(a0)
    80008850:	00e7b023          	sd	a4,0(a5)
    80008854:	f91ff06f          	j	800087e4 <__mem_alloc+0xdc>
    80008858:	00068793          	mv	a5,a3
    8000885c:	f6dff06f          	j	800087c8 <__mem_alloc+0xc0>

0000000080008860 <__putc>:
    80008860:	fe010113          	addi	sp,sp,-32
    80008864:	00813823          	sd	s0,16(sp)
    80008868:	00113c23          	sd	ra,24(sp)
    8000886c:	02010413          	addi	s0,sp,32
    80008870:	00050793          	mv	a5,a0
    80008874:	fef40593          	addi	a1,s0,-17
    80008878:	00100613          	li	a2,1
    8000887c:	00000513          	li	a0,0
    80008880:	fef407a3          	sb	a5,-17(s0)
    80008884:	fffff097          	auipc	ra,0xfffff
    80008888:	918080e7          	jalr	-1768(ra) # 8000719c <console_write>
    8000888c:	01813083          	ld	ra,24(sp)
    80008890:	01013403          	ld	s0,16(sp)
    80008894:	02010113          	addi	sp,sp,32
    80008898:	00008067          	ret

000000008000889c <__getc>:
    8000889c:	fe010113          	addi	sp,sp,-32
    800088a0:	00813823          	sd	s0,16(sp)
    800088a4:	00113c23          	sd	ra,24(sp)
    800088a8:	02010413          	addi	s0,sp,32
    800088ac:	fe840593          	addi	a1,s0,-24
    800088b0:	00100613          	li	a2,1
    800088b4:	00000513          	li	a0,0
    800088b8:	fffff097          	auipc	ra,0xfffff
    800088bc:	8c4080e7          	jalr	-1852(ra) # 8000717c <console_read>
    800088c0:	fe844503          	lbu	a0,-24(s0)
    800088c4:	01813083          	ld	ra,24(sp)
    800088c8:	01013403          	ld	s0,16(sp)
    800088cc:	02010113          	addi	sp,sp,32
    800088d0:	00008067          	ret

00000000800088d4 <console_handler>:
    800088d4:	fe010113          	addi	sp,sp,-32
    800088d8:	00813823          	sd	s0,16(sp)
    800088dc:	00113c23          	sd	ra,24(sp)
    800088e0:	00913423          	sd	s1,8(sp)
    800088e4:	02010413          	addi	s0,sp,32
    800088e8:	14202773          	csrr	a4,scause
    800088ec:	100027f3          	csrr	a5,sstatus
    800088f0:	0027f793          	andi	a5,a5,2
    800088f4:	06079e63          	bnez	a5,80008970 <console_handler+0x9c>
    800088f8:	00074c63          	bltz	a4,80008910 <console_handler+0x3c>
    800088fc:	01813083          	ld	ra,24(sp)
    80008900:	01013403          	ld	s0,16(sp)
    80008904:	00813483          	ld	s1,8(sp)
    80008908:	02010113          	addi	sp,sp,32
    8000890c:	00008067          	ret
    80008910:	0ff77713          	andi	a4,a4,255
    80008914:	00900793          	li	a5,9
    80008918:	fef712e3          	bne	a4,a5,800088fc <console_handler+0x28>
    8000891c:	ffffe097          	auipc	ra,0xffffe
    80008920:	4b8080e7          	jalr	1208(ra) # 80006dd4 <plic_claim>
    80008924:	00a00793          	li	a5,10
    80008928:	00050493          	mv	s1,a0
    8000892c:	02f50c63          	beq	a0,a5,80008964 <console_handler+0x90>
    80008930:	fc0506e3          	beqz	a0,800088fc <console_handler+0x28>
    80008934:	00050593          	mv	a1,a0
    80008938:	00001517          	auipc	a0,0x1
    8000893c:	d8050513          	addi	a0,a0,-640 # 800096b8 <_ZZ12printIntegermE6digits+0xe0>
    80008940:	fffff097          	auipc	ra,0xfffff
    80008944:	8d8080e7          	jalr	-1832(ra) # 80007218 <__printf>
    80008948:	01013403          	ld	s0,16(sp)
    8000894c:	01813083          	ld	ra,24(sp)
    80008950:	00048513          	mv	a0,s1
    80008954:	00813483          	ld	s1,8(sp)
    80008958:	02010113          	addi	sp,sp,32
    8000895c:	ffffe317          	auipc	t1,0xffffe
    80008960:	4b030067          	jr	1200(t1) # 80006e0c <plic_complete>
    80008964:	fffff097          	auipc	ra,0xfffff
    80008968:	1bc080e7          	jalr	444(ra) # 80007b20 <uartintr>
    8000896c:	fddff06f          	j	80008948 <console_handler+0x74>
    80008970:	00001517          	auipc	a0,0x1
    80008974:	e4850513          	addi	a0,a0,-440 # 800097b8 <digits+0x78>
    80008978:	fffff097          	auipc	ra,0xfffff
    8000897c:	844080e7          	jalr	-1980(ra) # 800071bc <panic>

0000000080008980 <kvmincrease>:
    80008980:	fe010113          	addi	sp,sp,-32
    80008984:	01213023          	sd	s2,0(sp)
    80008988:	00001937          	lui	s2,0x1
    8000898c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80008990:	00813823          	sd	s0,16(sp)
    80008994:	00113c23          	sd	ra,24(sp)
    80008998:	00913423          	sd	s1,8(sp)
    8000899c:	02010413          	addi	s0,sp,32
    800089a0:	01250933          	add	s2,a0,s2
    800089a4:	00c95913          	srli	s2,s2,0xc
    800089a8:	02090863          	beqz	s2,800089d8 <kvmincrease+0x58>
    800089ac:	00000493          	li	s1,0
    800089b0:	00148493          	addi	s1,s1,1
    800089b4:	fffff097          	auipc	ra,0xfffff
    800089b8:	4bc080e7          	jalr	1212(ra) # 80007e70 <kalloc>
    800089bc:	fe991ae3          	bne	s2,s1,800089b0 <kvmincrease+0x30>
    800089c0:	01813083          	ld	ra,24(sp)
    800089c4:	01013403          	ld	s0,16(sp)
    800089c8:	00813483          	ld	s1,8(sp)
    800089cc:	00013903          	ld	s2,0(sp)
    800089d0:	02010113          	addi	sp,sp,32
    800089d4:	00008067          	ret
    800089d8:	01813083          	ld	ra,24(sp)
    800089dc:	01013403          	ld	s0,16(sp)
    800089e0:	00813483          	ld	s1,8(sp)
    800089e4:	00013903          	ld	s2,0(sp)
    800089e8:	00000513          	li	a0,0
    800089ec:	02010113          	addi	sp,sp,32
    800089f0:	00008067          	ret
	...
