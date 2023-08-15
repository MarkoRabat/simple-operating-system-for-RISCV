
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	06813103          	ld	sp,104(sp) # 80007068 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	5c8030ef          	jal	ra,800035e4 <start>

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
    80001084:	178020ef          	jal	ra,800031fc <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001144:	6dc080e7          	jalr	1756(ra) # 8000181c <_ZN3TCB12createThreadEPFvvE>
    80001148:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    8000114c:	00006797          	auipc	a5,0x6
    80001150:	f247b783          	ld	a5,-220(a5) # 80007070 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001154:	00a7b023          	sd	a0,0(a5)

    threads[1] = TCB::createThread(workerBodyA);
    80001158:	00006517          	auipc	a0,0x6
    8000115c:	f0853503          	ld	a0,-248(a0) # 80007060 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001160:	00000097          	auipc	ra,0x0
    80001164:	6bc080e7          	jalr	1724(ra) # 8000181c <_ZN3TCB12createThreadEPFvvE>
    80001168:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    8000116c:	00005517          	auipc	a0,0x5
    80001170:	eb450513          	addi	a0,a0,-332 # 80006020 <CONSOLE_STATUS+0x10>
    80001174:	00002097          	auipc	ra,0x2
    80001178:	2f8080e7          	jalr	760(ra) # 8000346c <_Z11printStringPKc>
    threads[2] = TCB::createThread(workerBodyB);
    8000117c:	00006517          	auipc	a0,0x6
    80001180:	ecc53503          	ld	a0,-308(a0) # 80007048 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001184:	00000097          	auipc	ra,0x0
    80001188:	698080e7          	jalr	1688(ra) # 8000181c <_ZN3TCB12createThreadEPFvvE>
    8000118c:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    80001190:	00005517          	auipc	a0,0x5
    80001194:	ea850513          	addi	a0,a0,-344 # 80006038 <CONSOLE_STATUS+0x28>
    80001198:	00002097          	auipc	ra,0x2
    8000119c:	2d4080e7          	jalr	724(ra) # 8000346c <_Z11printStringPKc>
    threads[3] = TCB::createThread(workerBodyC);
    800011a0:	00006517          	auipc	a0,0x6
    800011a4:	ee053503          	ld	a0,-288(a0) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x58>
    800011a8:	00000097          	auipc	ra,0x0
    800011ac:	674080e7          	jalr	1652(ra) # 8000181c <_ZN3TCB12createThreadEPFvvE>
    800011b0:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    800011b4:	00005517          	auipc	a0,0x5
    800011b8:	e9c50513          	addi	a0,a0,-356 # 80006050 <CONSOLE_STATUS+0x40>
    800011bc:	00002097          	auipc	ra,0x2
    800011c0:	2b0080e7          	jalr	688(ra) # 8000346c <_Z11printStringPKc>
    threads[4] = TCB::createThread(workerBodyD);
    800011c4:	00006517          	auipc	a0,0x6
    800011c8:	ec453503          	ld	a0,-316(a0) # 80007088 <_GLOBAL_OFFSET_TABLE_+0x60>
    800011cc:	00000097          	auipc	ra,0x0
    800011d0:	650080e7          	jalr	1616(ra) # 8000181c <_ZN3TCB12createThreadEPFvvE>
    800011d4:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    800011d8:	00005517          	auipc	a0,0x5
    800011dc:	e9050513          	addi	a0,a0,-368 # 80006068 <CONSOLE_STATUS+0x58>
    800011e0:	00002097          	auipc	ra,0x2
    800011e4:	28c080e7          	jalr	652(ra) # 8000346c <_Z11printStringPKc>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800011e8:	00006797          	auipc	a5,0x6
    800011ec:	e587b783          	ld	a5,-424(a5) # 80007040 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80001204:	6e4080e7          	jalr	1764(ra) # 800018e4 <_ZN3TCB5yieldEv>
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
    80001248:	dac080e7          	jalr	-596(ra) # 80002ff0 <_ZdlPv>
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
    8000126c:	db0080e7          	jalr	-592(ra) # 80003018 <_ZdaPv>
    80001270:	fd1ff06f          	j	80001240 <_Z5main2v+0x11c>
    }
    printString("Finished\n");
    80001274:	00005517          	auipc	a0,0x5
    80001278:	e0c50513          	addi	a0,a0,-500 # 80006080 <CONSOLE_STATUS+0x70>
    8000127c:	00002097          	auipc	ra,0x2
    80001280:	1f0080e7          	jalr	496(ra) # 8000346c <_Z11printStringPKc>

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
    8000130c:	5dc080e7          	jalr	1500(ra) # 800018e4 <_ZN3TCB5yieldEv>
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
    80001370:	100080e7          	jalr	256(ra) # 8000346c <_Z11printStringPKc>
        printInteger(i);
    80001374:	00048513          	mv	a0,s1
    80001378:	00002097          	auipc	ra,0x2
    8000137c:	164080e7          	jalr	356(ra) # 800034dc <_Z12printIntegerm>
        printString("\n");
    80001380:	00005517          	auipc	a0,0x5
    80001384:	d0850513          	addi	a0,a0,-760 # 80006088 <CONSOLE_STATUS+0x78>
    80001388:	00002097          	auipc	ra,0x2
    8000138c:	0e4080e7          	jalr	228(ra) # 8000346c <_Z11printStringPKc>
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
    80001408:	068080e7          	jalr	104(ra) # 8000346c <_Z11printStringPKc>
        printInteger(i);
    8000140c:	00048513          	mv	a0,s1
    80001410:	00002097          	auipc	ra,0x2
    80001414:	0cc080e7          	jalr	204(ra) # 800034dc <_Z12printIntegerm>
        printString("\n");
    80001418:	00005517          	auipc	a0,0x5
    8000141c:	c7050513          	addi	a0,a0,-912 # 80006088 <CONSOLE_STATUS+0x78>
    80001420:	00002097          	auipc	ra,0x2
    80001424:	04c080e7          	jalr	76(ra) # 8000346c <_Z11printStringPKc>
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
    80001470:	000080e7          	jalr	ra # 8000346c <_Z11printStringPKc>
        printInteger(i);
    80001474:	00048513          	mv	a0,s1
    80001478:	00002097          	auipc	ra,0x2
    8000147c:	064080e7          	jalr	100(ra) # 800034dc <_Z12printIntegerm>
        printString("\n");
    80001480:	00005517          	auipc	a0,0x5
    80001484:	c0850513          	addi	a0,a0,-1016 # 80006088 <CONSOLE_STATUS+0x78>
    80001488:	00002097          	auipc	ra,0x2
    8000148c:	fe4080e7          	jalr	-28(ra) # 8000346c <_Z11printStringPKc>
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
    800014ac:	fc4080e7          	jalr	-60(ra) # 8000346c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800014b0:	00700313          	li	t1,7
    TCB::yield();
    800014b4:	00000097          	auipc	ra,0x0
    800014b8:	430080e7          	jalr	1072(ra) # 800018e4 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800014bc:	00030913          	mv	s2,t1

    printString("C: t1=");
    800014c0:	00005517          	auipc	a0,0x5
    800014c4:	bf850513          	addi	a0,a0,-1032 # 800060b8 <CONSOLE_STATUS+0xa8>
    800014c8:	00002097          	auipc	ra,0x2
    800014cc:	fa4080e7          	jalr	-92(ra) # 8000346c <_Z11printStringPKc>
    printInteger(t1);
    800014d0:	00090513          	mv	a0,s2
    800014d4:	00002097          	auipc	ra,0x2
    800014d8:	008080e7          	jalr	8(ra) # 800034dc <_Z12printIntegerm>
    printString("\n");
    800014dc:	00005517          	auipc	a0,0x5
    800014e0:	bac50513          	addi	a0,a0,-1108 # 80006088 <CONSOLE_STATUS+0x78>
    800014e4:	00002097          	auipc	ra,0x2
    800014e8:	f88080e7          	jalr	-120(ra) # 8000346c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800014ec:	00c00513          	li	a0,12
    800014f0:	00000097          	auipc	ra,0x0
    800014f4:	db0080e7          	jalr	-592(ra) # 800012a0 <_ZL9fibonaccim>
    800014f8:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800014fc:	00005517          	auipc	a0,0x5
    80001500:	bc450513          	addi	a0,a0,-1084 # 800060c0 <CONSOLE_STATUS+0xb0>
    80001504:	00002097          	auipc	ra,0x2
    80001508:	f68080e7          	jalr	-152(ra) # 8000346c <_Z11printStringPKc>
    printInteger(result);
    8000150c:	00090513          	mv	a0,s2
    80001510:	00002097          	auipc	ra,0x2
    80001514:	fcc080e7          	jalr	-52(ra) # 800034dc <_Z12printIntegerm>
    printString("\n");
    80001518:	00005517          	auipc	a0,0x5
    8000151c:	b7050513          	addi	a0,a0,-1168 # 80006088 <CONSOLE_STATUS+0x78>
    80001520:	00002097          	auipc	ra,0x2
    80001524:	f4c080e7          	jalr	-180(ra) # 8000346c <_Z11printStringPKc>
    80001528:	0380006f          	j	80001560 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    8000152c:	00005517          	auipc	a0,0x5
    80001530:	b7450513          	addi	a0,a0,-1164 # 800060a0 <CONSOLE_STATUS+0x90>
    80001534:	00002097          	auipc	ra,0x2
    80001538:	f38080e7          	jalr	-200(ra) # 8000346c <_Z11printStringPKc>
        printInteger(i);
    8000153c:	00048513          	mv	a0,s1
    80001540:	00002097          	auipc	ra,0x2
    80001544:	f9c080e7          	jalr	-100(ra) # 800034dc <_Z12printIntegerm>
        printString("\n");
    80001548:	00005517          	auipc	a0,0x5
    8000154c:	b4050513          	addi	a0,a0,-1216 # 80006088 <CONSOLE_STATUS+0x78>
    80001550:	00002097          	auipc	ra,0x2
    80001554:	f1c080e7          	jalr	-228(ra) # 8000346c <_Z11printStringPKc>
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
    800015ac:	ec4080e7          	jalr	-316(ra) # 8000346c <_Z11printStringPKc>
        printInteger(i);
    800015b0:	00048513          	mv	a0,s1
    800015b4:	00002097          	auipc	ra,0x2
    800015b8:	f28080e7          	jalr	-216(ra) # 800034dc <_Z12printIntegerm>
        printString("\n");
    800015bc:	00005517          	auipc	a0,0x5
    800015c0:	acc50513          	addi	a0,a0,-1332 # 80006088 <CONSOLE_STATUS+0x78>
    800015c4:	00002097          	auipc	ra,0x2
    800015c8:	ea8080e7          	jalr	-344(ra) # 8000346c <_Z11printStringPKc>
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
    800015e8:	e88080e7          	jalr	-376(ra) # 8000346c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800015ec:	00500313          	li	t1,5
    TCB::yield();
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	2f4080e7          	jalr	756(ra) # 800018e4 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    800015f8:	01000513          	li	a0,16
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	ca4080e7          	jalr	-860(ra) # 800012a0 <_ZL9fibonaccim>
    80001604:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001608:	00005517          	auipc	a0,0x5
    8000160c:	ae050513          	addi	a0,a0,-1312 # 800060e8 <CONSOLE_STATUS+0xd8>
    80001610:	00002097          	auipc	ra,0x2
    80001614:	e5c080e7          	jalr	-420(ra) # 8000346c <_Z11printStringPKc>
    printInteger(result);
    80001618:	00090513          	mv	a0,s2
    8000161c:	00002097          	auipc	ra,0x2
    80001620:	ec0080e7          	jalr	-320(ra) # 800034dc <_Z12printIntegerm>
    printString("\n");
    80001624:	00005517          	auipc	a0,0x5
    80001628:	a6450513          	addi	a0,a0,-1436 # 80006088 <CONSOLE_STATUS+0x78>
    8000162c:	00002097          	auipc	ra,0x2
    80001630:	e40080e7          	jalr	-448(ra) # 8000346c <_Z11printStringPKc>
    80001634:	0380006f          	j	8000166c <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    80001638:	00005517          	auipc	a0,0x5
    8000163c:	a9850513          	addi	a0,a0,-1384 # 800060d0 <CONSOLE_STATUS+0xc0>
    80001640:	00002097          	auipc	ra,0x2
    80001644:	e2c080e7          	jalr	-468(ra) # 8000346c <_Z11printStringPKc>
        printInteger(i);
    80001648:	00048513          	mv	a0,s1
    8000164c:	00002097          	auipc	ra,0x2
    80001650:	e90080e7          	jalr	-368(ra) # 800034dc <_Z12printIntegerm>
        printString("\n");
    80001654:	00005517          	auipc	a0,0x5
    80001658:	a3450513          	addi	a0,a0,-1484 # 80006088 <CONSOLE_STATUS+0x78>
    8000165c:	00002097          	auipc	ra,0x2
    80001660:	e10080e7          	jalr	-496(ra) # 8000346c <_Z11printStringPKc>
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
    8000168c:	fd010113          	addi	sp,sp,-48
    80001690:	02113423          	sd	ra,40(sp)
    80001694:	02813023          	sd	s0,32(sp)
    80001698:	00913c23          	sd	s1,24(sp)
    8000169c:	01213823          	sd	s2,16(sp)
    800016a0:	03010413          	addi	s0,sp,48

    uint64* arr = (uint64*) MemoryAllocator::instance()->kmem_alloc(64 * 100);
    800016a4:	00000097          	auipc	ra,0x0
    800016a8:	414080e7          	jalr	1044(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    800016ac:	000025b7          	lui	a1,0x2
    800016b0:	90058593          	addi	a1,a1,-1792 # 1900 <_entry-0x7fffe700>
    800016b4:	00000097          	auipc	ra,0x0
    800016b8:	4e8080e7          	jalr	1256(ra) # 80001b9c <_ZN15MemoryAllocator10kmem_allocEm>
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
    800016e8:	3d4080e7          	jalr	980(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    800016ec:	00048593          	mv	a1,s1
    800016f0:	00000097          	auipc	ra,0x0
    800016f4:	554080e7          	jalr	1364(ra) # 80001c44 <_ZN15MemoryAllocator9kmem_freeEPv>
        );
        objectVector = bitVector + memoryForBits;
        for (size_t i = 0; i < memoryForBits; bitVector[i++] = 0);
    }
    void* operator new(size_t size) {
        return MemoryAllocator::instance()->kmem_alloc(size);
    800016f8:	00000097          	auipc	ra,0x0
    800016fc:	3c0080e7          	jalr	960(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80001700:	02800593          	li	a1,40
    80001704:	00000097          	auipc	ra,0x0
    80001708:	498080e7          	jalr	1176(ra) # 80001b9c <_ZN15MemoryAllocator10kmem_allocEm>
    8000170c:	00050493          	mv	s1,a0
    KObjectAllocator(size_t objectSize) : objectSize(objectSize) {
    80001710:	00a00793          	li	a5,10
    80001714:	00f53023          	sd	a5,0(a0)
    80001718:	14000793          	li	a5,320
    8000171c:	00f53423          	sd	a5,8(a0)
    80001720:	02800793          	li	a5,40
    80001724:	00f53823          	sd	a5,16(a0)
        bitVector = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80001728:	00000097          	auipc	ra,0x0
    8000172c:	390080e7          	jalr	912(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
            memoryForBits + initialObjectNumber * objectSize
    80001730:	0104b583          	ld	a1,16(s1)
    80001734:	0084b703          	ld	a4,8(s1)
    80001738:	00271793          	slli	a5,a4,0x2
    8000173c:	00e787b3          	add	a5,a5,a4
    80001740:	00179793          	slli	a5,a5,0x1
        bitVector = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80001744:	00f585b3          	add	a1,a1,a5
    80001748:	00000097          	auipc	ra,0x0
    8000174c:	454080e7          	jalr	1108(ra) # 80001b9c <_ZN15MemoryAllocator10kmem_allocEm>
    80001750:	02a4b023          	sd	a0,32(s1)
        objectVector = bitVector + memoryForBits;
    80001754:	0104b783          	ld	a5,16(s1)
    80001758:	00f50533          	add	a0,a0,a5
    8000175c:	00a4bc23          	sd	a0,24(s1)
        for (size_t i = 0; i < memoryForBits; bitVector[i++] = 0);
    80001760:	00000793          	li	a5,0
    80001764:	0104b703          	ld	a4,16(s1)
    80001768:	00e7fc63          	bgeu	a5,a4,80001780 <main+0xf4>
    8000176c:	0204b703          	ld	a4,32(s1)
    80001770:	00f70733          	add	a4,a4,a5
    80001774:	00070023          	sb	zero,0(a4)
    80001778:	00178793          	addi	a5,a5,1
    8000177c:	fe9ff06f          	j	80001764 <main+0xd8>

    KObjectAllocator* newObj = new KObjectAllocator(10);
    newObj->printInternalMemory();
    80001780:	00048513          	mv	a0,s1
    80001784:	00002097          	auipc	ra,0x2
    80001788:	8bc080e7          	jalr	-1860(ra) # 80003040 <_ZN16KObjectAllocator19printInternalMemoryEv>
    delete newObj;
    8000178c:	00048c63          	beqz	s1,800017a4 <main+0x118>
    }
    void operator delete(void* p) {
        MemoryAllocator::instance()->kmem_free(p);
    80001790:	00000097          	auipc	ra,0x0
    80001794:	328080e7          	jalr	808(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80001798:	00048593          	mv	a1,s1
    8000179c:	00000097          	auipc	ra,0x0
    800017a0:	4a8080e7          	jalr	1192(ra) # 80001c44 <_ZN15MemoryAllocator9kmem_freeEPv>

    printString("\n");
    800017a4:	00005517          	auipc	a0,0x5
    800017a8:	8e450513          	addi	a0,a0,-1820 # 80006088 <CONSOLE_STATUS+0x78>
    800017ac:	00002097          	auipc	ra,0x2
    800017b0:	cc0080e7          	jalr	-832(ra) # 8000346c <_Z11printStringPKc>
    printInteger((uint8) -1 >> 4 & (uint8) 1);
    800017b4:	00100513          	li	a0,1
    800017b8:	00002097          	auipc	ra,0x2
    800017bc:	d24080e7          	jalr	-732(ra) # 800034dc <_Z12printIntegerm>

    printString("\nMemory tests:\n");
    800017c0:	00005517          	auipc	a0,0x5
    800017c4:	93850513          	addi	a0,a0,-1736 # 800060f8 <CONSOLE_STATUS+0xe8>
    800017c8:	00002097          	auipc	ra,0x2
    800017cc:	ca4080e7          	jalr	-860(ra) # 8000346c <_Z11printStringPKc>
    MemoryAllocatorTest t1;
    t1.runTests();
    800017d0:	fd840513          	addi	a0,s0,-40
    800017d4:	00001097          	auipc	ra,0x1
    800017d8:	5ac080e7          	jalr	1452(ra) # 80002d80 <_ZN19MemoryAllocatorTest8runTestsEv>


    return 0;
    800017dc:	00000513          	li	a0,0
    800017e0:	02813083          	ld	ra,40(sp)
    800017e4:	02013403          	ld	s0,32(sp)
    800017e8:	01813483          	ld	s1,24(sp)
    800017ec:	01013903          	ld	s2,16(sp)
    800017f0:	03010113          	addi	sp,sp,48
    800017f4:	00008067          	ret
    800017f8:	00050913          	mv	s2,a0
    800017fc:	00000097          	auipc	ra,0x0
    80001800:	2bc080e7          	jalr	700(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80001804:	00048593          	mv	a1,s1
    80001808:	00000097          	auipc	ra,0x0
    8000180c:	43c080e7          	jalr	1084(ra) # 80001c44 <_ZN15MemoryAllocator9kmem_freeEPv>
    80001810:	00090513          	mv	a0,s2
    80001814:	00007097          	auipc	ra,0x7
    80001818:	9d4080e7          	jalr	-1580(ra) # 800081e8 <_Unwind_Resume>

000000008000181c <_ZN3TCB12createThreadEPFvvE>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    8000181c:	fe010113          	addi	sp,sp,-32
    80001820:	00113c23          	sd	ra,24(sp)
    80001824:	00813823          	sd	s0,16(sp)
    80001828:	00913423          	sd	s1,8(sp)
    8000182c:	01213023          	sd	s2,0(sp)
    80001830:	02010413          	addi	s0,sp,32
    80001834:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    80001838:	03000513          	li	a0,48
    8000183c:	00001097          	auipc	ra,0x1
    80001840:	764080e7          	jalr	1892(ra) # 80002fa0 <_Znwm>
    80001844:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    80001848:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    8000184c:	00090a63          	beqz	s2,80001860 <_ZN3TCB12createThreadEPFvvE+0x44>
    80001850:	00002537          	lui	a0,0x2
    80001854:	00001097          	auipc	ra,0x1
    80001858:	774080e7          	jalr	1908(ra) # 80002fc8 <_Znam>
    8000185c:	0080006f          	j	80001864 <_ZN3TCB12createThreadEPFvvE+0x48>
    80001860:	00000513          	li	a0,0
            finished(false)
    80001864:	00a4b423          	sd	a0,8(s1)
    80001868:	00000797          	auipc	a5,0x0
    8000186c:	09878793          	addi	a5,a5,152 # 80001900 <_ZN3TCB13threadWrapperEv>
    80001870:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001874:	02050863          	beqz	a0,800018a4 <_ZN3TCB12createThreadEPFvvE+0x88>
    80001878:	000027b7          	lui	a5,0x2
    8000187c:	00f507b3          	add	a5,a0,a5
            finished(false)
    80001880:	00f4bc23          	sd	a5,24(s1)
    80001884:	00200793          	li	a5,2
    80001888:	02f4b023          	sd	a5,32(s1)
    8000188c:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001890:	02090c63          	beqz	s2,800018c8 <_ZN3TCB12createThreadEPFvvE+0xac>
    80001894:	00048513          	mv	a0,s1
    80001898:	00002097          	auipc	ra,0x2
    8000189c:	b34080e7          	jalr	-1228(ra) # 800033cc <_ZN9Scheduler3putEP3TCB>
    800018a0:	0280006f          	j	800018c8 <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800018a4:	00000793          	li	a5,0
    800018a8:	fd9ff06f          	j	80001880 <_ZN3TCB12createThreadEPFvvE+0x64>
    800018ac:	00050913          	mv	s2,a0
    800018b0:	00048513          	mv	a0,s1
    800018b4:	00001097          	auipc	ra,0x1
    800018b8:	73c080e7          	jalr	1852(ra) # 80002ff0 <_ZdlPv>
    800018bc:	00090513          	mv	a0,s2
    800018c0:	00007097          	auipc	ra,0x7
    800018c4:	928080e7          	jalr	-1752(ra) # 800081e8 <_Unwind_Resume>
}
    800018c8:	00048513          	mv	a0,s1
    800018cc:	01813083          	ld	ra,24(sp)
    800018d0:	01013403          	ld	s0,16(sp)
    800018d4:	00813483          	ld	s1,8(sp)
    800018d8:	00013903          	ld	s2,0(sp)
    800018dc:	02010113          	addi	sp,sp,32
    800018e0:	00008067          	ret

00000000800018e4 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    800018e4:	ff010113          	addi	sp,sp,-16
    800018e8:	00813423          	sd	s0,8(sp)
    800018ec:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    800018f0:	00000073          	ecall
}
    800018f4:	00813403          	ld	s0,8(sp)
    800018f8:	01010113          	addi	sp,sp,16
    800018fc:	00008067          	ret

0000000080001900 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001900:	fe010113          	addi	sp,sp,-32
    80001904:	00113c23          	sd	ra,24(sp)
    80001908:	00813823          	sd	s0,16(sp)
    8000190c:	00913423          	sd	s1,8(sp)
    80001910:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001914:	00002097          	auipc	ra,0x2
    80001918:	8c8080e7          	jalr	-1848(ra) # 800031dc <_ZN5Riscv10popSppSpieEv>
    running->body();
    8000191c:	00005497          	auipc	s1,0x5
    80001920:	7c448493          	addi	s1,s1,1988 # 800070e0 <_ZN3TCB7runningE>
    80001924:	0004b783          	ld	a5,0(s1)
    80001928:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    8000192c:	000780e7          	jalr	a5
    running->setFinished(true);
    80001930:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80001934:	00100713          	li	a4,1
    80001938:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	fa8080e7          	jalr	-88(ra) # 800018e4 <_ZN3TCB5yieldEv>
}
    80001944:	01813083          	ld	ra,24(sp)
    80001948:	01013403          	ld	s0,16(sp)
    8000194c:	00813483          	ld	s1,8(sp)
    80001950:	02010113          	addi	sp,sp,32
    80001954:	00008067          	ret

0000000080001958 <_ZN3TCB8dispatchEv>:
{
    80001958:	fe010113          	addi	sp,sp,-32
    8000195c:	00113c23          	sd	ra,24(sp)
    80001960:	00813823          	sd	s0,16(sp)
    80001964:	00913423          	sd	s1,8(sp)
    80001968:	02010413          	addi	s0,sp,32
    TCB *old = running;
    8000196c:	00005497          	auipc	s1,0x5
    80001970:	7744b483          	ld	s1,1908(s1) # 800070e0 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001974:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001978:	02078c63          	beqz	a5,800019b0 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    8000197c:	00002097          	auipc	ra,0x2
    80001980:	9e8080e7          	jalr	-1560(ra) # 80003364 <_ZN9Scheduler3getEv>
    80001984:	00005797          	auipc	a5,0x5
    80001988:	74a7be23          	sd	a0,1884(a5) # 800070e0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    8000198c:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001990:	01048513          	addi	a0,s1,16
    80001994:	fffff097          	auipc	ra,0xfffff
    80001998:	77c080e7          	jalr	1916(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    8000199c:	01813083          	ld	ra,24(sp)
    800019a0:	01013403          	ld	s0,16(sp)
    800019a4:	00813483          	ld	s1,8(sp)
    800019a8:	02010113          	addi	sp,sp,32
    800019ac:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    800019b0:	00048513          	mv	a0,s1
    800019b4:	00002097          	auipc	ra,0x2
    800019b8:	a18080e7          	jalr	-1512(ra) # 800033cc <_ZN9Scheduler3putEP3TCB>
    800019bc:	fc1ff06f          	j	8000197c <_ZN3TCB8dispatchEv+0x24>

00000000800019c0 <_ZN15MemoryAllocator17getMinBlockNumberEm>:
    newMemoryAllocator->freeMemoryHead->next = nullptr;

    return newMemoryAllocator;
}

size_t MemoryAllocator::getMinBlockNumber(size_t size) {
    800019c0:	ff010113          	addi	sp,sp,-16
    800019c4:	00813423          	sd	s0,8(sp)
    800019c8:	01010413          	addi	s0,sp,16
    size_t blockNo = size / MEM_BLOCK_SIZE;
    800019cc:	00655713          	srli	a4,a0,0x6
    blockNo = blockNo + (size - blockNo * MEM_BLOCK_SIZE != 0);
    800019d0:	fc057793          	andi	a5,a0,-64
    800019d4:	40a78533          	sub	a0,a5,a0
    800019d8:	00a03533          	snez	a0,a0
    return blockNo;
}
    800019dc:	00e50533          	add	a0,a0,a4
    800019e0:	00813403          	ld	s0,8(sp)
    800019e4:	01010113          	addi	sp,sp,16
    800019e8:	00008067          	ret

00000000800019ec <_ZN15MemoryAllocator14createInstanceEv>:
MemoryAllocator* MemoryAllocator::createInstance() {
    800019ec:	fd010113          	addi	sp,sp,-48
    800019f0:	02113423          	sd	ra,40(sp)
    800019f4:	02813023          	sd	s0,32(sp)
    800019f8:	00913c23          	sd	s1,24(sp)
    800019fc:	01213823          	sd	s2,16(sp)
    80001a00:	01313423          	sd	s3,8(sp)
    80001a04:	01413023          	sd	s4,0(sp)
    80001a08:	03010413          	addi	s0,sp,48
    managedMemorySpaceStart = (uint8*) HEAP_START_ADDR;
    80001a0c:	00005797          	auipc	a5,0x5
    80001a10:	6247b783          	ld	a5,1572(a5) # 80007030 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001a14:	0007b903          	ld	s2,0(a5)
    managedMemorySpaceEnd = (uint8*) HEAP_END_ADDR;
    80001a18:	00005797          	auipc	a5,0x5
    80001a1c:	6607b783          	ld	a5,1632(a5) # 80007078 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001a20:	0007b483          	ld	s1,0(a5)
    80001a24:	00005a17          	auipc	s4,0x5
    80001a28:	6cca0a13          	addi	s4,s4,1740 # 800070f0 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    80001a2c:	009a3023          	sd	s1,0(s4)
    minMemoryFragmentSize = getMinBlockNumber(sizeof(SegmentDescriptor)) + getMinBlockNumber(sizeof(uint64));
    80001a30:	01000513          	li	a0,16
    80001a34:	00000097          	auipc	ra,0x0
    80001a38:	f8c080e7          	jalr	-116(ra) # 800019c0 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001a3c:	00050993          	mv	s3,a0
    80001a40:	00800513          	li	a0,8
    80001a44:	00000097          	auipc	ra,0x0
    80001a48:	f7c080e7          	jalr	-132(ra) # 800019c0 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001a4c:	00a989b3          	add	s3,s3,a0
    80001a50:	013a3423          	sd	s3,8(s4)
    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
    80001a54:	02000513          	li	a0,32
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	f68080e7          	jalr	-152(ra) # 800019c0 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    managedMemorySpaceStart += noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE;
    80001a60:	00651513          	slli	a0,a0,0x6
    80001a64:	00a90533          	add	a0,s2,a0
    80001a68:	00aa3823          	sd	a0,16(s4)
    newMemoryAllocator->totalTaken = 0;
    80001a6c:	00093423          	sd	zero,8(s2)
    newMemoryAllocator->totalFree = (size_t) (managedMemorySpaceEnd - managedMemorySpaceStart);
    80001a70:	40a484b3          	sub	s1,s1,a0
    80001a74:	00993023          	sd	s1,0(s2)
    newMemoryAllocator->freeBlockNo = newMemoryAllocator->totalFree / MEM_BLOCK_SIZE;
    80001a78:	0064d493          	srli	s1,s1,0x6
    80001a7c:	00993823          	sd	s1,16(s2)
    newMemoryAllocator->freeMemoryHead = (SegmentDescriptor*) managedMemorySpaceStart;
    80001a80:	010a3783          	ld	a5,16(s4)
    80001a84:	00f93c23          	sd	a5,24(s2)
    newMemoryAllocator->freeMemoryHead->noBlocks = newMemoryAllocator->freeBlockNo;
    80001a88:	0097b023          	sd	s1,0(a5)
    newMemoryAllocator->freeMemoryHead->next = nullptr;
    80001a8c:	01893783          	ld	a5,24(s2)
    80001a90:	0007b423          	sd	zero,8(a5)
}
    80001a94:	00090513          	mv	a0,s2
    80001a98:	02813083          	ld	ra,40(sp)
    80001a9c:	02013403          	ld	s0,32(sp)
    80001aa0:	01813483          	ld	s1,24(sp)
    80001aa4:	01013903          	ld	s2,16(sp)
    80001aa8:	00813983          	ld	s3,8(sp)
    80001aac:	00013a03          	ld	s4,0(sp)
    80001ab0:	03010113          	addi	sp,sp,48
    80001ab4:	00008067          	ret

0000000080001ab8 <_ZN15MemoryAllocator8instanceEv>:
    if (onlyInstance == nullptr)
    80001ab8:	00005797          	auipc	a5,0x5
    80001abc:	6507b783          	ld	a5,1616(a5) # 80007108 <_ZN15MemoryAllocator12onlyInstanceE>
    80001ac0:	00078863          	beqz	a5,80001ad0 <_ZN15MemoryAllocator8instanceEv+0x18>
}
    80001ac4:	00005517          	auipc	a0,0x5
    80001ac8:	64453503          	ld	a0,1604(a0) # 80007108 <_ZN15MemoryAllocator12onlyInstanceE>
    80001acc:	00008067          	ret
MemoryAllocator* MemoryAllocator::instance() {
    80001ad0:	ff010113          	addi	sp,sp,-16
    80001ad4:	00113423          	sd	ra,8(sp)
    80001ad8:	00813023          	sd	s0,0(sp)
    80001adc:	01010413          	addi	s0,sp,16
        onlyInstance = createInstance();
    80001ae0:	00000097          	auipc	ra,0x0
    80001ae4:	f0c080e7          	jalr	-244(ra) # 800019ec <_ZN15MemoryAllocator14createInstanceEv>
    80001ae8:	00005797          	auipc	a5,0x5
    80001aec:	62a7b023          	sd	a0,1568(a5) # 80007108 <_ZN15MemoryAllocator12onlyInstanceE>
}
    80001af0:	00005517          	auipc	a0,0x5
    80001af4:	61853503          	ld	a0,1560(a0) # 80007108 <_ZN15MemoryAllocator12onlyInstanceE>
    80001af8:	00813083          	ld	ra,8(sp)
    80001afc:	00013403          	ld	s0,0(sp)
    80001b00:	01010113          	addi	sp,sp,16
    80001b04:	00008067          	ret

0000000080001b08 <_ZN15MemoryAllocator8firstFitEm>:


MemoryAllocator::SegmentDescriptor* MemoryAllocator::firstFit(size_t blockNo) {
    80001b08:	ff010113          	addi	sp,sp,-16
    80001b0c:	00813423          	sd	s0,8(sp)
    80001b10:	01010413          	addi	s0,sp,16
    80001b14:	00050693          	mv	a3,a0
    SegmentDescriptor* largeEnoughSegment = freeMemoryHead;
    80001b18:	01853503          	ld	a0,24(a0)
    SegmentDescriptor* prevSegment = nullptr;
    80001b1c:	00000713          	li	a4,0
    while (largeEnoughSegment && largeEnoughSegment->noBlocks < blockNo) {
    80001b20:	00050c63          	beqz	a0,80001b38 <_ZN15MemoryAllocator8firstFitEm+0x30>
    80001b24:	00053783          	ld	a5,0(a0)
    80001b28:	00b7f863          	bgeu	a5,a1,80001b38 <_ZN15MemoryAllocator8firstFitEm+0x30>
        prevSegment = largeEnoughSegment;
    80001b2c:	00050713          	mv	a4,a0
        largeEnoughSegment = largeEnoughSegment->next;
    80001b30:	00853503          	ld	a0,8(a0)
    while (largeEnoughSegment && largeEnoughSegment->noBlocks < blockNo) {
    80001b34:	fedff06f          	j	80001b20 <_ZN15MemoryAllocator8firstFitEm+0x18>
    }
    if (!largeEnoughSegment) return nullptr;
    80001b38:	04050663          	beqz	a0,80001b84 <_ZN15MemoryAllocator8firstFitEm+0x7c>

    if (largeEnoughSegment->noBlocks - blockNo >= minMemoryFragmentSize) {
    80001b3c:	00053783          	ld	a5,0(a0)
    80001b40:	40b787b3          	sub	a5,a5,a1
    80001b44:	00005617          	auipc	a2,0x5
    80001b48:	5b463603          	ld	a2,1460(a2) # 800070f8 <_ZN15MemoryAllocator21minMemoryFragmentSizeE>
    80001b4c:	02c7e063          	bltu	a5,a2,80001b6c <_ZN15MemoryAllocator8firstFitEm+0x64>
        SegmentDescriptor* newSegment = (SegmentDescriptor*) ((uint8*) largeEnoughSegment + blockNo * MEM_BLOCK_SIZE);
    80001b50:	00659613          	slli	a2,a1,0x6
    80001b54:	00c50633          	add	a2,a0,a2
        newSegment->noBlocks = largeEnoughSegment->noBlocks - blockNo;
    80001b58:	00f63023          	sd	a5,0(a2)
        newSegment->next = largeEnoughSegment->next;
    80001b5c:	00853783          	ld	a5,8(a0)
    80001b60:	00f63423          	sd	a5,8(a2)
        largeEnoughSegment->next = newSegment;
    80001b64:	00c53423          	sd	a2,8(a0)
        largeEnoughSegment->noBlocks = blockNo;
    80001b68:	00b53023          	sd	a1,0(a0)
    }

    if (prevSegment) prevSegment->next = largeEnoughSegment->next;
    80001b6c:	00070663          	beqz	a4,80001b78 <_ZN15MemoryAllocator8firstFitEm+0x70>
    80001b70:	00853783          	ld	a5,8(a0)
    80001b74:	00f73423          	sd	a5,8(a4)
    if (freeMemoryHead == largeEnoughSegment)
    80001b78:	0186b783          	ld	a5,24(a3)
    80001b7c:	00a78a63          	beq	a5,a0,80001b90 <_ZN15MemoryAllocator8firstFitEm+0x88>
        freeMemoryHead = largeEnoughSegment->next;

    largeEnoughSegment->next = nullptr;
    80001b80:	00053423          	sd	zero,8(a0)
    return largeEnoughSegment;
}
    80001b84:	00813403          	ld	s0,8(sp)
    80001b88:	01010113          	addi	sp,sp,16
    80001b8c:	00008067          	ret
        freeMemoryHead = largeEnoughSegment->next;
    80001b90:	00853783          	ld	a5,8(a0)
    80001b94:	00f6bc23          	sd	a5,24(a3)
    80001b98:	fe9ff06f          	j	80001b80 <_ZN15MemoryAllocator8firstFitEm+0x78>

0000000080001b9c <_ZN15MemoryAllocator10kmem_allocEm>:

void* MemoryAllocator::kmem_alloc(size_t size) {
    80001b9c:	fe010113          	addi	sp,sp,-32
    80001ba0:	00113c23          	sd	ra,24(sp)
    80001ba4:	00813823          	sd	s0,16(sp)
    80001ba8:	00913423          	sd	s1,8(sp)
    80001bac:	01213023          	sd	s2,0(sp)
    80001bb0:	02010413          	addi	s0,sp,32
    80001bb4:	00050493          	mv	s1,a0
    80001bb8:	00058913          	mv	s2,a1
    size_t minBlockNo = getMinBlockNumber(size);
    80001bbc:	00058513          	mv	a0,a1
    80001bc0:	00000097          	auipc	ra,0x0
    80001bc4:	e00080e7          	jalr	-512(ra) # 800019c0 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001bc8:	00050593          	mv	a1,a0
    if (minBlockNo * MEM_BLOCK_SIZE - size < sizeof(SegmentDescriptor)) ++minBlockNo;
    80001bcc:	00651793          	slli	a5,a0,0x6
    80001bd0:	41278933          	sub	s2,a5,s2
    80001bd4:	00f00793          	li	a5,15
    80001bd8:	0127e463          	bltu	a5,s2,80001be0 <_ZN15MemoryAllocator10kmem_allocEm+0x44>
    80001bdc:	00150593          	addi	a1,a0,1
    SegmentDescriptor* newTaken = firstFit(minBlockNo);
    80001be0:	00048513          	mv	a0,s1
    80001be4:	00000097          	auipc	ra,0x0
    80001be8:	f24080e7          	jalr	-220(ra) # 80001b08 <_ZN15MemoryAllocator8firstFitEm>
    if (!newTaken) return nullptr;
    80001bec:	04050063          	beqz	a0,80001c2c <_ZN15MemoryAllocator10kmem_allocEm+0x90>

    freeBlockNo -= newTaken->noBlocks;
    80001bf0:	00053703          	ld	a4,0(a0)
    80001bf4:	0104b783          	ld	a5,16(s1)
    80001bf8:	40e787b3          	sub	a5,a5,a4
    80001bfc:	00f4b823          	sd	a5,16(s1)
    totalFree -= newTaken->noBlocks * MEM_BLOCK_SIZE;
    80001c00:	00053783          	ld	a5,0(a0)
    80001c04:	00679713          	slli	a4,a5,0x6
    80001c08:	0004b783          	ld	a5,0(s1)
    80001c0c:	40e787b3          	sub	a5,a5,a4
    80001c10:	00f4b023          	sd	a5,0(s1)
    totalTaken += newTaken->noBlocks * MEM_BLOCK_SIZE;
    80001c14:	00053783          	ld	a5,0(a0)
    80001c18:	00679713          	slli	a4,a5,0x6
    80001c1c:	0084b783          	ld	a5,8(s1)
    80001c20:	00e787b3          	add	a5,a5,a4
    80001c24:	00f4b423          	sd	a5,8(s1)

    return (uint8*) newTaken + sizeof(SegmentDescriptor);
    80001c28:	01050513          	addi	a0,a0,16
}
    80001c2c:	01813083          	ld	ra,24(sp)
    80001c30:	01013403          	ld	s0,16(sp)
    80001c34:	00813483          	ld	s1,8(sp)
    80001c38:	00013903          	ld	s2,0(sp)
    80001c3c:	02010113          	addi	sp,sp,32
    80001c40:	00008067          	ret

0000000080001c44 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* newFree) {
    80001c44:	ff010113          	addi	sp,sp,-16
    80001c48:	00813423          	sd	s0,8(sp)
    80001c4c:	01010413          	addi	s0,sp,16
    if (newFree == nullptr) return 0;
    80001c50:	08058863          	beqz	a1,80001ce0 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>
    SegmentDescriptor* newFreeSegment = (SegmentDescriptor*) ((uint8*) newFree - sizeof(SegmentDescriptor));
    80001c54:	ff058693          	addi	a3,a1,-16
    freeBlockNo += newFreeSegment->noBlocks;
    80001c58:	ff05b703          	ld	a4,-16(a1)
    80001c5c:	01053783          	ld	a5,16(a0)
    80001c60:	00e787b3          	add	a5,a5,a4
    80001c64:	00f53823          	sd	a5,16(a0)
    totalFree += newFreeSegment->noBlocks * MEM_BLOCK_SIZE;
    80001c68:	ff05b783          	ld	a5,-16(a1)
    80001c6c:	00679713          	slli	a4,a5,0x6
    80001c70:	00053783          	ld	a5,0(a0)
    80001c74:	00e787b3          	add	a5,a5,a4
    80001c78:	00f53023          	sd	a5,0(a0)
    totalTaken -= newFreeSegment->noBlocks * MEM_BLOCK_SIZE;
    80001c7c:	ff05b783          	ld	a5,-16(a1)
    80001c80:	00679713          	slli	a4,a5,0x6
    80001c84:	00853783          	ld	a5,8(a0)
    80001c88:	40e787b3          	sub	a5,a5,a4
    80001c8c:	00f53423          	sd	a5,8(a0)

    SegmentDescriptor* after = freeMemoryHead, *prev = nullptr;
    80001c90:	01853783          	ld	a5,24(a0)
    80001c94:	00000713          	li	a4,0
    while (after && after < newFreeSegment) {
    80001c98:	00078a63          	beqz	a5,80001cac <_ZN15MemoryAllocator9kmem_freeEPv+0x68>
    80001c9c:	00d7f863          	bgeu	a5,a3,80001cac <_ZN15MemoryAllocator9kmem_freeEPv+0x68>
        prev = after; after = after->next; }
    80001ca0:	00078713          	mv	a4,a5
    80001ca4:	0087b783          	ld	a5,8(a5)
    while (after && after < newFreeSegment) {
    80001ca8:	ff1ff06f          	j	80001c98 <_ZN15MemoryAllocator9kmem_freeEPv+0x54>

    newFreeSegment->next = after;
    80001cac:	fef5bc23          	sd	a5,-8(a1)
    if (prev) prev->next = newFreeSegment;
    80001cb0:	04070063          	beqz	a4,80001cf0 <_ZN15MemoryAllocator9kmem_freeEPv+0xac>
    80001cb4:	00d73423          	sd	a3,8(a4)
    else freeMemoryHead = newFreeSegment;

    if (prev && (uint8*) prev + prev->noBlocks * MEM_BLOCK_SIZE == (uint8*) newFreeSegment) {
    80001cb8:	00070a63          	beqz	a4,80001ccc <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
    80001cbc:	00073503          	ld	a0,0(a4)
    80001cc0:	00651613          	slli	a2,a0,0x6
    80001cc4:	00c70633          	add	a2,a4,a2
    80001cc8:	02d60863          	beq	a2,a3,80001cf8 <_ZN15MemoryAllocator9kmem_freeEPv+0xb4>
        prev->next = newFreeSegment->next;
        prev->noBlocks += newFreeSegment->noBlocks;
        newFreeSegment = prev;
    }

    if (after && (uint8*) newFreeSegment + newFreeSegment->noBlocks * MEM_BLOCK_SIZE == (uint8*) after) {
    80001ccc:	00078a63          	beqz	a5,80001ce0 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>
    80001cd0:	0006b603          	ld	a2,0(a3)
    80001cd4:	00661713          	slli	a4,a2,0x6
    80001cd8:	00e68733          	add	a4,a3,a4
    80001cdc:	02f70c63          	beq	a4,a5,80001d14 <_ZN15MemoryAllocator9kmem_freeEPv+0xd0>
        newFreeSegment->next = after->next; newFreeSegment->noBlocks += after->noBlocks; }

    return 0;
}
    80001ce0:	00000513          	li	a0,0
    80001ce4:	00813403          	ld	s0,8(sp)
    80001ce8:	01010113          	addi	sp,sp,16
    80001cec:	00008067          	ret
    else freeMemoryHead = newFreeSegment;
    80001cf0:	00d53c23          	sd	a3,24(a0)
    80001cf4:	fc5ff06f          	j	80001cb8 <_ZN15MemoryAllocator9kmem_freeEPv+0x74>
        prev->next = newFreeSegment->next;
    80001cf8:	ff85b683          	ld	a3,-8(a1)
    80001cfc:	00d73423          	sd	a3,8(a4)
        prev->noBlocks += newFreeSegment->noBlocks;
    80001d00:	ff05b683          	ld	a3,-16(a1)
    80001d04:	00d50533          	add	a0,a0,a3
    80001d08:	00a73023          	sd	a0,0(a4)
        newFreeSegment = prev;
    80001d0c:	00070693          	mv	a3,a4
    80001d10:	fbdff06f          	j	80001ccc <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
        newFreeSegment->next = after->next; newFreeSegment->noBlocks += after->noBlocks; }
    80001d14:	0087b703          	ld	a4,8(a5)
    80001d18:	00e6b423          	sd	a4,8(a3)
    80001d1c:	0007b783          	ld	a5,0(a5)
    80001d20:	00f60633          	add	a2,a2,a5
    80001d24:	00c6b023          	sd	a2,0(a3)
    80001d28:	fb9ff06f          	j	80001ce0 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>

0000000080001d2c <_ZN15MemoryAllocator30printInstanceMemorySpaceParamsEv>:

void MemoryAllocator::printInstanceMemorySpaceParams() {
    80001d2c:	fe010113          	addi	sp,sp,-32
    80001d30:	00113c23          	sd	ra,24(sp)
    80001d34:	00813823          	sd	s0,16(sp)
    80001d38:	00913423          	sd	s1,8(sp)
    80001d3c:	01213023          	sd	s2,0(sp)
    80001d40:	02010413          	addi	s0,sp,32
    80001d44:	00050493          	mv	s1,a0
    printString("##################################\n\n");
    80001d48:	00004517          	auipc	a0,0x4
    80001d4c:	3c050513          	addi	a0,a0,960 # 80006108 <CONSOLE_STATUS+0xf8>
    80001d50:	00001097          	auipc	ra,0x1
    80001d54:	71c080e7          	jalr	1820(ra) # 8000346c <_Z11printStringPKc>
    printString("MemoryAllocator address: "); printInteger((uint64)this); printString("\n");
    80001d58:	00004517          	auipc	a0,0x4
    80001d5c:	3d850513          	addi	a0,a0,984 # 80006130 <CONSOLE_STATUS+0x120>
    80001d60:	00001097          	auipc	ra,0x1
    80001d64:	70c080e7          	jalr	1804(ra) # 8000346c <_Z11printStringPKc>
    80001d68:	00048513          	mv	a0,s1
    80001d6c:	00001097          	auipc	ra,0x1
    80001d70:	770080e7          	jalr	1904(ra) # 800034dc <_Z12printIntegerm>
    80001d74:	00004517          	auipc	a0,0x4
    80001d78:	31450513          	addi	a0,a0,788 # 80006088 <CONSOLE_STATUS+0x78>
    80001d7c:	00001097          	auipc	ra,0x1
    80001d80:	6f0080e7          	jalr	1776(ra) # 8000346c <_Z11printStringPKc>

    // size_t noBlocksForStoringMemoryAllocator = sizeof(MemoryAllocator) / MEM_BLOCK_SIZE + 1;
    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
    80001d84:	02000513          	li	a0,32
    80001d88:	00000097          	auipc	ra,0x0
    80001d8c:	c38080e7          	jalr	-968(ra) # 800019c0 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001d90:	00050913          	mv	s2,a0
    printString("noBlocksForStoringMemoryAllocator: ");
    80001d94:	00004517          	auipc	a0,0x4
    80001d98:	3bc50513          	addi	a0,a0,956 # 80006150 <CONSOLE_STATUS+0x140>
    80001d9c:	00001097          	auipc	ra,0x1
    80001da0:	6d0080e7          	jalr	1744(ra) # 8000346c <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator); printString("\n");
    80001da4:	00090513          	mv	a0,s2
    80001da8:	00001097          	auipc	ra,0x1
    80001dac:	734080e7          	jalr	1844(ra) # 800034dc <_Z12printIntegerm>
    80001db0:	00004517          	auipc	a0,0x4
    80001db4:	2d850513          	addi	a0,a0,728 # 80006088 <CONSOLE_STATUS+0x78>
    80001db8:	00001097          	auipc	ra,0x1
    80001dbc:	6b4080e7          	jalr	1716(ra) # 8000346c <_Z11printStringPKc>
    printString("noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE: ");
    80001dc0:	00004517          	auipc	a0,0x4
    80001dc4:	3b850513          	addi	a0,a0,952 # 80006178 <CONSOLE_STATUS+0x168>
    80001dc8:	00001097          	auipc	ra,0x1
    80001dcc:	6a4080e7          	jalr	1700(ra) # 8000346c <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE); printString("\n\n");
    80001dd0:	00691513          	slli	a0,s2,0x6
    80001dd4:	00001097          	auipc	ra,0x1
    80001dd8:	708080e7          	jalr	1800(ra) # 800034dc <_Z12printIntegerm>
    80001ddc:	00004517          	auipc	a0,0x4
    80001de0:	3d450513          	addi	a0,a0,980 # 800061b0 <CONSOLE_STATUS+0x1a0>
    80001de4:	00001097          	auipc	ra,0x1
    80001de8:	688080e7          	jalr	1672(ra) # 8000346c <_Z11printStringPKc>

    printString("Managed memory space start: ");
    80001dec:	00004517          	auipc	a0,0x4
    80001df0:	3cc50513          	addi	a0,a0,972 # 800061b8 <CONSOLE_STATUS+0x1a8>
    80001df4:	00001097          	auipc	ra,0x1
    80001df8:	678080e7          	jalr	1656(ra) # 8000346c <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceStart); printString("\n");
    80001dfc:	00005917          	auipc	s2,0x5
    80001e00:	2f490913          	addi	s2,s2,756 # 800070f0 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    80001e04:	01093503          	ld	a0,16(s2)
    80001e08:	00001097          	auipc	ra,0x1
    80001e0c:	6d4080e7          	jalr	1748(ra) # 800034dc <_Z12printIntegerm>
    80001e10:	00004517          	auipc	a0,0x4
    80001e14:	27850513          	addi	a0,a0,632 # 80006088 <CONSOLE_STATUS+0x78>
    80001e18:	00001097          	auipc	ra,0x1
    80001e1c:	654080e7          	jalr	1620(ra) # 8000346c <_Z11printStringPKc>
    printString("Managed memory space end: ");
    80001e20:	00004517          	auipc	a0,0x4
    80001e24:	3b850513          	addi	a0,a0,952 # 800061d8 <CONSOLE_STATUS+0x1c8>
    80001e28:	00001097          	auipc	ra,0x1
    80001e2c:	644080e7          	jalr	1604(ra) # 8000346c <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceEnd); printString("\n\n");
    80001e30:	00093503          	ld	a0,0(s2)
    80001e34:	00001097          	auipc	ra,0x1
    80001e38:	6a8080e7          	jalr	1704(ra) # 800034dc <_Z12printIntegerm>
    80001e3c:	00004517          	auipc	a0,0x4
    80001e40:	37450513          	addi	a0,a0,884 # 800061b0 <CONSOLE_STATUS+0x1a0>
    80001e44:	00001097          	auipc	ra,0x1
    80001e48:	628080e7          	jalr	1576(ra) # 8000346c <_Z11printStringPKc>

    printString("Total Free: "); printInteger(getTotalFree()); printString("\n");
    80001e4c:	00004517          	auipc	a0,0x4
    80001e50:	3ac50513          	addi	a0,a0,940 # 800061f8 <CONSOLE_STATUS+0x1e8>
    80001e54:	00001097          	auipc	ra,0x1
    80001e58:	618080e7          	jalr	1560(ra) # 8000346c <_Z11printStringPKc>
    80001e5c:	0004b503          	ld	a0,0(s1)
    80001e60:	00001097          	auipc	ra,0x1
    80001e64:	67c080e7          	jalr	1660(ra) # 800034dc <_Z12printIntegerm>
    80001e68:	00004517          	auipc	a0,0x4
    80001e6c:	22050513          	addi	a0,a0,544 # 80006088 <CONSOLE_STATUS+0x78>
    80001e70:	00001097          	auipc	ra,0x1
    80001e74:	5fc080e7          	jalr	1532(ra) # 8000346c <_Z11printStringPKc>
    printString("Total Taken: "); printInteger(getTotalTaken()); printString("\n");
    80001e78:	00004517          	auipc	a0,0x4
    80001e7c:	39050513          	addi	a0,a0,912 # 80006208 <CONSOLE_STATUS+0x1f8>
    80001e80:	00001097          	auipc	ra,0x1
    80001e84:	5ec080e7          	jalr	1516(ra) # 8000346c <_Z11printStringPKc>
    80001e88:	0084b503          	ld	a0,8(s1)
    80001e8c:	00001097          	auipc	ra,0x1
    80001e90:	650080e7          	jalr	1616(ra) # 800034dc <_Z12printIntegerm>
    80001e94:	00004517          	auipc	a0,0x4
    80001e98:	1f450513          	addi	a0,a0,500 # 80006088 <CONSOLE_STATUS+0x78>
    80001e9c:	00001097          	auipc	ra,0x1
    80001ea0:	5d0080e7          	jalr	1488(ra) # 8000346c <_Z11printStringPKc>
    printString("Free Block No: "); printInteger(getFreeBlockNo()); printString("\n");
    80001ea4:	00004517          	auipc	a0,0x4
    80001ea8:	37450513          	addi	a0,a0,884 # 80006218 <CONSOLE_STATUS+0x208>
    80001eac:	00001097          	auipc	ra,0x1
    80001eb0:	5c0080e7          	jalr	1472(ra) # 8000346c <_Z11printStringPKc>
    80001eb4:	0104b503          	ld	a0,16(s1)
    80001eb8:	00001097          	auipc	ra,0x1
    80001ebc:	624080e7          	jalr	1572(ra) # 800034dc <_Z12printIntegerm>
    80001ec0:	00004517          	auipc	a0,0x4
    80001ec4:	1c850513          	addi	a0,a0,456 # 80006088 <CONSOLE_STATUS+0x78>
    80001ec8:	00001097          	auipc	ra,0x1
    80001ecc:	5a4080e7          	jalr	1444(ra) # 8000346c <_Z11printStringPKc>
    printString("\n##################################\n");
    80001ed0:	00004517          	auipc	a0,0x4
    80001ed4:	35850513          	addi	a0,a0,856 # 80006228 <CONSOLE_STATUS+0x218>
    80001ed8:	00001097          	auipc	ra,0x1
    80001edc:	594080e7          	jalr	1428(ra) # 8000346c <_Z11printStringPKc>
}
    80001ee0:	01813083          	ld	ra,24(sp)
    80001ee4:	01013403          	ld	s0,16(sp)
    80001ee8:	00813483          	ld	s1,8(sp)
    80001eec:	00013903          	ld	s2,0(sp)
    80001ef0:	02010113          	addi	sp,sp,32
    80001ef4:	00008067          	ret

0000000080001ef8 <_ZN15MemoryAllocator22printMemorySpaceParamsEv>:

void MemoryAllocator::printMemorySpaceParams() {
    80001ef8:	fe010113          	addi	sp,sp,-32
    80001efc:	00113c23          	sd	ra,24(sp)
    80001f00:	00813823          	sd	s0,16(sp)
    80001f04:	00913423          	sd	s1,8(sp)
    80001f08:	01213023          	sd	s2,0(sp)
    80001f0c:	02010413          	addi	s0,sp,32
    printString("----------------------------------\n\n");
    80001f10:	00004517          	auipc	a0,0x4
    80001f14:	34050513          	addi	a0,a0,832 # 80006250 <CONSOLE_STATUS+0x240>
    80001f18:	00001097          	auipc	ra,0x1
    80001f1c:	554080e7          	jalr	1364(ra) # 8000346c <_Z11printStringPKc>
    printString("Size of MemoryAllocator class: ");
    80001f20:	00004517          	auipc	a0,0x4
    80001f24:	35850513          	addi	a0,a0,856 # 80006278 <CONSOLE_STATUS+0x268>
    80001f28:	00001097          	auipc	ra,0x1
    80001f2c:	544080e7          	jalr	1348(ra) # 8000346c <_Z11printStringPKc>
    printInteger(sizeof(MemoryAllocator)); printString("\n");
    80001f30:	02000513          	li	a0,32
    80001f34:	00001097          	auipc	ra,0x1
    80001f38:	5a8080e7          	jalr	1448(ra) # 800034dc <_Z12printIntegerm>
    80001f3c:	00004517          	auipc	a0,0x4
    80001f40:	14c50513          	addi	a0,a0,332 # 80006088 <CONSOLE_STATUS+0x78>
    80001f44:	00001097          	auipc	ra,0x1
    80001f48:	528080e7          	jalr	1320(ra) # 8000346c <_Z11printStringPKc>

    printString("HEAP_START_ADDR: "); printInteger((uint64)HEAP_START_ADDR); printString("\n");
    80001f4c:	00004517          	auipc	a0,0x4
    80001f50:	36c50513          	addi	a0,a0,876 # 800062b8 <CONSOLE_STATUS+0x2a8>
    80001f54:	00001097          	auipc	ra,0x1
    80001f58:	518080e7          	jalr	1304(ra) # 8000346c <_Z11printStringPKc>
    80001f5c:	00005497          	auipc	s1,0x5
    80001f60:	0d44b483          	ld	s1,212(s1) # 80007030 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001f64:	0004b503          	ld	a0,0(s1)
    80001f68:	00001097          	auipc	ra,0x1
    80001f6c:	574080e7          	jalr	1396(ra) # 800034dc <_Z12printIntegerm>
    80001f70:	00004517          	auipc	a0,0x4
    80001f74:	11850513          	addi	a0,a0,280 # 80006088 <CONSOLE_STATUS+0x78>
    80001f78:	00001097          	auipc	ra,0x1
    80001f7c:	4f4080e7          	jalr	1268(ra) # 8000346c <_Z11printStringPKc>
    printString("HEAP_END_ADDR: "); printInteger((uint64)HEAP_END_ADDR); printString("\n");
    80001f80:	00004517          	auipc	a0,0x4
    80001f84:	31850513          	addi	a0,a0,792 # 80006298 <CONSOLE_STATUS+0x288>
    80001f88:	00001097          	auipc	ra,0x1
    80001f8c:	4e4080e7          	jalr	1252(ra) # 8000346c <_Z11printStringPKc>
    80001f90:	00005917          	auipc	s2,0x5
    80001f94:	0e893903          	ld	s2,232(s2) # 80007078 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001f98:	00093503          	ld	a0,0(s2)
    80001f9c:	00001097          	auipc	ra,0x1
    80001fa0:	540080e7          	jalr	1344(ra) # 800034dc <_Z12printIntegerm>
    80001fa4:	00004517          	auipc	a0,0x4
    80001fa8:	0e450513          	addi	a0,a0,228 # 80006088 <CONSOLE_STATUS+0x78>
    80001fac:	00001097          	auipc	ra,0x1
    80001fb0:	4c0080e7          	jalr	1216(ra) # 8000346c <_Z11printStringPKc>

    printString("HEAP_END_ADDR - HEAP_START_ADDR: ");
    80001fb4:	00004517          	auipc	a0,0x4
    80001fb8:	2f450513          	addi	a0,a0,756 # 800062a8 <CONSOLE_STATUS+0x298>
    80001fbc:	00001097          	auipc	ra,0x1
    80001fc0:	4b0080e7          	jalr	1200(ra) # 8000346c <_Z11printStringPKc>
    printInteger((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)); printString("\n");
    80001fc4:	00093503          	ld	a0,0(s2)
    80001fc8:	0004b783          	ld	a5,0(s1)
    80001fcc:	40f50533          	sub	a0,a0,a5
    80001fd0:	00001097          	auipc	ra,0x1
    80001fd4:	50c080e7          	jalr	1292(ra) # 800034dc <_Z12printIntegerm>
    80001fd8:	00004517          	auipc	a0,0x4
    80001fdc:	0b050513          	addi	a0,a0,176 # 80006088 <CONSOLE_STATUS+0x78>
    80001fe0:	00001097          	auipc	ra,0x1
    80001fe4:	48c080e7          	jalr	1164(ra) # 8000346c <_Z11printStringPKc>

    printString("MEM_BLOCK_SIZE: "); printInteger(MEM_BLOCK_SIZE); printString("\n");
    80001fe8:	00004517          	auipc	a0,0x4
    80001fec:	2e850513          	addi	a0,a0,744 # 800062d0 <CONSOLE_STATUS+0x2c0>
    80001ff0:	00001097          	auipc	ra,0x1
    80001ff4:	47c080e7          	jalr	1148(ra) # 8000346c <_Z11printStringPKc>
    80001ff8:	04000513          	li	a0,64
    80001ffc:	00001097          	auipc	ra,0x1
    80002000:	4e0080e7          	jalr	1248(ra) # 800034dc <_Z12printIntegerm>
    80002004:	00004517          	auipc	a0,0x4
    80002008:	08450513          	addi	a0,a0,132 # 80006088 <CONSOLE_STATUS+0x78>
    8000200c:	00001097          	auipc	ra,0x1
    80002010:	460080e7          	jalr	1120(ra) # 8000346c <_Z11printStringPKc>

    printString("Number of blocks in (HEAP_END_ADDR - HEAP_START_ADDR): ");
    80002014:	00004517          	auipc	a0,0x4
    80002018:	2d450513          	addi	a0,a0,724 # 800062e8 <CONSOLE_STATUS+0x2d8>
    8000201c:	00001097          	auipc	ra,0x1
    80002020:	450080e7          	jalr	1104(ra) # 8000346c <_Z11printStringPKc>
    printInteger(((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)) / MEM_BLOCK_SIZE);
    80002024:	00093503          	ld	a0,0(s2)
    80002028:	0004b783          	ld	a5,0(s1)
    8000202c:	40f50533          	sub	a0,a0,a5
    80002030:	00655513          	srli	a0,a0,0x6
    80002034:	00001097          	auipc	ra,0x1
    80002038:	4a8080e7          	jalr	1192(ra) # 800034dc <_Z12printIntegerm>
    printString("\n");
    8000203c:	00004517          	auipc	a0,0x4
    80002040:	04c50513          	addi	a0,a0,76 # 80006088 <CONSOLE_STATUS+0x78>
    80002044:	00001097          	auipc	ra,0x1
    80002048:	428080e7          	jalr	1064(ra) # 8000346c <_Z11printStringPKc>
    printString("\n----------------------------------\n");
    8000204c:	00004517          	auipc	a0,0x4
    80002050:	2d450513          	addi	a0,a0,724 # 80006320 <CONSOLE_STATUS+0x310>
    80002054:	00001097          	auipc	ra,0x1
    80002058:	418080e7          	jalr	1048(ra) # 8000346c <_Z11printStringPKc>
}
    8000205c:	01813083          	ld	ra,24(sp)
    80002060:	01013403          	ld	s0,16(sp)
    80002064:	00813483          	ld	s1,8(sp)
    80002068:	00013903          	ld	s2,0(sp)
    8000206c:	02010113          	addi	sp,sp,32
    80002070:	00008067          	ret

0000000080002074 <_ZN15MemoryAllocator23printFreeMemoryHeadDataEv>:

void MemoryAllocator::printFreeMemoryHeadData() {
    80002074:	fe010113          	addi	sp,sp,-32
    80002078:	00113c23          	sd	ra,24(sp)
    8000207c:	00813823          	sd	s0,16(sp)
    80002080:	00913423          	sd	s1,8(sp)
    80002084:	02010413          	addi	s0,sp,32
    80002088:	00050493          	mv	s1,a0
    printString("##################################\n\n");
    8000208c:	00004517          	auipc	a0,0x4
    80002090:	07c50513          	addi	a0,a0,124 # 80006108 <CONSOLE_STATUS+0xf8>
    80002094:	00001097          	auipc	ra,0x1
    80002098:	3d8080e7          	jalr	984(ra) # 8000346c <_Z11printStringPKc>
    printString("freeMemoryHead: ");
    8000209c:	00004517          	auipc	a0,0x4
    800020a0:	2ac50513          	addi	a0,a0,684 # 80006348 <CONSOLE_STATUS+0x338>
    800020a4:	00001097          	auipc	ra,0x1
    800020a8:	3c8080e7          	jalr	968(ra) # 8000346c <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead); printString("\n");
    800020ac:	0184b503          	ld	a0,24(s1)
    800020b0:	00001097          	auipc	ra,0x1
    800020b4:	42c080e7          	jalr	1068(ra) # 800034dc <_Z12printIntegerm>
    800020b8:	00004517          	auipc	a0,0x4
    800020bc:	fd050513          	addi	a0,a0,-48 # 80006088 <CONSOLE_STATUS+0x78>
    800020c0:	00001097          	auipc	ra,0x1
    800020c4:	3ac080e7          	jalr	940(ra) # 8000346c <_Z11printStringPKc>
    printString("freeMemoryHead->noBlocks: ");
    800020c8:	00004517          	auipc	a0,0x4
    800020cc:	29850513          	addi	a0,a0,664 # 80006360 <CONSOLE_STATUS+0x350>
    800020d0:	00001097          	auipc	ra,0x1
    800020d4:	39c080e7          	jalr	924(ra) # 8000346c <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead->noBlocks); printString("\n");
    800020d8:	0184b783          	ld	a5,24(s1)
    800020dc:	0007b503          	ld	a0,0(a5)
    800020e0:	00001097          	auipc	ra,0x1
    800020e4:	3fc080e7          	jalr	1020(ra) # 800034dc <_Z12printIntegerm>
    800020e8:	00004517          	auipc	a0,0x4
    800020ec:	fa050513          	addi	a0,a0,-96 # 80006088 <CONSOLE_STATUS+0x78>
    800020f0:	00001097          	auipc	ra,0x1
    800020f4:	37c080e7          	jalr	892(ra) # 8000346c <_Z11printStringPKc>
    printString("freeMemoryHead->next: ");
    800020f8:	00004517          	auipc	a0,0x4
    800020fc:	28850513          	addi	a0,a0,648 # 80006380 <CONSOLE_STATUS+0x370>
    80002100:	00001097          	auipc	ra,0x1
    80002104:	36c080e7          	jalr	876(ra) # 8000346c <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead->next); printString("\n");
    80002108:	0184b783          	ld	a5,24(s1)
    8000210c:	0087b503          	ld	a0,8(a5)
    80002110:	00001097          	auipc	ra,0x1
    80002114:	3cc080e7          	jalr	972(ra) # 800034dc <_Z12printIntegerm>
    80002118:	00004517          	auipc	a0,0x4
    8000211c:	f7050513          	addi	a0,a0,-144 # 80006088 <CONSOLE_STATUS+0x78>
    80002120:	00001097          	auipc	ra,0x1
    80002124:	34c080e7          	jalr	844(ra) # 8000346c <_Z11printStringPKc>
    printString("Segment Descriptor size: ");
    80002128:	00004517          	auipc	a0,0x4
    8000212c:	27050513          	addi	a0,a0,624 # 80006398 <CONSOLE_STATUS+0x388>
    80002130:	00001097          	auipc	ra,0x1
    80002134:	33c080e7          	jalr	828(ra) # 8000346c <_Z11printStringPKc>
    printInteger(sizeof(*freeMemoryHead)); printString("\n");
    80002138:	01000513          	li	a0,16
    8000213c:	00001097          	auipc	ra,0x1
    80002140:	3a0080e7          	jalr	928(ra) # 800034dc <_Z12printIntegerm>
    80002144:	00004517          	auipc	a0,0x4
    80002148:	f4450513          	addi	a0,a0,-188 # 80006088 <CONSOLE_STATUS+0x78>
    8000214c:	00001097          	auipc	ra,0x1
    80002150:	320080e7          	jalr	800(ra) # 8000346c <_Z11printStringPKc>
    printString("\n##################################\n");
    80002154:	00004517          	auipc	a0,0x4
    80002158:	0d450513          	addi	a0,a0,212 # 80006228 <CONSOLE_STATUS+0x218>
    8000215c:	00001097          	auipc	ra,0x1
    80002160:	310080e7          	jalr	784(ra) # 8000346c <_Z11printStringPKc>
}
    80002164:	01813083          	ld	ra,24(sp)
    80002168:	01013403          	ld	s0,16(sp)
    8000216c:	00813483          	ld	s1,8(sp)
    80002170:	02010113          	addi	sp,sp,32
    80002174:	00008067          	ret

0000000080002178 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv>:
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    return beforeTestFreeBlockNo == afterTestFreeBlockNo - minNoBlocksForSize - addendForSegDesc;

}

size_t MemoryAllocatorTest::getFreeBlocksCnt() {
    80002178:	ff010113          	addi	sp,sp,-16
    8000217c:	00113423          	sd	ra,8(sp)
    80002180:	00813023          	sd	s0,0(sp)
    80002184:	01010413          	addi	s0,sp,16
    MemoryAllocator::SegmentDescriptor* freeMemHead = MemoryAllocator::instance()->freeMemoryHead;
    80002188:	00000097          	auipc	ra,0x0
    8000218c:	930080e7          	jalr	-1744(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002190:	01853783          	ld	a5,24(a0)
    size_t blockCnt = 0;
    80002194:	00000513          	li	a0,0
    while (freeMemHead) {
    80002198:	00078a63          	beqz	a5,800021ac <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv+0x34>
        blockCnt += freeMemHead->noBlocks;
    8000219c:	0007b703          	ld	a4,0(a5)
    800021a0:	00e50533          	add	a0,a0,a4
        freeMemHead = freeMemHead->next;
    800021a4:	0087b783          	ld	a5,8(a5)
    while (freeMemHead) {
    800021a8:	ff1ff06f          	j	80002198 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv+0x20>
    }
    return blockCnt;
}
    800021ac:	00813083          	ld	ra,8(sp)
    800021b0:	00013403          	ld	s0,0(sp)
    800021b4:	01010113          	addi	sp,sp,16
    800021b8:	00008067          	ret

00000000800021bc <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>:

bool MemoryAllocatorTest::testMemoryMetadataValidity() {
    800021bc:	fd010113          	addi	sp,sp,-48
    800021c0:	02113423          	sd	ra,40(sp)
    800021c4:	02813023          	sd	s0,32(sp)
    800021c8:	00913c23          	sd	s1,24(sp)
    800021cc:	01213823          	sd	s2,16(sp)
    800021d0:	01313423          	sd	s3,8(sp)
    800021d4:	01413023          	sd	s4,0(sp)
    800021d8:	03010413          	addi	s0,sp,48
    800021dc:	00050913          	mv	s2,a0
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    800021e0:	00000097          	auipc	ra,0x0
    800021e4:	8d8080e7          	jalr	-1832(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>

    void* kmem_alloc(size_t size);
    int kmem_free(void* newFree);
    void printInstanceMemorySpaceParams();
    void printFreeMemoryHeadData();
    size_t getTotalFree() { return totalFree; }
    800021e8:	00053483          	ld	s1,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    800021ec:	00000097          	auipc	ra,0x0
    800021f0:	8cc080e7          	jalr	-1844(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800021f4:	00853a03          	ld	s4,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    800021f8:	00000097          	auipc	ra,0x0
    800021fc:	8c0080e7          	jalr	-1856(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002200:	01053983          	ld	s3,16(a0)
    size_t freeBlocksCnt = getFreeBlocksCnt();
    80002204:	00090513          	mv	a0,s2
    80002208:	00000097          	auipc	ra,0x0
    8000220c:	f70080e7          	jalr	-144(ra) # 80002178 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv>

    if (freeBlocksCnt != beforeTestFreeBlockNo) return false;
    80002210:	02a99c63          	bne	s3,a0,80002248 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x8c>
    if (freeBlocksCnt != beforeTestTotalFree / MEM_BLOCK_SIZE) return false;
    80002214:	0064d793          	srli	a5,s1,0x6
    80002218:	04a79a63          	bne	a5,a0,8000226c <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0xb0>

    size_t totalMemory = (size_t) (MemoryAllocator::managedMemorySpaceEnd - MemoryAllocator::managedMemorySpaceStart);
    8000221c:	00005797          	auipc	a5,0x5
    80002220:	e1c7b783          	ld	a5,-484(a5) # 80007038 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002224:	0007b503          	ld	a0,0(a5)
    80002228:	00005797          	auipc	a5,0x5
    8000222c:	e687b783          	ld	a5,-408(a5) # 80007090 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002230:	0007b783          	ld	a5,0(a5)
    80002234:	40f507b3          	sub	a5,a0,a5
    return totalMemory == beforeTestTotalFree + beforeTestTotalTaken;
    80002238:	01448533          	add	a0,s1,s4
    8000223c:	40f50533          	sub	a0,a0,a5
    80002240:	00153513          	seqz	a0,a0
    80002244:	0080006f          	j	8000224c <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x90>
    if (freeBlocksCnt != beforeTestFreeBlockNo) return false;
    80002248:	00000513          	li	a0,0
}
    8000224c:	02813083          	ld	ra,40(sp)
    80002250:	02013403          	ld	s0,32(sp)
    80002254:	01813483          	ld	s1,24(sp)
    80002258:	01013903          	ld	s2,16(sp)
    8000225c:	00813983          	ld	s3,8(sp)
    80002260:	00013a03          	ld	s4,0(sp)
    80002264:	03010113          	addi	sp,sp,48
    80002268:	00008067          	ret
    if (freeBlocksCnt != beforeTestTotalFree / MEM_BLOCK_SIZE) return false;
    8000226c:	00000513          	li	a0,0
    80002270:	fddff06f          	j	8000224c <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x90>

0000000080002274 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>:
bool MemoryAllocatorTest::testMemoryAllocate(uint64 size, void** allocatedMemoryPointer) {
    80002274:	fa010113          	addi	sp,sp,-96
    80002278:	04113c23          	sd	ra,88(sp)
    8000227c:	04813823          	sd	s0,80(sp)
    80002280:	04913423          	sd	s1,72(sp)
    80002284:	05213023          	sd	s2,64(sp)
    80002288:	03313c23          	sd	s3,56(sp)
    8000228c:	03413823          	sd	s4,48(sp)
    80002290:	03513423          	sd	s5,40(sp)
    80002294:	03613023          	sd	s6,32(sp)
    80002298:	01713c23          	sd	s7,24(sp)
    8000229c:	01813823          	sd	s8,16(sp)
    800022a0:	01913423          	sd	s9,8(sp)
    800022a4:	01a13023          	sd	s10,0(sp)
    800022a8:	06010413          	addi	s0,sp,96
    800022ac:	00050a13          	mv	s4,a0
    800022b0:	00058913          	mv	s2,a1
    800022b4:	00060993          	mv	s3,a2
    if (!testMemoryMetadataValidity()) return false;
    800022b8:	00000097          	auipc	ra,0x0
    800022bc:	f04080e7          	jalr	-252(ra) # 800021bc <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800022c0:	00050493          	mv	s1,a0
    800022c4:	04051063          	bnez	a0,80002304 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x90>
}
    800022c8:	00048513          	mv	a0,s1
    800022cc:	05813083          	ld	ra,88(sp)
    800022d0:	05013403          	ld	s0,80(sp)
    800022d4:	04813483          	ld	s1,72(sp)
    800022d8:	04013903          	ld	s2,64(sp)
    800022dc:	03813983          	ld	s3,56(sp)
    800022e0:	03013a03          	ld	s4,48(sp)
    800022e4:	02813a83          	ld	s5,40(sp)
    800022e8:	02013b03          	ld	s6,32(sp)
    800022ec:	01813b83          	ld	s7,24(sp)
    800022f0:	01013c03          	ld	s8,16(sp)
    800022f4:	00813c83          	ld	s9,8(sp)
    800022f8:	00013d03          	ld	s10,0(sp)
    800022fc:	06010113          	addi	sp,sp,96
    80002300:	00008067          	ret
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002304:	fffff097          	auipc	ra,0xfffff
    80002308:	7b4080e7          	jalr	1972(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    8000230c:	00053b03          	ld	s6,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002310:	fffff097          	auipc	ra,0xfffff
    80002314:	7a8080e7          	jalr	1960(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    80002318:	00853b83          	ld	s7,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    8000231c:	fffff097          	auipc	ra,0xfffff
    80002320:	79c080e7          	jalr	1948(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002324:	01053c03          	ld	s8,16(a0)
    *allocatedMemoryPointer = MemoryAllocator::instance()->kmem_alloc(size);
    80002328:	fffff097          	auipc	ra,0xfffff
    8000232c:	790080e7          	jalr	1936(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002330:	00090593          	mv	a1,s2
    80002334:	00000097          	auipc	ra,0x0
    80002338:	868080e7          	jalr	-1944(ra) # 80001b9c <_ZN15MemoryAllocator10kmem_allocEm>
    8000233c:	00050a93          	mv	s5,a0
    80002340:	00a9b023          	sd	a0,0(s3)
    if (*allocatedMemoryPointer == nullptr && size == (uint64) -37) return true;
    80002344:	08050663          	beqz	a0,800023d0 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x15c>
    size_t minNoBlocksForSize = MemoryAllocator::getMinBlockNumber(size);
    80002348:	00090513          	mv	a0,s2
    8000234c:	fffff097          	auipc	ra,0xfffff
    80002350:	674080e7          	jalr	1652(ra) # 800019c0 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80002354:	00050993          	mv	s3,a0
    size_t addendForSegDesc = minNoBlocksForSize * MEM_BLOCK_SIZE - size < sizeof(MemoryAllocator::SegmentDescriptor);
    80002358:	00651593          	slli	a1,a0,0x6
    8000235c:	41258933          	sub	s2,a1,s2
    80002360:	01093913          	sltiu	s2,s2,16
    size_t allocatedMemory = (minNoBlocksForSize + addendForSegDesc) * MEM_BLOCK_SIZE;
    80002364:	01250cb3          	add	s9,a0,s2
    80002368:	006c9d13          	slli	s10,s9,0x6
    if (!testMemoryMetadataValidity()) return false;
    8000236c:	000a0513          	mv	a0,s4
    80002370:	00000097          	auipc	ra,0x0
    80002374:	e4c080e7          	jalr	-436(ra) # 800021bc <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002378:	00050493          	mv	s1,a0
    8000237c:	f40506e3          	beqz	a0,800022c8 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    size_t afterTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002380:	fffff097          	auipc	ra,0xfffff
    80002384:	738080e7          	jalr	1848(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    80002388:	00053483          	ld	s1,0(a0)
    size_t afterTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    8000238c:	fffff097          	auipc	ra,0xfffff
    80002390:	72c080e7          	jalr	1836(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    80002394:	00853a03          	ld	s4,8(a0)
    size_t afterTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    80002398:	fffff097          	auipc	ra,0xfffff
    8000239c:	720080e7          	jalr	1824(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    800023a0:	01053783          	ld	a5,16(a0)
    if (beforeTestTotalFree != afterTestTotalFree + allocatedMemory) return false;
    800023a4:	01a484b3          	add	s1,s1,s10
    800023a8:	03649a63          	bne	s1,s6,800023dc <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x168>
    if (beforeTestTotalTaken != afterTestTotalTaken - allocatedMemory) return false;
    800023ac:	41aa0d33          	sub	s10,s4,s10
    800023b0:	037d1a63          	bne	s10,s7,800023e4 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x170>
    if (beforeTestFreeBlockNo != afterTestFreeBlockNo + minNoBlocksForSize + addendForSegDesc) return false;
    800023b4:	013789b3          	add	s3,a5,s3
    800023b8:	01298933          	add	s2,s3,s2
    800023bc:	03891863          	bne	s2,s8,800023ec <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x178>
    return segDesc->noBlocks == minNoBlocksForSize + addendForSegDesc;
    800023c0:	ff0ab483          	ld	s1,-16(s5)
    800023c4:	409c84b3          	sub	s1,s9,s1
    800023c8:	0014b493          	seqz	s1,s1
    800023cc:	efdff06f          	j	800022c8 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (*allocatedMemoryPointer == nullptr && size == (uint64) -37) return true;
    800023d0:	fdb00793          	li	a5,-37
    800023d4:	f6f91ae3          	bne	s2,a5,80002348 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0xd4>
    800023d8:	ef1ff06f          	j	800022c8 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestTotalFree != afterTestTotalFree + allocatedMemory) return false;
    800023dc:	00000493          	li	s1,0
    800023e0:	ee9ff06f          	j	800022c8 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestTotalTaken != afterTestTotalTaken - allocatedMemory) return false;
    800023e4:	00000493          	li	s1,0
    800023e8:	ee1ff06f          	j	800022c8 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestFreeBlockNo != afterTestFreeBlockNo + minNoBlocksForSize + addendForSegDesc) return false;
    800023ec:	00000493          	li	s1,0
    800023f0:	ed9ff06f          	j	800022c8 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>

00000000800023f4 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>:
bool MemoryAllocatorTest::testMemoryFree(uint64 size, void* allocatedMemoryPointer) {
    800023f4:	fb010113          	addi	sp,sp,-80
    800023f8:	04113423          	sd	ra,72(sp)
    800023fc:	04813023          	sd	s0,64(sp)
    80002400:	02913c23          	sd	s1,56(sp)
    80002404:	03213823          	sd	s2,48(sp)
    80002408:	03313423          	sd	s3,40(sp)
    8000240c:	03413023          	sd	s4,32(sp)
    80002410:	01513c23          	sd	s5,24(sp)
    80002414:	01613823          	sd	s6,16(sp)
    80002418:	01713423          	sd	s7,8(sp)
    8000241c:	01813023          	sd	s8,0(sp)
    80002420:	05010413          	addi	s0,sp,80
    80002424:	00050a13          	mv	s4,a0
    80002428:	00058913          	mv	s2,a1
    8000242c:	00060493          	mv	s1,a2
    if (!testMemoryMetadataValidity()) return false;
    80002430:	00000097          	auipc	ra,0x0
    80002434:	d8c080e7          	jalr	-628(ra) # 800021bc <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002438:	02051a63          	bnez	a0,8000246c <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x78>
}
    8000243c:	04813083          	ld	ra,72(sp)
    80002440:	04013403          	ld	s0,64(sp)
    80002444:	03813483          	ld	s1,56(sp)
    80002448:	03013903          	ld	s2,48(sp)
    8000244c:	02813983          	ld	s3,40(sp)
    80002450:	02013a03          	ld	s4,32(sp)
    80002454:	01813a83          	ld	s5,24(sp)
    80002458:	01013b03          	ld	s6,16(sp)
    8000245c:	00813b83          	ld	s7,8(sp)
    80002460:	00013c03          	ld	s8,0(sp)
    80002464:	05010113          	addi	sp,sp,80
    80002468:	00008067          	ret
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    8000246c:	fffff097          	auipc	ra,0xfffff
    80002470:	64c080e7          	jalr	1612(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    80002474:	00053b03          	ld	s6,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002478:	fffff097          	auipc	ra,0xfffff
    8000247c:	640080e7          	jalr	1600(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    80002480:	00853b83          	ld	s7,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    80002484:	fffff097          	auipc	ra,0xfffff
    80002488:	634080e7          	jalr	1588(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    8000248c:	01053a83          	ld	s5,16(a0)
    size_t minNoBlocksForSize = MemoryAllocator::getMinBlockNumber(size);
    80002490:	00090513          	mv	a0,s2
    80002494:	fffff097          	auipc	ra,0xfffff
    80002498:	52c080e7          	jalr	1324(ra) # 800019c0 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    8000249c:	00050993          	mv	s3,a0
    size_t addendForSegDesc = minNoBlocksForSize * MEM_BLOCK_SIZE - size < sizeof(MemoryAllocator::SegmentDescriptor);
    800024a0:	00651593          	slli	a1,a0,0x6
    800024a4:	41258933          	sub	s2,a1,s2
    800024a8:	01093913          	sltiu	s2,s2,16
    size_t allocatedMemory = (minNoBlocksForSize + addendForSegDesc) * MEM_BLOCK_SIZE;
    800024ac:	01250733          	add	a4,a0,s2
    800024b0:	00671c13          	slli	s8,a4,0x6
    if (!allocatedMemoryPointer) {
    800024b4:	08048463          	beqz	s1,8000253c <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x148>
    if (allocatedMemoryPointer) segDesc = (MemoryAllocator::SegmentDescriptor*)
    800024b8:	08048a63          	beqz	s1,8000254c <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x158>
    800024bc:	ff048793          	addi	a5,s1,-16
    if (allocatedMemoryPointer)
    800024c0:	00048863          	beqz	s1,800024d0 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xdc>
    if (segDesc->noBlocks != minNoBlocksForSize + addendForSegDesc) return false;
    800024c4:	0007b703          	ld	a4,0(a5)
    800024c8:	012987b3          	add	a5,s3,s2
    800024cc:	08f71463          	bne	a4,a5,80002554 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x160>
    MemoryAllocator::instance()->kmem_free(allocatedMemoryPointer);
    800024d0:	fffff097          	auipc	ra,0xfffff
    800024d4:	5e8080e7          	jalr	1512(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    800024d8:	00048593          	mv	a1,s1
    800024dc:	fffff097          	auipc	ra,0xfffff
    800024e0:	768080e7          	jalr	1896(ra) # 80001c44 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    800024e4:	000a0513          	mv	a0,s4
    800024e8:	00000097          	auipc	ra,0x0
    800024ec:	cd4080e7          	jalr	-812(ra) # 800021bc <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800024f0:	f40506e3          	beqz	a0,8000243c <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    size_t afterTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    800024f4:	fffff097          	auipc	ra,0xfffff
    800024f8:	5c4080e7          	jalr	1476(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    800024fc:	00053483          	ld	s1,0(a0)
    size_t afterTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002500:	fffff097          	auipc	ra,0xfffff
    80002504:	5b8080e7          	jalr	1464(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    80002508:	00853a03          	ld	s4,8(a0)
    size_t afterTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    8000250c:	fffff097          	auipc	ra,0xfffff
    80002510:	5ac080e7          	jalr	1452(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002514:	01053783          	ld	a5,16(a0)
    if (beforeTestTotalFree != afterTestTotalFree - allocatedMemory) return false;
    80002518:	418484b3          	sub	s1,s1,s8
    8000251c:	05649063          	bne	s1,s6,8000255c <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x168>
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    80002520:	014c0733          	add	a4,s8,s4
    80002524:	05771063          	bne	a4,s7,80002564 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x170>
    return beforeTestFreeBlockNo == afterTestFreeBlockNo - minNoBlocksForSize - addendForSegDesc;
    80002528:	41378533          	sub	a0,a5,s3
    8000252c:	41250533          	sub	a0,a0,s2
    80002530:	41550533          	sub	a0,a0,s5
    80002534:	00153513          	seqz	a0,a0
    80002538:	f05ff06f          	j	8000243c <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
        minNoBlocksForSize = 0; addendForSegDesc = 0; allocatedMemory = 0;
    8000253c:	00000c13          	li	s8,0
    80002540:	00000913          	li	s2,0
    80002544:	00000993          	li	s3,0
    80002548:	f71ff06f          	j	800024b8 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xc4>
    MemoryAllocator::SegmentDescriptor* segDesc = nullptr;
    8000254c:	00048793          	mv	a5,s1
    80002550:	f71ff06f          	j	800024c0 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xcc>
    if (segDesc->noBlocks != minNoBlocksForSize + addendForSegDesc) return false;
    80002554:	00000513          	li	a0,0
    80002558:	ee5ff06f          	j	8000243c <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    if (beforeTestTotalFree != afterTestTotalFree - allocatedMemory) return false;
    8000255c:	00000513          	li	a0,0
    80002560:	eddff06f          	j	8000243c <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    80002564:	00000513          	li	a0,0
    80002568:	ed5ff06f          	j	8000243c <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>

000000008000256c <_ZN19MemoryAllocatorTest13firstFitTest1Ev>:
    if (!firstFitTest2()) return false;
    if (!firstFitTest3()) return false;
    return true;
}

bool MemoryAllocatorTest::firstFitTest1() {
    8000256c:	fc010113          	addi	sp,sp,-64
    80002570:	02113c23          	sd	ra,56(sp)
    80002574:	02813823          	sd	s0,48(sp)
    80002578:	02913423          	sd	s1,40(sp)
    8000257c:	03213023          	sd	s2,32(sp)
    80002580:	01313c23          	sd	s3,24(sp)
    80002584:	01413823          	sd	s4,16(sp)
    80002588:	01513423          	sd	s5,8(sp)
    8000258c:	04010413          	addi	s0,sp,64
    80002590:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    80002594:	00000097          	auipc	ra,0x0
    80002598:	c28080e7          	jalr	-984(ra) # 800021bc <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    8000259c:	02051463          	bnez	a0,800025c4 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x58>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    800025a0:	03813083          	ld	ra,56(sp)
    800025a4:	03013403          	ld	s0,48(sp)
    800025a8:	02813483          	ld	s1,40(sp)
    800025ac:	02013903          	ld	s2,32(sp)
    800025b0:	01813983          	ld	s3,24(sp)
    800025b4:	01013a03          	ld	s4,16(sp)
    800025b8:	00813a83          	ld	s5,8(sp)
    800025bc:	04010113          	addi	sp,sp,64
    800025c0:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    800025c4:	fffff097          	auipc	ra,0xfffff
    800025c8:	4f4080e7          	jalr	1268(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    800025cc:	02f00593          	li	a1,47
    800025d0:	fffff097          	auipc	ra,0xfffff
    800025d4:	5cc080e7          	jalr	1484(ra) # 80001b9c <_ZN15MemoryAllocator10kmem_allocEm>
    800025d8:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    800025dc:	00005797          	auipc	a5,0x5
    800025e0:	ab47b783          	ld	a5,-1356(a5) # 80007090 <_GLOBAL_OFFSET_TABLE_+0x68>
    800025e4:	0007b783          	ld	a5,0(a5)
    800025e8:	01078793          	addi	a5,a5,16
    800025ec:	00a78663          	beq	a5,a0,800025f8 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x8c>
        return false;
    800025f0:	00000513          	li	a0,0
    800025f4:	fadff06f          	j	800025a0 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    800025f8:	fffff097          	auipc	ra,0xfffff
    800025fc:	4c0080e7          	jalr	1216(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002600:	03000593          	li	a1,48
    80002604:	fffff097          	auipc	ra,0xfffff
    80002608:	598080e7          	jalr	1432(ra) # 80001b9c <_ZN15MemoryAllocator10kmem_allocEm>
    8000260c:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002610:	00005797          	auipc	a5,0x5
    80002614:	a807b783          	ld	a5,-1408(a5) # 80007090 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002618:	0007b783          	ld	a5,0(a5)
    8000261c:	05078793          	addi	a5,a5,80
    80002620:	00a78663          	beq	a5,a0,8000262c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0xc0>
        return false;
    80002624:	00000513          	li	a0,0
    80002628:	f79ff06f          	j	800025a0 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    8000262c:	fffff097          	auipc	ra,0xfffff
    80002630:	48c080e7          	jalr	1164(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002634:	03100593          	li	a1,49
    80002638:	fffff097          	auipc	ra,0xfffff
    8000263c:	564080e7          	jalr	1380(ra) # 80001b9c <_ZN15MemoryAllocator10kmem_allocEm>
    80002640:	00050a13          	mv	s4,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + 2 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002644:	00005797          	auipc	a5,0x5
    80002648:	a4c7b783          	ld	a5,-1460(a5) # 80007090 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000264c:	0007b783          	ld	a5,0(a5)
    80002650:	09078793          	addi	a5,a5,144
    80002654:	00a78663          	beq	a5,a0,80002660 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0xf4>
        return false;
    80002658:	00000513          	li	a0,0
    8000265c:	f45ff06f          	j	800025a0 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002660:	fffff097          	auipc	ra,0xfffff
    80002664:	458080e7          	jalr	1112(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002668:	00098593          	mv	a1,s3
    8000266c:	fffff097          	auipc	ra,0xfffff
    80002670:	5d8080e7          	jalr	1496(ra) # 80001c44 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002674:	fffff097          	auipc	ra,0xfffff
    80002678:	444080e7          	jalr	1092(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    8000267c:	01e00593          	li	a1,30
    80002680:	fffff097          	auipc	ra,0xfffff
    80002684:	51c080e7          	jalr	1308(ra) # 80001b9c <_ZN15MemoryAllocator10kmem_allocEm>
    80002688:	00050993          	mv	s3,a0
    if (pointers[3] != MemoryAllocator::managedMemorySpaceStart + 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    8000268c:	00005797          	auipc	a5,0x5
    80002690:	a047b783          	ld	a5,-1532(a5) # 80007090 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002694:	0007b783          	ld	a5,0(a5)
    80002698:	05078793          	addi	a5,a5,80
    8000269c:	00a78663          	beq	a5,a0,800026a8 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x13c>
        return false;
    800026a0:	00000513          	li	a0,0
    800026a4:	efdff06f          	j	800025a0 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    800026a8:	fffff097          	auipc	ra,0xfffff
    800026ac:	410080e7          	jalr	1040(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    800026b0:	12100593          	li	a1,289
    800026b4:	fffff097          	auipc	ra,0xfffff
    800026b8:	4e8080e7          	jalr	1256(ra) # 80001b9c <_ZN15MemoryAllocator10kmem_allocEm>
    800026bc:	00050a93          	mv	s5,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + 4 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    800026c0:	00005797          	auipc	a5,0x5
    800026c4:	9d07b783          	ld	a5,-1584(a5) # 80007090 <_GLOBAL_OFFSET_TABLE_+0x68>
    800026c8:	0007b783          	ld	a5,0(a5)
    800026cc:	11078793          	addi	a5,a5,272
    800026d0:	00a78663          	beq	a5,a0,800026dc <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x170>
        return false;
    800026d4:	00000513          	li	a0,0
    800026d8:	ec9ff06f          	j	800025a0 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    if (!testMemoryMetadataValidity()) return false;
    800026dc:	00048513          	mv	a0,s1
    800026e0:	00000097          	auipc	ra,0x0
    800026e4:	adc080e7          	jalr	-1316(ra) # 800021bc <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800026e8:	ea050ce3          	beqz	a0,800025a0 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    800026ec:	fffff097          	auipc	ra,0xfffff
    800026f0:	3cc080e7          	jalr	972(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    800026f4:	00090593          	mv	a1,s2
    800026f8:	fffff097          	auipc	ra,0xfffff
    800026fc:	54c080e7          	jalr	1356(ra) # 80001c44 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002700:	fffff097          	auipc	ra,0xfffff
    80002704:	3b8080e7          	jalr	952(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002708:	000a0593          	mv	a1,s4
    8000270c:	fffff097          	auipc	ra,0xfffff
    80002710:	538080e7          	jalr	1336(ra) # 80001c44 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002714:	fffff097          	auipc	ra,0xfffff
    80002718:	3a4080e7          	jalr	932(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    8000271c:	00098593          	mv	a1,s3
    80002720:	fffff097          	auipc	ra,0xfffff
    80002724:	524080e7          	jalr	1316(ra) # 80001c44 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80002728:	fffff097          	auipc	ra,0xfffff
    8000272c:	390080e7          	jalr	912(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002730:	000a8593          	mv	a1,s5
    80002734:	fffff097          	auipc	ra,0xfffff
    80002738:	510080e7          	jalr	1296(ra) # 80001c44 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    8000273c:	00048513          	mv	a0,s1
    80002740:	00000097          	auipc	ra,0x0
    80002744:	a7c080e7          	jalr	-1412(ra) # 800021bc <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002748:	e59ff06f          	j	800025a0 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>

000000008000274c <_ZN19MemoryAllocatorTest12printPointerEiPPv>:


void MemoryAllocatorTest::printPointer(int i, void** pointers) {
    8000274c:	fe010113          	addi	sp,sp,-32
    80002750:	00113c23          	sd	ra,24(sp)
    80002754:	00813823          	sd	s0,16(sp)
    80002758:	00913423          	sd	s1,8(sp)
    8000275c:	01213023          	sd	s2,0(sp)
    80002760:	02010413          	addi	s0,sp,32
    80002764:	00058913          	mv	s2,a1
    80002768:	00060493          	mv	s1,a2
    printString("\npointers[");
    8000276c:	00004517          	auipc	a0,0x4
    80002770:	c4c50513          	addi	a0,a0,-948 # 800063b8 <CONSOLE_STATUS+0x3a8>
    80002774:	00001097          	auipc	ra,0x1
    80002778:	cf8080e7          	jalr	-776(ra) # 8000346c <_Z11printStringPKc>
    printInteger(i);
    8000277c:	00090513          	mv	a0,s2
    80002780:	00001097          	auipc	ra,0x1
    80002784:	d5c080e7          	jalr	-676(ra) # 800034dc <_Z12printIntegerm>
    printString("]: ");
    80002788:	00004517          	auipc	a0,0x4
    8000278c:	c4050513          	addi	a0,a0,-960 # 800063c8 <CONSOLE_STATUS+0x3b8>
    80002790:	00001097          	auipc	ra,0x1
    80002794:	cdc080e7          	jalr	-804(ra) # 8000346c <_Z11printStringPKc>
    printInteger((uint64)((uint8*) pointers[i] - MemoryAllocator::managedMemorySpaceStart));
    80002798:	00391613          	slli	a2,s2,0x3
    8000279c:	00c484b3          	add	s1,s1,a2
    800027a0:	0004b503          	ld	a0,0(s1)
    800027a4:	00005797          	auipc	a5,0x5
    800027a8:	8ec7b783          	ld	a5,-1812(a5) # 80007090 <_GLOBAL_OFFSET_TABLE_+0x68>
    800027ac:	0007b783          	ld	a5,0(a5)
    800027b0:	40f50533          	sub	a0,a0,a5
    800027b4:	00001097          	auipc	ra,0x1
    800027b8:	d28080e7          	jalr	-728(ra) # 800034dc <_Z12printIntegerm>
    printString("\npointers[");
    800027bc:	00004517          	auipc	a0,0x4
    800027c0:	bfc50513          	addi	a0,a0,-1028 # 800063b8 <CONSOLE_STATUS+0x3a8>
    800027c4:	00001097          	auipc	ra,0x1
    800027c8:	ca8080e7          	jalr	-856(ra) # 8000346c <_Z11printStringPKc>
    printInteger(i);
    800027cc:	00090513          	mv	a0,s2
    800027d0:	00001097          	auipc	ra,0x1
    800027d4:	d0c080e7          	jalr	-756(ra) # 800034dc <_Z12printIntegerm>
    printString("]->blockNo: "); printInteger((uint64) (((MemoryAllocator::SegmentDescriptor*) pointers[i])->noBlocks));
    800027d8:	00004517          	auipc	a0,0x4
    800027dc:	bf850513          	addi	a0,a0,-1032 # 800063d0 <CONSOLE_STATUS+0x3c0>
    800027e0:	00001097          	auipc	ra,0x1
    800027e4:	c8c080e7          	jalr	-884(ra) # 8000346c <_Z11printStringPKc>
    800027e8:	0004b783          	ld	a5,0(s1)
    800027ec:	0007b503          	ld	a0,0(a5)
    800027f0:	00001097          	auipc	ra,0x1
    800027f4:	cec080e7          	jalr	-788(ra) # 800034dc <_Z12printIntegerm>
    printString("\n");
    800027f8:	00004517          	auipc	a0,0x4
    800027fc:	89050513          	addi	a0,a0,-1904 # 80006088 <CONSOLE_STATUS+0x78>
    80002800:	00001097          	auipc	ra,0x1
    80002804:	c6c080e7          	jalr	-916(ra) # 8000346c <_Z11printStringPKc>
}
    80002808:	01813083          	ld	ra,24(sp)
    8000280c:	01013403          	ld	s0,16(sp)
    80002810:	00813483          	ld	s1,8(sp)
    80002814:	00013903          	ld	s2,0(sp)
    80002818:	02010113          	addi	sp,sp,32
    8000281c:	00008067          	ret

0000000080002820 <_ZN19MemoryAllocatorTest13firstFitTest2Ev>:

bool MemoryAllocatorTest::firstFitTest2() {
    80002820:	fc010113          	addi	sp,sp,-64
    80002824:	02113c23          	sd	ra,56(sp)
    80002828:	02813823          	sd	s0,48(sp)
    8000282c:	02913423          	sd	s1,40(sp)
    80002830:	03213023          	sd	s2,32(sp)
    80002834:	01313c23          	sd	s3,24(sp)
    80002838:	01413823          	sd	s4,16(sp)
    8000283c:	01513423          	sd	s5,8(sp)
    80002840:	04010413          	addi	s0,sp,64
    80002844:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    80002848:	00000097          	auipc	ra,0x0
    8000284c:	974080e7          	jalr	-1676(ra) # 800021bc <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002850:	02051463          	bnez	a0,80002878 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x58>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002854:	03813083          	ld	ra,56(sp)
    80002858:	03013403          	ld	s0,48(sp)
    8000285c:	02813483          	ld	s1,40(sp)
    80002860:	02013903          	ld	s2,32(sp)
    80002864:	01813983          	ld	s3,24(sp)
    80002868:	01013a03          	ld	s4,16(sp)
    8000286c:	00813a83          	ld	s5,8(sp)
    80002870:	04010113          	addi	sp,sp,64
    80002874:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002878:	fffff097          	auipc	ra,0xfffff
    8000287c:	240080e7          	jalr	576(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002880:	08200593          	li	a1,130
    80002884:	fffff097          	auipc	ra,0xfffff
    80002888:	318080e7          	jalr	792(ra) # 80001b9c <_ZN15MemoryAllocator10kmem_allocEm>
    8000288c:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002890:	00005797          	auipc	a5,0x5
    80002894:	8007b783          	ld	a5,-2048(a5) # 80007090 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002898:	0007b783          	ld	a5,0(a5)
    8000289c:	01078793          	addi	a5,a5,16
    800028a0:	00a78663          	beq	a5,a0,800028ac <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x8c>
        return false;
    800028a4:	00000513          	li	a0,0
    800028a8:	fadff06f          	j	80002854 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    800028ac:	fffff097          	auipc	ra,0xfffff
    800028b0:	20c080e7          	jalr	524(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    800028b4:	01400593          	li	a1,20
    800028b8:	fffff097          	auipc	ra,0xfffff
    800028bc:	2e4080e7          	jalr	740(ra) # 80001b9c <_ZN15MemoryAllocator10kmem_allocEm>
    800028c0:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 3 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    800028c4:	00004797          	auipc	a5,0x4
    800028c8:	7cc7b783          	ld	a5,1996(a5) # 80007090 <_GLOBAL_OFFSET_TABLE_+0x68>
    800028cc:	0007b783          	ld	a5,0(a5)
    800028d0:	0d078793          	addi	a5,a5,208
    800028d4:	00a78663          	beq	a5,a0,800028e0 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0xc0>
        return false;
    800028d8:	00000513          	li	a0,0
    800028dc:	f79ff06f          	j	80002854 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    800028e0:	fffff097          	auipc	ra,0xfffff
    800028e4:	1d8080e7          	jalr	472(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    800028e8:	00090593          	mv	a1,s2
    800028ec:	fffff097          	auipc	ra,0xfffff
    800028f0:	358080e7          	jalr	856(ra) # 80001c44 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    800028f4:	fffff097          	auipc	ra,0xfffff
    800028f8:	1c4080e7          	jalr	452(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    800028fc:	07800593          	li	a1,120
    80002900:	fffff097          	auipc	ra,0xfffff
    80002904:	29c080e7          	jalr	668(ra) # 80001b9c <_ZN15MemoryAllocator10kmem_allocEm>
    80002908:	00050913          	mv	s2,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    8000290c:	00004797          	auipc	a5,0x4
    80002910:	7847b783          	ld	a5,1924(a5) # 80007090 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002914:	0007b783          	ld	a5,0(a5)
    80002918:	01078793          	addi	a5,a5,16
    8000291c:	00a78663          	beq	a5,a0,80002928 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x108>
        return false;
    80002920:	00000513          	li	a0,0
    80002924:	f31ff06f          	j	80002854 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002928:	fffff097          	auipc	ra,0xfffff
    8000292c:	190080e7          	jalr	400(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002930:	01e00593          	li	a1,30
    80002934:	fffff097          	auipc	ra,0xfffff
    80002938:	268080e7          	jalr	616(ra) # 80001b9c <_ZN15MemoryAllocator10kmem_allocEm>
    8000293c:	00050a13          	mv	s4,a0
    if (pointers[3] != MemoryAllocator::managedMemorySpaceStart + 4 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002940:	00004797          	auipc	a5,0x4
    80002944:	7507b783          	ld	a5,1872(a5) # 80007090 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002948:	0007b783          	ld	a5,0(a5)
    8000294c:	11078793          	addi	a5,a5,272
    80002950:	00a78663          	beq	a5,a0,8000295c <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x13c>
        return false;
    80002954:	00000513          	li	a0,0
    80002958:	efdff06f          	j	80002854 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    8000295c:	fffff097          	auipc	ra,0xfffff
    80002960:	15c080e7          	jalr	348(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002964:	00090593          	mv	a1,s2
    80002968:	fffff097          	auipc	ra,0xfffff
    8000296c:	2dc080e7          	jalr	732(ra) # 80001c44 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002970:	fffff097          	auipc	ra,0xfffff
    80002974:	148080e7          	jalr	328(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002978:	02f00593          	li	a1,47
    8000297c:	fffff097          	auipc	ra,0xfffff
    80002980:	220080e7          	jalr	544(ra) # 80001b9c <_ZN15MemoryAllocator10kmem_allocEm>
    80002984:	00050913          	mv	s2,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002988:	00004797          	auipc	a5,0x4
    8000298c:	7087b783          	ld	a5,1800(a5) # 80007090 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002990:	0007b783          	ld	a5,0(a5)
    80002994:	01078793          	addi	a5,a5,16
    80002998:	00a78663          	beq	a5,a0,800029a4 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x184>
        return false;
    8000299c:	00000513          	li	a0,0
    800029a0:	eb5ff06f          	j	80002854 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[5] = MemoryAllocator::instance()->kmem_alloc(sizes[5]);
    800029a4:	fffff097          	auipc	ra,0xfffff
    800029a8:	114080e7          	jalr	276(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    800029ac:	01400593          	li	a1,20
    800029b0:	fffff097          	auipc	ra,0xfffff
    800029b4:	1ec080e7          	jalr	492(ra) # 80001b9c <_ZN15MemoryAllocator10kmem_allocEm>
    800029b8:	00050a93          	mv	s5,a0
    if (pointers[5] != MemoryAllocator::managedMemorySpaceStart + 1 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    800029bc:	00004797          	auipc	a5,0x4
    800029c0:	6d47b783          	ld	a5,1748(a5) # 80007090 <_GLOBAL_OFFSET_TABLE_+0x68>
    800029c4:	0007b783          	ld	a5,0(a5)
    800029c8:	05078793          	addi	a5,a5,80
    800029cc:	00a78663          	beq	a5,a0,800029d8 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x1b8>
        return false;
    800029d0:	00000513          	li	a0,0
    800029d4:	e81ff06f          	j	80002854 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    if (!testMemoryMetadataValidity()) return false;
    800029d8:	00048513          	mv	a0,s1
    800029dc:	fffff097          	auipc	ra,0xfffff
    800029e0:	7e0080e7          	jalr	2016(ra) # 800021bc <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800029e4:	e60508e3          	beqz	a0,80002854 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    800029e8:	fffff097          	auipc	ra,0xfffff
    800029ec:	0d0080e7          	jalr	208(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    800029f0:	00098593          	mv	a1,s3
    800029f4:	fffff097          	auipc	ra,0xfffff
    800029f8:	250080e7          	jalr	592(ra) # 80001c44 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    800029fc:	fffff097          	auipc	ra,0xfffff
    80002a00:	0bc080e7          	jalr	188(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002a04:	000a0593          	mv	a1,s4
    80002a08:	fffff097          	auipc	ra,0xfffff
    80002a0c:	23c080e7          	jalr	572(ra) # 80001c44 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80002a10:	fffff097          	auipc	ra,0xfffff
    80002a14:	0a8080e7          	jalr	168(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002a18:	00090593          	mv	a1,s2
    80002a1c:	fffff097          	auipc	ra,0xfffff
    80002a20:	228080e7          	jalr	552(ra) # 80001c44 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    80002a24:	fffff097          	auipc	ra,0xfffff
    80002a28:	094080e7          	jalr	148(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002a2c:	000a8593          	mv	a1,s5
    80002a30:	fffff097          	auipc	ra,0xfffff
    80002a34:	214080e7          	jalr	532(ra) # 80001c44 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002a38:	00048513          	mv	a0,s1
    80002a3c:	fffff097          	auipc	ra,0xfffff
    80002a40:	780080e7          	jalr	1920(ra) # 800021bc <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002a44:	e11ff06f          	j	80002854 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>

0000000080002a48 <_ZN19MemoryAllocatorTest13firstFitTest3Ev>:


bool MemoryAllocatorTest::firstFitTest3() {
    80002a48:	fb010113          	addi	sp,sp,-80
    80002a4c:	04113423          	sd	ra,72(sp)
    80002a50:	04813023          	sd	s0,64(sp)
    80002a54:	02913c23          	sd	s1,56(sp)
    80002a58:	03213823          	sd	s2,48(sp)
    80002a5c:	03313423          	sd	s3,40(sp)
    80002a60:	03413023          	sd	s4,32(sp)
    80002a64:	01513c23          	sd	s5,24(sp)
    80002a68:	01613823          	sd	s6,16(sp)
    80002a6c:	01713423          	sd	s7,8(sp)
    80002a70:	05010413          	addi	s0,sp,80
    80002a74:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    80002a78:	fffff097          	auipc	ra,0xfffff
    80002a7c:	744080e7          	jalr	1860(ra) # 800021bc <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002a80:	02051863          	bnez	a0,80002ab0 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x68>
    MemoryAllocator::instance()->kmem_free(pointers[6]);
    MemoryAllocator::instance()->kmem_free(pointers[7]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002a84:	04813083          	ld	ra,72(sp)
    80002a88:	04013403          	ld	s0,64(sp)
    80002a8c:	03813483          	ld	s1,56(sp)
    80002a90:	03013903          	ld	s2,48(sp)
    80002a94:	02813983          	ld	s3,40(sp)
    80002a98:	02013a03          	ld	s4,32(sp)
    80002a9c:	01813a83          	ld	s5,24(sp)
    80002aa0:	01013b03          	ld	s6,16(sp)
    80002aa4:	00813b83          	ld	s7,8(sp)
    80002aa8:	05010113          	addi	sp,sp,80
    80002aac:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002ab0:	fffff097          	auipc	ra,0xfffff
    80002ab4:	008080e7          	jalr	8(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002ab8:	13000593          	li	a1,304
    80002abc:	fffff097          	auipc	ra,0xfffff
    80002ac0:	0e0080e7          	jalr	224(ra) # 80001b9c <_ZN15MemoryAllocator10kmem_allocEm>
    80002ac4:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002ac8:	00004797          	auipc	a5,0x4
    80002acc:	5c87b783          	ld	a5,1480(a5) # 80007090 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002ad0:	0007b783          	ld	a5,0(a5)
    80002ad4:	01078793          	addi	a5,a5,16
    80002ad8:	00a78663          	beq	a5,a0,80002ae4 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x9c>
        return false;
    80002adc:	00000513          	li	a0,0
    80002ae0:	fa5ff06f          	j	80002a84 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    80002ae4:	fffff097          	auipc	ra,0xfffff
    80002ae8:	fd4080e7          	jalr	-44(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002aec:	03100593          	li	a1,49
    80002af0:	fffff097          	auipc	ra,0xfffff
    80002af4:	0ac080e7          	jalr	172(ra) # 80001b9c <_ZN15MemoryAllocator10kmem_allocEm>
    80002af8:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 5 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002afc:	00004797          	auipc	a5,0x4
    80002b00:	5947b783          	ld	a5,1428(a5) # 80007090 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b04:	0007b783          	ld	a5,0(a5)
    80002b08:	15078793          	addi	a5,a5,336
    80002b0c:	00a78663          	beq	a5,a0,80002b18 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0xd0>
        return false;
    80002b10:	00000513          	li	a0,0
    80002b14:	f71ff06f          	j	80002a84 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    80002b18:	fffff097          	auipc	ra,0xfffff
    80002b1c:	fa0080e7          	jalr	-96(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002b20:	00090593          	mv	a1,s2
    80002b24:	fffff097          	auipc	ra,0xfffff
    80002b28:	120080e7          	jalr	288(ra) # 80001c44 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    80002b2c:	fffff097          	auipc	ra,0xfffff
    80002b30:	f8c080e7          	jalr	-116(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002b34:	0e600593          	li	a1,230
    80002b38:	fffff097          	auipc	ra,0xfffff
    80002b3c:	064080e7          	jalr	100(ra) # 80001b9c <_ZN15MemoryAllocator10kmem_allocEm>
    80002b40:	00050913          	mv	s2,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002b44:	00004797          	auipc	a5,0x4
    80002b48:	54c7b783          	ld	a5,1356(a5) # 80007090 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b4c:	0007b783          	ld	a5,0(a5)
    80002b50:	01078793          	addi	a5,a5,16
    80002b54:	00a78663          	beq	a5,a0,80002b60 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x118>
        return false;
    80002b58:	00000513          	li	a0,0
    80002b5c:	f29ff06f          	j	80002a84 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002b60:	fffff097          	auipc	ra,0xfffff
    80002b64:	f58080e7          	jalr	-168(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002b68:	fdb00593          	li	a1,-37
    80002b6c:	fffff097          	auipc	ra,0xfffff
    80002b70:	030080e7          	jalr	48(ra) # 80001b9c <_ZN15MemoryAllocator10kmem_allocEm>
    80002b74:	00050a13          	mv	s4,a0
    if (pointers[3]) return false;
    80002b78:	00050663          	beqz	a0,80002b84 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x13c>
    80002b7c:	00000513          	li	a0,0
    80002b80:	f05ff06f          	j	80002a84 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002b84:	fffff097          	auipc	ra,0xfffff
    80002b88:	f34080e7          	jalr	-204(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002b8c:	01e00593          	li	a1,30
    80002b90:	fffff097          	auipc	ra,0xfffff
    80002b94:	00c080e7          	jalr	12(ra) # 80001b9c <_ZN15MemoryAllocator10kmem_allocEm>
    80002b98:	00050a93          	mv	s5,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + 7 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002b9c:	00004797          	auipc	a5,0x4
    80002ba0:	4f47b783          	ld	a5,1268(a5) # 80007090 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002ba4:	0007b783          	ld	a5,0(a5)
    80002ba8:	1d078793          	addi	a5,a5,464
    80002bac:	00a78663          	beq	a5,a0,80002bb8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x170>
        return false;
    80002bb0:	00000513          	li	a0,0
    80002bb4:	ed1ff06f          	j	80002a84 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002bb8:	fffff097          	auipc	ra,0xfffff
    80002bbc:	f00080e7          	jalr	-256(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002bc0:	00090593          	mv	a1,s2
    80002bc4:	fffff097          	auipc	ra,0xfffff
    80002bc8:	080080e7          	jalr	128(ra) # 80001c44 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[5] = MemoryAllocator::instance()->kmem_alloc(sizes[5]);
    80002bcc:	fffff097          	auipc	ra,0xfffff
    80002bd0:	eec080e7          	jalr	-276(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002bd4:	09600593          	li	a1,150
    80002bd8:	fffff097          	auipc	ra,0xfffff
    80002bdc:	fc4080e7          	jalr	-60(ra) # 80001b9c <_ZN15MemoryAllocator10kmem_allocEm>
    80002be0:	00050b93          	mv	s7,a0
    if (pointers[5] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002be4:	00004797          	auipc	a5,0x4
    80002be8:	4ac7b783          	ld	a5,1196(a5) # 80007090 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002bec:	0007b783          	ld	a5,0(a5)
    80002bf0:	01078793          	addi	a5,a5,16
    80002bf4:	00a78663          	beq	a5,a0,80002c00 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x1b8>
        return false;
    80002bf8:	00000513          	li	a0,0
    80002bfc:	e89ff06f          	j	80002a84 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[6] = MemoryAllocator::instance()->kmem_alloc(sizes[6]);
    80002c00:	fffff097          	auipc	ra,0xfffff
    80002c04:	eb8080e7          	jalr	-328(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002c08:	02f00593          	li	a1,47
    80002c0c:	fffff097          	auipc	ra,0xfffff
    80002c10:	f90080e7          	jalr	-112(ra) # 80001b9c <_ZN15MemoryAllocator10kmem_allocEm>
    80002c14:	00050b13          	mv	s6,a0
    if (pointers[6] != MemoryAllocator::managedMemorySpaceStart + 3 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002c18:	00004797          	auipc	a5,0x4
    80002c1c:	4787b783          	ld	a5,1144(a5) # 80007090 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002c20:	0007b783          	ld	a5,0(a5)
    80002c24:	0d078793          	addi	a5,a5,208
    80002c28:	00a78663          	beq	a5,a0,80002c34 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x1ec>
        return false;
    80002c2c:	00000513          	li	a0,0
    80002c30:	e55ff06f          	j	80002a84 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[7] = MemoryAllocator::instance()->kmem_alloc(sizes[7]);
    80002c34:	fffff097          	auipc	ra,0xfffff
    80002c38:	e84080e7          	jalr	-380(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002c3c:	02500593          	li	a1,37
    80002c40:	fffff097          	auipc	ra,0xfffff
    80002c44:	f5c080e7          	jalr	-164(ra) # 80001b9c <_ZN15MemoryAllocator10kmem_allocEm>
    80002c48:	00050913          	mv	s2,a0
    if (pointers[7] != MemoryAllocator::managedMemorySpaceStart + 8 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002c4c:	00004797          	auipc	a5,0x4
    80002c50:	4447b783          	ld	a5,1092(a5) # 80007090 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002c54:	0007b783          	ld	a5,0(a5)
    80002c58:	21078793          	addi	a5,a5,528
    80002c5c:	00a78663          	beq	a5,a0,80002c68 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x220>
        return false;
    80002c60:	00000513          	li	a0,0
    80002c64:	e21ff06f          	j	80002a84 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    if (!testMemoryMetadataValidity()) return false;
    80002c68:	00048513          	mv	a0,s1
    80002c6c:	fffff097          	auipc	ra,0xfffff
    80002c70:	550080e7          	jalr	1360(ra) # 800021bc <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002c74:	e00508e3          	beqz	a0,80002a84 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002c78:	fffff097          	auipc	ra,0xfffff
    80002c7c:	e40080e7          	jalr	-448(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002c80:	00098593          	mv	a1,s3
    80002c84:	fffff097          	auipc	ra,0xfffff
    80002c88:	fc0080e7          	jalr	-64(ra) # 80001c44 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002c8c:	fffff097          	auipc	ra,0xfffff
    80002c90:	e2c080e7          	jalr	-468(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002c94:	000a0593          	mv	a1,s4
    80002c98:	fffff097          	auipc	ra,0xfffff
    80002c9c:	fac080e7          	jalr	-84(ra) # 80001c44 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80002ca0:	fffff097          	auipc	ra,0xfffff
    80002ca4:	e18080e7          	jalr	-488(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002ca8:	000a8593          	mv	a1,s5
    80002cac:	fffff097          	auipc	ra,0xfffff
    80002cb0:	f98080e7          	jalr	-104(ra) # 80001c44 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    80002cb4:	fffff097          	auipc	ra,0xfffff
    80002cb8:	e04080e7          	jalr	-508(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002cbc:	000b8593          	mv	a1,s7
    80002cc0:	fffff097          	auipc	ra,0xfffff
    80002cc4:	f84080e7          	jalr	-124(ra) # 80001c44 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[6]);
    80002cc8:	fffff097          	auipc	ra,0xfffff
    80002ccc:	df0080e7          	jalr	-528(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002cd0:	000b0593          	mv	a1,s6
    80002cd4:	fffff097          	auipc	ra,0xfffff
    80002cd8:	f70080e7          	jalr	-144(ra) # 80001c44 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[7]);
    80002cdc:	fffff097          	auipc	ra,0xfffff
    80002ce0:	ddc080e7          	jalr	-548(ra) # 80001ab8 <_ZN15MemoryAllocator8instanceEv>
    80002ce4:	00090593          	mv	a1,s2
    80002ce8:	fffff097          	auipc	ra,0xfffff
    80002cec:	f5c080e7          	jalr	-164(ra) # 80001c44 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002cf0:	00048513          	mv	a0,s1
    80002cf4:	fffff097          	auipc	ra,0xfffff
    80002cf8:	4c8080e7          	jalr	1224(ra) # 800021bc <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002cfc:	d89ff06f          	j	80002a84 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>

0000000080002d00 <_ZN19MemoryAllocatorTest12testFirstFitEv>:
bool MemoryAllocatorTest::testFirstFit() {
    80002d00:	fe010113          	addi	sp,sp,-32
    80002d04:	00113c23          	sd	ra,24(sp)
    80002d08:	00813823          	sd	s0,16(sp)
    80002d0c:	00913423          	sd	s1,8(sp)
    80002d10:	02010413          	addi	s0,sp,32
    80002d14:	00050493          	mv	s1,a0
    if (!firstFitTest1()) return false;
    80002d18:	00000097          	auipc	ra,0x0
    80002d1c:	854080e7          	jalr	-1964(ra) # 8000256c <_ZN19MemoryAllocatorTest13firstFitTest1Ev>
    80002d20:	00051c63          	bnez	a0,80002d38 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x38>
}
    80002d24:	01813083          	ld	ra,24(sp)
    80002d28:	01013403          	ld	s0,16(sp)
    80002d2c:	00813483          	ld	s1,8(sp)
    80002d30:	02010113          	addi	sp,sp,32
    80002d34:	00008067          	ret
    if (!firstFitTest2()) return false;
    80002d38:	00048513          	mv	a0,s1
    80002d3c:	00000097          	auipc	ra,0x0
    80002d40:	ae4080e7          	jalr	-1308(ra) # 80002820 <_ZN19MemoryAllocatorTest13firstFitTest2Ev>
    80002d44:	fe0500e3          	beqz	a0,80002d24 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x24>
    if (!firstFitTest3()) return false;
    80002d48:	00048513          	mv	a0,s1
    80002d4c:	00000097          	auipc	ra,0x0
    80002d50:	cfc080e7          	jalr	-772(ra) # 80002a48 <_ZN19MemoryAllocatorTest13firstFitTest3Ev>
    80002d54:	fd1ff06f          	j	80002d24 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x24>

0000000080002d58 <_ZN19MemoryAllocatorTest25testSegmentDescriptorSizeEv>:

bool MemoryAllocatorTest::testSegmentDescriptorSize() {
    80002d58:	ff010113          	addi	sp,sp,-16
    80002d5c:	00113423          	sd	ra,8(sp)
    80002d60:	00813023          	sd	s0,0(sp)
    80002d64:	01010413          	addi	s0,sp,16
    if (!testMemoryMetadataValidity()) return false;
    80002d68:	fffff097          	auipc	ra,0xfffff
    80002d6c:	454080e7          	jalr	1108(ra) # 800021bc <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    return sizeof(MemoryAllocator::SegmentDescriptor) == 16;
}
    80002d70:	00813083          	ld	ra,8(sp)
    80002d74:	00013403          	ld	s0,0(sp)
    80002d78:	01010113          	addi	sp,sp,16
    80002d7c:	00008067          	ret

0000000080002d80 <_ZN19MemoryAllocatorTest8runTestsEv>:
bool MemoryAllocatorTest::runTests() {
    80002d80:	f6010113          	addi	sp,sp,-160
    80002d84:	08113c23          	sd	ra,152(sp)
    80002d88:	08813823          	sd	s0,144(sp)
    80002d8c:	08913423          	sd	s1,136(sp)
    80002d90:	09213023          	sd	s2,128(sp)
    80002d94:	07313c23          	sd	s3,120(sp)
    80002d98:	0a010413          	addi	s0,sp,160
    80002d9c:	00050993          	mv	s3,a0
    sizes[0] = 3.7 * MEM_BLOCK_SIZE;
    80002da0:	0ec00793          	li	a5,236
    80002da4:	f6f43423          	sd	a5,-152(s0)
    sizes[1] = MEM_BLOCK_SIZE;
    80002da8:	04000793          	li	a5,64
    80002dac:	f6f43823          	sd	a5,-144(s0)
    sizes[2] = 0.3 * MEM_BLOCK_SIZE;
    80002db0:	01300793          	li	a5,19
    80002db4:	f6f43c23          	sd	a5,-136(s0)
    sizes[3] = 0;
    80002db8:	f8043023          	sd	zero,-128(s0)
    sizes[4] = -37;
    80002dbc:	fdb00793          	li	a5,-37
    80002dc0:	f8f43423          	sd	a5,-120(s0)
    sizes[5] = sizeof(MemoryAllocator::SegmentDescriptor) - 1;
    80002dc4:	00f00793          	li	a5,15
    80002dc8:	f8f43823          	sd	a5,-112(s0)
    sizes[6] = sizeof(MemoryAllocator::SegmentDescriptor);
    80002dcc:	01000793          	li	a5,16
    80002dd0:	f8f43c23          	sd	a5,-104(s0)
    sizes[7] = sizeof(MemoryAllocator::SegmentDescriptor) + 1;
    80002dd4:	01100793          	li	a5,17
    80002dd8:	faf43023          	sd	a5,-96(s0)
    sizes[8] = MemoryAllocator::minMemoryFragmentSize - 1;
    80002ddc:	00004797          	auipc	a5,0x4
    80002de0:	27c7b783          	ld	a5,636(a5) # 80007058 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002de4:	0007b783          	ld	a5,0(a5)
    80002de8:	fff78713          	addi	a4,a5,-1
    80002dec:	fae43423          	sd	a4,-88(s0)
    sizes[9] = MemoryAllocator::minMemoryFragmentSize;
    80002df0:	faf43823          	sd	a5,-80(s0)
    sizes[10] = MemoryAllocator::minMemoryFragmentSize + 1;
    80002df4:	00178793          	addi	a5,a5,1
    80002df8:	faf43c23          	sd	a5,-72(s0)
    sizes[11] = MEM_BLOCK_SIZE - 1;
    80002dfc:	03f00793          	li	a5,63
    80002e00:	fcf43023          	sd	a5,-64(s0)
    sizes[12] = MEM_BLOCK_SIZE + 1;
    80002e04:	04100793          	li	a5,65
    80002e08:	fcf43423          	sd	a5,-56(s0)
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    80002e0c:	00000493          	li	s1,0
    80002e10:	0880006f          	j	80002e98 <_ZN19MemoryAllocatorTest8runTestsEv+0x118>
            printString("Failed testMemoryAllocate test for input ");
    80002e14:	00003517          	auipc	a0,0x3
    80002e18:	5cc50513          	addi	a0,a0,1484 # 800063e0 <CONSOLE_STATUS+0x3d0>
    80002e1c:	00000097          	auipc	ra,0x0
    80002e20:	650080e7          	jalr	1616(ra) # 8000346c <_Z11printStringPKc>
            printInteger(sizes[i]); printString("\n"); return false;
    80002e24:	00090513          	mv	a0,s2
    80002e28:	00000097          	auipc	ra,0x0
    80002e2c:	6b4080e7          	jalr	1716(ra) # 800034dc <_Z12printIntegerm>
    80002e30:	00003517          	auipc	a0,0x3
    80002e34:	25850513          	addi	a0,a0,600 # 80006088 <CONSOLE_STATUS+0x78>
    80002e38:	00000097          	auipc	ra,0x0
    80002e3c:	634080e7          	jalr	1588(ra) # 8000346c <_Z11printStringPKc>
    80002e40:	00000493          	li	s1,0
}
    80002e44:	00048513          	mv	a0,s1
    80002e48:	09813083          	ld	ra,152(sp)
    80002e4c:	09013403          	ld	s0,144(sp)
    80002e50:	08813483          	ld	s1,136(sp)
    80002e54:	08013903          	ld	s2,128(sp)
    80002e58:	07813983          	ld	s3,120(sp)
    80002e5c:	0a010113          	addi	sp,sp,160
    80002e60:	00008067          	ret
            printString("Failed testMemoryFree test for input ");
    80002e64:	00003517          	auipc	a0,0x3
    80002e68:	5b450513          	addi	a0,a0,1460 # 80006418 <CONSOLE_STATUS+0x408>
    80002e6c:	00000097          	auipc	ra,0x0
    80002e70:	600080e7          	jalr	1536(ra) # 8000346c <_Z11printStringPKc>
            printInteger(sizes[i]); printString("\n"); return false;
    80002e74:	00090513          	mv	a0,s2
    80002e78:	00000097          	auipc	ra,0x0
    80002e7c:	664080e7          	jalr	1636(ra) # 800034dc <_Z12printIntegerm>
    80002e80:	00003517          	auipc	a0,0x3
    80002e84:	20850513          	addi	a0,a0,520 # 80006088 <CONSOLE_STATUS+0x78>
    80002e88:	00000097          	auipc	ra,0x0
    80002e8c:	5e4080e7          	jalr	1508(ra) # 8000346c <_Z11printStringPKc>
    80002e90:	fb1ff06f          	j	80002e40 <_ZN19MemoryAllocatorTest8runTestsEv+0xc0>
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    80002e94:	0014849b          	addiw	s1,s1,1
    80002e98:	00c00793          	li	a5,12
    80002e9c:	0897c863          	blt	a5,s1,80002f2c <_ZN19MemoryAllocatorTest8runTestsEv+0x1ac>
        void * allocatedMemoryPointer = nullptr;
    80002ea0:	f6043023          	sd	zero,-160(s0)
        if (!testMemoryAllocate(sizes[i], &allocatedMemoryPointer)) {
    80002ea4:	00349793          	slli	a5,s1,0x3
    80002ea8:	fd040713          	addi	a4,s0,-48
    80002eac:	00f707b3          	add	a5,a4,a5
    80002eb0:	f987b903          	ld	s2,-104(a5)
    80002eb4:	f6040613          	addi	a2,s0,-160
    80002eb8:	00090593          	mv	a1,s2
    80002ebc:	00098513          	mv	a0,s3
    80002ec0:	fffff097          	auipc	ra,0xfffff
    80002ec4:	3b4080e7          	jalr	948(ra) # 80002274 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>
    80002ec8:	f40506e3          	beqz	a0,80002e14 <_ZN19MemoryAllocatorTest8runTestsEv+0x94>
        } else printString("Passed ");
    80002ecc:	00003517          	auipc	a0,0x3
    80002ed0:	54450513          	addi	a0,a0,1348 # 80006410 <CONSOLE_STATUS+0x400>
    80002ed4:	00000097          	auipc	ra,0x0
    80002ed8:	598080e7          	jalr	1432(ra) # 8000346c <_Z11printStringPKc>
        if (!testMemoryFree(sizes[i], allocatedMemoryPointer)) {
    80002edc:	f6043603          	ld	a2,-160(s0)
    80002ee0:	00090593          	mv	a1,s2
    80002ee4:	00098513          	mv	a0,s3
    80002ee8:	fffff097          	auipc	ra,0xfffff
    80002eec:	50c080e7          	jalr	1292(ra) # 800023f4 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>
    80002ef0:	f6050ae3          	beqz	a0,80002e64 <_ZN19MemoryAllocatorTest8runTestsEv+0xe4>
        } else printString("Passed ");
    80002ef4:	00003517          	auipc	a0,0x3
    80002ef8:	51c50513          	addi	a0,a0,1308 # 80006410 <CONSOLE_STATUS+0x400>
    80002efc:	00000097          	auipc	ra,0x0
    80002f00:	570080e7          	jalr	1392(ra) # 8000346c <_Z11printStringPKc>
        if (i != 0 && (i + 1) % 5 == 0) printString("\n");
    80002f04:	f80488e3          	beqz	s1,80002e94 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    80002f08:	0014879b          	addiw	a5,s1,1
    80002f0c:	00500713          	li	a4,5
    80002f10:	02e7e7bb          	remw	a5,a5,a4
    80002f14:	f80790e3          	bnez	a5,80002e94 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    80002f18:	00003517          	auipc	a0,0x3
    80002f1c:	17050513          	addi	a0,a0,368 # 80006088 <CONSOLE_STATUS+0x78>
    80002f20:	00000097          	auipc	ra,0x0
    80002f24:	54c080e7          	jalr	1356(ra) # 8000346c <_Z11printStringPKc>
    80002f28:	f6dff06f          	j	80002e94 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    if (!testFirstFit()) {
    80002f2c:	00098513          	mv	a0,s3
    80002f30:	00000097          	auipc	ra,0x0
    80002f34:	dd0080e7          	jalr	-560(ra) # 80002d00 <_ZN19MemoryAllocatorTest12testFirstFitEv>
    80002f38:	00050493          	mv	s1,a0
    80002f3c:	02050e63          	beqz	a0,80002f78 <_ZN19MemoryAllocatorTest8runTestsEv+0x1f8>
    else printString("Passed ");
    80002f40:	00003517          	auipc	a0,0x3
    80002f44:	4d050513          	addi	a0,a0,1232 # 80006410 <CONSOLE_STATUS+0x400>
    80002f48:	00000097          	auipc	ra,0x0
    80002f4c:	524080e7          	jalr	1316(ra) # 8000346c <_Z11printStringPKc>
    if (!testSegmentDescriptorSize()) {
    80002f50:	00098513          	mv	a0,s3
    80002f54:	00000097          	auipc	ra,0x0
    80002f58:	e04080e7          	jalr	-508(ra) # 80002d58 <_ZN19MemoryAllocatorTest25testSegmentDescriptorSizeEv>
    80002f5c:	00050493          	mv	s1,a0
    80002f60:	02050663          	beqz	a0,80002f8c <_ZN19MemoryAllocatorTest8runTestsEv+0x20c>
    else printString("Passed\n");
    80002f64:	00003517          	auipc	a0,0x3
    80002f68:	51c50513          	addi	a0,a0,1308 # 80006480 <CONSOLE_STATUS+0x470>
    80002f6c:	00000097          	auipc	ra,0x0
    80002f70:	500080e7          	jalr	1280(ra) # 8000346c <_Z11printStringPKc>
    80002f74:	ed1ff06f          	j	80002e44 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>
        printString("Failed testFirstFit\n"); return false; }
    80002f78:	00003517          	auipc	a0,0x3
    80002f7c:	4c850513          	addi	a0,a0,1224 # 80006440 <CONSOLE_STATUS+0x430>
    80002f80:	00000097          	auipc	ra,0x0
    80002f84:	4ec080e7          	jalr	1260(ra) # 8000346c <_Z11printStringPKc>
    80002f88:	ebdff06f          	j	80002e44 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>
        printString("Failed testSegmentDescriptorSize\n"); return false; }
    80002f8c:	00003517          	auipc	a0,0x3
    80002f90:	4cc50513          	addi	a0,a0,1228 # 80006458 <CONSOLE_STATUS+0x448>
    80002f94:	00000097          	auipc	ra,0x0
    80002f98:	4d8080e7          	jalr	1240(ra) # 8000346c <_Z11printStringPKc>
    80002f9c:	ea9ff06f          	j	80002e44 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>

0000000080002fa0 <_Znwm>:


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80002fa0:	ff010113          	addi	sp,sp,-16
    80002fa4:	00113423          	sd	ra,8(sp)
    80002fa8:	00813023          	sd	s0,0(sp)
    80002fac:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80002fb0:	00002097          	auipc	ra,0x2
    80002fb4:	7c8080e7          	jalr	1992(ra) # 80005778 <__mem_alloc>
    //return MemoryAllocator::instance()->kmem_alloc(n);
}
    80002fb8:	00813083          	ld	ra,8(sp)
    80002fbc:	00013403          	ld	s0,0(sp)
    80002fc0:	01010113          	addi	sp,sp,16
    80002fc4:	00008067          	ret

0000000080002fc8 <_Znam>:

void *operator new[](size_t n)
{
    80002fc8:	ff010113          	addi	sp,sp,-16
    80002fcc:	00113423          	sd	ra,8(sp)
    80002fd0:	00813023          	sd	s0,0(sp)
    80002fd4:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80002fd8:	00002097          	auipc	ra,0x2
    80002fdc:	7a0080e7          	jalr	1952(ra) # 80005778 <__mem_alloc>
    //return MemoryAllocator::instance()->kmem_alloc(n);
}
    80002fe0:	00813083          	ld	ra,8(sp)
    80002fe4:	00013403          	ld	s0,0(sp)
    80002fe8:	01010113          	addi	sp,sp,16
    80002fec:	00008067          	ret

0000000080002ff0 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80002ff0:	ff010113          	addi	sp,sp,-16
    80002ff4:	00113423          	sd	ra,8(sp)
    80002ff8:	00813023          	sd	s0,0(sp)
    80002ffc:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80003000:	00002097          	auipc	ra,0x2
    80003004:	6ac080e7          	jalr	1708(ra) # 800056ac <__mem_free>
    //MemoryAllocator::instance()->kmem_free(p);
}
    80003008:	00813083          	ld	ra,8(sp)
    8000300c:	00013403          	ld	s0,0(sp)
    80003010:	01010113          	addi	sp,sp,16
    80003014:	00008067          	ret

0000000080003018 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80003018:	ff010113          	addi	sp,sp,-16
    8000301c:	00113423          	sd	ra,8(sp)
    80003020:	00813023          	sd	s0,0(sp)
    80003024:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80003028:	00002097          	auipc	ra,0x2
    8000302c:	684080e7          	jalr	1668(ra) # 800056ac <__mem_free>
    //MemoryAllocator::instance()->kmem_free(p);
    80003030:	00813083          	ld	ra,8(sp)
    80003034:	00013403          	ld	s0,0(sp)
    80003038:	01010113          	addi	sp,sp,16
    8000303c:	00008067          	ret

0000000080003040 <_ZN16KObjectAllocator19printInternalMemoryEv>:
#include "../h/kObjectAllocator.hpp"
#include "../h/print.hpp"

void KObjectAllocator::printInternalMemory() {
    80003040:	fd010113          	addi	sp,sp,-48
    80003044:	02113423          	sd	ra,40(sp)
    80003048:	02813023          	sd	s0,32(sp)
    8000304c:	00913c23          	sd	s1,24(sp)
    80003050:	01213823          	sd	s2,16(sp)
    80003054:	01313423          	sd	s3,8(sp)
    80003058:	03010413          	addi	s0,sp,48
    8000305c:	00050493          	mv	s1,a0
    for (size_t i = 0; i < memoryForBits + initialObjectNumber * objectSize; ++i) {
    80003060:	00000913          	li	s2,0
    80003064:	0700006f          	j	800030d4 <_ZN16KObjectAllocator19printInternalMemoryEv+0x94>
        if (bitVector[i] / 100 == 0) printInteger((uint8) 0);
    80003068:	00000513          	li	a0,0
    8000306c:	00000097          	auipc	ra,0x0
    80003070:	470080e7          	jalr	1136(ra) # 800034dc <_Z12printIntegerm>
    80003074:	08c0006f          	j	80003100 <_ZN16KObjectAllocator19printInternalMemoryEv+0xc0>
        if (bitVector[i] / 10 == 0) printInteger((uint8) 0);
    80003078:	00000513          	li	a0,0
    8000307c:	00000097          	auipc	ra,0x0
    80003080:	460080e7          	jalr	1120(ra) # 800034dc <_Z12printIntegerm>
    80003084:	0900006f          	j	80003114 <_ZN16KObjectAllocator19printInternalMemoryEv+0xd4>
        printInteger(bitVector[i]);
        printString(" ");
        if (i + 1 == memoryForBits) {
            printString("\n"); for (size_t j = 0; j < memoryForBits * 4 - 1; ++j) printString("-"); }
    80003088:	00003517          	auipc	a0,0x3
    8000308c:	00050513          	mv	a0,a0
    80003090:	00000097          	auipc	ra,0x0
    80003094:	3dc080e7          	jalr	988(ra) # 8000346c <_Z11printStringPKc>
    80003098:	00000993          	li	s3,0
    8000309c:	0104b783          	ld	a5,16(s1)
    800030a0:	00279793          	slli	a5,a5,0x2
    800030a4:	fff78793          	addi	a5,a5,-1
    800030a8:	08f9fe63          	bgeu	s3,a5,80003144 <_ZN16KObjectAllocator19printInternalMemoryEv+0x104>
    800030ac:	00003517          	auipc	a0,0x3
    800030b0:	3dc50513          	addi	a0,a0,988 # 80006488 <CONSOLE_STATUS+0x478>
    800030b4:	00000097          	auipc	ra,0x0
    800030b8:	3b8080e7          	jalr	952(ra) # 8000346c <_Z11printStringPKc>
    800030bc:	00198993          	addi	s3,s3,1
    800030c0:	fddff06f          	j	8000309c <_ZN16KObjectAllocator19printInternalMemoryEv+0x5c>
        if ((i + 1) % memoryForBits == 0) printString("\n");
    800030c4:	00003517          	auipc	a0,0x3
    800030c8:	fc450513          	addi	a0,a0,-60 # 80006088 <CONSOLE_STATUS+0x78>
    800030cc:	00000097          	auipc	ra,0x0
    800030d0:	3a0080e7          	jalr	928(ra) # 8000346c <_Z11printStringPKc>
    for (size_t i = 0; i < memoryForBits + initialObjectNumber * objectSize; ++i) {
    800030d4:	0104b783          	ld	a5,16(s1)
    800030d8:	0084b703          	ld	a4,8(s1)
    800030dc:	0004b683          	ld	a3,0(s1)
    800030e0:	02d70733          	mul	a4,a4,a3
    800030e4:	00e787b3          	add	a5,a5,a4
    800030e8:	06f97663          	bgeu	s2,a5,80003154 <_ZN16KObjectAllocator19printInternalMemoryEv+0x114>
        if (bitVector[i] / 100 == 0) printInteger((uint8) 0);
    800030ec:	0204b783          	ld	a5,32(s1)
    800030f0:	012787b3          	add	a5,a5,s2
    800030f4:	0007c703          	lbu	a4,0(a5)
    800030f8:	06300793          	li	a5,99
    800030fc:	f6e7f6e3          	bgeu	a5,a4,80003068 <_ZN16KObjectAllocator19printInternalMemoryEv+0x28>
        if (bitVector[i] / 10 == 0) printInteger((uint8) 0);
    80003100:	0204b783          	ld	a5,32(s1)
    80003104:	012787b3          	add	a5,a5,s2
    80003108:	0007c703          	lbu	a4,0(a5)
    8000310c:	00900793          	li	a5,9
    80003110:	f6e7f4e3          	bgeu	a5,a4,80003078 <_ZN16KObjectAllocator19printInternalMemoryEv+0x38>
        printInteger(bitVector[i]);
    80003114:	0204b783          	ld	a5,32(s1)
    80003118:	012787b3          	add	a5,a5,s2
    8000311c:	0007c503          	lbu	a0,0(a5)
    80003120:	00000097          	auipc	ra,0x0
    80003124:	3bc080e7          	jalr	956(ra) # 800034dc <_Z12printIntegerm>
        printString(" ");
    80003128:	00003517          	auipc	a0,0x3
    8000312c:	1a050513          	addi	a0,a0,416 # 800062c8 <CONSOLE_STATUS+0x2b8>
    80003130:	00000097          	auipc	ra,0x0
    80003134:	33c080e7          	jalr	828(ra) # 8000346c <_Z11printStringPKc>
        if (i + 1 == memoryForBits) {
    80003138:	00190913          	addi	s2,s2,1
    8000313c:	0104b783          	ld	a5,16(s1)
    80003140:	f4f904e3          	beq	s2,a5,80003088 <_ZN16KObjectAllocator19printInternalMemoryEv+0x48>
        if ((i + 1) % memoryForBits == 0) printString("\n");
    80003144:	0104b783          	ld	a5,16(s1)
    80003148:	02f977b3          	remu	a5,s2,a5
    8000314c:	f80794e3          	bnez	a5,800030d4 <_ZN16KObjectAllocator19printInternalMemoryEv+0x94>
    80003150:	f75ff06f          	j	800030c4 <_ZN16KObjectAllocator19printInternalMemoryEv+0x84>
    }
}
    80003154:	02813083          	ld	ra,40(sp)
    80003158:	02013403          	ld	s0,32(sp)
    8000315c:	01813483          	ld	s1,24(sp)
    80003160:	01013903          	ld	s2,16(sp)
    80003164:	00813983          	ld	s3,8(sp)
    80003168:	03010113          	addi	sp,sp,48
    8000316c:	00008067          	ret

0000000080003170 <_ZN16KObjectAllocator17allocateNewObjectEv>:

void* KObjectAllocator::allocateNewObject() {
    80003170:	ff010113          	addi	sp,sp,-16
    80003174:	00813423          	sd	s0,8(sp)
    80003178:	01010413          	addi	s0,sp,16
    for (size_t i = 0; i < memoryForBits; ++i)
    8000317c:	01053783          	ld	a5,16(a0)
    80003180:	04078a63          	beqz	a5,800031d4 <_ZN16KObjectAllocator17allocateNewObjectEv+0x64>
        for (size_t j = 7; j >= 0; --j)
    80003184:	00700793          	li	a5,7
            if ((bitVector[i] >> j & (uint8) 1) == 0) {
    80003188:	02053603          	ld	a2,32(a0)
    8000318c:	00064683          	lbu	a3,0(a2)
    80003190:	0007859b          	sext.w	a1,a5
    80003194:	40f6d73b          	sraw	a4,a3,a5
    80003198:	00177713          	andi	a4,a4,1
    8000319c:	00070663          	beqz	a4,800031a8 <_ZN16KObjectAllocator17allocateNewObjectEv+0x38>
        for (size_t j = 7; j >= 0; --j)
    800031a0:	fff78793          	addi	a5,a5,-1
            if ((bitVector[i] >> j & (uint8) 1) == 0) {
    800031a4:	fe5ff06f          	j	80003188 <_ZN16KObjectAllocator17allocateNewObjectEv+0x18>
                bitVector[i] |= (uint8) 1 << j;
    800031a8:	00100713          	li	a4,1
    800031ac:	00b715bb          	sllw	a1,a4,a1
    800031b0:	00b6e6b3          	or	a3,a3,a1
    800031b4:	00d60023          	sb	a3,0(a2)
                return &objectVector[i * 8 + 8 - j];
    800031b8:	01853503          	ld	a0,24(a0)
    800031bc:	00800713          	li	a4,8
    800031c0:	40f707b3          	sub	a5,a4,a5
    800031c4:	00f50533          	add	a0,a0,a5
            }
    return nullptr;
}
    800031c8:	00813403          	ld	s0,8(sp)
    800031cc:	01010113          	addi	sp,sp,16
    800031d0:	00008067          	ret
    return nullptr;
    800031d4:	00000513          	li	a0,0
    800031d8:	ff1ff06f          	j	800031c8 <_ZN16KObjectAllocator17allocateNewObjectEv+0x58>

00000000800031dc <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"

void Riscv::popSppSpie()
{
    800031dc:	ff010113          	addi	sp,sp,-16
    800031e0:	00813423          	sd	s0,8(sp)
    800031e4:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800031e8:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800031ec:	10200073          	sret
}
    800031f0:	00813403          	ld	s0,8(sp)
    800031f4:	01010113          	addi	sp,sp,16
    800031f8:	00008067          	ret

00000000800031fc <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    800031fc:	fa010113          	addi	sp,sp,-96
    80003200:	04113c23          	sd	ra,88(sp)
    80003204:	04813823          	sd	s0,80(sp)
    80003208:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000320c:	142027f3          	csrr	a5,scause
    80003210:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80003214:	fc843703          	ld	a4,-56(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80003218:	ff870693          	addi	a3,a4,-8
    8000321c:	00100793          	li	a5,1
    80003220:	02d7fa63          	bgeu	a5,a3,80003254 <_ZN5Riscv20handleSupervisorTrapEv+0x58>
        TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80003224:	fff00793          	li	a5,-1
    80003228:	03f79793          	slli	a5,a5,0x3f
    8000322c:	00178793          	addi	a5,a5,1
    80003230:	06f70863          	beq	a4,a5,800032a0 <_ZN5Riscv20handleSupervisorTrapEv+0xa4>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80003234:	fff00793          	li	a5,-1
    80003238:	03f79793          	slli	a5,a5,0x3f
    8000323c:	00978793          	addi	a5,a5,9
    80003240:	0cf70c63          	beq	a4,a5,80003318 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
    }
    else
    {
        // unexpected trap cause
    }
    80003244:	05813083          	ld	ra,88(sp)
    80003248:	05013403          	ld	s0,80(sp)
    8000324c:	06010113          	addi	sp,sp,96
    80003250:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80003254:	141027f3          	csrr	a5,sepc
    80003258:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    8000325c:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80003260:	00478793          	addi	a5,a5,4
    80003264:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003268:	100027f3          	csrr	a5,sstatus
    8000326c:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80003270:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80003274:	faf43823          	sd	a5,-80(s0)
        TCB::timeSliceCounter = 0;
    80003278:	00004797          	auipc	a5,0x4
    8000327c:	dd87b783          	ld	a5,-552(a5) # 80007050 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003280:	0007b023          	sd	zero,0(a5)
        TCB::dispatch();
    80003284:	ffffe097          	auipc	ra,0xffffe
    80003288:	6d4080e7          	jalr	1748(ra) # 80001958 <_ZN3TCB8dispatchEv>
        w_sstatus(sstatus);
    8000328c:	fb043783          	ld	a5,-80(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80003290:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80003294:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80003298:	14179073          	csrw	sepc,a5
}
    8000329c:	fa9ff06f          	j	80003244 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800032a0:	00200793          	li	a5,2
    800032a4:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    800032a8:	00004717          	auipc	a4,0x4
    800032ac:	da873703          	ld	a4,-600(a4) # 80007050 <_GLOBAL_OFFSET_TABLE_+0x28>
    800032b0:	00073783          	ld	a5,0(a4)
    800032b4:	00178793          	addi	a5,a5,1
    800032b8:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    800032bc:	00004717          	auipc	a4,0x4
    800032c0:	db473703          	ld	a4,-588(a4) # 80007070 <_GLOBAL_OFFSET_TABLE_+0x48>
    800032c4:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    800032c8:	02073703          	ld	a4,32(a4)
    800032cc:	f6e7ece3          	bltu	a5,a4,80003244 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800032d0:	141027f3          	csrr	a5,sepc
    800032d4:	fef43423          	sd	a5,-24(s0)
    return sepc;
    800032d8:	fe843783          	ld	a5,-24(s0)
            uint64 volatile sepc = r_sepc();
    800032dc:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800032e0:	100027f3          	csrr	a5,sstatus
    800032e4:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    800032e8:	fe043783          	ld	a5,-32(s0)
            uint64 volatile sstatus = r_sstatus();
    800032ec:	fcf43023          	sd	a5,-64(s0)
            TCB::timeSliceCounter = 0;
    800032f0:	00004797          	auipc	a5,0x4
    800032f4:	d607b783          	ld	a5,-672(a5) # 80007050 <_GLOBAL_OFFSET_TABLE_+0x28>
    800032f8:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800032fc:	ffffe097          	auipc	ra,0xffffe
    80003300:	65c080e7          	jalr	1628(ra) # 80001958 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80003304:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80003308:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    8000330c:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80003310:	14179073          	csrw	sepc,a5
}
    80003314:	f31ff06f          	j	80003244 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
        console_handler();
    80003318:	00002097          	auipc	ra,0x2
    8000331c:	62c080e7          	jalr	1580(ra) # 80005944 <console_handler>
    80003320:	f25ff06f          	j	80003244 <_ZN5Riscv20handleSupervisorTrapEv+0x48>

0000000080003324 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80003324:	ff010113          	addi	sp,sp,-16
    80003328:	00813423          	sd	s0,8(sp)
    8000332c:	01010413          	addi	s0,sp,16
    80003330:	00100793          	li	a5,1
    80003334:	00f50863          	beq	a0,a5,80003344 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80003338:	00813403          	ld	s0,8(sp)
    8000333c:	01010113          	addi	sp,sp,16
    80003340:	00008067          	ret
    80003344:	000107b7          	lui	a5,0x10
    80003348:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000334c:	fef596e3          	bne	a1,a5,80003338 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80003350:	00004797          	auipc	a5,0x4
    80003354:	dc078793          	addi	a5,a5,-576 # 80007110 <_ZN9Scheduler16readyThreadQueueE>
    80003358:	0007b023          	sd	zero,0(a5)
    8000335c:	0007b423          	sd	zero,8(a5)
    80003360:	fd9ff06f          	j	80003338 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080003364 <_ZN9Scheduler3getEv>:
{
    80003364:	fe010113          	addi	sp,sp,-32
    80003368:	00113c23          	sd	ra,24(sp)
    8000336c:	00813823          	sd	s0,16(sp)
    80003370:	00913423          	sd	s1,8(sp)
    80003374:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80003378:	00004517          	auipc	a0,0x4
    8000337c:	d9853503          	ld	a0,-616(a0) # 80007110 <_ZN9Scheduler16readyThreadQueueE>
    80003380:	04050263          	beqz	a0,800033c4 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80003384:	00853783          	ld	a5,8(a0)
    80003388:	00004717          	auipc	a4,0x4
    8000338c:	d8f73423          	sd	a5,-632(a4) # 80007110 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80003390:	02078463          	beqz	a5,800033b8 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80003394:	00053483          	ld	s1,0(a0)
        delete elem;
    80003398:	00000097          	auipc	ra,0x0
    8000339c:	c58080e7          	jalr	-936(ra) # 80002ff0 <_ZdlPv>
}
    800033a0:	00048513          	mv	a0,s1
    800033a4:	01813083          	ld	ra,24(sp)
    800033a8:	01013403          	ld	s0,16(sp)
    800033ac:	00813483          	ld	s1,8(sp)
    800033b0:	02010113          	addi	sp,sp,32
    800033b4:	00008067          	ret
        if (!head) { tail = 0; }
    800033b8:	00004797          	auipc	a5,0x4
    800033bc:	d607b023          	sd	zero,-672(a5) # 80007118 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800033c0:	fd5ff06f          	j	80003394 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800033c4:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800033c8:	fd9ff06f          	j	800033a0 <_ZN9Scheduler3getEv+0x3c>

00000000800033cc <_ZN9Scheduler3putEP3TCB>:
{
    800033cc:	fe010113          	addi	sp,sp,-32
    800033d0:	00113c23          	sd	ra,24(sp)
    800033d4:	00813823          	sd	s0,16(sp)
    800033d8:	00913423          	sd	s1,8(sp)
    800033dc:	02010413          	addi	s0,sp,32
    800033e0:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800033e4:	01000513          	li	a0,16
    800033e8:	00000097          	auipc	ra,0x0
    800033ec:	bb8080e7          	jalr	-1096(ra) # 80002fa0 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800033f0:	00953023          	sd	s1,0(a0)
    800033f4:	00053423          	sd	zero,8(a0)
        if (tail)
    800033f8:	00004797          	auipc	a5,0x4
    800033fc:	d207b783          	ld	a5,-736(a5) # 80007118 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003400:	02078263          	beqz	a5,80003424 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80003404:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80003408:	00004797          	auipc	a5,0x4
    8000340c:	d0a7b823          	sd	a0,-752(a5) # 80007118 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003410:	01813083          	ld	ra,24(sp)
    80003414:	01013403          	ld	s0,16(sp)
    80003418:	00813483          	ld	s1,8(sp)
    8000341c:	02010113          	addi	sp,sp,32
    80003420:	00008067          	ret
            head = tail = elem;
    80003424:	00004797          	auipc	a5,0x4
    80003428:	cec78793          	addi	a5,a5,-788 # 80007110 <_ZN9Scheduler16readyThreadQueueE>
    8000342c:	00a7b423          	sd	a0,8(a5)
    80003430:	00a7b023          	sd	a0,0(a5)
    80003434:	fddff06f          	j	80003410 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080003438 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80003438:	ff010113          	addi	sp,sp,-16
    8000343c:	00113423          	sd	ra,8(sp)
    80003440:	00813023          	sd	s0,0(sp)
    80003444:	01010413          	addi	s0,sp,16
    80003448:	000105b7          	lui	a1,0x10
    8000344c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80003450:	00100513          	li	a0,1
    80003454:	00000097          	auipc	ra,0x0
    80003458:	ed0080e7          	jalr	-304(ra) # 80003324 <_Z41__static_initialization_and_destruction_0ii>
    8000345c:	00813083          	ld	ra,8(sp)
    80003460:	00013403          	ld	s0,0(sp)
    80003464:	01010113          	addi	sp,sp,16
    80003468:	00008067          	ret

000000008000346c <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    8000346c:	fd010113          	addi	sp,sp,-48
    80003470:	02113423          	sd	ra,40(sp)
    80003474:	02813023          	sd	s0,32(sp)
    80003478:	00913c23          	sd	s1,24(sp)
    8000347c:	01213823          	sd	s2,16(sp)
    80003480:	03010413          	addi	s0,sp,48
    80003484:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003488:	100027f3          	csrr	a5,sstatus
    8000348c:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80003490:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80003494:	00200793          	li	a5,2
    80003498:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    while (*string != '\0') __putc(*string++);
    8000349c:	0004c503          	lbu	a0,0(s1)
    800034a0:	00050a63          	beqz	a0,800034b4 <_Z11printStringPKc+0x48>
    800034a4:	00148493          	addi	s1,s1,1
    800034a8:	00002097          	auipc	ra,0x2
    800034ac:	428080e7          	jalr	1064(ra) # 800058d0 <__putc>
    800034b0:	fedff06f          	j	8000349c <_Z11printStringPKc+0x30>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800034b4:	0009091b          	sext.w	s2,s2
    800034b8:	00297913          	andi	s2,s2,2
    800034bc:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800034c0:	10092073          	csrs	sstatus,s2
}
    800034c4:	02813083          	ld	ra,40(sp)
    800034c8:	02013403          	ld	s0,32(sp)
    800034cc:	01813483          	ld	s1,24(sp)
    800034d0:	01013903          	ld	s2,16(sp)
    800034d4:	03010113          	addi	sp,sp,48
    800034d8:	00008067          	ret

00000000800034dc <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    800034dc:	fc010113          	addi	sp,sp,-64
    800034e0:	02113c23          	sd	ra,56(sp)
    800034e4:	02813823          	sd	s0,48(sp)
    800034e8:	02913423          	sd	s1,40(sp)
    800034ec:	03213023          	sd	s2,32(sp)
    800034f0:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800034f4:	100027f3          	csrr	a5,sstatus
    800034f8:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800034fc:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80003500:	00200793          	li	a5,2
    80003504:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    static char digits[] = "0123456789";
    char buf[16]; int i = 0; uint64 x = integer;
    int neg = (integer & ((uint64)1 << 63)) != 0;
    80003508:	00050593          	mv	a1,a0

    if (neg) x = ~integer + 1;
    8000350c:	06054463          	bltz	a0,80003574 <_Z12printIntegerm+0x98>
{
    80003510:	00000493          	li	s1,0

    do buf[i++] = digits[x % 10];
    80003514:	00a00713          	li	a4,10
    80003518:	02e57633          	remu	a2,a0,a4
    8000351c:	00048693          	mv	a3,s1
    80003520:	0014849b          	addiw	s1,s1,1
    80003524:	00003797          	auipc	a5,0x3
    80003528:	f6c78793          	addi	a5,a5,-148 # 80006490 <_ZZ12printIntegermE6digits>
    8000352c:	00c787b3          	add	a5,a5,a2
    80003530:	0007c603          	lbu	a2,0(a5)
    80003534:	fe040793          	addi	a5,s0,-32
    80003538:	00d787b3          	add	a5,a5,a3
    8000353c:	fec78823          	sb	a2,-16(a5)
    while ((x /= 10) != 0);
    80003540:	00050613          	mv	a2,a0
    80003544:	02e55533          	divu	a0,a0,a4
    80003548:	00900793          	li	a5,9
    8000354c:	fcc7e4e3          	bltu	a5,a2,80003514 <_Z12printIntegerm+0x38>

    if (neg) buf[i++] = '-';
    80003550:	0205c663          	bltz	a1,8000357c <_Z12printIntegerm+0xa0>
    while (--i >= 0) { __putc(buf[i]); }
    80003554:	fff4849b          	addiw	s1,s1,-1
    80003558:	0204ce63          	bltz	s1,80003594 <_Z12printIntegerm+0xb8>
    8000355c:	fe040793          	addi	a5,s0,-32
    80003560:	009787b3          	add	a5,a5,s1
    80003564:	ff07c503          	lbu	a0,-16(a5)
    80003568:	00002097          	auipc	ra,0x2
    8000356c:	368080e7          	jalr	872(ra) # 800058d0 <__putc>
    80003570:	fe5ff06f          	j	80003554 <_Z12printIntegerm+0x78>
    if (neg) x = ~integer + 1;
    80003574:	40a00533          	neg	a0,a0
    80003578:	f99ff06f          	j	80003510 <_Z12printIntegerm+0x34>
    if (neg) buf[i++] = '-';
    8000357c:	fe040793          	addi	a5,s0,-32
    80003580:	009784b3          	add	s1,a5,s1
    80003584:	02d00793          	li	a5,45
    80003588:	fef48823          	sb	a5,-16(s1)
    8000358c:	0026849b          	addiw	s1,a3,2
    80003590:	fc5ff06f          	j	80003554 <_Z12printIntegerm+0x78>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80003594:	0009091b          	sext.w	s2,s2
    80003598:	00297913          	andi	s2,s2,2
    8000359c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800035a0:	10092073          	csrs	sstatus,s2
}
    800035a4:	03813083          	ld	ra,56(sp)
    800035a8:	03013403          	ld	s0,48(sp)
    800035ac:	02813483          	ld	s1,40(sp)
    800035b0:	02013903          	ld	s2,32(sp)
    800035b4:	04010113          	addi	sp,sp,64
    800035b8:	00008067          	ret

00000000800035bc <_Z12printIntegerh>:


void printInteger(uint8 integer)
{
    800035bc:	ff010113          	addi	sp,sp,-16
    800035c0:	00113423          	sd	ra,8(sp)
    800035c4:	00813023          	sd	s0,0(sp)
    800035c8:	01010413          	addi	s0,sp,16
    printInteger((uint64)integer);
    800035cc:	00000097          	auipc	ra,0x0
    800035d0:	f10080e7          	jalr	-240(ra) # 800034dc <_Z12printIntegerm>
}
    800035d4:	00813083          	ld	ra,8(sp)
    800035d8:	00013403          	ld	s0,0(sp)
    800035dc:	01010113          	addi	sp,sp,16
    800035e0:	00008067          	ret

00000000800035e4 <start>:
    800035e4:	ff010113          	addi	sp,sp,-16
    800035e8:	00813423          	sd	s0,8(sp)
    800035ec:	01010413          	addi	s0,sp,16
    800035f0:	300027f3          	csrr	a5,mstatus
    800035f4:	ffffe737          	lui	a4,0xffffe
    800035f8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff646f>
    800035fc:	00e7f7b3          	and	a5,a5,a4
    80003600:	00001737          	lui	a4,0x1
    80003604:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003608:	00e7e7b3          	or	a5,a5,a4
    8000360c:	30079073          	csrw	mstatus,a5
    80003610:	00000797          	auipc	a5,0x0
    80003614:	16078793          	addi	a5,a5,352 # 80003770 <system_main>
    80003618:	34179073          	csrw	mepc,a5
    8000361c:	00000793          	li	a5,0
    80003620:	18079073          	csrw	satp,a5
    80003624:	000107b7          	lui	a5,0x10
    80003628:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000362c:	30279073          	csrw	medeleg,a5
    80003630:	30379073          	csrw	mideleg,a5
    80003634:	104027f3          	csrr	a5,sie
    80003638:	2227e793          	ori	a5,a5,546
    8000363c:	10479073          	csrw	sie,a5
    80003640:	fff00793          	li	a5,-1
    80003644:	00a7d793          	srli	a5,a5,0xa
    80003648:	3b079073          	csrw	pmpaddr0,a5
    8000364c:	00f00793          	li	a5,15
    80003650:	3a079073          	csrw	pmpcfg0,a5
    80003654:	f14027f3          	csrr	a5,mhartid
    80003658:	0200c737          	lui	a4,0x200c
    8000365c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003660:	0007869b          	sext.w	a3,a5
    80003664:	00269713          	slli	a4,a3,0x2
    80003668:	000f4637          	lui	a2,0xf4
    8000366c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003670:	00d70733          	add	a4,a4,a3
    80003674:	0037979b          	slliw	a5,a5,0x3
    80003678:	020046b7          	lui	a3,0x2004
    8000367c:	00d787b3          	add	a5,a5,a3
    80003680:	00c585b3          	add	a1,a1,a2
    80003684:	00371693          	slli	a3,a4,0x3
    80003688:	00004717          	auipc	a4,0x4
    8000368c:	a9870713          	addi	a4,a4,-1384 # 80007120 <timer_scratch>
    80003690:	00b7b023          	sd	a1,0(a5)
    80003694:	00d70733          	add	a4,a4,a3
    80003698:	00f73c23          	sd	a5,24(a4)
    8000369c:	02c73023          	sd	a2,32(a4)
    800036a0:	34071073          	csrw	mscratch,a4
    800036a4:	00000797          	auipc	a5,0x0
    800036a8:	6ec78793          	addi	a5,a5,1772 # 80003d90 <timervec>
    800036ac:	30579073          	csrw	mtvec,a5
    800036b0:	300027f3          	csrr	a5,mstatus
    800036b4:	0087e793          	ori	a5,a5,8
    800036b8:	30079073          	csrw	mstatus,a5
    800036bc:	304027f3          	csrr	a5,mie
    800036c0:	0807e793          	ori	a5,a5,128
    800036c4:	30479073          	csrw	mie,a5
    800036c8:	f14027f3          	csrr	a5,mhartid
    800036cc:	0007879b          	sext.w	a5,a5
    800036d0:	00078213          	mv	tp,a5
    800036d4:	30200073          	mret
    800036d8:	00813403          	ld	s0,8(sp)
    800036dc:	01010113          	addi	sp,sp,16
    800036e0:	00008067          	ret

00000000800036e4 <timerinit>:
    800036e4:	ff010113          	addi	sp,sp,-16
    800036e8:	00813423          	sd	s0,8(sp)
    800036ec:	01010413          	addi	s0,sp,16
    800036f0:	f14027f3          	csrr	a5,mhartid
    800036f4:	0200c737          	lui	a4,0x200c
    800036f8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800036fc:	0007869b          	sext.w	a3,a5
    80003700:	00269713          	slli	a4,a3,0x2
    80003704:	000f4637          	lui	a2,0xf4
    80003708:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000370c:	00d70733          	add	a4,a4,a3
    80003710:	0037979b          	slliw	a5,a5,0x3
    80003714:	020046b7          	lui	a3,0x2004
    80003718:	00d787b3          	add	a5,a5,a3
    8000371c:	00c585b3          	add	a1,a1,a2
    80003720:	00371693          	slli	a3,a4,0x3
    80003724:	00004717          	auipc	a4,0x4
    80003728:	9fc70713          	addi	a4,a4,-1540 # 80007120 <timer_scratch>
    8000372c:	00b7b023          	sd	a1,0(a5)
    80003730:	00d70733          	add	a4,a4,a3
    80003734:	00f73c23          	sd	a5,24(a4)
    80003738:	02c73023          	sd	a2,32(a4)
    8000373c:	34071073          	csrw	mscratch,a4
    80003740:	00000797          	auipc	a5,0x0
    80003744:	65078793          	addi	a5,a5,1616 # 80003d90 <timervec>
    80003748:	30579073          	csrw	mtvec,a5
    8000374c:	300027f3          	csrr	a5,mstatus
    80003750:	0087e793          	ori	a5,a5,8
    80003754:	30079073          	csrw	mstatus,a5
    80003758:	304027f3          	csrr	a5,mie
    8000375c:	0807e793          	ori	a5,a5,128
    80003760:	30479073          	csrw	mie,a5
    80003764:	00813403          	ld	s0,8(sp)
    80003768:	01010113          	addi	sp,sp,16
    8000376c:	00008067          	ret

0000000080003770 <system_main>:
    80003770:	fe010113          	addi	sp,sp,-32
    80003774:	00813823          	sd	s0,16(sp)
    80003778:	00913423          	sd	s1,8(sp)
    8000377c:	00113c23          	sd	ra,24(sp)
    80003780:	02010413          	addi	s0,sp,32
    80003784:	00000097          	auipc	ra,0x0
    80003788:	0c4080e7          	jalr	196(ra) # 80003848 <cpuid>
    8000378c:	00004497          	auipc	s1,0x4
    80003790:	92448493          	addi	s1,s1,-1756 # 800070b0 <started>
    80003794:	02050263          	beqz	a0,800037b8 <system_main+0x48>
    80003798:	0004a783          	lw	a5,0(s1)
    8000379c:	0007879b          	sext.w	a5,a5
    800037a0:	fe078ce3          	beqz	a5,80003798 <system_main+0x28>
    800037a4:	0ff0000f          	fence
    800037a8:	00003517          	auipc	a0,0x3
    800037ac:	d2850513          	addi	a0,a0,-728 # 800064d0 <_ZZ12printIntegermE6digits+0x40>
    800037b0:	00001097          	auipc	ra,0x1
    800037b4:	a7c080e7          	jalr	-1412(ra) # 8000422c <panic>
    800037b8:	00001097          	auipc	ra,0x1
    800037bc:	9d0080e7          	jalr	-1584(ra) # 80004188 <consoleinit>
    800037c0:	00001097          	auipc	ra,0x1
    800037c4:	15c080e7          	jalr	348(ra) # 8000491c <printfinit>
    800037c8:	00003517          	auipc	a0,0x3
    800037cc:	8c050513          	addi	a0,a0,-1856 # 80006088 <CONSOLE_STATUS+0x78>
    800037d0:	00001097          	auipc	ra,0x1
    800037d4:	ab8080e7          	jalr	-1352(ra) # 80004288 <__printf>
    800037d8:	00003517          	auipc	a0,0x3
    800037dc:	cc850513          	addi	a0,a0,-824 # 800064a0 <_ZZ12printIntegermE6digits+0x10>
    800037e0:	00001097          	auipc	ra,0x1
    800037e4:	aa8080e7          	jalr	-1368(ra) # 80004288 <__printf>
    800037e8:	00003517          	auipc	a0,0x3
    800037ec:	8a050513          	addi	a0,a0,-1888 # 80006088 <CONSOLE_STATUS+0x78>
    800037f0:	00001097          	auipc	ra,0x1
    800037f4:	a98080e7          	jalr	-1384(ra) # 80004288 <__printf>
    800037f8:	00001097          	auipc	ra,0x1
    800037fc:	4b0080e7          	jalr	1200(ra) # 80004ca8 <kinit>
    80003800:	00000097          	auipc	ra,0x0
    80003804:	148080e7          	jalr	328(ra) # 80003948 <trapinit>
    80003808:	00000097          	auipc	ra,0x0
    8000380c:	16c080e7          	jalr	364(ra) # 80003974 <trapinithart>
    80003810:	00000097          	auipc	ra,0x0
    80003814:	5c0080e7          	jalr	1472(ra) # 80003dd0 <plicinit>
    80003818:	00000097          	auipc	ra,0x0
    8000381c:	5e0080e7          	jalr	1504(ra) # 80003df8 <plicinithart>
    80003820:	00000097          	auipc	ra,0x0
    80003824:	078080e7          	jalr	120(ra) # 80003898 <userinit>
    80003828:	0ff0000f          	fence
    8000382c:	00100793          	li	a5,1
    80003830:	00003517          	auipc	a0,0x3
    80003834:	c8850513          	addi	a0,a0,-888 # 800064b8 <_ZZ12printIntegermE6digits+0x28>
    80003838:	00f4a023          	sw	a5,0(s1)
    8000383c:	00001097          	auipc	ra,0x1
    80003840:	a4c080e7          	jalr	-1460(ra) # 80004288 <__printf>
    80003844:	0000006f          	j	80003844 <system_main+0xd4>

0000000080003848 <cpuid>:
    80003848:	ff010113          	addi	sp,sp,-16
    8000384c:	00813423          	sd	s0,8(sp)
    80003850:	01010413          	addi	s0,sp,16
    80003854:	00020513          	mv	a0,tp
    80003858:	00813403          	ld	s0,8(sp)
    8000385c:	0005051b          	sext.w	a0,a0
    80003860:	01010113          	addi	sp,sp,16
    80003864:	00008067          	ret

0000000080003868 <mycpu>:
    80003868:	ff010113          	addi	sp,sp,-16
    8000386c:	00813423          	sd	s0,8(sp)
    80003870:	01010413          	addi	s0,sp,16
    80003874:	00020793          	mv	a5,tp
    80003878:	00813403          	ld	s0,8(sp)
    8000387c:	0007879b          	sext.w	a5,a5
    80003880:	00779793          	slli	a5,a5,0x7
    80003884:	00005517          	auipc	a0,0x5
    80003888:	8cc50513          	addi	a0,a0,-1844 # 80008150 <cpus>
    8000388c:	00f50533          	add	a0,a0,a5
    80003890:	01010113          	addi	sp,sp,16
    80003894:	00008067          	ret

0000000080003898 <userinit>:
    80003898:	ff010113          	addi	sp,sp,-16
    8000389c:	00813423          	sd	s0,8(sp)
    800038a0:	01010413          	addi	s0,sp,16
    800038a4:	00813403          	ld	s0,8(sp)
    800038a8:	01010113          	addi	sp,sp,16
    800038ac:	ffffe317          	auipc	t1,0xffffe
    800038b0:	de030067          	jr	-544(t1) # 8000168c <main>

00000000800038b4 <either_copyout>:
    800038b4:	ff010113          	addi	sp,sp,-16
    800038b8:	00813023          	sd	s0,0(sp)
    800038bc:	00113423          	sd	ra,8(sp)
    800038c0:	01010413          	addi	s0,sp,16
    800038c4:	02051663          	bnez	a0,800038f0 <either_copyout+0x3c>
    800038c8:	00058513          	mv	a0,a1
    800038cc:	00060593          	mv	a1,a2
    800038d0:	0006861b          	sext.w	a2,a3
    800038d4:	00002097          	auipc	ra,0x2
    800038d8:	c60080e7          	jalr	-928(ra) # 80005534 <__memmove>
    800038dc:	00813083          	ld	ra,8(sp)
    800038e0:	00013403          	ld	s0,0(sp)
    800038e4:	00000513          	li	a0,0
    800038e8:	01010113          	addi	sp,sp,16
    800038ec:	00008067          	ret
    800038f0:	00003517          	auipc	a0,0x3
    800038f4:	c0850513          	addi	a0,a0,-1016 # 800064f8 <_ZZ12printIntegermE6digits+0x68>
    800038f8:	00001097          	auipc	ra,0x1
    800038fc:	934080e7          	jalr	-1740(ra) # 8000422c <panic>

0000000080003900 <either_copyin>:
    80003900:	ff010113          	addi	sp,sp,-16
    80003904:	00813023          	sd	s0,0(sp)
    80003908:	00113423          	sd	ra,8(sp)
    8000390c:	01010413          	addi	s0,sp,16
    80003910:	02059463          	bnez	a1,80003938 <either_copyin+0x38>
    80003914:	00060593          	mv	a1,a2
    80003918:	0006861b          	sext.w	a2,a3
    8000391c:	00002097          	auipc	ra,0x2
    80003920:	c18080e7          	jalr	-1000(ra) # 80005534 <__memmove>
    80003924:	00813083          	ld	ra,8(sp)
    80003928:	00013403          	ld	s0,0(sp)
    8000392c:	00000513          	li	a0,0
    80003930:	01010113          	addi	sp,sp,16
    80003934:	00008067          	ret
    80003938:	00003517          	auipc	a0,0x3
    8000393c:	be850513          	addi	a0,a0,-1048 # 80006520 <_ZZ12printIntegermE6digits+0x90>
    80003940:	00001097          	auipc	ra,0x1
    80003944:	8ec080e7          	jalr	-1812(ra) # 8000422c <panic>

0000000080003948 <trapinit>:
    80003948:	ff010113          	addi	sp,sp,-16
    8000394c:	00813423          	sd	s0,8(sp)
    80003950:	01010413          	addi	s0,sp,16
    80003954:	00813403          	ld	s0,8(sp)
    80003958:	00003597          	auipc	a1,0x3
    8000395c:	bf058593          	addi	a1,a1,-1040 # 80006548 <_ZZ12printIntegermE6digits+0xb8>
    80003960:	00005517          	auipc	a0,0x5
    80003964:	87050513          	addi	a0,a0,-1936 # 800081d0 <tickslock>
    80003968:	01010113          	addi	sp,sp,16
    8000396c:	00001317          	auipc	t1,0x1
    80003970:	5cc30067          	jr	1484(t1) # 80004f38 <initlock>

0000000080003974 <trapinithart>:
    80003974:	ff010113          	addi	sp,sp,-16
    80003978:	00813423          	sd	s0,8(sp)
    8000397c:	01010413          	addi	s0,sp,16
    80003980:	00000797          	auipc	a5,0x0
    80003984:	30078793          	addi	a5,a5,768 # 80003c80 <kernelvec>
    80003988:	10579073          	csrw	stvec,a5
    8000398c:	00813403          	ld	s0,8(sp)
    80003990:	01010113          	addi	sp,sp,16
    80003994:	00008067          	ret

0000000080003998 <usertrap>:
    80003998:	ff010113          	addi	sp,sp,-16
    8000399c:	00813423          	sd	s0,8(sp)
    800039a0:	01010413          	addi	s0,sp,16
    800039a4:	00813403          	ld	s0,8(sp)
    800039a8:	01010113          	addi	sp,sp,16
    800039ac:	00008067          	ret

00000000800039b0 <usertrapret>:
    800039b0:	ff010113          	addi	sp,sp,-16
    800039b4:	00813423          	sd	s0,8(sp)
    800039b8:	01010413          	addi	s0,sp,16
    800039bc:	00813403          	ld	s0,8(sp)
    800039c0:	01010113          	addi	sp,sp,16
    800039c4:	00008067          	ret

00000000800039c8 <kerneltrap>:
    800039c8:	fe010113          	addi	sp,sp,-32
    800039cc:	00813823          	sd	s0,16(sp)
    800039d0:	00113c23          	sd	ra,24(sp)
    800039d4:	00913423          	sd	s1,8(sp)
    800039d8:	02010413          	addi	s0,sp,32
    800039dc:	142025f3          	csrr	a1,scause
    800039e0:	100027f3          	csrr	a5,sstatus
    800039e4:	0027f793          	andi	a5,a5,2
    800039e8:	10079c63          	bnez	a5,80003b00 <kerneltrap+0x138>
    800039ec:	142027f3          	csrr	a5,scause
    800039f0:	0207ce63          	bltz	a5,80003a2c <kerneltrap+0x64>
    800039f4:	00003517          	auipc	a0,0x3
    800039f8:	b9c50513          	addi	a0,a0,-1124 # 80006590 <_ZZ12printIntegermE6digits+0x100>
    800039fc:	00001097          	auipc	ra,0x1
    80003a00:	88c080e7          	jalr	-1908(ra) # 80004288 <__printf>
    80003a04:	141025f3          	csrr	a1,sepc
    80003a08:	14302673          	csrr	a2,stval
    80003a0c:	00003517          	auipc	a0,0x3
    80003a10:	b9450513          	addi	a0,a0,-1132 # 800065a0 <_ZZ12printIntegermE6digits+0x110>
    80003a14:	00001097          	auipc	ra,0x1
    80003a18:	874080e7          	jalr	-1932(ra) # 80004288 <__printf>
    80003a1c:	00003517          	auipc	a0,0x3
    80003a20:	b9c50513          	addi	a0,a0,-1124 # 800065b8 <_ZZ12printIntegermE6digits+0x128>
    80003a24:	00001097          	auipc	ra,0x1
    80003a28:	808080e7          	jalr	-2040(ra) # 8000422c <panic>
    80003a2c:	0ff7f713          	andi	a4,a5,255
    80003a30:	00900693          	li	a3,9
    80003a34:	04d70063          	beq	a4,a3,80003a74 <kerneltrap+0xac>
    80003a38:	fff00713          	li	a4,-1
    80003a3c:	03f71713          	slli	a4,a4,0x3f
    80003a40:	00170713          	addi	a4,a4,1
    80003a44:	fae798e3          	bne	a5,a4,800039f4 <kerneltrap+0x2c>
    80003a48:	00000097          	auipc	ra,0x0
    80003a4c:	e00080e7          	jalr	-512(ra) # 80003848 <cpuid>
    80003a50:	06050663          	beqz	a0,80003abc <kerneltrap+0xf4>
    80003a54:	144027f3          	csrr	a5,sip
    80003a58:	ffd7f793          	andi	a5,a5,-3
    80003a5c:	14479073          	csrw	sip,a5
    80003a60:	01813083          	ld	ra,24(sp)
    80003a64:	01013403          	ld	s0,16(sp)
    80003a68:	00813483          	ld	s1,8(sp)
    80003a6c:	02010113          	addi	sp,sp,32
    80003a70:	00008067          	ret
    80003a74:	00000097          	auipc	ra,0x0
    80003a78:	3d0080e7          	jalr	976(ra) # 80003e44 <plic_claim>
    80003a7c:	00a00793          	li	a5,10
    80003a80:	00050493          	mv	s1,a0
    80003a84:	06f50863          	beq	a0,a5,80003af4 <kerneltrap+0x12c>
    80003a88:	fc050ce3          	beqz	a0,80003a60 <kerneltrap+0x98>
    80003a8c:	00050593          	mv	a1,a0
    80003a90:	00003517          	auipc	a0,0x3
    80003a94:	ae050513          	addi	a0,a0,-1312 # 80006570 <_ZZ12printIntegermE6digits+0xe0>
    80003a98:	00000097          	auipc	ra,0x0
    80003a9c:	7f0080e7          	jalr	2032(ra) # 80004288 <__printf>
    80003aa0:	01013403          	ld	s0,16(sp)
    80003aa4:	01813083          	ld	ra,24(sp)
    80003aa8:	00048513          	mv	a0,s1
    80003aac:	00813483          	ld	s1,8(sp)
    80003ab0:	02010113          	addi	sp,sp,32
    80003ab4:	00000317          	auipc	t1,0x0
    80003ab8:	3c830067          	jr	968(t1) # 80003e7c <plic_complete>
    80003abc:	00004517          	auipc	a0,0x4
    80003ac0:	71450513          	addi	a0,a0,1812 # 800081d0 <tickslock>
    80003ac4:	00001097          	auipc	ra,0x1
    80003ac8:	498080e7          	jalr	1176(ra) # 80004f5c <acquire>
    80003acc:	00003717          	auipc	a4,0x3
    80003ad0:	5e870713          	addi	a4,a4,1512 # 800070b4 <ticks>
    80003ad4:	00072783          	lw	a5,0(a4)
    80003ad8:	00004517          	auipc	a0,0x4
    80003adc:	6f850513          	addi	a0,a0,1784 # 800081d0 <tickslock>
    80003ae0:	0017879b          	addiw	a5,a5,1
    80003ae4:	00f72023          	sw	a5,0(a4)
    80003ae8:	00001097          	auipc	ra,0x1
    80003aec:	540080e7          	jalr	1344(ra) # 80005028 <release>
    80003af0:	f65ff06f          	j	80003a54 <kerneltrap+0x8c>
    80003af4:	00001097          	auipc	ra,0x1
    80003af8:	09c080e7          	jalr	156(ra) # 80004b90 <uartintr>
    80003afc:	fa5ff06f          	j	80003aa0 <kerneltrap+0xd8>
    80003b00:	00003517          	auipc	a0,0x3
    80003b04:	a5050513          	addi	a0,a0,-1456 # 80006550 <_ZZ12printIntegermE6digits+0xc0>
    80003b08:	00000097          	auipc	ra,0x0
    80003b0c:	724080e7          	jalr	1828(ra) # 8000422c <panic>

0000000080003b10 <clockintr>:
    80003b10:	fe010113          	addi	sp,sp,-32
    80003b14:	00813823          	sd	s0,16(sp)
    80003b18:	00913423          	sd	s1,8(sp)
    80003b1c:	00113c23          	sd	ra,24(sp)
    80003b20:	02010413          	addi	s0,sp,32
    80003b24:	00004497          	auipc	s1,0x4
    80003b28:	6ac48493          	addi	s1,s1,1708 # 800081d0 <tickslock>
    80003b2c:	00048513          	mv	a0,s1
    80003b30:	00001097          	auipc	ra,0x1
    80003b34:	42c080e7          	jalr	1068(ra) # 80004f5c <acquire>
    80003b38:	00003717          	auipc	a4,0x3
    80003b3c:	57c70713          	addi	a4,a4,1404 # 800070b4 <ticks>
    80003b40:	00072783          	lw	a5,0(a4)
    80003b44:	01013403          	ld	s0,16(sp)
    80003b48:	01813083          	ld	ra,24(sp)
    80003b4c:	00048513          	mv	a0,s1
    80003b50:	0017879b          	addiw	a5,a5,1
    80003b54:	00813483          	ld	s1,8(sp)
    80003b58:	00f72023          	sw	a5,0(a4)
    80003b5c:	02010113          	addi	sp,sp,32
    80003b60:	00001317          	auipc	t1,0x1
    80003b64:	4c830067          	jr	1224(t1) # 80005028 <release>

0000000080003b68 <devintr>:
    80003b68:	142027f3          	csrr	a5,scause
    80003b6c:	00000513          	li	a0,0
    80003b70:	0007c463          	bltz	a5,80003b78 <devintr+0x10>
    80003b74:	00008067          	ret
    80003b78:	fe010113          	addi	sp,sp,-32
    80003b7c:	00813823          	sd	s0,16(sp)
    80003b80:	00113c23          	sd	ra,24(sp)
    80003b84:	00913423          	sd	s1,8(sp)
    80003b88:	02010413          	addi	s0,sp,32
    80003b8c:	0ff7f713          	andi	a4,a5,255
    80003b90:	00900693          	li	a3,9
    80003b94:	04d70c63          	beq	a4,a3,80003bec <devintr+0x84>
    80003b98:	fff00713          	li	a4,-1
    80003b9c:	03f71713          	slli	a4,a4,0x3f
    80003ba0:	00170713          	addi	a4,a4,1
    80003ba4:	00e78c63          	beq	a5,a4,80003bbc <devintr+0x54>
    80003ba8:	01813083          	ld	ra,24(sp)
    80003bac:	01013403          	ld	s0,16(sp)
    80003bb0:	00813483          	ld	s1,8(sp)
    80003bb4:	02010113          	addi	sp,sp,32
    80003bb8:	00008067          	ret
    80003bbc:	00000097          	auipc	ra,0x0
    80003bc0:	c8c080e7          	jalr	-884(ra) # 80003848 <cpuid>
    80003bc4:	06050663          	beqz	a0,80003c30 <devintr+0xc8>
    80003bc8:	144027f3          	csrr	a5,sip
    80003bcc:	ffd7f793          	andi	a5,a5,-3
    80003bd0:	14479073          	csrw	sip,a5
    80003bd4:	01813083          	ld	ra,24(sp)
    80003bd8:	01013403          	ld	s0,16(sp)
    80003bdc:	00813483          	ld	s1,8(sp)
    80003be0:	00200513          	li	a0,2
    80003be4:	02010113          	addi	sp,sp,32
    80003be8:	00008067          	ret
    80003bec:	00000097          	auipc	ra,0x0
    80003bf0:	258080e7          	jalr	600(ra) # 80003e44 <plic_claim>
    80003bf4:	00a00793          	li	a5,10
    80003bf8:	00050493          	mv	s1,a0
    80003bfc:	06f50663          	beq	a0,a5,80003c68 <devintr+0x100>
    80003c00:	00100513          	li	a0,1
    80003c04:	fa0482e3          	beqz	s1,80003ba8 <devintr+0x40>
    80003c08:	00048593          	mv	a1,s1
    80003c0c:	00003517          	auipc	a0,0x3
    80003c10:	96450513          	addi	a0,a0,-1692 # 80006570 <_ZZ12printIntegermE6digits+0xe0>
    80003c14:	00000097          	auipc	ra,0x0
    80003c18:	674080e7          	jalr	1652(ra) # 80004288 <__printf>
    80003c1c:	00048513          	mv	a0,s1
    80003c20:	00000097          	auipc	ra,0x0
    80003c24:	25c080e7          	jalr	604(ra) # 80003e7c <plic_complete>
    80003c28:	00100513          	li	a0,1
    80003c2c:	f7dff06f          	j	80003ba8 <devintr+0x40>
    80003c30:	00004517          	auipc	a0,0x4
    80003c34:	5a050513          	addi	a0,a0,1440 # 800081d0 <tickslock>
    80003c38:	00001097          	auipc	ra,0x1
    80003c3c:	324080e7          	jalr	804(ra) # 80004f5c <acquire>
    80003c40:	00003717          	auipc	a4,0x3
    80003c44:	47470713          	addi	a4,a4,1140 # 800070b4 <ticks>
    80003c48:	00072783          	lw	a5,0(a4)
    80003c4c:	00004517          	auipc	a0,0x4
    80003c50:	58450513          	addi	a0,a0,1412 # 800081d0 <tickslock>
    80003c54:	0017879b          	addiw	a5,a5,1
    80003c58:	00f72023          	sw	a5,0(a4)
    80003c5c:	00001097          	auipc	ra,0x1
    80003c60:	3cc080e7          	jalr	972(ra) # 80005028 <release>
    80003c64:	f65ff06f          	j	80003bc8 <devintr+0x60>
    80003c68:	00001097          	auipc	ra,0x1
    80003c6c:	f28080e7          	jalr	-216(ra) # 80004b90 <uartintr>
    80003c70:	fadff06f          	j	80003c1c <devintr+0xb4>
	...

0000000080003c80 <kernelvec>:
    80003c80:	f0010113          	addi	sp,sp,-256
    80003c84:	00113023          	sd	ra,0(sp)
    80003c88:	00213423          	sd	sp,8(sp)
    80003c8c:	00313823          	sd	gp,16(sp)
    80003c90:	00413c23          	sd	tp,24(sp)
    80003c94:	02513023          	sd	t0,32(sp)
    80003c98:	02613423          	sd	t1,40(sp)
    80003c9c:	02713823          	sd	t2,48(sp)
    80003ca0:	02813c23          	sd	s0,56(sp)
    80003ca4:	04913023          	sd	s1,64(sp)
    80003ca8:	04a13423          	sd	a0,72(sp)
    80003cac:	04b13823          	sd	a1,80(sp)
    80003cb0:	04c13c23          	sd	a2,88(sp)
    80003cb4:	06d13023          	sd	a3,96(sp)
    80003cb8:	06e13423          	sd	a4,104(sp)
    80003cbc:	06f13823          	sd	a5,112(sp)
    80003cc0:	07013c23          	sd	a6,120(sp)
    80003cc4:	09113023          	sd	a7,128(sp)
    80003cc8:	09213423          	sd	s2,136(sp)
    80003ccc:	09313823          	sd	s3,144(sp)
    80003cd0:	09413c23          	sd	s4,152(sp)
    80003cd4:	0b513023          	sd	s5,160(sp)
    80003cd8:	0b613423          	sd	s6,168(sp)
    80003cdc:	0b713823          	sd	s7,176(sp)
    80003ce0:	0b813c23          	sd	s8,184(sp)
    80003ce4:	0d913023          	sd	s9,192(sp)
    80003ce8:	0da13423          	sd	s10,200(sp)
    80003cec:	0db13823          	sd	s11,208(sp)
    80003cf0:	0dc13c23          	sd	t3,216(sp)
    80003cf4:	0fd13023          	sd	t4,224(sp)
    80003cf8:	0fe13423          	sd	t5,232(sp)
    80003cfc:	0ff13823          	sd	t6,240(sp)
    80003d00:	cc9ff0ef          	jal	ra,800039c8 <kerneltrap>
    80003d04:	00013083          	ld	ra,0(sp)
    80003d08:	00813103          	ld	sp,8(sp)
    80003d0c:	01013183          	ld	gp,16(sp)
    80003d10:	02013283          	ld	t0,32(sp)
    80003d14:	02813303          	ld	t1,40(sp)
    80003d18:	03013383          	ld	t2,48(sp)
    80003d1c:	03813403          	ld	s0,56(sp)
    80003d20:	04013483          	ld	s1,64(sp)
    80003d24:	04813503          	ld	a0,72(sp)
    80003d28:	05013583          	ld	a1,80(sp)
    80003d2c:	05813603          	ld	a2,88(sp)
    80003d30:	06013683          	ld	a3,96(sp)
    80003d34:	06813703          	ld	a4,104(sp)
    80003d38:	07013783          	ld	a5,112(sp)
    80003d3c:	07813803          	ld	a6,120(sp)
    80003d40:	08013883          	ld	a7,128(sp)
    80003d44:	08813903          	ld	s2,136(sp)
    80003d48:	09013983          	ld	s3,144(sp)
    80003d4c:	09813a03          	ld	s4,152(sp)
    80003d50:	0a013a83          	ld	s5,160(sp)
    80003d54:	0a813b03          	ld	s6,168(sp)
    80003d58:	0b013b83          	ld	s7,176(sp)
    80003d5c:	0b813c03          	ld	s8,184(sp)
    80003d60:	0c013c83          	ld	s9,192(sp)
    80003d64:	0c813d03          	ld	s10,200(sp)
    80003d68:	0d013d83          	ld	s11,208(sp)
    80003d6c:	0d813e03          	ld	t3,216(sp)
    80003d70:	0e013e83          	ld	t4,224(sp)
    80003d74:	0e813f03          	ld	t5,232(sp)
    80003d78:	0f013f83          	ld	t6,240(sp)
    80003d7c:	10010113          	addi	sp,sp,256
    80003d80:	10200073          	sret
    80003d84:	00000013          	nop
    80003d88:	00000013          	nop
    80003d8c:	00000013          	nop

0000000080003d90 <timervec>:
    80003d90:	34051573          	csrrw	a0,mscratch,a0
    80003d94:	00b53023          	sd	a1,0(a0)
    80003d98:	00c53423          	sd	a2,8(a0)
    80003d9c:	00d53823          	sd	a3,16(a0)
    80003da0:	01853583          	ld	a1,24(a0)
    80003da4:	02053603          	ld	a2,32(a0)
    80003da8:	0005b683          	ld	a3,0(a1)
    80003dac:	00c686b3          	add	a3,a3,a2
    80003db0:	00d5b023          	sd	a3,0(a1)
    80003db4:	00200593          	li	a1,2
    80003db8:	14459073          	csrw	sip,a1
    80003dbc:	01053683          	ld	a3,16(a0)
    80003dc0:	00853603          	ld	a2,8(a0)
    80003dc4:	00053583          	ld	a1,0(a0)
    80003dc8:	34051573          	csrrw	a0,mscratch,a0
    80003dcc:	30200073          	mret

0000000080003dd0 <plicinit>:
    80003dd0:	ff010113          	addi	sp,sp,-16
    80003dd4:	00813423          	sd	s0,8(sp)
    80003dd8:	01010413          	addi	s0,sp,16
    80003ddc:	00813403          	ld	s0,8(sp)
    80003de0:	0c0007b7          	lui	a5,0xc000
    80003de4:	00100713          	li	a4,1
    80003de8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80003dec:	00e7a223          	sw	a4,4(a5)
    80003df0:	01010113          	addi	sp,sp,16
    80003df4:	00008067          	ret

0000000080003df8 <plicinithart>:
    80003df8:	ff010113          	addi	sp,sp,-16
    80003dfc:	00813023          	sd	s0,0(sp)
    80003e00:	00113423          	sd	ra,8(sp)
    80003e04:	01010413          	addi	s0,sp,16
    80003e08:	00000097          	auipc	ra,0x0
    80003e0c:	a40080e7          	jalr	-1472(ra) # 80003848 <cpuid>
    80003e10:	0085171b          	slliw	a4,a0,0x8
    80003e14:	0c0027b7          	lui	a5,0xc002
    80003e18:	00e787b3          	add	a5,a5,a4
    80003e1c:	40200713          	li	a4,1026
    80003e20:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003e24:	00813083          	ld	ra,8(sp)
    80003e28:	00013403          	ld	s0,0(sp)
    80003e2c:	00d5151b          	slliw	a0,a0,0xd
    80003e30:	0c2017b7          	lui	a5,0xc201
    80003e34:	00a78533          	add	a0,a5,a0
    80003e38:	00052023          	sw	zero,0(a0)
    80003e3c:	01010113          	addi	sp,sp,16
    80003e40:	00008067          	ret

0000000080003e44 <plic_claim>:
    80003e44:	ff010113          	addi	sp,sp,-16
    80003e48:	00813023          	sd	s0,0(sp)
    80003e4c:	00113423          	sd	ra,8(sp)
    80003e50:	01010413          	addi	s0,sp,16
    80003e54:	00000097          	auipc	ra,0x0
    80003e58:	9f4080e7          	jalr	-1548(ra) # 80003848 <cpuid>
    80003e5c:	00813083          	ld	ra,8(sp)
    80003e60:	00013403          	ld	s0,0(sp)
    80003e64:	00d5151b          	slliw	a0,a0,0xd
    80003e68:	0c2017b7          	lui	a5,0xc201
    80003e6c:	00a78533          	add	a0,a5,a0
    80003e70:	00452503          	lw	a0,4(a0)
    80003e74:	01010113          	addi	sp,sp,16
    80003e78:	00008067          	ret

0000000080003e7c <plic_complete>:
    80003e7c:	fe010113          	addi	sp,sp,-32
    80003e80:	00813823          	sd	s0,16(sp)
    80003e84:	00913423          	sd	s1,8(sp)
    80003e88:	00113c23          	sd	ra,24(sp)
    80003e8c:	02010413          	addi	s0,sp,32
    80003e90:	00050493          	mv	s1,a0
    80003e94:	00000097          	auipc	ra,0x0
    80003e98:	9b4080e7          	jalr	-1612(ra) # 80003848 <cpuid>
    80003e9c:	01813083          	ld	ra,24(sp)
    80003ea0:	01013403          	ld	s0,16(sp)
    80003ea4:	00d5179b          	slliw	a5,a0,0xd
    80003ea8:	0c201737          	lui	a4,0xc201
    80003eac:	00f707b3          	add	a5,a4,a5
    80003eb0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003eb4:	00813483          	ld	s1,8(sp)
    80003eb8:	02010113          	addi	sp,sp,32
    80003ebc:	00008067          	ret

0000000080003ec0 <consolewrite>:
    80003ec0:	fb010113          	addi	sp,sp,-80
    80003ec4:	04813023          	sd	s0,64(sp)
    80003ec8:	04113423          	sd	ra,72(sp)
    80003ecc:	02913c23          	sd	s1,56(sp)
    80003ed0:	03213823          	sd	s2,48(sp)
    80003ed4:	03313423          	sd	s3,40(sp)
    80003ed8:	03413023          	sd	s4,32(sp)
    80003edc:	01513c23          	sd	s5,24(sp)
    80003ee0:	05010413          	addi	s0,sp,80
    80003ee4:	06c05c63          	blez	a2,80003f5c <consolewrite+0x9c>
    80003ee8:	00060993          	mv	s3,a2
    80003eec:	00050a13          	mv	s4,a0
    80003ef0:	00058493          	mv	s1,a1
    80003ef4:	00000913          	li	s2,0
    80003ef8:	fff00a93          	li	s5,-1
    80003efc:	01c0006f          	j	80003f18 <consolewrite+0x58>
    80003f00:	fbf44503          	lbu	a0,-65(s0)
    80003f04:	0019091b          	addiw	s2,s2,1
    80003f08:	00148493          	addi	s1,s1,1
    80003f0c:	00001097          	auipc	ra,0x1
    80003f10:	a9c080e7          	jalr	-1380(ra) # 800049a8 <uartputc>
    80003f14:	03298063          	beq	s3,s2,80003f34 <consolewrite+0x74>
    80003f18:	00048613          	mv	a2,s1
    80003f1c:	00100693          	li	a3,1
    80003f20:	000a0593          	mv	a1,s4
    80003f24:	fbf40513          	addi	a0,s0,-65
    80003f28:	00000097          	auipc	ra,0x0
    80003f2c:	9d8080e7          	jalr	-1576(ra) # 80003900 <either_copyin>
    80003f30:	fd5518e3          	bne	a0,s5,80003f00 <consolewrite+0x40>
    80003f34:	04813083          	ld	ra,72(sp)
    80003f38:	04013403          	ld	s0,64(sp)
    80003f3c:	03813483          	ld	s1,56(sp)
    80003f40:	02813983          	ld	s3,40(sp)
    80003f44:	02013a03          	ld	s4,32(sp)
    80003f48:	01813a83          	ld	s5,24(sp)
    80003f4c:	00090513          	mv	a0,s2
    80003f50:	03013903          	ld	s2,48(sp)
    80003f54:	05010113          	addi	sp,sp,80
    80003f58:	00008067          	ret
    80003f5c:	00000913          	li	s2,0
    80003f60:	fd5ff06f          	j	80003f34 <consolewrite+0x74>

0000000080003f64 <consoleread>:
    80003f64:	f9010113          	addi	sp,sp,-112
    80003f68:	06813023          	sd	s0,96(sp)
    80003f6c:	04913c23          	sd	s1,88(sp)
    80003f70:	05213823          	sd	s2,80(sp)
    80003f74:	05313423          	sd	s3,72(sp)
    80003f78:	05413023          	sd	s4,64(sp)
    80003f7c:	03513c23          	sd	s5,56(sp)
    80003f80:	03613823          	sd	s6,48(sp)
    80003f84:	03713423          	sd	s7,40(sp)
    80003f88:	03813023          	sd	s8,32(sp)
    80003f8c:	06113423          	sd	ra,104(sp)
    80003f90:	01913c23          	sd	s9,24(sp)
    80003f94:	07010413          	addi	s0,sp,112
    80003f98:	00060b93          	mv	s7,a2
    80003f9c:	00050913          	mv	s2,a0
    80003fa0:	00058c13          	mv	s8,a1
    80003fa4:	00060b1b          	sext.w	s6,a2
    80003fa8:	00004497          	auipc	s1,0x4
    80003fac:	25048493          	addi	s1,s1,592 # 800081f8 <cons>
    80003fb0:	00400993          	li	s3,4
    80003fb4:	fff00a13          	li	s4,-1
    80003fb8:	00a00a93          	li	s5,10
    80003fbc:	05705e63          	blez	s7,80004018 <consoleread+0xb4>
    80003fc0:	09c4a703          	lw	a4,156(s1)
    80003fc4:	0984a783          	lw	a5,152(s1)
    80003fc8:	0007071b          	sext.w	a4,a4
    80003fcc:	08e78463          	beq	a5,a4,80004054 <consoleread+0xf0>
    80003fd0:	07f7f713          	andi	a4,a5,127
    80003fd4:	00e48733          	add	a4,s1,a4
    80003fd8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80003fdc:	0017869b          	addiw	a3,a5,1
    80003fe0:	08d4ac23          	sw	a3,152(s1)
    80003fe4:	00070c9b          	sext.w	s9,a4
    80003fe8:	0b370663          	beq	a4,s3,80004094 <consoleread+0x130>
    80003fec:	00100693          	li	a3,1
    80003ff0:	f9f40613          	addi	a2,s0,-97
    80003ff4:	000c0593          	mv	a1,s8
    80003ff8:	00090513          	mv	a0,s2
    80003ffc:	f8e40fa3          	sb	a4,-97(s0)
    80004000:	00000097          	auipc	ra,0x0
    80004004:	8b4080e7          	jalr	-1868(ra) # 800038b4 <either_copyout>
    80004008:	01450863          	beq	a0,s4,80004018 <consoleread+0xb4>
    8000400c:	001c0c13          	addi	s8,s8,1
    80004010:	fffb8b9b          	addiw	s7,s7,-1
    80004014:	fb5c94e3          	bne	s9,s5,80003fbc <consoleread+0x58>
    80004018:	000b851b          	sext.w	a0,s7
    8000401c:	06813083          	ld	ra,104(sp)
    80004020:	06013403          	ld	s0,96(sp)
    80004024:	05813483          	ld	s1,88(sp)
    80004028:	05013903          	ld	s2,80(sp)
    8000402c:	04813983          	ld	s3,72(sp)
    80004030:	04013a03          	ld	s4,64(sp)
    80004034:	03813a83          	ld	s5,56(sp)
    80004038:	02813b83          	ld	s7,40(sp)
    8000403c:	02013c03          	ld	s8,32(sp)
    80004040:	01813c83          	ld	s9,24(sp)
    80004044:	40ab053b          	subw	a0,s6,a0
    80004048:	03013b03          	ld	s6,48(sp)
    8000404c:	07010113          	addi	sp,sp,112
    80004050:	00008067          	ret
    80004054:	00001097          	auipc	ra,0x1
    80004058:	1d8080e7          	jalr	472(ra) # 8000522c <push_on>
    8000405c:	0984a703          	lw	a4,152(s1)
    80004060:	09c4a783          	lw	a5,156(s1)
    80004064:	0007879b          	sext.w	a5,a5
    80004068:	fef70ce3          	beq	a4,a5,80004060 <consoleread+0xfc>
    8000406c:	00001097          	auipc	ra,0x1
    80004070:	234080e7          	jalr	564(ra) # 800052a0 <pop_on>
    80004074:	0984a783          	lw	a5,152(s1)
    80004078:	07f7f713          	andi	a4,a5,127
    8000407c:	00e48733          	add	a4,s1,a4
    80004080:	01874703          	lbu	a4,24(a4)
    80004084:	0017869b          	addiw	a3,a5,1
    80004088:	08d4ac23          	sw	a3,152(s1)
    8000408c:	00070c9b          	sext.w	s9,a4
    80004090:	f5371ee3          	bne	a4,s3,80003fec <consoleread+0x88>
    80004094:	000b851b          	sext.w	a0,s7
    80004098:	f96bf2e3          	bgeu	s7,s6,8000401c <consoleread+0xb8>
    8000409c:	08f4ac23          	sw	a5,152(s1)
    800040a0:	f7dff06f          	j	8000401c <consoleread+0xb8>

00000000800040a4 <consputc>:
    800040a4:	10000793          	li	a5,256
    800040a8:	00f50663          	beq	a0,a5,800040b4 <consputc+0x10>
    800040ac:	00001317          	auipc	t1,0x1
    800040b0:	9f430067          	jr	-1548(t1) # 80004aa0 <uartputc_sync>
    800040b4:	ff010113          	addi	sp,sp,-16
    800040b8:	00113423          	sd	ra,8(sp)
    800040bc:	00813023          	sd	s0,0(sp)
    800040c0:	01010413          	addi	s0,sp,16
    800040c4:	00800513          	li	a0,8
    800040c8:	00001097          	auipc	ra,0x1
    800040cc:	9d8080e7          	jalr	-1576(ra) # 80004aa0 <uartputc_sync>
    800040d0:	02000513          	li	a0,32
    800040d4:	00001097          	auipc	ra,0x1
    800040d8:	9cc080e7          	jalr	-1588(ra) # 80004aa0 <uartputc_sync>
    800040dc:	00013403          	ld	s0,0(sp)
    800040e0:	00813083          	ld	ra,8(sp)
    800040e4:	00800513          	li	a0,8
    800040e8:	01010113          	addi	sp,sp,16
    800040ec:	00001317          	auipc	t1,0x1
    800040f0:	9b430067          	jr	-1612(t1) # 80004aa0 <uartputc_sync>

00000000800040f4 <consoleintr>:
    800040f4:	fe010113          	addi	sp,sp,-32
    800040f8:	00813823          	sd	s0,16(sp)
    800040fc:	00913423          	sd	s1,8(sp)
    80004100:	01213023          	sd	s2,0(sp)
    80004104:	00113c23          	sd	ra,24(sp)
    80004108:	02010413          	addi	s0,sp,32
    8000410c:	00004917          	auipc	s2,0x4
    80004110:	0ec90913          	addi	s2,s2,236 # 800081f8 <cons>
    80004114:	00050493          	mv	s1,a0
    80004118:	00090513          	mv	a0,s2
    8000411c:	00001097          	auipc	ra,0x1
    80004120:	e40080e7          	jalr	-448(ra) # 80004f5c <acquire>
    80004124:	02048c63          	beqz	s1,8000415c <consoleintr+0x68>
    80004128:	0a092783          	lw	a5,160(s2)
    8000412c:	09892703          	lw	a4,152(s2)
    80004130:	07f00693          	li	a3,127
    80004134:	40e7873b          	subw	a4,a5,a4
    80004138:	02e6e263          	bltu	a3,a4,8000415c <consoleintr+0x68>
    8000413c:	00d00713          	li	a4,13
    80004140:	04e48063          	beq	s1,a4,80004180 <consoleintr+0x8c>
    80004144:	07f7f713          	andi	a4,a5,127
    80004148:	00e90733          	add	a4,s2,a4
    8000414c:	0017879b          	addiw	a5,a5,1
    80004150:	0af92023          	sw	a5,160(s2)
    80004154:	00970c23          	sb	s1,24(a4)
    80004158:	08f92e23          	sw	a5,156(s2)
    8000415c:	01013403          	ld	s0,16(sp)
    80004160:	01813083          	ld	ra,24(sp)
    80004164:	00813483          	ld	s1,8(sp)
    80004168:	00013903          	ld	s2,0(sp)
    8000416c:	00004517          	auipc	a0,0x4
    80004170:	08c50513          	addi	a0,a0,140 # 800081f8 <cons>
    80004174:	02010113          	addi	sp,sp,32
    80004178:	00001317          	auipc	t1,0x1
    8000417c:	eb030067          	jr	-336(t1) # 80005028 <release>
    80004180:	00a00493          	li	s1,10
    80004184:	fc1ff06f          	j	80004144 <consoleintr+0x50>

0000000080004188 <consoleinit>:
    80004188:	fe010113          	addi	sp,sp,-32
    8000418c:	00113c23          	sd	ra,24(sp)
    80004190:	00813823          	sd	s0,16(sp)
    80004194:	00913423          	sd	s1,8(sp)
    80004198:	02010413          	addi	s0,sp,32
    8000419c:	00004497          	auipc	s1,0x4
    800041a0:	05c48493          	addi	s1,s1,92 # 800081f8 <cons>
    800041a4:	00048513          	mv	a0,s1
    800041a8:	00002597          	auipc	a1,0x2
    800041ac:	42058593          	addi	a1,a1,1056 # 800065c8 <_ZZ12printIntegermE6digits+0x138>
    800041b0:	00001097          	auipc	ra,0x1
    800041b4:	d88080e7          	jalr	-632(ra) # 80004f38 <initlock>
    800041b8:	00000097          	auipc	ra,0x0
    800041bc:	7ac080e7          	jalr	1964(ra) # 80004964 <uartinit>
    800041c0:	01813083          	ld	ra,24(sp)
    800041c4:	01013403          	ld	s0,16(sp)
    800041c8:	00000797          	auipc	a5,0x0
    800041cc:	d9c78793          	addi	a5,a5,-612 # 80003f64 <consoleread>
    800041d0:	0af4bc23          	sd	a5,184(s1)
    800041d4:	00000797          	auipc	a5,0x0
    800041d8:	cec78793          	addi	a5,a5,-788 # 80003ec0 <consolewrite>
    800041dc:	0cf4b023          	sd	a5,192(s1)
    800041e0:	00813483          	ld	s1,8(sp)
    800041e4:	02010113          	addi	sp,sp,32
    800041e8:	00008067          	ret

00000000800041ec <console_read>:
    800041ec:	ff010113          	addi	sp,sp,-16
    800041f0:	00813423          	sd	s0,8(sp)
    800041f4:	01010413          	addi	s0,sp,16
    800041f8:	00813403          	ld	s0,8(sp)
    800041fc:	00004317          	auipc	t1,0x4
    80004200:	0b433303          	ld	t1,180(t1) # 800082b0 <devsw+0x10>
    80004204:	01010113          	addi	sp,sp,16
    80004208:	00030067          	jr	t1

000000008000420c <console_write>:
    8000420c:	ff010113          	addi	sp,sp,-16
    80004210:	00813423          	sd	s0,8(sp)
    80004214:	01010413          	addi	s0,sp,16
    80004218:	00813403          	ld	s0,8(sp)
    8000421c:	00004317          	auipc	t1,0x4
    80004220:	09c33303          	ld	t1,156(t1) # 800082b8 <devsw+0x18>
    80004224:	01010113          	addi	sp,sp,16
    80004228:	00030067          	jr	t1

000000008000422c <panic>:
    8000422c:	fe010113          	addi	sp,sp,-32
    80004230:	00113c23          	sd	ra,24(sp)
    80004234:	00813823          	sd	s0,16(sp)
    80004238:	00913423          	sd	s1,8(sp)
    8000423c:	02010413          	addi	s0,sp,32
    80004240:	00050493          	mv	s1,a0
    80004244:	00002517          	auipc	a0,0x2
    80004248:	38c50513          	addi	a0,a0,908 # 800065d0 <_ZZ12printIntegermE6digits+0x140>
    8000424c:	00004797          	auipc	a5,0x4
    80004250:	1007a623          	sw	zero,268(a5) # 80008358 <pr+0x18>
    80004254:	00000097          	auipc	ra,0x0
    80004258:	034080e7          	jalr	52(ra) # 80004288 <__printf>
    8000425c:	00048513          	mv	a0,s1
    80004260:	00000097          	auipc	ra,0x0
    80004264:	028080e7          	jalr	40(ra) # 80004288 <__printf>
    80004268:	00002517          	auipc	a0,0x2
    8000426c:	e2050513          	addi	a0,a0,-480 # 80006088 <CONSOLE_STATUS+0x78>
    80004270:	00000097          	auipc	ra,0x0
    80004274:	018080e7          	jalr	24(ra) # 80004288 <__printf>
    80004278:	00100793          	li	a5,1
    8000427c:	00003717          	auipc	a4,0x3
    80004280:	e2f72e23          	sw	a5,-452(a4) # 800070b8 <panicked>
    80004284:	0000006f          	j	80004284 <panic+0x58>

0000000080004288 <__printf>:
    80004288:	f3010113          	addi	sp,sp,-208
    8000428c:	08813023          	sd	s0,128(sp)
    80004290:	07313423          	sd	s3,104(sp)
    80004294:	09010413          	addi	s0,sp,144
    80004298:	05813023          	sd	s8,64(sp)
    8000429c:	08113423          	sd	ra,136(sp)
    800042a0:	06913c23          	sd	s1,120(sp)
    800042a4:	07213823          	sd	s2,112(sp)
    800042a8:	07413023          	sd	s4,96(sp)
    800042ac:	05513c23          	sd	s5,88(sp)
    800042b0:	05613823          	sd	s6,80(sp)
    800042b4:	05713423          	sd	s7,72(sp)
    800042b8:	03913c23          	sd	s9,56(sp)
    800042bc:	03a13823          	sd	s10,48(sp)
    800042c0:	03b13423          	sd	s11,40(sp)
    800042c4:	00004317          	auipc	t1,0x4
    800042c8:	07c30313          	addi	t1,t1,124 # 80008340 <pr>
    800042cc:	01832c03          	lw	s8,24(t1)
    800042d0:	00b43423          	sd	a1,8(s0)
    800042d4:	00c43823          	sd	a2,16(s0)
    800042d8:	00d43c23          	sd	a3,24(s0)
    800042dc:	02e43023          	sd	a4,32(s0)
    800042e0:	02f43423          	sd	a5,40(s0)
    800042e4:	03043823          	sd	a6,48(s0)
    800042e8:	03143c23          	sd	a7,56(s0)
    800042ec:	00050993          	mv	s3,a0
    800042f0:	4a0c1663          	bnez	s8,8000479c <__printf+0x514>
    800042f4:	60098c63          	beqz	s3,8000490c <__printf+0x684>
    800042f8:	0009c503          	lbu	a0,0(s3)
    800042fc:	00840793          	addi	a5,s0,8
    80004300:	f6f43c23          	sd	a5,-136(s0)
    80004304:	00000493          	li	s1,0
    80004308:	22050063          	beqz	a0,80004528 <__printf+0x2a0>
    8000430c:	00002a37          	lui	s4,0x2
    80004310:	00018ab7          	lui	s5,0x18
    80004314:	000f4b37          	lui	s6,0xf4
    80004318:	00989bb7          	lui	s7,0x989
    8000431c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004320:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004324:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004328:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000432c:	00148c9b          	addiw	s9,s1,1
    80004330:	02500793          	li	a5,37
    80004334:	01998933          	add	s2,s3,s9
    80004338:	38f51263          	bne	a0,a5,800046bc <__printf+0x434>
    8000433c:	00094783          	lbu	a5,0(s2)
    80004340:	00078c9b          	sext.w	s9,a5
    80004344:	1e078263          	beqz	a5,80004528 <__printf+0x2a0>
    80004348:	0024849b          	addiw	s1,s1,2
    8000434c:	07000713          	li	a4,112
    80004350:	00998933          	add	s2,s3,s1
    80004354:	38e78a63          	beq	a5,a4,800046e8 <__printf+0x460>
    80004358:	20f76863          	bltu	a4,a5,80004568 <__printf+0x2e0>
    8000435c:	42a78863          	beq	a5,a0,8000478c <__printf+0x504>
    80004360:	06400713          	li	a4,100
    80004364:	40e79663          	bne	a5,a4,80004770 <__printf+0x4e8>
    80004368:	f7843783          	ld	a5,-136(s0)
    8000436c:	0007a603          	lw	a2,0(a5)
    80004370:	00878793          	addi	a5,a5,8
    80004374:	f6f43c23          	sd	a5,-136(s0)
    80004378:	42064a63          	bltz	a2,800047ac <__printf+0x524>
    8000437c:	00a00713          	li	a4,10
    80004380:	02e677bb          	remuw	a5,a2,a4
    80004384:	00002d97          	auipc	s11,0x2
    80004388:	274d8d93          	addi	s11,s11,628 # 800065f8 <digits>
    8000438c:	00900593          	li	a1,9
    80004390:	0006051b          	sext.w	a0,a2
    80004394:	00000c93          	li	s9,0
    80004398:	02079793          	slli	a5,a5,0x20
    8000439c:	0207d793          	srli	a5,a5,0x20
    800043a0:	00fd87b3          	add	a5,s11,a5
    800043a4:	0007c783          	lbu	a5,0(a5)
    800043a8:	02e656bb          	divuw	a3,a2,a4
    800043ac:	f8f40023          	sb	a5,-128(s0)
    800043b0:	14c5d863          	bge	a1,a2,80004500 <__printf+0x278>
    800043b4:	06300593          	li	a1,99
    800043b8:	00100c93          	li	s9,1
    800043bc:	02e6f7bb          	remuw	a5,a3,a4
    800043c0:	02079793          	slli	a5,a5,0x20
    800043c4:	0207d793          	srli	a5,a5,0x20
    800043c8:	00fd87b3          	add	a5,s11,a5
    800043cc:	0007c783          	lbu	a5,0(a5)
    800043d0:	02e6d73b          	divuw	a4,a3,a4
    800043d4:	f8f400a3          	sb	a5,-127(s0)
    800043d8:	12a5f463          	bgeu	a1,a0,80004500 <__printf+0x278>
    800043dc:	00a00693          	li	a3,10
    800043e0:	00900593          	li	a1,9
    800043e4:	02d777bb          	remuw	a5,a4,a3
    800043e8:	02079793          	slli	a5,a5,0x20
    800043ec:	0207d793          	srli	a5,a5,0x20
    800043f0:	00fd87b3          	add	a5,s11,a5
    800043f4:	0007c503          	lbu	a0,0(a5)
    800043f8:	02d757bb          	divuw	a5,a4,a3
    800043fc:	f8a40123          	sb	a0,-126(s0)
    80004400:	48e5f263          	bgeu	a1,a4,80004884 <__printf+0x5fc>
    80004404:	06300513          	li	a0,99
    80004408:	02d7f5bb          	remuw	a1,a5,a3
    8000440c:	02059593          	slli	a1,a1,0x20
    80004410:	0205d593          	srli	a1,a1,0x20
    80004414:	00bd85b3          	add	a1,s11,a1
    80004418:	0005c583          	lbu	a1,0(a1)
    8000441c:	02d7d7bb          	divuw	a5,a5,a3
    80004420:	f8b401a3          	sb	a1,-125(s0)
    80004424:	48e57263          	bgeu	a0,a4,800048a8 <__printf+0x620>
    80004428:	3e700513          	li	a0,999
    8000442c:	02d7f5bb          	remuw	a1,a5,a3
    80004430:	02059593          	slli	a1,a1,0x20
    80004434:	0205d593          	srli	a1,a1,0x20
    80004438:	00bd85b3          	add	a1,s11,a1
    8000443c:	0005c583          	lbu	a1,0(a1)
    80004440:	02d7d7bb          	divuw	a5,a5,a3
    80004444:	f8b40223          	sb	a1,-124(s0)
    80004448:	46e57663          	bgeu	a0,a4,800048b4 <__printf+0x62c>
    8000444c:	02d7f5bb          	remuw	a1,a5,a3
    80004450:	02059593          	slli	a1,a1,0x20
    80004454:	0205d593          	srli	a1,a1,0x20
    80004458:	00bd85b3          	add	a1,s11,a1
    8000445c:	0005c583          	lbu	a1,0(a1)
    80004460:	02d7d7bb          	divuw	a5,a5,a3
    80004464:	f8b402a3          	sb	a1,-123(s0)
    80004468:	46ea7863          	bgeu	s4,a4,800048d8 <__printf+0x650>
    8000446c:	02d7f5bb          	remuw	a1,a5,a3
    80004470:	02059593          	slli	a1,a1,0x20
    80004474:	0205d593          	srli	a1,a1,0x20
    80004478:	00bd85b3          	add	a1,s11,a1
    8000447c:	0005c583          	lbu	a1,0(a1)
    80004480:	02d7d7bb          	divuw	a5,a5,a3
    80004484:	f8b40323          	sb	a1,-122(s0)
    80004488:	3eeaf863          	bgeu	s5,a4,80004878 <__printf+0x5f0>
    8000448c:	02d7f5bb          	remuw	a1,a5,a3
    80004490:	02059593          	slli	a1,a1,0x20
    80004494:	0205d593          	srli	a1,a1,0x20
    80004498:	00bd85b3          	add	a1,s11,a1
    8000449c:	0005c583          	lbu	a1,0(a1)
    800044a0:	02d7d7bb          	divuw	a5,a5,a3
    800044a4:	f8b403a3          	sb	a1,-121(s0)
    800044a8:	42eb7e63          	bgeu	s6,a4,800048e4 <__printf+0x65c>
    800044ac:	02d7f5bb          	remuw	a1,a5,a3
    800044b0:	02059593          	slli	a1,a1,0x20
    800044b4:	0205d593          	srli	a1,a1,0x20
    800044b8:	00bd85b3          	add	a1,s11,a1
    800044bc:	0005c583          	lbu	a1,0(a1)
    800044c0:	02d7d7bb          	divuw	a5,a5,a3
    800044c4:	f8b40423          	sb	a1,-120(s0)
    800044c8:	42ebfc63          	bgeu	s7,a4,80004900 <__printf+0x678>
    800044cc:	02079793          	slli	a5,a5,0x20
    800044d0:	0207d793          	srli	a5,a5,0x20
    800044d4:	00fd8db3          	add	s11,s11,a5
    800044d8:	000dc703          	lbu	a4,0(s11)
    800044dc:	00a00793          	li	a5,10
    800044e0:	00900c93          	li	s9,9
    800044e4:	f8e404a3          	sb	a4,-119(s0)
    800044e8:	00065c63          	bgez	a2,80004500 <__printf+0x278>
    800044ec:	f9040713          	addi	a4,s0,-112
    800044f0:	00f70733          	add	a4,a4,a5
    800044f4:	02d00693          	li	a3,45
    800044f8:	fed70823          	sb	a3,-16(a4)
    800044fc:	00078c93          	mv	s9,a5
    80004500:	f8040793          	addi	a5,s0,-128
    80004504:	01978cb3          	add	s9,a5,s9
    80004508:	f7f40d13          	addi	s10,s0,-129
    8000450c:	000cc503          	lbu	a0,0(s9)
    80004510:	fffc8c93          	addi	s9,s9,-1
    80004514:	00000097          	auipc	ra,0x0
    80004518:	b90080e7          	jalr	-1136(ra) # 800040a4 <consputc>
    8000451c:	ffac98e3          	bne	s9,s10,8000450c <__printf+0x284>
    80004520:	00094503          	lbu	a0,0(s2)
    80004524:	e00514e3          	bnez	a0,8000432c <__printf+0xa4>
    80004528:	1a0c1663          	bnez	s8,800046d4 <__printf+0x44c>
    8000452c:	08813083          	ld	ra,136(sp)
    80004530:	08013403          	ld	s0,128(sp)
    80004534:	07813483          	ld	s1,120(sp)
    80004538:	07013903          	ld	s2,112(sp)
    8000453c:	06813983          	ld	s3,104(sp)
    80004540:	06013a03          	ld	s4,96(sp)
    80004544:	05813a83          	ld	s5,88(sp)
    80004548:	05013b03          	ld	s6,80(sp)
    8000454c:	04813b83          	ld	s7,72(sp)
    80004550:	04013c03          	ld	s8,64(sp)
    80004554:	03813c83          	ld	s9,56(sp)
    80004558:	03013d03          	ld	s10,48(sp)
    8000455c:	02813d83          	ld	s11,40(sp)
    80004560:	0d010113          	addi	sp,sp,208
    80004564:	00008067          	ret
    80004568:	07300713          	li	a4,115
    8000456c:	1ce78a63          	beq	a5,a4,80004740 <__printf+0x4b8>
    80004570:	07800713          	li	a4,120
    80004574:	1ee79e63          	bne	a5,a4,80004770 <__printf+0x4e8>
    80004578:	f7843783          	ld	a5,-136(s0)
    8000457c:	0007a703          	lw	a4,0(a5)
    80004580:	00878793          	addi	a5,a5,8
    80004584:	f6f43c23          	sd	a5,-136(s0)
    80004588:	28074263          	bltz	a4,8000480c <__printf+0x584>
    8000458c:	00002d97          	auipc	s11,0x2
    80004590:	06cd8d93          	addi	s11,s11,108 # 800065f8 <digits>
    80004594:	00f77793          	andi	a5,a4,15
    80004598:	00fd87b3          	add	a5,s11,a5
    8000459c:	0007c683          	lbu	a3,0(a5)
    800045a0:	00f00613          	li	a2,15
    800045a4:	0007079b          	sext.w	a5,a4
    800045a8:	f8d40023          	sb	a3,-128(s0)
    800045ac:	0047559b          	srliw	a1,a4,0x4
    800045b0:	0047569b          	srliw	a3,a4,0x4
    800045b4:	00000c93          	li	s9,0
    800045b8:	0ee65063          	bge	a2,a4,80004698 <__printf+0x410>
    800045bc:	00f6f693          	andi	a3,a3,15
    800045c0:	00dd86b3          	add	a3,s11,a3
    800045c4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800045c8:	0087d79b          	srliw	a5,a5,0x8
    800045cc:	00100c93          	li	s9,1
    800045d0:	f8d400a3          	sb	a3,-127(s0)
    800045d4:	0cb67263          	bgeu	a2,a1,80004698 <__printf+0x410>
    800045d8:	00f7f693          	andi	a3,a5,15
    800045dc:	00dd86b3          	add	a3,s11,a3
    800045e0:	0006c583          	lbu	a1,0(a3)
    800045e4:	00f00613          	li	a2,15
    800045e8:	0047d69b          	srliw	a3,a5,0x4
    800045ec:	f8b40123          	sb	a1,-126(s0)
    800045f0:	0047d593          	srli	a1,a5,0x4
    800045f4:	28f67e63          	bgeu	a2,a5,80004890 <__printf+0x608>
    800045f8:	00f6f693          	andi	a3,a3,15
    800045fc:	00dd86b3          	add	a3,s11,a3
    80004600:	0006c503          	lbu	a0,0(a3)
    80004604:	0087d813          	srli	a6,a5,0x8
    80004608:	0087d69b          	srliw	a3,a5,0x8
    8000460c:	f8a401a3          	sb	a0,-125(s0)
    80004610:	28b67663          	bgeu	a2,a1,8000489c <__printf+0x614>
    80004614:	00f6f693          	andi	a3,a3,15
    80004618:	00dd86b3          	add	a3,s11,a3
    8000461c:	0006c583          	lbu	a1,0(a3)
    80004620:	00c7d513          	srli	a0,a5,0xc
    80004624:	00c7d69b          	srliw	a3,a5,0xc
    80004628:	f8b40223          	sb	a1,-124(s0)
    8000462c:	29067a63          	bgeu	a2,a6,800048c0 <__printf+0x638>
    80004630:	00f6f693          	andi	a3,a3,15
    80004634:	00dd86b3          	add	a3,s11,a3
    80004638:	0006c583          	lbu	a1,0(a3)
    8000463c:	0107d813          	srli	a6,a5,0x10
    80004640:	0107d69b          	srliw	a3,a5,0x10
    80004644:	f8b402a3          	sb	a1,-123(s0)
    80004648:	28a67263          	bgeu	a2,a0,800048cc <__printf+0x644>
    8000464c:	00f6f693          	andi	a3,a3,15
    80004650:	00dd86b3          	add	a3,s11,a3
    80004654:	0006c683          	lbu	a3,0(a3)
    80004658:	0147d79b          	srliw	a5,a5,0x14
    8000465c:	f8d40323          	sb	a3,-122(s0)
    80004660:	21067663          	bgeu	a2,a6,8000486c <__printf+0x5e4>
    80004664:	02079793          	slli	a5,a5,0x20
    80004668:	0207d793          	srli	a5,a5,0x20
    8000466c:	00fd8db3          	add	s11,s11,a5
    80004670:	000dc683          	lbu	a3,0(s11)
    80004674:	00800793          	li	a5,8
    80004678:	00700c93          	li	s9,7
    8000467c:	f8d403a3          	sb	a3,-121(s0)
    80004680:	00075c63          	bgez	a4,80004698 <__printf+0x410>
    80004684:	f9040713          	addi	a4,s0,-112
    80004688:	00f70733          	add	a4,a4,a5
    8000468c:	02d00693          	li	a3,45
    80004690:	fed70823          	sb	a3,-16(a4)
    80004694:	00078c93          	mv	s9,a5
    80004698:	f8040793          	addi	a5,s0,-128
    8000469c:	01978cb3          	add	s9,a5,s9
    800046a0:	f7f40d13          	addi	s10,s0,-129
    800046a4:	000cc503          	lbu	a0,0(s9)
    800046a8:	fffc8c93          	addi	s9,s9,-1
    800046ac:	00000097          	auipc	ra,0x0
    800046b0:	9f8080e7          	jalr	-1544(ra) # 800040a4 <consputc>
    800046b4:	ff9d18e3          	bne	s10,s9,800046a4 <__printf+0x41c>
    800046b8:	0100006f          	j	800046c8 <__printf+0x440>
    800046bc:	00000097          	auipc	ra,0x0
    800046c0:	9e8080e7          	jalr	-1560(ra) # 800040a4 <consputc>
    800046c4:	000c8493          	mv	s1,s9
    800046c8:	00094503          	lbu	a0,0(s2)
    800046cc:	c60510e3          	bnez	a0,8000432c <__printf+0xa4>
    800046d0:	e40c0ee3          	beqz	s8,8000452c <__printf+0x2a4>
    800046d4:	00004517          	auipc	a0,0x4
    800046d8:	c6c50513          	addi	a0,a0,-916 # 80008340 <pr>
    800046dc:	00001097          	auipc	ra,0x1
    800046e0:	94c080e7          	jalr	-1716(ra) # 80005028 <release>
    800046e4:	e49ff06f          	j	8000452c <__printf+0x2a4>
    800046e8:	f7843783          	ld	a5,-136(s0)
    800046ec:	03000513          	li	a0,48
    800046f0:	01000d13          	li	s10,16
    800046f4:	00878713          	addi	a4,a5,8
    800046f8:	0007bc83          	ld	s9,0(a5)
    800046fc:	f6e43c23          	sd	a4,-136(s0)
    80004700:	00000097          	auipc	ra,0x0
    80004704:	9a4080e7          	jalr	-1628(ra) # 800040a4 <consputc>
    80004708:	07800513          	li	a0,120
    8000470c:	00000097          	auipc	ra,0x0
    80004710:	998080e7          	jalr	-1640(ra) # 800040a4 <consputc>
    80004714:	00002d97          	auipc	s11,0x2
    80004718:	ee4d8d93          	addi	s11,s11,-284 # 800065f8 <digits>
    8000471c:	03ccd793          	srli	a5,s9,0x3c
    80004720:	00fd87b3          	add	a5,s11,a5
    80004724:	0007c503          	lbu	a0,0(a5)
    80004728:	fffd0d1b          	addiw	s10,s10,-1
    8000472c:	004c9c93          	slli	s9,s9,0x4
    80004730:	00000097          	auipc	ra,0x0
    80004734:	974080e7          	jalr	-1676(ra) # 800040a4 <consputc>
    80004738:	fe0d12e3          	bnez	s10,8000471c <__printf+0x494>
    8000473c:	f8dff06f          	j	800046c8 <__printf+0x440>
    80004740:	f7843783          	ld	a5,-136(s0)
    80004744:	0007bc83          	ld	s9,0(a5)
    80004748:	00878793          	addi	a5,a5,8
    8000474c:	f6f43c23          	sd	a5,-136(s0)
    80004750:	000c9a63          	bnez	s9,80004764 <__printf+0x4dc>
    80004754:	1080006f          	j	8000485c <__printf+0x5d4>
    80004758:	001c8c93          	addi	s9,s9,1
    8000475c:	00000097          	auipc	ra,0x0
    80004760:	948080e7          	jalr	-1720(ra) # 800040a4 <consputc>
    80004764:	000cc503          	lbu	a0,0(s9)
    80004768:	fe0518e3          	bnez	a0,80004758 <__printf+0x4d0>
    8000476c:	f5dff06f          	j	800046c8 <__printf+0x440>
    80004770:	02500513          	li	a0,37
    80004774:	00000097          	auipc	ra,0x0
    80004778:	930080e7          	jalr	-1744(ra) # 800040a4 <consputc>
    8000477c:	000c8513          	mv	a0,s9
    80004780:	00000097          	auipc	ra,0x0
    80004784:	924080e7          	jalr	-1756(ra) # 800040a4 <consputc>
    80004788:	f41ff06f          	j	800046c8 <__printf+0x440>
    8000478c:	02500513          	li	a0,37
    80004790:	00000097          	auipc	ra,0x0
    80004794:	914080e7          	jalr	-1772(ra) # 800040a4 <consputc>
    80004798:	f31ff06f          	j	800046c8 <__printf+0x440>
    8000479c:	00030513          	mv	a0,t1
    800047a0:	00000097          	auipc	ra,0x0
    800047a4:	7bc080e7          	jalr	1980(ra) # 80004f5c <acquire>
    800047a8:	b4dff06f          	j	800042f4 <__printf+0x6c>
    800047ac:	40c0053b          	negw	a0,a2
    800047b0:	00a00713          	li	a4,10
    800047b4:	02e576bb          	remuw	a3,a0,a4
    800047b8:	00002d97          	auipc	s11,0x2
    800047bc:	e40d8d93          	addi	s11,s11,-448 # 800065f8 <digits>
    800047c0:	ff700593          	li	a1,-9
    800047c4:	02069693          	slli	a3,a3,0x20
    800047c8:	0206d693          	srli	a3,a3,0x20
    800047cc:	00dd86b3          	add	a3,s11,a3
    800047d0:	0006c683          	lbu	a3,0(a3)
    800047d4:	02e557bb          	divuw	a5,a0,a4
    800047d8:	f8d40023          	sb	a3,-128(s0)
    800047dc:	10b65e63          	bge	a2,a1,800048f8 <__printf+0x670>
    800047e0:	06300593          	li	a1,99
    800047e4:	02e7f6bb          	remuw	a3,a5,a4
    800047e8:	02069693          	slli	a3,a3,0x20
    800047ec:	0206d693          	srli	a3,a3,0x20
    800047f0:	00dd86b3          	add	a3,s11,a3
    800047f4:	0006c683          	lbu	a3,0(a3)
    800047f8:	02e7d73b          	divuw	a4,a5,a4
    800047fc:	00200793          	li	a5,2
    80004800:	f8d400a3          	sb	a3,-127(s0)
    80004804:	bca5ece3          	bltu	a1,a0,800043dc <__printf+0x154>
    80004808:	ce5ff06f          	j	800044ec <__printf+0x264>
    8000480c:	40e007bb          	negw	a5,a4
    80004810:	00002d97          	auipc	s11,0x2
    80004814:	de8d8d93          	addi	s11,s11,-536 # 800065f8 <digits>
    80004818:	00f7f693          	andi	a3,a5,15
    8000481c:	00dd86b3          	add	a3,s11,a3
    80004820:	0006c583          	lbu	a1,0(a3)
    80004824:	ff100613          	li	a2,-15
    80004828:	0047d69b          	srliw	a3,a5,0x4
    8000482c:	f8b40023          	sb	a1,-128(s0)
    80004830:	0047d59b          	srliw	a1,a5,0x4
    80004834:	0ac75e63          	bge	a4,a2,800048f0 <__printf+0x668>
    80004838:	00f6f693          	andi	a3,a3,15
    8000483c:	00dd86b3          	add	a3,s11,a3
    80004840:	0006c603          	lbu	a2,0(a3)
    80004844:	00f00693          	li	a3,15
    80004848:	0087d79b          	srliw	a5,a5,0x8
    8000484c:	f8c400a3          	sb	a2,-127(s0)
    80004850:	d8b6e4e3          	bltu	a3,a1,800045d8 <__printf+0x350>
    80004854:	00200793          	li	a5,2
    80004858:	e2dff06f          	j	80004684 <__printf+0x3fc>
    8000485c:	00002c97          	auipc	s9,0x2
    80004860:	d7cc8c93          	addi	s9,s9,-644 # 800065d8 <_ZZ12printIntegermE6digits+0x148>
    80004864:	02800513          	li	a0,40
    80004868:	ef1ff06f          	j	80004758 <__printf+0x4d0>
    8000486c:	00700793          	li	a5,7
    80004870:	00600c93          	li	s9,6
    80004874:	e0dff06f          	j	80004680 <__printf+0x3f8>
    80004878:	00700793          	li	a5,7
    8000487c:	00600c93          	li	s9,6
    80004880:	c69ff06f          	j	800044e8 <__printf+0x260>
    80004884:	00300793          	li	a5,3
    80004888:	00200c93          	li	s9,2
    8000488c:	c5dff06f          	j	800044e8 <__printf+0x260>
    80004890:	00300793          	li	a5,3
    80004894:	00200c93          	li	s9,2
    80004898:	de9ff06f          	j	80004680 <__printf+0x3f8>
    8000489c:	00400793          	li	a5,4
    800048a0:	00300c93          	li	s9,3
    800048a4:	dddff06f          	j	80004680 <__printf+0x3f8>
    800048a8:	00400793          	li	a5,4
    800048ac:	00300c93          	li	s9,3
    800048b0:	c39ff06f          	j	800044e8 <__printf+0x260>
    800048b4:	00500793          	li	a5,5
    800048b8:	00400c93          	li	s9,4
    800048bc:	c2dff06f          	j	800044e8 <__printf+0x260>
    800048c0:	00500793          	li	a5,5
    800048c4:	00400c93          	li	s9,4
    800048c8:	db9ff06f          	j	80004680 <__printf+0x3f8>
    800048cc:	00600793          	li	a5,6
    800048d0:	00500c93          	li	s9,5
    800048d4:	dadff06f          	j	80004680 <__printf+0x3f8>
    800048d8:	00600793          	li	a5,6
    800048dc:	00500c93          	li	s9,5
    800048e0:	c09ff06f          	j	800044e8 <__printf+0x260>
    800048e4:	00800793          	li	a5,8
    800048e8:	00700c93          	li	s9,7
    800048ec:	bfdff06f          	j	800044e8 <__printf+0x260>
    800048f0:	00100793          	li	a5,1
    800048f4:	d91ff06f          	j	80004684 <__printf+0x3fc>
    800048f8:	00100793          	li	a5,1
    800048fc:	bf1ff06f          	j	800044ec <__printf+0x264>
    80004900:	00900793          	li	a5,9
    80004904:	00800c93          	li	s9,8
    80004908:	be1ff06f          	j	800044e8 <__printf+0x260>
    8000490c:	00002517          	auipc	a0,0x2
    80004910:	cd450513          	addi	a0,a0,-812 # 800065e0 <_ZZ12printIntegermE6digits+0x150>
    80004914:	00000097          	auipc	ra,0x0
    80004918:	918080e7          	jalr	-1768(ra) # 8000422c <panic>

000000008000491c <printfinit>:
    8000491c:	fe010113          	addi	sp,sp,-32
    80004920:	00813823          	sd	s0,16(sp)
    80004924:	00913423          	sd	s1,8(sp)
    80004928:	00113c23          	sd	ra,24(sp)
    8000492c:	02010413          	addi	s0,sp,32
    80004930:	00004497          	auipc	s1,0x4
    80004934:	a1048493          	addi	s1,s1,-1520 # 80008340 <pr>
    80004938:	00048513          	mv	a0,s1
    8000493c:	00002597          	auipc	a1,0x2
    80004940:	cb458593          	addi	a1,a1,-844 # 800065f0 <_ZZ12printIntegermE6digits+0x160>
    80004944:	00000097          	auipc	ra,0x0
    80004948:	5f4080e7          	jalr	1524(ra) # 80004f38 <initlock>
    8000494c:	01813083          	ld	ra,24(sp)
    80004950:	01013403          	ld	s0,16(sp)
    80004954:	0004ac23          	sw	zero,24(s1)
    80004958:	00813483          	ld	s1,8(sp)
    8000495c:	02010113          	addi	sp,sp,32
    80004960:	00008067          	ret

0000000080004964 <uartinit>:
    80004964:	ff010113          	addi	sp,sp,-16
    80004968:	00813423          	sd	s0,8(sp)
    8000496c:	01010413          	addi	s0,sp,16
    80004970:	100007b7          	lui	a5,0x10000
    80004974:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004978:	f8000713          	li	a4,-128
    8000497c:	00e781a3          	sb	a4,3(a5)
    80004980:	00300713          	li	a4,3
    80004984:	00e78023          	sb	a4,0(a5)
    80004988:	000780a3          	sb	zero,1(a5)
    8000498c:	00e781a3          	sb	a4,3(a5)
    80004990:	00700693          	li	a3,7
    80004994:	00d78123          	sb	a3,2(a5)
    80004998:	00e780a3          	sb	a4,1(a5)
    8000499c:	00813403          	ld	s0,8(sp)
    800049a0:	01010113          	addi	sp,sp,16
    800049a4:	00008067          	ret

00000000800049a8 <uartputc>:
    800049a8:	00002797          	auipc	a5,0x2
    800049ac:	7107a783          	lw	a5,1808(a5) # 800070b8 <panicked>
    800049b0:	00078463          	beqz	a5,800049b8 <uartputc+0x10>
    800049b4:	0000006f          	j	800049b4 <uartputc+0xc>
    800049b8:	fd010113          	addi	sp,sp,-48
    800049bc:	02813023          	sd	s0,32(sp)
    800049c0:	00913c23          	sd	s1,24(sp)
    800049c4:	01213823          	sd	s2,16(sp)
    800049c8:	01313423          	sd	s3,8(sp)
    800049cc:	02113423          	sd	ra,40(sp)
    800049d0:	03010413          	addi	s0,sp,48
    800049d4:	00002917          	auipc	s2,0x2
    800049d8:	6ec90913          	addi	s2,s2,1772 # 800070c0 <uart_tx_r>
    800049dc:	00093783          	ld	a5,0(s2)
    800049e0:	00002497          	auipc	s1,0x2
    800049e4:	6e848493          	addi	s1,s1,1768 # 800070c8 <uart_tx_w>
    800049e8:	0004b703          	ld	a4,0(s1)
    800049ec:	02078693          	addi	a3,a5,32
    800049f0:	00050993          	mv	s3,a0
    800049f4:	02e69c63          	bne	a3,a4,80004a2c <uartputc+0x84>
    800049f8:	00001097          	auipc	ra,0x1
    800049fc:	834080e7          	jalr	-1996(ra) # 8000522c <push_on>
    80004a00:	00093783          	ld	a5,0(s2)
    80004a04:	0004b703          	ld	a4,0(s1)
    80004a08:	02078793          	addi	a5,a5,32
    80004a0c:	00e79463          	bne	a5,a4,80004a14 <uartputc+0x6c>
    80004a10:	0000006f          	j	80004a10 <uartputc+0x68>
    80004a14:	00001097          	auipc	ra,0x1
    80004a18:	88c080e7          	jalr	-1908(ra) # 800052a0 <pop_on>
    80004a1c:	00093783          	ld	a5,0(s2)
    80004a20:	0004b703          	ld	a4,0(s1)
    80004a24:	02078693          	addi	a3,a5,32
    80004a28:	fce688e3          	beq	a3,a4,800049f8 <uartputc+0x50>
    80004a2c:	01f77693          	andi	a3,a4,31
    80004a30:	00004597          	auipc	a1,0x4
    80004a34:	93058593          	addi	a1,a1,-1744 # 80008360 <uart_tx_buf>
    80004a38:	00d586b3          	add	a3,a1,a3
    80004a3c:	00170713          	addi	a4,a4,1
    80004a40:	01368023          	sb	s3,0(a3)
    80004a44:	00e4b023          	sd	a4,0(s1)
    80004a48:	10000637          	lui	a2,0x10000
    80004a4c:	02f71063          	bne	a4,a5,80004a6c <uartputc+0xc4>
    80004a50:	0340006f          	j	80004a84 <uartputc+0xdc>
    80004a54:	00074703          	lbu	a4,0(a4)
    80004a58:	00f93023          	sd	a5,0(s2)
    80004a5c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004a60:	00093783          	ld	a5,0(s2)
    80004a64:	0004b703          	ld	a4,0(s1)
    80004a68:	00f70e63          	beq	a4,a5,80004a84 <uartputc+0xdc>
    80004a6c:	00564683          	lbu	a3,5(a2)
    80004a70:	01f7f713          	andi	a4,a5,31
    80004a74:	00e58733          	add	a4,a1,a4
    80004a78:	0206f693          	andi	a3,a3,32
    80004a7c:	00178793          	addi	a5,a5,1
    80004a80:	fc069ae3          	bnez	a3,80004a54 <uartputc+0xac>
    80004a84:	02813083          	ld	ra,40(sp)
    80004a88:	02013403          	ld	s0,32(sp)
    80004a8c:	01813483          	ld	s1,24(sp)
    80004a90:	01013903          	ld	s2,16(sp)
    80004a94:	00813983          	ld	s3,8(sp)
    80004a98:	03010113          	addi	sp,sp,48
    80004a9c:	00008067          	ret

0000000080004aa0 <uartputc_sync>:
    80004aa0:	ff010113          	addi	sp,sp,-16
    80004aa4:	00813423          	sd	s0,8(sp)
    80004aa8:	01010413          	addi	s0,sp,16
    80004aac:	00002717          	auipc	a4,0x2
    80004ab0:	60c72703          	lw	a4,1548(a4) # 800070b8 <panicked>
    80004ab4:	02071663          	bnez	a4,80004ae0 <uartputc_sync+0x40>
    80004ab8:	00050793          	mv	a5,a0
    80004abc:	100006b7          	lui	a3,0x10000
    80004ac0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004ac4:	02077713          	andi	a4,a4,32
    80004ac8:	fe070ce3          	beqz	a4,80004ac0 <uartputc_sync+0x20>
    80004acc:	0ff7f793          	andi	a5,a5,255
    80004ad0:	00f68023          	sb	a5,0(a3)
    80004ad4:	00813403          	ld	s0,8(sp)
    80004ad8:	01010113          	addi	sp,sp,16
    80004adc:	00008067          	ret
    80004ae0:	0000006f          	j	80004ae0 <uartputc_sync+0x40>

0000000080004ae4 <uartstart>:
    80004ae4:	ff010113          	addi	sp,sp,-16
    80004ae8:	00813423          	sd	s0,8(sp)
    80004aec:	01010413          	addi	s0,sp,16
    80004af0:	00002617          	auipc	a2,0x2
    80004af4:	5d060613          	addi	a2,a2,1488 # 800070c0 <uart_tx_r>
    80004af8:	00002517          	auipc	a0,0x2
    80004afc:	5d050513          	addi	a0,a0,1488 # 800070c8 <uart_tx_w>
    80004b00:	00063783          	ld	a5,0(a2)
    80004b04:	00053703          	ld	a4,0(a0)
    80004b08:	04f70263          	beq	a4,a5,80004b4c <uartstart+0x68>
    80004b0c:	100005b7          	lui	a1,0x10000
    80004b10:	00004817          	auipc	a6,0x4
    80004b14:	85080813          	addi	a6,a6,-1968 # 80008360 <uart_tx_buf>
    80004b18:	01c0006f          	j	80004b34 <uartstart+0x50>
    80004b1c:	0006c703          	lbu	a4,0(a3)
    80004b20:	00f63023          	sd	a5,0(a2)
    80004b24:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004b28:	00063783          	ld	a5,0(a2)
    80004b2c:	00053703          	ld	a4,0(a0)
    80004b30:	00f70e63          	beq	a4,a5,80004b4c <uartstart+0x68>
    80004b34:	01f7f713          	andi	a4,a5,31
    80004b38:	00e806b3          	add	a3,a6,a4
    80004b3c:	0055c703          	lbu	a4,5(a1)
    80004b40:	00178793          	addi	a5,a5,1
    80004b44:	02077713          	andi	a4,a4,32
    80004b48:	fc071ae3          	bnez	a4,80004b1c <uartstart+0x38>
    80004b4c:	00813403          	ld	s0,8(sp)
    80004b50:	01010113          	addi	sp,sp,16
    80004b54:	00008067          	ret

0000000080004b58 <uartgetc>:
    80004b58:	ff010113          	addi	sp,sp,-16
    80004b5c:	00813423          	sd	s0,8(sp)
    80004b60:	01010413          	addi	s0,sp,16
    80004b64:	10000737          	lui	a4,0x10000
    80004b68:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004b6c:	0017f793          	andi	a5,a5,1
    80004b70:	00078c63          	beqz	a5,80004b88 <uartgetc+0x30>
    80004b74:	00074503          	lbu	a0,0(a4)
    80004b78:	0ff57513          	andi	a0,a0,255
    80004b7c:	00813403          	ld	s0,8(sp)
    80004b80:	01010113          	addi	sp,sp,16
    80004b84:	00008067          	ret
    80004b88:	fff00513          	li	a0,-1
    80004b8c:	ff1ff06f          	j	80004b7c <uartgetc+0x24>

0000000080004b90 <uartintr>:
    80004b90:	100007b7          	lui	a5,0x10000
    80004b94:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004b98:	0017f793          	andi	a5,a5,1
    80004b9c:	0a078463          	beqz	a5,80004c44 <uartintr+0xb4>
    80004ba0:	fe010113          	addi	sp,sp,-32
    80004ba4:	00813823          	sd	s0,16(sp)
    80004ba8:	00913423          	sd	s1,8(sp)
    80004bac:	00113c23          	sd	ra,24(sp)
    80004bb0:	02010413          	addi	s0,sp,32
    80004bb4:	100004b7          	lui	s1,0x10000
    80004bb8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004bbc:	0ff57513          	andi	a0,a0,255
    80004bc0:	fffff097          	auipc	ra,0xfffff
    80004bc4:	534080e7          	jalr	1332(ra) # 800040f4 <consoleintr>
    80004bc8:	0054c783          	lbu	a5,5(s1)
    80004bcc:	0017f793          	andi	a5,a5,1
    80004bd0:	fe0794e3          	bnez	a5,80004bb8 <uartintr+0x28>
    80004bd4:	00002617          	auipc	a2,0x2
    80004bd8:	4ec60613          	addi	a2,a2,1260 # 800070c0 <uart_tx_r>
    80004bdc:	00002517          	auipc	a0,0x2
    80004be0:	4ec50513          	addi	a0,a0,1260 # 800070c8 <uart_tx_w>
    80004be4:	00063783          	ld	a5,0(a2)
    80004be8:	00053703          	ld	a4,0(a0)
    80004bec:	04f70263          	beq	a4,a5,80004c30 <uartintr+0xa0>
    80004bf0:	100005b7          	lui	a1,0x10000
    80004bf4:	00003817          	auipc	a6,0x3
    80004bf8:	76c80813          	addi	a6,a6,1900 # 80008360 <uart_tx_buf>
    80004bfc:	01c0006f          	j	80004c18 <uartintr+0x88>
    80004c00:	0006c703          	lbu	a4,0(a3)
    80004c04:	00f63023          	sd	a5,0(a2)
    80004c08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004c0c:	00063783          	ld	a5,0(a2)
    80004c10:	00053703          	ld	a4,0(a0)
    80004c14:	00f70e63          	beq	a4,a5,80004c30 <uartintr+0xa0>
    80004c18:	01f7f713          	andi	a4,a5,31
    80004c1c:	00e806b3          	add	a3,a6,a4
    80004c20:	0055c703          	lbu	a4,5(a1)
    80004c24:	00178793          	addi	a5,a5,1
    80004c28:	02077713          	andi	a4,a4,32
    80004c2c:	fc071ae3          	bnez	a4,80004c00 <uartintr+0x70>
    80004c30:	01813083          	ld	ra,24(sp)
    80004c34:	01013403          	ld	s0,16(sp)
    80004c38:	00813483          	ld	s1,8(sp)
    80004c3c:	02010113          	addi	sp,sp,32
    80004c40:	00008067          	ret
    80004c44:	00002617          	auipc	a2,0x2
    80004c48:	47c60613          	addi	a2,a2,1148 # 800070c0 <uart_tx_r>
    80004c4c:	00002517          	auipc	a0,0x2
    80004c50:	47c50513          	addi	a0,a0,1148 # 800070c8 <uart_tx_w>
    80004c54:	00063783          	ld	a5,0(a2)
    80004c58:	00053703          	ld	a4,0(a0)
    80004c5c:	04f70263          	beq	a4,a5,80004ca0 <uartintr+0x110>
    80004c60:	100005b7          	lui	a1,0x10000
    80004c64:	00003817          	auipc	a6,0x3
    80004c68:	6fc80813          	addi	a6,a6,1788 # 80008360 <uart_tx_buf>
    80004c6c:	01c0006f          	j	80004c88 <uartintr+0xf8>
    80004c70:	0006c703          	lbu	a4,0(a3)
    80004c74:	00f63023          	sd	a5,0(a2)
    80004c78:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004c7c:	00063783          	ld	a5,0(a2)
    80004c80:	00053703          	ld	a4,0(a0)
    80004c84:	02f70063          	beq	a4,a5,80004ca4 <uartintr+0x114>
    80004c88:	01f7f713          	andi	a4,a5,31
    80004c8c:	00e806b3          	add	a3,a6,a4
    80004c90:	0055c703          	lbu	a4,5(a1)
    80004c94:	00178793          	addi	a5,a5,1
    80004c98:	02077713          	andi	a4,a4,32
    80004c9c:	fc071ae3          	bnez	a4,80004c70 <uartintr+0xe0>
    80004ca0:	00008067          	ret
    80004ca4:	00008067          	ret

0000000080004ca8 <kinit>:
    80004ca8:	fc010113          	addi	sp,sp,-64
    80004cac:	02913423          	sd	s1,40(sp)
    80004cb0:	fffff7b7          	lui	a5,0xfffff
    80004cb4:	00004497          	auipc	s1,0x4
    80004cb8:	6db48493          	addi	s1,s1,1755 # 8000938f <end+0xfff>
    80004cbc:	02813823          	sd	s0,48(sp)
    80004cc0:	01313c23          	sd	s3,24(sp)
    80004cc4:	00f4f4b3          	and	s1,s1,a5
    80004cc8:	02113c23          	sd	ra,56(sp)
    80004ccc:	03213023          	sd	s2,32(sp)
    80004cd0:	01413823          	sd	s4,16(sp)
    80004cd4:	01513423          	sd	s5,8(sp)
    80004cd8:	04010413          	addi	s0,sp,64
    80004cdc:	000017b7          	lui	a5,0x1
    80004ce0:	01100993          	li	s3,17
    80004ce4:	00f487b3          	add	a5,s1,a5
    80004ce8:	01b99993          	slli	s3,s3,0x1b
    80004cec:	06f9e063          	bltu	s3,a5,80004d4c <kinit+0xa4>
    80004cf0:	00003a97          	auipc	s5,0x3
    80004cf4:	6a0a8a93          	addi	s5,s5,1696 # 80008390 <end>
    80004cf8:	0754ec63          	bltu	s1,s5,80004d70 <kinit+0xc8>
    80004cfc:	0734fa63          	bgeu	s1,s3,80004d70 <kinit+0xc8>
    80004d00:	00088a37          	lui	s4,0x88
    80004d04:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004d08:	00002917          	auipc	s2,0x2
    80004d0c:	3c890913          	addi	s2,s2,968 # 800070d0 <kmem>
    80004d10:	00ca1a13          	slli	s4,s4,0xc
    80004d14:	0140006f          	j	80004d28 <kinit+0x80>
    80004d18:	000017b7          	lui	a5,0x1
    80004d1c:	00f484b3          	add	s1,s1,a5
    80004d20:	0554e863          	bltu	s1,s5,80004d70 <kinit+0xc8>
    80004d24:	0534f663          	bgeu	s1,s3,80004d70 <kinit+0xc8>
    80004d28:	00001637          	lui	a2,0x1
    80004d2c:	00100593          	li	a1,1
    80004d30:	00048513          	mv	a0,s1
    80004d34:	00000097          	auipc	ra,0x0
    80004d38:	5e4080e7          	jalr	1508(ra) # 80005318 <__memset>
    80004d3c:	00093783          	ld	a5,0(s2)
    80004d40:	00f4b023          	sd	a5,0(s1)
    80004d44:	00993023          	sd	s1,0(s2)
    80004d48:	fd4498e3          	bne	s1,s4,80004d18 <kinit+0x70>
    80004d4c:	03813083          	ld	ra,56(sp)
    80004d50:	03013403          	ld	s0,48(sp)
    80004d54:	02813483          	ld	s1,40(sp)
    80004d58:	02013903          	ld	s2,32(sp)
    80004d5c:	01813983          	ld	s3,24(sp)
    80004d60:	01013a03          	ld	s4,16(sp)
    80004d64:	00813a83          	ld	s5,8(sp)
    80004d68:	04010113          	addi	sp,sp,64
    80004d6c:	00008067          	ret
    80004d70:	00002517          	auipc	a0,0x2
    80004d74:	8a050513          	addi	a0,a0,-1888 # 80006610 <digits+0x18>
    80004d78:	fffff097          	auipc	ra,0xfffff
    80004d7c:	4b4080e7          	jalr	1204(ra) # 8000422c <panic>

0000000080004d80 <freerange>:
    80004d80:	fc010113          	addi	sp,sp,-64
    80004d84:	000017b7          	lui	a5,0x1
    80004d88:	02913423          	sd	s1,40(sp)
    80004d8c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004d90:	009504b3          	add	s1,a0,s1
    80004d94:	fffff537          	lui	a0,0xfffff
    80004d98:	02813823          	sd	s0,48(sp)
    80004d9c:	02113c23          	sd	ra,56(sp)
    80004da0:	03213023          	sd	s2,32(sp)
    80004da4:	01313c23          	sd	s3,24(sp)
    80004da8:	01413823          	sd	s4,16(sp)
    80004dac:	01513423          	sd	s5,8(sp)
    80004db0:	01613023          	sd	s6,0(sp)
    80004db4:	04010413          	addi	s0,sp,64
    80004db8:	00a4f4b3          	and	s1,s1,a0
    80004dbc:	00f487b3          	add	a5,s1,a5
    80004dc0:	06f5e463          	bltu	a1,a5,80004e28 <freerange+0xa8>
    80004dc4:	00003a97          	auipc	s5,0x3
    80004dc8:	5cca8a93          	addi	s5,s5,1484 # 80008390 <end>
    80004dcc:	0954e263          	bltu	s1,s5,80004e50 <freerange+0xd0>
    80004dd0:	01100993          	li	s3,17
    80004dd4:	01b99993          	slli	s3,s3,0x1b
    80004dd8:	0734fc63          	bgeu	s1,s3,80004e50 <freerange+0xd0>
    80004ddc:	00058a13          	mv	s4,a1
    80004de0:	00002917          	auipc	s2,0x2
    80004de4:	2f090913          	addi	s2,s2,752 # 800070d0 <kmem>
    80004de8:	00002b37          	lui	s6,0x2
    80004dec:	0140006f          	j	80004e00 <freerange+0x80>
    80004df0:	000017b7          	lui	a5,0x1
    80004df4:	00f484b3          	add	s1,s1,a5
    80004df8:	0554ec63          	bltu	s1,s5,80004e50 <freerange+0xd0>
    80004dfc:	0534fa63          	bgeu	s1,s3,80004e50 <freerange+0xd0>
    80004e00:	00001637          	lui	a2,0x1
    80004e04:	00100593          	li	a1,1
    80004e08:	00048513          	mv	a0,s1
    80004e0c:	00000097          	auipc	ra,0x0
    80004e10:	50c080e7          	jalr	1292(ra) # 80005318 <__memset>
    80004e14:	00093703          	ld	a4,0(s2)
    80004e18:	016487b3          	add	a5,s1,s6
    80004e1c:	00e4b023          	sd	a4,0(s1)
    80004e20:	00993023          	sd	s1,0(s2)
    80004e24:	fcfa76e3          	bgeu	s4,a5,80004df0 <freerange+0x70>
    80004e28:	03813083          	ld	ra,56(sp)
    80004e2c:	03013403          	ld	s0,48(sp)
    80004e30:	02813483          	ld	s1,40(sp)
    80004e34:	02013903          	ld	s2,32(sp)
    80004e38:	01813983          	ld	s3,24(sp)
    80004e3c:	01013a03          	ld	s4,16(sp)
    80004e40:	00813a83          	ld	s5,8(sp)
    80004e44:	00013b03          	ld	s6,0(sp)
    80004e48:	04010113          	addi	sp,sp,64
    80004e4c:	00008067          	ret
    80004e50:	00001517          	auipc	a0,0x1
    80004e54:	7c050513          	addi	a0,a0,1984 # 80006610 <digits+0x18>
    80004e58:	fffff097          	auipc	ra,0xfffff
    80004e5c:	3d4080e7          	jalr	980(ra) # 8000422c <panic>

0000000080004e60 <kfree>:
    80004e60:	fe010113          	addi	sp,sp,-32
    80004e64:	00813823          	sd	s0,16(sp)
    80004e68:	00113c23          	sd	ra,24(sp)
    80004e6c:	00913423          	sd	s1,8(sp)
    80004e70:	02010413          	addi	s0,sp,32
    80004e74:	03451793          	slli	a5,a0,0x34
    80004e78:	04079c63          	bnez	a5,80004ed0 <kfree+0x70>
    80004e7c:	00003797          	auipc	a5,0x3
    80004e80:	51478793          	addi	a5,a5,1300 # 80008390 <end>
    80004e84:	00050493          	mv	s1,a0
    80004e88:	04f56463          	bltu	a0,a5,80004ed0 <kfree+0x70>
    80004e8c:	01100793          	li	a5,17
    80004e90:	01b79793          	slli	a5,a5,0x1b
    80004e94:	02f57e63          	bgeu	a0,a5,80004ed0 <kfree+0x70>
    80004e98:	00001637          	lui	a2,0x1
    80004e9c:	00100593          	li	a1,1
    80004ea0:	00000097          	auipc	ra,0x0
    80004ea4:	478080e7          	jalr	1144(ra) # 80005318 <__memset>
    80004ea8:	00002797          	auipc	a5,0x2
    80004eac:	22878793          	addi	a5,a5,552 # 800070d0 <kmem>
    80004eb0:	0007b703          	ld	a4,0(a5)
    80004eb4:	01813083          	ld	ra,24(sp)
    80004eb8:	01013403          	ld	s0,16(sp)
    80004ebc:	00e4b023          	sd	a4,0(s1)
    80004ec0:	0097b023          	sd	s1,0(a5)
    80004ec4:	00813483          	ld	s1,8(sp)
    80004ec8:	02010113          	addi	sp,sp,32
    80004ecc:	00008067          	ret
    80004ed0:	00001517          	auipc	a0,0x1
    80004ed4:	74050513          	addi	a0,a0,1856 # 80006610 <digits+0x18>
    80004ed8:	fffff097          	auipc	ra,0xfffff
    80004edc:	354080e7          	jalr	852(ra) # 8000422c <panic>

0000000080004ee0 <kalloc>:
    80004ee0:	fe010113          	addi	sp,sp,-32
    80004ee4:	00813823          	sd	s0,16(sp)
    80004ee8:	00913423          	sd	s1,8(sp)
    80004eec:	00113c23          	sd	ra,24(sp)
    80004ef0:	02010413          	addi	s0,sp,32
    80004ef4:	00002797          	auipc	a5,0x2
    80004ef8:	1dc78793          	addi	a5,a5,476 # 800070d0 <kmem>
    80004efc:	0007b483          	ld	s1,0(a5)
    80004f00:	02048063          	beqz	s1,80004f20 <kalloc+0x40>
    80004f04:	0004b703          	ld	a4,0(s1)
    80004f08:	00001637          	lui	a2,0x1
    80004f0c:	00500593          	li	a1,5
    80004f10:	00048513          	mv	a0,s1
    80004f14:	00e7b023          	sd	a4,0(a5)
    80004f18:	00000097          	auipc	ra,0x0
    80004f1c:	400080e7          	jalr	1024(ra) # 80005318 <__memset>
    80004f20:	01813083          	ld	ra,24(sp)
    80004f24:	01013403          	ld	s0,16(sp)
    80004f28:	00048513          	mv	a0,s1
    80004f2c:	00813483          	ld	s1,8(sp)
    80004f30:	02010113          	addi	sp,sp,32
    80004f34:	00008067          	ret

0000000080004f38 <initlock>:
    80004f38:	ff010113          	addi	sp,sp,-16
    80004f3c:	00813423          	sd	s0,8(sp)
    80004f40:	01010413          	addi	s0,sp,16
    80004f44:	00813403          	ld	s0,8(sp)
    80004f48:	00b53423          	sd	a1,8(a0)
    80004f4c:	00052023          	sw	zero,0(a0)
    80004f50:	00053823          	sd	zero,16(a0)
    80004f54:	01010113          	addi	sp,sp,16
    80004f58:	00008067          	ret

0000000080004f5c <acquire>:
    80004f5c:	fe010113          	addi	sp,sp,-32
    80004f60:	00813823          	sd	s0,16(sp)
    80004f64:	00913423          	sd	s1,8(sp)
    80004f68:	00113c23          	sd	ra,24(sp)
    80004f6c:	01213023          	sd	s2,0(sp)
    80004f70:	02010413          	addi	s0,sp,32
    80004f74:	00050493          	mv	s1,a0
    80004f78:	10002973          	csrr	s2,sstatus
    80004f7c:	100027f3          	csrr	a5,sstatus
    80004f80:	ffd7f793          	andi	a5,a5,-3
    80004f84:	10079073          	csrw	sstatus,a5
    80004f88:	fffff097          	auipc	ra,0xfffff
    80004f8c:	8e0080e7          	jalr	-1824(ra) # 80003868 <mycpu>
    80004f90:	07852783          	lw	a5,120(a0)
    80004f94:	06078e63          	beqz	a5,80005010 <acquire+0xb4>
    80004f98:	fffff097          	auipc	ra,0xfffff
    80004f9c:	8d0080e7          	jalr	-1840(ra) # 80003868 <mycpu>
    80004fa0:	07852783          	lw	a5,120(a0)
    80004fa4:	0004a703          	lw	a4,0(s1)
    80004fa8:	0017879b          	addiw	a5,a5,1
    80004fac:	06f52c23          	sw	a5,120(a0)
    80004fb0:	04071063          	bnez	a4,80004ff0 <acquire+0x94>
    80004fb4:	00100713          	li	a4,1
    80004fb8:	00070793          	mv	a5,a4
    80004fbc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004fc0:	0007879b          	sext.w	a5,a5
    80004fc4:	fe079ae3          	bnez	a5,80004fb8 <acquire+0x5c>
    80004fc8:	0ff0000f          	fence
    80004fcc:	fffff097          	auipc	ra,0xfffff
    80004fd0:	89c080e7          	jalr	-1892(ra) # 80003868 <mycpu>
    80004fd4:	01813083          	ld	ra,24(sp)
    80004fd8:	01013403          	ld	s0,16(sp)
    80004fdc:	00a4b823          	sd	a0,16(s1)
    80004fe0:	00013903          	ld	s2,0(sp)
    80004fe4:	00813483          	ld	s1,8(sp)
    80004fe8:	02010113          	addi	sp,sp,32
    80004fec:	00008067          	ret
    80004ff0:	0104b903          	ld	s2,16(s1)
    80004ff4:	fffff097          	auipc	ra,0xfffff
    80004ff8:	874080e7          	jalr	-1932(ra) # 80003868 <mycpu>
    80004ffc:	faa91ce3          	bne	s2,a0,80004fb4 <acquire+0x58>
    80005000:	00001517          	auipc	a0,0x1
    80005004:	61850513          	addi	a0,a0,1560 # 80006618 <digits+0x20>
    80005008:	fffff097          	auipc	ra,0xfffff
    8000500c:	224080e7          	jalr	548(ra) # 8000422c <panic>
    80005010:	00195913          	srli	s2,s2,0x1
    80005014:	fffff097          	auipc	ra,0xfffff
    80005018:	854080e7          	jalr	-1964(ra) # 80003868 <mycpu>
    8000501c:	00197913          	andi	s2,s2,1
    80005020:	07252e23          	sw	s2,124(a0)
    80005024:	f75ff06f          	j	80004f98 <acquire+0x3c>

0000000080005028 <release>:
    80005028:	fe010113          	addi	sp,sp,-32
    8000502c:	00813823          	sd	s0,16(sp)
    80005030:	00113c23          	sd	ra,24(sp)
    80005034:	00913423          	sd	s1,8(sp)
    80005038:	01213023          	sd	s2,0(sp)
    8000503c:	02010413          	addi	s0,sp,32
    80005040:	00052783          	lw	a5,0(a0)
    80005044:	00079a63          	bnez	a5,80005058 <release+0x30>
    80005048:	00001517          	auipc	a0,0x1
    8000504c:	5d850513          	addi	a0,a0,1496 # 80006620 <digits+0x28>
    80005050:	fffff097          	auipc	ra,0xfffff
    80005054:	1dc080e7          	jalr	476(ra) # 8000422c <panic>
    80005058:	01053903          	ld	s2,16(a0)
    8000505c:	00050493          	mv	s1,a0
    80005060:	fffff097          	auipc	ra,0xfffff
    80005064:	808080e7          	jalr	-2040(ra) # 80003868 <mycpu>
    80005068:	fea910e3          	bne	s2,a0,80005048 <release+0x20>
    8000506c:	0004b823          	sd	zero,16(s1)
    80005070:	0ff0000f          	fence
    80005074:	0f50000f          	fence	iorw,ow
    80005078:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000507c:	ffffe097          	auipc	ra,0xffffe
    80005080:	7ec080e7          	jalr	2028(ra) # 80003868 <mycpu>
    80005084:	100027f3          	csrr	a5,sstatus
    80005088:	0027f793          	andi	a5,a5,2
    8000508c:	04079a63          	bnez	a5,800050e0 <release+0xb8>
    80005090:	07852783          	lw	a5,120(a0)
    80005094:	02f05e63          	blez	a5,800050d0 <release+0xa8>
    80005098:	fff7871b          	addiw	a4,a5,-1
    8000509c:	06e52c23          	sw	a4,120(a0)
    800050a0:	00071c63          	bnez	a4,800050b8 <release+0x90>
    800050a4:	07c52783          	lw	a5,124(a0)
    800050a8:	00078863          	beqz	a5,800050b8 <release+0x90>
    800050ac:	100027f3          	csrr	a5,sstatus
    800050b0:	0027e793          	ori	a5,a5,2
    800050b4:	10079073          	csrw	sstatus,a5
    800050b8:	01813083          	ld	ra,24(sp)
    800050bc:	01013403          	ld	s0,16(sp)
    800050c0:	00813483          	ld	s1,8(sp)
    800050c4:	00013903          	ld	s2,0(sp)
    800050c8:	02010113          	addi	sp,sp,32
    800050cc:	00008067          	ret
    800050d0:	00001517          	auipc	a0,0x1
    800050d4:	57050513          	addi	a0,a0,1392 # 80006640 <digits+0x48>
    800050d8:	fffff097          	auipc	ra,0xfffff
    800050dc:	154080e7          	jalr	340(ra) # 8000422c <panic>
    800050e0:	00001517          	auipc	a0,0x1
    800050e4:	54850513          	addi	a0,a0,1352 # 80006628 <digits+0x30>
    800050e8:	fffff097          	auipc	ra,0xfffff
    800050ec:	144080e7          	jalr	324(ra) # 8000422c <panic>

00000000800050f0 <holding>:
    800050f0:	00052783          	lw	a5,0(a0)
    800050f4:	00079663          	bnez	a5,80005100 <holding+0x10>
    800050f8:	00000513          	li	a0,0
    800050fc:	00008067          	ret
    80005100:	fe010113          	addi	sp,sp,-32
    80005104:	00813823          	sd	s0,16(sp)
    80005108:	00913423          	sd	s1,8(sp)
    8000510c:	00113c23          	sd	ra,24(sp)
    80005110:	02010413          	addi	s0,sp,32
    80005114:	01053483          	ld	s1,16(a0)
    80005118:	ffffe097          	auipc	ra,0xffffe
    8000511c:	750080e7          	jalr	1872(ra) # 80003868 <mycpu>
    80005120:	01813083          	ld	ra,24(sp)
    80005124:	01013403          	ld	s0,16(sp)
    80005128:	40a48533          	sub	a0,s1,a0
    8000512c:	00153513          	seqz	a0,a0
    80005130:	00813483          	ld	s1,8(sp)
    80005134:	02010113          	addi	sp,sp,32
    80005138:	00008067          	ret

000000008000513c <push_off>:
    8000513c:	fe010113          	addi	sp,sp,-32
    80005140:	00813823          	sd	s0,16(sp)
    80005144:	00113c23          	sd	ra,24(sp)
    80005148:	00913423          	sd	s1,8(sp)
    8000514c:	02010413          	addi	s0,sp,32
    80005150:	100024f3          	csrr	s1,sstatus
    80005154:	100027f3          	csrr	a5,sstatus
    80005158:	ffd7f793          	andi	a5,a5,-3
    8000515c:	10079073          	csrw	sstatus,a5
    80005160:	ffffe097          	auipc	ra,0xffffe
    80005164:	708080e7          	jalr	1800(ra) # 80003868 <mycpu>
    80005168:	07852783          	lw	a5,120(a0)
    8000516c:	02078663          	beqz	a5,80005198 <push_off+0x5c>
    80005170:	ffffe097          	auipc	ra,0xffffe
    80005174:	6f8080e7          	jalr	1784(ra) # 80003868 <mycpu>
    80005178:	07852783          	lw	a5,120(a0)
    8000517c:	01813083          	ld	ra,24(sp)
    80005180:	01013403          	ld	s0,16(sp)
    80005184:	0017879b          	addiw	a5,a5,1
    80005188:	06f52c23          	sw	a5,120(a0)
    8000518c:	00813483          	ld	s1,8(sp)
    80005190:	02010113          	addi	sp,sp,32
    80005194:	00008067          	ret
    80005198:	0014d493          	srli	s1,s1,0x1
    8000519c:	ffffe097          	auipc	ra,0xffffe
    800051a0:	6cc080e7          	jalr	1740(ra) # 80003868 <mycpu>
    800051a4:	0014f493          	andi	s1,s1,1
    800051a8:	06952e23          	sw	s1,124(a0)
    800051ac:	fc5ff06f          	j	80005170 <push_off+0x34>

00000000800051b0 <pop_off>:
    800051b0:	ff010113          	addi	sp,sp,-16
    800051b4:	00813023          	sd	s0,0(sp)
    800051b8:	00113423          	sd	ra,8(sp)
    800051bc:	01010413          	addi	s0,sp,16
    800051c0:	ffffe097          	auipc	ra,0xffffe
    800051c4:	6a8080e7          	jalr	1704(ra) # 80003868 <mycpu>
    800051c8:	100027f3          	csrr	a5,sstatus
    800051cc:	0027f793          	andi	a5,a5,2
    800051d0:	04079663          	bnez	a5,8000521c <pop_off+0x6c>
    800051d4:	07852783          	lw	a5,120(a0)
    800051d8:	02f05a63          	blez	a5,8000520c <pop_off+0x5c>
    800051dc:	fff7871b          	addiw	a4,a5,-1
    800051e0:	06e52c23          	sw	a4,120(a0)
    800051e4:	00071c63          	bnez	a4,800051fc <pop_off+0x4c>
    800051e8:	07c52783          	lw	a5,124(a0)
    800051ec:	00078863          	beqz	a5,800051fc <pop_off+0x4c>
    800051f0:	100027f3          	csrr	a5,sstatus
    800051f4:	0027e793          	ori	a5,a5,2
    800051f8:	10079073          	csrw	sstatus,a5
    800051fc:	00813083          	ld	ra,8(sp)
    80005200:	00013403          	ld	s0,0(sp)
    80005204:	01010113          	addi	sp,sp,16
    80005208:	00008067          	ret
    8000520c:	00001517          	auipc	a0,0x1
    80005210:	43450513          	addi	a0,a0,1076 # 80006640 <digits+0x48>
    80005214:	fffff097          	auipc	ra,0xfffff
    80005218:	018080e7          	jalr	24(ra) # 8000422c <panic>
    8000521c:	00001517          	auipc	a0,0x1
    80005220:	40c50513          	addi	a0,a0,1036 # 80006628 <digits+0x30>
    80005224:	fffff097          	auipc	ra,0xfffff
    80005228:	008080e7          	jalr	8(ra) # 8000422c <panic>

000000008000522c <push_on>:
    8000522c:	fe010113          	addi	sp,sp,-32
    80005230:	00813823          	sd	s0,16(sp)
    80005234:	00113c23          	sd	ra,24(sp)
    80005238:	00913423          	sd	s1,8(sp)
    8000523c:	02010413          	addi	s0,sp,32
    80005240:	100024f3          	csrr	s1,sstatus
    80005244:	100027f3          	csrr	a5,sstatus
    80005248:	0027e793          	ori	a5,a5,2
    8000524c:	10079073          	csrw	sstatus,a5
    80005250:	ffffe097          	auipc	ra,0xffffe
    80005254:	618080e7          	jalr	1560(ra) # 80003868 <mycpu>
    80005258:	07852783          	lw	a5,120(a0)
    8000525c:	02078663          	beqz	a5,80005288 <push_on+0x5c>
    80005260:	ffffe097          	auipc	ra,0xffffe
    80005264:	608080e7          	jalr	1544(ra) # 80003868 <mycpu>
    80005268:	07852783          	lw	a5,120(a0)
    8000526c:	01813083          	ld	ra,24(sp)
    80005270:	01013403          	ld	s0,16(sp)
    80005274:	0017879b          	addiw	a5,a5,1
    80005278:	06f52c23          	sw	a5,120(a0)
    8000527c:	00813483          	ld	s1,8(sp)
    80005280:	02010113          	addi	sp,sp,32
    80005284:	00008067          	ret
    80005288:	0014d493          	srli	s1,s1,0x1
    8000528c:	ffffe097          	auipc	ra,0xffffe
    80005290:	5dc080e7          	jalr	1500(ra) # 80003868 <mycpu>
    80005294:	0014f493          	andi	s1,s1,1
    80005298:	06952e23          	sw	s1,124(a0)
    8000529c:	fc5ff06f          	j	80005260 <push_on+0x34>

00000000800052a0 <pop_on>:
    800052a0:	ff010113          	addi	sp,sp,-16
    800052a4:	00813023          	sd	s0,0(sp)
    800052a8:	00113423          	sd	ra,8(sp)
    800052ac:	01010413          	addi	s0,sp,16
    800052b0:	ffffe097          	auipc	ra,0xffffe
    800052b4:	5b8080e7          	jalr	1464(ra) # 80003868 <mycpu>
    800052b8:	100027f3          	csrr	a5,sstatus
    800052bc:	0027f793          	andi	a5,a5,2
    800052c0:	04078463          	beqz	a5,80005308 <pop_on+0x68>
    800052c4:	07852783          	lw	a5,120(a0)
    800052c8:	02f05863          	blez	a5,800052f8 <pop_on+0x58>
    800052cc:	fff7879b          	addiw	a5,a5,-1
    800052d0:	06f52c23          	sw	a5,120(a0)
    800052d4:	07853783          	ld	a5,120(a0)
    800052d8:	00079863          	bnez	a5,800052e8 <pop_on+0x48>
    800052dc:	100027f3          	csrr	a5,sstatus
    800052e0:	ffd7f793          	andi	a5,a5,-3
    800052e4:	10079073          	csrw	sstatus,a5
    800052e8:	00813083          	ld	ra,8(sp)
    800052ec:	00013403          	ld	s0,0(sp)
    800052f0:	01010113          	addi	sp,sp,16
    800052f4:	00008067          	ret
    800052f8:	00001517          	auipc	a0,0x1
    800052fc:	37050513          	addi	a0,a0,880 # 80006668 <digits+0x70>
    80005300:	fffff097          	auipc	ra,0xfffff
    80005304:	f2c080e7          	jalr	-212(ra) # 8000422c <panic>
    80005308:	00001517          	auipc	a0,0x1
    8000530c:	34050513          	addi	a0,a0,832 # 80006648 <digits+0x50>
    80005310:	fffff097          	auipc	ra,0xfffff
    80005314:	f1c080e7          	jalr	-228(ra) # 8000422c <panic>

0000000080005318 <__memset>:
    80005318:	ff010113          	addi	sp,sp,-16
    8000531c:	00813423          	sd	s0,8(sp)
    80005320:	01010413          	addi	s0,sp,16
    80005324:	1a060e63          	beqz	a2,800054e0 <__memset+0x1c8>
    80005328:	40a007b3          	neg	a5,a0
    8000532c:	0077f793          	andi	a5,a5,7
    80005330:	00778693          	addi	a3,a5,7
    80005334:	00b00813          	li	a6,11
    80005338:	0ff5f593          	andi	a1,a1,255
    8000533c:	fff6071b          	addiw	a4,a2,-1
    80005340:	1b06e663          	bltu	a3,a6,800054ec <__memset+0x1d4>
    80005344:	1cd76463          	bltu	a4,a3,8000550c <__memset+0x1f4>
    80005348:	1a078e63          	beqz	a5,80005504 <__memset+0x1ec>
    8000534c:	00b50023          	sb	a1,0(a0)
    80005350:	00100713          	li	a4,1
    80005354:	1ae78463          	beq	a5,a4,800054fc <__memset+0x1e4>
    80005358:	00b500a3          	sb	a1,1(a0)
    8000535c:	00200713          	li	a4,2
    80005360:	1ae78a63          	beq	a5,a4,80005514 <__memset+0x1fc>
    80005364:	00b50123          	sb	a1,2(a0)
    80005368:	00300713          	li	a4,3
    8000536c:	18e78463          	beq	a5,a4,800054f4 <__memset+0x1dc>
    80005370:	00b501a3          	sb	a1,3(a0)
    80005374:	00400713          	li	a4,4
    80005378:	1ae78263          	beq	a5,a4,8000551c <__memset+0x204>
    8000537c:	00b50223          	sb	a1,4(a0)
    80005380:	00500713          	li	a4,5
    80005384:	1ae78063          	beq	a5,a4,80005524 <__memset+0x20c>
    80005388:	00b502a3          	sb	a1,5(a0)
    8000538c:	00700713          	li	a4,7
    80005390:	18e79e63          	bne	a5,a4,8000552c <__memset+0x214>
    80005394:	00b50323          	sb	a1,6(a0)
    80005398:	00700e93          	li	t4,7
    8000539c:	00859713          	slli	a4,a1,0x8
    800053a0:	00e5e733          	or	a4,a1,a4
    800053a4:	01059e13          	slli	t3,a1,0x10
    800053a8:	01c76e33          	or	t3,a4,t3
    800053ac:	01859313          	slli	t1,a1,0x18
    800053b0:	006e6333          	or	t1,t3,t1
    800053b4:	02059893          	slli	a7,a1,0x20
    800053b8:	40f60e3b          	subw	t3,a2,a5
    800053bc:	011368b3          	or	a7,t1,a7
    800053c0:	02859813          	slli	a6,a1,0x28
    800053c4:	0108e833          	or	a6,a7,a6
    800053c8:	03059693          	slli	a3,a1,0x30
    800053cc:	003e589b          	srliw	a7,t3,0x3
    800053d0:	00d866b3          	or	a3,a6,a3
    800053d4:	03859713          	slli	a4,a1,0x38
    800053d8:	00389813          	slli	a6,a7,0x3
    800053dc:	00f507b3          	add	a5,a0,a5
    800053e0:	00e6e733          	or	a4,a3,a4
    800053e4:	000e089b          	sext.w	a7,t3
    800053e8:	00f806b3          	add	a3,a6,a5
    800053ec:	00e7b023          	sd	a4,0(a5)
    800053f0:	00878793          	addi	a5,a5,8
    800053f4:	fed79ce3          	bne	a5,a3,800053ec <__memset+0xd4>
    800053f8:	ff8e7793          	andi	a5,t3,-8
    800053fc:	0007871b          	sext.w	a4,a5
    80005400:	01d787bb          	addw	a5,a5,t4
    80005404:	0ce88e63          	beq	a7,a4,800054e0 <__memset+0x1c8>
    80005408:	00f50733          	add	a4,a0,a5
    8000540c:	00b70023          	sb	a1,0(a4)
    80005410:	0017871b          	addiw	a4,a5,1
    80005414:	0cc77663          	bgeu	a4,a2,800054e0 <__memset+0x1c8>
    80005418:	00e50733          	add	a4,a0,a4
    8000541c:	00b70023          	sb	a1,0(a4)
    80005420:	0027871b          	addiw	a4,a5,2
    80005424:	0ac77e63          	bgeu	a4,a2,800054e0 <__memset+0x1c8>
    80005428:	00e50733          	add	a4,a0,a4
    8000542c:	00b70023          	sb	a1,0(a4)
    80005430:	0037871b          	addiw	a4,a5,3
    80005434:	0ac77663          	bgeu	a4,a2,800054e0 <__memset+0x1c8>
    80005438:	00e50733          	add	a4,a0,a4
    8000543c:	00b70023          	sb	a1,0(a4)
    80005440:	0047871b          	addiw	a4,a5,4
    80005444:	08c77e63          	bgeu	a4,a2,800054e0 <__memset+0x1c8>
    80005448:	00e50733          	add	a4,a0,a4
    8000544c:	00b70023          	sb	a1,0(a4)
    80005450:	0057871b          	addiw	a4,a5,5
    80005454:	08c77663          	bgeu	a4,a2,800054e0 <__memset+0x1c8>
    80005458:	00e50733          	add	a4,a0,a4
    8000545c:	00b70023          	sb	a1,0(a4)
    80005460:	0067871b          	addiw	a4,a5,6
    80005464:	06c77e63          	bgeu	a4,a2,800054e0 <__memset+0x1c8>
    80005468:	00e50733          	add	a4,a0,a4
    8000546c:	00b70023          	sb	a1,0(a4)
    80005470:	0077871b          	addiw	a4,a5,7
    80005474:	06c77663          	bgeu	a4,a2,800054e0 <__memset+0x1c8>
    80005478:	00e50733          	add	a4,a0,a4
    8000547c:	00b70023          	sb	a1,0(a4)
    80005480:	0087871b          	addiw	a4,a5,8
    80005484:	04c77e63          	bgeu	a4,a2,800054e0 <__memset+0x1c8>
    80005488:	00e50733          	add	a4,a0,a4
    8000548c:	00b70023          	sb	a1,0(a4)
    80005490:	0097871b          	addiw	a4,a5,9
    80005494:	04c77663          	bgeu	a4,a2,800054e0 <__memset+0x1c8>
    80005498:	00e50733          	add	a4,a0,a4
    8000549c:	00b70023          	sb	a1,0(a4)
    800054a0:	00a7871b          	addiw	a4,a5,10
    800054a4:	02c77e63          	bgeu	a4,a2,800054e0 <__memset+0x1c8>
    800054a8:	00e50733          	add	a4,a0,a4
    800054ac:	00b70023          	sb	a1,0(a4)
    800054b0:	00b7871b          	addiw	a4,a5,11
    800054b4:	02c77663          	bgeu	a4,a2,800054e0 <__memset+0x1c8>
    800054b8:	00e50733          	add	a4,a0,a4
    800054bc:	00b70023          	sb	a1,0(a4)
    800054c0:	00c7871b          	addiw	a4,a5,12
    800054c4:	00c77e63          	bgeu	a4,a2,800054e0 <__memset+0x1c8>
    800054c8:	00e50733          	add	a4,a0,a4
    800054cc:	00b70023          	sb	a1,0(a4)
    800054d0:	00d7879b          	addiw	a5,a5,13
    800054d4:	00c7f663          	bgeu	a5,a2,800054e0 <__memset+0x1c8>
    800054d8:	00f507b3          	add	a5,a0,a5
    800054dc:	00b78023          	sb	a1,0(a5)
    800054e0:	00813403          	ld	s0,8(sp)
    800054e4:	01010113          	addi	sp,sp,16
    800054e8:	00008067          	ret
    800054ec:	00b00693          	li	a3,11
    800054f0:	e55ff06f          	j	80005344 <__memset+0x2c>
    800054f4:	00300e93          	li	t4,3
    800054f8:	ea5ff06f          	j	8000539c <__memset+0x84>
    800054fc:	00100e93          	li	t4,1
    80005500:	e9dff06f          	j	8000539c <__memset+0x84>
    80005504:	00000e93          	li	t4,0
    80005508:	e95ff06f          	j	8000539c <__memset+0x84>
    8000550c:	00000793          	li	a5,0
    80005510:	ef9ff06f          	j	80005408 <__memset+0xf0>
    80005514:	00200e93          	li	t4,2
    80005518:	e85ff06f          	j	8000539c <__memset+0x84>
    8000551c:	00400e93          	li	t4,4
    80005520:	e7dff06f          	j	8000539c <__memset+0x84>
    80005524:	00500e93          	li	t4,5
    80005528:	e75ff06f          	j	8000539c <__memset+0x84>
    8000552c:	00600e93          	li	t4,6
    80005530:	e6dff06f          	j	8000539c <__memset+0x84>

0000000080005534 <__memmove>:
    80005534:	ff010113          	addi	sp,sp,-16
    80005538:	00813423          	sd	s0,8(sp)
    8000553c:	01010413          	addi	s0,sp,16
    80005540:	0e060863          	beqz	a2,80005630 <__memmove+0xfc>
    80005544:	fff6069b          	addiw	a3,a2,-1
    80005548:	0006881b          	sext.w	a6,a3
    8000554c:	0ea5e863          	bltu	a1,a0,8000563c <__memmove+0x108>
    80005550:	00758713          	addi	a4,a1,7
    80005554:	00a5e7b3          	or	a5,a1,a0
    80005558:	40a70733          	sub	a4,a4,a0
    8000555c:	0077f793          	andi	a5,a5,7
    80005560:	00f73713          	sltiu	a4,a4,15
    80005564:	00174713          	xori	a4,a4,1
    80005568:	0017b793          	seqz	a5,a5
    8000556c:	00e7f7b3          	and	a5,a5,a4
    80005570:	10078863          	beqz	a5,80005680 <__memmove+0x14c>
    80005574:	00900793          	li	a5,9
    80005578:	1107f463          	bgeu	a5,a6,80005680 <__memmove+0x14c>
    8000557c:	0036581b          	srliw	a6,a2,0x3
    80005580:	fff8081b          	addiw	a6,a6,-1
    80005584:	02081813          	slli	a6,a6,0x20
    80005588:	01d85893          	srli	a7,a6,0x1d
    8000558c:	00858813          	addi	a6,a1,8
    80005590:	00058793          	mv	a5,a1
    80005594:	00050713          	mv	a4,a0
    80005598:	01088833          	add	a6,a7,a6
    8000559c:	0007b883          	ld	a7,0(a5)
    800055a0:	00878793          	addi	a5,a5,8
    800055a4:	00870713          	addi	a4,a4,8
    800055a8:	ff173c23          	sd	a7,-8(a4)
    800055ac:	ff0798e3          	bne	a5,a6,8000559c <__memmove+0x68>
    800055b0:	ff867713          	andi	a4,a2,-8
    800055b4:	02071793          	slli	a5,a4,0x20
    800055b8:	0207d793          	srli	a5,a5,0x20
    800055bc:	00f585b3          	add	a1,a1,a5
    800055c0:	40e686bb          	subw	a3,a3,a4
    800055c4:	00f507b3          	add	a5,a0,a5
    800055c8:	06e60463          	beq	a2,a4,80005630 <__memmove+0xfc>
    800055cc:	0005c703          	lbu	a4,0(a1)
    800055d0:	00e78023          	sb	a4,0(a5)
    800055d4:	04068e63          	beqz	a3,80005630 <__memmove+0xfc>
    800055d8:	0015c603          	lbu	a2,1(a1)
    800055dc:	00100713          	li	a4,1
    800055e0:	00c780a3          	sb	a2,1(a5)
    800055e4:	04e68663          	beq	a3,a4,80005630 <__memmove+0xfc>
    800055e8:	0025c603          	lbu	a2,2(a1)
    800055ec:	00200713          	li	a4,2
    800055f0:	00c78123          	sb	a2,2(a5)
    800055f4:	02e68e63          	beq	a3,a4,80005630 <__memmove+0xfc>
    800055f8:	0035c603          	lbu	a2,3(a1)
    800055fc:	00300713          	li	a4,3
    80005600:	00c781a3          	sb	a2,3(a5)
    80005604:	02e68663          	beq	a3,a4,80005630 <__memmove+0xfc>
    80005608:	0045c603          	lbu	a2,4(a1)
    8000560c:	00400713          	li	a4,4
    80005610:	00c78223          	sb	a2,4(a5)
    80005614:	00e68e63          	beq	a3,a4,80005630 <__memmove+0xfc>
    80005618:	0055c603          	lbu	a2,5(a1)
    8000561c:	00500713          	li	a4,5
    80005620:	00c782a3          	sb	a2,5(a5)
    80005624:	00e68663          	beq	a3,a4,80005630 <__memmove+0xfc>
    80005628:	0065c703          	lbu	a4,6(a1)
    8000562c:	00e78323          	sb	a4,6(a5)
    80005630:	00813403          	ld	s0,8(sp)
    80005634:	01010113          	addi	sp,sp,16
    80005638:	00008067          	ret
    8000563c:	02061713          	slli	a4,a2,0x20
    80005640:	02075713          	srli	a4,a4,0x20
    80005644:	00e587b3          	add	a5,a1,a4
    80005648:	f0f574e3          	bgeu	a0,a5,80005550 <__memmove+0x1c>
    8000564c:	02069613          	slli	a2,a3,0x20
    80005650:	02065613          	srli	a2,a2,0x20
    80005654:	fff64613          	not	a2,a2
    80005658:	00e50733          	add	a4,a0,a4
    8000565c:	00c78633          	add	a2,a5,a2
    80005660:	fff7c683          	lbu	a3,-1(a5)
    80005664:	fff78793          	addi	a5,a5,-1
    80005668:	fff70713          	addi	a4,a4,-1
    8000566c:	00d70023          	sb	a3,0(a4)
    80005670:	fec798e3          	bne	a5,a2,80005660 <__memmove+0x12c>
    80005674:	00813403          	ld	s0,8(sp)
    80005678:	01010113          	addi	sp,sp,16
    8000567c:	00008067          	ret
    80005680:	02069713          	slli	a4,a3,0x20
    80005684:	02075713          	srli	a4,a4,0x20
    80005688:	00170713          	addi	a4,a4,1
    8000568c:	00e50733          	add	a4,a0,a4
    80005690:	00050793          	mv	a5,a0
    80005694:	0005c683          	lbu	a3,0(a1)
    80005698:	00178793          	addi	a5,a5,1
    8000569c:	00158593          	addi	a1,a1,1
    800056a0:	fed78fa3          	sb	a3,-1(a5)
    800056a4:	fee798e3          	bne	a5,a4,80005694 <__memmove+0x160>
    800056a8:	f89ff06f          	j	80005630 <__memmove+0xfc>

00000000800056ac <__mem_free>:
    800056ac:	ff010113          	addi	sp,sp,-16
    800056b0:	00813423          	sd	s0,8(sp)
    800056b4:	01010413          	addi	s0,sp,16
    800056b8:	00002597          	auipc	a1,0x2
    800056bc:	a2058593          	addi	a1,a1,-1504 # 800070d8 <freep>
    800056c0:	0005b783          	ld	a5,0(a1)
    800056c4:	ff050693          	addi	a3,a0,-16
    800056c8:	0007b703          	ld	a4,0(a5)
    800056cc:	00d7fc63          	bgeu	a5,a3,800056e4 <__mem_free+0x38>
    800056d0:	00e6ee63          	bltu	a3,a4,800056ec <__mem_free+0x40>
    800056d4:	00e7fc63          	bgeu	a5,a4,800056ec <__mem_free+0x40>
    800056d8:	00070793          	mv	a5,a4
    800056dc:	0007b703          	ld	a4,0(a5)
    800056e0:	fed7e8e3          	bltu	a5,a3,800056d0 <__mem_free+0x24>
    800056e4:	fee7eae3          	bltu	a5,a4,800056d8 <__mem_free+0x2c>
    800056e8:	fee6f8e3          	bgeu	a3,a4,800056d8 <__mem_free+0x2c>
    800056ec:	ff852803          	lw	a6,-8(a0)
    800056f0:	02081613          	slli	a2,a6,0x20
    800056f4:	01c65613          	srli	a2,a2,0x1c
    800056f8:	00c68633          	add	a2,a3,a2
    800056fc:	02c70a63          	beq	a4,a2,80005730 <__mem_free+0x84>
    80005700:	fee53823          	sd	a4,-16(a0)
    80005704:	0087a503          	lw	a0,8(a5)
    80005708:	02051613          	slli	a2,a0,0x20
    8000570c:	01c65613          	srli	a2,a2,0x1c
    80005710:	00c78633          	add	a2,a5,a2
    80005714:	04c68263          	beq	a3,a2,80005758 <__mem_free+0xac>
    80005718:	00813403          	ld	s0,8(sp)
    8000571c:	00d7b023          	sd	a3,0(a5)
    80005720:	00f5b023          	sd	a5,0(a1)
    80005724:	00000513          	li	a0,0
    80005728:	01010113          	addi	sp,sp,16
    8000572c:	00008067          	ret
    80005730:	00872603          	lw	a2,8(a4)
    80005734:	00073703          	ld	a4,0(a4)
    80005738:	0106083b          	addw	a6,a2,a6
    8000573c:	ff052c23          	sw	a6,-8(a0)
    80005740:	fee53823          	sd	a4,-16(a0)
    80005744:	0087a503          	lw	a0,8(a5)
    80005748:	02051613          	slli	a2,a0,0x20
    8000574c:	01c65613          	srli	a2,a2,0x1c
    80005750:	00c78633          	add	a2,a5,a2
    80005754:	fcc692e3          	bne	a3,a2,80005718 <__mem_free+0x6c>
    80005758:	00813403          	ld	s0,8(sp)
    8000575c:	0105053b          	addw	a0,a0,a6
    80005760:	00a7a423          	sw	a0,8(a5)
    80005764:	00e7b023          	sd	a4,0(a5)
    80005768:	00f5b023          	sd	a5,0(a1)
    8000576c:	00000513          	li	a0,0
    80005770:	01010113          	addi	sp,sp,16
    80005774:	00008067          	ret

0000000080005778 <__mem_alloc>:
    80005778:	fc010113          	addi	sp,sp,-64
    8000577c:	02813823          	sd	s0,48(sp)
    80005780:	02913423          	sd	s1,40(sp)
    80005784:	03213023          	sd	s2,32(sp)
    80005788:	01513423          	sd	s5,8(sp)
    8000578c:	02113c23          	sd	ra,56(sp)
    80005790:	01313c23          	sd	s3,24(sp)
    80005794:	01413823          	sd	s4,16(sp)
    80005798:	01613023          	sd	s6,0(sp)
    8000579c:	04010413          	addi	s0,sp,64
    800057a0:	00002a97          	auipc	s5,0x2
    800057a4:	938a8a93          	addi	s5,s5,-1736 # 800070d8 <freep>
    800057a8:	00f50913          	addi	s2,a0,15
    800057ac:	000ab683          	ld	a3,0(s5)
    800057b0:	00495913          	srli	s2,s2,0x4
    800057b4:	0019049b          	addiw	s1,s2,1
    800057b8:	00048913          	mv	s2,s1
    800057bc:	0c068c63          	beqz	a3,80005894 <__mem_alloc+0x11c>
    800057c0:	0006b503          	ld	a0,0(a3)
    800057c4:	00852703          	lw	a4,8(a0)
    800057c8:	10977063          	bgeu	a4,s1,800058c8 <__mem_alloc+0x150>
    800057cc:	000017b7          	lui	a5,0x1
    800057d0:	0009099b          	sext.w	s3,s2
    800057d4:	0af4e863          	bltu	s1,a5,80005884 <__mem_alloc+0x10c>
    800057d8:	02099a13          	slli	s4,s3,0x20
    800057dc:	01ca5a13          	srli	s4,s4,0x1c
    800057e0:	fff00b13          	li	s6,-1
    800057e4:	0100006f          	j	800057f4 <__mem_alloc+0x7c>
    800057e8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    800057ec:	00852703          	lw	a4,8(a0)
    800057f0:	04977463          	bgeu	a4,s1,80005838 <__mem_alloc+0xc0>
    800057f4:	00050793          	mv	a5,a0
    800057f8:	fea698e3          	bne	a3,a0,800057e8 <__mem_alloc+0x70>
    800057fc:	000a0513          	mv	a0,s4
    80005800:	00000097          	auipc	ra,0x0
    80005804:	1f0080e7          	jalr	496(ra) # 800059f0 <kvmincrease>
    80005808:	00050793          	mv	a5,a0
    8000580c:	01050513          	addi	a0,a0,16
    80005810:	07678e63          	beq	a5,s6,8000588c <__mem_alloc+0x114>
    80005814:	0137a423          	sw	s3,8(a5)
    80005818:	00000097          	auipc	ra,0x0
    8000581c:	e94080e7          	jalr	-364(ra) # 800056ac <__mem_free>
    80005820:	000ab783          	ld	a5,0(s5)
    80005824:	06078463          	beqz	a5,8000588c <__mem_alloc+0x114>
    80005828:	0007b503          	ld	a0,0(a5)
    8000582c:	00078693          	mv	a3,a5
    80005830:	00852703          	lw	a4,8(a0)
    80005834:	fc9760e3          	bltu	a4,s1,800057f4 <__mem_alloc+0x7c>
    80005838:	08e48263          	beq	s1,a4,800058bc <__mem_alloc+0x144>
    8000583c:	4127073b          	subw	a4,a4,s2
    80005840:	02071693          	slli	a3,a4,0x20
    80005844:	01c6d693          	srli	a3,a3,0x1c
    80005848:	00e52423          	sw	a4,8(a0)
    8000584c:	00d50533          	add	a0,a0,a3
    80005850:	01252423          	sw	s2,8(a0)
    80005854:	00fab023          	sd	a5,0(s5)
    80005858:	01050513          	addi	a0,a0,16
    8000585c:	03813083          	ld	ra,56(sp)
    80005860:	03013403          	ld	s0,48(sp)
    80005864:	02813483          	ld	s1,40(sp)
    80005868:	02013903          	ld	s2,32(sp)
    8000586c:	01813983          	ld	s3,24(sp)
    80005870:	01013a03          	ld	s4,16(sp)
    80005874:	00813a83          	ld	s5,8(sp)
    80005878:	00013b03          	ld	s6,0(sp)
    8000587c:	04010113          	addi	sp,sp,64
    80005880:	00008067          	ret
    80005884:	000019b7          	lui	s3,0x1
    80005888:	f51ff06f          	j	800057d8 <__mem_alloc+0x60>
    8000588c:	00000513          	li	a0,0
    80005890:	fcdff06f          	j	8000585c <__mem_alloc+0xe4>
    80005894:	00003797          	auipc	a5,0x3
    80005898:	aec78793          	addi	a5,a5,-1300 # 80008380 <base>
    8000589c:	00078513          	mv	a0,a5
    800058a0:	00fab023          	sd	a5,0(s5)
    800058a4:	00f7b023          	sd	a5,0(a5)
    800058a8:	00000713          	li	a4,0
    800058ac:	00003797          	auipc	a5,0x3
    800058b0:	ac07ae23          	sw	zero,-1316(a5) # 80008388 <base+0x8>
    800058b4:	00050693          	mv	a3,a0
    800058b8:	f11ff06f          	j	800057c8 <__mem_alloc+0x50>
    800058bc:	00053703          	ld	a4,0(a0)
    800058c0:	00e7b023          	sd	a4,0(a5)
    800058c4:	f91ff06f          	j	80005854 <__mem_alloc+0xdc>
    800058c8:	00068793          	mv	a5,a3
    800058cc:	f6dff06f          	j	80005838 <__mem_alloc+0xc0>

00000000800058d0 <__putc>:
    800058d0:	fe010113          	addi	sp,sp,-32
    800058d4:	00813823          	sd	s0,16(sp)
    800058d8:	00113c23          	sd	ra,24(sp)
    800058dc:	02010413          	addi	s0,sp,32
    800058e0:	00050793          	mv	a5,a0
    800058e4:	fef40593          	addi	a1,s0,-17
    800058e8:	00100613          	li	a2,1
    800058ec:	00000513          	li	a0,0
    800058f0:	fef407a3          	sb	a5,-17(s0)
    800058f4:	fffff097          	auipc	ra,0xfffff
    800058f8:	918080e7          	jalr	-1768(ra) # 8000420c <console_write>
    800058fc:	01813083          	ld	ra,24(sp)
    80005900:	01013403          	ld	s0,16(sp)
    80005904:	02010113          	addi	sp,sp,32
    80005908:	00008067          	ret

000000008000590c <__getc>:
    8000590c:	fe010113          	addi	sp,sp,-32
    80005910:	00813823          	sd	s0,16(sp)
    80005914:	00113c23          	sd	ra,24(sp)
    80005918:	02010413          	addi	s0,sp,32
    8000591c:	fe840593          	addi	a1,s0,-24
    80005920:	00100613          	li	a2,1
    80005924:	00000513          	li	a0,0
    80005928:	fffff097          	auipc	ra,0xfffff
    8000592c:	8c4080e7          	jalr	-1852(ra) # 800041ec <console_read>
    80005930:	fe844503          	lbu	a0,-24(s0)
    80005934:	01813083          	ld	ra,24(sp)
    80005938:	01013403          	ld	s0,16(sp)
    8000593c:	02010113          	addi	sp,sp,32
    80005940:	00008067          	ret

0000000080005944 <console_handler>:
    80005944:	fe010113          	addi	sp,sp,-32
    80005948:	00813823          	sd	s0,16(sp)
    8000594c:	00113c23          	sd	ra,24(sp)
    80005950:	00913423          	sd	s1,8(sp)
    80005954:	02010413          	addi	s0,sp,32
    80005958:	14202773          	csrr	a4,scause
    8000595c:	100027f3          	csrr	a5,sstatus
    80005960:	0027f793          	andi	a5,a5,2
    80005964:	06079e63          	bnez	a5,800059e0 <console_handler+0x9c>
    80005968:	00074c63          	bltz	a4,80005980 <console_handler+0x3c>
    8000596c:	01813083          	ld	ra,24(sp)
    80005970:	01013403          	ld	s0,16(sp)
    80005974:	00813483          	ld	s1,8(sp)
    80005978:	02010113          	addi	sp,sp,32
    8000597c:	00008067          	ret
    80005980:	0ff77713          	andi	a4,a4,255
    80005984:	00900793          	li	a5,9
    80005988:	fef712e3          	bne	a4,a5,8000596c <console_handler+0x28>
    8000598c:	ffffe097          	auipc	ra,0xffffe
    80005990:	4b8080e7          	jalr	1208(ra) # 80003e44 <plic_claim>
    80005994:	00a00793          	li	a5,10
    80005998:	00050493          	mv	s1,a0
    8000599c:	02f50c63          	beq	a0,a5,800059d4 <console_handler+0x90>
    800059a0:	fc0506e3          	beqz	a0,8000596c <console_handler+0x28>
    800059a4:	00050593          	mv	a1,a0
    800059a8:	00001517          	auipc	a0,0x1
    800059ac:	bc850513          	addi	a0,a0,-1080 # 80006570 <_ZZ12printIntegermE6digits+0xe0>
    800059b0:	fffff097          	auipc	ra,0xfffff
    800059b4:	8d8080e7          	jalr	-1832(ra) # 80004288 <__printf>
    800059b8:	01013403          	ld	s0,16(sp)
    800059bc:	01813083          	ld	ra,24(sp)
    800059c0:	00048513          	mv	a0,s1
    800059c4:	00813483          	ld	s1,8(sp)
    800059c8:	02010113          	addi	sp,sp,32
    800059cc:	ffffe317          	auipc	t1,0xffffe
    800059d0:	4b030067          	jr	1200(t1) # 80003e7c <plic_complete>
    800059d4:	fffff097          	auipc	ra,0xfffff
    800059d8:	1bc080e7          	jalr	444(ra) # 80004b90 <uartintr>
    800059dc:	fddff06f          	j	800059b8 <console_handler+0x74>
    800059e0:	00001517          	auipc	a0,0x1
    800059e4:	c9050513          	addi	a0,a0,-880 # 80006670 <digits+0x78>
    800059e8:	fffff097          	auipc	ra,0xfffff
    800059ec:	844080e7          	jalr	-1980(ra) # 8000422c <panic>

00000000800059f0 <kvmincrease>:
    800059f0:	fe010113          	addi	sp,sp,-32
    800059f4:	01213023          	sd	s2,0(sp)
    800059f8:	00001937          	lui	s2,0x1
    800059fc:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80005a00:	00813823          	sd	s0,16(sp)
    80005a04:	00113c23          	sd	ra,24(sp)
    80005a08:	00913423          	sd	s1,8(sp)
    80005a0c:	02010413          	addi	s0,sp,32
    80005a10:	01250933          	add	s2,a0,s2
    80005a14:	00c95913          	srli	s2,s2,0xc
    80005a18:	02090863          	beqz	s2,80005a48 <kvmincrease+0x58>
    80005a1c:	00000493          	li	s1,0
    80005a20:	00148493          	addi	s1,s1,1
    80005a24:	fffff097          	auipc	ra,0xfffff
    80005a28:	4bc080e7          	jalr	1212(ra) # 80004ee0 <kalloc>
    80005a2c:	fe991ae3          	bne	s2,s1,80005a20 <kvmincrease+0x30>
    80005a30:	01813083          	ld	ra,24(sp)
    80005a34:	01013403          	ld	s0,16(sp)
    80005a38:	00813483          	ld	s1,8(sp)
    80005a3c:	00013903          	ld	s2,0(sp)
    80005a40:	02010113          	addi	sp,sp,32
    80005a44:	00008067          	ret
    80005a48:	01813083          	ld	ra,24(sp)
    80005a4c:	01013403          	ld	s0,16(sp)
    80005a50:	00813483          	ld	s1,8(sp)
    80005a54:	00013903          	ld	s2,0(sp)
    80005a58:	00000513          	li	a0,0
    80005a5c:	02010113          	addi	sp,sp,32
    80005a60:	00008067          	ret
	...
