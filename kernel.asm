
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	fe813103          	ld	sp,-24(sp) # 80006fe8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	338030ef          	jal	ra,80003354 <start>

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
    80001084:	711010ef          	jal	ra,80002f94 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001140:	00000097          	auipc	ra,0x0
    80001144:	610080e7          	jalr	1552(ra) # 80001750 <_ZN3TCB12createThreadEPFvvE>
    80001148:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    8000114c:	00006797          	auipc	a5,0x6
    80001150:	ea47b783          	ld	a5,-348(a5) # 80006ff0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001154:	00a7b023          	sd	a0,0(a5)

    threads[1] = TCB::createThread(workerBodyA);
    80001158:	00006517          	auipc	a0,0x6
    8000115c:	e8853503          	ld	a0,-376(a0) # 80006fe0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001160:	00000097          	auipc	ra,0x0
    80001164:	5f0080e7          	jalr	1520(ra) # 80001750 <_ZN3TCB12createThreadEPFvvE>
    80001168:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    8000116c:	00005517          	auipc	a0,0x5
    80001170:	eb450513          	addi	a0,a0,-332 # 80006020 <CONSOLE_STATUS+0x10>
    80001174:	00002097          	auipc	ra,0x2
    80001178:	090080e7          	jalr	144(ra) # 80003204 <_Z11printStringPKc>
    threads[2] = TCB::createThread(workerBodyB);
    8000117c:	00006517          	auipc	a0,0x6
    80001180:	e4c53503          	ld	a0,-436(a0) # 80006fc8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001184:	00000097          	auipc	ra,0x0
    80001188:	5cc080e7          	jalr	1484(ra) # 80001750 <_ZN3TCB12createThreadEPFvvE>
    8000118c:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    80001190:	00005517          	auipc	a0,0x5
    80001194:	ea850513          	addi	a0,a0,-344 # 80006038 <CONSOLE_STATUS+0x28>
    80001198:	00002097          	auipc	ra,0x2
    8000119c:	06c080e7          	jalr	108(ra) # 80003204 <_Z11printStringPKc>
    threads[3] = TCB::createThread(workerBodyC);
    800011a0:	00006517          	auipc	a0,0x6
    800011a4:	e6053503          	ld	a0,-416(a0) # 80007000 <_GLOBAL_OFFSET_TABLE_+0x58>
    800011a8:	00000097          	auipc	ra,0x0
    800011ac:	5a8080e7          	jalr	1448(ra) # 80001750 <_ZN3TCB12createThreadEPFvvE>
    800011b0:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    800011b4:	00005517          	auipc	a0,0x5
    800011b8:	e9c50513          	addi	a0,a0,-356 # 80006050 <CONSOLE_STATUS+0x40>
    800011bc:	00002097          	auipc	ra,0x2
    800011c0:	048080e7          	jalr	72(ra) # 80003204 <_Z11printStringPKc>
    threads[4] = TCB::createThread(workerBodyD);
    800011c4:	00006517          	auipc	a0,0x6
    800011c8:	e4453503          	ld	a0,-444(a0) # 80007008 <_GLOBAL_OFFSET_TABLE_+0x60>
    800011cc:	00000097          	auipc	ra,0x0
    800011d0:	584080e7          	jalr	1412(ra) # 80001750 <_ZN3TCB12createThreadEPFvvE>
    800011d4:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    800011d8:	00005517          	auipc	a0,0x5
    800011dc:	e9050513          	addi	a0,a0,-368 # 80006068 <CONSOLE_STATUS+0x58>
    800011e0:	00002097          	auipc	ra,0x2
    800011e4:	024080e7          	jalr	36(ra) # 80003204 <_Z11printStringPKc>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800011e8:	00006797          	auipc	a5,0x6
    800011ec:	dd87b783          	ld	a5,-552(a5) # 80006fc0 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80001200:	00000097          	auipc	ra,0x0
    80001204:	618080e7          	jalr	1560(ra) # 80001818 <_ZN3TCB5yieldEv>
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
    80001248:	ce0080e7          	jalr	-800(ra) # 80002f24 <_ZdlPv>
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
    8000126c:	ce4080e7          	jalr	-796(ra) # 80002f4c <_ZdaPv>
    80001270:	fd1ff06f          	j	80001240 <_Z5main2v+0x11c>
    }
    printString("Finished\n");
    80001274:	00005517          	auipc	a0,0x5
    80001278:	e0c50513          	addi	a0,a0,-500 # 80006080 <CONSOLE_STATUS+0x70>
    8000127c:	00002097          	auipc	ra,0x2
    80001280:	f88080e7          	jalr	-120(ra) # 80003204 <_Z11printStringPKc>

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
    8000130c:	510080e7          	jalr	1296(ra) # 80001818 <_ZN3TCB5yieldEv>
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
    80001370:	e98080e7          	jalr	-360(ra) # 80003204 <_Z11printStringPKc>
        printInteger(i);
    80001374:	00048513          	mv	a0,s1
    80001378:	00002097          	auipc	ra,0x2
    8000137c:	efc080e7          	jalr	-260(ra) # 80003274 <_Z12printIntegerm>
        printString("\n");
    80001380:	00005517          	auipc	a0,0x5
    80001384:	d0850513          	addi	a0,a0,-760 # 80006088 <CONSOLE_STATUS+0x78>
    80001388:	00002097          	auipc	ra,0x2
    8000138c:	e7c080e7          	jalr	-388(ra) # 80003204 <_Z11printStringPKc>
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
    80001408:	e00080e7          	jalr	-512(ra) # 80003204 <_Z11printStringPKc>
        printInteger(i);
    8000140c:	00048513          	mv	a0,s1
    80001410:	00002097          	auipc	ra,0x2
    80001414:	e64080e7          	jalr	-412(ra) # 80003274 <_Z12printIntegerm>
        printString("\n");
    80001418:	00005517          	auipc	a0,0x5
    8000141c:	c7050513          	addi	a0,a0,-912 # 80006088 <CONSOLE_STATUS+0x78>
    80001420:	00002097          	auipc	ra,0x2
    80001424:	de4080e7          	jalr	-540(ra) # 80003204 <_Z11printStringPKc>
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
    80001470:	d98080e7          	jalr	-616(ra) # 80003204 <_Z11printStringPKc>
        printInteger(i);
    80001474:	00048513          	mv	a0,s1
    80001478:	00002097          	auipc	ra,0x2
    8000147c:	dfc080e7          	jalr	-516(ra) # 80003274 <_Z12printIntegerm>
        printString("\n");
    80001480:	00005517          	auipc	a0,0x5
    80001484:	c0850513          	addi	a0,a0,-1016 # 80006088 <CONSOLE_STATUS+0x78>
    80001488:	00002097          	auipc	ra,0x2
    8000148c:	d7c080e7          	jalr	-644(ra) # 80003204 <_Z11printStringPKc>
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
    800014ac:	d5c080e7          	jalr	-676(ra) # 80003204 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800014b0:	00700313          	li	t1,7
    TCB::yield();
    800014b4:	00000097          	auipc	ra,0x0
    800014b8:	364080e7          	jalr	868(ra) # 80001818 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800014bc:	00030913          	mv	s2,t1

    printString("C: t1=");
    800014c0:	00005517          	auipc	a0,0x5
    800014c4:	bf850513          	addi	a0,a0,-1032 # 800060b8 <CONSOLE_STATUS+0xa8>
    800014c8:	00002097          	auipc	ra,0x2
    800014cc:	d3c080e7          	jalr	-708(ra) # 80003204 <_Z11printStringPKc>
    printInteger(t1);
    800014d0:	00090513          	mv	a0,s2
    800014d4:	00002097          	auipc	ra,0x2
    800014d8:	da0080e7          	jalr	-608(ra) # 80003274 <_Z12printIntegerm>
    printString("\n");
    800014dc:	00005517          	auipc	a0,0x5
    800014e0:	bac50513          	addi	a0,a0,-1108 # 80006088 <CONSOLE_STATUS+0x78>
    800014e4:	00002097          	auipc	ra,0x2
    800014e8:	d20080e7          	jalr	-736(ra) # 80003204 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800014ec:	00c00513          	li	a0,12
    800014f0:	00000097          	auipc	ra,0x0
    800014f4:	db0080e7          	jalr	-592(ra) # 800012a0 <_ZL9fibonaccim>
    800014f8:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800014fc:	00005517          	auipc	a0,0x5
    80001500:	bc450513          	addi	a0,a0,-1084 # 800060c0 <CONSOLE_STATUS+0xb0>
    80001504:	00002097          	auipc	ra,0x2
    80001508:	d00080e7          	jalr	-768(ra) # 80003204 <_Z11printStringPKc>
    printInteger(result);
    8000150c:	00090513          	mv	a0,s2
    80001510:	00002097          	auipc	ra,0x2
    80001514:	d64080e7          	jalr	-668(ra) # 80003274 <_Z12printIntegerm>
    printString("\n");
    80001518:	00005517          	auipc	a0,0x5
    8000151c:	b7050513          	addi	a0,a0,-1168 # 80006088 <CONSOLE_STATUS+0x78>
    80001520:	00002097          	auipc	ra,0x2
    80001524:	ce4080e7          	jalr	-796(ra) # 80003204 <_Z11printStringPKc>
    80001528:	0380006f          	j	80001560 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    8000152c:	00005517          	auipc	a0,0x5
    80001530:	b7450513          	addi	a0,a0,-1164 # 800060a0 <CONSOLE_STATUS+0x90>
    80001534:	00002097          	auipc	ra,0x2
    80001538:	cd0080e7          	jalr	-816(ra) # 80003204 <_Z11printStringPKc>
        printInteger(i);
    8000153c:	00048513          	mv	a0,s1
    80001540:	00002097          	auipc	ra,0x2
    80001544:	d34080e7          	jalr	-716(ra) # 80003274 <_Z12printIntegerm>
        printString("\n");
    80001548:	00005517          	auipc	a0,0x5
    8000154c:	b4050513          	addi	a0,a0,-1216 # 80006088 <CONSOLE_STATUS+0x78>
    80001550:	00002097          	auipc	ra,0x2
    80001554:	cb4080e7          	jalr	-844(ra) # 80003204 <_Z11printStringPKc>
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
    800015ac:	c5c080e7          	jalr	-932(ra) # 80003204 <_Z11printStringPKc>
        printInteger(i);
    800015b0:	00048513          	mv	a0,s1
    800015b4:	00002097          	auipc	ra,0x2
    800015b8:	cc0080e7          	jalr	-832(ra) # 80003274 <_Z12printIntegerm>
        printString("\n");
    800015bc:	00005517          	auipc	a0,0x5
    800015c0:	acc50513          	addi	a0,a0,-1332 # 80006088 <CONSOLE_STATUS+0x78>
    800015c4:	00002097          	auipc	ra,0x2
    800015c8:	c40080e7          	jalr	-960(ra) # 80003204 <_Z11printStringPKc>
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
    800015e8:	c20080e7          	jalr	-992(ra) # 80003204 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800015ec:	00500313          	li	t1,5
    TCB::yield();
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	228080e7          	jalr	552(ra) # 80001818 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    800015f8:	01000513          	li	a0,16
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	ca4080e7          	jalr	-860(ra) # 800012a0 <_ZL9fibonaccim>
    80001604:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001608:	00005517          	auipc	a0,0x5
    8000160c:	ae050513          	addi	a0,a0,-1312 # 800060e8 <CONSOLE_STATUS+0xd8>
    80001610:	00002097          	auipc	ra,0x2
    80001614:	bf4080e7          	jalr	-1036(ra) # 80003204 <_Z11printStringPKc>
    printInteger(result);
    80001618:	00090513          	mv	a0,s2
    8000161c:	00002097          	auipc	ra,0x2
    80001620:	c58080e7          	jalr	-936(ra) # 80003274 <_Z12printIntegerm>
    printString("\n");
    80001624:	00005517          	auipc	a0,0x5
    80001628:	a6450513          	addi	a0,a0,-1436 # 80006088 <CONSOLE_STATUS+0x78>
    8000162c:	00002097          	auipc	ra,0x2
    80001630:	bd8080e7          	jalr	-1064(ra) # 80003204 <_Z11printStringPKc>
    80001634:	0380006f          	j	8000166c <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    80001638:	00005517          	auipc	a0,0x5
    8000163c:	a9850513          	addi	a0,a0,-1384 # 800060d0 <CONSOLE_STATUS+0xc0>
    80001640:	00002097          	auipc	ra,0x2
    80001644:	bc4080e7          	jalr	-1084(ra) # 80003204 <_Z11printStringPKc>
        printInteger(i);
    80001648:	00048513          	mv	a0,s1
    8000164c:	00002097          	auipc	ra,0x2
    80001650:	c28080e7          	jalr	-984(ra) # 80003274 <_Z12printIntegerm>
        printString("\n");
    80001654:	00005517          	auipc	a0,0x5
    80001658:	a3450513          	addi	a0,a0,-1484 # 80006088 <CONSOLE_STATUS+0x78>
    8000165c:	00002097          	auipc	ra,0x2
    80001660:	ba8080e7          	jalr	-1112(ra) # 80003204 <_Z11printStringPKc>
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

int main() {
    8000168c:	fd010113          	addi	sp,sp,-48
    80001690:	02113423          	sd	ra,40(sp)
    80001694:	02813023          	sd	s0,32(sp)
    80001698:	00913c23          	sd	s1,24(sp)
    8000169c:	03010413          	addi	s0,sp,48

    //MemoryAllocator::instance()->printFreeMemoryHeadData();
    MemoryAllocator::instance()->printInstanceMemorySpaceParams();
    800016a0:	00000097          	auipc	ra,0x0
    800016a4:	34c080e7          	jalr	844(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    800016a8:	00000097          	auipc	ra,0x0
    800016ac:	5b8080e7          	jalr	1464(ra) # 80001c60 <_ZN15MemoryAllocator30printInstanceMemorySpaceParamsEv>

    printString("ALOCATED:::::::::::::::::::::::::::::::::::");
    800016b0:	00005517          	auipc	a0,0x5
    800016b4:	a4850513          	addi	a0,a0,-1464 # 800060f8 <CONSOLE_STATUS+0xe8>
    800016b8:	00002097          	auipc	ra,0x2
    800016bc:	b4c080e7          	jalr	-1204(ra) # 80003204 <_Z11printStringPKc>
    void* p = MemoryAllocator::instance()->kmem_alloc(120);
    800016c0:	00000097          	auipc	ra,0x0
    800016c4:	32c080e7          	jalr	812(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    800016c8:	07800593          	li	a1,120
    800016cc:	00000097          	auipc	ra,0x0
    800016d0:	404080e7          	jalr	1028(ra) # 80001ad0 <_ZN15MemoryAllocator10kmem_allocEm>
    800016d4:	00050493          	mv	s1,a0
    //MemoryAllocator::instance()->printFreeMemoryHeadData();
    MemoryAllocator::instance()->printInstanceMemorySpaceParams();
    800016d8:	00000097          	auipc	ra,0x0
    800016dc:	314080e7          	jalr	788(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    800016e0:	00000097          	auipc	ra,0x0
    800016e4:	580080e7          	jalr	1408(ra) # 80001c60 <_ZN15MemoryAllocator30printInstanceMemorySpaceParamsEv>

    printString("FREE:::::::::::::::::::::::::::::::::::::::");
    800016e8:	00005517          	auipc	a0,0x5
    800016ec:	a4050513          	addi	a0,a0,-1472 # 80006128 <CONSOLE_STATUS+0x118>
    800016f0:	00002097          	auipc	ra,0x2
    800016f4:	b14080e7          	jalr	-1260(ra) # 80003204 <_Z11printStringPKc>
    MemoryAllocator::instance()->kmem_free(p);
    800016f8:	00000097          	auipc	ra,0x0
    800016fc:	2f4080e7          	jalr	756(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80001700:	00048593          	mv	a1,s1
    80001704:	00000097          	auipc	ra,0x0
    80001708:	474080e7          	jalr	1140(ra) # 80001b78 <_ZN15MemoryAllocator9kmem_freeEPv>
    //MemoryAllocator::instance()->printFreeMemoryHeadData();
    MemoryAllocator::instance()->printInstanceMemorySpaceParams();
    8000170c:	00000097          	auipc	ra,0x0
    80001710:	2e0080e7          	jalr	736(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80001714:	00000097          	auipc	ra,0x0
    80001718:	54c080e7          	jalr	1356(ra) # 80001c60 <_ZN15MemoryAllocator30printInstanceMemorySpaceParamsEv>

    printString("\nMemory tests:\n");
    8000171c:	00005517          	auipc	a0,0x5
    80001720:	a3c50513          	addi	a0,a0,-1476 # 80006158 <CONSOLE_STATUS+0x148>
    80001724:	00002097          	auipc	ra,0x2
    80001728:	ae0080e7          	jalr	-1312(ra) # 80003204 <_Z11printStringPKc>
    MemoryAllocatorTest t1;
    t1.runTests();
    8000172c:	fd840513          	addi	a0,s0,-40
    80001730:	00001097          	auipc	ra,0x1
    80001734:	584080e7          	jalr	1412(ra) # 80002cb4 <_ZN19MemoryAllocatorTest8runTestsEv>


    return 0;
    80001738:	00000513          	li	a0,0
    8000173c:	02813083          	ld	ra,40(sp)
    80001740:	02013403          	ld	s0,32(sp)
    80001744:	01813483          	ld	s1,24(sp)
    80001748:	03010113          	addi	sp,sp,48
    8000174c:	00008067          	ret

0000000080001750 <_ZN3TCB12createThreadEPFvvE>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    80001750:	fe010113          	addi	sp,sp,-32
    80001754:	00113c23          	sd	ra,24(sp)
    80001758:	00813823          	sd	s0,16(sp)
    8000175c:	00913423          	sd	s1,8(sp)
    80001760:	01213023          	sd	s2,0(sp)
    80001764:	02010413          	addi	s0,sp,32
    80001768:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    8000176c:	03000513          	li	a0,48
    80001770:	00001097          	auipc	ra,0x1
    80001774:	764080e7          	jalr	1892(ra) # 80002ed4 <_Znwm>
    80001778:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    8000177c:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001780:	00090a63          	beqz	s2,80001794 <_ZN3TCB12createThreadEPFvvE+0x44>
    80001784:	00002537          	lui	a0,0x2
    80001788:	00001097          	auipc	ra,0x1
    8000178c:	774080e7          	jalr	1908(ra) # 80002efc <_Znam>
    80001790:	0080006f          	j	80001798 <_ZN3TCB12createThreadEPFvvE+0x48>
    80001794:	00000513          	li	a0,0
            finished(false)
    80001798:	00a4b423          	sd	a0,8(s1)
    8000179c:	00000797          	auipc	a5,0x0
    800017a0:	09878793          	addi	a5,a5,152 # 80001834 <_ZN3TCB13threadWrapperEv>
    800017a4:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800017a8:	02050863          	beqz	a0,800017d8 <_ZN3TCB12createThreadEPFvvE+0x88>
    800017ac:	000027b7          	lui	a5,0x2
    800017b0:	00f507b3          	add	a5,a0,a5
            finished(false)
    800017b4:	00f4bc23          	sd	a5,24(s1)
    800017b8:	00200793          	li	a5,2
    800017bc:	02f4b023          	sd	a5,32(s1)
    800017c0:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    800017c4:	02090c63          	beqz	s2,800017fc <_ZN3TCB12createThreadEPFvvE+0xac>
    800017c8:	00048513          	mv	a0,s1
    800017cc:	00002097          	auipc	ra,0x2
    800017d0:	998080e7          	jalr	-1640(ra) # 80003164 <_ZN9Scheduler3putEP3TCB>
    800017d4:	0280006f          	j	800017fc <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800017d8:	00000793          	li	a5,0
    800017dc:	fd9ff06f          	j	800017b4 <_ZN3TCB12createThreadEPFvvE+0x64>
    800017e0:	00050913          	mv	s2,a0
    800017e4:	00048513          	mv	a0,s1
    800017e8:	00001097          	auipc	ra,0x1
    800017ec:	73c080e7          	jalr	1852(ra) # 80002f24 <_ZdlPv>
    800017f0:	00090513          	mv	a0,s2
    800017f4:	00007097          	auipc	ra,0x7
    800017f8:	974080e7          	jalr	-1676(ra) # 80008168 <_Unwind_Resume>
}
    800017fc:	00048513          	mv	a0,s1
    80001800:	01813083          	ld	ra,24(sp)
    80001804:	01013403          	ld	s0,16(sp)
    80001808:	00813483          	ld	s1,8(sp)
    8000180c:	00013903          	ld	s2,0(sp)
    80001810:	02010113          	addi	sp,sp,32
    80001814:	00008067          	ret

0000000080001818 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    80001818:	ff010113          	addi	sp,sp,-16
    8000181c:	00813423          	sd	s0,8(sp)
    80001820:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80001824:	00000073          	ecall
}
    80001828:	00813403          	ld	s0,8(sp)
    8000182c:	01010113          	addi	sp,sp,16
    80001830:	00008067          	ret

0000000080001834 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001834:	fe010113          	addi	sp,sp,-32
    80001838:	00113c23          	sd	ra,24(sp)
    8000183c:	00813823          	sd	s0,16(sp)
    80001840:	00913423          	sd	s1,8(sp)
    80001844:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001848:	00001097          	auipc	ra,0x1
    8000184c:	72c080e7          	jalr	1836(ra) # 80002f74 <_ZN5Riscv10popSppSpieEv>
    running->body();
    80001850:	00006497          	auipc	s1,0x6
    80001854:	81048493          	addi	s1,s1,-2032 # 80007060 <_ZN3TCB7runningE>
    80001858:	0004b783          	ld	a5,0(s1)
    8000185c:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    80001860:	000780e7          	jalr	a5
    running->setFinished(true);
    80001864:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80001868:	00100713          	li	a4,1
    8000186c:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    80001870:	00000097          	auipc	ra,0x0
    80001874:	fa8080e7          	jalr	-88(ra) # 80001818 <_ZN3TCB5yieldEv>
}
    80001878:	01813083          	ld	ra,24(sp)
    8000187c:	01013403          	ld	s0,16(sp)
    80001880:	00813483          	ld	s1,8(sp)
    80001884:	02010113          	addi	sp,sp,32
    80001888:	00008067          	ret

000000008000188c <_ZN3TCB8dispatchEv>:
{
    8000188c:	fe010113          	addi	sp,sp,-32
    80001890:	00113c23          	sd	ra,24(sp)
    80001894:	00813823          	sd	s0,16(sp)
    80001898:	00913423          	sd	s1,8(sp)
    8000189c:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800018a0:	00005497          	auipc	s1,0x5
    800018a4:	7c04b483          	ld	s1,1984(s1) # 80007060 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    800018a8:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    800018ac:	02078c63          	beqz	a5,800018e4 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    800018b0:	00002097          	auipc	ra,0x2
    800018b4:	84c080e7          	jalr	-1972(ra) # 800030fc <_ZN9Scheduler3getEv>
    800018b8:	00005797          	auipc	a5,0x5
    800018bc:	7aa7b423          	sd	a0,1960(a5) # 80007060 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    800018c0:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    800018c4:	01048513          	addi	a0,s1,16
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	848080e7          	jalr	-1976(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    800018d0:	01813083          	ld	ra,24(sp)
    800018d4:	01013403          	ld	s0,16(sp)
    800018d8:	00813483          	ld	s1,8(sp)
    800018dc:	02010113          	addi	sp,sp,32
    800018e0:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    800018e4:	00048513          	mv	a0,s1
    800018e8:	00002097          	auipc	ra,0x2
    800018ec:	87c080e7          	jalr	-1924(ra) # 80003164 <_ZN9Scheduler3putEP3TCB>
    800018f0:	fc1ff06f          	j	800018b0 <_ZN3TCB8dispatchEv+0x24>

00000000800018f4 <_ZN15MemoryAllocator17getMinBlockNumberEm>:
    newMemoryAllocator->freeMemoryHead->next = nullptr;

    return newMemoryAllocator;
}

size_t MemoryAllocator::getMinBlockNumber(size_t size) {
    800018f4:	ff010113          	addi	sp,sp,-16
    800018f8:	00813423          	sd	s0,8(sp)
    800018fc:	01010413          	addi	s0,sp,16
    size_t blockNo = size / MEM_BLOCK_SIZE;
    80001900:	00655713          	srli	a4,a0,0x6
    blockNo = blockNo + (size - blockNo * MEM_BLOCK_SIZE != 0);
    80001904:	fc057793          	andi	a5,a0,-64
    80001908:	40a78533          	sub	a0,a5,a0
    8000190c:	00a03533          	snez	a0,a0
    return blockNo;
}
    80001910:	00e50533          	add	a0,a0,a4
    80001914:	00813403          	ld	s0,8(sp)
    80001918:	01010113          	addi	sp,sp,16
    8000191c:	00008067          	ret

0000000080001920 <_ZN15MemoryAllocator14createInstanceEv>:
MemoryAllocator* MemoryAllocator::createInstance() {
    80001920:	fd010113          	addi	sp,sp,-48
    80001924:	02113423          	sd	ra,40(sp)
    80001928:	02813023          	sd	s0,32(sp)
    8000192c:	00913c23          	sd	s1,24(sp)
    80001930:	01213823          	sd	s2,16(sp)
    80001934:	01313423          	sd	s3,8(sp)
    80001938:	01413023          	sd	s4,0(sp)
    8000193c:	03010413          	addi	s0,sp,48
    managedMemorySpaceStart = (uint8*) HEAP_START_ADDR;
    80001940:	00005797          	auipc	a5,0x5
    80001944:	6707b783          	ld	a5,1648(a5) # 80006fb0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001948:	0007b903          	ld	s2,0(a5)
    managedMemorySpaceEnd = (uint8*) HEAP_END_ADDR;
    8000194c:	00005797          	auipc	a5,0x5
    80001950:	6ac7b783          	ld	a5,1708(a5) # 80006ff8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001954:	0007b483          	ld	s1,0(a5)
    80001958:	00005a17          	auipc	s4,0x5
    8000195c:	718a0a13          	addi	s4,s4,1816 # 80007070 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    80001960:	009a3023          	sd	s1,0(s4)
    minMemoryFragmentSize = getMinBlockNumber(sizeof(SegmentDescriptor)) + getMinBlockNumber(sizeof(uint64));
    80001964:	01000513          	li	a0,16
    80001968:	00000097          	auipc	ra,0x0
    8000196c:	f8c080e7          	jalr	-116(ra) # 800018f4 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001970:	00050993          	mv	s3,a0
    80001974:	00800513          	li	a0,8
    80001978:	00000097          	auipc	ra,0x0
    8000197c:	f7c080e7          	jalr	-132(ra) # 800018f4 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001980:	00a989b3          	add	s3,s3,a0
    80001984:	013a3423          	sd	s3,8(s4)
    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
    80001988:	02000513          	li	a0,32
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	f68080e7          	jalr	-152(ra) # 800018f4 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    managedMemorySpaceStart += noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE;
    80001994:	00651513          	slli	a0,a0,0x6
    80001998:	00a90533          	add	a0,s2,a0
    8000199c:	00aa3823          	sd	a0,16(s4)
    newMemoryAllocator->totalTaken = 0;
    800019a0:	00093423          	sd	zero,8(s2)
    newMemoryAllocator->totalFree = (size_t) (managedMemorySpaceEnd - managedMemorySpaceStart);
    800019a4:	40a484b3          	sub	s1,s1,a0
    800019a8:	00993023          	sd	s1,0(s2)
    newMemoryAllocator->freeBlockNo = newMemoryAllocator->totalFree / MEM_BLOCK_SIZE;
    800019ac:	0064d493          	srli	s1,s1,0x6
    800019b0:	00993823          	sd	s1,16(s2)
    newMemoryAllocator->freeMemoryHead = (SegmentDescriptor*) managedMemorySpaceStart;
    800019b4:	010a3783          	ld	a5,16(s4)
    800019b8:	00f93c23          	sd	a5,24(s2)
    newMemoryAllocator->freeMemoryHead->noBlocks = newMemoryAllocator->freeBlockNo;
    800019bc:	0097b023          	sd	s1,0(a5)
    newMemoryAllocator->freeMemoryHead->next = nullptr;
    800019c0:	01893783          	ld	a5,24(s2)
    800019c4:	0007b423          	sd	zero,8(a5)
}
    800019c8:	00090513          	mv	a0,s2
    800019cc:	02813083          	ld	ra,40(sp)
    800019d0:	02013403          	ld	s0,32(sp)
    800019d4:	01813483          	ld	s1,24(sp)
    800019d8:	01013903          	ld	s2,16(sp)
    800019dc:	00813983          	ld	s3,8(sp)
    800019e0:	00013a03          	ld	s4,0(sp)
    800019e4:	03010113          	addi	sp,sp,48
    800019e8:	00008067          	ret

00000000800019ec <_ZN15MemoryAllocator8instanceEv>:
    if (onlyInstance == nullptr)
    800019ec:	00005797          	auipc	a5,0x5
    800019f0:	69c7b783          	ld	a5,1692(a5) # 80007088 <_ZN15MemoryAllocator12onlyInstanceE>
    800019f4:	00078863          	beqz	a5,80001a04 <_ZN15MemoryAllocator8instanceEv+0x18>
}
    800019f8:	00005517          	auipc	a0,0x5
    800019fc:	69053503          	ld	a0,1680(a0) # 80007088 <_ZN15MemoryAllocator12onlyInstanceE>
    80001a00:	00008067          	ret
MemoryAllocator* MemoryAllocator::instance() {
    80001a04:	ff010113          	addi	sp,sp,-16
    80001a08:	00113423          	sd	ra,8(sp)
    80001a0c:	00813023          	sd	s0,0(sp)
    80001a10:	01010413          	addi	s0,sp,16
        onlyInstance = createInstance();
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	f0c080e7          	jalr	-244(ra) # 80001920 <_ZN15MemoryAllocator14createInstanceEv>
    80001a1c:	00005797          	auipc	a5,0x5
    80001a20:	66a7b623          	sd	a0,1644(a5) # 80007088 <_ZN15MemoryAllocator12onlyInstanceE>
}
    80001a24:	00005517          	auipc	a0,0x5
    80001a28:	66453503          	ld	a0,1636(a0) # 80007088 <_ZN15MemoryAllocator12onlyInstanceE>
    80001a2c:	00813083          	ld	ra,8(sp)
    80001a30:	00013403          	ld	s0,0(sp)
    80001a34:	01010113          	addi	sp,sp,16
    80001a38:	00008067          	ret

0000000080001a3c <_ZN15MemoryAllocator8firstFitEm>:


MemoryAllocator::SegmentDescriptor* MemoryAllocator::firstFit(size_t blockNo) {
    80001a3c:	ff010113          	addi	sp,sp,-16
    80001a40:	00813423          	sd	s0,8(sp)
    80001a44:	01010413          	addi	s0,sp,16
    80001a48:	00050693          	mv	a3,a0
    SegmentDescriptor* largeEnoughSegment = freeMemoryHead;
    80001a4c:	01853503          	ld	a0,24(a0)
    SegmentDescriptor* prevSegment = nullptr;
    80001a50:	00000713          	li	a4,0
    while (largeEnoughSegment && largeEnoughSegment->noBlocks < blockNo) {
    80001a54:	00050c63          	beqz	a0,80001a6c <_ZN15MemoryAllocator8firstFitEm+0x30>
    80001a58:	00053783          	ld	a5,0(a0)
    80001a5c:	00b7f863          	bgeu	a5,a1,80001a6c <_ZN15MemoryAllocator8firstFitEm+0x30>
        prevSegment = largeEnoughSegment;
    80001a60:	00050713          	mv	a4,a0
        largeEnoughSegment = largeEnoughSegment->next;
    80001a64:	00853503          	ld	a0,8(a0)
    while (largeEnoughSegment && largeEnoughSegment->noBlocks < blockNo) {
    80001a68:	fedff06f          	j	80001a54 <_ZN15MemoryAllocator8firstFitEm+0x18>
    }
    if (!largeEnoughSegment) return nullptr;
    80001a6c:	04050663          	beqz	a0,80001ab8 <_ZN15MemoryAllocator8firstFitEm+0x7c>

    if (largeEnoughSegment->noBlocks - blockNo >= minMemoryFragmentSize) {
    80001a70:	00053783          	ld	a5,0(a0)
    80001a74:	40b787b3          	sub	a5,a5,a1
    80001a78:	00005617          	auipc	a2,0x5
    80001a7c:	60063603          	ld	a2,1536(a2) # 80007078 <_ZN15MemoryAllocator21minMemoryFragmentSizeE>
    80001a80:	02c7e063          	bltu	a5,a2,80001aa0 <_ZN15MemoryAllocator8firstFitEm+0x64>
        SegmentDescriptor* newSegment = (SegmentDescriptor*) ((uint8*) largeEnoughSegment + blockNo * MEM_BLOCK_SIZE);
    80001a84:	00659613          	slli	a2,a1,0x6
    80001a88:	00c50633          	add	a2,a0,a2
        newSegment->noBlocks = largeEnoughSegment->noBlocks - blockNo;
    80001a8c:	00f63023          	sd	a5,0(a2)
        newSegment->next = largeEnoughSegment->next;
    80001a90:	00853783          	ld	a5,8(a0)
    80001a94:	00f63423          	sd	a5,8(a2)
        largeEnoughSegment->next = newSegment;
    80001a98:	00c53423          	sd	a2,8(a0)
        largeEnoughSegment->noBlocks = blockNo;
    80001a9c:	00b53023          	sd	a1,0(a0)
    }

    if (prevSegment) prevSegment->next = largeEnoughSegment->next;
    80001aa0:	00070663          	beqz	a4,80001aac <_ZN15MemoryAllocator8firstFitEm+0x70>
    80001aa4:	00853783          	ld	a5,8(a0)
    80001aa8:	00f73423          	sd	a5,8(a4)
    if (freeMemoryHead == largeEnoughSegment)
    80001aac:	0186b783          	ld	a5,24(a3)
    80001ab0:	00a78a63          	beq	a5,a0,80001ac4 <_ZN15MemoryAllocator8firstFitEm+0x88>
        freeMemoryHead = largeEnoughSegment->next;

    largeEnoughSegment->next = nullptr;
    80001ab4:	00053423          	sd	zero,8(a0)
    return largeEnoughSegment;
}
    80001ab8:	00813403          	ld	s0,8(sp)
    80001abc:	01010113          	addi	sp,sp,16
    80001ac0:	00008067          	ret
        freeMemoryHead = largeEnoughSegment->next;
    80001ac4:	00853783          	ld	a5,8(a0)
    80001ac8:	00f6bc23          	sd	a5,24(a3)
    80001acc:	fe9ff06f          	j	80001ab4 <_ZN15MemoryAllocator8firstFitEm+0x78>

0000000080001ad0 <_ZN15MemoryAllocator10kmem_allocEm>:

void* MemoryAllocator::kmem_alloc(size_t size) {
    80001ad0:	fe010113          	addi	sp,sp,-32
    80001ad4:	00113c23          	sd	ra,24(sp)
    80001ad8:	00813823          	sd	s0,16(sp)
    80001adc:	00913423          	sd	s1,8(sp)
    80001ae0:	01213023          	sd	s2,0(sp)
    80001ae4:	02010413          	addi	s0,sp,32
    80001ae8:	00050493          	mv	s1,a0
    80001aec:	00058913          	mv	s2,a1
    size_t minBlockNo = getMinBlockNumber(size);
    80001af0:	00058513          	mv	a0,a1
    80001af4:	00000097          	auipc	ra,0x0
    80001af8:	e00080e7          	jalr	-512(ra) # 800018f4 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001afc:	00050593          	mv	a1,a0
    if (minBlockNo * MEM_BLOCK_SIZE - size < sizeof(SegmentDescriptor)) ++minBlockNo;
    80001b00:	00651793          	slli	a5,a0,0x6
    80001b04:	41278933          	sub	s2,a5,s2
    80001b08:	00f00793          	li	a5,15
    80001b0c:	0127e463          	bltu	a5,s2,80001b14 <_ZN15MemoryAllocator10kmem_allocEm+0x44>
    80001b10:	00150593          	addi	a1,a0,1
    SegmentDescriptor* newTaken = firstFit(minBlockNo);
    80001b14:	00048513          	mv	a0,s1
    80001b18:	00000097          	auipc	ra,0x0
    80001b1c:	f24080e7          	jalr	-220(ra) # 80001a3c <_ZN15MemoryAllocator8firstFitEm>
    if (!newTaken) return nullptr;
    80001b20:	04050063          	beqz	a0,80001b60 <_ZN15MemoryAllocator10kmem_allocEm+0x90>

    freeBlockNo -= newTaken->noBlocks;
    80001b24:	00053703          	ld	a4,0(a0)
    80001b28:	0104b783          	ld	a5,16(s1)
    80001b2c:	40e787b3          	sub	a5,a5,a4
    80001b30:	00f4b823          	sd	a5,16(s1)
    totalFree -= newTaken->noBlocks * MEM_BLOCK_SIZE;
    80001b34:	00053783          	ld	a5,0(a0)
    80001b38:	00679713          	slli	a4,a5,0x6
    80001b3c:	0004b783          	ld	a5,0(s1)
    80001b40:	40e787b3          	sub	a5,a5,a4
    80001b44:	00f4b023          	sd	a5,0(s1)
    totalTaken += newTaken->noBlocks * MEM_BLOCK_SIZE;
    80001b48:	00053783          	ld	a5,0(a0)
    80001b4c:	00679713          	slli	a4,a5,0x6
    80001b50:	0084b783          	ld	a5,8(s1)
    80001b54:	00e787b3          	add	a5,a5,a4
    80001b58:	00f4b423          	sd	a5,8(s1)

    return (uint8*) newTaken + sizeof(SegmentDescriptor);
    80001b5c:	01050513          	addi	a0,a0,16
}
    80001b60:	01813083          	ld	ra,24(sp)
    80001b64:	01013403          	ld	s0,16(sp)
    80001b68:	00813483          	ld	s1,8(sp)
    80001b6c:	00013903          	ld	s2,0(sp)
    80001b70:	02010113          	addi	sp,sp,32
    80001b74:	00008067          	ret

0000000080001b78 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* newFree) {
    80001b78:	ff010113          	addi	sp,sp,-16
    80001b7c:	00813423          	sd	s0,8(sp)
    80001b80:	01010413          	addi	s0,sp,16
    if (newFree == nullptr) return 0;
    80001b84:	08058863          	beqz	a1,80001c14 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>
    SegmentDescriptor* newFreeSegment = (SegmentDescriptor*) ((uint8*) newFree - sizeof(SegmentDescriptor));
    80001b88:	ff058693          	addi	a3,a1,-16
    freeBlockNo += newFreeSegment->noBlocks;
    80001b8c:	ff05b703          	ld	a4,-16(a1)
    80001b90:	01053783          	ld	a5,16(a0)
    80001b94:	00e787b3          	add	a5,a5,a4
    80001b98:	00f53823          	sd	a5,16(a0)
    totalFree += newFreeSegment->noBlocks * MEM_BLOCK_SIZE;
    80001b9c:	ff05b783          	ld	a5,-16(a1)
    80001ba0:	00679713          	slli	a4,a5,0x6
    80001ba4:	00053783          	ld	a5,0(a0)
    80001ba8:	00e787b3          	add	a5,a5,a4
    80001bac:	00f53023          	sd	a5,0(a0)
    totalTaken -= newFreeSegment->noBlocks * MEM_BLOCK_SIZE;
    80001bb0:	ff05b783          	ld	a5,-16(a1)
    80001bb4:	00679713          	slli	a4,a5,0x6
    80001bb8:	00853783          	ld	a5,8(a0)
    80001bbc:	40e787b3          	sub	a5,a5,a4
    80001bc0:	00f53423          	sd	a5,8(a0)

    SegmentDescriptor* after = freeMemoryHead, *prev = nullptr;
    80001bc4:	01853783          	ld	a5,24(a0)
    80001bc8:	00000713          	li	a4,0
    while (after && after < newFreeSegment) {
    80001bcc:	00078a63          	beqz	a5,80001be0 <_ZN15MemoryAllocator9kmem_freeEPv+0x68>
    80001bd0:	00d7f863          	bgeu	a5,a3,80001be0 <_ZN15MemoryAllocator9kmem_freeEPv+0x68>
        prev = after; after = after->next; }
    80001bd4:	00078713          	mv	a4,a5
    80001bd8:	0087b783          	ld	a5,8(a5)
    while (after && after < newFreeSegment) {
    80001bdc:	ff1ff06f          	j	80001bcc <_ZN15MemoryAllocator9kmem_freeEPv+0x54>

    newFreeSegment->next = after;
    80001be0:	fef5bc23          	sd	a5,-8(a1)
    if (prev) prev->next = newFreeSegment;
    80001be4:	04070063          	beqz	a4,80001c24 <_ZN15MemoryAllocator9kmem_freeEPv+0xac>
    80001be8:	00d73423          	sd	a3,8(a4)
    else freeMemoryHead = newFreeSegment;

    if (prev && (uint8*) prev + prev->noBlocks * MEM_BLOCK_SIZE == (uint8*) newFreeSegment) {
    80001bec:	00070a63          	beqz	a4,80001c00 <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
    80001bf0:	00073503          	ld	a0,0(a4)
    80001bf4:	00651613          	slli	a2,a0,0x6
    80001bf8:	00c70633          	add	a2,a4,a2
    80001bfc:	02d60863          	beq	a2,a3,80001c2c <_ZN15MemoryAllocator9kmem_freeEPv+0xb4>
        prev->next = newFreeSegment->next;
        prev->noBlocks += newFreeSegment->noBlocks;
        newFreeSegment = prev;
    }

    if (after && (uint8*) newFreeSegment + newFreeSegment->noBlocks * MEM_BLOCK_SIZE == (uint8*) after) {
    80001c00:	00078a63          	beqz	a5,80001c14 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>
    80001c04:	0006b603          	ld	a2,0(a3)
    80001c08:	00661713          	slli	a4,a2,0x6
    80001c0c:	00e68733          	add	a4,a3,a4
    80001c10:	02f70c63          	beq	a4,a5,80001c48 <_ZN15MemoryAllocator9kmem_freeEPv+0xd0>
        newFreeSegment->next = after->next; newFreeSegment->noBlocks += after->noBlocks; }

    return 0;
}
    80001c14:	00000513          	li	a0,0
    80001c18:	00813403          	ld	s0,8(sp)
    80001c1c:	01010113          	addi	sp,sp,16
    80001c20:	00008067          	ret
    else freeMemoryHead = newFreeSegment;
    80001c24:	00d53c23          	sd	a3,24(a0)
    80001c28:	fc5ff06f          	j	80001bec <_ZN15MemoryAllocator9kmem_freeEPv+0x74>
        prev->next = newFreeSegment->next;
    80001c2c:	ff85b683          	ld	a3,-8(a1)
    80001c30:	00d73423          	sd	a3,8(a4)
        prev->noBlocks += newFreeSegment->noBlocks;
    80001c34:	ff05b683          	ld	a3,-16(a1)
    80001c38:	00d50533          	add	a0,a0,a3
    80001c3c:	00a73023          	sd	a0,0(a4)
        newFreeSegment = prev;
    80001c40:	00070693          	mv	a3,a4
    80001c44:	fbdff06f          	j	80001c00 <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
        newFreeSegment->next = after->next; newFreeSegment->noBlocks += after->noBlocks; }
    80001c48:	0087b703          	ld	a4,8(a5)
    80001c4c:	00e6b423          	sd	a4,8(a3)
    80001c50:	0007b783          	ld	a5,0(a5)
    80001c54:	00f60633          	add	a2,a2,a5
    80001c58:	00c6b023          	sd	a2,0(a3)
    80001c5c:	fb9ff06f          	j	80001c14 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>

0000000080001c60 <_ZN15MemoryAllocator30printInstanceMemorySpaceParamsEv>:

void MemoryAllocator::printInstanceMemorySpaceParams() {
    80001c60:	fe010113          	addi	sp,sp,-32
    80001c64:	00113c23          	sd	ra,24(sp)
    80001c68:	00813823          	sd	s0,16(sp)
    80001c6c:	00913423          	sd	s1,8(sp)
    80001c70:	01213023          	sd	s2,0(sp)
    80001c74:	02010413          	addi	s0,sp,32
    80001c78:	00050493          	mv	s1,a0
    printString("##################################\n\n");
    80001c7c:	00004517          	auipc	a0,0x4
    80001c80:	4ec50513          	addi	a0,a0,1260 # 80006168 <CONSOLE_STATUS+0x158>
    80001c84:	00001097          	auipc	ra,0x1
    80001c88:	580080e7          	jalr	1408(ra) # 80003204 <_Z11printStringPKc>
    printString("MemoryAllocator address: "); printInteger((uint64)this); printString("\n");
    80001c8c:	00004517          	auipc	a0,0x4
    80001c90:	50450513          	addi	a0,a0,1284 # 80006190 <CONSOLE_STATUS+0x180>
    80001c94:	00001097          	auipc	ra,0x1
    80001c98:	570080e7          	jalr	1392(ra) # 80003204 <_Z11printStringPKc>
    80001c9c:	00048513          	mv	a0,s1
    80001ca0:	00001097          	auipc	ra,0x1
    80001ca4:	5d4080e7          	jalr	1492(ra) # 80003274 <_Z12printIntegerm>
    80001ca8:	00004517          	auipc	a0,0x4
    80001cac:	3e050513          	addi	a0,a0,992 # 80006088 <CONSOLE_STATUS+0x78>
    80001cb0:	00001097          	auipc	ra,0x1
    80001cb4:	554080e7          	jalr	1364(ra) # 80003204 <_Z11printStringPKc>

    // size_t noBlocksForStoringMemoryAllocator = sizeof(MemoryAllocator) / MEM_BLOCK_SIZE + 1;
    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
    80001cb8:	02000513          	li	a0,32
    80001cbc:	00000097          	auipc	ra,0x0
    80001cc0:	c38080e7          	jalr	-968(ra) # 800018f4 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001cc4:	00050913          	mv	s2,a0
    printString("noBlocksForStoringMemoryAllocator: ");
    80001cc8:	00004517          	auipc	a0,0x4
    80001ccc:	4e850513          	addi	a0,a0,1256 # 800061b0 <CONSOLE_STATUS+0x1a0>
    80001cd0:	00001097          	auipc	ra,0x1
    80001cd4:	534080e7          	jalr	1332(ra) # 80003204 <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator); printString("\n");
    80001cd8:	00090513          	mv	a0,s2
    80001cdc:	00001097          	auipc	ra,0x1
    80001ce0:	598080e7          	jalr	1432(ra) # 80003274 <_Z12printIntegerm>
    80001ce4:	00004517          	auipc	a0,0x4
    80001ce8:	3a450513          	addi	a0,a0,932 # 80006088 <CONSOLE_STATUS+0x78>
    80001cec:	00001097          	auipc	ra,0x1
    80001cf0:	518080e7          	jalr	1304(ra) # 80003204 <_Z11printStringPKc>
    printString("noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE: ");
    80001cf4:	00004517          	auipc	a0,0x4
    80001cf8:	4e450513          	addi	a0,a0,1252 # 800061d8 <CONSOLE_STATUS+0x1c8>
    80001cfc:	00001097          	auipc	ra,0x1
    80001d00:	508080e7          	jalr	1288(ra) # 80003204 <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE); printString("\n\n");
    80001d04:	00691513          	slli	a0,s2,0x6
    80001d08:	00001097          	auipc	ra,0x1
    80001d0c:	56c080e7          	jalr	1388(ra) # 80003274 <_Z12printIntegerm>
    80001d10:	00004517          	auipc	a0,0x4
    80001d14:	50050513          	addi	a0,a0,1280 # 80006210 <CONSOLE_STATUS+0x200>
    80001d18:	00001097          	auipc	ra,0x1
    80001d1c:	4ec080e7          	jalr	1260(ra) # 80003204 <_Z11printStringPKc>

    printString("Managed memory space start: ");
    80001d20:	00004517          	auipc	a0,0x4
    80001d24:	4f850513          	addi	a0,a0,1272 # 80006218 <CONSOLE_STATUS+0x208>
    80001d28:	00001097          	auipc	ra,0x1
    80001d2c:	4dc080e7          	jalr	1244(ra) # 80003204 <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceStart); printString("\n");
    80001d30:	00005917          	auipc	s2,0x5
    80001d34:	34090913          	addi	s2,s2,832 # 80007070 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    80001d38:	01093503          	ld	a0,16(s2)
    80001d3c:	00001097          	auipc	ra,0x1
    80001d40:	538080e7          	jalr	1336(ra) # 80003274 <_Z12printIntegerm>
    80001d44:	00004517          	auipc	a0,0x4
    80001d48:	34450513          	addi	a0,a0,836 # 80006088 <CONSOLE_STATUS+0x78>
    80001d4c:	00001097          	auipc	ra,0x1
    80001d50:	4b8080e7          	jalr	1208(ra) # 80003204 <_Z11printStringPKc>
    printString("Managed memory space end: ");
    80001d54:	00004517          	auipc	a0,0x4
    80001d58:	4e450513          	addi	a0,a0,1252 # 80006238 <CONSOLE_STATUS+0x228>
    80001d5c:	00001097          	auipc	ra,0x1
    80001d60:	4a8080e7          	jalr	1192(ra) # 80003204 <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceEnd); printString("\n\n");
    80001d64:	00093503          	ld	a0,0(s2)
    80001d68:	00001097          	auipc	ra,0x1
    80001d6c:	50c080e7          	jalr	1292(ra) # 80003274 <_Z12printIntegerm>
    80001d70:	00004517          	auipc	a0,0x4
    80001d74:	4a050513          	addi	a0,a0,1184 # 80006210 <CONSOLE_STATUS+0x200>
    80001d78:	00001097          	auipc	ra,0x1
    80001d7c:	48c080e7          	jalr	1164(ra) # 80003204 <_Z11printStringPKc>

    printString("Total Free: "); printInteger(getTotalFree()); printString("\n");
    80001d80:	00004517          	auipc	a0,0x4
    80001d84:	4d850513          	addi	a0,a0,1240 # 80006258 <CONSOLE_STATUS+0x248>
    80001d88:	00001097          	auipc	ra,0x1
    80001d8c:	47c080e7          	jalr	1148(ra) # 80003204 <_Z11printStringPKc>
    80001d90:	0004b503          	ld	a0,0(s1)
    80001d94:	00001097          	auipc	ra,0x1
    80001d98:	4e0080e7          	jalr	1248(ra) # 80003274 <_Z12printIntegerm>
    80001d9c:	00004517          	auipc	a0,0x4
    80001da0:	2ec50513          	addi	a0,a0,748 # 80006088 <CONSOLE_STATUS+0x78>
    80001da4:	00001097          	auipc	ra,0x1
    80001da8:	460080e7          	jalr	1120(ra) # 80003204 <_Z11printStringPKc>
    printString("Total Taken: "); printInteger(getTotalTaken()); printString("\n");
    80001dac:	00004517          	auipc	a0,0x4
    80001db0:	4bc50513          	addi	a0,a0,1212 # 80006268 <CONSOLE_STATUS+0x258>
    80001db4:	00001097          	auipc	ra,0x1
    80001db8:	450080e7          	jalr	1104(ra) # 80003204 <_Z11printStringPKc>
    80001dbc:	0084b503          	ld	a0,8(s1)
    80001dc0:	00001097          	auipc	ra,0x1
    80001dc4:	4b4080e7          	jalr	1204(ra) # 80003274 <_Z12printIntegerm>
    80001dc8:	00004517          	auipc	a0,0x4
    80001dcc:	2c050513          	addi	a0,a0,704 # 80006088 <CONSOLE_STATUS+0x78>
    80001dd0:	00001097          	auipc	ra,0x1
    80001dd4:	434080e7          	jalr	1076(ra) # 80003204 <_Z11printStringPKc>
    printString("Free Block No: "); printInteger(getFreeBlockNo()); printString("\n");
    80001dd8:	00004517          	auipc	a0,0x4
    80001ddc:	4a050513          	addi	a0,a0,1184 # 80006278 <CONSOLE_STATUS+0x268>
    80001de0:	00001097          	auipc	ra,0x1
    80001de4:	424080e7          	jalr	1060(ra) # 80003204 <_Z11printStringPKc>
    80001de8:	0104b503          	ld	a0,16(s1)
    80001dec:	00001097          	auipc	ra,0x1
    80001df0:	488080e7          	jalr	1160(ra) # 80003274 <_Z12printIntegerm>
    80001df4:	00004517          	auipc	a0,0x4
    80001df8:	29450513          	addi	a0,a0,660 # 80006088 <CONSOLE_STATUS+0x78>
    80001dfc:	00001097          	auipc	ra,0x1
    80001e00:	408080e7          	jalr	1032(ra) # 80003204 <_Z11printStringPKc>
    printString("\n##################################\n");
    80001e04:	00004517          	auipc	a0,0x4
    80001e08:	48450513          	addi	a0,a0,1156 # 80006288 <CONSOLE_STATUS+0x278>
    80001e0c:	00001097          	auipc	ra,0x1
    80001e10:	3f8080e7          	jalr	1016(ra) # 80003204 <_Z11printStringPKc>
}
    80001e14:	01813083          	ld	ra,24(sp)
    80001e18:	01013403          	ld	s0,16(sp)
    80001e1c:	00813483          	ld	s1,8(sp)
    80001e20:	00013903          	ld	s2,0(sp)
    80001e24:	02010113          	addi	sp,sp,32
    80001e28:	00008067          	ret

0000000080001e2c <_ZN15MemoryAllocator22printMemorySpaceParamsEv>:

void MemoryAllocator::printMemorySpaceParams() {
    80001e2c:	fe010113          	addi	sp,sp,-32
    80001e30:	00113c23          	sd	ra,24(sp)
    80001e34:	00813823          	sd	s0,16(sp)
    80001e38:	00913423          	sd	s1,8(sp)
    80001e3c:	01213023          	sd	s2,0(sp)
    80001e40:	02010413          	addi	s0,sp,32
    printString("----------------------------------\n\n");
    80001e44:	00004517          	auipc	a0,0x4
    80001e48:	46c50513          	addi	a0,a0,1132 # 800062b0 <CONSOLE_STATUS+0x2a0>
    80001e4c:	00001097          	auipc	ra,0x1
    80001e50:	3b8080e7          	jalr	952(ra) # 80003204 <_Z11printStringPKc>
    printString("Size of MemoryAllocator class: ");
    80001e54:	00004517          	auipc	a0,0x4
    80001e58:	48450513          	addi	a0,a0,1156 # 800062d8 <CONSOLE_STATUS+0x2c8>
    80001e5c:	00001097          	auipc	ra,0x1
    80001e60:	3a8080e7          	jalr	936(ra) # 80003204 <_Z11printStringPKc>
    printInteger(sizeof(MemoryAllocator)); printString("\n");
    80001e64:	02000513          	li	a0,32
    80001e68:	00001097          	auipc	ra,0x1
    80001e6c:	40c080e7          	jalr	1036(ra) # 80003274 <_Z12printIntegerm>
    80001e70:	00004517          	auipc	a0,0x4
    80001e74:	21850513          	addi	a0,a0,536 # 80006088 <CONSOLE_STATUS+0x78>
    80001e78:	00001097          	auipc	ra,0x1
    80001e7c:	38c080e7          	jalr	908(ra) # 80003204 <_Z11printStringPKc>

    printString("HEAP_START_ADDR: "); printInteger((uint64)HEAP_START_ADDR); printString("\n");
    80001e80:	00004517          	auipc	a0,0x4
    80001e84:	49850513          	addi	a0,a0,1176 # 80006318 <CONSOLE_STATUS+0x308>
    80001e88:	00001097          	auipc	ra,0x1
    80001e8c:	37c080e7          	jalr	892(ra) # 80003204 <_Z11printStringPKc>
    80001e90:	00005497          	auipc	s1,0x5
    80001e94:	1204b483          	ld	s1,288(s1) # 80006fb0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001e98:	0004b503          	ld	a0,0(s1)
    80001e9c:	00001097          	auipc	ra,0x1
    80001ea0:	3d8080e7          	jalr	984(ra) # 80003274 <_Z12printIntegerm>
    80001ea4:	00004517          	auipc	a0,0x4
    80001ea8:	1e450513          	addi	a0,a0,484 # 80006088 <CONSOLE_STATUS+0x78>
    80001eac:	00001097          	auipc	ra,0x1
    80001eb0:	358080e7          	jalr	856(ra) # 80003204 <_Z11printStringPKc>
    printString("HEAP_END_ADDR: "); printInteger((uint64)HEAP_END_ADDR); printString("\n");
    80001eb4:	00004517          	auipc	a0,0x4
    80001eb8:	44450513          	addi	a0,a0,1092 # 800062f8 <CONSOLE_STATUS+0x2e8>
    80001ebc:	00001097          	auipc	ra,0x1
    80001ec0:	348080e7          	jalr	840(ra) # 80003204 <_Z11printStringPKc>
    80001ec4:	00005917          	auipc	s2,0x5
    80001ec8:	13493903          	ld	s2,308(s2) # 80006ff8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001ecc:	00093503          	ld	a0,0(s2)
    80001ed0:	00001097          	auipc	ra,0x1
    80001ed4:	3a4080e7          	jalr	932(ra) # 80003274 <_Z12printIntegerm>
    80001ed8:	00004517          	auipc	a0,0x4
    80001edc:	1b050513          	addi	a0,a0,432 # 80006088 <CONSOLE_STATUS+0x78>
    80001ee0:	00001097          	auipc	ra,0x1
    80001ee4:	324080e7          	jalr	804(ra) # 80003204 <_Z11printStringPKc>

    printString("HEAP_END_ADDR - HEAP_START_ADDR: ");
    80001ee8:	00004517          	auipc	a0,0x4
    80001eec:	42050513          	addi	a0,a0,1056 # 80006308 <CONSOLE_STATUS+0x2f8>
    80001ef0:	00001097          	auipc	ra,0x1
    80001ef4:	314080e7          	jalr	788(ra) # 80003204 <_Z11printStringPKc>
    printInteger((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)); printString("\n");
    80001ef8:	00093503          	ld	a0,0(s2)
    80001efc:	0004b783          	ld	a5,0(s1)
    80001f00:	40f50533          	sub	a0,a0,a5
    80001f04:	00001097          	auipc	ra,0x1
    80001f08:	370080e7          	jalr	880(ra) # 80003274 <_Z12printIntegerm>
    80001f0c:	00004517          	auipc	a0,0x4
    80001f10:	17c50513          	addi	a0,a0,380 # 80006088 <CONSOLE_STATUS+0x78>
    80001f14:	00001097          	auipc	ra,0x1
    80001f18:	2f0080e7          	jalr	752(ra) # 80003204 <_Z11printStringPKc>

    printString("MEM_BLOCK_SIZE: "); printInteger(MEM_BLOCK_SIZE); printString("\n");
    80001f1c:	00004517          	auipc	a0,0x4
    80001f20:	41450513          	addi	a0,a0,1044 # 80006330 <CONSOLE_STATUS+0x320>
    80001f24:	00001097          	auipc	ra,0x1
    80001f28:	2e0080e7          	jalr	736(ra) # 80003204 <_Z11printStringPKc>
    80001f2c:	04000513          	li	a0,64
    80001f30:	00001097          	auipc	ra,0x1
    80001f34:	344080e7          	jalr	836(ra) # 80003274 <_Z12printIntegerm>
    80001f38:	00004517          	auipc	a0,0x4
    80001f3c:	15050513          	addi	a0,a0,336 # 80006088 <CONSOLE_STATUS+0x78>
    80001f40:	00001097          	auipc	ra,0x1
    80001f44:	2c4080e7          	jalr	708(ra) # 80003204 <_Z11printStringPKc>

    printString("Number of blocks in (HEAP_END_ADDR - HEAP_START_ADDR): ");
    80001f48:	00004517          	auipc	a0,0x4
    80001f4c:	40050513          	addi	a0,a0,1024 # 80006348 <CONSOLE_STATUS+0x338>
    80001f50:	00001097          	auipc	ra,0x1
    80001f54:	2b4080e7          	jalr	692(ra) # 80003204 <_Z11printStringPKc>
    printInteger(((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)) / MEM_BLOCK_SIZE);
    80001f58:	00093503          	ld	a0,0(s2)
    80001f5c:	0004b783          	ld	a5,0(s1)
    80001f60:	40f50533          	sub	a0,a0,a5
    80001f64:	00655513          	srli	a0,a0,0x6
    80001f68:	00001097          	auipc	ra,0x1
    80001f6c:	30c080e7          	jalr	780(ra) # 80003274 <_Z12printIntegerm>
    printString("\n");
    80001f70:	00004517          	auipc	a0,0x4
    80001f74:	11850513          	addi	a0,a0,280 # 80006088 <CONSOLE_STATUS+0x78>
    80001f78:	00001097          	auipc	ra,0x1
    80001f7c:	28c080e7          	jalr	652(ra) # 80003204 <_Z11printStringPKc>
    printString("\n----------------------------------\n");
    80001f80:	00004517          	auipc	a0,0x4
    80001f84:	40050513          	addi	a0,a0,1024 # 80006380 <CONSOLE_STATUS+0x370>
    80001f88:	00001097          	auipc	ra,0x1
    80001f8c:	27c080e7          	jalr	636(ra) # 80003204 <_Z11printStringPKc>
}
    80001f90:	01813083          	ld	ra,24(sp)
    80001f94:	01013403          	ld	s0,16(sp)
    80001f98:	00813483          	ld	s1,8(sp)
    80001f9c:	00013903          	ld	s2,0(sp)
    80001fa0:	02010113          	addi	sp,sp,32
    80001fa4:	00008067          	ret

0000000080001fa8 <_ZN15MemoryAllocator23printFreeMemoryHeadDataEv>:

void MemoryAllocator::printFreeMemoryHeadData() {
    80001fa8:	fe010113          	addi	sp,sp,-32
    80001fac:	00113c23          	sd	ra,24(sp)
    80001fb0:	00813823          	sd	s0,16(sp)
    80001fb4:	00913423          	sd	s1,8(sp)
    80001fb8:	02010413          	addi	s0,sp,32
    80001fbc:	00050493          	mv	s1,a0
    printString("##################################\n\n");
    80001fc0:	00004517          	auipc	a0,0x4
    80001fc4:	1a850513          	addi	a0,a0,424 # 80006168 <CONSOLE_STATUS+0x158>
    80001fc8:	00001097          	auipc	ra,0x1
    80001fcc:	23c080e7          	jalr	572(ra) # 80003204 <_Z11printStringPKc>
    printString("freeMemoryHead: ");
    80001fd0:	00004517          	auipc	a0,0x4
    80001fd4:	3d850513          	addi	a0,a0,984 # 800063a8 <CONSOLE_STATUS+0x398>
    80001fd8:	00001097          	auipc	ra,0x1
    80001fdc:	22c080e7          	jalr	556(ra) # 80003204 <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead); printString("\n");
    80001fe0:	0184b503          	ld	a0,24(s1)
    80001fe4:	00001097          	auipc	ra,0x1
    80001fe8:	290080e7          	jalr	656(ra) # 80003274 <_Z12printIntegerm>
    80001fec:	00004517          	auipc	a0,0x4
    80001ff0:	09c50513          	addi	a0,a0,156 # 80006088 <CONSOLE_STATUS+0x78>
    80001ff4:	00001097          	auipc	ra,0x1
    80001ff8:	210080e7          	jalr	528(ra) # 80003204 <_Z11printStringPKc>
    printString("freeMemoryHead->noBlocks: ");
    80001ffc:	00004517          	auipc	a0,0x4
    80002000:	3c450513          	addi	a0,a0,964 # 800063c0 <CONSOLE_STATUS+0x3b0>
    80002004:	00001097          	auipc	ra,0x1
    80002008:	200080e7          	jalr	512(ra) # 80003204 <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead->noBlocks); printString("\n");
    8000200c:	0184b783          	ld	a5,24(s1)
    80002010:	0007b503          	ld	a0,0(a5)
    80002014:	00001097          	auipc	ra,0x1
    80002018:	260080e7          	jalr	608(ra) # 80003274 <_Z12printIntegerm>
    8000201c:	00004517          	auipc	a0,0x4
    80002020:	06c50513          	addi	a0,a0,108 # 80006088 <CONSOLE_STATUS+0x78>
    80002024:	00001097          	auipc	ra,0x1
    80002028:	1e0080e7          	jalr	480(ra) # 80003204 <_Z11printStringPKc>
    printString("freeMemoryHead->next: ");
    8000202c:	00004517          	auipc	a0,0x4
    80002030:	3b450513          	addi	a0,a0,948 # 800063e0 <CONSOLE_STATUS+0x3d0>
    80002034:	00001097          	auipc	ra,0x1
    80002038:	1d0080e7          	jalr	464(ra) # 80003204 <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead->next); printString("\n");
    8000203c:	0184b783          	ld	a5,24(s1)
    80002040:	0087b503          	ld	a0,8(a5)
    80002044:	00001097          	auipc	ra,0x1
    80002048:	230080e7          	jalr	560(ra) # 80003274 <_Z12printIntegerm>
    8000204c:	00004517          	auipc	a0,0x4
    80002050:	03c50513          	addi	a0,a0,60 # 80006088 <CONSOLE_STATUS+0x78>
    80002054:	00001097          	auipc	ra,0x1
    80002058:	1b0080e7          	jalr	432(ra) # 80003204 <_Z11printStringPKc>
    printString("Segment Descriptor size: ");
    8000205c:	00004517          	auipc	a0,0x4
    80002060:	39c50513          	addi	a0,a0,924 # 800063f8 <CONSOLE_STATUS+0x3e8>
    80002064:	00001097          	auipc	ra,0x1
    80002068:	1a0080e7          	jalr	416(ra) # 80003204 <_Z11printStringPKc>
    printInteger(sizeof(*freeMemoryHead)); printString("\n");
    8000206c:	01000513          	li	a0,16
    80002070:	00001097          	auipc	ra,0x1
    80002074:	204080e7          	jalr	516(ra) # 80003274 <_Z12printIntegerm>
    80002078:	00004517          	auipc	a0,0x4
    8000207c:	01050513          	addi	a0,a0,16 # 80006088 <CONSOLE_STATUS+0x78>
    80002080:	00001097          	auipc	ra,0x1
    80002084:	184080e7          	jalr	388(ra) # 80003204 <_Z11printStringPKc>
    printString("\n##################################\n");
    80002088:	00004517          	auipc	a0,0x4
    8000208c:	20050513          	addi	a0,a0,512 # 80006288 <CONSOLE_STATUS+0x278>
    80002090:	00001097          	auipc	ra,0x1
    80002094:	174080e7          	jalr	372(ra) # 80003204 <_Z11printStringPKc>
}
    80002098:	01813083          	ld	ra,24(sp)
    8000209c:	01013403          	ld	s0,16(sp)
    800020a0:	00813483          	ld	s1,8(sp)
    800020a4:	02010113          	addi	sp,sp,32
    800020a8:	00008067          	ret

00000000800020ac <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv>:
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    return beforeTestFreeBlockNo == afterTestFreeBlockNo - minNoBlocksForSize - addendForSegDesc;

}

size_t MemoryAllocatorTest::getFreeBlocksCnt() {
    800020ac:	ff010113          	addi	sp,sp,-16
    800020b0:	00113423          	sd	ra,8(sp)
    800020b4:	00813023          	sd	s0,0(sp)
    800020b8:	01010413          	addi	s0,sp,16
    MemoryAllocator::SegmentDescriptor* freeMemHead = MemoryAllocator::instance()->freeMemoryHead;
    800020bc:	00000097          	auipc	ra,0x0
    800020c0:	930080e7          	jalr	-1744(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    800020c4:	01853783          	ld	a5,24(a0)
    size_t blockCnt = 0;
    800020c8:	00000513          	li	a0,0
    while (freeMemHead) {
    800020cc:	00078a63          	beqz	a5,800020e0 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv+0x34>
        blockCnt += freeMemHead->noBlocks;
    800020d0:	0007b703          	ld	a4,0(a5)
    800020d4:	00e50533          	add	a0,a0,a4
        freeMemHead = freeMemHead->next;
    800020d8:	0087b783          	ld	a5,8(a5)
    while (freeMemHead) {
    800020dc:	ff1ff06f          	j	800020cc <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv+0x20>
    }
    return blockCnt;
}
    800020e0:	00813083          	ld	ra,8(sp)
    800020e4:	00013403          	ld	s0,0(sp)
    800020e8:	01010113          	addi	sp,sp,16
    800020ec:	00008067          	ret

00000000800020f0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>:

bool MemoryAllocatorTest::testMemoryMetadataValidity() {
    800020f0:	fd010113          	addi	sp,sp,-48
    800020f4:	02113423          	sd	ra,40(sp)
    800020f8:	02813023          	sd	s0,32(sp)
    800020fc:	00913c23          	sd	s1,24(sp)
    80002100:	01213823          	sd	s2,16(sp)
    80002104:	01313423          	sd	s3,8(sp)
    80002108:	01413023          	sd	s4,0(sp)
    8000210c:	03010413          	addi	s0,sp,48
    80002110:	00050913          	mv	s2,a0
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002114:	00000097          	auipc	ra,0x0
    80002118:	8d8080e7          	jalr	-1832(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>

    void* kmem_alloc(size_t size);
    int kmem_free(void* newFree);
    void printInstanceMemorySpaceParams();
    void printFreeMemoryHeadData();
    size_t getTotalFree() { return totalFree; }
    8000211c:	00053483          	ld	s1,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002120:	00000097          	auipc	ra,0x0
    80002124:	8cc080e7          	jalr	-1844(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    80002128:	00853a03          	ld	s4,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    8000212c:	00000097          	auipc	ra,0x0
    80002130:	8c0080e7          	jalr	-1856(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002134:	01053983          	ld	s3,16(a0)
    size_t freeBlocksCnt = getFreeBlocksCnt();
    80002138:	00090513          	mv	a0,s2
    8000213c:	00000097          	auipc	ra,0x0
    80002140:	f70080e7          	jalr	-144(ra) # 800020ac <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv>

    if (freeBlocksCnt != beforeTestFreeBlockNo) return false;
    80002144:	02a99c63          	bne	s3,a0,8000217c <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x8c>
    if (freeBlocksCnt != beforeTestTotalFree / MEM_BLOCK_SIZE) return false;
    80002148:	0064d793          	srli	a5,s1,0x6
    8000214c:	04a79a63          	bne	a5,a0,800021a0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0xb0>

    size_t totalMemory = (size_t) (MemoryAllocator::managedMemorySpaceEnd - MemoryAllocator::managedMemorySpaceStart);
    80002150:	00005797          	auipc	a5,0x5
    80002154:	e687b783          	ld	a5,-408(a5) # 80006fb8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002158:	0007b503          	ld	a0,0(a5)
    8000215c:	00005797          	auipc	a5,0x5
    80002160:	eb47b783          	ld	a5,-332(a5) # 80007010 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002164:	0007b783          	ld	a5,0(a5)
    80002168:	40f507b3          	sub	a5,a0,a5
    return totalMemory == beforeTestTotalFree + beforeTestTotalTaken;
    8000216c:	01448533          	add	a0,s1,s4
    80002170:	40f50533          	sub	a0,a0,a5
    80002174:	00153513          	seqz	a0,a0
    80002178:	0080006f          	j	80002180 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x90>
    if (freeBlocksCnt != beforeTestFreeBlockNo) return false;
    8000217c:	00000513          	li	a0,0
}
    80002180:	02813083          	ld	ra,40(sp)
    80002184:	02013403          	ld	s0,32(sp)
    80002188:	01813483          	ld	s1,24(sp)
    8000218c:	01013903          	ld	s2,16(sp)
    80002190:	00813983          	ld	s3,8(sp)
    80002194:	00013a03          	ld	s4,0(sp)
    80002198:	03010113          	addi	sp,sp,48
    8000219c:	00008067          	ret
    if (freeBlocksCnt != beforeTestTotalFree / MEM_BLOCK_SIZE) return false;
    800021a0:	00000513          	li	a0,0
    800021a4:	fddff06f          	j	80002180 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x90>

00000000800021a8 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>:
bool MemoryAllocatorTest::testMemoryAllocate(uint64 size, void** allocatedMemoryPointer) {
    800021a8:	fa010113          	addi	sp,sp,-96
    800021ac:	04113c23          	sd	ra,88(sp)
    800021b0:	04813823          	sd	s0,80(sp)
    800021b4:	04913423          	sd	s1,72(sp)
    800021b8:	05213023          	sd	s2,64(sp)
    800021bc:	03313c23          	sd	s3,56(sp)
    800021c0:	03413823          	sd	s4,48(sp)
    800021c4:	03513423          	sd	s5,40(sp)
    800021c8:	03613023          	sd	s6,32(sp)
    800021cc:	01713c23          	sd	s7,24(sp)
    800021d0:	01813823          	sd	s8,16(sp)
    800021d4:	01913423          	sd	s9,8(sp)
    800021d8:	01a13023          	sd	s10,0(sp)
    800021dc:	06010413          	addi	s0,sp,96
    800021e0:	00050a13          	mv	s4,a0
    800021e4:	00058913          	mv	s2,a1
    800021e8:	00060993          	mv	s3,a2
    if (!testMemoryMetadataValidity()) return false;
    800021ec:	00000097          	auipc	ra,0x0
    800021f0:	f04080e7          	jalr	-252(ra) # 800020f0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800021f4:	00050493          	mv	s1,a0
    800021f8:	04051063          	bnez	a0,80002238 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x90>
}
    800021fc:	00048513          	mv	a0,s1
    80002200:	05813083          	ld	ra,88(sp)
    80002204:	05013403          	ld	s0,80(sp)
    80002208:	04813483          	ld	s1,72(sp)
    8000220c:	04013903          	ld	s2,64(sp)
    80002210:	03813983          	ld	s3,56(sp)
    80002214:	03013a03          	ld	s4,48(sp)
    80002218:	02813a83          	ld	s5,40(sp)
    8000221c:	02013b03          	ld	s6,32(sp)
    80002220:	01813b83          	ld	s7,24(sp)
    80002224:	01013c03          	ld	s8,16(sp)
    80002228:	00813c83          	ld	s9,8(sp)
    8000222c:	00013d03          	ld	s10,0(sp)
    80002230:	06010113          	addi	sp,sp,96
    80002234:	00008067          	ret
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002238:	fffff097          	auipc	ra,0xfffff
    8000223c:	7b4080e7          	jalr	1972(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    80002240:	00053b03          	ld	s6,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002244:	fffff097          	auipc	ra,0xfffff
    80002248:	7a8080e7          	jalr	1960(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    8000224c:	00853b83          	ld	s7,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    80002250:	fffff097          	auipc	ra,0xfffff
    80002254:	79c080e7          	jalr	1948(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002258:	01053c03          	ld	s8,16(a0)
    *allocatedMemoryPointer = MemoryAllocator::instance()->kmem_alloc(size);
    8000225c:	fffff097          	auipc	ra,0xfffff
    80002260:	790080e7          	jalr	1936(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002264:	00090593          	mv	a1,s2
    80002268:	00000097          	auipc	ra,0x0
    8000226c:	868080e7          	jalr	-1944(ra) # 80001ad0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002270:	00050a93          	mv	s5,a0
    80002274:	00a9b023          	sd	a0,0(s3)
    if (*allocatedMemoryPointer == nullptr && size == (uint64) -37) return true;
    80002278:	08050663          	beqz	a0,80002304 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x15c>
    size_t minNoBlocksForSize = MemoryAllocator::getMinBlockNumber(size);
    8000227c:	00090513          	mv	a0,s2
    80002280:	fffff097          	auipc	ra,0xfffff
    80002284:	674080e7          	jalr	1652(ra) # 800018f4 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80002288:	00050993          	mv	s3,a0
    size_t addendForSegDesc = minNoBlocksForSize * MEM_BLOCK_SIZE - size < sizeof(MemoryAllocator::SegmentDescriptor);
    8000228c:	00651593          	slli	a1,a0,0x6
    80002290:	41258933          	sub	s2,a1,s2
    80002294:	01093913          	sltiu	s2,s2,16
    size_t allocatedMemory = (minNoBlocksForSize + addendForSegDesc) * MEM_BLOCK_SIZE;
    80002298:	01250cb3          	add	s9,a0,s2
    8000229c:	006c9d13          	slli	s10,s9,0x6
    if (!testMemoryMetadataValidity()) return false;
    800022a0:	000a0513          	mv	a0,s4
    800022a4:	00000097          	auipc	ra,0x0
    800022a8:	e4c080e7          	jalr	-436(ra) # 800020f0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800022ac:	00050493          	mv	s1,a0
    800022b0:	f40506e3          	beqz	a0,800021fc <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    size_t afterTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    800022b4:	fffff097          	auipc	ra,0xfffff
    800022b8:	738080e7          	jalr	1848(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    800022bc:	00053483          	ld	s1,0(a0)
    size_t afterTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    800022c0:	fffff097          	auipc	ra,0xfffff
    800022c4:	72c080e7          	jalr	1836(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800022c8:	00853a03          	ld	s4,8(a0)
    size_t afterTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    800022cc:	fffff097          	auipc	ra,0xfffff
    800022d0:	720080e7          	jalr	1824(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    800022d4:	01053783          	ld	a5,16(a0)
    if (beforeTestTotalFree != afterTestTotalFree + allocatedMemory) return false;
    800022d8:	01a484b3          	add	s1,s1,s10
    800022dc:	03649a63          	bne	s1,s6,80002310 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x168>
    if (beforeTestTotalTaken != afterTestTotalTaken - allocatedMemory) return false;
    800022e0:	41aa0d33          	sub	s10,s4,s10
    800022e4:	037d1a63          	bne	s10,s7,80002318 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x170>
    if (beforeTestFreeBlockNo != afterTestFreeBlockNo + minNoBlocksForSize + addendForSegDesc) return false;
    800022e8:	013789b3          	add	s3,a5,s3
    800022ec:	01298933          	add	s2,s3,s2
    800022f0:	03891863          	bne	s2,s8,80002320 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x178>
    return segDesc->noBlocks == minNoBlocksForSize + addendForSegDesc;
    800022f4:	ff0ab483          	ld	s1,-16(s5)
    800022f8:	409c84b3          	sub	s1,s9,s1
    800022fc:	0014b493          	seqz	s1,s1
    80002300:	efdff06f          	j	800021fc <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (*allocatedMemoryPointer == nullptr && size == (uint64) -37) return true;
    80002304:	fdb00793          	li	a5,-37
    80002308:	f6f91ae3          	bne	s2,a5,8000227c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0xd4>
    8000230c:	ef1ff06f          	j	800021fc <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestTotalFree != afterTestTotalFree + allocatedMemory) return false;
    80002310:	00000493          	li	s1,0
    80002314:	ee9ff06f          	j	800021fc <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestTotalTaken != afterTestTotalTaken - allocatedMemory) return false;
    80002318:	00000493          	li	s1,0
    8000231c:	ee1ff06f          	j	800021fc <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestFreeBlockNo != afterTestFreeBlockNo + minNoBlocksForSize + addendForSegDesc) return false;
    80002320:	00000493          	li	s1,0
    80002324:	ed9ff06f          	j	800021fc <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>

0000000080002328 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>:
bool MemoryAllocatorTest::testMemoryFree(uint64 size, void* allocatedMemoryPointer) {
    80002328:	fb010113          	addi	sp,sp,-80
    8000232c:	04113423          	sd	ra,72(sp)
    80002330:	04813023          	sd	s0,64(sp)
    80002334:	02913c23          	sd	s1,56(sp)
    80002338:	03213823          	sd	s2,48(sp)
    8000233c:	03313423          	sd	s3,40(sp)
    80002340:	03413023          	sd	s4,32(sp)
    80002344:	01513c23          	sd	s5,24(sp)
    80002348:	01613823          	sd	s6,16(sp)
    8000234c:	01713423          	sd	s7,8(sp)
    80002350:	01813023          	sd	s8,0(sp)
    80002354:	05010413          	addi	s0,sp,80
    80002358:	00050a13          	mv	s4,a0
    8000235c:	00058913          	mv	s2,a1
    80002360:	00060493          	mv	s1,a2
    if (!testMemoryMetadataValidity()) return false;
    80002364:	00000097          	auipc	ra,0x0
    80002368:	d8c080e7          	jalr	-628(ra) # 800020f0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    8000236c:	02051a63          	bnez	a0,800023a0 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x78>
}
    80002370:	04813083          	ld	ra,72(sp)
    80002374:	04013403          	ld	s0,64(sp)
    80002378:	03813483          	ld	s1,56(sp)
    8000237c:	03013903          	ld	s2,48(sp)
    80002380:	02813983          	ld	s3,40(sp)
    80002384:	02013a03          	ld	s4,32(sp)
    80002388:	01813a83          	ld	s5,24(sp)
    8000238c:	01013b03          	ld	s6,16(sp)
    80002390:	00813b83          	ld	s7,8(sp)
    80002394:	00013c03          	ld	s8,0(sp)
    80002398:	05010113          	addi	sp,sp,80
    8000239c:	00008067          	ret
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    800023a0:	fffff097          	auipc	ra,0xfffff
    800023a4:	64c080e7          	jalr	1612(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    800023a8:	00053b03          	ld	s6,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    800023ac:	fffff097          	auipc	ra,0xfffff
    800023b0:	640080e7          	jalr	1600(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800023b4:	00853b83          	ld	s7,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    800023b8:	fffff097          	auipc	ra,0xfffff
    800023bc:	634080e7          	jalr	1588(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    800023c0:	01053a83          	ld	s5,16(a0)
    size_t minNoBlocksForSize = MemoryAllocator::getMinBlockNumber(size);
    800023c4:	00090513          	mv	a0,s2
    800023c8:	fffff097          	auipc	ra,0xfffff
    800023cc:	52c080e7          	jalr	1324(ra) # 800018f4 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    800023d0:	00050993          	mv	s3,a0
    size_t addendForSegDesc = minNoBlocksForSize * MEM_BLOCK_SIZE - size < sizeof(MemoryAllocator::SegmentDescriptor);
    800023d4:	00651593          	slli	a1,a0,0x6
    800023d8:	41258933          	sub	s2,a1,s2
    800023dc:	01093913          	sltiu	s2,s2,16
    size_t allocatedMemory = (minNoBlocksForSize + addendForSegDesc) * MEM_BLOCK_SIZE;
    800023e0:	01250733          	add	a4,a0,s2
    800023e4:	00671c13          	slli	s8,a4,0x6
    if (!allocatedMemoryPointer) {
    800023e8:	08048463          	beqz	s1,80002470 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x148>
    if (allocatedMemoryPointer) segDesc = (MemoryAllocator::SegmentDescriptor*)
    800023ec:	08048a63          	beqz	s1,80002480 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x158>
    800023f0:	ff048793          	addi	a5,s1,-16
    if (allocatedMemoryPointer)
    800023f4:	00048863          	beqz	s1,80002404 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xdc>
    if (segDesc->noBlocks != minNoBlocksForSize + addendForSegDesc) return false;
    800023f8:	0007b703          	ld	a4,0(a5)
    800023fc:	012987b3          	add	a5,s3,s2
    80002400:	08f71463          	bne	a4,a5,80002488 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x160>
    MemoryAllocator::instance()->kmem_free(allocatedMemoryPointer);
    80002404:	fffff097          	auipc	ra,0xfffff
    80002408:	5e8080e7          	jalr	1512(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    8000240c:	00048593          	mv	a1,s1
    80002410:	fffff097          	auipc	ra,0xfffff
    80002414:	768080e7          	jalr	1896(ra) # 80001b78 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002418:	000a0513          	mv	a0,s4
    8000241c:	00000097          	auipc	ra,0x0
    80002420:	cd4080e7          	jalr	-812(ra) # 800020f0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002424:	f40506e3          	beqz	a0,80002370 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    size_t afterTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002428:	fffff097          	auipc	ra,0xfffff
    8000242c:	5c4080e7          	jalr	1476(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    80002430:	00053483          	ld	s1,0(a0)
    size_t afterTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002434:	fffff097          	auipc	ra,0xfffff
    80002438:	5b8080e7          	jalr	1464(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    8000243c:	00853a03          	ld	s4,8(a0)
    size_t afterTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    80002440:	fffff097          	auipc	ra,0xfffff
    80002444:	5ac080e7          	jalr	1452(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002448:	01053783          	ld	a5,16(a0)
    if (beforeTestTotalFree != afterTestTotalFree - allocatedMemory) return false;
    8000244c:	418484b3          	sub	s1,s1,s8
    80002450:	05649063          	bne	s1,s6,80002490 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x168>
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    80002454:	014c0733          	add	a4,s8,s4
    80002458:	05771063          	bne	a4,s7,80002498 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x170>
    return beforeTestFreeBlockNo == afterTestFreeBlockNo - minNoBlocksForSize - addendForSegDesc;
    8000245c:	41378533          	sub	a0,a5,s3
    80002460:	41250533          	sub	a0,a0,s2
    80002464:	41550533          	sub	a0,a0,s5
    80002468:	00153513          	seqz	a0,a0
    8000246c:	f05ff06f          	j	80002370 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
        minNoBlocksForSize = 0; addendForSegDesc = 0; allocatedMemory = 0;
    80002470:	00000c13          	li	s8,0
    80002474:	00000913          	li	s2,0
    80002478:	00000993          	li	s3,0
    8000247c:	f71ff06f          	j	800023ec <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xc4>
    MemoryAllocator::SegmentDescriptor* segDesc = nullptr;
    80002480:	00048793          	mv	a5,s1
    80002484:	f71ff06f          	j	800023f4 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xcc>
    if (segDesc->noBlocks != minNoBlocksForSize + addendForSegDesc) return false;
    80002488:	00000513          	li	a0,0
    8000248c:	ee5ff06f          	j	80002370 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    if (beforeTestTotalFree != afterTestTotalFree - allocatedMemory) return false;
    80002490:	00000513          	li	a0,0
    80002494:	eddff06f          	j	80002370 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    80002498:	00000513          	li	a0,0
    8000249c:	ed5ff06f          	j	80002370 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>

00000000800024a0 <_ZN19MemoryAllocatorTest13firstFitTest1Ev>:
    if (!firstFitTest2()) return false;
    if (!firstFitTest3()) return false;
    return true;
}

bool MemoryAllocatorTest::firstFitTest1() {
    800024a0:	fc010113          	addi	sp,sp,-64
    800024a4:	02113c23          	sd	ra,56(sp)
    800024a8:	02813823          	sd	s0,48(sp)
    800024ac:	02913423          	sd	s1,40(sp)
    800024b0:	03213023          	sd	s2,32(sp)
    800024b4:	01313c23          	sd	s3,24(sp)
    800024b8:	01413823          	sd	s4,16(sp)
    800024bc:	01513423          	sd	s5,8(sp)
    800024c0:	04010413          	addi	s0,sp,64
    800024c4:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    800024c8:	00000097          	auipc	ra,0x0
    800024cc:	c28080e7          	jalr	-984(ra) # 800020f0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800024d0:	02051463          	bnez	a0,800024f8 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x58>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    800024d4:	03813083          	ld	ra,56(sp)
    800024d8:	03013403          	ld	s0,48(sp)
    800024dc:	02813483          	ld	s1,40(sp)
    800024e0:	02013903          	ld	s2,32(sp)
    800024e4:	01813983          	ld	s3,24(sp)
    800024e8:	01013a03          	ld	s4,16(sp)
    800024ec:	00813a83          	ld	s5,8(sp)
    800024f0:	04010113          	addi	sp,sp,64
    800024f4:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    800024f8:	fffff097          	auipc	ra,0xfffff
    800024fc:	4f4080e7          	jalr	1268(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002500:	02f00593          	li	a1,47
    80002504:	fffff097          	auipc	ra,0xfffff
    80002508:	5cc080e7          	jalr	1484(ra) # 80001ad0 <_ZN15MemoryAllocator10kmem_allocEm>
    8000250c:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002510:	00005797          	auipc	a5,0x5
    80002514:	b007b783          	ld	a5,-1280(a5) # 80007010 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002518:	0007b783          	ld	a5,0(a5)
    8000251c:	01078793          	addi	a5,a5,16
    80002520:	00a78663          	beq	a5,a0,8000252c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x8c>
        return false;
    80002524:	00000513          	li	a0,0
    80002528:	fadff06f          	j	800024d4 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    8000252c:	fffff097          	auipc	ra,0xfffff
    80002530:	4c0080e7          	jalr	1216(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002534:	03000593          	li	a1,48
    80002538:	fffff097          	auipc	ra,0xfffff
    8000253c:	598080e7          	jalr	1432(ra) # 80001ad0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002540:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002544:	00005797          	auipc	a5,0x5
    80002548:	acc7b783          	ld	a5,-1332(a5) # 80007010 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000254c:	0007b783          	ld	a5,0(a5)
    80002550:	05078793          	addi	a5,a5,80
    80002554:	00a78663          	beq	a5,a0,80002560 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0xc0>
        return false;
    80002558:	00000513          	li	a0,0
    8000255c:	f79ff06f          	j	800024d4 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    80002560:	fffff097          	auipc	ra,0xfffff
    80002564:	48c080e7          	jalr	1164(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002568:	03100593          	li	a1,49
    8000256c:	fffff097          	auipc	ra,0xfffff
    80002570:	564080e7          	jalr	1380(ra) # 80001ad0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002574:	00050a13          	mv	s4,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + 2 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002578:	00005797          	auipc	a5,0x5
    8000257c:	a987b783          	ld	a5,-1384(a5) # 80007010 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002580:	0007b783          	ld	a5,0(a5)
    80002584:	09078793          	addi	a5,a5,144
    80002588:	00a78663          	beq	a5,a0,80002594 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0xf4>
        return false;
    8000258c:	00000513          	li	a0,0
    80002590:	f45ff06f          	j	800024d4 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002594:	fffff097          	auipc	ra,0xfffff
    80002598:	458080e7          	jalr	1112(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    8000259c:	00098593          	mv	a1,s3
    800025a0:	fffff097          	auipc	ra,0xfffff
    800025a4:	5d8080e7          	jalr	1496(ra) # 80001b78 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    800025a8:	fffff097          	auipc	ra,0xfffff
    800025ac:	444080e7          	jalr	1092(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    800025b0:	01e00593          	li	a1,30
    800025b4:	fffff097          	auipc	ra,0xfffff
    800025b8:	51c080e7          	jalr	1308(ra) # 80001ad0 <_ZN15MemoryAllocator10kmem_allocEm>
    800025bc:	00050993          	mv	s3,a0
    if (pointers[3] != MemoryAllocator::managedMemorySpaceStart + 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    800025c0:	00005797          	auipc	a5,0x5
    800025c4:	a507b783          	ld	a5,-1456(a5) # 80007010 <_GLOBAL_OFFSET_TABLE_+0x68>
    800025c8:	0007b783          	ld	a5,0(a5)
    800025cc:	05078793          	addi	a5,a5,80
    800025d0:	00a78663          	beq	a5,a0,800025dc <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x13c>
        return false;
    800025d4:	00000513          	li	a0,0
    800025d8:	efdff06f          	j	800024d4 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    800025dc:	fffff097          	auipc	ra,0xfffff
    800025e0:	410080e7          	jalr	1040(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    800025e4:	12100593          	li	a1,289
    800025e8:	fffff097          	auipc	ra,0xfffff
    800025ec:	4e8080e7          	jalr	1256(ra) # 80001ad0 <_ZN15MemoryAllocator10kmem_allocEm>
    800025f0:	00050a93          	mv	s5,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + 4 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    800025f4:	00005797          	auipc	a5,0x5
    800025f8:	a1c7b783          	ld	a5,-1508(a5) # 80007010 <_GLOBAL_OFFSET_TABLE_+0x68>
    800025fc:	0007b783          	ld	a5,0(a5)
    80002600:	11078793          	addi	a5,a5,272
    80002604:	00a78663          	beq	a5,a0,80002610 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x170>
        return false;
    80002608:	00000513          	li	a0,0
    8000260c:	ec9ff06f          	j	800024d4 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    if (!testMemoryMetadataValidity()) return false;
    80002610:	00048513          	mv	a0,s1
    80002614:	00000097          	auipc	ra,0x0
    80002618:	adc080e7          	jalr	-1316(ra) # 800020f0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    8000261c:	ea050ce3          	beqz	a0,800024d4 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    80002620:	fffff097          	auipc	ra,0xfffff
    80002624:	3cc080e7          	jalr	972(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002628:	00090593          	mv	a1,s2
    8000262c:	fffff097          	auipc	ra,0xfffff
    80002630:	54c080e7          	jalr	1356(ra) # 80001b78 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002634:	fffff097          	auipc	ra,0xfffff
    80002638:	3b8080e7          	jalr	952(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    8000263c:	000a0593          	mv	a1,s4
    80002640:	fffff097          	auipc	ra,0xfffff
    80002644:	538080e7          	jalr	1336(ra) # 80001b78 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002648:	fffff097          	auipc	ra,0xfffff
    8000264c:	3a4080e7          	jalr	932(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002650:	00098593          	mv	a1,s3
    80002654:	fffff097          	auipc	ra,0xfffff
    80002658:	524080e7          	jalr	1316(ra) # 80001b78 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    8000265c:	fffff097          	auipc	ra,0xfffff
    80002660:	390080e7          	jalr	912(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002664:	000a8593          	mv	a1,s5
    80002668:	fffff097          	auipc	ra,0xfffff
    8000266c:	510080e7          	jalr	1296(ra) # 80001b78 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002670:	00048513          	mv	a0,s1
    80002674:	00000097          	auipc	ra,0x0
    80002678:	a7c080e7          	jalr	-1412(ra) # 800020f0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    8000267c:	e59ff06f          	j	800024d4 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>

0000000080002680 <_ZN19MemoryAllocatorTest12printPointerEiPPv>:


void MemoryAllocatorTest::printPointer(int i, void** pointers) {
    80002680:	fe010113          	addi	sp,sp,-32
    80002684:	00113c23          	sd	ra,24(sp)
    80002688:	00813823          	sd	s0,16(sp)
    8000268c:	00913423          	sd	s1,8(sp)
    80002690:	01213023          	sd	s2,0(sp)
    80002694:	02010413          	addi	s0,sp,32
    80002698:	00058913          	mv	s2,a1
    8000269c:	00060493          	mv	s1,a2
    printString("\npointers[");
    800026a0:	00004517          	auipc	a0,0x4
    800026a4:	d7850513          	addi	a0,a0,-648 # 80006418 <CONSOLE_STATUS+0x408>
    800026a8:	00001097          	auipc	ra,0x1
    800026ac:	b5c080e7          	jalr	-1188(ra) # 80003204 <_Z11printStringPKc>
    printInteger(i);
    800026b0:	00090513          	mv	a0,s2
    800026b4:	00001097          	auipc	ra,0x1
    800026b8:	bc0080e7          	jalr	-1088(ra) # 80003274 <_Z12printIntegerm>
    printString("]: ");
    800026bc:	00004517          	auipc	a0,0x4
    800026c0:	d6c50513          	addi	a0,a0,-660 # 80006428 <CONSOLE_STATUS+0x418>
    800026c4:	00001097          	auipc	ra,0x1
    800026c8:	b40080e7          	jalr	-1216(ra) # 80003204 <_Z11printStringPKc>
    printInteger((uint64)((uint8*) pointers[i] - MemoryAllocator::managedMemorySpaceStart));
    800026cc:	00391613          	slli	a2,s2,0x3
    800026d0:	00c484b3          	add	s1,s1,a2
    800026d4:	0004b503          	ld	a0,0(s1)
    800026d8:	00005797          	auipc	a5,0x5
    800026dc:	9387b783          	ld	a5,-1736(a5) # 80007010 <_GLOBAL_OFFSET_TABLE_+0x68>
    800026e0:	0007b783          	ld	a5,0(a5)
    800026e4:	40f50533          	sub	a0,a0,a5
    800026e8:	00001097          	auipc	ra,0x1
    800026ec:	b8c080e7          	jalr	-1140(ra) # 80003274 <_Z12printIntegerm>
    printString("\npointers[");
    800026f0:	00004517          	auipc	a0,0x4
    800026f4:	d2850513          	addi	a0,a0,-728 # 80006418 <CONSOLE_STATUS+0x408>
    800026f8:	00001097          	auipc	ra,0x1
    800026fc:	b0c080e7          	jalr	-1268(ra) # 80003204 <_Z11printStringPKc>
    printInteger(i);
    80002700:	00090513          	mv	a0,s2
    80002704:	00001097          	auipc	ra,0x1
    80002708:	b70080e7          	jalr	-1168(ra) # 80003274 <_Z12printIntegerm>
    printString("]->blockNo: "); printInteger((uint64) (((MemoryAllocator::SegmentDescriptor*) pointers[i])->noBlocks));
    8000270c:	00004517          	auipc	a0,0x4
    80002710:	d2450513          	addi	a0,a0,-732 # 80006430 <CONSOLE_STATUS+0x420>
    80002714:	00001097          	auipc	ra,0x1
    80002718:	af0080e7          	jalr	-1296(ra) # 80003204 <_Z11printStringPKc>
    8000271c:	0004b783          	ld	a5,0(s1)
    80002720:	0007b503          	ld	a0,0(a5)
    80002724:	00001097          	auipc	ra,0x1
    80002728:	b50080e7          	jalr	-1200(ra) # 80003274 <_Z12printIntegerm>
    printString("\n");
    8000272c:	00004517          	auipc	a0,0x4
    80002730:	95c50513          	addi	a0,a0,-1700 # 80006088 <CONSOLE_STATUS+0x78>
    80002734:	00001097          	auipc	ra,0x1
    80002738:	ad0080e7          	jalr	-1328(ra) # 80003204 <_Z11printStringPKc>
}
    8000273c:	01813083          	ld	ra,24(sp)
    80002740:	01013403          	ld	s0,16(sp)
    80002744:	00813483          	ld	s1,8(sp)
    80002748:	00013903          	ld	s2,0(sp)
    8000274c:	02010113          	addi	sp,sp,32
    80002750:	00008067          	ret

0000000080002754 <_ZN19MemoryAllocatorTest13firstFitTest2Ev>:

bool MemoryAllocatorTest::firstFitTest2() {
    80002754:	fc010113          	addi	sp,sp,-64
    80002758:	02113c23          	sd	ra,56(sp)
    8000275c:	02813823          	sd	s0,48(sp)
    80002760:	02913423          	sd	s1,40(sp)
    80002764:	03213023          	sd	s2,32(sp)
    80002768:	01313c23          	sd	s3,24(sp)
    8000276c:	01413823          	sd	s4,16(sp)
    80002770:	01513423          	sd	s5,8(sp)
    80002774:	04010413          	addi	s0,sp,64
    80002778:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    8000277c:	00000097          	auipc	ra,0x0
    80002780:	974080e7          	jalr	-1676(ra) # 800020f0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002784:	02051463          	bnez	a0,800027ac <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x58>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002788:	03813083          	ld	ra,56(sp)
    8000278c:	03013403          	ld	s0,48(sp)
    80002790:	02813483          	ld	s1,40(sp)
    80002794:	02013903          	ld	s2,32(sp)
    80002798:	01813983          	ld	s3,24(sp)
    8000279c:	01013a03          	ld	s4,16(sp)
    800027a0:	00813a83          	ld	s5,8(sp)
    800027a4:	04010113          	addi	sp,sp,64
    800027a8:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    800027ac:	fffff097          	auipc	ra,0xfffff
    800027b0:	240080e7          	jalr	576(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    800027b4:	08200593          	li	a1,130
    800027b8:	fffff097          	auipc	ra,0xfffff
    800027bc:	318080e7          	jalr	792(ra) # 80001ad0 <_ZN15MemoryAllocator10kmem_allocEm>
    800027c0:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    800027c4:	00005797          	auipc	a5,0x5
    800027c8:	84c7b783          	ld	a5,-1972(a5) # 80007010 <_GLOBAL_OFFSET_TABLE_+0x68>
    800027cc:	0007b783          	ld	a5,0(a5)
    800027d0:	01078793          	addi	a5,a5,16
    800027d4:	00a78663          	beq	a5,a0,800027e0 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x8c>
        return false;
    800027d8:	00000513          	li	a0,0
    800027dc:	fadff06f          	j	80002788 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    800027e0:	fffff097          	auipc	ra,0xfffff
    800027e4:	20c080e7          	jalr	524(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    800027e8:	01400593          	li	a1,20
    800027ec:	fffff097          	auipc	ra,0xfffff
    800027f0:	2e4080e7          	jalr	740(ra) # 80001ad0 <_ZN15MemoryAllocator10kmem_allocEm>
    800027f4:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 3 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    800027f8:	00005797          	auipc	a5,0x5
    800027fc:	8187b783          	ld	a5,-2024(a5) # 80007010 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002800:	0007b783          	ld	a5,0(a5)
    80002804:	0d078793          	addi	a5,a5,208
    80002808:	00a78663          	beq	a5,a0,80002814 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0xc0>
        return false;
    8000280c:	00000513          	li	a0,0
    80002810:	f79ff06f          	j	80002788 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    80002814:	fffff097          	auipc	ra,0xfffff
    80002818:	1d8080e7          	jalr	472(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    8000281c:	00090593          	mv	a1,s2
    80002820:	fffff097          	auipc	ra,0xfffff
    80002824:	358080e7          	jalr	856(ra) # 80001b78 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    80002828:	fffff097          	auipc	ra,0xfffff
    8000282c:	1c4080e7          	jalr	452(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002830:	07800593          	li	a1,120
    80002834:	fffff097          	auipc	ra,0xfffff
    80002838:	29c080e7          	jalr	668(ra) # 80001ad0 <_ZN15MemoryAllocator10kmem_allocEm>
    8000283c:	00050913          	mv	s2,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002840:	00004797          	auipc	a5,0x4
    80002844:	7d07b783          	ld	a5,2000(a5) # 80007010 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002848:	0007b783          	ld	a5,0(a5)
    8000284c:	01078793          	addi	a5,a5,16
    80002850:	00a78663          	beq	a5,a0,8000285c <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x108>
        return false;
    80002854:	00000513          	li	a0,0
    80002858:	f31ff06f          	j	80002788 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    8000285c:	fffff097          	auipc	ra,0xfffff
    80002860:	190080e7          	jalr	400(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002864:	01e00593          	li	a1,30
    80002868:	fffff097          	auipc	ra,0xfffff
    8000286c:	268080e7          	jalr	616(ra) # 80001ad0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002870:	00050a13          	mv	s4,a0
    if (pointers[3] != MemoryAllocator::managedMemorySpaceStart + 4 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002874:	00004797          	auipc	a5,0x4
    80002878:	79c7b783          	ld	a5,1948(a5) # 80007010 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000287c:	0007b783          	ld	a5,0(a5)
    80002880:	11078793          	addi	a5,a5,272
    80002884:	00a78663          	beq	a5,a0,80002890 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x13c>
        return false;
    80002888:	00000513          	li	a0,0
    8000288c:	efdff06f          	j	80002788 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002890:	fffff097          	auipc	ra,0xfffff
    80002894:	15c080e7          	jalr	348(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002898:	00090593          	mv	a1,s2
    8000289c:	fffff097          	auipc	ra,0xfffff
    800028a0:	2dc080e7          	jalr	732(ra) # 80001b78 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    800028a4:	fffff097          	auipc	ra,0xfffff
    800028a8:	148080e7          	jalr	328(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    800028ac:	02f00593          	li	a1,47
    800028b0:	fffff097          	auipc	ra,0xfffff
    800028b4:	220080e7          	jalr	544(ra) # 80001ad0 <_ZN15MemoryAllocator10kmem_allocEm>
    800028b8:	00050913          	mv	s2,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    800028bc:	00004797          	auipc	a5,0x4
    800028c0:	7547b783          	ld	a5,1876(a5) # 80007010 <_GLOBAL_OFFSET_TABLE_+0x68>
    800028c4:	0007b783          	ld	a5,0(a5)
    800028c8:	01078793          	addi	a5,a5,16
    800028cc:	00a78663          	beq	a5,a0,800028d8 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x184>
        return false;
    800028d0:	00000513          	li	a0,0
    800028d4:	eb5ff06f          	j	80002788 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[5] = MemoryAllocator::instance()->kmem_alloc(sizes[5]);
    800028d8:	fffff097          	auipc	ra,0xfffff
    800028dc:	114080e7          	jalr	276(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    800028e0:	01400593          	li	a1,20
    800028e4:	fffff097          	auipc	ra,0xfffff
    800028e8:	1ec080e7          	jalr	492(ra) # 80001ad0 <_ZN15MemoryAllocator10kmem_allocEm>
    800028ec:	00050a93          	mv	s5,a0
    if (pointers[5] != MemoryAllocator::managedMemorySpaceStart + 1 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    800028f0:	00004797          	auipc	a5,0x4
    800028f4:	7207b783          	ld	a5,1824(a5) # 80007010 <_GLOBAL_OFFSET_TABLE_+0x68>
    800028f8:	0007b783          	ld	a5,0(a5)
    800028fc:	05078793          	addi	a5,a5,80
    80002900:	00a78663          	beq	a5,a0,8000290c <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x1b8>
        return false;
    80002904:	00000513          	li	a0,0
    80002908:	e81ff06f          	j	80002788 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    if (!testMemoryMetadataValidity()) return false;
    8000290c:	00048513          	mv	a0,s1
    80002910:	fffff097          	auipc	ra,0xfffff
    80002914:	7e0080e7          	jalr	2016(ra) # 800020f0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002918:	e60508e3          	beqz	a0,80002788 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    8000291c:	fffff097          	auipc	ra,0xfffff
    80002920:	0d0080e7          	jalr	208(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002924:	00098593          	mv	a1,s3
    80002928:	fffff097          	auipc	ra,0xfffff
    8000292c:	250080e7          	jalr	592(ra) # 80001b78 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002930:	fffff097          	auipc	ra,0xfffff
    80002934:	0bc080e7          	jalr	188(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002938:	000a0593          	mv	a1,s4
    8000293c:	fffff097          	auipc	ra,0xfffff
    80002940:	23c080e7          	jalr	572(ra) # 80001b78 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80002944:	fffff097          	auipc	ra,0xfffff
    80002948:	0a8080e7          	jalr	168(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    8000294c:	00090593          	mv	a1,s2
    80002950:	fffff097          	auipc	ra,0xfffff
    80002954:	228080e7          	jalr	552(ra) # 80001b78 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    80002958:	fffff097          	auipc	ra,0xfffff
    8000295c:	094080e7          	jalr	148(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002960:	000a8593          	mv	a1,s5
    80002964:	fffff097          	auipc	ra,0xfffff
    80002968:	214080e7          	jalr	532(ra) # 80001b78 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    8000296c:	00048513          	mv	a0,s1
    80002970:	fffff097          	auipc	ra,0xfffff
    80002974:	780080e7          	jalr	1920(ra) # 800020f0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002978:	e11ff06f          	j	80002788 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>

000000008000297c <_ZN19MemoryAllocatorTest13firstFitTest3Ev>:


bool MemoryAllocatorTest::firstFitTest3() {
    8000297c:	fb010113          	addi	sp,sp,-80
    80002980:	04113423          	sd	ra,72(sp)
    80002984:	04813023          	sd	s0,64(sp)
    80002988:	02913c23          	sd	s1,56(sp)
    8000298c:	03213823          	sd	s2,48(sp)
    80002990:	03313423          	sd	s3,40(sp)
    80002994:	03413023          	sd	s4,32(sp)
    80002998:	01513c23          	sd	s5,24(sp)
    8000299c:	01613823          	sd	s6,16(sp)
    800029a0:	01713423          	sd	s7,8(sp)
    800029a4:	05010413          	addi	s0,sp,80
    800029a8:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    800029ac:	fffff097          	auipc	ra,0xfffff
    800029b0:	744080e7          	jalr	1860(ra) # 800020f0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800029b4:	02051863          	bnez	a0,800029e4 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x68>
    MemoryAllocator::instance()->kmem_free(pointers[6]);
    MemoryAllocator::instance()->kmem_free(pointers[7]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    800029b8:	04813083          	ld	ra,72(sp)
    800029bc:	04013403          	ld	s0,64(sp)
    800029c0:	03813483          	ld	s1,56(sp)
    800029c4:	03013903          	ld	s2,48(sp)
    800029c8:	02813983          	ld	s3,40(sp)
    800029cc:	02013a03          	ld	s4,32(sp)
    800029d0:	01813a83          	ld	s5,24(sp)
    800029d4:	01013b03          	ld	s6,16(sp)
    800029d8:	00813b83          	ld	s7,8(sp)
    800029dc:	05010113          	addi	sp,sp,80
    800029e0:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    800029e4:	fffff097          	auipc	ra,0xfffff
    800029e8:	008080e7          	jalr	8(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    800029ec:	13000593          	li	a1,304
    800029f0:	fffff097          	auipc	ra,0xfffff
    800029f4:	0e0080e7          	jalr	224(ra) # 80001ad0 <_ZN15MemoryAllocator10kmem_allocEm>
    800029f8:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    800029fc:	00004797          	auipc	a5,0x4
    80002a00:	6147b783          	ld	a5,1556(a5) # 80007010 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a04:	0007b783          	ld	a5,0(a5)
    80002a08:	01078793          	addi	a5,a5,16
    80002a0c:	00a78663          	beq	a5,a0,80002a18 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x9c>
        return false;
    80002a10:	00000513          	li	a0,0
    80002a14:	fa5ff06f          	j	800029b8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    80002a18:	fffff097          	auipc	ra,0xfffff
    80002a1c:	fd4080e7          	jalr	-44(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002a20:	03100593          	li	a1,49
    80002a24:	fffff097          	auipc	ra,0xfffff
    80002a28:	0ac080e7          	jalr	172(ra) # 80001ad0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002a2c:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 5 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002a30:	00004797          	auipc	a5,0x4
    80002a34:	5e07b783          	ld	a5,1504(a5) # 80007010 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a38:	0007b783          	ld	a5,0(a5)
    80002a3c:	15078793          	addi	a5,a5,336
    80002a40:	00a78663          	beq	a5,a0,80002a4c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0xd0>
        return false;
    80002a44:	00000513          	li	a0,0
    80002a48:	f71ff06f          	j	800029b8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    80002a4c:	fffff097          	auipc	ra,0xfffff
    80002a50:	fa0080e7          	jalr	-96(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002a54:	00090593          	mv	a1,s2
    80002a58:	fffff097          	auipc	ra,0xfffff
    80002a5c:	120080e7          	jalr	288(ra) # 80001b78 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    80002a60:	fffff097          	auipc	ra,0xfffff
    80002a64:	f8c080e7          	jalr	-116(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002a68:	0e600593          	li	a1,230
    80002a6c:	fffff097          	auipc	ra,0xfffff
    80002a70:	064080e7          	jalr	100(ra) # 80001ad0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002a74:	00050913          	mv	s2,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002a78:	00004797          	auipc	a5,0x4
    80002a7c:	5987b783          	ld	a5,1432(a5) # 80007010 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a80:	0007b783          	ld	a5,0(a5)
    80002a84:	01078793          	addi	a5,a5,16
    80002a88:	00a78663          	beq	a5,a0,80002a94 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x118>
        return false;
    80002a8c:	00000513          	li	a0,0
    80002a90:	f29ff06f          	j	800029b8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002a94:	fffff097          	auipc	ra,0xfffff
    80002a98:	f58080e7          	jalr	-168(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002a9c:	fdb00593          	li	a1,-37
    80002aa0:	fffff097          	auipc	ra,0xfffff
    80002aa4:	030080e7          	jalr	48(ra) # 80001ad0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002aa8:	00050a13          	mv	s4,a0
    if (pointers[3]) return false;
    80002aac:	00050663          	beqz	a0,80002ab8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x13c>
    80002ab0:	00000513          	li	a0,0
    80002ab4:	f05ff06f          	j	800029b8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002ab8:	fffff097          	auipc	ra,0xfffff
    80002abc:	f34080e7          	jalr	-204(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002ac0:	01e00593          	li	a1,30
    80002ac4:	fffff097          	auipc	ra,0xfffff
    80002ac8:	00c080e7          	jalr	12(ra) # 80001ad0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002acc:	00050a93          	mv	s5,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + 7 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002ad0:	00004797          	auipc	a5,0x4
    80002ad4:	5407b783          	ld	a5,1344(a5) # 80007010 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002ad8:	0007b783          	ld	a5,0(a5)
    80002adc:	1d078793          	addi	a5,a5,464
    80002ae0:	00a78663          	beq	a5,a0,80002aec <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x170>
        return false;
    80002ae4:	00000513          	li	a0,0
    80002ae8:	ed1ff06f          	j	800029b8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002aec:	fffff097          	auipc	ra,0xfffff
    80002af0:	f00080e7          	jalr	-256(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002af4:	00090593          	mv	a1,s2
    80002af8:	fffff097          	auipc	ra,0xfffff
    80002afc:	080080e7          	jalr	128(ra) # 80001b78 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[5] = MemoryAllocator::instance()->kmem_alloc(sizes[5]);
    80002b00:	fffff097          	auipc	ra,0xfffff
    80002b04:	eec080e7          	jalr	-276(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002b08:	09600593          	li	a1,150
    80002b0c:	fffff097          	auipc	ra,0xfffff
    80002b10:	fc4080e7          	jalr	-60(ra) # 80001ad0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002b14:	00050b93          	mv	s7,a0
    if (pointers[5] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002b18:	00004797          	auipc	a5,0x4
    80002b1c:	4f87b783          	ld	a5,1272(a5) # 80007010 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b20:	0007b783          	ld	a5,0(a5)
    80002b24:	01078793          	addi	a5,a5,16
    80002b28:	00a78663          	beq	a5,a0,80002b34 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x1b8>
        return false;
    80002b2c:	00000513          	li	a0,0
    80002b30:	e89ff06f          	j	800029b8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[6] = MemoryAllocator::instance()->kmem_alloc(sizes[6]);
    80002b34:	fffff097          	auipc	ra,0xfffff
    80002b38:	eb8080e7          	jalr	-328(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002b3c:	02f00593          	li	a1,47
    80002b40:	fffff097          	auipc	ra,0xfffff
    80002b44:	f90080e7          	jalr	-112(ra) # 80001ad0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002b48:	00050b13          	mv	s6,a0
    if (pointers[6] != MemoryAllocator::managedMemorySpaceStart + 3 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002b4c:	00004797          	auipc	a5,0x4
    80002b50:	4c47b783          	ld	a5,1220(a5) # 80007010 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b54:	0007b783          	ld	a5,0(a5)
    80002b58:	0d078793          	addi	a5,a5,208
    80002b5c:	00a78663          	beq	a5,a0,80002b68 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x1ec>
        return false;
    80002b60:	00000513          	li	a0,0
    80002b64:	e55ff06f          	j	800029b8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[7] = MemoryAllocator::instance()->kmem_alloc(sizes[7]);
    80002b68:	fffff097          	auipc	ra,0xfffff
    80002b6c:	e84080e7          	jalr	-380(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002b70:	02500593          	li	a1,37
    80002b74:	fffff097          	auipc	ra,0xfffff
    80002b78:	f5c080e7          	jalr	-164(ra) # 80001ad0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002b7c:	00050913          	mv	s2,a0
    if (pointers[7] != MemoryAllocator::managedMemorySpaceStart + 8 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002b80:	00004797          	auipc	a5,0x4
    80002b84:	4907b783          	ld	a5,1168(a5) # 80007010 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b88:	0007b783          	ld	a5,0(a5)
    80002b8c:	21078793          	addi	a5,a5,528
    80002b90:	00a78663          	beq	a5,a0,80002b9c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x220>
        return false;
    80002b94:	00000513          	li	a0,0
    80002b98:	e21ff06f          	j	800029b8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    if (!testMemoryMetadataValidity()) return false;
    80002b9c:	00048513          	mv	a0,s1
    80002ba0:	fffff097          	auipc	ra,0xfffff
    80002ba4:	550080e7          	jalr	1360(ra) # 800020f0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002ba8:	e00508e3          	beqz	a0,800029b8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002bac:	fffff097          	auipc	ra,0xfffff
    80002bb0:	e40080e7          	jalr	-448(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002bb4:	00098593          	mv	a1,s3
    80002bb8:	fffff097          	auipc	ra,0xfffff
    80002bbc:	fc0080e7          	jalr	-64(ra) # 80001b78 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002bc0:	fffff097          	auipc	ra,0xfffff
    80002bc4:	e2c080e7          	jalr	-468(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002bc8:	000a0593          	mv	a1,s4
    80002bcc:	fffff097          	auipc	ra,0xfffff
    80002bd0:	fac080e7          	jalr	-84(ra) # 80001b78 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80002bd4:	fffff097          	auipc	ra,0xfffff
    80002bd8:	e18080e7          	jalr	-488(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002bdc:	000a8593          	mv	a1,s5
    80002be0:	fffff097          	auipc	ra,0xfffff
    80002be4:	f98080e7          	jalr	-104(ra) # 80001b78 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    80002be8:	fffff097          	auipc	ra,0xfffff
    80002bec:	e04080e7          	jalr	-508(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002bf0:	000b8593          	mv	a1,s7
    80002bf4:	fffff097          	auipc	ra,0xfffff
    80002bf8:	f84080e7          	jalr	-124(ra) # 80001b78 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[6]);
    80002bfc:	fffff097          	auipc	ra,0xfffff
    80002c00:	df0080e7          	jalr	-528(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002c04:	000b0593          	mv	a1,s6
    80002c08:	fffff097          	auipc	ra,0xfffff
    80002c0c:	f70080e7          	jalr	-144(ra) # 80001b78 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[7]);
    80002c10:	fffff097          	auipc	ra,0xfffff
    80002c14:	ddc080e7          	jalr	-548(ra) # 800019ec <_ZN15MemoryAllocator8instanceEv>
    80002c18:	00090593          	mv	a1,s2
    80002c1c:	fffff097          	auipc	ra,0xfffff
    80002c20:	f5c080e7          	jalr	-164(ra) # 80001b78 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002c24:	00048513          	mv	a0,s1
    80002c28:	fffff097          	auipc	ra,0xfffff
    80002c2c:	4c8080e7          	jalr	1224(ra) # 800020f0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002c30:	d89ff06f          	j	800029b8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>

0000000080002c34 <_ZN19MemoryAllocatorTest12testFirstFitEv>:
bool MemoryAllocatorTest::testFirstFit() {
    80002c34:	fe010113          	addi	sp,sp,-32
    80002c38:	00113c23          	sd	ra,24(sp)
    80002c3c:	00813823          	sd	s0,16(sp)
    80002c40:	00913423          	sd	s1,8(sp)
    80002c44:	02010413          	addi	s0,sp,32
    80002c48:	00050493          	mv	s1,a0
    if (!firstFitTest1()) return false;
    80002c4c:	00000097          	auipc	ra,0x0
    80002c50:	854080e7          	jalr	-1964(ra) # 800024a0 <_ZN19MemoryAllocatorTest13firstFitTest1Ev>
    80002c54:	00051c63          	bnez	a0,80002c6c <_ZN19MemoryAllocatorTest12testFirstFitEv+0x38>
}
    80002c58:	01813083          	ld	ra,24(sp)
    80002c5c:	01013403          	ld	s0,16(sp)
    80002c60:	00813483          	ld	s1,8(sp)
    80002c64:	02010113          	addi	sp,sp,32
    80002c68:	00008067          	ret
    if (!firstFitTest2()) return false;
    80002c6c:	00048513          	mv	a0,s1
    80002c70:	00000097          	auipc	ra,0x0
    80002c74:	ae4080e7          	jalr	-1308(ra) # 80002754 <_ZN19MemoryAllocatorTest13firstFitTest2Ev>
    80002c78:	fe0500e3          	beqz	a0,80002c58 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x24>
    if (!firstFitTest3()) return false;
    80002c7c:	00048513          	mv	a0,s1
    80002c80:	00000097          	auipc	ra,0x0
    80002c84:	cfc080e7          	jalr	-772(ra) # 8000297c <_ZN19MemoryAllocatorTest13firstFitTest3Ev>
    80002c88:	fd1ff06f          	j	80002c58 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x24>

0000000080002c8c <_ZN19MemoryAllocatorTest25testSegmentDescriptorSizeEv>:

bool MemoryAllocatorTest::testSegmentDescriptorSize() {
    80002c8c:	ff010113          	addi	sp,sp,-16
    80002c90:	00113423          	sd	ra,8(sp)
    80002c94:	00813023          	sd	s0,0(sp)
    80002c98:	01010413          	addi	s0,sp,16
    if (!testMemoryMetadataValidity()) return false;
    80002c9c:	fffff097          	auipc	ra,0xfffff
    80002ca0:	454080e7          	jalr	1108(ra) # 800020f0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    return sizeof(MemoryAllocator::SegmentDescriptor) == 16;
}
    80002ca4:	00813083          	ld	ra,8(sp)
    80002ca8:	00013403          	ld	s0,0(sp)
    80002cac:	01010113          	addi	sp,sp,16
    80002cb0:	00008067          	ret

0000000080002cb4 <_ZN19MemoryAllocatorTest8runTestsEv>:
bool MemoryAllocatorTest::runTests() {
    80002cb4:	f6010113          	addi	sp,sp,-160
    80002cb8:	08113c23          	sd	ra,152(sp)
    80002cbc:	08813823          	sd	s0,144(sp)
    80002cc0:	08913423          	sd	s1,136(sp)
    80002cc4:	09213023          	sd	s2,128(sp)
    80002cc8:	07313c23          	sd	s3,120(sp)
    80002ccc:	0a010413          	addi	s0,sp,160
    80002cd0:	00050993          	mv	s3,a0
    sizes[0] = 3.7 * MEM_BLOCK_SIZE;
    80002cd4:	0ec00793          	li	a5,236
    80002cd8:	f6f43423          	sd	a5,-152(s0)
    sizes[1] = MEM_BLOCK_SIZE;
    80002cdc:	04000793          	li	a5,64
    80002ce0:	f6f43823          	sd	a5,-144(s0)
    sizes[2] = 0.3 * MEM_BLOCK_SIZE;
    80002ce4:	01300793          	li	a5,19
    80002ce8:	f6f43c23          	sd	a5,-136(s0)
    sizes[3] = 0;
    80002cec:	f8043023          	sd	zero,-128(s0)
    sizes[4] = -37;
    80002cf0:	fdb00793          	li	a5,-37
    80002cf4:	f8f43423          	sd	a5,-120(s0)
    sizes[5] = sizeof(MemoryAllocator::SegmentDescriptor) - 1;
    80002cf8:	00f00793          	li	a5,15
    80002cfc:	f8f43823          	sd	a5,-112(s0)
    sizes[6] = sizeof(MemoryAllocator::SegmentDescriptor);
    80002d00:	01000793          	li	a5,16
    80002d04:	f8f43c23          	sd	a5,-104(s0)
    sizes[7] = sizeof(MemoryAllocator::SegmentDescriptor) + 1;
    80002d08:	01100793          	li	a5,17
    80002d0c:	faf43023          	sd	a5,-96(s0)
    sizes[8] = MemoryAllocator::minMemoryFragmentSize - 1;
    80002d10:	00004797          	auipc	a5,0x4
    80002d14:	2c87b783          	ld	a5,712(a5) # 80006fd8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002d18:	0007b783          	ld	a5,0(a5)
    80002d1c:	fff78713          	addi	a4,a5,-1
    80002d20:	fae43423          	sd	a4,-88(s0)
    sizes[9] = MemoryAllocator::minMemoryFragmentSize;
    80002d24:	faf43823          	sd	a5,-80(s0)
    sizes[10] = MemoryAllocator::minMemoryFragmentSize + 1;
    80002d28:	00178793          	addi	a5,a5,1
    80002d2c:	faf43c23          	sd	a5,-72(s0)
    sizes[11] = MEM_BLOCK_SIZE - 1;
    80002d30:	03f00793          	li	a5,63
    80002d34:	fcf43023          	sd	a5,-64(s0)
    sizes[12] = MEM_BLOCK_SIZE + 1;
    80002d38:	04100793          	li	a5,65
    80002d3c:	fcf43423          	sd	a5,-56(s0)
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    80002d40:	00000493          	li	s1,0
    80002d44:	0880006f          	j	80002dcc <_ZN19MemoryAllocatorTest8runTestsEv+0x118>
            printString("Failed testMemoryAllocate test for input ");
    80002d48:	00003517          	auipc	a0,0x3
    80002d4c:	6f850513          	addi	a0,a0,1784 # 80006440 <CONSOLE_STATUS+0x430>
    80002d50:	00000097          	auipc	ra,0x0
    80002d54:	4b4080e7          	jalr	1204(ra) # 80003204 <_Z11printStringPKc>
            printInteger(sizes[i]); printString("\n"); return false;
    80002d58:	00090513          	mv	a0,s2
    80002d5c:	00000097          	auipc	ra,0x0
    80002d60:	518080e7          	jalr	1304(ra) # 80003274 <_Z12printIntegerm>
    80002d64:	00003517          	auipc	a0,0x3
    80002d68:	32450513          	addi	a0,a0,804 # 80006088 <CONSOLE_STATUS+0x78>
    80002d6c:	00000097          	auipc	ra,0x0
    80002d70:	498080e7          	jalr	1176(ra) # 80003204 <_Z11printStringPKc>
    80002d74:	00000493          	li	s1,0
}
    80002d78:	00048513          	mv	a0,s1
    80002d7c:	09813083          	ld	ra,152(sp)
    80002d80:	09013403          	ld	s0,144(sp)
    80002d84:	08813483          	ld	s1,136(sp)
    80002d88:	08013903          	ld	s2,128(sp)
    80002d8c:	07813983          	ld	s3,120(sp)
    80002d90:	0a010113          	addi	sp,sp,160
    80002d94:	00008067          	ret
            printString("Failed testMemoryFree test for input ");
    80002d98:	00003517          	auipc	a0,0x3
    80002d9c:	6e050513          	addi	a0,a0,1760 # 80006478 <CONSOLE_STATUS+0x468>
    80002da0:	00000097          	auipc	ra,0x0
    80002da4:	464080e7          	jalr	1124(ra) # 80003204 <_Z11printStringPKc>
            printInteger(sizes[i]); printString("\n"); return false;
    80002da8:	00090513          	mv	a0,s2
    80002dac:	00000097          	auipc	ra,0x0
    80002db0:	4c8080e7          	jalr	1224(ra) # 80003274 <_Z12printIntegerm>
    80002db4:	00003517          	auipc	a0,0x3
    80002db8:	2d450513          	addi	a0,a0,724 # 80006088 <CONSOLE_STATUS+0x78>
    80002dbc:	00000097          	auipc	ra,0x0
    80002dc0:	448080e7          	jalr	1096(ra) # 80003204 <_Z11printStringPKc>
    80002dc4:	fb1ff06f          	j	80002d74 <_ZN19MemoryAllocatorTest8runTestsEv+0xc0>
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    80002dc8:	0014849b          	addiw	s1,s1,1
    80002dcc:	00c00793          	li	a5,12
    80002dd0:	0897c863          	blt	a5,s1,80002e60 <_ZN19MemoryAllocatorTest8runTestsEv+0x1ac>
        void * allocatedMemoryPointer = nullptr;
    80002dd4:	f6043023          	sd	zero,-160(s0)
        if (!testMemoryAllocate(sizes[i], &allocatedMemoryPointer)) {
    80002dd8:	00349793          	slli	a5,s1,0x3
    80002ddc:	fd040713          	addi	a4,s0,-48
    80002de0:	00f707b3          	add	a5,a4,a5
    80002de4:	f987b903          	ld	s2,-104(a5)
    80002de8:	f6040613          	addi	a2,s0,-160
    80002dec:	00090593          	mv	a1,s2
    80002df0:	00098513          	mv	a0,s3
    80002df4:	fffff097          	auipc	ra,0xfffff
    80002df8:	3b4080e7          	jalr	948(ra) # 800021a8 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>
    80002dfc:	f40506e3          	beqz	a0,80002d48 <_ZN19MemoryAllocatorTest8runTestsEv+0x94>
        } else printString("Passed ");
    80002e00:	00003517          	auipc	a0,0x3
    80002e04:	67050513          	addi	a0,a0,1648 # 80006470 <CONSOLE_STATUS+0x460>
    80002e08:	00000097          	auipc	ra,0x0
    80002e0c:	3fc080e7          	jalr	1020(ra) # 80003204 <_Z11printStringPKc>
        if (!testMemoryFree(sizes[i], allocatedMemoryPointer)) {
    80002e10:	f6043603          	ld	a2,-160(s0)
    80002e14:	00090593          	mv	a1,s2
    80002e18:	00098513          	mv	a0,s3
    80002e1c:	fffff097          	auipc	ra,0xfffff
    80002e20:	50c080e7          	jalr	1292(ra) # 80002328 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>
    80002e24:	f6050ae3          	beqz	a0,80002d98 <_ZN19MemoryAllocatorTest8runTestsEv+0xe4>
        } else printString("Passed ");
    80002e28:	00003517          	auipc	a0,0x3
    80002e2c:	64850513          	addi	a0,a0,1608 # 80006470 <CONSOLE_STATUS+0x460>
    80002e30:	00000097          	auipc	ra,0x0
    80002e34:	3d4080e7          	jalr	980(ra) # 80003204 <_Z11printStringPKc>
        if (i != 0 && (i + 1) % 5 == 0) printString("\n");
    80002e38:	f80488e3          	beqz	s1,80002dc8 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    80002e3c:	0014879b          	addiw	a5,s1,1
    80002e40:	00500713          	li	a4,5
    80002e44:	02e7e7bb          	remw	a5,a5,a4
    80002e48:	f80790e3          	bnez	a5,80002dc8 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    80002e4c:	00003517          	auipc	a0,0x3
    80002e50:	23c50513          	addi	a0,a0,572 # 80006088 <CONSOLE_STATUS+0x78>
    80002e54:	00000097          	auipc	ra,0x0
    80002e58:	3b0080e7          	jalr	944(ra) # 80003204 <_Z11printStringPKc>
    80002e5c:	f6dff06f          	j	80002dc8 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    if (!testFirstFit()) {
    80002e60:	00098513          	mv	a0,s3
    80002e64:	00000097          	auipc	ra,0x0
    80002e68:	dd0080e7          	jalr	-560(ra) # 80002c34 <_ZN19MemoryAllocatorTest12testFirstFitEv>
    80002e6c:	00050493          	mv	s1,a0
    80002e70:	02050e63          	beqz	a0,80002eac <_ZN19MemoryAllocatorTest8runTestsEv+0x1f8>
    else printString("Passed ");
    80002e74:	00003517          	auipc	a0,0x3
    80002e78:	5fc50513          	addi	a0,a0,1532 # 80006470 <CONSOLE_STATUS+0x460>
    80002e7c:	00000097          	auipc	ra,0x0
    80002e80:	388080e7          	jalr	904(ra) # 80003204 <_Z11printStringPKc>
    if (!testSegmentDescriptorSize()) {
    80002e84:	00098513          	mv	a0,s3
    80002e88:	00000097          	auipc	ra,0x0
    80002e8c:	e04080e7          	jalr	-508(ra) # 80002c8c <_ZN19MemoryAllocatorTest25testSegmentDescriptorSizeEv>
    80002e90:	00050493          	mv	s1,a0
    80002e94:	02050663          	beqz	a0,80002ec0 <_ZN19MemoryAllocatorTest8runTestsEv+0x20c>
    else printString("Passed\n");
    80002e98:	00003517          	auipc	a0,0x3
    80002e9c:	64850513          	addi	a0,a0,1608 # 800064e0 <CONSOLE_STATUS+0x4d0>
    80002ea0:	00000097          	auipc	ra,0x0
    80002ea4:	364080e7          	jalr	868(ra) # 80003204 <_Z11printStringPKc>
    80002ea8:	ed1ff06f          	j	80002d78 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>
        printString("Failed testFirstFit\n"); return false; }
    80002eac:	00003517          	auipc	a0,0x3
    80002eb0:	5f450513          	addi	a0,a0,1524 # 800064a0 <CONSOLE_STATUS+0x490>
    80002eb4:	00000097          	auipc	ra,0x0
    80002eb8:	350080e7          	jalr	848(ra) # 80003204 <_Z11printStringPKc>
    80002ebc:	ebdff06f          	j	80002d78 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>
        printString("Failed testSegmentDescriptorSize\n"); return false; }
    80002ec0:	00003517          	auipc	a0,0x3
    80002ec4:	5f850513          	addi	a0,a0,1528 # 800064b8 <CONSOLE_STATUS+0x4a8>
    80002ec8:	00000097          	auipc	ra,0x0
    80002ecc:	33c080e7          	jalr	828(ra) # 80003204 <_Z11printStringPKc>
    80002ed0:	ea9ff06f          	j	80002d78 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>

0000000080002ed4 <_Znwm>:


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80002ed4:	ff010113          	addi	sp,sp,-16
    80002ed8:	00113423          	sd	ra,8(sp)
    80002edc:	00813023          	sd	s0,0(sp)
    80002ee0:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80002ee4:	00002097          	auipc	ra,0x2
    80002ee8:	604080e7          	jalr	1540(ra) # 800054e8 <__mem_alloc>
    //return MemoryAllocator::instance()->kmem_alloc(n);
}
    80002eec:	00813083          	ld	ra,8(sp)
    80002ef0:	00013403          	ld	s0,0(sp)
    80002ef4:	01010113          	addi	sp,sp,16
    80002ef8:	00008067          	ret

0000000080002efc <_Znam>:

void *operator new[](size_t n)
{
    80002efc:	ff010113          	addi	sp,sp,-16
    80002f00:	00113423          	sd	ra,8(sp)
    80002f04:	00813023          	sd	s0,0(sp)
    80002f08:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80002f0c:	00002097          	auipc	ra,0x2
    80002f10:	5dc080e7          	jalr	1500(ra) # 800054e8 <__mem_alloc>
    //return MemoryAllocator::instance()->kmem_alloc(n);
}
    80002f14:	00813083          	ld	ra,8(sp)
    80002f18:	00013403          	ld	s0,0(sp)
    80002f1c:	01010113          	addi	sp,sp,16
    80002f20:	00008067          	ret

0000000080002f24 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80002f24:	ff010113          	addi	sp,sp,-16
    80002f28:	00113423          	sd	ra,8(sp)
    80002f2c:	00813023          	sd	s0,0(sp)
    80002f30:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80002f34:	00002097          	auipc	ra,0x2
    80002f38:	4e8080e7          	jalr	1256(ra) # 8000541c <__mem_free>
    //MemoryAllocator::instance()->kmem_free(p);
}
    80002f3c:	00813083          	ld	ra,8(sp)
    80002f40:	00013403          	ld	s0,0(sp)
    80002f44:	01010113          	addi	sp,sp,16
    80002f48:	00008067          	ret

0000000080002f4c <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80002f4c:	ff010113          	addi	sp,sp,-16
    80002f50:	00113423          	sd	ra,8(sp)
    80002f54:	00813023          	sd	s0,0(sp)
    80002f58:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80002f5c:	00002097          	auipc	ra,0x2
    80002f60:	4c0080e7          	jalr	1216(ra) # 8000541c <__mem_free>
    //MemoryAllocator::instance()->kmem_free(p);
    80002f64:	00813083          	ld	ra,8(sp)
    80002f68:	00013403          	ld	s0,0(sp)
    80002f6c:	01010113          	addi	sp,sp,16
    80002f70:	00008067          	ret

0000000080002f74 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"

void Riscv::popSppSpie()
{
    80002f74:	ff010113          	addi	sp,sp,-16
    80002f78:	00813423          	sd	s0,8(sp)
    80002f7c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80002f80:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80002f84:	10200073          	sret
}
    80002f88:	00813403          	ld	s0,8(sp)
    80002f8c:	01010113          	addi	sp,sp,16
    80002f90:	00008067          	ret

0000000080002f94 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80002f94:	fa010113          	addi	sp,sp,-96
    80002f98:	04113c23          	sd	ra,88(sp)
    80002f9c:	04813823          	sd	s0,80(sp)
    80002fa0:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002fa4:	142027f3          	csrr	a5,scause
    80002fa8:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80002fac:	fc843703          	ld	a4,-56(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80002fb0:	ff870693          	addi	a3,a4,-8
    80002fb4:	00100793          	li	a5,1
    80002fb8:	02d7fa63          	bgeu	a5,a3,80002fec <_ZN5Riscv20handleSupervisorTrapEv+0x58>
        TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80002fbc:	fff00793          	li	a5,-1
    80002fc0:	03f79793          	slli	a5,a5,0x3f
    80002fc4:	00178793          	addi	a5,a5,1
    80002fc8:	06f70863          	beq	a4,a5,80003038 <_ZN5Riscv20handleSupervisorTrapEv+0xa4>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80002fcc:	fff00793          	li	a5,-1
    80002fd0:	03f79793          	slli	a5,a5,0x3f
    80002fd4:	00978793          	addi	a5,a5,9
    80002fd8:	0cf70c63          	beq	a4,a5,800030b0 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
    }
    else
    {
        // unexpected trap cause
    }
    80002fdc:	05813083          	ld	ra,88(sp)
    80002fe0:	05013403          	ld	s0,80(sp)
    80002fe4:	06010113          	addi	sp,sp,96
    80002fe8:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002fec:	141027f3          	csrr	a5,sepc
    80002ff0:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002ff4:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80002ff8:	00478793          	addi	a5,a5,4
    80002ffc:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003000:	100027f3          	csrr	a5,sstatus
    80003004:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80003008:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    8000300c:	faf43823          	sd	a5,-80(s0)
        TCB::timeSliceCounter = 0;
    80003010:	00004797          	auipc	a5,0x4
    80003014:	fc07b783          	ld	a5,-64(a5) # 80006fd0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003018:	0007b023          	sd	zero,0(a5)
        TCB::dispatch();
    8000301c:	fffff097          	auipc	ra,0xfffff
    80003020:	870080e7          	jalr	-1936(ra) # 8000188c <_ZN3TCB8dispatchEv>
        w_sstatus(sstatus);
    80003024:	fb043783          	ld	a5,-80(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80003028:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    8000302c:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80003030:	14179073          	csrw	sepc,a5
}
    80003034:	fa9ff06f          	j	80002fdc <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80003038:	00200793          	li	a5,2
    8000303c:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80003040:	00004717          	auipc	a4,0x4
    80003044:	f9073703          	ld	a4,-112(a4) # 80006fd0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003048:	00073783          	ld	a5,0(a4)
    8000304c:	00178793          	addi	a5,a5,1
    80003050:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80003054:	00004717          	auipc	a4,0x4
    80003058:	f9c73703          	ld	a4,-100(a4) # 80006ff0 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000305c:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80003060:	02073703          	ld	a4,32(a4)
    80003064:	f6e7ece3          	bltu	a5,a4,80002fdc <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80003068:	141027f3          	csrr	a5,sepc
    8000306c:	fef43423          	sd	a5,-24(s0)
    return sepc;
    80003070:	fe843783          	ld	a5,-24(s0)
            uint64 volatile sepc = r_sepc();
    80003074:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003078:	100027f3          	csrr	a5,sstatus
    8000307c:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    80003080:	fe043783          	ld	a5,-32(s0)
            uint64 volatile sstatus = r_sstatus();
    80003084:	fcf43023          	sd	a5,-64(s0)
            TCB::timeSliceCounter = 0;
    80003088:	00004797          	auipc	a5,0x4
    8000308c:	f487b783          	ld	a5,-184(a5) # 80006fd0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003090:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80003094:	ffffe097          	auipc	ra,0xffffe
    80003098:	7f8080e7          	jalr	2040(ra) # 8000188c <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    8000309c:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800030a0:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    800030a4:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800030a8:	14179073          	csrw	sepc,a5
}
    800030ac:	f31ff06f          	j	80002fdc <_ZN5Riscv20handleSupervisorTrapEv+0x48>
        console_handler();
    800030b0:	00002097          	auipc	ra,0x2
    800030b4:	604080e7          	jalr	1540(ra) # 800056b4 <console_handler>
    800030b8:	f25ff06f          	j	80002fdc <_ZN5Riscv20handleSupervisorTrapEv+0x48>

00000000800030bc <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    800030bc:	ff010113          	addi	sp,sp,-16
    800030c0:	00813423          	sd	s0,8(sp)
    800030c4:	01010413          	addi	s0,sp,16
    800030c8:	00100793          	li	a5,1
    800030cc:	00f50863          	beq	a0,a5,800030dc <_Z41__static_initialization_and_destruction_0ii+0x20>
    800030d0:	00813403          	ld	s0,8(sp)
    800030d4:	01010113          	addi	sp,sp,16
    800030d8:	00008067          	ret
    800030dc:	000107b7          	lui	a5,0x10
    800030e0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800030e4:	fef596e3          	bne	a1,a5,800030d0 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800030e8:	00004797          	auipc	a5,0x4
    800030ec:	fa878793          	addi	a5,a5,-88 # 80007090 <_ZN9Scheduler16readyThreadQueueE>
    800030f0:	0007b023          	sd	zero,0(a5)
    800030f4:	0007b423          	sd	zero,8(a5)
    800030f8:	fd9ff06f          	j	800030d0 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800030fc <_ZN9Scheduler3getEv>:
{
    800030fc:	fe010113          	addi	sp,sp,-32
    80003100:	00113c23          	sd	ra,24(sp)
    80003104:	00813823          	sd	s0,16(sp)
    80003108:	00913423          	sd	s1,8(sp)
    8000310c:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80003110:	00004517          	auipc	a0,0x4
    80003114:	f8053503          	ld	a0,-128(a0) # 80007090 <_ZN9Scheduler16readyThreadQueueE>
    80003118:	04050263          	beqz	a0,8000315c <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    8000311c:	00853783          	ld	a5,8(a0)
    80003120:	00004717          	auipc	a4,0x4
    80003124:	f6f73823          	sd	a5,-144(a4) # 80007090 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80003128:	02078463          	beqz	a5,80003150 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    8000312c:	00053483          	ld	s1,0(a0)
        delete elem;
    80003130:	00000097          	auipc	ra,0x0
    80003134:	df4080e7          	jalr	-524(ra) # 80002f24 <_ZdlPv>
}
    80003138:	00048513          	mv	a0,s1
    8000313c:	01813083          	ld	ra,24(sp)
    80003140:	01013403          	ld	s0,16(sp)
    80003144:	00813483          	ld	s1,8(sp)
    80003148:	02010113          	addi	sp,sp,32
    8000314c:	00008067          	ret
        if (!head) { tail = 0; }
    80003150:	00004797          	auipc	a5,0x4
    80003154:	f407b423          	sd	zero,-184(a5) # 80007098 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003158:	fd5ff06f          	j	8000312c <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    8000315c:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80003160:	fd9ff06f          	j	80003138 <_ZN9Scheduler3getEv+0x3c>

0000000080003164 <_ZN9Scheduler3putEP3TCB>:
{
    80003164:	fe010113          	addi	sp,sp,-32
    80003168:	00113c23          	sd	ra,24(sp)
    8000316c:	00813823          	sd	s0,16(sp)
    80003170:	00913423          	sd	s1,8(sp)
    80003174:	02010413          	addi	s0,sp,32
    80003178:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    8000317c:	01000513          	li	a0,16
    80003180:	00000097          	auipc	ra,0x0
    80003184:	d54080e7          	jalr	-684(ra) # 80002ed4 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80003188:	00953023          	sd	s1,0(a0)
    8000318c:	00053423          	sd	zero,8(a0)
        if (tail)
    80003190:	00004797          	auipc	a5,0x4
    80003194:	f087b783          	ld	a5,-248(a5) # 80007098 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003198:	02078263          	beqz	a5,800031bc <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    8000319c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800031a0:	00004797          	auipc	a5,0x4
    800031a4:	eea7bc23          	sd	a0,-264(a5) # 80007098 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800031a8:	01813083          	ld	ra,24(sp)
    800031ac:	01013403          	ld	s0,16(sp)
    800031b0:	00813483          	ld	s1,8(sp)
    800031b4:	02010113          	addi	sp,sp,32
    800031b8:	00008067          	ret
            head = tail = elem;
    800031bc:	00004797          	auipc	a5,0x4
    800031c0:	ed478793          	addi	a5,a5,-300 # 80007090 <_ZN9Scheduler16readyThreadQueueE>
    800031c4:	00a7b423          	sd	a0,8(a5)
    800031c8:	00a7b023          	sd	a0,0(a5)
    800031cc:	fddff06f          	j	800031a8 <_ZN9Scheduler3putEP3TCB+0x44>

00000000800031d0 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800031d0:	ff010113          	addi	sp,sp,-16
    800031d4:	00113423          	sd	ra,8(sp)
    800031d8:	00813023          	sd	s0,0(sp)
    800031dc:	01010413          	addi	s0,sp,16
    800031e0:	000105b7          	lui	a1,0x10
    800031e4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800031e8:	00100513          	li	a0,1
    800031ec:	00000097          	auipc	ra,0x0
    800031f0:	ed0080e7          	jalr	-304(ra) # 800030bc <_Z41__static_initialization_and_destruction_0ii>
    800031f4:	00813083          	ld	ra,8(sp)
    800031f8:	00013403          	ld	s0,0(sp)
    800031fc:	01010113          	addi	sp,sp,16
    80003200:	00008067          	ret

0000000080003204 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80003204:	fd010113          	addi	sp,sp,-48
    80003208:	02113423          	sd	ra,40(sp)
    8000320c:	02813023          	sd	s0,32(sp)
    80003210:	00913c23          	sd	s1,24(sp)
    80003214:	01213823          	sd	s2,16(sp)
    80003218:	03010413          	addi	s0,sp,48
    8000321c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003220:	100027f3          	csrr	a5,sstatus
    80003224:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80003228:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000322c:	00200793          	li	a5,2
    80003230:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    while (*string != '\0') __putc(*string++);
    80003234:	0004c503          	lbu	a0,0(s1)
    80003238:	00050a63          	beqz	a0,8000324c <_Z11printStringPKc+0x48>
    8000323c:	00148493          	addi	s1,s1,1
    80003240:	00002097          	auipc	ra,0x2
    80003244:	400080e7          	jalr	1024(ra) # 80005640 <__putc>
    80003248:	fedff06f          	j	80003234 <_Z11printStringPKc+0x30>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    8000324c:	0009091b          	sext.w	s2,s2
    80003250:	00297913          	andi	s2,s2,2
    80003254:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80003258:	10092073          	csrs	sstatus,s2
}
    8000325c:	02813083          	ld	ra,40(sp)
    80003260:	02013403          	ld	s0,32(sp)
    80003264:	01813483          	ld	s1,24(sp)
    80003268:	01013903          	ld	s2,16(sp)
    8000326c:	03010113          	addi	sp,sp,48
    80003270:	00008067          	ret

0000000080003274 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80003274:	fc010113          	addi	sp,sp,-64
    80003278:	02113c23          	sd	ra,56(sp)
    8000327c:	02813823          	sd	s0,48(sp)
    80003280:	02913423          	sd	s1,40(sp)
    80003284:	03213023          	sd	s2,32(sp)
    80003288:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000328c:	100027f3          	csrr	a5,sstatus
    80003290:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80003294:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80003298:	00200793          	li	a5,2
    8000329c:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    static char digits[] = "0123456789";
    char buf[16]; int i = 0; uint64 x = integer;
    int neg = (integer & ((uint64)1 << 63)) != 0;
    800032a0:	00050593          	mv	a1,a0

    if (neg) x = ~integer + 1;
    800032a4:	06054463          	bltz	a0,8000330c <_Z12printIntegerm+0x98>
{
    800032a8:	00000493          	li	s1,0

    do buf[i++] = digits[x % 10];
    800032ac:	00a00713          	li	a4,10
    800032b0:	02e57633          	remu	a2,a0,a4
    800032b4:	00048693          	mv	a3,s1
    800032b8:	0014849b          	addiw	s1,s1,1
    800032bc:	00003797          	auipc	a5,0x3
    800032c0:	22c78793          	addi	a5,a5,556 # 800064e8 <_ZZ12printIntegermE6digits>
    800032c4:	00c787b3          	add	a5,a5,a2
    800032c8:	0007c603          	lbu	a2,0(a5)
    800032cc:	fe040793          	addi	a5,s0,-32
    800032d0:	00d787b3          	add	a5,a5,a3
    800032d4:	fec78823          	sb	a2,-16(a5)
    while ((x /= 10) != 0);
    800032d8:	00050613          	mv	a2,a0
    800032dc:	02e55533          	divu	a0,a0,a4
    800032e0:	00900793          	li	a5,9
    800032e4:	fcc7e4e3          	bltu	a5,a2,800032ac <_Z12printIntegerm+0x38>

    if (neg) buf[i++] = '-';
    800032e8:	0205c663          	bltz	a1,80003314 <_Z12printIntegerm+0xa0>
    while (--i >= 0) { __putc(buf[i]); }
    800032ec:	fff4849b          	addiw	s1,s1,-1
    800032f0:	0204ce63          	bltz	s1,8000332c <_Z12printIntegerm+0xb8>
    800032f4:	fe040793          	addi	a5,s0,-32
    800032f8:	009787b3          	add	a5,a5,s1
    800032fc:	ff07c503          	lbu	a0,-16(a5)
    80003300:	00002097          	auipc	ra,0x2
    80003304:	340080e7          	jalr	832(ra) # 80005640 <__putc>
    80003308:	fe5ff06f          	j	800032ec <_Z12printIntegerm+0x78>
    if (neg) x = ~integer + 1;
    8000330c:	40a00533          	neg	a0,a0
    80003310:	f99ff06f          	j	800032a8 <_Z12printIntegerm+0x34>
    if (neg) buf[i++] = '-';
    80003314:	fe040793          	addi	a5,s0,-32
    80003318:	009784b3          	add	s1,a5,s1
    8000331c:	02d00793          	li	a5,45
    80003320:	fef48823          	sb	a5,-16(s1)
    80003324:	0026849b          	addiw	s1,a3,2
    80003328:	fc5ff06f          	j	800032ec <_Z12printIntegerm+0x78>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    8000332c:	0009091b          	sext.w	s2,s2
    80003330:	00297913          	andi	s2,s2,2
    80003334:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80003338:	10092073          	csrs	sstatus,s2
}
    8000333c:	03813083          	ld	ra,56(sp)
    80003340:	03013403          	ld	s0,48(sp)
    80003344:	02813483          	ld	s1,40(sp)
    80003348:	02013903          	ld	s2,32(sp)
    8000334c:	04010113          	addi	sp,sp,64
    80003350:	00008067          	ret

0000000080003354 <start>:
    80003354:	ff010113          	addi	sp,sp,-16
    80003358:	00813423          	sd	s0,8(sp)
    8000335c:	01010413          	addi	s0,sp,16
    80003360:	300027f3          	csrr	a5,mstatus
    80003364:	ffffe737          	lui	a4,0xffffe
    80003368:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff64ef>
    8000336c:	00e7f7b3          	and	a5,a5,a4
    80003370:	00001737          	lui	a4,0x1
    80003374:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003378:	00e7e7b3          	or	a5,a5,a4
    8000337c:	30079073          	csrw	mstatus,a5
    80003380:	00000797          	auipc	a5,0x0
    80003384:	16078793          	addi	a5,a5,352 # 800034e0 <system_main>
    80003388:	34179073          	csrw	mepc,a5
    8000338c:	00000793          	li	a5,0
    80003390:	18079073          	csrw	satp,a5
    80003394:	000107b7          	lui	a5,0x10
    80003398:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000339c:	30279073          	csrw	medeleg,a5
    800033a0:	30379073          	csrw	mideleg,a5
    800033a4:	104027f3          	csrr	a5,sie
    800033a8:	2227e793          	ori	a5,a5,546
    800033ac:	10479073          	csrw	sie,a5
    800033b0:	fff00793          	li	a5,-1
    800033b4:	00a7d793          	srli	a5,a5,0xa
    800033b8:	3b079073          	csrw	pmpaddr0,a5
    800033bc:	00f00793          	li	a5,15
    800033c0:	3a079073          	csrw	pmpcfg0,a5
    800033c4:	f14027f3          	csrr	a5,mhartid
    800033c8:	0200c737          	lui	a4,0x200c
    800033cc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800033d0:	0007869b          	sext.w	a3,a5
    800033d4:	00269713          	slli	a4,a3,0x2
    800033d8:	000f4637          	lui	a2,0xf4
    800033dc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800033e0:	00d70733          	add	a4,a4,a3
    800033e4:	0037979b          	slliw	a5,a5,0x3
    800033e8:	020046b7          	lui	a3,0x2004
    800033ec:	00d787b3          	add	a5,a5,a3
    800033f0:	00c585b3          	add	a1,a1,a2
    800033f4:	00371693          	slli	a3,a4,0x3
    800033f8:	00004717          	auipc	a4,0x4
    800033fc:	ca870713          	addi	a4,a4,-856 # 800070a0 <timer_scratch>
    80003400:	00b7b023          	sd	a1,0(a5)
    80003404:	00d70733          	add	a4,a4,a3
    80003408:	00f73c23          	sd	a5,24(a4)
    8000340c:	02c73023          	sd	a2,32(a4)
    80003410:	34071073          	csrw	mscratch,a4
    80003414:	00000797          	auipc	a5,0x0
    80003418:	6ec78793          	addi	a5,a5,1772 # 80003b00 <timervec>
    8000341c:	30579073          	csrw	mtvec,a5
    80003420:	300027f3          	csrr	a5,mstatus
    80003424:	0087e793          	ori	a5,a5,8
    80003428:	30079073          	csrw	mstatus,a5
    8000342c:	304027f3          	csrr	a5,mie
    80003430:	0807e793          	ori	a5,a5,128
    80003434:	30479073          	csrw	mie,a5
    80003438:	f14027f3          	csrr	a5,mhartid
    8000343c:	0007879b          	sext.w	a5,a5
    80003440:	00078213          	mv	tp,a5
    80003444:	30200073          	mret
    80003448:	00813403          	ld	s0,8(sp)
    8000344c:	01010113          	addi	sp,sp,16
    80003450:	00008067          	ret

0000000080003454 <timerinit>:
    80003454:	ff010113          	addi	sp,sp,-16
    80003458:	00813423          	sd	s0,8(sp)
    8000345c:	01010413          	addi	s0,sp,16
    80003460:	f14027f3          	csrr	a5,mhartid
    80003464:	0200c737          	lui	a4,0x200c
    80003468:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000346c:	0007869b          	sext.w	a3,a5
    80003470:	00269713          	slli	a4,a3,0x2
    80003474:	000f4637          	lui	a2,0xf4
    80003478:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000347c:	00d70733          	add	a4,a4,a3
    80003480:	0037979b          	slliw	a5,a5,0x3
    80003484:	020046b7          	lui	a3,0x2004
    80003488:	00d787b3          	add	a5,a5,a3
    8000348c:	00c585b3          	add	a1,a1,a2
    80003490:	00371693          	slli	a3,a4,0x3
    80003494:	00004717          	auipc	a4,0x4
    80003498:	c0c70713          	addi	a4,a4,-1012 # 800070a0 <timer_scratch>
    8000349c:	00b7b023          	sd	a1,0(a5)
    800034a0:	00d70733          	add	a4,a4,a3
    800034a4:	00f73c23          	sd	a5,24(a4)
    800034a8:	02c73023          	sd	a2,32(a4)
    800034ac:	34071073          	csrw	mscratch,a4
    800034b0:	00000797          	auipc	a5,0x0
    800034b4:	65078793          	addi	a5,a5,1616 # 80003b00 <timervec>
    800034b8:	30579073          	csrw	mtvec,a5
    800034bc:	300027f3          	csrr	a5,mstatus
    800034c0:	0087e793          	ori	a5,a5,8
    800034c4:	30079073          	csrw	mstatus,a5
    800034c8:	304027f3          	csrr	a5,mie
    800034cc:	0807e793          	ori	a5,a5,128
    800034d0:	30479073          	csrw	mie,a5
    800034d4:	00813403          	ld	s0,8(sp)
    800034d8:	01010113          	addi	sp,sp,16
    800034dc:	00008067          	ret

00000000800034e0 <system_main>:
    800034e0:	fe010113          	addi	sp,sp,-32
    800034e4:	00813823          	sd	s0,16(sp)
    800034e8:	00913423          	sd	s1,8(sp)
    800034ec:	00113c23          	sd	ra,24(sp)
    800034f0:	02010413          	addi	s0,sp,32
    800034f4:	00000097          	auipc	ra,0x0
    800034f8:	0c4080e7          	jalr	196(ra) # 800035b8 <cpuid>
    800034fc:	00004497          	auipc	s1,0x4
    80003500:	b3448493          	addi	s1,s1,-1228 # 80007030 <started>
    80003504:	02050263          	beqz	a0,80003528 <system_main+0x48>
    80003508:	0004a783          	lw	a5,0(s1)
    8000350c:	0007879b          	sext.w	a5,a5
    80003510:	fe078ce3          	beqz	a5,80003508 <system_main+0x28>
    80003514:	0ff0000f          	fence
    80003518:	00003517          	auipc	a0,0x3
    8000351c:	01050513          	addi	a0,a0,16 # 80006528 <_ZZ12printIntegermE6digits+0x40>
    80003520:	00001097          	auipc	ra,0x1
    80003524:	a7c080e7          	jalr	-1412(ra) # 80003f9c <panic>
    80003528:	00001097          	auipc	ra,0x1
    8000352c:	9d0080e7          	jalr	-1584(ra) # 80003ef8 <consoleinit>
    80003530:	00001097          	auipc	ra,0x1
    80003534:	15c080e7          	jalr	348(ra) # 8000468c <printfinit>
    80003538:	00003517          	auipc	a0,0x3
    8000353c:	b5050513          	addi	a0,a0,-1200 # 80006088 <CONSOLE_STATUS+0x78>
    80003540:	00001097          	auipc	ra,0x1
    80003544:	ab8080e7          	jalr	-1352(ra) # 80003ff8 <__printf>
    80003548:	00003517          	auipc	a0,0x3
    8000354c:	fb050513          	addi	a0,a0,-80 # 800064f8 <_ZZ12printIntegermE6digits+0x10>
    80003550:	00001097          	auipc	ra,0x1
    80003554:	aa8080e7          	jalr	-1368(ra) # 80003ff8 <__printf>
    80003558:	00003517          	auipc	a0,0x3
    8000355c:	b3050513          	addi	a0,a0,-1232 # 80006088 <CONSOLE_STATUS+0x78>
    80003560:	00001097          	auipc	ra,0x1
    80003564:	a98080e7          	jalr	-1384(ra) # 80003ff8 <__printf>
    80003568:	00001097          	auipc	ra,0x1
    8000356c:	4b0080e7          	jalr	1200(ra) # 80004a18 <kinit>
    80003570:	00000097          	auipc	ra,0x0
    80003574:	148080e7          	jalr	328(ra) # 800036b8 <trapinit>
    80003578:	00000097          	auipc	ra,0x0
    8000357c:	16c080e7          	jalr	364(ra) # 800036e4 <trapinithart>
    80003580:	00000097          	auipc	ra,0x0
    80003584:	5c0080e7          	jalr	1472(ra) # 80003b40 <plicinit>
    80003588:	00000097          	auipc	ra,0x0
    8000358c:	5e0080e7          	jalr	1504(ra) # 80003b68 <plicinithart>
    80003590:	00000097          	auipc	ra,0x0
    80003594:	078080e7          	jalr	120(ra) # 80003608 <userinit>
    80003598:	0ff0000f          	fence
    8000359c:	00100793          	li	a5,1
    800035a0:	00003517          	auipc	a0,0x3
    800035a4:	f7050513          	addi	a0,a0,-144 # 80006510 <_ZZ12printIntegermE6digits+0x28>
    800035a8:	00f4a023          	sw	a5,0(s1)
    800035ac:	00001097          	auipc	ra,0x1
    800035b0:	a4c080e7          	jalr	-1460(ra) # 80003ff8 <__printf>
    800035b4:	0000006f          	j	800035b4 <system_main+0xd4>

00000000800035b8 <cpuid>:
    800035b8:	ff010113          	addi	sp,sp,-16
    800035bc:	00813423          	sd	s0,8(sp)
    800035c0:	01010413          	addi	s0,sp,16
    800035c4:	00020513          	mv	a0,tp
    800035c8:	00813403          	ld	s0,8(sp)
    800035cc:	0005051b          	sext.w	a0,a0
    800035d0:	01010113          	addi	sp,sp,16
    800035d4:	00008067          	ret

00000000800035d8 <mycpu>:
    800035d8:	ff010113          	addi	sp,sp,-16
    800035dc:	00813423          	sd	s0,8(sp)
    800035e0:	01010413          	addi	s0,sp,16
    800035e4:	00020793          	mv	a5,tp
    800035e8:	00813403          	ld	s0,8(sp)
    800035ec:	0007879b          	sext.w	a5,a5
    800035f0:	00779793          	slli	a5,a5,0x7
    800035f4:	00005517          	auipc	a0,0x5
    800035f8:	adc50513          	addi	a0,a0,-1316 # 800080d0 <cpus>
    800035fc:	00f50533          	add	a0,a0,a5
    80003600:	01010113          	addi	sp,sp,16
    80003604:	00008067          	ret

0000000080003608 <userinit>:
    80003608:	ff010113          	addi	sp,sp,-16
    8000360c:	00813423          	sd	s0,8(sp)
    80003610:	01010413          	addi	s0,sp,16
    80003614:	00813403          	ld	s0,8(sp)
    80003618:	01010113          	addi	sp,sp,16
    8000361c:	ffffe317          	auipc	t1,0xffffe
    80003620:	07030067          	jr	112(t1) # 8000168c <main>

0000000080003624 <either_copyout>:
    80003624:	ff010113          	addi	sp,sp,-16
    80003628:	00813023          	sd	s0,0(sp)
    8000362c:	00113423          	sd	ra,8(sp)
    80003630:	01010413          	addi	s0,sp,16
    80003634:	02051663          	bnez	a0,80003660 <either_copyout+0x3c>
    80003638:	00058513          	mv	a0,a1
    8000363c:	00060593          	mv	a1,a2
    80003640:	0006861b          	sext.w	a2,a3
    80003644:	00002097          	auipc	ra,0x2
    80003648:	c60080e7          	jalr	-928(ra) # 800052a4 <__memmove>
    8000364c:	00813083          	ld	ra,8(sp)
    80003650:	00013403          	ld	s0,0(sp)
    80003654:	00000513          	li	a0,0
    80003658:	01010113          	addi	sp,sp,16
    8000365c:	00008067          	ret
    80003660:	00003517          	auipc	a0,0x3
    80003664:	ef050513          	addi	a0,a0,-272 # 80006550 <_ZZ12printIntegermE6digits+0x68>
    80003668:	00001097          	auipc	ra,0x1
    8000366c:	934080e7          	jalr	-1740(ra) # 80003f9c <panic>

0000000080003670 <either_copyin>:
    80003670:	ff010113          	addi	sp,sp,-16
    80003674:	00813023          	sd	s0,0(sp)
    80003678:	00113423          	sd	ra,8(sp)
    8000367c:	01010413          	addi	s0,sp,16
    80003680:	02059463          	bnez	a1,800036a8 <either_copyin+0x38>
    80003684:	00060593          	mv	a1,a2
    80003688:	0006861b          	sext.w	a2,a3
    8000368c:	00002097          	auipc	ra,0x2
    80003690:	c18080e7          	jalr	-1000(ra) # 800052a4 <__memmove>
    80003694:	00813083          	ld	ra,8(sp)
    80003698:	00013403          	ld	s0,0(sp)
    8000369c:	00000513          	li	a0,0
    800036a0:	01010113          	addi	sp,sp,16
    800036a4:	00008067          	ret
    800036a8:	00003517          	auipc	a0,0x3
    800036ac:	ed050513          	addi	a0,a0,-304 # 80006578 <_ZZ12printIntegermE6digits+0x90>
    800036b0:	00001097          	auipc	ra,0x1
    800036b4:	8ec080e7          	jalr	-1812(ra) # 80003f9c <panic>

00000000800036b8 <trapinit>:
    800036b8:	ff010113          	addi	sp,sp,-16
    800036bc:	00813423          	sd	s0,8(sp)
    800036c0:	01010413          	addi	s0,sp,16
    800036c4:	00813403          	ld	s0,8(sp)
    800036c8:	00003597          	auipc	a1,0x3
    800036cc:	ed858593          	addi	a1,a1,-296 # 800065a0 <_ZZ12printIntegermE6digits+0xb8>
    800036d0:	00005517          	auipc	a0,0x5
    800036d4:	a8050513          	addi	a0,a0,-1408 # 80008150 <tickslock>
    800036d8:	01010113          	addi	sp,sp,16
    800036dc:	00001317          	auipc	t1,0x1
    800036e0:	5cc30067          	jr	1484(t1) # 80004ca8 <initlock>

00000000800036e4 <trapinithart>:
    800036e4:	ff010113          	addi	sp,sp,-16
    800036e8:	00813423          	sd	s0,8(sp)
    800036ec:	01010413          	addi	s0,sp,16
    800036f0:	00000797          	auipc	a5,0x0
    800036f4:	30078793          	addi	a5,a5,768 # 800039f0 <kernelvec>
    800036f8:	10579073          	csrw	stvec,a5
    800036fc:	00813403          	ld	s0,8(sp)
    80003700:	01010113          	addi	sp,sp,16
    80003704:	00008067          	ret

0000000080003708 <usertrap>:
    80003708:	ff010113          	addi	sp,sp,-16
    8000370c:	00813423          	sd	s0,8(sp)
    80003710:	01010413          	addi	s0,sp,16
    80003714:	00813403          	ld	s0,8(sp)
    80003718:	01010113          	addi	sp,sp,16
    8000371c:	00008067          	ret

0000000080003720 <usertrapret>:
    80003720:	ff010113          	addi	sp,sp,-16
    80003724:	00813423          	sd	s0,8(sp)
    80003728:	01010413          	addi	s0,sp,16
    8000372c:	00813403          	ld	s0,8(sp)
    80003730:	01010113          	addi	sp,sp,16
    80003734:	00008067          	ret

0000000080003738 <kerneltrap>:
    80003738:	fe010113          	addi	sp,sp,-32
    8000373c:	00813823          	sd	s0,16(sp)
    80003740:	00113c23          	sd	ra,24(sp)
    80003744:	00913423          	sd	s1,8(sp)
    80003748:	02010413          	addi	s0,sp,32
    8000374c:	142025f3          	csrr	a1,scause
    80003750:	100027f3          	csrr	a5,sstatus
    80003754:	0027f793          	andi	a5,a5,2
    80003758:	10079c63          	bnez	a5,80003870 <kerneltrap+0x138>
    8000375c:	142027f3          	csrr	a5,scause
    80003760:	0207ce63          	bltz	a5,8000379c <kerneltrap+0x64>
    80003764:	00003517          	auipc	a0,0x3
    80003768:	e8450513          	addi	a0,a0,-380 # 800065e8 <_ZZ12printIntegermE6digits+0x100>
    8000376c:	00001097          	auipc	ra,0x1
    80003770:	88c080e7          	jalr	-1908(ra) # 80003ff8 <__printf>
    80003774:	141025f3          	csrr	a1,sepc
    80003778:	14302673          	csrr	a2,stval
    8000377c:	00003517          	auipc	a0,0x3
    80003780:	e7c50513          	addi	a0,a0,-388 # 800065f8 <_ZZ12printIntegermE6digits+0x110>
    80003784:	00001097          	auipc	ra,0x1
    80003788:	874080e7          	jalr	-1932(ra) # 80003ff8 <__printf>
    8000378c:	00003517          	auipc	a0,0x3
    80003790:	e8450513          	addi	a0,a0,-380 # 80006610 <_ZZ12printIntegermE6digits+0x128>
    80003794:	00001097          	auipc	ra,0x1
    80003798:	808080e7          	jalr	-2040(ra) # 80003f9c <panic>
    8000379c:	0ff7f713          	andi	a4,a5,255
    800037a0:	00900693          	li	a3,9
    800037a4:	04d70063          	beq	a4,a3,800037e4 <kerneltrap+0xac>
    800037a8:	fff00713          	li	a4,-1
    800037ac:	03f71713          	slli	a4,a4,0x3f
    800037b0:	00170713          	addi	a4,a4,1
    800037b4:	fae798e3          	bne	a5,a4,80003764 <kerneltrap+0x2c>
    800037b8:	00000097          	auipc	ra,0x0
    800037bc:	e00080e7          	jalr	-512(ra) # 800035b8 <cpuid>
    800037c0:	06050663          	beqz	a0,8000382c <kerneltrap+0xf4>
    800037c4:	144027f3          	csrr	a5,sip
    800037c8:	ffd7f793          	andi	a5,a5,-3
    800037cc:	14479073          	csrw	sip,a5
    800037d0:	01813083          	ld	ra,24(sp)
    800037d4:	01013403          	ld	s0,16(sp)
    800037d8:	00813483          	ld	s1,8(sp)
    800037dc:	02010113          	addi	sp,sp,32
    800037e0:	00008067          	ret
    800037e4:	00000097          	auipc	ra,0x0
    800037e8:	3d0080e7          	jalr	976(ra) # 80003bb4 <plic_claim>
    800037ec:	00a00793          	li	a5,10
    800037f0:	00050493          	mv	s1,a0
    800037f4:	06f50863          	beq	a0,a5,80003864 <kerneltrap+0x12c>
    800037f8:	fc050ce3          	beqz	a0,800037d0 <kerneltrap+0x98>
    800037fc:	00050593          	mv	a1,a0
    80003800:	00003517          	auipc	a0,0x3
    80003804:	dc850513          	addi	a0,a0,-568 # 800065c8 <_ZZ12printIntegermE6digits+0xe0>
    80003808:	00000097          	auipc	ra,0x0
    8000380c:	7f0080e7          	jalr	2032(ra) # 80003ff8 <__printf>
    80003810:	01013403          	ld	s0,16(sp)
    80003814:	01813083          	ld	ra,24(sp)
    80003818:	00048513          	mv	a0,s1
    8000381c:	00813483          	ld	s1,8(sp)
    80003820:	02010113          	addi	sp,sp,32
    80003824:	00000317          	auipc	t1,0x0
    80003828:	3c830067          	jr	968(t1) # 80003bec <plic_complete>
    8000382c:	00005517          	auipc	a0,0x5
    80003830:	92450513          	addi	a0,a0,-1756 # 80008150 <tickslock>
    80003834:	00001097          	auipc	ra,0x1
    80003838:	498080e7          	jalr	1176(ra) # 80004ccc <acquire>
    8000383c:	00003717          	auipc	a4,0x3
    80003840:	7f870713          	addi	a4,a4,2040 # 80007034 <ticks>
    80003844:	00072783          	lw	a5,0(a4)
    80003848:	00005517          	auipc	a0,0x5
    8000384c:	90850513          	addi	a0,a0,-1784 # 80008150 <tickslock>
    80003850:	0017879b          	addiw	a5,a5,1
    80003854:	00f72023          	sw	a5,0(a4)
    80003858:	00001097          	auipc	ra,0x1
    8000385c:	540080e7          	jalr	1344(ra) # 80004d98 <release>
    80003860:	f65ff06f          	j	800037c4 <kerneltrap+0x8c>
    80003864:	00001097          	auipc	ra,0x1
    80003868:	09c080e7          	jalr	156(ra) # 80004900 <uartintr>
    8000386c:	fa5ff06f          	j	80003810 <kerneltrap+0xd8>
    80003870:	00003517          	auipc	a0,0x3
    80003874:	d3850513          	addi	a0,a0,-712 # 800065a8 <_ZZ12printIntegermE6digits+0xc0>
    80003878:	00000097          	auipc	ra,0x0
    8000387c:	724080e7          	jalr	1828(ra) # 80003f9c <panic>

0000000080003880 <clockintr>:
    80003880:	fe010113          	addi	sp,sp,-32
    80003884:	00813823          	sd	s0,16(sp)
    80003888:	00913423          	sd	s1,8(sp)
    8000388c:	00113c23          	sd	ra,24(sp)
    80003890:	02010413          	addi	s0,sp,32
    80003894:	00005497          	auipc	s1,0x5
    80003898:	8bc48493          	addi	s1,s1,-1860 # 80008150 <tickslock>
    8000389c:	00048513          	mv	a0,s1
    800038a0:	00001097          	auipc	ra,0x1
    800038a4:	42c080e7          	jalr	1068(ra) # 80004ccc <acquire>
    800038a8:	00003717          	auipc	a4,0x3
    800038ac:	78c70713          	addi	a4,a4,1932 # 80007034 <ticks>
    800038b0:	00072783          	lw	a5,0(a4)
    800038b4:	01013403          	ld	s0,16(sp)
    800038b8:	01813083          	ld	ra,24(sp)
    800038bc:	00048513          	mv	a0,s1
    800038c0:	0017879b          	addiw	a5,a5,1
    800038c4:	00813483          	ld	s1,8(sp)
    800038c8:	00f72023          	sw	a5,0(a4)
    800038cc:	02010113          	addi	sp,sp,32
    800038d0:	00001317          	auipc	t1,0x1
    800038d4:	4c830067          	jr	1224(t1) # 80004d98 <release>

00000000800038d8 <devintr>:
    800038d8:	142027f3          	csrr	a5,scause
    800038dc:	00000513          	li	a0,0
    800038e0:	0007c463          	bltz	a5,800038e8 <devintr+0x10>
    800038e4:	00008067          	ret
    800038e8:	fe010113          	addi	sp,sp,-32
    800038ec:	00813823          	sd	s0,16(sp)
    800038f0:	00113c23          	sd	ra,24(sp)
    800038f4:	00913423          	sd	s1,8(sp)
    800038f8:	02010413          	addi	s0,sp,32
    800038fc:	0ff7f713          	andi	a4,a5,255
    80003900:	00900693          	li	a3,9
    80003904:	04d70c63          	beq	a4,a3,8000395c <devintr+0x84>
    80003908:	fff00713          	li	a4,-1
    8000390c:	03f71713          	slli	a4,a4,0x3f
    80003910:	00170713          	addi	a4,a4,1
    80003914:	00e78c63          	beq	a5,a4,8000392c <devintr+0x54>
    80003918:	01813083          	ld	ra,24(sp)
    8000391c:	01013403          	ld	s0,16(sp)
    80003920:	00813483          	ld	s1,8(sp)
    80003924:	02010113          	addi	sp,sp,32
    80003928:	00008067          	ret
    8000392c:	00000097          	auipc	ra,0x0
    80003930:	c8c080e7          	jalr	-884(ra) # 800035b8 <cpuid>
    80003934:	06050663          	beqz	a0,800039a0 <devintr+0xc8>
    80003938:	144027f3          	csrr	a5,sip
    8000393c:	ffd7f793          	andi	a5,a5,-3
    80003940:	14479073          	csrw	sip,a5
    80003944:	01813083          	ld	ra,24(sp)
    80003948:	01013403          	ld	s0,16(sp)
    8000394c:	00813483          	ld	s1,8(sp)
    80003950:	00200513          	li	a0,2
    80003954:	02010113          	addi	sp,sp,32
    80003958:	00008067          	ret
    8000395c:	00000097          	auipc	ra,0x0
    80003960:	258080e7          	jalr	600(ra) # 80003bb4 <plic_claim>
    80003964:	00a00793          	li	a5,10
    80003968:	00050493          	mv	s1,a0
    8000396c:	06f50663          	beq	a0,a5,800039d8 <devintr+0x100>
    80003970:	00100513          	li	a0,1
    80003974:	fa0482e3          	beqz	s1,80003918 <devintr+0x40>
    80003978:	00048593          	mv	a1,s1
    8000397c:	00003517          	auipc	a0,0x3
    80003980:	c4c50513          	addi	a0,a0,-948 # 800065c8 <_ZZ12printIntegermE6digits+0xe0>
    80003984:	00000097          	auipc	ra,0x0
    80003988:	674080e7          	jalr	1652(ra) # 80003ff8 <__printf>
    8000398c:	00048513          	mv	a0,s1
    80003990:	00000097          	auipc	ra,0x0
    80003994:	25c080e7          	jalr	604(ra) # 80003bec <plic_complete>
    80003998:	00100513          	li	a0,1
    8000399c:	f7dff06f          	j	80003918 <devintr+0x40>
    800039a0:	00004517          	auipc	a0,0x4
    800039a4:	7b050513          	addi	a0,a0,1968 # 80008150 <tickslock>
    800039a8:	00001097          	auipc	ra,0x1
    800039ac:	324080e7          	jalr	804(ra) # 80004ccc <acquire>
    800039b0:	00003717          	auipc	a4,0x3
    800039b4:	68470713          	addi	a4,a4,1668 # 80007034 <ticks>
    800039b8:	00072783          	lw	a5,0(a4)
    800039bc:	00004517          	auipc	a0,0x4
    800039c0:	79450513          	addi	a0,a0,1940 # 80008150 <tickslock>
    800039c4:	0017879b          	addiw	a5,a5,1
    800039c8:	00f72023          	sw	a5,0(a4)
    800039cc:	00001097          	auipc	ra,0x1
    800039d0:	3cc080e7          	jalr	972(ra) # 80004d98 <release>
    800039d4:	f65ff06f          	j	80003938 <devintr+0x60>
    800039d8:	00001097          	auipc	ra,0x1
    800039dc:	f28080e7          	jalr	-216(ra) # 80004900 <uartintr>
    800039e0:	fadff06f          	j	8000398c <devintr+0xb4>
	...

00000000800039f0 <kernelvec>:
    800039f0:	f0010113          	addi	sp,sp,-256
    800039f4:	00113023          	sd	ra,0(sp)
    800039f8:	00213423          	sd	sp,8(sp)
    800039fc:	00313823          	sd	gp,16(sp)
    80003a00:	00413c23          	sd	tp,24(sp)
    80003a04:	02513023          	sd	t0,32(sp)
    80003a08:	02613423          	sd	t1,40(sp)
    80003a0c:	02713823          	sd	t2,48(sp)
    80003a10:	02813c23          	sd	s0,56(sp)
    80003a14:	04913023          	sd	s1,64(sp)
    80003a18:	04a13423          	sd	a0,72(sp)
    80003a1c:	04b13823          	sd	a1,80(sp)
    80003a20:	04c13c23          	sd	a2,88(sp)
    80003a24:	06d13023          	sd	a3,96(sp)
    80003a28:	06e13423          	sd	a4,104(sp)
    80003a2c:	06f13823          	sd	a5,112(sp)
    80003a30:	07013c23          	sd	a6,120(sp)
    80003a34:	09113023          	sd	a7,128(sp)
    80003a38:	09213423          	sd	s2,136(sp)
    80003a3c:	09313823          	sd	s3,144(sp)
    80003a40:	09413c23          	sd	s4,152(sp)
    80003a44:	0b513023          	sd	s5,160(sp)
    80003a48:	0b613423          	sd	s6,168(sp)
    80003a4c:	0b713823          	sd	s7,176(sp)
    80003a50:	0b813c23          	sd	s8,184(sp)
    80003a54:	0d913023          	sd	s9,192(sp)
    80003a58:	0da13423          	sd	s10,200(sp)
    80003a5c:	0db13823          	sd	s11,208(sp)
    80003a60:	0dc13c23          	sd	t3,216(sp)
    80003a64:	0fd13023          	sd	t4,224(sp)
    80003a68:	0fe13423          	sd	t5,232(sp)
    80003a6c:	0ff13823          	sd	t6,240(sp)
    80003a70:	cc9ff0ef          	jal	ra,80003738 <kerneltrap>
    80003a74:	00013083          	ld	ra,0(sp)
    80003a78:	00813103          	ld	sp,8(sp)
    80003a7c:	01013183          	ld	gp,16(sp)
    80003a80:	02013283          	ld	t0,32(sp)
    80003a84:	02813303          	ld	t1,40(sp)
    80003a88:	03013383          	ld	t2,48(sp)
    80003a8c:	03813403          	ld	s0,56(sp)
    80003a90:	04013483          	ld	s1,64(sp)
    80003a94:	04813503          	ld	a0,72(sp)
    80003a98:	05013583          	ld	a1,80(sp)
    80003a9c:	05813603          	ld	a2,88(sp)
    80003aa0:	06013683          	ld	a3,96(sp)
    80003aa4:	06813703          	ld	a4,104(sp)
    80003aa8:	07013783          	ld	a5,112(sp)
    80003aac:	07813803          	ld	a6,120(sp)
    80003ab0:	08013883          	ld	a7,128(sp)
    80003ab4:	08813903          	ld	s2,136(sp)
    80003ab8:	09013983          	ld	s3,144(sp)
    80003abc:	09813a03          	ld	s4,152(sp)
    80003ac0:	0a013a83          	ld	s5,160(sp)
    80003ac4:	0a813b03          	ld	s6,168(sp)
    80003ac8:	0b013b83          	ld	s7,176(sp)
    80003acc:	0b813c03          	ld	s8,184(sp)
    80003ad0:	0c013c83          	ld	s9,192(sp)
    80003ad4:	0c813d03          	ld	s10,200(sp)
    80003ad8:	0d013d83          	ld	s11,208(sp)
    80003adc:	0d813e03          	ld	t3,216(sp)
    80003ae0:	0e013e83          	ld	t4,224(sp)
    80003ae4:	0e813f03          	ld	t5,232(sp)
    80003ae8:	0f013f83          	ld	t6,240(sp)
    80003aec:	10010113          	addi	sp,sp,256
    80003af0:	10200073          	sret
    80003af4:	00000013          	nop
    80003af8:	00000013          	nop
    80003afc:	00000013          	nop

0000000080003b00 <timervec>:
    80003b00:	34051573          	csrrw	a0,mscratch,a0
    80003b04:	00b53023          	sd	a1,0(a0)
    80003b08:	00c53423          	sd	a2,8(a0)
    80003b0c:	00d53823          	sd	a3,16(a0)
    80003b10:	01853583          	ld	a1,24(a0)
    80003b14:	02053603          	ld	a2,32(a0)
    80003b18:	0005b683          	ld	a3,0(a1)
    80003b1c:	00c686b3          	add	a3,a3,a2
    80003b20:	00d5b023          	sd	a3,0(a1)
    80003b24:	00200593          	li	a1,2
    80003b28:	14459073          	csrw	sip,a1
    80003b2c:	01053683          	ld	a3,16(a0)
    80003b30:	00853603          	ld	a2,8(a0)
    80003b34:	00053583          	ld	a1,0(a0)
    80003b38:	34051573          	csrrw	a0,mscratch,a0
    80003b3c:	30200073          	mret

0000000080003b40 <plicinit>:
    80003b40:	ff010113          	addi	sp,sp,-16
    80003b44:	00813423          	sd	s0,8(sp)
    80003b48:	01010413          	addi	s0,sp,16
    80003b4c:	00813403          	ld	s0,8(sp)
    80003b50:	0c0007b7          	lui	a5,0xc000
    80003b54:	00100713          	li	a4,1
    80003b58:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80003b5c:	00e7a223          	sw	a4,4(a5)
    80003b60:	01010113          	addi	sp,sp,16
    80003b64:	00008067          	ret

0000000080003b68 <plicinithart>:
    80003b68:	ff010113          	addi	sp,sp,-16
    80003b6c:	00813023          	sd	s0,0(sp)
    80003b70:	00113423          	sd	ra,8(sp)
    80003b74:	01010413          	addi	s0,sp,16
    80003b78:	00000097          	auipc	ra,0x0
    80003b7c:	a40080e7          	jalr	-1472(ra) # 800035b8 <cpuid>
    80003b80:	0085171b          	slliw	a4,a0,0x8
    80003b84:	0c0027b7          	lui	a5,0xc002
    80003b88:	00e787b3          	add	a5,a5,a4
    80003b8c:	40200713          	li	a4,1026
    80003b90:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003b94:	00813083          	ld	ra,8(sp)
    80003b98:	00013403          	ld	s0,0(sp)
    80003b9c:	00d5151b          	slliw	a0,a0,0xd
    80003ba0:	0c2017b7          	lui	a5,0xc201
    80003ba4:	00a78533          	add	a0,a5,a0
    80003ba8:	00052023          	sw	zero,0(a0)
    80003bac:	01010113          	addi	sp,sp,16
    80003bb0:	00008067          	ret

0000000080003bb4 <plic_claim>:
    80003bb4:	ff010113          	addi	sp,sp,-16
    80003bb8:	00813023          	sd	s0,0(sp)
    80003bbc:	00113423          	sd	ra,8(sp)
    80003bc0:	01010413          	addi	s0,sp,16
    80003bc4:	00000097          	auipc	ra,0x0
    80003bc8:	9f4080e7          	jalr	-1548(ra) # 800035b8 <cpuid>
    80003bcc:	00813083          	ld	ra,8(sp)
    80003bd0:	00013403          	ld	s0,0(sp)
    80003bd4:	00d5151b          	slliw	a0,a0,0xd
    80003bd8:	0c2017b7          	lui	a5,0xc201
    80003bdc:	00a78533          	add	a0,a5,a0
    80003be0:	00452503          	lw	a0,4(a0)
    80003be4:	01010113          	addi	sp,sp,16
    80003be8:	00008067          	ret

0000000080003bec <plic_complete>:
    80003bec:	fe010113          	addi	sp,sp,-32
    80003bf0:	00813823          	sd	s0,16(sp)
    80003bf4:	00913423          	sd	s1,8(sp)
    80003bf8:	00113c23          	sd	ra,24(sp)
    80003bfc:	02010413          	addi	s0,sp,32
    80003c00:	00050493          	mv	s1,a0
    80003c04:	00000097          	auipc	ra,0x0
    80003c08:	9b4080e7          	jalr	-1612(ra) # 800035b8 <cpuid>
    80003c0c:	01813083          	ld	ra,24(sp)
    80003c10:	01013403          	ld	s0,16(sp)
    80003c14:	00d5179b          	slliw	a5,a0,0xd
    80003c18:	0c201737          	lui	a4,0xc201
    80003c1c:	00f707b3          	add	a5,a4,a5
    80003c20:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003c24:	00813483          	ld	s1,8(sp)
    80003c28:	02010113          	addi	sp,sp,32
    80003c2c:	00008067          	ret

0000000080003c30 <consolewrite>:
    80003c30:	fb010113          	addi	sp,sp,-80
    80003c34:	04813023          	sd	s0,64(sp)
    80003c38:	04113423          	sd	ra,72(sp)
    80003c3c:	02913c23          	sd	s1,56(sp)
    80003c40:	03213823          	sd	s2,48(sp)
    80003c44:	03313423          	sd	s3,40(sp)
    80003c48:	03413023          	sd	s4,32(sp)
    80003c4c:	01513c23          	sd	s5,24(sp)
    80003c50:	05010413          	addi	s0,sp,80
    80003c54:	06c05c63          	blez	a2,80003ccc <consolewrite+0x9c>
    80003c58:	00060993          	mv	s3,a2
    80003c5c:	00050a13          	mv	s4,a0
    80003c60:	00058493          	mv	s1,a1
    80003c64:	00000913          	li	s2,0
    80003c68:	fff00a93          	li	s5,-1
    80003c6c:	01c0006f          	j	80003c88 <consolewrite+0x58>
    80003c70:	fbf44503          	lbu	a0,-65(s0)
    80003c74:	0019091b          	addiw	s2,s2,1
    80003c78:	00148493          	addi	s1,s1,1
    80003c7c:	00001097          	auipc	ra,0x1
    80003c80:	a9c080e7          	jalr	-1380(ra) # 80004718 <uartputc>
    80003c84:	03298063          	beq	s3,s2,80003ca4 <consolewrite+0x74>
    80003c88:	00048613          	mv	a2,s1
    80003c8c:	00100693          	li	a3,1
    80003c90:	000a0593          	mv	a1,s4
    80003c94:	fbf40513          	addi	a0,s0,-65
    80003c98:	00000097          	auipc	ra,0x0
    80003c9c:	9d8080e7          	jalr	-1576(ra) # 80003670 <either_copyin>
    80003ca0:	fd5518e3          	bne	a0,s5,80003c70 <consolewrite+0x40>
    80003ca4:	04813083          	ld	ra,72(sp)
    80003ca8:	04013403          	ld	s0,64(sp)
    80003cac:	03813483          	ld	s1,56(sp)
    80003cb0:	02813983          	ld	s3,40(sp)
    80003cb4:	02013a03          	ld	s4,32(sp)
    80003cb8:	01813a83          	ld	s5,24(sp)
    80003cbc:	00090513          	mv	a0,s2
    80003cc0:	03013903          	ld	s2,48(sp)
    80003cc4:	05010113          	addi	sp,sp,80
    80003cc8:	00008067          	ret
    80003ccc:	00000913          	li	s2,0
    80003cd0:	fd5ff06f          	j	80003ca4 <consolewrite+0x74>

0000000080003cd4 <consoleread>:
    80003cd4:	f9010113          	addi	sp,sp,-112
    80003cd8:	06813023          	sd	s0,96(sp)
    80003cdc:	04913c23          	sd	s1,88(sp)
    80003ce0:	05213823          	sd	s2,80(sp)
    80003ce4:	05313423          	sd	s3,72(sp)
    80003ce8:	05413023          	sd	s4,64(sp)
    80003cec:	03513c23          	sd	s5,56(sp)
    80003cf0:	03613823          	sd	s6,48(sp)
    80003cf4:	03713423          	sd	s7,40(sp)
    80003cf8:	03813023          	sd	s8,32(sp)
    80003cfc:	06113423          	sd	ra,104(sp)
    80003d00:	01913c23          	sd	s9,24(sp)
    80003d04:	07010413          	addi	s0,sp,112
    80003d08:	00060b93          	mv	s7,a2
    80003d0c:	00050913          	mv	s2,a0
    80003d10:	00058c13          	mv	s8,a1
    80003d14:	00060b1b          	sext.w	s6,a2
    80003d18:	00004497          	auipc	s1,0x4
    80003d1c:	46048493          	addi	s1,s1,1120 # 80008178 <cons>
    80003d20:	00400993          	li	s3,4
    80003d24:	fff00a13          	li	s4,-1
    80003d28:	00a00a93          	li	s5,10
    80003d2c:	05705e63          	blez	s7,80003d88 <consoleread+0xb4>
    80003d30:	09c4a703          	lw	a4,156(s1)
    80003d34:	0984a783          	lw	a5,152(s1)
    80003d38:	0007071b          	sext.w	a4,a4
    80003d3c:	08e78463          	beq	a5,a4,80003dc4 <consoleread+0xf0>
    80003d40:	07f7f713          	andi	a4,a5,127
    80003d44:	00e48733          	add	a4,s1,a4
    80003d48:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80003d4c:	0017869b          	addiw	a3,a5,1
    80003d50:	08d4ac23          	sw	a3,152(s1)
    80003d54:	00070c9b          	sext.w	s9,a4
    80003d58:	0b370663          	beq	a4,s3,80003e04 <consoleread+0x130>
    80003d5c:	00100693          	li	a3,1
    80003d60:	f9f40613          	addi	a2,s0,-97
    80003d64:	000c0593          	mv	a1,s8
    80003d68:	00090513          	mv	a0,s2
    80003d6c:	f8e40fa3          	sb	a4,-97(s0)
    80003d70:	00000097          	auipc	ra,0x0
    80003d74:	8b4080e7          	jalr	-1868(ra) # 80003624 <either_copyout>
    80003d78:	01450863          	beq	a0,s4,80003d88 <consoleread+0xb4>
    80003d7c:	001c0c13          	addi	s8,s8,1
    80003d80:	fffb8b9b          	addiw	s7,s7,-1
    80003d84:	fb5c94e3          	bne	s9,s5,80003d2c <consoleread+0x58>
    80003d88:	000b851b          	sext.w	a0,s7
    80003d8c:	06813083          	ld	ra,104(sp)
    80003d90:	06013403          	ld	s0,96(sp)
    80003d94:	05813483          	ld	s1,88(sp)
    80003d98:	05013903          	ld	s2,80(sp)
    80003d9c:	04813983          	ld	s3,72(sp)
    80003da0:	04013a03          	ld	s4,64(sp)
    80003da4:	03813a83          	ld	s5,56(sp)
    80003da8:	02813b83          	ld	s7,40(sp)
    80003dac:	02013c03          	ld	s8,32(sp)
    80003db0:	01813c83          	ld	s9,24(sp)
    80003db4:	40ab053b          	subw	a0,s6,a0
    80003db8:	03013b03          	ld	s6,48(sp)
    80003dbc:	07010113          	addi	sp,sp,112
    80003dc0:	00008067          	ret
    80003dc4:	00001097          	auipc	ra,0x1
    80003dc8:	1d8080e7          	jalr	472(ra) # 80004f9c <push_on>
    80003dcc:	0984a703          	lw	a4,152(s1)
    80003dd0:	09c4a783          	lw	a5,156(s1)
    80003dd4:	0007879b          	sext.w	a5,a5
    80003dd8:	fef70ce3          	beq	a4,a5,80003dd0 <consoleread+0xfc>
    80003ddc:	00001097          	auipc	ra,0x1
    80003de0:	234080e7          	jalr	564(ra) # 80005010 <pop_on>
    80003de4:	0984a783          	lw	a5,152(s1)
    80003de8:	07f7f713          	andi	a4,a5,127
    80003dec:	00e48733          	add	a4,s1,a4
    80003df0:	01874703          	lbu	a4,24(a4)
    80003df4:	0017869b          	addiw	a3,a5,1
    80003df8:	08d4ac23          	sw	a3,152(s1)
    80003dfc:	00070c9b          	sext.w	s9,a4
    80003e00:	f5371ee3          	bne	a4,s3,80003d5c <consoleread+0x88>
    80003e04:	000b851b          	sext.w	a0,s7
    80003e08:	f96bf2e3          	bgeu	s7,s6,80003d8c <consoleread+0xb8>
    80003e0c:	08f4ac23          	sw	a5,152(s1)
    80003e10:	f7dff06f          	j	80003d8c <consoleread+0xb8>

0000000080003e14 <consputc>:
    80003e14:	10000793          	li	a5,256
    80003e18:	00f50663          	beq	a0,a5,80003e24 <consputc+0x10>
    80003e1c:	00001317          	auipc	t1,0x1
    80003e20:	9f430067          	jr	-1548(t1) # 80004810 <uartputc_sync>
    80003e24:	ff010113          	addi	sp,sp,-16
    80003e28:	00113423          	sd	ra,8(sp)
    80003e2c:	00813023          	sd	s0,0(sp)
    80003e30:	01010413          	addi	s0,sp,16
    80003e34:	00800513          	li	a0,8
    80003e38:	00001097          	auipc	ra,0x1
    80003e3c:	9d8080e7          	jalr	-1576(ra) # 80004810 <uartputc_sync>
    80003e40:	02000513          	li	a0,32
    80003e44:	00001097          	auipc	ra,0x1
    80003e48:	9cc080e7          	jalr	-1588(ra) # 80004810 <uartputc_sync>
    80003e4c:	00013403          	ld	s0,0(sp)
    80003e50:	00813083          	ld	ra,8(sp)
    80003e54:	00800513          	li	a0,8
    80003e58:	01010113          	addi	sp,sp,16
    80003e5c:	00001317          	auipc	t1,0x1
    80003e60:	9b430067          	jr	-1612(t1) # 80004810 <uartputc_sync>

0000000080003e64 <consoleintr>:
    80003e64:	fe010113          	addi	sp,sp,-32
    80003e68:	00813823          	sd	s0,16(sp)
    80003e6c:	00913423          	sd	s1,8(sp)
    80003e70:	01213023          	sd	s2,0(sp)
    80003e74:	00113c23          	sd	ra,24(sp)
    80003e78:	02010413          	addi	s0,sp,32
    80003e7c:	00004917          	auipc	s2,0x4
    80003e80:	2fc90913          	addi	s2,s2,764 # 80008178 <cons>
    80003e84:	00050493          	mv	s1,a0
    80003e88:	00090513          	mv	a0,s2
    80003e8c:	00001097          	auipc	ra,0x1
    80003e90:	e40080e7          	jalr	-448(ra) # 80004ccc <acquire>
    80003e94:	02048c63          	beqz	s1,80003ecc <consoleintr+0x68>
    80003e98:	0a092783          	lw	a5,160(s2)
    80003e9c:	09892703          	lw	a4,152(s2)
    80003ea0:	07f00693          	li	a3,127
    80003ea4:	40e7873b          	subw	a4,a5,a4
    80003ea8:	02e6e263          	bltu	a3,a4,80003ecc <consoleintr+0x68>
    80003eac:	00d00713          	li	a4,13
    80003eb0:	04e48063          	beq	s1,a4,80003ef0 <consoleintr+0x8c>
    80003eb4:	07f7f713          	andi	a4,a5,127
    80003eb8:	00e90733          	add	a4,s2,a4
    80003ebc:	0017879b          	addiw	a5,a5,1
    80003ec0:	0af92023          	sw	a5,160(s2)
    80003ec4:	00970c23          	sb	s1,24(a4)
    80003ec8:	08f92e23          	sw	a5,156(s2)
    80003ecc:	01013403          	ld	s0,16(sp)
    80003ed0:	01813083          	ld	ra,24(sp)
    80003ed4:	00813483          	ld	s1,8(sp)
    80003ed8:	00013903          	ld	s2,0(sp)
    80003edc:	00004517          	auipc	a0,0x4
    80003ee0:	29c50513          	addi	a0,a0,668 # 80008178 <cons>
    80003ee4:	02010113          	addi	sp,sp,32
    80003ee8:	00001317          	auipc	t1,0x1
    80003eec:	eb030067          	jr	-336(t1) # 80004d98 <release>
    80003ef0:	00a00493          	li	s1,10
    80003ef4:	fc1ff06f          	j	80003eb4 <consoleintr+0x50>

0000000080003ef8 <consoleinit>:
    80003ef8:	fe010113          	addi	sp,sp,-32
    80003efc:	00113c23          	sd	ra,24(sp)
    80003f00:	00813823          	sd	s0,16(sp)
    80003f04:	00913423          	sd	s1,8(sp)
    80003f08:	02010413          	addi	s0,sp,32
    80003f0c:	00004497          	auipc	s1,0x4
    80003f10:	26c48493          	addi	s1,s1,620 # 80008178 <cons>
    80003f14:	00048513          	mv	a0,s1
    80003f18:	00002597          	auipc	a1,0x2
    80003f1c:	70858593          	addi	a1,a1,1800 # 80006620 <_ZZ12printIntegermE6digits+0x138>
    80003f20:	00001097          	auipc	ra,0x1
    80003f24:	d88080e7          	jalr	-632(ra) # 80004ca8 <initlock>
    80003f28:	00000097          	auipc	ra,0x0
    80003f2c:	7ac080e7          	jalr	1964(ra) # 800046d4 <uartinit>
    80003f30:	01813083          	ld	ra,24(sp)
    80003f34:	01013403          	ld	s0,16(sp)
    80003f38:	00000797          	auipc	a5,0x0
    80003f3c:	d9c78793          	addi	a5,a5,-612 # 80003cd4 <consoleread>
    80003f40:	0af4bc23          	sd	a5,184(s1)
    80003f44:	00000797          	auipc	a5,0x0
    80003f48:	cec78793          	addi	a5,a5,-788 # 80003c30 <consolewrite>
    80003f4c:	0cf4b023          	sd	a5,192(s1)
    80003f50:	00813483          	ld	s1,8(sp)
    80003f54:	02010113          	addi	sp,sp,32
    80003f58:	00008067          	ret

0000000080003f5c <console_read>:
    80003f5c:	ff010113          	addi	sp,sp,-16
    80003f60:	00813423          	sd	s0,8(sp)
    80003f64:	01010413          	addi	s0,sp,16
    80003f68:	00813403          	ld	s0,8(sp)
    80003f6c:	00004317          	auipc	t1,0x4
    80003f70:	2c433303          	ld	t1,708(t1) # 80008230 <devsw+0x10>
    80003f74:	01010113          	addi	sp,sp,16
    80003f78:	00030067          	jr	t1

0000000080003f7c <console_write>:
    80003f7c:	ff010113          	addi	sp,sp,-16
    80003f80:	00813423          	sd	s0,8(sp)
    80003f84:	01010413          	addi	s0,sp,16
    80003f88:	00813403          	ld	s0,8(sp)
    80003f8c:	00004317          	auipc	t1,0x4
    80003f90:	2ac33303          	ld	t1,684(t1) # 80008238 <devsw+0x18>
    80003f94:	01010113          	addi	sp,sp,16
    80003f98:	00030067          	jr	t1

0000000080003f9c <panic>:
    80003f9c:	fe010113          	addi	sp,sp,-32
    80003fa0:	00113c23          	sd	ra,24(sp)
    80003fa4:	00813823          	sd	s0,16(sp)
    80003fa8:	00913423          	sd	s1,8(sp)
    80003fac:	02010413          	addi	s0,sp,32
    80003fb0:	00050493          	mv	s1,a0
    80003fb4:	00002517          	auipc	a0,0x2
    80003fb8:	67450513          	addi	a0,a0,1652 # 80006628 <_ZZ12printIntegermE6digits+0x140>
    80003fbc:	00004797          	auipc	a5,0x4
    80003fc0:	3007ae23          	sw	zero,796(a5) # 800082d8 <pr+0x18>
    80003fc4:	00000097          	auipc	ra,0x0
    80003fc8:	034080e7          	jalr	52(ra) # 80003ff8 <__printf>
    80003fcc:	00048513          	mv	a0,s1
    80003fd0:	00000097          	auipc	ra,0x0
    80003fd4:	028080e7          	jalr	40(ra) # 80003ff8 <__printf>
    80003fd8:	00002517          	auipc	a0,0x2
    80003fdc:	0b050513          	addi	a0,a0,176 # 80006088 <CONSOLE_STATUS+0x78>
    80003fe0:	00000097          	auipc	ra,0x0
    80003fe4:	018080e7          	jalr	24(ra) # 80003ff8 <__printf>
    80003fe8:	00100793          	li	a5,1
    80003fec:	00003717          	auipc	a4,0x3
    80003ff0:	04f72623          	sw	a5,76(a4) # 80007038 <panicked>
    80003ff4:	0000006f          	j	80003ff4 <panic+0x58>

0000000080003ff8 <__printf>:
    80003ff8:	f3010113          	addi	sp,sp,-208
    80003ffc:	08813023          	sd	s0,128(sp)
    80004000:	07313423          	sd	s3,104(sp)
    80004004:	09010413          	addi	s0,sp,144
    80004008:	05813023          	sd	s8,64(sp)
    8000400c:	08113423          	sd	ra,136(sp)
    80004010:	06913c23          	sd	s1,120(sp)
    80004014:	07213823          	sd	s2,112(sp)
    80004018:	07413023          	sd	s4,96(sp)
    8000401c:	05513c23          	sd	s5,88(sp)
    80004020:	05613823          	sd	s6,80(sp)
    80004024:	05713423          	sd	s7,72(sp)
    80004028:	03913c23          	sd	s9,56(sp)
    8000402c:	03a13823          	sd	s10,48(sp)
    80004030:	03b13423          	sd	s11,40(sp)
    80004034:	00004317          	auipc	t1,0x4
    80004038:	28c30313          	addi	t1,t1,652 # 800082c0 <pr>
    8000403c:	01832c03          	lw	s8,24(t1)
    80004040:	00b43423          	sd	a1,8(s0)
    80004044:	00c43823          	sd	a2,16(s0)
    80004048:	00d43c23          	sd	a3,24(s0)
    8000404c:	02e43023          	sd	a4,32(s0)
    80004050:	02f43423          	sd	a5,40(s0)
    80004054:	03043823          	sd	a6,48(s0)
    80004058:	03143c23          	sd	a7,56(s0)
    8000405c:	00050993          	mv	s3,a0
    80004060:	4a0c1663          	bnez	s8,8000450c <__printf+0x514>
    80004064:	60098c63          	beqz	s3,8000467c <__printf+0x684>
    80004068:	0009c503          	lbu	a0,0(s3)
    8000406c:	00840793          	addi	a5,s0,8
    80004070:	f6f43c23          	sd	a5,-136(s0)
    80004074:	00000493          	li	s1,0
    80004078:	22050063          	beqz	a0,80004298 <__printf+0x2a0>
    8000407c:	00002a37          	lui	s4,0x2
    80004080:	00018ab7          	lui	s5,0x18
    80004084:	000f4b37          	lui	s6,0xf4
    80004088:	00989bb7          	lui	s7,0x989
    8000408c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004090:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004094:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004098:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000409c:	00148c9b          	addiw	s9,s1,1
    800040a0:	02500793          	li	a5,37
    800040a4:	01998933          	add	s2,s3,s9
    800040a8:	38f51263          	bne	a0,a5,8000442c <__printf+0x434>
    800040ac:	00094783          	lbu	a5,0(s2)
    800040b0:	00078c9b          	sext.w	s9,a5
    800040b4:	1e078263          	beqz	a5,80004298 <__printf+0x2a0>
    800040b8:	0024849b          	addiw	s1,s1,2
    800040bc:	07000713          	li	a4,112
    800040c0:	00998933          	add	s2,s3,s1
    800040c4:	38e78a63          	beq	a5,a4,80004458 <__printf+0x460>
    800040c8:	20f76863          	bltu	a4,a5,800042d8 <__printf+0x2e0>
    800040cc:	42a78863          	beq	a5,a0,800044fc <__printf+0x504>
    800040d0:	06400713          	li	a4,100
    800040d4:	40e79663          	bne	a5,a4,800044e0 <__printf+0x4e8>
    800040d8:	f7843783          	ld	a5,-136(s0)
    800040dc:	0007a603          	lw	a2,0(a5)
    800040e0:	00878793          	addi	a5,a5,8
    800040e4:	f6f43c23          	sd	a5,-136(s0)
    800040e8:	42064a63          	bltz	a2,8000451c <__printf+0x524>
    800040ec:	00a00713          	li	a4,10
    800040f0:	02e677bb          	remuw	a5,a2,a4
    800040f4:	00002d97          	auipc	s11,0x2
    800040f8:	55cd8d93          	addi	s11,s11,1372 # 80006650 <digits>
    800040fc:	00900593          	li	a1,9
    80004100:	0006051b          	sext.w	a0,a2
    80004104:	00000c93          	li	s9,0
    80004108:	02079793          	slli	a5,a5,0x20
    8000410c:	0207d793          	srli	a5,a5,0x20
    80004110:	00fd87b3          	add	a5,s11,a5
    80004114:	0007c783          	lbu	a5,0(a5)
    80004118:	02e656bb          	divuw	a3,a2,a4
    8000411c:	f8f40023          	sb	a5,-128(s0)
    80004120:	14c5d863          	bge	a1,a2,80004270 <__printf+0x278>
    80004124:	06300593          	li	a1,99
    80004128:	00100c93          	li	s9,1
    8000412c:	02e6f7bb          	remuw	a5,a3,a4
    80004130:	02079793          	slli	a5,a5,0x20
    80004134:	0207d793          	srli	a5,a5,0x20
    80004138:	00fd87b3          	add	a5,s11,a5
    8000413c:	0007c783          	lbu	a5,0(a5)
    80004140:	02e6d73b          	divuw	a4,a3,a4
    80004144:	f8f400a3          	sb	a5,-127(s0)
    80004148:	12a5f463          	bgeu	a1,a0,80004270 <__printf+0x278>
    8000414c:	00a00693          	li	a3,10
    80004150:	00900593          	li	a1,9
    80004154:	02d777bb          	remuw	a5,a4,a3
    80004158:	02079793          	slli	a5,a5,0x20
    8000415c:	0207d793          	srli	a5,a5,0x20
    80004160:	00fd87b3          	add	a5,s11,a5
    80004164:	0007c503          	lbu	a0,0(a5)
    80004168:	02d757bb          	divuw	a5,a4,a3
    8000416c:	f8a40123          	sb	a0,-126(s0)
    80004170:	48e5f263          	bgeu	a1,a4,800045f4 <__printf+0x5fc>
    80004174:	06300513          	li	a0,99
    80004178:	02d7f5bb          	remuw	a1,a5,a3
    8000417c:	02059593          	slli	a1,a1,0x20
    80004180:	0205d593          	srli	a1,a1,0x20
    80004184:	00bd85b3          	add	a1,s11,a1
    80004188:	0005c583          	lbu	a1,0(a1)
    8000418c:	02d7d7bb          	divuw	a5,a5,a3
    80004190:	f8b401a3          	sb	a1,-125(s0)
    80004194:	48e57263          	bgeu	a0,a4,80004618 <__printf+0x620>
    80004198:	3e700513          	li	a0,999
    8000419c:	02d7f5bb          	remuw	a1,a5,a3
    800041a0:	02059593          	slli	a1,a1,0x20
    800041a4:	0205d593          	srli	a1,a1,0x20
    800041a8:	00bd85b3          	add	a1,s11,a1
    800041ac:	0005c583          	lbu	a1,0(a1)
    800041b0:	02d7d7bb          	divuw	a5,a5,a3
    800041b4:	f8b40223          	sb	a1,-124(s0)
    800041b8:	46e57663          	bgeu	a0,a4,80004624 <__printf+0x62c>
    800041bc:	02d7f5bb          	remuw	a1,a5,a3
    800041c0:	02059593          	slli	a1,a1,0x20
    800041c4:	0205d593          	srli	a1,a1,0x20
    800041c8:	00bd85b3          	add	a1,s11,a1
    800041cc:	0005c583          	lbu	a1,0(a1)
    800041d0:	02d7d7bb          	divuw	a5,a5,a3
    800041d4:	f8b402a3          	sb	a1,-123(s0)
    800041d8:	46ea7863          	bgeu	s4,a4,80004648 <__printf+0x650>
    800041dc:	02d7f5bb          	remuw	a1,a5,a3
    800041e0:	02059593          	slli	a1,a1,0x20
    800041e4:	0205d593          	srli	a1,a1,0x20
    800041e8:	00bd85b3          	add	a1,s11,a1
    800041ec:	0005c583          	lbu	a1,0(a1)
    800041f0:	02d7d7bb          	divuw	a5,a5,a3
    800041f4:	f8b40323          	sb	a1,-122(s0)
    800041f8:	3eeaf863          	bgeu	s5,a4,800045e8 <__printf+0x5f0>
    800041fc:	02d7f5bb          	remuw	a1,a5,a3
    80004200:	02059593          	slli	a1,a1,0x20
    80004204:	0205d593          	srli	a1,a1,0x20
    80004208:	00bd85b3          	add	a1,s11,a1
    8000420c:	0005c583          	lbu	a1,0(a1)
    80004210:	02d7d7bb          	divuw	a5,a5,a3
    80004214:	f8b403a3          	sb	a1,-121(s0)
    80004218:	42eb7e63          	bgeu	s6,a4,80004654 <__printf+0x65c>
    8000421c:	02d7f5bb          	remuw	a1,a5,a3
    80004220:	02059593          	slli	a1,a1,0x20
    80004224:	0205d593          	srli	a1,a1,0x20
    80004228:	00bd85b3          	add	a1,s11,a1
    8000422c:	0005c583          	lbu	a1,0(a1)
    80004230:	02d7d7bb          	divuw	a5,a5,a3
    80004234:	f8b40423          	sb	a1,-120(s0)
    80004238:	42ebfc63          	bgeu	s7,a4,80004670 <__printf+0x678>
    8000423c:	02079793          	slli	a5,a5,0x20
    80004240:	0207d793          	srli	a5,a5,0x20
    80004244:	00fd8db3          	add	s11,s11,a5
    80004248:	000dc703          	lbu	a4,0(s11)
    8000424c:	00a00793          	li	a5,10
    80004250:	00900c93          	li	s9,9
    80004254:	f8e404a3          	sb	a4,-119(s0)
    80004258:	00065c63          	bgez	a2,80004270 <__printf+0x278>
    8000425c:	f9040713          	addi	a4,s0,-112
    80004260:	00f70733          	add	a4,a4,a5
    80004264:	02d00693          	li	a3,45
    80004268:	fed70823          	sb	a3,-16(a4)
    8000426c:	00078c93          	mv	s9,a5
    80004270:	f8040793          	addi	a5,s0,-128
    80004274:	01978cb3          	add	s9,a5,s9
    80004278:	f7f40d13          	addi	s10,s0,-129
    8000427c:	000cc503          	lbu	a0,0(s9)
    80004280:	fffc8c93          	addi	s9,s9,-1
    80004284:	00000097          	auipc	ra,0x0
    80004288:	b90080e7          	jalr	-1136(ra) # 80003e14 <consputc>
    8000428c:	ffac98e3          	bne	s9,s10,8000427c <__printf+0x284>
    80004290:	00094503          	lbu	a0,0(s2)
    80004294:	e00514e3          	bnez	a0,8000409c <__printf+0xa4>
    80004298:	1a0c1663          	bnez	s8,80004444 <__printf+0x44c>
    8000429c:	08813083          	ld	ra,136(sp)
    800042a0:	08013403          	ld	s0,128(sp)
    800042a4:	07813483          	ld	s1,120(sp)
    800042a8:	07013903          	ld	s2,112(sp)
    800042ac:	06813983          	ld	s3,104(sp)
    800042b0:	06013a03          	ld	s4,96(sp)
    800042b4:	05813a83          	ld	s5,88(sp)
    800042b8:	05013b03          	ld	s6,80(sp)
    800042bc:	04813b83          	ld	s7,72(sp)
    800042c0:	04013c03          	ld	s8,64(sp)
    800042c4:	03813c83          	ld	s9,56(sp)
    800042c8:	03013d03          	ld	s10,48(sp)
    800042cc:	02813d83          	ld	s11,40(sp)
    800042d0:	0d010113          	addi	sp,sp,208
    800042d4:	00008067          	ret
    800042d8:	07300713          	li	a4,115
    800042dc:	1ce78a63          	beq	a5,a4,800044b0 <__printf+0x4b8>
    800042e0:	07800713          	li	a4,120
    800042e4:	1ee79e63          	bne	a5,a4,800044e0 <__printf+0x4e8>
    800042e8:	f7843783          	ld	a5,-136(s0)
    800042ec:	0007a703          	lw	a4,0(a5)
    800042f0:	00878793          	addi	a5,a5,8
    800042f4:	f6f43c23          	sd	a5,-136(s0)
    800042f8:	28074263          	bltz	a4,8000457c <__printf+0x584>
    800042fc:	00002d97          	auipc	s11,0x2
    80004300:	354d8d93          	addi	s11,s11,852 # 80006650 <digits>
    80004304:	00f77793          	andi	a5,a4,15
    80004308:	00fd87b3          	add	a5,s11,a5
    8000430c:	0007c683          	lbu	a3,0(a5)
    80004310:	00f00613          	li	a2,15
    80004314:	0007079b          	sext.w	a5,a4
    80004318:	f8d40023          	sb	a3,-128(s0)
    8000431c:	0047559b          	srliw	a1,a4,0x4
    80004320:	0047569b          	srliw	a3,a4,0x4
    80004324:	00000c93          	li	s9,0
    80004328:	0ee65063          	bge	a2,a4,80004408 <__printf+0x410>
    8000432c:	00f6f693          	andi	a3,a3,15
    80004330:	00dd86b3          	add	a3,s11,a3
    80004334:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004338:	0087d79b          	srliw	a5,a5,0x8
    8000433c:	00100c93          	li	s9,1
    80004340:	f8d400a3          	sb	a3,-127(s0)
    80004344:	0cb67263          	bgeu	a2,a1,80004408 <__printf+0x410>
    80004348:	00f7f693          	andi	a3,a5,15
    8000434c:	00dd86b3          	add	a3,s11,a3
    80004350:	0006c583          	lbu	a1,0(a3)
    80004354:	00f00613          	li	a2,15
    80004358:	0047d69b          	srliw	a3,a5,0x4
    8000435c:	f8b40123          	sb	a1,-126(s0)
    80004360:	0047d593          	srli	a1,a5,0x4
    80004364:	28f67e63          	bgeu	a2,a5,80004600 <__printf+0x608>
    80004368:	00f6f693          	andi	a3,a3,15
    8000436c:	00dd86b3          	add	a3,s11,a3
    80004370:	0006c503          	lbu	a0,0(a3)
    80004374:	0087d813          	srli	a6,a5,0x8
    80004378:	0087d69b          	srliw	a3,a5,0x8
    8000437c:	f8a401a3          	sb	a0,-125(s0)
    80004380:	28b67663          	bgeu	a2,a1,8000460c <__printf+0x614>
    80004384:	00f6f693          	andi	a3,a3,15
    80004388:	00dd86b3          	add	a3,s11,a3
    8000438c:	0006c583          	lbu	a1,0(a3)
    80004390:	00c7d513          	srli	a0,a5,0xc
    80004394:	00c7d69b          	srliw	a3,a5,0xc
    80004398:	f8b40223          	sb	a1,-124(s0)
    8000439c:	29067a63          	bgeu	a2,a6,80004630 <__printf+0x638>
    800043a0:	00f6f693          	andi	a3,a3,15
    800043a4:	00dd86b3          	add	a3,s11,a3
    800043a8:	0006c583          	lbu	a1,0(a3)
    800043ac:	0107d813          	srli	a6,a5,0x10
    800043b0:	0107d69b          	srliw	a3,a5,0x10
    800043b4:	f8b402a3          	sb	a1,-123(s0)
    800043b8:	28a67263          	bgeu	a2,a0,8000463c <__printf+0x644>
    800043bc:	00f6f693          	andi	a3,a3,15
    800043c0:	00dd86b3          	add	a3,s11,a3
    800043c4:	0006c683          	lbu	a3,0(a3)
    800043c8:	0147d79b          	srliw	a5,a5,0x14
    800043cc:	f8d40323          	sb	a3,-122(s0)
    800043d0:	21067663          	bgeu	a2,a6,800045dc <__printf+0x5e4>
    800043d4:	02079793          	slli	a5,a5,0x20
    800043d8:	0207d793          	srli	a5,a5,0x20
    800043dc:	00fd8db3          	add	s11,s11,a5
    800043e0:	000dc683          	lbu	a3,0(s11)
    800043e4:	00800793          	li	a5,8
    800043e8:	00700c93          	li	s9,7
    800043ec:	f8d403a3          	sb	a3,-121(s0)
    800043f0:	00075c63          	bgez	a4,80004408 <__printf+0x410>
    800043f4:	f9040713          	addi	a4,s0,-112
    800043f8:	00f70733          	add	a4,a4,a5
    800043fc:	02d00693          	li	a3,45
    80004400:	fed70823          	sb	a3,-16(a4)
    80004404:	00078c93          	mv	s9,a5
    80004408:	f8040793          	addi	a5,s0,-128
    8000440c:	01978cb3          	add	s9,a5,s9
    80004410:	f7f40d13          	addi	s10,s0,-129
    80004414:	000cc503          	lbu	a0,0(s9)
    80004418:	fffc8c93          	addi	s9,s9,-1
    8000441c:	00000097          	auipc	ra,0x0
    80004420:	9f8080e7          	jalr	-1544(ra) # 80003e14 <consputc>
    80004424:	ff9d18e3          	bne	s10,s9,80004414 <__printf+0x41c>
    80004428:	0100006f          	j	80004438 <__printf+0x440>
    8000442c:	00000097          	auipc	ra,0x0
    80004430:	9e8080e7          	jalr	-1560(ra) # 80003e14 <consputc>
    80004434:	000c8493          	mv	s1,s9
    80004438:	00094503          	lbu	a0,0(s2)
    8000443c:	c60510e3          	bnez	a0,8000409c <__printf+0xa4>
    80004440:	e40c0ee3          	beqz	s8,8000429c <__printf+0x2a4>
    80004444:	00004517          	auipc	a0,0x4
    80004448:	e7c50513          	addi	a0,a0,-388 # 800082c0 <pr>
    8000444c:	00001097          	auipc	ra,0x1
    80004450:	94c080e7          	jalr	-1716(ra) # 80004d98 <release>
    80004454:	e49ff06f          	j	8000429c <__printf+0x2a4>
    80004458:	f7843783          	ld	a5,-136(s0)
    8000445c:	03000513          	li	a0,48
    80004460:	01000d13          	li	s10,16
    80004464:	00878713          	addi	a4,a5,8
    80004468:	0007bc83          	ld	s9,0(a5)
    8000446c:	f6e43c23          	sd	a4,-136(s0)
    80004470:	00000097          	auipc	ra,0x0
    80004474:	9a4080e7          	jalr	-1628(ra) # 80003e14 <consputc>
    80004478:	07800513          	li	a0,120
    8000447c:	00000097          	auipc	ra,0x0
    80004480:	998080e7          	jalr	-1640(ra) # 80003e14 <consputc>
    80004484:	00002d97          	auipc	s11,0x2
    80004488:	1ccd8d93          	addi	s11,s11,460 # 80006650 <digits>
    8000448c:	03ccd793          	srli	a5,s9,0x3c
    80004490:	00fd87b3          	add	a5,s11,a5
    80004494:	0007c503          	lbu	a0,0(a5)
    80004498:	fffd0d1b          	addiw	s10,s10,-1
    8000449c:	004c9c93          	slli	s9,s9,0x4
    800044a0:	00000097          	auipc	ra,0x0
    800044a4:	974080e7          	jalr	-1676(ra) # 80003e14 <consputc>
    800044a8:	fe0d12e3          	bnez	s10,8000448c <__printf+0x494>
    800044ac:	f8dff06f          	j	80004438 <__printf+0x440>
    800044b0:	f7843783          	ld	a5,-136(s0)
    800044b4:	0007bc83          	ld	s9,0(a5)
    800044b8:	00878793          	addi	a5,a5,8
    800044bc:	f6f43c23          	sd	a5,-136(s0)
    800044c0:	000c9a63          	bnez	s9,800044d4 <__printf+0x4dc>
    800044c4:	1080006f          	j	800045cc <__printf+0x5d4>
    800044c8:	001c8c93          	addi	s9,s9,1
    800044cc:	00000097          	auipc	ra,0x0
    800044d0:	948080e7          	jalr	-1720(ra) # 80003e14 <consputc>
    800044d4:	000cc503          	lbu	a0,0(s9)
    800044d8:	fe0518e3          	bnez	a0,800044c8 <__printf+0x4d0>
    800044dc:	f5dff06f          	j	80004438 <__printf+0x440>
    800044e0:	02500513          	li	a0,37
    800044e4:	00000097          	auipc	ra,0x0
    800044e8:	930080e7          	jalr	-1744(ra) # 80003e14 <consputc>
    800044ec:	000c8513          	mv	a0,s9
    800044f0:	00000097          	auipc	ra,0x0
    800044f4:	924080e7          	jalr	-1756(ra) # 80003e14 <consputc>
    800044f8:	f41ff06f          	j	80004438 <__printf+0x440>
    800044fc:	02500513          	li	a0,37
    80004500:	00000097          	auipc	ra,0x0
    80004504:	914080e7          	jalr	-1772(ra) # 80003e14 <consputc>
    80004508:	f31ff06f          	j	80004438 <__printf+0x440>
    8000450c:	00030513          	mv	a0,t1
    80004510:	00000097          	auipc	ra,0x0
    80004514:	7bc080e7          	jalr	1980(ra) # 80004ccc <acquire>
    80004518:	b4dff06f          	j	80004064 <__printf+0x6c>
    8000451c:	40c0053b          	negw	a0,a2
    80004520:	00a00713          	li	a4,10
    80004524:	02e576bb          	remuw	a3,a0,a4
    80004528:	00002d97          	auipc	s11,0x2
    8000452c:	128d8d93          	addi	s11,s11,296 # 80006650 <digits>
    80004530:	ff700593          	li	a1,-9
    80004534:	02069693          	slli	a3,a3,0x20
    80004538:	0206d693          	srli	a3,a3,0x20
    8000453c:	00dd86b3          	add	a3,s11,a3
    80004540:	0006c683          	lbu	a3,0(a3)
    80004544:	02e557bb          	divuw	a5,a0,a4
    80004548:	f8d40023          	sb	a3,-128(s0)
    8000454c:	10b65e63          	bge	a2,a1,80004668 <__printf+0x670>
    80004550:	06300593          	li	a1,99
    80004554:	02e7f6bb          	remuw	a3,a5,a4
    80004558:	02069693          	slli	a3,a3,0x20
    8000455c:	0206d693          	srli	a3,a3,0x20
    80004560:	00dd86b3          	add	a3,s11,a3
    80004564:	0006c683          	lbu	a3,0(a3)
    80004568:	02e7d73b          	divuw	a4,a5,a4
    8000456c:	00200793          	li	a5,2
    80004570:	f8d400a3          	sb	a3,-127(s0)
    80004574:	bca5ece3          	bltu	a1,a0,8000414c <__printf+0x154>
    80004578:	ce5ff06f          	j	8000425c <__printf+0x264>
    8000457c:	40e007bb          	negw	a5,a4
    80004580:	00002d97          	auipc	s11,0x2
    80004584:	0d0d8d93          	addi	s11,s11,208 # 80006650 <digits>
    80004588:	00f7f693          	andi	a3,a5,15
    8000458c:	00dd86b3          	add	a3,s11,a3
    80004590:	0006c583          	lbu	a1,0(a3)
    80004594:	ff100613          	li	a2,-15
    80004598:	0047d69b          	srliw	a3,a5,0x4
    8000459c:	f8b40023          	sb	a1,-128(s0)
    800045a0:	0047d59b          	srliw	a1,a5,0x4
    800045a4:	0ac75e63          	bge	a4,a2,80004660 <__printf+0x668>
    800045a8:	00f6f693          	andi	a3,a3,15
    800045ac:	00dd86b3          	add	a3,s11,a3
    800045b0:	0006c603          	lbu	a2,0(a3)
    800045b4:	00f00693          	li	a3,15
    800045b8:	0087d79b          	srliw	a5,a5,0x8
    800045bc:	f8c400a3          	sb	a2,-127(s0)
    800045c0:	d8b6e4e3          	bltu	a3,a1,80004348 <__printf+0x350>
    800045c4:	00200793          	li	a5,2
    800045c8:	e2dff06f          	j	800043f4 <__printf+0x3fc>
    800045cc:	00002c97          	auipc	s9,0x2
    800045d0:	064c8c93          	addi	s9,s9,100 # 80006630 <_ZZ12printIntegermE6digits+0x148>
    800045d4:	02800513          	li	a0,40
    800045d8:	ef1ff06f          	j	800044c8 <__printf+0x4d0>
    800045dc:	00700793          	li	a5,7
    800045e0:	00600c93          	li	s9,6
    800045e4:	e0dff06f          	j	800043f0 <__printf+0x3f8>
    800045e8:	00700793          	li	a5,7
    800045ec:	00600c93          	li	s9,6
    800045f0:	c69ff06f          	j	80004258 <__printf+0x260>
    800045f4:	00300793          	li	a5,3
    800045f8:	00200c93          	li	s9,2
    800045fc:	c5dff06f          	j	80004258 <__printf+0x260>
    80004600:	00300793          	li	a5,3
    80004604:	00200c93          	li	s9,2
    80004608:	de9ff06f          	j	800043f0 <__printf+0x3f8>
    8000460c:	00400793          	li	a5,4
    80004610:	00300c93          	li	s9,3
    80004614:	dddff06f          	j	800043f0 <__printf+0x3f8>
    80004618:	00400793          	li	a5,4
    8000461c:	00300c93          	li	s9,3
    80004620:	c39ff06f          	j	80004258 <__printf+0x260>
    80004624:	00500793          	li	a5,5
    80004628:	00400c93          	li	s9,4
    8000462c:	c2dff06f          	j	80004258 <__printf+0x260>
    80004630:	00500793          	li	a5,5
    80004634:	00400c93          	li	s9,4
    80004638:	db9ff06f          	j	800043f0 <__printf+0x3f8>
    8000463c:	00600793          	li	a5,6
    80004640:	00500c93          	li	s9,5
    80004644:	dadff06f          	j	800043f0 <__printf+0x3f8>
    80004648:	00600793          	li	a5,6
    8000464c:	00500c93          	li	s9,5
    80004650:	c09ff06f          	j	80004258 <__printf+0x260>
    80004654:	00800793          	li	a5,8
    80004658:	00700c93          	li	s9,7
    8000465c:	bfdff06f          	j	80004258 <__printf+0x260>
    80004660:	00100793          	li	a5,1
    80004664:	d91ff06f          	j	800043f4 <__printf+0x3fc>
    80004668:	00100793          	li	a5,1
    8000466c:	bf1ff06f          	j	8000425c <__printf+0x264>
    80004670:	00900793          	li	a5,9
    80004674:	00800c93          	li	s9,8
    80004678:	be1ff06f          	j	80004258 <__printf+0x260>
    8000467c:	00002517          	auipc	a0,0x2
    80004680:	fbc50513          	addi	a0,a0,-68 # 80006638 <_ZZ12printIntegermE6digits+0x150>
    80004684:	00000097          	auipc	ra,0x0
    80004688:	918080e7          	jalr	-1768(ra) # 80003f9c <panic>

000000008000468c <printfinit>:
    8000468c:	fe010113          	addi	sp,sp,-32
    80004690:	00813823          	sd	s0,16(sp)
    80004694:	00913423          	sd	s1,8(sp)
    80004698:	00113c23          	sd	ra,24(sp)
    8000469c:	02010413          	addi	s0,sp,32
    800046a0:	00004497          	auipc	s1,0x4
    800046a4:	c2048493          	addi	s1,s1,-992 # 800082c0 <pr>
    800046a8:	00048513          	mv	a0,s1
    800046ac:	00002597          	auipc	a1,0x2
    800046b0:	f9c58593          	addi	a1,a1,-100 # 80006648 <_ZZ12printIntegermE6digits+0x160>
    800046b4:	00000097          	auipc	ra,0x0
    800046b8:	5f4080e7          	jalr	1524(ra) # 80004ca8 <initlock>
    800046bc:	01813083          	ld	ra,24(sp)
    800046c0:	01013403          	ld	s0,16(sp)
    800046c4:	0004ac23          	sw	zero,24(s1)
    800046c8:	00813483          	ld	s1,8(sp)
    800046cc:	02010113          	addi	sp,sp,32
    800046d0:	00008067          	ret

00000000800046d4 <uartinit>:
    800046d4:	ff010113          	addi	sp,sp,-16
    800046d8:	00813423          	sd	s0,8(sp)
    800046dc:	01010413          	addi	s0,sp,16
    800046e0:	100007b7          	lui	a5,0x10000
    800046e4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800046e8:	f8000713          	li	a4,-128
    800046ec:	00e781a3          	sb	a4,3(a5)
    800046f0:	00300713          	li	a4,3
    800046f4:	00e78023          	sb	a4,0(a5)
    800046f8:	000780a3          	sb	zero,1(a5)
    800046fc:	00e781a3          	sb	a4,3(a5)
    80004700:	00700693          	li	a3,7
    80004704:	00d78123          	sb	a3,2(a5)
    80004708:	00e780a3          	sb	a4,1(a5)
    8000470c:	00813403          	ld	s0,8(sp)
    80004710:	01010113          	addi	sp,sp,16
    80004714:	00008067          	ret

0000000080004718 <uartputc>:
    80004718:	00003797          	auipc	a5,0x3
    8000471c:	9207a783          	lw	a5,-1760(a5) # 80007038 <panicked>
    80004720:	00078463          	beqz	a5,80004728 <uartputc+0x10>
    80004724:	0000006f          	j	80004724 <uartputc+0xc>
    80004728:	fd010113          	addi	sp,sp,-48
    8000472c:	02813023          	sd	s0,32(sp)
    80004730:	00913c23          	sd	s1,24(sp)
    80004734:	01213823          	sd	s2,16(sp)
    80004738:	01313423          	sd	s3,8(sp)
    8000473c:	02113423          	sd	ra,40(sp)
    80004740:	03010413          	addi	s0,sp,48
    80004744:	00003917          	auipc	s2,0x3
    80004748:	8fc90913          	addi	s2,s2,-1796 # 80007040 <uart_tx_r>
    8000474c:	00093783          	ld	a5,0(s2)
    80004750:	00003497          	auipc	s1,0x3
    80004754:	8f848493          	addi	s1,s1,-1800 # 80007048 <uart_tx_w>
    80004758:	0004b703          	ld	a4,0(s1)
    8000475c:	02078693          	addi	a3,a5,32
    80004760:	00050993          	mv	s3,a0
    80004764:	02e69c63          	bne	a3,a4,8000479c <uartputc+0x84>
    80004768:	00001097          	auipc	ra,0x1
    8000476c:	834080e7          	jalr	-1996(ra) # 80004f9c <push_on>
    80004770:	00093783          	ld	a5,0(s2)
    80004774:	0004b703          	ld	a4,0(s1)
    80004778:	02078793          	addi	a5,a5,32
    8000477c:	00e79463          	bne	a5,a4,80004784 <uartputc+0x6c>
    80004780:	0000006f          	j	80004780 <uartputc+0x68>
    80004784:	00001097          	auipc	ra,0x1
    80004788:	88c080e7          	jalr	-1908(ra) # 80005010 <pop_on>
    8000478c:	00093783          	ld	a5,0(s2)
    80004790:	0004b703          	ld	a4,0(s1)
    80004794:	02078693          	addi	a3,a5,32
    80004798:	fce688e3          	beq	a3,a4,80004768 <uartputc+0x50>
    8000479c:	01f77693          	andi	a3,a4,31
    800047a0:	00004597          	auipc	a1,0x4
    800047a4:	b4058593          	addi	a1,a1,-1216 # 800082e0 <uart_tx_buf>
    800047a8:	00d586b3          	add	a3,a1,a3
    800047ac:	00170713          	addi	a4,a4,1
    800047b0:	01368023          	sb	s3,0(a3)
    800047b4:	00e4b023          	sd	a4,0(s1)
    800047b8:	10000637          	lui	a2,0x10000
    800047bc:	02f71063          	bne	a4,a5,800047dc <uartputc+0xc4>
    800047c0:	0340006f          	j	800047f4 <uartputc+0xdc>
    800047c4:	00074703          	lbu	a4,0(a4)
    800047c8:	00f93023          	sd	a5,0(s2)
    800047cc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800047d0:	00093783          	ld	a5,0(s2)
    800047d4:	0004b703          	ld	a4,0(s1)
    800047d8:	00f70e63          	beq	a4,a5,800047f4 <uartputc+0xdc>
    800047dc:	00564683          	lbu	a3,5(a2)
    800047e0:	01f7f713          	andi	a4,a5,31
    800047e4:	00e58733          	add	a4,a1,a4
    800047e8:	0206f693          	andi	a3,a3,32
    800047ec:	00178793          	addi	a5,a5,1
    800047f0:	fc069ae3          	bnez	a3,800047c4 <uartputc+0xac>
    800047f4:	02813083          	ld	ra,40(sp)
    800047f8:	02013403          	ld	s0,32(sp)
    800047fc:	01813483          	ld	s1,24(sp)
    80004800:	01013903          	ld	s2,16(sp)
    80004804:	00813983          	ld	s3,8(sp)
    80004808:	03010113          	addi	sp,sp,48
    8000480c:	00008067          	ret

0000000080004810 <uartputc_sync>:
    80004810:	ff010113          	addi	sp,sp,-16
    80004814:	00813423          	sd	s0,8(sp)
    80004818:	01010413          	addi	s0,sp,16
    8000481c:	00003717          	auipc	a4,0x3
    80004820:	81c72703          	lw	a4,-2020(a4) # 80007038 <panicked>
    80004824:	02071663          	bnez	a4,80004850 <uartputc_sync+0x40>
    80004828:	00050793          	mv	a5,a0
    8000482c:	100006b7          	lui	a3,0x10000
    80004830:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004834:	02077713          	andi	a4,a4,32
    80004838:	fe070ce3          	beqz	a4,80004830 <uartputc_sync+0x20>
    8000483c:	0ff7f793          	andi	a5,a5,255
    80004840:	00f68023          	sb	a5,0(a3)
    80004844:	00813403          	ld	s0,8(sp)
    80004848:	01010113          	addi	sp,sp,16
    8000484c:	00008067          	ret
    80004850:	0000006f          	j	80004850 <uartputc_sync+0x40>

0000000080004854 <uartstart>:
    80004854:	ff010113          	addi	sp,sp,-16
    80004858:	00813423          	sd	s0,8(sp)
    8000485c:	01010413          	addi	s0,sp,16
    80004860:	00002617          	auipc	a2,0x2
    80004864:	7e060613          	addi	a2,a2,2016 # 80007040 <uart_tx_r>
    80004868:	00002517          	auipc	a0,0x2
    8000486c:	7e050513          	addi	a0,a0,2016 # 80007048 <uart_tx_w>
    80004870:	00063783          	ld	a5,0(a2)
    80004874:	00053703          	ld	a4,0(a0)
    80004878:	04f70263          	beq	a4,a5,800048bc <uartstart+0x68>
    8000487c:	100005b7          	lui	a1,0x10000
    80004880:	00004817          	auipc	a6,0x4
    80004884:	a6080813          	addi	a6,a6,-1440 # 800082e0 <uart_tx_buf>
    80004888:	01c0006f          	j	800048a4 <uartstart+0x50>
    8000488c:	0006c703          	lbu	a4,0(a3)
    80004890:	00f63023          	sd	a5,0(a2)
    80004894:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004898:	00063783          	ld	a5,0(a2)
    8000489c:	00053703          	ld	a4,0(a0)
    800048a0:	00f70e63          	beq	a4,a5,800048bc <uartstart+0x68>
    800048a4:	01f7f713          	andi	a4,a5,31
    800048a8:	00e806b3          	add	a3,a6,a4
    800048ac:	0055c703          	lbu	a4,5(a1)
    800048b0:	00178793          	addi	a5,a5,1
    800048b4:	02077713          	andi	a4,a4,32
    800048b8:	fc071ae3          	bnez	a4,8000488c <uartstart+0x38>
    800048bc:	00813403          	ld	s0,8(sp)
    800048c0:	01010113          	addi	sp,sp,16
    800048c4:	00008067          	ret

00000000800048c8 <uartgetc>:
    800048c8:	ff010113          	addi	sp,sp,-16
    800048cc:	00813423          	sd	s0,8(sp)
    800048d0:	01010413          	addi	s0,sp,16
    800048d4:	10000737          	lui	a4,0x10000
    800048d8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800048dc:	0017f793          	andi	a5,a5,1
    800048e0:	00078c63          	beqz	a5,800048f8 <uartgetc+0x30>
    800048e4:	00074503          	lbu	a0,0(a4)
    800048e8:	0ff57513          	andi	a0,a0,255
    800048ec:	00813403          	ld	s0,8(sp)
    800048f0:	01010113          	addi	sp,sp,16
    800048f4:	00008067          	ret
    800048f8:	fff00513          	li	a0,-1
    800048fc:	ff1ff06f          	j	800048ec <uartgetc+0x24>

0000000080004900 <uartintr>:
    80004900:	100007b7          	lui	a5,0x10000
    80004904:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004908:	0017f793          	andi	a5,a5,1
    8000490c:	0a078463          	beqz	a5,800049b4 <uartintr+0xb4>
    80004910:	fe010113          	addi	sp,sp,-32
    80004914:	00813823          	sd	s0,16(sp)
    80004918:	00913423          	sd	s1,8(sp)
    8000491c:	00113c23          	sd	ra,24(sp)
    80004920:	02010413          	addi	s0,sp,32
    80004924:	100004b7          	lui	s1,0x10000
    80004928:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000492c:	0ff57513          	andi	a0,a0,255
    80004930:	fffff097          	auipc	ra,0xfffff
    80004934:	534080e7          	jalr	1332(ra) # 80003e64 <consoleintr>
    80004938:	0054c783          	lbu	a5,5(s1)
    8000493c:	0017f793          	andi	a5,a5,1
    80004940:	fe0794e3          	bnez	a5,80004928 <uartintr+0x28>
    80004944:	00002617          	auipc	a2,0x2
    80004948:	6fc60613          	addi	a2,a2,1788 # 80007040 <uart_tx_r>
    8000494c:	00002517          	auipc	a0,0x2
    80004950:	6fc50513          	addi	a0,a0,1788 # 80007048 <uart_tx_w>
    80004954:	00063783          	ld	a5,0(a2)
    80004958:	00053703          	ld	a4,0(a0)
    8000495c:	04f70263          	beq	a4,a5,800049a0 <uartintr+0xa0>
    80004960:	100005b7          	lui	a1,0x10000
    80004964:	00004817          	auipc	a6,0x4
    80004968:	97c80813          	addi	a6,a6,-1668 # 800082e0 <uart_tx_buf>
    8000496c:	01c0006f          	j	80004988 <uartintr+0x88>
    80004970:	0006c703          	lbu	a4,0(a3)
    80004974:	00f63023          	sd	a5,0(a2)
    80004978:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000497c:	00063783          	ld	a5,0(a2)
    80004980:	00053703          	ld	a4,0(a0)
    80004984:	00f70e63          	beq	a4,a5,800049a0 <uartintr+0xa0>
    80004988:	01f7f713          	andi	a4,a5,31
    8000498c:	00e806b3          	add	a3,a6,a4
    80004990:	0055c703          	lbu	a4,5(a1)
    80004994:	00178793          	addi	a5,a5,1
    80004998:	02077713          	andi	a4,a4,32
    8000499c:	fc071ae3          	bnez	a4,80004970 <uartintr+0x70>
    800049a0:	01813083          	ld	ra,24(sp)
    800049a4:	01013403          	ld	s0,16(sp)
    800049a8:	00813483          	ld	s1,8(sp)
    800049ac:	02010113          	addi	sp,sp,32
    800049b0:	00008067          	ret
    800049b4:	00002617          	auipc	a2,0x2
    800049b8:	68c60613          	addi	a2,a2,1676 # 80007040 <uart_tx_r>
    800049bc:	00002517          	auipc	a0,0x2
    800049c0:	68c50513          	addi	a0,a0,1676 # 80007048 <uart_tx_w>
    800049c4:	00063783          	ld	a5,0(a2)
    800049c8:	00053703          	ld	a4,0(a0)
    800049cc:	04f70263          	beq	a4,a5,80004a10 <uartintr+0x110>
    800049d0:	100005b7          	lui	a1,0x10000
    800049d4:	00004817          	auipc	a6,0x4
    800049d8:	90c80813          	addi	a6,a6,-1780 # 800082e0 <uart_tx_buf>
    800049dc:	01c0006f          	j	800049f8 <uartintr+0xf8>
    800049e0:	0006c703          	lbu	a4,0(a3)
    800049e4:	00f63023          	sd	a5,0(a2)
    800049e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800049ec:	00063783          	ld	a5,0(a2)
    800049f0:	00053703          	ld	a4,0(a0)
    800049f4:	02f70063          	beq	a4,a5,80004a14 <uartintr+0x114>
    800049f8:	01f7f713          	andi	a4,a5,31
    800049fc:	00e806b3          	add	a3,a6,a4
    80004a00:	0055c703          	lbu	a4,5(a1)
    80004a04:	00178793          	addi	a5,a5,1
    80004a08:	02077713          	andi	a4,a4,32
    80004a0c:	fc071ae3          	bnez	a4,800049e0 <uartintr+0xe0>
    80004a10:	00008067          	ret
    80004a14:	00008067          	ret

0000000080004a18 <kinit>:
    80004a18:	fc010113          	addi	sp,sp,-64
    80004a1c:	02913423          	sd	s1,40(sp)
    80004a20:	fffff7b7          	lui	a5,0xfffff
    80004a24:	00005497          	auipc	s1,0x5
    80004a28:	8eb48493          	addi	s1,s1,-1813 # 8000930f <end+0xfff>
    80004a2c:	02813823          	sd	s0,48(sp)
    80004a30:	01313c23          	sd	s3,24(sp)
    80004a34:	00f4f4b3          	and	s1,s1,a5
    80004a38:	02113c23          	sd	ra,56(sp)
    80004a3c:	03213023          	sd	s2,32(sp)
    80004a40:	01413823          	sd	s4,16(sp)
    80004a44:	01513423          	sd	s5,8(sp)
    80004a48:	04010413          	addi	s0,sp,64
    80004a4c:	000017b7          	lui	a5,0x1
    80004a50:	01100993          	li	s3,17
    80004a54:	00f487b3          	add	a5,s1,a5
    80004a58:	01b99993          	slli	s3,s3,0x1b
    80004a5c:	06f9e063          	bltu	s3,a5,80004abc <kinit+0xa4>
    80004a60:	00004a97          	auipc	s5,0x4
    80004a64:	8b0a8a93          	addi	s5,s5,-1872 # 80008310 <end>
    80004a68:	0754ec63          	bltu	s1,s5,80004ae0 <kinit+0xc8>
    80004a6c:	0734fa63          	bgeu	s1,s3,80004ae0 <kinit+0xc8>
    80004a70:	00088a37          	lui	s4,0x88
    80004a74:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004a78:	00002917          	auipc	s2,0x2
    80004a7c:	5d890913          	addi	s2,s2,1496 # 80007050 <kmem>
    80004a80:	00ca1a13          	slli	s4,s4,0xc
    80004a84:	0140006f          	j	80004a98 <kinit+0x80>
    80004a88:	000017b7          	lui	a5,0x1
    80004a8c:	00f484b3          	add	s1,s1,a5
    80004a90:	0554e863          	bltu	s1,s5,80004ae0 <kinit+0xc8>
    80004a94:	0534f663          	bgeu	s1,s3,80004ae0 <kinit+0xc8>
    80004a98:	00001637          	lui	a2,0x1
    80004a9c:	00100593          	li	a1,1
    80004aa0:	00048513          	mv	a0,s1
    80004aa4:	00000097          	auipc	ra,0x0
    80004aa8:	5e4080e7          	jalr	1508(ra) # 80005088 <__memset>
    80004aac:	00093783          	ld	a5,0(s2)
    80004ab0:	00f4b023          	sd	a5,0(s1)
    80004ab4:	00993023          	sd	s1,0(s2)
    80004ab8:	fd4498e3          	bne	s1,s4,80004a88 <kinit+0x70>
    80004abc:	03813083          	ld	ra,56(sp)
    80004ac0:	03013403          	ld	s0,48(sp)
    80004ac4:	02813483          	ld	s1,40(sp)
    80004ac8:	02013903          	ld	s2,32(sp)
    80004acc:	01813983          	ld	s3,24(sp)
    80004ad0:	01013a03          	ld	s4,16(sp)
    80004ad4:	00813a83          	ld	s5,8(sp)
    80004ad8:	04010113          	addi	sp,sp,64
    80004adc:	00008067          	ret
    80004ae0:	00002517          	auipc	a0,0x2
    80004ae4:	b8850513          	addi	a0,a0,-1144 # 80006668 <digits+0x18>
    80004ae8:	fffff097          	auipc	ra,0xfffff
    80004aec:	4b4080e7          	jalr	1204(ra) # 80003f9c <panic>

0000000080004af0 <freerange>:
    80004af0:	fc010113          	addi	sp,sp,-64
    80004af4:	000017b7          	lui	a5,0x1
    80004af8:	02913423          	sd	s1,40(sp)
    80004afc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004b00:	009504b3          	add	s1,a0,s1
    80004b04:	fffff537          	lui	a0,0xfffff
    80004b08:	02813823          	sd	s0,48(sp)
    80004b0c:	02113c23          	sd	ra,56(sp)
    80004b10:	03213023          	sd	s2,32(sp)
    80004b14:	01313c23          	sd	s3,24(sp)
    80004b18:	01413823          	sd	s4,16(sp)
    80004b1c:	01513423          	sd	s5,8(sp)
    80004b20:	01613023          	sd	s6,0(sp)
    80004b24:	04010413          	addi	s0,sp,64
    80004b28:	00a4f4b3          	and	s1,s1,a0
    80004b2c:	00f487b3          	add	a5,s1,a5
    80004b30:	06f5e463          	bltu	a1,a5,80004b98 <freerange+0xa8>
    80004b34:	00003a97          	auipc	s5,0x3
    80004b38:	7dca8a93          	addi	s5,s5,2012 # 80008310 <end>
    80004b3c:	0954e263          	bltu	s1,s5,80004bc0 <freerange+0xd0>
    80004b40:	01100993          	li	s3,17
    80004b44:	01b99993          	slli	s3,s3,0x1b
    80004b48:	0734fc63          	bgeu	s1,s3,80004bc0 <freerange+0xd0>
    80004b4c:	00058a13          	mv	s4,a1
    80004b50:	00002917          	auipc	s2,0x2
    80004b54:	50090913          	addi	s2,s2,1280 # 80007050 <kmem>
    80004b58:	00002b37          	lui	s6,0x2
    80004b5c:	0140006f          	j	80004b70 <freerange+0x80>
    80004b60:	000017b7          	lui	a5,0x1
    80004b64:	00f484b3          	add	s1,s1,a5
    80004b68:	0554ec63          	bltu	s1,s5,80004bc0 <freerange+0xd0>
    80004b6c:	0534fa63          	bgeu	s1,s3,80004bc0 <freerange+0xd0>
    80004b70:	00001637          	lui	a2,0x1
    80004b74:	00100593          	li	a1,1
    80004b78:	00048513          	mv	a0,s1
    80004b7c:	00000097          	auipc	ra,0x0
    80004b80:	50c080e7          	jalr	1292(ra) # 80005088 <__memset>
    80004b84:	00093703          	ld	a4,0(s2)
    80004b88:	016487b3          	add	a5,s1,s6
    80004b8c:	00e4b023          	sd	a4,0(s1)
    80004b90:	00993023          	sd	s1,0(s2)
    80004b94:	fcfa76e3          	bgeu	s4,a5,80004b60 <freerange+0x70>
    80004b98:	03813083          	ld	ra,56(sp)
    80004b9c:	03013403          	ld	s0,48(sp)
    80004ba0:	02813483          	ld	s1,40(sp)
    80004ba4:	02013903          	ld	s2,32(sp)
    80004ba8:	01813983          	ld	s3,24(sp)
    80004bac:	01013a03          	ld	s4,16(sp)
    80004bb0:	00813a83          	ld	s5,8(sp)
    80004bb4:	00013b03          	ld	s6,0(sp)
    80004bb8:	04010113          	addi	sp,sp,64
    80004bbc:	00008067          	ret
    80004bc0:	00002517          	auipc	a0,0x2
    80004bc4:	aa850513          	addi	a0,a0,-1368 # 80006668 <digits+0x18>
    80004bc8:	fffff097          	auipc	ra,0xfffff
    80004bcc:	3d4080e7          	jalr	980(ra) # 80003f9c <panic>

0000000080004bd0 <kfree>:
    80004bd0:	fe010113          	addi	sp,sp,-32
    80004bd4:	00813823          	sd	s0,16(sp)
    80004bd8:	00113c23          	sd	ra,24(sp)
    80004bdc:	00913423          	sd	s1,8(sp)
    80004be0:	02010413          	addi	s0,sp,32
    80004be4:	03451793          	slli	a5,a0,0x34
    80004be8:	04079c63          	bnez	a5,80004c40 <kfree+0x70>
    80004bec:	00003797          	auipc	a5,0x3
    80004bf0:	72478793          	addi	a5,a5,1828 # 80008310 <end>
    80004bf4:	00050493          	mv	s1,a0
    80004bf8:	04f56463          	bltu	a0,a5,80004c40 <kfree+0x70>
    80004bfc:	01100793          	li	a5,17
    80004c00:	01b79793          	slli	a5,a5,0x1b
    80004c04:	02f57e63          	bgeu	a0,a5,80004c40 <kfree+0x70>
    80004c08:	00001637          	lui	a2,0x1
    80004c0c:	00100593          	li	a1,1
    80004c10:	00000097          	auipc	ra,0x0
    80004c14:	478080e7          	jalr	1144(ra) # 80005088 <__memset>
    80004c18:	00002797          	auipc	a5,0x2
    80004c1c:	43878793          	addi	a5,a5,1080 # 80007050 <kmem>
    80004c20:	0007b703          	ld	a4,0(a5)
    80004c24:	01813083          	ld	ra,24(sp)
    80004c28:	01013403          	ld	s0,16(sp)
    80004c2c:	00e4b023          	sd	a4,0(s1)
    80004c30:	0097b023          	sd	s1,0(a5)
    80004c34:	00813483          	ld	s1,8(sp)
    80004c38:	02010113          	addi	sp,sp,32
    80004c3c:	00008067          	ret
    80004c40:	00002517          	auipc	a0,0x2
    80004c44:	a2850513          	addi	a0,a0,-1496 # 80006668 <digits+0x18>
    80004c48:	fffff097          	auipc	ra,0xfffff
    80004c4c:	354080e7          	jalr	852(ra) # 80003f9c <panic>

0000000080004c50 <kalloc>:
    80004c50:	fe010113          	addi	sp,sp,-32
    80004c54:	00813823          	sd	s0,16(sp)
    80004c58:	00913423          	sd	s1,8(sp)
    80004c5c:	00113c23          	sd	ra,24(sp)
    80004c60:	02010413          	addi	s0,sp,32
    80004c64:	00002797          	auipc	a5,0x2
    80004c68:	3ec78793          	addi	a5,a5,1004 # 80007050 <kmem>
    80004c6c:	0007b483          	ld	s1,0(a5)
    80004c70:	02048063          	beqz	s1,80004c90 <kalloc+0x40>
    80004c74:	0004b703          	ld	a4,0(s1)
    80004c78:	00001637          	lui	a2,0x1
    80004c7c:	00500593          	li	a1,5
    80004c80:	00048513          	mv	a0,s1
    80004c84:	00e7b023          	sd	a4,0(a5)
    80004c88:	00000097          	auipc	ra,0x0
    80004c8c:	400080e7          	jalr	1024(ra) # 80005088 <__memset>
    80004c90:	01813083          	ld	ra,24(sp)
    80004c94:	01013403          	ld	s0,16(sp)
    80004c98:	00048513          	mv	a0,s1
    80004c9c:	00813483          	ld	s1,8(sp)
    80004ca0:	02010113          	addi	sp,sp,32
    80004ca4:	00008067          	ret

0000000080004ca8 <initlock>:
    80004ca8:	ff010113          	addi	sp,sp,-16
    80004cac:	00813423          	sd	s0,8(sp)
    80004cb0:	01010413          	addi	s0,sp,16
    80004cb4:	00813403          	ld	s0,8(sp)
    80004cb8:	00b53423          	sd	a1,8(a0)
    80004cbc:	00052023          	sw	zero,0(a0)
    80004cc0:	00053823          	sd	zero,16(a0)
    80004cc4:	01010113          	addi	sp,sp,16
    80004cc8:	00008067          	ret

0000000080004ccc <acquire>:
    80004ccc:	fe010113          	addi	sp,sp,-32
    80004cd0:	00813823          	sd	s0,16(sp)
    80004cd4:	00913423          	sd	s1,8(sp)
    80004cd8:	00113c23          	sd	ra,24(sp)
    80004cdc:	01213023          	sd	s2,0(sp)
    80004ce0:	02010413          	addi	s0,sp,32
    80004ce4:	00050493          	mv	s1,a0
    80004ce8:	10002973          	csrr	s2,sstatus
    80004cec:	100027f3          	csrr	a5,sstatus
    80004cf0:	ffd7f793          	andi	a5,a5,-3
    80004cf4:	10079073          	csrw	sstatus,a5
    80004cf8:	fffff097          	auipc	ra,0xfffff
    80004cfc:	8e0080e7          	jalr	-1824(ra) # 800035d8 <mycpu>
    80004d00:	07852783          	lw	a5,120(a0)
    80004d04:	06078e63          	beqz	a5,80004d80 <acquire+0xb4>
    80004d08:	fffff097          	auipc	ra,0xfffff
    80004d0c:	8d0080e7          	jalr	-1840(ra) # 800035d8 <mycpu>
    80004d10:	07852783          	lw	a5,120(a0)
    80004d14:	0004a703          	lw	a4,0(s1)
    80004d18:	0017879b          	addiw	a5,a5,1
    80004d1c:	06f52c23          	sw	a5,120(a0)
    80004d20:	04071063          	bnez	a4,80004d60 <acquire+0x94>
    80004d24:	00100713          	li	a4,1
    80004d28:	00070793          	mv	a5,a4
    80004d2c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004d30:	0007879b          	sext.w	a5,a5
    80004d34:	fe079ae3          	bnez	a5,80004d28 <acquire+0x5c>
    80004d38:	0ff0000f          	fence
    80004d3c:	fffff097          	auipc	ra,0xfffff
    80004d40:	89c080e7          	jalr	-1892(ra) # 800035d8 <mycpu>
    80004d44:	01813083          	ld	ra,24(sp)
    80004d48:	01013403          	ld	s0,16(sp)
    80004d4c:	00a4b823          	sd	a0,16(s1)
    80004d50:	00013903          	ld	s2,0(sp)
    80004d54:	00813483          	ld	s1,8(sp)
    80004d58:	02010113          	addi	sp,sp,32
    80004d5c:	00008067          	ret
    80004d60:	0104b903          	ld	s2,16(s1)
    80004d64:	fffff097          	auipc	ra,0xfffff
    80004d68:	874080e7          	jalr	-1932(ra) # 800035d8 <mycpu>
    80004d6c:	faa91ce3          	bne	s2,a0,80004d24 <acquire+0x58>
    80004d70:	00002517          	auipc	a0,0x2
    80004d74:	90050513          	addi	a0,a0,-1792 # 80006670 <digits+0x20>
    80004d78:	fffff097          	auipc	ra,0xfffff
    80004d7c:	224080e7          	jalr	548(ra) # 80003f9c <panic>
    80004d80:	00195913          	srli	s2,s2,0x1
    80004d84:	fffff097          	auipc	ra,0xfffff
    80004d88:	854080e7          	jalr	-1964(ra) # 800035d8 <mycpu>
    80004d8c:	00197913          	andi	s2,s2,1
    80004d90:	07252e23          	sw	s2,124(a0)
    80004d94:	f75ff06f          	j	80004d08 <acquire+0x3c>

0000000080004d98 <release>:
    80004d98:	fe010113          	addi	sp,sp,-32
    80004d9c:	00813823          	sd	s0,16(sp)
    80004da0:	00113c23          	sd	ra,24(sp)
    80004da4:	00913423          	sd	s1,8(sp)
    80004da8:	01213023          	sd	s2,0(sp)
    80004dac:	02010413          	addi	s0,sp,32
    80004db0:	00052783          	lw	a5,0(a0)
    80004db4:	00079a63          	bnez	a5,80004dc8 <release+0x30>
    80004db8:	00002517          	auipc	a0,0x2
    80004dbc:	8c050513          	addi	a0,a0,-1856 # 80006678 <digits+0x28>
    80004dc0:	fffff097          	auipc	ra,0xfffff
    80004dc4:	1dc080e7          	jalr	476(ra) # 80003f9c <panic>
    80004dc8:	01053903          	ld	s2,16(a0)
    80004dcc:	00050493          	mv	s1,a0
    80004dd0:	fffff097          	auipc	ra,0xfffff
    80004dd4:	808080e7          	jalr	-2040(ra) # 800035d8 <mycpu>
    80004dd8:	fea910e3          	bne	s2,a0,80004db8 <release+0x20>
    80004ddc:	0004b823          	sd	zero,16(s1)
    80004de0:	0ff0000f          	fence
    80004de4:	0f50000f          	fence	iorw,ow
    80004de8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80004dec:	ffffe097          	auipc	ra,0xffffe
    80004df0:	7ec080e7          	jalr	2028(ra) # 800035d8 <mycpu>
    80004df4:	100027f3          	csrr	a5,sstatus
    80004df8:	0027f793          	andi	a5,a5,2
    80004dfc:	04079a63          	bnez	a5,80004e50 <release+0xb8>
    80004e00:	07852783          	lw	a5,120(a0)
    80004e04:	02f05e63          	blez	a5,80004e40 <release+0xa8>
    80004e08:	fff7871b          	addiw	a4,a5,-1
    80004e0c:	06e52c23          	sw	a4,120(a0)
    80004e10:	00071c63          	bnez	a4,80004e28 <release+0x90>
    80004e14:	07c52783          	lw	a5,124(a0)
    80004e18:	00078863          	beqz	a5,80004e28 <release+0x90>
    80004e1c:	100027f3          	csrr	a5,sstatus
    80004e20:	0027e793          	ori	a5,a5,2
    80004e24:	10079073          	csrw	sstatus,a5
    80004e28:	01813083          	ld	ra,24(sp)
    80004e2c:	01013403          	ld	s0,16(sp)
    80004e30:	00813483          	ld	s1,8(sp)
    80004e34:	00013903          	ld	s2,0(sp)
    80004e38:	02010113          	addi	sp,sp,32
    80004e3c:	00008067          	ret
    80004e40:	00002517          	auipc	a0,0x2
    80004e44:	85850513          	addi	a0,a0,-1960 # 80006698 <digits+0x48>
    80004e48:	fffff097          	auipc	ra,0xfffff
    80004e4c:	154080e7          	jalr	340(ra) # 80003f9c <panic>
    80004e50:	00002517          	auipc	a0,0x2
    80004e54:	83050513          	addi	a0,a0,-2000 # 80006680 <digits+0x30>
    80004e58:	fffff097          	auipc	ra,0xfffff
    80004e5c:	144080e7          	jalr	324(ra) # 80003f9c <panic>

0000000080004e60 <holding>:
    80004e60:	00052783          	lw	a5,0(a0)
    80004e64:	00079663          	bnez	a5,80004e70 <holding+0x10>
    80004e68:	00000513          	li	a0,0
    80004e6c:	00008067          	ret
    80004e70:	fe010113          	addi	sp,sp,-32
    80004e74:	00813823          	sd	s0,16(sp)
    80004e78:	00913423          	sd	s1,8(sp)
    80004e7c:	00113c23          	sd	ra,24(sp)
    80004e80:	02010413          	addi	s0,sp,32
    80004e84:	01053483          	ld	s1,16(a0)
    80004e88:	ffffe097          	auipc	ra,0xffffe
    80004e8c:	750080e7          	jalr	1872(ra) # 800035d8 <mycpu>
    80004e90:	01813083          	ld	ra,24(sp)
    80004e94:	01013403          	ld	s0,16(sp)
    80004e98:	40a48533          	sub	a0,s1,a0
    80004e9c:	00153513          	seqz	a0,a0
    80004ea0:	00813483          	ld	s1,8(sp)
    80004ea4:	02010113          	addi	sp,sp,32
    80004ea8:	00008067          	ret

0000000080004eac <push_off>:
    80004eac:	fe010113          	addi	sp,sp,-32
    80004eb0:	00813823          	sd	s0,16(sp)
    80004eb4:	00113c23          	sd	ra,24(sp)
    80004eb8:	00913423          	sd	s1,8(sp)
    80004ebc:	02010413          	addi	s0,sp,32
    80004ec0:	100024f3          	csrr	s1,sstatus
    80004ec4:	100027f3          	csrr	a5,sstatus
    80004ec8:	ffd7f793          	andi	a5,a5,-3
    80004ecc:	10079073          	csrw	sstatus,a5
    80004ed0:	ffffe097          	auipc	ra,0xffffe
    80004ed4:	708080e7          	jalr	1800(ra) # 800035d8 <mycpu>
    80004ed8:	07852783          	lw	a5,120(a0)
    80004edc:	02078663          	beqz	a5,80004f08 <push_off+0x5c>
    80004ee0:	ffffe097          	auipc	ra,0xffffe
    80004ee4:	6f8080e7          	jalr	1784(ra) # 800035d8 <mycpu>
    80004ee8:	07852783          	lw	a5,120(a0)
    80004eec:	01813083          	ld	ra,24(sp)
    80004ef0:	01013403          	ld	s0,16(sp)
    80004ef4:	0017879b          	addiw	a5,a5,1
    80004ef8:	06f52c23          	sw	a5,120(a0)
    80004efc:	00813483          	ld	s1,8(sp)
    80004f00:	02010113          	addi	sp,sp,32
    80004f04:	00008067          	ret
    80004f08:	0014d493          	srli	s1,s1,0x1
    80004f0c:	ffffe097          	auipc	ra,0xffffe
    80004f10:	6cc080e7          	jalr	1740(ra) # 800035d8 <mycpu>
    80004f14:	0014f493          	andi	s1,s1,1
    80004f18:	06952e23          	sw	s1,124(a0)
    80004f1c:	fc5ff06f          	j	80004ee0 <push_off+0x34>

0000000080004f20 <pop_off>:
    80004f20:	ff010113          	addi	sp,sp,-16
    80004f24:	00813023          	sd	s0,0(sp)
    80004f28:	00113423          	sd	ra,8(sp)
    80004f2c:	01010413          	addi	s0,sp,16
    80004f30:	ffffe097          	auipc	ra,0xffffe
    80004f34:	6a8080e7          	jalr	1704(ra) # 800035d8 <mycpu>
    80004f38:	100027f3          	csrr	a5,sstatus
    80004f3c:	0027f793          	andi	a5,a5,2
    80004f40:	04079663          	bnez	a5,80004f8c <pop_off+0x6c>
    80004f44:	07852783          	lw	a5,120(a0)
    80004f48:	02f05a63          	blez	a5,80004f7c <pop_off+0x5c>
    80004f4c:	fff7871b          	addiw	a4,a5,-1
    80004f50:	06e52c23          	sw	a4,120(a0)
    80004f54:	00071c63          	bnez	a4,80004f6c <pop_off+0x4c>
    80004f58:	07c52783          	lw	a5,124(a0)
    80004f5c:	00078863          	beqz	a5,80004f6c <pop_off+0x4c>
    80004f60:	100027f3          	csrr	a5,sstatus
    80004f64:	0027e793          	ori	a5,a5,2
    80004f68:	10079073          	csrw	sstatus,a5
    80004f6c:	00813083          	ld	ra,8(sp)
    80004f70:	00013403          	ld	s0,0(sp)
    80004f74:	01010113          	addi	sp,sp,16
    80004f78:	00008067          	ret
    80004f7c:	00001517          	auipc	a0,0x1
    80004f80:	71c50513          	addi	a0,a0,1820 # 80006698 <digits+0x48>
    80004f84:	fffff097          	auipc	ra,0xfffff
    80004f88:	018080e7          	jalr	24(ra) # 80003f9c <panic>
    80004f8c:	00001517          	auipc	a0,0x1
    80004f90:	6f450513          	addi	a0,a0,1780 # 80006680 <digits+0x30>
    80004f94:	fffff097          	auipc	ra,0xfffff
    80004f98:	008080e7          	jalr	8(ra) # 80003f9c <panic>

0000000080004f9c <push_on>:
    80004f9c:	fe010113          	addi	sp,sp,-32
    80004fa0:	00813823          	sd	s0,16(sp)
    80004fa4:	00113c23          	sd	ra,24(sp)
    80004fa8:	00913423          	sd	s1,8(sp)
    80004fac:	02010413          	addi	s0,sp,32
    80004fb0:	100024f3          	csrr	s1,sstatus
    80004fb4:	100027f3          	csrr	a5,sstatus
    80004fb8:	0027e793          	ori	a5,a5,2
    80004fbc:	10079073          	csrw	sstatus,a5
    80004fc0:	ffffe097          	auipc	ra,0xffffe
    80004fc4:	618080e7          	jalr	1560(ra) # 800035d8 <mycpu>
    80004fc8:	07852783          	lw	a5,120(a0)
    80004fcc:	02078663          	beqz	a5,80004ff8 <push_on+0x5c>
    80004fd0:	ffffe097          	auipc	ra,0xffffe
    80004fd4:	608080e7          	jalr	1544(ra) # 800035d8 <mycpu>
    80004fd8:	07852783          	lw	a5,120(a0)
    80004fdc:	01813083          	ld	ra,24(sp)
    80004fe0:	01013403          	ld	s0,16(sp)
    80004fe4:	0017879b          	addiw	a5,a5,1
    80004fe8:	06f52c23          	sw	a5,120(a0)
    80004fec:	00813483          	ld	s1,8(sp)
    80004ff0:	02010113          	addi	sp,sp,32
    80004ff4:	00008067          	ret
    80004ff8:	0014d493          	srli	s1,s1,0x1
    80004ffc:	ffffe097          	auipc	ra,0xffffe
    80005000:	5dc080e7          	jalr	1500(ra) # 800035d8 <mycpu>
    80005004:	0014f493          	andi	s1,s1,1
    80005008:	06952e23          	sw	s1,124(a0)
    8000500c:	fc5ff06f          	j	80004fd0 <push_on+0x34>

0000000080005010 <pop_on>:
    80005010:	ff010113          	addi	sp,sp,-16
    80005014:	00813023          	sd	s0,0(sp)
    80005018:	00113423          	sd	ra,8(sp)
    8000501c:	01010413          	addi	s0,sp,16
    80005020:	ffffe097          	auipc	ra,0xffffe
    80005024:	5b8080e7          	jalr	1464(ra) # 800035d8 <mycpu>
    80005028:	100027f3          	csrr	a5,sstatus
    8000502c:	0027f793          	andi	a5,a5,2
    80005030:	04078463          	beqz	a5,80005078 <pop_on+0x68>
    80005034:	07852783          	lw	a5,120(a0)
    80005038:	02f05863          	blez	a5,80005068 <pop_on+0x58>
    8000503c:	fff7879b          	addiw	a5,a5,-1
    80005040:	06f52c23          	sw	a5,120(a0)
    80005044:	07853783          	ld	a5,120(a0)
    80005048:	00079863          	bnez	a5,80005058 <pop_on+0x48>
    8000504c:	100027f3          	csrr	a5,sstatus
    80005050:	ffd7f793          	andi	a5,a5,-3
    80005054:	10079073          	csrw	sstatus,a5
    80005058:	00813083          	ld	ra,8(sp)
    8000505c:	00013403          	ld	s0,0(sp)
    80005060:	01010113          	addi	sp,sp,16
    80005064:	00008067          	ret
    80005068:	00001517          	auipc	a0,0x1
    8000506c:	65850513          	addi	a0,a0,1624 # 800066c0 <digits+0x70>
    80005070:	fffff097          	auipc	ra,0xfffff
    80005074:	f2c080e7          	jalr	-212(ra) # 80003f9c <panic>
    80005078:	00001517          	auipc	a0,0x1
    8000507c:	62850513          	addi	a0,a0,1576 # 800066a0 <digits+0x50>
    80005080:	fffff097          	auipc	ra,0xfffff
    80005084:	f1c080e7          	jalr	-228(ra) # 80003f9c <panic>

0000000080005088 <__memset>:
    80005088:	ff010113          	addi	sp,sp,-16
    8000508c:	00813423          	sd	s0,8(sp)
    80005090:	01010413          	addi	s0,sp,16
    80005094:	1a060e63          	beqz	a2,80005250 <__memset+0x1c8>
    80005098:	40a007b3          	neg	a5,a0
    8000509c:	0077f793          	andi	a5,a5,7
    800050a0:	00778693          	addi	a3,a5,7
    800050a4:	00b00813          	li	a6,11
    800050a8:	0ff5f593          	andi	a1,a1,255
    800050ac:	fff6071b          	addiw	a4,a2,-1
    800050b0:	1b06e663          	bltu	a3,a6,8000525c <__memset+0x1d4>
    800050b4:	1cd76463          	bltu	a4,a3,8000527c <__memset+0x1f4>
    800050b8:	1a078e63          	beqz	a5,80005274 <__memset+0x1ec>
    800050bc:	00b50023          	sb	a1,0(a0)
    800050c0:	00100713          	li	a4,1
    800050c4:	1ae78463          	beq	a5,a4,8000526c <__memset+0x1e4>
    800050c8:	00b500a3          	sb	a1,1(a0)
    800050cc:	00200713          	li	a4,2
    800050d0:	1ae78a63          	beq	a5,a4,80005284 <__memset+0x1fc>
    800050d4:	00b50123          	sb	a1,2(a0)
    800050d8:	00300713          	li	a4,3
    800050dc:	18e78463          	beq	a5,a4,80005264 <__memset+0x1dc>
    800050e0:	00b501a3          	sb	a1,3(a0)
    800050e4:	00400713          	li	a4,4
    800050e8:	1ae78263          	beq	a5,a4,8000528c <__memset+0x204>
    800050ec:	00b50223          	sb	a1,4(a0)
    800050f0:	00500713          	li	a4,5
    800050f4:	1ae78063          	beq	a5,a4,80005294 <__memset+0x20c>
    800050f8:	00b502a3          	sb	a1,5(a0)
    800050fc:	00700713          	li	a4,7
    80005100:	18e79e63          	bne	a5,a4,8000529c <__memset+0x214>
    80005104:	00b50323          	sb	a1,6(a0)
    80005108:	00700e93          	li	t4,7
    8000510c:	00859713          	slli	a4,a1,0x8
    80005110:	00e5e733          	or	a4,a1,a4
    80005114:	01059e13          	slli	t3,a1,0x10
    80005118:	01c76e33          	or	t3,a4,t3
    8000511c:	01859313          	slli	t1,a1,0x18
    80005120:	006e6333          	or	t1,t3,t1
    80005124:	02059893          	slli	a7,a1,0x20
    80005128:	40f60e3b          	subw	t3,a2,a5
    8000512c:	011368b3          	or	a7,t1,a7
    80005130:	02859813          	slli	a6,a1,0x28
    80005134:	0108e833          	or	a6,a7,a6
    80005138:	03059693          	slli	a3,a1,0x30
    8000513c:	003e589b          	srliw	a7,t3,0x3
    80005140:	00d866b3          	or	a3,a6,a3
    80005144:	03859713          	slli	a4,a1,0x38
    80005148:	00389813          	slli	a6,a7,0x3
    8000514c:	00f507b3          	add	a5,a0,a5
    80005150:	00e6e733          	or	a4,a3,a4
    80005154:	000e089b          	sext.w	a7,t3
    80005158:	00f806b3          	add	a3,a6,a5
    8000515c:	00e7b023          	sd	a4,0(a5)
    80005160:	00878793          	addi	a5,a5,8
    80005164:	fed79ce3          	bne	a5,a3,8000515c <__memset+0xd4>
    80005168:	ff8e7793          	andi	a5,t3,-8
    8000516c:	0007871b          	sext.w	a4,a5
    80005170:	01d787bb          	addw	a5,a5,t4
    80005174:	0ce88e63          	beq	a7,a4,80005250 <__memset+0x1c8>
    80005178:	00f50733          	add	a4,a0,a5
    8000517c:	00b70023          	sb	a1,0(a4)
    80005180:	0017871b          	addiw	a4,a5,1
    80005184:	0cc77663          	bgeu	a4,a2,80005250 <__memset+0x1c8>
    80005188:	00e50733          	add	a4,a0,a4
    8000518c:	00b70023          	sb	a1,0(a4)
    80005190:	0027871b          	addiw	a4,a5,2
    80005194:	0ac77e63          	bgeu	a4,a2,80005250 <__memset+0x1c8>
    80005198:	00e50733          	add	a4,a0,a4
    8000519c:	00b70023          	sb	a1,0(a4)
    800051a0:	0037871b          	addiw	a4,a5,3
    800051a4:	0ac77663          	bgeu	a4,a2,80005250 <__memset+0x1c8>
    800051a8:	00e50733          	add	a4,a0,a4
    800051ac:	00b70023          	sb	a1,0(a4)
    800051b0:	0047871b          	addiw	a4,a5,4
    800051b4:	08c77e63          	bgeu	a4,a2,80005250 <__memset+0x1c8>
    800051b8:	00e50733          	add	a4,a0,a4
    800051bc:	00b70023          	sb	a1,0(a4)
    800051c0:	0057871b          	addiw	a4,a5,5
    800051c4:	08c77663          	bgeu	a4,a2,80005250 <__memset+0x1c8>
    800051c8:	00e50733          	add	a4,a0,a4
    800051cc:	00b70023          	sb	a1,0(a4)
    800051d0:	0067871b          	addiw	a4,a5,6
    800051d4:	06c77e63          	bgeu	a4,a2,80005250 <__memset+0x1c8>
    800051d8:	00e50733          	add	a4,a0,a4
    800051dc:	00b70023          	sb	a1,0(a4)
    800051e0:	0077871b          	addiw	a4,a5,7
    800051e4:	06c77663          	bgeu	a4,a2,80005250 <__memset+0x1c8>
    800051e8:	00e50733          	add	a4,a0,a4
    800051ec:	00b70023          	sb	a1,0(a4)
    800051f0:	0087871b          	addiw	a4,a5,8
    800051f4:	04c77e63          	bgeu	a4,a2,80005250 <__memset+0x1c8>
    800051f8:	00e50733          	add	a4,a0,a4
    800051fc:	00b70023          	sb	a1,0(a4)
    80005200:	0097871b          	addiw	a4,a5,9
    80005204:	04c77663          	bgeu	a4,a2,80005250 <__memset+0x1c8>
    80005208:	00e50733          	add	a4,a0,a4
    8000520c:	00b70023          	sb	a1,0(a4)
    80005210:	00a7871b          	addiw	a4,a5,10
    80005214:	02c77e63          	bgeu	a4,a2,80005250 <__memset+0x1c8>
    80005218:	00e50733          	add	a4,a0,a4
    8000521c:	00b70023          	sb	a1,0(a4)
    80005220:	00b7871b          	addiw	a4,a5,11
    80005224:	02c77663          	bgeu	a4,a2,80005250 <__memset+0x1c8>
    80005228:	00e50733          	add	a4,a0,a4
    8000522c:	00b70023          	sb	a1,0(a4)
    80005230:	00c7871b          	addiw	a4,a5,12
    80005234:	00c77e63          	bgeu	a4,a2,80005250 <__memset+0x1c8>
    80005238:	00e50733          	add	a4,a0,a4
    8000523c:	00b70023          	sb	a1,0(a4)
    80005240:	00d7879b          	addiw	a5,a5,13
    80005244:	00c7f663          	bgeu	a5,a2,80005250 <__memset+0x1c8>
    80005248:	00f507b3          	add	a5,a0,a5
    8000524c:	00b78023          	sb	a1,0(a5)
    80005250:	00813403          	ld	s0,8(sp)
    80005254:	01010113          	addi	sp,sp,16
    80005258:	00008067          	ret
    8000525c:	00b00693          	li	a3,11
    80005260:	e55ff06f          	j	800050b4 <__memset+0x2c>
    80005264:	00300e93          	li	t4,3
    80005268:	ea5ff06f          	j	8000510c <__memset+0x84>
    8000526c:	00100e93          	li	t4,1
    80005270:	e9dff06f          	j	8000510c <__memset+0x84>
    80005274:	00000e93          	li	t4,0
    80005278:	e95ff06f          	j	8000510c <__memset+0x84>
    8000527c:	00000793          	li	a5,0
    80005280:	ef9ff06f          	j	80005178 <__memset+0xf0>
    80005284:	00200e93          	li	t4,2
    80005288:	e85ff06f          	j	8000510c <__memset+0x84>
    8000528c:	00400e93          	li	t4,4
    80005290:	e7dff06f          	j	8000510c <__memset+0x84>
    80005294:	00500e93          	li	t4,5
    80005298:	e75ff06f          	j	8000510c <__memset+0x84>
    8000529c:	00600e93          	li	t4,6
    800052a0:	e6dff06f          	j	8000510c <__memset+0x84>

00000000800052a4 <__memmove>:
    800052a4:	ff010113          	addi	sp,sp,-16
    800052a8:	00813423          	sd	s0,8(sp)
    800052ac:	01010413          	addi	s0,sp,16
    800052b0:	0e060863          	beqz	a2,800053a0 <__memmove+0xfc>
    800052b4:	fff6069b          	addiw	a3,a2,-1
    800052b8:	0006881b          	sext.w	a6,a3
    800052bc:	0ea5e863          	bltu	a1,a0,800053ac <__memmove+0x108>
    800052c0:	00758713          	addi	a4,a1,7
    800052c4:	00a5e7b3          	or	a5,a1,a0
    800052c8:	40a70733          	sub	a4,a4,a0
    800052cc:	0077f793          	andi	a5,a5,7
    800052d0:	00f73713          	sltiu	a4,a4,15
    800052d4:	00174713          	xori	a4,a4,1
    800052d8:	0017b793          	seqz	a5,a5
    800052dc:	00e7f7b3          	and	a5,a5,a4
    800052e0:	10078863          	beqz	a5,800053f0 <__memmove+0x14c>
    800052e4:	00900793          	li	a5,9
    800052e8:	1107f463          	bgeu	a5,a6,800053f0 <__memmove+0x14c>
    800052ec:	0036581b          	srliw	a6,a2,0x3
    800052f0:	fff8081b          	addiw	a6,a6,-1
    800052f4:	02081813          	slli	a6,a6,0x20
    800052f8:	01d85893          	srli	a7,a6,0x1d
    800052fc:	00858813          	addi	a6,a1,8
    80005300:	00058793          	mv	a5,a1
    80005304:	00050713          	mv	a4,a0
    80005308:	01088833          	add	a6,a7,a6
    8000530c:	0007b883          	ld	a7,0(a5)
    80005310:	00878793          	addi	a5,a5,8
    80005314:	00870713          	addi	a4,a4,8
    80005318:	ff173c23          	sd	a7,-8(a4)
    8000531c:	ff0798e3          	bne	a5,a6,8000530c <__memmove+0x68>
    80005320:	ff867713          	andi	a4,a2,-8
    80005324:	02071793          	slli	a5,a4,0x20
    80005328:	0207d793          	srli	a5,a5,0x20
    8000532c:	00f585b3          	add	a1,a1,a5
    80005330:	40e686bb          	subw	a3,a3,a4
    80005334:	00f507b3          	add	a5,a0,a5
    80005338:	06e60463          	beq	a2,a4,800053a0 <__memmove+0xfc>
    8000533c:	0005c703          	lbu	a4,0(a1)
    80005340:	00e78023          	sb	a4,0(a5)
    80005344:	04068e63          	beqz	a3,800053a0 <__memmove+0xfc>
    80005348:	0015c603          	lbu	a2,1(a1)
    8000534c:	00100713          	li	a4,1
    80005350:	00c780a3          	sb	a2,1(a5)
    80005354:	04e68663          	beq	a3,a4,800053a0 <__memmove+0xfc>
    80005358:	0025c603          	lbu	a2,2(a1)
    8000535c:	00200713          	li	a4,2
    80005360:	00c78123          	sb	a2,2(a5)
    80005364:	02e68e63          	beq	a3,a4,800053a0 <__memmove+0xfc>
    80005368:	0035c603          	lbu	a2,3(a1)
    8000536c:	00300713          	li	a4,3
    80005370:	00c781a3          	sb	a2,3(a5)
    80005374:	02e68663          	beq	a3,a4,800053a0 <__memmove+0xfc>
    80005378:	0045c603          	lbu	a2,4(a1)
    8000537c:	00400713          	li	a4,4
    80005380:	00c78223          	sb	a2,4(a5)
    80005384:	00e68e63          	beq	a3,a4,800053a0 <__memmove+0xfc>
    80005388:	0055c603          	lbu	a2,5(a1)
    8000538c:	00500713          	li	a4,5
    80005390:	00c782a3          	sb	a2,5(a5)
    80005394:	00e68663          	beq	a3,a4,800053a0 <__memmove+0xfc>
    80005398:	0065c703          	lbu	a4,6(a1)
    8000539c:	00e78323          	sb	a4,6(a5)
    800053a0:	00813403          	ld	s0,8(sp)
    800053a4:	01010113          	addi	sp,sp,16
    800053a8:	00008067          	ret
    800053ac:	02061713          	slli	a4,a2,0x20
    800053b0:	02075713          	srli	a4,a4,0x20
    800053b4:	00e587b3          	add	a5,a1,a4
    800053b8:	f0f574e3          	bgeu	a0,a5,800052c0 <__memmove+0x1c>
    800053bc:	02069613          	slli	a2,a3,0x20
    800053c0:	02065613          	srli	a2,a2,0x20
    800053c4:	fff64613          	not	a2,a2
    800053c8:	00e50733          	add	a4,a0,a4
    800053cc:	00c78633          	add	a2,a5,a2
    800053d0:	fff7c683          	lbu	a3,-1(a5)
    800053d4:	fff78793          	addi	a5,a5,-1
    800053d8:	fff70713          	addi	a4,a4,-1
    800053dc:	00d70023          	sb	a3,0(a4)
    800053e0:	fec798e3          	bne	a5,a2,800053d0 <__memmove+0x12c>
    800053e4:	00813403          	ld	s0,8(sp)
    800053e8:	01010113          	addi	sp,sp,16
    800053ec:	00008067          	ret
    800053f0:	02069713          	slli	a4,a3,0x20
    800053f4:	02075713          	srli	a4,a4,0x20
    800053f8:	00170713          	addi	a4,a4,1
    800053fc:	00e50733          	add	a4,a0,a4
    80005400:	00050793          	mv	a5,a0
    80005404:	0005c683          	lbu	a3,0(a1)
    80005408:	00178793          	addi	a5,a5,1
    8000540c:	00158593          	addi	a1,a1,1
    80005410:	fed78fa3          	sb	a3,-1(a5)
    80005414:	fee798e3          	bne	a5,a4,80005404 <__memmove+0x160>
    80005418:	f89ff06f          	j	800053a0 <__memmove+0xfc>

000000008000541c <__mem_free>:
    8000541c:	ff010113          	addi	sp,sp,-16
    80005420:	00813423          	sd	s0,8(sp)
    80005424:	01010413          	addi	s0,sp,16
    80005428:	00002597          	auipc	a1,0x2
    8000542c:	c3058593          	addi	a1,a1,-976 # 80007058 <freep>
    80005430:	0005b783          	ld	a5,0(a1)
    80005434:	ff050693          	addi	a3,a0,-16
    80005438:	0007b703          	ld	a4,0(a5)
    8000543c:	00d7fc63          	bgeu	a5,a3,80005454 <__mem_free+0x38>
    80005440:	00e6ee63          	bltu	a3,a4,8000545c <__mem_free+0x40>
    80005444:	00e7fc63          	bgeu	a5,a4,8000545c <__mem_free+0x40>
    80005448:	00070793          	mv	a5,a4
    8000544c:	0007b703          	ld	a4,0(a5)
    80005450:	fed7e8e3          	bltu	a5,a3,80005440 <__mem_free+0x24>
    80005454:	fee7eae3          	bltu	a5,a4,80005448 <__mem_free+0x2c>
    80005458:	fee6f8e3          	bgeu	a3,a4,80005448 <__mem_free+0x2c>
    8000545c:	ff852803          	lw	a6,-8(a0)
    80005460:	02081613          	slli	a2,a6,0x20
    80005464:	01c65613          	srli	a2,a2,0x1c
    80005468:	00c68633          	add	a2,a3,a2
    8000546c:	02c70a63          	beq	a4,a2,800054a0 <__mem_free+0x84>
    80005470:	fee53823          	sd	a4,-16(a0)
    80005474:	0087a503          	lw	a0,8(a5)
    80005478:	02051613          	slli	a2,a0,0x20
    8000547c:	01c65613          	srli	a2,a2,0x1c
    80005480:	00c78633          	add	a2,a5,a2
    80005484:	04c68263          	beq	a3,a2,800054c8 <__mem_free+0xac>
    80005488:	00813403          	ld	s0,8(sp)
    8000548c:	00d7b023          	sd	a3,0(a5)
    80005490:	00f5b023          	sd	a5,0(a1)
    80005494:	00000513          	li	a0,0
    80005498:	01010113          	addi	sp,sp,16
    8000549c:	00008067          	ret
    800054a0:	00872603          	lw	a2,8(a4)
    800054a4:	00073703          	ld	a4,0(a4)
    800054a8:	0106083b          	addw	a6,a2,a6
    800054ac:	ff052c23          	sw	a6,-8(a0)
    800054b0:	fee53823          	sd	a4,-16(a0)
    800054b4:	0087a503          	lw	a0,8(a5)
    800054b8:	02051613          	slli	a2,a0,0x20
    800054bc:	01c65613          	srli	a2,a2,0x1c
    800054c0:	00c78633          	add	a2,a5,a2
    800054c4:	fcc692e3          	bne	a3,a2,80005488 <__mem_free+0x6c>
    800054c8:	00813403          	ld	s0,8(sp)
    800054cc:	0105053b          	addw	a0,a0,a6
    800054d0:	00a7a423          	sw	a0,8(a5)
    800054d4:	00e7b023          	sd	a4,0(a5)
    800054d8:	00f5b023          	sd	a5,0(a1)
    800054dc:	00000513          	li	a0,0
    800054e0:	01010113          	addi	sp,sp,16
    800054e4:	00008067          	ret

00000000800054e8 <__mem_alloc>:
    800054e8:	fc010113          	addi	sp,sp,-64
    800054ec:	02813823          	sd	s0,48(sp)
    800054f0:	02913423          	sd	s1,40(sp)
    800054f4:	03213023          	sd	s2,32(sp)
    800054f8:	01513423          	sd	s5,8(sp)
    800054fc:	02113c23          	sd	ra,56(sp)
    80005500:	01313c23          	sd	s3,24(sp)
    80005504:	01413823          	sd	s4,16(sp)
    80005508:	01613023          	sd	s6,0(sp)
    8000550c:	04010413          	addi	s0,sp,64
    80005510:	00002a97          	auipc	s5,0x2
    80005514:	b48a8a93          	addi	s5,s5,-1208 # 80007058 <freep>
    80005518:	00f50913          	addi	s2,a0,15
    8000551c:	000ab683          	ld	a3,0(s5)
    80005520:	00495913          	srli	s2,s2,0x4
    80005524:	0019049b          	addiw	s1,s2,1
    80005528:	00048913          	mv	s2,s1
    8000552c:	0c068c63          	beqz	a3,80005604 <__mem_alloc+0x11c>
    80005530:	0006b503          	ld	a0,0(a3)
    80005534:	00852703          	lw	a4,8(a0)
    80005538:	10977063          	bgeu	a4,s1,80005638 <__mem_alloc+0x150>
    8000553c:	000017b7          	lui	a5,0x1
    80005540:	0009099b          	sext.w	s3,s2
    80005544:	0af4e863          	bltu	s1,a5,800055f4 <__mem_alloc+0x10c>
    80005548:	02099a13          	slli	s4,s3,0x20
    8000554c:	01ca5a13          	srli	s4,s4,0x1c
    80005550:	fff00b13          	li	s6,-1
    80005554:	0100006f          	j	80005564 <__mem_alloc+0x7c>
    80005558:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000555c:	00852703          	lw	a4,8(a0)
    80005560:	04977463          	bgeu	a4,s1,800055a8 <__mem_alloc+0xc0>
    80005564:	00050793          	mv	a5,a0
    80005568:	fea698e3          	bne	a3,a0,80005558 <__mem_alloc+0x70>
    8000556c:	000a0513          	mv	a0,s4
    80005570:	00000097          	auipc	ra,0x0
    80005574:	1f0080e7          	jalr	496(ra) # 80005760 <kvmincrease>
    80005578:	00050793          	mv	a5,a0
    8000557c:	01050513          	addi	a0,a0,16
    80005580:	07678e63          	beq	a5,s6,800055fc <__mem_alloc+0x114>
    80005584:	0137a423          	sw	s3,8(a5)
    80005588:	00000097          	auipc	ra,0x0
    8000558c:	e94080e7          	jalr	-364(ra) # 8000541c <__mem_free>
    80005590:	000ab783          	ld	a5,0(s5)
    80005594:	06078463          	beqz	a5,800055fc <__mem_alloc+0x114>
    80005598:	0007b503          	ld	a0,0(a5)
    8000559c:	00078693          	mv	a3,a5
    800055a0:	00852703          	lw	a4,8(a0)
    800055a4:	fc9760e3          	bltu	a4,s1,80005564 <__mem_alloc+0x7c>
    800055a8:	08e48263          	beq	s1,a4,8000562c <__mem_alloc+0x144>
    800055ac:	4127073b          	subw	a4,a4,s2
    800055b0:	02071693          	slli	a3,a4,0x20
    800055b4:	01c6d693          	srli	a3,a3,0x1c
    800055b8:	00e52423          	sw	a4,8(a0)
    800055bc:	00d50533          	add	a0,a0,a3
    800055c0:	01252423          	sw	s2,8(a0)
    800055c4:	00fab023          	sd	a5,0(s5)
    800055c8:	01050513          	addi	a0,a0,16
    800055cc:	03813083          	ld	ra,56(sp)
    800055d0:	03013403          	ld	s0,48(sp)
    800055d4:	02813483          	ld	s1,40(sp)
    800055d8:	02013903          	ld	s2,32(sp)
    800055dc:	01813983          	ld	s3,24(sp)
    800055e0:	01013a03          	ld	s4,16(sp)
    800055e4:	00813a83          	ld	s5,8(sp)
    800055e8:	00013b03          	ld	s6,0(sp)
    800055ec:	04010113          	addi	sp,sp,64
    800055f0:	00008067          	ret
    800055f4:	000019b7          	lui	s3,0x1
    800055f8:	f51ff06f          	j	80005548 <__mem_alloc+0x60>
    800055fc:	00000513          	li	a0,0
    80005600:	fcdff06f          	j	800055cc <__mem_alloc+0xe4>
    80005604:	00003797          	auipc	a5,0x3
    80005608:	cfc78793          	addi	a5,a5,-772 # 80008300 <base>
    8000560c:	00078513          	mv	a0,a5
    80005610:	00fab023          	sd	a5,0(s5)
    80005614:	00f7b023          	sd	a5,0(a5)
    80005618:	00000713          	li	a4,0
    8000561c:	00003797          	auipc	a5,0x3
    80005620:	ce07a623          	sw	zero,-788(a5) # 80008308 <base+0x8>
    80005624:	00050693          	mv	a3,a0
    80005628:	f11ff06f          	j	80005538 <__mem_alloc+0x50>
    8000562c:	00053703          	ld	a4,0(a0)
    80005630:	00e7b023          	sd	a4,0(a5)
    80005634:	f91ff06f          	j	800055c4 <__mem_alloc+0xdc>
    80005638:	00068793          	mv	a5,a3
    8000563c:	f6dff06f          	j	800055a8 <__mem_alloc+0xc0>

0000000080005640 <__putc>:
    80005640:	fe010113          	addi	sp,sp,-32
    80005644:	00813823          	sd	s0,16(sp)
    80005648:	00113c23          	sd	ra,24(sp)
    8000564c:	02010413          	addi	s0,sp,32
    80005650:	00050793          	mv	a5,a0
    80005654:	fef40593          	addi	a1,s0,-17
    80005658:	00100613          	li	a2,1
    8000565c:	00000513          	li	a0,0
    80005660:	fef407a3          	sb	a5,-17(s0)
    80005664:	fffff097          	auipc	ra,0xfffff
    80005668:	918080e7          	jalr	-1768(ra) # 80003f7c <console_write>
    8000566c:	01813083          	ld	ra,24(sp)
    80005670:	01013403          	ld	s0,16(sp)
    80005674:	02010113          	addi	sp,sp,32
    80005678:	00008067          	ret

000000008000567c <__getc>:
    8000567c:	fe010113          	addi	sp,sp,-32
    80005680:	00813823          	sd	s0,16(sp)
    80005684:	00113c23          	sd	ra,24(sp)
    80005688:	02010413          	addi	s0,sp,32
    8000568c:	fe840593          	addi	a1,s0,-24
    80005690:	00100613          	li	a2,1
    80005694:	00000513          	li	a0,0
    80005698:	fffff097          	auipc	ra,0xfffff
    8000569c:	8c4080e7          	jalr	-1852(ra) # 80003f5c <console_read>
    800056a0:	fe844503          	lbu	a0,-24(s0)
    800056a4:	01813083          	ld	ra,24(sp)
    800056a8:	01013403          	ld	s0,16(sp)
    800056ac:	02010113          	addi	sp,sp,32
    800056b0:	00008067          	ret

00000000800056b4 <console_handler>:
    800056b4:	fe010113          	addi	sp,sp,-32
    800056b8:	00813823          	sd	s0,16(sp)
    800056bc:	00113c23          	sd	ra,24(sp)
    800056c0:	00913423          	sd	s1,8(sp)
    800056c4:	02010413          	addi	s0,sp,32
    800056c8:	14202773          	csrr	a4,scause
    800056cc:	100027f3          	csrr	a5,sstatus
    800056d0:	0027f793          	andi	a5,a5,2
    800056d4:	06079e63          	bnez	a5,80005750 <console_handler+0x9c>
    800056d8:	00074c63          	bltz	a4,800056f0 <console_handler+0x3c>
    800056dc:	01813083          	ld	ra,24(sp)
    800056e0:	01013403          	ld	s0,16(sp)
    800056e4:	00813483          	ld	s1,8(sp)
    800056e8:	02010113          	addi	sp,sp,32
    800056ec:	00008067          	ret
    800056f0:	0ff77713          	andi	a4,a4,255
    800056f4:	00900793          	li	a5,9
    800056f8:	fef712e3          	bne	a4,a5,800056dc <console_handler+0x28>
    800056fc:	ffffe097          	auipc	ra,0xffffe
    80005700:	4b8080e7          	jalr	1208(ra) # 80003bb4 <plic_claim>
    80005704:	00a00793          	li	a5,10
    80005708:	00050493          	mv	s1,a0
    8000570c:	02f50c63          	beq	a0,a5,80005744 <console_handler+0x90>
    80005710:	fc0506e3          	beqz	a0,800056dc <console_handler+0x28>
    80005714:	00050593          	mv	a1,a0
    80005718:	00001517          	auipc	a0,0x1
    8000571c:	eb050513          	addi	a0,a0,-336 # 800065c8 <_ZZ12printIntegermE6digits+0xe0>
    80005720:	fffff097          	auipc	ra,0xfffff
    80005724:	8d8080e7          	jalr	-1832(ra) # 80003ff8 <__printf>
    80005728:	01013403          	ld	s0,16(sp)
    8000572c:	01813083          	ld	ra,24(sp)
    80005730:	00048513          	mv	a0,s1
    80005734:	00813483          	ld	s1,8(sp)
    80005738:	02010113          	addi	sp,sp,32
    8000573c:	ffffe317          	auipc	t1,0xffffe
    80005740:	4b030067          	jr	1200(t1) # 80003bec <plic_complete>
    80005744:	fffff097          	auipc	ra,0xfffff
    80005748:	1bc080e7          	jalr	444(ra) # 80004900 <uartintr>
    8000574c:	fddff06f          	j	80005728 <console_handler+0x74>
    80005750:	00001517          	auipc	a0,0x1
    80005754:	f7850513          	addi	a0,a0,-136 # 800066c8 <digits+0x78>
    80005758:	fffff097          	auipc	ra,0xfffff
    8000575c:	844080e7          	jalr	-1980(ra) # 80003f9c <panic>

0000000080005760 <kvmincrease>:
    80005760:	fe010113          	addi	sp,sp,-32
    80005764:	01213023          	sd	s2,0(sp)
    80005768:	00001937          	lui	s2,0x1
    8000576c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80005770:	00813823          	sd	s0,16(sp)
    80005774:	00113c23          	sd	ra,24(sp)
    80005778:	00913423          	sd	s1,8(sp)
    8000577c:	02010413          	addi	s0,sp,32
    80005780:	01250933          	add	s2,a0,s2
    80005784:	00c95913          	srli	s2,s2,0xc
    80005788:	02090863          	beqz	s2,800057b8 <kvmincrease+0x58>
    8000578c:	00000493          	li	s1,0
    80005790:	00148493          	addi	s1,s1,1
    80005794:	fffff097          	auipc	ra,0xfffff
    80005798:	4bc080e7          	jalr	1212(ra) # 80004c50 <kalloc>
    8000579c:	fe991ae3          	bne	s2,s1,80005790 <kvmincrease+0x30>
    800057a0:	01813083          	ld	ra,24(sp)
    800057a4:	01013403          	ld	s0,16(sp)
    800057a8:	00813483          	ld	s1,8(sp)
    800057ac:	00013903          	ld	s2,0(sp)
    800057b0:	02010113          	addi	sp,sp,32
    800057b4:	00008067          	ret
    800057b8:	01813083          	ld	ra,24(sp)
    800057bc:	01013403          	ld	s0,16(sp)
    800057c0:	00813483          	ld	s1,8(sp)
    800057c4:	00013903          	ld	s2,0(sp)
    800057c8:	00000513          	li	a0,0
    800057cc:	02010113          	addi	sp,sp,32
    800057d0:	00008067          	ret
	...
