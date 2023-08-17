
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	5e813103          	ld	sp,1512(sp) # 800095e8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	464050ef          	jal	ra,80005480 <start>

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
    80001084:	014040ef          	jal	ra,80005098 <_ZN5Riscv20handleSupervisorTrapEv>

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
    8000114c:	00008797          	auipc	a5,0x8
    80001150:	4a47b783          	ld	a5,1188(a5) # 800095f0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001154:	00a7b023          	sd	a0,0(a5)

    threads[1] = TCB::createThread(workerBodyA);
    80001158:	00008517          	auipc	a0,0x8
    8000115c:	48853503          	ld	a0,1160(a0) # 800095e0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001160:	00001097          	auipc	ra,0x1
    80001164:	8c8080e7          	jalr	-1848(ra) # 80001a28 <_ZN3TCB12createThreadEPFvvE>
    80001168:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    8000116c:	00007517          	auipc	a0,0x7
    80001170:	eb450513          	addi	a0,a0,-332 # 80008020 <CONSOLE_STATUS+0x10>
    80001174:	00004097          	auipc	ra,0x4
    80001178:	194080e7          	jalr	404(ra) # 80005308 <_Z11printStringPKc>
    threads[2] = TCB::createThread(workerBodyB);
    8000117c:	00008517          	auipc	a0,0x8
    80001180:	44c53503          	ld	a0,1100(a0) # 800095c8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001184:	00001097          	auipc	ra,0x1
    80001188:	8a4080e7          	jalr	-1884(ra) # 80001a28 <_ZN3TCB12createThreadEPFvvE>
    8000118c:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    80001190:	00007517          	auipc	a0,0x7
    80001194:	ea850513          	addi	a0,a0,-344 # 80008038 <CONSOLE_STATUS+0x28>
    80001198:	00004097          	auipc	ra,0x4
    8000119c:	170080e7          	jalr	368(ra) # 80005308 <_Z11printStringPKc>
    threads[3] = TCB::createThread(workerBodyC);
    800011a0:	00008517          	auipc	a0,0x8
    800011a4:	46053503          	ld	a0,1120(a0) # 80009600 <_GLOBAL_OFFSET_TABLE_+0x58>
    800011a8:	00001097          	auipc	ra,0x1
    800011ac:	880080e7          	jalr	-1920(ra) # 80001a28 <_ZN3TCB12createThreadEPFvvE>
    800011b0:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    800011b4:	00007517          	auipc	a0,0x7
    800011b8:	e9c50513          	addi	a0,a0,-356 # 80008050 <CONSOLE_STATUS+0x40>
    800011bc:	00004097          	auipc	ra,0x4
    800011c0:	14c080e7          	jalr	332(ra) # 80005308 <_Z11printStringPKc>
    threads[4] = TCB::createThread(workerBodyD);
    800011c4:	00008517          	auipc	a0,0x8
    800011c8:	44453503          	ld	a0,1092(a0) # 80009608 <_GLOBAL_OFFSET_TABLE_+0x60>
    800011cc:	00001097          	auipc	ra,0x1
    800011d0:	85c080e7          	jalr	-1956(ra) # 80001a28 <_ZN3TCB12createThreadEPFvvE>
    800011d4:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    800011d8:	00007517          	auipc	a0,0x7
    800011dc:	e9050513          	addi	a0,a0,-368 # 80008068 <CONSOLE_STATUS+0x58>
    800011e0:	00004097          	auipc	ra,0x4
    800011e4:	128080e7          	jalr	296(ra) # 80005308 <_Z11printStringPKc>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800011e8:	00008797          	auipc	a5,0x8
    800011ec:	3d87b783          	ld	a5,984(a5) # 800095c0 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80001274:	00007517          	auipc	a0,0x7
    80001278:	e0c50513          	addi	a0,a0,-500 # 80008080 <CONSOLE_STATUS+0x70>
    8000127c:	00004097          	auipc	ra,0x4
    80001280:	08c080e7          	jalr	140(ra) # 80005308 <_Z11printStringPKc>

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
    80001364:	00007517          	auipc	a0,0x7
    80001368:	d2c50513          	addi	a0,a0,-724 # 80008090 <CONSOLE_STATUS+0x80>
    8000136c:	00004097          	auipc	ra,0x4
    80001370:	f9c080e7          	jalr	-100(ra) # 80005308 <_Z11printStringPKc>
        printInteger(i);
    80001374:	00048513          	mv	a0,s1
    80001378:	00004097          	auipc	ra,0x4
    8000137c:	000080e7          	jalr	ra # 80005378 <_Z12printIntegerm>
        printString("\n");
    80001380:	00007517          	auipc	a0,0x7
    80001384:	d9050513          	addi	a0,a0,-624 # 80008110 <CONSOLE_STATUS+0x100>
    80001388:	00004097          	auipc	ra,0x4
    8000138c:	f80080e7          	jalr	-128(ra) # 80005308 <_Z11printStringPKc>
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
    800013fc:	00007517          	auipc	a0,0x7
    80001400:	c9c50513          	addi	a0,a0,-868 # 80008098 <CONSOLE_STATUS+0x88>
    80001404:	00004097          	auipc	ra,0x4
    80001408:	f04080e7          	jalr	-252(ra) # 80005308 <_Z11printStringPKc>
        printInteger(i);
    8000140c:	00048513          	mv	a0,s1
    80001410:	00004097          	auipc	ra,0x4
    80001414:	f68080e7          	jalr	-152(ra) # 80005378 <_Z12printIntegerm>
        printString("\n");
    80001418:	00007517          	auipc	a0,0x7
    8000141c:	cf850513          	addi	a0,a0,-776 # 80008110 <CONSOLE_STATUS+0x100>
    80001420:	00004097          	auipc	ra,0x4
    80001424:	ee8080e7          	jalr	-280(ra) # 80005308 <_Z11printStringPKc>
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
    80001464:	00007517          	auipc	a0,0x7
    80001468:	c3c50513          	addi	a0,a0,-964 # 800080a0 <CONSOLE_STATUS+0x90>
    8000146c:	00004097          	auipc	ra,0x4
    80001470:	e9c080e7          	jalr	-356(ra) # 80005308 <_Z11printStringPKc>
        printInteger(i);
    80001474:	00048513          	mv	a0,s1
    80001478:	00004097          	auipc	ra,0x4
    8000147c:	f00080e7          	jalr	-256(ra) # 80005378 <_Z12printIntegerm>
        printString("\n");
    80001480:	00007517          	auipc	a0,0x7
    80001484:	c9050513          	addi	a0,a0,-880 # 80008110 <CONSOLE_STATUS+0x100>
    80001488:	00004097          	auipc	ra,0x4
    8000148c:	e80080e7          	jalr	-384(ra) # 80005308 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001490:	0014849b          	addiw	s1,s1,1
    80001494:	0ff4f493          	andi	s1,s1,255
    80001498:	00200793          	li	a5,2
    8000149c:	fc97f4e3          	bgeu	a5,s1,80001464 <_Z11workerBodyCv+0x20>
    }

    printString("C: yield\n");
    800014a0:	00007517          	auipc	a0,0x7
    800014a4:	c0850513          	addi	a0,a0,-1016 # 800080a8 <CONSOLE_STATUS+0x98>
    800014a8:	00004097          	auipc	ra,0x4
    800014ac:	e60080e7          	jalr	-416(ra) # 80005308 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800014b0:	00700313          	li	t1,7
    TCB::yield();
    800014b4:	00000097          	auipc	ra,0x0
    800014b8:	63c080e7          	jalr	1596(ra) # 80001af0 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800014bc:	00030913          	mv	s2,t1

    printString("C: t1=");
    800014c0:	00007517          	auipc	a0,0x7
    800014c4:	bf850513          	addi	a0,a0,-1032 # 800080b8 <CONSOLE_STATUS+0xa8>
    800014c8:	00004097          	auipc	ra,0x4
    800014cc:	e40080e7          	jalr	-448(ra) # 80005308 <_Z11printStringPKc>
    printInteger(t1);
    800014d0:	00090513          	mv	a0,s2
    800014d4:	00004097          	auipc	ra,0x4
    800014d8:	ea4080e7          	jalr	-348(ra) # 80005378 <_Z12printIntegerm>
    printString("\n");
    800014dc:	00007517          	auipc	a0,0x7
    800014e0:	c3450513          	addi	a0,a0,-972 # 80008110 <CONSOLE_STATUS+0x100>
    800014e4:	00004097          	auipc	ra,0x4
    800014e8:	e24080e7          	jalr	-476(ra) # 80005308 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800014ec:	00c00513          	li	a0,12
    800014f0:	00000097          	auipc	ra,0x0
    800014f4:	db0080e7          	jalr	-592(ra) # 800012a0 <_ZL9fibonaccim>
    800014f8:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800014fc:	00007517          	auipc	a0,0x7
    80001500:	bc450513          	addi	a0,a0,-1084 # 800080c0 <CONSOLE_STATUS+0xb0>
    80001504:	00004097          	auipc	ra,0x4
    80001508:	e04080e7          	jalr	-508(ra) # 80005308 <_Z11printStringPKc>
    printInteger(result);
    8000150c:	00090513          	mv	a0,s2
    80001510:	00004097          	auipc	ra,0x4
    80001514:	e68080e7          	jalr	-408(ra) # 80005378 <_Z12printIntegerm>
    printString("\n");
    80001518:	00007517          	auipc	a0,0x7
    8000151c:	bf850513          	addi	a0,a0,-1032 # 80008110 <CONSOLE_STATUS+0x100>
    80001520:	00004097          	auipc	ra,0x4
    80001524:	de8080e7          	jalr	-536(ra) # 80005308 <_Z11printStringPKc>
    80001528:	0380006f          	j	80001560 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    8000152c:	00007517          	auipc	a0,0x7
    80001530:	b7450513          	addi	a0,a0,-1164 # 800080a0 <CONSOLE_STATUS+0x90>
    80001534:	00004097          	auipc	ra,0x4
    80001538:	dd4080e7          	jalr	-556(ra) # 80005308 <_Z11printStringPKc>
        printInteger(i);
    8000153c:	00048513          	mv	a0,s1
    80001540:	00004097          	auipc	ra,0x4
    80001544:	e38080e7          	jalr	-456(ra) # 80005378 <_Z12printIntegerm>
        printString("\n");
    80001548:	00007517          	auipc	a0,0x7
    8000154c:	bc850513          	addi	a0,a0,-1080 # 80008110 <CONSOLE_STATUS+0x100>
    80001550:	00004097          	auipc	ra,0x4
    80001554:	db8080e7          	jalr	-584(ra) # 80005308 <_Z11printStringPKc>
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
    800015a0:	00007517          	auipc	a0,0x7
    800015a4:	b3050513          	addi	a0,a0,-1232 # 800080d0 <CONSOLE_STATUS+0xc0>
    800015a8:	00004097          	auipc	ra,0x4
    800015ac:	d60080e7          	jalr	-672(ra) # 80005308 <_Z11printStringPKc>
        printInteger(i);
    800015b0:	00048513          	mv	a0,s1
    800015b4:	00004097          	auipc	ra,0x4
    800015b8:	dc4080e7          	jalr	-572(ra) # 80005378 <_Z12printIntegerm>
        printString("\n");
    800015bc:	00007517          	auipc	a0,0x7
    800015c0:	b5450513          	addi	a0,a0,-1196 # 80008110 <CONSOLE_STATUS+0x100>
    800015c4:	00004097          	auipc	ra,0x4
    800015c8:	d44080e7          	jalr	-700(ra) # 80005308 <_Z11printStringPKc>
    for (; i < 13; i++)
    800015cc:	0014849b          	addiw	s1,s1,1
    800015d0:	0ff4f493          	andi	s1,s1,255
    800015d4:	00c00793          	li	a5,12
    800015d8:	fc97f4e3          	bgeu	a5,s1,800015a0 <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    800015dc:	00007517          	auipc	a0,0x7
    800015e0:	afc50513          	addi	a0,a0,-1284 # 800080d8 <CONSOLE_STATUS+0xc8>
    800015e4:	00004097          	auipc	ra,0x4
    800015e8:	d24080e7          	jalr	-732(ra) # 80005308 <_Z11printStringPKc>
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
    80001608:	00007517          	auipc	a0,0x7
    8000160c:	ae050513          	addi	a0,a0,-1312 # 800080e8 <CONSOLE_STATUS+0xd8>
    80001610:	00004097          	auipc	ra,0x4
    80001614:	cf8080e7          	jalr	-776(ra) # 80005308 <_Z11printStringPKc>
    printInteger(result);
    80001618:	00090513          	mv	a0,s2
    8000161c:	00004097          	auipc	ra,0x4
    80001620:	d5c080e7          	jalr	-676(ra) # 80005378 <_Z12printIntegerm>
    printString("\n");
    80001624:	00007517          	auipc	a0,0x7
    80001628:	aec50513          	addi	a0,a0,-1300 # 80008110 <CONSOLE_STATUS+0x100>
    8000162c:	00004097          	auipc	ra,0x4
    80001630:	cdc080e7          	jalr	-804(ra) # 80005308 <_Z11printStringPKc>
    80001634:	0380006f          	j	8000166c <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    80001638:	00007517          	auipc	a0,0x7
    8000163c:	a9850513          	addi	a0,a0,-1384 # 800080d0 <CONSOLE_STATUS+0xc0>
    80001640:	00004097          	auipc	ra,0x4
    80001644:	cc8080e7          	jalr	-824(ra) # 80005308 <_Z11printStringPKc>
        printInteger(i);
    80001648:	00048513          	mv	a0,s1
    8000164c:	00004097          	auipc	ra,0x4
    80001650:	d2c080e7          	jalr	-724(ra) # 80005378 <_Z12printIntegerm>
        printString("\n");
    80001654:	00007517          	auipc	a0,0x7
    80001658:	abc50513          	addi	a0,a0,-1348 # 80008110 <CONSOLE_STATUS+0x100>
    8000165c:	00004097          	auipc	ra,0x4
    80001660:	cac080e7          	jalr	-852(ra) # 80005308 <_Z11printStringPKc>
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
    800017bc:	00003097          	auipc	ra,0x3
    800017c0:	5b8080e7          	jalr	1464(ra) # 80004d74 <_ZN16KObjectAllocator10freeObjectEPv>
    800017c4:	06c0006f          	j	80001830 <main+0x1a4>
        if (i == 14) newObj->freeObject(objArr[9]);
    800017c8:	cf843583          	ld	a1,-776(s0)
    800017cc:	00098513          	mv	a0,s3
    800017d0:	00003097          	auipc	ra,0x3
    800017d4:	5a4080e7          	jalr	1444(ra) # 80004d74 <_ZN16KObjectAllocator10freeObjectEPv>
    800017d8:	0600006f          	j	80001838 <main+0x1ac>
        if (objNumber != newObj->getNumberOfObjects() || i % 100 == 0) {
            objNumber = newObj->getNumberOfObjects();
            //printString("\nobjectNumber: "); printInteger(newObj->getNumberOfObjects()); printString("\n");
            //printString("numberOfAllocations: "); printInteger(newObj->getNumberOfAllocations()); printString("\n");
            //printString("\n\n");
            newObj->printInternalMemory();
    800017dc:	00098513          	mv	a0,s3
    800017e0:	00003097          	auipc	ra,0x3
    800017e4:	1e4080e7          	jalr	484(ra) # 800049c4 <_ZN16KObjectAllocator19printInternalMemoryEv>
            printString("\n");
    800017e8:	00007517          	auipc	a0,0x7
    800017ec:	92850513          	addi	a0,a0,-1752 # 80008110 <CONSOLE_STATUS+0x100>
    800017f0:	00004097          	auipc	ra,0x4
    800017f4:	b18080e7          	jalr	-1256(ra) # 80005308 <_Z11printStringPKc>
            objNumber = newObj->getNumberOfObjects();
    800017f8:	00090a13          	mv	s4,s2
    for (int i = 0; i < 100; ++i) {
    800017fc:	0014849b          	addiw	s1,s1,1
    80001800:	06300793          	li	a5,99
    80001804:	0497ca63          	blt	a5,s1,80001858 <main+0x1cc>
        objArr[i] = newObj->allocateNewObject();
    80001808:	00098513          	mv	a0,s3
    8000180c:	00003097          	auipc	ra,0x3
    80001810:	7e8080e7          	jalr	2024(ra) # 80004ff4 <_ZN16KObjectAllocator17allocateNewObjectEv>
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
    80001878:	00003097          	auipc	ra,0x3
    8000187c:	4fc080e7          	jalr	1276(ra) # 80004d74 <_ZN16KObjectAllocator10freeObjectEPv>
    80001880:	0014849b          	addiw	s1,s1,1
    80001884:	fd9ff06f          	j	8000185c <main+0x1d0>

    delete newObj;
    80001888:	00098863          	beqz	s3,80001898 <main+0x20c>
    8000188c:	00098513          	mv	a0,s3
    80001890:	00000097          	auipc	ra,0x0
    80001894:	0f4080e7          	jalr	244(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>

    printString("\nKObjectAllocator tests:\n");
    80001898:	00007517          	auipc	a0,0x7
    8000189c:	86050513          	addi	a0,a0,-1952 # 800080f8 <CONSOLE_STATUS+0xe8>
    800018a0:	00004097          	auipc	ra,0x4
    800018a4:	a68080e7          	jalr	-1432(ra) # 80005308 <_Z11printStringPKc>

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
    800018c0:	00a00793          	li	a5,10
    800018c4:	00f53023          	sd	a5,0(a0)
    800018c8:	00007797          	auipc	a5,0x7
    800018cc:	86078793          	addi	a5,a5,-1952 # 80008128 <CONSOLE_STATUS+0x118>
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
    80001908:	00003097          	auipc	ra,0x3
    8000190c:	fb0080e7          	jalr	-80(ra) # 800048b8 <_ZN20KObjectAllocatorTest8runTestsEv>
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
    80001928:	00006517          	auipc	a0,0x6
    8000192c:	7f050513          	addi	a0,a0,2032 # 80008118 <CONSOLE_STATUS+0x108>
    80001930:	00004097          	auipc	ra,0x4
    80001934:	9d8080e7          	jalr	-1576(ra) # 80005308 <_Z11printStringPKc>
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
    8000197c:	00009097          	auipc	ra,0x9
    80001980:	dec080e7          	jalr	-532(ra) # 8000a768 <_Unwind_Resume>

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
    80001aa4:	00003097          	auipc	ra,0x3
    80001aa8:	7c4080e7          	jalr	1988(ra) # 80005268 <_ZN9Scheduler3putEP3TCB>
    80001aac:	0280006f          	j	80001ad4 <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001ab0:	00000793          	li	a5,0
    80001ab4:	fd9ff06f          	j	80001a8c <_ZN3TCB12createThreadEPFvvE+0x64>
    80001ab8:	00050913          	mv	s2,a0
    80001abc:	00048513          	mv	a0,s1
    80001ac0:	00001097          	auipc	ra,0x1
    80001ac4:	73c080e7          	jalr	1852(ra) # 800031fc <_ZdlPv>
    80001ac8:	00090513          	mv	a0,s2
    80001acc:	00009097          	auipc	ra,0x9
    80001ad0:	c9c080e7          	jalr	-868(ra) # 8000a768 <_Unwind_Resume>
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
    80001b20:	00003097          	auipc	ra,0x3
    80001b24:	558080e7          	jalr	1368(ra) # 80005078 <_ZN5Riscv10popSppSpieEv>
    running->body();
    80001b28:	00008497          	auipc	s1,0x8
    80001b2c:	b3848493          	addi	s1,s1,-1224 # 80009660 <_ZN3TCB7runningE>
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
    80001b78:	00008497          	auipc	s1,0x8
    80001b7c:	ae84b483          	ld	s1,-1304(s1) # 80009660 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001b80:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001b84:	02078c63          	beqz	a5,80001bbc <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001b88:	00003097          	auipc	ra,0x3
    80001b8c:	678080e7          	jalr	1656(ra) # 80005200 <_ZN9Scheduler3getEv>
    80001b90:	00008797          	auipc	a5,0x8
    80001b94:	aca7b823          	sd	a0,-1328(a5) # 80009660 <_ZN3TCB7runningE>
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
    80001bc0:	00003097          	auipc	ra,0x3
    80001bc4:	6a8080e7          	jalr	1704(ra) # 80005268 <_ZN9Scheduler3putEP3TCB>
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
    80001c18:	00008797          	auipc	a5,0x8
    80001c1c:	9987b783          	ld	a5,-1640(a5) # 800095b0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c20:	0007b903          	ld	s2,0(a5)
    managedMemorySpaceEnd = (uint8*) HEAP_END_ADDR;
    80001c24:	00008797          	auipc	a5,0x8
    80001c28:	9d47b783          	ld	a5,-1580(a5) # 800095f8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001c2c:	0007b483          	ld	s1,0(a5)
    80001c30:	00008a17          	auipc	s4,0x8
    80001c34:	a40a0a13          	addi	s4,s4,-1472 # 80009670 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
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
    80001cc4:	00008797          	auipc	a5,0x8
    80001cc8:	9c47b783          	ld	a5,-1596(a5) # 80009688 <_ZN15MemoryAllocator12onlyInstanceE>
    80001ccc:	00078863          	beqz	a5,80001cdc <_ZN15MemoryAllocator8instanceEv+0x18>
}
    80001cd0:	00008517          	auipc	a0,0x8
    80001cd4:	9b853503          	ld	a0,-1608(a0) # 80009688 <_ZN15MemoryAllocator12onlyInstanceE>
    80001cd8:	00008067          	ret
MemoryAllocator* MemoryAllocator::instance() {
    80001cdc:	ff010113          	addi	sp,sp,-16
    80001ce0:	00113423          	sd	ra,8(sp)
    80001ce4:	00813023          	sd	s0,0(sp)
    80001ce8:	01010413          	addi	s0,sp,16
        onlyInstance = createInstance();
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	f0c080e7          	jalr	-244(ra) # 80001bf8 <_ZN15MemoryAllocator14createInstanceEv>
    80001cf4:	00008797          	auipc	a5,0x8
    80001cf8:	98a7ba23          	sd	a0,-1644(a5) # 80009688 <_ZN15MemoryAllocator12onlyInstanceE>
}
    80001cfc:	00008517          	auipc	a0,0x8
    80001d00:	98c53503          	ld	a0,-1652(a0) # 80009688 <_ZN15MemoryAllocator12onlyInstanceE>
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
    80001d50:	00008617          	auipc	a2,0x8
    80001d54:	92863603          	ld	a2,-1752(a2) # 80009678 <_ZN15MemoryAllocator21minMemoryFragmentSizeE>
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
    80001f54:	00006517          	auipc	a0,0x6
    80001f58:	20c50513          	addi	a0,a0,524 # 80008160 <CONSOLE_STATUS+0x150>
    80001f5c:	00003097          	auipc	ra,0x3
    80001f60:	3ac080e7          	jalr	940(ra) # 80005308 <_Z11printStringPKc>
    printString("MemoryAllocator address: "); printInteger((uint64)this); printString("\n");
    80001f64:	00006517          	auipc	a0,0x6
    80001f68:	22450513          	addi	a0,a0,548 # 80008188 <CONSOLE_STATUS+0x178>
    80001f6c:	00003097          	auipc	ra,0x3
    80001f70:	39c080e7          	jalr	924(ra) # 80005308 <_Z11printStringPKc>
    80001f74:	00048513          	mv	a0,s1
    80001f78:	00003097          	auipc	ra,0x3
    80001f7c:	400080e7          	jalr	1024(ra) # 80005378 <_Z12printIntegerm>
    80001f80:	00006517          	auipc	a0,0x6
    80001f84:	19050513          	addi	a0,a0,400 # 80008110 <CONSOLE_STATUS+0x100>
    80001f88:	00003097          	auipc	ra,0x3
    80001f8c:	380080e7          	jalr	896(ra) # 80005308 <_Z11printStringPKc>

    // size_t noBlocksForStoringMemoryAllocator = sizeof(MemoryAllocator) / MEM_BLOCK_SIZE + 1;
    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
    80001f90:	02000513          	li	a0,32
    80001f94:	00000097          	auipc	ra,0x0
    80001f98:	c38080e7          	jalr	-968(ra) # 80001bcc <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001f9c:	00050913          	mv	s2,a0
    printString("noBlocksForStoringMemoryAllocator: ");
    80001fa0:	00006517          	auipc	a0,0x6
    80001fa4:	20850513          	addi	a0,a0,520 # 800081a8 <CONSOLE_STATUS+0x198>
    80001fa8:	00003097          	auipc	ra,0x3
    80001fac:	360080e7          	jalr	864(ra) # 80005308 <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator); printString("\n");
    80001fb0:	00090513          	mv	a0,s2
    80001fb4:	00003097          	auipc	ra,0x3
    80001fb8:	3c4080e7          	jalr	964(ra) # 80005378 <_Z12printIntegerm>
    80001fbc:	00006517          	auipc	a0,0x6
    80001fc0:	15450513          	addi	a0,a0,340 # 80008110 <CONSOLE_STATUS+0x100>
    80001fc4:	00003097          	auipc	ra,0x3
    80001fc8:	344080e7          	jalr	836(ra) # 80005308 <_Z11printStringPKc>
    printString("noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE: ");
    80001fcc:	00006517          	auipc	a0,0x6
    80001fd0:	20450513          	addi	a0,a0,516 # 800081d0 <CONSOLE_STATUS+0x1c0>
    80001fd4:	00003097          	auipc	ra,0x3
    80001fd8:	334080e7          	jalr	820(ra) # 80005308 <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE); printString("\n\n");
    80001fdc:	00691513          	slli	a0,s2,0x6
    80001fe0:	00003097          	auipc	ra,0x3
    80001fe4:	398080e7          	jalr	920(ra) # 80005378 <_Z12printIntegerm>
    80001fe8:	00006517          	auipc	a0,0x6
    80001fec:	22050513          	addi	a0,a0,544 # 80008208 <CONSOLE_STATUS+0x1f8>
    80001ff0:	00003097          	auipc	ra,0x3
    80001ff4:	318080e7          	jalr	792(ra) # 80005308 <_Z11printStringPKc>

    printString("Managed memory space start: ");
    80001ff8:	00006517          	auipc	a0,0x6
    80001ffc:	21850513          	addi	a0,a0,536 # 80008210 <CONSOLE_STATUS+0x200>
    80002000:	00003097          	auipc	ra,0x3
    80002004:	308080e7          	jalr	776(ra) # 80005308 <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceStart); printString("\n");
    80002008:	00007917          	auipc	s2,0x7
    8000200c:	66890913          	addi	s2,s2,1640 # 80009670 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    80002010:	01093503          	ld	a0,16(s2)
    80002014:	00003097          	auipc	ra,0x3
    80002018:	364080e7          	jalr	868(ra) # 80005378 <_Z12printIntegerm>
    8000201c:	00006517          	auipc	a0,0x6
    80002020:	0f450513          	addi	a0,a0,244 # 80008110 <CONSOLE_STATUS+0x100>
    80002024:	00003097          	auipc	ra,0x3
    80002028:	2e4080e7          	jalr	740(ra) # 80005308 <_Z11printStringPKc>
    printString("Managed memory space end: ");
    8000202c:	00006517          	auipc	a0,0x6
    80002030:	20450513          	addi	a0,a0,516 # 80008230 <CONSOLE_STATUS+0x220>
    80002034:	00003097          	auipc	ra,0x3
    80002038:	2d4080e7          	jalr	724(ra) # 80005308 <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceEnd); printString("\n\n");
    8000203c:	00093503          	ld	a0,0(s2)
    80002040:	00003097          	auipc	ra,0x3
    80002044:	338080e7          	jalr	824(ra) # 80005378 <_Z12printIntegerm>
    80002048:	00006517          	auipc	a0,0x6
    8000204c:	1c050513          	addi	a0,a0,448 # 80008208 <CONSOLE_STATUS+0x1f8>
    80002050:	00003097          	auipc	ra,0x3
    80002054:	2b8080e7          	jalr	696(ra) # 80005308 <_Z11printStringPKc>

    printString("Total Free: "); printInteger(getTotalFree()); printString("\n");
    80002058:	00006517          	auipc	a0,0x6
    8000205c:	1f850513          	addi	a0,a0,504 # 80008250 <CONSOLE_STATUS+0x240>
    80002060:	00003097          	auipc	ra,0x3
    80002064:	2a8080e7          	jalr	680(ra) # 80005308 <_Z11printStringPKc>
    80002068:	0004b503          	ld	a0,0(s1)
    8000206c:	00003097          	auipc	ra,0x3
    80002070:	30c080e7          	jalr	780(ra) # 80005378 <_Z12printIntegerm>
    80002074:	00006517          	auipc	a0,0x6
    80002078:	09c50513          	addi	a0,a0,156 # 80008110 <CONSOLE_STATUS+0x100>
    8000207c:	00003097          	auipc	ra,0x3
    80002080:	28c080e7          	jalr	652(ra) # 80005308 <_Z11printStringPKc>
    printString("Total Taken: "); printInteger(getTotalTaken()); printString("\n");
    80002084:	00006517          	auipc	a0,0x6
    80002088:	1dc50513          	addi	a0,a0,476 # 80008260 <CONSOLE_STATUS+0x250>
    8000208c:	00003097          	auipc	ra,0x3
    80002090:	27c080e7          	jalr	636(ra) # 80005308 <_Z11printStringPKc>
    80002094:	0084b503          	ld	a0,8(s1)
    80002098:	00003097          	auipc	ra,0x3
    8000209c:	2e0080e7          	jalr	736(ra) # 80005378 <_Z12printIntegerm>
    800020a0:	00006517          	auipc	a0,0x6
    800020a4:	07050513          	addi	a0,a0,112 # 80008110 <CONSOLE_STATUS+0x100>
    800020a8:	00003097          	auipc	ra,0x3
    800020ac:	260080e7          	jalr	608(ra) # 80005308 <_Z11printStringPKc>
    printString("Free Block No: "); printInteger(getFreeBlockNo()); printString("\n");
    800020b0:	00006517          	auipc	a0,0x6
    800020b4:	1c050513          	addi	a0,a0,448 # 80008270 <CONSOLE_STATUS+0x260>
    800020b8:	00003097          	auipc	ra,0x3
    800020bc:	250080e7          	jalr	592(ra) # 80005308 <_Z11printStringPKc>
    800020c0:	0104b503          	ld	a0,16(s1)
    800020c4:	00003097          	auipc	ra,0x3
    800020c8:	2b4080e7          	jalr	692(ra) # 80005378 <_Z12printIntegerm>
    800020cc:	00006517          	auipc	a0,0x6
    800020d0:	04450513          	addi	a0,a0,68 # 80008110 <CONSOLE_STATUS+0x100>
    800020d4:	00003097          	auipc	ra,0x3
    800020d8:	234080e7          	jalr	564(ra) # 80005308 <_Z11printStringPKc>
    printString("\n##################################\n");
    800020dc:	00006517          	auipc	a0,0x6
    800020e0:	1a450513          	addi	a0,a0,420 # 80008280 <CONSOLE_STATUS+0x270>
    800020e4:	00003097          	auipc	ra,0x3
    800020e8:	224080e7          	jalr	548(ra) # 80005308 <_Z11printStringPKc>
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
    8000211c:	00006517          	auipc	a0,0x6
    80002120:	18c50513          	addi	a0,a0,396 # 800082a8 <CONSOLE_STATUS+0x298>
    80002124:	00003097          	auipc	ra,0x3
    80002128:	1e4080e7          	jalr	484(ra) # 80005308 <_Z11printStringPKc>
    printString("Size of MemoryAllocator class: ");
    8000212c:	00006517          	auipc	a0,0x6
    80002130:	1a450513          	addi	a0,a0,420 # 800082d0 <CONSOLE_STATUS+0x2c0>
    80002134:	00003097          	auipc	ra,0x3
    80002138:	1d4080e7          	jalr	468(ra) # 80005308 <_Z11printStringPKc>
    printInteger(sizeof(MemoryAllocator)); printString("\n");
    8000213c:	02000513          	li	a0,32
    80002140:	00003097          	auipc	ra,0x3
    80002144:	238080e7          	jalr	568(ra) # 80005378 <_Z12printIntegerm>
    80002148:	00006517          	auipc	a0,0x6
    8000214c:	fc850513          	addi	a0,a0,-56 # 80008110 <CONSOLE_STATUS+0x100>
    80002150:	00003097          	auipc	ra,0x3
    80002154:	1b8080e7          	jalr	440(ra) # 80005308 <_Z11printStringPKc>

    printString("HEAP_START_ADDR: "); printInteger((uint64)HEAP_START_ADDR); printString("\n");
    80002158:	00006517          	auipc	a0,0x6
    8000215c:	1b850513          	addi	a0,a0,440 # 80008310 <CONSOLE_STATUS+0x300>
    80002160:	00003097          	auipc	ra,0x3
    80002164:	1a8080e7          	jalr	424(ra) # 80005308 <_Z11printStringPKc>
    80002168:	00007497          	auipc	s1,0x7
    8000216c:	4484b483          	ld	s1,1096(s1) # 800095b0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002170:	0004b503          	ld	a0,0(s1)
    80002174:	00003097          	auipc	ra,0x3
    80002178:	204080e7          	jalr	516(ra) # 80005378 <_Z12printIntegerm>
    8000217c:	00006517          	auipc	a0,0x6
    80002180:	f9450513          	addi	a0,a0,-108 # 80008110 <CONSOLE_STATUS+0x100>
    80002184:	00003097          	auipc	ra,0x3
    80002188:	184080e7          	jalr	388(ra) # 80005308 <_Z11printStringPKc>
    printString("HEAP_END_ADDR: "); printInteger((uint64)HEAP_END_ADDR); printString("\n");
    8000218c:	00006517          	auipc	a0,0x6
    80002190:	16450513          	addi	a0,a0,356 # 800082f0 <CONSOLE_STATUS+0x2e0>
    80002194:	00003097          	auipc	ra,0x3
    80002198:	174080e7          	jalr	372(ra) # 80005308 <_Z11printStringPKc>
    8000219c:	00007917          	auipc	s2,0x7
    800021a0:	45c93903          	ld	s2,1116(s2) # 800095f8 <_GLOBAL_OFFSET_TABLE_+0x50>
    800021a4:	00093503          	ld	a0,0(s2)
    800021a8:	00003097          	auipc	ra,0x3
    800021ac:	1d0080e7          	jalr	464(ra) # 80005378 <_Z12printIntegerm>
    800021b0:	00006517          	auipc	a0,0x6
    800021b4:	f6050513          	addi	a0,a0,-160 # 80008110 <CONSOLE_STATUS+0x100>
    800021b8:	00003097          	auipc	ra,0x3
    800021bc:	150080e7          	jalr	336(ra) # 80005308 <_Z11printStringPKc>

    printString("HEAP_END_ADDR - HEAP_START_ADDR: ");
    800021c0:	00006517          	auipc	a0,0x6
    800021c4:	14050513          	addi	a0,a0,320 # 80008300 <CONSOLE_STATUS+0x2f0>
    800021c8:	00003097          	auipc	ra,0x3
    800021cc:	140080e7          	jalr	320(ra) # 80005308 <_Z11printStringPKc>
    printInteger((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)); printString("\n");
    800021d0:	00093503          	ld	a0,0(s2)
    800021d4:	0004b783          	ld	a5,0(s1)
    800021d8:	40f50533          	sub	a0,a0,a5
    800021dc:	00003097          	auipc	ra,0x3
    800021e0:	19c080e7          	jalr	412(ra) # 80005378 <_Z12printIntegerm>
    800021e4:	00006517          	auipc	a0,0x6
    800021e8:	f2c50513          	addi	a0,a0,-212 # 80008110 <CONSOLE_STATUS+0x100>
    800021ec:	00003097          	auipc	ra,0x3
    800021f0:	11c080e7          	jalr	284(ra) # 80005308 <_Z11printStringPKc>

    printString("MEM_BLOCK_SIZE: "); printInteger(MEM_BLOCK_SIZE); printString("\n");
    800021f4:	00006517          	auipc	a0,0x6
    800021f8:	13450513          	addi	a0,a0,308 # 80008328 <CONSOLE_STATUS+0x318>
    800021fc:	00003097          	auipc	ra,0x3
    80002200:	10c080e7          	jalr	268(ra) # 80005308 <_Z11printStringPKc>
    80002204:	04000513          	li	a0,64
    80002208:	00003097          	auipc	ra,0x3
    8000220c:	170080e7          	jalr	368(ra) # 80005378 <_Z12printIntegerm>
    80002210:	00006517          	auipc	a0,0x6
    80002214:	f0050513          	addi	a0,a0,-256 # 80008110 <CONSOLE_STATUS+0x100>
    80002218:	00003097          	auipc	ra,0x3
    8000221c:	0f0080e7          	jalr	240(ra) # 80005308 <_Z11printStringPKc>

    printString("Number of blocks in (HEAP_END_ADDR - HEAP_START_ADDR): ");
    80002220:	00006517          	auipc	a0,0x6
    80002224:	12050513          	addi	a0,a0,288 # 80008340 <CONSOLE_STATUS+0x330>
    80002228:	00003097          	auipc	ra,0x3
    8000222c:	0e0080e7          	jalr	224(ra) # 80005308 <_Z11printStringPKc>
    printInteger(((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)) / MEM_BLOCK_SIZE);
    80002230:	00093503          	ld	a0,0(s2)
    80002234:	0004b783          	ld	a5,0(s1)
    80002238:	40f50533          	sub	a0,a0,a5
    8000223c:	00655513          	srli	a0,a0,0x6
    80002240:	00003097          	auipc	ra,0x3
    80002244:	138080e7          	jalr	312(ra) # 80005378 <_Z12printIntegerm>
    printString("\n");
    80002248:	00006517          	auipc	a0,0x6
    8000224c:	ec850513          	addi	a0,a0,-312 # 80008110 <CONSOLE_STATUS+0x100>
    80002250:	00003097          	auipc	ra,0x3
    80002254:	0b8080e7          	jalr	184(ra) # 80005308 <_Z11printStringPKc>
    printString("\n----------------------------------\n");
    80002258:	00006517          	auipc	a0,0x6
    8000225c:	12050513          	addi	a0,a0,288 # 80008378 <CONSOLE_STATUS+0x368>
    80002260:	00003097          	auipc	ra,0x3
    80002264:	0a8080e7          	jalr	168(ra) # 80005308 <_Z11printStringPKc>
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
    80002298:	00006517          	auipc	a0,0x6
    8000229c:	ec850513          	addi	a0,a0,-312 # 80008160 <CONSOLE_STATUS+0x150>
    800022a0:	00003097          	auipc	ra,0x3
    800022a4:	068080e7          	jalr	104(ra) # 80005308 <_Z11printStringPKc>
    printString("freeMemoryHead: ");
    800022a8:	00006517          	auipc	a0,0x6
    800022ac:	0f850513          	addi	a0,a0,248 # 800083a0 <CONSOLE_STATUS+0x390>
    800022b0:	00003097          	auipc	ra,0x3
    800022b4:	058080e7          	jalr	88(ra) # 80005308 <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead); printString("\n");
    800022b8:	0184b503          	ld	a0,24(s1)
    800022bc:	00003097          	auipc	ra,0x3
    800022c0:	0bc080e7          	jalr	188(ra) # 80005378 <_Z12printIntegerm>
    800022c4:	00006517          	auipc	a0,0x6
    800022c8:	e4c50513          	addi	a0,a0,-436 # 80008110 <CONSOLE_STATUS+0x100>
    800022cc:	00003097          	auipc	ra,0x3
    800022d0:	03c080e7          	jalr	60(ra) # 80005308 <_Z11printStringPKc>
    printString("freeMemoryHead->noBlocks: ");
    800022d4:	00006517          	auipc	a0,0x6
    800022d8:	0e450513          	addi	a0,a0,228 # 800083b8 <CONSOLE_STATUS+0x3a8>
    800022dc:	00003097          	auipc	ra,0x3
    800022e0:	02c080e7          	jalr	44(ra) # 80005308 <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead->noBlocks); printString("\n");
    800022e4:	0184b783          	ld	a5,24(s1)
    800022e8:	0007b503          	ld	a0,0(a5)
    800022ec:	00003097          	auipc	ra,0x3
    800022f0:	08c080e7          	jalr	140(ra) # 80005378 <_Z12printIntegerm>
    800022f4:	00006517          	auipc	a0,0x6
    800022f8:	e1c50513          	addi	a0,a0,-484 # 80008110 <CONSOLE_STATUS+0x100>
    800022fc:	00003097          	auipc	ra,0x3
    80002300:	00c080e7          	jalr	12(ra) # 80005308 <_Z11printStringPKc>
    printString("freeMemoryHead->next: ");
    80002304:	00006517          	auipc	a0,0x6
    80002308:	0d450513          	addi	a0,a0,212 # 800083d8 <CONSOLE_STATUS+0x3c8>
    8000230c:	00003097          	auipc	ra,0x3
    80002310:	ffc080e7          	jalr	-4(ra) # 80005308 <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead->next); printString("\n");
    80002314:	0184b783          	ld	a5,24(s1)
    80002318:	0087b503          	ld	a0,8(a5)
    8000231c:	00003097          	auipc	ra,0x3
    80002320:	05c080e7          	jalr	92(ra) # 80005378 <_Z12printIntegerm>
    80002324:	00006517          	auipc	a0,0x6
    80002328:	dec50513          	addi	a0,a0,-532 # 80008110 <CONSOLE_STATUS+0x100>
    8000232c:	00003097          	auipc	ra,0x3
    80002330:	fdc080e7          	jalr	-36(ra) # 80005308 <_Z11printStringPKc>
    printString("Segment Descriptor size: ");
    80002334:	00006517          	auipc	a0,0x6
    80002338:	0bc50513          	addi	a0,a0,188 # 800083f0 <CONSOLE_STATUS+0x3e0>
    8000233c:	00003097          	auipc	ra,0x3
    80002340:	fcc080e7          	jalr	-52(ra) # 80005308 <_Z11printStringPKc>
    printInteger(sizeof(*freeMemoryHead)); printString("\n");
    80002344:	01000513          	li	a0,16
    80002348:	00003097          	auipc	ra,0x3
    8000234c:	030080e7          	jalr	48(ra) # 80005378 <_Z12printIntegerm>
    80002350:	00006517          	auipc	a0,0x6
    80002354:	dc050513          	addi	a0,a0,-576 # 80008110 <CONSOLE_STATUS+0x100>
    80002358:	00003097          	auipc	ra,0x3
    8000235c:	fb0080e7          	jalr	-80(ra) # 80005308 <_Z11printStringPKc>
    printString("\n##################################\n");
    80002360:	00006517          	auipc	a0,0x6
    80002364:	f2050513          	addi	a0,a0,-224 # 80008280 <CONSOLE_STATUS+0x270>
    80002368:	00003097          	auipc	ra,0x3
    8000236c:	fa0080e7          	jalr	-96(ra) # 80005308 <_Z11printStringPKc>
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
    80002428:	00007797          	auipc	a5,0x7
    8000242c:	1907b783          	ld	a5,400(a5) # 800095b8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002430:	0007b503          	ld	a0,0(a5)
    80002434:	00007797          	auipc	a5,0x7
    80002438:	1dc7b783          	ld	a5,476(a5) # 80009610 <_GLOBAL_OFFSET_TABLE_+0x68>
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
    800027e8:	00007797          	auipc	a5,0x7
    800027ec:	e287b783          	ld	a5,-472(a5) # 80009610 <_GLOBAL_OFFSET_TABLE_+0x68>
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
    8000281c:	00007797          	auipc	a5,0x7
    80002820:	df47b783          	ld	a5,-524(a5) # 80009610 <_GLOBAL_OFFSET_TABLE_+0x68>
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
    80002850:	00007797          	auipc	a5,0x7
    80002854:	dc07b783          	ld	a5,-576(a5) # 80009610 <_GLOBAL_OFFSET_TABLE_+0x68>
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
    80002898:	00007797          	auipc	a5,0x7
    8000289c:	d787b783          	ld	a5,-648(a5) # 80009610 <_GLOBAL_OFFSET_TABLE_+0x68>
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
    800028cc:	00007797          	auipc	a5,0x7
    800028d0:	d447b783          	ld	a5,-700(a5) # 80009610 <_GLOBAL_OFFSET_TABLE_+0x68>
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
    80002978:	00006517          	auipc	a0,0x6
    8000297c:	a9850513          	addi	a0,a0,-1384 # 80008410 <CONSOLE_STATUS+0x400>
    80002980:	00003097          	auipc	ra,0x3
    80002984:	988080e7          	jalr	-1656(ra) # 80005308 <_Z11printStringPKc>
    printInteger(i);
    80002988:	00090513          	mv	a0,s2
    8000298c:	00003097          	auipc	ra,0x3
    80002990:	9ec080e7          	jalr	-1556(ra) # 80005378 <_Z12printIntegerm>
    printString("]: ");
    80002994:	00006517          	auipc	a0,0x6
    80002998:	a8c50513          	addi	a0,a0,-1396 # 80008420 <CONSOLE_STATUS+0x410>
    8000299c:	00003097          	auipc	ra,0x3
    800029a0:	96c080e7          	jalr	-1684(ra) # 80005308 <_Z11printStringPKc>
    printInteger((uint64)((uint8*) pointers[i] - MemoryAllocator::managedMemorySpaceStart));
    800029a4:	00391613          	slli	a2,s2,0x3
    800029a8:	00c484b3          	add	s1,s1,a2
    800029ac:	0004b503          	ld	a0,0(s1)
    800029b0:	00007797          	auipc	a5,0x7
    800029b4:	c607b783          	ld	a5,-928(a5) # 80009610 <_GLOBAL_OFFSET_TABLE_+0x68>
    800029b8:	0007b783          	ld	a5,0(a5)
    800029bc:	40f50533          	sub	a0,a0,a5
    800029c0:	00003097          	auipc	ra,0x3
    800029c4:	9b8080e7          	jalr	-1608(ra) # 80005378 <_Z12printIntegerm>
    printString("\npointers[");
    800029c8:	00006517          	auipc	a0,0x6
    800029cc:	a4850513          	addi	a0,a0,-1464 # 80008410 <CONSOLE_STATUS+0x400>
    800029d0:	00003097          	auipc	ra,0x3
    800029d4:	938080e7          	jalr	-1736(ra) # 80005308 <_Z11printStringPKc>
    printInteger(i);
    800029d8:	00090513          	mv	a0,s2
    800029dc:	00003097          	auipc	ra,0x3
    800029e0:	99c080e7          	jalr	-1636(ra) # 80005378 <_Z12printIntegerm>
    printString("]->blockNo: "); printInteger((uint64) (((MemoryAllocator::SegmentDescriptor*) pointers[i])->noBlocks));
    800029e4:	00006517          	auipc	a0,0x6
    800029e8:	a4450513          	addi	a0,a0,-1468 # 80008428 <CONSOLE_STATUS+0x418>
    800029ec:	00003097          	auipc	ra,0x3
    800029f0:	91c080e7          	jalr	-1764(ra) # 80005308 <_Z11printStringPKc>
    800029f4:	0004b783          	ld	a5,0(s1)
    800029f8:	0007b503          	ld	a0,0(a5)
    800029fc:	00003097          	auipc	ra,0x3
    80002a00:	97c080e7          	jalr	-1668(ra) # 80005378 <_Z12printIntegerm>
    printString("\n");
    80002a04:	00005517          	auipc	a0,0x5
    80002a08:	70c50513          	addi	a0,a0,1804 # 80008110 <CONSOLE_STATUS+0x100>
    80002a0c:	00003097          	auipc	ra,0x3
    80002a10:	8fc080e7          	jalr	-1796(ra) # 80005308 <_Z11printStringPKc>
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
    80002a9c:	00007797          	auipc	a5,0x7
    80002aa0:	b747b783          	ld	a5,-1164(a5) # 80009610 <_GLOBAL_OFFSET_TABLE_+0x68>
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
    80002ad0:	00007797          	auipc	a5,0x7
    80002ad4:	b407b783          	ld	a5,-1216(a5) # 80009610 <_GLOBAL_OFFSET_TABLE_+0x68>
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
    80002b18:	00007797          	auipc	a5,0x7
    80002b1c:	af87b783          	ld	a5,-1288(a5) # 80009610 <_GLOBAL_OFFSET_TABLE_+0x68>
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
    80002b4c:	00007797          	auipc	a5,0x7
    80002b50:	ac47b783          	ld	a5,-1340(a5) # 80009610 <_GLOBAL_OFFSET_TABLE_+0x68>
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
    80002b94:	00007797          	auipc	a5,0x7
    80002b98:	a7c7b783          	ld	a5,-1412(a5) # 80009610 <_GLOBAL_OFFSET_TABLE_+0x68>
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
    80002bc8:	00007797          	auipc	a5,0x7
    80002bcc:	a487b783          	ld	a5,-1464(a5) # 80009610 <_GLOBAL_OFFSET_TABLE_+0x68>
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
    80002cd4:	00007797          	auipc	a5,0x7
    80002cd8:	93c7b783          	ld	a5,-1732(a5) # 80009610 <_GLOBAL_OFFSET_TABLE_+0x68>
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
    80002d08:	00007797          	auipc	a5,0x7
    80002d0c:	9087b783          	ld	a5,-1784(a5) # 80009610 <_GLOBAL_OFFSET_TABLE_+0x68>
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
    80002d50:	00007797          	auipc	a5,0x7
    80002d54:	8c07b783          	ld	a5,-1856(a5) # 80009610 <_GLOBAL_OFFSET_TABLE_+0x68>
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
    80002da8:	00007797          	auipc	a5,0x7
    80002dac:	8687b783          	ld	a5,-1944(a5) # 80009610 <_GLOBAL_OFFSET_TABLE_+0x68>
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
    80002df0:	00007797          	auipc	a5,0x7
    80002df4:	8207b783          	ld	a5,-2016(a5) # 80009610 <_GLOBAL_OFFSET_TABLE_+0x68>
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
    80002e24:	00006797          	auipc	a5,0x6
    80002e28:	7ec7b783          	ld	a5,2028(a5) # 80009610 <_GLOBAL_OFFSET_TABLE_+0x68>
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
    80002e58:	00006797          	auipc	a5,0x6
    80002e5c:	7b87b783          	ld	a5,1976(a5) # 80009610 <_GLOBAL_OFFSET_TABLE_+0x68>
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
    80002fe8:	00006797          	auipc	a5,0x6
    80002fec:	5f07b783          	ld	a5,1520(a5) # 800095d8 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80003020:	00005517          	auipc	a0,0x5
    80003024:	41850513          	addi	a0,a0,1048 # 80008438 <CONSOLE_STATUS+0x428>
    80003028:	00002097          	auipc	ra,0x2
    8000302c:	2e0080e7          	jalr	736(ra) # 80005308 <_Z11printStringPKc>
            printInteger(sizes[i]); printString("\n"); return false;
    80003030:	00090513          	mv	a0,s2
    80003034:	00002097          	auipc	ra,0x2
    80003038:	344080e7          	jalr	836(ra) # 80005378 <_Z12printIntegerm>
    8000303c:	00005517          	auipc	a0,0x5
    80003040:	0d450513          	addi	a0,a0,212 # 80008110 <CONSOLE_STATUS+0x100>
    80003044:	00002097          	auipc	ra,0x2
    80003048:	2c4080e7          	jalr	708(ra) # 80005308 <_Z11printStringPKc>
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
    80003070:	00005517          	auipc	a0,0x5
    80003074:	40050513          	addi	a0,a0,1024 # 80008470 <CONSOLE_STATUS+0x460>
    80003078:	00002097          	auipc	ra,0x2
    8000307c:	290080e7          	jalr	656(ra) # 80005308 <_Z11printStringPKc>
            printInteger(sizes[i]); printString("\n"); return false;
    80003080:	00090513          	mv	a0,s2
    80003084:	00002097          	auipc	ra,0x2
    80003088:	2f4080e7          	jalr	756(ra) # 80005378 <_Z12printIntegerm>
    8000308c:	00005517          	auipc	a0,0x5
    80003090:	08450513          	addi	a0,a0,132 # 80008110 <CONSOLE_STATUS+0x100>
    80003094:	00002097          	auipc	ra,0x2
    80003098:	274080e7          	jalr	628(ra) # 80005308 <_Z11printStringPKc>
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
    800030d8:	00005517          	auipc	a0,0x5
    800030dc:	39050513          	addi	a0,a0,912 # 80008468 <CONSOLE_STATUS+0x458>
    800030e0:	00002097          	auipc	ra,0x2
    800030e4:	228080e7          	jalr	552(ra) # 80005308 <_Z11printStringPKc>
        if (!testMemoryFree(sizes[i], allocatedMemoryPointer)) {
    800030e8:	f6043603          	ld	a2,-160(s0)
    800030ec:	00090593          	mv	a1,s2
    800030f0:	00098513          	mv	a0,s3
    800030f4:	fffff097          	auipc	ra,0xfffff
    800030f8:	50c080e7          	jalr	1292(ra) # 80002600 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>
    800030fc:	f6050ae3          	beqz	a0,80003070 <_ZN19MemoryAllocatorTest8runTestsEv+0xe4>
        } else printString("Passed ");
    80003100:	00005517          	auipc	a0,0x5
    80003104:	36850513          	addi	a0,a0,872 # 80008468 <CONSOLE_STATUS+0x458>
    80003108:	00002097          	auipc	ra,0x2
    8000310c:	200080e7          	jalr	512(ra) # 80005308 <_Z11printStringPKc>
        if (i != 0 && (i + 1) % 5 == 0) printString("\n");
    80003110:	f80488e3          	beqz	s1,800030a0 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    80003114:	0014879b          	addiw	a5,s1,1
    80003118:	00500713          	li	a4,5
    8000311c:	02e7e7bb          	remw	a5,a5,a4
    80003120:	f80790e3          	bnez	a5,800030a0 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    80003124:	00005517          	auipc	a0,0x5
    80003128:	fec50513          	addi	a0,a0,-20 # 80008110 <CONSOLE_STATUS+0x100>
    8000312c:	00002097          	auipc	ra,0x2
    80003130:	1dc080e7          	jalr	476(ra) # 80005308 <_Z11printStringPKc>
    80003134:	f6dff06f          	j	800030a0 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    if (!testFirstFit()) {
    80003138:	00098513          	mv	a0,s3
    8000313c:	00000097          	auipc	ra,0x0
    80003140:	dd0080e7          	jalr	-560(ra) # 80002f0c <_ZN19MemoryAllocatorTest12testFirstFitEv>
    80003144:	00050493          	mv	s1,a0
    80003148:	02050e63          	beqz	a0,80003184 <_ZN19MemoryAllocatorTest8runTestsEv+0x1f8>
    else printString("Passed ");
    8000314c:	00005517          	auipc	a0,0x5
    80003150:	31c50513          	addi	a0,a0,796 # 80008468 <CONSOLE_STATUS+0x458>
    80003154:	00002097          	auipc	ra,0x2
    80003158:	1b4080e7          	jalr	436(ra) # 80005308 <_Z11printStringPKc>
    if (!testSegmentDescriptorSize()) {
    8000315c:	00098513          	mv	a0,s3
    80003160:	00000097          	auipc	ra,0x0
    80003164:	e04080e7          	jalr	-508(ra) # 80002f64 <_ZN19MemoryAllocatorTest25testSegmentDescriptorSizeEv>
    80003168:	00050493          	mv	s1,a0
    8000316c:	02050663          	beqz	a0,80003198 <_ZN19MemoryAllocatorTest8runTestsEv+0x20c>
    else printString("Passed\n");
    80003170:	00005517          	auipc	a0,0x5
    80003174:	36850513          	addi	a0,a0,872 # 800084d8 <CONSOLE_STATUS+0x4c8>
    80003178:	00002097          	auipc	ra,0x2
    8000317c:	190080e7          	jalr	400(ra) # 80005308 <_Z11printStringPKc>
    80003180:	ed1ff06f          	j	80003050 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>
        printString("Failed testFirstFit\n"); return false; }
    80003184:	00005517          	auipc	a0,0x5
    80003188:	31450513          	addi	a0,a0,788 # 80008498 <CONSOLE_STATUS+0x488>
    8000318c:	00002097          	auipc	ra,0x2
    80003190:	17c080e7          	jalr	380(ra) # 80005308 <_Z11printStringPKc>
    80003194:	ebdff06f          	j	80003050 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>
        printString("Failed testSegmentDescriptorSize\n"); return false; }
    80003198:	00005517          	auipc	a0,0x5
    8000319c:	31850513          	addi	a0,a0,792 # 800084b0 <CONSOLE_STATUS+0x4a0>
    800031a0:	00002097          	auipc	ra,0x2
    800031a4:	168080e7          	jalr	360(ra) # 80005308 <_Z11printStringPKc>
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
    800031bc:	00004097          	auipc	ra,0x4
    800031c0:	44c080e7          	jalr	1100(ra) # 80007608 <__mem_alloc>
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
    800031e4:	00004097          	auipc	ra,0x4
    800031e8:	424080e7          	jalr	1060(ra) # 80007608 <__mem_alloc>
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
    8000320c:	00004097          	auipc	ra,0x4
    80003210:	330080e7          	jalr	816(ra) # 8000753c <__mem_free>
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
    80003234:	00004097          	auipc	ra,0x4
    80003238:	308080e7          	jalr	776(ra) # 8000753c <__mem_free>
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
    8000325c:	04e7f063          	bgeu	a5,a4,8000329c <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator+0x50>
        if (i * objAlloc->memorySizeForBits <= byte && byte < (i + 1) * objAlloc->memorySizeForBits)
    80003260:	0106b703          	ld	a4,16(a3)
    80003264:	02f70533          	mul	a0,a4,a5
    80003268:	fea5e6e3          	bltu	a1,a0,80003254 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator+0x8>
    8000326c:	00178513          	addi	a0,a5,1
    80003270:	02a70733          	mul	a4,a4,a0
    80003274:	fee5f0e3          	bgeu	a1,a4,80003254 <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator+0x8>
            return (objAlloc->bitVectors[i][byte] >> bit & (uint8) 1) != 0;
    80003278:	0286b703          	ld	a4,40(a3)
    8000327c:	00379793          	slli	a5,a5,0x3
    80003280:	00f707b3          	add	a5,a4,a5
    80003284:	0007b783          	ld	a5,0(a5)
    80003288:	00b785b3          	add	a1,a5,a1
    8000328c:	0005c503          	lbu	a0,0(a1)
    80003290:	40c5563b          	sraw	a2,a0,a2
    80003294:	00167513          	andi	a0,a2,1
    }
    printString("ERROR: byte not in given objAlloc\n");
    return false;
}
    80003298:	00008067          	ret
bool KObjectAllocatorTest::getValueOfBitAt(size_t byte, size_t bit, KObjectAllocator* objAlloc) {
    8000329c:	ff010113          	addi	sp,sp,-16
    800032a0:	00113423          	sd	ra,8(sp)
    800032a4:	00813023          	sd	s0,0(sp)
    800032a8:	01010413          	addi	s0,sp,16
    printString("ERROR: byte not in given objAlloc\n");
    800032ac:	00005517          	auipc	a0,0x5
    800032b0:	23450513          	addi	a0,a0,564 # 800084e0 <CONSOLE_STATUS+0x4d0>
    800032b4:	00002097          	auipc	ra,0x2
    800032b8:	054080e7          	jalr	84(ra) # 80005308 <_Z11printStringPKc>
    return false;
    800032bc:	00000513          	li	a0,0
}
    800032c0:	00813083          	ld	ra,8(sp)
    800032c4:	00013403          	ld	s0,0(sp)
    800032c8:	01010113          	addi	sp,sp,16
    800032cc:	00008067          	ret

00000000800032d0 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>:

size_t KObjectAllocatorTest::getByteOfObject(void* obj, KObjectAllocator* objAlloc) {
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i) {
    800032d0:	00000713          	li	a4,0
    800032d4:	0080006f          	j	800032dc <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator+0xc>
    800032d8:	00170713          	addi	a4,a4,1
    800032dc:	03063783          	ld	a5,48(a2)
    800032e0:	02f77a63          	bgeu	a4,a5,80003314 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator+0x44>
        if ((uint8*) obj < objAlloc->objectVectors[i]) continue;
    800032e4:	02063783          	ld	a5,32(a2)
    800032e8:	00371693          	slli	a3,a4,0x3
    800032ec:	00d787b3          	add	a5,a5,a3
    800032f0:	0007b503          	ld	a0,0(a5)
    800032f4:	fea5e2e3          	bltu	a1,a0,800032d8 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator+0x8>
        size_t idiff = (size_t) ((uint8*) obj - objAlloc->objectVectors[i]);
    800032f8:	40a58533          	sub	a0,a1,a0
        size_t byte = idiff / objAlloc->objectSize / 8;
    800032fc:	01863783          	ld	a5,24(a2)
    80003300:	02f55533          	divu	a0,a0,a5
    80003304:	00355513          	srli	a0,a0,0x3
        if (byte >= objAlloc->memorySizeForBits) continue;
    80003308:	01063783          	ld	a5,16(a2)
    8000330c:	fcf576e3          	bgeu	a0,a5,800032d8 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator+0x8>
        return byte;
    }
    printString("ERROR: given object not allocated in given objAlloc\n");
    return 0;
}
    80003310:	00008067          	ret
size_t KObjectAllocatorTest::getByteOfObject(void* obj, KObjectAllocator* objAlloc) {
    80003314:	ff010113          	addi	sp,sp,-16
    80003318:	00113423          	sd	ra,8(sp)
    8000331c:	00813023          	sd	s0,0(sp)
    80003320:	01010413          	addi	s0,sp,16
    printString("ERROR: given object not allocated in given objAlloc\n");
    80003324:	00005517          	auipc	a0,0x5
    80003328:	1e450513          	addi	a0,a0,484 # 80008508 <CONSOLE_STATUS+0x4f8>
    8000332c:	00002097          	auipc	ra,0x2
    80003330:	fdc080e7          	jalr	-36(ra) # 80005308 <_Z11printStringPKc>
    return 0;
    80003334:	00000513          	li	a0,0
}
    80003338:	00813083          	ld	ra,8(sp)
    8000333c:	00013403          	ld	s0,0(sp)
    80003340:	01010113          	addi	sp,sp,16
    80003344:	00008067          	ret

0000000080003348 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>:

size_t KObjectAllocatorTest::getBitOfObject(void* obj, KObjectAllocator* objAlloc) {
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i) {
    80003348:	00000713          	li	a4,0
    8000334c:	0080006f          	j	80003354 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator+0xc>
    80003350:	00170713          	addi	a4,a4,1
    80003354:	03063783          	ld	a5,48(a2)
    80003358:	04f77063          	bgeu	a4,a5,80003398 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator+0x50>
        if ((uint8*) obj < objAlloc->objectVectors[i]) continue;
    8000335c:	02063783          	ld	a5,32(a2)
    80003360:	00371693          	slli	a3,a4,0x3
    80003364:	00d787b3          	add	a5,a5,a3
    80003368:	0007b783          	ld	a5,0(a5)
    8000336c:	fef5e2e3          	bltu	a1,a5,80003350 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator+0x8>
        size_t idiff = (size_t) ((uint8*) obj - objAlloc->objectVectors[i]);
    80003370:	40f587b3          	sub	a5,a1,a5
        size_t byte = idiff / objAlloc->objectSize / 8;
    80003374:	01863503          	ld	a0,24(a2)
    80003378:	02a7d7b3          	divu	a5,a5,a0
    8000337c:	0037d693          	srli	a3,a5,0x3
        if (byte >= objAlloc->memorySizeForBits) continue;
    80003380:	01063503          	ld	a0,16(a2)
    80003384:	fca6f6e3          	bgeu	a3,a0,80003350 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator+0x8>
        size_t bit = idiff / objAlloc->objectSize - byte * 8;
    80003388:	ff87f513          	andi	a0,a5,-8
        return 7 - bit;
    8000338c:	40f507b3          	sub	a5,a0,a5
    80003390:	00778513          	addi	a0,a5,7
    }
    printString("ERROR: given object not allocated in given objAlloc\n");
    return 0;
}
    80003394:	00008067          	ret
size_t KObjectAllocatorTest::getBitOfObject(void* obj, KObjectAllocator* objAlloc) {
    80003398:	ff010113          	addi	sp,sp,-16
    8000339c:	00113423          	sd	ra,8(sp)
    800033a0:	00813023          	sd	s0,0(sp)
    800033a4:	01010413          	addi	s0,sp,16
    printString("ERROR: given object not allocated in given objAlloc\n");
    800033a8:	00005517          	auipc	a0,0x5
    800033ac:	16050513          	addi	a0,a0,352 # 80008508 <CONSOLE_STATUS+0x4f8>
    800033b0:	00002097          	auipc	ra,0x2
    800033b4:	f58080e7          	jalr	-168(ra) # 80005308 <_Z11printStringPKc>
    return 0;
    800033b8:	00000513          	li	a0,0
}
    800033bc:	00813083          	ld	ra,8(sp)
    800033c0:	00013403          	ld	s0,0(sp)
    800033c4:	01010113          	addi	sp,sp,16
    800033c8:	00008067          	ret

00000000800033cc <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>:

void* KObjectAllocatorTest::getObjectAt(size_t byte, size_t bit, KObjectAllocator* objAlloc) {
    for (size_t i = 0; i < objAlloc->numberOfAllocations; ++i)
    800033cc:	00000793          	li	a5,0
    800033d0:	0080006f          	j	800033d8 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator+0xc>
    800033d4:	00178793          	addi	a5,a5,1
    800033d8:	0306b703          	ld	a4,48(a3)
    800033dc:	04e7f463          	bgeu	a5,a4,80003424 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator+0x58>
        if (i * objAlloc->memorySizeForBits <= byte && byte < (i + 1) * objAlloc->memorySizeForBits)
    800033e0:	0106b703          	ld	a4,16(a3)
    800033e4:	02f70833          	mul	a6,a4,a5
    800033e8:	ff05e6e3          	bltu	a1,a6,800033d4 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator+0x8>
    800033ec:	00178813          	addi	a6,a5,1
    800033f0:	03070733          	mul	a4,a4,a6
    800033f4:	fee5f0e3          	bgeu	a1,a4,800033d4 <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator+0x8>
            return &objAlloc->objectVectors[i][(byte * 8 + 7 - bit) * objAlloc->objectSize];
    800033f8:	0206b703          	ld	a4,32(a3)
    800033fc:	00379793          	slli	a5,a5,0x3
    80003400:	00f707b3          	add	a5,a4,a5
    80003404:	0007b783          	ld	a5,0(a5)
    80003408:	00359593          	slli	a1,a1,0x3
    8000340c:	40c58533          	sub	a0,a1,a2
    80003410:	00750513          	addi	a0,a0,7
    80003414:	0186b703          	ld	a4,24(a3)
    80003418:	02e50533          	mul	a0,a0,a4
    8000341c:	00a78533          	add	a0,a5,a0
    printString("ERROR: given object not allocated in given objAlloc\n");
    return nullptr;
}
    80003420:	00008067          	ret
void* KObjectAllocatorTest::getObjectAt(size_t byte, size_t bit, KObjectAllocator* objAlloc) {
    80003424:	ff010113          	addi	sp,sp,-16
    80003428:	00113423          	sd	ra,8(sp)
    8000342c:	00813023          	sd	s0,0(sp)
    80003430:	01010413          	addi	s0,sp,16
    printString("ERROR: given object not allocated in given objAlloc\n");
    80003434:	00005517          	auipc	a0,0x5
    80003438:	0d450513          	addi	a0,a0,212 # 80008508 <CONSOLE_STATUS+0x4f8>
    8000343c:	00002097          	auipc	ra,0x2
    80003440:	ecc080e7          	jalr	-308(ra) # 80005308 <_Z11printStringPKc>
    return nullptr;
    80003444:	00000513          	li	a0,0
}
    80003448:	00813083          	ld	ra,8(sp)
    8000344c:	00013403          	ld	s0,0(sp)
    80003450:	01010113          	addi	sp,sp,16
    80003454:	00008067          	ret

0000000080003458 <_ZN20KObjectAllocatorTest5test0Em>:

bool KObjectAllocatorTest::test0(size_t size) {
    80003458:	f5010113          	addi	sp,sp,-176
    8000345c:	0a113423          	sd	ra,168(sp)
    80003460:	0a813023          	sd	s0,160(sp)
    80003464:	08913c23          	sd	s1,152(sp)
    80003468:	09213823          	sd	s2,144(sp)
    8000346c:	09313423          	sd	s3,136(sp)
    80003470:	09413023          	sd	s4,128(sp)
    80003474:	07513c23          	sd	s5,120(sp)
    80003478:	07613823          	sd	s6,112(sp)
    8000347c:	07713423          	sd	s7,104(sp)
    80003480:	0b010413          	addi	s0,sp,176
    80003484:	00050993          	mv	s3,a0
    80003488:	00058913          	mv	s2,a1
        return MemoryAllocator::instance()->kmem_alloc(size);
    8000348c:	fffff097          	auipc	ra,0xfffff
    80003490:	838080e7          	jalr	-1992(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003494:	04000593          	li	a1,64
    80003498:	fffff097          	auipc	ra,0xfffff
    8000349c:	910080e7          	jalr	-1776(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    800034a0:	00050493          	mv	s1,a0
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    800034a4:	00900793          	li	a5,9
    800034a8:	00f53023          	sd	a5,0(a0)
    800034ac:	00f53423          	sd	a5,8(a0)
    800034b0:	01253c23          	sd	s2,24(a0)
    800034b4:	00100793          	li	a5,1
    800034b8:	02f53823          	sd	a5,48(a0)
    800034bc:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    800034c0:	fffff097          	auipc	ra,0xfffff
    800034c4:	804080e7          	jalr	-2044(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800034c8:	0304b583          	ld	a1,48(s1)
    800034cc:	00359593          	slli	a1,a1,0x3
    800034d0:	fffff097          	auipc	ra,0xfffff
    800034d4:	8d8080e7          	jalr	-1832(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    800034d8:	02a4b423          	sd	a0,40(s1)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    800034dc:	ffffe097          	auipc	ra,0xffffe
    800034e0:	7e8080e7          	jalr	2024(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800034e4:	0304b583          	ld	a1,48(s1)
    800034e8:	00359593          	slli	a1,a1,0x3
    800034ec:	fffff097          	auipc	ra,0xfffff
    800034f0:	8bc080e7          	jalr	-1860(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    800034f4:	02a4b023          	sd	a0,32(s1)
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    800034f8:	0084b703          	ld	a4,8(s1)
    800034fc:	ff877793          	andi	a5,a4,-8
    80003500:	02f70463          	beq	a4,a5,80003528 <_ZN20KObjectAllocatorTest5test0Em+0xd0>
    80003504:	00800713          	li	a4,8
    80003508:	00e787b3          	add	a5,a5,a4
    8000350c:	00f4b423          	sd	a5,8(s1)
    80003510:	00f4b023          	sd	a5,0(s1)
        memorySizeForBits = numberOfObjects / 8;
    80003514:	0037d793          	srli	a5,a5,0x3
    80003518:	00f4b823          	sd	a5,16(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    8000351c:	ffffe097          	auipc	ra,0xffffe
    80003520:	7a8080e7          	jalr	1960(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003524:	00c0006f          	j	80003530 <_ZN20KObjectAllocatorTest5test0Em+0xd8>
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80003528:	00000713          	li	a4,0
    8000352c:	fddff06f          	j	80003508 <_ZN20KObjectAllocatorTest5test0Em+0xb0>
                memorySizeForBits + initialNumberOfObjects * objectSize
    80003530:	0104b583          	ld	a1,16(s1)
    80003534:	0004b783          	ld	a5,0(s1)
    80003538:	02f907b3          	mul	a5,s2,a5
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    8000353c:	0284ba03          	ld	s4,40(s1)
    80003540:	00f585b3          	add	a1,a1,a5
    80003544:	fffff097          	auipc	ra,0xfffff
    80003548:	864080e7          	jalr	-1948(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    8000354c:	00aa3023          	sd	a0,0(s4)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    80003550:	0284b783          	ld	a5,40(s1)
    80003554:	0007b783          	ld	a5,0(a5)
    80003558:	0104b683          	ld	a3,16(s1)
    8000355c:	0204b703          	ld	a4,32(s1)
    80003560:	00d787b3          	add	a5,a5,a3
    80003564:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    80003568:	00000793          	li	a5,0
    8000356c:	0104b703          	ld	a4,16(s1)
    80003570:	00e7fe63          	bgeu	a5,a4,8000358c <_ZN20KObjectAllocatorTest5test0Em+0x134>
    80003574:	0284b703          	ld	a4,40(s1)
    80003578:	00073703          	ld	a4,0(a4)
    8000357c:	00f70733          	add	a4,a4,a5
    80003580:	00070023          	sb	zero,0(a4)
    80003584:	00178793          	addi	a5,a5,1
    80003588:	fe5ff06f          	j	8000356c <_ZN20KObjectAllocatorTest5test0Em+0x114>
    size_t getNumberOfObjects() { return numberOfObjects; }
    8000358c:	0084b703          	ld	a4,8(s1)
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 9);
    if (objAlloc->getNumberOfObjects() != 16) { delete objAlloc; return false; }
    80003590:	01000793          	li	a5,16
    80003594:	0af70663          	beq	a4,a5,80003640 <_ZN20KObjectAllocatorTest5test0Em+0x1e8>
    80003598:	06048a63          	beqz	s1,8000360c <_ZN20KObjectAllocatorTest5test0Em+0x1b4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000359c:	00000913          	li	s2,0
    800035a0:	0280006f          	j	800035c8 <_ZN20KObjectAllocatorTest5test0Em+0x170>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800035a4:	ffffe097          	auipc	ra,0xffffe
    800035a8:	720080e7          	jalr	1824(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800035ac:	0284b783          	ld	a5,40(s1)
    800035b0:	00391713          	slli	a4,s2,0x3
    800035b4:	00e787b3          	add	a5,a5,a4
    800035b8:	0007b583          	ld	a1,0(a5)
    800035bc:	fffff097          	auipc	ra,0xfffff
    800035c0:	894080e7          	jalr	-1900(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800035c4:	00190913          	addi	s2,s2,1
    800035c8:	0304b783          	ld	a5,48(s1)
    800035cc:	fcf96ce3          	bltu	s2,a5,800035a4 <_ZN20KObjectAllocatorTest5test0Em+0x14c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800035d0:	ffffe097          	auipc	ra,0xffffe
    800035d4:	6f4080e7          	jalr	1780(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800035d8:	0284b583          	ld	a1,40(s1)
    800035dc:	fffff097          	auipc	ra,0xfffff
    800035e0:	874080e7          	jalr	-1932(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800035e4:	ffffe097          	auipc	ra,0xffffe
    800035e8:	6e0080e7          	jalr	1760(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800035ec:	0204b583          	ld	a1,32(s1)
    800035f0:	fffff097          	auipc	ra,0xfffff
    800035f4:	860080e7          	jalr	-1952(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800035f8:	ffffe097          	auipc	ra,0xffffe
    800035fc:	6cc080e7          	jalr	1740(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003600:	00048593          	mv	a1,s1
    80003604:	fffff097          	auipc	ra,0xfffff
    80003608:	84c080e7          	jalr	-1972(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    8000360c:	00000a13          	li	s4,0
        if (expectedBitValues[i] != getValueOfBitAt(byte, bit, objAlloc))
            { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    }
    delete objAlloc;
    return true;
}
    80003610:	000a0513          	mv	a0,s4
    80003614:	0a813083          	ld	ra,168(sp)
    80003618:	0a013403          	ld	s0,160(sp)
    8000361c:	09813483          	ld	s1,152(sp)
    80003620:	09013903          	ld	s2,144(sp)
    80003624:	08813983          	ld	s3,136(sp)
    80003628:	08013a03          	ld	s4,128(sp)
    8000362c:	07813a83          	ld	s5,120(sp)
    80003630:	07013b03          	ld	s6,112(sp)
    80003634:	06813b83          	ld	s7,104(sp)
    80003638:	0b010113          	addi	sp,sp,176
    8000363c:	00008067          	ret
    size_t getMemorySizeForBits() { return memorySizeForBits; }
    80003640:	0104b703          	ld	a4,16(s1)
    if (objAlloc->getMemorySizeForBits() != 2) { delete objAlloc; return false; }
    80003644:	00200793          	li	a5,2
    80003648:	08f70063          	beq	a4,a5,800036c8 <_ZN20KObjectAllocatorTest5test0Em+0x270>
    8000364c:	06048a63          	beqz	s1,800036c0 <_ZN20KObjectAllocatorTest5test0Em+0x268>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003650:	00000913          	li	s2,0
    80003654:	0280006f          	j	8000367c <_ZN20KObjectAllocatorTest5test0Em+0x224>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003658:	ffffe097          	auipc	ra,0xffffe
    8000365c:	66c080e7          	jalr	1644(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003660:	0284b783          	ld	a5,40(s1)
    80003664:	00391713          	slli	a4,s2,0x3
    80003668:	00e787b3          	add	a5,a5,a4
    8000366c:	0007b583          	ld	a1,0(a5)
    80003670:	ffffe097          	auipc	ra,0xffffe
    80003674:	7e0080e7          	jalr	2016(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003678:	00190913          	addi	s2,s2,1
    8000367c:	0304b783          	ld	a5,48(s1)
    80003680:	fcf96ce3          	bltu	s2,a5,80003658 <_ZN20KObjectAllocatorTest5test0Em+0x200>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003684:	ffffe097          	auipc	ra,0xffffe
    80003688:	640080e7          	jalr	1600(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    8000368c:	0284b583          	ld	a1,40(s1)
    80003690:	ffffe097          	auipc	ra,0xffffe
    80003694:	7c0080e7          	jalr	1984(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003698:	ffffe097          	auipc	ra,0xffffe
    8000369c:	62c080e7          	jalr	1580(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800036a0:	0204b583          	ld	a1,32(s1)
    800036a4:	ffffe097          	auipc	ra,0xffffe
    800036a8:	7ac080e7          	jalr	1964(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800036ac:	ffffe097          	auipc	ra,0xffffe
    800036b0:	618080e7          	jalr	1560(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800036b4:	00048593          	mv	a1,s1
    800036b8:	ffffe097          	auipc	ra,0xffffe
    800036bc:	798080e7          	jalr	1944(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    800036c0:	00000a13          	li	s4,0
    800036c4:	f4dff06f          	j	80003610 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    size_t getObjectSize() { return objectSize; }
    800036c8:	0184b783          	ld	a5,24(s1)
    if (objAlloc->getObjectSize() != size) { delete objAlloc; return false; }
    800036cc:	08f90063          	beq	s2,a5,8000374c <_ZN20KObjectAllocatorTest5test0Em+0x2f4>
    800036d0:	06048a63          	beqz	s1,80003744 <_ZN20KObjectAllocatorTest5test0Em+0x2ec>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800036d4:	00000913          	li	s2,0
    800036d8:	0304b783          	ld	a5,48(s1)
    800036dc:	02f97663          	bgeu	s2,a5,80003708 <_ZN20KObjectAllocatorTest5test0Em+0x2b0>
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
    80003704:	fd5ff06f          	j	800036d8 <_ZN20KObjectAllocatorTest5test0Em+0x280>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003708:	ffffe097          	auipc	ra,0xffffe
    8000370c:	5bc080e7          	jalr	1468(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003710:	0284b583          	ld	a1,40(s1)
    80003714:	ffffe097          	auipc	ra,0xffffe
    80003718:	73c080e7          	jalr	1852(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    8000371c:	ffffe097          	auipc	ra,0xffffe
    80003720:	5a8080e7          	jalr	1448(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003724:	0204b583          	ld	a1,32(s1)
    80003728:	ffffe097          	auipc	ra,0xffffe
    8000372c:	728080e7          	jalr	1832(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003730:	ffffe097          	auipc	ra,0xffffe
    80003734:	594080e7          	jalr	1428(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003738:	00048593          	mv	a1,s1
    8000373c:	ffffe097          	auipc	ra,0xffffe
    80003740:	714080e7          	jalr	1812(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003744:	00000a13          	li	s4,0
    80003748:	ec9ff06f          	j	80003610 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    void* objArr[10]; for (size_t i = 0; i < 10; objArr[i++] = objAlloc->allocateNewObject());
    8000374c:	00000913          	li	s2,0
    80003750:	00900793          	li	a5,9
    80003754:	0327e663          	bltu	a5,s2,80003780 <_ZN20KObjectAllocatorTest5test0Em+0x328>
    80003758:	00190a13          	addi	s4,s2,1
    8000375c:	00048513          	mv	a0,s1
    80003760:	00002097          	auipc	ra,0x2
    80003764:	894080e7          	jalr	-1900(ra) # 80004ff4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80003768:	00391913          	slli	s2,s2,0x3
    8000376c:	fb040793          	addi	a5,s0,-80
    80003770:	01278933          	add	s2,a5,s2
    80003774:	faa93823          	sd	a0,-80(s2)
    80003778:	000a0913          	mv	s2,s4
    8000377c:	fd5ff06f          	j	80003750 <_ZN20KObjectAllocatorTest5test0Em+0x2f8>
    for (size_t i = 0; i < 10; ++i) {
    80003780:	00000b13          	li	s6,0
    size_t byte = 0; size_t bit = 7;
    80003784:	00700913          	li	s2,7
    80003788:	00000a93          	li	s5,0
    8000378c:	1840006f          	j	80003910 <_ZN20KObjectAllocatorTest5test0Em+0x4b8>
        if (objArr[i] != getObjectAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003790:	06048a63          	beqz	s1,80003804 <_ZN20KObjectAllocatorTest5test0Em+0x3ac>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003794:	00000913          	li	s2,0
    80003798:	0304b783          	ld	a5,48(s1)
    8000379c:	02f97663          	bgeu	s2,a5,800037c8 <_ZN20KObjectAllocatorTest5test0Em+0x370>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800037a0:	ffffe097          	auipc	ra,0xffffe
    800037a4:	524080e7          	jalr	1316(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800037a8:	0284b783          	ld	a5,40(s1)
    800037ac:	00391713          	slli	a4,s2,0x3
    800037b0:	00e787b3          	add	a5,a5,a4
    800037b4:	0007b583          	ld	a1,0(a5)
    800037b8:	ffffe097          	auipc	ra,0xffffe
    800037bc:	698080e7          	jalr	1688(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800037c0:	00190913          	addi	s2,s2,1
    800037c4:	fd5ff06f          	j	80003798 <_ZN20KObjectAllocatorTest5test0Em+0x340>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800037c8:	ffffe097          	auipc	ra,0xffffe
    800037cc:	4fc080e7          	jalr	1276(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800037d0:	0284b583          	ld	a1,40(s1)
    800037d4:	ffffe097          	auipc	ra,0xffffe
    800037d8:	67c080e7          	jalr	1660(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800037dc:	ffffe097          	auipc	ra,0xffffe
    800037e0:	4e8080e7          	jalr	1256(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800037e4:	0204b583          	ld	a1,32(s1)
    800037e8:	ffffe097          	auipc	ra,0xffffe
    800037ec:	668080e7          	jalr	1640(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800037f0:	ffffe097          	auipc	ra,0xffffe
    800037f4:	4d4080e7          	jalr	1236(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800037f8:	00048593          	mv	a1,s1
    800037fc:	ffffe097          	auipc	ra,0xffffe
    80003800:	654080e7          	jalr	1620(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003804:	00000a13          	li	s4,0
    80003808:	e09ff06f          	j	80003610 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        if (objByte != byte || objBit != bit) { delete objAlloc; return false; }
    8000380c:	06048a63          	beqz	s1,80003880 <_ZN20KObjectAllocatorTest5test0Em+0x428>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003810:	00000913          	li	s2,0
    80003814:	0304b783          	ld	a5,48(s1)
    80003818:	02f97663          	bgeu	s2,a5,80003844 <_ZN20KObjectAllocatorTest5test0Em+0x3ec>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    8000381c:	ffffe097          	auipc	ra,0xffffe
    80003820:	4a8080e7          	jalr	1192(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003824:	0284b783          	ld	a5,40(s1)
    80003828:	00391713          	slli	a4,s2,0x3
    8000382c:	00e787b3          	add	a5,a5,a4
    80003830:	0007b583          	ld	a1,0(a5)
    80003834:	ffffe097          	auipc	ra,0xffffe
    80003838:	61c080e7          	jalr	1564(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000383c:	00190913          	addi	s2,s2,1
    80003840:	fd5ff06f          	j	80003814 <_ZN20KObjectAllocatorTest5test0Em+0x3bc>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003844:	ffffe097          	auipc	ra,0xffffe
    80003848:	480080e7          	jalr	1152(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    8000384c:	0284b583          	ld	a1,40(s1)
    80003850:	ffffe097          	auipc	ra,0xffffe
    80003854:	600080e7          	jalr	1536(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003858:	ffffe097          	auipc	ra,0xffffe
    8000385c:	46c080e7          	jalr	1132(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003860:	0204b583          	ld	a1,32(s1)
    80003864:	ffffe097          	auipc	ra,0xffffe
    80003868:	5ec080e7          	jalr	1516(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    8000386c:	ffffe097          	auipc	ra,0xffffe
    80003870:	458080e7          	jalr	1112(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003874:	00048593          	mv	a1,s1
    80003878:	ffffe097          	auipc	ra,0xffffe
    8000387c:	5d8080e7          	jalr	1496(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003880:	00000a13          	li	s4,0
    80003884:	d8dff06f          	j	80003610 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        if (!getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003888:	d80484e3          	beqz	s1,80003610 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000388c:	00000913          	li	s2,0
    80003890:	0280006f          	j	800038b8 <_ZN20KObjectAllocatorTest5test0Em+0x460>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003894:	ffffe097          	auipc	ra,0xffffe
    80003898:	430080e7          	jalr	1072(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    8000389c:	0284b783          	ld	a5,40(s1)
    800038a0:	00391713          	slli	a4,s2,0x3
    800038a4:	00e787b3          	add	a5,a5,a4
    800038a8:	0007b583          	ld	a1,0(a5)
    800038ac:	ffffe097          	auipc	ra,0xffffe
    800038b0:	5a4080e7          	jalr	1444(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800038b4:	00190913          	addi	s2,s2,1
    800038b8:	0304b783          	ld	a5,48(s1)
    800038bc:	fcf96ce3          	bltu	s2,a5,80003894 <_ZN20KObjectAllocatorTest5test0Em+0x43c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800038c0:	ffffe097          	auipc	ra,0xffffe
    800038c4:	404080e7          	jalr	1028(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800038c8:	0284b583          	ld	a1,40(s1)
    800038cc:	ffffe097          	auipc	ra,0xffffe
    800038d0:	584080e7          	jalr	1412(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800038d4:	ffffe097          	auipc	ra,0xffffe
    800038d8:	3f0080e7          	jalr	1008(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800038dc:	0204b583          	ld	a1,32(s1)
    800038e0:	ffffe097          	auipc	ra,0xffffe
    800038e4:	570080e7          	jalr	1392(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800038e8:	ffffe097          	auipc	ra,0xffffe
    800038ec:	3dc080e7          	jalr	988(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800038f0:	00048593          	mv	a1,s1
    800038f4:	ffffe097          	auipc	ra,0xffffe
    800038f8:	55c080e7          	jalr	1372(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    800038fc:	d15ff06f          	j	80003610 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80003900:	001a8a93          	addi	s5,s5,1
    80003904:	00800913          	li	s2,8
    80003908:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 10; ++i) {
    8000390c:	001b0b13          	addi	s6,s6,1
    80003910:	00900793          	li	a5,9
    80003914:	0967e663          	bltu	a5,s6,800039a0 <_ZN20KObjectAllocatorTest5test0Em+0x548>
        if (objArr[i] != getObjectAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003918:	003b1793          	slli	a5,s6,0x3
    8000391c:	fb040713          	addi	a4,s0,-80
    80003920:	00f707b3          	add	a5,a4,a5
    80003924:	fb07ba03          	ld	s4,-80(a5)
    80003928:	00048693          	mv	a3,s1
    8000392c:	00090613          	mv	a2,s2
    80003930:	000a8593          	mv	a1,s5
    80003934:	00098513          	mv	a0,s3
    80003938:	00000097          	auipc	ra,0x0
    8000393c:	a94080e7          	jalr	-1388(ra) # 800033cc <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>
    80003940:	e4aa18e3          	bne	s4,a0,80003790 <_ZN20KObjectAllocatorTest5test0Em+0x338>
        size_t objByte = getByteOfObject(objArr[i], objAlloc);
    80003944:	00048613          	mv	a2,s1
    80003948:	000a0593          	mv	a1,s4
    8000394c:	00098513          	mv	a0,s3
    80003950:	00000097          	auipc	ra,0x0
    80003954:	980080e7          	jalr	-1664(ra) # 800032d0 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    80003958:	00050b93          	mv	s7,a0
        size_t objBit = getBitOfObject(objArr[i], objAlloc);
    8000395c:	00048613          	mv	a2,s1
    80003960:	000a0593          	mv	a1,s4
    80003964:	00098513          	mv	a0,s3
    80003968:	00000097          	auipc	ra,0x0
    8000396c:	9e0080e7          	jalr	-1568(ra) # 80003348 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
        if (objByte != byte || objBit != bit) { delete objAlloc; return false; }
    80003970:	e97a9ee3          	bne	s5,s7,8000380c <_ZN20KObjectAllocatorTest5test0Em+0x3b4>
    80003974:	e8a91ce3          	bne	s2,a0,8000380c <_ZN20KObjectAllocatorTest5test0Em+0x3b4>
        if (!getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003978:	00048693          	mv	a3,s1
    8000397c:	00090613          	mv	a2,s2
    80003980:	000a8593          	mv	a1,s5
    80003984:	00098513          	mv	a0,s3
    80003988:	00000097          	auipc	ra,0x0
    8000398c:	8c4080e7          	jalr	-1852(ra) # 8000324c <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80003990:	00050a13          	mv	s4,a0
    80003994:	ee050ae3          	beqz	a0,80003888 <_ZN20KObjectAllocatorTest5test0Em+0x430>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80003998:	f60918e3          	bnez	s2,80003908 <_ZN20KObjectAllocatorTest5test0Em+0x4b0>
    8000399c:	f65ff06f          	j	80003900 <_ZN20KObjectAllocatorTest5test0Em+0x4a8>
    for (size_t i = 0; i < 6; ++i) {
    800039a0:	00000a13          	li	s4,0
    800039a4:	0900006f          	j	80003a34 <_ZN20KObjectAllocatorTest5test0Em+0x5dc>
        if (getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    800039a8:	06048a63          	beqz	s1,80003a1c <_ZN20KObjectAllocatorTest5test0Em+0x5c4>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800039ac:	00000913          	li	s2,0
    800039b0:	0304b783          	ld	a5,48(s1)
    800039b4:	02f97663          	bgeu	s2,a5,800039e0 <_ZN20KObjectAllocatorTest5test0Em+0x588>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800039b8:	ffffe097          	auipc	ra,0xffffe
    800039bc:	30c080e7          	jalr	780(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800039c0:	0284b783          	ld	a5,40(s1)
    800039c4:	00391713          	slli	a4,s2,0x3
    800039c8:	00e787b3          	add	a5,a5,a4
    800039cc:	0007b583          	ld	a1,0(a5)
    800039d0:	ffffe097          	auipc	ra,0xffffe
    800039d4:	480080e7          	jalr	1152(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800039d8:	00190913          	addi	s2,s2,1
    800039dc:	fd5ff06f          	j	800039b0 <_ZN20KObjectAllocatorTest5test0Em+0x558>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800039e0:	ffffe097          	auipc	ra,0xffffe
    800039e4:	2e4080e7          	jalr	740(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800039e8:	0284b583          	ld	a1,40(s1)
    800039ec:	ffffe097          	auipc	ra,0xffffe
    800039f0:	464080e7          	jalr	1124(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    800039f4:	ffffe097          	auipc	ra,0xffffe
    800039f8:	2d0080e7          	jalr	720(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800039fc:	0204b583          	ld	a1,32(s1)
    80003a00:	ffffe097          	auipc	ra,0xffffe
    80003a04:	450080e7          	jalr	1104(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003a08:	ffffe097          	auipc	ra,0xffffe
    80003a0c:	2bc080e7          	jalr	700(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003a10:	00048593          	mv	a1,s1
    80003a14:	ffffe097          	auipc	ra,0xffffe
    80003a18:	43c080e7          	jalr	1084(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003a1c:	00000a13          	li	s4,0
    80003a20:	bf1ff06f          	j	80003610 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80003a24:	001a8a93          	addi	s5,s5,1
    80003a28:	00800913          	li	s2,8
    80003a2c:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 6; ++i) {
    80003a30:	001a0a13          	addi	s4,s4,1
    80003a34:	00500793          	li	a5,5
    80003a38:	0347e463          	bltu	a5,s4,80003a60 <_ZN20KObjectAllocatorTest5test0Em+0x608>
        if (getValueOfBitAt(byte, bit, objAlloc)) { delete objAlloc; return false; }
    80003a3c:	00048693          	mv	a3,s1
    80003a40:	00090613          	mv	a2,s2
    80003a44:	000a8593          	mv	a1,s5
    80003a48:	00098513          	mv	a0,s3
    80003a4c:	00000097          	auipc	ra,0x0
    80003a50:	800080e7          	jalr	-2048(ra) # 8000324c <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80003a54:	f4051ae3          	bnez	a0,800039a8 <_ZN20KObjectAllocatorTest5test0Em+0x550>
        if (bit == 0) { ++byte; bit = 8; } --bit;
    80003a58:	fc091ae3          	bnez	s2,80003a2c <_ZN20KObjectAllocatorTest5test0Em+0x5d4>
    80003a5c:	fc9ff06f          	j	80003a24 <_ZN20KObjectAllocatorTest5test0Em+0x5cc>
    objAlloc->freeObject(objArr[4]);
    80003a60:	f8043583          	ld	a1,-128(s0)
    80003a64:	00048513          	mv	a0,s1
    80003a68:	00001097          	auipc	ra,0x1
    80003a6c:	30c080e7          	jalr	780(ra) # 80004d74 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[7]);
    80003a70:	f9843583          	ld	a1,-104(s0)
    80003a74:	00048513          	mv	a0,s1
    80003a78:	00001097          	auipc	ra,0x1
    80003a7c:	2fc080e7          	jalr	764(ra) # 80004d74 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[8]);
    80003a80:	fa043583          	ld	a1,-96(s0)
    80003a84:	00048513          	mv	a0,s1
    80003a88:	00001097          	auipc	ra,0x1
    80003a8c:	2ec080e7          	jalr	748(ra) # 80004d74 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[4] = objAlloc->allocateNewObject();
    80003a90:	00048513          	mv	a0,s1
    80003a94:	00001097          	auipc	ra,0x1
    80003a98:	560080e7          	jalr	1376(ra) # 80004ff4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80003a9c:	00050913          	mv	s2,a0
    if (objArr[4] != getObjectAt(1, 7, objAlloc)) { delete objAlloc; return false; }
    80003aa0:	00048693          	mv	a3,s1
    80003aa4:	00700613          	li	a2,7
    80003aa8:	00100593          	li	a1,1
    80003aac:	00098513          	mv	a0,s3
    80003ab0:	00000097          	auipc	ra,0x0
    80003ab4:	91c080e7          	jalr	-1764(ra) # 800033cc <_ZN20KObjectAllocatorTest11getObjectAtEmmP16KObjectAllocator>
    80003ab8:	08a90063          	beq	s2,a0,80003b38 <_ZN20KObjectAllocatorTest5test0Em+0x6e0>
    80003abc:	06048a63          	beqz	s1,80003b30 <_ZN20KObjectAllocatorTest5test0Em+0x6d8>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003ac0:	00000913          	li	s2,0
    80003ac4:	0280006f          	j	80003aec <_ZN20KObjectAllocatorTest5test0Em+0x694>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003ac8:	ffffe097          	auipc	ra,0xffffe
    80003acc:	1fc080e7          	jalr	508(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003ad0:	0284b783          	ld	a5,40(s1)
    80003ad4:	00391713          	slli	a4,s2,0x3
    80003ad8:	00e787b3          	add	a5,a5,a4
    80003adc:	0007b583          	ld	a1,0(a5)
    80003ae0:	ffffe097          	auipc	ra,0xffffe
    80003ae4:	370080e7          	jalr	880(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003ae8:	00190913          	addi	s2,s2,1
    80003aec:	0304b783          	ld	a5,48(s1)
    80003af0:	fcf96ce3          	bltu	s2,a5,80003ac8 <_ZN20KObjectAllocatorTest5test0Em+0x670>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003af4:	ffffe097          	auipc	ra,0xffffe
    80003af8:	1d0080e7          	jalr	464(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003afc:	0284b583          	ld	a1,40(s1)
    80003b00:	ffffe097          	auipc	ra,0xffffe
    80003b04:	350080e7          	jalr	848(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003b08:	ffffe097          	auipc	ra,0xffffe
    80003b0c:	1bc080e7          	jalr	444(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003b10:	0204b583          	ld	a1,32(s1)
    80003b14:	ffffe097          	auipc	ra,0xffffe
    80003b18:	33c080e7          	jalr	828(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003b1c:	ffffe097          	auipc	ra,0xffffe
    80003b20:	1a8080e7          	jalr	424(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003b24:	00048593          	mv	a1,s1
    80003b28:	ffffe097          	auipc	ra,0xffffe
    80003b2c:	328080e7          	jalr	808(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003b30:	00000a13          	li	s4,0
    80003b34:	addff06f          	j	80003610 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    byte = getByteOfObject(objArr[4], objAlloc);
    80003b38:	00048613          	mv	a2,s1
    80003b3c:	00090593          	mv	a1,s2
    80003b40:	00098513          	mv	a0,s3
    80003b44:	fffff097          	auipc	ra,0xfffff
    80003b48:	78c080e7          	jalr	1932(ra) # 800032d0 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    80003b4c:	00050a13          	mv	s4,a0
    bit = getBitOfObject(objArr[4], objAlloc);
    80003b50:	00048613          	mv	a2,s1
    80003b54:	00090593          	mv	a1,s2
    80003b58:	00098513          	mv	a0,s3
    80003b5c:	fffff097          	auipc	ra,0xfffff
    80003b60:	7ec080e7          	jalr	2028(ra) # 80003348 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80003b64:	00050913          	mv	s2,a0
    if (byte != 1 || bit != 7) { delete objAlloc; return false; }
    80003b68:	00100793          	li	a5,1
    80003b6c:	00fa1663          	bne	s4,a5,80003b78 <_ZN20KObjectAllocatorTest5test0Em+0x720>
    80003b70:	00700793          	li	a5,7
    80003b74:	08f50063          	beq	a0,a5,80003bf4 <_ZN20KObjectAllocatorTest5test0Em+0x79c>
    80003b78:	06048a63          	beqz	s1,80003bec <_ZN20KObjectAllocatorTest5test0Em+0x794>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003b7c:	00000913          	li	s2,0
    80003b80:	0280006f          	j	80003ba8 <_ZN20KObjectAllocatorTest5test0Em+0x750>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003b84:	ffffe097          	auipc	ra,0xffffe
    80003b88:	140080e7          	jalr	320(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003b8c:	0284b783          	ld	a5,40(s1)
    80003b90:	00391713          	slli	a4,s2,0x3
    80003b94:	00e787b3          	add	a5,a5,a4
    80003b98:	0007b583          	ld	a1,0(a5)
    80003b9c:	ffffe097          	auipc	ra,0xffffe
    80003ba0:	2b4080e7          	jalr	692(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003ba4:	00190913          	addi	s2,s2,1
    80003ba8:	0304b783          	ld	a5,48(s1)
    80003bac:	fcf96ce3          	bltu	s2,a5,80003b84 <_ZN20KObjectAllocatorTest5test0Em+0x72c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003bb0:	ffffe097          	auipc	ra,0xffffe
    80003bb4:	114080e7          	jalr	276(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003bb8:	0284b583          	ld	a1,40(s1)
    80003bbc:	ffffe097          	auipc	ra,0xffffe
    80003bc0:	294080e7          	jalr	660(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003bc4:	ffffe097          	auipc	ra,0xffffe
    80003bc8:	100080e7          	jalr	256(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003bcc:	0204b583          	ld	a1,32(s1)
    80003bd0:	ffffe097          	auipc	ra,0xffffe
    80003bd4:	280080e7          	jalr	640(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003bd8:	ffffe097          	auipc	ra,0xffffe
    80003bdc:	0ec080e7          	jalr	236(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003be0:	00048593          	mv	a1,s1
    80003be4:	ffffe097          	auipc	ra,0xffffe
    80003be8:	26c080e7          	jalr	620(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003bec:	00000a13          	li	s4,0
    80003bf0:	a21ff06f          	j	80003610 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    bool expectedBitValues[16] = {
    80003bf4:	00005797          	auipc	a5,0x5
    80003bf8:	99478793          	addi	a5,a5,-1644 # 80008588 <CONSOLE_STATUS+0x578>
    80003bfc:	0007b703          	ld	a4,0(a5)
    80003c00:	f4e43823          	sd	a4,-176(s0)
    80003c04:	0087b783          	ld	a5,8(a5)
    80003c08:	f4f43c23          	sd	a5,-168(s0)
    for (size_t i = 0; i < 16; ++i) {
    80003c0c:	00000a13          	li	s4,0
    byte = 0; bit = 7;
    80003c10:	00000a93          	li	s5,0
    80003c14:	02c0006f          	j	80003c40 <_ZN20KObjectAllocatorTest5test0Em+0x7e8>
            { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    80003c18:	00048863          	beqz	s1,80003c28 <_ZN20KObjectAllocatorTest5test0Em+0x7d0>
    80003c1c:	00048513          	mv	a0,s1
    80003c20:	ffffe097          	auipc	ra,0xffffe
    80003c24:	d64080e7          	jalr	-668(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80003c28:	00000a13          	li	s4,0
    80003c2c:	9e5ff06f          	j	80003610 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    80003c30:	001a8a93          	addi	s5,s5,1
    80003c34:	00800913          	li	s2,8
    80003c38:	fff90913          	addi	s2,s2,-1
    for (size_t i = 0; i < 16; ++i) {
    80003c3c:	001a0a13          	addi	s4,s4,1
    80003c40:	00f00793          	li	a5,15
    80003c44:	0347ea63          	bltu	a5,s4,80003c78 <_ZN20KObjectAllocatorTest5test0Em+0x820>
        if (expectedBitValues[i] != getValueOfBitAt(byte, bit, objAlloc))
    80003c48:	fb040793          	addi	a5,s0,-80
    80003c4c:	014787b3          	add	a5,a5,s4
    80003c50:	fa07cb03          	lbu	s6,-96(a5)
    80003c54:	00048693          	mv	a3,s1
    80003c58:	00090613          	mv	a2,s2
    80003c5c:	000a8593          	mv	a1,s5
    80003c60:	00098513          	mv	a0,s3
    80003c64:	fffff097          	auipc	ra,0xfffff
    80003c68:	5e8080e7          	jalr	1512(ra) # 8000324c <_ZN20KObjectAllocatorTest15getValueOfBitAtEmmP16KObjectAllocator>
    80003c6c:	faab16e3          	bne	s6,a0,80003c18 <_ZN20KObjectAllocatorTest5test0Em+0x7c0>
            { delete objAlloc; return false; } if (bit == 0) { ++byte; bit = 8; } --bit;
    80003c70:	fc0914e3          	bnez	s2,80003c38 <_ZN20KObjectAllocatorTest5test0Em+0x7e0>
    80003c74:	fbdff06f          	j	80003c30 <_ZN20KObjectAllocatorTest5test0Em+0x7d8>
    delete objAlloc;
    80003c78:	06048e63          	beqz	s1,80003cf4 <_ZN20KObjectAllocatorTest5test0Em+0x89c>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003c7c:	00000913          	li	s2,0
    80003c80:	0280006f          	j	80003ca8 <_ZN20KObjectAllocatorTest5test0Em+0x850>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003c84:	ffffe097          	auipc	ra,0xffffe
    80003c88:	040080e7          	jalr	64(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003c8c:	0284b783          	ld	a5,40(s1)
    80003c90:	00391713          	slli	a4,s2,0x3
    80003c94:	00e787b3          	add	a5,a5,a4
    80003c98:	0007b583          	ld	a1,0(a5)
    80003c9c:	ffffe097          	auipc	ra,0xffffe
    80003ca0:	1b4080e7          	jalr	436(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003ca4:	00190913          	addi	s2,s2,1
    80003ca8:	0304b783          	ld	a5,48(s1)
    80003cac:	fcf96ce3          	bltu	s2,a5,80003c84 <_ZN20KObjectAllocatorTest5test0Em+0x82c>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003cb0:	ffffe097          	auipc	ra,0xffffe
    80003cb4:	014080e7          	jalr	20(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003cb8:	0284b583          	ld	a1,40(s1)
    80003cbc:	ffffe097          	auipc	ra,0xffffe
    80003cc0:	194080e7          	jalr	404(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003cc4:	ffffe097          	auipc	ra,0xffffe
    80003cc8:	000080e7          	jalr	ra # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003ccc:	0204b583          	ld	a1,32(s1)
    80003cd0:	ffffe097          	auipc	ra,0xffffe
    80003cd4:	180080e7          	jalr	384(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003cd8:	ffffe097          	auipc	ra,0xffffe
    80003cdc:	fec080e7          	jalr	-20(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003ce0:	00048593          	mv	a1,s1
    80003ce4:	ffffe097          	auipc	ra,0xffffe
    80003ce8:	16c080e7          	jalr	364(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    return true;
    80003cec:	00100a13          	li	s4,1
    }
    80003cf0:	921ff06f          	j	80003610 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    80003cf4:	00100a13          	li	s4,1
    80003cf8:	919ff06f          	j	80003610 <_ZN20KObjectAllocatorTest5test0Em+0x1b8>
    80003cfc:	00050913          	mv	s2,a0
    KObjectAllocator* objAlloc = new KObjectAllocator(size, 9);
    80003d00:	00048513          	mv	a0,s1
    80003d04:	ffffe097          	auipc	ra,0xffffe
    80003d08:	c80080e7          	jalr	-896(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80003d0c:	00090513          	mv	a0,s2
    80003d10:	00007097          	auipc	ra,0x7
    80003d14:	a58080e7          	jalr	-1448(ra) # 8000a768 <_Unwind_Resume>

0000000080003d18 <_ZN20KObjectAllocatorTest5test1Em>:

bool KObjectAllocatorTest::test1(size_t size) {
    80003d18:	81010113          	addi	sp,sp,-2032
    80003d1c:	7e113423          	sd	ra,2024(sp)
    80003d20:	7e813023          	sd	s0,2016(sp)
    80003d24:	7c913c23          	sd	s1,2008(sp)
    80003d28:	7d213823          	sd	s2,2000(sp)
    80003d2c:	7d313423          	sd	s3,1992(sp)
    80003d30:	7d413023          	sd	s4,1984(sp)
    80003d34:	7b513c23          	sd	s5,1976(sp)
    80003d38:	7f010413          	addi	s0,sp,2032
    80003d3c:	db010113          	addi	sp,sp,-592
    80003d40:	00050993          	mv	s3,a0
    80003d44:	00058913          	mv	s2,a1
        return MemoryAllocator::instance()->kmem_alloc(size);
    80003d48:	ffffe097          	auipc	ra,0xffffe
    80003d4c:	f7c080e7          	jalr	-132(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003d50:	04000593          	li	a1,64
    80003d54:	ffffe097          	auipc	ra,0xffffe
    80003d58:	054080e7          	jalr	84(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80003d5c:	00050493          	mv	s1,a0
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    80003d60:	14000793          	li	a5,320
    80003d64:	00f53023          	sd	a5,0(a0)
    80003d68:	00f53423          	sd	a5,8(a0)
    80003d6c:	01253c23          	sd	s2,24(a0)
    80003d70:	00100793          	li	a5,1
    80003d74:	02f53823          	sd	a5,48(a0)
    80003d78:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80003d7c:	ffffe097          	auipc	ra,0xffffe
    80003d80:	f48080e7          	jalr	-184(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003d84:	0304b583          	ld	a1,48(s1)
    80003d88:	00359593          	slli	a1,a1,0x3
    80003d8c:	ffffe097          	auipc	ra,0xffffe
    80003d90:	01c080e7          	jalr	28(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80003d94:	02a4b423          	sd	a0,40(s1)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80003d98:	ffffe097          	auipc	ra,0xffffe
    80003d9c:	f2c080e7          	jalr	-212(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003da0:	0304b583          	ld	a1,48(s1)
    80003da4:	00359593          	slli	a1,a1,0x3
    80003da8:	ffffe097          	auipc	ra,0xffffe
    80003dac:	000080e7          	jalr	ra # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80003db0:	02a4b023          	sd	a0,32(s1)
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80003db4:	0084b703          	ld	a4,8(s1)
    80003db8:	ff877793          	andi	a5,a4,-8
    80003dbc:	02f70463          	beq	a4,a5,80003de4 <_ZN20KObjectAllocatorTest5test1Em+0xcc>
    80003dc0:	00800713          	li	a4,8
    80003dc4:	00e787b3          	add	a5,a5,a4
    80003dc8:	00f4b423          	sd	a5,8(s1)
    80003dcc:	00f4b023          	sd	a5,0(s1)
        memorySizeForBits = numberOfObjects / 8;
    80003dd0:	0037d793          	srli	a5,a5,0x3
    80003dd4:	00f4b823          	sd	a5,16(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80003dd8:	ffffe097          	auipc	ra,0xffffe
    80003ddc:	eec080e7          	jalr	-276(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003de0:	00c0006f          	j	80003dec <_ZN20KObjectAllocatorTest5test1Em+0xd4>
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80003de4:	00000713          	li	a4,0
    80003de8:	fddff06f          	j	80003dc4 <_ZN20KObjectAllocatorTest5test1Em+0xac>
                memorySizeForBits + initialNumberOfObjects * objectSize
    80003dec:	0104b583          	ld	a1,16(s1)
    80003df0:	0004b783          	ld	a5,0(s1)
    80003df4:	02f907b3          	mul	a5,s2,a5
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80003df8:	0284ba03          	ld	s4,40(s1)
    80003dfc:	00f585b3          	add	a1,a1,a5
    80003e00:	ffffe097          	auipc	ra,0xffffe
    80003e04:	fa8080e7          	jalr	-88(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80003e08:	00aa3023          	sd	a0,0(s4)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    80003e0c:	0284b783          	ld	a5,40(s1)
    80003e10:	0007b783          	ld	a5,0(a5)
    80003e14:	0104b683          	ld	a3,16(s1)
    80003e18:	0204b703          	ld	a4,32(s1)
    80003e1c:	00d787b3          	add	a5,a5,a3
    80003e20:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    80003e24:	00000793          	li	a5,0
    80003e28:	0104b703          	ld	a4,16(s1)
    80003e2c:	00e7fe63          	bgeu	a5,a4,80003e48 <_ZN20KObjectAllocatorTest5test1Em+0x130>
    80003e30:	0284b703          	ld	a4,40(s1)
    80003e34:	00073703          	ld	a4,0(a4)
    80003e38:	00f70733          	add	a4,a4,a5
    80003e3c:	00070023          	sb	zero,0(a4)
    80003e40:	00178793          	addi	a5,a5,1
    80003e44:	fe5ff06f          	j	80003e28 <_ZN20KObjectAllocatorTest5test1Em+0x110>
    size_t getNumberOfObjects() { return numberOfObjects; }
    80003e48:	0084b703          	ld	a4,8(s1)
    KObjectAllocator* objAlloc = new KObjectAllocator(size);
    if (objAlloc->getNumberOfObjects() != 320) { delete objAlloc; return false; }
    80003e4c:	14000793          	li	a5,320
    80003e50:	0af70263          	beq	a4,a5,80003ef4 <_ZN20KObjectAllocatorTest5test1Em+0x1dc>
    80003e54:	06048a63          	beqz	s1,80003ec8 <_ZN20KObjectAllocatorTest5test1Em+0x1b0>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003e58:	00000913          	li	s2,0
    80003e5c:	0304b783          	ld	a5,48(s1)
    80003e60:	02f97663          	bgeu	s2,a5,80003e8c <_ZN20KObjectAllocatorTest5test1Em+0x174>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003e64:	ffffe097          	auipc	ra,0xffffe
    80003e68:	e60080e7          	jalr	-416(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003e6c:	0284b783          	ld	a5,40(s1)
    80003e70:	00391713          	slli	a4,s2,0x3
    80003e74:	00e787b3          	add	a5,a5,a4
    80003e78:	0007b583          	ld	a1,0(a5)
    80003e7c:	ffffe097          	auipc	ra,0xffffe
    80003e80:	fd4080e7          	jalr	-44(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003e84:	00190913          	addi	s2,s2,1
    80003e88:	fd5ff06f          	j	80003e5c <_ZN20KObjectAllocatorTest5test1Em+0x144>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003e8c:	ffffe097          	auipc	ra,0xffffe
    80003e90:	e38080e7          	jalr	-456(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003e94:	0284b583          	ld	a1,40(s1)
    80003e98:	ffffe097          	auipc	ra,0xffffe
    80003e9c:	fb8080e7          	jalr	-72(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003ea0:	ffffe097          	auipc	ra,0xffffe
    80003ea4:	e24080e7          	jalr	-476(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003ea8:	0204b583          	ld	a1,32(s1)
    80003eac:	ffffe097          	auipc	ra,0xffffe
    80003eb0:	fa4080e7          	jalr	-92(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003eb4:	ffffe097          	auipc	ra,0xffffe
    80003eb8:	e10080e7          	jalr	-496(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003ebc:	00048593          	mv	a1,s1
    80003ec0:	ffffe097          	auipc	ra,0xffffe
    80003ec4:	f90080e7          	jalr	-112(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003ec8:	00000513          	li	a0,0
        { delete objAlloc; return false; }
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    }
    delete objAlloc;
    return true;
}
    80003ecc:	25010113          	addi	sp,sp,592
    80003ed0:	7e813083          	ld	ra,2024(sp)
    80003ed4:	7e013403          	ld	s0,2016(sp)
    80003ed8:	7d813483          	ld	s1,2008(sp)
    80003edc:	7d013903          	ld	s2,2000(sp)
    80003ee0:	7c813983          	ld	s3,1992(sp)
    80003ee4:	7c013a03          	ld	s4,1984(sp)
    80003ee8:	7b813a83          	ld	s5,1976(sp)
    80003eec:	7f010113          	addi	sp,sp,2032
    80003ef0:	00008067          	ret
    size_t getMemorySizeForBits() { return memorySizeForBits; }
    80003ef4:	0104b703          	ld	a4,16(s1)
    if (objAlloc->getMemorySizeForBits() != 40) { delete objAlloc; return false; }
    80003ef8:	02800793          	li	a5,40
    80003efc:	08f70063          	beq	a4,a5,80003f7c <_ZN20KObjectAllocatorTest5test1Em+0x264>
    80003f00:	06048a63          	beqz	s1,80003f74 <_ZN20KObjectAllocatorTest5test1Em+0x25c>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003f04:	00000913          	li	s2,0
    80003f08:	0304b783          	ld	a5,48(s1)
    80003f0c:	02f97663          	bgeu	s2,a5,80003f38 <_ZN20KObjectAllocatorTest5test1Em+0x220>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003f10:	ffffe097          	auipc	ra,0xffffe
    80003f14:	db4080e7          	jalr	-588(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003f18:	0284b783          	ld	a5,40(s1)
    80003f1c:	00391713          	slli	a4,s2,0x3
    80003f20:	00e787b3          	add	a5,a5,a4
    80003f24:	0007b583          	ld	a1,0(a5)
    80003f28:	ffffe097          	auipc	ra,0xffffe
    80003f2c:	f28080e7          	jalr	-216(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003f30:	00190913          	addi	s2,s2,1
    80003f34:	fd5ff06f          	j	80003f08 <_ZN20KObjectAllocatorTest5test1Em+0x1f0>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003f38:	ffffe097          	auipc	ra,0xffffe
    80003f3c:	d8c080e7          	jalr	-628(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003f40:	0284b583          	ld	a1,40(s1)
    80003f44:	ffffe097          	auipc	ra,0xffffe
    80003f48:	f0c080e7          	jalr	-244(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003f4c:	ffffe097          	auipc	ra,0xffffe
    80003f50:	d78080e7          	jalr	-648(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003f54:	0204b583          	ld	a1,32(s1)
    80003f58:	ffffe097          	auipc	ra,0xffffe
    80003f5c:	ef8080e7          	jalr	-264(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003f60:	ffffe097          	auipc	ra,0xffffe
    80003f64:	d64080e7          	jalr	-668(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003f68:	00048593          	mv	a1,s1
    80003f6c:	ffffe097          	auipc	ra,0xffffe
    80003f70:	ee4080e7          	jalr	-284(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003f74:	00000513          	li	a0,0
    80003f78:	f55ff06f          	j	80003ecc <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    size_t getObjectSize() { return objectSize; }
    80003f7c:	0184b783          	ld	a5,24(s1)
    if (objAlloc->getObjectSize() != size) { delete objAlloc; return false; }
    80003f80:	08f90063          	beq	s2,a5,80004000 <_ZN20KObjectAllocatorTest5test1Em+0x2e8>
    80003f84:	06048a63          	beqz	s1,80003ff8 <_ZN20KObjectAllocatorTest5test1Em+0x2e0>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003f88:	00000913          	li	s2,0
    80003f8c:	0304b783          	ld	a5,48(s1)
    80003f90:	02f97663          	bgeu	s2,a5,80003fbc <_ZN20KObjectAllocatorTest5test1Em+0x2a4>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80003f94:	ffffe097          	auipc	ra,0xffffe
    80003f98:	d30080e7          	jalr	-720(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003f9c:	0284b783          	ld	a5,40(s1)
    80003fa0:	00391713          	slli	a4,s2,0x3
    80003fa4:	00e787b3          	add	a5,a5,a4
    80003fa8:	0007b583          	ld	a1,0(a5)
    80003fac:	ffffe097          	auipc	ra,0xffffe
    80003fb0:	ea4080e7          	jalr	-348(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80003fb4:	00190913          	addi	s2,s2,1
    80003fb8:	fd5ff06f          	j	80003f8c <_ZN20KObjectAllocatorTest5test1Em+0x274>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80003fbc:	ffffe097          	auipc	ra,0xffffe
    80003fc0:	d08080e7          	jalr	-760(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003fc4:	0284b583          	ld	a1,40(s1)
    80003fc8:	ffffe097          	auipc	ra,0xffffe
    80003fcc:	e88080e7          	jalr	-376(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80003fd0:	ffffe097          	auipc	ra,0xffffe
    80003fd4:	cf4080e7          	jalr	-780(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003fd8:	0204b583          	ld	a1,32(s1)
    80003fdc:	ffffe097          	auipc	ra,0xffffe
    80003fe0:	e74080e7          	jalr	-396(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80003fe4:	ffffe097          	auipc	ra,0xffffe
    80003fe8:	ce0080e7          	jalr	-800(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80003fec:	00048593          	mv	a1,s1
    80003ff0:	ffffe097          	auipc	ra,0xffffe
    80003ff4:	e60080e7          	jalr	-416(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    80003ff8:	00000513          	li	a0,0
    80003ffc:	ed1ff06f          	j	80003ecc <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    void* objArr[320]; for (size_t i = 0; i < 32; objArr[i++] = objAlloc->allocateNewObject());
    80004000:	00000913          	li	s2,0
    80004004:	01f00793          	li	a5,31
    80004008:	0327ea63          	bltu	a5,s2,8000403c <_ZN20KObjectAllocatorTest5test1Em+0x324>
    8000400c:	00190a13          	addi	s4,s2,1
    80004010:	00048513          	mv	a0,s1
    80004014:	00001097          	auipc	ra,0x1
    80004018:	fe0080e7          	jalr	-32(ra) # 80004ff4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    8000401c:	fffff7b7          	lui	a5,0xfffff
    80004020:	00391913          	slli	s2,s2,0x3
    80004024:	fc040713          	addi	a4,s0,-64
    80004028:	00f707b3          	add	a5,a4,a5
    8000402c:	01278933          	add	s2,a5,s2
    80004030:	60a93023          	sd	a0,1536(s2)
    80004034:	000a0913          	mv	s2,s4
    80004038:	fcdff06f          	j	80004004 <_ZN20KObjectAllocatorTest5test1Em+0x2ec>
    if (getByteOfObject(objArr[31], objAlloc) != 3
    8000403c:	fffff7b7          	lui	a5,0xfffff
    80004040:	fc040713          	addi	a4,s0,-64
    80004044:	00f707b3          	add	a5,a4,a5
    80004048:	6f87b903          	ld	s2,1784(a5) # fffffffffffff6f8 <end+0xffffffff7fff4de8>
    8000404c:	00048613          	mv	a2,s1
    80004050:	00090593          	mv	a1,s2
    80004054:	00098513          	mv	a0,s3
    80004058:	fffff097          	auipc	ra,0xfffff
    8000405c:	278080e7          	jalr	632(ra) # 800032d0 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[31], objAlloc) != 0)
    80004060:	00300793          	li	a5,3
    80004064:	02f50e63          	beq	a0,a5,800040a0 <_ZN20KObjectAllocatorTest5test1Em+0x388>
        { delete objAlloc; return false; }
    80004068:	0c048c63          	beqz	s1,80004140 <_ZN20KObjectAllocatorTest5test1Em+0x428>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000406c:	00000913          	li	s2,0
    80004070:	0304b783          	ld	a5,48(s1)
    80004074:	08f97863          	bgeu	s2,a5,80004104 <_ZN20KObjectAllocatorTest5test1Em+0x3ec>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004078:	ffffe097          	auipc	ra,0xffffe
    8000407c:	c4c080e7          	jalr	-948(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004080:	0284b783          	ld	a5,40(s1)
    80004084:	00391713          	slli	a4,s2,0x3
    80004088:	00e787b3          	add	a5,a5,a4
    8000408c:	0007b583          	ld	a1,0(a5)
    80004090:	ffffe097          	auipc	ra,0xffffe
    80004094:	dc0080e7          	jalr	-576(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004098:	00190913          	addi	s2,s2,1
    8000409c:	fd5ff06f          	j	80004070 <_ZN20KObjectAllocatorTest5test1Em+0x358>
        || getBitOfObject(objArr[31], objAlloc) != 0)
    800040a0:	00048613          	mv	a2,s1
    800040a4:	00090593          	mv	a1,s2
    800040a8:	00098513          	mv	a0,s3
    800040ac:	fffff097          	auipc	ra,0xfffff
    800040b0:	29c080e7          	jalr	668(ra) # 80003348 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800040b4:	00050a93          	mv	s5,a0
    800040b8:	fa0518e3          	bnez	a0,80004068 <_ZN20KObjectAllocatorTest5test1Em+0x350>
    if (objAlloc->nextNonTakenByte != 4) { delete objAlloc; return false; }
    800040bc:	0384b703          	ld	a4,56(s1)
    800040c0:	00400793          	li	a5,4
    800040c4:	08f71263          	bne	a4,a5,80004148 <_ZN20KObjectAllocatorTest5test1Em+0x430>
    for (size_t i = 32; i < 320; objArr[i++] = objAlloc->allocateNewObject());
    800040c8:	02000913          	li	s2,32
    800040cc:	13f00793          	li	a5,319
    800040d0:	0f27e863          	bltu	a5,s2,800041c0 <_ZN20KObjectAllocatorTest5test1Em+0x4a8>
    800040d4:	00190a13          	addi	s4,s2,1
    800040d8:	00048513          	mv	a0,s1
    800040dc:	00001097          	auipc	ra,0x1
    800040e0:	f18080e7          	jalr	-232(ra) # 80004ff4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800040e4:	fffff7b7          	lui	a5,0xfffff
    800040e8:	00391913          	slli	s2,s2,0x3
    800040ec:	fc040713          	addi	a4,s0,-64
    800040f0:	00f707b3          	add	a5,a4,a5
    800040f4:	01278933          	add	s2,a5,s2
    800040f8:	60a93023          	sd	a0,1536(s2)
    800040fc:	000a0913          	mv	s2,s4
    80004100:	fcdff06f          	j	800040cc <_ZN20KObjectAllocatorTest5test1Em+0x3b4>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004104:	ffffe097          	auipc	ra,0xffffe
    80004108:	bc0080e7          	jalr	-1088(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    8000410c:	0284b583          	ld	a1,40(s1)
    80004110:	ffffe097          	auipc	ra,0xffffe
    80004114:	d40080e7          	jalr	-704(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004118:	ffffe097          	auipc	ra,0xffffe
    8000411c:	bac080e7          	jalr	-1108(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004120:	0204b583          	ld	a1,32(s1)
    80004124:	ffffe097          	auipc	ra,0xffffe
    80004128:	d2c080e7          	jalr	-724(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    8000412c:	ffffe097          	auipc	ra,0xffffe
    80004130:	b98080e7          	jalr	-1128(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004134:	00048593          	mv	a1,s1
    80004138:	ffffe097          	auipc	ra,0xffffe
    8000413c:	d18080e7          	jalr	-744(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        { delete objAlloc; return false; }
    80004140:	00000513          	li	a0,0
    80004144:	d89ff06f          	j	80003ecc <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    if (objAlloc->nextNonTakenByte != 4) { delete objAlloc; return false; }
    80004148:	02049663          	bnez	s1,80004174 <_ZN20KObjectAllocatorTest5test1Em+0x45c>
    8000414c:	06c0006f          	j	800041b8 <_ZN20KObjectAllocatorTest5test1Em+0x4a0>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004150:	ffffe097          	auipc	ra,0xffffe
    80004154:	b74080e7          	jalr	-1164(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004158:	0284b783          	ld	a5,40(s1)
    8000415c:	003a9713          	slli	a4,s5,0x3
    80004160:	00e787b3          	add	a5,a5,a4
    80004164:	0007b583          	ld	a1,0(a5) # fffffffffffff000 <end+0xffffffff7fff46f0>
    80004168:	ffffe097          	auipc	ra,0xffffe
    8000416c:	ce8080e7          	jalr	-792(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004170:	001a8a93          	addi	s5,s5,1
    80004174:	0304b783          	ld	a5,48(s1)
    80004178:	fcfaece3          	bltu	s5,a5,80004150 <_ZN20KObjectAllocatorTest5test1Em+0x438>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    8000417c:	ffffe097          	auipc	ra,0xffffe
    80004180:	b48080e7          	jalr	-1208(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004184:	0284b583          	ld	a1,40(s1)
    80004188:	ffffe097          	auipc	ra,0xffffe
    8000418c:	cc8080e7          	jalr	-824(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004190:	ffffe097          	auipc	ra,0xffffe
    80004194:	b34080e7          	jalr	-1228(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004198:	0204b583          	ld	a1,32(s1)
    8000419c:	ffffe097          	auipc	ra,0xffffe
    800041a0:	cb4080e7          	jalr	-844(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800041a4:	ffffe097          	auipc	ra,0xffffe
    800041a8:	b20080e7          	jalr	-1248(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800041ac:	00048593          	mv	a1,s1
    800041b0:	ffffe097          	auipc	ra,0xffffe
    800041b4:	ca0080e7          	jalr	-864(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    800041b8:	00000513          	li	a0,0
    800041bc:	d11ff06f          	j	80003ecc <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    if (objAlloc->nextNonTakenByte != 40) { delete objAlloc; return false; }
    800041c0:	0384b703          	ld	a4,56(s1)
    800041c4:	02800793          	li	a5,40
    800041c8:	06f70e63          	beq	a4,a5,80004244 <_ZN20KObjectAllocatorTest5test1Em+0x52c>
    800041cc:	06048863          	beqz	s1,8000423c <_ZN20KObjectAllocatorTest5test1Em+0x524>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800041d0:	0304b783          	ld	a5,48(s1)
    800041d4:	02faf663          	bgeu	s5,a5,80004200 <_ZN20KObjectAllocatorTest5test1Em+0x4e8>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    800041d8:	ffffe097          	auipc	ra,0xffffe
    800041dc:	aec080e7          	jalr	-1300(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800041e0:	0284b783          	ld	a5,40(s1)
    800041e4:	003a9713          	slli	a4,s5,0x3
    800041e8:	00e787b3          	add	a5,a5,a4
    800041ec:	0007b583          	ld	a1,0(a5)
    800041f0:	ffffe097          	auipc	ra,0xffffe
    800041f4:	c60080e7          	jalr	-928(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800041f8:	001a8a93          	addi	s5,s5,1
    800041fc:	fd5ff06f          	j	800041d0 <_ZN20KObjectAllocatorTest5test1Em+0x4b8>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80004200:	ffffe097          	auipc	ra,0xffffe
    80004204:	ac4080e7          	jalr	-1340(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004208:	0284b583          	ld	a1,40(s1)
    8000420c:	ffffe097          	auipc	ra,0xffffe
    80004210:	c44080e7          	jalr	-956(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004214:	ffffe097          	auipc	ra,0xffffe
    80004218:	ab0080e7          	jalr	-1360(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    8000421c:	0204b583          	ld	a1,32(s1)
    80004220:	ffffe097          	auipc	ra,0xffffe
    80004224:	c30080e7          	jalr	-976(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004228:	ffffe097          	auipc	ra,0xffffe
    8000422c:	a9c080e7          	jalr	-1380(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004230:	00048593          	mv	a1,s1
    80004234:	ffffe097          	auipc	ra,0xffffe
    80004238:	c1c080e7          	jalr	-996(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    8000423c:	00000513          	li	a0,0
    80004240:	c8dff06f          	j	80003ecc <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    objAlloc->freeObject(objArr[7 * 8]);
    80004244:	fffff7b7          	lui	a5,0xfffff
    80004248:	fc040713          	addi	a4,s0,-64
    8000424c:	00f707b3          	add	a5,a4,a5
    80004250:	7c07b583          	ld	a1,1984(a5) # fffffffffffff7c0 <end+0xffffffff7fff4eb0>
    80004254:	00048513          	mv	a0,s1
    80004258:	00001097          	auipc	ra,0x1
    8000425c:	b1c080e7          	jalr	-1252(ra) # 80004d74 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[7 * 8] = objAlloc->allocateNewObject();
    80004260:	00048513          	mv	a0,s1
    80004264:	00001097          	auipc	ra,0x1
    80004268:	d90080e7          	jalr	-624(ra) # 80004ff4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    8000426c:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[7 * 8], objAlloc) != 7
    80004270:	00048613          	mv	a2,s1
    80004274:	00050593          	mv	a1,a0
    80004278:	00098513          	mv	a0,s3
    8000427c:	fffff097          	auipc	ra,0xfffff
    80004280:	054080e7          	jalr	84(ra) # 800032d0 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[7 * 8], objAlloc) != 7)
    80004284:	00700793          	li	a5,7
    80004288:	02f50c63          	beq	a0,a5,800042c0 <_ZN20KObjectAllocatorTest5test1Em+0x5a8>
        { delete objAlloc; return false; }
    8000428c:	0a048663          	beqz	s1,80004338 <_ZN20KObjectAllocatorTest5test1Em+0x620>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80004290:	0304b783          	ld	a5,48(s1)
    80004294:	06faf463          	bgeu	s5,a5,800042fc <_ZN20KObjectAllocatorTest5test1Em+0x5e4>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80004298:	ffffe097          	auipc	ra,0xffffe
    8000429c:	a2c080e7          	jalr	-1492(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    800042a0:	0284b783          	ld	a5,40(s1)
    800042a4:	003a9713          	slli	a4,s5,0x3
    800042a8:	00e787b3          	add	a5,a5,a4
    800042ac:	0007b583          	ld	a1,0(a5)
    800042b0:	ffffe097          	auipc	ra,0xffffe
    800042b4:	ba0080e7          	jalr	-1120(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    800042b8:	001a8a93          	addi	s5,s5,1
    800042bc:	fd5ff06f          	j	80004290 <_ZN20KObjectAllocatorTest5test1Em+0x578>
        || getBitOfObject(objArr[7 * 8], objAlloc) != 7)
    800042c0:	00048613          	mv	a2,s1
    800042c4:	00090593          	mv	a1,s2
    800042c8:	00098513          	mv	a0,s3
    800042cc:	fffff097          	auipc	ra,0xfffff
    800042d0:	07c080e7          	jalr	124(ra) # 80003348 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800042d4:	00700793          	li	a5,7
    800042d8:	faf51ae3          	bne	a0,a5,8000428c <_ZN20KObjectAllocatorTest5test1Em+0x574>
    if (objAlloc->nextNonTakenByte != 7) { delete objAlloc; return false; }
    800042dc:	0384b703          	ld	a4,56(s1)
    800042e0:	06f70063          	beq	a4,a5,80004340 <_ZN20KObjectAllocatorTest5test1Em+0x628>
    800042e4:	00048863          	beqz	s1,800042f4 <_ZN20KObjectAllocatorTest5test1Em+0x5dc>
    800042e8:	00048513          	mv	a0,s1
    800042ec:	ffffd097          	auipc	ra,0xffffd
    800042f0:	698080e7          	jalr	1688(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    800042f4:	00000513          	li	a0,0
    800042f8:	bd5ff06f          	j	80003ecc <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    800042fc:	ffffe097          	auipc	ra,0xffffe
    80004300:	9c8080e7          	jalr	-1592(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004304:	0284b583          	ld	a1,40(s1)
    80004308:	ffffe097          	auipc	ra,0xffffe
    8000430c:	b48080e7          	jalr	-1208(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80004310:	ffffe097          	auipc	ra,0xffffe
    80004314:	9b4080e7          	jalr	-1612(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004318:	0204b583          	ld	a1,32(s1)
    8000431c:	ffffe097          	auipc	ra,0xffffe
    80004320:	b34080e7          	jalr	-1228(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    80004324:	ffffe097          	auipc	ra,0xffffe
    80004328:	9a0080e7          	jalr	-1632(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    8000432c:	00048593          	mv	a1,s1
    80004330:	ffffe097          	auipc	ra,0xffffe
    80004334:	b20080e7          	jalr	-1248(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
        { delete objAlloc; return false; }
    80004338:	00000513          	li	a0,0
    8000433c:	b91ff06f          	j	80003ecc <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    objAlloc->freeObject(objArr[6 * 8 + 3]);
    80004340:	fffff937          	lui	s2,0xfffff
    80004344:	fc040793          	addi	a5,s0,-64
    80004348:	01278933          	add	s2,a5,s2
    8000434c:	79893583          	ld	a1,1944(s2) # fffffffffffff798 <end+0xffffffff7fff4e88>
    80004350:	00048513          	mv	a0,s1
    80004354:	00001097          	auipc	ra,0x1
    80004358:	a20080e7          	jalr	-1504(ra) # 80004d74 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[7 * 8 + 4]);
    8000435c:	7e093583          	ld	a1,2016(s2)
    80004360:	00048513          	mv	a0,s1
    80004364:	00001097          	auipc	ra,0x1
    80004368:	a10080e7          	jalr	-1520(ra) # 80004d74 <_ZN16KObjectAllocator10freeObjectEPv>
    objAlloc->freeObject(objArr[38 * 8 + 5]);
    8000436c:	f6843583          	ld	a1,-152(s0)
    80004370:	00048513          	mv	a0,s1
    80004374:	00001097          	auipc	ra,0x1
    80004378:	a00080e7          	jalr	-1536(ra) # 80004d74 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[7 * 8 + 4] = objAlloc->allocateNewObject();
    8000437c:	00048513          	mv	a0,s1
    80004380:	00001097          	auipc	ra,0x1
    80004384:	c74080e7          	jalr	-908(ra) # 80004ff4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004388:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[7 * 8 + 4], objAlloc) != 7
    8000438c:	00048613          	mv	a2,s1
    80004390:	00050593          	mv	a1,a0
    80004394:	00098513          	mv	a0,s3
    80004398:	fffff097          	auipc	ra,0xfffff
    8000439c:	f38080e7          	jalr	-200(ra) # 800032d0 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[7 * 8 + 4], objAlloc) != 3)
    800043a0:	00700793          	li	a5,7
    800043a4:	00f50e63          	beq	a0,a5,800043c0 <_ZN20KObjectAllocatorTest5test1Em+0x6a8>
        { delete objAlloc; return false; }
    800043a8:	00048863          	beqz	s1,800043b8 <_ZN20KObjectAllocatorTest5test1Em+0x6a0>
    800043ac:	00048513          	mv	a0,s1
    800043b0:	ffffd097          	auipc	ra,0xffffd
    800043b4:	5d4080e7          	jalr	1492(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    800043b8:	00000513          	li	a0,0
    800043bc:	b11ff06f          	j	80003ecc <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        || getBitOfObject(objArr[7 * 8 + 4], objAlloc) != 3)
    800043c0:	00048613          	mv	a2,s1
    800043c4:	00090593          	mv	a1,s2
    800043c8:	00098513          	mv	a0,s3
    800043cc:	fffff097          	auipc	ra,0xfffff
    800043d0:	f7c080e7          	jalr	-132(ra) # 80003348 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800043d4:	00300793          	li	a5,3
    800043d8:	fcf518e3          	bne	a0,a5,800043a8 <_ZN20KObjectAllocatorTest5test1Em+0x690>
    if (objAlloc->nextNonTakenByte != 7) { delete objAlloc; return false; }
    800043dc:	0384b703          	ld	a4,56(s1)
    800043e0:	00700793          	li	a5,7
    800043e4:	00f70e63          	beq	a4,a5,80004400 <_ZN20KObjectAllocatorTest5test1Em+0x6e8>
    800043e8:	00048863          	beqz	s1,800043f8 <_ZN20KObjectAllocatorTest5test1Em+0x6e0>
    800043ec:	00048513          	mv	a0,s1
    800043f0:	ffffd097          	auipc	ra,0xffffd
    800043f4:	594080e7          	jalr	1428(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    800043f8:	00000513          	li	a0,0
    800043fc:	ad1ff06f          	j	80003ecc <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    objAlloc->freeObject(objArr[3 * 8 + 5]);
    80004400:	fffff7b7          	lui	a5,0xfffff
    80004404:	fc040713          	addi	a4,s0,-64
    80004408:	00f707b3          	add	a5,a4,a5
    8000440c:	6e87b583          	ld	a1,1768(a5) # fffffffffffff6e8 <end+0xffffffff7fff4dd8>
    80004410:	00048513          	mv	a0,s1
    80004414:	00001097          	auipc	ra,0x1
    80004418:	960080e7          	jalr	-1696(ra) # 80004d74 <_ZN16KObjectAllocator10freeObjectEPv>
    objArr[38 * 8 + 5] = objAlloc->allocateNewObject();
    8000441c:	00048513          	mv	a0,s1
    80004420:	00001097          	auipc	ra,0x1
    80004424:	bd4080e7          	jalr	-1068(ra) # 80004ff4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004428:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[38 * 8 + 5], objAlloc) != 38
    8000442c:	00048613          	mv	a2,s1
    80004430:	00050593          	mv	a1,a0
    80004434:	00098513          	mv	a0,s3
    80004438:	fffff097          	auipc	ra,0xfffff
    8000443c:	e98080e7          	jalr	-360(ra) # 800032d0 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[38 * 8 + 5], objAlloc) != 2)
    80004440:	02600793          	li	a5,38
    80004444:	00f50e63          	beq	a0,a5,80004460 <_ZN20KObjectAllocatorTest5test1Em+0x748>
    { delete objAlloc; return false; }
    80004448:	00048863          	beqz	s1,80004458 <_ZN20KObjectAllocatorTest5test1Em+0x740>
    8000444c:	00048513          	mv	a0,s1
    80004450:	ffffd097          	auipc	ra,0xffffd
    80004454:	534080e7          	jalr	1332(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80004458:	00000513          	li	a0,0
    8000445c:	a71ff06f          	j	80003ecc <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        || getBitOfObject(objArr[38 * 8 + 5], objAlloc) != 2)
    80004460:	00048613          	mv	a2,s1
    80004464:	00090593          	mv	a1,s2
    80004468:	00098513          	mv	a0,s3
    8000446c:	fffff097          	auipc	ra,0xfffff
    80004470:	edc080e7          	jalr	-292(ra) # 80003348 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80004474:	00200793          	li	a5,2
    80004478:	fcf518e3          	bne	a0,a5,80004448 <_ZN20KObjectAllocatorTest5test1Em+0x730>
    if (objAlloc->nextNonTakenByte != 38) { delete objAlloc; return false; }
    8000447c:	0384b703          	ld	a4,56(s1)
    80004480:	02600793          	li	a5,38
    80004484:	00f70e63          	beq	a4,a5,800044a0 <_ZN20KObjectAllocatorTest5test1Em+0x788>
    80004488:	00048863          	beqz	s1,80004498 <_ZN20KObjectAllocatorTest5test1Em+0x780>
    8000448c:	00048513          	mv	a0,s1
    80004490:	ffffd097          	auipc	ra,0xffffd
    80004494:	4f4080e7          	jalr	1268(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80004498:	00000513          	li	a0,0
    8000449c:	a31ff06f          	j	80003ecc <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    objArr[3 * 8 + 5] = objAlloc->allocateNewObject();
    800044a0:	00048513          	mv	a0,s1
    800044a4:	00001097          	auipc	ra,0x1
    800044a8:	b50080e7          	jalr	-1200(ra) # 80004ff4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800044ac:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[3 * 8 + 5], objAlloc) != 3 || getBitOfObject(objArr[3 * 8 + 5], objAlloc) != 2)
    800044b0:	00048613          	mv	a2,s1
    800044b4:	00050593          	mv	a1,a0
    800044b8:	00098513          	mv	a0,s3
    800044bc:	fffff097          	auipc	ra,0xfffff
    800044c0:	e14080e7          	jalr	-492(ra) # 800032d0 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
    800044c4:	00300793          	li	a5,3
    800044c8:	02f50463          	beq	a0,a5,800044f0 <_ZN20KObjectAllocatorTest5test1Em+0x7d8>
    if (objAlloc->nextNonTakenByte != 3) { delete objAlloc; return false; }
    800044cc:	0384b703          	ld	a4,56(s1)
    800044d0:	00300793          	li	a5,3
    800044d4:	02f70c63          	beq	a4,a5,8000450c <_ZN20KObjectAllocatorTest5test1Em+0x7f4>
    800044d8:	00048863          	beqz	s1,800044e8 <_ZN20KObjectAllocatorTest5test1Em+0x7d0>
    800044dc:	00048513          	mv	a0,s1
    800044e0:	ffffd097          	auipc	ra,0xffffd
    800044e4:	4a4080e7          	jalr	1188(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    800044e8:	00000513          	li	a0,0
    800044ec:	9e1ff06f          	j	80003ecc <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    if (getByteOfObject(objArr[3 * 8 + 5], objAlloc) != 3 || getBitOfObject(objArr[3 * 8 + 5], objAlloc) != 2)
    800044f0:	00048613          	mv	a2,s1
    800044f4:	00090593          	mv	a1,s2
    800044f8:	00098513          	mv	a0,s3
    800044fc:	fffff097          	auipc	ra,0xfffff
    80004500:	e4c080e7          	jalr	-436(ra) # 80003348 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80004504:	00200793          	li	a5,2
    80004508:	fcf512e3          	bne	a0,a5,800044cc <_ZN20KObjectAllocatorTest5test1Em+0x7b4>
    objArr[6 * 8 + 3] = objAlloc->allocateNewObject();
    8000450c:	00048513          	mv	a0,s1
    80004510:	00001097          	auipc	ra,0x1
    80004514:	ae4080e7          	jalr	-1308(ra) # 80004ff4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004518:	00050913          	mv	s2,a0
    if (getByteOfObject(objArr[6 * 8 + 3], objAlloc) != 6
    8000451c:	00048613          	mv	a2,s1
    80004520:	00050593          	mv	a1,a0
    80004524:	00098513          	mv	a0,s3
    80004528:	fffff097          	auipc	ra,0xfffff
    8000452c:	da8080e7          	jalr	-600(ra) # 800032d0 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
        || getBitOfObject(objArr[6 * 8 + 3], objAlloc) != 4)
    80004530:	00600793          	li	a5,6
    80004534:	00f50e63          	beq	a0,a5,80004550 <_ZN20KObjectAllocatorTest5test1Em+0x838>
    { delete objAlloc; return false; }
    80004538:	00048863          	beqz	s1,80004548 <_ZN20KObjectAllocatorTest5test1Em+0x830>
    8000453c:	00048513          	mv	a0,s1
    80004540:	ffffd097          	auipc	ra,0xffffd
    80004544:	444080e7          	jalr	1092(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80004548:	00000513          	li	a0,0
    8000454c:	981ff06f          	j	80003ecc <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        || getBitOfObject(objArr[6 * 8 + 3], objAlloc) != 4)
    80004550:	00048613          	mv	a2,s1
    80004554:	00090593          	mv	a1,s2
    80004558:	00098513          	mv	a0,s3
    8000455c:	fffff097          	auipc	ra,0xfffff
    80004560:	dec080e7          	jalr	-532(ra) # 80003348 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80004564:	00400793          	li	a5,4
    80004568:	fcf518e3          	bne	a0,a5,80004538 <_ZN20KObjectAllocatorTest5test1Em+0x820>
    if (objAlloc->nextNonTakenByte != 6) { delete objAlloc; return false; }
    8000456c:	0384b703          	ld	a4,56(s1)
    80004570:	00600793          	li	a5,6
    80004574:	0ef71463          	bne	a4,a5,8000465c <_ZN20KObjectAllocatorTest5test1Em+0x944>
    for (int i = 0; i < 3; ++i) {
    80004578:	00000a93          	li	s5,0
    8000457c:	00200793          	li	a5,2
    80004580:	1557ca63          	blt	a5,s5,800046d4 <_ZN20KObjectAllocatorTest5test1Em+0x9bc>
        objAlloc->freeObject(objArr[319]);
    80004584:	fb843583          	ld	a1,-72(s0)
    80004588:	00048513          	mv	a0,s1
    8000458c:	00000097          	auipc	ra,0x0
    80004590:	7e8080e7          	jalr	2024(ra) # 80004d74 <_ZN16KObjectAllocator10freeObjectEPv>
        objArr[319] = objAlloc->allocateNewObject();
    80004594:	00048513          	mv	a0,s1
    80004598:	00001097          	auipc	ra,0x1
    8000459c:	a5c080e7          	jalr	-1444(ra) # 80004ff4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    800045a0:	00050913          	mv	s2,a0
    800045a4:	faa43c23          	sd	a0,-72(s0)
        if (getByteOfObject(objArr[319], objAlloc) != 39
    800045a8:	00048613          	mv	a2,s1
    800045ac:	00050593          	mv	a1,a0
    800045b0:	00098513          	mv	a0,s3
    800045b4:	fffff097          	auipc	ra,0xfffff
    800045b8:	d1c080e7          	jalr	-740(ra) # 800032d0 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
            || getBitOfObject(objArr[319], objAlloc) != 0)
    800045bc:	02700793          	li	a5,39
    800045c0:	0af51a63          	bne	a0,a5,80004674 <_ZN20KObjectAllocatorTest5test1Em+0x95c>
    800045c4:	00048613          	mv	a2,s1
    800045c8:	00090593          	mv	a1,s2
    800045cc:	00098513          	mv	a0,s3
    800045d0:	fffff097          	auipc	ra,0xfffff
    800045d4:	d78080e7          	jalr	-648(ra) # 80003348 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    800045d8:	08051e63          	bnez	a0,80004674 <_ZN20KObjectAllocatorTest5test1Em+0x95c>
        if (objAlloc->nextNonTakenByte != 40) { delete objAlloc; return false; }
    800045dc:	0384b703          	ld	a4,56(s1)
    800045e0:	02800793          	li	a5,40
    800045e4:	0af71463          	bne	a4,a5,8000468c <_ZN20KObjectAllocatorTest5test1Em+0x974>
        objAlloc->freeObject(objArr[1]);
    800045e8:	fffffa37          	lui	s4,0xfffff
    800045ec:	fc040793          	addi	a5,s0,-64
    800045f0:	01478a33          	add	s4,a5,s4
    800045f4:	608a3583          	ld	a1,1544(s4) # fffffffffffff608 <end+0xffffffff7fff4cf8>
    800045f8:	00048513          	mv	a0,s1
    800045fc:	00000097          	auipc	ra,0x0
    80004600:	778080e7          	jalr	1912(ra) # 80004d74 <_ZN16KObjectAllocator10freeObjectEPv>
        objArr[1] = objAlloc->allocateNewObject();
    80004604:	00048513          	mv	a0,s1
    80004608:	00001097          	auipc	ra,0x1
    8000460c:	9ec080e7          	jalr	-1556(ra) # 80004ff4 <_ZN16KObjectAllocator17allocateNewObjectEv>
    80004610:	00050913          	mv	s2,a0
    80004614:	60aa3423          	sd	a0,1544(s4)
        if (getByteOfObject(objArr[1], objAlloc) != 0
    80004618:	00048613          	mv	a2,s1
    8000461c:	00050593          	mv	a1,a0
    80004620:	00098513          	mv	a0,s3
    80004624:	fffff097          	auipc	ra,0xfffff
    80004628:	cac080e7          	jalr	-852(ra) # 800032d0 <_ZN20KObjectAllocatorTest15getByteOfObjectEPvP16KObjectAllocator>
            || getBitOfObject(objArr[1], objAlloc) != 6)
    8000462c:	06051c63          	bnez	a0,800046a4 <_ZN20KObjectAllocatorTest5test1Em+0x98c>
    80004630:	00048613          	mv	a2,s1
    80004634:	00090593          	mv	a1,s2
    80004638:	00098513          	mv	a0,s3
    8000463c:	fffff097          	auipc	ra,0xfffff
    80004640:	d0c080e7          	jalr	-756(ra) # 80003348 <_ZN20KObjectAllocatorTest14getBitOfObjectEPvP16KObjectAllocator>
    80004644:	00600793          	li	a5,6
    80004648:	04f51e63          	bne	a0,a5,800046a4 <_ZN20KObjectAllocatorTest5test1Em+0x98c>
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    8000464c:	0384b783          	ld	a5,56(s1)
    80004650:	06079663          	bnez	a5,800046bc <_ZN20KObjectAllocatorTest5test1Em+0x9a4>
    for (int i = 0; i < 3; ++i) {
    80004654:	001a8a9b          	addiw	s5,s5,1
    80004658:	f25ff06f          	j	8000457c <_ZN20KObjectAllocatorTest5test1Em+0x864>
    if (objAlloc->nextNonTakenByte != 6) { delete objAlloc; return false; }
    8000465c:	00048863          	beqz	s1,8000466c <_ZN20KObjectAllocatorTest5test1Em+0x954>
    80004660:	00048513          	mv	a0,s1
    80004664:	ffffd097          	auipc	ra,0xffffd
    80004668:	320080e7          	jalr	800(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    8000466c:	00000513          	li	a0,0
    80004670:	85dff06f          	j	80003ecc <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        { delete objAlloc; return false; }
    80004674:	00048863          	beqz	s1,80004684 <_ZN20KObjectAllocatorTest5test1Em+0x96c>
    80004678:	00048513          	mv	a0,s1
    8000467c:	ffffd097          	auipc	ra,0xffffd
    80004680:	308080e7          	jalr	776(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80004684:	00000513          	li	a0,0
    80004688:	845ff06f          	j	80003ecc <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        if (objAlloc->nextNonTakenByte != 40) { delete objAlloc; return false; }
    8000468c:	00048863          	beqz	s1,8000469c <_ZN20KObjectAllocatorTest5test1Em+0x984>
    80004690:	00048513          	mv	a0,s1
    80004694:	ffffd097          	auipc	ra,0xffffd
    80004698:	2f0080e7          	jalr	752(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    8000469c:	00000513          	li	a0,0
    800046a0:	82dff06f          	j	80003ecc <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        { delete objAlloc; return false; }
    800046a4:	00048863          	beqz	s1,800046b4 <_ZN20KObjectAllocatorTest5test1Em+0x99c>
    800046a8:	00048513          	mv	a0,s1
    800046ac:	ffffd097          	auipc	ra,0xffffd
    800046b0:	2d8080e7          	jalr	728(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    800046b4:	00000513          	li	a0,0
    800046b8:	815ff06f          	j	80003ecc <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
        if (objAlloc->nextNonTakenByte != 0) { delete objAlloc; return false; }
    800046bc:	00048863          	beqz	s1,800046cc <_ZN20KObjectAllocatorTest5test1Em+0x9b4>
    800046c0:	00048513          	mv	a0,s1
    800046c4:	ffffd097          	auipc	ra,0xffffd
    800046c8:	2c0080e7          	jalr	704(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    800046cc:	00000513          	li	a0,0
    800046d0:	ffcff06f          	j	80003ecc <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    delete objAlloc;
    800046d4:	00048c63          	beqz	s1,800046ec <_ZN20KObjectAllocatorTest5test1Em+0x9d4>
    800046d8:	00048513          	mv	a0,s1
    800046dc:	ffffd097          	auipc	ra,0xffffd
    800046e0:	2a8080e7          	jalr	680(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    return true;
    800046e4:	00100513          	li	a0,1
    800046e8:	fe4ff06f          	j	80003ecc <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    800046ec:	00100513          	li	a0,1
    800046f0:	fdcff06f          	j	80003ecc <_ZN20KObjectAllocatorTest5test1Em+0x1b4>
    800046f4:	00050913          	mv	s2,a0
    KObjectAllocator* objAlloc = new KObjectAllocator(size);
    800046f8:	00048513          	mv	a0,s1
    800046fc:	ffffd097          	auipc	ra,0xffffd
    80004700:	288080e7          	jalr	648(ra) # 80001984 <_ZN16KObjectAllocatordlEPv>
    80004704:	00090513          	mv	a0,s2
    80004708:	00006097          	auipc	ra,0x6
    8000470c:	060080e7          	jalr	96(ra) # 8000a768 <_Unwind_Resume>

0000000080004710 <_ZN20KObjectAllocatorTest5test2Em>:

bool KObjectAllocatorTest::test2(size_t size) {
    80004710:	ff010113          	addi	sp,sp,-16
    80004714:	00813423          	sd	s0,8(sp)
    80004718:	01010413          	addi	s0,sp,16
    return true;
}
    8000471c:	00100513          	li	a0,1
    80004720:	00813403          	ld	s0,8(sp)
    80004724:	01010113          	addi	sp,sp,16
    80004728:	00008067          	ret

000000008000472c <_ZN20KObjectAllocatorTest5test3Em>:

bool KObjectAllocatorTest::test3(size_t size) {
    8000472c:	ff010113          	addi	sp,sp,-16
    80004730:	00813423          	sd	s0,8(sp)
    80004734:	01010413          	addi	s0,sp,16
    return true;
}
    80004738:	00100513          	li	a0,1
    8000473c:	00813403          	ld	s0,8(sp)
    80004740:	01010113          	addi	sp,sp,16
    80004744:	00008067          	ret

0000000080004748 <_ZN20KObjectAllocatorTest5test4Em>:

bool KObjectAllocatorTest::test4(size_t size) {
    80004748:	ff010113          	addi	sp,sp,-16
    8000474c:	00813423          	sd	s0,8(sp)
    80004750:	01010413          	addi	s0,sp,16
    return true;
}
    80004754:	00100513          	li	a0,1
    80004758:	00813403          	ld	s0,8(sp)
    8000475c:	01010113          	addi	sp,sp,16
    80004760:	00008067          	ret

0000000080004764 <_ZN20KObjectAllocatorTest5test5Em>:

bool KObjectAllocatorTest::test5(size_t size) {
    80004764:	ff010113          	addi	sp,sp,-16
    80004768:	00813423          	sd	s0,8(sp)
    8000476c:	01010413          	addi	s0,sp,16
    return true;
}
    80004770:	00100513          	li	a0,1
    80004774:	00813403          	ld	s0,8(sp)
    80004778:	01010113          	addi	sp,sp,16
    8000477c:	00008067          	ret

0000000080004780 <_ZN20KObjectAllocatorTest5test6Em>:

bool KObjectAllocatorTest::test6(size_t size) {
    80004780:	ff010113          	addi	sp,sp,-16
    80004784:	00813423          	sd	s0,8(sp)
    80004788:	01010413          	addi	s0,sp,16
    return true;
}
    8000478c:	00100513          	li	a0,1
    80004790:	00813403          	ld	s0,8(sp)
    80004794:	01010113          	addi	sp,sp,16
    80004798:	00008067          	ret

000000008000479c <_ZN20KObjectAllocatorTest5test7Em>:

bool KObjectAllocatorTest::test7(size_t size) {
    8000479c:	ff010113          	addi	sp,sp,-16
    800047a0:	00813423          	sd	s0,8(sp)
    800047a4:	01010413          	addi	s0,sp,16
    return true;
}
    800047a8:	00100513          	li	a0,1
    800047ac:	00813403          	ld	s0,8(sp)
    800047b0:	01010113          	addi	sp,sp,16
    800047b4:	00008067          	ret

00000000800047b8 <_ZN20KObjectAllocatorTest5test8Em>:

bool KObjectAllocatorTest::test8(size_t size) {
    800047b8:	ff010113          	addi	sp,sp,-16
    800047bc:	00813423          	sd	s0,8(sp)
    800047c0:	01010413          	addi	s0,sp,16
    return true;
}
    800047c4:	00100513          	li	a0,1
    800047c8:	00813403          	ld	s0,8(sp)
    800047cc:	01010113          	addi	sp,sp,16
    800047d0:	00008067          	ret

00000000800047d4 <_ZN20KObjectAllocatorTest5test9Em>:

bool KObjectAllocatorTest::test9(size_t size) {
    800047d4:	ff010113          	addi	sp,sp,-16
    800047d8:	00813423          	sd	s0,8(sp)
    800047dc:	01010413          	addi	s0,sp,16
    return true;
    800047e0:	00100513          	li	a0,1
    800047e4:	00813403          	ld	s0,8(sp)
    800047e8:	01010113          	addi	sp,sp,16
    800047ec:	00008067          	ret

00000000800047f0 <_ZN20KObjectAllocatorTest4testEmm>:
bool KObjectAllocatorTest::test(size_t i, size_t size) {
    800047f0:	00058793          	mv	a5,a1
    switch (i) {
    800047f4:	00900713          	li	a4,9
    800047f8:	0ab76c63          	bltu	a4,a1,800048b0 <_ZN20KObjectAllocatorTest4testEmm+0xc0>
bool KObjectAllocatorTest::test(size_t i, size_t size) {
    800047fc:	ff010113          	addi	sp,sp,-16
    80004800:	00113423          	sd	ra,8(sp)
    80004804:	00813023          	sd	s0,0(sp)
    80004808:	01010413          	addi	s0,sp,16
    8000480c:	00060593          	mv	a1,a2
    80004810:	00279793          	slli	a5,a5,0x2
    80004814:	00004717          	auipc	a4,0x4
    80004818:	d4c70713          	addi	a4,a4,-692 # 80008560 <CONSOLE_STATUS+0x550>
    8000481c:	00e787b3          	add	a5,a5,a4
    80004820:	0007a783          	lw	a5,0(a5)
    80004824:	00e787b3          	add	a5,a5,a4
    80004828:	00078067          	jr	a5
        case 0: return test0(size); break;
    8000482c:	fffff097          	auipc	ra,0xfffff
    80004830:	c2c080e7          	jalr	-980(ra) # 80003458 <_ZN20KObjectAllocatorTest5test0Em>
}
    80004834:	00813083          	ld	ra,8(sp)
    80004838:	00013403          	ld	s0,0(sp)
    8000483c:	01010113          	addi	sp,sp,16
    80004840:	00008067          	ret
        case 1: return test1(size); break;
    80004844:	fffff097          	auipc	ra,0xfffff
    80004848:	4d4080e7          	jalr	1236(ra) # 80003d18 <_ZN20KObjectAllocatorTest5test1Em>
    8000484c:	fe9ff06f          	j	80004834 <_ZN20KObjectAllocatorTest4testEmm+0x44>
        case 2: return test2(size); break;
    80004850:	00000097          	auipc	ra,0x0
    80004854:	ec0080e7          	jalr	-320(ra) # 80004710 <_ZN20KObjectAllocatorTest5test2Em>
    80004858:	fddff06f          	j	80004834 <_ZN20KObjectAllocatorTest4testEmm+0x44>
        case 3: return test3(size); break;
    8000485c:	00000097          	auipc	ra,0x0
    80004860:	ed0080e7          	jalr	-304(ra) # 8000472c <_ZN20KObjectAllocatorTest5test3Em>
    80004864:	fd1ff06f          	j	80004834 <_ZN20KObjectAllocatorTest4testEmm+0x44>
        case 4: return test4(size); break;
    80004868:	00000097          	auipc	ra,0x0
    8000486c:	ee0080e7          	jalr	-288(ra) # 80004748 <_ZN20KObjectAllocatorTest5test4Em>
    80004870:	fc5ff06f          	j	80004834 <_ZN20KObjectAllocatorTest4testEmm+0x44>
        case 5: return test5(size); break;
    80004874:	00000097          	auipc	ra,0x0
    80004878:	ef0080e7          	jalr	-272(ra) # 80004764 <_ZN20KObjectAllocatorTest5test5Em>
    8000487c:	fb9ff06f          	j	80004834 <_ZN20KObjectAllocatorTest4testEmm+0x44>
        case 6: return test6(size); break;
    80004880:	00000097          	auipc	ra,0x0
    80004884:	f00080e7          	jalr	-256(ra) # 80004780 <_ZN20KObjectAllocatorTest5test6Em>
    80004888:	fadff06f          	j	80004834 <_ZN20KObjectAllocatorTest4testEmm+0x44>
        case 7: return test7(size); break;
    8000488c:	00000097          	auipc	ra,0x0
    80004890:	f10080e7          	jalr	-240(ra) # 8000479c <_ZN20KObjectAllocatorTest5test7Em>
    80004894:	fa1ff06f          	j	80004834 <_ZN20KObjectAllocatorTest4testEmm+0x44>
        case 8: return test8(size); break;
    80004898:	00000097          	auipc	ra,0x0
    8000489c:	f20080e7          	jalr	-224(ra) # 800047b8 <_ZN20KObjectAllocatorTest5test8Em>
    800048a0:	f95ff06f          	j	80004834 <_ZN20KObjectAllocatorTest4testEmm+0x44>
        case 9: return test9(size); break;
    800048a4:	00000097          	auipc	ra,0x0
    800048a8:	f30080e7          	jalr	-208(ra) # 800047d4 <_ZN20KObjectAllocatorTest5test9Em>
    800048ac:	f89ff06f          	j	80004834 <_ZN20KObjectAllocatorTest4testEmm+0x44>
bool KObjectAllocatorTest::test(size_t i, size_t size) {
    800048b0:	00000513          	li	a0,0
}
    800048b4:	00008067          	ret

00000000800048b8 <_ZN20KObjectAllocatorTest8runTestsEv>:
bool KObjectAllocatorTest::runTests() {
    800048b8:	fc010113          	addi	sp,sp,-64
    800048bc:	02113c23          	sd	ra,56(sp)
    800048c0:	02813823          	sd	s0,48(sp)
    800048c4:	02913423          	sd	s1,40(sp)
    800048c8:	03213023          	sd	s2,32(sp)
    800048cc:	01313c23          	sd	s3,24(sp)
    800048d0:	01413823          	sd	s4,16(sp)
    800048d4:	01513423          	sd	s5,8(sp)
    800048d8:	01613023          	sd	s6,0(sp)
    800048dc:	04010413          	addi	s0,sp,64
    800048e0:	00050993          	mv	s3,a0
    for (size_t size : sizes)
    800048e4:	00850a93          	addi	s5,a0,8
    800048e8:	04050b13          	addi	s6,a0,64
    800048ec:	0d6a8863          	beq	s5,s6,800049bc <_ZN20KObjectAllocatorTest8runTestsEv+0x104>
    800048f0:	000aba03          	ld	s4,0(s5)
    for (size_t i = 0; i < numberOfTests; ++i) {
    800048f4:	00000493          	li	s1,0
    800048f8:	0700006f          	j	80004968 <_ZN20KObjectAllocatorTest8runTestsEv+0xb0>
            printString("Failed KObjectAllocator test ");
    800048fc:	00004517          	auipc	a0,0x4
    80004900:	c4450513          	addi	a0,a0,-956 # 80008540 <CONSOLE_STATUS+0x530>
    80004904:	00001097          	auipc	ra,0x1
    80004908:	a04080e7          	jalr	-1532(ra) # 80005308 <_Z11printStringPKc>
            printInteger(i); printString("\n"); return false;
    8000490c:	00048513          	mv	a0,s1
    80004910:	00001097          	auipc	ra,0x1
    80004914:	a68080e7          	jalr	-1432(ra) # 80005378 <_Z12printIntegerm>
    80004918:	00003517          	auipc	a0,0x3
    8000491c:	7f850513          	addi	a0,a0,2040 # 80008110 <CONSOLE_STATUS+0x100>
    80004920:	00001097          	auipc	ra,0x1
    80004924:	9e8080e7          	jalr	-1560(ra) # 80005308 <_Z11printStringPKc>
}
    80004928:	00090513          	mv	a0,s2
    8000492c:	03813083          	ld	ra,56(sp)
    80004930:	03013403          	ld	s0,48(sp)
    80004934:	02813483          	ld	s1,40(sp)
    80004938:	02013903          	ld	s2,32(sp)
    8000493c:	01813983          	ld	s3,24(sp)
    80004940:	01013a03          	ld	s4,16(sp)
    80004944:	00813a83          	ld	s5,8(sp)
    80004948:	00013b03          	ld	s6,0(sp)
    8000494c:	04010113          	addi	sp,sp,64
    80004950:	00008067          	ret
        if (i != 0 && (i + 1) % 10 == 0) printString("\n");
    80004954:	00003517          	auipc	a0,0x3
    80004958:	7bc50513          	addi	a0,a0,1980 # 80008110 <CONSOLE_STATUS+0x100>
    8000495c:	00001097          	auipc	ra,0x1
    80004960:	9ac080e7          	jalr	-1620(ra) # 80005308 <_Z11printStringPKc>
    for (size_t i = 0; i < numberOfTests; ++i) {
    80004964:	00148493          	addi	s1,s1,1
    80004968:	0009b783          	ld	a5,0(s3)
    8000496c:	04f4f463          	bgeu	s1,a5,800049b4 <_ZN20KObjectAllocatorTest8runTestsEv+0xfc>
        if (!test(i, size)) {
    80004970:	000a0613          	mv	a2,s4
    80004974:	00048593          	mv	a1,s1
    80004978:	00098513          	mv	a0,s3
    8000497c:	00000097          	auipc	ra,0x0
    80004980:	e74080e7          	jalr	-396(ra) # 800047f0 <_ZN20KObjectAllocatorTest4testEmm>
    80004984:	00050913          	mv	s2,a0
    80004988:	f6050ae3          	beqz	a0,800048fc <_ZN20KObjectAllocatorTest8runTestsEv+0x44>
        } else printString("Passed ");
    8000498c:	00004517          	auipc	a0,0x4
    80004990:	adc50513          	addi	a0,a0,-1316 # 80008468 <CONSOLE_STATUS+0x458>
    80004994:	00001097          	auipc	ra,0x1
    80004998:	974080e7          	jalr	-1676(ra) # 80005308 <_Z11printStringPKc>
        if (i != 0 && (i + 1) % 10 == 0) printString("\n");
    8000499c:	fc0484e3          	beqz	s1,80004964 <_ZN20KObjectAllocatorTest8runTestsEv+0xac>
    800049a0:	00148793          	addi	a5,s1,1
    800049a4:	00a00713          	li	a4,10
    800049a8:	02e7f7b3          	remu	a5,a5,a4
    800049ac:	fa079ce3          	bnez	a5,80004964 <_ZN20KObjectAllocatorTest8runTestsEv+0xac>
    800049b0:	fa5ff06f          	j	80004954 <_ZN20KObjectAllocatorTest8runTestsEv+0x9c>
    for (size_t size : sizes)
    800049b4:	008a8a93          	addi	s5,s5,8
    800049b8:	f35ff06f          	j	800048ec <_ZN20KObjectAllocatorTest8runTestsEv+0x34>
    return true;
    800049bc:	00100913          	li	s2,1
    800049c0:	f69ff06f          	j	80004928 <_ZN20KObjectAllocatorTest8runTestsEv+0x70>

00000000800049c4 <_ZN16KObjectAllocator19printInternalMemoryEv>:
#include "../h/kObjectAllocator.hpp"
#include "../h/print.hpp"

void KObjectAllocator::printInternalMemory() {
    800049c4:	fc010113          	addi	sp,sp,-64
    800049c8:	02113c23          	sd	ra,56(sp)
    800049cc:	02813823          	sd	s0,48(sp)
    800049d0:	02913423          	sd	s1,40(sp)
    800049d4:	03213023          	sd	s2,32(sp)
    800049d8:	01313c23          	sd	s3,24(sp)
    800049dc:	01413823          	sd	s4,16(sp)
    800049e0:	01513423          	sd	s5,8(sp)
    800049e4:	01613023          	sd	s6,0(sp)
    800049e8:	04010413          	addi	s0,sp,64
    800049ec:	00050493          	mv	s1,a0
    size_t segmentSize = 16, printedBytes = 0;
    800049f0:	00000a93          	li	s5,0
    800049f4:	0f00006f          	j	80004ae4 <_ZN16KObjectAllocator19printInternalMemoryEv+0x120>
    while (printedBytes < memorySizeForBits) {
        for (size_t i = 0; i < numberOfAllocations; ++i) {
            for (size_t j = 0; j < segmentSize; ++j) {
                if (j + printedBytes >= memorySizeForBits) printString("    ");
    800049f8:	00004517          	auipc	a0,0x4
    800049fc:	ba050513          	addi	a0,a0,-1120 # 80008598 <CONSOLE_STATUS+0x588>
    80004a00:	00001097          	auipc	ra,0x1
    80004a04:	908080e7          	jalr	-1784(ra) # 80005308 <_Z11printStringPKc>
    80004a08:	04c0006f          	j	80004a54 <_ZN16KObjectAllocator19printInternalMemoryEv+0x90>
                else {
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80004a0c:	00000513          	li	a0,0
    80004a10:	00001097          	auipc	ra,0x1
    80004a14:	968080e7          	jalr	-1688(ra) # 80005378 <_Z12printIntegerm>
    80004a18:	0740006f          	j	80004a8c <_ZN16KObjectAllocator19printInternalMemoryEv+0xc8>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    80004a1c:	00000513          	li	a0,0
    80004a20:	00001097          	auipc	ra,0x1
    80004a24:	958080e7          	jalr	-1704(ra) # 80005378 <_Z12printIntegerm>
                    printInteger((uint64) bitVectors[i][j + printedBytes]);
    80004a28:	0284b783          	ld	a5,40(s1)
    80004a2c:	014787b3          	add	a5,a5,s4
    80004a30:	0007b783          	ld	a5,0(a5)
    80004a34:	013789b3          	add	s3,a5,s3
    80004a38:	0009c503          	lbu	a0,0(s3)
    80004a3c:	00001097          	auipc	ra,0x1
    80004a40:	93c080e7          	jalr	-1732(ra) # 80005378 <_Z12printIntegerm>
                    printString(" ");
    80004a44:	00004517          	auipc	a0,0x4
    80004a48:	8dc50513          	addi	a0,a0,-1828 # 80008320 <CONSOLE_STATUS+0x310>
    80004a4c:	00001097          	auipc	ra,0x1
    80004a50:	8bc080e7          	jalr	-1860(ra) # 80005308 <_Z11printStringPKc>
            for (size_t j = 0; j < segmentSize; ++j) {
    80004a54:	00190913          	addi	s2,s2,1
    80004a58:	00f00793          	li	a5,15
    80004a5c:	0527e863          	bltu	a5,s2,80004aac <_ZN16KObjectAllocator19printInternalMemoryEv+0xe8>
                if (j + printedBytes >= memorySizeForBits) printString("    ");
    80004a60:	012a89b3          	add	s3,s5,s2
    80004a64:	0104b783          	ld	a5,16(s1)
    80004a68:	f8f9f8e3          	bgeu	s3,a5,800049f8 <_ZN16KObjectAllocator19printInternalMemoryEv+0x34>
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80004a6c:	0284b783          	ld	a5,40(s1)
    80004a70:	003b1a13          	slli	s4,s6,0x3
    80004a74:	014787b3          	add	a5,a5,s4
    80004a78:	0007b783          	ld	a5,0(a5)
    80004a7c:	013787b3          	add	a5,a5,s3
    80004a80:	0007c703          	lbu	a4,0(a5)
    80004a84:	06300793          	li	a5,99
    80004a88:	f8e7f2e3          	bgeu	a5,a4,80004a0c <_ZN16KObjectAllocator19printInternalMemoryEv+0x48>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    80004a8c:	0284b783          	ld	a5,40(s1)
    80004a90:	014787b3          	add	a5,a5,s4
    80004a94:	0007b783          	ld	a5,0(a5)
    80004a98:	013787b3          	add	a5,a5,s3
    80004a9c:	0007c703          	lbu	a4,0(a5)
    80004aa0:	00900793          	li	a5,9
    80004aa4:	f8e7e2e3          	bltu	a5,a4,80004a28 <_ZN16KObjectAllocator19printInternalMemoryEv+0x64>
    80004aa8:	f75ff06f          	j	80004a1c <_ZN16KObjectAllocator19printInternalMemoryEv+0x58>
                }
            }
            printString("  ");
    80004aac:	00004517          	auipc	a0,0x4
    80004ab0:	af450513          	addi	a0,a0,-1292 # 800085a0 <CONSOLE_STATUS+0x590>
    80004ab4:	00001097          	auipc	ra,0x1
    80004ab8:	854080e7          	jalr	-1964(ra) # 80005308 <_Z11printStringPKc>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80004abc:	001b0b13          	addi	s6,s6,1
    80004ac0:	0304b783          	ld	a5,48(s1)
    80004ac4:	00fb7663          	bgeu	s6,a5,80004ad0 <_ZN16KObjectAllocator19printInternalMemoryEv+0x10c>
            for (size_t j = 0; j < segmentSize; ++j) {
    80004ac8:	00000913          	li	s2,0
    80004acc:	f8dff06f          	j	80004a58 <_ZN16KObjectAllocator19printInternalMemoryEv+0x94>
        }
        printString("\n");
    80004ad0:	00003517          	auipc	a0,0x3
    80004ad4:	64050513          	addi	a0,a0,1600 # 80008110 <CONSOLE_STATUS+0x100>
    80004ad8:	00001097          	auipc	ra,0x1
    80004adc:	830080e7          	jalr	-2000(ra) # 80005308 <_Z11printStringPKc>
        printedBytes += segmentSize;
    80004ae0:	010a8a93          	addi	s5,s5,16
    while (printedBytes < memorySizeForBits) {
    80004ae4:	0104b783          	ld	a5,16(s1)
    80004ae8:	00faf663          	bgeu	s5,a5,80004af4 <_ZN16KObjectAllocator19printInternalMemoryEv+0x130>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80004aec:	00000b13          	li	s6,0
    80004af0:	fd1ff06f          	j	80004ac0 <_ZN16KObjectAllocator19printInternalMemoryEv+0xfc>
    }

    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80004af4:	00000993          	li	s3,0
    80004af8:	0180006f          	j	80004b10 <_ZN16KObjectAllocator19printInternalMemoryEv+0x14c>
        for (size_t j = 0; j < segmentSize - 1; ++j)
            printString("----");
        printString("----  ");
    80004afc:	00004517          	auipc	a0,0x4
    80004b00:	ab450513          	addi	a0,a0,-1356 # 800085b0 <CONSOLE_STATUS+0x5a0>
    80004b04:	00001097          	auipc	ra,0x1
    80004b08:	804080e7          	jalr	-2044(ra) # 80005308 <_Z11printStringPKc>
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80004b0c:	00198993          	addi	s3,s3,1
    80004b10:	0304b783          	ld	a5,48(s1)
    80004b14:	02f9f463          	bgeu	s3,a5,80004b3c <_ZN16KObjectAllocator19printInternalMemoryEv+0x178>
        for (size_t j = 0; j < segmentSize - 1; ++j)
    80004b18:	00000913          	li	s2,0
    80004b1c:	00e00793          	li	a5,14
    80004b20:	fd27eee3          	bltu	a5,s2,80004afc <_ZN16KObjectAllocator19printInternalMemoryEv+0x138>
            printString("----");
    80004b24:	00004517          	auipc	a0,0x4
    80004b28:	a8450513          	addi	a0,a0,-1404 # 800085a8 <CONSOLE_STATUS+0x598>
    80004b2c:	00000097          	auipc	ra,0x0
    80004b30:	7dc080e7          	jalr	2012(ra) # 80005308 <_Z11printStringPKc>
        for (size_t j = 0; j < segmentSize - 1; ++j)
    80004b34:	00190913          	addi	s2,s2,1
    80004b38:	fe5ff06f          	j	80004b1c <_ZN16KObjectAllocator19printInternalMemoryEv+0x158>
    }
    printString("\n");
    80004b3c:	00003517          	auipc	a0,0x3
    80004b40:	5d450513          	addi	a0,a0,1492 # 80008110 <CONSOLE_STATUS+0x100>
    80004b44:	00000097          	auipc	ra,0x0
    80004b48:	7c4080e7          	jalr	1988(ra) # 80005308 <_Z11printStringPKc>

    printedBytes = memorySizeForBits;
    80004b4c:	0104ba03          	ld	s4,16(s1)
    80004b50:	1000006f          	j	80004c50 <_ZN16KObjectAllocator19printInternalMemoryEv+0x28c>
    while(printedBytes < initialNumberOfObjects * objectSize) {
        for (size_t i = 0; i < numberOfAllocations; ++i) {
            for (size_t j = 0; j < segmentSize; ++j) {
                if (j + printedBytes - memorySizeForBits >= initialNumberOfObjects * objectSize) printString("    ");
    80004b54:	00004517          	auipc	a0,0x4
    80004b58:	a4450513          	addi	a0,a0,-1468 # 80008598 <CONSOLE_STATUS+0x588>
    80004b5c:	00000097          	auipc	ra,0x0
    80004b60:	7ac080e7          	jalr	1964(ra) # 80005308 <_Z11printStringPKc>
    80004b64:	04c0006f          	j	80004bb0 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1ec>
                else {
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80004b68:	00000513          	li	a0,0
    80004b6c:	00001097          	auipc	ra,0x1
    80004b70:	80c080e7          	jalr	-2036(ra) # 80005378 <_Z12printIntegerm>
    80004b74:	0840006f          	j	80004bf8 <_ZN16KObjectAllocator19printInternalMemoryEv+0x234>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    80004b78:	00000513          	li	a0,0
    80004b7c:	00000097          	auipc	ra,0x0
    80004b80:	7fc080e7          	jalr	2044(ra) # 80005378 <_Z12printIntegerm>
                    printInteger((uint64) bitVectors[i][j + printedBytes]);
    80004b84:	0284b783          	ld	a5,40(s1)
    80004b88:	016787b3          	add	a5,a5,s6
    80004b8c:	0007b783          	ld	a5,0(a5)
    80004b90:	013789b3          	add	s3,a5,s3
    80004b94:	0009c503          	lbu	a0,0(s3)
    80004b98:	00000097          	auipc	ra,0x0
    80004b9c:	7e0080e7          	jalr	2016(ra) # 80005378 <_Z12printIntegerm>
                    printString(" ");
    80004ba0:	00003517          	auipc	a0,0x3
    80004ba4:	78050513          	addi	a0,a0,1920 # 80008320 <CONSOLE_STATUS+0x310>
    80004ba8:	00000097          	auipc	ra,0x0
    80004bac:	760080e7          	jalr	1888(ra) # 80005308 <_Z11printStringPKc>
            for (size_t j = 0; j < segmentSize; ++j) {
    80004bb0:	00190913          	addi	s2,s2,1
    80004bb4:	00f00793          	li	a5,15
    80004bb8:	0727e063          	bltu	a5,s2,80004c18 <_ZN16KObjectAllocator19printInternalMemoryEv+0x254>
                if (j + printedBytes - memorySizeForBits >= initialNumberOfObjects * objectSize) printString("    ");
    80004bbc:	012a09b3          	add	s3,s4,s2
    80004bc0:	0104b703          	ld	a4,16(s1)
    80004bc4:	40e98733          	sub	a4,s3,a4
    80004bc8:	0004b783          	ld	a5,0(s1)
    80004bcc:	0184b683          	ld	a3,24(s1)
    80004bd0:	02d787b3          	mul	a5,a5,a3
    80004bd4:	f8f770e3          	bgeu	a4,a5,80004b54 <_ZN16KObjectAllocator19printInternalMemoryEv+0x190>
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80004bd8:	0284b783          	ld	a5,40(s1)
    80004bdc:	003a9b13          	slli	s6,s5,0x3
    80004be0:	016787b3          	add	a5,a5,s6
    80004be4:	0007b783          	ld	a5,0(a5)
    80004be8:	013787b3          	add	a5,a5,s3
    80004bec:	0007c703          	lbu	a4,0(a5)
    80004bf0:	06300793          	li	a5,99
    80004bf4:	f6e7fae3          	bgeu	a5,a4,80004b68 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1a4>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    80004bf8:	0284b783          	ld	a5,40(s1)
    80004bfc:	016787b3          	add	a5,a5,s6
    80004c00:	0007b783          	ld	a5,0(a5)
    80004c04:	013787b3          	add	a5,a5,s3
    80004c08:	0007c703          	lbu	a4,0(a5)
    80004c0c:	00900793          	li	a5,9
    80004c10:	f6e7eae3          	bltu	a5,a4,80004b84 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1c0>
    80004c14:	f65ff06f          	j	80004b78 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1b4>
                }
            }
            printString("  ");
    80004c18:	00004517          	auipc	a0,0x4
    80004c1c:	98850513          	addi	a0,a0,-1656 # 800085a0 <CONSOLE_STATUS+0x590>
    80004c20:	00000097          	auipc	ra,0x0
    80004c24:	6e8080e7          	jalr	1768(ra) # 80005308 <_Z11printStringPKc>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80004c28:	001a8a93          	addi	s5,s5,1
    80004c2c:	0304b783          	ld	a5,48(s1)
    80004c30:	00faf663          	bgeu	s5,a5,80004c3c <_ZN16KObjectAllocator19printInternalMemoryEv+0x278>
            for (size_t j = 0; j < segmentSize; ++j) {
    80004c34:	00000913          	li	s2,0
    80004c38:	f7dff06f          	j	80004bb4 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1f0>
        }
        printString("\n");
    80004c3c:	00003517          	auipc	a0,0x3
    80004c40:	4d450513          	addi	a0,a0,1236 # 80008110 <CONSOLE_STATUS+0x100>
    80004c44:	00000097          	auipc	ra,0x0
    80004c48:	6c4080e7          	jalr	1732(ra) # 80005308 <_Z11printStringPKc>
        printedBytes += segmentSize;
    80004c4c:	010a0a13          	addi	s4,s4,16
    while(printedBytes < initialNumberOfObjects * objectSize) {
    80004c50:	0004b783          	ld	a5,0(s1)
    80004c54:	0184b703          	ld	a4,24(s1)
    80004c58:	02e787b3          	mul	a5,a5,a4
    80004c5c:	00fa7663          	bgeu	s4,a5,80004c68 <_ZN16KObjectAllocator19printInternalMemoryEv+0x2a4>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80004c60:	00000a93          	li	s5,0
    80004c64:	fc9ff06f          	j	80004c2c <_ZN16KObjectAllocator19printInternalMemoryEv+0x268>
    }
}
    80004c68:	03813083          	ld	ra,56(sp)
    80004c6c:	03013403          	ld	s0,48(sp)
    80004c70:	02813483          	ld	s1,40(sp)
    80004c74:	02013903          	ld	s2,32(sp)
    80004c78:	01813983          	ld	s3,24(sp)
    80004c7c:	01013a03          	ld	s4,16(sp)
    80004c80:	00813a83          	ld	s5,8(sp)
    80004c84:	00013b03          	ld	s6,0(sp)
    80004c88:	04010113          	addi	sp,sp,64
    80004c8c:	00008067          	ret

0000000080004c90 <_ZN16KObjectAllocator18allocateFreeObjectEv>:
        }
    }
    return nullptr;
}

void* KObjectAllocator::allocateFreeObject() {
    80004c90:	ff010113          	addi	sp,sp,-16
    80004c94:	00813423          	sd	s0,8(sp)
    80004c98:	01010413          	addi	s0,sp,16
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80004c9c:	00000893          	li	a7,0
    80004ca0:	03053783          	ld	a5,48(a0)
    80004ca4:	0cf8f463          	bgeu	a7,a5,80004d6c <_ZN16KObjectAllocator18allocateFreeObjectEv+0xdc>
        for (size_t j = nextNonTakenByte; j >= i * memorySizeForBits && j < (i + 1) * memorySizeForBits; ++j) {
    80004ca8:	03853303          	ld	t1,56(a0)
    80004cac:	0640006f          	j	80004d10 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x80>
                    printString("j: "); printInteger(j); printString("\n");
                    printString("nextNonTakenByte: "); printInteger(nextNonTakenByte); printString("\n");
                    printString("Byte: "); printInteger(byte); printString("\n");
                    printString("Bit: "); printInteger(bit); printString("\n");
                    printString("========================");*/
                    nextNonTakenByte = j + (bit == 1);
    80004cb0:	fff70793          	addi	a5,a4,-1
    80004cb4:	0017b793          	seqz	a5,a5
    80004cb8:	00678333          	add	t1,a5,t1
    80004cbc:	02653c23          	sd	t1,56(a0)
                    bitVectors[i][byte] |= (uint8) 1 << (bit - 1);
    80004cc0:	0006b683          	ld	a3,0(a3)
    80004cc4:	00c686b3          	add	a3,a3,a2
    80004cc8:	00100793          	li	a5,1
    80004ccc:	0107983b          	sllw	a6,a5,a6
    80004cd0:	0006c783          	lbu	a5,0(a3)
    80004cd4:	00f86833          	or	a6,a6,a5
    80004cd8:	01068023          	sb	a6,0(a3)
                    return &objectVectors[i][(byte * 8 + 8 - bit) * objectSize];
    80004cdc:	02053783          	ld	a5,32(a0)
    80004ce0:	00b785b3          	add	a1,a5,a1
    80004ce4:	0005b783          	ld	a5,0(a1)
    80004ce8:	00160613          	addi	a2,a2,1
    80004cec:	00361613          	slli	a2,a2,0x3
    80004cf0:	40e60733          	sub	a4,a2,a4
    80004cf4:	01853503          	ld	a0,24(a0)
    80004cf8:	02a70733          	mul	a4,a4,a0
    80004cfc:	00e78533          	add	a0,a5,a4
                }
            }
        }
    }
    return nullptr;
}
    80004d00:	00813403          	ld	s0,8(sp)
    80004d04:	01010113          	addi	sp,sp,16
    80004d08:	00008067          	ret
        for (size_t j = nextNonTakenByte; j >= i * memorySizeForBits && j < (i + 1) * memorySizeForBits; ++j) {
    80004d0c:	00130313          	addi	t1,t1,1
    80004d10:	01053783          	ld	a5,16(a0)
    80004d14:	03178633          	mul	a2,a5,a7
    80004d18:	04c36663          	bltu	t1,a2,80004d64 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xd4>
    80004d1c:	00188713          	addi	a4,a7,1
    80004d20:	02e787b3          	mul	a5,a5,a4
    80004d24:	04f37063          	bgeu	t1,a5,80004d64 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xd4>
            size_t byte = j - i * memorySizeForBits;
    80004d28:	40c30633          	sub	a2,t1,a2
            for (size_t bit = 8; bit != 0; --bit) {
    80004d2c:	00800713          	li	a4,8
    80004d30:	fc070ee3          	beqz	a4,80004d0c <_ZN16KObjectAllocator18allocateFreeObjectEv+0x7c>
                if ((bitVectors[i][byte] >> (bit - 1) & (uint8) 1) == 0) {
    80004d34:	02853683          	ld	a3,40(a0)
    80004d38:	00389593          	slli	a1,a7,0x3
    80004d3c:	00b686b3          	add	a3,a3,a1
    80004d40:	0006b783          	ld	a5,0(a3)
    80004d44:	00c787b3          	add	a5,a5,a2
    80004d48:	0007c783          	lbu	a5,0(a5)
    80004d4c:	fff7081b          	addiw	a6,a4,-1
    80004d50:	4107d7bb          	sraw	a5,a5,a6
    80004d54:	0017f793          	andi	a5,a5,1
    80004d58:	f4078ce3          	beqz	a5,80004cb0 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x20>
            for (size_t bit = 8; bit != 0; --bit) {
    80004d5c:	fff70713          	addi	a4,a4,-1
    80004d60:	fd1ff06f          	j	80004d30 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xa0>
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80004d64:	00188893          	addi	a7,a7,1
    80004d68:	f39ff06f          	j	80004ca0 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x10>
    return nullptr;
    80004d6c:	00000513          	li	a0,0
    80004d70:	f91ff06f          	j	80004d00 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x70>

0000000080004d74 <_ZN16KObjectAllocator10freeObjectEPv>:

void KObjectAllocator::freeObject(void* objectPointer) {
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80004d74:	00000713          	li	a4,0
    80004d78:	0080006f          	j	80004d80 <_ZN16KObjectAllocator10freeObjectEPv+0xc>
    80004d7c:	00170713          	addi	a4,a4,1
    80004d80:	03053783          	ld	a5,48(a0)
    80004d84:	06f77463          	bgeu	a4,a5,80004dec <_ZN16KObjectAllocator10freeObjectEPv+0x78>
        if ((uint8*) objectPointer < objectVectors[i]) continue;
    80004d88:	02053783          	ld	a5,32(a0)
    80004d8c:	00371693          	slli	a3,a4,0x3
    80004d90:	00d787b3          	add	a5,a5,a3
    80004d94:	0007b783          	ld	a5,0(a5)
    80004d98:	fef5e2e3          	bltu	a1,a5,80004d7c <_ZN16KObjectAllocator10freeObjectEPv+0x8>
        size_t idiff = (size_t) ((uint8*) objectPointer - objectVectors[i]);
    80004d9c:	40f587b3          	sub	a5,a1,a5
        size_t byte = idiff / objectSize / 8;
    80004da0:	01853603          	ld	a2,24(a0)
    80004da4:	02c7d7b3          	divu	a5,a5,a2
    80004da8:	0037d813          	srli	a6,a5,0x3
        if (byte >= memorySizeForBits) continue;
    80004dac:	01053603          	ld	a2,16(a0)
    80004db0:	fcc876e3          	bgeu	a6,a2,80004d7c <_ZN16KObjectAllocator10freeObjectEPv+0x8>
        size_t bit = idiff / objectSize - byte * 8;
    80004db4:	0077f793          	andi	a5,a5,7
        bitVectors[i][byte] &= ~((uint8) 1 << (7 - bit));
    80004db8:	02853603          	ld	a2,40(a0)
    80004dbc:	00d606b3          	add	a3,a2,a3
    80004dc0:	0006b703          	ld	a4,0(a3)
    80004dc4:	01070733          	add	a4,a4,a6
    80004dc8:	00700693          	li	a3,7
    80004dcc:	40f686bb          	subw	a3,a3,a5
    80004dd0:	00100793          	li	a5,1
    80004dd4:	00d797bb          	sllw	a5,a5,a3
    80004dd8:	fff7c793          	not	a5,a5
    80004ddc:	00074683          	lbu	a3,0(a4)
    80004de0:	00d7f7b3          	and	a5,a5,a3
    80004de4:	00f70023          	sb	a5,0(a4)
        return;
    80004de8:	00008067          	ret
void KObjectAllocator::freeObject(void* objectPointer) {
    80004dec:	ff010113          	addi	sp,sp,-16
    80004df0:	00113423          	sd	ra,8(sp)
    80004df4:	00813023          	sd	s0,0(sp)
    80004df8:	01010413          	addi	s0,sp,16
    }
    printString("ERROR: Object not allocated in this KObjectAllocator\n");
    80004dfc:	00003517          	auipc	a0,0x3
    80004e00:	7bc50513          	addi	a0,a0,1980 # 800085b8 <CONSOLE_STATUS+0x5a8>
    80004e04:	00000097          	auipc	ra,0x0
    80004e08:	504080e7          	jalr	1284(ra) # 80005308 <_Z11printStringPKc>
}
    80004e0c:	00813083          	ld	ra,8(sp)
    80004e10:	00013403          	ld	s0,0(sp)
    80004e14:	01010113          	addi	sp,sp,16
    80004e18:	00008067          	ret

0000000080004e1c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv>:

bool KObjectAllocator::handleNotEnoughMemoryProblem() {
    80004e1c:	fb010113          	addi	sp,sp,-80
    80004e20:	04113423          	sd	ra,72(sp)
    80004e24:	04813023          	sd	s0,64(sp)
    80004e28:	02913c23          	sd	s1,56(sp)
    80004e2c:	03213823          	sd	s2,48(sp)
    80004e30:	03313423          	sd	s3,40(sp)
    80004e34:	03413023          	sd	s4,32(sp)
    80004e38:	01513c23          	sd	s5,24(sp)
    80004e3c:	01613823          	sd	s6,16(sp)
    80004e40:	01713423          	sd	s7,8(sp)
    80004e44:	05010413          	addi	s0,sp,80
    80004e48:	00050493          	mv	s1,a0
    size_t newNumberOfAllocations = 2 * numberOfAllocations;
    80004e4c:	03053a03          	ld	s4,48(a0)
    80004e50:	001a1993          	slli	s3,s4,0x1
    size_t newNumberOfObjects = 2 * numberOfObjects;
    80004e54:	00853a83          	ld	s5,8(a0)
    uint8** newBitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(
    80004e58:	ffffd097          	auipc	ra,0xffffd
    80004e5c:	e6c080e7          	jalr	-404(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004e60:	004a1a13          	slli	s4,s4,0x4
    80004e64:	000a0593          	mv	a1,s4
    80004e68:	ffffd097          	auipc	ra,0xffffd
    80004e6c:	f40080e7          	jalr	-192(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
            newNumberOfAllocations * sizeof(uint8*)
    );
    if (!newBitVectors) return false;
    80004e70:	14050663          	beqz	a0,80004fbc <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a0>
    80004e74:	001a9a93          	slli	s5,s5,0x1
    80004e78:	00050913          	mv	s2,a0
    uint8** newObjectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(
    80004e7c:	ffffd097          	auipc	ra,0xffffd
    80004e80:	e48080e7          	jalr	-440(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004e84:	000a0593          	mv	a1,s4
    80004e88:	ffffd097          	auipc	ra,0xffffd
    80004e8c:	f20080e7          	jalr	-224(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80004e90:	00050a13          	mv	s4,a0
            newNumberOfAllocations * sizeof(uint8*)
    );
    if (!newObjectVectors) return false;
    80004e94:	14050c63          	beqz	a0,80004fec <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1d0>

    for (size_t i = 0; i < numberOfAllocations; ++i) newBitVectors[i] = bitVectors[i];
    80004e98:	00000793          	li	a5,0
    80004e9c:	0304bb03          	ld	s6,48(s1)
    80004ea0:	0367f463          	bgeu	a5,s6,80004ec8 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xac>
    80004ea4:	0284b703          	ld	a4,40(s1)
    80004ea8:	00379693          	slli	a3,a5,0x3
    80004eac:	00d90633          	add	a2,s2,a3
    80004eb0:	00d70733          	add	a4,a4,a3
    80004eb4:	00073703          	ld	a4,0(a4)
    80004eb8:	00e63023          	sd	a4,0(a2)
    80004ebc:	00178793          	addi	a5,a5,1
    80004ec0:	fddff06f          	j	80004e9c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x80>
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i) {
    80004ec4:	001b0b13          	addi	s6,s6,1
    80004ec8:	053b7063          	bgeu	s6,s3,80004f08 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xec>
        newBitVectors[i] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80004ecc:	ffffd097          	auipc	ra,0xffffd
    80004ed0:	df8080e7          	jalr	-520(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
        memorySizeForBits + initialNumberOfObjects * objectSize );
    80004ed4:	0104b583          	ld	a1,16(s1)
    80004ed8:	0004b783          	ld	a5,0(s1)
    80004edc:	0184b703          	ld	a4,24(s1)
    80004ee0:	02e787b3          	mul	a5,a5,a4
        newBitVectors[i] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80004ee4:	003b1b93          	slli	s7,s6,0x3
    80004ee8:	01790bb3          	add	s7,s2,s7
    80004eec:	00f585b3          	add	a1,a1,a5
    80004ef0:	ffffd097          	auipc	ra,0xffffd
    80004ef4:	eb8080e7          	jalr	-328(ra) # 80001da8 <_ZN15MemoryAllocator10kmem_allocEm>
    80004ef8:	00abb023          	sd	a0,0(s7)
        if (!newBitVectors[i]) return false;
    80004efc:	fc0514e3          	bnez	a0,80004ec4 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xa8>
    80004f00:	00000513          	li	a0,0
    80004f04:	0bc0006f          	j	80004fc0 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a4>
    }
    for (size_t i = 0; i < newNumberOfAllocations; ++i) newObjectVectors[i] = newBitVectors[i] + memorySizeForBits;
    80004f08:	00000713          	li	a4,0
    80004f0c:	03377463          	bgeu	a4,s3,80004f34 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x118>
    80004f10:	00371793          	slli	a5,a4,0x3
    80004f14:	00f906b3          	add	a3,s2,a5
    80004f18:	0006b683          	ld	a3,0(a3)
    80004f1c:	0104b603          	ld	a2,16(s1)
    80004f20:	00fa07b3          	add	a5,s4,a5
    80004f24:	00c686b3          	add	a3,a3,a2
    80004f28:	00d7b023          	sd	a3,0(a5)
    80004f2c:	00170713          	addi	a4,a4,1
    80004f30:	fddff06f          	j	80004f0c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xf0>
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i)
    80004f34:	0304b683          	ld	a3,48(s1)
    80004f38:	0280006f          	j	80004f60 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x144>
        for (size_t j = 0; j < memorySizeForBits; newBitVectors[i][j++] = 0);
    80004f3c:	00369713          	slli	a4,a3,0x3
    80004f40:	00e90733          	add	a4,s2,a4
    80004f44:	00073703          	ld	a4,0(a4)
    80004f48:	00f70733          	add	a4,a4,a5
    80004f4c:	00070023          	sb	zero,0(a4)
    80004f50:	00178793          	addi	a5,a5,1
    80004f54:	0104b703          	ld	a4,16(s1)
    80004f58:	fee7e2e3          	bltu	a5,a4,80004f3c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x120>
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i)
    80004f5c:	00168693          	addi	a3,a3,1
    80004f60:	0136f663          	bgeu	a3,s3,80004f6c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x150>
        for (size_t j = 0; j < memorySizeForBits; newBitVectors[i][j++] = 0);
    80004f64:	00000793          	li	a5,0
    80004f68:	fedff06f          	j	80004f54 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x138>
    MemoryAllocator::instance()->kmem_free(bitVectors);
    80004f6c:	ffffd097          	auipc	ra,0xffffd
    80004f70:	d58080e7          	jalr	-680(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004f74:	0284b583          	ld	a1,40(s1)
    80004f78:	ffffd097          	auipc	ra,0xffffd
    80004f7c:	ed8080e7          	jalr	-296(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(objectVectors);
    80004f80:	ffffd097          	auipc	ra,0xffffd
    80004f84:	d44080e7          	jalr	-700(ra) # 80001cc4 <_ZN15MemoryAllocator8instanceEv>
    80004f88:	0204b583          	ld	a1,32(s1)
    80004f8c:	ffffd097          	auipc	ra,0xffffd
    80004f90:	ec4080e7          	jalr	-316(ra) # 80001e50 <_ZN15MemoryAllocator9kmem_freeEPv>

    numberOfObjects = newNumberOfObjects;
    80004f94:	0154b423          	sd	s5,8(s1)
    nextNonTakenByte = numberOfAllocations * memorySizeForBits;
    80004f98:	0304b783          	ld	a5,48(s1)
    80004f9c:	0104b703          	ld	a4,16(s1)
    80004fa0:	02e787b3          	mul	a5,a5,a4
    80004fa4:	02f4bc23          	sd	a5,56(s1)
    numberOfAllocations = newNumberOfAllocations;
    80004fa8:	0334b823          	sd	s3,48(s1)
    bitVectors = newBitVectors;
    80004fac:	0324b423          	sd	s2,40(s1)
    objectVectors = newObjectVectors;
    80004fb0:	0344b023          	sd	s4,32(s1)

    return true;
    80004fb4:	00100513          	li	a0,1
    80004fb8:	0080006f          	j	80004fc0 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a4>
    if (!newBitVectors) return false;
    80004fbc:	00000513          	li	a0,0
}
    80004fc0:	04813083          	ld	ra,72(sp)
    80004fc4:	04013403          	ld	s0,64(sp)
    80004fc8:	03813483          	ld	s1,56(sp)
    80004fcc:	03013903          	ld	s2,48(sp)
    80004fd0:	02813983          	ld	s3,40(sp)
    80004fd4:	02013a03          	ld	s4,32(sp)
    80004fd8:	01813a83          	ld	s5,24(sp)
    80004fdc:	01013b03          	ld	s6,16(sp)
    80004fe0:	00813b83          	ld	s7,8(sp)
    80004fe4:	05010113          	addi	sp,sp,80
    80004fe8:	00008067          	ret
    if (!newObjectVectors) return false;
    80004fec:	00000513          	li	a0,0
    80004ff0:	fd1ff06f          	j	80004fc0 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a4>

0000000080004ff4 <_ZN16KObjectAllocator17allocateNewObjectEv>:
void* KObjectAllocator::allocateNewObject() {
    80004ff4:	fe010113          	addi	sp,sp,-32
    80004ff8:	00113c23          	sd	ra,24(sp)
    80004ffc:	00813823          	sd	s0,16(sp)
    80005000:	00913423          	sd	s1,8(sp)
    80005004:	01213023          	sd	s2,0(sp)
    80005008:	02010413          	addi	s0,sp,32
    8000500c:	00050913          	mv	s2,a0
    void* returnedObject = allocateFreeObject();
    80005010:	00000097          	auipc	ra,0x0
    80005014:	c80080e7          	jalr	-896(ra) # 80004c90 <_ZN16KObjectAllocator18allocateFreeObjectEv>
    80005018:	00050493          	mv	s1,a0
    if (returnedObject) {
    8000501c:	02050063          	beqz	a0,8000503c <_ZN16KObjectAllocator17allocateNewObjectEv+0x48>
}
    80005020:	00048513          	mv	a0,s1
    80005024:	01813083          	ld	ra,24(sp)
    80005028:	01013403          	ld	s0,16(sp)
    8000502c:	00813483          	ld	s1,8(sp)
    80005030:	00013903          	ld	s2,0(sp)
    80005034:	02010113          	addi	sp,sp,32
    80005038:	00008067          	ret
    nextNonTakenByte = 0;   // start search from start
    8000503c:	02093c23          	sd	zero,56(s2)
    returnedObject = allocateFreeObject();
    80005040:	00090513          	mv	a0,s2
    80005044:	00000097          	auipc	ra,0x0
    80005048:	c4c080e7          	jalr	-948(ra) # 80004c90 <_ZN16KObjectAllocator18allocateFreeObjectEv>
    8000504c:	00050493          	mv	s1,a0
    if (returnedObject) {
    80005050:	fc0518e3          	bnez	a0,80005020 <_ZN16KObjectAllocator17allocateNewObjectEv+0x2c>
    if (handleNotEnoughMemoryProblem()) {
    80005054:	00090513          	mv	a0,s2
    80005058:	00000097          	auipc	ra,0x0
    8000505c:	dc4080e7          	jalr	-572(ra) # 80004e1c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv>
    80005060:	fc0500e3          	beqz	a0,80005020 <_ZN16KObjectAllocator17allocateNewObjectEv+0x2c>
        returnedObject = allocateFreeObject();
    80005064:	00090513          	mv	a0,s2
    80005068:	00000097          	auipc	ra,0x0
    8000506c:	c28080e7          	jalr	-984(ra) # 80004c90 <_ZN16KObjectAllocator18allocateFreeObjectEv>
    80005070:	00050493          	mv	s1,a0
        if (returnedObject) {
    80005074:	fadff06f          	j	80005020 <_ZN16KObjectAllocator17allocateNewObjectEv+0x2c>

0000000080005078 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"

void Riscv::popSppSpie()
{
    80005078:	ff010113          	addi	sp,sp,-16
    8000507c:	00813423          	sd	s0,8(sp)
    80005080:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80005084:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80005088:	10200073          	sret
}
    8000508c:	00813403          	ld	s0,8(sp)
    80005090:	01010113          	addi	sp,sp,16
    80005094:	00008067          	ret

0000000080005098 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80005098:	fa010113          	addi	sp,sp,-96
    8000509c:	04113c23          	sd	ra,88(sp)
    800050a0:	04813823          	sd	s0,80(sp)
    800050a4:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800050a8:	142027f3          	csrr	a5,scause
    800050ac:	fcf43423          	sd	a5,-56(s0)
    return scause;
    800050b0:	fc843703          	ld	a4,-56(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    800050b4:	ff870693          	addi	a3,a4,-8
    800050b8:	00100793          	li	a5,1
    800050bc:	02d7fa63          	bgeu	a5,a3,800050f0 <_ZN5Riscv20handleSupervisorTrapEv+0x58>
        TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    800050c0:	fff00793          	li	a5,-1
    800050c4:	03f79793          	slli	a5,a5,0x3f
    800050c8:	00178793          	addi	a5,a5,1
    800050cc:	06f70863          	beq	a4,a5,8000513c <_ZN5Riscv20handleSupervisorTrapEv+0xa4>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    800050d0:	fff00793          	li	a5,-1
    800050d4:	03f79793          	slli	a5,a5,0x3f
    800050d8:	00978793          	addi	a5,a5,9
    800050dc:	0cf70c63          	beq	a4,a5,800051b4 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
    }
    else
    {
        // unexpected trap cause
    }
    800050e0:	05813083          	ld	ra,88(sp)
    800050e4:	05013403          	ld	s0,80(sp)
    800050e8:	06010113          	addi	sp,sp,96
    800050ec:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800050f0:	141027f3          	csrr	a5,sepc
    800050f4:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    800050f8:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    800050fc:	00478793          	addi	a5,a5,4
    80005100:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80005104:	100027f3          	csrr	a5,sstatus
    80005108:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    8000510c:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80005110:	faf43823          	sd	a5,-80(s0)
        TCB::timeSliceCounter = 0;
    80005114:	00004797          	auipc	a5,0x4
    80005118:	4bc7b783          	ld	a5,1212(a5) # 800095d0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000511c:	0007b023          	sd	zero,0(a5)
        TCB::dispatch();
    80005120:	ffffd097          	auipc	ra,0xffffd
    80005124:	a44080e7          	jalr	-1468(ra) # 80001b64 <_ZN3TCB8dispatchEv>
        w_sstatus(sstatus);
    80005128:	fb043783          	ld	a5,-80(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000512c:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80005130:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80005134:	14179073          	csrw	sepc,a5
}
    80005138:	fa9ff06f          	j	800050e0 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    8000513c:	00200793          	li	a5,2
    80005140:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80005144:	00004717          	auipc	a4,0x4
    80005148:	48c73703          	ld	a4,1164(a4) # 800095d0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000514c:	00073783          	ld	a5,0(a4)
    80005150:	00178793          	addi	a5,a5,1
    80005154:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80005158:	00004717          	auipc	a4,0x4
    8000515c:	49873703          	ld	a4,1176(a4) # 800095f0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80005160:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80005164:	02073703          	ld	a4,32(a4)
    80005168:	f6e7ece3          	bltu	a5,a4,800050e0 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000516c:	141027f3          	csrr	a5,sepc
    80005170:	fef43423          	sd	a5,-24(s0)
    return sepc;
    80005174:	fe843783          	ld	a5,-24(s0)
            uint64 volatile sepc = r_sepc();
    80005178:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000517c:	100027f3          	csrr	a5,sstatus
    80005180:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    80005184:	fe043783          	ld	a5,-32(s0)
            uint64 volatile sstatus = r_sstatus();
    80005188:	fcf43023          	sd	a5,-64(s0)
            TCB::timeSliceCounter = 0;
    8000518c:	00004797          	auipc	a5,0x4
    80005190:	4447b783          	ld	a5,1092(a5) # 800095d0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80005194:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80005198:	ffffd097          	auipc	ra,0xffffd
    8000519c:	9cc080e7          	jalr	-1588(ra) # 80001b64 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    800051a0:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800051a4:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    800051a8:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800051ac:	14179073          	csrw	sepc,a5
}
    800051b0:	f31ff06f          	j	800050e0 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
        console_handler();
    800051b4:	00002097          	auipc	ra,0x2
    800051b8:	620080e7          	jalr	1568(ra) # 800077d4 <console_handler>
    800051bc:	f25ff06f          	j	800050e0 <_ZN5Riscv20handleSupervisorTrapEv+0x48>

00000000800051c0 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    800051c0:	ff010113          	addi	sp,sp,-16
    800051c4:	00813423          	sd	s0,8(sp)
    800051c8:	01010413          	addi	s0,sp,16
    800051cc:	00100793          	li	a5,1
    800051d0:	00f50863          	beq	a0,a5,800051e0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800051d4:	00813403          	ld	s0,8(sp)
    800051d8:	01010113          	addi	sp,sp,16
    800051dc:	00008067          	ret
    800051e0:	000107b7          	lui	a5,0x10
    800051e4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800051e8:	fef596e3          	bne	a1,a5,800051d4 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800051ec:	00004797          	auipc	a5,0x4
    800051f0:	4a478793          	addi	a5,a5,1188 # 80009690 <_ZN9Scheduler16readyThreadQueueE>
    800051f4:	0007b023          	sd	zero,0(a5)
    800051f8:	0007b423          	sd	zero,8(a5)
    800051fc:	fd9ff06f          	j	800051d4 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080005200 <_ZN9Scheduler3getEv>:
{
    80005200:	fe010113          	addi	sp,sp,-32
    80005204:	00113c23          	sd	ra,24(sp)
    80005208:	00813823          	sd	s0,16(sp)
    8000520c:	00913423          	sd	s1,8(sp)
    80005210:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80005214:	00004517          	auipc	a0,0x4
    80005218:	47c53503          	ld	a0,1148(a0) # 80009690 <_ZN9Scheduler16readyThreadQueueE>
    8000521c:	04050263          	beqz	a0,80005260 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80005220:	00853783          	ld	a5,8(a0)
    80005224:	00004717          	auipc	a4,0x4
    80005228:	46f73623          	sd	a5,1132(a4) # 80009690 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    8000522c:	02078463          	beqz	a5,80005254 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80005230:	00053483          	ld	s1,0(a0)
        delete elem;
    80005234:	ffffe097          	auipc	ra,0xffffe
    80005238:	fc8080e7          	jalr	-56(ra) # 800031fc <_ZdlPv>
}
    8000523c:	00048513          	mv	a0,s1
    80005240:	01813083          	ld	ra,24(sp)
    80005244:	01013403          	ld	s0,16(sp)
    80005248:	00813483          	ld	s1,8(sp)
    8000524c:	02010113          	addi	sp,sp,32
    80005250:	00008067          	ret
        if (!head) { tail = 0; }
    80005254:	00004797          	auipc	a5,0x4
    80005258:	4407b223          	sd	zero,1092(a5) # 80009698 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000525c:	fd5ff06f          	j	80005230 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80005260:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80005264:	fd9ff06f          	j	8000523c <_ZN9Scheduler3getEv+0x3c>

0000000080005268 <_ZN9Scheduler3putEP3TCB>:
{
    80005268:	fe010113          	addi	sp,sp,-32
    8000526c:	00113c23          	sd	ra,24(sp)
    80005270:	00813823          	sd	s0,16(sp)
    80005274:	00913423          	sd	s1,8(sp)
    80005278:	02010413          	addi	s0,sp,32
    8000527c:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80005280:	01000513          	li	a0,16
    80005284:	ffffe097          	auipc	ra,0xffffe
    80005288:	f28080e7          	jalr	-216(ra) # 800031ac <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    8000528c:	00953023          	sd	s1,0(a0)
    80005290:	00053423          	sd	zero,8(a0)
        if (tail)
    80005294:	00004797          	auipc	a5,0x4
    80005298:	4047b783          	ld	a5,1028(a5) # 80009698 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000529c:	02078263          	beqz	a5,800052c0 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    800052a0:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800052a4:	00004797          	auipc	a5,0x4
    800052a8:	3ea7ba23          	sd	a0,1012(a5) # 80009698 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800052ac:	01813083          	ld	ra,24(sp)
    800052b0:	01013403          	ld	s0,16(sp)
    800052b4:	00813483          	ld	s1,8(sp)
    800052b8:	02010113          	addi	sp,sp,32
    800052bc:	00008067          	ret
            head = tail = elem;
    800052c0:	00004797          	auipc	a5,0x4
    800052c4:	3d078793          	addi	a5,a5,976 # 80009690 <_ZN9Scheduler16readyThreadQueueE>
    800052c8:	00a7b423          	sd	a0,8(a5)
    800052cc:	00a7b023          	sd	a0,0(a5)
    800052d0:	fddff06f          	j	800052ac <_ZN9Scheduler3putEP3TCB+0x44>

00000000800052d4 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800052d4:	ff010113          	addi	sp,sp,-16
    800052d8:	00113423          	sd	ra,8(sp)
    800052dc:	00813023          	sd	s0,0(sp)
    800052e0:	01010413          	addi	s0,sp,16
    800052e4:	000105b7          	lui	a1,0x10
    800052e8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800052ec:	00100513          	li	a0,1
    800052f0:	00000097          	auipc	ra,0x0
    800052f4:	ed0080e7          	jalr	-304(ra) # 800051c0 <_Z41__static_initialization_and_destruction_0ii>
    800052f8:	00813083          	ld	ra,8(sp)
    800052fc:	00013403          	ld	s0,0(sp)
    80005300:	01010113          	addi	sp,sp,16
    80005304:	00008067          	ret

0000000080005308 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80005308:	fd010113          	addi	sp,sp,-48
    8000530c:	02113423          	sd	ra,40(sp)
    80005310:	02813023          	sd	s0,32(sp)
    80005314:	00913c23          	sd	s1,24(sp)
    80005318:	01213823          	sd	s2,16(sp)
    8000531c:	03010413          	addi	s0,sp,48
    80005320:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80005324:	100027f3          	csrr	a5,sstatus
    80005328:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    8000532c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80005330:	00200793          	li	a5,2
    80005334:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    while (*string != '\0') __putc(*string++);
    80005338:	0004c503          	lbu	a0,0(s1)
    8000533c:	00050a63          	beqz	a0,80005350 <_Z11printStringPKc+0x48>
    80005340:	00148493          	addi	s1,s1,1
    80005344:	00002097          	auipc	ra,0x2
    80005348:	41c080e7          	jalr	1052(ra) # 80007760 <__putc>
    8000534c:	fedff06f          	j	80005338 <_Z11printStringPKc+0x30>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80005350:	0009091b          	sext.w	s2,s2
    80005354:	00297913          	andi	s2,s2,2
    80005358:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000535c:	10092073          	csrs	sstatus,s2
}
    80005360:	02813083          	ld	ra,40(sp)
    80005364:	02013403          	ld	s0,32(sp)
    80005368:	01813483          	ld	s1,24(sp)
    8000536c:	01013903          	ld	s2,16(sp)
    80005370:	03010113          	addi	sp,sp,48
    80005374:	00008067          	ret

0000000080005378 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80005378:	fc010113          	addi	sp,sp,-64
    8000537c:	02113c23          	sd	ra,56(sp)
    80005380:	02813823          	sd	s0,48(sp)
    80005384:	02913423          	sd	s1,40(sp)
    80005388:	03213023          	sd	s2,32(sp)
    8000538c:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80005390:	100027f3          	csrr	a5,sstatus
    80005394:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80005398:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000539c:	00200793          	li	a5,2
    800053a0:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    static char digits[] = "0123456789";
    char buf[16]; int i = 0; uint64 x = integer;
    int neg = (integer & ((uint64)1 << 63)) != 0;
    800053a4:	00050593          	mv	a1,a0

    if (neg) x = ~integer + 1;
    800053a8:	06054463          	bltz	a0,80005410 <_Z12printIntegerm+0x98>
{
    800053ac:	00000493          	li	s1,0

    do buf[i++] = digits[x % 10];
    800053b0:	00a00713          	li	a4,10
    800053b4:	02e57633          	remu	a2,a0,a4
    800053b8:	00048693          	mv	a3,s1
    800053bc:	0014849b          	addiw	s1,s1,1
    800053c0:	00003797          	auipc	a5,0x3
    800053c4:	23078793          	addi	a5,a5,560 # 800085f0 <_ZZ12printIntegermE6digits>
    800053c8:	00c787b3          	add	a5,a5,a2
    800053cc:	0007c603          	lbu	a2,0(a5)
    800053d0:	fe040793          	addi	a5,s0,-32
    800053d4:	00d787b3          	add	a5,a5,a3
    800053d8:	fec78823          	sb	a2,-16(a5)
    while ((x /= 10) != 0);
    800053dc:	00050613          	mv	a2,a0
    800053e0:	02e55533          	divu	a0,a0,a4
    800053e4:	00900793          	li	a5,9
    800053e8:	fcc7e4e3          	bltu	a5,a2,800053b0 <_Z12printIntegerm+0x38>

    if (neg) buf[i++] = '-';
    800053ec:	0205c663          	bltz	a1,80005418 <_Z12printIntegerm+0xa0>
    while (--i >= 0) { __putc(buf[i]); }
    800053f0:	fff4849b          	addiw	s1,s1,-1
    800053f4:	0204ce63          	bltz	s1,80005430 <_Z12printIntegerm+0xb8>
    800053f8:	fe040793          	addi	a5,s0,-32
    800053fc:	009787b3          	add	a5,a5,s1
    80005400:	ff07c503          	lbu	a0,-16(a5)
    80005404:	00002097          	auipc	ra,0x2
    80005408:	35c080e7          	jalr	860(ra) # 80007760 <__putc>
    8000540c:	fe5ff06f          	j	800053f0 <_Z12printIntegerm+0x78>
    if (neg) x = ~integer + 1;
    80005410:	40a00533          	neg	a0,a0
    80005414:	f99ff06f          	j	800053ac <_Z12printIntegerm+0x34>
    if (neg) buf[i++] = '-';
    80005418:	fe040793          	addi	a5,s0,-32
    8000541c:	009784b3          	add	s1,a5,s1
    80005420:	02d00793          	li	a5,45
    80005424:	fef48823          	sb	a5,-16(s1)
    80005428:	0026849b          	addiw	s1,a3,2
    8000542c:	fc5ff06f          	j	800053f0 <_Z12printIntegerm+0x78>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80005430:	0009091b          	sext.w	s2,s2
    80005434:	00297913          	andi	s2,s2,2
    80005438:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000543c:	10092073          	csrs	sstatus,s2
}
    80005440:	03813083          	ld	ra,56(sp)
    80005444:	03013403          	ld	s0,48(sp)
    80005448:	02813483          	ld	s1,40(sp)
    8000544c:	02013903          	ld	s2,32(sp)
    80005450:	04010113          	addi	sp,sp,64
    80005454:	00008067          	ret

0000000080005458 <_Z12printIntegerh>:


void printInteger(uint8 integer)
{
    80005458:	ff010113          	addi	sp,sp,-16
    8000545c:	00113423          	sd	ra,8(sp)
    80005460:	00813023          	sd	s0,0(sp)
    80005464:	01010413          	addi	s0,sp,16
    printInteger((uint64)integer);
    80005468:	00000097          	auipc	ra,0x0
    8000546c:	f10080e7          	jalr	-240(ra) # 80005378 <_Z12printIntegerm>
}
    80005470:	00813083          	ld	ra,8(sp)
    80005474:	00013403          	ld	s0,0(sp)
    80005478:	01010113          	addi	sp,sp,16
    8000547c:	00008067          	ret

0000000080005480 <start>:
    80005480:	ff010113          	addi	sp,sp,-16
    80005484:	00813423          	sd	s0,8(sp)
    80005488:	01010413          	addi	s0,sp,16
    8000548c:	300027f3          	csrr	a5,mstatus
    80005490:	ffffe737          	lui	a4,0xffffe
    80005494:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff3eef>
    80005498:	00e7f7b3          	and	a5,a5,a4
    8000549c:	00001737          	lui	a4,0x1
    800054a0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800054a4:	00e7e7b3          	or	a5,a5,a4
    800054a8:	30079073          	csrw	mstatus,a5
    800054ac:	00000797          	auipc	a5,0x0
    800054b0:	16078793          	addi	a5,a5,352 # 8000560c <system_main>
    800054b4:	34179073          	csrw	mepc,a5
    800054b8:	00000793          	li	a5,0
    800054bc:	18079073          	csrw	satp,a5
    800054c0:	000107b7          	lui	a5,0x10
    800054c4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800054c8:	30279073          	csrw	medeleg,a5
    800054cc:	30379073          	csrw	mideleg,a5
    800054d0:	104027f3          	csrr	a5,sie
    800054d4:	2227e793          	ori	a5,a5,546
    800054d8:	10479073          	csrw	sie,a5
    800054dc:	fff00793          	li	a5,-1
    800054e0:	00a7d793          	srli	a5,a5,0xa
    800054e4:	3b079073          	csrw	pmpaddr0,a5
    800054e8:	00f00793          	li	a5,15
    800054ec:	3a079073          	csrw	pmpcfg0,a5
    800054f0:	f14027f3          	csrr	a5,mhartid
    800054f4:	0200c737          	lui	a4,0x200c
    800054f8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800054fc:	0007869b          	sext.w	a3,a5
    80005500:	00269713          	slli	a4,a3,0x2
    80005504:	000f4637          	lui	a2,0xf4
    80005508:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000550c:	00d70733          	add	a4,a4,a3
    80005510:	0037979b          	slliw	a5,a5,0x3
    80005514:	020046b7          	lui	a3,0x2004
    80005518:	00d787b3          	add	a5,a5,a3
    8000551c:	00c585b3          	add	a1,a1,a2
    80005520:	00371693          	slli	a3,a4,0x3
    80005524:	00004717          	auipc	a4,0x4
    80005528:	17c70713          	addi	a4,a4,380 # 800096a0 <timer_scratch>
    8000552c:	00b7b023          	sd	a1,0(a5)
    80005530:	00d70733          	add	a4,a4,a3
    80005534:	00f73c23          	sd	a5,24(a4)
    80005538:	02c73023          	sd	a2,32(a4)
    8000553c:	34071073          	csrw	mscratch,a4
    80005540:	00000797          	auipc	a5,0x0
    80005544:	6e078793          	addi	a5,a5,1760 # 80005c20 <timervec>
    80005548:	30579073          	csrw	mtvec,a5
    8000554c:	300027f3          	csrr	a5,mstatus
    80005550:	0087e793          	ori	a5,a5,8
    80005554:	30079073          	csrw	mstatus,a5
    80005558:	304027f3          	csrr	a5,mie
    8000555c:	0807e793          	ori	a5,a5,128
    80005560:	30479073          	csrw	mie,a5
    80005564:	f14027f3          	csrr	a5,mhartid
    80005568:	0007879b          	sext.w	a5,a5
    8000556c:	00078213          	mv	tp,a5
    80005570:	30200073          	mret
    80005574:	00813403          	ld	s0,8(sp)
    80005578:	01010113          	addi	sp,sp,16
    8000557c:	00008067          	ret

0000000080005580 <timerinit>:
    80005580:	ff010113          	addi	sp,sp,-16
    80005584:	00813423          	sd	s0,8(sp)
    80005588:	01010413          	addi	s0,sp,16
    8000558c:	f14027f3          	csrr	a5,mhartid
    80005590:	0200c737          	lui	a4,0x200c
    80005594:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005598:	0007869b          	sext.w	a3,a5
    8000559c:	00269713          	slli	a4,a3,0x2
    800055a0:	000f4637          	lui	a2,0xf4
    800055a4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800055a8:	00d70733          	add	a4,a4,a3
    800055ac:	0037979b          	slliw	a5,a5,0x3
    800055b0:	020046b7          	lui	a3,0x2004
    800055b4:	00d787b3          	add	a5,a5,a3
    800055b8:	00c585b3          	add	a1,a1,a2
    800055bc:	00371693          	slli	a3,a4,0x3
    800055c0:	00004717          	auipc	a4,0x4
    800055c4:	0e070713          	addi	a4,a4,224 # 800096a0 <timer_scratch>
    800055c8:	00b7b023          	sd	a1,0(a5)
    800055cc:	00d70733          	add	a4,a4,a3
    800055d0:	00f73c23          	sd	a5,24(a4)
    800055d4:	02c73023          	sd	a2,32(a4)
    800055d8:	34071073          	csrw	mscratch,a4
    800055dc:	00000797          	auipc	a5,0x0
    800055e0:	64478793          	addi	a5,a5,1604 # 80005c20 <timervec>
    800055e4:	30579073          	csrw	mtvec,a5
    800055e8:	300027f3          	csrr	a5,mstatus
    800055ec:	0087e793          	ori	a5,a5,8
    800055f0:	30079073          	csrw	mstatus,a5
    800055f4:	304027f3          	csrr	a5,mie
    800055f8:	0807e793          	ori	a5,a5,128
    800055fc:	30479073          	csrw	mie,a5
    80005600:	00813403          	ld	s0,8(sp)
    80005604:	01010113          	addi	sp,sp,16
    80005608:	00008067          	ret

000000008000560c <system_main>:
    8000560c:	fe010113          	addi	sp,sp,-32
    80005610:	00813823          	sd	s0,16(sp)
    80005614:	00913423          	sd	s1,8(sp)
    80005618:	00113c23          	sd	ra,24(sp)
    8000561c:	02010413          	addi	s0,sp,32
    80005620:	00000097          	auipc	ra,0x0
    80005624:	0c4080e7          	jalr	196(ra) # 800056e4 <cpuid>
    80005628:	00004497          	auipc	s1,0x4
    8000562c:	00848493          	addi	s1,s1,8 # 80009630 <started>
    80005630:	02050263          	beqz	a0,80005654 <system_main+0x48>
    80005634:	0004a783          	lw	a5,0(s1)
    80005638:	0007879b          	sext.w	a5,a5
    8000563c:	fe078ce3          	beqz	a5,80005634 <system_main+0x28>
    80005640:	0ff0000f          	fence
    80005644:	00003517          	auipc	a0,0x3
    80005648:	fec50513          	addi	a0,a0,-20 # 80008630 <_ZZ12printIntegermE6digits+0x40>
    8000564c:	00001097          	auipc	ra,0x1
    80005650:	a70080e7          	jalr	-1424(ra) # 800060bc <panic>
    80005654:	00001097          	auipc	ra,0x1
    80005658:	9c4080e7          	jalr	-1596(ra) # 80006018 <consoleinit>
    8000565c:	00001097          	auipc	ra,0x1
    80005660:	150080e7          	jalr	336(ra) # 800067ac <printfinit>
    80005664:	00003517          	auipc	a0,0x3
    80005668:	aac50513          	addi	a0,a0,-1364 # 80008110 <CONSOLE_STATUS+0x100>
    8000566c:	00001097          	auipc	ra,0x1
    80005670:	aac080e7          	jalr	-1364(ra) # 80006118 <__printf>
    80005674:	00003517          	auipc	a0,0x3
    80005678:	f8c50513          	addi	a0,a0,-116 # 80008600 <_ZZ12printIntegermE6digits+0x10>
    8000567c:	00001097          	auipc	ra,0x1
    80005680:	a9c080e7          	jalr	-1380(ra) # 80006118 <__printf>
    80005684:	00003517          	auipc	a0,0x3
    80005688:	a8c50513          	addi	a0,a0,-1396 # 80008110 <CONSOLE_STATUS+0x100>
    8000568c:	00001097          	auipc	ra,0x1
    80005690:	a8c080e7          	jalr	-1396(ra) # 80006118 <__printf>
    80005694:	00001097          	auipc	ra,0x1
    80005698:	4a4080e7          	jalr	1188(ra) # 80006b38 <kinit>
    8000569c:	00000097          	auipc	ra,0x0
    800056a0:	148080e7          	jalr	328(ra) # 800057e4 <trapinit>
    800056a4:	00000097          	auipc	ra,0x0
    800056a8:	16c080e7          	jalr	364(ra) # 80005810 <trapinithart>
    800056ac:	00000097          	auipc	ra,0x0
    800056b0:	5b4080e7          	jalr	1460(ra) # 80005c60 <plicinit>
    800056b4:	00000097          	auipc	ra,0x0
    800056b8:	5d4080e7          	jalr	1492(ra) # 80005c88 <plicinithart>
    800056bc:	00000097          	auipc	ra,0x0
    800056c0:	078080e7          	jalr	120(ra) # 80005734 <userinit>
    800056c4:	0ff0000f          	fence
    800056c8:	00100793          	li	a5,1
    800056cc:	00003517          	auipc	a0,0x3
    800056d0:	f4c50513          	addi	a0,a0,-180 # 80008618 <_ZZ12printIntegermE6digits+0x28>
    800056d4:	00f4a023          	sw	a5,0(s1)
    800056d8:	00001097          	auipc	ra,0x1
    800056dc:	a40080e7          	jalr	-1472(ra) # 80006118 <__printf>
    800056e0:	0000006f          	j	800056e0 <system_main+0xd4>

00000000800056e4 <cpuid>:
    800056e4:	ff010113          	addi	sp,sp,-16
    800056e8:	00813423          	sd	s0,8(sp)
    800056ec:	01010413          	addi	s0,sp,16
    800056f0:	00020513          	mv	a0,tp
    800056f4:	00813403          	ld	s0,8(sp)
    800056f8:	0005051b          	sext.w	a0,a0
    800056fc:	01010113          	addi	sp,sp,16
    80005700:	00008067          	ret

0000000080005704 <mycpu>:
    80005704:	ff010113          	addi	sp,sp,-16
    80005708:	00813423          	sd	s0,8(sp)
    8000570c:	01010413          	addi	s0,sp,16
    80005710:	00020793          	mv	a5,tp
    80005714:	00813403          	ld	s0,8(sp)
    80005718:	0007879b          	sext.w	a5,a5
    8000571c:	00779793          	slli	a5,a5,0x7
    80005720:	00005517          	auipc	a0,0x5
    80005724:	fb050513          	addi	a0,a0,-80 # 8000a6d0 <cpus>
    80005728:	00f50533          	add	a0,a0,a5
    8000572c:	01010113          	addi	sp,sp,16
    80005730:	00008067          	ret

0000000080005734 <userinit>:
    80005734:	ff010113          	addi	sp,sp,-16
    80005738:	00813423          	sd	s0,8(sp)
    8000573c:	01010413          	addi	s0,sp,16
    80005740:	00813403          	ld	s0,8(sp)
    80005744:	01010113          	addi	sp,sp,16
    80005748:	ffffc317          	auipc	t1,0xffffc
    8000574c:	f4430067          	jr	-188(t1) # 8000168c <main>

0000000080005750 <either_copyout>:
    80005750:	ff010113          	addi	sp,sp,-16
    80005754:	00813023          	sd	s0,0(sp)
    80005758:	00113423          	sd	ra,8(sp)
    8000575c:	01010413          	addi	s0,sp,16
    80005760:	02051663          	bnez	a0,8000578c <either_copyout+0x3c>
    80005764:	00058513          	mv	a0,a1
    80005768:	00060593          	mv	a1,a2
    8000576c:	0006861b          	sext.w	a2,a3
    80005770:	00002097          	auipc	ra,0x2
    80005774:	c54080e7          	jalr	-940(ra) # 800073c4 <__memmove>
    80005778:	00813083          	ld	ra,8(sp)
    8000577c:	00013403          	ld	s0,0(sp)
    80005780:	00000513          	li	a0,0
    80005784:	01010113          	addi	sp,sp,16
    80005788:	00008067          	ret
    8000578c:	00003517          	auipc	a0,0x3
    80005790:	ecc50513          	addi	a0,a0,-308 # 80008658 <_ZZ12printIntegermE6digits+0x68>
    80005794:	00001097          	auipc	ra,0x1
    80005798:	928080e7          	jalr	-1752(ra) # 800060bc <panic>

000000008000579c <either_copyin>:
    8000579c:	ff010113          	addi	sp,sp,-16
    800057a0:	00813023          	sd	s0,0(sp)
    800057a4:	00113423          	sd	ra,8(sp)
    800057a8:	01010413          	addi	s0,sp,16
    800057ac:	02059463          	bnez	a1,800057d4 <either_copyin+0x38>
    800057b0:	00060593          	mv	a1,a2
    800057b4:	0006861b          	sext.w	a2,a3
    800057b8:	00002097          	auipc	ra,0x2
    800057bc:	c0c080e7          	jalr	-1012(ra) # 800073c4 <__memmove>
    800057c0:	00813083          	ld	ra,8(sp)
    800057c4:	00013403          	ld	s0,0(sp)
    800057c8:	00000513          	li	a0,0
    800057cc:	01010113          	addi	sp,sp,16
    800057d0:	00008067          	ret
    800057d4:	00003517          	auipc	a0,0x3
    800057d8:	eac50513          	addi	a0,a0,-340 # 80008680 <_ZZ12printIntegermE6digits+0x90>
    800057dc:	00001097          	auipc	ra,0x1
    800057e0:	8e0080e7          	jalr	-1824(ra) # 800060bc <panic>

00000000800057e4 <trapinit>:
    800057e4:	ff010113          	addi	sp,sp,-16
    800057e8:	00813423          	sd	s0,8(sp)
    800057ec:	01010413          	addi	s0,sp,16
    800057f0:	00813403          	ld	s0,8(sp)
    800057f4:	00003597          	auipc	a1,0x3
    800057f8:	eb458593          	addi	a1,a1,-332 # 800086a8 <_ZZ12printIntegermE6digits+0xb8>
    800057fc:	00005517          	auipc	a0,0x5
    80005800:	f5450513          	addi	a0,a0,-172 # 8000a750 <tickslock>
    80005804:	01010113          	addi	sp,sp,16
    80005808:	00001317          	auipc	t1,0x1
    8000580c:	5c030067          	jr	1472(t1) # 80006dc8 <initlock>

0000000080005810 <trapinithart>:
    80005810:	ff010113          	addi	sp,sp,-16
    80005814:	00813423          	sd	s0,8(sp)
    80005818:	01010413          	addi	s0,sp,16
    8000581c:	00000797          	auipc	a5,0x0
    80005820:	2f478793          	addi	a5,a5,756 # 80005b10 <kernelvec>
    80005824:	10579073          	csrw	stvec,a5
    80005828:	00813403          	ld	s0,8(sp)
    8000582c:	01010113          	addi	sp,sp,16
    80005830:	00008067          	ret

0000000080005834 <usertrap>:
    80005834:	ff010113          	addi	sp,sp,-16
    80005838:	00813423          	sd	s0,8(sp)
    8000583c:	01010413          	addi	s0,sp,16
    80005840:	00813403          	ld	s0,8(sp)
    80005844:	01010113          	addi	sp,sp,16
    80005848:	00008067          	ret

000000008000584c <usertrapret>:
    8000584c:	ff010113          	addi	sp,sp,-16
    80005850:	00813423          	sd	s0,8(sp)
    80005854:	01010413          	addi	s0,sp,16
    80005858:	00813403          	ld	s0,8(sp)
    8000585c:	01010113          	addi	sp,sp,16
    80005860:	00008067          	ret

0000000080005864 <kerneltrap>:
    80005864:	fe010113          	addi	sp,sp,-32
    80005868:	00813823          	sd	s0,16(sp)
    8000586c:	00113c23          	sd	ra,24(sp)
    80005870:	00913423          	sd	s1,8(sp)
    80005874:	02010413          	addi	s0,sp,32
    80005878:	142025f3          	csrr	a1,scause
    8000587c:	100027f3          	csrr	a5,sstatus
    80005880:	0027f793          	andi	a5,a5,2
    80005884:	10079c63          	bnez	a5,8000599c <kerneltrap+0x138>
    80005888:	142027f3          	csrr	a5,scause
    8000588c:	0207ce63          	bltz	a5,800058c8 <kerneltrap+0x64>
    80005890:	00003517          	auipc	a0,0x3
    80005894:	e6050513          	addi	a0,a0,-416 # 800086f0 <_ZZ12printIntegermE6digits+0x100>
    80005898:	00001097          	auipc	ra,0x1
    8000589c:	880080e7          	jalr	-1920(ra) # 80006118 <__printf>
    800058a0:	141025f3          	csrr	a1,sepc
    800058a4:	14302673          	csrr	a2,stval
    800058a8:	00003517          	auipc	a0,0x3
    800058ac:	e5850513          	addi	a0,a0,-424 # 80008700 <_ZZ12printIntegermE6digits+0x110>
    800058b0:	00001097          	auipc	ra,0x1
    800058b4:	868080e7          	jalr	-1944(ra) # 80006118 <__printf>
    800058b8:	00003517          	auipc	a0,0x3
    800058bc:	e6050513          	addi	a0,a0,-416 # 80008718 <_ZZ12printIntegermE6digits+0x128>
    800058c0:	00000097          	auipc	ra,0x0
    800058c4:	7fc080e7          	jalr	2044(ra) # 800060bc <panic>
    800058c8:	0ff7f713          	andi	a4,a5,255
    800058cc:	00900693          	li	a3,9
    800058d0:	04d70063          	beq	a4,a3,80005910 <kerneltrap+0xac>
    800058d4:	fff00713          	li	a4,-1
    800058d8:	03f71713          	slli	a4,a4,0x3f
    800058dc:	00170713          	addi	a4,a4,1
    800058e0:	fae798e3          	bne	a5,a4,80005890 <kerneltrap+0x2c>
    800058e4:	00000097          	auipc	ra,0x0
    800058e8:	e00080e7          	jalr	-512(ra) # 800056e4 <cpuid>
    800058ec:	06050663          	beqz	a0,80005958 <kerneltrap+0xf4>
    800058f0:	144027f3          	csrr	a5,sip
    800058f4:	ffd7f793          	andi	a5,a5,-3
    800058f8:	14479073          	csrw	sip,a5
    800058fc:	01813083          	ld	ra,24(sp)
    80005900:	01013403          	ld	s0,16(sp)
    80005904:	00813483          	ld	s1,8(sp)
    80005908:	02010113          	addi	sp,sp,32
    8000590c:	00008067          	ret
    80005910:	00000097          	auipc	ra,0x0
    80005914:	3c4080e7          	jalr	964(ra) # 80005cd4 <plic_claim>
    80005918:	00a00793          	li	a5,10
    8000591c:	00050493          	mv	s1,a0
    80005920:	06f50863          	beq	a0,a5,80005990 <kerneltrap+0x12c>
    80005924:	fc050ce3          	beqz	a0,800058fc <kerneltrap+0x98>
    80005928:	00050593          	mv	a1,a0
    8000592c:	00003517          	auipc	a0,0x3
    80005930:	da450513          	addi	a0,a0,-604 # 800086d0 <_ZZ12printIntegermE6digits+0xe0>
    80005934:	00000097          	auipc	ra,0x0
    80005938:	7e4080e7          	jalr	2020(ra) # 80006118 <__printf>
    8000593c:	01013403          	ld	s0,16(sp)
    80005940:	01813083          	ld	ra,24(sp)
    80005944:	00048513          	mv	a0,s1
    80005948:	00813483          	ld	s1,8(sp)
    8000594c:	02010113          	addi	sp,sp,32
    80005950:	00000317          	auipc	t1,0x0
    80005954:	3bc30067          	jr	956(t1) # 80005d0c <plic_complete>
    80005958:	00005517          	auipc	a0,0x5
    8000595c:	df850513          	addi	a0,a0,-520 # 8000a750 <tickslock>
    80005960:	00001097          	auipc	ra,0x1
    80005964:	48c080e7          	jalr	1164(ra) # 80006dec <acquire>
    80005968:	00004717          	auipc	a4,0x4
    8000596c:	ccc70713          	addi	a4,a4,-820 # 80009634 <ticks>
    80005970:	00072783          	lw	a5,0(a4)
    80005974:	00005517          	auipc	a0,0x5
    80005978:	ddc50513          	addi	a0,a0,-548 # 8000a750 <tickslock>
    8000597c:	0017879b          	addiw	a5,a5,1
    80005980:	00f72023          	sw	a5,0(a4)
    80005984:	00001097          	auipc	ra,0x1
    80005988:	534080e7          	jalr	1332(ra) # 80006eb8 <release>
    8000598c:	f65ff06f          	j	800058f0 <kerneltrap+0x8c>
    80005990:	00001097          	auipc	ra,0x1
    80005994:	090080e7          	jalr	144(ra) # 80006a20 <uartintr>
    80005998:	fa5ff06f          	j	8000593c <kerneltrap+0xd8>
    8000599c:	00003517          	auipc	a0,0x3
    800059a0:	d1450513          	addi	a0,a0,-748 # 800086b0 <_ZZ12printIntegermE6digits+0xc0>
    800059a4:	00000097          	auipc	ra,0x0
    800059a8:	718080e7          	jalr	1816(ra) # 800060bc <panic>

00000000800059ac <clockintr>:
    800059ac:	fe010113          	addi	sp,sp,-32
    800059b0:	00813823          	sd	s0,16(sp)
    800059b4:	00913423          	sd	s1,8(sp)
    800059b8:	00113c23          	sd	ra,24(sp)
    800059bc:	02010413          	addi	s0,sp,32
    800059c0:	00005497          	auipc	s1,0x5
    800059c4:	d9048493          	addi	s1,s1,-624 # 8000a750 <tickslock>
    800059c8:	00048513          	mv	a0,s1
    800059cc:	00001097          	auipc	ra,0x1
    800059d0:	420080e7          	jalr	1056(ra) # 80006dec <acquire>
    800059d4:	00004717          	auipc	a4,0x4
    800059d8:	c6070713          	addi	a4,a4,-928 # 80009634 <ticks>
    800059dc:	00072783          	lw	a5,0(a4)
    800059e0:	01013403          	ld	s0,16(sp)
    800059e4:	01813083          	ld	ra,24(sp)
    800059e8:	00048513          	mv	a0,s1
    800059ec:	0017879b          	addiw	a5,a5,1
    800059f0:	00813483          	ld	s1,8(sp)
    800059f4:	00f72023          	sw	a5,0(a4)
    800059f8:	02010113          	addi	sp,sp,32
    800059fc:	00001317          	auipc	t1,0x1
    80005a00:	4bc30067          	jr	1212(t1) # 80006eb8 <release>

0000000080005a04 <devintr>:
    80005a04:	142027f3          	csrr	a5,scause
    80005a08:	00000513          	li	a0,0
    80005a0c:	0007c463          	bltz	a5,80005a14 <devintr+0x10>
    80005a10:	00008067          	ret
    80005a14:	fe010113          	addi	sp,sp,-32
    80005a18:	00813823          	sd	s0,16(sp)
    80005a1c:	00113c23          	sd	ra,24(sp)
    80005a20:	00913423          	sd	s1,8(sp)
    80005a24:	02010413          	addi	s0,sp,32
    80005a28:	0ff7f713          	andi	a4,a5,255
    80005a2c:	00900693          	li	a3,9
    80005a30:	04d70c63          	beq	a4,a3,80005a88 <devintr+0x84>
    80005a34:	fff00713          	li	a4,-1
    80005a38:	03f71713          	slli	a4,a4,0x3f
    80005a3c:	00170713          	addi	a4,a4,1
    80005a40:	00e78c63          	beq	a5,a4,80005a58 <devintr+0x54>
    80005a44:	01813083          	ld	ra,24(sp)
    80005a48:	01013403          	ld	s0,16(sp)
    80005a4c:	00813483          	ld	s1,8(sp)
    80005a50:	02010113          	addi	sp,sp,32
    80005a54:	00008067          	ret
    80005a58:	00000097          	auipc	ra,0x0
    80005a5c:	c8c080e7          	jalr	-884(ra) # 800056e4 <cpuid>
    80005a60:	06050663          	beqz	a0,80005acc <devintr+0xc8>
    80005a64:	144027f3          	csrr	a5,sip
    80005a68:	ffd7f793          	andi	a5,a5,-3
    80005a6c:	14479073          	csrw	sip,a5
    80005a70:	01813083          	ld	ra,24(sp)
    80005a74:	01013403          	ld	s0,16(sp)
    80005a78:	00813483          	ld	s1,8(sp)
    80005a7c:	00200513          	li	a0,2
    80005a80:	02010113          	addi	sp,sp,32
    80005a84:	00008067          	ret
    80005a88:	00000097          	auipc	ra,0x0
    80005a8c:	24c080e7          	jalr	588(ra) # 80005cd4 <plic_claim>
    80005a90:	00a00793          	li	a5,10
    80005a94:	00050493          	mv	s1,a0
    80005a98:	06f50663          	beq	a0,a5,80005b04 <devintr+0x100>
    80005a9c:	00100513          	li	a0,1
    80005aa0:	fa0482e3          	beqz	s1,80005a44 <devintr+0x40>
    80005aa4:	00048593          	mv	a1,s1
    80005aa8:	00003517          	auipc	a0,0x3
    80005aac:	c2850513          	addi	a0,a0,-984 # 800086d0 <_ZZ12printIntegermE6digits+0xe0>
    80005ab0:	00000097          	auipc	ra,0x0
    80005ab4:	668080e7          	jalr	1640(ra) # 80006118 <__printf>
    80005ab8:	00048513          	mv	a0,s1
    80005abc:	00000097          	auipc	ra,0x0
    80005ac0:	250080e7          	jalr	592(ra) # 80005d0c <plic_complete>
    80005ac4:	00100513          	li	a0,1
    80005ac8:	f7dff06f          	j	80005a44 <devintr+0x40>
    80005acc:	00005517          	auipc	a0,0x5
    80005ad0:	c8450513          	addi	a0,a0,-892 # 8000a750 <tickslock>
    80005ad4:	00001097          	auipc	ra,0x1
    80005ad8:	318080e7          	jalr	792(ra) # 80006dec <acquire>
    80005adc:	00004717          	auipc	a4,0x4
    80005ae0:	b5870713          	addi	a4,a4,-1192 # 80009634 <ticks>
    80005ae4:	00072783          	lw	a5,0(a4)
    80005ae8:	00005517          	auipc	a0,0x5
    80005aec:	c6850513          	addi	a0,a0,-920 # 8000a750 <tickslock>
    80005af0:	0017879b          	addiw	a5,a5,1
    80005af4:	00f72023          	sw	a5,0(a4)
    80005af8:	00001097          	auipc	ra,0x1
    80005afc:	3c0080e7          	jalr	960(ra) # 80006eb8 <release>
    80005b00:	f65ff06f          	j	80005a64 <devintr+0x60>
    80005b04:	00001097          	auipc	ra,0x1
    80005b08:	f1c080e7          	jalr	-228(ra) # 80006a20 <uartintr>
    80005b0c:	fadff06f          	j	80005ab8 <devintr+0xb4>

0000000080005b10 <kernelvec>:
    80005b10:	f0010113          	addi	sp,sp,-256
    80005b14:	00113023          	sd	ra,0(sp)
    80005b18:	00213423          	sd	sp,8(sp)
    80005b1c:	00313823          	sd	gp,16(sp)
    80005b20:	00413c23          	sd	tp,24(sp)
    80005b24:	02513023          	sd	t0,32(sp)
    80005b28:	02613423          	sd	t1,40(sp)
    80005b2c:	02713823          	sd	t2,48(sp)
    80005b30:	02813c23          	sd	s0,56(sp)
    80005b34:	04913023          	sd	s1,64(sp)
    80005b38:	04a13423          	sd	a0,72(sp)
    80005b3c:	04b13823          	sd	a1,80(sp)
    80005b40:	04c13c23          	sd	a2,88(sp)
    80005b44:	06d13023          	sd	a3,96(sp)
    80005b48:	06e13423          	sd	a4,104(sp)
    80005b4c:	06f13823          	sd	a5,112(sp)
    80005b50:	07013c23          	sd	a6,120(sp)
    80005b54:	09113023          	sd	a7,128(sp)
    80005b58:	09213423          	sd	s2,136(sp)
    80005b5c:	09313823          	sd	s3,144(sp)
    80005b60:	09413c23          	sd	s4,152(sp)
    80005b64:	0b513023          	sd	s5,160(sp)
    80005b68:	0b613423          	sd	s6,168(sp)
    80005b6c:	0b713823          	sd	s7,176(sp)
    80005b70:	0b813c23          	sd	s8,184(sp)
    80005b74:	0d913023          	sd	s9,192(sp)
    80005b78:	0da13423          	sd	s10,200(sp)
    80005b7c:	0db13823          	sd	s11,208(sp)
    80005b80:	0dc13c23          	sd	t3,216(sp)
    80005b84:	0fd13023          	sd	t4,224(sp)
    80005b88:	0fe13423          	sd	t5,232(sp)
    80005b8c:	0ff13823          	sd	t6,240(sp)
    80005b90:	cd5ff0ef          	jal	ra,80005864 <kerneltrap>
    80005b94:	00013083          	ld	ra,0(sp)
    80005b98:	00813103          	ld	sp,8(sp)
    80005b9c:	01013183          	ld	gp,16(sp)
    80005ba0:	02013283          	ld	t0,32(sp)
    80005ba4:	02813303          	ld	t1,40(sp)
    80005ba8:	03013383          	ld	t2,48(sp)
    80005bac:	03813403          	ld	s0,56(sp)
    80005bb0:	04013483          	ld	s1,64(sp)
    80005bb4:	04813503          	ld	a0,72(sp)
    80005bb8:	05013583          	ld	a1,80(sp)
    80005bbc:	05813603          	ld	a2,88(sp)
    80005bc0:	06013683          	ld	a3,96(sp)
    80005bc4:	06813703          	ld	a4,104(sp)
    80005bc8:	07013783          	ld	a5,112(sp)
    80005bcc:	07813803          	ld	a6,120(sp)
    80005bd0:	08013883          	ld	a7,128(sp)
    80005bd4:	08813903          	ld	s2,136(sp)
    80005bd8:	09013983          	ld	s3,144(sp)
    80005bdc:	09813a03          	ld	s4,152(sp)
    80005be0:	0a013a83          	ld	s5,160(sp)
    80005be4:	0a813b03          	ld	s6,168(sp)
    80005be8:	0b013b83          	ld	s7,176(sp)
    80005bec:	0b813c03          	ld	s8,184(sp)
    80005bf0:	0c013c83          	ld	s9,192(sp)
    80005bf4:	0c813d03          	ld	s10,200(sp)
    80005bf8:	0d013d83          	ld	s11,208(sp)
    80005bfc:	0d813e03          	ld	t3,216(sp)
    80005c00:	0e013e83          	ld	t4,224(sp)
    80005c04:	0e813f03          	ld	t5,232(sp)
    80005c08:	0f013f83          	ld	t6,240(sp)
    80005c0c:	10010113          	addi	sp,sp,256
    80005c10:	10200073          	sret
    80005c14:	00000013          	nop
    80005c18:	00000013          	nop
    80005c1c:	00000013          	nop

0000000080005c20 <timervec>:
    80005c20:	34051573          	csrrw	a0,mscratch,a0
    80005c24:	00b53023          	sd	a1,0(a0)
    80005c28:	00c53423          	sd	a2,8(a0)
    80005c2c:	00d53823          	sd	a3,16(a0)
    80005c30:	01853583          	ld	a1,24(a0)
    80005c34:	02053603          	ld	a2,32(a0)
    80005c38:	0005b683          	ld	a3,0(a1)
    80005c3c:	00c686b3          	add	a3,a3,a2
    80005c40:	00d5b023          	sd	a3,0(a1)
    80005c44:	00200593          	li	a1,2
    80005c48:	14459073          	csrw	sip,a1
    80005c4c:	01053683          	ld	a3,16(a0)
    80005c50:	00853603          	ld	a2,8(a0)
    80005c54:	00053583          	ld	a1,0(a0)
    80005c58:	34051573          	csrrw	a0,mscratch,a0
    80005c5c:	30200073          	mret

0000000080005c60 <plicinit>:
    80005c60:	ff010113          	addi	sp,sp,-16
    80005c64:	00813423          	sd	s0,8(sp)
    80005c68:	01010413          	addi	s0,sp,16
    80005c6c:	00813403          	ld	s0,8(sp)
    80005c70:	0c0007b7          	lui	a5,0xc000
    80005c74:	00100713          	li	a4,1
    80005c78:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80005c7c:	00e7a223          	sw	a4,4(a5)
    80005c80:	01010113          	addi	sp,sp,16
    80005c84:	00008067          	ret

0000000080005c88 <plicinithart>:
    80005c88:	ff010113          	addi	sp,sp,-16
    80005c8c:	00813023          	sd	s0,0(sp)
    80005c90:	00113423          	sd	ra,8(sp)
    80005c94:	01010413          	addi	s0,sp,16
    80005c98:	00000097          	auipc	ra,0x0
    80005c9c:	a4c080e7          	jalr	-1460(ra) # 800056e4 <cpuid>
    80005ca0:	0085171b          	slliw	a4,a0,0x8
    80005ca4:	0c0027b7          	lui	a5,0xc002
    80005ca8:	00e787b3          	add	a5,a5,a4
    80005cac:	40200713          	li	a4,1026
    80005cb0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005cb4:	00813083          	ld	ra,8(sp)
    80005cb8:	00013403          	ld	s0,0(sp)
    80005cbc:	00d5151b          	slliw	a0,a0,0xd
    80005cc0:	0c2017b7          	lui	a5,0xc201
    80005cc4:	00a78533          	add	a0,a5,a0
    80005cc8:	00052023          	sw	zero,0(a0)
    80005ccc:	01010113          	addi	sp,sp,16
    80005cd0:	00008067          	ret

0000000080005cd4 <plic_claim>:
    80005cd4:	ff010113          	addi	sp,sp,-16
    80005cd8:	00813023          	sd	s0,0(sp)
    80005cdc:	00113423          	sd	ra,8(sp)
    80005ce0:	01010413          	addi	s0,sp,16
    80005ce4:	00000097          	auipc	ra,0x0
    80005ce8:	a00080e7          	jalr	-1536(ra) # 800056e4 <cpuid>
    80005cec:	00813083          	ld	ra,8(sp)
    80005cf0:	00013403          	ld	s0,0(sp)
    80005cf4:	00d5151b          	slliw	a0,a0,0xd
    80005cf8:	0c2017b7          	lui	a5,0xc201
    80005cfc:	00a78533          	add	a0,a5,a0
    80005d00:	00452503          	lw	a0,4(a0)
    80005d04:	01010113          	addi	sp,sp,16
    80005d08:	00008067          	ret

0000000080005d0c <plic_complete>:
    80005d0c:	fe010113          	addi	sp,sp,-32
    80005d10:	00813823          	sd	s0,16(sp)
    80005d14:	00913423          	sd	s1,8(sp)
    80005d18:	00113c23          	sd	ra,24(sp)
    80005d1c:	02010413          	addi	s0,sp,32
    80005d20:	00050493          	mv	s1,a0
    80005d24:	00000097          	auipc	ra,0x0
    80005d28:	9c0080e7          	jalr	-1600(ra) # 800056e4 <cpuid>
    80005d2c:	01813083          	ld	ra,24(sp)
    80005d30:	01013403          	ld	s0,16(sp)
    80005d34:	00d5179b          	slliw	a5,a0,0xd
    80005d38:	0c201737          	lui	a4,0xc201
    80005d3c:	00f707b3          	add	a5,a4,a5
    80005d40:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80005d44:	00813483          	ld	s1,8(sp)
    80005d48:	02010113          	addi	sp,sp,32
    80005d4c:	00008067          	ret

0000000080005d50 <consolewrite>:
    80005d50:	fb010113          	addi	sp,sp,-80
    80005d54:	04813023          	sd	s0,64(sp)
    80005d58:	04113423          	sd	ra,72(sp)
    80005d5c:	02913c23          	sd	s1,56(sp)
    80005d60:	03213823          	sd	s2,48(sp)
    80005d64:	03313423          	sd	s3,40(sp)
    80005d68:	03413023          	sd	s4,32(sp)
    80005d6c:	01513c23          	sd	s5,24(sp)
    80005d70:	05010413          	addi	s0,sp,80
    80005d74:	06c05c63          	blez	a2,80005dec <consolewrite+0x9c>
    80005d78:	00060993          	mv	s3,a2
    80005d7c:	00050a13          	mv	s4,a0
    80005d80:	00058493          	mv	s1,a1
    80005d84:	00000913          	li	s2,0
    80005d88:	fff00a93          	li	s5,-1
    80005d8c:	01c0006f          	j	80005da8 <consolewrite+0x58>
    80005d90:	fbf44503          	lbu	a0,-65(s0)
    80005d94:	0019091b          	addiw	s2,s2,1
    80005d98:	00148493          	addi	s1,s1,1
    80005d9c:	00001097          	auipc	ra,0x1
    80005da0:	a9c080e7          	jalr	-1380(ra) # 80006838 <uartputc>
    80005da4:	03298063          	beq	s3,s2,80005dc4 <consolewrite+0x74>
    80005da8:	00048613          	mv	a2,s1
    80005dac:	00100693          	li	a3,1
    80005db0:	000a0593          	mv	a1,s4
    80005db4:	fbf40513          	addi	a0,s0,-65
    80005db8:	00000097          	auipc	ra,0x0
    80005dbc:	9e4080e7          	jalr	-1564(ra) # 8000579c <either_copyin>
    80005dc0:	fd5518e3          	bne	a0,s5,80005d90 <consolewrite+0x40>
    80005dc4:	04813083          	ld	ra,72(sp)
    80005dc8:	04013403          	ld	s0,64(sp)
    80005dcc:	03813483          	ld	s1,56(sp)
    80005dd0:	02813983          	ld	s3,40(sp)
    80005dd4:	02013a03          	ld	s4,32(sp)
    80005dd8:	01813a83          	ld	s5,24(sp)
    80005ddc:	00090513          	mv	a0,s2
    80005de0:	03013903          	ld	s2,48(sp)
    80005de4:	05010113          	addi	sp,sp,80
    80005de8:	00008067          	ret
    80005dec:	00000913          	li	s2,0
    80005df0:	fd5ff06f          	j	80005dc4 <consolewrite+0x74>

0000000080005df4 <consoleread>:
    80005df4:	f9010113          	addi	sp,sp,-112
    80005df8:	06813023          	sd	s0,96(sp)
    80005dfc:	04913c23          	sd	s1,88(sp)
    80005e00:	05213823          	sd	s2,80(sp)
    80005e04:	05313423          	sd	s3,72(sp)
    80005e08:	05413023          	sd	s4,64(sp)
    80005e0c:	03513c23          	sd	s5,56(sp)
    80005e10:	03613823          	sd	s6,48(sp)
    80005e14:	03713423          	sd	s7,40(sp)
    80005e18:	03813023          	sd	s8,32(sp)
    80005e1c:	06113423          	sd	ra,104(sp)
    80005e20:	01913c23          	sd	s9,24(sp)
    80005e24:	07010413          	addi	s0,sp,112
    80005e28:	00060b93          	mv	s7,a2
    80005e2c:	00050913          	mv	s2,a0
    80005e30:	00058c13          	mv	s8,a1
    80005e34:	00060b1b          	sext.w	s6,a2
    80005e38:	00005497          	auipc	s1,0x5
    80005e3c:	94048493          	addi	s1,s1,-1728 # 8000a778 <cons>
    80005e40:	00400993          	li	s3,4
    80005e44:	fff00a13          	li	s4,-1
    80005e48:	00a00a93          	li	s5,10
    80005e4c:	05705e63          	blez	s7,80005ea8 <consoleread+0xb4>
    80005e50:	09c4a703          	lw	a4,156(s1)
    80005e54:	0984a783          	lw	a5,152(s1)
    80005e58:	0007071b          	sext.w	a4,a4
    80005e5c:	08e78463          	beq	a5,a4,80005ee4 <consoleread+0xf0>
    80005e60:	07f7f713          	andi	a4,a5,127
    80005e64:	00e48733          	add	a4,s1,a4
    80005e68:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80005e6c:	0017869b          	addiw	a3,a5,1
    80005e70:	08d4ac23          	sw	a3,152(s1)
    80005e74:	00070c9b          	sext.w	s9,a4
    80005e78:	0b370663          	beq	a4,s3,80005f24 <consoleread+0x130>
    80005e7c:	00100693          	li	a3,1
    80005e80:	f9f40613          	addi	a2,s0,-97
    80005e84:	000c0593          	mv	a1,s8
    80005e88:	00090513          	mv	a0,s2
    80005e8c:	f8e40fa3          	sb	a4,-97(s0)
    80005e90:	00000097          	auipc	ra,0x0
    80005e94:	8c0080e7          	jalr	-1856(ra) # 80005750 <either_copyout>
    80005e98:	01450863          	beq	a0,s4,80005ea8 <consoleread+0xb4>
    80005e9c:	001c0c13          	addi	s8,s8,1
    80005ea0:	fffb8b9b          	addiw	s7,s7,-1
    80005ea4:	fb5c94e3          	bne	s9,s5,80005e4c <consoleread+0x58>
    80005ea8:	000b851b          	sext.w	a0,s7
    80005eac:	06813083          	ld	ra,104(sp)
    80005eb0:	06013403          	ld	s0,96(sp)
    80005eb4:	05813483          	ld	s1,88(sp)
    80005eb8:	05013903          	ld	s2,80(sp)
    80005ebc:	04813983          	ld	s3,72(sp)
    80005ec0:	04013a03          	ld	s4,64(sp)
    80005ec4:	03813a83          	ld	s5,56(sp)
    80005ec8:	02813b83          	ld	s7,40(sp)
    80005ecc:	02013c03          	ld	s8,32(sp)
    80005ed0:	01813c83          	ld	s9,24(sp)
    80005ed4:	40ab053b          	subw	a0,s6,a0
    80005ed8:	03013b03          	ld	s6,48(sp)
    80005edc:	07010113          	addi	sp,sp,112
    80005ee0:	00008067          	ret
    80005ee4:	00001097          	auipc	ra,0x1
    80005ee8:	1d8080e7          	jalr	472(ra) # 800070bc <push_on>
    80005eec:	0984a703          	lw	a4,152(s1)
    80005ef0:	09c4a783          	lw	a5,156(s1)
    80005ef4:	0007879b          	sext.w	a5,a5
    80005ef8:	fef70ce3          	beq	a4,a5,80005ef0 <consoleread+0xfc>
    80005efc:	00001097          	auipc	ra,0x1
    80005f00:	234080e7          	jalr	564(ra) # 80007130 <pop_on>
    80005f04:	0984a783          	lw	a5,152(s1)
    80005f08:	07f7f713          	andi	a4,a5,127
    80005f0c:	00e48733          	add	a4,s1,a4
    80005f10:	01874703          	lbu	a4,24(a4)
    80005f14:	0017869b          	addiw	a3,a5,1
    80005f18:	08d4ac23          	sw	a3,152(s1)
    80005f1c:	00070c9b          	sext.w	s9,a4
    80005f20:	f5371ee3          	bne	a4,s3,80005e7c <consoleread+0x88>
    80005f24:	000b851b          	sext.w	a0,s7
    80005f28:	f96bf2e3          	bgeu	s7,s6,80005eac <consoleread+0xb8>
    80005f2c:	08f4ac23          	sw	a5,152(s1)
    80005f30:	f7dff06f          	j	80005eac <consoleread+0xb8>

0000000080005f34 <consputc>:
    80005f34:	10000793          	li	a5,256
    80005f38:	00f50663          	beq	a0,a5,80005f44 <consputc+0x10>
    80005f3c:	00001317          	auipc	t1,0x1
    80005f40:	9f430067          	jr	-1548(t1) # 80006930 <uartputc_sync>
    80005f44:	ff010113          	addi	sp,sp,-16
    80005f48:	00113423          	sd	ra,8(sp)
    80005f4c:	00813023          	sd	s0,0(sp)
    80005f50:	01010413          	addi	s0,sp,16
    80005f54:	00800513          	li	a0,8
    80005f58:	00001097          	auipc	ra,0x1
    80005f5c:	9d8080e7          	jalr	-1576(ra) # 80006930 <uartputc_sync>
    80005f60:	02000513          	li	a0,32
    80005f64:	00001097          	auipc	ra,0x1
    80005f68:	9cc080e7          	jalr	-1588(ra) # 80006930 <uartputc_sync>
    80005f6c:	00013403          	ld	s0,0(sp)
    80005f70:	00813083          	ld	ra,8(sp)
    80005f74:	00800513          	li	a0,8
    80005f78:	01010113          	addi	sp,sp,16
    80005f7c:	00001317          	auipc	t1,0x1
    80005f80:	9b430067          	jr	-1612(t1) # 80006930 <uartputc_sync>

0000000080005f84 <consoleintr>:
    80005f84:	fe010113          	addi	sp,sp,-32
    80005f88:	00813823          	sd	s0,16(sp)
    80005f8c:	00913423          	sd	s1,8(sp)
    80005f90:	01213023          	sd	s2,0(sp)
    80005f94:	00113c23          	sd	ra,24(sp)
    80005f98:	02010413          	addi	s0,sp,32
    80005f9c:	00004917          	auipc	s2,0x4
    80005fa0:	7dc90913          	addi	s2,s2,2012 # 8000a778 <cons>
    80005fa4:	00050493          	mv	s1,a0
    80005fa8:	00090513          	mv	a0,s2
    80005fac:	00001097          	auipc	ra,0x1
    80005fb0:	e40080e7          	jalr	-448(ra) # 80006dec <acquire>
    80005fb4:	02048c63          	beqz	s1,80005fec <consoleintr+0x68>
    80005fb8:	0a092783          	lw	a5,160(s2)
    80005fbc:	09892703          	lw	a4,152(s2)
    80005fc0:	07f00693          	li	a3,127
    80005fc4:	40e7873b          	subw	a4,a5,a4
    80005fc8:	02e6e263          	bltu	a3,a4,80005fec <consoleintr+0x68>
    80005fcc:	00d00713          	li	a4,13
    80005fd0:	04e48063          	beq	s1,a4,80006010 <consoleintr+0x8c>
    80005fd4:	07f7f713          	andi	a4,a5,127
    80005fd8:	00e90733          	add	a4,s2,a4
    80005fdc:	0017879b          	addiw	a5,a5,1
    80005fe0:	0af92023          	sw	a5,160(s2)
    80005fe4:	00970c23          	sb	s1,24(a4)
    80005fe8:	08f92e23          	sw	a5,156(s2)
    80005fec:	01013403          	ld	s0,16(sp)
    80005ff0:	01813083          	ld	ra,24(sp)
    80005ff4:	00813483          	ld	s1,8(sp)
    80005ff8:	00013903          	ld	s2,0(sp)
    80005ffc:	00004517          	auipc	a0,0x4
    80006000:	77c50513          	addi	a0,a0,1916 # 8000a778 <cons>
    80006004:	02010113          	addi	sp,sp,32
    80006008:	00001317          	auipc	t1,0x1
    8000600c:	eb030067          	jr	-336(t1) # 80006eb8 <release>
    80006010:	00a00493          	li	s1,10
    80006014:	fc1ff06f          	j	80005fd4 <consoleintr+0x50>

0000000080006018 <consoleinit>:
    80006018:	fe010113          	addi	sp,sp,-32
    8000601c:	00113c23          	sd	ra,24(sp)
    80006020:	00813823          	sd	s0,16(sp)
    80006024:	00913423          	sd	s1,8(sp)
    80006028:	02010413          	addi	s0,sp,32
    8000602c:	00004497          	auipc	s1,0x4
    80006030:	74c48493          	addi	s1,s1,1868 # 8000a778 <cons>
    80006034:	00048513          	mv	a0,s1
    80006038:	00002597          	auipc	a1,0x2
    8000603c:	6f058593          	addi	a1,a1,1776 # 80008728 <_ZZ12printIntegermE6digits+0x138>
    80006040:	00001097          	auipc	ra,0x1
    80006044:	d88080e7          	jalr	-632(ra) # 80006dc8 <initlock>
    80006048:	00000097          	auipc	ra,0x0
    8000604c:	7ac080e7          	jalr	1964(ra) # 800067f4 <uartinit>
    80006050:	01813083          	ld	ra,24(sp)
    80006054:	01013403          	ld	s0,16(sp)
    80006058:	00000797          	auipc	a5,0x0
    8000605c:	d9c78793          	addi	a5,a5,-612 # 80005df4 <consoleread>
    80006060:	0af4bc23          	sd	a5,184(s1)
    80006064:	00000797          	auipc	a5,0x0
    80006068:	cec78793          	addi	a5,a5,-788 # 80005d50 <consolewrite>
    8000606c:	0cf4b023          	sd	a5,192(s1)
    80006070:	00813483          	ld	s1,8(sp)
    80006074:	02010113          	addi	sp,sp,32
    80006078:	00008067          	ret

000000008000607c <console_read>:
    8000607c:	ff010113          	addi	sp,sp,-16
    80006080:	00813423          	sd	s0,8(sp)
    80006084:	01010413          	addi	s0,sp,16
    80006088:	00813403          	ld	s0,8(sp)
    8000608c:	00004317          	auipc	t1,0x4
    80006090:	7a433303          	ld	t1,1956(t1) # 8000a830 <devsw+0x10>
    80006094:	01010113          	addi	sp,sp,16
    80006098:	00030067          	jr	t1

000000008000609c <console_write>:
    8000609c:	ff010113          	addi	sp,sp,-16
    800060a0:	00813423          	sd	s0,8(sp)
    800060a4:	01010413          	addi	s0,sp,16
    800060a8:	00813403          	ld	s0,8(sp)
    800060ac:	00004317          	auipc	t1,0x4
    800060b0:	78c33303          	ld	t1,1932(t1) # 8000a838 <devsw+0x18>
    800060b4:	01010113          	addi	sp,sp,16
    800060b8:	00030067          	jr	t1

00000000800060bc <panic>:
    800060bc:	fe010113          	addi	sp,sp,-32
    800060c0:	00113c23          	sd	ra,24(sp)
    800060c4:	00813823          	sd	s0,16(sp)
    800060c8:	00913423          	sd	s1,8(sp)
    800060cc:	02010413          	addi	s0,sp,32
    800060d0:	00050493          	mv	s1,a0
    800060d4:	00002517          	auipc	a0,0x2
    800060d8:	65c50513          	addi	a0,a0,1628 # 80008730 <_ZZ12printIntegermE6digits+0x140>
    800060dc:	00004797          	auipc	a5,0x4
    800060e0:	7e07ae23          	sw	zero,2044(a5) # 8000a8d8 <pr+0x18>
    800060e4:	00000097          	auipc	ra,0x0
    800060e8:	034080e7          	jalr	52(ra) # 80006118 <__printf>
    800060ec:	00048513          	mv	a0,s1
    800060f0:	00000097          	auipc	ra,0x0
    800060f4:	028080e7          	jalr	40(ra) # 80006118 <__printf>
    800060f8:	00002517          	auipc	a0,0x2
    800060fc:	01850513          	addi	a0,a0,24 # 80008110 <CONSOLE_STATUS+0x100>
    80006100:	00000097          	auipc	ra,0x0
    80006104:	018080e7          	jalr	24(ra) # 80006118 <__printf>
    80006108:	00100793          	li	a5,1
    8000610c:	00003717          	auipc	a4,0x3
    80006110:	52f72623          	sw	a5,1324(a4) # 80009638 <panicked>
    80006114:	0000006f          	j	80006114 <panic+0x58>

0000000080006118 <__printf>:
    80006118:	f3010113          	addi	sp,sp,-208
    8000611c:	08813023          	sd	s0,128(sp)
    80006120:	07313423          	sd	s3,104(sp)
    80006124:	09010413          	addi	s0,sp,144
    80006128:	05813023          	sd	s8,64(sp)
    8000612c:	08113423          	sd	ra,136(sp)
    80006130:	06913c23          	sd	s1,120(sp)
    80006134:	07213823          	sd	s2,112(sp)
    80006138:	07413023          	sd	s4,96(sp)
    8000613c:	05513c23          	sd	s5,88(sp)
    80006140:	05613823          	sd	s6,80(sp)
    80006144:	05713423          	sd	s7,72(sp)
    80006148:	03913c23          	sd	s9,56(sp)
    8000614c:	03a13823          	sd	s10,48(sp)
    80006150:	03b13423          	sd	s11,40(sp)
    80006154:	00004317          	auipc	t1,0x4
    80006158:	76c30313          	addi	t1,t1,1900 # 8000a8c0 <pr>
    8000615c:	01832c03          	lw	s8,24(t1)
    80006160:	00b43423          	sd	a1,8(s0)
    80006164:	00c43823          	sd	a2,16(s0)
    80006168:	00d43c23          	sd	a3,24(s0)
    8000616c:	02e43023          	sd	a4,32(s0)
    80006170:	02f43423          	sd	a5,40(s0)
    80006174:	03043823          	sd	a6,48(s0)
    80006178:	03143c23          	sd	a7,56(s0)
    8000617c:	00050993          	mv	s3,a0
    80006180:	4a0c1663          	bnez	s8,8000662c <__printf+0x514>
    80006184:	60098c63          	beqz	s3,8000679c <__printf+0x684>
    80006188:	0009c503          	lbu	a0,0(s3)
    8000618c:	00840793          	addi	a5,s0,8
    80006190:	f6f43c23          	sd	a5,-136(s0)
    80006194:	00000493          	li	s1,0
    80006198:	22050063          	beqz	a0,800063b8 <__printf+0x2a0>
    8000619c:	00002a37          	lui	s4,0x2
    800061a0:	00018ab7          	lui	s5,0x18
    800061a4:	000f4b37          	lui	s6,0xf4
    800061a8:	00989bb7          	lui	s7,0x989
    800061ac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800061b0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800061b4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800061b8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800061bc:	00148c9b          	addiw	s9,s1,1
    800061c0:	02500793          	li	a5,37
    800061c4:	01998933          	add	s2,s3,s9
    800061c8:	38f51263          	bne	a0,a5,8000654c <__printf+0x434>
    800061cc:	00094783          	lbu	a5,0(s2)
    800061d0:	00078c9b          	sext.w	s9,a5
    800061d4:	1e078263          	beqz	a5,800063b8 <__printf+0x2a0>
    800061d8:	0024849b          	addiw	s1,s1,2
    800061dc:	07000713          	li	a4,112
    800061e0:	00998933          	add	s2,s3,s1
    800061e4:	38e78a63          	beq	a5,a4,80006578 <__printf+0x460>
    800061e8:	20f76863          	bltu	a4,a5,800063f8 <__printf+0x2e0>
    800061ec:	42a78863          	beq	a5,a0,8000661c <__printf+0x504>
    800061f0:	06400713          	li	a4,100
    800061f4:	40e79663          	bne	a5,a4,80006600 <__printf+0x4e8>
    800061f8:	f7843783          	ld	a5,-136(s0)
    800061fc:	0007a603          	lw	a2,0(a5)
    80006200:	00878793          	addi	a5,a5,8
    80006204:	f6f43c23          	sd	a5,-136(s0)
    80006208:	42064a63          	bltz	a2,8000663c <__printf+0x524>
    8000620c:	00a00713          	li	a4,10
    80006210:	02e677bb          	remuw	a5,a2,a4
    80006214:	00002d97          	auipc	s11,0x2
    80006218:	544d8d93          	addi	s11,s11,1348 # 80008758 <digits>
    8000621c:	00900593          	li	a1,9
    80006220:	0006051b          	sext.w	a0,a2
    80006224:	00000c93          	li	s9,0
    80006228:	02079793          	slli	a5,a5,0x20
    8000622c:	0207d793          	srli	a5,a5,0x20
    80006230:	00fd87b3          	add	a5,s11,a5
    80006234:	0007c783          	lbu	a5,0(a5)
    80006238:	02e656bb          	divuw	a3,a2,a4
    8000623c:	f8f40023          	sb	a5,-128(s0)
    80006240:	14c5d863          	bge	a1,a2,80006390 <__printf+0x278>
    80006244:	06300593          	li	a1,99
    80006248:	00100c93          	li	s9,1
    8000624c:	02e6f7bb          	remuw	a5,a3,a4
    80006250:	02079793          	slli	a5,a5,0x20
    80006254:	0207d793          	srli	a5,a5,0x20
    80006258:	00fd87b3          	add	a5,s11,a5
    8000625c:	0007c783          	lbu	a5,0(a5)
    80006260:	02e6d73b          	divuw	a4,a3,a4
    80006264:	f8f400a3          	sb	a5,-127(s0)
    80006268:	12a5f463          	bgeu	a1,a0,80006390 <__printf+0x278>
    8000626c:	00a00693          	li	a3,10
    80006270:	00900593          	li	a1,9
    80006274:	02d777bb          	remuw	a5,a4,a3
    80006278:	02079793          	slli	a5,a5,0x20
    8000627c:	0207d793          	srli	a5,a5,0x20
    80006280:	00fd87b3          	add	a5,s11,a5
    80006284:	0007c503          	lbu	a0,0(a5)
    80006288:	02d757bb          	divuw	a5,a4,a3
    8000628c:	f8a40123          	sb	a0,-126(s0)
    80006290:	48e5f263          	bgeu	a1,a4,80006714 <__printf+0x5fc>
    80006294:	06300513          	li	a0,99
    80006298:	02d7f5bb          	remuw	a1,a5,a3
    8000629c:	02059593          	slli	a1,a1,0x20
    800062a0:	0205d593          	srli	a1,a1,0x20
    800062a4:	00bd85b3          	add	a1,s11,a1
    800062a8:	0005c583          	lbu	a1,0(a1)
    800062ac:	02d7d7bb          	divuw	a5,a5,a3
    800062b0:	f8b401a3          	sb	a1,-125(s0)
    800062b4:	48e57263          	bgeu	a0,a4,80006738 <__printf+0x620>
    800062b8:	3e700513          	li	a0,999
    800062bc:	02d7f5bb          	remuw	a1,a5,a3
    800062c0:	02059593          	slli	a1,a1,0x20
    800062c4:	0205d593          	srli	a1,a1,0x20
    800062c8:	00bd85b3          	add	a1,s11,a1
    800062cc:	0005c583          	lbu	a1,0(a1)
    800062d0:	02d7d7bb          	divuw	a5,a5,a3
    800062d4:	f8b40223          	sb	a1,-124(s0)
    800062d8:	46e57663          	bgeu	a0,a4,80006744 <__printf+0x62c>
    800062dc:	02d7f5bb          	remuw	a1,a5,a3
    800062e0:	02059593          	slli	a1,a1,0x20
    800062e4:	0205d593          	srli	a1,a1,0x20
    800062e8:	00bd85b3          	add	a1,s11,a1
    800062ec:	0005c583          	lbu	a1,0(a1)
    800062f0:	02d7d7bb          	divuw	a5,a5,a3
    800062f4:	f8b402a3          	sb	a1,-123(s0)
    800062f8:	46ea7863          	bgeu	s4,a4,80006768 <__printf+0x650>
    800062fc:	02d7f5bb          	remuw	a1,a5,a3
    80006300:	02059593          	slli	a1,a1,0x20
    80006304:	0205d593          	srli	a1,a1,0x20
    80006308:	00bd85b3          	add	a1,s11,a1
    8000630c:	0005c583          	lbu	a1,0(a1)
    80006310:	02d7d7bb          	divuw	a5,a5,a3
    80006314:	f8b40323          	sb	a1,-122(s0)
    80006318:	3eeaf863          	bgeu	s5,a4,80006708 <__printf+0x5f0>
    8000631c:	02d7f5bb          	remuw	a1,a5,a3
    80006320:	02059593          	slli	a1,a1,0x20
    80006324:	0205d593          	srli	a1,a1,0x20
    80006328:	00bd85b3          	add	a1,s11,a1
    8000632c:	0005c583          	lbu	a1,0(a1)
    80006330:	02d7d7bb          	divuw	a5,a5,a3
    80006334:	f8b403a3          	sb	a1,-121(s0)
    80006338:	42eb7e63          	bgeu	s6,a4,80006774 <__printf+0x65c>
    8000633c:	02d7f5bb          	remuw	a1,a5,a3
    80006340:	02059593          	slli	a1,a1,0x20
    80006344:	0205d593          	srli	a1,a1,0x20
    80006348:	00bd85b3          	add	a1,s11,a1
    8000634c:	0005c583          	lbu	a1,0(a1)
    80006350:	02d7d7bb          	divuw	a5,a5,a3
    80006354:	f8b40423          	sb	a1,-120(s0)
    80006358:	42ebfc63          	bgeu	s7,a4,80006790 <__printf+0x678>
    8000635c:	02079793          	slli	a5,a5,0x20
    80006360:	0207d793          	srli	a5,a5,0x20
    80006364:	00fd8db3          	add	s11,s11,a5
    80006368:	000dc703          	lbu	a4,0(s11)
    8000636c:	00a00793          	li	a5,10
    80006370:	00900c93          	li	s9,9
    80006374:	f8e404a3          	sb	a4,-119(s0)
    80006378:	00065c63          	bgez	a2,80006390 <__printf+0x278>
    8000637c:	f9040713          	addi	a4,s0,-112
    80006380:	00f70733          	add	a4,a4,a5
    80006384:	02d00693          	li	a3,45
    80006388:	fed70823          	sb	a3,-16(a4)
    8000638c:	00078c93          	mv	s9,a5
    80006390:	f8040793          	addi	a5,s0,-128
    80006394:	01978cb3          	add	s9,a5,s9
    80006398:	f7f40d13          	addi	s10,s0,-129
    8000639c:	000cc503          	lbu	a0,0(s9)
    800063a0:	fffc8c93          	addi	s9,s9,-1
    800063a4:	00000097          	auipc	ra,0x0
    800063a8:	b90080e7          	jalr	-1136(ra) # 80005f34 <consputc>
    800063ac:	ffac98e3          	bne	s9,s10,8000639c <__printf+0x284>
    800063b0:	00094503          	lbu	a0,0(s2)
    800063b4:	e00514e3          	bnez	a0,800061bc <__printf+0xa4>
    800063b8:	1a0c1663          	bnez	s8,80006564 <__printf+0x44c>
    800063bc:	08813083          	ld	ra,136(sp)
    800063c0:	08013403          	ld	s0,128(sp)
    800063c4:	07813483          	ld	s1,120(sp)
    800063c8:	07013903          	ld	s2,112(sp)
    800063cc:	06813983          	ld	s3,104(sp)
    800063d0:	06013a03          	ld	s4,96(sp)
    800063d4:	05813a83          	ld	s5,88(sp)
    800063d8:	05013b03          	ld	s6,80(sp)
    800063dc:	04813b83          	ld	s7,72(sp)
    800063e0:	04013c03          	ld	s8,64(sp)
    800063e4:	03813c83          	ld	s9,56(sp)
    800063e8:	03013d03          	ld	s10,48(sp)
    800063ec:	02813d83          	ld	s11,40(sp)
    800063f0:	0d010113          	addi	sp,sp,208
    800063f4:	00008067          	ret
    800063f8:	07300713          	li	a4,115
    800063fc:	1ce78a63          	beq	a5,a4,800065d0 <__printf+0x4b8>
    80006400:	07800713          	li	a4,120
    80006404:	1ee79e63          	bne	a5,a4,80006600 <__printf+0x4e8>
    80006408:	f7843783          	ld	a5,-136(s0)
    8000640c:	0007a703          	lw	a4,0(a5)
    80006410:	00878793          	addi	a5,a5,8
    80006414:	f6f43c23          	sd	a5,-136(s0)
    80006418:	28074263          	bltz	a4,8000669c <__printf+0x584>
    8000641c:	00002d97          	auipc	s11,0x2
    80006420:	33cd8d93          	addi	s11,s11,828 # 80008758 <digits>
    80006424:	00f77793          	andi	a5,a4,15
    80006428:	00fd87b3          	add	a5,s11,a5
    8000642c:	0007c683          	lbu	a3,0(a5)
    80006430:	00f00613          	li	a2,15
    80006434:	0007079b          	sext.w	a5,a4
    80006438:	f8d40023          	sb	a3,-128(s0)
    8000643c:	0047559b          	srliw	a1,a4,0x4
    80006440:	0047569b          	srliw	a3,a4,0x4
    80006444:	00000c93          	li	s9,0
    80006448:	0ee65063          	bge	a2,a4,80006528 <__printf+0x410>
    8000644c:	00f6f693          	andi	a3,a3,15
    80006450:	00dd86b3          	add	a3,s11,a3
    80006454:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006458:	0087d79b          	srliw	a5,a5,0x8
    8000645c:	00100c93          	li	s9,1
    80006460:	f8d400a3          	sb	a3,-127(s0)
    80006464:	0cb67263          	bgeu	a2,a1,80006528 <__printf+0x410>
    80006468:	00f7f693          	andi	a3,a5,15
    8000646c:	00dd86b3          	add	a3,s11,a3
    80006470:	0006c583          	lbu	a1,0(a3)
    80006474:	00f00613          	li	a2,15
    80006478:	0047d69b          	srliw	a3,a5,0x4
    8000647c:	f8b40123          	sb	a1,-126(s0)
    80006480:	0047d593          	srli	a1,a5,0x4
    80006484:	28f67e63          	bgeu	a2,a5,80006720 <__printf+0x608>
    80006488:	00f6f693          	andi	a3,a3,15
    8000648c:	00dd86b3          	add	a3,s11,a3
    80006490:	0006c503          	lbu	a0,0(a3)
    80006494:	0087d813          	srli	a6,a5,0x8
    80006498:	0087d69b          	srliw	a3,a5,0x8
    8000649c:	f8a401a3          	sb	a0,-125(s0)
    800064a0:	28b67663          	bgeu	a2,a1,8000672c <__printf+0x614>
    800064a4:	00f6f693          	andi	a3,a3,15
    800064a8:	00dd86b3          	add	a3,s11,a3
    800064ac:	0006c583          	lbu	a1,0(a3)
    800064b0:	00c7d513          	srli	a0,a5,0xc
    800064b4:	00c7d69b          	srliw	a3,a5,0xc
    800064b8:	f8b40223          	sb	a1,-124(s0)
    800064bc:	29067a63          	bgeu	a2,a6,80006750 <__printf+0x638>
    800064c0:	00f6f693          	andi	a3,a3,15
    800064c4:	00dd86b3          	add	a3,s11,a3
    800064c8:	0006c583          	lbu	a1,0(a3)
    800064cc:	0107d813          	srli	a6,a5,0x10
    800064d0:	0107d69b          	srliw	a3,a5,0x10
    800064d4:	f8b402a3          	sb	a1,-123(s0)
    800064d8:	28a67263          	bgeu	a2,a0,8000675c <__printf+0x644>
    800064dc:	00f6f693          	andi	a3,a3,15
    800064e0:	00dd86b3          	add	a3,s11,a3
    800064e4:	0006c683          	lbu	a3,0(a3)
    800064e8:	0147d79b          	srliw	a5,a5,0x14
    800064ec:	f8d40323          	sb	a3,-122(s0)
    800064f0:	21067663          	bgeu	a2,a6,800066fc <__printf+0x5e4>
    800064f4:	02079793          	slli	a5,a5,0x20
    800064f8:	0207d793          	srli	a5,a5,0x20
    800064fc:	00fd8db3          	add	s11,s11,a5
    80006500:	000dc683          	lbu	a3,0(s11)
    80006504:	00800793          	li	a5,8
    80006508:	00700c93          	li	s9,7
    8000650c:	f8d403a3          	sb	a3,-121(s0)
    80006510:	00075c63          	bgez	a4,80006528 <__printf+0x410>
    80006514:	f9040713          	addi	a4,s0,-112
    80006518:	00f70733          	add	a4,a4,a5
    8000651c:	02d00693          	li	a3,45
    80006520:	fed70823          	sb	a3,-16(a4)
    80006524:	00078c93          	mv	s9,a5
    80006528:	f8040793          	addi	a5,s0,-128
    8000652c:	01978cb3          	add	s9,a5,s9
    80006530:	f7f40d13          	addi	s10,s0,-129
    80006534:	000cc503          	lbu	a0,0(s9)
    80006538:	fffc8c93          	addi	s9,s9,-1
    8000653c:	00000097          	auipc	ra,0x0
    80006540:	9f8080e7          	jalr	-1544(ra) # 80005f34 <consputc>
    80006544:	ff9d18e3          	bne	s10,s9,80006534 <__printf+0x41c>
    80006548:	0100006f          	j	80006558 <__printf+0x440>
    8000654c:	00000097          	auipc	ra,0x0
    80006550:	9e8080e7          	jalr	-1560(ra) # 80005f34 <consputc>
    80006554:	000c8493          	mv	s1,s9
    80006558:	00094503          	lbu	a0,0(s2)
    8000655c:	c60510e3          	bnez	a0,800061bc <__printf+0xa4>
    80006560:	e40c0ee3          	beqz	s8,800063bc <__printf+0x2a4>
    80006564:	00004517          	auipc	a0,0x4
    80006568:	35c50513          	addi	a0,a0,860 # 8000a8c0 <pr>
    8000656c:	00001097          	auipc	ra,0x1
    80006570:	94c080e7          	jalr	-1716(ra) # 80006eb8 <release>
    80006574:	e49ff06f          	j	800063bc <__printf+0x2a4>
    80006578:	f7843783          	ld	a5,-136(s0)
    8000657c:	03000513          	li	a0,48
    80006580:	01000d13          	li	s10,16
    80006584:	00878713          	addi	a4,a5,8
    80006588:	0007bc83          	ld	s9,0(a5)
    8000658c:	f6e43c23          	sd	a4,-136(s0)
    80006590:	00000097          	auipc	ra,0x0
    80006594:	9a4080e7          	jalr	-1628(ra) # 80005f34 <consputc>
    80006598:	07800513          	li	a0,120
    8000659c:	00000097          	auipc	ra,0x0
    800065a0:	998080e7          	jalr	-1640(ra) # 80005f34 <consputc>
    800065a4:	00002d97          	auipc	s11,0x2
    800065a8:	1b4d8d93          	addi	s11,s11,436 # 80008758 <digits>
    800065ac:	03ccd793          	srli	a5,s9,0x3c
    800065b0:	00fd87b3          	add	a5,s11,a5
    800065b4:	0007c503          	lbu	a0,0(a5)
    800065b8:	fffd0d1b          	addiw	s10,s10,-1
    800065bc:	004c9c93          	slli	s9,s9,0x4
    800065c0:	00000097          	auipc	ra,0x0
    800065c4:	974080e7          	jalr	-1676(ra) # 80005f34 <consputc>
    800065c8:	fe0d12e3          	bnez	s10,800065ac <__printf+0x494>
    800065cc:	f8dff06f          	j	80006558 <__printf+0x440>
    800065d0:	f7843783          	ld	a5,-136(s0)
    800065d4:	0007bc83          	ld	s9,0(a5)
    800065d8:	00878793          	addi	a5,a5,8
    800065dc:	f6f43c23          	sd	a5,-136(s0)
    800065e0:	000c9a63          	bnez	s9,800065f4 <__printf+0x4dc>
    800065e4:	1080006f          	j	800066ec <__printf+0x5d4>
    800065e8:	001c8c93          	addi	s9,s9,1
    800065ec:	00000097          	auipc	ra,0x0
    800065f0:	948080e7          	jalr	-1720(ra) # 80005f34 <consputc>
    800065f4:	000cc503          	lbu	a0,0(s9)
    800065f8:	fe0518e3          	bnez	a0,800065e8 <__printf+0x4d0>
    800065fc:	f5dff06f          	j	80006558 <__printf+0x440>
    80006600:	02500513          	li	a0,37
    80006604:	00000097          	auipc	ra,0x0
    80006608:	930080e7          	jalr	-1744(ra) # 80005f34 <consputc>
    8000660c:	000c8513          	mv	a0,s9
    80006610:	00000097          	auipc	ra,0x0
    80006614:	924080e7          	jalr	-1756(ra) # 80005f34 <consputc>
    80006618:	f41ff06f          	j	80006558 <__printf+0x440>
    8000661c:	02500513          	li	a0,37
    80006620:	00000097          	auipc	ra,0x0
    80006624:	914080e7          	jalr	-1772(ra) # 80005f34 <consputc>
    80006628:	f31ff06f          	j	80006558 <__printf+0x440>
    8000662c:	00030513          	mv	a0,t1
    80006630:	00000097          	auipc	ra,0x0
    80006634:	7bc080e7          	jalr	1980(ra) # 80006dec <acquire>
    80006638:	b4dff06f          	j	80006184 <__printf+0x6c>
    8000663c:	40c0053b          	negw	a0,a2
    80006640:	00a00713          	li	a4,10
    80006644:	02e576bb          	remuw	a3,a0,a4
    80006648:	00002d97          	auipc	s11,0x2
    8000664c:	110d8d93          	addi	s11,s11,272 # 80008758 <digits>
    80006650:	ff700593          	li	a1,-9
    80006654:	02069693          	slli	a3,a3,0x20
    80006658:	0206d693          	srli	a3,a3,0x20
    8000665c:	00dd86b3          	add	a3,s11,a3
    80006660:	0006c683          	lbu	a3,0(a3)
    80006664:	02e557bb          	divuw	a5,a0,a4
    80006668:	f8d40023          	sb	a3,-128(s0)
    8000666c:	10b65e63          	bge	a2,a1,80006788 <__printf+0x670>
    80006670:	06300593          	li	a1,99
    80006674:	02e7f6bb          	remuw	a3,a5,a4
    80006678:	02069693          	slli	a3,a3,0x20
    8000667c:	0206d693          	srli	a3,a3,0x20
    80006680:	00dd86b3          	add	a3,s11,a3
    80006684:	0006c683          	lbu	a3,0(a3)
    80006688:	02e7d73b          	divuw	a4,a5,a4
    8000668c:	00200793          	li	a5,2
    80006690:	f8d400a3          	sb	a3,-127(s0)
    80006694:	bca5ece3          	bltu	a1,a0,8000626c <__printf+0x154>
    80006698:	ce5ff06f          	j	8000637c <__printf+0x264>
    8000669c:	40e007bb          	negw	a5,a4
    800066a0:	00002d97          	auipc	s11,0x2
    800066a4:	0b8d8d93          	addi	s11,s11,184 # 80008758 <digits>
    800066a8:	00f7f693          	andi	a3,a5,15
    800066ac:	00dd86b3          	add	a3,s11,a3
    800066b0:	0006c583          	lbu	a1,0(a3)
    800066b4:	ff100613          	li	a2,-15
    800066b8:	0047d69b          	srliw	a3,a5,0x4
    800066bc:	f8b40023          	sb	a1,-128(s0)
    800066c0:	0047d59b          	srliw	a1,a5,0x4
    800066c4:	0ac75e63          	bge	a4,a2,80006780 <__printf+0x668>
    800066c8:	00f6f693          	andi	a3,a3,15
    800066cc:	00dd86b3          	add	a3,s11,a3
    800066d0:	0006c603          	lbu	a2,0(a3)
    800066d4:	00f00693          	li	a3,15
    800066d8:	0087d79b          	srliw	a5,a5,0x8
    800066dc:	f8c400a3          	sb	a2,-127(s0)
    800066e0:	d8b6e4e3          	bltu	a3,a1,80006468 <__printf+0x350>
    800066e4:	00200793          	li	a5,2
    800066e8:	e2dff06f          	j	80006514 <__printf+0x3fc>
    800066ec:	00002c97          	auipc	s9,0x2
    800066f0:	04cc8c93          	addi	s9,s9,76 # 80008738 <_ZZ12printIntegermE6digits+0x148>
    800066f4:	02800513          	li	a0,40
    800066f8:	ef1ff06f          	j	800065e8 <__printf+0x4d0>
    800066fc:	00700793          	li	a5,7
    80006700:	00600c93          	li	s9,6
    80006704:	e0dff06f          	j	80006510 <__printf+0x3f8>
    80006708:	00700793          	li	a5,7
    8000670c:	00600c93          	li	s9,6
    80006710:	c69ff06f          	j	80006378 <__printf+0x260>
    80006714:	00300793          	li	a5,3
    80006718:	00200c93          	li	s9,2
    8000671c:	c5dff06f          	j	80006378 <__printf+0x260>
    80006720:	00300793          	li	a5,3
    80006724:	00200c93          	li	s9,2
    80006728:	de9ff06f          	j	80006510 <__printf+0x3f8>
    8000672c:	00400793          	li	a5,4
    80006730:	00300c93          	li	s9,3
    80006734:	dddff06f          	j	80006510 <__printf+0x3f8>
    80006738:	00400793          	li	a5,4
    8000673c:	00300c93          	li	s9,3
    80006740:	c39ff06f          	j	80006378 <__printf+0x260>
    80006744:	00500793          	li	a5,5
    80006748:	00400c93          	li	s9,4
    8000674c:	c2dff06f          	j	80006378 <__printf+0x260>
    80006750:	00500793          	li	a5,5
    80006754:	00400c93          	li	s9,4
    80006758:	db9ff06f          	j	80006510 <__printf+0x3f8>
    8000675c:	00600793          	li	a5,6
    80006760:	00500c93          	li	s9,5
    80006764:	dadff06f          	j	80006510 <__printf+0x3f8>
    80006768:	00600793          	li	a5,6
    8000676c:	00500c93          	li	s9,5
    80006770:	c09ff06f          	j	80006378 <__printf+0x260>
    80006774:	00800793          	li	a5,8
    80006778:	00700c93          	li	s9,7
    8000677c:	bfdff06f          	j	80006378 <__printf+0x260>
    80006780:	00100793          	li	a5,1
    80006784:	d91ff06f          	j	80006514 <__printf+0x3fc>
    80006788:	00100793          	li	a5,1
    8000678c:	bf1ff06f          	j	8000637c <__printf+0x264>
    80006790:	00900793          	li	a5,9
    80006794:	00800c93          	li	s9,8
    80006798:	be1ff06f          	j	80006378 <__printf+0x260>
    8000679c:	00002517          	auipc	a0,0x2
    800067a0:	fa450513          	addi	a0,a0,-92 # 80008740 <_ZZ12printIntegermE6digits+0x150>
    800067a4:	00000097          	auipc	ra,0x0
    800067a8:	918080e7          	jalr	-1768(ra) # 800060bc <panic>

00000000800067ac <printfinit>:
    800067ac:	fe010113          	addi	sp,sp,-32
    800067b0:	00813823          	sd	s0,16(sp)
    800067b4:	00913423          	sd	s1,8(sp)
    800067b8:	00113c23          	sd	ra,24(sp)
    800067bc:	02010413          	addi	s0,sp,32
    800067c0:	00004497          	auipc	s1,0x4
    800067c4:	10048493          	addi	s1,s1,256 # 8000a8c0 <pr>
    800067c8:	00048513          	mv	a0,s1
    800067cc:	00002597          	auipc	a1,0x2
    800067d0:	f8458593          	addi	a1,a1,-124 # 80008750 <_ZZ12printIntegermE6digits+0x160>
    800067d4:	00000097          	auipc	ra,0x0
    800067d8:	5f4080e7          	jalr	1524(ra) # 80006dc8 <initlock>
    800067dc:	01813083          	ld	ra,24(sp)
    800067e0:	01013403          	ld	s0,16(sp)
    800067e4:	0004ac23          	sw	zero,24(s1)
    800067e8:	00813483          	ld	s1,8(sp)
    800067ec:	02010113          	addi	sp,sp,32
    800067f0:	00008067          	ret

00000000800067f4 <uartinit>:
    800067f4:	ff010113          	addi	sp,sp,-16
    800067f8:	00813423          	sd	s0,8(sp)
    800067fc:	01010413          	addi	s0,sp,16
    80006800:	100007b7          	lui	a5,0x10000
    80006804:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006808:	f8000713          	li	a4,-128
    8000680c:	00e781a3          	sb	a4,3(a5)
    80006810:	00300713          	li	a4,3
    80006814:	00e78023          	sb	a4,0(a5)
    80006818:	000780a3          	sb	zero,1(a5)
    8000681c:	00e781a3          	sb	a4,3(a5)
    80006820:	00700693          	li	a3,7
    80006824:	00d78123          	sb	a3,2(a5)
    80006828:	00e780a3          	sb	a4,1(a5)
    8000682c:	00813403          	ld	s0,8(sp)
    80006830:	01010113          	addi	sp,sp,16
    80006834:	00008067          	ret

0000000080006838 <uartputc>:
    80006838:	00003797          	auipc	a5,0x3
    8000683c:	e007a783          	lw	a5,-512(a5) # 80009638 <panicked>
    80006840:	00078463          	beqz	a5,80006848 <uartputc+0x10>
    80006844:	0000006f          	j	80006844 <uartputc+0xc>
    80006848:	fd010113          	addi	sp,sp,-48
    8000684c:	02813023          	sd	s0,32(sp)
    80006850:	00913c23          	sd	s1,24(sp)
    80006854:	01213823          	sd	s2,16(sp)
    80006858:	01313423          	sd	s3,8(sp)
    8000685c:	02113423          	sd	ra,40(sp)
    80006860:	03010413          	addi	s0,sp,48
    80006864:	00003917          	auipc	s2,0x3
    80006868:	ddc90913          	addi	s2,s2,-548 # 80009640 <uart_tx_r>
    8000686c:	00093783          	ld	a5,0(s2)
    80006870:	00003497          	auipc	s1,0x3
    80006874:	dd848493          	addi	s1,s1,-552 # 80009648 <uart_tx_w>
    80006878:	0004b703          	ld	a4,0(s1)
    8000687c:	02078693          	addi	a3,a5,32
    80006880:	00050993          	mv	s3,a0
    80006884:	02e69c63          	bne	a3,a4,800068bc <uartputc+0x84>
    80006888:	00001097          	auipc	ra,0x1
    8000688c:	834080e7          	jalr	-1996(ra) # 800070bc <push_on>
    80006890:	00093783          	ld	a5,0(s2)
    80006894:	0004b703          	ld	a4,0(s1)
    80006898:	02078793          	addi	a5,a5,32
    8000689c:	00e79463          	bne	a5,a4,800068a4 <uartputc+0x6c>
    800068a0:	0000006f          	j	800068a0 <uartputc+0x68>
    800068a4:	00001097          	auipc	ra,0x1
    800068a8:	88c080e7          	jalr	-1908(ra) # 80007130 <pop_on>
    800068ac:	00093783          	ld	a5,0(s2)
    800068b0:	0004b703          	ld	a4,0(s1)
    800068b4:	02078693          	addi	a3,a5,32
    800068b8:	fce688e3          	beq	a3,a4,80006888 <uartputc+0x50>
    800068bc:	01f77693          	andi	a3,a4,31
    800068c0:	00004597          	auipc	a1,0x4
    800068c4:	02058593          	addi	a1,a1,32 # 8000a8e0 <uart_tx_buf>
    800068c8:	00d586b3          	add	a3,a1,a3
    800068cc:	00170713          	addi	a4,a4,1
    800068d0:	01368023          	sb	s3,0(a3)
    800068d4:	00e4b023          	sd	a4,0(s1)
    800068d8:	10000637          	lui	a2,0x10000
    800068dc:	02f71063          	bne	a4,a5,800068fc <uartputc+0xc4>
    800068e0:	0340006f          	j	80006914 <uartputc+0xdc>
    800068e4:	00074703          	lbu	a4,0(a4)
    800068e8:	00f93023          	sd	a5,0(s2)
    800068ec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800068f0:	00093783          	ld	a5,0(s2)
    800068f4:	0004b703          	ld	a4,0(s1)
    800068f8:	00f70e63          	beq	a4,a5,80006914 <uartputc+0xdc>
    800068fc:	00564683          	lbu	a3,5(a2)
    80006900:	01f7f713          	andi	a4,a5,31
    80006904:	00e58733          	add	a4,a1,a4
    80006908:	0206f693          	andi	a3,a3,32
    8000690c:	00178793          	addi	a5,a5,1
    80006910:	fc069ae3          	bnez	a3,800068e4 <uartputc+0xac>
    80006914:	02813083          	ld	ra,40(sp)
    80006918:	02013403          	ld	s0,32(sp)
    8000691c:	01813483          	ld	s1,24(sp)
    80006920:	01013903          	ld	s2,16(sp)
    80006924:	00813983          	ld	s3,8(sp)
    80006928:	03010113          	addi	sp,sp,48
    8000692c:	00008067          	ret

0000000080006930 <uartputc_sync>:
    80006930:	ff010113          	addi	sp,sp,-16
    80006934:	00813423          	sd	s0,8(sp)
    80006938:	01010413          	addi	s0,sp,16
    8000693c:	00003717          	auipc	a4,0x3
    80006940:	cfc72703          	lw	a4,-772(a4) # 80009638 <panicked>
    80006944:	02071663          	bnez	a4,80006970 <uartputc_sync+0x40>
    80006948:	00050793          	mv	a5,a0
    8000694c:	100006b7          	lui	a3,0x10000
    80006950:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006954:	02077713          	andi	a4,a4,32
    80006958:	fe070ce3          	beqz	a4,80006950 <uartputc_sync+0x20>
    8000695c:	0ff7f793          	andi	a5,a5,255
    80006960:	00f68023          	sb	a5,0(a3)
    80006964:	00813403          	ld	s0,8(sp)
    80006968:	01010113          	addi	sp,sp,16
    8000696c:	00008067          	ret
    80006970:	0000006f          	j	80006970 <uartputc_sync+0x40>

0000000080006974 <uartstart>:
    80006974:	ff010113          	addi	sp,sp,-16
    80006978:	00813423          	sd	s0,8(sp)
    8000697c:	01010413          	addi	s0,sp,16
    80006980:	00003617          	auipc	a2,0x3
    80006984:	cc060613          	addi	a2,a2,-832 # 80009640 <uart_tx_r>
    80006988:	00003517          	auipc	a0,0x3
    8000698c:	cc050513          	addi	a0,a0,-832 # 80009648 <uart_tx_w>
    80006990:	00063783          	ld	a5,0(a2)
    80006994:	00053703          	ld	a4,0(a0)
    80006998:	04f70263          	beq	a4,a5,800069dc <uartstart+0x68>
    8000699c:	100005b7          	lui	a1,0x10000
    800069a0:	00004817          	auipc	a6,0x4
    800069a4:	f4080813          	addi	a6,a6,-192 # 8000a8e0 <uart_tx_buf>
    800069a8:	01c0006f          	j	800069c4 <uartstart+0x50>
    800069ac:	0006c703          	lbu	a4,0(a3)
    800069b0:	00f63023          	sd	a5,0(a2)
    800069b4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800069b8:	00063783          	ld	a5,0(a2)
    800069bc:	00053703          	ld	a4,0(a0)
    800069c0:	00f70e63          	beq	a4,a5,800069dc <uartstart+0x68>
    800069c4:	01f7f713          	andi	a4,a5,31
    800069c8:	00e806b3          	add	a3,a6,a4
    800069cc:	0055c703          	lbu	a4,5(a1)
    800069d0:	00178793          	addi	a5,a5,1
    800069d4:	02077713          	andi	a4,a4,32
    800069d8:	fc071ae3          	bnez	a4,800069ac <uartstart+0x38>
    800069dc:	00813403          	ld	s0,8(sp)
    800069e0:	01010113          	addi	sp,sp,16
    800069e4:	00008067          	ret

00000000800069e8 <uartgetc>:
    800069e8:	ff010113          	addi	sp,sp,-16
    800069ec:	00813423          	sd	s0,8(sp)
    800069f0:	01010413          	addi	s0,sp,16
    800069f4:	10000737          	lui	a4,0x10000
    800069f8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800069fc:	0017f793          	andi	a5,a5,1
    80006a00:	00078c63          	beqz	a5,80006a18 <uartgetc+0x30>
    80006a04:	00074503          	lbu	a0,0(a4)
    80006a08:	0ff57513          	andi	a0,a0,255
    80006a0c:	00813403          	ld	s0,8(sp)
    80006a10:	01010113          	addi	sp,sp,16
    80006a14:	00008067          	ret
    80006a18:	fff00513          	li	a0,-1
    80006a1c:	ff1ff06f          	j	80006a0c <uartgetc+0x24>

0000000080006a20 <uartintr>:
    80006a20:	100007b7          	lui	a5,0x10000
    80006a24:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006a28:	0017f793          	andi	a5,a5,1
    80006a2c:	0a078463          	beqz	a5,80006ad4 <uartintr+0xb4>
    80006a30:	fe010113          	addi	sp,sp,-32
    80006a34:	00813823          	sd	s0,16(sp)
    80006a38:	00913423          	sd	s1,8(sp)
    80006a3c:	00113c23          	sd	ra,24(sp)
    80006a40:	02010413          	addi	s0,sp,32
    80006a44:	100004b7          	lui	s1,0x10000
    80006a48:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80006a4c:	0ff57513          	andi	a0,a0,255
    80006a50:	fffff097          	auipc	ra,0xfffff
    80006a54:	534080e7          	jalr	1332(ra) # 80005f84 <consoleintr>
    80006a58:	0054c783          	lbu	a5,5(s1)
    80006a5c:	0017f793          	andi	a5,a5,1
    80006a60:	fe0794e3          	bnez	a5,80006a48 <uartintr+0x28>
    80006a64:	00003617          	auipc	a2,0x3
    80006a68:	bdc60613          	addi	a2,a2,-1060 # 80009640 <uart_tx_r>
    80006a6c:	00003517          	auipc	a0,0x3
    80006a70:	bdc50513          	addi	a0,a0,-1060 # 80009648 <uart_tx_w>
    80006a74:	00063783          	ld	a5,0(a2)
    80006a78:	00053703          	ld	a4,0(a0)
    80006a7c:	04f70263          	beq	a4,a5,80006ac0 <uartintr+0xa0>
    80006a80:	100005b7          	lui	a1,0x10000
    80006a84:	00004817          	auipc	a6,0x4
    80006a88:	e5c80813          	addi	a6,a6,-420 # 8000a8e0 <uart_tx_buf>
    80006a8c:	01c0006f          	j	80006aa8 <uartintr+0x88>
    80006a90:	0006c703          	lbu	a4,0(a3)
    80006a94:	00f63023          	sd	a5,0(a2)
    80006a98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006a9c:	00063783          	ld	a5,0(a2)
    80006aa0:	00053703          	ld	a4,0(a0)
    80006aa4:	00f70e63          	beq	a4,a5,80006ac0 <uartintr+0xa0>
    80006aa8:	01f7f713          	andi	a4,a5,31
    80006aac:	00e806b3          	add	a3,a6,a4
    80006ab0:	0055c703          	lbu	a4,5(a1)
    80006ab4:	00178793          	addi	a5,a5,1
    80006ab8:	02077713          	andi	a4,a4,32
    80006abc:	fc071ae3          	bnez	a4,80006a90 <uartintr+0x70>
    80006ac0:	01813083          	ld	ra,24(sp)
    80006ac4:	01013403          	ld	s0,16(sp)
    80006ac8:	00813483          	ld	s1,8(sp)
    80006acc:	02010113          	addi	sp,sp,32
    80006ad0:	00008067          	ret
    80006ad4:	00003617          	auipc	a2,0x3
    80006ad8:	b6c60613          	addi	a2,a2,-1172 # 80009640 <uart_tx_r>
    80006adc:	00003517          	auipc	a0,0x3
    80006ae0:	b6c50513          	addi	a0,a0,-1172 # 80009648 <uart_tx_w>
    80006ae4:	00063783          	ld	a5,0(a2)
    80006ae8:	00053703          	ld	a4,0(a0)
    80006aec:	04f70263          	beq	a4,a5,80006b30 <uartintr+0x110>
    80006af0:	100005b7          	lui	a1,0x10000
    80006af4:	00004817          	auipc	a6,0x4
    80006af8:	dec80813          	addi	a6,a6,-532 # 8000a8e0 <uart_tx_buf>
    80006afc:	01c0006f          	j	80006b18 <uartintr+0xf8>
    80006b00:	0006c703          	lbu	a4,0(a3)
    80006b04:	00f63023          	sd	a5,0(a2)
    80006b08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006b0c:	00063783          	ld	a5,0(a2)
    80006b10:	00053703          	ld	a4,0(a0)
    80006b14:	02f70063          	beq	a4,a5,80006b34 <uartintr+0x114>
    80006b18:	01f7f713          	andi	a4,a5,31
    80006b1c:	00e806b3          	add	a3,a6,a4
    80006b20:	0055c703          	lbu	a4,5(a1)
    80006b24:	00178793          	addi	a5,a5,1
    80006b28:	02077713          	andi	a4,a4,32
    80006b2c:	fc071ae3          	bnez	a4,80006b00 <uartintr+0xe0>
    80006b30:	00008067          	ret
    80006b34:	00008067          	ret

0000000080006b38 <kinit>:
    80006b38:	fc010113          	addi	sp,sp,-64
    80006b3c:	02913423          	sd	s1,40(sp)
    80006b40:	fffff7b7          	lui	a5,0xfffff
    80006b44:	00005497          	auipc	s1,0x5
    80006b48:	dcb48493          	addi	s1,s1,-565 # 8000b90f <end+0xfff>
    80006b4c:	02813823          	sd	s0,48(sp)
    80006b50:	01313c23          	sd	s3,24(sp)
    80006b54:	00f4f4b3          	and	s1,s1,a5
    80006b58:	02113c23          	sd	ra,56(sp)
    80006b5c:	03213023          	sd	s2,32(sp)
    80006b60:	01413823          	sd	s4,16(sp)
    80006b64:	01513423          	sd	s5,8(sp)
    80006b68:	04010413          	addi	s0,sp,64
    80006b6c:	000017b7          	lui	a5,0x1
    80006b70:	01100993          	li	s3,17
    80006b74:	00f487b3          	add	a5,s1,a5
    80006b78:	01b99993          	slli	s3,s3,0x1b
    80006b7c:	06f9e063          	bltu	s3,a5,80006bdc <kinit+0xa4>
    80006b80:	00004a97          	auipc	s5,0x4
    80006b84:	d90a8a93          	addi	s5,s5,-624 # 8000a910 <end>
    80006b88:	0754ec63          	bltu	s1,s5,80006c00 <kinit+0xc8>
    80006b8c:	0734fa63          	bgeu	s1,s3,80006c00 <kinit+0xc8>
    80006b90:	00088a37          	lui	s4,0x88
    80006b94:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006b98:	00003917          	auipc	s2,0x3
    80006b9c:	ab890913          	addi	s2,s2,-1352 # 80009650 <kmem>
    80006ba0:	00ca1a13          	slli	s4,s4,0xc
    80006ba4:	0140006f          	j	80006bb8 <kinit+0x80>
    80006ba8:	000017b7          	lui	a5,0x1
    80006bac:	00f484b3          	add	s1,s1,a5
    80006bb0:	0554e863          	bltu	s1,s5,80006c00 <kinit+0xc8>
    80006bb4:	0534f663          	bgeu	s1,s3,80006c00 <kinit+0xc8>
    80006bb8:	00001637          	lui	a2,0x1
    80006bbc:	00100593          	li	a1,1
    80006bc0:	00048513          	mv	a0,s1
    80006bc4:	00000097          	auipc	ra,0x0
    80006bc8:	5e4080e7          	jalr	1508(ra) # 800071a8 <__memset>
    80006bcc:	00093783          	ld	a5,0(s2)
    80006bd0:	00f4b023          	sd	a5,0(s1)
    80006bd4:	00993023          	sd	s1,0(s2)
    80006bd8:	fd4498e3          	bne	s1,s4,80006ba8 <kinit+0x70>
    80006bdc:	03813083          	ld	ra,56(sp)
    80006be0:	03013403          	ld	s0,48(sp)
    80006be4:	02813483          	ld	s1,40(sp)
    80006be8:	02013903          	ld	s2,32(sp)
    80006bec:	01813983          	ld	s3,24(sp)
    80006bf0:	01013a03          	ld	s4,16(sp)
    80006bf4:	00813a83          	ld	s5,8(sp)
    80006bf8:	04010113          	addi	sp,sp,64
    80006bfc:	00008067          	ret
    80006c00:	00002517          	auipc	a0,0x2
    80006c04:	b7050513          	addi	a0,a0,-1168 # 80008770 <digits+0x18>
    80006c08:	fffff097          	auipc	ra,0xfffff
    80006c0c:	4b4080e7          	jalr	1204(ra) # 800060bc <panic>

0000000080006c10 <freerange>:
    80006c10:	fc010113          	addi	sp,sp,-64
    80006c14:	000017b7          	lui	a5,0x1
    80006c18:	02913423          	sd	s1,40(sp)
    80006c1c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80006c20:	009504b3          	add	s1,a0,s1
    80006c24:	fffff537          	lui	a0,0xfffff
    80006c28:	02813823          	sd	s0,48(sp)
    80006c2c:	02113c23          	sd	ra,56(sp)
    80006c30:	03213023          	sd	s2,32(sp)
    80006c34:	01313c23          	sd	s3,24(sp)
    80006c38:	01413823          	sd	s4,16(sp)
    80006c3c:	01513423          	sd	s5,8(sp)
    80006c40:	01613023          	sd	s6,0(sp)
    80006c44:	04010413          	addi	s0,sp,64
    80006c48:	00a4f4b3          	and	s1,s1,a0
    80006c4c:	00f487b3          	add	a5,s1,a5
    80006c50:	06f5e463          	bltu	a1,a5,80006cb8 <freerange+0xa8>
    80006c54:	00004a97          	auipc	s5,0x4
    80006c58:	cbca8a93          	addi	s5,s5,-836 # 8000a910 <end>
    80006c5c:	0954e263          	bltu	s1,s5,80006ce0 <freerange+0xd0>
    80006c60:	01100993          	li	s3,17
    80006c64:	01b99993          	slli	s3,s3,0x1b
    80006c68:	0734fc63          	bgeu	s1,s3,80006ce0 <freerange+0xd0>
    80006c6c:	00058a13          	mv	s4,a1
    80006c70:	00003917          	auipc	s2,0x3
    80006c74:	9e090913          	addi	s2,s2,-1568 # 80009650 <kmem>
    80006c78:	00002b37          	lui	s6,0x2
    80006c7c:	0140006f          	j	80006c90 <freerange+0x80>
    80006c80:	000017b7          	lui	a5,0x1
    80006c84:	00f484b3          	add	s1,s1,a5
    80006c88:	0554ec63          	bltu	s1,s5,80006ce0 <freerange+0xd0>
    80006c8c:	0534fa63          	bgeu	s1,s3,80006ce0 <freerange+0xd0>
    80006c90:	00001637          	lui	a2,0x1
    80006c94:	00100593          	li	a1,1
    80006c98:	00048513          	mv	a0,s1
    80006c9c:	00000097          	auipc	ra,0x0
    80006ca0:	50c080e7          	jalr	1292(ra) # 800071a8 <__memset>
    80006ca4:	00093703          	ld	a4,0(s2)
    80006ca8:	016487b3          	add	a5,s1,s6
    80006cac:	00e4b023          	sd	a4,0(s1)
    80006cb0:	00993023          	sd	s1,0(s2)
    80006cb4:	fcfa76e3          	bgeu	s4,a5,80006c80 <freerange+0x70>
    80006cb8:	03813083          	ld	ra,56(sp)
    80006cbc:	03013403          	ld	s0,48(sp)
    80006cc0:	02813483          	ld	s1,40(sp)
    80006cc4:	02013903          	ld	s2,32(sp)
    80006cc8:	01813983          	ld	s3,24(sp)
    80006ccc:	01013a03          	ld	s4,16(sp)
    80006cd0:	00813a83          	ld	s5,8(sp)
    80006cd4:	00013b03          	ld	s6,0(sp)
    80006cd8:	04010113          	addi	sp,sp,64
    80006cdc:	00008067          	ret
    80006ce0:	00002517          	auipc	a0,0x2
    80006ce4:	a9050513          	addi	a0,a0,-1392 # 80008770 <digits+0x18>
    80006ce8:	fffff097          	auipc	ra,0xfffff
    80006cec:	3d4080e7          	jalr	980(ra) # 800060bc <panic>

0000000080006cf0 <kfree>:
    80006cf0:	fe010113          	addi	sp,sp,-32
    80006cf4:	00813823          	sd	s0,16(sp)
    80006cf8:	00113c23          	sd	ra,24(sp)
    80006cfc:	00913423          	sd	s1,8(sp)
    80006d00:	02010413          	addi	s0,sp,32
    80006d04:	03451793          	slli	a5,a0,0x34
    80006d08:	04079c63          	bnez	a5,80006d60 <kfree+0x70>
    80006d0c:	00004797          	auipc	a5,0x4
    80006d10:	c0478793          	addi	a5,a5,-1020 # 8000a910 <end>
    80006d14:	00050493          	mv	s1,a0
    80006d18:	04f56463          	bltu	a0,a5,80006d60 <kfree+0x70>
    80006d1c:	01100793          	li	a5,17
    80006d20:	01b79793          	slli	a5,a5,0x1b
    80006d24:	02f57e63          	bgeu	a0,a5,80006d60 <kfree+0x70>
    80006d28:	00001637          	lui	a2,0x1
    80006d2c:	00100593          	li	a1,1
    80006d30:	00000097          	auipc	ra,0x0
    80006d34:	478080e7          	jalr	1144(ra) # 800071a8 <__memset>
    80006d38:	00003797          	auipc	a5,0x3
    80006d3c:	91878793          	addi	a5,a5,-1768 # 80009650 <kmem>
    80006d40:	0007b703          	ld	a4,0(a5)
    80006d44:	01813083          	ld	ra,24(sp)
    80006d48:	01013403          	ld	s0,16(sp)
    80006d4c:	00e4b023          	sd	a4,0(s1)
    80006d50:	0097b023          	sd	s1,0(a5)
    80006d54:	00813483          	ld	s1,8(sp)
    80006d58:	02010113          	addi	sp,sp,32
    80006d5c:	00008067          	ret
    80006d60:	00002517          	auipc	a0,0x2
    80006d64:	a1050513          	addi	a0,a0,-1520 # 80008770 <digits+0x18>
    80006d68:	fffff097          	auipc	ra,0xfffff
    80006d6c:	354080e7          	jalr	852(ra) # 800060bc <panic>

0000000080006d70 <kalloc>:
    80006d70:	fe010113          	addi	sp,sp,-32
    80006d74:	00813823          	sd	s0,16(sp)
    80006d78:	00913423          	sd	s1,8(sp)
    80006d7c:	00113c23          	sd	ra,24(sp)
    80006d80:	02010413          	addi	s0,sp,32
    80006d84:	00003797          	auipc	a5,0x3
    80006d88:	8cc78793          	addi	a5,a5,-1844 # 80009650 <kmem>
    80006d8c:	0007b483          	ld	s1,0(a5)
    80006d90:	02048063          	beqz	s1,80006db0 <kalloc+0x40>
    80006d94:	0004b703          	ld	a4,0(s1)
    80006d98:	00001637          	lui	a2,0x1
    80006d9c:	00500593          	li	a1,5
    80006da0:	00048513          	mv	a0,s1
    80006da4:	00e7b023          	sd	a4,0(a5)
    80006da8:	00000097          	auipc	ra,0x0
    80006dac:	400080e7          	jalr	1024(ra) # 800071a8 <__memset>
    80006db0:	01813083          	ld	ra,24(sp)
    80006db4:	01013403          	ld	s0,16(sp)
    80006db8:	00048513          	mv	a0,s1
    80006dbc:	00813483          	ld	s1,8(sp)
    80006dc0:	02010113          	addi	sp,sp,32
    80006dc4:	00008067          	ret

0000000080006dc8 <initlock>:
    80006dc8:	ff010113          	addi	sp,sp,-16
    80006dcc:	00813423          	sd	s0,8(sp)
    80006dd0:	01010413          	addi	s0,sp,16
    80006dd4:	00813403          	ld	s0,8(sp)
    80006dd8:	00b53423          	sd	a1,8(a0)
    80006ddc:	00052023          	sw	zero,0(a0)
    80006de0:	00053823          	sd	zero,16(a0)
    80006de4:	01010113          	addi	sp,sp,16
    80006de8:	00008067          	ret

0000000080006dec <acquire>:
    80006dec:	fe010113          	addi	sp,sp,-32
    80006df0:	00813823          	sd	s0,16(sp)
    80006df4:	00913423          	sd	s1,8(sp)
    80006df8:	00113c23          	sd	ra,24(sp)
    80006dfc:	01213023          	sd	s2,0(sp)
    80006e00:	02010413          	addi	s0,sp,32
    80006e04:	00050493          	mv	s1,a0
    80006e08:	10002973          	csrr	s2,sstatus
    80006e0c:	100027f3          	csrr	a5,sstatus
    80006e10:	ffd7f793          	andi	a5,a5,-3
    80006e14:	10079073          	csrw	sstatus,a5
    80006e18:	fffff097          	auipc	ra,0xfffff
    80006e1c:	8ec080e7          	jalr	-1812(ra) # 80005704 <mycpu>
    80006e20:	07852783          	lw	a5,120(a0)
    80006e24:	06078e63          	beqz	a5,80006ea0 <acquire+0xb4>
    80006e28:	fffff097          	auipc	ra,0xfffff
    80006e2c:	8dc080e7          	jalr	-1828(ra) # 80005704 <mycpu>
    80006e30:	07852783          	lw	a5,120(a0)
    80006e34:	0004a703          	lw	a4,0(s1)
    80006e38:	0017879b          	addiw	a5,a5,1
    80006e3c:	06f52c23          	sw	a5,120(a0)
    80006e40:	04071063          	bnez	a4,80006e80 <acquire+0x94>
    80006e44:	00100713          	li	a4,1
    80006e48:	00070793          	mv	a5,a4
    80006e4c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80006e50:	0007879b          	sext.w	a5,a5
    80006e54:	fe079ae3          	bnez	a5,80006e48 <acquire+0x5c>
    80006e58:	0ff0000f          	fence
    80006e5c:	fffff097          	auipc	ra,0xfffff
    80006e60:	8a8080e7          	jalr	-1880(ra) # 80005704 <mycpu>
    80006e64:	01813083          	ld	ra,24(sp)
    80006e68:	01013403          	ld	s0,16(sp)
    80006e6c:	00a4b823          	sd	a0,16(s1)
    80006e70:	00013903          	ld	s2,0(sp)
    80006e74:	00813483          	ld	s1,8(sp)
    80006e78:	02010113          	addi	sp,sp,32
    80006e7c:	00008067          	ret
    80006e80:	0104b903          	ld	s2,16(s1)
    80006e84:	fffff097          	auipc	ra,0xfffff
    80006e88:	880080e7          	jalr	-1920(ra) # 80005704 <mycpu>
    80006e8c:	faa91ce3          	bne	s2,a0,80006e44 <acquire+0x58>
    80006e90:	00002517          	auipc	a0,0x2
    80006e94:	8e850513          	addi	a0,a0,-1816 # 80008778 <digits+0x20>
    80006e98:	fffff097          	auipc	ra,0xfffff
    80006e9c:	224080e7          	jalr	548(ra) # 800060bc <panic>
    80006ea0:	00195913          	srli	s2,s2,0x1
    80006ea4:	fffff097          	auipc	ra,0xfffff
    80006ea8:	860080e7          	jalr	-1952(ra) # 80005704 <mycpu>
    80006eac:	00197913          	andi	s2,s2,1
    80006eb0:	07252e23          	sw	s2,124(a0)
    80006eb4:	f75ff06f          	j	80006e28 <acquire+0x3c>

0000000080006eb8 <release>:
    80006eb8:	fe010113          	addi	sp,sp,-32
    80006ebc:	00813823          	sd	s0,16(sp)
    80006ec0:	00113c23          	sd	ra,24(sp)
    80006ec4:	00913423          	sd	s1,8(sp)
    80006ec8:	01213023          	sd	s2,0(sp)
    80006ecc:	02010413          	addi	s0,sp,32
    80006ed0:	00052783          	lw	a5,0(a0)
    80006ed4:	00079a63          	bnez	a5,80006ee8 <release+0x30>
    80006ed8:	00002517          	auipc	a0,0x2
    80006edc:	8a850513          	addi	a0,a0,-1880 # 80008780 <digits+0x28>
    80006ee0:	fffff097          	auipc	ra,0xfffff
    80006ee4:	1dc080e7          	jalr	476(ra) # 800060bc <panic>
    80006ee8:	01053903          	ld	s2,16(a0)
    80006eec:	00050493          	mv	s1,a0
    80006ef0:	fffff097          	auipc	ra,0xfffff
    80006ef4:	814080e7          	jalr	-2028(ra) # 80005704 <mycpu>
    80006ef8:	fea910e3          	bne	s2,a0,80006ed8 <release+0x20>
    80006efc:	0004b823          	sd	zero,16(s1)
    80006f00:	0ff0000f          	fence
    80006f04:	0f50000f          	fence	iorw,ow
    80006f08:	0804a02f          	amoswap.w	zero,zero,(s1)
    80006f0c:	ffffe097          	auipc	ra,0xffffe
    80006f10:	7f8080e7          	jalr	2040(ra) # 80005704 <mycpu>
    80006f14:	100027f3          	csrr	a5,sstatus
    80006f18:	0027f793          	andi	a5,a5,2
    80006f1c:	04079a63          	bnez	a5,80006f70 <release+0xb8>
    80006f20:	07852783          	lw	a5,120(a0)
    80006f24:	02f05e63          	blez	a5,80006f60 <release+0xa8>
    80006f28:	fff7871b          	addiw	a4,a5,-1
    80006f2c:	06e52c23          	sw	a4,120(a0)
    80006f30:	00071c63          	bnez	a4,80006f48 <release+0x90>
    80006f34:	07c52783          	lw	a5,124(a0)
    80006f38:	00078863          	beqz	a5,80006f48 <release+0x90>
    80006f3c:	100027f3          	csrr	a5,sstatus
    80006f40:	0027e793          	ori	a5,a5,2
    80006f44:	10079073          	csrw	sstatus,a5
    80006f48:	01813083          	ld	ra,24(sp)
    80006f4c:	01013403          	ld	s0,16(sp)
    80006f50:	00813483          	ld	s1,8(sp)
    80006f54:	00013903          	ld	s2,0(sp)
    80006f58:	02010113          	addi	sp,sp,32
    80006f5c:	00008067          	ret
    80006f60:	00002517          	auipc	a0,0x2
    80006f64:	84050513          	addi	a0,a0,-1984 # 800087a0 <digits+0x48>
    80006f68:	fffff097          	auipc	ra,0xfffff
    80006f6c:	154080e7          	jalr	340(ra) # 800060bc <panic>
    80006f70:	00002517          	auipc	a0,0x2
    80006f74:	81850513          	addi	a0,a0,-2024 # 80008788 <digits+0x30>
    80006f78:	fffff097          	auipc	ra,0xfffff
    80006f7c:	144080e7          	jalr	324(ra) # 800060bc <panic>

0000000080006f80 <holding>:
    80006f80:	00052783          	lw	a5,0(a0)
    80006f84:	00079663          	bnez	a5,80006f90 <holding+0x10>
    80006f88:	00000513          	li	a0,0
    80006f8c:	00008067          	ret
    80006f90:	fe010113          	addi	sp,sp,-32
    80006f94:	00813823          	sd	s0,16(sp)
    80006f98:	00913423          	sd	s1,8(sp)
    80006f9c:	00113c23          	sd	ra,24(sp)
    80006fa0:	02010413          	addi	s0,sp,32
    80006fa4:	01053483          	ld	s1,16(a0)
    80006fa8:	ffffe097          	auipc	ra,0xffffe
    80006fac:	75c080e7          	jalr	1884(ra) # 80005704 <mycpu>
    80006fb0:	01813083          	ld	ra,24(sp)
    80006fb4:	01013403          	ld	s0,16(sp)
    80006fb8:	40a48533          	sub	a0,s1,a0
    80006fbc:	00153513          	seqz	a0,a0
    80006fc0:	00813483          	ld	s1,8(sp)
    80006fc4:	02010113          	addi	sp,sp,32
    80006fc8:	00008067          	ret

0000000080006fcc <push_off>:
    80006fcc:	fe010113          	addi	sp,sp,-32
    80006fd0:	00813823          	sd	s0,16(sp)
    80006fd4:	00113c23          	sd	ra,24(sp)
    80006fd8:	00913423          	sd	s1,8(sp)
    80006fdc:	02010413          	addi	s0,sp,32
    80006fe0:	100024f3          	csrr	s1,sstatus
    80006fe4:	100027f3          	csrr	a5,sstatus
    80006fe8:	ffd7f793          	andi	a5,a5,-3
    80006fec:	10079073          	csrw	sstatus,a5
    80006ff0:	ffffe097          	auipc	ra,0xffffe
    80006ff4:	714080e7          	jalr	1812(ra) # 80005704 <mycpu>
    80006ff8:	07852783          	lw	a5,120(a0)
    80006ffc:	02078663          	beqz	a5,80007028 <push_off+0x5c>
    80007000:	ffffe097          	auipc	ra,0xffffe
    80007004:	704080e7          	jalr	1796(ra) # 80005704 <mycpu>
    80007008:	07852783          	lw	a5,120(a0)
    8000700c:	01813083          	ld	ra,24(sp)
    80007010:	01013403          	ld	s0,16(sp)
    80007014:	0017879b          	addiw	a5,a5,1
    80007018:	06f52c23          	sw	a5,120(a0)
    8000701c:	00813483          	ld	s1,8(sp)
    80007020:	02010113          	addi	sp,sp,32
    80007024:	00008067          	ret
    80007028:	0014d493          	srli	s1,s1,0x1
    8000702c:	ffffe097          	auipc	ra,0xffffe
    80007030:	6d8080e7          	jalr	1752(ra) # 80005704 <mycpu>
    80007034:	0014f493          	andi	s1,s1,1
    80007038:	06952e23          	sw	s1,124(a0)
    8000703c:	fc5ff06f          	j	80007000 <push_off+0x34>

0000000080007040 <pop_off>:
    80007040:	ff010113          	addi	sp,sp,-16
    80007044:	00813023          	sd	s0,0(sp)
    80007048:	00113423          	sd	ra,8(sp)
    8000704c:	01010413          	addi	s0,sp,16
    80007050:	ffffe097          	auipc	ra,0xffffe
    80007054:	6b4080e7          	jalr	1716(ra) # 80005704 <mycpu>
    80007058:	100027f3          	csrr	a5,sstatus
    8000705c:	0027f793          	andi	a5,a5,2
    80007060:	04079663          	bnez	a5,800070ac <pop_off+0x6c>
    80007064:	07852783          	lw	a5,120(a0)
    80007068:	02f05a63          	blez	a5,8000709c <pop_off+0x5c>
    8000706c:	fff7871b          	addiw	a4,a5,-1
    80007070:	06e52c23          	sw	a4,120(a0)
    80007074:	00071c63          	bnez	a4,8000708c <pop_off+0x4c>
    80007078:	07c52783          	lw	a5,124(a0)
    8000707c:	00078863          	beqz	a5,8000708c <pop_off+0x4c>
    80007080:	100027f3          	csrr	a5,sstatus
    80007084:	0027e793          	ori	a5,a5,2
    80007088:	10079073          	csrw	sstatus,a5
    8000708c:	00813083          	ld	ra,8(sp)
    80007090:	00013403          	ld	s0,0(sp)
    80007094:	01010113          	addi	sp,sp,16
    80007098:	00008067          	ret
    8000709c:	00001517          	auipc	a0,0x1
    800070a0:	70450513          	addi	a0,a0,1796 # 800087a0 <digits+0x48>
    800070a4:	fffff097          	auipc	ra,0xfffff
    800070a8:	018080e7          	jalr	24(ra) # 800060bc <panic>
    800070ac:	00001517          	auipc	a0,0x1
    800070b0:	6dc50513          	addi	a0,a0,1756 # 80008788 <digits+0x30>
    800070b4:	fffff097          	auipc	ra,0xfffff
    800070b8:	008080e7          	jalr	8(ra) # 800060bc <panic>

00000000800070bc <push_on>:
    800070bc:	fe010113          	addi	sp,sp,-32
    800070c0:	00813823          	sd	s0,16(sp)
    800070c4:	00113c23          	sd	ra,24(sp)
    800070c8:	00913423          	sd	s1,8(sp)
    800070cc:	02010413          	addi	s0,sp,32
    800070d0:	100024f3          	csrr	s1,sstatus
    800070d4:	100027f3          	csrr	a5,sstatus
    800070d8:	0027e793          	ori	a5,a5,2
    800070dc:	10079073          	csrw	sstatus,a5
    800070e0:	ffffe097          	auipc	ra,0xffffe
    800070e4:	624080e7          	jalr	1572(ra) # 80005704 <mycpu>
    800070e8:	07852783          	lw	a5,120(a0)
    800070ec:	02078663          	beqz	a5,80007118 <push_on+0x5c>
    800070f0:	ffffe097          	auipc	ra,0xffffe
    800070f4:	614080e7          	jalr	1556(ra) # 80005704 <mycpu>
    800070f8:	07852783          	lw	a5,120(a0)
    800070fc:	01813083          	ld	ra,24(sp)
    80007100:	01013403          	ld	s0,16(sp)
    80007104:	0017879b          	addiw	a5,a5,1
    80007108:	06f52c23          	sw	a5,120(a0)
    8000710c:	00813483          	ld	s1,8(sp)
    80007110:	02010113          	addi	sp,sp,32
    80007114:	00008067          	ret
    80007118:	0014d493          	srli	s1,s1,0x1
    8000711c:	ffffe097          	auipc	ra,0xffffe
    80007120:	5e8080e7          	jalr	1512(ra) # 80005704 <mycpu>
    80007124:	0014f493          	andi	s1,s1,1
    80007128:	06952e23          	sw	s1,124(a0)
    8000712c:	fc5ff06f          	j	800070f0 <push_on+0x34>

0000000080007130 <pop_on>:
    80007130:	ff010113          	addi	sp,sp,-16
    80007134:	00813023          	sd	s0,0(sp)
    80007138:	00113423          	sd	ra,8(sp)
    8000713c:	01010413          	addi	s0,sp,16
    80007140:	ffffe097          	auipc	ra,0xffffe
    80007144:	5c4080e7          	jalr	1476(ra) # 80005704 <mycpu>
    80007148:	100027f3          	csrr	a5,sstatus
    8000714c:	0027f793          	andi	a5,a5,2
    80007150:	04078463          	beqz	a5,80007198 <pop_on+0x68>
    80007154:	07852783          	lw	a5,120(a0)
    80007158:	02f05863          	blez	a5,80007188 <pop_on+0x58>
    8000715c:	fff7879b          	addiw	a5,a5,-1
    80007160:	06f52c23          	sw	a5,120(a0)
    80007164:	07853783          	ld	a5,120(a0)
    80007168:	00079863          	bnez	a5,80007178 <pop_on+0x48>
    8000716c:	100027f3          	csrr	a5,sstatus
    80007170:	ffd7f793          	andi	a5,a5,-3
    80007174:	10079073          	csrw	sstatus,a5
    80007178:	00813083          	ld	ra,8(sp)
    8000717c:	00013403          	ld	s0,0(sp)
    80007180:	01010113          	addi	sp,sp,16
    80007184:	00008067          	ret
    80007188:	00001517          	auipc	a0,0x1
    8000718c:	64050513          	addi	a0,a0,1600 # 800087c8 <digits+0x70>
    80007190:	fffff097          	auipc	ra,0xfffff
    80007194:	f2c080e7          	jalr	-212(ra) # 800060bc <panic>
    80007198:	00001517          	auipc	a0,0x1
    8000719c:	61050513          	addi	a0,a0,1552 # 800087a8 <digits+0x50>
    800071a0:	fffff097          	auipc	ra,0xfffff
    800071a4:	f1c080e7          	jalr	-228(ra) # 800060bc <panic>

00000000800071a8 <__memset>:
    800071a8:	ff010113          	addi	sp,sp,-16
    800071ac:	00813423          	sd	s0,8(sp)
    800071b0:	01010413          	addi	s0,sp,16
    800071b4:	1a060e63          	beqz	a2,80007370 <__memset+0x1c8>
    800071b8:	40a007b3          	neg	a5,a0
    800071bc:	0077f793          	andi	a5,a5,7
    800071c0:	00778693          	addi	a3,a5,7
    800071c4:	00b00813          	li	a6,11
    800071c8:	0ff5f593          	andi	a1,a1,255
    800071cc:	fff6071b          	addiw	a4,a2,-1
    800071d0:	1b06e663          	bltu	a3,a6,8000737c <__memset+0x1d4>
    800071d4:	1cd76463          	bltu	a4,a3,8000739c <__memset+0x1f4>
    800071d8:	1a078e63          	beqz	a5,80007394 <__memset+0x1ec>
    800071dc:	00b50023          	sb	a1,0(a0)
    800071e0:	00100713          	li	a4,1
    800071e4:	1ae78463          	beq	a5,a4,8000738c <__memset+0x1e4>
    800071e8:	00b500a3          	sb	a1,1(a0)
    800071ec:	00200713          	li	a4,2
    800071f0:	1ae78a63          	beq	a5,a4,800073a4 <__memset+0x1fc>
    800071f4:	00b50123          	sb	a1,2(a0)
    800071f8:	00300713          	li	a4,3
    800071fc:	18e78463          	beq	a5,a4,80007384 <__memset+0x1dc>
    80007200:	00b501a3          	sb	a1,3(a0)
    80007204:	00400713          	li	a4,4
    80007208:	1ae78263          	beq	a5,a4,800073ac <__memset+0x204>
    8000720c:	00b50223          	sb	a1,4(a0)
    80007210:	00500713          	li	a4,5
    80007214:	1ae78063          	beq	a5,a4,800073b4 <__memset+0x20c>
    80007218:	00b502a3          	sb	a1,5(a0)
    8000721c:	00700713          	li	a4,7
    80007220:	18e79e63          	bne	a5,a4,800073bc <__memset+0x214>
    80007224:	00b50323          	sb	a1,6(a0)
    80007228:	00700e93          	li	t4,7
    8000722c:	00859713          	slli	a4,a1,0x8
    80007230:	00e5e733          	or	a4,a1,a4
    80007234:	01059e13          	slli	t3,a1,0x10
    80007238:	01c76e33          	or	t3,a4,t3
    8000723c:	01859313          	slli	t1,a1,0x18
    80007240:	006e6333          	or	t1,t3,t1
    80007244:	02059893          	slli	a7,a1,0x20
    80007248:	40f60e3b          	subw	t3,a2,a5
    8000724c:	011368b3          	or	a7,t1,a7
    80007250:	02859813          	slli	a6,a1,0x28
    80007254:	0108e833          	or	a6,a7,a6
    80007258:	03059693          	slli	a3,a1,0x30
    8000725c:	003e589b          	srliw	a7,t3,0x3
    80007260:	00d866b3          	or	a3,a6,a3
    80007264:	03859713          	slli	a4,a1,0x38
    80007268:	00389813          	slli	a6,a7,0x3
    8000726c:	00f507b3          	add	a5,a0,a5
    80007270:	00e6e733          	or	a4,a3,a4
    80007274:	000e089b          	sext.w	a7,t3
    80007278:	00f806b3          	add	a3,a6,a5
    8000727c:	00e7b023          	sd	a4,0(a5)
    80007280:	00878793          	addi	a5,a5,8
    80007284:	fed79ce3          	bne	a5,a3,8000727c <__memset+0xd4>
    80007288:	ff8e7793          	andi	a5,t3,-8
    8000728c:	0007871b          	sext.w	a4,a5
    80007290:	01d787bb          	addw	a5,a5,t4
    80007294:	0ce88e63          	beq	a7,a4,80007370 <__memset+0x1c8>
    80007298:	00f50733          	add	a4,a0,a5
    8000729c:	00b70023          	sb	a1,0(a4)
    800072a0:	0017871b          	addiw	a4,a5,1
    800072a4:	0cc77663          	bgeu	a4,a2,80007370 <__memset+0x1c8>
    800072a8:	00e50733          	add	a4,a0,a4
    800072ac:	00b70023          	sb	a1,0(a4)
    800072b0:	0027871b          	addiw	a4,a5,2
    800072b4:	0ac77e63          	bgeu	a4,a2,80007370 <__memset+0x1c8>
    800072b8:	00e50733          	add	a4,a0,a4
    800072bc:	00b70023          	sb	a1,0(a4)
    800072c0:	0037871b          	addiw	a4,a5,3
    800072c4:	0ac77663          	bgeu	a4,a2,80007370 <__memset+0x1c8>
    800072c8:	00e50733          	add	a4,a0,a4
    800072cc:	00b70023          	sb	a1,0(a4)
    800072d0:	0047871b          	addiw	a4,a5,4
    800072d4:	08c77e63          	bgeu	a4,a2,80007370 <__memset+0x1c8>
    800072d8:	00e50733          	add	a4,a0,a4
    800072dc:	00b70023          	sb	a1,0(a4)
    800072e0:	0057871b          	addiw	a4,a5,5
    800072e4:	08c77663          	bgeu	a4,a2,80007370 <__memset+0x1c8>
    800072e8:	00e50733          	add	a4,a0,a4
    800072ec:	00b70023          	sb	a1,0(a4)
    800072f0:	0067871b          	addiw	a4,a5,6
    800072f4:	06c77e63          	bgeu	a4,a2,80007370 <__memset+0x1c8>
    800072f8:	00e50733          	add	a4,a0,a4
    800072fc:	00b70023          	sb	a1,0(a4)
    80007300:	0077871b          	addiw	a4,a5,7
    80007304:	06c77663          	bgeu	a4,a2,80007370 <__memset+0x1c8>
    80007308:	00e50733          	add	a4,a0,a4
    8000730c:	00b70023          	sb	a1,0(a4)
    80007310:	0087871b          	addiw	a4,a5,8
    80007314:	04c77e63          	bgeu	a4,a2,80007370 <__memset+0x1c8>
    80007318:	00e50733          	add	a4,a0,a4
    8000731c:	00b70023          	sb	a1,0(a4)
    80007320:	0097871b          	addiw	a4,a5,9
    80007324:	04c77663          	bgeu	a4,a2,80007370 <__memset+0x1c8>
    80007328:	00e50733          	add	a4,a0,a4
    8000732c:	00b70023          	sb	a1,0(a4)
    80007330:	00a7871b          	addiw	a4,a5,10
    80007334:	02c77e63          	bgeu	a4,a2,80007370 <__memset+0x1c8>
    80007338:	00e50733          	add	a4,a0,a4
    8000733c:	00b70023          	sb	a1,0(a4)
    80007340:	00b7871b          	addiw	a4,a5,11
    80007344:	02c77663          	bgeu	a4,a2,80007370 <__memset+0x1c8>
    80007348:	00e50733          	add	a4,a0,a4
    8000734c:	00b70023          	sb	a1,0(a4)
    80007350:	00c7871b          	addiw	a4,a5,12
    80007354:	00c77e63          	bgeu	a4,a2,80007370 <__memset+0x1c8>
    80007358:	00e50733          	add	a4,a0,a4
    8000735c:	00b70023          	sb	a1,0(a4)
    80007360:	00d7879b          	addiw	a5,a5,13
    80007364:	00c7f663          	bgeu	a5,a2,80007370 <__memset+0x1c8>
    80007368:	00f507b3          	add	a5,a0,a5
    8000736c:	00b78023          	sb	a1,0(a5)
    80007370:	00813403          	ld	s0,8(sp)
    80007374:	01010113          	addi	sp,sp,16
    80007378:	00008067          	ret
    8000737c:	00b00693          	li	a3,11
    80007380:	e55ff06f          	j	800071d4 <__memset+0x2c>
    80007384:	00300e93          	li	t4,3
    80007388:	ea5ff06f          	j	8000722c <__memset+0x84>
    8000738c:	00100e93          	li	t4,1
    80007390:	e9dff06f          	j	8000722c <__memset+0x84>
    80007394:	00000e93          	li	t4,0
    80007398:	e95ff06f          	j	8000722c <__memset+0x84>
    8000739c:	00000793          	li	a5,0
    800073a0:	ef9ff06f          	j	80007298 <__memset+0xf0>
    800073a4:	00200e93          	li	t4,2
    800073a8:	e85ff06f          	j	8000722c <__memset+0x84>
    800073ac:	00400e93          	li	t4,4
    800073b0:	e7dff06f          	j	8000722c <__memset+0x84>
    800073b4:	00500e93          	li	t4,5
    800073b8:	e75ff06f          	j	8000722c <__memset+0x84>
    800073bc:	00600e93          	li	t4,6
    800073c0:	e6dff06f          	j	8000722c <__memset+0x84>

00000000800073c4 <__memmove>:
    800073c4:	ff010113          	addi	sp,sp,-16
    800073c8:	00813423          	sd	s0,8(sp)
    800073cc:	01010413          	addi	s0,sp,16
    800073d0:	0e060863          	beqz	a2,800074c0 <__memmove+0xfc>
    800073d4:	fff6069b          	addiw	a3,a2,-1
    800073d8:	0006881b          	sext.w	a6,a3
    800073dc:	0ea5e863          	bltu	a1,a0,800074cc <__memmove+0x108>
    800073e0:	00758713          	addi	a4,a1,7
    800073e4:	00a5e7b3          	or	a5,a1,a0
    800073e8:	40a70733          	sub	a4,a4,a0
    800073ec:	0077f793          	andi	a5,a5,7
    800073f0:	00f73713          	sltiu	a4,a4,15
    800073f4:	00174713          	xori	a4,a4,1
    800073f8:	0017b793          	seqz	a5,a5
    800073fc:	00e7f7b3          	and	a5,a5,a4
    80007400:	10078863          	beqz	a5,80007510 <__memmove+0x14c>
    80007404:	00900793          	li	a5,9
    80007408:	1107f463          	bgeu	a5,a6,80007510 <__memmove+0x14c>
    8000740c:	0036581b          	srliw	a6,a2,0x3
    80007410:	fff8081b          	addiw	a6,a6,-1
    80007414:	02081813          	slli	a6,a6,0x20
    80007418:	01d85893          	srli	a7,a6,0x1d
    8000741c:	00858813          	addi	a6,a1,8
    80007420:	00058793          	mv	a5,a1
    80007424:	00050713          	mv	a4,a0
    80007428:	01088833          	add	a6,a7,a6
    8000742c:	0007b883          	ld	a7,0(a5)
    80007430:	00878793          	addi	a5,a5,8
    80007434:	00870713          	addi	a4,a4,8
    80007438:	ff173c23          	sd	a7,-8(a4)
    8000743c:	ff0798e3          	bne	a5,a6,8000742c <__memmove+0x68>
    80007440:	ff867713          	andi	a4,a2,-8
    80007444:	02071793          	slli	a5,a4,0x20
    80007448:	0207d793          	srli	a5,a5,0x20
    8000744c:	00f585b3          	add	a1,a1,a5
    80007450:	40e686bb          	subw	a3,a3,a4
    80007454:	00f507b3          	add	a5,a0,a5
    80007458:	06e60463          	beq	a2,a4,800074c0 <__memmove+0xfc>
    8000745c:	0005c703          	lbu	a4,0(a1)
    80007460:	00e78023          	sb	a4,0(a5)
    80007464:	04068e63          	beqz	a3,800074c0 <__memmove+0xfc>
    80007468:	0015c603          	lbu	a2,1(a1)
    8000746c:	00100713          	li	a4,1
    80007470:	00c780a3          	sb	a2,1(a5)
    80007474:	04e68663          	beq	a3,a4,800074c0 <__memmove+0xfc>
    80007478:	0025c603          	lbu	a2,2(a1)
    8000747c:	00200713          	li	a4,2
    80007480:	00c78123          	sb	a2,2(a5)
    80007484:	02e68e63          	beq	a3,a4,800074c0 <__memmove+0xfc>
    80007488:	0035c603          	lbu	a2,3(a1)
    8000748c:	00300713          	li	a4,3
    80007490:	00c781a3          	sb	a2,3(a5)
    80007494:	02e68663          	beq	a3,a4,800074c0 <__memmove+0xfc>
    80007498:	0045c603          	lbu	a2,4(a1)
    8000749c:	00400713          	li	a4,4
    800074a0:	00c78223          	sb	a2,4(a5)
    800074a4:	00e68e63          	beq	a3,a4,800074c0 <__memmove+0xfc>
    800074a8:	0055c603          	lbu	a2,5(a1)
    800074ac:	00500713          	li	a4,5
    800074b0:	00c782a3          	sb	a2,5(a5)
    800074b4:	00e68663          	beq	a3,a4,800074c0 <__memmove+0xfc>
    800074b8:	0065c703          	lbu	a4,6(a1)
    800074bc:	00e78323          	sb	a4,6(a5)
    800074c0:	00813403          	ld	s0,8(sp)
    800074c4:	01010113          	addi	sp,sp,16
    800074c8:	00008067          	ret
    800074cc:	02061713          	slli	a4,a2,0x20
    800074d0:	02075713          	srli	a4,a4,0x20
    800074d4:	00e587b3          	add	a5,a1,a4
    800074d8:	f0f574e3          	bgeu	a0,a5,800073e0 <__memmove+0x1c>
    800074dc:	02069613          	slli	a2,a3,0x20
    800074e0:	02065613          	srli	a2,a2,0x20
    800074e4:	fff64613          	not	a2,a2
    800074e8:	00e50733          	add	a4,a0,a4
    800074ec:	00c78633          	add	a2,a5,a2
    800074f0:	fff7c683          	lbu	a3,-1(a5)
    800074f4:	fff78793          	addi	a5,a5,-1
    800074f8:	fff70713          	addi	a4,a4,-1
    800074fc:	00d70023          	sb	a3,0(a4)
    80007500:	fec798e3          	bne	a5,a2,800074f0 <__memmove+0x12c>
    80007504:	00813403          	ld	s0,8(sp)
    80007508:	01010113          	addi	sp,sp,16
    8000750c:	00008067          	ret
    80007510:	02069713          	slli	a4,a3,0x20
    80007514:	02075713          	srli	a4,a4,0x20
    80007518:	00170713          	addi	a4,a4,1
    8000751c:	00e50733          	add	a4,a0,a4
    80007520:	00050793          	mv	a5,a0
    80007524:	0005c683          	lbu	a3,0(a1)
    80007528:	00178793          	addi	a5,a5,1
    8000752c:	00158593          	addi	a1,a1,1
    80007530:	fed78fa3          	sb	a3,-1(a5)
    80007534:	fee798e3          	bne	a5,a4,80007524 <__memmove+0x160>
    80007538:	f89ff06f          	j	800074c0 <__memmove+0xfc>

000000008000753c <__mem_free>:
    8000753c:	ff010113          	addi	sp,sp,-16
    80007540:	00813423          	sd	s0,8(sp)
    80007544:	01010413          	addi	s0,sp,16
    80007548:	00002597          	auipc	a1,0x2
    8000754c:	11058593          	addi	a1,a1,272 # 80009658 <freep>
    80007550:	0005b783          	ld	a5,0(a1)
    80007554:	ff050693          	addi	a3,a0,-16
    80007558:	0007b703          	ld	a4,0(a5)
    8000755c:	00d7fc63          	bgeu	a5,a3,80007574 <__mem_free+0x38>
    80007560:	00e6ee63          	bltu	a3,a4,8000757c <__mem_free+0x40>
    80007564:	00e7fc63          	bgeu	a5,a4,8000757c <__mem_free+0x40>
    80007568:	00070793          	mv	a5,a4
    8000756c:	0007b703          	ld	a4,0(a5)
    80007570:	fed7e8e3          	bltu	a5,a3,80007560 <__mem_free+0x24>
    80007574:	fee7eae3          	bltu	a5,a4,80007568 <__mem_free+0x2c>
    80007578:	fee6f8e3          	bgeu	a3,a4,80007568 <__mem_free+0x2c>
    8000757c:	ff852803          	lw	a6,-8(a0)
    80007580:	02081613          	slli	a2,a6,0x20
    80007584:	01c65613          	srli	a2,a2,0x1c
    80007588:	00c68633          	add	a2,a3,a2
    8000758c:	02c70a63          	beq	a4,a2,800075c0 <__mem_free+0x84>
    80007590:	fee53823          	sd	a4,-16(a0)
    80007594:	0087a503          	lw	a0,8(a5)
    80007598:	02051613          	slli	a2,a0,0x20
    8000759c:	01c65613          	srli	a2,a2,0x1c
    800075a0:	00c78633          	add	a2,a5,a2
    800075a4:	04c68263          	beq	a3,a2,800075e8 <__mem_free+0xac>
    800075a8:	00813403          	ld	s0,8(sp)
    800075ac:	00d7b023          	sd	a3,0(a5)
    800075b0:	00f5b023          	sd	a5,0(a1)
    800075b4:	00000513          	li	a0,0
    800075b8:	01010113          	addi	sp,sp,16
    800075bc:	00008067          	ret
    800075c0:	00872603          	lw	a2,8(a4)
    800075c4:	00073703          	ld	a4,0(a4)
    800075c8:	0106083b          	addw	a6,a2,a6
    800075cc:	ff052c23          	sw	a6,-8(a0)
    800075d0:	fee53823          	sd	a4,-16(a0)
    800075d4:	0087a503          	lw	a0,8(a5)
    800075d8:	02051613          	slli	a2,a0,0x20
    800075dc:	01c65613          	srli	a2,a2,0x1c
    800075e0:	00c78633          	add	a2,a5,a2
    800075e4:	fcc692e3          	bne	a3,a2,800075a8 <__mem_free+0x6c>
    800075e8:	00813403          	ld	s0,8(sp)
    800075ec:	0105053b          	addw	a0,a0,a6
    800075f0:	00a7a423          	sw	a0,8(a5)
    800075f4:	00e7b023          	sd	a4,0(a5)
    800075f8:	00f5b023          	sd	a5,0(a1)
    800075fc:	00000513          	li	a0,0
    80007600:	01010113          	addi	sp,sp,16
    80007604:	00008067          	ret

0000000080007608 <__mem_alloc>:
    80007608:	fc010113          	addi	sp,sp,-64
    8000760c:	02813823          	sd	s0,48(sp)
    80007610:	02913423          	sd	s1,40(sp)
    80007614:	03213023          	sd	s2,32(sp)
    80007618:	01513423          	sd	s5,8(sp)
    8000761c:	02113c23          	sd	ra,56(sp)
    80007620:	01313c23          	sd	s3,24(sp)
    80007624:	01413823          	sd	s4,16(sp)
    80007628:	01613023          	sd	s6,0(sp)
    8000762c:	04010413          	addi	s0,sp,64
    80007630:	00002a97          	auipc	s5,0x2
    80007634:	028a8a93          	addi	s5,s5,40 # 80009658 <freep>
    80007638:	00f50913          	addi	s2,a0,15
    8000763c:	000ab683          	ld	a3,0(s5)
    80007640:	00495913          	srli	s2,s2,0x4
    80007644:	0019049b          	addiw	s1,s2,1
    80007648:	00048913          	mv	s2,s1
    8000764c:	0c068c63          	beqz	a3,80007724 <__mem_alloc+0x11c>
    80007650:	0006b503          	ld	a0,0(a3)
    80007654:	00852703          	lw	a4,8(a0)
    80007658:	10977063          	bgeu	a4,s1,80007758 <__mem_alloc+0x150>
    8000765c:	000017b7          	lui	a5,0x1
    80007660:	0009099b          	sext.w	s3,s2
    80007664:	0af4e863          	bltu	s1,a5,80007714 <__mem_alloc+0x10c>
    80007668:	02099a13          	slli	s4,s3,0x20
    8000766c:	01ca5a13          	srli	s4,s4,0x1c
    80007670:	fff00b13          	li	s6,-1
    80007674:	0100006f          	j	80007684 <__mem_alloc+0x7c>
    80007678:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000767c:	00852703          	lw	a4,8(a0)
    80007680:	04977463          	bgeu	a4,s1,800076c8 <__mem_alloc+0xc0>
    80007684:	00050793          	mv	a5,a0
    80007688:	fea698e3          	bne	a3,a0,80007678 <__mem_alloc+0x70>
    8000768c:	000a0513          	mv	a0,s4
    80007690:	00000097          	auipc	ra,0x0
    80007694:	1f0080e7          	jalr	496(ra) # 80007880 <kvmincrease>
    80007698:	00050793          	mv	a5,a0
    8000769c:	01050513          	addi	a0,a0,16
    800076a0:	07678e63          	beq	a5,s6,8000771c <__mem_alloc+0x114>
    800076a4:	0137a423          	sw	s3,8(a5)
    800076a8:	00000097          	auipc	ra,0x0
    800076ac:	e94080e7          	jalr	-364(ra) # 8000753c <__mem_free>
    800076b0:	000ab783          	ld	a5,0(s5)
    800076b4:	06078463          	beqz	a5,8000771c <__mem_alloc+0x114>
    800076b8:	0007b503          	ld	a0,0(a5)
    800076bc:	00078693          	mv	a3,a5
    800076c0:	00852703          	lw	a4,8(a0)
    800076c4:	fc9760e3          	bltu	a4,s1,80007684 <__mem_alloc+0x7c>
    800076c8:	08e48263          	beq	s1,a4,8000774c <__mem_alloc+0x144>
    800076cc:	4127073b          	subw	a4,a4,s2
    800076d0:	02071693          	slli	a3,a4,0x20
    800076d4:	01c6d693          	srli	a3,a3,0x1c
    800076d8:	00e52423          	sw	a4,8(a0)
    800076dc:	00d50533          	add	a0,a0,a3
    800076e0:	01252423          	sw	s2,8(a0)
    800076e4:	00fab023          	sd	a5,0(s5)
    800076e8:	01050513          	addi	a0,a0,16
    800076ec:	03813083          	ld	ra,56(sp)
    800076f0:	03013403          	ld	s0,48(sp)
    800076f4:	02813483          	ld	s1,40(sp)
    800076f8:	02013903          	ld	s2,32(sp)
    800076fc:	01813983          	ld	s3,24(sp)
    80007700:	01013a03          	ld	s4,16(sp)
    80007704:	00813a83          	ld	s5,8(sp)
    80007708:	00013b03          	ld	s6,0(sp)
    8000770c:	04010113          	addi	sp,sp,64
    80007710:	00008067          	ret
    80007714:	000019b7          	lui	s3,0x1
    80007718:	f51ff06f          	j	80007668 <__mem_alloc+0x60>
    8000771c:	00000513          	li	a0,0
    80007720:	fcdff06f          	j	800076ec <__mem_alloc+0xe4>
    80007724:	00003797          	auipc	a5,0x3
    80007728:	1dc78793          	addi	a5,a5,476 # 8000a900 <base>
    8000772c:	00078513          	mv	a0,a5
    80007730:	00fab023          	sd	a5,0(s5)
    80007734:	00f7b023          	sd	a5,0(a5)
    80007738:	00000713          	li	a4,0
    8000773c:	00003797          	auipc	a5,0x3
    80007740:	1c07a623          	sw	zero,460(a5) # 8000a908 <base+0x8>
    80007744:	00050693          	mv	a3,a0
    80007748:	f11ff06f          	j	80007658 <__mem_alloc+0x50>
    8000774c:	00053703          	ld	a4,0(a0)
    80007750:	00e7b023          	sd	a4,0(a5)
    80007754:	f91ff06f          	j	800076e4 <__mem_alloc+0xdc>
    80007758:	00068793          	mv	a5,a3
    8000775c:	f6dff06f          	j	800076c8 <__mem_alloc+0xc0>

0000000080007760 <__putc>:
    80007760:	fe010113          	addi	sp,sp,-32
    80007764:	00813823          	sd	s0,16(sp)
    80007768:	00113c23          	sd	ra,24(sp)
    8000776c:	02010413          	addi	s0,sp,32
    80007770:	00050793          	mv	a5,a0
    80007774:	fef40593          	addi	a1,s0,-17
    80007778:	00100613          	li	a2,1
    8000777c:	00000513          	li	a0,0
    80007780:	fef407a3          	sb	a5,-17(s0)
    80007784:	fffff097          	auipc	ra,0xfffff
    80007788:	918080e7          	jalr	-1768(ra) # 8000609c <console_write>
    8000778c:	01813083          	ld	ra,24(sp)
    80007790:	01013403          	ld	s0,16(sp)
    80007794:	02010113          	addi	sp,sp,32
    80007798:	00008067          	ret

000000008000779c <__getc>:
    8000779c:	fe010113          	addi	sp,sp,-32
    800077a0:	00813823          	sd	s0,16(sp)
    800077a4:	00113c23          	sd	ra,24(sp)
    800077a8:	02010413          	addi	s0,sp,32
    800077ac:	fe840593          	addi	a1,s0,-24
    800077b0:	00100613          	li	a2,1
    800077b4:	00000513          	li	a0,0
    800077b8:	fffff097          	auipc	ra,0xfffff
    800077bc:	8c4080e7          	jalr	-1852(ra) # 8000607c <console_read>
    800077c0:	fe844503          	lbu	a0,-24(s0)
    800077c4:	01813083          	ld	ra,24(sp)
    800077c8:	01013403          	ld	s0,16(sp)
    800077cc:	02010113          	addi	sp,sp,32
    800077d0:	00008067          	ret

00000000800077d4 <console_handler>:
    800077d4:	fe010113          	addi	sp,sp,-32
    800077d8:	00813823          	sd	s0,16(sp)
    800077dc:	00113c23          	sd	ra,24(sp)
    800077e0:	00913423          	sd	s1,8(sp)
    800077e4:	02010413          	addi	s0,sp,32
    800077e8:	14202773          	csrr	a4,scause
    800077ec:	100027f3          	csrr	a5,sstatus
    800077f0:	0027f793          	andi	a5,a5,2
    800077f4:	06079e63          	bnez	a5,80007870 <console_handler+0x9c>
    800077f8:	00074c63          	bltz	a4,80007810 <console_handler+0x3c>
    800077fc:	01813083          	ld	ra,24(sp)
    80007800:	01013403          	ld	s0,16(sp)
    80007804:	00813483          	ld	s1,8(sp)
    80007808:	02010113          	addi	sp,sp,32
    8000780c:	00008067          	ret
    80007810:	0ff77713          	andi	a4,a4,255
    80007814:	00900793          	li	a5,9
    80007818:	fef712e3          	bne	a4,a5,800077fc <console_handler+0x28>
    8000781c:	ffffe097          	auipc	ra,0xffffe
    80007820:	4b8080e7          	jalr	1208(ra) # 80005cd4 <plic_claim>
    80007824:	00a00793          	li	a5,10
    80007828:	00050493          	mv	s1,a0
    8000782c:	02f50c63          	beq	a0,a5,80007864 <console_handler+0x90>
    80007830:	fc0506e3          	beqz	a0,800077fc <console_handler+0x28>
    80007834:	00050593          	mv	a1,a0
    80007838:	00001517          	auipc	a0,0x1
    8000783c:	e9850513          	addi	a0,a0,-360 # 800086d0 <_ZZ12printIntegermE6digits+0xe0>
    80007840:	fffff097          	auipc	ra,0xfffff
    80007844:	8d8080e7          	jalr	-1832(ra) # 80006118 <__printf>
    80007848:	01013403          	ld	s0,16(sp)
    8000784c:	01813083          	ld	ra,24(sp)
    80007850:	00048513          	mv	a0,s1
    80007854:	00813483          	ld	s1,8(sp)
    80007858:	02010113          	addi	sp,sp,32
    8000785c:	ffffe317          	auipc	t1,0xffffe
    80007860:	4b030067          	jr	1200(t1) # 80005d0c <plic_complete>
    80007864:	fffff097          	auipc	ra,0xfffff
    80007868:	1bc080e7          	jalr	444(ra) # 80006a20 <uartintr>
    8000786c:	fddff06f          	j	80007848 <console_handler+0x74>
    80007870:	00001517          	auipc	a0,0x1
    80007874:	f6050513          	addi	a0,a0,-160 # 800087d0 <digits+0x78>
    80007878:	fffff097          	auipc	ra,0xfffff
    8000787c:	844080e7          	jalr	-1980(ra) # 800060bc <panic>

0000000080007880 <kvmincrease>:
    80007880:	fe010113          	addi	sp,sp,-32
    80007884:	01213023          	sd	s2,0(sp)
    80007888:	00001937          	lui	s2,0x1
    8000788c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80007890:	00813823          	sd	s0,16(sp)
    80007894:	00113c23          	sd	ra,24(sp)
    80007898:	00913423          	sd	s1,8(sp)
    8000789c:	02010413          	addi	s0,sp,32
    800078a0:	01250933          	add	s2,a0,s2
    800078a4:	00c95913          	srli	s2,s2,0xc
    800078a8:	02090863          	beqz	s2,800078d8 <kvmincrease+0x58>
    800078ac:	00000493          	li	s1,0
    800078b0:	00148493          	addi	s1,s1,1
    800078b4:	fffff097          	auipc	ra,0xfffff
    800078b8:	4bc080e7          	jalr	1212(ra) # 80006d70 <kalloc>
    800078bc:	fe991ae3          	bne	s2,s1,800078b0 <kvmincrease+0x30>
    800078c0:	01813083          	ld	ra,24(sp)
    800078c4:	01013403          	ld	s0,16(sp)
    800078c8:	00813483          	ld	s1,8(sp)
    800078cc:	00013903          	ld	s2,0(sp)
    800078d0:	02010113          	addi	sp,sp,32
    800078d4:	00008067          	ret
    800078d8:	01813083          	ld	ra,24(sp)
    800078dc:	01013403          	ld	s0,16(sp)
    800078e0:	00813483          	ld	s1,8(sp)
    800078e4:	00013903          	ld	s2,0(sp)
    800078e8:	00000513          	li	a0,0
    800078ec:	02010113          	addi	sp,sp,32
    800078f0:	00008067          	ret
	...
