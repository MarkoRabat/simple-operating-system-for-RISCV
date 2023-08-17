
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	5a813103          	ld	sp,1448(sp) # 8000a5a8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	5b0060ef          	jal	ra,800065cc <start>

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
    80001084:	160050ef          	jal	ra,800061e4 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001144:	8d0080e7          	jalr	-1840(ra) # 80001a10 <_ZN3TCB12createThreadEPFvvE>
    80001148:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    8000114c:	00009797          	auipc	a5,0x9
    80001150:	4647b783          	ld	a5,1124(a5) # 8000a5b0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001154:	00a7b023          	sd	a0,0(a5)

    threads[1] = TCB::createThread(workerBodyA);
    80001158:	00009517          	auipc	a0,0x9
    8000115c:	44853503          	ld	a0,1096(a0) # 8000a5a0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001160:	00001097          	auipc	ra,0x1
    80001164:	8b0080e7          	jalr	-1872(ra) # 80001a10 <_ZN3TCB12createThreadEPFvvE>
    80001168:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    8000116c:	00008517          	auipc	a0,0x8
    80001170:	eb450513          	addi	a0,a0,-332 # 80009020 <CONSOLE_STATUS+0x10>
    80001174:	00005097          	auipc	ra,0x5
    80001178:	2e0080e7          	jalr	736(ra) # 80006454 <_Z11printStringPKc>
    threads[2] = TCB::createThread(workerBodyB);
    8000117c:	00009517          	auipc	a0,0x9
    80001180:	40c53503          	ld	a0,1036(a0) # 8000a588 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001184:	00001097          	auipc	ra,0x1
    80001188:	88c080e7          	jalr	-1908(ra) # 80001a10 <_ZN3TCB12createThreadEPFvvE>
    8000118c:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    80001190:	00008517          	auipc	a0,0x8
    80001194:	ea850513          	addi	a0,a0,-344 # 80009038 <CONSOLE_STATUS+0x28>
    80001198:	00005097          	auipc	ra,0x5
    8000119c:	2bc080e7          	jalr	700(ra) # 80006454 <_Z11printStringPKc>
    threads[3] = TCB::createThread(workerBodyC);
    800011a0:	00009517          	auipc	a0,0x9
    800011a4:	42053503          	ld	a0,1056(a0) # 8000a5c0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800011a8:	00001097          	auipc	ra,0x1
    800011ac:	868080e7          	jalr	-1944(ra) # 80001a10 <_ZN3TCB12createThreadEPFvvE>
    800011b0:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    800011b4:	00008517          	auipc	a0,0x8
    800011b8:	e9c50513          	addi	a0,a0,-356 # 80009050 <CONSOLE_STATUS+0x40>
    800011bc:	00005097          	auipc	ra,0x5
    800011c0:	298080e7          	jalr	664(ra) # 80006454 <_Z11printStringPKc>
    threads[4] = TCB::createThread(workerBodyD);
    800011c4:	00009517          	auipc	a0,0x9
    800011c8:	40453503          	ld	a0,1028(a0) # 8000a5c8 <_GLOBAL_OFFSET_TABLE_+0x60>
    800011cc:	00001097          	auipc	ra,0x1
    800011d0:	844080e7          	jalr	-1980(ra) # 80001a10 <_ZN3TCB12createThreadEPFvvE>
    800011d4:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    800011d8:	00008517          	auipc	a0,0x8
    800011dc:	e9050513          	addi	a0,a0,-368 # 80009068 <CONSOLE_STATUS+0x58>
    800011e0:	00005097          	auipc	ra,0x5
    800011e4:	274080e7          	jalr	628(ra) # 80006454 <_Z11printStringPKc>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800011e8:	00009797          	auipc	a5,0x9
    800011ec:	3987b783          	ld	a5,920(a5) # 8000a580 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80001204:	8d8080e7          	jalr	-1832(ra) # 80001ad8 <_ZN3TCB5yieldEv>
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
    80001248:	fa0080e7          	jalr	-96(ra) # 800031e4 <_ZdlPv>
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
    8000126c:	fa4080e7          	jalr	-92(ra) # 8000320c <_ZdaPv>
    80001270:	fd1ff06f          	j	80001240 <_Z5main2v+0x11c>
    }
    printString("Finished\n");
    80001274:	00008517          	auipc	a0,0x8
    80001278:	e0c50513          	addi	a0,a0,-500 # 80009080 <CONSOLE_STATUS+0x70>
    8000127c:	00005097          	auipc	ra,0x5
    80001280:	1d8080e7          	jalr	472(ra) # 80006454 <_Z11printStringPKc>

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
    8000130c:	7d0080e7          	jalr	2000(ra) # 80001ad8 <_ZN3TCB5yieldEv>
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
    80001364:	00008517          	auipc	a0,0x8
    80001368:	d2c50513          	addi	a0,a0,-724 # 80009090 <CONSOLE_STATUS+0x80>
    8000136c:	00005097          	auipc	ra,0x5
    80001370:	0e8080e7          	jalr	232(ra) # 80006454 <_Z11printStringPKc>
        printInteger(i);
    80001374:	00048513          	mv	a0,s1
    80001378:	00005097          	auipc	ra,0x5
    8000137c:	14c080e7          	jalr	332(ra) # 800064c4 <_Z12printIntegerm>
        printString("\n");
    80001380:	00008517          	auipc	a0,0x8
    80001384:	d9050513          	addi	a0,a0,-624 # 80009110 <CONSOLE_STATUS+0x100>
    80001388:	00005097          	auipc	ra,0x5
    8000138c:	0cc080e7          	jalr	204(ra) # 80006454 <_Z11printStringPKc>
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
    800013fc:	00008517          	auipc	a0,0x8
    80001400:	c9c50513          	addi	a0,a0,-868 # 80009098 <CONSOLE_STATUS+0x88>
    80001404:	00005097          	auipc	ra,0x5
    80001408:	050080e7          	jalr	80(ra) # 80006454 <_Z11printStringPKc>
        printInteger(i);
    8000140c:	00048513          	mv	a0,s1
    80001410:	00005097          	auipc	ra,0x5
    80001414:	0b4080e7          	jalr	180(ra) # 800064c4 <_Z12printIntegerm>
        printString("\n");
    80001418:	00008517          	auipc	a0,0x8
    8000141c:	cf850513          	addi	a0,a0,-776 # 80009110 <CONSOLE_STATUS+0x100>
    80001420:	00005097          	auipc	ra,0x5
    80001424:	034080e7          	jalr	52(ra) # 80006454 <_Z11printStringPKc>
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
    80001464:	00008517          	auipc	a0,0x8
    80001468:	c3c50513          	addi	a0,a0,-964 # 800090a0 <CONSOLE_STATUS+0x90>
    8000146c:	00005097          	auipc	ra,0x5
    80001470:	fe8080e7          	jalr	-24(ra) # 80006454 <_Z11printStringPKc>
        printInteger(i);
    80001474:	00048513          	mv	a0,s1
    80001478:	00005097          	auipc	ra,0x5
    8000147c:	04c080e7          	jalr	76(ra) # 800064c4 <_Z12printIntegerm>
        printString("\n");
    80001480:	00008517          	auipc	a0,0x8
    80001484:	c9050513          	addi	a0,a0,-880 # 80009110 <CONSOLE_STATUS+0x100>
    80001488:	00005097          	auipc	ra,0x5
    8000148c:	fcc080e7          	jalr	-52(ra) # 80006454 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001490:	0014849b          	addiw	s1,s1,1
    80001494:	0ff4f493          	andi	s1,s1,255
    80001498:	00200793          	li	a5,2
    8000149c:	fc97f4e3          	bgeu	a5,s1,80001464 <_Z11workerBodyCv+0x20>
    }

    printString("C: yield\n");
    800014a0:	00008517          	auipc	a0,0x8
    800014a4:	c0850513          	addi	a0,a0,-1016 # 800090a8 <CONSOLE_STATUS+0x98>
    800014a8:	00005097          	auipc	ra,0x5
    800014ac:	fac080e7          	jalr	-84(ra) # 80006454 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800014b0:	00700313          	li	t1,7
    TCB::yield();
    800014b4:	00000097          	auipc	ra,0x0
    800014b8:	624080e7          	jalr	1572(ra) # 80001ad8 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800014bc:	00030913          	mv	s2,t1

    printString("C: t1=");
    800014c0:	00008517          	auipc	a0,0x8
    800014c4:	bf850513          	addi	a0,a0,-1032 # 800090b8 <CONSOLE_STATUS+0xa8>
    800014c8:	00005097          	auipc	ra,0x5
    800014cc:	f8c080e7          	jalr	-116(ra) # 80006454 <_Z11printStringPKc>
    printInteger(t1);
    800014d0:	00090513          	mv	a0,s2
    800014d4:	00005097          	auipc	ra,0x5
    800014d8:	ff0080e7          	jalr	-16(ra) # 800064c4 <_Z12printIntegerm>
    printString("\n");
    800014dc:	00008517          	auipc	a0,0x8
    800014e0:	c3450513          	addi	a0,a0,-972 # 80009110 <CONSOLE_STATUS+0x100>
    800014e4:	00005097          	auipc	ra,0x5
    800014e8:	f70080e7          	jalr	-144(ra) # 80006454 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800014ec:	00c00513          	li	a0,12
    800014f0:	00000097          	auipc	ra,0x0
    800014f4:	db0080e7          	jalr	-592(ra) # 800012a0 <_ZL9fibonaccim>
    800014f8:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800014fc:	00008517          	auipc	a0,0x8
    80001500:	bc450513          	addi	a0,a0,-1084 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001504:	00005097          	auipc	ra,0x5
    80001508:	f50080e7          	jalr	-176(ra) # 80006454 <_Z11printStringPKc>
    printInteger(result);
    8000150c:	00090513          	mv	a0,s2
    80001510:	00005097          	auipc	ra,0x5
    80001514:	fb4080e7          	jalr	-76(ra) # 800064c4 <_Z12printIntegerm>
    printString("\n");
    80001518:	00008517          	auipc	a0,0x8
    8000151c:	bf850513          	addi	a0,a0,-1032 # 80009110 <CONSOLE_STATUS+0x100>
    80001520:	00005097          	auipc	ra,0x5
    80001524:	f34080e7          	jalr	-204(ra) # 80006454 <_Z11printStringPKc>
    80001528:	0380006f          	j	80001560 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    8000152c:	00008517          	auipc	a0,0x8
    80001530:	b7450513          	addi	a0,a0,-1164 # 800090a0 <CONSOLE_STATUS+0x90>
    80001534:	00005097          	auipc	ra,0x5
    80001538:	f20080e7          	jalr	-224(ra) # 80006454 <_Z11printStringPKc>
        printInteger(i);
    8000153c:	00048513          	mv	a0,s1
    80001540:	00005097          	auipc	ra,0x5
    80001544:	f84080e7          	jalr	-124(ra) # 800064c4 <_Z12printIntegerm>
        printString("\n");
    80001548:	00008517          	auipc	a0,0x8
    8000154c:	bc850513          	addi	a0,a0,-1080 # 80009110 <CONSOLE_STATUS+0x100>
    80001550:	00005097          	auipc	ra,0x5
    80001554:	f04080e7          	jalr	-252(ra) # 80006454 <_Z11printStringPKc>
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
    800015a0:	00008517          	auipc	a0,0x8
    800015a4:	b3050513          	addi	a0,a0,-1232 # 800090d0 <CONSOLE_STATUS+0xc0>
    800015a8:	00005097          	auipc	ra,0x5
    800015ac:	eac080e7          	jalr	-340(ra) # 80006454 <_Z11printStringPKc>
        printInteger(i);
    800015b0:	00048513          	mv	a0,s1
    800015b4:	00005097          	auipc	ra,0x5
    800015b8:	f10080e7          	jalr	-240(ra) # 800064c4 <_Z12printIntegerm>
        printString("\n");
    800015bc:	00008517          	auipc	a0,0x8
    800015c0:	b5450513          	addi	a0,a0,-1196 # 80009110 <CONSOLE_STATUS+0x100>
    800015c4:	00005097          	auipc	ra,0x5
    800015c8:	e90080e7          	jalr	-368(ra) # 80006454 <_Z11printStringPKc>
    for (; i < 13; i++)
    800015cc:	0014849b          	addiw	s1,s1,1
    800015d0:	0ff4f493          	andi	s1,s1,255
    800015d4:	00c00793          	li	a5,12
    800015d8:	fc97f4e3          	bgeu	a5,s1,800015a0 <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    800015dc:	00008517          	auipc	a0,0x8
    800015e0:	afc50513          	addi	a0,a0,-1284 # 800090d8 <CONSOLE_STATUS+0xc8>
    800015e4:	00005097          	auipc	ra,0x5
    800015e8:	e70080e7          	jalr	-400(ra) # 80006454 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800015ec:	00500313          	li	t1,5
    TCB::yield();
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	4e8080e7          	jalr	1256(ra) # 80001ad8 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    800015f8:	01000513          	li	a0,16
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	ca4080e7          	jalr	-860(ra) # 800012a0 <_ZL9fibonaccim>
    80001604:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001608:	00008517          	auipc	a0,0x8
    8000160c:	ae050513          	addi	a0,a0,-1312 # 800090e8 <CONSOLE_STATUS+0xd8>
    80001610:	00005097          	auipc	ra,0x5
    80001614:	e44080e7          	jalr	-444(ra) # 80006454 <_Z11printStringPKc>
    printInteger(result);
    80001618:	00090513          	mv	a0,s2
    8000161c:	00005097          	auipc	ra,0x5
    80001620:	ea8080e7          	jalr	-344(ra) # 800064c4 <_Z12printIntegerm>
    printString("\n");
    80001624:	00008517          	auipc	a0,0x8
    80001628:	aec50513          	addi	a0,a0,-1300 # 80009110 <CONSOLE_STATUS+0x100>
    8000162c:	00005097          	auipc	ra,0x5
    80001630:	e28080e7          	jalr	-472(ra) # 80006454 <_Z11printStringPKc>
    80001634:	0380006f          	j	8000166c <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    80001638:	00008517          	auipc	a0,0x8
    8000163c:	a9850513          	addi	a0,a0,-1384 # 800090d0 <CONSOLE_STATUS+0xc0>
    80001640:	00005097          	auipc	ra,0x5
    80001644:	e14080e7          	jalr	-492(ra) # 80006454 <_Z11printStringPKc>
        printInteger(i);
    80001648:	00048513          	mv	a0,s1
    8000164c:	00005097          	auipc	ra,0x5
    80001650:	e78080e7          	jalr	-392(ra) # 800064c4 <_Z12printIntegerm>
        printString("\n");
    80001654:	00008517          	auipc	a0,0x8
    80001658:	abc50513          	addi	a0,a0,-1348 # 80009110 <CONSOLE_STATUS+0x100>
    8000165c:	00005097          	auipc	ra,0x5
    80001660:	df8080e7          	jalr	-520(ra) # 80006454 <_Z11printStringPKc>
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
    8000168c:	ca010113          	addi	sp,sp,-864
    80001690:	34113c23          	sd	ra,856(sp)
    80001694:	34813823          	sd	s0,848(sp)
    80001698:	34913423          	sd	s1,840(sp)
    8000169c:	35213023          	sd	s2,832(sp)
    800016a0:	33313c23          	sd	s3,824(sp)
    800016a4:	33413823          	sd	s4,816(sp)
    800016a8:	36010413          	addi	s0,sp,864
        );
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    }
    void* operator new(size_t size) {
        return MemoryAllocator::instance()->kmem_alloc(size);
    800016ac:	00000097          	auipc	ra,0x0
    800016b0:	600080e7          	jalr	1536(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800016b4:	04000593          	li	a1,64
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	6d8080e7          	jalr	1752(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    800016c0:	00050993          	mv	s3,a0
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    800016c4:	01400793          	li	a5,20
    800016c8:	00f53023          	sd	a5,0(a0)
    800016cc:	00f53423          	sd	a5,8(a0)
    800016d0:	00100793          	li	a5,1
    800016d4:	00f53c23          	sd	a5,24(a0)
    800016d8:	02f53823          	sd	a5,48(a0)
    800016dc:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    800016e0:	00000097          	auipc	ra,0x0
    800016e4:	5cc080e7          	jalr	1484(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800016e8:	0309b583          	ld	a1,48(s3)
    800016ec:	00359593          	slli	a1,a1,0x3
    800016f0:	00000097          	auipc	ra,0x0
    800016f4:	6a0080e7          	jalr	1696(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    800016f8:	02a9b423          	sd	a0,40(s3)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    800016fc:	00000097          	auipc	ra,0x0
    80001700:	5b0080e7          	jalr	1456(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80001704:	0309b583          	ld	a1,48(s3)
    80001708:	00359593          	slli	a1,a1,0x3
    8000170c:	00000097          	auipc	ra,0x0
    80001710:	684080e7          	jalr	1668(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80001714:	02a9b023          	sd	a0,32(s3)
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80001718:	0089b703          	ld	a4,8(s3)
    8000171c:	ff877793          	andi	a5,a4,-8
    80001720:	02f70463          	beq	a4,a5,80001748 <main+0xbc>
    80001724:	00800713          	li	a4,8
    80001728:	00e787b3          	add	a5,a5,a4
    8000172c:	00f9b423          	sd	a5,8(s3)
    80001730:	00f9b023          	sd	a5,0(s3)
        memorySizeForBits = numberOfObjects / 8;
    80001734:	0037d793          	srli	a5,a5,0x3
    80001738:	00f9b823          	sd	a5,16(s3)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    8000173c:	00000097          	auipc	ra,0x0
    80001740:	570080e7          	jalr	1392(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80001744:	00c0006f          	j	80001750 <main+0xc4>
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80001748:	00000713          	li	a4,0
    8000174c:	fddff06f          	j	80001728 <main+0x9c>
                memorySizeForBits + initialNumberOfObjects * objectSize
    80001750:	0109b583          	ld	a1,16(s3)
    80001754:	0009b783          	ld	a5,0(s3)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80001758:	0289b483          	ld	s1,40(s3)
    8000175c:	00f585b3          	add	a1,a1,a5
    80001760:	00000097          	auipc	ra,0x0
    80001764:	630080e7          	jalr	1584(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80001768:	00a4b023          	sd	a0,0(s1)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    8000176c:	0289b783          	ld	a5,40(s3)
    80001770:	0007b783          	ld	a5,0(a5)
    80001774:	0109b683          	ld	a3,16(s3)
    80001778:	0209b703          	ld	a4,32(s3)
    8000177c:	00d787b3          	add	a5,a5,a3
    80001780:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    80001784:	00000793          	li	a5,0
    80001788:	0109b703          	ld	a4,16(s3)
    8000178c:	00e7fe63          	bgeu	a5,a4,800017a8 <main+0x11c>
    80001790:	0289b703          	ld	a4,40(s3)
    80001794:	00073703          	ld	a4,0(a4)
    80001798:	00f70733          	add	a4,a4,a5
    8000179c:	00070023          	sb	zero,0(a4)
    800017a0:	00178793          	addi	a5,a5,1
    800017a4:	fe5ff06f          	j	80001788 <main+0xfc>
    //KObjectAllocator* newObj = new KObjectAllocator(sizeof(uint8), 4);
    KObjectAllocator* newObj = new KObjectAllocator(sizeof(uint8), 20);

    void* objArr[100];
    size_t objNumber = 0; //newObj->getNumberOfObjects();
    for (int i = 0; i < 100; ++i) {
    800017a8:	00000493          	li	s1,0
    size_t objNumber = 0; //newObj->getNumberOfObjects();
    800017ac:	00000a13          	li	s4,0
    800017b0:	0340006f          	j	800017e4 <main+0x158>
        objArr[i] = newObj->allocateNewObject();
        if (i == 14) newObj->freeObject(objArr[4]);
    800017b4:	cd043583          	ld	a1,-816(s0)
    800017b8:	00098513          	mv	a0,s3
    800017bc:	00004097          	auipc	ra,0x4
    800017c0:	704080e7          	jalr	1796(ra) # 80005ec0 <_ZN16KObjectAllocator10freeObjectEPv>
    800017c4:	0500006f          	j	80001814 <main+0x188>
        if (i == 14) newObj->freeObject(objArr[9]);
    800017c8:	cf843583          	ld	a1,-776(s0)
    800017cc:	00098513          	mv	a0,s3
    800017d0:	00004097          	auipc	ra,0x4
    800017d4:	6f0080e7          	jalr	1776(ra) # 80005ec0 <_ZN16KObjectAllocator10freeObjectEPv>
    800017d8:	0440006f          	j	8000181c <main+0x190>
    for (int i = 0; i < 100; ++i) {
    800017dc:	0014849b          	addiw	s1,s1,1
    800017e0:	00078a13          	mv	s4,a5
    800017e4:	06300793          	li	a5,99
    800017e8:	0497cc63          	blt	a5,s1,80001840 <main+0x1b4>
        objArr[i] = newObj->allocateNewObject();
    800017ec:	00098513          	mv	a0,s3
    800017f0:	00005097          	auipc	ra,0x5
    800017f4:	950080e7          	jalr	-1712(ra) # 80006140 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800017f8:	00050913          	mv	s2,a0
    800017fc:	00349793          	slli	a5,s1,0x3
    80001800:	fd040713          	addi	a4,s0,-48
    80001804:	00f707b3          	add	a5,a4,a5
    80001808:	cea7b023          	sd	a0,-800(a5)
        if (i == 14) newObj->freeObject(objArr[4]);
    8000180c:	00e00793          	li	a5,14
    80001810:	faf482e3          	beq	s1,a5,800017b4 <main+0x128>
        if (i == 14) newObj->freeObject(objArr[9]);
    80001814:	00e00793          	li	a5,14
    80001818:	faf488e3          	beq	s1,a5,800017c8 <main+0x13c>
        *(uint8*) objArr[i] = 128;
    8000181c:	f8000793          	li	a5,-128
    80001820:	00f90023          	sb	a5,0(s2)
        MemoryAllocator::instance()->kmem_free(p);
    }
    void printInternalMemory();
    size_t getObjectSize() { return objectSize; }
    size_t getInitialNumberOfObjects() { return initialNumberOfObjects; }
    size_t getNumberOfObjects() { return numberOfObjects; }
    80001824:	0089b783          	ld	a5,8(s3)
        if (objNumber != newObj->getNumberOfObjects() || i % 100 == 0) {
    80001828:	fafa1ae3          	bne	s4,a5,800017dc <main+0x150>
    8000182c:	06400713          	li	a4,100
    80001830:	02e4e73b          	remw	a4,s1,a4
    80001834:	fa0704e3          	beqz	a4,800017dc <main+0x150>
    80001838:	000a0793          	mv	a5,s4
    8000183c:	fa1ff06f          	j	800017dc <main+0x150>
            //newObj->printInternalMemory();
            //printString("\n");
        }
    }

    for (int i = 0; i < 10; ++i) newObj->freeObject(objArr[i]);
    80001840:	00000493          	li	s1,0
    80001844:	00900793          	li	a5,9
    80001848:	0297c463          	blt	a5,s1,80001870 <main+0x1e4>
    8000184c:	00349793          	slli	a5,s1,0x3
    80001850:	fd040713          	addi	a4,s0,-48
    80001854:	00f707b3          	add	a5,a4,a5
    80001858:	ce07b583          	ld	a1,-800(a5)
    8000185c:	00098513          	mv	a0,s3
    80001860:	00004097          	auipc	ra,0x4
    80001864:	660080e7          	jalr	1632(ra) # 80005ec0 <_ZN16KObjectAllocator10freeObjectEPv>
    80001868:	0014849b          	addiw	s1,s1,1
    8000186c:	fd9ff06f          	j	80001844 <main+0x1b8>

    delete newObj;
    80001870:	00098863          	beqz	s3,80001880 <main+0x1f4>
    80001874:	00098513          	mv	a0,s3
    80001878:	00000097          	auipc	ra,0x0
    8000187c:	0f4080e7          	jalr	244(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>

    printString("\nKObjectAllocator tests:\n");
    80001880:	00008517          	auipc	a0,0x8
    80001884:	87850513          	addi	a0,a0,-1928 # 800090f8 <CONSOLE_STATUS+0xe8>
    80001888:	00005097          	auipc	ra,0x5
    8000188c:	bcc080e7          	jalr	-1076(ra) # 80006454 <_Z11printStringPKc>

class KObjectAllocatorTest {
public:
    KObjectAllocatorTest() {}
    void* operator new(size_t size) {
        return MemoryAllocator::instance()->kmem_alloc(size);
    80001890:	00000097          	auipc	ra,0x0
    80001894:	41c080e7          	jalr	1052(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80001898:	04000593          	li	a1,64
    8000189c:	00000097          	auipc	ra,0x0
    800018a0:	4f4080e7          	jalr	1268(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    800018a4:	00050493          	mv	s1,a0
    KObjectAllocatorTest() {}
    800018a8:	00400793          	li	a5,4
    800018ac:	00f53023          	sd	a5,0(a0)
    800018b0:	00008797          	auipc	a5,0x8
    800018b4:	87878793          	addi	a5,a5,-1928 # 80009128 <CONSOLE_STATUS+0x118>
    800018b8:	0007b883          	ld	a7,0(a5)
    800018bc:	0087b803          	ld	a6,8(a5)
    800018c0:	0107b583          	ld	a1,16(a5)
    800018c4:	0187b603          	ld	a2,24(a5)
    800018c8:	0207b683          	ld	a3,32(a5)
    800018cc:	0287b703          	ld	a4,40(a5)
    800018d0:	0307b783          	ld	a5,48(a5)
    800018d4:	01153423          	sd	a7,8(a0)
    800018d8:	01053823          	sd	a6,16(a0)
    800018dc:	00b53c23          	sd	a1,24(a0)
    800018e0:	02c53023          	sd	a2,32(a0)
    800018e4:	02d53423          	sd	a3,40(a0)
    800018e8:	02e53823          	sd	a4,48(a0)
    800018ec:	02f53c23          	sd	a5,56(a0)
    KObjectAllocatorTest* t2 = new KObjectAllocatorTest;
    t2->runTests();
    800018f0:	00004097          	auipc	ra,0x4
    800018f4:	120080e7          	jalr	288(ra) # 80005a10 <_ZN20KObjectAllocatorTest8runTestsEv>
    delete t2;
    800018f8:	00048c63          	beqz	s1,80001910 <main+0x284>
    }
    void operator delete(void* p) {
        MemoryAllocator::instance()->kmem_free(p);
    800018fc:	00000097          	auipc	ra,0x0
    80001900:	3b0080e7          	jalr	944(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80001904:	00048593          	mv	a1,s1
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	530080e7          	jalr	1328(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>

    printString("\nMemory tests:\n");
    80001910:	00008517          	auipc	a0,0x8
    80001914:	80850513          	addi	a0,a0,-2040 # 80009118 <CONSOLE_STATUS+0x108>
    80001918:	00005097          	auipc	ra,0x5
    8000191c:	b3c080e7          	jalr	-1220(ra) # 80006454 <_Z11printStringPKc>
    MemoryAllocatorTest t1;
    t1.runTests();
    80001920:	ca840513          	addi	a0,s0,-856
    80001924:	00001097          	auipc	ra,0x1
    80001928:	650080e7          	jalr	1616(ra) # 80002f74 <_ZN19MemoryAllocatorTest8runTestsEv>


    return 0;
    8000192c:	00000513          	li	a0,0
    80001930:	35813083          	ld	ra,856(sp)
    80001934:	35013403          	ld	s0,848(sp)
    80001938:	34813483          	ld	s1,840(sp)
    8000193c:	34013903          	ld	s2,832(sp)
    80001940:	33813983          	ld	s3,824(sp)
    80001944:	33013a03          	ld	s4,816(sp)
    80001948:	36010113          	addi	sp,sp,864
    8000194c:	00008067          	ret
    80001950:	00050493          	mv	s1,a0
    KObjectAllocator* newObj = new KObjectAllocator(sizeof(uint8), 20);
    80001954:	00098513          	mv	a0,s3
    80001958:	00000097          	auipc	ra,0x0
    8000195c:	014080e7          	jalr	20(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    80001960:	00048513          	mv	a0,s1
    80001964:	0000a097          	auipc	ra,0xa
    80001968:	dc4080e7          	jalr	-572(ra) # 8000b728 <_Unwind_Resume>

000000008000196c <_ZN16KObjectAllocatordlEPv>:
    void operator delete(void* p) {
    8000196c:	fe010113          	addi	sp,sp,-32
    80001970:	00113c23          	sd	ra,24(sp)
    80001974:	00813823          	sd	s0,16(sp)
    80001978:	00913423          	sd	s1,8(sp)
    8000197c:	01213023          	sd	s2,0(sp)
    80001980:	02010413          	addi	s0,sp,32
    80001984:	00050913          	mv	s2,a0
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80001988:	00000493          	li	s1,0
    8000198c:	03093783          	ld	a5,48(s2)
    80001990:	02f4f663          	bgeu	s1,a5,800019bc <_ZN16KObjectAllocatordlEPv+0x50>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80001994:	00000097          	auipc	ra,0x0
    80001998:	318080e7          	jalr	792(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    8000199c:	02893783          	ld	a5,40(s2)
    800019a0:	00349713          	slli	a4,s1,0x3
    800019a4:	00e787b3          	add	a5,a5,a4
    800019a8:	0007b583          	ld	a1,0(a5)
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	48c080e7          	jalr	1164(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800019b4:	00148493          	addi	s1,s1,1
    800019b8:	fd5ff06f          	j	8000198c <_ZN16KObjectAllocatordlEPv+0x20>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800019bc:	00000097          	auipc	ra,0x0
    800019c0:	2f0080e7          	jalr	752(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800019c4:	02893583          	ld	a1,40(s2)
    800019c8:	00000097          	auipc	ra,0x0
    800019cc:	470080e7          	jalr	1136(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800019d0:	00000097          	auipc	ra,0x0
    800019d4:	2dc080e7          	jalr	732(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800019d8:	02093583          	ld	a1,32(s2)
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	45c080e7          	jalr	1116(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800019e4:	00000097          	auipc	ra,0x0
    800019e8:	2c8080e7          	jalr	712(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800019ec:	00090593          	mv	a1,s2
    800019f0:	00000097          	auipc	ra,0x0
    800019f4:	448080e7          	jalr	1096(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    }
    800019f8:	01813083          	ld	ra,24(sp)
    800019fc:	01013403          	ld	s0,16(sp)
    80001a00:	00813483          	ld	s1,8(sp)
    80001a04:	00013903          	ld	s2,0(sp)
    80001a08:	02010113          	addi	sp,sp,32
    80001a0c:	00008067          	ret

0000000080001a10 <_ZN3TCB12createThreadEPFvvE>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    80001a10:	fe010113          	addi	sp,sp,-32
    80001a14:	00113c23          	sd	ra,24(sp)
    80001a18:	00813823          	sd	s0,16(sp)
    80001a1c:	00913423          	sd	s1,8(sp)
    80001a20:	01213023          	sd	s2,0(sp)
    80001a24:	02010413          	addi	s0,sp,32
    80001a28:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    80001a2c:	03000513          	li	a0,48
    80001a30:	00001097          	auipc	ra,0x1
    80001a34:	764080e7          	jalr	1892(ra) # 80003194 <_Znwm>
    80001a38:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    80001a3c:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001a40:	00090a63          	beqz	s2,80001a54 <_ZN3TCB12createThreadEPFvvE+0x44>
    80001a44:	00002537          	lui	a0,0x2
    80001a48:	00001097          	auipc	ra,0x1
    80001a4c:	774080e7          	jalr	1908(ra) # 800031bc <_Znam>
    80001a50:	0080006f          	j	80001a58 <_ZN3TCB12createThreadEPFvvE+0x48>
    80001a54:	00000513          	li	a0,0
            finished(false)
    80001a58:	00a4b423          	sd	a0,8(s1)
    80001a5c:	00000797          	auipc	a5,0x0
    80001a60:	09878793          	addi	a5,a5,152 # 80001af4 <_ZN3TCB13threadWrapperEv>
    80001a64:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001a68:	02050863          	beqz	a0,80001a98 <_ZN3TCB12createThreadEPFvvE+0x88>
    80001a6c:	000027b7          	lui	a5,0x2
    80001a70:	00f507b3          	add	a5,a0,a5
            finished(false)
    80001a74:	00f4bc23          	sd	a5,24(s1)
    80001a78:	00200793          	li	a5,2
    80001a7c:	02f4b023          	sd	a5,32(s1)
    80001a80:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001a84:	02090c63          	beqz	s2,80001abc <_ZN3TCB12createThreadEPFvvE+0xac>
    80001a88:	00048513          	mv	a0,s1
    80001a8c:	00005097          	auipc	ra,0x5
    80001a90:	928080e7          	jalr	-1752(ra) # 800063b4 <_ZN9Scheduler3putEP3TCB>
    80001a94:	0280006f          	j	80001abc <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001a98:	00000793          	li	a5,0
    80001a9c:	fd9ff06f          	j	80001a74 <_ZN3TCB12createThreadEPFvvE+0x64>
    80001aa0:	00050913          	mv	s2,a0
    80001aa4:	00048513          	mv	a0,s1
    80001aa8:	00001097          	auipc	ra,0x1
    80001aac:	73c080e7          	jalr	1852(ra) # 800031e4 <_ZdlPv>
    80001ab0:	00090513          	mv	a0,s2
    80001ab4:	0000a097          	auipc	ra,0xa
    80001ab8:	c74080e7          	jalr	-908(ra) # 8000b728 <_Unwind_Resume>
}
    80001abc:	00048513          	mv	a0,s1
    80001ac0:	01813083          	ld	ra,24(sp)
    80001ac4:	01013403          	ld	s0,16(sp)
    80001ac8:	00813483          	ld	s1,8(sp)
    80001acc:	00013903          	ld	s2,0(sp)
    80001ad0:	02010113          	addi	sp,sp,32
    80001ad4:	00008067          	ret

0000000080001ad8 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    80001ad8:	ff010113          	addi	sp,sp,-16
    80001adc:	00813423          	sd	s0,8(sp)
    80001ae0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80001ae4:	00000073          	ecall
}
    80001ae8:	00813403          	ld	s0,8(sp)
    80001aec:	01010113          	addi	sp,sp,16
    80001af0:	00008067          	ret

0000000080001af4 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001af4:	fe010113          	addi	sp,sp,-32
    80001af8:	00113c23          	sd	ra,24(sp)
    80001afc:	00813823          	sd	s0,16(sp)
    80001b00:	00913423          	sd	s1,8(sp)
    80001b04:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001b08:	00004097          	auipc	ra,0x4
    80001b0c:	6bc080e7          	jalr	1724(ra) # 800061c4 <_ZN5Riscv10popSppSpieEv>
    running->body();
    80001b10:	00009497          	auipc	s1,0x9
    80001b14:	b1048493          	addi	s1,s1,-1264 # 8000a620 <_ZN3TCB7runningE>
    80001b18:	0004b783          	ld	a5,0(s1)
    80001b1c:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    80001b20:	000780e7          	jalr	a5
    running->setFinished(true);
    80001b24:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80001b28:	00100713          	li	a4,1
    80001b2c:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    80001b30:	00000097          	auipc	ra,0x0
    80001b34:	fa8080e7          	jalr	-88(ra) # 80001ad8 <_ZN3TCB5yieldEv>
}
    80001b38:	01813083          	ld	ra,24(sp)
    80001b3c:	01013403          	ld	s0,16(sp)
    80001b40:	00813483          	ld	s1,8(sp)
    80001b44:	02010113          	addi	sp,sp,32
    80001b48:	00008067          	ret

0000000080001b4c <_ZN3TCB8dispatchEv>:
{
    80001b4c:	fe010113          	addi	sp,sp,-32
    80001b50:	00113c23          	sd	ra,24(sp)
    80001b54:	00813823          	sd	s0,16(sp)
    80001b58:	00913423          	sd	s1,8(sp)
    80001b5c:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001b60:	00009497          	auipc	s1,0x9
    80001b64:	ac04b483          	ld	s1,-1344(s1) # 8000a620 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001b68:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001b6c:	02078c63          	beqz	a5,80001ba4 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001b70:	00004097          	auipc	ra,0x4
    80001b74:	7dc080e7          	jalr	2012(ra) # 8000634c <_ZN9Scheduler3getEv>
    80001b78:	00009797          	auipc	a5,0x9
    80001b7c:	aaa7b423          	sd	a0,-1368(a5) # 8000a620 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001b80:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001b84:	01048513          	addi	a0,s1,16
    80001b88:	fffff097          	auipc	ra,0xfffff
    80001b8c:	588080e7          	jalr	1416(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001b90:	01813083          	ld	ra,24(sp)
    80001b94:	01013403          	ld	s0,16(sp)
    80001b98:	00813483          	ld	s1,8(sp)
    80001b9c:	02010113          	addi	sp,sp,32
    80001ba0:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001ba4:	00048513          	mv	a0,s1
    80001ba8:	00005097          	auipc	ra,0x5
    80001bac:	80c080e7          	jalr	-2036(ra) # 800063b4 <_ZN9Scheduler3putEP3TCB>
    80001bb0:	fc1ff06f          	j	80001b70 <_ZN3TCB8dispatchEv+0x24>

0000000080001bb4 <_ZN15MemoryAllocator17getMinBlockNumberEm>:
    newMemoryAllocator->freeMemoryHead->next = nullptr;

    return newMemoryAllocator;
}

size_t MemoryAllocator::getMinBlockNumber(size_t size) {
    80001bb4:	ff010113          	addi	sp,sp,-16
    80001bb8:	00813423          	sd	s0,8(sp)
    80001bbc:	01010413          	addi	s0,sp,16
    size_t blockNo = size / MEM_BLOCK_SIZE;
    80001bc0:	00655713          	srli	a4,a0,0x6
    blockNo = blockNo + (size - blockNo * MEM_BLOCK_SIZE != 0);
    80001bc4:	fc057793          	andi	a5,a0,-64
    80001bc8:	40a78533          	sub	a0,a5,a0
    80001bcc:	00a03533          	snez	a0,a0
    return blockNo;
}
    80001bd0:	00e50533          	add	a0,a0,a4
    80001bd4:	00813403          	ld	s0,8(sp)
    80001bd8:	01010113          	addi	sp,sp,16
    80001bdc:	00008067          	ret

0000000080001be0 <_ZN15MemoryAllocator14createInstanceEv>:
MemoryAllocator* MemoryAllocator::createInstance() {
    80001be0:	fd010113          	addi	sp,sp,-48
    80001be4:	02113423          	sd	ra,40(sp)
    80001be8:	02813023          	sd	s0,32(sp)
    80001bec:	00913c23          	sd	s1,24(sp)
    80001bf0:	01213823          	sd	s2,16(sp)
    80001bf4:	01313423          	sd	s3,8(sp)
    80001bf8:	01413023          	sd	s4,0(sp)
    80001bfc:	03010413          	addi	s0,sp,48
    managedMemorySpaceStart = (uint8*) HEAP_START_ADDR;
    80001c00:	00009797          	auipc	a5,0x9
    80001c04:	9707b783          	ld	a5,-1680(a5) # 8000a570 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c08:	0007b903          	ld	s2,0(a5)
    managedMemorySpaceEnd = (uint8*) HEAP_END_ADDR;
    80001c0c:	00009797          	auipc	a5,0x9
    80001c10:	9ac7b783          	ld	a5,-1620(a5) # 8000a5b8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001c14:	0007b483          	ld	s1,0(a5)
    80001c18:	00009a17          	auipc	s4,0x9
    80001c1c:	a18a0a13          	addi	s4,s4,-1512 # 8000a630 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    80001c20:	009a3023          	sd	s1,0(s4)
    minMemoryFragmentSize = getMinBlockNumber(sizeof(SegmentDescriptor)) + getMinBlockNumber(sizeof(uint64));
    80001c24:	01000513          	li	a0,16
    80001c28:	00000097          	auipc	ra,0x0
    80001c2c:	f8c080e7          	jalr	-116(ra) # 80001bb4 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001c30:	00050993          	mv	s3,a0
    80001c34:	00800513          	li	a0,8
    80001c38:	00000097          	auipc	ra,0x0
    80001c3c:	f7c080e7          	jalr	-132(ra) # 80001bb4 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001c40:	00a989b3          	add	s3,s3,a0
    80001c44:	013a3423          	sd	s3,8(s4)
    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
    80001c48:	02000513          	li	a0,32
    80001c4c:	00000097          	auipc	ra,0x0
    80001c50:	f68080e7          	jalr	-152(ra) # 80001bb4 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    managedMemorySpaceStart += noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE;
    80001c54:	00651513          	slli	a0,a0,0x6
    80001c58:	00a90533          	add	a0,s2,a0
    80001c5c:	00aa3823          	sd	a0,16(s4)
    newMemoryAllocator->totalTaken = 0;
    80001c60:	00093423          	sd	zero,8(s2)
    newMemoryAllocator->totalFree = (size_t) (managedMemorySpaceEnd - managedMemorySpaceStart);
    80001c64:	40a484b3          	sub	s1,s1,a0
    80001c68:	00993023          	sd	s1,0(s2)
    newMemoryAllocator->freeBlockNo = newMemoryAllocator->totalFree / MEM_BLOCK_SIZE;
    80001c6c:	0064d493          	srli	s1,s1,0x6
    80001c70:	00993823          	sd	s1,16(s2)
    newMemoryAllocator->freeMemoryHead = (SegmentDescriptor*) managedMemorySpaceStart;
    80001c74:	010a3783          	ld	a5,16(s4)
    80001c78:	00f93c23          	sd	a5,24(s2)
    newMemoryAllocator->freeMemoryHead->noBlocks = newMemoryAllocator->freeBlockNo;
    80001c7c:	0097b023          	sd	s1,0(a5)
    newMemoryAllocator->freeMemoryHead->next = nullptr;
    80001c80:	01893783          	ld	a5,24(s2)
    80001c84:	0007b423          	sd	zero,8(a5)
}
    80001c88:	00090513          	mv	a0,s2
    80001c8c:	02813083          	ld	ra,40(sp)
    80001c90:	02013403          	ld	s0,32(sp)
    80001c94:	01813483          	ld	s1,24(sp)
    80001c98:	01013903          	ld	s2,16(sp)
    80001c9c:	00813983          	ld	s3,8(sp)
    80001ca0:	00013a03          	ld	s4,0(sp)
    80001ca4:	03010113          	addi	sp,sp,48
    80001ca8:	00008067          	ret

0000000080001cac <_ZN15MemoryAllocator8instanceEv>:
    if (onlyInstance == nullptr)
    80001cac:	00009797          	auipc	a5,0x9
    80001cb0:	99c7b783          	ld	a5,-1636(a5) # 8000a648 <_ZN15MemoryAllocator12onlyInstanceE>
    80001cb4:	00078863          	beqz	a5,80001cc4 <_ZN15MemoryAllocator8instanceEv+0x18>
}
    80001cb8:	00009517          	auipc	a0,0x9
    80001cbc:	99053503          	ld	a0,-1648(a0) # 8000a648 <_ZN15MemoryAllocator12onlyInstanceE>
    80001cc0:	00008067          	ret
MemoryAllocator* MemoryAllocator::instance() {
    80001cc4:	ff010113          	addi	sp,sp,-16
    80001cc8:	00113423          	sd	ra,8(sp)
    80001ccc:	00813023          	sd	s0,0(sp)
    80001cd0:	01010413          	addi	s0,sp,16
        onlyInstance = createInstance();
    80001cd4:	00000097          	auipc	ra,0x0
    80001cd8:	f0c080e7          	jalr	-244(ra) # 80001be0 <_ZN15MemoryAllocator14createInstanceEv>
    80001cdc:	00009797          	auipc	a5,0x9
    80001ce0:	96a7b623          	sd	a0,-1684(a5) # 8000a648 <_ZN15MemoryAllocator12onlyInstanceE>
}
    80001ce4:	00009517          	auipc	a0,0x9
    80001ce8:	96453503          	ld	a0,-1692(a0) # 8000a648 <_ZN15MemoryAllocator12onlyInstanceE>
    80001cec:	00813083          	ld	ra,8(sp)
    80001cf0:	00013403          	ld	s0,0(sp)
    80001cf4:	01010113          	addi	sp,sp,16
    80001cf8:	00008067          	ret

0000000080001cfc <_ZN15MemoryAllocator8firstFitEm>:


MemoryAllocator::SegmentDescriptor* MemoryAllocator::firstFit(size_t blockNo) {
    80001cfc:	ff010113          	addi	sp,sp,-16
    80001d00:	00813423          	sd	s0,8(sp)
    80001d04:	01010413          	addi	s0,sp,16
    80001d08:	00050693          	mv	a3,a0
    SegmentDescriptor* largeEnoughSegment = freeMemoryHead;
    80001d0c:	01853503          	ld	a0,24(a0)
    SegmentDescriptor* prevSegment = nullptr;
    80001d10:	00000713          	li	a4,0
    while (largeEnoughSegment && largeEnoughSegment->noBlocks < blockNo) {
    80001d14:	00050c63          	beqz	a0,80001d2c <_ZN15MemoryAllocator8firstFitEm+0x30>
    80001d18:	00053783          	ld	a5,0(a0)
    80001d1c:	00b7f863          	bgeu	a5,a1,80001d2c <_ZN15MemoryAllocator8firstFitEm+0x30>
        prevSegment = largeEnoughSegment;
    80001d20:	00050713          	mv	a4,a0
        largeEnoughSegment = largeEnoughSegment->next;
    80001d24:	00853503          	ld	a0,8(a0)
    while (largeEnoughSegment && largeEnoughSegment->noBlocks < blockNo) {
    80001d28:	fedff06f          	j	80001d14 <_ZN15MemoryAllocator8firstFitEm+0x18>
    }
    if (!largeEnoughSegment) return nullptr;
    80001d2c:	04050663          	beqz	a0,80001d78 <_ZN15MemoryAllocator8firstFitEm+0x7c>

    if (largeEnoughSegment->noBlocks - blockNo >= minMemoryFragmentSize) {
    80001d30:	00053783          	ld	a5,0(a0)
    80001d34:	40b787b3          	sub	a5,a5,a1
    80001d38:	00009617          	auipc	a2,0x9
    80001d3c:	90063603          	ld	a2,-1792(a2) # 8000a638 <_ZN15MemoryAllocator21minMemoryFragmentSizeE>
    80001d40:	02c7e063          	bltu	a5,a2,80001d60 <_ZN15MemoryAllocator8firstFitEm+0x64>
        SegmentDescriptor* newSegment = (SegmentDescriptor*) ((uint8*) largeEnoughSegment + blockNo * MEM_BLOCK_SIZE);
    80001d44:	00659613          	slli	a2,a1,0x6
    80001d48:	00c50633          	add	a2,a0,a2
        newSegment->noBlocks = largeEnoughSegment->noBlocks - blockNo;
    80001d4c:	00f63023          	sd	a5,0(a2)
        newSegment->next = largeEnoughSegment->next;
    80001d50:	00853783          	ld	a5,8(a0)
    80001d54:	00f63423          	sd	a5,8(a2)
        largeEnoughSegment->next = newSegment;
    80001d58:	00c53423          	sd	a2,8(a0)
        largeEnoughSegment->noBlocks = blockNo;
    80001d5c:	00b53023          	sd	a1,0(a0)
    }

    if (prevSegment) prevSegment->next = largeEnoughSegment->next;
    80001d60:	00070663          	beqz	a4,80001d6c <_ZN15MemoryAllocator8firstFitEm+0x70>
    80001d64:	00853783          	ld	a5,8(a0)
    80001d68:	00f73423          	sd	a5,8(a4)
    if (freeMemoryHead == largeEnoughSegment)
    80001d6c:	0186b783          	ld	a5,24(a3)
    80001d70:	00a78a63          	beq	a5,a0,80001d84 <_ZN15MemoryAllocator8firstFitEm+0x88>
        freeMemoryHead = largeEnoughSegment->next;

    largeEnoughSegment->next = nullptr;
    80001d74:	00053423          	sd	zero,8(a0)
    return largeEnoughSegment;
}
    80001d78:	00813403          	ld	s0,8(sp)
    80001d7c:	01010113          	addi	sp,sp,16
    80001d80:	00008067          	ret
        freeMemoryHead = largeEnoughSegment->next;
    80001d84:	00853783          	ld	a5,8(a0)
    80001d88:	00f6bc23          	sd	a5,24(a3)
    80001d8c:	fe9ff06f          	j	80001d74 <_ZN15MemoryAllocator8firstFitEm+0x78>

0000000080001d90 <_ZN15MemoryAllocator10kmem_allocEm>:

void* MemoryAllocator::kmem_alloc(size_t size) {
    80001d90:	fe010113          	addi	sp,sp,-32
    80001d94:	00113c23          	sd	ra,24(sp)
    80001d98:	00813823          	sd	s0,16(sp)
    80001d9c:	00913423          	sd	s1,8(sp)
    80001da0:	01213023          	sd	s2,0(sp)
    80001da4:	02010413          	addi	s0,sp,32
    80001da8:	00050493          	mv	s1,a0
    80001dac:	00058913          	mv	s2,a1
    size_t minBlockNo = getMinBlockNumber(size);
    80001db0:	00058513          	mv	a0,a1
    80001db4:	00000097          	auipc	ra,0x0
    80001db8:	e00080e7          	jalr	-512(ra) # 80001bb4 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001dbc:	00050593          	mv	a1,a0
    if (minBlockNo * MEM_BLOCK_SIZE - size < sizeof(SegmentDescriptor)) ++minBlockNo;
    80001dc0:	00651793          	slli	a5,a0,0x6
    80001dc4:	41278933          	sub	s2,a5,s2
    80001dc8:	00f00793          	li	a5,15
    80001dcc:	0127e463          	bltu	a5,s2,80001dd4 <_ZN15MemoryAllocator10kmem_allocEm+0x44>
    80001dd0:	00150593          	addi	a1,a0,1
    SegmentDescriptor* newTaken = firstFit(minBlockNo);
    80001dd4:	00048513          	mv	a0,s1
    80001dd8:	00000097          	auipc	ra,0x0
    80001ddc:	f24080e7          	jalr	-220(ra) # 80001cfc <_ZN15MemoryAllocator8firstFitEm>
    if (!newTaken) return nullptr;
    80001de0:	04050063          	beqz	a0,80001e20 <_ZN15MemoryAllocator10kmem_allocEm+0x90>

    freeBlockNo -= newTaken->noBlocks;
    80001de4:	00053703          	ld	a4,0(a0)
    80001de8:	0104b783          	ld	a5,16(s1)
    80001dec:	40e787b3          	sub	a5,a5,a4
    80001df0:	00f4b823          	sd	a5,16(s1)
    totalFree -= newTaken->noBlocks * MEM_BLOCK_SIZE;
    80001df4:	00053783          	ld	a5,0(a0)
    80001df8:	00679713          	slli	a4,a5,0x6
    80001dfc:	0004b783          	ld	a5,0(s1)
    80001e00:	40e787b3          	sub	a5,a5,a4
    80001e04:	00f4b023          	sd	a5,0(s1)
    totalTaken += newTaken->noBlocks * MEM_BLOCK_SIZE;
    80001e08:	00053783          	ld	a5,0(a0)
    80001e0c:	00679713          	slli	a4,a5,0x6
    80001e10:	0084b783          	ld	a5,8(s1)
    80001e14:	00e787b3          	add	a5,a5,a4
    80001e18:	00f4b423          	sd	a5,8(s1)

    return (uint8*) newTaken + sizeof(SegmentDescriptor);
    80001e1c:	01050513          	addi	a0,a0,16
}
    80001e20:	01813083          	ld	ra,24(sp)
    80001e24:	01013403          	ld	s0,16(sp)
    80001e28:	00813483          	ld	s1,8(sp)
    80001e2c:	00013903          	ld	s2,0(sp)
    80001e30:	02010113          	addi	sp,sp,32
    80001e34:	00008067          	ret

0000000080001e38 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* newFree) {
    80001e38:	ff010113          	addi	sp,sp,-16
    80001e3c:	00813423          	sd	s0,8(sp)
    80001e40:	01010413          	addi	s0,sp,16
    if (newFree == nullptr) return 0;
    80001e44:	08058863          	beqz	a1,80001ed4 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>
    SegmentDescriptor* newFreeSegment = (SegmentDescriptor*) ((uint8*) newFree - sizeof(SegmentDescriptor));
    80001e48:	ff058693          	addi	a3,a1,-16
    freeBlockNo += newFreeSegment->noBlocks;
    80001e4c:	ff05b703          	ld	a4,-16(a1)
    80001e50:	01053783          	ld	a5,16(a0)
    80001e54:	00e787b3          	add	a5,a5,a4
    80001e58:	00f53823          	sd	a5,16(a0)
    totalFree += newFreeSegment->noBlocks * MEM_BLOCK_SIZE;
    80001e5c:	ff05b783          	ld	a5,-16(a1)
    80001e60:	00679713          	slli	a4,a5,0x6
    80001e64:	00053783          	ld	a5,0(a0)
    80001e68:	00e787b3          	add	a5,a5,a4
    80001e6c:	00f53023          	sd	a5,0(a0)
    totalTaken -= newFreeSegment->noBlocks * MEM_BLOCK_SIZE;
    80001e70:	ff05b783          	ld	a5,-16(a1)
    80001e74:	00679713          	slli	a4,a5,0x6
    80001e78:	00853783          	ld	a5,8(a0)
    80001e7c:	40e787b3          	sub	a5,a5,a4
    80001e80:	00f53423          	sd	a5,8(a0)

    SegmentDescriptor* after = freeMemoryHead, *prev = nullptr;
    80001e84:	01853783          	ld	a5,24(a0)
    80001e88:	00000713          	li	a4,0
    while (after && after < newFreeSegment) {
    80001e8c:	00078a63          	beqz	a5,80001ea0 <_ZN15MemoryAllocator9kmem_freeEPv+0x68>
    80001e90:	00d7f863          	bgeu	a5,a3,80001ea0 <_ZN15MemoryAllocator9kmem_freeEPv+0x68>
        prev = after; after = after->next; }
    80001e94:	00078713          	mv	a4,a5
    80001e98:	0087b783          	ld	a5,8(a5)
    while (after && after < newFreeSegment) {
    80001e9c:	ff1ff06f          	j	80001e8c <_ZN15MemoryAllocator9kmem_freeEPv+0x54>

    newFreeSegment->next = after;
    80001ea0:	fef5bc23          	sd	a5,-8(a1)
    if (prev) prev->next = newFreeSegment;
    80001ea4:	04070063          	beqz	a4,80001ee4 <_ZN15MemoryAllocator9kmem_freeEPv+0xac>
    80001ea8:	00d73423          	sd	a3,8(a4)
    else freeMemoryHead = newFreeSegment;

    if (prev && (uint8*) prev + prev->noBlocks * MEM_BLOCK_SIZE == (uint8*) newFreeSegment) {
    80001eac:	00070a63          	beqz	a4,80001ec0 <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
    80001eb0:	00073503          	ld	a0,0(a4)
    80001eb4:	00651613          	slli	a2,a0,0x6
    80001eb8:	00c70633          	add	a2,a4,a2
    80001ebc:	02d60863          	beq	a2,a3,80001eec <_ZN15MemoryAllocator9kmem_freeEPv+0xb4>
        prev->next = newFreeSegment->next;
        prev->noBlocks += newFreeSegment->noBlocks;
        newFreeSegment = prev;
    }

    if (after && (uint8*) newFreeSegment + newFreeSegment->noBlocks * MEM_BLOCK_SIZE == (uint8*) after) {
    80001ec0:	00078a63          	beqz	a5,80001ed4 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>
    80001ec4:	0006b603          	ld	a2,0(a3)
    80001ec8:	00661713          	slli	a4,a2,0x6
    80001ecc:	00e68733          	add	a4,a3,a4
    80001ed0:	02f70c63          	beq	a4,a5,80001f08 <_ZN15MemoryAllocator9kmem_freeEPv+0xd0>
        newFreeSegment->next = after->next; newFreeSegment->noBlocks += after->noBlocks; }

    return 0;
}
    80001ed4:	00000513          	li	a0,0
    80001ed8:	00813403          	ld	s0,8(sp)
    80001edc:	01010113          	addi	sp,sp,16
    80001ee0:	00008067          	ret
    else freeMemoryHead = newFreeSegment;
    80001ee4:	00d53c23          	sd	a3,24(a0)
    80001ee8:	fc5ff06f          	j	80001eac <_ZN15MemoryAllocator9kmem_freeEPv+0x74>
        prev->next = newFreeSegment->next;
    80001eec:	ff85b683          	ld	a3,-8(a1)
    80001ef0:	00d73423          	sd	a3,8(a4)
        prev->noBlocks += newFreeSegment->noBlocks;
    80001ef4:	ff05b683          	ld	a3,-16(a1)
    80001ef8:	00d50533          	add	a0,a0,a3
    80001efc:	00a73023          	sd	a0,0(a4)
        newFreeSegment = prev;
    80001f00:	00070693          	mv	a3,a4
    80001f04:	fbdff06f          	j	80001ec0 <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
        newFreeSegment->next = after->next; newFreeSegment->noBlocks += after->noBlocks; }
    80001f08:	0087b703          	ld	a4,8(a5)
    80001f0c:	00e6b423          	sd	a4,8(a3)
    80001f10:	0007b783          	ld	a5,0(a5)
    80001f14:	00f60633          	add	a2,a2,a5
    80001f18:	00c6b023          	sd	a2,0(a3)
    80001f1c:	fb9ff06f          	j	80001ed4 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>

0000000080001f20 <_ZN15MemoryAllocator30printInstanceMemorySpaceParamsEv>:

void MemoryAllocator::printInstanceMemorySpaceParams() {
    80001f20:	fe010113          	addi	sp,sp,-32
    80001f24:	00113c23          	sd	ra,24(sp)
    80001f28:	00813823          	sd	s0,16(sp)
    80001f2c:	00913423          	sd	s1,8(sp)
    80001f30:	01213023          	sd	s2,0(sp)
    80001f34:	02010413          	addi	s0,sp,32
    80001f38:	00050493          	mv	s1,a0
    printString("##################################\n\n");
    80001f3c:	00007517          	auipc	a0,0x7
    80001f40:	22450513          	addi	a0,a0,548 # 80009160 <CONSOLE_STATUS+0x150>
    80001f44:	00004097          	auipc	ra,0x4
    80001f48:	510080e7          	jalr	1296(ra) # 80006454 <_Z11printStringPKc>
    printString("MemoryAllocator address: "); printInteger((uint64)this); printString("\n");
    80001f4c:	00007517          	auipc	a0,0x7
    80001f50:	23c50513          	addi	a0,a0,572 # 80009188 <CONSOLE_STATUS+0x178>
    80001f54:	00004097          	auipc	ra,0x4
    80001f58:	500080e7          	jalr	1280(ra) # 80006454 <_Z11printStringPKc>
    80001f5c:	00048513          	mv	a0,s1
    80001f60:	00004097          	auipc	ra,0x4
    80001f64:	564080e7          	jalr	1380(ra) # 800064c4 <_Z12printIntegerm>
    80001f68:	00007517          	auipc	a0,0x7
    80001f6c:	1a850513          	addi	a0,a0,424 # 80009110 <CONSOLE_STATUS+0x100>
    80001f70:	00004097          	auipc	ra,0x4
    80001f74:	4e4080e7          	jalr	1252(ra) # 80006454 <_Z11printStringPKc>

    // size_t noBlocksForStoringMemoryAllocator = sizeof(MemoryAllocator) / MEM_BLOCK_SIZE + 1;
    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
    80001f78:	02000513          	li	a0,32
    80001f7c:	00000097          	auipc	ra,0x0
    80001f80:	c38080e7          	jalr	-968(ra) # 80001bb4 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001f84:	00050913          	mv	s2,a0
    printString("noBlocksForStoringMemoryAllocator: ");
    80001f88:	00007517          	auipc	a0,0x7
    80001f8c:	22050513          	addi	a0,a0,544 # 800091a8 <CONSOLE_STATUS+0x198>
    80001f90:	00004097          	auipc	ra,0x4
    80001f94:	4c4080e7          	jalr	1220(ra) # 80006454 <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator); printString("\n");
    80001f98:	00090513          	mv	a0,s2
    80001f9c:	00004097          	auipc	ra,0x4
    80001fa0:	528080e7          	jalr	1320(ra) # 800064c4 <_Z12printIntegerm>
    80001fa4:	00007517          	auipc	a0,0x7
    80001fa8:	16c50513          	addi	a0,a0,364 # 80009110 <CONSOLE_STATUS+0x100>
    80001fac:	00004097          	auipc	ra,0x4
    80001fb0:	4a8080e7          	jalr	1192(ra) # 80006454 <_Z11printStringPKc>
    printString("noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE: ");
    80001fb4:	00007517          	auipc	a0,0x7
    80001fb8:	21c50513          	addi	a0,a0,540 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80001fbc:	00004097          	auipc	ra,0x4
    80001fc0:	498080e7          	jalr	1176(ra) # 80006454 <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE); printString("\n\n");
    80001fc4:	00691513          	slli	a0,s2,0x6
    80001fc8:	00004097          	auipc	ra,0x4
    80001fcc:	4fc080e7          	jalr	1276(ra) # 800064c4 <_Z12printIntegerm>
    80001fd0:	00007517          	auipc	a0,0x7
    80001fd4:	23850513          	addi	a0,a0,568 # 80009208 <CONSOLE_STATUS+0x1f8>
    80001fd8:	00004097          	auipc	ra,0x4
    80001fdc:	47c080e7          	jalr	1148(ra) # 80006454 <_Z11printStringPKc>

    printString("Managed memory space start: ");
    80001fe0:	00007517          	auipc	a0,0x7
    80001fe4:	23050513          	addi	a0,a0,560 # 80009210 <CONSOLE_STATUS+0x200>
    80001fe8:	00004097          	auipc	ra,0x4
    80001fec:	46c080e7          	jalr	1132(ra) # 80006454 <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceStart); printString("\n");
    80001ff0:	00008917          	auipc	s2,0x8
    80001ff4:	64090913          	addi	s2,s2,1600 # 8000a630 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    80001ff8:	01093503          	ld	a0,16(s2)
    80001ffc:	00004097          	auipc	ra,0x4
    80002000:	4c8080e7          	jalr	1224(ra) # 800064c4 <_Z12printIntegerm>
    80002004:	00007517          	auipc	a0,0x7
    80002008:	10c50513          	addi	a0,a0,268 # 80009110 <CONSOLE_STATUS+0x100>
    8000200c:	00004097          	auipc	ra,0x4
    80002010:	448080e7          	jalr	1096(ra) # 80006454 <_Z11printStringPKc>
    printString("Managed memory space end: ");
    80002014:	00007517          	auipc	a0,0x7
    80002018:	21c50513          	addi	a0,a0,540 # 80009230 <CONSOLE_STATUS+0x220>
    8000201c:	00004097          	auipc	ra,0x4
    80002020:	438080e7          	jalr	1080(ra) # 80006454 <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceEnd); printString("\n\n");
    80002024:	00093503          	ld	a0,0(s2)
    80002028:	00004097          	auipc	ra,0x4
    8000202c:	49c080e7          	jalr	1180(ra) # 800064c4 <_Z12printIntegerm>
    80002030:	00007517          	auipc	a0,0x7
    80002034:	1d850513          	addi	a0,a0,472 # 80009208 <CONSOLE_STATUS+0x1f8>
    80002038:	00004097          	auipc	ra,0x4
    8000203c:	41c080e7          	jalr	1052(ra) # 80006454 <_Z11printStringPKc>

    printString("Total Free: "); printInteger(getTotalFree()); printString("\n");
    80002040:	00007517          	auipc	a0,0x7
    80002044:	21050513          	addi	a0,a0,528 # 80009250 <CONSOLE_STATUS+0x240>
    80002048:	00004097          	auipc	ra,0x4
    8000204c:	40c080e7          	jalr	1036(ra) # 80006454 <_Z11printStringPKc>
    80002050:	0004b503          	ld	a0,0(s1)
    80002054:	00004097          	auipc	ra,0x4
    80002058:	470080e7          	jalr	1136(ra) # 800064c4 <_Z12printIntegerm>
    8000205c:	00007517          	auipc	a0,0x7
    80002060:	0b450513          	addi	a0,a0,180 # 80009110 <CONSOLE_STATUS+0x100>
    80002064:	00004097          	auipc	ra,0x4
    80002068:	3f0080e7          	jalr	1008(ra) # 80006454 <_Z11printStringPKc>
    printString("Total Taken: "); printInteger(getTotalTaken()); printString("\n");
    8000206c:	00007517          	auipc	a0,0x7
    80002070:	1f450513          	addi	a0,a0,500 # 80009260 <CONSOLE_STATUS+0x250>
    80002074:	00004097          	auipc	ra,0x4
    80002078:	3e0080e7          	jalr	992(ra) # 80006454 <_Z11printStringPKc>
    8000207c:	0084b503          	ld	a0,8(s1)
    80002080:	00004097          	auipc	ra,0x4
    80002084:	444080e7          	jalr	1092(ra) # 800064c4 <_Z12printIntegerm>
    80002088:	00007517          	auipc	a0,0x7
    8000208c:	08850513          	addi	a0,a0,136 # 80009110 <CONSOLE_STATUS+0x100>
    80002090:	00004097          	auipc	ra,0x4
    80002094:	3c4080e7          	jalr	964(ra) # 80006454 <_Z11printStringPKc>
    printString("Free Block No: "); printInteger(getFreeBlockNo()); printString("\n");
    80002098:	00007517          	auipc	a0,0x7
    8000209c:	1d850513          	addi	a0,a0,472 # 80009270 <CONSOLE_STATUS+0x260>
    800020a0:	00004097          	auipc	ra,0x4
    800020a4:	3b4080e7          	jalr	948(ra) # 80006454 <_Z11printStringPKc>
    800020a8:	0104b503          	ld	a0,16(s1)
    800020ac:	00004097          	auipc	ra,0x4
    800020b0:	418080e7          	jalr	1048(ra) # 800064c4 <_Z12printIntegerm>
    800020b4:	00007517          	auipc	a0,0x7
    800020b8:	05c50513          	addi	a0,a0,92 # 80009110 <CONSOLE_STATUS+0x100>
    800020bc:	00004097          	auipc	ra,0x4
    800020c0:	398080e7          	jalr	920(ra) # 80006454 <_Z11printStringPKc>
    printString("\n##################################\n");
    800020c4:	00007517          	auipc	a0,0x7
    800020c8:	1bc50513          	addi	a0,a0,444 # 80009280 <CONSOLE_STATUS+0x270>
    800020cc:	00004097          	auipc	ra,0x4
    800020d0:	388080e7          	jalr	904(ra) # 80006454 <_Z11printStringPKc>
}
    800020d4:	01813083          	ld	ra,24(sp)
    800020d8:	01013403          	ld	s0,16(sp)
    800020dc:	00813483          	ld	s1,8(sp)
    800020e0:	00013903          	ld	s2,0(sp)
    800020e4:	02010113          	addi	sp,sp,32
    800020e8:	00008067          	ret

00000000800020ec <_ZN15MemoryAllocator22printMemorySpaceParamsEv>:

void MemoryAllocator::printMemorySpaceParams() {
    800020ec:	fe010113          	addi	sp,sp,-32
    800020f0:	00113c23          	sd	ra,24(sp)
    800020f4:	00813823          	sd	s0,16(sp)
    800020f8:	00913423          	sd	s1,8(sp)
    800020fc:	01213023          	sd	s2,0(sp)
    80002100:	02010413          	addi	s0,sp,32
    printString("----------------------------------\n\n");
    80002104:	00007517          	auipc	a0,0x7
    80002108:	1a450513          	addi	a0,a0,420 # 800092a8 <CONSOLE_STATUS+0x298>
    8000210c:	00004097          	auipc	ra,0x4
    80002110:	348080e7          	jalr	840(ra) # 80006454 <_Z11printStringPKc>
    printString("Size of MemoryAllocator class: ");
    80002114:	00007517          	auipc	a0,0x7
    80002118:	1bc50513          	addi	a0,a0,444 # 800092d0 <CONSOLE_STATUS+0x2c0>
    8000211c:	00004097          	auipc	ra,0x4
    80002120:	338080e7          	jalr	824(ra) # 80006454 <_Z11printStringPKc>
    printInteger(sizeof(MemoryAllocator)); printString("\n");
    80002124:	02000513          	li	a0,32
    80002128:	00004097          	auipc	ra,0x4
    8000212c:	39c080e7          	jalr	924(ra) # 800064c4 <_Z12printIntegerm>
    80002130:	00007517          	auipc	a0,0x7
    80002134:	fe050513          	addi	a0,a0,-32 # 80009110 <CONSOLE_STATUS+0x100>
    80002138:	00004097          	auipc	ra,0x4
    8000213c:	31c080e7          	jalr	796(ra) # 80006454 <_Z11printStringPKc>

    printString("HEAP_START_ADDR: "); printInteger((uint64)HEAP_START_ADDR); printString("\n");
    80002140:	00007517          	auipc	a0,0x7
    80002144:	1d050513          	addi	a0,a0,464 # 80009310 <CONSOLE_STATUS+0x300>
    80002148:	00004097          	auipc	ra,0x4
    8000214c:	30c080e7          	jalr	780(ra) # 80006454 <_Z11printStringPKc>
    80002150:	00008497          	auipc	s1,0x8
    80002154:	4204b483          	ld	s1,1056(s1) # 8000a570 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002158:	0004b503          	ld	a0,0(s1)
    8000215c:	00004097          	auipc	ra,0x4
    80002160:	368080e7          	jalr	872(ra) # 800064c4 <_Z12printIntegerm>
    80002164:	00007517          	auipc	a0,0x7
    80002168:	fac50513          	addi	a0,a0,-84 # 80009110 <CONSOLE_STATUS+0x100>
    8000216c:	00004097          	auipc	ra,0x4
    80002170:	2e8080e7          	jalr	744(ra) # 80006454 <_Z11printStringPKc>
    printString("HEAP_END_ADDR: "); printInteger((uint64)HEAP_END_ADDR); printString("\n");
    80002174:	00007517          	auipc	a0,0x7
    80002178:	17c50513          	addi	a0,a0,380 # 800092f0 <CONSOLE_STATUS+0x2e0>
    8000217c:	00004097          	auipc	ra,0x4
    80002180:	2d8080e7          	jalr	728(ra) # 80006454 <_Z11printStringPKc>
    80002184:	00008917          	auipc	s2,0x8
    80002188:	43493903          	ld	s2,1076(s2) # 8000a5b8 <_GLOBAL_OFFSET_TABLE_+0x50>
    8000218c:	00093503          	ld	a0,0(s2)
    80002190:	00004097          	auipc	ra,0x4
    80002194:	334080e7          	jalr	820(ra) # 800064c4 <_Z12printIntegerm>
    80002198:	00007517          	auipc	a0,0x7
    8000219c:	f7850513          	addi	a0,a0,-136 # 80009110 <CONSOLE_STATUS+0x100>
    800021a0:	00004097          	auipc	ra,0x4
    800021a4:	2b4080e7          	jalr	692(ra) # 80006454 <_Z11printStringPKc>

    printString("HEAP_END_ADDR - HEAP_START_ADDR: ");
    800021a8:	00007517          	auipc	a0,0x7
    800021ac:	15850513          	addi	a0,a0,344 # 80009300 <CONSOLE_STATUS+0x2f0>
    800021b0:	00004097          	auipc	ra,0x4
    800021b4:	2a4080e7          	jalr	676(ra) # 80006454 <_Z11printStringPKc>
    printInteger((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)); printString("\n");
    800021b8:	00093503          	ld	a0,0(s2)
    800021bc:	0004b783          	ld	a5,0(s1)
    800021c0:	40f50533          	sub	a0,a0,a5
    800021c4:	00004097          	auipc	ra,0x4
    800021c8:	300080e7          	jalr	768(ra) # 800064c4 <_Z12printIntegerm>
    800021cc:	00007517          	auipc	a0,0x7
    800021d0:	f4450513          	addi	a0,a0,-188 # 80009110 <CONSOLE_STATUS+0x100>
    800021d4:	00004097          	auipc	ra,0x4
    800021d8:	280080e7          	jalr	640(ra) # 80006454 <_Z11printStringPKc>

    printString("MEM_BLOCK_SIZE: "); printInteger(MEM_BLOCK_SIZE); printString("\n");
    800021dc:	00007517          	auipc	a0,0x7
    800021e0:	14c50513          	addi	a0,a0,332 # 80009328 <CONSOLE_STATUS+0x318>
    800021e4:	00004097          	auipc	ra,0x4
    800021e8:	270080e7          	jalr	624(ra) # 80006454 <_Z11printStringPKc>
    800021ec:	04000513          	li	a0,64
    800021f0:	00004097          	auipc	ra,0x4
    800021f4:	2d4080e7          	jalr	724(ra) # 800064c4 <_Z12printIntegerm>
    800021f8:	00007517          	auipc	a0,0x7
    800021fc:	f1850513          	addi	a0,a0,-232 # 80009110 <CONSOLE_STATUS+0x100>
    80002200:	00004097          	auipc	ra,0x4
    80002204:	254080e7          	jalr	596(ra) # 80006454 <_Z11printStringPKc>

    printString("Number of blocks in (HEAP_END_ADDR - HEAP_START_ADDR): ");
    80002208:	00007517          	auipc	a0,0x7
    8000220c:	13850513          	addi	a0,a0,312 # 80009340 <CONSOLE_STATUS+0x330>
    80002210:	00004097          	auipc	ra,0x4
    80002214:	244080e7          	jalr	580(ra) # 80006454 <_Z11printStringPKc>
    printInteger(((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)) / MEM_BLOCK_SIZE);
    80002218:	00093503          	ld	a0,0(s2)
    8000221c:	0004b783          	ld	a5,0(s1)
    80002220:	40f50533          	sub	a0,a0,a5
    80002224:	00655513          	srli	a0,a0,0x6
    80002228:	00004097          	auipc	ra,0x4
    8000222c:	29c080e7          	jalr	668(ra) # 800064c4 <_Z12printIntegerm>
    printString("\n");
    80002230:	00007517          	auipc	a0,0x7
    80002234:	ee050513          	addi	a0,a0,-288 # 80009110 <CONSOLE_STATUS+0x100>
    80002238:	00004097          	auipc	ra,0x4
    8000223c:	21c080e7          	jalr	540(ra) # 80006454 <_Z11printStringPKc>
    printString("\n----------------------------------\n");
    80002240:	00007517          	auipc	a0,0x7
    80002244:	13850513          	addi	a0,a0,312 # 80009378 <CONSOLE_STATUS+0x368>
    80002248:	00004097          	auipc	ra,0x4
    8000224c:	20c080e7          	jalr	524(ra) # 80006454 <_Z11printStringPKc>
}
    80002250:	01813083          	ld	ra,24(sp)
    80002254:	01013403          	ld	s0,16(sp)
    80002258:	00813483          	ld	s1,8(sp)
    8000225c:	00013903          	ld	s2,0(sp)
    80002260:	02010113          	addi	sp,sp,32
    80002264:	00008067          	ret

0000000080002268 <_ZN15MemoryAllocator23printFreeMemoryHeadDataEv>:

void MemoryAllocator::printFreeMemoryHeadData() {
    80002268:	fe010113          	addi	sp,sp,-32
    8000226c:	00113c23          	sd	ra,24(sp)
    80002270:	00813823          	sd	s0,16(sp)
    80002274:	00913423          	sd	s1,8(sp)
    80002278:	02010413          	addi	s0,sp,32
    8000227c:	00050493          	mv	s1,a0
    printString("##################################\n\n");
    80002280:	00007517          	auipc	a0,0x7
    80002284:	ee050513          	addi	a0,a0,-288 # 80009160 <CONSOLE_STATUS+0x150>
    80002288:	00004097          	auipc	ra,0x4
    8000228c:	1cc080e7          	jalr	460(ra) # 80006454 <_Z11printStringPKc>
    printString("freeMemoryHead: ");
    80002290:	00007517          	auipc	a0,0x7
    80002294:	11050513          	addi	a0,a0,272 # 800093a0 <CONSOLE_STATUS+0x390>
    80002298:	00004097          	auipc	ra,0x4
    8000229c:	1bc080e7          	jalr	444(ra) # 80006454 <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead); printString("\n");
    800022a0:	0184b503          	ld	a0,24(s1)
    800022a4:	00004097          	auipc	ra,0x4
    800022a8:	220080e7          	jalr	544(ra) # 800064c4 <_Z12printIntegerm>
    800022ac:	00007517          	auipc	a0,0x7
    800022b0:	e6450513          	addi	a0,a0,-412 # 80009110 <CONSOLE_STATUS+0x100>
    800022b4:	00004097          	auipc	ra,0x4
    800022b8:	1a0080e7          	jalr	416(ra) # 80006454 <_Z11printStringPKc>
    printString("freeMemoryHead->noBlocks: ");
    800022bc:	00007517          	auipc	a0,0x7
    800022c0:	0fc50513          	addi	a0,a0,252 # 800093b8 <CONSOLE_STATUS+0x3a8>
    800022c4:	00004097          	auipc	ra,0x4
    800022c8:	190080e7          	jalr	400(ra) # 80006454 <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead->noBlocks); printString("\n");
    800022cc:	0184b783          	ld	a5,24(s1)
    800022d0:	0007b503          	ld	a0,0(a5)
    800022d4:	00004097          	auipc	ra,0x4
    800022d8:	1f0080e7          	jalr	496(ra) # 800064c4 <_Z12printIntegerm>
    800022dc:	00007517          	auipc	a0,0x7
    800022e0:	e3450513          	addi	a0,a0,-460 # 80009110 <CONSOLE_STATUS+0x100>
    800022e4:	00004097          	auipc	ra,0x4
    800022e8:	170080e7          	jalr	368(ra) # 80006454 <_Z11printStringPKc>
    printString("freeMemoryHead->next: ");
    800022ec:	00007517          	auipc	a0,0x7
    800022f0:	0ec50513          	addi	a0,a0,236 # 800093d8 <CONSOLE_STATUS+0x3c8>
    800022f4:	00004097          	auipc	ra,0x4
    800022f8:	160080e7          	jalr	352(ra) # 80006454 <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead->next); printString("\n");
    800022fc:	0184b783          	ld	a5,24(s1)
    80002300:	0087b503          	ld	a0,8(a5)
    80002304:	00004097          	auipc	ra,0x4
    80002308:	1c0080e7          	jalr	448(ra) # 800064c4 <_Z12printIntegerm>
    8000230c:	00007517          	auipc	a0,0x7
    80002310:	e0450513          	addi	a0,a0,-508 # 80009110 <CONSOLE_STATUS+0x100>
    80002314:	00004097          	auipc	ra,0x4
    80002318:	140080e7          	jalr	320(ra) # 80006454 <_Z11printStringPKc>
    printString("Segment Descriptor size: ");
    8000231c:	00007517          	auipc	a0,0x7
    80002320:	0d450513          	addi	a0,a0,212 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80002324:	00004097          	auipc	ra,0x4
    80002328:	130080e7          	jalr	304(ra) # 80006454 <_Z11printStringPKc>
    printInteger(sizeof(*freeMemoryHead)); printString("\n");
    8000232c:	01000513          	li	a0,16
    80002330:	00004097          	auipc	ra,0x4
    80002334:	194080e7          	jalr	404(ra) # 800064c4 <_Z12printIntegerm>
    80002338:	00007517          	auipc	a0,0x7
    8000233c:	dd850513          	addi	a0,a0,-552 # 80009110 <CONSOLE_STATUS+0x100>
    80002340:	00004097          	auipc	ra,0x4
    80002344:	114080e7          	jalr	276(ra) # 80006454 <_Z11printStringPKc>
    printString("\n##################################\n");
    80002348:	00007517          	auipc	a0,0x7
    8000234c:	f3850513          	addi	a0,a0,-200 # 80009280 <CONSOLE_STATUS+0x270>
    80002350:	00004097          	auipc	ra,0x4
    80002354:	104080e7          	jalr	260(ra) # 80006454 <_Z11printStringPKc>
}
    80002358:	01813083          	ld	ra,24(sp)
    8000235c:	01013403          	ld	s0,16(sp)
    80002360:	00813483          	ld	s1,8(sp)
    80002364:	02010113          	addi	sp,sp,32
    80002368:	00008067          	ret

000000008000236c <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv>:
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    return beforeTestFreeBlockNo == afterTestFreeBlockNo - minNoBlocksForSize - addendForSegDesc;

}

size_t MemoryAllocatorTest::getFreeBlocksCnt() {
    8000236c:	ff010113          	addi	sp,sp,-16
    80002370:	00113423          	sd	ra,8(sp)
    80002374:	00813023          	sd	s0,0(sp)
    80002378:	01010413          	addi	s0,sp,16
    MemoryAllocator::SegmentDescriptor* freeMemHead = MemoryAllocator::instance()->freeMemoryHead;
    8000237c:	00000097          	auipc	ra,0x0
    80002380:	930080e7          	jalr	-1744(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002384:	01853783          	ld	a5,24(a0)
    size_t blockCnt = 0;
    80002388:	00000513          	li	a0,0
    while (freeMemHead) {
    8000238c:	00078a63          	beqz	a5,800023a0 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv+0x34>
        blockCnt += freeMemHead->noBlocks;
    80002390:	0007b703          	ld	a4,0(a5)
    80002394:	00e50533          	add	a0,a0,a4
        freeMemHead = freeMemHead->next;
    80002398:	0087b783          	ld	a5,8(a5)
    while (freeMemHead) {
    8000239c:	ff1ff06f          	j	8000238c <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv+0x20>
    }
    return blockCnt;
}
    800023a0:	00813083          	ld	ra,8(sp)
    800023a4:	00013403          	ld	s0,0(sp)
    800023a8:	01010113          	addi	sp,sp,16
    800023ac:	00008067          	ret

00000000800023b0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>:

bool MemoryAllocatorTest::testMemoryMetadataValidity() {
    800023b0:	fd010113          	addi	sp,sp,-48
    800023b4:	02113423          	sd	ra,40(sp)
    800023b8:	02813023          	sd	s0,32(sp)
    800023bc:	00913c23          	sd	s1,24(sp)
    800023c0:	01213823          	sd	s2,16(sp)
    800023c4:	01313423          	sd	s3,8(sp)
    800023c8:	01413023          	sd	s4,0(sp)
    800023cc:	03010413          	addi	s0,sp,48
    800023d0:	00050913          	mv	s2,a0
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    800023d4:	00000097          	auipc	ra,0x0
    800023d8:	8d8080e7          	jalr	-1832(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>

    void* kmem_alloc(size_t size);
    int kmem_free(void* newFree);
    void printInstanceMemorySpaceParams();
    void printFreeMemoryHeadData();
    size_t getTotalFree() { return totalFree; }
    800023dc:	00053483          	ld	s1,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    800023e0:	00000097          	auipc	ra,0x0
    800023e4:	8cc080e7          	jalr	-1844(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800023e8:	00853a03          	ld	s4,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    800023ec:	00000097          	auipc	ra,0x0
    800023f0:	8c0080e7          	jalr	-1856(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    800023f4:	01053983          	ld	s3,16(a0)
    size_t freeBlocksCnt = getFreeBlocksCnt();
    800023f8:	00090513          	mv	a0,s2
    800023fc:	00000097          	auipc	ra,0x0
    80002400:	f70080e7          	jalr	-144(ra) # 8000236c <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv>

    if (freeBlocksCnt != beforeTestFreeBlockNo) return false;
    80002404:	02a99c63          	bne	s3,a0,8000243c <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x8c>
    if (freeBlocksCnt != beforeTestTotalFree / MEM_BLOCK_SIZE) return false;
    80002408:	0064d793          	srli	a5,s1,0x6
    8000240c:	04a79a63          	bne	a5,a0,80002460 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0xb0>

    size_t totalMemory = (size_t) (MemoryAllocator::managedMemorySpaceEnd - MemoryAllocator::managedMemorySpaceStart);
    80002410:	00008797          	auipc	a5,0x8
    80002414:	1687b783          	ld	a5,360(a5) # 8000a578 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002418:	0007b503          	ld	a0,0(a5)
    8000241c:	00008797          	auipc	a5,0x8
    80002420:	1b47b783          	ld	a5,436(a5) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002424:	0007b783          	ld	a5,0(a5)
    80002428:	40f507b3          	sub	a5,a0,a5
    return totalMemory == beforeTestTotalFree + beforeTestTotalTaken;
    8000242c:	01448533          	add	a0,s1,s4
    80002430:	40f50533          	sub	a0,a0,a5
    80002434:	00153513          	seqz	a0,a0
    80002438:	0080006f          	j	80002440 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x90>
    if (freeBlocksCnt != beforeTestFreeBlockNo) return false;
    8000243c:	00000513          	li	a0,0
}
    80002440:	02813083          	ld	ra,40(sp)
    80002444:	02013403          	ld	s0,32(sp)
    80002448:	01813483          	ld	s1,24(sp)
    8000244c:	01013903          	ld	s2,16(sp)
    80002450:	00813983          	ld	s3,8(sp)
    80002454:	00013a03          	ld	s4,0(sp)
    80002458:	03010113          	addi	sp,sp,48
    8000245c:	00008067          	ret
    if (freeBlocksCnt != beforeTestTotalFree / MEM_BLOCK_SIZE) return false;
    80002460:	00000513          	li	a0,0
    80002464:	fddff06f          	j	80002440 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x90>

0000000080002468 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>:
bool MemoryAllocatorTest::testMemoryAllocate(uint64 size, void** allocatedMemoryPointer) {
    80002468:	fa010113          	addi	sp,sp,-96
    8000246c:	04113c23          	sd	ra,88(sp)
    80002470:	04813823          	sd	s0,80(sp)
    80002474:	04913423          	sd	s1,72(sp)
    80002478:	05213023          	sd	s2,64(sp)
    8000247c:	03313c23          	sd	s3,56(sp)
    80002480:	03413823          	sd	s4,48(sp)
    80002484:	03513423          	sd	s5,40(sp)
    80002488:	03613023          	sd	s6,32(sp)
    8000248c:	01713c23          	sd	s7,24(sp)
    80002490:	01813823          	sd	s8,16(sp)
    80002494:	01913423          	sd	s9,8(sp)
    80002498:	01a13023          	sd	s10,0(sp)
    8000249c:	06010413          	addi	s0,sp,96
    800024a0:	00050a13          	mv	s4,a0
    800024a4:	00058913          	mv	s2,a1
    800024a8:	00060993          	mv	s3,a2
    if (!testMemoryMetadataValidity()) return false;
    800024ac:	00000097          	auipc	ra,0x0
    800024b0:	f04080e7          	jalr	-252(ra) # 800023b0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800024b4:	00050493          	mv	s1,a0
    800024b8:	04051063          	bnez	a0,800024f8 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x90>
}
    800024bc:	00048513          	mv	a0,s1
    800024c0:	05813083          	ld	ra,88(sp)
    800024c4:	05013403          	ld	s0,80(sp)
    800024c8:	04813483          	ld	s1,72(sp)
    800024cc:	04013903          	ld	s2,64(sp)
    800024d0:	03813983          	ld	s3,56(sp)
    800024d4:	03013a03          	ld	s4,48(sp)
    800024d8:	02813a83          	ld	s5,40(sp)
    800024dc:	02013b03          	ld	s6,32(sp)
    800024e0:	01813b83          	ld	s7,24(sp)
    800024e4:	01013c03          	ld	s8,16(sp)
    800024e8:	00813c83          	ld	s9,8(sp)
    800024ec:	00013d03          	ld	s10,0(sp)
    800024f0:	06010113          	addi	sp,sp,96
    800024f4:	00008067          	ret
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    800024f8:	fffff097          	auipc	ra,0xfffff
    800024fc:	7b4080e7          	jalr	1972(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    80002500:	00053b03          	ld	s6,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002504:	fffff097          	auipc	ra,0xfffff
    80002508:	7a8080e7          	jalr	1960(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    8000250c:	00853b83          	ld	s7,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    80002510:	fffff097          	auipc	ra,0xfffff
    80002514:	79c080e7          	jalr	1948(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002518:	01053c03          	ld	s8,16(a0)
    *allocatedMemoryPointer = MemoryAllocator::instance()->kmem_alloc(size);
    8000251c:	fffff097          	auipc	ra,0xfffff
    80002520:	790080e7          	jalr	1936(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002524:	00090593          	mv	a1,s2
    80002528:	00000097          	auipc	ra,0x0
    8000252c:	868080e7          	jalr	-1944(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80002530:	00050a93          	mv	s5,a0
    80002534:	00a9b023          	sd	a0,0(s3)
    if (*allocatedMemoryPointer == nullptr && size == (uint64) -37) return true;
    80002538:	08050663          	beqz	a0,800025c4 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x15c>
    size_t minNoBlocksForSize = MemoryAllocator::getMinBlockNumber(size);
    8000253c:	00090513          	mv	a0,s2
    80002540:	fffff097          	auipc	ra,0xfffff
    80002544:	674080e7          	jalr	1652(ra) # 80001bb4 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80002548:	00050993          	mv	s3,a0
    size_t addendForSegDesc = minNoBlocksForSize * MEM_BLOCK_SIZE - size < sizeof(MemoryAllocator::SegmentDescriptor);
    8000254c:	00651593          	slli	a1,a0,0x6
    80002550:	41258933          	sub	s2,a1,s2
    80002554:	01093913          	sltiu	s2,s2,16
    size_t allocatedMemory = (minNoBlocksForSize + addendForSegDesc) * MEM_BLOCK_SIZE;
    80002558:	01250cb3          	add	s9,a0,s2
    8000255c:	006c9d13          	slli	s10,s9,0x6
    if (!testMemoryMetadataValidity()) return false;
    80002560:	000a0513          	mv	a0,s4
    80002564:	00000097          	auipc	ra,0x0
    80002568:	e4c080e7          	jalr	-436(ra) # 800023b0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    8000256c:	00050493          	mv	s1,a0
    80002570:	f40506e3          	beqz	a0,800024bc <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    size_t afterTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002574:	fffff097          	auipc	ra,0xfffff
    80002578:	738080e7          	jalr	1848(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    8000257c:	00053483          	ld	s1,0(a0)
    size_t afterTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002580:	fffff097          	auipc	ra,0xfffff
    80002584:	72c080e7          	jalr	1836(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    80002588:	00853a03          	ld	s4,8(a0)
    size_t afterTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    8000258c:	fffff097          	auipc	ra,0xfffff
    80002590:	720080e7          	jalr	1824(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002594:	01053783          	ld	a5,16(a0)
    if (beforeTestTotalFree != afterTestTotalFree + allocatedMemory) return false;
    80002598:	01a484b3          	add	s1,s1,s10
    8000259c:	03649a63          	bne	s1,s6,800025d0 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x168>
    if (beforeTestTotalTaken != afterTestTotalTaken - allocatedMemory) return false;
    800025a0:	41aa0d33          	sub	s10,s4,s10
    800025a4:	037d1a63          	bne	s10,s7,800025d8 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x170>
    if (beforeTestFreeBlockNo != afterTestFreeBlockNo + minNoBlocksForSize + addendForSegDesc) return false;
    800025a8:	013789b3          	add	s3,a5,s3
    800025ac:	01298933          	add	s2,s3,s2
    800025b0:	03891863          	bne	s2,s8,800025e0 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x178>
    return segDesc->noBlocks == minNoBlocksForSize + addendForSegDesc;
    800025b4:	ff0ab483          	ld	s1,-16(s5)
    800025b8:	409c84b3          	sub	s1,s9,s1
    800025bc:	0014b493          	seqz	s1,s1
    800025c0:	efdff06f          	j	800024bc <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (*allocatedMemoryPointer == nullptr && size == (uint64) -37) return true;
    800025c4:	fdb00793          	li	a5,-37
    800025c8:	f6f91ae3          	bne	s2,a5,8000253c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0xd4>
    800025cc:	ef1ff06f          	j	800024bc <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestTotalFree != afterTestTotalFree + allocatedMemory) return false;
    800025d0:	00000493          	li	s1,0
    800025d4:	ee9ff06f          	j	800024bc <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestTotalTaken != afterTestTotalTaken - allocatedMemory) return false;
    800025d8:	00000493          	li	s1,0
    800025dc:	ee1ff06f          	j	800024bc <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestFreeBlockNo != afterTestFreeBlockNo + minNoBlocksForSize + addendForSegDesc) return false;
    800025e0:	00000493          	li	s1,0
    800025e4:	ed9ff06f          	j	800024bc <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>

00000000800025e8 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>:
bool MemoryAllocatorTest::testMemoryFree(uint64 size, void* allocatedMemoryPointer) {
    800025e8:	fb010113          	addi	sp,sp,-80
    800025ec:	04113423          	sd	ra,72(sp)
    800025f0:	04813023          	sd	s0,64(sp)
    800025f4:	02913c23          	sd	s1,56(sp)
    800025f8:	03213823          	sd	s2,48(sp)
    800025fc:	03313423          	sd	s3,40(sp)
    80002600:	03413023          	sd	s4,32(sp)
    80002604:	01513c23          	sd	s5,24(sp)
    80002608:	01613823          	sd	s6,16(sp)
    8000260c:	01713423          	sd	s7,8(sp)
    80002610:	01813023          	sd	s8,0(sp)
    80002614:	05010413          	addi	s0,sp,80
    80002618:	00050a13          	mv	s4,a0
    8000261c:	00058913          	mv	s2,a1
    80002620:	00060493          	mv	s1,a2
    if (!testMemoryMetadataValidity()) return false;
    80002624:	00000097          	auipc	ra,0x0
    80002628:	d8c080e7          	jalr	-628(ra) # 800023b0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    8000262c:	02051a63          	bnez	a0,80002660 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x78>
}
    80002630:	04813083          	ld	ra,72(sp)
    80002634:	04013403          	ld	s0,64(sp)
    80002638:	03813483          	ld	s1,56(sp)
    8000263c:	03013903          	ld	s2,48(sp)
    80002640:	02813983          	ld	s3,40(sp)
    80002644:	02013a03          	ld	s4,32(sp)
    80002648:	01813a83          	ld	s5,24(sp)
    8000264c:	01013b03          	ld	s6,16(sp)
    80002650:	00813b83          	ld	s7,8(sp)
    80002654:	00013c03          	ld	s8,0(sp)
    80002658:	05010113          	addi	sp,sp,80
    8000265c:	00008067          	ret
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002660:	fffff097          	auipc	ra,0xfffff
    80002664:	64c080e7          	jalr	1612(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    80002668:	00053b03          	ld	s6,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    8000266c:	fffff097          	auipc	ra,0xfffff
    80002670:	640080e7          	jalr	1600(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    80002674:	00853b83          	ld	s7,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    80002678:	fffff097          	auipc	ra,0xfffff
    8000267c:	634080e7          	jalr	1588(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002680:	01053a83          	ld	s5,16(a0)
    size_t minNoBlocksForSize = MemoryAllocator::getMinBlockNumber(size);
    80002684:	00090513          	mv	a0,s2
    80002688:	fffff097          	auipc	ra,0xfffff
    8000268c:	52c080e7          	jalr	1324(ra) # 80001bb4 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80002690:	00050993          	mv	s3,a0
    size_t addendForSegDesc = minNoBlocksForSize * MEM_BLOCK_SIZE - size < sizeof(MemoryAllocator::SegmentDescriptor);
    80002694:	00651593          	slli	a1,a0,0x6
    80002698:	41258933          	sub	s2,a1,s2
    8000269c:	01093913          	sltiu	s2,s2,16
    size_t allocatedMemory = (minNoBlocksForSize + addendForSegDesc) * MEM_BLOCK_SIZE;
    800026a0:	01250733          	add	a4,a0,s2
    800026a4:	00671c13          	slli	s8,a4,0x6
    if (!allocatedMemoryPointer) {
    800026a8:	08048463          	beqz	s1,80002730 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x148>
    if (allocatedMemoryPointer) segDesc = (MemoryAllocator::SegmentDescriptor*)
    800026ac:	08048a63          	beqz	s1,80002740 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x158>
    800026b0:	ff048793          	addi	a5,s1,-16
    if (allocatedMemoryPointer)
    800026b4:	00048863          	beqz	s1,800026c4 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xdc>
    if (segDesc->noBlocks != minNoBlocksForSize + addendForSegDesc) return false;
    800026b8:	0007b703          	ld	a4,0(a5)
    800026bc:	012987b3          	add	a5,s3,s2
    800026c0:	08f71463          	bne	a4,a5,80002748 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x160>
    MemoryAllocator::instance()->kmem_free(allocatedMemoryPointer);
    800026c4:	fffff097          	auipc	ra,0xfffff
    800026c8:	5e8080e7          	jalr	1512(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800026cc:	00048593          	mv	a1,s1
    800026d0:	fffff097          	auipc	ra,0xfffff
    800026d4:	768080e7          	jalr	1896(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    800026d8:	000a0513          	mv	a0,s4
    800026dc:	00000097          	auipc	ra,0x0
    800026e0:	cd4080e7          	jalr	-812(ra) # 800023b0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800026e4:	f40506e3          	beqz	a0,80002630 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    size_t afterTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    800026e8:	fffff097          	auipc	ra,0xfffff
    800026ec:	5c4080e7          	jalr	1476(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    800026f0:	00053483          	ld	s1,0(a0)
    size_t afterTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    800026f4:	fffff097          	auipc	ra,0xfffff
    800026f8:	5b8080e7          	jalr	1464(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800026fc:	00853a03          	ld	s4,8(a0)
    size_t afterTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    80002700:	fffff097          	auipc	ra,0xfffff
    80002704:	5ac080e7          	jalr	1452(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002708:	01053783          	ld	a5,16(a0)
    if (beforeTestTotalFree != afterTestTotalFree - allocatedMemory) return false;
    8000270c:	418484b3          	sub	s1,s1,s8
    80002710:	05649063          	bne	s1,s6,80002750 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x168>
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    80002714:	014c0733          	add	a4,s8,s4
    80002718:	05771063          	bne	a4,s7,80002758 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x170>
    return beforeTestFreeBlockNo == afterTestFreeBlockNo - minNoBlocksForSize - addendForSegDesc;
    8000271c:	41378533          	sub	a0,a5,s3
    80002720:	41250533          	sub	a0,a0,s2
    80002724:	41550533          	sub	a0,a0,s5
    80002728:	00153513          	seqz	a0,a0
    8000272c:	f05ff06f          	j	80002630 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
        minNoBlocksForSize = 0; addendForSegDesc = 0; allocatedMemory = 0;
    80002730:	00000c13          	li	s8,0
    80002734:	00000913          	li	s2,0
    80002738:	00000993          	li	s3,0
    8000273c:	f71ff06f          	j	800026ac <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xc4>
    MemoryAllocator::SegmentDescriptor* segDesc = nullptr;
    80002740:	00048793          	mv	a5,s1
    80002744:	f71ff06f          	j	800026b4 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xcc>
    if (segDesc->noBlocks != minNoBlocksForSize + addendForSegDesc) return false;
    80002748:	00000513          	li	a0,0
    8000274c:	ee5ff06f          	j	80002630 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    if (beforeTestTotalFree != afterTestTotalFree - allocatedMemory) return false;
    80002750:	00000513          	li	a0,0
    80002754:	eddff06f          	j	80002630 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    80002758:	00000513          	li	a0,0
    8000275c:	ed5ff06f          	j	80002630 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>

0000000080002760 <_ZN19MemoryAllocatorTest13firstFitTest1Ev>:
    if (!firstFitTest2()) return false;
    if (!firstFitTest3()) return false;
    return true;
}

bool MemoryAllocatorTest::firstFitTest1() {
    80002760:	fc010113          	addi	sp,sp,-64
    80002764:	02113c23          	sd	ra,56(sp)
    80002768:	02813823          	sd	s0,48(sp)
    8000276c:	02913423          	sd	s1,40(sp)
    80002770:	03213023          	sd	s2,32(sp)
    80002774:	01313c23          	sd	s3,24(sp)
    80002778:	01413823          	sd	s4,16(sp)
    8000277c:	01513423          	sd	s5,8(sp)
    80002780:	04010413          	addi	s0,sp,64
    80002784:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    80002788:	00000097          	auipc	ra,0x0
    8000278c:	c28080e7          	jalr	-984(ra) # 800023b0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002790:	02051463          	bnez	a0,800027b8 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x58>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002794:	03813083          	ld	ra,56(sp)
    80002798:	03013403          	ld	s0,48(sp)
    8000279c:	02813483          	ld	s1,40(sp)
    800027a0:	02013903          	ld	s2,32(sp)
    800027a4:	01813983          	ld	s3,24(sp)
    800027a8:	01013a03          	ld	s4,16(sp)
    800027ac:	00813a83          	ld	s5,8(sp)
    800027b0:	04010113          	addi	sp,sp,64
    800027b4:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    800027b8:	fffff097          	auipc	ra,0xfffff
    800027bc:	4f4080e7          	jalr	1268(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800027c0:	02f00593          	li	a1,47
    800027c4:	fffff097          	auipc	ra,0xfffff
    800027c8:	5cc080e7          	jalr	1484(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    800027cc:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    800027d0:	00008797          	auipc	a5,0x8
    800027d4:	e007b783          	ld	a5,-512(a5) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x68>
    800027d8:	0007b783          	ld	a5,0(a5)
    800027dc:	01078793          	addi	a5,a5,16
    800027e0:	00a78663          	beq	a5,a0,800027ec <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x8c>
        return false;
    800027e4:	00000513          	li	a0,0
    800027e8:	fadff06f          	j	80002794 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    800027ec:	fffff097          	auipc	ra,0xfffff
    800027f0:	4c0080e7          	jalr	1216(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800027f4:	03000593          	li	a1,48
    800027f8:	fffff097          	auipc	ra,0xfffff
    800027fc:	598080e7          	jalr	1432(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80002800:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002804:	00008797          	auipc	a5,0x8
    80002808:	dcc7b783          	ld	a5,-564(a5) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000280c:	0007b783          	ld	a5,0(a5)
    80002810:	05078793          	addi	a5,a5,80
    80002814:	00a78663          	beq	a5,a0,80002820 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0xc0>
        return false;
    80002818:	00000513          	li	a0,0
    8000281c:	f79ff06f          	j	80002794 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    80002820:	fffff097          	auipc	ra,0xfffff
    80002824:	48c080e7          	jalr	1164(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002828:	03100593          	li	a1,49
    8000282c:	fffff097          	auipc	ra,0xfffff
    80002830:	564080e7          	jalr	1380(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80002834:	00050a13          	mv	s4,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + 2 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002838:	00008797          	auipc	a5,0x8
    8000283c:	d987b783          	ld	a5,-616(a5) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002840:	0007b783          	ld	a5,0(a5)
    80002844:	09078793          	addi	a5,a5,144
    80002848:	00a78663          	beq	a5,a0,80002854 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0xf4>
        return false;
    8000284c:	00000513          	li	a0,0
    80002850:	f45ff06f          	j	80002794 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002854:	fffff097          	auipc	ra,0xfffff
    80002858:	458080e7          	jalr	1112(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    8000285c:	00098593          	mv	a1,s3
    80002860:	fffff097          	auipc	ra,0xfffff
    80002864:	5d8080e7          	jalr	1496(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002868:	fffff097          	auipc	ra,0xfffff
    8000286c:	444080e7          	jalr	1092(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002870:	01e00593          	li	a1,30
    80002874:	fffff097          	auipc	ra,0xfffff
    80002878:	51c080e7          	jalr	1308(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    8000287c:	00050993          	mv	s3,a0
    if (pointers[3] != MemoryAllocator::managedMemorySpaceStart + 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002880:	00008797          	auipc	a5,0x8
    80002884:	d507b783          	ld	a5,-688(a5) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002888:	0007b783          	ld	a5,0(a5)
    8000288c:	05078793          	addi	a5,a5,80
    80002890:	00a78663          	beq	a5,a0,8000289c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x13c>
        return false;
    80002894:	00000513          	li	a0,0
    80002898:	efdff06f          	j	80002794 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    8000289c:	fffff097          	auipc	ra,0xfffff
    800028a0:	410080e7          	jalr	1040(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800028a4:	12100593          	li	a1,289
    800028a8:	fffff097          	auipc	ra,0xfffff
    800028ac:	4e8080e7          	jalr	1256(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    800028b0:	00050a93          	mv	s5,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + 4 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    800028b4:	00008797          	auipc	a5,0x8
    800028b8:	d1c7b783          	ld	a5,-740(a5) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x68>
    800028bc:	0007b783          	ld	a5,0(a5)
    800028c0:	11078793          	addi	a5,a5,272
    800028c4:	00a78663          	beq	a5,a0,800028d0 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x170>
        return false;
    800028c8:	00000513          	li	a0,0
    800028cc:	ec9ff06f          	j	80002794 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    if (!testMemoryMetadataValidity()) return false;
    800028d0:	00048513          	mv	a0,s1
    800028d4:	00000097          	auipc	ra,0x0
    800028d8:	adc080e7          	jalr	-1316(ra) # 800023b0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800028dc:	ea050ce3          	beqz	a0,80002794 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    800028e0:	fffff097          	auipc	ra,0xfffff
    800028e4:	3cc080e7          	jalr	972(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800028e8:	00090593          	mv	a1,s2
    800028ec:	fffff097          	auipc	ra,0xfffff
    800028f0:	54c080e7          	jalr	1356(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    800028f4:	fffff097          	auipc	ra,0xfffff
    800028f8:	3b8080e7          	jalr	952(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800028fc:	000a0593          	mv	a1,s4
    80002900:	fffff097          	auipc	ra,0xfffff
    80002904:	538080e7          	jalr	1336(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002908:	fffff097          	auipc	ra,0xfffff
    8000290c:	3a4080e7          	jalr	932(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002910:	00098593          	mv	a1,s3
    80002914:	fffff097          	auipc	ra,0xfffff
    80002918:	524080e7          	jalr	1316(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    8000291c:	fffff097          	auipc	ra,0xfffff
    80002920:	390080e7          	jalr	912(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002924:	000a8593          	mv	a1,s5
    80002928:	fffff097          	auipc	ra,0xfffff
    8000292c:	510080e7          	jalr	1296(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002930:	00048513          	mv	a0,s1
    80002934:	00000097          	auipc	ra,0x0
    80002938:	a7c080e7          	jalr	-1412(ra) # 800023b0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    8000293c:	e59ff06f          	j	80002794 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>

0000000080002940 <_ZN19MemoryAllocatorTest12printPointerEiPPv>:


void MemoryAllocatorTest::printPointer(int i, void** pointers) {
    80002940:	fe010113          	addi	sp,sp,-32
    80002944:	00113c23          	sd	ra,24(sp)
    80002948:	00813823          	sd	s0,16(sp)
    8000294c:	00913423          	sd	s1,8(sp)
    80002950:	01213023          	sd	s2,0(sp)
    80002954:	02010413          	addi	s0,sp,32
    80002958:	00058913          	mv	s2,a1
    8000295c:	00060493          	mv	s1,a2
    printString("\npointers[");
    80002960:	00007517          	auipc	a0,0x7
    80002964:	ab050513          	addi	a0,a0,-1360 # 80009410 <CONSOLE_STATUS+0x400>
    80002968:	00004097          	auipc	ra,0x4
    8000296c:	aec080e7          	jalr	-1300(ra) # 80006454 <_Z11printStringPKc>
    printInteger(i);
    80002970:	00090513          	mv	a0,s2
    80002974:	00004097          	auipc	ra,0x4
    80002978:	b50080e7          	jalr	-1200(ra) # 800064c4 <_Z12printIntegerm>
    printString("]: ");
    8000297c:	00007517          	auipc	a0,0x7
    80002980:	aa450513          	addi	a0,a0,-1372 # 80009420 <CONSOLE_STATUS+0x410>
    80002984:	00004097          	auipc	ra,0x4
    80002988:	ad0080e7          	jalr	-1328(ra) # 80006454 <_Z11printStringPKc>
    printInteger((uint64)((uint8*) pointers[i] - MemoryAllocator::managedMemorySpaceStart));
    8000298c:	00391613          	slli	a2,s2,0x3
    80002990:	00c484b3          	add	s1,s1,a2
    80002994:	0004b503          	ld	a0,0(s1)
    80002998:	00008797          	auipc	a5,0x8
    8000299c:	c387b783          	ld	a5,-968(a5) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x68>
    800029a0:	0007b783          	ld	a5,0(a5)
    800029a4:	40f50533          	sub	a0,a0,a5
    800029a8:	00004097          	auipc	ra,0x4
    800029ac:	b1c080e7          	jalr	-1252(ra) # 800064c4 <_Z12printIntegerm>
    printString("\npointers[");
    800029b0:	00007517          	auipc	a0,0x7
    800029b4:	a6050513          	addi	a0,a0,-1440 # 80009410 <CONSOLE_STATUS+0x400>
    800029b8:	00004097          	auipc	ra,0x4
    800029bc:	a9c080e7          	jalr	-1380(ra) # 80006454 <_Z11printStringPKc>
    printInteger(i);
    800029c0:	00090513          	mv	a0,s2
    800029c4:	00004097          	auipc	ra,0x4
    800029c8:	b00080e7          	jalr	-1280(ra) # 800064c4 <_Z12printIntegerm>
    printString("]->blockNo: "); printInteger((uint64) (((MemoryAllocator::SegmentDescriptor*) pointers[i])->noBlocks));
    800029cc:	00007517          	auipc	a0,0x7
    800029d0:	a5c50513          	addi	a0,a0,-1444 # 80009428 <CONSOLE_STATUS+0x418>
    800029d4:	00004097          	auipc	ra,0x4
    800029d8:	a80080e7          	jalr	-1408(ra) # 80006454 <_Z11printStringPKc>
    800029dc:	0004b783          	ld	a5,0(s1)
    800029e0:	0007b503          	ld	a0,0(a5)
    800029e4:	00004097          	auipc	ra,0x4
    800029e8:	ae0080e7          	jalr	-1312(ra) # 800064c4 <_Z12printIntegerm>
    printString("\n");
    800029ec:	00006517          	auipc	a0,0x6
    800029f0:	72450513          	addi	a0,a0,1828 # 80009110 <CONSOLE_STATUS+0x100>
    800029f4:	00004097          	auipc	ra,0x4
    800029f8:	a60080e7          	jalr	-1440(ra) # 80006454 <_Z11printStringPKc>
}
    800029fc:	01813083          	ld	ra,24(sp)
    80002a00:	01013403          	ld	s0,16(sp)
    80002a04:	00813483          	ld	s1,8(sp)
    80002a08:	00013903          	ld	s2,0(sp)
    80002a0c:	02010113          	addi	sp,sp,32
    80002a10:	00008067          	ret

0000000080002a14 <_ZN19MemoryAllocatorTest13firstFitTest2Ev>:

bool MemoryAllocatorTest::firstFitTest2() {
    80002a14:	fc010113          	addi	sp,sp,-64
    80002a18:	02113c23          	sd	ra,56(sp)
    80002a1c:	02813823          	sd	s0,48(sp)
    80002a20:	02913423          	sd	s1,40(sp)
    80002a24:	03213023          	sd	s2,32(sp)
    80002a28:	01313c23          	sd	s3,24(sp)
    80002a2c:	01413823          	sd	s4,16(sp)
    80002a30:	01513423          	sd	s5,8(sp)
    80002a34:	04010413          	addi	s0,sp,64
    80002a38:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    80002a3c:	00000097          	auipc	ra,0x0
    80002a40:	974080e7          	jalr	-1676(ra) # 800023b0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002a44:	02051463          	bnez	a0,80002a6c <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x58>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002a48:	03813083          	ld	ra,56(sp)
    80002a4c:	03013403          	ld	s0,48(sp)
    80002a50:	02813483          	ld	s1,40(sp)
    80002a54:	02013903          	ld	s2,32(sp)
    80002a58:	01813983          	ld	s3,24(sp)
    80002a5c:	01013a03          	ld	s4,16(sp)
    80002a60:	00813a83          	ld	s5,8(sp)
    80002a64:	04010113          	addi	sp,sp,64
    80002a68:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002a6c:	fffff097          	auipc	ra,0xfffff
    80002a70:	240080e7          	jalr	576(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002a74:	08200593          	li	a1,130
    80002a78:	fffff097          	auipc	ra,0xfffff
    80002a7c:	318080e7          	jalr	792(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80002a80:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002a84:	00008797          	auipc	a5,0x8
    80002a88:	b4c7b783          	ld	a5,-1204(a5) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a8c:	0007b783          	ld	a5,0(a5)
    80002a90:	01078793          	addi	a5,a5,16
    80002a94:	00a78663          	beq	a5,a0,80002aa0 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x8c>
        return false;
    80002a98:	00000513          	li	a0,0
    80002a9c:	fadff06f          	j	80002a48 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    80002aa0:	fffff097          	auipc	ra,0xfffff
    80002aa4:	20c080e7          	jalr	524(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002aa8:	01400593          	li	a1,20
    80002aac:	fffff097          	auipc	ra,0xfffff
    80002ab0:	2e4080e7          	jalr	740(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80002ab4:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 3 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002ab8:	00008797          	auipc	a5,0x8
    80002abc:	b187b783          	ld	a5,-1256(a5) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002ac0:	0007b783          	ld	a5,0(a5)
    80002ac4:	0d078793          	addi	a5,a5,208
    80002ac8:	00a78663          	beq	a5,a0,80002ad4 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0xc0>
        return false;
    80002acc:	00000513          	li	a0,0
    80002ad0:	f79ff06f          	j	80002a48 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    80002ad4:	fffff097          	auipc	ra,0xfffff
    80002ad8:	1d8080e7          	jalr	472(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002adc:	00090593          	mv	a1,s2
    80002ae0:	fffff097          	auipc	ra,0xfffff
    80002ae4:	358080e7          	jalr	856(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    80002ae8:	fffff097          	auipc	ra,0xfffff
    80002aec:	1c4080e7          	jalr	452(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002af0:	07800593          	li	a1,120
    80002af4:	fffff097          	auipc	ra,0xfffff
    80002af8:	29c080e7          	jalr	668(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80002afc:	00050913          	mv	s2,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002b00:	00008797          	auipc	a5,0x8
    80002b04:	ad07b783          	ld	a5,-1328(a5) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b08:	0007b783          	ld	a5,0(a5)
    80002b0c:	01078793          	addi	a5,a5,16
    80002b10:	00a78663          	beq	a5,a0,80002b1c <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x108>
        return false;
    80002b14:	00000513          	li	a0,0
    80002b18:	f31ff06f          	j	80002a48 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002b1c:	fffff097          	auipc	ra,0xfffff
    80002b20:	190080e7          	jalr	400(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002b24:	01e00593          	li	a1,30
    80002b28:	fffff097          	auipc	ra,0xfffff
    80002b2c:	268080e7          	jalr	616(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80002b30:	00050a13          	mv	s4,a0
    if (pointers[3] != MemoryAllocator::managedMemorySpaceStart + 4 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002b34:	00008797          	auipc	a5,0x8
    80002b38:	a9c7b783          	ld	a5,-1380(a5) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b3c:	0007b783          	ld	a5,0(a5)
    80002b40:	11078793          	addi	a5,a5,272
    80002b44:	00a78663          	beq	a5,a0,80002b50 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x13c>
        return false;
    80002b48:	00000513          	li	a0,0
    80002b4c:	efdff06f          	j	80002a48 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002b50:	fffff097          	auipc	ra,0xfffff
    80002b54:	15c080e7          	jalr	348(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002b58:	00090593          	mv	a1,s2
    80002b5c:	fffff097          	auipc	ra,0xfffff
    80002b60:	2dc080e7          	jalr	732(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002b64:	fffff097          	auipc	ra,0xfffff
    80002b68:	148080e7          	jalr	328(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002b6c:	02f00593          	li	a1,47
    80002b70:	fffff097          	auipc	ra,0xfffff
    80002b74:	220080e7          	jalr	544(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80002b78:	00050913          	mv	s2,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002b7c:	00008797          	auipc	a5,0x8
    80002b80:	a547b783          	ld	a5,-1452(a5) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b84:	0007b783          	ld	a5,0(a5)
    80002b88:	01078793          	addi	a5,a5,16
    80002b8c:	00a78663          	beq	a5,a0,80002b98 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x184>
        return false;
    80002b90:	00000513          	li	a0,0
    80002b94:	eb5ff06f          	j	80002a48 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[5] = MemoryAllocator::instance()->kmem_alloc(sizes[5]);
    80002b98:	fffff097          	auipc	ra,0xfffff
    80002b9c:	114080e7          	jalr	276(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002ba0:	01400593          	li	a1,20
    80002ba4:	fffff097          	auipc	ra,0xfffff
    80002ba8:	1ec080e7          	jalr	492(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80002bac:	00050a93          	mv	s5,a0
    if (pointers[5] != MemoryAllocator::managedMemorySpaceStart + 1 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002bb0:	00008797          	auipc	a5,0x8
    80002bb4:	a207b783          	ld	a5,-1504(a5) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002bb8:	0007b783          	ld	a5,0(a5)
    80002bbc:	05078793          	addi	a5,a5,80
    80002bc0:	00a78663          	beq	a5,a0,80002bcc <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x1b8>
        return false;
    80002bc4:	00000513          	li	a0,0
    80002bc8:	e81ff06f          	j	80002a48 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    if (!testMemoryMetadataValidity()) return false;
    80002bcc:	00048513          	mv	a0,s1
    80002bd0:	fffff097          	auipc	ra,0xfffff
    80002bd4:	7e0080e7          	jalr	2016(ra) # 800023b0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002bd8:	e60508e3          	beqz	a0,80002a48 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002bdc:	fffff097          	auipc	ra,0xfffff
    80002be0:	0d0080e7          	jalr	208(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002be4:	00098593          	mv	a1,s3
    80002be8:	fffff097          	auipc	ra,0xfffff
    80002bec:	250080e7          	jalr	592(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002bf0:	fffff097          	auipc	ra,0xfffff
    80002bf4:	0bc080e7          	jalr	188(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002bf8:	000a0593          	mv	a1,s4
    80002bfc:	fffff097          	auipc	ra,0xfffff
    80002c00:	23c080e7          	jalr	572(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80002c04:	fffff097          	auipc	ra,0xfffff
    80002c08:	0a8080e7          	jalr	168(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002c0c:	00090593          	mv	a1,s2
    80002c10:	fffff097          	auipc	ra,0xfffff
    80002c14:	228080e7          	jalr	552(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    80002c18:	fffff097          	auipc	ra,0xfffff
    80002c1c:	094080e7          	jalr	148(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002c20:	000a8593          	mv	a1,s5
    80002c24:	fffff097          	auipc	ra,0xfffff
    80002c28:	214080e7          	jalr	532(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002c2c:	00048513          	mv	a0,s1
    80002c30:	fffff097          	auipc	ra,0xfffff
    80002c34:	780080e7          	jalr	1920(ra) # 800023b0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002c38:	e11ff06f          	j	80002a48 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>

0000000080002c3c <_ZN19MemoryAllocatorTest13firstFitTest3Ev>:


bool MemoryAllocatorTest::firstFitTest3() {
    80002c3c:	fb010113          	addi	sp,sp,-80
    80002c40:	04113423          	sd	ra,72(sp)
    80002c44:	04813023          	sd	s0,64(sp)
    80002c48:	02913c23          	sd	s1,56(sp)
    80002c4c:	03213823          	sd	s2,48(sp)
    80002c50:	03313423          	sd	s3,40(sp)
    80002c54:	03413023          	sd	s4,32(sp)
    80002c58:	01513c23          	sd	s5,24(sp)
    80002c5c:	01613823          	sd	s6,16(sp)
    80002c60:	01713423          	sd	s7,8(sp)
    80002c64:	05010413          	addi	s0,sp,80
    80002c68:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    80002c6c:	fffff097          	auipc	ra,0xfffff
    80002c70:	744080e7          	jalr	1860(ra) # 800023b0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002c74:	02051863          	bnez	a0,80002ca4 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x68>
    MemoryAllocator::instance()->kmem_free(pointers[6]);
    MemoryAllocator::instance()->kmem_free(pointers[7]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002c78:	04813083          	ld	ra,72(sp)
    80002c7c:	04013403          	ld	s0,64(sp)
    80002c80:	03813483          	ld	s1,56(sp)
    80002c84:	03013903          	ld	s2,48(sp)
    80002c88:	02813983          	ld	s3,40(sp)
    80002c8c:	02013a03          	ld	s4,32(sp)
    80002c90:	01813a83          	ld	s5,24(sp)
    80002c94:	01013b03          	ld	s6,16(sp)
    80002c98:	00813b83          	ld	s7,8(sp)
    80002c9c:	05010113          	addi	sp,sp,80
    80002ca0:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002ca4:	fffff097          	auipc	ra,0xfffff
    80002ca8:	008080e7          	jalr	8(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002cac:	13000593          	li	a1,304
    80002cb0:	fffff097          	auipc	ra,0xfffff
    80002cb4:	0e0080e7          	jalr	224(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80002cb8:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002cbc:	00008797          	auipc	a5,0x8
    80002cc0:	9147b783          	ld	a5,-1772(a5) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002cc4:	0007b783          	ld	a5,0(a5)
    80002cc8:	01078793          	addi	a5,a5,16
    80002ccc:	00a78663          	beq	a5,a0,80002cd8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x9c>
        return false;
    80002cd0:	00000513          	li	a0,0
    80002cd4:	fa5ff06f          	j	80002c78 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    80002cd8:	fffff097          	auipc	ra,0xfffff
    80002cdc:	fd4080e7          	jalr	-44(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002ce0:	03100593          	li	a1,49
    80002ce4:	fffff097          	auipc	ra,0xfffff
    80002ce8:	0ac080e7          	jalr	172(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80002cec:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 5 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002cf0:	00008797          	auipc	a5,0x8
    80002cf4:	8e07b783          	ld	a5,-1824(a5) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002cf8:	0007b783          	ld	a5,0(a5)
    80002cfc:	15078793          	addi	a5,a5,336
    80002d00:	00a78663          	beq	a5,a0,80002d0c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0xd0>
        return false;
    80002d04:	00000513          	li	a0,0
    80002d08:	f71ff06f          	j	80002c78 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    80002d0c:	fffff097          	auipc	ra,0xfffff
    80002d10:	fa0080e7          	jalr	-96(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002d14:	00090593          	mv	a1,s2
    80002d18:	fffff097          	auipc	ra,0xfffff
    80002d1c:	120080e7          	jalr	288(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    80002d20:	fffff097          	auipc	ra,0xfffff
    80002d24:	f8c080e7          	jalr	-116(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002d28:	0e600593          	li	a1,230
    80002d2c:	fffff097          	auipc	ra,0xfffff
    80002d30:	064080e7          	jalr	100(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80002d34:	00050913          	mv	s2,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002d38:	00008797          	auipc	a5,0x8
    80002d3c:	8987b783          	ld	a5,-1896(a5) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002d40:	0007b783          	ld	a5,0(a5)
    80002d44:	01078793          	addi	a5,a5,16
    80002d48:	00a78663          	beq	a5,a0,80002d54 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x118>
        return false;
    80002d4c:	00000513          	li	a0,0
    80002d50:	f29ff06f          	j	80002c78 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002d54:	fffff097          	auipc	ra,0xfffff
    80002d58:	f58080e7          	jalr	-168(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002d5c:	fdb00593          	li	a1,-37
    80002d60:	fffff097          	auipc	ra,0xfffff
    80002d64:	030080e7          	jalr	48(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80002d68:	00050a13          	mv	s4,a0
    if (pointers[3]) return false;
    80002d6c:	00050663          	beqz	a0,80002d78 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x13c>
    80002d70:	00000513          	li	a0,0
    80002d74:	f05ff06f          	j	80002c78 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002d78:	fffff097          	auipc	ra,0xfffff
    80002d7c:	f34080e7          	jalr	-204(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002d80:	01e00593          	li	a1,30
    80002d84:	fffff097          	auipc	ra,0xfffff
    80002d88:	00c080e7          	jalr	12(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80002d8c:	00050a93          	mv	s5,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + 7 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002d90:	00008797          	auipc	a5,0x8
    80002d94:	8407b783          	ld	a5,-1984(a5) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002d98:	0007b783          	ld	a5,0(a5)
    80002d9c:	1d078793          	addi	a5,a5,464
    80002da0:	00a78663          	beq	a5,a0,80002dac <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x170>
        return false;
    80002da4:	00000513          	li	a0,0
    80002da8:	ed1ff06f          	j	80002c78 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002dac:	fffff097          	auipc	ra,0xfffff
    80002db0:	f00080e7          	jalr	-256(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002db4:	00090593          	mv	a1,s2
    80002db8:	fffff097          	auipc	ra,0xfffff
    80002dbc:	080080e7          	jalr	128(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[5] = MemoryAllocator::instance()->kmem_alloc(sizes[5]);
    80002dc0:	fffff097          	auipc	ra,0xfffff
    80002dc4:	eec080e7          	jalr	-276(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002dc8:	09600593          	li	a1,150
    80002dcc:	fffff097          	auipc	ra,0xfffff
    80002dd0:	fc4080e7          	jalr	-60(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80002dd4:	00050b93          	mv	s7,a0
    if (pointers[5] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002dd8:	00007797          	auipc	a5,0x7
    80002ddc:	7f87b783          	ld	a5,2040(a5) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002de0:	0007b783          	ld	a5,0(a5)
    80002de4:	01078793          	addi	a5,a5,16
    80002de8:	00a78663          	beq	a5,a0,80002df4 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x1b8>
        return false;
    80002dec:	00000513          	li	a0,0
    80002df0:	e89ff06f          	j	80002c78 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[6] = MemoryAllocator::instance()->kmem_alloc(sizes[6]);
    80002df4:	fffff097          	auipc	ra,0xfffff
    80002df8:	eb8080e7          	jalr	-328(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002dfc:	02f00593          	li	a1,47
    80002e00:	fffff097          	auipc	ra,0xfffff
    80002e04:	f90080e7          	jalr	-112(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80002e08:	00050b13          	mv	s6,a0
    if (pointers[6] != MemoryAllocator::managedMemorySpaceStart + 3 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002e0c:	00007797          	auipc	a5,0x7
    80002e10:	7c47b783          	ld	a5,1988(a5) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002e14:	0007b783          	ld	a5,0(a5)
    80002e18:	0d078793          	addi	a5,a5,208
    80002e1c:	00a78663          	beq	a5,a0,80002e28 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x1ec>
        return false;
    80002e20:	00000513          	li	a0,0
    80002e24:	e55ff06f          	j	80002c78 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[7] = MemoryAllocator::instance()->kmem_alloc(sizes[7]);
    80002e28:	fffff097          	auipc	ra,0xfffff
    80002e2c:	e84080e7          	jalr	-380(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002e30:	02500593          	li	a1,37
    80002e34:	fffff097          	auipc	ra,0xfffff
    80002e38:	f5c080e7          	jalr	-164(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80002e3c:	00050913          	mv	s2,a0
    if (pointers[7] != MemoryAllocator::managedMemorySpaceStart + 8 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002e40:	00007797          	auipc	a5,0x7
    80002e44:	7907b783          	ld	a5,1936(a5) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002e48:	0007b783          	ld	a5,0(a5)
    80002e4c:	21078793          	addi	a5,a5,528
    80002e50:	00a78663          	beq	a5,a0,80002e5c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x220>
        return false;
    80002e54:	00000513          	li	a0,0
    80002e58:	e21ff06f          	j	80002c78 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    if (!testMemoryMetadataValidity()) return false;
    80002e5c:	00048513          	mv	a0,s1
    80002e60:	fffff097          	auipc	ra,0xfffff
    80002e64:	550080e7          	jalr	1360(ra) # 800023b0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002e68:	e00508e3          	beqz	a0,80002c78 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002e6c:	fffff097          	auipc	ra,0xfffff
    80002e70:	e40080e7          	jalr	-448(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002e74:	00098593          	mv	a1,s3
    80002e78:	fffff097          	auipc	ra,0xfffff
    80002e7c:	fc0080e7          	jalr	-64(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002e80:	fffff097          	auipc	ra,0xfffff
    80002e84:	e2c080e7          	jalr	-468(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002e88:	000a0593          	mv	a1,s4
    80002e8c:	fffff097          	auipc	ra,0xfffff
    80002e90:	fac080e7          	jalr	-84(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80002e94:	fffff097          	auipc	ra,0xfffff
    80002e98:	e18080e7          	jalr	-488(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002e9c:	000a8593          	mv	a1,s5
    80002ea0:	fffff097          	auipc	ra,0xfffff
    80002ea4:	f98080e7          	jalr	-104(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    80002ea8:	fffff097          	auipc	ra,0xfffff
    80002eac:	e04080e7          	jalr	-508(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002eb0:	000b8593          	mv	a1,s7
    80002eb4:	fffff097          	auipc	ra,0xfffff
    80002eb8:	f84080e7          	jalr	-124(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[6]);
    80002ebc:	fffff097          	auipc	ra,0xfffff
    80002ec0:	df0080e7          	jalr	-528(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002ec4:	000b0593          	mv	a1,s6
    80002ec8:	fffff097          	auipc	ra,0xfffff
    80002ecc:	f70080e7          	jalr	-144(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[7]);
    80002ed0:	fffff097          	auipc	ra,0xfffff
    80002ed4:	ddc080e7          	jalr	-548(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80002ed8:	00090593          	mv	a1,s2
    80002edc:	fffff097          	auipc	ra,0xfffff
    80002ee0:	f5c080e7          	jalr	-164(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002ee4:	00048513          	mv	a0,s1
    80002ee8:	fffff097          	auipc	ra,0xfffff
    80002eec:	4c8080e7          	jalr	1224(ra) # 800023b0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002ef0:	d89ff06f          	j	80002c78 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>

0000000080002ef4 <_ZN19MemoryAllocatorTest12testFirstFitEv>:
bool MemoryAllocatorTest::testFirstFit() {
    80002ef4:	fe010113          	addi	sp,sp,-32
    80002ef8:	00113c23          	sd	ra,24(sp)
    80002efc:	00813823          	sd	s0,16(sp)
    80002f00:	00913423          	sd	s1,8(sp)
    80002f04:	02010413          	addi	s0,sp,32
    80002f08:	00050493          	mv	s1,a0
    if (!firstFitTest1()) return false;
    80002f0c:	00000097          	auipc	ra,0x0
    80002f10:	854080e7          	jalr	-1964(ra) # 80002760 <_ZN19MemoryAllocatorTest13firstFitTest1Ev>
    80002f14:	00051c63          	bnez	a0,80002f2c <_ZN19MemoryAllocatorTest12testFirstFitEv+0x38>
}
    80002f18:	01813083          	ld	ra,24(sp)
    80002f1c:	01013403          	ld	s0,16(sp)
    80002f20:	00813483          	ld	s1,8(sp)
    80002f24:	02010113          	addi	sp,sp,32
    80002f28:	00008067          	ret
    if (!firstFitTest2()) return false;
    80002f2c:	00048513          	mv	a0,s1
    80002f30:	00000097          	auipc	ra,0x0
    80002f34:	ae4080e7          	jalr	-1308(ra) # 80002a14 <_ZN19MemoryAllocatorTest13firstFitTest2Ev>
    80002f38:	fe0500e3          	beqz	a0,80002f18 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x24>
    if (!firstFitTest3()) return false;
    80002f3c:	00048513          	mv	a0,s1
    80002f40:	00000097          	auipc	ra,0x0
    80002f44:	cfc080e7          	jalr	-772(ra) # 80002c3c <_ZN19MemoryAllocatorTest13firstFitTest3Ev>
    80002f48:	fd1ff06f          	j	80002f18 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x24>

0000000080002f4c <_ZN19MemoryAllocatorTest25testSegmentDescriptorSizeEv>:

bool MemoryAllocatorTest::testSegmentDescriptorSize() {
    80002f4c:	ff010113          	addi	sp,sp,-16
    80002f50:	00113423          	sd	ra,8(sp)
    80002f54:	00813023          	sd	s0,0(sp)
    80002f58:	01010413          	addi	s0,sp,16
    if (!testMemoryMetadataValidity()) return false;
    80002f5c:	fffff097          	auipc	ra,0xfffff
    80002f60:	454080e7          	jalr	1108(ra) # 800023b0 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    return sizeof(MemoryAllocator::SegmentDescriptor) == 16;
}
    80002f64:	00813083          	ld	ra,8(sp)
    80002f68:	00013403          	ld	s0,0(sp)
    80002f6c:	01010113          	addi	sp,sp,16
    80002f70:	00008067          	ret

0000000080002f74 <_ZN19MemoryAllocatorTest8runTestsEv>:
bool MemoryAllocatorTest::runTests() {
    80002f74:	f6010113          	addi	sp,sp,-160
    80002f78:	08113c23          	sd	ra,152(sp)
    80002f7c:	08813823          	sd	s0,144(sp)
    80002f80:	08913423          	sd	s1,136(sp)
    80002f84:	09213023          	sd	s2,128(sp)
    80002f88:	07313c23          	sd	s3,120(sp)
    80002f8c:	0a010413          	addi	s0,sp,160
    80002f90:	00050993          	mv	s3,a0
    sizes[0] = 3.7 * MEM_BLOCK_SIZE;
    80002f94:	0ec00793          	li	a5,236
    80002f98:	f6f43423          	sd	a5,-152(s0)
    sizes[1] = MEM_BLOCK_SIZE;
    80002f9c:	04000793          	li	a5,64
    80002fa0:	f6f43823          	sd	a5,-144(s0)
    sizes[2] = 0.3 * MEM_BLOCK_SIZE;
    80002fa4:	01300793          	li	a5,19
    80002fa8:	f6f43c23          	sd	a5,-136(s0)
    sizes[3] = 0;
    80002fac:	f8043023          	sd	zero,-128(s0)
    sizes[4] = -37;
    80002fb0:	fdb00793          	li	a5,-37
    80002fb4:	f8f43423          	sd	a5,-120(s0)
    sizes[5] = sizeof(MemoryAllocator::SegmentDescriptor) - 1;
    80002fb8:	00f00793          	li	a5,15
    80002fbc:	f8f43823          	sd	a5,-112(s0)
    sizes[6] = sizeof(MemoryAllocator::SegmentDescriptor);
    80002fc0:	01000793          	li	a5,16
    80002fc4:	f8f43c23          	sd	a5,-104(s0)
    sizes[7] = sizeof(MemoryAllocator::SegmentDescriptor) + 1;
    80002fc8:	01100793          	li	a5,17
    80002fcc:	faf43023          	sd	a5,-96(s0)
    sizes[8] = MemoryAllocator::minMemoryFragmentSize - 1;
    80002fd0:	00007797          	auipc	a5,0x7
    80002fd4:	5c87b783          	ld	a5,1480(a5) # 8000a598 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002fd8:	0007b783          	ld	a5,0(a5)
    80002fdc:	fff78713          	addi	a4,a5,-1
    80002fe0:	fae43423          	sd	a4,-88(s0)
    sizes[9] = MemoryAllocator::minMemoryFragmentSize;
    80002fe4:	faf43823          	sd	a5,-80(s0)
    sizes[10] = MemoryAllocator::minMemoryFragmentSize + 1;
    80002fe8:	00178793          	addi	a5,a5,1
    80002fec:	faf43c23          	sd	a5,-72(s0)
    sizes[11] = MEM_BLOCK_SIZE - 1;
    80002ff0:	03f00793          	li	a5,63
    80002ff4:	fcf43023          	sd	a5,-64(s0)
    sizes[12] = MEM_BLOCK_SIZE + 1;
    80002ff8:	04100793          	li	a5,65
    80002ffc:	fcf43423          	sd	a5,-56(s0)
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    80003000:	00000493          	li	s1,0
    80003004:	0880006f          	j	8000308c <_ZN19MemoryAllocatorTest8runTestsEv+0x118>
            printString("Failed testMemoryAllocate test for input ");
    80003008:	00006517          	auipc	a0,0x6
    8000300c:	43050513          	addi	a0,a0,1072 # 80009438 <CONSOLE_STATUS+0x428>
    80003010:	00003097          	auipc	ra,0x3
    80003014:	444080e7          	jalr	1092(ra) # 80006454 <_Z11printStringPKc>
            printInteger(sizes[i]); printString("\n"); return false;
    80003018:	00090513          	mv	a0,s2
    8000301c:	00003097          	auipc	ra,0x3
    80003020:	4a8080e7          	jalr	1192(ra) # 800064c4 <_Z12printIntegerm>
    80003024:	00006517          	auipc	a0,0x6
    80003028:	0ec50513          	addi	a0,a0,236 # 80009110 <CONSOLE_STATUS+0x100>
    8000302c:	00003097          	auipc	ra,0x3
    80003030:	428080e7          	jalr	1064(ra) # 80006454 <_Z11printStringPKc>
    80003034:	00000493          	li	s1,0
}
    80003038:	00048513          	mv	a0,s1
    8000303c:	09813083          	ld	ra,152(sp)
    80003040:	09013403          	ld	s0,144(sp)
    80003044:	08813483          	ld	s1,136(sp)
    80003048:	08013903          	ld	s2,128(sp)
    8000304c:	07813983          	ld	s3,120(sp)
    80003050:	0a010113          	addi	sp,sp,160
    80003054:	00008067          	ret
            printString("Failed testMemoryFree test for input ");
    80003058:	00006517          	auipc	a0,0x6
    8000305c:	41850513          	addi	a0,a0,1048 # 80009470 <CONSOLE_STATUS+0x460>
    80003060:	00003097          	auipc	ra,0x3
    80003064:	3f4080e7          	jalr	1012(ra) # 80006454 <_Z11printStringPKc>
            printInteger(sizes[i]); printString("\n"); return false;
    80003068:	00090513          	mv	a0,s2
    8000306c:	00003097          	auipc	ra,0x3
    80003070:	458080e7          	jalr	1112(ra) # 800064c4 <_Z12printIntegerm>
    80003074:	00006517          	auipc	a0,0x6
    80003078:	09c50513          	addi	a0,a0,156 # 80009110 <CONSOLE_STATUS+0x100>
    8000307c:	00003097          	auipc	ra,0x3
    80003080:	3d8080e7          	jalr	984(ra) # 80006454 <_Z11printStringPKc>
    80003084:	fb1ff06f          	j	80003034 <_ZN19MemoryAllocatorTest8runTestsEv+0xc0>
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    80003088:	0014849b          	addiw	s1,s1,1
    8000308c:	00c00793          	li	a5,12
    80003090:	0897c863          	blt	a5,s1,80003120 <_ZN19MemoryAllocatorTest8runTestsEv+0x1ac>
        void * allocatedMemoryPointer = nullptr;
    80003094:	f6043023          	sd	zero,-160(s0)
        if (!testMemoryAllocate(sizes[i], &allocatedMemoryPointer)) {
    80003098:	00349793          	slli	a5,s1,0x3
    8000309c:	fd040713          	addi	a4,s0,-48
    800030a0:	00f707b3          	add	a5,a4,a5
    800030a4:	f987b903          	ld	s2,-104(a5)
    800030a8:	f6040613          	addi	a2,s0,-160
    800030ac:	00090593          	mv	a1,s2
    800030b0:	00098513          	mv	a0,s3
    800030b4:	fffff097          	auipc	ra,0xfffff
    800030b8:	3b4080e7          	jalr	948(ra) # 80002468 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>
    800030bc:	f40506e3          	beqz	a0,80003008 <_ZN19MemoryAllocatorTest8runTestsEv+0x94>
        } else printString("Passed ");
    800030c0:	00006517          	auipc	a0,0x6
    800030c4:	3a850513          	addi	a0,a0,936 # 80009468 <CONSOLE_STATUS+0x458>
    800030c8:	00003097          	auipc	ra,0x3
    800030cc:	38c080e7          	jalr	908(ra) # 80006454 <_Z11printStringPKc>
        if (!testMemoryFree(sizes[i], allocatedMemoryPointer)) {
    800030d0:	f6043603          	ld	a2,-160(s0)
    800030d4:	00090593          	mv	a1,s2
    800030d8:	00098513          	mv	a0,s3
    800030dc:	fffff097          	auipc	ra,0xfffff
    800030e0:	50c080e7          	jalr	1292(ra) # 800025e8 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>
    800030e4:	f6050ae3          	beqz	a0,80003058 <_ZN19MemoryAllocatorTest8runTestsEv+0xe4>
        } else printString("Passed ");
    800030e8:	00006517          	auipc	a0,0x6
    800030ec:	38050513          	addi	a0,a0,896 # 80009468 <CONSOLE_STATUS+0x458>
    800030f0:	00003097          	auipc	ra,0x3
    800030f4:	364080e7          	jalr	868(ra) # 80006454 <_Z11printStringPKc>
        if (i != 0 && (i + 1) % 5 == 0) printString("\n");
    800030f8:	f80488e3          	beqz	s1,80003088 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    800030fc:	0014879b          	addiw	a5,s1,1
    80003100:	00500713          	li	a4,5
    80003104:	02e7e7bb          	remw	a5,a5,a4
    80003108:	f80790e3          	bnez	a5,80003088 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    8000310c:	00006517          	auipc	a0,0x6
    80003110:	00450513          	addi	a0,a0,4 # 80009110 <CONSOLE_STATUS+0x100>
    80003114:	00003097          	auipc	ra,0x3
    80003118:	340080e7          	jalr	832(ra) # 80006454 <_Z11printStringPKc>
    8000311c:	f6dff06f          	j	80003088 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    if (!testFirstFit()) {
    80003120:	00098513          	mv	a0,s3
    80003124:	00000097          	auipc	ra,0x0
    80003128:	dd0080e7          	jalr	-560(ra) # 80002ef4 <_ZN19MemoryAllocatorTest12testFirstFitEv>
    8000312c:	00050493          	mv	s1,a0
    80003130:	02050e63          	beqz	a0,8000316c <_ZN19MemoryAllocatorTest8runTestsEv+0x1f8>
    else printString("Passed ");
    80003134:	00006517          	auipc	a0,0x6
    80003138:	33450513          	addi	a0,a0,820 # 80009468 <CONSOLE_STATUS+0x458>
    8000313c:	00003097          	auipc	ra,0x3
    80003140:	318080e7          	jalr	792(ra) # 80006454 <_Z11printStringPKc>
    if (!testSegmentDescriptorSize()) {
    80003144:	00098513          	mv	a0,s3
    80003148:	00000097          	auipc	ra,0x0
    8000314c:	e04080e7          	jalr	-508(ra) # 80002f4c <_ZN19MemoryAllocatorTest25testSegmentDescriptorSizeEv>
    80003150:	00050493          	mv	s1,a0
    80003154:	02050663          	beqz	a0,80003180 <_ZN19MemoryAllocatorTest8runTestsEv+0x20c>
    else printString("Passed\n");
    80003158:	00006517          	auipc	a0,0x6
    8000315c:	38050513          	addi	a0,a0,896 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80003160:	00003097          	auipc	ra,0x3
    80003164:	2f4080e7          	jalr	756(ra) # 80006454 <_Z11printStringPKc>
    80003168:	ed1ff06f          	j	80003038 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>
        printString("Failed testFirstFit\n"); return false; }
    8000316c:	00006517          	auipc	a0,0x6
    80003170:	32c50513          	addi	a0,a0,812 # 80009498 <CONSOLE_STATUS+0x488>
    80003174:	00003097          	auipc	ra,0x3
    80003178:	2e0080e7          	jalr	736(ra) # 80006454 <_Z11printStringPKc>
    8000317c:	ebdff06f          	j	80003038 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>
        printString("Failed testSegmentDescriptorSize\n"); return false; }
    80003180:	00006517          	auipc	a0,0x6
    80003184:	33050513          	addi	a0,a0,816 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80003188:	00003097          	auipc	ra,0x3
    8000318c:	2cc080e7          	jalr	716(ra) # 80006454 <_Z11printStringPKc>
    80003190:	ea9ff06f          	j	80003038 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>

0000000080003194 <_Znwm>:


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80003194:	ff010113          	addi	sp,sp,-16
    80003198:	00113423          	sd	ra,8(sp)
    8000319c:	00813023          	sd	s0,0(sp)
    800031a0:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    800031a4:	00005097          	auipc	ra,0x5
    800031a8:	5b4080e7          	jalr	1460(ra) # 80008758 <__mem_alloc>
    //return MemoryAllocator::instance()->kmem_alloc(n);
}
    800031ac:	00813083          	ld	ra,8(sp)
    800031b0:	00013403          	ld	s0,0(sp)
    800031b4:	01010113          	addi	sp,sp,16
    800031b8:	00008067          	ret

00000000800031bc <_Znam>:

void *operator new[](size_t n)
{
    800031bc:	ff010113          	addi	sp,sp,-16
    800031c0:	00113423          	sd	ra,8(sp)
    800031c4:	00813023          	sd	s0,0(sp)
    800031c8:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    800031cc:	00005097          	auipc	ra,0x5
    800031d0:	58c080e7          	jalr	1420(ra) # 80008758 <__mem_alloc>
    //return MemoryAllocator::instance()->kmem_alloc(n);
}
    800031d4:	00813083          	ld	ra,8(sp)
    800031d8:	00013403          	ld	s0,0(sp)
    800031dc:	01010113          	addi	sp,sp,16
    800031e0:	00008067          	ret

00000000800031e4 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    800031e4:	ff010113          	addi	sp,sp,-16
    800031e8:	00113423          	sd	ra,8(sp)
    800031ec:	00813023          	sd	s0,0(sp)
    800031f0:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800031f4:	00005097          	auipc	ra,0x5
    800031f8:	498080e7          	jalr	1176(ra) # 8000868c <__mem_free>
    //MemoryAllocator::instance()->kmem_free(p);
}
    800031fc:	00813083          	ld	ra,8(sp)
    80003200:	00013403          	ld	s0,0(sp)
    80003204:	01010113          	addi	sp,sp,16
    80003208:	00008067          	ret

000000008000320c <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    8000320c:	ff010113          	addi	sp,sp,-16
    80003210:	00113423          	sd	ra,8(sp)
    80003214:	00813023          	sd	s0,0(sp)
    80003218:	01010413          	addi	s0,sp,16
    __mem_free(p);
    8000321c:	00005097          	auipc	ra,0x5
    80003220:	470080e7          	jalr	1136(ra) # 8000868c <__mem_free>
    //MemoryAllocator::instance()->kmem_free(p);
    80003224:	00813083          	ld	ra,8(sp)
    80003228:	00013403          	ld	s0,0(sp)
    8000322c:	01010113          	addi	sp,sp,16
    80003230:	00008067          	ret

0000000080003234 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>:
    }
    return false;
}

bool KObjectAllocatorTest::getValueOfBitAt(size_t byte, size_t bit, KObjectAllocator* objAlloc) {
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i) {
    80003234:	00000793          	li	a5,0
    80003238:	0080006f          	j	80003240 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator+0xc>
    8000323c:	00178793          	addi	a5,a5,1
    80003240:	0306b703          	ld	a4,48(a3)
    80003244:	04e7f263          	bgeu	a5,a4,80003288 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator+0x54>
        if (i * objAlloc->memorySizeForBits <= byte && byte < (i + 1) * objAlloc->memorySizeForBits)
    80003248:	0106b703          	ld	a4,16(a3)
    8000324c:	02f70533          	mul	a0,a4,a5
    80003250:	fea5e6e3          	bltu	a1,a0,8000323c <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator+0x8>
    80003254:	00178813          	addi	a6,a5,1
    80003258:	03070733          	mul	a4,a4,a6
    8000325c:	fee5f0e3          	bgeu	a1,a4,8000323c <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator+0x8>
            return (objAlloc->bitVectors[i][byte - i * objAlloc->memorySizeForBits] >> bit & (uint8) 1) != 0;
    80003260:	0286b703          	ld	a4,40(a3)
    80003264:	00379793          	slli	a5,a5,0x3
    80003268:	00f707b3          	add	a5,a4,a5
    8000326c:	0007b783          	ld	a5,0(a5)
    80003270:	40a585b3          	sub	a1,a1,a0
    80003274:	00b785b3          	add	a1,a5,a1
    80003278:	0005c503          	lbu	a0,0(a1)
    8000327c:	40c5563b          	sraw	a2,a0,a2
    80003280:	00167513          	andi	a0,a2,1
    }
    printString("ERROR: byte not in given objAlloc\n");
    return false;
}
    80003284:	00008067          	ret
bool KObjectAllocatorTest::getValueOfBitAt(size_t byte, size_t bit, KObjectAllocator* objAlloc) {
    80003288:	ff010113          	addi	sp,sp,-16
    8000328c:	00113423          	sd	ra,8(sp)
    80003290:	00813023          	sd	s0,0(sp)
    80003294:	01010413          	addi	s0,sp,16
    printString("ERROR: byte not in given objAlloc\n");
    80003298:	00006517          	auipc	a0,0x6
    8000329c:	24850513          	addi	a0,a0,584 # 800094e0 <CONSOLE_STATUS+0x4d0>
    800032a0:	00003097          	auipc	ra,0x3
    800032a4:	1b4080e7          	jalr	436(ra) # 80006454 <_Z11printStringPKc>
    return false;
    800032a8:	00000513          	li	a0,0
}
    800032ac:	00813083          	ld	ra,8(sp)
    800032b0:	00013403          	ld	s0,0(sp)
    800032b4:	01010113          	addi	sp,sp,16
    800032b8:	00008067          	ret

00000000800032bc <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>:

size_t KObjectAllocatorTest::getByteOfObject(void* obj, KObjectAllocator* objAlloc) {
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i) {
    800032bc:	00000713          	li	a4,0
    800032c0:	0080006f          	j	800032c8 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator+0xc>
    800032c4:	00170713          	addi	a4,a4,1
    800032c8:	03063783          	ld	a5,48(a2)
    800032cc:	02f77e63          	bgeu	a4,a5,80003308 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator+0x4c>
        if ((uint8*) obj < objAlloc->objectVectors[i]) continue;
    800032d0:	02063783          	ld	a5,32(a2)
    800032d4:	00371693          	slli	a3,a4,0x3
    800032d8:	00d787b3          	add	a5,a5,a3
    800032dc:	0007b783          	ld	a5,0(a5)
    800032e0:	fef5e2e3          	bltu	a1,a5,800032c4 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator+0x8>
        size_t idiff = (size_t) ((uint8*) obj - objAlloc->objectVectors[i]);
    800032e4:	40f58533          	sub	a0,a1,a5
        size_t byte = idiff / objAlloc->objectSize / 8;
    800032e8:	01863783          	ld	a5,24(a2)
    800032ec:	02f55533          	divu	a0,a0,a5
    800032f0:	00355513          	srli	a0,a0,0x3
        if (byte >= objAlloc->memorySizeForBits) continue;
    800032f4:	01063783          	ld	a5,16(a2)
    800032f8:	fcf576e3          	bgeu	a0,a5,800032c4 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator+0x8>
        return byte + i * objAlloc->memorySizeForBits;
    800032fc:	02e78733          	mul	a4,a5,a4
    80003300:	00a70533          	add	a0,a4,a0
    }
    printString("ERROR: given object not allocated in given objAlloc\n");
    return 0;
}
    80003304:	00008067          	ret
size_t KObjectAllocatorTest::getByteOfObject(void* obj, KObjectAllocator* objAlloc) {
    80003308:	ff010113          	addi	sp,sp,-16
    8000330c:	00113423          	sd	ra,8(sp)
    80003310:	00813023          	sd	s0,0(sp)
    80003314:	01010413          	addi	s0,sp,16
    printString("ERROR: given object not allocated in given objAlloc\n");
    80003318:	00006517          	auipc	a0,0x6
    8000331c:	1f050513          	addi	a0,a0,496 # 80009508 <CONSOLE_STATUS+0x4f8>
    80003320:	00003097          	auipc	ra,0x3
    80003324:	134080e7          	jalr	308(ra) # 80006454 <_Z11printStringPKc>
    return 0;
    80003328:	00000513          	li	a0,0
}
    8000332c:	00813083          	ld	ra,8(sp)
    80003330:	00013403          	ld	s0,0(sp)
    80003334:	01010113          	addi	sp,sp,16
    80003338:	00008067          	ret

000000008000333c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>:

size_t KObjectAllocatorTest::getBitOfObject(void* obj, KObjectAllocator* objAlloc) {
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i) {
    8000333c:	00000713          	li	a4,0
    80003340:	0080006f          	j	80003348 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator+0xc>
    80003344:	00170713          	addi	a4,a4,1
    80003348:	03063783          	ld	a5,48(a2)
    8000334c:	04f77063          	bgeu	a4,a5,8000338c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator+0x50>
        if ((uint8*) obj < objAlloc->objectVectors[i]) continue;
    80003350:	02063783          	ld	a5,32(a2)
    80003354:	00371693          	slli	a3,a4,0x3
    80003358:	00d787b3          	add	a5,a5,a3
    8000335c:	0007b783          	ld	a5,0(a5)
    80003360:	fef5e2e3          	bltu	a1,a5,80003344 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator+0x8>
        size_t idiff = (size_t) ((uint8*) obj - objAlloc->objectVectors[i]);
    80003364:	40f587b3          	sub	a5,a1,a5
        size_t byte = idiff / objAlloc->objectSize / 8;
    80003368:	01863503          	ld	a0,24(a2)
    8000336c:	02a7d7b3          	divu	a5,a5,a0
    80003370:	0037d693          	srli	a3,a5,0x3
        if (byte >= objAlloc->memorySizeForBits) continue;
    80003374:	01063503          	ld	a0,16(a2)
    80003378:	fca6f6e3          	bgeu	a3,a0,80003344 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator+0x8>
        size_t bit = idiff / objAlloc->objectSize - byte * 8;
    8000337c:	ff87f513          	andi	a0,a5,-8
        return 7 - bit;
    80003380:	40f507b3          	sub	a5,a0,a5
    80003384:	00778513          	addi	a0,a5,7
    }
    printString("ERROR: given object not allocated in given objAlloc\n");
    return 0;
}
    80003388:	00008067          	ret
size_t KObjectAllocatorTest::getBitOfObject(void* obj, KObjectAllocator* objAlloc) {
    8000338c:	ff010113          	addi	sp,sp,-16
    80003390:	00113423          	sd	ra,8(sp)
    80003394:	00813023          	sd	s0,0(sp)
    80003398:	01010413          	addi	s0,sp,16
    printString("ERROR: given object not allocated in given objAlloc\n");
    8000339c:	00006517          	auipc	a0,0x6
    800033a0:	16c50513          	addi	a0,a0,364 # 80009508 <CONSOLE_STATUS+0x4f8>
    800033a4:	00003097          	auipc	ra,0x3
    800033a8:	0b0080e7          	jalr	176(ra) # 80006454 <_Z11printStringPKc>
    return 0;
    800033ac:	00000513          	li	a0,0
}
    800033b0:	00813083          	ld	ra,8(sp)
    800033b4:	00013403          	ld	s0,0(sp)
    800033b8:	01010113          	addi	sp,sp,16
    800033bc:	00008067          	ret

00000000800033c0 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>:

void* KObjectAllocatorTest::getObjectAt(size_t byte, size_t bit, KObjectAllocator* objAlloc) {
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i)
    800033c0:	00000793          	li	a5,0
    800033c4:	0080006f          	j	800033cc <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator+0xc>
    800033c8:	00178793          	addi	a5,a5,1
    800033cc:	0306b703          	ld	a4,48(a3)
    800033d0:	04e7f663          	bgeu	a5,a4,8000341c <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator+0x5c>
        if (i * objAlloc->memorySizeForBits <= byte && byte < (i + 1) * objAlloc->memorySizeForBits)
    800033d4:	0106b703          	ld	a4,16(a3)
    800033d8:	02f70833          	mul	a6,a4,a5
    800033dc:	ff05e6e3          	bltu	a1,a6,800033c8 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator+0x8>
    800033e0:	00178893          	addi	a7,a5,1
    800033e4:	03170733          	mul	a4,a4,a7
    800033e8:	fee5f0e3          	bgeu	a1,a4,800033c8 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator+0x8>
            return &objAlloc->objectVectors[i][((byte - i * objAlloc->memorySizeForBits) * 8 + 7 - bit) * objAlloc->objectSize];
    800033ec:	0206b703          	ld	a4,32(a3)
    800033f0:	00379793          	slli	a5,a5,0x3
    800033f4:	00f707b3          	add	a5,a4,a5
    800033f8:	0007b783          	ld	a5,0(a5)
    800033fc:	410585b3          	sub	a1,a1,a6
    80003400:	00359593          	slli	a1,a1,0x3
    80003404:	40c58533          	sub	a0,a1,a2
    80003408:	00750513          	addi	a0,a0,7
    8000340c:	0186b703          	ld	a4,24(a3)
    80003410:	02e50533          	mul	a0,a0,a4
    80003414:	00a78533          	add	a0,a5,a0
    printString("ERROR: given object not allocated in given objAlloc\n");
    return nullptr;
}
    80003418:	00008067          	ret
void* KObjectAllocatorTest::getObjectAt(size_t byte, size_t bit, KObjectAllocator* objAlloc) {
    8000341c:	ff010113          	addi	sp,sp,-16
    80003420:	00113423          	sd	ra,8(sp)
    80003424:	00813023          	sd	s0,0(sp)
    80003428:	01010413          	addi	s0,sp,16
    printString("ERROR: given object not allocated in given objAlloc\n");
    8000342c:	00006517          	auipc	a0,0x6
    80003430:	0dc50513          	addi	a0,a0,220 # 80009508 <CONSOLE_STATUS+0x4f8>
    80003434:	00003097          	auipc	ra,0x3
    80003438:	020080e7          	jalr	32(ra) # 80006454 <_Z11printStringPKc>
    return nullptr;
    8000343c:	00000513          	li	a0,0
}
    80003440:	00813083          	ld	ra,8(sp)
    80003444:	00013403          	ld	s0,0(sp)
    80003448:	01010113          	addi	sp,sp,16
    8000344c:	00008067          	ret

0000000080003450 <_ZN20KObjectAllocatorTest5test0Em>:

bool KObjectAllocatorTest::test0(size_t size) {
    80003450:	f5010113          	addi	sp,sp,-176
    80003454:	0a113423          	sd	ra,168(sp)
    80003458:	0a813023          	sd	s0,160(sp)
    8000345c:	08913c23          	sd	s1,152(sp)
    80003460:	09213823          	sd	s2,144(sp)
    80003464:	09313423          	sd	s3,136(sp)
    80003468:	09413023          	sd	s4,128(sp)
    8000346c:	07513c23          	sd	s5,120(sp)
    80003470:	07613823          	sd	s6,112(sp)
    80003474:	07713423          	sd	s7,104(sp)
    80003478:	0b010413          	addi	s0,sp,176
    8000347c:	00050993          	mv	s3,a0
    80003480:	00058913          	mv	s2,a1
        return MemoryAllocator::instance()->kmem_alloc(size);
    80003484:	fffff097          	auipc	ra,0xfffff
    80003488:	828080e7          	jalr	-2008(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    8000348c:	04000593          	li	a1,64
    80003490:	fffff097          	auipc	ra,0xfffff
    80003494:	900080e7          	jalr	-1792(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80003498:	00050493          	mv	s1,a0
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    8000349c:	00900793          	li	a5,9
    800034a0:	00f53023          	sd	a5,0(a0)
    800034a4:	00f53423          	sd	a5,8(a0)
    800034a8:	01253c23          	sd	s2,24(a0)
    800034ac:	00100793          	li	a5,1
    800034b0:	02f53823          	sd	a5,48(a0)
    800034b4:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    800034b8:	ffffe097          	auipc	ra,0xffffe
    800034bc:	7f4080e7          	jalr	2036(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800034c0:	0304b583          	ld	a1,48(s1)
    800034c4:	00359593          	slli	a1,a1,0x3
    800034c8:	fffff097          	auipc	ra,0xfffff
    800034cc:	8c8080e7          	jalr	-1848(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    800034d0:	02a4b423          	sd	a0,40(s1)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    800034d4:	ffffe097          	auipc	ra,0xffffe
    800034d8:	7d8080e7          	jalr	2008(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800034dc:	0304b583          	ld	a1,48(s1)
    800034e0:	00359593          	slli	a1,a1,0x3
    800034e4:	fffff097          	auipc	ra,0xfffff
    800034e8:	8ac080e7          	jalr	-1876(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    800034ec:	02a4b023          	sd	a0,32(s1)
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    800034f0:	0084b703          	ld	a4,8(s1)
    800034f4:	ff877793          	andi	a5,a4,-8
    800034f8:	02f70463          	beq	a4,a5,80003520 <_ZN20KObjectAllocatorTest5test0Em+0xd0>
    800034fc:	00800713          	li	a4,8
    80003500:	00e787b3          	add	a5,a5,a4
    80003504:	00f4b423          	sd	a5,8(s1)
    80003508:	00f4b023          	sd	a5,0(s1)
        memorySizeForBits = numberOfObjects / 8;
    8000350c:	0037d793          	srli	a5,a5,0x3
    80003510:	00f4b823          	sd	a5,16(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80003514:	ffffe097          	auipc	ra,0xffffe
    80003518:	798080e7          	jalr	1944(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    8000351c:	00c0006f          	j	80003528 <_ZN20KObjectAllocatorTest5test0Em+0xd8>
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80003520:	00000713          	li	a4,0
    80003524:	fddff06f          	j	80003500 <_ZN20KObjectAllocatorTest5test0Em+0xb0>
                memorySizeForBits + initialNumberOfObjects * objectSize
    80003528:	0104b583          	ld	a1,16(s1)
    8000352c:	0004b783          	ld	a5,0(s1)
    80003530:	02f907b3          	mul	a5,s2,a5
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80003534:	0284ba03          	ld	s4,40(s1)
    80003538:	00f585b3          	add	a1,a1,a5
    8000353c:	fffff097          	auipc	ra,0xfffff
    80003540:	854080e7          	jalr	-1964(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80003544:	00aa3023          	sd	a0,0(s4)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    80003548:	0284b783          	ld	a5,40(s1)
    8000354c:	0007b783          	ld	a5,0(a5)
    80003550:	0104b683          	ld	a3,16(s1)
    80003554:	0204b703          	ld	a4,32(s1)
    80003558:	00d787b3          	add	a5,a5,a3
    8000355c:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    80003560:	00000793          	li	a5,0
    80003564:	0104b703          	ld	a4,16(s1)
    80003568:	00e7fe63          	bgeu	a5,a4,80003584 <_ZN20KObjectAllocatorTest5test0Em+0x134>
    8000356c:	0284b703          	ld	a4,40(s1)
    80003570:	00073703          	ld	a4,0(a4)
    80003574:	00f70733          	add	a4,a4,a5
    80003578:	00070023          	sb	zero,0(a4)
    8000357c:	00178793          	addi	a5,a5,1
    80003580:	fe5ff06f          	j	80003564 <_ZN20KObjectAllocatorTest5test0Em+0x114>
    size_t getNumberOfObjects() { return numberOfObjects; }
    80003584:	0084b703          	ld	a4,8(s1)
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 9);
    if (objAlloc->getNumberOfObjects() != 16) { delete objAlloc; return false; }
    80003588:	01000793          	li	a5,16
    8000358c:	0af70663          	beq	a4,a5,80003638 <_ZN20KObjectAllocatorTest5test0Em+0x1e8>
    80003590:	06048a63          	beqz	s1,80003604 <_ZN20KObjectAllocatorTest5test0Em+0x1b4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003594:	00000913          	li	s2,0
    80003598:	0280006f          	j	800035c0 <_ZN20KObjectAllocatorTest5test0Em+0x170>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    8000359c:	ffffe097          	auipc	ra,0xffffe
    800035a0:	710080e7          	jalr	1808(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800035a4:	0284b783          	ld	a5,40(s1)
    800035a8:	00391713          	slli	a4,s2,0x3
    800035ac:	00e787b3          	add	a5,a5,a4
    800035b0:	0007b583          	ld	a1,0(a5)
    800035b4:	fffff097          	auipc	ra,0xfffff
    800035b8:	884080e7          	jalr	-1916(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800035bc:	00190913          	addi	s2,s2,1
    800035c0:	0304b783          	ld	a5,48(s1)
    800035c4:	fcf96ce3          	bltu	s2,a5,8000359c <_ZN20KObjectAllocatorTest5test0Em+0x14c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800035c8:	ffffe097          	auipc	ra,0xffffe
    800035cc:	6e4080e7          	jalr	1764(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800035d0:	0284b583          	ld	a1,40(s1)
    800035d4:	fffff097          	auipc	ra,0xfffff
    800035d8:	864080e7          	jalr	-1948(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800035dc:	ffffe097          	auipc	ra,0xffffe
    800035e0:	6d0080e7          	jalr	1744(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800035e4:	0204b583          	ld	a1,32(s1)
    800035e8:	fffff097          	auipc	ra,0xfffff
    800035ec:	850080e7          	jalr	-1968(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800035f0:	ffffe097          	auipc	ra,0xffffe
    800035f4:	6bc080e7          	jalr	1724(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800035f8:	00048593          	mv	a1,s1
    800035fc:	fffff097          	auipc	ra,0xfffff
    80003600:	83c080e7          	jalr	-1988(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003604:	00000a13          	li	s4,0
        if (expectedBitValues[i] != getValueOfBitAt(byte, bit, objAlloc))
            { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    }
    delete objAlloc;
    return true;
}
    80003608:	000a0513          	mv	a0,s4
    8000360c:	0a813083          	ld	ra,168(sp)
    80003610:	0a013403          	ld	s0,160(sp)
    80003614:	09813483          	ld	s1,152(sp)
    80003618:	09013903          	ld	s2,144(sp)
    8000361c:	08813983          	ld	s3,136(sp)
    80003620:	08013a03          	ld	s4,128(sp)
    80003624:	07813a83          	ld	s5,120(sp)
    80003628:	07013b03          	ld	s6,112(sp)
    8000362c:	06813b83          	ld	s7,104(sp)
    80003630:	0b010113          	addi	sp,sp,176
    80003634:	00008067          	ret
    size_t getMemorySizeForBits() { return memorySizeForBits; }
    80003638:	0104b703          	ld	a4,16(s1)
    if (objAlloc->getMemorySizeForBits() != 2) { delete objAlloc; return false; }
    8000363c:	00200793          	li	a5,2
    80003640:	08f70063          	beq	a4,a5,800036c0 <_ZN20KObjectAllocatorTest5test0Em+0x270>
    80003644:	06048a63          	beqz	s1,800036b8 <_ZN20KObjectAllocatorTest5test0Em+0x268>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003648:	00000913          	li	s2,0
    8000364c:	0280006f          	j	80003674 <_ZN20KObjectAllocatorTest5test0Em+0x224>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003650:	ffffe097          	auipc	ra,0xffffe
    80003654:	65c080e7          	jalr	1628(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003658:	0284b783          	ld	a5,40(s1)
    8000365c:	00391713          	slli	a4,s2,0x3
    80003660:	00e787b3          	add	a5,a5,a4
    80003664:	0007b583          	ld	a1,0(a5)
    80003668:	ffffe097          	auipc	ra,0xffffe
    8000366c:	7d0080e7          	jalr	2000(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003670:	00190913          	addi	s2,s2,1
    80003674:	0304b783          	ld	a5,48(s1)
    80003678:	fcf96ce3          	bltu	s2,a5,80003650 <_ZN20KObjectAllocatorTest5test0Em+0x200>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    8000367c:	ffffe097          	auipc	ra,0xffffe
    80003680:	630080e7          	jalr	1584(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003684:	0284b583          	ld	a1,40(s1)
    80003688:	ffffe097          	auipc	ra,0xffffe
    8000368c:	7b0080e7          	jalr	1968(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003690:	ffffe097          	auipc	ra,0xffffe
    80003694:	61c080e7          	jalr	1564(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003698:	0204b583          	ld	a1,32(s1)
    8000369c:	ffffe097          	auipc	ra,0xffffe
    800036a0:	79c080e7          	jalr	1948(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800036a4:	ffffe097          	auipc	ra,0xffffe
    800036a8:	608080e7          	jalr	1544(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800036ac:	00048593          	mv	a1,s1
    800036b0:	ffffe097          	auipc	ra,0xffffe
    800036b4:	788080e7          	jalr	1928(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    800036b8:	00000a13          	li	s4,0
    800036bc:	f4dff06f          	j	80003608 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    size_t getObjectSize() { return objectSize; }
    800036c0:	0184b783          	ld	a5,24(s1)
    if (objAlloc->getObjectSize() != size) { delete objAlloc; return false; }
    800036c4:	08f90063          	beq	s2,a5,80003744 <_ZN20KObjectAllocatorTest5test0Em+0x2f4>
    800036c8:	06048a63          	beqz	s1,8000373c <_ZN20KObjectAllocatorTest5test0Em+0x2ec>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800036cc:	00000913          	li	s2,0
    800036d0:	0304b783          	ld	a5,48(s1)
    800036d4:	02f97663          	bgeu	s2,a5,80003700 <_ZN20KObjectAllocatorTest5test0Em+0x2b0>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800036d8:	ffffe097          	auipc	ra,0xffffe
    800036dc:	5d4080e7          	jalr	1492(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800036e0:	0284b783          	ld	a5,40(s1)
    800036e4:	00391713          	slli	a4,s2,0x3
    800036e8:	00e787b3          	add	a5,a5,a4
    800036ec:	0007b583          	ld	a1,0(a5)
    800036f0:	ffffe097          	auipc	ra,0xffffe
    800036f4:	748080e7          	jalr	1864(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800036f8:	00190913          	addi	s2,s2,1
    800036fc:	fd5ff06f          	j	800036d0 <_ZN20KObjectAllocatorTest5test0Em+0x280>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003700:	ffffe097          	auipc	ra,0xffffe
    80003704:	5ac080e7          	jalr	1452(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003708:	0284b583          	ld	a1,40(s1)
    8000370c:	ffffe097          	auipc	ra,0xffffe
    80003710:	72c080e7          	jalr	1836(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003714:	ffffe097          	auipc	ra,0xffffe
    80003718:	598080e7          	jalr	1432(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    8000371c:	0204b583          	ld	a1,32(s1)
    80003720:	ffffe097          	auipc	ra,0xffffe
    80003724:	718080e7          	jalr	1816(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003728:	ffffe097          	auipc	ra,0xffffe
    8000372c:	584080e7          	jalr	1412(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003730:	00048593          	mv	a1,s1
    80003734:	ffffe097          	auipc	ra,0xffffe
    80003738:	704080e7          	jalr	1796(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    8000373c:	00000a13          	li	s4,0
    80003740:	ec9ff06f          	j	80003608 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    void* objArr[10]; for (size_t i = 0; i < 10; objArr[i++] = objAlloc->allocateNewObject());
    80003744:	00000913          	li	s2,0
    80003748:	00900793          	li	a5,9
    8000374c:	0327e663          	bltu	a5,s2,80003778 <_ZN20KObjectAllocatorTest5test0Em+0x328>
    80003750:	00190a13          	addi	s4,s2,1
    80003754:	00048513          	mv	a0,s1
    80003758:	00003097          	auipc	ra,0x3
    8000375c:	9e8080e7          	jalr	-1560(ra) # 80006140 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80003760:	00391913          	slli	s2,s2,0x3
    80003764:	fb040793          	addi	a5,s0,-80
    80003768:	01278933          	add	s2,a5,s2
    8000376c:	faa93823          	sd	a0,-80(s2)
    80003770:	000a0913          	mv	s2,s4
    80003774:	fd5ff06f          	j	80003748 <_ZN20KObjectAllocatorTest5test0Em+0x2f8>
    for (size_t i = 0; i < 10; ++i) {
    80003778:	00000b13          	li	s6,0
    size_t byte = 0; size_t bit = 7;
    8000377c:	00700913          	li	s2,7
    80003780:	00000a93          	li	s5,0
    80003784:	1840006f          	j	80003908 <_ZN20KObjectAllocatorTest5test0Em+0x4b8>
        if (objArr[i] != getObjectAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003788:	06048a63          	beqz	s1,800037fc <_ZN20KObjectAllocatorTest5test0Em+0x3ac>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000378c:	00000913          	li	s2,0
    80003790:	0304b783          	ld	a5,48(s1)
    80003794:	02f97663          	bgeu	s2,a5,800037c0 <_ZN20KObjectAllocatorTest5test0Em+0x370>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003798:	ffffe097          	auipc	ra,0xffffe
    8000379c:	514080e7          	jalr	1300(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800037a0:	0284b783          	ld	a5,40(s1)
    800037a4:	00391713          	slli	a4,s2,0x3
    800037a8:	00e787b3          	add	a5,a5,a4
    800037ac:	0007b583          	ld	a1,0(a5)
    800037b0:	ffffe097          	auipc	ra,0xffffe
    800037b4:	688080e7          	jalr	1672(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800037b8:	00190913          	addi	s2,s2,1
    800037bc:	fd5ff06f          	j	80003790 <_ZN20KObjectAllocatorTest5test0Em+0x340>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800037c0:	ffffe097          	auipc	ra,0xffffe
    800037c4:	4ec080e7          	jalr	1260(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800037c8:	0284b583          	ld	a1,40(s1)
    800037cc:	ffffe097          	auipc	ra,0xffffe
    800037d0:	66c080e7          	jalr	1644(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800037d4:	ffffe097          	auipc	ra,0xffffe
    800037d8:	4d8080e7          	jalr	1240(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800037dc:	0204b583          	ld	a1,32(s1)
    800037e0:	ffffe097          	auipc	ra,0xffffe
    800037e4:	658080e7          	jalr	1624(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800037e8:	ffffe097          	auipc	ra,0xffffe
    800037ec:	4c4080e7          	jalr	1220(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800037f0:	00048593          	mv	a1,s1
    800037f4:	ffffe097          	auipc	ra,0xffffe
    800037f8:	644080e7          	jalr	1604(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    800037fc:	00000a13          	li	s4,0
    80003800:	e09ff06f          	j	80003608 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        if (objByte != byte || objBit != bit) { delete objAlloc; return false; }
    80003804:	06048a63          	beqz	s1,80003878 <_ZN20KObjectAllocatorTest5test0Em+0x428>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003808:	00000913          	li	s2,0
    8000380c:	0304b783          	ld	a5,48(s1)
    80003810:	02f97663          	bgeu	s2,a5,8000383c <_ZN20KObjectAllocatorTest5test0Em+0x3ec>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003814:	ffffe097          	auipc	ra,0xffffe
    80003818:	498080e7          	jalr	1176(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    8000381c:	0284b783          	ld	a5,40(s1)
    80003820:	00391713          	slli	a4,s2,0x3
    80003824:	00e787b3          	add	a5,a5,a4
    80003828:	0007b583          	ld	a1,0(a5)
    8000382c:	ffffe097          	auipc	ra,0xffffe
    80003830:	60c080e7          	jalr	1548(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003834:	00190913          	addi	s2,s2,1
    80003838:	fd5ff06f          	j	8000380c <_ZN20KObjectAllocatorTest5test0Em+0x3bc>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    8000383c:	ffffe097          	auipc	ra,0xffffe
    80003840:	470080e7          	jalr	1136(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003844:	0284b583          	ld	a1,40(s1)
    80003848:	ffffe097          	auipc	ra,0xffffe
    8000384c:	5f0080e7          	jalr	1520(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003850:	ffffe097          	auipc	ra,0xffffe
    80003854:	45c080e7          	jalr	1116(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003858:	0204b583          	ld	a1,32(s1)
    8000385c:	ffffe097          	auipc	ra,0xffffe
    80003860:	5dc080e7          	jalr	1500(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003864:	ffffe097          	auipc	ra,0xffffe
    80003868:	448080e7          	jalr	1096(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    8000386c:	00048593          	mv	a1,s1
    80003870:	ffffe097          	auipc	ra,0xffffe
    80003874:	5c8080e7          	jalr	1480(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003878:	00000a13          	li	s4,0
    8000387c:	d8dff06f          	j	80003608 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        if (!getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003880:	d80484e3          	beqz	s1,80003608 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003884:	00000913          	li	s2,0
    80003888:	0280006f          	j	800038b0 <_ZN20KObjectAllocatorTest5test0Em+0x460>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    8000388c:	ffffe097          	auipc	ra,0xffffe
    80003890:	420080e7          	jalr	1056(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003894:	0284b783          	ld	a5,40(s1)
    80003898:	00391713          	slli	a4,s2,0x3
    8000389c:	00e787b3          	add	a5,a5,a4
    800038a0:	0007b583          	ld	a1,0(a5)
    800038a4:	ffffe097          	auipc	ra,0xffffe
    800038a8:	594080e7          	jalr	1428(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800038ac:	00190913          	addi	s2,s2,1
    800038b0:	0304b783          	ld	a5,48(s1)
    800038b4:	fcf96ce3          	bltu	s2,a5,8000388c <_ZN20KObjectAllocatorTest5test0Em+0x43c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800038b8:	ffffe097          	auipc	ra,0xffffe
    800038bc:	3f4080e7          	jalr	1012(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800038c0:	0284b583          	ld	a1,40(s1)
    800038c4:	ffffe097          	auipc	ra,0xffffe
    800038c8:	574080e7          	jalr	1396(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800038cc:	ffffe097          	auipc	ra,0xffffe
    800038d0:	3e0080e7          	jalr	992(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800038d4:	0204b583          	ld	a1,32(s1)
    800038d8:	ffffe097          	auipc	ra,0xffffe
    800038dc:	560080e7          	jalr	1376(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800038e0:	ffffe097          	auipc	ra,0xffffe
    800038e4:	3cc080e7          	jalr	972(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800038e8:	00048593          	mv	a1,s1
    800038ec:	ffffe097          	auipc	ra,0xffffe
    800038f0:	54c080e7          	jalr	1356(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    800038f4:	d15ff06f          	j	80003608 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    800038f8:	001a8a93          	addi	s5,s5,1
    800038fc:	00800913          	li	s2,8
    80003900:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 10; ++i) {
    80003904:	001b0b13          	addi	s6,s6,1
    80003908:	00900793          	li	a5,9
    8000390c:	0967e663          	bltu	a5,s6,80003998 <_ZN20KObjectAllocatorTest5test0Em+0x548>
        if (objArr[i] != getObjectAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003910:	003b1793          	slli	a5,s6,0x3
    80003914:	fb040713          	addi	a4,s0,-80
    80003918:	00f707b3          	add	a5,a4,a5
    8000391c:	fb07ba03          	ld	s4,-80(a5)
    80003920:	00048693          	mv	a3,s1
    80003924:	00090613          	mv	a2,s2
    80003928:	000a8593          	mv	a1,s5
    8000392c:	00098513          	mv	a0,s3
    80003930:	00000097          	auipc	ra,0x0
    80003934:	a90080e7          	jalr	-1392(ra) # 800033c0 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>
    80003938:	e4aa18e3          	bne	s4,a0,80003788 <_ZN20KObjectAllocatorTest5test0Em+0x338>
        size_t objByte = getByteOfObject(objArr[i], objAlloc);
    8000393c:	00048613          	mv	a2,s1
    80003940:	000a0593          	mv	a1,s4
    80003944:	00098513          	mv	a0,s3
    80003948:	00000097          	auipc	ra,0x0
    8000394c:	974080e7          	jalr	-1676(ra) # 800032bc <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    80003950:	00050b93          	mv	s7,a0
        size_t objBit = getBitOfObject(objArr[i], objAlloc);
    80003954:	00048613          	mv	a2,s1
    80003958:	000a0593          	mv	a1,s4
    8000395c:	00098513          	mv	a0,s3
    80003960:	00000097          	auipc	ra,0x0
    80003964:	9dc080e7          	jalr	-1572(ra) # 8000333c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
        if (objByte != byte || objBit != bit) { delete objAlloc; return false; }
    80003968:	e97a9ee3          	bne	s5,s7,80003804 <_ZN20KObjectAllocatorTest5test0Em+0x3b4>
    8000396c:	e8a91ce3          	bne	s2,a0,80003804 <_ZN20KObjectAllocatorTest5test0Em+0x3b4>
        if (!getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003970:	00048693          	mv	a3,s1
    80003974:	00090613          	mv	a2,s2
    80003978:	000a8593          	mv	a1,s5
    8000397c:	00098513          	mv	a0,s3
    80003980:	00000097          	auipc	ra,0x0
    80003984:	8b4080e7          	jalr	-1868(ra) # 80003234 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80003988:	00050a13          	mv	s4,a0
    8000398c:	ee050ae3          	beqz	a0,80003880 <_ZN20KObjectAllocatorTest5test0Em+0x430>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80003990:	f60918e3          	bnez	s2,80003900 <_ZN20KObjectAllocatorTest5test0Em+0x4b0>
    80003994:	f65ff06f          	j	800038f8 <_ZN20KObjectAllocatorTest5test0Em+0x4a8>
    for (size_t i = 0; i < 6; ++i) {
    80003998:	00000a13          	li	s4,0
    8000399c:	0900006f          	j	80003a2c <_ZN20KObjectAllocatorTest5test0Em+0x5dc>
        if (getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    800039a0:	06048a63          	beqz	s1,80003a14 <_ZN20KObjectAllocatorTest5test0Em+0x5c4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800039a4:	00000913          	li	s2,0
    800039a8:	0304b783          	ld	a5,48(s1)
    800039ac:	02f97663          	bgeu	s2,a5,800039d8 <_ZN20KObjectAllocatorTest5test0Em+0x588>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800039b0:	ffffe097          	auipc	ra,0xffffe
    800039b4:	2fc080e7          	jalr	764(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800039b8:	0284b783          	ld	a5,40(s1)
    800039bc:	00391713          	slli	a4,s2,0x3
    800039c0:	00e787b3          	add	a5,a5,a4
    800039c4:	0007b583          	ld	a1,0(a5)
    800039c8:	ffffe097          	auipc	ra,0xffffe
    800039cc:	470080e7          	jalr	1136(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800039d0:	00190913          	addi	s2,s2,1
    800039d4:	fd5ff06f          	j	800039a8 <_ZN20KObjectAllocatorTest5test0Em+0x558>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800039d8:	ffffe097          	auipc	ra,0xffffe
    800039dc:	2d4080e7          	jalr	724(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800039e0:	0284b583          	ld	a1,40(s1)
    800039e4:	ffffe097          	auipc	ra,0xffffe
    800039e8:	454080e7          	jalr	1108(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800039ec:	ffffe097          	auipc	ra,0xffffe
    800039f0:	2c0080e7          	jalr	704(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800039f4:	0204b583          	ld	a1,32(s1)
    800039f8:	ffffe097          	auipc	ra,0xffffe
    800039fc:	440080e7          	jalr	1088(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003a00:	ffffe097          	auipc	ra,0xffffe
    80003a04:	2ac080e7          	jalr	684(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003a08:	00048593          	mv	a1,s1
    80003a0c:	ffffe097          	auipc	ra,0xffffe
    80003a10:	42c080e7          	jalr	1068(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003a14:	00000a13          	li	s4,0
    80003a18:	bf1ff06f          	j	80003608 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80003a1c:	001a8a93          	addi	s5,s5,1
    80003a20:	00800913          	li	s2,8
    80003a24:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 6; ++i) {
    80003a28:	001a0a13          	addi	s4,s4,1
    80003a2c:	00500793          	li	a5,5
    80003a30:	0347e463          	bltu	a5,s4,80003a58 <_ZN20KObjectAllocatorTest5test0Em+0x608>
        if (getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003a34:	00048693          	mv	a3,s1
    80003a38:	00090613          	mv	a2,s2
    80003a3c:	000a8593          	mv	a1,s5
    80003a40:	00098513          	mv	a0,s3
    80003a44:	fffff097          	auipc	ra,0xfffff
    80003a48:	7f0080e7          	jalr	2032(ra) # 80003234 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80003a4c:	f4051ae3          	bnez	a0,800039a0 <_ZN20KObjectAllocatorTest5test0Em+0x550>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80003a50:	fc091ae3          	bnez	s2,80003a24 <_ZN20KObjectAllocatorTest5test0Em+0x5d4>
    80003a54:	fc9ff06f          	j	80003a1c <_ZN20KObjectAllocatorTest5test0Em+0x5cc>
    objAlloc->freeObject(objArr[4]);
    80003a58:	f8043583          	ld	a1,-128(s0)
    80003a5c:	00048513          	mv	a0,s1
    80003a60:	00002097          	auipc	ra,0x2
    80003a64:	460080e7          	jalr	1120(ra) # 80005ec0 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[7]);
    80003a68:	f9843583          	ld	a1,-104(s0)
    80003a6c:	00048513          	mv	a0,s1
    80003a70:	00002097          	auipc	ra,0x2
    80003a74:	450080e7          	jalr	1104(ra) # 80005ec0 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[8]);
    80003a78:	fa043583          	ld	a1,-96(s0)
    80003a7c:	00048513          	mv	a0,s1
    80003a80:	00002097          	auipc	ra,0x2
    80003a84:	440080e7          	jalr	1088(ra) # 80005ec0 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[4] = objAlloc->allocateNewObject();
    80003a88:	00048513          	mv	a0,s1
    80003a8c:	00002097          	auipc	ra,0x2
    80003a90:	6b4080e7          	jalr	1716(ra) # 80006140 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80003a94:	00050913          	mv	s2,a0
    if (objArr[4] != getObjectAt(1, 7, objAlloc)) { delete objAlloc; return false; }
    80003a98:	00048693          	mv	a3,s1
    80003a9c:	00700613          	li	a2,7
    80003aa0:	00100593          	li	a1,1
    80003aa4:	00098513          	mv	a0,s3
    80003aa8:	00000097          	auipc	ra,0x0
    80003aac:	918080e7          	jalr	-1768(ra) # 800033c0 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>
    80003ab0:	08a90063          	beq	s2,a0,80003b30 <_ZN20KObjectAllocatorTest5test0Em+0x6e0>
    80003ab4:	06048a63          	beqz	s1,80003b28 <_ZN20KObjectAllocatorTest5test0Em+0x6d8>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003ab8:	00000913          	li	s2,0
    80003abc:	0280006f          	j	80003ae4 <_ZN20KObjectAllocatorTest5test0Em+0x694>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003ac0:	ffffe097          	auipc	ra,0xffffe
    80003ac4:	1ec080e7          	jalr	492(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003ac8:	0284b783          	ld	a5,40(s1)
    80003acc:	00391713          	slli	a4,s2,0x3
    80003ad0:	00e787b3          	add	a5,a5,a4
    80003ad4:	0007b583          	ld	a1,0(a5)
    80003ad8:	ffffe097          	auipc	ra,0xffffe
    80003adc:	360080e7          	jalr	864(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003ae0:	00190913          	addi	s2,s2,1
    80003ae4:	0304b783          	ld	a5,48(s1)
    80003ae8:	fcf96ce3          	bltu	s2,a5,80003ac0 <_ZN20KObjectAllocatorTest5test0Em+0x670>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003aec:	ffffe097          	auipc	ra,0xffffe
    80003af0:	1c0080e7          	jalr	448(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003af4:	0284b583          	ld	a1,40(s1)
    80003af8:	ffffe097          	auipc	ra,0xffffe
    80003afc:	340080e7          	jalr	832(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003b00:	ffffe097          	auipc	ra,0xffffe
    80003b04:	1ac080e7          	jalr	428(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003b08:	0204b583          	ld	a1,32(s1)
    80003b0c:	ffffe097          	auipc	ra,0xffffe
    80003b10:	32c080e7          	jalr	812(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003b14:	ffffe097          	auipc	ra,0xffffe
    80003b18:	198080e7          	jalr	408(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003b1c:	00048593          	mv	a1,s1
    80003b20:	ffffe097          	auipc	ra,0xffffe
    80003b24:	318080e7          	jalr	792(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003b28:	00000a13          	li	s4,0
    80003b2c:	addff06f          	j	80003608 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    byte = getByteOfObject(objArr[4], objAlloc);
    80003b30:	00048613          	mv	a2,s1
    80003b34:	00090593          	mv	a1,s2
    80003b38:	00098513          	mv	a0,s3
    80003b3c:	fffff097          	auipc	ra,0xfffff
    80003b40:	780080e7          	jalr	1920(ra) # 800032bc <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    80003b44:	00050a13          	mv	s4,a0
    bit = getBitOfObject(objArr[4], objAlloc);
    80003b48:	00048613          	mv	a2,s1
    80003b4c:	00090593          	mv	a1,s2
    80003b50:	00098513          	mv	a0,s3
    80003b54:	fffff097          	auipc	ra,0xfffff
    80003b58:	7e8080e7          	jalr	2024(ra) # 8000333c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80003b5c:	00050913          	mv	s2,a0
    if (byte != 1 || bit != 7) { delete objAlloc; return false; }
    80003b60:	00100793          	li	a5,1
    80003b64:	00fa1663          	bne	s4,a5,80003b70 <_ZN20KObjectAllocatorTest5test0Em+0x720>
    80003b68:	00700793          	li	a5,7
    80003b6c:	08f50063          	beq	a0,a5,80003bec <_ZN20KObjectAllocatorTest5test0Em+0x79c>
    80003b70:	06048a63          	beqz	s1,80003be4 <_ZN20KObjectAllocatorTest5test0Em+0x794>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003b74:	00000913          	li	s2,0
    80003b78:	0280006f          	j	80003ba0 <_ZN20KObjectAllocatorTest5test0Em+0x750>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003b7c:	ffffe097          	auipc	ra,0xffffe
    80003b80:	130080e7          	jalr	304(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003b84:	0284b783          	ld	a5,40(s1)
    80003b88:	00391713          	slli	a4,s2,0x3
    80003b8c:	00e787b3          	add	a5,a5,a4
    80003b90:	0007b583          	ld	a1,0(a5)
    80003b94:	ffffe097          	auipc	ra,0xffffe
    80003b98:	2a4080e7          	jalr	676(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003b9c:	00190913          	addi	s2,s2,1
    80003ba0:	0304b783          	ld	a5,48(s1)
    80003ba4:	fcf96ce3          	bltu	s2,a5,80003b7c <_ZN20KObjectAllocatorTest5test0Em+0x72c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003ba8:	ffffe097          	auipc	ra,0xffffe
    80003bac:	104080e7          	jalr	260(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003bb0:	0284b583          	ld	a1,40(s1)
    80003bb4:	ffffe097          	auipc	ra,0xffffe
    80003bb8:	284080e7          	jalr	644(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003bbc:	ffffe097          	auipc	ra,0xffffe
    80003bc0:	0f0080e7          	jalr	240(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003bc4:	0204b583          	ld	a1,32(s1)
    80003bc8:	ffffe097          	auipc	ra,0xffffe
    80003bcc:	270080e7          	jalr	624(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003bd0:	ffffe097          	auipc	ra,0xffffe
    80003bd4:	0dc080e7          	jalr	220(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003bd8:	00048593          	mv	a1,s1
    80003bdc:	ffffe097          	auipc	ra,0xffffe
    80003be0:	25c080e7          	jalr	604(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003be4:	00000a13          	li	s4,0
    80003be8:	a21ff06f          	j	80003608 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    bool expectedBitValues[16] = {
    80003bec:	00006797          	auipc	a5,0x6
    80003bf0:	97478793          	addi	a5,a5,-1676 # 80009560 <CONSOLE_STATUS+0x550>
    80003bf4:	0007b703          	ld	a4,0(a5)
    80003bf8:	f4e43823          	sd	a4,-176(s0)
    80003bfc:	0087b783          	ld	a5,8(a5)
    80003c00:	f4f43c23          	sd	a5,-168(s0)
    for (size_t i = 0; i < 16; ++i) {
    80003c04:	00000a13          	li	s4,0
    byte = 0; bit = 7;
    80003c08:	00000a93          	li	s5,0
    80003c0c:	02c0006f          	j	80003c38 <_ZN20KObjectAllocatorTest5test0Em+0x7e8>
            { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    80003c10:	00048863          	beqz	s1,80003c20 <_ZN20KObjectAllocatorTest5test0Em+0x7d0>
    80003c14:	00048513          	mv	a0,s1
    80003c18:	ffffe097          	auipc	ra,0xffffe
    80003c1c:	d54080e7          	jalr	-684(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    80003c20:	00000a13          	li	s4,0
    80003c24:	9e5ff06f          	j	80003608 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    80003c28:	001a8a93          	addi	s5,s5,1
    80003c2c:	00800913          	li	s2,8
    80003c30:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 16; ++i) {
    80003c34:	001a0a13          	addi	s4,s4,1
    80003c38:	00f00793          	li	a5,15
    80003c3c:	0347ea63          	bltu	a5,s4,80003c70 <_ZN20KObjectAllocatorTest5test0Em+0x820>
        if (expectedBitValues[i] != getValueOfBitAt(byte, bit, objAlloc))
    80003c40:	fb040793          	addi	a5,s0,-80
    80003c44:	014787b3          	add	a5,a5,s4
    80003c48:	fa07cb03          	lbu	s6,-96(a5)
    80003c4c:	00048693          	mv	a3,s1
    80003c50:	00090613          	mv	a2,s2
    80003c54:	000a8593          	mv	a1,s5
    80003c58:	00098513          	mv	a0,s3
    80003c5c:	fffff097          	auipc	ra,0xfffff
    80003c60:	5d8080e7          	jalr	1496(ra) # 80003234 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80003c64:	faab16e3          	bne	s6,a0,80003c10 <_ZN20KObjectAllocatorTest5test0Em+0x7c0>
            { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    80003c68:	fc0914e3          	bnez	s2,80003c30 <_ZN20KObjectAllocatorTest5test0Em+0x7e0>
    80003c6c:	fbdff06f          	j	80003c28 <_ZN20KObjectAllocatorTest5test0Em+0x7d8>
    delete objAlloc;
    80003c70:	06048e63          	beqz	s1,80003cec <_ZN20KObjectAllocatorTest5test0Em+0x89c>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003c74:	00000913          	li	s2,0
    80003c78:	0280006f          	j	80003ca0 <_ZN20KObjectAllocatorTest5test0Em+0x850>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003c7c:	ffffe097          	auipc	ra,0xffffe
    80003c80:	030080e7          	jalr	48(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003c84:	0284b783          	ld	a5,40(s1)
    80003c88:	00391713          	slli	a4,s2,0x3
    80003c8c:	00e787b3          	add	a5,a5,a4
    80003c90:	0007b583          	ld	a1,0(a5)
    80003c94:	ffffe097          	auipc	ra,0xffffe
    80003c98:	1a4080e7          	jalr	420(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003c9c:	00190913          	addi	s2,s2,1
    80003ca0:	0304b783          	ld	a5,48(s1)
    80003ca4:	fcf96ce3          	bltu	s2,a5,80003c7c <_ZN20KObjectAllocatorTest5test0Em+0x82c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003ca8:	ffffe097          	auipc	ra,0xffffe
    80003cac:	004080e7          	jalr	4(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003cb0:	0284b583          	ld	a1,40(s1)
    80003cb4:	ffffe097          	auipc	ra,0xffffe
    80003cb8:	184080e7          	jalr	388(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003cbc:	ffffe097          	auipc	ra,0xffffe
    80003cc0:	ff0080e7          	jalr	-16(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003cc4:	0204b583          	ld	a1,32(s1)
    80003cc8:	ffffe097          	auipc	ra,0xffffe
    80003ccc:	170080e7          	jalr	368(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003cd0:	ffffe097          	auipc	ra,0xffffe
    80003cd4:	fdc080e7          	jalr	-36(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003cd8:	00048593          	mv	a1,s1
    80003cdc:	ffffe097          	auipc	ra,0xffffe
    80003ce0:	15c080e7          	jalr	348(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    return true;
    80003ce4:	00100a13          	li	s4,1
    }
    80003ce8:	921ff06f          	j	80003608 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    80003cec:	00100a13          	li	s4,1
    80003cf0:	919ff06f          	j	80003608 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    80003cf4:	00050913          	mv	s2,a0
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 9);
    80003cf8:	00048513          	mv	a0,s1
    80003cfc:	ffffe097          	auipc	ra,0xffffe
    80003d00:	c70080e7          	jalr	-912(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    80003d04:	00090513          	mv	a0,s2
    80003d08:	00008097          	auipc	ra,0x8
    80003d0c:	a20080e7          	jalr	-1504(ra) # 8000b728 <_Unwind_Resume>

0000000080003d10 <_ZN20KObjectAllocatorTest5test1Em>:

bool KObjectAllocatorTest::test1(size_t size) {
    80003d10:	81010113          	addi	sp,sp,-2032
    80003d14:	7e113423          	sd	ra,2024(sp)
    80003d18:	7e813023          	sd	s0,2016(sp)
    80003d1c:	7c913c23          	sd	s1,2008(sp)
    80003d20:	7d213823          	sd	s2,2000(sp)
    80003d24:	7d313423          	sd	s3,1992(sp)
    80003d28:	7d413023          	sd	s4,1984(sp)
    80003d2c:	7b513c23          	sd	s5,1976(sp)
    80003d30:	7f010413          	addi	s0,sp,2032
    80003d34:	db010113          	addi	sp,sp,-592
    80003d38:	00050993          	mv	s3,a0
    80003d3c:	00058913          	mv	s2,a1
        return MemoryAllocator::instance()->kmem_alloc(size);
    80003d40:	ffffe097          	auipc	ra,0xffffe
    80003d44:	f6c080e7          	jalr	-148(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003d48:	04000593          	li	a1,64
    80003d4c:	ffffe097          	auipc	ra,0xffffe
    80003d50:	044080e7          	jalr	68(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80003d54:	00050493          	mv	s1,a0
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    80003d58:	14000793          	li	a5,320
    80003d5c:	00f53023          	sd	a5,0(a0)
    80003d60:	00f53423          	sd	a5,8(a0)
    80003d64:	01253c23          	sd	s2,24(a0)
    80003d68:	00100793          	li	a5,1
    80003d6c:	02f53823          	sd	a5,48(a0)
    80003d70:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80003d74:	ffffe097          	auipc	ra,0xffffe
    80003d78:	f38080e7          	jalr	-200(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003d7c:	0304b583          	ld	a1,48(s1)
    80003d80:	00359593          	slli	a1,a1,0x3
    80003d84:	ffffe097          	auipc	ra,0xffffe
    80003d88:	00c080e7          	jalr	12(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80003d8c:	02a4b423          	sd	a0,40(s1)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80003d90:	ffffe097          	auipc	ra,0xffffe
    80003d94:	f1c080e7          	jalr	-228(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003d98:	0304b583          	ld	a1,48(s1)
    80003d9c:	00359593          	slli	a1,a1,0x3
    80003da0:	ffffe097          	auipc	ra,0xffffe
    80003da4:	ff0080e7          	jalr	-16(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80003da8:	02a4b023          	sd	a0,32(s1)
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80003dac:	0084b703          	ld	a4,8(s1)
    80003db0:	ff877793          	andi	a5,a4,-8
    80003db4:	02f70463          	beq	a4,a5,80003ddc <_ZN20KObjectAllocatorTest5test1Em+0xcc>
    80003db8:	00800713          	li	a4,8
    80003dbc:	00e787b3          	add	a5,a5,a4
    80003dc0:	00f4b423          	sd	a5,8(s1)
    80003dc4:	00f4b023          	sd	a5,0(s1)
        memorySizeForBits = numberOfObjects / 8;
    80003dc8:	0037d793          	srli	a5,a5,0x3
    80003dcc:	00f4b823          	sd	a5,16(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80003dd0:	ffffe097          	auipc	ra,0xffffe
    80003dd4:	edc080e7          	jalr	-292(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003dd8:	00c0006f          	j	80003de4 <_ZN20KObjectAllocatorTest5test1Em+0xd4>
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80003ddc:	00000713          	li	a4,0
    80003de0:	fddff06f          	j	80003dbc <_ZN20KObjectAllocatorTest5test1Em+0xac>
                memorySizeForBits + initialNumberOfObjects * objectSize
    80003de4:	0104b583          	ld	a1,16(s1)
    80003de8:	0004b783          	ld	a5,0(s1)
    80003dec:	02f907b3          	mul	a5,s2,a5
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80003df0:	0284ba03          	ld	s4,40(s1)
    80003df4:	00f585b3          	add	a1,a1,a5
    80003df8:	ffffe097          	auipc	ra,0xffffe
    80003dfc:	f98080e7          	jalr	-104(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80003e00:	00aa3023          	sd	a0,0(s4)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    80003e04:	0284b783          	ld	a5,40(s1)
    80003e08:	0007b783          	ld	a5,0(a5)
    80003e0c:	0104b683          	ld	a3,16(s1)
    80003e10:	0204b703          	ld	a4,32(s1)
    80003e14:	00d787b3          	add	a5,a5,a3
    80003e18:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    80003e1c:	00000793          	li	a5,0
    80003e20:	0104b703          	ld	a4,16(s1)
    80003e24:	00e7fe63          	bgeu	a5,a4,80003e40 <_ZN20KObjectAllocatorTest5test1Em+0x130>
    80003e28:	0284b703          	ld	a4,40(s1)
    80003e2c:	00073703          	ld	a4,0(a4)
    80003e30:	00f70733          	add	a4,a4,a5
    80003e34:	00070023          	sb	zero,0(a4)
    80003e38:	00178793          	addi	a5,a5,1
    80003e3c:	fe5ff06f          	j	80003e20 <_ZN20KObjectAllocatorTest5test1Em+0x110>
    size_t getNumberOfObjects() { return numberOfObjects; }
    80003e40:	0084b703          	ld	a4,8(s1)
    KObjectAllocator* objAlloc = new KObjectAllocator(size);
    if (objAlloc->getNumberOfObjects() != 320) { delete objAlloc; return false; }
    80003e44:	14000793          	li	a5,320
    80003e48:	0af70263          	beq	a4,a5,80003eec <_ZN20KObjectAllocatorTest5test1Em+0x1dc>
    80003e4c:	06048a63          	beqz	s1,80003ec0 <_ZN20KObjectAllocatorTest5test1Em+0x1b0>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003e50:	00000913          	li	s2,0
    80003e54:	0304b783          	ld	a5,48(s1)
    80003e58:	02f97663          	bgeu	s2,a5,80003e84 <_ZN20KObjectAllocatorTest5test1Em+0x174>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003e5c:	ffffe097          	auipc	ra,0xffffe
    80003e60:	e50080e7          	jalr	-432(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003e64:	0284b783          	ld	a5,40(s1)
    80003e68:	00391713          	slli	a4,s2,0x3
    80003e6c:	00e787b3          	add	a5,a5,a4
    80003e70:	0007b583          	ld	a1,0(a5)
    80003e74:	ffffe097          	auipc	ra,0xffffe
    80003e78:	fc4080e7          	jalr	-60(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003e7c:	00190913          	addi	s2,s2,1
    80003e80:	fd5ff06f          	j	80003e54 <_ZN20KObjectAllocatorTest5test1Em+0x144>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003e84:	ffffe097          	auipc	ra,0xffffe
    80003e88:	e28080e7          	jalr	-472(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003e8c:	0284b583          	ld	a1,40(s1)
    80003e90:	ffffe097          	auipc	ra,0xffffe
    80003e94:	fa8080e7          	jalr	-88(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003e98:	ffffe097          	auipc	ra,0xffffe
    80003e9c:	e14080e7          	jalr	-492(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003ea0:	0204b583          	ld	a1,32(s1)
    80003ea4:	ffffe097          	auipc	ra,0xffffe
    80003ea8:	f94080e7          	jalr	-108(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003eac:	ffffe097          	auipc	ra,0xffffe
    80003eb0:	e00080e7          	jalr	-512(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003eb4:	00048593          	mv	a1,s1
    80003eb8:	ffffe097          	auipc	ra,0xffffe
    80003ebc:	f80080e7          	jalr	-128(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003ec0:	00000513          	li	a0,0
        { delete objAlloc; return false; }
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    }
    delete objAlloc;
    return true;
}
    80003ec4:	25010113          	addi	sp,sp,592
    80003ec8:	7e813083          	ld	ra,2024(sp)
    80003ecc:	7e013403          	ld	s0,2016(sp)
    80003ed0:	7d813483          	ld	s1,2008(sp)
    80003ed4:	7d013903          	ld	s2,2000(sp)
    80003ed8:	7c813983          	ld	s3,1992(sp)
    80003edc:	7c013a03          	ld	s4,1984(sp)
    80003ee0:	7b813a83          	ld	s5,1976(sp)
    80003ee4:	7f010113          	addi	sp,sp,2032
    80003ee8:	00008067          	ret
    size_t getMemorySizeForBits() { return memorySizeForBits; }
    80003eec:	0104b703          	ld	a4,16(s1)
    if (objAlloc->getMemorySizeForBits() != 40) { delete objAlloc; return false; }
    80003ef0:	02800793          	li	a5,40
    80003ef4:	08f70063          	beq	a4,a5,80003f74 <_ZN20KObjectAllocatorTest5test1Em+0x264>
    80003ef8:	06048a63          	beqz	s1,80003f6c <_ZN20KObjectAllocatorTest5test1Em+0x25c>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003efc:	00000913          	li	s2,0
    80003f00:	0304b783          	ld	a5,48(s1)
    80003f04:	02f97663          	bgeu	s2,a5,80003f30 <_ZN20KObjectAllocatorTest5test1Em+0x220>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003f08:	ffffe097          	auipc	ra,0xffffe
    80003f0c:	da4080e7          	jalr	-604(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003f10:	0284b783          	ld	a5,40(s1)
    80003f14:	00391713          	slli	a4,s2,0x3
    80003f18:	00e787b3          	add	a5,a5,a4
    80003f1c:	0007b583          	ld	a1,0(a5)
    80003f20:	ffffe097          	auipc	ra,0xffffe
    80003f24:	f18080e7          	jalr	-232(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003f28:	00190913          	addi	s2,s2,1
    80003f2c:	fd5ff06f          	j	80003f00 <_ZN20KObjectAllocatorTest5test1Em+0x1f0>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003f30:	ffffe097          	auipc	ra,0xffffe
    80003f34:	d7c080e7          	jalr	-644(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003f38:	0284b583          	ld	a1,40(s1)
    80003f3c:	ffffe097          	auipc	ra,0xffffe
    80003f40:	efc080e7          	jalr	-260(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003f44:	ffffe097          	auipc	ra,0xffffe
    80003f48:	d68080e7          	jalr	-664(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003f4c:	0204b583          	ld	a1,32(s1)
    80003f50:	ffffe097          	auipc	ra,0xffffe
    80003f54:	ee8080e7          	jalr	-280(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003f58:	ffffe097          	auipc	ra,0xffffe
    80003f5c:	d54080e7          	jalr	-684(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003f60:	00048593          	mv	a1,s1
    80003f64:	ffffe097          	auipc	ra,0xffffe
    80003f68:	ed4080e7          	jalr	-300(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003f6c:	00000513          	li	a0,0
    80003f70:	f55ff06f          	j	80003ec4 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    size_t getObjectSize() { return objectSize; }
    80003f74:	0184b783          	ld	a5,24(s1)
    if (objAlloc->getObjectSize() != size) { delete objAlloc; return false; }
    80003f78:	08f90063          	beq	s2,a5,80003ff8 <_ZN20KObjectAllocatorTest5test1Em+0x2e8>
    80003f7c:	06048a63          	beqz	s1,80003ff0 <_ZN20KObjectAllocatorTest5test1Em+0x2e0>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003f80:	00000913          	li	s2,0
    80003f84:	0304b783          	ld	a5,48(s1)
    80003f88:	02f97663          	bgeu	s2,a5,80003fb4 <_ZN20KObjectAllocatorTest5test1Em+0x2a4>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003f8c:	ffffe097          	auipc	ra,0xffffe
    80003f90:	d20080e7          	jalr	-736(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003f94:	0284b783          	ld	a5,40(s1)
    80003f98:	00391713          	slli	a4,s2,0x3
    80003f9c:	00e787b3          	add	a5,a5,a4
    80003fa0:	0007b583          	ld	a1,0(a5)
    80003fa4:	ffffe097          	auipc	ra,0xffffe
    80003fa8:	e94080e7          	jalr	-364(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003fac:	00190913          	addi	s2,s2,1
    80003fb0:	fd5ff06f          	j	80003f84 <_ZN20KObjectAllocatorTest5test1Em+0x274>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003fb4:	ffffe097          	auipc	ra,0xffffe
    80003fb8:	cf8080e7          	jalr	-776(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003fbc:	0284b583          	ld	a1,40(s1)
    80003fc0:	ffffe097          	auipc	ra,0xffffe
    80003fc4:	e78080e7          	jalr	-392(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003fc8:	ffffe097          	auipc	ra,0xffffe
    80003fcc:	ce4080e7          	jalr	-796(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003fd0:	0204b583          	ld	a1,32(s1)
    80003fd4:	ffffe097          	auipc	ra,0xffffe
    80003fd8:	e64080e7          	jalr	-412(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003fdc:	ffffe097          	auipc	ra,0xffffe
    80003fe0:	cd0080e7          	jalr	-816(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80003fe4:	00048593          	mv	a1,s1
    80003fe8:	ffffe097          	auipc	ra,0xffffe
    80003fec:	e50080e7          	jalr	-432(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003ff0:	00000513          	li	a0,0
    80003ff4:	ed1ff06f          	j	80003ec4 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    void* objArr[320]; for (size_t i = 0; i < 32; objArr[i++] = objAlloc->allocateNewObject());
    80003ff8:	00000913          	li	s2,0
    80003ffc:	01f00793          	li	a5,31
    80004000:	0327ea63          	bltu	a5,s2,80004034 <_ZN20KObjectAllocatorTest5test1Em+0x324>
    80004004:	00190a13          	addi	s4,s2,1
    80004008:	00048513          	mv	a0,s1
    8000400c:	00002097          	auipc	ra,0x2
    80004010:	134080e7          	jalr	308(ra) # 80006140 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004014:	fffff7b7          	lui	a5,0xfffff
    80004018:	00391913          	slli	s2,s2,0x3
    8000401c:	fc040713          	addi	a4,s0,-64
    80004020:	00f707b3          	add	a5,a4,a5
    80004024:	01278933          	add	s2,a5,s2
    80004028:	60a93023          	sd	a0,1536(s2)
    8000402c:	000a0913          	mv	s2,s4
    80004030:	fcdff06f          	j	80003ffc <_ZN20KObjectAllocatorTest5test1Em+0x2ec>
    if (getByteOfObject(objArr[31], objAlloc) != 3
    80004034:	fffff7b7          	lui	a5,0xfffff
    80004038:	fc040713          	addi	a4,s0,-64
    8000403c:	00f707b3          	add	a5,a4,a5
    80004040:	6f87b903          	ld	s2,1784(a5) # fffffffffffff6f8 <end+0xffffffff7fff3e28>
    80004044:	00048613          	mv	a2,s1
    80004048:	00090593          	mv	a1,s2
    8000404c:	00098513          	mv	a0,s3
    80004050:	fffff097          	auipc	ra,0xfffff
    80004054:	26c080e7          	jalr	620(ra) # 800032bc <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[31], objAlloc) != 0)
    80004058:	00300793          	li	a5,3
    8000405c:	02f50e63          	beq	a0,a5,80004098 <_ZN20KObjectAllocatorTest5test1Em+0x388>
        { delete objAlloc; return false; }
    80004060:	0c048c63          	beqz	s1,80004138 <_ZN20KObjectAllocatorTest5test1Em+0x428>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004064:	00000913          	li	s2,0
    80004068:	0304b783          	ld	a5,48(s1)
    8000406c:	08f97863          	bgeu	s2,a5,800040fc <_ZN20KObjectAllocatorTest5test1Em+0x3ec>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004070:	ffffe097          	auipc	ra,0xffffe
    80004074:	c3c080e7          	jalr	-964(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004078:	0284b783          	ld	a5,40(s1)
    8000407c:	00391713          	slli	a4,s2,0x3
    80004080:	00e787b3          	add	a5,a5,a4
    80004084:	0007b583          	ld	a1,0(a5)
    80004088:	ffffe097          	auipc	ra,0xffffe
    8000408c:	db0080e7          	jalr	-592(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004090:	00190913          	addi	s2,s2,1
    80004094:	fd5ff06f          	j	80004068 <_ZN20KObjectAllocatorTest5test1Em+0x358>
        || getBitOfObject(objArr[31], objAlloc) != 0)
    80004098:	00048613          	mv	a2,s1
    8000409c:	00090593          	mv	a1,s2
    800040a0:	00098513          	mv	a0,s3
    800040a4:	fffff097          	auipc	ra,0xfffff
    800040a8:	298080e7          	jalr	664(ra) # 8000333c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800040ac:	00050a93          	mv	s5,a0
    800040b0:	fa0518e3          	bnez	a0,80004060 <_ZN20KObjectAllocatorTest5test1Em+0x350>
    if (objAlloc->nextNonTakenByte != 4) { delete objAlloc; return false; }
    800040b4:	0384b703          	ld	a4,56(s1)
    800040b8:	00400793          	li	a5,4
    800040bc:	08f71263          	bne	a4,a5,80004140 <_ZN20KObjectAllocatorTest5test1Em+0x430>
    for (size_t i = 32; i < 320; objArr[i++] = objAlloc->allocateNewObject());
    800040c0:	02000913          	li	s2,32
    800040c4:	13f00793          	li	a5,319
    800040c8:	0f27e863          	bltu	a5,s2,800041b8 <_ZN20KObjectAllocatorTest5test1Em+0x4a8>
    800040cc:	00190a13          	addi	s4,s2,1
    800040d0:	00048513          	mv	a0,s1
    800040d4:	00002097          	auipc	ra,0x2
    800040d8:	06c080e7          	jalr	108(ra) # 80006140 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800040dc:	fffff7b7          	lui	a5,0xfffff
    800040e0:	00391913          	slli	s2,s2,0x3
    800040e4:	fc040713          	addi	a4,s0,-64
    800040e8:	00f707b3          	add	a5,a4,a5
    800040ec:	01278933          	add	s2,a5,s2
    800040f0:	60a93023          	sd	a0,1536(s2)
    800040f4:	000a0913          	mv	s2,s4
    800040f8:	fcdff06f          	j	800040c4 <_ZN20KObjectAllocatorTest5test1Em+0x3b4>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800040fc:	ffffe097          	auipc	ra,0xffffe
    80004100:	bb0080e7          	jalr	-1104(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004104:	0284b583          	ld	a1,40(s1)
    80004108:	ffffe097          	auipc	ra,0xffffe
    8000410c:	d30080e7          	jalr	-720(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004110:	ffffe097          	auipc	ra,0xffffe
    80004114:	b9c080e7          	jalr	-1124(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004118:	0204b583          	ld	a1,32(s1)
    8000411c:	ffffe097          	auipc	ra,0xffffe
    80004120:	d1c080e7          	jalr	-740(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004124:	ffffe097          	auipc	ra,0xffffe
    80004128:	b88080e7          	jalr	-1144(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    8000412c:	00048593          	mv	a1,s1
    80004130:	ffffe097          	auipc	ra,0xffffe
    80004134:	d08080e7          	jalr	-760(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        { delete objAlloc; return false; }
    80004138:	00000513          	li	a0,0
    8000413c:	d89ff06f          	j	80003ec4 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    if (objAlloc->nextNonTakenByte != 4) { delete objAlloc; return false; }
    80004140:	02049663          	bnez	s1,8000416c <_ZN20KObjectAllocatorTest5test1Em+0x45c>
    80004144:	06c0006f          	j	800041b0 <_ZN20KObjectAllocatorTest5test1Em+0x4a0>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004148:	ffffe097          	auipc	ra,0xffffe
    8000414c:	b64080e7          	jalr	-1180(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004150:	0284b783          	ld	a5,40(s1)
    80004154:	003a9713          	slli	a4,s5,0x3
    80004158:	00e787b3          	add	a5,a5,a4
    8000415c:	0007b583          	ld	a1,0(a5) # fffffffffffff000 <end+0xffffffff7fff3730>
    80004160:	ffffe097          	auipc	ra,0xffffe
    80004164:	cd8080e7          	jalr	-808(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004168:	001a8a93          	addi	s5,s5,1
    8000416c:	0304b783          	ld	a5,48(s1)
    80004170:	fcfaece3          	bltu	s5,a5,80004148 <_ZN20KObjectAllocatorTest5test1Em+0x438>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004174:	ffffe097          	auipc	ra,0xffffe
    80004178:	b38080e7          	jalr	-1224(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    8000417c:	0284b583          	ld	a1,40(s1)
    80004180:	ffffe097          	auipc	ra,0xffffe
    80004184:	cb8080e7          	jalr	-840(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004188:	ffffe097          	auipc	ra,0xffffe
    8000418c:	b24080e7          	jalr	-1244(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004190:	0204b583          	ld	a1,32(s1)
    80004194:	ffffe097          	auipc	ra,0xffffe
    80004198:	ca4080e7          	jalr	-860(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    8000419c:	ffffe097          	auipc	ra,0xffffe
    800041a0:	b10080e7          	jalr	-1264(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800041a4:	00048593          	mv	a1,s1
    800041a8:	ffffe097          	auipc	ra,0xffffe
    800041ac:	c90080e7          	jalr	-880(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    800041b0:	00000513          	li	a0,0
    800041b4:	d11ff06f          	j	80003ec4 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    if (objAlloc->nextNonTakenByte != 40) { delete objAlloc; return false; }
    800041b8:	0384b703          	ld	a4,56(s1)
    800041bc:	02800793          	li	a5,40
    800041c0:	06f70e63          	beq	a4,a5,8000423c <_ZN20KObjectAllocatorTest5test1Em+0x52c>
    800041c4:	06048863          	beqz	s1,80004234 <_ZN20KObjectAllocatorTest5test1Em+0x524>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800041c8:	0304b783          	ld	a5,48(s1)
    800041cc:	02faf663          	bgeu	s5,a5,800041f8 <_ZN20KObjectAllocatorTest5test1Em+0x4e8>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800041d0:	ffffe097          	auipc	ra,0xffffe
    800041d4:	adc080e7          	jalr	-1316(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800041d8:	0284b783          	ld	a5,40(s1)
    800041dc:	003a9713          	slli	a4,s5,0x3
    800041e0:	00e787b3          	add	a5,a5,a4
    800041e4:	0007b583          	ld	a1,0(a5)
    800041e8:	ffffe097          	auipc	ra,0xffffe
    800041ec:	c50080e7          	jalr	-944(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800041f0:	001a8a93          	addi	s5,s5,1
    800041f4:	fd5ff06f          	j	800041c8 <_ZN20KObjectAllocatorTest5test1Em+0x4b8>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800041f8:	ffffe097          	auipc	ra,0xffffe
    800041fc:	ab4080e7          	jalr	-1356(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004200:	0284b583          	ld	a1,40(s1)
    80004204:	ffffe097          	auipc	ra,0xffffe
    80004208:	c34080e7          	jalr	-972(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    8000420c:	ffffe097          	auipc	ra,0xffffe
    80004210:	aa0080e7          	jalr	-1376(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004214:	0204b583          	ld	a1,32(s1)
    80004218:	ffffe097          	auipc	ra,0xffffe
    8000421c:	c20080e7          	jalr	-992(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004220:	ffffe097          	auipc	ra,0xffffe
    80004224:	a8c080e7          	jalr	-1396(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004228:	00048593          	mv	a1,s1
    8000422c:	ffffe097          	auipc	ra,0xffffe
    80004230:	c0c080e7          	jalr	-1012(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004234:	00000513          	li	a0,0
    80004238:	c8dff06f          	j	80003ec4 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    objAlloc->freeObject(objArr[7 * 8]);
    8000423c:	fffff7b7          	lui	a5,0xfffff
    80004240:	fc040713          	addi	a4,s0,-64
    80004244:	00f707b3          	add	a5,a4,a5
    80004248:	7c07b583          	ld	a1,1984(a5) # fffffffffffff7c0 <end+0xffffffff7fff3ef0>
    8000424c:	00048513          	mv	a0,s1
    80004250:	00002097          	auipc	ra,0x2
    80004254:	c70080e7          	jalr	-912(ra) # 80005ec0 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[7 * 8] = objAlloc->allocateNewObject();
    80004258:	00048513          	mv	a0,s1
    8000425c:	00002097          	auipc	ra,0x2
    80004260:	ee4080e7          	jalr	-284(ra) # 80006140 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004264:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[7 * 8], objAlloc) != 7
    80004268:	00048613          	mv	a2,s1
    8000426c:	00050593          	mv	a1,a0
    80004270:	00098513          	mv	a0,s3
    80004274:	fffff097          	auipc	ra,0xfffff
    80004278:	048080e7          	jalr	72(ra) # 800032bc <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[7 * 8], objAlloc) != 7)
    8000427c:	00700793          	li	a5,7
    80004280:	02f50c63          	beq	a0,a5,800042b8 <_ZN20KObjectAllocatorTest5test1Em+0x5a8>
        { delete objAlloc; return false; }
    80004284:	0a048663          	beqz	s1,80004330 <_ZN20KObjectAllocatorTest5test1Em+0x620>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004288:	0304b783          	ld	a5,48(s1)
    8000428c:	06faf463          	bgeu	s5,a5,800042f4 <_ZN20KObjectAllocatorTest5test1Em+0x5e4>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004290:	ffffe097          	auipc	ra,0xffffe
    80004294:	a1c080e7          	jalr	-1508(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004298:	0284b783          	ld	a5,40(s1)
    8000429c:	003a9713          	slli	a4,s5,0x3
    800042a0:	00e787b3          	add	a5,a5,a4
    800042a4:	0007b583          	ld	a1,0(a5)
    800042a8:	ffffe097          	auipc	ra,0xffffe
    800042ac:	b90080e7          	jalr	-1136(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800042b0:	001a8a93          	addi	s5,s5,1
    800042b4:	fd5ff06f          	j	80004288 <_ZN20KObjectAllocatorTest5test1Em+0x578>
        || getBitOfObject(objArr[7 * 8], objAlloc) != 7)
    800042b8:	00048613          	mv	a2,s1
    800042bc:	00090593          	mv	a1,s2
    800042c0:	00098513          	mv	a0,s3
    800042c4:	fffff097          	auipc	ra,0xfffff
    800042c8:	078080e7          	jalr	120(ra) # 8000333c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800042cc:	00700793          	li	a5,7
    800042d0:	faf51ae3          	bne	a0,a5,80004284 <_ZN20KObjectAllocatorTest5test1Em+0x574>
    if (objAlloc->nextNonTakenByte != 7) { delete objAlloc; return false; }
    800042d4:	0384b703          	ld	a4,56(s1)
    800042d8:	06f70063          	beq	a4,a5,80004338 <_ZN20KObjectAllocatorTest5test1Em+0x628>
    800042dc:	00048863          	beqz	s1,800042ec <_ZN20KObjectAllocatorTest5test1Em+0x5dc>
    800042e0:	00048513          	mv	a0,s1
    800042e4:	ffffd097          	auipc	ra,0xffffd
    800042e8:	688080e7          	jalr	1672(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    800042ec:	00000513          	li	a0,0
    800042f0:	bd5ff06f          	j	80003ec4 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800042f4:	ffffe097          	auipc	ra,0xffffe
    800042f8:	9b8080e7          	jalr	-1608(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800042fc:	0284b583          	ld	a1,40(s1)
    80004300:	ffffe097          	auipc	ra,0xffffe
    80004304:	b38080e7          	jalr	-1224(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004308:	ffffe097          	auipc	ra,0xffffe
    8000430c:	9a4080e7          	jalr	-1628(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004310:	0204b583          	ld	a1,32(s1)
    80004314:	ffffe097          	auipc	ra,0xffffe
    80004318:	b24080e7          	jalr	-1244(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    8000431c:	ffffe097          	auipc	ra,0xffffe
    80004320:	990080e7          	jalr	-1648(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004324:	00048593          	mv	a1,s1
    80004328:	ffffe097          	auipc	ra,0xffffe
    8000432c:	b10080e7          	jalr	-1264(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        { delete objAlloc; return false; }
    80004330:	00000513          	li	a0,0
    80004334:	b91ff06f          	j	80003ec4 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    objAlloc->freeObject(objArr[6 * 8 + 3]);
    80004338:	fffff937          	lui	s2,0xfffff
    8000433c:	fc040793          	addi	a5,s0,-64
    80004340:	01278933          	add	s2,a5,s2
    80004344:	79893583          	ld	a1,1944(s2) # fffffffffffff798 <end+0xffffffff7fff3ec8>
    80004348:	00048513          	mv	a0,s1
    8000434c:	00002097          	auipc	ra,0x2
    80004350:	b74080e7          	jalr	-1164(ra) # 80005ec0 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[7 * 8 + 4]);
    80004354:	7e093583          	ld	a1,2016(s2)
    80004358:	00048513          	mv	a0,s1
    8000435c:	00002097          	auipc	ra,0x2
    80004360:	b64080e7          	jalr	-1180(ra) # 80005ec0 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[38 * 8 + 5]);
    80004364:	f6843583          	ld	a1,-152(s0)
    80004368:	00048513          	mv	a0,s1
    8000436c:	00002097          	auipc	ra,0x2
    80004370:	b54080e7          	jalr	-1196(ra) # 80005ec0 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[7 * 8 + 4] = objAlloc->allocateNewObject();
    80004374:	00048513          	mv	a0,s1
    80004378:	00002097          	auipc	ra,0x2
    8000437c:	dc8080e7          	jalr	-568(ra) # 80006140 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004380:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[7 * 8 + 4], objAlloc) != 7
    80004384:	00048613          	mv	a2,s1
    80004388:	00050593          	mv	a1,a0
    8000438c:	00098513          	mv	a0,s3
    80004390:	fffff097          	auipc	ra,0xfffff
    80004394:	f2c080e7          	jalr	-212(ra) # 800032bc <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[7 * 8 + 4], objAlloc) != 3)
    80004398:	00700793          	li	a5,7
    8000439c:	00f50e63          	beq	a0,a5,800043b8 <_ZN20KObjectAllocatorTest5test1Em+0x6a8>
        { delete objAlloc; return false; }
    800043a0:	00048863          	beqz	s1,800043b0 <_ZN20KObjectAllocatorTest5test1Em+0x6a0>
    800043a4:	00048513          	mv	a0,s1
    800043a8:	ffffd097          	auipc	ra,0xffffd
    800043ac:	5c4080e7          	jalr	1476(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    800043b0:	00000513          	li	a0,0
    800043b4:	b11ff06f          	j	80003ec4 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        || getBitOfObject(objArr[7 * 8 + 4], objAlloc) != 3)
    800043b8:	00048613          	mv	a2,s1
    800043bc:	00090593          	mv	a1,s2
    800043c0:	00098513          	mv	a0,s3
    800043c4:	fffff097          	auipc	ra,0xfffff
    800043c8:	f78080e7          	jalr	-136(ra) # 8000333c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800043cc:	00300793          	li	a5,3
    800043d0:	fcf518e3          	bne	a0,a5,800043a0 <_ZN20KObjectAllocatorTest5test1Em+0x690>
    if (objAlloc->nextNonTakenByte != 7) { delete objAlloc; return false; }
    800043d4:	0384b703          	ld	a4,56(s1)
    800043d8:	00700793          	li	a5,7
    800043dc:	00f70e63          	beq	a4,a5,800043f8 <_ZN20KObjectAllocatorTest5test1Em+0x6e8>
    800043e0:	00048863          	beqz	s1,800043f0 <_ZN20KObjectAllocatorTest5test1Em+0x6e0>
    800043e4:	00048513          	mv	a0,s1
    800043e8:	ffffd097          	auipc	ra,0xffffd
    800043ec:	584080e7          	jalr	1412(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    800043f0:	00000513          	li	a0,0
    800043f4:	ad1ff06f          	j	80003ec4 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    objAlloc->freeObject(objArr[3 * 8 + 5]);
    800043f8:	fffff7b7          	lui	a5,0xfffff
    800043fc:	fc040713          	addi	a4,s0,-64
    80004400:	00f707b3          	add	a5,a4,a5
    80004404:	6e87b583          	ld	a1,1768(a5) # fffffffffffff6e8 <end+0xffffffff7fff3e18>
    80004408:	00048513          	mv	a0,s1
    8000440c:	00002097          	auipc	ra,0x2
    80004410:	ab4080e7          	jalr	-1356(ra) # 80005ec0 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[38 * 8 + 5] = objAlloc->allocateNewObject();
    80004414:	00048513          	mv	a0,s1
    80004418:	00002097          	auipc	ra,0x2
    8000441c:	d28080e7          	jalr	-728(ra) # 80006140 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004420:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[38 * 8 + 5], objAlloc) != 38
    80004424:	00048613          	mv	a2,s1
    80004428:	00050593          	mv	a1,a0
    8000442c:	00098513          	mv	a0,s3
    80004430:	fffff097          	auipc	ra,0xfffff
    80004434:	e8c080e7          	jalr	-372(ra) # 800032bc <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[38 * 8 + 5], objAlloc) != 2)
    80004438:	02600793          	li	a5,38
    8000443c:	00f50e63          	beq	a0,a5,80004458 <_ZN20KObjectAllocatorTest5test1Em+0x748>
    { delete objAlloc; return false; }
    80004440:	00048863          	beqz	s1,80004450 <_ZN20KObjectAllocatorTest5test1Em+0x740>
    80004444:	00048513          	mv	a0,s1
    80004448:	ffffd097          	auipc	ra,0xffffd
    8000444c:	524080e7          	jalr	1316(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    80004450:	00000513          	li	a0,0
    80004454:	a71ff06f          	j	80003ec4 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        || getBitOfObject(objArr[38 * 8 + 5], objAlloc) != 2)
    80004458:	00048613          	mv	a2,s1
    8000445c:	00090593          	mv	a1,s2
    80004460:	00098513          	mv	a0,s3
    80004464:	fffff097          	auipc	ra,0xfffff
    80004468:	ed8080e7          	jalr	-296(ra) # 8000333c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    8000446c:	00200793          	li	a5,2
    80004470:	fcf518e3          	bne	a0,a5,80004440 <_ZN20KObjectAllocatorTest5test1Em+0x730>
    if (objAlloc->nextNonTakenByte != 38) { delete objAlloc; return false; }
    80004474:	0384b703          	ld	a4,56(s1)
    80004478:	02600793          	li	a5,38
    8000447c:	00f70e63          	beq	a4,a5,80004498 <_ZN20KObjectAllocatorTest5test1Em+0x788>
    80004480:	00048863          	beqz	s1,80004490 <_ZN20KObjectAllocatorTest5test1Em+0x780>
    80004484:	00048513          	mv	a0,s1
    80004488:	ffffd097          	auipc	ra,0xffffd
    8000448c:	4e4080e7          	jalr	1252(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    80004490:	00000513          	li	a0,0
    80004494:	a31ff06f          	j	80003ec4 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    objArr[3 * 8 + 5] = objAlloc->allocateNewObject();
    80004498:	00048513          	mv	a0,s1
    8000449c:	00002097          	auipc	ra,0x2
    800044a0:	ca4080e7          	jalr	-860(ra) # 80006140 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800044a4:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[3 * 8 + 5], objAlloc) != 3 || getBitOfObject(objArr[3 * 8 + 5], objAlloc) != 2)
    800044a8:	00048613          	mv	a2,s1
    800044ac:	00050593          	mv	a1,a0
    800044b0:	00098513          	mv	a0,s3
    800044b4:	fffff097          	auipc	ra,0xfffff
    800044b8:	e08080e7          	jalr	-504(ra) # 800032bc <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    800044bc:	00300793          	li	a5,3
    800044c0:	02f50463          	beq	a0,a5,800044e8 <_ZN20KObjectAllocatorTest5test1Em+0x7d8>
    if (objAlloc->nextNonTakenByte != 3) { delete objAlloc; return false; }
    800044c4:	0384b703          	ld	a4,56(s1)
    800044c8:	00300793          	li	a5,3
    800044cc:	02f70c63          	beq	a4,a5,80004504 <_ZN20KObjectAllocatorTest5test1Em+0x7f4>
    800044d0:	00048863          	beqz	s1,800044e0 <_ZN20KObjectAllocatorTest5test1Em+0x7d0>
    800044d4:	00048513          	mv	a0,s1
    800044d8:	ffffd097          	auipc	ra,0xffffd
    800044dc:	494080e7          	jalr	1172(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    800044e0:	00000513          	li	a0,0
    800044e4:	9e1ff06f          	j	80003ec4 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    if (getByteOfObject(objArr[3 * 8 + 5], objAlloc) != 3 || getBitOfObject(objArr[3 * 8 + 5], objAlloc) != 2)
    800044e8:	00048613          	mv	a2,s1
    800044ec:	00090593          	mv	a1,s2
    800044f0:	00098513          	mv	a0,s3
    800044f4:	fffff097          	auipc	ra,0xfffff
    800044f8:	e48080e7          	jalr	-440(ra) # 8000333c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800044fc:	00200793          	li	a5,2
    80004500:	fcf512e3          	bne	a0,a5,800044c4 <_ZN20KObjectAllocatorTest5test1Em+0x7b4>
    objArr[6 * 8 + 3] = objAlloc->allocateNewObject();
    80004504:	00048513          	mv	a0,s1
    80004508:	00002097          	auipc	ra,0x2
    8000450c:	c38080e7          	jalr	-968(ra) # 80006140 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004510:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[6 * 8 + 3], objAlloc) != 6
    80004514:	00048613          	mv	a2,s1
    80004518:	00050593          	mv	a1,a0
    8000451c:	00098513          	mv	a0,s3
    80004520:	fffff097          	auipc	ra,0xfffff
    80004524:	d9c080e7          	jalr	-612(ra) # 800032bc <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[6 * 8 + 3], objAlloc) != 4)
    80004528:	00600793          	li	a5,6
    8000452c:	00f50e63          	beq	a0,a5,80004548 <_ZN20KObjectAllocatorTest5test1Em+0x838>
    { delete objAlloc; return false; }
    80004530:	00048863          	beqz	s1,80004540 <_ZN20KObjectAllocatorTest5test1Em+0x830>
    80004534:	00048513          	mv	a0,s1
    80004538:	ffffd097          	auipc	ra,0xffffd
    8000453c:	434080e7          	jalr	1076(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    80004540:	00000513          	li	a0,0
    80004544:	981ff06f          	j	80003ec4 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        || getBitOfObject(objArr[6 * 8 + 3], objAlloc) != 4)
    80004548:	00048613          	mv	a2,s1
    8000454c:	00090593          	mv	a1,s2
    80004550:	00098513          	mv	a0,s3
    80004554:	fffff097          	auipc	ra,0xfffff
    80004558:	de8080e7          	jalr	-536(ra) # 8000333c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    8000455c:	00400793          	li	a5,4
    80004560:	fcf518e3          	bne	a0,a5,80004530 <_ZN20KObjectAllocatorTest5test1Em+0x820>
    if (objAlloc->nextNonTakenByte != 6) { delete objAlloc; return false; }
    80004564:	0384b703          	ld	a4,56(s1)
    80004568:	00600793          	li	a5,6
    8000456c:	0ef71463          	bne	a4,a5,80004654 <_ZN20KObjectAllocatorTest5test1Em+0x944>
    for (int i = 0; i < 3; ++i) {
    80004570:	00000a93          	li	s5,0
    80004574:	00200793          	li	a5,2
    80004578:	1557ca63          	blt	a5,s5,800046cc <_ZN20KObjectAllocatorTest5test1Em+0x9bc>
        objAlloc->freeObject(objArr[319]);
    8000457c:	fb843583          	ld	a1,-72(s0)
    80004580:	00048513          	mv	a0,s1
    80004584:	00002097          	auipc	ra,0x2
    80004588:	93c080e7          	jalr	-1732(ra) # 80005ec0 <_ZN16KObjectAllocator10freeObjectEPv>
        objArr[319] = objAlloc->allocateNewObject();
    8000458c:	00048513          	mv	a0,s1
    80004590:	00002097          	auipc	ra,0x2
    80004594:	bb0080e7          	jalr	-1104(ra) # 80006140 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004598:	00050913          	mv	s2,a0
    8000459c:	faa43c23          	sd	a0,-72(s0)
        if (getByteOfObject(objArr[319], objAlloc) != 39
    800045a0:	00048613          	mv	a2,s1
    800045a4:	00050593          	mv	a1,a0
    800045a8:	00098513          	mv	a0,s3
    800045ac:	fffff097          	auipc	ra,0xfffff
    800045b0:	d10080e7          	jalr	-752(ra) # 800032bc <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
            || getBitOfObject(objArr[319], objAlloc) != 0)
    800045b4:	02700793          	li	a5,39
    800045b8:	0af51a63          	bne	a0,a5,8000466c <_ZN20KObjectAllocatorTest5test1Em+0x95c>
    800045bc:	00048613          	mv	a2,s1
    800045c0:	00090593          	mv	a1,s2
    800045c4:	00098513          	mv	a0,s3
    800045c8:	fffff097          	auipc	ra,0xfffff
    800045cc:	d74080e7          	jalr	-652(ra) # 8000333c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800045d0:	08051e63          	bnez	a0,8000466c <_ZN20KObjectAllocatorTest5test1Em+0x95c>
        if (objAlloc->nextNonTakenByte != 40) { delete objAlloc; return false; }
    800045d4:	0384b703          	ld	a4,56(s1)
    800045d8:	02800793          	li	a5,40
    800045dc:	0af71463          	bne	a4,a5,80004684 <_ZN20KObjectAllocatorTest5test1Em+0x974>
        objAlloc->freeObject(objArr[1]);
    800045e0:	fffffa37          	lui	s4,0xfffff
    800045e4:	fc040793          	addi	a5,s0,-64
    800045e8:	01478a33          	add	s4,a5,s4
    800045ec:	608a3583          	ld	a1,1544(s4) # fffffffffffff608 <end+0xffffffff7fff3d38>
    800045f0:	00048513          	mv	a0,s1
    800045f4:	00002097          	auipc	ra,0x2
    800045f8:	8cc080e7          	jalr	-1844(ra) # 80005ec0 <_ZN16KObjectAllocator10freeObjectEPv>
        objArr[1] = objAlloc->allocateNewObject();
    800045fc:	00048513          	mv	a0,s1
    80004600:	00002097          	auipc	ra,0x2
    80004604:	b40080e7          	jalr	-1216(ra) # 80006140 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004608:	00050913          	mv	s2,a0
    8000460c:	60aa3423          	sd	a0,1544(s4)
        if (getByteOfObject(objArr[1], objAlloc) != 0
    80004610:	00048613          	mv	a2,s1
    80004614:	00050593          	mv	a1,a0
    80004618:	00098513          	mv	a0,s3
    8000461c:	fffff097          	auipc	ra,0xfffff
    80004620:	ca0080e7          	jalr	-864(ra) # 800032bc <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
            || getBitOfObject(objArr[1], objAlloc) != 6)
    80004624:	06051c63          	bnez	a0,8000469c <_ZN20KObjectAllocatorTest5test1Em+0x98c>
    80004628:	00048613          	mv	a2,s1
    8000462c:	00090593          	mv	a1,s2
    80004630:	00098513          	mv	a0,s3
    80004634:	fffff097          	auipc	ra,0xfffff
    80004638:	d08080e7          	jalr	-760(ra) # 8000333c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    8000463c:	00600793          	li	a5,6
    80004640:	04f51e63          	bne	a0,a5,8000469c <_ZN20KObjectAllocatorTest5test1Em+0x98c>
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    80004644:	0384b783          	ld	a5,56(s1)
    80004648:	06079663          	bnez	a5,800046b4 <_ZN20KObjectAllocatorTest5test1Em+0x9a4>
    for (int i = 0; i < 3; ++i) {
    8000464c:	001a8a9b          	addiw	s5,s5,1
    80004650:	f25ff06f          	j	80004574 <_ZN20KObjectAllocatorTest5test1Em+0x864>
    if (objAlloc->nextNonTakenByte != 6) { delete objAlloc; return false; }
    80004654:	00048863          	beqz	s1,80004664 <_ZN20KObjectAllocatorTest5test1Em+0x954>
    80004658:	00048513          	mv	a0,s1
    8000465c:	ffffd097          	auipc	ra,0xffffd
    80004660:	310080e7          	jalr	784(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    80004664:	00000513          	li	a0,0
    80004668:	85dff06f          	j	80003ec4 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        { delete objAlloc; return false; }
    8000466c:	00048863          	beqz	s1,8000467c <_ZN20KObjectAllocatorTest5test1Em+0x96c>
    80004670:	00048513          	mv	a0,s1
    80004674:	ffffd097          	auipc	ra,0xffffd
    80004678:	2f8080e7          	jalr	760(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    8000467c:	00000513          	li	a0,0
    80004680:	845ff06f          	j	80003ec4 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        if (objAlloc->nextNonTakenByte != 40) { delete objAlloc; return false; }
    80004684:	00048863          	beqz	s1,80004694 <_ZN20KObjectAllocatorTest5test1Em+0x984>
    80004688:	00048513          	mv	a0,s1
    8000468c:	ffffd097          	auipc	ra,0xffffd
    80004690:	2e0080e7          	jalr	736(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    80004694:	00000513          	li	a0,0
    80004698:	82dff06f          	j	80003ec4 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        { delete objAlloc; return false; }
    8000469c:	00048863          	beqz	s1,800046ac <_ZN20KObjectAllocatorTest5test1Em+0x99c>
    800046a0:	00048513          	mv	a0,s1
    800046a4:	ffffd097          	auipc	ra,0xffffd
    800046a8:	2c8080e7          	jalr	712(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    800046ac:	00000513          	li	a0,0
    800046b0:	815ff06f          	j	80003ec4 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    800046b4:	00048863          	beqz	s1,800046c4 <_ZN20KObjectAllocatorTest5test1Em+0x9b4>
    800046b8:	00048513          	mv	a0,s1
    800046bc:	ffffd097          	auipc	ra,0xffffd
    800046c0:	2b0080e7          	jalr	688(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    800046c4:	00000513          	li	a0,0
    800046c8:	ffcff06f          	j	80003ec4 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    delete objAlloc;
    800046cc:	00048c63          	beqz	s1,800046e4 <_ZN20KObjectAllocatorTest5test1Em+0x9d4>
    800046d0:	00048513          	mv	a0,s1
    800046d4:	ffffd097          	auipc	ra,0xffffd
    800046d8:	298080e7          	jalr	664(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    return true;
    800046dc:	00100513          	li	a0,1
    800046e0:	fe4ff06f          	j	80003ec4 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    800046e4:	00100513          	li	a0,1
    800046e8:	fdcff06f          	j	80003ec4 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    800046ec:	00050913          	mv	s2,a0
    KObjectAllocator* objAlloc = new KObjectAllocator(size);
    800046f0:	00048513          	mv	a0,s1
    800046f4:	ffffd097          	auipc	ra,0xffffd
    800046f8:	278080e7          	jalr	632(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    800046fc:	00090513          	mv	a0,s2
    80004700:	00007097          	auipc	ra,0x7
    80004704:	028080e7          	jalr	40(ra) # 8000b728 <_Unwind_Resume>

0000000080004708 <_ZN20KObjectAllocatorTest5test2Em>:

bool KObjectAllocatorTest::test2(size_t size) {
    80004708:	f5010113          	addi	sp,sp,-176
    8000470c:	0a113423          	sd	ra,168(sp)
    80004710:	0a813023          	sd	s0,160(sp)
    80004714:	08913c23          	sd	s1,152(sp)
    80004718:	09213823          	sd	s2,144(sp)
    8000471c:	09313423          	sd	s3,136(sp)
    80004720:	09413023          	sd	s4,128(sp)
    80004724:	07513c23          	sd	s5,120(sp)
    80004728:	07613823          	sd	s6,112(sp)
    8000472c:	07713423          	sd	s7,104(sp)
    80004730:	07813023          	sd	s8,96(sp)
    80004734:	0b010413          	addi	s0,sp,176
    80004738:	00050993          	mv	s3,a0
    8000473c:	00058913          	mv	s2,a1
        return MemoryAllocator::instance()->kmem_alloc(size);
    80004740:	ffffd097          	auipc	ra,0xffffd
    80004744:	56c080e7          	jalr	1388(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004748:	04000593          	li	a1,64
    8000474c:	ffffd097          	auipc	ra,0xffffd
    80004750:	644080e7          	jalr	1604(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80004754:	00050493          	mv	s1,a0
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    80004758:	00300793          	li	a5,3
    8000475c:	00f53023          	sd	a5,0(a0)
    80004760:	00f53423          	sd	a5,8(a0)
    80004764:	01253c23          	sd	s2,24(a0)
    80004768:	00100793          	li	a5,1
    8000476c:	02f53823          	sd	a5,48(a0)
    80004770:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80004774:	ffffd097          	auipc	ra,0xffffd
    80004778:	538080e7          	jalr	1336(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    8000477c:	0304b583          	ld	a1,48(s1)
    80004780:	00359593          	slli	a1,a1,0x3
    80004784:	ffffd097          	auipc	ra,0xffffd
    80004788:	60c080e7          	jalr	1548(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    8000478c:	02a4b423          	sd	a0,40(s1)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80004790:	ffffd097          	auipc	ra,0xffffd
    80004794:	51c080e7          	jalr	1308(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004798:	0304b583          	ld	a1,48(s1)
    8000479c:	00359593          	slli	a1,a1,0x3
    800047a0:	ffffd097          	auipc	ra,0xffffd
    800047a4:	5f0080e7          	jalr	1520(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    800047a8:	02a4b023          	sd	a0,32(s1)
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    800047ac:	0084b703          	ld	a4,8(s1)
    800047b0:	ff877793          	andi	a5,a4,-8
    800047b4:	02f70463          	beq	a4,a5,800047dc <_ZN20KObjectAllocatorTest5test2Em+0xd4>
    800047b8:	00800713          	li	a4,8
    800047bc:	00e787b3          	add	a5,a5,a4
    800047c0:	00f4b423          	sd	a5,8(s1)
    800047c4:	00f4b023          	sd	a5,0(s1)
        memorySizeForBits = numberOfObjects / 8;
    800047c8:	0037d793          	srli	a5,a5,0x3
    800047cc:	00f4b823          	sd	a5,16(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    800047d0:	ffffd097          	auipc	ra,0xffffd
    800047d4:	4dc080e7          	jalr	1244(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800047d8:	00c0006f          	j	800047e4 <_ZN20KObjectAllocatorTest5test2Em+0xdc>
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    800047dc:	00000713          	li	a4,0
    800047e0:	fddff06f          	j	800047bc <_ZN20KObjectAllocatorTest5test2Em+0xb4>
                memorySizeForBits + initialNumberOfObjects * objectSize
    800047e4:	0104b583          	ld	a1,16(s1)
    800047e8:	0004b783          	ld	a5,0(s1)
    800047ec:	02f907b3          	mul	a5,s2,a5
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    800047f0:	0284ba03          	ld	s4,40(s1)
    800047f4:	00f585b3          	add	a1,a1,a5
    800047f8:	ffffd097          	auipc	ra,0xffffd
    800047fc:	598080e7          	jalr	1432(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80004800:	00aa3023          	sd	a0,0(s4)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    80004804:	0284b783          	ld	a5,40(s1)
    80004808:	0007b783          	ld	a5,0(a5)
    8000480c:	0104b683          	ld	a3,16(s1)
    80004810:	0204b703          	ld	a4,32(s1)
    80004814:	00d787b3          	add	a5,a5,a3
    80004818:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    8000481c:	00000793          	li	a5,0
    80004820:	0104b703          	ld	a4,16(s1)
    80004824:	00e7fe63          	bgeu	a5,a4,80004840 <_ZN20KObjectAllocatorTest5test2Em+0x138>
    80004828:	0284b703          	ld	a4,40(s1)
    8000482c:	00073703          	ld	a4,0(a4)
    80004830:	00f70733          	add	a4,a4,a5
    80004834:	00070023          	sb	zero,0(a4)
    80004838:	00178793          	addi	a5,a5,1
    8000483c:	fe5ff06f          	j	80004820 <_ZN20KObjectAllocatorTest5test2Em+0x118>
    size_t getNumberOfObjects() { return numberOfObjects; }
    80004840:	0084bb83          	ld	s7,8(s1)
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 3);
    if (objAlloc->getNumberOfObjects() != 8) { delete objAlloc; return false; }
    80004844:	00800793          	li	a5,8
    80004848:	0afb8863          	beq	s7,a5,800048f8 <_ZN20KObjectAllocatorTest5test2Em+0x1f0>
    8000484c:	06048a63          	beqz	s1,800048c0 <_ZN20KObjectAllocatorTest5test2Em+0x1b8>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004850:	00000913          	li	s2,0
    80004854:	0280006f          	j	8000487c <_ZN20KObjectAllocatorTest5test2Em+0x174>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004858:	ffffd097          	auipc	ra,0xffffd
    8000485c:	454080e7          	jalr	1108(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004860:	0284b783          	ld	a5,40(s1)
    80004864:	00391713          	slli	a4,s2,0x3
    80004868:	00e787b3          	add	a5,a5,a4
    8000486c:	0007b583          	ld	a1,0(a5)
    80004870:	ffffd097          	auipc	ra,0xffffd
    80004874:	5c8080e7          	jalr	1480(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004878:	00190913          	addi	s2,s2,1
    8000487c:	0304b783          	ld	a5,48(s1)
    80004880:	fcf96ce3          	bltu	s2,a5,80004858 <_ZN20KObjectAllocatorTest5test2Em+0x150>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004884:	ffffd097          	auipc	ra,0xffffd
    80004888:	428080e7          	jalr	1064(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    8000488c:	0284b583          	ld	a1,40(s1)
    80004890:	ffffd097          	auipc	ra,0xffffd
    80004894:	5a8080e7          	jalr	1448(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004898:	ffffd097          	auipc	ra,0xffffd
    8000489c:	414080e7          	jalr	1044(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800048a0:	0204b583          	ld	a1,32(s1)
    800048a4:	ffffd097          	auipc	ra,0xffffd
    800048a8:	594080e7          	jalr	1428(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800048ac:	ffffd097          	auipc	ra,0xffffd
    800048b0:	400080e7          	jalr	1024(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800048b4:	00048593          	mv	a1,s1
    800048b8:	ffffd097          	auipc	ra,0xffffd
    800048bc:	580080e7          	jalr	1408(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    800048c0:	00000a13          	li	s4,0
        if (expectedBitValues[i] != getValueOfBitAt(byte, bit, objAlloc))
        { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    }
    delete objAlloc;
    return true;
}
    800048c4:	000a0513          	mv	a0,s4
    800048c8:	0a813083          	ld	ra,168(sp)
    800048cc:	0a013403          	ld	s0,160(sp)
    800048d0:	09813483          	ld	s1,152(sp)
    800048d4:	09013903          	ld	s2,144(sp)
    800048d8:	08813983          	ld	s3,136(sp)
    800048dc:	08013a03          	ld	s4,128(sp)
    800048e0:	07813a83          	ld	s5,120(sp)
    800048e4:	07013b03          	ld	s6,112(sp)
    800048e8:	06813b83          	ld	s7,104(sp)
    800048ec:	06013c03          	ld	s8,96(sp)
    800048f0:	0b010113          	addi	sp,sp,176
    800048f4:	00008067          	ret
    size_t getMemorySizeForBits() { return memorySizeForBits; }
    800048f8:	0104b703          	ld	a4,16(s1)
    if (objAlloc->getMemorySizeForBits() != 1) { delete objAlloc; return false; }
    800048fc:	00100793          	li	a5,1
    80004900:	08f70063          	beq	a4,a5,80004980 <_ZN20KObjectAllocatorTest5test2Em+0x278>
    80004904:	06048a63          	beqz	s1,80004978 <_ZN20KObjectAllocatorTest5test2Em+0x270>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004908:	00000913          	li	s2,0
    8000490c:	0280006f          	j	80004934 <_ZN20KObjectAllocatorTest5test2Em+0x22c>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004910:	ffffd097          	auipc	ra,0xffffd
    80004914:	39c080e7          	jalr	924(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004918:	0284b783          	ld	a5,40(s1)
    8000491c:	00391713          	slli	a4,s2,0x3
    80004920:	00e787b3          	add	a5,a5,a4
    80004924:	0007b583          	ld	a1,0(a5)
    80004928:	ffffd097          	auipc	ra,0xffffd
    8000492c:	510080e7          	jalr	1296(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004930:	00190913          	addi	s2,s2,1
    80004934:	0304b783          	ld	a5,48(s1)
    80004938:	fcf96ce3          	bltu	s2,a5,80004910 <_ZN20KObjectAllocatorTest5test2Em+0x208>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    8000493c:	ffffd097          	auipc	ra,0xffffd
    80004940:	370080e7          	jalr	880(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004944:	0284b583          	ld	a1,40(s1)
    80004948:	ffffd097          	auipc	ra,0xffffd
    8000494c:	4f0080e7          	jalr	1264(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004950:	ffffd097          	auipc	ra,0xffffd
    80004954:	35c080e7          	jalr	860(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004958:	0204b583          	ld	a1,32(s1)
    8000495c:	ffffd097          	auipc	ra,0xffffd
    80004960:	4dc080e7          	jalr	1244(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004964:	ffffd097          	auipc	ra,0xffffd
    80004968:	348080e7          	jalr	840(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    8000496c:	00048593          	mv	a1,s1
    80004970:	ffffd097          	auipc	ra,0xffffd
    80004974:	4c8080e7          	jalr	1224(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004978:	00000a13          	li	s4,0
    8000497c:	f49ff06f          	j	800048c4 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    size_t getObjectSize() { return objectSize; }
    80004980:	0184b783          	ld	a5,24(s1)
    if (objAlloc->getObjectSize() != size) { delete objAlloc; return false; }
    80004984:	08f90063          	beq	s2,a5,80004a04 <_ZN20KObjectAllocatorTest5test2Em+0x2fc>
    80004988:	06048a63          	beqz	s1,800049fc <_ZN20KObjectAllocatorTest5test2Em+0x2f4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000498c:	00000913          	li	s2,0
    80004990:	0304b783          	ld	a5,48(s1)
    80004994:	02f97663          	bgeu	s2,a5,800049c0 <_ZN20KObjectAllocatorTest5test2Em+0x2b8>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004998:	ffffd097          	auipc	ra,0xffffd
    8000499c:	314080e7          	jalr	788(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800049a0:	0284b783          	ld	a5,40(s1)
    800049a4:	00391713          	slli	a4,s2,0x3
    800049a8:	00e787b3          	add	a5,a5,a4
    800049ac:	0007b583          	ld	a1,0(a5)
    800049b0:	ffffd097          	auipc	ra,0xffffd
    800049b4:	488080e7          	jalr	1160(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800049b8:	00190913          	addi	s2,s2,1
    800049bc:	fd5ff06f          	j	80004990 <_ZN20KObjectAllocatorTest5test2Em+0x288>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800049c0:	ffffd097          	auipc	ra,0xffffd
    800049c4:	2ec080e7          	jalr	748(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800049c8:	0284b583          	ld	a1,40(s1)
    800049cc:	ffffd097          	auipc	ra,0xffffd
    800049d0:	46c080e7          	jalr	1132(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800049d4:	ffffd097          	auipc	ra,0xffffd
    800049d8:	2d8080e7          	jalr	728(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800049dc:	0204b583          	ld	a1,32(s1)
    800049e0:	ffffd097          	auipc	ra,0xffffd
    800049e4:	458080e7          	jalr	1112(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800049e8:	ffffd097          	auipc	ra,0xffffd
    800049ec:	2c4080e7          	jalr	708(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800049f0:	00048593          	mv	a1,s1
    800049f4:	ffffd097          	auipc	ra,0xffffd
    800049f8:	444080e7          	jalr	1092(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    800049fc:	00000a13          	li	s4,0
    80004a00:	ec5ff06f          	j	800048c4 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    void* objArr[10]; for (size_t i = 0; i < 10; objArr[i++] = objAlloc->allocateNewObject());
    80004a04:	00000913          	li	s2,0
    80004a08:	00900793          	li	a5,9
    80004a0c:	0327e663          	bltu	a5,s2,80004a38 <_ZN20KObjectAllocatorTest5test2Em+0x330>
    80004a10:	00190a13          	addi	s4,s2,1
    80004a14:	00048513          	mv	a0,s1
    80004a18:	00001097          	auipc	ra,0x1
    80004a1c:	728080e7          	jalr	1832(ra) # 80006140 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004a20:	00391913          	slli	s2,s2,0x3
    80004a24:	fb040793          	addi	a5,s0,-80
    80004a28:	01278933          	add	s2,a5,s2
    80004a2c:	faa93823          	sd	a0,-80(s2)
    80004a30:	000a0913          	mv	s2,s4
    80004a34:	fd5ff06f          	j	80004a08 <_ZN20KObjectAllocatorTest5test2Em+0x300>
    for (size_t i = 0; i < 10; ++i) {
    80004a38:	00000b13          	li	s6,0
    size_t byte = 0; size_t bit = 7;
    80004a3c:	00700913          	li	s2,7
    80004a40:	00000a93          	li	s5,0
    80004a44:	1840006f          	j	80004bc8 <_ZN20KObjectAllocatorTest5test2Em+0x4c0>
        if (objArr[i] != getObjectAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004a48:	06048a63          	beqz	s1,80004abc <_ZN20KObjectAllocatorTest5test2Em+0x3b4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004a4c:	00000913          	li	s2,0
    80004a50:	0304b783          	ld	a5,48(s1)
    80004a54:	02f97663          	bgeu	s2,a5,80004a80 <_ZN20KObjectAllocatorTest5test2Em+0x378>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004a58:	ffffd097          	auipc	ra,0xffffd
    80004a5c:	254080e7          	jalr	596(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004a60:	0284b783          	ld	a5,40(s1)
    80004a64:	00391713          	slli	a4,s2,0x3
    80004a68:	00e787b3          	add	a5,a5,a4
    80004a6c:	0007b583          	ld	a1,0(a5)
    80004a70:	ffffd097          	auipc	ra,0xffffd
    80004a74:	3c8080e7          	jalr	968(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004a78:	00190913          	addi	s2,s2,1
    80004a7c:	fd5ff06f          	j	80004a50 <_ZN20KObjectAllocatorTest5test2Em+0x348>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004a80:	ffffd097          	auipc	ra,0xffffd
    80004a84:	22c080e7          	jalr	556(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004a88:	0284b583          	ld	a1,40(s1)
    80004a8c:	ffffd097          	auipc	ra,0xffffd
    80004a90:	3ac080e7          	jalr	940(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004a94:	ffffd097          	auipc	ra,0xffffd
    80004a98:	218080e7          	jalr	536(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004a9c:	0204b583          	ld	a1,32(s1)
    80004aa0:	ffffd097          	auipc	ra,0xffffd
    80004aa4:	398080e7          	jalr	920(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004aa8:	ffffd097          	auipc	ra,0xffffd
    80004aac:	204080e7          	jalr	516(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004ab0:	00048593          	mv	a1,s1
    80004ab4:	ffffd097          	auipc	ra,0xffffd
    80004ab8:	384080e7          	jalr	900(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004abc:	00000a13          	li	s4,0
    80004ac0:	e05ff06f          	j	800048c4 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
        if (objByte != byte || objBit != bit) { delete objAlloc; return false; }
    80004ac4:	06048a63          	beqz	s1,80004b38 <_ZN20KObjectAllocatorTest5test2Em+0x430>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004ac8:	00000913          	li	s2,0
    80004acc:	0304b783          	ld	a5,48(s1)
    80004ad0:	02f97663          	bgeu	s2,a5,80004afc <_ZN20KObjectAllocatorTest5test2Em+0x3f4>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004ad4:	ffffd097          	auipc	ra,0xffffd
    80004ad8:	1d8080e7          	jalr	472(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004adc:	0284b783          	ld	a5,40(s1)
    80004ae0:	00391713          	slli	a4,s2,0x3
    80004ae4:	00e787b3          	add	a5,a5,a4
    80004ae8:	0007b583          	ld	a1,0(a5)
    80004aec:	ffffd097          	auipc	ra,0xffffd
    80004af0:	34c080e7          	jalr	844(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004af4:	00190913          	addi	s2,s2,1
    80004af8:	fd5ff06f          	j	80004acc <_ZN20KObjectAllocatorTest5test2Em+0x3c4>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004afc:	ffffd097          	auipc	ra,0xffffd
    80004b00:	1b0080e7          	jalr	432(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004b04:	0284b583          	ld	a1,40(s1)
    80004b08:	ffffd097          	auipc	ra,0xffffd
    80004b0c:	330080e7          	jalr	816(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004b10:	ffffd097          	auipc	ra,0xffffd
    80004b14:	19c080e7          	jalr	412(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004b18:	0204b583          	ld	a1,32(s1)
    80004b1c:	ffffd097          	auipc	ra,0xffffd
    80004b20:	31c080e7          	jalr	796(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004b24:	ffffd097          	auipc	ra,0xffffd
    80004b28:	188080e7          	jalr	392(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004b2c:	00048593          	mv	a1,s1
    80004b30:	ffffd097          	auipc	ra,0xffffd
    80004b34:	308080e7          	jalr	776(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004b38:	00000a13          	li	s4,0
    80004b3c:	d89ff06f          	j	800048c4 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
        if (!getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004b40:	d80482e3          	beqz	s1,800048c4 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004b44:	00000913          	li	s2,0
    80004b48:	0280006f          	j	80004b70 <_ZN20KObjectAllocatorTest5test2Em+0x468>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004b4c:	ffffd097          	auipc	ra,0xffffd
    80004b50:	160080e7          	jalr	352(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004b54:	0284b783          	ld	a5,40(s1)
    80004b58:	00391713          	slli	a4,s2,0x3
    80004b5c:	00e787b3          	add	a5,a5,a4
    80004b60:	0007b583          	ld	a1,0(a5)
    80004b64:	ffffd097          	auipc	ra,0xffffd
    80004b68:	2d4080e7          	jalr	724(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004b6c:	00190913          	addi	s2,s2,1
    80004b70:	0304b783          	ld	a5,48(s1)
    80004b74:	fcf96ce3          	bltu	s2,a5,80004b4c <_ZN20KObjectAllocatorTest5test2Em+0x444>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004b78:	ffffd097          	auipc	ra,0xffffd
    80004b7c:	134080e7          	jalr	308(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004b80:	0284b583          	ld	a1,40(s1)
    80004b84:	ffffd097          	auipc	ra,0xffffd
    80004b88:	2b4080e7          	jalr	692(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004b8c:	ffffd097          	auipc	ra,0xffffd
    80004b90:	120080e7          	jalr	288(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004b94:	0204b583          	ld	a1,32(s1)
    80004b98:	ffffd097          	auipc	ra,0xffffd
    80004b9c:	2a0080e7          	jalr	672(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004ba0:	ffffd097          	auipc	ra,0xffffd
    80004ba4:	10c080e7          	jalr	268(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004ba8:	00048593          	mv	a1,s1
    80004bac:	ffffd097          	auipc	ra,0xffffd
    80004bb0:	28c080e7          	jalr	652(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004bb4:	d11ff06f          	j	800048c4 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80004bb8:	001a8a93          	addi	s5,s5,1
    80004bbc:	000b8913          	mv	s2,s7
    80004bc0:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 10; ++i) {
    80004bc4:	001b0b13          	addi	s6,s6,1
    80004bc8:	00900793          	li	a5,9
    80004bcc:	0967e663          	bltu	a5,s6,80004c58 <_ZN20KObjectAllocatorTest5test2Em+0x550>
        if (objArr[i] != getObjectAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004bd0:	003b1793          	slli	a5,s6,0x3
    80004bd4:	fb040713          	addi	a4,s0,-80
    80004bd8:	00f707b3          	add	a5,a4,a5
    80004bdc:	fb07ba03          	ld	s4,-80(a5)
    80004be0:	00048693          	mv	a3,s1
    80004be4:	00090613          	mv	a2,s2
    80004be8:	000a8593          	mv	a1,s5
    80004bec:	00098513          	mv	a0,s3
    80004bf0:	ffffe097          	auipc	ra,0xffffe
    80004bf4:	7d0080e7          	jalr	2000(ra) # 800033c0 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>
    80004bf8:	e4aa18e3          	bne	s4,a0,80004a48 <_ZN20KObjectAllocatorTest5test2Em+0x340>
        size_t objByte = getByteOfObject(objArr[i], objAlloc);
    80004bfc:	00048613          	mv	a2,s1
    80004c00:	000a0593          	mv	a1,s4
    80004c04:	00098513          	mv	a0,s3
    80004c08:	ffffe097          	auipc	ra,0xffffe
    80004c0c:	6b4080e7          	jalr	1716(ra) # 800032bc <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    80004c10:	00050c13          	mv	s8,a0
        size_t objBit = getBitOfObject(objArr[i], objAlloc);
    80004c14:	00048613          	mv	a2,s1
    80004c18:	000a0593          	mv	a1,s4
    80004c1c:	00098513          	mv	a0,s3
    80004c20:	ffffe097          	auipc	ra,0xffffe
    80004c24:	71c080e7          	jalr	1820(ra) # 8000333c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
        if (objByte != byte || objBit != bit) { delete objAlloc; return false; }
    80004c28:	e98a9ee3          	bne	s5,s8,80004ac4 <_ZN20KObjectAllocatorTest5test2Em+0x3bc>
    80004c2c:	e8a91ce3          	bne	s2,a0,80004ac4 <_ZN20KObjectAllocatorTest5test2Em+0x3bc>
        if (!getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004c30:	00048693          	mv	a3,s1
    80004c34:	00090613          	mv	a2,s2
    80004c38:	000a8593          	mv	a1,s5
    80004c3c:	00098513          	mv	a0,s3
    80004c40:	ffffe097          	auipc	ra,0xffffe
    80004c44:	5f4080e7          	jalr	1524(ra) # 80003234 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80004c48:	00050a13          	mv	s4,a0
    80004c4c:	ee050ae3          	beqz	a0,80004b40 <_ZN20KObjectAllocatorTest5test2Em+0x438>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80004c50:	f60918e3          	bnez	s2,80004bc0 <_ZN20KObjectAllocatorTest5test2Em+0x4b8>
    80004c54:	f65ff06f          	j	80004bb8 <_ZN20KObjectAllocatorTest5test2Em+0x4b0>
    for (size_t i = 0; i < 6; ++i) {
    80004c58:	00000a13          	li	s4,0
    80004c5c:	0900006f          	j	80004cec <_ZN20KObjectAllocatorTest5test2Em+0x5e4>
        if (getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004c60:	06048a63          	beqz	s1,80004cd4 <_ZN20KObjectAllocatorTest5test2Em+0x5cc>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004c64:	00000913          	li	s2,0
    80004c68:	0304b783          	ld	a5,48(s1)
    80004c6c:	02f97663          	bgeu	s2,a5,80004c98 <_ZN20KObjectAllocatorTest5test2Em+0x590>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004c70:	ffffd097          	auipc	ra,0xffffd
    80004c74:	03c080e7          	jalr	60(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004c78:	0284b783          	ld	a5,40(s1)
    80004c7c:	00391713          	slli	a4,s2,0x3
    80004c80:	00e787b3          	add	a5,a5,a4
    80004c84:	0007b583          	ld	a1,0(a5)
    80004c88:	ffffd097          	auipc	ra,0xffffd
    80004c8c:	1b0080e7          	jalr	432(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004c90:	00190913          	addi	s2,s2,1
    80004c94:	fd5ff06f          	j	80004c68 <_ZN20KObjectAllocatorTest5test2Em+0x560>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004c98:	ffffd097          	auipc	ra,0xffffd
    80004c9c:	014080e7          	jalr	20(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004ca0:	0284b583          	ld	a1,40(s1)
    80004ca4:	ffffd097          	auipc	ra,0xffffd
    80004ca8:	194080e7          	jalr	404(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004cac:	ffffd097          	auipc	ra,0xffffd
    80004cb0:	000080e7          	jalr	ra # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004cb4:	0204b583          	ld	a1,32(s1)
    80004cb8:	ffffd097          	auipc	ra,0xffffd
    80004cbc:	180080e7          	jalr	384(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004cc0:	ffffd097          	auipc	ra,0xffffd
    80004cc4:	fec080e7          	jalr	-20(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004cc8:	00048593          	mv	a1,s1
    80004ccc:	ffffd097          	auipc	ra,0xffffd
    80004cd0:	16c080e7          	jalr	364(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004cd4:	00000a13          	li	s4,0
    80004cd8:	bedff06f          	j	800048c4 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80004cdc:	001a8a93          	addi	s5,s5,1
    80004ce0:	000b8913          	mv	s2,s7
    80004ce4:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 6; ++i) {
    80004ce8:	001a0a13          	addi	s4,s4,1
    80004cec:	00500793          	li	a5,5
    80004cf0:	0347e463          	bltu	a5,s4,80004d18 <_ZN20KObjectAllocatorTest5test2Em+0x610>
        if (getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004cf4:	00048693          	mv	a3,s1
    80004cf8:	00090613          	mv	a2,s2
    80004cfc:	000a8593          	mv	a1,s5
    80004d00:	00098513          	mv	a0,s3
    80004d04:	ffffe097          	auipc	ra,0xffffe
    80004d08:	530080e7          	jalr	1328(ra) # 80003234 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80004d0c:	f4051ae3          	bnez	a0,80004c60 <_ZN20KObjectAllocatorTest5test2Em+0x558>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80004d10:	fc091ae3          	bnez	s2,80004ce4 <_ZN20KObjectAllocatorTest5test2Em+0x5dc>
    80004d14:	fc9ff06f          	j	80004cdc <_ZN20KObjectAllocatorTest5test2Em+0x5d4>
    objAlloc->freeObject(objArr[4]);
    80004d18:	f8043583          	ld	a1,-128(s0)
    80004d1c:	00048513          	mv	a0,s1
    80004d20:	00001097          	auipc	ra,0x1
    80004d24:	1a0080e7          	jalr	416(ra) # 80005ec0 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[7]);
    80004d28:	f9843583          	ld	a1,-104(s0)
    80004d2c:	00048513          	mv	a0,s1
    80004d30:	00001097          	auipc	ra,0x1
    80004d34:	190080e7          	jalr	400(ra) # 80005ec0 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[8]);
    80004d38:	fa043583          	ld	a1,-96(s0)
    80004d3c:	00048513          	mv	a0,s1
    80004d40:	00001097          	auipc	ra,0x1
    80004d44:	180080e7          	jalr	384(ra) # 80005ec0 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[4] = objAlloc->allocateNewObject();
    80004d48:	00048513          	mv	a0,s1
    80004d4c:	00001097          	auipc	ra,0x1
    80004d50:	3f4080e7          	jalr	1012(ra) # 80006140 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004d54:	00050913          	mv	s2,a0
    if (objArr[4] != getObjectAt(1, 7, objAlloc)) { delete objAlloc; return false; }
    80004d58:	00048693          	mv	a3,s1
    80004d5c:	00700613          	li	a2,7
    80004d60:	00100593          	li	a1,1
    80004d64:	00098513          	mv	a0,s3
    80004d68:	ffffe097          	auipc	ra,0xffffe
    80004d6c:	658080e7          	jalr	1624(ra) # 800033c0 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>
    80004d70:	08a90063          	beq	s2,a0,80004df0 <_ZN20KObjectAllocatorTest5test2Em+0x6e8>
    80004d74:	06048a63          	beqz	s1,80004de8 <_ZN20KObjectAllocatorTest5test2Em+0x6e0>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004d78:	00000913          	li	s2,0
    80004d7c:	0280006f          	j	80004da4 <_ZN20KObjectAllocatorTest5test2Em+0x69c>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004d80:	ffffd097          	auipc	ra,0xffffd
    80004d84:	f2c080e7          	jalr	-212(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004d88:	0284b783          	ld	a5,40(s1)
    80004d8c:	00391713          	slli	a4,s2,0x3
    80004d90:	00e787b3          	add	a5,a5,a4
    80004d94:	0007b583          	ld	a1,0(a5)
    80004d98:	ffffd097          	auipc	ra,0xffffd
    80004d9c:	0a0080e7          	jalr	160(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004da0:	00190913          	addi	s2,s2,1
    80004da4:	0304b783          	ld	a5,48(s1)
    80004da8:	fcf96ce3          	bltu	s2,a5,80004d80 <_ZN20KObjectAllocatorTest5test2Em+0x678>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004dac:	ffffd097          	auipc	ra,0xffffd
    80004db0:	f00080e7          	jalr	-256(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004db4:	0284b583          	ld	a1,40(s1)
    80004db8:	ffffd097          	auipc	ra,0xffffd
    80004dbc:	080080e7          	jalr	128(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004dc0:	ffffd097          	auipc	ra,0xffffd
    80004dc4:	eec080e7          	jalr	-276(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004dc8:	0204b583          	ld	a1,32(s1)
    80004dcc:	ffffd097          	auipc	ra,0xffffd
    80004dd0:	06c080e7          	jalr	108(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004dd4:	ffffd097          	auipc	ra,0xffffd
    80004dd8:	ed8080e7          	jalr	-296(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004ddc:	00048593          	mv	a1,s1
    80004de0:	ffffd097          	auipc	ra,0xffffd
    80004de4:	058080e7          	jalr	88(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004de8:	00000a13          	li	s4,0
    80004dec:	ad9ff06f          	j	800048c4 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    byte = getByteOfObject(objArr[4], objAlloc);
    80004df0:	00048613          	mv	a2,s1
    80004df4:	00090593          	mv	a1,s2
    80004df8:	00098513          	mv	a0,s3
    80004dfc:	ffffe097          	auipc	ra,0xffffe
    80004e00:	4c0080e7          	jalr	1216(ra) # 800032bc <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    80004e04:	00050a13          	mv	s4,a0
    bit = getBitOfObject(objArr[4], objAlloc);
    80004e08:	00048613          	mv	a2,s1
    80004e0c:	00090593          	mv	a1,s2
    80004e10:	00098513          	mv	a0,s3
    80004e14:	ffffe097          	auipc	ra,0xffffe
    80004e18:	528080e7          	jalr	1320(ra) # 8000333c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80004e1c:	00050913          	mv	s2,a0
    if (byte != 1 || bit != 7) { delete objAlloc; return false; }
    80004e20:	00100793          	li	a5,1
    80004e24:	00fa1663          	bne	s4,a5,80004e30 <_ZN20KObjectAllocatorTest5test2Em+0x728>
    80004e28:	00700793          	li	a5,7
    80004e2c:	08f50063          	beq	a0,a5,80004eac <_ZN20KObjectAllocatorTest5test2Em+0x7a4>
    80004e30:	06048a63          	beqz	s1,80004ea4 <_ZN20KObjectAllocatorTest5test2Em+0x79c>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004e34:	00000913          	li	s2,0
    80004e38:	0280006f          	j	80004e60 <_ZN20KObjectAllocatorTest5test2Em+0x758>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004e3c:	ffffd097          	auipc	ra,0xffffd
    80004e40:	e70080e7          	jalr	-400(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004e44:	0284b783          	ld	a5,40(s1)
    80004e48:	00391713          	slli	a4,s2,0x3
    80004e4c:	00e787b3          	add	a5,a5,a4
    80004e50:	0007b583          	ld	a1,0(a5)
    80004e54:	ffffd097          	auipc	ra,0xffffd
    80004e58:	fe4080e7          	jalr	-28(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004e5c:	00190913          	addi	s2,s2,1
    80004e60:	0304b783          	ld	a5,48(s1)
    80004e64:	fcf96ce3          	bltu	s2,a5,80004e3c <_ZN20KObjectAllocatorTest5test2Em+0x734>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004e68:	ffffd097          	auipc	ra,0xffffd
    80004e6c:	e44080e7          	jalr	-444(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004e70:	0284b583          	ld	a1,40(s1)
    80004e74:	ffffd097          	auipc	ra,0xffffd
    80004e78:	fc4080e7          	jalr	-60(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004e7c:	ffffd097          	auipc	ra,0xffffd
    80004e80:	e30080e7          	jalr	-464(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004e84:	0204b583          	ld	a1,32(s1)
    80004e88:	ffffd097          	auipc	ra,0xffffd
    80004e8c:	fb0080e7          	jalr	-80(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004e90:	ffffd097          	auipc	ra,0xffffd
    80004e94:	e1c080e7          	jalr	-484(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004e98:	00048593          	mv	a1,s1
    80004e9c:	ffffd097          	auipc	ra,0xffffd
    80004ea0:	f9c080e7          	jalr	-100(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004ea4:	00000a13          	li	s4,0
    80004ea8:	a1dff06f          	j	800048c4 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    bool expectedBitValues[16] = {
    80004eac:	00004797          	auipc	a5,0x4
    80004eb0:	6b478793          	addi	a5,a5,1716 # 80009560 <CONSOLE_STATUS+0x550>
    80004eb4:	0007b703          	ld	a4,0(a5)
    80004eb8:	f4e43823          	sd	a4,-176(s0)
    80004ebc:	0087b783          	ld	a5,8(a5)
    80004ec0:	f4f43c23          	sd	a5,-168(s0)
    for (size_t i = 0; i < 16; ++i) {
    80004ec4:	00000a13          	li	s4,0
    byte = 0; bit = 7;
    80004ec8:	00000a93          	li	s5,0
    80004ecc:	02c0006f          	j	80004ef8 <_ZN20KObjectAllocatorTest5test2Em+0x7f0>
        { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    80004ed0:	00048863          	beqz	s1,80004ee0 <_ZN20KObjectAllocatorTest5test2Em+0x7d8>
    80004ed4:	00048513          	mv	a0,s1
    80004ed8:	ffffd097          	auipc	ra,0xffffd
    80004edc:	a94080e7          	jalr	-1388(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    80004ee0:	00000a13          	li	s4,0
    80004ee4:	9e1ff06f          	j	800048c4 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    80004ee8:	001a8a93          	addi	s5,s5,1
    80004eec:	000b8913          	mv	s2,s7
    80004ef0:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 16; ++i) {
    80004ef4:	001a0a13          	addi	s4,s4,1
    80004ef8:	00f00793          	li	a5,15
    80004efc:	0347ea63          	bltu	a5,s4,80004f30 <_ZN20KObjectAllocatorTest5test2Em+0x828>
        if (expectedBitValues[i] != getValueOfBitAt(byte, bit, objAlloc))
    80004f00:	fb040793          	addi	a5,s0,-80
    80004f04:	014787b3          	add	a5,a5,s4
    80004f08:	fa07cb03          	lbu	s6,-96(a5)
    80004f0c:	00048693          	mv	a3,s1
    80004f10:	00090613          	mv	a2,s2
    80004f14:	000a8593          	mv	a1,s5
    80004f18:	00098513          	mv	a0,s3
    80004f1c:	ffffe097          	auipc	ra,0xffffe
    80004f20:	318080e7          	jalr	792(ra) # 80003234 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80004f24:	faab16e3          	bne	s6,a0,80004ed0 <_ZN20KObjectAllocatorTest5test2Em+0x7c8>
        { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    80004f28:	fc0914e3          	bnez	s2,80004ef0 <_ZN20KObjectAllocatorTest5test2Em+0x7e8>
    80004f2c:	fbdff06f          	j	80004ee8 <_ZN20KObjectAllocatorTest5test2Em+0x7e0>
    delete objAlloc;
    80004f30:	06048e63          	beqz	s1,80004fac <_ZN20KObjectAllocatorTest5test2Em+0x8a4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004f34:	00000913          	li	s2,0
    80004f38:	0280006f          	j	80004f60 <_ZN20KObjectAllocatorTest5test2Em+0x858>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004f3c:	ffffd097          	auipc	ra,0xffffd
    80004f40:	d70080e7          	jalr	-656(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004f44:	0284b783          	ld	a5,40(s1)
    80004f48:	00391713          	slli	a4,s2,0x3
    80004f4c:	00e787b3          	add	a5,a5,a4
    80004f50:	0007b583          	ld	a1,0(a5)
    80004f54:	ffffd097          	auipc	ra,0xffffd
    80004f58:	ee4080e7          	jalr	-284(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004f5c:	00190913          	addi	s2,s2,1
    80004f60:	0304b783          	ld	a5,48(s1)
    80004f64:	fcf96ce3          	bltu	s2,a5,80004f3c <_ZN20KObjectAllocatorTest5test2Em+0x834>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004f68:	ffffd097          	auipc	ra,0xffffd
    80004f6c:	d44080e7          	jalr	-700(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004f70:	0284b583          	ld	a1,40(s1)
    80004f74:	ffffd097          	auipc	ra,0xffffd
    80004f78:	ec4080e7          	jalr	-316(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004f7c:	ffffd097          	auipc	ra,0xffffd
    80004f80:	d30080e7          	jalr	-720(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004f84:	0204b583          	ld	a1,32(s1)
    80004f88:	ffffd097          	auipc	ra,0xffffd
    80004f8c:	eb0080e7          	jalr	-336(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004f90:	ffffd097          	auipc	ra,0xffffd
    80004f94:	d1c080e7          	jalr	-740(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80004f98:	00048593          	mv	a1,s1
    80004f9c:	ffffd097          	auipc	ra,0xffffd
    80004fa0:	e9c080e7          	jalr	-356(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    return true;
    80004fa4:	00100a13          	li	s4,1
    }
    80004fa8:	91dff06f          	j	800048c4 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    80004fac:	00100a13          	li	s4,1
    80004fb0:	915ff06f          	j	800048c4 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    80004fb4:	00050913          	mv	s2,a0
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 3);
    80004fb8:	00048513          	mv	a0,s1
    80004fbc:	ffffd097          	auipc	ra,0xffffd
    80004fc0:	9b0080e7          	jalr	-1616(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    80004fc4:	00090513          	mv	a0,s2
    80004fc8:	00006097          	auipc	ra,0x6
    80004fcc:	760080e7          	jalr	1888(ra) # 8000b728 <_Unwind_Resume>

0000000080004fd0 <_ZN20KObjectAllocatorTest5test3Em>:

bool KObjectAllocatorTest::test3(size_t size) {
    80004fd0:	81010113          	addi	sp,sp,-2032
    80004fd4:	7e113423          	sd	ra,2024(sp)
    80004fd8:	7e813023          	sd	s0,2016(sp)
    80004fdc:	7c913c23          	sd	s1,2008(sp)
    80004fe0:	7d213823          	sd	s2,2000(sp)
    80004fe4:	7d313423          	sd	s3,1992(sp)
    80004fe8:	7d413023          	sd	s4,1984(sp)
    80004fec:	7b513c23          	sd	s5,1976(sp)
    80004ff0:	7f010413          	addi	s0,sp,2032
    80004ff4:	fb010113          	addi	sp,sp,-80
    80004ff8:	00050993          	mv	s3,a0
        return MemoryAllocator::instance()->kmem_alloc(size);
    80004ffc:	ffffd097          	auipc	ra,0xffffd
    80005000:	cb0080e7          	jalr	-848(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80005004:	04000593          	li	a1,64
    80005008:	ffffd097          	auipc	ra,0xffffd
    8000500c:	d88080e7          	jalr	-632(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80005010:	00050493          	mv	s1,a0
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    80005014:	00500793          	li	a5,5
    80005018:	00f53023          	sd	a5,0(a0)
    8000501c:	00f53423          	sd	a5,8(a0)
    80005020:	00100793          	li	a5,1
    80005024:	00f53c23          	sd	a5,24(a0)
    80005028:	02f53823          	sd	a5,48(a0)
    8000502c:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80005030:	ffffd097          	auipc	ra,0xffffd
    80005034:	c7c080e7          	jalr	-900(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80005038:	0304b583          	ld	a1,48(s1)
    8000503c:	00359593          	slli	a1,a1,0x3
    80005040:	ffffd097          	auipc	ra,0xffffd
    80005044:	d50080e7          	jalr	-688(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80005048:	02a4b423          	sd	a0,40(s1)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    8000504c:	ffffd097          	auipc	ra,0xffffd
    80005050:	c60080e7          	jalr	-928(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80005054:	0304b583          	ld	a1,48(s1)
    80005058:	00359593          	slli	a1,a1,0x3
    8000505c:	ffffd097          	auipc	ra,0xffffd
    80005060:	d34080e7          	jalr	-716(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80005064:	02a4b023          	sd	a0,32(s1)
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80005068:	0084b703          	ld	a4,8(s1)
    8000506c:	ff877793          	andi	a5,a4,-8
    80005070:	02f70463          	beq	a4,a5,80005098 <_ZN20KObjectAllocatorTest5test3Em+0xc8>
    80005074:	00800713          	li	a4,8
    80005078:	00e787b3          	add	a5,a5,a4
    8000507c:	00f4b423          	sd	a5,8(s1)
    80005080:	00f4b023          	sd	a5,0(s1)
        memorySizeForBits = numberOfObjects / 8;
    80005084:	0037d793          	srli	a5,a5,0x3
    80005088:	00f4b823          	sd	a5,16(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    8000508c:	ffffd097          	auipc	ra,0xffffd
    80005090:	c20080e7          	jalr	-992(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80005094:	00c0006f          	j	800050a0 <_ZN20KObjectAllocatorTest5test3Em+0xd0>
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80005098:	00000713          	li	a4,0
    8000509c:	fddff06f          	j	80005078 <_ZN20KObjectAllocatorTest5test3Em+0xa8>
                memorySizeForBits + initialNumberOfObjects * objectSize
    800050a0:	0104b583          	ld	a1,16(s1)
    800050a4:	0004b783          	ld	a5,0(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    800050a8:	0284b903          	ld	s2,40(s1)
    800050ac:	00f585b3          	add	a1,a1,a5
    800050b0:	ffffd097          	auipc	ra,0xffffd
    800050b4:	ce0080e7          	jalr	-800(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    800050b8:	00a93023          	sd	a0,0(s2)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    800050bc:	0284b783          	ld	a5,40(s1)
    800050c0:	0007b783          	ld	a5,0(a5)
    800050c4:	0104b683          	ld	a3,16(s1)
    800050c8:	0204b703          	ld	a4,32(s1)
    800050cc:	00d787b3          	add	a5,a5,a3
    800050d0:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    800050d4:	00000793          	li	a5,0
    800050d8:	0104b703          	ld	a4,16(s1)
    800050dc:	00e7fe63          	bgeu	a5,a4,800050f8 <_ZN20KObjectAllocatorTest5test3Em+0x128>
    800050e0:	0284b703          	ld	a4,40(s1)
    800050e4:	00073703          	ld	a4,0(a4)
    800050e8:	00f70733          	add	a4,a4,a5
    800050ec:	00070023          	sb	zero,0(a4)
    800050f0:	00178793          	addi	a5,a5,1
    800050f4:	fe5ff06f          	j	800050d8 <_ZN20KObjectAllocatorTest5test3Em+0x108>
    size_t getNumberOfObjects() { return numberOfObjects; }
    800050f8:	0084b703          	ld	a4,8(s1)
    size = sizeof(uint8);
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 5);
    if (objAlloc->getNumberOfObjects() != 8) { delete objAlloc; return false; }
    800050fc:	00800793          	li	a5,8
    80005100:	0af70263          	beq	a4,a5,800051a4 <_ZN20KObjectAllocatorTest5test3Em+0x1d4>
    80005104:	06048a63          	beqz	s1,80005178 <_ZN20KObjectAllocatorTest5test3Em+0x1a8>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005108:	00000913          	li	s2,0
    8000510c:	0304b783          	ld	a5,48(s1)
    80005110:	02f97663          	bgeu	s2,a5,8000513c <_ZN20KObjectAllocatorTest5test3Em+0x16c>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80005114:	ffffd097          	auipc	ra,0xffffd
    80005118:	b98080e7          	jalr	-1128(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    8000511c:	0284b783          	ld	a5,40(s1)
    80005120:	00391713          	slli	a4,s2,0x3
    80005124:	00e787b3          	add	a5,a5,a4
    80005128:	0007b583          	ld	a1,0(a5)
    8000512c:	ffffd097          	auipc	ra,0xffffd
    80005130:	d0c080e7          	jalr	-756(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005134:	00190913          	addi	s2,s2,1
    80005138:	fd5ff06f          	j	8000510c <_ZN20KObjectAllocatorTest5test3Em+0x13c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    8000513c:	ffffd097          	auipc	ra,0xffffd
    80005140:	b70080e7          	jalr	-1168(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80005144:	0284b583          	ld	a1,40(s1)
    80005148:	ffffd097          	auipc	ra,0xffffd
    8000514c:	cf0080e7          	jalr	-784(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80005150:	ffffd097          	auipc	ra,0xffffd
    80005154:	b5c080e7          	jalr	-1188(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80005158:	0204b583          	ld	a1,32(s1)
    8000515c:	ffffd097          	auipc	ra,0xffffd
    80005160:	cdc080e7          	jalr	-804(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80005164:	ffffd097          	auipc	ra,0xffffd
    80005168:	b48080e7          	jalr	-1208(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    8000516c:	00048593          	mv	a1,s1
    80005170:	ffffd097          	auipc	ra,0xffffd
    80005174:	cc8080e7          	jalr	-824(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    80005178:	00000513          	li	a0,0
        { delete objAlloc; return false; }
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    }
    delete objAlloc;
    return true;
    8000517c:	05010113          	addi	sp,sp,80
    80005180:	7e813083          	ld	ra,2024(sp)
    80005184:	7e013403          	ld	s0,2016(sp)
    80005188:	7d813483          	ld	s1,2008(sp)
    8000518c:	7d013903          	ld	s2,2000(sp)
    80005190:	7c813983          	ld	s3,1992(sp)
    80005194:	7c013a03          	ld	s4,1984(sp)
    80005198:	7b813a83          	ld	s5,1976(sp)
    8000519c:	7f010113          	addi	sp,sp,2032
    800051a0:	00008067          	ret
    size_t getMemorySizeForBits() { return memorySizeForBits; }
    800051a4:	0104b703          	ld	a4,16(s1)
    if (objAlloc->getMemorySizeForBits() != 1) { delete objAlloc; return false; }
    800051a8:	00100793          	li	a5,1
    800051ac:	08f70063          	beq	a4,a5,8000522c <_ZN20KObjectAllocatorTest5test3Em+0x25c>
    800051b0:	06048a63          	beqz	s1,80005224 <_ZN20KObjectAllocatorTest5test3Em+0x254>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800051b4:	00000913          	li	s2,0
    800051b8:	0304b783          	ld	a5,48(s1)
    800051bc:	02f97663          	bgeu	s2,a5,800051e8 <_ZN20KObjectAllocatorTest5test3Em+0x218>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800051c0:	ffffd097          	auipc	ra,0xffffd
    800051c4:	aec080e7          	jalr	-1300(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800051c8:	0284b783          	ld	a5,40(s1)
    800051cc:	00391713          	slli	a4,s2,0x3
    800051d0:	00e787b3          	add	a5,a5,a4
    800051d4:	0007b583          	ld	a1,0(a5)
    800051d8:	ffffd097          	auipc	ra,0xffffd
    800051dc:	c60080e7          	jalr	-928(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800051e0:	00190913          	addi	s2,s2,1
    800051e4:	fd5ff06f          	j	800051b8 <_ZN20KObjectAllocatorTest5test3Em+0x1e8>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800051e8:	ffffd097          	auipc	ra,0xffffd
    800051ec:	ac4080e7          	jalr	-1340(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800051f0:	0284b583          	ld	a1,40(s1)
    800051f4:	ffffd097          	auipc	ra,0xffffd
    800051f8:	c44080e7          	jalr	-956(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800051fc:	ffffd097          	auipc	ra,0xffffd
    80005200:	ab0080e7          	jalr	-1360(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80005204:	0204b583          	ld	a1,32(s1)
    80005208:	ffffd097          	auipc	ra,0xffffd
    8000520c:	c30080e7          	jalr	-976(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80005210:	ffffd097          	auipc	ra,0xffffd
    80005214:	a9c080e7          	jalr	-1380(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80005218:	00048593          	mv	a1,s1
    8000521c:	ffffd097          	auipc	ra,0xffffd
    80005220:	c1c080e7          	jalr	-996(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    80005224:	00000513          	li	a0,0
    80005228:	f55ff06f          	j	8000517c <_ZN20KObjectAllocatorTest5test3Em+0x1ac>
    size_t getObjectSize() { return objectSize; }
    8000522c:	0184b703          	ld	a4,24(s1)
    if (objAlloc->getObjectSize() != size) { delete objAlloc; return false; }
    80005230:	00100793          	li	a5,1
    80005234:	08f70063          	beq	a4,a5,800052b4 <_ZN20KObjectAllocatorTest5test3Em+0x2e4>
    80005238:	06048a63          	beqz	s1,800052ac <_ZN20KObjectAllocatorTest5test3Em+0x2dc>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000523c:	00000913          	li	s2,0
    80005240:	0304b783          	ld	a5,48(s1)
    80005244:	02f97663          	bgeu	s2,a5,80005270 <_ZN20KObjectAllocatorTest5test3Em+0x2a0>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80005248:	ffffd097          	auipc	ra,0xffffd
    8000524c:	a64080e7          	jalr	-1436(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80005250:	0284b783          	ld	a5,40(s1)
    80005254:	00391713          	slli	a4,s2,0x3
    80005258:	00e787b3          	add	a5,a5,a4
    8000525c:	0007b583          	ld	a1,0(a5)
    80005260:	ffffd097          	auipc	ra,0xffffd
    80005264:	bd8080e7          	jalr	-1064(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005268:	00190913          	addi	s2,s2,1
    8000526c:	fd5ff06f          	j	80005240 <_ZN20KObjectAllocatorTest5test3Em+0x270>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80005270:	ffffd097          	auipc	ra,0xffffd
    80005274:	a3c080e7          	jalr	-1476(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80005278:	0284b583          	ld	a1,40(s1)
    8000527c:	ffffd097          	auipc	ra,0xffffd
    80005280:	bbc080e7          	jalr	-1092(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80005284:	ffffd097          	auipc	ra,0xffffd
    80005288:	a28080e7          	jalr	-1496(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    8000528c:	0204b583          	ld	a1,32(s1)
    80005290:	ffffd097          	auipc	ra,0xffffd
    80005294:	ba8080e7          	jalr	-1112(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80005298:	ffffd097          	auipc	ra,0xffffd
    8000529c:	a14080e7          	jalr	-1516(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800052a0:	00048593          	mv	a1,s1
    800052a4:	ffffd097          	auipc	ra,0xffffd
    800052a8:	b94080e7          	jalr	-1132(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    800052ac:	00000513          	li	a0,0
    800052b0:	ecdff06f          	j	8000517c <_ZN20KObjectAllocatorTest5test3Em+0x1ac>
    void* objArr[256]; for (size_t i = 0; i < 32; objArr[i++] = objAlloc->allocateNewObject());
    800052b4:	00000913          	li	s2,0
    800052b8:	01f00793          	li	a5,31
    800052bc:	0327e663          	bltu	a5,s2,800052e8 <_ZN20KObjectAllocatorTest5test3Em+0x318>
    800052c0:	00190a13          	addi	s4,s2,1
    800052c4:	00048513          	mv	a0,s1
    800052c8:	00001097          	auipc	ra,0x1
    800052cc:	e78080e7          	jalr	-392(ra) # 80006140 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800052d0:	00391913          	slli	s2,s2,0x3
    800052d4:	fc040793          	addi	a5,s0,-64
    800052d8:	01278933          	add	s2,a5,s2
    800052dc:	80a93023          	sd	a0,-2048(s2)
    800052e0:	000a0913          	mv	s2,s4
    800052e4:	fd5ff06f          	j	800052b8 <_ZN20KObjectAllocatorTest5test3Em+0x2e8>
    if (getByteOfObject(objArr[31], objAlloc) != 3
    800052e8:	8b843903          	ld	s2,-1864(s0)
    800052ec:	00048613          	mv	a2,s1
    800052f0:	00090593          	mv	a1,s2
    800052f4:	00098513          	mv	a0,s3
    800052f8:	ffffe097          	auipc	ra,0xffffe
    800052fc:	fc4080e7          	jalr	-60(ra) # 800032bc <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[31], objAlloc) != 0)
    80005300:	00300793          	li	a5,3
    80005304:	02f50e63          	beq	a0,a5,80005340 <_ZN20KObjectAllocatorTest5test3Em+0x370>
    { delete objAlloc; return false; }
    80005308:	0c048863          	beqz	s1,800053d8 <_ZN20KObjectAllocatorTest5test3Em+0x408>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000530c:	00000913          	li	s2,0
    80005310:	0304b783          	ld	a5,48(s1)
    80005314:	08f97463          	bgeu	s2,a5,8000539c <_ZN20KObjectAllocatorTest5test3Em+0x3cc>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80005318:	ffffd097          	auipc	ra,0xffffd
    8000531c:	994080e7          	jalr	-1644(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80005320:	0284b783          	ld	a5,40(s1)
    80005324:	00391713          	slli	a4,s2,0x3
    80005328:	00e787b3          	add	a5,a5,a4
    8000532c:	0007b583          	ld	a1,0(a5)
    80005330:	ffffd097          	auipc	ra,0xffffd
    80005334:	b08080e7          	jalr	-1272(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005338:	00190913          	addi	s2,s2,1
    8000533c:	fd5ff06f          	j	80005310 <_ZN20KObjectAllocatorTest5test3Em+0x340>
        || getBitOfObject(objArr[31], objAlloc) != 0)
    80005340:	00048613          	mv	a2,s1
    80005344:	00090593          	mv	a1,s2
    80005348:	00098513          	mv	a0,s3
    8000534c:	ffffe097          	auipc	ra,0xffffe
    80005350:	ff0080e7          	jalr	-16(ra) # 8000333c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80005354:	00050a93          	mv	s5,a0
    80005358:	fa0518e3          	bnez	a0,80005308 <_ZN20KObjectAllocatorTest5test3Em+0x338>
    if (objAlloc->nextNonTakenByte != 4) { delete objAlloc; return false; }
    8000535c:	0384b703          	ld	a4,56(s1)
    80005360:	00400793          	li	a5,4
    80005364:	06f71e63          	bne	a4,a5,800053e0 <_ZN20KObjectAllocatorTest5test3Em+0x410>
    for (size_t i = 32; i < 256; objArr[i++] = objAlloc->allocateNewObject());
    80005368:	02000913          	li	s2,32
    8000536c:	0ff00793          	li	a5,255
    80005370:	0f27e463          	bltu	a5,s2,80005458 <_ZN20KObjectAllocatorTest5test3Em+0x488>
    80005374:	00190a13          	addi	s4,s2,1
    80005378:	00048513          	mv	a0,s1
    8000537c:	00001097          	auipc	ra,0x1
    80005380:	dc4080e7          	jalr	-572(ra) # 80006140 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80005384:	00391913          	slli	s2,s2,0x3
    80005388:	fc040793          	addi	a5,s0,-64
    8000538c:	01278933          	add	s2,a5,s2
    80005390:	80a93023          	sd	a0,-2048(s2)
    80005394:	000a0913          	mv	s2,s4
    80005398:	fd5ff06f          	j	8000536c <_ZN20KObjectAllocatorTest5test3Em+0x39c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    8000539c:	ffffd097          	auipc	ra,0xffffd
    800053a0:	910080e7          	jalr	-1776(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800053a4:	0284b583          	ld	a1,40(s1)
    800053a8:	ffffd097          	auipc	ra,0xffffd
    800053ac:	a90080e7          	jalr	-1392(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800053b0:	ffffd097          	auipc	ra,0xffffd
    800053b4:	8fc080e7          	jalr	-1796(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800053b8:	0204b583          	ld	a1,32(s1)
    800053bc:	ffffd097          	auipc	ra,0xffffd
    800053c0:	a7c080e7          	jalr	-1412(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800053c4:	ffffd097          	auipc	ra,0xffffd
    800053c8:	8e8080e7          	jalr	-1816(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800053cc:	00048593          	mv	a1,s1
    800053d0:	ffffd097          	auipc	ra,0xffffd
    800053d4:	a68080e7          	jalr	-1432(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    { delete objAlloc; return false; }
    800053d8:	00000513          	li	a0,0
    800053dc:	da1ff06f          	j	8000517c <_ZN20KObjectAllocatorTest5test3Em+0x1ac>
    if (objAlloc->nextNonTakenByte != 4) { delete objAlloc; return false; }
    800053e0:	02049663          	bnez	s1,8000540c <_ZN20KObjectAllocatorTest5test3Em+0x43c>
    800053e4:	06c0006f          	j	80005450 <_ZN20KObjectAllocatorTest5test3Em+0x480>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800053e8:	ffffd097          	auipc	ra,0xffffd
    800053ec:	8c4080e7          	jalr	-1852(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800053f0:	0284b783          	ld	a5,40(s1)
    800053f4:	003a9713          	slli	a4,s5,0x3
    800053f8:	00e787b3          	add	a5,a5,a4
    800053fc:	0007b583          	ld	a1,0(a5)
    80005400:	ffffd097          	auipc	ra,0xffffd
    80005404:	a38080e7          	jalr	-1480(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005408:	001a8a93          	addi	s5,s5,1
    8000540c:	0304b783          	ld	a5,48(s1)
    80005410:	fcfaece3          	bltu	s5,a5,800053e8 <_ZN20KObjectAllocatorTest5test3Em+0x418>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80005414:	ffffd097          	auipc	ra,0xffffd
    80005418:	898080e7          	jalr	-1896(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    8000541c:	0284b583          	ld	a1,40(s1)
    80005420:	ffffd097          	auipc	ra,0xffffd
    80005424:	a18080e7          	jalr	-1512(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80005428:	ffffd097          	auipc	ra,0xffffd
    8000542c:	884080e7          	jalr	-1916(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80005430:	0204b583          	ld	a1,32(s1)
    80005434:	ffffd097          	auipc	ra,0xffffd
    80005438:	a04080e7          	jalr	-1532(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    8000543c:	ffffd097          	auipc	ra,0xffffd
    80005440:	870080e7          	jalr	-1936(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80005444:	00048593          	mv	a1,s1
    80005448:	ffffd097          	auipc	ra,0xffffd
    8000544c:	9f0080e7          	jalr	-1552(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    80005450:	00000513          	li	a0,0
    80005454:	d29ff06f          	j	8000517c <_ZN20KObjectAllocatorTest5test3Em+0x1ac>
    if (objAlloc->nextNonTakenByte != 32) { delete objAlloc; return false; }
    80005458:	0384b703          	ld	a4,56(s1)
    8000545c:	02000793          	li	a5,32
    80005460:	06f70e63          	beq	a4,a5,800054dc <_ZN20KObjectAllocatorTest5test3Em+0x50c>
    80005464:	06048863          	beqz	s1,800054d4 <_ZN20KObjectAllocatorTest5test3Em+0x504>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005468:	0304b783          	ld	a5,48(s1)
    8000546c:	02faf663          	bgeu	s5,a5,80005498 <_ZN20KObjectAllocatorTest5test3Em+0x4c8>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80005470:	ffffd097          	auipc	ra,0xffffd
    80005474:	83c080e7          	jalr	-1988(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80005478:	0284b783          	ld	a5,40(s1)
    8000547c:	003a9713          	slli	a4,s5,0x3
    80005480:	00e787b3          	add	a5,a5,a4
    80005484:	0007b583          	ld	a1,0(a5)
    80005488:	ffffd097          	auipc	ra,0xffffd
    8000548c:	9b0080e7          	jalr	-1616(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005490:	001a8a93          	addi	s5,s5,1
    80005494:	fd5ff06f          	j	80005468 <_ZN20KObjectAllocatorTest5test3Em+0x498>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80005498:	ffffd097          	auipc	ra,0xffffd
    8000549c:	814080e7          	jalr	-2028(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800054a0:	0284b583          	ld	a1,40(s1)
    800054a4:	ffffd097          	auipc	ra,0xffffd
    800054a8:	994080e7          	jalr	-1644(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800054ac:	ffffd097          	auipc	ra,0xffffd
    800054b0:	800080e7          	jalr	-2048(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800054b4:	0204b583          	ld	a1,32(s1)
    800054b8:	ffffd097          	auipc	ra,0xffffd
    800054bc:	980080e7          	jalr	-1664(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800054c0:	ffffc097          	auipc	ra,0xffffc
    800054c4:	7ec080e7          	jalr	2028(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800054c8:	00048593          	mv	a1,s1
    800054cc:	ffffd097          	auipc	ra,0xffffd
    800054d0:	96c080e7          	jalr	-1684(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    800054d4:	00000513          	li	a0,0
    800054d8:	ca5ff06f          	j	8000517c <_ZN20KObjectAllocatorTest5test3Em+0x1ac>
    objAlloc->freeObject(objArr[7 * 8]);
    800054dc:	98043583          	ld	a1,-1664(s0)
    800054e0:	00048513          	mv	a0,s1
    800054e4:	00001097          	auipc	ra,0x1
    800054e8:	9dc080e7          	jalr	-1572(ra) # 80005ec0 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[7 * 8] = objAlloc->allocateNewObject();
    800054ec:	00048513          	mv	a0,s1
    800054f0:	00001097          	auipc	ra,0x1
    800054f4:	c50080e7          	jalr	-944(ra) # 80006140 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800054f8:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[7 * 8], objAlloc) != 7
    800054fc:	00048613          	mv	a2,s1
    80005500:	00050593          	mv	a1,a0
    80005504:	00098513          	mv	a0,s3
    80005508:	ffffe097          	auipc	ra,0xffffe
    8000550c:	db4080e7          	jalr	-588(ra) # 800032bc <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[7 * 8], objAlloc) != 7)
    80005510:	00700793          	li	a5,7
    80005514:	02f50c63          	beq	a0,a5,8000554c <_ZN20KObjectAllocatorTest5test3Em+0x57c>
    { delete objAlloc; return false; }
    80005518:	0a048663          	beqz	s1,800055c4 <_ZN20KObjectAllocatorTest5test3Em+0x5f4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000551c:	0304b783          	ld	a5,48(s1)
    80005520:	06faf463          	bgeu	s5,a5,80005588 <_ZN20KObjectAllocatorTest5test3Em+0x5b8>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80005524:	ffffc097          	auipc	ra,0xffffc
    80005528:	788080e7          	jalr	1928(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    8000552c:	0284b783          	ld	a5,40(s1)
    80005530:	003a9713          	slli	a4,s5,0x3
    80005534:	00e787b3          	add	a5,a5,a4
    80005538:	0007b583          	ld	a1,0(a5)
    8000553c:	ffffd097          	auipc	ra,0xffffd
    80005540:	8fc080e7          	jalr	-1796(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005544:	001a8a93          	addi	s5,s5,1
    80005548:	fd5ff06f          	j	8000551c <_ZN20KObjectAllocatorTest5test3Em+0x54c>
        || getBitOfObject(objArr[7 * 8], objAlloc) != 7)
    8000554c:	00048613          	mv	a2,s1
    80005550:	00090593          	mv	a1,s2
    80005554:	00098513          	mv	a0,s3
    80005558:	ffffe097          	auipc	ra,0xffffe
    8000555c:	de4080e7          	jalr	-540(ra) # 8000333c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80005560:	00700793          	li	a5,7
    80005564:	faf51ae3          	bne	a0,a5,80005518 <_ZN20KObjectAllocatorTest5test3Em+0x548>
    if (objAlloc->nextNonTakenByte != 7) { delete objAlloc; return false; }
    80005568:	0384b703          	ld	a4,56(s1)
    8000556c:	06f70063          	beq	a4,a5,800055cc <_ZN20KObjectAllocatorTest5test3Em+0x5fc>
    80005570:	00048863          	beqz	s1,80005580 <_ZN20KObjectAllocatorTest5test3Em+0x5b0>
    80005574:	00048513          	mv	a0,s1
    80005578:	ffffc097          	auipc	ra,0xffffc
    8000557c:	3f4080e7          	jalr	1012(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    80005580:	00000513          	li	a0,0
    80005584:	bf9ff06f          	j	8000517c <_ZN20KObjectAllocatorTest5test3Em+0x1ac>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80005588:	ffffc097          	auipc	ra,0xffffc
    8000558c:	724080e7          	jalr	1828(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80005590:	0284b583          	ld	a1,40(s1)
    80005594:	ffffd097          	auipc	ra,0xffffd
    80005598:	8a4080e7          	jalr	-1884(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    8000559c:	ffffc097          	auipc	ra,0xffffc
    800055a0:	710080e7          	jalr	1808(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800055a4:	0204b583          	ld	a1,32(s1)
    800055a8:	ffffd097          	auipc	ra,0xffffd
    800055ac:	890080e7          	jalr	-1904(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800055b0:	ffffc097          	auipc	ra,0xffffc
    800055b4:	6fc080e7          	jalr	1788(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800055b8:	00048593          	mv	a1,s1
    800055bc:	ffffd097          	auipc	ra,0xffffd
    800055c0:	87c080e7          	jalr	-1924(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    { delete objAlloc; return false; }
    800055c4:	00000513          	li	a0,0
    800055c8:	bb5ff06f          	j	8000517c <_ZN20KObjectAllocatorTest5test3Em+0x1ac>
    objAlloc->freeObject(objArr[6 * 8 + 3]);
    800055cc:	95843583          	ld	a1,-1704(s0)
    800055d0:	00048513          	mv	a0,s1
    800055d4:	00001097          	auipc	ra,0x1
    800055d8:	8ec080e7          	jalr	-1812(ra) # 80005ec0 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[7 * 8 + 4]);
    800055dc:	9a043583          	ld	a1,-1632(s0)
    800055e0:	00048513          	mv	a0,s1
    800055e4:	00001097          	auipc	ra,0x1
    800055e8:	8dc080e7          	jalr	-1828(ra) # 80005ec0 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[31 * 8 + 5]);
    800055ec:	fa843583          	ld	a1,-88(s0)
    800055f0:	00048513          	mv	a0,s1
    800055f4:	00001097          	auipc	ra,0x1
    800055f8:	8cc080e7          	jalr	-1844(ra) # 80005ec0 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[7 * 8 + 4] = objAlloc->allocateNewObject();
    800055fc:	00048513          	mv	a0,s1
    80005600:	00001097          	auipc	ra,0x1
    80005604:	b40080e7          	jalr	-1216(ra) # 80006140 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80005608:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[7 * 8 + 4], objAlloc) != 7
    8000560c:	00048613          	mv	a2,s1
    80005610:	00050593          	mv	a1,a0
    80005614:	00098513          	mv	a0,s3
    80005618:	ffffe097          	auipc	ra,0xffffe
    8000561c:	ca4080e7          	jalr	-860(ra) # 800032bc <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[7 * 8 + 4], objAlloc) != 3)
    80005620:	00700793          	li	a5,7
    80005624:	00f50e63          	beq	a0,a5,80005640 <_ZN20KObjectAllocatorTest5test3Em+0x670>
    { delete objAlloc; return false; }
    80005628:	00048863          	beqz	s1,80005638 <_ZN20KObjectAllocatorTest5test3Em+0x668>
    8000562c:	00048513          	mv	a0,s1
    80005630:	ffffc097          	auipc	ra,0xffffc
    80005634:	33c080e7          	jalr	828(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    80005638:	00000513          	li	a0,0
    8000563c:	b41ff06f          	j	8000517c <_ZN20KObjectAllocatorTest5test3Em+0x1ac>
        || getBitOfObject(objArr[7 * 8 + 4], objAlloc) != 3)
    80005640:	00048613          	mv	a2,s1
    80005644:	00090593          	mv	a1,s2
    80005648:	00098513          	mv	a0,s3
    8000564c:	ffffe097          	auipc	ra,0xffffe
    80005650:	cf0080e7          	jalr	-784(ra) # 8000333c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80005654:	00300793          	li	a5,3
    80005658:	fcf518e3          	bne	a0,a5,80005628 <_ZN20KObjectAllocatorTest5test3Em+0x658>
    if (objAlloc->nextNonTakenByte != 7) { delete objAlloc; return false; }
    8000565c:	0384b703          	ld	a4,56(s1)
    80005660:	00700793          	li	a5,7
    80005664:	00f70e63          	beq	a4,a5,80005680 <_ZN20KObjectAllocatorTest5test3Em+0x6b0>
    80005668:	00048863          	beqz	s1,80005678 <_ZN20KObjectAllocatorTest5test3Em+0x6a8>
    8000566c:	00048513          	mv	a0,s1
    80005670:	ffffc097          	auipc	ra,0xffffc
    80005674:	2fc080e7          	jalr	764(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    80005678:	00000513          	li	a0,0
    8000567c:	b01ff06f          	j	8000517c <_ZN20KObjectAllocatorTest5test3Em+0x1ac>
    objAlloc->freeObject(objArr[3 * 8 + 5]);
    80005680:	8a843583          	ld	a1,-1880(s0)
    80005684:	00048513          	mv	a0,s1
    80005688:	00001097          	auipc	ra,0x1
    8000568c:	838080e7          	jalr	-1992(ra) # 80005ec0 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[31 * 8 + 5] = objAlloc->allocateNewObject();
    80005690:	00048513          	mv	a0,s1
    80005694:	00001097          	auipc	ra,0x1
    80005698:	aac080e7          	jalr	-1364(ra) # 80006140 <_ZN16KObjectAllocator17allocateNewObjectEv>
    8000569c:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[31 * 8 + 5], objAlloc) != 31
    800056a0:	00048613          	mv	a2,s1
    800056a4:	00050593          	mv	a1,a0
    800056a8:	00098513          	mv	a0,s3
    800056ac:	ffffe097          	auipc	ra,0xffffe
    800056b0:	c10080e7          	jalr	-1008(ra) # 800032bc <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[31 * 8 + 5], objAlloc) != 2)
    800056b4:	01f00793          	li	a5,31
    800056b8:	00f50e63          	beq	a0,a5,800056d4 <_ZN20KObjectAllocatorTest5test3Em+0x704>
    { delete objAlloc; return false; }
    800056bc:	00048863          	beqz	s1,800056cc <_ZN20KObjectAllocatorTest5test3Em+0x6fc>
    800056c0:	00048513          	mv	a0,s1
    800056c4:	ffffc097          	auipc	ra,0xffffc
    800056c8:	2a8080e7          	jalr	680(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    800056cc:	00000513          	li	a0,0
    800056d0:	aadff06f          	j	8000517c <_ZN20KObjectAllocatorTest5test3Em+0x1ac>
        || getBitOfObject(objArr[31 * 8 + 5], objAlloc) != 2)
    800056d4:	00048613          	mv	a2,s1
    800056d8:	00090593          	mv	a1,s2
    800056dc:	00098513          	mv	a0,s3
    800056e0:	ffffe097          	auipc	ra,0xffffe
    800056e4:	c5c080e7          	jalr	-932(ra) # 8000333c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800056e8:	00200793          	li	a5,2
    800056ec:	fcf518e3          	bne	a0,a5,800056bc <_ZN20KObjectAllocatorTest5test3Em+0x6ec>
    if (objAlloc->nextNonTakenByte != 31) { delete objAlloc; return false; }
    800056f0:	0384b703          	ld	a4,56(s1)
    800056f4:	01f00793          	li	a5,31
    800056f8:	00f70e63          	beq	a4,a5,80005714 <_ZN20KObjectAllocatorTest5test3Em+0x744>
    800056fc:	00048863          	beqz	s1,8000570c <_ZN20KObjectAllocatorTest5test3Em+0x73c>
    80005700:	00048513          	mv	a0,s1
    80005704:	ffffc097          	auipc	ra,0xffffc
    80005708:	268080e7          	jalr	616(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    8000570c:	00000513          	li	a0,0
    80005710:	a6dff06f          	j	8000517c <_ZN20KObjectAllocatorTest5test3Em+0x1ac>
    objArr[3 * 8 + 5] = objAlloc->allocateNewObject();
    80005714:	00048513          	mv	a0,s1
    80005718:	00001097          	auipc	ra,0x1
    8000571c:	a28080e7          	jalr	-1496(ra) # 80006140 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80005720:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[3 * 8 + 5], objAlloc) != 3 || getBitOfObject(objArr[3 * 8 + 5], objAlloc) != 2)
    80005724:	00048613          	mv	a2,s1
    80005728:	00050593          	mv	a1,a0
    8000572c:	00098513          	mv	a0,s3
    80005730:	ffffe097          	auipc	ra,0xffffe
    80005734:	b8c080e7          	jalr	-1140(ra) # 800032bc <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    80005738:	00300793          	li	a5,3
    8000573c:	02f50463          	beq	a0,a5,80005764 <_ZN20KObjectAllocatorTest5test3Em+0x794>
        if (objAlloc->nextNonTakenByte != 3) { delete objAlloc; return false; }
    80005740:	0384b703          	ld	a4,56(s1)
    80005744:	00300793          	li	a5,3
    80005748:	02f70c63          	beq	a4,a5,80005780 <_ZN20KObjectAllocatorTest5test3Em+0x7b0>
    8000574c:	00048863          	beqz	s1,8000575c <_ZN20KObjectAllocatorTest5test3Em+0x78c>
    80005750:	00048513          	mv	a0,s1
    80005754:	ffffc097          	auipc	ra,0xffffc
    80005758:	218080e7          	jalr	536(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    8000575c:	00000513          	li	a0,0
    80005760:	a1dff06f          	j	8000517c <_ZN20KObjectAllocatorTest5test3Em+0x1ac>
    if (getByteOfObject(objArr[3 * 8 + 5], objAlloc) != 3 || getBitOfObject(objArr[3 * 8 + 5], objAlloc) != 2)
    80005764:	00048613          	mv	a2,s1
    80005768:	00090593          	mv	a1,s2
    8000576c:	00098513          	mv	a0,s3
    80005770:	ffffe097          	auipc	ra,0xffffe
    80005774:	bcc080e7          	jalr	-1076(ra) # 8000333c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80005778:	00200793          	li	a5,2
    8000577c:	fcf512e3          	bne	a0,a5,80005740 <_ZN20KObjectAllocatorTest5test3Em+0x770>
    objArr[6 * 8 + 3] = objAlloc->allocateNewObject();
    80005780:	00048513          	mv	a0,s1
    80005784:	00001097          	auipc	ra,0x1
    80005788:	9bc080e7          	jalr	-1604(ra) # 80006140 <_ZN16KObjectAllocator17allocateNewObjectEv>
    8000578c:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[6 * 8 + 3], objAlloc) != 6
    80005790:	00048613          	mv	a2,s1
    80005794:	00050593          	mv	a1,a0
    80005798:	00098513          	mv	a0,s3
    8000579c:	ffffe097          	auipc	ra,0xffffe
    800057a0:	b20080e7          	jalr	-1248(ra) # 800032bc <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[6 * 8 + 3], objAlloc) != 4)
    800057a4:	00600793          	li	a5,6
    800057a8:	00f50e63          	beq	a0,a5,800057c4 <_ZN20KObjectAllocatorTest5test3Em+0x7f4>
    { delete objAlloc; return false; }
    800057ac:	00048863          	beqz	s1,800057bc <_ZN20KObjectAllocatorTest5test3Em+0x7ec>
    800057b0:	00048513          	mv	a0,s1
    800057b4:	ffffc097          	auipc	ra,0xffffc
    800057b8:	1b8080e7          	jalr	440(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    800057bc:	00000513          	li	a0,0
    800057c0:	9bdff06f          	j	8000517c <_ZN20KObjectAllocatorTest5test3Em+0x1ac>
        || getBitOfObject(objArr[6 * 8 + 3], objAlloc) != 4)
    800057c4:	00048613          	mv	a2,s1
    800057c8:	00090593          	mv	a1,s2
    800057cc:	00098513          	mv	a0,s3
    800057d0:	ffffe097          	auipc	ra,0xffffe
    800057d4:	b6c080e7          	jalr	-1172(ra) # 8000333c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800057d8:	00400793          	li	a5,4
    800057dc:	fcf518e3          	bne	a0,a5,800057ac <_ZN20KObjectAllocatorTest5test3Em+0x7dc>
    if (objAlloc->nextNonTakenByte != 6) { delete objAlloc; return false; }
    800057e0:	0384b703          	ld	a4,56(s1)
    800057e4:	00600793          	li	a5,6
    800057e8:	0ef71863          	bne	a4,a5,800058d8 <_ZN20KObjectAllocatorTest5test3Em+0x908>
    for (int i = 0; i < 3; ++i) {
    800057ec:	00000a13          	li	s4,0
    800057f0:	00200793          	li	a5,2
    800057f4:	1547ce63          	blt	a5,s4,80005950 <_ZN20KObjectAllocatorTest5test3Em+0x980>
        objAlloc->freeObject(objArr[255]);
    800057f8:	fb843583          	ld	a1,-72(s0)
    800057fc:	00048513          	mv	a0,s1
    80005800:	00000097          	auipc	ra,0x0
    80005804:	6c0080e7          	jalr	1728(ra) # 80005ec0 <_ZN16KObjectAllocator10freeObjectEPv>
        objArr[255] = objAlloc->allocateNewObject();
    80005808:	00048513          	mv	a0,s1
    8000580c:	00001097          	auipc	ra,0x1
    80005810:	934080e7          	jalr	-1740(ra) # 80006140 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80005814:	00050913          	mv	s2,a0
    80005818:	faa43c23          	sd	a0,-72(s0)
        if (getByteOfObject(objArr[255], objAlloc) != 31
    8000581c:	00048613          	mv	a2,s1
    80005820:	00050593          	mv	a1,a0
    80005824:	00098513          	mv	a0,s3
    80005828:	ffffe097          	auipc	ra,0xffffe
    8000582c:	a94080e7          	jalr	-1388(ra) # 800032bc <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
            || getBitOfObject(objArr[255], objAlloc) != 0)
    80005830:	01f00793          	li	a5,31
    80005834:	0af51e63          	bne	a0,a5,800058f0 <_ZN20KObjectAllocatorTest5test3Em+0x920>
    80005838:	00048613          	mv	a2,s1
    8000583c:	00090593          	mv	a1,s2
    80005840:	00098513          	mv	a0,s3
    80005844:	ffffe097          	auipc	ra,0xffffe
    80005848:	af8080e7          	jalr	-1288(ra) # 8000333c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    8000584c:	0a051263          	bnez	a0,800058f0 <_ZN20KObjectAllocatorTest5test3Em+0x920>
        if (objAlloc->nextNonTakenByte != 32) { delete objAlloc; return false; }
    80005850:	0384b703          	ld	a4,56(s1)
    80005854:	02000793          	li	a5,32
    80005858:	0af71863          	bne	a4,a5,80005908 <_ZN20KObjectAllocatorTest5test3Em+0x938>
        objAlloc->freeObject(objArr[1]);
    8000585c:	fffffab7          	lui	s5,0xfffff
    80005860:	7c8a8793          	addi	a5,s5,1992 # fffffffffffff7c8 <end+0xffffffff7fff3ef8>
    80005864:	008787b3          	add	a5,a5,s0
    80005868:	0007b583          	ld	a1,0(a5)
    8000586c:	00048513          	mv	a0,s1
    80005870:	00000097          	auipc	ra,0x0
    80005874:	650080e7          	jalr	1616(ra) # 80005ec0 <_ZN16KObjectAllocator10freeObjectEPv>
        objArr[1] = objAlloc->allocateNewObject();
    80005878:	00048513          	mv	a0,s1
    8000587c:	00001097          	auipc	ra,0x1
    80005880:	8c4080e7          	jalr	-1852(ra) # 80006140 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80005884:	00050913          	mv	s2,a0
    80005888:	7c8a8793          	addi	a5,s5,1992
    8000588c:	008787b3          	add	a5,a5,s0
    80005890:	00a7b023          	sd	a0,0(a5)
        if (getByteOfObject(objArr[1], objAlloc) != 0
    80005894:	00048613          	mv	a2,s1
    80005898:	00050593          	mv	a1,a0
    8000589c:	00098513          	mv	a0,s3
    800058a0:	ffffe097          	auipc	ra,0xffffe
    800058a4:	a1c080e7          	jalr	-1508(ra) # 800032bc <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
            || getBitOfObject(objArr[1], objAlloc) != 6)
    800058a8:	06051c63          	bnez	a0,80005920 <_ZN20KObjectAllocatorTest5test3Em+0x950>
    800058ac:	00048613          	mv	a2,s1
    800058b0:	00090593          	mv	a1,s2
    800058b4:	00098513          	mv	a0,s3
    800058b8:	ffffe097          	auipc	ra,0xffffe
    800058bc:	a84080e7          	jalr	-1404(ra) # 8000333c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800058c0:	00600793          	li	a5,6
    800058c4:	04f51e63          	bne	a0,a5,80005920 <_ZN20KObjectAllocatorTest5test3Em+0x950>
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    800058c8:	0384b783          	ld	a5,56(s1)
    800058cc:	06079663          	bnez	a5,80005938 <_ZN20KObjectAllocatorTest5test3Em+0x968>
    for (int i = 0; i < 3; ++i) {
    800058d0:	001a0a1b          	addiw	s4,s4,1
    800058d4:	f1dff06f          	j	800057f0 <_ZN20KObjectAllocatorTest5test3Em+0x820>
    if (objAlloc->nextNonTakenByte != 6) { delete objAlloc; return false; }
    800058d8:	00048863          	beqz	s1,800058e8 <_ZN20KObjectAllocatorTest5test3Em+0x918>
    800058dc:	00048513          	mv	a0,s1
    800058e0:	ffffc097          	auipc	ra,0xffffc
    800058e4:	08c080e7          	jalr	140(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    800058e8:	00000513          	li	a0,0
    800058ec:	891ff06f          	j	8000517c <_ZN20KObjectAllocatorTest5test3Em+0x1ac>
        { delete objAlloc; return false; }
    800058f0:	00048863          	beqz	s1,80005900 <_ZN20KObjectAllocatorTest5test3Em+0x930>
    800058f4:	00048513          	mv	a0,s1
    800058f8:	ffffc097          	auipc	ra,0xffffc
    800058fc:	074080e7          	jalr	116(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    80005900:	00000513          	li	a0,0
    80005904:	879ff06f          	j	8000517c <_ZN20KObjectAllocatorTest5test3Em+0x1ac>
        if (objAlloc->nextNonTakenByte != 32) { delete objAlloc; return false; }
    80005908:	00048863          	beqz	s1,80005918 <_ZN20KObjectAllocatorTest5test3Em+0x948>
    8000590c:	00048513          	mv	a0,s1
    80005910:	ffffc097          	auipc	ra,0xffffc
    80005914:	05c080e7          	jalr	92(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    80005918:	00000513          	li	a0,0
    8000591c:	861ff06f          	j	8000517c <_ZN20KObjectAllocatorTest5test3Em+0x1ac>
        { delete objAlloc; return false; }
    80005920:	00048863          	beqz	s1,80005930 <_ZN20KObjectAllocatorTest5test3Em+0x960>
    80005924:	00048513          	mv	a0,s1
    80005928:	ffffc097          	auipc	ra,0xffffc
    8000592c:	044080e7          	jalr	68(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    80005930:	00000513          	li	a0,0
    80005934:	849ff06f          	j	8000517c <_ZN20KObjectAllocatorTest5test3Em+0x1ac>
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    80005938:	00048863          	beqz	s1,80005948 <_ZN20KObjectAllocatorTest5test3Em+0x978>
    8000593c:	00048513          	mv	a0,s1
    80005940:	ffffc097          	auipc	ra,0xffffc
    80005944:	02c080e7          	jalr	44(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    80005948:	00000513          	li	a0,0
    8000594c:	831ff06f          	j	8000517c <_ZN20KObjectAllocatorTest5test3Em+0x1ac>
    delete objAlloc;
    80005950:	00048c63          	beqz	s1,80005968 <_ZN20KObjectAllocatorTest5test3Em+0x998>
    80005954:	00048513          	mv	a0,s1
    80005958:	ffffc097          	auipc	ra,0xffffc
    8000595c:	014080e7          	jalr	20(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    return true;
    80005960:	00100513          	li	a0,1
    80005964:	819ff06f          	j	8000517c <_ZN20KObjectAllocatorTest5test3Em+0x1ac>
    80005968:	00100513          	li	a0,1
    8000596c:	811ff06f          	j	8000517c <_ZN20KObjectAllocatorTest5test3Em+0x1ac>
    80005970:	00050913          	mv	s2,a0
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 5);
    80005974:	00048513          	mv	a0,s1
    80005978:	ffffc097          	auipc	ra,0xffffc
    8000597c:	ff4080e7          	jalr	-12(ra) # 8000196c <_ZN16KObjectAllocatordlEPv>
    80005980:	00090513          	mv	a0,s2
    80005984:	00006097          	auipc	ra,0x6
    80005988:	da4080e7          	jalr	-604(ra) # 8000b728 <_Unwind_Resume>

000000008000598c <_ZN20KObjectAllocatorTest4testEmm>:
bool KObjectAllocatorTest::test(size_t i, size_t size) {
    8000598c:	ff010113          	addi	sp,sp,-16
    80005990:	00113423          	sd	ra,8(sp)
    80005994:	00813023          	sd	s0,0(sp)
    80005998:	01010413          	addi	s0,sp,16
    8000599c:	00058793          	mv	a5,a1
    800059a0:	00060593          	mv	a1,a2
    switch (i) {
    800059a4:	00200713          	li	a4,2
    800059a8:	04e78e63          	beq	a5,a4,80005a04 <_ZN20KObjectAllocatorTest4testEmm+0x78>
    800059ac:	02f76263          	bltu	a4,a5,800059d0 <_ZN20KObjectAllocatorTest4testEmm+0x44>
    800059b0:	04078463          	beqz	a5,800059f8 <_ZN20KObjectAllocatorTest4testEmm+0x6c>
    800059b4:	00100713          	li	a4,1
    800059b8:	00e79863          	bne	a5,a4,800059c8 <_ZN20KObjectAllocatorTest4testEmm+0x3c>
        case 1: return test1(size); break;
    800059bc:	ffffe097          	auipc	ra,0xffffe
    800059c0:	354080e7          	jalr	852(ra) # 80003d10 <_ZN20KObjectAllocatorTest5test1Em>
    800059c4:	0240006f          	j	800059e8 <_ZN20KObjectAllocatorTest4testEmm+0x5c>
    switch (i) {
    800059c8:	00000513          	li	a0,0
    800059cc:	01c0006f          	j	800059e8 <_ZN20KObjectAllocatorTest4testEmm+0x5c>
    800059d0:	00300713          	li	a4,3
    800059d4:	00e79863          	bne	a5,a4,800059e4 <_ZN20KObjectAllocatorTest4testEmm+0x58>
        case 3: return test3(size); break;
    800059d8:	fffff097          	auipc	ra,0xfffff
    800059dc:	5f8080e7          	jalr	1528(ra) # 80004fd0 <_ZN20KObjectAllocatorTest5test3Em>
    800059e0:	0080006f          	j	800059e8 <_ZN20KObjectAllocatorTest4testEmm+0x5c>
    switch (i) {
    800059e4:	00000513          	li	a0,0
}
    800059e8:	00813083          	ld	ra,8(sp)
    800059ec:	00013403          	ld	s0,0(sp)
    800059f0:	01010113          	addi	sp,sp,16
    800059f4:	00008067          	ret
        case 0: return test0(size); break;
    800059f8:	ffffe097          	auipc	ra,0xffffe
    800059fc:	a58080e7          	jalr	-1448(ra) # 80003450 <_ZN20KObjectAllocatorTest5test0Em>
    80005a00:	fe9ff06f          	j	800059e8 <_ZN20KObjectAllocatorTest4testEmm+0x5c>
        case 2: return test2(size); break;
    80005a04:	fffff097          	auipc	ra,0xfffff
    80005a08:	d04080e7          	jalr	-764(ra) # 80004708 <_ZN20KObjectAllocatorTest5test2Em>
    80005a0c:	fddff06f          	j	800059e8 <_ZN20KObjectAllocatorTest4testEmm+0x5c>

0000000080005a10 <_ZN20KObjectAllocatorTest8runTestsEv>:
bool KObjectAllocatorTest::runTests() {
    80005a10:	fc010113          	addi	sp,sp,-64
    80005a14:	02113c23          	sd	ra,56(sp)
    80005a18:	02813823          	sd	s0,48(sp)
    80005a1c:	02913423          	sd	s1,40(sp)
    80005a20:	03213023          	sd	s2,32(sp)
    80005a24:	01313c23          	sd	s3,24(sp)
    80005a28:	01413823          	sd	s4,16(sp)
    80005a2c:	01513423          	sd	s5,8(sp)
    80005a30:	01613023          	sd	s6,0(sp)
    80005a34:	04010413          	addi	s0,sp,64
    80005a38:	00050993          	mv	s3,a0
    for (size_t size : sizes)
    80005a3c:	00850a93          	addi	s5,a0,8
    80005a40:	04050b13          	addi	s6,a0,64
    80005a44:	0d6a8863          	beq	s5,s6,80005b14 <_ZN20KObjectAllocatorTest8runTestsEv+0x104>
    80005a48:	000aba03          	ld	s4,0(s5)
    for (size_t i = 0; i < numberOfTests; ++i) {
    80005a4c:	00000493          	li	s1,0
    80005a50:	0700006f          	j	80005ac0 <_ZN20KObjectAllocatorTest8runTestsEv+0xb0>
            printString("Failed KObjectAllocator test ");
    80005a54:	00004517          	auipc	a0,0x4
    80005a58:	aec50513          	addi	a0,a0,-1300 # 80009540 <CONSOLE_STATUS+0x530>
    80005a5c:	00001097          	auipc	ra,0x1
    80005a60:	9f8080e7          	jalr	-1544(ra) # 80006454 <_Z11printStringPKc>
            printInteger(i); printString("\n"); return false;
    80005a64:	00048513          	mv	a0,s1
    80005a68:	00001097          	auipc	ra,0x1
    80005a6c:	a5c080e7          	jalr	-1444(ra) # 800064c4 <_Z12printIntegerm>
    80005a70:	00003517          	auipc	a0,0x3
    80005a74:	6a050513          	addi	a0,a0,1696 # 80009110 <CONSOLE_STATUS+0x100>
    80005a78:	00001097          	auipc	ra,0x1
    80005a7c:	9dc080e7          	jalr	-1572(ra) # 80006454 <_Z11printStringPKc>
}
    80005a80:	00090513          	mv	a0,s2
    80005a84:	03813083          	ld	ra,56(sp)
    80005a88:	03013403          	ld	s0,48(sp)
    80005a8c:	02813483          	ld	s1,40(sp)
    80005a90:	02013903          	ld	s2,32(sp)
    80005a94:	01813983          	ld	s3,24(sp)
    80005a98:	01013a03          	ld	s4,16(sp)
    80005a9c:	00813a83          	ld	s5,8(sp)
    80005aa0:	00013b03          	ld	s6,0(sp)
    80005aa4:	04010113          	addi	sp,sp,64
    80005aa8:	00008067          	ret
        if (i != 0 && (i + 1) % 10 == 0) printString("\n");
    80005aac:	00003517          	auipc	a0,0x3
    80005ab0:	66450513          	addi	a0,a0,1636 # 80009110 <CONSOLE_STATUS+0x100>
    80005ab4:	00001097          	auipc	ra,0x1
    80005ab8:	9a0080e7          	jalr	-1632(ra) # 80006454 <_Z11printStringPKc>
    for (size_t i = 0; i < numberOfTests; ++i) {
    80005abc:	00148493          	addi	s1,s1,1
    80005ac0:	0009b783          	ld	a5,0(s3)
    80005ac4:	04f4f463          	bgeu	s1,a5,80005b0c <_ZN20KObjectAllocatorTest8runTestsEv+0xfc>
        if (!test(i, size)) {
    80005ac8:	000a0613          	mv	a2,s4
    80005acc:	00048593          	mv	a1,s1
    80005ad0:	00098513          	mv	a0,s3
    80005ad4:	00000097          	auipc	ra,0x0
    80005ad8:	eb8080e7          	jalr	-328(ra) # 8000598c <_ZN20KObjectAllocatorTest4testEmm>
    80005adc:	00050913          	mv	s2,a0
    80005ae0:	f6050ae3          	beqz	a0,80005a54 <_ZN20KObjectAllocatorTest8runTestsEv+0x44>
        } else printString("Passed ");
    80005ae4:	00004517          	auipc	a0,0x4
    80005ae8:	98450513          	addi	a0,a0,-1660 # 80009468 <CONSOLE_STATUS+0x458>
    80005aec:	00001097          	auipc	ra,0x1
    80005af0:	968080e7          	jalr	-1688(ra) # 80006454 <_Z11printStringPKc>
        if (i != 0 && (i + 1) % 10 == 0) printString("\n");
    80005af4:	fc0484e3          	beqz	s1,80005abc <_ZN20KObjectAllocatorTest8runTestsEv+0xac>
    80005af8:	00148793          	addi	a5,s1,1
    80005afc:	00a00713          	li	a4,10
    80005b00:	02e7f7b3          	remu	a5,a5,a4
    80005b04:	fa079ce3          	bnez	a5,80005abc <_ZN20KObjectAllocatorTest8runTestsEv+0xac>
    80005b08:	fa5ff06f          	j	80005aac <_ZN20KObjectAllocatorTest8runTestsEv+0x9c>
    for (size_t size : sizes)
    80005b0c:	008a8a93          	addi	s5,s5,8
    80005b10:	f35ff06f          	j	80005a44 <_ZN20KObjectAllocatorTest8runTestsEv+0x34>
    return true;
    80005b14:	00100913          	li	s2,1
    80005b18:	f69ff06f          	j	80005a80 <_ZN20KObjectAllocatorTest8runTestsEv+0x70>

0000000080005b1c <_ZN16KObjectAllocator19printInternalMemoryEv>:
#include "../h/kObjectAllocator.hpp"
#include "../h/print.hpp"

void KObjectAllocator::printInternalMemory() {
    80005b1c:	fc010113          	addi	sp,sp,-64
    80005b20:	02113c23          	sd	ra,56(sp)
    80005b24:	02813823          	sd	s0,48(sp)
    80005b28:	02913423          	sd	s1,40(sp)
    80005b2c:	03213023          	sd	s2,32(sp)
    80005b30:	01313c23          	sd	s3,24(sp)
    80005b34:	01413823          	sd	s4,16(sp)
    80005b38:	01513423          	sd	s5,8(sp)
    80005b3c:	01613023          	sd	s6,0(sp)
    80005b40:	04010413          	addi	s0,sp,64
    80005b44:	00050493          	mv	s1,a0
    size_t segmentSize = 16, printedBytes = 0;
    80005b48:	00000a93          	li	s5,0
    80005b4c:	0f00006f          	j	80005c3c <_ZN16KObjectAllocator19printInternalMemoryEv+0x120>
    while (printedBytes < memorySizeForBits) {
        for (size_t i = 0; i < numberOfAllocations; ++i) {
            for (size_t j = 0; j < segmentSize; ++j) {
                if (j + printedBytes >= memorySizeForBits) printString("    ");
    80005b50:	00004517          	auipc	a0,0x4
    80005b54:	a2050513          	addi	a0,a0,-1504 # 80009570 <CONSOLE_STATUS+0x560>
    80005b58:	00001097          	auipc	ra,0x1
    80005b5c:	8fc080e7          	jalr	-1796(ra) # 80006454 <_Z11printStringPKc>
    80005b60:	04c0006f          	j	80005bac <_ZN16KObjectAllocator19printInternalMemoryEv+0x90>
                else {
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80005b64:	00000513          	li	a0,0
    80005b68:	00001097          	auipc	ra,0x1
    80005b6c:	95c080e7          	jalr	-1700(ra) # 800064c4 <_Z12printIntegerm>
    80005b70:	0740006f          	j	80005be4 <_ZN16KObjectAllocator19printInternalMemoryEv+0xc8>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    80005b74:	00000513          	li	a0,0
    80005b78:	00001097          	auipc	ra,0x1
    80005b7c:	94c080e7          	jalr	-1716(ra) # 800064c4 <_Z12printIntegerm>
                    printInteger((uint64) bitVectors[i][j + printedBytes]);
    80005b80:	0284b783          	ld	a5,40(s1)
    80005b84:	014787b3          	add	a5,a5,s4
    80005b88:	0007b783          	ld	a5,0(a5)
    80005b8c:	013789b3          	add	s3,a5,s3
    80005b90:	0009c503          	lbu	a0,0(s3)
    80005b94:	00001097          	auipc	ra,0x1
    80005b98:	930080e7          	jalr	-1744(ra) # 800064c4 <_Z12printIntegerm>
                    printString(" ");
    80005b9c:	00003517          	auipc	a0,0x3
    80005ba0:	78450513          	addi	a0,a0,1924 # 80009320 <CONSOLE_STATUS+0x310>
    80005ba4:	00001097          	auipc	ra,0x1
    80005ba8:	8b0080e7          	jalr	-1872(ra) # 80006454 <_Z11printStringPKc>
            for (size_t j = 0; j < segmentSize; ++j) {
    80005bac:	00190913          	addi	s2,s2,1
    80005bb0:	00f00793          	li	a5,15
    80005bb4:	0527e863          	bltu	a5,s2,80005c04 <_ZN16KObjectAllocator19printInternalMemoryEv+0xe8>
                if (j + printedBytes >= memorySizeForBits) printString("    ");
    80005bb8:	012a89b3          	add	s3,s5,s2
    80005bbc:	0104b783          	ld	a5,16(s1)
    80005bc0:	f8f9f8e3          	bgeu	s3,a5,80005b50 <_ZN16KObjectAllocator19printInternalMemoryEv+0x34>
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80005bc4:	0284b783          	ld	a5,40(s1)
    80005bc8:	003b1a13          	slli	s4,s6,0x3
    80005bcc:	014787b3          	add	a5,a5,s4
    80005bd0:	0007b783          	ld	a5,0(a5)
    80005bd4:	013787b3          	add	a5,a5,s3
    80005bd8:	0007c703          	lbu	a4,0(a5)
    80005bdc:	06300793          	li	a5,99
    80005be0:	f8e7f2e3          	bgeu	a5,a4,80005b64 <_ZN16KObjectAllocator19printInternalMemoryEv+0x48>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    80005be4:	0284b783          	ld	a5,40(s1)
    80005be8:	014787b3          	add	a5,a5,s4
    80005bec:	0007b783          	ld	a5,0(a5)
    80005bf0:	013787b3          	add	a5,a5,s3
    80005bf4:	0007c703          	lbu	a4,0(a5)
    80005bf8:	00900793          	li	a5,9
    80005bfc:	f8e7e2e3          	bltu	a5,a4,80005b80 <_ZN16KObjectAllocator19printInternalMemoryEv+0x64>
    80005c00:	f75ff06f          	j	80005b74 <_ZN16KObjectAllocator19printInternalMemoryEv+0x58>
                }
            }
            printString("  ");
    80005c04:	00004517          	auipc	a0,0x4
    80005c08:	97450513          	addi	a0,a0,-1676 # 80009578 <CONSOLE_STATUS+0x568>
    80005c0c:	00001097          	auipc	ra,0x1
    80005c10:	848080e7          	jalr	-1976(ra) # 80006454 <_Z11printStringPKc>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005c14:	001b0b13          	addi	s6,s6,1
    80005c18:	0304b783          	ld	a5,48(s1)
    80005c1c:	00fb7663          	bgeu	s6,a5,80005c28 <_ZN16KObjectAllocator19printInternalMemoryEv+0x10c>
            for (size_t j = 0; j < segmentSize; ++j) {
    80005c20:	00000913          	li	s2,0
    80005c24:	f8dff06f          	j	80005bb0 <_ZN16KObjectAllocator19printInternalMemoryEv+0x94>
        }
        printString("\n");
    80005c28:	00003517          	auipc	a0,0x3
    80005c2c:	4e850513          	addi	a0,a0,1256 # 80009110 <CONSOLE_STATUS+0x100>
    80005c30:	00001097          	auipc	ra,0x1
    80005c34:	824080e7          	jalr	-2012(ra) # 80006454 <_Z11printStringPKc>
        printedBytes += segmentSize;
    80005c38:	010a8a93          	addi	s5,s5,16
    while (printedBytes < memorySizeForBits) {
    80005c3c:	0104b783          	ld	a5,16(s1)
    80005c40:	00faf663          	bgeu	s5,a5,80005c4c <_ZN16KObjectAllocator19printInternalMemoryEv+0x130>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005c44:	00000b13          	li	s6,0
    80005c48:	fd1ff06f          	j	80005c18 <_ZN16KObjectAllocator19printInternalMemoryEv+0xfc>
    }

    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005c4c:	00000993          	li	s3,0
    80005c50:	0180006f          	j	80005c68 <_ZN16KObjectAllocator19printInternalMemoryEv+0x14c>
        for (size_t j = 0; j < segmentSize - 1; ++j)
            printString("----");
        printString("----  ");
    80005c54:	00004517          	auipc	a0,0x4
    80005c58:	93450513          	addi	a0,a0,-1740 # 80009588 <CONSOLE_STATUS+0x578>
    80005c5c:	00000097          	auipc	ra,0x0
    80005c60:	7f8080e7          	jalr	2040(ra) # 80006454 <_Z11printStringPKc>
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005c64:	00198993          	addi	s3,s3,1
    80005c68:	0304b783          	ld	a5,48(s1)
    80005c6c:	02f9f463          	bgeu	s3,a5,80005c94 <_ZN16KObjectAllocator19printInternalMemoryEv+0x178>
        for (size_t j = 0; j < segmentSize - 1; ++j)
    80005c70:	00000913          	li	s2,0
    80005c74:	00e00793          	li	a5,14
    80005c78:	fd27eee3          	bltu	a5,s2,80005c54 <_ZN16KObjectAllocator19printInternalMemoryEv+0x138>
            printString("----");
    80005c7c:	00004517          	auipc	a0,0x4
    80005c80:	90450513          	addi	a0,a0,-1788 # 80009580 <CONSOLE_STATUS+0x570>
    80005c84:	00000097          	auipc	ra,0x0
    80005c88:	7d0080e7          	jalr	2000(ra) # 80006454 <_Z11printStringPKc>
        for (size_t j = 0; j < segmentSize - 1; ++j)
    80005c8c:	00190913          	addi	s2,s2,1
    80005c90:	fe5ff06f          	j	80005c74 <_ZN16KObjectAllocator19printInternalMemoryEv+0x158>
    }
    printString("\n");
    80005c94:	00003517          	auipc	a0,0x3
    80005c98:	47c50513          	addi	a0,a0,1148 # 80009110 <CONSOLE_STATUS+0x100>
    80005c9c:	00000097          	auipc	ra,0x0
    80005ca0:	7b8080e7          	jalr	1976(ra) # 80006454 <_Z11printStringPKc>

    printedBytes = memorySizeForBits;
    80005ca4:	0104ba03          	ld	s4,16(s1)
    80005ca8:	1000006f          	j	80005da8 <_ZN16KObjectAllocator19printInternalMemoryEv+0x28c>
    while(printedBytes < initialNumberOfObjects * objectSize) {
        for (size_t i = 0; i < numberOfAllocations; ++i) {
            for (size_t j = 0; j < segmentSize; ++j) {
                if (j + printedBytes - memorySizeForBits >= initialNumberOfObjects * objectSize) printString("    ");
    80005cac:	00004517          	auipc	a0,0x4
    80005cb0:	8c450513          	addi	a0,a0,-1852 # 80009570 <CONSOLE_STATUS+0x560>
    80005cb4:	00000097          	auipc	ra,0x0
    80005cb8:	7a0080e7          	jalr	1952(ra) # 80006454 <_Z11printStringPKc>
    80005cbc:	04c0006f          	j	80005d08 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1ec>
                else {
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80005cc0:	00000513          	li	a0,0
    80005cc4:	00001097          	auipc	ra,0x1
    80005cc8:	800080e7          	jalr	-2048(ra) # 800064c4 <_Z12printIntegerm>
    80005ccc:	0840006f          	j	80005d50 <_ZN16KObjectAllocator19printInternalMemoryEv+0x234>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    80005cd0:	00000513          	li	a0,0
    80005cd4:	00000097          	auipc	ra,0x0
    80005cd8:	7f0080e7          	jalr	2032(ra) # 800064c4 <_Z12printIntegerm>
                    printInteger((uint64) bitVectors[i][j + printedBytes]);
    80005cdc:	0284b783          	ld	a5,40(s1)
    80005ce0:	016787b3          	add	a5,a5,s6
    80005ce4:	0007b783          	ld	a5,0(a5)
    80005ce8:	013789b3          	add	s3,a5,s3
    80005cec:	0009c503          	lbu	a0,0(s3)
    80005cf0:	00000097          	auipc	ra,0x0
    80005cf4:	7d4080e7          	jalr	2004(ra) # 800064c4 <_Z12printIntegerm>
                    printString(" ");
    80005cf8:	00003517          	auipc	a0,0x3
    80005cfc:	62850513          	addi	a0,a0,1576 # 80009320 <CONSOLE_STATUS+0x310>
    80005d00:	00000097          	auipc	ra,0x0
    80005d04:	754080e7          	jalr	1876(ra) # 80006454 <_Z11printStringPKc>
            for (size_t j = 0; j < segmentSize; ++j) {
    80005d08:	00190913          	addi	s2,s2,1
    80005d0c:	00f00793          	li	a5,15
    80005d10:	0727e063          	bltu	a5,s2,80005d70 <_ZN16KObjectAllocator19printInternalMemoryEv+0x254>
                if (j + printedBytes - memorySizeForBits >= initialNumberOfObjects * objectSize) printString("    ");
    80005d14:	012a09b3          	add	s3,s4,s2
    80005d18:	0104b703          	ld	a4,16(s1)
    80005d1c:	40e98733          	sub	a4,s3,a4
    80005d20:	0004b783          	ld	a5,0(s1)
    80005d24:	0184b683          	ld	a3,24(s1)
    80005d28:	02d787b3          	mul	a5,a5,a3
    80005d2c:	f8f770e3          	bgeu	a4,a5,80005cac <_ZN16KObjectAllocator19printInternalMemoryEv+0x190>
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80005d30:	0284b783          	ld	a5,40(s1)
    80005d34:	003a9b13          	slli	s6,s5,0x3
    80005d38:	016787b3          	add	a5,a5,s6
    80005d3c:	0007b783          	ld	a5,0(a5)
    80005d40:	013787b3          	add	a5,a5,s3
    80005d44:	0007c703          	lbu	a4,0(a5)
    80005d48:	06300793          	li	a5,99
    80005d4c:	f6e7fae3          	bgeu	a5,a4,80005cc0 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1a4>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    80005d50:	0284b783          	ld	a5,40(s1)
    80005d54:	016787b3          	add	a5,a5,s6
    80005d58:	0007b783          	ld	a5,0(a5)
    80005d5c:	013787b3          	add	a5,a5,s3
    80005d60:	0007c703          	lbu	a4,0(a5)
    80005d64:	00900793          	li	a5,9
    80005d68:	f6e7eae3          	bltu	a5,a4,80005cdc <_ZN16KObjectAllocator19printInternalMemoryEv+0x1c0>
    80005d6c:	f65ff06f          	j	80005cd0 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1b4>
                }
            }
            printString("  ");
    80005d70:	00004517          	auipc	a0,0x4
    80005d74:	80850513          	addi	a0,a0,-2040 # 80009578 <CONSOLE_STATUS+0x568>
    80005d78:	00000097          	auipc	ra,0x0
    80005d7c:	6dc080e7          	jalr	1756(ra) # 80006454 <_Z11printStringPKc>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005d80:	001a8a93          	addi	s5,s5,1
    80005d84:	0304b783          	ld	a5,48(s1)
    80005d88:	00faf663          	bgeu	s5,a5,80005d94 <_ZN16KObjectAllocator19printInternalMemoryEv+0x278>
            for (size_t j = 0; j < segmentSize; ++j) {
    80005d8c:	00000913          	li	s2,0
    80005d90:	f7dff06f          	j	80005d0c <_ZN16KObjectAllocator19printInternalMemoryEv+0x1f0>
        }
        printString("\n");
    80005d94:	00003517          	auipc	a0,0x3
    80005d98:	37c50513          	addi	a0,a0,892 # 80009110 <CONSOLE_STATUS+0x100>
    80005d9c:	00000097          	auipc	ra,0x0
    80005da0:	6b8080e7          	jalr	1720(ra) # 80006454 <_Z11printStringPKc>
        printedBytes += segmentSize;
    80005da4:	010a0a13          	addi	s4,s4,16
    while(printedBytes < initialNumberOfObjects * objectSize) {
    80005da8:	0004b783          	ld	a5,0(s1)
    80005dac:	0184b703          	ld	a4,24(s1)
    80005db0:	02e787b3          	mul	a5,a5,a4
    80005db4:	00fa7663          	bgeu	s4,a5,80005dc0 <_ZN16KObjectAllocator19printInternalMemoryEv+0x2a4>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005db8:	00000a93          	li	s5,0
    80005dbc:	fc9ff06f          	j	80005d84 <_ZN16KObjectAllocator19printInternalMemoryEv+0x268>
    }
}
    80005dc0:	03813083          	ld	ra,56(sp)
    80005dc4:	03013403          	ld	s0,48(sp)
    80005dc8:	02813483          	ld	s1,40(sp)
    80005dcc:	02013903          	ld	s2,32(sp)
    80005dd0:	01813983          	ld	s3,24(sp)
    80005dd4:	01013a03          	ld	s4,16(sp)
    80005dd8:	00813a83          	ld	s5,8(sp)
    80005ddc:	00013b03          	ld	s6,0(sp)
    80005de0:	04010113          	addi	sp,sp,64
    80005de4:	00008067          	ret

0000000080005de8 <_ZN16KObjectAllocator18allocateFreeObjectEv>:
        }
    }
    return nullptr;
}

void* KObjectAllocator::allocateFreeObject() {
    80005de8:	ff010113          	addi	sp,sp,-16
    80005dec:	00813423          	sd	s0,8(sp)
    80005df0:	01010413          	addi	s0,sp,16
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005df4:	00000e13          	li	t3,0
    80005df8:	03053783          	ld	a5,48(a0)
    80005dfc:	0afe7e63          	bgeu	t3,a5,80005eb8 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xd0>
        for (size_t j = nextNonTakenByte; j >= i * memorySizeForBits && j < (i + 1) * memorySizeForBits; ++j) {
    80005e00:	03853303          	ld	t1,56(a0)
    80005e04:	0480006f          	j	80005e4c <_ZN16KObjectAllocator18allocateFreeObjectEv+0x64>
                    printString("j: "); printInteger(j); printString("\n");
                    printString("nextNonTakenByte: "); printInteger(nextNonTakenByte); printString("\n");
                    printString("Byte: "); printInteger(byte); printString("\n");
                    printString("Bit: "); printInteger(bit); printString("\n");
                    printString("========================");*/
                    bitVectors[i][byte] |= (uint8) 1 << (bit - 1);
    80005e08:	00100693          	li	a3,1
    80005e0c:	011698bb          	sllw	a7,a3,a7
    80005e10:	0115e5b3          	or	a1,a1,a7
    80005e14:	00b78023          	sb	a1,0(a5)
                    return &objectVectors[i][(byte * 8 + 8 - bit) * objectSize];
    80005e18:	02053783          	ld	a5,32(a0)
    80005e1c:	01078833          	add	a6,a5,a6
    80005e20:	00083783          	ld	a5,0(a6)
    80005e24:	00160613          	addi	a2,a2,1
    80005e28:	00361613          	slli	a2,a2,0x3
    80005e2c:	40e60733          	sub	a4,a2,a4
    80005e30:	01853503          	ld	a0,24(a0)
    80005e34:	02a70733          	mul	a4,a4,a0
    80005e38:	00e78533          	add	a0,a5,a4
                }
            }
        }
    }
    return nullptr;
}
    80005e3c:	00813403          	ld	s0,8(sp)
    80005e40:	01010113          	addi	sp,sp,16
    80005e44:	00008067          	ret
        for (size_t j = nextNonTakenByte; j >= i * memorySizeForBits && j < (i + 1) * memorySizeForBits; ++j) {
    80005e48:	00130313          	addi	t1,t1,1
    80005e4c:	01053783          	ld	a5,16(a0)
    80005e50:	03c78633          	mul	a2,a5,t3
    80005e54:	04c36e63          	bltu	t1,a2,80005eb0 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xc8>
    80005e58:	001e0713          	addi	a4,t3,1
    80005e5c:	02e787b3          	mul	a5,a5,a4
    80005e60:	04f37863          	bgeu	t1,a5,80005eb0 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xc8>
            size_t byte = j - i * memorySizeForBits;
    80005e64:	40c30633          	sub	a2,t1,a2
            for (size_t bit = 8; bit != 0; --bit) {
    80005e68:	00800713          	li	a4,8
    80005e6c:	fc070ee3          	beqz	a4,80005e48 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x60>
                nextNonTakenByte = j + (bit == 1);
    80005e70:	fff70793          	addi	a5,a4,-1
    80005e74:	0017b793          	seqz	a5,a5
    80005e78:	006787b3          	add	a5,a5,t1
    80005e7c:	02f53c23          	sd	a5,56(a0)
                if ((bitVectors[i][byte] >> (bit - 1) & (uint8) 1) == 0) {
    80005e80:	02853783          	ld	a5,40(a0)
    80005e84:	003e1813          	slli	a6,t3,0x3
    80005e88:	010787b3          	add	a5,a5,a6
    80005e8c:	0007b783          	ld	a5,0(a5)
    80005e90:	00c787b3          	add	a5,a5,a2
    80005e94:	0007c583          	lbu	a1,0(a5)
    80005e98:	fff7089b          	addiw	a7,a4,-1
    80005e9c:	4115d6bb          	sraw	a3,a1,a7
    80005ea0:	0016f693          	andi	a3,a3,1
    80005ea4:	f60682e3          	beqz	a3,80005e08 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x20>
            for (size_t bit = 8; bit != 0; --bit) {
    80005ea8:	fff70713          	addi	a4,a4,-1
    80005eac:	fc1ff06f          	j	80005e6c <_ZN16KObjectAllocator18allocateFreeObjectEv+0x84>
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005eb0:	001e0e13          	addi	t3,t3,1
    80005eb4:	f45ff06f          	j	80005df8 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x10>
    return nullptr;
    80005eb8:	00000513          	li	a0,0
    80005ebc:	f81ff06f          	j	80005e3c <_ZN16KObjectAllocator18allocateFreeObjectEv+0x54>

0000000080005ec0 <_ZN16KObjectAllocator10freeObjectEPv>:

void KObjectAllocator::freeObject(void* objectPointer) {
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005ec0:	00000713          	li	a4,0
    80005ec4:	0080006f          	j	80005ecc <_ZN16KObjectAllocator10freeObjectEPv+0xc>
    80005ec8:	00170713          	addi	a4,a4,1
    80005ecc:	03053783          	ld	a5,48(a0)
    80005ed0:	06f77463          	bgeu	a4,a5,80005f38 <_ZN16KObjectAllocator10freeObjectEPv+0x78>
        if ((uint8*) objectPointer < objectVectors[i]) continue;
    80005ed4:	02053783          	ld	a5,32(a0)
    80005ed8:	00371693          	slli	a3,a4,0x3
    80005edc:	00d787b3          	add	a5,a5,a3
    80005ee0:	0007b783          	ld	a5,0(a5)
    80005ee4:	fef5e2e3          	bltu	a1,a5,80005ec8 <_ZN16KObjectAllocator10freeObjectEPv+0x8>
        size_t idiff = (size_t) ((uint8*) objectPointer - objectVectors[i]);
    80005ee8:	40f587b3          	sub	a5,a1,a5
        size_t byte = idiff / objectSize / 8;
    80005eec:	01853603          	ld	a2,24(a0)
    80005ef0:	02c7d7b3          	divu	a5,a5,a2
    80005ef4:	0037d813          	srli	a6,a5,0x3
        if (byte >= memorySizeForBits) continue;
    80005ef8:	01053603          	ld	a2,16(a0)
    80005efc:	fcc876e3          	bgeu	a6,a2,80005ec8 <_ZN16KObjectAllocator10freeObjectEPv+0x8>
        size_t bit = idiff / objectSize - byte * 8;
    80005f00:	0077f793          	andi	a5,a5,7
        bitVectors[i][byte] &= ~((uint8) 1 << (7 - bit));
    80005f04:	02853603          	ld	a2,40(a0)
    80005f08:	00d606b3          	add	a3,a2,a3
    80005f0c:	0006b703          	ld	a4,0(a3)
    80005f10:	01070733          	add	a4,a4,a6
    80005f14:	00700693          	li	a3,7
    80005f18:	40f686bb          	subw	a3,a3,a5
    80005f1c:	00100793          	li	a5,1
    80005f20:	00d797bb          	sllw	a5,a5,a3
    80005f24:	fff7c793          	not	a5,a5
    80005f28:	00074683          	lbu	a3,0(a4)
    80005f2c:	00d7f7b3          	and	a5,a5,a3
    80005f30:	00f70023          	sb	a5,0(a4)
        return;
    80005f34:	00008067          	ret
void KObjectAllocator::freeObject(void* objectPointer) {
    80005f38:	ff010113          	addi	sp,sp,-16
    80005f3c:	00113423          	sd	ra,8(sp)
    80005f40:	00813023          	sd	s0,0(sp)
    80005f44:	01010413          	addi	s0,sp,16
    }
    printString("ERROR: Object not allocated in this KObjectAllocator\n");
    80005f48:	00003517          	auipc	a0,0x3
    80005f4c:	64850513          	addi	a0,a0,1608 # 80009590 <CONSOLE_STATUS+0x580>
    80005f50:	00000097          	auipc	ra,0x0
    80005f54:	504080e7          	jalr	1284(ra) # 80006454 <_Z11printStringPKc>
}
    80005f58:	00813083          	ld	ra,8(sp)
    80005f5c:	00013403          	ld	s0,0(sp)
    80005f60:	01010113          	addi	sp,sp,16
    80005f64:	00008067          	ret

0000000080005f68 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv>:

bool KObjectAllocator::handleNotEnoughMemoryProblem() {
    80005f68:	fb010113          	addi	sp,sp,-80
    80005f6c:	04113423          	sd	ra,72(sp)
    80005f70:	04813023          	sd	s0,64(sp)
    80005f74:	02913c23          	sd	s1,56(sp)
    80005f78:	03213823          	sd	s2,48(sp)
    80005f7c:	03313423          	sd	s3,40(sp)
    80005f80:	03413023          	sd	s4,32(sp)
    80005f84:	01513c23          	sd	s5,24(sp)
    80005f88:	01613823          	sd	s6,16(sp)
    80005f8c:	01713423          	sd	s7,8(sp)
    80005f90:	05010413          	addi	s0,sp,80
    80005f94:	00050493          	mv	s1,a0
    size_t newNumberOfAllocations = 2 * numberOfAllocations;
    80005f98:	03053a03          	ld	s4,48(a0)
    80005f9c:	001a1993          	slli	s3,s4,0x1
    size_t newNumberOfObjects = 2 * numberOfObjects;
    80005fa0:	00853a83          	ld	s5,8(a0)
    uint8** newBitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(
    80005fa4:	ffffc097          	auipc	ra,0xffffc
    80005fa8:	d08080e7          	jalr	-760(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80005fac:	004a1a13          	slli	s4,s4,0x4
    80005fb0:	000a0593          	mv	a1,s4
    80005fb4:	ffffc097          	auipc	ra,0xffffc
    80005fb8:	ddc080e7          	jalr	-548(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
            newNumberOfAllocations * sizeof(uint8*)
    );
    if (!newBitVectors) return false;
    80005fbc:	14050663          	beqz	a0,80006108 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a0>
    80005fc0:	001a9a93          	slli	s5,s5,0x1
    80005fc4:	00050913          	mv	s2,a0
    uint8** newObjectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(
    80005fc8:	ffffc097          	auipc	ra,0xffffc
    80005fcc:	ce4080e7          	jalr	-796(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    80005fd0:	000a0593          	mv	a1,s4
    80005fd4:	ffffc097          	auipc	ra,0xffffc
    80005fd8:	dbc080e7          	jalr	-580(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80005fdc:	00050a13          	mv	s4,a0
            newNumberOfAllocations * sizeof(uint8*)
    );
    if (!newObjectVectors) return false;
    80005fe0:	14050c63          	beqz	a0,80006138 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1d0>

    for (size_t i = 0; i < numberOfAllocations; ++i) newBitVectors[i] = bitVectors[i];
    80005fe4:	00000793          	li	a5,0
    80005fe8:	0304bb03          	ld	s6,48(s1)
    80005fec:	0367f463          	bgeu	a5,s6,80006014 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xac>
    80005ff0:	0284b703          	ld	a4,40(s1)
    80005ff4:	00379693          	slli	a3,a5,0x3
    80005ff8:	00d90633          	add	a2,s2,a3
    80005ffc:	00d70733          	add	a4,a4,a3
    80006000:	00073703          	ld	a4,0(a4)
    80006004:	00e63023          	sd	a4,0(a2)
    80006008:	00178793          	addi	a5,a5,1
    8000600c:	fddff06f          	j	80005fe8 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x80>
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i) {
    80006010:	001b0b13          	addi	s6,s6,1
    80006014:	053b7063          	bgeu	s6,s3,80006054 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xec>
        newBitVectors[i] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80006018:	ffffc097          	auipc	ra,0xffffc
    8000601c:	c94080e7          	jalr	-876(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
        memorySizeForBits + initialNumberOfObjects * objectSize );
    80006020:	0104b583          	ld	a1,16(s1)
    80006024:	0004b783          	ld	a5,0(s1)
    80006028:	0184b703          	ld	a4,24(s1)
    8000602c:	02e787b3          	mul	a5,a5,a4
        newBitVectors[i] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80006030:	003b1b93          	slli	s7,s6,0x3
    80006034:	01790bb3          	add	s7,s2,s7
    80006038:	00f585b3          	add	a1,a1,a5
    8000603c:	ffffc097          	auipc	ra,0xffffc
    80006040:	d54080e7          	jalr	-684(ra) # 80001d90 <_ZN15MemoryAllocator10kmem_allocEm>
    80006044:	00abb023          	sd	a0,0(s7)
        if (!newBitVectors[i]) return false;
    80006048:	fc0514e3          	bnez	a0,80006010 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xa8>
    8000604c:	00000513          	li	a0,0
    80006050:	0bc0006f          	j	8000610c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a4>
    }
    for (size_t i = 0; i < newNumberOfAllocations; ++i) newObjectVectors[i] = newBitVectors[i] + memorySizeForBits;
    80006054:	00000713          	li	a4,0
    80006058:	03377463          	bgeu	a4,s3,80006080 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x118>
    8000605c:	00371793          	slli	a5,a4,0x3
    80006060:	00f906b3          	add	a3,s2,a5
    80006064:	0006b683          	ld	a3,0(a3)
    80006068:	0104b603          	ld	a2,16(s1)
    8000606c:	00fa07b3          	add	a5,s4,a5
    80006070:	00c686b3          	add	a3,a3,a2
    80006074:	00d7b023          	sd	a3,0(a5)
    80006078:	00170713          	addi	a4,a4,1
    8000607c:	fddff06f          	j	80006058 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xf0>
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i)
    80006080:	0304b683          	ld	a3,48(s1)
    80006084:	0280006f          	j	800060ac <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x144>
        for (size_t j = 0; j < memorySizeForBits; newBitVectors[i][j++] = 0);
    80006088:	00369713          	slli	a4,a3,0x3
    8000608c:	00e90733          	add	a4,s2,a4
    80006090:	00073703          	ld	a4,0(a4)
    80006094:	00f70733          	add	a4,a4,a5
    80006098:	00070023          	sb	zero,0(a4)
    8000609c:	00178793          	addi	a5,a5,1
    800060a0:	0104b703          	ld	a4,16(s1)
    800060a4:	fee7e2e3          	bltu	a5,a4,80006088 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x120>
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i)
    800060a8:	00168693          	addi	a3,a3,1
    800060ac:	0136f663          	bgeu	a3,s3,800060b8 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x150>
        for (size_t j = 0; j < memorySizeForBits; newBitVectors[i][j++] = 0);
    800060b0:	00000793          	li	a5,0
    800060b4:	fedff06f          	j	800060a0 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x138>
    MemoryAllocator::instance()->kmem_free(bitVectors);
    800060b8:	ffffc097          	auipc	ra,0xffffc
    800060bc:	bf4080e7          	jalr	-1036(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800060c0:	0284b583          	ld	a1,40(s1)
    800060c4:	ffffc097          	auipc	ra,0xffffc
    800060c8:	d74080e7          	jalr	-652(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(objectVectors);
    800060cc:	ffffc097          	auipc	ra,0xffffc
    800060d0:	be0080e7          	jalr	-1056(ra) # 80001cac <_ZN15MemoryAllocator8instanceEv>
    800060d4:	0204b583          	ld	a1,32(s1)
    800060d8:	ffffc097          	auipc	ra,0xffffc
    800060dc:	d60080e7          	jalr	-672(ra) # 80001e38 <_ZN15MemoryAllocator9kmem_freeEPv>

    numberOfObjects = newNumberOfObjects;
    800060e0:	0154b423          	sd	s5,8(s1)
    nextNonTakenByte = numberOfAllocations * memorySizeForBits;
    800060e4:	0304b783          	ld	a5,48(s1)
    800060e8:	0104b703          	ld	a4,16(s1)
    800060ec:	02e787b3          	mul	a5,a5,a4
    800060f0:	02f4bc23          	sd	a5,56(s1)
    numberOfAllocations = newNumberOfAllocations;
    800060f4:	0334b823          	sd	s3,48(s1)
    bitVectors = newBitVectors;
    800060f8:	0324b423          	sd	s2,40(s1)
    objectVectors = newObjectVectors;
    800060fc:	0344b023          	sd	s4,32(s1)

    return true;
    80006100:	00100513          	li	a0,1
    80006104:	0080006f          	j	8000610c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a4>
    if (!newBitVectors) return false;
    80006108:	00000513          	li	a0,0
}
    8000610c:	04813083          	ld	ra,72(sp)
    80006110:	04013403          	ld	s0,64(sp)
    80006114:	03813483          	ld	s1,56(sp)
    80006118:	03013903          	ld	s2,48(sp)
    8000611c:	02813983          	ld	s3,40(sp)
    80006120:	02013a03          	ld	s4,32(sp)
    80006124:	01813a83          	ld	s5,24(sp)
    80006128:	01013b03          	ld	s6,16(sp)
    8000612c:	00813b83          	ld	s7,8(sp)
    80006130:	05010113          	addi	sp,sp,80
    80006134:	00008067          	ret
    if (!newObjectVectors) return false;
    80006138:	00000513          	li	a0,0
    8000613c:	fd1ff06f          	j	8000610c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a4>

0000000080006140 <_ZN16KObjectAllocator17allocateNewObjectEv>:
void* KObjectAllocator::allocateNewObject() {
    80006140:	fe010113          	addi	sp,sp,-32
    80006144:	00113c23          	sd	ra,24(sp)
    80006148:	00813823          	sd	s0,16(sp)
    8000614c:	00913423          	sd	s1,8(sp)
    80006150:	01213023          	sd	s2,0(sp)
    80006154:	02010413          	addi	s0,sp,32
    80006158:	00050913          	mv	s2,a0
    void* returnedObject = allocateFreeObject();
    8000615c:	00000097          	auipc	ra,0x0
    80006160:	c8c080e7          	jalr	-884(ra) # 80005de8 <_ZN16KObjectAllocator18allocateFreeObjectEv>
    80006164:	00050493          	mv	s1,a0
    if (returnedObject) {
    80006168:	02050063          	beqz	a0,80006188 <_ZN16KObjectAllocator17allocateNewObjectEv+0x48>
}
    8000616c:	00048513          	mv	a0,s1
    80006170:	01813083          	ld	ra,24(sp)
    80006174:	01013403          	ld	s0,16(sp)
    80006178:	00813483          	ld	s1,8(sp)
    8000617c:	00013903          	ld	s2,0(sp)
    80006180:	02010113          	addi	sp,sp,32
    80006184:	00008067          	ret
    nextNonTakenByte = 0;   // start search from start
    80006188:	02093c23          	sd	zero,56(s2)
    returnedObject = allocateFreeObject();
    8000618c:	00090513          	mv	a0,s2
    80006190:	00000097          	auipc	ra,0x0
    80006194:	c58080e7          	jalr	-936(ra) # 80005de8 <_ZN16KObjectAllocator18allocateFreeObjectEv>
    80006198:	00050493          	mv	s1,a0
    if (returnedObject) {
    8000619c:	fc0518e3          	bnez	a0,8000616c <_ZN16KObjectAllocator17allocateNewObjectEv+0x2c>
    if (handleNotEnoughMemoryProblem()) {
    800061a0:	00090513          	mv	a0,s2
    800061a4:	00000097          	auipc	ra,0x0
    800061a8:	dc4080e7          	jalr	-572(ra) # 80005f68 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv>
    800061ac:	fc0500e3          	beqz	a0,8000616c <_ZN16KObjectAllocator17allocateNewObjectEv+0x2c>
        returnedObject = allocateFreeObject();
    800061b0:	00090513          	mv	a0,s2
    800061b4:	00000097          	auipc	ra,0x0
    800061b8:	c34080e7          	jalr	-972(ra) # 80005de8 <_ZN16KObjectAllocator18allocateFreeObjectEv>
    800061bc:	00050493          	mv	s1,a0
        if (returnedObject) {
    800061c0:	fadff06f          	j	8000616c <_ZN16KObjectAllocator17allocateNewObjectEv+0x2c>

00000000800061c4 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"

void Riscv::popSppSpie()
{
    800061c4:	ff010113          	addi	sp,sp,-16
    800061c8:	00813423          	sd	s0,8(sp)
    800061cc:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800061d0:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800061d4:	10200073          	sret
}
    800061d8:	00813403          	ld	s0,8(sp)
    800061dc:	01010113          	addi	sp,sp,16
    800061e0:	00008067          	ret

00000000800061e4 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    800061e4:	fa010113          	addi	sp,sp,-96
    800061e8:	04113c23          	sd	ra,88(sp)
    800061ec:	04813823          	sd	s0,80(sp)
    800061f0:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800061f4:	142027f3          	csrr	a5,scause
    800061f8:	fcf43423          	sd	a5,-56(s0)
    return scause;
    800061fc:	fc843703          	ld	a4,-56(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80006200:	ff870693          	addi	a3,a4,-8
    80006204:	00100793          	li	a5,1
    80006208:	02d7fa63          	bgeu	a5,a3,8000623c <_ZN5Riscv20handleSupervisorTrapEv+0x58>
        TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    8000620c:	fff00793          	li	a5,-1
    80006210:	03f79793          	slli	a5,a5,0x3f
    80006214:	00178793          	addi	a5,a5,1
    80006218:	06f70863          	beq	a4,a5,80006288 <_ZN5Riscv20handleSupervisorTrapEv+0xa4>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    8000621c:	fff00793          	li	a5,-1
    80006220:	03f79793          	slli	a5,a5,0x3f
    80006224:	00978793          	addi	a5,a5,9
    80006228:	0cf70c63          	beq	a4,a5,80006300 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
    }
    else
    {
        // unexpected trap cause
    }
    8000622c:	05813083          	ld	ra,88(sp)
    80006230:	05013403          	ld	s0,80(sp)
    80006234:	06010113          	addi	sp,sp,96
    80006238:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000623c:	141027f3          	csrr	a5,sepc
    80006240:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80006244:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80006248:	00478793          	addi	a5,a5,4
    8000624c:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80006250:	100027f3          	csrr	a5,sstatus
    80006254:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80006258:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    8000625c:	faf43823          	sd	a5,-80(s0)
        TCB::timeSliceCounter = 0;
    80006260:	00004797          	auipc	a5,0x4
    80006264:	3307b783          	ld	a5,816(a5) # 8000a590 <_GLOBAL_OFFSET_TABLE_+0x28>
    80006268:	0007b023          	sd	zero,0(a5)
        TCB::dispatch();
    8000626c:	ffffc097          	auipc	ra,0xffffc
    80006270:	8e0080e7          	jalr	-1824(ra) # 80001b4c <_ZN3TCB8dispatchEv>
        w_sstatus(sstatus);
    80006274:	fb043783          	ld	a5,-80(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80006278:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    8000627c:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80006280:	14179073          	csrw	sepc,a5
}
    80006284:	fa9ff06f          	j	8000622c <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80006288:	00200793          	li	a5,2
    8000628c:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80006290:	00004717          	auipc	a4,0x4
    80006294:	30073703          	ld	a4,768(a4) # 8000a590 <_GLOBAL_OFFSET_TABLE_+0x28>
    80006298:	00073783          	ld	a5,0(a4)
    8000629c:	00178793          	addi	a5,a5,1
    800062a0:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    800062a4:	00004717          	auipc	a4,0x4
    800062a8:	30c73703          	ld	a4,780(a4) # 8000a5b0 <_GLOBAL_OFFSET_TABLE_+0x48>
    800062ac:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    800062b0:	02073703          	ld	a4,32(a4)
    800062b4:	f6e7ece3          	bltu	a5,a4,8000622c <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800062b8:	141027f3          	csrr	a5,sepc
    800062bc:	fef43423          	sd	a5,-24(s0)
    return sepc;
    800062c0:	fe843783          	ld	a5,-24(s0)
            uint64 volatile sepc = r_sepc();
    800062c4:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800062c8:	100027f3          	csrr	a5,sstatus
    800062cc:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    800062d0:	fe043783          	ld	a5,-32(s0)
            uint64 volatile sstatus = r_sstatus();
    800062d4:	fcf43023          	sd	a5,-64(s0)
            TCB::timeSliceCounter = 0;
    800062d8:	00004797          	auipc	a5,0x4
    800062dc:	2b87b783          	ld	a5,696(a5) # 8000a590 <_GLOBAL_OFFSET_TABLE_+0x28>
    800062e0:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800062e4:	ffffc097          	auipc	ra,0xffffc
    800062e8:	868080e7          	jalr	-1944(ra) # 80001b4c <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    800062ec:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800062f0:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    800062f4:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800062f8:	14179073          	csrw	sepc,a5
}
    800062fc:	f31ff06f          	j	8000622c <_ZN5Riscv20handleSupervisorTrapEv+0x48>
        console_handler();
    80006300:	00002097          	auipc	ra,0x2
    80006304:	624080e7          	jalr	1572(ra) # 80008924 <console_handler>
    80006308:	f25ff06f          	j	8000622c <_ZN5Riscv20handleSupervisorTrapEv+0x48>

000000008000630c <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    8000630c:	ff010113          	addi	sp,sp,-16
    80006310:	00813423          	sd	s0,8(sp)
    80006314:	01010413          	addi	s0,sp,16
    80006318:	00100793          	li	a5,1
    8000631c:	00f50863          	beq	a0,a5,8000632c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80006320:	00813403          	ld	s0,8(sp)
    80006324:	01010113          	addi	sp,sp,16
    80006328:	00008067          	ret
    8000632c:	000107b7          	lui	a5,0x10
    80006330:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006334:	fef596e3          	bne	a1,a5,80006320 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80006338:	00004797          	auipc	a5,0x4
    8000633c:	31878793          	addi	a5,a5,792 # 8000a650 <_ZN9Scheduler16readyThreadQueueE>
    80006340:	0007b023          	sd	zero,0(a5)
    80006344:	0007b423          	sd	zero,8(a5)
    80006348:	fd9ff06f          	j	80006320 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000634c <_ZN9Scheduler3getEv>:
{
    8000634c:	fe010113          	addi	sp,sp,-32
    80006350:	00113c23          	sd	ra,24(sp)
    80006354:	00813823          	sd	s0,16(sp)
    80006358:	00913423          	sd	s1,8(sp)
    8000635c:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80006360:	00004517          	auipc	a0,0x4
    80006364:	2f053503          	ld	a0,752(a0) # 8000a650 <_ZN9Scheduler16readyThreadQueueE>
    80006368:	04050263          	beqz	a0,800063ac <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    8000636c:	00853783          	ld	a5,8(a0)
    80006370:	00004717          	auipc	a4,0x4
    80006374:	2ef73023          	sd	a5,736(a4) # 8000a650 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80006378:	02078463          	beqz	a5,800063a0 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    8000637c:	00053483          	ld	s1,0(a0)
        delete elem;
    80006380:	ffffd097          	auipc	ra,0xffffd
    80006384:	e64080e7          	jalr	-412(ra) # 800031e4 <_ZdlPv>
}
    80006388:	00048513          	mv	a0,s1
    8000638c:	01813083          	ld	ra,24(sp)
    80006390:	01013403          	ld	s0,16(sp)
    80006394:	00813483          	ld	s1,8(sp)
    80006398:	02010113          	addi	sp,sp,32
    8000639c:	00008067          	ret
        if (!head) { tail = 0; }
    800063a0:	00004797          	auipc	a5,0x4
    800063a4:	2a07bc23          	sd	zero,696(a5) # 8000a658 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800063a8:	fd5ff06f          	j	8000637c <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800063ac:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800063b0:	fd9ff06f          	j	80006388 <_ZN9Scheduler3getEv+0x3c>

00000000800063b4 <_ZN9Scheduler3putEP3TCB>:
{
    800063b4:	fe010113          	addi	sp,sp,-32
    800063b8:	00113c23          	sd	ra,24(sp)
    800063bc:	00813823          	sd	s0,16(sp)
    800063c0:	00913423          	sd	s1,8(sp)
    800063c4:	02010413          	addi	s0,sp,32
    800063c8:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800063cc:	01000513          	li	a0,16
    800063d0:	ffffd097          	auipc	ra,0xffffd
    800063d4:	dc4080e7          	jalr	-572(ra) # 80003194 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800063d8:	00953023          	sd	s1,0(a0)
    800063dc:	00053423          	sd	zero,8(a0)
        if (tail)
    800063e0:	00004797          	auipc	a5,0x4
    800063e4:	2787b783          	ld	a5,632(a5) # 8000a658 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800063e8:	02078263          	beqz	a5,8000640c <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    800063ec:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800063f0:	00004797          	auipc	a5,0x4
    800063f4:	26a7b423          	sd	a0,616(a5) # 8000a658 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800063f8:	01813083          	ld	ra,24(sp)
    800063fc:	01013403          	ld	s0,16(sp)
    80006400:	00813483          	ld	s1,8(sp)
    80006404:	02010113          	addi	sp,sp,32
    80006408:	00008067          	ret
            head = tail = elem;
    8000640c:	00004797          	auipc	a5,0x4
    80006410:	24478793          	addi	a5,a5,580 # 8000a650 <_ZN9Scheduler16readyThreadQueueE>
    80006414:	00a7b423          	sd	a0,8(a5)
    80006418:	00a7b023          	sd	a0,0(a5)
    8000641c:	fddff06f          	j	800063f8 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080006420 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80006420:	ff010113          	addi	sp,sp,-16
    80006424:	00113423          	sd	ra,8(sp)
    80006428:	00813023          	sd	s0,0(sp)
    8000642c:	01010413          	addi	s0,sp,16
    80006430:	000105b7          	lui	a1,0x10
    80006434:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80006438:	00100513          	li	a0,1
    8000643c:	00000097          	auipc	ra,0x0
    80006440:	ed0080e7          	jalr	-304(ra) # 8000630c <_Z41__static_initialization_and_destruction_0ii>
    80006444:	00813083          	ld	ra,8(sp)
    80006448:	00013403          	ld	s0,0(sp)
    8000644c:	01010113          	addi	sp,sp,16
    80006450:	00008067          	ret

0000000080006454 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80006454:	fd010113          	addi	sp,sp,-48
    80006458:	02113423          	sd	ra,40(sp)
    8000645c:	02813023          	sd	s0,32(sp)
    80006460:	00913c23          	sd	s1,24(sp)
    80006464:	01213823          	sd	s2,16(sp)
    80006468:	03010413          	addi	s0,sp,48
    8000646c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80006470:	100027f3          	csrr	a5,sstatus
    80006474:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80006478:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000647c:	00200793          	li	a5,2
    80006480:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    while (*string != '\0') __putc(*string++);
    80006484:	0004c503          	lbu	a0,0(s1)
    80006488:	00050a63          	beqz	a0,8000649c <_Z11printStringPKc+0x48>
    8000648c:	00148493          	addi	s1,s1,1
    80006490:	00002097          	auipc	ra,0x2
    80006494:	420080e7          	jalr	1056(ra) # 800088b0 <__putc>
    80006498:	fedff06f          	j	80006484 <_Z11printStringPKc+0x30>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    8000649c:	0009091b          	sext.w	s2,s2
    800064a0:	00297913          	andi	s2,s2,2
    800064a4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800064a8:	10092073          	csrs	sstatus,s2
}
    800064ac:	02813083          	ld	ra,40(sp)
    800064b0:	02013403          	ld	s0,32(sp)
    800064b4:	01813483          	ld	s1,24(sp)
    800064b8:	01013903          	ld	s2,16(sp)
    800064bc:	03010113          	addi	sp,sp,48
    800064c0:	00008067          	ret

00000000800064c4 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    800064c4:	fc010113          	addi	sp,sp,-64
    800064c8:	02113c23          	sd	ra,56(sp)
    800064cc:	02813823          	sd	s0,48(sp)
    800064d0:	02913423          	sd	s1,40(sp)
    800064d4:	03213023          	sd	s2,32(sp)
    800064d8:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800064dc:	100027f3          	csrr	a5,sstatus
    800064e0:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800064e4:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800064e8:	00200793          	li	a5,2
    800064ec:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    static char digits[] = "0123456789";
    char buf[16]; int i = 0; uint64 x = integer;
    int neg = (integer & ((uint64)1 << 63)) != 0;
    800064f0:	00050593          	mv	a1,a0

    if (neg) x = ~integer + 1;
    800064f4:	06054463          	bltz	a0,8000655c <_Z12printIntegerm+0x98>
{
    800064f8:	00000493          	li	s1,0

    do buf[i++] = digits[x % 10];
    800064fc:	00a00713          	li	a4,10
    80006500:	02e57633          	remu	a2,a0,a4
    80006504:	00048693          	mv	a3,s1
    80006508:	0014849b          	addiw	s1,s1,1
    8000650c:	00003797          	auipc	a5,0x3
    80006510:	0bc78793          	addi	a5,a5,188 # 800095c8 <_ZZ12printIntegermE6digits>
    80006514:	00c787b3          	add	a5,a5,a2
    80006518:	0007c603          	lbu	a2,0(a5)
    8000651c:	fe040793          	addi	a5,s0,-32
    80006520:	00d787b3          	add	a5,a5,a3
    80006524:	fec78823          	sb	a2,-16(a5)
    while ((x /= 10) != 0);
    80006528:	00050613          	mv	a2,a0
    8000652c:	02e55533          	divu	a0,a0,a4
    80006530:	00900793          	li	a5,9
    80006534:	fcc7e4e3          	bltu	a5,a2,800064fc <_Z12printIntegerm+0x38>

    if (neg) buf[i++] = '-';
    80006538:	0205c663          	bltz	a1,80006564 <_Z12printIntegerm+0xa0>
    while (--i >= 0) { __putc(buf[i]); }
    8000653c:	fff4849b          	addiw	s1,s1,-1
    80006540:	0204ce63          	bltz	s1,8000657c <_Z12printIntegerm+0xb8>
    80006544:	fe040793          	addi	a5,s0,-32
    80006548:	009787b3          	add	a5,a5,s1
    8000654c:	ff07c503          	lbu	a0,-16(a5)
    80006550:	00002097          	auipc	ra,0x2
    80006554:	360080e7          	jalr	864(ra) # 800088b0 <__putc>
    80006558:	fe5ff06f          	j	8000653c <_Z12printIntegerm+0x78>
    if (neg) x = ~integer + 1;
    8000655c:	40a00533          	neg	a0,a0
    80006560:	f99ff06f          	j	800064f8 <_Z12printIntegerm+0x34>
    if (neg) buf[i++] = '-';
    80006564:	fe040793          	addi	a5,s0,-32
    80006568:	009784b3          	add	s1,a5,s1
    8000656c:	02d00793          	li	a5,45
    80006570:	fef48823          	sb	a5,-16(s1)
    80006574:	0026849b          	addiw	s1,a3,2
    80006578:	fc5ff06f          	j	8000653c <_Z12printIntegerm+0x78>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    8000657c:	0009091b          	sext.w	s2,s2
    80006580:	00297913          	andi	s2,s2,2
    80006584:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80006588:	10092073          	csrs	sstatus,s2
}
    8000658c:	03813083          	ld	ra,56(sp)
    80006590:	03013403          	ld	s0,48(sp)
    80006594:	02813483          	ld	s1,40(sp)
    80006598:	02013903          	ld	s2,32(sp)
    8000659c:	04010113          	addi	sp,sp,64
    800065a0:	00008067          	ret

00000000800065a4 <_Z12printIntegerh>:


void printInteger(uint8 integer)
{
    800065a4:	ff010113          	addi	sp,sp,-16
    800065a8:	00113423          	sd	ra,8(sp)
    800065ac:	00813023          	sd	s0,0(sp)
    800065b0:	01010413          	addi	s0,sp,16
    printInteger((uint64)integer);
    800065b4:	00000097          	auipc	ra,0x0
    800065b8:	f10080e7          	jalr	-240(ra) # 800064c4 <_Z12printIntegerm>
}
    800065bc:	00813083          	ld	ra,8(sp)
    800065c0:	00013403          	ld	s0,0(sp)
    800065c4:	01010113          	addi	sp,sp,16
    800065c8:	00008067          	ret

00000000800065cc <start>:
    800065cc:	ff010113          	addi	sp,sp,-16
    800065d0:	00813423          	sd	s0,8(sp)
    800065d4:	01010413          	addi	s0,sp,16
    800065d8:	300027f3          	csrr	a5,mstatus
    800065dc:	ffffe737          	lui	a4,0xffffe
    800065e0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff2f2f>
    800065e4:	00e7f7b3          	and	a5,a5,a4
    800065e8:	00001737          	lui	a4,0x1
    800065ec:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800065f0:	00e7e7b3          	or	a5,a5,a4
    800065f4:	30079073          	csrw	mstatus,a5
    800065f8:	00000797          	auipc	a5,0x0
    800065fc:	16078793          	addi	a5,a5,352 # 80006758 <system_main>
    80006600:	34179073          	csrw	mepc,a5
    80006604:	00000793          	li	a5,0
    80006608:	18079073          	csrw	satp,a5
    8000660c:	000107b7          	lui	a5,0x10
    80006610:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006614:	30279073          	csrw	medeleg,a5
    80006618:	30379073          	csrw	mideleg,a5
    8000661c:	104027f3          	csrr	a5,sie
    80006620:	2227e793          	ori	a5,a5,546
    80006624:	10479073          	csrw	sie,a5
    80006628:	fff00793          	li	a5,-1
    8000662c:	00a7d793          	srli	a5,a5,0xa
    80006630:	3b079073          	csrw	pmpaddr0,a5
    80006634:	00f00793          	li	a5,15
    80006638:	3a079073          	csrw	pmpcfg0,a5
    8000663c:	f14027f3          	csrr	a5,mhartid
    80006640:	0200c737          	lui	a4,0x200c
    80006644:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006648:	0007869b          	sext.w	a3,a5
    8000664c:	00269713          	slli	a4,a3,0x2
    80006650:	000f4637          	lui	a2,0xf4
    80006654:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006658:	00d70733          	add	a4,a4,a3
    8000665c:	0037979b          	slliw	a5,a5,0x3
    80006660:	020046b7          	lui	a3,0x2004
    80006664:	00d787b3          	add	a5,a5,a3
    80006668:	00c585b3          	add	a1,a1,a2
    8000666c:	00371693          	slli	a3,a4,0x3
    80006670:	00004717          	auipc	a4,0x4
    80006674:	ff070713          	addi	a4,a4,-16 # 8000a660 <timer_scratch>
    80006678:	00b7b023          	sd	a1,0(a5)
    8000667c:	00d70733          	add	a4,a4,a3
    80006680:	00f73c23          	sd	a5,24(a4)
    80006684:	02c73023          	sd	a2,32(a4)
    80006688:	34071073          	csrw	mscratch,a4
    8000668c:	00000797          	auipc	a5,0x0
    80006690:	6e478793          	addi	a5,a5,1764 # 80006d70 <timervec>
    80006694:	30579073          	csrw	mtvec,a5
    80006698:	300027f3          	csrr	a5,mstatus
    8000669c:	0087e793          	ori	a5,a5,8
    800066a0:	30079073          	csrw	mstatus,a5
    800066a4:	304027f3          	csrr	a5,mie
    800066a8:	0807e793          	ori	a5,a5,128
    800066ac:	30479073          	csrw	mie,a5
    800066b0:	f14027f3          	csrr	a5,mhartid
    800066b4:	0007879b          	sext.w	a5,a5
    800066b8:	00078213          	mv	tp,a5
    800066bc:	30200073          	mret
    800066c0:	00813403          	ld	s0,8(sp)
    800066c4:	01010113          	addi	sp,sp,16
    800066c8:	00008067          	ret

00000000800066cc <timerinit>:
    800066cc:	ff010113          	addi	sp,sp,-16
    800066d0:	00813423          	sd	s0,8(sp)
    800066d4:	01010413          	addi	s0,sp,16
    800066d8:	f14027f3          	csrr	a5,mhartid
    800066dc:	0200c737          	lui	a4,0x200c
    800066e0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800066e4:	0007869b          	sext.w	a3,a5
    800066e8:	00269713          	slli	a4,a3,0x2
    800066ec:	000f4637          	lui	a2,0xf4
    800066f0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800066f4:	00d70733          	add	a4,a4,a3
    800066f8:	0037979b          	slliw	a5,a5,0x3
    800066fc:	020046b7          	lui	a3,0x2004
    80006700:	00d787b3          	add	a5,a5,a3
    80006704:	00c585b3          	add	a1,a1,a2
    80006708:	00371693          	slli	a3,a4,0x3
    8000670c:	00004717          	auipc	a4,0x4
    80006710:	f5470713          	addi	a4,a4,-172 # 8000a660 <timer_scratch>
    80006714:	00b7b023          	sd	a1,0(a5)
    80006718:	00d70733          	add	a4,a4,a3
    8000671c:	00f73c23          	sd	a5,24(a4)
    80006720:	02c73023          	sd	a2,32(a4)
    80006724:	34071073          	csrw	mscratch,a4
    80006728:	00000797          	auipc	a5,0x0
    8000672c:	64878793          	addi	a5,a5,1608 # 80006d70 <timervec>
    80006730:	30579073          	csrw	mtvec,a5
    80006734:	300027f3          	csrr	a5,mstatus
    80006738:	0087e793          	ori	a5,a5,8
    8000673c:	30079073          	csrw	mstatus,a5
    80006740:	304027f3          	csrr	a5,mie
    80006744:	0807e793          	ori	a5,a5,128
    80006748:	30479073          	csrw	mie,a5
    8000674c:	00813403          	ld	s0,8(sp)
    80006750:	01010113          	addi	sp,sp,16
    80006754:	00008067          	ret

0000000080006758 <system_main>:
    80006758:	fe010113          	addi	sp,sp,-32
    8000675c:	00813823          	sd	s0,16(sp)
    80006760:	00913423          	sd	s1,8(sp)
    80006764:	00113c23          	sd	ra,24(sp)
    80006768:	02010413          	addi	s0,sp,32
    8000676c:	00000097          	auipc	ra,0x0
    80006770:	0c4080e7          	jalr	196(ra) # 80006830 <cpuid>
    80006774:	00004497          	auipc	s1,0x4
    80006778:	e7c48493          	addi	s1,s1,-388 # 8000a5f0 <started>
    8000677c:	02050263          	beqz	a0,800067a0 <system_main+0x48>
    80006780:	0004a783          	lw	a5,0(s1)
    80006784:	0007879b          	sext.w	a5,a5
    80006788:	fe078ce3          	beqz	a5,80006780 <system_main+0x28>
    8000678c:	0ff0000f          	fence
    80006790:	00003517          	auipc	a0,0x3
    80006794:	e7850513          	addi	a0,a0,-392 # 80009608 <_ZZ12printIntegermE6digits+0x40>
    80006798:	00001097          	auipc	ra,0x1
    8000679c:	a74080e7          	jalr	-1420(ra) # 8000720c <panic>
    800067a0:	00001097          	auipc	ra,0x1
    800067a4:	9c8080e7          	jalr	-1592(ra) # 80007168 <consoleinit>
    800067a8:	00001097          	auipc	ra,0x1
    800067ac:	154080e7          	jalr	340(ra) # 800078fc <printfinit>
    800067b0:	00003517          	auipc	a0,0x3
    800067b4:	96050513          	addi	a0,a0,-1696 # 80009110 <CONSOLE_STATUS+0x100>
    800067b8:	00001097          	auipc	ra,0x1
    800067bc:	ab0080e7          	jalr	-1360(ra) # 80007268 <__printf>
    800067c0:	00003517          	auipc	a0,0x3
    800067c4:	e1850513          	addi	a0,a0,-488 # 800095d8 <_ZZ12printIntegermE6digits+0x10>
    800067c8:	00001097          	auipc	ra,0x1
    800067cc:	aa0080e7          	jalr	-1376(ra) # 80007268 <__printf>
    800067d0:	00003517          	auipc	a0,0x3
    800067d4:	94050513          	addi	a0,a0,-1728 # 80009110 <CONSOLE_STATUS+0x100>
    800067d8:	00001097          	auipc	ra,0x1
    800067dc:	a90080e7          	jalr	-1392(ra) # 80007268 <__printf>
    800067e0:	00001097          	auipc	ra,0x1
    800067e4:	4a8080e7          	jalr	1192(ra) # 80007c88 <kinit>
    800067e8:	00000097          	auipc	ra,0x0
    800067ec:	148080e7          	jalr	328(ra) # 80006930 <trapinit>
    800067f0:	00000097          	auipc	ra,0x0
    800067f4:	16c080e7          	jalr	364(ra) # 8000695c <trapinithart>
    800067f8:	00000097          	auipc	ra,0x0
    800067fc:	5b8080e7          	jalr	1464(ra) # 80006db0 <plicinit>
    80006800:	00000097          	auipc	ra,0x0
    80006804:	5d8080e7          	jalr	1496(ra) # 80006dd8 <plicinithart>
    80006808:	00000097          	auipc	ra,0x0
    8000680c:	078080e7          	jalr	120(ra) # 80006880 <userinit>
    80006810:	0ff0000f          	fence
    80006814:	00100793          	li	a5,1
    80006818:	00003517          	auipc	a0,0x3
    8000681c:	dd850513          	addi	a0,a0,-552 # 800095f0 <_ZZ12printIntegermE6digits+0x28>
    80006820:	00f4a023          	sw	a5,0(s1)
    80006824:	00001097          	auipc	ra,0x1
    80006828:	a44080e7          	jalr	-1468(ra) # 80007268 <__printf>
    8000682c:	0000006f          	j	8000682c <system_main+0xd4>

0000000080006830 <cpuid>:
    80006830:	ff010113          	addi	sp,sp,-16
    80006834:	00813423          	sd	s0,8(sp)
    80006838:	01010413          	addi	s0,sp,16
    8000683c:	00020513          	mv	a0,tp
    80006840:	00813403          	ld	s0,8(sp)
    80006844:	0005051b          	sext.w	a0,a0
    80006848:	01010113          	addi	sp,sp,16
    8000684c:	00008067          	ret

0000000080006850 <mycpu>:
    80006850:	ff010113          	addi	sp,sp,-16
    80006854:	00813423          	sd	s0,8(sp)
    80006858:	01010413          	addi	s0,sp,16
    8000685c:	00020793          	mv	a5,tp
    80006860:	00813403          	ld	s0,8(sp)
    80006864:	0007879b          	sext.w	a5,a5
    80006868:	00779793          	slli	a5,a5,0x7
    8000686c:	00005517          	auipc	a0,0x5
    80006870:	e2450513          	addi	a0,a0,-476 # 8000b690 <cpus>
    80006874:	00f50533          	add	a0,a0,a5
    80006878:	01010113          	addi	sp,sp,16
    8000687c:	00008067          	ret

0000000080006880 <userinit>:
    80006880:	ff010113          	addi	sp,sp,-16
    80006884:	00813423          	sd	s0,8(sp)
    80006888:	01010413          	addi	s0,sp,16
    8000688c:	00813403          	ld	s0,8(sp)
    80006890:	01010113          	addi	sp,sp,16
    80006894:	ffffb317          	auipc	t1,0xffffb
    80006898:	df830067          	jr	-520(t1) # 8000168c <main>

000000008000689c <either_copyout>:
    8000689c:	ff010113          	addi	sp,sp,-16
    800068a0:	00813023          	sd	s0,0(sp)
    800068a4:	00113423          	sd	ra,8(sp)
    800068a8:	01010413          	addi	s0,sp,16
    800068ac:	02051663          	bnez	a0,800068d8 <either_copyout+0x3c>
    800068b0:	00058513          	mv	a0,a1
    800068b4:	00060593          	mv	a1,a2
    800068b8:	0006861b          	sext.w	a2,a3
    800068bc:	00002097          	auipc	ra,0x2
    800068c0:	c58080e7          	jalr	-936(ra) # 80008514 <__memmove>
    800068c4:	00813083          	ld	ra,8(sp)
    800068c8:	00013403          	ld	s0,0(sp)
    800068cc:	00000513          	li	a0,0
    800068d0:	01010113          	addi	sp,sp,16
    800068d4:	00008067          	ret
    800068d8:	00003517          	auipc	a0,0x3
    800068dc:	d5850513          	addi	a0,a0,-680 # 80009630 <_ZZ12printIntegermE6digits+0x68>
    800068e0:	00001097          	auipc	ra,0x1
    800068e4:	92c080e7          	jalr	-1748(ra) # 8000720c <panic>

00000000800068e8 <either_copyin>:
    800068e8:	ff010113          	addi	sp,sp,-16
    800068ec:	00813023          	sd	s0,0(sp)
    800068f0:	00113423          	sd	ra,8(sp)
    800068f4:	01010413          	addi	s0,sp,16
    800068f8:	02059463          	bnez	a1,80006920 <either_copyin+0x38>
    800068fc:	00060593          	mv	a1,a2
    80006900:	0006861b          	sext.w	a2,a3
    80006904:	00002097          	auipc	ra,0x2
    80006908:	c10080e7          	jalr	-1008(ra) # 80008514 <__memmove>
    8000690c:	00813083          	ld	ra,8(sp)
    80006910:	00013403          	ld	s0,0(sp)
    80006914:	00000513          	li	a0,0
    80006918:	01010113          	addi	sp,sp,16
    8000691c:	00008067          	ret
    80006920:	00003517          	auipc	a0,0x3
    80006924:	d3850513          	addi	a0,a0,-712 # 80009658 <_ZZ12printIntegermE6digits+0x90>
    80006928:	00001097          	auipc	ra,0x1
    8000692c:	8e4080e7          	jalr	-1820(ra) # 8000720c <panic>

0000000080006930 <trapinit>:
    80006930:	ff010113          	addi	sp,sp,-16
    80006934:	00813423          	sd	s0,8(sp)
    80006938:	01010413          	addi	s0,sp,16
    8000693c:	00813403          	ld	s0,8(sp)
    80006940:	00003597          	auipc	a1,0x3
    80006944:	d4058593          	addi	a1,a1,-704 # 80009680 <_ZZ12printIntegermE6digits+0xb8>
    80006948:	00005517          	auipc	a0,0x5
    8000694c:	dc850513          	addi	a0,a0,-568 # 8000b710 <tickslock>
    80006950:	01010113          	addi	sp,sp,16
    80006954:	00001317          	auipc	t1,0x1
    80006958:	5c430067          	jr	1476(t1) # 80007f18 <initlock>

000000008000695c <trapinithart>:
    8000695c:	ff010113          	addi	sp,sp,-16
    80006960:	00813423          	sd	s0,8(sp)
    80006964:	01010413          	addi	s0,sp,16
    80006968:	00000797          	auipc	a5,0x0
    8000696c:	2f878793          	addi	a5,a5,760 # 80006c60 <kernelvec>
    80006970:	10579073          	csrw	stvec,a5
    80006974:	00813403          	ld	s0,8(sp)
    80006978:	01010113          	addi	sp,sp,16
    8000697c:	00008067          	ret

0000000080006980 <usertrap>:
    80006980:	ff010113          	addi	sp,sp,-16
    80006984:	00813423          	sd	s0,8(sp)
    80006988:	01010413          	addi	s0,sp,16
    8000698c:	00813403          	ld	s0,8(sp)
    80006990:	01010113          	addi	sp,sp,16
    80006994:	00008067          	ret

0000000080006998 <usertrapret>:
    80006998:	ff010113          	addi	sp,sp,-16
    8000699c:	00813423          	sd	s0,8(sp)
    800069a0:	01010413          	addi	s0,sp,16
    800069a4:	00813403          	ld	s0,8(sp)
    800069a8:	01010113          	addi	sp,sp,16
    800069ac:	00008067          	ret

00000000800069b0 <kerneltrap>:
    800069b0:	fe010113          	addi	sp,sp,-32
    800069b4:	00813823          	sd	s0,16(sp)
    800069b8:	00113c23          	sd	ra,24(sp)
    800069bc:	00913423          	sd	s1,8(sp)
    800069c0:	02010413          	addi	s0,sp,32
    800069c4:	142025f3          	csrr	a1,scause
    800069c8:	100027f3          	csrr	a5,sstatus
    800069cc:	0027f793          	andi	a5,a5,2
    800069d0:	10079c63          	bnez	a5,80006ae8 <kerneltrap+0x138>
    800069d4:	142027f3          	csrr	a5,scause
    800069d8:	0207ce63          	bltz	a5,80006a14 <kerneltrap+0x64>
    800069dc:	00003517          	auipc	a0,0x3
    800069e0:	cec50513          	addi	a0,a0,-788 # 800096c8 <_ZZ12printIntegermE6digits+0x100>
    800069e4:	00001097          	auipc	ra,0x1
    800069e8:	884080e7          	jalr	-1916(ra) # 80007268 <__printf>
    800069ec:	141025f3          	csrr	a1,sepc
    800069f0:	14302673          	csrr	a2,stval
    800069f4:	00003517          	auipc	a0,0x3
    800069f8:	ce450513          	addi	a0,a0,-796 # 800096d8 <_ZZ12printIntegermE6digits+0x110>
    800069fc:	00001097          	auipc	ra,0x1
    80006a00:	86c080e7          	jalr	-1940(ra) # 80007268 <__printf>
    80006a04:	00003517          	auipc	a0,0x3
    80006a08:	cec50513          	addi	a0,a0,-788 # 800096f0 <_ZZ12printIntegermE6digits+0x128>
    80006a0c:	00001097          	auipc	ra,0x1
    80006a10:	800080e7          	jalr	-2048(ra) # 8000720c <panic>
    80006a14:	0ff7f713          	andi	a4,a5,255
    80006a18:	00900693          	li	a3,9
    80006a1c:	04d70063          	beq	a4,a3,80006a5c <kerneltrap+0xac>
    80006a20:	fff00713          	li	a4,-1
    80006a24:	03f71713          	slli	a4,a4,0x3f
    80006a28:	00170713          	addi	a4,a4,1
    80006a2c:	fae798e3          	bne	a5,a4,800069dc <kerneltrap+0x2c>
    80006a30:	00000097          	auipc	ra,0x0
    80006a34:	e00080e7          	jalr	-512(ra) # 80006830 <cpuid>
    80006a38:	06050663          	beqz	a0,80006aa4 <kerneltrap+0xf4>
    80006a3c:	144027f3          	csrr	a5,sip
    80006a40:	ffd7f793          	andi	a5,a5,-3
    80006a44:	14479073          	csrw	sip,a5
    80006a48:	01813083          	ld	ra,24(sp)
    80006a4c:	01013403          	ld	s0,16(sp)
    80006a50:	00813483          	ld	s1,8(sp)
    80006a54:	02010113          	addi	sp,sp,32
    80006a58:	00008067          	ret
    80006a5c:	00000097          	auipc	ra,0x0
    80006a60:	3c8080e7          	jalr	968(ra) # 80006e24 <plic_claim>
    80006a64:	00a00793          	li	a5,10
    80006a68:	00050493          	mv	s1,a0
    80006a6c:	06f50863          	beq	a0,a5,80006adc <kerneltrap+0x12c>
    80006a70:	fc050ce3          	beqz	a0,80006a48 <kerneltrap+0x98>
    80006a74:	00050593          	mv	a1,a0
    80006a78:	00003517          	auipc	a0,0x3
    80006a7c:	c3050513          	addi	a0,a0,-976 # 800096a8 <_ZZ12printIntegermE6digits+0xe0>
    80006a80:	00000097          	auipc	ra,0x0
    80006a84:	7e8080e7          	jalr	2024(ra) # 80007268 <__printf>
    80006a88:	01013403          	ld	s0,16(sp)
    80006a8c:	01813083          	ld	ra,24(sp)
    80006a90:	00048513          	mv	a0,s1
    80006a94:	00813483          	ld	s1,8(sp)
    80006a98:	02010113          	addi	sp,sp,32
    80006a9c:	00000317          	auipc	t1,0x0
    80006aa0:	3c030067          	jr	960(t1) # 80006e5c <plic_complete>
    80006aa4:	00005517          	auipc	a0,0x5
    80006aa8:	c6c50513          	addi	a0,a0,-916 # 8000b710 <tickslock>
    80006aac:	00001097          	auipc	ra,0x1
    80006ab0:	490080e7          	jalr	1168(ra) # 80007f3c <acquire>
    80006ab4:	00004717          	auipc	a4,0x4
    80006ab8:	b4070713          	addi	a4,a4,-1216 # 8000a5f4 <ticks>
    80006abc:	00072783          	lw	a5,0(a4)
    80006ac0:	00005517          	auipc	a0,0x5
    80006ac4:	c5050513          	addi	a0,a0,-944 # 8000b710 <tickslock>
    80006ac8:	0017879b          	addiw	a5,a5,1
    80006acc:	00f72023          	sw	a5,0(a4)
    80006ad0:	00001097          	auipc	ra,0x1
    80006ad4:	538080e7          	jalr	1336(ra) # 80008008 <release>
    80006ad8:	f65ff06f          	j	80006a3c <kerneltrap+0x8c>
    80006adc:	00001097          	auipc	ra,0x1
    80006ae0:	094080e7          	jalr	148(ra) # 80007b70 <uartintr>
    80006ae4:	fa5ff06f          	j	80006a88 <kerneltrap+0xd8>
    80006ae8:	00003517          	auipc	a0,0x3
    80006aec:	ba050513          	addi	a0,a0,-1120 # 80009688 <_ZZ12printIntegermE6digits+0xc0>
    80006af0:	00000097          	auipc	ra,0x0
    80006af4:	71c080e7          	jalr	1820(ra) # 8000720c <panic>

0000000080006af8 <clockintr>:
    80006af8:	fe010113          	addi	sp,sp,-32
    80006afc:	00813823          	sd	s0,16(sp)
    80006b00:	00913423          	sd	s1,8(sp)
    80006b04:	00113c23          	sd	ra,24(sp)
    80006b08:	02010413          	addi	s0,sp,32
    80006b0c:	00005497          	auipc	s1,0x5
    80006b10:	c0448493          	addi	s1,s1,-1020 # 8000b710 <tickslock>
    80006b14:	00048513          	mv	a0,s1
    80006b18:	00001097          	auipc	ra,0x1
    80006b1c:	424080e7          	jalr	1060(ra) # 80007f3c <acquire>
    80006b20:	00004717          	auipc	a4,0x4
    80006b24:	ad470713          	addi	a4,a4,-1324 # 8000a5f4 <ticks>
    80006b28:	00072783          	lw	a5,0(a4)
    80006b2c:	01013403          	ld	s0,16(sp)
    80006b30:	01813083          	ld	ra,24(sp)
    80006b34:	00048513          	mv	a0,s1
    80006b38:	0017879b          	addiw	a5,a5,1
    80006b3c:	00813483          	ld	s1,8(sp)
    80006b40:	00f72023          	sw	a5,0(a4)
    80006b44:	02010113          	addi	sp,sp,32
    80006b48:	00001317          	auipc	t1,0x1
    80006b4c:	4c030067          	jr	1216(t1) # 80008008 <release>

0000000080006b50 <devintr>:
    80006b50:	142027f3          	csrr	a5,scause
    80006b54:	00000513          	li	a0,0
    80006b58:	0007c463          	bltz	a5,80006b60 <devintr+0x10>
    80006b5c:	00008067          	ret
    80006b60:	fe010113          	addi	sp,sp,-32
    80006b64:	00813823          	sd	s0,16(sp)
    80006b68:	00113c23          	sd	ra,24(sp)
    80006b6c:	00913423          	sd	s1,8(sp)
    80006b70:	02010413          	addi	s0,sp,32
    80006b74:	0ff7f713          	andi	a4,a5,255
    80006b78:	00900693          	li	a3,9
    80006b7c:	04d70c63          	beq	a4,a3,80006bd4 <devintr+0x84>
    80006b80:	fff00713          	li	a4,-1
    80006b84:	03f71713          	slli	a4,a4,0x3f
    80006b88:	00170713          	addi	a4,a4,1
    80006b8c:	00e78c63          	beq	a5,a4,80006ba4 <devintr+0x54>
    80006b90:	01813083          	ld	ra,24(sp)
    80006b94:	01013403          	ld	s0,16(sp)
    80006b98:	00813483          	ld	s1,8(sp)
    80006b9c:	02010113          	addi	sp,sp,32
    80006ba0:	00008067          	ret
    80006ba4:	00000097          	auipc	ra,0x0
    80006ba8:	c8c080e7          	jalr	-884(ra) # 80006830 <cpuid>
    80006bac:	06050663          	beqz	a0,80006c18 <devintr+0xc8>
    80006bb0:	144027f3          	csrr	a5,sip
    80006bb4:	ffd7f793          	andi	a5,a5,-3
    80006bb8:	14479073          	csrw	sip,a5
    80006bbc:	01813083          	ld	ra,24(sp)
    80006bc0:	01013403          	ld	s0,16(sp)
    80006bc4:	00813483          	ld	s1,8(sp)
    80006bc8:	00200513          	li	a0,2
    80006bcc:	02010113          	addi	sp,sp,32
    80006bd0:	00008067          	ret
    80006bd4:	00000097          	auipc	ra,0x0
    80006bd8:	250080e7          	jalr	592(ra) # 80006e24 <plic_claim>
    80006bdc:	00a00793          	li	a5,10
    80006be0:	00050493          	mv	s1,a0
    80006be4:	06f50663          	beq	a0,a5,80006c50 <devintr+0x100>
    80006be8:	00100513          	li	a0,1
    80006bec:	fa0482e3          	beqz	s1,80006b90 <devintr+0x40>
    80006bf0:	00048593          	mv	a1,s1
    80006bf4:	00003517          	auipc	a0,0x3
    80006bf8:	ab450513          	addi	a0,a0,-1356 # 800096a8 <_ZZ12printIntegermE6digits+0xe0>
    80006bfc:	00000097          	auipc	ra,0x0
    80006c00:	66c080e7          	jalr	1644(ra) # 80007268 <__printf>
    80006c04:	00048513          	mv	a0,s1
    80006c08:	00000097          	auipc	ra,0x0
    80006c0c:	254080e7          	jalr	596(ra) # 80006e5c <plic_complete>
    80006c10:	00100513          	li	a0,1
    80006c14:	f7dff06f          	j	80006b90 <devintr+0x40>
    80006c18:	00005517          	auipc	a0,0x5
    80006c1c:	af850513          	addi	a0,a0,-1288 # 8000b710 <tickslock>
    80006c20:	00001097          	auipc	ra,0x1
    80006c24:	31c080e7          	jalr	796(ra) # 80007f3c <acquire>
    80006c28:	00004717          	auipc	a4,0x4
    80006c2c:	9cc70713          	addi	a4,a4,-1588 # 8000a5f4 <ticks>
    80006c30:	00072783          	lw	a5,0(a4)
    80006c34:	00005517          	auipc	a0,0x5
    80006c38:	adc50513          	addi	a0,a0,-1316 # 8000b710 <tickslock>
    80006c3c:	0017879b          	addiw	a5,a5,1
    80006c40:	00f72023          	sw	a5,0(a4)
    80006c44:	00001097          	auipc	ra,0x1
    80006c48:	3c4080e7          	jalr	964(ra) # 80008008 <release>
    80006c4c:	f65ff06f          	j	80006bb0 <devintr+0x60>
    80006c50:	00001097          	auipc	ra,0x1
    80006c54:	f20080e7          	jalr	-224(ra) # 80007b70 <uartintr>
    80006c58:	fadff06f          	j	80006c04 <devintr+0xb4>
    80006c5c:	0000                	unimp
	...

0000000080006c60 <kernelvec>:
    80006c60:	f0010113          	addi	sp,sp,-256
    80006c64:	00113023          	sd	ra,0(sp)
    80006c68:	00213423          	sd	sp,8(sp)
    80006c6c:	00313823          	sd	gp,16(sp)
    80006c70:	00413c23          	sd	tp,24(sp)
    80006c74:	02513023          	sd	t0,32(sp)
    80006c78:	02613423          	sd	t1,40(sp)
    80006c7c:	02713823          	sd	t2,48(sp)
    80006c80:	02813c23          	sd	s0,56(sp)
    80006c84:	04913023          	sd	s1,64(sp)
    80006c88:	04a13423          	sd	a0,72(sp)
    80006c8c:	04b13823          	sd	a1,80(sp)
    80006c90:	04c13c23          	sd	a2,88(sp)
    80006c94:	06d13023          	sd	a3,96(sp)
    80006c98:	06e13423          	sd	a4,104(sp)
    80006c9c:	06f13823          	sd	a5,112(sp)
    80006ca0:	07013c23          	sd	a6,120(sp)
    80006ca4:	09113023          	sd	a7,128(sp)
    80006ca8:	09213423          	sd	s2,136(sp)
    80006cac:	09313823          	sd	s3,144(sp)
    80006cb0:	09413c23          	sd	s4,152(sp)
    80006cb4:	0b513023          	sd	s5,160(sp)
    80006cb8:	0b613423          	sd	s6,168(sp)
    80006cbc:	0b713823          	sd	s7,176(sp)
    80006cc0:	0b813c23          	sd	s8,184(sp)
    80006cc4:	0d913023          	sd	s9,192(sp)
    80006cc8:	0da13423          	sd	s10,200(sp)
    80006ccc:	0db13823          	sd	s11,208(sp)
    80006cd0:	0dc13c23          	sd	t3,216(sp)
    80006cd4:	0fd13023          	sd	t4,224(sp)
    80006cd8:	0fe13423          	sd	t5,232(sp)
    80006cdc:	0ff13823          	sd	t6,240(sp)
    80006ce0:	cd1ff0ef          	jal	ra,800069b0 <kerneltrap>
    80006ce4:	00013083          	ld	ra,0(sp)
    80006ce8:	00813103          	ld	sp,8(sp)
    80006cec:	01013183          	ld	gp,16(sp)
    80006cf0:	02013283          	ld	t0,32(sp)
    80006cf4:	02813303          	ld	t1,40(sp)
    80006cf8:	03013383          	ld	t2,48(sp)
    80006cfc:	03813403          	ld	s0,56(sp)
    80006d00:	04013483          	ld	s1,64(sp)
    80006d04:	04813503          	ld	a0,72(sp)
    80006d08:	05013583          	ld	a1,80(sp)
    80006d0c:	05813603          	ld	a2,88(sp)
    80006d10:	06013683          	ld	a3,96(sp)
    80006d14:	06813703          	ld	a4,104(sp)
    80006d18:	07013783          	ld	a5,112(sp)
    80006d1c:	07813803          	ld	a6,120(sp)
    80006d20:	08013883          	ld	a7,128(sp)
    80006d24:	08813903          	ld	s2,136(sp)
    80006d28:	09013983          	ld	s3,144(sp)
    80006d2c:	09813a03          	ld	s4,152(sp)
    80006d30:	0a013a83          	ld	s5,160(sp)
    80006d34:	0a813b03          	ld	s6,168(sp)
    80006d38:	0b013b83          	ld	s7,176(sp)
    80006d3c:	0b813c03          	ld	s8,184(sp)
    80006d40:	0c013c83          	ld	s9,192(sp)
    80006d44:	0c813d03          	ld	s10,200(sp)
    80006d48:	0d013d83          	ld	s11,208(sp)
    80006d4c:	0d813e03          	ld	t3,216(sp)
    80006d50:	0e013e83          	ld	t4,224(sp)
    80006d54:	0e813f03          	ld	t5,232(sp)
    80006d58:	0f013f83          	ld	t6,240(sp)
    80006d5c:	10010113          	addi	sp,sp,256
    80006d60:	10200073          	sret
    80006d64:	00000013          	nop
    80006d68:	00000013          	nop
    80006d6c:	00000013          	nop

0000000080006d70 <timervec>:
    80006d70:	34051573          	csrrw	a0,mscratch,a0
    80006d74:	00b53023          	sd	a1,0(a0)
    80006d78:	00c53423          	sd	a2,8(a0)
    80006d7c:	00d53823          	sd	a3,16(a0)
    80006d80:	01853583          	ld	a1,24(a0)
    80006d84:	02053603          	ld	a2,32(a0)
    80006d88:	0005b683          	ld	a3,0(a1)
    80006d8c:	00c686b3          	add	a3,a3,a2
    80006d90:	00d5b023          	sd	a3,0(a1)
    80006d94:	00200593          	li	a1,2
    80006d98:	14459073          	csrw	sip,a1
    80006d9c:	01053683          	ld	a3,16(a0)
    80006da0:	00853603          	ld	a2,8(a0)
    80006da4:	00053583          	ld	a1,0(a0)
    80006da8:	34051573          	csrrw	a0,mscratch,a0
    80006dac:	30200073          	mret

0000000080006db0 <plicinit>:
    80006db0:	ff010113          	addi	sp,sp,-16
    80006db4:	00813423          	sd	s0,8(sp)
    80006db8:	01010413          	addi	s0,sp,16
    80006dbc:	00813403          	ld	s0,8(sp)
    80006dc0:	0c0007b7          	lui	a5,0xc000
    80006dc4:	00100713          	li	a4,1
    80006dc8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006dcc:	00e7a223          	sw	a4,4(a5)
    80006dd0:	01010113          	addi	sp,sp,16
    80006dd4:	00008067          	ret

0000000080006dd8 <plicinithart>:
    80006dd8:	ff010113          	addi	sp,sp,-16
    80006ddc:	00813023          	sd	s0,0(sp)
    80006de0:	00113423          	sd	ra,8(sp)
    80006de4:	01010413          	addi	s0,sp,16
    80006de8:	00000097          	auipc	ra,0x0
    80006dec:	a48080e7          	jalr	-1464(ra) # 80006830 <cpuid>
    80006df0:	0085171b          	slliw	a4,a0,0x8
    80006df4:	0c0027b7          	lui	a5,0xc002
    80006df8:	00e787b3          	add	a5,a5,a4
    80006dfc:	40200713          	li	a4,1026
    80006e00:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006e04:	00813083          	ld	ra,8(sp)
    80006e08:	00013403          	ld	s0,0(sp)
    80006e0c:	00d5151b          	slliw	a0,a0,0xd
    80006e10:	0c2017b7          	lui	a5,0xc201
    80006e14:	00a78533          	add	a0,a5,a0
    80006e18:	00052023          	sw	zero,0(a0)
    80006e1c:	01010113          	addi	sp,sp,16
    80006e20:	00008067          	ret

0000000080006e24 <plic_claim>:
    80006e24:	ff010113          	addi	sp,sp,-16
    80006e28:	00813023          	sd	s0,0(sp)
    80006e2c:	00113423          	sd	ra,8(sp)
    80006e30:	01010413          	addi	s0,sp,16
    80006e34:	00000097          	auipc	ra,0x0
    80006e38:	9fc080e7          	jalr	-1540(ra) # 80006830 <cpuid>
    80006e3c:	00813083          	ld	ra,8(sp)
    80006e40:	00013403          	ld	s0,0(sp)
    80006e44:	00d5151b          	slliw	a0,a0,0xd
    80006e48:	0c2017b7          	lui	a5,0xc201
    80006e4c:	00a78533          	add	a0,a5,a0
    80006e50:	00452503          	lw	a0,4(a0)
    80006e54:	01010113          	addi	sp,sp,16
    80006e58:	00008067          	ret

0000000080006e5c <plic_complete>:
    80006e5c:	fe010113          	addi	sp,sp,-32
    80006e60:	00813823          	sd	s0,16(sp)
    80006e64:	00913423          	sd	s1,8(sp)
    80006e68:	00113c23          	sd	ra,24(sp)
    80006e6c:	02010413          	addi	s0,sp,32
    80006e70:	00050493          	mv	s1,a0
    80006e74:	00000097          	auipc	ra,0x0
    80006e78:	9bc080e7          	jalr	-1604(ra) # 80006830 <cpuid>
    80006e7c:	01813083          	ld	ra,24(sp)
    80006e80:	01013403          	ld	s0,16(sp)
    80006e84:	00d5179b          	slliw	a5,a0,0xd
    80006e88:	0c201737          	lui	a4,0xc201
    80006e8c:	00f707b3          	add	a5,a4,a5
    80006e90:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006e94:	00813483          	ld	s1,8(sp)
    80006e98:	02010113          	addi	sp,sp,32
    80006e9c:	00008067          	ret

0000000080006ea0 <consolewrite>:
    80006ea0:	fb010113          	addi	sp,sp,-80
    80006ea4:	04813023          	sd	s0,64(sp)
    80006ea8:	04113423          	sd	ra,72(sp)
    80006eac:	02913c23          	sd	s1,56(sp)
    80006eb0:	03213823          	sd	s2,48(sp)
    80006eb4:	03313423          	sd	s3,40(sp)
    80006eb8:	03413023          	sd	s4,32(sp)
    80006ebc:	01513c23          	sd	s5,24(sp)
    80006ec0:	05010413          	addi	s0,sp,80
    80006ec4:	06c05c63          	blez	a2,80006f3c <consolewrite+0x9c>
    80006ec8:	00060993          	mv	s3,a2
    80006ecc:	00050a13          	mv	s4,a0
    80006ed0:	00058493          	mv	s1,a1
    80006ed4:	00000913          	li	s2,0
    80006ed8:	fff00a93          	li	s5,-1
    80006edc:	01c0006f          	j	80006ef8 <consolewrite+0x58>
    80006ee0:	fbf44503          	lbu	a0,-65(s0)
    80006ee4:	0019091b          	addiw	s2,s2,1
    80006ee8:	00148493          	addi	s1,s1,1
    80006eec:	00001097          	auipc	ra,0x1
    80006ef0:	a9c080e7          	jalr	-1380(ra) # 80007988 <uartputc>
    80006ef4:	03298063          	beq	s3,s2,80006f14 <consolewrite+0x74>
    80006ef8:	00048613          	mv	a2,s1
    80006efc:	00100693          	li	a3,1
    80006f00:	000a0593          	mv	a1,s4
    80006f04:	fbf40513          	addi	a0,s0,-65
    80006f08:	00000097          	auipc	ra,0x0
    80006f0c:	9e0080e7          	jalr	-1568(ra) # 800068e8 <either_copyin>
    80006f10:	fd5518e3          	bne	a0,s5,80006ee0 <consolewrite+0x40>
    80006f14:	04813083          	ld	ra,72(sp)
    80006f18:	04013403          	ld	s0,64(sp)
    80006f1c:	03813483          	ld	s1,56(sp)
    80006f20:	02813983          	ld	s3,40(sp)
    80006f24:	02013a03          	ld	s4,32(sp)
    80006f28:	01813a83          	ld	s5,24(sp)
    80006f2c:	00090513          	mv	a0,s2
    80006f30:	03013903          	ld	s2,48(sp)
    80006f34:	05010113          	addi	sp,sp,80
    80006f38:	00008067          	ret
    80006f3c:	00000913          	li	s2,0
    80006f40:	fd5ff06f          	j	80006f14 <consolewrite+0x74>

0000000080006f44 <consoleread>:
    80006f44:	f9010113          	addi	sp,sp,-112
    80006f48:	06813023          	sd	s0,96(sp)
    80006f4c:	04913c23          	sd	s1,88(sp)
    80006f50:	05213823          	sd	s2,80(sp)
    80006f54:	05313423          	sd	s3,72(sp)
    80006f58:	05413023          	sd	s4,64(sp)
    80006f5c:	03513c23          	sd	s5,56(sp)
    80006f60:	03613823          	sd	s6,48(sp)
    80006f64:	03713423          	sd	s7,40(sp)
    80006f68:	03813023          	sd	s8,32(sp)
    80006f6c:	06113423          	sd	ra,104(sp)
    80006f70:	01913c23          	sd	s9,24(sp)
    80006f74:	07010413          	addi	s0,sp,112
    80006f78:	00060b93          	mv	s7,a2
    80006f7c:	00050913          	mv	s2,a0
    80006f80:	00058c13          	mv	s8,a1
    80006f84:	00060b1b          	sext.w	s6,a2
    80006f88:	00004497          	auipc	s1,0x4
    80006f8c:	7b048493          	addi	s1,s1,1968 # 8000b738 <cons>
    80006f90:	00400993          	li	s3,4
    80006f94:	fff00a13          	li	s4,-1
    80006f98:	00a00a93          	li	s5,10
    80006f9c:	05705e63          	blez	s7,80006ff8 <consoleread+0xb4>
    80006fa0:	09c4a703          	lw	a4,156(s1)
    80006fa4:	0984a783          	lw	a5,152(s1)
    80006fa8:	0007071b          	sext.w	a4,a4
    80006fac:	08e78463          	beq	a5,a4,80007034 <consoleread+0xf0>
    80006fb0:	07f7f713          	andi	a4,a5,127
    80006fb4:	00e48733          	add	a4,s1,a4
    80006fb8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006fbc:	0017869b          	addiw	a3,a5,1
    80006fc0:	08d4ac23          	sw	a3,152(s1)
    80006fc4:	00070c9b          	sext.w	s9,a4
    80006fc8:	0b370663          	beq	a4,s3,80007074 <consoleread+0x130>
    80006fcc:	00100693          	li	a3,1
    80006fd0:	f9f40613          	addi	a2,s0,-97
    80006fd4:	000c0593          	mv	a1,s8
    80006fd8:	00090513          	mv	a0,s2
    80006fdc:	f8e40fa3          	sb	a4,-97(s0)
    80006fe0:	00000097          	auipc	ra,0x0
    80006fe4:	8bc080e7          	jalr	-1860(ra) # 8000689c <either_copyout>
    80006fe8:	01450863          	beq	a0,s4,80006ff8 <consoleread+0xb4>
    80006fec:	001c0c13          	addi	s8,s8,1
    80006ff0:	fffb8b9b          	addiw	s7,s7,-1
    80006ff4:	fb5c94e3          	bne	s9,s5,80006f9c <consoleread+0x58>
    80006ff8:	000b851b          	sext.w	a0,s7
    80006ffc:	06813083          	ld	ra,104(sp)
    80007000:	06013403          	ld	s0,96(sp)
    80007004:	05813483          	ld	s1,88(sp)
    80007008:	05013903          	ld	s2,80(sp)
    8000700c:	04813983          	ld	s3,72(sp)
    80007010:	04013a03          	ld	s4,64(sp)
    80007014:	03813a83          	ld	s5,56(sp)
    80007018:	02813b83          	ld	s7,40(sp)
    8000701c:	02013c03          	ld	s8,32(sp)
    80007020:	01813c83          	ld	s9,24(sp)
    80007024:	40ab053b          	subw	a0,s6,a0
    80007028:	03013b03          	ld	s6,48(sp)
    8000702c:	07010113          	addi	sp,sp,112
    80007030:	00008067          	ret
    80007034:	00001097          	auipc	ra,0x1
    80007038:	1d8080e7          	jalr	472(ra) # 8000820c <push_on>
    8000703c:	0984a703          	lw	a4,152(s1)
    80007040:	09c4a783          	lw	a5,156(s1)
    80007044:	0007879b          	sext.w	a5,a5
    80007048:	fef70ce3          	beq	a4,a5,80007040 <consoleread+0xfc>
    8000704c:	00001097          	auipc	ra,0x1
    80007050:	234080e7          	jalr	564(ra) # 80008280 <pop_on>
    80007054:	0984a783          	lw	a5,152(s1)
    80007058:	07f7f713          	andi	a4,a5,127
    8000705c:	00e48733          	add	a4,s1,a4
    80007060:	01874703          	lbu	a4,24(a4)
    80007064:	0017869b          	addiw	a3,a5,1
    80007068:	08d4ac23          	sw	a3,152(s1)
    8000706c:	00070c9b          	sext.w	s9,a4
    80007070:	f5371ee3          	bne	a4,s3,80006fcc <consoleread+0x88>
    80007074:	000b851b          	sext.w	a0,s7
    80007078:	f96bf2e3          	bgeu	s7,s6,80006ffc <consoleread+0xb8>
    8000707c:	08f4ac23          	sw	a5,152(s1)
    80007080:	f7dff06f          	j	80006ffc <consoleread+0xb8>

0000000080007084 <consputc>:
    80007084:	10000793          	li	a5,256
    80007088:	00f50663          	beq	a0,a5,80007094 <consputc+0x10>
    8000708c:	00001317          	auipc	t1,0x1
    80007090:	9f430067          	jr	-1548(t1) # 80007a80 <uartputc_sync>
    80007094:	ff010113          	addi	sp,sp,-16
    80007098:	00113423          	sd	ra,8(sp)
    8000709c:	00813023          	sd	s0,0(sp)
    800070a0:	01010413          	addi	s0,sp,16
    800070a4:	00800513          	li	a0,8
    800070a8:	00001097          	auipc	ra,0x1
    800070ac:	9d8080e7          	jalr	-1576(ra) # 80007a80 <uartputc_sync>
    800070b0:	02000513          	li	a0,32
    800070b4:	00001097          	auipc	ra,0x1
    800070b8:	9cc080e7          	jalr	-1588(ra) # 80007a80 <uartputc_sync>
    800070bc:	00013403          	ld	s0,0(sp)
    800070c0:	00813083          	ld	ra,8(sp)
    800070c4:	00800513          	li	a0,8
    800070c8:	01010113          	addi	sp,sp,16
    800070cc:	00001317          	auipc	t1,0x1
    800070d0:	9b430067          	jr	-1612(t1) # 80007a80 <uartputc_sync>

00000000800070d4 <consoleintr>:
    800070d4:	fe010113          	addi	sp,sp,-32
    800070d8:	00813823          	sd	s0,16(sp)
    800070dc:	00913423          	sd	s1,8(sp)
    800070e0:	01213023          	sd	s2,0(sp)
    800070e4:	00113c23          	sd	ra,24(sp)
    800070e8:	02010413          	addi	s0,sp,32
    800070ec:	00004917          	auipc	s2,0x4
    800070f0:	64c90913          	addi	s2,s2,1612 # 8000b738 <cons>
    800070f4:	00050493          	mv	s1,a0
    800070f8:	00090513          	mv	a0,s2
    800070fc:	00001097          	auipc	ra,0x1
    80007100:	e40080e7          	jalr	-448(ra) # 80007f3c <acquire>
    80007104:	02048c63          	beqz	s1,8000713c <consoleintr+0x68>
    80007108:	0a092783          	lw	a5,160(s2)
    8000710c:	09892703          	lw	a4,152(s2)
    80007110:	07f00693          	li	a3,127
    80007114:	40e7873b          	subw	a4,a5,a4
    80007118:	02e6e263          	bltu	a3,a4,8000713c <consoleintr+0x68>
    8000711c:	00d00713          	li	a4,13
    80007120:	04e48063          	beq	s1,a4,80007160 <consoleintr+0x8c>
    80007124:	07f7f713          	andi	a4,a5,127
    80007128:	00e90733          	add	a4,s2,a4
    8000712c:	0017879b          	addiw	a5,a5,1
    80007130:	0af92023          	sw	a5,160(s2)
    80007134:	00970c23          	sb	s1,24(a4)
    80007138:	08f92e23          	sw	a5,156(s2)
    8000713c:	01013403          	ld	s0,16(sp)
    80007140:	01813083          	ld	ra,24(sp)
    80007144:	00813483          	ld	s1,8(sp)
    80007148:	00013903          	ld	s2,0(sp)
    8000714c:	00004517          	auipc	a0,0x4
    80007150:	5ec50513          	addi	a0,a0,1516 # 8000b738 <cons>
    80007154:	02010113          	addi	sp,sp,32
    80007158:	00001317          	auipc	t1,0x1
    8000715c:	eb030067          	jr	-336(t1) # 80008008 <release>
    80007160:	00a00493          	li	s1,10
    80007164:	fc1ff06f          	j	80007124 <consoleintr+0x50>

0000000080007168 <consoleinit>:
    80007168:	fe010113          	addi	sp,sp,-32
    8000716c:	00113c23          	sd	ra,24(sp)
    80007170:	00813823          	sd	s0,16(sp)
    80007174:	00913423          	sd	s1,8(sp)
    80007178:	02010413          	addi	s0,sp,32
    8000717c:	00004497          	auipc	s1,0x4
    80007180:	5bc48493          	addi	s1,s1,1468 # 8000b738 <cons>
    80007184:	00048513          	mv	a0,s1
    80007188:	00002597          	auipc	a1,0x2
    8000718c:	57858593          	addi	a1,a1,1400 # 80009700 <_ZZ12printIntegermE6digits+0x138>
    80007190:	00001097          	auipc	ra,0x1
    80007194:	d88080e7          	jalr	-632(ra) # 80007f18 <initlock>
    80007198:	00000097          	auipc	ra,0x0
    8000719c:	7ac080e7          	jalr	1964(ra) # 80007944 <uartinit>
    800071a0:	01813083          	ld	ra,24(sp)
    800071a4:	01013403          	ld	s0,16(sp)
    800071a8:	00000797          	auipc	a5,0x0
    800071ac:	d9c78793          	addi	a5,a5,-612 # 80006f44 <consoleread>
    800071b0:	0af4bc23          	sd	a5,184(s1)
    800071b4:	00000797          	auipc	a5,0x0
    800071b8:	cec78793          	addi	a5,a5,-788 # 80006ea0 <consolewrite>
    800071bc:	0cf4b023          	sd	a5,192(s1)
    800071c0:	00813483          	ld	s1,8(sp)
    800071c4:	02010113          	addi	sp,sp,32
    800071c8:	00008067          	ret

00000000800071cc <console_read>:
    800071cc:	ff010113          	addi	sp,sp,-16
    800071d0:	00813423          	sd	s0,8(sp)
    800071d4:	01010413          	addi	s0,sp,16
    800071d8:	00813403          	ld	s0,8(sp)
    800071dc:	00004317          	auipc	t1,0x4
    800071e0:	61433303          	ld	t1,1556(t1) # 8000b7f0 <devsw+0x10>
    800071e4:	01010113          	addi	sp,sp,16
    800071e8:	00030067          	jr	t1

00000000800071ec <console_write>:
    800071ec:	ff010113          	addi	sp,sp,-16
    800071f0:	00813423          	sd	s0,8(sp)
    800071f4:	01010413          	addi	s0,sp,16
    800071f8:	00813403          	ld	s0,8(sp)
    800071fc:	00004317          	auipc	t1,0x4
    80007200:	5fc33303          	ld	t1,1532(t1) # 8000b7f8 <devsw+0x18>
    80007204:	01010113          	addi	sp,sp,16
    80007208:	00030067          	jr	t1

000000008000720c <panic>:
    8000720c:	fe010113          	addi	sp,sp,-32
    80007210:	00113c23          	sd	ra,24(sp)
    80007214:	00813823          	sd	s0,16(sp)
    80007218:	00913423          	sd	s1,8(sp)
    8000721c:	02010413          	addi	s0,sp,32
    80007220:	00050493          	mv	s1,a0
    80007224:	00002517          	auipc	a0,0x2
    80007228:	4e450513          	addi	a0,a0,1252 # 80009708 <_ZZ12printIntegermE6digits+0x140>
    8000722c:	00004797          	auipc	a5,0x4
    80007230:	6607a623          	sw	zero,1644(a5) # 8000b898 <pr+0x18>
    80007234:	00000097          	auipc	ra,0x0
    80007238:	034080e7          	jalr	52(ra) # 80007268 <__printf>
    8000723c:	00048513          	mv	a0,s1
    80007240:	00000097          	auipc	ra,0x0
    80007244:	028080e7          	jalr	40(ra) # 80007268 <__printf>
    80007248:	00002517          	auipc	a0,0x2
    8000724c:	ec850513          	addi	a0,a0,-312 # 80009110 <CONSOLE_STATUS+0x100>
    80007250:	00000097          	auipc	ra,0x0
    80007254:	018080e7          	jalr	24(ra) # 80007268 <__printf>
    80007258:	00100793          	li	a5,1
    8000725c:	00003717          	auipc	a4,0x3
    80007260:	38f72e23          	sw	a5,924(a4) # 8000a5f8 <panicked>
    80007264:	0000006f          	j	80007264 <panic+0x58>

0000000080007268 <__printf>:
    80007268:	f3010113          	addi	sp,sp,-208
    8000726c:	08813023          	sd	s0,128(sp)
    80007270:	07313423          	sd	s3,104(sp)
    80007274:	09010413          	addi	s0,sp,144
    80007278:	05813023          	sd	s8,64(sp)
    8000727c:	08113423          	sd	ra,136(sp)
    80007280:	06913c23          	sd	s1,120(sp)
    80007284:	07213823          	sd	s2,112(sp)
    80007288:	07413023          	sd	s4,96(sp)
    8000728c:	05513c23          	sd	s5,88(sp)
    80007290:	05613823          	sd	s6,80(sp)
    80007294:	05713423          	sd	s7,72(sp)
    80007298:	03913c23          	sd	s9,56(sp)
    8000729c:	03a13823          	sd	s10,48(sp)
    800072a0:	03b13423          	sd	s11,40(sp)
    800072a4:	00004317          	auipc	t1,0x4
    800072a8:	5dc30313          	addi	t1,t1,1500 # 8000b880 <pr>
    800072ac:	01832c03          	lw	s8,24(t1)
    800072b0:	00b43423          	sd	a1,8(s0)
    800072b4:	00c43823          	sd	a2,16(s0)
    800072b8:	00d43c23          	sd	a3,24(s0)
    800072bc:	02e43023          	sd	a4,32(s0)
    800072c0:	02f43423          	sd	a5,40(s0)
    800072c4:	03043823          	sd	a6,48(s0)
    800072c8:	03143c23          	sd	a7,56(s0)
    800072cc:	00050993          	mv	s3,a0
    800072d0:	4a0c1663          	bnez	s8,8000777c <__printf+0x514>
    800072d4:	60098c63          	beqz	s3,800078ec <__printf+0x684>
    800072d8:	0009c503          	lbu	a0,0(s3)
    800072dc:	00840793          	addi	a5,s0,8
    800072e0:	f6f43c23          	sd	a5,-136(s0)
    800072e4:	00000493          	li	s1,0
    800072e8:	22050063          	beqz	a0,80007508 <__printf+0x2a0>
    800072ec:	00002a37          	lui	s4,0x2
    800072f0:	00018ab7          	lui	s5,0x18
    800072f4:	000f4b37          	lui	s6,0xf4
    800072f8:	00989bb7          	lui	s7,0x989
    800072fc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007300:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007304:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007308:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000730c:	00148c9b          	addiw	s9,s1,1
    80007310:	02500793          	li	a5,37
    80007314:	01998933          	add	s2,s3,s9
    80007318:	38f51263          	bne	a0,a5,8000769c <__printf+0x434>
    8000731c:	00094783          	lbu	a5,0(s2)
    80007320:	00078c9b          	sext.w	s9,a5
    80007324:	1e078263          	beqz	a5,80007508 <__printf+0x2a0>
    80007328:	0024849b          	addiw	s1,s1,2
    8000732c:	07000713          	li	a4,112
    80007330:	00998933          	add	s2,s3,s1
    80007334:	38e78a63          	beq	a5,a4,800076c8 <__printf+0x460>
    80007338:	20f76863          	bltu	a4,a5,80007548 <__printf+0x2e0>
    8000733c:	42a78863          	beq	a5,a0,8000776c <__printf+0x504>
    80007340:	06400713          	li	a4,100
    80007344:	40e79663          	bne	a5,a4,80007750 <__printf+0x4e8>
    80007348:	f7843783          	ld	a5,-136(s0)
    8000734c:	0007a603          	lw	a2,0(a5)
    80007350:	00878793          	addi	a5,a5,8
    80007354:	f6f43c23          	sd	a5,-136(s0)
    80007358:	42064a63          	bltz	a2,8000778c <__printf+0x524>
    8000735c:	00a00713          	li	a4,10
    80007360:	02e677bb          	remuw	a5,a2,a4
    80007364:	00002d97          	auipc	s11,0x2
    80007368:	3ccd8d93          	addi	s11,s11,972 # 80009730 <digits>
    8000736c:	00900593          	li	a1,9
    80007370:	0006051b          	sext.w	a0,a2
    80007374:	00000c93          	li	s9,0
    80007378:	02079793          	slli	a5,a5,0x20
    8000737c:	0207d793          	srli	a5,a5,0x20
    80007380:	00fd87b3          	add	a5,s11,a5
    80007384:	0007c783          	lbu	a5,0(a5)
    80007388:	02e656bb          	divuw	a3,a2,a4
    8000738c:	f8f40023          	sb	a5,-128(s0)
    80007390:	14c5d863          	bge	a1,a2,800074e0 <__printf+0x278>
    80007394:	06300593          	li	a1,99
    80007398:	00100c93          	li	s9,1
    8000739c:	02e6f7bb          	remuw	a5,a3,a4
    800073a0:	02079793          	slli	a5,a5,0x20
    800073a4:	0207d793          	srli	a5,a5,0x20
    800073a8:	00fd87b3          	add	a5,s11,a5
    800073ac:	0007c783          	lbu	a5,0(a5)
    800073b0:	02e6d73b          	divuw	a4,a3,a4
    800073b4:	f8f400a3          	sb	a5,-127(s0)
    800073b8:	12a5f463          	bgeu	a1,a0,800074e0 <__printf+0x278>
    800073bc:	00a00693          	li	a3,10
    800073c0:	00900593          	li	a1,9
    800073c4:	02d777bb          	remuw	a5,a4,a3
    800073c8:	02079793          	slli	a5,a5,0x20
    800073cc:	0207d793          	srli	a5,a5,0x20
    800073d0:	00fd87b3          	add	a5,s11,a5
    800073d4:	0007c503          	lbu	a0,0(a5)
    800073d8:	02d757bb          	divuw	a5,a4,a3
    800073dc:	f8a40123          	sb	a0,-126(s0)
    800073e0:	48e5f263          	bgeu	a1,a4,80007864 <__printf+0x5fc>
    800073e4:	06300513          	li	a0,99
    800073e8:	02d7f5bb          	remuw	a1,a5,a3
    800073ec:	02059593          	slli	a1,a1,0x20
    800073f0:	0205d593          	srli	a1,a1,0x20
    800073f4:	00bd85b3          	add	a1,s11,a1
    800073f8:	0005c583          	lbu	a1,0(a1)
    800073fc:	02d7d7bb          	divuw	a5,a5,a3
    80007400:	f8b401a3          	sb	a1,-125(s0)
    80007404:	48e57263          	bgeu	a0,a4,80007888 <__printf+0x620>
    80007408:	3e700513          	li	a0,999
    8000740c:	02d7f5bb          	remuw	a1,a5,a3
    80007410:	02059593          	slli	a1,a1,0x20
    80007414:	0205d593          	srli	a1,a1,0x20
    80007418:	00bd85b3          	add	a1,s11,a1
    8000741c:	0005c583          	lbu	a1,0(a1)
    80007420:	02d7d7bb          	divuw	a5,a5,a3
    80007424:	f8b40223          	sb	a1,-124(s0)
    80007428:	46e57663          	bgeu	a0,a4,80007894 <__printf+0x62c>
    8000742c:	02d7f5bb          	remuw	a1,a5,a3
    80007430:	02059593          	slli	a1,a1,0x20
    80007434:	0205d593          	srli	a1,a1,0x20
    80007438:	00bd85b3          	add	a1,s11,a1
    8000743c:	0005c583          	lbu	a1,0(a1)
    80007440:	02d7d7bb          	divuw	a5,a5,a3
    80007444:	f8b402a3          	sb	a1,-123(s0)
    80007448:	46ea7863          	bgeu	s4,a4,800078b8 <__printf+0x650>
    8000744c:	02d7f5bb          	remuw	a1,a5,a3
    80007450:	02059593          	slli	a1,a1,0x20
    80007454:	0205d593          	srli	a1,a1,0x20
    80007458:	00bd85b3          	add	a1,s11,a1
    8000745c:	0005c583          	lbu	a1,0(a1)
    80007460:	02d7d7bb          	divuw	a5,a5,a3
    80007464:	f8b40323          	sb	a1,-122(s0)
    80007468:	3eeaf863          	bgeu	s5,a4,80007858 <__printf+0x5f0>
    8000746c:	02d7f5bb          	remuw	a1,a5,a3
    80007470:	02059593          	slli	a1,a1,0x20
    80007474:	0205d593          	srli	a1,a1,0x20
    80007478:	00bd85b3          	add	a1,s11,a1
    8000747c:	0005c583          	lbu	a1,0(a1)
    80007480:	02d7d7bb          	divuw	a5,a5,a3
    80007484:	f8b403a3          	sb	a1,-121(s0)
    80007488:	42eb7e63          	bgeu	s6,a4,800078c4 <__printf+0x65c>
    8000748c:	02d7f5bb          	remuw	a1,a5,a3
    80007490:	02059593          	slli	a1,a1,0x20
    80007494:	0205d593          	srli	a1,a1,0x20
    80007498:	00bd85b3          	add	a1,s11,a1
    8000749c:	0005c583          	lbu	a1,0(a1)
    800074a0:	02d7d7bb          	divuw	a5,a5,a3
    800074a4:	f8b40423          	sb	a1,-120(s0)
    800074a8:	42ebfc63          	bgeu	s7,a4,800078e0 <__printf+0x678>
    800074ac:	02079793          	slli	a5,a5,0x20
    800074b0:	0207d793          	srli	a5,a5,0x20
    800074b4:	00fd8db3          	add	s11,s11,a5
    800074b8:	000dc703          	lbu	a4,0(s11)
    800074bc:	00a00793          	li	a5,10
    800074c0:	00900c93          	li	s9,9
    800074c4:	f8e404a3          	sb	a4,-119(s0)
    800074c8:	00065c63          	bgez	a2,800074e0 <__printf+0x278>
    800074cc:	f9040713          	addi	a4,s0,-112
    800074d0:	00f70733          	add	a4,a4,a5
    800074d4:	02d00693          	li	a3,45
    800074d8:	fed70823          	sb	a3,-16(a4)
    800074dc:	00078c93          	mv	s9,a5
    800074e0:	f8040793          	addi	a5,s0,-128
    800074e4:	01978cb3          	add	s9,a5,s9
    800074e8:	f7f40d13          	addi	s10,s0,-129
    800074ec:	000cc503          	lbu	a0,0(s9)
    800074f0:	fffc8c93          	addi	s9,s9,-1
    800074f4:	00000097          	auipc	ra,0x0
    800074f8:	b90080e7          	jalr	-1136(ra) # 80007084 <consputc>
    800074fc:	ffac98e3          	bne	s9,s10,800074ec <__printf+0x284>
    80007500:	00094503          	lbu	a0,0(s2)
    80007504:	e00514e3          	bnez	a0,8000730c <__printf+0xa4>
    80007508:	1a0c1663          	bnez	s8,800076b4 <__printf+0x44c>
    8000750c:	08813083          	ld	ra,136(sp)
    80007510:	08013403          	ld	s0,128(sp)
    80007514:	07813483          	ld	s1,120(sp)
    80007518:	07013903          	ld	s2,112(sp)
    8000751c:	06813983          	ld	s3,104(sp)
    80007520:	06013a03          	ld	s4,96(sp)
    80007524:	05813a83          	ld	s5,88(sp)
    80007528:	05013b03          	ld	s6,80(sp)
    8000752c:	04813b83          	ld	s7,72(sp)
    80007530:	04013c03          	ld	s8,64(sp)
    80007534:	03813c83          	ld	s9,56(sp)
    80007538:	03013d03          	ld	s10,48(sp)
    8000753c:	02813d83          	ld	s11,40(sp)
    80007540:	0d010113          	addi	sp,sp,208
    80007544:	00008067          	ret
    80007548:	07300713          	li	a4,115
    8000754c:	1ce78a63          	beq	a5,a4,80007720 <__printf+0x4b8>
    80007550:	07800713          	li	a4,120
    80007554:	1ee79e63          	bne	a5,a4,80007750 <__printf+0x4e8>
    80007558:	f7843783          	ld	a5,-136(s0)
    8000755c:	0007a703          	lw	a4,0(a5)
    80007560:	00878793          	addi	a5,a5,8
    80007564:	f6f43c23          	sd	a5,-136(s0)
    80007568:	28074263          	bltz	a4,800077ec <__printf+0x584>
    8000756c:	00002d97          	auipc	s11,0x2
    80007570:	1c4d8d93          	addi	s11,s11,452 # 80009730 <digits>
    80007574:	00f77793          	andi	a5,a4,15
    80007578:	00fd87b3          	add	a5,s11,a5
    8000757c:	0007c683          	lbu	a3,0(a5)
    80007580:	00f00613          	li	a2,15
    80007584:	0007079b          	sext.w	a5,a4
    80007588:	f8d40023          	sb	a3,-128(s0)
    8000758c:	0047559b          	srliw	a1,a4,0x4
    80007590:	0047569b          	srliw	a3,a4,0x4
    80007594:	00000c93          	li	s9,0
    80007598:	0ee65063          	bge	a2,a4,80007678 <__printf+0x410>
    8000759c:	00f6f693          	andi	a3,a3,15
    800075a0:	00dd86b3          	add	a3,s11,a3
    800075a4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800075a8:	0087d79b          	srliw	a5,a5,0x8
    800075ac:	00100c93          	li	s9,1
    800075b0:	f8d400a3          	sb	a3,-127(s0)
    800075b4:	0cb67263          	bgeu	a2,a1,80007678 <__printf+0x410>
    800075b8:	00f7f693          	andi	a3,a5,15
    800075bc:	00dd86b3          	add	a3,s11,a3
    800075c0:	0006c583          	lbu	a1,0(a3)
    800075c4:	00f00613          	li	a2,15
    800075c8:	0047d69b          	srliw	a3,a5,0x4
    800075cc:	f8b40123          	sb	a1,-126(s0)
    800075d0:	0047d593          	srli	a1,a5,0x4
    800075d4:	28f67e63          	bgeu	a2,a5,80007870 <__printf+0x608>
    800075d8:	00f6f693          	andi	a3,a3,15
    800075dc:	00dd86b3          	add	a3,s11,a3
    800075e0:	0006c503          	lbu	a0,0(a3)
    800075e4:	0087d813          	srli	a6,a5,0x8
    800075e8:	0087d69b          	srliw	a3,a5,0x8
    800075ec:	f8a401a3          	sb	a0,-125(s0)
    800075f0:	28b67663          	bgeu	a2,a1,8000787c <__printf+0x614>
    800075f4:	00f6f693          	andi	a3,a3,15
    800075f8:	00dd86b3          	add	a3,s11,a3
    800075fc:	0006c583          	lbu	a1,0(a3)
    80007600:	00c7d513          	srli	a0,a5,0xc
    80007604:	00c7d69b          	srliw	a3,a5,0xc
    80007608:	f8b40223          	sb	a1,-124(s0)
    8000760c:	29067a63          	bgeu	a2,a6,800078a0 <__printf+0x638>
    80007610:	00f6f693          	andi	a3,a3,15
    80007614:	00dd86b3          	add	a3,s11,a3
    80007618:	0006c583          	lbu	a1,0(a3)
    8000761c:	0107d813          	srli	a6,a5,0x10
    80007620:	0107d69b          	srliw	a3,a5,0x10
    80007624:	f8b402a3          	sb	a1,-123(s0)
    80007628:	28a67263          	bgeu	a2,a0,800078ac <__printf+0x644>
    8000762c:	00f6f693          	andi	a3,a3,15
    80007630:	00dd86b3          	add	a3,s11,a3
    80007634:	0006c683          	lbu	a3,0(a3)
    80007638:	0147d79b          	srliw	a5,a5,0x14
    8000763c:	f8d40323          	sb	a3,-122(s0)
    80007640:	21067663          	bgeu	a2,a6,8000784c <__printf+0x5e4>
    80007644:	02079793          	slli	a5,a5,0x20
    80007648:	0207d793          	srli	a5,a5,0x20
    8000764c:	00fd8db3          	add	s11,s11,a5
    80007650:	000dc683          	lbu	a3,0(s11)
    80007654:	00800793          	li	a5,8
    80007658:	00700c93          	li	s9,7
    8000765c:	f8d403a3          	sb	a3,-121(s0)
    80007660:	00075c63          	bgez	a4,80007678 <__printf+0x410>
    80007664:	f9040713          	addi	a4,s0,-112
    80007668:	00f70733          	add	a4,a4,a5
    8000766c:	02d00693          	li	a3,45
    80007670:	fed70823          	sb	a3,-16(a4)
    80007674:	00078c93          	mv	s9,a5
    80007678:	f8040793          	addi	a5,s0,-128
    8000767c:	01978cb3          	add	s9,a5,s9
    80007680:	f7f40d13          	addi	s10,s0,-129
    80007684:	000cc503          	lbu	a0,0(s9)
    80007688:	fffc8c93          	addi	s9,s9,-1
    8000768c:	00000097          	auipc	ra,0x0
    80007690:	9f8080e7          	jalr	-1544(ra) # 80007084 <consputc>
    80007694:	ff9d18e3          	bne	s10,s9,80007684 <__printf+0x41c>
    80007698:	0100006f          	j	800076a8 <__printf+0x440>
    8000769c:	00000097          	auipc	ra,0x0
    800076a0:	9e8080e7          	jalr	-1560(ra) # 80007084 <consputc>
    800076a4:	000c8493          	mv	s1,s9
    800076a8:	00094503          	lbu	a0,0(s2)
    800076ac:	c60510e3          	bnez	a0,8000730c <__printf+0xa4>
    800076b0:	e40c0ee3          	beqz	s8,8000750c <__printf+0x2a4>
    800076b4:	00004517          	auipc	a0,0x4
    800076b8:	1cc50513          	addi	a0,a0,460 # 8000b880 <pr>
    800076bc:	00001097          	auipc	ra,0x1
    800076c0:	94c080e7          	jalr	-1716(ra) # 80008008 <release>
    800076c4:	e49ff06f          	j	8000750c <__printf+0x2a4>
    800076c8:	f7843783          	ld	a5,-136(s0)
    800076cc:	03000513          	li	a0,48
    800076d0:	01000d13          	li	s10,16
    800076d4:	00878713          	addi	a4,a5,8
    800076d8:	0007bc83          	ld	s9,0(a5)
    800076dc:	f6e43c23          	sd	a4,-136(s0)
    800076e0:	00000097          	auipc	ra,0x0
    800076e4:	9a4080e7          	jalr	-1628(ra) # 80007084 <consputc>
    800076e8:	07800513          	li	a0,120
    800076ec:	00000097          	auipc	ra,0x0
    800076f0:	998080e7          	jalr	-1640(ra) # 80007084 <consputc>
    800076f4:	00002d97          	auipc	s11,0x2
    800076f8:	03cd8d93          	addi	s11,s11,60 # 80009730 <digits>
    800076fc:	03ccd793          	srli	a5,s9,0x3c
    80007700:	00fd87b3          	add	a5,s11,a5
    80007704:	0007c503          	lbu	a0,0(a5)
    80007708:	fffd0d1b          	addiw	s10,s10,-1
    8000770c:	004c9c93          	slli	s9,s9,0x4
    80007710:	00000097          	auipc	ra,0x0
    80007714:	974080e7          	jalr	-1676(ra) # 80007084 <consputc>
    80007718:	fe0d12e3          	bnez	s10,800076fc <__printf+0x494>
    8000771c:	f8dff06f          	j	800076a8 <__printf+0x440>
    80007720:	f7843783          	ld	a5,-136(s0)
    80007724:	0007bc83          	ld	s9,0(a5)
    80007728:	00878793          	addi	a5,a5,8
    8000772c:	f6f43c23          	sd	a5,-136(s0)
    80007730:	000c9a63          	bnez	s9,80007744 <__printf+0x4dc>
    80007734:	1080006f          	j	8000783c <__printf+0x5d4>
    80007738:	001c8c93          	addi	s9,s9,1
    8000773c:	00000097          	auipc	ra,0x0
    80007740:	948080e7          	jalr	-1720(ra) # 80007084 <consputc>
    80007744:	000cc503          	lbu	a0,0(s9)
    80007748:	fe0518e3          	bnez	a0,80007738 <__printf+0x4d0>
    8000774c:	f5dff06f          	j	800076a8 <__printf+0x440>
    80007750:	02500513          	li	a0,37
    80007754:	00000097          	auipc	ra,0x0
    80007758:	930080e7          	jalr	-1744(ra) # 80007084 <consputc>
    8000775c:	000c8513          	mv	a0,s9
    80007760:	00000097          	auipc	ra,0x0
    80007764:	924080e7          	jalr	-1756(ra) # 80007084 <consputc>
    80007768:	f41ff06f          	j	800076a8 <__printf+0x440>
    8000776c:	02500513          	li	a0,37
    80007770:	00000097          	auipc	ra,0x0
    80007774:	914080e7          	jalr	-1772(ra) # 80007084 <consputc>
    80007778:	f31ff06f          	j	800076a8 <__printf+0x440>
    8000777c:	00030513          	mv	a0,t1
    80007780:	00000097          	auipc	ra,0x0
    80007784:	7bc080e7          	jalr	1980(ra) # 80007f3c <acquire>
    80007788:	b4dff06f          	j	800072d4 <__printf+0x6c>
    8000778c:	40c0053b          	negw	a0,a2
    80007790:	00a00713          	li	a4,10
    80007794:	02e576bb          	remuw	a3,a0,a4
    80007798:	00002d97          	auipc	s11,0x2
    8000779c:	f98d8d93          	addi	s11,s11,-104 # 80009730 <digits>
    800077a0:	ff700593          	li	a1,-9
    800077a4:	02069693          	slli	a3,a3,0x20
    800077a8:	0206d693          	srli	a3,a3,0x20
    800077ac:	00dd86b3          	add	a3,s11,a3
    800077b0:	0006c683          	lbu	a3,0(a3)
    800077b4:	02e557bb          	divuw	a5,a0,a4
    800077b8:	f8d40023          	sb	a3,-128(s0)
    800077bc:	10b65e63          	bge	a2,a1,800078d8 <__printf+0x670>
    800077c0:	06300593          	li	a1,99
    800077c4:	02e7f6bb          	remuw	a3,a5,a4
    800077c8:	02069693          	slli	a3,a3,0x20
    800077cc:	0206d693          	srli	a3,a3,0x20
    800077d0:	00dd86b3          	add	a3,s11,a3
    800077d4:	0006c683          	lbu	a3,0(a3)
    800077d8:	02e7d73b          	divuw	a4,a5,a4
    800077dc:	00200793          	li	a5,2
    800077e0:	f8d400a3          	sb	a3,-127(s0)
    800077e4:	bca5ece3          	bltu	a1,a0,800073bc <__printf+0x154>
    800077e8:	ce5ff06f          	j	800074cc <__printf+0x264>
    800077ec:	40e007bb          	negw	a5,a4
    800077f0:	00002d97          	auipc	s11,0x2
    800077f4:	f40d8d93          	addi	s11,s11,-192 # 80009730 <digits>
    800077f8:	00f7f693          	andi	a3,a5,15
    800077fc:	00dd86b3          	add	a3,s11,a3
    80007800:	0006c583          	lbu	a1,0(a3)
    80007804:	ff100613          	li	a2,-15
    80007808:	0047d69b          	srliw	a3,a5,0x4
    8000780c:	f8b40023          	sb	a1,-128(s0)
    80007810:	0047d59b          	srliw	a1,a5,0x4
    80007814:	0ac75e63          	bge	a4,a2,800078d0 <__printf+0x668>
    80007818:	00f6f693          	andi	a3,a3,15
    8000781c:	00dd86b3          	add	a3,s11,a3
    80007820:	0006c603          	lbu	a2,0(a3)
    80007824:	00f00693          	li	a3,15
    80007828:	0087d79b          	srliw	a5,a5,0x8
    8000782c:	f8c400a3          	sb	a2,-127(s0)
    80007830:	d8b6e4e3          	bltu	a3,a1,800075b8 <__printf+0x350>
    80007834:	00200793          	li	a5,2
    80007838:	e2dff06f          	j	80007664 <__printf+0x3fc>
    8000783c:	00002c97          	auipc	s9,0x2
    80007840:	ed4c8c93          	addi	s9,s9,-300 # 80009710 <_ZZ12printIntegermE6digits+0x148>
    80007844:	02800513          	li	a0,40
    80007848:	ef1ff06f          	j	80007738 <__printf+0x4d0>
    8000784c:	00700793          	li	a5,7
    80007850:	00600c93          	li	s9,6
    80007854:	e0dff06f          	j	80007660 <__printf+0x3f8>
    80007858:	00700793          	li	a5,7
    8000785c:	00600c93          	li	s9,6
    80007860:	c69ff06f          	j	800074c8 <__printf+0x260>
    80007864:	00300793          	li	a5,3
    80007868:	00200c93          	li	s9,2
    8000786c:	c5dff06f          	j	800074c8 <__printf+0x260>
    80007870:	00300793          	li	a5,3
    80007874:	00200c93          	li	s9,2
    80007878:	de9ff06f          	j	80007660 <__printf+0x3f8>
    8000787c:	00400793          	li	a5,4
    80007880:	00300c93          	li	s9,3
    80007884:	dddff06f          	j	80007660 <__printf+0x3f8>
    80007888:	00400793          	li	a5,4
    8000788c:	00300c93          	li	s9,3
    80007890:	c39ff06f          	j	800074c8 <__printf+0x260>
    80007894:	00500793          	li	a5,5
    80007898:	00400c93          	li	s9,4
    8000789c:	c2dff06f          	j	800074c8 <__printf+0x260>
    800078a0:	00500793          	li	a5,5
    800078a4:	00400c93          	li	s9,4
    800078a8:	db9ff06f          	j	80007660 <__printf+0x3f8>
    800078ac:	00600793          	li	a5,6
    800078b0:	00500c93          	li	s9,5
    800078b4:	dadff06f          	j	80007660 <__printf+0x3f8>
    800078b8:	00600793          	li	a5,6
    800078bc:	00500c93          	li	s9,5
    800078c0:	c09ff06f          	j	800074c8 <__printf+0x260>
    800078c4:	00800793          	li	a5,8
    800078c8:	00700c93          	li	s9,7
    800078cc:	bfdff06f          	j	800074c8 <__printf+0x260>
    800078d0:	00100793          	li	a5,1
    800078d4:	d91ff06f          	j	80007664 <__printf+0x3fc>
    800078d8:	00100793          	li	a5,1
    800078dc:	bf1ff06f          	j	800074cc <__printf+0x264>
    800078e0:	00900793          	li	a5,9
    800078e4:	00800c93          	li	s9,8
    800078e8:	be1ff06f          	j	800074c8 <__printf+0x260>
    800078ec:	00002517          	auipc	a0,0x2
    800078f0:	e2c50513          	addi	a0,a0,-468 # 80009718 <_ZZ12printIntegermE6digits+0x150>
    800078f4:	00000097          	auipc	ra,0x0
    800078f8:	918080e7          	jalr	-1768(ra) # 8000720c <panic>

00000000800078fc <printfinit>:
    800078fc:	fe010113          	addi	sp,sp,-32
    80007900:	00813823          	sd	s0,16(sp)
    80007904:	00913423          	sd	s1,8(sp)
    80007908:	00113c23          	sd	ra,24(sp)
    8000790c:	02010413          	addi	s0,sp,32
    80007910:	00004497          	auipc	s1,0x4
    80007914:	f7048493          	addi	s1,s1,-144 # 8000b880 <pr>
    80007918:	00048513          	mv	a0,s1
    8000791c:	00002597          	auipc	a1,0x2
    80007920:	e0c58593          	addi	a1,a1,-500 # 80009728 <_ZZ12printIntegermE6digits+0x160>
    80007924:	00000097          	auipc	ra,0x0
    80007928:	5f4080e7          	jalr	1524(ra) # 80007f18 <initlock>
    8000792c:	01813083          	ld	ra,24(sp)
    80007930:	01013403          	ld	s0,16(sp)
    80007934:	0004ac23          	sw	zero,24(s1)
    80007938:	00813483          	ld	s1,8(sp)
    8000793c:	02010113          	addi	sp,sp,32
    80007940:	00008067          	ret

0000000080007944 <uartinit>:
    80007944:	ff010113          	addi	sp,sp,-16
    80007948:	00813423          	sd	s0,8(sp)
    8000794c:	01010413          	addi	s0,sp,16
    80007950:	100007b7          	lui	a5,0x10000
    80007954:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007958:	f8000713          	li	a4,-128
    8000795c:	00e781a3          	sb	a4,3(a5)
    80007960:	00300713          	li	a4,3
    80007964:	00e78023          	sb	a4,0(a5)
    80007968:	000780a3          	sb	zero,1(a5)
    8000796c:	00e781a3          	sb	a4,3(a5)
    80007970:	00700693          	li	a3,7
    80007974:	00d78123          	sb	a3,2(a5)
    80007978:	00e780a3          	sb	a4,1(a5)
    8000797c:	00813403          	ld	s0,8(sp)
    80007980:	01010113          	addi	sp,sp,16
    80007984:	00008067          	ret

0000000080007988 <uartputc>:
    80007988:	00003797          	auipc	a5,0x3
    8000798c:	c707a783          	lw	a5,-912(a5) # 8000a5f8 <panicked>
    80007990:	00078463          	beqz	a5,80007998 <uartputc+0x10>
    80007994:	0000006f          	j	80007994 <uartputc+0xc>
    80007998:	fd010113          	addi	sp,sp,-48
    8000799c:	02813023          	sd	s0,32(sp)
    800079a0:	00913c23          	sd	s1,24(sp)
    800079a4:	01213823          	sd	s2,16(sp)
    800079a8:	01313423          	sd	s3,8(sp)
    800079ac:	02113423          	sd	ra,40(sp)
    800079b0:	03010413          	addi	s0,sp,48
    800079b4:	00003917          	auipc	s2,0x3
    800079b8:	c4c90913          	addi	s2,s2,-948 # 8000a600 <uart_tx_r>
    800079bc:	00093783          	ld	a5,0(s2)
    800079c0:	00003497          	auipc	s1,0x3
    800079c4:	c4848493          	addi	s1,s1,-952 # 8000a608 <uart_tx_w>
    800079c8:	0004b703          	ld	a4,0(s1)
    800079cc:	02078693          	addi	a3,a5,32
    800079d0:	00050993          	mv	s3,a0
    800079d4:	02e69c63          	bne	a3,a4,80007a0c <uartputc+0x84>
    800079d8:	00001097          	auipc	ra,0x1
    800079dc:	834080e7          	jalr	-1996(ra) # 8000820c <push_on>
    800079e0:	00093783          	ld	a5,0(s2)
    800079e4:	0004b703          	ld	a4,0(s1)
    800079e8:	02078793          	addi	a5,a5,32
    800079ec:	00e79463          	bne	a5,a4,800079f4 <uartputc+0x6c>
    800079f0:	0000006f          	j	800079f0 <uartputc+0x68>
    800079f4:	00001097          	auipc	ra,0x1
    800079f8:	88c080e7          	jalr	-1908(ra) # 80008280 <pop_on>
    800079fc:	00093783          	ld	a5,0(s2)
    80007a00:	0004b703          	ld	a4,0(s1)
    80007a04:	02078693          	addi	a3,a5,32
    80007a08:	fce688e3          	beq	a3,a4,800079d8 <uartputc+0x50>
    80007a0c:	01f77693          	andi	a3,a4,31
    80007a10:	00004597          	auipc	a1,0x4
    80007a14:	e9058593          	addi	a1,a1,-368 # 8000b8a0 <uart_tx_buf>
    80007a18:	00d586b3          	add	a3,a1,a3
    80007a1c:	00170713          	addi	a4,a4,1
    80007a20:	01368023          	sb	s3,0(a3)
    80007a24:	00e4b023          	sd	a4,0(s1)
    80007a28:	10000637          	lui	a2,0x10000
    80007a2c:	02f71063          	bne	a4,a5,80007a4c <uartputc+0xc4>
    80007a30:	0340006f          	j	80007a64 <uartputc+0xdc>
    80007a34:	00074703          	lbu	a4,0(a4)
    80007a38:	00f93023          	sd	a5,0(s2)
    80007a3c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007a40:	00093783          	ld	a5,0(s2)
    80007a44:	0004b703          	ld	a4,0(s1)
    80007a48:	00f70e63          	beq	a4,a5,80007a64 <uartputc+0xdc>
    80007a4c:	00564683          	lbu	a3,5(a2)
    80007a50:	01f7f713          	andi	a4,a5,31
    80007a54:	00e58733          	add	a4,a1,a4
    80007a58:	0206f693          	andi	a3,a3,32
    80007a5c:	00178793          	addi	a5,a5,1
    80007a60:	fc069ae3          	bnez	a3,80007a34 <uartputc+0xac>
    80007a64:	02813083          	ld	ra,40(sp)
    80007a68:	02013403          	ld	s0,32(sp)
    80007a6c:	01813483          	ld	s1,24(sp)
    80007a70:	01013903          	ld	s2,16(sp)
    80007a74:	00813983          	ld	s3,8(sp)
    80007a78:	03010113          	addi	sp,sp,48
    80007a7c:	00008067          	ret

0000000080007a80 <uartputc_sync>:
    80007a80:	ff010113          	addi	sp,sp,-16
    80007a84:	00813423          	sd	s0,8(sp)
    80007a88:	01010413          	addi	s0,sp,16
    80007a8c:	00003717          	auipc	a4,0x3
    80007a90:	b6c72703          	lw	a4,-1172(a4) # 8000a5f8 <panicked>
    80007a94:	02071663          	bnez	a4,80007ac0 <uartputc_sync+0x40>
    80007a98:	00050793          	mv	a5,a0
    80007a9c:	100006b7          	lui	a3,0x10000
    80007aa0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007aa4:	02077713          	andi	a4,a4,32
    80007aa8:	fe070ce3          	beqz	a4,80007aa0 <uartputc_sync+0x20>
    80007aac:	0ff7f793          	andi	a5,a5,255
    80007ab0:	00f68023          	sb	a5,0(a3)
    80007ab4:	00813403          	ld	s0,8(sp)
    80007ab8:	01010113          	addi	sp,sp,16
    80007abc:	00008067          	ret
    80007ac0:	0000006f          	j	80007ac0 <uartputc_sync+0x40>

0000000080007ac4 <uartstart>:
    80007ac4:	ff010113          	addi	sp,sp,-16
    80007ac8:	00813423          	sd	s0,8(sp)
    80007acc:	01010413          	addi	s0,sp,16
    80007ad0:	00003617          	auipc	a2,0x3
    80007ad4:	b3060613          	addi	a2,a2,-1232 # 8000a600 <uart_tx_r>
    80007ad8:	00003517          	auipc	a0,0x3
    80007adc:	b3050513          	addi	a0,a0,-1232 # 8000a608 <uart_tx_w>
    80007ae0:	00063783          	ld	a5,0(a2)
    80007ae4:	00053703          	ld	a4,0(a0)
    80007ae8:	04f70263          	beq	a4,a5,80007b2c <uartstart+0x68>
    80007aec:	100005b7          	lui	a1,0x10000
    80007af0:	00004817          	auipc	a6,0x4
    80007af4:	db080813          	addi	a6,a6,-592 # 8000b8a0 <uart_tx_buf>
    80007af8:	01c0006f          	j	80007b14 <uartstart+0x50>
    80007afc:	0006c703          	lbu	a4,0(a3)
    80007b00:	00f63023          	sd	a5,0(a2)
    80007b04:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007b08:	00063783          	ld	a5,0(a2)
    80007b0c:	00053703          	ld	a4,0(a0)
    80007b10:	00f70e63          	beq	a4,a5,80007b2c <uartstart+0x68>
    80007b14:	01f7f713          	andi	a4,a5,31
    80007b18:	00e806b3          	add	a3,a6,a4
    80007b1c:	0055c703          	lbu	a4,5(a1)
    80007b20:	00178793          	addi	a5,a5,1
    80007b24:	02077713          	andi	a4,a4,32
    80007b28:	fc071ae3          	bnez	a4,80007afc <uartstart+0x38>
    80007b2c:	00813403          	ld	s0,8(sp)
    80007b30:	01010113          	addi	sp,sp,16
    80007b34:	00008067          	ret

0000000080007b38 <uartgetc>:
    80007b38:	ff010113          	addi	sp,sp,-16
    80007b3c:	00813423          	sd	s0,8(sp)
    80007b40:	01010413          	addi	s0,sp,16
    80007b44:	10000737          	lui	a4,0x10000
    80007b48:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007b4c:	0017f793          	andi	a5,a5,1
    80007b50:	00078c63          	beqz	a5,80007b68 <uartgetc+0x30>
    80007b54:	00074503          	lbu	a0,0(a4)
    80007b58:	0ff57513          	andi	a0,a0,255
    80007b5c:	00813403          	ld	s0,8(sp)
    80007b60:	01010113          	addi	sp,sp,16
    80007b64:	00008067          	ret
    80007b68:	fff00513          	li	a0,-1
    80007b6c:	ff1ff06f          	j	80007b5c <uartgetc+0x24>

0000000080007b70 <uartintr>:
    80007b70:	100007b7          	lui	a5,0x10000
    80007b74:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007b78:	0017f793          	andi	a5,a5,1
    80007b7c:	0a078463          	beqz	a5,80007c24 <uartintr+0xb4>
    80007b80:	fe010113          	addi	sp,sp,-32
    80007b84:	00813823          	sd	s0,16(sp)
    80007b88:	00913423          	sd	s1,8(sp)
    80007b8c:	00113c23          	sd	ra,24(sp)
    80007b90:	02010413          	addi	s0,sp,32
    80007b94:	100004b7          	lui	s1,0x10000
    80007b98:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007b9c:	0ff57513          	andi	a0,a0,255
    80007ba0:	fffff097          	auipc	ra,0xfffff
    80007ba4:	534080e7          	jalr	1332(ra) # 800070d4 <consoleintr>
    80007ba8:	0054c783          	lbu	a5,5(s1)
    80007bac:	0017f793          	andi	a5,a5,1
    80007bb0:	fe0794e3          	bnez	a5,80007b98 <uartintr+0x28>
    80007bb4:	00003617          	auipc	a2,0x3
    80007bb8:	a4c60613          	addi	a2,a2,-1460 # 8000a600 <uart_tx_r>
    80007bbc:	00003517          	auipc	a0,0x3
    80007bc0:	a4c50513          	addi	a0,a0,-1460 # 8000a608 <uart_tx_w>
    80007bc4:	00063783          	ld	a5,0(a2)
    80007bc8:	00053703          	ld	a4,0(a0)
    80007bcc:	04f70263          	beq	a4,a5,80007c10 <uartintr+0xa0>
    80007bd0:	100005b7          	lui	a1,0x10000
    80007bd4:	00004817          	auipc	a6,0x4
    80007bd8:	ccc80813          	addi	a6,a6,-820 # 8000b8a0 <uart_tx_buf>
    80007bdc:	01c0006f          	j	80007bf8 <uartintr+0x88>
    80007be0:	0006c703          	lbu	a4,0(a3)
    80007be4:	00f63023          	sd	a5,0(a2)
    80007be8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007bec:	00063783          	ld	a5,0(a2)
    80007bf0:	00053703          	ld	a4,0(a0)
    80007bf4:	00f70e63          	beq	a4,a5,80007c10 <uartintr+0xa0>
    80007bf8:	01f7f713          	andi	a4,a5,31
    80007bfc:	00e806b3          	add	a3,a6,a4
    80007c00:	0055c703          	lbu	a4,5(a1)
    80007c04:	00178793          	addi	a5,a5,1
    80007c08:	02077713          	andi	a4,a4,32
    80007c0c:	fc071ae3          	bnez	a4,80007be0 <uartintr+0x70>
    80007c10:	01813083          	ld	ra,24(sp)
    80007c14:	01013403          	ld	s0,16(sp)
    80007c18:	00813483          	ld	s1,8(sp)
    80007c1c:	02010113          	addi	sp,sp,32
    80007c20:	00008067          	ret
    80007c24:	00003617          	auipc	a2,0x3
    80007c28:	9dc60613          	addi	a2,a2,-1572 # 8000a600 <uart_tx_r>
    80007c2c:	00003517          	auipc	a0,0x3
    80007c30:	9dc50513          	addi	a0,a0,-1572 # 8000a608 <uart_tx_w>
    80007c34:	00063783          	ld	a5,0(a2)
    80007c38:	00053703          	ld	a4,0(a0)
    80007c3c:	04f70263          	beq	a4,a5,80007c80 <uartintr+0x110>
    80007c40:	100005b7          	lui	a1,0x10000
    80007c44:	00004817          	auipc	a6,0x4
    80007c48:	c5c80813          	addi	a6,a6,-932 # 8000b8a0 <uart_tx_buf>
    80007c4c:	01c0006f          	j	80007c68 <uartintr+0xf8>
    80007c50:	0006c703          	lbu	a4,0(a3)
    80007c54:	00f63023          	sd	a5,0(a2)
    80007c58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007c5c:	00063783          	ld	a5,0(a2)
    80007c60:	00053703          	ld	a4,0(a0)
    80007c64:	02f70063          	beq	a4,a5,80007c84 <uartintr+0x114>
    80007c68:	01f7f713          	andi	a4,a5,31
    80007c6c:	00e806b3          	add	a3,a6,a4
    80007c70:	0055c703          	lbu	a4,5(a1)
    80007c74:	00178793          	addi	a5,a5,1
    80007c78:	02077713          	andi	a4,a4,32
    80007c7c:	fc071ae3          	bnez	a4,80007c50 <uartintr+0xe0>
    80007c80:	00008067          	ret
    80007c84:	00008067          	ret

0000000080007c88 <kinit>:
    80007c88:	fc010113          	addi	sp,sp,-64
    80007c8c:	02913423          	sd	s1,40(sp)
    80007c90:	fffff7b7          	lui	a5,0xfffff
    80007c94:	00005497          	auipc	s1,0x5
    80007c98:	c3b48493          	addi	s1,s1,-965 # 8000c8cf <end+0xfff>
    80007c9c:	02813823          	sd	s0,48(sp)
    80007ca0:	01313c23          	sd	s3,24(sp)
    80007ca4:	00f4f4b3          	and	s1,s1,a5
    80007ca8:	02113c23          	sd	ra,56(sp)
    80007cac:	03213023          	sd	s2,32(sp)
    80007cb0:	01413823          	sd	s4,16(sp)
    80007cb4:	01513423          	sd	s5,8(sp)
    80007cb8:	04010413          	addi	s0,sp,64
    80007cbc:	000017b7          	lui	a5,0x1
    80007cc0:	01100993          	li	s3,17
    80007cc4:	00f487b3          	add	a5,s1,a5
    80007cc8:	01b99993          	slli	s3,s3,0x1b
    80007ccc:	06f9e063          	bltu	s3,a5,80007d2c <kinit+0xa4>
    80007cd0:	00004a97          	auipc	s5,0x4
    80007cd4:	c00a8a93          	addi	s5,s5,-1024 # 8000b8d0 <end>
    80007cd8:	0754ec63          	bltu	s1,s5,80007d50 <kinit+0xc8>
    80007cdc:	0734fa63          	bgeu	s1,s3,80007d50 <kinit+0xc8>
    80007ce0:	00088a37          	lui	s4,0x88
    80007ce4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007ce8:	00003917          	auipc	s2,0x3
    80007cec:	92890913          	addi	s2,s2,-1752 # 8000a610 <kmem>
    80007cf0:	00ca1a13          	slli	s4,s4,0xc
    80007cf4:	0140006f          	j	80007d08 <kinit+0x80>
    80007cf8:	000017b7          	lui	a5,0x1
    80007cfc:	00f484b3          	add	s1,s1,a5
    80007d00:	0554e863          	bltu	s1,s5,80007d50 <kinit+0xc8>
    80007d04:	0534f663          	bgeu	s1,s3,80007d50 <kinit+0xc8>
    80007d08:	00001637          	lui	a2,0x1
    80007d0c:	00100593          	li	a1,1
    80007d10:	00048513          	mv	a0,s1
    80007d14:	00000097          	auipc	ra,0x0
    80007d18:	5e4080e7          	jalr	1508(ra) # 800082f8 <__memset>
    80007d1c:	00093783          	ld	a5,0(s2)
    80007d20:	00f4b023          	sd	a5,0(s1)
    80007d24:	00993023          	sd	s1,0(s2)
    80007d28:	fd4498e3          	bne	s1,s4,80007cf8 <kinit+0x70>
    80007d2c:	03813083          	ld	ra,56(sp)
    80007d30:	03013403          	ld	s0,48(sp)
    80007d34:	02813483          	ld	s1,40(sp)
    80007d38:	02013903          	ld	s2,32(sp)
    80007d3c:	01813983          	ld	s3,24(sp)
    80007d40:	01013a03          	ld	s4,16(sp)
    80007d44:	00813a83          	ld	s5,8(sp)
    80007d48:	04010113          	addi	sp,sp,64
    80007d4c:	00008067          	ret
    80007d50:	00002517          	auipc	a0,0x2
    80007d54:	9f850513          	addi	a0,a0,-1544 # 80009748 <digits+0x18>
    80007d58:	fffff097          	auipc	ra,0xfffff
    80007d5c:	4b4080e7          	jalr	1204(ra) # 8000720c <panic>

0000000080007d60 <freerange>:
    80007d60:	fc010113          	addi	sp,sp,-64
    80007d64:	000017b7          	lui	a5,0x1
    80007d68:	02913423          	sd	s1,40(sp)
    80007d6c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007d70:	009504b3          	add	s1,a0,s1
    80007d74:	fffff537          	lui	a0,0xfffff
    80007d78:	02813823          	sd	s0,48(sp)
    80007d7c:	02113c23          	sd	ra,56(sp)
    80007d80:	03213023          	sd	s2,32(sp)
    80007d84:	01313c23          	sd	s3,24(sp)
    80007d88:	01413823          	sd	s4,16(sp)
    80007d8c:	01513423          	sd	s5,8(sp)
    80007d90:	01613023          	sd	s6,0(sp)
    80007d94:	04010413          	addi	s0,sp,64
    80007d98:	00a4f4b3          	and	s1,s1,a0
    80007d9c:	00f487b3          	add	a5,s1,a5
    80007da0:	06f5e463          	bltu	a1,a5,80007e08 <freerange+0xa8>
    80007da4:	00004a97          	auipc	s5,0x4
    80007da8:	b2ca8a93          	addi	s5,s5,-1236 # 8000b8d0 <end>
    80007dac:	0954e263          	bltu	s1,s5,80007e30 <freerange+0xd0>
    80007db0:	01100993          	li	s3,17
    80007db4:	01b99993          	slli	s3,s3,0x1b
    80007db8:	0734fc63          	bgeu	s1,s3,80007e30 <freerange+0xd0>
    80007dbc:	00058a13          	mv	s4,a1
    80007dc0:	00003917          	auipc	s2,0x3
    80007dc4:	85090913          	addi	s2,s2,-1968 # 8000a610 <kmem>
    80007dc8:	00002b37          	lui	s6,0x2
    80007dcc:	0140006f          	j	80007de0 <freerange+0x80>
    80007dd0:	000017b7          	lui	a5,0x1
    80007dd4:	00f484b3          	add	s1,s1,a5
    80007dd8:	0554ec63          	bltu	s1,s5,80007e30 <freerange+0xd0>
    80007ddc:	0534fa63          	bgeu	s1,s3,80007e30 <freerange+0xd0>
    80007de0:	00001637          	lui	a2,0x1
    80007de4:	00100593          	li	a1,1
    80007de8:	00048513          	mv	a0,s1
    80007dec:	00000097          	auipc	ra,0x0
    80007df0:	50c080e7          	jalr	1292(ra) # 800082f8 <__memset>
    80007df4:	00093703          	ld	a4,0(s2)
    80007df8:	016487b3          	add	a5,s1,s6
    80007dfc:	00e4b023          	sd	a4,0(s1)
    80007e00:	00993023          	sd	s1,0(s2)
    80007e04:	fcfa76e3          	bgeu	s4,a5,80007dd0 <freerange+0x70>
    80007e08:	03813083          	ld	ra,56(sp)
    80007e0c:	03013403          	ld	s0,48(sp)
    80007e10:	02813483          	ld	s1,40(sp)
    80007e14:	02013903          	ld	s2,32(sp)
    80007e18:	01813983          	ld	s3,24(sp)
    80007e1c:	01013a03          	ld	s4,16(sp)
    80007e20:	00813a83          	ld	s5,8(sp)
    80007e24:	00013b03          	ld	s6,0(sp)
    80007e28:	04010113          	addi	sp,sp,64
    80007e2c:	00008067          	ret
    80007e30:	00002517          	auipc	a0,0x2
    80007e34:	91850513          	addi	a0,a0,-1768 # 80009748 <digits+0x18>
    80007e38:	fffff097          	auipc	ra,0xfffff
    80007e3c:	3d4080e7          	jalr	980(ra) # 8000720c <panic>

0000000080007e40 <kfree>:
    80007e40:	fe010113          	addi	sp,sp,-32
    80007e44:	00813823          	sd	s0,16(sp)
    80007e48:	00113c23          	sd	ra,24(sp)
    80007e4c:	00913423          	sd	s1,8(sp)
    80007e50:	02010413          	addi	s0,sp,32
    80007e54:	03451793          	slli	a5,a0,0x34
    80007e58:	04079c63          	bnez	a5,80007eb0 <kfree+0x70>
    80007e5c:	00004797          	auipc	a5,0x4
    80007e60:	a7478793          	addi	a5,a5,-1420 # 8000b8d0 <end>
    80007e64:	00050493          	mv	s1,a0
    80007e68:	04f56463          	bltu	a0,a5,80007eb0 <kfree+0x70>
    80007e6c:	01100793          	li	a5,17
    80007e70:	01b79793          	slli	a5,a5,0x1b
    80007e74:	02f57e63          	bgeu	a0,a5,80007eb0 <kfree+0x70>
    80007e78:	00001637          	lui	a2,0x1
    80007e7c:	00100593          	li	a1,1
    80007e80:	00000097          	auipc	ra,0x0
    80007e84:	478080e7          	jalr	1144(ra) # 800082f8 <__memset>
    80007e88:	00002797          	auipc	a5,0x2
    80007e8c:	78878793          	addi	a5,a5,1928 # 8000a610 <kmem>
    80007e90:	0007b703          	ld	a4,0(a5)
    80007e94:	01813083          	ld	ra,24(sp)
    80007e98:	01013403          	ld	s0,16(sp)
    80007e9c:	00e4b023          	sd	a4,0(s1)
    80007ea0:	0097b023          	sd	s1,0(a5)
    80007ea4:	00813483          	ld	s1,8(sp)
    80007ea8:	02010113          	addi	sp,sp,32
    80007eac:	00008067          	ret
    80007eb0:	00002517          	auipc	a0,0x2
    80007eb4:	89850513          	addi	a0,a0,-1896 # 80009748 <digits+0x18>
    80007eb8:	fffff097          	auipc	ra,0xfffff
    80007ebc:	354080e7          	jalr	852(ra) # 8000720c <panic>

0000000080007ec0 <kalloc>:
    80007ec0:	fe010113          	addi	sp,sp,-32
    80007ec4:	00813823          	sd	s0,16(sp)
    80007ec8:	00913423          	sd	s1,8(sp)
    80007ecc:	00113c23          	sd	ra,24(sp)
    80007ed0:	02010413          	addi	s0,sp,32
    80007ed4:	00002797          	auipc	a5,0x2
    80007ed8:	73c78793          	addi	a5,a5,1852 # 8000a610 <kmem>
    80007edc:	0007b483          	ld	s1,0(a5)
    80007ee0:	02048063          	beqz	s1,80007f00 <kalloc+0x40>
    80007ee4:	0004b703          	ld	a4,0(s1)
    80007ee8:	00001637          	lui	a2,0x1
    80007eec:	00500593          	li	a1,5
    80007ef0:	00048513          	mv	a0,s1
    80007ef4:	00e7b023          	sd	a4,0(a5)
    80007ef8:	00000097          	auipc	ra,0x0
    80007efc:	400080e7          	jalr	1024(ra) # 800082f8 <__memset>
    80007f00:	01813083          	ld	ra,24(sp)
    80007f04:	01013403          	ld	s0,16(sp)
    80007f08:	00048513          	mv	a0,s1
    80007f0c:	00813483          	ld	s1,8(sp)
    80007f10:	02010113          	addi	sp,sp,32
    80007f14:	00008067          	ret

0000000080007f18 <initlock>:
    80007f18:	ff010113          	addi	sp,sp,-16
    80007f1c:	00813423          	sd	s0,8(sp)
    80007f20:	01010413          	addi	s0,sp,16
    80007f24:	00813403          	ld	s0,8(sp)
    80007f28:	00b53423          	sd	a1,8(a0)
    80007f2c:	00052023          	sw	zero,0(a0)
    80007f30:	00053823          	sd	zero,16(a0)
    80007f34:	01010113          	addi	sp,sp,16
    80007f38:	00008067          	ret

0000000080007f3c <acquire>:
    80007f3c:	fe010113          	addi	sp,sp,-32
    80007f40:	00813823          	sd	s0,16(sp)
    80007f44:	00913423          	sd	s1,8(sp)
    80007f48:	00113c23          	sd	ra,24(sp)
    80007f4c:	01213023          	sd	s2,0(sp)
    80007f50:	02010413          	addi	s0,sp,32
    80007f54:	00050493          	mv	s1,a0
    80007f58:	10002973          	csrr	s2,sstatus
    80007f5c:	100027f3          	csrr	a5,sstatus
    80007f60:	ffd7f793          	andi	a5,a5,-3
    80007f64:	10079073          	csrw	sstatus,a5
    80007f68:	fffff097          	auipc	ra,0xfffff
    80007f6c:	8e8080e7          	jalr	-1816(ra) # 80006850 <mycpu>
    80007f70:	07852783          	lw	a5,120(a0)
    80007f74:	06078e63          	beqz	a5,80007ff0 <acquire+0xb4>
    80007f78:	fffff097          	auipc	ra,0xfffff
    80007f7c:	8d8080e7          	jalr	-1832(ra) # 80006850 <mycpu>
    80007f80:	07852783          	lw	a5,120(a0)
    80007f84:	0004a703          	lw	a4,0(s1)
    80007f88:	0017879b          	addiw	a5,a5,1
    80007f8c:	06f52c23          	sw	a5,120(a0)
    80007f90:	04071063          	bnez	a4,80007fd0 <acquire+0x94>
    80007f94:	00100713          	li	a4,1
    80007f98:	00070793          	mv	a5,a4
    80007f9c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007fa0:	0007879b          	sext.w	a5,a5
    80007fa4:	fe079ae3          	bnez	a5,80007f98 <acquire+0x5c>
    80007fa8:	0ff0000f          	fence
    80007fac:	fffff097          	auipc	ra,0xfffff
    80007fb0:	8a4080e7          	jalr	-1884(ra) # 80006850 <mycpu>
    80007fb4:	01813083          	ld	ra,24(sp)
    80007fb8:	01013403          	ld	s0,16(sp)
    80007fbc:	00a4b823          	sd	a0,16(s1)
    80007fc0:	00013903          	ld	s2,0(sp)
    80007fc4:	00813483          	ld	s1,8(sp)
    80007fc8:	02010113          	addi	sp,sp,32
    80007fcc:	00008067          	ret
    80007fd0:	0104b903          	ld	s2,16(s1)
    80007fd4:	fffff097          	auipc	ra,0xfffff
    80007fd8:	87c080e7          	jalr	-1924(ra) # 80006850 <mycpu>
    80007fdc:	faa91ce3          	bne	s2,a0,80007f94 <acquire+0x58>
    80007fe0:	00001517          	auipc	a0,0x1
    80007fe4:	77050513          	addi	a0,a0,1904 # 80009750 <digits+0x20>
    80007fe8:	fffff097          	auipc	ra,0xfffff
    80007fec:	224080e7          	jalr	548(ra) # 8000720c <panic>
    80007ff0:	00195913          	srli	s2,s2,0x1
    80007ff4:	fffff097          	auipc	ra,0xfffff
    80007ff8:	85c080e7          	jalr	-1956(ra) # 80006850 <mycpu>
    80007ffc:	00197913          	andi	s2,s2,1
    80008000:	07252e23          	sw	s2,124(a0)
    80008004:	f75ff06f          	j	80007f78 <acquire+0x3c>

0000000080008008 <release>:
    80008008:	fe010113          	addi	sp,sp,-32
    8000800c:	00813823          	sd	s0,16(sp)
    80008010:	00113c23          	sd	ra,24(sp)
    80008014:	00913423          	sd	s1,8(sp)
    80008018:	01213023          	sd	s2,0(sp)
    8000801c:	02010413          	addi	s0,sp,32
    80008020:	00052783          	lw	a5,0(a0)
    80008024:	00079a63          	bnez	a5,80008038 <release+0x30>
    80008028:	00001517          	auipc	a0,0x1
    8000802c:	73050513          	addi	a0,a0,1840 # 80009758 <digits+0x28>
    80008030:	fffff097          	auipc	ra,0xfffff
    80008034:	1dc080e7          	jalr	476(ra) # 8000720c <panic>
    80008038:	01053903          	ld	s2,16(a0)
    8000803c:	00050493          	mv	s1,a0
    80008040:	fffff097          	auipc	ra,0xfffff
    80008044:	810080e7          	jalr	-2032(ra) # 80006850 <mycpu>
    80008048:	fea910e3          	bne	s2,a0,80008028 <release+0x20>
    8000804c:	0004b823          	sd	zero,16(s1)
    80008050:	0ff0000f          	fence
    80008054:	0f50000f          	fence	iorw,ow
    80008058:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000805c:	ffffe097          	auipc	ra,0xffffe
    80008060:	7f4080e7          	jalr	2036(ra) # 80006850 <mycpu>
    80008064:	100027f3          	csrr	a5,sstatus
    80008068:	0027f793          	andi	a5,a5,2
    8000806c:	04079a63          	bnez	a5,800080c0 <release+0xb8>
    80008070:	07852783          	lw	a5,120(a0)
    80008074:	02f05e63          	blez	a5,800080b0 <release+0xa8>
    80008078:	fff7871b          	addiw	a4,a5,-1
    8000807c:	06e52c23          	sw	a4,120(a0)
    80008080:	00071c63          	bnez	a4,80008098 <release+0x90>
    80008084:	07c52783          	lw	a5,124(a0)
    80008088:	00078863          	beqz	a5,80008098 <release+0x90>
    8000808c:	100027f3          	csrr	a5,sstatus
    80008090:	0027e793          	ori	a5,a5,2
    80008094:	10079073          	csrw	sstatus,a5
    80008098:	01813083          	ld	ra,24(sp)
    8000809c:	01013403          	ld	s0,16(sp)
    800080a0:	00813483          	ld	s1,8(sp)
    800080a4:	00013903          	ld	s2,0(sp)
    800080a8:	02010113          	addi	sp,sp,32
    800080ac:	00008067          	ret
    800080b0:	00001517          	auipc	a0,0x1
    800080b4:	6c850513          	addi	a0,a0,1736 # 80009778 <digits+0x48>
    800080b8:	fffff097          	auipc	ra,0xfffff
    800080bc:	154080e7          	jalr	340(ra) # 8000720c <panic>
    800080c0:	00001517          	auipc	a0,0x1
    800080c4:	6a050513          	addi	a0,a0,1696 # 80009760 <digits+0x30>
    800080c8:	fffff097          	auipc	ra,0xfffff
    800080cc:	144080e7          	jalr	324(ra) # 8000720c <panic>

00000000800080d0 <holding>:
    800080d0:	00052783          	lw	a5,0(a0)
    800080d4:	00079663          	bnez	a5,800080e0 <holding+0x10>
    800080d8:	00000513          	li	a0,0
    800080dc:	00008067          	ret
    800080e0:	fe010113          	addi	sp,sp,-32
    800080e4:	00813823          	sd	s0,16(sp)
    800080e8:	00913423          	sd	s1,8(sp)
    800080ec:	00113c23          	sd	ra,24(sp)
    800080f0:	02010413          	addi	s0,sp,32
    800080f4:	01053483          	ld	s1,16(a0)
    800080f8:	ffffe097          	auipc	ra,0xffffe
    800080fc:	758080e7          	jalr	1880(ra) # 80006850 <mycpu>
    80008100:	01813083          	ld	ra,24(sp)
    80008104:	01013403          	ld	s0,16(sp)
    80008108:	40a48533          	sub	a0,s1,a0
    8000810c:	00153513          	seqz	a0,a0
    80008110:	00813483          	ld	s1,8(sp)
    80008114:	02010113          	addi	sp,sp,32
    80008118:	00008067          	ret

000000008000811c <push_off>:
    8000811c:	fe010113          	addi	sp,sp,-32
    80008120:	00813823          	sd	s0,16(sp)
    80008124:	00113c23          	sd	ra,24(sp)
    80008128:	00913423          	sd	s1,8(sp)
    8000812c:	02010413          	addi	s0,sp,32
    80008130:	100024f3          	csrr	s1,sstatus
    80008134:	100027f3          	csrr	a5,sstatus
    80008138:	ffd7f793          	andi	a5,a5,-3
    8000813c:	10079073          	csrw	sstatus,a5
    80008140:	ffffe097          	auipc	ra,0xffffe
    80008144:	710080e7          	jalr	1808(ra) # 80006850 <mycpu>
    80008148:	07852783          	lw	a5,120(a0)
    8000814c:	02078663          	beqz	a5,80008178 <push_off+0x5c>
    80008150:	ffffe097          	auipc	ra,0xffffe
    80008154:	700080e7          	jalr	1792(ra) # 80006850 <mycpu>
    80008158:	07852783          	lw	a5,120(a0)
    8000815c:	01813083          	ld	ra,24(sp)
    80008160:	01013403          	ld	s0,16(sp)
    80008164:	0017879b          	addiw	a5,a5,1
    80008168:	06f52c23          	sw	a5,120(a0)
    8000816c:	00813483          	ld	s1,8(sp)
    80008170:	02010113          	addi	sp,sp,32
    80008174:	00008067          	ret
    80008178:	0014d493          	srli	s1,s1,0x1
    8000817c:	ffffe097          	auipc	ra,0xffffe
    80008180:	6d4080e7          	jalr	1748(ra) # 80006850 <mycpu>
    80008184:	0014f493          	andi	s1,s1,1
    80008188:	06952e23          	sw	s1,124(a0)
    8000818c:	fc5ff06f          	j	80008150 <push_off+0x34>

0000000080008190 <pop_off>:
    80008190:	ff010113          	addi	sp,sp,-16
    80008194:	00813023          	sd	s0,0(sp)
    80008198:	00113423          	sd	ra,8(sp)
    8000819c:	01010413          	addi	s0,sp,16
    800081a0:	ffffe097          	auipc	ra,0xffffe
    800081a4:	6b0080e7          	jalr	1712(ra) # 80006850 <mycpu>
    800081a8:	100027f3          	csrr	a5,sstatus
    800081ac:	0027f793          	andi	a5,a5,2
    800081b0:	04079663          	bnez	a5,800081fc <pop_off+0x6c>
    800081b4:	07852783          	lw	a5,120(a0)
    800081b8:	02f05a63          	blez	a5,800081ec <pop_off+0x5c>
    800081bc:	fff7871b          	addiw	a4,a5,-1
    800081c0:	06e52c23          	sw	a4,120(a0)
    800081c4:	00071c63          	bnez	a4,800081dc <pop_off+0x4c>
    800081c8:	07c52783          	lw	a5,124(a0)
    800081cc:	00078863          	beqz	a5,800081dc <pop_off+0x4c>
    800081d0:	100027f3          	csrr	a5,sstatus
    800081d4:	0027e793          	ori	a5,a5,2
    800081d8:	10079073          	csrw	sstatus,a5
    800081dc:	00813083          	ld	ra,8(sp)
    800081e0:	00013403          	ld	s0,0(sp)
    800081e4:	01010113          	addi	sp,sp,16
    800081e8:	00008067          	ret
    800081ec:	00001517          	auipc	a0,0x1
    800081f0:	58c50513          	addi	a0,a0,1420 # 80009778 <digits+0x48>
    800081f4:	fffff097          	auipc	ra,0xfffff
    800081f8:	018080e7          	jalr	24(ra) # 8000720c <panic>
    800081fc:	00001517          	auipc	a0,0x1
    80008200:	56450513          	addi	a0,a0,1380 # 80009760 <digits+0x30>
    80008204:	fffff097          	auipc	ra,0xfffff
    80008208:	008080e7          	jalr	8(ra) # 8000720c <panic>

000000008000820c <push_on>:
    8000820c:	fe010113          	addi	sp,sp,-32
    80008210:	00813823          	sd	s0,16(sp)
    80008214:	00113c23          	sd	ra,24(sp)
    80008218:	00913423          	sd	s1,8(sp)
    8000821c:	02010413          	addi	s0,sp,32
    80008220:	100024f3          	csrr	s1,sstatus
    80008224:	100027f3          	csrr	a5,sstatus
    80008228:	0027e793          	ori	a5,a5,2
    8000822c:	10079073          	csrw	sstatus,a5
    80008230:	ffffe097          	auipc	ra,0xffffe
    80008234:	620080e7          	jalr	1568(ra) # 80006850 <mycpu>
    80008238:	07852783          	lw	a5,120(a0)
    8000823c:	02078663          	beqz	a5,80008268 <push_on+0x5c>
    80008240:	ffffe097          	auipc	ra,0xffffe
    80008244:	610080e7          	jalr	1552(ra) # 80006850 <mycpu>
    80008248:	07852783          	lw	a5,120(a0)
    8000824c:	01813083          	ld	ra,24(sp)
    80008250:	01013403          	ld	s0,16(sp)
    80008254:	0017879b          	addiw	a5,a5,1
    80008258:	06f52c23          	sw	a5,120(a0)
    8000825c:	00813483          	ld	s1,8(sp)
    80008260:	02010113          	addi	sp,sp,32
    80008264:	00008067          	ret
    80008268:	0014d493          	srli	s1,s1,0x1
    8000826c:	ffffe097          	auipc	ra,0xffffe
    80008270:	5e4080e7          	jalr	1508(ra) # 80006850 <mycpu>
    80008274:	0014f493          	andi	s1,s1,1
    80008278:	06952e23          	sw	s1,124(a0)
    8000827c:	fc5ff06f          	j	80008240 <push_on+0x34>

0000000080008280 <pop_on>:
    80008280:	ff010113          	addi	sp,sp,-16
    80008284:	00813023          	sd	s0,0(sp)
    80008288:	00113423          	sd	ra,8(sp)
    8000828c:	01010413          	addi	s0,sp,16
    80008290:	ffffe097          	auipc	ra,0xffffe
    80008294:	5c0080e7          	jalr	1472(ra) # 80006850 <mycpu>
    80008298:	100027f3          	csrr	a5,sstatus
    8000829c:	0027f793          	andi	a5,a5,2
    800082a0:	04078463          	beqz	a5,800082e8 <pop_on+0x68>
    800082a4:	07852783          	lw	a5,120(a0)
    800082a8:	02f05863          	blez	a5,800082d8 <pop_on+0x58>
    800082ac:	fff7879b          	addiw	a5,a5,-1
    800082b0:	06f52c23          	sw	a5,120(a0)
    800082b4:	07853783          	ld	a5,120(a0)
    800082b8:	00079863          	bnez	a5,800082c8 <pop_on+0x48>
    800082bc:	100027f3          	csrr	a5,sstatus
    800082c0:	ffd7f793          	andi	a5,a5,-3
    800082c4:	10079073          	csrw	sstatus,a5
    800082c8:	00813083          	ld	ra,8(sp)
    800082cc:	00013403          	ld	s0,0(sp)
    800082d0:	01010113          	addi	sp,sp,16
    800082d4:	00008067          	ret
    800082d8:	00001517          	auipc	a0,0x1
    800082dc:	4c850513          	addi	a0,a0,1224 # 800097a0 <digits+0x70>
    800082e0:	fffff097          	auipc	ra,0xfffff
    800082e4:	f2c080e7          	jalr	-212(ra) # 8000720c <panic>
    800082e8:	00001517          	auipc	a0,0x1
    800082ec:	49850513          	addi	a0,a0,1176 # 80009780 <digits+0x50>
    800082f0:	fffff097          	auipc	ra,0xfffff
    800082f4:	f1c080e7          	jalr	-228(ra) # 8000720c <panic>

00000000800082f8 <__memset>:
    800082f8:	ff010113          	addi	sp,sp,-16
    800082fc:	00813423          	sd	s0,8(sp)
    80008300:	01010413          	addi	s0,sp,16
    80008304:	1a060e63          	beqz	a2,800084c0 <__memset+0x1c8>
    80008308:	40a007b3          	neg	a5,a0
    8000830c:	0077f793          	andi	a5,a5,7
    80008310:	00778693          	addi	a3,a5,7
    80008314:	00b00813          	li	a6,11
    80008318:	0ff5f593          	andi	a1,a1,255
    8000831c:	fff6071b          	addiw	a4,a2,-1
    80008320:	1b06e663          	bltu	a3,a6,800084cc <__memset+0x1d4>
    80008324:	1cd76463          	bltu	a4,a3,800084ec <__memset+0x1f4>
    80008328:	1a078e63          	beqz	a5,800084e4 <__memset+0x1ec>
    8000832c:	00b50023          	sb	a1,0(a0)
    80008330:	00100713          	li	a4,1
    80008334:	1ae78463          	beq	a5,a4,800084dc <__memset+0x1e4>
    80008338:	00b500a3          	sb	a1,1(a0)
    8000833c:	00200713          	li	a4,2
    80008340:	1ae78a63          	beq	a5,a4,800084f4 <__memset+0x1fc>
    80008344:	00b50123          	sb	a1,2(a0)
    80008348:	00300713          	li	a4,3
    8000834c:	18e78463          	beq	a5,a4,800084d4 <__memset+0x1dc>
    80008350:	00b501a3          	sb	a1,3(a0)
    80008354:	00400713          	li	a4,4
    80008358:	1ae78263          	beq	a5,a4,800084fc <__memset+0x204>
    8000835c:	00b50223          	sb	a1,4(a0)
    80008360:	00500713          	li	a4,5
    80008364:	1ae78063          	beq	a5,a4,80008504 <__memset+0x20c>
    80008368:	00b502a3          	sb	a1,5(a0)
    8000836c:	00700713          	li	a4,7
    80008370:	18e79e63          	bne	a5,a4,8000850c <__memset+0x214>
    80008374:	00b50323          	sb	a1,6(a0)
    80008378:	00700e93          	li	t4,7
    8000837c:	00859713          	slli	a4,a1,0x8
    80008380:	00e5e733          	or	a4,a1,a4
    80008384:	01059e13          	slli	t3,a1,0x10
    80008388:	01c76e33          	or	t3,a4,t3
    8000838c:	01859313          	slli	t1,a1,0x18
    80008390:	006e6333          	or	t1,t3,t1
    80008394:	02059893          	slli	a7,a1,0x20
    80008398:	40f60e3b          	subw	t3,a2,a5
    8000839c:	011368b3          	or	a7,t1,a7
    800083a0:	02859813          	slli	a6,a1,0x28
    800083a4:	0108e833          	or	a6,a7,a6
    800083a8:	03059693          	slli	a3,a1,0x30
    800083ac:	003e589b          	srliw	a7,t3,0x3
    800083b0:	00d866b3          	or	a3,a6,a3
    800083b4:	03859713          	slli	a4,a1,0x38
    800083b8:	00389813          	slli	a6,a7,0x3
    800083bc:	00f507b3          	add	a5,a0,a5
    800083c0:	00e6e733          	or	a4,a3,a4
    800083c4:	000e089b          	sext.w	a7,t3
    800083c8:	00f806b3          	add	a3,a6,a5
    800083cc:	00e7b023          	sd	a4,0(a5)
    800083d0:	00878793          	addi	a5,a5,8
    800083d4:	fed79ce3          	bne	a5,a3,800083cc <__memset+0xd4>
    800083d8:	ff8e7793          	andi	a5,t3,-8
    800083dc:	0007871b          	sext.w	a4,a5
    800083e0:	01d787bb          	addw	a5,a5,t4
    800083e4:	0ce88e63          	beq	a7,a4,800084c0 <__memset+0x1c8>
    800083e8:	00f50733          	add	a4,a0,a5
    800083ec:	00b70023          	sb	a1,0(a4)
    800083f0:	0017871b          	addiw	a4,a5,1
    800083f4:	0cc77663          	bgeu	a4,a2,800084c0 <__memset+0x1c8>
    800083f8:	00e50733          	add	a4,a0,a4
    800083fc:	00b70023          	sb	a1,0(a4)
    80008400:	0027871b          	addiw	a4,a5,2
    80008404:	0ac77e63          	bgeu	a4,a2,800084c0 <__memset+0x1c8>
    80008408:	00e50733          	add	a4,a0,a4
    8000840c:	00b70023          	sb	a1,0(a4)
    80008410:	0037871b          	addiw	a4,a5,3
    80008414:	0ac77663          	bgeu	a4,a2,800084c0 <__memset+0x1c8>
    80008418:	00e50733          	add	a4,a0,a4
    8000841c:	00b70023          	sb	a1,0(a4)
    80008420:	0047871b          	addiw	a4,a5,4
    80008424:	08c77e63          	bgeu	a4,a2,800084c0 <__memset+0x1c8>
    80008428:	00e50733          	add	a4,a0,a4
    8000842c:	00b70023          	sb	a1,0(a4)
    80008430:	0057871b          	addiw	a4,a5,5
    80008434:	08c77663          	bgeu	a4,a2,800084c0 <__memset+0x1c8>
    80008438:	00e50733          	add	a4,a0,a4
    8000843c:	00b70023          	sb	a1,0(a4)
    80008440:	0067871b          	addiw	a4,a5,6
    80008444:	06c77e63          	bgeu	a4,a2,800084c0 <__memset+0x1c8>
    80008448:	00e50733          	add	a4,a0,a4
    8000844c:	00b70023          	sb	a1,0(a4)
    80008450:	0077871b          	addiw	a4,a5,7
    80008454:	06c77663          	bgeu	a4,a2,800084c0 <__memset+0x1c8>
    80008458:	00e50733          	add	a4,a0,a4
    8000845c:	00b70023          	sb	a1,0(a4)
    80008460:	0087871b          	addiw	a4,a5,8
    80008464:	04c77e63          	bgeu	a4,a2,800084c0 <__memset+0x1c8>
    80008468:	00e50733          	add	a4,a0,a4
    8000846c:	00b70023          	sb	a1,0(a4)
    80008470:	0097871b          	addiw	a4,a5,9
    80008474:	04c77663          	bgeu	a4,a2,800084c0 <__memset+0x1c8>
    80008478:	00e50733          	add	a4,a0,a4
    8000847c:	00b70023          	sb	a1,0(a4)
    80008480:	00a7871b          	addiw	a4,a5,10
    80008484:	02c77e63          	bgeu	a4,a2,800084c0 <__memset+0x1c8>
    80008488:	00e50733          	add	a4,a0,a4
    8000848c:	00b70023          	sb	a1,0(a4)
    80008490:	00b7871b          	addiw	a4,a5,11
    80008494:	02c77663          	bgeu	a4,a2,800084c0 <__memset+0x1c8>
    80008498:	00e50733          	add	a4,a0,a4
    8000849c:	00b70023          	sb	a1,0(a4)
    800084a0:	00c7871b          	addiw	a4,a5,12
    800084a4:	00c77e63          	bgeu	a4,a2,800084c0 <__memset+0x1c8>
    800084a8:	00e50733          	add	a4,a0,a4
    800084ac:	00b70023          	sb	a1,0(a4)
    800084b0:	00d7879b          	addiw	a5,a5,13
    800084b4:	00c7f663          	bgeu	a5,a2,800084c0 <__memset+0x1c8>
    800084b8:	00f507b3          	add	a5,a0,a5
    800084bc:	00b78023          	sb	a1,0(a5)
    800084c0:	00813403          	ld	s0,8(sp)
    800084c4:	01010113          	addi	sp,sp,16
    800084c8:	00008067          	ret
    800084cc:	00b00693          	li	a3,11
    800084d0:	e55ff06f          	j	80008324 <__memset+0x2c>
    800084d4:	00300e93          	li	t4,3
    800084d8:	ea5ff06f          	j	8000837c <__memset+0x84>
    800084dc:	00100e93          	li	t4,1
    800084e0:	e9dff06f          	j	8000837c <__memset+0x84>
    800084e4:	00000e93          	li	t4,0
    800084e8:	e95ff06f          	j	8000837c <__memset+0x84>
    800084ec:	00000793          	li	a5,0
    800084f0:	ef9ff06f          	j	800083e8 <__memset+0xf0>
    800084f4:	00200e93          	li	t4,2
    800084f8:	e85ff06f          	j	8000837c <__memset+0x84>
    800084fc:	00400e93          	li	t4,4
    80008500:	e7dff06f          	j	8000837c <__memset+0x84>
    80008504:	00500e93          	li	t4,5
    80008508:	e75ff06f          	j	8000837c <__memset+0x84>
    8000850c:	00600e93          	li	t4,6
    80008510:	e6dff06f          	j	8000837c <__memset+0x84>

0000000080008514 <__memmove>:
    80008514:	ff010113          	addi	sp,sp,-16
    80008518:	00813423          	sd	s0,8(sp)
    8000851c:	01010413          	addi	s0,sp,16
    80008520:	0e060863          	beqz	a2,80008610 <__memmove+0xfc>
    80008524:	fff6069b          	addiw	a3,a2,-1
    80008528:	0006881b          	sext.w	a6,a3
    8000852c:	0ea5e863          	bltu	a1,a0,8000861c <__memmove+0x108>
    80008530:	00758713          	addi	a4,a1,7
    80008534:	00a5e7b3          	or	a5,a1,a0
    80008538:	40a70733          	sub	a4,a4,a0
    8000853c:	0077f793          	andi	a5,a5,7
    80008540:	00f73713          	sltiu	a4,a4,15
    80008544:	00174713          	xori	a4,a4,1
    80008548:	0017b793          	seqz	a5,a5
    8000854c:	00e7f7b3          	and	a5,a5,a4
    80008550:	10078863          	beqz	a5,80008660 <__memmove+0x14c>
    80008554:	00900793          	li	a5,9
    80008558:	1107f463          	bgeu	a5,a6,80008660 <__memmove+0x14c>
    8000855c:	0036581b          	srliw	a6,a2,0x3
    80008560:	fff8081b          	addiw	a6,a6,-1
    80008564:	02081813          	slli	a6,a6,0x20
    80008568:	01d85893          	srli	a7,a6,0x1d
    8000856c:	00858813          	addi	a6,a1,8
    80008570:	00058793          	mv	a5,a1
    80008574:	00050713          	mv	a4,a0
    80008578:	01088833          	add	a6,a7,a6
    8000857c:	0007b883          	ld	a7,0(a5)
    80008580:	00878793          	addi	a5,a5,8
    80008584:	00870713          	addi	a4,a4,8
    80008588:	ff173c23          	sd	a7,-8(a4)
    8000858c:	ff0798e3          	bne	a5,a6,8000857c <__memmove+0x68>
    80008590:	ff867713          	andi	a4,a2,-8
    80008594:	02071793          	slli	a5,a4,0x20
    80008598:	0207d793          	srli	a5,a5,0x20
    8000859c:	00f585b3          	add	a1,a1,a5
    800085a0:	40e686bb          	subw	a3,a3,a4
    800085a4:	00f507b3          	add	a5,a0,a5
    800085a8:	06e60463          	beq	a2,a4,80008610 <__memmove+0xfc>
    800085ac:	0005c703          	lbu	a4,0(a1)
    800085b0:	00e78023          	sb	a4,0(a5)
    800085b4:	04068e63          	beqz	a3,80008610 <__memmove+0xfc>
    800085b8:	0015c603          	lbu	a2,1(a1)
    800085bc:	00100713          	li	a4,1
    800085c0:	00c780a3          	sb	a2,1(a5)
    800085c4:	04e68663          	beq	a3,a4,80008610 <__memmove+0xfc>
    800085c8:	0025c603          	lbu	a2,2(a1)
    800085cc:	00200713          	li	a4,2
    800085d0:	00c78123          	sb	a2,2(a5)
    800085d4:	02e68e63          	beq	a3,a4,80008610 <__memmove+0xfc>
    800085d8:	0035c603          	lbu	a2,3(a1)
    800085dc:	00300713          	li	a4,3
    800085e0:	00c781a3          	sb	a2,3(a5)
    800085e4:	02e68663          	beq	a3,a4,80008610 <__memmove+0xfc>
    800085e8:	0045c603          	lbu	a2,4(a1)
    800085ec:	00400713          	li	a4,4
    800085f0:	00c78223          	sb	a2,4(a5)
    800085f4:	00e68e63          	beq	a3,a4,80008610 <__memmove+0xfc>
    800085f8:	0055c603          	lbu	a2,5(a1)
    800085fc:	00500713          	li	a4,5
    80008600:	00c782a3          	sb	a2,5(a5)
    80008604:	00e68663          	beq	a3,a4,80008610 <__memmove+0xfc>
    80008608:	0065c703          	lbu	a4,6(a1)
    8000860c:	00e78323          	sb	a4,6(a5)
    80008610:	00813403          	ld	s0,8(sp)
    80008614:	01010113          	addi	sp,sp,16
    80008618:	00008067          	ret
    8000861c:	02061713          	slli	a4,a2,0x20
    80008620:	02075713          	srli	a4,a4,0x20
    80008624:	00e587b3          	add	a5,a1,a4
    80008628:	f0f574e3          	bgeu	a0,a5,80008530 <__memmove+0x1c>
    8000862c:	02069613          	slli	a2,a3,0x20
    80008630:	02065613          	srli	a2,a2,0x20
    80008634:	fff64613          	not	a2,a2
    80008638:	00e50733          	add	a4,a0,a4
    8000863c:	00c78633          	add	a2,a5,a2
    80008640:	fff7c683          	lbu	a3,-1(a5)
    80008644:	fff78793          	addi	a5,a5,-1
    80008648:	fff70713          	addi	a4,a4,-1
    8000864c:	00d70023          	sb	a3,0(a4)
    80008650:	fec798e3          	bne	a5,a2,80008640 <__memmove+0x12c>
    80008654:	00813403          	ld	s0,8(sp)
    80008658:	01010113          	addi	sp,sp,16
    8000865c:	00008067          	ret
    80008660:	02069713          	slli	a4,a3,0x20
    80008664:	02075713          	srli	a4,a4,0x20
    80008668:	00170713          	addi	a4,a4,1
    8000866c:	00e50733          	add	a4,a0,a4
    80008670:	00050793          	mv	a5,a0
    80008674:	0005c683          	lbu	a3,0(a1)
    80008678:	00178793          	addi	a5,a5,1
    8000867c:	00158593          	addi	a1,a1,1
    80008680:	fed78fa3          	sb	a3,-1(a5)
    80008684:	fee798e3          	bne	a5,a4,80008674 <__memmove+0x160>
    80008688:	f89ff06f          	j	80008610 <__memmove+0xfc>

000000008000868c <__mem_free>:
    8000868c:	ff010113          	addi	sp,sp,-16
    80008690:	00813423          	sd	s0,8(sp)
    80008694:	01010413          	addi	s0,sp,16
    80008698:	00002597          	auipc	a1,0x2
    8000869c:	f8058593          	addi	a1,a1,-128 # 8000a618 <freep>
    800086a0:	0005b783          	ld	a5,0(a1)
    800086a4:	ff050693          	addi	a3,a0,-16
    800086a8:	0007b703          	ld	a4,0(a5)
    800086ac:	00d7fc63          	bgeu	a5,a3,800086c4 <__mem_free+0x38>
    800086b0:	00e6ee63          	bltu	a3,a4,800086cc <__mem_free+0x40>
    800086b4:	00e7fc63          	bgeu	a5,a4,800086cc <__mem_free+0x40>
    800086b8:	00070793          	mv	a5,a4
    800086bc:	0007b703          	ld	a4,0(a5)
    800086c0:	fed7e8e3          	bltu	a5,a3,800086b0 <__mem_free+0x24>
    800086c4:	fee7eae3          	bltu	a5,a4,800086b8 <__mem_free+0x2c>
    800086c8:	fee6f8e3          	bgeu	a3,a4,800086b8 <__mem_free+0x2c>
    800086cc:	ff852803          	lw	a6,-8(a0)
    800086d0:	02081613          	slli	a2,a6,0x20
    800086d4:	01c65613          	srli	a2,a2,0x1c
    800086d8:	00c68633          	add	a2,a3,a2
    800086dc:	02c70a63          	beq	a4,a2,80008710 <__mem_free+0x84>
    800086e0:	fee53823          	sd	a4,-16(a0)
    800086e4:	0087a503          	lw	a0,8(a5)
    800086e8:	02051613          	slli	a2,a0,0x20
    800086ec:	01c65613          	srli	a2,a2,0x1c
    800086f0:	00c78633          	add	a2,a5,a2
    800086f4:	04c68263          	beq	a3,a2,80008738 <__mem_free+0xac>
    800086f8:	00813403          	ld	s0,8(sp)
    800086fc:	00d7b023          	sd	a3,0(a5)
    80008700:	00f5b023          	sd	a5,0(a1)
    80008704:	00000513          	li	a0,0
    80008708:	01010113          	addi	sp,sp,16
    8000870c:	00008067          	ret
    80008710:	00872603          	lw	a2,8(a4)
    80008714:	00073703          	ld	a4,0(a4)
    80008718:	0106083b          	addw	a6,a2,a6
    8000871c:	ff052c23          	sw	a6,-8(a0)
    80008720:	fee53823          	sd	a4,-16(a0)
    80008724:	0087a503          	lw	a0,8(a5)
    80008728:	02051613          	slli	a2,a0,0x20
    8000872c:	01c65613          	srli	a2,a2,0x1c
    80008730:	00c78633          	add	a2,a5,a2
    80008734:	fcc692e3          	bne	a3,a2,800086f8 <__mem_free+0x6c>
    80008738:	00813403          	ld	s0,8(sp)
    8000873c:	0105053b          	addw	a0,a0,a6
    80008740:	00a7a423          	sw	a0,8(a5)
    80008744:	00e7b023          	sd	a4,0(a5)
    80008748:	00f5b023          	sd	a5,0(a1)
    8000874c:	00000513          	li	a0,0
    80008750:	01010113          	addi	sp,sp,16
    80008754:	00008067          	ret

0000000080008758 <__mem_alloc>:
    80008758:	fc010113          	addi	sp,sp,-64
    8000875c:	02813823          	sd	s0,48(sp)
    80008760:	02913423          	sd	s1,40(sp)
    80008764:	03213023          	sd	s2,32(sp)
    80008768:	01513423          	sd	s5,8(sp)
    8000876c:	02113c23          	sd	ra,56(sp)
    80008770:	01313c23          	sd	s3,24(sp)
    80008774:	01413823          	sd	s4,16(sp)
    80008778:	01613023          	sd	s6,0(sp)
    8000877c:	04010413          	addi	s0,sp,64
    80008780:	00002a97          	auipc	s5,0x2
    80008784:	e98a8a93          	addi	s5,s5,-360 # 8000a618 <freep>
    80008788:	00f50913          	addi	s2,a0,15
    8000878c:	000ab683          	ld	a3,0(s5)
    80008790:	00495913          	srli	s2,s2,0x4
    80008794:	0019049b          	addiw	s1,s2,1
    80008798:	00048913          	mv	s2,s1
    8000879c:	0c068c63          	beqz	a3,80008874 <__mem_alloc+0x11c>
    800087a0:	0006b503          	ld	a0,0(a3)
    800087a4:	00852703          	lw	a4,8(a0)
    800087a8:	10977063          	bgeu	a4,s1,800088a8 <__mem_alloc+0x150>
    800087ac:	000017b7          	lui	a5,0x1
    800087b0:	0009099b          	sext.w	s3,s2
    800087b4:	0af4e863          	bltu	s1,a5,80008864 <__mem_alloc+0x10c>
    800087b8:	02099a13          	slli	s4,s3,0x20
    800087bc:	01ca5a13          	srli	s4,s4,0x1c
    800087c0:	fff00b13          	li	s6,-1
    800087c4:	0100006f          	j	800087d4 <__mem_alloc+0x7c>
    800087c8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    800087cc:	00852703          	lw	a4,8(a0)
    800087d0:	04977463          	bgeu	a4,s1,80008818 <__mem_alloc+0xc0>
    800087d4:	00050793          	mv	a5,a0
    800087d8:	fea698e3          	bne	a3,a0,800087c8 <__mem_alloc+0x70>
    800087dc:	000a0513          	mv	a0,s4
    800087e0:	00000097          	auipc	ra,0x0
    800087e4:	1f0080e7          	jalr	496(ra) # 800089d0 <kvmincrease>
    800087e8:	00050793          	mv	a5,a0
    800087ec:	01050513          	addi	a0,a0,16
    800087f0:	07678e63          	beq	a5,s6,8000886c <__mem_alloc+0x114>
    800087f4:	0137a423          	sw	s3,8(a5)
    800087f8:	00000097          	auipc	ra,0x0
    800087fc:	e94080e7          	jalr	-364(ra) # 8000868c <__mem_free>
    80008800:	000ab783          	ld	a5,0(s5)
    80008804:	06078463          	beqz	a5,8000886c <__mem_alloc+0x114>
    80008808:	0007b503          	ld	a0,0(a5)
    8000880c:	00078693          	mv	a3,a5
    80008810:	00852703          	lw	a4,8(a0)
    80008814:	fc9760e3          	bltu	a4,s1,800087d4 <__mem_alloc+0x7c>
    80008818:	08e48263          	beq	s1,a4,8000889c <__mem_alloc+0x144>
    8000881c:	4127073b          	subw	a4,a4,s2
    80008820:	02071693          	slli	a3,a4,0x20
    80008824:	01c6d693          	srli	a3,a3,0x1c
    80008828:	00e52423          	sw	a4,8(a0)
    8000882c:	00d50533          	add	a0,a0,a3
    80008830:	01252423          	sw	s2,8(a0)
    80008834:	00fab023          	sd	a5,0(s5)
    80008838:	01050513          	addi	a0,a0,16
    8000883c:	03813083          	ld	ra,56(sp)
    80008840:	03013403          	ld	s0,48(sp)
    80008844:	02813483          	ld	s1,40(sp)
    80008848:	02013903          	ld	s2,32(sp)
    8000884c:	01813983          	ld	s3,24(sp)
    80008850:	01013a03          	ld	s4,16(sp)
    80008854:	00813a83          	ld	s5,8(sp)
    80008858:	00013b03          	ld	s6,0(sp)
    8000885c:	04010113          	addi	sp,sp,64
    80008860:	00008067          	ret
    80008864:	000019b7          	lui	s3,0x1
    80008868:	f51ff06f          	j	800087b8 <__mem_alloc+0x60>
    8000886c:	00000513          	li	a0,0
    80008870:	fcdff06f          	j	8000883c <__mem_alloc+0xe4>
    80008874:	00003797          	auipc	a5,0x3
    80008878:	04c78793          	addi	a5,a5,76 # 8000b8c0 <base>
    8000887c:	00078513          	mv	a0,a5
    80008880:	00fab023          	sd	a5,0(s5)
    80008884:	00f7b023          	sd	a5,0(a5)
    80008888:	00000713          	li	a4,0
    8000888c:	00003797          	auipc	a5,0x3
    80008890:	0207ae23          	sw	zero,60(a5) # 8000b8c8 <base+0x8>
    80008894:	00050693          	mv	a3,a0
    80008898:	f11ff06f          	j	800087a8 <__mem_alloc+0x50>
    8000889c:	00053703          	ld	a4,0(a0)
    800088a0:	00e7b023          	sd	a4,0(a5)
    800088a4:	f91ff06f          	j	80008834 <__mem_alloc+0xdc>
    800088a8:	00068793          	mv	a5,a3
    800088ac:	f6dff06f          	j	80008818 <__mem_alloc+0xc0>

00000000800088b0 <__putc>:
    800088b0:	fe010113          	addi	sp,sp,-32
    800088b4:	00813823          	sd	s0,16(sp)
    800088b8:	00113c23          	sd	ra,24(sp)
    800088bc:	02010413          	addi	s0,sp,32
    800088c0:	00050793          	mv	a5,a0
    800088c4:	fef40593          	addi	a1,s0,-17
    800088c8:	00100613          	li	a2,1
    800088cc:	00000513          	li	a0,0
    800088d0:	fef407a3          	sb	a5,-17(s0)
    800088d4:	fffff097          	auipc	ra,0xfffff
    800088d8:	918080e7          	jalr	-1768(ra) # 800071ec <console_write>
    800088dc:	01813083          	ld	ra,24(sp)
    800088e0:	01013403          	ld	s0,16(sp)
    800088e4:	02010113          	addi	sp,sp,32
    800088e8:	00008067          	ret

00000000800088ec <__getc>:
    800088ec:	fe010113          	addi	sp,sp,-32
    800088f0:	00813823          	sd	s0,16(sp)
    800088f4:	00113c23          	sd	ra,24(sp)
    800088f8:	02010413          	addi	s0,sp,32
    800088fc:	fe840593          	addi	a1,s0,-24
    80008900:	00100613          	li	a2,1
    80008904:	00000513          	li	a0,0
    80008908:	fffff097          	auipc	ra,0xfffff
    8000890c:	8c4080e7          	jalr	-1852(ra) # 800071cc <console_read>
    80008910:	fe844503          	lbu	a0,-24(s0)
    80008914:	01813083          	ld	ra,24(sp)
    80008918:	01013403          	ld	s0,16(sp)
    8000891c:	02010113          	addi	sp,sp,32
    80008920:	00008067          	ret

0000000080008924 <console_handler>:
    80008924:	fe010113          	addi	sp,sp,-32
    80008928:	00813823          	sd	s0,16(sp)
    8000892c:	00113c23          	sd	ra,24(sp)
    80008930:	00913423          	sd	s1,8(sp)
    80008934:	02010413          	addi	s0,sp,32
    80008938:	14202773          	csrr	a4,scause
    8000893c:	100027f3          	csrr	a5,sstatus
    80008940:	0027f793          	andi	a5,a5,2
    80008944:	06079e63          	bnez	a5,800089c0 <console_handler+0x9c>
    80008948:	00074c63          	bltz	a4,80008960 <console_handler+0x3c>
    8000894c:	01813083          	ld	ra,24(sp)
    80008950:	01013403          	ld	s0,16(sp)
    80008954:	00813483          	ld	s1,8(sp)
    80008958:	02010113          	addi	sp,sp,32
    8000895c:	00008067          	ret
    80008960:	0ff77713          	andi	a4,a4,255
    80008964:	00900793          	li	a5,9
    80008968:	fef712e3          	bne	a4,a5,8000894c <console_handler+0x28>
    8000896c:	ffffe097          	auipc	ra,0xffffe
    80008970:	4b8080e7          	jalr	1208(ra) # 80006e24 <plic_claim>
    80008974:	00a00793          	li	a5,10
    80008978:	00050493          	mv	s1,a0
    8000897c:	02f50c63          	beq	a0,a5,800089b4 <console_handler+0x90>
    80008980:	fc0506e3          	beqz	a0,8000894c <console_handler+0x28>
    80008984:	00050593          	mv	a1,a0
    80008988:	00001517          	auipc	a0,0x1
    8000898c:	d2050513          	addi	a0,a0,-736 # 800096a8 <_ZZ12printIntegermE6digits+0xe0>
    80008990:	fffff097          	auipc	ra,0xfffff
    80008994:	8d8080e7          	jalr	-1832(ra) # 80007268 <__printf>
    80008998:	01013403          	ld	s0,16(sp)
    8000899c:	01813083          	ld	ra,24(sp)
    800089a0:	00048513          	mv	a0,s1
    800089a4:	00813483          	ld	s1,8(sp)
    800089a8:	02010113          	addi	sp,sp,32
    800089ac:	ffffe317          	auipc	t1,0xffffe
    800089b0:	4b030067          	jr	1200(t1) # 80006e5c <plic_complete>
    800089b4:	fffff097          	auipc	ra,0xfffff
    800089b8:	1bc080e7          	jalr	444(ra) # 80007b70 <uartintr>
    800089bc:	fddff06f          	j	80008998 <console_handler+0x74>
    800089c0:	00001517          	auipc	a0,0x1
    800089c4:	de850513          	addi	a0,a0,-536 # 800097a8 <digits+0x78>
    800089c8:	fffff097          	auipc	ra,0xfffff
    800089cc:	844080e7          	jalr	-1980(ra) # 8000720c <panic>

00000000800089d0 <kvmincrease>:
    800089d0:	fe010113          	addi	sp,sp,-32
    800089d4:	01213023          	sd	s2,0(sp)
    800089d8:	00001937          	lui	s2,0x1
    800089dc:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    800089e0:	00813823          	sd	s0,16(sp)
    800089e4:	00113c23          	sd	ra,24(sp)
    800089e8:	00913423          	sd	s1,8(sp)
    800089ec:	02010413          	addi	s0,sp,32
    800089f0:	01250933          	add	s2,a0,s2
    800089f4:	00c95913          	srli	s2,s2,0xc
    800089f8:	02090863          	beqz	s2,80008a28 <kvmincrease+0x58>
    800089fc:	00000493          	li	s1,0
    80008a00:	00148493          	addi	s1,s1,1
    80008a04:	fffff097          	auipc	ra,0xfffff
    80008a08:	4bc080e7          	jalr	1212(ra) # 80007ec0 <kalloc>
    80008a0c:	fe991ae3          	bne	s2,s1,80008a00 <kvmincrease+0x30>
    80008a10:	01813083          	ld	ra,24(sp)
    80008a14:	01013403          	ld	s0,16(sp)
    80008a18:	00813483          	ld	s1,8(sp)
    80008a1c:	00013903          	ld	s2,0(sp)
    80008a20:	02010113          	addi	sp,sp,32
    80008a24:	00008067          	ret
    80008a28:	01813083          	ld	ra,24(sp)
    80008a2c:	01013403          	ld	s0,16(sp)
    80008a30:	00813483          	ld	s1,8(sp)
    80008a34:	00013903          	ld	s2,0(sp)
    80008a38:	00000513          	li	a0,0
    80008a3c:	02010113          	addi	sp,sp,32
    80008a40:	00008067          	ret
	...
