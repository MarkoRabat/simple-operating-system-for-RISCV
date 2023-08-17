
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	5e813103          	ld	sp,1512(sp) # 8000a5e8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	710060ef          	jal	ra,8000672c <start>

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
    80001084:	2c0050ef          	jal	ra,80006344 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001144:	8e8080e7          	jalr	-1816(ra) # 80001a28 <_ZN3TCB12createThreadEPFvvE>
    80001148:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    8000114c:	00009797          	auipc	a5,0x9
    80001150:	4a47b783          	ld	a5,1188(a5) # 8000a5f0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001154:	00a7b023          	sd	a0,0(a5)

    threads[1] = TCB::createThread(workerBodyA);
    80001158:	00009517          	auipc	a0,0x9
    8000115c:	48853503          	ld	a0,1160(a0) # 8000a5e0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001160:	00001097          	auipc	ra,0x1
    80001164:	8c8080e7          	jalr	-1848(ra) # 80001a28 <_ZN3TCB12createThreadEPFvvE>
    80001168:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    8000116c:	00008517          	auipc	a0,0x8
    80001170:	eb450513          	addi	a0,a0,-332 # 80009020 <CONSOLE_STATUS+0x10>
    80001174:	00005097          	auipc	ra,0x5
    80001178:	440080e7          	jalr	1088(ra) # 800065b4 <_Z11printStringPKc>
    threads[2] = TCB::createThread(workerBodyB);
    8000117c:	00009517          	auipc	a0,0x9
    80001180:	44c53503          	ld	a0,1100(a0) # 8000a5c8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001184:	00001097          	auipc	ra,0x1
    80001188:	8a4080e7          	jalr	-1884(ra) # 80001a28 <_ZN3TCB12createThreadEPFvvE>
    8000118c:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    80001190:	00008517          	auipc	a0,0x8
    80001194:	ea850513          	addi	a0,a0,-344 # 80009038 <CONSOLE_STATUS+0x28>
    80001198:	00005097          	auipc	ra,0x5
    8000119c:	41c080e7          	jalr	1052(ra) # 800065b4 <_Z11printStringPKc>
    threads[3] = TCB::createThread(workerBodyC);
    800011a0:	00009517          	auipc	a0,0x9
    800011a4:	46053503          	ld	a0,1120(a0) # 8000a600 <_GLOBAL_OFFSET_TABLE_+0x58>
    800011a8:	00001097          	auipc	ra,0x1
    800011ac:	880080e7          	jalr	-1920(ra) # 80001a28 <_ZN3TCB12createThreadEPFvvE>
    800011b0:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    800011b4:	00008517          	auipc	a0,0x8
    800011b8:	e9c50513          	addi	a0,a0,-356 # 80009050 <CONSOLE_STATUS+0x40>
    800011bc:	00005097          	auipc	ra,0x5
    800011c0:	3f8080e7          	jalr	1016(ra) # 800065b4 <_Z11printStringPKc>
    threads[4] = TCB::createThread(workerBodyD);
    800011c4:	00009517          	auipc	a0,0x9
    800011c8:	44453503          	ld	a0,1092(a0) # 8000a608 <_GLOBAL_OFFSET_TABLE_+0x60>
    800011cc:	00001097          	auipc	ra,0x1
    800011d0:	85c080e7          	jalr	-1956(ra) # 80001a28 <_ZN3TCB12createThreadEPFvvE>
    800011d4:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    800011d8:	00008517          	auipc	a0,0x8
    800011dc:	e9050513          	addi	a0,a0,-368 # 80009068 <CONSOLE_STATUS+0x58>
    800011e0:	00005097          	auipc	ra,0x5
    800011e4:	3d4080e7          	jalr	980(ra) # 800065b4 <_Z11printStringPKc>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800011e8:	00009797          	auipc	a5,0x9
    800011ec:	3d87b783          	ld	a5,984(a5) # 8000a5c0 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80001204:	8f0080e7          	jalr	-1808(ra) # 80001af0 <_ZN3TCB5yieldEv>
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
    80001248:	fb8080e7          	jalr	-72(ra) # 800031fc <_ZdlPv>
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
    8000126c:	fbc080e7          	jalr	-68(ra) # 80003224 <_ZdaPv>
    80001270:	fd1ff06f          	j	80001240 <_Z5main2v+0x11c>
    }
    printString("Finished\n");
    80001274:	00008517          	auipc	a0,0x8
    80001278:	e0c50513          	addi	a0,a0,-500 # 80009080 <CONSOLE_STATUS+0x70>
    8000127c:	00005097          	auipc	ra,0x5
    80001280:	338080e7          	jalr	824(ra) # 800065b4 <_Z11printStringPKc>

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
    8000130c:	7e8080e7          	jalr	2024(ra) # 80001af0 <_ZN3TCB5yieldEv>
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
    80001370:	248080e7          	jalr	584(ra) # 800065b4 <_Z11printStringPKc>
        printInteger(i);
    80001374:	00048513          	mv	a0,s1
    80001378:	00005097          	auipc	ra,0x5
    8000137c:	2ac080e7          	jalr	684(ra) # 80006624 <_Z12printIntegerm>
        printString("\n");
    80001380:	00008517          	auipc	a0,0x8
    80001384:	d9050513          	addi	a0,a0,-624 # 80009110 <CONSOLE_STATUS+0x100>
    80001388:	00005097          	auipc	ra,0x5
    8000138c:	22c080e7          	jalr	556(ra) # 800065b4 <_Z11printStringPKc>
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
    80001408:	1b0080e7          	jalr	432(ra) # 800065b4 <_Z11printStringPKc>
        printInteger(i);
    8000140c:	00048513          	mv	a0,s1
    80001410:	00005097          	auipc	ra,0x5
    80001414:	214080e7          	jalr	532(ra) # 80006624 <_Z12printIntegerm>
        printString("\n");
    80001418:	00008517          	auipc	a0,0x8
    8000141c:	cf850513          	addi	a0,a0,-776 # 80009110 <CONSOLE_STATUS+0x100>
    80001420:	00005097          	auipc	ra,0x5
    80001424:	194080e7          	jalr	404(ra) # 800065b4 <_Z11printStringPKc>
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
    80001470:	148080e7          	jalr	328(ra) # 800065b4 <_Z11printStringPKc>
        printInteger(i);
    80001474:	00048513          	mv	a0,s1
    80001478:	00005097          	auipc	ra,0x5
    8000147c:	1ac080e7          	jalr	428(ra) # 80006624 <_Z12printIntegerm>
        printString("\n");
    80001480:	00008517          	auipc	a0,0x8
    80001484:	c9050513          	addi	a0,a0,-880 # 80009110 <CONSOLE_STATUS+0x100>
    80001488:	00005097          	auipc	ra,0x5
    8000148c:	12c080e7          	jalr	300(ra) # 800065b4 <_Z11printStringPKc>
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
    800014ac:	10c080e7          	jalr	268(ra) # 800065b4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800014b0:	00700313          	li	t1,7
    TCB::yield();
    800014b4:	00000097          	auipc	ra,0x0
    800014b8:	63c080e7          	jalr	1596(ra) # 80001af0 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800014bc:	00030913          	mv	s2,t1

    printString("C: t1=");
    800014c0:	00008517          	auipc	a0,0x8
    800014c4:	bf850513          	addi	a0,a0,-1032 # 800090b8 <CONSOLE_STATUS+0xa8>
    800014c8:	00005097          	auipc	ra,0x5
    800014cc:	0ec080e7          	jalr	236(ra) # 800065b4 <_Z11printStringPKc>
    printInteger(t1);
    800014d0:	00090513          	mv	a0,s2
    800014d4:	00005097          	auipc	ra,0x5
    800014d8:	150080e7          	jalr	336(ra) # 80006624 <_Z12printIntegerm>
    printString("\n");
    800014dc:	00008517          	auipc	a0,0x8
    800014e0:	c3450513          	addi	a0,a0,-972 # 80009110 <CONSOLE_STATUS+0x100>
    800014e4:	00005097          	auipc	ra,0x5
    800014e8:	0d0080e7          	jalr	208(ra) # 800065b4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800014ec:	00c00513          	li	a0,12
    800014f0:	00000097          	auipc	ra,0x0
    800014f4:	db0080e7          	jalr	-592(ra) # 800012a0 <_ZL9fibonaccim>
    800014f8:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800014fc:	00008517          	auipc	a0,0x8
    80001500:	bc450513          	addi	a0,a0,-1084 # 800090c0 <CONSOLE_STATUS+0xb0>
    80001504:	00005097          	auipc	ra,0x5
    80001508:	0b0080e7          	jalr	176(ra) # 800065b4 <_Z11printStringPKc>
    printInteger(result);
    8000150c:	00090513          	mv	a0,s2
    80001510:	00005097          	auipc	ra,0x5
    80001514:	114080e7          	jalr	276(ra) # 80006624 <_Z12printIntegerm>
    printString("\n");
    80001518:	00008517          	auipc	a0,0x8
    8000151c:	bf850513          	addi	a0,a0,-1032 # 80009110 <CONSOLE_STATUS+0x100>
    80001520:	00005097          	auipc	ra,0x5
    80001524:	094080e7          	jalr	148(ra) # 800065b4 <_Z11printStringPKc>
    80001528:	0380006f          	j	80001560 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    8000152c:	00008517          	auipc	a0,0x8
    80001530:	b7450513          	addi	a0,a0,-1164 # 800090a0 <CONSOLE_STATUS+0x90>
    80001534:	00005097          	auipc	ra,0x5
    80001538:	080080e7          	jalr	128(ra) # 800065b4 <_Z11printStringPKc>
        printInteger(i);
    8000153c:	00048513          	mv	a0,s1
    80001540:	00005097          	auipc	ra,0x5
    80001544:	0e4080e7          	jalr	228(ra) # 80006624 <_Z12printIntegerm>
        printString("\n");
    80001548:	00008517          	auipc	a0,0x8
    8000154c:	bc850513          	addi	a0,a0,-1080 # 80009110 <CONSOLE_STATUS+0x100>
    80001550:	00005097          	auipc	ra,0x5
    80001554:	064080e7          	jalr	100(ra) # 800065b4 <_Z11printStringPKc>
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
    800015ac:	00c080e7          	jalr	12(ra) # 800065b4 <_Z11printStringPKc>
        printInteger(i);
    800015b0:	00048513          	mv	a0,s1
    800015b4:	00005097          	auipc	ra,0x5
    800015b8:	070080e7          	jalr	112(ra) # 80006624 <_Z12printIntegerm>
        printString("\n");
    800015bc:	00008517          	auipc	a0,0x8
    800015c0:	b5450513          	addi	a0,a0,-1196 # 80009110 <CONSOLE_STATUS+0x100>
    800015c4:	00005097          	auipc	ra,0x5
    800015c8:	ff0080e7          	jalr	-16(ra) # 800065b4 <_Z11printStringPKc>
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
    800015e8:	fd0080e7          	jalr	-48(ra) # 800065b4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800015ec:	00500313          	li	t1,5
    TCB::yield();
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	500080e7          	jalr	1280(ra) # 80001af0 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    800015f8:	01000513          	li	a0,16
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	ca4080e7          	jalr	-860(ra) # 800012a0 <_ZL9fibonaccim>
    80001604:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001608:	00008517          	auipc	a0,0x8
    8000160c:	ae050513          	addi	a0,a0,-1312 # 800090e8 <CONSOLE_STATUS+0xd8>
    80001610:	00005097          	auipc	ra,0x5
    80001614:	fa4080e7          	jalr	-92(ra) # 800065b4 <_Z11printStringPKc>
    printInteger(result);
    80001618:	00090513          	mv	a0,s2
    8000161c:	00005097          	auipc	ra,0x5
    80001620:	008080e7          	jalr	8(ra) # 80006624 <_Z12printIntegerm>
    printString("\n");
    80001624:	00008517          	auipc	a0,0x8
    80001628:	aec50513          	addi	a0,a0,-1300 # 80009110 <CONSOLE_STATUS+0x100>
    8000162c:	00005097          	auipc	ra,0x5
    80001630:	f88080e7          	jalr	-120(ra) # 800065b4 <_Z11printStringPKc>
    80001634:	0380006f          	j	8000166c <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    80001638:	00008517          	auipc	a0,0x8
    8000163c:	a9850513          	addi	a0,a0,-1384 # 800090d0 <CONSOLE_STATUS+0xc0>
    80001640:	00005097          	auipc	ra,0x5
    80001644:	f74080e7          	jalr	-140(ra) # 800065b4 <_Z11printStringPKc>
        printInteger(i);
    80001648:	00048513          	mv	a0,s1
    8000164c:	00005097          	auipc	ra,0x5
    80001650:	fd8080e7          	jalr	-40(ra) # 80006624 <_Z12printIntegerm>
        printString("\n");
    80001654:	00008517          	auipc	a0,0x8
    80001658:	abc50513          	addi	a0,a0,-1348 # 80009110 <CONSOLE_STATUS+0x100>
    8000165c:	00005097          	auipc	ra,0x5
    80001660:	f58080e7          	jalr	-168(ra) # 800065b4 <_Z11printStringPKc>
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
    800016b0:	618080e7          	jalr	1560(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800016b4:	04000593          	li	a1,64
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	6f0080e7          	jalr	1776(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
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
    800016e4:	5e4080e7          	jalr	1508(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800016e8:	0309b583          	ld	a1,48(s3)
    800016ec:	00359593          	slli	a1,a1,0x3
    800016f0:	00000097          	auipc	ra,0x0
    800016f4:	6b8080e7          	jalr	1720(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    800016f8:	02a9b423          	sd	a0,40(s3)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    800016fc:	00000097          	auipc	ra,0x0
    80001700:	5c8080e7          	jalr	1480(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80001704:	0309b583          	ld	a1,48(s3)
    80001708:	00359593          	slli	a1,a1,0x3
    8000170c:	00000097          	auipc	ra,0x0
    80001710:	69c080e7          	jalr	1692(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
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
    80001740:	588080e7          	jalr	1416(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
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
    80001764:	648080e7          	jalr	1608(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
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
    800017b0:	0500006f          	j	80001800 <main+0x174>
        objArr[i] = newObj->allocateNewObject();
        if (i == 14) newObj->freeObject(objArr[4]);
    800017b4:	cd043583          	ld	a1,-816(s0)
    800017b8:	00098513          	mv	a0,s3
    800017bc:	00005097          	auipc	ra,0x5
    800017c0:	864080e7          	jalr	-1948(ra) # 80006020 <_ZN16KObjectAllocator10freeObjectEPv>
    800017c4:	06c0006f          	j	80001830 <main+0x1a4>
        if (i == 14) newObj->freeObject(objArr[9]);
    800017c8:	cf843583          	ld	a1,-776(s0)
    800017cc:	00098513          	mv	a0,s3
    800017d0:	00005097          	auipc	ra,0x5
    800017d4:	850080e7          	jalr	-1968(ra) # 80006020 <_ZN16KObjectAllocator10freeObjectEPv>
    800017d8:	0600006f          	j	80001838 <main+0x1ac>
        if (objNumber != newObj->getNumberOfObjects() || i % 100 == 0) {
            objNumber = newObj->getNumberOfObjects();
            //printString("\nobjectNumber: "); printInteger(newObj->getNumberOfObjects()); printString("\n");
            //printString("numberOfAllocations: "); printInteger(newObj->getNumberOfAllocations()); printString("\n");
            //printString("\n\n");
            newObj->printInternalMemory();
    800017dc:	00098513          	mv	a0,s3
    800017e0:	00004097          	auipc	ra,0x4
    800017e4:	490080e7          	jalr	1168(ra) # 80005c70 <_ZN16KObjectAllocator19printInternalMemoryEv>
            printString("\n");
    800017e8:	00008517          	auipc	a0,0x8
    800017ec:	92850513          	addi	a0,a0,-1752 # 80009110 <CONSOLE_STATUS+0x100>
    800017f0:	00005097          	auipc	ra,0x5
    800017f4:	dc4080e7          	jalr	-572(ra) # 800065b4 <_Z11printStringPKc>
            objNumber = newObj->getNumberOfObjects();
    800017f8:	00090a13          	mv	s4,s2
    for (int i = 0; i < 100; ++i) {
    800017fc:	0014849b          	addiw	s1,s1,1
    80001800:	06300793          	li	a5,99
    80001804:	0497ca63          	blt	a5,s1,80001858 <main+0x1cc>
        objArr[i] = newObj->allocateNewObject();
    80001808:	00098513          	mv	a0,s3
    8000180c:	00005097          	auipc	ra,0x5
    80001810:	a94080e7          	jalr	-1388(ra) # 800062a0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80001814:	00050913          	mv	s2,a0
    80001818:	00349793          	slli	a5,s1,0x3
    8000181c:	fd040713          	addi	a4,s0,-48
    80001820:	00f707b3          	add	a5,a4,a5
    80001824:	cea7b023          	sd	a0,-800(a5)
        if (i == 14) newObj->freeObject(objArr[4]);
    80001828:	00e00793          	li	a5,14
    8000182c:	f8f484e3          	beq	s1,a5,800017b4 <main+0x128>
        if (i == 14) newObj->freeObject(objArr[9]);
    80001830:	00e00793          	li	a5,14
    80001834:	f8f48ae3          	beq	s1,a5,800017c8 <main+0x13c>
        *(uint8*) objArr[i] = 128;
    80001838:	f8000793          	li	a5,-128
    8000183c:	00f90023          	sb	a5,0(s2)
        MemoryAllocator::instance()->kmem_free(p);
    }
    void printInternalMemory();
    size_t getObjectSize() { return objectSize; }
    size_t getInitialNumberOfObjects() { return initialNumberOfObjects; }
    size_t getNumberOfObjects() { return numberOfObjects; }
    80001840:	0089b903          	ld	s2,8(s3)
        if (objNumber != newObj->getNumberOfObjects() || i % 100 == 0) {
    80001844:	f92a1ce3          	bne	s4,s2,800017dc <main+0x150>
    80001848:	06400793          	li	a5,100
    8000184c:	02f4e7bb          	remw	a5,s1,a5
    80001850:	fa0796e3          	bnez	a5,800017fc <main+0x170>
    80001854:	f89ff06f          	j	800017dc <main+0x150>
        }
    }

    for (int i = 0; i < 10; ++i) newObj->freeObject(objArr[i]);
    80001858:	00000493          	li	s1,0
    8000185c:	00900793          	li	a5,9
    80001860:	0297c463          	blt	a5,s1,80001888 <main+0x1fc>
    80001864:	00349793          	slli	a5,s1,0x3
    80001868:	fd040713          	addi	a4,s0,-48
    8000186c:	00f707b3          	add	a5,a4,a5
    80001870:	ce07b583          	ld	a1,-800(a5)
    80001874:	00098513          	mv	a0,s3
    80001878:	00004097          	auipc	ra,0x4
    8000187c:	7a8080e7          	jalr	1960(ra) # 80006020 <_ZN16KObjectAllocator10freeObjectEPv>
    80001880:	0014849b          	addiw	s1,s1,1
    80001884:	fd9ff06f          	j	8000185c <main+0x1d0>

    delete newObj;
    80001888:	00098863          	beqz	s3,80001898 <main+0x20c>
    8000188c:	00098513          	mv	a0,s3
    80001890:	00000097          	auipc	ra,0x0
    80001894:	0f4080e7          	jalr	244(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>

    printString("\nKObjectAllocator tests:\n");
    80001898:	00008517          	auipc	a0,0x8
    8000189c:	86050513          	addi	a0,a0,-1952 # 800090f8 <CONSOLE_STATUS+0xe8>
    800018a0:	00005097          	auipc	ra,0x5
    800018a4:	d14080e7          	jalr	-748(ra) # 800065b4 <_Z11printStringPKc>

class KObjectAllocatorTest {
public:
    KObjectAllocatorTest() {}
    void* operator new(size_t size) {
        return MemoryAllocator::instance()->kmem_alloc(size);
    800018a8:	00000097          	auipc	ra,0x0
    800018ac:	41c080e7          	jalr	1052(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800018b0:	04000593          	li	a1,64
    800018b4:	00000097          	auipc	ra,0x0
    800018b8:	4f4080e7          	jalr	1268(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    800018bc:	00050493          	mv	s1,a0
    KObjectAllocatorTest() {}
    800018c0:	00400793          	li	a5,4
    800018c4:	00f53023          	sd	a5,0(a0)
    800018c8:	00008797          	auipc	a5,0x8
    800018cc:	86078793          	addi	a5,a5,-1952 # 80009128 <CONSOLE_STATUS+0x118>
    800018d0:	0007b883          	ld	a7,0(a5)
    800018d4:	0087b803          	ld	a6,8(a5)
    800018d8:	0107b583          	ld	a1,16(a5)
    800018dc:	0187b603          	ld	a2,24(a5)
    800018e0:	0207b683          	ld	a3,32(a5)
    800018e4:	0287b703          	ld	a4,40(a5)
    800018e8:	0307b783          	ld	a5,48(a5)
    800018ec:	01153423          	sd	a7,8(a0)
    800018f0:	01053823          	sd	a6,16(a0)
    800018f4:	00b53c23          	sd	a1,24(a0)
    800018f8:	02c53023          	sd	a2,32(a0)
    800018fc:	02d53423          	sd	a3,40(a0)
    80001900:	02e53823          	sd	a4,48(a0)
    80001904:	02f53c23          	sd	a5,56(a0)
    KObjectAllocatorTest* t2 = new KObjectAllocatorTest;
    t2->runTests();
    80001908:	00004097          	auipc	ra,0x4
    8000190c:	25c080e7          	jalr	604(ra) # 80005b64 <_ZN20KObjectAllocatorTest8runTestsEv>
    delete t2;
    80001910:	00048c63          	beqz	s1,80001928 <main+0x29c>
    }
    void operator delete(void* p) {
        MemoryAllocator::instance()->kmem_free(p);
    80001914:	00000097          	auipc	ra,0x0
    80001918:	3b0080e7          	jalr	944(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    8000191c:	00048593          	mv	a1,s1
    80001920:	00000097          	auipc	ra,0x0
    80001924:	530080e7          	jalr	1328(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>

    printString("\nMemory tests:\n");
    80001928:	00007517          	auipc	a0,0x7
    8000192c:	7f050513          	addi	a0,a0,2032 # 80009118 <CONSOLE_STATUS+0x108>
    80001930:	00005097          	auipc	ra,0x5
    80001934:	c84080e7          	jalr	-892(ra) # 800065b4 <_Z11printStringPKc>
    MemoryAllocatorTest t1;
    t1.runTests();
    80001938:	ca840513          	addi	a0,s0,-856
    8000193c:	00001097          	auipc	ra,0x1
    80001940:	650080e7          	jalr	1616(ra) # 80002f8c <_ZN19MemoryAllocatorTest8runTestsEv>


    return 0;
    80001944:	00000513          	li	a0,0
    80001948:	35813083          	ld	ra,856(sp)
    8000194c:	35013403          	ld	s0,848(sp)
    80001950:	34813483          	ld	s1,840(sp)
    80001954:	34013903          	ld	s2,832(sp)
    80001958:	33813983          	ld	s3,824(sp)
    8000195c:	33013a03          	ld	s4,816(sp)
    80001960:	36010113          	addi	sp,sp,864
    80001964:	00008067          	ret
    80001968:	00050493          	mv	s1,a0
    KObjectAllocator* newObj = new KObjectAllocator(sizeof(uint8), 20);
    8000196c:	00098513          	mv	a0,s3
    80001970:	00000097          	auipc	ra,0x0
    80001974:	014080e7          	jalr	20(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80001978:	00048513          	mv	a0,s1
    8000197c:	0000a097          	auipc	ra,0xa
    80001980:	dec080e7          	jalr	-532(ra) # 8000b768 <_Unwind_Resume>

0000000080001984 <_ZN16KObjectAllocatordlEPv>:
    void operator delete(void* p) {
    80001984:	fe010113          	addi	sp,sp,-32
    80001988:	00113c23          	sd	ra,24(sp)
    8000198c:	00813823          	sd	s0,16(sp)
    80001990:	00913423          	sd	s1,8(sp)
    80001994:	01213023          	sd	s2,0(sp)
    80001998:	02010413          	addi	s0,sp,32
    8000199c:	00050913          	mv	s2,a0
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800019a0:	00000493          	li	s1,0
    800019a4:	03093783          	ld	a5,48(s2)
    800019a8:	02f4f663          	bgeu	s1,a5,800019d4 <_ZN16KObjectAllocatordlEPv+0x50>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	318080e7          	jalr	792(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800019b4:	02893783          	ld	a5,40(s2)
    800019b8:	00349713          	slli	a4,s1,0x3
    800019bc:	00e787b3          	add	a5,a5,a4
    800019c0:	0007b583          	ld	a1,0(a5)
    800019c4:	00000097          	auipc	ra,0x0
    800019c8:	48c080e7          	jalr	1164(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800019cc:	00148493          	addi	s1,s1,1
    800019d0:	fd5ff06f          	j	800019a4 <_ZN16KObjectAllocatordlEPv+0x20>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	2f0080e7          	jalr	752(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800019dc:	02893583          	ld	a1,40(s2)
    800019e0:	00000097          	auipc	ra,0x0
    800019e4:	470080e7          	jalr	1136(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800019e8:	00000097          	auipc	ra,0x0
    800019ec:	2dc080e7          	jalr	732(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800019f0:	02093583          	ld	a1,32(s2)
    800019f4:	00000097          	auipc	ra,0x0
    800019f8:	45c080e7          	jalr	1116(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800019fc:	00000097          	auipc	ra,0x0
    80001a00:	2c8080e7          	jalr	712(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80001a04:	00090593          	mv	a1,s2
    80001a08:	00000097          	auipc	ra,0x0
    80001a0c:	448080e7          	jalr	1096(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    }
    80001a10:	01813083          	ld	ra,24(sp)
    80001a14:	01013403          	ld	s0,16(sp)
    80001a18:	00813483          	ld	s1,8(sp)
    80001a1c:	00013903          	ld	s2,0(sp)
    80001a20:	02010113          	addi	sp,sp,32
    80001a24:	00008067          	ret

0000000080001a28 <_ZN3TCB12createThreadEPFvvE>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    80001a28:	fe010113          	addi	sp,sp,-32
    80001a2c:	00113c23          	sd	ra,24(sp)
    80001a30:	00813823          	sd	s0,16(sp)
    80001a34:	00913423          	sd	s1,8(sp)
    80001a38:	01213023          	sd	s2,0(sp)
    80001a3c:	02010413          	addi	s0,sp,32
    80001a40:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    80001a44:	03000513          	li	a0,48
    80001a48:	00001097          	auipc	ra,0x1
    80001a4c:	764080e7          	jalr	1892(ra) # 800031ac <_Znwm>
    80001a50:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    80001a54:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001a58:	00090a63          	beqz	s2,80001a6c <_ZN3TCB12createThreadEPFvvE+0x44>
    80001a5c:	00002537          	lui	a0,0x2
    80001a60:	00001097          	auipc	ra,0x1
    80001a64:	774080e7          	jalr	1908(ra) # 800031d4 <_Znam>
    80001a68:	0080006f          	j	80001a70 <_ZN3TCB12createThreadEPFvvE+0x48>
    80001a6c:	00000513          	li	a0,0
            finished(false)
    80001a70:	00a4b423          	sd	a0,8(s1)
    80001a74:	00000797          	auipc	a5,0x0
    80001a78:	09878793          	addi	a5,a5,152 # 80001b0c <_ZN3TCB13threadWrapperEv>
    80001a7c:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001a80:	02050863          	beqz	a0,80001ab0 <_ZN3TCB12createThreadEPFvvE+0x88>
    80001a84:	000027b7          	lui	a5,0x2
    80001a88:	00f507b3          	add	a5,a0,a5
            finished(false)
    80001a8c:	00f4bc23          	sd	a5,24(s1)
    80001a90:	00200793          	li	a5,2
    80001a94:	02f4b023          	sd	a5,32(s1)
    80001a98:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001a9c:	02090c63          	beqz	s2,80001ad4 <_ZN3TCB12createThreadEPFvvE+0xac>
    80001aa0:	00048513          	mv	a0,s1
    80001aa4:	00005097          	auipc	ra,0x5
    80001aa8:	a70080e7          	jalr	-1424(ra) # 80006514 <_ZN9Scheduler3putEP3TCB>
    80001aac:	0280006f          	j	80001ad4 <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001ab0:	00000793          	li	a5,0
    80001ab4:	fd9ff06f          	j	80001a8c <_ZN3TCB12createThreadEPFvvE+0x64>
    80001ab8:	00050913          	mv	s2,a0
    80001abc:	00048513          	mv	a0,s1
    80001ac0:	00001097          	auipc	ra,0x1
    80001ac4:	73c080e7          	jalr	1852(ra) # 800031fc <_ZdlPv>
    80001ac8:	00090513          	mv	a0,s2
    80001acc:	0000a097          	auipc	ra,0xa
    80001ad0:	c9c080e7          	jalr	-868(ra) # 8000b768 <_Unwind_Resume>
}
    80001ad4:	00048513          	mv	a0,s1
    80001ad8:	01813083          	ld	ra,24(sp)
    80001adc:	01013403          	ld	s0,16(sp)
    80001ae0:	00813483          	ld	s1,8(sp)
    80001ae4:	00013903          	ld	s2,0(sp)
    80001ae8:	02010113          	addi	sp,sp,32
    80001aec:	00008067          	ret

0000000080001af0 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    80001af0:	ff010113          	addi	sp,sp,-16
    80001af4:	00813423          	sd	s0,8(sp)
    80001af8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80001afc:	00000073          	ecall
}
    80001b00:	00813403          	ld	s0,8(sp)
    80001b04:	01010113          	addi	sp,sp,16
    80001b08:	00008067          	ret

0000000080001b0c <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001b0c:	fe010113          	addi	sp,sp,-32
    80001b10:	00113c23          	sd	ra,24(sp)
    80001b14:	00813823          	sd	s0,16(sp)
    80001b18:	00913423          	sd	s1,8(sp)
    80001b1c:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001b20:	00005097          	auipc	ra,0x5
    80001b24:	804080e7          	jalr	-2044(ra) # 80006324 <_ZN5Riscv10popSppSpieEv>
    running->body();
    80001b28:	00009497          	auipc	s1,0x9
    80001b2c:	b3848493          	addi	s1,s1,-1224 # 8000a660 <_ZN3TCB7runningE>
    80001b30:	0004b783          	ld	a5,0(s1)
    80001b34:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    80001b38:	000780e7          	jalr	a5
    running->setFinished(true);
    80001b3c:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80001b40:	00100713          	li	a4,1
    80001b44:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    80001b48:	00000097          	auipc	ra,0x0
    80001b4c:	fa8080e7          	jalr	-88(ra) # 80001af0 <_ZN3TCB5yieldEv>
}
    80001b50:	01813083          	ld	ra,24(sp)
    80001b54:	01013403          	ld	s0,16(sp)
    80001b58:	00813483          	ld	s1,8(sp)
    80001b5c:	02010113          	addi	sp,sp,32
    80001b60:	00008067          	ret

0000000080001b64 <_ZN3TCB8dispatchEv>:
{
    80001b64:	fe010113          	addi	sp,sp,-32
    80001b68:	00113c23          	sd	ra,24(sp)
    80001b6c:	00813823          	sd	s0,16(sp)
    80001b70:	00913423          	sd	s1,8(sp)
    80001b74:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001b78:	00009497          	auipc	s1,0x9
    80001b7c:	ae84b483          	ld	s1,-1304(s1) # 8000a660 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001b80:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001b84:	02078c63          	beqz	a5,80001bbc <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001b88:	00005097          	auipc	ra,0x5
    80001b8c:	924080e7          	jalr	-1756(ra) # 800064ac <_ZN9Scheduler3getEv>
    80001b90:	00009797          	auipc	a5,0x9
    80001b94:	aca7b823          	sd	a0,-1328(a5) # 8000a660 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001b98:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001b9c:	01048513          	addi	a0,s1,16
    80001ba0:	fffff097          	auipc	ra,0xfffff
    80001ba4:	570080e7          	jalr	1392(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001ba8:	01813083          	ld	ra,24(sp)
    80001bac:	01013403          	ld	s0,16(sp)
    80001bb0:	00813483          	ld	s1,8(sp)
    80001bb4:	02010113          	addi	sp,sp,32
    80001bb8:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001bbc:	00048513          	mv	a0,s1
    80001bc0:	00005097          	auipc	ra,0x5
    80001bc4:	954080e7          	jalr	-1708(ra) # 80006514 <_ZN9Scheduler3putEP3TCB>
    80001bc8:	fc1ff06f          	j	80001b88 <_ZN3TCB8dispatchEv+0x24>

0000000080001bcc <_ZN15MemoryAllocator17getMinBlockNumberEm>:
    newMemoryAllocator->freeMemoryHead->next = nullptr;

    return newMemoryAllocator;
}

size_t MemoryAllocator::getMinBlockNumber(size_t size) {
    80001bcc:	ff010113          	addi	sp,sp,-16
    80001bd0:	00813423          	sd	s0,8(sp)
    80001bd4:	01010413          	addi	s0,sp,16
    size_t blockNo = size / MEM_BLOCK_SIZE;
    80001bd8:	00655713          	srli	a4,a0,0x6
    blockNo = blockNo + (size - blockNo * MEM_BLOCK_SIZE != 0);
    80001bdc:	fc057793          	andi	a5,a0,-64
    80001be0:	40a78533          	sub	a0,a5,a0
    80001be4:	00a03533          	snez	a0,a0
    return blockNo;
}
    80001be8:	00e50533          	add	a0,a0,a4
    80001bec:	00813403          	ld	s0,8(sp)
    80001bf0:	01010113          	addi	sp,sp,16
    80001bf4:	00008067          	ret

0000000080001bf8 <_ZN15MemoryAllocator14createInstanceEv>:
MemoryAllocator* MemoryAllocator::createInstance() {
    80001bf8:	fd010113          	addi	sp,sp,-48
    80001bfc:	02113423          	sd	ra,40(sp)
    80001c00:	02813023          	sd	s0,32(sp)
    80001c04:	00913c23          	sd	s1,24(sp)
    80001c08:	01213823          	sd	s2,16(sp)
    80001c0c:	01313423          	sd	s3,8(sp)
    80001c10:	01413023          	sd	s4,0(sp)
    80001c14:	03010413          	addi	s0,sp,48
    managedMemorySpaceStart = (uint8*) HEAP_START_ADDR;
    80001c18:	00009797          	auipc	a5,0x9
    80001c1c:	9987b783          	ld	a5,-1640(a5) # 8000a5b0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c20:	0007b903          	ld	s2,0(a5)
    managedMemorySpaceEnd = (uint8*) HEAP_END_ADDR;
    80001c24:	00009797          	auipc	a5,0x9
    80001c28:	9d47b783          	ld	a5,-1580(a5) # 8000a5f8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001c2c:	0007b483          	ld	s1,0(a5)
    80001c30:	00009a17          	auipc	s4,0x9
    80001c34:	a40a0a13          	addi	s4,s4,-1472 # 8000a670 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    80001c38:	009a3023          	sd	s1,0(s4)
    minMemoryFragmentSize = getMinBlockNumber(sizeof(SegmentDescriptor)) + getMinBlockNumber(sizeof(uint64));
    80001c3c:	01000513          	li	a0,16
    80001c40:	00000097          	auipc	ra,0x0
    80001c44:	f8c080e7          	jalr	-116(ra) # 80001bcc <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001c48:	00050993          	mv	s3,a0
    80001c4c:	00800513          	li	a0,8
    80001c50:	00000097          	auipc	ra,0x0
    80001c54:	f7c080e7          	jalr	-132(ra) # 80001bcc <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001c58:	00a989b3          	add	s3,s3,a0
    80001c5c:	013a3423          	sd	s3,8(s4)
    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
    80001c60:	02000513          	li	a0,32
    80001c64:	00000097          	auipc	ra,0x0
    80001c68:	f68080e7          	jalr	-152(ra) # 80001bcc <_ZN15MemoryAllocator17getMinBlockNumberEm>
    managedMemorySpaceStart += noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE;
    80001c6c:	00651513          	slli	a0,a0,0x6
    80001c70:	00a90533          	add	a0,s2,a0
    80001c74:	00aa3823          	sd	a0,16(s4)
    newMemoryAllocator->totalTaken = 0;
    80001c78:	00093423          	sd	zero,8(s2)
    newMemoryAllocator->totalFree = (size_t) (managedMemorySpaceEnd - managedMemorySpaceStart);
    80001c7c:	40a484b3          	sub	s1,s1,a0
    80001c80:	00993023          	sd	s1,0(s2)
    newMemoryAllocator->freeBlockNo = newMemoryAllocator->totalFree / MEM_BLOCK_SIZE;
    80001c84:	0064d493          	srli	s1,s1,0x6
    80001c88:	00993823          	sd	s1,16(s2)
    newMemoryAllocator->freeMemoryHead = (SegmentDescriptor*) managedMemorySpaceStart;
    80001c8c:	010a3783          	ld	a5,16(s4)
    80001c90:	00f93c23          	sd	a5,24(s2)
    newMemoryAllocator->freeMemoryHead->noBlocks = newMemoryAllocator->freeBlockNo;
    80001c94:	0097b023          	sd	s1,0(a5)
    newMemoryAllocator->freeMemoryHead->next = nullptr;
    80001c98:	01893783          	ld	a5,24(s2)
    80001c9c:	0007b423          	sd	zero,8(a5)
}
    80001ca0:	00090513          	mv	a0,s2
    80001ca4:	02813083          	ld	ra,40(sp)
    80001ca8:	02013403          	ld	s0,32(sp)
    80001cac:	01813483          	ld	s1,24(sp)
    80001cb0:	01013903          	ld	s2,16(sp)
    80001cb4:	00813983          	ld	s3,8(sp)
    80001cb8:	00013a03          	ld	s4,0(sp)
    80001cbc:	03010113          	addi	sp,sp,48
    80001cc0:	00008067          	ret

0000000080001cc4 <_ZN15MemoryAllocator8instanceEv>:
    if (onlyInstance == nullptr)
    80001cc4:	00009797          	auipc	a5,0x9
    80001cc8:	9c47b783          	ld	a5,-1596(a5) # 8000a688 <_ZN15MemoryAllocator12onlyInstanceE>
    80001ccc:	00078863          	beqz	a5,80001cdc <_ZN15MemoryAllocator8instanceEv+0x18>
}
    80001cd0:	00009517          	auipc	a0,0x9
    80001cd4:	9b853503          	ld	a0,-1608(a0) # 8000a688 <_ZN15MemoryAllocator12onlyInstanceE>
    80001cd8:	00008067          	ret
MemoryAllocator* MemoryAllocator::instance() {
    80001cdc:	ff010113          	addi	sp,sp,-16
    80001ce0:	00113423          	sd	ra,8(sp)
    80001ce4:	00813023          	sd	s0,0(sp)
    80001ce8:	01010413          	addi	s0,sp,16
        onlyInstance = createInstance();
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	f0c080e7          	jalr	-244(ra) # 80001bf8 <_ZN15MemoryAllocator14createInstanceEv>
    80001cf4:	00009797          	auipc	a5,0x9
    80001cf8:	98a7ba23          	sd	a0,-1644(a5) # 8000a688 <_ZN15MemoryAllocator12onlyInstanceE>
}
    80001cfc:	00009517          	auipc	a0,0x9
    80001d00:	98c53503          	ld	a0,-1652(a0) # 8000a688 <_ZN15MemoryAllocator12onlyInstanceE>
    80001d04:	00813083          	ld	ra,8(sp)
    80001d08:	00013403          	ld	s0,0(sp)
    80001d0c:	01010113          	addi	sp,sp,16
    80001d10:	00008067          	ret

0000000080001d14 <_ZN15MemoryAllocator8firstFitEm>:


MemoryAllocator::SegmentDescriptor* MemoryAllocator::firstFit(size_t blockNo) {
    80001d14:	ff010113          	addi	sp,sp,-16
    80001d18:	00813423          	sd	s0,8(sp)
    80001d1c:	01010413          	addi	s0,sp,16
    80001d20:	00050693          	mv	a3,a0
    SegmentDescriptor* largeEnoughSegment = freeMemoryHead;
    80001d24:	01853503          	ld	a0,24(a0)
    SegmentDescriptor* prevSegment = nullptr;
    80001d28:	00000713          	li	a4,0
    while (largeEnoughSegment && largeEnoughSegment->noBlocks < blockNo) {
    80001d2c:	00050c63          	beqz	a0,80001d44 <_ZN15MemoryAllocator8firstFitEm+0x30>
    80001d30:	00053783          	ld	a5,0(a0)
    80001d34:	00b7f863          	bgeu	a5,a1,80001d44 <_ZN15MemoryAllocator8firstFitEm+0x30>
        prevSegment = largeEnoughSegment;
    80001d38:	00050713          	mv	a4,a0
        largeEnoughSegment = largeEnoughSegment->next;
    80001d3c:	00853503          	ld	a0,8(a0)
    while (largeEnoughSegment && largeEnoughSegment->noBlocks < blockNo) {
    80001d40:	fedff06f          	j	80001d2c <_ZN15MemoryAllocator8firstFitEm+0x18>
    }
    if (!largeEnoughSegment) return nullptr;
    80001d44:	04050663          	beqz	a0,80001d90 <_ZN15MemoryAllocator8firstFitEm+0x7c>

    if (largeEnoughSegment->noBlocks - blockNo >= minMemoryFragmentSize) {
    80001d48:	00053783          	ld	a5,0(a0)
    80001d4c:	40b787b3          	sub	a5,a5,a1
    80001d50:	00009617          	auipc	a2,0x9
    80001d54:	92863603          	ld	a2,-1752(a2) # 8000a678 <_ZN15MemoryAllocator21minMemoryFragmentSizeE>
    80001d58:	02c7e063          	bltu	a5,a2,80001d78 <_ZN15MemoryAllocator8firstFitEm+0x64>
        SegmentDescriptor* newSegment = (SegmentDescriptor*) ((uint8*) largeEnoughSegment + blockNo * MEM_BLOCK_SIZE);
    80001d5c:	00659613          	slli	a2,a1,0x6
    80001d60:	00c50633          	add	a2,a0,a2
        newSegment->noBlocks = largeEnoughSegment->noBlocks - blockNo;
    80001d64:	00f63023          	sd	a5,0(a2)
        newSegment->next = largeEnoughSegment->next;
    80001d68:	00853783          	ld	a5,8(a0)
    80001d6c:	00f63423          	sd	a5,8(a2)
        largeEnoughSegment->next = newSegment;
    80001d70:	00c53423          	sd	a2,8(a0)
        largeEnoughSegment->noBlocks = blockNo;
    80001d74:	00b53023          	sd	a1,0(a0)
    }

    if (prevSegment) prevSegment->next = largeEnoughSegment->next;
    80001d78:	00070663          	beqz	a4,80001d84 <_ZN15MemoryAllocator8firstFitEm+0x70>
    80001d7c:	00853783          	ld	a5,8(a0)
    80001d80:	00f73423          	sd	a5,8(a4)
    if (freeMemoryHead == largeEnoughSegment)
    80001d84:	0186b783          	ld	a5,24(a3)
    80001d88:	00a78a63          	beq	a5,a0,80001d9c <_ZN15MemoryAllocator8firstFitEm+0x88>
        freeMemoryHead = largeEnoughSegment->next;

    largeEnoughSegment->next = nullptr;
    80001d8c:	00053423          	sd	zero,8(a0)
    return largeEnoughSegment;
}
    80001d90:	00813403          	ld	s0,8(sp)
    80001d94:	01010113          	addi	sp,sp,16
    80001d98:	00008067          	ret
        freeMemoryHead = largeEnoughSegment->next;
    80001d9c:	00853783          	ld	a5,8(a0)
    80001da0:	00f6bc23          	sd	a5,24(a3)
    80001da4:	fe9ff06f          	j	80001d8c <_ZN15MemoryAllocator8firstFitEm+0x78>

0000000080001da8 <_ZN15MemoryAllocator10kmem_allocEm>:

void* MemoryAllocator::kmem_alloc(size_t size) {
    80001da8:	fe010113          	addi	sp,sp,-32
    80001dac:	00113c23          	sd	ra,24(sp)
    80001db0:	00813823          	sd	s0,16(sp)
    80001db4:	00913423          	sd	s1,8(sp)
    80001db8:	01213023          	sd	s2,0(sp)
    80001dbc:	02010413          	addi	s0,sp,32
    80001dc0:	00050493          	mv	s1,a0
    80001dc4:	00058913          	mv	s2,a1
    size_t minBlockNo = getMinBlockNumber(size);
    80001dc8:	00058513          	mv	a0,a1
    80001dcc:	00000097          	auipc	ra,0x0
    80001dd0:	e00080e7          	jalr	-512(ra) # 80001bcc <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001dd4:	00050593          	mv	a1,a0
    if (minBlockNo * MEM_BLOCK_SIZE - size < sizeof(SegmentDescriptor)) ++minBlockNo;
    80001dd8:	00651793          	slli	a5,a0,0x6
    80001ddc:	41278933          	sub	s2,a5,s2
    80001de0:	00f00793          	li	a5,15
    80001de4:	0127e463          	bltu	a5,s2,80001dec <_ZN15MemoryAllocator10kmem_allocEm+0x44>
    80001de8:	00150593          	addi	a1,a0,1
    SegmentDescriptor* newTaken = firstFit(minBlockNo);
    80001dec:	00048513          	mv	a0,s1
    80001df0:	00000097          	auipc	ra,0x0
    80001df4:	f24080e7          	jalr	-220(ra) # 80001d14 <_ZN15MemoryAllocator8firstFitEm>
    if (!newTaken) return nullptr;
    80001df8:	04050063          	beqz	a0,80001e38 <_ZN15MemoryAllocator10kmem_allocEm+0x90>

    freeBlockNo -= newTaken->noBlocks;
    80001dfc:	00053703          	ld	a4,0(a0)
    80001e00:	0104b783          	ld	a5,16(s1)
    80001e04:	40e787b3          	sub	a5,a5,a4
    80001e08:	00f4b823          	sd	a5,16(s1)
    totalFree -= newTaken->noBlocks * MEM_BLOCK_SIZE;
    80001e0c:	00053783          	ld	a5,0(a0)
    80001e10:	00679713          	slli	a4,a5,0x6
    80001e14:	0004b783          	ld	a5,0(s1)
    80001e18:	40e787b3          	sub	a5,a5,a4
    80001e1c:	00f4b023          	sd	a5,0(s1)
    totalTaken += newTaken->noBlocks * MEM_BLOCK_SIZE;
    80001e20:	00053783          	ld	a5,0(a0)
    80001e24:	00679713          	slli	a4,a5,0x6
    80001e28:	0084b783          	ld	a5,8(s1)
    80001e2c:	00e787b3          	add	a5,a5,a4
    80001e30:	00f4b423          	sd	a5,8(s1)

    return (uint8*) newTaken + sizeof(SegmentDescriptor);
    80001e34:	01050513          	addi	a0,a0,16
}
    80001e38:	01813083          	ld	ra,24(sp)
    80001e3c:	01013403          	ld	s0,16(sp)
    80001e40:	00813483          	ld	s1,8(sp)
    80001e44:	00013903          	ld	s2,0(sp)
    80001e48:	02010113          	addi	sp,sp,32
    80001e4c:	00008067          	ret

0000000080001e50 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* newFree) {
    80001e50:	ff010113          	addi	sp,sp,-16
    80001e54:	00813423          	sd	s0,8(sp)
    80001e58:	01010413          	addi	s0,sp,16
    if (newFree == nullptr) return 0;
    80001e5c:	08058863          	beqz	a1,80001eec <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>
    SegmentDescriptor* newFreeSegment = (SegmentDescriptor*) ((uint8*) newFree - sizeof(SegmentDescriptor));
    80001e60:	ff058693          	addi	a3,a1,-16
    freeBlockNo += newFreeSegment->noBlocks;
    80001e64:	ff05b703          	ld	a4,-16(a1)
    80001e68:	01053783          	ld	a5,16(a0)
    80001e6c:	00e787b3          	add	a5,a5,a4
    80001e70:	00f53823          	sd	a5,16(a0)
    totalFree += newFreeSegment->noBlocks * MEM_BLOCK_SIZE;
    80001e74:	ff05b783          	ld	a5,-16(a1)
    80001e78:	00679713          	slli	a4,a5,0x6
    80001e7c:	00053783          	ld	a5,0(a0)
    80001e80:	00e787b3          	add	a5,a5,a4
    80001e84:	00f53023          	sd	a5,0(a0)
    totalTaken -= newFreeSegment->noBlocks * MEM_BLOCK_SIZE;
    80001e88:	ff05b783          	ld	a5,-16(a1)
    80001e8c:	00679713          	slli	a4,a5,0x6
    80001e90:	00853783          	ld	a5,8(a0)
    80001e94:	40e787b3          	sub	a5,a5,a4
    80001e98:	00f53423          	sd	a5,8(a0)

    SegmentDescriptor* after = freeMemoryHead, *prev = nullptr;
    80001e9c:	01853783          	ld	a5,24(a0)
    80001ea0:	00000713          	li	a4,0
    while (after && after < newFreeSegment) {
    80001ea4:	00078a63          	beqz	a5,80001eb8 <_ZN15MemoryAllocator9kmem_freeEPv+0x68>
    80001ea8:	00d7f863          	bgeu	a5,a3,80001eb8 <_ZN15MemoryAllocator9kmem_freeEPv+0x68>
        prev = after; after = after->next; }
    80001eac:	00078713          	mv	a4,a5
    80001eb0:	0087b783          	ld	a5,8(a5)
    while (after && after < newFreeSegment) {
    80001eb4:	ff1ff06f          	j	80001ea4 <_ZN15MemoryAllocator9kmem_freeEPv+0x54>

    newFreeSegment->next = after;
    80001eb8:	fef5bc23          	sd	a5,-8(a1)
    if (prev) prev->next = newFreeSegment;
    80001ebc:	04070063          	beqz	a4,80001efc <_ZN15MemoryAllocator9kmem_freeEPv+0xac>
    80001ec0:	00d73423          	sd	a3,8(a4)
    else freeMemoryHead = newFreeSegment;

    if (prev && (uint8*) prev + prev->noBlocks * MEM_BLOCK_SIZE == (uint8*) newFreeSegment) {
    80001ec4:	00070a63          	beqz	a4,80001ed8 <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
    80001ec8:	00073503          	ld	a0,0(a4)
    80001ecc:	00651613          	slli	a2,a0,0x6
    80001ed0:	00c70633          	add	a2,a4,a2
    80001ed4:	02d60863          	beq	a2,a3,80001f04 <_ZN15MemoryAllocator9kmem_freeEPv+0xb4>
        prev->next = newFreeSegment->next;
        prev->noBlocks += newFreeSegment->noBlocks;
        newFreeSegment = prev;
    }

    if (after && (uint8*) newFreeSegment + newFreeSegment->noBlocks * MEM_BLOCK_SIZE == (uint8*) after) {
    80001ed8:	00078a63          	beqz	a5,80001eec <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>
    80001edc:	0006b603          	ld	a2,0(a3)
    80001ee0:	00661713          	slli	a4,a2,0x6
    80001ee4:	00e68733          	add	a4,a3,a4
    80001ee8:	02f70c63          	beq	a4,a5,80001f20 <_ZN15MemoryAllocator9kmem_freeEPv+0xd0>
        newFreeSegment->next = after->next; newFreeSegment->noBlocks += after->noBlocks; }

    return 0;
}
    80001eec:	00000513          	li	a0,0
    80001ef0:	00813403          	ld	s0,8(sp)
    80001ef4:	01010113          	addi	sp,sp,16
    80001ef8:	00008067          	ret
    else freeMemoryHead = newFreeSegment;
    80001efc:	00d53c23          	sd	a3,24(a0)
    80001f00:	fc5ff06f          	j	80001ec4 <_ZN15MemoryAllocator9kmem_freeEPv+0x74>
        prev->next = newFreeSegment->next;
    80001f04:	ff85b683          	ld	a3,-8(a1)
    80001f08:	00d73423          	sd	a3,8(a4)
        prev->noBlocks += newFreeSegment->noBlocks;
    80001f0c:	ff05b683          	ld	a3,-16(a1)
    80001f10:	00d50533          	add	a0,a0,a3
    80001f14:	00a73023          	sd	a0,0(a4)
        newFreeSegment = prev;
    80001f18:	00070693          	mv	a3,a4
    80001f1c:	fbdff06f          	j	80001ed8 <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
        newFreeSegment->next = after->next; newFreeSegment->noBlocks += after->noBlocks; }
    80001f20:	0087b703          	ld	a4,8(a5)
    80001f24:	00e6b423          	sd	a4,8(a3)
    80001f28:	0007b783          	ld	a5,0(a5)
    80001f2c:	00f60633          	add	a2,a2,a5
    80001f30:	00c6b023          	sd	a2,0(a3)
    80001f34:	fb9ff06f          	j	80001eec <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>

0000000080001f38 <_ZN15MemoryAllocator30printInstanceMemorySpaceParamsEv>:

void MemoryAllocator::printInstanceMemorySpaceParams() {
    80001f38:	fe010113          	addi	sp,sp,-32
    80001f3c:	00113c23          	sd	ra,24(sp)
    80001f40:	00813823          	sd	s0,16(sp)
    80001f44:	00913423          	sd	s1,8(sp)
    80001f48:	01213023          	sd	s2,0(sp)
    80001f4c:	02010413          	addi	s0,sp,32
    80001f50:	00050493          	mv	s1,a0
    printString("##################################\n\n");
    80001f54:	00007517          	auipc	a0,0x7
    80001f58:	20c50513          	addi	a0,a0,524 # 80009160 <CONSOLE_STATUS+0x150>
    80001f5c:	00004097          	auipc	ra,0x4
    80001f60:	658080e7          	jalr	1624(ra) # 800065b4 <_Z11printStringPKc>
    printString("MemoryAllocator address: "); printInteger((uint64)this); printString("\n");
    80001f64:	00007517          	auipc	a0,0x7
    80001f68:	22450513          	addi	a0,a0,548 # 80009188 <CONSOLE_STATUS+0x178>
    80001f6c:	00004097          	auipc	ra,0x4
    80001f70:	648080e7          	jalr	1608(ra) # 800065b4 <_Z11printStringPKc>
    80001f74:	00048513          	mv	a0,s1
    80001f78:	00004097          	auipc	ra,0x4
    80001f7c:	6ac080e7          	jalr	1708(ra) # 80006624 <_Z12printIntegerm>
    80001f80:	00007517          	auipc	a0,0x7
    80001f84:	19050513          	addi	a0,a0,400 # 80009110 <CONSOLE_STATUS+0x100>
    80001f88:	00004097          	auipc	ra,0x4
    80001f8c:	62c080e7          	jalr	1580(ra) # 800065b4 <_Z11printStringPKc>

    // size_t noBlocksForStoringMemoryAllocator = sizeof(MemoryAllocator) / MEM_BLOCK_SIZE + 1;
    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
    80001f90:	02000513          	li	a0,32
    80001f94:	00000097          	auipc	ra,0x0
    80001f98:	c38080e7          	jalr	-968(ra) # 80001bcc <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001f9c:	00050913          	mv	s2,a0
    printString("noBlocksForStoringMemoryAllocator: ");
    80001fa0:	00007517          	auipc	a0,0x7
    80001fa4:	20850513          	addi	a0,a0,520 # 800091a8 <CONSOLE_STATUS+0x198>
    80001fa8:	00004097          	auipc	ra,0x4
    80001fac:	60c080e7          	jalr	1548(ra) # 800065b4 <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator); printString("\n");
    80001fb0:	00090513          	mv	a0,s2
    80001fb4:	00004097          	auipc	ra,0x4
    80001fb8:	670080e7          	jalr	1648(ra) # 80006624 <_Z12printIntegerm>
    80001fbc:	00007517          	auipc	a0,0x7
    80001fc0:	15450513          	addi	a0,a0,340 # 80009110 <CONSOLE_STATUS+0x100>
    80001fc4:	00004097          	auipc	ra,0x4
    80001fc8:	5f0080e7          	jalr	1520(ra) # 800065b4 <_Z11printStringPKc>
    printString("noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE: ");
    80001fcc:	00007517          	auipc	a0,0x7
    80001fd0:	20450513          	addi	a0,a0,516 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80001fd4:	00004097          	auipc	ra,0x4
    80001fd8:	5e0080e7          	jalr	1504(ra) # 800065b4 <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE); printString("\n\n");
    80001fdc:	00691513          	slli	a0,s2,0x6
    80001fe0:	00004097          	auipc	ra,0x4
    80001fe4:	644080e7          	jalr	1604(ra) # 80006624 <_Z12printIntegerm>
    80001fe8:	00007517          	auipc	a0,0x7
    80001fec:	22050513          	addi	a0,a0,544 # 80009208 <CONSOLE_STATUS+0x1f8>
    80001ff0:	00004097          	auipc	ra,0x4
    80001ff4:	5c4080e7          	jalr	1476(ra) # 800065b4 <_Z11printStringPKc>

    printString("Managed memory space start: ");
    80001ff8:	00007517          	auipc	a0,0x7
    80001ffc:	21850513          	addi	a0,a0,536 # 80009210 <CONSOLE_STATUS+0x200>
    80002000:	00004097          	auipc	ra,0x4
    80002004:	5b4080e7          	jalr	1460(ra) # 800065b4 <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceStart); printString("\n");
    80002008:	00008917          	auipc	s2,0x8
    8000200c:	66890913          	addi	s2,s2,1640 # 8000a670 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    80002010:	01093503          	ld	a0,16(s2)
    80002014:	00004097          	auipc	ra,0x4
    80002018:	610080e7          	jalr	1552(ra) # 80006624 <_Z12printIntegerm>
    8000201c:	00007517          	auipc	a0,0x7
    80002020:	0f450513          	addi	a0,a0,244 # 80009110 <CONSOLE_STATUS+0x100>
    80002024:	00004097          	auipc	ra,0x4
    80002028:	590080e7          	jalr	1424(ra) # 800065b4 <_Z11printStringPKc>
    printString("Managed memory space end: ");
    8000202c:	00007517          	auipc	a0,0x7
    80002030:	20450513          	addi	a0,a0,516 # 80009230 <CONSOLE_STATUS+0x220>
    80002034:	00004097          	auipc	ra,0x4
    80002038:	580080e7          	jalr	1408(ra) # 800065b4 <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceEnd); printString("\n\n");
    8000203c:	00093503          	ld	a0,0(s2)
    80002040:	00004097          	auipc	ra,0x4
    80002044:	5e4080e7          	jalr	1508(ra) # 80006624 <_Z12printIntegerm>
    80002048:	00007517          	auipc	a0,0x7
    8000204c:	1c050513          	addi	a0,a0,448 # 80009208 <CONSOLE_STATUS+0x1f8>
    80002050:	00004097          	auipc	ra,0x4
    80002054:	564080e7          	jalr	1380(ra) # 800065b4 <_Z11printStringPKc>

    printString("Total Free: "); printInteger(getTotalFree()); printString("\n");
    80002058:	00007517          	auipc	a0,0x7
    8000205c:	1f850513          	addi	a0,a0,504 # 80009250 <CONSOLE_STATUS+0x240>
    80002060:	00004097          	auipc	ra,0x4
    80002064:	554080e7          	jalr	1364(ra) # 800065b4 <_Z11printStringPKc>
    80002068:	0004b503          	ld	a0,0(s1)
    8000206c:	00004097          	auipc	ra,0x4
    80002070:	5b8080e7          	jalr	1464(ra) # 80006624 <_Z12printIntegerm>
    80002074:	00007517          	auipc	a0,0x7
    80002078:	09c50513          	addi	a0,a0,156 # 80009110 <CONSOLE_STATUS+0x100>
    8000207c:	00004097          	auipc	ra,0x4
    80002080:	538080e7          	jalr	1336(ra) # 800065b4 <_Z11printStringPKc>
    printString("Total Taken: "); printInteger(getTotalTaken()); printString("\n");
    80002084:	00007517          	auipc	a0,0x7
    80002088:	1dc50513          	addi	a0,a0,476 # 80009260 <CONSOLE_STATUS+0x250>
    8000208c:	00004097          	auipc	ra,0x4
    80002090:	528080e7          	jalr	1320(ra) # 800065b4 <_Z11printStringPKc>
    80002094:	0084b503          	ld	a0,8(s1)
    80002098:	00004097          	auipc	ra,0x4
    8000209c:	58c080e7          	jalr	1420(ra) # 80006624 <_Z12printIntegerm>
    800020a0:	00007517          	auipc	a0,0x7
    800020a4:	07050513          	addi	a0,a0,112 # 80009110 <CONSOLE_STATUS+0x100>
    800020a8:	00004097          	auipc	ra,0x4
    800020ac:	50c080e7          	jalr	1292(ra) # 800065b4 <_Z11printStringPKc>
    printString("Free Block No: "); printInteger(getFreeBlockNo()); printString("\n");
    800020b0:	00007517          	auipc	a0,0x7
    800020b4:	1c050513          	addi	a0,a0,448 # 80009270 <CONSOLE_STATUS+0x260>
    800020b8:	00004097          	auipc	ra,0x4
    800020bc:	4fc080e7          	jalr	1276(ra) # 800065b4 <_Z11printStringPKc>
    800020c0:	0104b503          	ld	a0,16(s1)
    800020c4:	00004097          	auipc	ra,0x4
    800020c8:	560080e7          	jalr	1376(ra) # 80006624 <_Z12printIntegerm>
    800020cc:	00007517          	auipc	a0,0x7
    800020d0:	04450513          	addi	a0,a0,68 # 80009110 <CONSOLE_STATUS+0x100>
    800020d4:	00004097          	auipc	ra,0x4
    800020d8:	4e0080e7          	jalr	1248(ra) # 800065b4 <_Z11printStringPKc>
    printString("\n##################################\n");
    800020dc:	00007517          	auipc	a0,0x7
    800020e0:	1a450513          	addi	a0,a0,420 # 80009280 <CONSOLE_STATUS+0x270>
    800020e4:	00004097          	auipc	ra,0x4
    800020e8:	4d0080e7          	jalr	1232(ra) # 800065b4 <_Z11printStringPKc>
}
    800020ec:	01813083          	ld	ra,24(sp)
    800020f0:	01013403          	ld	s0,16(sp)
    800020f4:	00813483          	ld	s1,8(sp)
    800020f8:	00013903          	ld	s2,0(sp)
    800020fc:	02010113          	addi	sp,sp,32
    80002100:	00008067          	ret

0000000080002104 <_ZN15MemoryAllocator22printMemorySpaceParamsEv>:

void MemoryAllocator::printMemorySpaceParams() {
    80002104:	fe010113          	addi	sp,sp,-32
    80002108:	00113c23          	sd	ra,24(sp)
    8000210c:	00813823          	sd	s0,16(sp)
    80002110:	00913423          	sd	s1,8(sp)
    80002114:	01213023          	sd	s2,0(sp)
    80002118:	02010413          	addi	s0,sp,32
    printString("----------------------------------\n\n");
    8000211c:	00007517          	auipc	a0,0x7
    80002120:	18c50513          	addi	a0,a0,396 # 800092a8 <CONSOLE_STATUS+0x298>
    80002124:	00004097          	auipc	ra,0x4
    80002128:	490080e7          	jalr	1168(ra) # 800065b4 <_Z11printStringPKc>
    printString("Size of MemoryAllocator class: ");
    8000212c:	00007517          	auipc	a0,0x7
    80002130:	1a450513          	addi	a0,a0,420 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80002134:	00004097          	auipc	ra,0x4
    80002138:	480080e7          	jalr	1152(ra) # 800065b4 <_Z11printStringPKc>
    printInteger(sizeof(MemoryAllocator)); printString("\n");
    8000213c:	02000513          	li	a0,32
    80002140:	00004097          	auipc	ra,0x4
    80002144:	4e4080e7          	jalr	1252(ra) # 80006624 <_Z12printIntegerm>
    80002148:	00007517          	auipc	a0,0x7
    8000214c:	fc850513          	addi	a0,a0,-56 # 80009110 <CONSOLE_STATUS+0x100>
    80002150:	00004097          	auipc	ra,0x4
    80002154:	464080e7          	jalr	1124(ra) # 800065b4 <_Z11printStringPKc>

    printString("HEAP_START_ADDR: "); printInteger((uint64)HEAP_START_ADDR); printString("\n");
    80002158:	00007517          	auipc	a0,0x7
    8000215c:	1b850513          	addi	a0,a0,440 # 80009310 <CONSOLE_STATUS+0x300>
    80002160:	00004097          	auipc	ra,0x4
    80002164:	454080e7          	jalr	1108(ra) # 800065b4 <_Z11printStringPKc>
    80002168:	00008497          	auipc	s1,0x8
    8000216c:	4484b483          	ld	s1,1096(s1) # 8000a5b0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002170:	0004b503          	ld	a0,0(s1)
    80002174:	00004097          	auipc	ra,0x4
    80002178:	4b0080e7          	jalr	1200(ra) # 80006624 <_Z12printIntegerm>
    8000217c:	00007517          	auipc	a0,0x7
    80002180:	f9450513          	addi	a0,a0,-108 # 80009110 <CONSOLE_STATUS+0x100>
    80002184:	00004097          	auipc	ra,0x4
    80002188:	430080e7          	jalr	1072(ra) # 800065b4 <_Z11printStringPKc>
    printString("HEAP_END_ADDR: "); printInteger((uint64)HEAP_END_ADDR); printString("\n");
    8000218c:	00007517          	auipc	a0,0x7
    80002190:	16450513          	addi	a0,a0,356 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80002194:	00004097          	auipc	ra,0x4
    80002198:	420080e7          	jalr	1056(ra) # 800065b4 <_Z11printStringPKc>
    8000219c:	00008917          	auipc	s2,0x8
    800021a0:	45c93903          	ld	s2,1116(s2) # 8000a5f8 <_GLOBAL_OFFSET_TABLE_+0x50>
    800021a4:	00093503          	ld	a0,0(s2)
    800021a8:	00004097          	auipc	ra,0x4
    800021ac:	47c080e7          	jalr	1148(ra) # 80006624 <_Z12printIntegerm>
    800021b0:	00007517          	auipc	a0,0x7
    800021b4:	f6050513          	addi	a0,a0,-160 # 80009110 <CONSOLE_STATUS+0x100>
    800021b8:	00004097          	auipc	ra,0x4
    800021bc:	3fc080e7          	jalr	1020(ra) # 800065b4 <_Z11printStringPKc>

    printString("HEAP_END_ADDR - HEAP_START_ADDR: ");
    800021c0:	00007517          	auipc	a0,0x7
    800021c4:	14050513          	addi	a0,a0,320 # 80009300 <CONSOLE_STATUS+0x2f0>
    800021c8:	00004097          	auipc	ra,0x4
    800021cc:	3ec080e7          	jalr	1004(ra) # 800065b4 <_Z11printStringPKc>
    printInteger((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)); printString("\n");
    800021d0:	00093503          	ld	a0,0(s2)
    800021d4:	0004b783          	ld	a5,0(s1)
    800021d8:	40f50533          	sub	a0,a0,a5
    800021dc:	00004097          	auipc	ra,0x4
    800021e0:	448080e7          	jalr	1096(ra) # 80006624 <_Z12printIntegerm>
    800021e4:	00007517          	auipc	a0,0x7
    800021e8:	f2c50513          	addi	a0,a0,-212 # 80009110 <CONSOLE_STATUS+0x100>
    800021ec:	00004097          	auipc	ra,0x4
    800021f0:	3c8080e7          	jalr	968(ra) # 800065b4 <_Z11printStringPKc>

    printString("MEM_BLOCK_SIZE: "); printInteger(MEM_BLOCK_SIZE); printString("\n");
    800021f4:	00007517          	auipc	a0,0x7
    800021f8:	13450513          	addi	a0,a0,308 # 80009328 <CONSOLE_STATUS+0x318>
    800021fc:	00004097          	auipc	ra,0x4
    80002200:	3b8080e7          	jalr	952(ra) # 800065b4 <_Z11printStringPKc>
    80002204:	04000513          	li	a0,64
    80002208:	00004097          	auipc	ra,0x4
    8000220c:	41c080e7          	jalr	1052(ra) # 80006624 <_Z12printIntegerm>
    80002210:	00007517          	auipc	a0,0x7
    80002214:	f0050513          	addi	a0,a0,-256 # 80009110 <CONSOLE_STATUS+0x100>
    80002218:	00004097          	auipc	ra,0x4
    8000221c:	39c080e7          	jalr	924(ra) # 800065b4 <_Z11printStringPKc>

    printString("Number of blocks in (HEAP_END_ADDR - HEAP_START_ADDR): ");
    80002220:	00007517          	auipc	a0,0x7
    80002224:	12050513          	addi	a0,a0,288 # 80009340 <CONSOLE_STATUS+0x330>
    80002228:	00004097          	auipc	ra,0x4
    8000222c:	38c080e7          	jalr	908(ra) # 800065b4 <_Z11printStringPKc>
    printInteger(((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)) / MEM_BLOCK_SIZE);
    80002230:	00093503          	ld	a0,0(s2)
    80002234:	0004b783          	ld	a5,0(s1)
    80002238:	40f50533          	sub	a0,a0,a5
    8000223c:	00655513          	srli	a0,a0,0x6
    80002240:	00004097          	auipc	ra,0x4
    80002244:	3e4080e7          	jalr	996(ra) # 80006624 <_Z12printIntegerm>
    printString("\n");
    80002248:	00007517          	auipc	a0,0x7
    8000224c:	ec850513          	addi	a0,a0,-312 # 80009110 <CONSOLE_STATUS+0x100>
    80002250:	00004097          	auipc	ra,0x4
    80002254:	364080e7          	jalr	868(ra) # 800065b4 <_Z11printStringPKc>
    printString("\n----------------------------------\n");
    80002258:	00007517          	auipc	a0,0x7
    8000225c:	12050513          	addi	a0,a0,288 # 80009378 <CONSOLE_STATUS+0x368>
    80002260:	00004097          	auipc	ra,0x4
    80002264:	354080e7          	jalr	852(ra) # 800065b4 <_Z11printStringPKc>
}
    80002268:	01813083          	ld	ra,24(sp)
    8000226c:	01013403          	ld	s0,16(sp)
    80002270:	00813483          	ld	s1,8(sp)
    80002274:	00013903          	ld	s2,0(sp)
    80002278:	02010113          	addi	sp,sp,32
    8000227c:	00008067          	ret

0000000080002280 <_ZN15MemoryAllocator23printFreeMemoryHeadDataEv>:

void MemoryAllocator::printFreeMemoryHeadData() {
    80002280:	fe010113          	addi	sp,sp,-32
    80002284:	00113c23          	sd	ra,24(sp)
    80002288:	00813823          	sd	s0,16(sp)
    8000228c:	00913423          	sd	s1,8(sp)
    80002290:	02010413          	addi	s0,sp,32
    80002294:	00050493          	mv	s1,a0
    printString("##################################\n\n");
    80002298:	00007517          	auipc	a0,0x7
    8000229c:	ec850513          	addi	a0,a0,-312 # 80009160 <CONSOLE_STATUS+0x150>
    800022a0:	00004097          	auipc	ra,0x4
    800022a4:	314080e7          	jalr	788(ra) # 800065b4 <_Z11printStringPKc>
    printString("freeMemoryHead: ");
    800022a8:	00007517          	auipc	a0,0x7
    800022ac:	0f850513          	addi	a0,a0,248 # 800093a0 <CONSOLE_STATUS+0x390>
    800022b0:	00004097          	auipc	ra,0x4
    800022b4:	304080e7          	jalr	772(ra) # 800065b4 <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead); printString("\n");
    800022b8:	0184b503          	ld	a0,24(s1)
    800022bc:	00004097          	auipc	ra,0x4
    800022c0:	368080e7          	jalr	872(ra) # 80006624 <_Z12printIntegerm>
    800022c4:	00007517          	auipc	a0,0x7
    800022c8:	e4c50513          	addi	a0,a0,-436 # 80009110 <CONSOLE_STATUS+0x100>
    800022cc:	00004097          	auipc	ra,0x4
    800022d0:	2e8080e7          	jalr	744(ra) # 800065b4 <_Z11printStringPKc>
    printString("freeMemoryHead->noBlocks: ");
    800022d4:	00007517          	auipc	a0,0x7
    800022d8:	0e450513          	addi	a0,a0,228 # 800093b8 <CONSOLE_STATUS+0x3a8>
    800022dc:	00004097          	auipc	ra,0x4
    800022e0:	2d8080e7          	jalr	728(ra) # 800065b4 <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead->noBlocks); printString("\n");
    800022e4:	0184b783          	ld	a5,24(s1)
    800022e8:	0007b503          	ld	a0,0(a5)
    800022ec:	00004097          	auipc	ra,0x4
    800022f0:	338080e7          	jalr	824(ra) # 80006624 <_Z12printIntegerm>
    800022f4:	00007517          	auipc	a0,0x7
    800022f8:	e1c50513          	addi	a0,a0,-484 # 80009110 <CONSOLE_STATUS+0x100>
    800022fc:	00004097          	auipc	ra,0x4
    80002300:	2b8080e7          	jalr	696(ra) # 800065b4 <_Z11printStringPKc>
    printString("freeMemoryHead->next: ");
    80002304:	00007517          	auipc	a0,0x7
    80002308:	0d450513          	addi	a0,a0,212 # 800093d8 <CONSOLE_STATUS+0x3c8>
    8000230c:	00004097          	auipc	ra,0x4
    80002310:	2a8080e7          	jalr	680(ra) # 800065b4 <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead->next); printString("\n");
    80002314:	0184b783          	ld	a5,24(s1)
    80002318:	0087b503          	ld	a0,8(a5)
    8000231c:	00004097          	auipc	ra,0x4
    80002320:	308080e7          	jalr	776(ra) # 80006624 <_Z12printIntegerm>
    80002324:	00007517          	auipc	a0,0x7
    80002328:	dec50513          	addi	a0,a0,-532 # 80009110 <CONSOLE_STATUS+0x100>
    8000232c:	00004097          	auipc	ra,0x4
    80002330:	288080e7          	jalr	648(ra) # 800065b4 <_Z11printStringPKc>
    printString("Segment Descriptor size: ");
    80002334:	00007517          	auipc	a0,0x7
    80002338:	0bc50513          	addi	a0,a0,188 # 800093f0 <CONSOLE_STATUS+0x3e0>
    8000233c:	00004097          	auipc	ra,0x4
    80002340:	278080e7          	jalr	632(ra) # 800065b4 <_Z11printStringPKc>
    printInteger(sizeof(*freeMemoryHead)); printString("\n");
    80002344:	01000513          	li	a0,16
    80002348:	00004097          	auipc	ra,0x4
    8000234c:	2dc080e7          	jalr	732(ra) # 80006624 <_Z12printIntegerm>
    80002350:	00007517          	auipc	a0,0x7
    80002354:	dc050513          	addi	a0,a0,-576 # 80009110 <CONSOLE_STATUS+0x100>
    80002358:	00004097          	auipc	ra,0x4
    8000235c:	25c080e7          	jalr	604(ra) # 800065b4 <_Z11printStringPKc>
    printString("\n##################################\n");
    80002360:	00007517          	auipc	a0,0x7
    80002364:	f2050513          	addi	a0,a0,-224 # 80009280 <CONSOLE_STATUS+0x270>
    80002368:	00004097          	auipc	ra,0x4
    8000236c:	24c080e7          	jalr	588(ra) # 800065b4 <_Z11printStringPKc>
}
    80002370:	01813083          	ld	ra,24(sp)
    80002374:	01013403          	ld	s0,16(sp)
    80002378:	00813483          	ld	s1,8(sp)
    8000237c:	02010113          	addi	sp,sp,32
    80002380:	00008067          	ret

0000000080002384 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv>:
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    return beforeTestFreeBlockNo == afterTestFreeBlockNo - minNoBlocksForSize - addendForSegDesc;

}

size_t MemoryAllocatorTest::getFreeBlocksCnt() {
    80002384:	ff010113          	addi	sp,sp,-16
    80002388:	00113423          	sd	ra,8(sp)
    8000238c:	00813023          	sd	s0,0(sp)
    80002390:	01010413          	addi	s0,sp,16
    MemoryAllocator::SegmentDescriptor* freeMemHead = MemoryAllocator::instance()->freeMemoryHead;
    80002394:	00000097          	auipc	ra,0x0
    80002398:	930080e7          	jalr	-1744(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    8000239c:	01853783          	ld	a5,24(a0)
    size_t blockCnt = 0;
    800023a0:	00000513          	li	a0,0
    while (freeMemHead) {
    800023a4:	00078a63          	beqz	a5,800023b8 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv+0x34>
        blockCnt += freeMemHead->noBlocks;
    800023a8:	0007b703          	ld	a4,0(a5)
    800023ac:	00e50533          	add	a0,a0,a4
        freeMemHead = freeMemHead->next;
    800023b0:	0087b783          	ld	a5,8(a5)
    while (freeMemHead) {
    800023b4:	ff1ff06f          	j	800023a4 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv+0x20>
    }
    return blockCnt;
}
    800023b8:	00813083          	ld	ra,8(sp)
    800023bc:	00013403          	ld	s0,0(sp)
    800023c0:	01010113          	addi	sp,sp,16
    800023c4:	00008067          	ret

00000000800023c8 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>:

bool MemoryAllocatorTest::testMemoryMetadataValidity() {
    800023c8:	fd010113          	addi	sp,sp,-48
    800023cc:	02113423          	sd	ra,40(sp)
    800023d0:	02813023          	sd	s0,32(sp)
    800023d4:	00913c23          	sd	s1,24(sp)
    800023d8:	01213823          	sd	s2,16(sp)
    800023dc:	01313423          	sd	s3,8(sp)
    800023e0:	01413023          	sd	s4,0(sp)
    800023e4:	03010413          	addi	s0,sp,48
    800023e8:	00050913          	mv	s2,a0
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    800023ec:	00000097          	auipc	ra,0x0
    800023f0:	8d8080e7          	jalr	-1832(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>

    void* kmem_alloc(size_t size);
    int kmem_free(void* newFree);
    void printInstanceMemorySpaceParams();
    void printFreeMemoryHeadData();
    size_t getTotalFree() { return totalFree; }
    800023f4:	00053483          	ld	s1,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    800023f8:	00000097          	auipc	ra,0x0
    800023fc:	8cc080e7          	jalr	-1844(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    80002400:	00853a03          	ld	s4,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    80002404:	00000097          	auipc	ra,0x0
    80002408:	8c0080e7          	jalr	-1856(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    8000240c:	01053983          	ld	s3,16(a0)
    size_t freeBlocksCnt = getFreeBlocksCnt();
    80002410:	00090513          	mv	a0,s2
    80002414:	00000097          	auipc	ra,0x0
    80002418:	f70080e7          	jalr	-144(ra) # 80002384 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv>

    if (freeBlocksCnt != beforeTestFreeBlockNo) return false;
    8000241c:	02a99c63          	bne	s3,a0,80002454 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x8c>
    if (freeBlocksCnt != beforeTestTotalFree / MEM_BLOCK_SIZE) return false;
    80002420:	0064d793          	srli	a5,s1,0x6
    80002424:	04a79a63          	bne	a5,a0,80002478 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0xb0>

    size_t totalMemory = (size_t) (MemoryAllocator::managedMemorySpaceEnd - MemoryAllocator::managedMemorySpaceStart);
    80002428:	00008797          	auipc	a5,0x8
    8000242c:	1907b783          	ld	a5,400(a5) # 8000a5b8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002430:	0007b503          	ld	a0,0(a5)
    80002434:	00008797          	auipc	a5,0x8
    80002438:	1dc7b783          	ld	a5,476(a5) # 8000a610 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000243c:	0007b783          	ld	a5,0(a5)
    80002440:	40f507b3          	sub	a5,a0,a5
    return totalMemory == beforeTestTotalFree + beforeTestTotalTaken;
    80002444:	01448533          	add	a0,s1,s4
    80002448:	40f50533          	sub	a0,a0,a5
    8000244c:	00153513          	seqz	a0,a0
    80002450:	0080006f          	j	80002458 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x90>
    if (freeBlocksCnt != beforeTestFreeBlockNo) return false;
    80002454:	00000513          	li	a0,0
}
    80002458:	02813083          	ld	ra,40(sp)
    8000245c:	02013403          	ld	s0,32(sp)
    80002460:	01813483          	ld	s1,24(sp)
    80002464:	01013903          	ld	s2,16(sp)
    80002468:	00813983          	ld	s3,8(sp)
    8000246c:	00013a03          	ld	s4,0(sp)
    80002470:	03010113          	addi	sp,sp,48
    80002474:	00008067          	ret
    if (freeBlocksCnt != beforeTestTotalFree / MEM_BLOCK_SIZE) return false;
    80002478:	00000513          	li	a0,0
    8000247c:	fddff06f          	j	80002458 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x90>

0000000080002480 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>:
bool MemoryAllocatorTest::testMemoryAllocate(uint64 size, void** allocatedMemoryPointer) {
    80002480:	fa010113          	addi	sp,sp,-96
    80002484:	04113c23          	sd	ra,88(sp)
    80002488:	04813823          	sd	s0,80(sp)
    8000248c:	04913423          	sd	s1,72(sp)
    80002490:	05213023          	sd	s2,64(sp)
    80002494:	03313c23          	sd	s3,56(sp)
    80002498:	03413823          	sd	s4,48(sp)
    8000249c:	03513423          	sd	s5,40(sp)
    800024a0:	03613023          	sd	s6,32(sp)
    800024a4:	01713c23          	sd	s7,24(sp)
    800024a8:	01813823          	sd	s8,16(sp)
    800024ac:	01913423          	sd	s9,8(sp)
    800024b0:	01a13023          	sd	s10,0(sp)
    800024b4:	06010413          	addi	s0,sp,96
    800024b8:	00050a13          	mv	s4,a0
    800024bc:	00058913          	mv	s2,a1
    800024c0:	00060993          	mv	s3,a2
    if (!testMemoryMetadataValidity()) return false;
    800024c4:	00000097          	auipc	ra,0x0
    800024c8:	f04080e7          	jalr	-252(ra) # 800023c8 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800024cc:	00050493          	mv	s1,a0
    800024d0:	04051063          	bnez	a0,80002510 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x90>
}
    800024d4:	00048513          	mv	a0,s1
    800024d8:	05813083          	ld	ra,88(sp)
    800024dc:	05013403          	ld	s0,80(sp)
    800024e0:	04813483          	ld	s1,72(sp)
    800024e4:	04013903          	ld	s2,64(sp)
    800024e8:	03813983          	ld	s3,56(sp)
    800024ec:	03013a03          	ld	s4,48(sp)
    800024f0:	02813a83          	ld	s5,40(sp)
    800024f4:	02013b03          	ld	s6,32(sp)
    800024f8:	01813b83          	ld	s7,24(sp)
    800024fc:	01013c03          	ld	s8,16(sp)
    80002500:	00813c83          	ld	s9,8(sp)
    80002504:	00013d03          	ld	s10,0(sp)
    80002508:	06010113          	addi	sp,sp,96
    8000250c:	00008067          	ret
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002510:	fffff097          	auipc	ra,0xfffff
    80002514:	7b4080e7          	jalr	1972(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    80002518:	00053b03          	ld	s6,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    8000251c:	fffff097          	auipc	ra,0xfffff
    80002520:	7a8080e7          	jalr	1960(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    80002524:	00853b83          	ld	s7,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    80002528:	fffff097          	auipc	ra,0xfffff
    8000252c:	79c080e7          	jalr	1948(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002530:	01053c03          	ld	s8,16(a0)
    *allocatedMemoryPointer = MemoryAllocator::instance()->kmem_alloc(size);
    80002534:	fffff097          	auipc	ra,0xfffff
    80002538:	790080e7          	jalr	1936(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    8000253c:	00090593          	mv	a1,s2
    80002540:	00000097          	auipc	ra,0x0
    80002544:	868080e7          	jalr	-1944(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80002548:	00050a93          	mv	s5,a0
    8000254c:	00a9b023          	sd	a0,0(s3)
    if (*allocatedMemoryPointer == nullptr && size == (uint64) -37) return true;
    80002550:	08050663          	beqz	a0,800025dc <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x15c>
    size_t minNoBlocksForSize = MemoryAllocator::getMinBlockNumber(size);
    80002554:	00090513          	mv	a0,s2
    80002558:	fffff097          	auipc	ra,0xfffff
    8000255c:	674080e7          	jalr	1652(ra) # 80001bcc <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80002560:	00050993          	mv	s3,a0
    size_t addendForSegDesc = minNoBlocksForSize * MEM_BLOCK_SIZE - size < sizeof(MemoryAllocator::SegmentDescriptor);
    80002564:	00651593          	slli	a1,a0,0x6
    80002568:	41258933          	sub	s2,a1,s2
    8000256c:	01093913          	sltiu	s2,s2,16
    size_t allocatedMemory = (minNoBlocksForSize + addendForSegDesc) * MEM_BLOCK_SIZE;
    80002570:	01250cb3          	add	s9,a0,s2
    80002574:	006c9d13          	slli	s10,s9,0x6
    if (!testMemoryMetadataValidity()) return false;
    80002578:	000a0513          	mv	a0,s4
    8000257c:	00000097          	auipc	ra,0x0
    80002580:	e4c080e7          	jalr	-436(ra) # 800023c8 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002584:	00050493          	mv	s1,a0
    80002588:	f40506e3          	beqz	a0,800024d4 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    size_t afterTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    8000258c:	fffff097          	auipc	ra,0xfffff
    80002590:	738080e7          	jalr	1848(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    80002594:	00053483          	ld	s1,0(a0)
    size_t afterTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002598:	fffff097          	auipc	ra,0xfffff
    8000259c:	72c080e7          	jalr	1836(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800025a0:	00853a03          	ld	s4,8(a0)
    size_t afterTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    800025a4:	fffff097          	auipc	ra,0xfffff
    800025a8:	720080e7          	jalr	1824(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    800025ac:	01053783          	ld	a5,16(a0)
    if (beforeTestTotalFree != afterTestTotalFree + allocatedMemory) return false;
    800025b0:	01a484b3          	add	s1,s1,s10
    800025b4:	03649a63          	bne	s1,s6,800025e8 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x168>
    if (beforeTestTotalTaken != afterTestTotalTaken - allocatedMemory) return false;
    800025b8:	41aa0d33          	sub	s10,s4,s10
    800025bc:	037d1a63          	bne	s10,s7,800025f0 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x170>
    if (beforeTestFreeBlockNo != afterTestFreeBlockNo + minNoBlocksForSize + addendForSegDesc) return false;
    800025c0:	013789b3          	add	s3,a5,s3
    800025c4:	01298933          	add	s2,s3,s2
    800025c8:	03891863          	bne	s2,s8,800025f8 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x178>
    return segDesc->noBlocks == minNoBlocksForSize + addendForSegDesc;
    800025cc:	ff0ab483          	ld	s1,-16(s5)
    800025d0:	409c84b3          	sub	s1,s9,s1
    800025d4:	0014b493          	seqz	s1,s1
    800025d8:	efdff06f          	j	800024d4 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (*allocatedMemoryPointer == nullptr && size == (uint64) -37) return true;
    800025dc:	fdb00793          	li	a5,-37
    800025e0:	f6f91ae3          	bne	s2,a5,80002554 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0xd4>
    800025e4:	ef1ff06f          	j	800024d4 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestTotalFree != afterTestTotalFree + allocatedMemory) return false;
    800025e8:	00000493          	li	s1,0
    800025ec:	ee9ff06f          	j	800024d4 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestTotalTaken != afterTestTotalTaken - allocatedMemory) return false;
    800025f0:	00000493          	li	s1,0
    800025f4:	ee1ff06f          	j	800024d4 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestFreeBlockNo != afterTestFreeBlockNo + minNoBlocksForSize + addendForSegDesc) return false;
    800025f8:	00000493          	li	s1,0
    800025fc:	ed9ff06f          	j	800024d4 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>

0000000080002600 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>:
bool MemoryAllocatorTest::testMemoryFree(uint64 size, void* allocatedMemoryPointer) {
    80002600:	fb010113          	addi	sp,sp,-80
    80002604:	04113423          	sd	ra,72(sp)
    80002608:	04813023          	sd	s0,64(sp)
    8000260c:	02913c23          	sd	s1,56(sp)
    80002610:	03213823          	sd	s2,48(sp)
    80002614:	03313423          	sd	s3,40(sp)
    80002618:	03413023          	sd	s4,32(sp)
    8000261c:	01513c23          	sd	s5,24(sp)
    80002620:	01613823          	sd	s6,16(sp)
    80002624:	01713423          	sd	s7,8(sp)
    80002628:	01813023          	sd	s8,0(sp)
    8000262c:	05010413          	addi	s0,sp,80
    80002630:	00050a13          	mv	s4,a0
    80002634:	00058913          	mv	s2,a1
    80002638:	00060493          	mv	s1,a2
    if (!testMemoryMetadataValidity()) return false;
    8000263c:	00000097          	auipc	ra,0x0
    80002640:	d8c080e7          	jalr	-628(ra) # 800023c8 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002644:	02051a63          	bnez	a0,80002678 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x78>
}
    80002648:	04813083          	ld	ra,72(sp)
    8000264c:	04013403          	ld	s0,64(sp)
    80002650:	03813483          	ld	s1,56(sp)
    80002654:	03013903          	ld	s2,48(sp)
    80002658:	02813983          	ld	s3,40(sp)
    8000265c:	02013a03          	ld	s4,32(sp)
    80002660:	01813a83          	ld	s5,24(sp)
    80002664:	01013b03          	ld	s6,16(sp)
    80002668:	00813b83          	ld	s7,8(sp)
    8000266c:	00013c03          	ld	s8,0(sp)
    80002670:	05010113          	addi	sp,sp,80
    80002674:	00008067          	ret
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002678:	fffff097          	auipc	ra,0xfffff
    8000267c:	64c080e7          	jalr	1612(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    80002680:	00053b03          	ld	s6,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002684:	fffff097          	auipc	ra,0xfffff
    80002688:	640080e7          	jalr	1600(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    8000268c:	00853b83          	ld	s7,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    80002690:	fffff097          	auipc	ra,0xfffff
    80002694:	634080e7          	jalr	1588(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002698:	01053a83          	ld	s5,16(a0)
    size_t minNoBlocksForSize = MemoryAllocator::getMinBlockNumber(size);
    8000269c:	00090513          	mv	a0,s2
    800026a0:	fffff097          	auipc	ra,0xfffff
    800026a4:	52c080e7          	jalr	1324(ra) # 80001bcc <_ZN15MemoryAllocator17getMinBlockNumberEm>
    800026a8:	00050993          	mv	s3,a0
    size_t addendForSegDesc = minNoBlocksForSize * MEM_BLOCK_SIZE - size < sizeof(MemoryAllocator::SegmentDescriptor);
    800026ac:	00651593          	slli	a1,a0,0x6
    800026b0:	41258933          	sub	s2,a1,s2
    800026b4:	01093913          	sltiu	s2,s2,16
    size_t allocatedMemory = (minNoBlocksForSize + addendForSegDesc) * MEM_BLOCK_SIZE;
    800026b8:	01250733          	add	a4,a0,s2
    800026bc:	00671c13          	slli	s8,a4,0x6
    if (!allocatedMemoryPointer) {
    800026c0:	08048463          	beqz	s1,80002748 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x148>
    if (allocatedMemoryPointer) segDesc = (MemoryAllocator::SegmentDescriptor*)
    800026c4:	08048a63          	beqz	s1,80002758 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x158>
    800026c8:	ff048793          	addi	a5,s1,-16
    if (allocatedMemoryPointer)
    800026cc:	00048863          	beqz	s1,800026dc <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xdc>
    if (segDesc->noBlocks != minNoBlocksForSize + addendForSegDesc) return false;
    800026d0:	0007b703          	ld	a4,0(a5)
    800026d4:	012987b3          	add	a5,s3,s2
    800026d8:	08f71463          	bne	a4,a5,80002760 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x160>
    MemoryAllocator::instance()->kmem_free(allocatedMemoryPointer);
    800026dc:	fffff097          	auipc	ra,0xfffff
    800026e0:	5e8080e7          	jalr	1512(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800026e4:	00048593          	mv	a1,s1
    800026e8:	fffff097          	auipc	ra,0xfffff
    800026ec:	768080e7          	jalr	1896(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    800026f0:	000a0513          	mv	a0,s4
    800026f4:	00000097          	auipc	ra,0x0
    800026f8:	cd4080e7          	jalr	-812(ra) # 800023c8 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800026fc:	f40506e3          	beqz	a0,80002648 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    size_t afterTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002700:	fffff097          	auipc	ra,0xfffff
    80002704:	5c4080e7          	jalr	1476(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    80002708:	00053483          	ld	s1,0(a0)
    size_t afterTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    8000270c:	fffff097          	auipc	ra,0xfffff
    80002710:	5b8080e7          	jalr	1464(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    80002714:	00853a03          	ld	s4,8(a0)
    size_t afterTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    80002718:	fffff097          	auipc	ra,0xfffff
    8000271c:	5ac080e7          	jalr	1452(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002720:	01053783          	ld	a5,16(a0)
    if (beforeTestTotalFree != afterTestTotalFree - allocatedMemory) return false;
    80002724:	418484b3          	sub	s1,s1,s8
    80002728:	05649063          	bne	s1,s6,80002768 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x168>
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    8000272c:	014c0733          	add	a4,s8,s4
    80002730:	05771063          	bne	a4,s7,80002770 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x170>
    return beforeTestFreeBlockNo == afterTestFreeBlockNo - minNoBlocksForSize - addendForSegDesc;
    80002734:	41378533          	sub	a0,a5,s3
    80002738:	41250533          	sub	a0,a0,s2
    8000273c:	41550533          	sub	a0,a0,s5
    80002740:	00153513          	seqz	a0,a0
    80002744:	f05ff06f          	j	80002648 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
        minNoBlocksForSize = 0; addendForSegDesc = 0; allocatedMemory = 0;
    80002748:	00000c13          	li	s8,0
    8000274c:	00000913          	li	s2,0
    80002750:	00000993          	li	s3,0
    80002754:	f71ff06f          	j	800026c4 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xc4>
    MemoryAllocator::SegmentDescriptor* segDesc = nullptr;
    80002758:	00048793          	mv	a5,s1
    8000275c:	f71ff06f          	j	800026cc <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xcc>
    if (segDesc->noBlocks != minNoBlocksForSize + addendForSegDesc) return false;
    80002760:	00000513          	li	a0,0
    80002764:	ee5ff06f          	j	80002648 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    if (beforeTestTotalFree != afterTestTotalFree - allocatedMemory) return false;
    80002768:	00000513          	li	a0,0
    8000276c:	eddff06f          	j	80002648 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    80002770:	00000513          	li	a0,0
    80002774:	ed5ff06f          	j	80002648 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>

0000000080002778 <_ZN19MemoryAllocatorTest13firstFitTest1Ev>:
    if (!firstFitTest2()) return false;
    if (!firstFitTest3()) return false;
    return true;
}

bool MemoryAllocatorTest::firstFitTest1() {
    80002778:	fc010113          	addi	sp,sp,-64
    8000277c:	02113c23          	sd	ra,56(sp)
    80002780:	02813823          	sd	s0,48(sp)
    80002784:	02913423          	sd	s1,40(sp)
    80002788:	03213023          	sd	s2,32(sp)
    8000278c:	01313c23          	sd	s3,24(sp)
    80002790:	01413823          	sd	s4,16(sp)
    80002794:	01513423          	sd	s5,8(sp)
    80002798:	04010413          	addi	s0,sp,64
    8000279c:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    800027a0:	00000097          	auipc	ra,0x0
    800027a4:	c28080e7          	jalr	-984(ra) # 800023c8 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800027a8:	02051463          	bnez	a0,800027d0 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x58>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    800027ac:	03813083          	ld	ra,56(sp)
    800027b0:	03013403          	ld	s0,48(sp)
    800027b4:	02813483          	ld	s1,40(sp)
    800027b8:	02013903          	ld	s2,32(sp)
    800027bc:	01813983          	ld	s3,24(sp)
    800027c0:	01013a03          	ld	s4,16(sp)
    800027c4:	00813a83          	ld	s5,8(sp)
    800027c8:	04010113          	addi	sp,sp,64
    800027cc:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    800027d0:	fffff097          	auipc	ra,0xfffff
    800027d4:	4f4080e7          	jalr	1268(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800027d8:	02f00593          	li	a1,47
    800027dc:	fffff097          	auipc	ra,0xfffff
    800027e0:	5cc080e7          	jalr	1484(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    800027e4:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    800027e8:	00008797          	auipc	a5,0x8
    800027ec:	e287b783          	ld	a5,-472(a5) # 8000a610 <_GLOBAL_OFFSET_TABLE_+0x68>
    800027f0:	0007b783          	ld	a5,0(a5)
    800027f4:	01078793          	addi	a5,a5,16
    800027f8:	00a78663          	beq	a5,a0,80002804 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x8c>
        return false;
    800027fc:	00000513          	li	a0,0
    80002800:	fadff06f          	j	800027ac <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    80002804:	fffff097          	auipc	ra,0xfffff
    80002808:	4c0080e7          	jalr	1216(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    8000280c:	03000593          	li	a1,48
    80002810:	fffff097          	auipc	ra,0xfffff
    80002814:	598080e7          	jalr	1432(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80002818:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    8000281c:	00008797          	auipc	a5,0x8
    80002820:	df47b783          	ld	a5,-524(a5) # 8000a610 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002824:	0007b783          	ld	a5,0(a5)
    80002828:	05078793          	addi	a5,a5,80
    8000282c:	00a78663          	beq	a5,a0,80002838 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0xc0>
        return false;
    80002830:	00000513          	li	a0,0
    80002834:	f79ff06f          	j	800027ac <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    80002838:	fffff097          	auipc	ra,0xfffff
    8000283c:	48c080e7          	jalr	1164(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002840:	03100593          	li	a1,49
    80002844:	fffff097          	auipc	ra,0xfffff
    80002848:	564080e7          	jalr	1380(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    8000284c:	00050a13          	mv	s4,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + 2 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002850:	00008797          	auipc	a5,0x8
    80002854:	dc07b783          	ld	a5,-576(a5) # 8000a610 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002858:	0007b783          	ld	a5,0(a5)
    8000285c:	09078793          	addi	a5,a5,144
    80002860:	00a78663          	beq	a5,a0,8000286c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0xf4>
        return false;
    80002864:	00000513          	li	a0,0
    80002868:	f45ff06f          	j	800027ac <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    8000286c:	fffff097          	auipc	ra,0xfffff
    80002870:	458080e7          	jalr	1112(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002874:	00098593          	mv	a1,s3
    80002878:	fffff097          	auipc	ra,0xfffff
    8000287c:	5d8080e7          	jalr	1496(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002880:	fffff097          	auipc	ra,0xfffff
    80002884:	444080e7          	jalr	1092(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002888:	01e00593          	li	a1,30
    8000288c:	fffff097          	auipc	ra,0xfffff
    80002890:	51c080e7          	jalr	1308(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80002894:	00050993          	mv	s3,a0
    if (pointers[3] != MemoryAllocator::managedMemorySpaceStart + 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002898:	00008797          	auipc	a5,0x8
    8000289c:	d787b783          	ld	a5,-648(a5) # 8000a610 <_GLOBAL_OFFSET_TABLE_+0x68>
    800028a0:	0007b783          	ld	a5,0(a5)
    800028a4:	05078793          	addi	a5,a5,80
    800028a8:	00a78663          	beq	a5,a0,800028b4 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x13c>
        return false;
    800028ac:	00000513          	li	a0,0
    800028b0:	efdff06f          	j	800027ac <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    800028b4:	fffff097          	auipc	ra,0xfffff
    800028b8:	410080e7          	jalr	1040(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800028bc:	12100593          	li	a1,289
    800028c0:	fffff097          	auipc	ra,0xfffff
    800028c4:	4e8080e7          	jalr	1256(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    800028c8:	00050a93          	mv	s5,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + 4 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    800028cc:	00008797          	auipc	a5,0x8
    800028d0:	d447b783          	ld	a5,-700(a5) # 8000a610 <_GLOBAL_OFFSET_TABLE_+0x68>
    800028d4:	0007b783          	ld	a5,0(a5)
    800028d8:	11078793          	addi	a5,a5,272
    800028dc:	00a78663          	beq	a5,a0,800028e8 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x170>
        return false;
    800028e0:	00000513          	li	a0,0
    800028e4:	ec9ff06f          	j	800027ac <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    if (!testMemoryMetadataValidity()) return false;
    800028e8:	00048513          	mv	a0,s1
    800028ec:	00000097          	auipc	ra,0x0
    800028f0:	adc080e7          	jalr	-1316(ra) # 800023c8 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800028f4:	ea050ce3          	beqz	a0,800027ac <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    800028f8:	fffff097          	auipc	ra,0xfffff
    800028fc:	3cc080e7          	jalr	972(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002900:	00090593          	mv	a1,s2
    80002904:	fffff097          	auipc	ra,0xfffff
    80002908:	54c080e7          	jalr	1356(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    8000290c:	fffff097          	auipc	ra,0xfffff
    80002910:	3b8080e7          	jalr	952(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002914:	000a0593          	mv	a1,s4
    80002918:	fffff097          	auipc	ra,0xfffff
    8000291c:	538080e7          	jalr	1336(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002920:	fffff097          	auipc	ra,0xfffff
    80002924:	3a4080e7          	jalr	932(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002928:	00098593          	mv	a1,s3
    8000292c:	fffff097          	auipc	ra,0xfffff
    80002930:	524080e7          	jalr	1316(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80002934:	fffff097          	auipc	ra,0xfffff
    80002938:	390080e7          	jalr	912(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    8000293c:	000a8593          	mv	a1,s5
    80002940:	fffff097          	auipc	ra,0xfffff
    80002944:	510080e7          	jalr	1296(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002948:	00048513          	mv	a0,s1
    8000294c:	00000097          	auipc	ra,0x0
    80002950:	a7c080e7          	jalr	-1412(ra) # 800023c8 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002954:	e59ff06f          	j	800027ac <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>

0000000080002958 <_ZN19MemoryAllocatorTest12printPointerEiPPv>:


void MemoryAllocatorTest::printPointer(int i, void** pointers) {
    80002958:	fe010113          	addi	sp,sp,-32
    8000295c:	00113c23          	sd	ra,24(sp)
    80002960:	00813823          	sd	s0,16(sp)
    80002964:	00913423          	sd	s1,8(sp)
    80002968:	01213023          	sd	s2,0(sp)
    8000296c:	02010413          	addi	s0,sp,32
    80002970:	00058913          	mv	s2,a1
    80002974:	00060493          	mv	s1,a2
    printString("\npointers[");
    80002978:	00007517          	auipc	a0,0x7
    8000297c:	a9850513          	addi	a0,a0,-1384 # 80009410 <CONSOLE_STATUS+0x400>
    80002980:	00004097          	auipc	ra,0x4
    80002984:	c34080e7          	jalr	-972(ra) # 800065b4 <_Z11printStringPKc>
    printInteger(i);
    80002988:	00090513          	mv	a0,s2
    8000298c:	00004097          	auipc	ra,0x4
    80002990:	c98080e7          	jalr	-872(ra) # 80006624 <_Z12printIntegerm>
    printString("]: ");
    80002994:	00007517          	auipc	a0,0x7
    80002998:	a8c50513          	addi	a0,a0,-1396 # 80009420 <CONSOLE_STATUS+0x410>
    8000299c:	00004097          	auipc	ra,0x4
    800029a0:	c18080e7          	jalr	-1000(ra) # 800065b4 <_Z11printStringPKc>
    printInteger((uint64)((uint8*) pointers[i] - MemoryAllocator::managedMemorySpaceStart));
    800029a4:	00391613          	slli	a2,s2,0x3
    800029a8:	00c484b3          	add	s1,s1,a2
    800029ac:	0004b503          	ld	a0,0(s1)
    800029b0:	00008797          	auipc	a5,0x8
    800029b4:	c607b783          	ld	a5,-928(a5) # 8000a610 <_GLOBAL_OFFSET_TABLE_+0x68>
    800029b8:	0007b783          	ld	a5,0(a5)
    800029bc:	40f50533          	sub	a0,a0,a5
    800029c0:	00004097          	auipc	ra,0x4
    800029c4:	c64080e7          	jalr	-924(ra) # 80006624 <_Z12printIntegerm>
    printString("\npointers[");
    800029c8:	00007517          	auipc	a0,0x7
    800029cc:	a4850513          	addi	a0,a0,-1464 # 80009410 <CONSOLE_STATUS+0x400>
    800029d0:	00004097          	auipc	ra,0x4
    800029d4:	be4080e7          	jalr	-1052(ra) # 800065b4 <_Z11printStringPKc>
    printInteger(i);
    800029d8:	00090513          	mv	a0,s2
    800029dc:	00004097          	auipc	ra,0x4
    800029e0:	c48080e7          	jalr	-952(ra) # 80006624 <_Z12printIntegerm>
    printString("]->blockNo: "); printInteger((uint64) (((MemoryAllocator::SegmentDescriptor*) pointers[i])->noBlocks));
    800029e4:	00007517          	auipc	a0,0x7
    800029e8:	a4450513          	addi	a0,a0,-1468 # 80009428 <CONSOLE_STATUS+0x418>
    800029ec:	00004097          	auipc	ra,0x4
    800029f0:	bc8080e7          	jalr	-1080(ra) # 800065b4 <_Z11printStringPKc>
    800029f4:	0004b783          	ld	a5,0(s1)
    800029f8:	0007b503          	ld	a0,0(a5)
    800029fc:	00004097          	auipc	ra,0x4
    80002a00:	c28080e7          	jalr	-984(ra) # 80006624 <_Z12printIntegerm>
    printString("\n");
    80002a04:	00006517          	auipc	a0,0x6
    80002a08:	70c50513          	addi	a0,a0,1804 # 80009110 <CONSOLE_STATUS+0x100>
    80002a0c:	00004097          	auipc	ra,0x4
    80002a10:	ba8080e7          	jalr	-1112(ra) # 800065b4 <_Z11printStringPKc>
}
    80002a14:	01813083          	ld	ra,24(sp)
    80002a18:	01013403          	ld	s0,16(sp)
    80002a1c:	00813483          	ld	s1,8(sp)
    80002a20:	00013903          	ld	s2,0(sp)
    80002a24:	02010113          	addi	sp,sp,32
    80002a28:	00008067          	ret

0000000080002a2c <_ZN19MemoryAllocatorTest13firstFitTest2Ev>:

bool MemoryAllocatorTest::firstFitTest2() {
    80002a2c:	fc010113          	addi	sp,sp,-64
    80002a30:	02113c23          	sd	ra,56(sp)
    80002a34:	02813823          	sd	s0,48(sp)
    80002a38:	02913423          	sd	s1,40(sp)
    80002a3c:	03213023          	sd	s2,32(sp)
    80002a40:	01313c23          	sd	s3,24(sp)
    80002a44:	01413823          	sd	s4,16(sp)
    80002a48:	01513423          	sd	s5,8(sp)
    80002a4c:	04010413          	addi	s0,sp,64
    80002a50:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    80002a54:	00000097          	auipc	ra,0x0
    80002a58:	974080e7          	jalr	-1676(ra) # 800023c8 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002a5c:	02051463          	bnez	a0,80002a84 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x58>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002a60:	03813083          	ld	ra,56(sp)
    80002a64:	03013403          	ld	s0,48(sp)
    80002a68:	02813483          	ld	s1,40(sp)
    80002a6c:	02013903          	ld	s2,32(sp)
    80002a70:	01813983          	ld	s3,24(sp)
    80002a74:	01013a03          	ld	s4,16(sp)
    80002a78:	00813a83          	ld	s5,8(sp)
    80002a7c:	04010113          	addi	sp,sp,64
    80002a80:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002a84:	fffff097          	auipc	ra,0xfffff
    80002a88:	240080e7          	jalr	576(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002a8c:	08200593          	li	a1,130
    80002a90:	fffff097          	auipc	ra,0xfffff
    80002a94:	318080e7          	jalr	792(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80002a98:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002a9c:	00008797          	auipc	a5,0x8
    80002aa0:	b747b783          	ld	a5,-1164(a5) # 8000a610 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002aa4:	0007b783          	ld	a5,0(a5)
    80002aa8:	01078793          	addi	a5,a5,16
    80002aac:	00a78663          	beq	a5,a0,80002ab8 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x8c>
        return false;
    80002ab0:	00000513          	li	a0,0
    80002ab4:	fadff06f          	j	80002a60 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    80002ab8:	fffff097          	auipc	ra,0xfffff
    80002abc:	20c080e7          	jalr	524(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002ac0:	01400593          	li	a1,20
    80002ac4:	fffff097          	auipc	ra,0xfffff
    80002ac8:	2e4080e7          	jalr	740(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80002acc:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 3 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002ad0:	00008797          	auipc	a5,0x8
    80002ad4:	b407b783          	ld	a5,-1216(a5) # 8000a610 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002ad8:	0007b783          	ld	a5,0(a5)
    80002adc:	0d078793          	addi	a5,a5,208
    80002ae0:	00a78663          	beq	a5,a0,80002aec <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0xc0>
        return false;
    80002ae4:	00000513          	li	a0,0
    80002ae8:	f79ff06f          	j	80002a60 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    80002aec:	fffff097          	auipc	ra,0xfffff
    80002af0:	1d8080e7          	jalr	472(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002af4:	00090593          	mv	a1,s2
    80002af8:	fffff097          	auipc	ra,0xfffff
    80002afc:	358080e7          	jalr	856(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    80002b00:	fffff097          	auipc	ra,0xfffff
    80002b04:	1c4080e7          	jalr	452(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002b08:	07800593          	li	a1,120
    80002b0c:	fffff097          	auipc	ra,0xfffff
    80002b10:	29c080e7          	jalr	668(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80002b14:	00050913          	mv	s2,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002b18:	00008797          	auipc	a5,0x8
    80002b1c:	af87b783          	ld	a5,-1288(a5) # 8000a610 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b20:	0007b783          	ld	a5,0(a5)
    80002b24:	01078793          	addi	a5,a5,16
    80002b28:	00a78663          	beq	a5,a0,80002b34 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x108>
        return false;
    80002b2c:	00000513          	li	a0,0
    80002b30:	f31ff06f          	j	80002a60 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002b34:	fffff097          	auipc	ra,0xfffff
    80002b38:	190080e7          	jalr	400(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002b3c:	01e00593          	li	a1,30
    80002b40:	fffff097          	auipc	ra,0xfffff
    80002b44:	268080e7          	jalr	616(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80002b48:	00050a13          	mv	s4,a0
    if (pointers[3] != MemoryAllocator::managedMemorySpaceStart + 4 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002b4c:	00008797          	auipc	a5,0x8
    80002b50:	ac47b783          	ld	a5,-1340(a5) # 8000a610 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b54:	0007b783          	ld	a5,0(a5)
    80002b58:	11078793          	addi	a5,a5,272
    80002b5c:	00a78663          	beq	a5,a0,80002b68 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x13c>
        return false;
    80002b60:	00000513          	li	a0,0
    80002b64:	efdff06f          	j	80002a60 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002b68:	fffff097          	auipc	ra,0xfffff
    80002b6c:	15c080e7          	jalr	348(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002b70:	00090593          	mv	a1,s2
    80002b74:	fffff097          	auipc	ra,0xfffff
    80002b78:	2dc080e7          	jalr	732(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002b7c:	fffff097          	auipc	ra,0xfffff
    80002b80:	148080e7          	jalr	328(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002b84:	02f00593          	li	a1,47
    80002b88:	fffff097          	auipc	ra,0xfffff
    80002b8c:	220080e7          	jalr	544(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80002b90:	00050913          	mv	s2,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002b94:	00008797          	auipc	a5,0x8
    80002b98:	a7c7b783          	ld	a5,-1412(a5) # 8000a610 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b9c:	0007b783          	ld	a5,0(a5)
    80002ba0:	01078793          	addi	a5,a5,16
    80002ba4:	00a78663          	beq	a5,a0,80002bb0 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x184>
        return false;
    80002ba8:	00000513          	li	a0,0
    80002bac:	eb5ff06f          	j	80002a60 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[5] = MemoryAllocator::instance()->kmem_alloc(sizes[5]);
    80002bb0:	fffff097          	auipc	ra,0xfffff
    80002bb4:	114080e7          	jalr	276(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002bb8:	01400593          	li	a1,20
    80002bbc:	fffff097          	auipc	ra,0xfffff
    80002bc0:	1ec080e7          	jalr	492(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80002bc4:	00050a93          	mv	s5,a0
    if (pointers[5] != MemoryAllocator::managedMemorySpaceStart + 1 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002bc8:	00008797          	auipc	a5,0x8
    80002bcc:	a487b783          	ld	a5,-1464(a5) # 8000a610 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002bd0:	0007b783          	ld	a5,0(a5)
    80002bd4:	05078793          	addi	a5,a5,80
    80002bd8:	00a78663          	beq	a5,a0,80002be4 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x1b8>
        return false;
    80002bdc:	00000513          	li	a0,0
    80002be0:	e81ff06f          	j	80002a60 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    if (!testMemoryMetadataValidity()) return false;
    80002be4:	00048513          	mv	a0,s1
    80002be8:	fffff097          	auipc	ra,0xfffff
    80002bec:	7e0080e7          	jalr	2016(ra) # 800023c8 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002bf0:	e60508e3          	beqz	a0,80002a60 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002bf4:	fffff097          	auipc	ra,0xfffff
    80002bf8:	0d0080e7          	jalr	208(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002bfc:	00098593          	mv	a1,s3
    80002c00:	fffff097          	auipc	ra,0xfffff
    80002c04:	250080e7          	jalr	592(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002c08:	fffff097          	auipc	ra,0xfffff
    80002c0c:	0bc080e7          	jalr	188(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002c10:	000a0593          	mv	a1,s4
    80002c14:	fffff097          	auipc	ra,0xfffff
    80002c18:	23c080e7          	jalr	572(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80002c1c:	fffff097          	auipc	ra,0xfffff
    80002c20:	0a8080e7          	jalr	168(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002c24:	00090593          	mv	a1,s2
    80002c28:	fffff097          	auipc	ra,0xfffff
    80002c2c:	228080e7          	jalr	552(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    80002c30:	fffff097          	auipc	ra,0xfffff
    80002c34:	094080e7          	jalr	148(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002c38:	000a8593          	mv	a1,s5
    80002c3c:	fffff097          	auipc	ra,0xfffff
    80002c40:	214080e7          	jalr	532(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002c44:	00048513          	mv	a0,s1
    80002c48:	fffff097          	auipc	ra,0xfffff
    80002c4c:	780080e7          	jalr	1920(ra) # 800023c8 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002c50:	e11ff06f          	j	80002a60 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>

0000000080002c54 <_ZN19MemoryAllocatorTest13firstFitTest3Ev>:


bool MemoryAllocatorTest::firstFitTest3() {
    80002c54:	fb010113          	addi	sp,sp,-80
    80002c58:	04113423          	sd	ra,72(sp)
    80002c5c:	04813023          	sd	s0,64(sp)
    80002c60:	02913c23          	sd	s1,56(sp)
    80002c64:	03213823          	sd	s2,48(sp)
    80002c68:	03313423          	sd	s3,40(sp)
    80002c6c:	03413023          	sd	s4,32(sp)
    80002c70:	01513c23          	sd	s5,24(sp)
    80002c74:	01613823          	sd	s6,16(sp)
    80002c78:	01713423          	sd	s7,8(sp)
    80002c7c:	05010413          	addi	s0,sp,80
    80002c80:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    80002c84:	fffff097          	auipc	ra,0xfffff
    80002c88:	744080e7          	jalr	1860(ra) # 800023c8 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002c8c:	02051863          	bnez	a0,80002cbc <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x68>
    MemoryAllocator::instance()->kmem_free(pointers[6]);
    MemoryAllocator::instance()->kmem_free(pointers[7]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002c90:	04813083          	ld	ra,72(sp)
    80002c94:	04013403          	ld	s0,64(sp)
    80002c98:	03813483          	ld	s1,56(sp)
    80002c9c:	03013903          	ld	s2,48(sp)
    80002ca0:	02813983          	ld	s3,40(sp)
    80002ca4:	02013a03          	ld	s4,32(sp)
    80002ca8:	01813a83          	ld	s5,24(sp)
    80002cac:	01013b03          	ld	s6,16(sp)
    80002cb0:	00813b83          	ld	s7,8(sp)
    80002cb4:	05010113          	addi	sp,sp,80
    80002cb8:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002cbc:	fffff097          	auipc	ra,0xfffff
    80002cc0:	008080e7          	jalr	8(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002cc4:	13000593          	li	a1,304
    80002cc8:	fffff097          	auipc	ra,0xfffff
    80002ccc:	0e0080e7          	jalr	224(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80002cd0:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002cd4:	00008797          	auipc	a5,0x8
    80002cd8:	93c7b783          	ld	a5,-1732(a5) # 8000a610 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002cdc:	0007b783          	ld	a5,0(a5)
    80002ce0:	01078793          	addi	a5,a5,16
    80002ce4:	00a78663          	beq	a5,a0,80002cf0 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x9c>
        return false;
    80002ce8:	00000513          	li	a0,0
    80002cec:	fa5ff06f          	j	80002c90 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    80002cf0:	fffff097          	auipc	ra,0xfffff
    80002cf4:	fd4080e7          	jalr	-44(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002cf8:	03100593          	li	a1,49
    80002cfc:	fffff097          	auipc	ra,0xfffff
    80002d00:	0ac080e7          	jalr	172(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80002d04:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 5 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002d08:	00008797          	auipc	a5,0x8
    80002d0c:	9087b783          	ld	a5,-1784(a5) # 8000a610 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002d10:	0007b783          	ld	a5,0(a5)
    80002d14:	15078793          	addi	a5,a5,336
    80002d18:	00a78663          	beq	a5,a0,80002d24 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0xd0>
        return false;
    80002d1c:	00000513          	li	a0,0
    80002d20:	f71ff06f          	j	80002c90 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    80002d24:	fffff097          	auipc	ra,0xfffff
    80002d28:	fa0080e7          	jalr	-96(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002d2c:	00090593          	mv	a1,s2
    80002d30:	fffff097          	auipc	ra,0xfffff
    80002d34:	120080e7          	jalr	288(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    80002d38:	fffff097          	auipc	ra,0xfffff
    80002d3c:	f8c080e7          	jalr	-116(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002d40:	0e600593          	li	a1,230
    80002d44:	fffff097          	auipc	ra,0xfffff
    80002d48:	064080e7          	jalr	100(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80002d4c:	00050913          	mv	s2,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002d50:	00008797          	auipc	a5,0x8
    80002d54:	8c07b783          	ld	a5,-1856(a5) # 8000a610 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002d58:	0007b783          	ld	a5,0(a5)
    80002d5c:	01078793          	addi	a5,a5,16
    80002d60:	00a78663          	beq	a5,a0,80002d6c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x118>
        return false;
    80002d64:	00000513          	li	a0,0
    80002d68:	f29ff06f          	j	80002c90 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002d6c:	fffff097          	auipc	ra,0xfffff
    80002d70:	f58080e7          	jalr	-168(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002d74:	fdb00593          	li	a1,-37
    80002d78:	fffff097          	auipc	ra,0xfffff
    80002d7c:	030080e7          	jalr	48(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80002d80:	00050a13          	mv	s4,a0
    if (pointers[3]) return false;
    80002d84:	00050663          	beqz	a0,80002d90 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x13c>
    80002d88:	00000513          	li	a0,0
    80002d8c:	f05ff06f          	j	80002c90 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002d90:	fffff097          	auipc	ra,0xfffff
    80002d94:	f34080e7          	jalr	-204(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002d98:	01e00593          	li	a1,30
    80002d9c:	fffff097          	auipc	ra,0xfffff
    80002da0:	00c080e7          	jalr	12(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80002da4:	00050a93          	mv	s5,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + 7 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002da8:	00008797          	auipc	a5,0x8
    80002dac:	8687b783          	ld	a5,-1944(a5) # 8000a610 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002db0:	0007b783          	ld	a5,0(a5)
    80002db4:	1d078793          	addi	a5,a5,464
    80002db8:	00a78663          	beq	a5,a0,80002dc4 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x170>
        return false;
    80002dbc:	00000513          	li	a0,0
    80002dc0:	ed1ff06f          	j	80002c90 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002dc4:	fffff097          	auipc	ra,0xfffff
    80002dc8:	f00080e7          	jalr	-256(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002dcc:	00090593          	mv	a1,s2
    80002dd0:	fffff097          	auipc	ra,0xfffff
    80002dd4:	080080e7          	jalr	128(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[5] = MemoryAllocator::instance()->kmem_alloc(sizes[5]);
    80002dd8:	fffff097          	auipc	ra,0xfffff
    80002ddc:	eec080e7          	jalr	-276(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002de0:	09600593          	li	a1,150
    80002de4:	fffff097          	auipc	ra,0xfffff
    80002de8:	fc4080e7          	jalr	-60(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80002dec:	00050b93          	mv	s7,a0
    if (pointers[5] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002df0:	00008797          	auipc	a5,0x8
    80002df4:	8207b783          	ld	a5,-2016(a5) # 8000a610 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002df8:	0007b783          	ld	a5,0(a5)
    80002dfc:	01078793          	addi	a5,a5,16
    80002e00:	00a78663          	beq	a5,a0,80002e0c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x1b8>
        return false;
    80002e04:	00000513          	li	a0,0
    80002e08:	e89ff06f          	j	80002c90 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[6] = MemoryAllocator::instance()->kmem_alloc(sizes[6]);
    80002e0c:	fffff097          	auipc	ra,0xfffff
    80002e10:	eb8080e7          	jalr	-328(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002e14:	02f00593          	li	a1,47
    80002e18:	fffff097          	auipc	ra,0xfffff
    80002e1c:	f90080e7          	jalr	-112(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80002e20:	00050b13          	mv	s6,a0
    if (pointers[6] != MemoryAllocator::managedMemorySpaceStart + 3 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002e24:	00007797          	auipc	a5,0x7
    80002e28:	7ec7b783          	ld	a5,2028(a5) # 8000a610 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002e2c:	0007b783          	ld	a5,0(a5)
    80002e30:	0d078793          	addi	a5,a5,208
    80002e34:	00a78663          	beq	a5,a0,80002e40 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x1ec>
        return false;
    80002e38:	00000513          	li	a0,0
    80002e3c:	e55ff06f          	j	80002c90 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[7] = MemoryAllocator::instance()->kmem_alloc(sizes[7]);
    80002e40:	fffff097          	auipc	ra,0xfffff
    80002e44:	e84080e7          	jalr	-380(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002e48:	02500593          	li	a1,37
    80002e4c:	fffff097          	auipc	ra,0xfffff
    80002e50:	f5c080e7          	jalr	-164(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80002e54:	00050913          	mv	s2,a0
    if (pointers[7] != MemoryAllocator::managedMemorySpaceStart + 8 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002e58:	00007797          	auipc	a5,0x7
    80002e5c:	7b87b783          	ld	a5,1976(a5) # 8000a610 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002e60:	0007b783          	ld	a5,0(a5)
    80002e64:	21078793          	addi	a5,a5,528
    80002e68:	00a78663          	beq	a5,a0,80002e74 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x220>
        return false;
    80002e6c:	00000513          	li	a0,0
    80002e70:	e21ff06f          	j	80002c90 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    if (!testMemoryMetadataValidity()) return false;
    80002e74:	00048513          	mv	a0,s1
    80002e78:	fffff097          	auipc	ra,0xfffff
    80002e7c:	550080e7          	jalr	1360(ra) # 800023c8 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002e80:	e00508e3          	beqz	a0,80002c90 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002e84:	fffff097          	auipc	ra,0xfffff
    80002e88:	e40080e7          	jalr	-448(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002e8c:	00098593          	mv	a1,s3
    80002e90:	fffff097          	auipc	ra,0xfffff
    80002e94:	fc0080e7          	jalr	-64(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002e98:	fffff097          	auipc	ra,0xfffff
    80002e9c:	e2c080e7          	jalr	-468(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002ea0:	000a0593          	mv	a1,s4
    80002ea4:	fffff097          	auipc	ra,0xfffff
    80002ea8:	fac080e7          	jalr	-84(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80002eac:	fffff097          	auipc	ra,0xfffff
    80002eb0:	e18080e7          	jalr	-488(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002eb4:	000a8593          	mv	a1,s5
    80002eb8:	fffff097          	auipc	ra,0xfffff
    80002ebc:	f98080e7          	jalr	-104(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    80002ec0:	fffff097          	auipc	ra,0xfffff
    80002ec4:	e04080e7          	jalr	-508(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002ec8:	000b8593          	mv	a1,s7
    80002ecc:	fffff097          	auipc	ra,0xfffff
    80002ed0:	f84080e7          	jalr	-124(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[6]);
    80002ed4:	fffff097          	auipc	ra,0xfffff
    80002ed8:	df0080e7          	jalr	-528(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002edc:	000b0593          	mv	a1,s6
    80002ee0:	fffff097          	auipc	ra,0xfffff
    80002ee4:	f70080e7          	jalr	-144(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[7]);
    80002ee8:	fffff097          	auipc	ra,0xfffff
    80002eec:	ddc080e7          	jalr	-548(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80002ef0:	00090593          	mv	a1,s2
    80002ef4:	fffff097          	auipc	ra,0xfffff
    80002ef8:	f5c080e7          	jalr	-164(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002efc:	00048513          	mv	a0,s1
    80002f00:	fffff097          	auipc	ra,0xfffff
    80002f04:	4c8080e7          	jalr	1224(ra) # 800023c8 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002f08:	d89ff06f          	j	80002c90 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>

0000000080002f0c <_ZN19MemoryAllocatorTest12testFirstFitEv>:
bool MemoryAllocatorTest::testFirstFit() {
    80002f0c:	fe010113          	addi	sp,sp,-32
    80002f10:	00113c23          	sd	ra,24(sp)
    80002f14:	00813823          	sd	s0,16(sp)
    80002f18:	00913423          	sd	s1,8(sp)
    80002f1c:	02010413          	addi	s0,sp,32
    80002f20:	00050493          	mv	s1,a0
    if (!firstFitTest1()) return false;
    80002f24:	00000097          	auipc	ra,0x0
    80002f28:	854080e7          	jalr	-1964(ra) # 80002778 <_ZN19MemoryAllocatorTest13firstFitTest1Ev>
    80002f2c:	00051c63          	bnez	a0,80002f44 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x38>
}
    80002f30:	01813083          	ld	ra,24(sp)
    80002f34:	01013403          	ld	s0,16(sp)
    80002f38:	00813483          	ld	s1,8(sp)
    80002f3c:	02010113          	addi	sp,sp,32
    80002f40:	00008067          	ret
    if (!firstFitTest2()) return false;
    80002f44:	00048513          	mv	a0,s1
    80002f48:	00000097          	auipc	ra,0x0
    80002f4c:	ae4080e7          	jalr	-1308(ra) # 80002a2c <_ZN19MemoryAllocatorTest13firstFitTest2Ev>
    80002f50:	fe0500e3          	beqz	a0,80002f30 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x24>
    if (!firstFitTest3()) return false;
    80002f54:	00048513          	mv	a0,s1
    80002f58:	00000097          	auipc	ra,0x0
    80002f5c:	cfc080e7          	jalr	-772(ra) # 80002c54 <_ZN19MemoryAllocatorTest13firstFitTest3Ev>
    80002f60:	fd1ff06f          	j	80002f30 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x24>

0000000080002f64 <_ZN19MemoryAllocatorTest25testSegmentDescriptorSizeEv>:

bool MemoryAllocatorTest::testSegmentDescriptorSize() {
    80002f64:	ff010113          	addi	sp,sp,-16
    80002f68:	00113423          	sd	ra,8(sp)
    80002f6c:	00813023          	sd	s0,0(sp)
    80002f70:	01010413          	addi	s0,sp,16
    if (!testMemoryMetadataValidity()) return false;
    80002f74:	fffff097          	auipc	ra,0xfffff
    80002f78:	454080e7          	jalr	1108(ra) # 800023c8 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    return sizeof(MemoryAllocator::SegmentDescriptor) == 16;
}
    80002f7c:	00813083          	ld	ra,8(sp)
    80002f80:	00013403          	ld	s0,0(sp)
    80002f84:	01010113          	addi	sp,sp,16
    80002f88:	00008067          	ret

0000000080002f8c <_ZN19MemoryAllocatorTest8runTestsEv>:
bool MemoryAllocatorTest::runTests() {
    80002f8c:	f6010113          	addi	sp,sp,-160
    80002f90:	08113c23          	sd	ra,152(sp)
    80002f94:	08813823          	sd	s0,144(sp)
    80002f98:	08913423          	sd	s1,136(sp)
    80002f9c:	09213023          	sd	s2,128(sp)
    80002fa0:	07313c23          	sd	s3,120(sp)
    80002fa4:	0a010413          	addi	s0,sp,160
    80002fa8:	00050993          	mv	s3,a0
    sizes[0] = 3.7 * MEM_BLOCK_SIZE;
    80002fac:	0ec00793          	li	a5,236
    80002fb0:	f6f43423          	sd	a5,-152(s0)
    sizes[1] = MEM_BLOCK_SIZE;
    80002fb4:	04000793          	li	a5,64
    80002fb8:	f6f43823          	sd	a5,-144(s0)
    sizes[2] = 0.3 * MEM_BLOCK_SIZE;
    80002fbc:	01300793          	li	a5,19
    80002fc0:	f6f43c23          	sd	a5,-136(s0)
    sizes[3] = 0;
    80002fc4:	f8043023          	sd	zero,-128(s0)
    sizes[4] = -37;
    80002fc8:	fdb00793          	li	a5,-37
    80002fcc:	f8f43423          	sd	a5,-120(s0)
    sizes[5] = sizeof(MemoryAllocator::SegmentDescriptor) - 1;
    80002fd0:	00f00793          	li	a5,15
    80002fd4:	f8f43823          	sd	a5,-112(s0)
    sizes[6] = sizeof(MemoryAllocator::SegmentDescriptor);
    80002fd8:	01000793          	li	a5,16
    80002fdc:	f8f43c23          	sd	a5,-104(s0)
    sizes[7] = sizeof(MemoryAllocator::SegmentDescriptor) + 1;
    80002fe0:	01100793          	li	a5,17
    80002fe4:	faf43023          	sd	a5,-96(s0)
    sizes[8] = MemoryAllocator::minMemoryFragmentSize - 1;
    80002fe8:	00007797          	auipc	a5,0x7
    80002fec:	5f07b783          	ld	a5,1520(a5) # 8000a5d8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002ff0:	0007b783          	ld	a5,0(a5)
    80002ff4:	fff78713          	addi	a4,a5,-1
    80002ff8:	fae43423          	sd	a4,-88(s0)
    sizes[9] = MemoryAllocator::minMemoryFragmentSize;
    80002ffc:	faf43823          	sd	a5,-80(s0)
    sizes[10] = MemoryAllocator::minMemoryFragmentSize + 1;
    80003000:	00178793          	addi	a5,a5,1
    80003004:	faf43c23          	sd	a5,-72(s0)
    sizes[11] = MEM_BLOCK_SIZE - 1;
    80003008:	03f00793          	li	a5,63
    8000300c:	fcf43023          	sd	a5,-64(s0)
    sizes[12] = MEM_BLOCK_SIZE + 1;
    80003010:	04100793          	li	a5,65
    80003014:	fcf43423          	sd	a5,-56(s0)
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    80003018:	00000493          	li	s1,0
    8000301c:	0880006f          	j	800030a4 <_ZN19MemoryAllocatorTest8runTestsEv+0x118>
            printString("Failed testMemoryAllocate test for input ");
    80003020:	00006517          	auipc	a0,0x6
    80003024:	41850513          	addi	a0,a0,1048 # 80009438 <CONSOLE_STATUS+0x428>
    80003028:	00003097          	auipc	ra,0x3
    8000302c:	58c080e7          	jalr	1420(ra) # 800065b4 <_Z11printStringPKc>
            printInteger(sizes[i]); printString("\n"); return false;
    80003030:	00090513          	mv	a0,s2
    80003034:	00003097          	auipc	ra,0x3
    80003038:	5f0080e7          	jalr	1520(ra) # 80006624 <_Z12printIntegerm>
    8000303c:	00006517          	auipc	a0,0x6
    80003040:	0d450513          	addi	a0,a0,212 # 80009110 <CONSOLE_STATUS+0x100>
    80003044:	00003097          	auipc	ra,0x3
    80003048:	570080e7          	jalr	1392(ra) # 800065b4 <_Z11printStringPKc>
    8000304c:	00000493          	li	s1,0
}
    80003050:	00048513          	mv	a0,s1
    80003054:	09813083          	ld	ra,152(sp)
    80003058:	09013403          	ld	s0,144(sp)
    8000305c:	08813483          	ld	s1,136(sp)
    80003060:	08013903          	ld	s2,128(sp)
    80003064:	07813983          	ld	s3,120(sp)
    80003068:	0a010113          	addi	sp,sp,160
    8000306c:	00008067          	ret
            printString("Failed testMemoryFree test for input ");
    80003070:	00006517          	auipc	a0,0x6
    80003074:	40050513          	addi	a0,a0,1024 # 80009470 <CONSOLE_STATUS+0x460>
    80003078:	00003097          	auipc	ra,0x3
    8000307c:	53c080e7          	jalr	1340(ra) # 800065b4 <_Z11printStringPKc>
            printInteger(sizes[i]); printString("\n"); return false;
    80003080:	00090513          	mv	a0,s2
    80003084:	00003097          	auipc	ra,0x3
    80003088:	5a0080e7          	jalr	1440(ra) # 80006624 <_Z12printIntegerm>
    8000308c:	00006517          	auipc	a0,0x6
    80003090:	08450513          	addi	a0,a0,132 # 80009110 <CONSOLE_STATUS+0x100>
    80003094:	00003097          	auipc	ra,0x3
    80003098:	520080e7          	jalr	1312(ra) # 800065b4 <_Z11printStringPKc>
    8000309c:	fb1ff06f          	j	8000304c <_ZN19MemoryAllocatorTest8runTestsEv+0xc0>
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    800030a0:	0014849b          	addiw	s1,s1,1
    800030a4:	00c00793          	li	a5,12
    800030a8:	0897c863          	blt	a5,s1,80003138 <_ZN19MemoryAllocatorTest8runTestsEv+0x1ac>
        void * allocatedMemoryPointer = nullptr;
    800030ac:	f6043023          	sd	zero,-160(s0)
        if (!testMemoryAllocate(sizes[i], &allocatedMemoryPointer)) {
    800030b0:	00349793          	slli	a5,s1,0x3
    800030b4:	fd040713          	addi	a4,s0,-48
    800030b8:	00f707b3          	add	a5,a4,a5
    800030bc:	f987b903          	ld	s2,-104(a5)
    800030c0:	f6040613          	addi	a2,s0,-160
    800030c4:	00090593          	mv	a1,s2
    800030c8:	00098513          	mv	a0,s3
    800030cc:	fffff097          	auipc	ra,0xfffff
    800030d0:	3b4080e7          	jalr	948(ra) # 80002480 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>
    800030d4:	f40506e3          	beqz	a0,80003020 <_ZN19MemoryAllocatorTest8runTestsEv+0x94>
        } else printString("Passed ");
    800030d8:	00006517          	auipc	a0,0x6
    800030dc:	39050513          	addi	a0,a0,912 # 80009468 <CONSOLE_STATUS+0x458>
    800030e0:	00003097          	auipc	ra,0x3
    800030e4:	4d4080e7          	jalr	1236(ra) # 800065b4 <_Z11printStringPKc>
        if (!testMemoryFree(sizes[i], allocatedMemoryPointer)) {
    800030e8:	f6043603          	ld	a2,-160(s0)
    800030ec:	00090593          	mv	a1,s2
    800030f0:	00098513          	mv	a0,s3
    800030f4:	fffff097          	auipc	ra,0xfffff
    800030f8:	50c080e7          	jalr	1292(ra) # 80002600 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>
    800030fc:	f6050ae3          	beqz	a0,80003070 <_ZN19MemoryAllocatorTest8runTestsEv+0xe4>
        } else printString("Passed ");
    80003100:	00006517          	auipc	a0,0x6
    80003104:	36850513          	addi	a0,a0,872 # 80009468 <CONSOLE_STATUS+0x458>
    80003108:	00003097          	auipc	ra,0x3
    8000310c:	4ac080e7          	jalr	1196(ra) # 800065b4 <_Z11printStringPKc>
        if (i != 0 && (i + 1) % 5 == 0) printString("\n");
    80003110:	f80488e3          	beqz	s1,800030a0 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    80003114:	0014879b          	addiw	a5,s1,1
    80003118:	00500713          	li	a4,5
    8000311c:	02e7e7bb          	remw	a5,a5,a4
    80003120:	f80790e3          	bnez	a5,800030a0 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    80003124:	00006517          	auipc	a0,0x6
    80003128:	fec50513          	addi	a0,a0,-20 # 80009110 <CONSOLE_STATUS+0x100>
    8000312c:	00003097          	auipc	ra,0x3
    80003130:	488080e7          	jalr	1160(ra) # 800065b4 <_Z11printStringPKc>
    80003134:	f6dff06f          	j	800030a0 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    if (!testFirstFit()) {
    80003138:	00098513          	mv	a0,s3
    8000313c:	00000097          	auipc	ra,0x0
    80003140:	dd0080e7          	jalr	-560(ra) # 80002f0c <_ZN19MemoryAllocatorTest12testFirstFitEv>
    80003144:	00050493          	mv	s1,a0
    80003148:	02050e63          	beqz	a0,80003184 <_ZN19MemoryAllocatorTest8runTestsEv+0x1f8>
    else printString("Passed ");
    8000314c:	00006517          	auipc	a0,0x6
    80003150:	31c50513          	addi	a0,a0,796 # 80009468 <CONSOLE_STATUS+0x458>
    80003154:	00003097          	auipc	ra,0x3
    80003158:	460080e7          	jalr	1120(ra) # 800065b4 <_Z11printStringPKc>
    if (!testSegmentDescriptorSize()) {
    8000315c:	00098513          	mv	a0,s3
    80003160:	00000097          	auipc	ra,0x0
    80003164:	e04080e7          	jalr	-508(ra) # 80002f64 <_ZN19MemoryAllocatorTest25testSegmentDescriptorSizeEv>
    80003168:	00050493          	mv	s1,a0
    8000316c:	02050663          	beqz	a0,80003198 <_ZN19MemoryAllocatorTest8runTestsEv+0x20c>
    else printString("Passed\n");
    80003170:	00006517          	auipc	a0,0x6
    80003174:	36850513          	addi	a0,a0,872 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80003178:	00003097          	auipc	ra,0x3
    8000317c:	43c080e7          	jalr	1084(ra) # 800065b4 <_Z11printStringPKc>
    80003180:	ed1ff06f          	j	80003050 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>
        printString("Failed testFirstFit\n"); return false; }
    80003184:	00006517          	auipc	a0,0x6
    80003188:	31450513          	addi	a0,a0,788 # 80009498 <CONSOLE_STATUS+0x488>
    8000318c:	00003097          	auipc	ra,0x3
    80003190:	428080e7          	jalr	1064(ra) # 800065b4 <_Z11printStringPKc>
    80003194:	ebdff06f          	j	80003050 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>
        printString("Failed testSegmentDescriptorSize\n"); return false; }
    80003198:	00006517          	auipc	a0,0x6
    8000319c:	31850513          	addi	a0,a0,792 # 800094b0 <CONSOLE_STATUS+0x4a0>
    800031a0:	00003097          	auipc	ra,0x3
    800031a4:	414080e7          	jalr	1044(ra) # 800065b4 <_Z11printStringPKc>
    800031a8:	ea9ff06f          	j	80003050 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>

00000000800031ac <_Znwm>:


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    800031ac:	ff010113          	addi	sp,sp,-16
    800031b0:	00113423          	sd	ra,8(sp)
    800031b4:	00813023          	sd	s0,0(sp)
    800031b8:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    800031bc:	00005097          	auipc	ra,0x5
    800031c0:	6fc080e7          	jalr	1788(ra) # 800088b8 <__mem_alloc>
    //return MemoryAllocator::instance()->kmem_alloc(n);
}
    800031c4:	00813083          	ld	ra,8(sp)
    800031c8:	00013403          	ld	s0,0(sp)
    800031cc:	01010113          	addi	sp,sp,16
    800031d0:	00008067          	ret

00000000800031d4 <_Znam>:

void *operator new[](size_t n)
{
    800031d4:	ff010113          	addi	sp,sp,-16
    800031d8:	00113423          	sd	ra,8(sp)
    800031dc:	00813023          	sd	s0,0(sp)
    800031e0:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    800031e4:	00005097          	auipc	ra,0x5
    800031e8:	6d4080e7          	jalr	1748(ra) # 800088b8 <__mem_alloc>
    //return MemoryAllocator::instance()->kmem_alloc(n);
}
    800031ec:	00813083          	ld	ra,8(sp)
    800031f0:	00013403          	ld	s0,0(sp)
    800031f4:	01010113          	addi	sp,sp,16
    800031f8:	00008067          	ret

00000000800031fc <_ZdlPv>:

void operator delete(void *p) noexcept
{
    800031fc:	ff010113          	addi	sp,sp,-16
    80003200:	00113423          	sd	ra,8(sp)
    80003204:	00813023          	sd	s0,0(sp)
    80003208:	01010413          	addi	s0,sp,16
    __mem_free(p);
    8000320c:	00005097          	auipc	ra,0x5
    80003210:	5e0080e7          	jalr	1504(ra) # 800087ec <__mem_free>
    //MemoryAllocator::instance()->kmem_free(p);
}
    80003214:	00813083          	ld	ra,8(sp)
    80003218:	00013403          	ld	s0,0(sp)
    8000321c:	01010113          	addi	sp,sp,16
    80003220:	00008067          	ret

0000000080003224 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80003224:	ff010113          	addi	sp,sp,-16
    80003228:	00113423          	sd	ra,8(sp)
    8000322c:	00813023          	sd	s0,0(sp)
    80003230:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80003234:	00005097          	auipc	ra,0x5
    80003238:	5b8080e7          	jalr	1464(ra) # 800087ec <__mem_free>
    //MemoryAllocator::instance()->kmem_free(p);
    8000323c:	00813083          	ld	ra,8(sp)
    80003240:	00013403          	ld	s0,0(sp)
    80003244:	01010113          	addi	sp,sp,16
    80003248:	00008067          	ret

000000008000324c <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>:
    }
    return false;
}

bool KObjectAllocatorTest::getValueOfBitAt(size_t byte, size_t bit, KObjectAllocator* objAlloc) {
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i) {
    8000324c:	00000793          	li	a5,0
    80003250:	0080006f          	j	80003258 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator+0xc>
    80003254:	00178793          	addi	a5,a5,1
    80003258:	0306b703          	ld	a4,48(a3)
    8000325c:	04e7f263          	bgeu	a5,a4,800032a0 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator+0x54>
        if (i * objAlloc->memorySizeForBits <= byte && byte < (i + 1) * objAlloc->memorySizeForBits)
    80003260:	0106b703          	ld	a4,16(a3)
    80003264:	02f70533          	mul	a0,a4,a5
    80003268:	fea5e6e3          	bltu	a1,a0,80003254 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator+0x8>
    8000326c:	00178813          	addi	a6,a5,1
    80003270:	03070733          	mul	a4,a4,a6
    80003274:	fee5f0e3          	bgeu	a1,a4,80003254 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator+0x8>
            return (objAlloc->bitVectors[i][byte - i * objAlloc->memorySizeForBits] >> bit & (uint8) 1) != 0;
    80003278:	0286b703          	ld	a4,40(a3)
    8000327c:	00379793          	slli	a5,a5,0x3
    80003280:	00f707b3          	add	a5,a4,a5
    80003284:	0007b783          	ld	a5,0(a5)
    80003288:	40a585b3          	sub	a1,a1,a0
    8000328c:	00b785b3          	add	a1,a5,a1
    80003290:	0005c503          	lbu	a0,0(a1)
    80003294:	40c5563b          	sraw	a2,a0,a2
    80003298:	00167513          	andi	a0,a2,1
    }
    printString("ERROR: byte not in given objAlloc\n");
    return false;
}
    8000329c:	00008067          	ret
bool KObjectAllocatorTest::getValueOfBitAt(size_t byte, size_t bit, KObjectAllocator* objAlloc) {
    800032a0:	ff010113          	addi	sp,sp,-16
    800032a4:	00113423          	sd	ra,8(sp)
    800032a8:	00813023          	sd	s0,0(sp)
    800032ac:	01010413          	addi	s0,sp,16
    printString("ERROR: byte not in given objAlloc\n");
    800032b0:	00006517          	auipc	a0,0x6
    800032b4:	23050513          	addi	a0,a0,560 # 800094e0 <CONSOLE_STATUS+0x4d0>
    800032b8:	00003097          	auipc	ra,0x3
    800032bc:	2fc080e7          	jalr	764(ra) # 800065b4 <_Z11printStringPKc>
    return false;
    800032c0:	00000513          	li	a0,0
}
    800032c4:	00813083          	ld	ra,8(sp)
    800032c8:	00013403          	ld	s0,0(sp)
    800032cc:	01010113          	addi	sp,sp,16
    800032d0:	00008067          	ret

00000000800032d4 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>:

size_t KObjectAllocatorTest::getByteOfObject(void* obj, KObjectAllocator* objAlloc) {
    800032d4:	fd010113          	addi	sp,sp,-48
    800032d8:	02113423          	sd	ra,40(sp)
    800032dc:	02813023          	sd	s0,32(sp)
    800032e0:	00913c23          	sd	s1,24(sp)
    800032e4:	01213823          	sd	s2,16(sp)
    800032e8:	01313423          	sd	s3,8(sp)
    800032ec:	03010413          	addi	s0,sp,48
    800032f0:	00060913          	mv	s2,a2
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i) {
    800032f4:	00000993          	li	s3,0
    800032f8:	0080006f          	j	80003300 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator+0x2c>
    800032fc:	00198993          	addi	s3,s3,1
    80003300:	03093783          	ld	a5,48(s2)
    80003304:	0af9f863          	bgeu	s3,a5,800033b4 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator+0xe0>
        if ((uint8*) obj < objAlloc->objectVectors[i]) continue;
    80003308:	02093783          	ld	a5,32(s2)
    8000330c:	00399713          	slli	a4,s3,0x3
    80003310:	00e787b3          	add	a5,a5,a4
    80003314:	0007b783          	ld	a5,0(a5)
    80003318:	fef5e2e3          	bltu	a1,a5,800032fc <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator+0x28>
        size_t idiff = (size_t) ((uint8*) obj - objAlloc->objectVectors[i]);
    8000331c:	40f584b3          	sub	s1,a1,a5
        size_t byte = idiff / objAlloc->objectSize / 8;
    80003320:	01893783          	ld	a5,24(s2)
    80003324:	02f4d4b3          	divu	s1,s1,a5
    80003328:	0034d493          	srli	s1,s1,0x3
        if (byte >= objAlloc->memorySizeForBits) continue;
    8000332c:	01093783          	ld	a5,16(s2)
    80003330:	fcf4f6e3          	bgeu	s1,a5,800032fc <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator+0x28>
        printString("\ni = "); printInteger(i); printString("\n");
    80003334:	00006517          	auipc	a0,0x6
    80003338:	1d450513          	addi	a0,a0,468 # 80009508 <CONSOLE_STATUS+0x4f8>
    8000333c:	00003097          	auipc	ra,0x3
    80003340:	278080e7          	jalr	632(ra) # 800065b4 <_Z11printStringPKc>
    80003344:	00098513          	mv	a0,s3
    80003348:	00003097          	auipc	ra,0x3
    8000334c:	2dc080e7          	jalr	732(ra) # 80006624 <_Z12printIntegerm>
    80003350:	00006517          	auipc	a0,0x6
    80003354:	dc050513          	addi	a0,a0,-576 # 80009110 <CONSOLE_STATUS+0x100>
    80003358:	00003097          	auipc	ra,0x3
    8000335c:	25c080e7          	jalr	604(ra) # 800065b4 <_Z11printStringPKc>
        printString("\nbyte = "); printInteger(byte); printString("\n");
    80003360:	00006517          	auipc	a0,0x6
    80003364:	1b050513          	addi	a0,a0,432 # 80009510 <CONSOLE_STATUS+0x500>
    80003368:	00003097          	auipc	ra,0x3
    8000336c:	24c080e7          	jalr	588(ra) # 800065b4 <_Z11printStringPKc>
    80003370:	00048513          	mv	a0,s1
    80003374:	00003097          	auipc	ra,0x3
    80003378:	2b0080e7          	jalr	688(ra) # 80006624 <_Z12printIntegerm>
    8000337c:	00006517          	auipc	a0,0x6
    80003380:	d9450513          	addi	a0,a0,-620 # 80009110 <CONSOLE_STATUS+0x100>
    80003384:	00003097          	auipc	ra,0x3
    80003388:	230080e7          	jalr	560(ra) # 800065b4 <_Z11printStringPKc>
        return byte + i * objAlloc->memorySizeForBits;
    8000338c:	01093503          	ld	a0,16(s2)
    80003390:	03350533          	mul	a0,a0,s3
    80003394:	00950533          	add	a0,a0,s1
    }
    printString("ERROR: given object not allocated in given objAlloc\n");
    return 0;
}
    80003398:	02813083          	ld	ra,40(sp)
    8000339c:	02013403          	ld	s0,32(sp)
    800033a0:	01813483          	ld	s1,24(sp)
    800033a4:	01013903          	ld	s2,16(sp)
    800033a8:	00813983          	ld	s3,8(sp)
    800033ac:	03010113          	addi	sp,sp,48
    800033b0:	00008067          	ret
    printString("ERROR: given object not allocated in given objAlloc\n");
    800033b4:	00006517          	auipc	a0,0x6
    800033b8:	16c50513          	addi	a0,a0,364 # 80009520 <CONSOLE_STATUS+0x510>
    800033bc:	00003097          	auipc	ra,0x3
    800033c0:	1f8080e7          	jalr	504(ra) # 800065b4 <_Z11printStringPKc>
    return 0;
    800033c4:	00000513          	li	a0,0
    800033c8:	fd1ff06f          	j	80003398 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator+0xc4>

00000000800033cc <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>:

size_t KObjectAllocatorTest::getBitOfObject(void* obj, KObjectAllocator* objAlloc) {
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i) {
    800033cc:	00000713          	li	a4,0
    800033d0:	0080006f          	j	800033d8 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator+0xc>
    800033d4:	00170713          	addi	a4,a4,1
    800033d8:	03063783          	ld	a5,48(a2)
    800033dc:	04f77063          	bgeu	a4,a5,8000341c <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator+0x50>
        if ((uint8*) obj < objAlloc->objectVectors[i]) continue;
    800033e0:	02063783          	ld	a5,32(a2)
    800033e4:	00371693          	slli	a3,a4,0x3
    800033e8:	00d787b3          	add	a5,a5,a3
    800033ec:	0007b783          	ld	a5,0(a5)
    800033f0:	fef5e2e3          	bltu	a1,a5,800033d4 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator+0x8>
        size_t idiff = (size_t) ((uint8*) obj - objAlloc->objectVectors[i]);
    800033f4:	40f587b3          	sub	a5,a1,a5
        size_t byte = idiff / objAlloc->objectSize / 8;
    800033f8:	01863503          	ld	a0,24(a2)
    800033fc:	02a7d7b3          	divu	a5,a5,a0
    80003400:	0037d693          	srli	a3,a5,0x3
        if (byte >= objAlloc->memorySizeForBits) continue;
    80003404:	01063503          	ld	a0,16(a2)
    80003408:	fca6f6e3          	bgeu	a3,a0,800033d4 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator+0x8>
        size_t bit = idiff / objAlloc->objectSize - byte * 8;
    8000340c:	ff87f513          	andi	a0,a5,-8
        return 7 - bit;
    80003410:	40f507b3          	sub	a5,a0,a5
    80003414:	00778513          	addi	a0,a5,7
    }
    printString("ERROR: given object not allocated in given objAlloc\n");
    return 0;
}
    80003418:	00008067          	ret
size_t KObjectAllocatorTest::getBitOfObject(void* obj, KObjectAllocator* objAlloc) {
    8000341c:	ff010113          	addi	sp,sp,-16
    80003420:	00113423          	sd	ra,8(sp)
    80003424:	00813023          	sd	s0,0(sp)
    80003428:	01010413          	addi	s0,sp,16
    printString("ERROR: given object not allocated in given objAlloc\n");
    8000342c:	00006517          	auipc	a0,0x6
    80003430:	0f450513          	addi	a0,a0,244 # 80009520 <CONSOLE_STATUS+0x510>
    80003434:	00003097          	auipc	ra,0x3
    80003438:	180080e7          	jalr	384(ra) # 800065b4 <_Z11printStringPKc>
    return 0;
    8000343c:	00000513          	li	a0,0
}
    80003440:	00813083          	ld	ra,8(sp)
    80003444:	00013403          	ld	s0,0(sp)
    80003448:	01010113          	addi	sp,sp,16
    8000344c:	00008067          	ret

0000000080003450 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>:

void* KObjectAllocatorTest::getObjectAt(size_t byte, size_t bit, KObjectAllocator* objAlloc) {
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i)
    80003450:	00000793          	li	a5,0
    80003454:	0080006f          	j	8000345c <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator+0xc>
    80003458:	00178793          	addi	a5,a5,1
    8000345c:	0306b703          	ld	a4,48(a3)
    80003460:	04e7f663          	bgeu	a5,a4,800034ac <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator+0x5c>
        if (i * objAlloc->memorySizeForBits <= byte && byte < (i + 1) * objAlloc->memorySizeForBits)
    80003464:	0106b703          	ld	a4,16(a3)
    80003468:	02f70833          	mul	a6,a4,a5
    8000346c:	ff05e6e3          	bltu	a1,a6,80003458 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator+0x8>
    80003470:	00178893          	addi	a7,a5,1
    80003474:	03170733          	mul	a4,a4,a7
    80003478:	fee5f0e3          	bgeu	a1,a4,80003458 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator+0x8>
            return &objAlloc->objectVectors[i][((byte - i * objAlloc->memorySizeForBits) * 8 + 7 - bit) * objAlloc->objectSize];
    8000347c:	0206b703          	ld	a4,32(a3)
    80003480:	00379793          	slli	a5,a5,0x3
    80003484:	00f707b3          	add	a5,a4,a5
    80003488:	0007b783          	ld	a5,0(a5)
    8000348c:	410585b3          	sub	a1,a1,a6
    80003490:	00359593          	slli	a1,a1,0x3
    80003494:	40c58533          	sub	a0,a1,a2
    80003498:	00750513          	addi	a0,a0,7
    8000349c:	0186b703          	ld	a4,24(a3)
    800034a0:	02e50533          	mul	a0,a0,a4
    800034a4:	00a78533          	add	a0,a5,a0
    printString("ERROR: given object not allocated in given objAlloc\n");
    return nullptr;
}
    800034a8:	00008067          	ret
void* KObjectAllocatorTest::getObjectAt(size_t byte, size_t bit, KObjectAllocator* objAlloc) {
    800034ac:	ff010113          	addi	sp,sp,-16
    800034b0:	00113423          	sd	ra,8(sp)
    800034b4:	00813023          	sd	s0,0(sp)
    800034b8:	01010413          	addi	s0,sp,16
    printString("ERROR: given object not allocated in given objAlloc\n");
    800034bc:	00006517          	auipc	a0,0x6
    800034c0:	06450513          	addi	a0,a0,100 # 80009520 <CONSOLE_STATUS+0x510>
    800034c4:	00003097          	auipc	ra,0x3
    800034c8:	0f0080e7          	jalr	240(ra) # 800065b4 <_Z11printStringPKc>
    return nullptr;
    800034cc:	00000513          	li	a0,0
}
    800034d0:	00813083          	ld	ra,8(sp)
    800034d4:	00013403          	ld	s0,0(sp)
    800034d8:	01010113          	addi	sp,sp,16
    800034dc:	00008067          	ret

00000000800034e0 <_ZN20KObjectAllocatorTest5test0Em>:

bool KObjectAllocatorTest::test0(size_t size) {
    800034e0:	f5010113          	addi	sp,sp,-176
    800034e4:	0a113423          	sd	ra,168(sp)
    800034e8:	0a813023          	sd	s0,160(sp)
    800034ec:	08913c23          	sd	s1,152(sp)
    800034f0:	09213823          	sd	s2,144(sp)
    800034f4:	09313423          	sd	s3,136(sp)
    800034f8:	09413023          	sd	s4,128(sp)
    800034fc:	07513c23          	sd	s5,120(sp)
    80003500:	07613823          	sd	s6,112(sp)
    80003504:	07713423          	sd	s7,104(sp)
    80003508:	0b010413          	addi	s0,sp,176
    8000350c:	00050993          	mv	s3,a0
    80003510:	00058913          	mv	s2,a1
        return MemoryAllocator::instance()->kmem_alloc(size);
    80003514:	ffffe097          	auipc	ra,0xffffe
    80003518:	7b0080e7          	jalr	1968(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    8000351c:	04000593          	li	a1,64
    80003520:	fffff097          	auipc	ra,0xfffff
    80003524:	888080e7          	jalr	-1912(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80003528:	00050493          	mv	s1,a0
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    8000352c:	00900793          	li	a5,9
    80003530:	00f53023          	sd	a5,0(a0)
    80003534:	00f53423          	sd	a5,8(a0)
    80003538:	01253c23          	sd	s2,24(a0)
    8000353c:	00100793          	li	a5,1
    80003540:	02f53823          	sd	a5,48(a0)
    80003544:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80003548:	ffffe097          	auipc	ra,0xffffe
    8000354c:	77c080e7          	jalr	1916(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003550:	0304b583          	ld	a1,48(s1)
    80003554:	00359593          	slli	a1,a1,0x3
    80003558:	fffff097          	auipc	ra,0xfffff
    8000355c:	850080e7          	jalr	-1968(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80003560:	02a4b423          	sd	a0,40(s1)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80003564:	ffffe097          	auipc	ra,0xffffe
    80003568:	760080e7          	jalr	1888(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    8000356c:	0304b583          	ld	a1,48(s1)
    80003570:	00359593          	slli	a1,a1,0x3
    80003574:	fffff097          	auipc	ra,0xfffff
    80003578:	834080e7          	jalr	-1996(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    8000357c:	02a4b023          	sd	a0,32(s1)
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80003580:	0084b703          	ld	a4,8(s1)
    80003584:	ff877793          	andi	a5,a4,-8
    80003588:	02f70463          	beq	a4,a5,800035b0 <_ZN20KObjectAllocatorTest5test0Em+0xd0>
    8000358c:	00800713          	li	a4,8
    80003590:	00e787b3          	add	a5,a5,a4
    80003594:	00f4b423          	sd	a5,8(s1)
    80003598:	00f4b023          	sd	a5,0(s1)
        memorySizeForBits = numberOfObjects / 8;
    8000359c:	0037d793          	srli	a5,a5,0x3
    800035a0:	00f4b823          	sd	a5,16(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    800035a4:	ffffe097          	auipc	ra,0xffffe
    800035a8:	720080e7          	jalr	1824(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800035ac:	00c0006f          	j	800035b8 <_ZN20KObjectAllocatorTest5test0Em+0xd8>
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    800035b0:	00000713          	li	a4,0
    800035b4:	fddff06f          	j	80003590 <_ZN20KObjectAllocatorTest5test0Em+0xb0>
                memorySizeForBits + initialNumberOfObjects * objectSize
    800035b8:	0104b583          	ld	a1,16(s1)
    800035bc:	0004b783          	ld	a5,0(s1)
    800035c0:	02f907b3          	mul	a5,s2,a5
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    800035c4:	0284ba03          	ld	s4,40(s1)
    800035c8:	00f585b3          	add	a1,a1,a5
    800035cc:	ffffe097          	auipc	ra,0xffffe
    800035d0:	7dc080e7          	jalr	2012(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    800035d4:	00aa3023          	sd	a0,0(s4)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    800035d8:	0284b783          	ld	a5,40(s1)
    800035dc:	0007b783          	ld	a5,0(a5)
    800035e0:	0104b683          	ld	a3,16(s1)
    800035e4:	0204b703          	ld	a4,32(s1)
    800035e8:	00d787b3          	add	a5,a5,a3
    800035ec:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    800035f0:	00000793          	li	a5,0
    800035f4:	0104b703          	ld	a4,16(s1)
    800035f8:	00e7fe63          	bgeu	a5,a4,80003614 <_ZN20KObjectAllocatorTest5test0Em+0x134>
    800035fc:	0284b703          	ld	a4,40(s1)
    80003600:	00073703          	ld	a4,0(a4)
    80003604:	00f70733          	add	a4,a4,a5
    80003608:	00070023          	sb	zero,0(a4)
    8000360c:	00178793          	addi	a5,a5,1
    80003610:	fe5ff06f          	j	800035f4 <_ZN20KObjectAllocatorTest5test0Em+0x114>
    size_t getNumberOfObjects() { return numberOfObjects; }
    80003614:	0084b703          	ld	a4,8(s1)
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 9);
    if (objAlloc->getNumberOfObjects() != 16) { delete objAlloc; return false; }
    80003618:	01000793          	li	a5,16
    8000361c:	0af70663          	beq	a4,a5,800036c8 <_ZN20KObjectAllocatorTest5test0Em+0x1e8>
    80003620:	06048a63          	beqz	s1,80003694 <_ZN20KObjectAllocatorTest5test0Em+0x1b4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003624:	00000913          	li	s2,0
    80003628:	0280006f          	j	80003650 <_ZN20KObjectAllocatorTest5test0Em+0x170>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    8000362c:	ffffe097          	auipc	ra,0xffffe
    80003630:	698080e7          	jalr	1688(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003634:	0284b783          	ld	a5,40(s1)
    80003638:	00391713          	slli	a4,s2,0x3
    8000363c:	00e787b3          	add	a5,a5,a4
    80003640:	0007b583          	ld	a1,0(a5)
    80003644:	fffff097          	auipc	ra,0xfffff
    80003648:	80c080e7          	jalr	-2036(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000364c:	00190913          	addi	s2,s2,1
    80003650:	0304b783          	ld	a5,48(s1)
    80003654:	fcf96ce3          	bltu	s2,a5,8000362c <_ZN20KObjectAllocatorTest5test0Em+0x14c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003658:	ffffe097          	auipc	ra,0xffffe
    8000365c:	66c080e7          	jalr	1644(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003660:	0284b583          	ld	a1,40(s1)
    80003664:	ffffe097          	auipc	ra,0xffffe
    80003668:	7ec080e7          	jalr	2028(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    8000366c:	ffffe097          	auipc	ra,0xffffe
    80003670:	658080e7          	jalr	1624(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003674:	0204b583          	ld	a1,32(s1)
    80003678:	ffffe097          	auipc	ra,0xffffe
    8000367c:	7d8080e7          	jalr	2008(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003680:	ffffe097          	auipc	ra,0xffffe
    80003684:	644080e7          	jalr	1604(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003688:	00048593          	mv	a1,s1
    8000368c:	ffffe097          	auipc	ra,0xffffe
    80003690:	7c4080e7          	jalr	1988(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003694:	00000a13          	li	s4,0
        if (expectedBitValues[i] != getValueOfBitAt(byte, bit, objAlloc))
            { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    }
    delete objAlloc;
    return true;
}
    80003698:	000a0513          	mv	a0,s4
    8000369c:	0a813083          	ld	ra,168(sp)
    800036a0:	0a013403          	ld	s0,160(sp)
    800036a4:	09813483          	ld	s1,152(sp)
    800036a8:	09013903          	ld	s2,144(sp)
    800036ac:	08813983          	ld	s3,136(sp)
    800036b0:	08013a03          	ld	s4,128(sp)
    800036b4:	07813a83          	ld	s5,120(sp)
    800036b8:	07013b03          	ld	s6,112(sp)
    800036bc:	06813b83          	ld	s7,104(sp)
    800036c0:	0b010113          	addi	sp,sp,176
    800036c4:	00008067          	ret
    size_t getMemorySizeForBits() { return memorySizeForBits; }
    800036c8:	0104b703          	ld	a4,16(s1)
    if (objAlloc->getMemorySizeForBits() != 2) { delete objAlloc; return false; }
    800036cc:	00200793          	li	a5,2
    800036d0:	08f70063          	beq	a4,a5,80003750 <_ZN20KObjectAllocatorTest5test0Em+0x270>
    800036d4:	06048a63          	beqz	s1,80003748 <_ZN20KObjectAllocatorTest5test0Em+0x268>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800036d8:	00000913          	li	s2,0
    800036dc:	0280006f          	j	80003704 <_ZN20KObjectAllocatorTest5test0Em+0x224>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800036e0:	ffffe097          	auipc	ra,0xffffe
    800036e4:	5e4080e7          	jalr	1508(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800036e8:	0284b783          	ld	a5,40(s1)
    800036ec:	00391713          	slli	a4,s2,0x3
    800036f0:	00e787b3          	add	a5,a5,a4
    800036f4:	0007b583          	ld	a1,0(a5)
    800036f8:	ffffe097          	auipc	ra,0xffffe
    800036fc:	758080e7          	jalr	1880(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003700:	00190913          	addi	s2,s2,1
    80003704:	0304b783          	ld	a5,48(s1)
    80003708:	fcf96ce3          	bltu	s2,a5,800036e0 <_ZN20KObjectAllocatorTest5test0Em+0x200>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    8000370c:	ffffe097          	auipc	ra,0xffffe
    80003710:	5b8080e7          	jalr	1464(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003714:	0284b583          	ld	a1,40(s1)
    80003718:	ffffe097          	auipc	ra,0xffffe
    8000371c:	738080e7          	jalr	1848(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003720:	ffffe097          	auipc	ra,0xffffe
    80003724:	5a4080e7          	jalr	1444(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003728:	0204b583          	ld	a1,32(s1)
    8000372c:	ffffe097          	auipc	ra,0xffffe
    80003730:	724080e7          	jalr	1828(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003734:	ffffe097          	auipc	ra,0xffffe
    80003738:	590080e7          	jalr	1424(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    8000373c:	00048593          	mv	a1,s1
    80003740:	ffffe097          	auipc	ra,0xffffe
    80003744:	710080e7          	jalr	1808(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003748:	00000a13          	li	s4,0
    8000374c:	f4dff06f          	j	80003698 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    size_t getObjectSize() { return objectSize; }
    80003750:	0184b783          	ld	a5,24(s1)
    if (objAlloc->getObjectSize() != size) { delete objAlloc; return false; }
    80003754:	08f90063          	beq	s2,a5,800037d4 <_ZN20KObjectAllocatorTest5test0Em+0x2f4>
    80003758:	06048a63          	beqz	s1,800037cc <_ZN20KObjectAllocatorTest5test0Em+0x2ec>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000375c:	00000913          	li	s2,0
    80003760:	0304b783          	ld	a5,48(s1)
    80003764:	02f97663          	bgeu	s2,a5,80003790 <_ZN20KObjectAllocatorTest5test0Em+0x2b0>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003768:	ffffe097          	auipc	ra,0xffffe
    8000376c:	55c080e7          	jalr	1372(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003770:	0284b783          	ld	a5,40(s1)
    80003774:	00391713          	slli	a4,s2,0x3
    80003778:	00e787b3          	add	a5,a5,a4
    8000377c:	0007b583          	ld	a1,0(a5)
    80003780:	ffffe097          	auipc	ra,0xffffe
    80003784:	6d0080e7          	jalr	1744(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003788:	00190913          	addi	s2,s2,1
    8000378c:	fd5ff06f          	j	80003760 <_ZN20KObjectAllocatorTest5test0Em+0x280>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003790:	ffffe097          	auipc	ra,0xffffe
    80003794:	534080e7          	jalr	1332(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003798:	0284b583          	ld	a1,40(s1)
    8000379c:	ffffe097          	auipc	ra,0xffffe
    800037a0:	6b4080e7          	jalr	1716(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800037a4:	ffffe097          	auipc	ra,0xffffe
    800037a8:	520080e7          	jalr	1312(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800037ac:	0204b583          	ld	a1,32(s1)
    800037b0:	ffffe097          	auipc	ra,0xffffe
    800037b4:	6a0080e7          	jalr	1696(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800037b8:	ffffe097          	auipc	ra,0xffffe
    800037bc:	50c080e7          	jalr	1292(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800037c0:	00048593          	mv	a1,s1
    800037c4:	ffffe097          	auipc	ra,0xffffe
    800037c8:	68c080e7          	jalr	1676(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    800037cc:	00000a13          	li	s4,0
    800037d0:	ec9ff06f          	j	80003698 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    void* objArr[10]; for (size_t i = 0; i < 10; objArr[i++] = objAlloc->allocateNewObject());
    800037d4:	00000913          	li	s2,0
    800037d8:	00900793          	li	a5,9
    800037dc:	0327e663          	bltu	a5,s2,80003808 <_ZN20KObjectAllocatorTest5test0Em+0x328>
    800037e0:	00190a13          	addi	s4,s2,1
    800037e4:	00048513          	mv	a0,s1
    800037e8:	00003097          	auipc	ra,0x3
    800037ec:	ab8080e7          	jalr	-1352(ra) # 800062a0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800037f0:	00391913          	slli	s2,s2,0x3
    800037f4:	fb040793          	addi	a5,s0,-80
    800037f8:	01278933          	add	s2,a5,s2
    800037fc:	faa93823          	sd	a0,-80(s2)
    80003800:	000a0913          	mv	s2,s4
    80003804:	fd5ff06f          	j	800037d8 <_ZN20KObjectAllocatorTest5test0Em+0x2f8>
    for (size_t i = 0; i < 10; ++i) {
    80003808:	00000b13          	li	s6,0
    size_t byte = 0; size_t bit = 7;
    8000380c:	00700913          	li	s2,7
    80003810:	00000a93          	li	s5,0
    80003814:	1840006f          	j	80003998 <_ZN20KObjectAllocatorTest5test0Em+0x4b8>
        if (objArr[i] != getObjectAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003818:	06048a63          	beqz	s1,8000388c <_ZN20KObjectAllocatorTest5test0Em+0x3ac>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000381c:	00000913          	li	s2,0
    80003820:	0304b783          	ld	a5,48(s1)
    80003824:	02f97663          	bgeu	s2,a5,80003850 <_ZN20KObjectAllocatorTest5test0Em+0x370>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003828:	ffffe097          	auipc	ra,0xffffe
    8000382c:	49c080e7          	jalr	1180(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003830:	0284b783          	ld	a5,40(s1)
    80003834:	00391713          	slli	a4,s2,0x3
    80003838:	00e787b3          	add	a5,a5,a4
    8000383c:	0007b583          	ld	a1,0(a5)
    80003840:	ffffe097          	auipc	ra,0xffffe
    80003844:	610080e7          	jalr	1552(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003848:	00190913          	addi	s2,s2,1
    8000384c:	fd5ff06f          	j	80003820 <_ZN20KObjectAllocatorTest5test0Em+0x340>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003850:	ffffe097          	auipc	ra,0xffffe
    80003854:	474080e7          	jalr	1140(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003858:	0284b583          	ld	a1,40(s1)
    8000385c:	ffffe097          	auipc	ra,0xffffe
    80003860:	5f4080e7          	jalr	1524(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003864:	ffffe097          	auipc	ra,0xffffe
    80003868:	460080e7          	jalr	1120(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    8000386c:	0204b583          	ld	a1,32(s1)
    80003870:	ffffe097          	auipc	ra,0xffffe
    80003874:	5e0080e7          	jalr	1504(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003878:	ffffe097          	auipc	ra,0xffffe
    8000387c:	44c080e7          	jalr	1100(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003880:	00048593          	mv	a1,s1
    80003884:	ffffe097          	auipc	ra,0xffffe
    80003888:	5cc080e7          	jalr	1484(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    8000388c:	00000a13          	li	s4,0
    80003890:	e09ff06f          	j	80003698 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        if (objByte != byte || objBit != bit) { delete objAlloc; return false; }
    80003894:	06048a63          	beqz	s1,80003908 <_ZN20KObjectAllocatorTest5test0Em+0x428>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003898:	00000913          	li	s2,0
    8000389c:	0304b783          	ld	a5,48(s1)
    800038a0:	02f97663          	bgeu	s2,a5,800038cc <_ZN20KObjectAllocatorTest5test0Em+0x3ec>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800038a4:	ffffe097          	auipc	ra,0xffffe
    800038a8:	420080e7          	jalr	1056(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800038ac:	0284b783          	ld	a5,40(s1)
    800038b0:	00391713          	slli	a4,s2,0x3
    800038b4:	00e787b3          	add	a5,a5,a4
    800038b8:	0007b583          	ld	a1,0(a5)
    800038bc:	ffffe097          	auipc	ra,0xffffe
    800038c0:	594080e7          	jalr	1428(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800038c4:	00190913          	addi	s2,s2,1
    800038c8:	fd5ff06f          	j	8000389c <_ZN20KObjectAllocatorTest5test0Em+0x3bc>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800038cc:	ffffe097          	auipc	ra,0xffffe
    800038d0:	3f8080e7          	jalr	1016(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800038d4:	0284b583          	ld	a1,40(s1)
    800038d8:	ffffe097          	auipc	ra,0xffffe
    800038dc:	578080e7          	jalr	1400(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800038e0:	ffffe097          	auipc	ra,0xffffe
    800038e4:	3e4080e7          	jalr	996(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800038e8:	0204b583          	ld	a1,32(s1)
    800038ec:	ffffe097          	auipc	ra,0xffffe
    800038f0:	564080e7          	jalr	1380(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800038f4:	ffffe097          	auipc	ra,0xffffe
    800038f8:	3d0080e7          	jalr	976(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800038fc:	00048593          	mv	a1,s1
    80003900:	ffffe097          	auipc	ra,0xffffe
    80003904:	550080e7          	jalr	1360(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003908:	00000a13          	li	s4,0
    8000390c:	d8dff06f          	j	80003698 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        if (!getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003910:	d80484e3          	beqz	s1,80003698 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003914:	00000913          	li	s2,0
    80003918:	0280006f          	j	80003940 <_ZN20KObjectAllocatorTest5test0Em+0x460>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    8000391c:	ffffe097          	auipc	ra,0xffffe
    80003920:	3a8080e7          	jalr	936(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003924:	0284b783          	ld	a5,40(s1)
    80003928:	00391713          	slli	a4,s2,0x3
    8000392c:	00e787b3          	add	a5,a5,a4
    80003930:	0007b583          	ld	a1,0(a5)
    80003934:	ffffe097          	auipc	ra,0xffffe
    80003938:	51c080e7          	jalr	1308(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000393c:	00190913          	addi	s2,s2,1
    80003940:	0304b783          	ld	a5,48(s1)
    80003944:	fcf96ce3          	bltu	s2,a5,8000391c <_ZN20KObjectAllocatorTest5test0Em+0x43c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003948:	ffffe097          	auipc	ra,0xffffe
    8000394c:	37c080e7          	jalr	892(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003950:	0284b583          	ld	a1,40(s1)
    80003954:	ffffe097          	auipc	ra,0xffffe
    80003958:	4fc080e7          	jalr	1276(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    8000395c:	ffffe097          	auipc	ra,0xffffe
    80003960:	368080e7          	jalr	872(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003964:	0204b583          	ld	a1,32(s1)
    80003968:	ffffe097          	auipc	ra,0xffffe
    8000396c:	4e8080e7          	jalr	1256(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003970:	ffffe097          	auipc	ra,0xffffe
    80003974:	354080e7          	jalr	852(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003978:	00048593          	mv	a1,s1
    8000397c:	ffffe097          	auipc	ra,0xffffe
    80003980:	4d4080e7          	jalr	1236(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003984:	d15ff06f          	j	80003698 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80003988:	001a8a93          	addi	s5,s5,1
    8000398c:	00800913          	li	s2,8
    80003990:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 10; ++i) {
    80003994:	001b0b13          	addi	s6,s6,1
    80003998:	00900793          	li	a5,9
    8000399c:	0967e663          	bltu	a5,s6,80003a28 <_ZN20KObjectAllocatorTest5test0Em+0x548>
        if (objArr[i] != getObjectAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    800039a0:	003b1793          	slli	a5,s6,0x3
    800039a4:	fb040713          	addi	a4,s0,-80
    800039a8:	00f707b3          	add	a5,a4,a5
    800039ac:	fb07ba03          	ld	s4,-80(a5)
    800039b0:	00048693          	mv	a3,s1
    800039b4:	00090613          	mv	a2,s2
    800039b8:	000a8593          	mv	a1,s5
    800039bc:	00098513          	mv	a0,s3
    800039c0:	00000097          	auipc	ra,0x0
    800039c4:	a90080e7          	jalr	-1392(ra) # 80003450 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>
    800039c8:	e4aa18e3          	bne	s4,a0,80003818 <_ZN20KObjectAllocatorTest5test0Em+0x338>
        size_t objByte = getByteOfObject(objArr[i], objAlloc);
    800039cc:	00048613          	mv	a2,s1
    800039d0:	000a0593          	mv	a1,s4
    800039d4:	00098513          	mv	a0,s3
    800039d8:	00000097          	auipc	ra,0x0
    800039dc:	8fc080e7          	jalr	-1796(ra) # 800032d4 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    800039e0:	00050b93          	mv	s7,a0
        size_t objBit = getBitOfObject(objArr[i], objAlloc);
    800039e4:	00048613          	mv	a2,s1
    800039e8:	000a0593          	mv	a1,s4
    800039ec:	00098513          	mv	a0,s3
    800039f0:	00000097          	auipc	ra,0x0
    800039f4:	9dc080e7          	jalr	-1572(ra) # 800033cc <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
        if (objByte != byte || objBit != bit) { delete objAlloc; return false; }
    800039f8:	e97a9ee3          	bne	s5,s7,80003894 <_ZN20KObjectAllocatorTest5test0Em+0x3b4>
    800039fc:	e8a91ce3          	bne	s2,a0,80003894 <_ZN20KObjectAllocatorTest5test0Em+0x3b4>
        if (!getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003a00:	00048693          	mv	a3,s1
    80003a04:	00090613          	mv	a2,s2
    80003a08:	000a8593          	mv	a1,s5
    80003a0c:	00098513          	mv	a0,s3
    80003a10:	00000097          	auipc	ra,0x0
    80003a14:	83c080e7          	jalr	-1988(ra) # 8000324c <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80003a18:	00050a13          	mv	s4,a0
    80003a1c:	ee050ae3          	beqz	a0,80003910 <_ZN20KObjectAllocatorTest5test0Em+0x430>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80003a20:	f60918e3          	bnez	s2,80003990 <_ZN20KObjectAllocatorTest5test0Em+0x4b0>
    80003a24:	f65ff06f          	j	80003988 <_ZN20KObjectAllocatorTest5test0Em+0x4a8>
    for (size_t i = 0; i < 6; ++i) {
    80003a28:	00000a13          	li	s4,0
    80003a2c:	0900006f          	j	80003abc <_ZN20KObjectAllocatorTest5test0Em+0x5dc>
        if (getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003a30:	06048a63          	beqz	s1,80003aa4 <_ZN20KObjectAllocatorTest5test0Em+0x5c4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003a34:	00000913          	li	s2,0
    80003a38:	0304b783          	ld	a5,48(s1)
    80003a3c:	02f97663          	bgeu	s2,a5,80003a68 <_ZN20KObjectAllocatorTest5test0Em+0x588>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003a40:	ffffe097          	auipc	ra,0xffffe
    80003a44:	284080e7          	jalr	644(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003a48:	0284b783          	ld	a5,40(s1)
    80003a4c:	00391713          	slli	a4,s2,0x3
    80003a50:	00e787b3          	add	a5,a5,a4
    80003a54:	0007b583          	ld	a1,0(a5)
    80003a58:	ffffe097          	auipc	ra,0xffffe
    80003a5c:	3f8080e7          	jalr	1016(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003a60:	00190913          	addi	s2,s2,1
    80003a64:	fd5ff06f          	j	80003a38 <_ZN20KObjectAllocatorTest5test0Em+0x558>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003a68:	ffffe097          	auipc	ra,0xffffe
    80003a6c:	25c080e7          	jalr	604(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003a70:	0284b583          	ld	a1,40(s1)
    80003a74:	ffffe097          	auipc	ra,0xffffe
    80003a78:	3dc080e7          	jalr	988(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003a7c:	ffffe097          	auipc	ra,0xffffe
    80003a80:	248080e7          	jalr	584(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003a84:	0204b583          	ld	a1,32(s1)
    80003a88:	ffffe097          	auipc	ra,0xffffe
    80003a8c:	3c8080e7          	jalr	968(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003a90:	ffffe097          	auipc	ra,0xffffe
    80003a94:	234080e7          	jalr	564(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003a98:	00048593          	mv	a1,s1
    80003a9c:	ffffe097          	auipc	ra,0xffffe
    80003aa0:	3b4080e7          	jalr	948(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003aa4:	00000a13          	li	s4,0
    80003aa8:	bf1ff06f          	j	80003698 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80003aac:	001a8a93          	addi	s5,s5,1
    80003ab0:	00800913          	li	s2,8
    80003ab4:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 6; ++i) {
    80003ab8:	001a0a13          	addi	s4,s4,1
    80003abc:	00500793          	li	a5,5
    80003ac0:	0347e463          	bltu	a5,s4,80003ae8 <_ZN20KObjectAllocatorTest5test0Em+0x608>
        if (getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003ac4:	00048693          	mv	a3,s1
    80003ac8:	00090613          	mv	a2,s2
    80003acc:	000a8593          	mv	a1,s5
    80003ad0:	00098513          	mv	a0,s3
    80003ad4:	fffff097          	auipc	ra,0xfffff
    80003ad8:	778080e7          	jalr	1912(ra) # 8000324c <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80003adc:	f4051ae3          	bnez	a0,80003a30 <_ZN20KObjectAllocatorTest5test0Em+0x550>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80003ae0:	fc091ae3          	bnez	s2,80003ab4 <_ZN20KObjectAllocatorTest5test0Em+0x5d4>
    80003ae4:	fc9ff06f          	j	80003aac <_ZN20KObjectAllocatorTest5test0Em+0x5cc>
    objAlloc->freeObject(objArr[4]);
    80003ae8:	f8043583          	ld	a1,-128(s0)
    80003aec:	00048513          	mv	a0,s1
    80003af0:	00002097          	auipc	ra,0x2
    80003af4:	530080e7          	jalr	1328(ra) # 80006020 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[7]);
    80003af8:	f9843583          	ld	a1,-104(s0)
    80003afc:	00048513          	mv	a0,s1
    80003b00:	00002097          	auipc	ra,0x2
    80003b04:	520080e7          	jalr	1312(ra) # 80006020 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[8]);
    80003b08:	fa043583          	ld	a1,-96(s0)
    80003b0c:	00048513          	mv	a0,s1
    80003b10:	00002097          	auipc	ra,0x2
    80003b14:	510080e7          	jalr	1296(ra) # 80006020 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[4] = objAlloc->allocateNewObject();
    80003b18:	00048513          	mv	a0,s1
    80003b1c:	00002097          	auipc	ra,0x2
    80003b20:	784080e7          	jalr	1924(ra) # 800062a0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80003b24:	00050913          	mv	s2,a0
    if (objArr[4] != getObjectAt(1, 7, objAlloc)) { delete objAlloc; return false; }
    80003b28:	00048693          	mv	a3,s1
    80003b2c:	00700613          	li	a2,7
    80003b30:	00100593          	li	a1,1
    80003b34:	00098513          	mv	a0,s3
    80003b38:	00000097          	auipc	ra,0x0
    80003b3c:	918080e7          	jalr	-1768(ra) # 80003450 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>
    80003b40:	08a90063          	beq	s2,a0,80003bc0 <_ZN20KObjectAllocatorTest5test0Em+0x6e0>
    80003b44:	06048a63          	beqz	s1,80003bb8 <_ZN20KObjectAllocatorTest5test0Em+0x6d8>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003b48:	00000913          	li	s2,0
    80003b4c:	0280006f          	j	80003b74 <_ZN20KObjectAllocatorTest5test0Em+0x694>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003b50:	ffffe097          	auipc	ra,0xffffe
    80003b54:	174080e7          	jalr	372(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003b58:	0284b783          	ld	a5,40(s1)
    80003b5c:	00391713          	slli	a4,s2,0x3
    80003b60:	00e787b3          	add	a5,a5,a4
    80003b64:	0007b583          	ld	a1,0(a5)
    80003b68:	ffffe097          	auipc	ra,0xffffe
    80003b6c:	2e8080e7          	jalr	744(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003b70:	00190913          	addi	s2,s2,1
    80003b74:	0304b783          	ld	a5,48(s1)
    80003b78:	fcf96ce3          	bltu	s2,a5,80003b50 <_ZN20KObjectAllocatorTest5test0Em+0x670>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003b7c:	ffffe097          	auipc	ra,0xffffe
    80003b80:	148080e7          	jalr	328(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003b84:	0284b583          	ld	a1,40(s1)
    80003b88:	ffffe097          	auipc	ra,0xffffe
    80003b8c:	2c8080e7          	jalr	712(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003b90:	ffffe097          	auipc	ra,0xffffe
    80003b94:	134080e7          	jalr	308(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003b98:	0204b583          	ld	a1,32(s1)
    80003b9c:	ffffe097          	auipc	ra,0xffffe
    80003ba0:	2b4080e7          	jalr	692(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003ba4:	ffffe097          	auipc	ra,0xffffe
    80003ba8:	120080e7          	jalr	288(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003bac:	00048593          	mv	a1,s1
    80003bb0:	ffffe097          	auipc	ra,0xffffe
    80003bb4:	2a0080e7          	jalr	672(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003bb8:	00000a13          	li	s4,0
    80003bbc:	addff06f          	j	80003698 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    byte = getByteOfObject(objArr[4], objAlloc);
    80003bc0:	00048613          	mv	a2,s1
    80003bc4:	00090593          	mv	a1,s2
    80003bc8:	00098513          	mv	a0,s3
    80003bcc:	fffff097          	auipc	ra,0xfffff
    80003bd0:	708080e7          	jalr	1800(ra) # 800032d4 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    80003bd4:	00050a13          	mv	s4,a0
    bit = getBitOfObject(objArr[4], objAlloc);
    80003bd8:	00048613          	mv	a2,s1
    80003bdc:	00090593          	mv	a1,s2
    80003be0:	00098513          	mv	a0,s3
    80003be4:	fffff097          	auipc	ra,0xfffff
    80003be8:	7e8080e7          	jalr	2024(ra) # 800033cc <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80003bec:	00050913          	mv	s2,a0
    if (byte != 1 || bit != 7) { delete objAlloc; return false; }
    80003bf0:	00100793          	li	a5,1
    80003bf4:	00fa1663          	bne	s4,a5,80003c00 <_ZN20KObjectAllocatorTest5test0Em+0x720>
    80003bf8:	00700793          	li	a5,7
    80003bfc:	08f50063          	beq	a0,a5,80003c7c <_ZN20KObjectAllocatorTest5test0Em+0x79c>
    80003c00:	06048a63          	beqz	s1,80003c74 <_ZN20KObjectAllocatorTest5test0Em+0x794>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003c04:	00000913          	li	s2,0
    80003c08:	0280006f          	j	80003c30 <_ZN20KObjectAllocatorTest5test0Em+0x750>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003c0c:	ffffe097          	auipc	ra,0xffffe
    80003c10:	0b8080e7          	jalr	184(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003c14:	0284b783          	ld	a5,40(s1)
    80003c18:	00391713          	slli	a4,s2,0x3
    80003c1c:	00e787b3          	add	a5,a5,a4
    80003c20:	0007b583          	ld	a1,0(a5)
    80003c24:	ffffe097          	auipc	ra,0xffffe
    80003c28:	22c080e7          	jalr	556(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003c2c:	00190913          	addi	s2,s2,1
    80003c30:	0304b783          	ld	a5,48(s1)
    80003c34:	fcf96ce3          	bltu	s2,a5,80003c0c <_ZN20KObjectAllocatorTest5test0Em+0x72c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003c38:	ffffe097          	auipc	ra,0xffffe
    80003c3c:	08c080e7          	jalr	140(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003c40:	0284b583          	ld	a1,40(s1)
    80003c44:	ffffe097          	auipc	ra,0xffffe
    80003c48:	20c080e7          	jalr	524(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003c4c:	ffffe097          	auipc	ra,0xffffe
    80003c50:	078080e7          	jalr	120(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003c54:	0204b583          	ld	a1,32(s1)
    80003c58:	ffffe097          	auipc	ra,0xffffe
    80003c5c:	1f8080e7          	jalr	504(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003c60:	ffffe097          	auipc	ra,0xffffe
    80003c64:	064080e7          	jalr	100(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003c68:	00048593          	mv	a1,s1
    80003c6c:	ffffe097          	auipc	ra,0xffffe
    80003c70:	1e4080e7          	jalr	484(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003c74:	00000a13          	li	s4,0
    80003c78:	a21ff06f          	j	80003698 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    bool expectedBitValues[16] = {
    80003c7c:	00006797          	auipc	a5,0x6
    80003c80:	91478793          	addi	a5,a5,-1772 # 80009590 <CONSOLE_STATUS+0x580>
    80003c84:	0007b703          	ld	a4,0(a5)
    80003c88:	f4e43823          	sd	a4,-176(s0)
    80003c8c:	0087b783          	ld	a5,8(a5)
    80003c90:	f4f43c23          	sd	a5,-168(s0)
    for (size_t i = 0; i < 16; ++i) {
    80003c94:	00000a13          	li	s4,0
    byte = 0; bit = 7;
    80003c98:	00000a93          	li	s5,0
    80003c9c:	02c0006f          	j	80003cc8 <_ZN20KObjectAllocatorTest5test0Em+0x7e8>
            { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    80003ca0:	00048863          	beqz	s1,80003cb0 <_ZN20KObjectAllocatorTest5test0Em+0x7d0>
    80003ca4:	00048513          	mv	a0,s1
    80003ca8:	ffffe097          	auipc	ra,0xffffe
    80003cac:	cdc080e7          	jalr	-804(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80003cb0:	00000a13          	li	s4,0
    80003cb4:	9e5ff06f          	j	80003698 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    80003cb8:	001a8a93          	addi	s5,s5,1
    80003cbc:	00800913          	li	s2,8
    80003cc0:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 16; ++i) {
    80003cc4:	001a0a13          	addi	s4,s4,1
    80003cc8:	00f00793          	li	a5,15
    80003ccc:	0347ea63          	bltu	a5,s4,80003d00 <_ZN20KObjectAllocatorTest5test0Em+0x820>
        if (expectedBitValues[i] != getValueOfBitAt(byte, bit, objAlloc))
    80003cd0:	fb040793          	addi	a5,s0,-80
    80003cd4:	014787b3          	add	a5,a5,s4
    80003cd8:	fa07cb03          	lbu	s6,-96(a5)
    80003cdc:	00048693          	mv	a3,s1
    80003ce0:	00090613          	mv	a2,s2
    80003ce4:	000a8593          	mv	a1,s5
    80003ce8:	00098513          	mv	a0,s3
    80003cec:	fffff097          	auipc	ra,0xfffff
    80003cf0:	560080e7          	jalr	1376(ra) # 8000324c <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80003cf4:	faab16e3          	bne	s6,a0,80003ca0 <_ZN20KObjectAllocatorTest5test0Em+0x7c0>
            { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    80003cf8:	fc0914e3          	bnez	s2,80003cc0 <_ZN20KObjectAllocatorTest5test0Em+0x7e0>
    80003cfc:	fbdff06f          	j	80003cb8 <_ZN20KObjectAllocatorTest5test0Em+0x7d8>
    delete objAlloc;
    80003d00:	06048e63          	beqz	s1,80003d7c <_ZN20KObjectAllocatorTest5test0Em+0x89c>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003d04:	00000913          	li	s2,0
    80003d08:	0280006f          	j	80003d30 <_ZN20KObjectAllocatorTest5test0Em+0x850>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003d0c:	ffffe097          	auipc	ra,0xffffe
    80003d10:	fb8080e7          	jalr	-72(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003d14:	0284b783          	ld	a5,40(s1)
    80003d18:	00391713          	slli	a4,s2,0x3
    80003d1c:	00e787b3          	add	a5,a5,a4
    80003d20:	0007b583          	ld	a1,0(a5)
    80003d24:	ffffe097          	auipc	ra,0xffffe
    80003d28:	12c080e7          	jalr	300(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003d2c:	00190913          	addi	s2,s2,1
    80003d30:	0304b783          	ld	a5,48(s1)
    80003d34:	fcf96ce3          	bltu	s2,a5,80003d0c <_ZN20KObjectAllocatorTest5test0Em+0x82c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003d38:	ffffe097          	auipc	ra,0xffffe
    80003d3c:	f8c080e7          	jalr	-116(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003d40:	0284b583          	ld	a1,40(s1)
    80003d44:	ffffe097          	auipc	ra,0xffffe
    80003d48:	10c080e7          	jalr	268(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003d4c:	ffffe097          	auipc	ra,0xffffe
    80003d50:	f78080e7          	jalr	-136(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003d54:	0204b583          	ld	a1,32(s1)
    80003d58:	ffffe097          	auipc	ra,0xffffe
    80003d5c:	0f8080e7          	jalr	248(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003d60:	ffffe097          	auipc	ra,0xffffe
    80003d64:	f64080e7          	jalr	-156(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003d68:	00048593          	mv	a1,s1
    80003d6c:	ffffe097          	auipc	ra,0xffffe
    80003d70:	0e4080e7          	jalr	228(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    return true;
    80003d74:	00100a13          	li	s4,1
    }
    80003d78:	921ff06f          	j	80003698 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    80003d7c:	00100a13          	li	s4,1
    80003d80:	919ff06f          	j	80003698 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    80003d84:	00050913          	mv	s2,a0
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 9);
    80003d88:	00048513          	mv	a0,s1
    80003d8c:	ffffe097          	auipc	ra,0xffffe
    80003d90:	bf8080e7          	jalr	-1032(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80003d94:	00090513          	mv	a0,s2
    80003d98:	00008097          	auipc	ra,0x8
    80003d9c:	9d0080e7          	jalr	-1584(ra) # 8000b768 <_Unwind_Resume>

0000000080003da0 <_ZN20KObjectAllocatorTest5test1Em>:

bool KObjectAllocatorTest::test1(size_t size) {
    80003da0:	81010113          	addi	sp,sp,-2032
    80003da4:	7e113423          	sd	ra,2024(sp)
    80003da8:	7e813023          	sd	s0,2016(sp)
    80003dac:	7c913c23          	sd	s1,2008(sp)
    80003db0:	7d213823          	sd	s2,2000(sp)
    80003db4:	7d313423          	sd	s3,1992(sp)
    80003db8:	7d413023          	sd	s4,1984(sp)
    80003dbc:	7b513c23          	sd	s5,1976(sp)
    80003dc0:	7f010413          	addi	s0,sp,2032
    80003dc4:	db010113          	addi	sp,sp,-592
    80003dc8:	00050993          	mv	s3,a0
    80003dcc:	00058913          	mv	s2,a1
        return MemoryAllocator::instance()->kmem_alloc(size);
    80003dd0:	ffffe097          	auipc	ra,0xffffe
    80003dd4:	ef4080e7          	jalr	-268(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003dd8:	04000593          	li	a1,64
    80003ddc:	ffffe097          	auipc	ra,0xffffe
    80003de0:	fcc080e7          	jalr	-52(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80003de4:	00050493          	mv	s1,a0
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    80003de8:	14000793          	li	a5,320
    80003dec:	00f53023          	sd	a5,0(a0)
    80003df0:	00f53423          	sd	a5,8(a0)
    80003df4:	01253c23          	sd	s2,24(a0)
    80003df8:	00100793          	li	a5,1
    80003dfc:	02f53823          	sd	a5,48(a0)
    80003e00:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80003e04:	ffffe097          	auipc	ra,0xffffe
    80003e08:	ec0080e7          	jalr	-320(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003e0c:	0304b583          	ld	a1,48(s1)
    80003e10:	00359593          	slli	a1,a1,0x3
    80003e14:	ffffe097          	auipc	ra,0xffffe
    80003e18:	f94080e7          	jalr	-108(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80003e1c:	02a4b423          	sd	a0,40(s1)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80003e20:	ffffe097          	auipc	ra,0xffffe
    80003e24:	ea4080e7          	jalr	-348(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003e28:	0304b583          	ld	a1,48(s1)
    80003e2c:	00359593          	slli	a1,a1,0x3
    80003e30:	ffffe097          	auipc	ra,0xffffe
    80003e34:	f78080e7          	jalr	-136(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80003e38:	02a4b023          	sd	a0,32(s1)
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80003e3c:	0084b703          	ld	a4,8(s1)
    80003e40:	ff877793          	andi	a5,a4,-8
    80003e44:	02f70463          	beq	a4,a5,80003e6c <_ZN20KObjectAllocatorTest5test1Em+0xcc>
    80003e48:	00800713          	li	a4,8
    80003e4c:	00e787b3          	add	a5,a5,a4
    80003e50:	00f4b423          	sd	a5,8(s1)
    80003e54:	00f4b023          	sd	a5,0(s1)
        memorySizeForBits = numberOfObjects / 8;
    80003e58:	0037d793          	srli	a5,a5,0x3
    80003e5c:	00f4b823          	sd	a5,16(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80003e60:	ffffe097          	auipc	ra,0xffffe
    80003e64:	e64080e7          	jalr	-412(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003e68:	00c0006f          	j	80003e74 <_ZN20KObjectAllocatorTest5test1Em+0xd4>
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80003e6c:	00000713          	li	a4,0
    80003e70:	fddff06f          	j	80003e4c <_ZN20KObjectAllocatorTest5test1Em+0xac>
                memorySizeForBits + initialNumberOfObjects * objectSize
    80003e74:	0104b583          	ld	a1,16(s1)
    80003e78:	0004b783          	ld	a5,0(s1)
    80003e7c:	02f907b3          	mul	a5,s2,a5
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80003e80:	0284ba03          	ld	s4,40(s1)
    80003e84:	00f585b3          	add	a1,a1,a5
    80003e88:	ffffe097          	auipc	ra,0xffffe
    80003e8c:	f20080e7          	jalr	-224(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80003e90:	00aa3023          	sd	a0,0(s4)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    80003e94:	0284b783          	ld	a5,40(s1)
    80003e98:	0007b783          	ld	a5,0(a5)
    80003e9c:	0104b683          	ld	a3,16(s1)
    80003ea0:	0204b703          	ld	a4,32(s1)
    80003ea4:	00d787b3          	add	a5,a5,a3
    80003ea8:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    80003eac:	00000793          	li	a5,0
    80003eb0:	0104b703          	ld	a4,16(s1)
    80003eb4:	00e7fe63          	bgeu	a5,a4,80003ed0 <_ZN20KObjectAllocatorTest5test1Em+0x130>
    80003eb8:	0284b703          	ld	a4,40(s1)
    80003ebc:	00073703          	ld	a4,0(a4)
    80003ec0:	00f70733          	add	a4,a4,a5
    80003ec4:	00070023          	sb	zero,0(a4)
    80003ec8:	00178793          	addi	a5,a5,1
    80003ecc:	fe5ff06f          	j	80003eb0 <_ZN20KObjectAllocatorTest5test1Em+0x110>
    size_t getNumberOfObjects() { return numberOfObjects; }
    80003ed0:	0084b703          	ld	a4,8(s1)
    KObjectAllocator* objAlloc = new KObjectAllocator(size);
    if (objAlloc->getNumberOfObjects() != 320) { delete objAlloc; return false; }
    80003ed4:	14000793          	li	a5,320
    80003ed8:	0af70263          	beq	a4,a5,80003f7c <_ZN20KObjectAllocatorTest5test1Em+0x1dc>
    80003edc:	06048a63          	beqz	s1,80003f50 <_ZN20KObjectAllocatorTest5test1Em+0x1b0>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003ee0:	00000913          	li	s2,0
    80003ee4:	0304b783          	ld	a5,48(s1)
    80003ee8:	02f97663          	bgeu	s2,a5,80003f14 <_ZN20KObjectAllocatorTest5test1Em+0x174>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003eec:	ffffe097          	auipc	ra,0xffffe
    80003ef0:	dd8080e7          	jalr	-552(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003ef4:	0284b783          	ld	a5,40(s1)
    80003ef8:	00391713          	slli	a4,s2,0x3
    80003efc:	00e787b3          	add	a5,a5,a4
    80003f00:	0007b583          	ld	a1,0(a5)
    80003f04:	ffffe097          	auipc	ra,0xffffe
    80003f08:	f4c080e7          	jalr	-180(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003f0c:	00190913          	addi	s2,s2,1
    80003f10:	fd5ff06f          	j	80003ee4 <_ZN20KObjectAllocatorTest5test1Em+0x144>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003f14:	ffffe097          	auipc	ra,0xffffe
    80003f18:	db0080e7          	jalr	-592(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003f1c:	0284b583          	ld	a1,40(s1)
    80003f20:	ffffe097          	auipc	ra,0xffffe
    80003f24:	f30080e7          	jalr	-208(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003f28:	ffffe097          	auipc	ra,0xffffe
    80003f2c:	d9c080e7          	jalr	-612(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003f30:	0204b583          	ld	a1,32(s1)
    80003f34:	ffffe097          	auipc	ra,0xffffe
    80003f38:	f1c080e7          	jalr	-228(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003f3c:	ffffe097          	auipc	ra,0xffffe
    80003f40:	d88080e7          	jalr	-632(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003f44:	00048593          	mv	a1,s1
    80003f48:	ffffe097          	auipc	ra,0xffffe
    80003f4c:	f08080e7          	jalr	-248(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003f50:	00000513          	li	a0,0
        { delete objAlloc; return false; }
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    }
    delete objAlloc;
    return true;
}
    80003f54:	25010113          	addi	sp,sp,592
    80003f58:	7e813083          	ld	ra,2024(sp)
    80003f5c:	7e013403          	ld	s0,2016(sp)
    80003f60:	7d813483          	ld	s1,2008(sp)
    80003f64:	7d013903          	ld	s2,2000(sp)
    80003f68:	7c813983          	ld	s3,1992(sp)
    80003f6c:	7c013a03          	ld	s4,1984(sp)
    80003f70:	7b813a83          	ld	s5,1976(sp)
    80003f74:	7f010113          	addi	sp,sp,2032
    80003f78:	00008067          	ret
    size_t getMemorySizeForBits() { return memorySizeForBits; }
    80003f7c:	0104b703          	ld	a4,16(s1)
    if (objAlloc->getMemorySizeForBits() != 40) { delete objAlloc; return false; }
    80003f80:	02800793          	li	a5,40
    80003f84:	08f70063          	beq	a4,a5,80004004 <_ZN20KObjectAllocatorTest5test1Em+0x264>
    80003f88:	06048a63          	beqz	s1,80003ffc <_ZN20KObjectAllocatorTest5test1Em+0x25c>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003f8c:	00000913          	li	s2,0
    80003f90:	0304b783          	ld	a5,48(s1)
    80003f94:	02f97663          	bgeu	s2,a5,80003fc0 <_ZN20KObjectAllocatorTest5test1Em+0x220>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003f98:	ffffe097          	auipc	ra,0xffffe
    80003f9c:	d2c080e7          	jalr	-724(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003fa0:	0284b783          	ld	a5,40(s1)
    80003fa4:	00391713          	slli	a4,s2,0x3
    80003fa8:	00e787b3          	add	a5,a5,a4
    80003fac:	0007b583          	ld	a1,0(a5)
    80003fb0:	ffffe097          	auipc	ra,0xffffe
    80003fb4:	ea0080e7          	jalr	-352(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003fb8:	00190913          	addi	s2,s2,1
    80003fbc:	fd5ff06f          	j	80003f90 <_ZN20KObjectAllocatorTest5test1Em+0x1f0>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003fc0:	ffffe097          	auipc	ra,0xffffe
    80003fc4:	d04080e7          	jalr	-764(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003fc8:	0284b583          	ld	a1,40(s1)
    80003fcc:	ffffe097          	auipc	ra,0xffffe
    80003fd0:	e84080e7          	jalr	-380(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003fd4:	ffffe097          	auipc	ra,0xffffe
    80003fd8:	cf0080e7          	jalr	-784(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003fdc:	0204b583          	ld	a1,32(s1)
    80003fe0:	ffffe097          	auipc	ra,0xffffe
    80003fe4:	e70080e7          	jalr	-400(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003fe8:	ffffe097          	auipc	ra,0xffffe
    80003fec:	cdc080e7          	jalr	-804(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003ff0:	00048593          	mv	a1,s1
    80003ff4:	ffffe097          	auipc	ra,0xffffe
    80003ff8:	e5c080e7          	jalr	-420(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003ffc:	00000513          	li	a0,0
    80004000:	f55ff06f          	j	80003f54 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    size_t getObjectSize() { return objectSize; }
    80004004:	0184b783          	ld	a5,24(s1)
    if (objAlloc->getObjectSize() != size) { delete objAlloc; return false; }
    80004008:	08f90063          	beq	s2,a5,80004088 <_ZN20KObjectAllocatorTest5test1Em+0x2e8>
    8000400c:	06048a63          	beqz	s1,80004080 <_ZN20KObjectAllocatorTest5test1Em+0x2e0>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004010:	00000913          	li	s2,0
    80004014:	0304b783          	ld	a5,48(s1)
    80004018:	02f97663          	bgeu	s2,a5,80004044 <_ZN20KObjectAllocatorTest5test1Em+0x2a4>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    8000401c:	ffffe097          	auipc	ra,0xffffe
    80004020:	ca8080e7          	jalr	-856(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004024:	0284b783          	ld	a5,40(s1)
    80004028:	00391713          	slli	a4,s2,0x3
    8000402c:	00e787b3          	add	a5,a5,a4
    80004030:	0007b583          	ld	a1,0(a5)
    80004034:	ffffe097          	auipc	ra,0xffffe
    80004038:	e1c080e7          	jalr	-484(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000403c:	00190913          	addi	s2,s2,1
    80004040:	fd5ff06f          	j	80004014 <_ZN20KObjectAllocatorTest5test1Em+0x274>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004044:	ffffe097          	auipc	ra,0xffffe
    80004048:	c80080e7          	jalr	-896(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    8000404c:	0284b583          	ld	a1,40(s1)
    80004050:	ffffe097          	auipc	ra,0xffffe
    80004054:	e00080e7          	jalr	-512(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004058:	ffffe097          	auipc	ra,0xffffe
    8000405c:	c6c080e7          	jalr	-916(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004060:	0204b583          	ld	a1,32(s1)
    80004064:	ffffe097          	auipc	ra,0xffffe
    80004068:	dec080e7          	jalr	-532(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    8000406c:	ffffe097          	auipc	ra,0xffffe
    80004070:	c58080e7          	jalr	-936(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004074:	00048593          	mv	a1,s1
    80004078:	ffffe097          	auipc	ra,0xffffe
    8000407c:	dd8080e7          	jalr	-552(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004080:	00000513          	li	a0,0
    80004084:	ed1ff06f          	j	80003f54 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    void* objArr[320]; for (size_t i = 0; i < 32; objArr[i++] = objAlloc->allocateNewObject());
    80004088:	00000913          	li	s2,0
    8000408c:	01f00793          	li	a5,31
    80004090:	0327ea63          	bltu	a5,s2,800040c4 <_ZN20KObjectAllocatorTest5test1Em+0x324>
    80004094:	00190a13          	addi	s4,s2,1
    80004098:	00048513          	mv	a0,s1
    8000409c:	00002097          	auipc	ra,0x2
    800040a0:	204080e7          	jalr	516(ra) # 800062a0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800040a4:	fffff7b7          	lui	a5,0xfffff
    800040a8:	00391913          	slli	s2,s2,0x3
    800040ac:	fc040713          	addi	a4,s0,-64
    800040b0:	00f707b3          	add	a5,a4,a5
    800040b4:	01278933          	add	s2,a5,s2
    800040b8:	60a93023          	sd	a0,1536(s2)
    800040bc:	000a0913          	mv	s2,s4
    800040c0:	fcdff06f          	j	8000408c <_ZN20KObjectAllocatorTest5test1Em+0x2ec>
    if (getByteOfObject(objArr[31], objAlloc) != 3
    800040c4:	fffff7b7          	lui	a5,0xfffff
    800040c8:	fc040713          	addi	a4,s0,-64
    800040cc:	00f707b3          	add	a5,a4,a5
    800040d0:	6f87b903          	ld	s2,1784(a5) # fffffffffffff6f8 <end+0xffffffff7fff3de8>
    800040d4:	00048613          	mv	a2,s1
    800040d8:	00090593          	mv	a1,s2
    800040dc:	00098513          	mv	a0,s3
    800040e0:	fffff097          	auipc	ra,0xfffff
    800040e4:	1f4080e7          	jalr	500(ra) # 800032d4 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[31], objAlloc) != 0)
    800040e8:	00300793          	li	a5,3
    800040ec:	02f50e63          	beq	a0,a5,80004128 <_ZN20KObjectAllocatorTest5test1Em+0x388>
        { delete objAlloc; return false; }
    800040f0:	0c048c63          	beqz	s1,800041c8 <_ZN20KObjectAllocatorTest5test1Em+0x428>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800040f4:	00000913          	li	s2,0
    800040f8:	0304b783          	ld	a5,48(s1)
    800040fc:	08f97863          	bgeu	s2,a5,8000418c <_ZN20KObjectAllocatorTest5test1Em+0x3ec>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004100:	ffffe097          	auipc	ra,0xffffe
    80004104:	bc4080e7          	jalr	-1084(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004108:	0284b783          	ld	a5,40(s1)
    8000410c:	00391713          	slli	a4,s2,0x3
    80004110:	00e787b3          	add	a5,a5,a4
    80004114:	0007b583          	ld	a1,0(a5)
    80004118:	ffffe097          	auipc	ra,0xffffe
    8000411c:	d38080e7          	jalr	-712(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004120:	00190913          	addi	s2,s2,1
    80004124:	fd5ff06f          	j	800040f8 <_ZN20KObjectAllocatorTest5test1Em+0x358>
        || getBitOfObject(objArr[31], objAlloc) != 0)
    80004128:	00048613          	mv	a2,s1
    8000412c:	00090593          	mv	a1,s2
    80004130:	00098513          	mv	a0,s3
    80004134:	fffff097          	auipc	ra,0xfffff
    80004138:	298080e7          	jalr	664(ra) # 800033cc <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    8000413c:	00050a93          	mv	s5,a0
    80004140:	fa0518e3          	bnez	a0,800040f0 <_ZN20KObjectAllocatorTest5test1Em+0x350>
    if (objAlloc->nextNonTakenByte != 4) { delete objAlloc; return false; }
    80004144:	0384b703          	ld	a4,56(s1)
    80004148:	00400793          	li	a5,4
    8000414c:	08f71263          	bne	a4,a5,800041d0 <_ZN20KObjectAllocatorTest5test1Em+0x430>
    for (size_t i = 32; i < 320; objArr[i++] = objAlloc->allocateNewObject());
    80004150:	02000913          	li	s2,32
    80004154:	13f00793          	li	a5,319
    80004158:	0f27e863          	bltu	a5,s2,80004248 <_ZN20KObjectAllocatorTest5test1Em+0x4a8>
    8000415c:	00190a13          	addi	s4,s2,1
    80004160:	00048513          	mv	a0,s1
    80004164:	00002097          	auipc	ra,0x2
    80004168:	13c080e7          	jalr	316(ra) # 800062a0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    8000416c:	fffff7b7          	lui	a5,0xfffff
    80004170:	00391913          	slli	s2,s2,0x3
    80004174:	fc040713          	addi	a4,s0,-64
    80004178:	00f707b3          	add	a5,a4,a5
    8000417c:	01278933          	add	s2,a5,s2
    80004180:	60a93023          	sd	a0,1536(s2)
    80004184:	000a0913          	mv	s2,s4
    80004188:	fcdff06f          	j	80004154 <_ZN20KObjectAllocatorTest5test1Em+0x3b4>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    8000418c:	ffffe097          	auipc	ra,0xffffe
    80004190:	b38080e7          	jalr	-1224(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004194:	0284b583          	ld	a1,40(s1)
    80004198:	ffffe097          	auipc	ra,0xffffe
    8000419c:	cb8080e7          	jalr	-840(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800041a0:	ffffe097          	auipc	ra,0xffffe
    800041a4:	b24080e7          	jalr	-1244(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800041a8:	0204b583          	ld	a1,32(s1)
    800041ac:	ffffe097          	auipc	ra,0xffffe
    800041b0:	ca4080e7          	jalr	-860(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800041b4:	ffffe097          	auipc	ra,0xffffe
    800041b8:	b10080e7          	jalr	-1264(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800041bc:	00048593          	mv	a1,s1
    800041c0:	ffffe097          	auipc	ra,0xffffe
    800041c4:	c90080e7          	jalr	-880(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        { delete objAlloc; return false; }
    800041c8:	00000513          	li	a0,0
    800041cc:	d89ff06f          	j	80003f54 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    if (objAlloc->nextNonTakenByte != 4) { delete objAlloc; return false; }
    800041d0:	02049663          	bnez	s1,800041fc <_ZN20KObjectAllocatorTest5test1Em+0x45c>
    800041d4:	06c0006f          	j	80004240 <_ZN20KObjectAllocatorTest5test1Em+0x4a0>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800041d8:	ffffe097          	auipc	ra,0xffffe
    800041dc:	aec080e7          	jalr	-1300(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800041e0:	0284b783          	ld	a5,40(s1)
    800041e4:	003a9713          	slli	a4,s5,0x3
    800041e8:	00e787b3          	add	a5,a5,a4
    800041ec:	0007b583          	ld	a1,0(a5) # fffffffffffff000 <end+0xffffffff7fff36f0>
    800041f0:	ffffe097          	auipc	ra,0xffffe
    800041f4:	c60080e7          	jalr	-928(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800041f8:	001a8a93          	addi	s5,s5,1
    800041fc:	0304b783          	ld	a5,48(s1)
    80004200:	fcfaece3          	bltu	s5,a5,800041d8 <_ZN20KObjectAllocatorTest5test1Em+0x438>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004204:	ffffe097          	auipc	ra,0xffffe
    80004208:	ac0080e7          	jalr	-1344(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    8000420c:	0284b583          	ld	a1,40(s1)
    80004210:	ffffe097          	auipc	ra,0xffffe
    80004214:	c40080e7          	jalr	-960(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004218:	ffffe097          	auipc	ra,0xffffe
    8000421c:	aac080e7          	jalr	-1364(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004220:	0204b583          	ld	a1,32(s1)
    80004224:	ffffe097          	auipc	ra,0xffffe
    80004228:	c2c080e7          	jalr	-980(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    8000422c:	ffffe097          	auipc	ra,0xffffe
    80004230:	a98080e7          	jalr	-1384(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004234:	00048593          	mv	a1,s1
    80004238:	ffffe097          	auipc	ra,0xffffe
    8000423c:	c18080e7          	jalr	-1000(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004240:	00000513          	li	a0,0
    80004244:	d11ff06f          	j	80003f54 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    if (objAlloc->nextNonTakenByte != 40) { delete objAlloc; return false; }
    80004248:	0384b703          	ld	a4,56(s1)
    8000424c:	02800793          	li	a5,40
    80004250:	06f70e63          	beq	a4,a5,800042cc <_ZN20KObjectAllocatorTest5test1Em+0x52c>
    80004254:	06048863          	beqz	s1,800042c4 <_ZN20KObjectAllocatorTest5test1Em+0x524>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004258:	0304b783          	ld	a5,48(s1)
    8000425c:	02faf663          	bgeu	s5,a5,80004288 <_ZN20KObjectAllocatorTest5test1Em+0x4e8>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004260:	ffffe097          	auipc	ra,0xffffe
    80004264:	a64080e7          	jalr	-1436(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004268:	0284b783          	ld	a5,40(s1)
    8000426c:	003a9713          	slli	a4,s5,0x3
    80004270:	00e787b3          	add	a5,a5,a4
    80004274:	0007b583          	ld	a1,0(a5)
    80004278:	ffffe097          	auipc	ra,0xffffe
    8000427c:	bd8080e7          	jalr	-1064(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004280:	001a8a93          	addi	s5,s5,1
    80004284:	fd5ff06f          	j	80004258 <_ZN20KObjectAllocatorTest5test1Em+0x4b8>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004288:	ffffe097          	auipc	ra,0xffffe
    8000428c:	a3c080e7          	jalr	-1476(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004290:	0284b583          	ld	a1,40(s1)
    80004294:	ffffe097          	auipc	ra,0xffffe
    80004298:	bbc080e7          	jalr	-1092(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    8000429c:	ffffe097          	auipc	ra,0xffffe
    800042a0:	a28080e7          	jalr	-1496(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800042a4:	0204b583          	ld	a1,32(s1)
    800042a8:	ffffe097          	auipc	ra,0xffffe
    800042ac:	ba8080e7          	jalr	-1112(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800042b0:	ffffe097          	auipc	ra,0xffffe
    800042b4:	a14080e7          	jalr	-1516(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800042b8:	00048593          	mv	a1,s1
    800042bc:	ffffe097          	auipc	ra,0xffffe
    800042c0:	b94080e7          	jalr	-1132(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    800042c4:	00000513          	li	a0,0
    800042c8:	c8dff06f          	j	80003f54 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    objAlloc->freeObject(objArr[7 * 8]);
    800042cc:	fffff7b7          	lui	a5,0xfffff
    800042d0:	fc040713          	addi	a4,s0,-64
    800042d4:	00f707b3          	add	a5,a4,a5
    800042d8:	7c07b583          	ld	a1,1984(a5) # fffffffffffff7c0 <end+0xffffffff7fff3eb0>
    800042dc:	00048513          	mv	a0,s1
    800042e0:	00002097          	auipc	ra,0x2
    800042e4:	d40080e7          	jalr	-704(ra) # 80006020 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[7 * 8] = objAlloc->allocateNewObject();
    800042e8:	00048513          	mv	a0,s1
    800042ec:	00002097          	auipc	ra,0x2
    800042f0:	fb4080e7          	jalr	-76(ra) # 800062a0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800042f4:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[7 * 8], objAlloc) != 7
    800042f8:	00048613          	mv	a2,s1
    800042fc:	00050593          	mv	a1,a0
    80004300:	00098513          	mv	a0,s3
    80004304:	fffff097          	auipc	ra,0xfffff
    80004308:	fd0080e7          	jalr	-48(ra) # 800032d4 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[7 * 8], objAlloc) != 7)
    8000430c:	00700793          	li	a5,7
    80004310:	02f50c63          	beq	a0,a5,80004348 <_ZN20KObjectAllocatorTest5test1Em+0x5a8>
        { delete objAlloc; return false; }
    80004314:	0a048663          	beqz	s1,800043c0 <_ZN20KObjectAllocatorTest5test1Em+0x620>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004318:	0304b783          	ld	a5,48(s1)
    8000431c:	06faf463          	bgeu	s5,a5,80004384 <_ZN20KObjectAllocatorTest5test1Em+0x5e4>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004320:	ffffe097          	auipc	ra,0xffffe
    80004324:	9a4080e7          	jalr	-1628(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004328:	0284b783          	ld	a5,40(s1)
    8000432c:	003a9713          	slli	a4,s5,0x3
    80004330:	00e787b3          	add	a5,a5,a4
    80004334:	0007b583          	ld	a1,0(a5)
    80004338:	ffffe097          	auipc	ra,0xffffe
    8000433c:	b18080e7          	jalr	-1256(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004340:	001a8a93          	addi	s5,s5,1
    80004344:	fd5ff06f          	j	80004318 <_ZN20KObjectAllocatorTest5test1Em+0x578>
        || getBitOfObject(objArr[7 * 8], objAlloc) != 7)
    80004348:	00048613          	mv	a2,s1
    8000434c:	00090593          	mv	a1,s2
    80004350:	00098513          	mv	a0,s3
    80004354:	fffff097          	auipc	ra,0xfffff
    80004358:	078080e7          	jalr	120(ra) # 800033cc <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    8000435c:	00700793          	li	a5,7
    80004360:	faf51ae3          	bne	a0,a5,80004314 <_ZN20KObjectAllocatorTest5test1Em+0x574>
    if (objAlloc->nextNonTakenByte != 7) { delete objAlloc; return false; }
    80004364:	0384b703          	ld	a4,56(s1)
    80004368:	06f70063          	beq	a4,a5,800043c8 <_ZN20KObjectAllocatorTest5test1Em+0x628>
    8000436c:	00048863          	beqz	s1,8000437c <_ZN20KObjectAllocatorTest5test1Em+0x5dc>
    80004370:	00048513          	mv	a0,s1
    80004374:	ffffd097          	auipc	ra,0xffffd
    80004378:	610080e7          	jalr	1552(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    8000437c:	00000513          	li	a0,0
    80004380:	bd5ff06f          	j	80003f54 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004384:	ffffe097          	auipc	ra,0xffffe
    80004388:	940080e7          	jalr	-1728(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    8000438c:	0284b583          	ld	a1,40(s1)
    80004390:	ffffe097          	auipc	ra,0xffffe
    80004394:	ac0080e7          	jalr	-1344(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004398:	ffffe097          	auipc	ra,0xffffe
    8000439c:	92c080e7          	jalr	-1748(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800043a0:	0204b583          	ld	a1,32(s1)
    800043a4:	ffffe097          	auipc	ra,0xffffe
    800043a8:	aac080e7          	jalr	-1364(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800043ac:	ffffe097          	auipc	ra,0xffffe
    800043b0:	918080e7          	jalr	-1768(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800043b4:	00048593          	mv	a1,s1
    800043b8:	ffffe097          	auipc	ra,0xffffe
    800043bc:	a98080e7          	jalr	-1384(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        { delete objAlloc; return false; }
    800043c0:	00000513          	li	a0,0
    800043c4:	b91ff06f          	j	80003f54 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    objAlloc->freeObject(objArr[6 * 8 + 3]);
    800043c8:	fffff937          	lui	s2,0xfffff
    800043cc:	fc040793          	addi	a5,s0,-64
    800043d0:	01278933          	add	s2,a5,s2
    800043d4:	79893583          	ld	a1,1944(s2) # fffffffffffff798 <end+0xffffffff7fff3e88>
    800043d8:	00048513          	mv	a0,s1
    800043dc:	00002097          	auipc	ra,0x2
    800043e0:	c44080e7          	jalr	-956(ra) # 80006020 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[7 * 8 + 4]);
    800043e4:	7e093583          	ld	a1,2016(s2)
    800043e8:	00048513          	mv	a0,s1
    800043ec:	00002097          	auipc	ra,0x2
    800043f0:	c34080e7          	jalr	-972(ra) # 80006020 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[38 * 8 + 5]);
    800043f4:	f6843583          	ld	a1,-152(s0)
    800043f8:	00048513          	mv	a0,s1
    800043fc:	00002097          	auipc	ra,0x2
    80004400:	c24080e7          	jalr	-988(ra) # 80006020 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[7 * 8 + 4] = objAlloc->allocateNewObject();
    80004404:	00048513          	mv	a0,s1
    80004408:	00002097          	auipc	ra,0x2
    8000440c:	e98080e7          	jalr	-360(ra) # 800062a0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004410:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[7 * 8 + 4], objAlloc) != 7
    80004414:	00048613          	mv	a2,s1
    80004418:	00050593          	mv	a1,a0
    8000441c:	00098513          	mv	a0,s3
    80004420:	fffff097          	auipc	ra,0xfffff
    80004424:	eb4080e7          	jalr	-332(ra) # 800032d4 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[7 * 8 + 4], objAlloc) != 3)
    80004428:	00700793          	li	a5,7
    8000442c:	00f50e63          	beq	a0,a5,80004448 <_ZN20KObjectAllocatorTest5test1Em+0x6a8>
        { delete objAlloc; return false; }
    80004430:	00048863          	beqz	s1,80004440 <_ZN20KObjectAllocatorTest5test1Em+0x6a0>
    80004434:	00048513          	mv	a0,s1
    80004438:	ffffd097          	auipc	ra,0xffffd
    8000443c:	54c080e7          	jalr	1356(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80004440:	00000513          	li	a0,0
    80004444:	b11ff06f          	j	80003f54 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        || getBitOfObject(objArr[7 * 8 + 4], objAlloc) != 3)
    80004448:	00048613          	mv	a2,s1
    8000444c:	00090593          	mv	a1,s2
    80004450:	00098513          	mv	a0,s3
    80004454:	fffff097          	auipc	ra,0xfffff
    80004458:	f78080e7          	jalr	-136(ra) # 800033cc <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    8000445c:	00300793          	li	a5,3
    80004460:	fcf518e3          	bne	a0,a5,80004430 <_ZN20KObjectAllocatorTest5test1Em+0x690>
    if (objAlloc->nextNonTakenByte != 7) { delete objAlloc; return false; }
    80004464:	0384b703          	ld	a4,56(s1)
    80004468:	00700793          	li	a5,7
    8000446c:	00f70e63          	beq	a4,a5,80004488 <_ZN20KObjectAllocatorTest5test1Em+0x6e8>
    80004470:	00048863          	beqz	s1,80004480 <_ZN20KObjectAllocatorTest5test1Em+0x6e0>
    80004474:	00048513          	mv	a0,s1
    80004478:	ffffd097          	auipc	ra,0xffffd
    8000447c:	50c080e7          	jalr	1292(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80004480:	00000513          	li	a0,0
    80004484:	ad1ff06f          	j	80003f54 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    objAlloc->freeObject(objArr[3 * 8 + 5]);
    80004488:	fffff7b7          	lui	a5,0xfffff
    8000448c:	fc040713          	addi	a4,s0,-64
    80004490:	00f707b3          	add	a5,a4,a5
    80004494:	6e87b583          	ld	a1,1768(a5) # fffffffffffff6e8 <end+0xffffffff7fff3dd8>
    80004498:	00048513          	mv	a0,s1
    8000449c:	00002097          	auipc	ra,0x2
    800044a0:	b84080e7          	jalr	-1148(ra) # 80006020 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[38 * 8 + 5] = objAlloc->allocateNewObject();
    800044a4:	00048513          	mv	a0,s1
    800044a8:	00002097          	auipc	ra,0x2
    800044ac:	df8080e7          	jalr	-520(ra) # 800062a0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800044b0:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[38 * 8 + 5], objAlloc) != 38
    800044b4:	00048613          	mv	a2,s1
    800044b8:	00050593          	mv	a1,a0
    800044bc:	00098513          	mv	a0,s3
    800044c0:	fffff097          	auipc	ra,0xfffff
    800044c4:	e14080e7          	jalr	-492(ra) # 800032d4 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[38 * 8 + 5], objAlloc) != 2)
    800044c8:	02600793          	li	a5,38
    800044cc:	00f50e63          	beq	a0,a5,800044e8 <_ZN20KObjectAllocatorTest5test1Em+0x748>
    { delete objAlloc; return false; }
    800044d0:	00048863          	beqz	s1,800044e0 <_ZN20KObjectAllocatorTest5test1Em+0x740>
    800044d4:	00048513          	mv	a0,s1
    800044d8:	ffffd097          	auipc	ra,0xffffd
    800044dc:	4ac080e7          	jalr	1196(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    800044e0:	00000513          	li	a0,0
    800044e4:	a71ff06f          	j	80003f54 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        || getBitOfObject(objArr[38 * 8 + 5], objAlloc) != 2)
    800044e8:	00048613          	mv	a2,s1
    800044ec:	00090593          	mv	a1,s2
    800044f0:	00098513          	mv	a0,s3
    800044f4:	fffff097          	auipc	ra,0xfffff
    800044f8:	ed8080e7          	jalr	-296(ra) # 800033cc <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800044fc:	00200793          	li	a5,2
    80004500:	fcf518e3          	bne	a0,a5,800044d0 <_ZN20KObjectAllocatorTest5test1Em+0x730>
    if (objAlloc->nextNonTakenByte != 38) { delete objAlloc; return false; }
    80004504:	0384b703          	ld	a4,56(s1)
    80004508:	02600793          	li	a5,38
    8000450c:	00f70e63          	beq	a4,a5,80004528 <_ZN20KObjectAllocatorTest5test1Em+0x788>
    80004510:	00048863          	beqz	s1,80004520 <_ZN20KObjectAllocatorTest5test1Em+0x780>
    80004514:	00048513          	mv	a0,s1
    80004518:	ffffd097          	auipc	ra,0xffffd
    8000451c:	46c080e7          	jalr	1132(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80004520:	00000513          	li	a0,0
    80004524:	a31ff06f          	j	80003f54 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    objArr[3 * 8 + 5] = objAlloc->allocateNewObject();
    80004528:	00048513          	mv	a0,s1
    8000452c:	00002097          	auipc	ra,0x2
    80004530:	d74080e7          	jalr	-652(ra) # 800062a0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004534:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[3 * 8 + 5], objAlloc) != 3 || getBitOfObject(objArr[3 * 8 + 5], objAlloc) != 2)
    80004538:	00048613          	mv	a2,s1
    8000453c:	00050593          	mv	a1,a0
    80004540:	00098513          	mv	a0,s3
    80004544:	fffff097          	auipc	ra,0xfffff
    80004548:	d90080e7          	jalr	-624(ra) # 800032d4 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    8000454c:	00300793          	li	a5,3
    80004550:	02f50463          	beq	a0,a5,80004578 <_ZN20KObjectAllocatorTest5test1Em+0x7d8>
    if (objAlloc->nextNonTakenByte != 3) { delete objAlloc; return false; }
    80004554:	0384b703          	ld	a4,56(s1)
    80004558:	00300793          	li	a5,3
    8000455c:	02f70c63          	beq	a4,a5,80004594 <_ZN20KObjectAllocatorTest5test1Em+0x7f4>
    80004560:	00048863          	beqz	s1,80004570 <_ZN20KObjectAllocatorTest5test1Em+0x7d0>
    80004564:	00048513          	mv	a0,s1
    80004568:	ffffd097          	auipc	ra,0xffffd
    8000456c:	41c080e7          	jalr	1052(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80004570:	00000513          	li	a0,0
    80004574:	9e1ff06f          	j	80003f54 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    if (getByteOfObject(objArr[3 * 8 + 5], objAlloc) != 3 || getBitOfObject(objArr[3 * 8 + 5], objAlloc) != 2)
    80004578:	00048613          	mv	a2,s1
    8000457c:	00090593          	mv	a1,s2
    80004580:	00098513          	mv	a0,s3
    80004584:	fffff097          	auipc	ra,0xfffff
    80004588:	e48080e7          	jalr	-440(ra) # 800033cc <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    8000458c:	00200793          	li	a5,2
    80004590:	fcf512e3          	bne	a0,a5,80004554 <_ZN20KObjectAllocatorTest5test1Em+0x7b4>
    objArr[6 * 8 + 3] = objAlloc->allocateNewObject();
    80004594:	00048513          	mv	a0,s1
    80004598:	00002097          	auipc	ra,0x2
    8000459c:	d08080e7          	jalr	-760(ra) # 800062a0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800045a0:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[6 * 8 + 3], objAlloc) != 6
    800045a4:	00048613          	mv	a2,s1
    800045a8:	00050593          	mv	a1,a0
    800045ac:	00098513          	mv	a0,s3
    800045b0:	fffff097          	auipc	ra,0xfffff
    800045b4:	d24080e7          	jalr	-732(ra) # 800032d4 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[6 * 8 + 3], objAlloc) != 4)
    800045b8:	00600793          	li	a5,6
    800045bc:	00f50e63          	beq	a0,a5,800045d8 <_ZN20KObjectAllocatorTest5test1Em+0x838>
    { delete objAlloc; return false; }
    800045c0:	00048863          	beqz	s1,800045d0 <_ZN20KObjectAllocatorTest5test1Em+0x830>
    800045c4:	00048513          	mv	a0,s1
    800045c8:	ffffd097          	auipc	ra,0xffffd
    800045cc:	3bc080e7          	jalr	956(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    800045d0:	00000513          	li	a0,0
    800045d4:	981ff06f          	j	80003f54 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        || getBitOfObject(objArr[6 * 8 + 3], objAlloc) != 4)
    800045d8:	00048613          	mv	a2,s1
    800045dc:	00090593          	mv	a1,s2
    800045e0:	00098513          	mv	a0,s3
    800045e4:	fffff097          	auipc	ra,0xfffff
    800045e8:	de8080e7          	jalr	-536(ra) # 800033cc <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800045ec:	00400793          	li	a5,4
    800045f0:	fcf518e3          	bne	a0,a5,800045c0 <_ZN20KObjectAllocatorTest5test1Em+0x820>
    if (objAlloc->nextNonTakenByte != 6) { delete objAlloc; return false; }
    800045f4:	0384b703          	ld	a4,56(s1)
    800045f8:	00600793          	li	a5,6
    800045fc:	0ef71463          	bne	a4,a5,800046e4 <_ZN20KObjectAllocatorTest5test1Em+0x944>
    for (int i = 0; i < 3; ++i) {
    80004600:	00000a93          	li	s5,0
    80004604:	00200793          	li	a5,2
    80004608:	1557ca63          	blt	a5,s5,8000475c <_ZN20KObjectAllocatorTest5test1Em+0x9bc>
        objAlloc->freeObject(objArr[319]);
    8000460c:	fb843583          	ld	a1,-72(s0)
    80004610:	00048513          	mv	a0,s1
    80004614:	00002097          	auipc	ra,0x2
    80004618:	a0c080e7          	jalr	-1524(ra) # 80006020 <_ZN16KObjectAllocator10freeObjectEPv>
        objArr[319] = objAlloc->allocateNewObject();
    8000461c:	00048513          	mv	a0,s1
    80004620:	00002097          	auipc	ra,0x2
    80004624:	c80080e7          	jalr	-896(ra) # 800062a0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004628:	00050913          	mv	s2,a0
    8000462c:	faa43c23          	sd	a0,-72(s0)
        if (getByteOfObject(objArr[319], objAlloc) != 39
    80004630:	00048613          	mv	a2,s1
    80004634:	00050593          	mv	a1,a0
    80004638:	00098513          	mv	a0,s3
    8000463c:	fffff097          	auipc	ra,0xfffff
    80004640:	c98080e7          	jalr	-872(ra) # 800032d4 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
            || getBitOfObject(objArr[319], objAlloc) != 0)
    80004644:	02700793          	li	a5,39
    80004648:	0af51a63          	bne	a0,a5,800046fc <_ZN20KObjectAllocatorTest5test1Em+0x95c>
    8000464c:	00048613          	mv	a2,s1
    80004650:	00090593          	mv	a1,s2
    80004654:	00098513          	mv	a0,s3
    80004658:	fffff097          	auipc	ra,0xfffff
    8000465c:	d74080e7          	jalr	-652(ra) # 800033cc <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80004660:	08051e63          	bnez	a0,800046fc <_ZN20KObjectAllocatorTest5test1Em+0x95c>
        if (objAlloc->nextNonTakenByte != 40) { delete objAlloc; return false; }
    80004664:	0384b703          	ld	a4,56(s1)
    80004668:	02800793          	li	a5,40
    8000466c:	0af71463          	bne	a4,a5,80004714 <_ZN20KObjectAllocatorTest5test1Em+0x974>
        objAlloc->freeObject(objArr[1]);
    80004670:	fffffa37          	lui	s4,0xfffff
    80004674:	fc040793          	addi	a5,s0,-64
    80004678:	01478a33          	add	s4,a5,s4
    8000467c:	608a3583          	ld	a1,1544(s4) # fffffffffffff608 <end+0xffffffff7fff3cf8>
    80004680:	00048513          	mv	a0,s1
    80004684:	00002097          	auipc	ra,0x2
    80004688:	99c080e7          	jalr	-1636(ra) # 80006020 <_ZN16KObjectAllocator10freeObjectEPv>
        objArr[1] = objAlloc->allocateNewObject();
    8000468c:	00048513          	mv	a0,s1
    80004690:	00002097          	auipc	ra,0x2
    80004694:	c10080e7          	jalr	-1008(ra) # 800062a0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004698:	00050913          	mv	s2,a0
    8000469c:	60aa3423          	sd	a0,1544(s4)
        if (getByteOfObject(objArr[1], objAlloc) != 0
    800046a0:	00048613          	mv	a2,s1
    800046a4:	00050593          	mv	a1,a0
    800046a8:	00098513          	mv	a0,s3
    800046ac:	fffff097          	auipc	ra,0xfffff
    800046b0:	c28080e7          	jalr	-984(ra) # 800032d4 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
            || getBitOfObject(objArr[1], objAlloc) != 6)
    800046b4:	06051c63          	bnez	a0,8000472c <_ZN20KObjectAllocatorTest5test1Em+0x98c>
    800046b8:	00048613          	mv	a2,s1
    800046bc:	00090593          	mv	a1,s2
    800046c0:	00098513          	mv	a0,s3
    800046c4:	fffff097          	auipc	ra,0xfffff
    800046c8:	d08080e7          	jalr	-760(ra) # 800033cc <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800046cc:	00600793          	li	a5,6
    800046d0:	04f51e63          	bne	a0,a5,8000472c <_ZN20KObjectAllocatorTest5test1Em+0x98c>
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    800046d4:	0384b783          	ld	a5,56(s1)
    800046d8:	06079663          	bnez	a5,80004744 <_ZN20KObjectAllocatorTest5test1Em+0x9a4>
    for (int i = 0; i < 3; ++i) {
    800046dc:	001a8a9b          	addiw	s5,s5,1
    800046e0:	f25ff06f          	j	80004604 <_ZN20KObjectAllocatorTest5test1Em+0x864>
    if (objAlloc->nextNonTakenByte != 6) { delete objAlloc; return false; }
    800046e4:	00048863          	beqz	s1,800046f4 <_ZN20KObjectAllocatorTest5test1Em+0x954>
    800046e8:	00048513          	mv	a0,s1
    800046ec:	ffffd097          	auipc	ra,0xffffd
    800046f0:	298080e7          	jalr	664(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    800046f4:	00000513          	li	a0,0
    800046f8:	85dff06f          	j	80003f54 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        { delete objAlloc; return false; }
    800046fc:	00048863          	beqz	s1,8000470c <_ZN20KObjectAllocatorTest5test1Em+0x96c>
    80004700:	00048513          	mv	a0,s1
    80004704:	ffffd097          	auipc	ra,0xffffd
    80004708:	280080e7          	jalr	640(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    8000470c:	00000513          	li	a0,0
    80004710:	845ff06f          	j	80003f54 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        if (objAlloc->nextNonTakenByte != 40) { delete objAlloc; return false; }
    80004714:	00048863          	beqz	s1,80004724 <_ZN20KObjectAllocatorTest5test1Em+0x984>
    80004718:	00048513          	mv	a0,s1
    8000471c:	ffffd097          	auipc	ra,0xffffd
    80004720:	268080e7          	jalr	616(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80004724:	00000513          	li	a0,0
    80004728:	82dff06f          	j	80003f54 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        { delete objAlloc; return false; }
    8000472c:	00048863          	beqz	s1,8000473c <_ZN20KObjectAllocatorTest5test1Em+0x99c>
    80004730:	00048513          	mv	a0,s1
    80004734:	ffffd097          	auipc	ra,0xffffd
    80004738:	250080e7          	jalr	592(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    8000473c:	00000513          	li	a0,0
    80004740:	815ff06f          	j	80003f54 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    80004744:	00048863          	beqz	s1,80004754 <_ZN20KObjectAllocatorTest5test1Em+0x9b4>
    80004748:	00048513          	mv	a0,s1
    8000474c:	ffffd097          	auipc	ra,0xffffd
    80004750:	238080e7          	jalr	568(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80004754:	00000513          	li	a0,0
    80004758:	ffcff06f          	j	80003f54 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    delete objAlloc;
    8000475c:	00048c63          	beqz	s1,80004774 <_ZN20KObjectAllocatorTest5test1Em+0x9d4>
    80004760:	00048513          	mv	a0,s1
    80004764:	ffffd097          	auipc	ra,0xffffd
    80004768:	220080e7          	jalr	544(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    return true;
    8000476c:	00100513          	li	a0,1
    80004770:	fe4ff06f          	j	80003f54 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    80004774:	00100513          	li	a0,1
    80004778:	fdcff06f          	j	80003f54 <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    8000477c:	00050913          	mv	s2,a0
    KObjectAllocator* objAlloc = new KObjectAllocator(size);
    80004780:	00048513          	mv	a0,s1
    80004784:	ffffd097          	auipc	ra,0xffffd
    80004788:	200080e7          	jalr	512(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    8000478c:	00090513          	mv	a0,s2
    80004790:	00007097          	auipc	ra,0x7
    80004794:	fd8080e7          	jalr	-40(ra) # 8000b768 <_Unwind_Resume>

0000000080004798 <_ZN20KObjectAllocatorTest5test2Em>:

bool KObjectAllocatorTest::test2(size_t size) {
    80004798:	f5010113          	addi	sp,sp,-176
    8000479c:	0a113423          	sd	ra,168(sp)
    800047a0:	0a813023          	sd	s0,160(sp)
    800047a4:	08913c23          	sd	s1,152(sp)
    800047a8:	09213823          	sd	s2,144(sp)
    800047ac:	09313423          	sd	s3,136(sp)
    800047b0:	09413023          	sd	s4,128(sp)
    800047b4:	07513c23          	sd	s5,120(sp)
    800047b8:	07613823          	sd	s6,112(sp)
    800047bc:	07713423          	sd	s7,104(sp)
    800047c0:	07813023          	sd	s8,96(sp)
    800047c4:	0b010413          	addi	s0,sp,176
    800047c8:	00050993          	mv	s3,a0
    800047cc:	00058913          	mv	s2,a1
        return MemoryAllocator::instance()->kmem_alloc(size);
    800047d0:	ffffd097          	auipc	ra,0xffffd
    800047d4:	4f4080e7          	jalr	1268(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800047d8:	04000593          	li	a1,64
    800047dc:	ffffd097          	auipc	ra,0xffffd
    800047e0:	5cc080e7          	jalr	1484(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    800047e4:	00050493          	mv	s1,a0
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    800047e8:	00300793          	li	a5,3
    800047ec:	00f53023          	sd	a5,0(a0)
    800047f0:	00f53423          	sd	a5,8(a0)
    800047f4:	01253c23          	sd	s2,24(a0)
    800047f8:	00100793          	li	a5,1
    800047fc:	02f53823          	sd	a5,48(a0)
    80004800:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80004804:	ffffd097          	auipc	ra,0xffffd
    80004808:	4c0080e7          	jalr	1216(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    8000480c:	0304b583          	ld	a1,48(s1)
    80004810:	00359593          	slli	a1,a1,0x3
    80004814:	ffffd097          	auipc	ra,0xffffd
    80004818:	594080e7          	jalr	1428(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    8000481c:	02a4b423          	sd	a0,40(s1)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80004820:	ffffd097          	auipc	ra,0xffffd
    80004824:	4a4080e7          	jalr	1188(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004828:	0304b583          	ld	a1,48(s1)
    8000482c:	00359593          	slli	a1,a1,0x3
    80004830:	ffffd097          	auipc	ra,0xffffd
    80004834:	578080e7          	jalr	1400(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80004838:	02a4b023          	sd	a0,32(s1)
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    8000483c:	0084b703          	ld	a4,8(s1)
    80004840:	ff877793          	andi	a5,a4,-8
    80004844:	02f70463          	beq	a4,a5,8000486c <_ZN20KObjectAllocatorTest5test2Em+0xd4>
    80004848:	00800713          	li	a4,8
    8000484c:	00e787b3          	add	a5,a5,a4
    80004850:	00f4b423          	sd	a5,8(s1)
    80004854:	00f4b023          	sd	a5,0(s1)
        memorySizeForBits = numberOfObjects / 8;
    80004858:	0037d793          	srli	a5,a5,0x3
    8000485c:	00f4b823          	sd	a5,16(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80004860:	ffffd097          	auipc	ra,0xffffd
    80004864:	464080e7          	jalr	1124(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004868:	00c0006f          	j	80004874 <_ZN20KObjectAllocatorTest5test2Em+0xdc>
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    8000486c:	00000713          	li	a4,0
    80004870:	fddff06f          	j	8000484c <_ZN20KObjectAllocatorTest5test2Em+0xb4>
                memorySizeForBits + initialNumberOfObjects * objectSize
    80004874:	0104b583          	ld	a1,16(s1)
    80004878:	0004b783          	ld	a5,0(s1)
    8000487c:	02f907b3          	mul	a5,s2,a5
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80004880:	0284ba03          	ld	s4,40(s1)
    80004884:	00f585b3          	add	a1,a1,a5
    80004888:	ffffd097          	auipc	ra,0xffffd
    8000488c:	520080e7          	jalr	1312(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80004890:	00aa3023          	sd	a0,0(s4)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    80004894:	0284b783          	ld	a5,40(s1)
    80004898:	0007b783          	ld	a5,0(a5)
    8000489c:	0104b683          	ld	a3,16(s1)
    800048a0:	0204b703          	ld	a4,32(s1)
    800048a4:	00d787b3          	add	a5,a5,a3
    800048a8:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    800048ac:	00000793          	li	a5,0
    800048b0:	0104b703          	ld	a4,16(s1)
    800048b4:	00e7fe63          	bgeu	a5,a4,800048d0 <_ZN20KObjectAllocatorTest5test2Em+0x138>
    800048b8:	0284b703          	ld	a4,40(s1)
    800048bc:	00073703          	ld	a4,0(a4)
    800048c0:	00f70733          	add	a4,a4,a5
    800048c4:	00070023          	sb	zero,0(a4)
    800048c8:	00178793          	addi	a5,a5,1
    800048cc:	fe5ff06f          	j	800048b0 <_ZN20KObjectAllocatorTest5test2Em+0x118>
    size_t getNumberOfObjects() { return numberOfObjects; }
    800048d0:	0084bb83          	ld	s7,8(s1)
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 3);
    if (objAlloc->getNumberOfObjects() != 8) { delete objAlloc; return false; }
    800048d4:	00800793          	li	a5,8
    800048d8:	0afb8863          	beq	s7,a5,80004988 <_ZN20KObjectAllocatorTest5test2Em+0x1f0>
    800048dc:	06048a63          	beqz	s1,80004950 <_ZN20KObjectAllocatorTest5test2Em+0x1b8>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800048e0:	00000913          	li	s2,0
    800048e4:	0280006f          	j	8000490c <_ZN20KObjectAllocatorTest5test2Em+0x174>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800048e8:	ffffd097          	auipc	ra,0xffffd
    800048ec:	3dc080e7          	jalr	988(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800048f0:	0284b783          	ld	a5,40(s1)
    800048f4:	00391713          	slli	a4,s2,0x3
    800048f8:	00e787b3          	add	a5,a5,a4
    800048fc:	0007b583          	ld	a1,0(a5)
    80004900:	ffffd097          	auipc	ra,0xffffd
    80004904:	550080e7          	jalr	1360(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004908:	00190913          	addi	s2,s2,1
    8000490c:	0304b783          	ld	a5,48(s1)
    80004910:	fcf96ce3          	bltu	s2,a5,800048e8 <_ZN20KObjectAllocatorTest5test2Em+0x150>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004914:	ffffd097          	auipc	ra,0xffffd
    80004918:	3b0080e7          	jalr	944(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    8000491c:	0284b583          	ld	a1,40(s1)
    80004920:	ffffd097          	auipc	ra,0xffffd
    80004924:	530080e7          	jalr	1328(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004928:	ffffd097          	auipc	ra,0xffffd
    8000492c:	39c080e7          	jalr	924(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004930:	0204b583          	ld	a1,32(s1)
    80004934:	ffffd097          	auipc	ra,0xffffd
    80004938:	51c080e7          	jalr	1308(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    8000493c:	ffffd097          	auipc	ra,0xffffd
    80004940:	388080e7          	jalr	904(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004944:	00048593          	mv	a1,s1
    80004948:	ffffd097          	auipc	ra,0xffffd
    8000494c:	508080e7          	jalr	1288(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004950:	00000a13          	li	s4,0
        if (expectedBitValues[i] != getValueOfBitAt(byte, bit, objAlloc))
        { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    }
    delete objAlloc;
    return true;
}
    80004954:	000a0513          	mv	a0,s4
    80004958:	0a813083          	ld	ra,168(sp)
    8000495c:	0a013403          	ld	s0,160(sp)
    80004960:	09813483          	ld	s1,152(sp)
    80004964:	09013903          	ld	s2,144(sp)
    80004968:	08813983          	ld	s3,136(sp)
    8000496c:	08013a03          	ld	s4,128(sp)
    80004970:	07813a83          	ld	s5,120(sp)
    80004974:	07013b03          	ld	s6,112(sp)
    80004978:	06813b83          	ld	s7,104(sp)
    8000497c:	06013c03          	ld	s8,96(sp)
    80004980:	0b010113          	addi	sp,sp,176
    80004984:	00008067          	ret
    size_t getMemorySizeForBits() { return memorySizeForBits; }
    80004988:	0104b703          	ld	a4,16(s1)
    if (objAlloc->getMemorySizeForBits() != 1) { delete objAlloc; return false; }
    8000498c:	00100793          	li	a5,1
    80004990:	08f70063          	beq	a4,a5,80004a10 <_ZN20KObjectAllocatorTest5test2Em+0x278>
    80004994:	06048a63          	beqz	s1,80004a08 <_ZN20KObjectAllocatorTest5test2Em+0x270>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004998:	00000913          	li	s2,0
    8000499c:	0280006f          	j	800049c4 <_ZN20KObjectAllocatorTest5test2Em+0x22c>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800049a0:	ffffd097          	auipc	ra,0xffffd
    800049a4:	324080e7          	jalr	804(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800049a8:	0284b783          	ld	a5,40(s1)
    800049ac:	00391713          	slli	a4,s2,0x3
    800049b0:	00e787b3          	add	a5,a5,a4
    800049b4:	0007b583          	ld	a1,0(a5)
    800049b8:	ffffd097          	auipc	ra,0xffffd
    800049bc:	498080e7          	jalr	1176(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800049c0:	00190913          	addi	s2,s2,1
    800049c4:	0304b783          	ld	a5,48(s1)
    800049c8:	fcf96ce3          	bltu	s2,a5,800049a0 <_ZN20KObjectAllocatorTest5test2Em+0x208>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800049cc:	ffffd097          	auipc	ra,0xffffd
    800049d0:	2f8080e7          	jalr	760(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800049d4:	0284b583          	ld	a1,40(s1)
    800049d8:	ffffd097          	auipc	ra,0xffffd
    800049dc:	478080e7          	jalr	1144(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800049e0:	ffffd097          	auipc	ra,0xffffd
    800049e4:	2e4080e7          	jalr	740(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800049e8:	0204b583          	ld	a1,32(s1)
    800049ec:	ffffd097          	auipc	ra,0xffffd
    800049f0:	464080e7          	jalr	1124(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800049f4:	ffffd097          	auipc	ra,0xffffd
    800049f8:	2d0080e7          	jalr	720(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800049fc:	00048593          	mv	a1,s1
    80004a00:	ffffd097          	auipc	ra,0xffffd
    80004a04:	450080e7          	jalr	1104(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004a08:	00000a13          	li	s4,0
    80004a0c:	f49ff06f          	j	80004954 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    size_t getObjectSize() { return objectSize; }
    80004a10:	0184b783          	ld	a5,24(s1)
    if (objAlloc->getObjectSize() != size) { delete objAlloc; return false; }
    80004a14:	08f90063          	beq	s2,a5,80004a94 <_ZN20KObjectAllocatorTest5test2Em+0x2fc>
    80004a18:	06048a63          	beqz	s1,80004a8c <_ZN20KObjectAllocatorTest5test2Em+0x2f4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004a1c:	00000913          	li	s2,0
    80004a20:	0304b783          	ld	a5,48(s1)
    80004a24:	02f97663          	bgeu	s2,a5,80004a50 <_ZN20KObjectAllocatorTest5test2Em+0x2b8>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004a28:	ffffd097          	auipc	ra,0xffffd
    80004a2c:	29c080e7          	jalr	668(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004a30:	0284b783          	ld	a5,40(s1)
    80004a34:	00391713          	slli	a4,s2,0x3
    80004a38:	00e787b3          	add	a5,a5,a4
    80004a3c:	0007b583          	ld	a1,0(a5)
    80004a40:	ffffd097          	auipc	ra,0xffffd
    80004a44:	410080e7          	jalr	1040(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004a48:	00190913          	addi	s2,s2,1
    80004a4c:	fd5ff06f          	j	80004a20 <_ZN20KObjectAllocatorTest5test2Em+0x288>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004a50:	ffffd097          	auipc	ra,0xffffd
    80004a54:	274080e7          	jalr	628(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004a58:	0284b583          	ld	a1,40(s1)
    80004a5c:	ffffd097          	auipc	ra,0xffffd
    80004a60:	3f4080e7          	jalr	1012(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004a64:	ffffd097          	auipc	ra,0xffffd
    80004a68:	260080e7          	jalr	608(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004a6c:	0204b583          	ld	a1,32(s1)
    80004a70:	ffffd097          	auipc	ra,0xffffd
    80004a74:	3e0080e7          	jalr	992(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004a78:	ffffd097          	auipc	ra,0xffffd
    80004a7c:	24c080e7          	jalr	588(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004a80:	00048593          	mv	a1,s1
    80004a84:	ffffd097          	auipc	ra,0xffffd
    80004a88:	3cc080e7          	jalr	972(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004a8c:	00000a13          	li	s4,0
    80004a90:	ec5ff06f          	j	80004954 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    void* objArr[10]; for (size_t i = 0; i < 10; objArr[i++] = objAlloc->allocateNewObject());
    80004a94:	00000913          	li	s2,0
    80004a98:	00900793          	li	a5,9
    80004a9c:	0327e663          	bltu	a5,s2,80004ac8 <_ZN20KObjectAllocatorTest5test2Em+0x330>
    80004aa0:	00190a13          	addi	s4,s2,1
    80004aa4:	00048513          	mv	a0,s1
    80004aa8:	00001097          	auipc	ra,0x1
    80004aac:	7f8080e7          	jalr	2040(ra) # 800062a0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004ab0:	00391913          	slli	s2,s2,0x3
    80004ab4:	fb040793          	addi	a5,s0,-80
    80004ab8:	01278933          	add	s2,a5,s2
    80004abc:	faa93823          	sd	a0,-80(s2)
    80004ac0:	000a0913          	mv	s2,s4
    80004ac4:	fd5ff06f          	j	80004a98 <_ZN20KObjectAllocatorTest5test2Em+0x300>
    for (size_t i = 0; i < 10; ++i) {
    80004ac8:	00000b13          	li	s6,0
    size_t byte = 0; size_t bit = 7;
    80004acc:	00700913          	li	s2,7
    80004ad0:	00000a93          	li	s5,0
    80004ad4:	1840006f          	j	80004c58 <_ZN20KObjectAllocatorTest5test2Em+0x4c0>
        if (objArr[i] != getObjectAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004ad8:	06048a63          	beqz	s1,80004b4c <_ZN20KObjectAllocatorTest5test2Em+0x3b4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004adc:	00000913          	li	s2,0
    80004ae0:	0304b783          	ld	a5,48(s1)
    80004ae4:	02f97663          	bgeu	s2,a5,80004b10 <_ZN20KObjectAllocatorTest5test2Em+0x378>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004ae8:	ffffd097          	auipc	ra,0xffffd
    80004aec:	1dc080e7          	jalr	476(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004af0:	0284b783          	ld	a5,40(s1)
    80004af4:	00391713          	slli	a4,s2,0x3
    80004af8:	00e787b3          	add	a5,a5,a4
    80004afc:	0007b583          	ld	a1,0(a5)
    80004b00:	ffffd097          	auipc	ra,0xffffd
    80004b04:	350080e7          	jalr	848(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004b08:	00190913          	addi	s2,s2,1
    80004b0c:	fd5ff06f          	j	80004ae0 <_ZN20KObjectAllocatorTest5test2Em+0x348>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004b10:	ffffd097          	auipc	ra,0xffffd
    80004b14:	1b4080e7          	jalr	436(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004b18:	0284b583          	ld	a1,40(s1)
    80004b1c:	ffffd097          	auipc	ra,0xffffd
    80004b20:	334080e7          	jalr	820(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004b24:	ffffd097          	auipc	ra,0xffffd
    80004b28:	1a0080e7          	jalr	416(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004b2c:	0204b583          	ld	a1,32(s1)
    80004b30:	ffffd097          	auipc	ra,0xffffd
    80004b34:	320080e7          	jalr	800(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004b38:	ffffd097          	auipc	ra,0xffffd
    80004b3c:	18c080e7          	jalr	396(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004b40:	00048593          	mv	a1,s1
    80004b44:	ffffd097          	auipc	ra,0xffffd
    80004b48:	30c080e7          	jalr	780(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004b4c:	00000a13          	li	s4,0
    80004b50:	e05ff06f          	j	80004954 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
        if (objByte != byte || objBit != bit) { delete objAlloc; return false; }
    80004b54:	06048a63          	beqz	s1,80004bc8 <_ZN20KObjectAllocatorTest5test2Em+0x430>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004b58:	00000913          	li	s2,0
    80004b5c:	0304b783          	ld	a5,48(s1)
    80004b60:	02f97663          	bgeu	s2,a5,80004b8c <_ZN20KObjectAllocatorTest5test2Em+0x3f4>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004b64:	ffffd097          	auipc	ra,0xffffd
    80004b68:	160080e7          	jalr	352(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004b6c:	0284b783          	ld	a5,40(s1)
    80004b70:	00391713          	slli	a4,s2,0x3
    80004b74:	00e787b3          	add	a5,a5,a4
    80004b78:	0007b583          	ld	a1,0(a5)
    80004b7c:	ffffd097          	auipc	ra,0xffffd
    80004b80:	2d4080e7          	jalr	724(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004b84:	00190913          	addi	s2,s2,1
    80004b88:	fd5ff06f          	j	80004b5c <_ZN20KObjectAllocatorTest5test2Em+0x3c4>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004b8c:	ffffd097          	auipc	ra,0xffffd
    80004b90:	138080e7          	jalr	312(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004b94:	0284b583          	ld	a1,40(s1)
    80004b98:	ffffd097          	auipc	ra,0xffffd
    80004b9c:	2b8080e7          	jalr	696(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004ba0:	ffffd097          	auipc	ra,0xffffd
    80004ba4:	124080e7          	jalr	292(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004ba8:	0204b583          	ld	a1,32(s1)
    80004bac:	ffffd097          	auipc	ra,0xffffd
    80004bb0:	2a4080e7          	jalr	676(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004bb4:	ffffd097          	auipc	ra,0xffffd
    80004bb8:	110080e7          	jalr	272(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004bbc:	00048593          	mv	a1,s1
    80004bc0:	ffffd097          	auipc	ra,0xffffd
    80004bc4:	290080e7          	jalr	656(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004bc8:	00000a13          	li	s4,0
    80004bcc:	d89ff06f          	j	80004954 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
        if (!getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004bd0:	d80482e3          	beqz	s1,80004954 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004bd4:	00000913          	li	s2,0
    80004bd8:	0280006f          	j	80004c00 <_ZN20KObjectAllocatorTest5test2Em+0x468>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004bdc:	ffffd097          	auipc	ra,0xffffd
    80004be0:	0e8080e7          	jalr	232(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004be4:	0284b783          	ld	a5,40(s1)
    80004be8:	00391713          	slli	a4,s2,0x3
    80004bec:	00e787b3          	add	a5,a5,a4
    80004bf0:	0007b583          	ld	a1,0(a5)
    80004bf4:	ffffd097          	auipc	ra,0xffffd
    80004bf8:	25c080e7          	jalr	604(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004bfc:	00190913          	addi	s2,s2,1
    80004c00:	0304b783          	ld	a5,48(s1)
    80004c04:	fcf96ce3          	bltu	s2,a5,80004bdc <_ZN20KObjectAllocatorTest5test2Em+0x444>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004c08:	ffffd097          	auipc	ra,0xffffd
    80004c0c:	0bc080e7          	jalr	188(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004c10:	0284b583          	ld	a1,40(s1)
    80004c14:	ffffd097          	auipc	ra,0xffffd
    80004c18:	23c080e7          	jalr	572(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004c1c:	ffffd097          	auipc	ra,0xffffd
    80004c20:	0a8080e7          	jalr	168(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004c24:	0204b583          	ld	a1,32(s1)
    80004c28:	ffffd097          	auipc	ra,0xffffd
    80004c2c:	228080e7          	jalr	552(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004c30:	ffffd097          	auipc	ra,0xffffd
    80004c34:	094080e7          	jalr	148(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004c38:	00048593          	mv	a1,s1
    80004c3c:	ffffd097          	auipc	ra,0xffffd
    80004c40:	214080e7          	jalr	532(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004c44:	d11ff06f          	j	80004954 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80004c48:	001a8a93          	addi	s5,s5,1
    80004c4c:	000b8913          	mv	s2,s7
    80004c50:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 10; ++i) {
    80004c54:	001b0b13          	addi	s6,s6,1
    80004c58:	00900793          	li	a5,9
    80004c5c:	0967e663          	bltu	a5,s6,80004ce8 <_ZN20KObjectAllocatorTest5test2Em+0x550>
        if (objArr[i] != getObjectAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004c60:	003b1793          	slli	a5,s6,0x3
    80004c64:	fb040713          	addi	a4,s0,-80
    80004c68:	00f707b3          	add	a5,a4,a5
    80004c6c:	fb07ba03          	ld	s4,-80(a5)
    80004c70:	00048693          	mv	a3,s1
    80004c74:	00090613          	mv	a2,s2
    80004c78:	000a8593          	mv	a1,s5
    80004c7c:	00098513          	mv	a0,s3
    80004c80:	ffffe097          	auipc	ra,0xffffe
    80004c84:	7d0080e7          	jalr	2000(ra) # 80003450 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>
    80004c88:	e4aa18e3          	bne	s4,a0,80004ad8 <_ZN20KObjectAllocatorTest5test2Em+0x340>
        size_t objByte = getByteOfObject(objArr[i], objAlloc);
    80004c8c:	00048613          	mv	a2,s1
    80004c90:	000a0593          	mv	a1,s4
    80004c94:	00098513          	mv	a0,s3
    80004c98:	ffffe097          	auipc	ra,0xffffe
    80004c9c:	63c080e7          	jalr	1596(ra) # 800032d4 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    80004ca0:	00050c13          	mv	s8,a0
        size_t objBit = getBitOfObject(objArr[i], objAlloc);
    80004ca4:	00048613          	mv	a2,s1
    80004ca8:	000a0593          	mv	a1,s4
    80004cac:	00098513          	mv	a0,s3
    80004cb0:	ffffe097          	auipc	ra,0xffffe
    80004cb4:	71c080e7          	jalr	1820(ra) # 800033cc <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
        if (objByte != byte || objBit != bit) { delete objAlloc; return false; }
    80004cb8:	e98a9ee3          	bne	s5,s8,80004b54 <_ZN20KObjectAllocatorTest5test2Em+0x3bc>
    80004cbc:	e8a91ce3          	bne	s2,a0,80004b54 <_ZN20KObjectAllocatorTest5test2Em+0x3bc>
        if (!getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004cc0:	00048693          	mv	a3,s1
    80004cc4:	00090613          	mv	a2,s2
    80004cc8:	000a8593          	mv	a1,s5
    80004ccc:	00098513          	mv	a0,s3
    80004cd0:	ffffe097          	auipc	ra,0xffffe
    80004cd4:	57c080e7          	jalr	1404(ra) # 8000324c <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80004cd8:	00050a13          	mv	s4,a0
    80004cdc:	ee050ae3          	beqz	a0,80004bd0 <_ZN20KObjectAllocatorTest5test2Em+0x438>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80004ce0:	f60918e3          	bnez	s2,80004c50 <_ZN20KObjectAllocatorTest5test2Em+0x4b8>
    80004ce4:	f65ff06f          	j	80004c48 <_ZN20KObjectAllocatorTest5test2Em+0x4b0>
    for (size_t i = 0; i < 6; ++i) {
    80004ce8:	00000a13          	li	s4,0
    80004cec:	0900006f          	j	80004d7c <_ZN20KObjectAllocatorTest5test2Em+0x5e4>
        if (getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004cf0:	06048a63          	beqz	s1,80004d64 <_ZN20KObjectAllocatorTest5test2Em+0x5cc>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004cf4:	00000913          	li	s2,0
    80004cf8:	0304b783          	ld	a5,48(s1)
    80004cfc:	02f97663          	bgeu	s2,a5,80004d28 <_ZN20KObjectAllocatorTest5test2Em+0x590>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004d00:	ffffd097          	auipc	ra,0xffffd
    80004d04:	fc4080e7          	jalr	-60(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004d08:	0284b783          	ld	a5,40(s1)
    80004d0c:	00391713          	slli	a4,s2,0x3
    80004d10:	00e787b3          	add	a5,a5,a4
    80004d14:	0007b583          	ld	a1,0(a5)
    80004d18:	ffffd097          	auipc	ra,0xffffd
    80004d1c:	138080e7          	jalr	312(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004d20:	00190913          	addi	s2,s2,1
    80004d24:	fd5ff06f          	j	80004cf8 <_ZN20KObjectAllocatorTest5test2Em+0x560>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004d28:	ffffd097          	auipc	ra,0xffffd
    80004d2c:	f9c080e7          	jalr	-100(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004d30:	0284b583          	ld	a1,40(s1)
    80004d34:	ffffd097          	auipc	ra,0xffffd
    80004d38:	11c080e7          	jalr	284(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004d3c:	ffffd097          	auipc	ra,0xffffd
    80004d40:	f88080e7          	jalr	-120(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004d44:	0204b583          	ld	a1,32(s1)
    80004d48:	ffffd097          	auipc	ra,0xffffd
    80004d4c:	108080e7          	jalr	264(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004d50:	ffffd097          	auipc	ra,0xffffd
    80004d54:	f74080e7          	jalr	-140(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004d58:	00048593          	mv	a1,s1
    80004d5c:	ffffd097          	auipc	ra,0xffffd
    80004d60:	0f4080e7          	jalr	244(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004d64:	00000a13          	li	s4,0
    80004d68:	bedff06f          	j	80004954 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80004d6c:	001a8a93          	addi	s5,s5,1
    80004d70:	000b8913          	mv	s2,s7
    80004d74:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 6; ++i) {
    80004d78:	001a0a13          	addi	s4,s4,1
    80004d7c:	00500793          	li	a5,5
    80004d80:	0347e463          	bltu	a5,s4,80004da8 <_ZN20KObjectAllocatorTest5test2Em+0x610>
        if (getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80004d84:	00048693          	mv	a3,s1
    80004d88:	00090613          	mv	a2,s2
    80004d8c:	000a8593          	mv	a1,s5
    80004d90:	00098513          	mv	a0,s3
    80004d94:	ffffe097          	auipc	ra,0xffffe
    80004d98:	4b8080e7          	jalr	1208(ra) # 8000324c <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80004d9c:	f4051ae3          	bnez	a0,80004cf0 <_ZN20KObjectAllocatorTest5test2Em+0x558>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80004da0:	fc091ae3          	bnez	s2,80004d74 <_ZN20KObjectAllocatorTest5test2Em+0x5dc>
    80004da4:	fc9ff06f          	j	80004d6c <_ZN20KObjectAllocatorTest5test2Em+0x5d4>
    objAlloc->freeObject(objArr[4]);
    80004da8:	f8043583          	ld	a1,-128(s0)
    80004dac:	00048513          	mv	a0,s1
    80004db0:	00001097          	auipc	ra,0x1
    80004db4:	270080e7          	jalr	624(ra) # 80006020 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[7]);
    80004db8:	f9843583          	ld	a1,-104(s0)
    80004dbc:	00048513          	mv	a0,s1
    80004dc0:	00001097          	auipc	ra,0x1
    80004dc4:	260080e7          	jalr	608(ra) # 80006020 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[8]);
    80004dc8:	fa043583          	ld	a1,-96(s0)
    80004dcc:	00048513          	mv	a0,s1
    80004dd0:	00001097          	auipc	ra,0x1
    80004dd4:	250080e7          	jalr	592(ra) # 80006020 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[4] = objAlloc->allocateNewObject();
    80004dd8:	00048513          	mv	a0,s1
    80004ddc:	00001097          	auipc	ra,0x1
    80004de0:	4c4080e7          	jalr	1220(ra) # 800062a0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004de4:	00050913          	mv	s2,a0
    if (objArr[4] != getObjectAt(1, 7, objAlloc)) { delete objAlloc; return false; }
    80004de8:	00048693          	mv	a3,s1
    80004dec:	00700613          	li	a2,7
    80004df0:	00100593          	li	a1,1
    80004df4:	00098513          	mv	a0,s3
    80004df8:	ffffe097          	auipc	ra,0xffffe
    80004dfc:	658080e7          	jalr	1624(ra) # 80003450 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>
    80004e00:	08a90063          	beq	s2,a0,80004e80 <_ZN20KObjectAllocatorTest5test2Em+0x6e8>
    80004e04:	06048a63          	beqz	s1,80004e78 <_ZN20KObjectAllocatorTest5test2Em+0x6e0>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004e08:	00000913          	li	s2,0
    80004e0c:	0280006f          	j	80004e34 <_ZN20KObjectAllocatorTest5test2Em+0x69c>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004e10:	ffffd097          	auipc	ra,0xffffd
    80004e14:	eb4080e7          	jalr	-332(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004e18:	0284b783          	ld	a5,40(s1)
    80004e1c:	00391713          	slli	a4,s2,0x3
    80004e20:	00e787b3          	add	a5,a5,a4
    80004e24:	0007b583          	ld	a1,0(a5)
    80004e28:	ffffd097          	auipc	ra,0xffffd
    80004e2c:	028080e7          	jalr	40(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004e30:	00190913          	addi	s2,s2,1
    80004e34:	0304b783          	ld	a5,48(s1)
    80004e38:	fcf96ce3          	bltu	s2,a5,80004e10 <_ZN20KObjectAllocatorTest5test2Em+0x678>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004e3c:	ffffd097          	auipc	ra,0xffffd
    80004e40:	e88080e7          	jalr	-376(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004e44:	0284b583          	ld	a1,40(s1)
    80004e48:	ffffd097          	auipc	ra,0xffffd
    80004e4c:	008080e7          	jalr	8(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004e50:	ffffd097          	auipc	ra,0xffffd
    80004e54:	e74080e7          	jalr	-396(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004e58:	0204b583          	ld	a1,32(s1)
    80004e5c:	ffffd097          	auipc	ra,0xffffd
    80004e60:	ff4080e7          	jalr	-12(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004e64:	ffffd097          	auipc	ra,0xffffd
    80004e68:	e60080e7          	jalr	-416(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004e6c:	00048593          	mv	a1,s1
    80004e70:	ffffd097          	auipc	ra,0xffffd
    80004e74:	fe0080e7          	jalr	-32(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004e78:	00000a13          	li	s4,0
    80004e7c:	ad9ff06f          	j	80004954 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    byte = getByteOfObject(objArr[4], objAlloc);
    80004e80:	00048613          	mv	a2,s1
    80004e84:	00090593          	mv	a1,s2
    80004e88:	00098513          	mv	a0,s3
    80004e8c:	ffffe097          	auipc	ra,0xffffe
    80004e90:	448080e7          	jalr	1096(ra) # 800032d4 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    80004e94:	00050a13          	mv	s4,a0
    bit = getBitOfObject(objArr[4], objAlloc);
    80004e98:	00048613          	mv	a2,s1
    80004e9c:	00090593          	mv	a1,s2
    80004ea0:	00098513          	mv	a0,s3
    80004ea4:	ffffe097          	auipc	ra,0xffffe
    80004ea8:	528080e7          	jalr	1320(ra) # 800033cc <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80004eac:	00050913          	mv	s2,a0
    if (byte != 1 || bit != 7) { delete objAlloc; return false; }
    80004eb0:	00100793          	li	a5,1
    80004eb4:	00fa1663          	bne	s4,a5,80004ec0 <_ZN20KObjectAllocatorTest5test2Em+0x728>
    80004eb8:	00700793          	li	a5,7
    80004ebc:	08f50063          	beq	a0,a5,80004f3c <_ZN20KObjectAllocatorTest5test2Em+0x7a4>
    80004ec0:	06048a63          	beqz	s1,80004f34 <_ZN20KObjectAllocatorTest5test2Em+0x79c>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004ec4:	00000913          	li	s2,0
    80004ec8:	0280006f          	j	80004ef0 <_ZN20KObjectAllocatorTest5test2Em+0x758>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004ecc:	ffffd097          	auipc	ra,0xffffd
    80004ed0:	df8080e7          	jalr	-520(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004ed4:	0284b783          	ld	a5,40(s1)
    80004ed8:	00391713          	slli	a4,s2,0x3
    80004edc:	00e787b3          	add	a5,a5,a4
    80004ee0:	0007b583          	ld	a1,0(a5)
    80004ee4:	ffffd097          	auipc	ra,0xffffd
    80004ee8:	f6c080e7          	jalr	-148(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004eec:	00190913          	addi	s2,s2,1
    80004ef0:	0304b783          	ld	a5,48(s1)
    80004ef4:	fcf96ce3          	bltu	s2,a5,80004ecc <_ZN20KObjectAllocatorTest5test2Em+0x734>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004ef8:	ffffd097          	auipc	ra,0xffffd
    80004efc:	dcc080e7          	jalr	-564(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004f00:	0284b583          	ld	a1,40(s1)
    80004f04:	ffffd097          	auipc	ra,0xffffd
    80004f08:	f4c080e7          	jalr	-180(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004f0c:	ffffd097          	auipc	ra,0xffffd
    80004f10:	db8080e7          	jalr	-584(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004f14:	0204b583          	ld	a1,32(s1)
    80004f18:	ffffd097          	auipc	ra,0xffffd
    80004f1c:	f38080e7          	jalr	-200(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004f20:	ffffd097          	auipc	ra,0xffffd
    80004f24:	da4080e7          	jalr	-604(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004f28:	00048593          	mv	a1,s1
    80004f2c:	ffffd097          	auipc	ra,0xffffd
    80004f30:	f24080e7          	jalr	-220(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80004f34:	00000a13          	li	s4,0
    80004f38:	a1dff06f          	j	80004954 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    bool expectedBitValues[16] = {
    80004f3c:	00004797          	auipc	a5,0x4
    80004f40:	65478793          	addi	a5,a5,1620 # 80009590 <CONSOLE_STATUS+0x580>
    80004f44:	0007b703          	ld	a4,0(a5)
    80004f48:	f4e43823          	sd	a4,-176(s0)
    80004f4c:	0087b783          	ld	a5,8(a5)
    80004f50:	f4f43c23          	sd	a5,-168(s0)
    for (size_t i = 0; i < 16; ++i) {
    80004f54:	00000a13          	li	s4,0
    byte = 0; bit = 7;
    80004f58:	00000a93          	li	s5,0
    80004f5c:	02c0006f          	j	80004f88 <_ZN20KObjectAllocatorTest5test2Em+0x7f0>
        { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    80004f60:	00048863          	beqz	s1,80004f70 <_ZN20KObjectAllocatorTest5test2Em+0x7d8>
    80004f64:	00048513          	mv	a0,s1
    80004f68:	ffffd097          	auipc	ra,0xffffd
    80004f6c:	a1c080e7          	jalr	-1508(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80004f70:	00000a13          	li	s4,0
    80004f74:	9e1ff06f          	j	80004954 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    80004f78:	001a8a93          	addi	s5,s5,1
    80004f7c:	000b8913          	mv	s2,s7
    80004f80:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 16; ++i) {
    80004f84:	001a0a13          	addi	s4,s4,1
    80004f88:	00f00793          	li	a5,15
    80004f8c:	0347ea63          	bltu	a5,s4,80004fc0 <_ZN20KObjectAllocatorTest5test2Em+0x828>
        if (expectedBitValues[i] != getValueOfBitAt(byte, bit, objAlloc))
    80004f90:	fb040793          	addi	a5,s0,-80
    80004f94:	014787b3          	add	a5,a5,s4
    80004f98:	fa07cb03          	lbu	s6,-96(a5)
    80004f9c:	00048693          	mv	a3,s1
    80004fa0:	00090613          	mv	a2,s2
    80004fa4:	000a8593          	mv	a1,s5
    80004fa8:	00098513          	mv	a0,s3
    80004fac:	ffffe097          	auipc	ra,0xffffe
    80004fb0:	2a0080e7          	jalr	672(ra) # 8000324c <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80004fb4:	faab16e3          	bne	s6,a0,80004f60 <_ZN20KObjectAllocatorTest5test2Em+0x7c8>
        { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    80004fb8:	fc0914e3          	bnez	s2,80004f80 <_ZN20KObjectAllocatorTest5test2Em+0x7e8>
    80004fbc:	fbdff06f          	j	80004f78 <_ZN20KObjectAllocatorTest5test2Em+0x7e0>
    delete objAlloc;
    80004fc0:	06048e63          	beqz	s1,8000503c <_ZN20KObjectAllocatorTest5test2Em+0x8a4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004fc4:	00000913          	li	s2,0
    80004fc8:	0280006f          	j	80004ff0 <_ZN20KObjectAllocatorTest5test2Em+0x858>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004fcc:	ffffd097          	auipc	ra,0xffffd
    80004fd0:	cf8080e7          	jalr	-776(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004fd4:	0284b783          	ld	a5,40(s1)
    80004fd8:	00391713          	slli	a4,s2,0x3
    80004fdc:	00e787b3          	add	a5,a5,a4
    80004fe0:	0007b583          	ld	a1,0(a5)
    80004fe4:	ffffd097          	auipc	ra,0xffffd
    80004fe8:	e6c080e7          	jalr	-404(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004fec:	00190913          	addi	s2,s2,1
    80004ff0:	0304b783          	ld	a5,48(s1)
    80004ff4:	fcf96ce3          	bltu	s2,a5,80004fcc <_ZN20KObjectAllocatorTest5test2Em+0x834>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004ff8:	ffffd097          	auipc	ra,0xffffd
    80004ffc:	ccc080e7          	jalr	-820(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80005000:	0284b583          	ld	a1,40(s1)
    80005004:	ffffd097          	auipc	ra,0xffffd
    80005008:	e4c080e7          	jalr	-436(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    8000500c:	ffffd097          	auipc	ra,0xffffd
    80005010:	cb8080e7          	jalr	-840(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80005014:	0204b583          	ld	a1,32(s1)
    80005018:	ffffd097          	auipc	ra,0xffffd
    8000501c:	e38080e7          	jalr	-456(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80005020:	ffffd097          	auipc	ra,0xffffd
    80005024:	ca4080e7          	jalr	-860(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80005028:	00048593          	mv	a1,s1
    8000502c:	ffffd097          	auipc	ra,0xffffd
    80005030:	e24080e7          	jalr	-476(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    return true;
    80005034:	00100a13          	li	s4,1
    }
    80005038:	91dff06f          	j	80004954 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    8000503c:	00100a13          	li	s4,1
    80005040:	915ff06f          	j	80004954 <_ZN20KObjectAllocatorTest5test2Em+0x1bc>
    80005044:	00050913          	mv	s2,a0
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 3);
    80005048:	00048513          	mv	a0,s1
    8000504c:	ffffd097          	auipc	ra,0xffffd
    80005050:	938080e7          	jalr	-1736(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80005054:	00090513          	mv	a0,s2
    80005058:	00006097          	auipc	ra,0x6
    8000505c:	710080e7          	jalr	1808(ra) # 8000b768 <_Unwind_Resume>

0000000080005060 <_ZN20KObjectAllocatorTest5test3Em>:

bool KObjectAllocatorTest::test3(size_t size) {
    80005060:	81010113          	addi	sp,sp,-2032
    80005064:	7e113423          	sd	ra,2024(sp)
    80005068:	7e813023          	sd	s0,2016(sp)
    8000506c:	7c913c23          	sd	s1,2008(sp)
    80005070:	7d213823          	sd	s2,2000(sp)
    80005074:	7d313423          	sd	s3,1992(sp)
    80005078:	7d413023          	sd	s4,1984(sp)
    8000507c:	7b513c23          	sd	s5,1976(sp)
    80005080:	7f010413          	addi	s0,sp,2032
    80005084:	db010113          	addi	sp,sp,-592
    80005088:	00050993          	mv	s3,a0
    8000508c:	00058913          	mv	s2,a1
        return MemoryAllocator::instance()->kmem_alloc(size);
    80005090:	ffffd097          	auipc	ra,0xffffd
    80005094:	c34080e7          	jalr	-972(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80005098:	04000593          	li	a1,64
    8000509c:	ffffd097          	auipc	ra,0xffffd
    800050a0:	d0c080e7          	jalr	-756(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    800050a4:	00050493          	mv	s1,a0
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    800050a8:	00500793          	li	a5,5
    800050ac:	00f53023          	sd	a5,0(a0)
    800050b0:	00f53423          	sd	a5,8(a0)
    800050b4:	01253c23          	sd	s2,24(a0)
    800050b8:	00100793          	li	a5,1
    800050bc:	02f53823          	sd	a5,48(a0)
    800050c0:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    800050c4:	ffffd097          	auipc	ra,0xffffd
    800050c8:	c00080e7          	jalr	-1024(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800050cc:	0304b583          	ld	a1,48(s1)
    800050d0:	00359593          	slli	a1,a1,0x3
    800050d4:	ffffd097          	auipc	ra,0xffffd
    800050d8:	cd4080e7          	jalr	-812(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    800050dc:	02a4b423          	sd	a0,40(s1)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    800050e0:	ffffd097          	auipc	ra,0xffffd
    800050e4:	be4080e7          	jalr	-1052(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800050e8:	0304b583          	ld	a1,48(s1)
    800050ec:	00359593          	slli	a1,a1,0x3
    800050f0:	ffffd097          	auipc	ra,0xffffd
    800050f4:	cb8080e7          	jalr	-840(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    800050f8:	02a4b023          	sd	a0,32(s1)
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    800050fc:	0084b703          	ld	a4,8(s1)
    80005100:	ff877793          	andi	a5,a4,-8
    80005104:	02f70463          	beq	a4,a5,8000512c <_ZN20KObjectAllocatorTest5test3Em+0xcc>
    80005108:	00800713          	li	a4,8
    8000510c:	00e787b3          	add	a5,a5,a4
    80005110:	00f4b423          	sd	a5,8(s1)
    80005114:	00f4b023          	sd	a5,0(s1)
        memorySizeForBits = numberOfObjects / 8;
    80005118:	0037d793          	srli	a5,a5,0x3
    8000511c:	00f4b823          	sd	a5,16(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80005120:	ffffd097          	auipc	ra,0xffffd
    80005124:	ba4080e7          	jalr	-1116(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80005128:	00c0006f          	j	80005134 <_ZN20KObjectAllocatorTest5test3Em+0xd4>
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    8000512c:	00000713          	li	a4,0
    80005130:	fddff06f          	j	8000510c <_ZN20KObjectAllocatorTest5test3Em+0xac>
                memorySizeForBits + initialNumberOfObjects * objectSize
    80005134:	0104b583          	ld	a1,16(s1)
    80005138:	0004b783          	ld	a5,0(s1)
    8000513c:	02f907b3          	mul	a5,s2,a5
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80005140:	0284ba03          	ld	s4,40(s1)
    80005144:	00f585b3          	add	a1,a1,a5
    80005148:	ffffd097          	auipc	ra,0xffffd
    8000514c:	c60080e7          	jalr	-928(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80005150:	00aa3023          	sd	a0,0(s4)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    80005154:	0284b783          	ld	a5,40(s1)
    80005158:	0007b783          	ld	a5,0(a5)
    8000515c:	0104b683          	ld	a3,16(s1)
    80005160:	0204b703          	ld	a4,32(s1)
    80005164:	00d787b3          	add	a5,a5,a3
    80005168:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    8000516c:	00000793          	li	a5,0
    80005170:	0104b703          	ld	a4,16(s1)
    80005174:	00e7fe63          	bgeu	a5,a4,80005190 <_ZN20KObjectAllocatorTest5test3Em+0x130>
    80005178:	0284b703          	ld	a4,40(s1)
    8000517c:	00073703          	ld	a4,0(a4)
    80005180:	00f70733          	add	a4,a4,a5
    80005184:	00070023          	sb	zero,0(a4)
    80005188:	00178793          	addi	a5,a5,1
    8000518c:	fe5ff06f          	j	80005170 <_ZN20KObjectAllocatorTest5test3Em+0x110>
    size_t getNumberOfObjects() { return numberOfObjects; }
    80005190:	0084b703          	ld	a4,8(s1)
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 5);
    if (objAlloc->getNumberOfObjects() != 8) { delete objAlloc; return false; }
    80005194:	00800793          	li	a5,8
    80005198:	0af70263          	beq	a4,a5,8000523c <_ZN20KObjectAllocatorTest5test3Em+0x1dc>
    8000519c:	06048a63          	beqz	s1,80005210 <_ZN20KObjectAllocatorTest5test3Em+0x1b0>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800051a0:	00000913          	li	s2,0
    800051a4:	0304b783          	ld	a5,48(s1)
    800051a8:	02f97663          	bgeu	s2,a5,800051d4 <_ZN20KObjectAllocatorTest5test3Em+0x174>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800051ac:	ffffd097          	auipc	ra,0xffffd
    800051b0:	b18080e7          	jalr	-1256(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800051b4:	0284b783          	ld	a5,40(s1)
    800051b8:	00391713          	slli	a4,s2,0x3
    800051bc:	00e787b3          	add	a5,a5,a4
    800051c0:	0007b583          	ld	a1,0(a5)
    800051c4:	ffffd097          	auipc	ra,0xffffd
    800051c8:	c8c080e7          	jalr	-884(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800051cc:	00190913          	addi	s2,s2,1
    800051d0:	fd5ff06f          	j	800051a4 <_ZN20KObjectAllocatorTest5test3Em+0x144>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800051d4:	ffffd097          	auipc	ra,0xffffd
    800051d8:	af0080e7          	jalr	-1296(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800051dc:	0284b583          	ld	a1,40(s1)
    800051e0:	ffffd097          	auipc	ra,0xffffd
    800051e4:	c70080e7          	jalr	-912(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800051e8:	ffffd097          	auipc	ra,0xffffd
    800051ec:	adc080e7          	jalr	-1316(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800051f0:	0204b583          	ld	a1,32(s1)
    800051f4:	ffffd097          	auipc	ra,0xffffd
    800051f8:	c5c080e7          	jalr	-932(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800051fc:	ffffd097          	auipc	ra,0xffffd
    80005200:	ac8080e7          	jalr	-1336(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80005204:	00048593          	mv	a1,s1
    80005208:	ffffd097          	auipc	ra,0xffffd
    8000520c:	c48080e7          	jalr	-952(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80005210:	00000513          	li	a0,0
        { delete objAlloc; return false; }
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    }
    delete objAlloc;
    return true;
    80005214:	25010113          	addi	sp,sp,592
    80005218:	7e813083          	ld	ra,2024(sp)
    8000521c:	7e013403          	ld	s0,2016(sp)
    80005220:	7d813483          	ld	s1,2008(sp)
    80005224:	7d013903          	ld	s2,2000(sp)
    80005228:	7c813983          	ld	s3,1992(sp)
    8000522c:	7c013a03          	ld	s4,1984(sp)
    80005230:	7b813a83          	ld	s5,1976(sp)
    80005234:	7f010113          	addi	sp,sp,2032
    80005238:	00008067          	ret
    size_t getMemorySizeForBits() { return memorySizeForBits; }
    8000523c:	0104b703          	ld	a4,16(s1)
    if (objAlloc->getMemorySizeForBits() != 1) { delete objAlloc; return false; }
    80005240:	00100793          	li	a5,1
    80005244:	08f70063          	beq	a4,a5,800052c4 <_ZN20KObjectAllocatorTest5test3Em+0x264>
    80005248:	06048a63          	beqz	s1,800052bc <_ZN20KObjectAllocatorTest5test3Em+0x25c>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000524c:	00000913          	li	s2,0
    80005250:	0304b783          	ld	a5,48(s1)
    80005254:	02f97663          	bgeu	s2,a5,80005280 <_ZN20KObjectAllocatorTest5test3Em+0x220>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80005258:	ffffd097          	auipc	ra,0xffffd
    8000525c:	a6c080e7          	jalr	-1428(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80005260:	0284b783          	ld	a5,40(s1)
    80005264:	00391713          	slli	a4,s2,0x3
    80005268:	00e787b3          	add	a5,a5,a4
    8000526c:	0007b583          	ld	a1,0(a5)
    80005270:	ffffd097          	auipc	ra,0xffffd
    80005274:	be0080e7          	jalr	-1056(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005278:	00190913          	addi	s2,s2,1
    8000527c:	fd5ff06f          	j	80005250 <_ZN20KObjectAllocatorTest5test3Em+0x1f0>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80005280:	ffffd097          	auipc	ra,0xffffd
    80005284:	a44080e7          	jalr	-1468(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80005288:	0284b583          	ld	a1,40(s1)
    8000528c:	ffffd097          	auipc	ra,0xffffd
    80005290:	bc4080e7          	jalr	-1084(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80005294:	ffffd097          	auipc	ra,0xffffd
    80005298:	a30080e7          	jalr	-1488(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    8000529c:	0204b583          	ld	a1,32(s1)
    800052a0:	ffffd097          	auipc	ra,0xffffd
    800052a4:	bb0080e7          	jalr	-1104(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800052a8:	ffffd097          	auipc	ra,0xffffd
    800052ac:	a1c080e7          	jalr	-1508(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800052b0:	00048593          	mv	a1,s1
    800052b4:	ffffd097          	auipc	ra,0xffffd
    800052b8:	b9c080e7          	jalr	-1124(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    800052bc:	00000513          	li	a0,0
    800052c0:	f55ff06f          	j	80005214 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    size_t getObjectSize() { return objectSize; }
    800052c4:	0184b783          	ld	a5,24(s1)
    if (objAlloc->getObjectSize() != size) { delete objAlloc; return false; }
    800052c8:	08f90063          	beq	s2,a5,80005348 <_ZN20KObjectAllocatorTest5test3Em+0x2e8>
    800052cc:	06048a63          	beqz	s1,80005340 <_ZN20KObjectAllocatorTest5test3Em+0x2e0>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800052d0:	00000913          	li	s2,0
    800052d4:	0304b783          	ld	a5,48(s1)
    800052d8:	02f97663          	bgeu	s2,a5,80005304 <_ZN20KObjectAllocatorTest5test3Em+0x2a4>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800052dc:	ffffd097          	auipc	ra,0xffffd
    800052e0:	9e8080e7          	jalr	-1560(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800052e4:	0284b783          	ld	a5,40(s1)
    800052e8:	00391713          	slli	a4,s2,0x3
    800052ec:	00e787b3          	add	a5,a5,a4
    800052f0:	0007b583          	ld	a1,0(a5)
    800052f4:	ffffd097          	auipc	ra,0xffffd
    800052f8:	b5c080e7          	jalr	-1188(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800052fc:	00190913          	addi	s2,s2,1
    80005300:	fd5ff06f          	j	800052d4 <_ZN20KObjectAllocatorTest5test3Em+0x274>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80005304:	ffffd097          	auipc	ra,0xffffd
    80005308:	9c0080e7          	jalr	-1600(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    8000530c:	0284b583          	ld	a1,40(s1)
    80005310:	ffffd097          	auipc	ra,0xffffd
    80005314:	b40080e7          	jalr	-1216(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80005318:	ffffd097          	auipc	ra,0xffffd
    8000531c:	9ac080e7          	jalr	-1620(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80005320:	0204b583          	ld	a1,32(s1)
    80005324:	ffffd097          	auipc	ra,0xffffd
    80005328:	b2c080e7          	jalr	-1236(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    8000532c:	ffffd097          	auipc	ra,0xffffd
    80005330:	998080e7          	jalr	-1640(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80005334:	00048593          	mv	a1,s1
    80005338:	ffffd097          	auipc	ra,0xffffd
    8000533c:	b18080e7          	jalr	-1256(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80005340:	00000513          	li	a0,0
    80005344:	ed1ff06f          	j	80005214 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    void* objArr[320]; for (size_t i = 0; i < 32; objArr[i++] = objAlloc->allocateNewObject());
    80005348:	00000913          	li	s2,0
    8000534c:	01f00793          	li	a5,31
    80005350:	0327ea63          	bltu	a5,s2,80005384 <_ZN20KObjectAllocatorTest5test3Em+0x324>
    80005354:	00190a13          	addi	s4,s2,1
    80005358:	00048513          	mv	a0,s1
    8000535c:	00001097          	auipc	ra,0x1
    80005360:	f44080e7          	jalr	-188(ra) # 800062a0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80005364:	fffff7b7          	lui	a5,0xfffff
    80005368:	00391913          	slli	s2,s2,0x3
    8000536c:	fc040713          	addi	a4,s0,-64
    80005370:	00f707b3          	add	a5,a4,a5
    80005374:	01278933          	add	s2,a5,s2
    80005378:	60a93023          	sd	a0,1536(s2)
    8000537c:	000a0913          	mv	s2,s4
    80005380:	fcdff06f          	j	8000534c <_ZN20KObjectAllocatorTest5test3Em+0x2ec>
    if (getByteOfObject(objArr[31], objAlloc) != 3
    80005384:	fffff7b7          	lui	a5,0xfffff
    80005388:	fc040713          	addi	a4,s0,-64
    8000538c:	00f707b3          	add	a5,a4,a5
    80005390:	6f87b903          	ld	s2,1784(a5) # fffffffffffff6f8 <end+0xffffffff7fff3de8>
    80005394:	00048613          	mv	a2,s1
    80005398:	00090593          	mv	a1,s2
    8000539c:	00098513          	mv	a0,s3
    800053a0:	ffffe097          	auipc	ra,0xffffe
    800053a4:	f34080e7          	jalr	-204(ra) # 800032d4 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[31], objAlloc) != 0)
    800053a8:	00300793          	li	a5,3
    800053ac:	02f50e63          	beq	a0,a5,800053e8 <_ZN20KObjectAllocatorTest5test3Em+0x388>
    { delete objAlloc; return false; }
    800053b0:	0c048c63          	beqz	s1,80005488 <_ZN20KObjectAllocatorTest5test3Em+0x428>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800053b4:	00000913          	li	s2,0
    800053b8:	0304b783          	ld	a5,48(s1)
    800053bc:	08f97863          	bgeu	s2,a5,8000544c <_ZN20KObjectAllocatorTest5test3Em+0x3ec>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800053c0:	ffffd097          	auipc	ra,0xffffd
    800053c4:	904080e7          	jalr	-1788(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800053c8:	0284b783          	ld	a5,40(s1)
    800053cc:	00391713          	slli	a4,s2,0x3
    800053d0:	00e787b3          	add	a5,a5,a4
    800053d4:	0007b583          	ld	a1,0(a5)
    800053d8:	ffffd097          	auipc	ra,0xffffd
    800053dc:	a78080e7          	jalr	-1416(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800053e0:	00190913          	addi	s2,s2,1
    800053e4:	fd5ff06f          	j	800053b8 <_ZN20KObjectAllocatorTest5test3Em+0x358>
        || getBitOfObject(objArr[31], objAlloc) != 0)
    800053e8:	00048613          	mv	a2,s1
    800053ec:	00090593          	mv	a1,s2
    800053f0:	00098513          	mv	a0,s3
    800053f4:	ffffe097          	auipc	ra,0xffffe
    800053f8:	fd8080e7          	jalr	-40(ra) # 800033cc <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800053fc:	00050a93          	mv	s5,a0
    80005400:	fa0518e3          	bnez	a0,800053b0 <_ZN20KObjectAllocatorTest5test3Em+0x350>
    if (objAlloc->nextNonTakenByte != 4) { delete objAlloc; return false; }
    80005404:	0384b703          	ld	a4,56(s1)
    80005408:	00400793          	li	a5,4
    8000540c:	08f71263          	bne	a4,a5,80005490 <_ZN20KObjectAllocatorTest5test3Em+0x430>
    for (size_t i = 32; i < 320; objArr[i++] = objAlloc->allocateNewObject());
    80005410:	02000913          	li	s2,32
    80005414:	13f00793          	li	a5,319
    80005418:	0f27e863          	bltu	a5,s2,80005508 <_ZN20KObjectAllocatorTest5test3Em+0x4a8>
    8000541c:	00190a13          	addi	s4,s2,1
    80005420:	00048513          	mv	a0,s1
    80005424:	00001097          	auipc	ra,0x1
    80005428:	e7c080e7          	jalr	-388(ra) # 800062a0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    8000542c:	fffff7b7          	lui	a5,0xfffff
    80005430:	00391913          	slli	s2,s2,0x3
    80005434:	fc040713          	addi	a4,s0,-64
    80005438:	00f707b3          	add	a5,a4,a5
    8000543c:	01278933          	add	s2,a5,s2
    80005440:	60a93023          	sd	a0,1536(s2)
    80005444:	000a0913          	mv	s2,s4
    80005448:	fcdff06f          	j	80005414 <_ZN20KObjectAllocatorTest5test3Em+0x3b4>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    8000544c:	ffffd097          	auipc	ra,0xffffd
    80005450:	878080e7          	jalr	-1928(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80005454:	0284b583          	ld	a1,40(s1)
    80005458:	ffffd097          	auipc	ra,0xffffd
    8000545c:	9f8080e7          	jalr	-1544(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80005460:	ffffd097          	auipc	ra,0xffffd
    80005464:	864080e7          	jalr	-1948(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80005468:	0204b583          	ld	a1,32(s1)
    8000546c:	ffffd097          	auipc	ra,0xffffd
    80005470:	9e4080e7          	jalr	-1564(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80005474:	ffffd097          	auipc	ra,0xffffd
    80005478:	850080e7          	jalr	-1968(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    8000547c:	00048593          	mv	a1,s1
    80005480:	ffffd097          	auipc	ra,0xffffd
    80005484:	9d0080e7          	jalr	-1584(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    { delete objAlloc; return false; }
    80005488:	00000513          	li	a0,0
    8000548c:	d89ff06f          	j	80005214 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    if (objAlloc->nextNonTakenByte != 4) { delete objAlloc; return false; }
    80005490:	02049663          	bnez	s1,800054bc <_ZN20KObjectAllocatorTest5test3Em+0x45c>
    80005494:	06c0006f          	j	80005500 <_ZN20KObjectAllocatorTest5test3Em+0x4a0>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80005498:	ffffd097          	auipc	ra,0xffffd
    8000549c:	82c080e7          	jalr	-2004(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800054a0:	0284b783          	ld	a5,40(s1)
    800054a4:	003a9713          	slli	a4,s5,0x3
    800054a8:	00e787b3          	add	a5,a5,a4
    800054ac:	0007b583          	ld	a1,0(a5) # fffffffffffff000 <end+0xffffffff7fff36f0>
    800054b0:	ffffd097          	auipc	ra,0xffffd
    800054b4:	9a0080e7          	jalr	-1632(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800054b8:	001a8a93          	addi	s5,s5,1
    800054bc:	0304b783          	ld	a5,48(s1)
    800054c0:	fcfaece3          	bltu	s5,a5,80005498 <_ZN20KObjectAllocatorTest5test3Em+0x438>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800054c4:	ffffd097          	auipc	ra,0xffffd
    800054c8:	800080e7          	jalr	-2048(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800054cc:	0284b583          	ld	a1,40(s1)
    800054d0:	ffffd097          	auipc	ra,0xffffd
    800054d4:	980080e7          	jalr	-1664(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800054d8:	ffffc097          	auipc	ra,0xffffc
    800054dc:	7ec080e7          	jalr	2028(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800054e0:	0204b583          	ld	a1,32(s1)
    800054e4:	ffffd097          	auipc	ra,0xffffd
    800054e8:	96c080e7          	jalr	-1684(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800054ec:	ffffc097          	auipc	ra,0xffffc
    800054f0:	7d8080e7          	jalr	2008(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800054f4:	00048593          	mv	a1,s1
    800054f8:	ffffd097          	auipc	ra,0xffffd
    800054fc:	958080e7          	jalr	-1704(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80005500:	00000513          	li	a0,0
    80005504:	d11ff06f          	j	80005214 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    if (objAlloc->nextNonTakenByte != 40) { delete objAlloc; return false; }
    80005508:	0384b703          	ld	a4,56(s1)
    8000550c:	02800793          	li	a5,40
    80005510:	06f70e63          	beq	a4,a5,8000558c <_ZN20KObjectAllocatorTest5test3Em+0x52c>
    80005514:	06048863          	beqz	s1,80005584 <_ZN20KObjectAllocatorTest5test3Em+0x524>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005518:	0304b783          	ld	a5,48(s1)
    8000551c:	02faf663          	bgeu	s5,a5,80005548 <_ZN20KObjectAllocatorTest5test3Em+0x4e8>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80005520:	ffffc097          	auipc	ra,0xffffc
    80005524:	7a4080e7          	jalr	1956(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80005528:	0284b783          	ld	a5,40(s1)
    8000552c:	003a9713          	slli	a4,s5,0x3
    80005530:	00e787b3          	add	a5,a5,a4
    80005534:	0007b583          	ld	a1,0(a5)
    80005538:	ffffd097          	auipc	ra,0xffffd
    8000553c:	918080e7          	jalr	-1768(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005540:	001a8a93          	addi	s5,s5,1
    80005544:	fd5ff06f          	j	80005518 <_ZN20KObjectAllocatorTest5test3Em+0x4b8>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80005548:	ffffc097          	auipc	ra,0xffffc
    8000554c:	77c080e7          	jalr	1916(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80005550:	0284b583          	ld	a1,40(s1)
    80005554:	ffffd097          	auipc	ra,0xffffd
    80005558:	8fc080e7          	jalr	-1796(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    8000555c:	ffffc097          	auipc	ra,0xffffc
    80005560:	768080e7          	jalr	1896(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80005564:	0204b583          	ld	a1,32(s1)
    80005568:	ffffd097          	auipc	ra,0xffffd
    8000556c:	8e8080e7          	jalr	-1816(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80005570:	ffffc097          	auipc	ra,0xffffc
    80005574:	754080e7          	jalr	1876(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80005578:	00048593          	mv	a1,s1
    8000557c:	ffffd097          	auipc	ra,0xffffd
    80005580:	8d4080e7          	jalr	-1836(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80005584:	00000513          	li	a0,0
    80005588:	c8dff06f          	j	80005214 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    printString("\nbefore here\n");
    8000558c:	00004517          	auipc	a0,0x4
    80005590:	fcc50513          	addi	a0,a0,-52 # 80009558 <CONSOLE_STATUS+0x548>
    80005594:	00001097          	auipc	ra,0x1
    80005598:	020080e7          	jalr	32(ra) # 800065b4 <_Z11printStringPKc>
    objAlloc->freeObject(objArr[7 * 8]);
    8000559c:	fffff7b7          	lui	a5,0xfffff
    800055a0:	fc040713          	addi	a4,s0,-64
    800055a4:	00f707b3          	add	a5,a4,a5
    800055a8:	7c07b583          	ld	a1,1984(a5) # fffffffffffff7c0 <end+0xffffffff7fff3eb0>
    800055ac:	00048513          	mv	a0,s1
    800055b0:	00001097          	auipc	ra,0x1
    800055b4:	a70080e7          	jalr	-1424(ra) # 80006020 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[7 * 8] = objAlloc->allocateNewObject();
    800055b8:	00048513          	mv	a0,s1
    800055bc:	00001097          	auipc	ra,0x1
    800055c0:	ce4080e7          	jalr	-796(ra) # 800062a0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800055c4:	00050913          	mv	s2,a0
    printString("\n");
    800055c8:	00004517          	auipc	a0,0x4
    800055cc:	b4850513          	addi	a0,a0,-1208 # 80009110 <CONSOLE_STATUS+0x100>
    800055d0:	00001097          	auipc	ra,0x1
    800055d4:	fe4080e7          	jalr	-28(ra) # 800065b4 <_Z11printStringPKc>
    printInteger((uint64)getByteOfObject(objArr[7 * 8], objAlloc));
    800055d8:	00048613          	mv	a2,s1
    800055dc:	00090593          	mv	a1,s2
    800055e0:	00098513          	mv	a0,s3
    800055e4:	ffffe097          	auipc	ra,0xffffe
    800055e8:	cf0080e7          	jalr	-784(ra) # 800032d4 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    800055ec:	00001097          	auipc	ra,0x1
    800055f0:	038080e7          	jalr	56(ra) # 80006624 <_Z12printIntegerm>
    printString("\n");
    800055f4:	00004517          	auipc	a0,0x4
    800055f8:	b1c50513          	addi	a0,a0,-1252 # 80009110 <CONSOLE_STATUS+0x100>
    800055fc:	00001097          	auipc	ra,0x1
    80005600:	fb8080e7          	jalr	-72(ra) # 800065b4 <_Z11printStringPKc>
    printInteger((uint64)getBitOfObject(objArr[7 * 8], objAlloc));
    80005604:	00048613          	mv	a2,s1
    80005608:	00090593          	mv	a1,s2
    8000560c:	00098513          	mv	a0,s3
    80005610:	ffffe097          	auipc	ra,0xffffe
    80005614:	dbc080e7          	jalr	-580(ra) # 800033cc <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80005618:	00001097          	auipc	ra,0x1
    8000561c:	00c080e7          	jalr	12(ra) # 80006624 <_Z12printIntegerm>
    printString("\n");
    80005620:	00004517          	auipc	a0,0x4
    80005624:	af050513          	addi	a0,a0,-1296 # 80009110 <CONSOLE_STATUS+0x100>
    80005628:	00001097          	auipc	ra,0x1
    8000562c:	f8c080e7          	jalr	-116(ra) # 800065b4 <_Z11printStringPKc>
    if (getByteOfObject(objArr[7 * 8], objAlloc) != 7
    80005630:	00048613          	mv	a2,s1
    80005634:	00090593          	mv	a1,s2
    80005638:	00098513          	mv	a0,s3
    8000563c:	ffffe097          	auipc	ra,0xffffe
    80005640:	c98080e7          	jalr	-872(ra) # 800032d4 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[7 * 8], objAlloc) != 7)
    80005644:	00700793          	li	a5,7
    80005648:	02f50c63          	beq	a0,a5,80005680 <_ZN20KObjectAllocatorTest5test3Em+0x620>
    { delete objAlloc; return false; }
    8000564c:	0a048663          	beqz	s1,800056f8 <_ZN20KObjectAllocatorTest5test3Em+0x698>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005650:	0304b783          	ld	a5,48(s1)
    80005654:	06faf463          	bgeu	s5,a5,800056bc <_ZN20KObjectAllocatorTest5test3Em+0x65c>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80005658:	ffffc097          	auipc	ra,0xffffc
    8000565c:	66c080e7          	jalr	1644(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80005660:	0284b783          	ld	a5,40(s1)
    80005664:	003a9713          	slli	a4,s5,0x3
    80005668:	00e787b3          	add	a5,a5,a4
    8000566c:	0007b583          	ld	a1,0(a5)
    80005670:	ffffc097          	auipc	ra,0xffffc
    80005674:	7e0080e7          	jalr	2016(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80005678:	001a8a93          	addi	s5,s5,1
    8000567c:	fd5ff06f          	j	80005650 <_ZN20KObjectAllocatorTest5test3Em+0x5f0>
        || getBitOfObject(objArr[7 * 8], objAlloc) != 7)
    80005680:	00048613          	mv	a2,s1
    80005684:	00090593          	mv	a1,s2
    80005688:	00098513          	mv	a0,s3
    8000568c:	ffffe097          	auipc	ra,0xffffe
    80005690:	d40080e7          	jalr	-704(ra) # 800033cc <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80005694:	00700793          	li	a5,7
    80005698:	faf51ae3          	bne	a0,a5,8000564c <_ZN20KObjectAllocatorTest5test3Em+0x5ec>
    if (objAlloc->nextNonTakenByte != 7) { delete objAlloc; return false; }
    8000569c:	0384b703          	ld	a4,56(s1)
    800056a0:	06f70063          	beq	a4,a5,80005700 <_ZN20KObjectAllocatorTest5test3Em+0x6a0>
    800056a4:	00048863          	beqz	s1,800056b4 <_ZN20KObjectAllocatorTest5test3Em+0x654>
    800056a8:	00048513          	mv	a0,s1
    800056ac:	ffffc097          	auipc	ra,0xffffc
    800056b0:	2d8080e7          	jalr	728(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    800056b4:	00000513          	li	a0,0
    800056b8:	b5dff06f          	j	80005214 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800056bc:	ffffc097          	auipc	ra,0xffffc
    800056c0:	608080e7          	jalr	1544(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800056c4:	0284b583          	ld	a1,40(s1)
    800056c8:	ffffc097          	auipc	ra,0xffffc
    800056cc:	788080e7          	jalr	1928(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800056d0:	ffffc097          	auipc	ra,0xffffc
    800056d4:	5f4080e7          	jalr	1524(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800056d8:	0204b583          	ld	a1,32(s1)
    800056dc:	ffffc097          	auipc	ra,0xffffc
    800056e0:	774080e7          	jalr	1908(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800056e4:	ffffc097          	auipc	ra,0xffffc
    800056e8:	5e0080e7          	jalr	1504(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800056ec:	00048593          	mv	a1,s1
    800056f0:	ffffc097          	auipc	ra,0xffffc
    800056f4:	760080e7          	jalr	1888(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    { delete objAlloc; return false; }
    800056f8:	00000513          	li	a0,0
    800056fc:	b19ff06f          	j	80005214 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    printString("\nhere\n");
    80005700:	00004517          	auipc	a0,0x4
    80005704:	e6850513          	addi	a0,a0,-408 # 80009568 <CONSOLE_STATUS+0x558>
    80005708:	00001097          	auipc	ra,0x1
    8000570c:	eac080e7          	jalr	-340(ra) # 800065b4 <_Z11printStringPKc>
    objAlloc->freeObject(objArr[6 * 8 + 3]);
    80005710:	fffff937          	lui	s2,0xfffff
    80005714:	fc040793          	addi	a5,s0,-64
    80005718:	01278933          	add	s2,a5,s2
    8000571c:	79893583          	ld	a1,1944(s2) # fffffffffffff798 <end+0xffffffff7fff3e88>
    80005720:	00048513          	mv	a0,s1
    80005724:	00001097          	auipc	ra,0x1
    80005728:	8fc080e7          	jalr	-1796(ra) # 80006020 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[7 * 8 + 4]);
    8000572c:	7e093583          	ld	a1,2016(s2)
    80005730:	00048513          	mv	a0,s1
    80005734:	00001097          	auipc	ra,0x1
    80005738:	8ec080e7          	jalr	-1812(ra) # 80006020 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[38 * 8 + 5]);
    8000573c:	f6843583          	ld	a1,-152(s0)
    80005740:	00048513          	mv	a0,s1
    80005744:	00001097          	auipc	ra,0x1
    80005748:	8dc080e7          	jalr	-1828(ra) # 80006020 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[7 * 8 + 4] = objAlloc->allocateNewObject();
    8000574c:	00048513          	mv	a0,s1
    80005750:	00001097          	auipc	ra,0x1
    80005754:	b50080e7          	jalr	-1200(ra) # 800062a0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80005758:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[7 * 8 + 4], objAlloc) != 7
    8000575c:	00048613          	mv	a2,s1
    80005760:	00050593          	mv	a1,a0
    80005764:	00098513          	mv	a0,s3
    80005768:	ffffe097          	auipc	ra,0xffffe
    8000576c:	b6c080e7          	jalr	-1172(ra) # 800032d4 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[7 * 8 + 4], objAlloc) != 3)
    80005770:	00700793          	li	a5,7
    80005774:	00f50e63          	beq	a0,a5,80005790 <_ZN20KObjectAllocatorTest5test3Em+0x730>
    { delete objAlloc; return false; }
    80005778:	00048863          	beqz	s1,80005788 <_ZN20KObjectAllocatorTest5test3Em+0x728>
    8000577c:	00048513          	mv	a0,s1
    80005780:	ffffc097          	auipc	ra,0xffffc
    80005784:	204080e7          	jalr	516(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80005788:	00000513          	li	a0,0
    8000578c:	a89ff06f          	j	80005214 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        || getBitOfObject(objArr[7 * 8 + 4], objAlloc) != 3)
    80005790:	00048613          	mv	a2,s1
    80005794:	00090593          	mv	a1,s2
    80005798:	00098513          	mv	a0,s3
    8000579c:	ffffe097          	auipc	ra,0xffffe
    800057a0:	c30080e7          	jalr	-976(ra) # 800033cc <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800057a4:	00300793          	li	a5,3
    800057a8:	fcf518e3          	bne	a0,a5,80005778 <_ZN20KObjectAllocatorTest5test3Em+0x718>
    if (objAlloc->nextNonTakenByte != 7) { delete objAlloc; return false; }
    800057ac:	0384b703          	ld	a4,56(s1)
    800057b0:	00700793          	li	a5,7
    800057b4:	00f70e63          	beq	a4,a5,800057d0 <_ZN20KObjectAllocatorTest5test3Em+0x770>
    800057b8:	00048863          	beqz	s1,800057c8 <_ZN20KObjectAllocatorTest5test3Em+0x768>
    800057bc:	00048513          	mv	a0,s1
    800057c0:	ffffc097          	auipc	ra,0xffffc
    800057c4:	1c4080e7          	jalr	452(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    800057c8:	00000513          	li	a0,0
    800057cc:	a49ff06f          	j	80005214 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    objAlloc->freeObject(objArr[3 * 8 + 5]);
    800057d0:	fffff7b7          	lui	a5,0xfffff
    800057d4:	fc040713          	addi	a4,s0,-64
    800057d8:	00f707b3          	add	a5,a4,a5
    800057dc:	6e87b583          	ld	a1,1768(a5) # fffffffffffff6e8 <end+0xffffffff7fff3dd8>
    800057e0:	00048513          	mv	a0,s1
    800057e4:	00001097          	auipc	ra,0x1
    800057e8:	83c080e7          	jalr	-1988(ra) # 80006020 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[38 * 8 + 5] = objAlloc->allocateNewObject();
    800057ec:	00048513          	mv	a0,s1
    800057f0:	00001097          	auipc	ra,0x1
    800057f4:	ab0080e7          	jalr	-1360(ra) # 800062a0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800057f8:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[38 * 8 + 5], objAlloc) != 38
    800057fc:	00048613          	mv	a2,s1
    80005800:	00050593          	mv	a1,a0
    80005804:	00098513          	mv	a0,s3
    80005808:	ffffe097          	auipc	ra,0xffffe
    8000580c:	acc080e7          	jalr	-1332(ra) # 800032d4 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[38 * 8 + 5], objAlloc) != 2)
    80005810:	02600793          	li	a5,38
    80005814:	00f50e63          	beq	a0,a5,80005830 <_ZN20KObjectAllocatorTest5test3Em+0x7d0>
    { delete objAlloc; return false; }
    80005818:	00048863          	beqz	s1,80005828 <_ZN20KObjectAllocatorTest5test3Em+0x7c8>
    8000581c:	00048513          	mv	a0,s1
    80005820:	ffffc097          	auipc	ra,0xffffc
    80005824:	164080e7          	jalr	356(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80005828:	00000513          	li	a0,0
    8000582c:	9e9ff06f          	j	80005214 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        || getBitOfObject(objArr[38 * 8 + 5], objAlloc) != 2)
    80005830:	00048613          	mv	a2,s1
    80005834:	00090593          	mv	a1,s2
    80005838:	00098513          	mv	a0,s3
    8000583c:	ffffe097          	auipc	ra,0xffffe
    80005840:	b90080e7          	jalr	-1136(ra) # 800033cc <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80005844:	00200793          	li	a5,2
    80005848:	fcf518e3          	bne	a0,a5,80005818 <_ZN20KObjectAllocatorTest5test3Em+0x7b8>
    if (objAlloc->nextNonTakenByte != 38) { delete objAlloc; return false; }
    8000584c:	0384b703          	ld	a4,56(s1)
    80005850:	02600793          	li	a5,38
    80005854:	00f70e63          	beq	a4,a5,80005870 <_ZN20KObjectAllocatorTest5test3Em+0x810>
    80005858:	00048863          	beqz	s1,80005868 <_ZN20KObjectAllocatorTest5test3Em+0x808>
    8000585c:	00048513          	mv	a0,s1
    80005860:	ffffc097          	auipc	ra,0xffffc
    80005864:	124080e7          	jalr	292(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80005868:	00000513          	li	a0,0
    8000586c:	9a9ff06f          	j	80005214 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    objArr[3 * 8 + 5] = objAlloc->allocateNewObject();
    80005870:	00048513          	mv	a0,s1
    80005874:	00001097          	auipc	ra,0x1
    80005878:	a2c080e7          	jalr	-1492(ra) # 800062a0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    8000587c:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[3 * 8 + 5], objAlloc) != 3 || getBitOfObject(objArr[3 * 8 + 5], objAlloc) != 2)
    80005880:	00048613          	mv	a2,s1
    80005884:	00050593          	mv	a1,a0
    80005888:	00098513          	mv	a0,s3
    8000588c:	ffffe097          	auipc	ra,0xffffe
    80005890:	a48080e7          	jalr	-1464(ra) # 800032d4 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    80005894:	00300793          	li	a5,3
    80005898:	02f50463          	beq	a0,a5,800058c0 <_ZN20KObjectAllocatorTest5test3Em+0x860>
        if (objAlloc->nextNonTakenByte != 3) { delete objAlloc; return false; }
    8000589c:	0384b703          	ld	a4,56(s1)
    800058a0:	00300793          	li	a5,3
    800058a4:	02f70c63          	beq	a4,a5,800058dc <_ZN20KObjectAllocatorTest5test3Em+0x87c>
    800058a8:	00048863          	beqz	s1,800058b8 <_ZN20KObjectAllocatorTest5test3Em+0x858>
    800058ac:	00048513          	mv	a0,s1
    800058b0:	ffffc097          	auipc	ra,0xffffc
    800058b4:	0d4080e7          	jalr	212(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    800058b8:	00000513          	li	a0,0
    800058bc:	959ff06f          	j	80005214 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    if (getByteOfObject(objArr[3 * 8 + 5], objAlloc) != 3 || getBitOfObject(objArr[3 * 8 + 5], objAlloc) != 2)
    800058c0:	00048613          	mv	a2,s1
    800058c4:	00090593          	mv	a1,s2
    800058c8:	00098513          	mv	a0,s3
    800058cc:	ffffe097          	auipc	ra,0xffffe
    800058d0:	b00080e7          	jalr	-1280(ra) # 800033cc <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800058d4:	00200793          	li	a5,2
    800058d8:	fcf512e3          	bne	a0,a5,8000589c <_ZN20KObjectAllocatorTest5test3Em+0x83c>
    objArr[6 * 8 + 3] = objAlloc->allocateNewObject();
    800058dc:	00048513          	mv	a0,s1
    800058e0:	00001097          	auipc	ra,0x1
    800058e4:	9c0080e7          	jalr	-1600(ra) # 800062a0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800058e8:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[6 * 8 + 3], objAlloc) != 6
    800058ec:	00048613          	mv	a2,s1
    800058f0:	00050593          	mv	a1,a0
    800058f4:	00098513          	mv	a0,s3
    800058f8:	ffffe097          	auipc	ra,0xffffe
    800058fc:	9dc080e7          	jalr	-1572(ra) # 800032d4 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[6 * 8 + 3], objAlloc) != 4)
    80005900:	00600793          	li	a5,6
    80005904:	00f50e63          	beq	a0,a5,80005920 <_ZN20KObjectAllocatorTest5test3Em+0x8c0>
    { delete objAlloc; return false; }
    80005908:	00048863          	beqz	s1,80005918 <_ZN20KObjectAllocatorTest5test3Em+0x8b8>
    8000590c:	00048513          	mv	a0,s1
    80005910:	ffffc097          	auipc	ra,0xffffc
    80005914:	074080e7          	jalr	116(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80005918:	00000513          	li	a0,0
    8000591c:	8f9ff06f          	j	80005214 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        || getBitOfObject(objArr[6 * 8 + 3], objAlloc) != 4)
    80005920:	00048613          	mv	a2,s1
    80005924:	00090593          	mv	a1,s2
    80005928:	00098513          	mv	a0,s3
    8000592c:	ffffe097          	auipc	ra,0xffffe
    80005930:	aa0080e7          	jalr	-1376(ra) # 800033cc <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80005934:	00400793          	li	a5,4
    80005938:	fcf518e3          	bne	a0,a5,80005908 <_ZN20KObjectAllocatorTest5test3Em+0x8a8>
    if (objAlloc->nextNonTakenByte != 6) { delete objAlloc; return false; }
    8000593c:	0384b703          	ld	a4,56(s1)
    80005940:	00600793          	li	a5,6
    80005944:	0ef71463          	bne	a4,a5,80005a2c <_ZN20KObjectAllocatorTest5test3Em+0x9cc>
    for (int i = 0; i < 3; ++i) {
    80005948:	00000a93          	li	s5,0
    8000594c:	00200793          	li	a5,2
    80005950:	1557ca63          	blt	a5,s5,80005aa4 <_ZN20KObjectAllocatorTest5test3Em+0xa44>
        objAlloc->freeObject(objArr[319]);
    80005954:	fb843583          	ld	a1,-72(s0)
    80005958:	00048513          	mv	a0,s1
    8000595c:	00000097          	auipc	ra,0x0
    80005960:	6c4080e7          	jalr	1732(ra) # 80006020 <_ZN16KObjectAllocator10freeObjectEPv>
        objArr[319] = objAlloc->allocateNewObject();
    80005964:	00048513          	mv	a0,s1
    80005968:	00001097          	auipc	ra,0x1
    8000596c:	938080e7          	jalr	-1736(ra) # 800062a0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80005970:	00050913          	mv	s2,a0
    80005974:	faa43c23          	sd	a0,-72(s0)
        if (getByteOfObject(objArr[319], objAlloc) != 39
    80005978:	00048613          	mv	a2,s1
    8000597c:	00050593          	mv	a1,a0
    80005980:	00098513          	mv	a0,s3
    80005984:	ffffe097          	auipc	ra,0xffffe
    80005988:	950080e7          	jalr	-1712(ra) # 800032d4 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
            || getBitOfObject(objArr[319], objAlloc) != 0)
    8000598c:	02700793          	li	a5,39
    80005990:	0af51a63          	bne	a0,a5,80005a44 <_ZN20KObjectAllocatorTest5test3Em+0x9e4>
    80005994:	00048613          	mv	a2,s1
    80005998:	00090593          	mv	a1,s2
    8000599c:	00098513          	mv	a0,s3
    800059a0:	ffffe097          	auipc	ra,0xffffe
    800059a4:	a2c080e7          	jalr	-1492(ra) # 800033cc <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800059a8:	08051e63          	bnez	a0,80005a44 <_ZN20KObjectAllocatorTest5test3Em+0x9e4>
        if (objAlloc->nextNonTakenByte != 40) { delete objAlloc; return false; }
    800059ac:	0384b703          	ld	a4,56(s1)
    800059b0:	02800793          	li	a5,40
    800059b4:	0af71463          	bne	a4,a5,80005a5c <_ZN20KObjectAllocatorTest5test3Em+0x9fc>
        objAlloc->freeObject(objArr[1]);
    800059b8:	fffffa37          	lui	s4,0xfffff
    800059bc:	fc040793          	addi	a5,s0,-64
    800059c0:	01478a33          	add	s4,a5,s4
    800059c4:	608a3583          	ld	a1,1544(s4) # fffffffffffff608 <end+0xffffffff7fff3cf8>
    800059c8:	00048513          	mv	a0,s1
    800059cc:	00000097          	auipc	ra,0x0
    800059d0:	654080e7          	jalr	1620(ra) # 80006020 <_ZN16KObjectAllocator10freeObjectEPv>
        objArr[1] = objAlloc->allocateNewObject();
    800059d4:	00048513          	mv	a0,s1
    800059d8:	00001097          	auipc	ra,0x1
    800059dc:	8c8080e7          	jalr	-1848(ra) # 800062a0 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800059e0:	00050913          	mv	s2,a0
    800059e4:	60aa3423          	sd	a0,1544(s4)
        if (getByteOfObject(objArr[1], objAlloc) != 0
    800059e8:	00048613          	mv	a2,s1
    800059ec:	00050593          	mv	a1,a0
    800059f0:	00098513          	mv	a0,s3
    800059f4:	ffffe097          	auipc	ra,0xffffe
    800059f8:	8e0080e7          	jalr	-1824(ra) # 800032d4 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
            || getBitOfObject(objArr[1], objAlloc) != 6)
    800059fc:	06051c63          	bnez	a0,80005a74 <_ZN20KObjectAllocatorTest5test3Em+0xa14>
    80005a00:	00048613          	mv	a2,s1
    80005a04:	00090593          	mv	a1,s2
    80005a08:	00098513          	mv	a0,s3
    80005a0c:	ffffe097          	auipc	ra,0xffffe
    80005a10:	9c0080e7          	jalr	-1600(ra) # 800033cc <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80005a14:	00600793          	li	a5,6
    80005a18:	04f51e63          	bne	a0,a5,80005a74 <_ZN20KObjectAllocatorTest5test3Em+0xa14>
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    80005a1c:	0384b783          	ld	a5,56(s1)
    80005a20:	06079663          	bnez	a5,80005a8c <_ZN20KObjectAllocatorTest5test3Em+0xa2c>
    for (int i = 0; i < 3; ++i) {
    80005a24:	001a8a9b          	addiw	s5,s5,1
    80005a28:	f25ff06f          	j	8000594c <_ZN20KObjectAllocatorTest5test3Em+0x8ec>
    if (objAlloc->nextNonTakenByte != 6) { delete objAlloc; return false; }
    80005a2c:	00048863          	beqz	s1,80005a3c <_ZN20KObjectAllocatorTest5test3Em+0x9dc>
    80005a30:	00048513          	mv	a0,s1
    80005a34:	ffffc097          	auipc	ra,0xffffc
    80005a38:	f50080e7          	jalr	-176(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80005a3c:	00000513          	li	a0,0
    80005a40:	fd4ff06f          	j	80005214 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        { delete objAlloc; return false; }
    80005a44:	00048863          	beqz	s1,80005a54 <_ZN20KObjectAllocatorTest5test3Em+0x9f4>
    80005a48:	00048513          	mv	a0,s1
    80005a4c:	ffffc097          	auipc	ra,0xffffc
    80005a50:	f38080e7          	jalr	-200(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80005a54:	00000513          	li	a0,0
    80005a58:	fbcff06f          	j	80005214 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        if (objAlloc->nextNonTakenByte != 40) { delete objAlloc; return false; }
    80005a5c:	00048863          	beqz	s1,80005a6c <_ZN20KObjectAllocatorTest5test3Em+0xa0c>
    80005a60:	00048513          	mv	a0,s1
    80005a64:	ffffc097          	auipc	ra,0xffffc
    80005a68:	f20080e7          	jalr	-224(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80005a6c:	00000513          	li	a0,0
    80005a70:	fa4ff06f          	j	80005214 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        { delete objAlloc; return false; }
    80005a74:	00048863          	beqz	s1,80005a84 <_ZN20KObjectAllocatorTest5test3Em+0xa24>
    80005a78:	00048513          	mv	a0,s1
    80005a7c:	ffffc097          	auipc	ra,0xffffc
    80005a80:	f08080e7          	jalr	-248(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80005a84:	00000513          	li	a0,0
    80005a88:	f8cff06f          	j	80005214 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    80005a8c:	00048863          	beqz	s1,80005a9c <_ZN20KObjectAllocatorTest5test3Em+0xa3c>
    80005a90:	00048513          	mv	a0,s1
    80005a94:	ffffc097          	auipc	ra,0xffffc
    80005a98:	ef0080e7          	jalr	-272(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80005a9c:	00000513          	li	a0,0
    80005aa0:	f74ff06f          	j	80005214 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    delete objAlloc;
    80005aa4:	00048c63          	beqz	s1,80005abc <_ZN20KObjectAllocatorTest5test3Em+0xa5c>
    80005aa8:	00048513          	mv	a0,s1
    80005aac:	ffffc097          	auipc	ra,0xffffc
    80005ab0:	ed8080e7          	jalr	-296(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    return true;
    80005ab4:	00100513          	li	a0,1
    80005ab8:	f5cff06f          	j	80005214 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    80005abc:	00100513          	li	a0,1
    80005ac0:	f54ff06f          	j	80005214 <_ZN20KObjectAllocatorTest5test3Em+0x1b4>
    80005ac4:	00050913          	mv	s2,a0
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 5);
    80005ac8:	00048513          	mv	a0,s1
    80005acc:	ffffc097          	auipc	ra,0xffffc
    80005ad0:	eb8080e7          	jalr	-328(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80005ad4:	00090513          	mv	a0,s2
    80005ad8:	00006097          	auipc	ra,0x6
    80005adc:	c90080e7          	jalr	-880(ra) # 8000b768 <_Unwind_Resume>

0000000080005ae0 <_ZN20KObjectAllocatorTest4testEmm>:
bool KObjectAllocatorTest::test(size_t i, size_t size) {
    80005ae0:	ff010113          	addi	sp,sp,-16
    80005ae4:	00113423          	sd	ra,8(sp)
    80005ae8:	00813023          	sd	s0,0(sp)
    80005aec:	01010413          	addi	s0,sp,16
    80005af0:	00058793          	mv	a5,a1
    80005af4:	00060593          	mv	a1,a2
    switch (i) {
    80005af8:	00200713          	li	a4,2
    80005afc:	04e78e63          	beq	a5,a4,80005b58 <_ZN20KObjectAllocatorTest4testEmm+0x78>
    80005b00:	02f76263          	bltu	a4,a5,80005b24 <_ZN20KObjectAllocatorTest4testEmm+0x44>
    80005b04:	04078463          	beqz	a5,80005b4c <_ZN20KObjectAllocatorTest4testEmm+0x6c>
    80005b08:	00100713          	li	a4,1
    80005b0c:	00e79863          	bne	a5,a4,80005b1c <_ZN20KObjectAllocatorTest4testEmm+0x3c>
        case 1: return test1(size); break;
    80005b10:	ffffe097          	auipc	ra,0xffffe
    80005b14:	290080e7          	jalr	656(ra) # 80003da0 <_ZN20KObjectAllocatorTest5test1Em>
    80005b18:	0240006f          	j	80005b3c <_ZN20KObjectAllocatorTest4testEmm+0x5c>
    switch (i) {
    80005b1c:	00000513          	li	a0,0
    80005b20:	01c0006f          	j	80005b3c <_ZN20KObjectAllocatorTest4testEmm+0x5c>
    80005b24:	00300713          	li	a4,3
    80005b28:	00e79863          	bne	a5,a4,80005b38 <_ZN20KObjectAllocatorTest4testEmm+0x58>
        case 3: return test3(size); break;
    80005b2c:	fffff097          	auipc	ra,0xfffff
    80005b30:	534080e7          	jalr	1332(ra) # 80005060 <_ZN20KObjectAllocatorTest5test3Em>
    80005b34:	0080006f          	j	80005b3c <_ZN20KObjectAllocatorTest4testEmm+0x5c>
    switch (i) {
    80005b38:	00000513          	li	a0,0
}
    80005b3c:	00813083          	ld	ra,8(sp)
    80005b40:	00013403          	ld	s0,0(sp)
    80005b44:	01010113          	addi	sp,sp,16
    80005b48:	00008067          	ret
        case 0: return test0(size); break;
    80005b4c:	ffffe097          	auipc	ra,0xffffe
    80005b50:	994080e7          	jalr	-1644(ra) # 800034e0 <_ZN20KObjectAllocatorTest5test0Em>
    80005b54:	fe9ff06f          	j	80005b3c <_ZN20KObjectAllocatorTest4testEmm+0x5c>
        case 2: return test2(size); break;
    80005b58:	fffff097          	auipc	ra,0xfffff
    80005b5c:	c40080e7          	jalr	-960(ra) # 80004798 <_ZN20KObjectAllocatorTest5test2Em>
    80005b60:	fddff06f          	j	80005b3c <_ZN20KObjectAllocatorTest4testEmm+0x5c>

0000000080005b64 <_ZN20KObjectAllocatorTest8runTestsEv>:
bool KObjectAllocatorTest::runTests() {
    80005b64:	fc010113          	addi	sp,sp,-64
    80005b68:	02113c23          	sd	ra,56(sp)
    80005b6c:	02813823          	sd	s0,48(sp)
    80005b70:	02913423          	sd	s1,40(sp)
    80005b74:	03213023          	sd	s2,32(sp)
    80005b78:	01313c23          	sd	s3,24(sp)
    80005b7c:	01413823          	sd	s4,16(sp)
    80005b80:	01513423          	sd	s5,8(sp)
    80005b84:	01613023          	sd	s6,0(sp)
    80005b88:	04010413          	addi	s0,sp,64
    80005b8c:	00050993          	mv	s3,a0
    for (size_t size : sizes)
    80005b90:	00850a93          	addi	s5,a0,8
    80005b94:	04050b13          	addi	s6,a0,64
    80005b98:	0d6a8863          	beq	s5,s6,80005c68 <_ZN20KObjectAllocatorTest8runTestsEv+0x104>
    80005b9c:	000aba03          	ld	s4,0(s5)
    for (size_t i = 0; i < numberOfTests; ++i) {
    80005ba0:	00000493          	li	s1,0
    80005ba4:	0700006f          	j	80005c14 <_ZN20KObjectAllocatorTest8runTestsEv+0xb0>
            printString("Failed KObjectAllocator test ");
    80005ba8:	00004517          	auipc	a0,0x4
    80005bac:	9c850513          	addi	a0,a0,-1592 # 80009570 <CONSOLE_STATUS+0x560>
    80005bb0:	00001097          	auipc	ra,0x1
    80005bb4:	a04080e7          	jalr	-1532(ra) # 800065b4 <_Z11printStringPKc>
            printInteger(i); printString("\n"); return false;
    80005bb8:	00048513          	mv	a0,s1
    80005bbc:	00001097          	auipc	ra,0x1
    80005bc0:	a68080e7          	jalr	-1432(ra) # 80006624 <_Z12printIntegerm>
    80005bc4:	00003517          	auipc	a0,0x3
    80005bc8:	54c50513          	addi	a0,a0,1356 # 80009110 <CONSOLE_STATUS+0x100>
    80005bcc:	00001097          	auipc	ra,0x1
    80005bd0:	9e8080e7          	jalr	-1560(ra) # 800065b4 <_Z11printStringPKc>
}
    80005bd4:	00090513          	mv	a0,s2
    80005bd8:	03813083          	ld	ra,56(sp)
    80005bdc:	03013403          	ld	s0,48(sp)
    80005be0:	02813483          	ld	s1,40(sp)
    80005be4:	02013903          	ld	s2,32(sp)
    80005be8:	01813983          	ld	s3,24(sp)
    80005bec:	01013a03          	ld	s4,16(sp)
    80005bf0:	00813a83          	ld	s5,8(sp)
    80005bf4:	00013b03          	ld	s6,0(sp)
    80005bf8:	04010113          	addi	sp,sp,64
    80005bfc:	00008067          	ret
        if (i != 0 && (i + 1) % 10 == 0) printString("\n");
    80005c00:	00003517          	auipc	a0,0x3
    80005c04:	51050513          	addi	a0,a0,1296 # 80009110 <CONSOLE_STATUS+0x100>
    80005c08:	00001097          	auipc	ra,0x1
    80005c0c:	9ac080e7          	jalr	-1620(ra) # 800065b4 <_Z11printStringPKc>
    for (size_t i = 0; i < numberOfTests; ++i) {
    80005c10:	00148493          	addi	s1,s1,1
    80005c14:	0009b783          	ld	a5,0(s3)
    80005c18:	04f4f463          	bgeu	s1,a5,80005c60 <_ZN20KObjectAllocatorTest8runTestsEv+0xfc>
        if (!test(i, size)) {
    80005c1c:	000a0613          	mv	a2,s4
    80005c20:	00048593          	mv	a1,s1
    80005c24:	00098513          	mv	a0,s3
    80005c28:	00000097          	auipc	ra,0x0
    80005c2c:	eb8080e7          	jalr	-328(ra) # 80005ae0 <_ZN20KObjectAllocatorTest4testEmm>
    80005c30:	00050913          	mv	s2,a0
    80005c34:	f6050ae3          	beqz	a0,80005ba8 <_ZN20KObjectAllocatorTest8runTestsEv+0x44>
        } else printString("Passed ");
    80005c38:	00004517          	auipc	a0,0x4
    80005c3c:	83050513          	addi	a0,a0,-2000 # 80009468 <CONSOLE_STATUS+0x458>
    80005c40:	00001097          	auipc	ra,0x1
    80005c44:	974080e7          	jalr	-1676(ra) # 800065b4 <_Z11printStringPKc>
        if (i != 0 && (i + 1) % 10 == 0) printString("\n");
    80005c48:	fc0484e3          	beqz	s1,80005c10 <_ZN20KObjectAllocatorTest8runTestsEv+0xac>
    80005c4c:	00148793          	addi	a5,s1,1
    80005c50:	00a00713          	li	a4,10
    80005c54:	02e7f7b3          	remu	a5,a5,a4
    80005c58:	fa079ce3          	bnez	a5,80005c10 <_ZN20KObjectAllocatorTest8runTestsEv+0xac>
    80005c5c:	fa5ff06f          	j	80005c00 <_ZN20KObjectAllocatorTest8runTestsEv+0x9c>
    for (size_t size : sizes)
    80005c60:	008a8a93          	addi	s5,s5,8
    80005c64:	f35ff06f          	j	80005b98 <_ZN20KObjectAllocatorTest8runTestsEv+0x34>
    return true;
    80005c68:	00100913          	li	s2,1
    80005c6c:	f69ff06f          	j	80005bd4 <_ZN20KObjectAllocatorTest8runTestsEv+0x70>

0000000080005c70 <_ZN16KObjectAllocator19printInternalMemoryEv>:
#include "../h/kObjectAllocator.hpp"
#include "../h/print.hpp"

void KObjectAllocator::printInternalMemory() {
    80005c70:	fc010113          	addi	sp,sp,-64
    80005c74:	02113c23          	sd	ra,56(sp)
    80005c78:	02813823          	sd	s0,48(sp)
    80005c7c:	02913423          	sd	s1,40(sp)
    80005c80:	03213023          	sd	s2,32(sp)
    80005c84:	01313c23          	sd	s3,24(sp)
    80005c88:	01413823          	sd	s4,16(sp)
    80005c8c:	01513423          	sd	s5,8(sp)
    80005c90:	01613023          	sd	s6,0(sp)
    80005c94:	04010413          	addi	s0,sp,64
    80005c98:	00050493          	mv	s1,a0
    size_t segmentSize = 16, printedBytes = 0;
    80005c9c:	00000a93          	li	s5,0
    80005ca0:	0f00006f          	j	80005d90 <_ZN16KObjectAllocator19printInternalMemoryEv+0x120>
    while (printedBytes < memorySizeForBits) {
        for (size_t i = 0; i < numberOfAllocations; ++i) {
            for (size_t j = 0; j < segmentSize; ++j) {
                if (j + printedBytes >= memorySizeForBits) printString("    ");
    80005ca4:	00004517          	auipc	a0,0x4
    80005ca8:	8fc50513          	addi	a0,a0,-1796 # 800095a0 <CONSOLE_STATUS+0x590>
    80005cac:	00001097          	auipc	ra,0x1
    80005cb0:	908080e7          	jalr	-1784(ra) # 800065b4 <_Z11printStringPKc>
    80005cb4:	04c0006f          	j	80005d00 <_ZN16KObjectAllocator19printInternalMemoryEv+0x90>
                else {
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80005cb8:	00000513          	li	a0,0
    80005cbc:	00001097          	auipc	ra,0x1
    80005cc0:	968080e7          	jalr	-1688(ra) # 80006624 <_Z12printIntegerm>
    80005cc4:	0740006f          	j	80005d38 <_ZN16KObjectAllocator19printInternalMemoryEv+0xc8>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    80005cc8:	00000513          	li	a0,0
    80005ccc:	00001097          	auipc	ra,0x1
    80005cd0:	958080e7          	jalr	-1704(ra) # 80006624 <_Z12printIntegerm>
                    printInteger((uint64) bitVectors[i][j + printedBytes]);
    80005cd4:	0284b783          	ld	a5,40(s1)
    80005cd8:	014787b3          	add	a5,a5,s4
    80005cdc:	0007b783          	ld	a5,0(a5)
    80005ce0:	013789b3          	add	s3,a5,s3
    80005ce4:	0009c503          	lbu	a0,0(s3)
    80005ce8:	00001097          	auipc	ra,0x1
    80005cec:	93c080e7          	jalr	-1732(ra) # 80006624 <_Z12printIntegerm>
                    printString(" ");
    80005cf0:	00003517          	auipc	a0,0x3
    80005cf4:	63050513          	addi	a0,a0,1584 # 80009320 <CONSOLE_STATUS+0x310>
    80005cf8:	00001097          	auipc	ra,0x1
    80005cfc:	8bc080e7          	jalr	-1860(ra) # 800065b4 <_Z11printStringPKc>
            for (size_t j = 0; j < segmentSize; ++j) {
    80005d00:	00190913          	addi	s2,s2,1
    80005d04:	00f00793          	li	a5,15
    80005d08:	0527e863          	bltu	a5,s2,80005d58 <_ZN16KObjectAllocator19printInternalMemoryEv+0xe8>
                if (j + printedBytes >= memorySizeForBits) printString("    ");
    80005d0c:	012a89b3          	add	s3,s5,s2
    80005d10:	0104b783          	ld	a5,16(s1)
    80005d14:	f8f9f8e3          	bgeu	s3,a5,80005ca4 <_ZN16KObjectAllocator19printInternalMemoryEv+0x34>
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80005d18:	0284b783          	ld	a5,40(s1)
    80005d1c:	003b1a13          	slli	s4,s6,0x3
    80005d20:	014787b3          	add	a5,a5,s4
    80005d24:	0007b783          	ld	a5,0(a5)
    80005d28:	013787b3          	add	a5,a5,s3
    80005d2c:	0007c703          	lbu	a4,0(a5)
    80005d30:	06300793          	li	a5,99
    80005d34:	f8e7f2e3          	bgeu	a5,a4,80005cb8 <_ZN16KObjectAllocator19printInternalMemoryEv+0x48>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    80005d38:	0284b783          	ld	a5,40(s1)
    80005d3c:	014787b3          	add	a5,a5,s4
    80005d40:	0007b783          	ld	a5,0(a5)
    80005d44:	013787b3          	add	a5,a5,s3
    80005d48:	0007c703          	lbu	a4,0(a5)
    80005d4c:	00900793          	li	a5,9
    80005d50:	f8e7e2e3          	bltu	a5,a4,80005cd4 <_ZN16KObjectAllocator19printInternalMemoryEv+0x64>
    80005d54:	f75ff06f          	j	80005cc8 <_ZN16KObjectAllocator19printInternalMemoryEv+0x58>
                }
            }
            printString("  ");
    80005d58:	00004517          	auipc	a0,0x4
    80005d5c:	85050513          	addi	a0,a0,-1968 # 800095a8 <CONSOLE_STATUS+0x598>
    80005d60:	00001097          	auipc	ra,0x1
    80005d64:	854080e7          	jalr	-1964(ra) # 800065b4 <_Z11printStringPKc>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005d68:	001b0b13          	addi	s6,s6,1
    80005d6c:	0304b783          	ld	a5,48(s1)
    80005d70:	00fb7663          	bgeu	s6,a5,80005d7c <_ZN16KObjectAllocator19printInternalMemoryEv+0x10c>
            for (size_t j = 0; j < segmentSize; ++j) {
    80005d74:	00000913          	li	s2,0
    80005d78:	f8dff06f          	j	80005d04 <_ZN16KObjectAllocator19printInternalMemoryEv+0x94>
        }
        printString("\n");
    80005d7c:	00003517          	auipc	a0,0x3
    80005d80:	39450513          	addi	a0,a0,916 # 80009110 <CONSOLE_STATUS+0x100>
    80005d84:	00001097          	auipc	ra,0x1
    80005d88:	830080e7          	jalr	-2000(ra) # 800065b4 <_Z11printStringPKc>
        printedBytes += segmentSize;
    80005d8c:	010a8a93          	addi	s5,s5,16
    while (printedBytes < memorySizeForBits) {
    80005d90:	0104b783          	ld	a5,16(s1)
    80005d94:	00faf663          	bgeu	s5,a5,80005da0 <_ZN16KObjectAllocator19printInternalMemoryEv+0x130>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005d98:	00000b13          	li	s6,0
    80005d9c:	fd1ff06f          	j	80005d6c <_ZN16KObjectAllocator19printInternalMemoryEv+0xfc>
    }

    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005da0:	00000993          	li	s3,0
    80005da4:	0180006f          	j	80005dbc <_ZN16KObjectAllocator19printInternalMemoryEv+0x14c>
        for (size_t j = 0; j < segmentSize - 1; ++j)
            printString("----");
        printString("----  ");
    80005da8:	00004517          	auipc	a0,0x4
    80005dac:	81050513          	addi	a0,a0,-2032 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80005db0:	00001097          	auipc	ra,0x1
    80005db4:	804080e7          	jalr	-2044(ra) # 800065b4 <_Z11printStringPKc>
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005db8:	00198993          	addi	s3,s3,1
    80005dbc:	0304b783          	ld	a5,48(s1)
    80005dc0:	02f9f463          	bgeu	s3,a5,80005de8 <_ZN16KObjectAllocator19printInternalMemoryEv+0x178>
        for (size_t j = 0; j < segmentSize - 1; ++j)
    80005dc4:	00000913          	li	s2,0
    80005dc8:	00e00793          	li	a5,14
    80005dcc:	fd27eee3          	bltu	a5,s2,80005da8 <_ZN16KObjectAllocator19printInternalMemoryEv+0x138>
            printString("----");
    80005dd0:	00003517          	auipc	a0,0x3
    80005dd4:	7e050513          	addi	a0,a0,2016 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80005dd8:	00000097          	auipc	ra,0x0
    80005ddc:	7dc080e7          	jalr	2012(ra) # 800065b4 <_Z11printStringPKc>
        for (size_t j = 0; j < segmentSize - 1; ++j)
    80005de0:	00190913          	addi	s2,s2,1
    80005de4:	fe5ff06f          	j	80005dc8 <_ZN16KObjectAllocator19printInternalMemoryEv+0x158>
    }
    printString("\n");
    80005de8:	00003517          	auipc	a0,0x3
    80005dec:	32850513          	addi	a0,a0,808 # 80009110 <CONSOLE_STATUS+0x100>
    80005df0:	00000097          	auipc	ra,0x0
    80005df4:	7c4080e7          	jalr	1988(ra) # 800065b4 <_Z11printStringPKc>

    printedBytes = memorySizeForBits;
    80005df8:	0104ba03          	ld	s4,16(s1)
    80005dfc:	1000006f          	j	80005efc <_ZN16KObjectAllocator19printInternalMemoryEv+0x28c>
    while(printedBytes < initialNumberOfObjects * objectSize) {
        for (size_t i = 0; i < numberOfAllocations; ++i) {
            for (size_t j = 0; j < segmentSize; ++j) {
                if (j + printedBytes - memorySizeForBits >= initialNumberOfObjects * objectSize) printString("    ");
    80005e00:	00003517          	auipc	a0,0x3
    80005e04:	7a050513          	addi	a0,a0,1952 # 800095a0 <CONSOLE_STATUS+0x590>
    80005e08:	00000097          	auipc	ra,0x0
    80005e0c:	7ac080e7          	jalr	1964(ra) # 800065b4 <_Z11printStringPKc>
    80005e10:	04c0006f          	j	80005e5c <_ZN16KObjectAllocator19printInternalMemoryEv+0x1ec>
                else {
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80005e14:	00000513          	li	a0,0
    80005e18:	00001097          	auipc	ra,0x1
    80005e1c:	80c080e7          	jalr	-2036(ra) # 80006624 <_Z12printIntegerm>
    80005e20:	0840006f          	j	80005ea4 <_ZN16KObjectAllocator19printInternalMemoryEv+0x234>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    80005e24:	00000513          	li	a0,0
    80005e28:	00000097          	auipc	ra,0x0
    80005e2c:	7fc080e7          	jalr	2044(ra) # 80006624 <_Z12printIntegerm>
                    printInteger((uint64) bitVectors[i][j + printedBytes]);
    80005e30:	0284b783          	ld	a5,40(s1)
    80005e34:	016787b3          	add	a5,a5,s6
    80005e38:	0007b783          	ld	a5,0(a5)
    80005e3c:	013789b3          	add	s3,a5,s3
    80005e40:	0009c503          	lbu	a0,0(s3)
    80005e44:	00000097          	auipc	ra,0x0
    80005e48:	7e0080e7          	jalr	2016(ra) # 80006624 <_Z12printIntegerm>
                    printString(" ");
    80005e4c:	00003517          	auipc	a0,0x3
    80005e50:	4d450513          	addi	a0,a0,1236 # 80009320 <CONSOLE_STATUS+0x310>
    80005e54:	00000097          	auipc	ra,0x0
    80005e58:	760080e7          	jalr	1888(ra) # 800065b4 <_Z11printStringPKc>
            for (size_t j = 0; j < segmentSize; ++j) {
    80005e5c:	00190913          	addi	s2,s2,1
    80005e60:	00f00793          	li	a5,15
    80005e64:	0727e063          	bltu	a5,s2,80005ec4 <_ZN16KObjectAllocator19printInternalMemoryEv+0x254>
                if (j + printedBytes - memorySizeForBits >= initialNumberOfObjects * objectSize) printString("    ");
    80005e68:	012a09b3          	add	s3,s4,s2
    80005e6c:	0104b703          	ld	a4,16(s1)
    80005e70:	40e98733          	sub	a4,s3,a4
    80005e74:	0004b783          	ld	a5,0(s1)
    80005e78:	0184b683          	ld	a3,24(s1)
    80005e7c:	02d787b3          	mul	a5,a5,a3
    80005e80:	f8f770e3          	bgeu	a4,a5,80005e00 <_ZN16KObjectAllocator19printInternalMemoryEv+0x190>
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80005e84:	0284b783          	ld	a5,40(s1)
    80005e88:	003a9b13          	slli	s6,s5,0x3
    80005e8c:	016787b3          	add	a5,a5,s6
    80005e90:	0007b783          	ld	a5,0(a5)
    80005e94:	013787b3          	add	a5,a5,s3
    80005e98:	0007c703          	lbu	a4,0(a5)
    80005e9c:	06300793          	li	a5,99
    80005ea0:	f6e7fae3          	bgeu	a5,a4,80005e14 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1a4>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    80005ea4:	0284b783          	ld	a5,40(s1)
    80005ea8:	016787b3          	add	a5,a5,s6
    80005eac:	0007b783          	ld	a5,0(a5)
    80005eb0:	013787b3          	add	a5,a5,s3
    80005eb4:	0007c703          	lbu	a4,0(a5)
    80005eb8:	00900793          	li	a5,9
    80005ebc:	f6e7eae3          	bltu	a5,a4,80005e30 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1c0>
    80005ec0:	f65ff06f          	j	80005e24 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1b4>
                }
            }
            printString("  ");
    80005ec4:	00003517          	auipc	a0,0x3
    80005ec8:	6e450513          	addi	a0,a0,1764 # 800095a8 <CONSOLE_STATUS+0x598>
    80005ecc:	00000097          	auipc	ra,0x0
    80005ed0:	6e8080e7          	jalr	1768(ra) # 800065b4 <_Z11printStringPKc>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005ed4:	001a8a93          	addi	s5,s5,1
    80005ed8:	0304b783          	ld	a5,48(s1)
    80005edc:	00faf663          	bgeu	s5,a5,80005ee8 <_ZN16KObjectAllocator19printInternalMemoryEv+0x278>
            for (size_t j = 0; j < segmentSize; ++j) {
    80005ee0:	00000913          	li	s2,0
    80005ee4:	f7dff06f          	j	80005e60 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1f0>
        }
        printString("\n");
    80005ee8:	00003517          	auipc	a0,0x3
    80005eec:	22850513          	addi	a0,a0,552 # 80009110 <CONSOLE_STATUS+0x100>
    80005ef0:	00000097          	auipc	ra,0x0
    80005ef4:	6c4080e7          	jalr	1732(ra) # 800065b4 <_Z11printStringPKc>
        printedBytes += segmentSize;
    80005ef8:	010a0a13          	addi	s4,s4,16
    while(printedBytes < initialNumberOfObjects * objectSize) {
    80005efc:	0004b783          	ld	a5,0(s1)
    80005f00:	0184b703          	ld	a4,24(s1)
    80005f04:	02e787b3          	mul	a5,a5,a4
    80005f08:	00fa7663          	bgeu	s4,a5,80005f14 <_ZN16KObjectAllocator19printInternalMemoryEv+0x2a4>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005f0c:	00000a93          	li	s5,0
    80005f10:	fc9ff06f          	j	80005ed8 <_ZN16KObjectAllocator19printInternalMemoryEv+0x268>
    }
}
    80005f14:	03813083          	ld	ra,56(sp)
    80005f18:	03013403          	ld	s0,48(sp)
    80005f1c:	02813483          	ld	s1,40(sp)
    80005f20:	02013903          	ld	s2,32(sp)
    80005f24:	01813983          	ld	s3,24(sp)
    80005f28:	01013a03          	ld	s4,16(sp)
    80005f2c:	00813a83          	ld	s5,8(sp)
    80005f30:	00013b03          	ld	s6,0(sp)
    80005f34:	04010113          	addi	sp,sp,64
    80005f38:	00008067          	ret

0000000080005f3c <_ZN16KObjectAllocator18allocateFreeObjectEv>:
        }
    }
    return nullptr;
}

void* KObjectAllocator::allocateFreeObject() {
    80005f3c:	ff010113          	addi	sp,sp,-16
    80005f40:	00813423          	sd	s0,8(sp)
    80005f44:	01010413          	addi	s0,sp,16
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80005f48:	00000893          	li	a7,0
    80005f4c:	03053783          	ld	a5,48(a0)
    80005f50:	0cf8f463          	bgeu	a7,a5,80006018 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xdc>
        for (size_t j = nextNonTakenByte; j >= i * memorySizeForBits && j < (i + 1) * memorySizeForBits; ++j) {
    80005f54:	03853303          	ld	t1,56(a0)
    80005f58:	0640006f          	j	80005fbc <_ZN16KObjectAllocator18allocateFreeObjectEv+0x80>
                    printString("j: "); printInteger(j); printString("\n");
                    printString("nextNonTakenByte: "); printInteger(nextNonTakenByte); printString("\n");
                    printString("Byte: "); printInteger(byte); printString("\n");
                    printString("Bit: "); printInteger(bit); printString("\n");
                    printString("========================");*/
                    nextNonTakenByte = j + (bit == 1);
    80005f5c:	fff70793          	addi	a5,a4,-1
    80005f60:	0017b793          	seqz	a5,a5
    80005f64:	00678333          	add	t1,a5,t1
    80005f68:	02653c23          	sd	t1,56(a0)
                    bitVectors[i][byte] |= (uint8) 1 << (bit - 1);
    80005f6c:	0006b683          	ld	a3,0(a3)
    80005f70:	00c686b3          	add	a3,a3,a2
    80005f74:	00100793          	li	a5,1
    80005f78:	0107983b          	sllw	a6,a5,a6
    80005f7c:	0006c783          	lbu	a5,0(a3)
    80005f80:	00f86833          	or	a6,a6,a5
    80005f84:	01068023          	sb	a6,0(a3)
                    return &objectVectors[i][(byte * 8 + 8 - bit) * objectSize];
    80005f88:	02053783          	ld	a5,32(a0)
    80005f8c:	00b785b3          	add	a1,a5,a1
    80005f90:	0005b783          	ld	a5,0(a1)
    80005f94:	00160613          	addi	a2,a2,1
    80005f98:	00361613          	slli	a2,a2,0x3
    80005f9c:	40e60733          	sub	a4,a2,a4
    80005fa0:	01853503          	ld	a0,24(a0)
    80005fa4:	02a70733          	mul	a4,a4,a0
    80005fa8:	00e78533          	add	a0,a5,a4
                }
            }
        }
    }
    return nullptr;
}
    80005fac:	00813403          	ld	s0,8(sp)
    80005fb0:	01010113          	addi	sp,sp,16
    80005fb4:	00008067          	ret
        for (size_t j = nextNonTakenByte; j >= i * memorySizeForBits && j < (i + 1) * memorySizeForBits; ++j) {
    80005fb8:	00130313          	addi	t1,t1,1
    80005fbc:	01053783          	ld	a5,16(a0)
    80005fc0:	03178633          	mul	a2,a5,a7
    80005fc4:	04c36663          	bltu	t1,a2,80006010 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xd4>
    80005fc8:	00188713          	addi	a4,a7,1
    80005fcc:	02e787b3          	mul	a5,a5,a4
    80005fd0:	04f37063          	bgeu	t1,a5,80006010 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xd4>
            size_t byte = j - i * memorySizeForBits;
    80005fd4:	40c30633          	sub	a2,t1,a2
            for (size_t bit = 8; bit != 0; --bit) {
    80005fd8:	00800713          	li	a4,8
    80005fdc:	fc070ee3          	beqz	a4,80005fb8 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x7c>
                if ((bitVectors[i][byte] >> (bit - 1) & (uint8) 1) == 0) {
    80005fe0:	02853683          	ld	a3,40(a0)
    80005fe4:	00389593          	slli	a1,a7,0x3
    80005fe8:	00b686b3          	add	a3,a3,a1
    80005fec:	0006b783          	ld	a5,0(a3)
    80005ff0:	00c787b3          	add	a5,a5,a2
    80005ff4:	0007c783          	lbu	a5,0(a5)
    80005ff8:	fff7081b          	addiw	a6,a4,-1
    80005ffc:	4107d7bb          	sraw	a5,a5,a6
    80006000:	0017f793          	andi	a5,a5,1
    80006004:	f4078ce3          	beqz	a5,80005f5c <_ZN16KObjectAllocator18allocateFreeObjectEv+0x20>
            for (size_t bit = 8; bit != 0; --bit) {
    80006008:	fff70713          	addi	a4,a4,-1
    8000600c:	fd1ff06f          	j	80005fdc <_ZN16KObjectAllocator18allocateFreeObjectEv+0xa0>
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80006010:	00188893          	addi	a7,a7,1
    80006014:	f39ff06f          	j	80005f4c <_ZN16KObjectAllocator18allocateFreeObjectEv+0x10>
    return nullptr;
    80006018:	00000513          	li	a0,0
    8000601c:	f91ff06f          	j	80005fac <_ZN16KObjectAllocator18allocateFreeObjectEv+0x70>

0000000080006020 <_ZN16KObjectAllocator10freeObjectEPv>:

void KObjectAllocator::freeObject(void* objectPointer) {
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80006020:	00000713          	li	a4,0
    80006024:	0080006f          	j	8000602c <_ZN16KObjectAllocator10freeObjectEPv+0xc>
    80006028:	00170713          	addi	a4,a4,1
    8000602c:	03053783          	ld	a5,48(a0)
    80006030:	06f77463          	bgeu	a4,a5,80006098 <_ZN16KObjectAllocator10freeObjectEPv+0x78>
        if ((uint8*) objectPointer < objectVectors[i]) continue;
    80006034:	02053783          	ld	a5,32(a0)
    80006038:	00371693          	slli	a3,a4,0x3
    8000603c:	00d787b3          	add	a5,a5,a3
    80006040:	0007b783          	ld	a5,0(a5)
    80006044:	fef5e2e3          	bltu	a1,a5,80006028 <_ZN16KObjectAllocator10freeObjectEPv+0x8>
        size_t idiff = (size_t) ((uint8*) objectPointer - objectVectors[i]);
    80006048:	40f587b3          	sub	a5,a1,a5
        size_t byte = idiff / objectSize / 8;
    8000604c:	01853603          	ld	a2,24(a0)
    80006050:	02c7d7b3          	divu	a5,a5,a2
    80006054:	0037d813          	srli	a6,a5,0x3
        if (byte >= memorySizeForBits) continue;
    80006058:	01053603          	ld	a2,16(a0)
    8000605c:	fcc876e3          	bgeu	a6,a2,80006028 <_ZN16KObjectAllocator10freeObjectEPv+0x8>
        size_t bit = idiff / objectSize - byte * 8;
    80006060:	0077f793          	andi	a5,a5,7
        bitVectors[i][byte] &= ~((uint8) 1 << (7 - bit));
    80006064:	02853603          	ld	a2,40(a0)
    80006068:	00d606b3          	add	a3,a2,a3
    8000606c:	0006b703          	ld	a4,0(a3)
    80006070:	01070733          	add	a4,a4,a6
    80006074:	00700693          	li	a3,7
    80006078:	40f686bb          	subw	a3,a3,a5
    8000607c:	00100793          	li	a5,1
    80006080:	00d797bb          	sllw	a5,a5,a3
    80006084:	fff7c793          	not	a5,a5
    80006088:	00074683          	lbu	a3,0(a4)
    8000608c:	00d7f7b3          	and	a5,a5,a3
    80006090:	00f70023          	sb	a5,0(a4)
        return;
    80006094:	00008067          	ret
void KObjectAllocator::freeObject(void* objectPointer) {
    80006098:	ff010113          	addi	sp,sp,-16
    8000609c:	00113423          	sd	ra,8(sp)
    800060a0:	00813023          	sd	s0,0(sp)
    800060a4:	01010413          	addi	s0,sp,16
    }
    printString("ERROR: Object not allocated in this KObjectAllocator\n");
    800060a8:	00003517          	auipc	a0,0x3
    800060ac:	51850513          	addi	a0,a0,1304 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800060b0:	00000097          	auipc	ra,0x0
    800060b4:	504080e7          	jalr	1284(ra) # 800065b4 <_Z11printStringPKc>
}
    800060b8:	00813083          	ld	ra,8(sp)
    800060bc:	00013403          	ld	s0,0(sp)
    800060c0:	01010113          	addi	sp,sp,16
    800060c4:	00008067          	ret

00000000800060c8 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv>:

bool KObjectAllocator::handleNotEnoughMemoryProblem() {
    800060c8:	fb010113          	addi	sp,sp,-80
    800060cc:	04113423          	sd	ra,72(sp)
    800060d0:	04813023          	sd	s0,64(sp)
    800060d4:	02913c23          	sd	s1,56(sp)
    800060d8:	03213823          	sd	s2,48(sp)
    800060dc:	03313423          	sd	s3,40(sp)
    800060e0:	03413023          	sd	s4,32(sp)
    800060e4:	01513c23          	sd	s5,24(sp)
    800060e8:	01613823          	sd	s6,16(sp)
    800060ec:	01713423          	sd	s7,8(sp)
    800060f0:	05010413          	addi	s0,sp,80
    800060f4:	00050493          	mv	s1,a0
    size_t newNumberOfAllocations = 2 * numberOfAllocations;
    800060f8:	03053a03          	ld	s4,48(a0)
    800060fc:	001a1993          	slli	s3,s4,0x1
    size_t newNumberOfObjects = 2 * numberOfObjects;
    80006100:	00853a83          	ld	s5,8(a0)
    uint8** newBitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(
    80006104:	ffffc097          	auipc	ra,0xffffc
    80006108:	bc0080e7          	jalr	-1088(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    8000610c:	004a1a13          	slli	s4,s4,0x4
    80006110:	000a0593          	mv	a1,s4
    80006114:	ffffc097          	auipc	ra,0xffffc
    80006118:	c94080e7          	jalr	-876(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
            newNumberOfAllocations * sizeof(uint8*)
    );
    if (!newBitVectors) return false;
    8000611c:	14050663          	beqz	a0,80006268 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a0>
    80006120:	001a9a93          	slli	s5,s5,0x1
    80006124:	00050913          	mv	s2,a0
    uint8** newObjectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(
    80006128:	ffffc097          	auipc	ra,0xffffc
    8000612c:	b9c080e7          	jalr	-1124(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80006130:	000a0593          	mv	a1,s4
    80006134:	ffffc097          	auipc	ra,0xffffc
    80006138:	c74080e7          	jalr	-908(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    8000613c:	00050a13          	mv	s4,a0
            newNumberOfAllocations * sizeof(uint8*)
    );
    if (!newObjectVectors) return false;
    80006140:	14050c63          	beqz	a0,80006298 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1d0>

    for (size_t i = 0; i < numberOfAllocations; ++i) newBitVectors[i] = bitVectors[i];
    80006144:	00000793          	li	a5,0
    80006148:	0304bb03          	ld	s6,48(s1)
    8000614c:	0367f463          	bgeu	a5,s6,80006174 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xac>
    80006150:	0284b703          	ld	a4,40(s1)
    80006154:	00379693          	slli	a3,a5,0x3
    80006158:	00d90633          	add	a2,s2,a3
    8000615c:	00d70733          	add	a4,a4,a3
    80006160:	00073703          	ld	a4,0(a4)
    80006164:	00e63023          	sd	a4,0(a2)
    80006168:	00178793          	addi	a5,a5,1
    8000616c:	fddff06f          	j	80006148 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x80>
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i) {
    80006170:	001b0b13          	addi	s6,s6,1
    80006174:	053b7063          	bgeu	s6,s3,800061b4 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xec>
        newBitVectors[i] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80006178:	ffffc097          	auipc	ra,0xffffc
    8000617c:	b4c080e7          	jalr	-1204(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
        memorySizeForBits + initialNumberOfObjects * objectSize );
    80006180:	0104b583          	ld	a1,16(s1)
    80006184:	0004b783          	ld	a5,0(s1)
    80006188:	0184b703          	ld	a4,24(s1)
    8000618c:	02e787b3          	mul	a5,a5,a4
        newBitVectors[i] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80006190:	003b1b93          	slli	s7,s6,0x3
    80006194:	01790bb3          	add	s7,s2,s7
    80006198:	00f585b3          	add	a1,a1,a5
    8000619c:	ffffc097          	auipc	ra,0xffffc
    800061a0:	c0c080e7          	jalr	-1012(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    800061a4:	00abb023          	sd	a0,0(s7)
        if (!newBitVectors[i]) return false;
    800061a8:	fc0514e3          	bnez	a0,80006170 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xa8>
    800061ac:	00000513          	li	a0,0
    800061b0:	0bc0006f          	j	8000626c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a4>
    }
    for (size_t i = 0; i < newNumberOfAllocations; ++i) newObjectVectors[i] = newBitVectors[i] + memorySizeForBits;
    800061b4:	00000713          	li	a4,0
    800061b8:	03377463          	bgeu	a4,s3,800061e0 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x118>
    800061bc:	00371793          	slli	a5,a4,0x3
    800061c0:	00f906b3          	add	a3,s2,a5
    800061c4:	0006b683          	ld	a3,0(a3)
    800061c8:	0104b603          	ld	a2,16(s1)
    800061cc:	00fa07b3          	add	a5,s4,a5
    800061d0:	00c686b3          	add	a3,a3,a2
    800061d4:	00d7b023          	sd	a3,0(a5)
    800061d8:	00170713          	addi	a4,a4,1
    800061dc:	fddff06f          	j	800061b8 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xf0>
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i)
    800061e0:	0304b683          	ld	a3,48(s1)
    800061e4:	0280006f          	j	8000620c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x144>
        for (size_t j = 0; j < memorySizeForBits; newBitVectors[i][j++] = 0);
    800061e8:	00369713          	slli	a4,a3,0x3
    800061ec:	00e90733          	add	a4,s2,a4
    800061f0:	00073703          	ld	a4,0(a4)
    800061f4:	00f70733          	add	a4,a4,a5
    800061f8:	00070023          	sb	zero,0(a4)
    800061fc:	00178793          	addi	a5,a5,1
    80006200:	0104b703          	ld	a4,16(s1)
    80006204:	fee7e2e3          	bltu	a5,a4,800061e8 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x120>
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i)
    80006208:	00168693          	addi	a3,a3,1
    8000620c:	0136f663          	bgeu	a3,s3,80006218 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x150>
        for (size_t j = 0; j < memorySizeForBits; newBitVectors[i][j++] = 0);
    80006210:	00000793          	li	a5,0
    80006214:	fedff06f          	j	80006200 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x138>
    MemoryAllocator::instance()->kmem_free(bitVectors);
    80006218:	ffffc097          	auipc	ra,0xffffc
    8000621c:	aac080e7          	jalr	-1364(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80006220:	0284b583          	ld	a1,40(s1)
    80006224:	ffffc097          	auipc	ra,0xffffc
    80006228:	c2c080e7          	jalr	-980(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(objectVectors);
    8000622c:	ffffc097          	auipc	ra,0xffffc
    80006230:	a98080e7          	jalr	-1384(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80006234:	0204b583          	ld	a1,32(s1)
    80006238:	ffffc097          	auipc	ra,0xffffc
    8000623c:	c18080e7          	jalr	-1000(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>

    numberOfObjects = newNumberOfObjects;
    80006240:	0154b423          	sd	s5,8(s1)
    nextNonTakenByte = numberOfAllocations * memorySizeForBits;
    80006244:	0304b783          	ld	a5,48(s1)
    80006248:	0104b703          	ld	a4,16(s1)
    8000624c:	02e787b3          	mul	a5,a5,a4
    80006250:	02f4bc23          	sd	a5,56(s1)
    numberOfAllocations = newNumberOfAllocations;
    80006254:	0334b823          	sd	s3,48(s1)
    bitVectors = newBitVectors;
    80006258:	0324b423          	sd	s2,40(s1)
    objectVectors = newObjectVectors;
    8000625c:	0344b023          	sd	s4,32(s1)

    return true;
    80006260:	00100513          	li	a0,1
    80006264:	0080006f          	j	8000626c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a4>
    if (!newBitVectors) return false;
    80006268:	00000513          	li	a0,0
}
    8000626c:	04813083          	ld	ra,72(sp)
    80006270:	04013403          	ld	s0,64(sp)
    80006274:	03813483          	ld	s1,56(sp)
    80006278:	03013903          	ld	s2,48(sp)
    8000627c:	02813983          	ld	s3,40(sp)
    80006280:	02013a03          	ld	s4,32(sp)
    80006284:	01813a83          	ld	s5,24(sp)
    80006288:	01013b03          	ld	s6,16(sp)
    8000628c:	00813b83          	ld	s7,8(sp)
    80006290:	05010113          	addi	sp,sp,80
    80006294:	00008067          	ret
    if (!newObjectVectors) return false;
    80006298:	00000513          	li	a0,0
    8000629c:	fd1ff06f          	j	8000626c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a4>

00000000800062a0 <_ZN16KObjectAllocator17allocateNewObjectEv>:
void* KObjectAllocator::allocateNewObject() {
    800062a0:	fe010113          	addi	sp,sp,-32
    800062a4:	00113c23          	sd	ra,24(sp)
    800062a8:	00813823          	sd	s0,16(sp)
    800062ac:	00913423          	sd	s1,8(sp)
    800062b0:	01213023          	sd	s2,0(sp)
    800062b4:	02010413          	addi	s0,sp,32
    800062b8:	00050913          	mv	s2,a0
    void* returnedObject = allocateFreeObject();
    800062bc:	00000097          	auipc	ra,0x0
    800062c0:	c80080e7          	jalr	-896(ra) # 80005f3c <_ZN16KObjectAllocator18allocateFreeObjectEv>
    800062c4:	00050493          	mv	s1,a0
    if (returnedObject) {
    800062c8:	02050063          	beqz	a0,800062e8 <_ZN16KObjectAllocator17allocateNewObjectEv+0x48>
}
    800062cc:	00048513          	mv	a0,s1
    800062d0:	01813083          	ld	ra,24(sp)
    800062d4:	01013403          	ld	s0,16(sp)
    800062d8:	00813483          	ld	s1,8(sp)
    800062dc:	00013903          	ld	s2,0(sp)
    800062e0:	02010113          	addi	sp,sp,32
    800062e4:	00008067          	ret
    nextNonTakenByte = 0;   // start search from start
    800062e8:	02093c23          	sd	zero,56(s2)
    returnedObject = allocateFreeObject();
    800062ec:	00090513          	mv	a0,s2
    800062f0:	00000097          	auipc	ra,0x0
    800062f4:	c4c080e7          	jalr	-948(ra) # 80005f3c <_ZN16KObjectAllocator18allocateFreeObjectEv>
    800062f8:	00050493          	mv	s1,a0
    if (returnedObject) {
    800062fc:	fc0518e3          	bnez	a0,800062cc <_ZN16KObjectAllocator17allocateNewObjectEv+0x2c>
    if (handleNotEnoughMemoryProblem()) {
    80006300:	00090513          	mv	a0,s2
    80006304:	00000097          	auipc	ra,0x0
    80006308:	dc4080e7          	jalr	-572(ra) # 800060c8 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv>
    8000630c:	fc0500e3          	beqz	a0,800062cc <_ZN16KObjectAllocator17allocateNewObjectEv+0x2c>
        returnedObject = allocateFreeObject();
    80006310:	00090513          	mv	a0,s2
    80006314:	00000097          	auipc	ra,0x0
    80006318:	c28080e7          	jalr	-984(ra) # 80005f3c <_ZN16KObjectAllocator18allocateFreeObjectEv>
    8000631c:	00050493          	mv	s1,a0
        if (returnedObject) {
    80006320:	fadff06f          	j	800062cc <_ZN16KObjectAllocator17allocateNewObjectEv+0x2c>

0000000080006324 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"

void Riscv::popSppSpie()
{
    80006324:	ff010113          	addi	sp,sp,-16
    80006328:	00813423          	sd	s0,8(sp)
    8000632c:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80006330:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80006334:	10200073          	sret
}
    80006338:	00813403          	ld	s0,8(sp)
    8000633c:	01010113          	addi	sp,sp,16
    80006340:	00008067          	ret

0000000080006344 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80006344:	fa010113          	addi	sp,sp,-96
    80006348:	04113c23          	sd	ra,88(sp)
    8000634c:	04813823          	sd	s0,80(sp)
    80006350:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80006354:	142027f3          	csrr	a5,scause
    80006358:	fcf43423          	sd	a5,-56(s0)
    return scause;
    8000635c:	fc843703          	ld	a4,-56(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80006360:	ff870693          	addi	a3,a4,-8
    80006364:	00100793          	li	a5,1
    80006368:	02d7fa63          	bgeu	a5,a3,8000639c <_ZN5Riscv20handleSupervisorTrapEv+0x58>
        TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    8000636c:	fff00793          	li	a5,-1
    80006370:	03f79793          	slli	a5,a5,0x3f
    80006374:	00178793          	addi	a5,a5,1
    80006378:	06f70863          	beq	a4,a5,800063e8 <_ZN5Riscv20handleSupervisorTrapEv+0xa4>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    8000637c:	fff00793          	li	a5,-1
    80006380:	03f79793          	slli	a5,a5,0x3f
    80006384:	00978793          	addi	a5,a5,9
    80006388:	0cf70c63          	beq	a4,a5,80006460 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
    }
    else
    {
        // unexpected trap cause
    }
    8000638c:	05813083          	ld	ra,88(sp)
    80006390:	05013403          	ld	s0,80(sp)
    80006394:	06010113          	addi	sp,sp,96
    80006398:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000639c:	141027f3          	csrr	a5,sepc
    800063a0:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    800063a4:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    800063a8:	00478793          	addi	a5,a5,4
    800063ac:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800063b0:	100027f3          	csrr	a5,sstatus
    800063b4:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    800063b8:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    800063bc:	faf43823          	sd	a5,-80(s0)
        TCB::timeSliceCounter = 0;
    800063c0:	00004797          	auipc	a5,0x4
    800063c4:	2107b783          	ld	a5,528(a5) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800063c8:	0007b023          	sd	zero,0(a5)
        TCB::dispatch();
    800063cc:	ffffb097          	auipc	ra,0xffffb
    800063d0:	798080e7          	jalr	1944(ra) # 80001b64 <_ZN3TCB8dispatchEv>
        w_sstatus(sstatus);
    800063d4:	fb043783          	ld	a5,-80(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800063d8:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800063dc:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800063e0:	14179073          	csrw	sepc,a5
}
    800063e4:	fa9ff06f          	j	8000638c <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800063e8:	00200793          	li	a5,2
    800063ec:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    800063f0:	00004717          	auipc	a4,0x4
    800063f4:	1e073703          	ld	a4,480(a4) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800063f8:	00073783          	ld	a5,0(a4)
    800063fc:	00178793          	addi	a5,a5,1
    80006400:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80006404:	00004717          	auipc	a4,0x4
    80006408:	1ec73703          	ld	a4,492(a4) # 8000a5f0 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000640c:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80006410:	02073703          	ld	a4,32(a4)
    80006414:	f6e7ece3          	bltu	a5,a4,8000638c <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80006418:	141027f3          	csrr	a5,sepc
    8000641c:	fef43423          	sd	a5,-24(s0)
    return sepc;
    80006420:	fe843783          	ld	a5,-24(s0)
            uint64 volatile sepc = r_sepc();
    80006424:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80006428:	100027f3          	csrr	a5,sstatus
    8000642c:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    80006430:	fe043783          	ld	a5,-32(s0)
            uint64 volatile sstatus = r_sstatus();
    80006434:	fcf43023          	sd	a5,-64(s0)
            TCB::timeSliceCounter = 0;
    80006438:	00004797          	auipc	a5,0x4
    8000643c:	1987b783          	ld	a5,408(a5) # 8000a5d0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80006440:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80006444:	ffffb097          	auipc	ra,0xffffb
    80006448:	720080e7          	jalr	1824(ra) # 80001b64 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    8000644c:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80006450:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80006454:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80006458:	14179073          	csrw	sepc,a5
}
    8000645c:	f31ff06f          	j	8000638c <_ZN5Riscv20handleSupervisorTrapEv+0x48>
        console_handler();
    80006460:	00002097          	auipc	ra,0x2
    80006464:	624080e7          	jalr	1572(ra) # 80008a84 <console_handler>
    80006468:	f25ff06f          	j	8000638c <_ZN5Riscv20handleSupervisorTrapEv+0x48>

000000008000646c <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    8000646c:	ff010113          	addi	sp,sp,-16
    80006470:	00813423          	sd	s0,8(sp)
    80006474:	01010413          	addi	s0,sp,16
    80006478:	00100793          	li	a5,1
    8000647c:	00f50863          	beq	a0,a5,8000648c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80006480:	00813403          	ld	s0,8(sp)
    80006484:	01010113          	addi	sp,sp,16
    80006488:	00008067          	ret
    8000648c:	000107b7          	lui	a5,0x10
    80006490:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006494:	fef596e3          	bne	a1,a5,80006480 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80006498:	00004797          	auipc	a5,0x4
    8000649c:	1f878793          	addi	a5,a5,504 # 8000a690 <_ZN9Scheduler16readyThreadQueueE>
    800064a0:	0007b023          	sd	zero,0(a5)
    800064a4:	0007b423          	sd	zero,8(a5)
    800064a8:	fd9ff06f          	j	80006480 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800064ac <_ZN9Scheduler3getEv>:
{
    800064ac:	fe010113          	addi	sp,sp,-32
    800064b0:	00113c23          	sd	ra,24(sp)
    800064b4:	00813823          	sd	s0,16(sp)
    800064b8:	00913423          	sd	s1,8(sp)
    800064bc:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800064c0:	00004517          	auipc	a0,0x4
    800064c4:	1d053503          	ld	a0,464(a0) # 8000a690 <_ZN9Scheduler16readyThreadQueueE>
    800064c8:	04050263          	beqz	a0,8000650c <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    800064cc:	00853783          	ld	a5,8(a0)
    800064d0:	00004717          	auipc	a4,0x4
    800064d4:	1cf73023          	sd	a5,448(a4) # 8000a690 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800064d8:	02078463          	beqz	a5,80006500 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    800064dc:	00053483          	ld	s1,0(a0)
        delete elem;
    800064e0:	ffffd097          	auipc	ra,0xffffd
    800064e4:	d1c080e7          	jalr	-740(ra) # 800031fc <_ZdlPv>
}
    800064e8:	00048513          	mv	a0,s1
    800064ec:	01813083          	ld	ra,24(sp)
    800064f0:	01013403          	ld	s0,16(sp)
    800064f4:	00813483          	ld	s1,8(sp)
    800064f8:	02010113          	addi	sp,sp,32
    800064fc:	00008067          	ret
        if (!head) { tail = 0; }
    80006500:	00004797          	auipc	a5,0x4
    80006504:	1807bc23          	sd	zero,408(a5) # 8000a698 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80006508:	fd5ff06f          	j	800064dc <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    8000650c:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80006510:	fd9ff06f          	j	800064e8 <_ZN9Scheduler3getEv+0x3c>

0000000080006514 <_ZN9Scheduler3putEP3TCB>:
{
    80006514:	fe010113          	addi	sp,sp,-32
    80006518:	00113c23          	sd	ra,24(sp)
    8000651c:	00813823          	sd	s0,16(sp)
    80006520:	00913423          	sd	s1,8(sp)
    80006524:	02010413          	addi	s0,sp,32
    80006528:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    8000652c:	01000513          	li	a0,16
    80006530:	ffffd097          	auipc	ra,0xffffd
    80006534:	c7c080e7          	jalr	-900(ra) # 800031ac <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80006538:	00953023          	sd	s1,0(a0)
    8000653c:	00053423          	sd	zero,8(a0)
        if (tail)
    80006540:	00004797          	auipc	a5,0x4
    80006544:	1587b783          	ld	a5,344(a5) # 8000a698 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80006548:	02078263          	beqz	a5,8000656c <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    8000654c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80006550:	00004797          	auipc	a5,0x4
    80006554:	14a7b423          	sd	a0,328(a5) # 8000a698 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80006558:	01813083          	ld	ra,24(sp)
    8000655c:	01013403          	ld	s0,16(sp)
    80006560:	00813483          	ld	s1,8(sp)
    80006564:	02010113          	addi	sp,sp,32
    80006568:	00008067          	ret
            head = tail = elem;
    8000656c:	00004797          	auipc	a5,0x4
    80006570:	12478793          	addi	a5,a5,292 # 8000a690 <_ZN9Scheduler16readyThreadQueueE>
    80006574:	00a7b423          	sd	a0,8(a5)
    80006578:	00a7b023          	sd	a0,0(a5)
    8000657c:	fddff06f          	j	80006558 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080006580 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80006580:	ff010113          	addi	sp,sp,-16
    80006584:	00113423          	sd	ra,8(sp)
    80006588:	00813023          	sd	s0,0(sp)
    8000658c:	01010413          	addi	s0,sp,16
    80006590:	000105b7          	lui	a1,0x10
    80006594:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80006598:	00100513          	li	a0,1
    8000659c:	00000097          	auipc	ra,0x0
    800065a0:	ed0080e7          	jalr	-304(ra) # 8000646c <_Z41__static_initialization_and_destruction_0ii>
    800065a4:	00813083          	ld	ra,8(sp)
    800065a8:	00013403          	ld	s0,0(sp)
    800065ac:	01010113          	addi	sp,sp,16
    800065b0:	00008067          	ret

00000000800065b4 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    800065b4:	fd010113          	addi	sp,sp,-48
    800065b8:	02113423          	sd	ra,40(sp)
    800065bc:	02813023          	sd	s0,32(sp)
    800065c0:	00913c23          	sd	s1,24(sp)
    800065c4:	01213823          	sd	s2,16(sp)
    800065c8:	03010413          	addi	s0,sp,48
    800065cc:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800065d0:	100027f3          	csrr	a5,sstatus
    800065d4:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800065d8:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800065dc:	00200793          	li	a5,2
    800065e0:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    while (*string != '\0') __putc(*string++);
    800065e4:	0004c503          	lbu	a0,0(s1)
    800065e8:	00050a63          	beqz	a0,800065fc <_Z11printStringPKc+0x48>
    800065ec:	00148493          	addi	s1,s1,1
    800065f0:	00002097          	auipc	ra,0x2
    800065f4:	420080e7          	jalr	1056(ra) # 80008a10 <__putc>
    800065f8:	fedff06f          	j	800065e4 <_Z11printStringPKc+0x30>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800065fc:	0009091b          	sext.w	s2,s2
    80006600:	00297913          	andi	s2,s2,2
    80006604:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80006608:	10092073          	csrs	sstatus,s2
}
    8000660c:	02813083          	ld	ra,40(sp)
    80006610:	02013403          	ld	s0,32(sp)
    80006614:	01813483          	ld	s1,24(sp)
    80006618:	01013903          	ld	s2,16(sp)
    8000661c:	03010113          	addi	sp,sp,48
    80006620:	00008067          	ret

0000000080006624 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80006624:	fc010113          	addi	sp,sp,-64
    80006628:	02113c23          	sd	ra,56(sp)
    8000662c:	02813823          	sd	s0,48(sp)
    80006630:	02913423          	sd	s1,40(sp)
    80006634:	03213023          	sd	s2,32(sp)
    80006638:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000663c:	100027f3          	csrr	a5,sstatus
    80006640:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80006644:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80006648:	00200793          	li	a5,2
    8000664c:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    static char digits[] = "0123456789";
    char buf[16]; int i = 0; uint64 x = integer;
    int neg = (integer & ((uint64)1 << 63)) != 0;
    80006650:	00050593          	mv	a1,a0

    if (neg) x = ~integer + 1;
    80006654:	06054463          	bltz	a0,800066bc <_Z12printIntegerm+0x98>
{
    80006658:	00000493          	li	s1,0

    do buf[i++] = digits[x % 10];
    8000665c:	00a00713          	li	a4,10
    80006660:	02e57633          	remu	a2,a0,a4
    80006664:	00048693          	mv	a3,s1
    80006668:	0014849b          	addiw	s1,s1,1
    8000666c:	00003797          	auipc	a5,0x3
    80006670:	f8c78793          	addi	a5,a5,-116 # 800095f8 <_ZZ12printIntegermE6digits>
    80006674:	00c787b3          	add	a5,a5,a2
    80006678:	0007c603          	lbu	a2,0(a5)
    8000667c:	fe040793          	addi	a5,s0,-32
    80006680:	00d787b3          	add	a5,a5,a3
    80006684:	fec78823          	sb	a2,-16(a5)
    while ((x /= 10) != 0);
    80006688:	00050613          	mv	a2,a0
    8000668c:	02e55533          	divu	a0,a0,a4
    80006690:	00900793          	li	a5,9
    80006694:	fcc7e4e3          	bltu	a5,a2,8000665c <_Z12printIntegerm+0x38>

    if (neg) buf[i++] = '-';
    80006698:	0205c663          	bltz	a1,800066c4 <_Z12printIntegerm+0xa0>
    while (--i >= 0) { __putc(buf[i]); }
    8000669c:	fff4849b          	addiw	s1,s1,-1
    800066a0:	0204ce63          	bltz	s1,800066dc <_Z12printIntegerm+0xb8>
    800066a4:	fe040793          	addi	a5,s0,-32
    800066a8:	009787b3          	add	a5,a5,s1
    800066ac:	ff07c503          	lbu	a0,-16(a5)
    800066b0:	00002097          	auipc	ra,0x2
    800066b4:	360080e7          	jalr	864(ra) # 80008a10 <__putc>
    800066b8:	fe5ff06f          	j	8000669c <_Z12printIntegerm+0x78>
    if (neg) x = ~integer + 1;
    800066bc:	40a00533          	neg	a0,a0
    800066c0:	f99ff06f          	j	80006658 <_Z12printIntegerm+0x34>
    if (neg) buf[i++] = '-';
    800066c4:	fe040793          	addi	a5,s0,-32
    800066c8:	009784b3          	add	s1,a5,s1
    800066cc:	02d00793          	li	a5,45
    800066d0:	fef48823          	sb	a5,-16(s1)
    800066d4:	0026849b          	addiw	s1,a3,2
    800066d8:	fc5ff06f          	j	8000669c <_Z12printIntegerm+0x78>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800066dc:	0009091b          	sext.w	s2,s2
    800066e0:	00297913          	andi	s2,s2,2
    800066e4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800066e8:	10092073          	csrs	sstatus,s2
}
    800066ec:	03813083          	ld	ra,56(sp)
    800066f0:	03013403          	ld	s0,48(sp)
    800066f4:	02813483          	ld	s1,40(sp)
    800066f8:	02013903          	ld	s2,32(sp)
    800066fc:	04010113          	addi	sp,sp,64
    80006700:	00008067          	ret

0000000080006704 <_Z12printIntegerh>:


void printInteger(uint8 integer)
{
    80006704:	ff010113          	addi	sp,sp,-16
    80006708:	00113423          	sd	ra,8(sp)
    8000670c:	00813023          	sd	s0,0(sp)
    80006710:	01010413          	addi	s0,sp,16
    printInteger((uint64)integer);
    80006714:	00000097          	auipc	ra,0x0
    80006718:	f10080e7          	jalr	-240(ra) # 80006624 <_Z12printIntegerm>
}
    8000671c:	00813083          	ld	ra,8(sp)
    80006720:	00013403          	ld	s0,0(sp)
    80006724:	01010113          	addi	sp,sp,16
    80006728:	00008067          	ret

000000008000672c <start>:
    8000672c:	ff010113          	addi	sp,sp,-16
    80006730:	00813423          	sd	s0,8(sp)
    80006734:	01010413          	addi	s0,sp,16
    80006738:	300027f3          	csrr	a5,mstatus
    8000673c:	ffffe737          	lui	a4,0xffffe
    80006740:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff2eef>
    80006744:	00e7f7b3          	and	a5,a5,a4
    80006748:	00001737          	lui	a4,0x1
    8000674c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006750:	00e7e7b3          	or	a5,a5,a4
    80006754:	30079073          	csrw	mstatus,a5
    80006758:	00000797          	auipc	a5,0x0
    8000675c:	16078793          	addi	a5,a5,352 # 800068b8 <system_main>
    80006760:	34179073          	csrw	mepc,a5
    80006764:	00000793          	li	a5,0
    80006768:	18079073          	csrw	satp,a5
    8000676c:	000107b7          	lui	a5,0x10
    80006770:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006774:	30279073          	csrw	medeleg,a5
    80006778:	30379073          	csrw	mideleg,a5
    8000677c:	104027f3          	csrr	a5,sie
    80006780:	2227e793          	ori	a5,a5,546
    80006784:	10479073          	csrw	sie,a5
    80006788:	fff00793          	li	a5,-1
    8000678c:	00a7d793          	srli	a5,a5,0xa
    80006790:	3b079073          	csrw	pmpaddr0,a5
    80006794:	00f00793          	li	a5,15
    80006798:	3a079073          	csrw	pmpcfg0,a5
    8000679c:	f14027f3          	csrr	a5,mhartid
    800067a0:	0200c737          	lui	a4,0x200c
    800067a4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800067a8:	0007869b          	sext.w	a3,a5
    800067ac:	00269713          	slli	a4,a3,0x2
    800067b0:	000f4637          	lui	a2,0xf4
    800067b4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800067b8:	00d70733          	add	a4,a4,a3
    800067bc:	0037979b          	slliw	a5,a5,0x3
    800067c0:	020046b7          	lui	a3,0x2004
    800067c4:	00d787b3          	add	a5,a5,a3
    800067c8:	00c585b3          	add	a1,a1,a2
    800067cc:	00371693          	slli	a3,a4,0x3
    800067d0:	00004717          	auipc	a4,0x4
    800067d4:	ed070713          	addi	a4,a4,-304 # 8000a6a0 <timer_scratch>
    800067d8:	00b7b023          	sd	a1,0(a5)
    800067dc:	00d70733          	add	a4,a4,a3
    800067e0:	00f73c23          	sd	a5,24(a4)
    800067e4:	02c73023          	sd	a2,32(a4)
    800067e8:	34071073          	csrw	mscratch,a4
    800067ec:	00000797          	auipc	a5,0x0
    800067f0:	6e478793          	addi	a5,a5,1764 # 80006ed0 <timervec>
    800067f4:	30579073          	csrw	mtvec,a5
    800067f8:	300027f3          	csrr	a5,mstatus
    800067fc:	0087e793          	ori	a5,a5,8
    80006800:	30079073          	csrw	mstatus,a5
    80006804:	304027f3          	csrr	a5,mie
    80006808:	0807e793          	ori	a5,a5,128
    8000680c:	30479073          	csrw	mie,a5
    80006810:	f14027f3          	csrr	a5,mhartid
    80006814:	0007879b          	sext.w	a5,a5
    80006818:	00078213          	mv	tp,a5
    8000681c:	30200073          	mret
    80006820:	00813403          	ld	s0,8(sp)
    80006824:	01010113          	addi	sp,sp,16
    80006828:	00008067          	ret

000000008000682c <timerinit>:
    8000682c:	ff010113          	addi	sp,sp,-16
    80006830:	00813423          	sd	s0,8(sp)
    80006834:	01010413          	addi	s0,sp,16
    80006838:	f14027f3          	csrr	a5,mhartid
    8000683c:	0200c737          	lui	a4,0x200c
    80006840:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006844:	0007869b          	sext.w	a3,a5
    80006848:	00269713          	slli	a4,a3,0x2
    8000684c:	000f4637          	lui	a2,0xf4
    80006850:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006854:	00d70733          	add	a4,a4,a3
    80006858:	0037979b          	slliw	a5,a5,0x3
    8000685c:	020046b7          	lui	a3,0x2004
    80006860:	00d787b3          	add	a5,a5,a3
    80006864:	00c585b3          	add	a1,a1,a2
    80006868:	00371693          	slli	a3,a4,0x3
    8000686c:	00004717          	auipc	a4,0x4
    80006870:	e3470713          	addi	a4,a4,-460 # 8000a6a0 <timer_scratch>
    80006874:	00b7b023          	sd	a1,0(a5)
    80006878:	00d70733          	add	a4,a4,a3
    8000687c:	00f73c23          	sd	a5,24(a4)
    80006880:	02c73023          	sd	a2,32(a4)
    80006884:	34071073          	csrw	mscratch,a4
    80006888:	00000797          	auipc	a5,0x0
    8000688c:	64878793          	addi	a5,a5,1608 # 80006ed0 <timervec>
    80006890:	30579073          	csrw	mtvec,a5
    80006894:	300027f3          	csrr	a5,mstatus
    80006898:	0087e793          	ori	a5,a5,8
    8000689c:	30079073          	csrw	mstatus,a5
    800068a0:	304027f3          	csrr	a5,mie
    800068a4:	0807e793          	ori	a5,a5,128
    800068a8:	30479073          	csrw	mie,a5
    800068ac:	00813403          	ld	s0,8(sp)
    800068b0:	01010113          	addi	sp,sp,16
    800068b4:	00008067          	ret

00000000800068b8 <system_main>:
    800068b8:	fe010113          	addi	sp,sp,-32
    800068bc:	00813823          	sd	s0,16(sp)
    800068c0:	00913423          	sd	s1,8(sp)
    800068c4:	00113c23          	sd	ra,24(sp)
    800068c8:	02010413          	addi	s0,sp,32
    800068cc:	00000097          	auipc	ra,0x0
    800068d0:	0c4080e7          	jalr	196(ra) # 80006990 <cpuid>
    800068d4:	00004497          	auipc	s1,0x4
    800068d8:	d5c48493          	addi	s1,s1,-676 # 8000a630 <started>
    800068dc:	02050263          	beqz	a0,80006900 <system_main+0x48>
    800068e0:	0004a783          	lw	a5,0(s1)
    800068e4:	0007879b          	sext.w	a5,a5
    800068e8:	fe078ce3          	beqz	a5,800068e0 <system_main+0x28>
    800068ec:	0ff0000f          	fence
    800068f0:	00003517          	auipc	a0,0x3
    800068f4:	d4850513          	addi	a0,a0,-696 # 80009638 <_ZZ12printIntegermE6digits+0x40>
    800068f8:	00001097          	auipc	ra,0x1
    800068fc:	a74080e7          	jalr	-1420(ra) # 8000736c <panic>
    80006900:	00001097          	auipc	ra,0x1
    80006904:	9c8080e7          	jalr	-1592(ra) # 800072c8 <consoleinit>
    80006908:	00001097          	auipc	ra,0x1
    8000690c:	154080e7          	jalr	340(ra) # 80007a5c <printfinit>
    80006910:	00003517          	auipc	a0,0x3
    80006914:	80050513          	addi	a0,a0,-2048 # 80009110 <CONSOLE_STATUS+0x100>
    80006918:	00001097          	auipc	ra,0x1
    8000691c:	ab0080e7          	jalr	-1360(ra) # 800073c8 <__printf>
    80006920:	00003517          	auipc	a0,0x3
    80006924:	ce850513          	addi	a0,a0,-792 # 80009608 <_ZZ12printIntegermE6digits+0x10>
    80006928:	00001097          	auipc	ra,0x1
    8000692c:	aa0080e7          	jalr	-1376(ra) # 800073c8 <__printf>
    80006930:	00002517          	auipc	a0,0x2
    80006934:	7e050513          	addi	a0,a0,2016 # 80009110 <CONSOLE_STATUS+0x100>
    80006938:	00001097          	auipc	ra,0x1
    8000693c:	a90080e7          	jalr	-1392(ra) # 800073c8 <__printf>
    80006940:	00001097          	auipc	ra,0x1
    80006944:	4a8080e7          	jalr	1192(ra) # 80007de8 <kinit>
    80006948:	00000097          	auipc	ra,0x0
    8000694c:	148080e7          	jalr	328(ra) # 80006a90 <trapinit>
    80006950:	00000097          	auipc	ra,0x0
    80006954:	16c080e7          	jalr	364(ra) # 80006abc <trapinithart>
    80006958:	00000097          	auipc	ra,0x0
    8000695c:	5b8080e7          	jalr	1464(ra) # 80006f10 <plicinit>
    80006960:	00000097          	auipc	ra,0x0
    80006964:	5d8080e7          	jalr	1496(ra) # 80006f38 <plicinithart>
    80006968:	00000097          	auipc	ra,0x0
    8000696c:	078080e7          	jalr	120(ra) # 800069e0 <userinit>
    80006970:	0ff0000f          	fence
    80006974:	00100793          	li	a5,1
    80006978:	00003517          	auipc	a0,0x3
    8000697c:	ca850513          	addi	a0,a0,-856 # 80009620 <_ZZ12printIntegermE6digits+0x28>
    80006980:	00f4a023          	sw	a5,0(s1)
    80006984:	00001097          	auipc	ra,0x1
    80006988:	a44080e7          	jalr	-1468(ra) # 800073c8 <__printf>
    8000698c:	0000006f          	j	8000698c <system_main+0xd4>

0000000080006990 <cpuid>:
    80006990:	ff010113          	addi	sp,sp,-16
    80006994:	00813423          	sd	s0,8(sp)
    80006998:	01010413          	addi	s0,sp,16
    8000699c:	00020513          	mv	a0,tp
    800069a0:	00813403          	ld	s0,8(sp)
    800069a4:	0005051b          	sext.w	a0,a0
    800069a8:	01010113          	addi	sp,sp,16
    800069ac:	00008067          	ret

00000000800069b0 <mycpu>:
    800069b0:	ff010113          	addi	sp,sp,-16
    800069b4:	00813423          	sd	s0,8(sp)
    800069b8:	01010413          	addi	s0,sp,16
    800069bc:	00020793          	mv	a5,tp
    800069c0:	00813403          	ld	s0,8(sp)
    800069c4:	0007879b          	sext.w	a5,a5
    800069c8:	00779793          	slli	a5,a5,0x7
    800069cc:	00005517          	auipc	a0,0x5
    800069d0:	d0450513          	addi	a0,a0,-764 # 8000b6d0 <cpus>
    800069d4:	00f50533          	add	a0,a0,a5
    800069d8:	01010113          	addi	sp,sp,16
    800069dc:	00008067          	ret

00000000800069e0 <userinit>:
    800069e0:	ff010113          	addi	sp,sp,-16
    800069e4:	00813423          	sd	s0,8(sp)
    800069e8:	01010413          	addi	s0,sp,16
    800069ec:	00813403          	ld	s0,8(sp)
    800069f0:	01010113          	addi	sp,sp,16
    800069f4:	ffffb317          	auipc	t1,0xffffb
    800069f8:	c9830067          	jr	-872(t1) # 8000168c <main>

00000000800069fc <either_copyout>:
    800069fc:	ff010113          	addi	sp,sp,-16
    80006a00:	00813023          	sd	s0,0(sp)
    80006a04:	00113423          	sd	ra,8(sp)
    80006a08:	01010413          	addi	s0,sp,16
    80006a0c:	02051663          	bnez	a0,80006a38 <either_copyout+0x3c>
    80006a10:	00058513          	mv	a0,a1
    80006a14:	00060593          	mv	a1,a2
    80006a18:	0006861b          	sext.w	a2,a3
    80006a1c:	00002097          	auipc	ra,0x2
    80006a20:	c58080e7          	jalr	-936(ra) # 80008674 <__memmove>
    80006a24:	00813083          	ld	ra,8(sp)
    80006a28:	00013403          	ld	s0,0(sp)
    80006a2c:	00000513          	li	a0,0
    80006a30:	01010113          	addi	sp,sp,16
    80006a34:	00008067          	ret
    80006a38:	00003517          	auipc	a0,0x3
    80006a3c:	c2850513          	addi	a0,a0,-984 # 80009660 <_ZZ12printIntegermE6digits+0x68>
    80006a40:	00001097          	auipc	ra,0x1
    80006a44:	92c080e7          	jalr	-1748(ra) # 8000736c <panic>

0000000080006a48 <either_copyin>:
    80006a48:	ff010113          	addi	sp,sp,-16
    80006a4c:	00813023          	sd	s0,0(sp)
    80006a50:	00113423          	sd	ra,8(sp)
    80006a54:	01010413          	addi	s0,sp,16
    80006a58:	02059463          	bnez	a1,80006a80 <either_copyin+0x38>
    80006a5c:	00060593          	mv	a1,a2
    80006a60:	0006861b          	sext.w	a2,a3
    80006a64:	00002097          	auipc	ra,0x2
    80006a68:	c10080e7          	jalr	-1008(ra) # 80008674 <__memmove>
    80006a6c:	00813083          	ld	ra,8(sp)
    80006a70:	00013403          	ld	s0,0(sp)
    80006a74:	00000513          	li	a0,0
    80006a78:	01010113          	addi	sp,sp,16
    80006a7c:	00008067          	ret
    80006a80:	00003517          	auipc	a0,0x3
    80006a84:	c0850513          	addi	a0,a0,-1016 # 80009688 <_ZZ12printIntegermE6digits+0x90>
    80006a88:	00001097          	auipc	ra,0x1
    80006a8c:	8e4080e7          	jalr	-1820(ra) # 8000736c <panic>

0000000080006a90 <trapinit>:
    80006a90:	ff010113          	addi	sp,sp,-16
    80006a94:	00813423          	sd	s0,8(sp)
    80006a98:	01010413          	addi	s0,sp,16
    80006a9c:	00813403          	ld	s0,8(sp)
    80006aa0:	00003597          	auipc	a1,0x3
    80006aa4:	c1058593          	addi	a1,a1,-1008 # 800096b0 <_ZZ12printIntegermE6digits+0xb8>
    80006aa8:	00005517          	auipc	a0,0x5
    80006aac:	ca850513          	addi	a0,a0,-856 # 8000b750 <tickslock>
    80006ab0:	01010113          	addi	sp,sp,16
    80006ab4:	00001317          	auipc	t1,0x1
    80006ab8:	5c430067          	jr	1476(t1) # 80008078 <initlock>

0000000080006abc <trapinithart>:
    80006abc:	ff010113          	addi	sp,sp,-16
    80006ac0:	00813423          	sd	s0,8(sp)
    80006ac4:	01010413          	addi	s0,sp,16
    80006ac8:	00000797          	auipc	a5,0x0
    80006acc:	2f878793          	addi	a5,a5,760 # 80006dc0 <kernelvec>
    80006ad0:	10579073          	csrw	stvec,a5
    80006ad4:	00813403          	ld	s0,8(sp)
    80006ad8:	01010113          	addi	sp,sp,16
    80006adc:	00008067          	ret

0000000080006ae0 <usertrap>:
    80006ae0:	ff010113          	addi	sp,sp,-16
    80006ae4:	00813423          	sd	s0,8(sp)
    80006ae8:	01010413          	addi	s0,sp,16
    80006aec:	00813403          	ld	s0,8(sp)
    80006af0:	01010113          	addi	sp,sp,16
    80006af4:	00008067          	ret

0000000080006af8 <usertrapret>:
    80006af8:	ff010113          	addi	sp,sp,-16
    80006afc:	00813423          	sd	s0,8(sp)
    80006b00:	01010413          	addi	s0,sp,16
    80006b04:	00813403          	ld	s0,8(sp)
    80006b08:	01010113          	addi	sp,sp,16
    80006b0c:	00008067          	ret

0000000080006b10 <kerneltrap>:
    80006b10:	fe010113          	addi	sp,sp,-32
    80006b14:	00813823          	sd	s0,16(sp)
    80006b18:	00113c23          	sd	ra,24(sp)
    80006b1c:	00913423          	sd	s1,8(sp)
    80006b20:	02010413          	addi	s0,sp,32
    80006b24:	142025f3          	csrr	a1,scause
    80006b28:	100027f3          	csrr	a5,sstatus
    80006b2c:	0027f793          	andi	a5,a5,2
    80006b30:	10079c63          	bnez	a5,80006c48 <kerneltrap+0x138>
    80006b34:	142027f3          	csrr	a5,scause
    80006b38:	0207ce63          	bltz	a5,80006b74 <kerneltrap+0x64>
    80006b3c:	00003517          	auipc	a0,0x3
    80006b40:	bbc50513          	addi	a0,a0,-1092 # 800096f8 <_ZZ12printIntegermE6digits+0x100>
    80006b44:	00001097          	auipc	ra,0x1
    80006b48:	884080e7          	jalr	-1916(ra) # 800073c8 <__printf>
    80006b4c:	141025f3          	csrr	a1,sepc
    80006b50:	14302673          	csrr	a2,stval
    80006b54:	00003517          	auipc	a0,0x3
    80006b58:	bb450513          	addi	a0,a0,-1100 # 80009708 <_ZZ12printIntegermE6digits+0x110>
    80006b5c:	00001097          	auipc	ra,0x1
    80006b60:	86c080e7          	jalr	-1940(ra) # 800073c8 <__printf>
    80006b64:	00003517          	auipc	a0,0x3
    80006b68:	bbc50513          	addi	a0,a0,-1092 # 80009720 <_ZZ12printIntegermE6digits+0x128>
    80006b6c:	00001097          	auipc	ra,0x1
    80006b70:	800080e7          	jalr	-2048(ra) # 8000736c <panic>
    80006b74:	0ff7f713          	andi	a4,a5,255
    80006b78:	00900693          	li	a3,9
    80006b7c:	04d70063          	beq	a4,a3,80006bbc <kerneltrap+0xac>
    80006b80:	fff00713          	li	a4,-1
    80006b84:	03f71713          	slli	a4,a4,0x3f
    80006b88:	00170713          	addi	a4,a4,1
    80006b8c:	fae798e3          	bne	a5,a4,80006b3c <kerneltrap+0x2c>
    80006b90:	00000097          	auipc	ra,0x0
    80006b94:	e00080e7          	jalr	-512(ra) # 80006990 <cpuid>
    80006b98:	06050663          	beqz	a0,80006c04 <kerneltrap+0xf4>
    80006b9c:	144027f3          	csrr	a5,sip
    80006ba0:	ffd7f793          	andi	a5,a5,-3
    80006ba4:	14479073          	csrw	sip,a5
    80006ba8:	01813083          	ld	ra,24(sp)
    80006bac:	01013403          	ld	s0,16(sp)
    80006bb0:	00813483          	ld	s1,8(sp)
    80006bb4:	02010113          	addi	sp,sp,32
    80006bb8:	00008067          	ret
    80006bbc:	00000097          	auipc	ra,0x0
    80006bc0:	3c8080e7          	jalr	968(ra) # 80006f84 <plic_claim>
    80006bc4:	00a00793          	li	a5,10
    80006bc8:	00050493          	mv	s1,a0
    80006bcc:	06f50863          	beq	a0,a5,80006c3c <kerneltrap+0x12c>
    80006bd0:	fc050ce3          	beqz	a0,80006ba8 <kerneltrap+0x98>
    80006bd4:	00050593          	mv	a1,a0
    80006bd8:	00003517          	auipc	a0,0x3
    80006bdc:	b0050513          	addi	a0,a0,-1280 # 800096d8 <_ZZ12printIntegermE6digits+0xe0>
    80006be0:	00000097          	auipc	ra,0x0
    80006be4:	7e8080e7          	jalr	2024(ra) # 800073c8 <__printf>
    80006be8:	01013403          	ld	s0,16(sp)
    80006bec:	01813083          	ld	ra,24(sp)
    80006bf0:	00048513          	mv	a0,s1
    80006bf4:	00813483          	ld	s1,8(sp)
    80006bf8:	02010113          	addi	sp,sp,32
    80006bfc:	00000317          	auipc	t1,0x0
    80006c00:	3c030067          	jr	960(t1) # 80006fbc <plic_complete>
    80006c04:	00005517          	auipc	a0,0x5
    80006c08:	b4c50513          	addi	a0,a0,-1204 # 8000b750 <tickslock>
    80006c0c:	00001097          	auipc	ra,0x1
    80006c10:	490080e7          	jalr	1168(ra) # 8000809c <acquire>
    80006c14:	00004717          	auipc	a4,0x4
    80006c18:	a2070713          	addi	a4,a4,-1504 # 8000a634 <ticks>
    80006c1c:	00072783          	lw	a5,0(a4)
    80006c20:	00005517          	auipc	a0,0x5
    80006c24:	b3050513          	addi	a0,a0,-1232 # 8000b750 <tickslock>
    80006c28:	0017879b          	addiw	a5,a5,1
    80006c2c:	00f72023          	sw	a5,0(a4)
    80006c30:	00001097          	auipc	ra,0x1
    80006c34:	538080e7          	jalr	1336(ra) # 80008168 <release>
    80006c38:	f65ff06f          	j	80006b9c <kerneltrap+0x8c>
    80006c3c:	00001097          	auipc	ra,0x1
    80006c40:	094080e7          	jalr	148(ra) # 80007cd0 <uartintr>
    80006c44:	fa5ff06f          	j	80006be8 <kerneltrap+0xd8>
    80006c48:	00003517          	auipc	a0,0x3
    80006c4c:	a7050513          	addi	a0,a0,-1424 # 800096b8 <_ZZ12printIntegermE6digits+0xc0>
    80006c50:	00000097          	auipc	ra,0x0
    80006c54:	71c080e7          	jalr	1820(ra) # 8000736c <panic>

0000000080006c58 <clockintr>:
    80006c58:	fe010113          	addi	sp,sp,-32
    80006c5c:	00813823          	sd	s0,16(sp)
    80006c60:	00913423          	sd	s1,8(sp)
    80006c64:	00113c23          	sd	ra,24(sp)
    80006c68:	02010413          	addi	s0,sp,32
    80006c6c:	00005497          	auipc	s1,0x5
    80006c70:	ae448493          	addi	s1,s1,-1308 # 8000b750 <tickslock>
    80006c74:	00048513          	mv	a0,s1
    80006c78:	00001097          	auipc	ra,0x1
    80006c7c:	424080e7          	jalr	1060(ra) # 8000809c <acquire>
    80006c80:	00004717          	auipc	a4,0x4
    80006c84:	9b470713          	addi	a4,a4,-1612 # 8000a634 <ticks>
    80006c88:	00072783          	lw	a5,0(a4)
    80006c8c:	01013403          	ld	s0,16(sp)
    80006c90:	01813083          	ld	ra,24(sp)
    80006c94:	00048513          	mv	a0,s1
    80006c98:	0017879b          	addiw	a5,a5,1
    80006c9c:	00813483          	ld	s1,8(sp)
    80006ca0:	00f72023          	sw	a5,0(a4)
    80006ca4:	02010113          	addi	sp,sp,32
    80006ca8:	00001317          	auipc	t1,0x1
    80006cac:	4c030067          	jr	1216(t1) # 80008168 <release>

0000000080006cb0 <devintr>:
    80006cb0:	142027f3          	csrr	a5,scause
    80006cb4:	00000513          	li	a0,0
    80006cb8:	0007c463          	bltz	a5,80006cc0 <devintr+0x10>
    80006cbc:	00008067          	ret
    80006cc0:	fe010113          	addi	sp,sp,-32
    80006cc4:	00813823          	sd	s0,16(sp)
    80006cc8:	00113c23          	sd	ra,24(sp)
    80006ccc:	00913423          	sd	s1,8(sp)
    80006cd0:	02010413          	addi	s0,sp,32
    80006cd4:	0ff7f713          	andi	a4,a5,255
    80006cd8:	00900693          	li	a3,9
    80006cdc:	04d70c63          	beq	a4,a3,80006d34 <devintr+0x84>
    80006ce0:	fff00713          	li	a4,-1
    80006ce4:	03f71713          	slli	a4,a4,0x3f
    80006ce8:	00170713          	addi	a4,a4,1
    80006cec:	00e78c63          	beq	a5,a4,80006d04 <devintr+0x54>
    80006cf0:	01813083          	ld	ra,24(sp)
    80006cf4:	01013403          	ld	s0,16(sp)
    80006cf8:	00813483          	ld	s1,8(sp)
    80006cfc:	02010113          	addi	sp,sp,32
    80006d00:	00008067          	ret
    80006d04:	00000097          	auipc	ra,0x0
    80006d08:	c8c080e7          	jalr	-884(ra) # 80006990 <cpuid>
    80006d0c:	06050663          	beqz	a0,80006d78 <devintr+0xc8>
    80006d10:	144027f3          	csrr	a5,sip
    80006d14:	ffd7f793          	andi	a5,a5,-3
    80006d18:	14479073          	csrw	sip,a5
    80006d1c:	01813083          	ld	ra,24(sp)
    80006d20:	01013403          	ld	s0,16(sp)
    80006d24:	00813483          	ld	s1,8(sp)
    80006d28:	00200513          	li	a0,2
    80006d2c:	02010113          	addi	sp,sp,32
    80006d30:	00008067          	ret
    80006d34:	00000097          	auipc	ra,0x0
    80006d38:	250080e7          	jalr	592(ra) # 80006f84 <plic_claim>
    80006d3c:	00a00793          	li	a5,10
    80006d40:	00050493          	mv	s1,a0
    80006d44:	06f50663          	beq	a0,a5,80006db0 <devintr+0x100>
    80006d48:	00100513          	li	a0,1
    80006d4c:	fa0482e3          	beqz	s1,80006cf0 <devintr+0x40>
    80006d50:	00048593          	mv	a1,s1
    80006d54:	00003517          	auipc	a0,0x3
    80006d58:	98450513          	addi	a0,a0,-1660 # 800096d8 <_ZZ12printIntegermE6digits+0xe0>
    80006d5c:	00000097          	auipc	ra,0x0
    80006d60:	66c080e7          	jalr	1644(ra) # 800073c8 <__printf>
    80006d64:	00048513          	mv	a0,s1
    80006d68:	00000097          	auipc	ra,0x0
    80006d6c:	254080e7          	jalr	596(ra) # 80006fbc <plic_complete>
    80006d70:	00100513          	li	a0,1
    80006d74:	f7dff06f          	j	80006cf0 <devintr+0x40>
    80006d78:	00005517          	auipc	a0,0x5
    80006d7c:	9d850513          	addi	a0,a0,-1576 # 8000b750 <tickslock>
    80006d80:	00001097          	auipc	ra,0x1
    80006d84:	31c080e7          	jalr	796(ra) # 8000809c <acquire>
    80006d88:	00004717          	auipc	a4,0x4
    80006d8c:	8ac70713          	addi	a4,a4,-1876 # 8000a634 <ticks>
    80006d90:	00072783          	lw	a5,0(a4)
    80006d94:	00005517          	auipc	a0,0x5
    80006d98:	9bc50513          	addi	a0,a0,-1604 # 8000b750 <tickslock>
    80006d9c:	0017879b          	addiw	a5,a5,1
    80006da0:	00f72023          	sw	a5,0(a4)
    80006da4:	00001097          	auipc	ra,0x1
    80006da8:	3c4080e7          	jalr	964(ra) # 80008168 <release>
    80006dac:	f65ff06f          	j	80006d10 <devintr+0x60>
    80006db0:	00001097          	auipc	ra,0x1
    80006db4:	f20080e7          	jalr	-224(ra) # 80007cd0 <uartintr>
    80006db8:	fadff06f          	j	80006d64 <devintr+0xb4>
    80006dbc:	0000                	unimp
	...

0000000080006dc0 <kernelvec>:
    80006dc0:	f0010113          	addi	sp,sp,-256
    80006dc4:	00113023          	sd	ra,0(sp)
    80006dc8:	00213423          	sd	sp,8(sp)
    80006dcc:	00313823          	sd	gp,16(sp)
    80006dd0:	00413c23          	sd	tp,24(sp)
    80006dd4:	02513023          	sd	t0,32(sp)
    80006dd8:	02613423          	sd	t1,40(sp)
    80006ddc:	02713823          	sd	t2,48(sp)
    80006de0:	02813c23          	sd	s0,56(sp)
    80006de4:	04913023          	sd	s1,64(sp)
    80006de8:	04a13423          	sd	a0,72(sp)
    80006dec:	04b13823          	sd	a1,80(sp)
    80006df0:	04c13c23          	sd	a2,88(sp)
    80006df4:	06d13023          	sd	a3,96(sp)
    80006df8:	06e13423          	sd	a4,104(sp)
    80006dfc:	06f13823          	sd	a5,112(sp)
    80006e00:	07013c23          	sd	a6,120(sp)
    80006e04:	09113023          	sd	a7,128(sp)
    80006e08:	09213423          	sd	s2,136(sp)
    80006e0c:	09313823          	sd	s3,144(sp)
    80006e10:	09413c23          	sd	s4,152(sp)
    80006e14:	0b513023          	sd	s5,160(sp)
    80006e18:	0b613423          	sd	s6,168(sp)
    80006e1c:	0b713823          	sd	s7,176(sp)
    80006e20:	0b813c23          	sd	s8,184(sp)
    80006e24:	0d913023          	sd	s9,192(sp)
    80006e28:	0da13423          	sd	s10,200(sp)
    80006e2c:	0db13823          	sd	s11,208(sp)
    80006e30:	0dc13c23          	sd	t3,216(sp)
    80006e34:	0fd13023          	sd	t4,224(sp)
    80006e38:	0fe13423          	sd	t5,232(sp)
    80006e3c:	0ff13823          	sd	t6,240(sp)
    80006e40:	cd1ff0ef          	jal	ra,80006b10 <kerneltrap>
    80006e44:	00013083          	ld	ra,0(sp)
    80006e48:	00813103          	ld	sp,8(sp)
    80006e4c:	01013183          	ld	gp,16(sp)
    80006e50:	02013283          	ld	t0,32(sp)
    80006e54:	02813303          	ld	t1,40(sp)
    80006e58:	03013383          	ld	t2,48(sp)
    80006e5c:	03813403          	ld	s0,56(sp)
    80006e60:	04013483          	ld	s1,64(sp)
    80006e64:	04813503          	ld	a0,72(sp)
    80006e68:	05013583          	ld	a1,80(sp)
    80006e6c:	05813603          	ld	a2,88(sp)
    80006e70:	06013683          	ld	a3,96(sp)
    80006e74:	06813703          	ld	a4,104(sp)
    80006e78:	07013783          	ld	a5,112(sp)
    80006e7c:	07813803          	ld	a6,120(sp)
    80006e80:	08013883          	ld	a7,128(sp)
    80006e84:	08813903          	ld	s2,136(sp)
    80006e88:	09013983          	ld	s3,144(sp)
    80006e8c:	09813a03          	ld	s4,152(sp)
    80006e90:	0a013a83          	ld	s5,160(sp)
    80006e94:	0a813b03          	ld	s6,168(sp)
    80006e98:	0b013b83          	ld	s7,176(sp)
    80006e9c:	0b813c03          	ld	s8,184(sp)
    80006ea0:	0c013c83          	ld	s9,192(sp)
    80006ea4:	0c813d03          	ld	s10,200(sp)
    80006ea8:	0d013d83          	ld	s11,208(sp)
    80006eac:	0d813e03          	ld	t3,216(sp)
    80006eb0:	0e013e83          	ld	t4,224(sp)
    80006eb4:	0e813f03          	ld	t5,232(sp)
    80006eb8:	0f013f83          	ld	t6,240(sp)
    80006ebc:	10010113          	addi	sp,sp,256
    80006ec0:	10200073          	sret
    80006ec4:	00000013          	nop
    80006ec8:	00000013          	nop
    80006ecc:	00000013          	nop

0000000080006ed0 <timervec>:
    80006ed0:	34051573          	csrrw	a0,mscratch,a0
    80006ed4:	00b53023          	sd	a1,0(a0)
    80006ed8:	00c53423          	sd	a2,8(a0)
    80006edc:	00d53823          	sd	a3,16(a0)
    80006ee0:	01853583          	ld	a1,24(a0)
    80006ee4:	02053603          	ld	a2,32(a0)
    80006ee8:	0005b683          	ld	a3,0(a1)
    80006eec:	00c686b3          	add	a3,a3,a2
    80006ef0:	00d5b023          	sd	a3,0(a1)
    80006ef4:	00200593          	li	a1,2
    80006ef8:	14459073          	csrw	sip,a1
    80006efc:	01053683          	ld	a3,16(a0)
    80006f00:	00853603          	ld	a2,8(a0)
    80006f04:	00053583          	ld	a1,0(a0)
    80006f08:	34051573          	csrrw	a0,mscratch,a0
    80006f0c:	30200073          	mret

0000000080006f10 <plicinit>:
    80006f10:	ff010113          	addi	sp,sp,-16
    80006f14:	00813423          	sd	s0,8(sp)
    80006f18:	01010413          	addi	s0,sp,16
    80006f1c:	00813403          	ld	s0,8(sp)
    80006f20:	0c0007b7          	lui	a5,0xc000
    80006f24:	00100713          	li	a4,1
    80006f28:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006f2c:	00e7a223          	sw	a4,4(a5)
    80006f30:	01010113          	addi	sp,sp,16
    80006f34:	00008067          	ret

0000000080006f38 <plicinithart>:
    80006f38:	ff010113          	addi	sp,sp,-16
    80006f3c:	00813023          	sd	s0,0(sp)
    80006f40:	00113423          	sd	ra,8(sp)
    80006f44:	01010413          	addi	s0,sp,16
    80006f48:	00000097          	auipc	ra,0x0
    80006f4c:	a48080e7          	jalr	-1464(ra) # 80006990 <cpuid>
    80006f50:	0085171b          	slliw	a4,a0,0x8
    80006f54:	0c0027b7          	lui	a5,0xc002
    80006f58:	00e787b3          	add	a5,a5,a4
    80006f5c:	40200713          	li	a4,1026
    80006f60:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006f64:	00813083          	ld	ra,8(sp)
    80006f68:	00013403          	ld	s0,0(sp)
    80006f6c:	00d5151b          	slliw	a0,a0,0xd
    80006f70:	0c2017b7          	lui	a5,0xc201
    80006f74:	00a78533          	add	a0,a5,a0
    80006f78:	00052023          	sw	zero,0(a0)
    80006f7c:	01010113          	addi	sp,sp,16
    80006f80:	00008067          	ret

0000000080006f84 <plic_claim>:
    80006f84:	ff010113          	addi	sp,sp,-16
    80006f88:	00813023          	sd	s0,0(sp)
    80006f8c:	00113423          	sd	ra,8(sp)
    80006f90:	01010413          	addi	s0,sp,16
    80006f94:	00000097          	auipc	ra,0x0
    80006f98:	9fc080e7          	jalr	-1540(ra) # 80006990 <cpuid>
    80006f9c:	00813083          	ld	ra,8(sp)
    80006fa0:	00013403          	ld	s0,0(sp)
    80006fa4:	00d5151b          	slliw	a0,a0,0xd
    80006fa8:	0c2017b7          	lui	a5,0xc201
    80006fac:	00a78533          	add	a0,a5,a0
    80006fb0:	00452503          	lw	a0,4(a0)
    80006fb4:	01010113          	addi	sp,sp,16
    80006fb8:	00008067          	ret

0000000080006fbc <plic_complete>:
    80006fbc:	fe010113          	addi	sp,sp,-32
    80006fc0:	00813823          	sd	s0,16(sp)
    80006fc4:	00913423          	sd	s1,8(sp)
    80006fc8:	00113c23          	sd	ra,24(sp)
    80006fcc:	02010413          	addi	s0,sp,32
    80006fd0:	00050493          	mv	s1,a0
    80006fd4:	00000097          	auipc	ra,0x0
    80006fd8:	9bc080e7          	jalr	-1604(ra) # 80006990 <cpuid>
    80006fdc:	01813083          	ld	ra,24(sp)
    80006fe0:	01013403          	ld	s0,16(sp)
    80006fe4:	00d5179b          	slliw	a5,a0,0xd
    80006fe8:	0c201737          	lui	a4,0xc201
    80006fec:	00f707b3          	add	a5,a4,a5
    80006ff0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006ff4:	00813483          	ld	s1,8(sp)
    80006ff8:	02010113          	addi	sp,sp,32
    80006ffc:	00008067          	ret

0000000080007000 <consolewrite>:
    80007000:	fb010113          	addi	sp,sp,-80
    80007004:	04813023          	sd	s0,64(sp)
    80007008:	04113423          	sd	ra,72(sp)
    8000700c:	02913c23          	sd	s1,56(sp)
    80007010:	03213823          	sd	s2,48(sp)
    80007014:	03313423          	sd	s3,40(sp)
    80007018:	03413023          	sd	s4,32(sp)
    8000701c:	01513c23          	sd	s5,24(sp)
    80007020:	05010413          	addi	s0,sp,80
    80007024:	06c05c63          	blez	a2,8000709c <consolewrite+0x9c>
    80007028:	00060993          	mv	s3,a2
    8000702c:	00050a13          	mv	s4,a0
    80007030:	00058493          	mv	s1,a1
    80007034:	00000913          	li	s2,0
    80007038:	fff00a93          	li	s5,-1
    8000703c:	01c0006f          	j	80007058 <consolewrite+0x58>
    80007040:	fbf44503          	lbu	a0,-65(s0)
    80007044:	0019091b          	addiw	s2,s2,1
    80007048:	00148493          	addi	s1,s1,1
    8000704c:	00001097          	auipc	ra,0x1
    80007050:	a9c080e7          	jalr	-1380(ra) # 80007ae8 <uartputc>
    80007054:	03298063          	beq	s3,s2,80007074 <consolewrite+0x74>
    80007058:	00048613          	mv	a2,s1
    8000705c:	00100693          	li	a3,1
    80007060:	000a0593          	mv	a1,s4
    80007064:	fbf40513          	addi	a0,s0,-65
    80007068:	00000097          	auipc	ra,0x0
    8000706c:	9e0080e7          	jalr	-1568(ra) # 80006a48 <either_copyin>
    80007070:	fd5518e3          	bne	a0,s5,80007040 <consolewrite+0x40>
    80007074:	04813083          	ld	ra,72(sp)
    80007078:	04013403          	ld	s0,64(sp)
    8000707c:	03813483          	ld	s1,56(sp)
    80007080:	02813983          	ld	s3,40(sp)
    80007084:	02013a03          	ld	s4,32(sp)
    80007088:	01813a83          	ld	s5,24(sp)
    8000708c:	00090513          	mv	a0,s2
    80007090:	03013903          	ld	s2,48(sp)
    80007094:	05010113          	addi	sp,sp,80
    80007098:	00008067          	ret
    8000709c:	00000913          	li	s2,0
    800070a0:	fd5ff06f          	j	80007074 <consolewrite+0x74>

00000000800070a4 <consoleread>:
    800070a4:	f9010113          	addi	sp,sp,-112
    800070a8:	06813023          	sd	s0,96(sp)
    800070ac:	04913c23          	sd	s1,88(sp)
    800070b0:	05213823          	sd	s2,80(sp)
    800070b4:	05313423          	sd	s3,72(sp)
    800070b8:	05413023          	sd	s4,64(sp)
    800070bc:	03513c23          	sd	s5,56(sp)
    800070c0:	03613823          	sd	s6,48(sp)
    800070c4:	03713423          	sd	s7,40(sp)
    800070c8:	03813023          	sd	s8,32(sp)
    800070cc:	06113423          	sd	ra,104(sp)
    800070d0:	01913c23          	sd	s9,24(sp)
    800070d4:	07010413          	addi	s0,sp,112
    800070d8:	00060b93          	mv	s7,a2
    800070dc:	00050913          	mv	s2,a0
    800070e0:	00058c13          	mv	s8,a1
    800070e4:	00060b1b          	sext.w	s6,a2
    800070e8:	00004497          	auipc	s1,0x4
    800070ec:	69048493          	addi	s1,s1,1680 # 8000b778 <cons>
    800070f0:	00400993          	li	s3,4
    800070f4:	fff00a13          	li	s4,-1
    800070f8:	00a00a93          	li	s5,10
    800070fc:	05705e63          	blez	s7,80007158 <consoleread+0xb4>
    80007100:	09c4a703          	lw	a4,156(s1)
    80007104:	0984a783          	lw	a5,152(s1)
    80007108:	0007071b          	sext.w	a4,a4
    8000710c:	08e78463          	beq	a5,a4,80007194 <consoleread+0xf0>
    80007110:	07f7f713          	andi	a4,a5,127
    80007114:	00e48733          	add	a4,s1,a4
    80007118:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000711c:	0017869b          	addiw	a3,a5,1
    80007120:	08d4ac23          	sw	a3,152(s1)
    80007124:	00070c9b          	sext.w	s9,a4
    80007128:	0b370663          	beq	a4,s3,800071d4 <consoleread+0x130>
    8000712c:	00100693          	li	a3,1
    80007130:	f9f40613          	addi	a2,s0,-97
    80007134:	000c0593          	mv	a1,s8
    80007138:	00090513          	mv	a0,s2
    8000713c:	f8e40fa3          	sb	a4,-97(s0)
    80007140:	00000097          	auipc	ra,0x0
    80007144:	8bc080e7          	jalr	-1860(ra) # 800069fc <either_copyout>
    80007148:	01450863          	beq	a0,s4,80007158 <consoleread+0xb4>
    8000714c:	001c0c13          	addi	s8,s8,1
    80007150:	fffb8b9b          	addiw	s7,s7,-1
    80007154:	fb5c94e3          	bne	s9,s5,800070fc <consoleread+0x58>
    80007158:	000b851b          	sext.w	a0,s7
    8000715c:	06813083          	ld	ra,104(sp)
    80007160:	06013403          	ld	s0,96(sp)
    80007164:	05813483          	ld	s1,88(sp)
    80007168:	05013903          	ld	s2,80(sp)
    8000716c:	04813983          	ld	s3,72(sp)
    80007170:	04013a03          	ld	s4,64(sp)
    80007174:	03813a83          	ld	s5,56(sp)
    80007178:	02813b83          	ld	s7,40(sp)
    8000717c:	02013c03          	ld	s8,32(sp)
    80007180:	01813c83          	ld	s9,24(sp)
    80007184:	40ab053b          	subw	a0,s6,a0
    80007188:	03013b03          	ld	s6,48(sp)
    8000718c:	07010113          	addi	sp,sp,112
    80007190:	00008067          	ret
    80007194:	00001097          	auipc	ra,0x1
    80007198:	1d8080e7          	jalr	472(ra) # 8000836c <push_on>
    8000719c:	0984a703          	lw	a4,152(s1)
    800071a0:	09c4a783          	lw	a5,156(s1)
    800071a4:	0007879b          	sext.w	a5,a5
    800071a8:	fef70ce3          	beq	a4,a5,800071a0 <consoleread+0xfc>
    800071ac:	00001097          	auipc	ra,0x1
    800071b0:	234080e7          	jalr	564(ra) # 800083e0 <pop_on>
    800071b4:	0984a783          	lw	a5,152(s1)
    800071b8:	07f7f713          	andi	a4,a5,127
    800071bc:	00e48733          	add	a4,s1,a4
    800071c0:	01874703          	lbu	a4,24(a4)
    800071c4:	0017869b          	addiw	a3,a5,1
    800071c8:	08d4ac23          	sw	a3,152(s1)
    800071cc:	00070c9b          	sext.w	s9,a4
    800071d0:	f5371ee3          	bne	a4,s3,8000712c <consoleread+0x88>
    800071d4:	000b851b          	sext.w	a0,s7
    800071d8:	f96bf2e3          	bgeu	s7,s6,8000715c <consoleread+0xb8>
    800071dc:	08f4ac23          	sw	a5,152(s1)
    800071e0:	f7dff06f          	j	8000715c <consoleread+0xb8>

00000000800071e4 <consputc>:
    800071e4:	10000793          	li	a5,256
    800071e8:	00f50663          	beq	a0,a5,800071f4 <consputc+0x10>
    800071ec:	00001317          	auipc	t1,0x1
    800071f0:	9f430067          	jr	-1548(t1) # 80007be0 <uartputc_sync>
    800071f4:	ff010113          	addi	sp,sp,-16
    800071f8:	00113423          	sd	ra,8(sp)
    800071fc:	00813023          	sd	s0,0(sp)
    80007200:	01010413          	addi	s0,sp,16
    80007204:	00800513          	li	a0,8
    80007208:	00001097          	auipc	ra,0x1
    8000720c:	9d8080e7          	jalr	-1576(ra) # 80007be0 <uartputc_sync>
    80007210:	02000513          	li	a0,32
    80007214:	00001097          	auipc	ra,0x1
    80007218:	9cc080e7          	jalr	-1588(ra) # 80007be0 <uartputc_sync>
    8000721c:	00013403          	ld	s0,0(sp)
    80007220:	00813083          	ld	ra,8(sp)
    80007224:	00800513          	li	a0,8
    80007228:	01010113          	addi	sp,sp,16
    8000722c:	00001317          	auipc	t1,0x1
    80007230:	9b430067          	jr	-1612(t1) # 80007be0 <uartputc_sync>

0000000080007234 <consoleintr>:
    80007234:	fe010113          	addi	sp,sp,-32
    80007238:	00813823          	sd	s0,16(sp)
    8000723c:	00913423          	sd	s1,8(sp)
    80007240:	01213023          	sd	s2,0(sp)
    80007244:	00113c23          	sd	ra,24(sp)
    80007248:	02010413          	addi	s0,sp,32
    8000724c:	00004917          	auipc	s2,0x4
    80007250:	52c90913          	addi	s2,s2,1324 # 8000b778 <cons>
    80007254:	00050493          	mv	s1,a0
    80007258:	00090513          	mv	a0,s2
    8000725c:	00001097          	auipc	ra,0x1
    80007260:	e40080e7          	jalr	-448(ra) # 8000809c <acquire>
    80007264:	02048c63          	beqz	s1,8000729c <consoleintr+0x68>
    80007268:	0a092783          	lw	a5,160(s2)
    8000726c:	09892703          	lw	a4,152(s2)
    80007270:	07f00693          	li	a3,127
    80007274:	40e7873b          	subw	a4,a5,a4
    80007278:	02e6e263          	bltu	a3,a4,8000729c <consoleintr+0x68>
    8000727c:	00d00713          	li	a4,13
    80007280:	04e48063          	beq	s1,a4,800072c0 <consoleintr+0x8c>
    80007284:	07f7f713          	andi	a4,a5,127
    80007288:	00e90733          	add	a4,s2,a4
    8000728c:	0017879b          	addiw	a5,a5,1
    80007290:	0af92023          	sw	a5,160(s2)
    80007294:	00970c23          	sb	s1,24(a4)
    80007298:	08f92e23          	sw	a5,156(s2)
    8000729c:	01013403          	ld	s0,16(sp)
    800072a0:	01813083          	ld	ra,24(sp)
    800072a4:	00813483          	ld	s1,8(sp)
    800072a8:	00013903          	ld	s2,0(sp)
    800072ac:	00004517          	auipc	a0,0x4
    800072b0:	4cc50513          	addi	a0,a0,1228 # 8000b778 <cons>
    800072b4:	02010113          	addi	sp,sp,32
    800072b8:	00001317          	auipc	t1,0x1
    800072bc:	eb030067          	jr	-336(t1) # 80008168 <release>
    800072c0:	00a00493          	li	s1,10
    800072c4:	fc1ff06f          	j	80007284 <consoleintr+0x50>

00000000800072c8 <consoleinit>:
    800072c8:	fe010113          	addi	sp,sp,-32
    800072cc:	00113c23          	sd	ra,24(sp)
    800072d0:	00813823          	sd	s0,16(sp)
    800072d4:	00913423          	sd	s1,8(sp)
    800072d8:	02010413          	addi	s0,sp,32
    800072dc:	00004497          	auipc	s1,0x4
    800072e0:	49c48493          	addi	s1,s1,1180 # 8000b778 <cons>
    800072e4:	00048513          	mv	a0,s1
    800072e8:	00002597          	auipc	a1,0x2
    800072ec:	44858593          	addi	a1,a1,1096 # 80009730 <_ZZ12printIntegermE6digits+0x138>
    800072f0:	00001097          	auipc	ra,0x1
    800072f4:	d88080e7          	jalr	-632(ra) # 80008078 <initlock>
    800072f8:	00000097          	auipc	ra,0x0
    800072fc:	7ac080e7          	jalr	1964(ra) # 80007aa4 <uartinit>
    80007300:	01813083          	ld	ra,24(sp)
    80007304:	01013403          	ld	s0,16(sp)
    80007308:	00000797          	auipc	a5,0x0
    8000730c:	d9c78793          	addi	a5,a5,-612 # 800070a4 <consoleread>
    80007310:	0af4bc23          	sd	a5,184(s1)
    80007314:	00000797          	auipc	a5,0x0
    80007318:	cec78793          	addi	a5,a5,-788 # 80007000 <consolewrite>
    8000731c:	0cf4b023          	sd	a5,192(s1)
    80007320:	00813483          	ld	s1,8(sp)
    80007324:	02010113          	addi	sp,sp,32
    80007328:	00008067          	ret

000000008000732c <console_read>:
    8000732c:	ff010113          	addi	sp,sp,-16
    80007330:	00813423          	sd	s0,8(sp)
    80007334:	01010413          	addi	s0,sp,16
    80007338:	00813403          	ld	s0,8(sp)
    8000733c:	00004317          	auipc	t1,0x4
    80007340:	4f433303          	ld	t1,1268(t1) # 8000b830 <devsw+0x10>
    80007344:	01010113          	addi	sp,sp,16
    80007348:	00030067          	jr	t1

000000008000734c <console_write>:
    8000734c:	ff010113          	addi	sp,sp,-16
    80007350:	00813423          	sd	s0,8(sp)
    80007354:	01010413          	addi	s0,sp,16
    80007358:	00813403          	ld	s0,8(sp)
    8000735c:	00004317          	auipc	t1,0x4
    80007360:	4dc33303          	ld	t1,1244(t1) # 8000b838 <devsw+0x18>
    80007364:	01010113          	addi	sp,sp,16
    80007368:	00030067          	jr	t1

000000008000736c <panic>:
    8000736c:	fe010113          	addi	sp,sp,-32
    80007370:	00113c23          	sd	ra,24(sp)
    80007374:	00813823          	sd	s0,16(sp)
    80007378:	00913423          	sd	s1,8(sp)
    8000737c:	02010413          	addi	s0,sp,32
    80007380:	00050493          	mv	s1,a0
    80007384:	00002517          	auipc	a0,0x2
    80007388:	3b450513          	addi	a0,a0,948 # 80009738 <_ZZ12printIntegermE6digits+0x140>
    8000738c:	00004797          	auipc	a5,0x4
    80007390:	5407a623          	sw	zero,1356(a5) # 8000b8d8 <pr+0x18>
    80007394:	00000097          	auipc	ra,0x0
    80007398:	034080e7          	jalr	52(ra) # 800073c8 <__printf>
    8000739c:	00048513          	mv	a0,s1
    800073a0:	00000097          	auipc	ra,0x0
    800073a4:	028080e7          	jalr	40(ra) # 800073c8 <__printf>
    800073a8:	00002517          	auipc	a0,0x2
    800073ac:	d6850513          	addi	a0,a0,-664 # 80009110 <CONSOLE_STATUS+0x100>
    800073b0:	00000097          	auipc	ra,0x0
    800073b4:	018080e7          	jalr	24(ra) # 800073c8 <__printf>
    800073b8:	00100793          	li	a5,1
    800073bc:	00003717          	auipc	a4,0x3
    800073c0:	26f72e23          	sw	a5,636(a4) # 8000a638 <panicked>
    800073c4:	0000006f          	j	800073c4 <panic+0x58>

00000000800073c8 <__printf>:
    800073c8:	f3010113          	addi	sp,sp,-208
    800073cc:	08813023          	sd	s0,128(sp)
    800073d0:	07313423          	sd	s3,104(sp)
    800073d4:	09010413          	addi	s0,sp,144
    800073d8:	05813023          	sd	s8,64(sp)
    800073dc:	08113423          	sd	ra,136(sp)
    800073e0:	06913c23          	sd	s1,120(sp)
    800073e4:	07213823          	sd	s2,112(sp)
    800073e8:	07413023          	sd	s4,96(sp)
    800073ec:	05513c23          	sd	s5,88(sp)
    800073f0:	05613823          	sd	s6,80(sp)
    800073f4:	05713423          	sd	s7,72(sp)
    800073f8:	03913c23          	sd	s9,56(sp)
    800073fc:	03a13823          	sd	s10,48(sp)
    80007400:	03b13423          	sd	s11,40(sp)
    80007404:	00004317          	auipc	t1,0x4
    80007408:	4bc30313          	addi	t1,t1,1212 # 8000b8c0 <pr>
    8000740c:	01832c03          	lw	s8,24(t1)
    80007410:	00b43423          	sd	a1,8(s0)
    80007414:	00c43823          	sd	a2,16(s0)
    80007418:	00d43c23          	sd	a3,24(s0)
    8000741c:	02e43023          	sd	a4,32(s0)
    80007420:	02f43423          	sd	a5,40(s0)
    80007424:	03043823          	sd	a6,48(s0)
    80007428:	03143c23          	sd	a7,56(s0)
    8000742c:	00050993          	mv	s3,a0
    80007430:	4a0c1663          	bnez	s8,800078dc <__printf+0x514>
    80007434:	60098c63          	beqz	s3,80007a4c <__printf+0x684>
    80007438:	0009c503          	lbu	a0,0(s3)
    8000743c:	00840793          	addi	a5,s0,8
    80007440:	f6f43c23          	sd	a5,-136(s0)
    80007444:	00000493          	li	s1,0
    80007448:	22050063          	beqz	a0,80007668 <__printf+0x2a0>
    8000744c:	00002a37          	lui	s4,0x2
    80007450:	00018ab7          	lui	s5,0x18
    80007454:	000f4b37          	lui	s6,0xf4
    80007458:	00989bb7          	lui	s7,0x989
    8000745c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007460:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007464:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007468:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000746c:	00148c9b          	addiw	s9,s1,1
    80007470:	02500793          	li	a5,37
    80007474:	01998933          	add	s2,s3,s9
    80007478:	38f51263          	bne	a0,a5,800077fc <__printf+0x434>
    8000747c:	00094783          	lbu	a5,0(s2)
    80007480:	00078c9b          	sext.w	s9,a5
    80007484:	1e078263          	beqz	a5,80007668 <__printf+0x2a0>
    80007488:	0024849b          	addiw	s1,s1,2
    8000748c:	07000713          	li	a4,112
    80007490:	00998933          	add	s2,s3,s1
    80007494:	38e78a63          	beq	a5,a4,80007828 <__printf+0x460>
    80007498:	20f76863          	bltu	a4,a5,800076a8 <__printf+0x2e0>
    8000749c:	42a78863          	beq	a5,a0,800078cc <__printf+0x504>
    800074a0:	06400713          	li	a4,100
    800074a4:	40e79663          	bne	a5,a4,800078b0 <__printf+0x4e8>
    800074a8:	f7843783          	ld	a5,-136(s0)
    800074ac:	0007a603          	lw	a2,0(a5)
    800074b0:	00878793          	addi	a5,a5,8
    800074b4:	f6f43c23          	sd	a5,-136(s0)
    800074b8:	42064a63          	bltz	a2,800078ec <__printf+0x524>
    800074bc:	00a00713          	li	a4,10
    800074c0:	02e677bb          	remuw	a5,a2,a4
    800074c4:	00002d97          	auipc	s11,0x2
    800074c8:	29cd8d93          	addi	s11,s11,668 # 80009760 <digits>
    800074cc:	00900593          	li	a1,9
    800074d0:	0006051b          	sext.w	a0,a2
    800074d4:	00000c93          	li	s9,0
    800074d8:	02079793          	slli	a5,a5,0x20
    800074dc:	0207d793          	srli	a5,a5,0x20
    800074e0:	00fd87b3          	add	a5,s11,a5
    800074e4:	0007c783          	lbu	a5,0(a5)
    800074e8:	02e656bb          	divuw	a3,a2,a4
    800074ec:	f8f40023          	sb	a5,-128(s0)
    800074f0:	14c5d863          	bge	a1,a2,80007640 <__printf+0x278>
    800074f4:	06300593          	li	a1,99
    800074f8:	00100c93          	li	s9,1
    800074fc:	02e6f7bb          	remuw	a5,a3,a4
    80007500:	02079793          	slli	a5,a5,0x20
    80007504:	0207d793          	srli	a5,a5,0x20
    80007508:	00fd87b3          	add	a5,s11,a5
    8000750c:	0007c783          	lbu	a5,0(a5)
    80007510:	02e6d73b          	divuw	a4,a3,a4
    80007514:	f8f400a3          	sb	a5,-127(s0)
    80007518:	12a5f463          	bgeu	a1,a0,80007640 <__printf+0x278>
    8000751c:	00a00693          	li	a3,10
    80007520:	00900593          	li	a1,9
    80007524:	02d777bb          	remuw	a5,a4,a3
    80007528:	02079793          	slli	a5,a5,0x20
    8000752c:	0207d793          	srli	a5,a5,0x20
    80007530:	00fd87b3          	add	a5,s11,a5
    80007534:	0007c503          	lbu	a0,0(a5)
    80007538:	02d757bb          	divuw	a5,a4,a3
    8000753c:	f8a40123          	sb	a0,-126(s0)
    80007540:	48e5f263          	bgeu	a1,a4,800079c4 <__printf+0x5fc>
    80007544:	06300513          	li	a0,99
    80007548:	02d7f5bb          	remuw	a1,a5,a3
    8000754c:	02059593          	slli	a1,a1,0x20
    80007550:	0205d593          	srli	a1,a1,0x20
    80007554:	00bd85b3          	add	a1,s11,a1
    80007558:	0005c583          	lbu	a1,0(a1)
    8000755c:	02d7d7bb          	divuw	a5,a5,a3
    80007560:	f8b401a3          	sb	a1,-125(s0)
    80007564:	48e57263          	bgeu	a0,a4,800079e8 <__printf+0x620>
    80007568:	3e700513          	li	a0,999
    8000756c:	02d7f5bb          	remuw	a1,a5,a3
    80007570:	02059593          	slli	a1,a1,0x20
    80007574:	0205d593          	srli	a1,a1,0x20
    80007578:	00bd85b3          	add	a1,s11,a1
    8000757c:	0005c583          	lbu	a1,0(a1)
    80007580:	02d7d7bb          	divuw	a5,a5,a3
    80007584:	f8b40223          	sb	a1,-124(s0)
    80007588:	46e57663          	bgeu	a0,a4,800079f4 <__printf+0x62c>
    8000758c:	02d7f5bb          	remuw	a1,a5,a3
    80007590:	02059593          	slli	a1,a1,0x20
    80007594:	0205d593          	srli	a1,a1,0x20
    80007598:	00bd85b3          	add	a1,s11,a1
    8000759c:	0005c583          	lbu	a1,0(a1)
    800075a0:	02d7d7bb          	divuw	a5,a5,a3
    800075a4:	f8b402a3          	sb	a1,-123(s0)
    800075a8:	46ea7863          	bgeu	s4,a4,80007a18 <__printf+0x650>
    800075ac:	02d7f5bb          	remuw	a1,a5,a3
    800075b0:	02059593          	slli	a1,a1,0x20
    800075b4:	0205d593          	srli	a1,a1,0x20
    800075b8:	00bd85b3          	add	a1,s11,a1
    800075bc:	0005c583          	lbu	a1,0(a1)
    800075c0:	02d7d7bb          	divuw	a5,a5,a3
    800075c4:	f8b40323          	sb	a1,-122(s0)
    800075c8:	3eeaf863          	bgeu	s5,a4,800079b8 <__printf+0x5f0>
    800075cc:	02d7f5bb          	remuw	a1,a5,a3
    800075d0:	02059593          	slli	a1,a1,0x20
    800075d4:	0205d593          	srli	a1,a1,0x20
    800075d8:	00bd85b3          	add	a1,s11,a1
    800075dc:	0005c583          	lbu	a1,0(a1)
    800075e0:	02d7d7bb          	divuw	a5,a5,a3
    800075e4:	f8b403a3          	sb	a1,-121(s0)
    800075e8:	42eb7e63          	bgeu	s6,a4,80007a24 <__printf+0x65c>
    800075ec:	02d7f5bb          	remuw	a1,a5,a3
    800075f0:	02059593          	slli	a1,a1,0x20
    800075f4:	0205d593          	srli	a1,a1,0x20
    800075f8:	00bd85b3          	add	a1,s11,a1
    800075fc:	0005c583          	lbu	a1,0(a1)
    80007600:	02d7d7bb          	divuw	a5,a5,a3
    80007604:	f8b40423          	sb	a1,-120(s0)
    80007608:	42ebfc63          	bgeu	s7,a4,80007a40 <__printf+0x678>
    8000760c:	02079793          	slli	a5,a5,0x20
    80007610:	0207d793          	srli	a5,a5,0x20
    80007614:	00fd8db3          	add	s11,s11,a5
    80007618:	000dc703          	lbu	a4,0(s11)
    8000761c:	00a00793          	li	a5,10
    80007620:	00900c93          	li	s9,9
    80007624:	f8e404a3          	sb	a4,-119(s0)
    80007628:	00065c63          	bgez	a2,80007640 <__printf+0x278>
    8000762c:	f9040713          	addi	a4,s0,-112
    80007630:	00f70733          	add	a4,a4,a5
    80007634:	02d00693          	li	a3,45
    80007638:	fed70823          	sb	a3,-16(a4)
    8000763c:	00078c93          	mv	s9,a5
    80007640:	f8040793          	addi	a5,s0,-128
    80007644:	01978cb3          	add	s9,a5,s9
    80007648:	f7f40d13          	addi	s10,s0,-129
    8000764c:	000cc503          	lbu	a0,0(s9)
    80007650:	fffc8c93          	addi	s9,s9,-1
    80007654:	00000097          	auipc	ra,0x0
    80007658:	b90080e7          	jalr	-1136(ra) # 800071e4 <consputc>
    8000765c:	ffac98e3          	bne	s9,s10,8000764c <__printf+0x284>
    80007660:	00094503          	lbu	a0,0(s2)
    80007664:	e00514e3          	bnez	a0,8000746c <__printf+0xa4>
    80007668:	1a0c1663          	bnez	s8,80007814 <__printf+0x44c>
    8000766c:	08813083          	ld	ra,136(sp)
    80007670:	08013403          	ld	s0,128(sp)
    80007674:	07813483          	ld	s1,120(sp)
    80007678:	07013903          	ld	s2,112(sp)
    8000767c:	06813983          	ld	s3,104(sp)
    80007680:	06013a03          	ld	s4,96(sp)
    80007684:	05813a83          	ld	s5,88(sp)
    80007688:	05013b03          	ld	s6,80(sp)
    8000768c:	04813b83          	ld	s7,72(sp)
    80007690:	04013c03          	ld	s8,64(sp)
    80007694:	03813c83          	ld	s9,56(sp)
    80007698:	03013d03          	ld	s10,48(sp)
    8000769c:	02813d83          	ld	s11,40(sp)
    800076a0:	0d010113          	addi	sp,sp,208
    800076a4:	00008067          	ret
    800076a8:	07300713          	li	a4,115
    800076ac:	1ce78a63          	beq	a5,a4,80007880 <__printf+0x4b8>
    800076b0:	07800713          	li	a4,120
    800076b4:	1ee79e63          	bne	a5,a4,800078b0 <__printf+0x4e8>
    800076b8:	f7843783          	ld	a5,-136(s0)
    800076bc:	0007a703          	lw	a4,0(a5)
    800076c0:	00878793          	addi	a5,a5,8
    800076c4:	f6f43c23          	sd	a5,-136(s0)
    800076c8:	28074263          	bltz	a4,8000794c <__printf+0x584>
    800076cc:	00002d97          	auipc	s11,0x2
    800076d0:	094d8d93          	addi	s11,s11,148 # 80009760 <digits>
    800076d4:	00f77793          	andi	a5,a4,15
    800076d8:	00fd87b3          	add	a5,s11,a5
    800076dc:	0007c683          	lbu	a3,0(a5)
    800076e0:	00f00613          	li	a2,15
    800076e4:	0007079b          	sext.w	a5,a4
    800076e8:	f8d40023          	sb	a3,-128(s0)
    800076ec:	0047559b          	srliw	a1,a4,0x4
    800076f0:	0047569b          	srliw	a3,a4,0x4
    800076f4:	00000c93          	li	s9,0
    800076f8:	0ee65063          	bge	a2,a4,800077d8 <__printf+0x410>
    800076fc:	00f6f693          	andi	a3,a3,15
    80007700:	00dd86b3          	add	a3,s11,a3
    80007704:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007708:	0087d79b          	srliw	a5,a5,0x8
    8000770c:	00100c93          	li	s9,1
    80007710:	f8d400a3          	sb	a3,-127(s0)
    80007714:	0cb67263          	bgeu	a2,a1,800077d8 <__printf+0x410>
    80007718:	00f7f693          	andi	a3,a5,15
    8000771c:	00dd86b3          	add	a3,s11,a3
    80007720:	0006c583          	lbu	a1,0(a3)
    80007724:	00f00613          	li	a2,15
    80007728:	0047d69b          	srliw	a3,a5,0x4
    8000772c:	f8b40123          	sb	a1,-126(s0)
    80007730:	0047d593          	srli	a1,a5,0x4
    80007734:	28f67e63          	bgeu	a2,a5,800079d0 <__printf+0x608>
    80007738:	00f6f693          	andi	a3,a3,15
    8000773c:	00dd86b3          	add	a3,s11,a3
    80007740:	0006c503          	lbu	a0,0(a3)
    80007744:	0087d813          	srli	a6,a5,0x8
    80007748:	0087d69b          	srliw	a3,a5,0x8
    8000774c:	f8a401a3          	sb	a0,-125(s0)
    80007750:	28b67663          	bgeu	a2,a1,800079dc <__printf+0x614>
    80007754:	00f6f693          	andi	a3,a3,15
    80007758:	00dd86b3          	add	a3,s11,a3
    8000775c:	0006c583          	lbu	a1,0(a3)
    80007760:	00c7d513          	srli	a0,a5,0xc
    80007764:	00c7d69b          	srliw	a3,a5,0xc
    80007768:	f8b40223          	sb	a1,-124(s0)
    8000776c:	29067a63          	bgeu	a2,a6,80007a00 <__printf+0x638>
    80007770:	00f6f693          	andi	a3,a3,15
    80007774:	00dd86b3          	add	a3,s11,a3
    80007778:	0006c583          	lbu	a1,0(a3)
    8000777c:	0107d813          	srli	a6,a5,0x10
    80007780:	0107d69b          	srliw	a3,a5,0x10
    80007784:	f8b402a3          	sb	a1,-123(s0)
    80007788:	28a67263          	bgeu	a2,a0,80007a0c <__printf+0x644>
    8000778c:	00f6f693          	andi	a3,a3,15
    80007790:	00dd86b3          	add	a3,s11,a3
    80007794:	0006c683          	lbu	a3,0(a3)
    80007798:	0147d79b          	srliw	a5,a5,0x14
    8000779c:	f8d40323          	sb	a3,-122(s0)
    800077a0:	21067663          	bgeu	a2,a6,800079ac <__printf+0x5e4>
    800077a4:	02079793          	slli	a5,a5,0x20
    800077a8:	0207d793          	srli	a5,a5,0x20
    800077ac:	00fd8db3          	add	s11,s11,a5
    800077b0:	000dc683          	lbu	a3,0(s11)
    800077b4:	00800793          	li	a5,8
    800077b8:	00700c93          	li	s9,7
    800077bc:	f8d403a3          	sb	a3,-121(s0)
    800077c0:	00075c63          	bgez	a4,800077d8 <__printf+0x410>
    800077c4:	f9040713          	addi	a4,s0,-112
    800077c8:	00f70733          	add	a4,a4,a5
    800077cc:	02d00693          	li	a3,45
    800077d0:	fed70823          	sb	a3,-16(a4)
    800077d4:	00078c93          	mv	s9,a5
    800077d8:	f8040793          	addi	a5,s0,-128
    800077dc:	01978cb3          	add	s9,a5,s9
    800077e0:	f7f40d13          	addi	s10,s0,-129
    800077e4:	000cc503          	lbu	a0,0(s9)
    800077e8:	fffc8c93          	addi	s9,s9,-1
    800077ec:	00000097          	auipc	ra,0x0
    800077f0:	9f8080e7          	jalr	-1544(ra) # 800071e4 <consputc>
    800077f4:	ff9d18e3          	bne	s10,s9,800077e4 <__printf+0x41c>
    800077f8:	0100006f          	j	80007808 <__printf+0x440>
    800077fc:	00000097          	auipc	ra,0x0
    80007800:	9e8080e7          	jalr	-1560(ra) # 800071e4 <consputc>
    80007804:	000c8493          	mv	s1,s9
    80007808:	00094503          	lbu	a0,0(s2)
    8000780c:	c60510e3          	bnez	a0,8000746c <__printf+0xa4>
    80007810:	e40c0ee3          	beqz	s8,8000766c <__printf+0x2a4>
    80007814:	00004517          	auipc	a0,0x4
    80007818:	0ac50513          	addi	a0,a0,172 # 8000b8c0 <pr>
    8000781c:	00001097          	auipc	ra,0x1
    80007820:	94c080e7          	jalr	-1716(ra) # 80008168 <release>
    80007824:	e49ff06f          	j	8000766c <__printf+0x2a4>
    80007828:	f7843783          	ld	a5,-136(s0)
    8000782c:	03000513          	li	a0,48
    80007830:	01000d13          	li	s10,16
    80007834:	00878713          	addi	a4,a5,8
    80007838:	0007bc83          	ld	s9,0(a5)
    8000783c:	f6e43c23          	sd	a4,-136(s0)
    80007840:	00000097          	auipc	ra,0x0
    80007844:	9a4080e7          	jalr	-1628(ra) # 800071e4 <consputc>
    80007848:	07800513          	li	a0,120
    8000784c:	00000097          	auipc	ra,0x0
    80007850:	998080e7          	jalr	-1640(ra) # 800071e4 <consputc>
    80007854:	00002d97          	auipc	s11,0x2
    80007858:	f0cd8d93          	addi	s11,s11,-244 # 80009760 <digits>
    8000785c:	03ccd793          	srli	a5,s9,0x3c
    80007860:	00fd87b3          	add	a5,s11,a5
    80007864:	0007c503          	lbu	a0,0(a5)
    80007868:	fffd0d1b          	addiw	s10,s10,-1
    8000786c:	004c9c93          	slli	s9,s9,0x4
    80007870:	00000097          	auipc	ra,0x0
    80007874:	974080e7          	jalr	-1676(ra) # 800071e4 <consputc>
    80007878:	fe0d12e3          	bnez	s10,8000785c <__printf+0x494>
    8000787c:	f8dff06f          	j	80007808 <__printf+0x440>
    80007880:	f7843783          	ld	a5,-136(s0)
    80007884:	0007bc83          	ld	s9,0(a5)
    80007888:	00878793          	addi	a5,a5,8
    8000788c:	f6f43c23          	sd	a5,-136(s0)
    80007890:	000c9a63          	bnez	s9,800078a4 <__printf+0x4dc>
    80007894:	1080006f          	j	8000799c <__printf+0x5d4>
    80007898:	001c8c93          	addi	s9,s9,1
    8000789c:	00000097          	auipc	ra,0x0
    800078a0:	948080e7          	jalr	-1720(ra) # 800071e4 <consputc>
    800078a4:	000cc503          	lbu	a0,0(s9)
    800078a8:	fe0518e3          	bnez	a0,80007898 <__printf+0x4d0>
    800078ac:	f5dff06f          	j	80007808 <__printf+0x440>
    800078b0:	02500513          	li	a0,37
    800078b4:	00000097          	auipc	ra,0x0
    800078b8:	930080e7          	jalr	-1744(ra) # 800071e4 <consputc>
    800078bc:	000c8513          	mv	a0,s9
    800078c0:	00000097          	auipc	ra,0x0
    800078c4:	924080e7          	jalr	-1756(ra) # 800071e4 <consputc>
    800078c8:	f41ff06f          	j	80007808 <__printf+0x440>
    800078cc:	02500513          	li	a0,37
    800078d0:	00000097          	auipc	ra,0x0
    800078d4:	914080e7          	jalr	-1772(ra) # 800071e4 <consputc>
    800078d8:	f31ff06f          	j	80007808 <__printf+0x440>
    800078dc:	00030513          	mv	a0,t1
    800078e0:	00000097          	auipc	ra,0x0
    800078e4:	7bc080e7          	jalr	1980(ra) # 8000809c <acquire>
    800078e8:	b4dff06f          	j	80007434 <__printf+0x6c>
    800078ec:	40c0053b          	negw	a0,a2
    800078f0:	00a00713          	li	a4,10
    800078f4:	02e576bb          	remuw	a3,a0,a4
    800078f8:	00002d97          	auipc	s11,0x2
    800078fc:	e68d8d93          	addi	s11,s11,-408 # 80009760 <digits>
    80007900:	ff700593          	li	a1,-9
    80007904:	02069693          	slli	a3,a3,0x20
    80007908:	0206d693          	srli	a3,a3,0x20
    8000790c:	00dd86b3          	add	a3,s11,a3
    80007910:	0006c683          	lbu	a3,0(a3)
    80007914:	02e557bb          	divuw	a5,a0,a4
    80007918:	f8d40023          	sb	a3,-128(s0)
    8000791c:	10b65e63          	bge	a2,a1,80007a38 <__printf+0x670>
    80007920:	06300593          	li	a1,99
    80007924:	02e7f6bb          	remuw	a3,a5,a4
    80007928:	02069693          	slli	a3,a3,0x20
    8000792c:	0206d693          	srli	a3,a3,0x20
    80007930:	00dd86b3          	add	a3,s11,a3
    80007934:	0006c683          	lbu	a3,0(a3)
    80007938:	02e7d73b          	divuw	a4,a5,a4
    8000793c:	00200793          	li	a5,2
    80007940:	f8d400a3          	sb	a3,-127(s0)
    80007944:	bca5ece3          	bltu	a1,a0,8000751c <__printf+0x154>
    80007948:	ce5ff06f          	j	8000762c <__printf+0x264>
    8000794c:	40e007bb          	negw	a5,a4
    80007950:	00002d97          	auipc	s11,0x2
    80007954:	e10d8d93          	addi	s11,s11,-496 # 80009760 <digits>
    80007958:	00f7f693          	andi	a3,a5,15
    8000795c:	00dd86b3          	add	a3,s11,a3
    80007960:	0006c583          	lbu	a1,0(a3)
    80007964:	ff100613          	li	a2,-15
    80007968:	0047d69b          	srliw	a3,a5,0x4
    8000796c:	f8b40023          	sb	a1,-128(s0)
    80007970:	0047d59b          	srliw	a1,a5,0x4
    80007974:	0ac75e63          	bge	a4,a2,80007a30 <__printf+0x668>
    80007978:	00f6f693          	andi	a3,a3,15
    8000797c:	00dd86b3          	add	a3,s11,a3
    80007980:	0006c603          	lbu	a2,0(a3)
    80007984:	00f00693          	li	a3,15
    80007988:	0087d79b          	srliw	a5,a5,0x8
    8000798c:	f8c400a3          	sb	a2,-127(s0)
    80007990:	d8b6e4e3          	bltu	a3,a1,80007718 <__printf+0x350>
    80007994:	00200793          	li	a5,2
    80007998:	e2dff06f          	j	800077c4 <__printf+0x3fc>
    8000799c:	00002c97          	auipc	s9,0x2
    800079a0:	da4c8c93          	addi	s9,s9,-604 # 80009740 <_ZZ12printIntegermE6digits+0x148>
    800079a4:	02800513          	li	a0,40
    800079a8:	ef1ff06f          	j	80007898 <__printf+0x4d0>
    800079ac:	00700793          	li	a5,7
    800079b0:	00600c93          	li	s9,6
    800079b4:	e0dff06f          	j	800077c0 <__printf+0x3f8>
    800079b8:	00700793          	li	a5,7
    800079bc:	00600c93          	li	s9,6
    800079c0:	c69ff06f          	j	80007628 <__printf+0x260>
    800079c4:	00300793          	li	a5,3
    800079c8:	00200c93          	li	s9,2
    800079cc:	c5dff06f          	j	80007628 <__printf+0x260>
    800079d0:	00300793          	li	a5,3
    800079d4:	00200c93          	li	s9,2
    800079d8:	de9ff06f          	j	800077c0 <__printf+0x3f8>
    800079dc:	00400793          	li	a5,4
    800079e0:	00300c93          	li	s9,3
    800079e4:	dddff06f          	j	800077c0 <__printf+0x3f8>
    800079e8:	00400793          	li	a5,4
    800079ec:	00300c93          	li	s9,3
    800079f0:	c39ff06f          	j	80007628 <__printf+0x260>
    800079f4:	00500793          	li	a5,5
    800079f8:	00400c93          	li	s9,4
    800079fc:	c2dff06f          	j	80007628 <__printf+0x260>
    80007a00:	00500793          	li	a5,5
    80007a04:	00400c93          	li	s9,4
    80007a08:	db9ff06f          	j	800077c0 <__printf+0x3f8>
    80007a0c:	00600793          	li	a5,6
    80007a10:	00500c93          	li	s9,5
    80007a14:	dadff06f          	j	800077c0 <__printf+0x3f8>
    80007a18:	00600793          	li	a5,6
    80007a1c:	00500c93          	li	s9,5
    80007a20:	c09ff06f          	j	80007628 <__printf+0x260>
    80007a24:	00800793          	li	a5,8
    80007a28:	00700c93          	li	s9,7
    80007a2c:	bfdff06f          	j	80007628 <__printf+0x260>
    80007a30:	00100793          	li	a5,1
    80007a34:	d91ff06f          	j	800077c4 <__printf+0x3fc>
    80007a38:	00100793          	li	a5,1
    80007a3c:	bf1ff06f          	j	8000762c <__printf+0x264>
    80007a40:	00900793          	li	a5,9
    80007a44:	00800c93          	li	s9,8
    80007a48:	be1ff06f          	j	80007628 <__printf+0x260>
    80007a4c:	00002517          	auipc	a0,0x2
    80007a50:	cfc50513          	addi	a0,a0,-772 # 80009748 <_ZZ12printIntegermE6digits+0x150>
    80007a54:	00000097          	auipc	ra,0x0
    80007a58:	918080e7          	jalr	-1768(ra) # 8000736c <panic>

0000000080007a5c <printfinit>:
    80007a5c:	fe010113          	addi	sp,sp,-32
    80007a60:	00813823          	sd	s0,16(sp)
    80007a64:	00913423          	sd	s1,8(sp)
    80007a68:	00113c23          	sd	ra,24(sp)
    80007a6c:	02010413          	addi	s0,sp,32
    80007a70:	00004497          	auipc	s1,0x4
    80007a74:	e5048493          	addi	s1,s1,-432 # 8000b8c0 <pr>
    80007a78:	00048513          	mv	a0,s1
    80007a7c:	00002597          	auipc	a1,0x2
    80007a80:	cdc58593          	addi	a1,a1,-804 # 80009758 <_ZZ12printIntegermE6digits+0x160>
    80007a84:	00000097          	auipc	ra,0x0
    80007a88:	5f4080e7          	jalr	1524(ra) # 80008078 <initlock>
    80007a8c:	01813083          	ld	ra,24(sp)
    80007a90:	01013403          	ld	s0,16(sp)
    80007a94:	0004ac23          	sw	zero,24(s1)
    80007a98:	00813483          	ld	s1,8(sp)
    80007a9c:	02010113          	addi	sp,sp,32
    80007aa0:	00008067          	ret

0000000080007aa4 <uartinit>:
    80007aa4:	ff010113          	addi	sp,sp,-16
    80007aa8:	00813423          	sd	s0,8(sp)
    80007aac:	01010413          	addi	s0,sp,16
    80007ab0:	100007b7          	lui	a5,0x10000
    80007ab4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007ab8:	f8000713          	li	a4,-128
    80007abc:	00e781a3          	sb	a4,3(a5)
    80007ac0:	00300713          	li	a4,3
    80007ac4:	00e78023          	sb	a4,0(a5)
    80007ac8:	000780a3          	sb	zero,1(a5)
    80007acc:	00e781a3          	sb	a4,3(a5)
    80007ad0:	00700693          	li	a3,7
    80007ad4:	00d78123          	sb	a3,2(a5)
    80007ad8:	00e780a3          	sb	a4,1(a5)
    80007adc:	00813403          	ld	s0,8(sp)
    80007ae0:	01010113          	addi	sp,sp,16
    80007ae4:	00008067          	ret

0000000080007ae8 <uartputc>:
    80007ae8:	00003797          	auipc	a5,0x3
    80007aec:	b507a783          	lw	a5,-1200(a5) # 8000a638 <panicked>
    80007af0:	00078463          	beqz	a5,80007af8 <uartputc+0x10>
    80007af4:	0000006f          	j	80007af4 <uartputc+0xc>
    80007af8:	fd010113          	addi	sp,sp,-48
    80007afc:	02813023          	sd	s0,32(sp)
    80007b00:	00913c23          	sd	s1,24(sp)
    80007b04:	01213823          	sd	s2,16(sp)
    80007b08:	01313423          	sd	s3,8(sp)
    80007b0c:	02113423          	sd	ra,40(sp)
    80007b10:	03010413          	addi	s0,sp,48
    80007b14:	00003917          	auipc	s2,0x3
    80007b18:	b2c90913          	addi	s2,s2,-1236 # 8000a640 <uart_tx_r>
    80007b1c:	00093783          	ld	a5,0(s2)
    80007b20:	00003497          	auipc	s1,0x3
    80007b24:	b2848493          	addi	s1,s1,-1240 # 8000a648 <uart_tx_w>
    80007b28:	0004b703          	ld	a4,0(s1)
    80007b2c:	02078693          	addi	a3,a5,32
    80007b30:	00050993          	mv	s3,a0
    80007b34:	02e69c63          	bne	a3,a4,80007b6c <uartputc+0x84>
    80007b38:	00001097          	auipc	ra,0x1
    80007b3c:	834080e7          	jalr	-1996(ra) # 8000836c <push_on>
    80007b40:	00093783          	ld	a5,0(s2)
    80007b44:	0004b703          	ld	a4,0(s1)
    80007b48:	02078793          	addi	a5,a5,32
    80007b4c:	00e79463          	bne	a5,a4,80007b54 <uartputc+0x6c>
    80007b50:	0000006f          	j	80007b50 <uartputc+0x68>
    80007b54:	00001097          	auipc	ra,0x1
    80007b58:	88c080e7          	jalr	-1908(ra) # 800083e0 <pop_on>
    80007b5c:	00093783          	ld	a5,0(s2)
    80007b60:	0004b703          	ld	a4,0(s1)
    80007b64:	02078693          	addi	a3,a5,32
    80007b68:	fce688e3          	beq	a3,a4,80007b38 <uartputc+0x50>
    80007b6c:	01f77693          	andi	a3,a4,31
    80007b70:	00004597          	auipc	a1,0x4
    80007b74:	d7058593          	addi	a1,a1,-656 # 8000b8e0 <uart_tx_buf>
    80007b78:	00d586b3          	add	a3,a1,a3
    80007b7c:	00170713          	addi	a4,a4,1
    80007b80:	01368023          	sb	s3,0(a3)
    80007b84:	00e4b023          	sd	a4,0(s1)
    80007b88:	10000637          	lui	a2,0x10000
    80007b8c:	02f71063          	bne	a4,a5,80007bac <uartputc+0xc4>
    80007b90:	0340006f          	j	80007bc4 <uartputc+0xdc>
    80007b94:	00074703          	lbu	a4,0(a4)
    80007b98:	00f93023          	sd	a5,0(s2)
    80007b9c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007ba0:	00093783          	ld	a5,0(s2)
    80007ba4:	0004b703          	ld	a4,0(s1)
    80007ba8:	00f70e63          	beq	a4,a5,80007bc4 <uartputc+0xdc>
    80007bac:	00564683          	lbu	a3,5(a2)
    80007bb0:	01f7f713          	andi	a4,a5,31
    80007bb4:	00e58733          	add	a4,a1,a4
    80007bb8:	0206f693          	andi	a3,a3,32
    80007bbc:	00178793          	addi	a5,a5,1
    80007bc0:	fc069ae3          	bnez	a3,80007b94 <uartputc+0xac>
    80007bc4:	02813083          	ld	ra,40(sp)
    80007bc8:	02013403          	ld	s0,32(sp)
    80007bcc:	01813483          	ld	s1,24(sp)
    80007bd0:	01013903          	ld	s2,16(sp)
    80007bd4:	00813983          	ld	s3,8(sp)
    80007bd8:	03010113          	addi	sp,sp,48
    80007bdc:	00008067          	ret

0000000080007be0 <uartputc_sync>:
    80007be0:	ff010113          	addi	sp,sp,-16
    80007be4:	00813423          	sd	s0,8(sp)
    80007be8:	01010413          	addi	s0,sp,16
    80007bec:	00003717          	auipc	a4,0x3
    80007bf0:	a4c72703          	lw	a4,-1460(a4) # 8000a638 <panicked>
    80007bf4:	02071663          	bnez	a4,80007c20 <uartputc_sync+0x40>
    80007bf8:	00050793          	mv	a5,a0
    80007bfc:	100006b7          	lui	a3,0x10000
    80007c00:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007c04:	02077713          	andi	a4,a4,32
    80007c08:	fe070ce3          	beqz	a4,80007c00 <uartputc_sync+0x20>
    80007c0c:	0ff7f793          	andi	a5,a5,255
    80007c10:	00f68023          	sb	a5,0(a3)
    80007c14:	00813403          	ld	s0,8(sp)
    80007c18:	01010113          	addi	sp,sp,16
    80007c1c:	00008067          	ret
    80007c20:	0000006f          	j	80007c20 <uartputc_sync+0x40>

0000000080007c24 <uartstart>:
    80007c24:	ff010113          	addi	sp,sp,-16
    80007c28:	00813423          	sd	s0,8(sp)
    80007c2c:	01010413          	addi	s0,sp,16
    80007c30:	00003617          	auipc	a2,0x3
    80007c34:	a1060613          	addi	a2,a2,-1520 # 8000a640 <uart_tx_r>
    80007c38:	00003517          	auipc	a0,0x3
    80007c3c:	a1050513          	addi	a0,a0,-1520 # 8000a648 <uart_tx_w>
    80007c40:	00063783          	ld	a5,0(a2)
    80007c44:	00053703          	ld	a4,0(a0)
    80007c48:	04f70263          	beq	a4,a5,80007c8c <uartstart+0x68>
    80007c4c:	100005b7          	lui	a1,0x10000
    80007c50:	00004817          	auipc	a6,0x4
    80007c54:	c9080813          	addi	a6,a6,-880 # 8000b8e0 <uart_tx_buf>
    80007c58:	01c0006f          	j	80007c74 <uartstart+0x50>
    80007c5c:	0006c703          	lbu	a4,0(a3)
    80007c60:	00f63023          	sd	a5,0(a2)
    80007c64:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007c68:	00063783          	ld	a5,0(a2)
    80007c6c:	00053703          	ld	a4,0(a0)
    80007c70:	00f70e63          	beq	a4,a5,80007c8c <uartstart+0x68>
    80007c74:	01f7f713          	andi	a4,a5,31
    80007c78:	00e806b3          	add	a3,a6,a4
    80007c7c:	0055c703          	lbu	a4,5(a1)
    80007c80:	00178793          	addi	a5,a5,1
    80007c84:	02077713          	andi	a4,a4,32
    80007c88:	fc071ae3          	bnez	a4,80007c5c <uartstart+0x38>
    80007c8c:	00813403          	ld	s0,8(sp)
    80007c90:	01010113          	addi	sp,sp,16
    80007c94:	00008067          	ret

0000000080007c98 <uartgetc>:
    80007c98:	ff010113          	addi	sp,sp,-16
    80007c9c:	00813423          	sd	s0,8(sp)
    80007ca0:	01010413          	addi	s0,sp,16
    80007ca4:	10000737          	lui	a4,0x10000
    80007ca8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007cac:	0017f793          	andi	a5,a5,1
    80007cb0:	00078c63          	beqz	a5,80007cc8 <uartgetc+0x30>
    80007cb4:	00074503          	lbu	a0,0(a4)
    80007cb8:	0ff57513          	andi	a0,a0,255
    80007cbc:	00813403          	ld	s0,8(sp)
    80007cc0:	01010113          	addi	sp,sp,16
    80007cc4:	00008067          	ret
    80007cc8:	fff00513          	li	a0,-1
    80007ccc:	ff1ff06f          	j	80007cbc <uartgetc+0x24>

0000000080007cd0 <uartintr>:
    80007cd0:	100007b7          	lui	a5,0x10000
    80007cd4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007cd8:	0017f793          	andi	a5,a5,1
    80007cdc:	0a078463          	beqz	a5,80007d84 <uartintr+0xb4>
    80007ce0:	fe010113          	addi	sp,sp,-32
    80007ce4:	00813823          	sd	s0,16(sp)
    80007ce8:	00913423          	sd	s1,8(sp)
    80007cec:	00113c23          	sd	ra,24(sp)
    80007cf0:	02010413          	addi	s0,sp,32
    80007cf4:	100004b7          	lui	s1,0x10000
    80007cf8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007cfc:	0ff57513          	andi	a0,a0,255
    80007d00:	fffff097          	auipc	ra,0xfffff
    80007d04:	534080e7          	jalr	1332(ra) # 80007234 <consoleintr>
    80007d08:	0054c783          	lbu	a5,5(s1)
    80007d0c:	0017f793          	andi	a5,a5,1
    80007d10:	fe0794e3          	bnez	a5,80007cf8 <uartintr+0x28>
    80007d14:	00003617          	auipc	a2,0x3
    80007d18:	92c60613          	addi	a2,a2,-1748 # 8000a640 <uart_tx_r>
    80007d1c:	00003517          	auipc	a0,0x3
    80007d20:	92c50513          	addi	a0,a0,-1748 # 8000a648 <uart_tx_w>
    80007d24:	00063783          	ld	a5,0(a2)
    80007d28:	00053703          	ld	a4,0(a0)
    80007d2c:	04f70263          	beq	a4,a5,80007d70 <uartintr+0xa0>
    80007d30:	100005b7          	lui	a1,0x10000
    80007d34:	00004817          	auipc	a6,0x4
    80007d38:	bac80813          	addi	a6,a6,-1108 # 8000b8e0 <uart_tx_buf>
    80007d3c:	01c0006f          	j	80007d58 <uartintr+0x88>
    80007d40:	0006c703          	lbu	a4,0(a3)
    80007d44:	00f63023          	sd	a5,0(a2)
    80007d48:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007d4c:	00063783          	ld	a5,0(a2)
    80007d50:	00053703          	ld	a4,0(a0)
    80007d54:	00f70e63          	beq	a4,a5,80007d70 <uartintr+0xa0>
    80007d58:	01f7f713          	andi	a4,a5,31
    80007d5c:	00e806b3          	add	a3,a6,a4
    80007d60:	0055c703          	lbu	a4,5(a1)
    80007d64:	00178793          	addi	a5,a5,1
    80007d68:	02077713          	andi	a4,a4,32
    80007d6c:	fc071ae3          	bnez	a4,80007d40 <uartintr+0x70>
    80007d70:	01813083          	ld	ra,24(sp)
    80007d74:	01013403          	ld	s0,16(sp)
    80007d78:	00813483          	ld	s1,8(sp)
    80007d7c:	02010113          	addi	sp,sp,32
    80007d80:	00008067          	ret
    80007d84:	00003617          	auipc	a2,0x3
    80007d88:	8bc60613          	addi	a2,a2,-1860 # 8000a640 <uart_tx_r>
    80007d8c:	00003517          	auipc	a0,0x3
    80007d90:	8bc50513          	addi	a0,a0,-1860 # 8000a648 <uart_tx_w>
    80007d94:	00063783          	ld	a5,0(a2)
    80007d98:	00053703          	ld	a4,0(a0)
    80007d9c:	04f70263          	beq	a4,a5,80007de0 <uartintr+0x110>
    80007da0:	100005b7          	lui	a1,0x10000
    80007da4:	00004817          	auipc	a6,0x4
    80007da8:	b3c80813          	addi	a6,a6,-1220 # 8000b8e0 <uart_tx_buf>
    80007dac:	01c0006f          	j	80007dc8 <uartintr+0xf8>
    80007db0:	0006c703          	lbu	a4,0(a3)
    80007db4:	00f63023          	sd	a5,0(a2)
    80007db8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007dbc:	00063783          	ld	a5,0(a2)
    80007dc0:	00053703          	ld	a4,0(a0)
    80007dc4:	02f70063          	beq	a4,a5,80007de4 <uartintr+0x114>
    80007dc8:	01f7f713          	andi	a4,a5,31
    80007dcc:	00e806b3          	add	a3,a6,a4
    80007dd0:	0055c703          	lbu	a4,5(a1)
    80007dd4:	00178793          	addi	a5,a5,1
    80007dd8:	02077713          	andi	a4,a4,32
    80007ddc:	fc071ae3          	bnez	a4,80007db0 <uartintr+0xe0>
    80007de0:	00008067          	ret
    80007de4:	00008067          	ret

0000000080007de8 <kinit>:
    80007de8:	fc010113          	addi	sp,sp,-64
    80007dec:	02913423          	sd	s1,40(sp)
    80007df0:	fffff7b7          	lui	a5,0xfffff
    80007df4:	00005497          	auipc	s1,0x5
    80007df8:	b1b48493          	addi	s1,s1,-1253 # 8000c90f <end+0xfff>
    80007dfc:	02813823          	sd	s0,48(sp)
    80007e00:	01313c23          	sd	s3,24(sp)
    80007e04:	00f4f4b3          	and	s1,s1,a5
    80007e08:	02113c23          	sd	ra,56(sp)
    80007e0c:	03213023          	sd	s2,32(sp)
    80007e10:	01413823          	sd	s4,16(sp)
    80007e14:	01513423          	sd	s5,8(sp)
    80007e18:	04010413          	addi	s0,sp,64
    80007e1c:	000017b7          	lui	a5,0x1
    80007e20:	01100993          	li	s3,17
    80007e24:	00f487b3          	add	a5,s1,a5
    80007e28:	01b99993          	slli	s3,s3,0x1b
    80007e2c:	06f9e063          	bltu	s3,a5,80007e8c <kinit+0xa4>
    80007e30:	00004a97          	auipc	s5,0x4
    80007e34:	ae0a8a93          	addi	s5,s5,-1312 # 8000b910 <end>
    80007e38:	0754ec63          	bltu	s1,s5,80007eb0 <kinit+0xc8>
    80007e3c:	0734fa63          	bgeu	s1,s3,80007eb0 <kinit+0xc8>
    80007e40:	00088a37          	lui	s4,0x88
    80007e44:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007e48:	00003917          	auipc	s2,0x3
    80007e4c:	80890913          	addi	s2,s2,-2040 # 8000a650 <kmem>
    80007e50:	00ca1a13          	slli	s4,s4,0xc
    80007e54:	0140006f          	j	80007e68 <kinit+0x80>
    80007e58:	000017b7          	lui	a5,0x1
    80007e5c:	00f484b3          	add	s1,s1,a5
    80007e60:	0554e863          	bltu	s1,s5,80007eb0 <kinit+0xc8>
    80007e64:	0534f663          	bgeu	s1,s3,80007eb0 <kinit+0xc8>
    80007e68:	00001637          	lui	a2,0x1
    80007e6c:	00100593          	li	a1,1
    80007e70:	00048513          	mv	a0,s1
    80007e74:	00000097          	auipc	ra,0x0
    80007e78:	5e4080e7          	jalr	1508(ra) # 80008458 <__memset>
    80007e7c:	00093783          	ld	a5,0(s2)
    80007e80:	00f4b023          	sd	a5,0(s1)
    80007e84:	00993023          	sd	s1,0(s2)
    80007e88:	fd4498e3          	bne	s1,s4,80007e58 <kinit+0x70>
    80007e8c:	03813083          	ld	ra,56(sp)
    80007e90:	03013403          	ld	s0,48(sp)
    80007e94:	02813483          	ld	s1,40(sp)
    80007e98:	02013903          	ld	s2,32(sp)
    80007e9c:	01813983          	ld	s3,24(sp)
    80007ea0:	01013a03          	ld	s4,16(sp)
    80007ea4:	00813a83          	ld	s5,8(sp)
    80007ea8:	04010113          	addi	sp,sp,64
    80007eac:	00008067          	ret
    80007eb0:	00002517          	auipc	a0,0x2
    80007eb4:	8c850513          	addi	a0,a0,-1848 # 80009778 <digits+0x18>
    80007eb8:	fffff097          	auipc	ra,0xfffff
    80007ebc:	4b4080e7          	jalr	1204(ra) # 8000736c <panic>

0000000080007ec0 <freerange>:
    80007ec0:	fc010113          	addi	sp,sp,-64
    80007ec4:	000017b7          	lui	a5,0x1
    80007ec8:	02913423          	sd	s1,40(sp)
    80007ecc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007ed0:	009504b3          	add	s1,a0,s1
    80007ed4:	fffff537          	lui	a0,0xfffff
    80007ed8:	02813823          	sd	s0,48(sp)
    80007edc:	02113c23          	sd	ra,56(sp)
    80007ee0:	03213023          	sd	s2,32(sp)
    80007ee4:	01313c23          	sd	s3,24(sp)
    80007ee8:	01413823          	sd	s4,16(sp)
    80007eec:	01513423          	sd	s5,8(sp)
    80007ef0:	01613023          	sd	s6,0(sp)
    80007ef4:	04010413          	addi	s0,sp,64
    80007ef8:	00a4f4b3          	and	s1,s1,a0
    80007efc:	00f487b3          	add	a5,s1,a5
    80007f00:	06f5e463          	bltu	a1,a5,80007f68 <freerange+0xa8>
    80007f04:	00004a97          	auipc	s5,0x4
    80007f08:	a0ca8a93          	addi	s5,s5,-1524 # 8000b910 <end>
    80007f0c:	0954e263          	bltu	s1,s5,80007f90 <freerange+0xd0>
    80007f10:	01100993          	li	s3,17
    80007f14:	01b99993          	slli	s3,s3,0x1b
    80007f18:	0734fc63          	bgeu	s1,s3,80007f90 <freerange+0xd0>
    80007f1c:	00058a13          	mv	s4,a1
    80007f20:	00002917          	auipc	s2,0x2
    80007f24:	73090913          	addi	s2,s2,1840 # 8000a650 <kmem>
    80007f28:	00002b37          	lui	s6,0x2
    80007f2c:	0140006f          	j	80007f40 <freerange+0x80>
    80007f30:	000017b7          	lui	a5,0x1
    80007f34:	00f484b3          	add	s1,s1,a5
    80007f38:	0554ec63          	bltu	s1,s5,80007f90 <freerange+0xd0>
    80007f3c:	0534fa63          	bgeu	s1,s3,80007f90 <freerange+0xd0>
    80007f40:	00001637          	lui	a2,0x1
    80007f44:	00100593          	li	a1,1
    80007f48:	00048513          	mv	a0,s1
    80007f4c:	00000097          	auipc	ra,0x0
    80007f50:	50c080e7          	jalr	1292(ra) # 80008458 <__memset>
    80007f54:	00093703          	ld	a4,0(s2)
    80007f58:	016487b3          	add	a5,s1,s6
    80007f5c:	00e4b023          	sd	a4,0(s1)
    80007f60:	00993023          	sd	s1,0(s2)
    80007f64:	fcfa76e3          	bgeu	s4,a5,80007f30 <freerange+0x70>
    80007f68:	03813083          	ld	ra,56(sp)
    80007f6c:	03013403          	ld	s0,48(sp)
    80007f70:	02813483          	ld	s1,40(sp)
    80007f74:	02013903          	ld	s2,32(sp)
    80007f78:	01813983          	ld	s3,24(sp)
    80007f7c:	01013a03          	ld	s4,16(sp)
    80007f80:	00813a83          	ld	s5,8(sp)
    80007f84:	00013b03          	ld	s6,0(sp)
    80007f88:	04010113          	addi	sp,sp,64
    80007f8c:	00008067          	ret
    80007f90:	00001517          	auipc	a0,0x1
    80007f94:	7e850513          	addi	a0,a0,2024 # 80009778 <digits+0x18>
    80007f98:	fffff097          	auipc	ra,0xfffff
    80007f9c:	3d4080e7          	jalr	980(ra) # 8000736c <panic>

0000000080007fa0 <kfree>:
    80007fa0:	fe010113          	addi	sp,sp,-32
    80007fa4:	00813823          	sd	s0,16(sp)
    80007fa8:	00113c23          	sd	ra,24(sp)
    80007fac:	00913423          	sd	s1,8(sp)
    80007fb0:	02010413          	addi	s0,sp,32
    80007fb4:	03451793          	slli	a5,a0,0x34
    80007fb8:	04079c63          	bnez	a5,80008010 <kfree+0x70>
    80007fbc:	00004797          	auipc	a5,0x4
    80007fc0:	95478793          	addi	a5,a5,-1708 # 8000b910 <end>
    80007fc4:	00050493          	mv	s1,a0
    80007fc8:	04f56463          	bltu	a0,a5,80008010 <kfree+0x70>
    80007fcc:	01100793          	li	a5,17
    80007fd0:	01b79793          	slli	a5,a5,0x1b
    80007fd4:	02f57e63          	bgeu	a0,a5,80008010 <kfree+0x70>
    80007fd8:	00001637          	lui	a2,0x1
    80007fdc:	00100593          	li	a1,1
    80007fe0:	00000097          	auipc	ra,0x0
    80007fe4:	478080e7          	jalr	1144(ra) # 80008458 <__memset>
    80007fe8:	00002797          	auipc	a5,0x2
    80007fec:	66878793          	addi	a5,a5,1640 # 8000a650 <kmem>
    80007ff0:	0007b703          	ld	a4,0(a5)
    80007ff4:	01813083          	ld	ra,24(sp)
    80007ff8:	01013403          	ld	s0,16(sp)
    80007ffc:	00e4b023          	sd	a4,0(s1)
    80008000:	0097b023          	sd	s1,0(a5)
    80008004:	00813483          	ld	s1,8(sp)
    80008008:	02010113          	addi	sp,sp,32
    8000800c:	00008067          	ret
    80008010:	00001517          	auipc	a0,0x1
    80008014:	76850513          	addi	a0,a0,1896 # 80009778 <digits+0x18>
    80008018:	fffff097          	auipc	ra,0xfffff
    8000801c:	354080e7          	jalr	852(ra) # 8000736c <panic>

0000000080008020 <kalloc>:
    80008020:	fe010113          	addi	sp,sp,-32
    80008024:	00813823          	sd	s0,16(sp)
    80008028:	00913423          	sd	s1,8(sp)
    8000802c:	00113c23          	sd	ra,24(sp)
    80008030:	02010413          	addi	s0,sp,32
    80008034:	00002797          	auipc	a5,0x2
    80008038:	61c78793          	addi	a5,a5,1564 # 8000a650 <kmem>
    8000803c:	0007b483          	ld	s1,0(a5)
    80008040:	02048063          	beqz	s1,80008060 <kalloc+0x40>
    80008044:	0004b703          	ld	a4,0(s1)
    80008048:	00001637          	lui	a2,0x1
    8000804c:	00500593          	li	a1,5
    80008050:	00048513          	mv	a0,s1
    80008054:	00e7b023          	sd	a4,0(a5)
    80008058:	00000097          	auipc	ra,0x0
    8000805c:	400080e7          	jalr	1024(ra) # 80008458 <__memset>
    80008060:	01813083          	ld	ra,24(sp)
    80008064:	01013403          	ld	s0,16(sp)
    80008068:	00048513          	mv	a0,s1
    8000806c:	00813483          	ld	s1,8(sp)
    80008070:	02010113          	addi	sp,sp,32
    80008074:	00008067          	ret

0000000080008078 <initlock>:
    80008078:	ff010113          	addi	sp,sp,-16
    8000807c:	00813423          	sd	s0,8(sp)
    80008080:	01010413          	addi	s0,sp,16
    80008084:	00813403          	ld	s0,8(sp)
    80008088:	00b53423          	sd	a1,8(a0)
    8000808c:	00052023          	sw	zero,0(a0)
    80008090:	00053823          	sd	zero,16(a0)
    80008094:	01010113          	addi	sp,sp,16
    80008098:	00008067          	ret

000000008000809c <acquire>:
    8000809c:	fe010113          	addi	sp,sp,-32
    800080a0:	00813823          	sd	s0,16(sp)
    800080a4:	00913423          	sd	s1,8(sp)
    800080a8:	00113c23          	sd	ra,24(sp)
    800080ac:	01213023          	sd	s2,0(sp)
    800080b0:	02010413          	addi	s0,sp,32
    800080b4:	00050493          	mv	s1,a0
    800080b8:	10002973          	csrr	s2,sstatus
    800080bc:	100027f3          	csrr	a5,sstatus
    800080c0:	ffd7f793          	andi	a5,a5,-3
    800080c4:	10079073          	csrw	sstatus,a5
    800080c8:	fffff097          	auipc	ra,0xfffff
    800080cc:	8e8080e7          	jalr	-1816(ra) # 800069b0 <mycpu>
    800080d0:	07852783          	lw	a5,120(a0)
    800080d4:	06078e63          	beqz	a5,80008150 <acquire+0xb4>
    800080d8:	fffff097          	auipc	ra,0xfffff
    800080dc:	8d8080e7          	jalr	-1832(ra) # 800069b0 <mycpu>
    800080e0:	07852783          	lw	a5,120(a0)
    800080e4:	0004a703          	lw	a4,0(s1)
    800080e8:	0017879b          	addiw	a5,a5,1
    800080ec:	06f52c23          	sw	a5,120(a0)
    800080f0:	04071063          	bnez	a4,80008130 <acquire+0x94>
    800080f4:	00100713          	li	a4,1
    800080f8:	00070793          	mv	a5,a4
    800080fc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008100:	0007879b          	sext.w	a5,a5
    80008104:	fe079ae3          	bnez	a5,800080f8 <acquire+0x5c>
    80008108:	0ff0000f          	fence
    8000810c:	fffff097          	auipc	ra,0xfffff
    80008110:	8a4080e7          	jalr	-1884(ra) # 800069b0 <mycpu>
    80008114:	01813083          	ld	ra,24(sp)
    80008118:	01013403          	ld	s0,16(sp)
    8000811c:	00a4b823          	sd	a0,16(s1)
    80008120:	00013903          	ld	s2,0(sp)
    80008124:	00813483          	ld	s1,8(sp)
    80008128:	02010113          	addi	sp,sp,32
    8000812c:	00008067          	ret
    80008130:	0104b903          	ld	s2,16(s1)
    80008134:	fffff097          	auipc	ra,0xfffff
    80008138:	87c080e7          	jalr	-1924(ra) # 800069b0 <mycpu>
    8000813c:	faa91ce3          	bne	s2,a0,800080f4 <acquire+0x58>
    80008140:	00001517          	auipc	a0,0x1
    80008144:	64050513          	addi	a0,a0,1600 # 80009780 <digits+0x20>
    80008148:	fffff097          	auipc	ra,0xfffff
    8000814c:	224080e7          	jalr	548(ra) # 8000736c <panic>
    80008150:	00195913          	srli	s2,s2,0x1
    80008154:	fffff097          	auipc	ra,0xfffff
    80008158:	85c080e7          	jalr	-1956(ra) # 800069b0 <mycpu>
    8000815c:	00197913          	andi	s2,s2,1
    80008160:	07252e23          	sw	s2,124(a0)
    80008164:	f75ff06f          	j	800080d8 <acquire+0x3c>

0000000080008168 <release>:
    80008168:	fe010113          	addi	sp,sp,-32
    8000816c:	00813823          	sd	s0,16(sp)
    80008170:	00113c23          	sd	ra,24(sp)
    80008174:	00913423          	sd	s1,8(sp)
    80008178:	01213023          	sd	s2,0(sp)
    8000817c:	02010413          	addi	s0,sp,32
    80008180:	00052783          	lw	a5,0(a0)
    80008184:	00079a63          	bnez	a5,80008198 <release+0x30>
    80008188:	00001517          	auipc	a0,0x1
    8000818c:	60050513          	addi	a0,a0,1536 # 80009788 <digits+0x28>
    80008190:	fffff097          	auipc	ra,0xfffff
    80008194:	1dc080e7          	jalr	476(ra) # 8000736c <panic>
    80008198:	01053903          	ld	s2,16(a0)
    8000819c:	00050493          	mv	s1,a0
    800081a0:	fffff097          	auipc	ra,0xfffff
    800081a4:	810080e7          	jalr	-2032(ra) # 800069b0 <mycpu>
    800081a8:	fea910e3          	bne	s2,a0,80008188 <release+0x20>
    800081ac:	0004b823          	sd	zero,16(s1)
    800081b0:	0ff0000f          	fence
    800081b4:	0f50000f          	fence	iorw,ow
    800081b8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800081bc:	ffffe097          	auipc	ra,0xffffe
    800081c0:	7f4080e7          	jalr	2036(ra) # 800069b0 <mycpu>
    800081c4:	100027f3          	csrr	a5,sstatus
    800081c8:	0027f793          	andi	a5,a5,2
    800081cc:	04079a63          	bnez	a5,80008220 <release+0xb8>
    800081d0:	07852783          	lw	a5,120(a0)
    800081d4:	02f05e63          	blez	a5,80008210 <release+0xa8>
    800081d8:	fff7871b          	addiw	a4,a5,-1
    800081dc:	06e52c23          	sw	a4,120(a0)
    800081e0:	00071c63          	bnez	a4,800081f8 <release+0x90>
    800081e4:	07c52783          	lw	a5,124(a0)
    800081e8:	00078863          	beqz	a5,800081f8 <release+0x90>
    800081ec:	100027f3          	csrr	a5,sstatus
    800081f0:	0027e793          	ori	a5,a5,2
    800081f4:	10079073          	csrw	sstatus,a5
    800081f8:	01813083          	ld	ra,24(sp)
    800081fc:	01013403          	ld	s0,16(sp)
    80008200:	00813483          	ld	s1,8(sp)
    80008204:	00013903          	ld	s2,0(sp)
    80008208:	02010113          	addi	sp,sp,32
    8000820c:	00008067          	ret
    80008210:	00001517          	auipc	a0,0x1
    80008214:	59850513          	addi	a0,a0,1432 # 800097a8 <digits+0x48>
    80008218:	fffff097          	auipc	ra,0xfffff
    8000821c:	154080e7          	jalr	340(ra) # 8000736c <panic>
    80008220:	00001517          	auipc	a0,0x1
    80008224:	57050513          	addi	a0,a0,1392 # 80009790 <digits+0x30>
    80008228:	fffff097          	auipc	ra,0xfffff
    8000822c:	144080e7          	jalr	324(ra) # 8000736c <panic>

0000000080008230 <holding>:
    80008230:	00052783          	lw	a5,0(a0)
    80008234:	00079663          	bnez	a5,80008240 <holding+0x10>
    80008238:	00000513          	li	a0,0
    8000823c:	00008067          	ret
    80008240:	fe010113          	addi	sp,sp,-32
    80008244:	00813823          	sd	s0,16(sp)
    80008248:	00913423          	sd	s1,8(sp)
    8000824c:	00113c23          	sd	ra,24(sp)
    80008250:	02010413          	addi	s0,sp,32
    80008254:	01053483          	ld	s1,16(a0)
    80008258:	ffffe097          	auipc	ra,0xffffe
    8000825c:	758080e7          	jalr	1880(ra) # 800069b0 <mycpu>
    80008260:	01813083          	ld	ra,24(sp)
    80008264:	01013403          	ld	s0,16(sp)
    80008268:	40a48533          	sub	a0,s1,a0
    8000826c:	00153513          	seqz	a0,a0
    80008270:	00813483          	ld	s1,8(sp)
    80008274:	02010113          	addi	sp,sp,32
    80008278:	00008067          	ret

000000008000827c <push_off>:
    8000827c:	fe010113          	addi	sp,sp,-32
    80008280:	00813823          	sd	s0,16(sp)
    80008284:	00113c23          	sd	ra,24(sp)
    80008288:	00913423          	sd	s1,8(sp)
    8000828c:	02010413          	addi	s0,sp,32
    80008290:	100024f3          	csrr	s1,sstatus
    80008294:	100027f3          	csrr	a5,sstatus
    80008298:	ffd7f793          	andi	a5,a5,-3
    8000829c:	10079073          	csrw	sstatus,a5
    800082a0:	ffffe097          	auipc	ra,0xffffe
    800082a4:	710080e7          	jalr	1808(ra) # 800069b0 <mycpu>
    800082a8:	07852783          	lw	a5,120(a0)
    800082ac:	02078663          	beqz	a5,800082d8 <push_off+0x5c>
    800082b0:	ffffe097          	auipc	ra,0xffffe
    800082b4:	700080e7          	jalr	1792(ra) # 800069b0 <mycpu>
    800082b8:	07852783          	lw	a5,120(a0)
    800082bc:	01813083          	ld	ra,24(sp)
    800082c0:	01013403          	ld	s0,16(sp)
    800082c4:	0017879b          	addiw	a5,a5,1
    800082c8:	06f52c23          	sw	a5,120(a0)
    800082cc:	00813483          	ld	s1,8(sp)
    800082d0:	02010113          	addi	sp,sp,32
    800082d4:	00008067          	ret
    800082d8:	0014d493          	srli	s1,s1,0x1
    800082dc:	ffffe097          	auipc	ra,0xffffe
    800082e0:	6d4080e7          	jalr	1748(ra) # 800069b0 <mycpu>
    800082e4:	0014f493          	andi	s1,s1,1
    800082e8:	06952e23          	sw	s1,124(a0)
    800082ec:	fc5ff06f          	j	800082b0 <push_off+0x34>

00000000800082f0 <pop_off>:
    800082f0:	ff010113          	addi	sp,sp,-16
    800082f4:	00813023          	sd	s0,0(sp)
    800082f8:	00113423          	sd	ra,8(sp)
    800082fc:	01010413          	addi	s0,sp,16
    80008300:	ffffe097          	auipc	ra,0xffffe
    80008304:	6b0080e7          	jalr	1712(ra) # 800069b0 <mycpu>
    80008308:	100027f3          	csrr	a5,sstatus
    8000830c:	0027f793          	andi	a5,a5,2
    80008310:	04079663          	bnez	a5,8000835c <pop_off+0x6c>
    80008314:	07852783          	lw	a5,120(a0)
    80008318:	02f05a63          	blez	a5,8000834c <pop_off+0x5c>
    8000831c:	fff7871b          	addiw	a4,a5,-1
    80008320:	06e52c23          	sw	a4,120(a0)
    80008324:	00071c63          	bnez	a4,8000833c <pop_off+0x4c>
    80008328:	07c52783          	lw	a5,124(a0)
    8000832c:	00078863          	beqz	a5,8000833c <pop_off+0x4c>
    80008330:	100027f3          	csrr	a5,sstatus
    80008334:	0027e793          	ori	a5,a5,2
    80008338:	10079073          	csrw	sstatus,a5
    8000833c:	00813083          	ld	ra,8(sp)
    80008340:	00013403          	ld	s0,0(sp)
    80008344:	01010113          	addi	sp,sp,16
    80008348:	00008067          	ret
    8000834c:	00001517          	auipc	a0,0x1
    80008350:	45c50513          	addi	a0,a0,1116 # 800097a8 <digits+0x48>
    80008354:	fffff097          	auipc	ra,0xfffff
    80008358:	018080e7          	jalr	24(ra) # 8000736c <panic>
    8000835c:	00001517          	auipc	a0,0x1
    80008360:	43450513          	addi	a0,a0,1076 # 80009790 <digits+0x30>
    80008364:	fffff097          	auipc	ra,0xfffff
    80008368:	008080e7          	jalr	8(ra) # 8000736c <panic>

000000008000836c <push_on>:
    8000836c:	fe010113          	addi	sp,sp,-32
    80008370:	00813823          	sd	s0,16(sp)
    80008374:	00113c23          	sd	ra,24(sp)
    80008378:	00913423          	sd	s1,8(sp)
    8000837c:	02010413          	addi	s0,sp,32
    80008380:	100024f3          	csrr	s1,sstatus
    80008384:	100027f3          	csrr	a5,sstatus
    80008388:	0027e793          	ori	a5,a5,2
    8000838c:	10079073          	csrw	sstatus,a5
    80008390:	ffffe097          	auipc	ra,0xffffe
    80008394:	620080e7          	jalr	1568(ra) # 800069b0 <mycpu>
    80008398:	07852783          	lw	a5,120(a0)
    8000839c:	02078663          	beqz	a5,800083c8 <push_on+0x5c>
    800083a0:	ffffe097          	auipc	ra,0xffffe
    800083a4:	610080e7          	jalr	1552(ra) # 800069b0 <mycpu>
    800083a8:	07852783          	lw	a5,120(a0)
    800083ac:	01813083          	ld	ra,24(sp)
    800083b0:	01013403          	ld	s0,16(sp)
    800083b4:	0017879b          	addiw	a5,a5,1
    800083b8:	06f52c23          	sw	a5,120(a0)
    800083bc:	00813483          	ld	s1,8(sp)
    800083c0:	02010113          	addi	sp,sp,32
    800083c4:	00008067          	ret
    800083c8:	0014d493          	srli	s1,s1,0x1
    800083cc:	ffffe097          	auipc	ra,0xffffe
    800083d0:	5e4080e7          	jalr	1508(ra) # 800069b0 <mycpu>
    800083d4:	0014f493          	andi	s1,s1,1
    800083d8:	06952e23          	sw	s1,124(a0)
    800083dc:	fc5ff06f          	j	800083a0 <push_on+0x34>

00000000800083e0 <pop_on>:
    800083e0:	ff010113          	addi	sp,sp,-16
    800083e4:	00813023          	sd	s0,0(sp)
    800083e8:	00113423          	sd	ra,8(sp)
    800083ec:	01010413          	addi	s0,sp,16
    800083f0:	ffffe097          	auipc	ra,0xffffe
    800083f4:	5c0080e7          	jalr	1472(ra) # 800069b0 <mycpu>
    800083f8:	100027f3          	csrr	a5,sstatus
    800083fc:	0027f793          	andi	a5,a5,2
    80008400:	04078463          	beqz	a5,80008448 <pop_on+0x68>
    80008404:	07852783          	lw	a5,120(a0)
    80008408:	02f05863          	blez	a5,80008438 <pop_on+0x58>
    8000840c:	fff7879b          	addiw	a5,a5,-1
    80008410:	06f52c23          	sw	a5,120(a0)
    80008414:	07853783          	ld	a5,120(a0)
    80008418:	00079863          	bnez	a5,80008428 <pop_on+0x48>
    8000841c:	100027f3          	csrr	a5,sstatus
    80008420:	ffd7f793          	andi	a5,a5,-3
    80008424:	10079073          	csrw	sstatus,a5
    80008428:	00813083          	ld	ra,8(sp)
    8000842c:	00013403          	ld	s0,0(sp)
    80008430:	01010113          	addi	sp,sp,16
    80008434:	00008067          	ret
    80008438:	00001517          	auipc	a0,0x1
    8000843c:	39850513          	addi	a0,a0,920 # 800097d0 <digits+0x70>
    80008440:	fffff097          	auipc	ra,0xfffff
    80008444:	f2c080e7          	jalr	-212(ra) # 8000736c <panic>
    80008448:	00001517          	auipc	a0,0x1
    8000844c:	36850513          	addi	a0,a0,872 # 800097b0 <digits+0x50>
    80008450:	fffff097          	auipc	ra,0xfffff
    80008454:	f1c080e7          	jalr	-228(ra) # 8000736c <panic>

0000000080008458 <__memset>:
    80008458:	ff010113          	addi	sp,sp,-16
    8000845c:	00813423          	sd	s0,8(sp)
    80008460:	01010413          	addi	s0,sp,16
    80008464:	1a060e63          	beqz	a2,80008620 <__memset+0x1c8>
    80008468:	40a007b3          	neg	a5,a0
    8000846c:	0077f793          	andi	a5,a5,7
    80008470:	00778693          	addi	a3,a5,7
    80008474:	00b00813          	li	a6,11
    80008478:	0ff5f593          	andi	a1,a1,255
    8000847c:	fff6071b          	addiw	a4,a2,-1
    80008480:	1b06e663          	bltu	a3,a6,8000862c <__memset+0x1d4>
    80008484:	1cd76463          	bltu	a4,a3,8000864c <__memset+0x1f4>
    80008488:	1a078e63          	beqz	a5,80008644 <__memset+0x1ec>
    8000848c:	00b50023          	sb	a1,0(a0)
    80008490:	00100713          	li	a4,1
    80008494:	1ae78463          	beq	a5,a4,8000863c <__memset+0x1e4>
    80008498:	00b500a3          	sb	a1,1(a0)
    8000849c:	00200713          	li	a4,2
    800084a0:	1ae78a63          	beq	a5,a4,80008654 <__memset+0x1fc>
    800084a4:	00b50123          	sb	a1,2(a0)
    800084a8:	00300713          	li	a4,3
    800084ac:	18e78463          	beq	a5,a4,80008634 <__memset+0x1dc>
    800084b0:	00b501a3          	sb	a1,3(a0)
    800084b4:	00400713          	li	a4,4
    800084b8:	1ae78263          	beq	a5,a4,8000865c <__memset+0x204>
    800084bc:	00b50223          	sb	a1,4(a0)
    800084c0:	00500713          	li	a4,5
    800084c4:	1ae78063          	beq	a5,a4,80008664 <__memset+0x20c>
    800084c8:	00b502a3          	sb	a1,5(a0)
    800084cc:	00700713          	li	a4,7
    800084d0:	18e79e63          	bne	a5,a4,8000866c <__memset+0x214>
    800084d4:	00b50323          	sb	a1,6(a0)
    800084d8:	00700e93          	li	t4,7
    800084dc:	00859713          	slli	a4,a1,0x8
    800084e0:	00e5e733          	or	a4,a1,a4
    800084e4:	01059e13          	slli	t3,a1,0x10
    800084e8:	01c76e33          	or	t3,a4,t3
    800084ec:	01859313          	slli	t1,a1,0x18
    800084f0:	006e6333          	or	t1,t3,t1
    800084f4:	02059893          	slli	a7,a1,0x20
    800084f8:	40f60e3b          	subw	t3,a2,a5
    800084fc:	011368b3          	or	a7,t1,a7
    80008500:	02859813          	slli	a6,a1,0x28
    80008504:	0108e833          	or	a6,a7,a6
    80008508:	03059693          	slli	a3,a1,0x30
    8000850c:	003e589b          	srliw	a7,t3,0x3
    80008510:	00d866b3          	or	a3,a6,a3
    80008514:	03859713          	slli	a4,a1,0x38
    80008518:	00389813          	slli	a6,a7,0x3
    8000851c:	00f507b3          	add	a5,a0,a5
    80008520:	00e6e733          	or	a4,a3,a4
    80008524:	000e089b          	sext.w	a7,t3
    80008528:	00f806b3          	add	a3,a6,a5
    8000852c:	00e7b023          	sd	a4,0(a5)
    80008530:	00878793          	addi	a5,a5,8
    80008534:	fed79ce3          	bne	a5,a3,8000852c <__memset+0xd4>
    80008538:	ff8e7793          	andi	a5,t3,-8
    8000853c:	0007871b          	sext.w	a4,a5
    80008540:	01d787bb          	addw	a5,a5,t4
    80008544:	0ce88e63          	beq	a7,a4,80008620 <__memset+0x1c8>
    80008548:	00f50733          	add	a4,a0,a5
    8000854c:	00b70023          	sb	a1,0(a4)
    80008550:	0017871b          	addiw	a4,a5,1
    80008554:	0cc77663          	bgeu	a4,a2,80008620 <__memset+0x1c8>
    80008558:	00e50733          	add	a4,a0,a4
    8000855c:	00b70023          	sb	a1,0(a4)
    80008560:	0027871b          	addiw	a4,a5,2
    80008564:	0ac77e63          	bgeu	a4,a2,80008620 <__memset+0x1c8>
    80008568:	00e50733          	add	a4,a0,a4
    8000856c:	00b70023          	sb	a1,0(a4)
    80008570:	0037871b          	addiw	a4,a5,3
    80008574:	0ac77663          	bgeu	a4,a2,80008620 <__memset+0x1c8>
    80008578:	00e50733          	add	a4,a0,a4
    8000857c:	00b70023          	sb	a1,0(a4)
    80008580:	0047871b          	addiw	a4,a5,4
    80008584:	08c77e63          	bgeu	a4,a2,80008620 <__memset+0x1c8>
    80008588:	00e50733          	add	a4,a0,a4
    8000858c:	00b70023          	sb	a1,0(a4)
    80008590:	0057871b          	addiw	a4,a5,5
    80008594:	08c77663          	bgeu	a4,a2,80008620 <__memset+0x1c8>
    80008598:	00e50733          	add	a4,a0,a4
    8000859c:	00b70023          	sb	a1,0(a4)
    800085a0:	0067871b          	addiw	a4,a5,6
    800085a4:	06c77e63          	bgeu	a4,a2,80008620 <__memset+0x1c8>
    800085a8:	00e50733          	add	a4,a0,a4
    800085ac:	00b70023          	sb	a1,0(a4)
    800085b0:	0077871b          	addiw	a4,a5,7
    800085b4:	06c77663          	bgeu	a4,a2,80008620 <__memset+0x1c8>
    800085b8:	00e50733          	add	a4,a0,a4
    800085bc:	00b70023          	sb	a1,0(a4)
    800085c0:	0087871b          	addiw	a4,a5,8
    800085c4:	04c77e63          	bgeu	a4,a2,80008620 <__memset+0x1c8>
    800085c8:	00e50733          	add	a4,a0,a4
    800085cc:	00b70023          	sb	a1,0(a4)
    800085d0:	0097871b          	addiw	a4,a5,9
    800085d4:	04c77663          	bgeu	a4,a2,80008620 <__memset+0x1c8>
    800085d8:	00e50733          	add	a4,a0,a4
    800085dc:	00b70023          	sb	a1,0(a4)
    800085e0:	00a7871b          	addiw	a4,a5,10
    800085e4:	02c77e63          	bgeu	a4,a2,80008620 <__memset+0x1c8>
    800085e8:	00e50733          	add	a4,a0,a4
    800085ec:	00b70023          	sb	a1,0(a4)
    800085f0:	00b7871b          	addiw	a4,a5,11
    800085f4:	02c77663          	bgeu	a4,a2,80008620 <__memset+0x1c8>
    800085f8:	00e50733          	add	a4,a0,a4
    800085fc:	00b70023          	sb	a1,0(a4)
    80008600:	00c7871b          	addiw	a4,a5,12
    80008604:	00c77e63          	bgeu	a4,a2,80008620 <__memset+0x1c8>
    80008608:	00e50733          	add	a4,a0,a4
    8000860c:	00b70023          	sb	a1,0(a4)
    80008610:	00d7879b          	addiw	a5,a5,13
    80008614:	00c7f663          	bgeu	a5,a2,80008620 <__memset+0x1c8>
    80008618:	00f507b3          	add	a5,a0,a5
    8000861c:	00b78023          	sb	a1,0(a5)
    80008620:	00813403          	ld	s0,8(sp)
    80008624:	01010113          	addi	sp,sp,16
    80008628:	00008067          	ret
    8000862c:	00b00693          	li	a3,11
    80008630:	e55ff06f          	j	80008484 <__memset+0x2c>
    80008634:	00300e93          	li	t4,3
    80008638:	ea5ff06f          	j	800084dc <__memset+0x84>
    8000863c:	00100e93          	li	t4,1
    80008640:	e9dff06f          	j	800084dc <__memset+0x84>
    80008644:	00000e93          	li	t4,0
    80008648:	e95ff06f          	j	800084dc <__memset+0x84>
    8000864c:	00000793          	li	a5,0
    80008650:	ef9ff06f          	j	80008548 <__memset+0xf0>
    80008654:	00200e93          	li	t4,2
    80008658:	e85ff06f          	j	800084dc <__memset+0x84>
    8000865c:	00400e93          	li	t4,4
    80008660:	e7dff06f          	j	800084dc <__memset+0x84>
    80008664:	00500e93          	li	t4,5
    80008668:	e75ff06f          	j	800084dc <__memset+0x84>
    8000866c:	00600e93          	li	t4,6
    80008670:	e6dff06f          	j	800084dc <__memset+0x84>

0000000080008674 <__memmove>:
    80008674:	ff010113          	addi	sp,sp,-16
    80008678:	00813423          	sd	s0,8(sp)
    8000867c:	01010413          	addi	s0,sp,16
    80008680:	0e060863          	beqz	a2,80008770 <__memmove+0xfc>
    80008684:	fff6069b          	addiw	a3,a2,-1
    80008688:	0006881b          	sext.w	a6,a3
    8000868c:	0ea5e863          	bltu	a1,a0,8000877c <__memmove+0x108>
    80008690:	00758713          	addi	a4,a1,7
    80008694:	00a5e7b3          	or	a5,a1,a0
    80008698:	40a70733          	sub	a4,a4,a0
    8000869c:	0077f793          	andi	a5,a5,7
    800086a0:	00f73713          	sltiu	a4,a4,15
    800086a4:	00174713          	xori	a4,a4,1
    800086a8:	0017b793          	seqz	a5,a5
    800086ac:	00e7f7b3          	and	a5,a5,a4
    800086b0:	10078863          	beqz	a5,800087c0 <__memmove+0x14c>
    800086b4:	00900793          	li	a5,9
    800086b8:	1107f463          	bgeu	a5,a6,800087c0 <__memmove+0x14c>
    800086bc:	0036581b          	srliw	a6,a2,0x3
    800086c0:	fff8081b          	addiw	a6,a6,-1
    800086c4:	02081813          	slli	a6,a6,0x20
    800086c8:	01d85893          	srli	a7,a6,0x1d
    800086cc:	00858813          	addi	a6,a1,8
    800086d0:	00058793          	mv	a5,a1
    800086d4:	00050713          	mv	a4,a0
    800086d8:	01088833          	add	a6,a7,a6
    800086dc:	0007b883          	ld	a7,0(a5)
    800086e0:	00878793          	addi	a5,a5,8
    800086e4:	00870713          	addi	a4,a4,8
    800086e8:	ff173c23          	sd	a7,-8(a4)
    800086ec:	ff0798e3          	bne	a5,a6,800086dc <__memmove+0x68>
    800086f0:	ff867713          	andi	a4,a2,-8
    800086f4:	02071793          	slli	a5,a4,0x20
    800086f8:	0207d793          	srli	a5,a5,0x20
    800086fc:	00f585b3          	add	a1,a1,a5
    80008700:	40e686bb          	subw	a3,a3,a4
    80008704:	00f507b3          	add	a5,a0,a5
    80008708:	06e60463          	beq	a2,a4,80008770 <__memmove+0xfc>
    8000870c:	0005c703          	lbu	a4,0(a1)
    80008710:	00e78023          	sb	a4,0(a5)
    80008714:	04068e63          	beqz	a3,80008770 <__memmove+0xfc>
    80008718:	0015c603          	lbu	a2,1(a1)
    8000871c:	00100713          	li	a4,1
    80008720:	00c780a3          	sb	a2,1(a5)
    80008724:	04e68663          	beq	a3,a4,80008770 <__memmove+0xfc>
    80008728:	0025c603          	lbu	a2,2(a1)
    8000872c:	00200713          	li	a4,2
    80008730:	00c78123          	sb	a2,2(a5)
    80008734:	02e68e63          	beq	a3,a4,80008770 <__memmove+0xfc>
    80008738:	0035c603          	lbu	a2,3(a1)
    8000873c:	00300713          	li	a4,3
    80008740:	00c781a3          	sb	a2,3(a5)
    80008744:	02e68663          	beq	a3,a4,80008770 <__memmove+0xfc>
    80008748:	0045c603          	lbu	a2,4(a1)
    8000874c:	00400713          	li	a4,4
    80008750:	00c78223          	sb	a2,4(a5)
    80008754:	00e68e63          	beq	a3,a4,80008770 <__memmove+0xfc>
    80008758:	0055c603          	lbu	a2,5(a1)
    8000875c:	00500713          	li	a4,5
    80008760:	00c782a3          	sb	a2,5(a5)
    80008764:	00e68663          	beq	a3,a4,80008770 <__memmove+0xfc>
    80008768:	0065c703          	lbu	a4,6(a1)
    8000876c:	00e78323          	sb	a4,6(a5)
    80008770:	00813403          	ld	s0,8(sp)
    80008774:	01010113          	addi	sp,sp,16
    80008778:	00008067          	ret
    8000877c:	02061713          	slli	a4,a2,0x20
    80008780:	02075713          	srli	a4,a4,0x20
    80008784:	00e587b3          	add	a5,a1,a4
    80008788:	f0f574e3          	bgeu	a0,a5,80008690 <__memmove+0x1c>
    8000878c:	02069613          	slli	a2,a3,0x20
    80008790:	02065613          	srli	a2,a2,0x20
    80008794:	fff64613          	not	a2,a2
    80008798:	00e50733          	add	a4,a0,a4
    8000879c:	00c78633          	add	a2,a5,a2
    800087a0:	fff7c683          	lbu	a3,-1(a5)
    800087a4:	fff78793          	addi	a5,a5,-1
    800087a8:	fff70713          	addi	a4,a4,-1
    800087ac:	00d70023          	sb	a3,0(a4)
    800087b0:	fec798e3          	bne	a5,a2,800087a0 <__memmove+0x12c>
    800087b4:	00813403          	ld	s0,8(sp)
    800087b8:	01010113          	addi	sp,sp,16
    800087bc:	00008067          	ret
    800087c0:	02069713          	slli	a4,a3,0x20
    800087c4:	02075713          	srli	a4,a4,0x20
    800087c8:	00170713          	addi	a4,a4,1
    800087cc:	00e50733          	add	a4,a0,a4
    800087d0:	00050793          	mv	a5,a0
    800087d4:	0005c683          	lbu	a3,0(a1)
    800087d8:	00178793          	addi	a5,a5,1
    800087dc:	00158593          	addi	a1,a1,1
    800087e0:	fed78fa3          	sb	a3,-1(a5)
    800087e4:	fee798e3          	bne	a5,a4,800087d4 <__memmove+0x160>
    800087e8:	f89ff06f          	j	80008770 <__memmove+0xfc>

00000000800087ec <__mem_free>:
    800087ec:	ff010113          	addi	sp,sp,-16
    800087f0:	00813423          	sd	s0,8(sp)
    800087f4:	01010413          	addi	s0,sp,16
    800087f8:	00002597          	auipc	a1,0x2
    800087fc:	e6058593          	addi	a1,a1,-416 # 8000a658 <freep>
    80008800:	0005b783          	ld	a5,0(a1)
    80008804:	ff050693          	addi	a3,a0,-16
    80008808:	0007b703          	ld	a4,0(a5)
    8000880c:	00d7fc63          	bgeu	a5,a3,80008824 <__mem_free+0x38>
    80008810:	00e6ee63          	bltu	a3,a4,8000882c <__mem_free+0x40>
    80008814:	00e7fc63          	bgeu	a5,a4,8000882c <__mem_free+0x40>
    80008818:	00070793          	mv	a5,a4
    8000881c:	0007b703          	ld	a4,0(a5)
    80008820:	fed7e8e3          	bltu	a5,a3,80008810 <__mem_free+0x24>
    80008824:	fee7eae3          	bltu	a5,a4,80008818 <__mem_free+0x2c>
    80008828:	fee6f8e3          	bgeu	a3,a4,80008818 <__mem_free+0x2c>
    8000882c:	ff852803          	lw	a6,-8(a0)
    80008830:	02081613          	slli	a2,a6,0x20
    80008834:	01c65613          	srli	a2,a2,0x1c
    80008838:	00c68633          	add	a2,a3,a2
    8000883c:	02c70a63          	beq	a4,a2,80008870 <__mem_free+0x84>
    80008840:	fee53823          	sd	a4,-16(a0)
    80008844:	0087a503          	lw	a0,8(a5)
    80008848:	02051613          	slli	a2,a0,0x20
    8000884c:	01c65613          	srli	a2,a2,0x1c
    80008850:	00c78633          	add	a2,a5,a2
    80008854:	04c68263          	beq	a3,a2,80008898 <__mem_free+0xac>
    80008858:	00813403          	ld	s0,8(sp)
    8000885c:	00d7b023          	sd	a3,0(a5)
    80008860:	00f5b023          	sd	a5,0(a1)
    80008864:	00000513          	li	a0,0
    80008868:	01010113          	addi	sp,sp,16
    8000886c:	00008067          	ret
    80008870:	00872603          	lw	a2,8(a4)
    80008874:	00073703          	ld	a4,0(a4)
    80008878:	0106083b          	addw	a6,a2,a6
    8000887c:	ff052c23          	sw	a6,-8(a0)
    80008880:	fee53823          	sd	a4,-16(a0)
    80008884:	0087a503          	lw	a0,8(a5)
    80008888:	02051613          	slli	a2,a0,0x20
    8000888c:	01c65613          	srli	a2,a2,0x1c
    80008890:	00c78633          	add	a2,a5,a2
    80008894:	fcc692e3          	bne	a3,a2,80008858 <__mem_free+0x6c>
    80008898:	00813403          	ld	s0,8(sp)
    8000889c:	0105053b          	addw	a0,a0,a6
    800088a0:	00a7a423          	sw	a0,8(a5)
    800088a4:	00e7b023          	sd	a4,0(a5)
    800088a8:	00f5b023          	sd	a5,0(a1)
    800088ac:	00000513          	li	a0,0
    800088b0:	01010113          	addi	sp,sp,16
    800088b4:	00008067          	ret

00000000800088b8 <__mem_alloc>:
    800088b8:	fc010113          	addi	sp,sp,-64
    800088bc:	02813823          	sd	s0,48(sp)
    800088c0:	02913423          	sd	s1,40(sp)
    800088c4:	03213023          	sd	s2,32(sp)
    800088c8:	01513423          	sd	s5,8(sp)
    800088cc:	02113c23          	sd	ra,56(sp)
    800088d0:	01313c23          	sd	s3,24(sp)
    800088d4:	01413823          	sd	s4,16(sp)
    800088d8:	01613023          	sd	s6,0(sp)
    800088dc:	04010413          	addi	s0,sp,64
    800088e0:	00002a97          	auipc	s5,0x2
    800088e4:	d78a8a93          	addi	s5,s5,-648 # 8000a658 <freep>
    800088e8:	00f50913          	addi	s2,a0,15
    800088ec:	000ab683          	ld	a3,0(s5)
    800088f0:	00495913          	srli	s2,s2,0x4
    800088f4:	0019049b          	addiw	s1,s2,1
    800088f8:	00048913          	mv	s2,s1
    800088fc:	0c068c63          	beqz	a3,800089d4 <__mem_alloc+0x11c>
    80008900:	0006b503          	ld	a0,0(a3)
    80008904:	00852703          	lw	a4,8(a0)
    80008908:	10977063          	bgeu	a4,s1,80008a08 <__mem_alloc+0x150>
    8000890c:	000017b7          	lui	a5,0x1
    80008910:	0009099b          	sext.w	s3,s2
    80008914:	0af4e863          	bltu	s1,a5,800089c4 <__mem_alloc+0x10c>
    80008918:	02099a13          	slli	s4,s3,0x20
    8000891c:	01ca5a13          	srli	s4,s4,0x1c
    80008920:	fff00b13          	li	s6,-1
    80008924:	0100006f          	j	80008934 <__mem_alloc+0x7c>
    80008928:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000892c:	00852703          	lw	a4,8(a0)
    80008930:	04977463          	bgeu	a4,s1,80008978 <__mem_alloc+0xc0>
    80008934:	00050793          	mv	a5,a0
    80008938:	fea698e3          	bne	a3,a0,80008928 <__mem_alloc+0x70>
    8000893c:	000a0513          	mv	a0,s4
    80008940:	00000097          	auipc	ra,0x0
    80008944:	1f0080e7          	jalr	496(ra) # 80008b30 <kvmincrease>
    80008948:	00050793          	mv	a5,a0
    8000894c:	01050513          	addi	a0,a0,16
    80008950:	07678e63          	beq	a5,s6,800089cc <__mem_alloc+0x114>
    80008954:	0137a423          	sw	s3,8(a5)
    80008958:	00000097          	auipc	ra,0x0
    8000895c:	e94080e7          	jalr	-364(ra) # 800087ec <__mem_free>
    80008960:	000ab783          	ld	a5,0(s5)
    80008964:	06078463          	beqz	a5,800089cc <__mem_alloc+0x114>
    80008968:	0007b503          	ld	a0,0(a5)
    8000896c:	00078693          	mv	a3,a5
    80008970:	00852703          	lw	a4,8(a0)
    80008974:	fc9760e3          	bltu	a4,s1,80008934 <__mem_alloc+0x7c>
    80008978:	08e48263          	beq	s1,a4,800089fc <__mem_alloc+0x144>
    8000897c:	4127073b          	subw	a4,a4,s2
    80008980:	02071693          	slli	a3,a4,0x20
    80008984:	01c6d693          	srli	a3,a3,0x1c
    80008988:	00e52423          	sw	a4,8(a0)
    8000898c:	00d50533          	add	a0,a0,a3
    80008990:	01252423          	sw	s2,8(a0)
    80008994:	00fab023          	sd	a5,0(s5)
    80008998:	01050513          	addi	a0,a0,16
    8000899c:	03813083          	ld	ra,56(sp)
    800089a0:	03013403          	ld	s0,48(sp)
    800089a4:	02813483          	ld	s1,40(sp)
    800089a8:	02013903          	ld	s2,32(sp)
    800089ac:	01813983          	ld	s3,24(sp)
    800089b0:	01013a03          	ld	s4,16(sp)
    800089b4:	00813a83          	ld	s5,8(sp)
    800089b8:	00013b03          	ld	s6,0(sp)
    800089bc:	04010113          	addi	sp,sp,64
    800089c0:	00008067          	ret
    800089c4:	000019b7          	lui	s3,0x1
    800089c8:	f51ff06f          	j	80008918 <__mem_alloc+0x60>
    800089cc:	00000513          	li	a0,0
    800089d0:	fcdff06f          	j	8000899c <__mem_alloc+0xe4>
    800089d4:	00003797          	auipc	a5,0x3
    800089d8:	f2c78793          	addi	a5,a5,-212 # 8000b900 <base>
    800089dc:	00078513          	mv	a0,a5
    800089e0:	00fab023          	sd	a5,0(s5)
    800089e4:	00f7b023          	sd	a5,0(a5)
    800089e8:	00000713          	li	a4,0
    800089ec:	00003797          	auipc	a5,0x3
    800089f0:	f007ae23          	sw	zero,-228(a5) # 8000b908 <base+0x8>
    800089f4:	00050693          	mv	a3,a0
    800089f8:	f11ff06f          	j	80008908 <__mem_alloc+0x50>
    800089fc:	00053703          	ld	a4,0(a0)
    80008a00:	00e7b023          	sd	a4,0(a5)
    80008a04:	f91ff06f          	j	80008994 <__mem_alloc+0xdc>
    80008a08:	00068793          	mv	a5,a3
    80008a0c:	f6dff06f          	j	80008978 <__mem_alloc+0xc0>

0000000080008a10 <__putc>:
    80008a10:	fe010113          	addi	sp,sp,-32
    80008a14:	00813823          	sd	s0,16(sp)
    80008a18:	00113c23          	sd	ra,24(sp)
    80008a1c:	02010413          	addi	s0,sp,32
    80008a20:	00050793          	mv	a5,a0
    80008a24:	fef40593          	addi	a1,s0,-17
    80008a28:	00100613          	li	a2,1
    80008a2c:	00000513          	li	a0,0
    80008a30:	fef407a3          	sb	a5,-17(s0)
    80008a34:	fffff097          	auipc	ra,0xfffff
    80008a38:	918080e7          	jalr	-1768(ra) # 8000734c <console_write>
    80008a3c:	01813083          	ld	ra,24(sp)
    80008a40:	01013403          	ld	s0,16(sp)
    80008a44:	02010113          	addi	sp,sp,32
    80008a48:	00008067          	ret

0000000080008a4c <__getc>:
    80008a4c:	fe010113          	addi	sp,sp,-32
    80008a50:	00813823          	sd	s0,16(sp)
    80008a54:	00113c23          	sd	ra,24(sp)
    80008a58:	02010413          	addi	s0,sp,32
    80008a5c:	fe840593          	addi	a1,s0,-24
    80008a60:	00100613          	li	a2,1
    80008a64:	00000513          	li	a0,0
    80008a68:	fffff097          	auipc	ra,0xfffff
    80008a6c:	8c4080e7          	jalr	-1852(ra) # 8000732c <console_read>
    80008a70:	fe844503          	lbu	a0,-24(s0)
    80008a74:	01813083          	ld	ra,24(sp)
    80008a78:	01013403          	ld	s0,16(sp)
    80008a7c:	02010113          	addi	sp,sp,32
    80008a80:	00008067          	ret

0000000080008a84 <console_handler>:
    80008a84:	fe010113          	addi	sp,sp,-32
    80008a88:	00813823          	sd	s0,16(sp)
    80008a8c:	00113c23          	sd	ra,24(sp)
    80008a90:	00913423          	sd	s1,8(sp)
    80008a94:	02010413          	addi	s0,sp,32
    80008a98:	14202773          	csrr	a4,scause
    80008a9c:	100027f3          	csrr	a5,sstatus
    80008aa0:	0027f793          	andi	a5,a5,2
    80008aa4:	06079e63          	bnez	a5,80008b20 <console_handler+0x9c>
    80008aa8:	00074c63          	bltz	a4,80008ac0 <console_handler+0x3c>
    80008aac:	01813083          	ld	ra,24(sp)
    80008ab0:	01013403          	ld	s0,16(sp)
    80008ab4:	00813483          	ld	s1,8(sp)
    80008ab8:	02010113          	addi	sp,sp,32
    80008abc:	00008067          	ret
    80008ac0:	0ff77713          	andi	a4,a4,255
    80008ac4:	00900793          	li	a5,9
    80008ac8:	fef712e3          	bne	a4,a5,80008aac <console_handler+0x28>
    80008acc:	ffffe097          	auipc	ra,0xffffe
    80008ad0:	4b8080e7          	jalr	1208(ra) # 80006f84 <plic_claim>
    80008ad4:	00a00793          	li	a5,10
    80008ad8:	00050493          	mv	s1,a0
    80008adc:	02f50c63          	beq	a0,a5,80008b14 <console_handler+0x90>
    80008ae0:	fc0506e3          	beqz	a0,80008aac <console_handler+0x28>
    80008ae4:	00050593          	mv	a1,a0
    80008ae8:	00001517          	auipc	a0,0x1
    80008aec:	bf050513          	addi	a0,a0,-1040 # 800096d8 <_ZZ12printIntegermE6digits+0xe0>
    80008af0:	fffff097          	auipc	ra,0xfffff
    80008af4:	8d8080e7          	jalr	-1832(ra) # 800073c8 <__printf>
    80008af8:	01013403          	ld	s0,16(sp)
    80008afc:	01813083          	ld	ra,24(sp)
    80008b00:	00048513          	mv	a0,s1
    80008b04:	00813483          	ld	s1,8(sp)
    80008b08:	02010113          	addi	sp,sp,32
    80008b0c:	ffffe317          	auipc	t1,0xffffe
    80008b10:	4b030067          	jr	1200(t1) # 80006fbc <plic_complete>
    80008b14:	fffff097          	auipc	ra,0xfffff
    80008b18:	1bc080e7          	jalr	444(ra) # 80007cd0 <uartintr>
    80008b1c:	fddff06f          	j	80008af8 <console_handler+0x74>
    80008b20:	00001517          	auipc	a0,0x1
    80008b24:	cb850513          	addi	a0,a0,-840 # 800097d8 <digits+0x78>
    80008b28:	fffff097          	auipc	ra,0xfffff
    80008b2c:	844080e7          	jalr	-1980(ra) # 8000736c <panic>

0000000080008b30 <kvmincrease>:
    80008b30:	fe010113          	addi	sp,sp,-32
    80008b34:	01213023          	sd	s2,0(sp)
    80008b38:	00001937          	lui	s2,0x1
    80008b3c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80008b40:	00813823          	sd	s0,16(sp)
    80008b44:	00113c23          	sd	ra,24(sp)
    80008b48:	00913423          	sd	s1,8(sp)
    80008b4c:	02010413          	addi	s0,sp,32
    80008b50:	01250933          	add	s2,a0,s2
    80008b54:	00c95913          	srli	s2,s2,0xc
    80008b58:	02090863          	beqz	s2,80008b88 <kvmincrease+0x58>
    80008b5c:	00000493          	li	s1,0
    80008b60:	00148493          	addi	s1,s1,1
    80008b64:	fffff097          	auipc	ra,0xfffff
    80008b68:	4bc080e7          	jalr	1212(ra) # 80008020 <kalloc>
    80008b6c:	fe991ae3          	bne	s2,s1,80008b60 <kvmincrease+0x30>
    80008b70:	01813083          	ld	ra,24(sp)
    80008b74:	01013403          	ld	s0,16(sp)
    80008b78:	00813483          	ld	s1,8(sp)
    80008b7c:	00013903          	ld	s2,0(sp)
    80008b80:	02010113          	addi	sp,sp,32
    80008b84:	00008067          	ret
    80008b88:	01813083          	ld	ra,24(sp)
    80008b8c:	01013403          	ld	s0,16(sp)
    80008b90:	00813483          	ld	s1,8(sp)
    80008b94:	00013903          	ld	s2,0(sp)
    80008b98:	00000513          	li	a0,0
    80008b9c:	02010113          	addi	sp,sp,32
    80008ba0:	00008067          	ret
	...
