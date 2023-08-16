
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	21813103          	ld	sp,536(sp) # 80007218 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	2e9030ef          	jal	ra,80003b04 <start>

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
    80001084:	698020ef          	jal	ra,8000371c <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001124 <_Z5main2v>:
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"

int main2()
{
    80001124:	fb010113          	addi	sp,sp,-80
    80001128:	04113423          	sd	ra,72(sp)
    8000112c:	04813023          	sd	s0,64(sp)
    80001130:	02913c23          	sd	s1,56(sp)
    80001134:	03213823          	sd	s2,48(sp)
    80001138:	05010413          	addi	s0,sp,80
    TCB *threads[5];

    threads[0] = TCB::createThread(nullptr);
    8000113c:	00000513          	li	a0,0
    80001140:	00001097          	auipc	ra,0x1
    80001144:	8f0080e7          	jalr	-1808(ra) # 80001a30 <_ZN3TCB12createThreadEPFvvE>
    80001148:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    8000114c:	00006797          	auipc	a5,0x6
    80001150:	0d47b783          	ld	a5,212(a5) # 80007220 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001154:	00a7b023          	sd	a0,0(a5)

    threads[1] = TCB::createThread(workerBodyA);
    80001158:	00006517          	auipc	a0,0x6
    8000115c:	0b853503          	ld	a0,184(a0) # 80007210 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001160:	00001097          	auipc	ra,0x1
    80001164:	8d0080e7          	jalr	-1840(ra) # 80001a30 <_ZN3TCB12createThreadEPFvvE>
    80001168:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    8000116c:	00005517          	auipc	a0,0x5
    80001170:	eb450513          	addi	a0,a0,-332 # 80006020 <CONSOLE_STATUS+0x10>
    80001174:	00003097          	auipc	ra,0x3
    80001178:	818080e7          	jalr	-2024(ra) # 8000398c <_Z11printStringPKc>
    threads[2] = TCB::createThread(workerBodyB);
    8000117c:	00006517          	auipc	a0,0x6
    80001180:	07c53503          	ld	a0,124(a0) # 800071f8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001184:	00001097          	auipc	ra,0x1
    80001188:	8ac080e7          	jalr	-1876(ra) # 80001a30 <_ZN3TCB12createThreadEPFvvE>
    8000118c:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    80001190:	00005517          	auipc	a0,0x5
    80001194:	ea850513          	addi	a0,a0,-344 # 80006038 <CONSOLE_STATUS+0x28>
    80001198:	00002097          	auipc	ra,0x2
    8000119c:	7f4080e7          	jalr	2036(ra) # 8000398c <_Z11printStringPKc>
    threads[3] = TCB::createThread(workerBodyC);
    800011a0:	00006517          	auipc	a0,0x6
    800011a4:	09053503          	ld	a0,144(a0) # 80007230 <_GLOBAL_OFFSET_TABLE_+0x58>
    800011a8:	00001097          	auipc	ra,0x1
    800011ac:	888080e7          	jalr	-1912(ra) # 80001a30 <_ZN3TCB12createThreadEPFvvE>
    800011b0:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    800011b4:	00005517          	auipc	a0,0x5
    800011b8:	e9c50513          	addi	a0,a0,-356 # 80006050 <CONSOLE_STATUS+0x40>
    800011bc:	00002097          	auipc	ra,0x2
    800011c0:	7d0080e7          	jalr	2000(ra) # 8000398c <_Z11printStringPKc>
    threads[4] = TCB::createThread(workerBodyD);
    800011c4:	00006517          	auipc	a0,0x6
    800011c8:	07453503          	ld	a0,116(a0) # 80007238 <_GLOBAL_OFFSET_TABLE_+0x60>
    800011cc:	00001097          	auipc	ra,0x1
    800011d0:	864080e7          	jalr	-1948(ra) # 80001a30 <_ZN3TCB12createThreadEPFvvE>
    800011d4:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    800011d8:	00005517          	auipc	a0,0x5
    800011dc:	e9050513          	addi	a0,a0,-368 # 80006068 <CONSOLE_STATUS+0x58>
    800011e0:	00002097          	auipc	ra,0x2
    800011e4:	7ac080e7          	jalr	1964(ra) # 8000398c <_Z11printStringPKc>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800011e8:	00006797          	auipc	a5,0x6
    800011ec:	0087b783          	ld	a5,8(a5) # 800071f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800011f0:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800011f4:	00200793          	li	a5,2
    800011f8:	1007a073          	csrs	sstatus,a5
}
    800011fc:	00c0006f          	j	80001208 <_Z5main2v+0xe4>
    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        TCB::yield();
    80001200:	00001097          	auipc	ra,0x1
    80001204:	8f8080e7          	jalr	-1800(ra) # 80001af8 <_ZN3TCB5yieldEv>
    while (!(threads[1]->isFinished() &&
    80001208:	fc043783          	ld	a5,-64(s0)
class TCB
{
public:
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    8000120c:	0287c783          	lbu	a5,40(a5)
    80001210:	fe0788e3          	beqz	a5,80001200 <_Z5main2v+0xdc>
             threads[2]->isFinished() &&
    80001214:	fc843783          	ld	a5,-56(s0)
    80001218:	0287c783          	lbu	a5,40(a5)
    while (!(threads[1]->isFinished() &&
    8000121c:	fe0782e3          	beqz	a5,80001200 <_Z5main2v+0xdc>
             threads[3]->isFinished() &&
    80001220:	fd043783          	ld	a5,-48(s0)
    80001224:	0287c783          	lbu	a5,40(a5)
             threads[2]->isFinished() &&
    80001228:	fc078ce3          	beqz	a5,80001200 <_Z5main2v+0xdc>
             threads[4]->isFinished()))
    8000122c:	fd843783          	ld	a5,-40(s0)
    80001230:	0287c783          	lbu	a5,40(a5)
    while (!(threads[1]->isFinished() &&
    80001234:	fc0786e3          	beqz	a5,80001200 <_Z5main2v+0xdc>
    80001238:	fb840493          	addi	s1,s0,-72
    8000123c:	0140006f          	j	80001250 <_Z5main2v+0x12c>
    }

    for (auto &thread: threads)
    {
        delete thread;
    80001240:	00090513          	mv	a0,s2
    80001244:	00002097          	auipc	ra,0x2
    80001248:	fc0080e7          	jalr	-64(ra) # 80003204 <_ZdlPv>
    for (auto &thread: threads)
    8000124c:	00848493          	addi	s1,s1,8
    80001250:	fe040793          	addi	a5,s0,-32
    80001254:	02f48063          	beq	s1,a5,80001274 <_Z5main2v+0x150>
        delete thread;
    80001258:	0004b903          	ld	s2,0(s1)
    8000125c:	fe0908e3          	beqz	s2,8000124c <_Z5main2v+0x128>
    ~TCB() { delete[] stack; }
    80001260:	00893503          	ld	a0,8(s2)
    80001264:	fc050ee3          	beqz	a0,80001240 <_Z5main2v+0x11c>
    80001268:	00002097          	auipc	ra,0x2
    8000126c:	fc4080e7          	jalr	-60(ra) # 8000322c <_ZdaPv>
    80001270:	fd1ff06f          	j	80001240 <_Z5main2v+0x11c>
    }
    printString("Finished\n");
    80001274:	00005517          	auipc	a0,0x5
    80001278:	e0c50513          	addi	a0,a0,-500 # 80006080 <CONSOLE_STATUS+0x70>
    8000127c:	00002097          	auipc	ra,0x2
    80001280:	710080e7          	jalr	1808(ra) # 8000398c <_Z11printStringPKc>

    return 0;
}
    80001284:	00000513          	li	a0,0
    80001288:	04813083          	ld	ra,72(sp)
    8000128c:	04013403          	ld	s0,64(sp)
    80001290:	03813483          	ld	s1,56(sp)
    80001294:	03013903          	ld	s2,48(sp)
    80001298:	05010113          	addi	sp,sp,80
    8000129c:	00008067          	ret

00000000800012a0 <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    800012a0:	fe010113          	addi	sp,sp,-32
    800012a4:	00113c23          	sd	ra,24(sp)
    800012a8:	00813823          	sd	s0,16(sp)
    800012ac:	00913423          	sd	s1,8(sp)
    800012b0:	01213023          	sd	s2,0(sp)
    800012b4:	02010413          	addi	s0,sp,32
    800012b8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800012bc:	00100793          	li	a5,1
    800012c0:	02a7f863          	bgeu	a5,a0,800012f0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { TCB::yield(); }
    800012c4:	00a00793          	li	a5,10
    800012c8:	02f577b3          	remu	a5,a0,a5
    800012cc:	02078e63          	beqz	a5,80001308 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800012d0:	fff48513          	addi	a0,s1,-1
    800012d4:	00000097          	auipc	ra,0x0
    800012d8:	fcc080e7          	jalr	-52(ra) # 800012a0 <_ZL9fibonaccim>
    800012dc:	00050913          	mv	s2,a0
    800012e0:	ffe48513          	addi	a0,s1,-2
    800012e4:	00000097          	auipc	ra,0x0
    800012e8:	fbc080e7          	jalr	-68(ra) # 800012a0 <_ZL9fibonaccim>
    800012ec:	00a90533          	add	a0,s2,a0
}
    800012f0:	01813083          	ld	ra,24(sp)
    800012f4:	01013403          	ld	s0,16(sp)
    800012f8:	00813483          	ld	s1,8(sp)
    800012fc:	00013903          	ld	s2,0(sp)
    80001300:	02010113          	addi	sp,sp,32
    80001304:	00008067          	ret
    if (n % 10 == 0) { TCB::yield(); }
    80001308:	00000097          	auipc	ra,0x0
    8000130c:	7f0080e7          	jalr	2032(ra) # 80001af8 <_ZN3TCB5yieldEv>
    80001310:	fc1ff06f          	j	800012d0 <_ZL9fibonaccim+0x30>

0000000080001314 <_Z11workerBodyAv>:
{
    80001314:	fe010113          	addi	sp,sp,-32
    80001318:	00113c23          	sd	ra,24(sp)
    8000131c:	00813823          	sd	s0,16(sp)
    80001320:	00913423          	sd	s1,8(sp)
    80001324:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    80001328:	00000493          	li	s1,0
    8000132c:	0300006f          	j	8000135c <_Z11workerBodyAv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    80001330:	00168693          	addi	a3,a3,1
    80001334:	000027b7          	lui	a5,0x2
    80001338:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000133c:	00d7ee63          	bltu	a5,a3,80001358 <_Z11workerBodyAv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    80001340:	00000713          	li	a4,0
    80001344:	000077b7          	lui	a5,0x7
    80001348:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000134c:	fee7e2e3          	bltu	a5,a4,80001330 <_Z11workerBodyAv+0x1c>
    80001350:	00170713          	addi	a4,a4,1
    80001354:	ff1ff06f          	j	80001344 <_Z11workerBodyAv+0x30>
    for (uint64 i = 0; i < 10; i++)
    80001358:	00148493          	addi	s1,s1,1
    8000135c:	00900793          	li	a5,9
    80001360:	0297ec63          	bltu	a5,s1,80001398 <_Z11workerBodyAv+0x84>
        printString("A: i=");
    80001364:	00005517          	auipc	a0,0x5
    80001368:	d2c50513          	addi	a0,a0,-724 # 80006090 <CONSOLE_STATUS+0x80>
    8000136c:	00002097          	auipc	ra,0x2
    80001370:	620080e7          	jalr	1568(ra) # 8000398c <_Z11printStringPKc>
        printInteger(i);
    80001374:	00048513          	mv	a0,s1
    80001378:	00002097          	auipc	ra,0x2
    8000137c:	684080e7          	jalr	1668(ra) # 800039fc <_Z12printIntegerm>
        printString("\n");
    80001380:	00005517          	auipc	a0,0x5
    80001384:	d0850513          	addi	a0,a0,-760 # 80006088 <CONSOLE_STATUS+0x78>
    80001388:	00002097          	auipc	ra,0x2
    8000138c:	604080e7          	jalr	1540(ra) # 8000398c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001390:	00000693          	li	a3,0
    80001394:	fa1ff06f          	j	80001334 <_Z11workerBodyAv+0x20>
}
    80001398:	01813083          	ld	ra,24(sp)
    8000139c:	01013403          	ld	s0,16(sp)
    800013a0:	00813483          	ld	s1,8(sp)
    800013a4:	02010113          	addi	sp,sp,32
    800013a8:	00008067          	ret

00000000800013ac <_Z11workerBodyBv>:
{
    800013ac:	fe010113          	addi	sp,sp,-32
    800013b0:	00113c23          	sd	ra,24(sp)
    800013b4:	00813823          	sd	s0,16(sp)
    800013b8:	00913423          	sd	s1,8(sp)
    800013bc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    800013c0:	00000493          	li	s1,0
    800013c4:	0300006f          	j	800013f4 <_Z11workerBodyBv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    800013c8:	00168693          	addi	a3,a3,1
    800013cc:	000027b7          	lui	a5,0x2
    800013d0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800013d4:	00d7ee63          	bltu	a5,a3,800013f0 <_Z11workerBodyBv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800013d8:	00000713          	li	a4,0
    800013dc:	000077b7          	lui	a5,0x7
    800013e0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800013e4:	fee7e2e3          	bltu	a5,a4,800013c8 <_Z11workerBodyBv+0x1c>
    800013e8:	00170713          	addi	a4,a4,1
    800013ec:	ff1ff06f          	j	800013dc <_Z11workerBodyBv+0x30>
    for (uint64 i = 0; i < 16; i++)
    800013f0:	00148493          	addi	s1,s1,1
    800013f4:	00f00793          	li	a5,15
    800013f8:	0297ec63          	bltu	a5,s1,80001430 <_Z11workerBodyBv+0x84>
        printString("B: i=");
    800013fc:	00005517          	auipc	a0,0x5
    80001400:	c9c50513          	addi	a0,a0,-868 # 80006098 <CONSOLE_STATUS+0x88>
    80001404:	00002097          	auipc	ra,0x2
    80001408:	588080e7          	jalr	1416(ra) # 8000398c <_Z11printStringPKc>
        printInteger(i);
    8000140c:	00048513          	mv	a0,s1
    80001410:	00002097          	auipc	ra,0x2
    80001414:	5ec080e7          	jalr	1516(ra) # 800039fc <_Z12printIntegerm>
        printString("\n");
    80001418:	00005517          	auipc	a0,0x5
    8000141c:	c7050513          	addi	a0,a0,-912 # 80006088 <CONSOLE_STATUS+0x78>
    80001420:	00002097          	auipc	ra,0x2
    80001424:	56c080e7          	jalr	1388(ra) # 8000398c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001428:	00000693          	li	a3,0
    8000142c:	fa1ff06f          	j	800013cc <_Z11workerBodyBv+0x20>
}
    80001430:	01813083          	ld	ra,24(sp)
    80001434:	01013403          	ld	s0,16(sp)
    80001438:	00813483          	ld	s1,8(sp)
    8000143c:	02010113          	addi	sp,sp,32
    80001440:	00008067          	ret

0000000080001444 <_Z11workerBodyCv>:

void workerBodyC()
{
    80001444:	fe010113          	addi	sp,sp,-32
    80001448:	00113c23          	sd	ra,24(sp)
    8000144c:	00813823          	sd	s0,16(sp)
    80001450:	00913423          	sd	s1,8(sp)
    80001454:	01213023          	sd	s2,0(sp)
    80001458:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000145c:	00000493          	li	s1,0
    80001460:	0380006f          	j	80001498 <_Z11workerBodyCv+0x54>
    for (; i < 3; i++)
    {
        printString("C: i=");
    80001464:	00005517          	auipc	a0,0x5
    80001468:	c3c50513          	addi	a0,a0,-964 # 800060a0 <CONSOLE_STATUS+0x90>
    8000146c:	00002097          	auipc	ra,0x2
    80001470:	520080e7          	jalr	1312(ra) # 8000398c <_Z11printStringPKc>
        printInteger(i);
    80001474:	00048513          	mv	a0,s1
    80001478:	00002097          	auipc	ra,0x2
    8000147c:	584080e7          	jalr	1412(ra) # 800039fc <_Z12printIntegerm>
        printString("\n");
    80001480:	00005517          	auipc	a0,0x5
    80001484:	c0850513          	addi	a0,a0,-1016 # 80006088 <CONSOLE_STATUS+0x78>
    80001488:	00002097          	auipc	ra,0x2
    8000148c:	504080e7          	jalr	1284(ra) # 8000398c <_Z11printStringPKc>
    for (; i < 3; i++)
    80001490:	0014849b          	addiw	s1,s1,1
    80001494:	0ff4f493          	andi	s1,s1,255
    80001498:	00200793          	li	a5,2
    8000149c:	fc97f4e3          	bgeu	a5,s1,80001464 <_Z11workerBodyCv+0x20>
    }

    printString("C: yield\n");
    800014a0:	00005517          	auipc	a0,0x5
    800014a4:	c0850513          	addi	a0,a0,-1016 # 800060a8 <CONSOLE_STATUS+0x98>
    800014a8:	00002097          	auipc	ra,0x2
    800014ac:	4e4080e7          	jalr	1252(ra) # 8000398c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800014b0:	00700313          	li	t1,7
    TCB::yield();
    800014b4:	00000097          	auipc	ra,0x0
    800014b8:	644080e7          	jalr	1604(ra) # 80001af8 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800014bc:	00030913          	mv	s2,t1

    printString("C: t1=");
    800014c0:	00005517          	auipc	a0,0x5
    800014c4:	bf850513          	addi	a0,a0,-1032 # 800060b8 <CONSOLE_STATUS+0xa8>
    800014c8:	00002097          	auipc	ra,0x2
    800014cc:	4c4080e7          	jalr	1220(ra) # 8000398c <_Z11printStringPKc>
    printInteger(t1);
    800014d0:	00090513          	mv	a0,s2
    800014d4:	00002097          	auipc	ra,0x2
    800014d8:	528080e7          	jalr	1320(ra) # 800039fc <_Z12printIntegerm>
    printString("\n");
    800014dc:	00005517          	auipc	a0,0x5
    800014e0:	bac50513          	addi	a0,a0,-1108 # 80006088 <CONSOLE_STATUS+0x78>
    800014e4:	00002097          	auipc	ra,0x2
    800014e8:	4a8080e7          	jalr	1192(ra) # 8000398c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800014ec:	00c00513          	li	a0,12
    800014f0:	00000097          	auipc	ra,0x0
    800014f4:	db0080e7          	jalr	-592(ra) # 800012a0 <_ZL9fibonaccim>
    800014f8:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800014fc:	00005517          	auipc	a0,0x5
    80001500:	bc450513          	addi	a0,a0,-1084 # 800060c0 <CONSOLE_STATUS+0xb0>
    80001504:	00002097          	auipc	ra,0x2
    80001508:	488080e7          	jalr	1160(ra) # 8000398c <_Z11printStringPKc>
    printInteger(result);
    8000150c:	00090513          	mv	a0,s2
    80001510:	00002097          	auipc	ra,0x2
    80001514:	4ec080e7          	jalr	1260(ra) # 800039fc <_Z12printIntegerm>
    printString("\n");
    80001518:	00005517          	auipc	a0,0x5
    8000151c:	b7050513          	addi	a0,a0,-1168 # 80006088 <CONSOLE_STATUS+0x78>
    80001520:	00002097          	auipc	ra,0x2
    80001524:	46c080e7          	jalr	1132(ra) # 8000398c <_Z11printStringPKc>
    80001528:	0380006f          	j	80001560 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    8000152c:	00005517          	auipc	a0,0x5
    80001530:	b7450513          	addi	a0,a0,-1164 # 800060a0 <CONSOLE_STATUS+0x90>
    80001534:	00002097          	auipc	ra,0x2
    80001538:	458080e7          	jalr	1112(ra) # 8000398c <_Z11printStringPKc>
        printInteger(i);
    8000153c:	00048513          	mv	a0,s1
    80001540:	00002097          	auipc	ra,0x2
    80001544:	4bc080e7          	jalr	1212(ra) # 800039fc <_Z12printIntegerm>
        printString("\n");
    80001548:	00005517          	auipc	a0,0x5
    8000154c:	b4050513          	addi	a0,a0,-1216 # 80006088 <CONSOLE_STATUS+0x78>
    80001550:	00002097          	auipc	ra,0x2
    80001554:	43c080e7          	jalr	1084(ra) # 8000398c <_Z11printStringPKc>
    for (; i < 6; i++)
    80001558:	0014849b          	addiw	s1,s1,1
    8000155c:	0ff4f493          	andi	s1,s1,255
    80001560:	00500793          	li	a5,5
    80001564:	fc97f4e3          	bgeu	a5,s1,8000152c <_Z11workerBodyCv+0xe8>
    }
//    TCB::yield();
}
    80001568:	01813083          	ld	ra,24(sp)
    8000156c:	01013403          	ld	s0,16(sp)
    80001570:	00813483          	ld	s1,8(sp)
    80001574:	00013903          	ld	s2,0(sp)
    80001578:	02010113          	addi	sp,sp,32
    8000157c:	00008067          	ret

0000000080001580 <_Z11workerBodyDv>:

void workerBodyD()
{
    80001580:	fe010113          	addi	sp,sp,-32
    80001584:	00113c23          	sd	ra,24(sp)
    80001588:	00813823          	sd	s0,16(sp)
    8000158c:	00913423          	sd	s1,8(sp)
    80001590:	01213023          	sd	s2,0(sp)
    80001594:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001598:	00a00493          	li	s1,10
    8000159c:	0380006f          	j	800015d4 <_Z11workerBodyDv+0x54>
    for (; i < 13; i++)
    {
        printString("D: i=");
    800015a0:	00005517          	auipc	a0,0x5
    800015a4:	b3050513          	addi	a0,a0,-1232 # 800060d0 <CONSOLE_STATUS+0xc0>
    800015a8:	00002097          	auipc	ra,0x2
    800015ac:	3e4080e7          	jalr	996(ra) # 8000398c <_Z11printStringPKc>
        printInteger(i);
    800015b0:	00048513          	mv	a0,s1
    800015b4:	00002097          	auipc	ra,0x2
    800015b8:	448080e7          	jalr	1096(ra) # 800039fc <_Z12printIntegerm>
        printString("\n");
    800015bc:	00005517          	auipc	a0,0x5
    800015c0:	acc50513          	addi	a0,a0,-1332 # 80006088 <CONSOLE_STATUS+0x78>
    800015c4:	00002097          	auipc	ra,0x2
    800015c8:	3c8080e7          	jalr	968(ra) # 8000398c <_Z11printStringPKc>
    for (; i < 13; i++)
    800015cc:	0014849b          	addiw	s1,s1,1
    800015d0:	0ff4f493          	andi	s1,s1,255
    800015d4:	00c00793          	li	a5,12
    800015d8:	fc97f4e3          	bgeu	a5,s1,800015a0 <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    800015dc:	00005517          	auipc	a0,0x5
    800015e0:	afc50513          	addi	a0,a0,-1284 # 800060d8 <CONSOLE_STATUS+0xc8>
    800015e4:	00002097          	auipc	ra,0x2
    800015e8:	3a8080e7          	jalr	936(ra) # 8000398c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800015ec:	00500313          	li	t1,5
    TCB::yield();
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	508080e7          	jalr	1288(ra) # 80001af8 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    800015f8:	01000513          	li	a0,16
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	ca4080e7          	jalr	-860(ra) # 800012a0 <_ZL9fibonaccim>
    80001604:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001608:	00005517          	auipc	a0,0x5
    8000160c:	ae050513          	addi	a0,a0,-1312 # 800060e8 <CONSOLE_STATUS+0xd8>
    80001610:	00002097          	auipc	ra,0x2
    80001614:	37c080e7          	jalr	892(ra) # 8000398c <_Z11printStringPKc>
    printInteger(result);
    80001618:	00090513          	mv	a0,s2
    8000161c:	00002097          	auipc	ra,0x2
    80001620:	3e0080e7          	jalr	992(ra) # 800039fc <_Z12printIntegerm>
    printString("\n");
    80001624:	00005517          	auipc	a0,0x5
    80001628:	a6450513          	addi	a0,a0,-1436 # 80006088 <CONSOLE_STATUS+0x78>
    8000162c:	00002097          	auipc	ra,0x2
    80001630:	360080e7          	jalr	864(ra) # 8000398c <_Z11printStringPKc>
    80001634:	0380006f          	j	8000166c <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    80001638:	00005517          	auipc	a0,0x5
    8000163c:	a9850513          	addi	a0,a0,-1384 # 800060d0 <CONSOLE_STATUS+0xc0>
    80001640:	00002097          	auipc	ra,0x2
    80001644:	34c080e7          	jalr	844(ra) # 8000398c <_Z11printStringPKc>
        printInteger(i);
    80001648:	00048513          	mv	a0,s1
    8000164c:	00002097          	auipc	ra,0x2
    80001650:	3b0080e7          	jalr	944(ra) # 800039fc <_Z12printIntegerm>
        printString("\n");
    80001654:	00005517          	auipc	a0,0x5
    80001658:	a3450513          	addi	a0,a0,-1484 # 80006088 <CONSOLE_STATUS+0x78>
    8000165c:	00002097          	auipc	ra,0x2
    80001660:	330080e7          	jalr	816(ra) # 8000398c <_Z11printStringPKc>
    for (; i < 16; i++)
    80001664:	0014849b          	addiw	s1,s1,1
    80001668:	0ff4f493          	andi	s1,s1,255
    8000166c:	00f00793          	li	a5,15
    80001670:	fc97f4e3          	bgeu	a5,s1,80001638 <_Z11workerBodyDv+0xb8>
    }
//    TCB::yield();
    80001674:	01813083          	ld	ra,24(sp)
    80001678:	01013403          	ld	s0,16(sp)
    8000167c:	00813483          	ld	s1,8(sp)
    80001680:	00013903          	ld	s2,0(sp)
    80001684:	02010113          	addi	sp,sp,32
    80001688:	00008067          	ret

000000008000168c <main>:

// tests delete this before submition !!!!!!!!!!!
#include "../h/memoryAllocatorTest.hpp"
#include "../h/kObjectAllocatorTest.hpp"

int main() {
    8000168c:	99010113          	addi	sp,sp,-1648
    80001690:	66113423          	sd	ra,1640(sp)
    80001694:	66813023          	sd	s0,1632(sp)
    80001698:	64913c23          	sd	s1,1624(sp)
    8000169c:	65213823          	sd	s2,1616(sp)
    800016a0:	67010413          	addi	s0,sp,1648

    uint64* arr = (uint64*) MemoryAllocator::instance()->kmem_alloc(64 * 100);
    800016a4:	00000097          	auipc	ra,0x0
    800016a8:	628080e7          	jalr	1576(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    800016ac:	000025b7          	lui	a1,0x2
    800016b0:	90058593          	addi	a1,a1,-1792 # 1900 <_entry-0x7fffe700>
    800016b4:	00000097          	auipc	ra,0x0
    800016b8:	6fc080e7          	jalr	1788(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    800016bc:	00050493          	mv	s1,a0
    for (int i = 0; i < 100; ++i) arr[i] = (uint64) -1;
    800016c0:	00000793          	li	a5,0
    800016c4:	06300713          	li	a4,99
    800016c8:	00f74e63          	blt	a4,a5,800016e4 <main+0x58>
    800016cc:	00379713          	slli	a4,a5,0x3
    800016d0:	00e48733          	add	a4,s1,a4
    800016d4:	fff00693          	li	a3,-1
    800016d8:	00d73023          	sd	a3,0(a4)
    800016dc:	0017879b          	addiw	a5,a5,1
    800016e0:	fe5ff06f          	j	800016c4 <main+0x38>
    MemoryAllocator::instance()->kmem_free(arr);
    800016e4:	00000097          	auipc	ra,0x0
    800016e8:	5e8080e7          	jalr	1512(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    800016ec:	00048593          	mv	a1,s1
    800016f0:	00000097          	auipc	ra,0x0
    800016f4:	768080e7          	jalr	1896(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>
        );
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    }
    void* operator new(size_t size) {
        return MemoryAllocator::instance()->kmem_alloc(size);
    800016f8:	00000097          	auipc	ra,0x0
    800016fc:	5d4080e7          	jalr	1492(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80001700:	04000593          	li	a1,64
    80001704:	00000097          	auipc	ra,0x0
    80001708:	6ac080e7          	jalr	1708(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    8000170c:	00050913          	mv	s2,a0
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    80001710:	00400793          	li	a5,4
    80001714:	00f53023          	sd	a5,0(a0)
    80001718:	00f53423          	sd	a5,8(a0)
    8000171c:	00800793          	li	a5,8
    80001720:	00f53c23          	sd	a5,24(a0)
    80001724:	00100793          	li	a5,1
    80001728:	02f53823          	sd	a5,48(a0)
    8000172c:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80001730:	00000097          	auipc	ra,0x0
    80001734:	59c080e7          	jalr	1436(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80001738:	03093583          	ld	a1,48(s2)
    8000173c:	00359593          	slli	a1,a1,0x3
    80001740:	00000097          	auipc	ra,0x0
    80001744:	670080e7          	jalr	1648(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    80001748:	02a93423          	sd	a0,40(s2)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    8000174c:	00000097          	auipc	ra,0x0
    80001750:	580080e7          	jalr	1408(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80001754:	03093583          	ld	a1,48(s2)
    80001758:	00359593          	slli	a1,a1,0x3
    8000175c:	00000097          	auipc	ra,0x0
    80001760:	654080e7          	jalr	1620(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    80001764:	02a93023          	sd	a0,32(s2)
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80001768:	00893703          	ld	a4,8(s2)
    8000176c:	ff877793          	andi	a5,a4,-8
    80001770:	02f70463          	beq	a4,a5,80001798 <main+0x10c>
    80001774:	00800713          	li	a4,8
    80001778:	00e787b3          	add	a5,a5,a4
    8000177c:	00f93423          	sd	a5,8(s2)
    80001780:	00f93023          	sd	a5,0(s2)
        memorySizeForBits = numberOfObjects / 8;
    80001784:	0037d793          	srli	a5,a5,0x3
    80001788:	00f93823          	sd	a5,16(s2)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    8000178c:	00000097          	auipc	ra,0x0
    80001790:	540080e7          	jalr	1344(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80001794:	00c0006f          	j	800017a0 <main+0x114>
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80001798:	00000713          	li	a4,0
    8000179c:	fddff06f          	j	80001778 <main+0xec>
                memorySizeForBits + initialNumberOfObjects * objectSize
    800017a0:	01093583          	ld	a1,16(s2)
    800017a4:	00093783          	ld	a5,0(s2)
    800017a8:	00379793          	slli	a5,a5,0x3
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    800017ac:	02893483          	ld	s1,40(s2)
    800017b0:	00f585b3          	add	a1,a1,a5
    800017b4:	00000097          	auipc	ra,0x0
    800017b8:	5fc080e7          	jalr	1532(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    800017bc:	00a4b023          	sd	a0,0(s1)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    800017c0:	02893783          	ld	a5,40(s2)
    800017c4:	0007b783          	ld	a5,0(a5)
    800017c8:	01093683          	ld	a3,16(s2)
    800017cc:	02093703          	ld	a4,32(s2)
    800017d0:	00d787b3          	add	a5,a5,a3
    800017d4:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    800017d8:	00000793          	li	a5,0
    800017dc:	01093703          	ld	a4,16(s2)
    800017e0:	00e7fe63          	bgeu	a5,a4,800017fc <main+0x170>
    800017e4:	02893703          	ld	a4,40(s2)
    800017e8:	00073703          	ld	a4,0(a4)
    800017ec:	00f70733          	add	a4,a4,a5
    800017f0:	00070023          	sb	zero,0(a4)
    800017f4:	00178793          	addi	a5,a5,1
    800017f8:	fe5ff06f          	j	800017dc <main+0x150>

    //KObjectAllocator* newObj = new KObjectAllocator(sizeof(uint8), 4);
    KObjectAllocator* newObj = new KObjectAllocator(sizeof(uint64), 4);

    void* objArr[200];
    for (int i = 0; i < 200; ++i) {
    800017fc:	00000493          	li	s1,0
    80001800:	0600006f          	j	80001860 <main+0x1d4>
        objArr[i] = newObj->allocateNewObject();
        if (i % 10 == 0) {
            printString("objectNumber: "); printInteger(newObj->getNumberOfObjects()); printString("\n");
    80001804:	00005517          	auipc	a0,0x5
    80001808:	8f450513          	addi	a0,a0,-1804 # 800060f8 <CONSOLE_STATUS+0xe8>
    8000180c:	00002097          	auipc	ra,0x2
    80001810:	180080e7          	jalr	384(ra) # 8000398c <_Z11printStringPKc>
    80001814:	00893503          	ld	a0,8(s2)
    80001818:	00002097          	auipc	ra,0x2
    8000181c:	1e4080e7          	jalr	484(ra) # 800039fc <_Z12printIntegerm>
    80001820:	00005517          	auipc	a0,0x5
    80001824:	86850513          	addi	a0,a0,-1944 # 80006088 <CONSOLE_STATUS+0x78>
    80001828:	00002097          	auipc	ra,0x2
    8000182c:	164080e7          	jalr	356(ra) # 8000398c <_Z11printStringPKc>
            printString("numberOfAllocations: "); printInteger(newObj->getNumberOfAllocations()); printString("\n");
    80001830:	00005517          	auipc	a0,0x5
    80001834:	8d850513          	addi	a0,a0,-1832 # 80006108 <CONSOLE_STATUS+0xf8>
    80001838:	00002097          	auipc	ra,0x2
    8000183c:	154080e7          	jalr	340(ra) # 8000398c <_Z11printStringPKc>
    80001840:	03093503          	ld	a0,48(s2)
    80001844:	00002097          	auipc	ra,0x2
    80001848:	1b8080e7          	jalr	440(ra) # 800039fc <_Z12printIntegerm>
    8000184c:	00005517          	auipc	a0,0x5
    80001850:	83c50513          	addi	a0,a0,-1988 # 80006088 <CONSOLE_STATUS+0x78>
    80001854:	00002097          	auipc	ra,0x2
    80001858:	138080e7          	jalr	312(ra) # 8000398c <_Z11printStringPKc>
    for (int i = 0; i < 200; ++i) {
    8000185c:	0014849b          	addiw	s1,s1,1
    80001860:	0c700793          	li	a5,199
    80001864:	0297c863          	blt	a5,s1,80001894 <main+0x208>
        objArr[i] = newObj->allocateNewObject();
    80001868:	00090513          	mv	a0,s2
    8000186c:	00002097          	auipc	ra,0x2
    80001870:	da4080e7          	jalr	-604(ra) # 80003610 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80001874:	00349793          	slli	a5,s1,0x3
    80001878:	fe040713          	addi	a4,s0,-32
    8000187c:	00f707b3          	add	a5,a4,a5
    80001880:	9ca7b023          	sd	a0,-1600(a5)
        if (i % 10 == 0) {
    80001884:	00a00793          	li	a5,10
    80001888:	02f4e7bb          	remw	a5,s1,a5
    8000188c:	fc0798e3          	bnez	a5,8000185c <main+0x1d0>
    80001890:	f75ff06f          	j	80001804 <main+0x178>
            //newObj->printInternalMemory();
        }
    }

    printString("\nobjArr[7]: "); printInteger((uint64) objArr[7]);
    80001894:	00005517          	auipc	a0,0x5
    80001898:	88c50513          	addi	a0,a0,-1908 # 80006120 <CONSOLE_STATUS+0x110>
    8000189c:	00002097          	auipc	ra,0x2
    800018a0:	0f0080e7          	jalr	240(ra) # 8000398c <_Z11printStringPKc>
    800018a4:	9d843503          	ld	a0,-1576(s0)
    800018a8:	00002097          	auipc	ra,0x2
    800018ac:	154080e7          	jalr	340(ra) # 800039fc <_Z12printIntegerm>
    printString("\nobjArr[8]: "); printInteger((uint64) objArr[8]);
    800018b0:	00005517          	auipc	a0,0x5
    800018b4:	88050513          	addi	a0,a0,-1920 # 80006130 <CONSOLE_STATUS+0x120>
    800018b8:	00002097          	auipc	ra,0x2
    800018bc:	0d4080e7          	jalr	212(ra) # 8000398c <_Z11printStringPKc>
    800018c0:	9e043503          	ld	a0,-1568(s0)
    800018c4:	00002097          	auipc	ra,0x2
    800018c8:	138080e7          	jalr	312(ra) # 800039fc <_Z12printIntegerm>
    printString("\nobjArr[9]: "); printInteger((uint64) objArr[9]); printString("\n");
    800018cc:	00005517          	auipc	a0,0x5
    800018d0:	87450513          	addi	a0,a0,-1932 # 80006140 <CONSOLE_STATUS+0x130>
    800018d4:	00002097          	auipc	ra,0x2
    800018d8:	0b8080e7          	jalr	184(ra) # 8000398c <_Z11printStringPKc>
    800018dc:	9e843503          	ld	a0,-1560(s0)
    800018e0:	00002097          	auipc	ra,0x2
    800018e4:	11c080e7          	jalr	284(ra) # 800039fc <_Z12printIntegerm>
    800018e8:	00004517          	auipc	a0,0x4
    800018ec:	7a050513          	addi	a0,a0,1952 # 80006088 <CONSOLE_STATUS+0x78>
    800018f0:	00002097          	auipc	ra,0x2
    800018f4:	09c080e7          	jalr	156(ra) # 8000398c <_Z11printStringPKc>
    for (int i = 0; i < 10; ++i) newObj->freeObject(objArr[i]);
    800018f8:	00000493          	li	s1,0
    800018fc:	00900793          	li	a5,9
    80001900:	0297c463          	blt	a5,s1,80001928 <main+0x29c>
    80001904:	00349793          	slli	a5,s1,0x3
    80001908:	fe040713          	addi	a4,s0,-32
    8000190c:	00f707b3          	add	a5,a4,a5
    80001910:	9c07b583          	ld	a1,-1600(a5)
    80001914:	00090513          	mv	a0,s2
    80001918:	00002097          	auipc	ra,0x2
    8000191c:	a98080e7          	jalr	-1384(ra) # 800033b0 <_ZN16KObjectAllocator10freeObjectEPv>
    80001920:	0014849b          	addiw	s1,s1,1
    80001924:	fd9ff06f          	j	800018fc <main+0x270>


    delete newObj;
    80001928:	00090863          	beqz	s2,80001938 <main+0x2ac>
    8000192c:	00090513          	mv	a0,s2
    80001930:	00000097          	auipc	ra,0x0
    80001934:	05c080e7          	jalr	92(ra) # 8000198c <_ZN16KObjectAllocatordlEPv>
    /*printString("\nKObjectAllocator tests:\n");
    KObjectAllocatorTest* t2 = new KObjectAllocatorTest;
    t2->runTests();
    delete t2;*/

    printString("\nMemory tests:\n");
    80001938:	00005517          	auipc	a0,0x5
    8000193c:	81850513          	addi	a0,a0,-2024 # 80006150 <CONSOLE_STATUS+0x140>
    80001940:	00002097          	auipc	ra,0x2
    80001944:	04c080e7          	jalr	76(ra) # 8000398c <_Z11printStringPKc>
    MemoryAllocatorTest t1;
    t1.runTests();
    80001948:	99840513          	addi	a0,s0,-1640
    8000194c:	00001097          	auipc	ra,0x1
    80001950:	648080e7          	jalr	1608(ra) # 80002f94 <_ZN19MemoryAllocatorTest8runTestsEv>


    return 0;
    80001954:	00000513          	li	a0,0
    80001958:	66813083          	ld	ra,1640(sp)
    8000195c:	66013403          	ld	s0,1632(sp)
    80001960:	65813483          	ld	s1,1624(sp)
    80001964:	65013903          	ld	s2,1616(sp)
    80001968:	67010113          	addi	sp,sp,1648
    8000196c:	00008067          	ret
    80001970:	00050493          	mv	s1,a0
    KObjectAllocator* newObj = new KObjectAllocator(sizeof(uint64), 4);
    80001974:	00090513          	mv	a0,s2
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	014080e7          	jalr	20(ra) # 8000198c <_ZN16KObjectAllocatordlEPv>
    80001980:	00048513          	mv	a0,s1
    80001984:	00007097          	auipc	ra,0x7
    80001988:	a14080e7          	jalr	-1516(ra) # 80008398 <_Unwind_Resume>

000000008000198c <_ZN16KObjectAllocatordlEPv>:
    }
    void operator delete(void* p) {
    8000198c:	fe010113          	addi	sp,sp,-32
    80001990:	00113c23          	sd	ra,24(sp)
    80001994:	00813823          	sd	s0,16(sp)
    80001998:	00913423          	sd	s1,8(sp)
    8000199c:	01213023          	sd	s2,0(sp)
    800019a0:	02010413          	addi	s0,sp,32
    800019a4:	00050913          	mv	s2,a0
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800019a8:	00000493          	li	s1,0
    800019ac:	03093783          	ld	a5,48(s2)
    800019b0:	02f4f663          	bgeu	s1,a5,800019dc <_ZN16KObjectAllocatordlEPv+0x50>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800019b4:	00000097          	auipc	ra,0x0
    800019b8:	318080e7          	jalr	792(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    800019bc:	02893783          	ld	a5,40(s2)
    800019c0:	00349713          	slli	a4,s1,0x3
    800019c4:	00e787b3          	add	a5,a5,a4
    800019c8:	0007b583          	ld	a1,0(a5)
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	48c080e7          	jalr	1164(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800019d4:	00148493          	addi	s1,s1,1
    800019d8:	fd5ff06f          	j	800019ac <_ZN16KObjectAllocatordlEPv+0x20>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	2f0080e7          	jalr	752(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    800019e4:	02893583          	ld	a1,40(s2)
    800019e8:	00000097          	auipc	ra,0x0
    800019ec:	470080e7          	jalr	1136(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800019f0:	00000097          	auipc	ra,0x0
    800019f4:	2dc080e7          	jalr	732(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    800019f8:	02093583          	ld	a1,32(s2)
    800019fc:	00000097          	auipc	ra,0x0
    80001a00:	45c080e7          	jalr	1116(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	2c8080e7          	jalr	712(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80001a0c:	00090593          	mv	a1,s2
    80001a10:	00000097          	auipc	ra,0x0
    80001a14:	448080e7          	jalr	1096(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>
    }
    80001a18:	01813083          	ld	ra,24(sp)
    80001a1c:	01013403          	ld	s0,16(sp)
    80001a20:	00813483          	ld	s1,8(sp)
    80001a24:	00013903          	ld	s2,0(sp)
    80001a28:	02010113          	addi	sp,sp,32
    80001a2c:	00008067          	ret

0000000080001a30 <_ZN3TCB12createThreadEPFvvE>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    80001a30:	fe010113          	addi	sp,sp,-32
    80001a34:	00113c23          	sd	ra,24(sp)
    80001a38:	00813823          	sd	s0,16(sp)
    80001a3c:	00913423          	sd	s1,8(sp)
    80001a40:	01213023          	sd	s2,0(sp)
    80001a44:	02010413          	addi	s0,sp,32
    80001a48:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    80001a4c:	03000513          	li	a0,48
    80001a50:	00001097          	auipc	ra,0x1
    80001a54:	764080e7          	jalr	1892(ra) # 800031b4 <_Znwm>
    80001a58:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    80001a5c:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001a60:	00090a63          	beqz	s2,80001a74 <_ZN3TCB12createThreadEPFvvE+0x44>
    80001a64:	00002537          	lui	a0,0x2
    80001a68:	00001097          	auipc	ra,0x1
    80001a6c:	774080e7          	jalr	1908(ra) # 800031dc <_Znam>
    80001a70:	0080006f          	j	80001a78 <_ZN3TCB12createThreadEPFvvE+0x48>
    80001a74:	00000513          	li	a0,0
            finished(false)
    80001a78:	00a4b423          	sd	a0,8(s1)
    80001a7c:	00000797          	auipc	a5,0x0
    80001a80:	09878793          	addi	a5,a5,152 # 80001b14 <_ZN3TCB13threadWrapperEv>
    80001a84:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001a88:	02050863          	beqz	a0,80001ab8 <_ZN3TCB12createThreadEPFvvE+0x88>
    80001a8c:	000027b7          	lui	a5,0x2
    80001a90:	00f507b3          	add	a5,a0,a5
            finished(false)
    80001a94:	00f4bc23          	sd	a5,24(s1)
    80001a98:	00200793          	li	a5,2
    80001a9c:	02f4b023          	sd	a5,32(s1)
    80001aa0:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001aa4:	02090c63          	beqz	s2,80001adc <_ZN3TCB12createThreadEPFvvE+0xac>
    80001aa8:	00048513          	mv	a0,s1
    80001aac:	00002097          	auipc	ra,0x2
    80001ab0:	e40080e7          	jalr	-448(ra) # 800038ec <_ZN9Scheduler3putEP3TCB>
    80001ab4:	0280006f          	j	80001adc <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001ab8:	00000793          	li	a5,0
    80001abc:	fd9ff06f          	j	80001a94 <_ZN3TCB12createThreadEPFvvE+0x64>
    80001ac0:	00050913          	mv	s2,a0
    80001ac4:	00048513          	mv	a0,s1
    80001ac8:	00001097          	auipc	ra,0x1
    80001acc:	73c080e7          	jalr	1852(ra) # 80003204 <_ZdlPv>
    80001ad0:	00090513          	mv	a0,s2
    80001ad4:	00007097          	auipc	ra,0x7
    80001ad8:	8c4080e7          	jalr	-1852(ra) # 80008398 <_Unwind_Resume>
}
    80001adc:	00048513          	mv	a0,s1
    80001ae0:	01813083          	ld	ra,24(sp)
    80001ae4:	01013403          	ld	s0,16(sp)
    80001ae8:	00813483          	ld	s1,8(sp)
    80001aec:	00013903          	ld	s2,0(sp)
    80001af0:	02010113          	addi	sp,sp,32
    80001af4:	00008067          	ret

0000000080001af8 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    80001af8:	ff010113          	addi	sp,sp,-16
    80001afc:	00813423          	sd	s0,8(sp)
    80001b00:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80001b04:	00000073          	ecall
}
    80001b08:	00813403          	ld	s0,8(sp)
    80001b0c:	01010113          	addi	sp,sp,16
    80001b10:	00008067          	ret

0000000080001b14 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001b14:	fe010113          	addi	sp,sp,-32
    80001b18:	00113c23          	sd	ra,24(sp)
    80001b1c:	00813823          	sd	s0,16(sp)
    80001b20:	00913423          	sd	s1,8(sp)
    80001b24:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001b28:	00002097          	auipc	ra,0x2
    80001b2c:	bd4080e7          	jalr	-1068(ra) # 800036fc <_ZN5Riscv10popSppSpieEv>
    running->body();
    80001b30:	00005497          	auipc	s1,0x5
    80001b34:	76048493          	addi	s1,s1,1888 # 80007290 <_ZN3TCB7runningE>
    80001b38:	0004b783          	ld	a5,0(s1)
    80001b3c:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    80001b40:	000780e7          	jalr	a5
    running->setFinished(true);
    80001b44:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80001b48:	00100713          	li	a4,1
    80001b4c:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    80001b50:	00000097          	auipc	ra,0x0
    80001b54:	fa8080e7          	jalr	-88(ra) # 80001af8 <_ZN3TCB5yieldEv>
}
    80001b58:	01813083          	ld	ra,24(sp)
    80001b5c:	01013403          	ld	s0,16(sp)
    80001b60:	00813483          	ld	s1,8(sp)
    80001b64:	02010113          	addi	sp,sp,32
    80001b68:	00008067          	ret

0000000080001b6c <_ZN3TCB8dispatchEv>:
{
    80001b6c:	fe010113          	addi	sp,sp,-32
    80001b70:	00113c23          	sd	ra,24(sp)
    80001b74:	00813823          	sd	s0,16(sp)
    80001b78:	00913423          	sd	s1,8(sp)
    80001b7c:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001b80:	00005497          	auipc	s1,0x5
    80001b84:	7104b483          	ld	s1,1808(s1) # 80007290 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001b88:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001b8c:	02078c63          	beqz	a5,80001bc4 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001b90:	00002097          	auipc	ra,0x2
    80001b94:	cf4080e7          	jalr	-780(ra) # 80003884 <_ZN9Scheduler3getEv>
    80001b98:	00005797          	auipc	a5,0x5
    80001b9c:	6ea7bc23          	sd	a0,1784(a5) # 80007290 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001ba0:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001ba4:	01048513          	addi	a0,s1,16
    80001ba8:	fffff097          	auipc	ra,0xfffff
    80001bac:	568080e7          	jalr	1384(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001bb0:	01813083          	ld	ra,24(sp)
    80001bb4:	01013403          	ld	s0,16(sp)
    80001bb8:	00813483          	ld	s1,8(sp)
    80001bbc:	02010113          	addi	sp,sp,32
    80001bc0:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001bc4:	00048513          	mv	a0,s1
    80001bc8:	00002097          	auipc	ra,0x2
    80001bcc:	d24080e7          	jalr	-732(ra) # 800038ec <_ZN9Scheduler3putEP3TCB>
    80001bd0:	fc1ff06f          	j	80001b90 <_ZN3TCB8dispatchEv+0x24>

0000000080001bd4 <_ZN15MemoryAllocator17getMinBlockNumberEm>:
    newMemoryAllocator->freeMemoryHead->next = nullptr;

    return newMemoryAllocator;
}

size_t MemoryAllocator::getMinBlockNumber(size_t size) {
    80001bd4:	ff010113          	addi	sp,sp,-16
    80001bd8:	00813423          	sd	s0,8(sp)
    80001bdc:	01010413          	addi	s0,sp,16
    size_t blockNo = size / MEM_BLOCK_SIZE;
    80001be0:	00655713          	srli	a4,a0,0x6
    blockNo = blockNo + (size - blockNo * MEM_BLOCK_SIZE != 0);
    80001be4:	fc057793          	andi	a5,a0,-64
    80001be8:	40a78533          	sub	a0,a5,a0
    80001bec:	00a03533          	snez	a0,a0
    return blockNo;
}
    80001bf0:	00e50533          	add	a0,a0,a4
    80001bf4:	00813403          	ld	s0,8(sp)
    80001bf8:	01010113          	addi	sp,sp,16
    80001bfc:	00008067          	ret

0000000080001c00 <_ZN15MemoryAllocator14createInstanceEv>:
MemoryAllocator* MemoryAllocator::createInstance() {
    80001c00:	fd010113          	addi	sp,sp,-48
    80001c04:	02113423          	sd	ra,40(sp)
    80001c08:	02813023          	sd	s0,32(sp)
    80001c0c:	00913c23          	sd	s1,24(sp)
    80001c10:	01213823          	sd	s2,16(sp)
    80001c14:	01313423          	sd	s3,8(sp)
    80001c18:	01413023          	sd	s4,0(sp)
    80001c1c:	03010413          	addi	s0,sp,48
    managedMemorySpaceStart = (uint8*) HEAP_START_ADDR;
    80001c20:	00005797          	auipc	a5,0x5
    80001c24:	5c07b783          	ld	a5,1472(a5) # 800071e0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c28:	0007b903          	ld	s2,0(a5)
    managedMemorySpaceEnd = (uint8*) HEAP_END_ADDR;
    80001c2c:	00005797          	auipc	a5,0x5
    80001c30:	5fc7b783          	ld	a5,1532(a5) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001c34:	0007b483          	ld	s1,0(a5)
    80001c38:	00005a17          	auipc	s4,0x5
    80001c3c:	668a0a13          	addi	s4,s4,1640 # 800072a0 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    80001c40:	009a3023          	sd	s1,0(s4)
    minMemoryFragmentSize = getMinBlockNumber(sizeof(SegmentDescriptor)) + getMinBlockNumber(sizeof(uint64));
    80001c44:	01000513          	li	a0,16
    80001c48:	00000097          	auipc	ra,0x0
    80001c4c:	f8c080e7          	jalr	-116(ra) # 80001bd4 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001c50:	00050993          	mv	s3,a0
    80001c54:	00800513          	li	a0,8
    80001c58:	00000097          	auipc	ra,0x0
    80001c5c:	f7c080e7          	jalr	-132(ra) # 80001bd4 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001c60:	00a989b3          	add	s3,s3,a0
    80001c64:	013a3423          	sd	s3,8(s4)
    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
    80001c68:	02000513          	li	a0,32
    80001c6c:	00000097          	auipc	ra,0x0
    80001c70:	f68080e7          	jalr	-152(ra) # 80001bd4 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    managedMemorySpaceStart += noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE;
    80001c74:	00651513          	slli	a0,a0,0x6
    80001c78:	00a90533          	add	a0,s2,a0
    80001c7c:	00aa3823          	sd	a0,16(s4)
    newMemoryAllocator->totalTaken = 0;
    80001c80:	00093423          	sd	zero,8(s2)
    newMemoryAllocator->totalFree = (size_t) (managedMemorySpaceEnd - managedMemorySpaceStart);
    80001c84:	40a484b3          	sub	s1,s1,a0
    80001c88:	00993023          	sd	s1,0(s2)
    newMemoryAllocator->freeBlockNo = newMemoryAllocator->totalFree / MEM_BLOCK_SIZE;
    80001c8c:	0064d493          	srli	s1,s1,0x6
    80001c90:	00993823          	sd	s1,16(s2)
    newMemoryAllocator->freeMemoryHead = (SegmentDescriptor*) managedMemorySpaceStart;
    80001c94:	010a3783          	ld	a5,16(s4)
    80001c98:	00f93c23          	sd	a5,24(s2)
    newMemoryAllocator->freeMemoryHead->noBlocks = newMemoryAllocator->freeBlockNo;
    80001c9c:	0097b023          	sd	s1,0(a5)
    newMemoryAllocator->freeMemoryHead->next = nullptr;
    80001ca0:	01893783          	ld	a5,24(s2)
    80001ca4:	0007b423          	sd	zero,8(a5)
}
    80001ca8:	00090513          	mv	a0,s2
    80001cac:	02813083          	ld	ra,40(sp)
    80001cb0:	02013403          	ld	s0,32(sp)
    80001cb4:	01813483          	ld	s1,24(sp)
    80001cb8:	01013903          	ld	s2,16(sp)
    80001cbc:	00813983          	ld	s3,8(sp)
    80001cc0:	00013a03          	ld	s4,0(sp)
    80001cc4:	03010113          	addi	sp,sp,48
    80001cc8:	00008067          	ret

0000000080001ccc <_ZN15MemoryAllocator8instanceEv>:
    if (onlyInstance == nullptr)
    80001ccc:	00005797          	auipc	a5,0x5
    80001cd0:	5ec7b783          	ld	a5,1516(a5) # 800072b8 <_ZN15MemoryAllocator12onlyInstanceE>
    80001cd4:	00078863          	beqz	a5,80001ce4 <_ZN15MemoryAllocator8instanceEv+0x18>
}
    80001cd8:	00005517          	auipc	a0,0x5
    80001cdc:	5e053503          	ld	a0,1504(a0) # 800072b8 <_ZN15MemoryAllocator12onlyInstanceE>
    80001ce0:	00008067          	ret
MemoryAllocator* MemoryAllocator::instance() {
    80001ce4:	ff010113          	addi	sp,sp,-16
    80001ce8:	00113423          	sd	ra,8(sp)
    80001cec:	00813023          	sd	s0,0(sp)
    80001cf0:	01010413          	addi	s0,sp,16
        onlyInstance = createInstance();
    80001cf4:	00000097          	auipc	ra,0x0
    80001cf8:	f0c080e7          	jalr	-244(ra) # 80001c00 <_ZN15MemoryAllocator14createInstanceEv>
    80001cfc:	00005797          	auipc	a5,0x5
    80001d00:	5aa7be23          	sd	a0,1468(a5) # 800072b8 <_ZN15MemoryAllocator12onlyInstanceE>
}
    80001d04:	00005517          	auipc	a0,0x5
    80001d08:	5b453503          	ld	a0,1460(a0) # 800072b8 <_ZN15MemoryAllocator12onlyInstanceE>
    80001d0c:	00813083          	ld	ra,8(sp)
    80001d10:	00013403          	ld	s0,0(sp)
    80001d14:	01010113          	addi	sp,sp,16
    80001d18:	00008067          	ret

0000000080001d1c <_ZN15MemoryAllocator8firstFitEm>:


MemoryAllocator::SegmentDescriptor* MemoryAllocator::firstFit(size_t blockNo) {
    80001d1c:	ff010113          	addi	sp,sp,-16
    80001d20:	00813423          	sd	s0,8(sp)
    80001d24:	01010413          	addi	s0,sp,16
    80001d28:	00050693          	mv	a3,a0
    SegmentDescriptor* largeEnoughSegment = freeMemoryHead;
    80001d2c:	01853503          	ld	a0,24(a0)
    SegmentDescriptor* prevSegment = nullptr;
    80001d30:	00000713          	li	a4,0
    while (largeEnoughSegment && largeEnoughSegment->noBlocks < blockNo) {
    80001d34:	00050c63          	beqz	a0,80001d4c <_ZN15MemoryAllocator8firstFitEm+0x30>
    80001d38:	00053783          	ld	a5,0(a0)
    80001d3c:	00b7f863          	bgeu	a5,a1,80001d4c <_ZN15MemoryAllocator8firstFitEm+0x30>
        prevSegment = largeEnoughSegment;
    80001d40:	00050713          	mv	a4,a0
        largeEnoughSegment = largeEnoughSegment->next;
    80001d44:	00853503          	ld	a0,8(a0)
    while (largeEnoughSegment && largeEnoughSegment->noBlocks < blockNo) {
    80001d48:	fedff06f          	j	80001d34 <_ZN15MemoryAllocator8firstFitEm+0x18>
    }
    if (!largeEnoughSegment) return nullptr;
    80001d4c:	04050663          	beqz	a0,80001d98 <_ZN15MemoryAllocator8firstFitEm+0x7c>

    if (largeEnoughSegment->noBlocks - blockNo >= minMemoryFragmentSize) {
    80001d50:	00053783          	ld	a5,0(a0)
    80001d54:	40b787b3          	sub	a5,a5,a1
    80001d58:	00005617          	auipc	a2,0x5
    80001d5c:	55063603          	ld	a2,1360(a2) # 800072a8 <_ZN15MemoryAllocator21minMemoryFragmentSizeE>
    80001d60:	02c7e063          	bltu	a5,a2,80001d80 <_ZN15MemoryAllocator8firstFitEm+0x64>
        SegmentDescriptor* newSegment = (SegmentDescriptor*) ((uint8*) largeEnoughSegment + blockNo * MEM_BLOCK_SIZE);
    80001d64:	00659613          	slli	a2,a1,0x6
    80001d68:	00c50633          	add	a2,a0,a2
        newSegment->noBlocks = largeEnoughSegment->noBlocks - blockNo;
    80001d6c:	00f63023          	sd	a5,0(a2)
        newSegment->next = largeEnoughSegment->next;
    80001d70:	00853783          	ld	a5,8(a0)
    80001d74:	00f63423          	sd	a5,8(a2)
        largeEnoughSegment->next = newSegment;
    80001d78:	00c53423          	sd	a2,8(a0)
        largeEnoughSegment->noBlocks = blockNo;
    80001d7c:	00b53023          	sd	a1,0(a0)
    }

    if (prevSegment) prevSegment->next = largeEnoughSegment->next;
    80001d80:	00070663          	beqz	a4,80001d8c <_ZN15MemoryAllocator8firstFitEm+0x70>
    80001d84:	00853783          	ld	a5,8(a0)
    80001d88:	00f73423          	sd	a5,8(a4)
    if (freeMemoryHead == largeEnoughSegment)
    80001d8c:	0186b783          	ld	a5,24(a3)
    80001d90:	00a78a63          	beq	a5,a0,80001da4 <_ZN15MemoryAllocator8firstFitEm+0x88>
        freeMemoryHead = largeEnoughSegment->next;

    largeEnoughSegment->next = nullptr;
    80001d94:	00053423          	sd	zero,8(a0)
    return largeEnoughSegment;
}
    80001d98:	00813403          	ld	s0,8(sp)
    80001d9c:	01010113          	addi	sp,sp,16
    80001da0:	00008067          	ret
        freeMemoryHead = largeEnoughSegment->next;
    80001da4:	00853783          	ld	a5,8(a0)
    80001da8:	00f6bc23          	sd	a5,24(a3)
    80001dac:	fe9ff06f          	j	80001d94 <_ZN15MemoryAllocator8firstFitEm+0x78>

0000000080001db0 <_ZN15MemoryAllocator10kmem_allocEm>:

void* MemoryAllocator::kmem_alloc(size_t size) {
    80001db0:	fe010113          	addi	sp,sp,-32
    80001db4:	00113c23          	sd	ra,24(sp)
    80001db8:	00813823          	sd	s0,16(sp)
    80001dbc:	00913423          	sd	s1,8(sp)
    80001dc0:	01213023          	sd	s2,0(sp)
    80001dc4:	02010413          	addi	s0,sp,32
    80001dc8:	00050493          	mv	s1,a0
    80001dcc:	00058913          	mv	s2,a1
    size_t minBlockNo = getMinBlockNumber(size);
    80001dd0:	00058513          	mv	a0,a1
    80001dd4:	00000097          	auipc	ra,0x0
    80001dd8:	e00080e7          	jalr	-512(ra) # 80001bd4 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001ddc:	00050593          	mv	a1,a0
    if (minBlockNo * MEM_BLOCK_SIZE - size < sizeof(SegmentDescriptor)) ++minBlockNo;
    80001de0:	00651793          	slli	a5,a0,0x6
    80001de4:	41278933          	sub	s2,a5,s2
    80001de8:	00f00793          	li	a5,15
    80001dec:	0127e463          	bltu	a5,s2,80001df4 <_ZN15MemoryAllocator10kmem_allocEm+0x44>
    80001df0:	00150593          	addi	a1,a0,1
    SegmentDescriptor* newTaken = firstFit(minBlockNo);
    80001df4:	00048513          	mv	a0,s1
    80001df8:	00000097          	auipc	ra,0x0
    80001dfc:	f24080e7          	jalr	-220(ra) # 80001d1c <_ZN15MemoryAllocator8firstFitEm>
    if (!newTaken) return nullptr;
    80001e00:	04050063          	beqz	a0,80001e40 <_ZN15MemoryAllocator10kmem_allocEm+0x90>

    freeBlockNo -= newTaken->noBlocks;
    80001e04:	00053703          	ld	a4,0(a0)
    80001e08:	0104b783          	ld	a5,16(s1)
    80001e0c:	40e787b3          	sub	a5,a5,a4
    80001e10:	00f4b823          	sd	a5,16(s1)
    totalFree -= newTaken->noBlocks * MEM_BLOCK_SIZE;
    80001e14:	00053783          	ld	a5,0(a0)
    80001e18:	00679713          	slli	a4,a5,0x6
    80001e1c:	0004b783          	ld	a5,0(s1)
    80001e20:	40e787b3          	sub	a5,a5,a4
    80001e24:	00f4b023          	sd	a5,0(s1)
    totalTaken += newTaken->noBlocks * MEM_BLOCK_SIZE;
    80001e28:	00053783          	ld	a5,0(a0)
    80001e2c:	00679713          	slli	a4,a5,0x6
    80001e30:	0084b783          	ld	a5,8(s1)
    80001e34:	00e787b3          	add	a5,a5,a4
    80001e38:	00f4b423          	sd	a5,8(s1)

    return (uint8*) newTaken + sizeof(SegmentDescriptor);
    80001e3c:	01050513          	addi	a0,a0,16
}
    80001e40:	01813083          	ld	ra,24(sp)
    80001e44:	01013403          	ld	s0,16(sp)
    80001e48:	00813483          	ld	s1,8(sp)
    80001e4c:	00013903          	ld	s2,0(sp)
    80001e50:	02010113          	addi	sp,sp,32
    80001e54:	00008067          	ret

0000000080001e58 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* newFree) {
    80001e58:	ff010113          	addi	sp,sp,-16
    80001e5c:	00813423          	sd	s0,8(sp)
    80001e60:	01010413          	addi	s0,sp,16
    if (newFree == nullptr) return 0;
    80001e64:	08058863          	beqz	a1,80001ef4 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>
    SegmentDescriptor* newFreeSegment = (SegmentDescriptor*) ((uint8*) newFree - sizeof(SegmentDescriptor));
    80001e68:	ff058693          	addi	a3,a1,-16
    freeBlockNo += newFreeSegment->noBlocks;
    80001e6c:	ff05b703          	ld	a4,-16(a1)
    80001e70:	01053783          	ld	a5,16(a0)
    80001e74:	00e787b3          	add	a5,a5,a4
    80001e78:	00f53823          	sd	a5,16(a0)
    totalFree += newFreeSegment->noBlocks * MEM_BLOCK_SIZE;
    80001e7c:	ff05b783          	ld	a5,-16(a1)
    80001e80:	00679713          	slli	a4,a5,0x6
    80001e84:	00053783          	ld	a5,0(a0)
    80001e88:	00e787b3          	add	a5,a5,a4
    80001e8c:	00f53023          	sd	a5,0(a0)
    totalTaken -= newFreeSegment->noBlocks * MEM_BLOCK_SIZE;
    80001e90:	ff05b783          	ld	a5,-16(a1)
    80001e94:	00679713          	slli	a4,a5,0x6
    80001e98:	00853783          	ld	a5,8(a0)
    80001e9c:	40e787b3          	sub	a5,a5,a4
    80001ea0:	00f53423          	sd	a5,8(a0)

    SegmentDescriptor* after = freeMemoryHead, *prev = nullptr;
    80001ea4:	01853783          	ld	a5,24(a0)
    80001ea8:	00000713          	li	a4,0
    while (after && after < newFreeSegment) {
    80001eac:	00078a63          	beqz	a5,80001ec0 <_ZN15MemoryAllocator9kmem_freeEPv+0x68>
    80001eb0:	00d7f863          	bgeu	a5,a3,80001ec0 <_ZN15MemoryAllocator9kmem_freeEPv+0x68>
        prev = after; after = after->next; }
    80001eb4:	00078713          	mv	a4,a5
    80001eb8:	0087b783          	ld	a5,8(a5)
    while (after && after < newFreeSegment) {
    80001ebc:	ff1ff06f          	j	80001eac <_ZN15MemoryAllocator9kmem_freeEPv+0x54>

    newFreeSegment->next = after;
    80001ec0:	fef5bc23          	sd	a5,-8(a1)
    if (prev) prev->next = newFreeSegment;
    80001ec4:	04070063          	beqz	a4,80001f04 <_ZN15MemoryAllocator9kmem_freeEPv+0xac>
    80001ec8:	00d73423          	sd	a3,8(a4)
    else freeMemoryHead = newFreeSegment;

    if (prev && (uint8*) prev + prev->noBlocks * MEM_BLOCK_SIZE == (uint8*) newFreeSegment) {
    80001ecc:	00070a63          	beqz	a4,80001ee0 <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
    80001ed0:	00073503          	ld	a0,0(a4)
    80001ed4:	00651613          	slli	a2,a0,0x6
    80001ed8:	00c70633          	add	a2,a4,a2
    80001edc:	02d60863          	beq	a2,a3,80001f0c <_ZN15MemoryAllocator9kmem_freeEPv+0xb4>
        prev->next = newFreeSegment->next;
        prev->noBlocks += newFreeSegment->noBlocks;
        newFreeSegment = prev;
    }

    if (after && (uint8*) newFreeSegment + newFreeSegment->noBlocks * MEM_BLOCK_SIZE == (uint8*) after) {
    80001ee0:	00078a63          	beqz	a5,80001ef4 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>
    80001ee4:	0006b603          	ld	a2,0(a3)
    80001ee8:	00661713          	slli	a4,a2,0x6
    80001eec:	00e68733          	add	a4,a3,a4
    80001ef0:	02f70c63          	beq	a4,a5,80001f28 <_ZN15MemoryAllocator9kmem_freeEPv+0xd0>
        newFreeSegment->next = after->next; newFreeSegment->noBlocks += after->noBlocks; }

    return 0;
}
    80001ef4:	00000513          	li	a0,0
    80001ef8:	00813403          	ld	s0,8(sp)
    80001efc:	01010113          	addi	sp,sp,16
    80001f00:	00008067          	ret
    else freeMemoryHead = newFreeSegment;
    80001f04:	00d53c23          	sd	a3,24(a0)
    80001f08:	fc5ff06f          	j	80001ecc <_ZN15MemoryAllocator9kmem_freeEPv+0x74>
        prev->next = newFreeSegment->next;
    80001f0c:	ff85b683          	ld	a3,-8(a1)
    80001f10:	00d73423          	sd	a3,8(a4)
        prev->noBlocks += newFreeSegment->noBlocks;
    80001f14:	ff05b683          	ld	a3,-16(a1)
    80001f18:	00d50533          	add	a0,a0,a3
    80001f1c:	00a73023          	sd	a0,0(a4)
        newFreeSegment = prev;
    80001f20:	00070693          	mv	a3,a4
    80001f24:	fbdff06f          	j	80001ee0 <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
        newFreeSegment->next = after->next; newFreeSegment->noBlocks += after->noBlocks; }
    80001f28:	0087b703          	ld	a4,8(a5)
    80001f2c:	00e6b423          	sd	a4,8(a3)
    80001f30:	0007b783          	ld	a5,0(a5)
    80001f34:	00f60633          	add	a2,a2,a5
    80001f38:	00c6b023          	sd	a2,0(a3)
    80001f3c:	fb9ff06f          	j	80001ef4 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>

0000000080001f40 <_ZN15MemoryAllocator30printInstanceMemorySpaceParamsEv>:

void MemoryAllocator::printInstanceMemorySpaceParams() {
    80001f40:	fe010113          	addi	sp,sp,-32
    80001f44:	00113c23          	sd	ra,24(sp)
    80001f48:	00813823          	sd	s0,16(sp)
    80001f4c:	00913423          	sd	s1,8(sp)
    80001f50:	01213023          	sd	s2,0(sp)
    80001f54:	02010413          	addi	s0,sp,32
    80001f58:	00050493          	mv	s1,a0
    printString("##################################\n\n");
    80001f5c:	00004517          	auipc	a0,0x4
    80001f60:	20450513          	addi	a0,a0,516 # 80006160 <CONSOLE_STATUS+0x150>
    80001f64:	00002097          	auipc	ra,0x2
    80001f68:	a28080e7          	jalr	-1496(ra) # 8000398c <_Z11printStringPKc>
    printString("MemoryAllocator address: "); printInteger((uint64)this); printString("\n");
    80001f6c:	00004517          	auipc	a0,0x4
    80001f70:	21c50513          	addi	a0,a0,540 # 80006188 <CONSOLE_STATUS+0x178>
    80001f74:	00002097          	auipc	ra,0x2
    80001f78:	a18080e7          	jalr	-1512(ra) # 8000398c <_Z11printStringPKc>
    80001f7c:	00048513          	mv	a0,s1
    80001f80:	00002097          	auipc	ra,0x2
    80001f84:	a7c080e7          	jalr	-1412(ra) # 800039fc <_Z12printIntegerm>
    80001f88:	00004517          	auipc	a0,0x4
    80001f8c:	10050513          	addi	a0,a0,256 # 80006088 <CONSOLE_STATUS+0x78>
    80001f90:	00002097          	auipc	ra,0x2
    80001f94:	9fc080e7          	jalr	-1540(ra) # 8000398c <_Z11printStringPKc>

    // size_t noBlocksForStoringMemoryAllocator = sizeof(MemoryAllocator) / MEM_BLOCK_SIZE + 1;
    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
    80001f98:	02000513          	li	a0,32
    80001f9c:	00000097          	auipc	ra,0x0
    80001fa0:	c38080e7          	jalr	-968(ra) # 80001bd4 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001fa4:	00050913          	mv	s2,a0
    printString("noBlocksForStoringMemoryAllocator: ");
    80001fa8:	00004517          	auipc	a0,0x4
    80001fac:	20050513          	addi	a0,a0,512 # 800061a8 <CONSOLE_STATUS+0x198>
    80001fb0:	00002097          	auipc	ra,0x2
    80001fb4:	9dc080e7          	jalr	-1572(ra) # 8000398c <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator); printString("\n");
    80001fb8:	00090513          	mv	a0,s2
    80001fbc:	00002097          	auipc	ra,0x2
    80001fc0:	a40080e7          	jalr	-1472(ra) # 800039fc <_Z12printIntegerm>
    80001fc4:	00004517          	auipc	a0,0x4
    80001fc8:	0c450513          	addi	a0,a0,196 # 80006088 <CONSOLE_STATUS+0x78>
    80001fcc:	00002097          	auipc	ra,0x2
    80001fd0:	9c0080e7          	jalr	-1600(ra) # 8000398c <_Z11printStringPKc>
    printString("noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE: ");
    80001fd4:	00004517          	auipc	a0,0x4
    80001fd8:	1fc50513          	addi	a0,a0,508 # 800061d0 <CONSOLE_STATUS+0x1c0>
    80001fdc:	00002097          	auipc	ra,0x2
    80001fe0:	9b0080e7          	jalr	-1616(ra) # 8000398c <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE); printString("\n\n");
    80001fe4:	00691513          	slli	a0,s2,0x6
    80001fe8:	00002097          	auipc	ra,0x2
    80001fec:	a14080e7          	jalr	-1516(ra) # 800039fc <_Z12printIntegerm>
    80001ff0:	00004517          	auipc	a0,0x4
    80001ff4:	21850513          	addi	a0,a0,536 # 80006208 <CONSOLE_STATUS+0x1f8>
    80001ff8:	00002097          	auipc	ra,0x2
    80001ffc:	994080e7          	jalr	-1644(ra) # 8000398c <_Z11printStringPKc>

    printString("Managed memory space start: ");
    80002000:	00004517          	auipc	a0,0x4
    80002004:	21050513          	addi	a0,a0,528 # 80006210 <CONSOLE_STATUS+0x200>
    80002008:	00002097          	auipc	ra,0x2
    8000200c:	984080e7          	jalr	-1660(ra) # 8000398c <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceStart); printString("\n");
    80002010:	00005917          	auipc	s2,0x5
    80002014:	29090913          	addi	s2,s2,656 # 800072a0 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    80002018:	01093503          	ld	a0,16(s2)
    8000201c:	00002097          	auipc	ra,0x2
    80002020:	9e0080e7          	jalr	-1568(ra) # 800039fc <_Z12printIntegerm>
    80002024:	00004517          	auipc	a0,0x4
    80002028:	06450513          	addi	a0,a0,100 # 80006088 <CONSOLE_STATUS+0x78>
    8000202c:	00002097          	auipc	ra,0x2
    80002030:	960080e7          	jalr	-1696(ra) # 8000398c <_Z11printStringPKc>
    printString("Managed memory space end: ");
    80002034:	00004517          	auipc	a0,0x4
    80002038:	1fc50513          	addi	a0,a0,508 # 80006230 <CONSOLE_STATUS+0x220>
    8000203c:	00002097          	auipc	ra,0x2
    80002040:	950080e7          	jalr	-1712(ra) # 8000398c <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceEnd); printString("\n\n");
    80002044:	00093503          	ld	a0,0(s2)
    80002048:	00002097          	auipc	ra,0x2
    8000204c:	9b4080e7          	jalr	-1612(ra) # 800039fc <_Z12printIntegerm>
    80002050:	00004517          	auipc	a0,0x4
    80002054:	1b850513          	addi	a0,a0,440 # 80006208 <CONSOLE_STATUS+0x1f8>
    80002058:	00002097          	auipc	ra,0x2
    8000205c:	934080e7          	jalr	-1740(ra) # 8000398c <_Z11printStringPKc>

    printString("Total Free: "); printInteger(getTotalFree()); printString("\n");
    80002060:	00004517          	auipc	a0,0x4
    80002064:	1f050513          	addi	a0,a0,496 # 80006250 <CONSOLE_STATUS+0x240>
    80002068:	00002097          	auipc	ra,0x2
    8000206c:	924080e7          	jalr	-1756(ra) # 8000398c <_Z11printStringPKc>
    80002070:	0004b503          	ld	a0,0(s1)
    80002074:	00002097          	auipc	ra,0x2
    80002078:	988080e7          	jalr	-1656(ra) # 800039fc <_Z12printIntegerm>
    8000207c:	00004517          	auipc	a0,0x4
    80002080:	00c50513          	addi	a0,a0,12 # 80006088 <CONSOLE_STATUS+0x78>
    80002084:	00002097          	auipc	ra,0x2
    80002088:	908080e7          	jalr	-1784(ra) # 8000398c <_Z11printStringPKc>
    printString("Total Taken: "); printInteger(getTotalTaken()); printString("\n");
    8000208c:	00004517          	auipc	a0,0x4
    80002090:	1d450513          	addi	a0,a0,468 # 80006260 <CONSOLE_STATUS+0x250>
    80002094:	00002097          	auipc	ra,0x2
    80002098:	8f8080e7          	jalr	-1800(ra) # 8000398c <_Z11printStringPKc>
    8000209c:	0084b503          	ld	a0,8(s1)
    800020a0:	00002097          	auipc	ra,0x2
    800020a4:	95c080e7          	jalr	-1700(ra) # 800039fc <_Z12printIntegerm>
    800020a8:	00004517          	auipc	a0,0x4
    800020ac:	fe050513          	addi	a0,a0,-32 # 80006088 <CONSOLE_STATUS+0x78>
    800020b0:	00002097          	auipc	ra,0x2
    800020b4:	8dc080e7          	jalr	-1828(ra) # 8000398c <_Z11printStringPKc>
    printString("Free Block No: "); printInteger(getFreeBlockNo()); printString("\n");
    800020b8:	00004517          	auipc	a0,0x4
    800020bc:	1b850513          	addi	a0,a0,440 # 80006270 <CONSOLE_STATUS+0x260>
    800020c0:	00002097          	auipc	ra,0x2
    800020c4:	8cc080e7          	jalr	-1844(ra) # 8000398c <_Z11printStringPKc>
    800020c8:	0104b503          	ld	a0,16(s1)
    800020cc:	00002097          	auipc	ra,0x2
    800020d0:	930080e7          	jalr	-1744(ra) # 800039fc <_Z12printIntegerm>
    800020d4:	00004517          	auipc	a0,0x4
    800020d8:	fb450513          	addi	a0,a0,-76 # 80006088 <CONSOLE_STATUS+0x78>
    800020dc:	00002097          	auipc	ra,0x2
    800020e0:	8b0080e7          	jalr	-1872(ra) # 8000398c <_Z11printStringPKc>
    printString("\n##################################\n");
    800020e4:	00004517          	auipc	a0,0x4
    800020e8:	19c50513          	addi	a0,a0,412 # 80006280 <CONSOLE_STATUS+0x270>
    800020ec:	00002097          	auipc	ra,0x2
    800020f0:	8a0080e7          	jalr	-1888(ra) # 8000398c <_Z11printStringPKc>
}
    800020f4:	01813083          	ld	ra,24(sp)
    800020f8:	01013403          	ld	s0,16(sp)
    800020fc:	00813483          	ld	s1,8(sp)
    80002100:	00013903          	ld	s2,0(sp)
    80002104:	02010113          	addi	sp,sp,32
    80002108:	00008067          	ret

000000008000210c <_ZN15MemoryAllocator22printMemorySpaceParamsEv>:

void MemoryAllocator::printMemorySpaceParams() {
    8000210c:	fe010113          	addi	sp,sp,-32
    80002110:	00113c23          	sd	ra,24(sp)
    80002114:	00813823          	sd	s0,16(sp)
    80002118:	00913423          	sd	s1,8(sp)
    8000211c:	01213023          	sd	s2,0(sp)
    80002120:	02010413          	addi	s0,sp,32
    printString("----------------------------------\n\n");
    80002124:	00004517          	auipc	a0,0x4
    80002128:	18450513          	addi	a0,a0,388 # 800062a8 <CONSOLE_STATUS+0x298>
    8000212c:	00002097          	auipc	ra,0x2
    80002130:	860080e7          	jalr	-1952(ra) # 8000398c <_Z11printStringPKc>
    printString("Size of MemoryAllocator class: ");
    80002134:	00004517          	auipc	a0,0x4
    80002138:	19c50513          	addi	a0,a0,412 # 800062d0 <CONSOLE_STATUS+0x2c0>
    8000213c:	00002097          	auipc	ra,0x2
    80002140:	850080e7          	jalr	-1968(ra) # 8000398c <_Z11printStringPKc>
    printInteger(sizeof(MemoryAllocator)); printString("\n");
    80002144:	02000513          	li	a0,32
    80002148:	00002097          	auipc	ra,0x2
    8000214c:	8b4080e7          	jalr	-1868(ra) # 800039fc <_Z12printIntegerm>
    80002150:	00004517          	auipc	a0,0x4
    80002154:	f3850513          	addi	a0,a0,-200 # 80006088 <CONSOLE_STATUS+0x78>
    80002158:	00002097          	auipc	ra,0x2
    8000215c:	834080e7          	jalr	-1996(ra) # 8000398c <_Z11printStringPKc>

    printString("HEAP_START_ADDR: "); printInteger((uint64)HEAP_START_ADDR); printString("\n");
    80002160:	00004517          	auipc	a0,0x4
    80002164:	1b050513          	addi	a0,a0,432 # 80006310 <CONSOLE_STATUS+0x300>
    80002168:	00002097          	auipc	ra,0x2
    8000216c:	824080e7          	jalr	-2012(ra) # 8000398c <_Z11printStringPKc>
    80002170:	00005497          	auipc	s1,0x5
    80002174:	0704b483          	ld	s1,112(s1) # 800071e0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002178:	0004b503          	ld	a0,0(s1)
    8000217c:	00002097          	auipc	ra,0x2
    80002180:	880080e7          	jalr	-1920(ra) # 800039fc <_Z12printIntegerm>
    80002184:	00004517          	auipc	a0,0x4
    80002188:	f0450513          	addi	a0,a0,-252 # 80006088 <CONSOLE_STATUS+0x78>
    8000218c:	00002097          	auipc	ra,0x2
    80002190:	800080e7          	jalr	-2048(ra) # 8000398c <_Z11printStringPKc>
    printString("HEAP_END_ADDR: "); printInteger((uint64)HEAP_END_ADDR); printString("\n");
    80002194:	00004517          	auipc	a0,0x4
    80002198:	15c50513          	addi	a0,a0,348 # 800062f0 <CONSOLE_STATUS+0x2e0>
    8000219c:	00001097          	auipc	ra,0x1
    800021a0:	7f0080e7          	jalr	2032(ra) # 8000398c <_Z11printStringPKc>
    800021a4:	00005917          	auipc	s2,0x5
    800021a8:	08493903          	ld	s2,132(s2) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x50>
    800021ac:	00093503          	ld	a0,0(s2)
    800021b0:	00002097          	auipc	ra,0x2
    800021b4:	84c080e7          	jalr	-1972(ra) # 800039fc <_Z12printIntegerm>
    800021b8:	00004517          	auipc	a0,0x4
    800021bc:	ed050513          	addi	a0,a0,-304 # 80006088 <CONSOLE_STATUS+0x78>
    800021c0:	00001097          	auipc	ra,0x1
    800021c4:	7cc080e7          	jalr	1996(ra) # 8000398c <_Z11printStringPKc>

    printString("HEAP_END_ADDR - HEAP_START_ADDR: ");
    800021c8:	00004517          	auipc	a0,0x4
    800021cc:	13850513          	addi	a0,a0,312 # 80006300 <CONSOLE_STATUS+0x2f0>
    800021d0:	00001097          	auipc	ra,0x1
    800021d4:	7bc080e7          	jalr	1980(ra) # 8000398c <_Z11printStringPKc>
    printInteger((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)); printString("\n");
    800021d8:	00093503          	ld	a0,0(s2)
    800021dc:	0004b783          	ld	a5,0(s1)
    800021e0:	40f50533          	sub	a0,a0,a5
    800021e4:	00002097          	auipc	ra,0x2
    800021e8:	818080e7          	jalr	-2024(ra) # 800039fc <_Z12printIntegerm>
    800021ec:	00004517          	auipc	a0,0x4
    800021f0:	e9c50513          	addi	a0,a0,-356 # 80006088 <CONSOLE_STATUS+0x78>
    800021f4:	00001097          	auipc	ra,0x1
    800021f8:	798080e7          	jalr	1944(ra) # 8000398c <_Z11printStringPKc>

    printString("MEM_BLOCK_SIZE: "); printInteger(MEM_BLOCK_SIZE); printString("\n");
    800021fc:	00004517          	auipc	a0,0x4
    80002200:	12c50513          	addi	a0,a0,300 # 80006328 <CONSOLE_STATUS+0x318>
    80002204:	00001097          	auipc	ra,0x1
    80002208:	788080e7          	jalr	1928(ra) # 8000398c <_Z11printStringPKc>
    8000220c:	04000513          	li	a0,64
    80002210:	00001097          	auipc	ra,0x1
    80002214:	7ec080e7          	jalr	2028(ra) # 800039fc <_Z12printIntegerm>
    80002218:	00004517          	auipc	a0,0x4
    8000221c:	e7050513          	addi	a0,a0,-400 # 80006088 <CONSOLE_STATUS+0x78>
    80002220:	00001097          	auipc	ra,0x1
    80002224:	76c080e7          	jalr	1900(ra) # 8000398c <_Z11printStringPKc>

    printString("Number of blocks in (HEAP_END_ADDR - HEAP_START_ADDR): ");
    80002228:	00004517          	auipc	a0,0x4
    8000222c:	11850513          	addi	a0,a0,280 # 80006340 <CONSOLE_STATUS+0x330>
    80002230:	00001097          	auipc	ra,0x1
    80002234:	75c080e7          	jalr	1884(ra) # 8000398c <_Z11printStringPKc>
    printInteger(((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)) / MEM_BLOCK_SIZE);
    80002238:	00093503          	ld	a0,0(s2)
    8000223c:	0004b783          	ld	a5,0(s1)
    80002240:	40f50533          	sub	a0,a0,a5
    80002244:	00655513          	srli	a0,a0,0x6
    80002248:	00001097          	auipc	ra,0x1
    8000224c:	7b4080e7          	jalr	1972(ra) # 800039fc <_Z12printIntegerm>
    printString("\n");
    80002250:	00004517          	auipc	a0,0x4
    80002254:	e3850513          	addi	a0,a0,-456 # 80006088 <CONSOLE_STATUS+0x78>
    80002258:	00001097          	auipc	ra,0x1
    8000225c:	734080e7          	jalr	1844(ra) # 8000398c <_Z11printStringPKc>
    printString("\n----------------------------------\n");
    80002260:	00004517          	auipc	a0,0x4
    80002264:	11850513          	addi	a0,a0,280 # 80006378 <CONSOLE_STATUS+0x368>
    80002268:	00001097          	auipc	ra,0x1
    8000226c:	724080e7          	jalr	1828(ra) # 8000398c <_Z11printStringPKc>
}
    80002270:	01813083          	ld	ra,24(sp)
    80002274:	01013403          	ld	s0,16(sp)
    80002278:	00813483          	ld	s1,8(sp)
    8000227c:	00013903          	ld	s2,0(sp)
    80002280:	02010113          	addi	sp,sp,32
    80002284:	00008067          	ret

0000000080002288 <_ZN15MemoryAllocator23printFreeMemoryHeadDataEv>:

void MemoryAllocator::printFreeMemoryHeadData() {
    80002288:	fe010113          	addi	sp,sp,-32
    8000228c:	00113c23          	sd	ra,24(sp)
    80002290:	00813823          	sd	s0,16(sp)
    80002294:	00913423          	sd	s1,8(sp)
    80002298:	02010413          	addi	s0,sp,32
    8000229c:	00050493          	mv	s1,a0
    printString("##################################\n\n");
    800022a0:	00004517          	auipc	a0,0x4
    800022a4:	ec050513          	addi	a0,a0,-320 # 80006160 <CONSOLE_STATUS+0x150>
    800022a8:	00001097          	auipc	ra,0x1
    800022ac:	6e4080e7          	jalr	1764(ra) # 8000398c <_Z11printStringPKc>
    printString("freeMemoryHead: ");
    800022b0:	00004517          	auipc	a0,0x4
    800022b4:	0f050513          	addi	a0,a0,240 # 800063a0 <CONSOLE_STATUS+0x390>
    800022b8:	00001097          	auipc	ra,0x1
    800022bc:	6d4080e7          	jalr	1748(ra) # 8000398c <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead); printString("\n");
    800022c0:	0184b503          	ld	a0,24(s1)
    800022c4:	00001097          	auipc	ra,0x1
    800022c8:	738080e7          	jalr	1848(ra) # 800039fc <_Z12printIntegerm>
    800022cc:	00004517          	auipc	a0,0x4
    800022d0:	dbc50513          	addi	a0,a0,-580 # 80006088 <CONSOLE_STATUS+0x78>
    800022d4:	00001097          	auipc	ra,0x1
    800022d8:	6b8080e7          	jalr	1720(ra) # 8000398c <_Z11printStringPKc>
    printString("freeMemoryHead->noBlocks: ");
    800022dc:	00004517          	auipc	a0,0x4
    800022e0:	0dc50513          	addi	a0,a0,220 # 800063b8 <CONSOLE_STATUS+0x3a8>
    800022e4:	00001097          	auipc	ra,0x1
    800022e8:	6a8080e7          	jalr	1704(ra) # 8000398c <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead->noBlocks); printString("\n");
    800022ec:	0184b783          	ld	a5,24(s1)
    800022f0:	0007b503          	ld	a0,0(a5)
    800022f4:	00001097          	auipc	ra,0x1
    800022f8:	708080e7          	jalr	1800(ra) # 800039fc <_Z12printIntegerm>
    800022fc:	00004517          	auipc	a0,0x4
    80002300:	d8c50513          	addi	a0,a0,-628 # 80006088 <CONSOLE_STATUS+0x78>
    80002304:	00001097          	auipc	ra,0x1
    80002308:	688080e7          	jalr	1672(ra) # 8000398c <_Z11printStringPKc>
    printString("freeMemoryHead->next: ");
    8000230c:	00004517          	auipc	a0,0x4
    80002310:	0cc50513          	addi	a0,a0,204 # 800063d8 <CONSOLE_STATUS+0x3c8>
    80002314:	00001097          	auipc	ra,0x1
    80002318:	678080e7          	jalr	1656(ra) # 8000398c <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead->next); printString("\n");
    8000231c:	0184b783          	ld	a5,24(s1)
    80002320:	0087b503          	ld	a0,8(a5)
    80002324:	00001097          	auipc	ra,0x1
    80002328:	6d8080e7          	jalr	1752(ra) # 800039fc <_Z12printIntegerm>
    8000232c:	00004517          	auipc	a0,0x4
    80002330:	d5c50513          	addi	a0,a0,-676 # 80006088 <CONSOLE_STATUS+0x78>
    80002334:	00001097          	auipc	ra,0x1
    80002338:	658080e7          	jalr	1624(ra) # 8000398c <_Z11printStringPKc>
    printString("Segment Descriptor size: ");
    8000233c:	00004517          	auipc	a0,0x4
    80002340:	0b450513          	addi	a0,a0,180 # 800063f0 <CONSOLE_STATUS+0x3e0>
    80002344:	00001097          	auipc	ra,0x1
    80002348:	648080e7          	jalr	1608(ra) # 8000398c <_Z11printStringPKc>
    printInteger(sizeof(*freeMemoryHead)); printString("\n");
    8000234c:	01000513          	li	a0,16
    80002350:	00001097          	auipc	ra,0x1
    80002354:	6ac080e7          	jalr	1708(ra) # 800039fc <_Z12printIntegerm>
    80002358:	00004517          	auipc	a0,0x4
    8000235c:	d3050513          	addi	a0,a0,-720 # 80006088 <CONSOLE_STATUS+0x78>
    80002360:	00001097          	auipc	ra,0x1
    80002364:	62c080e7          	jalr	1580(ra) # 8000398c <_Z11printStringPKc>
    printString("\n##################################\n");
    80002368:	00004517          	auipc	a0,0x4
    8000236c:	f1850513          	addi	a0,a0,-232 # 80006280 <CONSOLE_STATUS+0x270>
    80002370:	00001097          	auipc	ra,0x1
    80002374:	61c080e7          	jalr	1564(ra) # 8000398c <_Z11printStringPKc>
}
    80002378:	01813083          	ld	ra,24(sp)
    8000237c:	01013403          	ld	s0,16(sp)
    80002380:	00813483          	ld	s1,8(sp)
    80002384:	02010113          	addi	sp,sp,32
    80002388:	00008067          	ret

000000008000238c <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv>:
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    return beforeTestFreeBlockNo == afterTestFreeBlockNo - minNoBlocksForSize - addendForSegDesc;

}

size_t MemoryAllocatorTest::getFreeBlocksCnt() {
    8000238c:	ff010113          	addi	sp,sp,-16
    80002390:	00113423          	sd	ra,8(sp)
    80002394:	00813023          	sd	s0,0(sp)
    80002398:	01010413          	addi	s0,sp,16
    MemoryAllocator::SegmentDescriptor* freeMemHead = MemoryAllocator::instance()->freeMemoryHead;
    8000239c:	00000097          	auipc	ra,0x0
    800023a0:	930080e7          	jalr	-1744(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    800023a4:	01853783          	ld	a5,24(a0)
    size_t blockCnt = 0;
    800023a8:	00000513          	li	a0,0
    while (freeMemHead) {
    800023ac:	00078a63          	beqz	a5,800023c0 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv+0x34>
        blockCnt += freeMemHead->noBlocks;
    800023b0:	0007b703          	ld	a4,0(a5)
    800023b4:	00e50533          	add	a0,a0,a4
        freeMemHead = freeMemHead->next;
    800023b8:	0087b783          	ld	a5,8(a5)
    while (freeMemHead) {
    800023bc:	ff1ff06f          	j	800023ac <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv+0x20>
    }
    return blockCnt;
}
    800023c0:	00813083          	ld	ra,8(sp)
    800023c4:	00013403          	ld	s0,0(sp)
    800023c8:	01010113          	addi	sp,sp,16
    800023cc:	00008067          	ret

00000000800023d0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>:

bool MemoryAllocatorTest::testMemoryMetadataValidity() {
    800023d0:	fd010113          	addi	sp,sp,-48
    800023d4:	02113423          	sd	ra,40(sp)
    800023d8:	02813023          	sd	s0,32(sp)
    800023dc:	00913c23          	sd	s1,24(sp)
    800023e0:	01213823          	sd	s2,16(sp)
    800023e4:	01313423          	sd	s3,8(sp)
    800023e8:	01413023          	sd	s4,0(sp)
    800023ec:	03010413          	addi	s0,sp,48
    800023f0:	00050913          	mv	s2,a0
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    800023f4:	00000097          	auipc	ra,0x0
    800023f8:	8d8080e7          	jalr	-1832(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>

    void* kmem_alloc(size_t size);
    int kmem_free(void* newFree);
    void printInstanceMemorySpaceParams();
    void printFreeMemoryHeadData();
    size_t getTotalFree() { return totalFree; }
    800023fc:	00053483          	ld	s1,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002400:	00000097          	auipc	ra,0x0
    80002404:	8cc080e7          	jalr	-1844(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    80002408:	00853a03          	ld	s4,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    8000240c:	00000097          	auipc	ra,0x0
    80002410:	8c0080e7          	jalr	-1856(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002414:	01053983          	ld	s3,16(a0)
    size_t freeBlocksCnt = getFreeBlocksCnt();
    80002418:	00090513          	mv	a0,s2
    8000241c:	00000097          	auipc	ra,0x0
    80002420:	f70080e7          	jalr	-144(ra) # 8000238c <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv>

    if (freeBlocksCnt != beforeTestFreeBlockNo) return false;
    80002424:	02a99c63          	bne	s3,a0,8000245c <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x8c>
    if (freeBlocksCnt != beforeTestTotalFree / MEM_BLOCK_SIZE) return false;
    80002428:	0064d793          	srli	a5,s1,0x6
    8000242c:	04a79a63          	bne	a5,a0,80002480 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0xb0>

    size_t totalMemory = (size_t) (MemoryAllocator::managedMemorySpaceEnd - MemoryAllocator::managedMemorySpaceStart);
    80002430:	00005797          	auipc	a5,0x5
    80002434:	db87b783          	ld	a5,-584(a5) # 800071e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002438:	0007b503          	ld	a0,0(a5)
    8000243c:	00005797          	auipc	a5,0x5
    80002440:	e047b783          	ld	a5,-508(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002444:	0007b783          	ld	a5,0(a5)
    80002448:	40f507b3          	sub	a5,a0,a5
    return totalMemory == beforeTestTotalFree + beforeTestTotalTaken;
    8000244c:	01448533          	add	a0,s1,s4
    80002450:	40f50533          	sub	a0,a0,a5
    80002454:	00153513          	seqz	a0,a0
    80002458:	0080006f          	j	80002460 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x90>
    if (freeBlocksCnt != beforeTestFreeBlockNo) return false;
    8000245c:	00000513          	li	a0,0
}
    80002460:	02813083          	ld	ra,40(sp)
    80002464:	02013403          	ld	s0,32(sp)
    80002468:	01813483          	ld	s1,24(sp)
    8000246c:	01013903          	ld	s2,16(sp)
    80002470:	00813983          	ld	s3,8(sp)
    80002474:	00013a03          	ld	s4,0(sp)
    80002478:	03010113          	addi	sp,sp,48
    8000247c:	00008067          	ret
    if (freeBlocksCnt != beforeTestTotalFree / MEM_BLOCK_SIZE) return false;
    80002480:	00000513          	li	a0,0
    80002484:	fddff06f          	j	80002460 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x90>

0000000080002488 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>:
bool MemoryAllocatorTest::testMemoryAllocate(uint64 size, void** allocatedMemoryPointer) {
    80002488:	fa010113          	addi	sp,sp,-96
    8000248c:	04113c23          	sd	ra,88(sp)
    80002490:	04813823          	sd	s0,80(sp)
    80002494:	04913423          	sd	s1,72(sp)
    80002498:	05213023          	sd	s2,64(sp)
    8000249c:	03313c23          	sd	s3,56(sp)
    800024a0:	03413823          	sd	s4,48(sp)
    800024a4:	03513423          	sd	s5,40(sp)
    800024a8:	03613023          	sd	s6,32(sp)
    800024ac:	01713c23          	sd	s7,24(sp)
    800024b0:	01813823          	sd	s8,16(sp)
    800024b4:	01913423          	sd	s9,8(sp)
    800024b8:	01a13023          	sd	s10,0(sp)
    800024bc:	06010413          	addi	s0,sp,96
    800024c0:	00050a13          	mv	s4,a0
    800024c4:	00058913          	mv	s2,a1
    800024c8:	00060993          	mv	s3,a2
    if (!testMemoryMetadataValidity()) return false;
    800024cc:	00000097          	auipc	ra,0x0
    800024d0:	f04080e7          	jalr	-252(ra) # 800023d0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800024d4:	00050493          	mv	s1,a0
    800024d8:	04051063          	bnez	a0,80002518 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x90>
}
    800024dc:	00048513          	mv	a0,s1
    800024e0:	05813083          	ld	ra,88(sp)
    800024e4:	05013403          	ld	s0,80(sp)
    800024e8:	04813483          	ld	s1,72(sp)
    800024ec:	04013903          	ld	s2,64(sp)
    800024f0:	03813983          	ld	s3,56(sp)
    800024f4:	03013a03          	ld	s4,48(sp)
    800024f8:	02813a83          	ld	s5,40(sp)
    800024fc:	02013b03          	ld	s6,32(sp)
    80002500:	01813b83          	ld	s7,24(sp)
    80002504:	01013c03          	ld	s8,16(sp)
    80002508:	00813c83          	ld	s9,8(sp)
    8000250c:	00013d03          	ld	s10,0(sp)
    80002510:	06010113          	addi	sp,sp,96
    80002514:	00008067          	ret
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002518:	fffff097          	auipc	ra,0xfffff
    8000251c:	7b4080e7          	jalr	1972(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    80002520:	00053b03          	ld	s6,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002524:	fffff097          	auipc	ra,0xfffff
    80002528:	7a8080e7          	jalr	1960(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    8000252c:	00853b83          	ld	s7,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    80002530:	fffff097          	auipc	ra,0xfffff
    80002534:	79c080e7          	jalr	1948(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002538:	01053c03          	ld	s8,16(a0)
    *allocatedMemoryPointer = MemoryAllocator::instance()->kmem_alloc(size);
    8000253c:	fffff097          	auipc	ra,0xfffff
    80002540:	790080e7          	jalr	1936(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002544:	00090593          	mv	a1,s2
    80002548:	00000097          	auipc	ra,0x0
    8000254c:	868080e7          	jalr	-1944(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002550:	00050a93          	mv	s5,a0
    80002554:	00a9b023          	sd	a0,0(s3)
    if (*allocatedMemoryPointer == nullptr && size == (uint64) -37) return true;
    80002558:	08050663          	beqz	a0,800025e4 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x15c>
    size_t minNoBlocksForSize = MemoryAllocator::getMinBlockNumber(size);
    8000255c:	00090513          	mv	a0,s2
    80002560:	fffff097          	auipc	ra,0xfffff
    80002564:	674080e7          	jalr	1652(ra) # 80001bd4 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80002568:	00050993          	mv	s3,a0
    size_t addendForSegDesc = minNoBlocksForSize * MEM_BLOCK_SIZE - size < sizeof(MemoryAllocator::SegmentDescriptor);
    8000256c:	00651593          	slli	a1,a0,0x6
    80002570:	41258933          	sub	s2,a1,s2
    80002574:	01093913          	sltiu	s2,s2,16
    size_t allocatedMemory = (minNoBlocksForSize + addendForSegDesc) * MEM_BLOCK_SIZE;
    80002578:	01250cb3          	add	s9,a0,s2
    8000257c:	006c9d13          	slli	s10,s9,0x6
    if (!testMemoryMetadataValidity()) return false;
    80002580:	000a0513          	mv	a0,s4
    80002584:	00000097          	auipc	ra,0x0
    80002588:	e4c080e7          	jalr	-436(ra) # 800023d0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    8000258c:	00050493          	mv	s1,a0
    80002590:	f40506e3          	beqz	a0,800024dc <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    size_t afterTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002594:	fffff097          	auipc	ra,0xfffff
    80002598:	738080e7          	jalr	1848(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    8000259c:	00053483          	ld	s1,0(a0)
    size_t afterTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    800025a0:	fffff097          	auipc	ra,0xfffff
    800025a4:	72c080e7          	jalr	1836(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800025a8:	00853a03          	ld	s4,8(a0)
    size_t afterTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    800025ac:	fffff097          	auipc	ra,0xfffff
    800025b0:	720080e7          	jalr	1824(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    800025b4:	01053783          	ld	a5,16(a0)
    if (beforeTestTotalFree != afterTestTotalFree + allocatedMemory) return false;
    800025b8:	01a484b3          	add	s1,s1,s10
    800025bc:	03649a63          	bne	s1,s6,800025f0 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x168>
    if (beforeTestTotalTaken != afterTestTotalTaken - allocatedMemory) return false;
    800025c0:	41aa0d33          	sub	s10,s4,s10
    800025c4:	037d1a63          	bne	s10,s7,800025f8 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x170>
    if (beforeTestFreeBlockNo != afterTestFreeBlockNo + minNoBlocksForSize + addendForSegDesc) return false;
    800025c8:	013789b3          	add	s3,a5,s3
    800025cc:	01298933          	add	s2,s3,s2
    800025d0:	03891863          	bne	s2,s8,80002600 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x178>
    return segDesc->noBlocks == minNoBlocksForSize + addendForSegDesc;
    800025d4:	ff0ab483          	ld	s1,-16(s5)
    800025d8:	409c84b3          	sub	s1,s9,s1
    800025dc:	0014b493          	seqz	s1,s1
    800025e0:	efdff06f          	j	800024dc <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (*allocatedMemoryPointer == nullptr && size == (uint64) -37) return true;
    800025e4:	fdb00793          	li	a5,-37
    800025e8:	f6f91ae3          	bne	s2,a5,8000255c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0xd4>
    800025ec:	ef1ff06f          	j	800024dc <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestTotalFree != afterTestTotalFree + allocatedMemory) return false;
    800025f0:	00000493          	li	s1,0
    800025f4:	ee9ff06f          	j	800024dc <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestTotalTaken != afterTestTotalTaken - allocatedMemory) return false;
    800025f8:	00000493          	li	s1,0
    800025fc:	ee1ff06f          	j	800024dc <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestFreeBlockNo != afterTestFreeBlockNo + minNoBlocksForSize + addendForSegDesc) return false;
    80002600:	00000493          	li	s1,0
    80002604:	ed9ff06f          	j	800024dc <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>

0000000080002608 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>:
bool MemoryAllocatorTest::testMemoryFree(uint64 size, void* allocatedMemoryPointer) {
    80002608:	fb010113          	addi	sp,sp,-80
    8000260c:	04113423          	sd	ra,72(sp)
    80002610:	04813023          	sd	s0,64(sp)
    80002614:	02913c23          	sd	s1,56(sp)
    80002618:	03213823          	sd	s2,48(sp)
    8000261c:	03313423          	sd	s3,40(sp)
    80002620:	03413023          	sd	s4,32(sp)
    80002624:	01513c23          	sd	s5,24(sp)
    80002628:	01613823          	sd	s6,16(sp)
    8000262c:	01713423          	sd	s7,8(sp)
    80002630:	01813023          	sd	s8,0(sp)
    80002634:	05010413          	addi	s0,sp,80
    80002638:	00050a13          	mv	s4,a0
    8000263c:	00058913          	mv	s2,a1
    80002640:	00060493          	mv	s1,a2
    if (!testMemoryMetadataValidity()) return false;
    80002644:	00000097          	auipc	ra,0x0
    80002648:	d8c080e7          	jalr	-628(ra) # 800023d0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    8000264c:	02051a63          	bnez	a0,80002680 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x78>
}
    80002650:	04813083          	ld	ra,72(sp)
    80002654:	04013403          	ld	s0,64(sp)
    80002658:	03813483          	ld	s1,56(sp)
    8000265c:	03013903          	ld	s2,48(sp)
    80002660:	02813983          	ld	s3,40(sp)
    80002664:	02013a03          	ld	s4,32(sp)
    80002668:	01813a83          	ld	s5,24(sp)
    8000266c:	01013b03          	ld	s6,16(sp)
    80002670:	00813b83          	ld	s7,8(sp)
    80002674:	00013c03          	ld	s8,0(sp)
    80002678:	05010113          	addi	sp,sp,80
    8000267c:	00008067          	ret
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002680:	fffff097          	auipc	ra,0xfffff
    80002684:	64c080e7          	jalr	1612(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    80002688:	00053b03          	ld	s6,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    8000268c:	fffff097          	auipc	ra,0xfffff
    80002690:	640080e7          	jalr	1600(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    80002694:	00853b83          	ld	s7,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    80002698:	fffff097          	auipc	ra,0xfffff
    8000269c:	634080e7          	jalr	1588(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    800026a0:	01053a83          	ld	s5,16(a0)
    size_t minNoBlocksForSize = MemoryAllocator::getMinBlockNumber(size);
    800026a4:	00090513          	mv	a0,s2
    800026a8:	fffff097          	auipc	ra,0xfffff
    800026ac:	52c080e7          	jalr	1324(ra) # 80001bd4 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    800026b0:	00050993          	mv	s3,a0
    size_t addendForSegDesc = minNoBlocksForSize * MEM_BLOCK_SIZE - size < sizeof(MemoryAllocator::SegmentDescriptor);
    800026b4:	00651593          	slli	a1,a0,0x6
    800026b8:	41258933          	sub	s2,a1,s2
    800026bc:	01093913          	sltiu	s2,s2,16
    size_t allocatedMemory = (minNoBlocksForSize + addendForSegDesc) * MEM_BLOCK_SIZE;
    800026c0:	01250733          	add	a4,a0,s2
    800026c4:	00671c13          	slli	s8,a4,0x6
    if (!allocatedMemoryPointer) {
    800026c8:	08048463          	beqz	s1,80002750 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x148>
    if (allocatedMemoryPointer) segDesc = (MemoryAllocator::SegmentDescriptor*)
    800026cc:	08048a63          	beqz	s1,80002760 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x158>
    800026d0:	ff048793          	addi	a5,s1,-16
    if (allocatedMemoryPointer)
    800026d4:	00048863          	beqz	s1,800026e4 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xdc>
    if (segDesc->noBlocks != minNoBlocksForSize + addendForSegDesc) return false;
    800026d8:	0007b703          	ld	a4,0(a5)
    800026dc:	012987b3          	add	a5,s3,s2
    800026e0:	08f71463          	bne	a4,a5,80002768 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x160>
    MemoryAllocator::instance()->kmem_free(allocatedMemoryPointer);
    800026e4:	fffff097          	auipc	ra,0xfffff
    800026e8:	5e8080e7          	jalr	1512(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    800026ec:	00048593          	mv	a1,s1
    800026f0:	fffff097          	auipc	ra,0xfffff
    800026f4:	768080e7          	jalr	1896(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    800026f8:	000a0513          	mv	a0,s4
    800026fc:	00000097          	auipc	ra,0x0
    80002700:	cd4080e7          	jalr	-812(ra) # 800023d0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002704:	f40506e3          	beqz	a0,80002650 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    size_t afterTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002708:	fffff097          	auipc	ra,0xfffff
    8000270c:	5c4080e7          	jalr	1476(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    80002710:	00053483          	ld	s1,0(a0)
    size_t afterTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002714:	fffff097          	auipc	ra,0xfffff
    80002718:	5b8080e7          	jalr	1464(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    8000271c:	00853a03          	ld	s4,8(a0)
    size_t afterTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    80002720:	fffff097          	auipc	ra,0xfffff
    80002724:	5ac080e7          	jalr	1452(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002728:	01053783          	ld	a5,16(a0)
    if (beforeTestTotalFree != afterTestTotalFree - allocatedMemory) return false;
    8000272c:	418484b3          	sub	s1,s1,s8
    80002730:	05649063          	bne	s1,s6,80002770 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x168>
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    80002734:	014c0733          	add	a4,s8,s4
    80002738:	05771063          	bne	a4,s7,80002778 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x170>
    return beforeTestFreeBlockNo == afterTestFreeBlockNo - minNoBlocksForSize - addendForSegDesc;
    8000273c:	41378533          	sub	a0,a5,s3
    80002740:	41250533          	sub	a0,a0,s2
    80002744:	41550533          	sub	a0,a0,s5
    80002748:	00153513          	seqz	a0,a0
    8000274c:	f05ff06f          	j	80002650 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
        minNoBlocksForSize = 0; addendForSegDesc = 0; allocatedMemory = 0;
    80002750:	00000c13          	li	s8,0
    80002754:	00000913          	li	s2,0
    80002758:	00000993          	li	s3,0
    8000275c:	f71ff06f          	j	800026cc <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xc4>
    MemoryAllocator::SegmentDescriptor* segDesc = nullptr;
    80002760:	00048793          	mv	a5,s1
    80002764:	f71ff06f          	j	800026d4 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xcc>
    if (segDesc->noBlocks != minNoBlocksForSize + addendForSegDesc) return false;
    80002768:	00000513          	li	a0,0
    8000276c:	ee5ff06f          	j	80002650 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    if (beforeTestTotalFree != afterTestTotalFree - allocatedMemory) return false;
    80002770:	00000513          	li	a0,0
    80002774:	eddff06f          	j	80002650 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    80002778:	00000513          	li	a0,0
    8000277c:	ed5ff06f          	j	80002650 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>

0000000080002780 <_ZN19MemoryAllocatorTest13firstFitTest1Ev>:
    if (!firstFitTest2()) return false;
    if (!firstFitTest3()) return false;
    return true;
}

bool MemoryAllocatorTest::firstFitTest1() {
    80002780:	fc010113          	addi	sp,sp,-64
    80002784:	02113c23          	sd	ra,56(sp)
    80002788:	02813823          	sd	s0,48(sp)
    8000278c:	02913423          	sd	s1,40(sp)
    80002790:	03213023          	sd	s2,32(sp)
    80002794:	01313c23          	sd	s3,24(sp)
    80002798:	01413823          	sd	s4,16(sp)
    8000279c:	01513423          	sd	s5,8(sp)
    800027a0:	04010413          	addi	s0,sp,64
    800027a4:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    800027a8:	00000097          	auipc	ra,0x0
    800027ac:	c28080e7          	jalr	-984(ra) # 800023d0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800027b0:	02051463          	bnez	a0,800027d8 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x58>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    800027b4:	03813083          	ld	ra,56(sp)
    800027b8:	03013403          	ld	s0,48(sp)
    800027bc:	02813483          	ld	s1,40(sp)
    800027c0:	02013903          	ld	s2,32(sp)
    800027c4:	01813983          	ld	s3,24(sp)
    800027c8:	01013a03          	ld	s4,16(sp)
    800027cc:	00813a83          	ld	s5,8(sp)
    800027d0:	04010113          	addi	sp,sp,64
    800027d4:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    800027d8:	fffff097          	auipc	ra,0xfffff
    800027dc:	4f4080e7          	jalr	1268(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    800027e0:	02f00593          	li	a1,47
    800027e4:	fffff097          	auipc	ra,0xfffff
    800027e8:	5cc080e7          	jalr	1484(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    800027ec:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    800027f0:	00005797          	auipc	a5,0x5
    800027f4:	a507b783          	ld	a5,-1456(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x68>
    800027f8:	0007b783          	ld	a5,0(a5)
    800027fc:	01078793          	addi	a5,a5,16
    80002800:	00a78663          	beq	a5,a0,8000280c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x8c>
        return false;
    80002804:	00000513          	li	a0,0
    80002808:	fadff06f          	j	800027b4 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    8000280c:	fffff097          	auipc	ra,0xfffff
    80002810:	4c0080e7          	jalr	1216(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002814:	03000593          	li	a1,48
    80002818:	fffff097          	auipc	ra,0xfffff
    8000281c:	598080e7          	jalr	1432(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002820:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002824:	00005797          	auipc	a5,0x5
    80002828:	a1c7b783          	ld	a5,-1508(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000282c:	0007b783          	ld	a5,0(a5)
    80002830:	05078793          	addi	a5,a5,80
    80002834:	00a78663          	beq	a5,a0,80002840 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0xc0>
        return false;
    80002838:	00000513          	li	a0,0
    8000283c:	f79ff06f          	j	800027b4 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    80002840:	fffff097          	auipc	ra,0xfffff
    80002844:	48c080e7          	jalr	1164(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002848:	03100593          	li	a1,49
    8000284c:	fffff097          	auipc	ra,0xfffff
    80002850:	564080e7          	jalr	1380(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002854:	00050a13          	mv	s4,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + 2 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002858:	00005797          	auipc	a5,0x5
    8000285c:	9e87b783          	ld	a5,-1560(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002860:	0007b783          	ld	a5,0(a5)
    80002864:	09078793          	addi	a5,a5,144
    80002868:	00a78663          	beq	a5,a0,80002874 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0xf4>
        return false;
    8000286c:	00000513          	li	a0,0
    80002870:	f45ff06f          	j	800027b4 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002874:	fffff097          	auipc	ra,0xfffff
    80002878:	458080e7          	jalr	1112(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    8000287c:	00098593          	mv	a1,s3
    80002880:	fffff097          	auipc	ra,0xfffff
    80002884:	5d8080e7          	jalr	1496(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002888:	fffff097          	auipc	ra,0xfffff
    8000288c:	444080e7          	jalr	1092(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002890:	01e00593          	li	a1,30
    80002894:	fffff097          	auipc	ra,0xfffff
    80002898:	51c080e7          	jalr	1308(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    8000289c:	00050993          	mv	s3,a0
    if (pointers[3] != MemoryAllocator::managedMemorySpaceStart + 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    800028a0:	00005797          	auipc	a5,0x5
    800028a4:	9a07b783          	ld	a5,-1632(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x68>
    800028a8:	0007b783          	ld	a5,0(a5)
    800028ac:	05078793          	addi	a5,a5,80
    800028b0:	00a78663          	beq	a5,a0,800028bc <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x13c>
        return false;
    800028b4:	00000513          	li	a0,0
    800028b8:	efdff06f          	j	800027b4 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    800028bc:	fffff097          	auipc	ra,0xfffff
    800028c0:	410080e7          	jalr	1040(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    800028c4:	12100593          	li	a1,289
    800028c8:	fffff097          	auipc	ra,0xfffff
    800028cc:	4e8080e7          	jalr	1256(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    800028d0:	00050a93          	mv	s5,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + 4 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    800028d4:	00005797          	auipc	a5,0x5
    800028d8:	96c7b783          	ld	a5,-1684(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x68>
    800028dc:	0007b783          	ld	a5,0(a5)
    800028e0:	11078793          	addi	a5,a5,272
    800028e4:	00a78663          	beq	a5,a0,800028f0 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x170>
        return false;
    800028e8:	00000513          	li	a0,0
    800028ec:	ec9ff06f          	j	800027b4 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    if (!testMemoryMetadataValidity()) return false;
    800028f0:	00048513          	mv	a0,s1
    800028f4:	00000097          	auipc	ra,0x0
    800028f8:	adc080e7          	jalr	-1316(ra) # 800023d0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800028fc:	ea050ce3          	beqz	a0,800027b4 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    80002900:	fffff097          	auipc	ra,0xfffff
    80002904:	3cc080e7          	jalr	972(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002908:	00090593          	mv	a1,s2
    8000290c:	fffff097          	auipc	ra,0xfffff
    80002910:	54c080e7          	jalr	1356(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002914:	fffff097          	auipc	ra,0xfffff
    80002918:	3b8080e7          	jalr	952(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    8000291c:	000a0593          	mv	a1,s4
    80002920:	fffff097          	auipc	ra,0xfffff
    80002924:	538080e7          	jalr	1336(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002928:	fffff097          	auipc	ra,0xfffff
    8000292c:	3a4080e7          	jalr	932(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002930:	00098593          	mv	a1,s3
    80002934:	fffff097          	auipc	ra,0xfffff
    80002938:	524080e7          	jalr	1316(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    8000293c:	fffff097          	auipc	ra,0xfffff
    80002940:	390080e7          	jalr	912(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002944:	000a8593          	mv	a1,s5
    80002948:	fffff097          	auipc	ra,0xfffff
    8000294c:	510080e7          	jalr	1296(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002950:	00048513          	mv	a0,s1
    80002954:	00000097          	auipc	ra,0x0
    80002958:	a7c080e7          	jalr	-1412(ra) # 800023d0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    8000295c:	e59ff06f          	j	800027b4 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>

0000000080002960 <_ZN19MemoryAllocatorTest12printPointerEiPPv>:


void MemoryAllocatorTest::printPointer(int i, void** pointers) {
    80002960:	fe010113          	addi	sp,sp,-32
    80002964:	00113c23          	sd	ra,24(sp)
    80002968:	00813823          	sd	s0,16(sp)
    8000296c:	00913423          	sd	s1,8(sp)
    80002970:	01213023          	sd	s2,0(sp)
    80002974:	02010413          	addi	s0,sp,32
    80002978:	00058913          	mv	s2,a1
    8000297c:	00060493          	mv	s1,a2
    printString("\npointers[");
    80002980:	00004517          	auipc	a0,0x4
    80002984:	a9050513          	addi	a0,a0,-1392 # 80006410 <CONSOLE_STATUS+0x400>
    80002988:	00001097          	auipc	ra,0x1
    8000298c:	004080e7          	jalr	4(ra) # 8000398c <_Z11printStringPKc>
    printInteger(i);
    80002990:	00090513          	mv	a0,s2
    80002994:	00001097          	auipc	ra,0x1
    80002998:	068080e7          	jalr	104(ra) # 800039fc <_Z12printIntegerm>
    printString("]: ");
    8000299c:	00004517          	auipc	a0,0x4
    800029a0:	a8450513          	addi	a0,a0,-1404 # 80006420 <CONSOLE_STATUS+0x410>
    800029a4:	00001097          	auipc	ra,0x1
    800029a8:	fe8080e7          	jalr	-24(ra) # 8000398c <_Z11printStringPKc>
    printInteger((uint64)((uint8*) pointers[i] - MemoryAllocator::managedMemorySpaceStart));
    800029ac:	00391613          	slli	a2,s2,0x3
    800029b0:	00c484b3          	add	s1,s1,a2
    800029b4:	0004b503          	ld	a0,0(s1)
    800029b8:	00005797          	auipc	a5,0x5
    800029bc:	8887b783          	ld	a5,-1912(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x68>
    800029c0:	0007b783          	ld	a5,0(a5)
    800029c4:	40f50533          	sub	a0,a0,a5
    800029c8:	00001097          	auipc	ra,0x1
    800029cc:	034080e7          	jalr	52(ra) # 800039fc <_Z12printIntegerm>
    printString("\npointers[");
    800029d0:	00004517          	auipc	a0,0x4
    800029d4:	a4050513          	addi	a0,a0,-1472 # 80006410 <CONSOLE_STATUS+0x400>
    800029d8:	00001097          	auipc	ra,0x1
    800029dc:	fb4080e7          	jalr	-76(ra) # 8000398c <_Z11printStringPKc>
    printInteger(i);
    800029e0:	00090513          	mv	a0,s2
    800029e4:	00001097          	auipc	ra,0x1
    800029e8:	018080e7          	jalr	24(ra) # 800039fc <_Z12printIntegerm>
    printString("]->blockNo: "); printInteger((uint64) (((MemoryAllocator::SegmentDescriptor*) pointers[i])->noBlocks));
    800029ec:	00004517          	auipc	a0,0x4
    800029f0:	a3c50513          	addi	a0,a0,-1476 # 80006428 <CONSOLE_STATUS+0x418>
    800029f4:	00001097          	auipc	ra,0x1
    800029f8:	f98080e7          	jalr	-104(ra) # 8000398c <_Z11printStringPKc>
    800029fc:	0004b783          	ld	a5,0(s1)
    80002a00:	0007b503          	ld	a0,0(a5)
    80002a04:	00001097          	auipc	ra,0x1
    80002a08:	ff8080e7          	jalr	-8(ra) # 800039fc <_Z12printIntegerm>
    printString("\n");
    80002a0c:	00003517          	auipc	a0,0x3
    80002a10:	67c50513          	addi	a0,a0,1660 # 80006088 <CONSOLE_STATUS+0x78>
    80002a14:	00001097          	auipc	ra,0x1
    80002a18:	f78080e7          	jalr	-136(ra) # 8000398c <_Z11printStringPKc>
}
    80002a1c:	01813083          	ld	ra,24(sp)
    80002a20:	01013403          	ld	s0,16(sp)
    80002a24:	00813483          	ld	s1,8(sp)
    80002a28:	00013903          	ld	s2,0(sp)
    80002a2c:	02010113          	addi	sp,sp,32
    80002a30:	00008067          	ret

0000000080002a34 <_ZN19MemoryAllocatorTest13firstFitTest2Ev>:

bool MemoryAllocatorTest::firstFitTest2() {
    80002a34:	fc010113          	addi	sp,sp,-64
    80002a38:	02113c23          	sd	ra,56(sp)
    80002a3c:	02813823          	sd	s0,48(sp)
    80002a40:	02913423          	sd	s1,40(sp)
    80002a44:	03213023          	sd	s2,32(sp)
    80002a48:	01313c23          	sd	s3,24(sp)
    80002a4c:	01413823          	sd	s4,16(sp)
    80002a50:	01513423          	sd	s5,8(sp)
    80002a54:	04010413          	addi	s0,sp,64
    80002a58:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    80002a5c:	00000097          	auipc	ra,0x0
    80002a60:	974080e7          	jalr	-1676(ra) # 800023d0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002a64:	02051463          	bnez	a0,80002a8c <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x58>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002a68:	03813083          	ld	ra,56(sp)
    80002a6c:	03013403          	ld	s0,48(sp)
    80002a70:	02813483          	ld	s1,40(sp)
    80002a74:	02013903          	ld	s2,32(sp)
    80002a78:	01813983          	ld	s3,24(sp)
    80002a7c:	01013a03          	ld	s4,16(sp)
    80002a80:	00813a83          	ld	s5,8(sp)
    80002a84:	04010113          	addi	sp,sp,64
    80002a88:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002a8c:	fffff097          	auipc	ra,0xfffff
    80002a90:	240080e7          	jalr	576(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002a94:	08200593          	li	a1,130
    80002a98:	fffff097          	auipc	ra,0xfffff
    80002a9c:	318080e7          	jalr	792(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002aa0:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002aa4:	00004797          	auipc	a5,0x4
    80002aa8:	79c7b783          	ld	a5,1948(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002aac:	0007b783          	ld	a5,0(a5)
    80002ab0:	01078793          	addi	a5,a5,16
    80002ab4:	00a78663          	beq	a5,a0,80002ac0 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x8c>
        return false;
    80002ab8:	00000513          	li	a0,0
    80002abc:	fadff06f          	j	80002a68 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    80002ac0:	fffff097          	auipc	ra,0xfffff
    80002ac4:	20c080e7          	jalr	524(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002ac8:	01400593          	li	a1,20
    80002acc:	fffff097          	auipc	ra,0xfffff
    80002ad0:	2e4080e7          	jalr	740(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002ad4:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 3 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002ad8:	00004797          	auipc	a5,0x4
    80002adc:	7687b783          	ld	a5,1896(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002ae0:	0007b783          	ld	a5,0(a5)
    80002ae4:	0d078793          	addi	a5,a5,208
    80002ae8:	00a78663          	beq	a5,a0,80002af4 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0xc0>
        return false;
    80002aec:	00000513          	li	a0,0
    80002af0:	f79ff06f          	j	80002a68 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    80002af4:	fffff097          	auipc	ra,0xfffff
    80002af8:	1d8080e7          	jalr	472(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002afc:	00090593          	mv	a1,s2
    80002b00:	fffff097          	auipc	ra,0xfffff
    80002b04:	358080e7          	jalr	856(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    80002b08:	fffff097          	auipc	ra,0xfffff
    80002b0c:	1c4080e7          	jalr	452(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002b10:	07800593          	li	a1,120
    80002b14:	fffff097          	auipc	ra,0xfffff
    80002b18:	29c080e7          	jalr	668(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002b1c:	00050913          	mv	s2,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002b20:	00004797          	auipc	a5,0x4
    80002b24:	7207b783          	ld	a5,1824(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b28:	0007b783          	ld	a5,0(a5)
    80002b2c:	01078793          	addi	a5,a5,16
    80002b30:	00a78663          	beq	a5,a0,80002b3c <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x108>
        return false;
    80002b34:	00000513          	li	a0,0
    80002b38:	f31ff06f          	j	80002a68 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002b3c:	fffff097          	auipc	ra,0xfffff
    80002b40:	190080e7          	jalr	400(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002b44:	01e00593          	li	a1,30
    80002b48:	fffff097          	auipc	ra,0xfffff
    80002b4c:	268080e7          	jalr	616(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002b50:	00050a13          	mv	s4,a0
    if (pointers[3] != MemoryAllocator::managedMemorySpaceStart + 4 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002b54:	00004797          	auipc	a5,0x4
    80002b58:	6ec7b783          	ld	a5,1772(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b5c:	0007b783          	ld	a5,0(a5)
    80002b60:	11078793          	addi	a5,a5,272
    80002b64:	00a78663          	beq	a5,a0,80002b70 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x13c>
        return false;
    80002b68:	00000513          	li	a0,0
    80002b6c:	efdff06f          	j	80002a68 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002b70:	fffff097          	auipc	ra,0xfffff
    80002b74:	15c080e7          	jalr	348(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002b78:	00090593          	mv	a1,s2
    80002b7c:	fffff097          	auipc	ra,0xfffff
    80002b80:	2dc080e7          	jalr	732(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002b84:	fffff097          	auipc	ra,0xfffff
    80002b88:	148080e7          	jalr	328(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002b8c:	02f00593          	li	a1,47
    80002b90:	fffff097          	auipc	ra,0xfffff
    80002b94:	220080e7          	jalr	544(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002b98:	00050913          	mv	s2,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002b9c:	00004797          	auipc	a5,0x4
    80002ba0:	6a47b783          	ld	a5,1700(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002ba4:	0007b783          	ld	a5,0(a5)
    80002ba8:	01078793          	addi	a5,a5,16
    80002bac:	00a78663          	beq	a5,a0,80002bb8 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x184>
        return false;
    80002bb0:	00000513          	li	a0,0
    80002bb4:	eb5ff06f          	j	80002a68 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[5] = MemoryAllocator::instance()->kmem_alloc(sizes[5]);
    80002bb8:	fffff097          	auipc	ra,0xfffff
    80002bbc:	114080e7          	jalr	276(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002bc0:	01400593          	li	a1,20
    80002bc4:	fffff097          	auipc	ra,0xfffff
    80002bc8:	1ec080e7          	jalr	492(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002bcc:	00050a93          	mv	s5,a0
    if (pointers[5] != MemoryAllocator::managedMemorySpaceStart + 1 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002bd0:	00004797          	auipc	a5,0x4
    80002bd4:	6707b783          	ld	a5,1648(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002bd8:	0007b783          	ld	a5,0(a5)
    80002bdc:	05078793          	addi	a5,a5,80
    80002be0:	00a78663          	beq	a5,a0,80002bec <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x1b8>
        return false;
    80002be4:	00000513          	li	a0,0
    80002be8:	e81ff06f          	j	80002a68 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    if (!testMemoryMetadataValidity()) return false;
    80002bec:	00048513          	mv	a0,s1
    80002bf0:	fffff097          	auipc	ra,0xfffff
    80002bf4:	7e0080e7          	jalr	2016(ra) # 800023d0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002bf8:	e60508e3          	beqz	a0,80002a68 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002bfc:	fffff097          	auipc	ra,0xfffff
    80002c00:	0d0080e7          	jalr	208(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002c04:	00098593          	mv	a1,s3
    80002c08:	fffff097          	auipc	ra,0xfffff
    80002c0c:	250080e7          	jalr	592(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002c10:	fffff097          	auipc	ra,0xfffff
    80002c14:	0bc080e7          	jalr	188(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002c18:	000a0593          	mv	a1,s4
    80002c1c:	fffff097          	auipc	ra,0xfffff
    80002c20:	23c080e7          	jalr	572(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80002c24:	fffff097          	auipc	ra,0xfffff
    80002c28:	0a8080e7          	jalr	168(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002c2c:	00090593          	mv	a1,s2
    80002c30:	fffff097          	auipc	ra,0xfffff
    80002c34:	228080e7          	jalr	552(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    80002c38:	fffff097          	auipc	ra,0xfffff
    80002c3c:	094080e7          	jalr	148(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002c40:	000a8593          	mv	a1,s5
    80002c44:	fffff097          	auipc	ra,0xfffff
    80002c48:	214080e7          	jalr	532(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002c4c:	00048513          	mv	a0,s1
    80002c50:	fffff097          	auipc	ra,0xfffff
    80002c54:	780080e7          	jalr	1920(ra) # 800023d0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002c58:	e11ff06f          	j	80002a68 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>

0000000080002c5c <_ZN19MemoryAllocatorTest13firstFitTest3Ev>:


bool MemoryAllocatorTest::firstFitTest3() {
    80002c5c:	fb010113          	addi	sp,sp,-80
    80002c60:	04113423          	sd	ra,72(sp)
    80002c64:	04813023          	sd	s0,64(sp)
    80002c68:	02913c23          	sd	s1,56(sp)
    80002c6c:	03213823          	sd	s2,48(sp)
    80002c70:	03313423          	sd	s3,40(sp)
    80002c74:	03413023          	sd	s4,32(sp)
    80002c78:	01513c23          	sd	s5,24(sp)
    80002c7c:	01613823          	sd	s6,16(sp)
    80002c80:	01713423          	sd	s7,8(sp)
    80002c84:	05010413          	addi	s0,sp,80
    80002c88:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    80002c8c:	fffff097          	auipc	ra,0xfffff
    80002c90:	744080e7          	jalr	1860(ra) # 800023d0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002c94:	02051863          	bnez	a0,80002cc4 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x68>
    MemoryAllocator::instance()->kmem_free(pointers[6]);
    MemoryAllocator::instance()->kmem_free(pointers[7]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002c98:	04813083          	ld	ra,72(sp)
    80002c9c:	04013403          	ld	s0,64(sp)
    80002ca0:	03813483          	ld	s1,56(sp)
    80002ca4:	03013903          	ld	s2,48(sp)
    80002ca8:	02813983          	ld	s3,40(sp)
    80002cac:	02013a03          	ld	s4,32(sp)
    80002cb0:	01813a83          	ld	s5,24(sp)
    80002cb4:	01013b03          	ld	s6,16(sp)
    80002cb8:	00813b83          	ld	s7,8(sp)
    80002cbc:	05010113          	addi	sp,sp,80
    80002cc0:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002cc4:	fffff097          	auipc	ra,0xfffff
    80002cc8:	008080e7          	jalr	8(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002ccc:	13000593          	li	a1,304
    80002cd0:	fffff097          	auipc	ra,0xfffff
    80002cd4:	0e0080e7          	jalr	224(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002cd8:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002cdc:	00004797          	auipc	a5,0x4
    80002ce0:	5647b783          	ld	a5,1380(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002ce4:	0007b783          	ld	a5,0(a5)
    80002ce8:	01078793          	addi	a5,a5,16
    80002cec:	00a78663          	beq	a5,a0,80002cf8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x9c>
        return false;
    80002cf0:	00000513          	li	a0,0
    80002cf4:	fa5ff06f          	j	80002c98 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    80002cf8:	fffff097          	auipc	ra,0xfffff
    80002cfc:	fd4080e7          	jalr	-44(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002d00:	03100593          	li	a1,49
    80002d04:	fffff097          	auipc	ra,0xfffff
    80002d08:	0ac080e7          	jalr	172(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002d0c:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 5 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002d10:	00004797          	auipc	a5,0x4
    80002d14:	5307b783          	ld	a5,1328(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002d18:	0007b783          	ld	a5,0(a5)
    80002d1c:	15078793          	addi	a5,a5,336
    80002d20:	00a78663          	beq	a5,a0,80002d2c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0xd0>
        return false;
    80002d24:	00000513          	li	a0,0
    80002d28:	f71ff06f          	j	80002c98 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    80002d2c:	fffff097          	auipc	ra,0xfffff
    80002d30:	fa0080e7          	jalr	-96(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002d34:	00090593          	mv	a1,s2
    80002d38:	fffff097          	auipc	ra,0xfffff
    80002d3c:	120080e7          	jalr	288(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    80002d40:	fffff097          	auipc	ra,0xfffff
    80002d44:	f8c080e7          	jalr	-116(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002d48:	0e600593          	li	a1,230
    80002d4c:	fffff097          	auipc	ra,0xfffff
    80002d50:	064080e7          	jalr	100(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002d54:	00050913          	mv	s2,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002d58:	00004797          	auipc	a5,0x4
    80002d5c:	4e87b783          	ld	a5,1256(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002d60:	0007b783          	ld	a5,0(a5)
    80002d64:	01078793          	addi	a5,a5,16
    80002d68:	00a78663          	beq	a5,a0,80002d74 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x118>
        return false;
    80002d6c:	00000513          	li	a0,0
    80002d70:	f29ff06f          	j	80002c98 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002d74:	fffff097          	auipc	ra,0xfffff
    80002d78:	f58080e7          	jalr	-168(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002d7c:	fdb00593          	li	a1,-37
    80002d80:	fffff097          	auipc	ra,0xfffff
    80002d84:	030080e7          	jalr	48(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002d88:	00050a13          	mv	s4,a0
    if (pointers[3]) return false;
    80002d8c:	00050663          	beqz	a0,80002d98 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x13c>
    80002d90:	00000513          	li	a0,0
    80002d94:	f05ff06f          	j	80002c98 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002d98:	fffff097          	auipc	ra,0xfffff
    80002d9c:	f34080e7          	jalr	-204(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002da0:	01e00593          	li	a1,30
    80002da4:	fffff097          	auipc	ra,0xfffff
    80002da8:	00c080e7          	jalr	12(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002dac:	00050a93          	mv	s5,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + 7 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002db0:	00004797          	auipc	a5,0x4
    80002db4:	4907b783          	ld	a5,1168(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002db8:	0007b783          	ld	a5,0(a5)
    80002dbc:	1d078793          	addi	a5,a5,464
    80002dc0:	00a78663          	beq	a5,a0,80002dcc <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x170>
        return false;
    80002dc4:	00000513          	li	a0,0
    80002dc8:	ed1ff06f          	j	80002c98 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002dcc:	fffff097          	auipc	ra,0xfffff
    80002dd0:	f00080e7          	jalr	-256(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002dd4:	00090593          	mv	a1,s2
    80002dd8:	fffff097          	auipc	ra,0xfffff
    80002ddc:	080080e7          	jalr	128(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[5] = MemoryAllocator::instance()->kmem_alloc(sizes[5]);
    80002de0:	fffff097          	auipc	ra,0xfffff
    80002de4:	eec080e7          	jalr	-276(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002de8:	09600593          	li	a1,150
    80002dec:	fffff097          	auipc	ra,0xfffff
    80002df0:	fc4080e7          	jalr	-60(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002df4:	00050b93          	mv	s7,a0
    if (pointers[5] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002df8:	00004797          	auipc	a5,0x4
    80002dfc:	4487b783          	ld	a5,1096(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002e00:	0007b783          	ld	a5,0(a5)
    80002e04:	01078793          	addi	a5,a5,16
    80002e08:	00a78663          	beq	a5,a0,80002e14 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x1b8>
        return false;
    80002e0c:	00000513          	li	a0,0
    80002e10:	e89ff06f          	j	80002c98 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[6] = MemoryAllocator::instance()->kmem_alloc(sizes[6]);
    80002e14:	fffff097          	auipc	ra,0xfffff
    80002e18:	eb8080e7          	jalr	-328(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002e1c:	02f00593          	li	a1,47
    80002e20:	fffff097          	auipc	ra,0xfffff
    80002e24:	f90080e7          	jalr	-112(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002e28:	00050b13          	mv	s6,a0
    if (pointers[6] != MemoryAllocator::managedMemorySpaceStart + 3 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002e2c:	00004797          	auipc	a5,0x4
    80002e30:	4147b783          	ld	a5,1044(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002e34:	0007b783          	ld	a5,0(a5)
    80002e38:	0d078793          	addi	a5,a5,208
    80002e3c:	00a78663          	beq	a5,a0,80002e48 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x1ec>
        return false;
    80002e40:	00000513          	li	a0,0
    80002e44:	e55ff06f          	j	80002c98 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[7] = MemoryAllocator::instance()->kmem_alloc(sizes[7]);
    80002e48:	fffff097          	auipc	ra,0xfffff
    80002e4c:	e84080e7          	jalr	-380(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002e50:	02500593          	li	a1,37
    80002e54:	fffff097          	auipc	ra,0xfffff
    80002e58:	f5c080e7          	jalr	-164(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002e5c:	00050913          	mv	s2,a0
    if (pointers[7] != MemoryAllocator::managedMemorySpaceStart + 8 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002e60:	00004797          	auipc	a5,0x4
    80002e64:	3e07b783          	ld	a5,992(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002e68:	0007b783          	ld	a5,0(a5)
    80002e6c:	21078793          	addi	a5,a5,528
    80002e70:	00a78663          	beq	a5,a0,80002e7c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x220>
        return false;
    80002e74:	00000513          	li	a0,0
    80002e78:	e21ff06f          	j	80002c98 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    if (!testMemoryMetadataValidity()) return false;
    80002e7c:	00048513          	mv	a0,s1
    80002e80:	fffff097          	auipc	ra,0xfffff
    80002e84:	550080e7          	jalr	1360(ra) # 800023d0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002e88:	e00508e3          	beqz	a0,80002c98 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002e8c:	fffff097          	auipc	ra,0xfffff
    80002e90:	e40080e7          	jalr	-448(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002e94:	00098593          	mv	a1,s3
    80002e98:	fffff097          	auipc	ra,0xfffff
    80002e9c:	fc0080e7          	jalr	-64(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002ea0:	fffff097          	auipc	ra,0xfffff
    80002ea4:	e2c080e7          	jalr	-468(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002ea8:	000a0593          	mv	a1,s4
    80002eac:	fffff097          	auipc	ra,0xfffff
    80002eb0:	fac080e7          	jalr	-84(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80002eb4:	fffff097          	auipc	ra,0xfffff
    80002eb8:	e18080e7          	jalr	-488(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002ebc:	000a8593          	mv	a1,s5
    80002ec0:	fffff097          	auipc	ra,0xfffff
    80002ec4:	f98080e7          	jalr	-104(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    80002ec8:	fffff097          	auipc	ra,0xfffff
    80002ecc:	e04080e7          	jalr	-508(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002ed0:	000b8593          	mv	a1,s7
    80002ed4:	fffff097          	auipc	ra,0xfffff
    80002ed8:	f84080e7          	jalr	-124(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[6]);
    80002edc:	fffff097          	auipc	ra,0xfffff
    80002ee0:	df0080e7          	jalr	-528(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002ee4:	000b0593          	mv	a1,s6
    80002ee8:	fffff097          	auipc	ra,0xfffff
    80002eec:	f70080e7          	jalr	-144(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[7]);
    80002ef0:	fffff097          	auipc	ra,0xfffff
    80002ef4:	ddc080e7          	jalr	-548(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    80002ef8:	00090593          	mv	a1,s2
    80002efc:	fffff097          	auipc	ra,0xfffff
    80002f00:	f5c080e7          	jalr	-164(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002f04:	00048513          	mv	a0,s1
    80002f08:	fffff097          	auipc	ra,0xfffff
    80002f0c:	4c8080e7          	jalr	1224(ra) # 800023d0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002f10:	d89ff06f          	j	80002c98 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>

0000000080002f14 <_ZN19MemoryAllocatorTest12testFirstFitEv>:
bool MemoryAllocatorTest::testFirstFit() {
    80002f14:	fe010113          	addi	sp,sp,-32
    80002f18:	00113c23          	sd	ra,24(sp)
    80002f1c:	00813823          	sd	s0,16(sp)
    80002f20:	00913423          	sd	s1,8(sp)
    80002f24:	02010413          	addi	s0,sp,32
    80002f28:	00050493          	mv	s1,a0
    if (!firstFitTest1()) return false;
    80002f2c:	00000097          	auipc	ra,0x0
    80002f30:	854080e7          	jalr	-1964(ra) # 80002780 <_ZN19MemoryAllocatorTest13firstFitTest1Ev>
    80002f34:	00051c63          	bnez	a0,80002f4c <_ZN19MemoryAllocatorTest12testFirstFitEv+0x38>
}
    80002f38:	01813083          	ld	ra,24(sp)
    80002f3c:	01013403          	ld	s0,16(sp)
    80002f40:	00813483          	ld	s1,8(sp)
    80002f44:	02010113          	addi	sp,sp,32
    80002f48:	00008067          	ret
    if (!firstFitTest2()) return false;
    80002f4c:	00048513          	mv	a0,s1
    80002f50:	00000097          	auipc	ra,0x0
    80002f54:	ae4080e7          	jalr	-1308(ra) # 80002a34 <_ZN19MemoryAllocatorTest13firstFitTest2Ev>
    80002f58:	fe0500e3          	beqz	a0,80002f38 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x24>
    if (!firstFitTest3()) return false;
    80002f5c:	00048513          	mv	a0,s1
    80002f60:	00000097          	auipc	ra,0x0
    80002f64:	cfc080e7          	jalr	-772(ra) # 80002c5c <_ZN19MemoryAllocatorTest13firstFitTest3Ev>
    80002f68:	fd1ff06f          	j	80002f38 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x24>

0000000080002f6c <_ZN19MemoryAllocatorTest25testSegmentDescriptorSizeEv>:

bool MemoryAllocatorTest::testSegmentDescriptorSize() {
    80002f6c:	ff010113          	addi	sp,sp,-16
    80002f70:	00113423          	sd	ra,8(sp)
    80002f74:	00813023          	sd	s0,0(sp)
    80002f78:	01010413          	addi	s0,sp,16
    if (!testMemoryMetadataValidity()) return false;
    80002f7c:	fffff097          	auipc	ra,0xfffff
    80002f80:	454080e7          	jalr	1108(ra) # 800023d0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    return sizeof(MemoryAllocator::SegmentDescriptor) == 16;
}
    80002f84:	00813083          	ld	ra,8(sp)
    80002f88:	00013403          	ld	s0,0(sp)
    80002f8c:	01010113          	addi	sp,sp,16
    80002f90:	00008067          	ret

0000000080002f94 <_ZN19MemoryAllocatorTest8runTestsEv>:
bool MemoryAllocatorTest::runTests() {
    80002f94:	f6010113          	addi	sp,sp,-160
    80002f98:	08113c23          	sd	ra,152(sp)
    80002f9c:	08813823          	sd	s0,144(sp)
    80002fa0:	08913423          	sd	s1,136(sp)
    80002fa4:	09213023          	sd	s2,128(sp)
    80002fa8:	07313c23          	sd	s3,120(sp)
    80002fac:	0a010413          	addi	s0,sp,160
    80002fb0:	00050993          	mv	s3,a0
    sizes[0] = 3.7 * MEM_BLOCK_SIZE;
    80002fb4:	0ec00793          	li	a5,236
    80002fb8:	f6f43423          	sd	a5,-152(s0)
    sizes[1] = MEM_BLOCK_SIZE;
    80002fbc:	04000793          	li	a5,64
    80002fc0:	f6f43823          	sd	a5,-144(s0)
    sizes[2] = 0.3 * MEM_BLOCK_SIZE;
    80002fc4:	01300793          	li	a5,19
    80002fc8:	f6f43c23          	sd	a5,-136(s0)
    sizes[3] = 0;
    80002fcc:	f8043023          	sd	zero,-128(s0)
    sizes[4] = -37;
    80002fd0:	fdb00793          	li	a5,-37
    80002fd4:	f8f43423          	sd	a5,-120(s0)
    sizes[5] = sizeof(MemoryAllocator::SegmentDescriptor) - 1;
    80002fd8:	00f00793          	li	a5,15
    80002fdc:	f8f43823          	sd	a5,-112(s0)
    sizes[6] = sizeof(MemoryAllocator::SegmentDescriptor);
    80002fe0:	01000793          	li	a5,16
    80002fe4:	f8f43c23          	sd	a5,-104(s0)
    sizes[7] = sizeof(MemoryAllocator::SegmentDescriptor) + 1;
    80002fe8:	01100793          	li	a5,17
    80002fec:	faf43023          	sd	a5,-96(s0)
    sizes[8] = MemoryAllocator::minMemoryFragmentSize - 1;
    80002ff0:	00004797          	auipc	a5,0x4
    80002ff4:	2187b783          	ld	a5,536(a5) # 80007208 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002ff8:	0007b783          	ld	a5,0(a5)
    80002ffc:	fff78713          	addi	a4,a5,-1
    80003000:	fae43423          	sd	a4,-88(s0)
    sizes[9] = MemoryAllocator::minMemoryFragmentSize;
    80003004:	faf43823          	sd	a5,-80(s0)
    sizes[10] = MemoryAllocator::minMemoryFragmentSize + 1;
    80003008:	00178793          	addi	a5,a5,1
    8000300c:	faf43c23          	sd	a5,-72(s0)
    sizes[11] = MEM_BLOCK_SIZE - 1;
    80003010:	03f00793          	li	a5,63
    80003014:	fcf43023          	sd	a5,-64(s0)
    sizes[12] = MEM_BLOCK_SIZE + 1;
    80003018:	04100793          	li	a5,65
    8000301c:	fcf43423          	sd	a5,-56(s0)
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    80003020:	00000493          	li	s1,0
    80003024:	0880006f          	j	800030ac <_ZN19MemoryAllocatorTest8runTestsEv+0x118>
            printString("Failed testMemoryAllocate test for input ");
    80003028:	00003517          	auipc	a0,0x3
    8000302c:	41050513          	addi	a0,a0,1040 # 80006438 <CONSOLE_STATUS+0x428>
    80003030:	00001097          	auipc	ra,0x1
    80003034:	95c080e7          	jalr	-1700(ra) # 8000398c <_Z11printStringPKc>
            printInteger(sizes[i]); printString("\n"); return false;
    80003038:	00090513          	mv	a0,s2
    8000303c:	00001097          	auipc	ra,0x1
    80003040:	9c0080e7          	jalr	-1600(ra) # 800039fc <_Z12printIntegerm>
    80003044:	00003517          	auipc	a0,0x3
    80003048:	04450513          	addi	a0,a0,68 # 80006088 <CONSOLE_STATUS+0x78>
    8000304c:	00001097          	auipc	ra,0x1
    80003050:	940080e7          	jalr	-1728(ra) # 8000398c <_Z11printStringPKc>
    80003054:	00000493          	li	s1,0
}
    80003058:	00048513          	mv	a0,s1
    8000305c:	09813083          	ld	ra,152(sp)
    80003060:	09013403          	ld	s0,144(sp)
    80003064:	08813483          	ld	s1,136(sp)
    80003068:	08013903          	ld	s2,128(sp)
    8000306c:	07813983          	ld	s3,120(sp)
    80003070:	0a010113          	addi	sp,sp,160
    80003074:	00008067          	ret
            printString("Failed testMemoryFree test for input ");
    80003078:	00003517          	auipc	a0,0x3
    8000307c:	3f850513          	addi	a0,a0,1016 # 80006470 <CONSOLE_STATUS+0x460>
    80003080:	00001097          	auipc	ra,0x1
    80003084:	90c080e7          	jalr	-1780(ra) # 8000398c <_Z11printStringPKc>
            printInteger(sizes[i]); printString("\n"); return false;
    80003088:	00090513          	mv	a0,s2
    8000308c:	00001097          	auipc	ra,0x1
    80003090:	970080e7          	jalr	-1680(ra) # 800039fc <_Z12printIntegerm>
    80003094:	00003517          	auipc	a0,0x3
    80003098:	ff450513          	addi	a0,a0,-12 # 80006088 <CONSOLE_STATUS+0x78>
    8000309c:	00001097          	auipc	ra,0x1
    800030a0:	8f0080e7          	jalr	-1808(ra) # 8000398c <_Z11printStringPKc>
    800030a4:	fb1ff06f          	j	80003054 <_ZN19MemoryAllocatorTest8runTestsEv+0xc0>
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    800030a8:	0014849b          	addiw	s1,s1,1
    800030ac:	00c00793          	li	a5,12
    800030b0:	0897c863          	blt	a5,s1,80003140 <_ZN19MemoryAllocatorTest8runTestsEv+0x1ac>
        void * allocatedMemoryPointer = nullptr;
    800030b4:	f6043023          	sd	zero,-160(s0)
        if (!testMemoryAllocate(sizes[i], &allocatedMemoryPointer)) {
    800030b8:	00349793          	slli	a5,s1,0x3
    800030bc:	fd040713          	addi	a4,s0,-48
    800030c0:	00f707b3          	add	a5,a4,a5
    800030c4:	f987b903          	ld	s2,-104(a5)
    800030c8:	f6040613          	addi	a2,s0,-160
    800030cc:	00090593          	mv	a1,s2
    800030d0:	00098513          	mv	a0,s3
    800030d4:	fffff097          	auipc	ra,0xfffff
    800030d8:	3b4080e7          	jalr	948(ra) # 80002488 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>
    800030dc:	f40506e3          	beqz	a0,80003028 <_ZN19MemoryAllocatorTest8runTestsEv+0x94>
        } else printString("Passed ");
    800030e0:	00003517          	auipc	a0,0x3
    800030e4:	38850513          	addi	a0,a0,904 # 80006468 <CONSOLE_STATUS+0x458>
    800030e8:	00001097          	auipc	ra,0x1
    800030ec:	8a4080e7          	jalr	-1884(ra) # 8000398c <_Z11printStringPKc>
        if (!testMemoryFree(sizes[i], allocatedMemoryPointer)) {
    800030f0:	f6043603          	ld	a2,-160(s0)
    800030f4:	00090593          	mv	a1,s2
    800030f8:	00098513          	mv	a0,s3
    800030fc:	fffff097          	auipc	ra,0xfffff
    80003100:	50c080e7          	jalr	1292(ra) # 80002608 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>
    80003104:	f6050ae3          	beqz	a0,80003078 <_ZN19MemoryAllocatorTest8runTestsEv+0xe4>
        } else printString("Passed ");
    80003108:	00003517          	auipc	a0,0x3
    8000310c:	36050513          	addi	a0,a0,864 # 80006468 <CONSOLE_STATUS+0x458>
    80003110:	00001097          	auipc	ra,0x1
    80003114:	87c080e7          	jalr	-1924(ra) # 8000398c <_Z11printStringPKc>
        if (i != 0 && (i + 1) % 5 == 0) printString("\n");
    80003118:	f80488e3          	beqz	s1,800030a8 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    8000311c:	0014879b          	addiw	a5,s1,1
    80003120:	00500713          	li	a4,5
    80003124:	02e7e7bb          	remw	a5,a5,a4
    80003128:	f80790e3          	bnez	a5,800030a8 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    8000312c:	00003517          	auipc	a0,0x3
    80003130:	f5c50513          	addi	a0,a0,-164 # 80006088 <CONSOLE_STATUS+0x78>
    80003134:	00001097          	auipc	ra,0x1
    80003138:	858080e7          	jalr	-1960(ra) # 8000398c <_Z11printStringPKc>
    8000313c:	f6dff06f          	j	800030a8 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    if (!testFirstFit()) {
    80003140:	00098513          	mv	a0,s3
    80003144:	00000097          	auipc	ra,0x0
    80003148:	dd0080e7          	jalr	-560(ra) # 80002f14 <_ZN19MemoryAllocatorTest12testFirstFitEv>
    8000314c:	00050493          	mv	s1,a0
    80003150:	02050e63          	beqz	a0,8000318c <_ZN19MemoryAllocatorTest8runTestsEv+0x1f8>
    else printString("Passed ");
    80003154:	00003517          	auipc	a0,0x3
    80003158:	31450513          	addi	a0,a0,788 # 80006468 <CONSOLE_STATUS+0x458>
    8000315c:	00001097          	auipc	ra,0x1
    80003160:	830080e7          	jalr	-2000(ra) # 8000398c <_Z11printStringPKc>
    if (!testSegmentDescriptorSize()) {
    80003164:	00098513          	mv	a0,s3
    80003168:	00000097          	auipc	ra,0x0
    8000316c:	e04080e7          	jalr	-508(ra) # 80002f6c <_ZN19MemoryAllocatorTest25testSegmentDescriptorSizeEv>
    80003170:	00050493          	mv	s1,a0
    80003174:	02050663          	beqz	a0,800031a0 <_ZN19MemoryAllocatorTest8runTestsEv+0x20c>
    else printString("Passed\n");
    80003178:	00003517          	auipc	a0,0x3
    8000317c:	36050513          	addi	a0,a0,864 # 800064d8 <CONSOLE_STATUS+0x4c8>
    80003180:	00001097          	auipc	ra,0x1
    80003184:	80c080e7          	jalr	-2036(ra) # 8000398c <_Z11printStringPKc>
    80003188:	ed1ff06f          	j	80003058 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>
        printString("Failed testFirstFit\n"); return false; }
    8000318c:	00003517          	auipc	a0,0x3
    80003190:	30c50513          	addi	a0,a0,780 # 80006498 <CONSOLE_STATUS+0x488>
    80003194:	00000097          	auipc	ra,0x0
    80003198:	7f8080e7          	jalr	2040(ra) # 8000398c <_Z11printStringPKc>
    8000319c:	ebdff06f          	j	80003058 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>
        printString("Failed testSegmentDescriptorSize\n"); return false; }
    800031a0:	00003517          	auipc	a0,0x3
    800031a4:	31050513          	addi	a0,a0,784 # 800064b0 <CONSOLE_STATUS+0x4a0>
    800031a8:	00000097          	auipc	ra,0x0
    800031ac:	7e4080e7          	jalr	2020(ra) # 8000398c <_Z11printStringPKc>
    800031b0:	ea9ff06f          	j	80003058 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>

00000000800031b4 <_Znwm>:


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    800031b4:	ff010113          	addi	sp,sp,-16
    800031b8:	00113423          	sd	ra,8(sp)
    800031bc:	00813023          	sd	s0,0(sp)
    800031c0:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    800031c4:	00003097          	auipc	ra,0x3
    800031c8:	ad4080e7          	jalr	-1324(ra) # 80005c98 <__mem_alloc>
    //return MemoryAllocator::instance()->kmem_alloc(n);
}
    800031cc:	00813083          	ld	ra,8(sp)
    800031d0:	00013403          	ld	s0,0(sp)
    800031d4:	01010113          	addi	sp,sp,16
    800031d8:	00008067          	ret

00000000800031dc <_Znam>:

void *operator new[](size_t n)
{
    800031dc:	ff010113          	addi	sp,sp,-16
    800031e0:	00113423          	sd	ra,8(sp)
    800031e4:	00813023          	sd	s0,0(sp)
    800031e8:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    800031ec:	00003097          	auipc	ra,0x3
    800031f0:	aac080e7          	jalr	-1364(ra) # 80005c98 <__mem_alloc>
    //return MemoryAllocator::instance()->kmem_alloc(n);
}
    800031f4:	00813083          	ld	ra,8(sp)
    800031f8:	00013403          	ld	s0,0(sp)
    800031fc:	01010113          	addi	sp,sp,16
    80003200:	00008067          	ret

0000000080003204 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80003204:	ff010113          	addi	sp,sp,-16
    80003208:	00113423          	sd	ra,8(sp)
    8000320c:	00813023          	sd	s0,0(sp)
    80003210:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80003214:	00003097          	auipc	ra,0x3
    80003218:	9b8080e7          	jalr	-1608(ra) # 80005bcc <__mem_free>
    //MemoryAllocator::instance()->kmem_free(p);
}
    8000321c:	00813083          	ld	ra,8(sp)
    80003220:	00013403          	ld	s0,0(sp)
    80003224:	01010113          	addi	sp,sp,16
    80003228:	00008067          	ret

000000008000322c <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    8000322c:	ff010113          	addi	sp,sp,-16
    80003230:	00113423          	sd	ra,8(sp)
    80003234:	00813023          	sd	s0,0(sp)
    80003238:	01010413          	addi	s0,sp,16
    __mem_free(p);
    8000323c:	00003097          	auipc	ra,0x3
    80003240:	990080e7          	jalr	-1648(ra) # 80005bcc <__mem_free>
    //MemoryAllocator::instance()->kmem_free(p);
    80003244:	00813083          	ld	ra,8(sp)
    80003248:	00013403          	ld	s0,0(sp)
    8000324c:	01010113          	addi	sp,sp,16
    80003250:	00008067          	ret

0000000080003254 <_ZN16KObjectAllocator19printInternalMemoryEv>:
#include "../h/kObjectAllocator.hpp"
#include "../h/print.hpp"

void KObjectAllocator::printInternalMemory() {
    80003254:	fe010113          	addi	sp,sp,-32
    80003258:	00113c23          	sd	ra,24(sp)
    8000325c:	00813823          	sd	s0,16(sp)
    80003260:	00913423          	sd	s1,8(sp)
    80003264:	02010413          	addi	s0,sp,32
    80003268:	00050493          	mv	s1,a0
    printString("\nbitVector: "); printInteger((uint64)bitVectors[0]);
    8000326c:	00003517          	auipc	a0,0x3
    80003270:	27450513          	addi	a0,a0,628 # 800064e0 <CONSOLE_STATUS+0x4d0>
    80003274:	00000097          	auipc	ra,0x0
    80003278:	718080e7          	jalr	1816(ra) # 8000398c <_Z11printStringPKc>
    8000327c:	0284b783          	ld	a5,40(s1)
    80003280:	0007b503          	ld	a0,0(a5)
    80003284:	00000097          	auipc	ra,0x0
    80003288:	778080e7          	jalr	1912(ra) # 800039fc <_Z12printIntegerm>
    printString("\nobjectVector: "); printInteger((uint64)objectVectors[0]); printString("\n");
    8000328c:	00003517          	auipc	a0,0x3
    80003290:	26450513          	addi	a0,a0,612 # 800064f0 <CONSOLE_STATUS+0x4e0>
    80003294:	00000097          	auipc	ra,0x0
    80003298:	6f8080e7          	jalr	1784(ra) # 8000398c <_Z11printStringPKc>
    8000329c:	0204b783          	ld	a5,32(s1)
    800032a0:	0007b503          	ld	a0,0(a5)
    800032a4:	00000097          	auipc	ra,0x0
    800032a8:	758080e7          	jalr	1880(ra) # 800039fc <_Z12printIntegerm>
    800032ac:	00003517          	auipc	a0,0x3
    800032b0:	ddc50513          	addi	a0,a0,-548 # 80006088 <CONSOLE_STATUS+0x78>
    800032b4:	00000097          	auipc	ra,0x0
    800032b8:	6d8080e7          	jalr	1752(ra) # 8000398c <_Z11printStringPKc>
            printString("\n"); for (size_t j = 0; j < memorySizeForBits * 4 - 1; ++j) printString("-"); }
        else if (memorySizeForBits < 40 && i + 1 == memorySizeForBits) printString("| ");
        if (memorySizeForBits >= 40 && (i + 1) % memorySizeForBits == 0) printString("\n");
        else if (memorySizeForBits < 40 && (i + 1) % 20 == 0) printString("\n");
    }*/
}
    800032bc:	01813083          	ld	ra,24(sp)
    800032c0:	01013403          	ld	s0,16(sp)
    800032c4:	00813483          	ld	s1,8(sp)
    800032c8:	02010113          	addi	sp,sp,32
    800032cc:	00008067          	ret

00000000800032d0 <_ZN16KObjectAllocator18allocateFreeObjectEv>:
        if (returnedObject) return returnedObject;
    }
    return nullptr;
}

void* KObjectAllocator::allocateFreeObject() {
    800032d0:	ff010113          	addi	sp,sp,-16
    800032d4:	00813423          	sd	s0,8(sp)
    800032d8:	01010413          	addi	s0,sp,16
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    800032dc:	00000893          	li	a7,0
    800032e0:	03053783          	ld	a5,48(a0)
    800032e4:	0cf8f263          	bgeu	a7,a5,800033a8 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xd8>
        for (size_t j = nextNonTakenByte; j < (i + 1) * memorySizeForBits; ++j) {
    800032e8:	03853303          	ld	t1,56(a0)
    800032ec:	09c0006f          	j	80003388 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xb8>
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    800032f0:	00078893          	mv	a7,a5
    800032f4:	fedff06f          	j	800032e0 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x10>
            size_t byte = j - i * memorySizeForBits;
            for (size_t bit = 8; bit != 0; --bit)
    800032f8:	fff70713          	addi	a4,a4,-1
    800032fc:	08070463          	beqz	a4,80003384 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xb4>
                if ((bitVectors[i][byte] >> (bit - 1) & (uint8) 1) == 0) {
    80003300:	02853683          	ld	a3,40(a0)
    80003304:	00389593          	slli	a1,a7,0x3
    80003308:	00b686b3          	add	a3,a3,a1
    8000330c:	0006b783          	ld	a5,0(a3)
    80003310:	00c787b3          	add	a5,a5,a2
    80003314:	0007c783          	lbu	a5,0(a5)
    80003318:	fff7081b          	addiw	a6,a4,-1
    8000331c:	4107d7bb          	sraw	a5,a5,a6
    80003320:	0017f793          	andi	a5,a5,1
    80003324:	fc079ae3          	bnez	a5,800032f8 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x28>
                    nextNonTakenByte = j + (bit == 1);
    80003328:	fff70793          	addi	a5,a4,-1
    8000332c:	0017b793          	seqz	a5,a5
    80003330:	00678333          	add	t1,a5,t1
    80003334:	02653c23          	sd	t1,56(a0)
                    bitVectors[i][byte] |= (uint8) 1 << (bit - 1);
    80003338:	0006b683          	ld	a3,0(a3)
    8000333c:	00c686b3          	add	a3,a3,a2
    80003340:	00100793          	li	a5,1
    80003344:	0107983b          	sllw	a6,a5,a6
    80003348:	0006c783          	lbu	a5,0(a3)
    8000334c:	00f86833          	or	a6,a6,a5
    80003350:	01068023          	sb	a6,0(a3)
                    return &objectVectors[i][(byte * 8 + 8 - bit) * objectSize];
    80003354:	02053783          	ld	a5,32(a0)
    80003358:	00b785b3          	add	a1,a5,a1
    8000335c:	0005b783          	ld	a5,0(a1)
    80003360:	00160613          	addi	a2,a2,1
    80003364:	00361613          	slli	a2,a2,0x3
    80003368:	40e60733          	sub	a4,a2,a4
    8000336c:	01853503          	ld	a0,24(a0)
    80003370:	02a70733          	mul	a4,a4,a0
    80003374:	00e78533          	add	a0,a5,a4
                }
        }
    }
    return nullptr;
}
    80003378:	00813403          	ld	s0,8(sp)
    8000337c:	01010113          	addi	sp,sp,16
    80003380:	00008067          	ret
        for (size_t j = nextNonTakenByte; j < (i + 1) * memorySizeForBits; ++j) {
    80003384:	00130313          	addi	t1,t1,1
    80003388:	00188793          	addi	a5,a7,1
    8000338c:	01053603          	ld	a2,16(a0)
    80003390:	02c78733          	mul	a4,a5,a2
    80003394:	f4e37ee3          	bgeu	t1,a4,800032f0 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x20>
            size_t byte = j - i * memorySizeForBits;
    80003398:	03160633          	mul	a2,a2,a7
    8000339c:	40c30633          	sub	a2,t1,a2
            for (size_t bit = 8; bit != 0; --bit)
    800033a0:	00800713          	li	a4,8
    800033a4:	f59ff06f          	j	800032fc <_ZN16KObjectAllocator18allocateFreeObjectEv+0x2c>
    return nullptr;
    800033a8:	00000513          	li	a0,0
    800033ac:	fcdff06f          	j	80003378 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xa8>

00000000800033b0 <_ZN16KObjectAllocator10freeObjectEPv>:

void KObjectAllocator::freeObject(void* objectPointer) {
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    800033b0:	00000713          	li	a4,0
    800033b4:	0080006f          	j	800033bc <_ZN16KObjectAllocator10freeObjectEPv+0xc>
    800033b8:	00170713          	addi	a4,a4,1
    800033bc:	03053783          	ld	a5,48(a0)
    800033c0:	06f77463          	bgeu	a4,a5,80003428 <_ZN16KObjectAllocator10freeObjectEPv+0x78>
        if ((uint8*) objectPointer < objectVectors[i]) continue;
    800033c4:	02053783          	ld	a5,32(a0)
    800033c8:	00371693          	slli	a3,a4,0x3
    800033cc:	00d787b3          	add	a5,a5,a3
    800033d0:	0007b783          	ld	a5,0(a5)
    800033d4:	fef5e2e3          	bltu	a1,a5,800033b8 <_ZN16KObjectAllocator10freeObjectEPv+0x8>
        size_t idiff = (size_t) ((uint8*) objectPointer - objectVectors[i]);
    800033d8:	40f587b3          	sub	a5,a1,a5
        size_t byte = idiff / objectSize / 8;
    800033dc:	01853603          	ld	a2,24(a0)
    800033e0:	02c7d7b3          	divu	a5,a5,a2
    800033e4:	0037d813          	srli	a6,a5,0x3
        if (byte >= memorySizeForBits) continue;
    800033e8:	01053603          	ld	a2,16(a0)
    800033ec:	fcc876e3          	bgeu	a6,a2,800033b8 <_ZN16KObjectAllocator10freeObjectEPv+0x8>
        size_t bit = idiff / objectSize - byte * 8;
    800033f0:	0077f793          	andi	a5,a5,7
        bitVectors[i][byte] &= ~((uint8) 1 << (7 - bit));
    800033f4:	02853603          	ld	a2,40(a0)
    800033f8:	00d606b3          	add	a3,a2,a3
    800033fc:	0006b703          	ld	a4,0(a3)
    80003400:	01070733          	add	a4,a4,a6
    80003404:	00700693          	li	a3,7
    80003408:	40f686bb          	subw	a3,a3,a5
    8000340c:	00100793          	li	a5,1
    80003410:	00d797bb          	sllw	a5,a5,a3
    80003414:	fff7c793          	not	a5,a5
    80003418:	00074683          	lbu	a3,0(a4)
    8000341c:	00d7f7b3          	and	a5,a5,a3
    80003420:	00f70023          	sb	a5,0(a4)
        return;
    80003424:	00008067          	ret
void KObjectAllocator::freeObject(void* objectPointer) {
    80003428:	ff010113          	addi	sp,sp,-16
    8000342c:	00113423          	sd	ra,8(sp)
    80003430:	00813023          	sd	s0,0(sp)
    80003434:	01010413          	addi	s0,sp,16
    }
    printString("ERROR: Object not allocated in this KObjectAllocator\n");
    80003438:	00003517          	auipc	a0,0x3
    8000343c:	0c850513          	addi	a0,a0,200 # 80006500 <CONSOLE_STATUS+0x4f0>
    80003440:	00000097          	auipc	ra,0x0
    80003444:	54c080e7          	jalr	1356(ra) # 8000398c <_Z11printStringPKc>
}
    80003448:	00813083          	ld	ra,8(sp)
    8000344c:	00013403          	ld	s0,0(sp)
    80003450:	01010113          	addi	sp,sp,16
    80003454:	00008067          	ret

0000000080003458 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv>:

bool KObjectAllocator::handleNotEnoughMemoryProblem() {
    80003458:	fb010113          	addi	sp,sp,-80
    8000345c:	04113423          	sd	ra,72(sp)
    80003460:	04813023          	sd	s0,64(sp)
    80003464:	02913c23          	sd	s1,56(sp)
    80003468:	03213823          	sd	s2,48(sp)
    8000346c:	03313423          	sd	s3,40(sp)
    80003470:	03413023          	sd	s4,32(sp)
    80003474:	01513c23          	sd	s5,24(sp)
    80003478:	01613823          	sd	s6,16(sp)
    8000347c:	01713423          	sd	s7,8(sp)
    80003480:	05010413          	addi	s0,sp,80
    80003484:	00050493          	mv	s1,a0
    size_t newNumberOfAllocations = 2 * numberOfAllocations;
    80003488:	03053a03          	ld	s4,48(a0)
    8000348c:	001a1993          	slli	s3,s4,0x1
    size_t newNumberOfObjects = 2 * numberOfObjects;
    80003490:	00853a83          	ld	s5,8(a0)
    80003494:	001a9a93          	slli	s5,s5,0x1
    uint8** newBitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(
    80003498:	fffff097          	auipc	ra,0xfffff
    8000349c:	834080e7          	jalr	-1996(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    800034a0:	004a1a13          	slli	s4,s4,0x4
    800034a4:	000a0593          	mv	a1,s4
    800034a8:	fffff097          	auipc	ra,0xfffff
    800034ac:	908080e7          	jalr	-1784(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    800034b0:	00050913          	mv	s2,a0
            newNumberOfAllocations * sizeof(uint8*)
    );
    uint8** newObjectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(
    800034b4:	fffff097          	auipc	ra,0xfffff
    800034b8:	818080e7          	jalr	-2024(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    800034bc:	000a0593          	mv	a1,s4
    800034c0:	fffff097          	auipc	ra,0xfffff
    800034c4:	8f0080e7          	jalr	-1808(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    800034c8:	00050a13          	mv	s4,a0
            newNumberOfAllocations * sizeof(uint8*)
    );

    for (size_t i = 0; i < numberOfAllocations; ++i) newBitVectors[i] = bitVectors[i];
    800034cc:	00000793          	li	a5,0
    800034d0:	0304bb03          	ld	s6,48(s1)
    800034d4:	0367f263          	bgeu	a5,s6,800034f8 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xa0>
    800034d8:	0284b703          	ld	a4,40(s1)
    800034dc:	00379693          	slli	a3,a5,0x3
    800034e0:	00d90633          	add	a2,s2,a3
    800034e4:	00d70733          	add	a4,a4,a3
    800034e8:	00073703          	ld	a4,0(a4)
    800034ec:	00e63023          	sd	a4,0(a2)
    800034f0:	00178793          	addi	a5,a5,1
    800034f4:	fddff06f          	j	800034d0 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x78>
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i) {
    800034f8:	033b7e63          	bgeu	s6,s3,80003534 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xdc>
        newBitVectors[i] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    800034fc:	ffffe097          	auipc	ra,0xffffe
    80003500:	7d0080e7          	jalr	2000(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
        memorySizeForBits + initialNumberOfObjects * objectSize );
    80003504:	0104b583          	ld	a1,16(s1)
    80003508:	0004b783          	ld	a5,0(s1)
    8000350c:	0184b703          	ld	a4,24(s1)
    80003510:	02e787b3          	mul	a5,a5,a4
        newBitVectors[i] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80003514:	003b1b93          	slli	s7,s6,0x3
    80003518:	01790bb3          	add	s7,s2,s7
    8000351c:	00f585b3          	add	a1,a1,a5
    80003520:	fffff097          	auipc	ra,0xfffff
    80003524:	890080e7          	jalr	-1904(ra) # 80001db0 <_ZN15MemoryAllocator10kmem_allocEm>
    80003528:	00abb023          	sd	a0,0(s7)
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i) {
    8000352c:	001b0b13          	addi	s6,s6,1
    80003530:	fc9ff06f          	j	800034f8 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xa0>
    }
    for (size_t i = 0; i < newNumberOfAllocations; ++i) newObjectVectors[i] = newBitVectors[i] + memorySizeForBits;
    80003534:	00000713          	li	a4,0
    80003538:	03377463          	bgeu	a4,s3,80003560 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x108>
    8000353c:	00371793          	slli	a5,a4,0x3
    80003540:	00f906b3          	add	a3,s2,a5
    80003544:	0006b683          	ld	a3,0(a3)
    80003548:	0104b603          	ld	a2,16(s1)
    8000354c:	00fa07b3          	add	a5,s4,a5
    80003550:	00c686b3          	add	a3,a3,a2
    80003554:	00d7b023          	sd	a3,0(a5)
    80003558:	00170713          	addi	a4,a4,1
    8000355c:	fddff06f          	j	80003538 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xe0>
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i)
    80003560:	0304b683          	ld	a3,48(s1)
    80003564:	0080006f          	j	8000356c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x114>
    80003568:	00168693          	addi	a3,a3,1
    8000356c:	0336f663          	bgeu	a3,s3,80003598 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x140>
        for (size_t j = 0; j < memorySizeForBits; newBitVectors[i][j++] = 0);
    80003570:	00000793          	li	a5,0
    80003574:	0104b703          	ld	a4,16(s1)
    80003578:	fee7f8e3          	bgeu	a5,a4,80003568 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x110>
    8000357c:	00369713          	slli	a4,a3,0x3
    80003580:	00e90733          	add	a4,s2,a4
    80003584:	00073703          	ld	a4,0(a4)
    80003588:	00f70733          	add	a4,a4,a5
    8000358c:	00070023          	sb	zero,0(a4)
    80003590:	00178793          	addi	a5,a5,1
    80003594:	fe1ff06f          	j	80003574 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x11c>
    MemoryAllocator::instance()->kmem_free(bitVectors);
    80003598:	ffffe097          	auipc	ra,0xffffe
    8000359c:	734080e7          	jalr	1844(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    800035a0:	0284b583          	ld	a1,40(s1)
    800035a4:	fffff097          	auipc	ra,0xfffff
    800035a8:	8b4080e7          	jalr	-1868(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(objectVectors);
    800035ac:	ffffe097          	auipc	ra,0xffffe
    800035b0:	720080e7          	jalr	1824(ra) # 80001ccc <_ZN15MemoryAllocator8instanceEv>
    800035b4:	0204b583          	ld	a1,32(s1)
    800035b8:	fffff097          	auipc	ra,0xfffff
    800035bc:	8a0080e7          	jalr	-1888(ra) # 80001e58 <_ZN15MemoryAllocator9kmem_freeEPv>

    numberOfObjects = newNumberOfObjects;
    800035c0:	0154b423          	sd	s5,8(s1)
    nextNonTakenByte = numberOfAllocations * memorySizeForBits;
    800035c4:	0304b783          	ld	a5,48(s1)
    800035c8:	0104b703          	ld	a4,16(s1)
    800035cc:	02e787b3          	mul	a5,a5,a4
    800035d0:	02f4bc23          	sd	a5,56(s1)
    numberOfAllocations = newNumberOfAllocations;
    800035d4:	0334b823          	sd	s3,48(s1)
    bitVectors = newBitVectors;
    800035d8:	0324b423          	sd	s2,40(s1)
    objectVectors = newObjectVectors;
    800035dc:	0344b023          	sd	s4,32(s1)

    return true;
}
    800035e0:	00100513          	li	a0,1
    800035e4:	04813083          	ld	ra,72(sp)
    800035e8:	04013403          	ld	s0,64(sp)
    800035ec:	03813483          	ld	s1,56(sp)
    800035f0:	03013903          	ld	s2,48(sp)
    800035f4:	02813983          	ld	s3,40(sp)
    800035f8:	02013a03          	ld	s4,32(sp)
    800035fc:	01813a83          	ld	s5,24(sp)
    80003600:	01013b03          	ld	s6,16(sp)
    80003604:	00813b83          	ld	s7,8(sp)
    80003608:	05010113          	addi	sp,sp,80
    8000360c:	00008067          	ret

0000000080003610 <_ZN16KObjectAllocator17allocateNewObjectEv>:
void* KObjectAllocator::allocateNewObject() {
    80003610:	fe010113          	addi	sp,sp,-32
    80003614:	00113c23          	sd	ra,24(sp)
    80003618:	00813823          	sd	s0,16(sp)
    8000361c:	00913423          	sd	s1,8(sp)
    80003620:	01213023          	sd	s2,0(sp)
    80003624:	02010413          	addi	s0,sp,32
    80003628:	00050913          	mv	s2,a0
    void* returnedObject = allocateFreeObject();
    8000362c:	00000097          	auipc	ra,0x0
    80003630:	ca4080e7          	jalr	-860(ra) # 800032d0 <_ZN16KObjectAllocator18allocateFreeObjectEv>
    80003634:	00050493          	mv	s1,a0
    printString("\nreturnedObject before: ");
    80003638:	00003517          	auipc	a0,0x3
    8000363c:	f0050513          	addi	a0,a0,-256 # 80006538 <CONSOLE_STATUS+0x528>
    80003640:	00000097          	auipc	ra,0x0
    80003644:	34c080e7          	jalr	844(ra) # 8000398c <_Z11printStringPKc>
    printInteger((uint64)returnedObject);
    80003648:	00048513          	mv	a0,s1
    8000364c:	00000097          	auipc	ra,0x0
    80003650:	3b0080e7          	jalr	944(ra) # 800039fc <_Z12printIntegerm>
    printString("\n");
    80003654:	00003517          	auipc	a0,0x3
    80003658:	a3450513          	addi	a0,a0,-1484 # 80006088 <CONSOLE_STATUS+0x78>
    8000365c:	00000097          	auipc	ra,0x0
    80003660:	330080e7          	jalr	816(ra) # 8000398c <_Z11printStringPKc>
    if (returnedObject) return returnedObject;
    80003664:	02048063          	beqz	s1,80003684 <_ZN16KObjectAllocator17allocateNewObjectEv+0x74>
}
    80003668:	00048513          	mv	a0,s1
    8000366c:	01813083          	ld	ra,24(sp)
    80003670:	01013403          	ld	s0,16(sp)
    80003674:	00813483          	ld	s1,8(sp)
    80003678:	00013903          	ld	s2,0(sp)
    8000367c:	02010113          	addi	sp,sp,32
    80003680:	00008067          	ret
    nextNonTakenByte = 0;   // start search from start
    80003684:	02093c23          	sd	zero,56(s2)
    returnedObject = allocateFreeObject();
    80003688:	00090513          	mv	a0,s2
    8000368c:	00000097          	auipc	ra,0x0
    80003690:	c44080e7          	jalr	-956(ra) # 800032d0 <_ZN16KObjectAllocator18allocateFreeObjectEv>
    80003694:	00050493          	mv	s1,a0
    printString("\nreturnedObject: ");
    80003698:	00003517          	auipc	a0,0x3
    8000369c:	ec050513          	addi	a0,a0,-320 # 80006558 <CONSOLE_STATUS+0x548>
    800036a0:	00000097          	auipc	ra,0x0
    800036a4:	2ec080e7          	jalr	748(ra) # 8000398c <_Z11printStringPKc>
    printInteger((uint64)returnedObject);
    800036a8:	00048513          	mv	a0,s1
    800036ac:	00000097          	auipc	ra,0x0
    800036b0:	350080e7          	jalr	848(ra) # 800039fc <_Z12printIntegerm>
    printString("\n");
    800036b4:	00003517          	auipc	a0,0x3
    800036b8:	9d450513          	addi	a0,a0,-1580 # 80006088 <CONSOLE_STATUS+0x78>
    800036bc:	00000097          	auipc	ra,0x0
    800036c0:	2d0080e7          	jalr	720(ra) # 8000398c <_Z11printStringPKc>
    if (returnedObject) return returnedObject;
    800036c4:	fa0492e3          	bnez	s1,80003668 <_ZN16KObjectAllocator17allocateNewObjectEv+0x58>
    printString("\nHere\n");
    800036c8:	00003517          	auipc	a0,0x3
    800036cc:	ea850513          	addi	a0,a0,-344 # 80006570 <CONSOLE_STATUS+0x560>
    800036d0:	00000097          	auipc	ra,0x0
    800036d4:	2bc080e7          	jalr	700(ra) # 8000398c <_Z11printStringPKc>
    if (handleNotEnoughMemoryProblem()) {
    800036d8:	00090513          	mv	a0,s2
    800036dc:	00000097          	auipc	ra,0x0
    800036e0:	d7c080e7          	jalr	-644(ra) # 80003458 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv>
    800036e4:	f80502e3          	beqz	a0,80003668 <_ZN16KObjectAllocator17allocateNewObjectEv+0x58>
        returnedObject = allocateFreeObject();
    800036e8:	00090513          	mv	a0,s2
    800036ec:	00000097          	auipc	ra,0x0
    800036f0:	be4080e7          	jalr	-1052(ra) # 800032d0 <_ZN16KObjectAllocator18allocateFreeObjectEv>
    800036f4:	00050493          	mv	s1,a0
        if (returnedObject) return returnedObject;
    800036f8:	f71ff06f          	j	80003668 <_ZN16KObjectAllocator17allocateNewObjectEv+0x58>

00000000800036fc <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"

void Riscv::popSppSpie()
{
    800036fc:	ff010113          	addi	sp,sp,-16
    80003700:	00813423          	sd	s0,8(sp)
    80003704:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80003708:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    8000370c:	10200073          	sret
}
    80003710:	00813403          	ld	s0,8(sp)
    80003714:	01010113          	addi	sp,sp,16
    80003718:	00008067          	ret

000000008000371c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    8000371c:	fa010113          	addi	sp,sp,-96
    80003720:	04113c23          	sd	ra,88(sp)
    80003724:	04813823          	sd	s0,80(sp)
    80003728:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000372c:	142027f3          	csrr	a5,scause
    80003730:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80003734:	fc843703          	ld	a4,-56(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80003738:	ff870693          	addi	a3,a4,-8
    8000373c:	00100793          	li	a5,1
    80003740:	02d7fa63          	bgeu	a5,a3,80003774 <_ZN5Riscv20handleSupervisorTrapEv+0x58>
        TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80003744:	fff00793          	li	a5,-1
    80003748:	03f79793          	slli	a5,a5,0x3f
    8000374c:	00178793          	addi	a5,a5,1
    80003750:	06f70863          	beq	a4,a5,800037c0 <_ZN5Riscv20handleSupervisorTrapEv+0xa4>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80003754:	fff00793          	li	a5,-1
    80003758:	03f79793          	slli	a5,a5,0x3f
    8000375c:	00978793          	addi	a5,a5,9
    80003760:	0cf70c63          	beq	a4,a5,80003838 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
    }
    else
    {
        // unexpected trap cause
    }
    80003764:	05813083          	ld	ra,88(sp)
    80003768:	05013403          	ld	s0,80(sp)
    8000376c:	06010113          	addi	sp,sp,96
    80003770:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80003774:	141027f3          	csrr	a5,sepc
    80003778:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    8000377c:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80003780:	00478793          	addi	a5,a5,4
    80003784:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003788:	100027f3          	csrr	a5,sstatus
    8000378c:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80003790:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80003794:	faf43823          	sd	a5,-80(s0)
        TCB::timeSliceCounter = 0;
    80003798:	00004797          	auipc	a5,0x4
    8000379c:	a687b783          	ld	a5,-1432(a5) # 80007200 <_GLOBAL_OFFSET_TABLE_+0x28>
    800037a0:	0007b023          	sd	zero,0(a5)
        TCB::dispatch();
    800037a4:	ffffe097          	auipc	ra,0xffffe
    800037a8:	3c8080e7          	jalr	968(ra) # 80001b6c <_ZN3TCB8dispatchEv>
        w_sstatus(sstatus);
    800037ac:	fb043783          	ld	a5,-80(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800037b0:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800037b4:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800037b8:	14179073          	csrw	sepc,a5
}
    800037bc:	fa9ff06f          	j	80003764 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800037c0:	00200793          	li	a5,2
    800037c4:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    800037c8:	00004717          	auipc	a4,0x4
    800037cc:	a3873703          	ld	a4,-1480(a4) # 80007200 <_GLOBAL_OFFSET_TABLE_+0x28>
    800037d0:	00073783          	ld	a5,0(a4)
    800037d4:	00178793          	addi	a5,a5,1
    800037d8:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    800037dc:	00004717          	auipc	a4,0x4
    800037e0:	a4473703          	ld	a4,-1468(a4) # 80007220 <_GLOBAL_OFFSET_TABLE_+0x48>
    800037e4:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    800037e8:	02073703          	ld	a4,32(a4)
    800037ec:	f6e7ece3          	bltu	a5,a4,80003764 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800037f0:	141027f3          	csrr	a5,sepc
    800037f4:	fef43423          	sd	a5,-24(s0)
    return sepc;
    800037f8:	fe843783          	ld	a5,-24(s0)
            uint64 volatile sepc = r_sepc();
    800037fc:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003800:	100027f3          	csrr	a5,sstatus
    80003804:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    80003808:	fe043783          	ld	a5,-32(s0)
            uint64 volatile sstatus = r_sstatus();
    8000380c:	fcf43023          	sd	a5,-64(s0)
            TCB::timeSliceCounter = 0;
    80003810:	00004797          	auipc	a5,0x4
    80003814:	9f07b783          	ld	a5,-1552(a5) # 80007200 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003818:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    8000381c:	ffffe097          	auipc	ra,0xffffe
    80003820:	350080e7          	jalr	848(ra) # 80001b6c <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80003824:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80003828:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    8000382c:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80003830:	14179073          	csrw	sepc,a5
}
    80003834:	f31ff06f          	j	80003764 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
        console_handler();
    80003838:	00002097          	auipc	ra,0x2
    8000383c:	62c080e7          	jalr	1580(ra) # 80005e64 <console_handler>
    80003840:	f25ff06f          	j	80003764 <_ZN5Riscv20handleSupervisorTrapEv+0x48>

0000000080003844 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80003844:	ff010113          	addi	sp,sp,-16
    80003848:	00813423          	sd	s0,8(sp)
    8000384c:	01010413          	addi	s0,sp,16
    80003850:	00100793          	li	a5,1
    80003854:	00f50863          	beq	a0,a5,80003864 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80003858:	00813403          	ld	s0,8(sp)
    8000385c:	01010113          	addi	sp,sp,16
    80003860:	00008067          	ret
    80003864:	000107b7          	lui	a5,0x10
    80003868:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000386c:	fef596e3          	bne	a1,a5,80003858 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80003870:	00004797          	auipc	a5,0x4
    80003874:	a5078793          	addi	a5,a5,-1456 # 800072c0 <_ZN9Scheduler16readyThreadQueueE>
    80003878:	0007b023          	sd	zero,0(a5)
    8000387c:	0007b423          	sd	zero,8(a5)
    80003880:	fd9ff06f          	j	80003858 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080003884 <_ZN9Scheduler3getEv>:
{
    80003884:	fe010113          	addi	sp,sp,-32
    80003888:	00113c23          	sd	ra,24(sp)
    8000388c:	00813823          	sd	s0,16(sp)
    80003890:	00913423          	sd	s1,8(sp)
    80003894:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80003898:	00004517          	auipc	a0,0x4
    8000389c:	a2853503          	ld	a0,-1496(a0) # 800072c0 <_ZN9Scheduler16readyThreadQueueE>
    800038a0:	04050263          	beqz	a0,800038e4 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    800038a4:	00853783          	ld	a5,8(a0)
    800038a8:	00004717          	auipc	a4,0x4
    800038ac:	a0f73c23          	sd	a5,-1512(a4) # 800072c0 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800038b0:	02078463          	beqz	a5,800038d8 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    800038b4:	00053483          	ld	s1,0(a0)
        delete elem;
    800038b8:	00000097          	auipc	ra,0x0
    800038bc:	94c080e7          	jalr	-1716(ra) # 80003204 <_ZdlPv>
}
    800038c0:	00048513          	mv	a0,s1
    800038c4:	01813083          	ld	ra,24(sp)
    800038c8:	01013403          	ld	s0,16(sp)
    800038cc:	00813483          	ld	s1,8(sp)
    800038d0:	02010113          	addi	sp,sp,32
    800038d4:	00008067          	ret
        if (!head) { tail = 0; }
    800038d8:	00004797          	auipc	a5,0x4
    800038dc:	9e07b823          	sd	zero,-1552(a5) # 800072c8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800038e0:	fd5ff06f          	j	800038b4 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800038e4:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800038e8:	fd9ff06f          	j	800038c0 <_ZN9Scheduler3getEv+0x3c>

00000000800038ec <_ZN9Scheduler3putEP3TCB>:
{
    800038ec:	fe010113          	addi	sp,sp,-32
    800038f0:	00113c23          	sd	ra,24(sp)
    800038f4:	00813823          	sd	s0,16(sp)
    800038f8:	00913423          	sd	s1,8(sp)
    800038fc:	02010413          	addi	s0,sp,32
    80003900:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80003904:	01000513          	li	a0,16
    80003908:	00000097          	auipc	ra,0x0
    8000390c:	8ac080e7          	jalr	-1876(ra) # 800031b4 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80003910:	00953023          	sd	s1,0(a0)
    80003914:	00053423          	sd	zero,8(a0)
        if (tail)
    80003918:	00004797          	auipc	a5,0x4
    8000391c:	9b07b783          	ld	a5,-1616(a5) # 800072c8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003920:	02078263          	beqz	a5,80003944 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80003924:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80003928:	00004797          	auipc	a5,0x4
    8000392c:	9aa7b023          	sd	a0,-1632(a5) # 800072c8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003930:	01813083          	ld	ra,24(sp)
    80003934:	01013403          	ld	s0,16(sp)
    80003938:	00813483          	ld	s1,8(sp)
    8000393c:	02010113          	addi	sp,sp,32
    80003940:	00008067          	ret
            head = tail = elem;
    80003944:	00004797          	auipc	a5,0x4
    80003948:	97c78793          	addi	a5,a5,-1668 # 800072c0 <_ZN9Scheduler16readyThreadQueueE>
    8000394c:	00a7b423          	sd	a0,8(a5)
    80003950:	00a7b023          	sd	a0,0(a5)
    80003954:	fddff06f          	j	80003930 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080003958 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80003958:	ff010113          	addi	sp,sp,-16
    8000395c:	00113423          	sd	ra,8(sp)
    80003960:	00813023          	sd	s0,0(sp)
    80003964:	01010413          	addi	s0,sp,16
    80003968:	000105b7          	lui	a1,0x10
    8000396c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80003970:	00100513          	li	a0,1
    80003974:	00000097          	auipc	ra,0x0
    80003978:	ed0080e7          	jalr	-304(ra) # 80003844 <_Z41__static_initialization_and_destruction_0ii>
    8000397c:	00813083          	ld	ra,8(sp)
    80003980:	00013403          	ld	s0,0(sp)
    80003984:	01010113          	addi	sp,sp,16
    80003988:	00008067          	ret

000000008000398c <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    8000398c:	fd010113          	addi	sp,sp,-48
    80003990:	02113423          	sd	ra,40(sp)
    80003994:	02813023          	sd	s0,32(sp)
    80003998:	00913c23          	sd	s1,24(sp)
    8000399c:	01213823          	sd	s2,16(sp)
    800039a0:	03010413          	addi	s0,sp,48
    800039a4:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800039a8:	100027f3          	csrr	a5,sstatus
    800039ac:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800039b0:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800039b4:	00200793          	li	a5,2
    800039b8:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    while (*string != '\0') __putc(*string++);
    800039bc:	0004c503          	lbu	a0,0(s1)
    800039c0:	00050a63          	beqz	a0,800039d4 <_Z11printStringPKc+0x48>
    800039c4:	00148493          	addi	s1,s1,1
    800039c8:	00002097          	auipc	ra,0x2
    800039cc:	428080e7          	jalr	1064(ra) # 80005df0 <__putc>
    800039d0:	fedff06f          	j	800039bc <_Z11printStringPKc+0x30>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800039d4:	0009091b          	sext.w	s2,s2
    800039d8:	00297913          	andi	s2,s2,2
    800039dc:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800039e0:	10092073          	csrs	sstatus,s2
}
    800039e4:	02813083          	ld	ra,40(sp)
    800039e8:	02013403          	ld	s0,32(sp)
    800039ec:	01813483          	ld	s1,24(sp)
    800039f0:	01013903          	ld	s2,16(sp)
    800039f4:	03010113          	addi	sp,sp,48
    800039f8:	00008067          	ret

00000000800039fc <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    800039fc:	fc010113          	addi	sp,sp,-64
    80003a00:	02113c23          	sd	ra,56(sp)
    80003a04:	02813823          	sd	s0,48(sp)
    80003a08:	02913423          	sd	s1,40(sp)
    80003a0c:	03213023          	sd	s2,32(sp)
    80003a10:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003a14:	100027f3          	csrr	a5,sstatus
    80003a18:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80003a1c:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80003a20:	00200793          	li	a5,2
    80003a24:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    static char digits[] = "0123456789";
    char buf[16]; int i = 0; uint64 x = integer;
    int neg = (integer & ((uint64)1 << 63)) != 0;
    80003a28:	00050593          	mv	a1,a0

    if (neg) x = ~integer + 1;
    80003a2c:	06054463          	bltz	a0,80003a94 <_Z12printIntegerm+0x98>
{
    80003a30:	00000493          	li	s1,0

    do buf[i++] = digits[x % 10];
    80003a34:	00a00713          	li	a4,10
    80003a38:	02e57633          	remu	a2,a0,a4
    80003a3c:	00048693          	mv	a3,s1
    80003a40:	0014849b          	addiw	s1,s1,1
    80003a44:	00003797          	auipc	a5,0x3
    80003a48:	b3478793          	addi	a5,a5,-1228 # 80006578 <_ZZ12printIntegermE6digits>
    80003a4c:	00c787b3          	add	a5,a5,a2
    80003a50:	0007c603          	lbu	a2,0(a5)
    80003a54:	fe040793          	addi	a5,s0,-32
    80003a58:	00d787b3          	add	a5,a5,a3
    80003a5c:	fec78823          	sb	a2,-16(a5)
    while ((x /= 10) != 0);
    80003a60:	00050613          	mv	a2,a0
    80003a64:	02e55533          	divu	a0,a0,a4
    80003a68:	00900793          	li	a5,9
    80003a6c:	fcc7e4e3          	bltu	a5,a2,80003a34 <_Z12printIntegerm+0x38>

    if (neg) buf[i++] = '-';
    80003a70:	0205c663          	bltz	a1,80003a9c <_Z12printIntegerm+0xa0>
    while (--i >= 0) { __putc(buf[i]); }
    80003a74:	fff4849b          	addiw	s1,s1,-1
    80003a78:	0204ce63          	bltz	s1,80003ab4 <_Z12printIntegerm+0xb8>
    80003a7c:	fe040793          	addi	a5,s0,-32
    80003a80:	009787b3          	add	a5,a5,s1
    80003a84:	ff07c503          	lbu	a0,-16(a5)
    80003a88:	00002097          	auipc	ra,0x2
    80003a8c:	368080e7          	jalr	872(ra) # 80005df0 <__putc>
    80003a90:	fe5ff06f          	j	80003a74 <_Z12printIntegerm+0x78>
    if (neg) x = ~integer + 1;
    80003a94:	40a00533          	neg	a0,a0
    80003a98:	f99ff06f          	j	80003a30 <_Z12printIntegerm+0x34>
    if (neg) buf[i++] = '-';
    80003a9c:	fe040793          	addi	a5,s0,-32
    80003aa0:	009784b3          	add	s1,a5,s1
    80003aa4:	02d00793          	li	a5,45
    80003aa8:	fef48823          	sb	a5,-16(s1)
    80003aac:	0026849b          	addiw	s1,a3,2
    80003ab0:	fc5ff06f          	j	80003a74 <_Z12printIntegerm+0x78>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80003ab4:	0009091b          	sext.w	s2,s2
    80003ab8:	00297913          	andi	s2,s2,2
    80003abc:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80003ac0:	10092073          	csrs	sstatus,s2
}
    80003ac4:	03813083          	ld	ra,56(sp)
    80003ac8:	03013403          	ld	s0,48(sp)
    80003acc:	02813483          	ld	s1,40(sp)
    80003ad0:	02013903          	ld	s2,32(sp)
    80003ad4:	04010113          	addi	sp,sp,64
    80003ad8:	00008067          	ret

0000000080003adc <_Z12printIntegerh>:


void printInteger(uint8 integer)
{
    80003adc:	ff010113          	addi	sp,sp,-16
    80003ae0:	00113423          	sd	ra,8(sp)
    80003ae4:	00813023          	sd	s0,0(sp)
    80003ae8:	01010413          	addi	s0,sp,16
    printInteger((uint64)integer);
    80003aec:	00000097          	auipc	ra,0x0
    80003af0:	f10080e7          	jalr	-240(ra) # 800039fc <_Z12printIntegerm>
}
    80003af4:	00813083          	ld	ra,8(sp)
    80003af8:	00013403          	ld	s0,0(sp)
    80003afc:	01010113          	addi	sp,sp,16
    80003b00:	00008067          	ret

0000000080003b04 <start>:
    80003b04:	ff010113          	addi	sp,sp,-16
    80003b08:	00813423          	sd	s0,8(sp)
    80003b0c:	01010413          	addi	s0,sp,16
    80003b10:	300027f3          	csrr	a5,mstatus
    80003b14:	ffffe737          	lui	a4,0xffffe
    80003b18:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff62bf>
    80003b1c:	00e7f7b3          	and	a5,a5,a4
    80003b20:	00001737          	lui	a4,0x1
    80003b24:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003b28:	00e7e7b3          	or	a5,a5,a4
    80003b2c:	30079073          	csrw	mstatus,a5
    80003b30:	00000797          	auipc	a5,0x0
    80003b34:	16078793          	addi	a5,a5,352 # 80003c90 <system_main>
    80003b38:	34179073          	csrw	mepc,a5
    80003b3c:	00000793          	li	a5,0
    80003b40:	18079073          	csrw	satp,a5
    80003b44:	000107b7          	lui	a5,0x10
    80003b48:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003b4c:	30279073          	csrw	medeleg,a5
    80003b50:	30379073          	csrw	mideleg,a5
    80003b54:	104027f3          	csrr	a5,sie
    80003b58:	2227e793          	ori	a5,a5,546
    80003b5c:	10479073          	csrw	sie,a5
    80003b60:	fff00793          	li	a5,-1
    80003b64:	00a7d793          	srli	a5,a5,0xa
    80003b68:	3b079073          	csrw	pmpaddr0,a5
    80003b6c:	00f00793          	li	a5,15
    80003b70:	3a079073          	csrw	pmpcfg0,a5
    80003b74:	f14027f3          	csrr	a5,mhartid
    80003b78:	0200c737          	lui	a4,0x200c
    80003b7c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003b80:	0007869b          	sext.w	a3,a5
    80003b84:	00269713          	slli	a4,a3,0x2
    80003b88:	000f4637          	lui	a2,0xf4
    80003b8c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003b90:	00d70733          	add	a4,a4,a3
    80003b94:	0037979b          	slliw	a5,a5,0x3
    80003b98:	020046b7          	lui	a3,0x2004
    80003b9c:	00d787b3          	add	a5,a5,a3
    80003ba0:	00c585b3          	add	a1,a1,a2
    80003ba4:	00371693          	slli	a3,a4,0x3
    80003ba8:	00003717          	auipc	a4,0x3
    80003bac:	72870713          	addi	a4,a4,1832 # 800072d0 <timer_scratch>
    80003bb0:	00b7b023          	sd	a1,0(a5)
    80003bb4:	00d70733          	add	a4,a4,a3
    80003bb8:	00f73c23          	sd	a5,24(a4)
    80003bbc:	02c73023          	sd	a2,32(a4)
    80003bc0:	34071073          	csrw	mscratch,a4
    80003bc4:	00000797          	auipc	a5,0x0
    80003bc8:	6ec78793          	addi	a5,a5,1772 # 800042b0 <timervec>
    80003bcc:	30579073          	csrw	mtvec,a5
    80003bd0:	300027f3          	csrr	a5,mstatus
    80003bd4:	0087e793          	ori	a5,a5,8
    80003bd8:	30079073          	csrw	mstatus,a5
    80003bdc:	304027f3          	csrr	a5,mie
    80003be0:	0807e793          	ori	a5,a5,128
    80003be4:	30479073          	csrw	mie,a5
    80003be8:	f14027f3          	csrr	a5,mhartid
    80003bec:	0007879b          	sext.w	a5,a5
    80003bf0:	00078213          	mv	tp,a5
    80003bf4:	30200073          	mret
    80003bf8:	00813403          	ld	s0,8(sp)
    80003bfc:	01010113          	addi	sp,sp,16
    80003c00:	00008067          	ret

0000000080003c04 <timerinit>:
    80003c04:	ff010113          	addi	sp,sp,-16
    80003c08:	00813423          	sd	s0,8(sp)
    80003c0c:	01010413          	addi	s0,sp,16
    80003c10:	f14027f3          	csrr	a5,mhartid
    80003c14:	0200c737          	lui	a4,0x200c
    80003c18:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003c1c:	0007869b          	sext.w	a3,a5
    80003c20:	00269713          	slli	a4,a3,0x2
    80003c24:	000f4637          	lui	a2,0xf4
    80003c28:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003c2c:	00d70733          	add	a4,a4,a3
    80003c30:	0037979b          	slliw	a5,a5,0x3
    80003c34:	020046b7          	lui	a3,0x2004
    80003c38:	00d787b3          	add	a5,a5,a3
    80003c3c:	00c585b3          	add	a1,a1,a2
    80003c40:	00371693          	slli	a3,a4,0x3
    80003c44:	00003717          	auipc	a4,0x3
    80003c48:	68c70713          	addi	a4,a4,1676 # 800072d0 <timer_scratch>
    80003c4c:	00b7b023          	sd	a1,0(a5)
    80003c50:	00d70733          	add	a4,a4,a3
    80003c54:	00f73c23          	sd	a5,24(a4)
    80003c58:	02c73023          	sd	a2,32(a4)
    80003c5c:	34071073          	csrw	mscratch,a4
    80003c60:	00000797          	auipc	a5,0x0
    80003c64:	65078793          	addi	a5,a5,1616 # 800042b0 <timervec>
    80003c68:	30579073          	csrw	mtvec,a5
    80003c6c:	300027f3          	csrr	a5,mstatus
    80003c70:	0087e793          	ori	a5,a5,8
    80003c74:	30079073          	csrw	mstatus,a5
    80003c78:	304027f3          	csrr	a5,mie
    80003c7c:	0807e793          	ori	a5,a5,128
    80003c80:	30479073          	csrw	mie,a5
    80003c84:	00813403          	ld	s0,8(sp)
    80003c88:	01010113          	addi	sp,sp,16
    80003c8c:	00008067          	ret

0000000080003c90 <system_main>:
    80003c90:	fe010113          	addi	sp,sp,-32
    80003c94:	00813823          	sd	s0,16(sp)
    80003c98:	00913423          	sd	s1,8(sp)
    80003c9c:	00113c23          	sd	ra,24(sp)
    80003ca0:	02010413          	addi	s0,sp,32
    80003ca4:	00000097          	auipc	ra,0x0
    80003ca8:	0c4080e7          	jalr	196(ra) # 80003d68 <cpuid>
    80003cac:	00003497          	auipc	s1,0x3
    80003cb0:	5b448493          	addi	s1,s1,1460 # 80007260 <started>
    80003cb4:	02050263          	beqz	a0,80003cd8 <system_main+0x48>
    80003cb8:	0004a783          	lw	a5,0(s1)
    80003cbc:	0007879b          	sext.w	a5,a5
    80003cc0:	fe078ce3          	beqz	a5,80003cb8 <system_main+0x28>
    80003cc4:	0ff0000f          	fence
    80003cc8:	00003517          	auipc	a0,0x3
    80003ccc:	8f050513          	addi	a0,a0,-1808 # 800065b8 <_ZZ12printIntegermE6digits+0x40>
    80003cd0:	00001097          	auipc	ra,0x1
    80003cd4:	a7c080e7          	jalr	-1412(ra) # 8000474c <panic>
    80003cd8:	00001097          	auipc	ra,0x1
    80003cdc:	9d0080e7          	jalr	-1584(ra) # 800046a8 <consoleinit>
    80003ce0:	00001097          	auipc	ra,0x1
    80003ce4:	15c080e7          	jalr	348(ra) # 80004e3c <printfinit>
    80003ce8:	00002517          	auipc	a0,0x2
    80003cec:	3a050513          	addi	a0,a0,928 # 80006088 <CONSOLE_STATUS+0x78>
    80003cf0:	00001097          	auipc	ra,0x1
    80003cf4:	ab8080e7          	jalr	-1352(ra) # 800047a8 <__printf>
    80003cf8:	00003517          	auipc	a0,0x3
    80003cfc:	89050513          	addi	a0,a0,-1904 # 80006588 <_ZZ12printIntegermE6digits+0x10>
    80003d00:	00001097          	auipc	ra,0x1
    80003d04:	aa8080e7          	jalr	-1368(ra) # 800047a8 <__printf>
    80003d08:	00002517          	auipc	a0,0x2
    80003d0c:	38050513          	addi	a0,a0,896 # 80006088 <CONSOLE_STATUS+0x78>
    80003d10:	00001097          	auipc	ra,0x1
    80003d14:	a98080e7          	jalr	-1384(ra) # 800047a8 <__printf>
    80003d18:	00001097          	auipc	ra,0x1
    80003d1c:	4b0080e7          	jalr	1200(ra) # 800051c8 <kinit>
    80003d20:	00000097          	auipc	ra,0x0
    80003d24:	148080e7          	jalr	328(ra) # 80003e68 <trapinit>
    80003d28:	00000097          	auipc	ra,0x0
    80003d2c:	16c080e7          	jalr	364(ra) # 80003e94 <trapinithart>
    80003d30:	00000097          	auipc	ra,0x0
    80003d34:	5c0080e7          	jalr	1472(ra) # 800042f0 <plicinit>
    80003d38:	00000097          	auipc	ra,0x0
    80003d3c:	5e0080e7          	jalr	1504(ra) # 80004318 <plicinithart>
    80003d40:	00000097          	auipc	ra,0x0
    80003d44:	078080e7          	jalr	120(ra) # 80003db8 <userinit>
    80003d48:	0ff0000f          	fence
    80003d4c:	00100793          	li	a5,1
    80003d50:	00003517          	auipc	a0,0x3
    80003d54:	85050513          	addi	a0,a0,-1968 # 800065a0 <_ZZ12printIntegermE6digits+0x28>
    80003d58:	00f4a023          	sw	a5,0(s1)
    80003d5c:	00001097          	auipc	ra,0x1
    80003d60:	a4c080e7          	jalr	-1460(ra) # 800047a8 <__printf>
    80003d64:	0000006f          	j	80003d64 <system_main+0xd4>

0000000080003d68 <cpuid>:
    80003d68:	ff010113          	addi	sp,sp,-16
    80003d6c:	00813423          	sd	s0,8(sp)
    80003d70:	01010413          	addi	s0,sp,16
    80003d74:	00020513          	mv	a0,tp
    80003d78:	00813403          	ld	s0,8(sp)
    80003d7c:	0005051b          	sext.w	a0,a0
    80003d80:	01010113          	addi	sp,sp,16
    80003d84:	00008067          	ret

0000000080003d88 <mycpu>:
    80003d88:	ff010113          	addi	sp,sp,-16
    80003d8c:	00813423          	sd	s0,8(sp)
    80003d90:	01010413          	addi	s0,sp,16
    80003d94:	00020793          	mv	a5,tp
    80003d98:	00813403          	ld	s0,8(sp)
    80003d9c:	0007879b          	sext.w	a5,a5
    80003da0:	00779793          	slli	a5,a5,0x7
    80003da4:	00004517          	auipc	a0,0x4
    80003da8:	55c50513          	addi	a0,a0,1372 # 80008300 <cpus>
    80003dac:	00f50533          	add	a0,a0,a5
    80003db0:	01010113          	addi	sp,sp,16
    80003db4:	00008067          	ret

0000000080003db8 <userinit>:
    80003db8:	ff010113          	addi	sp,sp,-16
    80003dbc:	00813423          	sd	s0,8(sp)
    80003dc0:	01010413          	addi	s0,sp,16
    80003dc4:	00813403          	ld	s0,8(sp)
    80003dc8:	01010113          	addi	sp,sp,16
    80003dcc:	ffffe317          	auipc	t1,0xffffe
    80003dd0:	8c030067          	jr	-1856(t1) # 8000168c <main>

0000000080003dd4 <either_copyout>:
    80003dd4:	ff010113          	addi	sp,sp,-16
    80003dd8:	00813023          	sd	s0,0(sp)
    80003ddc:	00113423          	sd	ra,8(sp)
    80003de0:	01010413          	addi	s0,sp,16
    80003de4:	02051663          	bnez	a0,80003e10 <either_copyout+0x3c>
    80003de8:	00058513          	mv	a0,a1
    80003dec:	00060593          	mv	a1,a2
    80003df0:	0006861b          	sext.w	a2,a3
    80003df4:	00002097          	auipc	ra,0x2
    80003df8:	c60080e7          	jalr	-928(ra) # 80005a54 <__memmove>
    80003dfc:	00813083          	ld	ra,8(sp)
    80003e00:	00013403          	ld	s0,0(sp)
    80003e04:	00000513          	li	a0,0
    80003e08:	01010113          	addi	sp,sp,16
    80003e0c:	00008067          	ret
    80003e10:	00002517          	auipc	a0,0x2
    80003e14:	7d050513          	addi	a0,a0,2000 # 800065e0 <_ZZ12printIntegermE6digits+0x68>
    80003e18:	00001097          	auipc	ra,0x1
    80003e1c:	934080e7          	jalr	-1740(ra) # 8000474c <panic>

0000000080003e20 <either_copyin>:
    80003e20:	ff010113          	addi	sp,sp,-16
    80003e24:	00813023          	sd	s0,0(sp)
    80003e28:	00113423          	sd	ra,8(sp)
    80003e2c:	01010413          	addi	s0,sp,16
    80003e30:	02059463          	bnez	a1,80003e58 <either_copyin+0x38>
    80003e34:	00060593          	mv	a1,a2
    80003e38:	0006861b          	sext.w	a2,a3
    80003e3c:	00002097          	auipc	ra,0x2
    80003e40:	c18080e7          	jalr	-1000(ra) # 80005a54 <__memmove>
    80003e44:	00813083          	ld	ra,8(sp)
    80003e48:	00013403          	ld	s0,0(sp)
    80003e4c:	00000513          	li	a0,0
    80003e50:	01010113          	addi	sp,sp,16
    80003e54:	00008067          	ret
    80003e58:	00002517          	auipc	a0,0x2
    80003e5c:	7b050513          	addi	a0,a0,1968 # 80006608 <_ZZ12printIntegermE6digits+0x90>
    80003e60:	00001097          	auipc	ra,0x1
    80003e64:	8ec080e7          	jalr	-1812(ra) # 8000474c <panic>

0000000080003e68 <trapinit>:
    80003e68:	ff010113          	addi	sp,sp,-16
    80003e6c:	00813423          	sd	s0,8(sp)
    80003e70:	01010413          	addi	s0,sp,16
    80003e74:	00813403          	ld	s0,8(sp)
    80003e78:	00002597          	auipc	a1,0x2
    80003e7c:	7b858593          	addi	a1,a1,1976 # 80006630 <_ZZ12printIntegermE6digits+0xb8>
    80003e80:	00004517          	auipc	a0,0x4
    80003e84:	50050513          	addi	a0,a0,1280 # 80008380 <tickslock>
    80003e88:	01010113          	addi	sp,sp,16
    80003e8c:	00001317          	auipc	t1,0x1
    80003e90:	5cc30067          	jr	1484(t1) # 80005458 <initlock>

0000000080003e94 <trapinithart>:
    80003e94:	ff010113          	addi	sp,sp,-16
    80003e98:	00813423          	sd	s0,8(sp)
    80003e9c:	01010413          	addi	s0,sp,16
    80003ea0:	00000797          	auipc	a5,0x0
    80003ea4:	30078793          	addi	a5,a5,768 # 800041a0 <kernelvec>
    80003ea8:	10579073          	csrw	stvec,a5
    80003eac:	00813403          	ld	s0,8(sp)
    80003eb0:	01010113          	addi	sp,sp,16
    80003eb4:	00008067          	ret

0000000080003eb8 <usertrap>:
    80003eb8:	ff010113          	addi	sp,sp,-16
    80003ebc:	00813423          	sd	s0,8(sp)
    80003ec0:	01010413          	addi	s0,sp,16
    80003ec4:	00813403          	ld	s0,8(sp)
    80003ec8:	01010113          	addi	sp,sp,16
    80003ecc:	00008067          	ret

0000000080003ed0 <usertrapret>:
    80003ed0:	ff010113          	addi	sp,sp,-16
    80003ed4:	00813423          	sd	s0,8(sp)
    80003ed8:	01010413          	addi	s0,sp,16
    80003edc:	00813403          	ld	s0,8(sp)
    80003ee0:	01010113          	addi	sp,sp,16
    80003ee4:	00008067          	ret

0000000080003ee8 <kerneltrap>:
    80003ee8:	fe010113          	addi	sp,sp,-32
    80003eec:	00813823          	sd	s0,16(sp)
    80003ef0:	00113c23          	sd	ra,24(sp)
    80003ef4:	00913423          	sd	s1,8(sp)
    80003ef8:	02010413          	addi	s0,sp,32
    80003efc:	142025f3          	csrr	a1,scause
    80003f00:	100027f3          	csrr	a5,sstatus
    80003f04:	0027f793          	andi	a5,a5,2
    80003f08:	10079c63          	bnez	a5,80004020 <kerneltrap+0x138>
    80003f0c:	142027f3          	csrr	a5,scause
    80003f10:	0207ce63          	bltz	a5,80003f4c <kerneltrap+0x64>
    80003f14:	00002517          	auipc	a0,0x2
    80003f18:	76450513          	addi	a0,a0,1892 # 80006678 <_ZZ12printIntegermE6digits+0x100>
    80003f1c:	00001097          	auipc	ra,0x1
    80003f20:	88c080e7          	jalr	-1908(ra) # 800047a8 <__printf>
    80003f24:	141025f3          	csrr	a1,sepc
    80003f28:	14302673          	csrr	a2,stval
    80003f2c:	00002517          	auipc	a0,0x2
    80003f30:	75c50513          	addi	a0,a0,1884 # 80006688 <_ZZ12printIntegermE6digits+0x110>
    80003f34:	00001097          	auipc	ra,0x1
    80003f38:	874080e7          	jalr	-1932(ra) # 800047a8 <__printf>
    80003f3c:	00002517          	auipc	a0,0x2
    80003f40:	76450513          	addi	a0,a0,1892 # 800066a0 <_ZZ12printIntegermE6digits+0x128>
    80003f44:	00001097          	auipc	ra,0x1
    80003f48:	808080e7          	jalr	-2040(ra) # 8000474c <panic>
    80003f4c:	0ff7f713          	andi	a4,a5,255
    80003f50:	00900693          	li	a3,9
    80003f54:	04d70063          	beq	a4,a3,80003f94 <kerneltrap+0xac>
    80003f58:	fff00713          	li	a4,-1
    80003f5c:	03f71713          	slli	a4,a4,0x3f
    80003f60:	00170713          	addi	a4,a4,1
    80003f64:	fae798e3          	bne	a5,a4,80003f14 <kerneltrap+0x2c>
    80003f68:	00000097          	auipc	ra,0x0
    80003f6c:	e00080e7          	jalr	-512(ra) # 80003d68 <cpuid>
    80003f70:	06050663          	beqz	a0,80003fdc <kerneltrap+0xf4>
    80003f74:	144027f3          	csrr	a5,sip
    80003f78:	ffd7f793          	andi	a5,a5,-3
    80003f7c:	14479073          	csrw	sip,a5
    80003f80:	01813083          	ld	ra,24(sp)
    80003f84:	01013403          	ld	s0,16(sp)
    80003f88:	00813483          	ld	s1,8(sp)
    80003f8c:	02010113          	addi	sp,sp,32
    80003f90:	00008067          	ret
    80003f94:	00000097          	auipc	ra,0x0
    80003f98:	3d0080e7          	jalr	976(ra) # 80004364 <plic_claim>
    80003f9c:	00a00793          	li	a5,10
    80003fa0:	00050493          	mv	s1,a0
    80003fa4:	06f50863          	beq	a0,a5,80004014 <kerneltrap+0x12c>
    80003fa8:	fc050ce3          	beqz	a0,80003f80 <kerneltrap+0x98>
    80003fac:	00050593          	mv	a1,a0
    80003fb0:	00002517          	auipc	a0,0x2
    80003fb4:	6a850513          	addi	a0,a0,1704 # 80006658 <_ZZ12printIntegermE6digits+0xe0>
    80003fb8:	00000097          	auipc	ra,0x0
    80003fbc:	7f0080e7          	jalr	2032(ra) # 800047a8 <__printf>
    80003fc0:	01013403          	ld	s0,16(sp)
    80003fc4:	01813083          	ld	ra,24(sp)
    80003fc8:	00048513          	mv	a0,s1
    80003fcc:	00813483          	ld	s1,8(sp)
    80003fd0:	02010113          	addi	sp,sp,32
    80003fd4:	00000317          	auipc	t1,0x0
    80003fd8:	3c830067          	jr	968(t1) # 8000439c <plic_complete>
    80003fdc:	00004517          	auipc	a0,0x4
    80003fe0:	3a450513          	addi	a0,a0,932 # 80008380 <tickslock>
    80003fe4:	00001097          	auipc	ra,0x1
    80003fe8:	498080e7          	jalr	1176(ra) # 8000547c <acquire>
    80003fec:	00003717          	auipc	a4,0x3
    80003ff0:	27870713          	addi	a4,a4,632 # 80007264 <ticks>
    80003ff4:	00072783          	lw	a5,0(a4)
    80003ff8:	00004517          	auipc	a0,0x4
    80003ffc:	38850513          	addi	a0,a0,904 # 80008380 <tickslock>
    80004000:	0017879b          	addiw	a5,a5,1
    80004004:	00f72023          	sw	a5,0(a4)
    80004008:	00001097          	auipc	ra,0x1
    8000400c:	540080e7          	jalr	1344(ra) # 80005548 <release>
    80004010:	f65ff06f          	j	80003f74 <kerneltrap+0x8c>
    80004014:	00001097          	auipc	ra,0x1
    80004018:	09c080e7          	jalr	156(ra) # 800050b0 <uartintr>
    8000401c:	fa5ff06f          	j	80003fc0 <kerneltrap+0xd8>
    80004020:	00002517          	auipc	a0,0x2
    80004024:	61850513          	addi	a0,a0,1560 # 80006638 <_ZZ12printIntegermE6digits+0xc0>
    80004028:	00000097          	auipc	ra,0x0
    8000402c:	724080e7          	jalr	1828(ra) # 8000474c <panic>

0000000080004030 <clockintr>:
    80004030:	fe010113          	addi	sp,sp,-32
    80004034:	00813823          	sd	s0,16(sp)
    80004038:	00913423          	sd	s1,8(sp)
    8000403c:	00113c23          	sd	ra,24(sp)
    80004040:	02010413          	addi	s0,sp,32
    80004044:	00004497          	auipc	s1,0x4
    80004048:	33c48493          	addi	s1,s1,828 # 80008380 <tickslock>
    8000404c:	00048513          	mv	a0,s1
    80004050:	00001097          	auipc	ra,0x1
    80004054:	42c080e7          	jalr	1068(ra) # 8000547c <acquire>
    80004058:	00003717          	auipc	a4,0x3
    8000405c:	20c70713          	addi	a4,a4,524 # 80007264 <ticks>
    80004060:	00072783          	lw	a5,0(a4)
    80004064:	01013403          	ld	s0,16(sp)
    80004068:	01813083          	ld	ra,24(sp)
    8000406c:	00048513          	mv	a0,s1
    80004070:	0017879b          	addiw	a5,a5,1
    80004074:	00813483          	ld	s1,8(sp)
    80004078:	00f72023          	sw	a5,0(a4)
    8000407c:	02010113          	addi	sp,sp,32
    80004080:	00001317          	auipc	t1,0x1
    80004084:	4c830067          	jr	1224(t1) # 80005548 <release>

0000000080004088 <devintr>:
    80004088:	142027f3          	csrr	a5,scause
    8000408c:	00000513          	li	a0,0
    80004090:	0007c463          	bltz	a5,80004098 <devintr+0x10>
    80004094:	00008067          	ret
    80004098:	fe010113          	addi	sp,sp,-32
    8000409c:	00813823          	sd	s0,16(sp)
    800040a0:	00113c23          	sd	ra,24(sp)
    800040a4:	00913423          	sd	s1,8(sp)
    800040a8:	02010413          	addi	s0,sp,32
    800040ac:	0ff7f713          	andi	a4,a5,255
    800040b0:	00900693          	li	a3,9
    800040b4:	04d70c63          	beq	a4,a3,8000410c <devintr+0x84>
    800040b8:	fff00713          	li	a4,-1
    800040bc:	03f71713          	slli	a4,a4,0x3f
    800040c0:	00170713          	addi	a4,a4,1
    800040c4:	00e78c63          	beq	a5,a4,800040dc <devintr+0x54>
    800040c8:	01813083          	ld	ra,24(sp)
    800040cc:	01013403          	ld	s0,16(sp)
    800040d0:	00813483          	ld	s1,8(sp)
    800040d4:	02010113          	addi	sp,sp,32
    800040d8:	00008067          	ret
    800040dc:	00000097          	auipc	ra,0x0
    800040e0:	c8c080e7          	jalr	-884(ra) # 80003d68 <cpuid>
    800040e4:	06050663          	beqz	a0,80004150 <devintr+0xc8>
    800040e8:	144027f3          	csrr	a5,sip
    800040ec:	ffd7f793          	andi	a5,a5,-3
    800040f0:	14479073          	csrw	sip,a5
    800040f4:	01813083          	ld	ra,24(sp)
    800040f8:	01013403          	ld	s0,16(sp)
    800040fc:	00813483          	ld	s1,8(sp)
    80004100:	00200513          	li	a0,2
    80004104:	02010113          	addi	sp,sp,32
    80004108:	00008067          	ret
    8000410c:	00000097          	auipc	ra,0x0
    80004110:	258080e7          	jalr	600(ra) # 80004364 <plic_claim>
    80004114:	00a00793          	li	a5,10
    80004118:	00050493          	mv	s1,a0
    8000411c:	06f50663          	beq	a0,a5,80004188 <devintr+0x100>
    80004120:	00100513          	li	a0,1
    80004124:	fa0482e3          	beqz	s1,800040c8 <devintr+0x40>
    80004128:	00048593          	mv	a1,s1
    8000412c:	00002517          	auipc	a0,0x2
    80004130:	52c50513          	addi	a0,a0,1324 # 80006658 <_ZZ12printIntegermE6digits+0xe0>
    80004134:	00000097          	auipc	ra,0x0
    80004138:	674080e7          	jalr	1652(ra) # 800047a8 <__printf>
    8000413c:	00048513          	mv	a0,s1
    80004140:	00000097          	auipc	ra,0x0
    80004144:	25c080e7          	jalr	604(ra) # 8000439c <plic_complete>
    80004148:	00100513          	li	a0,1
    8000414c:	f7dff06f          	j	800040c8 <devintr+0x40>
    80004150:	00004517          	auipc	a0,0x4
    80004154:	23050513          	addi	a0,a0,560 # 80008380 <tickslock>
    80004158:	00001097          	auipc	ra,0x1
    8000415c:	324080e7          	jalr	804(ra) # 8000547c <acquire>
    80004160:	00003717          	auipc	a4,0x3
    80004164:	10470713          	addi	a4,a4,260 # 80007264 <ticks>
    80004168:	00072783          	lw	a5,0(a4)
    8000416c:	00004517          	auipc	a0,0x4
    80004170:	21450513          	addi	a0,a0,532 # 80008380 <tickslock>
    80004174:	0017879b          	addiw	a5,a5,1
    80004178:	00f72023          	sw	a5,0(a4)
    8000417c:	00001097          	auipc	ra,0x1
    80004180:	3cc080e7          	jalr	972(ra) # 80005548 <release>
    80004184:	f65ff06f          	j	800040e8 <devintr+0x60>
    80004188:	00001097          	auipc	ra,0x1
    8000418c:	f28080e7          	jalr	-216(ra) # 800050b0 <uartintr>
    80004190:	fadff06f          	j	8000413c <devintr+0xb4>
	...

00000000800041a0 <kernelvec>:
    800041a0:	f0010113          	addi	sp,sp,-256
    800041a4:	00113023          	sd	ra,0(sp)
    800041a8:	00213423          	sd	sp,8(sp)
    800041ac:	00313823          	sd	gp,16(sp)
    800041b0:	00413c23          	sd	tp,24(sp)
    800041b4:	02513023          	sd	t0,32(sp)
    800041b8:	02613423          	sd	t1,40(sp)
    800041bc:	02713823          	sd	t2,48(sp)
    800041c0:	02813c23          	sd	s0,56(sp)
    800041c4:	04913023          	sd	s1,64(sp)
    800041c8:	04a13423          	sd	a0,72(sp)
    800041cc:	04b13823          	sd	a1,80(sp)
    800041d0:	04c13c23          	sd	a2,88(sp)
    800041d4:	06d13023          	sd	a3,96(sp)
    800041d8:	06e13423          	sd	a4,104(sp)
    800041dc:	06f13823          	sd	a5,112(sp)
    800041e0:	07013c23          	sd	a6,120(sp)
    800041e4:	09113023          	sd	a7,128(sp)
    800041e8:	09213423          	sd	s2,136(sp)
    800041ec:	09313823          	sd	s3,144(sp)
    800041f0:	09413c23          	sd	s4,152(sp)
    800041f4:	0b513023          	sd	s5,160(sp)
    800041f8:	0b613423          	sd	s6,168(sp)
    800041fc:	0b713823          	sd	s7,176(sp)
    80004200:	0b813c23          	sd	s8,184(sp)
    80004204:	0d913023          	sd	s9,192(sp)
    80004208:	0da13423          	sd	s10,200(sp)
    8000420c:	0db13823          	sd	s11,208(sp)
    80004210:	0dc13c23          	sd	t3,216(sp)
    80004214:	0fd13023          	sd	t4,224(sp)
    80004218:	0fe13423          	sd	t5,232(sp)
    8000421c:	0ff13823          	sd	t6,240(sp)
    80004220:	cc9ff0ef          	jal	ra,80003ee8 <kerneltrap>
    80004224:	00013083          	ld	ra,0(sp)
    80004228:	00813103          	ld	sp,8(sp)
    8000422c:	01013183          	ld	gp,16(sp)
    80004230:	02013283          	ld	t0,32(sp)
    80004234:	02813303          	ld	t1,40(sp)
    80004238:	03013383          	ld	t2,48(sp)
    8000423c:	03813403          	ld	s0,56(sp)
    80004240:	04013483          	ld	s1,64(sp)
    80004244:	04813503          	ld	a0,72(sp)
    80004248:	05013583          	ld	a1,80(sp)
    8000424c:	05813603          	ld	a2,88(sp)
    80004250:	06013683          	ld	a3,96(sp)
    80004254:	06813703          	ld	a4,104(sp)
    80004258:	07013783          	ld	a5,112(sp)
    8000425c:	07813803          	ld	a6,120(sp)
    80004260:	08013883          	ld	a7,128(sp)
    80004264:	08813903          	ld	s2,136(sp)
    80004268:	09013983          	ld	s3,144(sp)
    8000426c:	09813a03          	ld	s4,152(sp)
    80004270:	0a013a83          	ld	s5,160(sp)
    80004274:	0a813b03          	ld	s6,168(sp)
    80004278:	0b013b83          	ld	s7,176(sp)
    8000427c:	0b813c03          	ld	s8,184(sp)
    80004280:	0c013c83          	ld	s9,192(sp)
    80004284:	0c813d03          	ld	s10,200(sp)
    80004288:	0d013d83          	ld	s11,208(sp)
    8000428c:	0d813e03          	ld	t3,216(sp)
    80004290:	0e013e83          	ld	t4,224(sp)
    80004294:	0e813f03          	ld	t5,232(sp)
    80004298:	0f013f83          	ld	t6,240(sp)
    8000429c:	10010113          	addi	sp,sp,256
    800042a0:	10200073          	sret
    800042a4:	00000013          	nop
    800042a8:	00000013          	nop
    800042ac:	00000013          	nop

00000000800042b0 <timervec>:
    800042b0:	34051573          	csrrw	a0,mscratch,a0
    800042b4:	00b53023          	sd	a1,0(a0)
    800042b8:	00c53423          	sd	a2,8(a0)
    800042bc:	00d53823          	sd	a3,16(a0)
    800042c0:	01853583          	ld	a1,24(a0)
    800042c4:	02053603          	ld	a2,32(a0)
    800042c8:	0005b683          	ld	a3,0(a1)
    800042cc:	00c686b3          	add	a3,a3,a2
    800042d0:	00d5b023          	sd	a3,0(a1)
    800042d4:	00200593          	li	a1,2
    800042d8:	14459073          	csrw	sip,a1
    800042dc:	01053683          	ld	a3,16(a0)
    800042e0:	00853603          	ld	a2,8(a0)
    800042e4:	00053583          	ld	a1,0(a0)
    800042e8:	34051573          	csrrw	a0,mscratch,a0
    800042ec:	30200073          	mret

00000000800042f0 <plicinit>:
    800042f0:	ff010113          	addi	sp,sp,-16
    800042f4:	00813423          	sd	s0,8(sp)
    800042f8:	01010413          	addi	s0,sp,16
    800042fc:	00813403          	ld	s0,8(sp)
    80004300:	0c0007b7          	lui	a5,0xc000
    80004304:	00100713          	li	a4,1
    80004308:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000430c:	00e7a223          	sw	a4,4(a5)
    80004310:	01010113          	addi	sp,sp,16
    80004314:	00008067          	ret

0000000080004318 <plicinithart>:
    80004318:	ff010113          	addi	sp,sp,-16
    8000431c:	00813023          	sd	s0,0(sp)
    80004320:	00113423          	sd	ra,8(sp)
    80004324:	01010413          	addi	s0,sp,16
    80004328:	00000097          	auipc	ra,0x0
    8000432c:	a40080e7          	jalr	-1472(ra) # 80003d68 <cpuid>
    80004330:	0085171b          	slliw	a4,a0,0x8
    80004334:	0c0027b7          	lui	a5,0xc002
    80004338:	00e787b3          	add	a5,a5,a4
    8000433c:	40200713          	li	a4,1026
    80004340:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004344:	00813083          	ld	ra,8(sp)
    80004348:	00013403          	ld	s0,0(sp)
    8000434c:	00d5151b          	slliw	a0,a0,0xd
    80004350:	0c2017b7          	lui	a5,0xc201
    80004354:	00a78533          	add	a0,a5,a0
    80004358:	00052023          	sw	zero,0(a0)
    8000435c:	01010113          	addi	sp,sp,16
    80004360:	00008067          	ret

0000000080004364 <plic_claim>:
    80004364:	ff010113          	addi	sp,sp,-16
    80004368:	00813023          	sd	s0,0(sp)
    8000436c:	00113423          	sd	ra,8(sp)
    80004370:	01010413          	addi	s0,sp,16
    80004374:	00000097          	auipc	ra,0x0
    80004378:	9f4080e7          	jalr	-1548(ra) # 80003d68 <cpuid>
    8000437c:	00813083          	ld	ra,8(sp)
    80004380:	00013403          	ld	s0,0(sp)
    80004384:	00d5151b          	slliw	a0,a0,0xd
    80004388:	0c2017b7          	lui	a5,0xc201
    8000438c:	00a78533          	add	a0,a5,a0
    80004390:	00452503          	lw	a0,4(a0)
    80004394:	01010113          	addi	sp,sp,16
    80004398:	00008067          	ret

000000008000439c <plic_complete>:
    8000439c:	fe010113          	addi	sp,sp,-32
    800043a0:	00813823          	sd	s0,16(sp)
    800043a4:	00913423          	sd	s1,8(sp)
    800043a8:	00113c23          	sd	ra,24(sp)
    800043ac:	02010413          	addi	s0,sp,32
    800043b0:	00050493          	mv	s1,a0
    800043b4:	00000097          	auipc	ra,0x0
    800043b8:	9b4080e7          	jalr	-1612(ra) # 80003d68 <cpuid>
    800043bc:	01813083          	ld	ra,24(sp)
    800043c0:	01013403          	ld	s0,16(sp)
    800043c4:	00d5179b          	slliw	a5,a0,0xd
    800043c8:	0c201737          	lui	a4,0xc201
    800043cc:	00f707b3          	add	a5,a4,a5
    800043d0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800043d4:	00813483          	ld	s1,8(sp)
    800043d8:	02010113          	addi	sp,sp,32
    800043dc:	00008067          	ret

00000000800043e0 <consolewrite>:
    800043e0:	fb010113          	addi	sp,sp,-80
    800043e4:	04813023          	sd	s0,64(sp)
    800043e8:	04113423          	sd	ra,72(sp)
    800043ec:	02913c23          	sd	s1,56(sp)
    800043f0:	03213823          	sd	s2,48(sp)
    800043f4:	03313423          	sd	s3,40(sp)
    800043f8:	03413023          	sd	s4,32(sp)
    800043fc:	01513c23          	sd	s5,24(sp)
    80004400:	05010413          	addi	s0,sp,80
    80004404:	06c05c63          	blez	a2,8000447c <consolewrite+0x9c>
    80004408:	00060993          	mv	s3,a2
    8000440c:	00050a13          	mv	s4,a0
    80004410:	00058493          	mv	s1,a1
    80004414:	00000913          	li	s2,0
    80004418:	fff00a93          	li	s5,-1
    8000441c:	01c0006f          	j	80004438 <consolewrite+0x58>
    80004420:	fbf44503          	lbu	a0,-65(s0)
    80004424:	0019091b          	addiw	s2,s2,1
    80004428:	00148493          	addi	s1,s1,1
    8000442c:	00001097          	auipc	ra,0x1
    80004430:	a9c080e7          	jalr	-1380(ra) # 80004ec8 <uartputc>
    80004434:	03298063          	beq	s3,s2,80004454 <consolewrite+0x74>
    80004438:	00048613          	mv	a2,s1
    8000443c:	00100693          	li	a3,1
    80004440:	000a0593          	mv	a1,s4
    80004444:	fbf40513          	addi	a0,s0,-65
    80004448:	00000097          	auipc	ra,0x0
    8000444c:	9d8080e7          	jalr	-1576(ra) # 80003e20 <either_copyin>
    80004450:	fd5518e3          	bne	a0,s5,80004420 <consolewrite+0x40>
    80004454:	04813083          	ld	ra,72(sp)
    80004458:	04013403          	ld	s0,64(sp)
    8000445c:	03813483          	ld	s1,56(sp)
    80004460:	02813983          	ld	s3,40(sp)
    80004464:	02013a03          	ld	s4,32(sp)
    80004468:	01813a83          	ld	s5,24(sp)
    8000446c:	00090513          	mv	a0,s2
    80004470:	03013903          	ld	s2,48(sp)
    80004474:	05010113          	addi	sp,sp,80
    80004478:	00008067          	ret
    8000447c:	00000913          	li	s2,0
    80004480:	fd5ff06f          	j	80004454 <consolewrite+0x74>

0000000080004484 <consoleread>:
    80004484:	f9010113          	addi	sp,sp,-112
    80004488:	06813023          	sd	s0,96(sp)
    8000448c:	04913c23          	sd	s1,88(sp)
    80004490:	05213823          	sd	s2,80(sp)
    80004494:	05313423          	sd	s3,72(sp)
    80004498:	05413023          	sd	s4,64(sp)
    8000449c:	03513c23          	sd	s5,56(sp)
    800044a0:	03613823          	sd	s6,48(sp)
    800044a4:	03713423          	sd	s7,40(sp)
    800044a8:	03813023          	sd	s8,32(sp)
    800044ac:	06113423          	sd	ra,104(sp)
    800044b0:	01913c23          	sd	s9,24(sp)
    800044b4:	07010413          	addi	s0,sp,112
    800044b8:	00060b93          	mv	s7,a2
    800044bc:	00050913          	mv	s2,a0
    800044c0:	00058c13          	mv	s8,a1
    800044c4:	00060b1b          	sext.w	s6,a2
    800044c8:	00004497          	auipc	s1,0x4
    800044cc:	ee048493          	addi	s1,s1,-288 # 800083a8 <cons>
    800044d0:	00400993          	li	s3,4
    800044d4:	fff00a13          	li	s4,-1
    800044d8:	00a00a93          	li	s5,10
    800044dc:	05705e63          	blez	s7,80004538 <consoleread+0xb4>
    800044e0:	09c4a703          	lw	a4,156(s1)
    800044e4:	0984a783          	lw	a5,152(s1)
    800044e8:	0007071b          	sext.w	a4,a4
    800044ec:	08e78463          	beq	a5,a4,80004574 <consoleread+0xf0>
    800044f0:	07f7f713          	andi	a4,a5,127
    800044f4:	00e48733          	add	a4,s1,a4
    800044f8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800044fc:	0017869b          	addiw	a3,a5,1
    80004500:	08d4ac23          	sw	a3,152(s1)
    80004504:	00070c9b          	sext.w	s9,a4
    80004508:	0b370663          	beq	a4,s3,800045b4 <consoleread+0x130>
    8000450c:	00100693          	li	a3,1
    80004510:	f9f40613          	addi	a2,s0,-97
    80004514:	000c0593          	mv	a1,s8
    80004518:	00090513          	mv	a0,s2
    8000451c:	f8e40fa3          	sb	a4,-97(s0)
    80004520:	00000097          	auipc	ra,0x0
    80004524:	8b4080e7          	jalr	-1868(ra) # 80003dd4 <either_copyout>
    80004528:	01450863          	beq	a0,s4,80004538 <consoleread+0xb4>
    8000452c:	001c0c13          	addi	s8,s8,1
    80004530:	fffb8b9b          	addiw	s7,s7,-1
    80004534:	fb5c94e3          	bne	s9,s5,800044dc <consoleread+0x58>
    80004538:	000b851b          	sext.w	a0,s7
    8000453c:	06813083          	ld	ra,104(sp)
    80004540:	06013403          	ld	s0,96(sp)
    80004544:	05813483          	ld	s1,88(sp)
    80004548:	05013903          	ld	s2,80(sp)
    8000454c:	04813983          	ld	s3,72(sp)
    80004550:	04013a03          	ld	s4,64(sp)
    80004554:	03813a83          	ld	s5,56(sp)
    80004558:	02813b83          	ld	s7,40(sp)
    8000455c:	02013c03          	ld	s8,32(sp)
    80004560:	01813c83          	ld	s9,24(sp)
    80004564:	40ab053b          	subw	a0,s6,a0
    80004568:	03013b03          	ld	s6,48(sp)
    8000456c:	07010113          	addi	sp,sp,112
    80004570:	00008067          	ret
    80004574:	00001097          	auipc	ra,0x1
    80004578:	1d8080e7          	jalr	472(ra) # 8000574c <push_on>
    8000457c:	0984a703          	lw	a4,152(s1)
    80004580:	09c4a783          	lw	a5,156(s1)
    80004584:	0007879b          	sext.w	a5,a5
    80004588:	fef70ce3          	beq	a4,a5,80004580 <consoleread+0xfc>
    8000458c:	00001097          	auipc	ra,0x1
    80004590:	234080e7          	jalr	564(ra) # 800057c0 <pop_on>
    80004594:	0984a783          	lw	a5,152(s1)
    80004598:	07f7f713          	andi	a4,a5,127
    8000459c:	00e48733          	add	a4,s1,a4
    800045a0:	01874703          	lbu	a4,24(a4)
    800045a4:	0017869b          	addiw	a3,a5,1
    800045a8:	08d4ac23          	sw	a3,152(s1)
    800045ac:	00070c9b          	sext.w	s9,a4
    800045b0:	f5371ee3          	bne	a4,s3,8000450c <consoleread+0x88>
    800045b4:	000b851b          	sext.w	a0,s7
    800045b8:	f96bf2e3          	bgeu	s7,s6,8000453c <consoleread+0xb8>
    800045bc:	08f4ac23          	sw	a5,152(s1)
    800045c0:	f7dff06f          	j	8000453c <consoleread+0xb8>

00000000800045c4 <consputc>:
    800045c4:	10000793          	li	a5,256
    800045c8:	00f50663          	beq	a0,a5,800045d4 <consputc+0x10>
    800045cc:	00001317          	auipc	t1,0x1
    800045d0:	9f430067          	jr	-1548(t1) # 80004fc0 <uartputc_sync>
    800045d4:	ff010113          	addi	sp,sp,-16
    800045d8:	00113423          	sd	ra,8(sp)
    800045dc:	00813023          	sd	s0,0(sp)
    800045e0:	01010413          	addi	s0,sp,16
    800045e4:	00800513          	li	a0,8
    800045e8:	00001097          	auipc	ra,0x1
    800045ec:	9d8080e7          	jalr	-1576(ra) # 80004fc0 <uartputc_sync>
    800045f0:	02000513          	li	a0,32
    800045f4:	00001097          	auipc	ra,0x1
    800045f8:	9cc080e7          	jalr	-1588(ra) # 80004fc0 <uartputc_sync>
    800045fc:	00013403          	ld	s0,0(sp)
    80004600:	00813083          	ld	ra,8(sp)
    80004604:	00800513          	li	a0,8
    80004608:	01010113          	addi	sp,sp,16
    8000460c:	00001317          	auipc	t1,0x1
    80004610:	9b430067          	jr	-1612(t1) # 80004fc0 <uartputc_sync>

0000000080004614 <consoleintr>:
    80004614:	fe010113          	addi	sp,sp,-32
    80004618:	00813823          	sd	s0,16(sp)
    8000461c:	00913423          	sd	s1,8(sp)
    80004620:	01213023          	sd	s2,0(sp)
    80004624:	00113c23          	sd	ra,24(sp)
    80004628:	02010413          	addi	s0,sp,32
    8000462c:	00004917          	auipc	s2,0x4
    80004630:	d7c90913          	addi	s2,s2,-644 # 800083a8 <cons>
    80004634:	00050493          	mv	s1,a0
    80004638:	00090513          	mv	a0,s2
    8000463c:	00001097          	auipc	ra,0x1
    80004640:	e40080e7          	jalr	-448(ra) # 8000547c <acquire>
    80004644:	02048c63          	beqz	s1,8000467c <consoleintr+0x68>
    80004648:	0a092783          	lw	a5,160(s2)
    8000464c:	09892703          	lw	a4,152(s2)
    80004650:	07f00693          	li	a3,127
    80004654:	40e7873b          	subw	a4,a5,a4
    80004658:	02e6e263          	bltu	a3,a4,8000467c <consoleintr+0x68>
    8000465c:	00d00713          	li	a4,13
    80004660:	04e48063          	beq	s1,a4,800046a0 <consoleintr+0x8c>
    80004664:	07f7f713          	andi	a4,a5,127
    80004668:	00e90733          	add	a4,s2,a4
    8000466c:	0017879b          	addiw	a5,a5,1
    80004670:	0af92023          	sw	a5,160(s2)
    80004674:	00970c23          	sb	s1,24(a4)
    80004678:	08f92e23          	sw	a5,156(s2)
    8000467c:	01013403          	ld	s0,16(sp)
    80004680:	01813083          	ld	ra,24(sp)
    80004684:	00813483          	ld	s1,8(sp)
    80004688:	00013903          	ld	s2,0(sp)
    8000468c:	00004517          	auipc	a0,0x4
    80004690:	d1c50513          	addi	a0,a0,-740 # 800083a8 <cons>
    80004694:	02010113          	addi	sp,sp,32
    80004698:	00001317          	auipc	t1,0x1
    8000469c:	eb030067          	jr	-336(t1) # 80005548 <release>
    800046a0:	00a00493          	li	s1,10
    800046a4:	fc1ff06f          	j	80004664 <consoleintr+0x50>

00000000800046a8 <consoleinit>:
    800046a8:	fe010113          	addi	sp,sp,-32
    800046ac:	00113c23          	sd	ra,24(sp)
    800046b0:	00813823          	sd	s0,16(sp)
    800046b4:	00913423          	sd	s1,8(sp)
    800046b8:	02010413          	addi	s0,sp,32
    800046bc:	00004497          	auipc	s1,0x4
    800046c0:	cec48493          	addi	s1,s1,-788 # 800083a8 <cons>
    800046c4:	00048513          	mv	a0,s1
    800046c8:	00002597          	auipc	a1,0x2
    800046cc:	fe858593          	addi	a1,a1,-24 # 800066b0 <_ZZ12printIntegermE6digits+0x138>
    800046d0:	00001097          	auipc	ra,0x1
    800046d4:	d88080e7          	jalr	-632(ra) # 80005458 <initlock>
    800046d8:	00000097          	auipc	ra,0x0
    800046dc:	7ac080e7          	jalr	1964(ra) # 80004e84 <uartinit>
    800046e0:	01813083          	ld	ra,24(sp)
    800046e4:	01013403          	ld	s0,16(sp)
    800046e8:	00000797          	auipc	a5,0x0
    800046ec:	d9c78793          	addi	a5,a5,-612 # 80004484 <consoleread>
    800046f0:	0af4bc23          	sd	a5,184(s1)
    800046f4:	00000797          	auipc	a5,0x0
    800046f8:	cec78793          	addi	a5,a5,-788 # 800043e0 <consolewrite>
    800046fc:	0cf4b023          	sd	a5,192(s1)
    80004700:	00813483          	ld	s1,8(sp)
    80004704:	02010113          	addi	sp,sp,32
    80004708:	00008067          	ret

000000008000470c <console_read>:
    8000470c:	ff010113          	addi	sp,sp,-16
    80004710:	00813423          	sd	s0,8(sp)
    80004714:	01010413          	addi	s0,sp,16
    80004718:	00813403          	ld	s0,8(sp)
    8000471c:	00004317          	auipc	t1,0x4
    80004720:	d4433303          	ld	t1,-700(t1) # 80008460 <devsw+0x10>
    80004724:	01010113          	addi	sp,sp,16
    80004728:	00030067          	jr	t1

000000008000472c <console_write>:
    8000472c:	ff010113          	addi	sp,sp,-16
    80004730:	00813423          	sd	s0,8(sp)
    80004734:	01010413          	addi	s0,sp,16
    80004738:	00813403          	ld	s0,8(sp)
    8000473c:	00004317          	auipc	t1,0x4
    80004740:	d2c33303          	ld	t1,-724(t1) # 80008468 <devsw+0x18>
    80004744:	01010113          	addi	sp,sp,16
    80004748:	00030067          	jr	t1

000000008000474c <panic>:
    8000474c:	fe010113          	addi	sp,sp,-32
    80004750:	00113c23          	sd	ra,24(sp)
    80004754:	00813823          	sd	s0,16(sp)
    80004758:	00913423          	sd	s1,8(sp)
    8000475c:	02010413          	addi	s0,sp,32
    80004760:	00050493          	mv	s1,a0
    80004764:	00002517          	auipc	a0,0x2
    80004768:	f5450513          	addi	a0,a0,-172 # 800066b8 <_ZZ12printIntegermE6digits+0x140>
    8000476c:	00004797          	auipc	a5,0x4
    80004770:	d807ae23          	sw	zero,-612(a5) # 80008508 <pr+0x18>
    80004774:	00000097          	auipc	ra,0x0
    80004778:	034080e7          	jalr	52(ra) # 800047a8 <__printf>
    8000477c:	00048513          	mv	a0,s1
    80004780:	00000097          	auipc	ra,0x0
    80004784:	028080e7          	jalr	40(ra) # 800047a8 <__printf>
    80004788:	00002517          	auipc	a0,0x2
    8000478c:	90050513          	addi	a0,a0,-1792 # 80006088 <CONSOLE_STATUS+0x78>
    80004790:	00000097          	auipc	ra,0x0
    80004794:	018080e7          	jalr	24(ra) # 800047a8 <__printf>
    80004798:	00100793          	li	a5,1
    8000479c:	00003717          	auipc	a4,0x3
    800047a0:	acf72623          	sw	a5,-1332(a4) # 80007268 <panicked>
    800047a4:	0000006f          	j	800047a4 <panic+0x58>

00000000800047a8 <__printf>:
    800047a8:	f3010113          	addi	sp,sp,-208
    800047ac:	08813023          	sd	s0,128(sp)
    800047b0:	07313423          	sd	s3,104(sp)
    800047b4:	09010413          	addi	s0,sp,144
    800047b8:	05813023          	sd	s8,64(sp)
    800047bc:	08113423          	sd	ra,136(sp)
    800047c0:	06913c23          	sd	s1,120(sp)
    800047c4:	07213823          	sd	s2,112(sp)
    800047c8:	07413023          	sd	s4,96(sp)
    800047cc:	05513c23          	sd	s5,88(sp)
    800047d0:	05613823          	sd	s6,80(sp)
    800047d4:	05713423          	sd	s7,72(sp)
    800047d8:	03913c23          	sd	s9,56(sp)
    800047dc:	03a13823          	sd	s10,48(sp)
    800047e0:	03b13423          	sd	s11,40(sp)
    800047e4:	00004317          	auipc	t1,0x4
    800047e8:	d0c30313          	addi	t1,t1,-756 # 800084f0 <pr>
    800047ec:	01832c03          	lw	s8,24(t1)
    800047f0:	00b43423          	sd	a1,8(s0)
    800047f4:	00c43823          	sd	a2,16(s0)
    800047f8:	00d43c23          	sd	a3,24(s0)
    800047fc:	02e43023          	sd	a4,32(s0)
    80004800:	02f43423          	sd	a5,40(s0)
    80004804:	03043823          	sd	a6,48(s0)
    80004808:	03143c23          	sd	a7,56(s0)
    8000480c:	00050993          	mv	s3,a0
    80004810:	4a0c1663          	bnez	s8,80004cbc <__printf+0x514>
    80004814:	60098c63          	beqz	s3,80004e2c <__printf+0x684>
    80004818:	0009c503          	lbu	a0,0(s3)
    8000481c:	00840793          	addi	a5,s0,8
    80004820:	f6f43c23          	sd	a5,-136(s0)
    80004824:	00000493          	li	s1,0
    80004828:	22050063          	beqz	a0,80004a48 <__printf+0x2a0>
    8000482c:	00002a37          	lui	s4,0x2
    80004830:	00018ab7          	lui	s5,0x18
    80004834:	000f4b37          	lui	s6,0xf4
    80004838:	00989bb7          	lui	s7,0x989
    8000483c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004840:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004844:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004848:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000484c:	00148c9b          	addiw	s9,s1,1
    80004850:	02500793          	li	a5,37
    80004854:	01998933          	add	s2,s3,s9
    80004858:	38f51263          	bne	a0,a5,80004bdc <__printf+0x434>
    8000485c:	00094783          	lbu	a5,0(s2)
    80004860:	00078c9b          	sext.w	s9,a5
    80004864:	1e078263          	beqz	a5,80004a48 <__printf+0x2a0>
    80004868:	0024849b          	addiw	s1,s1,2
    8000486c:	07000713          	li	a4,112
    80004870:	00998933          	add	s2,s3,s1
    80004874:	38e78a63          	beq	a5,a4,80004c08 <__printf+0x460>
    80004878:	20f76863          	bltu	a4,a5,80004a88 <__printf+0x2e0>
    8000487c:	42a78863          	beq	a5,a0,80004cac <__printf+0x504>
    80004880:	06400713          	li	a4,100
    80004884:	40e79663          	bne	a5,a4,80004c90 <__printf+0x4e8>
    80004888:	f7843783          	ld	a5,-136(s0)
    8000488c:	0007a603          	lw	a2,0(a5)
    80004890:	00878793          	addi	a5,a5,8
    80004894:	f6f43c23          	sd	a5,-136(s0)
    80004898:	42064a63          	bltz	a2,80004ccc <__printf+0x524>
    8000489c:	00a00713          	li	a4,10
    800048a0:	02e677bb          	remuw	a5,a2,a4
    800048a4:	00002d97          	auipc	s11,0x2
    800048a8:	e3cd8d93          	addi	s11,s11,-452 # 800066e0 <digits>
    800048ac:	00900593          	li	a1,9
    800048b0:	0006051b          	sext.w	a0,a2
    800048b4:	00000c93          	li	s9,0
    800048b8:	02079793          	slli	a5,a5,0x20
    800048bc:	0207d793          	srli	a5,a5,0x20
    800048c0:	00fd87b3          	add	a5,s11,a5
    800048c4:	0007c783          	lbu	a5,0(a5)
    800048c8:	02e656bb          	divuw	a3,a2,a4
    800048cc:	f8f40023          	sb	a5,-128(s0)
    800048d0:	14c5d863          	bge	a1,a2,80004a20 <__printf+0x278>
    800048d4:	06300593          	li	a1,99
    800048d8:	00100c93          	li	s9,1
    800048dc:	02e6f7bb          	remuw	a5,a3,a4
    800048e0:	02079793          	slli	a5,a5,0x20
    800048e4:	0207d793          	srli	a5,a5,0x20
    800048e8:	00fd87b3          	add	a5,s11,a5
    800048ec:	0007c783          	lbu	a5,0(a5)
    800048f0:	02e6d73b          	divuw	a4,a3,a4
    800048f4:	f8f400a3          	sb	a5,-127(s0)
    800048f8:	12a5f463          	bgeu	a1,a0,80004a20 <__printf+0x278>
    800048fc:	00a00693          	li	a3,10
    80004900:	00900593          	li	a1,9
    80004904:	02d777bb          	remuw	a5,a4,a3
    80004908:	02079793          	slli	a5,a5,0x20
    8000490c:	0207d793          	srli	a5,a5,0x20
    80004910:	00fd87b3          	add	a5,s11,a5
    80004914:	0007c503          	lbu	a0,0(a5)
    80004918:	02d757bb          	divuw	a5,a4,a3
    8000491c:	f8a40123          	sb	a0,-126(s0)
    80004920:	48e5f263          	bgeu	a1,a4,80004da4 <__printf+0x5fc>
    80004924:	06300513          	li	a0,99
    80004928:	02d7f5bb          	remuw	a1,a5,a3
    8000492c:	02059593          	slli	a1,a1,0x20
    80004930:	0205d593          	srli	a1,a1,0x20
    80004934:	00bd85b3          	add	a1,s11,a1
    80004938:	0005c583          	lbu	a1,0(a1)
    8000493c:	02d7d7bb          	divuw	a5,a5,a3
    80004940:	f8b401a3          	sb	a1,-125(s0)
    80004944:	48e57263          	bgeu	a0,a4,80004dc8 <__printf+0x620>
    80004948:	3e700513          	li	a0,999
    8000494c:	02d7f5bb          	remuw	a1,a5,a3
    80004950:	02059593          	slli	a1,a1,0x20
    80004954:	0205d593          	srli	a1,a1,0x20
    80004958:	00bd85b3          	add	a1,s11,a1
    8000495c:	0005c583          	lbu	a1,0(a1)
    80004960:	02d7d7bb          	divuw	a5,a5,a3
    80004964:	f8b40223          	sb	a1,-124(s0)
    80004968:	46e57663          	bgeu	a0,a4,80004dd4 <__printf+0x62c>
    8000496c:	02d7f5bb          	remuw	a1,a5,a3
    80004970:	02059593          	slli	a1,a1,0x20
    80004974:	0205d593          	srli	a1,a1,0x20
    80004978:	00bd85b3          	add	a1,s11,a1
    8000497c:	0005c583          	lbu	a1,0(a1)
    80004980:	02d7d7bb          	divuw	a5,a5,a3
    80004984:	f8b402a3          	sb	a1,-123(s0)
    80004988:	46ea7863          	bgeu	s4,a4,80004df8 <__printf+0x650>
    8000498c:	02d7f5bb          	remuw	a1,a5,a3
    80004990:	02059593          	slli	a1,a1,0x20
    80004994:	0205d593          	srli	a1,a1,0x20
    80004998:	00bd85b3          	add	a1,s11,a1
    8000499c:	0005c583          	lbu	a1,0(a1)
    800049a0:	02d7d7bb          	divuw	a5,a5,a3
    800049a4:	f8b40323          	sb	a1,-122(s0)
    800049a8:	3eeaf863          	bgeu	s5,a4,80004d98 <__printf+0x5f0>
    800049ac:	02d7f5bb          	remuw	a1,a5,a3
    800049b0:	02059593          	slli	a1,a1,0x20
    800049b4:	0205d593          	srli	a1,a1,0x20
    800049b8:	00bd85b3          	add	a1,s11,a1
    800049bc:	0005c583          	lbu	a1,0(a1)
    800049c0:	02d7d7bb          	divuw	a5,a5,a3
    800049c4:	f8b403a3          	sb	a1,-121(s0)
    800049c8:	42eb7e63          	bgeu	s6,a4,80004e04 <__printf+0x65c>
    800049cc:	02d7f5bb          	remuw	a1,a5,a3
    800049d0:	02059593          	slli	a1,a1,0x20
    800049d4:	0205d593          	srli	a1,a1,0x20
    800049d8:	00bd85b3          	add	a1,s11,a1
    800049dc:	0005c583          	lbu	a1,0(a1)
    800049e0:	02d7d7bb          	divuw	a5,a5,a3
    800049e4:	f8b40423          	sb	a1,-120(s0)
    800049e8:	42ebfc63          	bgeu	s7,a4,80004e20 <__printf+0x678>
    800049ec:	02079793          	slli	a5,a5,0x20
    800049f0:	0207d793          	srli	a5,a5,0x20
    800049f4:	00fd8db3          	add	s11,s11,a5
    800049f8:	000dc703          	lbu	a4,0(s11)
    800049fc:	00a00793          	li	a5,10
    80004a00:	00900c93          	li	s9,9
    80004a04:	f8e404a3          	sb	a4,-119(s0)
    80004a08:	00065c63          	bgez	a2,80004a20 <__printf+0x278>
    80004a0c:	f9040713          	addi	a4,s0,-112
    80004a10:	00f70733          	add	a4,a4,a5
    80004a14:	02d00693          	li	a3,45
    80004a18:	fed70823          	sb	a3,-16(a4)
    80004a1c:	00078c93          	mv	s9,a5
    80004a20:	f8040793          	addi	a5,s0,-128
    80004a24:	01978cb3          	add	s9,a5,s9
    80004a28:	f7f40d13          	addi	s10,s0,-129
    80004a2c:	000cc503          	lbu	a0,0(s9)
    80004a30:	fffc8c93          	addi	s9,s9,-1
    80004a34:	00000097          	auipc	ra,0x0
    80004a38:	b90080e7          	jalr	-1136(ra) # 800045c4 <consputc>
    80004a3c:	ffac98e3          	bne	s9,s10,80004a2c <__printf+0x284>
    80004a40:	00094503          	lbu	a0,0(s2)
    80004a44:	e00514e3          	bnez	a0,8000484c <__printf+0xa4>
    80004a48:	1a0c1663          	bnez	s8,80004bf4 <__printf+0x44c>
    80004a4c:	08813083          	ld	ra,136(sp)
    80004a50:	08013403          	ld	s0,128(sp)
    80004a54:	07813483          	ld	s1,120(sp)
    80004a58:	07013903          	ld	s2,112(sp)
    80004a5c:	06813983          	ld	s3,104(sp)
    80004a60:	06013a03          	ld	s4,96(sp)
    80004a64:	05813a83          	ld	s5,88(sp)
    80004a68:	05013b03          	ld	s6,80(sp)
    80004a6c:	04813b83          	ld	s7,72(sp)
    80004a70:	04013c03          	ld	s8,64(sp)
    80004a74:	03813c83          	ld	s9,56(sp)
    80004a78:	03013d03          	ld	s10,48(sp)
    80004a7c:	02813d83          	ld	s11,40(sp)
    80004a80:	0d010113          	addi	sp,sp,208
    80004a84:	00008067          	ret
    80004a88:	07300713          	li	a4,115
    80004a8c:	1ce78a63          	beq	a5,a4,80004c60 <__printf+0x4b8>
    80004a90:	07800713          	li	a4,120
    80004a94:	1ee79e63          	bne	a5,a4,80004c90 <__printf+0x4e8>
    80004a98:	f7843783          	ld	a5,-136(s0)
    80004a9c:	0007a703          	lw	a4,0(a5)
    80004aa0:	00878793          	addi	a5,a5,8
    80004aa4:	f6f43c23          	sd	a5,-136(s0)
    80004aa8:	28074263          	bltz	a4,80004d2c <__printf+0x584>
    80004aac:	00002d97          	auipc	s11,0x2
    80004ab0:	c34d8d93          	addi	s11,s11,-972 # 800066e0 <digits>
    80004ab4:	00f77793          	andi	a5,a4,15
    80004ab8:	00fd87b3          	add	a5,s11,a5
    80004abc:	0007c683          	lbu	a3,0(a5)
    80004ac0:	00f00613          	li	a2,15
    80004ac4:	0007079b          	sext.w	a5,a4
    80004ac8:	f8d40023          	sb	a3,-128(s0)
    80004acc:	0047559b          	srliw	a1,a4,0x4
    80004ad0:	0047569b          	srliw	a3,a4,0x4
    80004ad4:	00000c93          	li	s9,0
    80004ad8:	0ee65063          	bge	a2,a4,80004bb8 <__printf+0x410>
    80004adc:	00f6f693          	andi	a3,a3,15
    80004ae0:	00dd86b3          	add	a3,s11,a3
    80004ae4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004ae8:	0087d79b          	srliw	a5,a5,0x8
    80004aec:	00100c93          	li	s9,1
    80004af0:	f8d400a3          	sb	a3,-127(s0)
    80004af4:	0cb67263          	bgeu	a2,a1,80004bb8 <__printf+0x410>
    80004af8:	00f7f693          	andi	a3,a5,15
    80004afc:	00dd86b3          	add	a3,s11,a3
    80004b00:	0006c583          	lbu	a1,0(a3)
    80004b04:	00f00613          	li	a2,15
    80004b08:	0047d69b          	srliw	a3,a5,0x4
    80004b0c:	f8b40123          	sb	a1,-126(s0)
    80004b10:	0047d593          	srli	a1,a5,0x4
    80004b14:	28f67e63          	bgeu	a2,a5,80004db0 <__printf+0x608>
    80004b18:	00f6f693          	andi	a3,a3,15
    80004b1c:	00dd86b3          	add	a3,s11,a3
    80004b20:	0006c503          	lbu	a0,0(a3)
    80004b24:	0087d813          	srli	a6,a5,0x8
    80004b28:	0087d69b          	srliw	a3,a5,0x8
    80004b2c:	f8a401a3          	sb	a0,-125(s0)
    80004b30:	28b67663          	bgeu	a2,a1,80004dbc <__printf+0x614>
    80004b34:	00f6f693          	andi	a3,a3,15
    80004b38:	00dd86b3          	add	a3,s11,a3
    80004b3c:	0006c583          	lbu	a1,0(a3)
    80004b40:	00c7d513          	srli	a0,a5,0xc
    80004b44:	00c7d69b          	srliw	a3,a5,0xc
    80004b48:	f8b40223          	sb	a1,-124(s0)
    80004b4c:	29067a63          	bgeu	a2,a6,80004de0 <__printf+0x638>
    80004b50:	00f6f693          	andi	a3,a3,15
    80004b54:	00dd86b3          	add	a3,s11,a3
    80004b58:	0006c583          	lbu	a1,0(a3)
    80004b5c:	0107d813          	srli	a6,a5,0x10
    80004b60:	0107d69b          	srliw	a3,a5,0x10
    80004b64:	f8b402a3          	sb	a1,-123(s0)
    80004b68:	28a67263          	bgeu	a2,a0,80004dec <__printf+0x644>
    80004b6c:	00f6f693          	andi	a3,a3,15
    80004b70:	00dd86b3          	add	a3,s11,a3
    80004b74:	0006c683          	lbu	a3,0(a3)
    80004b78:	0147d79b          	srliw	a5,a5,0x14
    80004b7c:	f8d40323          	sb	a3,-122(s0)
    80004b80:	21067663          	bgeu	a2,a6,80004d8c <__printf+0x5e4>
    80004b84:	02079793          	slli	a5,a5,0x20
    80004b88:	0207d793          	srli	a5,a5,0x20
    80004b8c:	00fd8db3          	add	s11,s11,a5
    80004b90:	000dc683          	lbu	a3,0(s11)
    80004b94:	00800793          	li	a5,8
    80004b98:	00700c93          	li	s9,7
    80004b9c:	f8d403a3          	sb	a3,-121(s0)
    80004ba0:	00075c63          	bgez	a4,80004bb8 <__printf+0x410>
    80004ba4:	f9040713          	addi	a4,s0,-112
    80004ba8:	00f70733          	add	a4,a4,a5
    80004bac:	02d00693          	li	a3,45
    80004bb0:	fed70823          	sb	a3,-16(a4)
    80004bb4:	00078c93          	mv	s9,a5
    80004bb8:	f8040793          	addi	a5,s0,-128
    80004bbc:	01978cb3          	add	s9,a5,s9
    80004bc0:	f7f40d13          	addi	s10,s0,-129
    80004bc4:	000cc503          	lbu	a0,0(s9)
    80004bc8:	fffc8c93          	addi	s9,s9,-1
    80004bcc:	00000097          	auipc	ra,0x0
    80004bd0:	9f8080e7          	jalr	-1544(ra) # 800045c4 <consputc>
    80004bd4:	ff9d18e3          	bne	s10,s9,80004bc4 <__printf+0x41c>
    80004bd8:	0100006f          	j	80004be8 <__printf+0x440>
    80004bdc:	00000097          	auipc	ra,0x0
    80004be0:	9e8080e7          	jalr	-1560(ra) # 800045c4 <consputc>
    80004be4:	000c8493          	mv	s1,s9
    80004be8:	00094503          	lbu	a0,0(s2)
    80004bec:	c60510e3          	bnez	a0,8000484c <__printf+0xa4>
    80004bf0:	e40c0ee3          	beqz	s8,80004a4c <__printf+0x2a4>
    80004bf4:	00004517          	auipc	a0,0x4
    80004bf8:	8fc50513          	addi	a0,a0,-1796 # 800084f0 <pr>
    80004bfc:	00001097          	auipc	ra,0x1
    80004c00:	94c080e7          	jalr	-1716(ra) # 80005548 <release>
    80004c04:	e49ff06f          	j	80004a4c <__printf+0x2a4>
    80004c08:	f7843783          	ld	a5,-136(s0)
    80004c0c:	03000513          	li	a0,48
    80004c10:	01000d13          	li	s10,16
    80004c14:	00878713          	addi	a4,a5,8
    80004c18:	0007bc83          	ld	s9,0(a5)
    80004c1c:	f6e43c23          	sd	a4,-136(s0)
    80004c20:	00000097          	auipc	ra,0x0
    80004c24:	9a4080e7          	jalr	-1628(ra) # 800045c4 <consputc>
    80004c28:	07800513          	li	a0,120
    80004c2c:	00000097          	auipc	ra,0x0
    80004c30:	998080e7          	jalr	-1640(ra) # 800045c4 <consputc>
    80004c34:	00002d97          	auipc	s11,0x2
    80004c38:	aacd8d93          	addi	s11,s11,-1364 # 800066e0 <digits>
    80004c3c:	03ccd793          	srli	a5,s9,0x3c
    80004c40:	00fd87b3          	add	a5,s11,a5
    80004c44:	0007c503          	lbu	a0,0(a5)
    80004c48:	fffd0d1b          	addiw	s10,s10,-1
    80004c4c:	004c9c93          	slli	s9,s9,0x4
    80004c50:	00000097          	auipc	ra,0x0
    80004c54:	974080e7          	jalr	-1676(ra) # 800045c4 <consputc>
    80004c58:	fe0d12e3          	bnez	s10,80004c3c <__printf+0x494>
    80004c5c:	f8dff06f          	j	80004be8 <__printf+0x440>
    80004c60:	f7843783          	ld	a5,-136(s0)
    80004c64:	0007bc83          	ld	s9,0(a5)
    80004c68:	00878793          	addi	a5,a5,8
    80004c6c:	f6f43c23          	sd	a5,-136(s0)
    80004c70:	000c9a63          	bnez	s9,80004c84 <__printf+0x4dc>
    80004c74:	1080006f          	j	80004d7c <__printf+0x5d4>
    80004c78:	001c8c93          	addi	s9,s9,1
    80004c7c:	00000097          	auipc	ra,0x0
    80004c80:	948080e7          	jalr	-1720(ra) # 800045c4 <consputc>
    80004c84:	000cc503          	lbu	a0,0(s9)
    80004c88:	fe0518e3          	bnez	a0,80004c78 <__printf+0x4d0>
    80004c8c:	f5dff06f          	j	80004be8 <__printf+0x440>
    80004c90:	02500513          	li	a0,37
    80004c94:	00000097          	auipc	ra,0x0
    80004c98:	930080e7          	jalr	-1744(ra) # 800045c4 <consputc>
    80004c9c:	000c8513          	mv	a0,s9
    80004ca0:	00000097          	auipc	ra,0x0
    80004ca4:	924080e7          	jalr	-1756(ra) # 800045c4 <consputc>
    80004ca8:	f41ff06f          	j	80004be8 <__printf+0x440>
    80004cac:	02500513          	li	a0,37
    80004cb0:	00000097          	auipc	ra,0x0
    80004cb4:	914080e7          	jalr	-1772(ra) # 800045c4 <consputc>
    80004cb8:	f31ff06f          	j	80004be8 <__printf+0x440>
    80004cbc:	00030513          	mv	a0,t1
    80004cc0:	00000097          	auipc	ra,0x0
    80004cc4:	7bc080e7          	jalr	1980(ra) # 8000547c <acquire>
    80004cc8:	b4dff06f          	j	80004814 <__printf+0x6c>
    80004ccc:	40c0053b          	negw	a0,a2
    80004cd0:	00a00713          	li	a4,10
    80004cd4:	02e576bb          	remuw	a3,a0,a4
    80004cd8:	00002d97          	auipc	s11,0x2
    80004cdc:	a08d8d93          	addi	s11,s11,-1528 # 800066e0 <digits>
    80004ce0:	ff700593          	li	a1,-9
    80004ce4:	02069693          	slli	a3,a3,0x20
    80004ce8:	0206d693          	srli	a3,a3,0x20
    80004cec:	00dd86b3          	add	a3,s11,a3
    80004cf0:	0006c683          	lbu	a3,0(a3)
    80004cf4:	02e557bb          	divuw	a5,a0,a4
    80004cf8:	f8d40023          	sb	a3,-128(s0)
    80004cfc:	10b65e63          	bge	a2,a1,80004e18 <__printf+0x670>
    80004d00:	06300593          	li	a1,99
    80004d04:	02e7f6bb          	remuw	a3,a5,a4
    80004d08:	02069693          	slli	a3,a3,0x20
    80004d0c:	0206d693          	srli	a3,a3,0x20
    80004d10:	00dd86b3          	add	a3,s11,a3
    80004d14:	0006c683          	lbu	a3,0(a3)
    80004d18:	02e7d73b          	divuw	a4,a5,a4
    80004d1c:	00200793          	li	a5,2
    80004d20:	f8d400a3          	sb	a3,-127(s0)
    80004d24:	bca5ece3          	bltu	a1,a0,800048fc <__printf+0x154>
    80004d28:	ce5ff06f          	j	80004a0c <__printf+0x264>
    80004d2c:	40e007bb          	negw	a5,a4
    80004d30:	00002d97          	auipc	s11,0x2
    80004d34:	9b0d8d93          	addi	s11,s11,-1616 # 800066e0 <digits>
    80004d38:	00f7f693          	andi	a3,a5,15
    80004d3c:	00dd86b3          	add	a3,s11,a3
    80004d40:	0006c583          	lbu	a1,0(a3)
    80004d44:	ff100613          	li	a2,-15
    80004d48:	0047d69b          	srliw	a3,a5,0x4
    80004d4c:	f8b40023          	sb	a1,-128(s0)
    80004d50:	0047d59b          	srliw	a1,a5,0x4
    80004d54:	0ac75e63          	bge	a4,a2,80004e10 <__printf+0x668>
    80004d58:	00f6f693          	andi	a3,a3,15
    80004d5c:	00dd86b3          	add	a3,s11,a3
    80004d60:	0006c603          	lbu	a2,0(a3)
    80004d64:	00f00693          	li	a3,15
    80004d68:	0087d79b          	srliw	a5,a5,0x8
    80004d6c:	f8c400a3          	sb	a2,-127(s0)
    80004d70:	d8b6e4e3          	bltu	a3,a1,80004af8 <__printf+0x350>
    80004d74:	00200793          	li	a5,2
    80004d78:	e2dff06f          	j	80004ba4 <__printf+0x3fc>
    80004d7c:	00002c97          	auipc	s9,0x2
    80004d80:	944c8c93          	addi	s9,s9,-1724 # 800066c0 <_ZZ12printIntegermE6digits+0x148>
    80004d84:	02800513          	li	a0,40
    80004d88:	ef1ff06f          	j	80004c78 <__printf+0x4d0>
    80004d8c:	00700793          	li	a5,7
    80004d90:	00600c93          	li	s9,6
    80004d94:	e0dff06f          	j	80004ba0 <__printf+0x3f8>
    80004d98:	00700793          	li	a5,7
    80004d9c:	00600c93          	li	s9,6
    80004da0:	c69ff06f          	j	80004a08 <__printf+0x260>
    80004da4:	00300793          	li	a5,3
    80004da8:	00200c93          	li	s9,2
    80004dac:	c5dff06f          	j	80004a08 <__printf+0x260>
    80004db0:	00300793          	li	a5,3
    80004db4:	00200c93          	li	s9,2
    80004db8:	de9ff06f          	j	80004ba0 <__printf+0x3f8>
    80004dbc:	00400793          	li	a5,4
    80004dc0:	00300c93          	li	s9,3
    80004dc4:	dddff06f          	j	80004ba0 <__printf+0x3f8>
    80004dc8:	00400793          	li	a5,4
    80004dcc:	00300c93          	li	s9,3
    80004dd0:	c39ff06f          	j	80004a08 <__printf+0x260>
    80004dd4:	00500793          	li	a5,5
    80004dd8:	00400c93          	li	s9,4
    80004ddc:	c2dff06f          	j	80004a08 <__printf+0x260>
    80004de0:	00500793          	li	a5,5
    80004de4:	00400c93          	li	s9,4
    80004de8:	db9ff06f          	j	80004ba0 <__printf+0x3f8>
    80004dec:	00600793          	li	a5,6
    80004df0:	00500c93          	li	s9,5
    80004df4:	dadff06f          	j	80004ba0 <__printf+0x3f8>
    80004df8:	00600793          	li	a5,6
    80004dfc:	00500c93          	li	s9,5
    80004e00:	c09ff06f          	j	80004a08 <__printf+0x260>
    80004e04:	00800793          	li	a5,8
    80004e08:	00700c93          	li	s9,7
    80004e0c:	bfdff06f          	j	80004a08 <__printf+0x260>
    80004e10:	00100793          	li	a5,1
    80004e14:	d91ff06f          	j	80004ba4 <__printf+0x3fc>
    80004e18:	00100793          	li	a5,1
    80004e1c:	bf1ff06f          	j	80004a0c <__printf+0x264>
    80004e20:	00900793          	li	a5,9
    80004e24:	00800c93          	li	s9,8
    80004e28:	be1ff06f          	j	80004a08 <__printf+0x260>
    80004e2c:	00002517          	auipc	a0,0x2
    80004e30:	89c50513          	addi	a0,a0,-1892 # 800066c8 <_ZZ12printIntegermE6digits+0x150>
    80004e34:	00000097          	auipc	ra,0x0
    80004e38:	918080e7          	jalr	-1768(ra) # 8000474c <panic>

0000000080004e3c <printfinit>:
    80004e3c:	fe010113          	addi	sp,sp,-32
    80004e40:	00813823          	sd	s0,16(sp)
    80004e44:	00913423          	sd	s1,8(sp)
    80004e48:	00113c23          	sd	ra,24(sp)
    80004e4c:	02010413          	addi	s0,sp,32
    80004e50:	00003497          	auipc	s1,0x3
    80004e54:	6a048493          	addi	s1,s1,1696 # 800084f0 <pr>
    80004e58:	00048513          	mv	a0,s1
    80004e5c:	00002597          	auipc	a1,0x2
    80004e60:	87c58593          	addi	a1,a1,-1924 # 800066d8 <_ZZ12printIntegermE6digits+0x160>
    80004e64:	00000097          	auipc	ra,0x0
    80004e68:	5f4080e7          	jalr	1524(ra) # 80005458 <initlock>
    80004e6c:	01813083          	ld	ra,24(sp)
    80004e70:	01013403          	ld	s0,16(sp)
    80004e74:	0004ac23          	sw	zero,24(s1)
    80004e78:	00813483          	ld	s1,8(sp)
    80004e7c:	02010113          	addi	sp,sp,32
    80004e80:	00008067          	ret

0000000080004e84 <uartinit>:
    80004e84:	ff010113          	addi	sp,sp,-16
    80004e88:	00813423          	sd	s0,8(sp)
    80004e8c:	01010413          	addi	s0,sp,16
    80004e90:	100007b7          	lui	a5,0x10000
    80004e94:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004e98:	f8000713          	li	a4,-128
    80004e9c:	00e781a3          	sb	a4,3(a5)
    80004ea0:	00300713          	li	a4,3
    80004ea4:	00e78023          	sb	a4,0(a5)
    80004ea8:	000780a3          	sb	zero,1(a5)
    80004eac:	00e781a3          	sb	a4,3(a5)
    80004eb0:	00700693          	li	a3,7
    80004eb4:	00d78123          	sb	a3,2(a5)
    80004eb8:	00e780a3          	sb	a4,1(a5)
    80004ebc:	00813403          	ld	s0,8(sp)
    80004ec0:	01010113          	addi	sp,sp,16
    80004ec4:	00008067          	ret

0000000080004ec8 <uartputc>:
    80004ec8:	00002797          	auipc	a5,0x2
    80004ecc:	3a07a783          	lw	a5,928(a5) # 80007268 <panicked>
    80004ed0:	00078463          	beqz	a5,80004ed8 <uartputc+0x10>
    80004ed4:	0000006f          	j	80004ed4 <uartputc+0xc>
    80004ed8:	fd010113          	addi	sp,sp,-48
    80004edc:	02813023          	sd	s0,32(sp)
    80004ee0:	00913c23          	sd	s1,24(sp)
    80004ee4:	01213823          	sd	s2,16(sp)
    80004ee8:	01313423          	sd	s3,8(sp)
    80004eec:	02113423          	sd	ra,40(sp)
    80004ef0:	03010413          	addi	s0,sp,48
    80004ef4:	00002917          	auipc	s2,0x2
    80004ef8:	37c90913          	addi	s2,s2,892 # 80007270 <uart_tx_r>
    80004efc:	00093783          	ld	a5,0(s2)
    80004f00:	00002497          	auipc	s1,0x2
    80004f04:	37848493          	addi	s1,s1,888 # 80007278 <uart_tx_w>
    80004f08:	0004b703          	ld	a4,0(s1)
    80004f0c:	02078693          	addi	a3,a5,32
    80004f10:	00050993          	mv	s3,a0
    80004f14:	02e69c63          	bne	a3,a4,80004f4c <uartputc+0x84>
    80004f18:	00001097          	auipc	ra,0x1
    80004f1c:	834080e7          	jalr	-1996(ra) # 8000574c <push_on>
    80004f20:	00093783          	ld	a5,0(s2)
    80004f24:	0004b703          	ld	a4,0(s1)
    80004f28:	02078793          	addi	a5,a5,32
    80004f2c:	00e79463          	bne	a5,a4,80004f34 <uartputc+0x6c>
    80004f30:	0000006f          	j	80004f30 <uartputc+0x68>
    80004f34:	00001097          	auipc	ra,0x1
    80004f38:	88c080e7          	jalr	-1908(ra) # 800057c0 <pop_on>
    80004f3c:	00093783          	ld	a5,0(s2)
    80004f40:	0004b703          	ld	a4,0(s1)
    80004f44:	02078693          	addi	a3,a5,32
    80004f48:	fce688e3          	beq	a3,a4,80004f18 <uartputc+0x50>
    80004f4c:	01f77693          	andi	a3,a4,31
    80004f50:	00003597          	auipc	a1,0x3
    80004f54:	5c058593          	addi	a1,a1,1472 # 80008510 <uart_tx_buf>
    80004f58:	00d586b3          	add	a3,a1,a3
    80004f5c:	00170713          	addi	a4,a4,1
    80004f60:	01368023          	sb	s3,0(a3)
    80004f64:	00e4b023          	sd	a4,0(s1)
    80004f68:	10000637          	lui	a2,0x10000
    80004f6c:	02f71063          	bne	a4,a5,80004f8c <uartputc+0xc4>
    80004f70:	0340006f          	j	80004fa4 <uartputc+0xdc>
    80004f74:	00074703          	lbu	a4,0(a4)
    80004f78:	00f93023          	sd	a5,0(s2)
    80004f7c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004f80:	00093783          	ld	a5,0(s2)
    80004f84:	0004b703          	ld	a4,0(s1)
    80004f88:	00f70e63          	beq	a4,a5,80004fa4 <uartputc+0xdc>
    80004f8c:	00564683          	lbu	a3,5(a2)
    80004f90:	01f7f713          	andi	a4,a5,31
    80004f94:	00e58733          	add	a4,a1,a4
    80004f98:	0206f693          	andi	a3,a3,32
    80004f9c:	00178793          	addi	a5,a5,1
    80004fa0:	fc069ae3          	bnez	a3,80004f74 <uartputc+0xac>
    80004fa4:	02813083          	ld	ra,40(sp)
    80004fa8:	02013403          	ld	s0,32(sp)
    80004fac:	01813483          	ld	s1,24(sp)
    80004fb0:	01013903          	ld	s2,16(sp)
    80004fb4:	00813983          	ld	s3,8(sp)
    80004fb8:	03010113          	addi	sp,sp,48
    80004fbc:	00008067          	ret

0000000080004fc0 <uartputc_sync>:
    80004fc0:	ff010113          	addi	sp,sp,-16
    80004fc4:	00813423          	sd	s0,8(sp)
    80004fc8:	01010413          	addi	s0,sp,16
    80004fcc:	00002717          	auipc	a4,0x2
    80004fd0:	29c72703          	lw	a4,668(a4) # 80007268 <panicked>
    80004fd4:	02071663          	bnez	a4,80005000 <uartputc_sync+0x40>
    80004fd8:	00050793          	mv	a5,a0
    80004fdc:	100006b7          	lui	a3,0x10000
    80004fe0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004fe4:	02077713          	andi	a4,a4,32
    80004fe8:	fe070ce3          	beqz	a4,80004fe0 <uartputc_sync+0x20>
    80004fec:	0ff7f793          	andi	a5,a5,255
    80004ff0:	00f68023          	sb	a5,0(a3)
    80004ff4:	00813403          	ld	s0,8(sp)
    80004ff8:	01010113          	addi	sp,sp,16
    80004ffc:	00008067          	ret
    80005000:	0000006f          	j	80005000 <uartputc_sync+0x40>

0000000080005004 <uartstart>:
    80005004:	ff010113          	addi	sp,sp,-16
    80005008:	00813423          	sd	s0,8(sp)
    8000500c:	01010413          	addi	s0,sp,16
    80005010:	00002617          	auipc	a2,0x2
    80005014:	26060613          	addi	a2,a2,608 # 80007270 <uart_tx_r>
    80005018:	00002517          	auipc	a0,0x2
    8000501c:	26050513          	addi	a0,a0,608 # 80007278 <uart_tx_w>
    80005020:	00063783          	ld	a5,0(a2)
    80005024:	00053703          	ld	a4,0(a0)
    80005028:	04f70263          	beq	a4,a5,8000506c <uartstart+0x68>
    8000502c:	100005b7          	lui	a1,0x10000
    80005030:	00003817          	auipc	a6,0x3
    80005034:	4e080813          	addi	a6,a6,1248 # 80008510 <uart_tx_buf>
    80005038:	01c0006f          	j	80005054 <uartstart+0x50>
    8000503c:	0006c703          	lbu	a4,0(a3)
    80005040:	00f63023          	sd	a5,0(a2)
    80005044:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005048:	00063783          	ld	a5,0(a2)
    8000504c:	00053703          	ld	a4,0(a0)
    80005050:	00f70e63          	beq	a4,a5,8000506c <uartstart+0x68>
    80005054:	01f7f713          	andi	a4,a5,31
    80005058:	00e806b3          	add	a3,a6,a4
    8000505c:	0055c703          	lbu	a4,5(a1)
    80005060:	00178793          	addi	a5,a5,1
    80005064:	02077713          	andi	a4,a4,32
    80005068:	fc071ae3          	bnez	a4,8000503c <uartstart+0x38>
    8000506c:	00813403          	ld	s0,8(sp)
    80005070:	01010113          	addi	sp,sp,16
    80005074:	00008067          	ret

0000000080005078 <uartgetc>:
    80005078:	ff010113          	addi	sp,sp,-16
    8000507c:	00813423          	sd	s0,8(sp)
    80005080:	01010413          	addi	s0,sp,16
    80005084:	10000737          	lui	a4,0x10000
    80005088:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000508c:	0017f793          	andi	a5,a5,1
    80005090:	00078c63          	beqz	a5,800050a8 <uartgetc+0x30>
    80005094:	00074503          	lbu	a0,0(a4)
    80005098:	0ff57513          	andi	a0,a0,255
    8000509c:	00813403          	ld	s0,8(sp)
    800050a0:	01010113          	addi	sp,sp,16
    800050a4:	00008067          	ret
    800050a8:	fff00513          	li	a0,-1
    800050ac:	ff1ff06f          	j	8000509c <uartgetc+0x24>

00000000800050b0 <uartintr>:
    800050b0:	100007b7          	lui	a5,0x10000
    800050b4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800050b8:	0017f793          	andi	a5,a5,1
    800050bc:	0a078463          	beqz	a5,80005164 <uartintr+0xb4>
    800050c0:	fe010113          	addi	sp,sp,-32
    800050c4:	00813823          	sd	s0,16(sp)
    800050c8:	00913423          	sd	s1,8(sp)
    800050cc:	00113c23          	sd	ra,24(sp)
    800050d0:	02010413          	addi	s0,sp,32
    800050d4:	100004b7          	lui	s1,0x10000
    800050d8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800050dc:	0ff57513          	andi	a0,a0,255
    800050e0:	fffff097          	auipc	ra,0xfffff
    800050e4:	534080e7          	jalr	1332(ra) # 80004614 <consoleintr>
    800050e8:	0054c783          	lbu	a5,5(s1)
    800050ec:	0017f793          	andi	a5,a5,1
    800050f0:	fe0794e3          	bnez	a5,800050d8 <uartintr+0x28>
    800050f4:	00002617          	auipc	a2,0x2
    800050f8:	17c60613          	addi	a2,a2,380 # 80007270 <uart_tx_r>
    800050fc:	00002517          	auipc	a0,0x2
    80005100:	17c50513          	addi	a0,a0,380 # 80007278 <uart_tx_w>
    80005104:	00063783          	ld	a5,0(a2)
    80005108:	00053703          	ld	a4,0(a0)
    8000510c:	04f70263          	beq	a4,a5,80005150 <uartintr+0xa0>
    80005110:	100005b7          	lui	a1,0x10000
    80005114:	00003817          	auipc	a6,0x3
    80005118:	3fc80813          	addi	a6,a6,1020 # 80008510 <uart_tx_buf>
    8000511c:	01c0006f          	j	80005138 <uartintr+0x88>
    80005120:	0006c703          	lbu	a4,0(a3)
    80005124:	00f63023          	sd	a5,0(a2)
    80005128:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000512c:	00063783          	ld	a5,0(a2)
    80005130:	00053703          	ld	a4,0(a0)
    80005134:	00f70e63          	beq	a4,a5,80005150 <uartintr+0xa0>
    80005138:	01f7f713          	andi	a4,a5,31
    8000513c:	00e806b3          	add	a3,a6,a4
    80005140:	0055c703          	lbu	a4,5(a1)
    80005144:	00178793          	addi	a5,a5,1
    80005148:	02077713          	andi	a4,a4,32
    8000514c:	fc071ae3          	bnez	a4,80005120 <uartintr+0x70>
    80005150:	01813083          	ld	ra,24(sp)
    80005154:	01013403          	ld	s0,16(sp)
    80005158:	00813483          	ld	s1,8(sp)
    8000515c:	02010113          	addi	sp,sp,32
    80005160:	00008067          	ret
    80005164:	00002617          	auipc	a2,0x2
    80005168:	10c60613          	addi	a2,a2,268 # 80007270 <uart_tx_r>
    8000516c:	00002517          	auipc	a0,0x2
    80005170:	10c50513          	addi	a0,a0,268 # 80007278 <uart_tx_w>
    80005174:	00063783          	ld	a5,0(a2)
    80005178:	00053703          	ld	a4,0(a0)
    8000517c:	04f70263          	beq	a4,a5,800051c0 <uartintr+0x110>
    80005180:	100005b7          	lui	a1,0x10000
    80005184:	00003817          	auipc	a6,0x3
    80005188:	38c80813          	addi	a6,a6,908 # 80008510 <uart_tx_buf>
    8000518c:	01c0006f          	j	800051a8 <uartintr+0xf8>
    80005190:	0006c703          	lbu	a4,0(a3)
    80005194:	00f63023          	sd	a5,0(a2)
    80005198:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000519c:	00063783          	ld	a5,0(a2)
    800051a0:	00053703          	ld	a4,0(a0)
    800051a4:	02f70063          	beq	a4,a5,800051c4 <uartintr+0x114>
    800051a8:	01f7f713          	andi	a4,a5,31
    800051ac:	00e806b3          	add	a3,a6,a4
    800051b0:	0055c703          	lbu	a4,5(a1)
    800051b4:	00178793          	addi	a5,a5,1
    800051b8:	02077713          	andi	a4,a4,32
    800051bc:	fc071ae3          	bnez	a4,80005190 <uartintr+0xe0>
    800051c0:	00008067          	ret
    800051c4:	00008067          	ret

00000000800051c8 <kinit>:
    800051c8:	fc010113          	addi	sp,sp,-64
    800051cc:	02913423          	sd	s1,40(sp)
    800051d0:	fffff7b7          	lui	a5,0xfffff
    800051d4:	00004497          	auipc	s1,0x4
    800051d8:	36b48493          	addi	s1,s1,875 # 8000953f <end+0xfff>
    800051dc:	02813823          	sd	s0,48(sp)
    800051e0:	01313c23          	sd	s3,24(sp)
    800051e4:	00f4f4b3          	and	s1,s1,a5
    800051e8:	02113c23          	sd	ra,56(sp)
    800051ec:	03213023          	sd	s2,32(sp)
    800051f0:	01413823          	sd	s4,16(sp)
    800051f4:	01513423          	sd	s5,8(sp)
    800051f8:	04010413          	addi	s0,sp,64
    800051fc:	000017b7          	lui	a5,0x1
    80005200:	01100993          	li	s3,17
    80005204:	00f487b3          	add	a5,s1,a5
    80005208:	01b99993          	slli	s3,s3,0x1b
    8000520c:	06f9e063          	bltu	s3,a5,8000526c <kinit+0xa4>
    80005210:	00003a97          	auipc	s5,0x3
    80005214:	330a8a93          	addi	s5,s5,816 # 80008540 <end>
    80005218:	0754ec63          	bltu	s1,s5,80005290 <kinit+0xc8>
    8000521c:	0734fa63          	bgeu	s1,s3,80005290 <kinit+0xc8>
    80005220:	00088a37          	lui	s4,0x88
    80005224:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005228:	00002917          	auipc	s2,0x2
    8000522c:	05890913          	addi	s2,s2,88 # 80007280 <kmem>
    80005230:	00ca1a13          	slli	s4,s4,0xc
    80005234:	0140006f          	j	80005248 <kinit+0x80>
    80005238:	000017b7          	lui	a5,0x1
    8000523c:	00f484b3          	add	s1,s1,a5
    80005240:	0554e863          	bltu	s1,s5,80005290 <kinit+0xc8>
    80005244:	0534f663          	bgeu	s1,s3,80005290 <kinit+0xc8>
    80005248:	00001637          	lui	a2,0x1
    8000524c:	00100593          	li	a1,1
    80005250:	00048513          	mv	a0,s1
    80005254:	00000097          	auipc	ra,0x0
    80005258:	5e4080e7          	jalr	1508(ra) # 80005838 <__memset>
    8000525c:	00093783          	ld	a5,0(s2)
    80005260:	00f4b023          	sd	a5,0(s1)
    80005264:	00993023          	sd	s1,0(s2)
    80005268:	fd4498e3          	bne	s1,s4,80005238 <kinit+0x70>
    8000526c:	03813083          	ld	ra,56(sp)
    80005270:	03013403          	ld	s0,48(sp)
    80005274:	02813483          	ld	s1,40(sp)
    80005278:	02013903          	ld	s2,32(sp)
    8000527c:	01813983          	ld	s3,24(sp)
    80005280:	01013a03          	ld	s4,16(sp)
    80005284:	00813a83          	ld	s5,8(sp)
    80005288:	04010113          	addi	sp,sp,64
    8000528c:	00008067          	ret
    80005290:	00001517          	auipc	a0,0x1
    80005294:	46850513          	addi	a0,a0,1128 # 800066f8 <digits+0x18>
    80005298:	fffff097          	auipc	ra,0xfffff
    8000529c:	4b4080e7          	jalr	1204(ra) # 8000474c <panic>

00000000800052a0 <freerange>:
    800052a0:	fc010113          	addi	sp,sp,-64
    800052a4:	000017b7          	lui	a5,0x1
    800052a8:	02913423          	sd	s1,40(sp)
    800052ac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800052b0:	009504b3          	add	s1,a0,s1
    800052b4:	fffff537          	lui	a0,0xfffff
    800052b8:	02813823          	sd	s0,48(sp)
    800052bc:	02113c23          	sd	ra,56(sp)
    800052c0:	03213023          	sd	s2,32(sp)
    800052c4:	01313c23          	sd	s3,24(sp)
    800052c8:	01413823          	sd	s4,16(sp)
    800052cc:	01513423          	sd	s5,8(sp)
    800052d0:	01613023          	sd	s6,0(sp)
    800052d4:	04010413          	addi	s0,sp,64
    800052d8:	00a4f4b3          	and	s1,s1,a0
    800052dc:	00f487b3          	add	a5,s1,a5
    800052e0:	06f5e463          	bltu	a1,a5,80005348 <freerange+0xa8>
    800052e4:	00003a97          	auipc	s5,0x3
    800052e8:	25ca8a93          	addi	s5,s5,604 # 80008540 <end>
    800052ec:	0954e263          	bltu	s1,s5,80005370 <freerange+0xd0>
    800052f0:	01100993          	li	s3,17
    800052f4:	01b99993          	slli	s3,s3,0x1b
    800052f8:	0734fc63          	bgeu	s1,s3,80005370 <freerange+0xd0>
    800052fc:	00058a13          	mv	s4,a1
    80005300:	00002917          	auipc	s2,0x2
    80005304:	f8090913          	addi	s2,s2,-128 # 80007280 <kmem>
    80005308:	00002b37          	lui	s6,0x2
    8000530c:	0140006f          	j	80005320 <freerange+0x80>
    80005310:	000017b7          	lui	a5,0x1
    80005314:	00f484b3          	add	s1,s1,a5
    80005318:	0554ec63          	bltu	s1,s5,80005370 <freerange+0xd0>
    8000531c:	0534fa63          	bgeu	s1,s3,80005370 <freerange+0xd0>
    80005320:	00001637          	lui	a2,0x1
    80005324:	00100593          	li	a1,1
    80005328:	00048513          	mv	a0,s1
    8000532c:	00000097          	auipc	ra,0x0
    80005330:	50c080e7          	jalr	1292(ra) # 80005838 <__memset>
    80005334:	00093703          	ld	a4,0(s2)
    80005338:	016487b3          	add	a5,s1,s6
    8000533c:	00e4b023          	sd	a4,0(s1)
    80005340:	00993023          	sd	s1,0(s2)
    80005344:	fcfa76e3          	bgeu	s4,a5,80005310 <freerange+0x70>
    80005348:	03813083          	ld	ra,56(sp)
    8000534c:	03013403          	ld	s0,48(sp)
    80005350:	02813483          	ld	s1,40(sp)
    80005354:	02013903          	ld	s2,32(sp)
    80005358:	01813983          	ld	s3,24(sp)
    8000535c:	01013a03          	ld	s4,16(sp)
    80005360:	00813a83          	ld	s5,8(sp)
    80005364:	00013b03          	ld	s6,0(sp)
    80005368:	04010113          	addi	sp,sp,64
    8000536c:	00008067          	ret
    80005370:	00001517          	auipc	a0,0x1
    80005374:	38850513          	addi	a0,a0,904 # 800066f8 <digits+0x18>
    80005378:	fffff097          	auipc	ra,0xfffff
    8000537c:	3d4080e7          	jalr	980(ra) # 8000474c <panic>

0000000080005380 <kfree>:
    80005380:	fe010113          	addi	sp,sp,-32
    80005384:	00813823          	sd	s0,16(sp)
    80005388:	00113c23          	sd	ra,24(sp)
    8000538c:	00913423          	sd	s1,8(sp)
    80005390:	02010413          	addi	s0,sp,32
    80005394:	03451793          	slli	a5,a0,0x34
    80005398:	04079c63          	bnez	a5,800053f0 <kfree+0x70>
    8000539c:	00003797          	auipc	a5,0x3
    800053a0:	1a478793          	addi	a5,a5,420 # 80008540 <end>
    800053a4:	00050493          	mv	s1,a0
    800053a8:	04f56463          	bltu	a0,a5,800053f0 <kfree+0x70>
    800053ac:	01100793          	li	a5,17
    800053b0:	01b79793          	slli	a5,a5,0x1b
    800053b4:	02f57e63          	bgeu	a0,a5,800053f0 <kfree+0x70>
    800053b8:	00001637          	lui	a2,0x1
    800053bc:	00100593          	li	a1,1
    800053c0:	00000097          	auipc	ra,0x0
    800053c4:	478080e7          	jalr	1144(ra) # 80005838 <__memset>
    800053c8:	00002797          	auipc	a5,0x2
    800053cc:	eb878793          	addi	a5,a5,-328 # 80007280 <kmem>
    800053d0:	0007b703          	ld	a4,0(a5)
    800053d4:	01813083          	ld	ra,24(sp)
    800053d8:	01013403          	ld	s0,16(sp)
    800053dc:	00e4b023          	sd	a4,0(s1)
    800053e0:	0097b023          	sd	s1,0(a5)
    800053e4:	00813483          	ld	s1,8(sp)
    800053e8:	02010113          	addi	sp,sp,32
    800053ec:	00008067          	ret
    800053f0:	00001517          	auipc	a0,0x1
    800053f4:	30850513          	addi	a0,a0,776 # 800066f8 <digits+0x18>
    800053f8:	fffff097          	auipc	ra,0xfffff
    800053fc:	354080e7          	jalr	852(ra) # 8000474c <panic>

0000000080005400 <kalloc>:
    80005400:	fe010113          	addi	sp,sp,-32
    80005404:	00813823          	sd	s0,16(sp)
    80005408:	00913423          	sd	s1,8(sp)
    8000540c:	00113c23          	sd	ra,24(sp)
    80005410:	02010413          	addi	s0,sp,32
    80005414:	00002797          	auipc	a5,0x2
    80005418:	e6c78793          	addi	a5,a5,-404 # 80007280 <kmem>
    8000541c:	0007b483          	ld	s1,0(a5)
    80005420:	02048063          	beqz	s1,80005440 <kalloc+0x40>
    80005424:	0004b703          	ld	a4,0(s1)
    80005428:	00001637          	lui	a2,0x1
    8000542c:	00500593          	li	a1,5
    80005430:	00048513          	mv	a0,s1
    80005434:	00e7b023          	sd	a4,0(a5)
    80005438:	00000097          	auipc	ra,0x0
    8000543c:	400080e7          	jalr	1024(ra) # 80005838 <__memset>
    80005440:	01813083          	ld	ra,24(sp)
    80005444:	01013403          	ld	s0,16(sp)
    80005448:	00048513          	mv	a0,s1
    8000544c:	00813483          	ld	s1,8(sp)
    80005450:	02010113          	addi	sp,sp,32
    80005454:	00008067          	ret

0000000080005458 <initlock>:
    80005458:	ff010113          	addi	sp,sp,-16
    8000545c:	00813423          	sd	s0,8(sp)
    80005460:	01010413          	addi	s0,sp,16
    80005464:	00813403          	ld	s0,8(sp)
    80005468:	00b53423          	sd	a1,8(a0)
    8000546c:	00052023          	sw	zero,0(a0)
    80005470:	00053823          	sd	zero,16(a0)
    80005474:	01010113          	addi	sp,sp,16
    80005478:	00008067          	ret

000000008000547c <acquire>:
    8000547c:	fe010113          	addi	sp,sp,-32
    80005480:	00813823          	sd	s0,16(sp)
    80005484:	00913423          	sd	s1,8(sp)
    80005488:	00113c23          	sd	ra,24(sp)
    8000548c:	01213023          	sd	s2,0(sp)
    80005490:	02010413          	addi	s0,sp,32
    80005494:	00050493          	mv	s1,a0
    80005498:	10002973          	csrr	s2,sstatus
    8000549c:	100027f3          	csrr	a5,sstatus
    800054a0:	ffd7f793          	andi	a5,a5,-3
    800054a4:	10079073          	csrw	sstatus,a5
    800054a8:	fffff097          	auipc	ra,0xfffff
    800054ac:	8e0080e7          	jalr	-1824(ra) # 80003d88 <mycpu>
    800054b0:	07852783          	lw	a5,120(a0)
    800054b4:	06078e63          	beqz	a5,80005530 <acquire+0xb4>
    800054b8:	fffff097          	auipc	ra,0xfffff
    800054bc:	8d0080e7          	jalr	-1840(ra) # 80003d88 <mycpu>
    800054c0:	07852783          	lw	a5,120(a0)
    800054c4:	0004a703          	lw	a4,0(s1)
    800054c8:	0017879b          	addiw	a5,a5,1
    800054cc:	06f52c23          	sw	a5,120(a0)
    800054d0:	04071063          	bnez	a4,80005510 <acquire+0x94>
    800054d4:	00100713          	li	a4,1
    800054d8:	00070793          	mv	a5,a4
    800054dc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800054e0:	0007879b          	sext.w	a5,a5
    800054e4:	fe079ae3          	bnez	a5,800054d8 <acquire+0x5c>
    800054e8:	0ff0000f          	fence
    800054ec:	fffff097          	auipc	ra,0xfffff
    800054f0:	89c080e7          	jalr	-1892(ra) # 80003d88 <mycpu>
    800054f4:	01813083          	ld	ra,24(sp)
    800054f8:	01013403          	ld	s0,16(sp)
    800054fc:	00a4b823          	sd	a0,16(s1)
    80005500:	00013903          	ld	s2,0(sp)
    80005504:	00813483          	ld	s1,8(sp)
    80005508:	02010113          	addi	sp,sp,32
    8000550c:	00008067          	ret
    80005510:	0104b903          	ld	s2,16(s1)
    80005514:	fffff097          	auipc	ra,0xfffff
    80005518:	874080e7          	jalr	-1932(ra) # 80003d88 <mycpu>
    8000551c:	faa91ce3          	bne	s2,a0,800054d4 <acquire+0x58>
    80005520:	00001517          	auipc	a0,0x1
    80005524:	1e050513          	addi	a0,a0,480 # 80006700 <digits+0x20>
    80005528:	fffff097          	auipc	ra,0xfffff
    8000552c:	224080e7          	jalr	548(ra) # 8000474c <panic>
    80005530:	00195913          	srli	s2,s2,0x1
    80005534:	fffff097          	auipc	ra,0xfffff
    80005538:	854080e7          	jalr	-1964(ra) # 80003d88 <mycpu>
    8000553c:	00197913          	andi	s2,s2,1
    80005540:	07252e23          	sw	s2,124(a0)
    80005544:	f75ff06f          	j	800054b8 <acquire+0x3c>

0000000080005548 <release>:
    80005548:	fe010113          	addi	sp,sp,-32
    8000554c:	00813823          	sd	s0,16(sp)
    80005550:	00113c23          	sd	ra,24(sp)
    80005554:	00913423          	sd	s1,8(sp)
    80005558:	01213023          	sd	s2,0(sp)
    8000555c:	02010413          	addi	s0,sp,32
    80005560:	00052783          	lw	a5,0(a0)
    80005564:	00079a63          	bnez	a5,80005578 <release+0x30>
    80005568:	00001517          	auipc	a0,0x1
    8000556c:	1a050513          	addi	a0,a0,416 # 80006708 <digits+0x28>
    80005570:	fffff097          	auipc	ra,0xfffff
    80005574:	1dc080e7          	jalr	476(ra) # 8000474c <panic>
    80005578:	01053903          	ld	s2,16(a0)
    8000557c:	00050493          	mv	s1,a0
    80005580:	fffff097          	auipc	ra,0xfffff
    80005584:	808080e7          	jalr	-2040(ra) # 80003d88 <mycpu>
    80005588:	fea910e3          	bne	s2,a0,80005568 <release+0x20>
    8000558c:	0004b823          	sd	zero,16(s1)
    80005590:	0ff0000f          	fence
    80005594:	0f50000f          	fence	iorw,ow
    80005598:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000559c:	ffffe097          	auipc	ra,0xffffe
    800055a0:	7ec080e7          	jalr	2028(ra) # 80003d88 <mycpu>
    800055a4:	100027f3          	csrr	a5,sstatus
    800055a8:	0027f793          	andi	a5,a5,2
    800055ac:	04079a63          	bnez	a5,80005600 <release+0xb8>
    800055b0:	07852783          	lw	a5,120(a0)
    800055b4:	02f05e63          	blez	a5,800055f0 <release+0xa8>
    800055b8:	fff7871b          	addiw	a4,a5,-1
    800055bc:	06e52c23          	sw	a4,120(a0)
    800055c0:	00071c63          	bnez	a4,800055d8 <release+0x90>
    800055c4:	07c52783          	lw	a5,124(a0)
    800055c8:	00078863          	beqz	a5,800055d8 <release+0x90>
    800055cc:	100027f3          	csrr	a5,sstatus
    800055d0:	0027e793          	ori	a5,a5,2
    800055d4:	10079073          	csrw	sstatus,a5
    800055d8:	01813083          	ld	ra,24(sp)
    800055dc:	01013403          	ld	s0,16(sp)
    800055e0:	00813483          	ld	s1,8(sp)
    800055e4:	00013903          	ld	s2,0(sp)
    800055e8:	02010113          	addi	sp,sp,32
    800055ec:	00008067          	ret
    800055f0:	00001517          	auipc	a0,0x1
    800055f4:	13850513          	addi	a0,a0,312 # 80006728 <digits+0x48>
    800055f8:	fffff097          	auipc	ra,0xfffff
    800055fc:	154080e7          	jalr	340(ra) # 8000474c <panic>
    80005600:	00001517          	auipc	a0,0x1
    80005604:	11050513          	addi	a0,a0,272 # 80006710 <digits+0x30>
    80005608:	fffff097          	auipc	ra,0xfffff
    8000560c:	144080e7          	jalr	324(ra) # 8000474c <panic>

0000000080005610 <holding>:
    80005610:	00052783          	lw	a5,0(a0)
    80005614:	00079663          	bnez	a5,80005620 <holding+0x10>
    80005618:	00000513          	li	a0,0
    8000561c:	00008067          	ret
    80005620:	fe010113          	addi	sp,sp,-32
    80005624:	00813823          	sd	s0,16(sp)
    80005628:	00913423          	sd	s1,8(sp)
    8000562c:	00113c23          	sd	ra,24(sp)
    80005630:	02010413          	addi	s0,sp,32
    80005634:	01053483          	ld	s1,16(a0)
    80005638:	ffffe097          	auipc	ra,0xffffe
    8000563c:	750080e7          	jalr	1872(ra) # 80003d88 <mycpu>
    80005640:	01813083          	ld	ra,24(sp)
    80005644:	01013403          	ld	s0,16(sp)
    80005648:	40a48533          	sub	a0,s1,a0
    8000564c:	00153513          	seqz	a0,a0
    80005650:	00813483          	ld	s1,8(sp)
    80005654:	02010113          	addi	sp,sp,32
    80005658:	00008067          	ret

000000008000565c <push_off>:
    8000565c:	fe010113          	addi	sp,sp,-32
    80005660:	00813823          	sd	s0,16(sp)
    80005664:	00113c23          	sd	ra,24(sp)
    80005668:	00913423          	sd	s1,8(sp)
    8000566c:	02010413          	addi	s0,sp,32
    80005670:	100024f3          	csrr	s1,sstatus
    80005674:	100027f3          	csrr	a5,sstatus
    80005678:	ffd7f793          	andi	a5,a5,-3
    8000567c:	10079073          	csrw	sstatus,a5
    80005680:	ffffe097          	auipc	ra,0xffffe
    80005684:	708080e7          	jalr	1800(ra) # 80003d88 <mycpu>
    80005688:	07852783          	lw	a5,120(a0)
    8000568c:	02078663          	beqz	a5,800056b8 <push_off+0x5c>
    80005690:	ffffe097          	auipc	ra,0xffffe
    80005694:	6f8080e7          	jalr	1784(ra) # 80003d88 <mycpu>
    80005698:	07852783          	lw	a5,120(a0)
    8000569c:	01813083          	ld	ra,24(sp)
    800056a0:	01013403          	ld	s0,16(sp)
    800056a4:	0017879b          	addiw	a5,a5,1
    800056a8:	06f52c23          	sw	a5,120(a0)
    800056ac:	00813483          	ld	s1,8(sp)
    800056b0:	02010113          	addi	sp,sp,32
    800056b4:	00008067          	ret
    800056b8:	0014d493          	srli	s1,s1,0x1
    800056bc:	ffffe097          	auipc	ra,0xffffe
    800056c0:	6cc080e7          	jalr	1740(ra) # 80003d88 <mycpu>
    800056c4:	0014f493          	andi	s1,s1,1
    800056c8:	06952e23          	sw	s1,124(a0)
    800056cc:	fc5ff06f          	j	80005690 <push_off+0x34>

00000000800056d0 <pop_off>:
    800056d0:	ff010113          	addi	sp,sp,-16
    800056d4:	00813023          	sd	s0,0(sp)
    800056d8:	00113423          	sd	ra,8(sp)
    800056dc:	01010413          	addi	s0,sp,16
    800056e0:	ffffe097          	auipc	ra,0xffffe
    800056e4:	6a8080e7          	jalr	1704(ra) # 80003d88 <mycpu>
    800056e8:	100027f3          	csrr	a5,sstatus
    800056ec:	0027f793          	andi	a5,a5,2
    800056f0:	04079663          	bnez	a5,8000573c <pop_off+0x6c>
    800056f4:	07852783          	lw	a5,120(a0)
    800056f8:	02f05a63          	blez	a5,8000572c <pop_off+0x5c>
    800056fc:	fff7871b          	addiw	a4,a5,-1
    80005700:	06e52c23          	sw	a4,120(a0)
    80005704:	00071c63          	bnez	a4,8000571c <pop_off+0x4c>
    80005708:	07c52783          	lw	a5,124(a0)
    8000570c:	00078863          	beqz	a5,8000571c <pop_off+0x4c>
    80005710:	100027f3          	csrr	a5,sstatus
    80005714:	0027e793          	ori	a5,a5,2
    80005718:	10079073          	csrw	sstatus,a5
    8000571c:	00813083          	ld	ra,8(sp)
    80005720:	00013403          	ld	s0,0(sp)
    80005724:	01010113          	addi	sp,sp,16
    80005728:	00008067          	ret
    8000572c:	00001517          	auipc	a0,0x1
    80005730:	ffc50513          	addi	a0,a0,-4 # 80006728 <digits+0x48>
    80005734:	fffff097          	auipc	ra,0xfffff
    80005738:	018080e7          	jalr	24(ra) # 8000474c <panic>
    8000573c:	00001517          	auipc	a0,0x1
    80005740:	fd450513          	addi	a0,a0,-44 # 80006710 <digits+0x30>
    80005744:	fffff097          	auipc	ra,0xfffff
    80005748:	008080e7          	jalr	8(ra) # 8000474c <panic>

000000008000574c <push_on>:
    8000574c:	fe010113          	addi	sp,sp,-32
    80005750:	00813823          	sd	s0,16(sp)
    80005754:	00113c23          	sd	ra,24(sp)
    80005758:	00913423          	sd	s1,8(sp)
    8000575c:	02010413          	addi	s0,sp,32
    80005760:	100024f3          	csrr	s1,sstatus
    80005764:	100027f3          	csrr	a5,sstatus
    80005768:	0027e793          	ori	a5,a5,2
    8000576c:	10079073          	csrw	sstatus,a5
    80005770:	ffffe097          	auipc	ra,0xffffe
    80005774:	618080e7          	jalr	1560(ra) # 80003d88 <mycpu>
    80005778:	07852783          	lw	a5,120(a0)
    8000577c:	02078663          	beqz	a5,800057a8 <push_on+0x5c>
    80005780:	ffffe097          	auipc	ra,0xffffe
    80005784:	608080e7          	jalr	1544(ra) # 80003d88 <mycpu>
    80005788:	07852783          	lw	a5,120(a0)
    8000578c:	01813083          	ld	ra,24(sp)
    80005790:	01013403          	ld	s0,16(sp)
    80005794:	0017879b          	addiw	a5,a5,1
    80005798:	06f52c23          	sw	a5,120(a0)
    8000579c:	00813483          	ld	s1,8(sp)
    800057a0:	02010113          	addi	sp,sp,32
    800057a4:	00008067          	ret
    800057a8:	0014d493          	srli	s1,s1,0x1
    800057ac:	ffffe097          	auipc	ra,0xffffe
    800057b0:	5dc080e7          	jalr	1500(ra) # 80003d88 <mycpu>
    800057b4:	0014f493          	andi	s1,s1,1
    800057b8:	06952e23          	sw	s1,124(a0)
    800057bc:	fc5ff06f          	j	80005780 <push_on+0x34>

00000000800057c0 <pop_on>:
    800057c0:	ff010113          	addi	sp,sp,-16
    800057c4:	00813023          	sd	s0,0(sp)
    800057c8:	00113423          	sd	ra,8(sp)
    800057cc:	01010413          	addi	s0,sp,16
    800057d0:	ffffe097          	auipc	ra,0xffffe
    800057d4:	5b8080e7          	jalr	1464(ra) # 80003d88 <mycpu>
    800057d8:	100027f3          	csrr	a5,sstatus
    800057dc:	0027f793          	andi	a5,a5,2
    800057e0:	04078463          	beqz	a5,80005828 <pop_on+0x68>
    800057e4:	07852783          	lw	a5,120(a0)
    800057e8:	02f05863          	blez	a5,80005818 <pop_on+0x58>
    800057ec:	fff7879b          	addiw	a5,a5,-1
    800057f0:	06f52c23          	sw	a5,120(a0)
    800057f4:	07853783          	ld	a5,120(a0)
    800057f8:	00079863          	bnez	a5,80005808 <pop_on+0x48>
    800057fc:	100027f3          	csrr	a5,sstatus
    80005800:	ffd7f793          	andi	a5,a5,-3
    80005804:	10079073          	csrw	sstatus,a5
    80005808:	00813083          	ld	ra,8(sp)
    8000580c:	00013403          	ld	s0,0(sp)
    80005810:	01010113          	addi	sp,sp,16
    80005814:	00008067          	ret
    80005818:	00001517          	auipc	a0,0x1
    8000581c:	f3850513          	addi	a0,a0,-200 # 80006750 <digits+0x70>
    80005820:	fffff097          	auipc	ra,0xfffff
    80005824:	f2c080e7          	jalr	-212(ra) # 8000474c <panic>
    80005828:	00001517          	auipc	a0,0x1
    8000582c:	f0850513          	addi	a0,a0,-248 # 80006730 <digits+0x50>
    80005830:	fffff097          	auipc	ra,0xfffff
    80005834:	f1c080e7          	jalr	-228(ra) # 8000474c <panic>

0000000080005838 <__memset>:
    80005838:	ff010113          	addi	sp,sp,-16
    8000583c:	00813423          	sd	s0,8(sp)
    80005840:	01010413          	addi	s0,sp,16
    80005844:	1a060e63          	beqz	a2,80005a00 <__memset+0x1c8>
    80005848:	40a007b3          	neg	a5,a0
    8000584c:	0077f793          	andi	a5,a5,7
    80005850:	00778693          	addi	a3,a5,7
    80005854:	00b00813          	li	a6,11
    80005858:	0ff5f593          	andi	a1,a1,255
    8000585c:	fff6071b          	addiw	a4,a2,-1
    80005860:	1b06e663          	bltu	a3,a6,80005a0c <__memset+0x1d4>
    80005864:	1cd76463          	bltu	a4,a3,80005a2c <__memset+0x1f4>
    80005868:	1a078e63          	beqz	a5,80005a24 <__memset+0x1ec>
    8000586c:	00b50023          	sb	a1,0(a0)
    80005870:	00100713          	li	a4,1
    80005874:	1ae78463          	beq	a5,a4,80005a1c <__memset+0x1e4>
    80005878:	00b500a3          	sb	a1,1(a0)
    8000587c:	00200713          	li	a4,2
    80005880:	1ae78a63          	beq	a5,a4,80005a34 <__memset+0x1fc>
    80005884:	00b50123          	sb	a1,2(a0)
    80005888:	00300713          	li	a4,3
    8000588c:	18e78463          	beq	a5,a4,80005a14 <__memset+0x1dc>
    80005890:	00b501a3          	sb	a1,3(a0)
    80005894:	00400713          	li	a4,4
    80005898:	1ae78263          	beq	a5,a4,80005a3c <__memset+0x204>
    8000589c:	00b50223          	sb	a1,4(a0)
    800058a0:	00500713          	li	a4,5
    800058a4:	1ae78063          	beq	a5,a4,80005a44 <__memset+0x20c>
    800058a8:	00b502a3          	sb	a1,5(a0)
    800058ac:	00700713          	li	a4,7
    800058b0:	18e79e63          	bne	a5,a4,80005a4c <__memset+0x214>
    800058b4:	00b50323          	sb	a1,6(a0)
    800058b8:	00700e93          	li	t4,7
    800058bc:	00859713          	slli	a4,a1,0x8
    800058c0:	00e5e733          	or	a4,a1,a4
    800058c4:	01059e13          	slli	t3,a1,0x10
    800058c8:	01c76e33          	or	t3,a4,t3
    800058cc:	01859313          	slli	t1,a1,0x18
    800058d0:	006e6333          	or	t1,t3,t1
    800058d4:	02059893          	slli	a7,a1,0x20
    800058d8:	40f60e3b          	subw	t3,a2,a5
    800058dc:	011368b3          	or	a7,t1,a7
    800058e0:	02859813          	slli	a6,a1,0x28
    800058e4:	0108e833          	or	a6,a7,a6
    800058e8:	03059693          	slli	a3,a1,0x30
    800058ec:	003e589b          	srliw	a7,t3,0x3
    800058f0:	00d866b3          	or	a3,a6,a3
    800058f4:	03859713          	slli	a4,a1,0x38
    800058f8:	00389813          	slli	a6,a7,0x3
    800058fc:	00f507b3          	add	a5,a0,a5
    80005900:	00e6e733          	or	a4,a3,a4
    80005904:	000e089b          	sext.w	a7,t3
    80005908:	00f806b3          	add	a3,a6,a5
    8000590c:	00e7b023          	sd	a4,0(a5)
    80005910:	00878793          	addi	a5,a5,8
    80005914:	fed79ce3          	bne	a5,a3,8000590c <__memset+0xd4>
    80005918:	ff8e7793          	andi	a5,t3,-8
    8000591c:	0007871b          	sext.w	a4,a5
    80005920:	01d787bb          	addw	a5,a5,t4
    80005924:	0ce88e63          	beq	a7,a4,80005a00 <__memset+0x1c8>
    80005928:	00f50733          	add	a4,a0,a5
    8000592c:	00b70023          	sb	a1,0(a4)
    80005930:	0017871b          	addiw	a4,a5,1
    80005934:	0cc77663          	bgeu	a4,a2,80005a00 <__memset+0x1c8>
    80005938:	00e50733          	add	a4,a0,a4
    8000593c:	00b70023          	sb	a1,0(a4)
    80005940:	0027871b          	addiw	a4,a5,2
    80005944:	0ac77e63          	bgeu	a4,a2,80005a00 <__memset+0x1c8>
    80005948:	00e50733          	add	a4,a0,a4
    8000594c:	00b70023          	sb	a1,0(a4)
    80005950:	0037871b          	addiw	a4,a5,3
    80005954:	0ac77663          	bgeu	a4,a2,80005a00 <__memset+0x1c8>
    80005958:	00e50733          	add	a4,a0,a4
    8000595c:	00b70023          	sb	a1,0(a4)
    80005960:	0047871b          	addiw	a4,a5,4
    80005964:	08c77e63          	bgeu	a4,a2,80005a00 <__memset+0x1c8>
    80005968:	00e50733          	add	a4,a0,a4
    8000596c:	00b70023          	sb	a1,0(a4)
    80005970:	0057871b          	addiw	a4,a5,5
    80005974:	08c77663          	bgeu	a4,a2,80005a00 <__memset+0x1c8>
    80005978:	00e50733          	add	a4,a0,a4
    8000597c:	00b70023          	sb	a1,0(a4)
    80005980:	0067871b          	addiw	a4,a5,6
    80005984:	06c77e63          	bgeu	a4,a2,80005a00 <__memset+0x1c8>
    80005988:	00e50733          	add	a4,a0,a4
    8000598c:	00b70023          	sb	a1,0(a4)
    80005990:	0077871b          	addiw	a4,a5,7
    80005994:	06c77663          	bgeu	a4,a2,80005a00 <__memset+0x1c8>
    80005998:	00e50733          	add	a4,a0,a4
    8000599c:	00b70023          	sb	a1,0(a4)
    800059a0:	0087871b          	addiw	a4,a5,8
    800059a4:	04c77e63          	bgeu	a4,a2,80005a00 <__memset+0x1c8>
    800059a8:	00e50733          	add	a4,a0,a4
    800059ac:	00b70023          	sb	a1,0(a4)
    800059b0:	0097871b          	addiw	a4,a5,9
    800059b4:	04c77663          	bgeu	a4,a2,80005a00 <__memset+0x1c8>
    800059b8:	00e50733          	add	a4,a0,a4
    800059bc:	00b70023          	sb	a1,0(a4)
    800059c0:	00a7871b          	addiw	a4,a5,10
    800059c4:	02c77e63          	bgeu	a4,a2,80005a00 <__memset+0x1c8>
    800059c8:	00e50733          	add	a4,a0,a4
    800059cc:	00b70023          	sb	a1,0(a4)
    800059d0:	00b7871b          	addiw	a4,a5,11
    800059d4:	02c77663          	bgeu	a4,a2,80005a00 <__memset+0x1c8>
    800059d8:	00e50733          	add	a4,a0,a4
    800059dc:	00b70023          	sb	a1,0(a4)
    800059e0:	00c7871b          	addiw	a4,a5,12
    800059e4:	00c77e63          	bgeu	a4,a2,80005a00 <__memset+0x1c8>
    800059e8:	00e50733          	add	a4,a0,a4
    800059ec:	00b70023          	sb	a1,0(a4)
    800059f0:	00d7879b          	addiw	a5,a5,13
    800059f4:	00c7f663          	bgeu	a5,a2,80005a00 <__memset+0x1c8>
    800059f8:	00f507b3          	add	a5,a0,a5
    800059fc:	00b78023          	sb	a1,0(a5)
    80005a00:	00813403          	ld	s0,8(sp)
    80005a04:	01010113          	addi	sp,sp,16
    80005a08:	00008067          	ret
    80005a0c:	00b00693          	li	a3,11
    80005a10:	e55ff06f          	j	80005864 <__memset+0x2c>
    80005a14:	00300e93          	li	t4,3
    80005a18:	ea5ff06f          	j	800058bc <__memset+0x84>
    80005a1c:	00100e93          	li	t4,1
    80005a20:	e9dff06f          	j	800058bc <__memset+0x84>
    80005a24:	00000e93          	li	t4,0
    80005a28:	e95ff06f          	j	800058bc <__memset+0x84>
    80005a2c:	00000793          	li	a5,0
    80005a30:	ef9ff06f          	j	80005928 <__memset+0xf0>
    80005a34:	00200e93          	li	t4,2
    80005a38:	e85ff06f          	j	800058bc <__memset+0x84>
    80005a3c:	00400e93          	li	t4,4
    80005a40:	e7dff06f          	j	800058bc <__memset+0x84>
    80005a44:	00500e93          	li	t4,5
    80005a48:	e75ff06f          	j	800058bc <__memset+0x84>
    80005a4c:	00600e93          	li	t4,6
    80005a50:	e6dff06f          	j	800058bc <__memset+0x84>

0000000080005a54 <__memmove>:
    80005a54:	ff010113          	addi	sp,sp,-16
    80005a58:	00813423          	sd	s0,8(sp)
    80005a5c:	01010413          	addi	s0,sp,16
    80005a60:	0e060863          	beqz	a2,80005b50 <__memmove+0xfc>
    80005a64:	fff6069b          	addiw	a3,a2,-1
    80005a68:	0006881b          	sext.w	a6,a3
    80005a6c:	0ea5e863          	bltu	a1,a0,80005b5c <__memmove+0x108>
    80005a70:	00758713          	addi	a4,a1,7
    80005a74:	00a5e7b3          	or	a5,a1,a0
    80005a78:	40a70733          	sub	a4,a4,a0
    80005a7c:	0077f793          	andi	a5,a5,7
    80005a80:	00f73713          	sltiu	a4,a4,15
    80005a84:	00174713          	xori	a4,a4,1
    80005a88:	0017b793          	seqz	a5,a5
    80005a8c:	00e7f7b3          	and	a5,a5,a4
    80005a90:	10078863          	beqz	a5,80005ba0 <__memmove+0x14c>
    80005a94:	00900793          	li	a5,9
    80005a98:	1107f463          	bgeu	a5,a6,80005ba0 <__memmove+0x14c>
    80005a9c:	0036581b          	srliw	a6,a2,0x3
    80005aa0:	fff8081b          	addiw	a6,a6,-1
    80005aa4:	02081813          	slli	a6,a6,0x20
    80005aa8:	01d85893          	srli	a7,a6,0x1d
    80005aac:	00858813          	addi	a6,a1,8
    80005ab0:	00058793          	mv	a5,a1
    80005ab4:	00050713          	mv	a4,a0
    80005ab8:	01088833          	add	a6,a7,a6
    80005abc:	0007b883          	ld	a7,0(a5)
    80005ac0:	00878793          	addi	a5,a5,8
    80005ac4:	00870713          	addi	a4,a4,8
    80005ac8:	ff173c23          	sd	a7,-8(a4)
    80005acc:	ff0798e3          	bne	a5,a6,80005abc <__memmove+0x68>
    80005ad0:	ff867713          	andi	a4,a2,-8
    80005ad4:	02071793          	slli	a5,a4,0x20
    80005ad8:	0207d793          	srli	a5,a5,0x20
    80005adc:	00f585b3          	add	a1,a1,a5
    80005ae0:	40e686bb          	subw	a3,a3,a4
    80005ae4:	00f507b3          	add	a5,a0,a5
    80005ae8:	06e60463          	beq	a2,a4,80005b50 <__memmove+0xfc>
    80005aec:	0005c703          	lbu	a4,0(a1)
    80005af0:	00e78023          	sb	a4,0(a5)
    80005af4:	04068e63          	beqz	a3,80005b50 <__memmove+0xfc>
    80005af8:	0015c603          	lbu	a2,1(a1)
    80005afc:	00100713          	li	a4,1
    80005b00:	00c780a3          	sb	a2,1(a5)
    80005b04:	04e68663          	beq	a3,a4,80005b50 <__memmove+0xfc>
    80005b08:	0025c603          	lbu	a2,2(a1)
    80005b0c:	00200713          	li	a4,2
    80005b10:	00c78123          	sb	a2,2(a5)
    80005b14:	02e68e63          	beq	a3,a4,80005b50 <__memmove+0xfc>
    80005b18:	0035c603          	lbu	a2,3(a1)
    80005b1c:	00300713          	li	a4,3
    80005b20:	00c781a3          	sb	a2,3(a5)
    80005b24:	02e68663          	beq	a3,a4,80005b50 <__memmove+0xfc>
    80005b28:	0045c603          	lbu	a2,4(a1)
    80005b2c:	00400713          	li	a4,4
    80005b30:	00c78223          	sb	a2,4(a5)
    80005b34:	00e68e63          	beq	a3,a4,80005b50 <__memmove+0xfc>
    80005b38:	0055c603          	lbu	a2,5(a1)
    80005b3c:	00500713          	li	a4,5
    80005b40:	00c782a3          	sb	a2,5(a5)
    80005b44:	00e68663          	beq	a3,a4,80005b50 <__memmove+0xfc>
    80005b48:	0065c703          	lbu	a4,6(a1)
    80005b4c:	00e78323          	sb	a4,6(a5)
    80005b50:	00813403          	ld	s0,8(sp)
    80005b54:	01010113          	addi	sp,sp,16
    80005b58:	00008067          	ret
    80005b5c:	02061713          	slli	a4,a2,0x20
    80005b60:	02075713          	srli	a4,a4,0x20
    80005b64:	00e587b3          	add	a5,a1,a4
    80005b68:	f0f574e3          	bgeu	a0,a5,80005a70 <__memmove+0x1c>
    80005b6c:	02069613          	slli	a2,a3,0x20
    80005b70:	02065613          	srli	a2,a2,0x20
    80005b74:	fff64613          	not	a2,a2
    80005b78:	00e50733          	add	a4,a0,a4
    80005b7c:	00c78633          	add	a2,a5,a2
    80005b80:	fff7c683          	lbu	a3,-1(a5)
    80005b84:	fff78793          	addi	a5,a5,-1
    80005b88:	fff70713          	addi	a4,a4,-1
    80005b8c:	00d70023          	sb	a3,0(a4)
    80005b90:	fec798e3          	bne	a5,a2,80005b80 <__memmove+0x12c>
    80005b94:	00813403          	ld	s0,8(sp)
    80005b98:	01010113          	addi	sp,sp,16
    80005b9c:	00008067          	ret
    80005ba0:	02069713          	slli	a4,a3,0x20
    80005ba4:	02075713          	srli	a4,a4,0x20
    80005ba8:	00170713          	addi	a4,a4,1
    80005bac:	00e50733          	add	a4,a0,a4
    80005bb0:	00050793          	mv	a5,a0
    80005bb4:	0005c683          	lbu	a3,0(a1)
    80005bb8:	00178793          	addi	a5,a5,1
    80005bbc:	00158593          	addi	a1,a1,1
    80005bc0:	fed78fa3          	sb	a3,-1(a5)
    80005bc4:	fee798e3          	bne	a5,a4,80005bb4 <__memmove+0x160>
    80005bc8:	f89ff06f          	j	80005b50 <__memmove+0xfc>

0000000080005bcc <__mem_free>:
    80005bcc:	ff010113          	addi	sp,sp,-16
    80005bd0:	00813423          	sd	s0,8(sp)
    80005bd4:	01010413          	addi	s0,sp,16
    80005bd8:	00001597          	auipc	a1,0x1
    80005bdc:	6b058593          	addi	a1,a1,1712 # 80007288 <freep>
    80005be0:	0005b783          	ld	a5,0(a1)
    80005be4:	ff050693          	addi	a3,a0,-16
    80005be8:	0007b703          	ld	a4,0(a5)
    80005bec:	00d7fc63          	bgeu	a5,a3,80005c04 <__mem_free+0x38>
    80005bf0:	00e6ee63          	bltu	a3,a4,80005c0c <__mem_free+0x40>
    80005bf4:	00e7fc63          	bgeu	a5,a4,80005c0c <__mem_free+0x40>
    80005bf8:	00070793          	mv	a5,a4
    80005bfc:	0007b703          	ld	a4,0(a5)
    80005c00:	fed7e8e3          	bltu	a5,a3,80005bf0 <__mem_free+0x24>
    80005c04:	fee7eae3          	bltu	a5,a4,80005bf8 <__mem_free+0x2c>
    80005c08:	fee6f8e3          	bgeu	a3,a4,80005bf8 <__mem_free+0x2c>
    80005c0c:	ff852803          	lw	a6,-8(a0)
    80005c10:	02081613          	slli	a2,a6,0x20
    80005c14:	01c65613          	srli	a2,a2,0x1c
    80005c18:	00c68633          	add	a2,a3,a2
    80005c1c:	02c70a63          	beq	a4,a2,80005c50 <__mem_free+0x84>
    80005c20:	fee53823          	sd	a4,-16(a0)
    80005c24:	0087a503          	lw	a0,8(a5)
    80005c28:	02051613          	slli	a2,a0,0x20
    80005c2c:	01c65613          	srli	a2,a2,0x1c
    80005c30:	00c78633          	add	a2,a5,a2
    80005c34:	04c68263          	beq	a3,a2,80005c78 <__mem_free+0xac>
    80005c38:	00813403          	ld	s0,8(sp)
    80005c3c:	00d7b023          	sd	a3,0(a5)
    80005c40:	00f5b023          	sd	a5,0(a1)
    80005c44:	00000513          	li	a0,0
    80005c48:	01010113          	addi	sp,sp,16
    80005c4c:	00008067          	ret
    80005c50:	00872603          	lw	a2,8(a4)
    80005c54:	00073703          	ld	a4,0(a4)
    80005c58:	0106083b          	addw	a6,a2,a6
    80005c5c:	ff052c23          	sw	a6,-8(a0)
    80005c60:	fee53823          	sd	a4,-16(a0)
    80005c64:	0087a503          	lw	a0,8(a5)
    80005c68:	02051613          	slli	a2,a0,0x20
    80005c6c:	01c65613          	srli	a2,a2,0x1c
    80005c70:	00c78633          	add	a2,a5,a2
    80005c74:	fcc692e3          	bne	a3,a2,80005c38 <__mem_free+0x6c>
    80005c78:	00813403          	ld	s0,8(sp)
    80005c7c:	0105053b          	addw	a0,a0,a6
    80005c80:	00a7a423          	sw	a0,8(a5)
    80005c84:	00e7b023          	sd	a4,0(a5)
    80005c88:	00f5b023          	sd	a5,0(a1)
    80005c8c:	00000513          	li	a0,0
    80005c90:	01010113          	addi	sp,sp,16
    80005c94:	00008067          	ret

0000000080005c98 <__mem_alloc>:
    80005c98:	fc010113          	addi	sp,sp,-64
    80005c9c:	02813823          	sd	s0,48(sp)
    80005ca0:	02913423          	sd	s1,40(sp)
    80005ca4:	03213023          	sd	s2,32(sp)
    80005ca8:	01513423          	sd	s5,8(sp)
    80005cac:	02113c23          	sd	ra,56(sp)
    80005cb0:	01313c23          	sd	s3,24(sp)
    80005cb4:	01413823          	sd	s4,16(sp)
    80005cb8:	01613023          	sd	s6,0(sp)
    80005cbc:	04010413          	addi	s0,sp,64
    80005cc0:	00001a97          	auipc	s5,0x1
    80005cc4:	5c8a8a93          	addi	s5,s5,1480 # 80007288 <freep>
    80005cc8:	00f50913          	addi	s2,a0,15
    80005ccc:	000ab683          	ld	a3,0(s5)
    80005cd0:	00495913          	srli	s2,s2,0x4
    80005cd4:	0019049b          	addiw	s1,s2,1
    80005cd8:	00048913          	mv	s2,s1
    80005cdc:	0c068c63          	beqz	a3,80005db4 <__mem_alloc+0x11c>
    80005ce0:	0006b503          	ld	a0,0(a3)
    80005ce4:	00852703          	lw	a4,8(a0)
    80005ce8:	10977063          	bgeu	a4,s1,80005de8 <__mem_alloc+0x150>
    80005cec:	000017b7          	lui	a5,0x1
    80005cf0:	0009099b          	sext.w	s3,s2
    80005cf4:	0af4e863          	bltu	s1,a5,80005da4 <__mem_alloc+0x10c>
    80005cf8:	02099a13          	slli	s4,s3,0x20
    80005cfc:	01ca5a13          	srli	s4,s4,0x1c
    80005d00:	fff00b13          	li	s6,-1
    80005d04:	0100006f          	j	80005d14 <__mem_alloc+0x7c>
    80005d08:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80005d0c:	00852703          	lw	a4,8(a0)
    80005d10:	04977463          	bgeu	a4,s1,80005d58 <__mem_alloc+0xc0>
    80005d14:	00050793          	mv	a5,a0
    80005d18:	fea698e3          	bne	a3,a0,80005d08 <__mem_alloc+0x70>
    80005d1c:	000a0513          	mv	a0,s4
    80005d20:	00000097          	auipc	ra,0x0
    80005d24:	1f0080e7          	jalr	496(ra) # 80005f10 <kvmincrease>
    80005d28:	00050793          	mv	a5,a0
    80005d2c:	01050513          	addi	a0,a0,16
    80005d30:	07678e63          	beq	a5,s6,80005dac <__mem_alloc+0x114>
    80005d34:	0137a423          	sw	s3,8(a5)
    80005d38:	00000097          	auipc	ra,0x0
    80005d3c:	e94080e7          	jalr	-364(ra) # 80005bcc <__mem_free>
    80005d40:	000ab783          	ld	a5,0(s5)
    80005d44:	06078463          	beqz	a5,80005dac <__mem_alloc+0x114>
    80005d48:	0007b503          	ld	a0,0(a5)
    80005d4c:	00078693          	mv	a3,a5
    80005d50:	00852703          	lw	a4,8(a0)
    80005d54:	fc9760e3          	bltu	a4,s1,80005d14 <__mem_alloc+0x7c>
    80005d58:	08e48263          	beq	s1,a4,80005ddc <__mem_alloc+0x144>
    80005d5c:	4127073b          	subw	a4,a4,s2
    80005d60:	02071693          	slli	a3,a4,0x20
    80005d64:	01c6d693          	srli	a3,a3,0x1c
    80005d68:	00e52423          	sw	a4,8(a0)
    80005d6c:	00d50533          	add	a0,a0,a3
    80005d70:	01252423          	sw	s2,8(a0)
    80005d74:	00fab023          	sd	a5,0(s5)
    80005d78:	01050513          	addi	a0,a0,16
    80005d7c:	03813083          	ld	ra,56(sp)
    80005d80:	03013403          	ld	s0,48(sp)
    80005d84:	02813483          	ld	s1,40(sp)
    80005d88:	02013903          	ld	s2,32(sp)
    80005d8c:	01813983          	ld	s3,24(sp)
    80005d90:	01013a03          	ld	s4,16(sp)
    80005d94:	00813a83          	ld	s5,8(sp)
    80005d98:	00013b03          	ld	s6,0(sp)
    80005d9c:	04010113          	addi	sp,sp,64
    80005da0:	00008067          	ret
    80005da4:	000019b7          	lui	s3,0x1
    80005da8:	f51ff06f          	j	80005cf8 <__mem_alloc+0x60>
    80005dac:	00000513          	li	a0,0
    80005db0:	fcdff06f          	j	80005d7c <__mem_alloc+0xe4>
    80005db4:	00002797          	auipc	a5,0x2
    80005db8:	77c78793          	addi	a5,a5,1916 # 80008530 <base>
    80005dbc:	00078513          	mv	a0,a5
    80005dc0:	00fab023          	sd	a5,0(s5)
    80005dc4:	00f7b023          	sd	a5,0(a5)
    80005dc8:	00000713          	li	a4,0
    80005dcc:	00002797          	auipc	a5,0x2
    80005dd0:	7607a623          	sw	zero,1900(a5) # 80008538 <base+0x8>
    80005dd4:	00050693          	mv	a3,a0
    80005dd8:	f11ff06f          	j	80005ce8 <__mem_alloc+0x50>
    80005ddc:	00053703          	ld	a4,0(a0)
    80005de0:	00e7b023          	sd	a4,0(a5)
    80005de4:	f91ff06f          	j	80005d74 <__mem_alloc+0xdc>
    80005de8:	00068793          	mv	a5,a3
    80005dec:	f6dff06f          	j	80005d58 <__mem_alloc+0xc0>

0000000080005df0 <__putc>:
    80005df0:	fe010113          	addi	sp,sp,-32
    80005df4:	00813823          	sd	s0,16(sp)
    80005df8:	00113c23          	sd	ra,24(sp)
    80005dfc:	02010413          	addi	s0,sp,32
    80005e00:	00050793          	mv	a5,a0
    80005e04:	fef40593          	addi	a1,s0,-17
    80005e08:	00100613          	li	a2,1
    80005e0c:	00000513          	li	a0,0
    80005e10:	fef407a3          	sb	a5,-17(s0)
    80005e14:	fffff097          	auipc	ra,0xfffff
    80005e18:	918080e7          	jalr	-1768(ra) # 8000472c <console_write>
    80005e1c:	01813083          	ld	ra,24(sp)
    80005e20:	01013403          	ld	s0,16(sp)
    80005e24:	02010113          	addi	sp,sp,32
    80005e28:	00008067          	ret

0000000080005e2c <__getc>:
    80005e2c:	fe010113          	addi	sp,sp,-32
    80005e30:	00813823          	sd	s0,16(sp)
    80005e34:	00113c23          	sd	ra,24(sp)
    80005e38:	02010413          	addi	s0,sp,32
    80005e3c:	fe840593          	addi	a1,s0,-24
    80005e40:	00100613          	li	a2,1
    80005e44:	00000513          	li	a0,0
    80005e48:	fffff097          	auipc	ra,0xfffff
    80005e4c:	8c4080e7          	jalr	-1852(ra) # 8000470c <console_read>
    80005e50:	fe844503          	lbu	a0,-24(s0)
    80005e54:	01813083          	ld	ra,24(sp)
    80005e58:	01013403          	ld	s0,16(sp)
    80005e5c:	02010113          	addi	sp,sp,32
    80005e60:	00008067          	ret

0000000080005e64 <console_handler>:
    80005e64:	fe010113          	addi	sp,sp,-32
    80005e68:	00813823          	sd	s0,16(sp)
    80005e6c:	00113c23          	sd	ra,24(sp)
    80005e70:	00913423          	sd	s1,8(sp)
    80005e74:	02010413          	addi	s0,sp,32
    80005e78:	14202773          	csrr	a4,scause
    80005e7c:	100027f3          	csrr	a5,sstatus
    80005e80:	0027f793          	andi	a5,a5,2
    80005e84:	06079e63          	bnez	a5,80005f00 <console_handler+0x9c>
    80005e88:	00074c63          	bltz	a4,80005ea0 <console_handler+0x3c>
    80005e8c:	01813083          	ld	ra,24(sp)
    80005e90:	01013403          	ld	s0,16(sp)
    80005e94:	00813483          	ld	s1,8(sp)
    80005e98:	02010113          	addi	sp,sp,32
    80005e9c:	00008067          	ret
    80005ea0:	0ff77713          	andi	a4,a4,255
    80005ea4:	00900793          	li	a5,9
    80005ea8:	fef712e3          	bne	a4,a5,80005e8c <console_handler+0x28>
    80005eac:	ffffe097          	auipc	ra,0xffffe
    80005eb0:	4b8080e7          	jalr	1208(ra) # 80004364 <plic_claim>
    80005eb4:	00a00793          	li	a5,10
    80005eb8:	00050493          	mv	s1,a0
    80005ebc:	02f50c63          	beq	a0,a5,80005ef4 <console_handler+0x90>
    80005ec0:	fc0506e3          	beqz	a0,80005e8c <console_handler+0x28>
    80005ec4:	00050593          	mv	a1,a0
    80005ec8:	00000517          	auipc	a0,0x0
    80005ecc:	79050513          	addi	a0,a0,1936 # 80006658 <_ZZ12printIntegermE6digits+0xe0>
    80005ed0:	fffff097          	auipc	ra,0xfffff
    80005ed4:	8d8080e7          	jalr	-1832(ra) # 800047a8 <__printf>
    80005ed8:	01013403          	ld	s0,16(sp)
    80005edc:	01813083          	ld	ra,24(sp)
    80005ee0:	00048513          	mv	a0,s1
    80005ee4:	00813483          	ld	s1,8(sp)
    80005ee8:	02010113          	addi	sp,sp,32
    80005eec:	ffffe317          	auipc	t1,0xffffe
    80005ef0:	4b030067          	jr	1200(t1) # 8000439c <plic_complete>
    80005ef4:	fffff097          	auipc	ra,0xfffff
    80005ef8:	1bc080e7          	jalr	444(ra) # 800050b0 <uartintr>
    80005efc:	fddff06f          	j	80005ed8 <console_handler+0x74>
    80005f00:	00001517          	auipc	a0,0x1
    80005f04:	85850513          	addi	a0,a0,-1960 # 80006758 <digits+0x78>
    80005f08:	fffff097          	auipc	ra,0xfffff
    80005f0c:	844080e7          	jalr	-1980(ra) # 8000474c <panic>

0000000080005f10 <kvmincrease>:
    80005f10:	fe010113          	addi	sp,sp,-32
    80005f14:	01213023          	sd	s2,0(sp)
    80005f18:	00001937          	lui	s2,0x1
    80005f1c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80005f20:	00813823          	sd	s0,16(sp)
    80005f24:	00113c23          	sd	ra,24(sp)
    80005f28:	00913423          	sd	s1,8(sp)
    80005f2c:	02010413          	addi	s0,sp,32
    80005f30:	01250933          	add	s2,a0,s2
    80005f34:	00c95913          	srli	s2,s2,0xc
    80005f38:	02090863          	beqz	s2,80005f68 <kvmincrease+0x58>
    80005f3c:	00000493          	li	s1,0
    80005f40:	00148493          	addi	s1,s1,1
    80005f44:	fffff097          	auipc	ra,0xfffff
    80005f48:	4bc080e7          	jalr	1212(ra) # 80005400 <kalloc>
    80005f4c:	fe991ae3          	bne	s2,s1,80005f40 <kvmincrease+0x30>
    80005f50:	01813083          	ld	ra,24(sp)
    80005f54:	01013403          	ld	s0,16(sp)
    80005f58:	00813483          	ld	s1,8(sp)
    80005f5c:	00013903          	ld	s2,0(sp)
    80005f60:	02010113          	addi	sp,sp,32
    80005f64:	00008067          	ret
    80005f68:	01813083          	ld	ra,24(sp)
    80005f6c:	01013403          	ld	s0,16(sp)
    80005f70:	00813483          	ld	s1,8(sp)
    80005f74:	00013903          	ld	s2,0(sp)
    80005f78:	00000513          	li	a0,0
    80005f7c:	02010113          	addi	sp,sp,32
    80005f80:	00008067          	ret
	...
