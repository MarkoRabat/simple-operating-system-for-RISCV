
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	0d813103          	ld	sp,216(sp) # 800070d8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	229030ef          	jal	ra,80003a44 <start>

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
    80001084:	5d8020ef          	jal	ra,8000365c <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001144:	a8c080e7          	jalr	-1396(ra) # 80001bcc <_ZN3TCB12createThreadEPFvvE>
    80001148:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    8000114c:	00006797          	auipc	a5,0x6
    80001150:	f947b783          	ld	a5,-108(a5) # 800070e0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001154:	00a7b023          	sd	a0,0(a5)

    threads[1] = TCB::createThread(workerBodyA);
    80001158:	00006517          	auipc	a0,0x6
    8000115c:	f7853503          	ld	a0,-136(a0) # 800070d0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001160:	00001097          	auipc	ra,0x1
    80001164:	a6c080e7          	jalr	-1428(ra) # 80001bcc <_ZN3TCB12createThreadEPFvvE>
    80001168:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    8000116c:	00005517          	auipc	a0,0x5
    80001170:	eb450513          	addi	a0,a0,-332 # 80006020 <CONSOLE_STATUS+0x10>
    80001174:	00002097          	auipc	ra,0x2
    80001178:	758080e7          	jalr	1880(ra) # 800038cc <_Z11printStringPKc>
    threads[2] = TCB::createThread(workerBodyB);
    8000117c:	00006517          	auipc	a0,0x6
    80001180:	f3c53503          	ld	a0,-196(a0) # 800070b8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001184:	00001097          	auipc	ra,0x1
    80001188:	a48080e7          	jalr	-1464(ra) # 80001bcc <_ZN3TCB12createThreadEPFvvE>
    8000118c:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    80001190:	00005517          	auipc	a0,0x5
    80001194:	ea850513          	addi	a0,a0,-344 # 80006038 <CONSOLE_STATUS+0x28>
    80001198:	00002097          	auipc	ra,0x2
    8000119c:	734080e7          	jalr	1844(ra) # 800038cc <_Z11printStringPKc>
    threads[3] = TCB::createThread(workerBodyC);
    800011a0:	00006517          	auipc	a0,0x6
    800011a4:	f5053503          	ld	a0,-176(a0) # 800070f0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800011a8:	00001097          	auipc	ra,0x1
    800011ac:	a24080e7          	jalr	-1500(ra) # 80001bcc <_ZN3TCB12createThreadEPFvvE>
    800011b0:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    800011b4:	00005517          	auipc	a0,0x5
    800011b8:	e9c50513          	addi	a0,a0,-356 # 80006050 <CONSOLE_STATUS+0x40>
    800011bc:	00002097          	auipc	ra,0x2
    800011c0:	710080e7          	jalr	1808(ra) # 800038cc <_Z11printStringPKc>
    threads[4] = TCB::createThread(workerBodyD);
    800011c4:	00006517          	auipc	a0,0x6
    800011c8:	f3453503          	ld	a0,-204(a0) # 800070f8 <_GLOBAL_OFFSET_TABLE_+0x60>
    800011cc:	00001097          	auipc	ra,0x1
    800011d0:	a00080e7          	jalr	-1536(ra) # 80001bcc <_ZN3TCB12createThreadEPFvvE>
    800011d4:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    800011d8:	00005517          	auipc	a0,0x5
    800011dc:	e9050513          	addi	a0,a0,-368 # 80006068 <CONSOLE_STATUS+0x58>
    800011e0:	00002097          	auipc	ra,0x2
    800011e4:	6ec080e7          	jalr	1772(ra) # 800038cc <_Z11printStringPKc>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800011e8:	00006797          	auipc	a5,0x6
    800011ec:	ec87b783          	ld	a5,-312(a5) # 800070b0 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80001204:	a94080e7          	jalr	-1388(ra) # 80001c94 <_ZN3TCB5yieldEv>
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
    80001248:	15c080e7          	jalr	348(ra) # 800033a0 <_ZdlPv>
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
    8000126c:	160080e7          	jalr	352(ra) # 800033c8 <_ZdaPv>
    80001270:	fd1ff06f          	j	80001240 <_Z5main2v+0x11c>
    }
    printString("Finished\n");
    80001274:	00005517          	auipc	a0,0x5
    80001278:	e0c50513          	addi	a0,a0,-500 # 80006080 <CONSOLE_STATUS+0x70>
    8000127c:	00002097          	auipc	ra,0x2
    80001280:	650080e7          	jalr	1616(ra) # 800038cc <_Z11printStringPKc>

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
    80001308:	00001097          	auipc	ra,0x1
    8000130c:	98c080e7          	jalr	-1652(ra) # 80001c94 <_ZN3TCB5yieldEv>
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
    80001370:	560080e7          	jalr	1376(ra) # 800038cc <_Z11printStringPKc>
        printInteger(i);
    80001374:	00048513          	mv	a0,s1
    80001378:	00002097          	auipc	ra,0x2
    8000137c:	5c4080e7          	jalr	1476(ra) # 8000393c <_Z12printIntegerm>
        printString("\n");
    80001380:	00005517          	auipc	a0,0x5
    80001384:	d0850513          	addi	a0,a0,-760 # 80006088 <CONSOLE_STATUS+0x78>
    80001388:	00002097          	auipc	ra,0x2
    8000138c:	544080e7          	jalr	1348(ra) # 800038cc <_Z11printStringPKc>
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
    80001408:	4c8080e7          	jalr	1224(ra) # 800038cc <_Z11printStringPKc>
        printInteger(i);
    8000140c:	00048513          	mv	a0,s1
    80001410:	00002097          	auipc	ra,0x2
    80001414:	52c080e7          	jalr	1324(ra) # 8000393c <_Z12printIntegerm>
        printString("\n");
    80001418:	00005517          	auipc	a0,0x5
    8000141c:	c7050513          	addi	a0,a0,-912 # 80006088 <CONSOLE_STATUS+0x78>
    80001420:	00002097          	auipc	ra,0x2
    80001424:	4ac080e7          	jalr	1196(ra) # 800038cc <_Z11printStringPKc>
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
    80001470:	460080e7          	jalr	1120(ra) # 800038cc <_Z11printStringPKc>
        printInteger(i);
    80001474:	00048513          	mv	a0,s1
    80001478:	00002097          	auipc	ra,0x2
    8000147c:	4c4080e7          	jalr	1220(ra) # 8000393c <_Z12printIntegerm>
        printString("\n");
    80001480:	00005517          	auipc	a0,0x5
    80001484:	c0850513          	addi	a0,a0,-1016 # 80006088 <CONSOLE_STATUS+0x78>
    80001488:	00002097          	auipc	ra,0x2
    8000148c:	444080e7          	jalr	1092(ra) # 800038cc <_Z11printStringPKc>
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
    800014ac:	424080e7          	jalr	1060(ra) # 800038cc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800014b0:	00700313          	li	t1,7
    TCB::yield();
    800014b4:	00000097          	auipc	ra,0x0
    800014b8:	7e0080e7          	jalr	2016(ra) # 80001c94 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800014bc:	00030913          	mv	s2,t1

    printString("C: t1=");
    800014c0:	00005517          	auipc	a0,0x5
    800014c4:	bf850513          	addi	a0,a0,-1032 # 800060b8 <CONSOLE_STATUS+0xa8>
    800014c8:	00002097          	auipc	ra,0x2
    800014cc:	404080e7          	jalr	1028(ra) # 800038cc <_Z11printStringPKc>
    printInteger(t1);
    800014d0:	00090513          	mv	a0,s2
    800014d4:	00002097          	auipc	ra,0x2
    800014d8:	468080e7          	jalr	1128(ra) # 8000393c <_Z12printIntegerm>
    printString("\n");
    800014dc:	00005517          	auipc	a0,0x5
    800014e0:	bac50513          	addi	a0,a0,-1108 # 80006088 <CONSOLE_STATUS+0x78>
    800014e4:	00002097          	auipc	ra,0x2
    800014e8:	3e8080e7          	jalr	1000(ra) # 800038cc <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800014ec:	00c00513          	li	a0,12
    800014f0:	00000097          	auipc	ra,0x0
    800014f4:	db0080e7          	jalr	-592(ra) # 800012a0 <_ZL9fibonaccim>
    800014f8:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800014fc:	00005517          	auipc	a0,0x5
    80001500:	bc450513          	addi	a0,a0,-1084 # 800060c0 <CONSOLE_STATUS+0xb0>
    80001504:	00002097          	auipc	ra,0x2
    80001508:	3c8080e7          	jalr	968(ra) # 800038cc <_Z11printStringPKc>
    printInteger(result);
    8000150c:	00090513          	mv	a0,s2
    80001510:	00002097          	auipc	ra,0x2
    80001514:	42c080e7          	jalr	1068(ra) # 8000393c <_Z12printIntegerm>
    printString("\n");
    80001518:	00005517          	auipc	a0,0x5
    8000151c:	b7050513          	addi	a0,a0,-1168 # 80006088 <CONSOLE_STATUS+0x78>
    80001520:	00002097          	auipc	ra,0x2
    80001524:	3ac080e7          	jalr	940(ra) # 800038cc <_Z11printStringPKc>
    80001528:	0380006f          	j	80001560 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    8000152c:	00005517          	auipc	a0,0x5
    80001530:	b7450513          	addi	a0,a0,-1164 # 800060a0 <CONSOLE_STATUS+0x90>
    80001534:	00002097          	auipc	ra,0x2
    80001538:	398080e7          	jalr	920(ra) # 800038cc <_Z11printStringPKc>
        printInteger(i);
    8000153c:	00048513          	mv	a0,s1
    80001540:	00002097          	auipc	ra,0x2
    80001544:	3fc080e7          	jalr	1020(ra) # 8000393c <_Z12printIntegerm>
        printString("\n");
    80001548:	00005517          	auipc	a0,0x5
    8000154c:	b4050513          	addi	a0,a0,-1216 # 80006088 <CONSOLE_STATUS+0x78>
    80001550:	00002097          	auipc	ra,0x2
    80001554:	37c080e7          	jalr	892(ra) # 800038cc <_Z11printStringPKc>
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
    800015ac:	324080e7          	jalr	804(ra) # 800038cc <_Z11printStringPKc>
        printInteger(i);
    800015b0:	00048513          	mv	a0,s1
    800015b4:	00002097          	auipc	ra,0x2
    800015b8:	388080e7          	jalr	904(ra) # 8000393c <_Z12printIntegerm>
        printString("\n");
    800015bc:	00005517          	auipc	a0,0x5
    800015c0:	acc50513          	addi	a0,a0,-1332 # 80006088 <CONSOLE_STATUS+0x78>
    800015c4:	00002097          	auipc	ra,0x2
    800015c8:	308080e7          	jalr	776(ra) # 800038cc <_Z11printStringPKc>
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
    800015e8:	2e8080e7          	jalr	744(ra) # 800038cc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800015ec:	00500313          	li	t1,5
    TCB::yield();
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	6a4080e7          	jalr	1700(ra) # 80001c94 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    800015f8:	01000513          	li	a0,16
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	ca4080e7          	jalr	-860(ra) # 800012a0 <_ZL9fibonaccim>
    80001604:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001608:	00005517          	auipc	a0,0x5
    8000160c:	ae050513          	addi	a0,a0,-1312 # 800060e8 <CONSOLE_STATUS+0xd8>
    80001610:	00002097          	auipc	ra,0x2
    80001614:	2bc080e7          	jalr	700(ra) # 800038cc <_Z11printStringPKc>
    printInteger(result);
    80001618:	00090513          	mv	a0,s2
    8000161c:	00002097          	auipc	ra,0x2
    80001620:	320080e7          	jalr	800(ra) # 8000393c <_Z12printIntegerm>
    printString("\n");
    80001624:	00005517          	auipc	a0,0x5
    80001628:	a6450513          	addi	a0,a0,-1436 # 80006088 <CONSOLE_STATUS+0x78>
    8000162c:	00002097          	auipc	ra,0x2
    80001630:	2a0080e7          	jalr	672(ra) # 800038cc <_Z11printStringPKc>
    80001634:	0380006f          	j	8000166c <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    80001638:	00005517          	auipc	a0,0x5
    8000163c:	a9850513          	addi	a0,a0,-1384 # 800060d0 <CONSOLE_STATUS+0xc0>
    80001640:	00002097          	auipc	ra,0x2
    80001644:	28c080e7          	jalr	652(ra) # 800038cc <_Z11printStringPKc>
        printInteger(i);
    80001648:	00048513          	mv	a0,s1
    8000164c:	00002097          	auipc	ra,0x2
    80001650:	2f0080e7          	jalr	752(ra) # 8000393c <_Z12printIntegerm>
        printString("\n");
    80001654:	00005517          	auipc	a0,0x5
    80001658:	a3450513          	addi	a0,a0,-1484 # 80006088 <CONSOLE_STATUS+0x78>
    8000165c:	00002097          	auipc	ra,0x2
    80001660:	270080e7          	jalr	624(ra) # 800038cc <_Z11printStringPKc>
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
#include "../h/print.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/memoryAllocatorTest.hpp"
#include "../h/kObjectAllocator.hpp"

int main() {
    8000168c:	f6010113          	addi	sp,sp,-160
    80001690:	08113c23          	sd	ra,152(sp)
    80001694:	08813823          	sd	s0,144(sp)
    80001698:	08913423          	sd	s1,136(sp)
    8000169c:	09213023          	sd	s2,128(sp)
    800016a0:	07313c23          	sd	s3,120(sp)
    800016a4:	07413823          	sd	s4,112(sp)
    800016a8:	07513423          	sd	s5,104(sp)
    800016ac:	07613023          	sd	s6,96(sp)
    800016b0:	05713c23          	sd	s7,88(sp)
    800016b4:	05813823          	sd	s8,80(sp)
    800016b8:	05913423          	sd	s9,72(sp)
    800016bc:	05a13023          	sd	s10,64(sp)
    800016c0:	03b13c23          	sd	s11,56(sp)
    800016c4:	0a010413          	addi	s0,sp,160

    uint64* arr = (uint64*) MemoryAllocator::instance()->kmem_alloc(64 * 100);
    800016c8:	00000097          	auipc	ra,0x0
    800016cc:	7a0080e7          	jalr	1952(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    800016d0:	000025b7          	lui	a1,0x2
    800016d4:	90058593          	addi	a1,a1,-1792 # 1900 <_entry-0x7fffe700>
    800016d8:	00001097          	auipc	ra,0x1
    800016dc:	874080e7          	jalr	-1932(ra) # 80001f4c <_ZN15MemoryAllocator10kmem_allocEm>
    800016e0:	00050493          	mv	s1,a0
    for (int i = 0; i < 100; ++i) arr[i] = (uint64) -1;
    800016e4:	00000793          	li	a5,0
    800016e8:	06300713          	li	a4,99
    800016ec:	00f74e63          	blt	a4,a5,80001708 <main+0x7c>
    800016f0:	00379713          	slli	a4,a5,0x3
    800016f4:	00e48733          	add	a4,s1,a4
    800016f8:	fff00693          	li	a3,-1
    800016fc:	00d73023          	sd	a3,0(a4)
    80001700:	0017879b          	addiw	a5,a5,1
    80001704:	fe5ff06f          	j	800016e8 <main+0x5c>
    MemoryAllocator::instance()->kmem_free(arr);
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	760080e7          	jalr	1888(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80001710:	00048593          	mv	a1,s1
    80001714:	00001097          	auipc	ra,0x1
    80001718:	8e0080e7          	jalr	-1824(ra) # 80001ff4 <_ZN15MemoryAllocator9kmem_freeEPv>
        );
        objectVector = bitVector + memoryForBits;
        for (size_t i = 0; i < memoryForBits; bitVector[i++] = 0);
    }
    void* operator new(size_t size) {
        return MemoryAllocator::instance()->kmem_alloc(size);
    8000171c:	00000097          	auipc	ra,0x0
    80001720:	74c080e7          	jalr	1868(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80001724:	02800593          	li	a1,40
    80001728:	00001097          	auipc	ra,0x1
    8000172c:	824080e7          	jalr	-2012(ra) # 80001f4c <_ZN15MemoryAllocator10kmem_allocEm>
    80001730:	00050493          	mv	s1,a0
    KObjectAllocator(size_t objectSize) : objectSize(objectSize) {
    80001734:	00100793          	li	a5,1
    80001738:	00f53023          	sd	a5,0(a0)
    8000173c:	14000793          	li	a5,320
    80001740:	00f53423          	sd	a5,8(a0)
    80001744:	02800793          	li	a5,40
    80001748:	00f53823          	sd	a5,16(a0)
        bitVector = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    8000174c:	00000097          	auipc	ra,0x0
    80001750:	71c080e7          	jalr	1820(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
            memoryForBits + initialObjectNumber * objectSize
    80001754:	0104b583          	ld	a1,16(s1)
    80001758:	0084b783          	ld	a5,8(s1)
        bitVector = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    8000175c:	00f585b3          	add	a1,a1,a5
    80001760:	00000097          	auipc	ra,0x0
    80001764:	7ec080e7          	jalr	2028(ra) # 80001f4c <_ZN15MemoryAllocator10kmem_allocEm>
    80001768:	02a4b023          	sd	a0,32(s1)
        objectVector = bitVector + memoryForBits;
    8000176c:	0104b783          	ld	a5,16(s1)
    80001770:	00f50533          	add	a0,a0,a5
    80001774:	00a4bc23          	sd	a0,24(s1)
        for (size_t i = 0; i < memoryForBits; bitVector[i++] = 0);
    80001778:	00000793          	li	a5,0
    8000177c:	0104b703          	ld	a4,16(s1)
    80001780:	00e7fc63          	bgeu	a5,a4,80001798 <main+0x10c>
    80001784:	0204b703          	ld	a4,32(s1)
    80001788:	00f70733          	add	a4,a4,a5
    8000178c:	00070023          	sb	zero,0(a4)
    80001790:	00178793          	addi	a5,a5,1
    80001794:	fe9ff06f          	j	8000177c <main+0xf0>

    KObjectAllocator* newObj = new KObjectAllocator(1);
    uint8* i0 = (uint8*) newObj->allocateNewObject();
    80001798:	00048513          	mv	a0,s1
    8000179c:	00002097          	auipc	ra,0x2
    800017a0:	dcc080e7          	jalr	-564(ra) # 80003568 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800017a4:	00050993          	mv	s3,a0
    uint8* i1 = (uint8*) newObj->allocateNewObject();
    800017a8:	00048513          	mv	a0,s1
    800017ac:	00002097          	auipc	ra,0x2
    800017b0:	dbc080e7          	jalr	-580(ra) # 80003568 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800017b4:	00050d93          	mv	s11,a0
    uint8* i2 = (uint8*) newObj->allocateNewObject();
    800017b8:	00048513          	mv	a0,s1
    800017bc:	00002097          	auipc	ra,0x2
    800017c0:	dac080e7          	jalr	-596(ra) # 80003568 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800017c4:	00050d13          	mv	s10,a0
    uint8* i3 = (uint8*) newObj->allocateNewObject();
    800017c8:	00048513          	mv	a0,s1
    800017cc:	00002097          	auipc	ra,0x2
    800017d0:	d9c080e7          	jalr	-612(ra) # 80003568 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800017d4:	00050c93          	mv	s9,a0
    uint8* i4 = (uint8*) newObj->allocateNewObject();
    800017d8:	00048513          	mv	a0,s1
    800017dc:	00002097          	auipc	ra,0x2
    800017e0:	d8c080e7          	jalr	-628(ra) # 80003568 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800017e4:	00050c13          	mv	s8,a0
    uint8* i5 = (uint8*) newObj->allocateNewObject();
    800017e8:	00048513          	mv	a0,s1
    800017ec:	00002097          	auipc	ra,0x2
    800017f0:	d7c080e7          	jalr	-644(ra) # 80003568 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800017f4:	00050b93          	mv	s7,a0
    uint8* i6 = (uint8*) newObj->allocateNewObject();
    800017f8:	00048513          	mv	a0,s1
    800017fc:	00002097          	auipc	ra,0x2
    80001800:	d6c080e7          	jalr	-660(ra) # 80003568 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80001804:	00050b13          	mv	s6,a0
    uint8* i7 = (uint8*) newObj->allocateNewObject();
    80001808:	00048513          	mv	a0,s1
    8000180c:	00002097          	auipc	ra,0x2
    80001810:	d5c080e7          	jalr	-676(ra) # 80003568 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80001814:	00050a93          	mv	s5,a0
    uint8* i8 = (uint8*) newObj->allocateNewObject();
    80001818:	00048513          	mv	a0,s1
    8000181c:	00002097          	auipc	ra,0x2
    80001820:	d4c080e7          	jalr	-692(ra) # 80003568 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80001824:	00050a13          	mv	s4,a0
    uint8* i9 = (uint8*) newObj->allocateNewObject();
    80001828:	00048513          	mv	a0,s1
    8000182c:	00002097          	auipc	ra,0x2
    80001830:	d3c080e7          	jalr	-708(ra) # 80003568 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80001834:	f6a43c23          	sd	a0,-136(s0)
    uint8* i10 = (uint8*) newObj->allocateNewObject();
    80001838:	00048513          	mv	a0,s1
    8000183c:	00002097          	auipc	ra,0x2
    80001840:	d2c080e7          	jalr	-724(ra) # 80003568 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80001844:	f6a43823          	sd	a0,-144(s0)
    uint8* i11 = (uint8*) newObj->allocateNewObject();
    80001848:	00048513          	mv	a0,s1
    8000184c:	00002097          	auipc	ra,0x2
    80001850:	d1c080e7          	jalr	-740(ra) # 80003568 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80001854:	f6a43423          	sd	a0,-152(s0)
    uint8* i12 = (uint8*) newObj->allocateNewObject();
    80001858:	00048513          	mv	a0,s1
    8000185c:	00002097          	auipc	ra,0x2
    80001860:	d0c080e7          	jalr	-756(ra) # 80003568 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80001864:	f6a43023          	sd	a0,-160(s0)

    *i0 = 1; printString("i: "); printInteger((uint64) i0); printString("\n");
    80001868:	00100913          	li	s2,1
    8000186c:	01298023          	sb	s2,0(s3)
    80001870:	00005517          	auipc	a0,0x5
    80001874:	88850513          	addi	a0,a0,-1912 # 800060f8 <CONSOLE_STATUS+0xe8>
    80001878:	00002097          	auipc	ra,0x2
    8000187c:	054080e7          	jalr	84(ra) # 800038cc <_Z11printStringPKc>
    80001880:	00098513          	mv	a0,s3
    80001884:	00002097          	auipc	ra,0x2
    80001888:	0b8080e7          	jalr	184(ra) # 8000393c <_Z12printIntegerm>
    8000188c:	00004517          	auipc	a0,0x4
    80001890:	7fc50513          	addi	a0,a0,2044 # 80006088 <CONSOLE_STATUS+0x78>
    80001894:	00002097          	auipc	ra,0x2
    80001898:	038080e7          	jalr	56(ra) # 800038cc <_Z11printStringPKc>
    *i1 = 1; printString("i: "); printInteger((uint64) i1); printString("\n");
    8000189c:	012d8023          	sb	s2,0(s11)
    800018a0:	00005517          	auipc	a0,0x5
    800018a4:	85850513          	addi	a0,a0,-1960 # 800060f8 <CONSOLE_STATUS+0xe8>
    800018a8:	00002097          	auipc	ra,0x2
    800018ac:	024080e7          	jalr	36(ra) # 800038cc <_Z11printStringPKc>
    800018b0:	000d8513          	mv	a0,s11
    800018b4:	00002097          	auipc	ra,0x2
    800018b8:	088080e7          	jalr	136(ra) # 8000393c <_Z12printIntegerm>
    800018bc:	00004517          	auipc	a0,0x4
    800018c0:	7cc50513          	addi	a0,a0,1996 # 80006088 <CONSOLE_STATUS+0x78>
    800018c4:	00002097          	auipc	ra,0x2
    800018c8:	008080e7          	jalr	8(ra) # 800038cc <_Z11printStringPKc>
    *i2 = 1; printString("i: "); printInteger((uint64) i2); printString("\n");
    800018cc:	012d0023          	sb	s2,0(s10)
    800018d0:	00005517          	auipc	a0,0x5
    800018d4:	82850513          	addi	a0,a0,-2008 # 800060f8 <CONSOLE_STATUS+0xe8>
    800018d8:	00002097          	auipc	ra,0x2
    800018dc:	ff4080e7          	jalr	-12(ra) # 800038cc <_Z11printStringPKc>
    800018e0:	000d0513          	mv	a0,s10
    800018e4:	00002097          	auipc	ra,0x2
    800018e8:	058080e7          	jalr	88(ra) # 8000393c <_Z12printIntegerm>
    800018ec:	00004517          	auipc	a0,0x4
    800018f0:	79c50513          	addi	a0,a0,1948 # 80006088 <CONSOLE_STATUS+0x78>
    800018f4:	00002097          	auipc	ra,0x2
    800018f8:	fd8080e7          	jalr	-40(ra) # 800038cc <_Z11printStringPKc>
    *i3 = 1; printString("i: "); printInteger((uint64) i3); printString("\n");
    800018fc:	012c8023          	sb	s2,0(s9)
    80001900:	00004517          	auipc	a0,0x4
    80001904:	7f850513          	addi	a0,a0,2040 # 800060f8 <CONSOLE_STATUS+0xe8>
    80001908:	00002097          	auipc	ra,0x2
    8000190c:	fc4080e7          	jalr	-60(ra) # 800038cc <_Z11printStringPKc>
    80001910:	000c8513          	mv	a0,s9
    80001914:	00002097          	auipc	ra,0x2
    80001918:	028080e7          	jalr	40(ra) # 8000393c <_Z12printIntegerm>
    8000191c:	00004517          	auipc	a0,0x4
    80001920:	76c50513          	addi	a0,a0,1900 # 80006088 <CONSOLE_STATUS+0x78>
    80001924:	00002097          	auipc	ra,0x2
    80001928:	fa8080e7          	jalr	-88(ra) # 800038cc <_Z11printStringPKc>
    *i4 = 1; printString("i: "); printInteger((uint64) i4); printString("\n");
    8000192c:	012c0023          	sb	s2,0(s8)
    80001930:	00004517          	auipc	a0,0x4
    80001934:	7c850513          	addi	a0,a0,1992 # 800060f8 <CONSOLE_STATUS+0xe8>
    80001938:	00002097          	auipc	ra,0x2
    8000193c:	f94080e7          	jalr	-108(ra) # 800038cc <_Z11printStringPKc>
    80001940:	000c0513          	mv	a0,s8
    80001944:	00002097          	auipc	ra,0x2
    80001948:	ff8080e7          	jalr	-8(ra) # 8000393c <_Z12printIntegerm>
    8000194c:	00004517          	auipc	a0,0x4
    80001950:	73c50513          	addi	a0,a0,1852 # 80006088 <CONSOLE_STATUS+0x78>
    80001954:	00002097          	auipc	ra,0x2
    80001958:	f78080e7          	jalr	-136(ra) # 800038cc <_Z11printStringPKc>
    *i5 = 1; printString("i: "); printInteger((uint64) i5); printString("\n");
    8000195c:	012b8023          	sb	s2,0(s7)
    80001960:	00004517          	auipc	a0,0x4
    80001964:	79850513          	addi	a0,a0,1944 # 800060f8 <CONSOLE_STATUS+0xe8>
    80001968:	00002097          	auipc	ra,0x2
    8000196c:	f64080e7          	jalr	-156(ra) # 800038cc <_Z11printStringPKc>
    80001970:	000b8513          	mv	a0,s7
    80001974:	00002097          	auipc	ra,0x2
    80001978:	fc8080e7          	jalr	-56(ra) # 8000393c <_Z12printIntegerm>
    8000197c:	00004517          	auipc	a0,0x4
    80001980:	70c50513          	addi	a0,a0,1804 # 80006088 <CONSOLE_STATUS+0x78>
    80001984:	00002097          	auipc	ra,0x2
    80001988:	f48080e7          	jalr	-184(ra) # 800038cc <_Z11printStringPKc>
    *i6 = 1; printString("i: "); printInteger((uint64) i6); printString("\n");
    8000198c:	012b0023          	sb	s2,0(s6)
    80001990:	00004517          	auipc	a0,0x4
    80001994:	76850513          	addi	a0,a0,1896 # 800060f8 <CONSOLE_STATUS+0xe8>
    80001998:	00002097          	auipc	ra,0x2
    8000199c:	f34080e7          	jalr	-204(ra) # 800038cc <_Z11printStringPKc>
    800019a0:	000b0513          	mv	a0,s6
    800019a4:	00002097          	auipc	ra,0x2
    800019a8:	f98080e7          	jalr	-104(ra) # 8000393c <_Z12printIntegerm>
    800019ac:	00004517          	auipc	a0,0x4
    800019b0:	6dc50513          	addi	a0,a0,1756 # 80006088 <CONSOLE_STATUS+0x78>
    800019b4:	00002097          	auipc	ra,0x2
    800019b8:	f18080e7          	jalr	-232(ra) # 800038cc <_Z11printStringPKc>
    *i7 = 1; printString("i: "); printInteger((uint64) i7); printString("\n");
    800019bc:	012a8023          	sb	s2,0(s5)
    800019c0:	00004517          	auipc	a0,0x4
    800019c4:	73850513          	addi	a0,a0,1848 # 800060f8 <CONSOLE_STATUS+0xe8>
    800019c8:	00002097          	auipc	ra,0x2
    800019cc:	f04080e7          	jalr	-252(ra) # 800038cc <_Z11printStringPKc>
    800019d0:	000a8513          	mv	a0,s5
    800019d4:	00002097          	auipc	ra,0x2
    800019d8:	f68080e7          	jalr	-152(ra) # 8000393c <_Z12printIntegerm>
    800019dc:	00004517          	auipc	a0,0x4
    800019e0:	6ac50513          	addi	a0,a0,1708 # 80006088 <CONSOLE_STATUS+0x78>
    800019e4:	00002097          	auipc	ra,0x2
    800019e8:	ee8080e7          	jalr	-280(ra) # 800038cc <_Z11printStringPKc>
    *i8 = 1; printString("i: "); printInteger((uint64) i8); printString("\n");
    800019ec:	012a0023          	sb	s2,0(s4)
    800019f0:	00004517          	auipc	a0,0x4
    800019f4:	70850513          	addi	a0,a0,1800 # 800060f8 <CONSOLE_STATUS+0xe8>
    800019f8:	00002097          	auipc	ra,0x2
    800019fc:	ed4080e7          	jalr	-300(ra) # 800038cc <_Z11printStringPKc>
    80001a00:	000a0513          	mv	a0,s4
    80001a04:	00002097          	auipc	ra,0x2
    80001a08:	f38080e7          	jalr	-200(ra) # 8000393c <_Z12printIntegerm>
    80001a0c:	00004517          	auipc	a0,0x4
    80001a10:	67c50513          	addi	a0,a0,1660 # 80006088 <CONSOLE_STATUS+0x78>
    80001a14:	00002097          	auipc	ra,0x2
    80001a18:	eb8080e7          	jalr	-328(ra) # 800038cc <_Z11printStringPKc>
    *i9 = 1; printString("i: "); printInteger((uint64) i9); printString("\n");
    80001a1c:	f7843b03          	ld	s6,-136(s0)
    80001a20:	012b0023          	sb	s2,0(s6)
    80001a24:	00004517          	auipc	a0,0x4
    80001a28:	6d450513          	addi	a0,a0,1748 # 800060f8 <CONSOLE_STATUS+0xe8>
    80001a2c:	00002097          	auipc	ra,0x2
    80001a30:	ea0080e7          	jalr	-352(ra) # 800038cc <_Z11printStringPKc>
    80001a34:	000b0513          	mv	a0,s6
    80001a38:	00002097          	auipc	ra,0x2
    80001a3c:	f04080e7          	jalr	-252(ra) # 8000393c <_Z12printIntegerm>
    80001a40:	00004517          	auipc	a0,0x4
    80001a44:	64850513          	addi	a0,a0,1608 # 80006088 <CONSOLE_STATUS+0x78>
    80001a48:	00002097          	auipc	ra,0x2
    80001a4c:	e84080e7          	jalr	-380(ra) # 800038cc <_Z11printStringPKc>
    *i10 = 1; printString("i: "); printInteger((uint64) i10); printString("\n");
    80001a50:	f7043b03          	ld	s6,-144(s0)
    80001a54:	012b0023          	sb	s2,0(s6)
    80001a58:	00004517          	auipc	a0,0x4
    80001a5c:	6a050513          	addi	a0,a0,1696 # 800060f8 <CONSOLE_STATUS+0xe8>
    80001a60:	00002097          	auipc	ra,0x2
    80001a64:	e6c080e7          	jalr	-404(ra) # 800038cc <_Z11printStringPKc>
    80001a68:	000b0513          	mv	a0,s6
    80001a6c:	00002097          	auipc	ra,0x2
    80001a70:	ed0080e7          	jalr	-304(ra) # 8000393c <_Z12printIntegerm>
    80001a74:	00004517          	auipc	a0,0x4
    80001a78:	61450513          	addi	a0,a0,1556 # 80006088 <CONSOLE_STATUS+0x78>
    80001a7c:	00002097          	auipc	ra,0x2
    80001a80:	e50080e7          	jalr	-432(ra) # 800038cc <_Z11printStringPKc>
    *i11 = 1; printString("i: "); printInteger((uint64) i11); printString("\n");
    80001a84:	f6843b03          	ld	s6,-152(s0)
    80001a88:	012b0023          	sb	s2,0(s6)
    80001a8c:	00004517          	auipc	a0,0x4
    80001a90:	66c50513          	addi	a0,a0,1644 # 800060f8 <CONSOLE_STATUS+0xe8>
    80001a94:	00002097          	auipc	ra,0x2
    80001a98:	e38080e7          	jalr	-456(ra) # 800038cc <_Z11printStringPKc>
    80001a9c:	000b0513          	mv	a0,s6
    80001aa0:	00002097          	auipc	ra,0x2
    80001aa4:	e9c080e7          	jalr	-356(ra) # 8000393c <_Z12printIntegerm>
    80001aa8:	00004517          	auipc	a0,0x4
    80001aac:	5e050513          	addi	a0,a0,1504 # 80006088 <CONSOLE_STATUS+0x78>
    80001ab0:	00002097          	auipc	ra,0x2
    80001ab4:	e1c080e7          	jalr	-484(ra) # 800038cc <_Z11printStringPKc>
    *i12 = 1; printString("i: "); printInteger((uint64) i12); printString("\n");
    80001ab8:	f6043b03          	ld	s6,-160(s0)
    80001abc:	012b0023          	sb	s2,0(s6)
    80001ac0:	00004517          	auipc	a0,0x4
    80001ac4:	63850513          	addi	a0,a0,1592 # 800060f8 <CONSOLE_STATUS+0xe8>
    80001ac8:	00002097          	auipc	ra,0x2
    80001acc:	e04080e7          	jalr	-508(ra) # 800038cc <_Z11printStringPKc>
    80001ad0:	000b0513          	mv	a0,s6
    80001ad4:	00002097          	auipc	ra,0x2
    80001ad8:	e68080e7          	jalr	-408(ra) # 8000393c <_Z12printIntegerm>
    80001adc:	00004517          	auipc	a0,0x4
    80001ae0:	5ac50513          	addi	a0,a0,1452 # 80006088 <CONSOLE_STATUS+0x78>
    80001ae4:	00002097          	auipc	ra,0x2
    80001ae8:	de8080e7          	jalr	-536(ra) # 800038cc <_Z11printStringPKc>

    newObj->freeObject(i7);
    80001aec:	000a8593          	mv	a1,s5
    80001af0:	00048513          	mv	a0,s1
    80001af4:	00002097          	auipc	ra,0x2
    80001af8:	af8080e7          	jalr	-1288(ra) # 800035ec <_ZN16KObjectAllocator10freeObjectEPv>
    newObj->freeObject(i8);
    80001afc:	000a0593          	mv	a1,s4
    80001b00:	00048513          	mv	a0,s1
    80001b04:	00002097          	auipc	ra,0x2
    80001b08:	ae8080e7          	jalr	-1304(ra) # 800035ec <_ZN16KObjectAllocator10freeObjectEPv>
    newObj->freeObject(i0);
    80001b0c:	00098593          	mv	a1,s3
    80001b10:	00048513          	mv	a0,s1
    80001b14:	00002097          	auipc	ra,0x2
    80001b18:	ad8080e7          	jalr	-1320(ra) # 800035ec <_ZN16KObjectAllocator10freeObjectEPv>

    newObj->printInternalMemory();
    80001b1c:	00048513          	mv	a0,s1
    80001b20:	00002097          	auipc	ra,0x2
    80001b24:	8d0080e7          	jalr	-1840(ra) # 800033f0 <_ZN16KObjectAllocator19printInternalMemoryEv>

    printInteger(sizeof(int));
    80001b28:	00400513          	li	a0,4
    80001b2c:	00002097          	auipc	ra,0x2
    80001b30:	e10080e7          	jalr	-496(ra) # 8000393c <_Z12printIntegerm>

    delete newObj;
    80001b34:	00048c63          	beqz	s1,80001b4c <main+0x4c0>
    }
    void operator delete(void* p) {
        MemoryAllocator::instance()->kmem_free(p);
    80001b38:	00000097          	auipc	ra,0x0
    80001b3c:	330080e7          	jalr	816(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80001b40:	00048593          	mv	a1,s1
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	4b0080e7          	jalr	1200(ra) # 80001ff4 <_ZN15MemoryAllocator9kmem_freeEPv>

    printString("\nMemory tests:\n");
    80001b4c:	00004517          	auipc	a0,0x4
    80001b50:	5b450513          	addi	a0,a0,1460 # 80006100 <CONSOLE_STATUS+0xf0>
    80001b54:	00002097          	auipc	ra,0x2
    80001b58:	d78080e7          	jalr	-648(ra) # 800038cc <_Z11printStringPKc>
    MemoryAllocatorTest t1;
    t1.runTests();
    80001b5c:	f8840513          	addi	a0,s0,-120
    80001b60:	00001097          	auipc	ra,0x1
    80001b64:	5d0080e7          	jalr	1488(ra) # 80003130 <_ZN19MemoryAllocatorTest8runTestsEv>


    return 0;
    80001b68:	00000513          	li	a0,0
    80001b6c:	09813083          	ld	ra,152(sp)
    80001b70:	09013403          	ld	s0,144(sp)
    80001b74:	08813483          	ld	s1,136(sp)
    80001b78:	08013903          	ld	s2,128(sp)
    80001b7c:	07813983          	ld	s3,120(sp)
    80001b80:	07013a03          	ld	s4,112(sp)
    80001b84:	06813a83          	ld	s5,104(sp)
    80001b88:	06013b03          	ld	s6,96(sp)
    80001b8c:	05813b83          	ld	s7,88(sp)
    80001b90:	05013c03          	ld	s8,80(sp)
    80001b94:	04813c83          	ld	s9,72(sp)
    80001b98:	04013d03          	ld	s10,64(sp)
    80001b9c:	03813d83          	ld	s11,56(sp)
    80001ba0:	0a010113          	addi	sp,sp,160
    80001ba4:	00008067          	ret
    80001ba8:	00050913          	mv	s2,a0
    80001bac:	00000097          	auipc	ra,0x0
    80001bb0:	2bc080e7          	jalr	700(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80001bb4:	00048593          	mv	a1,s1
    80001bb8:	00000097          	auipc	ra,0x0
    80001bbc:	43c080e7          	jalr	1084(ra) # 80001ff4 <_ZN15MemoryAllocator9kmem_freeEPv>
    80001bc0:	00090513          	mv	a0,s2
    80001bc4:	00006097          	auipc	ra,0x6
    80001bc8:	694080e7          	jalr	1684(ra) # 80008258 <_Unwind_Resume>

0000000080001bcc <_ZN3TCB12createThreadEPFvvE>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    80001bcc:	fe010113          	addi	sp,sp,-32
    80001bd0:	00113c23          	sd	ra,24(sp)
    80001bd4:	00813823          	sd	s0,16(sp)
    80001bd8:	00913423          	sd	s1,8(sp)
    80001bdc:	01213023          	sd	s2,0(sp)
    80001be0:	02010413          	addi	s0,sp,32
    80001be4:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    80001be8:	03000513          	li	a0,48
    80001bec:	00001097          	auipc	ra,0x1
    80001bf0:	764080e7          	jalr	1892(ra) # 80003350 <_Znwm>
    80001bf4:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    80001bf8:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001bfc:	00090a63          	beqz	s2,80001c10 <_ZN3TCB12createThreadEPFvvE+0x44>
    80001c00:	00002537          	lui	a0,0x2
    80001c04:	00001097          	auipc	ra,0x1
    80001c08:	774080e7          	jalr	1908(ra) # 80003378 <_Znam>
    80001c0c:	0080006f          	j	80001c14 <_ZN3TCB12createThreadEPFvvE+0x48>
    80001c10:	00000513          	li	a0,0
            finished(false)
    80001c14:	00a4b423          	sd	a0,8(s1)
    80001c18:	00000797          	auipc	a5,0x0
    80001c1c:	09878793          	addi	a5,a5,152 # 80001cb0 <_ZN3TCB13threadWrapperEv>
    80001c20:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001c24:	02050863          	beqz	a0,80001c54 <_ZN3TCB12createThreadEPFvvE+0x88>
    80001c28:	000027b7          	lui	a5,0x2
    80001c2c:	00f507b3          	add	a5,a0,a5
            finished(false)
    80001c30:	00f4bc23          	sd	a5,24(s1)
    80001c34:	00200793          	li	a5,2
    80001c38:	02f4b023          	sd	a5,32(s1)
    80001c3c:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001c40:	02090c63          	beqz	s2,80001c78 <_ZN3TCB12createThreadEPFvvE+0xac>
    80001c44:	00048513          	mv	a0,s1
    80001c48:	00002097          	auipc	ra,0x2
    80001c4c:	be4080e7          	jalr	-1052(ra) # 8000382c <_ZN9Scheduler3putEP3TCB>
    80001c50:	0280006f          	j	80001c78 <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001c54:	00000793          	li	a5,0
    80001c58:	fd9ff06f          	j	80001c30 <_ZN3TCB12createThreadEPFvvE+0x64>
    80001c5c:	00050913          	mv	s2,a0
    80001c60:	00048513          	mv	a0,s1
    80001c64:	00001097          	auipc	ra,0x1
    80001c68:	73c080e7          	jalr	1852(ra) # 800033a0 <_ZdlPv>
    80001c6c:	00090513          	mv	a0,s2
    80001c70:	00006097          	auipc	ra,0x6
    80001c74:	5e8080e7          	jalr	1512(ra) # 80008258 <_Unwind_Resume>
}
    80001c78:	00048513          	mv	a0,s1
    80001c7c:	01813083          	ld	ra,24(sp)
    80001c80:	01013403          	ld	s0,16(sp)
    80001c84:	00813483          	ld	s1,8(sp)
    80001c88:	00013903          	ld	s2,0(sp)
    80001c8c:	02010113          	addi	sp,sp,32
    80001c90:	00008067          	ret

0000000080001c94 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    80001c94:	ff010113          	addi	sp,sp,-16
    80001c98:	00813423          	sd	s0,8(sp)
    80001c9c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80001ca0:	00000073          	ecall
}
    80001ca4:	00813403          	ld	s0,8(sp)
    80001ca8:	01010113          	addi	sp,sp,16
    80001cac:	00008067          	ret

0000000080001cb0 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001cb0:	fe010113          	addi	sp,sp,-32
    80001cb4:	00113c23          	sd	ra,24(sp)
    80001cb8:	00813823          	sd	s0,16(sp)
    80001cbc:	00913423          	sd	s1,8(sp)
    80001cc0:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001cc4:	00002097          	auipc	ra,0x2
    80001cc8:	978080e7          	jalr	-1672(ra) # 8000363c <_ZN5Riscv10popSppSpieEv>
    running->body();
    80001ccc:	00005497          	auipc	s1,0x5
    80001cd0:	48448493          	addi	s1,s1,1156 # 80007150 <_ZN3TCB7runningE>
    80001cd4:	0004b783          	ld	a5,0(s1)
    80001cd8:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    80001cdc:	000780e7          	jalr	a5
    running->setFinished(true);
    80001ce0:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80001ce4:	00100713          	li	a4,1
    80001ce8:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	fa8080e7          	jalr	-88(ra) # 80001c94 <_ZN3TCB5yieldEv>
}
    80001cf4:	01813083          	ld	ra,24(sp)
    80001cf8:	01013403          	ld	s0,16(sp)
    80001cfc:	00813483          	ld	s1,8(sp)
    80001d00:	02010113          	addi	sp,sp,32
    80001d04:	00008067          	ret

0000000080001d08 <_ZN3TCB8dispatchEv>:
{
    80001d08:	fe010113          	addi	sp,sp,-32
    80001d0c:	00113c23          	sd	ra,24(sp)
    80001d10:	00813823          	sd	s0,16(sp)
    80001d14:	00913423          	sd	s1,8(sp)
    80001d18:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001d1c:	00005497          	auipc	s1,0x5
    80001d20:	4344b483          	ld	s1,1076(s1) # 80007150 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001d24:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001d28:	02078c63          	beqz	a5,80001d60 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001d2c:	00002097          	auipc	ra,0x2
    80001d30:	a98080e7          	jalr	-1384(ra) # 800037c4 <_ZN9Scheduler3getEv>
    80001d34:	00005797          	auipc	a5,0x5
    80001d38:	40a7be23          	sd	a0,1052(a5) # 80007150 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001d3c:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001d40:	01048513          	addi	a0,s1,16
    80001d44:	fffff097          	auipc	ra,0xfffff
    80001d48:	3cc080e7          	jalr	972(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001d4c:	01813083          	ld	ra,24(sp)
    80001d50:	01013403          	ld	s0,16(sp)
    80001d54:	00813483          	ld	s1,8(sp)
    80001d58:	02010113          	addi	sp,sp,32
    80001d5c:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001d60:	00048513          	mv	a0,s1
    80001d64:	00002097          	auipc	ra,0x2
    80001d68:	ac8080e7          	jalr	-1336(ra) # 8000382c <_ZN9Scheduler3putEP3TCB>
    80001d6c:	fc1ff06f          	j	80001d2c <_ZN3TCB8dispatchEv+0x24>

0000000080001d70 <_ZN15MemoryAllocator17getMinBlockNumberEm>:
    newMemoryAllocator->freeMemoryHead->next = nullptr;

    return newMemoryAllocator;
}

size_t MemoryAllocator::getMinBlockNumber(size_t size) {
    80001d70:	ff010113          	addi	sp,sp,-16
    80001d74:	00813423          	sd	s0,8(sp)
    80001d78:	01010413          	addi	s0,sp,16
    size_t blockNo = size / MEM_BLOCK_SIZE;
    80001d7c:	00655713          	srli	a4,a0,0x6
    blockNo = blockNo + (size - blockNo * MEM_BLOCK_SIZE != 0);
    80001d80:	fc057793          	andi	a5,a0,-64
    80001d84:	40a78533          	sub	a0,a5,a0
    80001d88:	00a03533          	snez	a0,a0
    return blockNo;
}
    80001d8c:	00e50533          	add	a0,a0,a4
    80001d90:	00813403          	ld	s0,8(sp)
    80001d94:	01010113          	addi	sp,sp,16
    80001d98:	00008067          	ret

0000000080001d9c <_ZN15MemoryAllocator14createInstanceEv>:
MemoryAllocator* MemoryAllocator::createInstance() {
    80001d9c:	fd010113          	addi	sp,sp,-48
    80001da0:	02113423          	sd	ra,40(sp)
    80001da4:	02813023          	sd	s0,32(sp)
    80001da8:	00913c23          	sd	s1,24(sp)
    80001dac:	01213823          	sd	s2,16(sp)
    80001db0:	01313423          	sd	s3,8(sp)
    80001db4:	01413023          	sd	s4,0(sp)
    80001db8:	03010413          	addi	s0,sp,48
    managedMemorySpaceStart = (uint8*) HEAP_START_ADDR;
    80001dbc:	00005797          	auipc	a5,0x5
    80001dc0:	2e47b783          	ld	a5,740(a5) # 800070a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001dc4:	0007b903          	ld	s2,0(a5)
    managedMemorySpaceEnd = (uint8*) HEAP_END_ADDR;
    80001dc8:	00005797          	auipc	a5,0x5
    80001dcc:	3207b783          	ld	a5,800(a5) # 800070e8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001dd0:	0007b483          	ld	s1,0(a5)
    80001dd4:	00005a17          	auipc	s4,0x5
    80001dd8:	38ca0a13          	addi	s4,s4,908 # 80007160 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    80001ddc:	009a3023          	sd	s1,0(s4)
    minMemoryFragmentSize = getMinBlockNumber(sizeof(SegmentDescriptor)) + getMinBlockNumber(sizeof(uint64));
    80001de0:	01000513          	li	a0,16
    80001de4:	00000097          	auipc	ra,0x0
    80001de8:	f8c080e7          	jalr	-116(ra) # 80001d70 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001dec:	00050993          	mv	s3,a0
    80001df0:	00800513          	li	a0,8
    80001df4:	00000097          	auipc	ra,0x0
    80001df8:	f7c080e7          	jalr	-132(ra) # 80001d70 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001dfc:	00a989b3          	add	s3,s3,a0
    80001e00:	013a3423          	sd	s3,8(s4)
    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
    80001e04:	02000513          	li	a0,32
    80001e08:	00000097          	auipc	ra,0x0
    80001e0c:	f68080e7          	jalr	-152(ra) # 80001d70 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    managedMemorySpaceStart += noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE;
    80001e10:	00651513          	slli	a0,a0,0x6
    80001e14:	00a90533          	add	a0,s2,a0
    80001e18:	00aa3823          	sd	a0,16(s4)
    newMemoryAllocator->totalTaken = 0;
    80001e1c:	00093423          	sd	zero,8(s2)
    newMemoryAllocator->totalFree = (size_t) (managedMemorySpaceEnd - managedMemorySpaceStart);
    80001e20:	40a484b3          	sub	s1,s1,a0
    80001e24:	00993023          	sd	s1,0(s2)
    newMemoryAllocator->freeBlockNo = newMemoryAllocator->totalFree / MEM_BLOCK_SIZE;
    80001e28:	0064d493          	srli	s1,s1,0x6
    80001e2c:	00993823          	sd	s1,16(s2)
    newMemoryAllocator->freeMemoryHead = (SegmentDescriptor*) managedMemorySpaceStart;
    80001e30:	010a3783          	ld	a5,16(s4)
    80001e34:	00f93c23          	sd	a5,24(s2)
    newMemoryAllocator->freeMemoryHead->noBlocks = newMemoryAllocator->freeBlockNo;
    80001e38:	0097b023          	sd	s1,0(a5)
    newMemoryAllocator->freeMemoryHead->next = nullptr;
    80001e3c:	01893783          	ld	a5,24(s2)
    80001e40:	0007b423          	sd	zero,8(a5)
}
    80001e44:	00090513          	mv	a0,s2
    80001e48:	02813083          	ld	ra,40(sp)
    80001e4c:	02013403          	ld	s0,32(sp)
    80001e50:	01813483          	ld	s1,24(sp)
    80001e54:	01013903          	ld	s2,16(sp)
    80001e58:	00813983          	ld	s3,8(sp)
    80001e5c:	00013a03          	ld	s4,0(sp)
    80001e60:	03010113          	addi	sp,sp,48
    80001e64:	00008067          	ret

0000000080001e68 <_ZN15MemoryAllocator8instanceEv>:
    if (onlyInstance == nullptr)
    80001e68:	00005797          	auipc	a5,0x5
    80001e6c:	3107b783          	ld	a5,784(a5) # 80007178 <_ZN15MemoryAllocator12onlyInstanceE>
    80001e70:	00078863          	beqz	a5,80001e80 <_ZN15MemoryAllocator8instanceEv+0x18>
}
    80001e74:	00005517          	auipc	a0,0x5
    80001e78:	30453503          	ld	a0,772(a0) # 80007178 <_ZN15MemoryAllocator12onlyInstanceE>
    80001e7c:	00008067          	ret
MemoryAllocator* MemoryAllocator::instance() {
    80001e80:	ff010113          	addi	sp,sp,-16
    80001e84:	00113423          	sd	ra,8(sp)
    80001e88:	00813023          	sd	s0,0(sp)
    80001e8c:	01010413          	addi	s0,sp,16
        onlyInstance = createInstance();
    80001e90:	00000097          	auipc	ra,0x0
    80001e94:	f0c080e7          	jalr	-244(ra) # 80001d9c <_ZN15MemoryAllocator14createInstanceEv>
    80001e98:	00005797          	auipc	a5,0x5
    80001e9c:	2ea7b023          	sd	a0,736(a5) # 80007178 <_ZN15MemoryAllocator12onlyInstanceE>
}
    80001ea0:	00005517          	auipc	a0,0x5
    80001ea4:	2d853503          	ld	a0,728(a0) # 80007178 <_ZN15MemoryAllocator12onlyInstanceE>
    80001ea8:	00813083          	ld	ra,8(sp)
    80001eac:	00013403          	ld	s0,0(sp)
    80001eb0:	01010113          	addi	sp,sp,16
    80001eb4:	00008067          	ret

0000000080001eb8 <_ZN15MemoryAllocator8firstFitEm>:


MemoryAllocator::SegmentDescriptor* MemoryAllocator::firstFit(size_t blockNo) {
    80001eb8:	ff010113          	addi	sp,sp,-16
    80001ebc:	00813423          	sd	s0,8(sp)
    80001ec0:	01010413          	addi	s0,sp,16
    80001ec4:	00050693          	mv	a3,a0
    SegmentDescriptor* largeEnoughSegment = freeMemoryHead;
    80001ec8:	01853503          	ld	a0,24(a0)
    SegmentDescriptor* prevSegment = nullptr;
    80001ecc:	00000713          	li	a4,0
    while (largeEnoughSegment && largeEnoughSegment->noBlocks < blockNo) {
    80001ed0:	00050c63          	beqz	a0,80001ee8 <_ZN15MemoryAllocator8firstFitEm+0x30>
    80001ed4:	00053783          	ld	a5,0(a0)
    80001ed8:	00b7f863          	bgeu	a5,a1,80001ee8 <_ZN15MemoryAllocator8firstFitEm+0x30>
        prevSegment = largeEnoughSegment;
    80001edc:	00050713          	mv	a4,a0
        largeEnoughSegment = largeEnoughSegment->next;
    80001ee0:	00853503          	ld	a0,8(a0)
    while (largeEnoughSegment && largeEnoughSegment->noBlocks < blockNo) {
    80001ee4:	fedff06f          	j	80001ed0 <_ZN15MemoryAllocator8firstFitEm+0x18>
    }
    if (!largeEnoughSegment) return nullptr;
    80001ee8:	04050663          	beqz	a0,80001f34 <_ZN15MemoryAllocator8firstFitEm+0x7c>

    if (largeEnoughSegment->noBlocks - blockNo >= minMemoryFragmentSize) {
    80001eec:	00053783          	ld	a5,0(a0)
    80001ef0:	40b787b3          	sub	a5,a5,a1
    80001ef4:	00005617          	auipc	a2,0x5
    80001ef8:	27463603          	ld	a2,628(a2) # 80007168 <_ZN15MemoryAllocator21minMemoryFragmentSizeE>
    80001efc:	02c7e063          	bltu	a5,a2,80001f1c <_ZN15MemoryAllocator8firstFitEm+0x64>
        SegmentDescriptor* newSegment = (SegmentDescriptor*) ((uint8*) largeEnoughSegment + blockNo * MEM_BLOCK_SIZE);
    80001f00:	00659613          	slli	a2,a1,0x6
    80001f04:	00c50633          	add	a2,a0,a2
        newSegment->noBlocks = largeEnoughSegment->noBlocks - blockNo;
    80001f08:	00f63023          	sd	a5,0(a2)
        newSegment->next = largeEnoughSegment->next;
    80001f0c:	00853783          	ld	a5,8(a0)
    80001f10:	00f63423          	sd	a5,8(a2)
        largeEnoughSegment->next = newSegment;
    80001f14:	00c53423          	sd	a2,8(a0)
        largeEnoughSegment->noBlocks = blockNo;
    80001f18:	00b53023          	sd	a1,0(a0)
    }

    if (prevSegment) prevSegment->next = largeEnoughSegment->next;
    80001f1c:	00070663          	beqz	a4,80001f28 <_ZN15MemoryAllocator8firstFitEm+0x70>
    80001f20:	00853783          	ld	a5,8(a0)
    80001f24:	00f73423          	sd	a5,8(a4)
    if (freeMemoryHead == largeEnoughSegment)
    80001f28:	0186b783          	ld	a5,24(a3)
    80001f2c:	00a78a63          	beq	a5,a0,80001f40 <_ZN15MemoryAllocator8firstFitEm+0x88>
        freeMemoryHead = largeEnoughSegment->next;

    largeEnoughSegment->next = nullptr;
    80001f30:	00053423          	sd	zero,8(a0)
    return largeEnoughSegment;
}
    80001f34:	00813403          	ld	s0,8(sp)
    80001f38:	01010113          	addi	sp,sp,16
    80001f3c:	00008067          	ret
        freeMemoryHead = largeEnoughSegment->next;
    80001f40:	00853783          	ld	a5,8(a0)
    80001f44:	00f6bc23          	sd	a5,24(a3)
    80001f48:	fe9ff06f          	j	80001f30 <_ZN15MemoryAllocator8firstFitEm+0x78>

0000000080001f4c <_ZN15MemoryAllocator10kmem_allocEm>:

void* MemoryAllocator::kmem_alloc(size_t size) {
    80001f4c:	fe010113          	addi	sp,sp,-32
    80001f50:	00113c23          	sd	ra,24(sp)
    80001f54:	00813823          	sd	s0,16(sp)
    80001f58:	00913423          	sd	s1,8(sp)
    80001f5c:	01213023          	sd	s2,0(sp)
    80001f60:	02010413          	addi	s0,sp,32
    80001f64:	00050493          	mv	s1,a0
    80001f68:	00058913          	mv	s2,a1
    size_t minBlockNo = getMinBlockNumber(size);
    80001f6c:	00058513          	mv	a0,a1
    80001f70:	00000097          	auipc	ra,0x0
    80001f74:	e00080e7          	jalr	-512(ra) # 80001d70 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001f78:	00050593          	mv	a1,a0
    if (minBlockNo * MEM_BLOCK_SIZE - size < sizeof(SegmentDescriptor)) ++minBlockNo;
    80001f7c:	00651793          	slli	a5,a0,0x6
    80001f80:	41278933          	sub	s2,a5,s2
    80001f84:	00f00793          	li	a5,15
    80001f88:	0127e463          	bltu	a5,s2,80001f90 <_ZN15MemoryAllocator10kmem_allocEm+0x44>
    80001f8c:	00150593          	addi	a1,a0,1
    SegmentDescriptor* newTaken = firstFit(minBlockNo);
    80001f90:	00048513          	mv	a0,s1
    80001f94:	00000097          	auipc	ra,0x0
    80001f98:	f24080e7          	jalr	-220(ra) # 80001eb8 <_ZN15MemoryAllocator8firstFitEm>
    if (!newTaken) return nullptr;
    80001f9c:	04050063          	beqz	a0,80001fdc <_ZN15MemoryAllocator10kmem_allocEm+0x90>

    freeBlockNo -= newTaken->noBlocks;
    80001fa0:	00053703          	ld	a4,0(a0)
    80001fa4:	0104b783          	ld	a5,16(s1)
    80001fa8:	40e787b3          	sub	a5,a5,a4
    80001fac:	00f4b823          	sd	a5,16(s1)
    totalFree -= newTaken->noBlocks * MEM_BLOCK_SIZE;
    80001fb0:	00053783          	ld	a5,0(a0)
    80001fb4:	00679713          	slli	a4,a5,0x6
    80001fb8:	0004b783          	ld	a5,0(s1)
    80001fbc:	40e787b3          	sub	a5,a5,a4
    80001fc0:	00f4b023          	sd	a5,0(s1)
    totalTaken += newTaken->noBlocks * MEM_BLOCK_SIZE;
    80001fc4:	00053783          	ld	a5,0(a0)
    80001fc8:	00679713          	slli	a4,a5,0x6
    80001fcc:	0084b783          	ld	a5,8(s1)
    80001fd0:	00e787b3          	add	a5,a5,a4
    80001fd4:	00f4b423          	sd	a5,8(s1)

    return (uint8*) newTaken + sizeof(SegmentDescriptor);
    80001fd8:	01050513          	addi	a0,a0,16
}
    80001fdc:	01813083          	ld	ra,24(sp)
    80001fe0:	01013403          	ld	s0,16(sp)
    80001fe4:	00813483          	ld	s1,8(sp)
    80001fe8:	00013903          	ld	s2,0(sp)
    80001fec:	02010113          	addi	sp,sp,32
    80001ff0:	00008067          	ret

0000000080001ff4 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* newFree) {
    80001ff4:	ff010113          	addi	sp,sp,-16
    80001ff8:	00813423          	sd	s0,8(sp)
    80001ffc:	01010413          	addi	s0,sp,16
    if (newFree == nullptr) return 0;
    80002000:	08058863          	beqz	a1,80002090 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>
    SegmentDescriptor* newFreeSegment = (SegmentDescriptor*) ((uint8*) newFree - sizeof(SegmentDescriptor));
    80002004:	ff058693          	addi	a3,a1,-16
    freeBlockNo += newFreeSegment->noBlocks;
    80002008:	ff05b703          	ld	a4,-16(a1)
    8000200c:	01053783          	ld	a5,16(a0)
    80002010:	00e787b3          	add	a5,a5,a4
    80002014:	00f53823          	sd	a5,16(a0)
    totalFree += newFreeSegment->noBlocks * MEM_BLOCK_SIZE;
    80002018:	ff05b783          	ld	a5,-16(a1)
    8000201c:	00679713          	slli	a4,a5,0x6
    80002020:	00053783          	ld	a5,0(a0)
    80002024:	00e787b3          	add	a5,a5,a4
    80002028:	00f53023          	sd	a5,0(a0)
    totalTaken -= newFreeSegment->noBlocks * MEM_BLOCK_SIZE;
    8000202c:	ff05b783          	ld	a5,-16(a1)
    80002030:	00679713          	slli	a4,a5,0x6
    80002034:	00853783          	ld	a5,8(a0)
    80002038:	40e787b3          	sub	a5,a5,a4
    8000203c:	00f53423          	sd	a5,8(a0)

    SegmentDescriptor* after = freeMemoryHead, *prev = nullptr;
    80002040:	01853783          	ld	a5,24(a0)
    80002044:	00000713          	li	a4,0
    while (after && after < newFreeSegment) {
    80002048:	00078a63          	beqz	a5,8000205c <_ZN15MemoryAllocator9kmem_freeEPv+0x68>
    8000204c:	00d7f863          	bgeu	a5,a3,8000205c <_ZN15MemoryAllocator9kmem_freeEPv+0x68>
        prev = after; after = after->next; }
    80002050:	00078713          	mv	a4,a5
    80002054:	0087b783          	ld	a5,8(a5)
    while (after && after < newFreeSegment) {
    80002058:	ff1ff06f          	j	80002048 <_ZN15MemoryAllocator9kmem_freeEPv+0x54>

    newFreeSegment->next = after;
    8000205c:	fef5bc23          	sd	a5,-8(a1)
    if (prev) prev->next = newFreeSegment;
    80002060:	04070063          	beqz	a4,800020a0 <_ZN15MemoryAllocator9kmem_freeEPv+0xac>
    80002064:	00d73423          	sd	a3,8(a4)
    else freeMemoryHead = newFreeSegment;

    if (prev && (uint8*) prev + prev->noBlocks * MEM_BLOCK_SIZE == (uint8*) newFreeSegment) {
    80002068:	00070a63          	beqz	a4,8000207c <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
    8000206c:	00073503          	ld	a0,0(a4)
    80002070:	00651613          	slli	a2,a0,0x6
    80002074:	00c70633          	add	a2,a4,a2
    80002078:	02d60863          	beq	a2,a3,800020a8 <_ZN15MemoryAllocator9kmem_freeEPv+0xb4>
        prev->next = newFreeSegment->next;
        prev->noBlocks += newFreeSegment->noBlocks;
        newFreeSegment = prev;
    }

    if (after && (uint8*) newFreeSegment + newFreeSegment->noBlocks * MEM_BLOCK_SIZE == (uint8*) after) {
    8000207c:	00078a63          	beqz	a5,80002090 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>
    80002080:	0006b603          	ld	a2,0(a3)
    80002084:	00661713          	slli	a4,a2,0x6
    80002088:	00e68733          	add	a4,a3,a4
    8000208c:	02f70c63          	beq	a4,a5,800020c4 <_ZN15MemoryAllocator9kmem_freeEPv+0xd0>
        newFreeSegment->next = after->next; newFreeSegment->noBlocks += after->noBlocks; }

    return 0;
}
    80002090:	00000513          	li	a0,0
    80002094:	00813403          	ld	s0,8(sp)
    80002098:	01010113          	addi	sp,sp,16
    8000209c:	00008067          	ret
    else freeMemoryHead = newFreeSegment;
    800020a0:	00d53c23          	sd	a3,24(a0)
    800020a4:	fc5ff06f          	j	80002068 <_ZN15MemoryAllocator9kmem_freeEPv+0x74>
        prev->next = newFreeSegment->next;
    800020a8:	ff85b683          	ld	a3,-8(a1)
    800020ac:	00d73423          	sd	a3,8(a4)
        prev->noBlocks += newFreeSegment->noBlocks;
    800020b0:	ff05b683          	ld	a3,-16(a1)
    800020b4:	00d50533          	add	a0,a0,a3
    800020b8:	00a73023          	sd	a0,0(a4)
        newFreeSegment = prev;
    800020bc:	00070693          	mv	a3,a4
    800020c0:	fbdff06f          	j	8000207c <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
        newFreeSegment->next = after->next; newFreeSegment->noBlocks += after->noBlocks; }
    800020c4:	0087b703          	ld	a4,8(a5)
    800020c8:	00e6b423          	sd	a4,8(a3)
    800020cc:	0007b783          	ld	a5,0(a5)
    800020d0:	00f60633          	add	a2,a2,a5
    800020d4:	00c6b023          	sd	a2,0(a3)
    800020d8:	fb9ff06f          	j	80002090 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>

00000000800020dc <_ZN15MemoryAllocator30printInstanceMemorySpaceParamsEv>:

void MemoryAllocator::printInstanceMemorySpaceParams() {
    800020dc:	fe010113          	addi	sp,sp,-32
    800020e0:	00113c23          	sd	ra,24(sp)
    800020e4:	00813823          	sd	s0,16(sp)
    800020e8:	00913423          	sd	s1,8(sp)
    800020ec:	01213023          	sd	s2,0(sp)
    800020f0:	02010413          	addi	s0,sp,32
    800020f4:	00050493          	mv	s1,a0
    printString("##################################\n\n");
    800020f8:	00004517          	auipc	a0,0x4
    800020fc:	01850513          	addi	a0,a0,24 # 80006110 <CONSOLE_STATUS+0x100>
    80002100:	00001097          	auipc	ra,0x1
    80002104:	7cc080e7          	jalr	1996(ra) # 800038cc <_Z11printStringPKc>
    printString("MemoryAllocator address: "); printInteger((uint64)this); printString("\n");
    80002108:	00004517          	auipc	a0,0x4
    8000210c:	03050513          	addi	a0,a0,48 # 80006138 <CONSOLE_STATUS+0x128>
    80002110:	00001097          	auipc	ra,0x1
    80002114:	7bc080e7          	jalr	1980(ra) # 800038cc <_Z11printStringPKc>
    80002118:	00048513          	mv	a0,s1
    8000211c:	00002097          	auipc	ra,0x2
    80002120:	820080e7          	jalr	-2016(ra) # 8000393c <_Z12printIntegerm>
    80002124:	00004517          	auipc	a0,0x4
    80002128:	f6450513          	addi	a0,a0,-156 # 80006088 <CONSOLE_STATUS+0x78>
    8000212c:	00001097          	auipc	ra,0x1
    80002130:	7a0080e7          	jalr	1952(ra) # 800038cc <_Z11printStringPKc>

    // size_t noBlocksForStoringMemoryAllocator = sizeof(MemoryAllocator) / MEM_BLOCK_SIZE + 1;
    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
    80002134:	02000513          	li	a0,32
    80002138:	00000097          	auipc	ra,0x0
    8000213c:	c38080e7          	jalr	-968(ra) # 80001d70 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80002140:	00050913          	mv	s2,a0
    printString("noBlocksForStoringMemoryAllocator: ");
    80002144:	00004517          	auipc	a0,0x4
    80002148:	01450513          	addi	a0,a0,20 # 80006158 <CONSOLE_STATUS+0x148>
    8000214c:	00001097          	auipc	ra,0x1
    80002150:	780080e7          	jalr	1920(ra) # 800038cc <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator); printString("\n");
    80002154:	00090513          	mv	a0,s2
    80002158:	00001097          	auipc	ra,0x1
    8000215c:	7e4080e7          	jalr	2020(ra) # 8000393c <_Z12printIntegerm>
    80002160:	00004517          	auipc	a0,0x4
    80002164:	f2850513          	addi	a0,a0,-216 # 80006088 <CONSOLE_STATUS+0x78>
    80002168:	00001097          	auipc	ra,0x1
    8000216c:	764080e7          	jalr	1892(ra) # 800038cc <_Z11printStringPKc>
    printString("noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE: ");
    80002170:	00004517          	auipc	a0,0x4
    80002174:	01050513          	addi	a0,a0,16 # 80006180 <CONSOLE_STATUS+0x170>
    80002178:	00001097          	auipc	ra,0x1
    8000217c:	754080e7          	jalr	1876(ra) # 800038cc <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE); printString("\n\n");
    80002180:	00691513          	slli	a0,s2,0x6
    80002184:	00001097          	auipc	ra,0x1
    80002188:	7b8080e7          	jalr	1976(ra) # 8000393c <_Z12printIntegerm>
    8000218c:	00004517          	auipc	a0,0x4
    80002190:	02c50513          	addi	a0,a0,44 # 800061b8 <CONSOLE_STATUS+0x1a8>
    80002194:	00001097          	auipc	ra,0x1
    80002198:	738080e7          	jalr	1848(ra) # 800038cc <_Z11printStringPKc>

    printString("Managed memory space start: ");
    8000219c:	00004517          	auipc	a0,0x4
    800021a0:	02450513          	addi	a0,a0,36 # 800061c0 <CONSOLE_STATUS+0x1b0>
    800021a4:	00001097          	auipc	ra,0x1
    800021a8:	728080e7          	jalr	1832(ra) # 800038cc <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceStart); printString("\n");
    800021ac:	00005917          	auipc	s2,0x5
    800021b0:	fb490913          	addi	s2,s2,-76 # 80007160 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    800021b4:	01093503          	ld	a0,16(s2)
    800021b8:	00001097          	auipc	ra,0x1
    800021bc:	784080e7          	jalr	1924(ra) # 8000393c <_Z12printIntegerm>
    800021c0:	00004517          	auipc	a0,0x4
    800021c4:	ec850513          	addi	a0,a0,-312 # 80006088 <CONSOLE_STATUS+0x78>
    800021c8:	00001097          	auipc	ra,0x1
    800021cc:	704080e7          	jalr	1796(ra) # 800038cc <_Z11printStringPKc>
    printString("Managed memory space end: ");
    800021d0:	00004517          	auipc	a0,0x4
    800021d4:	01050513          	addi	a0,a0,16 # 800061e0 <CONSOLE_STATUS+0x1d0>
    800021d8:	00001097          	auipc	ra,0x1
    800021dc:	6f4080e7          	jalr	1780(ra) # 800038cc <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceEnd); printString("\n\n");
    800021e0:	00093503          	ld	a0,0(s2)
    800021e4:	00001097          	auipc	ra,0x1
    800021e8:	758080e7          	jalr	1880(ra) # 8000393c <_Z12printIntegerm>
    800021ec:	00004517          	auipc	a0,0x4
    800021f0:	fcc50513          	addi	a0,a0,-52 # 800061b8 <CONSOLE_STATUS+0x1a8>
    800021f4:	00001097          	auipc	ra,0x1
    800021f8:	6d8080e7          	jalr	1752(ra) # 800038cc <_Z11printStringPKc>

    printString("Total Free: "); printInteger(getTotalFree()); printString("\n");
    800021fc:	00004517          	auipc	a0,0x4
    80002200:	00450513          	addi	a0,a0,4 # 80006200 <CONSOLE_STATUS+0x1f0>
    80002204:	00001097          	auipc	ra,0x1
    80002208:	6c8080e7          	jalr	1736(ra) # 800038cc <_Z11printStringPKc>
    8000220c:	0004b503          	ld	a0,0(s1)
    80002210:	00001097          	auipc	ra,0x1
    80002214:	72c080e7          	jalr	1836(ra) # 8000393c <_Z12printIntegerm>
    80002218:	00004517          	auipc	a0,0x4
    8000221c:	e7050513          	addi	a0,a0,-400 # 80006088 <CONSOLE_STATUS+0x78>
    80002220:	00001097          	auipc	ra,0x1
    80002224:	6ac080e7          	jalr	1708(ra) # 800038cc <_Z11printStringPKc>
    printString("Total Taken: "); printInteger(getTotalTaken()); printString("\n");
    80002228:	00004517          	auipc	a0,0x4
    8000222c:	fe850513          	addi	a0,a0,-24 # 80006210 <CONSOLE_STATUS+0x200>
    80002230:	00001097          	auipc	ra,0x1
    80002234:	69c080e7          	jalr	1692(ra) # 800038cc <_Z11printStringPKc>
    80002238:	0084b503          	ld	a0,8(s1)
    8000223c:	00001097          	auipc	ra,0x1
    80002240:	700080e7          	jalr	1792(ra) # 8000393c <_Z12printIntegerm>
    80002244:	00004517          	auipc	a0,0x4
    80002248:	e4450513          	addi	a0,a0,-444 # 80006088 <CONSOLE_STATUS+0x78>
    8000224c:	00001097          	auipc	ra,0x1
    80002250:	680080e7          	jalr	1664(ra) # 800038cc <_Z11printStringPKc>
    printString("Free Block No: "); printInteger(getFreeBlockNo()); printString("\n");
    80002254:	00004517          	auipc	a0,0x4
    80002258:	fcc50513          	addi	a0,a0,-52 # 80006220 <CONSOLE_STATUS+0x210>
    8000225c:	00001097          	auipc	ra,0x1
    80002260:	670080e7          	jalr	1648(ra) # 800038cc <_Z11printStringPKc>
    80002264:	0104b503          	ld	a0,16(s1)
    80002268:	00001097          	auipc	ra,0x1
    8000226c:	6d4080e7          	jalr	1748(ra) # 8000393c <_Z12printIntegerm>
    80002270:	00004517          	auipc	a0,0x4
    80002274:	e1850513          	addi	a0,a0,-488 # 80006088 <CONSOLE_STATUS+0x78>
    80002278:	00001097          	auipc	ra,0x1
    8000227c:	654080e7          	jalr	1620(ra) # 800038cc <_Z11printStringPKc>
    printString("\n##################################\n");
    80002280:	00004517          	auipc	a0,0x4
    80002284:	fb050513          	addi	a0,a0,-80 # 80006230 <CONSOLE_STATUS+0x220>
    80002288:	00001097          	auipc	ra,0x1
    8000228c:	644080e7          	jalr	1604(ra) # 800038cc <_Z11printStringPKc>
}
    80002290:	01813083          	ld	ra,24(sp)
    80002294:	01013403          	ld	s0,16(sp)
    80002298:	00813483          	ld	s1,8(sp)
    8000229c:	00013903          	ld	s2,0(sp)
    800022a0:	02010113          	addi	sp,sp,32
    800022a4:	00008067          	ret

00000000800022a8 <_ZN15MemoryAllocator22printMemorySpaceParamsEv>:

void MemoryAllocator::printMemorySpaceParams() {
    800022a8:	fe010113          	addi	sp,sp,-32
    800022ac:	00113c23          	sd	ra,24(sp)
    800022b0:	00813823          	sd	s0,16(sp)
    800022b4:	00913423          	sd	s1,8(sp)
    800022b8:	01213023          	sd	s2,0(sp)
    800022bc:	02010413          	addi	s0,sp,32
    printString("----------------------------------\n\n");
    800022c0:	00004517          	auipc	a0,0x4
    800022c4:	f9850513          	addi	a0,a0,-104 # 80006258 <CONSOLE_STATUS+0x248>
    800022c8:	00001097          	auipc	ra,0x1
    800022cc:	604080e7          	jalr	1540(ra) # 800038cc <_Z11printStringPKc>
    printString("Size of MemoryAllocator class: ");
    800022d0:	00004517          	auipc	a0,0x4
    800022d4:	fb050513          	addi	a0,a0,-80 # 80006280 <CONSOLE_STATUS+0x270>
    800022d8:	00001097          	auipc	ra,0x1
    800022dc:	5f4080e7          	jalr	1524(ra) # 800038cc <_Z11printStringPKc>
    printInteger(sizeof(MemoryAllocator)); printString("\n");
    800022e0:	02000513          	li	a0,32
    800022e4:	00001097          	auipc	ra,0x1
    800022e8:	658080e7          	jalr	1624(ra) # 8000393c <_Z12printIntegerm>
    800022ec:	00004517          	auipc	a0,0x4
    800022f0:	d9c50513          	addi	a0,a0,-612 # 80006088 <CONSOLE_STATUS+0x78>
    800022f4:	00001097          	auipc	ra,0x1
    800022f8:	5d8080e7          	jalr	1496(ra) # 800038cc <_Z11printStringPKc>

    printString("HEAP_START_ADDR: "); printInteger((uint64)HEAP_START_ADDR); printString("\n");
    800022fc:	00004517          	auipc	a0,0x4
    80002300:	fc450513          	addi	a0,a0,-60 # 800062c0 <CONSOLE_STATUS+0x2b0>
    80002304:	00001097          	auipc	ra,0x1
    80002308:	5c8080e7          	jalr	1480(ra) # 800038cc <_Z11printStringPKc>
    8000230c:	00005497          	auipc	s1,0x5
    80002310:	d944b483          	ld	s1,-620(s1) # 800070a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002314:	0004b503          	ld	a0,0(s1)
    80002318:	00001097          	auipc	ra,0x1
    8000231c:	624080e7          	jalr	1572(ra) # 8000393c <_Z12printIntegerm>
    80002320:	00004517          	auipc	a0,0x4
    80002324:	d6850513          	addi	a0,a0,-664 # 80006088 <CONSOLE_STATUS+0x78>
    80002328:	00001097          	auipc	ra,0x1
    8000232c:	5a4080e7          	jalr	1444(ra) # 800038cc <_Z11printStringPKc>
    printString("HEAP_END_ADDR: "); printInteger((uint64)HEAP_END_ADDR); printString("\n");
    80002330:	00004517          	auipc	a0,0x4
    80002334:	f7050513          	addi	a0,a0,-144 # 800062a0 <CONSOLE_STATUS+0x290>
    80002338:	00001097          	auipc	ra,0x1
    8000233c:	594080e7          	jalr	1428(ra) # 800038cc <_Z11printStringPKc>
    80002340:	00005917          	auipc	s2,0x5
    80002344:	da893903          	ld	s2,-600(s2) # 800070e8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002348:	00093503          	ld	a0,0(s2)
    8000234c:	00001097          	auipc	ra,0x1
    80002350:	5f0080e7          	jalr	1520(ra) # 8000393c <_Z12printIntegerm>
    80002354:	00004517          	auipc	a0,0x4
    80002358:	d3450513          	addi	a0,a0,-716 # 80006088 <CONSOLE_STATUS+0x78>
    8000235c:	00001097          	auipc	ra,0x1
    80002360:	570080e7          	jalr	1392(ra) # 800038cc <_Z11printStringPKc>

    printString("HEAP_END_ADDR - HEAP_START_ADDR: ");
    80002364:	00004517          	auipc	a0,0x4
    80002368:	f4c50513          	addi	a0,a0,-180 # 800062b0 <CONSOLE_STATUS+0x2a0>
    8000236c:	00001097          	auipc	ra,0x1
    80002370:	560080e7          	jalr	1376(ra) # 800038cc <_Z11printStringPKc>
    printInteger((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)); printString("\n");
    80002374:	00093503          	ld	a0,0(s2)
    80002378:	0004b783          	ld	a5,0(s1)
    8000237c:	40f50533          	sub	a0,a0,a5
    80002380:	00001097          	auipc	ra,0x1
    80002384:	5bc080e7          	jalr	1468(ra) # 8000393c <_Z12printIntegerm>
    80002388:	00004517          	auipc	a0,0x4
    8000238c:	d0050513          	addi	a0,a0,-768 # 80006088 <CONSOLE_STATUS+0x78>
    80002390:	00001097          	auipc	ra,0x1
    80002394:	53c080e7          	jalr	1340(ra) # 800038cc <_Z11printStringPKc>

    printString("MEM_BLOCK_SIZE: "); printInteger(MEM_BLOCK_SIZE); printString("\n");
    80002398:	00004517          	auipc	a0,0x4
    8000239c:	f4050513          	addi	a0,a0,-192 # 800062d8 <CONSOLE_STATUS+0x2c8>
    800023a0:	00001097          	auipc	ra,0x1
    800023a4:	52c080e7          	jalr	1324(ra) # 800038cc <_Z11printStringPKc>
    800023a8:	04000513          	li	a0,64
    800023ac:	00001097          	auipc	ra,0x1
    800023b0:	590080e7          	jalr	1424(ra) # 8000393c <_Z12printIntegerm>
    800023b4:	00004517          	auipc	a0,0x4
    800023b8:	cd450513          	addi	a0,a0,-812 # 80006088 <CONSOLE_STATUS+0x78>
    800023bc:	00001097          	auipc	ra,0x1
    800023c0:	510080e7          	jalr	1296(ra) # 800038cc <_Z11printStringPKc>

    printString("Number of blocks in (HEAP_END_ADDR - HEAP_START_ADDR): ");
    800023c4:	00004517          	auipc	a0,0x4
    800023c8:	f2c50513          	addi	a0,a0,-212 # 800062f0 <CONSOLE_STATUS+0x2e0>
    800023cc:	00001097          	auipc	ra,0x1
    800023d0:	500080e7          	jalr	1280(ra) # 800038cc <_Z11printStringPKc>
    printInteger(((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)) / MEM_BLOCK_SIZE);
    800023d4:	00093503          	ld	a0,0(s2)
    800023d8:	0004b783          	ld	a5,0(s1)
    800023dc:	40f50533          	sub	a0,a0,a5
    800023e0:	00655513          	srli	a0,a0,0x6
    800023e4:	00001097          	auipc	ra,0x1
    800023e8:	558080e7          	jalr	1368(ra) # 8000393c <_Z12printIntegerm>
    printString("\n");
    800023ec:	00004517          	auipc	a0,0x4
    800023f0:	c9c50513          	addi	a0,a0,-868 # 80006088 <CONSOLE_STATUS+0x78>
    800023f4:	00001097          	auipc	ra,0x1
    800023f8:	4d8080e7          	jalr	1240(ra) # 800038cc <_Z11printStringPKc>
    printString("\n----------------------------------\n");
    800023fc:	00004517          	auipc	a0,0x4
    80002400:	f2c50513          	addi	a0,a0,-212 # 80006328 <CONSOLE_STATUS+0x318>
    80002404:	00001097          	auipc	ra,0x1
    80002408:	4c8080e7          	jalr	1224(ra) # 800038cc <_Z11printStringPKc>
}
    8000240c:	01813083          	ld	ra,24(sp)
    80002410:	01013403          	ld	s0,16(sp)
    80002414:	00813483          	ld	s1,8(sp)
    80002418:	00013903          	ld	s2,0(sp)
    8000241c:	02010113          	addi	sp,sp,32
    80002420:	00008067          	ret

0000000080002424 <_ZN15MemoryAllocator23printFreeMemoryHeadDataEv>:

void MemoryAllocator::printFreeMemoryHeadData() {
    80002424:	fe010113          	addi	sp,sp,-32
    80002428:	00113c23          	sd	ra,24(sp)
    8000242c:	00813823          	sd	s0,16(sp)
    80002430:	00913423          	sd	s1,8(sp)
    80002434:	02010413          	addi	s0,sp,32
    80002438:	00050493          	mv	s1,a0
    printString("##################################\n\n");
    8000243c:	00004517          	auipc	a0,0x4
    80002440:	cd450513          	addi	a0,a0,-812 # 80006110 <CONSOLE_STATUS+0x100>
    80002444:	00001097          	auipc	ra,0x1
    80002448:	488080e7          	jalr	1160(ra) # 800038cc <_Z11printStringPKc>
    printString("freeMemoryHead: ");
    8000244c:	00004517          	auipc	a0,0x4
    80002450:	f0450513          	addi	a0,a0,-252 # 80006350 <CONSOLE_STATUS+0x340>
    80002454:	00001097          	auipc	ra,0x1
    80002458:	478080e7          	jalr	1144(ra) # 800038cc <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead); printString("\n");
    8000245c:	0184b503          	ld	a0,24(s1)
    80002460:	00001097          	auipc	ra,0x1
    80002464:	4dc080e7          	jalr	1244(ra) # 8000393c <_Z12printIntegerm>
    80002468:	00004517          	auipc	a0,0x4
    8000246c:	c2050513          	addi	a0,a0,-992 # 80006088 <CONSOLE_STATUS+0x78>
    80002470:	00001097          	auipc	ra,0x1
    80002474:	45c080e7          	jalr	1116(ra) # 800038cc <_Z11printStringPKc>
    printString("freeMemoryHead->noBlocks: ");
    80002478:	00004517          	auipc	a0,0x4
    8000247c:	ef050513          	addi	a0,a0,-272 # 80006368 <CONSOLE_STATUS+0x358>
    80002480:	00001097          	auipc	ra,0x1
    80002484:	44c080e7          	jalr	1100(ra) # 800038cc <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead->noBlocks); printString("\n");
    80002488:	0184b783          	ld	a5,24(s1)
    8000248c:	0007b503          	ld	a0,0(a5)
    80002490:	00001097          	auipc	ra,0x1
    80002494:	4ac080e7          	jalr	1196(ra) # 8000393c <_Z12printIntegerm>
    80002498:	00004517          	auipc	a0,0x4
    8000249c:	bf050513          	addi	a0,a0,-1040 # 80006088 <CONSOLE_STATUS+0x78>
    800024a0:	00001097          	auipc	ra,0x1
    800024a4:	42c080e7          	jalr	1068(ra) # 800038cc <_Z11printStringPKc>
    printString("freeMemoryHead->next: ");
    800024a8:	00004517          	auipc	a0,0x4
    800024ac:	ee050513          	addi	a0,a0,-288 # 80006388 <CONSOLE_STATUS+0x378>
    800024b0:	00001097          	auipc	ra,0x1
    800024b4:	41c080e7          	jalr	1052(ra) # 800038cc <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead->next); printString("\n");
    800024b8:	0184b783          	ld	a5,24(s1)
    800024bc:	0087b503          	ld	a0,8(a5)
    800024c0:	00001097          	auipc	ra,0x1
    800024c4:	47c080e7          	jalr	1148(ra) # 8000393c <_Z12printIntegerm>
    800024c8:	00004517          	auipc	a0,0x4
    800024cc:	bc050513          	addi	a0,a0,-1088 # 80006088 <CONSOLE_STATUS+0x78>
    800024d0:	00001097          	auipc	ra,0x1
    800024d4:	3fc080e7          	jalr	1020(ra) # 800038cc <_Z11printStringPKc>
    printString("Segment Descriptor size: ");
    800024d8:	00004517          	auipc	a0,0x4
    800024dc:	ec850513          	addi	a0,a0,-312 # 800063a0 <CONSOLE_STATUS+0x390>
    800024e0:	00001097          	auipc	ra,0x1
    800024e4:	3ec080e7          	jalr	1004(ra) # 800038cc <_Z11printStringPKc>
    printInteger(sizeof(*freeMemoryHead)); printString("\n");
    800024e8:	01000513          	li	a0,16
    800024ec:	00001097          	auipc	ra,0x1
    800024f0:	450080e7          	jalr	1104(ra) # 8000393c <_Z12printIntegerm>
    800024f4:	00004517          	auipc	a0,0x4
    800024f8:	b9450513          	addi	a0,a0,-1132 # 80006088 <CONSOLE_STATUS+0x78>
    800024fc:	00001097          	auipc	ra,0x1
    80002500:	3d0080e7          	jalr	976(ra) # 800038cc <_Z11printStringPKc>
    printString("\n##################################\n");
    80002504:	00004517          	auipc	a0,0x4
    80002508:	d2c50513          	addi	a0,a0,-724 # 80006230 <CONSOLE_STATUS+0x220>
    8000250c:	00001097          	auipc	ra,0x1
    80002510:	3c0080e7          	jalr	960(ra) # 800038cc <_Z11printStringPKc>
}
    80002514:	01813083          	ld	ra,24(sp)
    80002518:	01013403          	ld	s0,16(sp)
    8000251c:	00813483          	ld	s1,8(sp)
    80002520:	02010113          	addi	sp,sp,32
    80002524:	00008067          	ret

0000000080002528 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv>:
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    return beforeTestFreeBlockNo == afterTestFreeBlockNo - minNoBlocksForSize - addendForSegDesc;

}

size_t MemoryAllocatorTest::getFreeBlocksCnt() {
    80002528:	ff010113          	addi	sp,sp,-16
    8000252c:	00113423          	sd	ra,8(sp)
    80002530:	00813023          	sd	s0,0(sp)
    80002534:	01010413          	addi	s0,sp,16
    MemoryAllocator::SegmentDescriptor* freeMemHead = MemoryAllocator::instance()->freeMemoryHead;
    80002538:	00000097          	auipc	ra,0x0
    8000253c:	930080e7          	jalr	-1744(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002540:	01853783          	ld	a5,24(a0)
    size_t blockCnt = 0;
    80002544:	00000513          	li	a0,0
    while (freeMemHead) {
    80002548:	00078a63          	beqz	a5,8000255c <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv+0x34>
        blockCnt += freeMemHead->noBlocks;
    8000254c:	0007b703          	ld	a4,0(a5)
    80002550:	00e50533          	add	a0,a0,a4
        freeMemHead = freeMemHead->next;
    80002554:	0087b783          	ld	a5,8(a5)
    while (freeMemHead) {
    80002558:	ff1ff06f          	j	80002548 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv+0x20>
    }
    return blockCnt;
}
    8000255c:	00813083          	ld	ra,8(sp)
    80002560:	00013403          	ld	s0,0(sp)
    80002564:	01010113          	addi	sp,sp,16
    80002568:	00008067          	ret

000000008000256c <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>:

bool MemoryAllocatorTest::testMemoryMetadataValidity() {
    8000256c:	fd010113          	addi	sp,sp,-48
    80002570:	02113423          	sd	ra,40(sp)
    80002574:	02813023          	sd	s0,32(sp)
    80002578:	00913c23          	sd	s1,24(sp)
    8000257c:	01213823          	sd	s2,16(sp)
    80002580:	01313423          	sd	s3,8(sp)
    80002584:	01413023          	sd	s4,0(sp)
    80002588:	03010413          	addi	s0,sp,48
    8000258c:	00050913          	mv	s2,a0
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002590:	00000097          	auipc	ra,0x0
    80002594:	8d8080e7          	jalr	-1832(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>

    void* kmem_alloc(size_t size);
    int kmem_free(void* newFree);
    void printInstanceMemorySpaceParams();
    void printFreeMemoryHeadData();
    size_t getTotalFree() { return totalFree; }
    80002598:	00053483          	ld	s1,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    8000259c:	00000097          	auipc	ra,0x0
    800025a0:	8cc080e7          	jalr	-1844(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800025a4:	00853a03          	ld	s4,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    800025a8:	00000097          	auipc	ra,0x0
    800025ac:	8c0080e7          	jalr	-1856(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    800025b0:	01053983          	ld	s3,16(a0)
    size_t freeBlocksCnt = getFreeBlocksCnt();
    800025b4:	00090513          	mv	a0,s2
    800025b8:	00000097          	auipc	ra,0x0
    800025bc:	f70080e7          	jalr	-144(ra) # 80002528 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv>

    if (freeBlocksCnt != beforeTestFreeBlockNo) return false;
    800025c0:	02a99c63          	bne	s3,a0,800025f8 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x8c>
    if (freeBlocksCnt != beforeTestTotalFree / MEM_BLOCK_SIZE) return false;
    800025c4:	0064d793          	srli	a5,s1,0x6
    800025c8:	04a79a63          	bne	a5,a0,8000261c <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0xb0>

    size_t totalMemory = (size_t) (MemoryAllocator::managedMemorySpaceEnd - MemoryAllocator::managedMemorySpaceStart);
    800025cc:	00005797          	auipc	a5,0x5
    800025d0:	adc7b783          	ld	a5,-1316(a5) # 800070a8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800025d4:	0007b503          	ld	a0,0(a5)
    800025d8:	00005797          	auipc	a5,0x5
    800025dc:	b287b783          	ld	a5,-1240(a5) # 80007100 <_GLOBAL_OFFSET_TABLE_+0x68>
    800025e0:	0007b783          	ld	a5,0(a5)
    800025e4:	40f507b3          	sub	a5,a0,a5
    return totalMemory == beforeTestTotalFree + beforeTestTotalTaken;
    800025e8:	01448533          	add	a0,s1,s4
    800025ec:	40f50533          	sub	a0,a0,a5
    800025f0:	00153513          	seqz	a0,a0
    800025f4:	0080006f          	j	800025fc <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x90>
    if (freeBlocksCnt != beforeTestFreeBlockNo) return false;
    800025f8:	00000513          	li	a0,0
}
    800025fc:	02813083          	ld	ra,40(sp)
    80002600:	02013403          	ld	s0,32(sp)
    80002604:	01813483          	ld	s1,24(sp)
    80002608:	01013903          	ld	s2,16(sp)
    8000260c:	00813983          	ld	s3,8(sp)
    80002610:	00013a03          	ld	s4,0(sp)
    80002614:	03010113          	addi	sp,sp,48
    80002618:	00008067          	ret
    if (freeBlocksCnt != beforeTestTotalFree / MEM_BLOCK_SIZE) return false;
    8000261c:	00000513          	li	a0,0
    80002620:	fddff06f          	j	800025fc <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x90>

0000000080002624 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>:
bool MemoryAllocatorTest::testMemoryAllocate(uint64 size, void** allocatedMemoryPointer) {
    80002624:	fa010113          	addi	sp,sp,-96
    80002628:	04113c23          	sd	ra,88(sp)
    8000262c:	04813823          	sd	s0,80(sp)
    80002630:	04913423          	sd	s1,72(sp)
    80002634:	05213023          	sd	s2,64(sp)
    80002638:	03313c23          	sd	s3,56(sp)
    8000263c:	03413823          	sd	s4,48(sp)
    80002640:	03513423          	sd	s5,40(sp)
    80002644:	03613023          	sd	s6,32(sp)
    80002648:	01713c23          	sd	s7,24(sp)
    8000264c:	01813823          	sd	s8,16(sp)
    80002650:	01913423          	sd	s9,8(sp)
    80002654:	01a13023          	sd	s10,0(sp)
    80002658:	06010413          	addi	s0,sp,96
    8000265c:	00050a13          	mv	s4,a0
    80002660:	00058913          	mv	s2,a1
    80002664:	00060993          	mv	s3,a2
    if (!testMemoryMetadataValidity()) return false;
    80002668:	00000097          	auipc	ra,0x0
    8000266c:	f04080e7          	jalr	-252(ra) # 8000256c <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002670:	00050493          	mv	s1,a0
    80002674:	04051063          	bnez	a0,800026b4 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x90>
}
    80002678:	00048513          	mv	a0,s1
    8000267c:	05813083          	ld	ra,88(sp)
    80002680:	05013403          	ld	s0,80(sp)
    80002684:	04813483          	ld	s1,72(sp)
    80002688:	04013903          	ld	s2,64(sp)
    8000268c:	03813983          	ld	s3,56(sp)
    80002690:	03013a03          	ld	s4,48(sp)
    80002694:	02813a83          	ld	s5,40(sp)
    80002698:	02013b03          	ld	s6,32(sp)
    8000269c:	01813b83          	ld	s7,24(sp)
    800026a0:	01013c03          	ld	s8,16(sp)
    800026a4:	00813c83          	ld	s9,8(sp)
    800026a8:	00013d03          	ld	s10,0(sp)
    800026ac:	06010113          	addi	sp,sp,96
    800026b0:	00008067          	ret
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    800026b4:	fffff097          	auipc	ra,0xfffff
    800026b8:	7b4080e7          	jalr	1972(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    800026bc:	00053b03          	ld	s6,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    800026c0:	fffff097          	auipc	ra,0xfffff
    800026c4:	7a8080e7          	jalr	1960(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800026c8:	00853b83          	ld	s7,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    800026cc:	fffff097          	auipc	ra,0xfffff
    800026d0:	79c080e7          	jalr	1948(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    800026d4:	01053c03          	ld	s8,16(a0)
    *allocatedMemoryPointer = MemoryAllocator::instance()->kmem_alloc(size);
    800026d8:	fffff097          	auipc	ra,0xfffff
    800026dc:	790080e7          	jalr	1936(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    800026e0:	00090593          	mv	a1,s2
    800026e4:	00000097          	auipc	ra,0x0
    800026e8:	868080e7          	jalr	-1944(ra) # 80001f4c <_ZN15MemoryAllocator10kmem_allocEm>
    800026ec:	00050a93          	mv	s5,a0
    800026f0:	00a9b023          	sd	a0,0(s3)
    if (*allocatedMemoryPointer == nullptr && size == (uint64) -37) return true;
    800026f4:	08050663          	beqz	a0,80002780 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x15c>
    size_t minNoBlocksForSize = MemoryAllocator::getMinBlockNumber(size);
    800026f8:	00090513          	mv	a0,s2
    800026fc:	fffff097          	auipc	ra,0xfffff
    80002700:	674080e7          	jalr	1652(ra) # 80001d70 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80002704:	00050993          	mv	s3,a0
    size_t addendForSegDesc = minNoBlocksForSize * MEM_BLOCK_SIZE - size < sizeof(MemoryAllocator::SegmentDescriptor);
    80002708:	00651593          	slli	a1,a0,0x6
    8000270c:	41258933          	sub	s2,a1,s2
    80002710:	01093913          	sltiu	s2,s2,16
    size_t allocatedMemory = (minNoBlocksForSize + addendForSegDesc) * MEM_BLOCK_SIZE;
    80002714:	01250cb3          	add	s9,a0,s2
    80002718:	006c9d13          	slli	s10,s9,0x6
    if (!testMemoryMetadataValidity()) return false;
    8000271c:	000a0513          	mv	a0,s4
    80002720:	00000097          	auipc	ra,0x0
    80002724:	e4c080e7          	jalr	-436(ra) # 8000256c <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002728:	00050493          	mv	s1,a0
    8000272c:	f40506e3          	beqz	a0,80002678 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    size_t afterTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002730:	fffff097          	auipc	ra,0xfffff
    80002734:	738080e7          	jalr	1848(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    80002738:	00053483          	ld	s1,0(a0)
    size_t afterTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    8000273c:	fffff097          	auipc	ra,0xfffff
    80002740:	72c080e7          	jalr	1836(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    80002744:	00853a03          	ld	s4,8(a0)
    size_t afterTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    80002748:	fffff097          	auipc	ra,0xfffff
    8000274c:	720080e7          	jalr	1824(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002750:	01053783          	ld	a5,16(a0)
    if (beforeTestTotalFree != afterTestTotalFree + allocatedMemory) return false;
    80002754:	01a484b3          	add	s1,s1,s10
    80002758:	03649a63          	bne	s1,s6,8000278c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x168>
    if (beforeTestTotalTaken != afterTestTotalTaken - allocatedMemory) return false;
    8000275c:	41aa0d33          	sub	s10,s4,s10
    80002760:	037d1a63          	bne	s10,s7,80002794 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x170>
    if (beforeTestFreeBlockNo != afterTestFreeBlockNo + minNoBlocksForSize + addendForSegDesc) return false;
    80002764:	013789b3          	add	s3,a5,s3
    80002768:	01298933          	add	s2,s3,s2
    8000276c:	03891863          	bne	s2,s8,8000279c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x178>
    return segDesc->noBlocks == minNoBlocksForSize + addendForSegDesc;
    80002770:	ff0ab483          	ld	s1,-16(s5)
    80002774:	409c84b3          	sub	s1,s9,s1
    80002778:	0014b493          	seqz	s1,s1
    8000277c:	efdff06f          	j	80002678 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (*allocatedMemoryPointer == nullptr && size == (uint64) -37) return true;
    80002780:	fdb00793          	li	a5,-37
    80002784:	f6f91ae3          	bne	s2,a5,800026f8 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0xd4>
    80002788:	ef1ff06f          	j	80002678 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestTotalFree != afterTestTotalFree + allocatedMemory) return false;
    8000278c:	00000493          	li	s1,0
    80002790:	ee9ff06f          	j	80002678 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestTotalTaken != afterTestTotalTaken - allocatedMemory) return false;
    80002794:	00000493          	li	s1,0
    80002798:	ee1ff06f          	j	80002678 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestFreeBlockNo != afterTestFreeBlockNo + minNoBlocksForSize + addendForSegDesc) return false;
    8000279c:	00000493          	li	s1,0
    800027a0:	ed9ff06f          	j	80002678 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>

00000000800027a4 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>:
bool MemoryAllocatorTest::testMemoryFree(uint64 size, void* allocatedMemoryPointer) {
    800027a4:	fb010113          	addi	sp,sp,-80
    800027a8:	04113423          	sd	ra,72(sp)
    800027ac:	04813023          	sd	s0,64(sp)
    800027b0:	02913c23          	sd	s1,56(sp)
    800027b4:	03213823          	sd	s2,48(sp)
    800027b8:	03313423          	sd	s3,40(sp)
    800027bc:	03413023          	sd	s4,32(sp)
    800027c0:	01513c23          	sd	s5,24(sp)
    800027c4:	01613823          	sd	s6,16(sp)
    800027c8:	01713423          	sd	s7,8(sp)
    800027cc:	01813023          	sd	s8,0(sp)
    800027d0:	05010413          	addi	s0,sp,80
    800027d4:	00050a13          	mv	s4,a0
    800027d8:	00058913          	mv	s2,a1
    800027dc:	00060493          	mv	s1,a2
    if (!testMemoryMetadataValidity()) return false;
    800027e0:	00000097          	auipc	ra,0x0
    800027e4:	d8c080e7          	jalr	-628(ra) # 8000256c <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800027e8:	02051a63          	bnez	a0,8000281c <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x78>
}
    800027ec:	04813083          	ld	ra,72(sp)
    800027f0:	04013403          	ld	s0,64(sp)
    800027f4:	03813483          	ld	s1,56(sp)
    800027f8:	03013903          	ld	s2,48(sp)
    800027fc:	02813983          	ld	s3,40(sp)
    80002800:	02013a03          	ld	s4,32(sp)
    80002804:	01813a83          	ld	s5,24(sp)
    80002808:	01013b03          	ld	s6,16(sp)
    8000280c:	00813b83          	ld	s7,8(sp)
    80002810:	00013c03          	ld	s8,0(sp)
    80002814:	05010113          	addi	sp,sp,80
    80002818:	00008067          	ret
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    8000281c:	fffff097          	auipc	ra,0xfffff
    80002820:	64c080e7          	jalr	1612(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    80002824:	00053b03          	ld	s6,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002828:	fffff097          	auipc	ra,0xfffff
    8000282c:	640080e7          	jalr	1600(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    80002830:	00853b83          	ld	s7,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    80002834:	fffff097          	auipc	ra,0xfffff
    80002838:	634080e7          	jalr	1588(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    8000283c:	01053a83          	ld	s5,16(a0)
    size_t minNoBlocksForSize = MemoryAllocator::getMinBlockNumber(size);
    80002840:	00090513          	mv	a0,s2
    80002844:	fffff097          	auipc	ra,0xfffff
    80002848:	52c080e7          	jalr	1324(ra) # 80001d70 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    8000284c:	00050993          	mv	s3,a0
    size_t addendForSegDesc = minNoBlocksForSize * MEM_BLOCK_SIZE - size < sizeof(MemoryAllocator::SegmentDescriptor);
    80002850:	00651593          	slli	a1,a0,0x6
    80002854:	41258933          	sub	s2,a1,s2
    80002858:	01093913          	sltiu	s2,s2,16
    size_t allocatedMemory = (minNoBlocksForSize + addendForSegDesc) * MEM_BLOCK_SIZE;
    8000285c:	01250733          	add	a4,a0,s2
    80002860:	00671c13          	slli	s8,a4,0x6
    if (!allocatedMemoryPointer) {
    80002864:	08048463          	beqz	s1,800028ec <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x148>
    if (allocatedMemoryPointer) segDesc = (MemoryAllocator::SegmentDescriptor*)
    80002868:	08048a63          	beqz	s1,800028fc <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x158>
    8000286c:	ff048793          	addi	a5,s1,-16
    if (allocatedMemoryPointer)
    80002870:	00048863          	beqz	s1,80002880 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xdc>
    if (segDesc->noBlocks != minNoBlocksForSize + addendForSegDesc) return false;
    80002874:	0007b703          	ld	a4,0(a5)
    80002878:	012987b3          	add	a5,s3,s2
    8000287c:	08f71463          	bne	a4,a5,80002904 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x160>
    MemoryAllocator::instance()->kmem_free(allocatedMemoryPointer);
    80002880:	fffff097          	auipc	ra,0xfffff
    80002884:	5e8080e7          	jalr	1512(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002888:	00048593          	mv	a1,s1
    8000288c:	fffff097          	auipc	ra,0xfffff
    80002890:	768080e7          	jalr	1896(ra) # 80001ff4 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002894:	000a0513          	mv	a0,s4
    80002898:	00000097          	auipc	ra,0x0
    8000289c:	cd4080e7          	jalr	-812(ra) # 8000256c <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800028a0:	f40506e3          	beqz	a0,800027ec <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    size_t afterTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    800028a4:	fffff097          	auipc	ra,0xfffff
    800028a8:	5c4080e7          	jalr	1476(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    800028ac:	00053483          	ld	s1,0(a0)
    size_t afterTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    800028b0:	fffff097          	auipc	ra,0xfffff
    800028b4:	5b8080e7          	jalr	1464(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800028b8:	00853a03          	ld	s4,8(a0)
    size_t afterTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    800028bc:	fffff097          	auipc	ra,0xfffff
    800028c0:	5ac080e7          	jalr	1452(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    800028c4:	01053783          	ld	a5,16(a0)
    if (beforeTestTotalFree != afterTestTotalFree - allocatedMemory) return false;
    800028c8:	418484b3          	sub	s1,s1,s8
    800028cc:	05649063          	bne	s1,s6,8000290c <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x168>
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    800028d0:	014c0733          	add	a4,s8,s4
    800028d4:	05771063          	bne	a4,s7,80002914 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x170>
    return beforeTestFreeBlockNo == afterTestFreeBlockNo - minNoBlocksForSize - addendForSegDesc;
    800028d8:	41378533          	sub	a0,a5,s3
    800028dc:	41250533          	sub	a0,a0,s2
    800028e0:	41550533          	sub	a0,a0,s5
    800028e4:	00153513          	seqz	a0,a0
    800028e8:	f05ff06f          	j	800027ec <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
        minNoBlocksForSize = 0; addendForSegDesc = 0; allocatedMemory = 0;
    800028ec:	00000c13          	li	s8,0
    800028f0:	00000913          	li	s2,0
    800028f4:	00000993          	li	s3,0
    800028f8:	f71ff06f          	j	80002868 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xc4>
    MemoryAllocator::SegmentDescriptor* segDesc = nullptr;
    800028fc:	00048793          	mv	a5,s1
    80002900:	f71ff06f          	j	80002870 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xcc>
    if (segDesc->noBlocks != minNoBlocksForSize + addendForSegDesc) return false;
    80002904:	00000513          	li	a0,0
    80002908:	ee5ff06f          	j	800027ec <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    if (beforeTestTotalFree != afterTestTotalFree - allocatedMemory) return false;
    8000290c:	00000513          	li	a0,0
    80002910:	eddff06f          	j	800027ec <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    80002914:	00000513          	li	a0,0
    80002918:	ed5ff06f          	j	800027ec <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>

000000008000291c <_ZN19MemoryAllocatorTest13firstFitTest1Ev>:
    if (!firstFitTest2()) return false;
    if (!firstFitTest3()) return false;
    return true;
}

bool MemoryAllocatorTest::firstFitTest1() {
    8000291c:	fc010113          	addi	sp,sp,-64
    80002920:	02113c23          	sd	ra,56(sp)
    80002924:	02813823          	sd	s0,48(sp)
    80002928:	02913423          	sd	s1,40(sp)
    8000292c:	03213023          	sd	s2,32(sp)
    80002930:	01313c23          	sd	s3,24(sp)
    80002934:	01413823          	sd	s4,16(sp)
    80002938:	01513423          	sd	s5,8(sp)
    8000293c:	04010413          	addi	s0,sp,64
    80002940:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    80002944:	00000097          	auipc	ra,0x0
    80002948:	c28080e7          	jalr	-984(ra) # 8000256c <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    8000294c:	02051463          	bnez	a0,80002974 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x58>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002950:	03813083          	ld	ra,56(sp)
    80002954:	03013403          	ld	s0,48(sp)
    80002958:	02813483          	ld	s1,40(sp)
    8000295c:	02013903          	ld	s2,32(sp)
    80002960:	01813983          	ld	s3,24(sp)
    80002964:	01013a03          	ld	s4,16(sp)
    80002968:	00813a83          	ld	s5,8(sp)
    8000296c:	04010113          	addi	sp,sp,64
    80002970:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002974:	fffff097          	auipc	ra,0xfffff
    80002978:	4f4080e7          	jalr	1268(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    8000297c:	02f00593          	li	a1,47
    80002980:	fffff097          	auipc	ra,0xfffff
    80002984:	5cc080e7          	jalr	1484(ra) # 80001f4c <_ZN15MemoryAllocator10kmem_allocEm>
    80002988:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    8000298c:	00004797          	auipc	a5,0x4
    80002990:	7747b783          	ld	a5,1908(a5) # 80007100 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002994:	0007b783          	ld	a5,0(a5)
    80002998:	01078793          	addi	a5,a5,16
    8000299c:	00a78663          	beq	a5,a0,800029a8 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x8c>
        return false;
    800029a0:	00000513          	li	a0,0
    800029a4:	fadff06f          	j	80002950 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    800029a8:	fffff097          	auipc	ra,0xfffff
    800029ac:	4c0080e7          	jalr	1216(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    800029b0:	03000593          	li	a1,48
    800029b4:	fffff097          	auipc	ra,0xfffff
    800029b8:	598080e7          	jalr	1432(ra) # 80001f4c <_ZN15MemoryAllocator10kmem_allocEm>
    800029bc:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    800029c0:	00004797          	auipc	a5,0x4
    800029c4:	7407b783          	ld	a5,1856(a5) # 80007100 <_GLOBAL_OFFSET_TABLE_+0x68>
    800029c8:	0007b783          	ld	a5,0(a5)
    800029cc:	05078793          	addi	a5,a5,80
    800029d0:	00a78663          	beq	a5,a0,800029dc <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0xc0>
        return false;
    800029d4:	00000513          	li	a0,0
    800029d8:	f79ff06f          	j	80002950 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    800029dc:	fffff097          	auipc	ra,0xfffff
    800029e0:	48c080e7          	jalr	1164(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    800029e4:	03100593          	li	a1,49
    800029e8:	fffff097          	auipc	ra,0xfffff
    800029ec:	564080e7          	jalr	1380(ra) # 80001f4c <_ZN15MemoryAllocator10kmem_allocEm>
    800029f0:	00050a13          	mv	s4,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + 2 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    800029f4:	00004797          	auipc	a5,0x4
    800029f8:	70c7b783          	ld	a5,1804(a5) # 80007100 <_GLOBAL_OFFSET_TABLE_+0x68>
    800029fc:	0007b783          	ld	a5,0(a5)
    80002a00:	09078793          	addi	a5,a5,144
    80002a04:	00a78663          	beq	a5,a0,80002a10 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0xf4>
        return false;
    80002a08:	00000513          	li	a0,0
    80002a0c:	f45ff06f          	j	80002950 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002a10:	fffff097          	auipc	ra,0xfffff
    80002a14:	458080e7          	jalr	1112(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002a18:	00098593          	mv	a1,s3
    80002a1c:	fffff097          	auipc	ra,0xfffff
    80002a20:	5d8080e7          	jalr	1496(ra) # 80001ff4 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002a24:	fffff097          	auipc	ra,0xfffff
    80002a28:	444080e7          	jalr	1092(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002a2c:	01e00593          	li	a1,30
    80002a30:	fffff097          	auipc	ra,0xfffff
    80002a34:	51c080e7          	jalr	1308(ra) # 80001f4c <_ZN15MemoryAllocator10kmem_allocEm>
    80002a38:	00050993          	mv	s3,a0
    if (pointers[3] != MemoryAllocator::managedMemorySpaceStart + 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002a3c:	00004797          	auipc	a5,0x4
    80002a40:	6c47b783          	ld	a5,1732(a5) # 80007100 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a44:	0007b783          	ld	a5,0(a5)
    80002a48:	05078793          	addi	a5,a5,80
    80002a4c:	00a78663          	beq	a5,a0,80002a58 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x13c>
        return false;
    80002a50:	00000513          	li	a0,0
    80002a54:	efdff06f          	j	80002950 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002a58:	fffff097          	auipc	ra,0xfffff
    80002a5c:	410080e7          	jalr	1040(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002a60:	12100593          	li	a1,289
    80002a64:	fffff097          	auipc	ra,0xfffff
    80002a68:	4e8080e7          	jalr	1256(ra) # 80001f4c <_ZN15MemoryAllocator10kmem_allocEm>
    80002a6c:	00050a93          	mv	s5,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + 4 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002a70:	00004797          	auipc	a5,0x4
    80002a74:	6907b783          	ld	a5,1680(a5) # 80007100 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a78:	0007b783          	ld	a5,0(a5)
    80002a7c:	11078793          	addi	a5,a5,272
    80002a80:	00a78663          	beq	a5,a0,80002a8c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x170>
        return false;
    80002a84:	00000513          	li	a0,0
    80002a88:	ec9ff06f          	j	80002950 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    if (!testMemoryMetadataValidity()) return false;
    80002a8c:	00048513          	mv	a0,s1
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	adc080e7          	jalr	-1316(ra) # 8000256c <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002a98:	ea050ce3          	beqz	a0,80002950 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    80002a9c:	fffff097          	auipc	ra,0xfffff
    80002aa0:	3cc080e7          	jalr	972(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002aa4:	00090593          	mv	a1,s2
    80002aa8:	fffff097          	auipc	ra,0xfffff
    80002aac:	54c080e7          	jalr	1356(ra) # 80001ff4 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002ab0:	fffff097          	auipc	ra,0xfffff
    80002ab4:	3b8080e7          	jalr	952(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002ab8:	000a0593          	mv	a1,s4
    80002abc:	fffff097          	auipc	ra,0xfffff
    80002ac0:	538080e7          	jalr	1336(ra) # 80001ff4 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002ac4:	fffff097          	auipc	ra,0xfffff
    80002ac8:	3a4080e7          	jalr	932(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002acc:	00098593          	mv	a1,s3
    80002ad0:	fffff097          	auipc	ra,0xfffff
    80002ad4:	524080e7          	jalr	1316(ra) # 80001ff4 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80002ad8:	fffff097          	auipc	ra,0xfffff
    80002adc:	390080e7          	jalr	912(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002ae0:	000a8593          	mv	a1,s5
    80002ae4:	fffff097          	auipc	ra,0xfffff
    80002ae8:	510080e7          	jalr	1296(ra) # 80001ff4 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002aec:	00048513          	mv	a0,s1
    80002af0:	00000097          	auipc	ra,0x0
    80002af4:	a7c080e7          	jalr	-1412(ra) # 8000256c <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002af8:	e59ff06f          	j	80002950 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>

0000000080002afc <_ZN19MemoryAllocatorTest12printPointerEiPPv>:


void MemoryAllocatorTest::printPointer(int i, void** pointers) {
    80002afc:	fe010113          	addi	sp,sp,-32
    80002b00:	00113c23          	sd	ra,24(sp)
    80002b04:	00813823          	sd	s0,16(sp)
    80002b08:	00913423          	sd	s1,8(sp)
    80002b0c:	01213023          	sd	s2,0(sp)
    80002b10:	02010413          	addi	s0,sp,32
    80002b14:	00058913          	mv	s2,a1
    80002b18:	00060493          	mv	s1,a2
    printString("\npointers[");
    80002b1c:	00004517          	auipc	a0,0x4
    80002b20:	8a450513          	addi	a0,a0,-1884 # 800063c0 <CONSOLE_STATUS+0x3b0>
    80002b24:	00001097          	auipc	ra,0x1
    80002b28:	da8080e7          	jalr	-600(ra) # 800038cc <_Z11printStringPKc>
    printInteger(i);
    80002b2c:	00090513          	mv	a0,s2
    80002b30:	00001097          	auipc	ra,0x1
    80002b34:	e0c080e7          	jalr	-500(ra) # 8000393c <_Z12printIntegerm>
    printString("]: ");
    80002b38:	00004517          	auipc	a0,0x4
    80002b3c:	89850513          	addi	a0,a0,-1896 # 800063d0 <CONSOLE_STATUS+0x3c0>
    80002b40:	00001097          	auipc	ra,0x1
    80002b44:	d8c080e7          	jalr	-628(ra) # 800038cc <_Z11printStringPKc>
    printInteger((uint64)((uint8*) pointers[i] - MemoryAllocator::managedMemorySpaceStart));
    80002b48:	00391613          	slli	a2,s2,0x3
    80002b4c:	00c484b3          	add	s1,s1,a2
    80002b50:	0004b503          	ld	a0,0(s1)
    80002b54:	00004797          	auipc	a5,0x4
    80002b58:	5ac7b783          	ld	a5,1452(a5) # 80007100 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b5c:	0007b783          	ld	a5,0(a5)
    80002b60:	40f50533          	sub	a0,a0,a5
    80002b64:	00001097          	auipc	ra,0x1
    80002b68:	dd8080e7          	jalr	-552(ra) # 8000393c <_Z12printIntegerm>
    printString("\npointers[");
    80002b6c:	00004517          	auipc	a0,0x4
    80002b70:	85450513          	addi	a0,a0,-1964 # 800063c0 <CONSOLE_STATUS+0x3b0>
    80002b74:	00001097          	auipc	ra,0x1
    80002b78:	d58080e7          	jalr	-680(ra) # 800038cc <_Z11printStringPKc>
    printInteger(i);
    80002b7c:	00090513          	mv	a0,s2
    80002b80:	00001097          	auipc	ra,0x1
    80002b84:	dbc080e7          	jalr	-580(ra) # 8000393c <_Z12printIntegerm>
    printString("]->blockNo: "); printInteger((uint64) (((MemoryAllocator::SegmentDescriptor*) pointers[i])->noBlocks));
    80002b88:	00004517          	auipc	a0,0x4
    80002b8c:	85050513          	addi	a0,a0,-1968 # 800063d8 <CONSOLE_STATUS+0x3c8>
    80002b90:	00001097          	auipc	ra,0x1
    80002b94:	d3c080e7          	jalr	-708(ra) # 800038cc <_Z11printStringPKc>
    80002b98:	0004b783          	ld	a5,0(s1)
    80002b9c:	0007b503          	ld	a0,0(a5)
    80002ba0:	00001097          	auipc	ra,0x1
    80002ba4:	d9c080e7          	jalr	-612(ra) # 8000393c <_Z12printIntegerm>
    printString("\n");
    80002ba8:	00003517          	auipc	a0,0x3
    80002bac:	4e050513          	addi	a0,a0,1248 # 80006088 <CONSOLE_STATUS+0x78>
    80002bb0:	00001097          	auipc	ra,0x1
    80002bb4:	d1c080e7          	jalr	-740(ra) # 800038cc <_Z11printStringPKc>
}
    80002bb8:	01813083          	ld	ra,24(sp)
    80002bbc:	01013403          	ld	s0,16(sp)
    80002bc0:	00813483          	ld	s1,8(sp)
    80002bc4:	00013903          	ld	s2,0(sp)
    80002bc8:	02010113          	addi	sp,sp,32
    80002bcc:	00008067          	ret

0000000080002bd0 <_ZN19MemoryAllocatorTest13firstFitTest2Ev>:

bool MemoryAllocatorTest::firstFitTest2() {
    80002bd0:	fc010113          	addi	sp,sp,-64
    80002bd4:	02113c23          	sd	ra,56(sp)
    80002bd8:	02813823          	sd	s0,48(sp)
    80002bdc:	02913423          	sd	s1,40(sp)
    80002be0:	03213023          	sd	s2,32(sp)
    80002be4:	01313c23          	sd	s3,24(sp)
    80002be8:	01413823          	sd	s4,16(sp)
    80002bec:	01513423          	sd	s5,8(sp)
    80002bf0:	04010413          	addi	s0,sp,64
    80002bf4:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    80002bf8:	00000097          	auipc	ra,0x0
    80002bfc:	974080e7          	jalr	-1676(ra) # 8000256c <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002c00:	02051463          	bnez	a0,80002c28 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x58>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002c04:	03813083          	ld	ra,56(sp)
    80002c08:	03013403          	ld	s0,48(sp)
    80002c0c:	02813483          	ld	s1,40(sp)
    80002c10:	02013903          	ld	s2,32(sp)
    80002c14:	01813983          	ld	s3,24(sp)
    80002c18:	01013a03          	ld	s4,16(sp)
    80002c1c:	00813a83          	ld	s5,8(sp)
    80002c20:	04010113          	addi	sp,sp,64
    80002c24:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002c28:	fffff097          	auipc	ra,0xfffff
    80002c2c:	240080e7          	jalr	576(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002c30:	08200593          	li	a1,130
    80002c34:	fffff097          	auipc	ra,0xfffff
    80002c38:	318080e7          	jalr	792(ra) # 80001f4c <_ZN15MemoryAllocator10kmem_allocEm>
    80002c3c:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002c40:	00004797          	auipc	a5,0x4
    80002c44:	4c07b783          	ld	a5,1216(a5) # 80007100 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002c48:	0007b783          	ld	a5,0(a5)
    80002c4c:	01078793          	addi	a5,a5,16
    80002c50:	00a78663          	beq	a5,a0,80002c5c <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x8c>
        return false;
    80002c54:	00000513          	li	a0,0
    80002c58:	fadff06f          	j	80002c04 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    80002c5c:	fffff097          	auipc	ra,0xfffff
    80002c60:	20c080e7          	jalr	524(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002c64:	01400593          	li	a1,20
    80002c68:	fffff097          	auipc	ra,0xfffff
    80002c6c:	2e4080e7          	jalr	740(ra) # 80001f4c <_ZN15MemoryAllocator10kmem_allocEm>
    80002c70:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 3 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002c74:	00004797          	auipc	a5,0x4
    80002c78:	48c7b783          	ld	a5,1164(a5) # 80007100 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002c7c:	0007b783          	ld	a5,0(a5)
    80002c80:	0d078793          	addi	a5,a5,208
    80002c84:	00a78663          	beq	a5,a0,80002c90 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0xc0>
        return false;
    80002c88:	00000513          	li	a0,0
    80002c8c:	f79ff06f          	j	80002c04 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    80002c90:	fffff097          	auipc	ra,0xfffff
    80002c94:	1d8080e7          	jalr	472(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002c98:	00090593          	mv	a1,s2
    80002c9c:	fffff097          	auipc	ra,0xfffff
    80002ca0:	358080e7          	jalr	856(ra) # 80001ff4 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    80002ca4:	fffff097          	auipc	ra,0xfffff
    80002ca8:	1c4080e7          	jalr	452(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002cac:	07800593          	li	a1,120
    80002cb0:	fffff097          	auipc	ra,0xfffff
    80002cb4:	29c080e7          	jalr	668(ra) # 80001f4c <_ZN15MemoryAllocator10kmem_allocEm>
    80002cb8:	00050913          	mv	s2,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002cbc:	00004797          	auipc	a5,0x4
    80002cc0:	4447b783          	ld	a5,1092(a5) # 80007100 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002cc4:	0007b783          	ld	a5,0(a5)
    80002cc8:	01078793          	addi	a5,a5,16
    80002ccc:	00a78663          	beq	a5,a0,80002cd8 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x108>
        return false;
    80002cd0:	00000513          	li	a0,0
    80002cd4:	f31ff06f          	j	80002c04 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002cd8:	fffff097          	auipc	ra,0xfffff
    80002cdc:	190080e7          	jalr	400(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002ce0:	01e00593          	li	a1,30
    80002ce4:	fffff097          	auipc	ra,0xfffff
    80002ce8:	268080e7          	jalr	616(ra) # 80001f4c <_ZN15MemoryAllocator10kmem_allocEm>
    80002cec:	00050a13          	mv	s4,a0
    if (pointers[3] != MemoryAllocator::managedMemorySpaceStart + 4 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002cf0:	00004797          	auipc	a5,0x4
    80002cf4:	4107b783          	ld	a5,1040(a5) # 80007100 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002cf8:	0007b783          	ld	a5,0(a5)
    80002cfc:	11078793          	addi	a5,a5,272
    80002d00:	00a78663          	beq	a5,a0,80002d0c <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x13c>
        return false;
    80002d04:	00000513          	li	a0,0
    80002d08:	efdff06f          	j	80002c04 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002d0c:	fffff097          	auipc	ra,0xfffff
    80002d10:	15c080e7          	jalr	348(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002d14:	00090593          	mv	a1,s2
    80002d18:	fffff097          	auipc	ra,0xfffff
    80002d1c:	2dc080e7          	jalr	732(ra) # 80001ff4 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002d20:	fffff097          	auipc	ra,0xfffff
    80002d24:	148080e7          	jalr	328(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002d28:	02f00593          	li	a1,47
    80002d2c:	fffff097          	auipc	ra,0xfffff
    80002d30:	220080e7          	jalr	544(ra) # 80001f4c <_ZN15MemoryAllocator10kmem_allocEm>
    80002d34:	00050913          	mv	s2,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002d38:	00004797          	auipc	a5,0x4
    80002d3c:	3c87b783          	ld	a5,968(a5) # 80007100 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002d40:	0007b783          	ld	a5,0(a5)
    80002d44:	01078793          	addi	a5,a5,16
    80002d48:	00a78663          	beq	a5,a0,80002d54 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x184>
        return false;
    80002d4c:	00000513          	li	a0,0
    80002d50:	eb5ff06f          	j	80002c04 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[5] = MemoryAllocator::instance()->kmem_alloc(sizes[5]);
    80002d54:	fffff097          	auipc	ra,0xfffff
    80002d58:	114080e7          	jalr	276(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002d5c:	01400593          	li	a1,20
    80002d60:	fffff097          	auipc	ra,0xfffff
    80002d64:	1ec080e7          	jalr	492(ra) # 80001f4c <_ZN15MemoryAllocator10kmem_allocEm>
    80002d68:	00050a93          	mv	s5,a0
    if (pointers[5] != MemoryAllocator::managedMemorySpaceStart + 1 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002d6c:	00004797          	auipc	a5,0x4
    80002d70:	3947b783          	ld	a5,916(a5) # 80007100 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002d74:	0007b783          	ld	a5,0(a5)
    80002d78:	05078793          	addi	a5,a5,80
    80002d7c:	00a78663          	beq	a5,a0,80002d88 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x1b8>
        return false;
    80002d80:	00000513          	li	a0,0
    80002d84:	e81ff06f          	j	80002c04 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    if (!testMemoryMetadataValidity()) return false;
    80002d88:	00048513          	mv	a0,s1
    80002d8c:	fffff097          	auipc	ra,0xfffff
    80002d90:	7e0080e7          	jalr	2016(ra) # 8000256c <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002d94:	e60508e3          	beqz	a0,80002c04 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002d98:	fffff097          	auipc	ra,0xfffff
    80002d9c:	0d0080e7          	jalr	208(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002da0:	00098593          	mv	a1,s3
    80002da4:	fffff097          	auipc	ra,0xfffff
    80002da8:	250080e7          	jalr	592(ra) # 80001ff4 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002dac:	fffff097          	auipc	ra,0xfffff
    80002db0:	0bc080e7          	jalr	188(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002db4:	000a0593          	mv	a1,s4
    80002db8:	fffff097          	auipc	ra,0xfffff
    80002dbc:	23c080e7          	jalr	572(ra) # 80001ff4 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80002dc0:	fffff097          	auipc	ra,0xfffff
    80002dc4:	0a8080e7          	jalr	168(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002dc8:	00090593          	mv	a1,s2
    80002dcc:	fffff097          	auipc	ra,0xfffff
    80002dd0:	228080e7          	jalr	552(ra) # 80001ff4 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    80002dd4:	fffff097          	auipc	ra,0xfffff
    80002dd8:	094080e7          	jalr	148(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002ddc:	000a8593          	mv	a1,s5
    80002de0:	fffff097          	auipc	ra,0xfffff
    80002de4:	214080e7          	jalr	532(ra) # 80001ff4 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002de8:	00048513          	mv	a0,s1
    80002dec:	fffff097          	auipc	ra,0xfffff
    80002df0:	780080e7          	jalr	1920(ra) # 8000256c <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002df4:	e11ff06f          	j	80002c04 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>

0000000080002df8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev>:


bool MemoryAllocatorTest::firstFitTest3() {
    80002df8:	fb010113          	addi	sp,sp,-80
    80002dfc:	04113423          	sd	ra,72(sp)
    80002e00:	04813023          	sd	s0,64(sp)
    80002e04:	02913c23          	sd	s1,56(sp)
    80002e08:	03213823          	sd	s2,48(sp)
    80002e0c:	03313423          	sd	s3,40(sp)
    80002e10:	03413023          	sd	s4,32(sp)
    80002e14:	01513c23          	sd	s5,24(sp)
    80002e18:	01613823          	sd	s6,16(sp)
    80002e1c:	01713423          	sd	s7,8(sp)
    80002e20:	05010413          	addi	s0,sp,80
    80002e24:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    80002e28:	fffff097          	auipc	ra,0xfffff
    80002e2c:	744080e7          	jalr	1860(ra) # 8000256c <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002e30:	02051863          	bnez	a0,80002e60 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x68>
    MemoryAllocator::instance()->kmem_free(pointers[6]);
    MemoryAllocator::instance()->kmem_free(pointers[7]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002e34:	04813083          	ld	ra,72(sp)
    80002e38:	04013403          	ld	s0,64(sp)
    80002e3c:	03813483          	ld	s1,56(sp)
    80002e40:	03013903          	ld	s2,48(sp)
    80002e44:	02813983          	ld	s3,40(sp)
    80002e48:	02013a03          	ld	s4,32(sp)
    80002e4c:	01813a83          	ld	s5,24(sp)
    80002e50:	01013b03          	ld	s6,16(sp)
    80002e54:	00813b83          	ld	s7,8(sp)
    80002e58:	05010113          	addi	sp,sp,80
    80002e5c:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002e60:	fffff097          	auipc	ra,0xfffff
    80002e64:	008080e7          	jalr	8(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002e68:	13000593          	li	a1,304
    80002e6c:	fffff097          	auipc	ra,0xfffff
    80002e70:	0e0080e7          	jalr	224(ra) # 80001f4c <_ZN15MemoryAllocator10kmem_allocEm>
    80002e74:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002e78:	00004797          	auipc	a5,0x4
    80002e7c:	2887b783          	ld	a5,648(a5) # 80007100 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002e80:	0007b783          	ld	a5,0(a5)
    80002e84:	01078793          	addi	a5,a5,16
    80002e88:	00a78663          	beq	a5,a0,80002e94 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x9c>
        return false;
    80002e8c:	00000513          	li	a0,0
    80002e90:	fa5ff06f          	j	80002e34 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    80002e94:	fffff097          	auipc	ra,0xfffff
    80002e98:	fd4080e7          	jalr	-44(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002e9c:	03100593          	li	a1,49
    80002ea0:	fffff097          	auipc	ra,0xfffff
    80002ea4:	0ac080e7          	jalr	172(ra) # 80001f4c <_ZN15MemoryAllocator10kmem_allocEm>
    80002ea8:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 5 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002eac:	00004797          	auipc	a5,0x4
    80002eb0:	2547b783          	ld	a5,596(a5) # 80007100 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002eb4:	0007b783          	ld	a5,0(a5)
    80002eb8:	15078793          	addi	a5,a5,336
    80002ebc:	00a78663          	beq	a5,a0,80002ec8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0xd0>
        return false;
    80002ec0:	00000513          	li	a0,0
    80002ec4:	f71ff06f          	j	80002e34 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    80002ec8:	fffff097          	auipc	ra,0xfffff
    80002ecc:	fa0080e7          	jalr	-96(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002ed0:	00090593          	mv	a1,s2
    80002ed4:	fffff097          	auipc	ra,0xfffff
    80002ed8:	120080e7          	jalr	288(ra) # 80001ff4 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    80002edc:	fffff097          	auipc	ra,0xfffff
    80002ee0:	f8c080e7          	jalr	-116(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002ee4:	0e600593          	li	a1,230
    80002ee8:	fffff097          	auipc	ra,0xfffff
    80002eec:	064080e7          	jalr	100(ra) # 80001f4c <_ZN15MemoryAllocator10kmem_allocEm>
    80002ef0:	00050913          	mv	s2,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002ef4:	00004797          	auipc	a5,0x4
    80002ef8:	20c7b783          	ld	a5,524(a5) # 80007100 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002efc:	0007b783          	ld	a5,0(a5)
    80002f00:	01078793          	addi	a5,a5,16
    80002f04:	00a78663          	beq	a5,a0,80002f10 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x118>
        return false;
    80002f08:	00000513          	li	a0,0
    80002f0c:	f29ff06f          	j	80002e34 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002f10:	fffff097          	auipc	ra,0xfffff
    80002f14:	f58080e7          	jalr	-168(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002f18:	fdb00593          	li	a1,-37
    80002f1c:	fffff097          	auipc	ra,0xfffff
    80002f20:	030080e7          	jalr	48(ra) # 80001f4c <_ZN15MemoryAllocator10kmem_allocEm>
    80002f24:	00050a13          	mv	s4,a0
    if (pointers[3]) return false;
    80002f28:	00050663          	beqz	a0,80002f34 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x13c>
    80002f2c:	00000513          	li	a0,0
    80002f30:	f05ff06f          	j	80002e34 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002f34:	fffff097          	auipc	ra,0xfffff
    80002f38:	f34080e7          	jalr	-204(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002f3c:	01e00593          	li	a1,30
    80002f40:	fffff097          	auipc	ra,0xfffff
    80002f44:	00c080e7          	jalr	12(ra) # 80001f4c <_ZN15MemoryAllocator10kmem_allocEm>
    80002f48:	00050a93          	mv	s5,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + 7 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002f4c:	00004797          	auipc	a5,0x4
    80002f50:	1b47b783          	ld	a5,436(a5) # 80007100 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002f54:	0007b783          	ld	a5,0(a5)
    80002f58:	1d078793          	addi	a5,a5,464
    80002f5c:	00a78663          	beq	a5,a0,80002f68 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x170>
        return false;
    80002f60:	00000513          	li	a0,0
    80002f64:	ed1ff06f          	j	80002e34 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002f68:	fffff097          	auipc	ra,0xfffff
    80002f6c:	f00080e7          	jalr	-256(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002f70:	00090593          	mv	a1,s2
    80002f74:	fffff097          	auipc	ra,0xfffff
    80002f78:	080080e7          	jalr	128(ra) # 80001ff4 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[5] = MemoryAllocator::instance()->kmem_alloc(sizes[5]);
    80002f7c:	fffff097          	auipc	ra,0xfffff
    80002f80:	eec080e7          	jalr	-276(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002f84:	09600593          	li	a1,150
    80002f88:	fffff097          	auipc	ra,0xfffff
    80002f8c:	fc4080e7          	jalr	-60(ra) # 80001f4c <_ZN15MemoryAllocator10kmem_allocEm>
    80002f90:	00050b93          	mv	s7,a0
    if (pointers[5] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002f94:	00004797          	auipc	a5,0x4
    80002f98:	16c7b783          	ld	a5,364(a5) # 80007100 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002f9c:	0007b783          	ld	a5,0(a5)
    80002fa0:	01078793          	addi	a5,a5,16
    80002fa4:	00a78663          	beq	a5,a0,80002fb0 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x1b8>
        return false;
    80002fa8:	00000513          	li	a0,0
    80002fac:	e89ff06f          	j	80002e34 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[6] = MemoryAllocator::instance()->kmem_alloc(sizes[6]);
    80002fb0:	fffff097          	auipc	ra,0xfffff
    80002fb4:	eb8080e7          	jalr	-328(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002fb8:	02f00593          	li	a1,47
    80002fbc:	fffff097          	auipc	ra,0xfffff
    80002fc0:	f90080e7          	jalr	-112(ra) # 80001f4c <_ZN15MemoryAllocator10kmem_allocEm>
    80002fc4:	00050b13          	mv	s6,a0
    if (pointers[6] != MemoryAllocator::managedMemorySpaceStart + 3 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002fc8:	00004797          	auipc	a5,0x4
    80002fcc:	1387b783          	ld	a5,312(a5) # 80007100 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002fd0:	0007b783          	ld	a5,0(a5)
    80002fd4:	0d078793          	addi	a5,a5,208
    80002fd8:	00a78663          	beq	a5,a0,80002fe4 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x1ec>
        return false;
    80002fdc:	00000513          	li	a0,0
    80002fe0:	e55ff06f          	j	80002e34 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[7] = MemoryAllocator::instance()->kmem_alloc(sizes[7]);
    80002fe4:	fffff097          	auipc	ra,0xfffff
    80002fe8:	e84080e7          	jalr	-380(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80002fec:	02500593          	li	a1,37
    80002ff0:	fffff097          	auipc	ra,0xfffff
    80002ff4:	f5c080e7          	jalr	-164(ra) # 80001f4c <_ZN15MemoryAllocator10kmem_allocEm>
    80002ff8:	00050913          	mv	s2,a0
    if (pointers[7] != MemoryAllocator::managedMemorySpaceStart + 8 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002ffc:	00004797          	auipc	a5,0x4
    80003000:	1047b783          	ld	a5,260(a5) # 80007100 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003004:	0007b783          	ld	a5,0(a5)
    80003008:	21078793          	addi	a5,a5,528
    8000300c:	00a78663          	beq	a5,a0,80003018 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x220>
        return false;
    80003010:	00000513          	li	a0,0
    80003014:	e21ff06f          	j	80002e34 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    if (!testMemoryMetadataValidity()) return false;
    80003018:	00048513          	mv	a0,s1
    8000301c:	fffff097          	auipc	ra,0xfffff
    80003020:	550080e7          	jalr	1360(ra) # 8000256c <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80003024:	e00508e3          	beqz	a0,80002e34 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80003028:	fffff097          	auipc	ra,0xfffff
    8000302c:	e40080e7          	jalr	-448(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80003030:	00098593          	mv	a1,s3
    80003034:	fffff097          	auipc	ra,0xfffff
    80003038:	fc0080e7          	jalr	-64(ra) # 80001ff4 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    8000303c:	fffff097          	auipc	ra,0xfffff
    80003040:	e2c080e7          	jalr	-468(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80003044:	000a0593          	mv	a1,s4
    80003048:	fffff097          	auipc	ra,0xfffff
    8000304c:	fac080e7          	jalr	-84(ra) # 80001ff4 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80003050:	fffff097          	auipc	ra,0xfffff
    80003054:	e18080e7          	jalr	-488(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80003058:	000a8593          	mv	a1,s5
    8000305c:	fffff097          	auipc	ra,0xfffff
    80003060:	f98080e7          	jalr	-104(ra) # 80001ff4 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    80003064:	fffff097          	auipc	ra,0xfffff
    80003068:	e04080e7          	jalr	-508(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    8000306c:	000b8593          	mv	a1,s7
    80003070:	fffff097          	auipc	ra,0xfffff
    80003074:	f84080e7          	jalr	-124(ra) # 80001ff4 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[6]);
    80003078:	fffff097          	auipc	ra,0xfffff
    8000307c:	df0080e7          	jalr	-528(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80003080:	000b0593          	mv	a1,s6
    80003084:	fffff097          	auipc	ra,0xfffff
    80003088:	f70080e7          	jalr	-144(ra) # 80001ff4 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[7]);
    8000308c:	fffff097          	auipc	ra,0xfffff
    80003090:	ddc080e7          	jalr	-548(ra) # 80001e68 <_ZN15MemoryAllocator8instanceEv>
    80003094:	00090593          	mv	a1,s2
    80003098:	fffff097          	auipc	ra,0xfffff
    8000309c:	f5c080e7          	jalr	-164(ra) # 80001ff4 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    800030a0:	00048513          	mv	a0,s1
    800030a4:	fffff097          	auipc	ra,0xfffff
    800030a8:	4c8080e7          	jalr	1224(ra) # 8000256c <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800030ac:	d89ff06f          	j	80002e34 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>

00000000800030b0 <_ZN19MemoryAllocatorTest12testFirstFitEv>:
bool MemoryAllocatorTest::testFirstFit() {
    800030b0:	fe010113          	addi	sp,sp,-32
    800030b4:	00113c23          	sd	ra,24(sp)
    800030b8:	00813823          	sd	s0,16(sp)
    800030bc:	00913423          	sd	s1,8(sp)
    800030c0:	02010413          	addi	s0,sp,32
    800030c4:	00050493          	mv	s1,a0
    if (!firstFitTest1()) return false;
    800030c8:	00000097          	auipc	ra,0x0
    800030cc:	854080e7          	jalr	-1964(ra) # 8000291c <_ZN19MemoryAllocatorTest13firstFitTest1Ev>
    800030d0:	00051c63          	bnez	a0,800030e8 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x38>
}
    800030d4:	01813083          	ld	ra,24(sp)
    800030d8:	01013403          	ld	s0,16(sp)
    800030dc:	00813483          	ld	s1,8(sp)
    800030e0:	02010113          	addi	sp,sp,32
    800030e4:	00008067          	ret
    if (!firstFitTest2()) return false;
    800030e8:	00048513          	mv	a0,s1
    800030ec:	00000097          	auipc	ra,0x0
    800030f0:	ae4080e7          	jalr	-1308(ra) # 80002bd0 <_ZN19MemoryAllocatorTest13firstFitTest2Ev>
    800030f4:	fe0500e3          	beqz	a0,800030d4 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x24>
    if (!firstFitTest3()) return false;
    800030f8:	00048513          	mv	a0,s1
    800030fc:	00000097          	auipc	ra,0x0
    80003100:	cfc080e7          	jalr	-772(ra) # 80002df8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev>
    80003104:	fd1ff06f          	j	800030d4 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x24>

0000000080003108 <_ZN19MemoryAllocatorTest25testSegmentDescriptorSizeEv>:

bool MemoryAllocatorTest::testSegmentDescriptorSize() {
    80003108:	ff010113          	addi	sp,sp,-16
    8000310c:	00113423          	sd	ra,8(sp)
    80003110:	00813023          	sd	s0,0(sp)
    80003114:	01010413          	addi	s0,sp,16
    if (!testMemoryMetadataValidity()) return false;
    80003118:	fffff097          	auipc	ra,0xfffff
    8000311c:	454080e7          	jalr	1108(ra) # 8000256c <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    return sizeof(MemoryAllocator::SegmentDescriptor) == 16;
}
    80003120:	00813083          	ld	ra,8(sp)
    80003124:	00013403          	ld	s0,0(sp)
    80003128:	01010113          	addi	sp,sp,16
    8000312c:	00008067          	ret

0000000080003130 <_ZN19MemoryAllocatorTest8runTestsEv>:
bool MemoryAllocatorTest::runTests() {
    80003130:	f6010113          	addi	sp,sp,-160
    80003134:	08113c23          	sd	ra,152(sp)
    80003138:	08813823          	sd	s0,144(sp)
    8000313c:	08913423          	sd	s1,136(sp)
    80003140:	09213023          	sd	s2,128(sp)
    80003144:	07313c23          	sd	s3,120(sp)
    80003148:	0a010413          	addi	s0,sp,160
    8000314c:	00050993          	mv	s3,a0
    sizes[0] = 3.7 * MEM_BLOCK_SIZE;
    80003150:	0ec00793          	li	a5,236
    80003154:	f6f43423          	sd	a5,-152(s0)
    sizes[1] = MEM_BLOCK_SIZE;
    80003158:	04000793          	li	a5,64
    8000315c:	f6f43823          	sd	a5,-144(s0)
    sizes[2] = 0.3 * MEM_BLOCK_SIZE;
    80003160:	01300793          	li	a5,19
    80003164:	f6f43c23          	sd	a5,-136(s0)
    sizes[3] = 0;
    80003168:	f8043023          	sd	zero,-128(s0)
    sizes[4] = -37;
    8000316c:	fdb00793          	li	a5,-37
    80003170:	f8f43423          	sd	a5,-120(s0)
    sizes[5] = sizeof(MemoryAllocator::SegmentDescriptor) - 1;
    80003174:	00f00793          	li	a5,15
    80003178:	f8f43823          	sd	a5,-112(s0)
    sizes[6] = sizeof(MemoryAllocator::SegmentDescriptor);
    8000317c:	01000793          	li	a5,16
    80003180:	f8f43c23          	sd	a5,-104(s0)
    sizes[7] = sizeof(MemoryAllocator::SegmentDescriptor) + 1;
    80003184:	01100793          	li	a5,17
    80003188:	faf43023          	sd	a5,-96(s0)
    sizes[8] = MemoryAllocator::minMemoryFragmentSize - 1;
    8000318c:	00004797          	auipc	a5,0x4
    80003190:	f3c7b783          	ld	a5,-196(a5) # 800070c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003194:	0007b783          	ld	a5,0(a5)
    80003198:	fff78713          	addi	a4,a5,-1
    8000319c:	fae43423          	sd	a4,-88(s0)
    sizes[9] = MemoryAllocator::minMemoryFragmentSize;
    800031a0:	faf43823          	sd	a5,-80(s0)
    sizes[10] = MemoryAllocator::minMemoryFragmentSize + 1;
    800031a4:	00178793          	addi	a5,a5,1
    800031a8:	faf43c23          	sd	a5,-72(s0)
    sizes[11] = MEM_BLOCK_SIZE - 1;
    800031ac:	03f00793          	li	a5,63
    800031b0:	fcf43023          	sd	a5,-64(s0)
    sizes[12] = MEM_BLOCK_SIZE + 1;
    800031b4:	04100793          	li	a5,65
    800031b8:	fcf43423          	sd	a5,-56(s0)
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    800031bc:	00000493          	li	s1,0
    800031c0:	0880006f          	j	80003248 <_ZN19MemoryAllocatorTest8runTestsEv+0x118>
            printString("Failed testMemoryAllocate test for input ");
    800031c4:	00003517          	auipc	a0,0x3
    800031c8:	22450513          	addi	a0,a0,548 # 800063e8 <CONSOLE_STATUS+0x3d8>
    800031cc:	00000097          	auipc	ra,0x0
    800031d0:	700080e7          	jalr	1792(ra) # 800038cc <_Z11printStringPKc>
            printInteger(sizes[i]); printString("\n"); return false;
    800031d4:	00090513          	mv	a0,s2
    800031d8:	00000097          	auipc	ra,0x0
    800031dc:	764080e7          	jalr	1892(ra) # 8000393c <_Z12printIntegerm>
    800031e0:	00003517          	auipc	a0,0x3
    800031e4:	ea850513          	addi	a0,a0,-344 # 80006088 <CONSOLE_STATUS+0x78>
    800031e8:	00000097          	auipc	ra,0x0
    800031ec:	6e4080e7          	jalr	1764(ra) # 800038cc <_Z11printStringPKc>
    800031f0:	00000493          	li	s1,0
}
    800031f4:	00048513          	mv	a0,s1
    800031f8:	09813083          	ld	ra,152(sp)
    800031fc:	09013403          	ld	s0,144(sp)
    80003200:	08813483          	ld	s1,136(sp)
    80003204:	08013903          	ld	s2,128(sp)
    80003208:	07813983          	ld	s3,120(sp)
    8000320c:	0a010113          	addi	sp,sp,160
    80003210:	00008067          	ret
            printString("Failed testMemoryFree test for input ");
    80003214:	00003517          	auipc	a0,0x3
    80003218:	20c50513          	addi	a0,a0,524 # 80006420 <CONSOLE_STATUS+0x410>
    8000321c:	00000097          	auipc	ra,0x0
    80003220:	6b0080e7          	jalr	1712(ra) # 800038cc <_Z11printStringPKc>
            printInteger(sizes[i]); printString("\n"); return false;
    80003224:	00090513          	mv	a0,s2
    80003228:	00000097          	auipc	ra,0x0
    8000322c:	714080e7          	jalr	1812(ra) # 8000393c <_Z12printIntegerm>
    80003230:	00003517          	auipc	a0,0x3
    80003234:	e5850513          	addi	a0,a0,-424 # 80006088 <CONSOLE_STATUS+0x78>
    80003238:	00000097          	auipc	ra,0x0
    8000323c:	694080e7          	jalr	1684(ra) # 800038cc <_Z11printStringPKc>
    80003240:	fb1ff06f          	j	800031f0 <_ZN19MemoryAllocatorTest8runTestsEv+0xc0>
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    80003244:	0014849b          	addiw	s1,s1,1
    80003248:	00c00793          	li	a5,12
    8000324c:	0897c863          	blt	a5,s1,800032dc <_ZN19MemoryAllocatorTest8runTestsEv+0x1ac>
        void * allocatedMemoryPointer = nullptr;
    80003250:	f6043023          	sd	zero,-160(s0)
        if (!testMemoryAllocate(sizes[i], &allocatedMemoryPointer)) {
    80003254:	00349793          	slli	a5,s1,0x3
    80003258:	fd040713          	addi	a4,s0,-48
    8000325c:	00f707b3          	add	a5,a4,a5
    80003260:	f987b903          	ld	s2,-104(a5)
    80003264:	f6040613          	addi	a2,s0,-160
    80003268:	00090593          	mv	a1,s2
    8000326c:	00098513          	mv	a0,s3
    80003270:	fffff097          	auipc	ra,0xfffff
    80003274:	3b4080e7          	jalr	948(ra) # 80002624 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>
    80003278:	f40506e3          	beqz	a0,800031c4 <_ZN19MemoryAllocatorTest8runTestsEv+0x94>
        } else printString("Passed ");
    8000327c:	00003517          	auipc	a0,0x3
    80003280:	19c50513          	addi	a0,a0,412 # 80006418 <CONSOLE_STATUS+0x408>
    80003284:	00000097          	auipc	ra,0x0
    80003288:	648080e7          	jalr	1608(ra) # 800038cc <_Z11printStringPKc>
        if (!testMemoryFree(sizes[i], allocatedMemoryPointer)) {
    8000328c:	f6043603          	ld	a2,-160(s0)
    80003290:	00090593          	mv	a1,s2
    80003294:	00098513          	mv	a0,s3
    80003298:	fffff097          	auipc	ra,0xfffff
    8000329c:	50c080e7          	jalr	1292(ra) # 800027a4 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>
    800032a0:	f6050ae3          	beqz	a0,80003214 <_ZN19MemoryAllocatorTest8runTestsEv+0xe4>
        } else printString("Passed ");
    800032a4:	00003517          	auipc	a0,0x3
    800032a8:	17450513          	addi	a0,a0,372 # 80006418 <CONSOLE_STATUS+0x408>
    800032ac:	00000097          	auipc	ra,0x0
    800032b0:	620080e7          	jalr	1568(ra) # 800038cc <_Z11printStringPKc>
        if (i != 0 && (i + 1) % 5 == 0) printString("\n");
    800032b4:	f80488e3          	beqz	s1,80003244 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    800032b8:	0014879b          	addiw	a5,s1,1
    800032bc:	00500713          	li	a4,5
    800032c0:	02e7e7bb          	remw	a5,a5,a4
    800032c4:	f80790e3          	bnez	a5,80003244 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    800032c8:	00003517          	auipc	a0,0x3
    800032cc:	dc050513          	addi	a0,a0,-576 # 80006088 <CONSOLE_STATUS+0x78>
    800032d0:	00000097          	auipc	ra,0x0
    800032d4:	5fc080e7          	jalr	1532(ra) # 800038cc <_Z11printStringPKc>
    800032d8:	f6dff06f          	j	80003244 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    if (!testFirstFit()) {
    800032dc:	00098513          	mv	a0,s3
    800032e0:	00000097          	auipc	ra,0x0
    800032e4:	dd0080e7          	jalr	-560(ra) # 800030b0 <_ZN19MemoryAllocatorTest12testFirstFitEv>
    800032e8:	00050493          	mv	s1,a0
    800032ec:	02050e63          	beqz	a0,80003328 <_ZN19MemoryAllocatorTest8runTestsEv+0x1f8>
    else printString("Passed ");
    800032f0:	00003517          	auipc	a0,0x3
    800032f4:	12850513          	addi	a0,a0,296 # 80006418 <CONSOLE_STATUS+0x408>
    800032f8:	00000097          	auipc	ra,0x0
    800032fc:	5d4080e7          	jalr	1492(ra) # 800038cc <_Z11printStringPKc>
    if (!testSegmentDescriptorSize()) {
    80003300:	00098513          	mv	a0,s3
    80003304:	00000097          	auipc	ra,0x0
    80003308:	e04080e7          	jalr	-508(ra) # 80003108 <_ZN19MemoryAllocatorTest25testSegmentDescriptorSizeEv>
    8000330c:	00050493          	mv	s1,a0
    80003310:	02050663          	beqz	a0,8000333c <_ZN19MemoryAllocatorTest8runTestsEv+0x20c>
    else printString("Passed\n");
    80003314:	00003517          	auipc	a0,0x3
    80003318:	17450513          	addi	a0,a0,372 # 80006488 <CONSOLE_STATUS+0x478>
    8000331c:	00000097          	auipc	ra,0x0
    80003320:	5b0080e7          	jalr	1456(ra) # 800038cc <_Z11printStringPKc>
    80003324:	ed1ff06f          	j	800031f4 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>
        printString("Failed testFirstFit\n"); return false; }
    80003328:	00003517          	auipc	a0,0x3
    8000332c:	12050513          	addi	a0,a0,288 # 80006448 <CONSOLE_STATUS+0x438>
    80003330:	00000097          	auipc	ra,0x0
    80003334:	59c080e7          	jalr	1436(ra) # 800038cc <_Z11printStringPKc>
    80003338:	ebdff06f          	j	800031f4 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>
        printString("Failed testSegmentDescriptorSize\n"); return false; }
    8000333c:	00003517          	auipc	a0,0x3
    80003340:	12450513          	addi	a0,a0,292 # 80006460 <CONSOLE_STATUS+0x450>
    80003344:	00000097          	auipc	ra,0x0
    80003348:	588080e7          	jalr	1416(ra) # 800038cc <_Z11printStringPKc>
    8000334c:	ea9ff06f          	j	800031f4 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>

0000000080003350 <_Znwm>:


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80003350:	ff010113          	addi	sp,sp,-16
    80003354:	00113423          	sd	ra,8(sp)
    80003358:	00813023          	sd	s0,0(sp)
    8000335c:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80003360:	00003097          	auipc	ra,0x3
    80003364:	878080e7          	jalr	-1928(ra) # 80005bd8 <__mem_alloc>
    //return MemoryAllocator::instance()->kmem_alloc(n);
}
    80003368:	00813083          	ld	ra,8(sp)
    8000336c:	00013403          	ld	s0,0(sp)
    80003370:	01010113          	addi	sp,sp,16
    80003374:	00008067          	ret

0000000080003378 <_Znam>:

void *operator new[](size_t n)
{
    80003378:	ff010113          	addi	sp,sp,-16
    8000337c:	00113423          	sd	ra,8(sp)
    80003380:	00813023          	sd	s0,0(sp)
    80003384:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80003388:	00003097          	auipc	ra,0x3
    8000338c:	850080e7          	jalr	-1968(ra) # 80005bd8 <__mem_alloc>
    //return MemoryAllocator::instance()->kmem_alloc(n);
}
    80003390:	00813083          	ld	ra,8(sp)
    80003394:	00013403          	ld	s0,0(sp)
    80003398:	01010113          	addi	sp,sp,16
    8000339c:	00008067          	ret

00000000800033a0 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    800033a0:	ff010113          	addi	sp,sp,-16
    800033a4:	00113423          	sd	ra,8(sp)
    800033a8:	00813023          	sd	s0,0(sp)
    800033ac:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800033b0:	00002097          	auipc	ra,0x2
    800033b4:	75c080e7          	jalr	1884(ra) # 80005b0c <__mem_free>
    //MemoryAllocator::instance()->kmem_free(p);
}
    800033b8:	00813083          	ld	ra,8(sp)
    800033bc:	00013403          	ld	s0,0(sp)
    800033c0:	01010113          	addi	sp,sp,16
    800033c4:	00008067          	ret

00000000800033c8 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    800033c8:	ff010113          	addi	sp,sp,-16
    800033cc:	00113423          	sd	ra,8(sp)
    800033d0:	00813023          	sd	s0,0(sp)
    800033d4:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800033d8:	00002097          	auipc	ra,0x2
    800033dc:	734080e7          	jalr	1844(ra) # 80005b0c <__mem_free>
    //MemoryAllocator::instance()->kmem_free(p);
    800033e0:	00813083          	ld	ra,8(sp)
    800033e4:	00013403          	ld	s0,0(sp)
    800033e8:	01010113          	addi	sp,sp,16
    800033ec:	00008067          	ret

00000000800033f0 <_ZN16KObjectAllocator19printInternalMemoryEv>:
#include "../h/kObjectAllocator.hpp"
#include "../h/print.hpp"

void KObjectAllocator::printInternalMemory() {
    800033f0:	fd010113          	addi	sp,sp,-48
    800033f4:	02113423          	sd	ra,40(sp)
    800033f8:	02813023          	sd	s0,32(sp)
    800033fc:	00913c23          	sd	s1,24(sp)
    80003400:	01213823          	sd	s2,16(sp)
    80003404:	01313423          	sd	s3,8(sp)
    80003408:	03010413          	addi	s0,sp,48
    8000340c:	00050493          	mv	s1,a0
    printString("\nbitVector: ");
    80003410:	00003517          	auipc	a0,0x3
    80003414:	08050513          	addi	a0,a0,128 # 80006490 <CONSOLE_STATUS+0x480>
    80003418:	00000097          	auipc	ra,0x0
    8000341c:	4b4080e7          	jalr	1204(ra) # 800038cc <_Z11printStringPKc>
    printInteger((uint64)bitVector);
    80003420:	0204b503          	ld	a0,32(s1)
    80003424:	00000097          	auipc	ra,0x0
    80003428:	518080e7          	jalr	1304(ra) # 8000393c <_Z12printIntegerm>
    printString("\nobjectVector: ");
    8000342c:	00003517          	auipc	a0,0x3
    80003430:	07450513          	addi	a0,a0,116 # 800064a0 <CONSOLE_STATUS+0x490>
    80003434:	00000097          	auipc	ra,0x0
    80003438:	498080e7          	jalr	1176(ra) # 800038cc <_Z11printStringPKc>
    printInteger((uint64)objectVector);
    8000343c:	0184b503          	ld	a0,24(s1)
    80003440:	00000097          	auipc	ra,0x0
    80003444:	4fc080e7          	jalr	1276(ra) # 8000393c <_Z12printIntegerm>
    printString("\n");
    80003448:	00003517          	auipc	a0,0x3
    8000344c:	c4050513          	addi	a0,a0,-960 # 80006088 <CONSOLE_STATUS+0x78>
    80003450:	00000097          	auipc	ra,0x0
    80003454:	47c080e7          	jalr	1148(ra) # 800038cc <_Z11printStringPKc>
    for (size_t i = 0; i < memoryForBits + initialObjectNumber * objectSize; ++i) {
    80003458:	00000913          	li	s2,0
    8000345c:	0700006f          	j	800034cc <_ZN16KObjectAllocator19printInternalMemoryEv+0xdc>
        if (bitVector[i] / 100 == 0) printInteger((uint8) 0);
    80003460:	00000513          	li	a0,0
    80003464:	00000097          	auipc	ra,0x0
    80003468:	4d8080e7          	jalr	1240(ra) # 8000393c <_Z12printIntegerm>
    8000346c:	08c0006f          	j	800034f8 <_ZN16KObjectAllocator19printInternalMemoryEv+0x108>
        if (bitVector[i] / 10 == 0) printInteger((uint8) 0);
    80003470:	00000513          	li	a0,0
    80003474:	00000097          	auipc	ra,0x0
    80003478:	4c8080e7          	jalr	1224(ra) # 8000393c <_Z12printIntegerm>
    8000347c:	0900006f          	j	8000350c <_ZN16KObjectAllocator19printInternalMemoryEv+0x11c>
        printInteger((uint64) bitVector[i]);
        printString(" ");
        if (i + 1 == memoryForBits) {
            printString("\n"); for (size_t j = 0; j < memoryForBits * 4 - 1; ++j) printString("-"); }
    80003480:	00003517          	auipc	a0,0x3
    80003484:	c0850513          	addi	a0,a0,-1016 # 80006088 <CONSOLE_STATUS+0x78>
    80003488:	00000097          	auipc	ra,0x0
    8000348c:	444080e7          	jalr	1092(ra) # 800038cc <_Z11printStringPKc>
    80003490:	00000993          	li	s3,0
    80003494:	0104b783          	ld	a5,16(s1)
    80003498:	00279793          	slli	a5,a5,0x2
    8000349c:	fff78793          	addi	a5,a5,-1
    800034a0:	08f9fe63          	bgeu	s3,a5,8000353c <_ZN16KObjectAllocator19printInternalMemoryEv+0x14c>
    800034a4:	00003517          	auipc	a0,0x3
    800034a8:	00c50513          	addi	a0,a0,12 # 800064b0 <CONSOLE_STATUS+0x4a0>
    800034ac:	00000097          	auipc	ra,0x0
    800034b0:	420080e7          	jalr	1056(ra) # 800038cc <_Z11printStringPKc>
    800034b4:	00198993          	addi	s3,s3,1
    800034b8:	fddff06f          	j	80003494 <_ZN16KObjectAllocator19printInternalMemoryEv+0xa4>
        if ((i + 1) % memoryForBits == 0) printString("\n");
    800034bc:	00003517          	auipc	a0,0x3
    800034c0:	bcc50513          	addi	a0,a0,-1076 # 80006088 <CONSOLE_STATUS+0x78>
    800034c4:	00000097          	auipc	ra,0x0
    800034c8:	408080e7          	jalr	1032(ra) # 800038cc <_Z11printStringPKc>
    for (size_t i = 0; i < memoryForBits + initialObjectNumber * objectSize; ++i) {
    800034cc:	0104b783          	ld	a5,16(s1)
    800034d0:	0084b703          	ld	a4,8(s1)
    800034d4:	0004b683          	ld	a3,0(s1)
    800034d8:	02d70733          	mul	a4,a4,a3
    800034dc:	00e787b3          	add	a5,a5,a4
    800034e0:	06f97663          	bgeu	s2,a5,8000354c <_ZN16KObjectAllocator19printInternalMemoryEv+0x15c>
        if (bitVector[i] / 100 == 0) printInteger((uint8) 0);
    800034e4:	0204b783          	ld	a5,32(s1)
    800034e8:	012787b3          	add	a5,a5,s2
    800034ec:	0007c703          	lbu	a4,0(a5)
    800034f0:	06300793          	li	a5,99
    800034f4:	f6e7f6e3          	bgeu	a5,a4,80003460 <_ZN16KObjectAllocator19printInternalMemoryEv+0x70>
        if (bitVector[i] / 10 == 0) printInteger((uint8) 0);
    800034f8:	0204b783          	ld	a5,32(s1)
    800034fc:	012787b3          	add	a5,a5,s2
    80003500:	0007c703          	lbu	a4,0(a5)
    80003504:	00900793          	li	a5,9
    80003508:	f6e7f4e3          	bgeu	a5,a4,80003470 <_ZN16KObjectAllocator19printInternalMemoryEv+0x80>
        printInteger((uint64) bitVector[i]);
    8000350c:	0204b783          	ld	a5,32(s1)
    80003510:	012787b3          	add	a5,a5,s2
    80003514:	0007c503          	lbu	a0,0(a5)
    80003518:	00000097          	auipc	ra,0x0
    8000351c:	424080e7          	jalr	1060(ra) # 8000393c <_Z12printIntegerm>
        printString(" ");
    80003520:	00003517          	auipc	a0,0x3
    80003524:	db050513          	addi	a0,a0,-592 # 800062d0 <CONSOLE_STATUS+0x2c0>
    80003528:	00000097          	auipc	ra,0x0
    8000352c:	3a4080e7          	jalr	932(ra) # 800038cc <_Z11printStringPKc>
        if (i + 1 == memoryForBits) {
    80003530:	00190913          	addi	s2,s2,1
    80003534:	0104b783          	ld	a5,16(s1)
    80003538:	f4f904e3          	beq	s2,a5,80003480 <_ZN16KObjectAllocator19printInternalMemoryEv+0x90>
        if ((i + 1) % memoryForBits == 0) printString("\n");
    8000353c:	0104b783          	ld	a5,16(s1)
    80003540:	02f977b3          	remu	a5,s2,a5
    80003544:	f80794e3          	bnez	a5,800034cc <_ZN16KObjectAllocator19printInternalMemoryEv+0xdc>
    80003548:	f75ff06f          	j	800034bc <_ZN16KObjectAllocator19printInternalMemoryEv+0xcc>
    }
}
    8000354c:	02813083          	ld	ra,40(sp)
    80003550:	02013403          	ld	s0,32(sp)
    80003554:	01813483          	ld	s1,24(sp)
    80003558:	01013903          	ld	s2,16(sp)
    8000355c:	00813983          	ld	s3,8(sp)
    80003560:	03010113          	addi	sp,sp,48
    80003564:	00008067          	ret

0000000080003568 <_ZN16KObjectAllocator17allocateNewObjectEv>:

void* KObjectAllocator::allocateNewObject() {
    80003568:	ff010113          	addi	sp,sp,-16
    8000356c:	00813423          	sd	s0,8(sp)
    80003570:	01010413          	addi	s0,sp,16
    for (size_t byte = 0; byte < memoryForBits; ++byte)
    80003574:	00000813          	li	a6,0
    80003578:	0380006f          	j	800035b0 <_ZN16KObjectAllocator17allocateNewObjectEv+0x48>
        for (size_t bit = 8; bit != 0; --bit)
            if ((bitVector[byte] >> (bit - 1) & (uint8) 1) == 0) {
                bitVector[byte] |= (uint8) 1 << (bit - 1);
    8000357c:	00100693          	li	a3,1
    80003580:	00b695bb          	sllw	a1,a3,a1
    80003584:	00b66633          	or	a2,a2,a1
    80003588:	00c70023          	sb	a2,0(a4)
                return &objectVector[byte * 8 + 8 - bit];
    8000358c:	01853503          	ld	a0,24(a0)
    80003590:	00180813          	addi	a6,a6,1
    80003594:	00381813          	slli	a6,a6,0x3
    80003598:	40f807b3          	sub	a5,a6,a5
    8000359c:	00f50533          	add	a0,a0,a5
            }
    return nullptr;
}
    800035a0:	00813403          	ld	s0,8(sp)
    800035a4:	01010113          	addi	sp,sp,16
    800035a8:	00008067          	ret
    for (size_t byte = 0; byte < memoryForBits; ++byte)
    800035ac:	00180813          	addi	a6,a6,1
    800035b0:	01053783          	ld	a5,16(a0)
    800035b4:	02f87863          	bgeu	a6,a5,800035e4 <_ZN16KObjectAllocator17allocateNewObjectEv+0x7c>
        for (size_t bit = 8; bit != 0; --bit)
    800035b8:	00800793          	li	a5,8
    800035bc:	fe0788e3          	beqz	a5,800035ac <_ZN16KObjectAllocator17allocateNewObjectEv+0x44>
            if ((bitVector[byte] >> (bit - 1) & (uint8) 1) == 0) {
    800035c0:	02053703          	ld	a4,32(a0)
    800035c4:	01070733          	add	a4,a4,a6
    800035c8:	00074603          	lbu	a2,0(a4)
    800035cc:	fff7859b          	addiw	a1,a5,-1
    800035d0:	40b656bb          	sraw	a3,a2,a1
    800035d4:	0016f693          	andi	a3,a3,1
    800035d8:	fa0682e3          	beqz	a3,8000357c <_ZN16KObjectAllocator17allocateNewObjectEv+0x14>
        for (size_t bit = 8; bit != 0; --bit)
    800035dc:	fff78793          	addi	a5,a5,-1
    800035e0:	fddff06f          	j	800035bc <_ZN16KObjectAllocator17allocateNewObjectEv+0x54>
    return nullptr;
    800035e4:	00000513          	li	a0,0
    800035e8:	fb9ff06f          	j	800035a0 <_ZN16KObjectAllocator17allocateNewObjectEv+0x38>

00000000800035ec <_ZN16KObjectAllocator10freeObjectEPv>:

void KObjectAllocator::freeObject(void* objectPointer) {
    800035ec:	ff010113          	addi	sp,sp,-16
    800035f0:	00813423          	sd	s0,8(sp)
    800035f4:	01010413          	addi	s0,sp,16
    size_t diff = (size_t) ((uint8*) objectPointer - objectVector);
    800035f8:	01853783          	ld	a5,24(a0)
    800035fc:	40f585b3          	sub	a1,a1,a5
    size_t byte = diff / 8;
    80003600:	0035d793          	srli	a5,a1,0x3
    size_t bit = diff - byte * 8;
    bitVector[byte] &= ~((uint8) 1 << (7 - bit));
    80003604:	02053703          	ld	a4,32(a0)
    80003608:	00f70733          	add	a4,a4,a5
    8000360c:	0075f593          	andi	a1,a1,7
    80003610:	00700793          	li	a5,7
    80003614:	40b785bb          	subw	a1,a5,a1
    80003618:	00100793          	li	a5,1
    8000361c:	00b797bb          	sllw	a5,a5,a1
    80003620:	fff7c793          	not	a5,a5
    80003624:	00074683          	lbu	a3,0(a4)
    80003628:	00d7f7b3          	and	a5,a5,a3
    8000362c:	00f70023          	sb	a5,0(a4)
}
    80003630:	00813403          	ld	s0,8(sp)
    80003634:	01010113          	addi	sp,sp,16
    80003638:	00008067          	ret

000000008000363c <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"

void Riscv::popSppSpie()
{
    8000363c:	ff010113          	addi	sp,sp,-16
    80003640:	00813423          	sd	s0,8(sp)
    80003644:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80003648:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    8000364c:	10200073          	sret
}
    80003650:	00813403          	ld	s0,8(sp)
    80003654:	01010113          	addi	sp,sp,16
    80003658:	00008067          	ret

000000008000365c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    8000365c:	fa010113          	addi	sp,sp,-96
    80003660:	04113c23          	sd	ra,88(sp)
    80003664:	04813823          	sd	s0,80(sp)
    80003668:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000366c:	142027f3          	csrr	a5,scause
    80003670:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80003674:	fc843703          	ld	a4,-56(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80003678:	ff870693          	addi	a3,a4,-8
    8000367c:	00100793          	li	a5,1
    80003680:	02d7fa63          	bgeu	a5,a3,800036b4 <_ZN5Riscv20handleSupervisorTrapEv+0x58>
        TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80003684:	fff00793          	li	a5,-1
    80003688:	03f79793          	slli	a5,a5,0x3f
    8000368c:	00178793          	addi	a5,a5,1
    80003690:	06f70863          	beq	a4,a5,80003700 <_ZN5Riscv20handleSupervisorTrapEv+0xa4>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80003694:	fff00793          	li	a5,-1
    80003698:	03f79793          	slli	a5,a5,0x3f
    8000369c:	00978793          	addi	a5,a5,9
    800036a0:	0cf70c63          	beq	a4,a5,80003778 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
    }
    else
    {
        // unexpected trap cause
    }
    800036a4:	05813083          	ld	ra,88(sp)
    800036a8:	05013403          	ld	s0,80(sp)
    800036ac:	06010113          	addi	sp,sp,96
    800036b0:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800036b4:	141027f3          	csrr	a5,sepc
    800036b8:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    800036bc:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    800036c0:	00478793          	addi	a5,a5,4
    800036c4:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800036c8:	100027f3          	csrr	a5,sstatus
    800036cc:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    800036d0:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    800036d4:	faf43823          	sd	a5,-80(s0)
        TCB::timeSliceCounter = 0;
    800036d8:	00004797          	auipc	a5,0x4
    800036dc:	9e87b783          	ld	a5,-1560(a5) # 800070c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800036e0:	0007b023          	sd	zero,0(a5)
        TCB::dispatch();
    800036e4:	ffffe097          	auipc	ra,0xffffe
    800036e8:	624080e7          	jalr	1572(ra) # 80001d08 <_ZN3TCB8dispatchEv>
        w_sstatus(sstatus);
    800036ec:	fb043783          	ld	a5,-80(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800036f0:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800036f4:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800036f8:	14179073          	csrw	sepc,a5
}
    800036fc:	fa9ff06f          	j	800036a4 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80003700:	00200793          	li	a5,2
    80003704:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80003708:	00004717          	auipc	a4,0x4
    8000370c:	9b873703          	ld	a4,-1608(a4) # 800070c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003710:	00073783          	ld	a5,0(a4)
    80003714:	00178793          	addi	a5,a5,1
    80003718:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    8000371c:	00004717          	auipc	a4,0x4
    80003720:	9c473703          	ld	a4,-1596(a4) # 800070e0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003724:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80003728:	02073703          	ld	a4,32(a4)
    8000372c:	f6e7ece3          	bltu	a5,a4,800036a4 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80003730:	141027f3          	csrr	a5,sepc
    80003734:	fef43423          	sd	a5,-24(s0)
    return sepc;
    80003738:	fe843783          	ld	a5,-24(s0)
            uint64 volatile sepc = r_sepc();
    8000373c:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003740:	100027f3          	csrr	a5,sstatus
    80003744:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    80003748:	fe043783          	ld	a5,-32(s0)
            uint64 volatile sstatus = r_sstatus();
    8000374c:	fcf43023          	sd	a5,-64(s0)
            TCB::timeSliceCounter = 0;
    80003750:	00004797          	auipc	a5,0x4
    80003754:	9707b783          	ld	a5,-1680(a5) # 800070c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003758:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    8000375c:	ffffe097          	auipc	ra,0xffffe
    80003760:	5ac080e7          	jalr	1452(ra) # 80001d08 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80003764:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80003768:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    8000376c:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80003770:	14179073          	csrw	sepc,a5
}
    80003774:	f31ff06f          	j	800036a4 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
        console_handler();
    80003778:	00002097          	auipc	ra,0x2
    8000377c:	62c080e7          	jalr	1580(ra) # 80005da4 <console_handler>
    80003780:	f25ff06f          	j	800036a4 <_ZN5Riscv20handleSupervisorTrapEv+0x48>

0000000080003784 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80003784:	ff010113          	addi	sp,sp,-16
    80003788:	00813423          	sd	s0,8(sp)
    8000378c:	01010413          	addi	s0,sp,16
    80003790:	00100793          	li	a5,1
    80003794:	00f50863          	beq	a0,a5,800037a4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80003798:	00813403          	ld	s0,8(sp)
    8000379c:	01010113          	addi	sp,sp,16
    800037a0:	00008067          	ret
    800037a4:	000107b7          	lui	a5,0x10
    800037a8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800037ac:	fef596e3          	bne	a1,a5,80003798 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800037b0:	00004797          	auipc	a5,0x4
    800037b4:	9d078793          	addi	a5,a5,-1584 # 80007180 <_ZN9Scheduler16readyThreadQueueE>
    800037b8:	0007b023          	sd	zero,0(a5)
    800037bc:	0007b423          	sd	zero,8(a5)
    800037c0:	fd9ff06f          	j	80003798 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800037c4 <_ZN9Scheduler3getEv>:
{
    800037c4:	fe010113          	addi	sp,sp,-32
    800037c8:	00113c23          	sd	ra,24(sp)
    800037cc:	00813823          	sd	s0,16(sp)
    800037d0:	00913423          	sd	s1,8(sp)
    800037d4:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800037d8:	00004517          	auipc	a0,0x4
    800037dc:	9a853503          	ld	a0,-1624(a0) # 80007180 <_ZN9Scheduler16readyThreadQueueE>
    800037e0:	04050263          	beqz	a0,80003824 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    800037e4:	00853783          	ld	a5,8(a0)
    800037e8:	00004717          	auipc	a4,0x4
    800037ec:	98f73c23          	sd	a5,-1640(a4) # 80007180 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800037f0:	02078463          	beqz	a5,80003818 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    800037f4:	00053483          	ld	s1,0(a0)
        delete elem;
    800037f8:	00000097          	auipc	ra,0x0
    800037fc:	ba8080e7          	jalr	-1112(ra) # 800033a0 <_ZdlPv>
}
    80003800:	00048513          	mv	a0,s1
    80003804:	01813083          	ld	ra,24(sp)
    80003808:	01013403          	ld	s0,16(sp)
    8000380c:	00813483          	ld	s1,8(sp)
    80003810:	02010113          	addi	sp,sp,32
    80003814:	00008067          	ret
        if (!head) { tail = 0; }
    80003818:	00004797          	auipc	a5,0x4
    8000381c:	9607b823          	sd	zero,-1680(a5) # 80007188 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003820:	fd5ff06f          	j	800037f4 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80003824:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80003828:	fd9ff06f          	j	80003800 <_ZN9Scheduler3getEv+0x3c>

000000008000382c <_ZN9Scheduler3putEP3TCB>:
{
    8000382c:	fe010113          	addi	sp,sp,-32
    80003830:	00113c23          	sd	ra,24(sp)
    80003834:	00813823          	sd	s0,16(sp)
    80003838:	00913423          	sd	s1,8(sp)
    8000383c:	02010413          	addi	s0,sp,32
    80003840:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80003844:	01000513          	li	a0,16
    80003848:	00000097          	auipc	ra,0x0
    8000384c:	b08080e7          	jalr	-1272(ra) # 80003350 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80003850:	00953023          	sd	s1,0(a0)
    80003854:	00053423          	sd	zero,8(a0)
        if (tail)
    80003858:	00004797          	auipc	a5,0x4
    8000385c:	9307b783          	ld	a5,-1744(a5) # 80007188 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003860:	02078263          	beqz	a5,80003884 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80003864:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80003868:	00004797          	auipc	a5,0x4
    8000386c:	92a7b023          	sd	a0,-1760(a5) # 80007188 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003870:	01813083          	ld	ra,24(sp)
    80003874:	01013403          	ld	s0,16(sp)
    80003878:	00813483          	ld	s1,8(sp)
    8000387c:	02010113          	addi	sp,sp,32
    80003880:	00008067          	ret
            head = tail = elem;
    80003884:	00004797          	auipc	a5,0x4
    80003888:	8fc78793          	addi	a5,a5,-1796 # 80007180 <_ZN9Scheduler16readyThreadQueueE>
    8000388c:	00a7b423          	sd	a0,8(a5)
    80003890:	00a7b023          	sd	a0,0(a5)
    80003894:	fddff06f          	j	80003870 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080003898 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80003898:	ff010113          	addi	sp,sp,-16
    8000389c:	00113423          	sd	ra,8(sp)
    800038a0:	00813023          	sd	s0,0(sp)
    800038a4:	01010413          	addi	s0,sp,16
    800038a8:	000105b7          	lui	a1,0x10
    800038ac:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800038b0:	00100513          	li	a0,1
    800038b4:	00000097          	auipc	ra,0x0
    800038b8:	ed0080e7          	jalr	-304(ra) # 80003784 <_Z41__static_initialization_and_destruction_0ii>
    800038bc:	00813083          	ld	ra,8(sp)
    800038c0:	00013403          	ld	s0,0(sp)
    800038c4:	01010113          	addi	sp,sp,16
    800038c8:	00008067          	ret

00000000800038cc <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    800038cc:	fd010113          	addi	sp,sp,-48
    800038d0:	02113423          	sd	ra,40(sp)
    800038d4:	02813023          	sd	s0,32(sp)
    800038d8:	00913c23          	sd	s1,24(sp)
    800038dc:	01213823          	sd	s2,16(sp)
    800038e0:	03010413          	addi	s0,sp,48
    800038e4:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800038e8:	100027f3          	csrr	a5,sstatus
    800038ec:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800038f0:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800038f4:	00200793          	li	a5,2
    800038f8:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    while (*string != '\0') __putc(*string++);
    800038fc:	0004c503          	lbu	a0,0(s1)
    80003900:	00050a63          	beqz	a0,80003914 <_Z11printStringPKc+0x48>
    80003904:	00148493          	addi	s1,s1,1
    80003908:	00002097          	auipc	ra,0x2
    8000390c:	428080e7          	jalr	1064(ra) # 80005d30 <__putc>
    80003910:	fedff06f          	j	800038fc <_Z11printStringPKc+0x30>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80003914:	0009091b          	sext.w	s2,s2
    80003918:	00297913          	andi	s2,s2,2
    8000391c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80003920:	10092073          	csrs	sstatus,s2
}
    80003924:	02813083          	ld	ra,40(sp)
    80003928:	02013403          	ld	s0,32(sp)
    8000392c:	01813483          	ld	s1,24(sp)
    80003930:	01013903          	ld	s2,16(sp)
    80003934:	03010113          	addi	sp,sp,48
    80003938:	00008067          	ret

000000008000393c <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    8000393c:	fc010113          	addi	sp,sp,-64
    80003940:	02113c23          	sd	ra,56(sp)
    80003944:	02813823          	sd	s0,48(sp)
    80003948:	02913423          	sd	s1,40(sp)
    8000394c:	03213023          	sd	s2,32(sp)
    80003950:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003954:	100027f3          	csrr	a5,sstatus
    80003958:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    8000395c:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80003960:	00200793          	li	a5,2
    80003964:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    static char digits[] = "0123456789";
    char buf[16]; int i = 0; uint64 x = integer;
    int neg = (integer & ((uint64)1 << 63)) != 0;
    80003968:	00050593          	mv	a1,a0

    if (neg) x = ~integer + 1;
    8000396c:	06054463          	bltz	a0,800039d4 <_Z12printIntegerm+0x98>
{
    80003970:	00000493          	li	s1,0

    do buf[i++] = digits[x % 10];
    80003974:	00a00713          	li	a4,10
    80003978:	02e57633          	remu	a2,a0,a4
    8000397c:	00048693          	mv	a3,s1
    80003980:	0014849b          	addiw	s1,s1,1
    80003984:	00003797          	auipc	a5,0x3
    80003988:	b3478793          	addi	a5,a5,-1228 # 800064b8 <_ZZ12printIntegermE6digits>
    8000398c:	00c787b3          	add	a5,a5,a2
    80003990:	0007c603          	lbu	a2,0(a5)
    80003994:	fe040793          	addi	a5,s0,-32
    80003998:	00d787b3          	add	a5,a5,a3
    8000399c:	fec78823          	sb	a2,-16(a5)
    while ((x /= 10) != 0);
    800039a0:	00050613          	mv	a2,a0
    800039a4:	02e55533          	divu	a0,a0,a4
    800039a8:	00900793          	li	a5,9
    800039ac:	fcc7e4e3          	bltu	a5,a2,80003974 <_Z12printIntegerm+0x38>

    if (neg) buf[i++] = '-';
    800039b0:	0205c663          	bltz	a1,800039dc <_Z12printIntegerm+0xa0>
    while (--i >= 0) { __putc(buf[i]); }
    800039b4:	fff4849b          	addiw	s1,s1,-1
    800039b8:	0204ce63          	bltz	s1,800039f4 <_Z12printIntegerm+0xb8>
    800039bc:	fe040793          	addi	a5,s0,-32
    800039c0:	009787b3          	add	a5,a5,s1
    800039c4:	ff07c503          	lbu	a0,-16(a5)
    800039c8:	00002097          	auipc	ra,0x2
    800039cc:	368080e7          	jalr	872(ra) # 80005d30 <__putc>
    800039d0:	fe5ff06f          	j	800039b4 <_Z12printIntegerm+0x78>
    if (neg) x = ~integer + 1;
    800039d4:	40a00533          	neg	a0,a0
    800039d8:	f99ff06f          	j	80003970 <_Z12printIntegerm+0x34>
    if (neg) buf[i++] = '-';
    800039dc:	fe040793          	addi	a5,s0,-32
    800039e0:	009784b3          	add	s1,a5,s1
    800039e4:	02d00793          	li	a5,45
    800039e8:	fef48823          	sb	a5,-16(s1)
    800039ec:	0026849b          	addiw	s1,a3,2
    800039f0:	fc5ff06f          	j	800039b4 <_Z12printIntegerm+0x78>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800039f4:	0009091b          	sext.w	s2,s2
    800039f8:	00297913          	andi	s2,s2,2
    800039fc:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80003a00:	10092073          	csrs	sstatus,s2
}
    80003a04:	03813083          	ld	ra,56(sp)
    80003a08:	03013403          	ld	s0,48(sp)
    80003a0c:	02813483          	ld	s1,40(sp)
    80003a10:	02013903          	ld	s2,32(sp)
    80003a14:	04010113          	addi	sp,sp,64
    80003a18:	00008067          	ret

0000000080003a1c <_Z12printIntegerh>:


void printInteger(uint8 integer)
{
    80003a1c:	ff010113          	addi	sp,sp,-16
    80003a20:	00113423          	sd	ra,8(sp)
    80003a24:	00813023          	sd	s0,0(sp)
    80003a28:	01010413          	addi	s0,sp,16
    printInteger((uint64)integer);
    80003a2c:	00000097          	auipc	ra,0x0
    80003a30:	f10080e7          	jalr	-240(ra) # 8000393c <_Z12printIntegerm>
}
    80003a34:	00813083          	ld	ra,8(sp)
    80003a38:	00013403          	ld	s0,0(sp)
    80003a3c:	01010113          	addi	sp,sp,16
    80003a40:	00008067          	ret

0000000080003a44 <start>:
    80003a44:	ff010113          	addi	sp,sp,-16
    80003a48:	00813423          	sd	s0,8(sp)
    80003a4c:	01010413          	addi	s0,sp,16
    80003a50:	300027f3          	csrr	a5,mstatus
    80003a54:	ffffe737          	lui	a4,0xffffe
    80003a58:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff63ff>
    80003a5c:	00e7f7b3          	and	a5,a5,a4
    80003a60:	00001737          	lui	a4,0x1
    80003a64:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003a68:	00e7e7b3          	or	a5,a5,a4
    80003a6c:	30079073          	csrw	mstatus,a5
    80003a70:	00000797          	auipc	a5,0x0
    80003a74:	16078793          	addi	a5,a5,352 # 80003bd0 <system_main>
    80003a78:	34179073          	csrw	mepc,a5
    80003a7c:	00000793          	li	a5,0
    80003a80:	18079073          	csrw	satp,a5
    80003a84:	000107b7          	lui	a5,0x10
    80003a88:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003a8c:	30279073          	csrw	medeleg,a5
    80003a90:	30379073          	csrw	mideleg,a5
    80003a94:	104027f3          	csrr	a5,sie
    80003a98:	2227e793          	ori	a5,a5,546
    80003a9c:	10479073          	csrw	sie,a5
    80003aa0:	fff00793          	li	a5,-1
    80003aa4:	00a7d793          	srli	a5,a5,0xa
    80003aa8:	3b079073          	csrw	pmpaddr0,a5
    80003aac:	00f00793          	li	a5,15
    80003ab0:	3a079073          	csrw	pmpcfg0,a5
    80003ab4:	f14027f3          	csrr	a5,mhartid
    80003ab8:	0200c737          	lui	a4,0x200c
    80003abc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003ac0:	0007869b          	sext.w	a3,a5
    80003ac4:	00269713          	slli	a4,a3,0x2
    80003ac8:	000f4637          	lui	a2,0xf4
    80003acc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003ad0:	00d70733          	add	a4,a4,a3
    80003ad4:	0037979b          	slliw	a5,a5,0x3
    80003ad8:	020046b7          	lui	a3,0x2004
    80003adc:	00d787b3          	add	a5,a5,a3
    80003ae0:	00c585b3          	add	a1,a1,a2
    80003ae4:	00371693          	slli	a3,a4,0x3
    80003ae8:	00003717          	auipc	a4,0x3
    80003aec:	6a870713          	addi	a4,a4,1704 # 80007190 <timer_scratch>
    80003af0:	00b7b023          	sd	a1,0(a5)
    80003af4:	00d70733          	add	a4,a4,a3
    80003af8:	00f73c23          	sd	a5,24(a4)
    80003afc:	02c73023          	sd	a2,32(a4)
    80003b00:	34071073          	csrw	mscratch,a4
    80003b04:	00000797          	auipc	a5,0x0
    80003b08:	6ec78793          	addi	a5,a5,1772 # 800041f0 <timervec>
    80003b0c:	30579073          	csrw	mtvec,a5
    80003b10:	300027f3          	csrr	a5,mstatus
    80003b14:	0087e793          	ori	a5,a5,8
    80003b18:	30079073          	csrw	mstatus,a5
    80003b1c:	304027f3          	csrr	a5,mie
    80003b20:	0807e793          	ori	a5,a5,128
    80003b24:	30479073          	csrw	mie,a5
    80003b28:	f14027f3          	csrr	a5,mhartid
    80003b2c:	0007879b          	sext.w	a5,a5
    80003b30:	00078213          	mv	tp,a5
    80003b34:	30200073          	mret
    80003b38:	00813403          	ld	s0,8(sp)
    80003b3c:	01010113          	addi	sp,sp,16
    80003b40:	00008067          	ret

0000000080003b44 <timerinit>:
    80003b44:	ff010113          	addi	sp,sp,-16
    80003b48:	00813423          	sd	s0,8(sp)
    80003b4c:	01010413          	addi	s0,sp,16
    80003b50:	f14027f3          	csrr	a5,mhartid
    80003b54:	0200c737          	lui	a4,0x200c
    80003b58:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003b5c:	0007869b          	sext.w	a3,a5
    80003b60:	00269713          	slli	a4,a3,0x2
    80003b64:	000f4637          	lui	a2,0xf4
    80003b68:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003b6c:	00d70733          	add	a4,a4,a3
    80003b70:	0037979b          	slliw	a5,a5,0x3
    80003b74:	020046b7          	lui	a3,0x2004
    80003b78:	00d787b3          	add	a5,a5,a3
    80003b7c:	00c585b3          	add	a1,a1,a2
    80003b80:	00371693          	slli	a3,a4,0x3
    80003b84:	00003717          	auipc	a4,0x3
    80003b88:	60c70713          	addi	a4,a4,1548 # 80007190 <timer_scratch>
    80003b8c:	00b7b023          	sd	a1,0(a5)
    80003b90:	00d70733          	add	a4,a4,a3
    80003b94:	00f73c23          	sd	a5,24(a4)
    80003b98:	02c73023          	sd	a2,32(a4)
    80003b9c:	34071073          	csrw	mscratch,a4
    80003ba0:	00000797          	auipc	a5,0x0
    80003ba4:	65078793          	addi	a5,a5,1616 # 800041f0 <timervec>
    80003ba8:	30579073          	csrw	mtvec,a5
    80003bac:	300027f3          	csrr	a5,mstatus
    80003bb0:	0087e793          	ori	a5,a5,8
    80003bb4:	30079073          	csrw	mstatus,a5
    80003bb8:	304027f3          	csrr	a5,mie
    80003bbc:	0807e793          	ori	a5,a5,128
    80003bc0:	30479073          	csrw	mie,a5
    80003bc4:	00813403          	ld	s0,8(sp)
    80003bc8:	01010113          	addi	sp,sp,16
    80003bcc:	00008067          	ret

0000000080003bd0 <system_main>:
    80003bd0:	fe010113          	addi	sp,sp,-32
    80003bd4:	00813823          	sd	s0,16(sp)
    80003bd8:	00913423          	sd	s1,8(sp)
    80003bdc:	00113c23          	sd	ra,24(sp)
    80003be0:	02010413          	addi	s0,sp,32
    80003be4:	00000097          	auipc	ra,0x0
    80003be8:	0c4080e7          	jalr	196(ra) # 80003ca8 <cpuid>
    80003bec:	00003497          	auipc	s1,0x3
    80003bf0:	53448493          	addi	s1,s1,1332 # 80007120 <started>
    80003bf4:	02050263          	beqz	a0,80003c18 <system_main+0x48>
    80003bf8:	0004a783          	lw	a5,0(s1)
    80003bfc:	0007879b          	sext.w	a5,a5
    80003c00:	fe078ce3          	beqz	a5,80003bf8 <system_main+0x28>
    80003c04:	0ff0000f          	fence
    80003c08:	00003517          	auipc	a0,0x3
    80003c0c:	8f050513          	addi	a0,a0,-1808 # 800064f8 <_ZZ12printIntegermE6digits+0x40>
    80003c10:	00001097          	auipc	ra,0x1
    80003c14:	a7c080e7          	jalr	-1412(ra) # 8000468c <panic>
    80003c18:	00001097          	auipc	ra,0x1
    80003c1c:	9d0080e7          	jalr	-1584(ra) # 800045e8 <consoleinit>
    80003c20:	00001097          	auipc	ra,0x1
    80003c24:	15c080e7          	jalr	348(ra) # 80004d7c <printfinit>
    80003c28:	00002517          	auipc	a0,0x2
    80003c2c:	46050513          	addi	a0,a0,1120 # 80006088 <CONSOLE_STATUS+0x78>
    80003c30:	00001097          	auipc	ra,0x1
    80003c34:	ab8080e7          	jalr	-1352(ra) # 800046e8 <__printf>
    80003c38:	00003517          	auipc	a0,0x3
    80003c3c:	89050513          	addi	a0,a0,-1904 # 800064c8 <_ZZ12printIntegermE6digits+0x10>
    80003c40:	00001097          	auipc	ra,0x1
    80003c44:	aa8080e7          	jalr	-1368(ra) # 800046e8 <__printf>
    80003c48:	00002517          	auipc	a0,0x2
    80003c4c:	44050513          	addi	a0,a0,1088 # 80006088 <CONSOLE_STATUS+0x78>
    80003c50:	00001097          	auipc	ra,0x1
    80003c54:	a98080e7          	jalr	-1384(ra) # 800046e8 <__printf>
    80003c58:	00001097          	auipc	ra,0x1
    80003c5c:	4b0080e7          	jalr	1200(ra) # 80005108 <kinit>
    80003c60:	00000097          	auipc	ra,0x0
    80003c64:	148080e7          	jalr	328(ra) # 80003da8 <trapinit>
    80003c68:	00000097          	auipc	ra,0x0
    80003c6c:	16c080e7          	jalr	364(ra) # 80003dd4 <trapinithart>
    80003c70:	00000097          	auipc	ra,0x0
    80003c74:	5c0080e7          	jalr	1472(ra) # 80004230 <plicinit>
    80003c78:	00000097          	auipc	ra,0x0
    80003c7c:	5e0080e7          	jalr	1504(ra) # 80004258 <plicinithart>
    80003c80:	00000097          	auipc	ra,0x0
    80003c84:	078080e7          	jalr	120(ra) # 80003cf8 <userinit>
    80003c88:	0ff0000f          	fence
    80003c8c:	00100793          	li	a5,1
    80003c90:	00003517          	auipc	a0,0x3
    80003c94:	85050513          	addi	a0,a0,-1968 # 800064e0 <_ZZ12printIntegermE6digits+0x28>
    80003c98:	00f4a023          	sw	a5,0(s1)
    80003c9c:	00001097          	auipc	ra,0x1
    80003ca0:	a4c080e7          	jalr	-1460(ra) # 800046e8 <__printf>
    80003ca4:	0000006f          	j	80003ca4 <system_main+0xd4>

0000000080003ca8 <cpuid>:
    80003ca8:	ff010113          	addi	sp,sp,-16
    80003cac:	00813423          	sd	s0,8(sp)
    80003cb0:	01010413          	addi	s0,sp,16
    80003cb4:	00020513          	mv	a0,tp
    80003cb8:	00813403          	ld	s0,8(sp)
    80003cbc:	0005051b          	sext.w	a0,a0
    80003cc0:	01010113          	addi	sp,sp,16
    80003cc4:	00008067          	ret

0000000080003cc8 <mycpu>:
    80003cc8:	ff010113          	addi	sp,sp,-16
    80003ccc:	00813423          	sd	s0,8(sp)
    80003cd0:	01010413          	addi	s0,sp,16
    80003cd4:	00020793          	mv	a5,tp
    80003cd8:	00813403          	ld	s0,8(sp)
    80003cdc:	0007879b          	sext.w	a5,a5
    80003ce0:	00779793          	slli	a5,a5,0x7
    80003ce4:	00004517          	auipc	a0,0x4
    80003ce8:	4dc50513          	addi	a0,a0,1244 # 800081c0 <cpus>
    80003cec:	00f50533          	add	a0,a0,a5
    80003cf0:	01010113          	addi	sp,sp,16
    80003cf4:	00008067          	ret

0000000080003cf8 <userinit>:
    80003cf8:	ff010113          	addi	sp,sp,-16
    80003cfc:	00813423          	sd	s0,8(sp)
    80003d00:	01010413          	addi	s0,sp,16
    80003d04:	00813403          	ld	s0,8(sp)
    80003d08:	01010113          	addi	sp,sp,16
    80003d0c:	ffffe317          	auipc	t1,0xffffe
    80003d10:	98030067          	jr	-1664(t1) # 8000168c <main>

0000000080003d14 <either_copyout>:
    80003d14:	ff010113          	addi	sp,sp,-16
    80003d18:	00813023          	sd	s0,0(sp)
    80003d1c:	00113423          	sd	ra,8(sp)
    80003d20:	01010413          	addi	s0,sp,16
    80003d24:	02051663          	bnez	a0,80003d50 <either_copyout+0x3c>
    80003d28:	00058513          	mv	a0,a1
    80003d2c:	00060593          	mv	a1,a2
    80003d30:	0006861b          	sext.w	a2,a3
    80003d34:	00002097          	auipc	ra,0x2
    80003d38:	c60080e7          	jalr	-928(ra) # 80005994 <__memmove>
    80003d3c:	00813083          	ld	ra,8(sp)
    80003d40:	00013403          	ld	s0,0(sp)
    80003d44:	00000513          	li	a0,0
    80003d48:	01010113          	addi	sp,sp,16
    80003d4c:	00008067          	ret
    80003d50:	00002517          	auipc	a0,0x2
    80003d54:	7d050513          	addi	a0,a0,2000 # 80006520 <_ZZ12printIntegermE6digits+0x68>
    80003d58:	00001097          	auipc	ra,0x1
    80003d5c:	934080e7          	jalr	-1740(ra) # 8000468c <panic>

0000000080003d60 <either_copyin>:
    80003d60:	ff010113          	addi	sp,sp,-16
    80003d64:	00813023          	sd	s0,0(sp)
    80003d68:	00113423          	sd	ra,8(sp)
    80003d6c:	01010413          	addi	s0,sp,16
    80003d70:	02059463          	bnez	a1,80003d98 <either_copyin+0x38>
    80003d74:	00060593          	mv	a1,a2
    80003d78:	0006861b          	sext.w	a2,a3
    80003d7c:	00002097          	auipc	ra,0x2
    80003d80:	c18080e7          	jalr	-1000(ra) # 80005994 <__memmove>
    80003d84:	00813083          	ld	ra,8(sp)
    80003d88:	00013403          	ld	s0,0(sp)
    80003d8c:	00000513          	li	a0,0
    80003d90:	01010113          	addi	sp,sp,16
    80003d94:	00008067          	ret
    80003d98:	00002517          	auipc	a0,0x2
    80003d9c:	7b050513          	addi	a0,a0,1968 # 80006548 <_ZZ12printIntegermE6digits+0x90>
    80003da0:	00001097          	auipc	ra,0x1
    80003da4:	8ec080e7          	jalr	-1812(ra) # 8000468c <panic>

0000000080003da8 <trapinit>:
    80003da8:	ff010113          	addi	sp,sp,-16
    80003dac:	00813423          	sd	s0,8(sp)
    80003db0:	01010413          	addi	s0,sp,16
    80003db4:	00813403          	ld	s0,8(sp)
    80003db8:	00002597          	auipc	a1,0x2
    80003dbc:	7b858593          	addi	a1,a1,1976 # 80006570 <_ZZ12printIntegermE6digits+0xb8>
    80003dc0:	00004517          	auipc	a0,0x4
    80003dc4:	48050513          	addi	a0,a0,1152 # 80008240 <tickslock>
    80003dc8:	01010113          	addi	sp,sp,16
    80003dcc:	00001317          	auipc	t1,0x1
    80003dd0:	5cc30067          	jr	1484(t1) # 80005398 <initlock>

0000000080003dd4 <trapinithart>:
    80003dd4:	ff010113          	addi	sp,sp,-16
    80003dd8:	00813423          	sd	s0,8(sp)
    80003ddc:	01010413          	addi	s0,sp,16
    80003de0:	00000797          	auipc	a5,0x0
    80003de4:	30078793          	addi	a5,a5,768 # 800040e0 <kernelvec>
    80003de8:	10579073          	csrw	stvec,a5
    80003dec:	00813403          	ld	s0,8(sp)
    80003df0:	01010113          	addi	sp,sp,16
    80003df4:	00008067          	ret

0000000080003df8 <usertrap>:
    80003df8:	ff010113          	addi	sp,sp,-16
    80003dfc:	00813423          	sd	s0,8(sp)
    80003e00:	01010413          	addi	s0,sp,16
    80003e04:	00813403          	ld	s0,8(sp)
    80003e08:	01010113          	addi	sp,sp,16
    80003e0c:	00008067          	ret

0000000080003e10 <usertrapret>:
    80003e10:	ff010113          	addi	sp,sp,-16
    80003e14:	00813423          	sd	s0,8(sp)
    80003e18:	01010413          	addi	s0,sp,16
    80003e1c:	00813403          	ld	s0,8(sp)
    80003e20:	01010113          	addi	sp,sp,16
    80003e24:	00008067          	ret

0000000080003e28 <kerneltrap>:
    80003e28:	fe010113          	addi	sp,sp,-32
    80003e2c:	00813823          	sd	s0,16(sp)
    80003e30:	00113c23          	sd	ra,24(sp)
    80003e34:	00913423          	sd	s1,8(sp)
    80003e38:	02010413          	addi	s0,sp,32
    80003e3c:	142025f3          	csrr	a1,scause
    80003e40:	100027f3          	csrr	a5,sstatus
    80003e44:	0027f793          	andi	a5,a5,2
    80003e48:	10079c63          	bnez	a5,80003f60 <kerneltrap+0x138>
    80003e4c:	142027f3          	csrr	a5,scause
    80003e50:	0207ce63          	bltz	a5,80003e8c <kerneltrap+0x64>
    80003e54:	00002517          	auipc	a0,0x2
    80003e58:	76450513          	addi	a0,a0,1892 # 800065b8 <_ZZ12printIntegermE6digits+0x100>
    80003e5c:	00001097          	auipc	ra,0x1
    80003e60:	88c080e7          	jalr	-1908(ra) # 800046e8 <__printf>
    80003e64:	141025f3          	csrr	a1,sepc
    80003e68:	14302673          	csrr	a2,stval
    80003e6c:	00002517          	auipc	a0,0x2
    80003e70:	75c50513          	addi	a0,a0,1884 # 800065c8 <_ZZ12printIntegermE6digits+0x110>
    80003e74:	00001097          	auipc	ra,0x1
    80003e78:	874080e7          	jalr	-1932(ra) # 800046e8 <__printf>
    80003e7c:	00002517          	auipc	a0,0x2
    80003e80:	76450513          	addi	a0,a0,1892 # 800065e0 <_ZZ12printIntegermE6digits+0x128>
    80003e84:	00001097          	auipc	ra,0x1
    80003e88:	808080e7          	jalr	-2040(ra) # 8000468c <panic>
    80003e8c:	0ff7f713          	andi	a4,a5,255
    80003e90:	00900693          	li	a3,9
    80003e94:	04d70063          	beq	a4,a3,80003ed4 <kerneltrap+0xac>
    80003e98:	fff00713          	li	a4,-1
    80003e9c:	03f71713          	slli	a4,a4,0x3f
    80003ea0:	00170713          	addi	a4,a4,1
    80003ea4:	fae798e3          	bne	a5,a4,80003e54 <kerneltrap+0x2c>
    80003ea8:	00000097          	auipc	ra,0x0
    80003eac:	e00080e7          	jalr	-512(ra) # 80003ca8 <cpuid>
    80003eb0:	06050663          	beqz	a0,80003f1c <kerneltrap+0xf4>
    80003eb4:	144027f3          	csrr	a5,sip
    80003eb8:	ffd7f793          	andi	a5,a5,-3
    80003ebc:	14479073          	csrw	sip,a5
    80003ec0:	01813083          	ld	ra,24(sp)
    80003ec4:	01013403          	ld	s0,16(sp)
    80003ec8:	00813483          	ld	s1,8(sp)
    80003ecc:	02010113          	addi	sp,sp,32
    80003ed0:	00008067          	ret
    80003ed4:	00000097          	auipc	ra,0x0
    80003ed8:	3d0080e7          	jalr	976(ra) # 800042a4 <plic_claim>
    80003edc:	00a00793          	li	a5,10
    80003ee0:	00050493          	mv	s1,a0
    80003ee4:	06f50863          	beq	a0,a5,80003f54 <kerneltrap+0x12c>
    80003ee8:	fc050ce3          	beqz	a0,80003ec0 <kerneltrap+0x98>
    80003eec:	00050593          	mv	a1,a0
    80003ef0:	00002517          	auipc	a0,0x2
    80003ef4:	6a850513          	addi	a0,a0,1704 # 80006598 <_ZZ12printIntegermE6digits+0xe0>
    80003ef8:	00000097          	auipc	ra,0x0
    80003efc:	7f0080e7          	jalr	2032(ra) # 800046e8 <__printf>
    80003f00:	01013403          	ld	s0,16(sp)
    80003f04:	01813083          	ld	ra,24(sp)
    80003f08:	00048513          	mv	a0,s1
    80003f0c:	00813483          	ld	s1,8(sp)
    80003f10:	02010113          	addi	sp,sp,32
    80003f14:	00000317          	auipc	t1,0x0
    80003f18:	3c830067          	jr	968(t1) # 800042dc <plic_complete>
    80003f1c:	00004517          	auipc	a0,0x4
    80003f20:	32450513          	addi	a0,a0,804 # 80008240 <tickslock>
    80003f24:	00001097          	auipc	ra,0x1
    80003f28:	498080e7          	jalr	1176(ra) # 800053bc <acquire>
    80003f2c:	00003717          	auipc	a4,0x3
    80003f30:	1f870713          	addi	a4,a4,504 # 80007124 <ticks>
    80003f34:	00072783          	lw	a5,0(a4)
    80003f38:	00004517          	auipc	a0,0x4
    80003f3c:	30850513          	addi	a0,a0,776 # 80008240 <tickslock>
    80003f40:	0017879b          	addiw	a5,a5,1
    80003f44:	00f72023          	sw	a5,0(a4)
    80003f48:	00001097          	auipc	ra,0x1
    80003f4c:	540080e7          	jalr	1344(ra) # 80005488 <release>
    80003f50:	f65ff06f          	j	80003eb4 <kerneltrap+0x8c>
    80003f54:	00001097          	auipc	ra,0x1
    80003f58:	09c080e7          	jalr	156(ra) # 80004ff0 <uartintr>
    80003f5c:	fa5ff06f          	j	80003f00 <kerneltrap+0xd8>
    80003f60:	00002517          	auipc	a0,0x2
    80003f64:	61850513          	addi	a0,a0,1560 # 80006578 <_ZZ12printIntegermE6digits+0xc0>
    80003f68:	00000097          	auipc	ra,0x0
    80003f6c:	724080e7          	jalr	1828(ra) # 8000468c <panic>

0000000080003f70 <clockintr>:
    80003f70:	fe010113          	addi	sp,sp,-32
    80003f74:	00813823          	sd	s0,16(sp)
    80003f78:	00913423          	sd	s1,8(sp)
    80003f7c:	00113c23          	sd	ra,24(sp)
    80003f80:	02010413          	addi	s0,sp,32
    80003f84:	00004497          	auipc	s1,0x4
    80003f88:	2bc48493          	addi	s1,s1,700 # 80008240 <tickslock>
    80003f8c:	00048513          	mv	a0,s1
    80003f90:	00001097          	auipc	ra,0x1
    80003f94:	42c080e7          	jalr	1068(ra) # 800053bc <acquire>
    80003f98:	00003717          	auipc	a4,0x3
    80003f9c:	18c70713          	addi	a4,a4,396 # 80007124 <ticks>
    80003fa0:	00072783          	lw	a5,0(a4)
    80003fa4:	01013403          	ld	s0,16(sp)
    80003fa8:	01813083          	ld	ra,24(sp)
    80003fac:	00048513          	mv	a0,s1
    80003fb0:	0017879b          	addiw	a5,a5,1
    80003fb4:	00813483          	ld	s1,8(sp)
    80003fb8:	00f72023          	sw	a5,0(a4)
    80003fbc:	02010113          	addi	sp,sp,32
    80003fc0:	00001317          	auipc	t1,0x1
    80003fc4:	4c830067          	jr	1224(t1) # 80005488 <release>

0000000080003fc8 <devintr>:
    80003fc8:	142027f3          	csrr	a5,scause
    80003fcc:	00000513          	li	a0,0
    80003fd0:	0007c463          	bltz	a5,80003fd8 <devintr+0x10>
    80003fd4:	00008067          	ret
    80003fd8:	fe010113          	addi	sp,sp,-32
    80003fdc:	00813823          	sd	s0,16(sp)
    80003fe0:	00113c23          	sd	ra,24(sp)
    80003fe4:	00913423          	sd	s1,8(sp)
    80003fe8:	02010413          	addi	s0,sp,32
    80003fec:	0ff7f713          	andi	a4,a5,255
    80003ff0:	00900693          	li	a3,9
    80003ff4:	04d70c63          	beq	a4,a3,8000404c <devintr+0x84>
    80003ff8:	fff00713          	li	a4,-1
    80003ffc:	03f71713          	slli	a4,a4,0x3f
    80004000:	00170713          	addi	a4,a4,1
    80004004:	00e78c63          	beq	a5,a4,8000401c <devintr+0x54>
    80004008:	01813083          	ld	ra,24(sp)
    8000400c:	01013403          	ld	s0,16(sp)
    80004010:	00813483          	ld	s1,8(sp)
    80004014:	02010113          	addi	sp,sp,32
    80004018:	00008067          	ret
    8000401c:	00000097          	auipc	ra,0x0
    80004020:	c8c080e7          	jalr	-884(ra) # 80003ca8 <cpuid>
    80004024:	06050663          	beqz	a0,80004090 <devintr+0xc8>
    80004028:	144027f3          	csrr	a5,sip
    8000402c:	ffd7f793          	andi	a5,a5,-3
    80004030:	14479073          	csrw	sip,a5
    80004034:	01813083          	ld	ra,24(sp)
    80004038:	01013403          	ld	s0,16(sp)
    8000403c:	00813483          	ld	s1,8(sp)
    80004040:	00200513          	li	a0,2
    80004044:	02010113          	addi	sp,sp,32
    80004048:	00008067          	ret
    8000404c:	00000097          	auipc	ra,0x0
    80004050:	258080e7          	jalr	600(ra) # 800042a4 <plic_claim>
    80004054:	00a00793          	li	a5,10
    80004058:	00050493          	mv	s1,a0
    8000405c:	06f50663          	beq	a0,a5,800040c8 <devintr+0x100>
    80004060:	00100513          	li	a0,1
    80004064:	fa0482e3          	beqz	s1,80004008 <devintr+0x40>
    80004068:	00048593          	mv	a1,s1
    8000406c:	00002517          	auipc	a0,0x2
    80004070:	52c50513          	addi	a0,a0,1324 # 80006598 <_ZZ12printIntegermE6digits+0xe0>
    80004074:	00000097          	auipc	ra,0x0
    80004078:	674080e7          	jalr	1652(ra) # 800046e8 <__printf>
    8000407c:	00048513          	mv	a0,s1
    80004080:	00000097          	auipc	ra,0x0
    80004084:	25c080e7          	jalr	604(ra) # 800042dc <plic_complete>
    80004088:	00100513          	li	a0,1
    8000408c:	f7dff06f          	j	80004008 <devintr+0x40>
    80004090:	00004517          	auipc	a0,0x4
    80004094:	1b050513          	addi	a0,a0,432 # 80008240 <tickslock>
    80004098:	00001097          	auipc	ra,0x1
    8000409c:	324080e7          	jalr	804(ra) # 800053bc <acquire>
    800040a0:	00003717          	auipc	a4,0x3
    800040a4:	08470713          	addi	a4,a4,132 # 80007124 <ticks>
    800040a8:	00072783          	lw	a5,0(a4)
    800040ac:	00004517          	auipc	a0,0x4
    800040b0:	19450513          	addi	a0,a0,404 # 80008240 <tickslock>
    800040b4:	0017879b          	addiw	a5,a5,1
    800040b8:	00f72023          	sw	a5,0(a4)
    800040bc:	00001097          	auipc	ra,0x1
    800040c0:	3cc080e7          	jalr	972(ra) # 80005488 <release>
    800040c4:	f65ff06f          	j	80004028 <devintr+0x60>
    800040c8:	00001097          	auipc	ra,0x1
    800040cc:	f28080e7          	jalr	-216(ra) # 80004ff0 <uartintr>
    800040d0:	fadff06f          	j	8000407c <devintr+0xb4>
	...

00000000800040e0 <kernelvec>:
    800040e0:	f0010113          	addi	sp,sp,-256
    800040e4:	00113023          	sd	ra,0(sp)
    800040e8:	00213423          	sd	sp,8(sp)
    800040ec:	00313823          	sd	gp,16(sp)
    800040f0:	00413c23          	sd	tp,24(sp)
    800040f4:	02513023          	sd	t0,32(sp)
    800040f8:	02613423          	sd	t1,40(sp)
    800040fc:	02713823          	sd	t2,48(sp)
    80004100:	02813c23          	sd	s0,56(sp)
    80004104:	04913023          	sd	s1,64(sp)
    80004108:	04a13423          	sd	a0,72(sp)
    8000410c:	04b13823          	sd	a1,80(sp)
    80004110:	04c13c23          	sd	a2,88(sp)
    80004114:	06d13023          	sd	a3,96(sp)
    80004118:	06e13423          	sd	a4,104(sp)
    8000411c:	06f13823          	sd	a5,112(sp)
    80004120:	07013c23          	sd	a6,120(sp)
    80004124:	09113023          	sd	a7,128(sp)
    80004128:	09213423          	sd	s2,136(sp)
    8000412c:	09313823          	sd	s3,144(sp)
    80004130:	09413c23          	sd	s4,152(sp)
    80004134:	0b513023          	sd	s5,160(sp)
    80004138:	0b613423          	sd	s6,168(sp)
    8000413c:	0b713823          	sd	s7,176(sp)
    80004140:	0b813c23          	sd	s8,184(sp)
    80004144:	0d913023          	sd	s9,192(sp)
    80004148:	0da13423          	sd	s10,200(sp)
    8000414c:	0db13823          	sd	s11,208(sp)
    80004150:	0dc13c23          	sd	t3,216(sp)
    80004154:	0fd13023          	sd	t4,224(sp)
    80004158:	0fe13423          	sd	t5,232(sp)
    8000415c:	0ff13823          	sd	t6,240(sp)
    80004160:	cc9ff0ef          	jal	ra,80003e28 <kerneltrap>
    80004164:	00013083          	ld	ra,0(sp)
    80004168:	00813103          	ld	sp,8(sp)
    8000416c:	01013183          	ld	gp,16(sp)
    80004170:	02013283          	ld	t0,32(sp)
    80004174:	02813303          	ld	t1,40(sp)
    80004178:	03013383          	ld	t2,48(sp)
    8000417c:	03813403          	ld	s0,56(sp)
    80004180:	04013483          	ld	s1,64(sp)
    80004184:	04813503          	ld	a0,72(sp)
    80004188:	05013583          	ld	a1,80(sp)
    8000418c:	05813603          	ld	a2,88(sp)
    80004190:	06013683          	ld	a3,96(sp)
    80004194:	06813703          	ld	a4,104(sp)
    80004198:	07013783          	ld	a5,112(sp)
    8000419c:	07813803          	ld	a6,120(sp)
    800041a0:	08013883          	ld	a7,128(sp)
    800041a4:	08813903          	ld	s2,136(sp)
    800041a8:	09013983          	ld	s3,144(sp)
    800041ac:	09813a03          	ld	s4,152(sp)
    800041b0:	0a013a83          	ld	s5,160(sp)
    800041b4:	0a813b03          	ld	s6,168(sp)
    800041b8:	0b013b83          	ld	s7,176(sp)
    800041bc:	0b813c03          	ld	s8,184(sp)
    800041c0:	0c013c83          	ld	s9,192(sp)
    800041c4:	0c813d03          	ld	s10,200(sp)
    800041c8:	0d013d83          	ld	s11,208(sp)
    800041cc:	0d813e03          	ld	t3,216(sp)
    800041d0:	0e013e83          	ld	t4,224(sp)
    800041d4:	0e813f03          	ld	t5,232(sp)
    800041d8:	0f013f83          	ld	t6,240(sp)
    800041dc:	10010113          	addi	sp,sp,256
    800041e0:	10200073          	sret
    800041e4:	00000013          	nop
    800041e8:	00000013          	nop
    800041ec:	00000013          	nop

00000000800041f0 <timervec>:
    800041f0:	34051573          	csrrw	a0,mscratch,a0
    800041f4:	00b53023          	sd	a1,0(a0)
    800041f8:	00c53423          	sd	a2,8(a0)
    800041fc:	00d53823          	sd	a3,16(a0)
    80004200:	01853583          	ld	a1,24(a0)
    80004204:	02053603          	ld	a2,32(a0)
    80004208:	0005b683          	ld	a3,0(a1)
    8000420c:	00c686b3          	add	a3,a3,a2
    80004210:	00d5b023          	sd	a3,0(a1)
    80004214:	00200593          	li	a1,2
    80004218:	14459073          	csrw	sip,a1
    8000421c:	01053683          	ld	a3,16(a0)
    80004220:	00853603          	ld	a2,8(a0)
    80004224:	00053583          	ld	a1,0(a0)
    80004228:	34051573          	csrrw	a0,mscratch,a0
    8000422c:	30200073          	mret

0000000080004230 <plicinit>:
    80004230:	ff010113          	addi	sp,sp,-16
    80004234:	00813423          	sd	s0,8(sp)
    80004238:	01010413          	addi	s0,sp,16
    8000423c:	00813403          	ld	s0,8(sp)
    80004240:	0c0007b7          	lui	a5,0xc000
    80004244:	00100713          	li	a4,1
    80004248:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000424c:	00e7a223          	sw	a4,4(a5)
    80004250:	01010113          	addi	sp,sp,16
    80004254:	00008067          	ret

0000000080004258 <plicinithart>:
    80004258:	ff010113          	addi	sp,sp,-16
    8000425c:	00813023          	sd	s0,0(sp)
    80004260:	00113423          	sd	ra,8(sp)
    80004264:	01010413          	addi	s0,sp,16
    80004268:	00000097          	auipc	ra,0x0
    8000426c:	a40080e7          	jalr	-1472(ra) # 80003ca8 <cpuid>
    80004270:	0085171b          	slliw	a4,a0,0x8
    80004274:	0c0027b7          	lui	a5,0xc002
    80004278:	00e787b3          	add	a5,a5,a4
    8000427c:	40200713          	li	a4,1026
    80004280:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004284:	00813083          	ld	ra,8(sp)
    80004288:	00013403          	ld	s0,0(sp)
    8000428c:	00d5151b          	slliw	a0,a0,0xd
    80004290:	0c2017b7          	lui	a5,0xc201
    80004294:	00a78533          	add	a0,a5,a0
    80004298:	00052023          	sw	zero,0(a0)
    8000429c:	01010113          	addi	sp,sp,16
    800042a0:	00008067          	ret

00000000800042a4 <plic_claim>:
    800042a4:	ff010113          	addi	sp,sp,-16
    800042a8:	00813023          	sd	s0,0(sp)
    800042ac:	00113423          	sd	ra,8(sp)
    800042b0:	01010413          	addi	s0,sp,16
    800042b4:	00000097          	auipc	ra,0x0
    800042b8:	9f4080e7          	jalr	-1548(ra) # 80003ca8 <cpuid>
    800042bc:	00813083          	ld	ra,8(sp)
    800042c0:	00013403          	ld	s0,0(sp)
    800042c4:	00d5151b          	slliw	a0,a0,0xd
    800042c8:	0c2017b7          	lui	a5,0xc201
    800042cc:	00a78533          	add	a0,a5,a0
    800042d0:	00452503          	lw	a0,4(a0)
    800042d4:	01010113          	addi	sp,sp,16
    800042d8:	00008067          	ret

00000000800042dc <plic_complete>:
    800042dc:	fe010113          	addi	sp,sp,-32
    800042e0:	00813823          	sd	s0,16(sp)
    800042e4:	00913423          	sd	s1,8(sp)
    800042e8:	00113c23          	sd	ra,24(sp)
    800042ec:	02010413          	addi	s0,sp,32
    800042f0:	00050493          	mv	s1,a0
    800042f4:	00000097          	auipc	ra,0x0
    800042f8:	9b4080e7          	jalr	-1612(ra) # 80003ca8 <cpuid>
    800042fc:	01813083          	ld	ra,24(sp)
    80004300:	01013403          	ld	s0,16(sp)
    80004304:	00d5179b          	slliw	a5,a0,0xd
    80004308:	0c201737          	lui	a4,0xc201
    8000430c:	00f707b3          	add	a5,a4,a5
    80004310:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004314:	00813483          	ld	s1,8(sp)
    80004318:	02010113          	addi	sp,sp,32
    8000431c:	00008067          	ret

0000000080004320 <consolewrite>:
    80004320:	fb010113          	addi	sp,sp,-80
    80004324:	04813023          	sd	s0,64(sp)
    80004328:	04113423          	sd	ra,72(sp)
    8000432c:	02913c23          	sd	s1,56(sp)
    80004330:	03213823          	sd	s2,48(sp)
    80004334:	03313423          	sd	s3,40(sp)
    80004338:	03413023          	sd	s4,32(sp)
    8000433c:	01513c23          	sd	s5,24(sp)
    80004340:	05010413          	addi	s0,sp,80
    80004344:	06c05c63          	blez	a2,800043bc <consolewrite+0x9c>
    80004348:	00060993          	mv	s3,a2
    8000434c:	00050a13          	mv	s4,a0
    80004350:	00058493          	mv	s1,a1
    80004354:	00000913          	li	s2,0
    80004358:	fff00a93          	li	s5,-1
    8000435c:	01c0006f          	j	80004378 <consolewrite+0x58>
    80004360:	fbf44503          	lbu	a0,-65(s0)
    80004364:	0019091b          	addiw	s2,s2,1
    80004368:	00148493          	addi	s1,s1,1
    8000436c:	00001097          	auipc	ra,0x1
    80004370:	a9c080e7          	jalr	-1380(ra) # 80004e08 <uartputc>
    80004374:	03298063          	beq	s3,s2,80004394 <consolewrite+0x74>
    80004378:	00048613          	mv	a2,s1
    8000437c:	00100693          	li	a3,1
    80004380:	000a0593          	mv	a1,s4
    80004384:	fbf40513          	addi	a0,s0,-65
    80004388:	00000097          	auipc	ra,0x0
    8000438c:	9d8080e7          	jalr	-1576(ra) # 80003d60 <either_copyin>
    80004390:	fd5518e3          	bne	a0,s5,80004360 <consolewrite+0x40>
    80004394:	04813083          	ld	ra,72(sp)
    80004398:	04013403          	ld	s0,64(sp)
    8000439c:	03813483          	ld	s1,56(sp)
    800043a0:	02813983          	ld	s3,40(sp)
    800043a4:	02013a03          	ld	s4,32(sp)
    800043a8:	01813a83          	ld	s5,24(sp)
    800043ac:	00090513          	mv	a0,s2
    800043b0:	03013903          	ld	s2,48(sp)
    800043b4:	05010113          	addi	sp,sp,80
    800043b8:	00008067          	ret
    800043bc:	00000913          	li	s2,0
    800043c0:	fd5ff06f          	j	80004394 <consolewrite+0x74>

00000000800043c4 <consoleread>:
    800043c4:	f9010113          	addi	sp,sp,-112
    800043c8:	06813023          	sd	s0,96(sp)
    800043cc:	04913c23          	sd	s1,88(sp)
    800043d0:	05213823          	sd	s2,80(sp)
    800043d4:	05313423          	sd	s3,72(sp)
    800043d8:	05413023          	sd	s4,64(sp)
    800043dc:	03513c23          	sd	s5,56(sp)
    800043e0:	03613823          	sd	s6,48(sp)
    800043e4:	03713423          	sd	s7,40(sp)
    800043e8:	03813023          	sd	s8,32(sp)
    800043ec:	06113423          	sd	ra,104(sp)
    800043f0:	01913c23          	sd	s9,24(sp)
    800043f4:	07010413          	addi	s0,sp,112
    800043f8:	00060b93          	mv	s7,a2
    800043fc:	00050913          	mv	s2,a0
    80004400:	00058c13          	mv	s8,a1
    80004404:	00060b1b          	sext.w	s6,a2
    80004408:	00004497          	auipc	s1,0x4
    8000440c:	e6048493          	addi	s1,s1,-416 # 80008268 <cons>
    80004410:	00400993          	li	s3,4
    80004414:	fff00a13          	li	s4,-1
    80004418:	00a00a93          	li	s5,10
    8000441c:	05705e63          	blez	s7,80004478 <consoleread+0xb4>
    80004420:	09c4a703          	lw	a4,156(s1)
    80004424:	0984a783          	lw	a5,152(s1)
    80004428:	0007071b          	sext.w	a4,a4
    8000442c:	08e78463          	beq	a5,a4,800044b4 <consoleread+0xf0>
    80004430:	07f7f713          	andi	a4,a5,127
    80004434:	00e48733          	add	a4,s1,a4
    80004438:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000443c:	0017869b          	addiw	a3,a5,1
    80004440:	08d4ac23          	sw	a3,152(s1)
    80004444:	00070c9b          	sext.w	s9,a4
    80004448:	0b370663          	beq	a4,s3,800044f4 <consoleread+0x130>
    8000444c:	00100693          	li	a3,1
    80004450:	f9f40613          	addi	a2,s0,-97
    80004454:	000c0593          	mv	a1,s8
    80004458:	00090513          	mv	a0,s2
    8000445c:	f8e40fa3          	sb	a4,-97(s0)
    80004460:	00000097          	auipc	ra,0x0
    80004464:	8b4080e7          	jalr	-1868(ra) # 80003d14 <either_copyout>
    80004468:	01450863          	beq	a0,s4,80004478 <consoleread+0xb4>
    8000446c:	001c0c13          	addi	s8,s8,1
    80004470:	fffb8b9b          	addiw	s7,s7,-1
    80004474:	fb5c94e3          	bne	s9,s5,8000441c <consoleread+0x58>
    80004478:	000b851b          	sext.w	a0,s7
    8000447c:	06813083          	ld	ra,104(sp)
    80004480:	06013403          	ld	s0,96(sp)
    80004484:	05813483          	ld	s1,88(sp)
    80004488:	05013903          	ld	s2,80(sp)
    8000448c:	04813983          	ld	s3,72(sp)
    80004490:	04013a03          	ld	s4,64(sp)
    80004494:	03813a83          	ld	s5,56(sp)
    80004498:	02813b83          	ld	s7,40(sp)
    8000449c:	02013c03          	ld	s8,32(sp)
    800044a0:	01813c83          	ld	s9,24(sp)
    800044a4:	40ab053b          	subw	a0,s6,a0
    800044a8:	03013b03          	ld	s6,48(sp)
    800044ac:	07010113          	addi	sp,sp,112
    800044b0:	00008067          	ret
    800044b4:	00001097          	auipc	ra,0x1
    800044b8:	1d8080e7          	jalr	472(ra) # 8000568c <push_on>
    800044bc:	0984a703          	lw	a4,152(s1)
    800044c0:	09c4a783          	lw	a5,156(s1)
    800044c4:	0007879b          	sext.w	a5,a5
    800044c8:	fef70ce3          	beq	a4,a5,800044c0 <consoleread+0xfc>
    800044cc:	00001097          	auipc	ra,0x1
    800044d0:	234080e7          	jalr	564(ra) # 80005700 <pop_on>
    800044d4:	0984a783          	lw	a5,152(s1)
    800044d8:	07f7f713          	andi	a4,a5,127
    800044dc:	00e48733          	add	a4,s1,a4
    800044e0:	01874703          	lbu	a4,24(a4)
    800044e4:	0017869b          	addiw	a3,a5,1
    800044e8:	08d4ac23          	sw	a3,152(s1)
    800044ec:	00070c9b          	sext.w	s9,a4
    800044f0:	f5371ee3          	bne	a4,s3,8000444c <consoleread+0x88>
    800044f4:	000b851b          	sext.w	a0,s7
    800044f8:	f96bf2e3          	bgeu	s7,s6,8000447c <consoleread+0xb8>
    800044fc:	08f4ac23          	sw	a5,152(s1)
    80004500:	f7dff06f          	j	8000447c <consoleread+0xb8>

0000000080004504 <consputc>:
    80004504:	10000793          	li	a5,256
    80004508:	00f50663          	beq	a0,a5,80004514 <consputc+0x10>
    8000450c:	00001317          	auipc	t1,0x1
    80004510:	9f430067          	jr	-1548(t1) # 80004f00 <uartputc_sync>
    80004514:	ff010113          	addi	sp,sp,-16
    80004518:	00113423          	sd	ra,8(sp)
    8000451c:	00813023          	sd	s0,0(sp)
    80004520:	01010413          	addi	s0,sp,16
    80004524:	00800513          	li	a0,8
    80004528:	00001097          	auipc	ra,0x1
    8000452c:	9d8080e7          	jalr	-1576(ra) # 80004f00 <uartputc_sync>
    80004530:	02000513          	li	a0,32
    80004534:	00001097          	auipc	ra,0x1
    80004538:	9cc080e7          	jalr	-1588(ra) # 80004f00 <uartputc_sync>
    8000453c:	00013403          	ld	s0,0(sp)
    80004540:	00813083          	ld	ra,8(sp)
    80004544:	00800513          	li	a0,8
    80004548:	01010113          	addi	sp,sp,16
    8000454c:	00001317          	auipc	t1,0x1
    80004550:	9b430067          	jr	-1612(t1) # 80004f00 <uartputc_sync>

0000000080004554 <consoleintr>:
    80004554:	fe010113          	addi	sp,sp,-32
    80004558:	00813823          	sd	s0,16(sp)
    8000455c:	00913423          	sd	s1,8(sp)
    80004560:	01213023          	sd	s2,0(sp)
    80004564:	00113c23          	sd	ra,24(sp)
    80004568:	02010413          	addi	s0,sp,32
    8000456c:	00004917          	auipc	s2,0x4
    80004570:	cfc90913          	addi	s2,s2,-772 # 80008268 <cons>
    80004574:	00050493          	mv	s1,a0
    80004578:	00090513          	mv	a0,s2
    8000457c:	00001097          	auipc	ra,0x1
    80004580:	e40080e7          	jalr	-448(ra) # 800053bc <acquire>
    80004584:	02048c63          	beqz	s1,800045bc <consoleintr+0x68>
    80004588:	0a092783          	lw	a5,160(s2)
    8000458c:	09892703          	lw	a4,152(s2)
    80004590:	07f00693          	li	a3,127
    80004594:	40e7873b          	subw	a4,a5,a4
    80004598:	02e6e263          	bltu	a3,a4,800045bc <consoleintr+0x68>
    8000459c:	00d00713          	li	a4,13
    800045a0:	04e48063          	beq	s1,a4,800045e0 <consoleintr+0x8c>
    800045a4:	07f7f713          	andi	a4,a5,127
    800045a8:	00e90733          	add	a4,s2,a4
    800045ac:	0017879b          	addiw	a5,a5,1
    800045b0:	0af92023          	sw	a5,160(s2)
    800045b4:	00970c23          	sb	s1,24(a4)
    800045b8:	08f92e23          	sw	a5,156(s2)
    800045bc:	01013403          	ld	s0,16(sp)
    800045c0:	01813083          	ld	ra,24(sp)
    800045c4:	00813483          	ld	s1,8(sp)
    800045c8:	00013903          	ld	s2,0(sp)
    800045cc:	00004517          	auipc	a0,0x4
    800045d0:	c9c50513          	addi	a0,a0,-868 # 80008268 <cons>
    800045d4:	02010113          	addi	sp,sp,32
    800045d8:	00001317          	auipc	t1,0x1
    800045dc:	eb030067          	jr	-336(t1) # 80005488 <release>
    800045e0:	00a00493          	li	s1,10
    800045e4:	fc1ff06f          	j	800045a4 <consoleintr+0x50>

00000000800045e8 <consoleinit>:
    800045e8:	fe010113          	addi	sp,sp,-32
    800045ec:	00113c23          	sd	ra,24(sp)
    800045f0:	00813823          	sd	s0,16(sp)
    800045f4:	00913423          	sd	s1,8(sp)
    800045f8:	02010413          	addi	s0,sp,32
    800045fc:	00004497          	auipc	s1,0x4
    80004600:	c6c48493          	addi	s1,s1,-916 # 80008268 <cons>
    80004604:	00048513          	mv	a0,s1
    80004608:	00002597          	auipc	a1,0x2
    8000460c:	fe858593          	addi	a1,a1,-24 # 800065f0 <_ZZ12printIntegermE6digits+0x138>
    80004610:	00001097          	auipc	ra,0x1
    80004614:	d88080e7          	jalr	-632(ra) # 80005398 <initlock>
    80004618:	00000097          	auipc	ra,0x0
    8000461c:	7ac080e7          	jalr	1964(ra) # 80004dc4 <uartinit>
    80004620:	01813083          	ld	ra,24(sp)
    80004624:	01013403          	ld	s0,16(sp)
    80004628:	00000797          	auipc	a5,0x0
    8000462c:	d9c78793          	addi	a5,a5,-612 # 800043c4 <consoleread>
    80004630:	0af4bc23          	sd	a5,184(s1)
    80004634:	00000797          	auipc	a5,0x0
    80004638:	cec78793          	addi	a5,a5,-788 # 80004320 <consolewrite>
    8000463c:	0cf4b023          	sd	a5,192(s1)
    80004640:	00813483          	ld	s1,8(sp)
    80004644:	02010113          	addi	sp,sp,32
    80004648:	00008067          	ret

000000008000464c <console_read>:
    8000464c:	ff010113          	addi	sp,sp,-16
    80004650:	00813423          	sd	s0,8(sp)
    80004654:	01010413          	addi	s0,sp,16
    80004658:	00813403          	ld	s0,8(sp)
    8000465c:	00004317          	auipc	t1,0x4
    80004660:	cc433303          	ld	t1,-828(t1) # 80008320 <devsw+0x10>
    80004664:	01010113          	addi	sp,sp,16
    80004668:	00030067          	jr	t1

000000008000466c <console_write>:
    8000466c:	ff010113          	addi	sp,sp,-16
    80004670:	00813423          	sd	s0,8(sp)
    80004674:	01010413          	addi	s0,sp,16
    80004678:	00813403          	ld	s0,8(sp)
    8000467c:	00004317          	auipc	t1,0x4
    80004680:	cac33303          	ld	t1,-852(t1) # 80008328 <devsw+0x18>
    80004684:	01010113          	addi	sp,sp,16
    80004688:	00030067          	jr	t1

000000008000468c <panic>:
    8000468c:	fe010113          	addi	sp,sp,-32
    80004690:	00113c23          	sd	ra,24(sp)
    80004694:	00813823          	sd	s0,16(sp)
    80004698:	00913423          	sd	s1,8(sp)
    8000469c:	02010413          	addi	s0,sp,32
    800046a0:	00050493          	mv	s1,a0
    800046a4:	00002517          	auipc	a0,0x2
    800046a8:	f5450513          	addi	a0,a0,-172 # 800065f8 <_ZZ12printIntegermE6digits+0x140>
    800046ac:	00004797          	auipc	a5,0x4
    800046b0:	d007ae23          	sw	zero,-740(a5) # 800083c8 <pr+0x18>
    800046b4:	00000097          	auipc	ra,0x0
    800046b8:	034080e7          	jalr	52(ra) # 800046e8 <__printf>
    800046bc:	00048513          	mv	a0,s1
    800046c0:	00000097          	auipc	ra,0x0
    800046c4:	028080e7          	jalr	40(ra) # 800046e8 <__printf>
    800046c8:	00002517          	auipc	a0,0x2
    800046cc:	9c050513          	addi	a0,a0,-1600 # 80006088 <CONSOLE_STATUS+0x78>
    800046d0:	00000097          	auipc	ra,0x0
    800046d4:	018080e7          	jalr	24(ra) # 800046e8 <__printf>
    800046d8:	00100793          	li	a5,1
    800046dc:	00003717          	auipc	a4,0x3
    800046e0:	a4f72623          	sw	a5,-1460(a4) # 80007128 <panicked>
    800046e4:	0000006f          	j	800046e4 <panic+0x58>

00000000800046e8 <__printf>:
    800046e8:	f3010113          	addi	sp,sp,-208
    800046ec:	08813023          	sd	s0,128(sp)
    800046f0:	07313423          	sd	s3,104(sp)
    800046f4:	09010413          	addi	s0,sp,144
    800046f8:	05813023          	sd	s8,64(sp)
    800046fc:	08113423          	sd	ra,136(sp)
    80004700:	06913c23          	sd	s1,120(sp)
    80004704:	07213823          	sd	s2,112(sp)
    80004708:	07413023          	sd	s4,96(sp)
    8000470c:	05513c23          	sd	s5,88(sp)
    80004710:	05613823          	sd	s6,80(sp)
    80004714:	05713423          	sd	s7,72(sp)
    80004718:	03913c23          	sd	s9,56(sp)
    8000471c:	03a13823          	sd	s10,48(sp)
    80004720:	03b13423          	sd	s11,40(sp)
    80004724:	00004317          	auipc	t1,0x4
    80004728:	c8c30313          	addi	t1,t1,-884 # 800083b0 <pr>
    8000472c:	01832c03          	lw	s8,24(t1)
    80004730:	00b43423          	sd	a1,8(s0)
    80004734:	00c43823          	sd	a2,16(s0)
    80004738:	00d43c23          	sd	a3,24(s0)
    8000473c:	02e43023          	sd	a4,32(s0)
    80004740:	02f43423          	sd	a5,40(s0)
    80004744:	03043823          	sd	a6,48(s0)
    80004748:	03143c23          	sd	a7,56(s0)
    8000474c:	00050993          	mv	s3,a0
    80004750:	4a0c1663          	bnez	s8,80004bfc <__printf+0x514>
    80004754:	60098c63          	beqz	s3,80004d6c <__printf+0x684>
    80004758:	0009c503          	lbu	a0,0(s3)
    8000475c:	00840793          	addi	a5,s0,8
    80004760:	f6f43c23          	sd	a5,-136(s0)
    80004764:	00000493          	li	s1,0
    80004768:	22050063          	beqz	a0,80004988 <__printf+0x2a0>
    8000476c:	00002a37          	lui	s4,0x2
    80004770:	00018ab7          	lui	s5,0x18
    80004774:	000f4b37          	lui	s6,0xf4
    80004778:	00989bb7          	lui	s7,0x989
    8000477c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004780:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004784:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004788:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000478c:	00148c9b          	addiw	s9,s1,1
    80004790:	02500793          	li	a5,37
    80004794:	01998933          	add	s2,s3,s9
    80004798:	38f51263          	bne	a0,a5,80004b1c <__printf+0x434>
    8000479c:	00094783          	lbu	a5,0(s2)
    800047a0:	00078c9b          	sext.w	s9,a5
    800047a4:	1e078263          	beqz	a5,80004988 <__printf+0x2a0>
    800047a8:	0024849b          	addiw	s1,s1,2
    800047ac:	07000713          	li	a4,112
    800047b0:	00998933          	add	s2,s3,s1
    800047b4:	38e78a63          	beq	a5,a4,80004b48 <__printf+0x460>
    800047b8:	20f76863          	bltu	a4,a5,800049c8 <__printf+0x2e0>
    800047bc:	42a78863          	beq	a5,a0,80004bec <__printf+0x504>
    800047c0:	06400713          	li	a4,100
    800047c4:	40e79663          	bne	a5,a4,80004bd0 <__printf+0x4e8>
    800047c8:	f7843783          	ld	a5,-136(s0)
    800047cc:	0007a603          	lw	a2,0(a5)
    800047d0:	00878793          	addi	a5,a5,8
    800047d4:	f6f43c23          	sd	a5,-136(s0)
    800047d8:	42064a63          	bltz	a2,80004c0c <__printf+0x524>
    800047dc:	00a00713          	li	a4,10
    800047e0:	02e677bb          	remuw	a5,a2,a4
    800047e4:	00002d97          	auipc	s11,0x2
    800047e8:	e3cd8d93          	addi	s11,s11,-452 # 80006620 <digits>
    800047ec:	00900593          	li	a1,9
    800047f0:	0006051b          	sext.w	a0,a2
    800047f4:	00000c93          	li	s9,0
    800047f8:	02079793          	slli	a5,a5,0x20
    800047fc:	0207d793          	srli	a5,a5,0x20
    80004800:	00fd87b3          	add	a5,s11,a5
    80004804:	0007c783          	lbu	a5,0(a5)
    80004808:	02e656bb          	divuw	a3,a2,a4
    8000480c:	f8f40023          	sb	a5,-128(s0)
    80004810:	14c5d863          	bge	a1,a2,80004960 <__printf+0x278>
    80004814:	06300593          	li	a1,99
    80004818:	00100c93          	li	s9,1
    8000481c:	02e6f7bb          	remuw	a5,a3,a4
    80004820:	02079793          	slli	a5,a5,0x20
    80004824:	0207d793          	srli	a5,a5,0x20
    80004828:	00fd87b3          	add	a5,s11,a5
    8000482c:	0007c783          	lbu	a5,0(a5)
    80004830:	02e6d73b          	divuw	a4,a3,a4
    80004834:	f8f400a3          	sb	a5,-127(s0)
    80004838:	12a5f463          	bgeu	a1,a0,80004960 <__printf+0x278>
    8000483c:	00a00693          	li	a3,10
    80004840:	00900593          	li	a1,9
    80004844:	02d777bb          	remuw	a5,a4,a3
    80004848:	02079793          	slli	a5,a5,0x20
    8000484c:	0207d793          	srli	a5,a5,0x20
    80004850:	00fd87b3          	add	a5,s11,a5
    80004854:	0007c503          	lbu	a0,0(a5)
    80004858:	02d757bb          	divuw	a5,a4,a3
    8000485c:	f8a40123          	sb	a0,-126(s0)
    80004860:	48e5f263          	bgeu	a1,a4,80004ce4 <__printf+0x5fc>
    80004864:	06300513          	li	a0,99
    80004868:	02d7f5bb          	remuw	a1,a5,a3
    8000486c:	02059593          	slli	a1,a1,0x20
    80004870:	0205d593          	srli	a1,a1,0x20
    80004874:	00bd85b3          	add	a1,s11,a1
    80004878:	0005c583          	lbu	a1,0(a1)
    8000487c:	02d7d7bb          	divuw	a5,a5,a3
    80004880:	f8b401a3          	sb	a1,-125(s0)
    80004884:	48e57263          	bgeu	a0,a4,80004d08 <__printf+0x620>
    80004888:	3e700513          	li	a0,999
    8000488c:	02d7f5bb          	remuw	a1,a5,a3
    80004890:	02059593          	slli	a1,a1,0x20
    80004894:	0205d593          	srli	a1,a1,0x20
    80004898:	00bd85b3          	add	a1,s11,a1
    8000489c:	0005c583          	lbu	a1,0(a1)
    800048a0:	02d7d7bb          	divuw	a5,a5,a3
    800048a4:	f8b40223          	sb	a1,-124(s0)
    800048a8:	46e57663          	bgeu	a0,a4,80004d14 <__printf+0x62c>
    800048ac:	02d7f5bb          	remuw	a1,a5,a3
    800048b0:	02059593          	slli	a1,a1,0x20
    800048b4:	0205d593          	srli	a1,a1,0x20
    800048b8:	00bd85b3          	add	a1,s11,a1
    800048bc:	0005c583          	lbu	a1,0(a1)
    800048c0:	02d7d7bb          	divuw	a5,a5,a3
    800048c4:	f8b402a3          	sb	a1,-123(s0)
    800048c8:	46ea7863          	bgeu	s4,a4,80004d38 <__printf+0x650>
    800048cc:	02d7f5bb          	remuw	a1,a5,a3
    800048d0:	02059593          	slli	a1,a1,0x20
    800048d4:	0205d593          	srli	a1,a1,0x20
    800048d8:	00bd85b3          	add	a1,s11,a1
    800048dc:	0005c583          	lbu	a1,0(a1)
    800048e0:	02d7d7bb          	divuw	a5,a5,a3
    800048e4:	f8b40323          	sb	a1,-122(s0)
    800048e8:	3eeaf863          	bgeu	s5,a4,80004cd8 <__printf+0x5f0>
    800048ec:	02d7f5bb          	remuw	a1,a5,a3
    800048f0:	02059593          	slli	a1,a1,0x20
    800048f4:	0205d593          	srli	a1,a1,0x20
    800048f8:	00bd85b3          	add	a1,s11,a1
    800048fc:	0005c583          	lbu	a1,0(a1)
    80004900:	02d7d7bb          	divuw	a5,a5,a3
    80004904:	f8b403a3          	sb	a1,-121(s0)
    80004908:	42eb7e63          	bgeu	s6,a4,80004d44 <__printf+0x65c>
    8000490c:	02d7f5bb          	remuw	a1,a5,a3
    80004910:	02059593          	slli	a1,a1,0x20
    80004914:	0205d593          	srli	a1,a1,0x20
    80004918:	00bd85b3          	add	a1,s11,a1
    8000491c:	0005c583          	lbu	a1,0(a1)
    80004920:	02d7d7bb          	divuw	a5,a5,a3
    80004924:	f8b40423          	sb	a1,-120(s0)
    80004928:	42ebfc63          	bgeu	s7,a4,80004d60 <__printf+0x678>
    8000492c:	02079793          	slli	a5,a5,0x20
    80004930:	0207d793          	srli	a5,a5,0x20
    80004934:	00fd8db3          	add	s11,s11,a5
    80004938:	000dc703          	lbu	a4,0(s11)
    8000493c:	00a00793          	li	a5,10
    80004940:	00900c93          	li	s9,9
    80004944:	f8e404a3          	sb	a4,-119(s0)
    80004948:	00065c63          	bgez	a2,80004960 <__printf+0x278>
    8000494c:	f9040713          	addi	a4,s0,-112
    80004950:	00f70733          	add	a4,a4,a5
    80004954:	02d00693          	li	a3,45
    80004958:	fed70823          	sb	a3,-16(a4)
    8000495c:	00078c93          	mv	s9,a5
    80004960:	f8040793          	addi	a5,s0,-128
    80004964:	01978cb3          	add	s9,a5,s9
    80004968:	f7f40d13          	addi	s10,s0,-129
    8000496c:	000cc503          	lbu	a0,0(s9)
    80004970:	fffc8c93          	addi	s9,s9,-1
    80004974:	00000097          	auipc	ra,0x0
    80004978:	b90080e7          	jalr	-1136(ra) # 80004504 <consputc>
    8000497c:	ffac98e3          	bne	s9,s10,8000496c <__printf+0x284>
    80004980:	00094503          	lbu	a0,0(s2)
    80004984:	e00514e3          	bnez	a0,8000478c <__printf+0xa4>
    80004988:	1a0c1663          	bnez	s8,80004b34 <__printf+0x44c>
    8000498c:	08813083          	ld	ra,136(sp)
    80004990:	08013403          	ld	s0,128(sp)
    80004994:	07813483          	ld	s1,120(sp)
    80004998:	07013903          	ld	s2,112(sp)
    8000499c:	06813983          	ld	s3,104(sp)
    800049a0:	06013a03          	ld	s4,96(sp)
    800049a4:	05813a83          	ld	s5,88(sp)
    800049a8:	05013b03          	ld	s6,80(sp)
    800049ac:	04813b83          	ld	s7,72(sp)
    800049b0:	04013c03          	ld	s8,64(sp)
    800049b4:	03813c83          	ld	s9,56(sp)
    800049b8:	03013d03          	ld	s10,48(sp)
    800049bc:	02813d83          	ld	s11,40(sp)
    800049c0:	0d010113          	addi	sp,sp,208
    800049c4:	00008067          	ret
    800049c8:	07300713          	li	a4,115
    800049cc:	1ce78a63          	beq	a5,a4,80004ba0 <__printf+0x4b8>
    800049d0:	07800713          	li	a4,120
    800049d4:	1ee79e63          	bne	a5,a4,80004bd0 <__printf+0x4e8>
    800049d8:	f7843783          	ld	a5,-136(s0)
    800049dc:	0007a703          	lw	a4,0(a5)
    800049e0:	00878793          	addi	a5,a5,8
    800049e4:	f6f43c23          	sd	a5,-136(s0)
    800049e8:	28074263          	bltz	a4,80004c6c <__printf+0x584>
    800049ec:	00002d97          	auipc	s11,0x2
    800049f0:	c34d8d93          	addi	s11,s11,-972 # 80006620 <digits>
    800049f4:	00f77793          	andi	a5,a4,15
    800049f8:	00fd87b3          	add	a5,s11,a5
    800049fc:	0007c683          	lbu	a3,0(a5)
    80004a00:	00f00613          	li	a2,15
    80004a04:	0007079b          	sext.w	a5,a4
    80004a08:	f8d40023          	sb	a3,-128(s0)
    80004a0c:	0047559b          	srliw	a1,a4,0x4
    80004a10:	0047569b          	srliw	a3,a4,0x4
    80004a14:	00000c93          	li	s9,0
    80004a18:	0ee65063          	bge	a2,a4,80004af8 <__printf+0x410>
    80004a1c:	00f6f693          	andi	a3,a3,15
    80004a20:	00dd86b3          	add	a3,s11,a3
    80004a24:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004a28:	0087d79b          	srliw	a5,a5,0x8
    80004a2c:	00100c93          	li	s9,1
    80004a30:	f8d400a3          	sb	a3,-127(s0)
    80004a34:	0cb67263          	bgeu	a2,a1,80004af8 <__printf+0x410>
    80004a38:	00f7f693          	andi	a3,a5,15
    80004a3c:	00dd86b3          	add	a3,s11,a3
    80004a40:	0006c583          	lbu	a1,0(a3)
    80004a44:	00f00613          	li	a2,15
    80004a48:	0047d69b          	srliw	a3,a5,0x4
    80004a4c:	f8b40123          	sb	a1,-126(s0)
    80004a50:	0047d593          	srli	a1,a5,0x4
    80004a54:	28f67e63          	bgeu	a2,a5,80004cf0 <__printf+0x608>
    80004a58:	00f6f693          	andi	a3,a3,15
    80004a5c:	00dd86b3          	add	a3,s11,a3
    80004a60:	0006c503          	lbu	a0,0(a3)
    80004a64:	0087d813          	srli	a6,a5,0x8
    80004a68:	0087d69b          	srliw	a3,a5,0x8
    80004a6c:	f8a401a3          	sb	a0,-125(s0)
    80004a70:	28b67663          	bgeu	a2,a1,80004cfc <__printf+0x614>
    80004a74:	00f6f693          	andi	a3,a3,15
    80004a78:	00dd86b3          	add	a3,s11,a3
    80004a7c:	0006c583          	lbu	a1,0(a3)
    80004a80:	00c7d513          	srli	a0,a5,0xc
    80004a84:	00c7d69b          	srliw	a3,a5,0xc
    80004a88:	f8b40223          	sb	a1,-124(s0)
    80004a8c:	29067a63          	bgeu	a2,a6,80004d20 <__printf+0x638>
    80004a90:	00f6f693          	andi	a3,a3,15
    80004a94:	00dd86b3          	add	a3,s11,a3
    80004a98:	0006c583          	lbu	a1,0(a3)
    80004a9c:	0107d813          	srli	a6,a5,0x10
    80004aa0:	0107d69b          	srliw	a3,a5,0x10
    80004aa4:	f8b402a3          	sb	a1,-123(s0)
    80004aa8:	28a67263          	bgeu	a2,a0,80004d2c <__printf+0x644>
    80004aac:	00f6f693          	andi	a3,a3,15
    80004ab0:	00dd86b3          	add	a3,s11,a3
    80004ab4:	0006c683          	lbu	a3,0(a3)
    80004ab8:	0147d79b          	srliw	a5,a5,0x14
    80004abc:	f8d40323          	sb	a3,-122(s0)
    80004ac0:	21067663          	bgeu	a2,a6,80004ccc <__printf+0x5e4>
    80004ac4:	02079793          	slli	a5,a5,0x20
    80004ac8:	0207d793          	srli	a5,a5,0x20
    80004acc:	00fd8db3          	add	s11,s11,a5
    80004ad0:	000dc683          	lbu	a3,0(s11)
    80004ad4:	00800793          	li	a5,8
    80004ad8:	00700c93          	li	s9,7
    80004adc:	f8d403a3          	sb	a3,-121(s0)
    80004ae0:	00075c63          	bgez	a4,80004af8 <__printf+0x410>
    80004ae4:	f9040713          	addi	a4,s0,-112
    80004ae8:	00f70733          	add	a4,a4,a5
    80004aec:	02d00693          	li	a3,45
    80004af0:	fed70823          	sb	a3,-16(a4)
    80004af4:	00078c93          	mv	s9,a5
    80004af8:	f8040793          	addi	a5,s0,-128
    80004afc:	01978cb3          	add	s9,a5,s9
    80004b00:	f7f40d13          	addi	s10,s0,-129
    80004b04:	000cc503          	lbu	a0,0(s9)
    80004b08:	fffc8c93          	addi	s9,s9,-1
    80004b0c:	00000097          	auipc	ra,0x0
    80004b10:	9f8080e7          	jalr	-1544(ra) # 80004504 <consputc>
    80004b14:	ff9d18e3          	bne	s10,s9,80004b04 <__printf+0x41c>
    80004b18:	0100006f          	j	80004b28 <__printf+0x440>
    80004b1c:	00000097          	auipc	ra,0x0
    80004b20:	9e8080e7          	jalr	-1560(ra) # 80004504 <consputc>
    80004b24:	000c8493          	mv	s1,s9
    80004b28:	00094503          	lbu	a0,0(s2)
    80004b2c:	c60510e3          	bnez	a0,8000478c <__printf+0xa4>
    80004b30:	e40c0ee3          	beqz	s8,8000498c <__printf+0x2a4>
    80004b34:	00004517          	auipc	a0,0x4
    80004b38:	87c50513          	addi	a0,a0,-1924 # 800083b0 <pr>
    80004b3c:	00001097          	auipc	ra,0x1
    80004b40:	94c080e7          	jalr	-1716(ra) # 80005488 <release>
    80004b44:	e49ff06f          	j	8000498c <__printf+0x2a4>
    80004b48:	f7843783          	ld	a5,-136(s0)
    80004b4c:	03000513          	li	a0,48
    80004b50:	01000d13          	li	s10,16
    80004b54:	00878713          	addi	a4,a5,8
    80004b58:	0007bc83          	ld	s9,0(a5)
    80004b5c:	f6e43c23          	sd	a4,-136(s0)
    80004b60:	00000097          	auipc	ra,0x0
    80004b64:	9a4080e7          	jalr	-1628(ra) # 80004504 <consputc>
    80004b68:	07800513          	li	a0,120
    80004b6c:	00000097          	auipc	ra,0x0
    80004b70:	998080e7          	jalr	-1640(ra) # 80004504 <consputc>
    80004b74:	00002d97          	auipc	s11,0x2
    80004b78:	aacd8d93          	addi	s11,s11,-1364 # 80006620 <digits>
    80004b7c:	03ccd793          	srli	a5,s9,0x3c
    80004b80:	00fd87b3          	add	a5,s11,a5
    80004b84:	0007c503          	lbu	a0,0(a5)
    80004b88:	fffd0d1b          	addiw	s10,s10,-1
    80004b8c:	004c9c93          	slli	s9,s9,0x4
    80004b90:	00000097          	auipc	ra,0x0
    80004b94:	974080e7          	jalr	-1676(ra) # 80004504 <consputc>
    80004b98:	fe0d12e3          	bnez	s10,80004b7c <__printf+0x494>
    80004b9c:	f8dff06f          	j	80004b28 <__printf+0x440>
    80004ba0:	f7843783          	ld	a5,-136(s0)
    80004ba4:	0007bc83          	ld	s9,0(a5)
    80004ba8:	00878793          	addi	a5,a5,8
    80004bac:	f6f43c23          	sd	a5,-136(s0)
    80004bb0:	000c9a63          	bnez	s9,80004bc4 <__printf+0x4dc>
    80004bb4:	1080006f          	j	80004cbc <__printf+0x5d4>
    80004bb8:	001c8c93          	addi	s9,s9,1
    80004bbc:	00000097          	auipc	ra,0x0
    80004bc0:	948080e7          	jalr	-1720(ra) # 80004504 <consputc>
    80004bc4:	000cc503          	lbu	a0,0(s9)
    80004bc8:	fe0518e3          	bnez	a0,80004bb8 <__printf+0x4d0>
    80004bcc:	f5dff06f          	j	80004b28 <__printf+0x440>
    80004bd0:	02500513          	li	a0,37
    80004bd4:	00000097          	auipc	ra,0x0
    80004bd8:	930080e7          	jalr	-1744(ra) # 80004504 <consputc>
    80004bdc:	000c8513          	mv	a0,s9
    80004be0:	00000097          	auipc	ra,0x0
    80004be4:	924080e7          	jalr	-1756(ra) # 80004504 <consputc>
    80004be8:	f41ff06f          	j	80004b28 <__printf+0x440>
    80004bec:	02500513          	li	a0,37
    80004bf0:	00000097          	auipc	ra,0x0
    80004bf4:	914080e7          	jalr	-1772(ra) # 80004504 <consputc>
    80004bf8:	f31ff06f          	j	80004b28 <__printf+0x440>
    80004bfc:	00030513          	mv	a0,t1
    80004c00:	00000097          	auipc	ra,0x0
    80004c04:	7bc080e7          	jalr	1980(ra) # 800053bc <acquire>
    80004c08:	b4dff06f          	j	80004754 <__printf+0x6c>
    80004c0c:	40c0053b          	negw	a0,a2
    80004c10:	00a00713          	li	a4,10
    80004c14:	02e576bb          	remuw	a3,a0,a4
    80004c18:	00002d97          	auipc	s11,0x2
    80004c1c:	a08d8d93          	addi	s11,s11,-1528 # 80006620 <digits>
    80004c20:	ff700593          	li	a1,-9
    80004c24:	02069693          	slli	a3,a3,0x20
    80004c28:	0206d693          	srli	a3,a3,0x20
    80004c2c:	00dd86b3          	add	a3,s11,a3
    80004c30:	0006c683          	lbu	a3,0(a3)
    80004c34:	02e557bb          	divuw	a5,a0,a4
    80004c38:	f8d40023          	sb	a3,-128(s0)
    80004c3c:	10b65e63          	bge	a2,a1,80004d58 <__printf+0x670>
    80004c40:	06300593          	li	a1,99
    80004c44:	02e7f6bb          	remuw	a3,a5,a4
    80004c48:	02069693          	slli	a3,a3,0x20
    80004c4c:	0206d693          	srli	a3,a3,0x20
    80004c50:	00dd86b3          	add	a3,s11,a3
    80004c54:	0006c683          	lbu	a3,0(a3)
    80004c58:	02e7d73b          	divuw	a4,a5,a4
    80004c5c:	00200793          	li	a5,2
    80004c60:	f8d400a3          	sb	a3,-127(s0)
    80004c64:	bca5ece3          	bltu	a1,a0,8000483c <__printf+0x154>
    80004c68:	ce5ff06f          	j	8000494c <__printf+0x264>
    80004c6c:	40e007bb          	negw	a5,a4
    80004c70:	00002d97          	auipc	s11,0x2
    80004c74:	9b0d8d93          	addi	s11,s11,-1616 # 80006620 <digits>
    80004c78:	00f7f693          	andi	a3,a5,15
    80004c7c:	00dd86b3          	add	a3,s11,a3
    80004c80:	0006c583          	lbu	a1,0(a3)
    80004c84:	ff100613          	li	a2,-15
    80004c88:	0047d69b          	srliw	a3,a5,0x4
    80004c8c:	f8b40023          	sb	a1,-128(s0)
    80004c90:	0047d59b          	srliw	a1,a5,0x4
    80004c94:	0ac75e63          	bge	a4,a2,80004d50 <__printf+0x668>
    80004c98:	00f6f693          	andi	a3,a3,15
    80004c9c:	00dd86b3          	add	a3,s11,a3
    80004ca0:	0006c603          	lbu	a2,0(a3)
    80004ca4:	00f00693          	li	a3,15
    80004ca8:	0087d79b          	srliw	a5,a5,0x8
    80004cac:	f8c400a3          	sb	a2,-127(s0)
    80004cb0:	d8b6e4e3          	bltu	a3,a1,80004a38 <__printf+0x350>
    80004cb4:	00200793          	li	a5,2
    80004cb8:	e2dff06f          	j	80004ae4 <__printf+0x3fc>
    80004cbc:	00002c97          	auipc	s9,0x2
    80004cc0:	944c8c93          	addi	s9,s9,-1724 # 80006600 <_ZZ12printIntegermE6digits+0x148>
    80004cc4:	02800513          	li	a0,40
    80004cc8:	ef1ff06f          	j	80004bb8 <__printf+0x4d0>
    80004ccc:	00700793          	li	a5,7
    80004cd0:	00600c93          	li	s9,6
    80004cd4:	e0dff06f          	j	80004ae0 <__printf+0x3f8>
    80004cd8:	00700793          	li	a5,7
    80004cdc:	00600c93          	li	s9,6
    80004ce0:	c69ff06f          	j	80004948 <__printf+0x260>
    80004ce4:	00300793          	li	a5,3
    80004ce8:	00200c93          	li	s9,2
    80004cec:	c5dff06f          	j	80004948 <__printf+0x260>
    80004cf0:	00300793          	li	a5,3
    80004cf4:	00200c93          	li	s9,2
    80004cf8:	de9ff06f          	j	80004ae0 <__printf+0x3f8>
    80004cfc:	00400793          	li	a5,4
    80004d00:	00300c93          	li	s9,3
    80004d04:	dddff06f          	j	80004ae0 <__printf+0x3f8>
    80004d08:	00400793          	li	a5,4
    80004d0c:	00300c93          	li	s9,3
    80004d10:	c39ff06f          	j	80004948 <__printf+0x260>
    80004d14:	00500793          	li	a5,5
    80004d18:	00400c93          	li	s9,4
    80004d1c:	c2dff06f          	j	80004948 <__printf+0x260>
    80004d20:	00500793          	li	a5,5
    80004d24:	00400c93          	li	s9,4
    80004d28:	db9ff06f          	j	80004ae0 <__printf+0x3f8>
    80004d2c:	00600793          	li	a5,6
    80004d30:	00500c93          	li	s9,5
    80004d34:	dadff06f          	j	80004ae0 <__printf+0x3f8>
    80004d38:	00600793          	li	a5,6
    80004d3c:	00500c93          	li	s9,5
    80004d40:	c09ff06f          	j	80004948 <__printf+0x260>
    80004d44:	00800793          	li	a5,8
    80004d48:	00700c93          	li	s9,7
    80004d4c:	bfdff06f          	j	80004948 <__printf+0x260>
    80004d50:	00100793          	li	a5,1
    80004d54:	d91ff06f          	j	80004ae4 <__printf+0x3fc>
    80004d58:	00100793          	li	a5,1
    80004d5c:	bf1ff06f          	j	8000494c <__printf+0x264>
    80004d60:	00900793          	li	a5,9
    80004d64:	00800c93          	li	s9,8
    80004d68:	be1ff06f          	j	80004948 <__printf+0x260>
    80004d6c:	00002517          	auipc	a0,0x2
    80004d70:	89c50513          	addi	a0,a0,-1892 # 80006608 <_ZZ12printIntegermE6digits+0x150>
    80004d74:	00000097          	auipc	ra,0x0
    80004d78:	918080e7          	jalr	-1768(ra) # 8000468c <panic>

0000000080004d7c <printfinit>:
    80004d7c:	fe010113          	addi	sp,sp,-32
    80004d80:	00813823          	sd	s0,16(sp)
    80004d84:	00913423          	sd	s1,8(sp)
    80004d88:	00113c23          	sd	ra,24(sp)
    80004d8c:	02010413          	addi	s0,sp,32
    80004d90:	00003497          	auipc	s1,0x3
    80004d94:	62048493          	addi	s1,s1,1568 # 800083b0 <pr>
    80004d98:	00048513          	mv	a0,s1
    80004d9c:	00002597          	auipc	a1,0x2
    80004da0:	87c58593          	addi	a1,a1,-1924 # 80006618 <_ZZ12printIntegermE6digits+0x160>
    80004da4:	00000097          	auipc	ra,0x0
    80004da8:	5f4080e7          	jalr	1524(ra) # 80005398 <initlock>
    80004dac:	01813083          	ld	ra,24(sp)
    80004db0:	01013403          	ld	s0,16(sp)
    80004db4:	0004ac23          	sw	zero,24(s1)
    80004db8:	00813483          	ld	s1,8(sp)
    80004dbc:	02010113          	addi	sp,sp,32
    80004dc0:	00008067          	ret

0000000080004dc4 <uartinit>:
    80004dc4:	ff010113          	addi	sp,sp,-16
    80004dc8:	00813423          	sd	s0,8(sp)
    80004dcc:	01010413          	addi	s0,sp,16
    80004dd0:	100007b7          	lui	a5,0x10000
    80004dd4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004dd8:	f8000713          	li	a4,-128
    80004ddc:	00e781a3          	sb	a4,3(a5)
    80004de0:	00300713          	li	a4,3
    80004de4:	00e78023          	sb	a4,0(a5)
    80004de8:	000780a3          	sb	zero,1(a5)
    80004dec:	00e781a3          	sb	a4,3(a5)
    80004df0:	00700693          	li	a3,7
    80004df4:	00d78123          	sb	a3,2(a5)
    80004df8:	00e780a3          	sb	a4,1(a5)
    80004dfc:	00813403          	ld	s0,8(sp)
    80004e00:	01010113          	addi	sp,sp,16
    80004e04:	00008067          	ret

0000000080004e08 <uartputc>:
    80004e08:	00002797          	auipc	a5,0x2
    80004e0c:	3207a783          	lw	a5,800(a5) # 80007128 <panicked>
    80004e10:	00078463          	beqz	a5,80004e18 <uartputc+0x10>
    80004e14:	0000006f          	j	80004e14 <uartputc+0xc>
    80004e18:	fd010113          	addi	sp,sp,-48
    80004e1c:	02813023          	sd	s0,32(sp)
    80004e20:	00913c23          	sd	s1,24(sp)
    80004e24:	01213823          	sd	s2,16(sp)
    80004e28:	01313423          	sd	s3,8(sp)
    80004e2c:	02113423          	sd	ra,40(sp)
    80004e30:	03010413          	addi	s0,sp,48
    80004e34:	00002917          	auipc	s2,0x2
    80004e38:	2fc90913          	addi	s2,s2,764 # 80007130 <uart_tx_r>
    80004e3c:	00093783          	ld	a5,0(s2)
    80004e40:	00002497          	auipc	s1,0x2
    80004e44:	2f848493          	addi	s1,s1,760 # 80007138 <uart_tx_w>
    80004e48:	0004b703          	ld	a4,0(s1)
    80004e4c:	02078693          	addi	a3,a5,32
    80004e50:	00050993          	mv	s3,a0
    80004e54:	02e69c63          	bne	a3,a4,80004e8c <uartputc+0x84>
    80004e58:	00001097          	auipc	ra,0x1
    80004e5c:	834080e7          	jalr	-1996(ra) # 8000568c <push_on>
    80004e60:	00093783          	ld	a5,0(s2)
    80004e64:	0004b703          	ld	a4,0(s1)
    80004e68:	02078793          	addi	a5,a5,32
    80004e6c:	00e79463          	bne	a5,a4,80004e74 <uartputc+0x6c>
    80004e70:	0000006f          	j	80004e70 <uartputc+0x68>
    80004e74:	00001097          	auipc	ra,0x1
    80004e78:	88c080e7          	jalr	-1908(ra) # 80005700 <pop_on>
    80004e7c:	00093783          	ld	a5,0(s2)
    80004e80:	0004b703          	ld	a4,0(s1)
    80004e84:	02078693          	addi	a3,a5,32
    80004e88:	fce688e3          	beq	a3,a4,80004e58 <uartputc+0x50>
    80004e8c:	01f77693          	andi	a3,a4,31
    80004e90:	00003597          	auipc	a1,0x3
    80004e94:	54058593          	addi	a1,a1,1344 # 800083d0 <uart_tx_buf>
    80004e98:	00d586b3          	add	a3,a1,a3
    80004e9c:	00170713          	addi	a4,a4,1
    80004ea0:	01368023          	sb	s3,0(a3)
    80004ea4:	00e4b023          	sd	a4,0(s1)
    80004ea8:	10000637          	lui	a2,0x10000
    80004eac:	02f71063          	bne	a4,a5,80004ecc <uartputc+0xc4>
    80004eb0:	0340006f          	j	80004ee4 <uartputc+0xdc>
    80004eb4:	00074703          	lbu	a4,0(a4)
    80004eb8:	00f93023          	sd	a5,0(s2)
    80004ebc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004ec0:	00093783          	ld	a5,0(s2)
    80004ec4:	0004b703          	ld	a4,0(s1)
    80004ec8:	00f70e63          	beq	a4,a5,80004ee4 <uartputc+0xdc>
    80004ecc:	00564683          	lbu	a3,5(a2)
    80004ed0:	01f7f713          	andi	a4,a5,31
    80004ed4:	00e58733          	add	a4,a1,a4
    80004ed8:	0206f693          	andi	a3,a3,32
    80004edc:	00178793          	addi	a5,a5,1
    80004ee0:	fc069ae3          	bnez	a3,80004eb4 <uartputc+0xac>
    80004ee4:	02813083          	ld	ra,40(sp)
    80004ee8:	02013403          	ld	s0,32(sp)
    80004eec:	01813483          	ld	s1,24(sp)
    80004ef0:	01013903          	ld	s2,16(sp)
    80004ef4:	00813983          	ld	s3,8(sp)
    80004ef8:	03010113          	addi	sp,sp,48
    80004efc:	00008067          	ret

0000000080004f00 <uartputc_sync>:
    80004f00:	ff010113          	addi	sp,sp,-16
    80004f04:	00813423          	sd	s0,8(sp)
    80004f08:	01010413          	addi	s0,sp,16
    80004f0c:	00002717          	auipc	a4,0x2
    80004f10:	21c72703          	lw	a4,540(a4) # 80007128 <panicked>
    80004f14:	02071663          	bnez	a4,80004f40 <uartputc_sync+0x40>
    80004f18:	00050793          	mv	a5,a0
    80004f1c:	100006b7          	lui	a3,0x10000
    80004f20:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004f24:	02077713          	andi	a4,a4,32
    80004f28:	fe070ce3          	beqz	a4,80004f20 <uartputc_sync+0x20>
    80004f2c:	0ff7f793          	andi	a5,a5,255
    80004f30:	00f68023          	sb	a5,0(a3)
    80004f34:	00813403          	ld	s0,8(sp)
    80004f38:	01010113          	addi	sp,sp,16
    80004f3c:	00008067          	ret
    80004f40:	0000006f          	j	80004f40 <uartputc_sync+0x40>

0000000080004f44 <uartstart>:
    80004f44:	ff010113          	addi	sp,sp,-16
    80004f48:	00813423          	sd	s0,8(sp)
    80004f4c:	01010413          	addi	s0,sp,16
    80004f50:	00002617          	auipc	a2,0x2
    80004f54:	1e060613          	addi	a2,a2,480 # 80007130 <uart_tx_r>
    80004f58:	00002517          	auipc	a0,0x2
    80004f5c:	1e050513          	addi	a0,a0,480 # 80007138 <uart_tx_w>
    80004f60:	00063783          	ld	a5,0(a2)
    80004f64:	00053703          	ld	a4,0(a0)
    80004f68:	04f70263          	beq	a4,a5,80004fac <uartstart+0x68>
    80004f6c:	100005b7          	lui	a1,0x10000
    80004f70:	00003817          	auipc	a6,0x3
    80004f74:	46080813          	addi	a6,a6,1120 # 800083d0 <uart_tx_buf>
    80004f78:	01c0006f          	j	80004f94 <uartstart+0x50>
    80004f7c:	0006c703          	lbu	a4,0(a3)
    80004f80:	00f63023          	sd	a5,0(a2)
    80004f84:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004f88:	00063783          	ld	a5,0(a2)
    80004f8c:	00053703          	ld	a4,0(a0)
    80004f90:	00f70e63          	beq	a4,a5,80004fac <uartstart+0x68>
    80004f94:	01f7f713          	andi	a4,a5,31
    80004f98:	00e806b3          	add	a3,a6,a4
    80004f9c:	0055c703          	lbu	a4,5(a1)
    80004fa0:	00178793          	addi	a5,a5,1
    80004fa4:	02077713          	andi	a4,a4,32
    80004fa8:	fc071ae3          	bnez	a4,80004f7c <uartstart+0x38>
    80004fac:	00813403          	ld	s0,8(sp)
    80004fb0:	01010113          	addi	sp,sp,16
    80004fb4:	00008067          	ret

0000000080004fb8 <uartgetc>:
    80004fb8:	ff010113          	addi	sp,sp,-16
    80004fbc:	00813423          	sd	s0,8(sp)
    80004fc0:	01010413          	addi	s0,sp,16
    80004fc4:	10000737          	lui	a4,0x10000
    80004fc8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004fcc:	0017f793          	andi	a5,a5,1
    80004fd0:	00078c63          	beqz	a5,80004fe8 <uartgetc+0x30>
    80004fd4:	00074503          	lbu	a0,0(a4)
    80004fd8:	0ff57513          	andi	a0,a0,255
    80004fdc:	00813403          	ld	s0,8(sp)
    80004fe0:	01010113          	addi	sp,sp,16
    80004fe4:	00008067          	ret
    80004fe8:	fff00513          	li	a0,-1
    80004fec:	ff1ff06f          	j	80004fdc <uartgetc+0x24>

0000000080004ff0 <uartintr>:
    80004ff0:	100007b7          	lui	a5,0x10000
    80004ff4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004ff8:	0017f793          	andi	a5,a5,1
    80004ffc:	0a078463          	beqz	a5,800050a4 <uartintr+0xb4>
    80005000:	fe010113          	addi	sp,sp,-32
    80005004:	00813823          	sd	s0,16(sp)
    80005008:	00913423          	sd	s1,8(sp)
    8000500c:	00113c23          	sd	ra,24(sp)
    80005010:	02010413          	addi	s0,sp,32
    80005014:	100004b7          	lui	s1,0x10000
    80005018:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000501c:	0ff57513          	andi	a0,a0,255
    80005020:	fffff097          	auipc	ra,0xfffff
    80005024:	534080e7          	jalr	1332(ra) # 80004554 <consoleintr>
    80005028:	0054c783          	lbu	a5,5(s1)
    8000502c:	0017f793          	andi	a5,a5,1
    80005030:	fe0794e3          	bnez	a5,80005018 <uartintr+0x28>
    80005034:	00002617          	auipc	a2,0x2
    80005038:	0fc60613          	addi	a2,a2,252 # 80007130 <uart_tx_r>
    8000503c:	00002517          	auipc	a0,0x2
    80005040:	0fc50513          	addi	a0,a0,252 # 80007138 <uart_tx_w>
    80005044:	00063783          	ld	a5,0(a2)
    80005048:	00053703          	ld	a4,0(a0)
    8000504c:	04f70263          	beq	a4,a5,80005090 <uartintr+0xa0>
    80005050:	100005b7          	lui	a1,0x10000
    80005054:	00003817          	auipc	a6,0x3
    80005058:	37c80813          	addi	a6,a6,892 # 800083d0 <uart_tx_buf>
    8000505c:	01c0006f          	j	80005078 <uartintr+0x88>
    80005060:	0006c703          	lbu	a4,0(a3)
    80005064:	00f63023          	sd	a5,0(a2)
    80005068:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000506c:	00063783          	ld	a5,0(a2)
    80005070:	00053703          	ld	a4,0(a0)
    80005074:	00f70e63          	beq	a4,a5,80005090 <uartintr+0xa0>
    80005078:	01f7f713          	andi	a4,a5,31
    8000507c:	00e806b3          	add	a3,a6,a4
    80005080:	0055c703          	lbu	a4,5(a1)
    80005084:	00178793          	addi	a5,a5,1
    80005088:	02077713          	andi	a4,a4,32
    8000508c:	fc071ae3          	bnez	a4,80005060 <uartintr+0x70>
    80005090:	01813083          	ld	ra,24(sp)
    80005094:	01013403          	ld	s0,16(sp)
    80005098:	00813483          	ld	s1,8(sp)
    8000509c:	02010113          	addi	sp,sp,32
    800050a0:	00008067          	ret
    800050a4:	00002617          	auipc	a2,0x2
    800050a8:	08c60613          	addi	a2,a2,140 # 80007130 <uart_tx_r>
    800050ac:	00002517          	auipc	a0,0x2
    800050b0:	08c50513          	addi	a0,a0,140 # 80007138 <uart_tx_w>
    800050b4:	00063783          	ld	a5,0(a2)
    800050b8:	00053703          	ld	a4,0(a0)
    800050bc:	04f70263          	beq	a4,a5,80005100 <uartintr+0x110>
    800050c0:	100005b7          	lui	a1,0x10000
    800050c4:	00003817          	auipc	a6,0x3
    800050c8:	30c80813          	addi	a6,a6,780 # 800083d0 <uart_tx_buf>
    800050cc:	01c0006f          	j	800050e8 <uartintr+0xf8>
    800050d0:	0006c703          	lbu	a4,0(a3)
    800050d4:	00f63023          	sd	a5,0(a2)
    800050d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800050dc:	00063783          	ld	a5,0(a2)
    800050e0:	00053703          	ld	a4,0(a0)
    800050e4:	02f70063          	beq	a4,a5,80005104 <uartintr+0x114>
    800050e8:	01f7f713          	andi	a4,a5,31
    800050ec:	00e806b3          	add	a3,a6,a4
    800050f0:	0055c703          	lbu	a4,5(a1)
    800050f4:	00178793          	addi	a5,a5,1
    800050f8:	02077713          	andi	a4,a4,32
    800050fc:	fc071ae3          	bnez	a4,800050d0 <uartintr+0xe0>
    80005100:	00008067          	ret
    80005104:	00008067          	ret

0000000080005108 <kinit>:
    80005108:	fc010113          	addi	sp,sp,-64
    8000510c:	02913423          	sd	s1,40(sp)
    80005110:	fffff7b7          	lui	a5,0xfffff
    80005114:	00004497          	auipc	s1,0x4
    80005118:	2eb48493          	addi	s1,s1,747 # 800093ff <end+0xfff>
    8000511c:	02813823          	sd	s0,48(sp)
    80005120:	01313c23          	sd	s3,24(sp)
    80005124:	00f4f4b3          	and	s1,s1,a5
    80005128:	02113c23          	sd	ra,56(sp)
    8000512c:	03213023          	sd	s2,32(sp)
    80005130:	01413823          	sd	s4,16(sp)
    80005134:	01513423          	sd	s5,8(sp)
    80005138:	04010413          	addi	s0,sp,64
    8000513c:	000017b7          	lui	a5,0x1
    80005140:	01100993          	li	s3,17
    80005144:	00f487b3          	add	a5,s1,a5
    80005148:	01b99993          	slli	s3,s3,0x1b
    8000514c:	06f9e063          	bltu	s3,a5,800051ac <kinit+0xa4>
    80005150:	00003a97          	auipc	s5,0x3
    80005154:	2b0a8a93          	addi	s5,s5,688 # 80008400 <end>
    80005158:	0754ec63          	bltu	s1,s5,800051d0 <kinit+0xc8>
    8000515c:	0734fa63          	bgeu	s1,s3,800051d0 <kinit+0xc8>
    80005160:	00088a37          	lui	s4,0x88
    80005164:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005168:	00002917          	auipc	s2,0x2
    8000516c:	fd890913          	addi	s2,s2,-40 # 80007140 <kmem>
    80005170:	00ca1a13          	slli	s4,s4,0xc
    80005174:	0140006f          	j	80005188 <kinit+0x80>
    80005178:	000017b7          	lui	a5,0x1
    8000517c:	00f484b3          	add	s1,s1,a5
    80005180:	0554e863          	bltu	s1,s5,800051d0 <kinit+0xc8>
    80005184:	0534f663          	bgeu	s1,s3,800051d0 <kinit+0xc8>
    80005188:	00001637          	lui	a2,0x1
    8000518c:	00100593          	li	a1,1
    80005190:	00048513          	mv	a0,s1
    80005194:	00000097          	auipc	ra,0x0
    80005198:	5e4080e7          	jalr	1508(ra) # 80005778 <__memset>
    8000519c:	00093783          	ld	a5,0(s2)
    800051a0:	00f4b023          	sd	a5,0(s1)
    800051a4:	00993023          	sd	s1,0(s2)
    800051a8:	fd4498e3          	bne	s1,s4,80005178 <kinit+0x70>
    800051ac:	03813083          	ld	ra,56(sp)
    800051b0:	03013403          	ld	s0,48(sp)
    800051b4:	02813483          	ld	s1,40(sp)
    800051b8:	02013903          	ld	s2,32(sp)
    800051bc:	01813983          	ld	s3,24(sp)
    800051c0:	01013a03          	ld	s4,16(sp)
    800051c4:	00813a83          	ld	s5,8(sp)
    800051c8:	04010113          	addi	sp,sp,64
    800051cc:	00008067          	ret
    800051d0:	00001517          	auipc	a0,0x1
    800051d4:	46850513          	addi	a0,a0,1128 # 80006638 <digits+0x18>
    800051d8:	fffff097          	auipc	ra,0xfffff
    800051dc:	4b4080e7          	jalr	1204(ra) # 8000468c <panic>

00000000800051e0 <freerange>:
    800051e0:	fc010113          	addi	sp,sp,-64
    800051e4:	000017b7          	lui	a5,0x1
    800051e8:	02913423          	sd	s1,40(sp)
    800051ec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800051f0:	009504b3          	add	s1,a0,s1
    800051f4:	fffff537          	lui	a0,0xfffff
    800051f8:	02813823          	sd	s0,48(sp)
    800051fc:	02113c23          	sd	ra,56(sp)
    80005200:	03213023          	sd	s2,32(sp)
    80005204:	01313c23          	sd	s3,24(sp)
    80005208:	01413823          	sd	s4,16(sp)
    8000520c:	01513423          	sd	s5,8(sp)
    80005210:	01613023          	sd	s6,0(sp)
    80005214:	04010413          	addi	s0,sp,64
    80005218:	00a4f4b3          	and	s1,s1,a0
    8000521c:	00f487b3          	add	a5,s1,a5
    80005220:	06f5e463          	bltu	a1,a5,80005288 <freerange+0xa8>
    80005224:	00003a97          	auipc	s5,0x3
    80005228:	1dca8a93          	addi	s5,s5,476 # 80008400 <end>
    8000522c:	0954e263          	bltu	s1,s5,800052b0 <freerange+0xd0>
    80005230:	01100993          	li	s3,17
    80005234:	01b99993          	slli	s3,s3,0x1b
    80005238:	0734fc63          	bgeu	s1,s3,800052b0 <freerange+0xd0>
    8000523c:	00058a13          	mv	s4,a1
    80005240:	00002917          	auipc	s2,0x2
    80005244:	f0090913          	addi	s2,s2,-256 # 80007140 <kmem>
    80005248:	00002b37          	lui	s6,0x2
    8000524c:	0140006f          	j	80005260 <freerange+0x80>
    80005250:	000017b7          	lui	a5,0x1
    80005254:	00f484b3          	add	s1,s1,a5
    80005258:	0554ec63          	bltu	s1,s5,800052b0 <freerange+0xd0>
    8000525c:	0534fa63          	bgeu	s1,s3,800052b0 <freerange+0xd0>
    80005260:	00001637          	lui	a2,0x1
    80005264:	00100593          	li	a1,1
    80005268:	00048513          	mv	a0,s1
    8000526c:	00000097          	auipc	ra,0x0
    80005270:	50c080e7          	jalr	1292(ra) # 80005778 <__memset>
    80005274:	00093703          	ld	a4,0(s2)
    80005278:	016487b3          	add	a5,s1,s6
    8000527c:	00e4b023          	sd	a4,0(s1)
    80005280:	00993023          	sd	s1,0(s2)
    80005284:	fcfa76e3          	bgeu	s4,a5,80005250 <freerange+0x70>
    80005288:	03813083          	ld	ra,56(sp)
    8000528c:	03013403          	ld	s0,48(sp)
    80005290:	02813483          	ld	s1,40(sp)
    80005294:	02013903          	ld	s2,32(sp)
    80005298:	01813983          	ld	s3,24(sp)
    8000529c:	01013a03          	ld	s4,16(sp)
    800052a0:	00813a83          	ld	s5,8(sp)
    800052a4:	00013b03          	ld	s6,0(sp)
    800052a8:	04010113          	addi	sp,sp,64
    800052ac:	00008067          	ret
    800052b0:	00001517          	auipc	a0,0x1
    800052b4:	38850513          	addi	a0,a0,904 # 80006638 <digits+0x18>
    800052b8:	fffff097          	auipc	ra,0xfffff
    800052bc:	3d4080e7          	jalr	980(ra) # 8000468c <panic>

00000000800052c0 <kfree>:
    800052c0:	fe010113          	addi	sp,sp,-32
    800052c4:	00813823          	sd	s0,16(sp)
    800052c8:	00113c23          	sd	ra,24(sp)
    800052cc:	00913423          	sd	s1,8(sp)
    800052d0:	02010413          	addi	s0,sp,32
    800052d4:	03451793          	slli	a5,a0,0x34
    800052d8:	04079c63          	bnez	a5,80005330 <kfree+0x70>
    800052dc:	00003797          	auipc	a5,0x3
    800052e0:	12478793          	addi	a5,a5,292 # 80008400 <end>
    800052e4:	00050493          	mv	s1,a0
    800052e8:	04f56463          	bltu	a0,a5,80005330 <kfree+0x70>
    800052ec:	01100793          	li	a5,17
    800052f0:	01b79793          	slli	a5,a5,0x1b
    800052f4:	02f57e63          	bgeu	a0,a5,80005330 <kfree+0x70>
    800052f8:	00001637          	lui	a2,0x1
    800052fc:	00100593          	li	a1,1
    80005300:	00000097          	auipc	ra,0x0
    80005304:	478080e7          	jalr	1144(ra) # 80005778 <__memset>
    80005308:	00002797          	auipc	a5,0x2
    8000530c:	e3878793          	addi	a5,a5,-456 # 80007140 <kmem>
    80005310:	0007b703          	ld	a4,0(a5)
    80005314:	01813083          	ld	ra,24(sp)
    80005318:	01013403          	ld	s0,16(sp)
    8000531c:	00e4b023          	sd	a4,0(s1)
    80005320:	0097b023          	sd	s1,0(a5)
    80005324:	00813483          	ld	s1,8(sp)
    80005328:	02010113          	addi	sp,sp,32
    8000532c:	00008067          	ret
    80005330:	00001517          	auipc	a0,0x1
    80005334:	30850513          	addi	a0,a0,776 # 80006638 <digits+0x18>
    80005338:	fffff097          	auipc	ra,0xfffff
    8000533c:	354080e7          	jalr	852(ra) # 8000468c <panic>

0000000080005340 <kalloc>:
    80005340:	fe010113          	addi	sp,sp,-32
    80005344:	00813823          	sd	s0,16(sp)
    80005348:	00913423          	sd	s1,8(sp)
    8000534c:	00113c23          	sd	ra,24(sp)
    80005350:	02010413          	addi	s0,sp,32
    80005354:	00002797          	auipc	a5,0x2
    80005358:	dec78793          	addi	a5,a5,-532 # 80007140 <kmem>
    8000535c:	0007b483          	ld	s1,0(a5)
    80005360:	02048063          	beqz	s1,80005380 <kalloc+0x40>
    80005364:	0004b703          	ld	a4,0(s1)
    80005368:	00001637          	lui	a2,0x1
    8000536c:	00500593          	li	a1,5
    80005370:	00048513          	mv	a0,s1
    80005374:	00e7b023          	sd	a4,0(a5)
    80005378:	00000097          	auipc	ra,0x0
    8000537c:	400080e7          	jalr	1024(ra) # 80005778 <__memset>
    80005380:	01813083          	ld	ra,24(sp)
    80005384:	01013403          	ld	s0,16(sp)
    80005388:	00048513          	mv	a0,s1
    8000538c:	00813483          	ld	s1,8(sp)
    80005390:	02010113          	addi	sp,sp,32
    80005394:	00008067          	ret

0000000080005398 <initlock>:
    80005398:	ff010113          	addi	sp,sp,-16
    8000539c:	00813423          	sd	s0,8(sp)
    800053a0:	01010413          	addi	s0,sp,16
    800053a4:	00813403          	ld	s0,8(sp)
    800053a8:	00b53423          	sd	a1,8(a0)
    800053ac:	00052023          	sw	zero,0(a0)
    800053b0:	00053823          	sd	zero,16(a0)
    800053b4:	01010113          	addi	sp,sp,16
    800053b8:	00008067          	ret

00000000800053bc <acquire>:
    800053bc:	fe010113          	addi	sp,sp,-32
    800053c0:	00813823          	sd	s0,16(sp)
    800053c4:	00913423          	sd	s1,8(sp)
    800053c8:	00113c23          	sd	ra,24(sp)
    800053cc:	01213023          	sd	s2,0(sp)
    800053d0:	02010413          	addi	s0,sp,32
    800053d4:	00050493          	mv	s1,a0
    800053d8:	10002973          	csrr	s2,sstatus
    800053dc:	100027f3          	csrr	a5,sstatus
    800053e0:	ffd7f793          	andi	a5,a5,-3
    800053e4:	10079073          	csrw	sstatus,a5
    800053e8:	fffff097          	auipc	ra,0xfffff
    800053ec:	8e0080e7          	jalr	-1824(ra) # 80003cc8 <mycpu>
    800053f0:	07852783          	lw	a5,120(a0)
    800053f4:	06078e63          	beqz	a5,80005470 <acquire+0xb4>
    800053f8:	fffff097          	auipc	ra,0xfffff
    800053fc:	8d0080e7          	jalr	-1840(ra) # 80003cc8 <mycpu>
    80005400:	07852783          	lw	a5,120(a0)
    80005404:	0004a703          	lw	a4,0(s1)
    80005408:	0017879b          	addiw	a5,a5,1
    8000540c:	06f52c23          	sw	a5,120(a0)
    80005410:	04071063          	bnez	a4,80005450 <acquire+0x94>
    80005414:	00100713          	li	a4,1
    80005418:	00070793          	mv	a5,a4
    8000541c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005420:	0007879b          	sext.w	a5,a5
    80005424:	fe079ae3          	bnez	a5,80005418 <acquire+0x5c>
    80005428:	0ff0000f          	fence
    8000542c:	fffff097          	auipc	ra,0xfffff
    80005430:	89c080e7          	jalr	-1892(ra) # 80003cc8 <mycpu>
    80005434:	01813083          	ld	ra,24(sp)
    80005438:	01013403          	ld	s0,16(sp)
    8000543c:	00a4b823          	sd	a0,16(s1)
    80005440:	00013903          	ld	s2,0(sp)
    80005444:	00813483          	ld	s1,8(sp)
    80005448:	02010113          	addi	sp,sp,32
    8000544c:	00008067          	ret
    80005450:	0104b903          	ld	s2,16(s1)
    80005454:	fffff097          	auipc	ra,0xfffff
    80005458:	874080e7          	jalr	-1932(ra) # 80003cc8 <mycpu>
    8000545c:	faa91ce3          	bne	s2,a0,80005414 <acquire+0x58>
    80005460:	00001517          	auipc	a0,0x1
    80005464:	1e050513          	addi	a0,a0,480 # 80006640 <digits+0x20>
    80005468:	fffff097          	auipc	ra,0xfffff
    8000546c:	224080e7          	jalr	548(ra) # 8000468c <panic>
    80005470:	00195913          	srli	s2,s2,0x1
    80005474:	fffff097          	auipc	ra,0xfffff
    80005478:	854080e7          	jalr	-1964(ra) # 80003cc8 <mycpu>
    8000547c:	00197913          	andi	s2,s2,1
    80005480:	07252e23          	sw	s2,124(a0)
    80005484:	f75ff06f          	j	800053f8 <acquire+0x3c>

0000000080005488 <release>:
    80005488:	fe010113          	addi	sp,sp,-32
    8000548c:	00813823          	sd	s0,16(sp)
    80005490:	00113c23          	sd	ra,24(sp)
    80005494:	00913423          	sd	s1,8(sp)
    80005498:	01213023          	sd	s2,0(sp)
    8000549c:	02010413          	addi	s0,sp,32
    800054a0:	00052783          	lw	a5,0(a0)
    800054a4:	00079a63          	bnez	a5,800054b8 <release+0x30>
    800054a8:	00001517          	auipc	a0,0x1
    800054ac:	1a050513          	addi	a0,a0,416 # 80006648 <digits+0x28>
    800054b0:	fffff097          	auipc	ra,0xfffff
    800054b4:	1dc080e7          	jalr	476(ra) # 8000468c <panic>
    800054b8:	01053903          	ld	s2,16(a0)
    800054bc:	00050493          	mv	s1,a0
    800054c0:	fffff097          	auipc	ra,0xfffff
    800054c4:	808080e7          	jalr	-2040(ra) # 80003cc8 <mycpu>
    800054c8:	fea910e3          	bne	s2,a0,800054a8 <release+0x20>
    800054cc:	0004b823          	sd	zero,16(s1)
    800054d0:	0ff0000f          	fence
    800054d4:	0f50000f          	fence	iorw,ow
    800054d8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800054dc:	ffffe097          	auipc	ra,0xffffe
    800054e0:	7ec080e7          	jalr	2028(ra) # 80003cc8 <mycpu>
    800054e4:	100027f3          	csrr	a5,sstatus
    800054e8:	0027f793          	andi	a5,a5,2
    800054ec:	04079a63          	bnez	a5,80005540 <release+0xb8>
    800054f0:	07852783          	lw	a5,120(a0)
    800054f4:	02f05e63          	blez	a5,80005530 <release+0xa8>
    800054f8:	fff7871b          	addiw	a4,a5,-1
    800054fc:	06e52c23          	sw	a4,120(a0)
    80005500:	00071c63          	bnez	a4,80005518 <release+0x90>
    80005504:	07c52783          	lw	a5,124(a0)
    80005508:	00078863          	beqz	a5,80005518 <release+0x90>
    8000550c:	100027f3          	csrr	a5,sstatus
    80005510:	0027e793          	ori	a5,a5,2
    80005514:	10079073          	csrw	sstatus,a5
    80005518:	01813083          	ld	ra,24(sp)
    8000551c:	01013403          	ld	s0,16(sp)
    80005520:	00813483          	ld	s1,8(sp)
    80005524:	00013903          	ld	s2,0(sp)
    80005528:	02010113          	addi	sp,sp,32
    8000552c:	00008067          	ret
    80005530:	00001517          	auipc	a0,0x1
    80005534:	13850513          	addi	a0,a0,312 # 80006668 <digits+0x48>
    80005538:	fffff097          	auipc	ra,0xfffff
    8000553c:	154080e7          	jalr	340(ra) # 8000468c <panic>
    80005540:	00001517          	auipc	a0,0x1
    80005544:	11050513          	addi	a0,a0,272 # 80006650 <digits+0x30>
    80005548:	fffff097          	auipc	ra,0xfffff
    8000554c:	144080e7          	jalr	324(ra) # 8000468c <panic>

0000000080005550 <holding>:
    80005550:	00052783          	lw	a5,0(a0)
    80005554:	00079663          	bnez	a5,80005560 <holding+0x10>
    80005558:	00000513          	li	a0,0
    8000555c:	00008067          	ret
    80005560:	fe010113          	addi	sp,sp,-32
    80005564:	00813823          	sd	s0,16(sp)
    80005568:	00913423          	sd	s1,8(sp)
    8000556c:	00113c23          	sd	ra,24(sp)
    80005570:	02010413          	addi	s0,sp,32
    80005574:	01053483          	ld	s1,16(a0)
    80005578:	ffffe097          	auipc	ra,0xffffe
    8000557c:	750080e7          	jalr	1872(ra) # 80003cc8 <mycpu>
    80005580:	01813083          	ld	ra,24(sp)
    80005584:	01013403          	ld	s0,16(sp)
    80005588:	40a48533          	sub	a0,s1,a0
    8000558c:	00153513          	seqz	a0,a0
    80005590:	00813483          	ld	s1,8(sp)
    80005594:	02010113          	addi	sp,sp,32
    80005598:	00008067          	ret

000000008000559c <push_off>:
    8000559c:	fe010113          	addi	sp,sp,-32
    800055a0:	00813823          	sd	s0,16(sp)
    800055a4:	00113c23          	sd	ra,24(sp)
    800055a8:	00913423          	sd	s1,8(sp)
    800055ac:	02010413          	addi	s0,sp,32
    800055b0:	100024f3          	csrr	s1,sstatus
    800055b4:	100027f3          	csrr	a5,sstatus
    800055b8:	ffd7f793          	andi	a5,a5,-3
    800055bc:	10079073          	csrw	sstatus,a5
    800055c0:	ffffe097          	auipc	ra,0xffffe
    800055c4:	708080e7          	jalr	1800(ra) # 80003cc8 <mycpu>
    800055c8:	07852783          	lw	a5,120(a0)
    800055cc:	02078663          	beqz	a5,800055f8 <push_off+0x5c>
    800055d0:	ffffe097          	auipc	ra,0xffffe
    800055d4:	6f8080e7          	jalr	1784(ra) # 80003cc8 <mycpu>
    800055d8:	07852783          	lw	a5,120(a0)
    800055dc:	01813083          	ld	ra,24(sp)
    800055e0:	01013403          	ld	s0,16(sp)
    800055e4:	0017879b          	addiw	a5,a5,1
    800055e8:	06f52c23          	sw	a5,120(a0)
    800055ec:	00813483          	ld	s1,8(sp)
    800055f0:	02010113          	addi	sp,sp,32
    800055f4:	00008067          	ret
    800055f8:	0014d493          	srli	s1,s1,0x1
    800055fc:	ffffe097          	auipc	ra,0xffffe
    80005600:	6cc080e7          	jalr	1740(ra) # 80003cc8 <mycpu>
    80005604:	0014f493          	andi	s1,s1,1
    80005608:	06952e23          	sw	s1,124(a0)
    8000560c:	fc5ff06f          	j	800055d0 <push_off+0x34>

0000000080005610 <pop_off>:
    80005610:	ff010113          	addi	sp,sp,-16
    80005614:	00813023          	sd	s0,0(sp)
    80005618:	00113423          	sd	ra,8(sp)
    8000561c:	01010413          	addi	s0,sp,16
    80005620:	ffffe097          	auipc	ra,0xffffe
    80005624:	6a8080e7          	jalr	1704(ra) # 80003cc8 <mycpu>
    80005628:	100027f3          	csrr	a5,sstatus
    8000562c:	0027f793          	andi	a5,a5,2
    80005630:	04079663          	bnez	a5,8000567c <pop_off+0x6c>
    80005634:	07852783          	lw	a5,120(a0)
    80005638:	02f05a63          	blez	a5,8000566c <pop_off+0x5c>
    8000563c:	fff7871b          	addiw	a4,a5,-1
    80005640:	06e52c23          	sw	a4,120(a0)
    80005644:	00071c63          	bnez	a4,8000565c <pop_off+0x4c>
    80005648:	07c52783          	lw	a5,124(a0)
    8000564c:	00078863          	beqz	a5,8000565c <pop_off+0x4c>
    80005650:	100027f3          	csrr	a5,sstatus
    80005654:	0027e793          	ori	a5,a5,2
    80005658:	10079073          	csrw	sstatus,a5
    8000565c:	00813083          	ld	ra,8(sp)
    80005660:	00013403          	ld	s0,0(sp)
    80005664:	01010113          	addi	sp,sp,16
    80005668:	00008067          	ret
    8000566c:	00001517          	auipc	a0,0x1
    80005670:	ffc50513          	addi	a0,a0,-4 # 80006668 <digits+0x48>
    80005674:	fffff097          	auipc	ra,0xfffff
    80005678:	018080e7          	jalr	24(ra) # 8000468c <panic>
    8000567c:	00001517          	auipc	a0,0x1
    80005680:	fd450513          	addi	a0,a0,-44 # 80006650 <digits+0x30>
    80005684:	fffff097          	auipc	ra,0xfffff
    80005688:	008080e7          	jalr	8(ra) # 8000468c <panic>

000000008000568c <push_on>:
    8000568c:	fe010113          	addi	sp,sp,-32
    80005690:	00813823          	sd	s0,16(sp)
    80005694:	00113c23          	sd	ra,24(sp)
    80005698:	00913423          	sd	s1,8(sp)
    8000569c:	02010413          	addi	s0,sp,32
    800056a0:	100024f3          	csrr	s1,sstatus
    800056a4:	100027f3          	csrr	a5,sstatus
    800056a8:	0027e793          	ori	a5,a5,2
    800056ac:	10079073          	csrw	sstatus,a5
    800056b0:	ffffe097          	auipc	ra,0xffffe
    800056b4:	618080e7          	jalr	1560(ra) # 80003cc8 <mycpu>
    800056b8:	07852783          	lw	a5,120(a0)
    800056bc:	02078663          	beqz	a5,800056e8 <push_on+0x5c>
    800056c0:	ffffe097          	auipc	ra,0xffffe
    800056c4:	608080e7          	jalr	1544(ra) # 80003cc8 <mycpu>
    800056c8:	07852783          	lw	a5,120(a0)
    800056cc:	01813083          	ld	ra,24(sp)
    800056d0:	01013403          	ld	s0,16(sp)
    800056d4:	0017879b          	addiw	a5,a5,1
    800056d8:	06f52c23          	sw	a5,120(a0)
    800056dc:	00813483          	ld	s1,8(sp)
    800056e0:	02010113          	addi	sp,sp,32
    800056e4:	00008067          	ret
    800056e8:	0014d493          	srli	s1,s1,0x1
    800056ec:	ffffe097          	auipc	ra,0xffffe
    800056f0:	5dc080e7          	jalr	1500(ra) # 80003cc8 <mycpu>
    800056f4:	0014f493          	andi	s1,s1,1
    800056f8:	06952e23          	sw	s1,124(a0)
    800056fc:	fc5ff06f          	j	800056c0 <push_on+0x34>

0000000080005700 <pop_on>:
    80005700:	ff010113          	addi	sp,sp,-16
    80005704:	00813023          	sd	s0,0(sp)
    80005708:	00113423          	sd	ra,8(sp)
    8000570c:	01010413          	addi	s0,sp,16
    80005710:	ffffe097          	auipc	ra,0xffffe
    80005714:	5b8080e7          	jalr	1464(ra) # 80003cc8 <mycpu>
    80005718:	100027f3          	csrr	a5,sstatus
    8000571c:	0027f793          	andi	a5,a5,2
    80005720:	04078463          	beqz	a5,80005768 <pop_on+0x68>
    80005724:	07852783          	lw	a5,120(a0)
    80005728:	02f05863          	blez	a5,80005758 <pop_on+0x58>
    8000572c:	fff7879b          	addiw	a5,a5,-1
    80005730:	06f52c23          	sw	a5,120(a0)
    80005734:	07853783          	ld	a5,120(a0)
    80005738:	00079863          	bnez	a5,80005748 <pop_on+0x48>
    8000573c:	100027f3          	csrr	a5,sstatus
    80005740:	ffd7f793          	andi	a5,a5,-3
    80005744:	10079073          	csrw	sstatus,a5
    80005748:	00813083          	ld	ra,8(sp)
    8000574c:	00013403          	ld	s0,0(sp)
    80005750:	01010113          	addi	sp,sp,16
    80005754:	00008067          	ret
    80005758:	00001517          	auipc	a0,0x1
    8000575c:	f3850513          	addi	a0,a0,-200 # 80006690 <digits+0x70>
    80005760:	fffff097          	auipc	ra,0xfffff
    80005764:	f2c080e7          	jalr	-212(ra) # 8000468c <panic>
    80005768:	00001517          	auipc	a0,0x1
    8000576c:	f0850513          	addi	a0,a0,-248 # 80006670 <digits+0x50>
    80005770:	fffff097          	auipc	ra,0xfffff
    80005774:	f1c080e7          	jalr	-228(ra) # 8000468c <panic>

0000000080005778 <__memset>:
    80005778:	ff010113          	addi	sp,sp,-16
    8000577c:	00813423          	sd	s0,8(sp)
    80005780:	01010413          	addi	s0,sp,16
    80005784:	1a060e63          	beqz	a2,80005940 <__memset+0x1c8>
    80005788:	40a007b3          	neg	a5,a0
    8000578c:	0077f793          	andi	a5,a5,7
    80005790:	00778693          	addi	a3,a5,7
    80005794:	00b00813          	li	a6,11
    80005798:	0ff5f593          	andi	a1,a1,255
    8000579c:	fff6071b          	addiw	a4,a2,-1
    800057a0:	1b06e663          	bltu	a3,a6,8000594c <__memset+0x1d4>
    800057a4:	1cd76463          	bltu	a4,a3,8000596c <__memset+0x1f4>
    800057a8:	1a078e63          	beqz	a5,80005964 <__memset+0x1ec>
    800057ac:	00b50023          	sb	a1,0(a0)
    800057b0:	00100713          	li	a4,1
    800057b4:	1ae78463          	beq	a5,a4,8000595c <__memset+0x1e4>
    800057b8:	00b500a3          	sb	a1,1(a0)
    800057bc:	00200713          	li	a4,2
    800057c0:	1ae78a63          	beq	a5,a4,80005974 <__memset+0x1fc>
    800057c4:	00b50123          	sb	a1,2(a0)
    800057c8:	00300713          	li	a4,3
    800057cc:	18e78463          	beq	a5,a4,80005954 <__memset+0x1dc>
    800057d0:	00b501a3          	sb	a1,3(a0)
    800057d4:	00400713          	li	a4,4
    800057d8:	1ae78263          	beq	a5,a4,8000597c <__memset+0x204>
    800057dc:	00b50223          	sb	a1,4(a0)
    800057e0:	00500713          	li	a4,5
    800057e4:	1ae78063          	beq	a5,a4,80005984 <__memset+0x20c>
    800057e8:	00b502a3          	sb	a1,5(a0)
    800057ec:	00700713          	li	a4,7
    800057f0:	18e79e63          	bne	a5,a4,8000598c <__memset+0x214>
    800057f4:	00b50323          	sb	a1,6(a0)
    800057f8:	00700e93          	li	t4,7
    800057fc:	00859713          	slli	a4,a1,0x8
    80005800:	00e5e733          	or	a4,a1,a4
    80005804:	01059e13          	slli	t3,a1,0x10
    80005808:	01c76e33          	or	t3,a4,t3
    8000580c:	01859313          	slli	t1,a1,0x18
    80005810:	006e6333          	or	t1,t3,t1
    80005814:	02059893          	slli	a7,a1,0x20
    80005818:	40f60e3b          	subw	t3,a2,a5
    8000581c:	011368b3          	or	a7,t1,a7
    80005820:	02859813          	slli	a6,a1,0x28
    80005824:	0108e833          	or	a6,a7,a6
    80005828:	03059693          	slli	a3,a1,0x30
    8000582c:	003e589b          	srliw	a7,t3,0x3
    80005830:	00d866b3          	or	a3,a6,a3
    80005834:	03859713          	slli	a4,a1,0x38
    80005838:	00389813          	slli	a6,a7,0x3
    8000583c:	00f507b3          	add	a5,a0,a5
    80005840:	00e6e733          	or	a4,a3,a4
    80005844:	000e089b          	sext.w	a7,t3
    80005848:	00f806b3          	add	a3,a6,a5
    8000584c:	00e7b023          	sd	a4,0(a5)
    80005850:	00878793          	addi	a5,a5,8
    80005854:	fed79ce3          	bne	a5,a3,8000584c <__memset+0xd4>
    80005858:	ff8e7793          	andi	a5,t3,-8
    8000585c:	0007871b          	sext.w	a4,a5
    80005860:	01d787bb          	addw	a5,a5,t4
    80005864:	0ce88e63          	beq	a7,a4,80005940 <__memset+0x1c8>
    80005868:	00f50733          	add	a4,a0,a5
    8000586c:	00b70023          	sb	a1,0(a4)
    80005870:	0017871b          	addiw	a4,a5,1
    80005874:	0cc77663          	bgeu	a4,a2,80005940 <__memset+0x1c8>
    80005878:	00e50733          	add	a4,a0,a4
    8000587c:	00b70023          	sb	a1,0(a4)
    80005880:	0027871b          	addiw	a4,a5,2
    80005884:	0ac77e63          	bgeu	a4,a2,80005940 <__memset+0x1c8>
    80005888:	00e50733          	add	a4,a0,a4
    8000588c:	00b70023          	sb	a1,0(a4)
    80005890:	0037871b          	addiw	a4,a5,3
    80005894:	0ac77663          	bgeu	a4,a2,80005940 <__memset+0x1c8>
    80005898:	00e50733          	add	a4,a0,a4
    8000589c:	00b70023          	sb	a1,0(a4)
    800058a0:	0047871b          	addiw	a4,a5,4
    800058a4:	08c77e63          	bgeu	a4,a2,80005940 <__memset+0x1c8>
    800058a8:	00e50733          	add	a4,a0,a4
    800058ac:	00b70023          	sb	a1,0(a4)
    800058b0:	0057871b          	addiw	a4,a5,5
    800058b4:	08c77663          	bgeu	a4,a2,80005940 <__memset+0x1c8>
    800058b8:	00e50733          	add	a4,a0,a4
    800058bc:	00b70023          	sb	a1,0(a4)
    800058c0:	0067871b          	addiw	a4,a5,6
    800058c4:	06c77e63          	bgeu	a4,a2,80005940 <__memset+0x1c8>
    800058c8:	00e50733          	add	a4,a0,a4
    800058cc:	00b70023          	sb	a1,0(a4)
    800058d0:	0077871b          	addiw	a4,a5,7
    800058d4:	06c77663          	bgeu	a4,a2,80005940 <__memset+0x1c8>
    800058d8:	00e50733          	add	a4,a0,a4
    800058dc:	00b70023          	sb	a1,0(a4)
    800058e0:	0087871b          	addiw	a4,a5,8
    800058e4:	04c77e63          	bgeu	a4,a2,80005940 <__memset+0x1c8>
    800058e8:	00e50733          	add	a4,a0,a4
    800058ec:	00b70023          	sb	a1,0(a4)
    800058f0:	0097871b          	addiw	a4,a5,9
    800058f4:	04c77663          	bgeu	a4,a2,80005940 <__memset+0x1c8>
    800058f8:	00e50733          	add	a4,a0,a4
    800058fc:	00b70023          	sb	a1,0(a4)
    80005900:	00a7871b          	addiw	a4,a5,10
    80005904:	02c77e63          	bgeu	a4,a2,80005940 <__memset+0x1c8>
    80005908:	00e50733          	add	a4,a0,a4
    8000590c:	00b70023          	sb	a1,0(a4)
    80005910:	00b7871b          	addiw	a4,a5,11
    80005914:	02c77663          	bgeu	a4,a2,80005940 <__memset+0x1c8>
    80005918:	00e50733          	add	a4,a0,a4
    8000591c:	00b70023          	sb	a1,0(a4)
    80005920:	00c7871b          	addiw	a4,a5,12
    80005924:	00c77e63          	bgeu	a4,a2,80005940 <__memset+0x1c8>
    80005928:	00e50733          	add	a4,a0,a4
    8000592c:	00b70023          	sb	a1,0(a4)
    80005930:	00d7879b          	addiw	a5,a5,13
    80005934:	00c7f663          	bgeu	a5,a2,80005940 <__memset+0x1c8>
    80005938:	00f507b3          	add	a5,a0,a5
    8000593c:	00b78023          	sb	a1,0(a5)
    80005940:	00813403          	ld	s0,8(sp)
    80005944:	01010113          	addi	sp,sp,16
    80005948:	00008067          	ret
    8000594c:	00b00693          	li	a3,11
    80005950:	e55ff06f          	j	800057a4 <__memset+0x2c>
    80005954:	00300e93          	li	t4,3
    80005958:	ea5ff06f          	j	800057fc <__memset+0x84>
    8000595c:	00100e93          	li	t4,1
    80005960:	e9dff06f          	j	800057fc <__memset+0x84>
    80005964:	00000e93          	li	t4,0
    80005968:	e95ff06f          	j	800057fc <__memset+0x84>
    8000596c:	00000793          	li	a5,0
    80005970:	ef9ff06f          	j	80005868 <__memset+0xf0>
    80005974:	00200e93          	li	t4,2
    80005978:	e85ff06f          	j	800057fc <__memset+0x84>
    8000597c:	00400e93          	li	t4,4
    80005980:	e7dff06f          	j	800057fc <__memset+0x84>
    80005984:	00500e93          	li	t4,5
    80005988:	e75ff06f          	j	800057fc <__memset+0x84>
    8000598c:	00600e93          	li	t4,6
    80005990:	e6dff06f          	j	800057fc <__memset+0x84>

0000000080005994 <__memmove>:
    80005994:	ff010113          	addi	sp,sp,-16
    80005998:	00813423          	sd	s0,8(sp)
    8000599c:	01010413          	addi	s0,sp,16
    800059a0:	0e060863          	beqz	a2,80005a90 <__memmove+0xfc>
    800059a4:	fff6069b          	addiw	a3,a2,-1
    800059a8:	0006881b          	sext.w	a6,a3
    800059ac:	0ea5e863          	bltu	a1,a0,80005a9c <__memmove+0x108>
    800059b0:	00758713          	addi	a4,a1,7
    800059b4:	00a5e7b3          	or	a5,a1,a0
    800059b8:	40a70733          	sub	a4,a4,a0
    800059bc:	0077f793          	andi	a5,a5,7
    800059c0:	00f73713          	sltiu	a4,a4,15
    800059c4:	00174713          	xori	a4,a4,1
    800059c8:	0017b793          	seqz	a5,a5
    800059cc:	00e7f7b3          	and	a5,a5,a4
    800059d0:	10078863          	beqz	a5,80005ae0 <__memmove+0x14c>
    800059d4:	00900793          	li	a5,9
    800059d8:	1107f463          	bgeu	a5,a6,80005ae0 <__memmove+0x14c>
    800059dc:	0036581b          	srliw	a6,a2,0x3
    800059e0:	fff8081b          	addiw	a6,a6,-1
    800059e4:	02081813          	slli	a6,a6,0x20
    800059e8:	01d85893          	srli	a7,a6,0x1d
    800059ec:	00858813          	addi	a6,a1,8
    800059f0:	00058793          	mv	a5,a1
    800059f4:	00050713          	mv	a4,a0
    800059f8:	01088833          	add	a6,a7,a6
    800059fc:	0007b883          	ld	a7,0(a5)
    80005a00:	00878793          	addi	a5,a5,8
    80005a04:	00870713          	addi	a4,a4,8
    80005a08:	ff173c23          	sd	a7,-8(a4)
    80005a0c:	ff0798e3          	bne	a5,a6,800059fc <__memmove+0x68>
    80005a10:	ff867713          	andi	a4,a2,-8
    80005a14:	02071793          	slli	a5,a4,0x20
    80005a18:	0207d793          	srli	a5,a5,0x20
    80005a1c:	00f585b3          	add	a1,a1,a5
    80005a20:	40e686bb          	subw	a3,a3,a4
    80005a24:	00f507b3          	add	a5,a0,a5
    80005a28:	06e60463          	beq	a2,a4,80005a90 <__memmove+0xfc>
    80005a2c:	0005c703          	lbu	a4,0(a1)
    80005a30:	00e78023          	sb	a4,0(a5)
    80005a34:	04068e63          	beqz	a3,80005a90 <__memmove+0xfc>
    80005a38:	0015c603          	lbu	a2,1(a1)
    80005a3c:	00100713          	li	a4,1
    80005a40:	00c780a3          	sb	a2,1(a5)
    80005a44:	04e68663          	beq	a3,a4,80005a90 <__memmove+0xfc>
    80005a48:	0025c603          	lbu	a2,2(a1)
    80005a4c:	00200713          	li	a4,2
    80005a50:	00c78123          	sb	a2,2(a5)
    80005a54:	02e68e63          	beq	a3,a4,80005a90 <__memmove+0xfc>
    80005a58:	0035c603          	lbu	a2,3(a1)
    80005a5c:	00300713          	li	a4,3
    80005a60:	00c781a3          	sb	a2,3(a5)
    80005a64:	02e68663          	beq	a3,a4,80005a90 <__memmove+0xfc>
    80005a68:	0045c603          	lbu	a2,4(a1)
    80005a6c:	00400713          	li	a4,4
    80005a70:	00c78223          	sb	a2,4(a5)
    80005a74:	00e68e63          	beq	a3,a4,80005a90 <__memmove+0xfc>
    80005a78:	0055c603          	lbu	a2,5(a1)
    80005a7c:	00500713          	li	a4,5
    80005a80:	00c782a3          	sb	a2,5(a5)
    80005a84:	00e68663          	beq	a3,a4,80005a90 <__memmove+0xfc>
    80005a88:	0065c703          	lbu	a4,6(a1)
    80005a8c:	00e78323          	sb	a4,6(a5)
    80005a90:	00813403          	ld	s0,8(sp)
    80005a94:	01010113          	addi	sp,sp,16
    80005a98:	00008067          	ret
    80005a9c:	02061713          	slli	a4,a2,0x20
    80005aa0:	02075713          	srli	a4,a4,0x20
    80005aa4:	00e587b3          	add	a5,a1,a4
    80005aa8:	f0f574e3          	bgeu	a0,a5,800059b0 <__memmove+0x1c>
    80005aac:	02069613          	slli	a2,a3,0x20
    80005ab0:	02065613          	srli	a2,a2,0x20
    80005ab4:	fff64613          	not	a2,a2
    80005ab8:	00e50733          	add	a4,a0,a4
    80005abc:	00c78633          	add	a2,a5,a2
    80005ac0:	fff7c683          	lbu	a3,-1(a5)
    80005ac4:	fff78793          	addi	a5,a5,-1
    80005ac8:	fff70713          	addi	a4,a4,-1
    80005acc:	00d70023          	sb	a3,0(a4)
    80005ad0:	fec798e3          	bne	a5,a2,80005ac0 <__memmove+0x12c>
    80005ad4:	00813403          	ld	s0,8(sp)
    80005ad8:	01010113          	addi	sp,sp,16
    80005adc:	00008067          	ret
    80005ae0:	02069713          	slli	a4,a3,0x20
    80005ae4:	02075713          	srli	a4,a4,0x20
    80005ae8:	00170713          	addi	a4,a4,1
    80005aec:	00e50733          	add	a4,a0,a4
    80005af0:	00050793          	mv	a5,a0
    80005af4:	0005c683          	lbu	a3,0(a1)
    80005af8:	00178793          	addi	a5,a5,1
    80005afc:	00158593          	addi	a1,a1,1
    80005b00:	fed78fa3          	sb	a3,-1(a5)
    80005b04:	fee798e3          	bne	a5,a4,80005af4 <__memmove+0x160>
    80005b08:	f89ff06f          	j	80005a90 <__memmove+0xfc>

0000000080005b0c <__mem_free>:
    80005b0c:	ff010113          	addi	sp,sp,-16
    80005b10:	00813423          	sd	s0,8(sp)
    80005b14:	01010413          	addi	s0,sp,16
    80005b18:	00001597          	auipc	a1,0x1
    80005b1c:	63058593          	addi	a1,a1,1584 # 80007148 <freep>
    80005b20:	0005b783          	ld	a5,0(a1)
    80005b24:	ff050693          	addi	a3,a0,-16
    80005b28:	0007b703          	ld	a4,0(a5)
    80005b2c:	00d7fc63          	bgeu	a5,a3,80005b44 <__mem_free+0x38>
    80005b30:	00e6ee63          	bltu	a3,a4,80005b4c <__mem_free+0x40>
    80005b34:	00e7fc63          	bgeu	a5,a4,80005b4c <__mem_free+0x40>
    80005b38:	00070793          	mv	a5,a4
    80005b3c:	0007b703          	ld	a4,0(a5)
    80005b40:	fed7e8e3          	bltu	a5,a3,80005b30 <__mem_free+0x24>
    80005b44:	fee7eae3          	bltu	a5,a4,80005b38 <__mem_free+0x2c>
    80005b48:	fee6f8e3          	bgeu	a3,a4,80005b38 <__mem_free+0x2c>
    80005b4c:	ff852803          	lw	a6,-8(a0)
    80005b50:	02081613          	slli	a2,a6,0x20
    80005b54:	01c65613          	srli	a2,a2,0x1c
    80005b58:	00c68633          	add	a2,a3,a2
    80005b5c:	02c70a63          	beq	a4,a2,80005b90 <__mem_free+0x84>
    80005b60:	fee53823          	sd	a4,-16(a0)
    80005b64:	0087a503          	lw	a0,8(a5)
    80005b68:	02051613          	slli	a2,a0,0x20
    80005b6c:	01c65613          	srli	a2,a2,0x1c
    80005b70:	00c78633          	add	a2,a5,a2
    80005b74:	04c68263          	beq	a3,a2,80005bb8 <__mem_free+0xac>
    80005b78:	00813403          	ld	s0,8(sp)
    80005b7c:	00d7b023          	sd	a3,0(a5)
    80005b80:	00f5b023          	sd	a5,0(a1)
    80005b84:	00000513          	li	a0,0
    80005b88:	01010113          	addi	sp,sp,16
    80005b8c:	00008067          	ret
    80005b90:	00872603          	lw	a2,8(a4)
    80005b94:	00073703          	ld	a4,0(a4)
    80005b98:	0106083b          	addw	a6,a2,a6
    80005b9c:	ff052c23          	sw	a6,-8(a0)
    80005ba0:	fee53823          	sd	a4,-16(a0)
    80005ba4:	0087a503          	lw	a0,8(a5)
    80005ba8:	02051613          	slli	a2,a0,0x20
    80005bac:	01c65613          	srli	a2,a2,0x1c
    80005bb0:	00c78633          	add	a2,a5,a2
    80005bb4:	fcc692e3          	bne	a3,a2,80005b78 <__mem_free+0x6c>
    80005bb8:	00813403          	ld	s0,8(sp)
    80005bbc:	0105053b          	addw	a0,a0,a6
    80005bc0:	00a7a423          	sw	a0,8(a5)
    80005bc4:	00e7b023          	sd	a4,0(a5)
    80005bc8:	00f5b023          	sd	a5,0(a1)
    80005bcc:	00000513          	li	a0,0
    80005bd0:	01010113          	addi	sp,sp,16
    80005bd4:	00008067          	ret

0000000080005bd8 <__mem_alloc>:
    80005bd8:	fc010113          	addi	sp,sp,-64
    80005bdc:	02813823          	sd	s0,48(sp)
    80005be0:	02913423          	sd	s1,40(sp)
    80005be4:	03213023          	sd	s2,32(sp)
    80005be8:	01513423          	sd	s5,8(sp)
    80005bec:	02113c23          	sd	ra,56(sp)
    80005bf0:	01313c23          	sd	s3,24(sp)
    80005bf4:	01413823          	sd	s4,16(sp)
    80005bf8:	01613023          	sd	s6,0(sp)
    80005bfc:	04010413          	addi	s0,sp,64
    80005c00:	00001a97          	auipc	s5,0x1
    80005c04:	548a8a93          	addi	s5,s5,1352 # 80007148 <freep>
    80005c08:	00f50913          	addi	s2,a0,15
    80005c0c:	000ab683          	ld	a3,0(s5)
    80005c10:	00495913          	srli	s2,s2,0x4
    80005c14:	0019049b          	addiw	s1,s2,1
    80005c18:	00048913          	mv	s2,s1
    80005c1c:	0c068c63          	beqz	a3,80005cf4 <__mem_alloc+0x11c>
    80005c20:	0006b503          	ld	a0,0(a3)
    80005c24:	00852703          	lw	a4,8(a0)
    80005c28:	10977063          	bgeu	a4,s1,80005d28 <__mem_alloc+0x150>
    80005c2c:	000017b7          	lui	a5,0x1
    80005c30:	0009099b          	sext.w	s3,s2
    80005c34:	0af4e863          	bltu	s1,a5,80005ce4 <__mem_alloc+0x10c>
    80005c38:	02099a13          	slli	s4,s3,0x20
    80005c3c:	01ca5a13          	srli	s4,s4,0x1c
    80005c40:	fff00b13          	li	s6,-1
    80005c44:	0100006f          	j	80005c54 <__mem_alloc+0x7c>
    80005c48:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80005c4c:	00852703          	lw	a4,8(a0)
    80005c50:	04977463          	bgeu	a4,s1,80005c98 <__mem_alloc+0xc0>
    80005c54:	00050793          	mv	a5,a0
    80005c58:	fea698e3          	bne	a3,a0,80005c48 <__mem_alloc+0x70>
    80005c5c:	000a0513          	mv	a0,s4
    80005c60:	00000097          	auipc	ra,0x0
    80005c64:	1f0080e7          	jalr	496(ra) # 80005e50 <kvmincrease>
    80005c68:	00050793          	mv	a5,a0
    80005c6c:	01050513          	addi	a0,a0,16
    80005c70:	07678e63          	beq	a5,s6,80005cec <__mem_alloc+0x114>
    80005c74:	0137a423          	sw	s3,8(a5)
    80005c78:	00000097          	auipc	ra,0x0
    80005c7c:	e94080e7          	jalr	-364(ra) # 80005b0c <__mem_free>
    80005c80:	000ab783          	ld	a5,0(s5)
    80005c84:	06078463          	beqz	a5,80005cec <__mem_alloc+0x114>
    80005c88:	0007b503          	ld	a0,0(a5)
    80005c8c:	00078693          	mv	a3,a5
    80005c90:	00852703          	lw	a4,8(a0)
    80005c94:	fc9760e3          	bltu	a4,s1,80005c54 <__mem_alloc+0x7c>
    80005c98:	08e48263          	beq	s1,a4,80005d1c <__mem_alloc+0x144>
    80005c9c:	4127073b          	subw	a4,a4,s2
    80005ca0:	02071693          	slli	a3,a4,0x20
    80005ca4:	01c6d693          	srli	a3,a3,0x1c
    80005ca8:	00e52423          	sw	a4,8(a0)
    80005cac:	00d50533          	add	a0,a0,a3
    80005cb0:	01252423          	sw	s2,8(a0)
    80005cb4:	00fab023          	sd	a5,0(s5)
    80005cb8:	01050513          	addi	a0,a0,16
    80005cbc:	03813083          	ld	ra,56(sp)
    80005cc0:	03013403          	ld	s0,48(sp)
    80005cc4:	02813483          	ld	s1,40(sp)
    80005cc8:	02013903          	ld	s2,32(sp)
    80005ccc:	01813983          	ld	s3,24(sp)
    80005cd0:	01013a03          	ld	s4,16(sp)
    80005cd4:	00813a83          	ld	s5,8(sp)
    80005cd8:	00013b03          	ld	s6,0(sp)
    80005cdc:	04010113          	addi	sp,sp,64
    80005ce0:	00008067          	ret
    80005ce4:	000019b7          	lui	s3,0x1
    80005ce8:	f51ff06f          	j	80005c38 <__mem_alloc+0x60>
    80005cec:	00000513          	li	a0,0
    80005cf0:	fcdff06f          	j	80005cbc <__mem_alloc+0xe4>
    80005cf4:	00002797          	auipc	a5,0x2
    80005cf8:	6fc78793          	addi	a5,a5,1788 # 800083f0 <base>
    80005cfc:	00078513          	mv	a0,a5
    80005d00:	00fab023          	sd	a5,0(s5)
    80005d04:	00f7b023          	sd	a5,0(a5)
    80005d08:	00000713          	li	a4,0
    80005d0c:	00002797          	auipc	a5,0x2
    80005d10:	6e07a623          	sw	zero,1772(a5) # 800083f8 <base+0x8>
    80005d14:	00050693          	mv	a3,a0
    80005d18:	f11ff06f          	j	80005c28 <__mem_alloc+0x50>
    80005d1c:	00053703          	ld	a4,0(a0)
    80005d20:	00e7b023          	sd	a4,0(a5)
    80005d24:	f91ff06f          	j	80005cb4 <__mem_alloc+0xdc>
    80005d28:	00068793          	mv	a5,a3
    80005d2c:	f6dff06f          	j	80005c98 <__mem_alloc+0xc0>

0000000080005d30 <__putc>:
    80005d30:	fe010113          	addi	sp,sp,-32
    80005d34:	00813823          	sd	s0,16(sp)
    80005d38:	00113c23          	sd	ra,24(sp)
    80005d3c:	02010413          	addi	s0,sp,32
    80005d40:	00050793          	mv	a5,a0
    80005d44:	fef40593          	addi	a1,s0,-17
    80005d48:	00100613          	li	a2,1
    80005d4c:	00000513          	li	a0,0
    80005d50:	fef407a3          	sb	a5,-17(s0)
    80005d54:	fffff097          	auipc	ra,0xfffff
    80005d58:	918080e7          	jalr	-1768(ra) # 8000466c <console_write>
    80005d5c:	01813083          	ld	ra,24(sp)
    80005d60:	01013403          	ld	s0,16(sp)
    80005d64:	02010113          	addi	sp,sp,32
    80005d68:	00008067          	ret

0000000080005d6c <__getc>:
    80005d6c:	fe010113          	addi	sp,sp,-32
    80005d70:	00813823          	sd	s0,16(sp)
    80005d74:	00113c23          	sd	ra,24(sp)
    80005d78:	02010413          	addi	s0,sp,32
    80005d7c:	fe840593          	addi	a1,s0,-24
    80005d80:	00100613          	li	a2,1
    80005d84:	00000513          	li	a0,0
    80005d88:	fffff097          	auipc	ra,0xfffff
    80005d8c:	8c4080e7          	jalr	-1852(ra) # 8000464c <console_read>
    80005d90:	fe844503          	lbu	a0,-24(s0)
    80005d94:	01813083          	ld	ra,24(sp)
    80005d98:	01013403          	ld	s0,16(sp)
    80005d9c:	02010113          	addi	sp,sp,32
    80005da0:	00008067          	ret

0000000080005da4 <console_handler>:
    80005da4:	fe010113          	addi	sp,sp,-32
    80005da8:	00813823          	sd	s0,16(sp)
    80005dac:	00113c23          	sd	ra,24(sp)
    80005db0:	00913423          	sd	s1,8(sp)
    80005db4:	02010413          	addi	s0,sp,32
    80005db8:	14202773          	csrr	a4,scause
    80005dbc:	100027f3          	csrr	a5,sstatus
    80005dc0:	0027f793          	andi	a5,a5,2
    80005dc4:	06079e63          	bnez	a5,80005e40 <console_handler+0x9c>
    80005dc8:	00074c63          	bltz	a4,80005de0 <console_handler+0x3c>
    80005dcc:	01813083          	ld	ra,24(sp)
    80005dd0:	01013403          	ld	s0,16(sp)
    80005dd4:	00813483          	ld	s1,8(sp)
    80005dd8:	02010113          	addi	sp,sp,32
    80005ddc:	00008067          	ret
    80005de0:	0ff77713          	andi	a4,a4,255
    80005de4:	00900793          	li	a5,9
    80005de8:	fef712e3          	bne	a4,a5,80005dcc <console_handler+0x28>
    80005dec:	ffffe097          	auipc	ra,0xffffe
    80005df0:	4b8080e7          	jalr	1208(ra) # 800042a4 <plic_claim>
    80005df4:	00a00793          	li	a5,10
    80005df8:	00050493          	mv	s1,a0
    80005dfc:	02f50c63          	beq	a0,a5,80005e34 <console_handler+0x90>
    80005e00:	fc0506e3          	beqz	a0,80005dcc <console_handler+0x28>
    80005e04:	00050593          	mv	a1,a0
    80005e08:	00000517          	auipc	a0,0x0
    80005e0c:	79050513          	addi	a0,a0,1936 # 80006598 <_ZZ12printIntegermE6digits+0xe0>
    80005e10:	fffff097          	auipc	ra,0xfffff
    80005e14:	8d8080e7          	jalr	-1832(ra) # 800046e8 <__printf>
    80005e18:	01013403          	ld	s0,16(sp)
    80005e1c:	01813083          	ld	ra,24(sp)
    80005e20:	00048513          	mv	a0,s1
    80005e24:	00813483          	ld	s1,8(sp)
    80005e28:	02010113          	addi	sp,sp,32
    80005e2c:	ffffe317          	auipc	t1,0xffffe
    80005e30:	4b030067          	jr	1200(t1) # 800042dc <plic_complete>
    80005e34:	fffff097          	auipc	ra,0xfffff
    80005e38:	1bc080e7          	jalr	444(ra) # 80004ff0 <uartintr>
    80005e3c:	fddff06f          	j	80005e18 <console_handler+0x74>
    80005e40:	00001517          	auipc	a0,0x1
    80005e44:	85850513          	addi	a0,a0,-1960 # 80006698 <digits+0x78>
    80005e48:	fffff097          	auipc	ra,0xfffff
    80005e4c:	844080e7          	jalr	-1980(ra) # 8000468c <panic>

0000000080005e50 <kvmincrease>:
    80005e50:	fe010113          	addi	sp,sp,-32
    80005e54:	01213023          	sd	s2,0(sp)
    80005e58:	00001937          	lui	s2,0x1
    80005e5c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80005e60:	00813823          	sd	s0,16(sp)
    80005e64:	00113c23          	sd	ra,24(sp)
    80005e68:	00913423          	sd	s1,8(sp)
    80005e6c:	02010413          	addi	s0,sp,32
    80005e70:	01250933          	add	s2,a0,s2
    80005e74:	00c95913          	srli	s2,s2,0xc
    80005e78:	02090863          	beqz	s2,80005ea8 <kvmincrease+0x58>
    80005e7c:	00000493          	li	s1,0
    80005e80:	00148493          	addi	s1,s1,1
    80005e84:	fffff097          	auipc	ra,0xfffff
    80005e88:	4bc080e7          	jalr	1212(ra) # 80005340 <kalloc>
    80005e8c:	fe991ae3          	bne	s2,s1,80005e80 <kvmincrease+0x30>
    80005e90:	01813083          	ld	ra,24(sp)
    80005e94:	01013403          	ld	s0,16(sp)
    80005e98:	00813483          	ld	s1,8(sp)
    80005e9c:	00013903          	ld	s2,0(sp)
    80005ea0:	02010113          	addi	sp,sp,32
    80005ea4:	00008067          	ret
    80005ea8:	01813083          	ld	ra,24(sp)
    80005eac:	01013403          	ld	s0,16(sp)
    80005eb0:	00813483          	ld	s1,8(sp)
    80005eb4:	00013903          	ld	s2,0(sp)
    80005eb8:	00000513          	li	a0,0
    80005ebc:	02010113          	addi	sp,sp,32
    80005ec0:	00008067          	ret
	...
