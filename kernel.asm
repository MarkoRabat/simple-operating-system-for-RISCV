
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	1c813103          	ld	sp,456(sp) # 800071c8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	14d030ef          	jal	ra,80003968 <start>

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
    80001084:	4fc020ef          	jal	ra,80003580 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001144:	940080e7          	jalr	-1728(ra) # 80001a80 <_ZN3TCB12createThreadEPFvvE>
    80001148:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    8000114c:	00006797          	auipc	a5,0x6
    80001150:	0847b783          	ld	a5,132(a5) # 800071d0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001154:	00a7b023          	sd	a0,0(a5)

    threads[1] = TCB::createThread(workerBodyA);
    80001158:	00006517          	auipc	a0,0x6
    8000115c:	06853503          	ld	a0,104(a0) # 800071c0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001160:	00001097          	auipc	ra,0x1
    80001164:	920080e7          	jalr	-1760(ra) # 80001a80 <_ZN3TCB12createThreadEPFvvE>
    80001168:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    8000116c:	00005517          	auipc	a0,0x5
    80001170:	eb450513          	addi	a0,a0,-332 # 80006020 <CONSOLE_STATUS+0x10>
    80001174:	00002097          	auipc	ra,0x2
    80001178:	67c080e7          	jalr	1660(ra) # 800037f0 <_Z11printStringPKc>
    threads[2] = TCB::createThread(workerBodyB);
    8000117c:	00006517          	auipc	a0,0x6
    80001180:	02c53503          	ld	a0,44(a0) # 800071a8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001184:	00001097          	auipc	ra,0x1
    80001188:	8fc080e7          	jalr	-1796(ra) # 80001a80 <_ZN3TCB12createThreadEPFvvE>
    8000118c:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    80001190:	00005517          	auipc	a0,0x5
    80001194:	ea850513          	addi	a0,a0,-344 # 80006038 <CONSOLE_STATUS+0x28>
    80001198:	00002097          	auipc	ra,0x2
    8000119c:	658080e7          	jalr	1624(ra) # 800037f0 <_Z11printStringPKc>
    threads[3] = TCB::createThread(workerBodyC);
    800011a0:	00006517          	auipc	a0,0x6
    800011a4:	04053503          	ld	a0,64(a0) # 800071e0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800011a8:	00001097          	auipc	ra,0x1
    800011ac:	8d8080e7          	jalr	-1832(ra) # 80001a80 <_ZN3TCB12createThreadEPFvvE>
    800011b0:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    800011b4:	00005517          	auipc	a0,0x5
    800011b8:	e9c50513          	addi	a0,a0,-356 # 80006050 <CONSOLE_STATUS+0x40>
    800011bc:	00002097          	auipc	ra,0x2
    800011c0:	634080e7          	jalr	1588(ra) # 800037f0 <_Z11printStringPKc>
    threads[4] = TCB::createThread(workerBodyD);
    800011c4:	00006517          	auipc	a0,0x6
    800011c8:	02453503          	ld	a0,36(a0) # 800071e8 <_GLOBAL_OFFSET_TABLE_+0x60>
    800011cc:	00001097          	auipc	ra,0x1
    800011d0:	8b4080e7          	jalr	-1868(ra) # 80001a80 <_ZN3TCB12createThreadEPFvvE>
    800011d4:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    800011d8:	00005517          	auipc	a0,0x5
    800011dc:	e9050513          	addi	a0,a0,-368 # 80006068 <CONSOLE_STATUS+0x58>
    800011e0:	00002097          	auipc	ra,0x2
    800011e4:	610080e7          	jalr	1552(ra) # 800037f0 <_Z11printStringPKc>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800011e8:	00006797          	auipc	a5,0x6
    800011ec:	fb87b783          	ld	a5,-72(a5) # 800071a0 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80001204:	948080e7          	jalr	-1720(ra) # 80001b48 <_ZN3TCB5yieldEv>
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
    80001248:	010080e7          	jalr	16(ra) # 80003254 <_ZdlPv>
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
    8000126c:	014080e7          	jalr	20(ra) # 8000327c <_ZdaPv>
    80001270:	fd1ff06f          	j	80001240 <_Z5main2v+0x11c>
    }
    printString("Finished\n");
    80001274:	00005517          	auipc	a0,0x5
    80001278:	e0c50513          	addi	a0,a0,-500 # 80006080 <CONSOLE_STATUS+0x70>
    8000127c:	00002097          	auipc	ra,0x2
    80001280:	574080e7          	jalr	1396(ra) # 800037f0 <_Z11printStringPKc>

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
    8000130c:	840080e7          	jalr	-1984(ra) # 80001b48 <_ZN3TCB5yieldEv>
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
    80001370:	484080e7          	jalr	1156(ra) # 800037f0 <_Z11printStringPKc>
        printInteger(i);
    80001374:	00048513          	mv	a0,s1
    80001378:	00002097          	auipc	ra,0x2
    8000137c:	4e8080e7          	jalr	1256(ra) # 80003860 <_Z12printIntegerm>
        printString("\n");
    80001380:	00005517          	auipc	a0,0x5
    80001384:	d0850513          	addi	a0,a0,-760 # 80006088 <CONSOLE_STATUS+0x78>
    80001388:	00002097          	auipc	ra,0x2
    8000138c:	468080e7          	jalr	1128(ra) # 800037f0 <_Z11printStringPKc>
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
    80001408:	3ec080e7          	jalr	1004(ra) # 800037f0 <_Z11printStringPKc>
        printInteger(i);
    8000140c:	00048513          	mv	a0,s1
    80001410:	00002097          	auipc	ra,0x2
    80001414:	450080e7          	jalr	1104(ra) # 80003860 <_Z12printIntegerm>
        printString("\n");
    80001418:	00005517          	auipc	a0,0x5
    8000141c:	c7050513          	addi	a0,a0,-912 # 80006088 <CONSOLE_STATUS+0x78>
    80001420:	00002097          	auipc	ra,0x2
    80001424:	3d0080e7          	jalr	976(ra) # 800037f0 <_Z11printStringPKc>
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
    80001470:	384080e7          	jalr	900(ra) # 800037f0 <_Z11printStringPKc>
        printInteger(i);
    80001474:	00048513          	mv	a0,s1
    80001478:	00002097          	auipc	ra,0x2
    8000147c:	3e8080e7          	jalr	1000(ra) # 80003860 <_Z12printIntegerm>
        printString("\n");
    80001480:	00005517          	auipc	a0,0x5
    80001484:	c0850513          	addi	a0,a0,-1016 # 80006088 <CONSOLE_STATUS+0x78>
    80001488:	00002097          	auipc	ra,0x2
    8000148c:	368080e7          	jalr	872(ra) # 800037f0 <_Z11printStringPKc>
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
    800014ac:	348080e7          	jalr	840(ra) # 800037f0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800014b0:	00700313          	li	t1,7
    TCB::yield();
    800014b4:	00000097          	auipc	ra,0x0
    800014b8:	694080e7          	jalr	1684(ra) # 80001b48 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800014bc:	00030913          	mv	s2,t1

    printString("C: t1=");
    800014c0:	00005517          	auipc	a0,0x5
    800014c4:	bf850513          	addi	a0,a0,-1032 # 800060b8 <CONSOLE_STATUS+0xa8>
    800014c8:	00002097          	auipc	ra,0x2
    800014cc:	328080e7          	jalr	808(ra) # 800037f0 <_Z11printStringPKc>
    printInteger(t1);
    800014d0:	00090513          	mv	a0,s2
    800014d4:	00002097          	auipc	ra,0x2
    800014d8:	38c080e7          	jalr	908(ra) # 80003860 <_Z12printIntegerm>
    printString("\n");
    800014dc:	00005517          	auipc	a0,0x5
    800014e0:	bac50513          	addi	a0,a0,-1108 # 80006088 <CONSOLE_STATUS+0x78>
    800014e4:	00002097          	auipc	ra,0x2
    800014e8:	30c080e7          	jalr	780(ra) # 800037f0 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800014ec:	00c00513          	li	a0,12
    800014f0:	00000097          	auipc	ra,0x0
    800014f4:	db0080e7          	jalr	-592(ra) # 800012a0 <_ZL9fibonaccim>
    800014f8:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800014fc:	00005517          	auipc	a0,0x5
    80001500:	bc450513          	addi	a0,a0,-1084 # 800060c0 <CONSOLE_STATUS+0xb0>
    80001504:	00002097          	auipc	ra,0x2
    80001508:	2ec080e7          	jalr	748(ra) # 800037f0 <_Z11printStringPKc>
    printInteger(result);
    8000150c:	00090513          	mv	a0,s2
    80001510:	00002097          	auipc	ra,0x2
    80001514:	350080e7          	jalr	848(ra) # 80003860 <_Z12printIntegerm>
    printString("\n");
    80001518:	00005517          	auipc	a0,0x5
    8000151c:	b7050513          	addi	a0,a0,-1168 # 80006088 <CONSOLE_STATUS+0x78>
    80001520:	00002097          	auipc	ra,0x2
    80001524:	2d0080e7          	jalr	720(ra) # 800037f0 <_Z11printStringPKc>
    80001528:	0380006f          	j	80001560 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    8000152c:	00005517          	auipc	a0,0x5
    80001530:	b7450513          	addi	a0,a0,-1164 # 800060a0 <CONSOLE_STATUS+0x90>
    80001534:	00002097          	auipc	ra,0x2
    80001538:	2bc080e7          	jalr	700(ra) # 800037f0 <_Z11printStringPKc>
        printInteger(i);
    8000153c:	00048513          	mv	a0,s1
    80001540:	00002097          	auipc	ra,0x2
    80001544:	320080e7          	jalr	800(ra) # 80003860 <_Z12printIntegerm>
        printString("\n");
    80001548:	00005517          	auipc	a0,0x5
    8000154c:	b4050513          	addi	a0,a0,-1216 # 80006088 <CONSOLE_STATUS+0x78>
    80001550:	00002097          	auipc	ra,0x2
    80001554:	2a0080e7          	jalr	672(ra) # 800037f0 <_Z11printStringPKc>
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
    800015ac:	248080e7          	jalr	584(ra) # 800037f0 <_Z11printStringPKc>
        printInteger(i);
    800015b0:	00048513          	mv	a0,s1
    800015b4:	00002097          	auipc	ra,0x2
    800015b8:	2ac080e7          	jalr	684(ra) # 80003860 <_Z12printIntegerm>
        printString("\n");
    800015bc:	00005517          	auipc	a0,0x5
    800015c0:	acc50513          	addi	a0,a0,-1332 # 80006088 <CONSOLE_STATUS+0x78>
    800015c4:	00002097          	auipc	ra,0x2
    800015c8:	22c080e7          	jalr	556(ra) # 800037f0 <_Z11printStringPKc>
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
    800015e8:	20c080e7          	jalr	524(ra) # 800037f0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800015ec:	00500313          	li	t1,5
    TCB::yield();
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	558080e7          	jalr	1368(ra) # 80001b48 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    800015f8:	01000513          	li	a0,16
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	ca4080e7          	jalr	-860(ra) # 800012a0 <_ZL9fibonaccim>
    80001604:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001608:	00005517          	auipc	a0,0x5
    8000160c:	ae050513          	addi	a0,a0,-1312 # 800060e8 <CONSOLE_STATUS+0xd8>
    80001610:	00002097          	auipc	ra,0x2
    80001614:	1e0080e7          	jalr	480(ra) # 800037f0 <_Z11printStringPKc>
    printInteger(result);
    80001618:	00090513          	mv	a0,s2
    8000161c:	00002097          	auipc	ra,0x2
    80001620:	244080e7          	jalr	580(ra) # 80003860 <_Z12printIntegerm>
    printString("\n");
    80001624:	00005517          	auipc	a0,0x5
    80001628:	a6450513          	addi	a0,a0,-1436 # 80006088 <CONSOLE_STATUS+0x78>
    8000162c:	00002097          	auipc	ra,0x2
    80001630:	1c4080e7          	jalr	452(ra) # 800037f0 <_Z11printStringPKc>
    80001634:	0380006f          	j	8000166c <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    80001638:	00005517          	auipc	a0,0x5
    8000163c:	a9850513          	addi	a0,a0,-1384 # 800060d0 <CONSOLE_STATUS+0xc0>
    80001640:	00002097          	auipc	ra,0x2
    80001644:	1b0080e7          	jalr	432(ra) # 800037f0 <_Z11printStringPKc>
        printInteger(i);
    80001648:	00048513          	mv	a0,s1
    8000164c:	00002097          	auipc	ra,0x2
    80001650:	214080e7          	jalr	532(ra) # 80003860 <_Z12printIntegerm>
        printString("\n");
    80001654:	00005517          	auipc	a0,0x5
    80001658:	a3450513          	addi	a0,a0,-1484 # 80006088 <CONSOLE_STATUS+0x78>
    8000165c:	00002097          	auipc	ra,0x2
    80001660:	194080e7          	jalr	404(ra) # 800037f0 <_Z11printStringPKc>
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
    8000168c:	f8010113          	addi	sp,sp,-128
    80001690:	06113c23          	sd	ra,120(sp)
    80001694:	06813823          	sd	s0,112(sp)
    80001698:	06913423          	sd	s1,104(sp)
    8000169c:	07213023          	sd	s2,96(sp)
    800016a0:	08010413          	addi	s0,sp,128

    uint64* arr = (uint64*) MemoryAllocator::instance()->kmem_alloc(64 * 100);
    800016a4:	00000097          	auipc	ra,0x0
    800016a8:	678080e7          	jalr	1656(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    800016ac:	000025b7          	lui	a1,0x2
    800016b0:	90058593          	addi	a1,a1,-1792 # 1900 <_entry-0x7fffe700>
    800016b4:	00000097          	auipc	ra,0x0
    800016b8:	74c080e7          	jalr	1868(ra) # 80001e00 <_ZN15MemoryAllocator10kmem_allocEm>
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
    800016e8:	638080e7          	jalr	1592(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    800016ec:	00048593          	mv	a1,s1
    800016f0:	00000097          	auipc	ra,0x0
    800016f4:	7b8080e7          	jalr	1976(ra) # 80001ea8 <_ZN15MemoryAllocator9kmem_freeEPv>
        );
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    }
    void* operator new(size_t size) {
        return MemoryAllocator::instance()->kmem_alloc(size);
    800016f8:	00000097          	auipc	ra,0x0
    800016fc:	624080e7          	jalr	1572(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80001700:	04000593          	li	a1,64
    80001704:	00000097          	auipc	ra,0x0
    80001708:	6fc080e7          	jalr	1788(ra) # 80001e00 <_ZN15MemoryAllocator10kmem_allocEm>
    8000170c:	00050493          	mv	s1,a0
            : initialNumberOfObject(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    80001710:	00400793          	li	a5,4
    80001714:	00f53023          	sd	a5,0(a0)
    80001718:	00f53423          	sd	a5,8(a0)
    8000171c:	00100793          	li	a5,1
    80001720:	00f53c23          	sd	a5,24(a0)
    80001724:	02f53823          	sd	a5,48(a0)
    80001728:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(1 * sizeof(uint*));
    8000172c:	00000097          	auipc	ra,0x0
    80001730:	5f0080e7          	jalr	1520(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80001734:	00800593          	li	a1,8
    80001738:	00000097          	auipc	ra,0x0
    8000173c:	6c8080e7          	jalr	1736(ra) # 80001e00 <_ZN15MemoryAllocator10kmem_allocEm>
    80001740:	02a4b423          	sd	a0,40(s1)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(1 * sizeof(uint*));
    80001744:	00000097          	auipc	ra,0x0
    80001748:	5d8080e7          	jalr	1496(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    8000174c:	00800593          	li	a1,8
    80001750:	00000097          	auipc	ra,0x0
    80001754:	6b0080e7          	jalr	1712(ra) # 80001e00 <_ZN15MemoryAllocator10kmem_allocEm>
    80001758:	02a4b023          	sd	a0,32(s1)
        numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    8000175c:	0084b703          	ld	a4,8(s1)
    80001760:	ff877793          	andi	a5,a4,-8
    80001764:	02f70263          	beq	a4,a5,80001788 <main+0xfc>
    80001768:	00800713          	li	a4,8
    8000176c:	00e787b3          	add	a5,a5,a4
    80001770:	00f4b423          	sd	a5,8(s1)
        memorySizeForBits = numberOfObjects / 8;
    80001774:	0037d793          	srli	a5,a5,0x3
    80001778:	00f4b823          	sd	a5,16(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    8000177c:	00000097          	auipc	ra,0x0
    80001780:	5a0080e7          	jalr	1440(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80001784:	00c0006f          	j	80001790 <main+0x104>
        numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80001788:	00000713          	li	a4,0
    8000178c:	fe1ff06f          	j	8000176c <main+0xe0>
                memorySizeForBits + numberOfObjects * objectSize
    80001790:	0104b583          	ld	a1,16(s1)
    80001794:	0084b783          	ld	a5,8(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80001798:	0284b903          	ld	s2,40(s1)
    8000179c:	00f585b3          	add	a1,a1,a5
    800017a0:	00000097          	auipc	ra,0x0
    800017a4:	660080e7          	jalr	1632(ra) # 80001e00 <_ZN15MemoryAllocator10kmem_allocEm>
    800017a8:	00a93023          	sd	a0,0(s2)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    800017ac:	0284b783          	ld	a5,40(s1)
    800017b0:	0007b783          	ld	a5,0(a5)
    800017b4:	0104b683          	ld	a3,16(s1)
    800017b8:	0204b703          	ld	a4,32(s1)
    800017bc:	00d787b3          	add	a5,a5,a3
    800017c0:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    800017c4:	00000793          	li	a5,0
    800017c8:	0104b703          	ld	a4,16(s1)
    800017cc:	00e7fe63          	bgeu	a5,a4,800017e8 <main+0x15c>
    800017d0:	0284b703          	ld	a4,40(s1)
    800017d4:	00073703          	ld	a4,0(a4)
    800017d8:	00f70733          	add	a4,a4,a5
    800017dc:	00070023          	sb	zero,0(a4)
    800017e0:	00178793          	addi	a5,a5,1
    800017e4:	fe5ff06f          	j	800017c8 <main+0x13c>

    KObjectAllocator* newObj = new KObjectAllocator(sizeof(uint8), 4);
    printString("objectNumber: "); printInteger(newObj->getNumberOfObjects()); printString("\n");
    800017e8:	00005517          	auipc	a0,0x5
    800017ec:	91050513          	addi	a0,a0,-1776 # 800060f8 <CONSOLE_STATUS+0xe8>
    800017f0:	00002097          	auipc	ra,0x2
    800017f4:	000080e7          	jalr	ra # 800037f0 <_Z11printStringPKc>
    800017f8:	0084b503          	ld	a0,8(s1)
    800017fc:	00002097          	auipc	ra,0x2
    80001800:	064080e7          	jalr	100(ra) # 80003860 <_Z12printIntegerm>
    80001804:	00005517          	auipc	a0,0x5
    80001808:	88450513          	addi	a0,a0,-1916 # 80006088 <CONSOLE_STATUS+0x78>
    8000180c:	00002097          	auipc	ra,0x2
    80001810:	fe4080e7          	jalr	-28(ra) # 800037f0 <_Z11printStringPKc>
    printString("memoryForBits: "); printInteger(newObj->getMemorySizeForBits()); printString("\n");
    80001814:	00005517          	auipc	a0,0x5
    80001818:	8f450513          	addi	a0,a0,-1804 # 80006108 <CONSOLE_STATUS+0xf8>
    8000181c:	00002097          	auipc	ra,0x2
    80001820:	fd4080e7          	jalr	-44(ra) # 800037f0 <_Z11printStringPKc>
    80001824:	0104b503          	ld	a0,16(s1)
    80001828:	00002097          	auipc	ra,0x2
    8000182c:	038080e7          	jalr	56(ra) # 80003860 <_Z12printIntegerm>
    80001830:	00005517          	auipc	a0,0x5
    80001834:	85850513          	addi	a0,a0,-1960 # 80006088 <CONSOLE_STATUS+0x78>
    80001838:	00002097          	auipc	ra,0x2
    8000183c:	fb8080e7          	jalr	-72(ra) # 800037f0 <_Z11printStringPKc>
    //newObj->printInternalMemory();

    void* objArr[10];
    for (int i = 0; i < 10; ++i) {
    80001840:	00000913          	li	s2,0
    80001844:	0600006f          	j	800018a4 <main+0x218>
        objArr[i] = newObj->allocateNewObject();
        if (i == 3 || i == 7 || i == 8 ) {
            printString("\n\n\nobjectNumber: "); printInteger(newObj->getNumberOfObjects()); printString("\n");
    80001848:	00005517          	auipc	a0,0x5
    8000184c:	8d050513          	addi	a0,a0,-1840 # 80006118 <CONSOLE_STATUS+0x108>
    80001850:	00002097          	auipc	ra,0x2
    80001854:	fa0080e7          	jalr	-96(ra) # 800037f0 <_Z11printStringPKc>
    80001858:	0084b503          	ld	a0,8(s1)
    8000185c:	00002097          	auipc	ra,0x2
    80001860:	004080e7          	jalr	4(ra) # 80003860 <_Z12printIntegerm>
    80001864:	00005517          	auipc	a0,0x5
    80001868:	82450513          	addi	a0,a0,-2012 # 80006088 <CONSOLE_STATUS+0x78>
    8000186c:	00002097          	auipc	ra,0x2
    80001870:	f84080e7          	jalr	-124(ra) # 800037f0 <_Z11printStringPKc>
            printString("memoryForBits: "); printInteger(newObj->getMemorySizeForBits()); printString("\n");
    80001874:	00005517          	auipc	a0,0x5
    80001878:	89450513          	addi	a0,a0,-1900 # 80006108 <CONSOLE_STATUS+0xf8>
    8000187c:	00002097          	auipc	ra,0x2
    80001880:	f74080e7          	jalr	-140(ra) # 800037f0 <_Z11printStringPKc>
    80001884:	0104b503          	ld	a0,16(s1)
    80001888:	00002097          	auipc	ra,0x2
    8000188c:	fd8080e7          	jalr	-40(ra) # 80003860 <_Z12printIntegerm>
    80001890:	00004517          	auipc	a0,0x4
    80001894:	7f850513          	addi	a0,a0,2040 # 80006088 <CONSOLE_STATUS+0x78>
    80001898:	00002097          	auipc	ra,0x2
    8000189c:	f58080e7          	jalr	-168(ra) # 800037f0 <_Z11printStringPKc>
    for (int i = 0; i < 10; ++i) {
    800018a0:	0019091b          	addiw	s2,s2,1
    800018a4:	00900793          	li	a5,9
    800018a8:	0327ce63          	blt	a5,s2,800018e4 <main+0x258>
        objArr[i] = newObj->allocateNewObject();
    800018ac:	00048513          	mv	a0,s1
    800018b0:	00002097          	auipc	ra,0x2
    800018b4:	c14080e7          	jalr	-1004(ra) # 800034c4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800018b8:	00391793          	slli	a5,s2,0x3
    800018bc:	fe040713          	addi	a4,s0,-32
    800018c0:	00f707b3          	add	a5,a4,a5
    800018c4:	faa7b823          	sd	a0,-80(a5)
        if (i == 3 || i == 7 || i == 8 ) {
    800018c8:	00300793          	li	a5,3
    800018cc:	f6f90ee3          	beq	s2,a5,80001848 <main+0x1bc>
    800018d0:	00700793          	li	a5,7
    800018d4:	f6f90ae3          	beq	s2,a5,80001848 <main+0x1bc>
    800018d8:	00800793          	li	a5,8
    800018dc:	fcf912e3          	bne	s2,a5,800018a0 <main+0x214>
    800018e0:	f69ff06f          	j	80001848 <main+0x1bc>
            //newObj->printInternalMemory();
        }
    }

    printString("\nobjArr[7]: "); printInteger((uint64) objArr[7]);
    800018e4:	00005517          	auipc	a0,0x5
    800018e8:	84c50513          	addi	a0,a0,-1972 # 80006130 <CONSOLE_STATUS+0x120>
    800018ec:	00002097          	auipc	ra,0x2
    800018f0:	f04080e7          	jalr	-252(ra) # 800037f0 <_Z11printStringPKc>
    800018f4:	fc843503          	ld	a0,-56(s0)
    800018f8:	00002097          	auipc	ra,0x2
    800018fc:	f68080e7          	jalr	-152(ra) # 80003860 <_Z12printIntegerm>
    printString("\nobjArr[8]: "); printInteger((uint64) objArr[8]);
    80001900:	00005517          	auipc	a0,0x5
    80001904:	84050513          	addi	a0,a0,-1984 # 80006140 <CONSOLE_STATUS+0x130>
    80001908:	00002097          	auipc	ra,0x2
    8000190c:	ee8080e7          	jalr	-280(ra) # 800037f0 <_Z11printStringPKc>
    80001910:	fd043503          	ld	a0,-48(s0)
    80001914:	00002097          	auipc	ra,0x2
    80001918:	f4c080e7          	jalr	-180(ra) # 80003860 <_Z12printIntegerm>
    printString("\nobjArr[9]: "); printInteger((uint64) objArr[9]); printString("\n");
    8000191c:	00005517          	auipc	a0,0x5
    80001920:	83450513          	addi	a0,a0,-1996 # 80006150 <CONSOLE_STATUS+0x140>
    80001924:	00002097          	auipc	ra,0x2
    80001928:	ecc080e7          	jalr	-308(ra) # 800037f0 <_Z11printStringPKc>
    8000192c:	fd843503          	ld	a0,-40(s0)
    80001930:	00002097          	auipc	ra,0x2
    80001934:	f30080e7          	jalr	-208(ra) # 80003860 <_Z12printIntegerm>
    80001938:	00004517          	auipc	a0,0x4
    8000193c:	75050513          	addi	a0,a0,1872 # 80006088 <CONSOLE_STATUS+0x78>
    80001940:	00002097          	auipc	ra,0x2
    80001944:	eb0080e7          	jalr	-336(ra) # 800037f0 <_Z11printStringPKc>
    for (int i = 0; i < 10; ++i) newObj->freeObject(objArr[i]);
    80001948:	00000913          	li	s2,0
    8000194c:	00900793          	li	a5,9
    80001950:	0327c463          	blt	a5,s2,80001978 <main+0x2ec>
    80001954:	00391793          	slli	a5,s2,0x3
    80001958:	fe040713          	addi	a4,s0,-32
    8000195c:	00f707b3          	add	a5,a4,a5
    80001960:	fb07b583          	ld	a1,-80(a5)
    80001964:	00048513          	mv	a0,s1
    80001968:	00002097          	auipc	ra,0x2
    8000196c:	a98080e7          	jalr	-1384(ra) # 80003400 <_ZN16KObjectAllocator10freeObjectEPv>
    80001970:	0019091b          	addiw	s2,s2,1
    80001974:	fd9ff06f          	j	8000194c <main+0x2c0>


    delete newObj;
    80001978:	00048863          	beqz	s1,80001988 <main+0x2fc>
    8000197c:	00048513          	mv	a0,s1
    80001980:	00000097          	auipc	ra,0x0
    80001984:	05c080e7          	jalr	92(ra) # 800019dc <_ZN16KObjectAllocatordlEPv>
    /*printString("\nKObjectAllocator tests:\n");
    KObjectAllocatorTest* t2 = new KObjectAllocatorTest;
    t2->runTests();
    delete t2;*/

    printString("\nMemory tests:\n");
    80001988:	00004517          	auipc	a0,0x4
    8000198c:	7d850513          	addi	a0,a0,2008 # 80006160 <CONSOLE_STATUS+0x150>
    80001990:	00002097          	auipc	ra,0x2
    80001994:	e60080e7          	jalr	-416(ra) # 800037f0 <_Z11printStringPKc>
    MemoryAllocatorTest t1;
    t1.runTests();
    80001998:	f8840513          	addi	a0,s0,-120
    8000199c:	00001097          	auipc	ra,0x1
    800019a0:	648080e7          	jalr	1608(ra) # 80002fe4 <_ZN19MemoryAllocatorTest8runTestsEv>


    return 0;
    800019a4:	00000513          	li	a0,0
    800019a8:	07813083          	ld	ra,120(sp)
    800019ac:	07013403          	ld	s0,112(sp)
    800019b0:	06813483          	ld	s1,104(sp)
    800019b4:	06013903          	ld	s2,96(sp)
    800019b8:	08010113          	addi	sp,sp,128
    800019bc:	00008067          	ret
    800019c0:	00050913          	mv	s2,a0
    KObjectAllocator* newObj = new KObjectAllocator(sizeof(uint8), 4);
    800019c4:	00048513          	mv	a0,s1
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	014080e7          	jalr	20(ra) # 800019dc <_ZN16KObjectAllocatordlEPv>
    800019d0:	00090513          	mv	a0,s2
    800019d4:	00007097          	auipc	ra,0x7
    800019d8:	974080e7          	jalr	-1676(ra) # 80008348 <_Unwind_Resume>

00000000800019dc <_ZN16KObjectAllocatordlEPv>:
    }
    void operator delete(void* p) {
    800019dc:	fe010113          	addi	sp,sp,-32
    800019e0:	00113c23          	sd	ra,24(sp)
    800019e4:	00813823          	sd	s0,16(sp)
    800019e8:	00913423          	sd	s1,8(sp)
    800019ec:	01213023          	sd	s2,0(sp)
    800019f0:	02010413          	addi	s0,sp,32
    800019f4:	00050913          	mv	s2,a0
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800019f8:	00000493          	li	s1,0
    800019fc:	03093783          	ld	a5,48(s2)
    80001a00:	02f4f663          	bgeu	s1,a5,80001a2c <_ZN16KObjectAllocatordlEPv+0x50>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	318080e7          	jalr	792(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80001a0c:	02893783          	ld	a5,40(s2)
    80001a10:	00349713          	slli	a4,s1,0x3
    80001a14:	00e787b3          	add	a5,a5,a4
    80001a18:	0007b583          	ld	a1,0(a5)
    80001a1c:	00000097          	auipc	ra,0x0
    80001a20:	48c080e7          	jalr	1164(ra) # 80001ea8 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80001a24:	00148493          	addi	s1,s1,1
    80001a28:	fd5ff06f          	j	800019fc <_ZN16KObjectAllocatordlEPv+0x20>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80001a2c:	00000097          	auipc	ra,0x0
    80001a30:	2f0080e7          	jalr	752(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80001a34:	02893583          	ld	a1,40(s2)
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	470080e7          	jalr	1136(ra) # 80001ea8 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80001a40:	00000097          	auipc	ra,0x0
    80001a44:	2dc080e7          	jalr	732(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80001a48:	02093583          	ld	a1,32(s2)
    80001a4c:	00000097          	auipc	ra,0x0
    80001a50:	45c080e7          	jalr	1116(ra) # 80001ea8 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80001a54:	00000097          	auipc	ra,0x0
    80001a58:	2c8080e7          	jalr	712(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80001a5c:	00090593          	mv	a1,s2
    80001a60:	00000097          	auipc	ra,0x0
    80001a64:	448080e7          	jalr	1096(ra) # 80001ea8 <_ZN15MemoryAllocator9kmem_freeEPv>
    }
    80001a68:	01813083          	ld	ra,24(sp)
    80001a6c:	01013403          	ld	s0,16(sp)
    80001a70:	00813483          	ld	s1,8(sp)
    80001a74:	00013903          	ld	s2,0(sp)
    80001a78:	02010113          	addi	sp,sp,32
    80001a7c:	00008067          	ret

0000000080001a80 <_ZN3TCB12createThreadEPFvvE>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    80001a80:	fe010113          	addi	sp,sp,-32
    80001a84:	00113c23          	sd	ra,24(sp)
    80001a88:	00813823          	sd	s0,16(sp)
    80001a8c:	00913423          	sd	s1,8(sp)
    80001a90:	01213023          	sd	s2,0(sp)
    80001a94:	02010413          	addi	s0,sp,32
    80001a98:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    80001a9c:	03000513          	li	a0,48
    80001aa0:	00001097          	auipc	ra,0x1
    80001aa4:	764080e7          	jalr	1892(ra) # 80003204 <_Znwm>
    80001aa8:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    80001aac:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001ab0:	00090a63          	beqz	s2,80001ac4 <_ZN3TCB12createThreadEPFvvE+0x44>
    80001ab4:	00002537          	lui	a0,0x2
    80001ab8:	00001097          	auipc	ra,0x1
    80001abc:	774080e7          	jalr	1908(ra) # 8000322c <_Znam>
    80001ac0:	0080006f          	j	80001ac8 <_ZN3TCB12createThreadEPFvvE+0x48>
    80001ac4:	00000513          	li	a0,0
            finished(false)
    80001ac8:	00a4b423          	sd	a0,8(s1)
    80001acc:	00000797          	auipc	a5,0x0
    80001ad0:	09878793          	addi	a5,a5,152 # 80001b64 <_ZN3TCB13threadWrapperEv>
    80001ad4:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001ad8:	02050863          	beqz	a0,80001b08 <_ZN3TCB12createThreadEPFvvE+0x88>
    80001adc:	000027b7          	lui	a5,0x2
    80001ae0:	00f507b3          	add	a5,a0,a5
            finished(false)
    80001ae4:	00f4bc23          	sd	a5,24(s1)
    80001ae8:	00200793          	li	a5,2
    80001aec:	02f4b023          	sd	a5,32(s1)
    80001af0:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001af4:	02090c63          	beqz	s2,80001b2c <_ZN3TCB12createThreadEPFvvE+0xac>
    80001af8:	00048513          	mv	a0,s1
    80001afc:	00002097          	auipc	ra,0x2
    80001b00:	c54080e7          	jalr	-940(ra) # 80003750 <_ZN9Scheduler3putEP3TCB>
    80001b04:	0280006f          	j	80001b2c <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001b08:	00000793          	li	a5,0
    80001b0c:	fd9ff06f          	j	80001ae4 <_ZN3TCB12createThreadEPFvvE+0x64>
    80001b10:	00050913          	mv	s2,a0
    80001b14:	00048513          	mv	a0,s1
    80001b18:	00001097          	auipc	ra,0x1
    80001b1c:	73c080e7          	jalr	1852(ra) # 80003254 <_ZdlPv>
    80001b20:	00090513          	mv	a0,s2
    80001b24:	00007097          	auipc	ra,0x7
    80001b28:	824080e7          	jalr	-2012(ra) # 80008348 <_Unwind_Resume>
}
    80001b2c:	00048513          	mv	a0,s1
    80001b30:	01813083          	ld	ra,24(sp)
    80001b34:	01013403          	ld	s0,16(sp)
    80001b38:	00813483          	ld	s1,8(sp)
    80001b3c:	00013903          	ld	s2,0(sp)
    80001b40:	02010113          	addi	sp,sp,32
    80001b44:	00008067          	ret

0000000080001b48 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    80001b48:	ff010113          	addi	sp,sp,-16
    80001b4c:	00813423          	sd	s0,8(sp)
    80001b50:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80001b54:	00000073          	ecall
}
    80001b58:	00813403          	ld	s0,8(sp)
    80001b5c:	01010113          	addi	sp,sp,16
    80001b60:	00008067          	ret

0000000080001b64 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001b64:	fe010113          	addi	sp,sp,-32
    80001b68:	00113c23          	sd	ra,24(sp)
    80001b6c:	00813823          	sd	s0,16(sp)
    80001b70:	00913423          	sd	s1,8(sp)
    80001b74:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001b78:	00002097          	auipc	ra,0x2
    80001b7c:	9e8080e7          	jalr	-1560(ra) # 80003560 <_ZN5Riscv10popSppSpieEv>
    running->body();
    80001b80:	00005497          	auipc	s1,0x5
    80001b84:	6c048493          	addi	s1,s1,1728 # 80007240 <_ZN3TCB7runningE>
    80001b88:	0004b783          	ld	a5,0(s1)
    80001b8c:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    80001b90:	000780e7          	jalr	a5
    running->setFinished(true);
    80001b94:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80001b98:	00100713          	li	a4,1
    80001b9c:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    80001ba0:	00000097          	auipc	ra,0x0
    80001ba4:	fa8080e7          	jalr	-88(ra) # 80001b48 <_ZN3TCB5yieldEv>
}
    80001ba8:	01813083          	ld	ra,24(sp)
    80001bac:	01013403          	ld	s0,16(sp)
    80001bb0:	00813483          	ld	s1,8(sp)
    80001bb4:	02010113          	addi	sp,sp,32
    80001bb8:	00008067          	ret

0000000080001bbc <_ZN3TCB8dispatchEv>:
{
    80001bbc:	fe010113          	addi	sp,sp,-32
    80001bc0:	00113c23          	sd	ra,24(sp)
    80001bc4:	00813823          	sd	s0,16(sp)
    80001bc8:	00913423          	sd	s1,8(sp)
    80001bcc:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001bd0:	00005497          	auipc	s1,0x5
    80001bd4:	6704b483          	ld	s1,1648(s1) # 80007240 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001bd8:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001bdc:	02078c63          	beqz	a5,80001c14 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001be0:	00002097          	auipc	ra,0x2
    80001be4:	b08080e7          	jalr	-1272(ra) # 800036e8 <_ZN9Scheduler3getEv>
    80001be8:	00005797          	auipc	a5,0x5
    80001bec:	64a7bc23          	sd	a0,1624(a5) # 80007240 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001bf0:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001bf4:	01048513          	addi	a0,s1,16
    80001bf8:	fffff097          	auipc	ra,0xfffff
    80001bfc:	518080e7          	jalr	1304(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001c00:	01813083          	ld	ra,24(sp)
    80001c04:	01013403          	ld	s0,16(sp)
    80001c08:	00813483          	ld	s1,8(sp)
    80001c0c:	02010113          	addi	sp,sp,32
    80001c10:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001c14:	00048513          	mv	a0,s1
    80001c18:	00002097          	auipc	ra,0x2
    80001c1c:	b38080e7          	jalr	-1224(ra) # 80003750 <_ZN9Scheduler3putEP3TCB>
    80001c20:	fc1ff06f          	j	80001be0 <_ZN3TCB8dispatchEv+0x24>

0000000080001c24 <_ZN15MemoryAllocator17getMinBlockNumberEm>:
    newMemoryAllocator->freeMemoryHead->next = nullptr;

    return newMemoryAllocator;
}

size_t MemoryAllocator::getMinBlockNumber(size_t size) {
    80001c24:	ff010113          	addi	sp,sp,-16
    80001c28:	00813423          	sd	s0,8(sp)
    80001c2c:	01010413          	addi	s0,sp,16
    size_t blockNo = size / MEM_BLOCK_SIZE;
    80001c30:	00655713          	srli	a4,a0,0x6
    blockNo = blockNo + (size - blockNo * MEM_BLOCK_SIZE != 0);
    80001c34:	fc057793          	andi	a5,a0,-64
    80001c38:	40a78533          	sub	a0,a5,a0
    80001c3c:	00a03533          	snez	a0,a0
    return blockNo;
}
    80001c40:	00e50533          	add	a0,a0,a4
    80001c44:	00813403          	ld	s0,8(sp)
    80001c48:	01010113          	addi	sp,sp,16
    80001c4c:	00008067          	ret

0000000080001c50 <_ZN15MemoryAllocator14createInstanceEv>:
MemoryAllocator* MemoryAllocator::createInstance() {
    80001c50:	fd010113          	addi	sp,sp,-48
    80001c54:	02113423          	sd	ra,40(sp)
    80001c58:	02813023          	sd	s0,32(sp)
    80001c5c:	00913c23          	sd	s1,24(sp)
    80001c60:	01213823          	sd	s2,16(sp)
    80001c64:	01313423          	sd	s3,8(sp)
    80001c68:	01413023          	sd	s4,0(sp)
    80001c6c:	03010413          	addi	s0,sp,48
    managedMemorySpaceStart = (uint8*) HEAP_START_ADDR;
    80001c70:	00005797          	auipc	a5,0x5
    80001c74:	5207b783          	ld	a5,1312(a5) # 80007190 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c78:	0007b903          	ld	s2,0(a5)
    managedMemorySpaceEnd = (uint8*) HEAP_END_ADDR;
    80001c7c:	00005797          	auipc	a5,0x5
    80001c80:	55c7b783          	ld	a5,1372(a5) # 800071d8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001c84:	0007b483          	ld	s1,0(a5)
    80001c88:	00005a17          	auipc	s4,0x5
    80001c8c:	5c8a0a13          	addi	s4,s4,1480 # 80007250 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    80001c90:	009a3023          	sd	s1,0(s4)
    minMemoryFragmentSize = getMinBlockNumber(sizeof(SegmentDescriptor)) + getMinBlockNumber(sizeof(uint64));
    80001c94:	01000513          	li	a0,16
    80001c98:	00000097          	auipc	ra,0x0
    80001c9c:	f8c080e7          	jalr	-116(ra) # 80001c24 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001ca0:	00050993          	mv	s3,a0
    80001ca4:	00800513          	li	a0,8
    80001ca8:	00000097          	auipc	ra,0x0
    80001cac:	f7c080e7          	jalr	-132(ra) # 80001c24 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001cb0:	00a989b3          	add	s3,s3,a0
    80001cb4:	013a3423          	sd	s3,8(s4)
    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
    80001cb8:	02000513          	li	a0,32
    80001cbc:	00000097          	auipc	ra,0x0
    80001cc0:	f68080e7          	jalr	-152(ra) # 80001c24 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    managedMemorySpaceStart += noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE;
    80001cc4:	00651513          	slli	a0,a0,0x6
    80001cc8:	00a90533          	add	a0,s2,a0
    80001ccc:	00aa3823          	sd	a0,16(s4)
    newMemoryAllocator->totalTaken = 0;
    80001cd0:	00093423          	sd	zero,8(s2)
    newMemoryAllocator->totalFree = (size_t) (managedMemorySpaceEnd - managedMemorySpaceStart);
    80001cd4:	40a484b3          	sub	s1,s1,a0
    80001cd8:	00993023          	sd	s1,0(s2)
    newMemoryAllocator->freeBlockNo = newMemoryAllocator->totalFree / MEM_BLOCK_SIZE;
    80001cdc:	0064d493          	srli	s1,s1,0x6
    80001ce0:	00993823          	sd	s1,16(s2)
    newMemoryAllocator->freeMemoryHead = (SegmentDescriptor*) managedMemorySpaceStart;
    80001ce4:	010a3783          	ld	a5,16(s4)
    80001ce8:	00f93c23          	sd	a5,24(s2)
    newMemoryAllocator->freeMemoryHead->noBlocks = newMemoryAllocator->freeBlockNo;
    80001cec:	0097b023          	sd	s1,0(a5)
    newMemoryAllocator->freeMemoryHead->next = nullptr;
    80001cf0:	01893783          	ld	a5,24(s2)
    80001cf4:	0007b423          	sd	zero,8(a5)
}
    80001cf8:	00090513          	mv	a0,s2
    80001cfc:	02813083          	ld	ra,40(sp)
    80001d00:	02013403          	ld	s0,32(sp)
    80001d04:	01813483          	ld	s1,24(sp)
    80001d08:	01013903          	ld	s2,16(sp)
    80001d0c:	00813983          	ld	s3,8(sp)
    80001d10:	00013a03          	ld	s4,0(sp)
    80001d14:	03010113          	addi	sp,sp,48
    80001d18:	00008067          	ret

0000000080001d1c <_ZN15MemoryAllocator8instanceEv>:
    if (onlyInstance == nullptr)
    80001d1c:	00005797          	auipc	a5,0x5
    80001d20:	54c7b783          	ld	a5,1356(a5) # 80007268 <_ZN15MemoryAllocator12onlyInstanceE>
    80001d24:	00078863          	beqz	a5,80001d34 <_ZN15MemoryAllocator8instanceEv+0x18>
}
    80001d28:	00005517          	auipc	a0,0x5
    80001d2c:	54053503          	ld	a0,1344(a0) # 80007268 <_ZN15MemoryAllocator12onlyInstanceE>
    80001d30:	00008067          	ret
MemoryAllocator* MemoryAllocator::instance() {
    80001d34:	ff010113          	addi	sp,sp,-16
    80001d38:	00113423          	sd	ra,8(sp)
    80001d3c:	00813023          	sd	s0,0(sp)
    80001d40:	01010413          	addi	s0,sp,16
        onlyInstance = createInstance();
    80001d44:	00000097          	auipc	ra,0x0
    80001d48:	f0c080e7          	jalr	-244(ra) # 80001c50 <_ZN15MemoryAllocator14createInstanceEv>
    80001d4c:	00005797          	auipc	a5,0x5
    80001d50:	50a7be23          	sd	a0,1308(a5) # 80007268 <_ZN15MemoryAllocator12onlyInstanceE>
}
    80001d54:	00005517          	auipc	a0,0x5
    80001d58:	51453503          	ld	a0,1300(a0) # 80007268 <_ZN15MemoryAllocator12onlyInstanceE>
    80001d5c:	00813083          	ld	ra,8(sp)
    80001d60:	00013403          	ld	s0,0(sp)
    80001d64:	01010113          	addi	sp,sp,16
    80001d68:	00008067          	ret

0000000080001d6c <_ZN15MemoryAllocator8firstFitEm>:


MemoryAllocator::SegmentDescriptor* MemoryAllocator::firstFit(size_t blockNo) {
    80001d6c:	ff010113          	addi	sp,sp,-16
    80001d70:	00813423          	sd	s0,8(sp)
    80001d74:	01010413          	addi	s0,sp,16
    80001d78:	00050693          	mv	a3,a0
    SegmentDescriptor* largeEnoughSegment = freeMemoryHead;
    80001d7c:	01853503          	ld	a0,24(a0)
    SegmentDescriptor* prevSegment = nullptr;
    80001d80:	00000713          	li	a4,0
    while (largeEnoughSegment && largeEnoughSegment->noBlocks < blockNo) {
    80001d84:	00050c63          	beqz	a0,80001d9c <_ZN15MemoryAllocator8firstFitEm+0x30>
    80001d88:	00053783          	ld	a5,0(a0)
    80001d8c:	00b7f863          	bgeu	a5,a1,80001d9c <_ZN15MemoryAllocator8firstFitEm+0x30>
        prevSegment = largeEnoughSegment;
    80001d90:	00050713          	mv	a4,a0
        largeEnoughSegment = largeEnoughSegment->next;
    80001d94:	00853503          	ld	a0,8(a0)
    while (largeEnoughSegment && largeEnoughSegment->noBlocks < blockNo) {
    80001d98:	fedff06f          	j	80001d84 <_ZN15MemoryAllocator8firstFitEm+0x18>
    }
    if (!largeEnoughSegment) return nullptr;
    80001d9c:	04050663          	beqz	a0,80001de8 <_ZN15MemoryAllocator8firstFitEm+0x7c>

    if (largeEnoughSegment->noBlocks - blockNo >= minMemoryFragmentSize) {
    80001da0:	00053783          	ld	a5,0(a0)
    80001da4:	40b787b3          	sub	a5,a5,a1
    80001da8:	00005617          	auipc	a2,0x5
    80001dac:	4b063603          	ld	a2,1200(a2) # 80007258 <_ZN15MemoryAllocator21minMemoryFragmentSizeE>
    80001db0:	02c7e063          	bltu	a5,a2,80001dd0 <_ZN15MemoryAllocator8firstFitEm+0x64>
        SegmentDescriptor* newSegment = (SegmentDescriptor*) ((uint8*) largeEnoughSegment + blockNo * MEM_BLOCK_SIZE);
    80001db4:	00659613          	slli	a2,a1,0x6
    80001db8:	00c50633          	add	a2,a0,a2
        newSegment->noBlocks = largeEnoughSegment->noBlocks - blockNo;
    80001dbc:	00f63023          	sd	a5,0(a2)
        newSegment->next = largeEnoughSegment->next;
    80001dc0:	00853783          	ld	a5,8(a0)
    80001dc4:	00f63423          	sd	a5,8(a2)
        largeEnoughSegment->next = newSegment;
    80001dc8:	00c53423          	sd	a2,8(a0)
        largeEnoughSegment->noBlocks = blockNo;
    80001dcc:	00b53023          	sd	a1,0(a0)
    }

    if (prevSegment) prevSegment->next = largeEnoughSegment->next;
    80001dd0:	00070663          	beqz	a4,80001ddc <_ZN15MemoryAllocator8firstFitEm+0x70>
    80001dd4:	00853783          	ld	a5,8(a0)
    80001dd8:	00f73423          	sd	a5,8(a4)
    if (freeMemoryHead == largeEnoughSegment)
    80001ddc:	0186b783          	ld	a5,24(a3)
    80001de0:	00a78a63          	beq	a5,a0,80001df4 <_ZN15MemoryAllocator8firstFitEm+0x88>
        freeMemoryHead = largeEnoughSegment->next;

    largeEnoughSegment->next = nullptr;
    80001de4:	00053423          	sd	zero,8(a0)
    return largeEnoughSegment;
}
    80001de8:	00813403          	ld	s0,8(sp)
    80001dec:	01010113          	addi	sp,sp,16
    80001df0:	00008067          	ret
        freeMemoryHead = largeEnoughSegment->next;
    80001df4:	00853783          	ld	a5,8(a0)
    80001df8:	00f6bc23          	sd	a5,24(a3)
    80001dfc:	fe9ff06f          	j	80001de4 <_ZN15MemoryAllocator8firstFitEm+0x78>

0000000080001e00 <_ZN15MemoryAllocator10kmem_allocEm>:

void* MemoryAllocator::kmem_alloc(size_t size) {
    80001e00:	fe010113          	addi	sp,sp,-32
    80001e04:	00113c23          	sd	ra,24(sp)
    80001e08:	00813823          	sd	s0,16(sp)
    80001e0c:	00913423          	sd	s1,8(sp)
    80001e10:	01213023          	sd	s2,0(sp)
    80001e14:	02010413          	addi	s0,sp,32
    80001e18:	00050493          	mv	s1,a0
    80001e1c:	00058913          	mv	s2,a1
    size_t minBlockNo = getMinBlockNumber(size);
    80001e20:	00058513          	mv	a0,a1
    80001e24:	00000097          	auipc	ra,0x0
    80001e28:	e00080e7          	jalr	-512(ra) # 80001c24 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001e2c:	00050593          	mv	a1,a0
    if (minBlockNo * MEM_BLOCK_SIZE - size < sizeof(SegmentDescriptor)) ++minBlockNo;
    80001e30:	00651793          	slli	a5,a0,0x6
    80001e34:	41278933          	sub	s2,a5,s2
    80001e38:	00f00793          	li	a5,15
    80001e3c:	0127e463          	bltu	a5,s2,80001e44 <_ZN15MemoryAllocator10kmem_allocEm+0x44>
    80001e40:	00150593          	addi	a1,a0,1
    SegmentDescriptor* newTaken = firstFit(minBlockNo);
    80001e44:	00048513          	mv	a0,s1
    80001e48:	00000097          	auipc	ra,0x0
    80001e4c:	f24080e7          	jalr	-220(ra) # 80001d6c <_ZN15MemoryAllocator8firstFitEm>
    if (!newTaken) return nullptr;
    80001e50:	04050063          	beqz	a0,80001e90 <_ZN15MemoryAllocator10kmem_allocEm+0x90>

    freeBlockNo -= newTaken->noBlocks;
    80001e54:	00053703          	ld	a4,0(a0)
    80001e58:	0104b783          	ld	a5,16(s1)
    80001e5c:	40e787b3          	sub	a5,a5,a4
    80001e60:	00f4b823          	sd	a5,16(s1)
    totalFree -= newTaken->noBlocks * MEM_BLOCK_SIZE;
    80001e64:	00053783          	ld	a5,0(a0)
    80001e68:	00679713          	slli	a4,a5,0x6
    80001e6c:	0004b783          	ld	a5,0(s1)
    80001e70:	40e787b3          	sub	a5,a5,a4
    80001e74:	00f4b023          	sd	a5,0(s1)
    totalTaken += newTaken->noBlocks * MEM_BLOCK_SIZE;
    80001e78:	00053783          	ld	a5,0(a0)
    80001e7c:	00679713          	slli	a4,a5,0x6
    80001e80:	0084b783          	ld	a5,8(s1)
    80001e84:	00e787b3          	add	a5,a5,a4
    80001e88:	00f4b423          	sd	a5,8(s1)

    return (uint8*) newTaken + sizeof(SegmentDescriptor);
    80001e8c:	01050513          	addi	a0,a0,16
}
    80001e90:	01813083          	ld	ra,24(sp)
    80001e94:	01013403          	ld	s0,16(sp)
    80001e98:	00813483          	ld	s1,8(sp)
    80001e9c:	00013903          	ld	s2,0(sp)
    80001ea0:	02010113          	addi	sp,sp,32
    80001ea4:	00008067          	ret

0000000080001ea8 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* newFree) {
    80001ea8:	ff010113          	addi	sp,sp,-16
    80001eac:	00813423          	sd	s0,8(sp)
    80001eb0:	01010413          	addi	s0,sp,16
    if (newFree == nullptr) return 0;
    80001eb4:	08058863          	beqz	a1,80001f44 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>
    SegmentDescriptor* newFreeSegment = (SegmentDescriptor*) ((uint8*) newFree - sizeof(SegmentDescriptor));
    80001eb8:	ff058693          	addi	a3,a1,-16
    freeBlockNo += newFreeSegment->noBlocks;
    80001ebc:	ff05b703          	ld	a4,-16(a1)
    80001ec0:	01053783          	ld	a5,16(a0)
    80001ec4:	00e787b3          	add	a5,a5,a4
    80001ec8:	00f53823          	sd	a5,16(a0)
    totalFree += newFreeSegment->noBlocks * MEM_BLOCK_SIZE;
    80001ecc:	ff05b783          	ld	a5,-16(a1)
    80001ed0:	00679713          	slli	a4,a5,0x6
    80001ed4:	00053783          	ld	a5,0(a0)
    80001ed8:	00e787b3          	add	a5,a5,a4
    80001edc:	00f53023          	sd	a5,0(a0)
    totalTaken -= newFreeSegment->noBlocks * MEM_BLOCK_SIZE;
    80001ee0:	ff05b783          	ld	a5,-16(a1)
    80001ee4:	00679713          	slli	a4,a5,0x6
    80001ee8:	00853783          	ld	a5,8(a0)
    80001eec:	40e787b3          	sub	a5,a5,a4
    80001ef0:	00f53423          	sd	a5,8(a0)

    SegmentDescriptor* after = freeMemoryHead, *prev = nullptr;
    80001ef4:	01853783          	ld	a5,24(a0)
    80001ef8:	00000713          	li	a4,0
    while (after && after < newFreeSegment) {
    80001efc:	00078a63          	beqz	a5,80001f10 <_ZN15MemoryAllocator9kmem_freeEPv+0x68>
    80001f00:	00d7f863          	bgeu	a5,a3,80001f10 <_ZN15MemoryAllocator9kmem_freeEPv+0x68>
        prev = after; after = after->next; }
    80001f04:	00078713          	mv	a4,a5
    80001f08:	0087b783          	ld	a5,8(a5)
    while (after && after < newFreeSegment) {
    80001f0c:	ff1ff06f          	j	80001efc <_ZN15MemoryAllocator9kmem_freeEPv+0x54>

    newFreeSegment->next = after;
    80001f10:	fef5bc23          	sd	a5,-8(a1)
    if (prev) prev->next = newFreeSegment;
    80001f14:	04070063          	beqz	a4,80001f54 <_ZN15MemoryAllocator9kmem_freeEPv+0xac>
    80001f18:	00d73423          	sd	a3,8(a4)
    else freeMemoryHead = newFreeSegment;

    if (prev && (uint8*) prev + prev->noBlocks * MEM_BLOCK_SIZE == (uint8*) newFreeSegment) {
    80001f1c:	00070a63          	beqz	a4,80001f30 <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
    80001f20:	00073503          	ld	a0,0(a4)
    80001f24:	00651613          	slli	a2,a0,0x6
    80001f28:	00c70633          	add	a2,a4,a2
    80001f2c:	02d60863          	beq	a2,a3,80001f5c <_ZN15MemoryAllocator9kmem_freeEPv+0xb4>
        prev->next = newFreeSegment->next;
        prev->noBlocks += newFreeSegment->noBlocks;
        newFreeSegment = prev;
    }

    if (after && (uint8*) newFreeSegment + newFreeSegment->noBlocks * MEM_BLOCK_SIZE == (uint8*) after) {
    80001f30:	00078a63          	beqz	a5,80001f44 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>
    80001f34:	0006b603          	ld	a2,0(a3)
    80001f38:	00661713          	slli	a4,a2,0x6
    80001f3c:	00e68733          	add	a4,a3,a4
    80001f40:	02f70c63          	beq	a4,a5,80001f78 <_ZN15MemoryAllocator9kmem_freeEPv+0xd0>
        newFreeSegment->next = after->next; newFreeSegment->noBlocks += after->noBlocks; }

    return 0;
}
    80001f44:	00000513          	li	a0,0
    80001f48:	00813403          	ld	s0,8(sp)
    80001f4c:	01010113          	addi	sp,sp,16
    80001f50:	00008067          	ret
    else freeMemoryHead = newFreeSegment;
    80001f54:	00d53c23          	sd	a3,24(a0)
    80001f58:	fc5ff06f          	j	80001f1c <_ZN15MemoryAllocator9kmem_freeEPv+0x74>
        prev->next = newFreeSegment->next;
    80001f5c:	ff85b683          	ld	a3,-8(a1)
    80001f60:	00d73423          	sd	a3,8(a4)
        prev->noBlocks += newFreeSegment->noBlocks;
    80001f64:	ff05b683          	ld	a3,-16(a1)
    80001f68:	00d50533          	add	a0,a0,a3
    80001f6c:	00a73023          	sd	a0,0(a4)
        newFreeSegment = prev;
    80001f70:	00070693          	mv	a3,a4
    80001f74:	fbdff06f          	j	80001f30 <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
        newFreeSegment->next = after->next; newFreeSegment->noBlocks += after->noBlocks; }
    80001f78:	0087b703          	ld	a4,8(a5)
    80001f7c:	00e6b423          	sd	a4,8(a3)
    80001f80:	0007b783          	ld	a5,0(a5)
    80001f84:	00f60633          	add	a2,a2,a5
    80001f88:	00c6b023          	sd	a2,0(a3)
    80001f8c:	fb9ff06f          	j	80001f44 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>

0000000080001f90 <_ZN15MemoryAllocator30printInstanceMemorySpaceParamsEv>:

void MemoryAllocator::printInstanceMemorySpaceParams() {
    80001f90:	fe010113          	addi	sp,sp,-32
    80001f94:	00113c23          	sd	ra,24(sp)
    80001f98:	00813823          	sd	s0,16(sp)
    80001f9c:	00913423          	sd	s1,8(sp)
    80001fa0:	01213023          	sd	s2,0(sp)
    80001fa4:	02010413          	addi	s0,sp,32
    80001fa8:	00050493          	mv	s1,a0
    printString("##################################\n\n");
    80001fac:	00004517          	auipc	a0,0x4
    80001fb0:	1c450513          	addi	a0,a0,452 # 80006170 <CONSOLE_STATUS+0x160>
    80001fb4:	00002097          	auipc	ra,0x2
    80001fb8:	83c080e7          	jalr	-1988(ra) # 800037f0 <_Z11printStringPKc>
    printString("MemoryAllocator address: "); printInteger((uint64)this); printString("\n");
    80001fbc:	00004517          	auipc	a0,0x4
    80001fc0:	1dc50513          	addi	a0,a0,476 # 80006198 <CONSOLE_STATUS+0x188>
    80001fc4:	00002097          	auipc	ra,0x2
    80001fc8:	82c080e7          	jalr	-2004(ra) # 800037f0 <_Z11printStringPKc>
    80001fcc:	00048513          	mv	a0,s1
    80001fd0:	00002097          	auipc	ra,0x2
    80001fd4:	890080e7          	jalr	-1904(ra) # 80003860 <_Z12printIntegerm>
    80001fd8:	00004517          	auipc	a0,0x4
    80001fdc:	0b050513          	addi	a0,a0,176 # 80006088 <CONSOLE_STATUS+0x78>
    80001fe0:	00002097          	auipc	ra,0x2
    80001fe4:	810080e7          	jalr	-2032(ra) # 800037f0 <_Z11printStringPKc>

    // size_t noBlocksForStoringMemoryAllocator = sizeof(MemoryAllocator) / MEM_BLOCK_SIZE + 1;
    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
    80001fe8:	02000513          	li	a0,32
    80001fec:	00000097          	auipc	ra,0x0
    80001ff0:	c38080e7          	jalr	-968(ra) # 80001c24 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001ff4:	00050913          	mv	s2,a0
    printString("noBlocksForStoringMemoryAllocator: ");
    80001ff8:	00004517          	auipc	a0,0x4
    80001ffc:	1c050513          	addi	a0,a0,448 # 800061b8 <CONSOLE_STATUS+0x1a8>
    80002000:	00001097          	auipc	ra,0x1
    80002004:	7f0080e7          	jalr	2032(ra) # 800037f0 <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator); printString("\n");
    80002008:	00090513          	mv	a0,s2
    8000200c:	00002097          	auipc	ra,0x2
    80002010:	854080e7          	jalr	-1964(ra) # 80003860 <_Z12printIntegerm>
    80002014:	00004517          	auipc	a0,0x4
    80002018:	07450513          	addi	a0,a0,116 # 80006088 <CONSOLE_STATUS+0x78>
    8000201c:	00001097          	auipc	ra,0x1
    80002020:	7d4080e7          	jalr	2004(ra) # 800037f0 <_Z11printStringPKc>
    printString("noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE: ");
    80002024:	00004517          	auipc	a0,0x4
    80002028:	1bc50513          	addi	a0,a0,444 # 800061e0 <CONSOLE_STATUS+0x1d0>
    8000202c:	00001097          	auipc	ra,0x1
    80002030:	7c4080e7          	jalr	1988(ra) # 800037f0 <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE); printString("\n\n");
    80002034:	00691513          	slli	a0,s2,0x6
    80002038:	00002097          	auipc	ra,0x2
    8000203c:	828080e7          	jalr	-2008(ra) # 80003860 <_Z12printIntegerm>
    80002040:	00004517          	auipc	a0,0x4
    80002044:	1d850513          	addi	a0,a0,472 # 80006218 <CONSOLE_STATUS+0x208>
    80002048:	00001097          	auipc	ra,0x1
    8000204c:	7a8080e7          	jalr	1960(ra) # 800037f0 <_Z11printStringPKc>

    printString("Managed memory space start: ");
    80002050:	00004517          	auipc	a0,0x4
    80002054:	1d050513          	addi	a0,a0,464 # 80006220 <CONSOLE_STATUS+0x210>
    80002058:	00001097          	auipc	ra,0x1
    8000205c:	798080e7          	jalr	1944(ra) # 800037f0 <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceStart); printString("\n");
    80002060:	00005917          	auipc	s2,0x5
    80002064:	1f090913          	addi	s2,s2,496 # 80007250 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    80002068:	01093503          	ld	a0,16(s2)
    8000206c:	00001097          	auipc	ra,0x1
    80002070:	7f4080e7          	jalr	2036(ra) # 80003860 <_Z12printIntegerm>
    80002074:	00004517          	auipc	a0,0x4
    80002078:	01450513          	addi	a0,a0,20 # 80006088 <CONSOLE_STATUS+0x78>
    8000207c:	00001097          	auipc	ra,0x1
    80002080:	774080e7          	jalr	1908(ra) # 800037f0 <_Z11printStringPKc>
    printString("Managed memory space end: ");
    80002084:	00004517          	auipc	a0,0x4
    80002088:	1bc50513          	addi	a0,a0,444 # 80006240 <CONSOLE_STATUS+0x230>
    8000208c:	00001097          	auipc	ra,0x1
    80002090:	764080e7          	jalr	1892(ra) # 800037f0 <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceEnd); printString("\n\n");
    80002094:	00093503          	ld	a0,0(s2)
    80002098:	00001097          	auipc	ra,0x1
    8000209c:	7c8080e7          	jalr	1992(ra) # 80003860 <_Z12printIntegerm>
    800020a0:	00004517          	auipc	a0,0x4
    800020a4:	17850513          	addi	a0,a0,376 # 80006218 <CONSOLE_STATUS+0x208>
    800020a8:	00001097          	auipc	ra,0x1
    800020ac:	748080e7          	jalr	1864(ra) # 800037f0 <_Z11printStringPKc>

    printString("Total Free: "); printInteger(getTotalFree()); printString("\n");
    800020b0:	00004517          	auipc	a0,0x4
    800020b4:	1b050513          	addi	a0,a0,432 # 80006260 <CONSOLE_STATUS+0x250>
    800020b8:	00001097          	auipc	ra,0x1
    800020bc:	738080e7          	jalr	1848(ra) # 800037f0 <_Z11printStringPKc>
    800020c0:	0004b503          	ld	a0,0(s1)
    800020c4:	00001097          	auipc	ra,0x1
    800020c8:	79c080e7          	jalr	1948(ra) # 80003860 <_Z12printIntegerm>
    800020cc:	00004517          	auipc	a0,0x4
    800020d0:	fbc50513          	addi	a0,a0,-68 # 80006088 <CONSOLE_STATUS+0x78>
    800020d4:	00001097          	auipc	ra,0x1
    800020d8:	71c080e7          	jalr	1820(ra) # 800037f0 <_Z11printStringPKc>
    printString("Total Taken: "); printInteger(getTotalTaken()); printString("\n");
    800020dc:	00004517          	auipc	a0,0x4
    800020e0:	19450513          	addi	a0,a0,404 # 80006270 <CONSOLE_STATUS+0x260>
    800020e4:	00001097          	auipc	ra,0x1
    800020e8:	70c080e7          	jalr	1804(ra) # 800037f0 <_Z11printStringPKc>
    800020ec:	0084b503          	ld	a0,8(s1)
    800020f0:	00001097          	auipc	ra,0x1
    800020f4:	770080e7          	jalr	1904(ra) # 80003860 <_Z12printIntegerm>
    800020f8:	00004517          	auipc	a0,0x4
    800020fc:	f9050513          	addi	a0,a0,-112 # 80006088 <CONSOLE_STATUS+0x78>
    80002100:	00001097          	auipc	ra,0x1
    80002104:	6f0080e7          	jalr	1776(ra) # 800037f0 <_Z11printStringPKc>
    printString("Free Block No: "); printInteger(getFreeBlockNo()); printString("\n");
    80002108:	00004517          	auipc	a0,0x4
    8000210c:	17850513          	addi	a0,a0,376 # 80006280 <CONSOLE_STATUS+0x270>
    80002110:	00001097          	auipc	ra,0x1
    80002114:	6e0080e7          	jalr	1760(ra) # 800037f0 <_Z11printStringPKc>
    80002118:	0104b503          	ld	a0,16(s1)
    8000211c:	00001097          	auipc	ra,0x1
    80002120:	744080e7          	jalr	1860(ra) # 80003860 <_Z12printIntegerm>
    80002124:	00004517          	auipc	a0,0x4
    80002128:	f6450513          	addi	a0,a0,-156 # 80006088 <CONSOLE_STATUS+0x78>
    8000212c:	00001097          	auipc	ra,0x1
    80002130:	6c4080e7          	jalr	1732(ra) # 800037f0 <_Z11printStringPKc>
    printString("\n##################################\n");
    80002134:	00004517          	auipc	a0,0x4
    80002138:	15c50513          	addi	a0,a0,348 # 80006290 <CONSOLE_STATUS+0x280>
    8000213c:	00001097          	auipc	ra,0x1
    80002140:	6b4080e7          	jalr	1716(ra) # 800037f0 <_Z11printStringPKc>
}
    80002144:	01813083          	ld	ra,24(sp)
    80002148:	01013403          	ld	s0,16(sp)
    8000214c:	00813483          	ld	s1,8(sp)
    80002150:	00013903          	ld	s2,0(sp)
    80002154:	02010113          	addi	sp,sp,32
    80002158:	00008067          	ret

000000008000215c <_ZN15MemoryAllocator22printMemorySpaceParamsEv>:

void MemoryAllocator::printMemorySpaceParams() {
    8000215c:	fe010113          	addi	sp,sp,-32
    80002160:	00113c23          	sd	ra,24(sp)
    80002164:	00813823          	sd	s0,16(sp)
    80002168:	00913423          	sd	s1,8(sp)
    8000216c:	01213023          	sd	s2,0(sp)
    80002170:	02010413          	addi	s0,sp,32
    printString("----------------------------------\n\n");
    80002174:	00004517          	auipc	a0,0x4
    80002178:	14450513          	addi	a0,a0,324 # 800062b8 <CONSOLE_STATUS+0x2a8>
    8000217c:	00001097          	auipc	ra,0x1
    80002180:	674080e7          	jalr	1652(ra) # 800037f0 <_Z11printStringPKc>
    printString("Size of MemoryAllocator class: ");
    80002184:	00004517          	auipc	a0,0x4
    80002188:	15c50513          	addi	a0,a0,348 # 800062e0 <CONSOLE_STATUS+0x2d0>
    8000218c:	00001097          	auipc	ra,0x1
    80002190:	664080e7          	jalr	1636(ra) # 800037f0 <_Z11printStringPKc>
    printInteger(sizeof(MemoryAllocator)); printString("\n");
    80002194:	02000513          	li	a0,32
    80002198:	00001097          	auipc	ra,0x1
    8000219c:	6c8080e7          	jalr	1736(ra) # 80003860 <_Z12printIntegerm>
    800021a0:	00004517          	auipc	a0,0x4
    800021a4:	ee850513          	addi	a0,a0,-280 # 80006088 <CONSOLE_STATUS+0x78>
    800021a8:	00001097          	auipc	ra,0x1
    800021ac:	648080e7          	jalr	1608(ra) # 800037f0 <_Z11printStringPKc>

    printString("HEAP_START_ADDR: "); printInteger((uint64)HEAP_START_ADDR); printString("\n");
    800021b0:	00004517          	auipc	a0,0x4
    800021b4:	17050513          	addi	a0,a0,368 # 80006320 <CONSOLE_STATUS+0x310>
    800021b8:	00001097          	auipc	ra,0x1
    800021bc:	638080e7          	jalr	1592(ra) # 800037f0 <_Z11printStringPKc>
    800021c0:	00005497          	auipc	s1,0x5
    800021c4:	fd04b483          	ld	s1,-48(s1) # 80007190 <_GLOBAL_OFFSET_TABLE_+0x8>
    800021c8:	0004b503          	ld	a0,0(s1)
    800021cc:	00001097          	auipc	ra,0x1
    800021d0:	694080e7          	jalr	1684(ra) # 80003860 <_Z12printIntegerm>
    800021d4:	00004517          	auipc	a0,0x4
    800021d8:	eb450513          	addi	a0,a0,-332 # 80006088 <CONSOLE_STATUS+0x78>
    800021dc:	00001097          	auipc	ra,0x1
    800021e0:	614080e7          	jalr	1556(ra) # 800037f0 <_Z11printStringPKc>
    printString("HEAP_END_ADDR: "); printInteger((uint64)HEAP_END_ADDR); printString("\n");
    800021e4:	00004517          	auipc	a0,0x4
    800021e8:	11c50513          	addi	a0,a0,284 # 80006300 <CONSOLE_STATUS+0x2f0>
    800021ec:	00001097          	auipc	ra,0x1
    800021f0:	604080e7          	jalr	1540(ra) # 800037f0 <_Z11printStringPKc>
    800021f4:	00005917          	auipc	s2,0x5
    800021f8:	fe493903          	ld	s2,-28(s2) # 800071d8 <_GLOBAL_OFFSET_TABLE_+0x50>
    800021fc:	00093503          	ld	a0,0(s2)
    80002200:	00001097          	auipc	ra,0x1
    80002204:	660080e7          	jalr	1632(ra) # 80003860 <_Z12printIntegerm>
    80002208:	00004517          	auipc	a0,0x4
    8000220c:	e8050513          	addi	a0,a0,-384 # 80006088 <CONSOLE_STATUS+0x78>
    80002210:	00001097          	auipc	ra,0x1
    80002214:	5e0080e7          	jalr	1504(ra) # 800037f0 <_Z11printStringPKc>

    printString("HEAP_END_ADDR - HEAP_START_ADDR: ");
    80002218:	00004517          	auipc	a0,0x4
    8000221c:	0f850513          	addi	a0,a0,248 # 80006310 <CONSOLE_STATUS+0x300>
    80002220:	00001097          	auipc	ra,0x1
    80002224:	5d0080e7          	jalr	1488(ra) # 800037f0 <_Z11printStringPKc>
    printInteger((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)); printString("\n");
    80002228:	00093503          	ld	a0,0(s2)
    8000222c:	0004b783          	ld	a5,0(s1)
    80002230:	40f50533          	sub	a0,a0,a5
    80002234:	00001097          	auipc	ra,0x1
    80002238:	62c080e7          	jalr	1580(ra) # 80003860 <_Z12printIntegerm>
    8000223c:	00004517          	auipc	a0,0x4
    80002240:	e4c50513          	addi	a0,a0,-436 # 80006088 <CONSOLE_STATUS+0x78>
    80002244:	00001097          	auipc	ra,0x1
    80002248:	5ac080e7          	jalr	1452(ra) # 800037f0 <_Z11printStringPKc>

    printString("MEM_BLOCK_SIZE: "); printInteger(MEM_BLOCK_SIZE); printString("\n");
    8000224c:	00004517          	auipc	a0,0x4
    80002250:	0ec50513          	addi	a0,a0,236 # 80006338 <CONSOLE_STATUS+0x328>
    80002254:	00001097          	auipc	ra,0x1
    80002258:	59c080e7          	jalr	1436(ra) # 800037f0 <_Z11printStringPKc>
    8000225c:	04000513          	li	a0,64
    80002260:	00001097          	auipc	ra,0x1
    80002264:	600080e7          	jalr	1536(ra) # 80003860 <_Z12printIntegerm>
    80002268:	00004517          	auipc	a0,0x4
    8000226c:	e2050513          	addi	a0,a0,-480 # 80006088 <CONSOLE_STATUS+0x78>
    80002270:	00001097          	auipc	ra,0x1
    80002274:	580080e7          	jalr	1408(ra) # 800037f0 <_Z11printStringPKc>

    printString("Number of blocks in (HEAP_END_ADDR - HEAP_START_ADDR): ");
    80002278:	00004517          	auipc	a0,0x4
    8000227c:	0d850513          	addi	a0,a0,216 # 80006350 <CONSOLE_STATUS+0x340>
    80002280:	00001097          	auipc	ra,0x1
    80002284:	570080e7          	jalr	1392(ra) # 800037f0 <_Z11printStringPKc>
    printInteger(((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)) / MEM_BLOCK_SIZE);
    80002288:	00093503          	ld	a0,0(s2)
    8000228c:	0004b783          	ld	a5,0(s1)
    80002290:	40f50533          	sub	a0,a0,a5
    80002294:	00655513          	srli	a0,a0,0x6
    80002298:	00001097          	auipc	ra,0x1
    8000229c:	5c8080e7          	jalr	1480(ra) # 80003860 <_Z12printIntegerm>
    printString("\n");
    800022a0:	00004517          	auipc	a0,0x4
    800022a4:	de850513          	addi	a0,a0,-536 # 80006088 <CONSOLE_STATUS+0x78>
    800022a8:	00001097          	auipc	ra,0x1
    800022ac:	548080e7          	jalr	1352(ra) # 800037f0 <_Z11printStringPKc>
    printString("\n----------------------------------\n");
    800022b0:	00004517          	auipc	a0,0x4
    800022b4:	0d850513          	addi	a0,a0,216 # 80006388 <CONSOLE_STATUS+0x378>
    800022b8:	00001097          	auipc	ra,0x1
    800022bc:	538080e7          	jalr	1336(ra) # 800037f0 <_Z11printStringPKc>
}
    800022c0:	01813083          	ld	ra,24(sp)
    800022c4:	01013403          	ld	s0,16(sp)
    800022c8:	00813483          	ld	s1,8(sp)
    800022cc:	00013903          	ld	s2,0(sp)
    800022d0:	02010113          	addi	sp,sp,32
    800022d4:	00008067          	ret

00000000800022d8 <_ZN15MemoryAllocator23printFreeMemoryHeadDataEv>:

void MemoryAllocator::printFreeMemoryHeadData() {
    800022d8:	fe010113          	addi	sp,sp,-32
    800022dc:	00113c23          	sd	ra,24(sp)
    800022e0:	00813823          	sd	s0,16(sp)
    800022e4:	00913423          	sd	s1,8(sp)
    800022e8:	02010413          	addi	s0,sp,32
    800022ec:	00050493          	mv	s1,a0
    printString("##################################\n\n");
    800022f0:	00004517          	auipc	a0,0x4
    800022f4:	e8050513          	addi	a0,a0,-384 # 80006170 <CONSOLE_STATUS+0x160>
    800022f8:	00001097          	auipc	ra,0x1
    800022fc:	4f8080e7          	jalr	1272(ra) # 800037f0 <_Z11printStringPKc>
    printString("freeMemoryHead: ");
    80002300:	00004517          	auipc	a0,0x4
    80002304:	0b050513          	addi	a0,a0,176 # 800063b0 <CONSOLE_STATUS+0x3a0>
    80002308:	00001097          	auipc	ra,0x1
    8000230c:	4e8080e7          	jalr	1256(ra) # 800037f0 <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead); printString("\n");
    80002310:	0184b503          	ld	a0,24(s1)
    80002314:	00001097          	auipc	ra,0x1
    80002318:	54c080e7          	jalr	1356(ra) # 80003860 <_Z12printIntegerm>
    8000231c:	00004517          	auipc	a0,0x4
    80002320:	d6c50513          	addi	a0,a0,-660 # 80006088 <CONSOLE_STATUS+0x78>
    80002324:	00001097          	auipc	ra,0x1
    80002328:	4cc080e7          	jalr	1228(ra) # 800037f0 <_Z11printStringPKc>
    printString("freeMemoryHead->noBlocks: ");
    8000232c:	00004517          	auipc	a0,0x4
    80002330:	09c50513          	addi	a0,a0,156 # 800063c8 <CONSOLE_STATUS+0x3b8>
    80002334:	00001097          	auipc	ra,0x1
    80002338:	4bc080e7          	jalr	1212(ra) # 800037f0 <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead->noBlocks); printString("\n");
    8000233c:	0184b783          	ld	a5,24(s1)
    80002340:	0007b503          	ld	a0,0(a5)
    80002344:	00001097          	auipc	ra,0x1
    80002348:	51c080e7          	jalr	1308(ra) # 80003860 <_Z12printIntegerm>
    8000234c:	00004517          	auipc	a0,0x4
    80002350:	d3c50513          	addi	a0,a0,-708 # 80006088 <CONSOLE_STATUS+0x78>
    80002354:	00001097          	auipc	ra,0x1
    80002358:	49c080e7          	jalr	1180(ra) # 800037f0 <_Z11printStringPKc>
    printString("freeMemoryHead->next: ");
    8000235c:	00004517          	auipc	a0,0x4
    80002360:	08c50513          	addi	a0,a0,140 # 800063e8 <CONSOLE_STATUS+0x3d8>
    80002364:	00001097          	auipc	ra,0x1
    80002368:	48c080e7          	jalr	1164(ra) # 800037f0 <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead->next); printString("\n");
    8000236c:	0184b783          	ld	a5,24(s1)
    80002370:	0087b503          	ld	a0,8(a5)
    80002374:	00001097          	auipc	ra,0x1
    80002378:	4ec080e7          	jalr	1260(ra) # 80003860 <_Z12printIntegerm>
    8000237c:	00004517          	auipc	a0,0x4
    80002380:	d0c50513          	addi	a0,a0,-756 # 80006088 <CONSOLE_STATUS+0x78>
    80002384:	00001097          	auipc	ra,0x1
    80002388:	46c080e7          	jalr	1132(ra) # 800037f0 <_Z11printStringPKc>
    printString("Segment Descriptor size: ");
    8000238c:	00004517          	auipc	a0,0x4
    80002390:	07450513          	addi	a0,a0,116 # 80006400 <CONSOLE_STATUS+0x3f0>
    80002394:	00001097          	auipc	ra,0x1
    80002398:	45c080e7          	jalr	1116(ra) # 800037f0 <_Z11printStringPKc>
    printInteger(sizeof(*freeMemoryHead)); printString("\n");
    8000239c:	01000513          	li	a0,16
    800023a0:	00001097          	auipc	ra,0x1
    800023a4:	4c0080e7          	jalr	1216(ra) # 80003860 <_Z12printIntegerm>
    800023a8:	00004517          	auipc	a0,0x4
    800023ac:	ce050513          	addi	a0,a0,-800 # 80006088 <CONSOLE_STATUS+0x78>
    800023b0:	00001097          	auipc	ra,0x1
    800023b4:	440080e7          	jalr	1088(ra) # 800037f0 <_Z11printStringPKc>
    printString("\n##################################\n");
    800023b8:	00004517          	auipc	a0,0x4
    800023bc:	ed850513          	addi	a0,a0,-296 # 80006290 <CONSOLE_STATUS+0x280>
    800023c0:	00001097          	auipc	ra,0x1
    800023c4:	430080e7          	jalr	1072(ra) # 800037f0 <_Z11printStringPKc>
}
    800023c8:	01813083          	ld	ra,24(sp)
    800023cc:	01013403          	ld	s0,16(sp)
    800023d0:	00813483          	ld	s1,8(sp)
    800023d4:	02010113          	addi	sp,sp,32
    800023d8:	00008067          	ret

00000000800023dc <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv>:
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    return beforeTestFreeBlockNo == afterTestFreeBlockNo - minNoBlocksForSize - addendForSegDesc;

}

size_t MemoryAllocatorTest::getFreeBlocksCnt() {
    800023dc:	ff010113          	addi	sp,sp,-16
    800023e0:	00113423          	sd	ra,8(sp)
    800023e4:	00813023          	sd	s0,0(sp)
    800023e8:	01010413          	addi	s0,sp,16
    MemoryAllocator::SegmentDescriptor* freeMemHead = MemoryAllocator::instance()->freeMemoryHead;
    800023ec:	00000097          	auipc	ra,0x0
    800023f0:	930080e7          	jalr	-1744(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    800023f4:	01853783          	ld	a5,24(a0)
    size_t blockCnt = 0;
    800023f8:	00000513          	li	a0,0
    while (freeMemHead) {
    800023fc:	00078a63          	beqz	a5,80002410 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv+0x34>
        blockCnt += freeMemHead->noBlocks;
    80002400:	0007b703          	ld	a4,0(a5)
    80002404:	00e50533          	add	a0,a0,a4
        freeMemHead = freeMemHead->next;
    80002408:	0087b783          	ld	a5,8(a5)
    while (freeMemHead) {
    8000240c:	ff1ff06f          	j	800023fc <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv+0x20>
    }
    return blockCnt;
}
    80002410:	00813083          	ld	ra,8(sp)
    80002414:	00013403          	ld	s0,0(sp)
    80002418:	01010113          	addi	sp,sp,16
    8000241c:	00008067          	ret

0000000080002420 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>:

bool MemoryAllocatorTest::testMemoryMetadataValidity() {
    80002420:	fd010113          	addi	sp,sp,-48
    80002424:	02113423          	sd	ra,40(sp)
    80002428:	02813023          	sd	s0,32(sp)
    8000242c:	00913c23          	sd	s1,24(sp)
    80002430:	01213823          	sd	s2,16(sp)
    80002434:	01313423          	sd	s3,8(sp)
    80002438:	01413023          	sd	s4,0(sp)
    8000243c:	03010413          	addi	s0,sp,48
    80002440:	00050913          	mv	s2,a0
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002444:	00000097          	auipc	ra,0x0
    80002448:	8d8080e7          	jalr	-1832(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>

    void* kmem_alloc(size_t size);
    int kmem_free(void* newFree);
    void printInstanceMemorySpaceParams();
    void printFreeMemoryHeadData();
    size_t getTotalFree() { return totalFree; }
    8000244c:	00053483          	ld	s1,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002450:	00000097          	auipc	ra,0x0
    80002454:	8cc080e7          	jalr	-1844(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    80002458:	00853a03          	ld	s4,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    8000245c:	00000097          	auipc	ra,0x0
    80002460:	8c0080e7          	jalr	-1856(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002464:	01053983          	ld	s3,16(a0)
    size_t freeBlocksCnt = getFreeBlocksCnt();
    80002468:	00090513          	mv	a0,s2
    8000246c:	00000097          	auipc	ra,0x0
    80002470:	f70080e7          	jalr	-144(ra) # 800023dc <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv>

    if (freeBlocksCnt != beforeTestFreeBlockNo) return false;
    80002474:	02a99c63          	bne	s3,a0,800024ac <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x8c>
    if (freeBlocksCnt != beforeTestTotalFree / MEM_BLOCK_SIZE) return false;
    80002478:	0064d793          	srli	a5,s1,0x6
    8000247c:	04a79a63          	bne	a5,a0,800024d0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0xb0>

    size_t totalMemory = (size_t) (MemoryAllocator::managedMemorySpaceEnd - MemoryAllocator::managedMemorySpaceStart);
    80002480:	00005797          	auipc	a5,0x5
    80002484:	d187b783          	ld	a5,-744(a5) # 80007198 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002488:	0007b503          	ld	a0,0(a5)
    8000248c:	00005797          	auipc	a5,0x5
    80002490:	d647b783          	ld	a5,-668(a5) # 800071f0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002494:	0007b783          	ld	a5,0(a5)
    80002498:	40f507b3          	sub	a5,a0,a5
    return totalMemory == beforeTestTotalFree + beforeTestTotalTaken;
    8000249c:	01448533          	add	a0,s1,s4
    800024a0:	40f50533          	sub	a0,a0,a5
    800024a4:	00153513          	seqz	a0,a0
    800024a8:	0080006f          	j	800024b0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x90>
    if (freeBlocksCnt != beforeTestFreeBlockNo) return false;
    800024ac:	00000513          	li	a0,0
}
    800024b0:	02813083          	ld	ra,40(sp)
    800024b4:	02013403          	ld	s0,32(sp)
    800024b8:	01813483          	ld	s1,24(sp)
    800024bc:	01013903          	ld	s2,16(sp)
    800024c0:	00813983          	ld	s3,8(sp)
    800024c4:	00013a03          	ld	s4,0(sp)
    800024c8:	03010113          	addi	sp,sp,48
    800024cc:	00008067          	ret
    if (freeBlocksCnt != beforeTestTotalFree / MEM_BLOCK_SIZE) return false;
    800024d0:	00000513          	li	a0,0
    800024d4:	fddff06f          	j	800024b0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x90>

00000000800024d8 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>:
bool MemoryAllocatorTest::testMemoryAllocate(uint64 size, void** allocatedMemoryPointer) {
    800024d8:	fa010113          	addi	sp,sp,-96
    800024dc:	04113c23          	sd	ra,88(sp)
    800024e0:	04813823          	sd	s0,80(sp)
    800024e4:	04913423          	sd	s1,72(sp)
    800024e8:	05213023          	sd	s2,64(sp)
    800024ec:	03313c23          	sd	s3,56(sp)
    800024f0:	03413823          	sd	s4,48(sp)
    800024f4:	03513423          	sd	s5,40(sp)
    800024f8:	03613023          	sd	s6,32(sp)
    800024fc:	01713c23          	sd	s7,24(sp)
    80002500:	01813823          	sd	s8,16(sp)
    80002504:	01913423          	sd	s9,8(sp)
    80002508:	01a13023          	sd	s10,0(sp)
    8000250c:	06010413          	addi	s0,sp,96
    80002510:	00050a13          	mv	s4,a0
    80002514:	00058913          	mv	s2,a1
    80002518:	00060993          	mv	s3,a2
    if (!testMemoryMetadataValidity()) return false;
    8000251c:	00000097          	auipc	ra,0x0
    80002520:	f04080e7          	jalr	-252(ra) # 80002420 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002524:	00050493          	mv	s1,a0
    80002528:	04051063          	bnez	a0,80002568 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x90>
}
    8000252c:	00048513          	mv	a0,s1
    80002530:	05813083          	ld	ra,88(sp)
    80002534:	05013403          	ld	s0,80(sp)
    80002538:	04813483          	ld	s1,72(sp)
    8000253c:	04013903          	ld	s2,64(sp)
    80002540:	03813983          	ld	s3,56(sp)
    80002544:	03013a03          	ld	s4,48(sp)
    80002548:	02813a83          	ld	s5,40(sp)
    8000254c:	02013b03          	ld	s6,32(sp)
    80002550:	01813b83          	ld	s7,24(sp)
    80002554:	01013c03          	ld	s8,16(sp)
    80002558:	00813c83          	ld	s9,8(sp)
    8000255c:	00013d03          	ld	s10,0(sp)
    80002560:	06010113          	addi	sp,sp,96
    80002564:	00008067          	ret
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002568:	fffff097          	auipc	ra,0xfffff
    8000256c:	7b4080e7          	jalr	1972(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    80002570:	00053b03          	ld	s6,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002574:	fffff097          	auipc	ra,0xfffff
    80002578:	7a8080e7          	jalr	1960(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    8000257c:	00853b83          	ld	s7,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    80002580:	fffff097          	auipc	ra,0xfffff
    80002584:	79c080e7          	jalr	1948(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002588:	01053c03          	ld	s8,16(a0)
    *allocatedMemoryPointer = MemoryAllocator::instance()->kmem_alloc(size);
    8000258c:	fffff097          	auipc	ra,0xfffff
    80002590:	790080e7          	jalr	1936(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002594:	00090593          	mv	a1,s2
    80002598:	00000097          	auipc	ra,0x0
    8000259c:	868080e7          	jalr	-1944(ra) # 80001e00 <_ZN15MemoryAllocator10kmem_allocEm>
    800025a0:	00050a93          	mv	s5,a0
    800025a4:	00a9b023          	sd	a0,0(s3)
    if (*allocatedMemoryPointer == nullptr && size == (uint64) -37) return true;
    800025a8:	08050663          	beqz	a0,80002634 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x15c>
    size_t minNoBlocksForSize = MemoryAllocator::getMinBlockNumber(size);
    800025ac:	00090513          	mv	a0,s2
    800025b0:	fffff097          	auipc	ra,0xfffff
    800025b4:	674080e7          	jalr	1652(ra) # 80001c24 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    800025b8:	00050993          	mv	s3,a0
    size_t addendForSegDesc = minNoBlocksForSize * MEM_BLOCK_SIZE - size < sizeof(MemoryAllocator::SegmentDescriptor);
    800025bc:	00651593          	slli	a1,a0,0x6
    800025c0:	41258933          	sub	s2,a1,s2
    800025c4:	01093913          	sltiu	s2,s2,16
    size_t allocatedMemory = (minNoBlocksForSize + addendForSegDesc) * MEM_BLOCK_SIZE;
    800025c8:	01250cb3          	add	s9,a0,s2
    800025cc:	006c9d13          	slli	s10,s9,0x6
    if (!testMemoryMetadataValidity()) return false;
    800025d0:	000a0513          	mv	a0,s4
    800025d4:	00000097          	auipc	ra,0x0
    800025d8:	e4c080e7          	jalr	-436(ra) # 80002420 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800025dc:	00050493          	mv	s1,a0
    800025e0:	f40506e3          	beqz	a0,8000252c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    size_t afterTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    800025e4:	fffff097          	auipc	ra,0xfffff
    800025e8:	738080e7          	jalr	1848(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    800025ec:	00053483          	ld	s1,0(a0)
    size_t afterTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    800025f0:	fffff097          	auipc	ra,0xfffff
    800025f4:	72c080e7          	jalr	1836(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800025f8:	00853a03          	ld	s4,8(a0)
    size_t afterTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    800025fc:	fffff097          	auipc	ra,0xfffff
    80002600:	720080e7          	jalr	1824(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002604:	01053783          	ld	a5,16(a0)
    if (beforeTestTotalFree != afterTestTotalFree + allocatedMemory) return false;
    80002608:	01a484b3          	add	s1,s1,s10
    8000260c:	03649a63          	bne	s1,s6,80002640 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x168>
    if (beforeTestTotalTaken != afterTestTotalTaken - allocatedMemory) return false;
    80002610:	41aa0d33          	sub	s10,s4,s10
    80002614:	037d1a63          	bne	s10,s7,80002648 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x170>
    if (beforeTestFreeBlockNo != afterTestFreeBlockNo + minNoBlocksForSize + addendForSegDesc) return false;
    80002618:	013789b3          	add	s3,a5,s3
    8000261c:	01298933          	add	s2,s3,s2
    80002620:	03891863          	bne	s2,s8,80002650 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x178>
    return segDesc->noBlocks == minNoBlocksForSize + addendForSegDesc;
    80002624:	ff0ab483          	ld	s1,-16(s5)
    80002628:	409c84b3          	sub	s1,s9,s1
    8000262c:	0014b493          	seqz	s1,s1
    80002630:	efdff06f          	j	8000252c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (*allocatedMemoryPointer == nullptr && size == (uint64) -37) return true;
    80002634:	fdb00793          	li	a5,-37
    80002638:	f6f91ae3          	bne	s2,a5,800025ac <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0xd4>
    8000263c:	ef1ff06f          	j	8000252c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestTotalFree != afterTestTotalFree + allocatedMemory) return false;
    80002640:	00000493          	li	s1,0
    80002644:	ee9ff06f          	j	8000252c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestTotalTaken != afterTestTotalTaken - allocatedMemory) return false;
    80002648:	00000493          	li	s1,0
    8000264c:	ee1ff06f          	j	8000252c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestFreeBlockNo != afterTestFreeBlockNo + minNoBlocksForSize + addendForSegDesc) return false;
    80002650:	00000493          	li	s1,0
    80002654:	ed9ff06f          	j	8000252c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>

0000000080002658 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>:
bool MemoryAllocatorTest::testMemoryFree(uint64 size, void* allocatedMemoryPointer) {
    80002658:	fb010113          	addi	sp,sp,-80
    8000265c:	04113423          	sd	ra,72(sp)
    80002660:	04813023          	sd	s0,64(sp)
    80002664:	02913c23          	sd	s1,56(sp)
    80002668:	03213823          	sd	s2,48(sp)
    8000266c:	03313423          	sd	s3,40(sp)
    80002670:	03413023          	sd	s4,32(sp)
    80002674:	01513c23          	sd	s5,24(sp)
    80002678:	01613823          	sd	s6,16(sp)
    8000267c:	01713423          	sd	s7,8(sp)
    80002680:	01813023          	sd	s8,0(sp)
    80002684:	05010413          	addi	s0,sp,80
    80002688:	00050a13          	mv	s4,a0
    8000268c:	00058913          	mv	s2,a1
    80002690:	00060493          	mv	s1,a2
    if (!testMemoryMetadataValidity()) return false;
    80002694:	00000097          	auipc	ra,0x0
    80002698:	d8c080e7          	jalr	-628(ra) # 80002420 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    8000269c:	02051a63          	bnez	a0,800026d0 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x78>
}
    800026a0:	04813083          	ld	ra,72(sp)
    800026a4:	04013403          	ld	s0,64(sp)
    800026a8:	03813483          	ld	s1,56(sp)
    800026ac:	03013903          	ld	s2,48(sp)
    800026b0:	02813983          	ld	s3,40(sp)
    800026b4:	02013a03          	ld	s4,32(sp)
    800026b8:	01813a83          	ld	s5,24(sp)
    800026bc:	01013b03          	ld	s6,16(sp)
    800026c0:	00813b83          	ld	s7,8(sp)
    800026c4:	00013c03          	ld	s8,0(sp)
    800026c8:	05010113          	addi	sp,sp,80
    800026cc:	00008067          	ret
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    800026d0:	fffff097          	auipc	ra,0xfffff
    800026d4:	64c080e7          	jalr	1612(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    800026d8:	00053b03          	ld	s6,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    800026dc:	fffff097          	auipc	ra,0xfffff
    800026e0:	640080e7          	jalr	1600(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800026e4:	00853b83          	ld	s7,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    800026e8:	fffff097          	auipc	ra,0xfffff
    800026ec:	634080e7          	jalr	1588(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    800026f0:	01053a83          	ld	s5,16(a0)
    size_t minNoBlocksForSize = MemoryAllocator::getMinBlockNumber(size);
    800026f4:	00090513          	mv	a0,s2
    800026f8:	fffff097          	auipc	ra,0xfffff
    800026fc:	52c080e7          	jalr	1324(ra) # 80001c24 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80002700:	00050993          	mv	s3,a0
    size_t addendForSegDesc = minNoBlocksForSize * MEM_BLOCK_SIZE - size < sizeof(MemoryAllocator::SegmentDescriptor);
    80002704:	00651593          	slli	a1,a0,0x6
    80002708:	41258933          	sub	s2,a1,s2
    8000270c:	01093913          	sltiu	s2,s2,16
    size_t allocatedMemory = (minNoBlocksForSize + addendForSegDesc) * MEM_BLOCK_SIZE;
    80002710:	01250733          	add	a4,a0,s2
    80002714:	00671c13          	slli	s8,a4,0x6
    if (!allocatedMemoryPointer) {
    80002718:	08048463          	beqz	s1,800027a0 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x148>
    if (allocatedMemoryPointer) segDesc = (MemoryAllocator::SegmentDescriptor*)
    8000271c:	08048a63          	beqz	s1,800027b0 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x158>
    80002720:	ff048793          	addi	a5,s1,-16
    if (allocatedMemoryPointer)
    80002724:	00048863          	beqz	s1,80002734 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xdc>
    if (segDesc->noBlocks != minNoBlocksForSize + addendForSegDesc) return false;
    80002728:	0007b703          	ld	a4,0(a5)
    8000272c:	012987b3          	add	a5,s3,s2
    80002730:	08f71463          	bne	a4,a5,800027b8 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x160>
    MemoryAllocator::instance()->kmem_free(allocatedMemoryPointer);
    80002734:	fffff097          	auipc	ra,0xfffff
    80002738:	5e8080e7          	jalr	1512(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    8000273c:	00048593          	mv	a1,s1
    80002740:	fffff097          	auipc	ra,0xfffff
    80002744:	768080e7          	jalr	1896(ra) # 80001ea8 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002748:	000a0513          	mv	a0,s4
    8000274c:	00000097          	auipc	ra,0x0
    80002750:	cd4080e7          	jalr	-812(ra) # 80002420 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002754:	f40506e3          	beqz	a0,800026a0 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    size_t afterTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002758:	fffff097          	auipc	ra,0xfffff
    8000275c:	5c4080e7          	jalr	1476(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    80002760:	00053483          	ld	s1,0(a0)
    size_t afterTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002764:	fffff097          	auipc	ra,0xfffff
    80002768:	5b8080e7          	jalr	1464(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    8000276c:	00853a03          	ld	s4,8(a0)
    size_t afterTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    80002770:	fffff097          	auipc	ra,0xfffff
    80002774:	5ac080e7          	jalr	1452(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002778:	01053783          	ld	a5,16(a0)
    if (beforeTestTotalFree != afterTestTotalFree - allocatedMemory) return false;
    8000277c:	418484b3          	sub	s1,s1,s8
    80002780:	05649063          	bne	s1,s6,800027c0 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x168>
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    80002784:	014c0733          	add	a4,s8,s4
    80002788:	05771063          	bne	a4,s7,800027c8 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x170>
    return beforeTestFreeBlockNo == afterTestFreeBlockNo - minNoBlocksForSize - addendForSegDesc;
    8000278c:	41378533          	sub	a0,a5,s3
    80002790:	41250533          	sub	a0,a0,s2
    80002794:	41550533          	sub	a0,a0,s5
    80002798:	00153513          	seqz	a0,a0
    8000279c:	f05ff06f          	j	800026a0 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
        minNoBlocksForSize = 0; addendForSegDesc = 0; allocatedMemory = 0;
    800027a0:	00000c13          	li	s8,0
    800027a4:	00000913          	li	s2,0
    800027a8:	00000993          	li	s3,0
    800027ac:	f71ff06f          	j	8000271c <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xc4>
    MemoryAllocator::SegmentDescriptor* segDesc = nullptr;
    800027b0:	00048793          	mv	a5,s1
    800027b4:	f71ff06f          	j	80002724 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xcc>
    if (segDesc->noBlocks != minNoBlocksForSize + addendForSegDesc) return false;
    800027b8:	00000513          	li	a0,0
    800027bc:	ee5ff06f          	j	800026a0 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    if (beforeTestTotalFree != afterTestTotalFree - allocatedMemory) return false;
    800027c0:	00000513          	li	a0,0
    800027c4:	eddff06f          	j	800026a0 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    800027c8:	00000513          	li	a0,0
    800027cc:	ed5ff06f          	j	800026a0 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>

00000000800027d0 <_ZN19MemoryAllocatorTest13firstFitTest1Ev>:
    if (!firstFitTest2()) return false;
    if (!firstFitTest3()) return false;
    return true;
}

bool MemoryAllocatorTest::firstFitTest1() {
    800027d0:	fc010113          	addi	sp,sp,-64
    800027d4:	02113c23          	sd	ra,56(sp)
    800027d8:	02813823          	sd	s0,48(sp)
    800027dc:	02913423          	sd	s1,40(sp)
    800027e0:	03213023          	sd	s2,32(sp)
    800027e4:	01313c23          	sd	s3,24(sp)
    800027e8:	01413823          	sd	s4,16(sp)
    800027ec:	01513423          	sd	s5,8(sp)
    800027f0:	04010413          	addi	s0,sp,64
    800027f4:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    800027f8:	00000097          	auipc	ra,0x0
    800027fc:	c28080e7          	jalr	-984(ra) # 80002420 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002800:	02051463          	bnez	a0,80002828 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x58>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002804:	03813083          	ld	ra,56(sp)
    80002808:	03013403          	ld	s0,48(sp)
    8000280c:	02813483          	ld	s1,40(sp)
    80002810:	02013903          	ld	s2,32(sp)
    80002814:	01813983          	ld	s3,24(sp)
    80002818:	01013a03          	ld	s4,16(sp)
    8000281c:	00813a83          	ld	s5,8(sp)
    80002820:	04010113          	addi	sp,sp,64
    80002824:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002828:	fffff097          	auipc	ra,0xfffff
    8000282c:	4f4080e7          	jalr	1268(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002830:	02f00593          	li	a1,47
    80002834:	fffff097          	auipc	ra,0xfffff
    80002838:	5cc080e7          	jalr	1484(ra) # 80001e00 <_ZN15MemoryAllocator10kmem_allocEm>
    8000283c:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002840:	00005797          	auipc	a5,0x5
    80002844:	9b07b783          	ld	a5,-1616(a5) # 800071f0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002848:	0007b783          	ld	a5,0(a5)
    8000284c:	01078793          	addi	a5,a5,16
    80002850:	00a78663          	beq	a5,a0,8000285c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x8c>
        return false;
    80002854:	00000513          	li	a0,0
    80002858:	fadff06f          	j	80002804 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    8000285c:	fffff097          	auipc	ra,0xfffff
    80002860:	4c0080e7          	jalr	1216(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002864:	03000593          	li	a1,48
    80002868:	fffff097          	auipc	ra,0xfffff
    8000286c:	598080e7          	jalr	1432(ra) # 80001e00 <_ZN15MemoryAllocator10kmem_allocEm>
    80002870:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002874:	00005797          	auipc	a5,0x5
    80002878:	97c7b783          	ld	a5,-1668(a5) # 800071f0 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000287c:	0007b783          	ld	a5,0(a5)
    80002880:	05078793          	addi	a5,a5,80
    80002884:	00a78663          	beq	a5,a0,80002890 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0xc0>
        return false;
    80002888:	00000513          	li	a0,0
    8000288c:	f79ff06f          	j	80002804 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    80002890:	fffff097          	auipc	ra,0xfffff
    80002894:	48c080e7          	jalr	1164(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002898:	03100593          	li	a1,49
    8000289c:	fffff097          	auipc	ra,0xfffff
    800028a0:	564080e7          	jalr	1380(ra) # 80001e00 <_ZN15MemoryAllocator10kmem_allocEm>
    800028a4:	00050a13          	mv	s4,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + 2 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    800028a8:	00005797          	auipc	a5,0x5
    800028ac:	9487b783          	ld	a5,-1720(a5) # 800071f0 <_GLOBAL_OFFSET_TABLE_+0x68>
    800028b0:	0007b783          	ld	a5,0(a5)
    800028b4:	09078793          	addi	a5,a5,144
    800028b8:	00a78663          	beq	a5,a0,800028c4 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0xf4>
        return false;
    800028bc:	00000513          	li	a0,0
    800028c0:	f45ff06f          	j	80002804 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    800028c4:	fffff097          	auipc	ra,0xfffff
    800028c8:	458080e7          	jalr	1112(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    800028cc:	00098593          	mv	a1,s3
    800028d0:	fffff097          	auipc	ra,0xfffff
    800028d4:	5d8080e7          	jalr	1496(ra) # 80001ea8 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    800028d8:	fffff097          	auipc	ra,0xfffff
    800028dc:	444080e7          	jalr	1092(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    800028e0:	01e00593          	li	a1,30
    800028e4:	fffff097          	auipc	ra,0xfffff
    800028e8:	51c080e7          	jalr	1308(ra) # 80001e00 <_ZN15MemoryAllocator10kmem_allocEm>
    800028ec:	00050993          	mv	s3,a0
    if (pointers[3] != MemoryAllocator::managedMemorySpaceStart + 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    800028f0:	00005797          	auipc	a5,0x5
    800028f4:	9007b783          	ld	a5,-1792(a5) # 800071f0 <_GLOBAL_OFFSET_TABLE_+0x68>
    800028f8:	0007b783          	ld	a5,0(a5)
    800028fc:	05078793          	addi	a5,a5,80
    80002900:	00a78663          	beq	a5,a0,8000290c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x13c>
        return false;
    80002904:	00000513          	li	a0,0
    80002908:	efdff06f          	j	80002804 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    8000290c:	fffff097          	auipc	ra,0xfffff
    80002910:	410080e7          	jalr	1040(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002914:	12100593          	li	a1,289
    80002918:	fffff097          	auipc	ra,0xfffff
    8000291c:	4e8080e7          	jalr	1256(ra) # 80001e00 <_ZN15MemoryAllocator10kmem_allocEm>
    80002920:	00050a93          	mv	s5,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + 4 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002924:	00005797          	auipc	a5,0x5
    80002928:	8cc7b783          	ld	a5,-1844(a5) # 800071f0 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000292c:	0007b783          	ld	a5,0(a5)
    80002930:	11078793          	addi	a5,a5,272
    80002934:	00a78663          	beq	a5,a0,80002940 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x170>
        return false;
    80002938:	00000513          	li	a0,0
    8000293c:	ec9ff06f          	j	80002804 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    if (!testMemoryMetadataValidity()) return false;
    80002940:	00048513          	mv	a0,s1
    80002944:	00000097          	auipc	ra,0x0
    80002948:	adc080e7          	jalr	-1316(ra) # 80002420 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    8000294c:	ea050ce3          	beqz	a0,80002804 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    80002950:	fffff097          	auipc	ra,0xfffff
    80002954:	3cc080e7          	jalr	972(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002958:	00090593          	mv	a1,s2
    8000295c:	fffff097          	auipc	ra,0xfffff
    80002960:	54c080e7          	jalr	1356(ra) # 80001ea8 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002964:	fffff097          	auipc	ra,0xfffff
    80002968:	3b8080e7          	jalr	952(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    8000296c:	000a0593          	mv	a1,s4
    80002970:	fffff097          	auipc	ra,0xfffff
    80002974:	538080e7          	jalr	1336(ra) # 80001ea8 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002978:	fffff097          	auipc	ra,0xfffff
    8000297c:	3a4080e7          	jalr	932(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002980:	00098593          	mv	a1,s3
    80002984:	fffff097          	auipc	ra,0xfffff
    80002988:	524080e7          	jalr	1316(ra) # 80001ea8 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    8000298c:	fffff097          	auipc	ra,0xfffff
    80002990:	390080e7          	jalr	912(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002994:	000a8593          	mv	a1,s5
    80002998:	fffff097          	auipc	ra,0xfffff
    8000299c:	510080e7          	jalr	1296(ra) # 80001ea8 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    800029a0:	00048513          	mv	a0,s1
    800029a4:	00000097          	auipc	ra,0x0
    800029a8:	a7c080e7          	jalr	-1412(ra) # 80002420 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800029ac:	e59ff06f          	j	80002804 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>

00000000800029b0 <_ZN19MemoryAllocatorTest12printPointerEiPPv>:


void MemoryAllocatorTest::printPointer(int i, void** pointers) {
    800029b0:	fe010113          	addi	sp,sp,-32
    800029b4:	00113c23          	sd	ra,24(sp)
    800029b8:	00813823          	sd	s0,16(sp)
    800029bc:	00913423          	sd	s1,8(sp)
    800029c0:	01213023          	sd	s2,0(sp)
    800029c4:	02010413          	addi	s0,sp,32
    800029c8:	00058913          	mv	s2,a1
    800029cc:	00060493          	mv	s1,a2
    printString("\npointers[");
    800029d0:	00004517          	auipc	a0,0x4
    800029d4:	a5050513          	addi	a0,a0,-1456 # 80006420 <CONSOLE_STATUS+0x410>
    800029d8:	00001097          	auipc	ra,0x1
    800029dc:	e18080e7          	jalr	-488(ra) # 800037f0 <_Z11printStringPKc>
    printInteger(i);
    800029e0:	00090513          	mv	a0,s2
    800029e4:	00001097          	auipc	ra,0x1
    800029e8:	e7c080e7          	jalr	-388(ra) # 80003860 <_Z12printIntegerm>
    printString("]: ");
    800029ec:	00004517          	auipc	a0,0x4
    800029f0:	a4450513          	addi	a0,a0,-1468 # 80006430 <CONSOLE_STATUS+0x420>
    800029f4:	00001097          	auipc	ra,0x1
    800029f8:	dfc080e7          	jalr	-516(ra) # 800037f0 <_Z11printStringPKc>
    printInteger((uint64)((uint8*) pointers[i] - MemoryAllocator::managedMemorySpaceStart));
    800029fc:	00391613          	slli	a2,s2,0x3
    80002a00:	00c484b3          	add	s1,s1,a2
    80002a04:	0004b503          	ld	a0,0(s1)
    80002a08:	00004797          	auipc	a5,0x4
    80002a0c:	7e87b783          	ld	a5,2024(a5) # 800071f0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a10:	0007b783          	ld	a5,0(a5)
    80002a14:	40f50533          	sub	a0,a0,a5
    80002a18:	00001097          	auipc	ra,0x1
    80002a1c:	e48080e7          	jalr	-440(ra) # 80003860 <_Z12printIntegerm>
    printString("\npointers[");
    80002a20:	00004517          	auipc	a0,0x4
    80002a24:	a0050513          	addi	a0,a0,-1536 # 80006420 <CONSOLE_STATUS+0x410>
    80002a28:	00001097          	auipc	ra,0x1
    80002a2c:	dc8080e7          	jalr	-568(ra) # 800037f0 <_Z11printStringPKc>
    printInteger(i);
    80002a30:	00090513          	mv	a0,s2
    80002a34:	00001097          	auipc	ra,0x1
    80002a38:	e2c080e7          	jalr	-468(ra) # 80003860 <_Z12printIntegerm>
    printString("]->blockNo: "); printInteger((uint64) (((MemoryAllocator::SegmentDescriptor*) pointers[i])->noBlocks));
    80002a3c:	00004517          	auipc	a0,0x4
    80002a40:	9fc50513          	addi	a0,a0,-1540 # 80006438 <CONSOLE_STATUS+0x428>
    80002a44:	00001097          	auipc	ra,0x1
    80002a48:	dac080e7          	jalr	-596(ra) # 800037f0 <_Z11printStringPKc>
    80002a4c:	0004b783          	ld	a5,0(s1)
    80002a50:	0007b503          	ld	a0,0(a5)
    80002a54:	00001097          	auipc	ra,0x1
    80002a58:	e0c080e7          	jalr	-500(ra) # 80003860 <_Z12printIntegerm>
    printString("\n");
    80002a5c:	00003517          	auipc	a0,0x3
    80002a60:	62c50513          	addi	a0,a0,1580 # 80006088 <CONSOLE_STATUS+0x78>
    80002a64:	00001097          	auipc	ra,0x1
    80002a68:	d8c080e7          	jalr	-628(ra) # 800037f0 <_Z11printStringPKc>
}
    80002a6c:	01813083          	ld	ra,24(sp)
    80002a70:	01013403          	ld	s0,16(sp)
    80002a74:	00813483          	ld	s1,8(sp)
    80002a78:	00013903          	ld	s2,0(sp)
    80002a7c:	02010113          	addi	sp,sp,32
    80002a80:	00008067          	ret

0000000080002a84 <_ZN19MemoryAllocatorTest13firstFitTest2Ev>:

bool MemoryAllocatorTest::firstFitTest2() {
    80002a84:	fc010113          	addi	sp,sp,-64
    80002a88:	02113c23          	sd	ra,56(sp)
    80002a8c:	02813823          	sd	s0,48(sp)
    80002a90:	02913423          	sd	s1,40(sp)
    80002a94:	03213023          	sd	s2,32(sp)
    80002a98:	01313c23          	sd	s3,24(sp)
    80002a9c:	01413823          	sd	s4,16(sp)
    80002aa0:	01513423          	sd	s5,8(sp)
    80002aa4:	04010413          	addi	s0,sp,64
    80002aa8:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    80002aac:	00000097          	auipc	ra,0x0
    80002ab0:	974080e7          	jalr	-1676(ra) # 80002420 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002ab4:	02051463          	bnez	a0,80002adc <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x58>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002ab8:	03813083          	ld	ra,56(sp)
    80002abc:	03013403          	ld	s0,48(sp)
    80002ac0:	02813483          	ld	s1,40(sp)
    80002ac4:	02013903          	ld	s2,32(sp)
    80002ac8:	01813983          	ld	s3,24(sp)
    80002acc:	01013a03          	ld	s4,16(sp)
    80002ad0:	00813a83          	ld	s5,8(sp)
    80002ad4:	04010113          	addi	sp,sp,64
    80002ad8:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002adc:	fffff097          	auipc	ra,0xfffff
    80002ae0:	240080e7          	jalr	576(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002ae4:	08200593          	li	a1,130
    80002ae8:	fffff097          	auipc	ra,0xfffff
    80002aec:	318080e7          	jalr	792(ra) # 80001e00 <_ZN15MemoryAllocator10kmem_allocEm>
    80002af0:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002af4:	00004797          	auipc	a5,0x4
    80002af8:	6fc7b783          	ld	a5,1788(a5) # 800071f0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002afc:	0007b783          	ld	a5,0(a5)
    80002b00:	01078793          	addi	a5,a5,16
    80002b04:	00a78663          	beq	a5,a0,80002b10 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x8c>
        return false;
    80002b08:	00000513          	li	a0,0
    80002b0c:	fadff06f          	j	80002ab8 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    80002b10:	fffff097          	auipc	ra,0xfffff
    80002b14:	20c080e7          	jalr	524(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002b18:	01400593          	li	a1,20
    80002b1c:	fffff097          	auipc	ra,0xfffff
    80002b20:	2e4080e7          	jalr	740(ra) # 80001e00 <_ZN15MemoryAllocator10kmem_allocEm>
    80002b24:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 3 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002b28:	00004797          	auipc	a5,0x4
    80002b2c:	6c87b783          	ld	a5,1736(a5) # 800071f0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b30:	0007b783          	ld	a5,0(a5)
    80002b34:	0d078793          	addi	a5,a5,208
    80002b38:	00a78663          	beq	a5,a0,80002b44 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0xc0>
        return false;
    80002b3c:	00000513          	li	a0,0
    80002b40:	f79ff06f          	j	80002ab8 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    80002b44:	fffff097          	auipc	ra,0xfffff
    80002b48:	1d8080e7          	jalr	472(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002b4c:	00090593          	mv	a1,s2
    80002b50:	fffff097          	auipc	ra,0xfffff
    80002b54:	358080e7          	jalr	856(ra) # 80001ea8 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    80002b58:	fffff097          	auipc	ra,0xfffff
    80002b5c:	1c4080e7          	jalr	452(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002b60:	07800593          	li	a1,120
    80002b64:	fffff097          	auipc	ra,0xfffff
    80002b68:	29c080e7          	jalr	668(ra) # 80001e00 <_ZN15MemoryAllocator10kmem_allocEm>
    80002b6c:	00050913          	mv	s2,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002b70:	00004797          	auipc	a5,0x4
    80002b74:	6807b783          	ld	a5,1664(a5) # 800071f0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b78:	0007b783          	ld	a5,0(a5)
    80002b7c:	01078793          	addi	a5,a5,16
    80002b80:	00a78663          	beq	a5,a0,80002b8c <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x108>
        return false;
    80002b84:	00000513          	li	a0,0
    80002b88:	f31ff06f          	j	80002ab8 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002b8c:	fffff097          	auipc	ra,0xfffff
    80002b90:	190080e7          	jalr	400(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002b94:	01e00593          	li	a1,30
    80002b98:	fffff097          	auipc	ra,0xfffff
    80002b9c:	268080e7          	jalr	616(ra) # 80001e00 <_ZN15MemoryAllocator10kmem_allocEm>
    80002ba0:	00050a13          	mv	s4,a0
    if (pointers[3] != MemoryAllocator::managedMemorySpaceStart + 4 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002ba4:	00004797          	auipc	a5,0x4
    80002ba8:	64c7b783          	ld	a5,1612(a5) # 800071f0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002bac:	0007b783          	ld	a5,0(a5)
    80002bb0:	11078793          	addi	a5,a5,272
    80002bb4:	00a78663          	beq	a5,a0,80002bc0 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x13c>
        return false;
    80002bb8:	00000513          	li	a0,0
    80002bbc:	efdff06f          	j	80002ab8 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002bc0:	fffff097          	auipc	ra,0xfffff
    80002bc4:	15c080e7          	jalr	348(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002bc8:	00090593          	mv	a1,s2
    80002bcc:	fffff097          	auipc	ra,0xfffff
    80002bd0:	2dc080e7          	jalr	732(ra) # 80001ea8 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002bd4:	fffff097          	auipc	ra,0xfffff
    80002bd8:	148080e7          	jalr	328(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002bdc:	02f00593          	li	a1,47
    80002be0:	fffff097          	auipc	ra,0xfffff
    80002be4:	220080e7          	jalr	544(ra) # 80001e00 <_ZN15MemoryAllocator10kmem_allocEm>
    80002be8:	00050913          	mv	s2,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002bec:	00004797          	auipc	a5,0x4
    80002bf0:	6047b783          	ld	a5,1540(a5) # 800071f0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002bf4:	0007b783          	ld	a5,0(a5)
    80002bf8:	01078793          	addi	a5,a5,16
    80002bfc:	00a78663          	beq	a5,a0,80002c08 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x184>
        return false;
    80002c00:	00000513          	li	a0,0
    80002c04:	eb5ff06f          	j	80002ab8 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[5] = MemoryAllocator::instance()->kmem_alloc(sizes[5]);
    80002c08:	fffff097          	auipc	ra,0xfffff
    80002c0c:	114080e7          	jalr	276(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002c10:	01400593          	li	a1,20
    80002c14:	fffff097          	auipc	ra,0xfffff
    80002c18:	1ec080e7          	jalr	492(ra) # 80001e00 <_ZN15MemoryAllocator10kmem_allocEm>
    80002c1c:	00050a93          	mv	s5,a0
    if (pointers[5] != MemoryAllocator::managedMemorySpaceStart + 1 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002c20:	00004797          	auipc	a5,0x4
    80002c24:	5d07b783          	ld	a5,1488(a5) # 800071f0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002c28:	0007b783          	ld	a5,0(a5)
    80002c2c:	05078793          	addi	a5,a5,80
    80002c30:	00a78663          	beq	a5,a0,80002c3c <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x1b8>
        return false;
    80002c34:	00000513          	li	a0,0
    80002c38:	e81ff06f          	j	80002ab8 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    if (!testMemoryMetadataValidity()) return false;
    80002c3c:	00048513          	mv	a0,s1
    80002c40:	fffff097          	auipc	ra,0xfffff
    80002c44:	7e0080e7          	jalr	2016(ra) # 80002420 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002c48:	e60508e3          	beqz	a0,80002ab8 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002c4c:	fffff097          	auipc	ra,0xfffff
    80002c50:	0d0080e7          	jalr	208(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002c54:	00098593          	mv	a1,s3
    80002c58:	fffff097          	auipc	ra,0xfffff
    80002c5c:	250080e7          	jalr	592(ra) # 80001ea8 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002c60:	fffff097          	auipc	ra,0xfffff
    80002c64:	0bc080e7          	jalr	188(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002c68:	000a0593          	mv	a1,s4
    80002c6c:	fffff097          	auipc	ra,0xfffff
    80002c70:	23c080e7          	jalr	572(ra) # 80001ea8 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80002c74:	fffff097          	auipc	ra,0xfffff
    80002c78:	0a8080e7          	jalr	168(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002c7c:	00090593          	mv	a1,s2
    80002c80:	fffff097          	auipc	ra,0xfffff
    80002c84:	228080e7          	jalr	552(ra) # 80001ea8 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    80002c88:	fffff097          	auipc	ra,0xfffff
    80002c8c:	094080e7          	jalr	148(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002c90:	000a8593          	mv	a1,s5
    80002c94:	fffff097          	auipc	ra,0xfffff
    80002c98:	214080e7          	jalr	532(ra) # 80001ea8 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002c9c:	00048513          	mv	a0,s1
    80002ca0:	fffff097          	auipc	ra,0xfffff
    80002ca4:	780080e7          	jalr	1920(ra) # 80002420 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002ca8:	e11ff06f          	j	80002ab8 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>

0000000080002cac <_ZN19MemoryAllocatorTest13firstFitTest3Ev>:


bool MemoryAllocatorTest::firstFitTest3() {
    80002cac:	fb010113          	addi	sp,sp,-80
    80002cb0:	04113423          	sd	ra,72(sp)
    80002cb4:	04813023          	sd	s0,64(sp)
    80002cb8:	02913c23          	sd	s1,56(sp)
    80002cbc:	03213823          	sd	s2,48(sp)
    80002cc0:	03313423          	sd	s3,40(sp)
    80002cc4:	03413023          	sd	s4,32(sp)
    80002cc8:	01513c23          	sd	s5,24(sp)
    80002ccc:	01613823          	sd	s6,16(sp)
    80002cd0:	01713423          	sd	s7,8(sp)
    80002cd4:	05010413          	addi	s0,sp,80
    80002cd8:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    80002cdc:	fffff097          	auipc	ra,0xfffff
    80002ce0:	744080e7          	jalr	1860(ra) # 80002420 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002ce4:	02051863          	bnez	a0,80002d14 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x68>
    MemoryAllocator::instance()->kmem_free(pointers[6]);
    MemoryAllocator::instance()->kmem_free(pointers[7]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002ce8:	04813083          	ld	ra,72(sp)
    80002cec:	04013403          	ld	s0,64(sp)
    80002cf0:	03813483          	ld	s1,56(sp)
    80002cf4:	03013903          	ld	s2,48(sp)
    80002cf8:	02813983          	ld	s3,40(sp)
    80002cfc:	02013a03          	ld	s4,32(sp)
    80002d00:	01813a83          	ld	s5,24(sp)
    80002d04:	01013b03          	ld	s6,16(sp)
    80002d08:	00813b83          	ld	s7,8(sp)
    80002d0c:	05010113          	addi	sp,sp,80
    80002d10:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002d14:	fffff097          	auipc	ra,0xfffff
    80002d18:	008080e7          	jalr	8(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002d1c:	13000593          	li	a1,304
    80002d20:	fffff097          	auipc	ra,0xfffff
    80002d24:	0e0080e7          	jalr	224(ra) # 80001e00 <_ZN15MemoryAllocator10kmem_allocEm>
    80002d28:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002d2c:	00004797          	auipc	a5,0x4
    80002d30:	4c47b783          	ld	a5,1220(a5) # 800071f0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002d34:	0007b783          	ld	a5,0(a5)
    80002d38:	01078793          	addi	a5,a5,16
    80002d3c:	00a78663          	beq	a5,a0,80002d48 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x9c>
        return false;
    80002d40:	00000513          	li	a0,0
    80002d44:	fa5ff06f          	j	80002ce8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    80002d48:	fffff097          	auipc	ra,0xfffff
    80002d4c:	fd4080e7          	jalr	-44(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002d50:	03100593          	li	a1,49
    80002d54:	fffff097          	auipc	ra,0xfffff
    80002d58:	0ac080e7          	jalr	172(ra) # 80001e00 <_ZN15MemoryAllocator10kmem_allocEm>
    80002d5c:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 5 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002d60:	00004797          	auipc	a5,0x4
    80002d64:	4907b783          	ld	a5,1168(a5) # 800071f0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002d68:	0007b783          	ld	a5,0(a5)
    80002d6c:	15078793          	addi	a5,a5,336
    80002d70:	00a78663          	beq	a5,a0,80002d7c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0xd0>
        return false;
    80002d74:	00000513          	li	a0,0
    80002d78:	f71ff06f          	j	80002ce8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    80002d7c:	fffff097          	auipc	ra,0xfffff
    80002d80:	fa0080e7          	jalr	-96(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002d84:	00090593          	mv	a1,s2
    80002d88:	fffff097          	auipc	ra,0xfffff
    80002d8c:	120080e7          	jalr	288(ra) # 80001ea8 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    80002d90:	fffff097          	auipc	ra,0xfffff
    80002d94:	f8c080e7          	jalr	-116(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002d98:	0e600593          	li	a1,230
    80002d9c:	fffff097          	auipc	ra,0xfffff
    80002da0:	064080e7          	jalr	100(ra) # 80001e00 <_ZN15MemoryAllocator10kmem_allocEm>
    80002da4:	00050913          	mv	s2,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002da8:	00004797          	auipc	a5,0x4
    80002dac:	4487b783          	ld	a5,1096(a5) # 800071f0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002db0:	0007b783          	ld	a5,0(a5)
    80002db4:	01078793          	addi	a5,a5,16
    80002db8:	00a78663          	beq	a5,a0,80002dc4 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x118>
        return false;
    80002dbc:	00000513          	li	a0,0
    80002dc0:	f29ff06f          	j	80002ce8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002dc4:	fffff097          	auipc	ra,0xfffff
    80002dc8:	f58080e7          	jalr	-168(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002dcc:	fdb00593          	li	a1,-37
    80002dd0:	fffff097          	auipc	ra,0xfffff
    80002dd4:	030080e7          	jalr	48(ra) # 80001e00 <_ZN15MemoryAllocator10kmem_allocEm>
    80002dd8:	00050a13          	mv	s4,a0
    if (pointers[3]) return false;
    80002ddc:	00050663          	beqz	a0,80002de8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x13c>
    80002de0:	00000513          	li	a0,0
    80002de4:	f05ff06f          	j	80002ce8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002de8:	fffff097          	auipc	ra,0xfffff
    80002dec:	f34080e7          	jalr	-204(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002df0:	01e00593          	li	a1,30
    80002df4:	fffff097          	auipc	ra,0xfffff
    80002df8:	00c080e7          	jalr	12(ra) # 80001e00 <_ZN15MemoryAllocator10kmem_allocEm>
    80002dfc:	00050a93          	mv	s5,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + 7 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002e00:	00004797          	auipc	a5,0x4
    80002e04:	3f07b783          	ld	a5,1008(a5) # 800071f0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002e08:	0007b783          	ld	a5,0(a5)
    80002e0c:	1d078793          	addi	a5,a5,464
    80002e10:	00a78663          	beq	a5,a0,80002e1c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x170>
        return false;
    80002e14:	00000513          	li	a0,0
    80002e18:	ed1ff06f          	j	80002ce8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002e1c:	fffff097          	auipc	ra,0xfffff
    80002e20:	f00080e7          	jalr	-256(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002e24:	00090593          	mv	a1,s2
    80002e28:	fffff097          	auipc	ra,0xfffff
    80002e2c:	080080e7          	jalr	128(ra) # 80001ea8 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[5] = MemoryAllocator::instance()->kmem_alloc(sizes[5]);
    80002e30:	fffff097          	auipc	ra,0xfffff
    80002e34:	eec080e7          	jalr	-276(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002e38:	09600593          	li	a1,150
    80002e3c:	fffff097          	auipc	ra,0xfffff
    80002e40:	fc4080e7          	jalr	-60(ra) # 80001e00 <_ZN15MemoryAllocator10kmem_allocEm>
    80002e44:	00050b93          	mv	s7,a0
    if (pointers[5] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002e48:	00004797          	auipc	a5,0x4
    80002e4c:	3a87b783          	ld	a5,936(a5) # 800071f0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002e50:	0007b783          	ld	a5,0(a5)
    80002e54:	01078793          	addi	a5,a5,16
    80002e58:	00a78663          	beq	a5,a0,80002e64 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x1b8>
        return false;
    80002e5c:	00000513          	li	a0,0
    80002e60:	e89ff06f          	j	80002ce8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[6] = MemoryAllocator::instance()->kmem_alloc(sizes[6]);
    80002e64:	fffff097          	auipc	ra,0xfffff
    80002e68:	eb8080e7          	jalr	-328(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002e6c:	02f00593          	li	a1,47
    80002e70:	fffff097          	auipc	ra,0xfffff
    80002e74:	f90080e7          	jalr	-112(ra) # 80001e00 <_ZN15MemoryAllocator10kmem_allocEm>
    80002e78:	00050b13          	mv	s6,a0
    if (pointers[6] != MemoryAllocator::managedMemorySpaceStart + 3 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002e7c:	00004797          	auipc	a5,0x4
    80002e80:	3747b783          	ld	a5,884(a5) # 800071f0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002e84:	0007b783          	ld	a5,0(a5)
    80002e88:	0d078793          	addi	a5,a5,208
    80002e8c:	00a78663          	beq	a5,a0,80002e98 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x1ec>
        return false;
    80002e90:	00000513          	li	a0,0
    80002e94:	e55ff06f          	j	80002ce8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[7] = MemoryAllocator::instance()->kmem_alloc(sizes[7]);
    80002e98:	fffff097          	auipc	ra,0xfffff
    80002e9c:	e84080e7          	jalr	-380(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002ea0:	02500593          	li	a1,37
    80002ea4:	fffff097          	auipc	ra,0xfffff
    80002ea8:	f5c080e7          	jalr	-164(ra) # 80001e00 <_ZN15MemoryAllocator10kmem_allocEm>
    80002eac:	00050913          	mv	s2,a0
    if (pointers[7] != MemoryAllocator::managedMemorySpaceStart + 8 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002eb0:	00004797          	auipc	a5,0x4
    80002eb4:	3407b783          	ld	a5,832(a5) # 800071f0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002eb8:	0007b783          	ld	a5,0(a5)
    80002ebc:	21078793          	addi	a5,a5,528
    80002ec0:	00a78663          	beq	a5,a0,80002ecc <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x220>
        return false;
    80002ec4:	00000513          	li	a0,0
    80002ec8:	e21ff06f          	j	80002ce8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    if (!testMemoryMetadataValidity()) return false;
    80002ecc:	00048513          	mv	a0,s1
    80002ed0:	fffff097          	auipc	ra,0xfffff
    80002ed4:	550080e7          	jalr	1360(ra) # 80002420 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002ed8:	e00508e3          	beqz	a0,80002ce8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002edc:	fffff097          	auipc	ra,0xfffff
    80002ee0:	e40080e7          	jalr	-448(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002ee4:	00098593          	mv	a1,s3
    80002ee8:	fffff097          	auipc	ra,0xfffff
    80002eec:	fc0080e7          	jalr	-64(ra) # 80001ea8 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002ef0:	fffff097          	auipc	ra,0xfffff
    80002ef4:	e2c080e7          	jalr	-468(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002ef8:	000a0593          	mv	a1,s4
    80002efc:	fffff097          	auipc	ra,0xfffff
    80002f00:	fac080e7          	jalr	-84(ra) # 80001ea8 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80002f04:	fffff097          	auipc	ra,0xfffff
    80002f08:	e18080e7          	jalr	-488(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002f0c:	000a8593          	mv	a1,s5
    80002f10:	fffff097          	auipc	ra,0xfffff
    80002f14:	f98080e7          	jalr	-104(ra) # 80001ea8 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    80002f18:	fffff097          	auipc	ra,0xfffff
    80002f1c:	e04080e7          	jalr	-508(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002f20:	000b8593          	mv	a1,s7
    80002f24:	fffff097          	auipc	ra,0xfffff
    80002f28:	f84080e7          	jalr	-124(ra) # 80001ea8 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[6]);
    80002f2c:	fffff097          	auipc	ra,0xfffff
    80002f30:	df0080e7          	jalr	-528(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002f34:	000b0593          	mv	a1,s6
    80002f38:	fffff097          	auipc	ra,0xfffff
    80002f3c:	f70080e7          	jalr	-144(ra) # 80001ea8 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[7]);
    80002f40:	fffff097          	auipc	ra,0xfffff
    80002f44:	ddc080e7          	jalr	-548(ra) # 80001d1c <_ZN15MemoryAllocator8instanceEv>
    80002f48:	00090593          	mv	a1,s2
    80002f4c:	fffff097          	auipc	ra,0xfffff
    80002f50:	f5c080e7          	jalr	-164(ra) # 80001ea8 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002f54:	00048513          	mv	a0,s1
    80002f58:	fffff097          	auipc	ra,0xfffff
    80002f5c:	4c8080e7          	jalr	1224(ra) # 80002420 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002f60:	d89ff06f          	j	80002ce8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>

0000000080002f64 <_ZN19MemoryAllocatorTest12testFirstFitEv>:
bool MemoryAllocatorTest::testFirstFit() {
    80002f64:	fe010113          	addi	sp,sp,-32
    80002f68:	00113c23          	sd	ra,24(sp)
    80002f6c:	00813823          	sd	s0,16(sp)
    80002f70:	00913423          	sd	s1,8(sp)
    80002f74:	02010413          	addi	s0,sp,32
    80002f78:	00050493          	mv	s1,a0
    if (!firstFitTest1()) return false;
    80002f7c:	00000097          	auipc	ra,0x0
    80002f80:	854080e7          	jalr	-1964(ra) # 800027d0 <_ZN19MemoryAllocatorTest13firstFitTest1Ev>
    80002f84:	00051c63          	bnez	a0,80002f9c <_ZN19MemoryAllocatorTest12testFirstFitEv+0x38>
}
    80002f88:	01813083          	ld	ra,24(sp)
    80002f8c:	01013403          	ld	s0,16(sp)
    80002f90:	00813483          	ld	s1,8(sp)
    80002f94:	02010113          	addi	sp,sp,32
    80002f98:	00008067          	ret
    if (!firstFitTest2()) return false;
    80002f9c:	00048513          	mv	a0,s1
    80002fa0:	00000097          	auipc	ra,0x0
    80002fa4:	ae4080e7          	jalr	-1308(ra) # 80002a84 <_ZN19MemoryAllocatorTest13firstFitTest2Ev>
    80002fa8:	fe0500e3          	beqz	a0,80002f88 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x24>
    if (!firstFitTest3()) return false;
    80002fac:	00048513          	mv	a0,s1
    80002fb0:	00000097          	auipc	ra,0x0
    80002fb4:	cfc080e7          	jalr	-772(ra) # 80002cac <_ZN19MemoryAllocatorTest13firstFitTest3Ev>
    80002fb8:	fd1ff06f          	j	80002f88 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x24>

0000000080002fbc <_ZN19MemoryAllocatorTest25testSegmentDescriptorSizeEv>:

bool MemoryAllocatorTest::testSegmentDescriptorSize() {
    80002fbc:	ff010113          	addi	sp,sp,-16
    80002fc0:	00113423          	sd	ra,8(sp)
    80002fc4:	00813023          	sd	s0,0(sp)
    80002fc8:	01010413          	addi	s0,sp,16
    if (!testMemoryMetadataValidity()) return false;
    80002fcc:	fffff097          	auipc	ra,0xfffff
    80002fd0:	454080e7          	jalr	1108(ra) # 80002420 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    return sizeof(MemoryAllocator::SegmentDescriptor) == 16;
}
    80002fd4:	00813083          	ld	ra,8(sp)
    80002fd8:	00013403          	ld	s0,0(sp)
    80002fdc:	01010113          	addi	sp,sp,16
    80002fe0:	00008067          	ret

0000000080002fe4 <_ZN19MemoryAllocatorTest8runTestsEv>:
bool MemoryAllocatorTest::runTests() {
    80002fe4:	f6010113          	addi	sp,sp,-160
    80002fe8:	08113c23          	sd	ra,152(sp)
    80002fec:	08813823          	sd	s0,144(sp)
    80002ff0:	08913423          	sd	s1,136(sp)
    80002ff4:	09213023          	sd	s2,128(sp)
    80002ff8:	07313c23          	sd	s3,120(sp)
    80002ffc:	0a010413          	addi	s0,sp,160
    80003000:	00050993          	mv	s3,a0
    sizes[0] = 3.7 * MEM_BLOCK_SIZE;
    80003004:	0ec00793          	li	a5,236
    80003008:	f6f43423          	sd	a5,-152(s0)
    sizes[1] = MEM_BLOCK_SIZE;
    8000300c:	04000793          	li	a5,64
    80003010:	f6f43823          	sd	a5,-144(s0)
    sizes[2] = 0.3 * MEM_BLOCK_SIZE;
    80003014:	01300793          	li	a5,19
    80003018:	f6f43c23          	sd	a5,-136(s0)
    sizes[3] = 0;
    8000301c:	f8043023          	sd	zero,-128(s0)
    sizes[4] = -37;
    80003020:	fdb00793          	li	a5,-37
    80003024:	f8f43423          	sd	a5,-120(s0)
    sizes[5] = sizeof(MemoryAllocator::SegmentDescriptor) - 1;
    80003028:	00f00793          	li	a5,15
    8000302c:	f8f43823          	sd	a5,-112(s0)
    sizes[6] = sizeof(MemoryAllocator::SegmentDescriptor);
    80003030:	01000793          	li	a5,16
    80003034:	f8f43c23          	sd	a5,-104(s0)
    sizes[7] = sizeof(MemoryAllocator::SegmentDescriptor) + 1;
    80003038:	01100793          	li	a5,17
    8000303c:	faf43023          	sd	a5,-96(s0)
    sizes[8] = MemoryAllocator::minMemoryFragmentSize - 1;
    80003040:	00004797          	auipc	a5,0x4
    80003044:	1787b783          	ld	a5,376(a5) # 800071b8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003048:	0007b783          	ld	a5,0(a5)
    8000304c:	fff78713          	addi	a4,a5,-1
    80003050:	fae43423          	sd	a4,-88(s0)
    sizes[9] = MemoryAllocator::minMemoryFragmentSize;
    80003054:	faf43823          	sd	a5,-80(s0)
    sizes[10] = MemoryAllocator::minMemoryFragmentSize + 1;
    80003058:	00178793          	addi	a5,a5,1
    8000305c:	faf43c23          	sd	a5,-72(s0)
    sizes[11] = MEM_BLOCK_SIZE - 1;
    80003060:	03f00793          	li	a5,63
    80003064:	fcf43023          	sd	a5,-64(s0)
    sizes[12] = MEM_BLOCK_SIZE + 1;
    80003068:	04100793          	li	a5,65
    8000306c:	fcf43423          	sd	a5,-56(s0)
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    80003070:	00000493          	li	s1,0
    80003074:	0880006f          	j	800030fc <_ZN19MemoryAllocatorTest8runTestsEv+0x118>
            printString("Failed testMemoryAllocate test for input ");
    80003078:	00003517          	auipc	a0,0x3
    8000307c:	3d050513          	addi	a0,a0,976 # 80006448 <CONSOLE_STATUS+0x438>
    80003080:	00000097          	auipc	ra,0x0
    80003084:	770080e7          	jalr	1904(ra) # 800037f0 <_Z11printStringPKc>
            printInteger(sizes[i]); printString("\n"); return false;
    80003088:	00090513          	mv	a0,s2
    8000308c:	00000097          	auipc	ra,0x0
    80003090:	7d4080e7          	jalr	2004(ra) # 80003860 <_Z12printIntegerm>
    80003094:	00003517          	auipc	a0,0x3
    80003098:	ff450513          	addi	a0,a0,-12 # 80006088 <CONSOLE_STATUS+0x78>
    8000309c:	00000097          	auipc	ra,0x0
    800030a0:	754080e7          	jalr	1876(ra) # 800037f0 <_Z11printStringPKc>
    800030a4:	00000493          	li	s1,0
}
    800030a8:	00048513          	mv	a0,s1
    800030ac:	09813083          	ld	ra,152(sp)
    800030b0:	09013403          	ld	s0,144(sp)
    800030b4:	08813483          	ld	s1,136(sp)
    800030b8:	08013903          	ld	s2,128(sp)
    800030bc:	07813983          	ld	s3,120(sp)
    800030c0:	0a010113          	addi	sp,sp,160
    800030c4:	00008067          	ret
            printString("Failed testMemoryFree test for input ");
    800030c8:	00003517          	auipc	a0,0x3
    800030cc:	3b850513          	addi	a0,a0,952 # 80006480 <CONSOLE_STATUS+0x470>
    800030d0:	00000097          	auipc	ra,0x0
    800030d4:	720080e7          	jalr	1824(ra) # 800037f0 <_Z11printStringPKc>
            printInteger(sizes[i]); printString("\n"); return false;
    800030d8:	00090513          	mv	a0,s2
    800030dc:	00000097          	auipc	ra,0x0
    800030e0:	784080e7          	jalr	1924(ra) # 80003860 <_Z12printIntegerm>
    800030e4:	00003517          	auipc	a0,0x3
    800030e8:	fa450513          	addi	a0,a0,-92 # 80006088 <CONSOLE_STATUS+0x78>
    800030ec:	00000097          	auipc	ra,0x0
    800030f0:	704080e7          	jalr	1796(ra) # 800037f0 <_Z11printStringPKc>
    800030f4:	fb1ff06f          	j	800030a4 <_ZN19MemoryAllocatorTest8runTestsEv+0xc0>
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    800030f8:	0014849b          	addiw	s1,s1,1
    800030fc:	00c00793          	li	a5,12
    80003100:	0897c863          	blt	a5,s1,80003190 <_ZN19MemoryAllocatorTest8runTestsEv+0x1ac>
        void * allocatedMemoryPointer = nullptr;
    80003104:	f6043023          	sd	zero,-160(s0)
        if (!testMemoryAllocate(sizes[i], &allocatedMemoryPointer)) {
    80003108:	00349793          	slli	a5,s1,0x3
    8000310c:	fd040713          	addi	a4,s0,-48
    80003110:	00f707b3          	add	a5,a4,a5
    80003114:	f987b903          	ld	s2,-104(a5)
    80003118:	f6040613          	addi	a2,s0,-160
    8000311c:	00090593          	mv	a1,s2
    80003120:	00098513          	mv	a0,s3
    80003124:	fffff097          	auipc	ra,0xfffff
    80003128:	3b4080e7          	jalr	948(ra) # 800024d8 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>
    8000312c:	f40506e3          	beqz	a0,80003078 <_ZN19MemoryAllocatorTest8runTestsEv+0x94>
        } else printString("Passed ");
    80003130:	00003517          	auipc	a0,0x3
    80003134:	34850513          	addi	a0,a0,840 # 80006478 <CONSOLE_STATUS+0x468>
    80003138:	00000097          	auipc	ra,0x0
    8000313c:	6b8080e7          	jalr	1720(ra) # 800037f0 <_Z11printStringPKc>
        if (!testMemoryFree(sizes[i], allocatedMemoryPointer)) {
    80003140:	f6043603          	ld	a2,-160(s0)
    80003144:	00090593          	mv	a1,s2
    80003148:	00098513          	mv	a0,s3
    8000314c:	fffff097          	auipc	ra,0xfffff
    80003150:	50c080e7          	jalr	1292(ra) # 80002658 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>
    80003154:	f6050ae3          	beqz	a0,800030c8 <_ZN19MemoryAllocatorTest8runTestsEv+0xe4>
        } else printString("Passed ");
    80003158:	00003517          	auipc	a0,0x3
    8000315c:	32050513          	addi	a0,a0,800 # 80006478 <CONSOLE_STATUS+0x468>
    80003160:	00000097          	auipc	ra,0x0
    80003164:	690080e7          	jalr	1680(ra) # 800037f0 <_Z11printStringPKc>
        if (i != 0 && (i + 1) % 5 == 0) printString("\n");
    80003168:	f80488e3          	beqz	s1,800030f8 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    8000316c:	0014879b          	addiw	a5,s1,1
    80003170:	00500713          	li	a4,5
    80003174:	02e7e7bb          	remw	a5,a5,a4
    80003178:	f80790e3          	bnez	a5,800030f8 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    8000317c:	00003517          	auipc	a0,0x3
    80003180:	f0c50513          	addi	a0,a0,-244 # 80006088 <CONSOLE_STATUS+0x78>
    80003184:	00000097          	auipc	ra,0x0
    80003188:	66c080e7          	jalr	1644(ra) # 800037f0 <_Z11printStringPKc>
    8000318c:	f6dff06f          	j	800030f8 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    if (!testFirstFit()) {
    80003190:	00098513          	mv	a0,s3
    80003194:	00000097          	auipc	ra,0x0
    80003198:	dd0080e7          	jalr	-560(ra) # 80002f64 <_ZN19MemoryAllocatorTest12testFirstFitEv>
    8000319c:	00050493          	mv	s1,a0
    800031a0:	02050e63          	beqz	a0,800031dc <_ZN19MemoryAllocatorTest8runTestsEv+0x1f8>
    else printString("Passed ");
    800031a4:	00003517          	auipc	a0,0x3
    800031a8:	2d450513          	addi	a0,a0,724 # 80006478 <CONSOLE_STATUS+0x468>
    800031ac:	00000097          	auipc	ra,0x0
    800031b0:	644080e7          	jalr	1604(ra) # 800037f0 <_Z11printStringPKc>
    if (!testSegmentDescriptorSize()) {
    800031b4:	00098513          	mv	a0,s3
    800031b8:	00000097          	auipc	ra,0x0
    800031bc:	e04080e7          	jalr	-508(ra) # 80002fbc <_ZN19MemoryAllocatorTest25testSegmentDescriptorSizeEv>
    800031c0:	00050493          	mv	s1,a0
    800031c4:	02050663          	beqz	a0,800031f0 <_ZN19MemoryAllocatorTest8runTestsEv+0x20c>
    else printString("Passed\n");
    800031c8:	00003517          	auipc	a0,0x3
    800031cc:	32050513          	addi	a0,a0,800 # 800064e8 <CONSOLE_STATUS+0x4d8>
    800031d0:	00000097          	auipc	ra,0x0
    800031d4:	620080e7          	jalr	1568(ra) # 800037f0 <_Z11printStringPKc>
    800031d8:	ed1ff06f          	j	800030a8 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>
        printString("Failed testFirstFit\n"); return false; }
    800031dc:	00003517          	auipc	a0,0x3
    800031e0:	2cc50513          	addi	a0,a0,716 # 800064a8 <CONSOLE_STATUS+0x498>
    800031e4:	00000097          	auipc	ra,0x0
    800031e8:	60c080e7          	jalr	1548(ra) # 800037f0 <_Z11printStringPKc>
    800031ec:	ebdff06f          	j	800030a8 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>
        printString("Failed testSegmentDescriptorSize\n"); return false; }
    800031f0:	00003517          	auipc	a0,0x3
    800031f4:	2d050513          	addi	a0,a0,720 # 800064c0 <CONSOLE_STATUS+0x4b0>
    800031f8:	00000097          	auipc	ra,0x0
    800031fc:	5f8080e7          	jalr	1528(ra) # 800037f0 <_Z11printStringPKc>
    80003200:	ea9ff06f          	j	800030a8 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>

0000000080003204 <_Znwm>:


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80003204:	ff010113          	addi	sp,sp,-16
    80003208:	00113423          	sd	ra,8(sp)
    8000320c:	00813023          	sd	s0,0(sp)
    80003210:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80003214:	00003097          	auipc	ra,0x3
    80003218:	8e4080e7          	jalr	-1820(ra) # 80005af8 <__mem_alloc>
    //return MemoryAllocator::instance()->kmem_alloc(n);
}
    8000321c:	00813083          	ld	ra,8(sp)
    80003220:	00013403          	ld	s0,0(sp)
    80003224:	01010113          	addi	sp,sp,16
    80003228:	00008067          	ret

000000008000322c <_Znam>:

void *operator new[](size_t n)
{
    8000322c:	ff010113          	addi	sp,sp,-16
    80003230:	00113423          	sd	ra,8(sp)
    80003234:	00813023          	sd	s0,0(sp)
    80003238:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    8000323c:	00003097          	auipc	ra,0x3
    80003240:	8bc080e7          	jalr	-1860(ra) # 80005af8 <__mem_alloc>
    //return MemoryAllocator::instance()->kmem_alloc(n);
}
    80003244:	00813083          	ld	ra,8(sp)
    80003248:	00013403          	ld	s0,0(sp)
    8000324c:	01010113          	addi	sp,sp,16
    80003250:	00008067          	ret

0000000080003254 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80003254:	ff010113          	addi	sp,sp,-16
    80003258:	00113423          	sd	ra,8(sp)
    8000325c:	00813023          	sd	s0,0(sp)
    80003260:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80003264:	00002097          	auipc	ra,0x2
    80003268:	7c8080e7          	jalr	1992(ra) # 80005a2c <__mem_free>
    //MemoryAllocator::instance()->kmem_free(p);
}
    8000326c:	00813083          	ld	ra,8(sp)
    80003270:	00013403          	ld	s0,0(sp)
    80003274:	01010113          	addi	sp,sp,16
    80003278:	00008067          	ret

000000008000327c <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    8000327c:	ff010113          	addi	sp,sp,-16
    80003280:	00113423          	sd	ra,8(sp)
    80003284:	00813023          	sd	s0,0(sp)
    80003288:	01010413          	addi	s0,sp,16
    __mem_free(p);
    8000328c:	00002097          	auipc	ra,0x2
    80003290:	7a0080e7          	jalr	1952(ra) # 80005a2c <__mem_free>
    //MemoryAllocator::instance()->kmem_free(p);
    80003294:	00813083          	ld	ra,8(sp)
    80003298:	00013403          	ld	s0,0(sp)
    8000329c:	01010113          	addi	sp,sp,16
    800032a0:	00008067          	ret

00000000800032a4 <_ZN16KObjectAllocator19printInternalMemoryEv>:
#include "../h/kObjectAllocator.hpp"
#include "../h/print.hpp"

void KObjectAllocator::printInternalMemory() {
    800032a4:	fe010113          	addi	sp,sp,-32
    800032a8:	00113c23          	sd	ra,24(sp)
    800032ac:	00813823          	sd	s0,16(sp)
    800032b0:	00913423          	sd	s1,8(sp)
    800032b4:	02010413          	addi	s0,sp,32
    800032b8:	00050493          	mv	s1,a0
    printString("\nbitVector: "); printInteger((uint64)bitVectors[0]);
    800032bc:	00003517          	auipc	a0,0x3
    800032c0:	23450513          	addi	a0,a0,564 # 800064f0 <CONSOLE_STATUS+0x4e0>
    800032c4:	00000097          	auipc	ra,0x0
    800032c8:	52c080e7          	jalr	1324(ra) # 800037f0 <_Z11printStringPKc>
    800032cc:	0284b783          	ld	a5,40(s1)
    800032d0:	0007b503          	ld	a0,0(a5)
    800032d4:	00000097          	auipc	ra,0x0
    800032d8:	58c080e7          	jalr	1420(ra) # 80003860 <_Z12printIntegerm>
    printString("\nobjectVector: "); printInteger((uint64)objectVectors[0]); printString("\n");
    800032dc:	00003517          	auipc	a0,0x3
    800032e0:	22450513          	addi	a0,a0,548 # 80006500 <CONSOLE_STATUS+0x4f0>
    800032e4:	00000097          	auipc	ra,0x0
    800032e8:	50c080e7          	jalr	1292(ra) # 800037f0 <_Z11printStringPKc>
    800032ec:	0204b783          	ld	a5,32(s1)
    800032f0:	0007b503          	ld	a0,0(a5)
    800032f4:	00000097          	auipc	ra,0x0
    800032f8:	56c080e7          	jalr	1388(ra) # 80003860 <_Z12printIntegerm>
    800032fc:	00003517          	auipc	a0,0x3
    80003300:	d8c50513          	addi	a0,a0,-628 # 80006088 <CONSOLE_STATUS+0x78>
    80003304:	00000097          	auipc	ra,0x0
    80003308:	4ec080e7          	jalr	1260(ra) # 800037f0 <_Z11printStringPKc>
            printString("\n"); for (size_t j = 0; j < memorySizeForBits * 4 - 1; ++j) printString("-"); }
        else if (memorySizeForBits < 40 && i + 1 == memorySizeForBits) printString("| ");
        if (memorySizeForBits >= 40 && (i + 1) % memorySizeForBits == 0) printString("\n");
        else if (memorySizeForBits < 40 && (i + 1) % 20 == 0) printString("\n");
    }*/
}
    8000330c:	01813083          	ld	ra,24(sp)
    80003310:	01013403          	ld	s0,16(sp)
    80003314:	00813483          	ld	s1,8(sp)
    80003318:	02010113          	addi	sp,sp,32
    8000331c:	00008067          	ret

0000000080003320 <_ZN16KObjectAllocator18allocateFreeObjectEv>:
        if (returnedObject) return returnedObject;
    }
    return nullptr;
}

void* KObjectAllocator::allocateFreeObject() {
    80003320:	ff010113          	addi	sp,sp,-16
    80003324:	00813423          	sd	s0,8(sp)
    80003328:	01010413          	addi	s0,sp,16
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    8000332c:	00000893          	li	a7,0
    80003330:	03053783          	ld	a5,48(a0)
    80003334:	0cf8f263          	bgeu	a7,a5,800033f8 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xd8>
        for (size_t j = nextNonTakenByte; j < (i + 1) * memorySizeForBits; ++j) {
    80003338:	03853303          	ld	t1,56(a0)
    8000333c:	09c0006f          	j	800033d8 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xb8>
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80003340:	00078893          	mv	a7,a5
    80003344:	fedff06f          	j	80003330 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x10>
            size_t byte = j - i * memorySizeForBits;
            for (size_t bit = 8; bit != 0; --bit)
    80003348:	fff70713          	addi	a4,a4,-1
    8000334c:	08070463          	beqz	a4,800033d4 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xb4>
                if ((bitVectors[i][byte] >> (bit - 1) & (uint8) 1) == 0) {
    80003350:	02853683          	ld	a3,40(a0)
    80003354:	00389593          	slli	a1,a7,0x3
    80003358:	00b686b3          	add	a3,a3,a1
    8000335c:	0006b783          	ld	a5,0(a3)
    80003360:	00c787b3          	add	a5,a5,a2
    80003364:	0007c783          	lbu	a5,0(a5)
    80003368:	fff7081b          	addiw	a6,a4,-1
    8000336c:	4107d7bb          	sraw	a5,a5,a6
    80003370:	0017f793          	andi	a5,a5,1
    80003374:	fc079ae3          	bnez	a5,80003348 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x28>
                    nextNonTakenByte = j + (bit == 1);
    80003378:	fff70793          	addi	a5,a4,-1
    8000337c:	0017b793          	seqz	a5,a5
    80003380:	00678333          	add	t1,a5,t1
    80003384:	02653c23          	sd	t1,56(a0)
                    bitVectors[i][byte] |= (uint8) 1 << (bit - 1);
    80003388:	0006b683          	ld	a3,0(a3)
    8000338c:	00c686b3          	add	a3,a3,a2
    80003390:	00100793          	li	a5,1
    80003394:	0107983b          	sllw	a6,a5,a6
    80003398:	0006c783          	lbu	a5,0(a3)
    8000339c:	00f86833          	or	a6,a6,a5
    800033a0:	01068023          	sb	a6,0(a3)
                    return &objectVectors[i][(byte * 8 + 8 - bit) * objectSize];
    800033a4:	02053783          	ld	a5,32(a0)
    800033a8:	00b785b3          	add	a1,a5,a1
    800033ac:	0005b783          	ld	a5,0(a1)
    800033b0:	00160613          	addi	a2,a2,1
    800033b4:	00361613          	slli	a2,a2,0x3
    800033b8:	40e60733          	sub	a4,a2,a4
    800033bc:	01853503          	ld	a0,24(a0)
    800033c0:	02a70733          	mul	a4,a4,a0
    800033c4:	00e78533          	add	a0,a5,a4
                }
        }
    }
    return nullptr;
}
    800033c8:	00813403          	ld	s0,8(sp)
    800033cc:	01010113          	addi	sp,sp,16
    800033d0:	00008067          	ret
        for (size_t j = nextNonTakenByte; j < (i + 1) * memorySizeForBits; ++j) {
    800033d4:	00130313          	addi	t1,t1,1
    800033d8:	00188793          	addi	a5,a7,1
    800033dc:	01053603          	ld	a2,16(a0)
    800033e0:	02c78733          	mul	a4,a5,a2
    800033e4:	f4e37ee3          	bgeu	t1,a4,80003340 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x20>
            size_t byte = j - i * memorySizeForBits;
    800033e8:	03160633          	mul	a2,a2,a7
    800033ec:	40c30633          	sub	a2,t1,a2
            for (size_t bit = 8; bit != 0; --bit)
    800033f0:	00800713          	li	a4,8
    800033f4:	f59ff06f          	j	8000334c <_ZN16KObjectAllocator18allocateFreeObjectEv+0x2c>
    return nullptr;
    800033f8:	00000513          	li	a0,0
    800033fc:	fcdff06f          	j	800033c8 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xa8>

0000000080003400 <_ZN16KObjectAllocator10freeObjectEPv>:

void KObjectAllocator::freeObject(void* objectPointer) {
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80003400:	00000713          	li	a4,0
    80003404:	0080006f          	j	8000340c <_ZN16KObjectAllocator10freeObjectEPv+0xc>
    80003408:	00170713          	addi	a4,a4,1
    8000340c:	03053783          	ld	a5,48(a0)
    80003410:	06f77463          	bgeu	a4,a5,80003478 <_ZN16KObjectAllocator10freeObjectEPv+0x78>
        if ((uint8*) objectPointer < objectVectors[i]) continue;
    80003414:	02053783          	ld	a5,32(a0)
    80003418:	00371693          	slli	a3,a4,0x3
    8000341c:	00d787b3          	add	a5,a5,a3
    80003420:	0007b783          	ld	a5,0(a5)
    80003424:	fef5e2e3          	bltu	a1,a5,80003408 <_ZN16KObjectAllocator10freeObjectEPv+0x8>
        size_t idiff = (size_t) ((uint8*) objectPointer - objectVectors[i]);
    80003428:	40f587b3          	sub	a5,a1,a5
        size_t byte = idiff / objectSize / 8;
    8000342c:	01853603          	ld	a2,24(a0)
    80003430:	02c7d7b3          	divu	a5,a5,a2
    80003434:	0037d813          	srli	a6,a5,0x3
        if (byte >= memorySizeForBits) continue;
    80003438:	01053603          	ld	a2,16(a0)
    8000343c:	fcc876e3          	bgeu	a6,a2,80003408 <_ZN16KObjectAllocator10freeObjectEPv+0x8>
        size_t bit = idiff / objectSize - byte * 8;
    80003440:	0077f793          	andi	a5,a5,7
        bitVectors[i][byte] &= ~((uint8) 1 << (7 - bit));
    80003444:	02853603          	ld	a2,40(a0)
    80003448:	00d606b3          	add	a3,a2,a3
    8000344c:	0006b703          	ld	a4,0(a3)
    80003450:	01070733          	add	a4,a4,a6
    80003454:	00700693          	li	a3,7
    80003458:	40f686bb          	subw	a3,a3,a5
    8000345c:	00100793          	li	a5,1
    80003460:	00d797bb          	sllw	a5,a5,a3
    80003464:	fff7c793          	not	a5,a5
    80003468:	00074683          	lbu	a3,0(a4)
    8000346c:	00d7f7b3          	and	a5,a5,a3
    80003470:	00f70023          	sb	a5,0(a4)
        return;
    80003474:	00008067          	ret
void KObjectAllocator::freeObject(void* objectPointer) {
    80003478:	ff010113          	addi	sp,sp,-16
    8000347c:	00113423          	sd	ra,8(sp)
    80003480:	00813023          	sd	s0,0(sp)
    80003484:	01010413          	addi	s0,sp,16
    }
    printString("ERROR: Object not allocated in this KObjectAllocator\n");
    80003488:	00003517          	auipc	a0,0x3
    8000348c:	08850513          	addi	a0,a0,136 # 80006510 <CONSOLE_STATUS+0x500>
    80003490:	00000097          	auipc	ra,0x0
    80003494:	360080e7          	jalr	864(ra) # 800037f0 <_Z11printStringPKc>
}
    80003498:	00813083          	ld	ra,8(sp)
    8000349c:	00013403          	ld	s0,0(sp)
    800034a0:	01010113          	addi	sp,sp,16
    800034a4:	00008067          	ret

00000000800034a8 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv>:

bool KObjectAllocator::handleNotEnoughMemoryProblem() {
    800034a8:	ff010113          	addi	sp,sp,-16
    800034ac:	00813423          	sd	s0,8(sp)
    800034b0:	01010413          	addi	s0,sp,16
    return true;
}
    800034b4:	00100513          	li	a0,1
    800034b8:	00813403          	ld	s0,8(sp)
    800034bc:	01010113          	addi	sp,sp,16
    800034c0:	00008067          	ret

00000000800034c4 <_ZN16KObjectAllocator17allocateNewObjectEv>:
void* KObjectAllocator::allocateNewObject() {
    800034c4:	fd010113          	addi	sp,sp,-48
    800034c8:	02113423          	sd	ra,40(sp)
    800034cc:	02813023          	sd	s0,32(sp)
    800034d0:	00913c23          	sd	s1,24(sp)
    800034d4:	01213823          	sd	s2,16(sp)
    800034d8:	01313423          	sd	s3,8(sp)
    800034dc:	03010413          	addi	s0,sp,48
    800034e0:	00050913          	mv	s2,a0
    void* returnedObject = allocateFreeObject();
    800034e4:	00000097          	auipc	ra,0x0
    800034e8:	e3c080e7          	jalr	-452(ra) # 80003320 <_ZN16KObjectAllocator18allocateFreeObjectEv>
    800034ec:	00050493          	mv	s1,a0
    if (returnedObject) return returnedObject;
    800034f0:	02050263          	beqz	a0,80003514 <_ZN16KObjectAllocator17allocateNewObjectEv+0x50>
}
    800034f4:	00048513          	mv	a0,s1
    800034f8:	02813083          	ld	ra,40(sp)
    800034fc:	02013403          	ld	s0,32(sp)
    80003500:	01813483          	ld	s1,24(sp)
    80003504:	01013903          	ld	s2,16(sp)
    80003508:	00813983          	ld	s3,8(sp)
    8000350c:	03010113          	addi	sp,sp,48
    80003510:	00008067          	ret
    size_t tmp = memorySizeForBits;
    80003514:	01093983          	ld	s3,16(s2)
    memorySizeForBits = nextNonTakenByte;
    80003518:	03893783          	ld	a5,56(s2)
    8000351c:	00f93823          	sd	a5,16(s2)
    nextNonTakenByte = 0;   // start search from start
    80003520:	02093c23          	sd	zero,56(s2)
    returnedObject = allocateFreeObject();
    80003524:	00090513          	mv	a0,s2
    80003528:	00000097          	auipc	ra,0x0
    8000352c:	df8080e7          	jalr	-520(ra) # 80003320 <_ZN16KObjectAllocator18allocateFreeObjectEv>
    80003530:	00050493          	mv	s1,a0
    memorySizeForBits = tmp;    // revert back to original memory size for bits
    80003534:	01393823          	sd	s3,16(s2)
    if (returnedObject) return returnedObject;
    80003538:	fa051ee3          	bnez	a0,800034f4 <_ZN16KObjectAllocator17allocateNewObjectEv+0x30>
    if (handleNotEnoughMemoryProblem()) {
    8000353c:	00090513          	mv	a0,s2
    80003540:	00000097          	auipc	ra,0x0
    80003544:	f68080e7          	jalr	-152(ra) # 800034a8 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv>
    80003548:	fa0506e3          	beqz	a0,800034f4 <_ZN16KObjectAllocator17allocateNewObjectEv+0x30>
        returnedObject = allocateFreeObject();
    8000354c:	00090513          	mv	a0,s2
    80003550:	00000097          	auipc	ra,0x0
    80003554:	dd0080e7          	jalr	-560(ra) # 80003320 <_ZN16KObjectAllocator18allocateFreeObjectEv>
    80003558:	00050493          	mv	s1,a0
        if (returnedObject) return returnedObject;
    8000355c:	f99ff06f          	j	800034f4 <_ZN16KObjectAllocator17allocateNewObjectEv+0x30>

0000000080003560 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"

void Riscv::popSppSpie()
{
    80003560:	ff010113          	addi	sp,sp,-16
    80003564:	00813423          	sd	s0,8(sp)
    80003568:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    8000356c:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80003570:	10200073          	sret
}
    80003574:	00813403          	ld	s0,8(sp)
    80003578:	01010113          	addi	sp,sp,16
    8000357c:	00008067          	ret

0000000080003580 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80003580:	fa010113          	addi	sp,sp,-96
    80003584:	04113c23          	sd	ra,88(sp)
    80003588:	04813823          	sd	s0,80(sp)
    8000358c:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80003590:	142027f3          	csrr	a5,scause
    80003594:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80003598:	fc843703          	ld	a4,-56(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    8000359c:	ff870693          	addi	a3,a4,-8
    800035a0:	00100793          	li	a5,1
    800035a4:	02d7fa63          	bgeu	a5,a3,800035d8 <_ZN5Riscv20handleSupervisorTrapEv+0x58>
        TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    800035a8:	fff00793          	li	a5,-1
    800035ac:	03f79793          	slli	a5,a5,0x3f
    800035b0:	00178793          	addi	a5,a5,1
    800035b4:	06f70863          	beq	a4,a5,80003624 <_ZN5Riscv20handleSupervisorTrapEv+0xa4>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    800035b8:	fff00793          	li	a5,-1
    800035bc:	03f79793          	slli	a5,a5,0x3f
    800035c0:	00978793          	addi	a5,a5,9
    800035c4:	0cf70c63          	beq	a4,a5,8000369c <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
    }
    else
    {
        // unexpected trap cause
    }
    800035c8:	05813083          	ld	ra,88(sp)
    800035cc:	05013403          	ld	s0,80(sp)
    800035d0:	06010113          	addi	sp,sp,96
    800035d4:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800035d8:	141027f3          	csrr	a5,sepc
    800035dc:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    800035e0:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    800035e4:	00478793          	addi	a5,a5,4
    800035e8:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800035ec:	100027f3          	csrr	a5,sstatus
    800035f0:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    800035f4:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    800035f8:	faf43823          	sd	a5,-80(s0)
        TCB::timeSliceCounter = 0;
    800035fc:	00004797          	auipc	a5,0x4
    80003600:	bb47b783          	ld	a5,-1100(a5) # 800071b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003604:	0007b023          	sd	zero,0(a5)
        TCB::dispatch();
    80003608:	ffffe097          	auipc	ra,0xffffe
    8000360c:	5b4080e7          	jalr	1460(ra) # 80001bbc <_ZN3TCB8dispatchEv>
        w_sstatus(sstatus);
    80003610:	fb043783          	ld	a5,-80(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80003614:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80003618:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000361c:	14179073          	csrw	sepc,a5
}
    80003620:	fa9ff06f          	j	800035c8 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80003624:	00200793          	li	a5,2
    80003628:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    8000362c:	00004717          	auipc	a4,0x4
    80003630:	b8473703          	ld	a4,-1148(a4) # 800071b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003634:	00073783          	ld	a5,0(a4)
    80003638:	00178793          	addi	a5,a5,1
    8000363c:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80003640:	00004717          	auipc	a4,0x4
    80003644:	b9073703          	ld	a4,-1136(a4) # 800071d0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003648:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    8000364c:	02073703          	ld	a4,32(a4)
    80003650:	f6e7ece3          	bltu	a5,a4,800035c8 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80003654:	141027f3          	csrr	a5,sepc
    80003658:	fef43423          	sd	a5,-24(s0)
    return sepc;
    8000365c:	fe843783          	ld	a5,-24(s0)
            uint64 volatile sepc = r_sepc();
    80003660:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003664:	100027f3          	csrr	a5,sstatus
    80003668:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    8000366c:	fe043783          	ld	a5,-32(s0)
            uint64 volatile sstatus = r_sstatus();
    80003670:	fcf43023          	sd	a5,-64(s0)
            TCB::timeSliceCounter = 0;
    80003674:	00004797          	auipc	a5,0x4
    80003678:	b3c7b783          	ld	a5,-1220(a5) # 800071b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000367c:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80003680:	ffffe097          	auipc	ra,0xffffe
    80003684:	53c080e7          	jalr	1340(ra) # 80001bbc <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80003688:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000368c:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80003690:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80003694:	14179073          	csrw	sepc,a5
}
    80003698:	f31ff06f          	j	800035c8 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
        console_handler();
    8000369c:	00002097          	auipc	ra,0x2
    800036a0:	628080e7          	jalr	1576(ra) # 80005cc4 <console_handler>
    800036a4:	f25ff06f          	j	800035c8 <_ZN5Riscv20handleSupervisorTrapEv+0x48>

00000000800036a8 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    800036a8:	ff010113          	addi	sp,sp,-16
    800036ac:	00813423          	sd	s0,8(sp)
    800036b0:	01010413          	addi	s0,sp,16
    800036b4:	00100793          	li	a5,1
    800036b8:	00f50863          	beq	a0,a5,800036c8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800036bc:	00813403          	ld	s0,8(sp)
    800036c0:	01010113          	addi	sp,sp,16
    800036c4:	00008067          	ret
    800036c8:	000107b7          	lui	a5,0x10
    800036cc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800036d0:	fef596e3          	bne	a1,a5,800036bc <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800036d4:	00004797          	auipc	a5,0x4
    800036d8:	b9c78793          	addi	a5,a5,-1124 # 80007270 <_ZN9Scheduler16readyThreadQueueE>
    800036dc:	0007b023          	sd	zero,0(a5)
    800036e0:	0007b423          	sd	zero,8(a5)
    800036e4:	fd9ff06f          	j	800036bc <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800036e8 <_ZN9Scheduler3getEv>:
{
    800036e8:	fe010113          	addi	sp,sp,-32
    800036ec:	00113c23          	sd	ra,24(sp)
    800036f0:	00813823          	sd	s0,16(sp)
    800036f4:	00913423          	sd	s1,8(sp)
    800036f8:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800036fc:	00004517          	auipc	a0,0x4
    80003700:	b7453503          	ld	a0,-1164(a0) # 80007270 <_ZN9Scheduler16readyThreadQueueE>
    80003704:	04050263          	beqz	a0,80003748 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80003708:	00853783          	ld	a5,8(a0)
    8000370c:	00004717          	auipc	a4,0x4
    80003710:	b6f73223          	sd	a5,-1180(a4) # 80007270 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80003714:	02078463          	beqz	a5,8000373c <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80003718:	00053483          	ld	s1,0(a0)
        delete elem;
    8000371c:	00000097          	auipc	ra,0x0
    80003720:	b38080e7          	jalr	-1224(ra) # 80003254 <_ZdlPv>
}
    80003724:	00048513          	mv	a0,s1
    80003728:	01813083          	ld	ra,24(sp)
    8000372c:	01013403          	ld	s0,16(sp)
    80003730:	00813483          	ld	s1,8(sp)
    80003734:	02010113          	addi	sp,sp,32
    80003738:	00008067          	ret
        if (!head) { tail = 0; }
    8000373c:	00004797          	auipc	a5,0x4
    80003740:	b207be23          	sd	zero,-1220(a5) # 80007278 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003744:	fd5ff06f          	j	80003718 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80003748:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    8000374c:	fd9ff06f          	j	80003724 <_ZN9Scheduler3getEv+0x3c>

0000000080003750 <_ZN9Scheduler3putEP3TCB>:
{
    80003750:	fe010113          	addi	sp,sp,-32
    80003754:	00113c23          	sd	ra,24(sp)
    80003758:	00813823          	sd	s0,16(sp)
    8000375c:	00913423          	sd	s1,8(sp)
    80003760:	02010413          	addi	s0,sp,32
    80003764:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80003768:	01000513          	li	a0,16
    8000376c:	00000097          	auipc	ra,0x0
    80003770:	a98080e7          	jalr	-1384(ra) # 80003204 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80003774:	00953023          	sd	s1,0(a0)
    80003778:	00053423          	sd	zero,8(a0)
        if (tail)
    8000377c:	00004797          	auipc	a5,0x4
    80003780:	afc7b783          	ld	a5,-1284(a5) # 80007278 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003784:	02078263          	beqz	a5,800037a8 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80003788:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000378c:	00004797          	auipc	a5,0x4
    80003790:	aea7b623          	sd	a0,-1300(a5) # 80007278 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003794:	01813083          	ld	ra,24(sp)
    80003798:	01013403          	ld	s0,16(sp)
    8000379c:	00813483          	ld	s1,8(sp)
    800037a0:	02010113          	addi	sp,sp,32
    800037a4:	00008067          	ret
            head = tail = elem;
    800037a8:	00004797          	auipc	a5,0x4
    800037ac:	ac878793          	addi	a5,a5,-1336 # 80007270 <_ZN9Scheduler16readyThreadQueueE>
    800037b0:	00a7b423          	sd	a0,8(a5)
    800037b4:	00a7b023          	sd	a0,0(a5)
    800037b8:	fddff06f          	j	80003794 <_ZN9Scheduler3putEP3TCB+0x44>

00000000800037bc <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800037bc:	ff010113          	addi	sp,sp,-16
    800037c0:	00113423          	sd	ra,8(sp)
    800037c4:	00813023          	sd	s0,0(sp)
    800037c8:	01010413          	addi	s0,sp,16
    800037cc:	000105b7          	lui	a1,0x10
    800037d0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800037d4:	00100513          	li	a0,1
    800037d8:	00000097          	auipc	ra,0x0
    800037dc:	ed0080e7          	jalr	-304(ra) # 800036a8 <_Z41__static_initialization_and_destruction_0ii>
    800037e0:	00813083          	ld	ra,8(sp)
    800037e4:	00013403          	ld	s0,0(sp)
    800037e8:	01010113          	addi	sp,sp,16
    800037ec:	00008067          	ret

00000000800037f0 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    800037f0:	fd010113          	addi	sp,sp,-48
    800037f4:	02113423          	sd	ra,40(sp)
    800037f8:	02813023          	sd	s0,32(sp)
    800037fc:	00913c23          	sd	s1,24(sp)
    80003800:	01213823          	sd	s2,16(sp)
    80003804:	03010413          	addi	s0,sp,48
    80003808:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000380c:	100027f3          	csrr	a5,sstatus
    80003810:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80003814:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80003818:	00200793          	li	a5,2
    8000381c:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    while (*string != '\0') __putc(*string++);
    80003820:	0004c503          	lbu	a0,0(s1)
    80003824:	00050a63          	beqz	a0,80003838 <_Z11printStringPKc+0x48>
    80003828:	00148493          	addi	s1,s1,1
    8000382c:	00002097          	auipc	ra,0x2
    80003830:	424080e7          	jalr	1060(ra) # 80005c50 <__putc>
    80003834:	fedff06f          	j	80003820 <_Z11printStringPKc+0x30>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80003838:	0009091b          	sext.w	s2,s2
    8000383c:	00297913          	andi	s2,s2,2
    80003840:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80003844:	10092073          	csrs	sstatus,s2
}
    80003848:	02813083          	ld	ra,40(sp)
    8000384c:	02013403          	ld	s0,32(sp)
    80003850:	01813483          	ld	s1,24(sp)
    80003854:	01013903          	ld	s2,16(sp)
    80003858:	03010113          	addi	sp,sp,48
    8000385c:	00008067          	ret

0000000080003860 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80003860:	fc010113          	addi	sp,sp,-64
    80003864:	02113c23          	sd	ra,56(sp)
    80003868:	02813823          	sd	s0,48(sp)
    8000386c:	02913423          	sd	s1,40(sp)
    80003870:	03213023          	sd	s2,32(sp)
    80003874:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003878:	100027f3          	csrr	a5,sstatus
    8000387c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80003880:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80003884:	00200793          	li	a5,2
    80003888:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    static char digits[] = "0123456789";
    char buf[16]; int i = 0; uint64 x = integer;
    int neg = (integer & ((uint64)1 << 63)) != 0;
    8000388c:	00050593          	mv	a1,a0

    if (neg) x = ~integer + 1;
    80003890:	06054463          	bltz	a0,800038f8 <_Z12printIntegerm+0x98>
{
    80003894:	00000493          	li	s1,0

    do buf[i++] = digits[x % 10];
    80003898:	00a00713          	li	a4,10
    8000389c:	02e57633          	remu	a2,a0,a4
    800038a0:	00048693          	mv	a3,s1
    800038a4:	0014849b          	addiw	s1,s1,1
    800038a8:	00003797          	auipc	a5,0x3
    800038ac:	ca078793          	addi	a5,a5,-864 # 80006548 <_ZZ12printIntegermE6digits>
    800038b0:	00c787b3          	add	a5,a5,a2
    800038b4:	0007c603          	lbu	a2,0(a5)
    800038b8:	fe040793          	addi	a5,s0,-32
    800038bc:	00d787b3          	add	a5,a5,a3
    800038c0:	fec78823          	sb	a2,-16(a5)
    while ((x /= 10) != 0);
    800038c4:	00050613          	mv	a2,a0
    800038c8:	02e55533          	divu	a0,a0,a4
    800038cc:	00900793          	li	a5,9
    800038d0:	fcc7e4e3          	bltu	a5,a2,80003898 <_Z12printIntegerm+0x38>

    if (neg) buf[i++] = '-';
    800038d4:	0205c663          	bltz	a1,80003900 <_Z12printIntegerm+0xa0>
    while (--i >= 0) { __putc(buf[i]); }
    800038d8:	fff4849b          	addiw	s1,s1,-1
    800038dc:	0204ce63          	bltz	s1,80003918 <_Z12printIntegerm+0xb8>
    800038e0:	fe040793          	addi	a5,s0,-32
    800038e4:	009787b3          	add	a5,a5,s1
    800038e8:	ff07c503          	lbu	a0,-16(a5)
    800038ec:	00002097          	auipc	ra,0x2
    800038f0:	364080e7          	jalr	868(ra) # 80005c50 <__putc>
    800038f4:	fe5ff06f          	j	800038d8 <_Z12printIntegerm+0x78>
    if (neg) x = ~integer + 1;
    800038f8:	40a00533          	neg	a0,a0
    800038fc:	f99ff06f          	j	80003894 <_Z12printIntegerm+0x34>
    if (neg) buf[i++] = '-';
    80003900:	fe040793          	addi	a5,s0,-32
    80003904:	009784b3          	add	s1,a5,s1
    80003908:	02d00793          	li	a5,45
    8000390c:	fef48823          	sb	a5,-16(s1)
    80003910:	0026849b          	addiw	s1,a3,2
    80003914:	fc5ff06f          	j	800038d8 <_Z12printIntegerm+0x78>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80003918:	0009091b          	sext.w	s2,s2
    8000391c:	00297913          	andi	s2,s2,2
    80003920:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80003924:	10092073          	csrs	sstatus,s2
}
    80003928:	03813083          	ld	ra,56(sp)
    8000392c:	03013403          	ld	s0,48(sp)
    80003930:	02813483          	ld	s1,40(sp)
    80003934:	02013903          	ld	s2,32(sp)
    80003938:	04010113          	addi	sp,sp,64
    8000393c:	00008067          	ret

0000000080003940 <_Z12printIntegerh>:


void printInteger(uint8 integer)
{
    80003940:	ff010113          	addi	sp,sp,-16
    80003944:	00113423          	sd	ra,8(sp)
    80003948:	00813023          	sd	s0,0(sp)
    8000394c:	01010413          	addi	s0,sp,16
    printInteger((uint64)integer);
    80003950:	00000097          	auipc	ra,0x0
    80003954:	f10080e7          	jalr	-240(ra) # 80003860 <_Z12printIntegerm>
}
    80003958:	00813083          	ld	ra,8(sp)
    8000395c:	00013403          	ld	s0,0(sp)
    80003960:	01010113          	addi	sp,sp,16
    80003964:	00008067          	ret

0000000080003968 <start>:
    80003968:	ff010113          	addi	sp,sp,-16
    8000396c:	00813423          	sd	s0,8(sp)
    80003970:	01010413          	addi	s0,sp,16
    80003974:	300027f3          	csrr	a5,mstatus
    80003978:	ffffe737          	lui	a4,0xffffe
    8000397c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff630f>
    80003980:	00e7f7b3          	and	a5,a5,a4
    80003984:	00001737          	lui	a4,0x1
    80003988:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000398c:	00e7e7b3          	or	a5,a5,a4
    80003990:	30079073          	csrw	mstatus,a5
    80003994:	00000797          	auipc	a5,0x0
    80003998:	16078793          	addi	a5,a5,352 # 80003af4 <system_main>
    8000399c:	34179073          	csrw	mepc,a5
    800039a0:	00000793          	li	a5,0
    800039a4:	18079073          	csrw	satp,a5
    800039a8:	000107b7          	lui	a5,0x10
    800039ac:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800039b0:	30279073          	csrw	medeleg,a5
    800039b4:	30379073          	csrw	mideleg,a5
    800039b8:	104027f3          	csrr	a5,sie
    800039bc:	2227e793          	ori	a5,a5,546
    800039c0:	10479073          	csrw	sie,a5
    800039c4:	fff00793          	li	a5,-1
    800039c8:	00a7d793          	srli	a5,a5,0xa
    800039cc:	3b079073          	csrw	pmpaddr0,a5
    800039d0:	00f00793          	li	a5,15
    800039d4:	3a079073          	csrw	pmpcfg0,a5
    800039d8:	f14027f3          	csrr	a5,mhartid
    800039dc:	0200c737          	lui	a4,0x200c
    800039e0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800039e4:	0007869b          	sext.w	a3,a5
    800039e8:	00269713          	slli	a4,a3,0x2
    800039ec:	000f4637          	lui	a2,0xf4
    800039f0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800039f4:	00d70733          	add	a4,a4,a3
    800039f8:	0037979b          	slliw	a5,a5,0x3
    800039fc:	020046b7          	lui	a3,0x2004
    80003a00:	00d787b3          	add	a5,a5,a3
    80003a04:	00c585b3          	add	a1,a1,a2
    80003a08:	00371693          	slli	a3,a4,0x3
    80003a0c:	00004717          	auipc	a4,0x4
    80003a10:	87470713          	addi	a4,a4,-1932 # 80007280 <timer_scratch>
    80003a14:	00b7b023          	sd	a1,0(a5)
    80003a18:	00d70733          	add	a4,a4,a3
    80003a1c:	00f73c23          	sd	a5,24(a4)
    80003a20:	02c73023          	sd	a2,32(a4)
    80003a24:	34071073          	csrw	mscratch,a4
    80003a28:	00000797          	auipc	a5,0x0
    80003a2c:	6e878793          	addi	a5,a5,1768 # 80004110 <timervec>
    80003a30:	30579073          	csrw	mtvec,a5
    80003a34:	300027f3          	csrr	a5,mstatus
    80003a38:	0087e793          	ori	a5,a5,8
    80003a3c:	30079073          	csrw	mstatus,a5
    80003a40:	304027f3          	csrr	a5,mie
    80003a44:	0807e793          	ori	a5,a5,128
    80003a48:	30479073          	csrw	mie,a5
    80003a4c:	f14027f3          	csrr	a5,mhartid
    80003a50:	0007879b          	sext.w	a5,a5
    80003a54:	00078213          	mv	tp,a5
    80003a58:	30200073          	mret
    80003a5c:	00813403          	ld	s0,8(sp)
    80003a60:	01010113          	addi	sp,sp,16
    80003a64:	00008067          	ret

0000000080003a68 <timerinit>:
    80003a68:	ff010113          	addi	sp,sp,-16
    80003a6c:	00813423          	sd	s0,8(sp)
    80003a70:	01010413          	addi	s0,sp,16
    80003a74:	f14027f3          	csrr	a5,mhartid
    80003a78:	0200c737          	lui	a4,0x200c
    80003a7c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003a80:	0007869b          	sext.w	a3,a5
    80003a84:	00269713          	slli	a4,a3,0x2
    80003a88:	000f4637          	lui	a2,0xf4
    80003a8c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003a90:	00d70733          	add	a4,a4,a3
    80003a94:	0037979b          	slliw	a5,a5,0x3
    80003a98:	020046b7          	lui	a3,0x2004
    80003a9c:	00d787b3          	add	a5,a5,a3
    80003aa0:	00c585b3          	add	a1,a1,a2
    80003aa4:	00371693          	slli	a3,a4,0x3
    80003aa8:	00003717          	auipc	a4,0x3
    80003aac:	7d870713          	addi	a4,a4,2008 # 80007280 <timer_scratch>
    80003ab0:	00b7b023          	sd	a1,0(a5)
    80003ab4:	00d70733          	add	a4,a4,a3
    80003ab8:	00f73c23          	sd	a5,24(a4)
    80003abc:	02c73023          	sd	a2,32(a4)
    80003ac0:	34071073          	csrw	mscratch,a4
    80003ac4:	00000797          	auipc	a5,0x0
    80003ac8:	64c78793          	addi	a5,a5,1612 # 80004110 <timervec>
    80003acc:	30579073          	csrw	mtvec,a5
    80003ad0:	300027f3          	csrr	a5,mstatus
    80003ad4:	0087e793          	ori	a5,a5,8
    80003ad8:	30079073          	csrw	mstatus,a5
    80003adc:	304027f3          	csrr	a5,mie
    80003ae0:	0807e793          	ori	a5,a5,128
    80003ae4:	30479073          	csrw	mie,a5
    80003ae8:	00813403          	ld	s0,8(sp)
    80003aec:	01010113          	addi	sp,sp,16
    80003af0:	00008067          	ret

0000000080003af4 <system_main>:
    80003af4:	fe010113          	addi	sp,sp,-32
    80003af8:	00813823          	sd	s0,16(sp)
    80003afc:	00913423          	sd	s1,8(sp)
    80003b00:	00113c23          	sd	ra,24(sp)
    80003b04:	02010413          	addi	s0,sp,32
    80003b08:	00000097          	auipc	ra,0x0
    80003b0c:	0c4080e7          	jalr	196(ra) # 80003bcc <cpuid>
    80003b10:	00003497          	auipc	s1,0x3
    80003b14:	70048493          	addi	s1,s1,1792 # 80007210 <started>
    80003b18:	02050263          	beqz	a0,80003b3c <system_main+0x48>
    80003b1c:	0004a783          	lw	a5,0(s1)
    80003b20:	0007879b          	sext.w	a5,a5
    80003b24:	fe078ce3          	beqz	a5,80003b1c <system_main+0x28>
    80003b28:	0ff0000f          	fence
    80003b2c:	00003517          	auipc	a0,0x3
    80003b30:	a5c50513          	addi	a0,a0,-1444 # 80006588 <_ZZ12printIntegermE6digits+0x40>
    80003b34:	00001097          	auipc	ra,0x1
    80003b38:	a78080e7          	jalr	-1416(ra) # 800045ac <panic>
    80003b3c:	00001097          	auipc	ra,0x1
    80003b40:	9cc080e7          	jalr	-1588(ra) # 80004508 <consoleinit>
    80003b44:	00001097          	auipc	ra,0x1
    80003b48:	158080e7          	jalr	344(ra) # 80004c9c <printfinit>
    80003b4c:	00002517          	auipc	a0,0x2
    80003b50:	53c50513          	addi	a0,a0,1340 # 80006088 <CONSOLE_STATUS+0x78>
    80003b54:	00001097          	auipc	ra,0x1
    80003b58:	ab4080e7          	jalr	-1356(ra) # 80004608 <__printf>
    80003b5c:	00003517          	auipc	a0,0x3
    80003b60:	9fc50513          	addi	a0,a0,-1540 # 80006558 <_ZZ12printIntegermE6digits+0x10>
    80003b64:	00001097          	auipc	ra,0x1
    80003b68:	aa4080e7          	jalr	-1372(ra) # 80004608 <__printf>
    80003b6c:	00002517          	auipc	a0,0x2
    80003b70:	51c50513          	addi	a0,a0,1308 # 80006088 <CONSOLE_STATUS+0x78>
    80003b74:	00001097          	auipc	ra,0x1
    80003b78:	a94080e7          	jalr	-1388(ra) # 80004608 <__printf>
    80003b7c:	00001097          	auipc	ra,0x1
    80003b80:	4ac080e7          	jalr	1196(ra) # 80005028 <kinit>
    80003b84:	00000097          	auipc	ra,0x0
    80003b88:	148080e7          	jalr	328(ra) # 80003ccc <trapinit>
    80003b8c:	00000097          	auipc	ra,0x0
    80003b90:	16c080e7          	jalr	364(ra) # 80003cf8 <trapinithart>
    80003b94:	00000097          	auipc	ra,0x0
    80003b98:	5bc080e7          	jalr	1468(ra) # 80004150 <plicinit>
    80003b9c:	00000097          	auipc	ra,0x0
    80003ba0:	5dc080e7          	jalr	1500(ra) # 80004178 <plicinithart>
    80003ba4:	00000097          	auipc	ra,0x0
    80003ba8:	078080e7          	jalr	120(ra) # 80003c1c <userinit>
    80003bac:	0ff0000f          	fence
    80003bb0:	00100793          	li	a5,1
    80003bb4:	00003517          	auipc	a0,0x3
    80003bb8:	9bc50513          	addi	a0,a0,-1604 # 80006570 <_ZZ12printIntegermE6digits+0x28>
    80003bbc:	00f4a023          	sw	a5,0(s1)
    80003bc0:	00001097          	auipc	ra,0x1
    80003bc4:	a48080e7          	jalr	-1464(ra) # 80004608 <__printf>
    80003bc8:	0000006f          	j	80003bc8 <system_main+0xd4>

0000000080003bcc <cpuid>:
    80003bcc:	ff010113          	addi	sp,sp,-16
    80003bd0:	00813423          	sd	s0,8(sp)
    80003bd4:	01010413          	addi	s0,sp,16
    80003bd8:	00020513          	mv	a0,tp
    80003bdc:	00813403          	ld	s0,8(sp)
    80003be0:	0005051b          	sext.w	a0,a0
    80003be4:	01010113          	addi	sp,sp,16
    80003be8:	00008067          	ret

0000000080003bec <mycpu>:
    80003bec:	ff010113          	addi	sp,sp,-16
    80003bf0:	00813423          	sd	s0,8(sp)
    80003bf4:	01010413          	addi	s0,sp,16
    80003bf8:	00020793          	mv	a5,tp
    80003bfc:	00813403          	ld	s0,8(sp)
    80003c00:	0007879b          	sext.w	a5,a5
    80003c04:	00779793          	slli	a5,a5,0x7
    80003c08:	00004517          	auipc	a0,0x4
    80003c0c:	6a850513          	addi	a0,a0,1704 # 800082b0 <cpus>
    80003c10:	00f50533          	add	a0,a0,a5
    80003c14:	01010113          	addi	sp,sp,16
    80003c18:	00008067          	ret

0000000080003c1c <userinit>:
    80003c1c:	ff010113          	addi	sp,sp,-16
    80003c20:	00813423          	sd	s0,8(sp)
    80003c24:	01010413          	addi	s0,sp,16
    80003c28:	00813403          	ld	s0,8(sp)
    80003c2c:	01010113          	addi	sp,sp,16
    80003c30:	ffffe317          	auipc	t1,0xffffe
    80003c34:	a5c30067          	jr	-1444(t1) # 8000168c <main>

0000000080003c38 <either_copyout>:
    80003c38:	ff010113          	addi	sp,sp,-16
    80003c3c:	00813023          	sd	s0,0(sp)
    80003c40:	00113423          	sd	ra,8(sp)
    80003c44:	01010413          	addi	s0,sp,16
    80003c48:	02051663          	bnez	a0,80003c74 <either_copyout+0x3c>
    80003c4c:	00058513          	mv	a0,a1
    80003c50:	00060593          	mv	a1,a2
    80003c54:	0006861b          	sext.w	a2,a3
    80003c58:	00002097          	auipc	ra,0x2
    80003c5c:	c5c080e7          	jalr	-932(ra) # 800058b4 <__memmove>
    80003c60:	00813083          	ld	ra,8(sp)
    80003c64:	00013403          	ld	s0,0(sp)
    80003c68:	00000513          	li	a0,0
    80003c6c:	01010113          	addi	sp,sp,16
    80003c70:	00008067          	ret
    80003c74:	00003517          	auipc	a0,0x3
    80003c78:	93c50513          	addi	a0,a0,-1732 # 800065b0 <_ZZ12printIntegermE6digits+0x68>
    80003c7c:	00001097          	auipc	ra,0x1
    80003c80:	930080e7          	jalr	-1744(ra) # 800045ac <panic>

0000000080003c84 <either_copyin>:
    80003c84:	ff010113          	addi	sp,sp,-16
    80003c88:	00813023          	sd	s0,0(sp)
    80003c8c:	00113423          	sd	ra,8(sp)
    80003c90:	01010413          	addi	s0,sp,16
    80003c94:	02059463          	bnez	a1,80003cbc <either_copyin+0x38>
    80003c98:	00060593          	mv	a1,a2
    80003c9c:	0006861b          	sext.w	a2,a3
    80003ca0:	00002097          	auipc	ra,0x2
    80003ca4:	c14080e7          	jalr	-1004(ra) # 800058b4 <__memmove>
    80003ca8:	00813083          	ld	ra,8(sp)
    80003cac:	00013403          	ld	s0,0(sp)
    80003cb0:	00000513          	li	a0,0
    80003cb4:	01010113          	addi	sp,sp,16
    80003cb8:	00008067          	ret
    80003cbc:	00003517          	auipc	a0,0x3
    80003cc0:	91c50513          	addi	a0,a0,-1764 # 800065d8 <_ZZ12printIntegermE6digits+0x90>
    80003cc4:	00001097          	auipc	ra,0x1
    80003cc8:	8e8080e7          	jalr	-1816(ra) # 800045ac <panic>

0000000080003ccc <trapinit>:
    80003ccc:	ff010113          	addi	sp,sp,-16
    80003cd0:	00813423          	sd	s0,8(sp)
    80003cd4:	01010413          	addi	s0,sp,16
    80003cd8:	00813403          	ld	s0,8(sp)
    80003cdc:	00003597          	auipc	a1,0x3
    80003ce0:	92458593          	addi	a1,a1,-1756 # 80006600 <_ZZ12printIntegermE6digits+0xb8>
    80003ce4:	00004517          	auipc	a0,0x4
    80003ce8:	64c50513          	addi	a0,a0,1612 # 80008330 <tickslock>
    80003cec:	01010113          	addi	sp,sp,16
    80003cf0:	00001317          	auipc	t1,0x1
    80003cf4:	5c830067          	jr	1480(t1) # 800052b8 <initlock>

0000000080003cf8 <trapinithart>:
    80003cf8:	ff010113          	addi	sp,sp,-16
    80003cfc:	00813423          	sd	s0,8(sp)
    80003d00:	01010413          	addi	s0,sp,16
    80003d04:	00000797          	auipc	a5,0x0
    80003d08:	2fc78793          	addi	a5,a5,764 # 80004000 <kernelvec>
    80003d0c:	10579073          	csrw	stvec,a5
    80003d10:	00813403          	ld	s0,8(sp)
    80003d14:	01010113          	addi	sp,sp,16
    80003d18:	00008067          	ret

0000000080003d1c <usertrap>:
    80003d1c:	ff010113          	addi	sp,sp,-16
    80003d20:	00813423          	sd	s0,8(sp)
    80003d24:	01010413          	addi	s0,sp,16
    80003d28:	00813403          	ld	s0,8(sp)
    80003d2c:	01010113          	addi	sp,sp,16
    80003d30:	00008067          	ret

0000000080003d34 <usertrapret>:
    80003d34:	ff010113          	addi	sp,sp,-16
    80003d38:	00813423          	sd	s0,8(sp)
    80003d3c:	01010413          	addi	s0,sp,16
    80003d40:	00813403          	ld	s0,8(sp)
    80003d44:	01010113          	addi	sp,sp,16
    80003d48:	00008067          	ret

0000000080003d4c <kerneltrap>:
    80003d4c:	fe010113          	addi	sp,sp,-32
    80003d50:	00813823          	sd	s0,16(sp)
    80003d54:	00113c23          	sd	ra,24(sp)
    80003d58:	00913423          	sd	s1,8(sp)
    80003d5c:	02010413          	addi	s0,sp,32
    80003d60:	142025f3          	csrr	a1,scause
    80003d64:	100027f3          	csrr	a5,sstatus
    80003d68:	0027f793          	andi	a5,a5,2
    80003d6c:	10079c63          	bnez	a5,80003e84 <kerneltrap+0x138>
    80003d70:	142027f3          	csrr	a5,scause
    80003d74:	0207ce63          	bltz	a5,80003db0 <kerneltrap+0x64>
    80003d78:	00003517          	auipc	a0,0x3
    80003d7c:	8d050513          	addi	a0,a0,-1840 # 80006648 <_ZZ12printIntegermE6digits+0x100>
    80003d80:	00001097          	auipc	ra,0x1
    80003d84:	888080e7          	jalr	-1912(ra) # 80004608 <__printf>
    80003d88:	141025f3          	csrr	a1,sepc
    80003d8c:	14302673          	csrr	a2,stval
    80003d90:	00003517          	auipc	a0,0x3
    80003d94:	8c850513          	addi	a0,a0,-1848 # 80006658 <_ZZ12printIntegermE6digits+0x110>
    80003d98:	00001097          	auipc	ra,0x1
    80003d9c:	870080e7          	jalr	-1936(ra) # 80004608 <__printf>
    80003da0:	00003517          	auipc	a0,0x3
    80003da4:	8d050513          	addi	a0,a0,-1840 # 80006670 <_ZZ12printIntegermE6digits+0x128>
    80003da8:	00001097          	auipc	ra,0x1
    80003dac:	804080e7          	jalr	-2044(ra) # 800045ac <panic>
    80003db0:	0ff7f713          	andi	a4,a5,255
    80003db4:	00900693          	li	a3,9
    80003db8:	04d70063          	beq	a4,a3,80003df8 <kerneltrap+0xac>
    80003dbc:	fff00713          	li	a4,-1
    80003dc0:	03f71713          	slli	a4,a4,0x3f
    80003dc4:	00170713          	addi	a4,a4,1
    80003dc8:	fae798e3          	bne	a5,a4,80003d78 <kerneltrap+0x2c>
    80003dcc:	00000097          	auipc	ra,0x0
    80003dd0:	e00080e7          	jalr	-512(ra) # 80003bcc <cpuid>
    80003dd4:	06050663          	beqz	a0,80003e40 <kerneltrap+0xf4>
    80003dd8:	144027f3          	csrr	a5,sip
    80003ddc:	ffd7f793          	andi	a5,a5,-3
    80003de0:	14479073          	csrw	sip,a5
    80003de4:	01813083          	ld	ra,24(sp)
    80003de8:	01013403          	ld	s0,16(sp)
    80003dec:	00813483          	ld	s1,8(sp)
    80003df0:	02010113          	addi	sp,sp,32
    80003df4:	00008067          	ret
    80003df8:	00000097          	auipc	ra,0x0
    80003dfc:	3cc080e7          	jalr	972(ra) # 800041c4 <plic_claim>
    80003e00:	00a00793          	li	a5,10
    80003e04:	00050493          	mv	s1,a0
    80003e08:	06f50863          	beq	a0,a5,80003e78 <kerneltrap+0x12c>
    80003e0c:	fc050ce3          	beqz	a0,80003de4 <kerneltrap+0x98>
    80003e10:	00050593          	mv	a1,a0
    80003e14:	00003517          	auipc	a0,0x3
    80003e18:	81450513          	addi	a0,a0,-2028 # 80006628 <_ZZ12printIntegermE6digits+0xe0>
    80003e1c:	00000097          	auipc	ra,0x0
    80003e20:	7ec080e7          	jalr	2028(ra) # 80004608 <__printf>
    80003e24:	01013403          	ld	s0,16(sp)
    80003e28:	01813083          	ld	ra,24(sp)
    80003e2c:	00048513          	mv	a0,s1
    80003e30:	00813483          	ld	s1,8(sp)
    80003e34:	02010113          	addi	sp,sp,32
    80003e38:	00000317          	auipc	t1,0x0
    80003e3c:	3c430067          	jr	964(t1) # 800041fc <plic_complete>
    80003e40:	00004517          	auipc	a0,0x4
    80003e44:	4f050513          	addi	a0,a0,1264 # 80008330 <tickslock>
    80003e48:	00001097          	auipc	ra,0x1
    80003e4c:	494080e7          	jalr	1172(ra) # 800052dc <acquire>
    80003e50:	00003717          	auipc	a4,0x3
    80003e54:	3c470713          	addi	a4,a4,964 # 80007214 <ticks>
    80003e58:	00072783          	lw	a5,0(a4)
    80003e5c:	00004517          	auipc	a0,0x4
    80003e60:	4d450513          	addi	a0,a0,1236 # 80008330 <tickslock>
    80003e64:	0017879b          	addiw	a5,a5,1
    80003e68:	00f72023          	sw	a5,0(a4)
    80003e6c:	00001097          	auipc	ra,0x1
    80003e70:	53c080e7          	jalr	1340(ra) # 800053a8 <release>
    80003e74:	f65ff06f          	j	80003dd8 <kerneltrap+0x8c>
    80003e78:	00001097          	auipc	ra,0x1
    80003e7c:	098080e7          	jalr	152(ra) # 80004f10 <uartintr>
    80003e80:	fa5ff06f          	j	80003e24 <kerneltrap+0xd8>
    80003e84:	00002517          	auipc	a0,0x2
    80003e88:	78450513          	addi	a0,a0,1924 # 80006608 <_ZZ12printIntegermE6digits+0xc0>
    80003e8c:	00000097          	auipc	ra,0x0
    80003e90:	720080e7          	jalr	1824(ra) # 800045ac <panic>

0000000080003e94 <clockintr>:
    80003e94:	fe010113          	addi	sp,sp,-32
    80003e98:	00813823          	sd	s0,16(sp)
    80003e9c:	00913423          	sd	s1,8(sp)
    80003ea0:	00113c23          	sd	ra,24(sp)
    80003ea4:	02010413          	addi	s0,sp,32
    80003ea8:	00004497          	auipc	s1,0x4
    80003eac:	48848493          	addi	s1,s1,1160 # 80008330 <tickslock>
    80003eb0:	00048513          	mv	a0,s1
    80003eb4:	00001097          	auipc	ra,0x1
    80003eb8:	428080e7          	jalr	1064(ra) # 800052dc <acquire>
    80003ebc:	00003717          	auipc	a4,0x3
    80003ec0:	35870713          	addi	a4,a4,856 # 80007214 <ticks>
    80003ec4:	00072783          	lw	a5,0(a4)
    80003ec8:	01013403          	ld	s0,16(sp)
    80003ecc:	01813083          	ld	ra,24(sp)
    80003ed0:	00048513          	mv	a0,s1
    80003ed4:	0017879b          	addiw	a5,a5,1
    80003ed8:	00813483          	ld	s1,8(sp)
    80003edc:	00f72023          	sw	a5,0(a4)
    80003ee0:	02010113          	addi	sp,sp,32
    80003ee4:	00001317          	auipc	t1,0x1
    80003ee8:	4c430067          	jr	1220(t1) # 800053a8 <release>

0000000080003eec <devintr>:
    80003eec:	142027f3          	csrr	a5,scause
    80003ef0:	00000513          	li	a0,0
    80003ef4:	0007c463          	bltz	a5,80003efc <devintr+0x10>
    80003ef8:	00008067          	ret
    80003efc:	fe010113          	addi	sp,sp,-32
    80003f00:	00813823          	sd	s0,16(sp)
    80003f04:	00113c23          	sd	ra,24(sp)
    80003f08:	00913423          	sd	s1,8(sp)
    80003f0c:	02010413          	addi	s0,sp,32
    80003f10:	0ff7f713          	andi	a4,a5,255
    80003f14:	00900693          	li	a3,9
    80003f18:	04d70c63          	beq	a4,a3,80003f70 <devintr+0x84>
    80003f1c:	fff00713          	li	a4,-1
    80003f20:	03f71713          	slli	a4,a4,0x3f
    80003f24:	00170713          	addi	a4,a4,1
    80003f28:	00e78c63          	beq	a5,a4,80003f40 <devintr+0x54>
    80003f2c:	01813083          	ld	ra,24(sp)
    80003f30:	01013403          	ld	s0,16(sp)
    80003f34:	00813483          	ld	s1,8(sp)
    80003f38:	02010113          	addi	sp,sp,32
    80003f3c:	00008067          	ret
    80003f40:	00000097          	auipc	ra,0x0
    80003f44:	c8c080e7          	jalr	-884(ra) # 80003bcc <cpuid>
    80003f48:	06050663          	beqz	a0,80003fb4 <devintr+0xc8>
    80003f4c:	144027f3          	csrr	a5,sip
    80003f50:	ffd7f793          	andi	a5,a5,-3
    80003f54:	14479073          	csrw	sip,a5
    80003f58:	01813083          	ld	ra,24(sp)
    80003f5c:	01013403          	ld	s0,16(sp)
    80003f60:	00813483          	ld	s1,8(sp)
    80003f64:	00200513          	li	a0,2
    80003f68:	02010113          	addi	sp,sp,32
    80003f6c:	00008067          	ret
    80003f70:	00000097          	auipc	ra,0x0
    80003f74:	254080e7          	jalr	596(ra) # 800041c4 <plic_claim>
    80003f78:	00a00793          	li	a5,10
    80003f7c:	00050493          	mv	s1,a0
    80003f80:	06f50663          	beq	a0,a5,80003fec <devintr+0x100>
    80003f84:	00100513          	li	a0,1
    80003f88:	fa0482e3          	beqz	s1,80003f2c <devintr+0x40>
    80003f8c:	00048593          	mv	a1,s1
    80003f90:	00002517          	auipc	a0,0x2
    80003f94:	69850513          	addi	a0,a0,1688 # 80006628 <_ZZ12printIntegermE6digits+0xe0>
    80003f98:	00000097          	auipc	ra,0x0
    80003f9c:	670080e7          	jalr	1648(ra) # 80004608 <__printf>
    80003fa0:	00048513          	mv	a0,s1
    80003fa4:	00000097          	auipc	ra,0x0
    80003fa8:	258080e7          	jalr	600(ra) # 800041fc <plic_complete>
    80003fac:	00100513          	li	a0,1
    80003fb0:	f7dff06f          	j	80003f2c <devintr+0x40>
    80003fb4:	00004517          	auipc	a0,0x4
    80003fb8:	37c50513          	addi	a0,a0,892 # 80008330 <tickslock>
    80003fbc:	00001097          	auipc	ra,0x1
    80003fc0:	320080e7          	jalr	800(ra) # 800052dc <acquire>
    80003fc4:	00003717          	auipc	a4,0x3
    80003fc8:	25070713          	addi	a4,a4,592 # 80007214 <ticks>
    80003fcc:	00072783          	lw	a5,0(a4)
    80003fd0:	00004517          	auipc	a0,0x4
    80003fd4:	36050513          	addi	a0,a0,864 # 80008330 <tickslock>
    80003fd8:	0017879b          	addiw	a5,a5,1
    80003fdc:	00f72023          	sw	a5,0(a4)
    80003fe0:	00001097          	auipc	ra,0x1
    80003fe4:	3c8080e7          	jalr	968(ra) # 800053a8 <release>
    80003fe8:	f65ff06f          	j	80003f4c <devintr+0x60>
    80003fec:	00001097          	auipc	ra,0x1
    80003ff0:	f24080e7          	jalr	-220(ra) # 80004f10 <uartintr>
    80003ff4:	fadff06f          	j	80003fa0 <devintr+0xb4>
	...

0000000080004000 <kernelvec>:
    80004000:	f0010113          	addi	sp,sp,-256
    80004004:	00113023          	sd	ra,0(sp)
    80004008:	00213423          	sd	sp,8(sp)
    8000400c:	00313823          	sd	gp,16(sp)
    80004010:	00413c23          	sd	tp,24(sp)
    80004014:	02513023          	sd	t0,32(sp)
    80004018:	02613423          	sd	t1,40(sp)
    8000401c:	02713823          	sd	t2,48(sp)
    80004020:	02813c23          	sd	s0,56(sp)
    80004024:	04913023          	sd	s1,64(sp)
    80004028:	04a13423          	sd	a0,72(sp)
    8000402c:	04b13823          	sd	a1,80(sp)
    80004030:	04c13c23          	sd	a2,88(sp)
    80004034:	06d13023          	sd	a3,96(sp)
    80004038:	06e13423          	sd	a4,104(sp)
    8000403c:	06f13823          	sd	a5,112(sp)
    80004040:	07013c23          	sd	a6,120(sp)
    80004044:	09113023          	sd	a7,128(sp)
    80004048:	09213423          	sd	s2,136(sp)
    8000404c:	09313823          	sd	s3,144(sp)
    80004050:	09413c23          	sd	s4,152(sp)
    80004054:	0b513023          	sd	s5,160(sp)
    80004058:	0b613423          	sd	s6,168(sp)
    8000405c:	0b713823          	sd	s7,176(sp)
    80004060:	0b813c23          	sd	s8,184(sp)
    80004064:	0d913023          	sd	s9,192(sp)
    80004068:	0da13423          	sd	s10,200(sp)
    8000406c:	0db13823          	sd	s11,208(sp)
    80004070:	0dc13c23          	sd	t3,216(sp)
    80004074:	0fd13023          	sd	t4,224(sp)
    80004078:	0fe13423          	sd	t5,232(sp)
    8000407c:	0ff13823          	sd	t6,240(sp)
    80004080:	ccdff0ef          	jal	ra,80003d4c <kerneltrap>
    80004084:	00013083          	ld	ra,0(sp)
    80004088:	00813103          	ld	sp,8(sp)
    8000408c:	01013183          	ld	gp,16(sp)
    80004090:	02013283          	ld	t0,32(sp)
    80004094:	02813303          	ld	t1,40(sp)
    80004098:	03013383          	ld	t2,48(sp)
    8000409c:	03813403          	ld	s0,56(sp)
    800040a0:	04013483          	ld	s1,64(sp)
    800040a4:	04813503          	ld	a0,72(sp)
    800040a8:	05013583          	ld	a1,80(sp)
    800040ac:	05813603          	ld	a2,88(sp)
    800040b0:	06013683          	ld	a3,96(sp)
    800040b4:	06813703          	ld	a4,104(sp)
    800040b8:	07013783          	ld	a5,112(sp)
    800040bc:	07813803          	ld	a6,120(sp)
    800040c0:	08013883          	ld	a7,128(sp)
    800040c4:	08813903          	ld	s2,136(sp)
    800040c8:	09013983          	ld	s3,144(sp)
    800040cc:	09813a03          	ld	s4,152(sp)
    800040d0:	0a013a83          	ld	s5,160(sp)
    800040d4:	0a813b03          	ld	s6,168(sp)
    800040d8:	0b013b83          	ld	s7,176(sp)
    800040dc:	0b813c03          	ld	s8,184(sp)
    800040e0:	0c013c83          	ld	s9,192(sp)
    800040e4:	0c813d03          	ld	s10,200(sp)
    800040e8:	0d013d83          	ld	s11,208(sp)
    800040ec:	0d813e03          	ld	t3,216(sp)
    800040f0:	0e013e83          	ld	t4,224(sp)
    800040f4:	0e813f03          	ld	t5,232(sp)
    800040f8:	0f013f83          	ld	t6,240(sp)
    800040fc:	10010113          	addi	sp,sp,256
    80004100:	10200073          	sret
    80004104:	00000013          	nop
    80004108:	00000013          	nop
    8000410c:	00000013          	nop

0000000080004110 <timervec>:
    80004110:	34051573          	csrrw	a0,mscratch,a0
    80004114:	00b53023          	sd	a1,0(a0)
    80004118:	00c53423          	sd	a2,8(a0)
    8000411c:	00d53823          	sd	a3,16(a0)
    80004120:	01853583          	ld	a1,24(a0)
    80004124:	02053603          	ld	a2,32(a0)
    80004128:	0005b683          	ld	a3,0(a1)
    8000412c:	00c686b3          	add	a3,a3,a2
    80004130:	00d5b023          	sd	a3,0(a1)
    80004134:	00200593          	li	a1,2
    80004138:	14459073          	csrw	sip,a1
    8000413c:	01053683          	ld	a3,16(a0)
    80004140:	00853603          	ld	a2,8(a0)
    80004144:	00053583          	ld	a1,0(a0)
    80004148:	34051573          	csrrw	a0,mscratch,a0
    8000414c:	30200073          	mret

0000000080004150 <plicinit>:
    80004150:	ff010113          	addi	sp,sp,-16
    80004154:	00813423          	sd	s0,8(sp)
    80004158:	01010413          	addi	s0,sp,16
    8000415c:	00813403          	ld	s0,8(sp)
    80004160:	0c0007b7          	lui	a5,0xc000
    80004164:	00100713          	li	a4,1
    80004168:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000416c:	00e7a223          	sw	a4,4(a5)
    80004170:	01010113          	addi	sp,sp,16
    80004174:	00008067          	ret

0000000080004178 <plicinithart>:
    80004178:	ff010113          	addi	sp,sp,-16
    8000417c:	00813023          	sd	s0,0(sp)
    80004180:	00113423          	sd	ra,8(sp)
    80004184:	01010413          	addi	s0,sp,16
    80004188:	00000097          	auipc	ra,0x0
    8000418c:	a44080e7          	jalr	-1468(ra) # 80003bcc <cpuid>
    80004190:	0085171b          	slliw	a4,a0,0x8
    80004194:	0c0027b7          	lui	a5,0xc002
    80004198:	00e787b3          	add	a5,a5,a4
    8000419c:	40200713          	li	a4,1026
    800041a0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800041a4:	00813083          	ld	ra,8(sp)
    800041a8:	00013403          	ld	s0,0(sp)
    800041ac:	00d5151b          	slliw	a0,a0,0xd
    800041b0:	0c2017b7          	lui	a5,0xc201
    800041b4:	00a78533          	add	a0,a5,a0
    800041b8:	00052023          	sw	zero,0(a0)
    800041bc:	01010113          	addi	sp,sp,16
    800041c0:	00008067          	ret

00000000800041c4 <plic_claim>:
    800041c4:	ff010113          	addi	sp,sp,-16
    800041c8:	00813023          	sd	s0,0(sp)
    800041cc:	00113423          	sd	ra,8(sp)
    800041d0:	01010413          	addi	s0,sp,16
    800041d4:	00000097          	auipc	ra,0x0
    800041d8:	9f8080e7          	jalr	-1544(ra) # 80003bcc <cpuid>
    800041dc:	00813083          	ld	ra,8(sp)
    800041e0:	00013403          	ld	s0,0(sp)
    800041e4:	00d5151b          	slliw	a0,a0,0xd
    800041e8:	0c2017b7          	lui	a5,0xc201
    800041ec:	00a78533          	add	a0,a5,a0
    800041f0:	00452503          	lw	a0,4(a0)
    800041f4:	01010113          	addi	sp,sp,16
    800041f8:	00008067          	ret

00000000800041fc <plic_complete>:
    800041fc:	fe010113          	addi	sp,sp,-32
    80004200:	00813823          	sd	s0,16(sp)
    80004204:	00913423          	sd	s1,8(sp)
    80004208:	00113c23          	sd	ra,24(sp)
    8000420c:	02010413          	addi	s0,sp,32
    80004210:	00050493          	mv	s1,a0
    80004214:	00000097          	auipc	ra,0x0
    80004218:	9b8080e7          	jalr	-1608(ra) # 80003bcc <cpuid>
    8000421c:	01813083          	ld	ra,24(sp)
    80004220:	01013403          	ld	s0,16(sp)
    80004224:	00d5179b          	slliw	a5,a0,0xd
    80004228:	0c201737          	lui	a4,0xc201
    8000422c:	00f707b3          	add	a5,a4,a5
    80004230:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004234:	00813483          	ld	s1,8(sp)
    80004238:	02010113          	addi	sp,sp,32
    8000423c:	00008067          	ret

0000000080004240 <consolewrite>:
    80004240:	fb010113          	addi	sp,sp,-80
    80004244:	04813023          	sd	s0,64(sp)
    80004248:	04113423          	sd	ra,72(sp)
    8000424c:	02913c23          	sd	s1,56(sp)
    80004250:	03213823          	sd	s2,48(sp)
    80004254:	03313423          	sd	s3,40(sp)
    80004258:	03413023          	sd	s4,32(sp)
    8000425c:	01513c23          	sd	s5,24(sp)
    80004260:	05010413          	addi	s0,sp,80
    80004264:	06c05c63          	blez	a2,800042dc <consolewrite+0x9c>
    80004268:	00060993          	mv	s3,a2
    8000426c:	00050a13          	mv	s4,a0
    80004270:	00058493          	mv	s1,a1
    80004274:	00000913          	li	s2,0
    80004278:	fff00a93          	li	s5,-1
    8000427c:	01c0006f          	j	80004298 <consolewrite+0x58>
    80004280:	fbf44503          	lbu	a0,-65(s0)
    80004284:	0019091b          	addiw	s2,s2,1
    80004288:	00148493          	addi	s1,s1,1
    8000428c:	00001097          	auipc	ra,0x1
    80004290:	a9c080e7          	jalr	-1380(ra) # 80004d28 <uartputc>
    80004294:	03298063          	beq	s3,s2,800042b4 <consolewrite+0x74>
    80004298:	00048613          	mv	a2,s1
    8000429c:	00100693          	li	a3,1
    800042a0:	000a0593          	mv	a1,s4
    800042a4:	fbf40513          	addi	a0,s0,-65
    800042a8:	00000097          	auipc	ra,0x0
    800042ac:	9dc080e7          	jalr	-1572(ra) # 80003c84 <either_copyin>
    800042b0:	fd5518e3          	bne	a0,s5,80004280 <consolewrite+0x40>
    800042b4:	04813083          	ld	ra,72(sp)
    800042b8:	04013403          	ld	s0,64(sp)
    800042bc:	03813483          	ld	s1,56(sp)
    800042c0:	02813983          	ld	s3,40(sp)
    800042c4:	02013a03          	ld	s4,32(sp)
    800042c8:	01813a83          	ld	s5,24(sp)
    800042cc:	00090513          	mv	a0,s2
    800042d0:	03013903          	ld	s2,48(sp)
    800042d4:	05010113          	addi	sp,sp,80
    800042d8:	00008067          	ret
    800042dc:	00000913          	li	s2,0
    800042e0:	fd5ff06f          	j	800042b4 <consolewrite+0x74>

00000000800042e4 <consoleread>:
    800042e4:	f9010113          	addi	sp,sp,-112
    800042e8:	06813023          	sd	s0,96(sp)
    800042ec:	04913c23          	sd	s1,88(sp)
    800042f0:	05213823          	sd	s2,80(sp)
    800042f4:	05313423          	sd	s3,72(sp)
    800042f8:	05413023          	sd	s4,64(sp)
    800042fc:	03513c23          	sd	s5,56(sp)
    80004300:	03613823          	sd	s6,48(sp)
    80004304:	03713423          	sd	s7,40(sp)
    80004308:	03813023          	sd	s8,32(sp)
    8000430c:	06113423          	sd	ra,104(sp)
    80004310:	01913c23          	sd	s9,24(sp)
    80004314:	07010413          	addi	s0,sp,112
    80004318:	00060b93          	mv	s7,a2
    8000431c:	00050913          	mv	s2,a0
    80004320:	00058c13          	mv	s8,a1
    80004324:	00060b1b          	sext.w	s6,a2
    80004328:	00004497          	auipc	s1,0x4
    8000432c:	03048493          	addi	s1,s1,48 # 80008358 <cons>
    80004330:	00400993          	li	s3,4
    80004334:	fff00a13          	li	s4,-1
    80004338:	00a00a93          	li	s5,10
    8000433c:	05705e63          	blez	s7,80004398 <consoleread+0xb4>
    80004340:	09c4a703          	lw	a4,156(s1)
    80004344:	0984a783          	lw	a5,152(s1)
    80004348:	0007071b          	sext.w	a4,a4
    8000434c:	08e78463          	beq	a5,a4,800043d4 <consoleread+0xf0>
    80004350:	07f7f713          	andi	a4,a5,127
    80004354:	00e48733          	add	a4,s1,a4
    80004358:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000435c:	0017869b          	addiw	a3,a5,1
    80004360:	08d4ac23          	sw	a3,152(s1)
    80004364:	00070c9b          	sext.w	s9,a4
    80004368:	0b370663          	beq	a4,s3,80004414 <consoleread+0x130>
    8000436c:	00100693          	li	a3,1
    80004370:	f9f40613          	addi	a2,s0,-97
    80004374:	000c0593          	mv	a1,s8
    80004378:	00090513          	mv	a0,s2
    8000437c:	f8e40fa3          	sb	a4,-97(s0)
    80004380:	00000097          	auipc	ra,0x0
    80004384:	8b8080e7          	jalr	-1864(ra) # 80003c38 <either_copyout>
    80004388:	01450863          	beq	a0,s4,80004398 <consoleread+0xb4>
    8000438c:	001c0c13          	addi	s8,s8,1
    80004390:	fffb8b9b          	addiw	s7,s7,-1
    80004394:	fb5c94e3          	bne	s9,s5,8000433c <consoleread+0x58>
    80004398:	000b851b          	sext.w	a0,s7
    8000439c:	06813083          	ld	ra,104(sp)
    800043a0:	06013403          	ld	s0,96(sp)
    800043a4:	05813483          	ld	s1,88(sp)
    800043a8:	05013903          	ld	s2,80(sp)
    800043ac:	04813983          	ld	s3,72(sp)
    800043b0:	04013a03          	ld	s4,64(sp)
    800043b4:	03813a83          	ld	s5,56(sp)
    800043b8:	02813b83          	ld	s7,40(sp)
    800043bc:	02013c03          	ld	s8,32(sp)
    800043c0:	01813c83          	ld	s9,24(sp)
    800043c4:	40ab053b          	subw	a0,s6,a0
    800043c8:	03013b03          	ld	s6,48(sp)
    800043cc:	07010113          	addi	sp,sp,112
    800043d0:	00008067          	ret
    800043d4:	00001097          	auipc	ra,0x1
    800043d8:	1d8080e7          	jalr	472(ra) # 800055ac <push_on>
    800043dc:	0984a703          	lw	a4,152(s1)
    800043e0:	09c4a783          	lw	a5,156(s1)
    800043e4:	0007879b          	sext.w	a5,a5
    800043e8:	fef70ce3          	beq	a4,a5,800043e0 <consoleread+0xfc>
    800043ec:	00001097          	auipc	ra,0x1
    800043f0:	234080e7          	jalr	564(ra) # 80005620 <pop_on>
    800043f4:	0984a783          	lw	a5,152(s1)
    800043f8:	07f7f713          	andi	a4,a5,127
    800043fc:	00e48733          	add	a4,s1,a4
    80004400:	01874703          	lbu	a4,24(a4)
    80004404:	0017869b          	addiw	a3,a5,1
    80004408:	08d4ac23          	sw	a3,152(s1)
    8000440c:	00070c9b          	sext.w	s9,a4
    80004410:	f5371ee3          	bne	a4,s3,8000436c <consoleread+0x88>
    80004414:	000b851b          	sext.w	a0,s7
    80004418:	f96bf2e3          	bgeu	s7,s6,8000439c <consoleread+0xb8>
    8000441c:	08f4ac23          	sw	a5,152(s1)
    80004420:	f7dff06f          	j	8000439c <consoleread+0xb8>

0000000080004424 <consputc>:
    80004424:	10000793          	li	a5,256
    80004428:	00f50663          	beq	a0,a5,80004434 <consputc+0x10>
    8000442c:	00001317          	auipc	t1,0x1
    80004430:	9f430067          	jr	-1548(t1) # 80004e20 <uartputc_sync>
    80004434:	ff010113          	addi	sp,sp,-16
    80004438:	00113423          	sd	ra,8(sp)
    8000443c:	00813023          	sd	s0,0(sp)
    80004440:	01010413          	addi	s0,sp,16
    80004444:	00800513          	li	a0,8
    80004448:	00001097          	auipc	ra,0x1
    8000444c:	9d8080e7          	jalr	-1576(ra) # 80004e20 <uartputc_sync>
    80004450:	02000513          	li	a0,32
    80004454:	00001097          	auipc	ra,0x1
    80004458:	9cc080e7          	jalr	-1588(ra) # 80004e20 <uartputc_sync>
    8000445c:	00013403          	ld	s0,0(sp)
    80004460:	00813083          	ld	ra,8(sp)
    80004464:	00800513          	li	a0,8
    80004468:	01010113          	addi	sp,sp,16
    8000446c:	00001317          	auipc	t1,0x1
    80004470:	9b430067          	jr	-1612(t1) # 80004e20 <uartputc_sync>

0000000080004474 <consoleintr>:
    80004474:	fe010113          	addi	sp,sp,-32
    80004478:	00813823          	sd	s0,16(sp)
    8000447c:	00913423          	sd	s1,8(sp)
    80004480:	01213023          	sd	s2,0(sp)
    80004484:	00113c23          	sd	ra,24(sp)
    80004488:	02010413          	addi	s0,sp,32
    8000448c:	00004917          	auipc	s2,0x4
    80004490:	ecc90913          	addi	s2,s2,-308 # 80008358 <cons>
    80004494:	00050493          	mv	s1,a0
    80004498:	00090513          	mv	a0,s2
    8000449c:	00001097          	auipc	ra,0x1
    800044a0:	e40080e7          	jalr	-448(ra) # 800052dc <acquire>
    800044a4:	02048c63          	beqz	s1,800044dc <consoleintr+0x68>
    800044a8:	0a092783          	lw	a5,160(s2)
    800044ac:	09892703          	lw	a4,152(s2)
    800044b0:	07f00693          	li	a3,127
    800044b4:	40e7873b          	subw	a4,a5,a4
    800044b8:	02e6e263          	bltu	a3,a4,800044dc <consoleintr+0x68>
    800044bc:	00d00713          	li	a4,13
    800044c0:	04e48063          	beq	s1,a4,80004500 <consoleintr+0x8c>
    800044c4:	07f7f713          	andi	a4,a5,127
    800044c8:	00e90733          	add	a4,s2,a4
    800044cc:	0017879b          	addiw	a5,a5,1
    800044d0:	0af92023          	sw	a5,160(s2)
    800044d4:	00970c23          	sb	s1,24(a4)
    800044d8:	08f92e23          	sw	a5,156(s2)
    800044dc:	01013403          	ld	s0,16(sp)
    800044e0:	01813083          	ld	ra,24(sp)
    800044e4:	00813483          	ld	s1,8(sp)
    800044e8:	00013903          	ld	s2,0(sp)
    800044ec:	00004517          	auipc	a0,0x4
    800044f0:	e6c50513          	addi	a0,a0,-404 # 80008358 <cons>
    800044f4:	02010113          	addi	sp,sp,32
    800044f8:	00001317          	auipc	t1,0x1
    800044fc:	eb030067          	jr	-336(t1) # 800053a8 <release>
    80004500:	00a00493          	li	s1,10
    80004504:	fc1ff06f          	j	800044c4 <consoleintr+0x50>

0000000080004508 <consoleinit>:
    80004508:	fe010113          	addi	sp,sp,-32
    8000450c:	00113c23          	sd	ra,24(sp)
    80004510:	00813823          	sd	s0,16(sp)
    80004514:	00913423          	sd	s1,8(sp)
    80004518:	02010413          	addi	s0,sp,32
    8000451c:	00004497          	auipc	s1,0x4
    80004520:	e3c48493          	addi	s1,s1,-452 # 80008358 <cons>
    80004524:	00048513          	mv	a0,s1
    80004528:	00002597          	auipc	a1,0x2
    8000452c:	15858593          	addi	a1,a1,344 # 80006680 <_ZZ12printIntegermE6digits+0x138>
    80004530:	00001097          	auipc	ra,0x1
    80004534:	d88080e7          	jalr	-632(ra) # 800052b8 <initlock>
    80004538:	00000097          	auipc	ra,0x0
    8000453c:	7ac080e7          	jalr	1964(ra) # 80004ce4 <uartinit>
    80004540:	01813083          	ld	ra,24(sp)
    80004544:	01013403          	ld	s0,16(sp)
    80004548:	00000797          	auipc	a5,0x0
    8000454c:	d9c78793          	addi	a5,a5,-612 # 800042e4 <consoleread>
    80004550:	0af4bc23          	sd	a5,184(s1)
    80004554:	00000797          	auipc	a5,0x0
    80004558:	cec78793          	addi	a5,a5,-788 # 80004240 <consolewrite>
    8000455c:	0cf4b023          	sd	a5,192(s1)
    80004560:	00813483          	ld	s1,8(sp)
    80004564:	02010113          	addi	sp,sp,32
    80004568:	00008067          	ret

000000008000456c <console_read>:
    8000456c:	ff010113          	addi	sp,sp,-16
    80004570:	00813423          	sd	s0,8(sp)
    80004574:	01010413          	addi	s0,sp,16
    80004578:	00813403          	ld	s0,8(sp)
    8000457c:	00004317          	auipc	t1,0x4
    80004580:	e9433303          	ld	t1,-364(t1) # 80008410 <devsw+0x10>
    80004584:	01010113          	addi	sp,sp,16
    80004588:	00030067          	jr	t1

000000008000458c <console_write>:
    8000458c:	ff010113          	addi	sp,sp,-16
    80004590:	00813423          	sd	s0,8(sp)
    80004594:	01010413          	addi	s0,sp,16
    80004598:	00813403          	ld	s0,8(sp)
    8000459c:	00004317          	auipc	t1,0x4
    800045a0:	e7c33303          	ld	t1,-388(t1) # 80008418 <devsw+0x18>
    800045a4:	01010113          	addi	sp,sp,16
    800045a8:	00030067          	jr	t1

00000000800045ac <panic>:
    800045ac:	fe010113          	addi	sp,sp,-32
    800045b0:	00113c23          	sd	ra,24(sp)
    800045b4:	00813823          	sd	s0,16(sp)
    800045b8:	00913423          	sd	s1,8(sp)
    800045bc:	02010413          	addi	s0,sp,32
    800045c0:	00050493          	mv	s1,a0
    800045c4:	00002517          	auipc	a0,0x2
    800045c8:	0c450513          	addi	a0,a0,196 # 80006688 <_ZZ12printIntegermE6digits+0x140>
    800045cc:	00004797          	auipc	a5,0x4
    800045d0:	ee07a623          	sw	zero,-276(a5) # 800084b8 <pr+0x18>
    800045d4:	00000097          	auipc	ra,0x0
    800045d8:	034080e7          	jalr	52(ra) # 80004608 <__printf>
    800045dc:	00048513          	mv	a0,s1
    800045e0:	00000097          	auipc	ra,0x0
    800045e4:	028080e7          	jalr	40(ra) # 80004608 <__printf>
    800045e8:	00002517          	auipc	a0,0x2
    800045ec:	aa050513          	addi	a0,a0,-1376 # 80006088 <CONSOLE_STATUS+0x78>
    800045f0:	00000097          	auipc	ra,0x0
    800045f4:	018080e7          	jalr	24(ra) # 80004608 <__printf>
    800045f8:	00100793          	li	a5,1
    800045fc:	00003717          	auipc	a4,0x3
    80004600:	c0f72e23          	sw	a5,-996(a4) # 80007218 <panicked>
    80004604:	0000006f          	j	80004604 <panic+0x58>

0000000080004608 <__printf>:
    80004608:	f3010113          	addi	sp,sp,-208
    8000460c:	08813023          	sd	s0,128(sp)
    80004610:	07313423          	sd	s3,104(sp)
    80004614:	09010413          	addi	s0,sp,144
    80004618:	05813023          	sd	s8,64(sp)
    8000461c:	08113423          	sd	ra,136(sp)
    80004620:	06913c23          	sd	s1,120(sp)
    80004624:	07213823          	sd	s2,112(sp)
    80004628:	07413023          	sd	s4,96(sp)
    8000462c:	05513c23          	sd	s5,88(sp)
    80004630:	05613823          	sd	s6,80(sp)
    80004634:	05713423          	sd	s7,72(sp)
    80004638:	03913c23          	sd	s9,56(sp)
    8000463c:	03a13823          	sd	s10,48(sp)
    80004640:	03b13423          	sd	s11,40(sp)
    80004644:	00004317          	auipc	t1,0x4
    80004648:	e5c30313          	addi	t1,t1,-420 # 800084a0 <pr>
    8000464c:	01832c03          	lw	s8,24(t1)
    80004650:	00b43423          	sd	a1,8(s0)
    80004654:	00c43823          	sd	a2,16(s0)
    80004658:	00d43c23          	sd	a3,24(s0)
    8000465c:	02e43023          	sd	a4,32(s0)
    80004660:	02f43423          	sd	a5,40(s0)
    80004664:	03043823          	sd	a6,48(s0)
    80004668:	03143c23          	sd	a7,56(s0)
    8000466c:	00050993          	mv	s3,a0
    80004670:	4a0c1663          	bnez	s8,80004b1c <__printf+0x514>
    80004674:	60098c63          	beqz	s3,80004c8c <__printf+0x684>
    80004678:	0009c503          	lbu	a0,0(s3)
    8000467c:	00840793          	addi	a5,s0,8
    80004680:	f6f43c23          	sd	a5,-136(s0)
    80004684:	00000493          	li	s1,0
    80004688:	22050063          	beqz	a0,800048a8 <__printf+0x2a0>
    8000468c:	00002a37          	lui	s4,0x2
    80004690:	00018ab7          	lui	s5,0x18
    80004694:	000f4b37          	lui	s6,0xf4
    80004698:	00989bb7          	lui	s7,0x989
    8000469c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800046a0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800046a4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800046a8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800046ac:	00148c9b          	addiw	s9,s1,1
    800046b0:	02500793          	li	a5,37
    800046b4:	01998933          	add	s2,s3,s9
    800046b8:	38f51263          	bne	a0,a5,80004a3c <__printf+0x434>
    800046bc:	00094783          	lbu	a5,0(s2)
    800046c0:	00078c9b          	sext.w	s9,a5
    800046c4:	1e078263          	beqz	a5,800048a8 <__printf+0x2a0>
    800046c8:	0024849b          	addiw	s1,s1,2
    800046cc:	07000713          	li	a4,112
    800046d0:	00998933          	add	s2,s3,s1
    800046d4:	38e78a63          	beq	a5,a4,80004a68 <__printf+0x460>
    800046d8:	20f76863          	bltu	a4,a5,800048e8 <__printf+0x2e0>
    800046dc:	42a78863          	beq	a5,a0,80004b0c <__printf+0x504>
    800046e0:	06400713          	li	a4,100
    800046e4:	40e79663          	bne	a5,a4,80004af0 <__printf+0x4e8>
    800046e8:	f7843783          	ld	a5,-136(s0)
    800046ec:	0007a603          	lw	a2,0(a5)
    800046f0:	00878793          	addi	a5,a5,8
    800046f4:	f6f43c23          	sd	a5,-136(s0)
    800046f8:	42064a63          	bltz	a2,80004b2c <__printf+0x524>
    800046fc:	00a00713          	li	a4,10
    80004700:	02e677bb          	remuw	a5,a2,a4
    80004704:	00002d97          	auipc	s11,0x2
    80004708:	facd8d93          	addi	s11,s11,-84 # 800066b0 <digits>
    8000470c:	00900593          	li	a1,9
    80004710:	0006051b          	sext.w	a0,a2
    80004714:	00000c93          	li	s9,0
    80004718:	02079793          	slli	a5,a5,0x20
    8000471c:	0207d793          	srli	a5,a5,0x20
    80004720:	00fd87b3          	add	a5,s11,a5
    80004724:	0007c783          	lbu	a5,0(a5)
    80004728:	02e656bb          	divuw	a3,a2,a4
    8000472c:	f8f40023          	sb	a5,-128(s0)
    80004730:	14c5d863          	bge	a1,a2,80004880 <__printf+0x278>
    80004734:	06300593          	li	a1,99
    80004738:	00100c93          	li	s9,1
    8000473c:	02e6f7bb          	remuw	a5,a3,a4
    80004740:	02079793          	slli	a5,a5,0x20
    80004744:	0207d793          	srli	a5,a5,0x20
    80004748:	00fd87b3          	add	a5,s11,a5
    8000474c:	0007c783          	lbu	a5,0(a5)
    80004750:	02e6d73b          	divuw	a4,a3,a4
    80004754:	f8f400a3          	sb	a5,-127(s0)
    80004758:	12a5f463          	bgeu	a1,a0,80004880 <__printf+0x278>
    8000475c:	00a00693          	li	a3,10
    80004760:	00900593          	li	a1,9
    80004764:	02d777bb          	remuw	a5,a4,a3
    80004768:	02079793          	slli	a5,a5,0x20
    8000476c:	0207d793          	srli	a5,a5,0x20
    80004770:	00fd87b3          	add	a5,s11,a5
    80004774:	0007c503          	lbu	a0,0(a5)
    80004778:	02d757bb          	divuw	a5,a4,a3
    8000477c:	f8a40123          	sb	a0,-126(s0)
    80004780:	48e5f263          	bgeu	a1,a4,80004c04 <__printf+0x5fc>
    80004784:	06300513          	li	a0,99
    80004788:	02d7f5bb          	remuw	a1,a5,a3
    8000478c:	02059593          	slli	a1,a1,0x20
    80004790:	0205d593          	srli	a1,a1,0x20
    80004794:	00bd85b3          	add	a1,s11,a1
    80004798:	0005c583          	lbu	a1,0(a1)
    8000479c:	02d7d7bb          	divuw	a5,a5,a3
    800047a0:	f8b401a3          	sb	a1,-125(s0)
    800047a4:	48e57263          	bgeu	a0,a4,80004c28 <__printf+0x620>
    800047a8:	3e700513          	li	a0,999
    800047ac:	02d7f5bb          	remuw	a1,a5,a3
    800047b0:	02059593          	slli	a1,a1,0x20
    800047b4:	0205d593          	srli	a1,a1,0x20
    800047b8:	00bd85b3          	add	a1,s11,a1
    800047bc:	0005c583          	lbu	a1,0(a1)
    800047c0:	02d7d7bb          	divuw	a5,a5,a3
    800047c4:	f8b40223          	sb	a1,-124(s0)
    800047c8:	46e57663          	bgeu	a0,a4,80004c34 <__printf+0x62c>
    800047cc:	02d7f5bb          	remuw	a1,a5,a3
    800047d0:	02059593          	slli	a1,a1,0x20
    800047d4:	0205d593          	srli	a1,a1,0x20
    800047d8:	00bd85b3          	add	a1,s11,a1
    800047dc:	0005c583          	lbu	a1,0(a1)
    800047e0:	02d7d7bb          	divuw	a5,a5,a3
    800047e4:	f8b402a3          	sb	a1,-123(s0)
    800047e8:	46ea7863          	bgeu	s4,a4,80004c58 <__printf+0x650>
    800047ec:	02d7f5bb          	remuw	a1,a5,a3
    800047f0:	02059593          	slli	a1,a1,0x20
    800047f4:	0205d593          	srli	a1,a1,0x20
    800047f8:	00bd85b3          	add	a1,s11,a1
    800047fc:	0005c583          	lbu	a1,0(a1)
    80004800:	02d7d7bb          	divuw	a5,a5,a3
    80004804:	f8b40323          	sb	a1,-122(s0)
    80004808:	3eeaf863          	bgeu	s5,a4,80004bf8 <__printf+0x5f0>
    8000480c:	02d7f5bb          	remuw	a1,a5,a3
    80004810:	02059593          	slli	a1,a1,0x20
    80004814:	0205d593          	srli	a1,a1,0x20
    80004818:	00bd85b3          	add	a1,s11,a1
    8000481c:	0005c583          	lbu	a1,0(a1)
    80004820:	02d7d7bb          	divuw	a5,a5,a3
    80004824:	f8b403a3          	sb	a1,-121(s0)
    80004828:	42eb7e63          	bgeu	s6,a4,80004c64 <__printf+0x65c>
    8000482c:	02d7f5bb          	remuw	a1,a5,a3
    80004830:	02059593          	slli	a1,a1,0x20
    80004834:	0205d593          	srli	a1,a1,0x20
    80004838:	00bd85b3          	add	a1,s11,a1
    8000483c:	0005c583          	lbu	a1,0(a1)
    80004840:	02d7d7bb          	divuw	a5,a5,a3
    80004844:	f8b40423          	sb	a1,-120(s0)
    80004848:	42ebfc63          	bgeu	s7,a4,80004c80 <__printf+0x678>
    8000484c:	02079793          	slli	a5,a5,0x20
    80004850:	0207d793          	srli	a5,a5,0x20
    80004854:	00fd8db3          	add	s11,s11,a5
    80004858:	000dc703          	lbu	a4,0(s11)
    8000485c:	00a00793          	li	a5,10
    80004860:	00900c93          	li	s9,9
    80004864:	f8e404a3          	sb	a4,-119(s0)
    80004868:	00065c63          	bgez	a2,80004880 <__printf+0x278>
    8000486c:	f9040713          	addi	a4,s0,-112
    80004870:	00f70733          	add	a4,a4,a5
    80004874:	02d00693          	li	a3,45
    80004878:	fed70823          	sb	a3,-16(a4)
    8000487c:	00078c93          	mv	s9,a5
    80004880:	f8040793          	addi	a5,s0,-128
    80004884:	01978cb3          	add	s9,a5,s9
    80004888:	f7f40d13          	addi	s10,s0,-129
    8000488c:	000cc503          	lbu	a0,0(s9)
    80004890:	fffc8c93          	addi	s9,s9,-1
    80004894:	00000097          	auipc	ra,0x0
    80004898:	b90080e7          	jalr	-1136(ra) # 80004424 <consputc>
    8000489c:	ffac98e3          	bne	s9,s10,8000488c <__printf+0x284>
    800048a0:	00094503          	lbu	a0,0(s2)
    800048a4:	e00514e3          	bnez	a0,800046ac <__printf+0xa4>
    800048a8:	1a0c1663          	bnez	s8,80004a54 <__printf+0x44c>
    800048ac:	08813083          	ld	ra,136(sp)
    800048b0:	08013403          	ld	s0,128(sp)
    800048b4:	07813483          	ld	s1,120(sp)
    800048b8:	07013903          	ld	s2,112(sp)
    800048bc:	06813983          	ld	s3,104(sp)
    800048c0:	06013a03          	ld	s4,96(sp)
    800048c4:	05813a83          	ld	s5,88(sp)
    800048c8:	05013b03          	ld	s6,80(sp)
    800048cc:	04813b83          	ld	s7,72(sp)
    800048d0:	04013c03          	ld	s8,64(sp)
    800048d4:	03813c83          	ld	s9,56(sp)
    800048d8:	03013d03          	ld	s10,48(sp)
    800048dc:	02813d83          	ld	s11,40(sp)
    800048e0:	0d010113          	addi	sp,sp,208
    800048e4:	00008067          	ret
    800048e8:	07300713          	li	a4,115
    800048ec:	1ce78a63          	beq	a5,a4,80004ac0 <__printf+0x4b8>
    800048f0:	07800713          	li	a4,120
    800048f4:	1ee79e63          	bne	a5,a4,80004af0 <__printf+0x4e8>
    800048f8:	f7843783          	ld	a5,-136(s0)
    800048fc:	0007a703          	lw	a4,0(a5)
    80004900:	00878793          	addi	a5,a5,8
    80004904:	f6f43c23          	sd	a5,-136(s0)
    80004908:	28074263          	bltz	a4,80004b8c <__printf+0x584>
    8000490c:	00002d97          	auipc	s11,0x2
    80004910:	da4d8d93          	addi	s11,s11,-604 # 800066b0 <digits>
    80004914:	00f77793          	andi	a5,a4,15
    80004918:	00fd87b3          	add	a5,s11,a5
    8000491c:	0007c683          	lbu	a3,0(a5)
    80004920:	00f00613          	li	a2,15
    80004924:	0007079b          	sext.w	a5,a4
    80004928:	f8d40023          	sb	a3,-128(s0)
    8000492c:	0047559b          	srliw	a1,a4,0x4
    80004930:	0047569b          	srliw	a3,a4,0x4
    80004934:	00000c93          	li	s9,0
    80004938:	0ee65063          	bge	a2,a4,80004a18 <__printf+0x410>
    8000493c:	00f6f693          	andi	a3,a3,15
    80004940:	00dd86b3          	add	a3,s11,a3
    80004944:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004948:	0087d79b          	srliw	a5,a5,0x8
    8000494c:	00100c93          	li	s9,1
    80004950:	f8d400a3          	sb	a3,-127(s0)
    80004954:	0cb67263          	bgeu	a2,a1,80004a18 <__printf+0x410>
    80004958:	00f7f693          	andi	a3,a5,15
    8000495c:	00dd86b3          	add	a3,s11,a3
    80004960:	0006c583          	lbu	a1,0(a3)
    80004964:	00f00613          	li	a2,15
    80004968:	0047d69b          	srliw	a3,a5,0x4
    8000496c:	f8b40123          	sb	a1,-126(s0)
    80004970:	0047d593          	srli	a1,a5,0x4
    80004974:	28f67e63          	bgeu	a2,a5,80004c10 <__printf+0x608>
    80004978:	00f6f693          	andi	a3,a3,15
    8000497c:	00dd86b3          	add	a3,s11,a3
    80004980:	0006c503          	lbu	a0,0(a3)
    80004984:	0087d813          	srli	a6,a5,0x8
    80004988:	0087d69b          	srliw	a3,a5,0x8
    8000498c:	f8a401a3          	sb	a0,-125(s0)
    80004990:	28b67663          	bgeu	a2,a1,80004c1c <__printf+0x614>
    80004994:	00f6f693          	andi	a3,a3,15
    80004998:	00dd86b3          	add	a3,s11,a3
    8000499c:	0006c583          	lbu	a1,0(a3)
    800049a0:	00c7d513          	srli	a0,a5,0xc
    800049a4:	00c7d69b          	srliw	a3,a5,0xc
    800049a8:	f8b40223          	sb	a1,-124(s0)
    800049ac:	29067a63          	bgeu	a2,a6,80004c40 <__printf+0x638>
    800049b0:	00f6f693          	andi	a3,a3,15
    800049b4:	00dd86b3          	add	a3,s11,a3
    800049b8:	0006c583          	lbu	a1,0(a3)
    800049bc:	0107d813          	srli	a6,a5,0x10
    800049c0:	0107d69b          	srliw	a3,a5,0x10
    800049c4:	f8b402a3          	sb	a1,-123(s0)
    800049c8:	28a67263          	bgeu	a2,a0,80004c4c <__printf+0x644>
    800049cc:	00f6f693          	andi	a3,a3,15
    800049d0:	00dd86b3          	add	a3,s11,a3
    800049d4:	0006c683          	lbu	a3,0(a3)
    800049d8:	0147d79b          	srliw	a5,a5,0x14
    800049dc:	f8d40323          	sb	a3,-122(s0)
    800049e0:	21067663          	bgeu	a2,a6,80004bec <__printf+0x5e4>
    800049e4:	02079793          	slli	a5,a5,0x20
    800049e8:	0207d793          	srli	a5,a5,0x20
    800049ec:	00fd8db3          	add	s11,s11,a5
    800049f0:	000dc683          	lbu	a3,0(s11)
    800049f4:	00800793          	li	a5,8
    800049f8:	00700c93          	li	s9,7
    800049fc:	f8d403a3          	sb	a3,-121(s0)
    80004a00:	00075c63          	bgez	a4,80004a18 <__printf+0x410>
    80004a04:	f9040713          	addi	a4,s0,-112
    80004a08:	00f70733          	add	a4,a4,a5
    80004a0c:	02d00693          	li	a3,45
    80004a10:	fed70823          	sb	a3,-16(a4)
    80004a14:	00078c93          	mv	s9,a5
    80004a18:	f8040793          	addi	a5,s0,-128
    80004a1c:	01978cb3          	add	s9,a5,s9
    80004a20:	f7f40d13          	addi	s10,s0,-129
    80004a24:	000cc503          	lbu	a0,0(s9)
    80004a28:	fffc8c93          	addi	s9,s9,-1
    80004a2c:	00000097          	auipc	ra,0x0
    80004a30:	9f8080e7          	jalr	-1544(ra) # 80004424 <consputc>
    80004a34:	ff9d18e3          	bne	s10,s9,80004a24 <__printf+0x41c>
    80004a38:	0100006f          	j	80004a48 <__printf+0x440>
    80004a3c:	00000097          	auipc	ra,0x0
    80004a40:	9e8080e7          	jalr	-1560(ra) # 80004424 <consputc>
    80004a44:	000c8493          	mv	s1,s9
    80004a48:	00094503          	lbu	a0,0(s2)
    80004a4c:	c60510e3          	bnez	a0,800046ac <__printf+0xa4>
    80004a50:	e40c0ee3          	beqz	s8,800048ac <__printf+0x2a4>
    80004a54:	00004517          	auipc	a0,0x4
    80004a58:	a4c50513          	addi	a0,a0,-1460 # 800084a0 <pr>
    80004a5c:	00001097          	auipc	ra,0x1
    80004a60:	94c080e7          	jalr	-1716(ra) # 800053a8 <release>
    80004a64:	e49ff06f          	j	800048ac <__printf+0x2a4>
    80004a68:	f7843783          	ld	a5,-136(s0)
    80004a6c:	03000513          	li	a0,48
    80004a70:	01000d13          	li	s10,16
    80004a74:	00878713          	addi	a4,a5,8
    80004a78:	0007bc83          	ld	s9,0(a5)
    80004a7c:	f6e43c23          	sd	a4,-136(s0)
    80004a80:	00000097          	auipc	ra,0x0
    80004a84:	9a4080e7          	jalr	-1628(ra) # 80004424 <consputc>
    80004a88:	07800513          	li	a0,120
    80004a8c:	00000097          	auipc	ra,0x0
    80004a90:	998080e7          	jalr	-1640(ra) # 80004424 <consputc>
    80004a94:	00002d97          	auipc	s11,0x2
    80004a98:	c1cd8d93          	addi	s11,s11,-996 # 800066b0 <digits>
    80004a9c:	03ccd793          	srli	a5,s9,0x3c
    80004aa0:	00fd87b3          	add	a5,s11,a5
    80004aa4:	0007c503          	lbu	a0,0(a5)
    80004aa8:	fffd0d1b          	addiw	s10,s10,-1
    80004aac:	004c9c93          	slli	s9,s9,0x4
    80004ab0:	00000097          	auipc	ra,0x0
    80004ab4:	974080e7          	jalr	-1676(ra) # 80004424 <consputc>
    80004ab8:	fe0d12e3          	bnez	s10,80004a9c <__printf+0x494>
    80004abc:	f8dff06f          	j	80004a48 <__printf+0x440>
    80004ac0:	f7843783          	ld	a5,-136(s0)
    80004ac4:	0007bc83          	ld	s9,0(a5)
    80004ac8:	00878793          	addi	a5,a5,8
    80004acc:	f6f43c23          	sd	a5,-136(s0)
    80004ad0:	000c9a63          	bnez	s9,80004ae4 <__printf+0x4dc>
    80004ad4:	1080006f          	j	80004bdc <__printf+0x5d4>
    80004ad8:	001c8c93          	addi	s9,s9,1
    80004adc:	00000097          	auipc	ra,0x0
    80004ae0:	948080e7          	jalr	-1720(ra) # 80004424 <consputc>
    80004ae4:	000cc503          	lbu	a0,0(s9)
    80004ae8:	fe0518e3          	bnez	a0,80004ad8 <__printf+0x4d0>
    80004aec:	f5dff06f          	j	80004a48 <__printf+0x440>
    80004af0:	02500513          	li	a0,37
    80004af4:	00000097          	auipc	ra,0x0
    80004af8:	930080e7          	jalr	-1744(ra) # 80004424 <consputc>
    80004afc:	000c8513          	mv	a0,s9
    80004b00:	00000097          	auipc	ra,0x0
    80004b04:	924080e7          	jalr	-1756(ra) # 80004424 <consputc>
    80004b08:	f41ff06f          	j	80004a48 <__printf+0x440>
    80004b0c:	02500513          	li	a0,37
    80004b10:	00000097          	auipc	ra,0x0
    80004b14:	914080e7          	jalr	-1772(ra) # 80004424 <consputc>
    80004b18:	f31ff06f          	j	80004a48 <__printf+0x440>
    80004b1c:	00030513          	mv	a0,t1
    80004b20:	00000097          	auipc	ra,0x0
    80004b24:	7bc080e7          	jalr	1980(ra) # 800052dc <acquire>
    80004b28:	b4dff06f          	j	80004674 <__printf+0x6c>
    80004b2c:	40c0053b          	negw	a0,a2
    80004b30:	00a00713          	li	a4,10
    80004b34:	02e576bb          	remuw	a3,a0,a4
    80004b38:	00002d97          	auipc	s11,0x2
    80004b3c:	b78d8d93          	addi	s11,s11,-1160 # 800066b0 <digits>
    80004b40:	ff700593          	li	a1,-9
    80004b44:	02069693          	slli	a3,a3,0x20
    80004b48:	0206d693          	srli	a3,a3,0x20
    80004b4c:	00dd86b3          	add	a3,s11,a3
    80004b50:	0006c683          	lbu	a3,0(a3)
    80004b54:	02e557bb          	divuw	a5,a0,a4
    80004b58:	f8d40023          	sb	a3,-128(s0)
    80004b5c:	10b65e63          	bge	a2,a1,80004c78 <__printf+0x670>
    80004b60:	06300593          	li	a1,99
    80004b64:	02e7f6bb          	remuw	a3,a5,a4
    80004b68:	02069693          	slli	a3,a3,0x20
    80004b6c:	0206d693          	srli	a3,a3,0x20
    80004b70:	00dd86b3          	add	a3,s11,a3
    80004b74:	0006c683          	lbu	a3,0(a3)
    80004b78:	02e7d73b          	divuw	a4,a5,a4
    80004b7c:	00200793          	li	a5,2
    80004b80:	f8d400a3          	sb	a3,-127(s0)
    80004b84:	bca5ece3          	bltu	a1,a0,8000475c <__printf+0x154>
    80004b88:	ce5ff06f          	j	8000486c <__printf+0x264>
    80004b8c:	40e007bb          	negw	a5,a4
    80004b90:	00002d97          	auipc	s11,0x2
    80004b94:	b20d8d93          	addi	s11,s11,-1248 # 800066b0 <digits>
    80004b98:	00f7f693          	andi	a3,a5,15
    80004b9c:	00dd86b3          	add	a3,s11,a3
    80004ba0:	0006c583          	lbu	a1,0(a3)
    80004ba4:	ff100613          	li	a2,-15
    80004ba8:	0047d69b          	srliw	a3,a5,0x4
    80004bac:	f8b40023          	sb	a1,-128(s0)
    80004bb0:	0047d59b          	srliw	a1,a5,0x4
    80004bb4:	0ac75e63          	bge	a4,a2,80004c70 <__printf+0x668>
    80004bb8:	00f6f693          	andi	a3,a3,15
    80004bbc:	00dd86b3          	add	a3,s11,a3
    80004bc0:	0006c603          	lbu	a2,0(a3)
    80004bc4:	00f00693          	li	a3,15
    80004bc8:	0087d79b          	srliw	a5,a5,0x8
    80004bcc:	f8c400a3          	sb	a2,-127(s0)
    80004bd0:	d8b6e4e3          	bltu	a3,a1,80004958 <__printf+0x350>
    80004bd4:	00200793          	li	a5,2
    80004bd8:	e2dff06f          	j	80004a04 <__printf+0x3fc>
    80004bdc:	00002c97          	auipc	s9,0x2
    80004be0:	ab4c8c93          	addi	s9,s9,-1356 # 80006690 <_ZZ12printIntegermE6digits+0x148>
    80004be4:	02800513          	li	a0,40
    80004be8:	ef1ff06f          	j	80004ad8 <__printf+0x4d0>
    80004bec:	00700793          	li	a5,7
    80004bf0:	00600c93          	li	s9,6
    80004bf4:	e0dff06f          	j	80004a00 <__printf+0x3f8>
    80004bf8:	00700793          	li	a5,7
    80004bfc:	00600c93          	li	s9,6
    80004c00:	c69ff06f          	j	80004868 <__printf+0x260>
    80004c04:	00300793          	li	a5,3
    80004c08:	00200c93          	li	s9,2
    80004c0c:	c5dff06f          	j	80004868 <__printf+0x260>
    80004c10:	00300793          	li	a5,3
    80004c14:	00200c93          	li	s9,2
    80004c18:	de9ff06f          	j	80004a00 <__printf+0x3f8>
    80004c1c:	00400793          	li	a5,4
    80004c20:	00300c93          	li	s9,3
    80004c24:	dddff06f          	j	80004a00 <__printf+0x3f8>
    80004c28:	00400793          	li	a5,4
    80004c2c:	00300c93          	li	s9,3
    80004c30:	c39ff06f          	j	80004868 <__printf+0x260>
    80004c34:	00500793          	li	a5,5
    80004c38:	00400c93          	li	s9,4
    80004c3c:	c2dff06f          	j	80004868 <__printf+0x260>
    80004c40:	00500793          	li	a5,5
    80004c44:	00400c93          	li	s9,4
    80004c48:	db9ff06f          	j	80004a00 <__printf+0x3f8>
    80004c4c:	00600793          	li	a5,6
    80004c50:	00500c93          	li	s9,5
    80004c54:	dadff06f          	j	80004a00 <__printf+0x3f8>
    80004c58:	00600793          	li	a5,6
    80004c5c:	00500c93          	li	s9,5
    80004c60:	c09ff06f          	j	80004868 <__printf+0x260>
    80004c64:	00800793          	li	a5,8
    80004c68:	00700c93          	li	s9,7
    80004c6c:	bfdff06f          	j	80004868 <__printf+0x260>
    80004c70:	00100793          	li	a5,1
    80004c74:	d91ff06f          	j	80004a04 <__printf+0x3fc>
    80004c78:	00100793          	li	a5,1
    80004c7c:	bf1ff06f          	j	8000486c <__printf+0x264>
    80004c80:	00900793          	li	a5,9
    80004c84:	00800c93          	li	s9,8
    80004c88:	be1ff06f          	j	80004868 <__printf+0x260>
    80004c8c:	00002517          	auipc	a0,0x2
    80004c90:	a0c50513          	addi	a0,a0,-1524 # 80006698 <_ZZ12printIntegermE6digits+0x150>
    80004c94:	00000097          	auipc	ra,0x0
    80004c98:	918080e7          	jalr	-1768(ra) # 800045ac <panic>

0000000080004c9c <printfinit>:
    80004c9c:	fe010113          	addi	sp,sp,-32
    80004ca0:	00813823          	sd	s0,16(sp)
    80004ca4:	00913423          	sd	s1,8(sp)
    80004ca8:	00113c23          	sd	ra,24(sp)
    80004cac:	02010413          	addi	s0,sp,32
    80004cb0:	00003497          	auipc	s1,0x3
    80004cb4:	7f048493          	addi	s1,s1,2032 # 800084a0 <pr>
    80004cb8:	00048513          	mv	a0,s1
    80004cbc:	00002597          	auipc	a1,0x2
    80004cc0:	9ec58593          	addi	a1,a1,-1556 # 800066a8 <_ZZ12printIntegermE6digits+0x160>
    80004cc4:	00000097          	auipc	ra,0x0
    80004cc8:	5f4080e7          	jalr	1524(ra) # 800052b8 <initlock>
    80004ccc:	01813083          	ld	ra,24(sp)
    80004cd0:	01013403          	ld	s0,16(sp)
    80004cd4:	0004ac23          	sw	zero,24(s1)
    80004cd8:	00813483          	ld	s1,8(sp)
    80004cdc:	02010113          	addi	sp,sp,32
    80004ce0:	00008067          	ret

0000000080004ce4 <uartinit>:
    80004ce4:	ff010113          	addi	sp,sp,-16
    80004ce8:	00813423          	sd	s0,8(sp)
    80004cec:	01010413          	addi	s0,sp,16
    80004cf0:	100007b7          	lui	a5,0x10000
    80004cf4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004cf8:	f8000713          	li	a4,-128
    80004cfc:	00e781a3          	sb	a4,3(a5)
    80004d00:	00300713          	li	a4,3
    80004d04:	00e78023          	sb	a4,0(a5)
    80004d08:	000780a3          	sb	zero,1(a5)
    80004d0c:	00e781a3          	sb	a4,3(a5)
    80004d10:	00700693          	li	a3,7
    80004d14:	00d78123          	sb	a3,2(a5)
    80004d18:	00e780a3          	sb	a4,1(a5)
    80004d1c:	00813403          	ld	s0,8(sp)
    80004d20:	01010113          	addi	sp,sp,16
    80004d24:	00008067          	ret

0000000080004d28 <uartputc>:
    80004d28:	00002797          	auipc	a5,0x2
    80004d2c:	4f07a783          	lw	a5,1264(a5) # 80007218 <panicked>
    80004d30:	00078463          	beqz	a5,80004d38 <uartputc+0x10>
    80004d34:	0000006f          	j	80004d34 <uartputc+0xc>
    80004d38:	fd010113          	addi	sp,sp,-48
    80004d3c:	02813023          	sd	s0,32(sp)
    80004d40:	00913c23          	sd	s1,24(sp)
    80004d44:	01213823          	sd	s2,16(sp)
    80004d48:	01313423          	sd	s3,8(sp)
    80004d4c:	02113423          	sd	ra,40(sp)
    80004d50:	03010413          	addi	s0,sp,48
    80004d54:	00002917          	auipc	s2,0x2
    80004d58:	4cc90913          	addi	s2,s2,1228 # 80007220 <uart_tx_r>
    80004d5c:	00093783          	ld	a5,0(s2)
    80004d60:	00002497          	auipc	s1,0x2
    80004d64:	4c848493          	addi	s1,s1,1224 # 80007228 <uart_tx_w>
    80004d68:	0004b703          	ld	a4,0(s1)
    80004d6c:	02078693          	addi	a3,a5,32
    80004d70:	00050993          	mv	s3,a0
    80004d74:	02e69c63          	bne	a3,a4,80004dac <uartputc+0x84>
    80004d78:	00001097          	auipc	ra,0x1
    80004d7c:	834080e7          	jalr	-1996(ra) # 800055ac <push_on>
    80004d80:	00093783          	ld	a5,0(s2)
    80004d84:	0004b703          	ld	a4,0(s1)
    80004d88:	02078793          	addi	a5,a5,32
    80004d8c:	00e79463          	bne	a5,a4,80004d94 <uartputc+0x6c>
    80004d90:	0000006f          	j	80004d90 <uartputc+0x68>
    80004d94:	00001097          	auipc	ra,0x1
    80004d98:	88c080e7          	jalr	-1908(ra) # 80005620 <pop_on>
    80004d9c:	00093783          	ld	a5,0(s2)
    80004da0:	0004b703          	ld	a4,0(s1)
    80004da4:	02078693          	addi	a3,a5,32
    80004da8:	fce688e3          	beq	a3,a4,80004d78 <uartputc+0x50>
    80004dac:	01f77693          	andi	a3,a4,31
    80004db0:	00003597          	auipc	a1,0x3
    80004db4:	71058593          	addi	a1,a1,1808 # 800084c0 <uart_tx_buf>
    80004db8:	00d586b3          	add	a3,a1,a3
    80004dbc:	00170713          	addi	a4,a4,1
    80004dc0:	01368023          	sb	s3,0(a3)
    80004dc4:	00e4b023          	sd	a4,0(s1)
    80004dc8:	10000637          	lui	a2,0x10000
    80004dcc:	02f71063          	bne	a4,a5,80004dec <uartputc+0xc4>
    80004dd0:	0340006f          	j	80004e04 <uartputc+0xdc>
    80004dd4:	00074703          	lbu	a4,0(a4)
    80004dd8:	00f93023          	sd	a5,0(s2)
    80004ddc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004de0:	00093783          	ld	a5,0(s2)
    80004de4:	0004b703          	ld	a4,0(s1)
    80004de8:	00f70e63          	beq	a4,a5,80004e04 <uartputc+0xdc>
    80004dec:	00564683          	lbu	a3,5(a2)
    80004df0:	01f7f713          	andi	a4,a5,31
    80004df4:	00e58733          	add	a4,a1,a4
    80004df8:	0206f693          	andi	a3,a3,32
    80004dfc:	00178793          	addi	a5,a5,1
    80004e00:	fc069ae3          	bnez	a3,80004dd4 <uartputc+0xac>
    80004e04:	02813083          	ld	ra,40(sp)
    80004e08:	02013403          	ld	s0,32(sp)
    80004e0c:	01813483          	ld	s1,24(sp)
    80004e10:	01013903          	ld	s2,16(sp)
    80004e14:	00813983          	ld	s3,8(sp)
    80004e18:	03010113          	addi	sp,sp,48
    80004e1c:	00008067          	ret

0000000080004e20 <uartputc_sync>:
    80004e20:	ff010113          	addi	sp,sp,-16
    80004e24:	00813423          	sd	s0,8(sp)
    80004e28:	01010413          	addi	s0,sp,16
    80004e2c:	00002717          	auipc	a4,0x2
    80004e30:	3ec72703          	lw	a4,1004(a4) # 80007218 <panicked>
    80004e34:	02071663          	bnez	a4,80004e60 <uartputc_sync+0x40>
    80004e38:	00050793          	mv	a5,a0
    80004e3c:	100006b7          	lui	a3,0x10000
    80004e40:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004e44:	02077713          	andi	a4,a4,32
    80004e48:	fe070ce3          	beqz	a4,80004e40 <uartputc_sync+0x20>
    80004e4c:	0ff7f793          	andi	a5,a5,255
    80004e50:	00f68023          	sb	a5,0(a3)
    80004e54:	00813403          	ld	s0,8(sp)
    80004e58:	01010113          	addi	sp,sp,16
    80004e5c:	00008067          	ret
    80004e60:	0000006f          	j	80004e60 <uartputc_sync+0x40>

0000000080004e64 <uartstart>:
    80004e64:	ff010113          	addi	sp,sp,-16
    80004e68:	00813423          	sd	s0,8(sp)
    80004e6c:	01010413          	addi	s0,sp,16
    80004e70:	00002617          	auipc	a2,0x2
    80004e74:	3b060613          	addi	a2,a2,944 # 80007220 <uart_tx_r>
    80004e78:	00002517          	auipc	a0,0x2
    80004e7c:	3b050513          	addi	a0,a0,944 # 80007228 <uart_tx_w>
    80004e80:	00063783          	ld	a5,0(a2)
    80004e84:	00053703          	ld	a4,0(a0)
    80004e88:	04f70263          	beq	a4,a5,80004ecc <uartstart+0x68>
    80004e8c:	100005b7          	lui	a1,0x10000
    80004e90:	00003817          	auipc	a6,0x3
    80004e94:	63080813          	addi	a6,a6,1584 # 800084c0 <uart_tx_buf>
    80004e98:	01c0006f          	j	80004eb4 <uartstart+0x50>
    80004e9c:	0006c703          	lbu	a4,0(a3)
    80004ea0:	00f63023          	sd	a5,0(a2)
    80004ea4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004ea8:	00063783          	ld	a5,0(a2)
    80004eac:	00053703          	ld	a4,0(a0)
    80004eb0:	00f70e63          	beq	a4,a5,80004ecc <uartstart+0x68>
    80004eb4:	01f7f713          	andi	a4,a5,31
    80004eb8:	00e806b3          	add	a3,a6,a4
    80004ebc:	0055c703          	lbu	a4,5(a1)
    80004ec0:	00178793          	addi	a5,a5,1
    80004ec4:	02077713          	andi	a4,a4,32
    80004ec8:	fc071ae3          	bnez	a4,80004e9c <uartstart+0x38>
    80004ecc:	00813403          	ld	s0,8(sp)
    80004ed0:	01010113          	addi	sp,sp,16
    80004ed4:	00008067          	ret

0000000080004ed8 <uartgetc>:
    80004ed8:	ff010113          	addi	sp,sp,-16
    80004edc:	00813423          	sd	s0,8(sp)
    80004ee0:	01010413          	addi	s0,sp,16
    80004ee4:	10000737          	lui	a4,0x10000
    80004ee8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004eec:	0017f793          	andi	a5,a5,1
    80004ef0:	00078c63          	beqz	a5,80004f08 <uartgetc+0x30>
    80004ef4:	00074503          	lbu	a0,0(a4)
    80004ef8:	0ff57513          	andi	a0,a0,255
    80004efc:	00813403          	ld	s0,8(sp)
    80004f00:	01010113          	addi	sp,sp,16
    80004f04:	00008067          	ret
    80004f08:	fff00513          	li	a0,-1
    80004f0c:	ff1ff06f          	j	80004efc <uartgetc+0x24>

0000000080004f10 <uartintr>:
    80004f10:	100007b7          	lui	a5,0x10000
    80004f14:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004f18:	0017f793          	andi	a5,a5,1
    80004f1c:	0a078463          	beqz	a5,80004fc4 <uartintr+0xb4>
    80004f20:	fe010113          	addi	sp,sp,-32
    80004f24:	00813823          	sd	s0,16(sp)
    80004f28:	00913423          	sd	s1,8(sp)
    80004f2c:	00113c23          	sd	ra,24(sp)
    80004f30:	02010413          	addi	s0,sp,32
    80004f34:	100004b7          	lui	s1,0x10000
    80004f38:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004f3c:	0ff57513          	andi	a0,a0,255
    80004f40:	fffff097          	auipc	ra,0xfffff
    80004f44:	534080e7          	jalr	1332(ra) # 80004474 <consoleintr>
    80004f48:	0054c783          	lbu	a5,5(s1)
    80004f4c:	0017f793          	andi	a5,a5,1
    80004f50:	fe0794e3          	bnez	a5,80004f38 <uartintr+0x28>
    80004f54:	00002617          	auipc	a2,0x2
    80004f58:	2cc60613          	addi	a2,a2,716 # 80007220 <uart_tx_r>
    80004f5c:	00002517          	auipc	a0,0x2
    80004f60:	2cc50513          	addi	a0,a0,716 # 80007228 <uart_tx_w>
    80004f64:	00063783          	ld	a5,0(a2)
    80004f68:	00053703          	ld	a4,0(a0)
    80004f6c:	04f70263          	beq	a4,a5,80004fb0 <uartintr+0xa0>
    80004f70:	100005b7          	lui	a1,0x10000
    80004f74:	00003817          	auipc	a6,0x3
    80004f78:	54c80813          	addi	a6,a6,1356 # 800084c0 <uart_tx_buf>
    80004f7c:	01c0006f          	j	80004f98 <uartintr+0x88>
    80004f80:	0006c703          	lbu	a4,0(a3)
    80004f84:	00f63023          	sd	a5,0(a2)
    80004f88:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004f8c:	00063783          	ld	a5,0(a2)
    80004f90:	00053703          	ld	a4,0(a0)
    80004f94:	00f70e63          	beq	a4,a5,80004fb0 <uartintr+0xa0>
    80004f98:	01f7f713          	andi	a4,a5,31
    80004f9c:	00e806b3          	add	a3,a6,a4
    80004fa0:	0055c703          	lbu	a4,5(a1)
    80004fa4:	00178793          	addi	a5,a5,1
    80004fa8:	02077713          	andi	a4,a4,32
    80004fac:	fc071ae3          	bnez	a4,80004f80 <uartintr+0x70>
    80004fb0:	01813083          	ld	ra,24(sp)
    80004fb4:	01013403          	ld	s0,16(sp)
    80004fb8:	00813483          	ld	s1,8(sp)
    80004fbc:	02010113          	addi	sp,sp,32
    80004fc0:	00008067          	ret
    80004fc4:	00002617          	auipc	a2,0x2
    80004fc8:	25c60613          	addi	a2,a2,604 # 80007220 <uart_tx_r>
    80004fcc:	00002517          	auipc	a0,0x2
    80004fd0:	25c50513          	addi	a0,a0,604 # 80007228 <uart_tx_w>
    80004fd4:	00063783          	ld	a5,0(a2)
    80004fd8:	00053703          	ld	a4,0(a0)
    80004fdc:	04f70263          	beq	a4,a5,80005020 <uartintr+0x110>
    80004fe0:	100005b7          	lui	a1,0x10000
    80004fe4:	00003817          	auipc	a6,0x3
    80004fe8:	4dc80813          	addi	a6,a6,1244 # 800084c0 <uart_tx_buf>
    80004fec:	01c0006f          	j	80005008 <uartintr+0xf8>
    80004ff0:	0006c703          	lbu	a4,0(a3)
    80004ff4:	00f63023          	sd	a5,0(a2)
    80004ff8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004ffc:	00063783          	ld	a5,0(a2)
    80005000:	00053703          	ld	a4,0(a0)
    80005004:	02f70063          	beq	a4,a5,80005024 <uartintr+0x114>
    80005008:	01f7f713          	andi	a4,a5,31
    8000500c:	00e806b3          	add	a3,a6,a4
    80005010:	0055c703          	lbu	a4,5(a1)
    80005014:	00178793          	addi	a5,a5,1
    80005018:	02077713          	andi	a4,a4,32
    8000501c:	fc071ae3          	bnez	a4,80004ff0 <uartintr+0xe0>
    80005020:	00008067          	ret
    80005024:	00008067          	ret

0000000080005028 <kinit>:
    80005028:	fc010113          	addi	sp,sp,-64
    8000502c:	02913423          	sd	s1,40(sp)
    80005030:	fffff7b7          	lui	a5,0xfffff
    80005034:	00004497          	auipc	s1,0x4
    80005038:	4bb48493          	addi	s1,s1,1211 # 800094ef <end+0xfff>
    8000503c:	02813823          	sd	s0,48(sp)
    80005040:	01313c23          	sd	s3,24(sp)
    80005044:	00f4f4b3          	and	s1,s1,a5
    80005048:	02113c23          	sd	ra,56(sp)
    8000504c:	03213023          	sd	s2,32(sp)
    80005050:	01413823          	sd	s4,16(sp)
    80005054:	01513423          	sd	s5,8(sp)
    80005058:	04010413          	addi	s0,sp,64
    8000505c:	000017b7          	lui	a5,0x1
    80005060:	01100993          	li	s3,17
    80005064:	00f487b3          	add	a5,s1,a5
    80005068:	01b99993          	slli	s3,s3,0x1b
    8000506c:	06f9e063          	bltu	s3,a5,800050cc <kinit+0xa4>
    80005070:	00003a97          	auipc	s5,0x3
    80005074:	480a8a93          	addi	s5,s5,1152 # 800084f0 <end>
    80005078:	0754ec63          	bltu	s1,s5,800050f0 <kinit+0xc8>
    8000507c:	0734fa63          	bgeu	s1,s3,800050f0 <kinit+0xc8>
    80005080:	00088a37          	lui	s4,0x88
    80005084:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005088:	00002917          	auipc	s2,0x2
    8000508c:	1a890913          	addi	s2,s2,424 # 80007230 <kmem>
    80005090:	00ca1a13          	slli	s4,s4,0xc
    80005094:	0140006f          	j	800050a8 <kinit+0x80>
    80005098:	000017b7          	lui	a5,0x1
    8000509c:	00f484b3          	add	s1,s1,a5
    800050a0:	0554e863          	bltu	s1,s5,800050f0 <kinit+0xc8>
    800050a4:	0534f663          	bgeu	s1,s3,800050f0 <kinit+0xc8>
    800050a8:	00001637          	lui	a2,0x1
    800050ac:	00100593          	li	a1,1
    800050b0:	00048513          	mv	a0,s1
    800050b4:	00000097          	auipc	ra,0x0
    800050b8:	5e4080e7          	jalr	1508(ra) # 80005698 <__memset>
    800050bc:	00093783          	ld	a5,0(s2)
    800050c0:	00f4b023          	sd	a5,0(s1)
    800050c4:	00993023          	sd	s1,0(s2)
    800050c8:	fd4498e3          	bne	s1,s4,80005098 <kinit+0x70>
    800050cc:	03813083          	ld	ra,56(sp)
    800050d0:	03013403          	ld	s0,48(sp)
    800050d4:	02813483          	ld	s1,40(sp)
    800050d8:	02013903          	ld	s2,32(sp)
    800050dc:	01813983          	ld	s3,24(sp)
    800050e0:	01013a03          	ld	s4,16(sp)
    800050e4:	00813a83          	ld	s5,8(sp)
    800050e8:	04010113          	addi	sp,sp,64
    800050ec:	00008067          	ret
    800050f0:	00001517          	auipc	a0,0x1
    800050f4:	5d850513          	addi	a0,a0,1496 # 800066c8 <digits+0x18>
    800050f8:	fffff097          	auipc	ra,0xfffff
    800050fc:	4b4080e7          	jalr	1204(ra) # 800045ac <panic>

0000000080005100 <freerange>:
    80005100:	fc010113          	addi	sp,sp,-64
    80005104:	000017b7          	lui	a5,0x1
    80005108:	02913423          	sd	s1,40(sp)
    8000510c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80005110:	009504b3          	add	s1,a0,s1
    80005114:	fffff537          	lui	a0,0xfffff
    80005118:	02813823          	sd	s0,48(sp)
    8000511c:	02113c23          	sd	ra,56(sp)
    80005120:	03213023          	sd	s2,32(sp)
    80005124:	01313c23          	sd	s3,24(sp)
    80005128:	01413823          	sd	s4,16(sp)
    8000512c:	01513423          	sd	s5,8(sp)
    80005130:	01613023          	sd	s6,0(sp)
    80005134:	04010413          	addi	s0,sp,64
    80005138:	00a4f4b3          	and	s1,s1,a0
    8000513c:	00f487b3          	add	a5,s1,a5
    80005140:	06f5e463          	bltu	a1,a5,800051a8 <freerange+0xa8>
    80005144:	00003a97          	auipc	s5,0x3
    80005148:	3aca8a93          	addi	s5,s5,940 # 800084f0 <end>
    8000514c:	0954e263          	bltu	s1,s5,800051d0 <freerange+0xd0>
    80005150:	01100993          	li	s3,17
    80005154:	01b99993          	slli	s3,s3,0x1b
    80005158:	0734fc63          	bgeu	s1,s3,800051d0 <freerange+0xd0>
    8000515c:	00058a13          	mv	s4,a1
    80005160:	00002917          	auipc	s2,0x2
    80005164:	0d090913          	addi	s2,s2,208 # 80007230 <kmem>
    80005168:	00002b37          	lui	s6,0x2
    8000516c:	0140006f          	j	80005180 <freerange+0x80>
    80005170:	000017b7          	lui	a5,0x1
    80005174:	00f484b3          	add	s1,s1,a5
    80005178:	0554ec63          	bltu	s1,s5,800051d0 <freerange+0xd0>
    8000517c:	0534fa63          	bgeu	s1,s3,800051d0 <freerange+0xd0>
    80005180:	00001637          	lui	a2,0x1
    80005184:	00100593          	li	a1,1
    80005188:	00048513          	mv	a0,s1
    8000518c:	00000097          	auipc	ra,0x0
    80005190:	50c080e7          	jalr	1292(ra) # 80005698 <__memset>
    80005194:	00093703          	ld	a4,0(s2)
    80005198:	016487b3          	add	a5,s1,s6
    8000519c:	00e4b023          	sd	a4,0(s1)
    800051a0:	00993023          	sd	s1,0(s2)
    800051a4:	fcfa76e3          	bgeu	s4,a5,80005170 <freerange+0x70>
    800051a8:	03813083          	ld	ra,56(sp)
    800051ac:	03013403          	ld	s0,48(sp)
    800051b0:	02813483          	ld	s1,40(sp)
    800051b4:	02013903          	ld	s2,32(sp)
    800051b8:	01813983          	ld	s3,24(sp)
    800051bc:	01013a03          	ld	s4,16(sp)
    800051c0:	00813a83          	ld	s5,8(sp)
    800051c4:	00013b03          	ld	s6,0(sp)
    800051c8:	04010113          	addi	sp,sp,64
    800051cc:	00008067          	ret
    800051d0:	00001517          	auipc	a0,0x1
    800051d4:	4f850513          	addi	a0,a0,1272 # 800066c8 <digits+0x18>
    800051d8:	fffff097          	auipc	ra,0xfffff
    800051dc:	3d4080e7          	jalr	980(ra) # 800045ac <panic>

00000000800051e0 <kfree>:
    800051e0:	fe010113          	addi	sp,sp,-32
    800051e4:	00813823          	sd	s0,16(sp)
    800051e8:	00113c23          	sd	ra,24(sp)
    800051ec:	00913423          	sd	s1,8(sp)
    800051f0:	02010413          	addi	s0,sp,32
    800051f4:	03451793          	slli	a5,a0,0x34
    800051f8:	04079c63          	bnez	a5,80005250 <kfree+0x70>
    800051fc:	00003797          	auipc	a5,0x3
    80005200:	2f478793          	addi	a5,a5,756 # 800084f0 <end>
    80005204:	00050493          	mv	s1,a0
    80005208:	04f56463          	bltu	a0,a5,80005250 <kfree+0x70>
    8000520c:	01100793          	li	a5,17
    80005210:	01b79793          	slli	a5,a5,0x1b
    80005214:	02f57e63          	bgeu	a0,a5,80005250 <kfree+0x70>
    80005218:	00001637          	lui	a2,0x1
    8000521c:	00100593          	li	a1,1
    80005220:	00000097          	auipc	ra,0x0
    80005224:	478080e7          	jalr	1144(ra) # 80005698 <__memset>
    80005228:	00002797          	auipc	a5,0x2
    8000522c:	00878793          	addi	a5,a5,8 # 80007230 <kmem>
    80005230:	0007b703          	ld	a4,0(a5)
    80005234:	01813083          	ld	ra,24(sp)
    80005238:	01013403          	ld	s0,16(sp)
    8000523c:	00e4b023          	sd	a4,0(s1)
    80005240:	0097b023          	sd	s1,0(a5)
    80005244:	00813483          	ld	s1,8(sp)
    80005248:	02010113          	addi	sp,sp,32
    8000524c:	00008067          	ret
    80005250:	00001517          	auipc	a0,0x1
    80005254:	47850513          	addi	a0,a0,1144 # 800066c8 <digits+0x18>
    80005258:	fffff097          	auipc	ra,0xfffff
    8000525c:	354080e7          	jalr	852(ra) # 800045ac <panic>

0000000080005260 <kalloc>:
    80005260:	fe010113          	addi	sp,sp,-32
    80005264:	00813823          	sd	s0,16(sp)
    80005268:	00913423          	sd	s1,8(sp)
    8000526c:	00113c23          	sd	ra,24(sp)
    80005270:	02010413          	addi	s0,sp,32
    80005274:	00002797          	auipc	a5,0x2
    80005278:	fbc78793          	addi	a5,a5,-68 # 80007230 <kmem>
    8000527c:	0007b483          	ld	s1,0(a5)
    80005280:	02048063          	beqz	s1,800052a0 <kalloc+0x40>
    80005284:	0004b703          	ld	a4,0(s1)
    80005288:	00001637          	lui	a2,0x1
    8000528c:	00500593          	li	a1,5
    80005290:	00048513          	mv	a0,s1
    80005294:	00e7b023          	sd	a4,0(a5)
    80005298:	00000097          	auipc	ra,0x0
    8000529c:	400080e7          	jalr	1024(ra) # 80005698 <__memset>
    800052a0:	01813083          	ld	ra,24(sp)
    800052a4:	01013403          	ld	s0,16(sp)
    800052a8:	00048513          	mv	a0,s1
    800052ac:	00813483          	ld	s1,8(sp)
    800052b0:	02010113          	addi	sp,sp,32
    800052b4:	00008067          	ret

00000000800052b8 <initlock>:
    800052b8:	ff010113          	addi	sp,sp,-16
    800052bc:	00813423          	sd	s0,8(sp)
    800052c0:	01010413          	addi	s0,sp,16
    800052c4:	00813403          	ld	s0,8(sp)
    800052c8:	00b53423          	sd	a1,8(a0)
    800052cc:	00052023          	sw	zero,0(a0)
    800052d0:	00053823          	sd	zero,16(a0)
    800052d4:	01010113          	addi	sp,sp,16
    800052d8:	00008067          	ret

00000000800052dc <acquire>:
    800052dc:	fe010113          	addi	sp,sp,-32
    800052e0:	00813823          	sd	s0,16(sp)
    800052e4:	00913423          	sd	s1,8(sp)
    800052e8:	00113c23          	sd	ra,24(sp)
    800052ec:	01213023          	sd	s2,0(sp)
    800052f0:	02010413          	addi	s0,sp,32
    800052f4:	00050493          	mv	s1,a0
    800052f8:	10002973          	csrr	s2,sstatus
    800052fc:	100027f3          	csrr	a5,sstatus
    80005300:	ffd7f793          	andi	a5,a5,-3
    80005304:	10079073          	csrw	sstatus,a5
    80005308:	fffff097          	auipc	ra,0xfffff
    8000530c:	8e4080e7          	jalr	-1820(ra) # 80003bec <mycpu>
    80005310:	07852783          	lw	a5,120(a0)
    80005314:	06078e63          	beqz	a5,80005390 <acquire+0xb4>
    80005318:	fffff097          	auipc	ra,0xfffff
    8000531c:	8d4080e7          	jalr	-1836(ra) # 80003bec <mycpu>
    80005320:	07852783          	lw	a5,120(a0)
    80005324:	0004a703          	lw	a4,0(s1)
    80005328:	0017879b          	addiw	a5,a5,1
    8000532c:	06f52c23          	sw	a5,120(a0)
    80005330:	04071063          	bnez	a4,80005370 <acquire+0x94>
    80005334:	00100713          	li	a4,1
    80005338:	00070793          	mv	a5,a4
    8000533c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005340:	0007879b          	sext.w	a5,a5
    80005344:	fe079ae3          	bnez	a5,80005338 <acquire+0x5c>
    80005348:	0ff0000f          	fence
    8000534c:	fffff097          	auipc	ra,0xfffff
    80005350:	8a0080e7          	jalr	-1888(ra) # 80003bec <mycpu>
    80005354:	01813083          	ld	ra,24(sp)
    80005358:	01013403          	ld	s0,16(sp)
    8000535c:	00a4b823          	sd	a0,16(s1)
    80005360:	00013903          	ld	s2,0(sp)
    80005364:	00813483          	ld	s1,8(sp)
    80005368:	02010113          	addi	sp,sp,32
    8000536c:	00008067          	ret
    80005370:	0104b903          	ld	s2,16(s1)
    80005374:	fffff097          	auipc	ra,0xfffff
    80005378:	878080e7          	jalr	-1928(ra) # 80003bec <mycpu>
    8000537c:	faa91ce3          	bne	s2,a0,80005334 <acquire+0x58>
    80005380:	00001517          	auipc	a0,0x1
    80005384:	35050513          	addi	a0,a0,848 # 800066d0 <digits+0x20>
    80005388:	fffff097          	auipc	ra,0xfffff
    8000538c:	224080e7          	jalr	548(ra) # 800045ac <panic>
    80005390:	00195913          	srli	s2,s2,0x1
    80005394:	fffff097          	auipc	ra,0xfffff
    80005398:	858080e7          	jalr	-1960(ra) # 80003bec <mycpu>
    8000539c:	00197913          	andi	s2,s2,1
    800053a0:	07252e23          	sw	s2,124(a0)
    800053a4:	f75ff06f          	j	80005318 <acquire+0x3c>

00000000800053a8 <release>:
    800053a8:	fe010113          	addi	sp,sp,-32
    800053ac:	00813823          	sd	s0,16(sp)
    800053b0:	00113c23          	sd	ra,24(sp)
    800053b4:	00913423          	sd	s1,8(sp)
    800053b8:	01213023          	sd	s2,0(sp)
    800053bc:	02010413          	addi	s0,sp,32
    800053c0:	00052783          	lw	a5,0(a0)
    800053c4:	00079a63          	bnez	a5,800053d8 <release+0x30>
    800053c8:	00001517          	auipc	a0,0x1
    800053cc:	31050513          	addi	a0,a0,784 # 800066d8 <digits+0x28>
    800053d0:	fffff097          	auipc	ra,0xfffff
    800053d4:	1dc080e7          	jalr	476(ra) # 800045ac <panic>
    800053d8:	01053903          	ld	s2,16(a0)
    800053dc:	00050493          	mv	s1,a0
    800053e0:	fffff097          	auipc	ra,0xfffff
    800053e4:	80c080e7          	jalr	-2036(ra) # 80003bec <mycpu>
    800053e8:	fea910e3          	bne	s2,a0,800053c8 <release+0x20>
    800053ec:	0004b823          	sd	zero,16(s1)
    800053f0:	0ff0000f          	fence
    800053f4:	0f50000f          	fence	iorw,ow
    800053f8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800053fc:	ffffe097          	auipc	ra,0xffffe
    80005400:	7f0080e7          	jalr	2032(ra) # 80003bec <mycpu>
    80005404:	100027f3          	csrr	a5,sstatus
    80005408:	0027f793          	andi	a5,a5,2
    8000540c:	04079a63          	bnez	a5,80005460 <release+0xb8>
    80005410:	07852783          	lw	a5,120(a0)
    80005414:	02f05e63          	blez	a5,80005450 <release+0xa8>
    80005418:	fff7871b          	addiw	a4,a5,-1
    8000541c:	06e52c23          	sw	a4,120(a0)
    80005420:	00071c63          	bnez	a4,80005438 <release+0x90>
    80005424:	07c52783          	lw	a5,124(a0)
    80005428:	00078863          	beqz	a5,80005438 <release+0x90>
    8000542c:	100027f3          	csrr	a5,sstatus
    80005430:	0027e793          	ori	a5,a5,2
    80005434:	10079073          	csrw	sstatus,a5
    80005438:	01813083          	ld	ra,24(sp)
    8000543c:	01013403          	ld	s0,16(sp)
    80005440:	00813483          	ld	s1,8(sp)
    80005444:	00013903          	ld	s2,0(sp)
    80005448:	02010113          	addi	sp,sp,32
    8000544c:	00008067          	ret
    80005450:	00001517          	auipc	a0,0x1
    80005454:	2a850513          	addi	a0,a0,680 # 800066f8 <digits+0x48>
    80005458:	fffff097          	auipc	ra,0xfffff
    8000545c:	154080e7          	jalr	340(ra) # 800045ac <panic>
    80005460:	00001517          	auipc	a0,0x1
    80005464:	28050513          	addi	a0,a0,640 # 800066e0 <digits+0x30>
    80005468:	fffff097          	auipc	ra,0xfffff
    8000546c:	144080e7          	jalr	324(ra) # 800045ac <panic>

0000000080005470 <holding>:
    80005470:	00052783          	lw	a5,0(a0)
    80005474:	00079663          	bnez	a5,80005480 <holding+0x10>
    80005478:	00000513          	li	a0,0
    8000547c:	00008067          	ret
    80005480:	fe010113          	addi	sp,sp,-32
    80005484:	00813823          	sd	s0,16(sp)
    80005488:	00913423          	sd	s1,8(sp)
    8000548c:	00113c23          	sd	ra,24(sp)
    80005490:	02010413          	addi	s0,sp,32
    80005494:	01053483          	ld	s1,16(a0)
    80005498:	ffffe097          	auipc	ra,0xffffe
    8000549c:	754080e7          	jalr	1876(ra) # 80003bec <mycpu>
    800054a0:	01813083          	ld	ra,24(sp)
    800054a4:	01013403          	ld	s0,16(sp)
    800054a8:	40a48533          	sub	a0,s1,a0
    800054ac:	00153513          	seqz	a0,a0
    800054b0:	00813483          	ld	s1,8(sp)
    800054b4:	02010113          	addi	sp,sp,32
    800054b8:	00008067          	ret

00000000800054bc <push_off>:
    800054bc:	fe010113          	addi	sp,sp,-32
    800054c0:	00813823          	sd	s0,16(sp)
    800054c4:	00113c23          	sd	ra,24(sp)
    800054c8:	00913423          	sd	s1,8(sp)
    800054cc:	02010413          	addi	s0,sp,32
    800054d0:	100024f3          	csrr	s1,sstatus
    800054d4:	100027f3          	csrr	a5,sstatus
    800054d8:	ffd7f793          	andi	a5,a5,-3
    800054dc:	10079073          	csrw	sstatus,a5
    800054e0:	ffffe097          	auipc	ra,0xffffe
    800054e4:	70c080e7          	jalr	1804(ra) # 80003bec <mycpu>
    800054e8:	07852783          	lw	a5,120(a0)
    800054ec:	02078663          	beqz	a5,80005518 <push_off+0x5c>
    800054f0:	ffffe097          	auipc	ra,0xffffe
    800054f4:	6fc080e7          	jalr	1788(ra) # 80003bec <mycpu>
    800054f8:	07852783          	lw	a5,120(a0)
    800054fc:	01813083          	ld	ra,24(sp)
    80005500:	01013403          	ld	s0,16(sp)
    80005504:	0017879b          	addiw	a5,a5,1
    80005508:	06f52c23          	sw	a5,120(a0)
    8000550c:	00813483          	ld	s1,8(sp)
    80005510:	02010113          	addi	sp,sp,32
    80005514:	00008067          	ret
    80005518:	0014d493          	srli	s1,s1,0x1
    8000551c:	ffffe097          	auipc	ra,0xffffe
    80005520:	6d0080e7          	jalr	1744(ra) # 80003bec <mycpu>
    80005524:	0014f493          	andi	s1,s1,1
    80005528:	06952e23          	sw	s1,124(a0)
    8000552c:	fc5ff06f          	j	800054f0 <push_off+0x34>

0000000080005530 <pop_off>:
    80005530:	ff010113          	addi	sp,sp,-16
    80005534:	00813023          	sd	s0,0(sp)
    80005538:	00113423          	sd	ra,8(sp)
    8000553c:	01010413          	addi	s0,sp,16
    80005540:	ffffe097          	auipc	ra,0xffffe
    80005544:	6ac080e7          	jalr	1708(ra) # 80003bec <mycpu>
    80005548:	100027f3          	csrr	a5,sstatus
    8000554c:	0027f793          	andi	a5,a5,2
    80005550:	04079663          	bnez	a5,8000559c <pop_off+0x6c>
    80005554:	07852783          	lw	a5,120(a0)
    80005558:	02f05a63          	blez	a5,8000558c <pop_off+0x5c>
    8000555c:	fff7871b          	addiw	a4,a5,-1
    80005560:	06e52c23          	sw	a4,120(a0)
    80005564:	00071c63          	bnez	a4,8000557c <pop_off+0x4c>
    80005568:	07c52783          	lw	a5,124(a0)
    8000556c:	00078863          	beqz	a5,8000557c <pop_off+0x4c>
    80005570:	100027f3          	csrr	a5,sstatus
    80005574:	0027e793          	ori	a5,a5,2
    80005578:	10079073          	csrw	sstatus,a5
    8000557c:	00813083          	ld	ra,8(sp)
    80005580:	00013403          	ld	s0,0(sp)
    80005584:	01010113          	addi	sp,sp,16
    80005588:	00008067          	ret
    8000558c:	00001517          	auipc	a0,0x1
    80005590:	16c50513          	addi	a0,a0,364 # 800066f8 <digits+0x48>
    80005594:	fffff097          	auipc	ra,0xfffff
    80005598:	018080e7          	jalr	24(ra) # 800045ac <panic>
    8000559c:	00001517          	auipc	a0,0x1
    800055a0:	14450513          	addi	a0,a0,324 # 800066e0 <digits+0x30>
    800055a4:	fffff097          	auipc	ra,0xfffff
    800055a8:	008080e7          	jalr	8(ra) # 800045ac <panic>

00000000800055ac <push_on>:
    800055ac:	fe010113          	addi	sp,sp,-32
    800055b0:	00813823          	sd	s0,16(sp)
    800055b4:	00113c23          	sd	ra,24(sp)
    800055b8:	00913423          	sd	s1,8(sp)
    800055bc:	02010413          	addi	s0,sp,32
    800055c0:	100024f3          	csrr	s1,sstatus
    800055c4:	100027f3          	csrr	a5,sstatus
    800055c8:	0027e793          	ori	a5,a5,2
    800055cc:	10079073          	csrw	sstatus,a5
    800055d0:	ffffe097          	auipc	ra,0xffffe
    800055d4:	61c080e7          	jalr	1564(ra) # 80003bec <mycpu>
    800055d8:	07852783          	lw	a5,120(a0)
    800055dc:	02078663          	beqz	a5,80005608 <push_on+0x5c>
    800055e0:	ffffe097          	auipc	ra,0xffffe
    800055e4:	60c080e7          	jalr	1548(ra) # 80003bec <mycpu>
    800055e8:	07852783          	lw	a5,120(a0)
    800055ec:	01813083          	ld	ra,24(sp)
    800055f0:	01013403          	ld	s0,16(sp)
    800055f4:	0017879b          	addiw	a5,a5,1
    800055f8:	06f52c23          	sw	a5,120(a0)
    800055fc:	00813483          	ld	s1,8(sp)
    80005600:	02010113          	addi	sp,sp,32
    80005604:	00008067          	ret
    80005608:	0014d493          	srli	s1,s1,0x1
    8000560c:	ffffe097          	auipc	ra,0xffffe
    80005610:	5e0080e7          	jalr	1504(ra) # 80003bec <mycpu>
    80005614:	0014f493          	andi	s1,s1,1
    80005618:	06952e23          	sw	s1,124(a0)
    8000561c:	fc5ff06f          	j	800055e0 <push_on+0x34>

0000000080005620 <pop_on>:
    80005620:	ff010113          	addi	sp,sp,-16
    80005624:	00813023          	sd	s0,0(sp)
    80005628:	00113423          	sd	ra,8(sp)
    8000562c:	01010413          	addi	s0,sp,16
    80005630:	ffffe097          	auipc	ra,0xffffe
    80005634:	5bc080e7          	jalr	1468(ra) # 80003bec <mycpu>
    80005638:	100027f3          	csrr	a5,sstatus
    8000563c:	0027f793          	andi	a5,a5,2
    80005640:	04078463          	beqz	a5,80005688 <pop_on+0x68>
    80005644:	07852783          	lw	a5,120(a0)
    80005648:	02f05863          	blez	a5,80005678 <pop_on+0x58>
    8000564c:	fff7879b          	addiw	a5,a5,-1
    80005650:	06f52c23          	sw	a5,120(a0)
    80005654:	07853783          	ld	a5,120(a0)
    80005658:	00079863          	bnez	a5,80005668 <pop_on+0x48>
    8000565c:	100027f3          	csrr	a5,sstatus
    80005660:	ffd7f793          	andi	a5,a5,-3
    80005664:	10079073          	csrw	sstatus,a5
    80005668:	00813083          	ld	ra,8(sp)
    8000566c:	00013403          	ld	s0,0(sp)
    80005670:	01010113          	addi	sp,sp,16
    80005674:	00008067          	ret
    80005678:	00001517          	auipc	a0,0x1
    8000567c:	0a850513          	addi	a0,a0,168 # 80006720 <digits+0x70>
    80005680:	fffff097          	auipc	ra,0xfffff
    80005684:	f2c080e7          	jalr	-212(ra) # 800045ac <panic>
    80005688:	00001517          	auipc	a0,0x1
    8000568c:	07850513          	addi	a0,a0,120 # 80006700 <digits+0x50>
    80005690:	fffff097          	auipc	ra,0xfffff
    80005694:	f1c080e7          	jalr	-228(ra) # 800045ac <panic>

0000000080005698 <__memset>:
    80005698:	ff010113          	addi	sp,sp,-16
    8000569c:	00813423          	sd	s0,8(sp)
    800056a0:	01010413          	addi	s0,sp,16
    800056a4:	1a060e63          	beqz	a2,80005860 <__memset+0x1c8>
    800056a8:	40a007b3          	neg	a5,a0
    800056ac:	0077f793          	andi	a5,a5,7
    800056b0:	00778693          	addi	a3,a5,7
    800056b4:	00b00813          	li	a6,11
    800056b8:	0ff5f593          	andi	a1,a1,255
    800056bc:	fff6071b          	addiw	a4,a2,-1
    800056c0:	1b06e663          	bltu	a3,a6,8000586c <__memset+0x1d4>
    800056c4:	1cd76463          	bltu	a4,a3,8000588c <__memset+0x1f4>
    800056c8:	1a078e63          	beqz	a5,80005884 <__memset+0x1ec>
    800056cc:	00b50023          	sb	a1,0(a0)
    800056d0:	00100713          	li	a4,1
    800056d4:	1ae78463          	beq	a5,a4,8000587c <__memset+0x1e4>
    800056d8:	00b500a3          	sb	a1,1(a0)
    800056dc:	00200713          	li	a4,2
    800056e0:	1ae78a63          	beq	a5,a4,80005894 <__memset+0x1fc>
    800056e4:	00b50123          	sb	a1,2(a0)
    800056e8:	00300713          	li	a4,3
    800056ec:	18e78463          	beq	a5,a4,80005874 <__memset+0x1dc>
    800056f0:	00b501a3          	sb	a1,3(a0)
    800056f4:	00400713          	li	a4,4
    800056f8:	1ae78263          	beq	a5,a4,8000589c <__memset+0x204>
    800056fc:	00b50223          	sb	a1,4(a0)
    80005700:	00500713          	li	a4,5
    80005704:	1ae78063          	beq	a5,a4,800058a4 <__memset+0x20c>
    80005708:	00b502a3          	sb	a1,5(a0)
    8000570c:	00700713          	li	a4,7
    80005710:	18e79e63          	bne	a5,a4,800058ac <__memset+0x214>
    80005714:	00b50323          	sb	a1,6(a0)
    80005718:	00700e93          	li	t4,7
    8000571c:	00859713          	slli	a4,a1,0x8
    80005720:	00e5e733          	or	a4,a1,a4
    80005724:	01059e13          	slli	t3,a1,0x10
    80005728:	01c76e33          	or	t3,a4,t3
    8000572c:	01859313          	slli	t1,a1,0x18
    80005730:	006e6333          	or	t1,t3,t1
    80005734:	02059893          	slli	a7,a1,0x20
    80005738:	40f60e3b          	subw	t3,a2,a5
    8000573c:	011368b3          	or	a7,t1,a7
    80005740:	02859813          	slli	a6,a1,0x28
    80005744:	0108e833          	or	a6,a7,a6
    80005748:	03059693          	slli	a3,a1,0x30
    8000574c:	003e589b          	srliw	a7,t3,0x3
    80005750:	00d866b3          	or	a3,a6,a3
    80005754:	03859713          	slli	a4,a1,0x38
    80005758:	00389813          	slli	a6,a7,0x3
    8000575c:	00f507b3          	add	a5,a0,a5
    80005760:	00e6e733          	or	a4,a3,a4
    80005764:	000e089b          	sext.w	a7,t3
    80005768:	00f806b3          	add	a3,a6,a5
    8000576c:	00e7b023          	sd	a4,0(a5)
    80005770:	00878793          	addi	a5,a5,8
    80005774:	fed79ce3          	bne	a5,a3,8000576c <__memset+0xd4>
    80005778:	ff8e7793          	andi	a5,t3,-8
    8000577c:	0007871b          	sext.w	a4,a5
    80005780:	01d787bb          	addw	a5,a5,t4
    80005784:	0ce88e63          	beq	a7,a4,80005860 <__memset+0x1c8>
    80005788:	00f50733          	add	a4,a0,a5
    8000578c:	00b70023          	sb	a1,0(a4)
    80005790:	0017871b          	addiw	a4,a5,1
    80005794:	0cc77663          	bgeu	a4,a2,80005860 <__memset+0x1c8>
    80005798:	00e50733          	add	a4,a0,a4
    8000579c:	00b70023          	sb	a1,0(a4)
    800057a0:	0027871b          	addiw	a4,a5,2
    800057a4:	0ac77e63          	bgeu	a4,a2,80005860 <__memset+0x1c8>
    800057a8:	00e50733          	add	a4,a0,a4
    800057ac:	00b70023          	sb	a1,0(a4)
    800057b0:	0037871b          	addiw	a4,a5,3
    800057b4:	0ac77663          	bgeu	a4,a2,80005860 <__memset+0x1c8>
    800057b8:	00e50733          	add	a4,a0,a4
    800057bc:	00b70023          	sb	a1,0(a4)
    800057c0:	0047871b          	addiw	a4,a5,4
    800057c4:	08c77e63          	bgeu	a4,a2,80005860 <__memset+0x1c8>
    800057c8:	00e50733          	add	a4,a0,a4
    800057cc:	00b70023          	sb	a1,0(a4)
    800057d0:	0057871b          	addiw	a4,a5,5
    800057d4:	08c77663          	bgeu	a4,a2,80005860 <__memset+0x1c8>
    800057d8:	00e50733          	add	a4,a0,a4
    800057dc:	00b70023          	sb	a1,0(a4)
    800057e0:	0067871b          	addiw	a4,a5,6
    800057e4:	06c77e63          	bgeu	a4,a2,80005860 <__memset+0x1c8>
    800057e8:	00e50733          	add	a4,a0,a4
    800057ec:	00b70023          	sb	a1,0(a4)
    800057f0:	0077871b          	addiw	a4,a5,7
    800057f4:	06c77663          	bgeu	a4,a2,80005860 <__memset+0x1c8>
    800057f8:	00e50733          	add	a4,a0,a4
    800057fc:	00b70023          	sb	a1,0(a4)
    80005800:	0087871b          	addiw	a4,a5,8
    80005804:	04c77e63          	bgeu	a4,a2,80005860 <__memset+0x1c8>
    80005808:	00e50733          	add	a4,a0,a4
    8000580c:	00b70023          	sb	a1,0(a4)
    80005810:	0097871b          	addiw	a4,a5,9
    80005814:	04c77663          	bgeu	a4,a2,80005860 <__memset+0x1c8>
    80005818:	00e50733          	add	a4,a0,a4
    8000581c:	00b70023          	sb	a1,0(a4)
    80005820:	00a7871b          	addiw	a4,a5,10
    80005824:	02c77e63          	bgeu	a4,a2,80005860 <__memset+0x1c8>
    80005828:	00e50733          	add	a4,a0,a4
    8000582c:	00b70023          	sb	a1,0(a4)
    80005830:	00b7871b          	addiw	a4,a5,11
    80005834:	02c77663          	bgeu	a4,a2,80005860 <__memset+0x1c8>
    80005838:	00e50733          	add	a4,a0,a4
    8000583c:	00b70023          	sb	a1,0(a4)
    80005840:	00c7871b          	addiw	a4,a5,12
    80005844:	00c77e63          	bgeu	a4,a2,80005860 <__memset+0x1c8>
    80005848:	00e50733          	add	a4,a0,a4
    8000584c:	00b70023          	sb	a1,0(a4)
    80005850:	00d7879b          	addiw	a5,a5,13
    80005854:	00c7f663          	bgeu	a5,a2,80005860 <__memset+0x1c8>
    80005858:	00f507b3          	add	a5,a0,a5
    8000585c:	00b78023          	sb	a1,0(a5)
    80005860:	00813403          	ld	s0,8(sp)
    80005864:	01010113          	addi	sp,sp,16
    80005868:	00008067          	ret
    8000586c:	00b00693          	li	a3,11
    80005870:	e55ff06f          	j	800056c4 <__memset+0x2c>
    80005874:	00300e93          	li	t4,3
    80005878:	ea5ff06f          	j	8000571c <__memset+0x84>
    8000587c:	00100e93          	li	t4,1
    80005880:	e9dff06f          	j	8000571c <__memset+0x84>
    80005884:	00000e93          	li	t4,0
    80005888:	e95ff06f          	j	8000571c <__memset+0x84>
    8000588c:	00000793          	li	a5,0
    80005890:	ef9ff06f          	j	80005788 <__memset+0xf0>
    80005894:	00200e93          	li	t4,2
    80005898:	e85ff06f          	j	8000571c <__memset+0x84>
    8000589c:	00400e93          	li	t4,4
    800058a0:	e7dff06f          	j	8000571c <__memset+0x84>
    800058a4:	00500e93          	li	t4,5
    800058a8:	e75ff06f          	j	8000571c <__memset+0x84>
    800058ac:	00600e93          	li	t4,6
    800058b0:	e6dff06f          	j	8000571c <__memset+0x84>

00000000800058b4 <__memmove>:
    800058b4:	ff010113          	addi	sp,sp,-16
    800058b8:	00813423          	sd	s0,8(sp)
    800058bc:	01010413          	addi	s0,sp,16
    800058c0:	0e060863          	beqz	a2,800059b0 <__memmove+0xfc>
    800058c4:	fff6069b          	addiw	a3,a2,-1
    800058c8:	0006881b          	sext.w	a6,a3
    800058cc:	0ea5e863          	bltu	a1,a0,800059bc <__memmove+0x108>
    800058d0:	00758713          	addi	a4,a1,7
    800058d4:	00a5e7b3          	or	a5,a1,a0
    800058d8:	40a70733          	sub	a4,a4,a0
    800058dc:	0077f793          	andi	a5,a5,7
    800058e0:	00f73713          	sltiu	a4,a4,15
    800058e4:	00174713          	xori	a4,a4,1
    800058e8:	0017b793          	seqz	a5,a5
    800058ec:	00e7f7b3          	and	a5,a5,a4
    800058f0:	10078863          	beqz	a5,80005a00 <__memmove+0x14c>
    800058f4:	00900793          	li	a5,9
    800058f8:	1107f463          	bgeu	a5,a6,80005a00 <__memmove+0x14c>
    800058fc:	0036581b          	srliw	a6,a2,0x3
    80005900:	fff8081b          	addiw	a6,a6,-1
    80005904:	02081813          	slli	a6,a6,0x20
    80005908:	01d85893          	srli	a7,a6,0x1d
    8000590c:	00858813          	addi	a6,a1,8
    80005910:	00058793          	mv	a5,a1
    80005914:	00050713          	mv	a4,a0
    80005918:	01088833          	add	a6,a7,a6
    8000591c:	0007b883          	ld	a7,0(a5)
    80005920:	00878793          	addi	a5,a5,8
    80005924:	00870713          	addi	a4,a4,8
    80005928:	ff173c23          	sd	a7,-8(a4)
    8000592c:	ff0798e3          	bne	a5,a6,8000591c <__memmove+0x68>
    80005930:	ff867713          	andi	a4,a2,-8
    80005934:	02071793          	slli	a5,a4,0x20
    80005938:	0207d793          	srli	a5,a5,0x20
    8000593c:	00f585b3          	add	a1,a1,a5
    80005940:	40e686bb          	subw	a3,a3,a4
    80005944:	00f507b3          	add	a5,a0,a5
    80005948:	06e60463          	beq	a2,a4,800059b0 <__memmove+0xfc>
    8000594c:	0005c703          	lbu	a4,0(a1)
    80005950:	00e78023          	sb	a4,0(a5)
    80005954:	04068e63          	beqz	a3,800059b0 <__memmove+0xfc>
    80005958:	0015c603          	lbu	a2,1(a1)
    8000595c:	00100713          	li	a4,1
    80005960:	00c780a3          	sb	a2,1(a5)
    80005964:	04e68663          	beq	a3,a4,800059b0 <__memmove+0xfc>
    80005968:	0025c603          	lbu	a2,2(a1)
    8000596c:	00200713          	li	a4,2
    80005970:	00c78123          	sb	a2,2(a5)
    80005974:	02e68e63          	beq	a3,a4,800059b0 <__memmove+0xfc>
    80005978:	0035c603          	lbu	a2,3(a1)
    8000597c:	00300713          	li	a4,3
    80005980:	00c781a3          	sb	a2,3(a5)
    80005984:	02e68663          	beq	a3,a4,800059b0 <__memmove+0xfc>
    80005988:	0045c603          	lbu	a2,4(a1)
    8000598c:	00400713          	li	a4,4
    80005990:	00c78223          	sb	a2,4(a5)
    80005994:	00e68e63          	beq	a3,a4,800059b0 <__memmove+0xfc>
    80005998:	0055c603          	lbu	a2,5(a1)
    8000599c:	00500713          	li	a4,5
    800059a0:	00c782a3          	sb	a2,5(a5)
    800059a4:	00e68663          	beq	a3,a4,800059b0 <__memmove+0xfc>
    800059a8:	0065c703          	lbu	a4,6(a1)
    800059ac:	00e78323          	sb	a4,6(a5)
    800059b0:	00813403          	ld	s0,8(sp)
    800059b4:	01010113          	addi	sp,sp,16
    800059b8:	00008067          	ret
    800059bc:	02061713          	slli	a4,a2,0x20
    800059c0:	02075713          	srli	a4,a4,0x20
    800059c4:	00e587b3          	add	a5,a1,a4
    800059c8:	f0f574e3          	bgeu	a0,a5,800058d0 <__memmove+0x1c>
    800059cc:	02069613          	slli	a2,a3,0x20
    800059d0:	02065613          	srli	a2,a2,0x20
    800059d4:	fff64613          	not	a2,a2
    800059d8:	00e50733          	add	a4,a0,a4
    800059dc:	00c78633          	add	a2,a5,a2
    800059e0:	fff7c683          	lbu	a3,-1(a5)
    800059e4:	fff78793          	addi	a5,a5,-1
    800059e8:	fff70713          	addi	a4,a4,-1
    800059ec:	00d70023          	sb	a3,0(a4)
    800059f0:	fec798e3          	bne	a5,a2,800059e0 <__memmove+0x12c>
    800059f4:	00813403          	ld	s0,8(sp)
    800059f8:	01010113          	addi	sp,sp,16
    800059fc:	00008067          	ret
    80005a00:	02069713          	slli	a4,a3,0x20
    80005a04:	02075713          	srli	a4,a4,0x20
    80005a08:	00170713          	addi	a4,a4,1
    80005a0c:	00e50733          	add	a4,a0,a4
    80005a10:	00050793          	mv	a5,a0
    80005a14:	0005c683          	lbu	a3,0(a1)
    80005a18:	00178793          	addi	a5,a5,1
    80005a1c:	00158593          	addi	a1,a1,1
    80005a20:	fed78fa3          	sb	a3,-1(a5)
    80005a24:	fee798e3          	bne	a5,a4,80005a14 <__memmove+0x160>
    80005a28:	f89ff06f          	j	800059b0 <__memmove+0xfc>

0000000080005a2c <__mem_free>:
    80005a2c:	ff010113          	addi	sp,sp,-16
    80005a30:	00813423          	sd	s0,8(sp)
    80005a34:	01010413          	addi	s0,sp,16
    80005a38:	00002597          	auipc	a1,0x2
    80005a3c:	80058593          	addi	a1,a1,-2048 # 80007238 <freep>
    80005a40:	0005b783          	ld	a5,0(a1)
    80005a44:	ff050693          	addi	a3,a0,-16
    80005a48:	0007b703          	ld	a4,0(a5)
    80005a4c:	00d7fc63          	bgeu	a5,a3,80005a64 <__mem_free+0x38>
    80005a50:	00e6ee63          	bltu	a3,a4,80005a6c <__mem_free+0x40>
    80005a54:	00e7fc63          	bgeu	a5,a4,80005a6c <__mem_free+0x40>
    80005a58:	00070793          	mv	a5,a4
    80005a5c:	0007b703          	ld	a4,0(a5)
    80005a60:	fed7e8e3          	bltu	a5,a3,80005a50 <__mem_free+0x24>
    80005a64:	fee7eae3          	bltu	a5,a4,80005a58 <__mem_free+0x2c>
    80005a68:	fee6f8e3          	bgeu	a3,a4,80005a58 <__mem_free+0x2c>
    80005a6c:	ff852803          	lw	a6,-8(a0)
    80005a70:	02081613          	slli	a2,a6,0x20
    80005a74:	01c65613          	srli	a2,a2,0x1c
    80005a78:	00c68633          	add	a2,a3,a2
    80005a7c:	02c70a63          	beq	a4,a2,80005ab0 <__mem_free+0x84>
    80005a80:	fee53823          	sd	a4,-16(a0)
    80005a84:	0087a503          	lw	a0,8(a5)
    80005a88:	02051613          	slli	a2,a0,0x20
    80005a8c:	01c65613          	srli	a2,a2,0x1c
    80005a90:	00c78633          	add	a2,a5,a2
    80005a94:	04c68263          	beq	a3,a2,80005ad8 <__mem_free+0xac>
    80005a98:	00813403          	ld	s0,8(sp)
    80005a9c:	00d7b023          	sd	a3,0(a5)
    80005aa0:	00f5b023          	sd	a5,0(a1)
    80005aa4:	00000513          	li	a0,0
    80005aa8:	01010113          	addi	sp,sp,16
    80005aac:	00008067          	ret
    80005ab0:	00872603          	lw	a2,8(a4)
    80005ab4:	00073703          	ld	a4,0(a4)
    80005ab8:	0106083b          	addw	a6,a2,a6
    80005abc:	ff052c23          	sw	a6,-8(a0)
    80005ac0:	fee53823          	sd	a4,-16(a0)
    80005ac4:	0087a503          	lw	a0,8(a5)
    80005ac8:	02051613          	slli	a2,a0,0x20
    80005acc:	01c65613          	srli	a2,a2,0x1c
    80005ad0:	00c78633          	add	a2,a5,a2
    80005ad4:	fcc692e3          	bne	a3,a2,80005a98 <__mem_free+0x6c>
    80005ad8:	00813403          	ld	s0,8(sp)
    80005adc:	0105053b          	addw	a0,a0,a6
    80005ae0:	00a7a423          	sw	a0,8(a5)
    80005ae4:	00e7b023          	sd	a4,0(a5)
    80005ae8:	00f5b023          	sd	a5,0(a1)
    80005aec:	00000513          	li	a0,0
    80005af0:	01010113          	addi	sp,sp,16
    80005af4:	00008067          	ret

0000000080005af8 <__mem_alloc>:
    80005af8:	fc010113          	addi	sp,sp,-64
    80005afc:	02813823          	sd	s0,48(sp)
    80005b00:	02913423          	sd	s1,40(sp)
    80005b04:	03213023          	sd	s2,32(sp)
    80005b08:	01513423          	sd	s5,8(sp)
    80005b0c:	02113c23          	sd	ra,56(sp)
    80005b10:	01313c23          	sd	s3,24(sp)
    80005b14:	01413823          	sd	s4,16(sp)
    80005b18:	01613023          	sd	s6,0(sp)
    80005b1c:	04010413          	addi	s0,sp,64
    80005b20:	00001a97          	auipc	s5,0x1
    80005b24:	718a8a93          	addi	s5,s5,1816 # 80007238 <freep>
    80005b28:	00f50913          	addi	s2,a0,15
    80005b2c:	000ab683          	ld	a3,0(s5)
    80005b30:	00495913          	srli	s2,s2,0x4
    80005b34:	0019049b          	addiw	s1,s2,1
    80005b38:	00048913          	mv	s2,s1
    80005b3c:	0c068c63          	beqz	a3,80005c14 <__mem_alloc+0x11c>
    80005b40:	0006b503          	ld	a0,0(a3)
    80005b44:	00852703          	lw	a4,8(a0)
    80005b48:	10977063          	bgeu	a4,s1,80005c48 <__mem_alloc+0x150>
    80005b4c:	000017b7          	lui	a5,0x1
    80005b50:	0009099b          	sext.w	s3,s2
    80005b54:	0af4e863          	bltu	s1,a5,80005c04 <__mem_alloc+0x10c>
    80005b58:	02099a13          	slli	s4,s3,0x20
    80005b5c:	01ca5a13          	srli	s4,s4,0x1c
    80005b60:	fff00b13          	li	s6,-1
    80005b64:	0100006f          	j	80005b74 <__mem_alloc+0x7c>
    80005b68:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80005b6c:	00852703          	lw	a4,8(a0)
    80005b70:	04977463          	bgeu	a4,s1,80005bb8 <__mem_alloc+0xc0>
    80005b74:	00050793          	mv	a5,a0
    80005b78:	fea698e3          	bne	a3,a0,80005b68 <__mem_alloc+0x70>
    80005b7c:	000a0513          	mv	a0,s4
    80005b80:	00000097          	auipc	ra,0x0
    80005b84:	1f0080e7          	jalr	496(ra) # 80005d70 <kvmincrease>
    80005b88:	00050793          	mv	a5,a0
    80005b8c:	01050513          	addi	a0,a0,16
    80005b90:	07678e63          	beq	a5,s6,80005c0c <__mem_alloc+0x114>
    80005b94:	0137a423          	sw	s3,8(a5)
    80005b98:	00000097          	auipc	ra,0x0
    80005b9c:	e94080e7          	jalr	-364(ra) # 80005a2c <__mem_free>
    80005ba0:	000ab783          	ld	a5,0(s5)
    80005ba4:	06078463          	beqz	a5,80005c0c <__mem_alloc+0x114>
    80005ba8:	0007b503          	ld	a0,0(a5)
    80005bac:	00078693          	mv	a3,a5
    80005bb0:	00852703          	lw	a4,8(a0)
    80005bb4:	fc9760e3          	bltu	a4,s1,80005b74 <__mem_alloc+0x7c>
    80005bb8:	08e48263          	beq	s1,a4,80005c3c <__mem_alloc+0x144>
    80005bbc:	4127073b          	subw	a4,a4,s2
    80005bc0:	02071693          	slli	a3,a4,0x20
    80005bc4:	01c6d693          	srli	a3,a3,0x1c
    80005bc8:	00e52423          	sw	a4,8(a0)
    80005bcc:	00d50533          	add	a0,a0,a3
    80005bd0:	01252423          	sw	s2,8(a0)
    80005bd4:	00fab023          	sd	a5,0(s5)
    80005bd8:	01050513          	addi	a0,a0,16
    80005bdc:	03813083          	ld	ra,56(sp)
    80005be0:	03013403          	ld	s0,48(sp)
    80005be4:	02813483          	ld	s1,40(sp)
    80005be8:	02013903          	ld	s2,32(sp)
    80005bec:	01813983          	ld	s3,24(sp)
    80005bf0:	01013a03          	ld	s4,16(sp)
    80005bf4:	00813a83          	ld	s5,8(sp)
    80005bf8:	00013b03          	ld	s6,0(sp)
    80005bfc:	04010113          	addi	sp,sp,64
    80005c00:	00008067          	ret
    80005c04:	000019b7          	lui	s3,0x1
    80005c08:	f51ff06f          	j	80005b58 <__mem_alloc+0x60>
    80005c0c:	00000513          	li	a0,0
    80005c10:	fcdff06f          	j	80005bdc <__mem_alloc+0xe4>
    80005c14:	00003797          	auipc	a5,0x3
    80005c18:	8cc78793          	addi	a5,a5,-1844 # 800084e0 <base>
    80005c1c:	00078513          	mv	a0,a5
    80005c20:	00fab023          	sd	a5,0(s5)
    80005c24:	00f7b023          	sd	a5,0(a5)
    80005c28:	00000713          	li	a4,0
    80005c2c:	00003797          	auipc	a5,0x3
    80005c30:	8a07ae23          	sw	zero,-1860(a5) # 800084e8 <base+0x8>
    80005c34:	00050693          	mv	a3,a0
    80005c38:	f11ff06f          	j	80005b48 <__mem_alloc+0x50>
    80005c3c:	00053703          	ld	a4,0(a0)
    80005c40:	00e7b023          	sd	a4,0(a5)
    80005c44:	f91ff06f          	j	80005bd4 <__mem_alloc+0xdc>
    80005c48:	00068793          	mv	a5,a3
    80005c4c:	f6dff06f          	j	80005bb8 <__mem_alloc+0xc0>

0000000080005c50 <__putc>:
    80005c50:	fe010113          	addi	sp,sp,-32
    80005c54:	00813823          	sd	s0,16(sp)
    80005c58:	00113c23          	sd	ra,24(sp)
    80005c5c:	02010413          	addi	s0,sp,32
    80005c60:	00050793          	mv	a5,a0
    80005c64:	fef40593          	addi	a1,s0,-17
    80005c68:	00100613          	li	a2,1
    80005c6c:	00000513          	li	a0,0
    80005c70:	fef407a3          	sb	a5,-17(s0)
    80005c74:	fffff097          	auipc	ra,0xfffff
    80005c78:	918080e7          	jalr	-1768(ra) # 8000458c <console_write>
    80005c7c:	01813083          	ld	ra,24(sp)
    80005c80:	01013403          	ld	s0,16(sp)
    80005c84:	02010113          	addi	sp,sp,32
    80005c88:	00008067          	ret

0000000080005c8c <__getc>:
    80005c8c:	fe010113          	addi	sp,sp,-32
    80005c90:	00813823          	sd	s0,16(sp)
    80005c94:	00113c23          	sd	ra,24(sp)
    80005c98:	02010413          	addi	s0,sp,32
    80005c9c:	fe840593          	addi	a1,s0,-24
    80005ca0:	00100613          	li	a2,1
    80005ca4:	00000513          	li	a0,0
    80005ca8:	fffff097          	auipc	ra,0xfffff
    80005cac:	8c4080e7          	jalr	-1852(ra) # 8000456c <console_read>
    80005cb0:	fe844503          	lbu	a0,-24(s0)
    80005cb4:	01813083          	ld	ra,24(sp)
    80005cb8:	01013403          	ld	s0,16(sp)
    80005cbc:	02010113          	addi	sp,sp,32
    80005cc0:	00008067          	ret

0000000080005cc4 <console_handler>:
    80005cc4:	fe010113          	addi	sp,sp,-32
    80005cc8:	00813823          	sd	s0,16(sp)
    80005ccc:	00113c23          	sd	ra,24(sp)
    80005cd0:	00913423          	sd	s1,8(sp)
    80005cd4:	02010413          	addi	s0,sp,32
    80005cd8:	14202773          	csrr	a4,scause
    80005cdc:	100027f3          	csrr	a5,sstatus
    80005ce0:	0027f793          	andi	a5,a5,2
    80005ce4:	06079e63          	bnez	a5,80005d60 <console_handler+0x9c>
    80005ce8:	00074c63          	bltz	a4,80005d00 <console_handler+0x3c>
    80005cec:	01813083          	ld	ra,24(sp)
    80005cf0:	01013403          	ld	s0,16(sp)
    80005cf4:	00813483          	ld	s1,8(sp)
    80005cf8:	02010113          	addi	sp,sp,32
    80005cfc:	00008067          	ret
    80005d00:	0ff77713          	andi	a4,a4,255
    80005d04:	00900793          	li	a5,9
    80005d08:	fef712e3          	bne	a4,a5,80005cec <console_handler+0x28>
    80005d0c:	ffffe097          	auipc	ra,0xffffe
    80005d10:	4b8080e7          	jalr	1208(ra) # 800041c4 <plic_claim>
    80005d14:	00a00793          	li	a5,10
    80005d18:	00050493          	mv	s1,a0
    80005d1c:	02f50c63          	beq	a0,a5,80005d54 <console_handler+0x90>
    80005d20:	fc0506e3          	beqz	a0,80005cec <console_handler+0x28>
    80005d24:	00050593          	mv	a1,a0
    80005d28:	00001517          	auipc	a0,0x1
    80005d2c:	90050513          	addi	a0,a0,-1792 # 80006628 <_ZZ12printIntegermE6digits+0xe0>
    80005d30:	fffff097          	auipc	ra,0xfffff
    80005d34:	8d8080e7          	jalr	-1832(ra) # 80004608 <__printf>
    80005d38:	01013403          	ld	s0,16(sp)
    80005d3c:	01813083          	ld	ra,24(sp)
    80005d40:	00048513          	mv	a0,s1
    80005d44:	00813483          	ld	s1,8(sp)
    80005d48:	02010113          	addi	sp,sp,32
    80005d4c:	ffffe317          	auipc	t1,0xffffe
    80005d50:	4b030067          	jr	1200(t1) # 800041fc <plic_complete>
    80005d54:	fffff097          	auipc	ra,0xfffff
    80005d58:	1bc080e7          	jalr	444(ra) # 80004f10 <uartintr>
    80005d5c:	fddff06f          	j	80005d38 <console_handler+0x74>
    80005d60:	00001517          	auipc	a0,0x1
    80005d64:	9c850513          	addi	a0,a0,-1592 # 80006728 <digits+0x78>
    80005d68:	fffff097          	auipc	ra,0xfffff
    80005d6c:	844080e7          	jalr	-1980(ra) # 800045ac <panic>

0000000080005d70 <kvmincrease>:
    80005d70:	fe010113          	addi	sp,sp,-32
    80005d74:	01213023          	sd	s2,0(sp)
    80005d78:	00001937          	lui	s2,0x1
    80005d7c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80005d80:	00813823          	sd	s0,16(sp)
    80005d84:	00113c23          	sd	ra,24(sp)
    80005d88:	00913423          	sd	s1,8(sp)
    80005d8c:	02010413          	addi	s0,sp,32
    80005d90:	01250933          	add	s2,a0,s2
    80005d94:	00c95913          	srli	s2,s2,0xc
    80005d98:	02090863          	beqz	s2,80005dc8 <kvmincrease+0x58>
    80005d9c:	00000493          	li	s1,0
    80005da0:	00148493          	addi	s1,s1,1
    80005da4:	fffff097          	auipc	ra,0xfffff
    80005da8:	4bc080e7          	jalr	1212(ra) # 80005260 <kalloc>
    80005dac:	fe991ae3          	bne	s2,s1,80005da0 <kvmincrease+0x30>
    80005db0:	01813083          	ld	ra,24(sp)
    80005db4:	01013403          	ld	s0,16(sp)
    80005db8:	00813483          	ld	s1,8(sp)
    80005dbc:	00013903          	ld	s2,0(sp)
    80005dc0:	02010113          	addi	sp,sp,32
    80005dc4:	00008067          	ret
    80005dc8:	01813083          	ld	ra,24(sp)
    80005dcc:	01013403          	ld	s0,16(sp)
    80005dd0:	00813483          	ld	s1,8(sp)
    80005dd4:	00013903          	ld	s2,0(sp)
    80005dd8:	00000513          	li	a0,0
    80005ddc:	02010113          	addi	sp,sp,32
    80005de0:	00008067          	ret
	...
