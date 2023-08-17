
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00008117          	auipc	sp,0x8
    80000004:	27813103          	ld	sp,632(sp) # 80008278 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	649030ef          	jal	ra,80003e64 <start>

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
    80001084:	1f9020ef          	jal	ra,80003a7c <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001144:	888080e7          	jalr	-1912(ra) # 800019c8 <_ZN3TCB12createThreadEPFvvE>
    80001148:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    8000114c:	00007797          	auipc	a5,0x7
    80001150:	1347b783          	ld	a5,308(a5) # 80008280 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001154:	00a7b023          	sd	a0,0(a5)

    threads[1] = TCB::createThread(workerBodyA);
    80001158:	00007517          	auipc	a0,0x7
    8000115c:	11853503          	ld	a0,280(a0) # 80008270 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001160:	00001097          	auipc	ra,0x1
    80001164:	868080e7          	jalr	-1944(ra) # 800019c8 <_ZN3TCB12createThreadEPFvvE>
    80001168:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    8000116c:	00006517          	auipc	a0,0x6
    80001170:	eb450513          	addi	a0,a0,-332 # 80007020 <CONSOLE_STATUS+0x10>
    80001174:	00003097          	auipc	ra,0x3
    80001178:	b78080e7          	jalr	-1160(ra) # 80003cec <_Z11printStringPKc>
    threads[2] = TCB::createThread(workerBodyB);
    8000117c:	00007517          	auipc	a0,0x7
    80001180:	0dc53503          	ld	a0,220(a0) # 80008258 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001184:	00001097          	auipc	ra,0x1
    80001188:	844080e7          	jalr	-1980(ra) # 800019c8 <_ZN3TCB12createThreadEPFvvE>
    8000118c:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    80001190:	00006517          	auipc	a0,0x6
    80001194:	ea850513          	addi	a0,a0,-344 # 80007038 <CONSOLE_STATUS+0x28>
    80001198:	00003097          	auipc	ra,0x3
    8000119c:	b54080e7          	jalr	-1196(ra) # 80003cec <_Z11printStringPKc>
    threads[3] = TCB::createThread(workerBodyC);
    800011a0:	00007517          	auipc	a0,0x7
    800011a4:	0f053503          	ld	a0,240(a0) # 80008290 <_GLOBAL_OFFSET_TABLE_+0x58>
    800011a8:	00001097          	auipc	ra,0x1
    800011ac:	820080e7          	jalr	-2016(ra) # 800019c8 <_ZN3TCB12createThreadEPFvvE>
    800011b0:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    800011b4:	00006517          	auipc	a0,0x6
    800011b8:	e9c50513          	addi	a0,a0,-356 # 80007050 <CONSOLE_STATUS+0x40>
    800011bc:	00003097          	auipc	ra,0x3
    800011c0:	b30080e7          	jalr	-1232(ra) # 80003cec <_Z11printStringPKc>
    threads[4] = TCB::createThread(workerBodyD);
    800011c4:	00007517          	auipc	a0,0x7
    800011c8:	0d453503          	ld	a0,212(a0) # 80008298 <_GLOBAL_OFFSET_TABLE_+0x60>
    800011cc:	00000097          	auipc	ra,0x0
    800011d0:	7fc080e7          	jalr	2044(ra) # 800019c8 <_ZN3TCB12createThreadEPFvvE>
    800011d4:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    800011d8:	00006517          	auipc	a0,0x6
    800011dc:	e9050513          	addi	a0,a0,-368 # 80007068 <CONSOLE_STATUS+0x58>
    800011e0:	00003097          	auipc	ra,0x3
    800011e4:	b0c080e7          	jalr	-1268(ra) # 80003cec <_Z11printStringPKc>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800011e8:	00007797          	auipc	a5,0x7
    800011ec:	0687b783          	ld	a5,104(a5) # 80008250 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80001204:	890080e7          	jalr	-1904(ra) # 80001a90 <_ZN3TCB5yieldEv>
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
    80001248:	f58080e7          	jalr	-168(ra) # 8000319c <_ZdlPv>
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
    8000126c:	f5c080e7          	jalr	-164(ra) # 800031c4 <_ZdaPv>
    80001270:	fd1ff06f          	j	80001240 <_Z5main2v+0x11c>
    }
    printString("Finished\n");
    80001274:	00006517          	auipc	a0,0x6
    80001278:	e0c50513          	addi	a0,a0,-500 # 80007080 <CONSOLE_STATUS+0x70>
    8000127c:	00003097          	auipc	ra,0x3
    80001280:	a70080e7          	jalr	-1424(ra) # 80003cec <_Z11printStringPKc>

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
    8000130c:	788080e7          	jalr	1928(ra) # 80001a90 <_ZN3TCB5yieldEv>
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
    80001364:	00006517          	auipc	a0,0x6
    80001368:	d2c50513          	addi	a0,a0,-724 # 80007090 <CONSOLE_STATUS+0x80>
    8000136c:	00003097          	auipc	ra,0x3
    80001370:	980080e7          	jalr	-1664(ra) # 80003cec <_Z11printStringPKc>
        printInteger(i);
    80001374:	00048513          	mv	a0,s1
    80001378:	00003097          	auipc	ra,0x3
    8000137c:	9e4080e7          	jalr	-1564(ra) # 80003d5c <_Z12printIntegerm>
        printString("\n");
    80001380:	00006517          	auipc	a0,0x6
    80001384:	d0850513          	addi	a0,a0,-760 # 80007088 <CONSOLE_STATUS+0x78>
    80001388:	00003097          	auipc	ra,0x3
    8000138c:	964080e7          	jalr	-1692(ra) # 80003cec <_Z11printStringPKc>
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
    800013fc:	00006517          	auipc	a0,0x6
    80001400:	c9c50513          	addi	a0,a0,-868 # 80007098 <CONSOLE_STATUS+0x88>
    80001404:	00003097          	auipc	ra,0x3
    80001408:	8e8080e7          	jalr	-1816(ra) # 80003cec <_Z11printStringPKc>
        printInteger(i);
    8000140c:	00048513          	mv	a0,s1
    80001410:	00003097          	auipc	ra,0x3
    80001414:	94c080e7          	jalr	-1716(ra) # 80003d5c <_Z12printIntegerm>
        printString("\n");
    80001418:	00006517          	auipc	a0,0x6
    8000141c:	c7050513          	addi	a0,a0,-912 # 80007088 <CONSOLE_STATUS+0x78>
    80001420:	00003097          	auipc	ra,0x3
    80001424:	8cc080e7          	jalr	-1844(ra) # 80003cec <_Z11printStringPKc>
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
    80001464:	00006517          	auipc	a0,0x6
    80001468:	c3c50513          	addi	a0,a0,-964 # 800070a0 <CONSOLE_STATUS+0x90>
    8000146c:	00003097          	auipc	ra,0x3
    80001470:	880080e7          	jalr	-1920(ra) # 80003cec <_Z11printStringPKc>
        printInteger(i);
    80001474:	00048513          	mv	a0,s1
    80001478:	00003097          	auipc	ra,0x3
    8000147c:	8e4080e7          	jalr	-1820(ra) # 80003d5c <_Z12printIntegerm>
        printString("\n");
    80001480:	00006517          	auipc	a0,0x6
    80001484:	c0850513          	addi	a0,a0,-1016 # 80007088 <CONSOLE_STATUS+0x78>
    80001488:	00003097          	auipc	ra,0x3
    8000148c:	864080e7          	jalr	-1948(ra) # 80003cec <_Z11printStringPKc>
    for (; i < 3; i++)
    80001490:	0014849b          	addiw	s1,s1,1
    80001494:	0ff4f493          	andi	s1,s1,255
    80001498:	00200793          	li	a5,2
    8000149c:	fc97f4e3          	bgeu	a5,s1,80001464 <_Z11workerBodyCv+0x20>
    }

    printString("C: yield\n");
    800014a0:	00006517          	auipc	a0,0x6
    800014a4:	c0850513          	addi	a0,a0,-1016 # 800070a8 <CONSOLE_STATUS+0x98>
    800014a8:	00003097          	auipc	ra,0x3
    800014ac:	844080e7          	jalr	-1980(ra) # 80003cec <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800014b0:	00700313          	li	t1,7
    TCB::yield();
    800014b4:	00000097          	auipc	ra,0x0
    800014b8:	5dc080e7          	jalr	1500(ra) # 80001a90 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800014bc:	00030913          	mv	s2,t1

    printString("C: t1=");
    800014c0:	00006517          	auipc	a0,0x6
    800014c4:	bf850513          	addi	a0,a0,-1032 # 800070b8 <CONSOLE_STATUS+0xa8>
    800014c8:	00003097          	auipc	ra,0x3
    800014cc:	824080e7          	jalr	-2012(ra) # 80003cec <_Z11printStringPKc>
    printInteger(t1);
    800014d0:	00090513          	mv	a0,s2
    800014d4:	00003097          	auipc	ra,0x3
    800014d8:	888080e7          	jalr	-1912(ra) # 80003d5c <_Z12printIntegerm>
    printString("\n");
    800014dc:	00006517          	auipc	a0,0x6
    800014e0:	bac50513          	addi	a0,a0,-1108 # 80007088 <CONSOLE_STATUS+0x78>
    800014e4:	00003097          	auipc	ra,0x3
    800014e8:	808080e7          	jalr	-2040(ra) # 80003cec <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800014ec:	00c00513          	li	a0,12
    800014f0:	00000097          	auipc	ra,0x0
    800014f4:	db0080e7          	jalr	-592(ra) # 800012a0 <_ZL9fibonaccim>
    800014f8:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800014fc:	00006517          	auipc	a0,0x6
    80001500:	bc450513          	addi	a0,a0,-1084 # 800070c0 <CONSOLE_STATUS+0xb0>
    80001504:	00002097          	auipc	ra,0x2
    80001508:	7e8080e7          	jalr	2024(ra) # 80003cec <_Z11printStringPKc>
    printInteger(result);
    8000150c:	00090513          	mv	a0,s2
    80001510:	00003097          	auipc	ra,0x3
    80001514:	84c080e7          	jalr	-1972(ra) # 80003d5c <_Z12printIntegerm>
    printString("\n");
    80001518:	00006517          	auipc	a0,0x6
    8000151c:	b7050513          	addi	a0,a0,-1168 # 80007088 <CONSOLE_STATUS+0x78>
    80001520:	00002097          	auipc	ra,0x2
    80001524:	7cc080e7          	jalr	1996(ra) # 80003cec <_Z11printStringPKc>
    80001528:	0380006f          	j	80001560 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    8000152c:	00006517          	auipc	a0,0x6
    80001530:	b7450513          	addi	a0,a0,-1164 # 800070a0 <CONSOLE_STATUS+0x90>
    80001534:	00002097          	auipc	ra,0x2
    80001538:	7b8080e7          	jalr	1976(ra) # 80003cec <_Z11printStringPKc>
        printInteger(i);
    8000153c:	00048513          	mv	a0,s1
    80001540:	00003097          	auipc	ra,0x3
    80001544:	81c080e7          	jalr	-2020(ra) # 80003d5c <_Z12printIntegerm>
        printString("\n");
    80001548:	00006517          	auipc	a0,0x6
    8000154c:	b4050513          	addi	a0,a0,-1216 # 80007088 <CONSOLE_STATUS+0x78>
    80001550:	00002097          	auipc	ra,0x2
    80001554:	79c080e7          	jalr	1948(ra) # 80003cec <_Z11printStringPKc>
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
    800015a0:	00006517          	auipc	a0,0x6
    800015a4:	b3050513          	addi	a0,a0,-1232 # 800070d0 <CONSOLE_STATUS+0xc0>
    800015a8:	00002097          	auipc	ra,0x2
    800015ac:	744080e7          	jalr	1860(ra) # 80003cec <_Z11printStringPKc>
        printInteger(i);
    800015b0:	00048513          	mv	a0,s1
    800015b4:	00002097          	auipc	ra,0x2
    800015b8:	7a8080e7          	jalr	1960(ra) # 80003d5c <_Z12printIntegerm>
        printString("\n");
    800015bc:	00006517          	auipc	a0,0x6
    800015c0:	acc50513          	addi	a0,a0,-1332 # 80007088 <CONSOLE_STATUS+0x78>
    800015c4:	00002097          	auipc	ra,0x2
    800015c8:	728080e7          	jalr	1832(ra) # 80003cec <_Z11printStringPKc>
    for (; i < 13; i++)
    800015cc:	0014849b          	addiw	s1,s1,1
    800015d0:	0ff4f493          	andi	s1,s1,255
    800015d4:	00c00793          	li	a5,12
    800015d8:	fc97f4e3          	bgeu	a5,s1,800015a0 <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    800015dc:	00006517          	auipc	a0,0x6
    800015e0:	afc50513          	addi	a0,a0,-1284 # 800070d8 <CONSOLE_STATUS+0xc8>
    800015e4:	00002097          	auipc	ra,0x2
    800015e8:	708080e7          	jalr	1800(ra) # 80003cec <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800015ec:	00500313          	li	t1,5
    TCB::yield();
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	4a0080e7          	jalr	1184(ra) # 80001a90 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    800015f8:	01000513          	li	a0,16
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	ca4080e7          	jalr	-860(ra) # 800012a0 <_ZL9fibonaccim>
    80001604:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001608:	00006517          	auipc	a0,0x6
    8000160c:	ae050513          	addi	a0,a0,-1312 # 800070e8 <CONSOLE_STATUS+0xd8>
    80001610:	00002097          	auipc	ra,0x2
    80001614:	6dc080e7          	jalr	1756(ra) # 80003cec <_Z11printStringPKc>
    printInteger(result);
    80001618:	00090513          	mv	a0,s2
    8000161c:	00002097          	auipc	ra,0x2
    80001620:	740080e7          	jalr	1856(ra) # 80003d5c <_Z12printIntegerm>
    printString("\n");
    80001624:	00006517          	auipc	a0,0x6
    80001628:	a6450513          	addi	a0,a0,-1436 # 80007088 <CONSOLE_STATUS+0x78>
    8000162c:	00002097          	auipc	ra,0x2
    80001630:	6c0080e7          	jalr	1728(ra) # 80003cec <_Z11printStringPKc>
    80001634:	0380006f          	j	8000166c <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    80001638:	00006517          	auipc	a0,0x6
    8000163c:	a9850513          	addi	a0,a0,-1384 # 800070d0 <CONSOLE_STATUS+0xc0>
    80001640:	00002097          	auipc	ra,0x2
    80001644:	6ac080e7          	jalr	1708(ra) # 80003cec <_Z11printStringPKc>
        printInteger(i);
    80001648:	00048513          	mv	a0,s1
    8000164c:	00002097          	auipc	ra,0x2
    80001650:	710080e7          	jalr	1808(ra) # 80003d5c <_Z12printIntegerm>
        printString("\n");
    80001654:	00006517          	auipc	a0,0x6
    80001658:	a3450513          	addi	a0,a0,-1484 # 80007088 <CONSOLE_STATUS+0x78>
    8000165c:	00002097          	auipc	ra,0x2
    80001660:	690080e7          	jalr	1680(ra) # 80003cec <_Z11printStringPKc>
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
    8000168c:	98010113          	addi	sp,sp,-1664
    80001690:	66113c23          	sd	ra,1656(sp)
    80001694:	66813823          	sd	s0,1648(sp)
    80001698:	66913423          	sd	s1,1640(sp)
    8000169c:	67213023          	sd	s2,1632(sp)
    800016a0:	65313c23          	sd	s3,1624(sp)
    800016a4:	68010413          	addi	s0,sp,1664
        );
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    }
    void* operator new(size_t size) {
        return MemoryAllocator::instance()->kmem_alloc(size);
    800016a8:	00000097          	auipc	ra,0x0
    800016ac:	5bc080e7          	jalr	1468(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    800016b0:	04000593          	li	a1,64
    800016b4:	00000097          	auipc	ra,0x0
    800016b8:	694080e7          	jalr	1684(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
    800016bc:	00050493          	mv	s1,a0
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    800016c0:	00400793          	li	a5,4
    800016c4:	00f53023          	sd	a5,0(a0)
    800016c8:	00f53423          	sd	a5,8(a0)
    800016cc:	00100793          	li	a5,1
    800016d0:	00f53c23          	sd	a5,24(a0)
    800016d4:	02f53823          	sd	a5,48(a0)
    800016d8:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    800016dc:	00000097          	auipc	ra,0x0
    800016e0:	588080e7          	jalr	1416(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    800016e4:	0304b583          	ld	a1,48(s1)
    800016e8:	00359593          	slli	a1,a1,0x3
    800016ec:	00000097          	auipc	ra,0x0
    800016f0:	65c080e7          	jalr	1628(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
    800016f4:	02a4b423          	sd	a0,40(s1)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    800016f8:	00000097          	auipc	ra,0x0
    800016fc:	56c080e7          	jalr	1388(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80001700:	0304b583          	ld	a1,48(s1)
    80001704:	00359593          	slli	a1,a1,0x3
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	640080e7          	jalr	1600(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
    80001710:	02a4b023          	sd	a0,32(s1)
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80001714:	0084b703          	ld	a4,8(s1)
    80001718:	ff877793          	andi	a5,a4,-8
    8000171c:	02f70463          	beq	a4,a5,80001744 <main+0xb8>
    80001720:	00800713          	li	a4,8
    80001724:	00e787b3          	add	a5,a5,a4
    80001728:	00f4b423          	sd	a5,8(s1)
    8000172c:	00f4b023          	sd	a5,0(s1)
        memorySizeForBits = numberOfObjects / 8;
    80001730:	0037d793          	srli	a5,a5,0x3
    80001734:	00f4b823          	sd	a5,16(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80001738:	00000097          	auipc	ra,0x0
    8000173c:	52c080e7          	jalr	1324(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80001740:	00c0006f          	j	8000174c <main+0xc0>
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    80001744:	00000713          	li	a4,0
    80001748:	fddff06f          	j	80001724 <main+0x98>
                memorySizeForBits + initialNumberOfObjects * objectSize
    8000174c:	0104b583          	ld	a1,16(s1)
    80001750:	0004b783          	ld	a5,0(s1)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80001754:	0284b903          	ld	s2,40(s1)
    80001758:	00f585b3          	add	a1,a1,a5
    8000175c:	00000097          	auipc	ra,0x0
    80001760:	5ec080e7          	jalr	1516(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
    80001764:	00a93023          	sd	a0,0(s2)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    80001768:	0284b783          	ld	a5,40(s1)
    8000176c:	0007b783          	ld	a5,0(a5)
    80001770:	0104b683          	ld	a3,16(s1)
    80001774:	0204b703          	ld	a4,32(s1)
    80001778:	00d787b3          	add	a5,a5,a3
    8000177c:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    80001780:	00000793          	li	a5,0
    80001784:	0104b703          	ld	a4,16(s1)
    80001788:	00e7fe63          	bgeu	a5,a4,800017a4 <main+0x118>
    8000178c:	0284b703          	ld	a4,40(s1)
    80001790:	00073703          	ld	a4,0(a4)
    80001794:	00f70733          	add	a4,a4,a5
    80001798:	00070023          	sb	zero,0(a4)
    8000179c:	00178793          	addi	a5,a5,1
    800017a0:	fe5ff06f          	j	80001784 <main+0xf8>

    //KObjectAllocator* newObj = new KObjectAllocator(sizeof(uint8), 4);
    KObjectAllocator* newObj = new KObjectAllocator(sizeof(uint8), 4);

    void* objArr[200];
    for (int i = 0; i < 20; ++i) {
    800017a4:	00000913          	li	s2,0
    800017a8:	0a80006f          	j	80001850 <main+0x1c4>
        objArr[i] = newObj->allocateNewObject();
        if (i == 14) newObj->freeObject(objArr[4]);
    800017ac:	9b043583          	ld	a1,-1616(s0)
    800017b0:	00048513          	mv	a0,s1
    800017b4:	00002097          	auipc	ra,0x2
    800017b8:	f48080e7          	jalr	-184(ra) # 800036fc <_ZN16KObjectAllocator10freeObjectEPv>
    800017bc:	0c40006f          	j	80001880 <main+0x1f4>
        if (i == 14) newObj->freeObject(objArr[9]);
    800017c0:	9d843583          	ld	a1,-1576(s0)
    800017c4:	00048513          	mv	a0,s1
    800017c8:	00002097          	auipc	ra,0x2
    800017cc:	f34080e7          	jalr	-204(ra) # 800036fc <_ZN16KObjectAllocator10freeObjectEPv>
        *(uint8*) objArr[i] = 128;
    800017d0:	f8000793          	li	a5,-128
    800017d4:	00f98023          	sb	a5,0(s3)
        printString("\nobjectNumber: "); printInteger(newObj->getNumberOfObjects()); printString("\n");
    800017d8:	00006517          	auipc	a0,0x6
    800017dc:	92050513          	addi	a0,a0,-1760 # 800070f8 <CONSOLE_STATUS+0xe8>
    800017e0:	00002097          	auipc	ra,0x2
    800017e4:	50c080e7          	jalr	1292(ra) # 80003cec <_Z11printStringPKc>
    800017e8:	0084b503          	ld	a0,8(s1)
    800017ec:	00002097          	auipc	ra,0x2
    800017f0:	570080e7          	jalr	1392(ra) # 80003d5c <_Z12printIntegerm>
    800017f4:	00006517          	auipc	a0,0x6
    800017f8:	89450513          	addi	a0,a0,-1900 # 80007088 <CONSOLE_STATUS+0x78>
    800017fc:	00002097          	auipc	ra,0x2
    80001800:	4f0080e7          	jalr	1264(ra) # 80003cec <_Z11printStringPKc>
        printString("numberOfAllocations: "); printInteger(newObj->getNumberOfAllocations()); printString("\n");
    80001804:	00006517          	auipc	a0,0x6
    80001808:	90450513          	addi	a0,a0,-1788 # 80007108 <CONSOLE_STATUS+0xf8>
    8000180c:	00002097          	auipc	ra,0x2
    80001810:	4e0080e7          	jalr	1248(ra) # 80003cec <_Z11printStringPKc>
    80001814:	0304b503          	ld	a0,48(s1)
    80001818:	00002097          	auipc	ra,0x2
    8000181c:	544080e7          	jalr	1348(ra) # 80003d5c <_Z12printIntegerm>
    80001820:	00006517          	auipc	a0,0x6
    80001824:	86850513          	addi	a0,a0,-1944 # 80007088 <CONSOLE_STATUS+0x78>
    80001828:	00002097          	auipc	ra,0x2
    8000182c:	4c4080e7          	jalr	1220(ra) # 80003cec <_Z11printStringPKc>
        newObj->printInternalMemory();
    80001830:	00048513          	mv	a0,s1
    80001834:	00002097          	auipc	ra,0x2
    80001838:	9b8080e7          	jalr	-1608(ra) # 800031ec <_ZN16KObjectAllocator19printInternalMemoryEv>
        printString("\n");
    8000183c:	00006517          	auipc	a0,0x6
    80001840:	84c50513          	addi	a0,a0,-1972 # 80007088 <CONSOLE_STATUS+0x78>
    80001844:	00002097          	auipc	ra,0x2
    80001848:	4a8080e7          	jalr	1192(ra) # 80003cec <_Z11printStringPKc>
    for (int i = 0; i < 20; ++i) {
    8000184c:	0019091b          	addiw	s2,s2,1
    80001850:	01300793          	li	a5,19
    80001854:	0327cc63          	blt	a5,s2,8000188c <main+0x200>
        objArr[i] = newObj->allocateNewObject();
    80001858:	00048513          	mv	a0,s1
    8000185c:	00002097          	auipc	ra,0x2
    80001860:	120080e7          	jalr	288(ra) # 8000397c <_ZN16KObjectAllocator17allocateNewObjectEv>
    80001864:	00050993          	mv	s3,a0
    80001868:	00391793          	slli	a5,s2,0x3
    8000186c:	fd040713          	addi	a4,s0,-48
    80001870:	00f707b3          	add	a5,a4,a5
    80001874:	9ca7b023          	sd	a0,-1600(a5)
        if (i == 14) newObj->freeObject(objArr[4]);
    80001878:	00e00793          	li	a5,14
    8000187c:	f2f908e3          	beq	s2,a5,800017ac <main+0x120>
        if (i == 14) newObj->freeObject(objArr[9]);
    80001880:	00e00793          	li	a5,14
    80001884:	f4f916e3          	bne	s2,a5,800017d0 <main+0x144>
    80001888:	f39ff06f          	j	800017c0 <main+0x134>
    }

    for (int i = 0; i < 10; ++i) newObj->freeObject(objArr[i]);
    8000188c:	00000913          	li	s2,0
    80001890:	00900793          	li	a5,9
    80001894:	0327c463          	blt	a5,s2,800018bc <main+0x230>
    80001898:	00391793          	slli	a5,s2,0x3
    8000189c:	fd040713          	addi	a4,s0,-48
    800018a0:	00f707b3          	add	a5,a4,a5
    800018a4:	9c07b583          	ld	a1,-1600(a5)
    800018a8:	00048513          	mv	a0,s1
    800018ac:	00002097          	auipc	ra,0x2
    800018b0:	e50080e7          	jalr	-432(ra) # 800036fc <_ZN16KObjectAllocator10freeObjectEPv>
    800018b4:	0019091b          	addiw	s2,s2,1
    800018b8:	fd9ff06f          	j	80001890 <main+0x204>


    delete newObj;
    800018bc:	00048863          	beqz	s1,800018cc <main+0x240>
    800018c0:	00048513          	mv	a0,s1
    800018c4:	00000097          	auipc	ra,0x0
    800018c8:	060080e7          	jalr	96(ra) # 80001924 <_ZN16KObjectAllocatordlEPv>
    /*printString("\nKObjectAllocator tests:\n");
    KObjectAllocatorTest* t2 = new KObjectAllocatorTest;
    t2->runTests();
    delete t2;*/

    printString("\nMemory tests:\n");
    800018cc:	00006517          	auipc	a0,0x6
    800018d0:	85450513          	addi	a0,a0,-1964 # 80007120 <CONSOLE_STATUS+0x110>
    800018d4:	00002097          	auipc	ra,0x2
    800018d8:	418080e7          	jalr	1048(ra) # 80003cec <_Z11printStringPKc>
    MemoryAllocatorTest t1;
    t1.runTests();
    800018dc:	98840513          	addi	a0,s0,-1656
    800018e0:	00001097          	auipc	ra,0x1
    800018e4:	64c080e7          	jalr	1612(ra) # 80002f2c <_ZN19MemoryAllocatorTest8runTestsEv>


    return 0;
    800018e8:	00000513          	li	a0,0
    800018ec:	67813083          	ld	ra,1656(sp)
    800018f0:	67013403          	ld	s0,1648(sp)
    800018f4:	66813483          	ld	s1,1640(sp)
    800018f8:	66013903          	ld	s2,1632(sp)
    800018fc:	65813983          	ld	s3,1624(sp)
    80001900:	68010113          	addi	sp,sp,1664
    80001904:	00008067          	ret
    80001908:	00050913          	mv	s2,a0
    KObjectAllocator* newObj = new KObjectAllocator(sizeof(uint8), 4);
    8000190c:	00048513          	mv	a0,s1
    80001910:	00000097          	auipc	ra,0x0
    80001914:	014080e7          	jalr	20(ra) # 80001924 <_ZN16KObjectAllocatordlEPv>
    80001918:	00090513          	mv	a0,s2
    8000191c:	00008097          	auipc	ra,0x8
    80001920:	adc080e7          	jalr	-1316(ra) # 800093f8 <_Unwind_Resume>

0000000080001924 <_ZN16KObjectAllocatordlEPv>:
    }
    void operator delete(void* p) {
    80001924:	fe010113          	addi	sp,sp,-32
    80001928:	00113c23          	sd	ra,24(sp)
    8000192c:	00813823          	sd	s0,16(sp)
    80001930:	00913423          	sd	s1,8(sp)
    80001934:	01213023          	sd	s2,0(sp)
    80001938:	02010413          	addi	s0,sp,32
    8000193c:	00050913          	mv	s2,a0
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80001940:	00000493          	li	s1,0
    80001944:	03093783          	ld	a5,48(s2)
    80001948:	02f4f663          	bgeu	s1,a5,80001974 <_ZN16KObjectAllocatordlEPv+0x50>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	318080e7          	jalr	792(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80001954:	02893783          	ld	a5,40(s2)
    80001958:	00349713          	slli	a4,s1,0x3
    8000195c:	00e787b3          	add	a5,a5,a4
    80001960:	0007b583          	ld	a1,0(a5)
    80001964:	00000097          	auipc	ra,0x0
    80001968:	48c080e7          	jalr	1164(ra) # 80001df0 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    8000196c:	00148493          	addi	s1,s1,1
    80001970:	fd5ff06f          	j	80001944 <_ZN16KObjectAllocatordlEPv+0x20>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    80001974:	00000097          	auipc	ra,0x0
    80001978:	2f0080e7          	jalr	752(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    8000197c:	02893583          	ld	a1,40(s2)
    80001980:	00000097          	auipc	ra,0x0
    80001984:	470080e7          	jalr	1136(ra) # 80001df0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80001988:	00000097          	auipc	ra,0x0
    8000198c:	2dc080e7          	jalr	732(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80001990:	02093583          	ld	a1,32(s2)
    80001994:	00000097          	auipc	ra,0x0
    80001998:	45c080e7          	jalr	1116(ra) # 80001df0 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    8000199c:	00000097          	auipc	ra,0x0
    800019a0:	2c8080e7          	jalr	712(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    800019a4:	00090593          	mv	a1,s2
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	448080e7          	jalr	1096(ra) # 80001df0 <_ZN15MemoryAllocator9kmem_freeEPv>
    }
    800019b0:	01813083          	ld	ra,24(sp)
    800019b4:	01013403          	ld	s0,16(sp)
    800019b8:	00813483          	ld	s1,8(sp)
    800019bc:	00013903          	ld	s2,0(sp)
    800019c0:	02010113          	addi	sp,sp,32
    800019c4:	00008067          	ret

00000000800019c8 <_ZN3TCB12createThreadEPFvvE>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    800019c8:	fe010113          	addi	sp,sp,-32
    800019cc:	00113c23          	sd	ra,24(sp)
    800019d0:	00813823          	sd	s0,16(sp)
    800019d4:	00913423          	sd	s1,8(sp)
    800019d8:	01213023          	sd	s2,0(sp)
    800019dc:	02010413          	addi	s0,sp,32
    800019e0:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    800019e4:	03000513          	li	a0,48
    800019e8:	00001097          	auipc	ra,0x1
    800019ec:	764080e7          	jalr	1892(ra) # 8000314c <_Znwm>
    800019f0:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    800019f4:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    800019f8:	00090a63          	beqz	s2,80001a0c <_ZN3TCB12createThreadEPFvvE+0x44>
    800019fc:	00002537          	lui	a0,0x2
    80001a00:	00001097          	auipc	ra,0x1
    80001a04:	774080e7          	jalr	1908(ra) # 80003174 <_Znam>
    80001a08:	0080006f          	j	80001a10 <_ZN3TCB12createThreadEPFvvE+0x48>
    80001a0c:	00000513          	li	a0,0
            finished(false)
    80001a10:	00a4b423          	sd	a0,8(s1)
    80001a14:	00000797          	auipc	a5,0x0
    80001a18:	09878793          	addi	a5,a5,152 # 80001aac <_ZN3TCB13threadWrapperEv>
    80001a1c:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001a20:	02050863          	beqz	a0,80001a50 <_ZN3TCB12createThreadEPFvvE+0x88>
    80001a24:	000027b7          	lui	a5,0x2
    80001a28:	00f507b3          	add	a5,a0,a5
            finished(false)
    80001a2c:	00f4bc23          	sd	a5,24(s1)
    80001a30:	00200793          	li	a5,2
    80001a34:	02f4b023          	sd	a5,32(s1)
    80001a38:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001a3c:	02090c63          	beqz	s2,80001a74 <_ZN3TCB12createThreadEPFvvE+0xac>
    80001a40:	00048513          	mv	a0,s1
    80001a44:	00002097          	auipc	ra,0x2
    80001a48:	208080e7          	jalr	520(ra) # 80003c4c <_ZN9Scheduler3putEP3TCB>
    80001a4c:	0280006f          	j	80001a74 <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001a50:	00000793          	li	a5,0
    80001a54:	fd9ff06f          	j	80001a2c <_ZN3TCB12createThreadEPFvvE+0x64>
    80001a58:	00050913          	mv	s2,a0
    80001a5c:	00048513          	mv	a0,s1
    80001a60:	00001097          	auipc	ra,0x1
    80001a64:	73c080e7          	jalr	1852(ra) # 8000319c <_ZdlPv>
    80001a68:	00090513          	mv	a0,s2
    80001a6c:	00008097          	auipc	ra,0x8
    80001a70:	98c080e7          	jalr	-1652(ra) # 800093f8 <_Unwind_Resume>
}
    80001a74:	00048513          	mv	a0,s1
    80001a78:	01813083          	ld	ra,24(sp)
    80001a7c:	01013403          	ld	s0,16(sp)
    80001a80:	00813483          	ld	s1,8(sp)
    80001a84:	00013903          	ld	s2,0(sp)
    80001a88:	02010113          	addi	sp,sp,32
    80001a8c:	00008067          	ret

0000000080001a90 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    80001a90:	ff010113          	addi	sp,sp,-16
    80001a94:	00813423          	sd	s0,8(sp)
    80001a98:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80001a9c:	00000073          	ecall
}
    80001aa0:	00813403          	ld	s0,8(sp)
    80001aa4:	01010113          	addi	sp,sp,16
    80001aa8:	00008067          	ret

0000000080001aac <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001aac:	fe010113          	addi	sp,sp,-32
    80001ab0:	00113c23          	sd	ra,24(sp)
    80001ab4:	00813823          	sd	s0,16(sp)
    80001ab8:	00913423          	sd	s1,8(sp)
    80001abc:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001ac0:	00002097          	auipc	ra,0x2
    80001ac4:	f9c080e7          	jalr	-100(ra) # 80003a5c <_ZN5Riscv10popSppSpieEv>
    running->body();
    80001ac8:	00007497          	auipc	s1,0x7
    80001acc:	82848493          	addi	s1,s1,-2008 # 800082f0 <_ZN3TCB7runningE>
    80001ad0:	0004b783          	ld	a5,0(s1)
    80001ad4:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    80001ad8:	000780e7          	jalr	a5
    running->setFinished(true);
    80001adc:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80001ae0:	00100713          	li	a4,1
    80001ae4:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    80001ae8:	00000097          	auipc	ra,0x0
    80001aec:	fa8080e7          	jalr	-88(ra) # 80001a90 <_ZN3TCB5yieldEv>
}
    80001af0:	01813083          	ld	ra,24(sp)
    80001af4:	01013403          	ld	s0,16(sp)
    80001af8:	00813483          	ld	s1,8(sp)
    80001afc:	02010113          	addi	sp,sp,32
    80001b00:	00008067          	ret

0000000080001b04 <_ZN3TCB8dispatchEv>:
{
    80001b04:	fe010113          	addi	sp,sp,-32
    80001b08:	00113c23          	sd	ra,24(sp)
    80001b0c:	00813823          	sd	s0,16(sp)
    80001b10:	00913423          	sd	s1,8(sp)
    80001b14:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001b18:	00006497          	auipc	s1,0x6
    80001b1c:	7d84b483          	ld	s1,2008(s1) # 800082f0 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001b20:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001b24:	02078c63          	beqz	a5,80001b5c <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001b28:	00002097          	auipc	ra,0x2
    80001b2c:	0bc080e7          	jalr	188(ra) # 80003be4 <_ZN9Scheduler3getEv>
    80001b30:	00006797          	auipc	a5,0x6
    80001b34:	7ca7b023          	sd	a0,1984(a5) # 800082f0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001b38:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001b3c:	01048513          	addi	a0,s1,16
    80001b40:	fffff097          	auipc	ra,0xfffff
    80001b44:	5d0080e7          	jalr	1488(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001b48:	01813083          	ld	ra,24(sp)
    80001b4c:	01013403          	ld	s0,16(sp)
    80001b50:	00813483          	ld	s1,8(sp)
    80001b54:	02010113          	addi	sp,sp,32
    80001b58:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001b5c:	00048513          	mv	a0,s1
    80001b60:	00002097          	auipc	ra,0x2
    80001b64:	0ec080e7          	jalr	236(ra) # 80003c4c <_ZN9Scheduler3putEP3TCB>
    80001b68:	fc1ff06f          	j	80001b28 <_ZN3TCB8dispatchEv+0x24>

0000000080001b6c <_ZN15MemoryAllocator17getMinBlockNumberEm>:
    newMemoryAllocator->freeMemoryHead->next = nullptr;

    return newMemoryAllocator;
}

size_t MemoryAllocator::getMinBlockNumber(size_t size) {
    80001b6c:	ff010113          	addi	sp,sp,-16
    80001b70:	00813423          	sd	s0,8(sp)
    80001b74:	01010413          	addi	s0,sp,16
    size_t blockNo = size / MEM_BLOCK_SIZE;
    80001b78:	00655713          	srli	a4,a0,0x6
    blockNo = blockNo + (size - blockNo * MEM_BLOCK_SIZE != 0);
    80001b7c:	fc057793          	andi	a5,a0,-64
    80001b80:	40a78533          	sub	a0,a5,a0
    80001b84:	00a03533          	snez	a0,a0
    return blockNo;
}
    80001b88:	00e50533          	add	a0,a0,a4
    80001b8c:	00813403          	ld	s0,8(sp)
    80001b90:	01010113          	addi	sp,sp,16
    80001b94:	00008067          	ret

0000000080001b98 <_ZN15MemoryAllocator14createInstanceEv>:
MemoryAllocator* MemoryAllocator::createInstance() {
    80001b98:	fd010113          	addi	sp,sp,-48
    80001b9c:	02113423          	sd	ra,40(sp)
    80001ba0:	02813023          	sd	s0,32(sp)
    80001ba4:	00913c23          	sd	s1,24(sp)
    80001ba8:	01213823          	sd	s2,16(sp)
    80001bac:	01313423          	sd	s3,8(sp)
    80001bb0:	01413023          	sd	s4,0(sp)
    80001bb4:	03010413          	addi	s0,sp,48
    managedMemorySpaceStart = (uint8*) HEAP_START_ADDR;
    80001bb8:	00006797          	auipc	a5,0x6
    80001bbc:	6887b783          	ld	a5,1672(a5) # 80008240 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001bc0:	0007b903          	ld	s2,0(a5)
    managedMemorySpaceEnd = (uint8*) HEAP_END_ADDR;
    80001bc4:	00006797          	auipc	a5,0x6
    80001bc8:	6c47b783          	ld	a5,1732(a5) # 80008288 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001bcc:	0007b483          	ld	s1,0(a5)
    80001bd0:	00006a17          	auipc	s4,0x6
    80001bd4:	730a0a13          	addi	s4,s4,1840 # 80008300 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    80001bd8:	009a3023          	sd	s1,0(s4)
    minMemoryFragmentSize = getMinBlockNumber(sizeof(SegmentDescriptor)) + getMinBlockNumber(sizeof(uint64));
    80001bdc:	01000513          	li	a0,16
    80001be0:	00000097          	auipc	ra,0x0
    80001be4:	f8c080e7          	jalr	-116(ra) # 80001b6c <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001be8:	00050993          	mv	s3,a0
    80001bec:	00800513          	li	a0,8
    80001bf0:	00000097          	auipc	ra,0x0
    80001bf4:	f7c080e7          	jalr	-132(ra) # 80001b6c <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001bf8:	00a989b3          	add	s3,s3,a0
    80001bfc:	013a3423          	sd	s3,8(s4)
    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
    80001c00:	02000513          	li	a0,32
    80001c04:	00000097          	auipc	ra,0x0
    80001c08:	f68080e7          	jalr	-152(ra) # 80001b6c <_ZN15MemoryAllocator17getMinBlockNumberEm>
    managedMemorySpaceStart += noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE;
    80001c0c:	00651513          	slli	a0,a0,0x6
    80001c10:	00a90533          	add	a0,s2,a0
    80001c14:	00aa3823          	sd	a0,16(s4)
    newMemoryAllocator->totalTaken = 0;
    80001c18:	00093423          	sd	zero,8(s2)
    newMemoryAllocator->totalFree = (size_t) (managedMemorySpaceEnd - managedMemorySpaceStart);
    80001c1c:	40a484b3          	sub	s1,s1,a0
    80001c20:	00993023          	sd	s1,0(s2)
    newMemoryAllocator->freeBlockNo = newMemoryAllocator->totalFree / MEM_BLOCK_SIZE;
    80001c24:	0064d493          	srli	s1,s1,0x6
    80001c28:	00993823          	sd	s1,16(s2)
    newMemoryAllocator->freeMemoryHead = (SegmentDescriptor*) managedMemorySpaceStart;
    80001c2c:	010a3783          	ld	a5,16(s4)
    80001c30:	00f93c23          	sd	a5,24(s2)
    newMemoryAllocator->freeMemoryHead->noBlocks = newMemoryAllocator->freeBlockNo;
    80001c34:	0097b023          	sd	s1,0(a5)
    newMemoryAllocator->freeMemoryHead->next = nullptr;
    80001c38:	01893783          	ld	a5,24(s2)
    80001c3c:	0007b423          	sd	zero,8(a5)
}
    80001c40:	00090513          	mv	a0,s2
    80001c44:	02813083          	ld	ra,40(sp)
    80001c48:	02013403          	ld	s0,32(sp)
    80001c4c:	01813483          	ld	s1,24(sp)
    80001c50:	01013903          	ld	s2,16(sp)
    80001c54:	00813983          	ld	s3,8(sp)
    80001c58:	00013a03          	ld	s4,0(sp)
    80001c5c:	03010113          	addi	sp,sp,48
    80001c60:	00008067          	ret

0000000080001c64 <_ZN15MemoryAllocator8instanceEv>:
    if (onlyInstance == nullptr)
    80001c64:	00006797          	auipc	a5,0x6
    80001c68:	6b47b783          	ld	a5,1716(a5) # 80008318 <_ZN15MemoryAllocator12onlyInstanceE>
    80001c6c:	00078863          	beqz	a5,80001c7c <_ZN15MemoryAllocator8instanceEv+0x18>
}
    80001c70:	00006517          	auipc	a0,0x6
    80001c74:	6a853503          	ld	a0,1704(a0) # 80008318 <_ZN15MemoryAllocator12onlyInstanceE>
    80001c78:	00008067          	ret
MemoryAllocator* MemoryAllocator::instance() {
    80001c7c:	ff010113          	addi	sp,sp,-16
    80001c80:	00113423          	sd	ra,8(sp)
    80001c84:	00813023          	sd	s0,0(sp)
    80001c88:	01010413          	addi	s0,sp,16
        onlyInstance = createInstance();
    80001c8c:	00000097          	auipc	ra,0x0
    80001c90:	f0c080e7          	jalr	-244(ra) # 80001b98 <_ZN15MemoryAllocator14createInstanceEv>
    80001c94:	00006797          	auipc	a5,0x6
    80001c98:	68a7b223          	sd	a0,1668(a5) # 80008318 <_ZN15MemoryAllocator12onlyInstanceE>
}
    80001c9c:	00006517          	auipc	a0,0x6
    80001ca0:	67c53503          	ld	a0,1660(a0) # 80008318 <_ZN15MemoryAllocator12onlyInstanceE>
    80001ca4:	00813083          	ld	ra,8(sp)
    80001ca8:	00013403          	ld	s0,0(sp)
    80001cac:	01010113          	addi	sp,sp,16
    80001cb0:	00008067          	ret

0000000080001cb4 <_ZN15MemoryAllocator8firstFitEm>:


MemoryAllocator::SegmentDescriptor* MemoryAllocator::firstFit(size_t blockNo) {
    80001cb4:	ff010113          	addi	sp,sp,-16
    80001cb8:	00813423          	sd	s0,8(sp)
    80001cbc:	01010413          	addi	s0,sp,16
    80001cc0:	00050693          	mv	a3,a0
    SegmentDescriptor* largeEnoughSegment = freeMemoryHead;
    80001cc4:	01853503          	ld	a0,24(a0)
    SegmentDescriptor* prevSegment = nullptr;
    80001cc8:	00000713          	li	a4,0
    while (largeEnoughSegment && largeEnoughSegment->noBlocks < blockNo) {
    80001ccc:	00050c63          	beqz	a0,80001ce4 <_ZN15MemoryAllocator8firstFitEm+0x30>
    80001cd0:	00053783          	ld	a5,0(a0)
    80001cd4:	00b7f863          	bgeu	a5,a1,80001ce4 <_ZN15MemoryAllocator8firstFitEm+0x30>
        prevSegment = largeEnoughSegment;
    80001cd8:	00050713          	mv	a4,a0
        largeEnoughSegment = largeEnoughSegment->next;
    80001cdc:	00853503          	ld	a0,8(a0)
    while (largeEnoughSegment && largeEnoughSegment->noBlocks < blockNo) {
    80001ce0:	fedff06f          	j	80001ccc <_ZN15MemoryAllocator8firstFitEm+0x18>
    }
    if (!largeEnoughSegment) return nullptr;
    80001ce4:	04050663          	beqz	a0,80001d30 <_ZN15MemoryAllocator8firstFitEm+0x7c>

    if (largeEnoughSegment->noBlocks - blockNo >= minMemoryFragmentSize) {
    80001ce8:	00053783          	ld	a5,0(a0)
    80001cec:	40b787b3          	sub	a5,a5,a1
    80001cf0:	00006617          	auipc	a2,0x6
    80001cf4:	61863603          	ld	a2,1560(a2) # 80008308 <_ZN15MemoryAllocator21minMemoryFragmentSizeE>
    80001cf8:	02c7e063          	bltu	a5,a2,80001d18 <_ZN15MemoryAllocator8firstFitEm+0x64>
        SegmentDescriptor* newSegment = (SegmentDescriptor*) ((uint8*) largeEnoughSegment + blockNo * MEM_BLOCK_SIZE);
    80001cfc:	00659613          	slli	a2,a1,0x6
    80001d00:	00c50633          	add	a2,a0,a2
        newSegment->noBlocks = largeEnoughSegment->noBlocks - blockNo;
    80001d04:	00f63023          	sd	a5,0(a2)
        newSegment->next = largeEnoughSegment->next;
    80001d08:	00853783          	ld	a5,8(a0)
    80001d0c:	00f63423          	sd	a5,8(a2)
        largeEnoughSegment->next = newSegment;
    80001d10:	00c53423          	sd	a2,8(a0)
        largeEnoughSegment->noBlocks = blockNo;
    80001d14:	00b53023          	sd	a1,0(a0)
    }

    if (prevSegment) prevSegment->next = largeEnoughSegment->next;
    80001d18:	00070663          	beqz	a4,80001d24 <_ZN15MemoryAllocator8firstFitEm+0x70>
    80001d1c:	00853783          	ld	a5,8(a0)
    80001d20:	00f73423          	sd	a5,8(a4)
    if (freeMemoryHead == largeEnoughSegment)
    80001d24:	0186b783          	ld	a5,24(a3)
    80001d28:	00a78a63          	beq	a5,a0,80001d3c <_ZN15MemoryAllocator8firstFitEm+0x88>
        freeMemoryHead = largeEnoughSegment->next;

    largeEnoughSegment->next = nullptr;
    80001d2c:	00053423          	sd	zero,8(a0)
    return largeEnoughSegment;
}
    80001d30:	00813403          	ld	s0,8(sp)
    80001d34:	01010113          	addi	sp,sp,16
    80001d38:	00008067          	ret
        freeMemoryHead = largeEnoughSegment->next;
    80001d3c:	00853783          	ld	a5,8(a0)
    80001d40:	00f6bc23          	sd	a5,24(a3)
    80001d44:	fe9ff06f          	j	80001d2c <_ZN15MemoryAllocator8firstFitEm+0x78>

0000000080001d48 <_ZN15MemoryAllocator10kmem_allocEm>:

void* MemoryAllocator::kmem_alloc(size_t size) {
    80001d48:	fe010113          	addi	sp,sp,-32
    80001d4c:	00113c23          	sd	ra,24(sp)
    80001d50:	00813823          	sd	s0,16(sp)
    80001d54:	00913423          	sd	s1,8(sp)
    80001d58:	01213023          	sd	s2,0(sp)
    80001d5c:	02010413          	addi	s0,sp,32
    80001d60:	00050493          	mv	s1,a0
    80001d64:	00058913          	mv	s2,a1
    size_t minBlockNo = getMinBlockNumber(size);
    80001d68:	00058513          	mv	a0,a1
    80001d6c:	00000097          	auipc	ra,0x0
    80001d70:	e00080e7          	jalr	-512(ra) # 80001b6c <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001d74:	00050593          	mv	a1,a0
    if (minBlockNo * MEM_BLOCK_SIZE - size < sizeof(SegmentDescriptor)) ++minBlockNo;
    80001d78:	00651793          	slli	a5,a0,0x6
    80001d7c:	41278933          	sub	s2,a5,s2
    80001d80:	00f00793          	li	a5,15
    80001d84:	0127e463          	bltu	a5,s2,80001d8c <_ZN15MemoryAllocator10kmem_allocEm+0x44>
    80001d88:	00150593          	addi	a1,a0,1
    SegmentDescriptor* newTaken = firstFit(minBlockNo);
    80001d8c:	00048513          	mv	a0,s1
    80001d90:	00000097          	auipc	ra,0x0
    80001d94:	f24080e7          	jalr	-220(ra) # 80001cb4 <_ZN15MemoryAllocator8firstFitEm>
    if (!newTaken) return nullptr;
    80001d98:	04050063          	beqz	a0,80001dd8 <_ZN15MemoryAllocator10kmem_allocEm+0x90>

    freeBlockNo -= newTaken->noBlocks;
    80001d9c:	00053703          	ld	a4,0(a0)
    80001da0:	0104b783          	ld	a5,16(s1)
    80001da4:	40e787b3          	sub	a5,a5,a4
    80001da8:	00f4b823          	sd	a5,16(s1)
    totalFree -= newTaken->noBlocks * MEM_BLOCK_SIZE;
    80001dac:	00053783          	ld	a5,0(a0)
    80001db0:	00679713          	slli	a4,a5,0x6
    80001db4:	0004b783          	ld	a5,0(s1)
    80001db8:	40e787b3          	sub	a5,a5,a4
    80001dbc:	00f4b023          	sd	a5,0(s1)
    totalTaken += newTaken->noBlocks * MEM_BLOCK_SIZE;
    80001dc0:	00053783          	ld	a5,0(a0)
    80001dc4:	00679713          	slli	a4,a5,0x6
    80001dc8:	0084b783          	ld	a5,8(s1)
    80001dcc:	00e787b3          	add	a5,a5,a4
    80001dd0:	00f4b423          	sd	a5,8(s1)

    return (uint8*) newTaken + sizeof(SegmentDescriptor);
    80001dd4:	01050513          	addi	a0,a0,16
}
    80001dd8:	01813083          	ld	ra,24(sp)
    80001ddc:	01013403          	ld	s0,16(sp)
    80001de0:	00813483          	ld	s1,8(sp)
    80001de4:	00013903          	ld	s2,0(sp)
    80001de8:	02010113          	addi	sp,sp,32
    80001dec:	00008067          	ret

0000000080001df0 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* newFree) {
    80001df0:	ff010113          	addi	sp,sp,-16
    80001df4:	00813423          	sd	s0,8(sp)
    80001df8:	01010413          	addi	s0,sp,16
    if (newFree == nullptr) return 0;
    80001dfc:	08058863          	beqz	a1,80001e8c <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>
    SegmentDescriptor* newFreeSegment = (SegmentDescriptor*) ((uint8*) newFree - sizeof(SegmentDescriptor));
    80001e00:	ff058693          	addi	a3,a1,-16
    freeBlockNo += newFreeSegment->noBlocks;
    80001e04:	ff05b703          	ld	a4,-16(a1)
    80001e08:	01053783          	ld	a5,16(a0)
    80001e0c:	00e787b3          	add	a5,a5,a4
    80001e10:	00f53823          	sd	a5,16(a0)
    totalFree += newFreeSegment->noBlocks * MEM_BLOCK_SIZE;
    80001e14:	ff05b783          	ld	a5,-16(a1)
    80001e18:	00679713          	slli	a4,a5,0x6
    80001e1c:	00053783          	ld	a5,0(a0)
    80001e20:	00e787b3          	add	a5,a5,a4
    80001e24:	00f53023          	sd	a5,0(a0)
    totalTaken -= newFreeSegment->noBlocks * MEM_BLOCK_SIZE;
    80001e28:	ff05b783          	ld	a5,-16(a1)
    80001e2c:	00679713          	slli	a4,a5,0x6
    80001e30:	00853783          	ld	a5,8(a0)
    80001e34:	40e787b3          	sub	a5,a5,a4
    80001e38:	00f53423          	sd	a5,8(a0)

    SegmentDescriptor* after = freeMemoryHead, *prev = nullptr;
    80001e3c:	01853783          	ld	a5,24(a0)
    80001e40:	00000713          	li	a4,0
    while (after && after < newFreeSegment) {
    80001e44:	00078a63          	beqz	a5,80001e58 <_ZN15MemoryAllocator9kmem_freeEPv+0x68>
    80001e48:	00d7f863          	bgeu	a5,a3,80001e58 <_ZN15MemoryAllocator9kmem_freeEPv+0x68>
        prev = after; after = after->next; }
    80001e4c:	00078713          	mv	a4,a5
    80001e50:	0087b783          	ld	a5,8(a5)
    while (after && after < newFreeSegment) {
    80001e54:	ff1ff06f          	j	80001e44 <_ZN15MemoryAllocator9kmem_freeEPv+0x54>

    newFreeSegment->next = after;
    80001e58:	fef5bc23          	sd	a5,-8(a1)
    if (prev) prev->next = newFreeSegment;
    80001e5c:	04070063          	beqz	a4,80001e9c <_ZN15MemoryAllocator9kmem_freeEPv+0xac>
    80001e60:	00d73423          	sd	a3,8(a4)
    else freeMemoryHead = newFreeSegment;

    if (prev && (uint8*) prev + prev->noBlocks * MEM_BLOCK_SIZE == (uint8*) newFreeSegment) {
    80001e64:	00070a63          	beqz	a4,80001e78 <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
    80001e68:	00073503          	ld	a0,0(a4)
    80001e6c:	00651613          	slli	a2,a0,0x6
    80001e70:	00c70633          	add	a2,a4,a2
    80001e74:	02d60863          	beq	a2,a3,80001ea4 <_ZN15MemoryAllocator9kmem_freeEPv+0xb4>
        prev->next = newFreeSegment->next;
        prev->noBlocks += newFreeSegment->noBlocks;
        newFreeSegment = prev;
    }

    if (after && (uint8*) newFreeSegment + newFreeSegment->noBlocks * MEM_BLOCK_SIZE == (uint8*) after) {
    80001e78:	00078a63          	beqz	a5,80001e8c <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>
    80001e7c:	0006b603          	ld	a2,0(a3)
    80001e80:	00661713          	slli	a4,a2,0x6
    80001e84:	00e68733          	add	a4,a3,a4
    80001e88:	02f70c63          	beq	a4,a5,80001ec0 <_ZN15MemoryAllocator9kmem_freeEPv+0xd0>
        newFreeSegment->next = after->next; newFreeSegment->noBlocks += after->noBlocks; }

    return 0;
}
    80001e8c:	00000513          	li	a0,0
    80001e90:	00813403          	ld	s0,8(sp)
    80001e94:	01010113          	addi	sp,sp,16
    80001e98:	00008067          	ret
    else freeMemoryHead = newFreeSegment;
    80001e9c:	00d53c23          	sd	a3,24(a0)
    80001ea0:	fc5ff06f          	j	80001e64 <_ZN15MemoryAllocator9kmem_freeEPv+0x74>
        prev->next = newFreeSegment->next;
    80001ea4:	ff85b683          	ld	a3,-8(a1)
    80001ea8:	00d73423          	sd	a3,8(a4)
        prev->noBlocks += newFreeSegment->noBlocks;
    80001eac:	ff05b683          	ld	a3,-16(a1)
    80001eb0:	00d50533          	add	a0,a0,a3
    80001eb4:	00a73023          	sd	a0,0(a4)
        newFreeSegment = prev;
    80001eb8:	00070693          	mv	a3,a4
    80001ebc:	fbdff06f          	j	80001e78 <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
        newFreeSegment->next = after->next; newFreeSegment->noBlocks += after->noBlocks; }
    80001ec0:	0087b703          	ld	a4,8(a5)
    80001ec4:	00e6b423          	sd	a4,8(a3)
    80001ec8:	0007b783          	ld	a5,0(a5)
    80001ecc:	00f60633          	add	a2,a2,a5
    80001ed0:	00c6b023          	sd	a2,0(a3)
    80001ed4:	fb9ff06f          	j	80001e8c <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>

0000000080001ed8 <_ZN15MemoryAllocator30printInstanceMemorySpaceParamsEv>:

void MemoryAllocator::printInstanceMemorySpaceParams() {
    80001ed8:	fe010113          	addi	sp,sp,-32
    80001edc:	00113c23          	sd	ra,24(sp)
    80001ee0:	00813823          	sd	s0,16(sp)
    80001ee4:	00913423          	sd	s1,8(sp)
    80001ee8:	01213023          	sd	s2,0(sp)
    80001eec:	02010413          	addi	s0,sp,32
    80001ef0:	00050493          	mv	s1,a0
    printString("##################################\n\n");
    80001ef4:	00005517          	auipc	a0,0x5
    80001ef8:	23c50513          	addi	a0,a0,572 # 80007130 <CONSOLE_STATUS+0x120>
    80001efc:	00002097          	auipc	ra,0x2
    80001f00:	df0080e7          	jalr	-528(ra) # 80003cec <_Z11printStringPKc>
    printString("MemoryAllocator address: "); printInteger((uint64)this); printString("\n");
    80001f04:	00005517          	auipc	a0,0x5
    80001f08:	25450513          	addi	a0,a0,596 # 80007158 <CONSOLE_STATUS+0x148>
    80001f0c:	00002097          	auipc	ra,0x2
    80001f10:	de0080e7          	jalr	-544(ra) # 80003cec <_Z11printStringPKc>
    80001f14:	00048513          	mv	a0,s1
    80001f18:	00002097          	auipc	ra,0x2
    80001f1c:	e44080e7          	jalr	-444(ra) # 80003d5c <_Z12printIntegerm>
    80001f20:	00005517          	auipc	a0,0x5
    80001f24:	16850513          	addi	a0,a0,360 # 80007088 <CONSOLE_STATUS+0x78>
    80001f28:	00002097          	auipc	ra,0x2
    80001f2c:	dc4080e7          	jalr	-572(ra) # 80003cec <_Z11printStringPKc>

    // size_t noBlocksForStoringMemoryAllocator = sizeof(MemoryAllocator) / MEM_BLOCK_SIZE + 1;
    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
    80001f30:	02000513          	li	a0,32
    80001f34:	00000097          	auipc	ra,0x0
    80001f38:	c38080e7          	jalr	-968(ra) # 80001b6c <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001f3c:	00050913          	mv	s2,a0
    printString("noBlocksForStoringMemoryAllocator: ");
    80001f40:	00005517          	auipc	a0,0x5
    80001f44:	23850513          	addi	a0,a0,568 # 80007178 <CONSOLE_STATUS+0x168>
    80001f48:	00002097          	auipc	ra,0x2
    80001f4c:	da4080e7          	jalr	-604(ra) # 80003cec <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator); printString("\n");
    80001f50:	00090513          	mv	a0,s2
    80001f54:	00002097          	auipc	ra,0x2
    80001f58:	e08080e7          	jalr	-504(ra) # 80003d5c <_Z12printIntegerm>
    80001f5c:	00005517          	auipc	a0,0x5
    80001f60:	12c50513          	addi	a0,a0,300 # 80007088 <CONSOLE_STATUS+0x78>
    80001f64:	00002097          	auipc	ra,0x2
    80001f68:	d88080e7          	jalr	-632(ra) # 80003cec <_Z11printStringPKc>
    printString("noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE: ");
    80001f6c:	00005517          	auipc	a0,0x5
    80001f70:	23450513          	addi	a0,a0,564 # 800071a0 <CONSOLE_STATUS+0x190>
    80001f74:	00002097          	auipc	ra,0x2
    80001f78:	d78080e7          	jalr	-648(ra) # 80003cec <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE); printString("\n\n");
    80001f7c:	00691513          	slli	a0,s2,0x6
    80001f80:	00002097          	auipc	ra,0x2
    80001f84:	ddc080e7          	jalr	-548(ra) # 80003d5c <_Z12printIntegerm>
    80001f88:	00005517          	auipc	a0,0x5
    80001f8c:	25050513          	addi	a0,a0,592 # 800071d8 <CONSOLE_STATUS+0x1c8>
    80001f90:	00002097          	auipc	ra,0x2
    80001f94:	d5c080e7          	jalr	-676(ra) # 80003cec <_Z11printStringPKc>

    printString("Managed memory space start: ");
    80001f98:	00005517          	auipc	a0,0x5
    80001f9c:	24850513          	addi	a0,a0,584 # 800071e0 <CONSOLE_STATUS+0x1d0>
    80001fa0:	00002097          	auipc	ra,0x2
    80001fa4:	d4c080e7          	jalr	-692(ra) # 80003cec <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceStart); printString("\n");
    80001fa8:	00006917          	auipc	s2,0x6
    80001fac:	35890913          	addi	s2,s2,856 # 80008300 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    80001fb0:	01093503          	ld	a0,16(s2)
    80001fb4:	00002097          	auipc	ra,0x2
    80001fb8:	da8080e7          	jalr	-600(ra) # 80003d5c <_Z12printIntegerm>
    80001fbc:	00005517          	auipc	a0,0x5
    80001fc0:	0cc50513          	addi	a0,a0,204 # 80007088 <CONSOLE_STATUS+0x78>
    80001fc4:	00002097          	auipc	ra,0x2
    80001fc8:	d28080e7          	jalr	-728(ra) # 80003cec <_Z11printStringPKc>
    printString("Managed memory space end: ");
    80001fcc:	00005517          	auipc	a0,0x5
    80001fd0:	23450513          	addi	a0,a0,564 # 80007200 <CONSOLE_STATUS+0x1f0>
    80001fd4:	00002097          	auipc	ra,0x2
    80001fd8:	d18080e7          	jalr	-744(ra) # 80003cec <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceEnd); printString("\n\n");
    80001fdc:	00093503          	ld	a0,0(s2)
    80001fe0:	00002097          	auipc	ra,0x2
    80001fe4:	d7c080e7          	jalr	-644(ra) # 80003d5c <_Z12printIntegerm>
    80001fe8:	00005517          	auipc	a0,0x5
    80001fec:	1f050513          	addi	a0,a0,496 # 800071d8 <CONSOLE_STATUS+0x1c8>
    80001ff0:	00002097          	auipc	ra,0x2
    80001ff4:	cfc080e7          	jalr	-772(ra) # 80003cec <_Z11printStringPKc>

    printString("Total Free: "); printInteger(getTotalFree()); printString("\n");
    80001ff8:	00005517          	auipc	a0,0x5
    80001ffc:	22850513          	addi	a0,a0,552 # 80007220 <CONSOLE_STATUS+0x210>
    80002000:	00002097          	auipc	ra,0x2
    80002004:	cec080e7          	jalr	-788(ra) # 80003cec <_Z11printStringPKc>
    80002008:	0004b503          	ld	a0,0(s1)
    8000200c:	00002097          	auipc	ra,0x2
    80002010:	d50080e7          	jalr	-688(ra) # 80003d5c <_Z12printIntegerm>
    80002014:	00005517          	auipc	a0,0x5
    80002018:	07450513          	addi	a0,a0,116 # 80007088 <CONSOLE_STATUS+0x78>
    8000201c:	00002097          	auipc	ra,0x2
    80002020:	cd0080e7          	jalr	-816(ra) # 80003cec <_Z11printStringPKc>
    printString("Total Taken: "); printInteger(getTotalTaken()); printString("\n");
    80002024:	00005517          	auipc	a0,0x5
    80002028:	20c50513          	addi	a0,a0,524 # 80007230 <CONSOLE_STATUS+0x220>
    8000202c:	00002097          	auipc	ra,0x2
    80002030:	cc0080e7          	jalr	-832(ra) # 80003cec <_Z11printStringPKc>
    80002034:	0084b503          	ld	a0,8(s1)
    80002038:	00002097          	auipc	ra,0x2
    8000203c:	d24080e7          	jalr	-732(ra) # 80003d5c <_Z12printIntegerm>
    80002040:	00005517          	auipc	a0,0x5
    80002044:	04850513          	addi	a0,a0,72 # 80007088 <CONSOLE_STATUS+0x78>
    80002048:	00002097          	auipc	ra,0x2
    8000204c:	ca4080e7          	jalr	-860(ra) # 80003cec <_Z11printStringPKc>
    printString("Free Block No: "); printInteger(getFreeBlockNo()); printString("\n");
    80002050:	00005517          	auipc	a0,0x5
    80002054:	1f050513          	addi	a0,a0,496 # 80007240 <CONSOLE_STATUS+0x230>
    80002058:	00002097          	auipc	ra,0x2
    8000205c:	c94080e7          	jalr	-876(ra) # 80003cec <_Z11printStringPKc>
    80002060:	0104b503          	ld	a0,16(s1)
    80002064:	00002097          	auipc	ra,0x2
    80002068:	cf8080e7          	jalr	-776(ra) # 80003d5c <_Z12printIntegerm>
    8000206c:	00005517          	auipc	a0,0x5
    80002070:	01c50513          	addi	a0,a0,28 # 80007088 <CONSOLE_STATUS+0x78>
    80002074:	00002097          	auipc	ra,0x2
    80002078:	c78080e7          	jalr	-904(ra) # 80003cec <_Z11printStringPKc>
    printString("\n##################################\n");
    8000207c:	00005517          	auipc	a0,0x5
    80002080:	1d450513          	addi	a0,a0,468 # 80007250 <CONSOLE_STATUS+0x240>
    80002084:	00002097          	auipc	ra,0x2
    80002088:	c68080e7          	jalr	-920(ra) # 80003cec <_Z11printStringPKc>
}
    8000208c:	01813083          	ld	ra,24(sp)
    80002090:	01013403          	ld	s0,16(sp)
    80002094:	00813483          	ld	s1,8(sp)
    80002098:	00013903          	ld	s2,0(sp)
    8000209c:	02010113          	addi	sp,sp,32
    800020a0:	00008067          	ret

00000000800020a4 <_ZN15MemoryAllocator22printMemorySpaceParamsEv>:

void MemoryAllocator::printMemorySpaceParams() {
    800020a4:	fe010113          	addi	sp,sp,-32
    800020a8:	00113c23          	sd	ra,24(sp)
    800020ac:	00813823          	sd	s0,16(sp)
    800020b0:	00913423          	sd	s1,8(sp)
    800020b4:	01213023          	sd	s2,0(sp)
    800020b8:	02010413          	addi	s0,sp,32
    printString("----------------------------------\n\n");
    800020bc:	00005517          	auipc	a0,0x5
    800020c0:	1bc50513          	addi	a0,a0,444 # 80007278 <CONSOLE_STATUS+0x268>
    800020c4:	00002097          	auipc	ra,0x2
    800020c8:	c28080e7          	jalr	-984(ra) # 80003cec <_Z11printStringPKc>
    printString("Size of MemoryAllocator class: ");
    800020cc:	00005517          	auipc	a0,0x5
    800020d0:	1d450513          	addi	a0,a0,468 # 800072a0 <CONSOLE_STATUS+0x290>
    800020d4:	00002097          	auipc	ra,0x2
    800020d8:	c18080e7          	jalr	-1000(ra) # 80003cec <_Z11printStringPKc>
    printInteger(sizeof(MemoryAllocator)); printString("\n");
    800020dc:	02000513          	li	a0,32
    800020e0:	00002097          	auipc	ra,0x2
    800020e4:	c7c080e7          	jalr	-900(ra) # 80003d5c <_Z12printIntegerm>
    800020e8:	00005517          	auipc	a0,0x5
    800020ec:	fa050513          	addi	a0,a0,-96 # 80007088 <CONSOLE_STATUS+0x78>
    800020f0:	00002097          	auipc	ra,0x2
    800020f4:	bfc080e7          	jalr	-1028(ra) # 80003cec <_Z11printStringPKc>

    printString("HEAP_START_ADDR: "); printInteger((uint64)HEAP_START_ADDR); printString("\n");
    800020f8:	00005517          	auipc	a0,0x5
    800020fc:	1e850513          	addi	a0,a0,488 # 800072e0 <CONSOLE_STATUS+0x2d0>
    80002100:	00002097          	auipc	ra,0x2
    80002104:	bec080e7          	jalr	-1044(ra) # 80003cec <_Z11printStringPKc>
    80002108:	00006497          	auipc	s1,0x6
    8000210c:	1384b483          	ld	s1,312(s1) # 80008240 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002110:	0004b503          	ld	a0,0(s1)
    80002114:	00002097          	auipc	ra,0x2
    80002118:	c48080e7          	jalr	-952(ra) # 80003d5c <_Z12printIntegerm>
    8000211c:	00005517          	auipc	a0,0x5
    80002120:	f6c50513          	addi	a0,a0,-148 # 80007088 <CONSOLE_STATUS+0x78>
    80002124:	00002097          	auipc	ra,0x2
    80002128:	bc8080e7          	jalr	-1080(ra) # 80003cec <_Z11printStringPKc>
    printString("HEAP_END_ADDR: "); printInteger((uint64)HEAP_END_ADDR); printString("\n");
    8000212c:	00005517          	auipc	a0,0x5
    80002130:	19450513          	addi	a0,a0,404 # 800072c0 <CONSOLE_STATUS+0x2b0>
    80002134:	00002097          	auipc	ra,0x2
    80002138:	bb8080e7          	jalr	-1096(ra) # 80003cec <_Z11printStringPKc>
    8000213c:	00006917          	auipc	s2,0x6
    80002140:	14c93903          	ld	s2,332(s2) # 80008288 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002144:	00093503          	ld	a0,0(s2)
    80002148:	00002097          	auipc	ra,0x2
    8000214c:	c14080e7          	jalr	-1004(ra) # 80003d5c <_Z12printIntegerm>
    80002150:	00005517          	auipc	a0,0x5
    80002154:	f3850513          	addi	a0,a0,-200 # 80007088 <CONSOLE_STATUS+0x78>
    80002158:	00002097          	auipc	ra,0x2
    8000215c:	b94080e7          	jalr	-1132(ra) # 80003cec <_Z11printStringPKc>

    printString("HEAP_END_ADDR - HEAP_START_ADDR: ");
    80002160:	00005517          	auipc	a0,0x5
    80002164:	17050513          	addi	a0,a0,368 # 800072d0 <CONSOLE_STATUS+0x2c0>
    80002168:	00002097          	auipc	ra,0x2
    8000216c:	b84080e7          	jalr	-1148(ra) # 80003cec <_Z11printStringPKc>
    printInteger((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)); printString("\n");
    80002170:	00093503          	ld	a0,0(s2)
    80002174:	0004b783          	ld	a5,0(s1)
    80002178:	40f50533          	sub	a0,a0,a5
    8000217c:	00002097          	auipc	ra,0x2
    80002180:	be0080e7          	jalr	-1056(ra) # 80003d5c <_Z12printIntegerm>
    80002184:	00005517          	auipc	a0,0x5
    80002188:	f0450513          	addi	a0,a0,-252 # 80007088 <CONSOLE_STATUS+0x78>
    8000218c:	00002097          	auipc	ra,0x2
    80002190:	b60080e7          	jalr	-1184(ra) # 80003cec <_Z11printStringPKc>

    printString("MEM_BLOCK_SIZE: "); printInteger(MEM_BLOCK_SIZE); printString("\n");
    80002194:	00005517          	auipc	a0,0x5
    80002198:	16450513          	addi	a0,a0,356 # 800072f8 <CONSOLE_STATUS+0x2e8>
    8000219c:	00002097          	auipc	ra,0x2
    800021a0:	b50080e7          	jalr	-1200(ra) # 80003cec <_Z11printStringPKc>
    800021a4:	04000513          	li	a0,64
    800021a8:	00002097          	auipc	ra,0x2
    800021ac:	bb4080e7          	jalr	-1100(ra) # 80003d5c <_Z12printIntegerm>
    800021b0:	00005517          	auipc	a0,0x5
    800021b4:	ed850513          	addi	a0,a0,-296 # 80007088 <CONSOLE_STATUS+0x78>
    800021b8:	00002097          	auipc	ra,0x2
    800021bc:	b34080e7          	jalr	-1228(ra) # 80003cec <_Z11printStringPKc>

    printString("Number of blocks in (HEAP_END_ADDR - HEAP_START_ADDR): ");
    800021c0:	00005517          	auipc	a0,0x5
    800021c4:	15050513          	addi	a0,a0,336 # 80007310 <CONSOLE_STATUS+0x300>
    800021c8:	00002097          	auipc	ra,0x2
    800021cc:	b24080e7          	jalr	-1244(ra) # 80003cec <_Z11printStringPKc>
    printInteger(((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)) / MEM_BLOCK_SIZE);
    800021d0:	00093503          	ld	a0,0(s2)
    800021d4:	0004b783          	ld	a5,0(s1)
    800021d8:	40f50533          	sub	a0,a0,a5
    800021dc:	00655513          	srli	a0,a0,0x6
    800021e0:	00002097          	auipc	ra,0x2
    800021e4:	b7c080e7          	jalr	-1156(ra) # 80003d5c <_Z12printIntegerm>
    printString("\n");
    800021e8:	00005517          	auipc	a0,0x5
    800021ec:	ea050513          	addi	a0,a0,-352 # 80007088 <CONSOLE_STATUS+0x78>
    800021f0:	00002097          	auipc	ra,0x2
    800021f4:	afc080e7          	jalr	-1284(ra) # 80003cec <_Z11printStringPKc>
    printString("\n----------------------------------\n");
    800021f8:	00005517          	auipc	a0,0x5
    800021fc:	15050513          	addi	a0,a0,336 # 80007348 <CONSOLE_STATUS+0x338>
    80002200:	00002097          	auipc	ra,0x2
    80002204:	aec080e7          	jalr	-1300(ra) # 80003cec <_Z11printStringPKc>
}
    80002208:	01813083          	ld	ra,24(sp)
    8000220c:	01013403          	ld	s0,16(sp)
    80002210:	00813483          	ld	s1,8(sp)
    80002214:	00013903          	ld	s2,0(sp)
    80002218:	02010113          	addi	sp,sp,32
    8000221c:	00008067          	ret

0000000080002220 <_ZN15MemoryAllocator23printFreeMemoryHeadDataEv>:

void MemoryAllocator::printFreeMemoryHeadData() {
    80002220:	fe010113          	addi	sp,sp,-32
    80002224:	00113c23          	sd	ra,24(sp)
    80002228:	00813823          	sd	s0,16(sp)
    8000222c:	00913423          	sd	s1,8(sp)
    80002230:	02010413          	addi	s0,sp,32
    80002234:	00050493          	mv	s1,a0
    printString("##################################\n\n");
    80002238:	00005517          	auipc	a0,0x5
    8000223c:	ef850513          	addi	a0,a0,-264 # 80007130 <CONSOLE_STATUS+0x120>
    80002240:	00002097          	auipc	ra,0x2
    80002244:	aac080e7          	jalr	-1364(ra) # 80003cec <_Z11printStringPKc>
    printString("freeMemoryHead: ");
    80002248:	00005517          	auipc	a0,0x5
    8000224c:	12850513          	addi	a0,a0,296 # 80007370 <CONSOLE_STATUS+0x360>
    80002250:	00002097          	auipc	ra,0x2
    80002254:	a9c080e7          	jalr	-1380(ra) # 80003cec <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead); printString("\n");
    80002258:	0184b503          	ld	a0,24(s1)
    8000225c:	00002097          	auipc	ra,0x2
    80002260:	b00080e7          	jalr	-1280(ra) # 80003d5c <_Z12printIntegerm>
    80002264:	00005517          	auipc	a0,0x5
    80002268:	e2450513          	addi	a0,a0,-476 # 80007088 <CONSOLE_STATUS+0x78>
    8000226c:	00002097          	auipc	ra,0x2
    80002270:	a80080e7          	jalr	-1408(ra) # 80003cec <_Z11printStringPKc>
    printString("freeMemoryHead->noBlocks: ");
    80002274:	00005517          	auipc	a0,0x5
    80002278:	11450513          	addi	a0,a0,276 # 80007388 <CONSOLE_STATUS+0x378>
    8000227c:	00002097          	auipc	ra,0x2
    80002280:	a70080e7          	jalr	-1424(ra) # 80003cec <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead->noBlocks); printString("\n");
    80002284:	0184b783          	ld	a5,24(s1)
    80002288:	0007b503          	ld	a0,0(a5)
    8000228c:	00002097          	auipc	ra,0x2
    80002290:	ad0080e7          	jalr	-1328(ra) # 80003d5c <_Z12printIntegerm>
    80002294:	00005517          	auipc	a0,0x5
    80002298:	df450513          	addi	a0,a0,-524 # 80007088 <CONSOLE_STATUS+0x78>
    8000229c:	00002097          	auipc	ra,0x2
    800022a0:	a50080e7          	jalr	-1456(ra) # 80003cec <_Z11printStringPKc>
    printString("freeMemoryHead->next: ");
    800022a4:	00005517          	auipc	a0,0x5
    800022a8:	10450513          	addi	a0,a0,260 # 800073a8 <CONSOLE_STATUS+0x398>
    800022ac:	00002097          	auipc	ra,0x2
    800022b0:	a40080e7          	jalr	-1472(ra) # 80003cec <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead->next); printString("\n");
    800022b4:	0184b783          	ld	a5,24(s1)
    800022b8:	0087b503          	ld	a0,8(a5)
    800022bc:	00002097          	auipc	ra,0x2
    800022c0:	aa0080e7          	jalr	-1376(ra) # 80003d5c <_Z12printIntegerm>
    800022c4:	00005517          	auipc	a0,0x5
    800022c8:	dc450513          	addi	a0,a0,-572 # 80007088 <CONSOLE_STATUS+0x78>
    800022cc:	00002097          	auipc	ra,0x2
    800022d0:	a20080e7          	jalr	-1504(ra) # 80003cec <_Z11printStringPKc>
    printString("Segment Descriptor size: ");
    800022d4:	00005517          	auipc	a0,0x5
    800022d8:	0ec50513          	addi	a0,a0,236 # 800073c0 <CONSOLE_STATUS+0x3b0>
    800022dc:	00002097          	auipc	ra,0x2
    800022e0:	a10080e7          	jalr	-1520(ra) # 80003cec <_Z11printStringPKc>
    printInteger(sizeof(*freeMemoryHead)); printString("\n");
    800022e4:	01000513          	li	a0,16
    800022e8:	00002097          	auipc	ra,0x2
    800022ec:	a74080e7          	jalr	-1420(ra) # 80003d5c <_Z12printIntegerm>
    800022f0:	00005517          	auipc	a0,0x5
    800022f4:	d9850513          	addi	a0,a0,-616 # 80007088 <CONSOLE_STATUS+0x78>
    800022f8:	00002097          	auipc	ra,0x2
    800022fc:	9f4080e7          	jalr	-1548(ra) # 80003cec <_Z11printStringPKc>
    printString("\n##################################\n");
    80002300:	00005517          	auipc	a0,0x5
    80002304:	f5050513          	addi	a0,a0,-176 # 80007250 <CONSOLE_STATUS+0x240>
    80002308:	00002097          	auipc	ra,0x2
    8000230c:	9e4080e7          	jalr	-1564(ra) # 80003cec <_Z11printStringPKc>
}
    80002310:	01813083          	ld	ra,24(sp)
    80002314:	01013403          	ld	s0,16(sp)
    80002318:	00813483          	ld	s1,8(sp)
    8000231c:	02010113          	addi	sp,sp,32
    80002320:	00008067          	ret

0000000080002324 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv>:
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    return beforeTestFreeBlockNo == afterTestFreeBlockNo - minNoBlocksForSize - addendForSegDesc;

}

size_t MemoryAllocatorTest::getFreeBlocksCnt() {
    80002324:	ff010113          	addi	sp,sp,-16
    80002328:	00113423          	sd	ra,8(sp)
    8000232c:	00813023          	sd	s0,0(sp)
    80002330:	01010413          	addi	s0,sp,16
    MemoryAllocator::SegmentDescriptor* freeMemHead = MemoryAllocator::instance()->freeMemoryHead;
    80002334:	00000097          	auipc	ra,0x0
    80002338:	930080e7          	jalr	-1744(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    8000233c:	01853783          	ld	a5,24(a0)
    size_t blockCnt = 0;
    80002340:	00000513          	li	a0,0
    while (freeMemHead) {
    80002344:	00078a63          	beqz	a5,80002358 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv+0x34>
        blockCnt += freeMemHead->noBlocks;
    80002348:	0007b703          	ld	a4,0(a5)
    8000234c:	00e50533          	add	a0,a0,a4
        freeMemHead = freeMemHead->next;
    80002350:	0087b783          	ld	a5,8(a5)
    while (freeMemHead) {
    80002354:	ff1ff06f          	j	80002344 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv+0x20>
    }
    return blockCnt;
}
    80002358:	00813083          	ld	ra,8(sp)
    8000235c:	00013403          	ld	s0,0(sp)
    80002360:	01010113          	addi	sp,sp,16
    80002364:	00008067          	ret

0000000080002368 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>:

bool MemoryAllocatorTest::testMemoryMetadataValidity() {
    80002368:	fd010113          	addi	sp,sp,-48
    8000236c:	02113423          	sd	ra,40(sp)
    80002370:	02813023          	sd	s0,32(sp)
    80002374:	00913c23          	sd	s1,24(sp)
    80002378:	01213823          	sd	s2,16(sp)
    8000237c:	01313423          	sd	s3,8(sp)
    80002380:	01413023          	sd	s4,0(sp)
    80002384:	03010413          	addi	s0,sp,48
    80002388:	00050913          	mv	s2,a0
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    8000238c:	00000097          	auipc	ra,0x0
    80002390:	8d8080e7          	jalr	-1832(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>

    void* kmem_alloc(size_t size);
    int kmem_free(void* newFree);
    void printInstanceMemorySpaceParams();
    void printFreeMemoryHeadData();
    size_t getTotalFree() { return totalFree; }
    80002394:	00053483          	ld	s1,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002398:	00000097          	auipc	ra,0x0
    8000239c:	8cc080e7          	jalr	-1844(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800023a0:	00853a03          	ld	s4,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    800023a4:	00000097          	auipc	ra,0x0
    800023a8:	8c0080e7          	jalr	-1856(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    800023ac:	01053983          	ld	s3,16(a0)
    size_t freeBlocksCnt = getFreeBlocksCnt();
    800023b0:	00090513          	mv	a0,s2
    800023b4:	00000097          	auipc	ra,0x0
    800023b8:	f70080e7          	jalr	-144(ra) # 80002324 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv>

    if (freeBlocksCnt != beforeTestFreeBlockNo) return false;
    800023bc:	02a99c63          	bne	s3,a0,800023f4 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x8c>
    if (freeBlocksCnt != beforeTestTotalFree / MEM_BLOCK_SIZE) return false;
    800023c0:	0064d793          	srli	a5,s1,0x6
    800023c4:	04a79a63          	bne	a5,a0,80002418 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0xb0>

    size_t totalMemory = (size_t) (MemoryAllocator::managedMemorySpaceEnd - MemoryAllocator::managedMemorySpaceStart);
    800023c8:	00006797          	auipc	a5,0x6
    800023cc:	e807b783          	ld	a5,-384(a5) # 80008248 <_GLOBAL_OFFSET_TABLE_+0x10>
    800023d0:	0007b503          	ld	a0,0(a5)
    800023d4:	00006797          	auipc	a5,0x6
    800023d8:	ecc7b783          	ld	a5,-308(a5) # 800082a0 <_GLOBAL_OFFSET_TABLE_+0x68>
    800023dc:	0007b783          	ld	a5,0(a5)
    800023e0:	40f507b3          	sub	a5,a0,a5
    return totalMemory == beforeTestTotalFree + beforeTestTotalTaken;
    800023e4:	01448533          	add	a0,s1,s4
    800023e8:	40f50533          	sub	a0,a0,a5
    800023ec:	00153513          	seqz	a0,a0
    800023f0:	0080006f          	j	800023f8 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x90>
    if (freeBlocksCnt != beforeTestFreeBlockNo) return false;
    800023f4:	00000513          	li	a0,0
}
    800023f8:	02813083          	ld	ra,40(sp)
    800023fc:	02013403          	ld	s0,32(sp)
    80002400:	01813483          	ld	s1,24(sp)
    80002404:	01013903          	ld	s2,16(sp)
    80002408:	00813983          	ld	s3,8(sp)
    8000240c:	00013a03          	ld	s4,0(sp)
    80002410:	03010113          	addi	sp,sp,48
    80002414:	00008067          	ret
    if (freeBlocksCnt != beforeTestTotalFree / MEM_BLOCK_SIZE) return false;
    80002418:	00000513          	li	a0,0
    8000241c:	fddff06f          	j	800023f8 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x90>

0000000080002420 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>:
bool MemoryAllocatorTest::testMemoryAllocate(uint64 size, void** allocatedMemoryPointer) {
    80002420:	fa010113          	addi	sp,sp,-96
    80002424:	04113c23          	sd	ra,88(sp)
    80002428:	04813823          	sd	s0,80(sp)
    8000242c:	04913423          	sd	s1,72(sp)
    80002430:	05213023          	sd	s2,64(sp)
    80002434:	03313c23          	sd	s3,56(sp)
    80002438:	03413823          	sd	s4,48(sp)
    8000243c:	03513423          	sd	s5,40(sp)
    80002440:	03613023          	sd	s6,32(sp)
    80002444:	01713c23          	sd	s7,24(sp)
    80002448:	01813823          	sd	s8,16(sp)
    8000244c:	01913423          	sd	s9,8(sp)
    80002450:	01a13023          	sd	s10,0(sp)
    80002454:	06010413          	addi	s0,sp,96
    80002458:	00050a13          	mv	s4,a0
    8000245c:	00058913          	mv	s2,a1
    80002460:	00060993          	mv	s3,a2
    if (!testMemoryMetadataValidity()) return false;
    80002464:	00000097          	auipc	ra,0x0
    80002468:	f04080e7          	jalr	-252(ra) # 80002368 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    8000246c:	00050493          	mv	s1,a0
    80002470:	04051063          	bnez	a0,800024b0 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x90>
}
    80002474:	00048513          	mv	a0,s1
    80002478:	05813083          	ld	ra,88(sp)
    8000247c:	05013403          	ld	s0,80(sp)
    80002480:	04813483          	ld	s1,72(sp)
    80002484:	04013903          	ld	s2,64(sp)
    80002488:	03813983          	ld	s3,56(sp)
    8000248c:	03013a03          	ld	s4,48(sp)
    80002490:	02813a83          	ld	s5,40(sp)
    80002494:	02013b03          	ld	s6,32(sp)
    80002498:	01813b83          	ld	s7,24(sp)
    8000249c:	01013c03          	ld	s8,16(sp)
    800024a0:	00813c83          	ld	s9,8(sp)
    800024a4:	00013d03          	ld	s10,0(sp)
    800024a8:	06010113          	addi	sp,sp,96
    800024ac:	00008067          	ret
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    800024b0:	fffff097          	auipc	ra,0xfffff
    800024b4:	7b4080e7          	jalr	1972(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    800024b8:	00053b03          	ld	s6,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    800024bc:	fffff097          	auipc	ra,0xfffff
    800024c0:	7a8080e7          	jalr	1960(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800024c4:	00853b83          	ld	s7,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    800024c8:	fffff097          	auipc	ra,0xfffff
    800024cc:	79c080e7          	jalr	1948(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    800024d0:	01053c03          	ld	s8,16(a0)
    *allocatedMemoryPointer = MemoryAllocator::instance()->kmem_alloc(size);
    800024d4:	fffff097          	auipc	ra,0xfffff
    800024d8:	790080e7          	jalr	1936(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    800024dc:	00090593          	mv	a1,s2
    800024e0:	00000097          	auipc	ra,0x0
    800024e4:	868080e7          	jalr	-1944(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
    800024e8:	00050a93          	mv	s5,a0
    800024ec:	00a9b023          	sd	a0,0(s3)
    if (*allocatedMemoryPointer == nullptr && size == (uint64) -37) return true;
    800024f0:	08050663          	beqz	a0,8000257c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x15c>
    size_t minNoBlocksForSize = MemoryAllocator::getMinBlockNumber(size);
    800024f4:	00090513          	mv	a0,s2
    800024f8:	fffff097          	auipc	ra,0xfffff
    800024fc:	674080e7          	jalr	1652(ra) # 80001b6c <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80002500:	00050993          	mv	s3,a0
    size_t addendForSegDesc = minNoBlocksForSize * MEM_BLOCK_SIZE - size < sizeof(MemoryAllocator::SegmentDescriptor);
    80002504:	00651593          	slli	a1,a0,0x6
    80002508:	41258933          	sub	s2,a1,s2
    8000250c:	01093913          	sltiu	s2,s2,16
    size_t allocatedMemory = (minNoBlocksForSize + addendForSegDesc) * MEM_BLOCK_SIZE;
    80002510:	01250cb3          	add	s9,a0,s2
    80002514:	006c9d13          	slli	s10,s9,0x6
    if (!testMemoryMetadataValidity()) return false;
    80002518:	000a0513          	mv	a0,s4
    8000251c:	00000097          	auipc	ra,0x0
    80002520:	e4c080e7          	jalr	-436(ra) # 80002368 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002524:	00050493          	mv	s1,a0
    80002528:	f40506e3          	beqz	a0,80002474 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    size_t afterTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    8000252c:	fffff097          	auipc	ra,0xfffff
    80002530:	738080e7          	jalr	1848(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    80002534:	00053483          	ld	s1,0(a0)
    size_t afterTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002538:	fffff097          	auipc	ra,0xfffff
    8000253c:	72c080e7          	jalr	1836(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    80002540:	00853a03          	ld	s4,8(a0)
    size_t afterTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    80002544:	fffff097          	auipc	ra,0xfffff
    80002548:	720080e7          	jalr	1824(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    8000254c:	01053783          	ld	a5,16(a0)
    if (beforeTestTotalFree != afterTestTotalFree + allocatedMemory) return false;
    80002550:	01a484b3          	add	s1,s1,s10
    80002554:	03649a63          	bne	s1,s6,80002588 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x168>
    if (beforeTestTotalTaken != afterTestTotalTaken - allocatedMemory) return false;
    80002558:	41aa0d33          	sub	s10,s4,s10
    8000255c:	037d1a63          	bne	s10,s7,80002590 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x170>
    if (beforeTestFreeBlockNo != afterTestFreeBlockNo + minNoBlocksForSize + addendForSegDesc) return false;
    80002560:	013789b3          	add	s3,a5,s3
    80002564:	01298933          	add	s2,s3,s2
    80002568:	03891863          	bne	s2,s8,80002598 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x178>
    return segDesc->noBlocks == minNoBlocksForSize + addendForSegDesc;
    8000256c:	ff0ab483          	ld	s1,-16(s5)
    80002570:	409c84b3          	sub	s1,s9,s1
    80002574:	0014b493          	seqz	s1,s1
    80002578:	efdff06f          	j	80002474 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (*allocatedMemoryPointer == nullptr && size == (uint64) -37) return true;
    8000257c:	fdb00793          	li	a5,-37
    80002580:	f6f91ae3          	bne	s2,a5,800024f4 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0xd4>
    80002584:	ef1ff06f          	j	80002474 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestTotalFree != afterTestTotalFree + allocatedMemory) return false;
    80002588:	00000493          	li	s1,0
    8000258c:	ee9ff06f          	j	80002474 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestTotalTaken != afterTestTotalTaken - allocatedMemory) return false;
    80002590:	00000493          	li	s1,0
    80002594:	ee1ff06f          	j	80002474 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestFreeBlockNo != afterTestFreeBlockNo + minNoBlocksForSize + addendForSegDesc) return false;
    80002598:	00000493          	li	s1,0
    8000259c:	ed9ff06f          	j	80002474 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>

00000000800025a0 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>:
bool MemoryAllocatorTest::testMemoryFree(uint64 size, void* allocatedMemoryPointer) {
    800025a0:	fb010113          	addi	sp,sp,-80
    800025a4:	04113423          	sd	ra,72(sp)
    800025a8:	04813023          	sd	s0,64(sp)
    800025ac:	02913c23          	sd	s1,56(sp)
    800025b0:	03213823          	sd	s2,48(sp)
    800025b4:	03313423          	sd	s3,40(sp)
    800025b8:	03413023          	sd	s4,32(sp)
    800025bc:	01513c23          	sd	s5,24(sp)
    800025c0:	01613823          	sd	s6,16(sp)
    800025c4:	01713423          	sd	s7,8(sp)
    800025c8:	01813023          	sd	s8,0(sp)
    800025cc:	05010413          	addi	s0,sp,80
    800025d0:	00050a13          	mv	s4,a0
    800025d4:	00058913          	mv	s2,a1
    800025d8:	00060493          	mv	s1,a2
    if (!testMemoryMetadataValidity()) return false;
    800025dc:	00000097          	auipc	ra,0x0
    800025e0:	d8c080e7          	jalr	-628(ra) # 80002368 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800025e4:	02051a63          	bnez	a0,80002618 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x78>
}
    800025e8:	04813083          	ld	ra,72(sp)
    800025ec:	04013403          	ld	s0,64(sp)
    800025f0:	03813483          	ld	s1,56(sp)
    800025f4:	03013903          	ld	s2,48(sp)
    800025f8:	02813983          	ld	s3,40(sp)
    800025fc:	02013a03          	ld	s4,32(sp)
    80002600:	01813a83          	ld	s5,24(sp)
    80002604:	01013b03          	ld	s6,16(sp)
    80002608:	00813b83          	ld	s7,8(sp)
    8000260c:	00013c03          	ld	s8,0(sp)
    80002610:	05010113          	addi	sp,sp,80
    80002614:	00008067          	ret
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002618:	fffff097          	auipc	ra,0xfffff
    8000261c:	64c080e7          	jalr	1612(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    80002620:	00053b03          	ld	s6,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002624:	fffff097          	auipc	ra,0xfffff
    80002628:	640080e7          	jalr	1600(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    8000262c:	00853b83          	ld	s7,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    80002630:	fffff097          	auipc	ra,0xfffff
    80002634:	634080e7          	jalr	1588(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002638:	01053a83          	ld	s5,16(a0)
    size_t minNoBlocksForSize = MemoryAllocator::getMinBlockNumber(size);
    8000263c:	00090513          	mv	a0,s2
    80002640:	fffff097          	auipc	ra,0xfffff
    80002644:	52c080e7          	jalr	1324(ra) # 80001b6c <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80002648:	00050993          	mv	s3,a0
    size_t addendForSegDesc = minNoBlocksForSize * MEM_BLOCK_SIZE - size < sizeof(MemoryAllocator::SegmentDescriptor);
    8000264c:	00651593          	slli	a1,a0,0x6
    80002650:	41258933          	sub	s2,a1,s2
    80002654:	01093913          	sltiu	s2,s2,16
    size_t allocatedMemory = (minNoBlocksForSize + addendForSegDesc) * MEM_BLOCK_SIZE;
    80002658:	01250733          	add	a4,a0,s2
    8000265c:	00671c13          	slli	s8,a4,0x6
    if (!allocatedMemoryPointer) {
    80002660:	08048463          	beqz	s1,800026e8 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x148>
    if (allocatedMemoryPointer) segDesc = (MemoryAllocator::SegmentDescriptor*)
    80002664:	08048a63          	beqz	s1,800026f8 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x158>
    80002668:	ff048793          	addi	a5,s1,-16
    if (allocatedMemoryPointer)
    8000266c:	00048863          	beqz	s1,8000267c <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xdc>
    if (segDesc->noBlocks != minNoBlocksForSize + addendForSegDesc) return false;
    80002670:	0007b703          	ld	a4,0(a5)
    80002674:	012987b3          	add	a5,s3,s2
    80002678:	08f71463          	bne	a4,a5,80002700 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x160>
    MemoryAllocator::instance()->kmem_free(allocatedMemoryPointer);
    8000267c:	fffff097          	auipc	ra,0xfffff
    80002680:	5e8080e7          	jalr	1512(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002684:	00048593          	mv	a1,s1
    80002688:	fffff097          	auipc	ra,0xfffff
    8000268c:	768080e7          	jalr	1896(ra) # 80001df0 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002690:	000a0513          	mv	a0,s4
    80002694:	00000097          	auipc	ra,0x0
    80002698:	cd4080e7          	jalr	-812(ra) # 80002368 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    8000269c:	f40506e3          	beqz	a0,800025e8 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    size_t afterTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    800026a0:	fffff097          	auipc	ra,0xfffff
    800026a4:	5c4080e7          	jalr	1476(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    800026a8:	00053483          	ld	s1,0(a0)
    size_t afterTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    800026ac:	fffff097          	auipc	ra,0xfffff
    800026b0:	5b8080e7          	jalr	1464(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800026b4:	00853a03          	ld	s4,8(a0)
    size_t afterTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    800026b8:	fffff097          	auipc	ra,0xfffff
    800026bc:	5ac080e7          	jalr	1452(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    800026c0:	01053783          	ld	a5,16(a0)
    if (beforeTestTotalFree != afterTestTotalFree - allocatedMemory) return false;
    800026c4:	418484b3          	sub	s1,s1,s8
    800026c8:	05649063          	bne	s1,s6,80002708 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x168>
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    800026cc:	014c0733          	add	a4,s8,s4
    800026d0:	05771063          	bne	a4,s7,80002710 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x170>
    return beforeTestFreeBlockNo == afterTestFreeBlockNo - minNoBlocksForSize - addendForSegDesc;
    800026d4:	41378533          	sub	a0,a5,s3
    800026d8:	41250533          	sub	a0,a0,s2
    800026dc:	41550533          	sub	a0,a0,s5
    800026e0:	00153513          	seqz	a0,a0
    800026e4:	f05ff06f          	j	800025e8 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
        minNoBlocksForSize = 0; addendForSegDesc = 0; allocatedMemory = 0;
    800026e8:	00000c13          	li	s8,0
    800026ec:	00000913          	li	s2,0
    800026f0:	00000993          	li	s3,0
    800026f4:	f71ff06f          	j	80002664 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xc4>
    MemoryAllocator::SegmentDescriptor* segDesc = nullptr;
    800026f8:	00048793          	mv	a5,s1
    800026fc:	f71ff06f          	j	8000266c <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xcc>
    if (segDesc->noBlocks != minNoBlocksForSize + addendForSegDesc) return false;
    80002700:	00000513          	li	a0,0
    80002704:	ee5ff06f          	j	800025e8 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    if (beforeTestTotalFree != afterTestTotalFree - allocatedMemory) return false;
    80002708:	00000513          	li	a0,0
    8000270c:	eddff06f          	j	800025e8 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    80002710:	00000513          	li	a0,0
    80002714:	ed5ff06f          	j	800025e8 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>

0000000080002718 <_ZN19MemoryAllocatorTest13firstFitTest1Ev>:
    if (!firstFitTest2()) return false;
    if (!firstFitTest3()) return false;
    return true;
}

bool MemoryAllocatorTest::firstFitTest1() {
    80002718:	fc010113          	addi	sp,sp,-64
    8000271c:	02113c23          	sd	ra,56(sp)
    80002720:	02813823          	sd	s0,48(sp)
    80002724:	02913423          	sd	s1,40(sp)
    80002728:	03213023          	sd	s2,32(sp)
    8000272c:	01313c23          	sd	s3,24(sp)
    80002730:	01413823          	sd	s4,16(sp)
    80002734:	01513423          	sd	s5,8(sp)
    80002738:	04010413          	addi	s0,sp,64
    8000273c:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    80002740:	00000097          	auipc	ra,0x0
    80002744:	c28080e7          	jalr	-984(ra) # 80002368 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002748:	02051463          	bnez	a0,80002770 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x58>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    8000274c:	03813083          	ld	ra,56(sp)
    80002750:	03013403          	ld	s0,48(sp)
    80002754:	02813483          	ld	s1,40(sp)
    80002758:	02013903          	ld	s2,32(sp)
    8000275c:	01813983          	ld	s3,24(sp)
    80002760:	01013a03          	ld	s4,16(sp)
    80002764:	00813a83          	ld	s5,8(sp)
    80002768:	04010113          	addi	sp,sp,64
    8000276c:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002770:	fffff097          	auipc	ra,0xfffff
    80002774:	4f4080e7          	jalr	1268(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002778:	02f00593          	li	a1,47
    8000277c:	fffff097          	auipc	ra,0xfffff
    80002780:	5cc080e7          	jalr	1484(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002784:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002788:	00006797          	auipc	a5,0x6
    8000278c:	b187b783          	ld	a5,-1256(a5) # 800082a0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002790:	0007b783          	ld	a5,0(a5)
    80002794:	01078793          	addi	a5,a5,16
    80002798:	00a78663          	beq	a5,a0,800027a4 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x8c>
        return false;
    8000279c:	00000513          	li	a0,0
    800027a0:	fadff06f          	j	8000274c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    800027a4:	fffff097          	auipc	ra,0xfffff
    800027a8:	4c0080e7          	jalr	1216(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    800027ac:	03000593          	li	a1,48
    800027b0:	fffff097          	auipc	ra,0xfffff
    800027b4:	598080e7          	jalr	1432(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
    800027b8:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    800027bc:	00006797          	auipc	a5,0x6
    800027c0:	ae47b783          	ld	a5,-1308(a5) # 800082a0 <_GLOBAL_OFFSET_TABLE_+0x68>
    800027c4:	0007b783          	ld	a5,0(a5)
    800027c8:	05078793          	addi	a5,a5,80
    800027cc:	00a78663          	beq	a5,a0,800027d8 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0xc0>
        return false;
    800027d0:	00000513          	li	a0,0
    800027d4:	f79ff06f          	j	8000274c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    800027d8:	fffff097          	auipc	ra,0xfffff
    800027dc:	48c080e7          	jalr	1164(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    800027e0:	03100593          	li	a1,49
    800027e4:	fffff097          	auipc	ra,0xfffff
    800027e8:	564080e7          	jalr	1380(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
    800027ec:	00050a13          	mv	s4,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + 2 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    800027f0:	00006797          	auipc	a5,0x6
    800027f4:	ab07b783          	ld	a5,-1360(a5) # 800082a0 <_GLOBAL_OFFSET_TABLE_+0x68>
    800027f8:	0007b783          	ld	a5,0(a5)
    800027fc:	09078793          	addi	a5,a5,144
    80002800:	00a78663          	beq	a5,a0,8000280c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0xf4>
        return false;
    80002804:	00000513          	li	a0,0
    80002808:	f45ff06f          	j	8000274c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    8000280c:	fffff097          	auipc	ra,0xfffff
    80002810:	458080e7          	jalr	1112(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002814:	00098593          	mv	a1,s3
    80002818:	fffff097          	auipc	ra,0xfffff
    8000281c:	5d8080e7          	jalr	1496(ra) # 80001df0 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002820:	fffff097          	auipc	ra,0xfffff
    80002824:	444080e7          	jalr	1092(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002828:	01e00593          	li	a1,30
    8000282c:	fffff097          	auipc	ra,0xfffff
    80002830:	51c080e7          	jalr	1308(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002834:	00050993          	mv	s3,a0
    if (pointers[3] != MemoryAllocator::managedMemorySpaceStart + 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002838:	00006797          	auipc	a5,0x6
    8000283c:	a687b783          	ld	a5,-1432(a5) # 800082a0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002840:	0007b783          	ld	a5,0(a5)
    80002844:	05078793          	addi	a5,a5,80
    80002848:	00a78663          	beq	a5,a0,80002854 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x13c>
        return false;
    8000284c:	00000513          	li	a0,0
    80002850:	efdff06f          	j	8000274c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002854:	fffff097          	auipc	ra,0xfffff
    80002858:	410080e7          	jalr	1040(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    8000285c:	12100593          	li	a1,289
    80002860:	fffff097          	auipc	ra,0xfffff
    80002864:	4e8080e7          	jalr	1256(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002868:	00050a93          	mv	s5,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + 4 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    8000286c:	00006797          	auipc	a5,0x6
    80002870:	a347b783          	ld	a5,-1484(a5) # 800082a0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002874:	0007b783          	ld	a5,0(a5)
    80002878:	11078793          	addi	a5,a5,272
    8000287c:	00a78663          	beq	a5,a0,80002888 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x170>
        return false;
    80002880:	00000513          	li	a0,0
    80002884:	ec9ff06f          	j	8000274c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    if (!testMemoryMetadataValidity()) return false;
    80002888:	00048513          	mv	a0,s1
    8000288c:	00000097          	auipc	ra,0x0
    80002890:	adc080e7          	jalr	-1316(ra) # 80002368 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002894:	ea050ce3          	beqz	a0,8000274c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    80002898:	fffff097          	auipc	ra,0xfffff
    8000289c:	3cc080e7          	jalr	972(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    800028a0:	00090593          	mv	a1,s2
    800028a4:	fffff097          	auipc	ra,0xfffff
    800028a8:	54c080e7          	jalr	1356(ra) # 80001df0 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    800028ac:	fffff097          	auipc	ra,0xfffff
    800028b0:	3b8080e7          	jalr	952(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    800028b4:	000a0593          	mv	a1,s4
    800028b8:	fffff097          	auipc	ra,0xfffff
    800028bc:	538080e7          	jalr	1336(ra) # 80001df0 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    800028c0:	fffff097          	auipc	ra,0xfffff
    800028c4:	3a4080e7          	jalr	932(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    800028c8:	00098593          	mv	a1,s3
    800028cc:	fffff097          	auipc	ra,0xfffff
    800028d0:	524080e7          	jalr	1316(ra) # 80001df0 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    800028d4:	fffff097          	auipc	ra,0xfffff
    800028d8:	390080e7          	jalr	912(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    800028dc:	000a8593          	mv	a1,s5
    800028e0:	fffff097          	auipc	ra,0xfffff
    800028e4:	510080e7          	jalr	1296(ra) # 80001df0 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    800028e8:	00048513          	mv	a0,s1
    800028ec:	00000097          	auipc	ra,0x0
    800028f0:	a7c080e7          	jalr	-1412(ra) # 80002368 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800028f4:	e59ff06f          	j	8000274c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>

00000000800028f8 <_ZN19MemoryAllocatorTest12printPointerEiPPv>:


void MemoryAllocatorTest::printPointer(int i, void** pointers) {
    800028f8:	fe010113          	addi	sp,sp,-32
    800028fc:	00113c23          	sd	ra,24(sp)
    80002900:	00813823          	sd	s0,16(sp)
    80002904:	00913423          	sd	s1,8(sp)
    80002908:	01213023          	sd	s2,0(sp)
    8000290c:	02010413          	addi	s0,sp,32
    80002910:	00058913          	mv	s2,a1
    80002914:	00060493          	mv	s1,a2
    printString("\npointers[");
    80002918:	00005517          	auipc	a0,0x5
    8000291c:	ac850513          	addi	a0,a0,-1336 # 800073e0 <CONSOLE_STATUS+0x3d0>
    80002920:	00001097          	auipc	ra,0x1
    80002924:	3cc080e7          	jalr	972(ra) # 80003cec <_Z11printStringPKc>
    printInteger(i);
    80002928:	00090513          	mv	a0,s2
    8000292c:	00001097          	auipc	ra,0x1
    80002930:	430080e7          	jalr	1072(ra) # 80003d5c <_Z12printIntegerm>
    printString("]: ");
    80002934:	00005517          	auipc	a0,0x5
    80002938:	abc50513          	addi	a0,a0,-1348 # 800073f0 <CONSOLE_STATUS+0x3e0>
    8000293c:	00001097          	auipc	ra,0x1
    80002940:	3b0080e7          	jalr	944(ra) # 80003cec <_Z11printStringPKc>
    printInteger((uint64)((uint8*) pointers[i] - MemoryAllocator::managedMemorySpaceStart));
    80002944:	00391613          	slli	a2,s2,0x3
    80002948:	00c484b3          	add	s1,s1,a2
    8000294c:	0004b503          	ld	a0,0(s1)
    80002950:	00006797          	auipc	a5,0x6
    80002954:	9507b783          	ld	a5,-1712(a5) # 800082a0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002958:	0007b783          	ld	a5,0(a5)
    8000295c:	40f50533          	sub	a0,a0,a5
    80002960:	00001097          	auipc	ra,0x1
    80002964:	3fc080e7          	jalr	1020(ra) # 80003d5c <_Z12printIntegerm>
    printString("\npointers[");
    80002968:	00005517          	auipc	a0,0x5
    8000296c:	a7850513          	addi	a0,a0,-1416 # 800073e0 <CONSOLE_STATUS+0x3d0>
    80002970:	00001097          	auipc	ra,0x1
    80002974:	37c080e7          	jalr	892(ra) # 80003cec <_Z11printStringPKc>
    printInteger(i);
    80002978:	00090513          	mv	a0,s2
    8000297c:	00001097          	auipc	ra,0x1
    80002980:	3e0080e7          	jalr	992(ra) # 80003d5c <_Z12printIntegerm>
    printString("]->blockNo: "); printInteger((uint64) (((MemoryAllocator::SegmentDescriptor*) pointers[i])->noBlocks));
    80002984:	00005517          	auipc	a0,0x5
    80002988:	a7450513          	addi	a0,a0,-1420 # 800073f8 <CONSOLE_STATUS+0x3e8>
    8000298c:	00001097          	auipc	ra,0x1
    80002990:	360080e7          	jalr	864(ra) # 80003cec <_Z11printStringPKc>
    80002994:	0004b783          	ld	a5,0(s1)
    80002998:	0007b503          	ld	a0,0(a5)
    8000299c:	00001097          	auipc	ra,0x1
    800029a0:	3c0080e7          	jalr	960(ra) # 80003d5c <_Z12printIntegerm>
    printString("\n");
    800029a4:	00004517          	auipc	a0,0x4
    800029a8:	6e450513          	addi	a0,a0,1764 # 80007088 <CONSOLE_STATUS+0x78>
    800029ac:	00001097          	auipc	ra,0x1
    800029b0:	340080e7          	jalr	832(ra) # 80003cec <_Z11printStringPKc>
}
    800029b4:	01813083          	ld	ra,24(sp)
    800029b8:	01013403          	ld	s0,16(sp)
    800029bc:	00813483          	ld	s1,8(sp)
    800029c0:	00013903          	ld	s2,0(sp)
    800029c4:	02010113          	addi	sp,sp,32
    800029c8:	00008067          	ret

00000000800029cc <_ZN19MemoryAllocatorTest13firstFitTest2Ev>:

bool MemoryAllocatorTest::firstFitTest2() {
    800029cc:	fc010113          	addi	sp,sp,-64
    800029d0:	02113c23          	sd	ra,56(sp)
    800029d4:	02813823          	sd	s0,48(sp)
    800029d8:	02913423          	sd	s1,40(sp)
    800029dc:	03213023          	sd	s2,32(sp)
    800029e0:	01313c23          	sd	s3,24(sp)
    800029e4:	01413823          	sd	s4,16(sp)
    800029e8:	01513423          	sd	s5,8(sp)
    800029ec:	04010413          	addi	s0,sp,64
    800029f0:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    800029f4:	00000097          	auipc	ra,0x0
    800029f8:	974080e7          	jalr	-1676(ra) # 80002368 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800029fc:	02051463          	bnez	a0,80002a24 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x58>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002a00:	03813083          	ld	ra,56(sp)
    80002a04:	03013403          	ld	s0,48(sp)
    80002a08:	02813483          	ld	s1,40(sp)
    80002a0c:	02013903          	ld	s2,32(sp)
    80002a10:	01813983          	ld	s3,24(sp)
    80002a14:	01013a03          	ld	s4,16(sp)
    80002a18:	00813a83          	ld	s5,8(sp)
    80002a1c:	04010113          	addi	sp,sp,64
    80002a20:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002a24:	fffff097          	auipc	ra,0xfffff
    80002a28:	240080e7          	jalr	576(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002a2c:	08200593          	li	a1,130
    80002a30:	fffff097          	auipc	ra,0xfffff
    80002a34:	318080e7          	jalr	792(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002a38:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002a3c:	00006797          	auipc	a5,0x6
    80002a40:	8647b783          	ld	a5,-1948(a5) # 800082a0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a44:	0007b783          	ld	a5,0(a5)
    80002a48:	01078793          	addi	a5,a5,16
    80002a4c:	00a78663          	beq	a5,a0,80002a58 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x8c>
        return false;
    80002a50:	00000513          	li	a0,0
    80002a54:	fadff06f          	j	80002a00 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    80002a58:	fffff097          	auipc	ra,0xfffff
    80002a5c:	20c080e7          	jalr	524(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002a60:	01400593          	li	a1,20
    80002a64:	fffff097          	auipc	ra,0xfffff
    80002a68:	2e4080e7          	jalr	740(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002a6c:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 3 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002a70:	00006797          	auipc	a5,0x6
    80002a74:	8307b783          	ld	a5,-2000(a5) # 800082a0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a78:	0007b783          	ld	a5,0(a5)
    80002a7c:	0d078793          	addi	a5,a5,208
    80002a80:	00a78663          	beq	a5,a0,80002a8c <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0xc0>
        return false;
    80002a84:	00000513          	li	a0,0
    80002a88:	f79ff06f          	j	80002a00 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    80002a8c:	fffff097          	auipc	ra,0xfffff
    80002a90:	1d8080e7          	jalr	472(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002a94:	00090593          	mv	a1,s2
    80002a98:	fffff097          	auipc	ra,0xfffff
    80002a9c:	358080e7          	jalr	856(ra) # 80001df0 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    80002aa0:	fffff097          	auipc	ra,0xfffff
    80002aa4:	1c4080e7          	jalr	452(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002aa8:	07800593          	li	a1,120
    80002aac:	fffff097          	auipc	ra,0xfffff
    80002ab0:	29c080e7          	jalr	668(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002ab4:	00050913          	mv	s2,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002ab8:	00005797          	auipc	a5,0x5
    80002abc:	7e87b783          	ld	a5,2024(a5) # 800082a0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002ac0:	0007b783          	ld	a5,0(a5)
    80002ac4:	01078793          	addi	a5,a5,16
    80002ac8:	00a78663          	beq	a5,a0,80002ad4 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x108>
        return false;
    80002acc:	00000513          	li	a0,0
    80002ad0:	f31ff06f          	j	80002a00 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002ad4:	fffff097          	auipc	ra,0xfffff
    80002ad8:	190080e7          	jalr	400(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002adc:	01e00593          	li	a1,30
    80002ae0:	fffff097          	auipc	ra,0xfffff
    80002ae4:	268080e7          	jalr	616(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002ae8:	00050a13          	mv	s4,a0
    if (pointers[3] != MemoryAllocator::managedMemorySpaceStart + 4 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002aec:	00005797          	auipc	a5,0x5
    80002af0:	7b47b783          	ld	a5,1972(a5) # 800082a0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002af4:	0007b783          	ld	a5,0(a5)
    80002af8:	11078793          	addi	a5,a5,272
    80002afc:	00a78663          	beq	a5,a0,80002b08 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x13c>
        return false;
    80002b00:	00000513          	li	a0,0
    80002b04:	efdff06f          	j	80002a00 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002b08:	fffff097          	auipc	ra,0xfffff
    80002b0c:	15c080e7          	jalr	348(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002b10:	00090593          	mv	a1,s2
    80002b14:	fffff097          	auipc	ra,0xfffff
    80002b18:	2dc080e7          	jalr	732(ra) # 80001df0 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002b1c:	fffff097          	auipc	ra,0xfffff
    80002b20:	148080e7          	jalr	328(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002b24:	02f00593          	li	a1,47
    80002b28:	fffff097          	auipc	ra,0xfffff
    80002b2c:	220080e7          	jalr	544(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002b30:	00050913          	mv	s2,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002b34:	00005797          	auipc	a5,0x5
    80002b38:	76c7b783          	ld	a5,1900(a5) # 800082a0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b3c:	0007b783          	ld	a5,0(a5)
    80002b40:	01078793          	addi	a5,a5,16
    80002b44:	00a78663          	beq	a5,a0,80002b50 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x184>
        return false;
    80002b48:	00000513          	li	a0,0
    80002b4c:	eb5ff06f          	j	80002a00 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[5] = MemoryAllocator::instance()->kmem_alloc(sizes[5]);
    80002b50:	fffff097          	auipc	ra,0xfffff
    80002b54:	114080e7          	jalr	276(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002b58:	01400593          	li	a1,20
    80002b5c:	fffff097          	auipc	ra,0xfffff
    80002b60:	1ec080e7          	jalr	492(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002b64:	00050a93          	mv	s5,a0
    if (pointers[5] != MemoryAllocator::managedMemorySpaceStart + 1 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002b68:	00005797          	auipc	a5,0x5
    80002b6c:	7387b783          	ld	a5,1848(a5) # 800082a0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b70:	0007b783          	ld	a5,0(a5)
    80002b74:	05078793          	addi	a5,a5,80
    80002b78:	00a78663          	beq	a5,a0,80002b84 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x1b8>
        return false;
    80002b7c:	00000513          	li	a0,0
    80002b80:	e81ff06f          	j	80002a00 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    if (!testMemoryMetadataValidity()) return false;
    80002b84:	00048513          	mv	a0,s1
    80002b88:	fffff097          	auipc	ra,0xfffff
    80002b8c:	7e0080e7          	jalr	2016(ra) # 80002368 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002b90:	e60508e3          	beqz	a0,80002a00 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002b94:	fffff097          	auipc	ra,0xfffff
    80002b98:	0d0080e7          	jalr	208(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002b9c:	00098593          	mv	a1,s3
    80002ba0:	fffff097          	auipc	ra,0xfffff
    80002ba4:	250080e7          	jalr	592(ra) # 80001df0 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002ba8:	fffff097          	auipc	ra,0xfffff
    80002bac:	0bc080e7          	jalr	188(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002bb0:	000a0593          	mv	a1,s4
    80002bb4:	fffff097          	auipc	ra,0xfffff
    80002bb8:	23c080e7          	jalr	572(ra) # 80001df0 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80002bbc:	fffff097          	auipc	ra,0xfffff
    80002bc0:	0a8080e7          	jalr	168(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002bc4:	00090593          	mv	a1,s2
    80002bc8:	fffff097          	auipc	ra,0xfffff
    80002bcc:	228080e7          	jalr	552(ra) # 80001df0 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    80002bd0:	fffff097          	auipc	ra,0xfffff
    80002bd4:	094080e7          	jalr	148(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002bd8:	000a8593          	mv	a1,s5
    80002bdc:	fffff097          	auipc	ra,0xfffff
    80002be0:	214080e7          	jalr	532(ra) # 80001df0 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002be4:	00048513          	mv	a0,s1
    80002be8:	fffff097          	auipc	ra,0xfffff
    80002bec:	780080e7          	jalr	1920(ra) # 80002368 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002bf0:	e11ff06f          	j	80002a00 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>

0000000080002bf4 <_ZN19MemoryAllocatorTest13firstFitTest3Ev>:


bool MemoryAllocatorTest::firstFitTest3() {
    80002bf4:	fb010113          	addi	sp,sp,-80
    80002bf8:	04113423          	sd	ra,72(sp)
    80002bfc:	04813023          	sd	s0,64(sp)
    80002c00:	02913c23          	sd	s1,56(sp)
    80002c04:	03213823          	sd	s2,48(sp)
    80002c08:	03313423          	sd	s3,40(sp)
    80002c0c:	03413023          	sd	s4,32(sp)
    80002c10:	01513c23          	sd	s5,24(sp)
    80002c14:	01613823          	sd	s6,16(sp)
    80002c18:	01713423          	sd	s7,8(sp)
    80002c1c:	05010413          	addi	s0,sp,80
    80002c20:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    80002c24:	fffff097          	auipc	ra,0xfffff
    80002c28:	744080e7          	jalr	1860(ra) # 80002368 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002c2c:	02051863          	bnez	a0,80002c5c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x68>
    MemoryAllocator::instance()->kmem_free(pointers[6]);
    MemoryAllocator::instance()->kmem_free(pointers[7]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002c30:	04813083          	ld	ra,72(sp)
    80002c34:	04013403          	ld	s0,64(sp)
    80002c38:	03813483          	ld	s1,56(sp)
    80002c3c:	03013903          	ld	s2,48(sp)
    80002c40:	02813983          	ld	s3,40(sp)
    80002c44:	02013a03          	ld	s4,32(sp)
    80002c48:	01813a83          	ld	s5,24(sp)
    80002c4c:	01013b03          	ld	s6,16(sp)
    80002c50:	00813b83          	ld	s7,8(sp)
    80002c54:	05010113          	addi	sp,sp,80
    80002c58:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002c5c:	fffff097          	auipc	ra,0xfffff
    80002c60:	008080e7          	jalr	8(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002c64:	13000593          	li	a1,304
    80002c68:	fffff097          	auipc	ra,0xfffff
    80002c6c:	0e0080e7          	jalr	224(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002c70:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002c74:	00005797          	auipc	a5,0x5
    80002c78:	62c7b783          	ld	a5,1580(a5) # 800082a0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002c7c:	0007b783          	ld	a5,0(a5)
    80002c80:	01078793          	addi	a5,a5,16
    80002c84:	00a78663          	beq	a5,a0,80002c90 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x9c>
        return false;
    80002c88:	00000513          	li	a0,0
    80002c8c:	fa5ff06f          	j	80002c30 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    80002c90:	fffff097          	auipc	ra,0xfffff
    80002c94:	fd4080e7          	jalr	-44(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002c98:	03100593          	li	a1,49
    80002c9c:	fffff097          	auipc	ra,0xfffff
    80002ca0:	0ac080e7          	jalr	172(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002ca4:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 5 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002ca8:	00005797          	auipc	a5,0x5
    80002cac:	5f87b783          	ld	a5,1528(a5) # 800082a0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002cb0:	0007b783          	ld	a5,0(a5)
    80002cb4:	15078793          	addi	a5,a5,336
    80002cb8:	00a78663          	beq	a5,a0,80002cc4 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0xd0>
        return false;
    80002cbc:	00000513          	li	a0,0
    80002cc0:	f71ff06f          	j	80002c30 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    80002cc4:	fffff097          	auipc	ra,0xfffff
    80002cc8:	fa0080e7          	jalr	-96(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002ccc:	00090593          	mv	a1,s2
    80002cd0:	fffff097          	auipc	ra,0xfffff
    80002cd4:	120080e7          	jalr	288(ra) # 80001df0 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    80002cd8:	fffff097          	auipc	ra,0xfffff
    80002cdc:	f8c080e7          	jalr	-116(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002ce0:	0e600593          	li	a1,230
    80002ce4:	fffff097          	auipc	ra,0xfffff
    80002ce8:	064080e7          	jalr	100(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002cec:	00050913          	mv	s2,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002cf0:	00005797          	auipc	a5,0x5
    80002cf4:	5b07b783          	ld	a5,1456(a5) # 800082a0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002cf8:	0007b783          	ld	a5,0(a5)
    80002cfc:	01078793          	addi	a5,a5,16
    80002d00:	00a78663          	beq	a5,a0,80002d0c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x118>
        return false;
    80002d04:	00000513          	li	a0,0
    80002d08:	f29ff06f          	j	80002c30 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002d0c:	fffff097          	auipc	ra,0xfffff
    80002d10:	f58080e7          	jalr	-168(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002d14:	fdb00593          	li	a1,-37
    80002d18:	fffff097          	auipc	ra,0xfffff
    80002d1c:	030080e7          	jalr	48(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002d20:	00050a13          	mv	s4,a0
    if (pointers[3]) return false;
    80002d24:	00050663          	beqz	a0,80002d30 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x13c>
    80002d28:	00000513          	li	a0,0
    80002d2c:	f05ff06f          	j	80002c30 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002d30:	fffff097          	auipc	ra,0xfffff
    80002d34:	f34080e7          	jalr	-204(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002d38:	01e00593          	li	a1,30
    80002d3c:	fffff097          	auipc	ra,0xfffff
    80002d40:	00c080e7          	jalr	12(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002d44:	00050a93          	mv	s5,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + 7 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002d48:	00005797          	auipc	a5,0x5
    80002d4c:	5587b783          	ld	a5,1368(a5) # 800082a0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002d50:	0007b783          	ld	a5,0(a5)
    80002d54:	1d078793          	addi	a5,a5,464
    80002d58:	00a78663          	beq	a5,a0,80002d64 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x170>
        return false;
    80002d5c:	00000513          	li	a0,0
    80002d60:	ed1ff06f          	j	80002c30 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002d64:	fffff097          	auipc	ra,0xfffff
    80002d68:	f00080e7          	jalr	-256(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002d6c:	00090593          	mv	a1,s2
    80002d70:	fffff097          	auipc	ra,0xfffff
    80002d74:	080080e7          	jalr	128(ra) # 80001df0 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[5] = MemoryAllocator::instance()->kmem_alloc(sizes[5]);
    80002d78:	fffff097          	auipc	ra,0xfffff
    80002d7c:	eec080e7          	jalr	-276(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002d80:	09600593          	li	a1,150
    80002d84:	fffff097          	auipc	ra,0xfffff
    80002d88:	fc4080e7          	jalr	-60(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002d8c:	00050b93          	mv	s7,a0
    if (pointers[5] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002d90:	00005797          	auipc	a5,0x5
    80002d94:	5107b783          	ld	a5,1296(a5) # 800082a0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002d98:	0007b783          	ld	a5,0(a5)
    80002d9c:	01078793          	addi	a5,a5,16
    80002da0:	00a78663          	beq	a5,a0,80002dac <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x1b8>
        return false;
    80002da4:	00000513          	li	a0,0
    80002da8:	e89ff06f          	j	80002c30 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[6] = MemoryAllocator::instance()->kmem_alloc(sizes[6]);
    80002dac:	fffff097          	auipc	ra,0xfffff
    80002db0:	eb8080e7          	jalr	-328(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002db4:	02f00593          	li	a1,47
    80002db8:	fffff097          	auipc	ra,0xfffff
    80002dbc:	f90080e7          	jalr	-112(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002dc0:	00050b13          	mv	s6,a0
    if (pointers[6] != MemoryAllocator::managedMemorySpaceStart + 3 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002dc4:	00005797          	auipc	a5,0x5
    80002dc8:	4dc7b783          	ld	a5,1244(a5) # 800082a0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002dcc:	0007b783          	ld	a5,0(a5)
    80002dd0:	0d078793          	addi	a5,a5,208
    80002dd4:	00a78663          	beq	a5,a0,80002de0 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x1ec>
        return false;
    80002dd8:	00000513          	li	a0,0
    80002ddc:	e55ff06f          	j	80002c30 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[7] = MemoryAllocator::instance()->kmem_alloc(sizes[7]);
    80002de0:	fffff097          	auipc	ra,0xfffff
    80002de4:	e84080e7          	jalr	-380(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002de8:	02500593          	li	a1,37
    80002dec:	fffff097          	auipc	ra,0xfffff
    80002df0:	f5c080e7          	jalr	-164(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
    80002df4:	00050913          	mv	s2,a0
    if (pointers[7] != MemoryAllocator::managedMemorySpaceStart + 8 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002df8:	00005797          	auipc	a5,0x5
    80002dfc:	4a87b783          	ld	a5,1192(a5) # 800082a0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002e00:	0007b783          	ld	a5,0(a5)
    80002e04:	21078793          	addi	a5,a5,528
    80002e08:	00a78663          	beq	a5,a0,80002e14 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x220>
        return false;
    80002e0c:	00000513          	li	a0,0
    80002e10:	e21ff06f          	j	80002c30 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    if (!testMemoryMetadataValidity()) return false;
    80002e14:	00048513          	mv	a0,s1
    80002e18:	fffff097          	auipc	ra,0xfffff
    80002e1c:	550080e7          	jalr	1360(ra) # 80002368 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002e20:	e00508e3          	beqz	a0,80002c30 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002e24:	fffff097          	auipc	ra,0xfffff
    80002e28:	e40080e7          	jalr	-448(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002e2c:	00098593          	mv	a1,s3
    80002e30:	fffff097          	auipc	ra,0xfffff
    80002e34:	fc0080e7          	jalr	-64(ra) # 80001df0 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002e38:	fffff097          	auipc	ra,0xfffff
    80002e3c:	e2c080e7          	jalr	-468(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002e40:	000a0593          	mv	a1,s4
    80002e44:	fffff097          	auipc	ra,0xfffff
    80002e48:	fac080e7          	jalr	-84(ra) # 80001df0 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80002e4c:	fffff097          	auipc	ra,0xfffff
    80002e50:	e18080e7          	jalr	-488(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002e54:	000a8593          	mv	a1,s5
    80002e58:	fffff097          	auipc	ra,0xfffff
    80002e5c:	f98080e7          	jalr	-104(ra) # 80001df0 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    80002e60:	fffff097          	auipc	ra,0xfffff
    80002e64:	e04080e7          	jalr	-508(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002e68:	000b8593          	mv	a1,s7
    80002e6c:	fffff097          	auipc	ra,0xfffff
    80002e70:	f84080e7          	jalr	-124(ra) # 80001df0 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[6]);
    80002e74:	fffff097          	auipc	ra,0xfffff
    80002e78:	df0080e7          	jalr	-528(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002e7c:	000b0593          	mv	a1,s6
    80002e80:	fffff097          	auipc	ra,0xfffff
    80002e84:	f70080e7          	jalr	-144(ra) # 80001df0 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[7]);
    80002e88:	fffff097          	auipc	ra,0xfffff
    80002e8c:	ddc080e7          	jalr	-548(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80002e90:	00090593          	mv	a1,s2
    80002e94:	fffff097          	auipc	ra,0xfffff
    80002e98:	f5c080e7          	jalr	-164(ra) # 80001df0 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002e9c:	00048513          	mv	a0,s1
    80002ea0:	fffff097          	auipc	ra,0xfffff
    80002ea4:	4c8080e7          	jalr	1224(ra) # 80002368 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002ea8:	d89ff06f          	j	80002c30 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>

0000000080002eac <_ZN19MemoryAllocatorTest12testFirstFitEv>:
bool MemoryAllocatorTest::testFirstFit() {
    80002eac:	fe010113          	addi	sp,sp,-32
    80002eb0:	00113c23          	sd	ra,24(sp)
    80002eb4:	00813823          	sd	s0,16(sp)
    80002eb8:	00913423          	sd	s1,8(sp)
    80002ebc:	02010413          	addi	s0,sp,32
    80002ec0:	00050493          	mv	s1,a0
    if (!firstFitTest1()) return false;
    80002ec4:	00000097          	auipc	ra,0x0
    80002ec8:	854080e7          	jalr	-1964(ra) # 80002718 <_ZN19MemoryAllocatorTest13firstFitTest1Ev>
    80002ecc:	00051c63          	bnez	a0,80002ee4 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x38>
}
    80002ed0:	01813083          	ld	ra,24(sp)
    80002ed4:	01013403          	ld	s0,16(sp)
    80002ed8:	00813483          	ld	s1,8(sp)
    80002edc:	02010113          	addi	sp,sp,32
    80002ee0:	00008067          	ret
    if (!firstFitTest2()) return false;
    80002ee4:	00048513          	mv	a0,s1
    80002ee8:	00000097          	auipc	ra,0x0
    80002eec:	ae4080e7          	jalr	-1308(ra) # 800029cc <_ZN19MemoryAllocatorTest13firstFitTest2Ev>
    80002ef0:	fe0500e3          	beqz	a0,80002ed0 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x24>
    if (!firstFitTest3()) return false;
    80002ef4:	00048513          	mv	a0,s1
    80002ef8:	00000097          	auipc	ra,0x0
    80002efc:	cfc080e7          	jalr	-772(ra) # 80002bf4 <_ZN19MemoryAllocatorTest13firstFitTest3Ev>
    80002f00:	fd1ff06f          	j	80002ed0 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x24>

0000000080002f04 <_ZN19MemoryAllocatorTest25testSegmentDescriptorSizeEv>:

bool MemoryAllocatorTest::testSegmentDescriptorSize() {
    80002f04:	ff010113          	addi	sp,sp,-16
    80002f08:	00113423          	sd	ra,8(sp)
    80002f0c:	00813023          	sd	s0,0(sp)
    80002f10:	01010413          	addi	s0,sp,16
    if (!testMemoryMetadataValidity()) return false;
    80002f14:	fffff097          	auipc	ra,0xfffff
    80002f18:	454080e7          	jalr	1108(ra) # 80002368 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    return sizeof(MemoryAllocator::SegmentDescriptor) == 16;
}
    80002f1c:	00813083          	ld	ra,8(sp)
    80002f20:	00013403          	ld	s0,0(sp)
    80002f24:	01010113          	addi	sp,sp,16
    80002f28:	00008067          	ret

0000000080002f2c <_ZN19MemoryAllocatorTest8runTestsEv>:
bool MemoryAllocatorTest::runTests() {
    80002f2c:	f6010113          	addi	sp,sp,-160
    80002f30:	08113c23          	sd	ra,152(sp)
    80002f34:	08813823          	sd	s0,144(sp)
    80002f38:	08913423          	sd	s1,136(sp)
    80002f3c:	09213023          	sd	s2,128(sp)
    80002f40:	07313c23          	sd	s3,120(sp)
    80002f44:	0a010413          	addi	s0,sp,160
    80002f48:	00050993          	mv	s3,a0
    sizes[0] = 3.7 * MEM_BLOCK_SIZE;
    80002f4c:	0ec00793          	li	a5,236
    80002f50:	f6f43423          	sd	a5,-152(s0)
    sizes[1] = MEM_BLOCK_SIZE;
    80002f54:	04000793          	li	a5,64
    80002f58:	f6f43823          	sd	a5,-144(s0)
    sizes[2] = 0.3 * MEM_BLOCK_SIZE;
    80002f5c:	01300793          	li	a5,19
    80002f60:	f6f43c23          	sd	a5,-136(s0)
    sizes[3] = 0;
    80002f64:	f8043023          	sd	zero,-128(s0)
    sizes[4] = -37;
    80002f68:	fdb00793          	li	a5,-37
    80002f6c:	f8f43423          	sd	a5,-120(s0)
    sizes[5] = sizeof(MemoryAllocator::SegmentDescriptor) - 1;
    80002f70:	00f00793          	li	a5,15
    80002f74:	f8f43823          	sd	a5,-112(s0)
    sizes[6] = sizeof(MemoryAllocator::SegmentDescriptor);
    80002f78:	01000793          	li	a5,16
    80002f7c:	f8f43c23          	sd	a5,-104(s0)
    sizes[7] = sizeof(MemoryAllocator::SegmentDescriptor) + 1;
    80002f80:	01100793          	li	a5,17
    80002f84:	faf43023          	sd	a5,-96(s0)
    sizes[8] = MemoryAllocator::minMemoryFragmentSize - 1;
    80002f88:	00005797          	auipc	a5,0x5
    80002f8c:	2e07b783          	ld	a5,736(a5) # 80008268 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002f90:	0007b783          	ld	a5,0(a5)
    80002f94:	fff78713          	addi	a4,a5,-1
    80002f98:	fae43423          	sd	a4,-88(s0)
    sizes[9] = MemoryAllocator::minMemoryFragmentSize;
    80002f9c:	faf43823          	sd	a5,-80(s0)
    sizes[10] = MemoryAllocator::minMemoryFragmentSize + 1;
    80002fa0:	00178793          	addi	a5,a5,1
    80002fa4:	faf43c23          	sd	a5,-72(s0)
    sizes[11] = MEM_BLOCK_SIZE - 1;
    80002fa8:	03f00793          	li	a5,63
    80002fac:	fcf43023          	sd	a5,-64(s0)
    sizes[12] = MEM_BLOCK_SIZE + 1;
    80002fb0:	04100793          	li	a5,65
    80002fb4:	fcf43423          	sd	a5,-56(s0)
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    80002fb8:	00000493          	li	s1,0
    80002fbc:	0880006f          	j	80003044 <_ZN19MemoryAllocatorTest8runTestsEv+0x118>
            printString("Failed testMemoryAllocate test for input ");
    80002fc0:	00004517          	auipc	a0,0x4
    80002fc4:	44850513          	addi	a0,a0,1096 # 80007408 <CONSOLE_STATUS+0x3f8>
    80002fc8:	00001097          	auipc	ra,0x1
    80002fcc:	d24080e7          	jalr	-732(ra) # 80003cec <_Z11printStringPKc>
            printInteger(sizes[i]); printString("\n"); return false;
    80002fd0:	00090513          	mv	a0,s2
    80002fd4:	00001097          	auipc	ra,0x1
    80002fd8:	d88080e7          	jalr	-632(ra) # 80003d5c <_Z12printIntegerm>
    80002fdc:	00004517          	auipc	a0,0x4
    80002fe0:	0ac50513          	addi	a0,a0,172 # 80007088 <CONSOLE_STATUS+0x78>
    80002fe4:	00001097          	auipc	ra,0x1
    80002fe8:	d08080e7          	jalr	-760(ra) # 80003cec <_Z11printStringPKc>
    80002fec:	00000493          	li	s1,0
}
    80002ff0:	00048513          	mv	a0,s1
    80002ff4:	09813083          	ld	ra,152(sp)
    80002ff8:	09013403          	ld	s0,144(sp)
    80002ffc:	08813483          	ld	s1,136(sp)
    80003000:	08013903          	ld	s2,128(sp)
    80003004:	07813983          	ld	s3,120(sp)
    80003008:	0a010113          	addi	sp,sp,160
    8000300c:	00008067          	ret
            printString("Failed testMemoryFree test for input ");
    80003010:	00004517          	auipc	a0,0x4
    80003014:	43050513          	addi	a0,a0,1072 # 80007440 <CONSOLE_STATUS+0x430>
    80003018:	00001097          	auipc	ra,0x1
    8000301c:	cd4080e7          	jalr	-812(ra) # 80003cec <_Z11printStringPKc>
            printInteger(sizes[i]); printString("\n"); return false;
    80003020:	00090513          	mv	a0,s2
    80003024:	00001097          	auipc	ra,0x1
    80003028:	d38080e7          	jalr	-712(ra) # 80003d5c <_Z12printIntegerm>
    8000302c:	00004517          	auipc	a0,0x4
    80003030:	05c50513          	addi	a0,a0,92 # 80007088 <CONSOLE_STATUS+0x78>
    80003034:	00001097          	auipc	ra,0x1
    80003038:	cb8080e7          	jalr	-840(ra) # 80003cec <_Z11printStringPKc>
    8000303c:	fb1ff06f          	j	80002fec <_ZN19MemoryAllocatorTest8runTestsEv+0xc0>
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    80003040:	0014849b          	addiw	s1,s1,1
    80003044:	00c00793          	li	a5,12
    80003048:	0897c863          	blt	a5,s1,800030d8 <_ZN19MemoryAllocatorTest8runTestsEv+0x1ac>
        void * allocatedMemoryPointer = nullptr;
    8000304c:	f6043023          	sd	zero,-160(s0)
        if (!testMemoryAllocate(sizes[i], &allocatedMemoryPointer)) {
    80003050:	00349793          	slli	a5,s1,0x3
    80003054:	fd040713          	addi	a4,s0,-48
    80003058:	00f707b3          	add	a5,a4,a5
    8000305c:	f987b903          	ld	s2,-104(a5)
    80003060:	f6040613          	addi	a2,s0,-160
    80003064:	00090593          	mv	a1,s2
    80003068:	00098513          	mv	a0,s3
    8000306c:	fffff097          	auipc	ra,0xfffff
    80003070:	3b4080e7          	jalr	948(ra) # 80002420 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>
    80003074:	f40506e3          	beqz	a0,80002fc0 <_ZN19MemoryAllocatorTest8runTestsEv+0x94>
        } else printString("Passed ");
    80003078:	00004517          	auipc	a0,0x4
    8000307c:	3c050513          	addi	a0,a0,960 # 80007438 <CONSOLE_STATUS+0x428>
    80003080:	00001097          	auipc	ra,0x1
    80003084:	c6c080e7          	jalr	-916(ra) # 80003cec <_Z11printStringPKc>
        if (!testMemoryFree(sizes[i], allocatedMemoryPointer)) {
    80003088:	f6043603          	ld	a2,-160(s0)
    8000308c:	00090593          	mv	a1,s2
    80003090:	00098513          	mv	a0,s3
    80003094:	fffff097          	auipc	ra,0xfffff
    80003098:	50c080e7          	jalr	1292(ra) # 800025a0 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>
    8000309c:	f6050ae3          	beqz	a0,80003010 <_ZN19MemoryAllocatorTest8runTestsEv+0xe4>
        } else printString("Passed ");
    800030a0:	00004517          	auipc	a0,0x4
    800030a4:	39850513          	addi	a0,a0,920 # 80007438 <CONSOLE_STATUS+0x428>
    800030a8:	00001097          	auipc	ra,0x1
    800030ac:	c44080e7          	jalr	-956(ra) # 80003cec <_Z11printStringPKc>
        if (i != 0 && (i + 1) % 5 == 0) printString("\n");
    800030b0:	f80488e3          	beqz	s1,80003040 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    800030b4:	0014879b          	addiw	a5,s1,1
    800030b8:	00500713          	li	a4,5
    800030bc:	02e7e7bb          	remw	a5,a5,a4
    800030c0:	f80790e3          	bnez	a5,80003040 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    800030c4:	00004517          	auipc	a0,0x4
    800030c8:	fc450513          	addi	a0,a0,-60 # 80007088 <CONSOLE_STATUS+0x78>
    800030cc:	00001097          	auipc	ra,0x1
    800030d0:	c20080e7          	jalr	-992(ra) # 80003cec <_Z11printStringPKc>
    800030d4:	f6dff06f          	j	80003040 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    if (!testFirstFit()) {
    800030d8:	00098513          	mv	a0,s3
    800030dc:	00000097          	auipc	ra,0x0
    800030e0:	dd0080e7          	jalr	-560(ra) # 80002eac <_ZN19MemoryAllocatorTest12testFirstFitEv>
    800030e4:	00050493          	mv	s1,a0
    800030e8:	02050e63          	beqz	a0,80003124 <_ZN19MemoryAllocatorTest8runTestsEv+0x1f8>
    else printString("Passed ");
    800030ec:	00004517          	auipc	a0,0x4
    800030f0:	34c50513          	addi	a0,a0,844 # 80007438 <CONSOLE_STATUS+0x428>
    800030f4:	00001097          	auipc	ra,0x1
    800030f8:	bf8080e7          	jalr	-1032(ra) # 80003cec <_Z11printStringPKc>
    if (!testSegmentDescriptorSize()) {
    800030fc:	00098513          	mv	a0,s3
    80003100:	00000097          	auipc	ra,0x0
    80003104:	e04080e7          	jalr	-508(ra) # 80002f04 <_ZN19MemoryAllocatorTest25testSegmentDescriptorSizeEv>
    80003108:	00050493          	mv	s1,a0
    8000310c:	02050663          	beqz	a0,80003138 <_ZN19MemoryAllocatorTest8runTestsEv+0x20c>
    else printString("Passed\n");
    80003110:	00004517          	auipc	a0,0x4
    80003114:	39850513          	addi	a0,a0,920 # 800074a8 <CONSOLE_STATUS+0x498>
    80003118:	00001097          	auipc	ra,0x1
    8000311c:	bd4080e7          	jalr	-1068(ra) # 80003cec <_Z11printStringPKc>
    80003120:	ed1ff06f          	j	80002ff0 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>
        printString("Failed testFirstFit\n"); return false; }
    80003124:	00004517          	auipc	a0,0x4
    80003128:	34450513          	addi	a0,a0,836 # 80007468 <CONSOLE_STATUS+0x458>
    8000312c:	00001097          	auipc	ra,0x1
    80003130:	bc0080e7          	jalr	-1088(ra) # 80003cec <_Z11printStringPKc>
    80003134:	ebdff06f          	j	80002ff0 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>
        printString("Failed testSegmentDescriptorSize\n"); return false; }
    80003138:	00004517          	auipc	a0,0x4
    8000313c:	34850513          	addi	a0,a0,840 # 80007480 <CONSOLE_STATUS+0x470>
    80003140:	00001097          	auipc	ra,0x1
    80003144:	bac080e7          	jalr	-1108(ra) # 80003cec <_Z11printStringPKc>
    80003148:	ea9ff06f          	j	80002ff0 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>

000000008000314c <_Znwm>:


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    8000314c:	ff010113          	addi	sp,sp,-16
    80003150:	00113423          	sd	ra,8(sp)
    80003154:	00813023          	sd	s0,0(sp)
    80003158:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    8000315c:	00003097          	auipc	ra,0x3
    80003160:	e9c080e7          	jalr	-356(ra) # 80005ff8 <__mem_alloc>
    //return MemoryAllocator::instance()->kmem_alloc(n);
}
    80003164:	00813083          	ld	ra,8(sp)
    80003168:	00013403          	ld	s0,0(sp)
    8000316c:	01010113          	addi	sp,sp,16
    80003170:	00008067          	ret

0000000080003174 <_Znam>:

void *operator new[](size_t n)
{
    80003174:	ff010113          	addi	sp,sp,-16
    80003178:	00113423          	sd	ra,8(sp)
    8000317c:	00813023          	sd	s0,0(sp)
    80003180:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80003184:	00003097          	auipc	ra,0x3
    80003188:	e74080e7          	jalr	-396(ra) # 80005ff8 <__mem_alloc>
    //return MemoryAllocator::instance()->kmem_alloc(n);
}
    8000318c:	00813083          	ld	ra,8(sp)
    80003190:	00013403          	ld	s0,0(sp)
    80003194:	01010113          	addi	sp,sp,16
    80003198:	00008067          	ret

000000008000319c <_ZdlPv>:

void operator delete(void *p) noexcept
{
    8000319c:	ff010113          	addi	sp,sp,-16
    800031a0:	00113423          	sd	ra,8(sp)
    800031a4:	00813023          	sd	s0,0(sp)
    800031a8:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800031ac:	00003097          	auipc	ra,0x3
    800031b0:	d80080e7          	jalr	-640(ra) # 80005f2c <__mem_free>
    //MemoryAllocator::instance()->kmem_free(p);
}
    800031b4:	00813083          	ld	ra,8(sp)
    800031b8:	00013403          	ld	s0,0(sp)
    800031bc:	01010113          	addi	sp,sp,16
    800031c0:	00008067          	ret

00000000800031c4 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    800031c4:	ff010113          	addi	sp,sp,-16
    800031c8:	00113423          	sd	ra,8(sp)
    800031cc:	00813023          	sd	s0,0(sp)
    800031d0:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800031d4:	00003097          	auipc	ra,0x3
    800031d8:	d58080e7          	jalr	-680(ra) # 80005f2c <__mem_free>
    //MemoryAllocator::instance()->kmem_free(p);
    800031dc:	00813083          	ld	ra,8(sp)
    800031e0:	00013403          	ld	s0,0(sp)
    800031e4:	01010113          	addi	sp,sp,16
    800031e8:	00008067          	ret

00000000800031ec <_ZN16KObjectAllocator19printInternalMemoryEv>:
#include "../h/kObjectAllocator.hpp"
#include "../h/print.hpp"

void KObjectAllocator::printInternalMemory() {
    800031ec:	fc010113          	addi	sp,sp,-64
    800031f0:	02113c23          	sd	ra,56(sp)
    800031f4:	02813823          	sd	s0,48(sp)
    800031f8:	02913423          	sd	s1,40(sp)
    800031fc:	03213023          	sd	s2,32(sp)
    80003200:	01313c23          	sd	s3,24(sp)
    80003204:	01413823          	sd	s4,16(sp)
    80003208:	01513423          	sd	s5,8(sp)
    8000320c:	01613023          	sd	s6,0(sp)
    80003210:	04010413          	addi	s0,sp,64
    80003214:	00050493          	mv	s1,a0
    size_t segmentSize = 10, printedBytes = 0;
    80003218:	00000a93          	li	s5,0
    8000321c:	0f80006f          	j	80003314 <_ZN16KObjectAllocator19printInternalMemoryEv+0x128>
    while (printedBytes < memorySizeForBits) {
        for (size_t i = 0; i < numberOfAllocations; ++i) {
            for (size_t j = 0; j < segmentSize; ++j) {
                if (j >= memorySizeForBits % segmentSize) printString("    ");
    80003220:	00004517          	auipc	a0,0x4
    80003224:	29050513          	addi	a0,a0,656 # 800074b0 <CONSOLE_STATUS+0x4a0>
    80003228:	00001097          	auipc	ra,0x1
    8000322c:	ac4080e7          	jalr	-1340(ra) # 80003cec <_Z11printStringPKc>
    80003230:	0400006f          	j	80003270 <_ZN16KObjectAllocator19printInternalMemoryEv+0x84>
                else {
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80003234:	00000513          	li	a0,0
    80003238:	00001097          	auipc	ra,0x1
    8000323c:	b24080e7          	jalr	-1244(ra) # 80003d5c <_Z12printIntegerm>
    80003240:	0700006f          	j	800032b0 <_ZN16KObjectAllocator19printInternalMemoryEv+0xc4>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
                    printInteger((uint64) bitVectors[i][j + printedBytes]);
    80003244:	0284b783          	ld	a5,40(s1)
    80003248:	016787b3          	add	a5,a5,s6
    8000324c:	0007b783          	ld	a5,0(a5)
    80003250:	013787b3          	add	a5,a5,s3
    80003254:	0007c503          	lbu	a0,0(a5)
    80003258:	00001097          	auipc	ra,0x1
    8000325c:	b04080e7          	jalr	-1276(ra) # 80003d5c <_Z12printIntegerm>
                    printString(" ");
    80003260:	00004517          	auipc	a0,0x4
    80003264:	09050513          	addi	a0,a0,144 # 800072f0 <CONSOLE_STATUS+0x2e0>
    80003268:	00001097          	auipc	ra,0x1
    8000326c:	a84080e7          	jalr	-1404(ra) # 80003cec <_Z11printStringPKc>
            for (size_t j = 0; j < segmentSize; ++j) {
    80003270:	00190913          	addi	s2,s2,1
    80003274:	00900793          	li	a5,9
    80003278:	0727e263          	bltu	a5,s2,800032dc <_ZN16KObjectAllocator19printInternalMemoryEv+0xf0>
                if (j >= memorySizeForBits % segmentSize) printString("    ");
    8000327c:	0104b783          	ld	a5,16(s1)
    80003280:	00a00713          	li	a4,10
    80003284:	02e7f7b3          	remu	a5,a5,a4
    80003288:	f8f97ce3          	bgeu	s2,a5,80003220 <_ZN16KObjectAllocator19printInternalMemoryEv+0x34>
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    8000328c:	0284b783          	ld	a5,40(s1)
    80003290:	003a1b13          	slli	s6,s4,0x3
    80003294:	016787b3          	add	a5,a5,s6
    80003298:	0007b783          	ld	a5,0(a5)
    8000329c:	012a89b3          	add	s3,s5,s2
    800032a0:	013787b3          	add	a5,a5,s3
    800032a4:	0007c703          	lbu	a4,0(a5)
    800032a8:	06300793          	li	a5,99
    800032ac:	f8e7f4e3          	bgeu	a5,a4,80003234 <_ZN16KObjectAllocator19printInternalMemoryEv+0x48>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    800032b0:	0284b783          	ld	a5,40(s1)
    800032b4:	016787b3          	add	a5,a5,s6
    800032b8:	0007b783          	ld	a5,0(a5)
    800032bc:	013787b3          	add	a5,a5,s3
    800032c0:	0007c703          	lbu	a4,0(a5)
    800032c4:	00900793          	li	a5,9
    800032c8:	f6e7eee3          	bltu	a5,a4,80003244 <_ZN16KObjectAllocator19printInternalMemoryEv+0x58>
    800032cc:	00000513          	li	a0,0
    800032d0:	00001097          	auipc	ra,0x1
    800032d4:	a8c080e7          	jalr	-1396(ra) # 80003d5c <_Z12printIntegerm>
    800032d8:	f6dff06f          	j	80003244 <_ZN16KObjectAllocator19printInternalMemoryEv+0x58>
                }
            }
            printString("  ");
    800032dc:	00004517          	auipc	a0,0x4
    800032e0:	1dc50513          	addi	a0,a0,476 # 800074b8 <CONSOLE_STATUS+0x4a8>
    800032e4:	00001097          	auipc	ra,0x1
    800032e8:	a08080e7          	jalr	-1528(ra) # 80003cec <_Z11printStringPKc>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    800032ec:	001a0a13          	addi	s4,s4,1
    800032f0:	0304b783          	ld	a5,48(s1)
    800032f4:	00fa7663          	bgeu	s4,a5,80003300 <_ZN16KObjectAllocator19printInternalMemoryEv+0x114>
            for (size_t j = 0; j < segmentSize; ++j) {
    800032f8:	00000913          	li	s2,0
    800032fc:	f79ff06f          	j	80003274 <_ZN16KObjectAllocator19printInternalMemoryEv+0x88>
        }
        printString("\n");
    80003300:	00004517          	auipc	a0,0x4
    80003304:	d8850513          	addi	a0,a0,-632 # 80007088 <CONSOLE_STATUS+0x78>
    80003308:	00001097          	auipc	ra,0x1
    8000330c:	9e4080e7          	jalr	-1564(ra) # 80003cec <_Z11printStringPKc>
        printedBytes += segmentSize;
    80003310:	00aa8a93          	addi	s5,s5,10
    while (printedBytes < memorySizeForBits) {
    80003314:	0104b783          	ld	a5,16(s1)
    80003318:	00faf663          	bgeu	s5,a5,80003324 <_ZN16KObjectAllocator19printInternalMemoryEv+0x138>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    8000331c:	00000a13          	li	s4,0
    80003320:	fd1ff06f          	j	800032f0 <_ZN16KObjectAllocator19printInternalMemoryEv+0x104>
    }

    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80003324:	00000993          	li	s3,0
    80003328:	0180006f          	j	80003340 <_ZN16KObjectAllocator19printInternalMemoryEv+0x154>
        for (size_t j = 0; j < segmentSize - 1; ++j)
            printString("----");
        printString("----  ");
    8000332c:	00004517          	auipc	a0,0x4
    80003330:	19c50513          	addi	a0,a0,412 # 800074c8 <CONSOLE_STATUS+0x4b8>
    80003334:	00001097          	auipc	ra,0x1
    80003338:	9b8080e7          	jalr	-1608(ra) # 80003cec <_Z11printStringPKc>
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    8000333c:	00198993          	addi	s3,s3,1
    80003340:	0304b783          	ld	a5,48(s1)
    80003344:	02f9f463          	bgeu	s3,a5,8000336c <_ZN16KObjectAllocator19printInternalMemoryEv+0x180>
        for (size_t j = 0; j < segmentSize - 1; ++j)
    80003348:	00000913          	li	s2,0
    8000334c:	00800793          	li	a5,8
    80003350:	fd27eee3          	bltu	a5,s2,8000332c <_ZN16KObjectAllocator19printInternalMemoryEv+0x140>
            printString("----");
    80003354:	00004517          	auipc	a0,0x4
    80003358:	16c50513          	addi	a0,a0,364 # 800074c0 <CONSOLE_STATUS+0x4b0>
    8000335c:	00001097          	auipc	ra,0x1
    80003360:	990080e7          	jalr	-1648(ra) # 80003cec <_Z11printStringPKc>
        for (size_t j = 0; j < segmentSize - 1; ++j)
    80003364:	00190913          	addi	s2,s2,1
    80003368:	fe5ff06f          	j	8000334c <_ZN16KObjectAllocator19printInternalMemoryEv+0x160>
    }
    printString("\n");
    8000336c:	00004517          	auipc	a0,0x4
    80003370:	d1c50513          	addi	a0,a0,-740 # 80007088 <CONSOLE_STATUS+0x78>
    80003374:	00001097          	auipc	ra,0x1
    80003378:	978080e7          	jalr	-1672(ra) # 80003cec <_Z11printStringPKc>

    printedBytes = memorySizeForBits;
    8000337c:	0104ba83          	ld	s5,16(s1)
    80003380:	1000006f          	j	80003480 <_ZN16KObjectAllocator19printInternalMemoryEv+0x294>
    while(printedBytes < initialNumberOfObjects * objectSize) {
        for (size_t i = 0; i < numberOfAllocations; ++i) {
            for (size_t j = 0; j < segmentSize; ++j) {
                if (j >= (initialNumberOfObjects * objectSize) % segmentSize) printString("    ");
    80003384:	00004517          	auipc	a0,0x4
    80003388:	12c50513          	addi	a0,a0,300 # 800074b0 <CONSOLE_STATUS+0x4a0>
    8000338c:	00001097          	auipc	ra,0x1
    80003390:	960080e7          	jalr	-1696(ra) # 80003cec <_Z11printStringPKc>
    80003394:	04c0006f          	j	800033e0 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1f4>
                else {
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80003398:	00000513          	li	a0,0
    8000339c:	00001097          	auipc	ra,0x1
    800033a0:	9c0080e7          	jalr	-1600(ra) # 80003d5c <_Z12printIntegerm>
    800033a4:	0840006f          	j	80003428 <_ZN16KObjectAllocator19printInternalMemoryEv+0x23c>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    800033a8:	00000513          	li	a0,0
    800033ac:	00001097          	auipc	ra,0x1
    800033b0:	9b0080e7          	jalr	-1616(ra) # 80003d5c <_Z12printIntegerm>
                    printInteger((uint64) bitVectors[i][j + printedBytes]);
    800033b4:	0284b783          	ld	a5,40(s1)
    800033b8:	016787b3          	add	a5,a5,s6
    800033bc:	0007b783          	ld	a5,0(a5)
    800033c0:	013787b3          	add	a5,a5,s3
    800033c4:	0007c503          	lbu	a0,0(a5)
    800033c8:	00001097          	auipc	ra,0x1
    800033cc:	994080e7          	jalr	-1644(ra) # 80003d5c <_Z12printIntegerm>
                    printString(" ");
    800033d0:	00004517          	auipc	a0,0x4
    800033d4:	f2050513          	addi	a0,a0,-224 # 800072f0 <CONSOLE_STATUS+0x2e0>
    800033d8:	00001097          	auipc	ra,0x1
    800033dc:	914080e7          	jalr	-1772(ra) # 80003cec <_Z11printStringPKc>
            for (size_t j = 0; j < segmentSize; ++j) {
    800033e0:	00190913          	addi	s2,s2,1
    800033e4:	00900793          	li	a5,9
    800033e8:	0727e063          	bltu	a5,s2,80003448 <_ZN16KObjectAllocator19printInternalMemoryEv+0x25c>
                if (j >= (initialNumberOfObjects * objectSize) % segmentSize) printString("    ");
    800033ec:	0004b783          	ld	a5,0(s1)
    800033f0:	0184b703          	ld	a4,24(s1)
    800033f4:	02e787b3          	mul	a5,a5,a4
    800033f8:	00a00713          	li	a4,10
    800033fc:	02e7f7b3          	remu	a5,a5,a4
    80003400:	f8f972e3          	bgeu	s2,a5,80003384 <_ZN16KObjectAllocator19printInternalMemoryEv+0x198>
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80003404:	0284b783          	ld	a5,40(s1)
    80003408:	003a1b13          	slli	s6,s4,0x3
    8000340c:	016787b3          	add	a5,a5,s6
    80003410:	0007b783          	ld	a5,0(a5)
    80003414:	012a89b3          	add	s3,s5,s2
    80003418:	013787b3          	add	a5,a5,s3
    8000341c:	0007c703          	lbu	a4,0(a5)
    80003420:	06300793          	li	a5,99
    80003424:	f6e7fae3          	bgeu	a5,a4,80003398 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1ac>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    80003428:	0284b783          	ld	a5,40(s1)
    8000342c:	016787b3          	add	a5,a5,s6
    80003430:	0007b783          	ld	a5,0(a5)
    80003434:	013787b3          	add	a5,a5,s3
    80003438:	0007c703          	lbu	a4,0(a5)
    8000343c:	00900793          	li	a5,9
    80003440:	f6e7eae3          	bltu	a5,a4,800033b4 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1c8>
    80003444:	f65ff06f          	j	800033a8 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1bc>
                }
            }
            printString("  ");
    80003448:	00004517          	auipc	a0,0x4
    8000344c:	07050513          	addi	a0,a0,112 # 800074b8 <CONSOLE_STATUS+0x4a8>
    80003450:	00001097          	auipc	ra,0x1
    80003454:	89c080e7          	jalr	-1892(ra) # 80003cec <_Z11printStringPKc>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80003458:	001a0a13          	addi	s4,s4,1
    8000345c:	0304b783          	ld	a5,48(s1)
    80003460:	00fa7663          	bgeu	s4,a5,8000346c <_ZN16KObjectAllocator19printInternalMemoryEv+0x280>
            for (size_t j = 0; j < segmentSize; ++j) {
    80003464:	00000913          	li	s2,0
    80003468:	f7dff06f          	j	800033e4 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1f8>
        }
        printString("\n");
    8000346c:	00004517          	auipc	a0,0x4
    80003470:	c1c50513          	addi	a0,a0,-996 # 80007088 <CONSOLE_STATUS+0x78>
    80003474:	00001097          	auipc	ra,0x1
    80003478:	878080e7          	jalr	-1928(ra) # 80003cec <_Z11printStringPKc>
        printedBytes += segmentSize;
    8000347c:	00aa8a93          	addi	s5,s5,10
    while(printedBytes < initialNumberOfObjects * objectSize) {
    80003480:	0004b783          	ld	a5,0(s1)
    80003484:	0184b703          	ld	a4,24(s1)
    80003488:	02e787b3          	mul	a5,a5,a4
    8000348c:	00faf663          	bgeu	s5,a5,80003498 <_ZN16KObjectAllocator19printInternalMemoryEv+0x2ac>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80003490:	00000a13          	li	s4,0
    80003494:	fc9ff06f          	j	8000345c <_ZN16KObjectAllocator19printInternalMemoryEv+0x270>
    }
}
    80003498:	03813083          	ld	ra,56(sp)
    8000349c:	03013403          	ld	s0,48(sp)
    800034a0:	02813483          	ld	s1,40(sp)
    800034a4:	02013903          	ld	s2,32(sp)
    800034a8:	01813983          	ld	s3,24(sp)
    800034ac:	01013a03          	ld	s4,16(sp)
    800034b0:	00813a83          	ld	s5,8(sp)
    800034b4:	00013b03          	ld	s6,0(sp)
    800034b8:	04010113          	addi	sp,sp,64
    800034bc:	00008067          	ret

00000000800034c0 <_ZN16KObjectAllocator18allocateFreeObjectEv>:
        }
    }
    return nullptr;
}

void* KObjectAllocator::allocateFreeObject() {
    800034c0:	fb010113          	addi	sp,sp,-80
    800034c4:	04113423          	sd	ra,72(sp)
    800034c8:	04813023          	sd	s0,64(sp)
    800034cc:	02913c23          	sd	s1,56(sp)
    800034d0:	03213823          	sd	s2,48(sp)
    800034d4:	03313423          	sd	s3,40(sp)
    800034d8:	03413023          	sd	s4,32(sp)
    800034dc:	01513c23          	sd	s5,24(sp)
    800034e0:	01613823          	sd	s6,16(sp)
    800034e4:	01713423          	sd	s7,8(sp)
    800034e8:	05010413          	addi	s0,sp,80
    800034ec:	00050a13          	mv	s4,a0
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    800034f0:	00000a93          	li	s5,0
    800034f4:	030a3783          	ld	a5,48(s4)
    800034f8:	1efafe63          	bgeu	s5,a5,800036f4 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x234>
        for (size_t j = nextNonTakenByte; j >= i * memorySizeForBits && j < (i + 1) * memorySizeForBits; ++j) {
    800034fc:	038a3b03          	ld	s6,56(s4)
    80003500:	1980006f          	j	80003698 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x1d8>
                printString("Byte: "); printInteger(byte); printString("\n");
                printString("Bit: "); printInteger(bit); printString("\n");
                printString("ifCondition: ");
                printInteger((bitVectors[i][byte] >> (bit - 1) & (uint8) 1) == 0); printString("\n");*/
                if ((bitVectors[i][byte] >> (bit - 1) & (uint8) 1) == 0) {
                    printString("========================");
    80003504:	00004517          	auipc	a0,0x4
    80003508:	fcc50513          	addi	a0,a0,-52 # 800074d0 <CONSOLE_STATUS+0x4c0>
    8000350c:	00000097          	auipc	ra,0x0
    80003510:	7e0080e7          	jalr	2016(ra) # 80003cec <_Z11printStringPKc>
                    printString("\nSUCCESS:\n");
    80003514:	00004517          	auipc	a0,0x4
    80003518:	fdc50513          	addi	a0,a0,-36 # 800074f0 <CONSOLE_STATUS+0x4e0>
    8000351c:	00000097          	auipc	ra,0x0
    80003520:	7d0080e7          	jalr	2000(ra) # 80003cec <_Z11printStringPKc>
                    printString("i: "); printInteger(i); printString("\n");
    80003524:	00004517          	auipc	a0,0x4
    80003528:	fdc50513          	addi	a0,a0,-36 # 80007500 <CONSOLE_STATUS+0x4f0>
    8000352c:	00000097          	auipc	ra,0x0
    80003530:	7c0080e7          	jalr	1984(ra) # 80003cec <_Z11printStringPKc>
    80003534:	000a8513          	mv	a0,s5
    80003538:	00001097          	auipc	ra,0x1
    8000353c:	824080e7          	jalr	-2012(ra) # 80003d5c <_Z12printIntegerm>
    80003540:	00004517          	auipc	a0,0x4
    80003544:	b4850513          	addi	a0,a0,-1208 # 80007088 <CONSOLE_STATUS+0x78>
    80003548:	00000097          	auipc	ra,0x0
    8000354c:	7a4080e7          	jalr	1956(ra) # 80003cec <_Z11printStringPKc>
                    printString("j: "); printInteger(j); printString("\n");
    80003550:	00004517          	auipc	a0,0x4
    80003554:	fb850513          	addi	a0,a0,-72 # 80007508 <CONSOLE_STATUS+0x4f8>
    80003558:	00000097          	auipc	ra,0x0
    8000355c:	794080e7          	jalr	1940(ra) # 80003cec <_Z11printStringPKc>
    80003560:	000b0513          	mv	a0,s6
    80003564:	00000097          	auipc	ra,0x0
    80003568:	7f8080e7          	jalr	2040(ra) # 80003d5c <_Z12printIntegerm>
    8000356c:	00004517          	auipc	a0,0x4
    80003570:	b1c50513          	addi	a0,a0,-1252 # 80007088 <CONSOLE_STATUS+0x78>
    80003574:	00000097          	auipc	ra,0x0
    80003578:	778080e7          	jalr	1912(ra) # 80003cec <_Z11printStringPKc>
                    printString("nextNonTakenByte: "); printInteger(nextNonTakenByte); printString("\n");
    8000357c:	00004517          	auipc	a0,0x4
    80003580:	f9450513          	addi	a0,a0,-108 # 80007510 <CONSOLE_STATUS+0x500>
    80003584:	00000097          	auipc	ra,0x0
    80003588:	768080e7          	jalr	1896(ra) # 80003cec <_Z11printStringPKc>
    8000358c:	038a3503          	ld	a0,56(s4)
    80003590:	00000097          	auipc	ra,0x0
    80003594:	7cc080e7          	jalr	1996(ra) # 80003d5c <_Z12printIntegerm>
    80003598:	00004517          	auipc	a0,0x4
    8000359c:	af050513          	addi	a0,a0,-1296 # 80007088 <CONSOLE_STATUS+0x78>
    800035a0:	00000097          	auipc	ra,0x0
    800035a4:	74c080e7          	jalr	1868(ra) # 80003cec <_Z11printStringPKc>
                    printString("Byte: "); printInteger(byte); printString("\n");
    800035a8:	00004517          	auipc	a0,0x4
    800035ac:	f8050513          	addi	a0,a0,-128 # 80007528 <CONSOLE_STATUS+0x518>
    800035b0:	00000097          	auipc	ra,0x0
    800035b4:	73c080e7          	jalr	1852(ra) # 80003cec <_Z11printStringPKc>
    800035b8:	00090513          	mv	a0,s2
    800035bc:	00000097          	auipc	ra,0x0
    800035c0:	7a0080e7          	jalr	1952(ra) # 80003d5c <_Z12printIntegerm>
    800035c4:	00004517          	auipc	a0,0x4
    800035c8:	ac450513          	addi	a0,a0,-1340 # 80007088 <CONSOLE_STATUS+0x78>
    800035cc:	00000097          	auipc	ra,0x0
    800035d0:	720080e7          	jalr	1824(ra) # 80003cec <_Z11printStringPKc>
                    printString("Bit: "); printInteger(bit); printString("\n");
    800035d4:	00004517          	auipc	a0,0x4
    800035d8:	f5c50513          	addi	a0,a0,-164 # 80007530 <CONSOLE_STATUS+0x520>
    800035dc:	00000097          	auipc	ra,0x0
    800035e0:	710080e7          	jalr	1808(ra) # 80003cec <_Z11printStringPKc>
    800035e4:	00048513          	mv	a0,s1
    800035e8:	00000097          	auipc	ra,0x0
    800035ec:	774080e7          	jalr	1908(ra) # 80003d5c <_Z12printIntegerm>
    800035f0:	00004517          	auipc	a0,0x4
    800035f4:	a9850513          	addi	a0,a0,-1384 # 80007088 <CONSOLE_STATUS+0x78>
    800035f8:	00000097          	auipc	ra,0x0
    800035fc:	6f4080e7          	jalr	1780(ra) # 80003cec <_Z11printStringPKc>
                    printString("========================");
    80003600:	00004517          	auipc	a0,0x4
    80003604:	ed050513          	addi	a0,a0,-304 # 800074d0 <CONSOLE_STATUS+0x4c0>
    80003608:	00000097          	auipc	ra,0x0
    8000360c:	6e4080e7          	jalr	1764(ra) # 80003cec <_Z11printStringPKc>
                    nextNonTakenByte = j + (bit == 1);
    80003610:	fff48793          	addi	a5,s1,-1
    80003614:	0017b793          	seqz	a5,a5
    80003618:	01678b33          	add	s6,a5,s6
    8000361c:	036a3c23          	sd	s6,56(s4)
                    bitVectors[i][byte] |= (uint8) 1 << (bit - 1);
    80003620:	028a3783          	ld	a5,40(s4)
    80003624:	013787b3          	add	a5,a5,s3
    80003628:	0007b703          	ld	a4,0(a5)
    8000362c:	01270733          	add	a4,a4,s2
    80003630:	00100793          	li	a5,1
    80003634:	01779bbb          	sllw	s7,a5,s7
    80003638:	00074783          	lbu	a5,0(a4)
    8000363c:	00fbebb3          	or	s7,s7,a5
    80003640:	01770023          	sb	s7,0(a4)
                    return &objectVectors[i][(byte * 8 + 8 - bit) * objectSize];
    80003644:	020a3783          	ld	a5,32(s4)
    80003648:	013789b3          	add	s3,a5,s3
    8000364c:	0009b783          	ld	a5,0(s3)
    80003650:	00190913          	addi	s2,s2,1
    80003654:	00391513          	slli	a0,s2,0x3
    80003658:	409504b3          	sub	s1,a0,s1
    8000365c:	018a3503          	ld	a0,24(s4)
    80003660:	02a48533          	mul	a0,s1,a0
    80003664:	00a78533          	add	a0,a5,a0
                }
            }
        }
    }
    return nullptr;
}
    80003668:	04813083          	ld	ra,72(sp)
    8000366c:	04013403          	ld	s0,64(sp)
    80003670:	03813483          	ld	s1,56(sp)
    80003674:	03013903          	ld	s2,48(sp)
    80003678:	02813983          	ld	s3,40(sp)
    8000367c:	02013a03          	ld	s4,32(sp)
    80003680:	01813a83          	ld	s5,24(sp)
    80003684:	01013b03          	ld	s6,16(sp)
    80003688:	00813b83          	ld	s7,8(sp)
    8000368c:	05010113          	addi	sp,sp,80
    80003690:	00008067          	ret
        for (size_t j = nextNonTakenByte; j >= i * memorySizeForBits && j < (i + 1) * memorySizeForBits; ++j) {
    80003694:	001b0b13          	addi	s6,s6,1
    80003698:	010a3783          	ld	a5,16(s4)
    8000369c:	03578933          	mul	s2,a5,s5
    800036a0:	052b6663          	bltu	s6,s2,800036ec <_ZN16KObjectAllocator18allocateFreeObjectEv+0x22c>
    800036a4:	001a8713          	addi	a4,s5,1
    800036a8:	02e787b3          	mul	a5,a5,a4
    800036ac:	04fb7063          	bgeu	s6,a5,800036ec <_ZN16KObjectAllocator18allocateFreeObjectEv+0x22c>
            size_t byte = j - i * memorySizeForBits;
    800036b0:	412b0933          	sub	s2,s6,s2
            for (size_t bit = 8; bit != 0; --bit) {
    800036b4:	00800493          	li	s1,8
    800036b8:	fc048ee3          	beqz	s1,80003694 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x1d4>
                if ((bitVectors[i][byte] >> (bit - 1) & (uint8) 1) == 0) {
    800036bc:	028a3783          	ld	a5,40(s4)
    800036c0:	003a9993          	slli	s3,s5,0x3
    800036c4:	013787b3          	add	a5,a5,s3
    800036c8:	0007b783          	ld	a5,0(a5)
    800036cc:	012787b3          	add	a5,a5,s2
    800036d0:	0007c783          	lbu	a5,0(a5)
    800036d4:	fff48b9b          	addiw	s7,s1,-1
    800036d8:	4177d7bb          	sraw	a5,a5,s7
    800036dc:	0017f793          	andi	a5,a5,1
    800036e0:	e20782e3          	beqz	a5,80003504 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x44>
            for (size_t bit = 8; bit != 0; --bit) {
    800036e4:	fff48493          	addi	s1,s1,-1
    800036e8:	fd1ff06f          	j	800036b8 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x1f8>
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    800036ec:	001a8a93          	addi	s5,s5,1
    800036f0:	e05ff06f          	j	800034f4 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x34>
    return nullptr;
    800036f4:	00000513          	li	a0,0
    800036f8:	f71ff06f          	j	80003668 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x1a8>

00000000800036fc <_ZN16KObjectAllocator10freeObjectEPv>:

void KObjectAllocator::freeObject(void* objectPointer) {
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    800036fc:	00000713          	li	a4,0
    80003700:	0080006f          	j	80003708 <_ZN16KObjectAllocator10freeObjectEPv+0xc>
    80003704:	00170713          	addi	a4,a4,1
    80003708:	03053783          	ld	a5,48(a0)
    8000370c:	06f77463          	bgeu	a4,a5,80003774 <_ZN16KObjectAllocator10freeObjectEPv+0x78>
        if ((uint8*) objectPointer < objectVectors[i]) continue;
    80003710:	02053783          	ld	a5,32(a0)
    80003714:	00371693          	slli	a3,a4,0x3
    80003718:	00d787b3          	add	a5,a5,a3
    8000371c:	0007b783          	ld	a5,0(a5)
    80003720:	fef5e2e3          	bltu	a1,a5,80003704 <_ZN16KObjectAllocator10freeObjectEPv+0x8>
        size_t idiff = (size_t) ((uint8*) objectPointer - objectVectors[i]);
    80003724:	40f587b3          	sub	a5,a1,a5
        size_t byte = idiff / objectSize / 8;
    80003728:	01853603          	ld	a2,24(a0)
    8000372c:	02c7d7b3          	divu	a5,a5,a2
    80003730:	0037d813          	srli	a6,a5,0x3
        if (byte >= memorySizeForBits) continue;
    80003734:	01053603          	ld	a2,16(a0)
    80003738:	fcc876e3          	bgeu	a6,a2,80003704 <_ZN16KObjectAllocator10freeObjectEPv+0x8>
        size_t bit = idiff / objectSize - byte * 8;
    8000373c:	0077f793          	andi	a5,a5,7
        bitVectors[i][byte] &= ~((uint8) 1 << (7 - bit));
    80003740:	02853603          	ld	a2,40(a0)
    80003744:	00d606b3          	add	a3,a2,a3
    80003748:	0006b703          	ld	a4,0(a3)
    8000374c:	01070733          	add	a4,a4,a6
    80003750:	00700693          	li	a3,7
    80003754:	40f686bb          	subw	a3,a3,a5
    80003758:	00100793          	li	a5,1
    8000375c:	00d797bb          	sllw	a5,a5,a3
    80003760:	fff7c793          	not	a5,a5
    80003764:	00074683          	lbu	a3,0(a4)
    80003768:	00d7f7b3          	and	a5,a5,a3
    8000376c:	00f70023          	sb	a5,0(a4)
        return;
    80003770:	00008067          	ret
void KObjectAllocator::freeObject(void* objectPointer) {
    80003774:	ff010113          	addi	sp,sp,-16
    80003778:	00113423          	sd	ra,8(sp)
    8000377c:	00813023          	sd	s0,0(sp)
    80003780:	01010413          	addi	s0,sp,16
    }
    printString("ERROR: Object not allocated in this KObjectAllocator\n");
    80003784:	00004517          	auipc	a0,0x4
    80003788:	db450513          	addi	a0,a0,-588 # 80007538 <CONSOLE_STATUS+0x528>
    8000378c:	00000097          	auipc	ra,0x0
    80003790:	560080e7          	jalr	1376(ra) # 80003cec <_Z11printStringPKc>
}
    80003794:	00813083          	ld	ra,8(sp)
    80003798:	00013403          	ld	s0,0(sp)
    8000379c:	01010113          	addi	sp,sp,16
    800037a0:	00008067          	ret

00000000800037a4 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv>:

bool KObjectAllocator::handleNotEnoughMemoryProblem() {
    800037a4:	fb010113          	addi	sp,sp,-80
    800037a8:	04113423          	sd	ra,72(sp)
    800037ac:	04813023          	sd	s0,64(sp)
    800037b0:	02913c23          	sd	s1,56(sp)
    800037b4:	03213823          	sd	s2,48(sp)
    800037b8:	03313423          	sd	s3,40(sp)
    800037bc:	03413023          	sd	s4,32(sp)
    800037c0:	01513c23          	sd	s5,24(sp)
    800037c4:	01613823          	sd	s6,16(sp)
    800037c8:	01713423          	sd	s7,8(sp)
    800037cc:	05010413          	addi	s0,sp,80
    800037d0:	00050493          	mv	s1,a0
    size_t newNumberOfAllocations = 2 * numberOfAllocations;
    800037d4:	03053a03          	ld	s4,48(a0)
    800037d8:	001a1993          	slli	s3,s4,0x1
    size_t newNumberOfObjects = 2 * numberOfObjects;
    800037dc:	00853a83          	ld	s5,8(a0)
    uint8** newBitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(
    800037e0:	ffffe097          	auipc	ra,0xffffe
    800037e4:	484080e7          	jalr	1156(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    800037e8:	004a1a13          	slli	s4,s4,0x4
    800037ec:	000a0593          	mv	a1,s4
    800037f0:	ffffe097          	auipc	ra,0xffffe
    800037f4:	558080e7          	jalr	1368(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
            newNumberOfAllocations * sizeof(uint8*)
    );
    if (!newBitVectors) return false;
    800037f8:	14050663          	beqz	a0,80003944 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a0>
    800037fc:	001a9a93          	slli	s5,s5,0x1
    80003800:	00050913          	mv	s2,a0
    uint8** newObjectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(
    80003804:	ffffe097          	auipc	ra,0xffffe
    80003808:	460080e7          	jalr	1120(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    8000380c:	000a0593          	mv	a1,s4
    80003810:	ffffe097          	auipc	ra,0xffffe
    80003814:	538080e7          	jalr	1336(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
    80003818:	00050a13          	mv	s4,a0
            newNumberOfAllocations * sizeof(uint8*)
    );
    if (!newObjectVectors) return false;
    8000381c:	14050c63          	beqz	a0,80003974 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1d0>

    for (size_t i = 0; i < numberOfAllocations; ++i) newBitVectors[i] = bitVectors[i];
    80003820:	00000793          	li	a5,0
    80003824:	0304bb03          	ld	s6,48(s1)
    80003828:	0367f463          	bgeu	a5,s6,80003850 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xac>
    8000382c:	0284b703          	ld	a4,40(s1)
    80003830:	00379693          	slli	a3,a5,0x3
    80003834:	00d90633          	add	a2,s2,a3
    80003838:	00d70733          	add	a4,a4,a3
    8000383c:	00073703          	ld	a4,0(a4)
    80003840:	00e63023          	sd	a4,0(a2)
    80003844:	00178793          	addi	a5,a5,1
    80003848:	fddff06f          	j	80003824 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x80>
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i) {
    8000384c:	001b0b13          	addi	s6,s6,1
    80003850:	053b7063          	bgeu	s6,s3,80003890 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xec>
        newBitVectors[i] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80003854:	ffffe097          	auipc	ra,0xffffe
    80003858:	410080e7          	jalr	1040(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
        memorySizeForBits + initialNumberOfObjects * objectSize );
    8000385c:	0104b583          	ld	a1,16(s1)
    80003860:	0004b783          	ld	a5,0(s1)
    80003864:	0184b703          	ld	a4,24(s1)
    80003868:	02e787b3          	mul	a5,a5,a4
        newBitVectors[i] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    8000386c:	003b1b93          	slli	s7,s6,0x3
    80003870:	01790bb3          	add	s7,s2,s7
    80003874:	00f585b3          	add	a1,a1,a5
    80003878:	ffffe097          	auipc	ra,0xffffe
    8000387c:	4d0080e7          	jalr	1232(ra) # 80001d48 <_ZN15MemoryAllocator10kmem_allocEm>
    80003880:	00abb023          	sd	a0,0(s7)
        if (!newBitVectors[i]) return false;
    80003884:	fc0514e3          	bnez	a0,8000384c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xa8>
    80003888:	00000513          	li	a0,0
    8000388c:	0bc0006f          	j	80003948 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a4>
    }
    for (size_t i = 0; i < newNumberOfAllocations; ++i) newObjectVectors[i] = newBitVectors[i] + memorySizeForBits;
    80003890:	00000713          	li	a4,0
    80003894:	03377463          	bgeu	a4,s3,800038bc <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x118>
    80003898:	00371793          	slli	a5,a4,0x3
    8000389c:	00f906b3          	add	a3,s2,a5
    800038a0:	0006b683          	ld	a3,0(a3)
    800038a4:	0104b603          	ld	a2,16(s1)
    800038a8:	00fa07b3          	add	a5,s4,a5
    800038ac:	00c686b3          	add	a3,a3,a2
    800038b0:	00d7b023          	sd	a3,0(a5)
    800038b4:	00170713          	addi	a4,a4,1
    800038b8:	fddff06f          	j	80003894 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xf0>
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i)
    800038bc:	0304b683          	ld	a3,48(s1)
    800038c0:	0280006f          	j	800038e8 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x144>
        for (size_t j = 0; j < memorySizeForBits; newBitVectors[i][j++] = 0);
    800038c4:	00369713          	slli	a4,a3,0x3
    800038c8:	00e90733          	add	a4,s2,a4
    800038cc:	00073703          	ld	a4,0(a4)
    800038d0:	00f70733          	add	a4,a4,a5
    800038d4:	00070023          	sb	zero,0(a4)
    800038d8:	00178793          	addi	a5,a5,1
    800038dc:	0104b703          	ld	a4,16(s1)
    800038e0:	fee7e2e3          	bltu	a5,a4,800038c4 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x120>
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i)
    800038e4:	00168693          	addi	a3,a3,1
    800038e8:	0136f663          	bgeu	a3,s3,800038f4 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x150>
        for (size_t j = 0; j < memorySizeForBits; newBitVectors[i][j++] = 0);
    800038ec:	00000793          	li	a5,0
    800038f0:	fedff06f          	j	800038dc <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x138>
    MemoryAllocator::instance()->kmem_free(bitVectors);
    800038f4:	ffffe097          	auipc	ra,0xffffe
    800038f8:	370080e7          	jalr	880(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    800038fc:	0284b583          	ld	a1,40(s1)
    80003900:	ffffe097          	auipc	ra,0xffffe
    80003904:	4f0080e7          	jalr	1264(ra) # 80001df0 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(objectVectors);
    80003908:	ffffe097          	auipc	ra,0xffffe
    8000390c:	35c080e7          	jalr	860(ra) # 80001c64 <_ZN15MemoryAllocator8instanceEv>
    80003910:	0204b583          	ld	a1,32(s1)
    80003914:	ffffe097          	auipc	ra,0xffffe
    80003918:	4dc080e7          	jalr	1244(ra) # 80001df0 <_ZN15MemoryAllocator9kmem_freeEPv>

    numberOfObjects = newNumberOfObjects;
    8000391c:	0154b423          	sd	s5,8(s1)
    nextNonTakenByte = numberOfAllocations * memorySizeForBits;
    80003920:	0304b783          	ld	a5,48(s1)
    80003924:	0104b703          	ld	a4,16(s1)
    80003928:	02e787b3          	mul	a5,a5,a4
    8000392c:	02f4bc23          	sd	a5,56(s1)
    numberOfAllocations = newNumberOfAllocations;
    80003930:	0334b823          	sd	s3,48(s1)
    bitVectors = newBitVectors;
    80003934:	0324b423          	sd	s2,40(s1)
    objectVectors = newObjectVectors;
    80003938:	0344b023          	sd	s4,32(s1)

    return true;
    8000393c:	00100513          	li	a0,1
    80003940:	0080006f          	j	80003948 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a4>
    if (!newBitVectors) return false;
    80003944:	00000513          	li	a0,0
}
    80003948:	04813083          	ld	ra,72(sp)
    8000394c:	04013403          	ld	s0,64(sp)
    80003950:	03813483          	ld	s1,56(sp)
    80003954:	03013903          	ld	s2,48(sp)
    80003958:	02813983          	ld	s3,40(sp)
    8000395c:	02013a03          	ld	s4,32(sp)
    80003960:	01813a83          	ld	s5,24(sp)
    80003964:	01013b03          	ld	s6,16(sp)
    80003968:	00813b83          	ld	s7,8(sp)
    8000396c:	05010113          	addi	sp,sp,80
    80003970:	00008067          	ret
    if (!newObjectVectors) return false;
    80003974:	00000513          	li	a0,0
    80003978:	fd1ff06f          	j	80003948 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a4>

000000008000397c <_ZN16KObjectAllocator17allocateNewObjectEv>:
void* KObjectAllocator::allocateNewObject() {
    8000397c:	fe010113          	addi	sp,sp,-32
    80003980:	00113c23          	sd	ra,24(sp)
    80003984:	00813823          	sd	s0,16(sp)
    80003988:	00913423          	sd	s1,8(sp)
    8000398c:	01213023          	sd	s2,0(sp)
    80003990:	02010413          	addi	s0,sp,32
    80003994:	00050913          	mv	s2,a0
    void* returnedObject = allocateFreeObject();
    80003998:	00000097          	auipc	ra,0x0
    8000399c:	b28080e7          	jalr	-1240(ra) # 800034c0 <_ZN16KObjectAllocator18allocateFreeObjectEv>
    if (returnedObject) {
    800039a0:	04050063          	beqz	a0,800039e0 <_ZN16KObjectAllocator17allocateNewObjectEv+0x64>
    800039a4:	00050493          	mv	s1,a0
        printString("\nreturn1: ");
    800039a8:	00004517          	auipc	a0,0x4
    800039ac:	bc850513          	addi	a0,a0,-1080 # 80007570 <CONSOLE_STATUS+0x560>
    800039b0:	00000097          	auipc	ra,0x0
    800039b4:	33c080e7          	jalr	828(ra) # 80003cec <_Z11printStringPKc>
        printInteger((uint64) returnedObject);
    800039b8:	00048513          	mv	a0,s1
    800039bc:	00000097          	auipc	ra,0x0
    800039c0:	3a0080e7          	jalr	928(ra) # 80003d5c <_Z12printIntegerm>
}
    800039c4:	00048513          	mv	a0,s1
    800039c8:	01813083          	ld	ra,24(sp)
    800039cc:	01013403          	ld	s0,16(sp)
    800039d0:	00813483          	ld	s1,8(sp)
    800039d4:	00013903          	ld	s2,0(sp)
    800039d8:	02010113          	addi	sp,sp,32
    800039dc:	00008067          	ret
    nextNonTakenByte = 0;   // start search from start
    800039e0:	02093c23          	sd	zero,56(s2)
    returnedObject = allocateFreeObject();
    800039e4:	00090513          	mv	a0,s2
    800039e8:	00000097          	auipc	ra,0x0
    800039ec:	ad8080e7          	jalr	-1320(ra) # 800034c0 <_ZN16KObjectAllocator18allocateFreeObjectEv>
    800039f0:	00050493          	mv	s1,a0
    if (returnedObject) {
    800039f4:	02050263          	beqz	a0,80003a18 <_ZN16KObjectAllocator17allocateNewObjectEv+0x9c>
        printString("\nreturn2: ");
    800039f8:	00004517          	auipc	a0,0x4
    800039fc:	b8850513          	addi	a0,a0,-1144 # 80007580 <CONSOLE_STATUS+0x570>
    80003a00:	00000097          	auipc	ra,0x0
    80003a04:	2ec080e7          	jalr	748(ra) # 80003cec <_Z11printStringPKc>
        printInteger((uint64) returnedObject);
    80003a08:	00048513          	mv	a0,s1
    80003a0c:	00000097          	auipc	ra,0x0
    80003a10:	350080e7          	jalr	848(ra) # 80003d5c <_Z12printIntegerm>
        return returnedObject;
    80003a14:	fb1ff06f          	j	800039c4 <_ZN16KObjectAllocator17allocateNewObjectEv+0x48>
    if (handleNotEnoughMemoryProblem()) {
    80003a18:	00090513          	mv	a0,s2
    80003a1c:	00000097          	auipc	ra,0x0
    80003a20:	d88080e7          	jalr	-632(ra) # 800037a4 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv>
    80003a24:	fa0500e3          	beqz	a0,800039c4 <_ZN16KObjectAllocator17allocateNewObjectEv+0x48>
        returnedObject = allocateFreeObject();
    80003a28:	00090513          	mv	a0,s2
    80003a2c:	00000097          	auipc	ra,0x0
    80003a30:	a94080e7          	jalr	-1388(ra) # 800034c0 <_ZN16KObjectAllocator18allocateFreeObjectEv>
    80003a34:	00050493          	mv	s1,a0
        if (returnedObject) {
    80003a38:	f80506e3          	beqz	a0,800039c4 <_ZN16KObjectAllocator17allocateNewObjectEv+0x48>
            printString("\nreturn3: ");
    80003a3c:	00004517          	auipc	a0,0x4
    80003a40:	b5450513          	addi	a0,a0,-1196 # 80007590 <CONSOLE_STATUS+0x580>
    80003a44:	00000097          	auipc	ra,0x0
    80003a48:	2a8080e7          	jalr	680(ra) # 80003cec <_Z11printStringPKc>
            printInteger((uint64) returnedObject);
    80003a4c:	00048513          	mv	a0,s1
    80003a50:	00000097          	auipc	ra,0x0
    80003a54:	30c080e7          	jalr	780(ra) # 80003d5c <_Z12printIntegerm>
            return returnedObject;
    80003a58:	f6dff06f          	j	800039c4 <_ZN16KObjectAllocator17allocateNewObjectEv+0x48>

0000000080003a5c <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"

void Riscv::popSppSpie()
{
    80003a5c:	ff010113          	addi	sp,sp,-16
    80003a60:	00813423          	sd	s0,8(sp)
    80003a64:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80003a68:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80003a6c:	10200073          	sret
}
    80003a70:	00813403          	ld	s0,8(sp)
    80003a74:	01010113          	addi	sp,sp,16
    80003a78:	00008067          	ret

0000000080003a7c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80003a7c:	fa010113          	addi	sp,sp,-96
    80003a80:	04113c23          	sd	ra,88(sp)
    80003a84:	04813823          	sd	s0,80(sp)
    80003a88:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80003a8c:	142027f3          	csrr	a5,scause
    80003a90:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80003a94:	fc843703          	ld	a4,-56(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80003a98:	ff870693          	addi	a3,a4,-8
    80003a9c:	00100793          	li	a5,1
    80003aa0:	02d7fa63          	bgeu	a5,a3,80003ad4 <_ZN5Riscv20handleSupervisorTrapEv+0x58>
        TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80003aa4:	fff00793          	li	a5,-1
    80003aa8:	03f79793          	slli	a5,a5,0x3f
    80003aac:	00178793          	addi	a5,a5,1
    80003ab0:	06f70863          	beq	a4,a5,80003b20 <_ZN5Riscv20handleSupervisorTrapEv+0xa4>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80003ab4:	fff00793          	li	a5,-1
    80003ab8:	03f79793          	slli	a5,a5,0x3f
    80003abc:	00978793          	addi	a5,a5,9
    80003ac0:	0cf70c63          	beq	a4,a5,80003b98 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
    }
    else
    {
        // unexpected trap cause
    }
    80003ac4:	05813083          	ld	ra,88(sp)
    80003ac8:	05013403          	ld	s0,80(sp)
    80003acc:	06010113          	addi	sp,sp,96
    80003ad0:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80003ad4:	141027f3          	csrr	a5,sepc
    80003ad8:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80003adc:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80003ae0:	00478793          	addi	a5,a5,4
    80003ae4:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003ae8:	100027f3          	csrr	a5,sstatus
    80003aec:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80003af0:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80003af4:	faf43823          	sd	a5,-80(s0)
        TCB::timeSliceCounter = 0;
    80003af8:	00004797          	auipc	a5,0x4
    80003afc:	7687b783          	ld	a5,1896(a5) # 80008260 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003b00:	0007b023          	sd	zero,0(a5)
        TCB::dispatch();
    80003b04:	ffffe097          	auipc	ra,0xffffe
    80003b08:	000080e7          	jalr	ra # 80001b04 <_ZN3TCB8dispatchEv>
        w_sstatus(sstatus);
    80003b0c:	fb043783          	ld	a5,-80(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80003b10:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80003b14:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80003b18:	14179073          	csrw	sepc,a5
}
    80003b1c:	fa9ff06f          	j	80003ac4 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80003b20:	00200793          	li	a5,2
    80003b24:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80003b28:	00004717          	auipc	a4,0x4
    80003b2c:	73873703          	ld	a4,1848(a4) # 80008260 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003b30:	00073783          	ld	a5,0(a4)
    80003b34:	00178793          	addi	a5,a5,1
    80003b38:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80003b3c:	00004717          	auipc	a4,0x4
    80003b40:	74473703          	ld	a4,1860(a4) # 80008280 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003b44:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80003b48:	02073703          	ld	a4,32(a4)
    80003b4c:	f6e7ece3          	bltu	a5,a4,80003ac4 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80003b50:	141027f3          	csrr	a5,sepc
    80003b54:	fef43423          	sd	a5,-24(s0)
    return sepc;
    80003b58:	fe843783          	ld	a5,-24(s0)
            uint64 volatile sepc = r_sepc();
    80003b5c:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003b60:	100027f3          	csrr	a5,sstatus
    80003b64:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    80003b68:	fe043783          	ld	a5,-32(s0)
            uint64 volatile sstatus = r_sstatus();
    80003b6c:	fcf43023          	sd	a5,-64(s0)
            TCB::timeSliceCounter = 0;
    80003b70:	00004797          	auipc	a5,0x4
    80003b74:	6f07b783          	ld	a5,1776(a5) # 80008260 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003b78:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80003b7c:	ffffe097          	auipc	ra,0xffffe
    80003b80:	f88080e7          	jalr	-120(ra) # 80001b04 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80003b84:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80003b88:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80003b8c:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80003b90:	14179073          	csrw	sepc,a5
}
    80003b94:	f31ff06f          	j	80003ac4 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
        console_handler();
    80003b98:	00002097          	auipc	ra,0x2
    80003b9c:	62c080e7          	jalr	1580(ra) # 800061c4 <console_handler>
    80003ba0:	f25ff06f          	j	80003ac4 <_ZN5Riscv20handleSupervisorTrapEv+0x48>

0000000080003ba4 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80003ba4:	ff010113          	addi	sp,sp,-16
    80003ba8:	00813423          	sd	s0,8(sp)
    80003bac:	01010413          	addi	s0,sp,16
    80003bb0:	00100793          	li	a5,1
    80003bb4:	00f50863          	beq	a0,a5,80003bc4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80003bb8:	00813403          	ld	s0,8(sp)
    80003bbc:	01010113          	addi	sp,sp,16
    80003bc0:	00008067          	ret
    80003bc4:	000107b7          	lui	a5,0x10
    80003bc8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003bcc:	fef596e3          	bne	a1,a5,80003bb8 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80003bd0:	00004797          	auipc	a5,0x4
    80003bd4:	75078793          	addi	a5,a5,1872 # 80008320 <_ZN9Scheduler16readyThreadQueueE>
    80003bd8:	0007b023          	sd	zero,0(a5)
    80003bdc:	0007b423          	sd	zero,8(a5)
    80003be0:	fd9ff06f          	j	80003bb8 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080003be4 <_ZN9Scheduler3getEv>:
{
    80003be4:	fe010113          	addi	sp,sp,-32
    80003be8:	00113c23          	sd	ra,24(sp)
    80003bec:	00813823          	sd	s0,16(sp)
    80003bf0:	00913423          	sd	s1,8(sp)
    80003bf4:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80003bf8:	00004517          	auipc	a0,0x4
    80003bfc:	72853503          	ld	a0,1832(a0) # 80008320 <_ZN9Scheduler16readyThreadQueueE>
    80003c00:	04050263          	beqz	a0,80003c44 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80003c04:	00853783          	ld	a5,8(a0)
    80003c08:	00004717          	auipc	a4,0x4
    80003c0c:	70f73c23          	sd	a5,1816(a4) # 80008320 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80003c10:	02078463          	beqz	a5,80003c38 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80003c14:	00053483          	ld	s1,0(a0)
        delete elem;
    80003c18:	fffff097          	auipc	ra,0xfffff
    80003c1c:	584080e7          	jalr	1412(ra) # 8000319c <_ZdlPv>
}
    80003c20:	00048513          	mv	a0,s1
    80003c24:	01813083          	ld	ra,24(sp)
    80003c28:	01013403          	ld	s0,16(sp)
    80003c2c:	00813483          	ld	s1,8(sp)
    80003c30:	02010113          	addi	sp,sp,32
    80003c34:	00008067          	ret
        if (!head) { tail = 0; }
    80003c38:	00004797          	auipc	a5,0x4
    80003c3c:	6e07b823          	sd	zero,1776(a5) # 80008328 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003c40:	fd5ff06f          	j	80003c14 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80003c44:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80003c48:	fd9ff06f          	j	80003c20 <_ZN9Scheduler3getEv+0x3c>

0000000080003c4c <_ZN9Scheduler3putEP3TCB>:
{
    80003c4c:	fe010113          	addi	sp,sp,-32
    80003c50:	00113c23          	sd	ra,24(sp)
    80003c54:	00813823          	sd	s0,16(sp)
    80003c58:	00913423          	sd	s1,8(sp)
    80003c5c:	02010413          	addi	s0,sp,32
    80003c60:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80003c64:	01000513          	li	a0,16
    80003c68:	fffff097          	auipc	ra,0xfffff
    80003c6c:	4e4080e7          	jalr	1252(ra) # 8000314c <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80003c70:	00953023          	sd	s1,0(a0)
    80003c74:	00053423          	sd	zero,8(a0)
        if (tail)
    80003c78:	00004797          	auipc	a5,0x4
    80003c7c:	6b07b783          	ld	a5,1712(a5) # 80008328 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003c80:	02078263          	beqz	a5,80003ca4 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80003c84:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80003c88:	00004797          	auipc	a5,0x4
    80003c8c:	6aa7b023          	sd	a0,1696(a5) # 80008328 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003c90:	01813083          	ld	ra,24(sp)
    80003c94:	01013403          	ld	s0,16(sp)
    80003c98:	00813483          	ld	s1,8(sp)
    80003c9c:	02010113          	addi	sp,sp,32
    80003ca0:	00008067          	ret
            head = tail = elem;
    80003ca4:	00004797          	auipc	a5,0x4
    80003ca8:	67c78793          	addi	a5,a5,1660 # 80008320 <_ZN9Scheduler16readyThreadQueueE>
    80003cac:	00a7b423          	sd	a0,8(a5)
    80003cb0:	00a7b023          	sd	a0,0(a5)
    80003cb4:	fddff06f          	j	80003c90 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080003cb8 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80003cb8:	ff010113          	addi	sp,sp,-16
    80003cbc:	00113423          	sd	ra,8(sp)
    80003cc0:	00813023          	sd	s0,0(sp)
    80003cc4:	01010413          	addi	s0,sp,16
    80003cc8:	000105b7          	lui	a1,0x10
    80003ccc:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80003cd0:	00100513          	li	a0,1
    80003cd4:	00000097          	auipc	ra,0x0
    80003cd8:	ed0080e7          	jalr	-304(ra) # 80003ba4 <_Z41__static_initialization_and_destruction_0ii>
    80003cdc:	00813083          	ld	ra,8(sp)
    80003ce0:	00013403          	ld	s0,0(sp)
    80003ce4:	01010113          	addi	sp,sp,16
    80003ce8:	00008067          	ret

0000000080003cec <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80003cec:	fd010113          	addi	sp,sp,-48
    80003cf0:	02113423          	sd	ra,40(sp)
    80003cf4:	02813023          	sd	s0,32(sp)
    80003cf8:	00913c23          	sd	s1,24(sp)
    80003cfc:	01213823          	sd	s2,16(sp)
    80003d00:	03010413          	addi	s0,sp,48
    80003d04:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003d08:	100027f3          	csrr	a5,sstatus
    80003d0c:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80003d10:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80003d14:	00200793          	li	a5,2
    80003d18:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    while (*string != '\0') __putc(*string++);
    80003d1c:	0004c503          	lbu	a0,0(s1)
    80003d20:	00050a63          	beqz	a0,80003d34 <_Z11printStringPKc+0x48>
    80003d24:	00148493          	addi	s1,s1,1
    80003d28:	00002097          	auipc	ra,0x2
    80003d2c:	428080e7          	jalr	1064(ra) # 80006150 <__putc>
    80003d30:	fedff06f          	j	80003d1c <_Z11printStringPKc+0x30>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80003d34:	0009091b          	sext.w	s2,s2
    80003d38:	00297913          	andi	s2,s2,2
    80003d3c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80003d40:	10092073          	csrs	sstatus,s2
}
    80003d44:	02813083          	ld	ra,40(sp)
    80003d48:	02013403          	ld	s0,32(sp)
    80003d4c:	01813483          	ld	s1,24(sp)
    80003d50:	01013903          	ld	s2,16(sp)
    80003d54:	03010113          	addi	sp,sp,48
    80003d58:	00008067          	ret

0000000080003d5c <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80003d5c:	fc010113          	addi	sp,sp,-64
    80003d60:	02113c23          	sd	ra,56(sp)
    80003d64:	02813823          	sd	s0,48(sp)
    80003d68:	02913423          	sd	s1,40(sp)
    80003d6c:	03213023          	sd	s2,32(sp)
    80003d70:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003d74:	100027f3          	csrr	a5,sstatus
    80003d78:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80003d7c:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80003d80:	00200793          	li	a5,2
    80003d84:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    static char digits[] = "0123456789";
    char buf[16]; int i = 0; uint64 x = integer;
    int neg = (integer & ((uint64)1 << 63)) != 0;
    80003d88:	00050593          	mv	a1,a0

    if (neg) x = ~integer + 1;
    80003d8c:	06054463          	bltz	a0,80003df4 <_Z12printIntegerm+0x98>
{
    80003d90:	00000493          	li	s1,0

    do buf[i++] = digits[x % 10];
    80003d94:	00a00713          	li	a4,10
    80003d98:	02e57633          	remu	a2,a0,a4
    80003d9c:	00048693          	mv	a3,s1
    80003da0:	0014849b          	addiw	s1,s1,1
    80003da4:	00003797          	auipc	a5,0x3
    80003da8:	7fc78793          	addi	a5,a5,2044 # 800075a0 <_ZZ12printIntegermE6digits>
    80003dac:	00c787b3          	add	a5,a5,a2
    80003db0:	0007c603          	lbu	a2,0(a5)
    80003db4:	fe040793          	addi	a5,s0,-32
    80003db8:	00d787b3          	add	a5,a5,a3
    80003dbc:	fec78823          	sb	a2,-16(a5)
    while ((x /= 10) != 0);
    80003dc0:	00050613          	mv	a2,a0
    80003dc4:	02e55533          	divu	a0,a0,a4
    80003dc8:	00900793          	li	a5,9
    80003dcc:	fcc7e4e3          	bltu	a5,a2,80003d94 <_Z12printIntegerm+0x38>

    if (neg) buf[i++] = '-';
    80003dd0:	0205c663          	bltz	a1,80003dfc <_Z12printIntegerm+0xa0>
    while (--i >= 0) { __putc(buf[i]); }
    80003dd4:	fff4849b          	addiw	s1,s1,-1
    80003dd8:	0204ce63          	bltz	s1,80003e14 <_Z12printIntegerm+0xb8>
    80003ddc:	fe040793          	addi	a5,s0,-32
    80003de0:	009787b3          	add	a5,a5,s1
    80003de4:	ff07c503          	lbu	a0,-16(a5)
    80003de8:	00002097          	auipc	ra,0x2
    80003dec:	368080e7          	jalr	872(ra) # 80006150 <__putc>
    80003df0:	fe5ff06f          	j	80003dd4 <_Z12printIntegerm+0x78>
    if (neg) x = ~integer + 1;
    80003df4:	40a00533          	neg	a0,a0
    80003df8:	f99ff06f          	j	80003d90 <_Z12printIntegerm+0x34>
    if (neg) buf[i++] = '-';
    80003dfc:	fe040793          	addi	a5,s0,-32
    80003e00:	009784b3          	add	s1,a5,s1
    80003e04:	02d00793          	li	a5,45
    80003e08:	fef48823          	sb	a5,-16(s1)
    80003e0c:	0026849b          	addiw	s1,a3,2
    80003e10:	fc5ff06f          	j	80003dd4 <_Z12printIntegerm+0x78>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80003e14:	0009091b          	sext.w	s2,s2
    80003e18:	00297913          	andi	s2,s2,2
    80003e1c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80003e20:	10092073          	csrs	sstatus,s2
}
    80003e24:	03813083          	ld	ra,56(sp)
    80003e28:	03013403          	ld	s0,48(sp)
    80003e2c:	02813483          	ld	s1,40(sp)
    80003e30:	02013903          	ld	s2,32(sp)
    80003e34:	04010113          	addi	sp,sp,64
    80003e38:	00008067          	ret

0000000080003e3c <_Z12printIntegerh>:


void printInteger(uint8 integer)
{
    80003e3c:	ff010113          	addi	sp,sp,-16
    80003e40:	00113423          	sd	ra,8(sp)
    80003e44:	00813023          	sd	s0,0(sp)
    80003e48:	01010413          	addi	s0,sp,16
    printInteger((uint64)integer);
    80003e4c:	00000097          	auipc	ra,0x0
    80003e50:	f10080e7          	jalr	-240(ra) # 80003d5c <_Z12printIntegerm>
}
    80003e54:	00813083          	ld	ra,8(sp)
    80003e58:	00013403          	ld	s0,0(sp)
    80003e5c:	01010113          	addi	sp,sp,16
    80003e60:	00008067          	ret

0000000080003e64 <start>:
    80003e64:	ff010113          	addi	sp,sp,-16
    80003e68:	00813423          	sd	s0,8(sp)
    80003e6c:	01010413          	addi	s0,sp,16
    80003e70:	300027f3          	csrr	a5,mstatus
    80003e74:	ffffe737          	lui	a4,0xffffe
    80003e78:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff525f>
    80003e7c:	00e7f7b3          	and	a5,a5,a4
    80003e80:	00001737          	lui	a4,0x1
    80003e84:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003e88:	00e7e7b3          	or	a5,a5,a4
    80003e8c:	30079073          	csrw	mstatus,a5
    80003e90:	00000797          	auipc	a5,0x0
    80003e94:	16078793          	addi	a5,a5,352 # 80003ff0 <system_main>
    80003e98:	34179073          	csrw	mepc,a5
    80003e9c:	00000793          	li	a5,0
    80003ea0:	18079073          	csrw	satp,a5
    80003ea4:	000107b7          	lui	a5,0x10
    80003ea8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003eac:	30279073          	csrw	medeleg,a5
    80003eb0:	30379073          	csrw	mideleg,a5
    80003eb4:	104027f3          	csrr	a5,sie
    80003eb8:	2227e793          	ori	a5,a5,546
    80003ebc:	10479073          	csrw	sie,a5
    80003ec0:	fff00793          	li	a5,-1
    80003ec4:	00a7d793          	srli	a5,a5,0xa
    80003ec8:	3b079073          	csrw	pmpaddr0,a5
    80003ecc:	00f00793          	li	a5,15
    80003ed0:	3a079073          	csrw	pmpcfg0,a5
    80003ed4:	f14027f3          	csrr	a5,mhartid
    80003ed8:	0200c737          	lui	a4,0x200c
    80003edc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003ee0:	0007869b          	sext.w	a3,a5
    80003ee4:	00269713          	slli	a4,a3,0x2
    80003ee8:	000f4637          	lui	a2,0xf4
    80003eec:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003ef0:	00d70733          	add	a4,a4,a3
    80003ef4:	0037979b          	slliw	a5,a5,0x3
    80003ef8:	020046b7          	lui	a3,0x2004
    80003efc:	00d787b3          	add	a5,a5,a3
    80003f00:	00c585b3          	add	a1,a1,a2
    80003f04:	00371693          	slli	a3,a4,0x3
    80003f08:	00004717          	auipc	a4,0x4
    80003f0c:	42870713          	addi	a4,a4,1064 # 80008330 <timer_scratch>
    80003f10:	00b7b023          	sd	a1,0(a5)
    80003f14:	00d70733          	add	a4,a4,a3
    80003f18:	00f73c23          	sd	a5,24(a4)
    80003f1c:	02c73023          	sd	a2,32(a4)
    80003f20:	34071073          	csrw	mscratch,a4
    80003f24:	00000797          	auipc	a5,0x0
    80003f28:	6ec78793          	addi	a5,a5,1772 # 80004610 <timervec>
    80003f2c:	30579073          	csrw	mtvec,a5
    80003f30:	300027f3          	csrr	a5,mstatus
    80003f34:	0087e793          	ori	a5,a5,8
    80003f38:	30079073          	csrw	mstatus,a5
    80003f3c:	304027f3          	csrr	a5,mie
    80003f40:	0807e793          	ori	a5,a5,128
    80003f44:	30479073          	csrw	mie,a5
    80003f48:	f14027f3          	csrr	a5,mhartid
    80003f4c:	0007879b          	sext.w	a5,a5
    80003f50:	00078213          	mv	tp,a5
    80003f54:	30200073          	mret
    80003f58:	00813403          	ld	s0,8(sp)
    80003f5c:	01010113          	addi	sp,sp,16
    80003f60:	00008067          	ret

0000000080003f64 <timerinit>:
    80003f64:	ff010113          	addi	sp,sp,-16
    80003f68:	00813423          	sd	s0,8(sp)
    80003f6c:	01010413          	addi	s0,sp,16
    80003f70:	f14027f3          	csrr	a5,mhartid
    80003f74:	0200c737          	lui	a4,0x200c
    80003f78:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003f7c:	0007869b          	sext.w	a3,a5
    80003f80:	00269713          	slli	a4,a3,0x2
    80003f84:	000f4637          	lui	a2,0xf4
    80003f88:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003f8c:	00d70733          	add	a4,a4,a3
    80003f90:	0037979b          	slliw	a5,a5,0x3
    80003f94:	020046b7          	lui	a3,0x2004
    80003f98:	00d787b3          	add	a5,a5,a3
    80003f9c:	00c585b3          	add	a1,a1,a2
    80003fa0:	00371693          	slli	a3,a4,0x3
    80003fa4:	00004717          	auipc	a4,0x4
    80003fa8:	38c70713          	addi	a4,a4,908 # 80008330 <timer_scratch>
    80003fac:	00b7b023          	sd	a1,0(a5)
    80003fb0:	00d70733          	add	a4,a4,a3
    80003fb4:	00f73c23          	sd	a5,24(a4)
    80003fb8:	02c73023          	sd	a2,32(a4)
    80003fbc:	34071073          	csrw	mscratch,a4
    80003fc0:	00000797          	auipc	a5,0x0
    80003fc4:	65078793          	addi	a5,a5,1616 # 80004610 <timervec>
    80003fc8:	30579073          	csrw	mtvec,a5
    80003fcc:	300027f3          	csrr	a5,mstatus
    80003fd0:	0087e793          	ori	a5,a5,8
    80003fd4:	30079073          	csrw	mstatus,a5
    80003fd8:	304027f3          	csrr	a5,mie
    80003fdc:	0807e793          	ori	a5,a5,128
    80003fe0:	30479073          	csrw	mie,a5
    80003fe4:	00813403          	ld	s0,8(sp)
    80003fe8:	01010113          	addi	sp,sp,16
    80003fec:	00008067          	ret

0000000080003ff0 <system_main>:
    80003ff0:	fe010113          	addi	sp,sp,-32
    80003ff4:	00813823          	sd	s0,16(sp)
    80003ff8:	00913423          	sd	s1,8(sp)
    80003ffc:	00113c23          	sd	ra,24(sp)
    80004000:	02010413          	addi	s0,sp,32
    80004004:	00000097          	auipc	ra,0x0
    80004008:	0c4080e7          	jalr	196(ra) # 800040c8 <cpuid>
    8000400c:	00004497          	auipc	s1,0x4
    80004010:	2b448493          	addi	s1,s1,692 # 800082c0 <started>
    80004014:	02050263          	beqz	a0,80004038 <system_main+0x48>
    80004018:	0004a783          	lw	a5,0(s1)
    8000401c:	0007879b          	sext.w	a5,a5
    80004020:	fe078ce3          	beqz	a5,80004018 <system_main+0x28>
    80004024:	0ff0000f          	fence
    80004028:	00003517          	auipc	a0,0x3
    8000402c:	5b850513          	addi	a0,a0,1464 # 800075e0 <_ZZ12printIntegermE6digits+0x40>
    80004030:	00001097          	auipc	ra,0x1
    80004034:	a7c080e7          	jalr	-1412(ra) # 80004aac <panic>
    80004038:	00001097          	auipc	ra,0x1
    8000403c:	9d0080e7          	jalr	-1584(ra) # 80004a08 <consoleinit>
    80004040:	00001097          	auipc	ra,0x1
    80004044:	15c080e7          	jalr	348(ra) # 8000519c <printfinit>
    80004048:	00003517          	auipc	a0,0x3
    8000404c:	04050513          	addi	a0,a0,64 # 80007088 <CONSOLE_STATUS+0x78>
    80004050:	00001097          	auipc	ra,0x1
    80004054:	ab8080e7          	jalr	-1352(ra) # 80004b08 <__printf>
    80004058:	00003517          	auipc	a0,0x3
    8000405c:	55850513          	addi	a0,a0,1368 # 800075b0 <_ZZ12printIntegermE6digits+0x10>
    80004060:	00001097          	auipc	ra,0x1
    80004064:	aa8080e7          	jalr	-1368(ra) # 80004b08 <__printf>
    80004068:	00003517          	auipc	a0,0x3
    8000406c:	02050513          	addi	a0,a0,32 # 80007088 <CONSOLE_STATUS+0x78>
    80004070:	00001097          	auipc	ra,0x1
    80004074:	a98080e7          	jalr	-1384(ra) # 80004b08 <__printf>
    80004078:	00001097          	auipc	ra,0x1
    8000407c:	4b0080e7          	jalr	1200(ra) # 80005528 <kinit>
    80004080:	00000097          	auipc	ra,0x0
    80004084:	148080e7          	jalr	328(ra) # 800041c8 <trapinit>
    80004088:	00000097          	auipc	ra,0x0
    8000408c:	16c080e7          	jalr	364(ra) # 800041f4 <trapinithart>
    80004090:	00000097          	auipc	ra,0x0
    80004094:	5c0080e7          	jalr	1472(ra) # 80004650 <plicinit>
    80004098:	00000097          	auipc	ra,0x0
    8000409c:	5e0080e7          	jalr	1504(ra) # 80004678 <plicinithart>
    800040a0:	00000097          	auipc	ra,0x0
    800040a4:	078080e7          	jalr	120(ra) # 80004118 <userinit>
    800040a8:	0ff0000f          	fence
    800040ac:	00100793          	li	a5,1
    800040b0:	00003517          	auipc	a0,0x3
    800040b4:	51850513          	addi	a0,a0,1304 # 800075c8 <_ZZ12printIntegermE6digits+0x28>
    800040b8:	00f4a023          	sw	a5,0(s1)
    800040bc:	00001097          	auipc	ra,0x1
    800040c0:	a4c080e7          	jalr	-1460(ra) # 80004b08 <__printf>
    800040c4:	0000006f          	j	800040c4 <system_main+0xd4>

00000000800040c8 <cpuid>:
    800040c8:	ff010113          	addi	sp,sp,-16
    800040cc:	00813423          	sd	s0,8(sp)
    800040d0:	01010413          	addi	s0,sp,16
    800040d4:	00020513          	mv	a0,tp
    800040d8:	00813403          	ld	s0,8(sp)
    800040dc:	0005051b          	sext.w	a0,a0
    800040e0:	01010113          	addi	sp,sp,16
    800040e4:	00008067          	ret

00000000800040e8 <mycpu>:
    800040e8:	ff010113          	addi	sp,sp,-16
    800040ec:	00813423          	sd	s0,8(sp)
    800040f0:	01010413          	addi	s0,sp,16
    800040f4:	00020793          	mv	a5,tp
    800040f8:	00813403          	ld	s0,8(sp)
    800040fc:	0007879b          	sext.w	a5,a5
    80004100:	00779793          	slli	a5,a5,0x7
    80004104:	00005517          	auipc	a0,0x5
    80004108:	25c50513          	addi	a0,a0,604 # 80009360 <cpus>
    8000410c:	00f50533          	add	a0,a0,a5
    80004110:	01010113          	addi	sp,sp,16
    80004114:	00008067          	ret

0000000080004118 <userinit>:
    80004118:	ff010113          	addi	sp,sp,-16
    8000411c:	00813423          	sd	s0,8(sp)
    80004120:	01010413          	addi	s0,sp,16
    80004124:	00813403          	ld	s0,8(sp)
    80004128:	01010113          	addi	sp,sp,16
    8000412c:	ffffd317          	auipc	t1,0xffffd
    80004130:	56030067          	jr	1376(t1) # 8000168c <main>

0000000080004134 <either_copyout>:
    80004134:	ff010113          	addi	sp,sp,-16
    80004138:	00813023          	sd	s0,0(sp)
    8000413c:	00113423          	sd	ra,8(sp)
    80004140:	01010413          	addi	s0,sp,16
    80004144:	02051663          	bnez	a0,80004170 <either_copyout+0x3c>
    80004148:	00058513          	mv	a0,a1
    8000414c:	00060593          	mv	a1,a2
    80004150:	0006861b          	sext.w	a2,a3
    80004154:	00002097          	auipc	ra,0x2
    80004158:	c60080e7          	jalr	-928(ra) # 80005db4 <__memmove>
    8000415c:	00813083          	ld	ra,8(sp)
    80004160:	00013403          	ld	s0,0(sp)
    80004164:	00000513          	li	a0,0
    80004168:	01010113          	addi	sp,sp,16
    8000416c:	00008067          	ret
    80004170:	00003517          	auipc	a0,0x3
    80004174:	49850513          	addi	a0,a0,1176 # 80007608 <_ZZ12printIntegermE6digits+0x68>
    80004178:	00001097          	auipc	ra,0x1
    8000417c:	934080e7          	jalr	-1740(ra) # 80004aac <panic>

0000000080004180 <either_copyin>:
    80004180:	ff010113          	addi	sp,sp,-16
    80004184:	00813023          	sd	s0,0(sp)
    80004188:	00113423          	sd	ra,8(sp)
    8000418c:	01010413          	addi	s0,sp,16
    80004190:	02059463          	bnez	a1,800041b8 <either_copyin+0x38>
    80004194:	00060593          	mv	a1,a2
    80004198:	0006861b          	sext.w	a2,a3
    8000419c:	00002097          	auipc	ra,0x2
    800041a0:	c18080e7          	jalr	-1000(ra) # 80005db4 <__memmove>
    800041a4:	00813083          	ld	ra,8(sp)
    800041a8:	00013403          	ld	s0,0(sp)
    800041ac:	00000513          	li	a0,0
    800041b0:	01010113          	addi	sp,sp,16
    800041b4:	00008067          	ret
    800041b8:	00003517          	auipc	a0,0x3
    800041bc:	47850513          	addi	a0,a0,1144 # 80007630 <_ZZ12printIntegermE6digits+0x90>
    800041c0:	00001097          	auipc	ra,0x1
    800041c4:	8ec080e7          	jalr	-1812(ra) # 80004aac <panic>

00000000800041c8 <trapinit>:
    800041c8:	ff010113          	addi	sp,sp,-16
    800041cc:	00813423          	sd	s0,8(sp)
    800041d0:	01010413          	addi	s0,sp,16
    800041d4:	00813403          	ld	s0,8(sp)
    800041d8:	00003597          	auipc	a1,0x3
    800041dc:	48058593          	addi	a1,a1,1152 # 80007658 <_ZZ12printIntegermE6digits+0xb8>
    800041e0:	00005517          	auipc	a0,0x5
    800041e4:	20050513          	addi	a0,a0,512 # 800093e0 <tickslock>
    800041e8:	01010113          	addi	sp,sp,16
    800041ec:	00001317          	auipc	t1,0x1
    800041f0:	5cc30067          	jr	1484(t1) # 800057b8 <initlock>

00000000800041f4 <trapinithart>:
    800041f4:	ff010113          	addi	sp,sp,-16
    800041f8:	00813423          	sd	s0,8(sp)
    800041fc:	01010413          	addi	s0,sp,16
    80004200:	00000797          	auipc	a5,0x0
    80004204:	30078793          	addi	a5,a5,768 # 80004500 <kernelvec>
    80004208:	10579073          	csrw	stvec,a5
    8000420c:	00813403          	ld	s0,8(sp)
    80004210:	01010113          	addi	sp,sp,16
    80004214:	00008067          	ret

0000000080004218 <usertrap>:
    80004218:	ff010113          	addi	sp,sp,-16
    8000421c:	00813423          	sd	s0,8(sp)
    80004220:	01010413          	addi	s0,sp,16
    80004224:	00813403          	ld	s0,8(sp)
    80004228:	01010113          	addi	sp,sp,16
    8000422c:	00008067          	ret

0000000080004230 <usertrapret>:
    80004230:	ff010113          	addi	sp,sp,-16
    80004234:	00813423          	sd	s0,8(sp)
    80004238:	01010413          	addi	s0,sp,16
    8000423c:	00813403          	ld	s0,8(sp)
    80004240:	01010113          	addi	sp,sp,16
    80004244:	00008067          	ret

0000000080004248 <kerneltrap>:
    80004248:	fe010113          	addi	sp,sp,-32
    8000424c:	00813823          	sd	s0,16(sp)
    80004250:	00113c23          	sd	ra,24(sp)
    80004254:	00913423          	sd	s1,8(sp)
    80004258:	02010413          	addi	s0,sp,32
    8000425c:	142025f3          	csrr	a1,scause
    80004260:	100027f3          	csrr	a5,sstatus
    80004264:	0027f793          	andi	a5,a5,2
    80004268:	10079c63          	bnez	a5,80004380 <kerneltrap+0x138>
    8000426c:	142027f3          	csrr	a5,scause
    80004270:	0207ce63          	bltz	a5,800042ac <kerneltrap+0x64>
    80004274:	00003517          	auipc	a0,0x3
    80004278:	42c50513          	addi	a0,a0,1068 # 800076a0 <_ZZ12printIntegermE6digits+0x100>
    8000427c:	00001097          	auipc	ra,0x1
    80004280:	88c080e7          	jalr	-1908(ra) # 80004b08 <__printf>
    80004284:	141025f3          	csrr	a1,sepc
    80004288:	14302673          	csrr	a2,stval
    8000428c:	00003517          	auipc	a0,0x3
    80004290:	42450513          	addi	a0,a0,1060 # 800076b0 <_ZZ12printIntegermE6digits+0x110>
    80004294:	00001097          	auipc	ra,0x1
    80004298:	874080e7          	jalr	-1932(ra) # 80004b08 <__printf>
    8000429c:	00003517          	auipc	a0,0x3
    800042a0:	42c50513          	addi	a0,a0,1068 # 800076c8 <_ZZ12printIntegermE6digits+0x128>
    800042a4:	00001097          	auipc	ra,0x1
    800042a8:	808080e7          	jalr	-2040(ra) # 80004aac <panic>
    800042ac:	0ff7f713          	andi	a4,a5,255
    800042b0:	00900693          	li	a3,9
    800042b4:	04d70063          	beq	a4,a3,800042f4 <kerneltrap+0xac>
    800042b8:	fff00713          	li	a4,-1
    800042bc:	03f71713          	slli	a4,a4,0x3f
    800042c0:	00170713          	addi	a4,a4,1
    800042c4:	fae798e3          	bne	a5,a4,80004274 <kerneltrap+0x2c>
    800042c8:	00000097          	auipc	ra,0x0
    800042cc:	e00080e7          	jalr	-512(ra) # 800040c8 <cpuid>
    800042d0:	06050663          	beqz	a0,8000433c <kerneltrap+0xf4>
    800042d4:	144027f3          	csrr	a5,sip
    800042d8:	ffd7f793          	andi	a5,a5,-3
    800042dc:	14479073          	csrw	sip,a5
    800042e0:	01813083          	ld	ra,24(sp)
    800042e4:	01013403          	ld	s0,16(sp)
    800042e8:	00813483          	ld	s1,8(sp)
    800042ec:	02010113          	addi	sp,sp,32
    800042f0:	00008067          	ret
    800042f4:	00000097          	auipc	ra,0x0
    800042f8:	3d0080e7          	jalr	976(ra) # 800046c4 <plic_claim>
    800042fc:	00a00793          	li	a5,10
    80004300:	00050493          	mv	s1,a0
    80004304:	06f50863          	beq	a0,a5,80004374 <kerneltrap+0x12c>
    80004308:	fc050ce3          	beqz	a0,800042e0 <kerneltrap+0x98>
    8000430c:	00050593          	mv	a1,a0
    80004310:	00003517          	auipc	a0,0x3
    80004314:	37050513          	addi	a0,a0,880 # 80007680 <_ZZ12printIntegermE6digits+0xe0>
    80004318:	00000097          	auipc	ra,0x0
    8000431c:	7f0080e7          	jalr	2032(ra) # 80004b08 <__printf>
    80004320:	01013403          	ld	s0,16(sp)
    80004324:	01813083          	ld	ra,24(sp)
    80004328:	00048513          	mv	a0,s1
    8000432c:	00813483          	ld	s1,8(sp)
    80004330:	02010113          	addi	sp,sp,32
    80004334:	00000317          	auipc	t1,0x0
    80004338:	3c830067          	jr	968(t1) # 800046fc <plic_complete>
    8000433c:	00005517          	auipc	a0,0x5
    80004340:	0a450513          	addi	a0,a0,164 # 800093e0 <tickslock>
    80004344:	00001097          	auipc	ra,0x1
    80004348:	498080e7          	jalr	1176(ra) # 800057dc <acquire>
    8000434c:	00004717          	auipc	a4,0x4
    80004350:	f7870713          	addi	a4,a4,-136 # 800082c4 <ticks>
    80004354:	00072783          	lw	a5,0(a4)
    80004358:	00005517          	auipc	a0,0x5
    8000435c:	08850513          	addi	a0,a0,136 # 800093e0 <tickslock>
    80004360:	0017879b          	addiw	a5,a5,1
    80004364:	00f72023          	sw	a5,0(a4)
    80004368:	00001097          	auipc	ra,0x1
    8000436c:	540080e7          	jalr	1344(ra) # 800058a8 <release>
    80004370:	f65ff06f          	j	800042d4 <kerneltrap+0x8c>
    80004374:	00001097          	auipc	ra,0x1
    80004378:	09c080e7          	jalr	156(ra) # 80005410 <uartintr>
    8000437c:	fa5ff06f          	j	80004320 <kerneltrap+0xd8>
    80004380:	00003517          	auipc	a0,0x3
    80004384:	2e050513          	addi	a0,a0,736 # 80007660 <_ZZ12printIntegermE6digits+0xc0>
    80004388:	00000097          	auipc	ra,0x0
    8000438c:	724080e7          	jalr	1828(ra) # 80004aac <panic>

0000000080004390 <clockintr>:
    80004390:	fe010113          	addi	sp,sp,-32
    80004394:	00813823          	sd	s0,16(sp)
    80004398:	00913423          	sd	s1,8(sp)
    8000439c:	00113c23          	sd	ra,24(sp)
    800043a0:	02010413          	addi	s0,sp,32
    800043a4:	00005497          	auipc	s1,0x5
    800043a8:	03c48493          	addi	s1,s1,60 # 800093e0 <tickslock>
    800043ac:	00048513          	mv	a0,s1
    800043b0:	00001097          	auipc	ra,0x1
    800043b4:	42c080e7          	jalr	1068(ra) # 800057dc <acquire>
    800043b8:	00004717          	auipc	a4,0x4
    800043bc:	f0c70713          	addi	a4,a4,-244 # 800082c4 <ticks>
    800043c0:	00072783          	lw	a5,0(a4)
    800043c4:	01013403          	ld	s0,16(sp)
    800043c8:	01813083          	ld	ra,24(sp)
    800043cc:	00048513          	mv	a0,s1
    800043d0:	0017879b          	addiw	a5,a5,1
    800043d4:	00813483          	ld	s1,8(sp)
    800043d8:	00f72023          	sw	a5,0(a4)
    800043dc:	02010113          	addi	sp,sp,32
    800043e0:	00001317          	auipc	t1,0x1
    800043e4:	4c830067          	jr	1224(t1) # 800058a8 <release>

00000000800043e8 <devintr>:
    800043e8:	142027f3          	csrr	a5,scause
    800043ec:	00000513          	li	a0,0
    800043f0:	0007c463          	bltz	a5,800043f8 <devintr+0x10>
    800043f4:	00008067          	ret
    800043f8:	fe010113          	addi	sp,sp,-32
    800043fc:	00813823          	sd	s0,16(sp)
    80004400:	00113c23          	sd	ra,24(sp)
    80004404:	00913423          	sd	s1,8(sp)
    80004408:	02010413          	addi	s0,sp,32
    8000440c:	0ff7f713          	andi	a4,a5,255
    80004410:	00900693          	li	a3,9
    80004414:	04d70c63          	beq	a4,a3,8000446c <devintr+0x84>
    80004418:	fff00713          	li	a4,-1
    8000441c:	03f71713          	slli	a4,a4,0x3f
    80004420:	00170713          	addi	a4,a4,1
    80004424:	00e78c63          	beq	a5,a4,8000443c <devintr+0x54>
    80004428:	01813083          	ld	ra,24(sp)
    8000442c:	01013403          	ld	s0,16(sp)
    80004430:	00813483          	ld	s1,8(sp)
    80004434:	02010113          	addi	sp,sp,32
    80004438:	00008067          	ret
    8000443c:	00000097          	auipc	ra,0x0
    80004440:	c8c080e7          	jalr	-884(ra) # 800040c8 <cpuid>
    80004444:	06050663          	beqz	a0,800044b0 <devintr+0xc8>
    80004448:	144027f3          	csrr	a5,sip
    8000444c:	ffd7f793          	andi	a5,a5,-3
    80004450:	14479073          	csrw	sip,a5
    80004454:	01813083          	ld	ra,24(sp)
    80004458:	01013403          	ld	s0,16(sp)
    8000445c:	00813483          	ld	s1,8(sp)
    80004460:	00200513          	li	a0,2
    80004464:	02010113          	addi	sp,sp,32
    80004468:	00008067          	ret
    8000446c:	00000097          	auipc	ra,0x0
    80004470:	258080e7          	jalr	600(ra) # 800046c4 <plic_claim>
    80004474:	00a00793          	li	a5,10
    80004478:	00050493          	mv	s1,a0
    8000447c:	06f50663          	beq	a0,a5,800044e8 <devintr+0x100>
    80004480:	00100513          	li	a0,1
    80004484:	fa0482e3          	beqz	s1,80004428 <devintr+0x40>
    80004488:	00048593          	mv	a1,s1
    8000448c:	00003517          	auipc	a0,0x3
    80004490:	1f450513          	addi	a0,a0,500 # 80007680 <_ZZ12printIntegermE6digits+0xe0>
    80004494:	00000097          	auipc	ra,0x0
    80004498:	674080e7          	jalr	1652(ra) # 80004b08 <__printf>
    8000449c:	00048513          	mv	a0,s1
    800044a0:	00000097          	auipc	ra,0x0
    800044a4:	25c080e7          	jalr	604(ra) # 800046fc <plic_complete>
    800044a8:	00100513          	li	a0,1
    800044ac:	f7dff06f          	j	80004428 <devintr+0x40>
    800044b0:	00005517          	auipc	a0,0x5
    800044b4:	f3050513          	addi	a0,a0,-208 # 800093e0 <tickslock>
    800044b8:	00001097          	auipc	ra,0x1
    800044bc:	324080e7          	jalr	804(ra) # 800057dc <acquire>
    800044c0:	00004717          	auipc	a4,0x4
    800044c4:	e0470713          	addi	a4,a4,-508 # 800082c4 <ticks>
    800044c8:	00072783          	lw	a5,0(a4)
    800044cc:	00005517          	auipc	a0,0x5
    800044d0:	f1450513          	addi	a0,a0,-236 # 800093e0 <tickslock>
    800044d4:	0017879b          	addiw	a5,a5,1
    800044d8:	00f72023          	sw	a5,0(a4)
    800044dc:	00001097          	auipc	ra,0x1
    800044e0:	3cc080e7          	jalr	972(ra) # 800058a8 <release>
    800044e4:	f65ff06f          	j	80004448 <devintr+0x60>
    800044e8:	00001097          	auipc	ra,0x1
    800044ec:	f28080e7          	jalr	-216(ra) # 80005410 <uartintr>
    800044f0:	fadff06f          	j	8000449c <devintr+0xb4>
	...

0000000080004500 <kernelvec>:
    80004500:	f0010113          	addi	sp,sp,-256
    80004504:	00113023          	sd	ra,0(sp)
    80004508:	00213423          	sd	sp,8(sp)
    8000450c:	00313823          	sd	gp,16(sp)
    80004510:	00413c23          	sd	tp,24(sp)
    80004514:	02513023          	sd	t0,32(sp)
    80004518:	02613423          	sd	t1,40(sp)
    8000451c:	02713823          	sd	t2,48(sp)
    80004520:	02813c23          	sd	s0,56(sp)
    80004524:	04913023          	sd	s1,64(sp)
    80004528:	04a13423          	sd	a0,72(sp)
    8000452c:	04b13823          	sd	a1,80(sp)
    80004530:	04c13c23          	sd	a2,88(sp)
    80004534:	06d13023          	sd	a3,96(sp)
    80004538:	06e13423          	sd	a4,104(sp)
    8000453c:	06f13823          	sd	a5,112(sp)
    80004540:	07013c23          	sd	a6,120(sp)
    80004544:	09113023          	sd	a7,128(sp)
    80004548:	09213423          	sd	s2,136(sp)
    8000454c:	09313823          	sd	s3,144(sp)
    80004550:	09413c23          	sd	s4,152(sp)
    80004554:	0b513023          	sd	s5,160(sp)
    80004558:	0b613423          	sd	s6,168(sp)
    8000455c:	0b713823          	sd	s7,176(sp)
    80004560:	0b813c23          	sd	s8,184(sp)
    80004564:	0d913023          	sd	s9,192(sp)
    80004568:	0da13423          	sd	s10,200(sp)
    8000456c:	0db13823          	sd	s11,208(sp)
    80004570:	0dc13c23          	sd	t3,216(sp)
    80004574:	0fd13023          	sd	t4,224(sp)
    80004578:	0fe13423          	sd	t5,232(sp)
    8000457c:	0ff13823          	sd	t6,240(sp)
    80004580:	cc9ff0ef          	jal	ra,80004248 <kerneltrap>
    80004584:	00013083          	ld	ra,0(sp)
    80004588:	00813103          	ld	sp,8(sp)
    8000458c:	01013183          	ld	gp,16(sp)
    80004590:	02013283          	ld	t0,32(sp)
    80004594:	02813303          	ld	t1,40(sp)
    80004598:	03013383          	ld	t2,48(sp)
    8000459c:	03813403          	ld	s0,56(sp)
    800045a0:	04013483          	ld	s1,64(sp)
    800045a4:	04813503          	ld	a0,72(sp)
    800045a8:	05013583          	ld	a1,80(sp)
    800045ac:	05813603          	ld	a2,88(sp)
    800045b0:	06013683          	ld	a3,96(sp)
    800045b4:	06813703          	ld	a4,104(sp)
    800045b8:	07013783          	ld	a5,112(sp)
    800045bc:	07813803          	ld	a6,120(sp)
    800045c0:	08013883          	ld	a7,128(sp)
    800045c4:	08813903          	ld	s2,136(sp)
    800045c8:	09013983          	ld	s3,144(sp)
    800045cc:	09813a03          	ld	s4,152(sp)
    800045d0:	0a013a83          	ld	s5,160(sp)
    800045d4:	0a813b03          	ld	s6,168(sp)
    800045d8:	0b013b83          	ld	s7,176(sp)
    800045dc:	0b813c03          	ld	s8,184(sp)
    800045e0:	0c013c83          	ld	s9,192(sp)
    800045e4:	0c813d03          	ld	s10,200(sp)
    800045e8:	0d013d83          	ld	s11,208(sp)
    800045ec:	0d813e03          	ld	t3,216(sp)
    800045f0:	0e013e83          	ld	t4,224(sp)
    800045f4:	0e813f03          	ld	t5,232(sp)
    800045f8:	0f013f83          	ld	t6,240(sp)
    800045fc:	10010113          	addi	sp,sp,256
    80004600:	10200073          	sret
    80004604:	00000013          	nop
    80004608:	00000013          	nop
    8000460c:	00000013          	nop

0000000080004610 <timervec>:
    80004610:	34051573          	csrrw	a0,mscratch,a0
    80004614:	00b53023          	sd	a1,0(a0)
    80004618:	00c53423          	sd	a2,8(a0)
    8000461c:	00d53823          	sd	a3,16(a0)
    80004620:	01853583          	ld	a1,24(a0)
    80004624:	02053603          	ld	a2,32(a0)
    80004628:	0005b683          	ld	a3,0(a1)
    8000462c:	00c686b3          	add	a3,a3,a2
    80004630:	00d5b023          	sd	a3,0(a1)
    80004634:	00200593          	li	a1,2
    80004638:	14459073          	csrw	sip,a1
    8000463c:	01053683          	ld	a3,16(a0)
    80004640:	00853603          	ld	a2,8(a0)
    80004644:	00053583          	ld	a1,0(a0)
    80004648:	34051573          	csrrw	a0,mscratch,a0
    8000464c:	30200073          	mret

0000000080004650 <plicinit>:
    80004650:	ff010113          	addi	sp,sp,-16
    80004654:	00813423          	sd	s0,8(sp)
    80004658:	01010413          	addi	s0,sp,16
    8000465c:	00813403          	ld	s0,8(sp)
    80004660:	0c0007b7          	lui	a5,0xc000
    80004664:	00100713          	li	a4,1
    80004668:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000466c:	00e7a223          	sw	a4,4(a5)
    80004670:	01010113          	addi	sp,sp,16
    80004674:	00008067          	ret

0000000080004678 <plicinithart>:
    80004678:	ff010113          	addi	sp,sp,-16
    8000467c:	00813023          	sd	s0,0(sp)
    80004680:	00113423          	sd	ra,8(sp)
    80004684:	01010413          	addi	s0,sp,16
    80004688:	00000097          	auipc	ra,0x0
    8000468c:	a40080e7          	jalr	-1472(ra) # 800040c8 <cpuid>
    80004690:	0085171b          	slliw	a4,a0,0x8
    80004694:	0c0027b7          	lui	a5,0xc002
    80004698:	00e787b3          	add	a5,a5,a4
    8000469c:	40200713          	li	a4,1026
    800046a0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800046a4:	00813083          	ld	ra,8(sp)
    800046a8:	00013403          	ld	s0,0(sp)
    800046ac:	00d5151b          	slliw	a0,a0,0xd
    800046b0:	0c2017b7          	lui	a5,0xc201
    800046b4:	00a78533          	add	a0,a5,a0
    800046b8:	00052023          	sw	zero,0(a0)
    800046bc:	01010113          	addi	sp,sp,16
    800046c0:	00008067          	ret

00000000800046c4 <plic_claim>:
    800046c4:	ff010113          	addi	sp,sp,-16
    800046c8:	00813023          	sd	s0,0(sp)
    800046cc:	00113423          	sd	ra,8(sp)
    800046d0:	01010413          	addi	s0,sp,16
    800046d4:	00000097          	auipc	ra,0x0
    800046d8:	9f4080e7          	jalr	-1548(ra) # 800040c8 <cpuid>
    800046dc:	00813083          	ld	ra,8(sp)
    800046e0:	00013403          	ld	s0,0(sp)
    800046e4:	00d5151b          	slliw	a0,a0,0xd
    800046e8:	0c2017b7          	lui	a5,0xc201
    800046ec:	00a78533          	add	a0,a5,a0
    800046f0:	00452503          	lw	a0,4(a0)
    800046f4:	01010113          	addi	sp,sp,16
    800046f8:	00008067          	ret

00000000800046fc <plic_complete>:
    800046fc:	fe010113          	addi	sp,sp,-32
    80004700:	00813823          	sd	s0,16(sp)
    80004704:	00913423          	sd	s1,8(sp)
    80004708:	00113c23          	sd	ra,24(sp)
    8000470c:	02010413          	addi	s0,sp,32
    80004710:	00050493          	mv	s1,a0
    80004714:	00000097          	auipc	ra,0x0
    80004718:	9b4080e7          	jalr	-1612(ra) # 800040c8 <cpuid>
    8000471c:	01813083          	ld	ra,24(sp)
    80004720:	01013403          	ld	s0,16(sp)
    80004724:	00d5179b          	slliw	a5,a0,0xd
    80004728:	0c201737          	lui	a4,0xc201
    8000472c:	00f707b3          	add	a5,a4,a5
    80004730:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004734:	00813483          	ld	s1,8(sp)
    80004738:	02010113          	addi	sp,sp,32
    8000473c:	00008067          	ret

0000000080004740 <consolewrite>:
    80004740:	fb010113          	addi	sp,sp,-80
    80004744:	04813023          	sd	s0,64(sp)
    80004748:	04113423          	sd	ra,72(sp)
    8000474c:	02913c23          	sd	s1,56(sp)
    80004750:	03213823          	sd	s2,48(sp)
    80004754:	03313423          	sd	s3,40(sp)
    80004758:	03413023          	sd	s4,32(sp)
    8000475c:	01513c23          	sd	s5,24(sp)
    80004760:	05010413          	addi	s0,sp,80
    80004764:	06c05c63          	blez	a2,800047dc <consolewrite+0x9c>
    80004768:	00060993          	mv	s3,a2
    8000476c:	00050a13          	mv	s4,a0
    80004770:	00058493          	mv	s1,a1
    80004774:	00000913          	li	s2,0
    80004778:	fff00a93          	li	s5,-1
    8000477c:	01c0006f          	j	80004798 <consolewrite+0x58>
    80004780:	fbf44503          	lbu	a0,-65(s0)
    80004784:	0019091b          	addiw	s2,s2,1
    80004788:	00148493          	addi	s1,s1,1
    8000478c:	00001097          	auipc	ra,0x1
    80004790:	a9c080e7          	jalr	-1380(ra) # 80005228 <uartputc>
    80004794:	03298063          	beq	s3,s2,800047b4 <consolewrite+0x74>
    80004798:	00048613          	mv	a2,s1
    8000479c:	00100693          	li	a3,1
    800047a0:	000a0593          	mv	a1,s4
    800047a4:	fbf40513          	addi	a0,s0,-65
    800047a8:	00000097          	auipc	ra,0x0
    800047ac:	9d8080e7          	jalr	-1576(ra) # 80004180 <either_copyin>
    800047b0:	fd5518e3          	bne	a0,s5,80004780 <consolewrite+0x40>
    800047b4:	04813083          	ld	ra,72(sp)
    800047b8:	04013403          	ld	s0,64(sp)
    800047bc:	03813483          	ld	s1,56(sp)
    800047c0:	02813983          	ld	s3,40(sp)
    800047c4:	02013a03          	ld	s4,32(sp)
    800047c8:	01813a83          	ld	s5,24(sp)
    800047cc:	00090513          	mv	a0,s2
    800047d0:	03013903          	ld	s2,48(sp)
    800047d4:	05010113          	addi	sp,sp,80
    800047d8:	00008067          	ret
    800047dc:	00000913          	li	s2,0
    800047e0:	fd5ff06f          	j	800047b4 <consolewrite+0x74>

00000000800047e4 <consoleread>:
    800047e4:	f9010113          	addi	sp,sp,-112
    800047e8:	06813023          	sd	s0,96(sp)
    800047ec:	04913c23          	sd	s1,88(sp)
    800047f0:	05213823          	sd	s2,80(sp)
    800047f4:	05313423          	sd	s3,72(sp)
    800047f8:	05413023          	sd	s4,64(sp)
    800047fc:	03513c23          	sd	s5,56(sp)
    80004800:	03613823          	sd	s6,48(sp)
    80004804:	03713423          	sd	s7,40(sp)
    80004808:	03813023          	sd	s8,32(sp)
    8000480c:	06113423          	sd	ra,104(sp)
    80004810:	01913c23          	sd	s9,24(sp)
    80004814:	07010413          	addi	s0,sp,112
    80004818:	00060b93          	mv	s7,a2
    8000481c:	00050913          	mv	s2,a0
    80004820:	00058c13          	mv	s8,a1
    80004824:	00060b1b          	sext.w	s6,a2
    80004828:	00005497          	auipc	s1,0x5
    8000482c:	be048493          	addi	s1,s1,-1056 # 80009408 <cons>
    80004830:	00400993          	li	s3,4
    80004834:	fff00a13          	li	s4,-1
    80004838:	00a00a93          	li	s5,10
    8000483c:	05705e63          	blez	s7,80004898 <consoleread+0xb4>
    80004840:	09c4a703          	lw	a4,156(s1)
    80004844:	0984a783          	lw	a5,152(s1)
    80004848:	0007071b          	sext.w	a4,a4
    8000484c:	08e78463          	beq	a5,a4,800048d4 <consoleread+0xf0>
    80004850:	07f7f713          	andi	a4,a5,127
    80004854:	00e48733          	add	a4,s1,a4
    80004858:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000485c:	0017869b          	addiw	a3,a5,1
    80004860:	08d4ac23          	sw	a3,152(s1)
    80004864:	00070c9b          	sext.w	s9,a4
    80004868:	0b370663          	beq	a4,s3,80004914 <consoleread+0x130>
    8000486c:	00100693          	li	a3,1
    80004870:	f9f40613          	addi	a2,s0,-97
    80004874:	000c0593          	mv	a1,s8
    80004878:	00090513          	mv	a0,s2
    8000487c:	f8e40fa3          	sb	a4,-97(s0)
    80004880:	00000097          	auipc	ra,0x0
    80004884:	8b4080e7          	jalr	-1868(ra) # 80004134 <either_copyout>
    80004888:	01450863          	beq	a0,s4,80004898 <consoleread+0xb4>
    8000488c:	001c0c13          	addi	s8,s8,1
    80004890:	fffb8b9b          	addiw	s7,s7,-1
    80004894:	fb5c94e3          	bne	s9,s5,8000483c <consoleread+0x58>
    80004898:	000b851b          	sext.w	a0,s7
    8000489c:	06813083          	ld	ra,104(sp)
    800048a0:	06013403          	ld	s0,96(sp)
    800048a4:	05813483          	ld	s1,88(sp)
    800048a8:	05013903          	ld	s2,80(sp)
    800048ac:	04813983          	ld	s3,72(sp)
    800048b0:	04013a03          	ld	s4,64(sp)
    800048b4:	03813a83          	ld	s5,56(sp)
    800048b8:	02813b83          	ld	s7,40(sp)
    800048bc:	02013c03          	ld	s8,32(sp)
    800048c0:	01813c83          	ld	s9,24(sp)
    800048c4:	40ab053b          	subw	a0,s6,a0
    800048c8:	03013b03          	ld	s6,48(sp)
    800048cc:	07010113          	addi	sp,sp,112
    800048d0:	00008067          	ret
    800048d4:	00001097          	auipc	ra,0x1
    800048d8:	1d8080e7          	jalr	472(ra) # 80005aac <push_on>
    800048dc:	0984a703          	lw	a4,152(s1)
    800048e0:	09c4a783          	lw	a5,156(s1)
    800048e4:	0007879b          	sext.w	a5,a5
    800048e8:	fef70ce3          	beq	a4,a5,800048e0 <consoleread+0xfc>
    800048ec:	00001097          	auipc	ra,0x1
    800048f0:	234080e7          	jalr	564(ra) # 80005b20 <pop_on>
    800048f4:	0984a783          	lw	a5,152(s1)
    800048f8:	07f7f713          	andi	a4,a5,127
    800048fc:	00e48733          	add	a4,s1,a4
    80004900:	01874703          	lbu	a4,24(a4)
    80004904:	0017869b          	addiw	a3,a5,1
    80004908:	08d4ac23          	sw	a3,152(s1)
    8000490c:	00070c9b          	sext.w	s9,a4
    80004910:	f5371ee3          	bne	a4,s3,8000486c <consoleread+0x88>
    80004914:	000b851b          	sext.w	a0,s7
    80004918:	f96bf2e3          	bgeu	s7,s6,8000489c <consoleread+0xb8>
    8000491c:	08f4ac23          	sw	a5,152(s1)
    80004920:	f7dff06f          	j	8000489c <consoleread+0xb8>

0000000080004924 <consputc>:
    80004924:	10000793          	li	a5,256
    80004928:	00f50663          	beq	a0,a5,80004934 <consputc+0x10>
    8000492c:	00001317          	auipc	t1,0x1
    80004930:	9f430067          	jr	-1548(t1) # 80005320 <uartputc_sync>
    80004934:	ff010113          	addi	sp,sp,-16
    80004938:	00113423          	sd	ra,8(sp)
    8000493c:	00813023          	sd	s0,0(sp)
    80004940:	01010413          	addi	s0,sp,16
    80004944:	00800513          	li	a0,8
    80004948:	00001097          	auipc	ra,0x1
    8000494c:	9d8080e7          	jalr	-1576(ra) # 80005320 <uartputc_sync>
    80004950:	02000513          	li	a0,32
    80004954:	00001097          	auipc	ra,0x1
    80004958:	9cc080e7          	jalr	-1588(ra) # 80005320 <uartputc_sync>
    8000495c:	00013403          	ld	s0,0(sp)
    80004960:	00813083          	ld	ra,8(sp)
    80004964:	00800513          	li	a0,8
    80004968:	01010113          	addi	sp,sp,16
    8000496c:	00001317          	auipc	t1,0x1
    80004970:	9b430067          	jr	-1612(t1) # 80005320 <uartputc_sync>

0000000080004974 <consoleintr>:
    80004974:	fe010113          	addi	sp,sp,-32
    80004978:	00813823          	sd	s0,16(sp)
    8000497c:	00913423          	sd	s1,8(sp)
    80004980:	01213023          	sd	s2,0(sp)
    80004984:	00113c23          	sd	ra,24(sp)
    80004988:	02010413          	addi	s0,sp,32
    8000498c:	00005917          	auipc	s2,0x5
    80004990:	a7c90913          	addi	s2,s2,-1412 # 80009408 <cons>
    80004994:	00050493          	mv	s1,a0
    80004998:	00090513          	mv	a0,s2
    8000499c:	00001097          	auipc	ra,0x1
    800049a0:	e40080e7          	jalr	-448(ra) # 800057dc <acquire>
    800049a4:	02048c63          	beqz	s1,800049dc <consoleintr+0x68>
    800049a8:	0a092783          	lw	a5,160(s2)
    800049ac:	09892703          	lw	a4,152(s2)
    800049b0:	07f00693          	li	a3,127
    800049b4:	40e7873b          	subw	a4,a5,a4
    800049b8:	02e6e263          	bltu	a3,a4,800049dc <consoleintr+0x68>
    800049bc:	00d00713          	li	a4,13
    800049c0:	04e48063          	beq	s1,a4,80004a00 <consoleintr+0x8c>
    800049c4:	07f7f713          	andi	a4,a5,127
    800049c8:	00e90733          	add	a4,s2,a4
    800049cc:	0017879b          	addiw	a5,a5,1
    800049d0:	0af92023          	sw	a5,160(s2)
    800049d4:	00970c23          	sb	s1,24(a4)
    800049d8:	08f92e23          	sw	a5,156(s2)
    800049dc:	01013403          	ld	s0,16(sp)
    800049e0:	01813083          	ld	ra,24(sp)
    800049e4:	00813483          	ld	s1,8(sp)
    800049e8:	00013903          	ld	s2,0(sp)
    800049ec:	00005517          	auipc	a0,0x5
    800049f0:	a1c50513          	addi	a0,a0,-1508 # 80009408 <cons>
    800049f4:	02010113          	addi	sp,sp,32
    800049f8:	00001317          	auipc	t1,0x1
    800049fc:	eb030067          	jr	-336(t1) # 800058a8 <release>
    80004a00:	00a00493          	li	s1,10
    80004a04:	fc1ff06f          	j	800049c4 <consoleintr+0x50>

0000000080004a08 <consoleinit>:
    80004a08:	fe010113          	addi	sp,sp,-32
    80004a0c:	00113c23          	sd	ra,24(sp)
    80004a10:	00813823          	sd	s0,16(sp)
    80004a14:	00913423          	sd	s1,8(sp)
    80004a18:	02010413          	addi	s0,sp,32
    80004a1c:	00005497          	auipc	s1,0x5
    80004a20:	9ec48493          	addi	s1,s1,-1556 # 80009408 <cons>
    80004a24:	00048513          	mv	a0,s1
    80004a28:	00003597          	auipc	a1,0x3
    80004a2c:	cb058593          	addi	a1,a1,-848 # 800076d8 <_ZZ12printIntegermE6digits+0x138>
    80004a30:	00001097          	auipc	ra,0x1
    80004a34:	d88080e7          	jalr	-632(ra) # 800057b8 <initlock>
    80004a38:	00000097          	auipc	ra,0x0
    80004a3c:	7ac080e7          	jalr	1964(ra) # 800051e4 <uartinit>
    80004a40:	01813083          	ld	ra,24(sp)
    80004a44:	01013403          	ld	s0,16(sp)
    80004a48:	00000797          	auipc	a5,0x0
    80004a4c:	d9c78793          	addi	a5,a5,-612 # 800047e4 <consoleread>
    80004a50:	0af4bc23          	sd	a5,184(s1)
    80004a54:	00000797          	auipc	a5,0x0
    80004a58:	cec78793          	addi	a5,a5,-788 # 80004740 <consolewrite>
    80004a5c:	0cf4b023          	sd	a5,192(s1)
    80004a60:	00813483          	ld	s1,8(sp)
    80004a64:	02010113          	addi	sp,sp,32
    80004a68:	00008067          	ret

0000000080004a6c <console_read>:
    80004a6c:	ff010113          	addi	sp,sp,-16
    80004a70:	00813423          	sd	s0,8(sp)
    80004a74:	01010413          	addi	s0,sp,16
    80004a78:	00813403          	ld	s0,8(sp)
    80004a7c:	00005317          	auipc	t1,0x5
    80004a80:	a4433303          	ld	t1,-1468(t1) # 800094c0 <devsw+0x10>
    80004a84:	01010113          	addi	sp,sp,16
    80004a88:	00030067          	jr	t1

0000000080004a8c <console_write>:
    80004a8c:	ff010113          	addi	sp,sp,-16
    80004a90:	00813423          	sd	s0,8(sp)
    80004a94:	01010413          	addi	s0,sp,16
    80004a98:	00813403          	ld	s0,8(sp)
    80004a9c:	00005317          	auipc	t1,0x5
    80004aa0:	a2c33303          	ld	t1,-1492(t1) # 800094c8 <devsw+0x18>
    80004aa4:	01010113          	addi	sp,sp,16
    80004aa8:	00030067          	jr	t1

0000000080004aac <panic>:
    80004aac:	fe010113          	addi	sp,sp,-32
    80004ab0:	00113c23          	sd	ra,24(sp)
    80004ab4:	00813823          	sd	s0,16(sp)
    80004ab8:	00913423          	sd	s1,8(sp)
    80004abc:	02010413          	addi	s0,sp,32
    80004ac0:	00050493          	mv	s1,a0
    80004ac4:	00003517          	auipc	a0,0x3
    80004ac8:	c1c50513          	addi	a0,a0,-996 # 800076e0 <_ZZ12printIntegermE6digits+0x140>
    80004acc:	00005797          	auipc	a5,0x5
    80004ad0:	a807ae23          	sw	zero,-1380(a5) # 80009568 <pr+0x18>
    80004ad4:	00000097          	auipc	ra,0x0
    80004ad8:	034080e7          	jalr	52(ra) # 80004b08 <__printf>
    80004adc:	00048513          	mv	a0,s1
    80004ae0:	00000097          	auipc	ra,0x0
    80004ae4:	028080e7          	jalr	40(ra) # 80004b08 <__printf>
    80004ae8:	00002517          	auipc	a0,0x2
    80004aec:	5a050513          	addi	a0,a0,1440 # 80007088 <CONSOLE_STATUS+0x78>
    80004af0:	00000097          	auipc	ra,0x0
    80004af4:	018080e7          	jalr	24(ra) # 80004b08 <__printf>
    80004af8:	00100793          	li	a5,1
    80004afc:	00003717          	auipc	a4,0x3
    80004b00:	7cf72623          	sw	a5,1996(a4) # 800082c8 <panicked>
    80004b04:	0000006f          	j	80004b04 <panic+0x58>

0000000080004b08 <__printf>:
    80004b08:	f3010113          	addi	sp,sp,-208
    80004b0c:	08813023          	sd	s0,128(sp)
    80004b10:	07313423          	sd	s3,104(sp)
    80004b14:	09010413          	addi	s0,sp,144
    80004b18:	05813023          	sd	s8,64(sp)
    80004b1c:	08113423          	sd	ra,136(sp)
    80004b20:	06913c23          	sd	s1,120(sp)
    80004b24:	07213823          	sd	s2,112(sp)
    80004b28:	07413023          	sd	s4,96(sp)
    80004b2c:	05513c23          	sd	s5,88(sp)
    80004b30:	05613823          	sd	s6,80(sp)
    80004b34:	05713423          	sd	s7,72(sp)
    80004b38:	03913c23          	sd	s9,56(sp)
    80004b3c:	03a13823          	sd	s10,48(sp)
    80004b40:	03b13423          	sd	s11,40(sp)
    80004b44:	00005317          	auipc	t1,0x5
    80004b48:	a0c30313          	addi	t1,t1,-1524 # 80009550 <pr>
    80004b4c:	01832c03          	lw	s8,24(t1)
    80004b50:	00b43423          	sd	a1,8(s0)
    80004b54:	00c43823          	sd	a2,16(s0)
    80004b58:	00d43c23          	sd	a3,24(s0)
    80004b5c:	02e43023          	sd	a4,32(s0)
    80004b60:	02f43423          	sd	a5,40(s0)
    80004b64:	03043823          	sd	a6,48(s0)
    80004b68:	03143c23          	sd	a7,56(s0)
    80004b6c:	00050993          	mv	s3,a0
    80004b70:	4a0c1663          	bnez	s8,8000501c <__printf+0x514>
    80004b74:	60098c63          	beqz	s3,8000518c <__printf+0x684>
    80004b78:	0009c503          	lbu	a0,0(s3)
    80004b7c:	00840793          	addi	a5,s0,8
    80004b80:	f6f43c23          	sd	a5,-136(s0)
    80004b84:	00000493          	li	s1,0
    80004b88:	22050063          	beqz	a0,80004da8 <__printf+0x2a0>
    80004b8c:	00002a37          	lui	s4,0x2
    80004b90:	00018ab7          	lui	s5,0x18
    80004b94:	000f4b37          	lui	s6,0xf4
    80004b98:	00989bb7          	lui	s7,0x989
    80004b9c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004ba0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004ba4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004ba8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80004bac:	00148c9b          	addiw	s9,s1,1
    80004bb0:	02500793          	li	a5,37
    80004bb4:	01998933          	add	s2,s3,s9
    80004bb8:	38f51263          	bne	a0,a5,80004f3c <__printf+0x434>
    80004bbc:	00094783          	lbu	a5,0(s2)
    80004bc0:	00078c9b          	sext.w	s9,a5
    80004bc4:	1e078263          	beqz	a5,80004da8 <__printf+0x2a0>
    80004bc8:	0024849b          	addiw	s1,s1,2
    80004bcc:	07000713          	li	a4,112
    80004bd0:	00998933          	add	s2,s3,s1
    80004bd4:	38e78a63          	beq	a5,a4,80004f68 <__printf+0x460>
    80004bd8:	20f76863          	bltu	a4,a5,80004de8 <__printf+0x2e0>
    80004bdc:	42a78863          	beq	a5,a0,8000500c <__printf+0x504>
    80004be0:	06400713          	li	a4,100
    80004be4:	40e79663          	bne	a5,a4,80004ff0 <__printf+0x4e8>
    80004be8:	f7843783          	ld	a5,-136(s0)
    80004bec:	0007a603          	lw	a2,0(a5)
    80004bf0:	00878793          	addi	a5,a5,8
    80004bf4:	f6f43c23          	sd	a5,-136(s0)
    80004bf8:	42064a63          	bltz	a2,8000502c <__printf+0x524>
    80004bfc:	00a00713          	li	a4,10
    80004c00:	02e677bb          	remuw	a5,a2,a4
    80004c04:	00003d97          	auipc	s11,0x3
    80004c08:	b04d8d93          	addi	s11,s11,-1276 # 80007708 <digits>
    80004c0c:	00900593          	li	a1,9
    80004c10:	0006051b          	sext.w	a0,a2
    80004c14:	00000c93          	li	s9,0
    80004c18:	02079793          	slli	a5,a5,0x20
    80004c1c:	0207d793          	srli	a5,a5,0x20
    80004c20:	00fd87b3          	add	a5,s11,a5
    80004c24:	0007c783          	lbu	a5,0(a5)
    80004c28:	02e656bb          	divuw	a3,a2,a4
    80004c2c:	f8f40023          	sb	a5,-128(s0)
    80004c30:	14c5d863          	bge	a1,a2,80004d80 <__printf+0x278>
    80004c34:	06300593          	li	a1,99
    80004c38:	00100c93          	li	s9,1
    80004c3c:	02e6f7bb          	remuw	a5,a3,a4
    80004c40:	02079793          	slli	a5,a5,0x20
    80004c44:	0207d793          	srli	a5,a5,0x20
    80004c48:	00fd87b3          	add	a5,s11,a5
    80004c4c:	0007c783          	lbu	a5,0(a5)
    80004c50:	02e6d73b          	divuw	a4,a3,a4
    80004c54:	f8f400a3          	sb	a5,-127(s0)
    80004c58:	12a5f463          	bgeu	a1,a0,80004d80 <__printf+0x278>
    80004c5c:	00a00693          	li	a3,10
    80004c60:	00900593          	li	a1,9
    80004c64:	02d777bb          	remuw	a5,a4,a3
    80004c68:	02079793          	slli	a5,a5,0x20
    80004c6c:	0207d793          	srli	a5,a5,0x20
    80004c70:	00fd87b3          	add	a5,s11,a5
    80004c74:	0007c503          	lbu	a0,0(a5)
    80004c78:	02d757bb          	divuw	a5,a4,a3
    80004c7c:	f8a40123          	sb	a0,-126(s0)
    80004c80:	48e5f263          	bgeu	a1,a4,80005104 <__printf+0x5fc>
    80004c84:	06300513          	li	a0,99
    80004c88:	02d7f5bb          	remuw	a1,a5,a3
    80004c8c:	02059593          	slli	a1,a1,0x20
    80004c90:	0205d593          	srli	a1,a1,0x20
    80004c94:	00bd85b3          	add	a1,s11,a1
    80004c98:	0005c583          	lbu	a1,0(a1)
    80004c9c:	02d7d7bb          	divuw	a5,a5,a3
    80004ca0:	f8b401a3          	sb	a1,-125(s0)
    80004ca4:	48e57263          	bgeu	a0,a4,80005128 <__printf+0x620>
    80004ca8:	3e700513          	li	a0,999
    80004cac:	02d7f5bb          	remuw	a1,a5,a3
    80004cb0:	02059593          	slli	a1,a1,0x20
    80004cb4:	0205d593          	srli	a1,a1,0x20
    80004cb8:	00bd85b3          	add	a1,s11,a1
    80004cbc:	0005c583          	lbu	a1,0(a1)
    80004cc0:	02d7d7bb          	divuw	a5,a5,a3
    80004cc4:	f8b40223          	sb	a1,-124(s0)
    80004cc8:	46e57663          	bgeu	a0,a4,80005134 <__printf+0x62c>
    80004ccc:	02d7f5bb          	remuw	a1,a5,a3
    80004cd0:	02059593          	slli	a1,a1,0x20
    80004cd4:	0205d593          	srli	a1,a1,0x20
    80004cd8:	00bd85b3          	add	a1,s11,a1
    80004cdc:	0005c583          	lbu	a1,0(a1)
    80004ce0:	02d7d7bb          	divuw	a5,a5,a3
    80004ce4:	f8b402a3          	sb	a1,-123(s0)
    80004ce8:	46ea7863          	bgeu	s4,a4,80005158 <__printf+0x650>
    80004cec:	02d7f5bb          	remuw	a1,a5,a3
    80004cf0:	02059593          	slli	a1,a1,0x20
    80004cf4:	0205d593          	srli	a1,a1,0x20
    80004cf8:	00bd85b3          	add	a1,s11,a1
    80004cfc:	0005c583          	lbu	a1,0(a1)
    80004d00:	02d7d7bb          	divuw	a5,a5,a3
    80004d04:	f8b40323          	sb	a1,-122(s0)
    80004d08:	3eeaf863          	bgeu	s5,a4,800050f8 <__printf+0x5f0>
    80004d0c:	02d7f5bb          	remuw	a1,a5,a3
    80004d10:	02059593          	slli	a1,a1,0x20
    80004d14:	0205d593          	srli	a1,a1,0x20
    80004d18:	00bd85b3          	add	a1,s11,a1
    80004d1c:	0005c583          	lbu	a1,0(a1)
    80004d20:	02d7d7bb          	divuw	a5,a5,a3
    80004d24:	f8b403a3          	sb	a1,-121(s0)
    80004d28:	42eb7e63          	bgeu	s6,a4,80005164 <__printf+0x65c>
    80004d2c:	02d7f5bb          	remuw	a1,a5,a3
    80004d30:	02059593          	slli	a1,a1,0x20
    80004d34:	0205d593          	srli	a1,a1,0x20
    80004d38:	00bd85b3          	add	a1,s11,a1
    80004d3c:	0005c583          	lbu	a1,0(a1)
    80004d40:	02d7d7bb          	divuw	a5,a5,a3
    80004d44:	f8b40423          	sb	a1,-120(s0)
    80004d48:	42ebfc63          	bgeu	s7,a4,80005180 <__printf+0x678>
    80004d4c:	02079793          	slli	a5,a5,0x20
    80004d50:	0207d793          	srli	a5,a5,0x20
    80004d54:	00fd8db3          	add	s11,s11,a5
    80004d58:	000dc703          	lbu	a4,0(s11)
    80004d5c:	00a00793          	li	a5,10
    80004d60:	00900c93          	li	s9,9
    80004d64:	f8e404a3          	sb	a4,-119(s0)
    80004d68:	00065c63          	bgez	a2,80004d80 <__printf+0x278>
    80004d6c:	f9040713          	addi	a4,s0,-112
    80004d70:	00f70733          	add	a4,a4,a5
    80004d74:	02d00693          	li	a3,45
    80004d78:	fed70823          	sb	a3,-16(a4)
    80004d7c:	00078c93          	mv	s9,a5
    80004d80:	f8040793          	addi	a5,s0,-128
    80004d84:	01978cb3          	add	s9,a5,s9
    80004d88:	f7f40d13          	addi	s10,s0,-129
    80004d8c:	000cc503          	lbu	a0,0(s9)
    80004d90:	fffc8c93          	addi	s9,s9,-1
    80004d94:	00000097          	auipc	ra,0x0
    80004d98:	b90080e7          	jalr	-1136(ra) # 80004924 <consputc>
    80004d9c:	ffac98e3          	bne	s9,s10,80004d8c <__printf+0x284>
    80004da0:	00094503          	lbu	a0,0(s2)
    80004da4:	e00514e3          	bnez	a0,80004bac <__printf+0xa4>
    80004da8:	1a0c1663          	bnez	s8,80004f54 <__printf+0x44c>
    80004dac:	08813083          	ld	ra,136(sp)
    80004db0:	08013403          	ld	s0,128(sp)
    80004db4:	07813483          	ld	s1,120(sp)
    80004db8:	07013903          	ld	s2,112(sp)
    80004dbc:	06813983          	ld	s3,104(sp)
    80004dc0:	06013a03          	ld	s4,96(sp)
    80004dc4:	05813a83          	ld	s5,88(sp)
    80004dc8:	05013b03          	ld	s6,80(sp)
    80004dcc:	04813b83          	ld	s7,72(sp)
    80004dd0:	04013c03          	ld	s8,64(sp)
    80004dd4:	03813c83          	ld	s9,56(sp)
    80004dd8:	03013d03          	ld	s10,48(sp)
    80004ddc:	02813d83          	ld	s11,40(sp)
    80004de0:	0d010113          	addi	sp,sp,208
    80004de4:	00008067          	ret
    80004de8:	07300713          	li	a4,115
    80004dec:	1ce78a63          	beq	a5,a4,80004fc0 <__printf+0x4b8>
    80004df0:	07800713          	li	a4,120
    80004df4:	1ee79e63          	bne	a5,a4,80004ff0 <__printf+0x4e8>
    80004df8:	f7843783          	ld	a5,-136(s0)
    80004dfc:	0007a703          	lw	a4,0(a5)
    80004e00:	00878793          	addi	a5,a5,8
    80004e04:	f6f43c23          	sd	a5,-136(s0)
    80004e08:	28074263          	bltz	a4,8000508c <__printf+0x584>
    80004e0c:	00003d97          	auipc	s11,0x3
    80004e10:	8fcd8d93          	addi	s11,s11,-1796 # 80007708 <digits>
    80004e14:	00f77793          	andi	a5,a4,15
    80004e18:	00fd87b3          	add	a5,s11,a5
    80004e1c:	0007c683          	lbu	a3,0(a5)
    80004e20:	00f00613          	li	a2,15
    80004e24:	0007079b          	sext.w	a5,a4
    80004e28:	f8d40023          	sb	a3,-128(s0)
    80004e2c:	0047559b          	srliw	a1,a4,0x4
    80004e30:	0047569b          	srliw	a3,a4,0x4
    80004e34:	00000c93          	li	s9,0
    80004e38:	0ee65063          	bge	a2,a4,80004f18 <__printf+0x410>
    80004e3c:	00f6f693          	andi	a3,a3,15
    80004e40:	00dd86b3          	add	a3,s11,a3
    80004e44:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004e48:	0087d79b          	srliw	a5,a5,0x8
    80004e4c:	00100c93          	li	s9,1
    80004e50:	f8d400a3          	sb	a3,-127(s0)
    80004e54:	0cb67263          	bgeu	a2,a1,80004f18 <__printf+0x410>
    80004e58:	00f7f693          	andi	a3,a5,15
    80004e5c:	00dd86b3          	add	a3,s11,a3
    80004e60:	0006c583          	lbu	a1,0(a3)
    80004e64:	00f00613          	li	a2,15
    80004e68:	0047d69b          	srliw	a3,a5,0x4
    80004e6c:	f8b40123          	sb	a1,-126(s0)
    80004e70:	0047d593          	srli	a1,a5,0x4
    80004e74:	28f67e63          	bgeu	a2,a5,80005110 <__printf+0x608>
    80004e78:	00f6f693          	andi	a3,a3,15
    80004e7c:	00dd86b3          	add	a3,s11,a3
    80004e80:	0006c503          	lbu	a0,0(a3)
    80004e84:	0087d813          	srli	a6,a5,0x8
    80004e88:	0087d69b          	srliw	a3,a5,0x8
    80004e8c:	f8a401a3          	sb	a0,-125(s0)
    80004e90:	28b67663          	bgeu	a2,a1,8000511c <__printf+0x614>
    80004e94:	00f6f693          	andi	a3,a3,15
    80004e98:	00dd86b3          	add	a3,s11,a3
    80004e9c:	0006c583          	lbu	a1,0(a3)
    80004ea0:	00c7d513          	srli	a0,a5,0xc
    80004ea4:	00c7d69b          	srliw	a3,a5,0xc
    80004ea8:	f8b40223          	sb	a1,-124(s0)
    80004eac:	29067a63          	bgeu	a2,a6,80005140 <__printf+0x638>
    80004eb0:	00f6f693          	andi	a3,a3,15
    80004eb4:	00dd86b3          	add	a3,s11,a3
    80004eb8:	0006c583          	lbu	a1,0(a3)
    80004ebc:	0107d813          	srli	a6,a5,0x10
    80004ec0:	0107d69b          	srliw	a3,a5,0x10
    80004ec4:	f8b402a3          	sb	a1,-123(s0)
    80004ec8:	28a67263          	bgeu	a2,a0,8000514c <__printf+0x644>
    80004ecc:	00f6f693          	andi	a3,a3,15
    80004ed0:	00dd86b3          	add	a3,s11,a3
    80004ed4:	0006c683          	lbu	a3,0(a3)
    80004ed8:	0147d79b          	srliw	a5,a5,0x14
    80004edc:	f8d40323          	sb	a3,-122(s0)
    80004ee0:	21067663          	bgeu	a2,a6,800050ec <__printf+0x5e4>
    80004ee4:	02079793          	slli	a5,a5,0x20
    80004ee8:	0207d793          	srli	a5,a5,0x20
    80004eec:	00fd8db3          	add	s11,s11,a5
    80004ef0:	000dc683          	lbu	a3,0(s11)
    80004ef4:	00800793          	li	a5,8
    80004ef8:	00700c93          	li	s9,7
    80004efc:	f8d403a3          	sb	a3,-121(s0)
    80004f00:	00075c63          	bgez	a4,80004f18 <__printf+0x410>
    80004f04:	f9040713          	addi	a4,s0,-112
    80004f08:	00f70733          	add	a4,a4,a5
    80004f0c:	02d00693          	li	a3,45
    80004f10:	fed70823          	sb	a3,-16(a4)
    80004f14:	00078c93          	mv	s9,a5
    80004f18:	f8040793          	addi	a5,s0,-128
    80004f1c:	01978cb3          	add	s9,a5,s9
    80004f20:	f7f40d13          	addi	s10,s0,-129
    80004f24:	000cc503          	lbu	a0,0(s9)
    80004f28:	fffc8c93          	addi	s9,s9,-1
    80004f2c:	00000097          	auipc	ra,0x0
    80004f30:	9f8080e7          	jalr	-1544(ra) # 80004924 <consputc>
    80004f34:	ff9d18e3          	bne	s10,s9,80004f24 <__printf+0x41c>
    80004f38:	0100006f          	j	80004f48 <__printf+0x440>
    80004f3c:	00000097          	auipc	ra,0x0
    80004f40:	9e8080e7          	jalr	-1560(ra) # 80004924 <consputc>
    80004f44:	000c8493          	mv	s1,s9
    80004f48:	00094503          	lbu	a0,0(s2)
    80004f4c:	c60510e3          	bnez	a0,80004bac <__printf+0xa4>
    80004f50:	e40c0ee3          	beqz	s8,80004dac <__printf+0x2a4>
    80004f54:	00004517          	auipc	a0,0x4
    80004f58:	5fc50513          	addi	a0,a0,1532 # 80009550 <pr>
    80004f5c:	00001097          	auipc	ra,0x1
    80004f60:	94c080e7          	jalr	-1716(ra) # 800058a8 <release>
    80004f64:	e49ff06f          	j	80004dac <__printf+0x2a4>
    80004f68:	f7843783          	ld	a5,-136(s0)
    80004f6c:	03000513          	li	a0,48
    80004f70:	01000d13          	li	s10,16
    80004f74:	00878713          	addi	a4,a5,8
    80004f78:	0007bc83          	ld	s9,0(a5)
    80004f7c:	f6e43c23          	sd	a4,-136(s0)
    80004f80:	00000097          	auipc	ra,0x0
    80004f84:	9a4080e7          	jalr	-1628(ra) # 80004924 <consputc>
    80004f88:	07800513          	li	a0,120
    80004f8c:	00000097          	auipc	ra,0x0
    80004f90:	998080e7          	jalr	-1640(ra) # 80004924 <consputc>
    80004f94:	00002d97          	auipc	s11,0x2
    80004f98:	774d8d93          	addi	s11,s11,1908 # 80007708 <digits>
    80004f9c:	03ccd793          	srli	a5,s9,0x3c
    80004fa0:	00fd87b3          	add	a5,s11,a5
    80004fa4:	0007c503          	lbu	a0,0(a5)
    80004fa8:	fffd0d1b          	addiw	s10,s10,-1
    80004fac:	004c9c93          	slli	s9,s9,0x4
    80004fb0:	00000097          	auipc	ra,0x0
    80004fb4:	974080e7          	jalr	-1676(ra) # 80004924 <consputc>
    80004fb8:	fe0d12e3          	bnez	s10,80004f9c <__printf+0x494>
    80004fbc:	f8dff06f          	j	80004f48 <__printf+0x440>
    80004fc0:	f7843783          	ld	a5,-136(s0)
    80004fc4:	0007bc83          	ld	s9,0(a5)
    80004fc8:	00878793          	addi	a5,a5,8
    80004fcc:	f6f43c23          	sd	a5,-136(s0)
    80004fd0:	000c9a63          	bnez	s9,80004fe4 <__printf+0x4dc>
    80004fd4:	1080006f          	j	800050dc <__printf+0x5d4>
    80004fd8:	001c8c93          	addi	s9,s9,1
    80004fdc:	00000097          	auipc	ra,0x0
    80004fe0:	948080e7          	jalr	-1720(ra) # 80004924 <consputc>
    80004fe4:	000cc503          	lbu	a0,0(s9)
    80004fe8:	fe0518e3          	bnez	a0,80004fd8 <__printf+0x4d0>
    80004fec:	f5dff06f          	j	80004f48 <__printf+0x440>
    80004ff0:	02500513          	li	a0,37
    80004ff4:	00000097          	auipc	ra,0x0
    80004ff8:	930080e7          	jalr	-1744(ra) # 80004924 <consputc>
    80004ffc:	000c8513          	mv	a0,s9
    80005000:	00000097          	auipc	ra,0x0
    80005004:	924080e7          	jalr	-1756(ra) # 80004924 <consputc>
    80005008:	f41ff06f          	j	80004f48 <__printf+0x440>
    8000500c:	02500513          	li	a0,37
    80005010:	00000097          	auipc	ra,0x0
    80005014:	914080e7          	jalr	-1772(ra) # 80004924 <consputc>
    80005018:	f31ff06f          	j	80004f48 <__printf+0x440>
    8000501c:	00030513          	mv	a0,t1
    80005020:	00000097          	auipc	ra,0x0
    80005024:	7bc080e7          	jalr	1980(ra) # 800057dc <acquire>
    80005028:	b4dff06f          	j	80004b74 <__printf+0x6c>
    8000502c:	40c0053b          	negw	a0,a2
    80005030:	00a00713          	li	a4,10
    80005034:	02e576bb          	remuw	a3,a0,a4
    80005038:	00002d97          	auipc	s11,0x2
    8000503c:	6d0d8d93          	addi	s11,s11,1744 # 80007708 <digits>
    80005040:	ff700593          	li	a1,-9
    80005044:	02069693          	slli	a3,a3,0x20
    80005048:	0206d693          	srli	a3,a3,0x20
    8000504c:	00dd86b3          	add	a3,s11,a3
    80005050:	0006c683          	lbu	a3,0(a3)
    80005054:	02e557bb          	divuw	a5,a0,a4
    80005058:	f8d40023          	sb	a3,-128(s0)
    8000505c:	10b65e63          	bge	a2,a1,80005178 <__printf+0x670>
    80005060:	06300593          	li	a1,99
    80005064:	02e7f6bb          	remuw	a3,a5,a4
    80005068:	02069693          	slli	a3,a3,0x20
    8000506c:	0206d693          	srli	a3,a3,0x20
    80005070:	00dd86b3          	add	a3,s11,a3
    80005074:	0006c683          	lbu	a3,0(a3)
    80005078:	02e7d73b          	divuw	a4,a5,a4
    8000507c:	00200793          	li	a5,2
    80005080:	f8d400a3          	sb	a3,-127(s0)
    80005084:	bca5ece3          	bltu	a1,a0,80004c5c <__printf+0x154>
    80005088:	ce5ff06f          	j	80004d6c <__printf+0x264>
    8000508c:	40e007bb          	negw	a5,a4
    80005090:	00002d97          	auipc	s11,0x2
    80005094:	678d8d93          	addi	s11,s11,1656 # 80007708 <digits>
    80005098:	00f7f693          	andi	a3,a5,15
    8000509c:	00dd86b3          	add	a3,s11,a3
    800050a0:	0006c583          	lbu	a1,0(a3)
    800050a4:	ff100613          	li	a2,-15
    800050a8:	0047d69b          	srliw	a3,a5,0x4
    800050ac:	f8b40023          	sb	a1,-128(s0)
    800050b0:	0047d59b          	srliw	a1,a5,0x4
    800050b4:	0ac75e63          	bge	a4,a2,80005170 <__printf+0x668>
    800050b8:	00f6f693          	andi	a3,a3,15
    800050bc:	00dd86b3          	add	a3,s11,a3
    800050c0:	0006c603          	lbu	a2,0(a3)
    800050c4:	00f00693          	li	a3,15
    800050c8:	0087d79b          	srliw	a5,a5,0x8
    800050cc:	f8c400a3          	sb	a2,-127(s0)
    800050d0:	d8b6e4e3          	bltu	a3,a1,80004e58 <__printf+0x350>
    800050d4:	00200793          	li	a5,2
    800050d8:	e2dff06f          	j	80004f04 <__printf+0x3fc>
    800050dc:	00002c97          	auipc	s9,0x2
    800050e0:	60cc8c93          	addi	s9,s9,1548 # 800076e8 <_ZZ12printIntegermE6digits+0x148>
    800050e4:	02800513          	li	a0,40
    800050e8:	ef1ff06f          	j	80004fd8 <__printf+0x4d0>
    800050ec:	00700793          	li	a5,7
    800050f0:	00600c93          	li	s9,6
    800050f4:	e0dff06f          	j	80004f00 <__printf+0x3f8>
    800050f8:	00700793          	li	a5,7
    800050fc:	00600c93          	li	s9,6
    80005100:	c69ff06f          	j	80004d68 <__printf+0x260>
    80005104:	00300793          	li	a5,3
    80005108:	00200c93          	li	s9,2
    8000510c:	c5dff06f          	j	80004d68 <__printf+0x260>
    80005110:	00300793          	li	a5,3
    80005114:	00200c93          	li	s9,2
    80005118:	de9ff06f          	j	80004f00 <__printf+0x3f8>
    8000511c:	00400793          	li	a5,4
    80005120:	00300c93          	li	s9,3
    80005124:	dddff06f          	j	80004f00 <__printf+0x3f8>
    80005128:	00400793          	li	a5,4
    8000512c:	00300c93          	li	s9,3
    80005130:	c39ff06f          	j	80004d68 <__printf+0x260>
    80005134:	00500793          	li	a5,5
    80005138:	00400c93          	li	s9,4
    8000513c:	c2dff06f          	j	80004d68 <__printf+0x260>
    80005140:	00500793          	li	a5,5
    80005144:	00400c93          	li	s9,4
    80005148:	db9ff06f          	j	80004f00 <__printf+0x3f8>
    8000514c:	00600793          	li	a5,6
    80005150:	00500c93          	li	s9,5
    80005154:	dadff06f          	j	80004f00 <__printf+0x3f8>
    80005158:	00600793          	li	a5,6
    8000515c:	00500c93          	li	s9,5
    80005160:	c09ff06f          	j	80004d68 <__printf+0x260>
    80005164:	00800793          	li	a5,8
    80005168:	00700c93          	li	s9,7
    8000516c:	bfdff06f          	j	80004d68 <__printf+0x260>
    80005170:	00100793          	li	a5,1
    80005174:	d91ff06f          	j	80004f04 <__printf+0x3fc>
    80005178:	00100793          	li	a5,1
    8000517c:	bf1ff06f          	j	80004d6c <__printf+0x264>
    80005180:	00900793          	li	a5,9
    80005184:	00800c93          	li	s9,8
    80005188:	be1ff06f          	j	80004d68 <__printf+0x260>
    8000518c:	00002517          	auipc	a0,0x2
    80005190:	56450513          	addi	a0,a0,1380 # 800076f0 <_ZZ12printIntegermE6digits+0x150>
    80005194:	00000097          	auipc	ra,0x0
    80005198:	918080e7          	jalr	-1768(ra) # 80004aac <panic>

000000008000519c <printfinit>:
    8000519c:	fe010113          	addi	sp,sp,-32
    800051a0:	00813823          	sd	s0,16(sp)
    800051a4:	00913423          	sd	s1,8(sp)
    800051a8:	00113c23          	sd	ra,24(sp)
    800051ac:	02010413          	addi	s0,sp,32
    800051b0:	00004497          	auipc	s1,0x4
    800051b4:	3a048493          	addi	s1,s1,928 # 80009550 <pr>
    800051b8:	00048513          	mv	a0,s1
    800051bc:	00002597          	auipc	a1,0x2
    800051c0:	54458593          	addi	a1,a1,1348 # 80007700 <_ZZ12printIntegermE6digits+0x160>
    800051c4:	00000097          	auipc	ra,0x0
    800051c8:	5f4080e7          	jalr	1524(ra) # 800057b8 <initlock>
    800051cc:	01813083          	ld	ra,24(sp)
    800051d0:	01013403          	ld	s0,16(sp)
    800051d4:	0004ac23          	sw	zero,24(s1)
    800051d8:	00813483          	ld	s1,8(sp)
    800051dc:	02010113          	addi	sp,sp,32
    800051e0:	00008067          	ret

00000000800051e4 <uartinit>:
    800051e4:	ff010113          	addi	sp,sp,-16
    800051e8:	00813423          	sd	s0,8(sp)
    800051ec:	01010413          	addi	s0,sp,16
    800051f0:	100007b7          	lui	a5,0x10000
    800051f4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800051f8:	f8000713          	li	a4,-128
    800051fc:	00e781a3          	sb	a4,3(a5)
    80005200:	00300713          	li	a4,3
    80005204:	00e78023          	sb	a4,0(a5)
    80005208:	000780a3          	sb	zero,1(a5)
    8000520c:	00e781a3          	sb	a4,3(a5)
    80005210:	00700693          	li	a3,7
    80005214:	00d78123          	sb	a3,2(a5)
    80005218:	00e780a3          	sb	a4,1(a5)
    8000521c:	00813403          	ld	s0,8(sp)
    80005220:	01010113          	addi	sp,sp,16
    80005224:	00008067          	ret

0000000080005228 <uartputc>:
    80005228:	00003797          	auipc	a5,0x3
    8000522c:	0a07a783          	lw	a5,160(a5) # 800082c8 <panicked>
    80005230:	00078463          	beqz	a5,80005238 <uartputc+0x10>
    80005234:	0000006f          	j	80005234 <uartputc+0xc>
    80005238:	fd010113          	addi	sp,sp,-48
    8000523c:	02813023          	sd	s0,32(sp)
    80005240:	00913c23          	sd	s1,24(sp)
    80005244:	01213823          	sd	s2,16(sp)
    80005248:	01313423          	sd	s3,8(sp)
    8000524c:	02113423          	sd	ra,40(sp)
    80005250:	03010413          	addi	s0,sp,48
    80005254:	00003917          	auipc	s2,0x3
    80005258:	07c90913          	addi	s2,s2,124 # 800082d0 <uart_tx_r>
    8000525c:	00093783          	ld	a5,0(s2)
    80005260:	00003497          	auipc	s1,0x3
    80005264:	07848493          	addi	s1,s1,120 # 800082d8 <uart_tx_w>
    80005268:	0004b703          	ld	a4,0(s1)
    8000526c:	02078693          	addi	a3,a5,32
    80005270:	00050993          	mv	s3,a0
    80005274:	02e69c63          	bne	a3,a4,800052ac <uartputc+0x84>
    80005278:	00001097          	auipc	ra,0x1
    8000527c:	834080e7          	jalr	-1996(ra) # 80005aac <push_on>
    80005280:	00093783          	ld	a5,0(s2)
    80005284:	0004b703          	ld	a4,0(s1)
    80005288:	02078793          	addi	a5,a5,32
    8000528c:	00e79463          	bne	a5,a4,80005294 <uartputc+0x6c>
    80005290:	0000006f          	j	80005290 <uartputc+0x68>
    80005294:	00001097          	auipc	ra,0x1
    80005298:	88c080e7          	jalr	-1908(ra) # 80005b20 <pop_on>
    8000529c:	00093783          	ld	a5,0(s2)
    800052a0:	0004b703          	ld	a4,0(s1)
    800052a4:	02078693          	addi	a3,a5,32
    800052a8:	fce688e3          	beq	a3,a4,80005278 <uartputc+0x50>
    800052ac:	01f77693          	andi	a3,a4,31
    800052b0:	00004597          	auipc	a1,0x4
    800052b4:	2c058593          	addi	a1,a1,704 # 80009570 <uart_tx_buf>
    800052b8:	00d586b3          	add	a3,a1,a3
    800052bc:	00170713          	addi	a4,a4,1
    800052c0:	01368023          	sb	s3,0(a3)
    800052c4:	00e4b023          	sd	a4,0(s1)
    800052c8:	10000637          	lui	a2,0x10000
    800052cc:	02f71063          	bne	a4,a5,800052ec <uartputc+0xc4>
    800052d0:	0340006f          	j	80005304 <uartputc+0xdc>
    800052d4:	00074703          	lbu	a4,0(a4)
    800052d8:	00f93023          	sd	a5,0(s2)
    800052dc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800052e0:	00093783          	ld	a5,0(s2)
    800052e4:	0004b703          	ld	a4,0(s1)
    800052e8:	00f70e63          	beq	a4,a5,80005304 <uartputc+0xdc>
    800052ec:	00564683          	lbu	a3,5(a2)
    800052f0:	01f7f713          	andi	a4,a5,31
    800052f4:	00e58733          	add	a4,a1,a4
    800052f8:	0206f693          	andi	a3,a3,32
    800052fc:	00178793          	addi	a5,a5,1
    80005300:	fc069ae3          	bnez	a3,800052d4 <uartputc+0xac>
    80005304:	02813083          	ld	ra,40(sp)
    80005308:	02013403          	ld	s0,32(sp)
    8000530c:	01813483          	ld	s1,24(sp)
    80005310:	01013903          	ld	s2,16(sp)
    80005314:	00813983          	ld	s3,8(sp)
    80005318:	03010113          	addi	sp,sp,48
    8000531c:	00008067          	ret

0000000080005320 <uartputc_sync>:
    80005320:	ff010113          	addi	sp,sp,-16
    80005324:	00813423          	sd	s0,8(sp)
    80005328:	01010413          	addi	s0,sp,16
    8000532c:	00003717          	auipc	a4,0x3
    80005330:	f9c72703          	lw	a4,-100(a4) # 800082c8 <panicked>
    80005334:	02071663          	bnez	a4,80005360 <uartputc_sync+0x40>
    80005338:	00050793          	mv	a5,a0
    8000533c:	100006b7          	lui	a3,0x10000
    80005340:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80005344:	02077713          	andi	a4,a4,32
    80005348:	fe070ce3          	beqz	a4,80005340 <uartputc_sync+0x20>
    8000534c:	0ff7f793          	andi	a5,a5,255
    80005350:	00f68023          	sb	a5,0(a3)
    80005354:	00813403          	ld	s0,8(sp)
    80005358:	01010113          	addi	sp,sp,16
    8000535c:	00008067          	ret
    80005360:	0000006f          	j	80005360 <uartputc_sync+0x40>

0000000080005364 <uartstart>:
    80005364:	ff010113          	addi	sp,sp,-16
    80005368:	00813423          	sd	s0,8(sp)
    8000536c:	01010413          	addi	s0,sp,16
    80005370:	00003617          	auipc	a2,0x3
    80005374:	f6060613          	addi	a2,a2,-160 # 800082d0 <uart_tx_r>
    80005378:	00003517          	auipc	a0,0x3
    8000537c:	f6050513          	addi	a0,a0,-160 # 800082d8 <uart_tx_w>
    80005380:	00063783          	ld	a5,0(a2)
    80005384:	00053703          	ld	a4,0(a0)
    80005388:	04f70263          	beq	a4,a5,800053cc <uartstart+0x68>
    8000538c:	100005b7          	lui	a1,0x10000
    80005390:	00004817          	auipc	a6,0x4
    80005394:	1e080813          	addi	a6,a6,480 # 80009570 <uart_tx_buf>
    80005398:	01c0006f          	j	800053b4 <uartstart+0x50>
    8000539c:	0006c703          	lbu	a4,0(a3)
    800053a0:	00f63023          	sd	a5,0(a2)
    800053a4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800053a8:	00063783          	ld	a5,0(a2)
    800053ac:	00053703          	ld	a4,0(a0)
    800053b0:	00f70e63          	beq	a4,a5,800053cc <uartstart+0x68>
    800053b4:	01f7f713          	andi	a4,a5,31
    800053b8:	00e806b3          	add	a3,a6,a4
    800053bc:	0055c703          	lbu	a4,5(a1)
    800053c0:	00178793          	addi	a5,a5,1
    800053c4:	02077713          	andi	a4,a4,32
    800053c8:	fc071ae3          	bnez	a4,8000539c <uartstart+0x38>
    800053cc:	00813403          	ld	s0,8(sp)
    800053d0:	01010113          	addi	sp,sp,16
    800053d4:	00008067          	ret

00000000800053d8 <uartgetc>:
    800053d8:	ff010113          	addi	sp,sp,-16
    800053dc:	00813423          	sd	s0,8(sp)
    800053e0:	01010413          	addi	s0,sp,16
    800053e4:	10000737          	lui	a4,0x10000
    800053e8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800053ec:	0017f793          	andi	a5,a5,1
    800053f0:	00078c63          	beqz	a5,80005408 <uartgetc+0x30>
    800053f4:	00074503          	lbu	a0,0(a4)
    800053f8:	0ff57513          	andi	a0,a0,255
    800053fc:	00813403          	ld	s0,8(sp)
    80005400:	01010113          	addi	sp,sp,16
    80005404:	00008067          	ret
    80005408:	fff00513          	li	a0,-1
    8000540c:	ff1ff06f          	j	800053fc <uartgetc+0x24>

0000000080005410 <uartintr>:
    80005410:	100007b7          	lui	a5,0x10000
    80005414:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80005418:	0017f793          	andi	a5,a5,1
    8000541c:	0a078463          	beqz	a5,800054c4 <uartintr+0xb4>
    80005420:	fe010113          	addi	sp,sp,-32
    80005424:	00813823          	sd	s0,16(sp)
    80005428:	00913423          	sd	s1,8(sp)
    8000542c:	00113c23          	sd	ra,24(sp)
    80005430:	02010413          	addi	s0,sp,32
    80005434:	100004b7          	lui	s1,0x10000
    80005438:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000543c:	0ff57513          	andi	a0,a0,255
    80005440:	fffff097          	auipc	ra,0xfffff
    80005444:	534080e7          	jalr	1332(ra) # 80004974 <consoleintr>
    80005448:	0054c783          	lbu	a5,5(s1)
    8000544c:	0017f793          	andi	a5,a5,1
    80005450:	fe0794e3          	bnez	a5,80005438 <uartintr+0x28>
    80005454:	00003617          	auipc	a2,0x3
    80005458:	e7c60613          	addi	a2,a2,-388 # 800082d0 <uart_tx_r>
    8000545c:	00003517          	auipc	a0,0x3
    80005460:	e7c50513          	addi	a0,a0,-388 # 800082d8 <uart_tx_w>
    80005464:	00063783          	ld	a5,0(a2)
    80005468:	00053703          	ld	a4,0(a0)
    8000546c:	04f70263          	beq	a4,a5,800054b0 <uartintr+0xa0>
    80005470:	100005b7          	lui	a1,0x10000
    80005474:	00004817          	auipc	a6,0x4
    80005478:	0fc80813          	addi	a6,a6,252 # 80009570 <uart_tx_buf>
    8000547c:	01c0006f          	j	80005498 <uartintr+0x88>
    80005480:	0006c703          	lbu	a4,0(a3)
    80005484:	00f63023          	sd	a5,0(a2)
    80005488:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000548c:	00063783          	ld	a5,0(a2)
    80005490:	00053703          	ld	a4,0(a0)
    80005494:	00f70e63          	beq	a4,a5,800054b0 <uartintr+0xa0>
    80005498:	01f7f713          	andi	a4,a5,31
    8000549c:	00e806b3          	add	a3,a6,a4
    800054a0:	0055c703          	lbu	a4,5(a1)
    800054a4:	00178793          	addi	a5,a5,1
    800054a8:	02077713          	andi	a4,a4,32
    800054ac:	fc071ae3          	bnez	a4,80005480 <uartintr+0x70>
    800054b0:	01813083          	ld	ra,24(sp)
    800054b4:	01013403          	ld	s0,16(sp)
    800054b8:	00813483          	ld	s1,8(sp)
    800054bc:	02010113          	addi	sp,sp,32
    800054c0:	00008067          	ret
    800054c4:	00003617          	auipc	a2,0x3
    800054c8:	e0c60613          	addi	a2,a2,-500 # 800082d0 <uart_tx_r>
    800054cc:	00003517          	auipc	a0,0x3
    800054d0:	e0c50513          	addi	a0,a0,-500 # 800082d8 <uart_tx_w>
    800054d4:	00063783          	ld	a5,0(a2)
    800054d8:	00053703          	ld	a4,0(a0)
    800054dc:	04f70263          	beq	a4,a5,80005520 <uartintr+0x110>
    800054e0:	100005b7          	lui	a1,0x10000
    800054e4:	00004817          	auipc	a6,0x4
    800054e8:	08c80813          	addi	a6,a6,140 # 80009570 <uart_tx_buf>
    800054ec:	01c0006f          	j	80005508 <uartintr+0xf8>
    800054f0:	0006c703          	lbu	a4,0(a3)
    800054f4:	00f63023          	sd	a5,0(a2)
    800054f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800054fc:	00063783          	ld	a5,0(a2)
    80005500:	00053703          	ld	a4,0(a0)
    80005504:	02f70063          	beq	a4,a5,80005524 <uartintr+0x114>
    80005508:	01f7f713          	andi	a4,a5,31
    8000550c:	00e806b3          	add	a3,a6,a4
    80005510:	0055c703          	lbu	a4,5(a1)
    80005514:	00178793          	addi	a5,a5,1
    80005518:	02077713          	andi	a4,a4,32
    8000551c:	fc071ae3          	bnez	a4,800054f0 <uartintr+0xe0>
    80005520:	00008067          	ret
    80005524:	00008067          	ret

0000000080005528 <kinit>:
    80005528:	fc010113          	addi	sp,sp,-64
    8000552c:	02913423          	sd	s1,40(sp)
    80005530:	fffff7b7          	lui	a5,0xfffff
    80005534:	00005497          	auipc	s1,0x5
    80005538:	06b48493          	addi	s1,s1,107 # 8000a59f <end+0xfff>
    8000553c:	02813823          	sd	s0,48(sp)
    80005540:	01313c23          	sd	s3,24(sp)
    80005544:	00f4f4b3          	and	s1,s1,a5
    80005548:	02113c23          	sd	ra,56(sp)
    8000554c:	03213023          	sd	s2,32(sp)
    80005550:	01413823          	sd	s4,16(sp)
    80005554:	01513423          	sd	s5,8(sp)
    80005558:	04010413          	addi	s0,sp,64
    8000555c:	000017b7          	lui	a5,0x1
    80005560:	01100993          	li	s3,17
    80005564:	00f487b3          	add	a5,s1,a5
    80005568:	01b99993          	slli	s3,s3,0x1b
    8000556c:	06f9e063          	bltu	s3,a5,800055cc <kinit+0xa4>
    80005570:	00004a97          	auipc	s5,0x4
    80005574:	030a8a93          	addi	s5,s5,48 # 800095a0 <end>
    80005578:	0754ec63          	bltu	s1,s5,800055f0 <kinit+0xc8>
    8000557c:	0734fa63          	bgeu	s1,s3,800055f0 <kinit+0xc8>
    80005580:	00088a37          	lui	s4,0x88
    80005584:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005588:	00003917          	auipc	s2,0x3
    8000558c:	d5890913          	addi	s2,s2,-680 # 800082e0 <kmem>
    80005590:	00ca1a13          	slli	s4,s4,0xc
    80005594:	0140006f          	j	800055a8 <kinit+0x80>
    80005598:	000017b7          	lui	a5,0x1
    8000559c:	00f484b3          	add	s1,s1,a5
    800055a0:	0554e863          	bltu	s1,s5,800055f0 <kinit+0xc8>
    800055a4:	0534f663          	bgeu	s1,s3,800055f0 <kinit+0xc8>
    800055a8:	00001637          	lui	a2,0x1
    800055ac:	00100593          	li	a1,1
    800055b0:	00048513          	mv	a0,s1
    800055b4:	00000097          	auipc	ra,0x0
    800055b8:	5e4080e7          	jalr	1508(ra) # 80005b98 <__memset>
    800055bc:	00093783          	ld	a5,0(s2)
    800055c0:	00f4b023          	sd	a5,0(s1)
    800055c4:	00993023          	sd	s1,0(s2)
    800055c8:	fd4498e3          	bne	s1,s4,80005598 <kinit+0x70>
    800055cc:	03813083          	ld	ra,56(sp)
    800055d0:	03013403          	ld	s0,48(sp)
    800055d4:	02813483          	ld	s1,40(sp)
    800055d8:	02013903          	ld	s2,32(sp)
    800055dc:	01813983          	ld	s3,24(sp)
    800055e0:	01013a03          	ld	s4,16(sp)
    800055e4:	00813a83          	ld	s5,8(sp)
    800055e8:	04010113          	addi	sp,sp,64
    800055ec:	00008067          	ret
    800055f0:	00002517          	auipc	a0,0x2
    800055f4:	13050513          	addi	a0,a0,304 # 80007720 <digits+0x18>
    800055f8:	fffff097          	auipc	ra,0xfffff
    800055fc:	4b4080e7          	jalr	1204(ra) # 80004aac <panic>

0000000080005600 <freerange>:
    80005600:	fc010113          	addi	sp,sp,-64
    80005604:	000017b7          	lui	a5,0x1
    80005608:	02913423          	sd	s1,40(sp)
    8000560c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80005610:	009504b3          	add	s1,a0,s1
    80005614:	fffff537          	lui	a0,0xfffff
    80005618:	02813823          	sd	s0,48(sp)
    8000561c:	02113c23          	sd	ra,56(sp)
    80005620:	03213023          	sd	s2,32(sp)
    80005624:	01313c23          	sd	s3,24(sp)
    80005628:	01413823          	sd	s4,16(sp)
    8000562c:	01513423          	sd	s5,8(sp)
    80005630:	01613023          	sd	s6,0(sp)
    80005634:	04010413          	addi	s0,sp,64
    80005638:	00a4f4b3          	and	s1,s1,a0
    8000563c:	00f487b3          	add	a5,s1,a5
    80005640:	06f5e463          	bltu	a1,a5,800056a8 <freerange+0xa8>
    80005644:	00004a97          	auipc	s5,0x4
    80005648:	f5ca8a93          	addi	s5,s5,-164 # 800095a0 <end>
    8000564c:	0954e263          	bltu	s1,s5,800056d0 <freerange+0xd0>
    80005650:	01100993          	li	s3,17
    80005654:	01b99993          	slli	s3,s3,0x1b
    80005658:	0734fc63          	bgeu	s1,s3,800056d0 <freerange+0xd0>
    8000565c:	00058a13          	mv	s4,a1
    80005660:	00003917          	auipc	s2,0x3
    80005664:	c8090913          	addi	s2,s2,-896 # 800082e0 <kmem>
    80005668:	00002b37          	lui	s6,0x2
    8000566c:	0140006f          	j	80005680 <freerange+0x80>
    80005670:	000017b7          	lui	a5,0x1
    80005674:	00f484b3          	add	s1,s1,a5
    80005678:	0554ec63          	bltu	s1,s5,800056d0 <freerange+0xd0>
    8000567c:	0534fa63          	bgeu	s1,s3,800056d0 <freerange+0xd0>
    80005680:	00001637          	lui	a2,0x1
    80005684:	00100593          	li	a1,1
    80005688:	00048513          	mv	a0,s1
    8000568c:	00000097          	auipc	ra,0x0
    80005690:	50c080e7          	jalr	1292(ra) # 80005b98 <__memset>
    80005694:	00093703          	ld	a4,0(s2)
    80005698:	016487b3          	add	a5,s1,s6
    8000569c:	00e4b023          	sd	a4,0(s1)
    800056a0:	00993023          	sd	s1,0(s2)
    800056a4:	fcfa76e3          	bgeu	s4,a5,80005670 <freerange+0x70>
    800056a8:	03813083          	ld	ra,56(sp)
    800056ac:	03013403          	ld	s0,48(sp)
    800056b0:	02813483          	ld	s1,40(sp)
    800056b4:	02013903          	ld	s2,32(sp)
    800056b8:	01813983          	ld	s3,24(sp)
    800056bc:	01013a03          	ld	s4,16(sp)
    800056c0:	00813a83          	ld	s5,8(sp)
    800056c4:	00013b03          	ld	s6,0(sp)
    800056c8:	04010113          	addi	sp,sp,64
    800056cc:	00008067          	ret
    800056d0:	00002517          	auipc	a0,0x2
    800056d4:	05050513          	addi	a0,a0,80 # 80007720 <digits+0x18>
    800056d8:	fffff097          	auipc	ra,0xfffff
    800056dc:	3d4080e7          	jalr	980(ra) # 80004aac <panic>

00000000800056e0 <kfree>:
    800056e0:	fe010113          	addi	sp,sp,-32
    800056e4:	00813823          	sd	s0,16(sp)
    800056e8:	00113c23          	sd	ra,24(sp)
    800056ec:	00913423          	sd	s1,8(sp)
    800056f0:	02010413          	addi	s0,sp,32
    800056f4:	03451793          	slli	a5,a0,0x34
    800056f8:	04079c63          	bnez	a5,80005750 <kfree+0x70>
    800056fc:	00004797          	auipc	a5,0x4
    80005700:	ea478793          	addi	a5,a5,-348 # 800095a0 <end>
    80005704:	00050493          	mv	s1,a0
    80005708:	04f56463          	bltu	a0,a5,80005750 <kfree+0x70>
    8000570c:	01100793          	li	a5,17
    80005710:	01b79793          	slli	a5,a5,0x1b
    80005714:	02f57e63          	bgeu	a0,a5,80005750 <kfree+0x70>
    80005718:	00001637          	lui	a2,0x1
    8000571c:	00100593          	li	a1,1
    80005720:	00000097          	auipc	ra,0x0
    80005724:	478080e7          	jalr	1144(ra) # 80005b98 <__memset>
    80005728:	00003797          	auipc	a5,0x3
    8000572c:	bb878793          	addi	a5,a5,-1096 # 800082e0 <kmem>
    80005730:	0007b703          	ld	a4,0(a5)
    80005734:	01813083          	ld	ra,24(sp)
    80005738:	01013403          	ld	s0,16(sp)
    8000573c:	00e4b023          	sd	a4,0(s1)
    80005740:	0097b023          	sd	s1,0(a5)
    80005744:	00813483          	ld	s1,8(sp)
    80005748:	02010113          	addi	sp,sp,32
    8000574c:	00008067          	ret
    80005750:	00002517          	auipc	a0,0x2
    80005754:	fd050513          	addi	a0,a0,-48 # 80007720 <digits+0x18>
    80005758:	fffff097          	auipc	ra,0xfffff
    8000575c:	354080e7          	jalr	852(ra) # 80004aac <panic>

0000000080005760 <kalloc>:
    80005760:	fe010113          	addi	sp,sp,-32
    80005764:	00813823          	sd	s0,16(sp)
    80005768:	00913423          	sd	s1,8(sp)
    8000576c:	00113c23          	sd	ra,24(sp)
    80005770:	02010413          	addi	s0,sp,32
    80005774:	00003797          	auipc	a5,0x3
    80005778:	b6c78793          	addi	a5,a5,-1172 # 800082e0 <kmem>
    8000577c:	0007b483          	ld	s1,0(a5)
    80005780:	02048063          	beqz	s1,800057a0 <kalloc+0x40>
    80005784:	0004b703          	ld	a4,0(s1)
    80005788:	00001637          	lui	a2,0x1
    8000578c:	00500593          	li	a1,5
    80005790:	00048513          	mv	a0,s1
    80005794:	00e7b023          	sd	a4,0(a5)
    80005798:	00000097          	auipc	ra,0x0
    8000579c:	400080e7          	jalr	1024(ra) # 80005b98 <__memset>
    800057a0:	01813083          	ld	ra,24(sp)
    800057a4:	01013403          	ld	s0,16(sp)
    800057a8:	00048513          	mv	a0,s1
    800057ac:	00813483          	ld	s1,8(sp)
    800057b0:	02010113          	addi	sp,sp,32
    800057b4:	00008067          	ret

00000000800057b8 <initlock>:
    800057b8:	ff010113          	addi	sp,sp,-16
    800057bc:	00813423          	sd	s0,8(sp)
    800057c0:	01010413          	addi	s0,sp,16
    800057c4:	00813403          	ld	s0,8(sp)
    800057c8:	00b53423          	sd	a1,8(a0)
    800057cc:	00052023          	sw	zero,0(a0)
    800057d0:	00053823          	sd	zero,16(a0)
    800057d4:	01010113          	addi	sp,sp,16
    800057d8:	00008067          	ret

00000000800057dc <acquire>:
    800057dc:	fe010113          	addi	sp,sp,-32
    800057e0:	00813823          	sd	s0,16(sp)
    800057e4:	00913423          	sd	s1,8(sp)
    800057e8:	00113c23          	sd	ra,24(sp)
    800057ec:	01213023          	sd	s2,0(sp)
    800057f0:	02010413          	addi	s0,sp,32
    800057f4:	00050493          	mv	s1,a0
    800057f8:	10002973          	csrr	s2,sstatus
    800057fc:	100027f3          	csrr	a5,sstatus
    80005800:	ffd7f793          	andi	a5,a5,-3
    80005804:	10079073          	csrw	sstatus,a5
    80005808:	fffff097          	auipc	ra,0xfffff
    8000580c:	8e0080e7          	jalr	-1824(ra) # 800040e8 <mycpu>
    80005810:	07852783          	lw	a5,120(a0)
    80005814:	06078e63          	beqz	a5,80005890 <acquire+0xb4>
    80005818:	fffff097          	auipc	ra,0xfffff
    8000581c:	8d0080e7          	jalr	-1840(ra) # 800040e8 <mycpu>
    80005820:	07852783          	lw	a5,120(a0)
    80005824:	0004a703          	lw	a4,0(s1)
    80005828:	0017879b          	addiw	a5,a5,1
    8000582c:	06f52c23          	sw	a5,120(a0)
    80005830:	04071063          	bnez	a4,80005870 <acquire+0x94>
    80005834:	00100713          	li	a4,1
    80005838:	00070793          	mv	a5,a4
    8000583c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005840:	0007879b          	sext.w	a5,a5
    80005844:	fe079ae3          	bnez	a5,80005838 <acquire+0x5c>
    80005848:	0ff0000f          	fence
    8000584c:	fffff097          	auipc	ra,0xfffff
    80005850:	89c080e7          	jalr	-1892(ra) # 800040e8 <mycpu>
    80005854:	01813083          	ld	ra,24(sp)
    80005858:	01013403          	ld	s0,16(sp)
    8000585c:	00a4b823          	sd	a0,16(s1)
    80005860:	00013903          	ld	s2,0(sp)
    80005864:	00813483          	ld	s1,8(sp)
    80005868:	02010113          	addi	sp,sp,32
    8000586c:	00008067          	ret
    80005870:	0104b903          	ld	s2,16(s1)
    80005874:	fffff097          	auipc	ra,0xfffff
    80005878:	874080e7          	jalr	-1932(ra) # 800040e8 <mycpu>
    8000587c:	faa91ce3          	bne	s2,a0,80005834 <acquire+0x58>
    80005880:	00002517          	auipc	a0,0x2
    80005884:	ea850513          	addi	a0,a0,-344 # 80007728 <digits+0x20>
    80005888:	fffff097          	auipc	ra,0xfffff
    8000588c:	224080e7          	jalr	548(ra) # 80004aac <panic>
    80005890:	00195913          	srli	s2,s2,0x1
    80005894:	fffff097          	auipc	ra,0xfffff
    80005898:	854080e7          	jalr	-1964(ra) # 800040e8 <mycpu>
    8000589c:	00197913          	andi	s2,s2,1
    800058a0:	07252e23          	sw	s2,124(a0)
    800058a4:	f75ff06f          	j	80005818 <acquire+0x3c>

00000000800058a8 <release>:
    800058a8:	fe010113          	addi	sp,sp,-32
    800058ac:	00813823          	sd	s0,16(sp)
    800058b0:	00113c23          	sd	ra,24(sp)
    800058b4:	00913423          	sd	s1,8(sp)
    800058b8:	01213023          	sd	s2,0(sp)
    800058bc:	02010413          	addi	s0,sp,32
    800058c0:	00052783          	lw	a5,0(a0)
    800058c4:	00079a63          	bnez	a5,800058d8 <release+0x30>
    800058c8:	00002517          	auipc	a0,0x2
    800058cc:	e6850513          	addi	a0,a0,-408 # 80007730 <digits+0x28>
    800058d0:	fffff097          	auipc	ra,0xfffff
    800058d4:	1dc080e7          	jalr	476(ra) # 80004aac <panic>
    800058d8:	01053903          	ld	s2,16(a0)
    800058dc:	00050493          	mv	s1,a0
    800058e0:	fffff097          	auipc	ra,0xfffff
    800058e4:	808080e7          	jalr	-2040(ra) # 800040e8 <mycpu>
    800058e8:	fea910e3          	bne	s2,a0,800058c8 <release+0x20>
    800058ec:	0004b823          	sd	zero,16(s1)
    800058f0:	0ff0000f          	fence
    800058f4:	0f50000f          	fence	iorw,ow
    800058f8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800058fc:	ffffe097          	auipc	ra,0xffffe
    80005900:	7ec080e7          	jalr	2028(ra) # 800040e8 <mycpu>
    80005904:	100027f3          	csrr	a5,sstatus
    80005908:	0027f793          	andi	a5,a5,2
    8000590c:	04079a63          	bnez	a5,80005960 <release+0xb8>
    80005910:	07852783          	lw	a5,120(a0)
    80005914:	02f05e63          	blez	a5,80005950 <release+0xa8>
    80005918:	fff7871b          	addiw	a4,a5,-1
    8000591c:	06e52c23          	sw	a4,120(a0)
    80005920:	00071c63          	bnez	a4,80005938 <release+0x90>
    80005924:	07c52783          	lw	a5,124(a0)
    80005928:	00078863          	beqz	a5,80005938 <release+0x90>
    8000592c:	100027f3          	csrr	a5,sstatus
    80005930:	0027e793          	ori	a5,a5,2
    80005934:	10079073          	csrw	sstatus,a5
    80005938:	01813083          	ld	ra,24(sp)
    8000593c:	01013403          	ld	s0,16(sp)
    80005940:	00813483          	ld	s1,8(sp)
    80005944:	00013903          	ld	s2,0(sp)
    80005948:	02010113          	addi	sp,sp,32
    8000594c:	00008067          	ret
    80005950:	00002517          	auipc	a0,0x2
    80005954:	e0050513          	addi	a0,a0,-512 # 80007750 <digits+0x48>
    80005958:	fffff097          	auipc	ra,0xfffff
    8000595c:	154080e7          	jalr	340(ra) # 80004aac <panic>
    80005960:	00002517          	auipc	a0,0x2
    80005964:	dd850513          	addi	a0,a0,-552 # 80007738 <digits+0x30>
    80005968:	fffff097          	auipc	ra,0xfffff
    8000596c:	144080e7          	jalr	324(ra) # 80004aac <panic>

0000000080005970 <holding>:
    80005970:	00052783          	lw	a5,0(a0)
    80005974:	00079663          	bnez	a5,80005980 <holding+0x10>
    80005978:	00000513          	li	a0,0
    8000597c:	00008067          	ret
    80005980:	fe010113          	addi	sp,sp,-32
    80005984:	00813823          	sd	s0,16(sp)
    80005988:	00913423          	sd	s1,8(sp)
    8000598c:	00113c23          	sd	ra,24(sp)
    80005990:	02010413          	addi	s0,sp,32
    80005994:	01053483          	ld	s1,16(a0)
    80005998:	ffffe097          	auipc	ra,0xffffe
    8000599c:	750080e7          	jalr	1872(ra) # 800040e8 <mycpu>
    800059a0:	01813083          	ld	ra,24(sp)
    800059a4:	01013403          	ld	s0,16(sp)
    800059a8:	40a48533          	sub	a0,s1,a0
    800059ac:	00153513          	seqz	a0,a0
    800059b0:	00813483          	ld	s1,8(sp)
    800059b4:	02010113          	addi	sp,sp,32
    800059b8:	00008067          	ret

00000000800059bc <push_off>:
    800059bc:	fe010113          	addi	sp,sp,-32
    800059c0:	00813823          	sd	s0,16(sp)
    800059c4:	00113c23          	sd	ra,24(sp)
    800059c8:	00913423          	sd	s1,8(sp)
    800059cc:	02010413          	addi	s0,sp,32
    800059d0:	100024f3          	csrr	s1,sstatus
    800059d4:	100027f3          	csrr	a5,sstatus
    800059d8:	ffd7f793          	andi	a5,a5,-3
    800059dc:	10079073          	csrw	sstatus,a5
    800059e0:	ffffe097          	auipc	ra,0xffffe
    800059e4:	708080e7          	jalr	1800(ra) # 800040e8 <mycpu>
    800059e8:	07852783          	lw	a5,120(a0)
    800059ec:	02078663          	beqz	a5,80005a18 <push_off+0x5c>
    800059f0:	ffffe097          	auipc	ra,0xffffe
    800059f4:	6f8080e7          	jalr	1784(ra) # 800040e8 <mycpu>
    800059f8:	07852783          	lw	a5,120(a0)
    800059fc:	01813083          	ld	ra,24(sp)
    80005a00:	01013403          	ld	s0,16(sp)
    80005a04:	0017879b          	addiw	a5,a5,1
    80005a08:	06f52c23          	sw	a5,120(a0)
    80005a0c:	00813483          	ld	s1,8(sp)
    80005a10:	02010113          	addi	sp,sp,32
    80005a14:	00008067          	ret
    80005a18:	0014d493          	srli	s1,s1,0x1
    80005a1c:	ffffe097          	auipc	ra,0xffffe
    80005a20:	6cc080e7          	jalr	1740(ra) # 800040e8 <mycpu>
    80005a24:	0014f493          	andi	s1,s1,1
    80005a28:	06952e23          	sw	s1,124(a0)
    80005a2c:	fc5ff06f          	j	800059f0 <push_off+0x34>

0000000080005a30 <pop_off>:
    80005a30:	ff010113          	addi	sp,sp,-16
    80005a34:	00813023          	sd	s0,0(sp)
    80005a38:	00113423          	sd	ra,8(sp)
    80005a3c:	01010413          	addi	s0,sp,16
    80005a40:	ffffe097          	auipc	ra,0xffffe
    80005a44:	6a8080e7          	jalr	1704(ra) # 800040e8 <mycpu>
    80005a48:	100027f3          	csrr	a5,sstatus
    80005a4c:	0027f793          	andi	a5,a5,2
    80005a50:	04079663          	bnez	a5,80005a9c <pop_off+0x6c>
    80005a54:	07852783          	lw	a5,120(a0)
    80005a58:	02f05a63          	blez	a5,80005a8c <pop_off+0x5c>
    80005a5c:	fff7871b          	addiw	a4,a5,-1
    80005a60:	06e52c23          	sw	a4,120(a0)
    80005a64:	00071c63          	bnez	a4,80005a7c <pop_off+0x4c>
    80005a68:	07c52783          	lw	a5,124(a0)
    80005a6c:	00078863          	beqz	a5,80005a7c <pop_off+0x4c>
    80005a70:	100027f3          	csrr	a5,sstatus
    80005a74:	0027e793          	ori	a5,a5,2
    80005a78:	10079073          	csrw	sstatus,a5
    80005a7c:	00813083          	ld	ra,8(sp)
    80005a80:	00013403          	ld	s0,0(sp)
    80005a84:	01010113          	addi	sp,sp,16
    80005a88:	00008067          	ret
    80005a8c:	00002517          	auipc	a0,0x2
    80005a90:	cc450513          	addi	a0,a0,-828 # 80007750 <digits+0x48>
    80005a94:	fffff097          	auipc	ra,0xfffff
    80005a98:	018080e7          	jalr	24(ra) # 80004aac <panic>
    80005a9c:	00002517          	auipc	a0,0x2
    80005aa0:	c9c50513          	addi	a0,a0,-868 # 80007738 <digits+0x30>
    80005aa4:	fffff097          	auipc	ra,0xfffff
    80005aa8:	008080e7          	jalr	8(ra) # 80004aac <panic>

0000000080005aac <push_on>:
    80005aac:	fe010113          	addi	sp,sp,-32
    80005ab0:	00813823          	sd	s0,16(sp)
    80005ab4:	00113c23          	sd	ra,24(sp)
    80005ab8:	00913423          	sd	s1,8(sp)
    80005abc:	02010413          	addi	s0,sp,32
    80005ac0:	100024f3          	csrr	s1,sstatus
    80005ac4:	100027f3          	csrr	a5,sstatus
    80005ac8:	0027e793          	ori	a5,a5,2
    80005acc:	10079073          	csrw	sstatus,a5
    80005ad0:	ffffe097          	auipc	ra,0xffffe
    80005ad4:	618080e7          	jalr	1560(ra) # 800040e8 <mycpu>
    80005ad8:	07852783          	lw	a5,120(a0)
    80005adc:	02078663          	beqz	a5,80005b08 <push_on+0x5c>
    80005ae0:	ffffe097          	auipc	ra,0xffffe
    80005ae4:	608080e7          	jalr	1544(ra) # 800040e8 <mycpu>
    80005ae8:	07852783          	lw	a5,120(a0)
    80005aec:	01813083          	ld	ra,24(sp)
    80005af0:	01013403          	ld	s0,16(sp)
    80005af4:	0017879b          	addiw	a5,a5,1
    80005af8:	06f52c23          	sw	a5,120(a0)
    80005afc:	00813483          	ld	s1,8(sp)
    80005b00:	02010113          	addi	sp,sp,32
    80005b04:	00008067          	ret
    80005b08:	0014d493          	srli	s1,s1,0x1
    80005b0c:	ffffe097          	auipc	ra,0xffffe
    80005b10:	5dc080e7          	jalr	1500(ra) # 800040e8 <mycpu>
    80005b14:	0014f493          	andi	s1,s1,1
    80005b18:	06952e23          	sw	s1,124(a0)
    80005b1c:	fc5ff06f          	j	80005ae0 <push_on+0x34>

0000000080005b20 <pop_on>:
    80005b20:	ff010113          	addi	sp,sp,-16
    80005b24:	00813023          	sd	s0,0(sp)
    80005b28:	00113423          	sd	ra,8(sp)
    80005b2c:	01010413          	addi	s0,sp,16
    80005b30:	ffffe097          	auipc	ra,0xffffe
    80005b34:	5b8080e7          	jalr	1464(ra) # 800040e8 <mycpu>
    80005b38:	100027f3          	csrr	a5,sstatus
    80005b3c:	0027f793          	andi	a5,a5,2
    80005b40:	04078463          	beqz	a5,80005b88 <pop_on+0x68>
    80005b44:	07852783          	lw	a5,120(a0)
    80005b48:	02f05863          	blez	a5,80005b78 <pop_on+0x58>
    80005b4c:	fff7879b          	addiw	a5,a5,-1
    80005b50:	06f52c23          	sw	a5,120(a0)
    80005b54:	07853783          	ld	a5,120(a0)
    80005b58:	00079863          	bnez	a5,80005b68 <pop_on+0x48>
    80005b5c:	100027f3          	csrr	a5,sstatus
    80005b60:	ffd7f793          	andi	a5,a5,-3
    80005b64:	10079073          	csrw	sstatus,a5
    80005b68:	00813083          	ld	ra,8(sp)
    80005b6c:	00013403          	ld	s0,0(sp)
    80005b70:	01010113          	addi	sp,sp,16
    80005b74:	00008067          	ret
    80005b78:	00002517          	auipc	a0,0x2
    80005b7c:	c0050513          	addi	a0,a0,-1024 # 80007778 <digits+0x70>
    80005b80:	fffff097          	auipc	ra,0xfffff
    80005b84:	f2c080e7          	jalr	-212(ra) # 80004aac <panic>
    80005b88:	00002517          	auipc	a0,0x2
    80005b8c:	bd050513          	addi	a0,a0,-1072 # 80007758 <digits+0x50>
    80005b90:	fffff097          	auipc	ra,0xfffff
    80005b94:	f1c080e7          	jalr	-228(ra) # 80004aac <panic>

0000000080005b98 <__memset>:
    80005b98:	ff010113          	addi	sp,sp,-16
    80005b9c:	00813423          	sd	s0,8(sp)
    80005ba0:	01010413          	addi	s0,sp,16
    80005ba4:	1a060e63          	beqz	a2,80005d60 <__memset+0x1c8>
    80005ba8:	40a007b3          	neg	a5,a0
    80005bac:	0077f793          	andi	a5,a5,7
    80005bb0:	00778693          	addi	a3,a5,7
    80005bb4:	00b00813          	li	a6,11
    80005bb8:	0ff5f593          	andi	a1,a1,255
    80005bbc:	fff6071b          	addiw	a4,a2,-1
    80005bc0:	1b06e663          	bltu	a3,a6,80005d6c <__memset+0x1d4>
    80005bc4:	1cd76463          	bltu	a4,a3,80005d8c <__memset+0x1f4>
    80005bc8:	1a078e63          	beqz	a5,80005d84 <__memset+0x1ec>
    80005bcc:	00b50023          	sb	a1,0(a0)
    80005bd0:	00100713          	li	a4,1
    80005bd4:	1ae78463          	beq	a5,a4,80005d7c <__memset+0x1e4>
    80005bd8:	00b500a3          	sb	a1,1(a0)
    80005bdc:	00200713          	li	a4,2
    80005be0:	1ae78a63          	beq	a5,a4,80005d94 <__memset+0x1fc>
    80005be4:	00b50123          	sb	a1,2(a0)
    80005be8:	00300713          	li	a4,3
    80005bec:	18e78463          	beq	a5,a4,80005d74 <__memset+0x1dc>
    80005bf0:	00b501a3          	sb	a1,3(a0)
    80005bf4:	00400713          	li	a4,4
    80005bf8:	1ae78263          	beq	a5,a4,80005d9c <__memset+0x204>
    80005bfc:	00b50223          	sb	a1,4(a0)
    80005c00:	00500713          	li	a4,5
    80005c04:	1ae78063          	beq	a5,a4,80005da4 <__memset+0x20c>
    80005c08:	00b502a3          	sb	a1,5(a0)
    80005c0c:	00700713          	li	a4,7
    80005c10:	18e79e63          	bne	a5,a4,80005dac <__memset+0x214>
    80005c14:	00b50323          	sb	a1,6(a0)
    80005c18:	00700e93          	li	t4,7
    80005c1c:	00859713          	slli	a4,a1,0x8
    80005c20:	00e5e733          	or	a4,a1,a4
    80005c24:	01059e13          	slli	t3,a1,0x10
    80005c28:	01c76e33          	or	t3,a4,t3
    80005c2c:	01859313          	slli	t1,a1,0x18
    80005c30:	006e6333          	or	t1,t3,t1
    80005c34:	02059893          	slli	a7,a1,0x20
    80005c38:	40f60e3b          	subw	t3,a2,a5
    80005c3c:	011368b3          	or	a7,t1,a7
    80005c40:	02859813          	slli	a6,a1,0x28
    80005c44:	0108e833          	or	a6,a7,a6
    80005c48:	03059693          	slli	a3,a1,0x30
    80005c4c:	003e589b          	srliw	a7,t3,0x3
    80005c50:	00d866b3          	or	a3,a6,a3
    80005c54:	03859713          	slli	a4,a1,0x38
    80005c58:	00389813          	slli	a6,a7,0x3
    80005c5c:	00f507b3          	add	a5,a0,a5
    80005c60:	00e6e733          	or	a4,a3,a4
    80005c64:	000e089b          	sext.w	a7,t3
    80005c68:	00f806b3          	add	a3,a6,a5
    80005c6c:	00e7b023          	sd	a4,0(a5)
    80005c70:	00878793          	addi	a5,a5,8
    80005c74:	fed79ce3          	bne	a5,a3,80005c6c <__memset+0xd4>
    80005c78:	ff8e7793          	andi	a5,t3,-8
    80005c7c:	0007871b          	sext.w	a4,a5
    80005c80:	01d787bb          	addw	a5,a5,t4
    80005c84:	0ce88e63          	beq	a7,a4,80005d60 <__memset+0x1c8>
    80005c88:	00f50733          	add	a4,a0,a5
    80005c8c:	00b70023          	sb	a1,0(a4)
    80005c90:	0017871b          	addiw	a4,a5,1
    80005c94:	0cc77663          	bgeu	a4,a2,80005d60 <__memset+0x1c8>
    80005c98:	00e50733          	add	a4,a0,a4
    80005c9c:	00b70023          	sb	a1,0(a4)
    80005ca0:	0027871b          	addiw	a4,a5,2
    80005ca4:	0ac77e63          	bgeu	a4,a2,80005d60 <__memset+0x1c8>
    80005ca8:	00e50733          	add	a4,a0,a4
    80005cac:	00b70023          	sb	a1,0(a4)
    80005cb0:	0037871b          	addiw	a4,a5,3
    80005cb4:	0ac77663          	bgeu	a4,a2,80005d60 <__memset+0x1c8>
    80005cb8:	00e50733          	add	a4,a0,a4
    80005cbc:	00b70023          	sb	a1,0(a4)
    80005cc0:	0047871b          	addiw	a4,a5,4
    80005cc4:	08c77e63          	bgeu	a4,a2,80005d60 <__memset+0x1c8>
    80005cc8:	00e50733          	add	a4,a0,a4
    80005ccc:	00b70023          	sb	a1,0(a4)
    80005cd0:	0057871b          	addiw	a4,a5,5
    80005cd4:	08c77663          	bgeu	a4,a2,80005d60 <__memset+0x1c8>
    80005cd8:	00e50733          	add	a4,a0,a4
    80005cdc:	00b70023          	sb	a1,0(a4)
    80005ce0:	0067871b          	addiw	a4,a5,6
    80005ce4:	06c77e63          	bgeu	a4,a2,80005d60 <__memset+0x1c8>
    80005ce8:	00e50733          	add	a4,a0,a4
    80005cec:	00b70023          	sb	a1,0(a4)
    80005cf0:	0077871b          	addiw	a4,a5,7
    80005cf4:	06c77663          	bgeu	a4,a2,80005d60 <__memset+0x1c8>
    80005cf8:	00e50733          	add	a4,a0,a4
    80005cfc:	00b70023          	sb	a1,0(a4)
    80005d00:	0087871b          	addiw	a4,a5,8
    80005d04:	04c77e63          	bgeu	a4,a2,80005d60 <__memset+0x1c8>
    80005d08:	00e50733          	add	a4,a0,a4
    80005d0c:	00b70023          	sb	a1,0(a4)
    80005d10:	0097871b          	addiw	a4,a5,9
    80005d14:	04c77663          	bgeu	a4,a2,80005d60 <__memset+0x1c8>
    80005d18:	00e50733          	add	a4,a0,a4
    80005d1c:	00b70023          	sb	a1,0(a4)
    80005d20:	00a7871b          	addiw	a4,a5,10
    80005d24:	02c77e63          	bgeu	a4,a2,80005d60 <__memset+0x1c8>
    80005d28:	00e50733          	add	a4,a0,a4
    80005d2c:	00b70023          	sb	a1,0(a4)
    80005d30:	00b7871b          	addiw	a4,a5,11
    80005d34:	02c77663          	bgeu	a4,a2,80005d60 <__memset+0x1c8>
    80005d38:	00e50733          	add	a4,a0,a4
    80005d3c:	00b70023          	sb	a1,0(a4)
    80005d40:	00c7871b          	addiw	a4,a5,12
    80005d44:	00c77e63          	bgeu	a4,a2,80005d60 <__memset+0x1c8>
    80005d48:	00e50733          	add	a4,a0,a4
    80005d4c:	00b70023          	sb	a1,0(a4)
    80005d50:	00d7879b          	addiw	a5,a5,13
    80005d54:	00c7f663          	bgeu	a5,a2,80005d60 <__memset+0x1c8>
    80005d58:	00f507b3          	add	a5,a0,a5
    80005d5c:	00b78023          	sb	a1,0(a5)
    80005d60:	00813403          	ld	s0,8(sp)
    80005d64:	01010113          	addi	sp,sp,16
    80005d68:	00008067          	ret
    80005d6c:	00b00693          	li	a3,11
    80005d70:	e55ff06f          	j	80005bc4 <__memset+0x2c>
    80005d74:	00300e93          	li	t4,3
    80005d78:	ea5ff06f          	j	80005c1c <__memset+0x84>
    80005d7c:	00100e93          	li	t4,1
    80005d80:	e9dff06f          	j	80005c1c <__memset+0x84>
    80005d84:	00000e93          	li	t4,0
    80005d88:	e95ff06f          	j	80005c1c <__memset+0x84>
    80005d8c:	00000793          	li	a5,0
    80005d90:	ef9ff06f          	j	80005c88 <__memset+0xf0>
    80005d94:	00200e93          	li	t4,2
    80005d98:	e85ff06f          	j	80005c1c <__memset+0x84>
    80005d9c:	00400e93          	li	t4,4
    80005da0:	e7dff06f          	j	80005c1c <__memset+0x84>
    80005da4:	00500e93          	li	t4,5
    80005da8:	e75ff06f          	j	80005c1c <__memset+0x84>
    80005dac:	00600e93          	li	t4,6
    80005db0:	e6dff06f          	j	80005c1c <__memset+0x84>

0000000080005db4 <__memmove>:
    80005db4:	ff010113          	addi	sp,sp,-16
    80005db8:	00813423          	sd	s0,8(sp)
    80005dbc:	01010413          	addi	s0,sp,16
    80005dc0:	0e060863          	beqz	a2,80005eb0 <__memmove+0xfc>
    80005dc4:	fff6069b          	addiw	a3,a2,-1
    80005dc8:	0006881b          	sext.w	a6,a3
    80005dcc:	0ea5e863          	bltu	a1,a0,80005ebc <__memmove+0x108>
    80005dd0:	00758713          	addi	a4,a1,7
    80005dd4:	00a5e7b3          	or	a5,a1,a0
    80005dd8:	40a70733          	sub	a4,a4,a0
    80005ddc:	0077f793          	andi	a5,a5,7
    80005de0:	00f73713          	sltiu	a4,a4,15
    80005de4:	00174713          	xori	a4,a4,1
    80005de8:	0017b793          	seqz	a5,a5
    80005dec:	00e7f7b3          	and	a5,a5,a4
    80005df0:	10078863          	beqz	a5,80005f00 <__memmove+0x14c>
    80005df4:	00900793          	li	a5,9
    80005df8:	1107f463          	bgeu	a5,a6,80005f00 <__memmove+0x14c>
    80005dfc:	0036581b          	srliw	a6,a2,0x3
    80005e00:	fff8081b          	addiw	a6,a6,-1
    80005e04:	02081813          	slli	a6,a6,0x20
    80005e08:	01d85893          	srli	a7,a6,0x1d
    80005e0c:	00858813          	addi	a6,a1,8
    80005e10:	00058793          	mv	a5,a1
    80005e14:	00050713          	mv	a4,a0
    80005e18:	01088833          	add	a6,a7,a6
    80005e1c:	0007b883          	ld	a7,0(a5)
    80005e20:	00878793          	addi	a5,a5,8
    80005e24:	00870713          	addi	a4,a4,8
    80005e28:	ff173c23          	sd	a7,-8(a4)
    80005e2c:	ff0798e3          	bne	a5,a6,80005e1c <__memmove+0x68>
    80005e30:	ff867713          	andi	a4,a2,-8
    80005e34:	02071793          	slli	a5,a4,0x20
    80005e38:	0207d793          	srli	a5,a5,0x20
    80005e3c:	00f585b3          	add	a1,a1,a5
    80005e40:	40e686bb          	subw	a3,a3,a4
    80005e44:	00f507b3          	add	a5,a0,a5
    80005e48:	06e60463          	beq	a2,a4,80005eb0 <__memmove+0xfc>
    80005e4c:	0005c703          	lbu	a4,0(a1)
    80005e50:	00e78023          	sb	a4,0(a5)
    80005e54:	04068e63          	beqz	a3,80005eb0 <__memmove+0xfc>
    80005e58:	0015c603          	lbu	a2,1(a1)
    80005e5c:	00100713          	li	a4,1
    80005e60:	00c780a3          	sb	a2,1(a5)
    80005e64:	04e68663          	beq	a3,a4,80005eb0 <__memmove+0xfc>
    80005e68:	0025c603          	lbu	a2,2(a1)
    80005e6c:	00200713          	li	a4,2
    80005e70:	00c78123          	sb	a2,2(a5)
    80005e74:	02e68e63          	beq	a3,a4,80005eb0 <__memmove+0xfc>
    80005e78:	0035c603          	lbu	a2,3(a1)
    80005e7c:	00300713          	li	a4,3
    80005e80:	00c781a3          	sb	a2,3(a5)
    80005e84:	02e68663          	beq	a3,a4,80005eb0 <__memmove+0xfc>
    80005e88:	0045c603          	lbu	a2,4(a1)
    80005e8c:	00400713          	li	a4,4
    80005e90:	00c78223          	sb	a2,4(a5)
    80005e94:	00e68e63          	beq	a3,a4,80005eb0 <__memmove+0xfc>
    80005e98:	0055c603          	lbu	a2,5(a1)
    80005e9c:	00500713          	li	a4,5
    80005ea0:	00c782a3          	sb	a2,5(a5)
    80005ea4:	00e68663          	beq	a3,a4,80005eb0 <__memmove+0xfc>
    80005ea8:	0065c703          	lbu	a4,6(a1)
    80005eac:	00e78323          	sb	a4,6(a5)
    80005eb0:	00813403          	ld	s0,8(sp)
    80005eb4:	01010113          	addi	sp,sp,16
    80005eb8:	00008067          	ret
    80005ebc:	02061713          	slli	a4,a2,0x20
    80005ec0:	02075713          	srli	a4,a4,0x20
    80005ec4:	00e587b3          	add	a5,a1,a4
    80005ec8:	f0f574e3          	bgeu	a0,a5,80005dd0 <__memmove+0x1c>
    80005ecc:	02069613          	slli	a2,a3,0x20
    80005ed0:	02065613          	srli	a2,a2,0x20
    80005ed4:	fff64613          	not	a2,a2
    80005ed8:	00e50733          	add	a4,a0,a4
    80005edc:	00c78633          	add	a2,a5,a2
    80005ee0:	fff7c683          	lbu	a3,-1(a5)
    80005ee4:	fff78793          	addi	a5,a5,-1
    80005ee8:	fff70713          	addi	a4,a4,-1
    80005eec:	00d70023          	sb	a3,0(a4)
    80005ef0:	fec798e3          	bne	a5,a2,80005ee0 <__memmove+0x12c>
    80005ef4:	00813403          	ld	s0,8(sp)
    80005ef8:	01010113          	addi	sp,sp,16
    80005efc:	00008067          	ret
    80005f00:	02069713          	slli	a4,a3,0x20
    80005f04:	02075713          	srli	a4,a4,0x20
    80005f08:	00170713          	addi	a4,a4,1
    80005f0c:	00e50733          	add	a4,a0,a4
    80005f10:	00050793          	mv	a5,a0
    80005f14:	0005c683          	lbu	a3,0(a1)
    80005f18:	00178793          	addi	a5,a5,1
    80005f1c:	00158593          	addi	a1,a1,1
    80005f20:	fed78fa3          	sb	a3,-1(a5)
    80005f24:	fee798e3          	bne	a5,a4,80005f14 <__memmove+0x160>
    80005f28:	f89ff06f          	j	80005eb0 <__memmove+0xfc>

0000000080005f2c <__mem_free>:
    80005f2c:	ff010113          	addi	sp,sp,-16
    80005f30:	00813423          	sd	s0,8(sp)
    80005f34:	01010413          	addi	s0,sp,16
    80005f38:	00002597          	auipc	a1,0x2
    80005f3c:	3b058593          	addi	a1,a1,944 # 800082e8 <freep>
    80005f40:	0005b783          	ld	a5,0(a1)
    80005f44:	ff050693          	addi	a3,a0,-16
    80005f48:	0007b703          	ld	a4,0(a5)
    80005f4c:	00d7fc63          	bgeu	a5,a3,80005f64 <__mem_free+0x38>
    80005f50:	00e6ee63          	bltu	a3,a4,80005f6c <__mem_free+0x40>
    80005f54:	00e7fc63          	bgeu	a5,a4,80005f6c <__mem_free+0x40>
    80005f58:	00070793          	mv	a5,a4
    80005f5c:	0007b703          	ld	a4,0(a5)
    80005f60:	fed7e8e3          	bltu	a5,a3,80005f50 <__mem_free+0x24>
    80005f64:	fee7eae3          	bltu	a5,a4,80005f58 <__mem_free+0x2c>
    80005f68:	fee6f8e3          	bgeu	a3,a4,80005f58 <__mem_free+0x2c>
    80005f6c:	ff852803          	lw	a6,-8(a0)
    80005f70:	02081613          	slli	a2,a6,0x20
    80005f74:	01c65613          	srli	a2,a2,0x1c
    80005f78:	00c68633          	add	a2,a3,a2
    80005f7c:	02c70a63          	beq	a4,a2,80005fb0 <__mem_free+0x84>
    80005f80:	fee53823          	sd	a4,-16(a0)
    80005f84:	0087a503          	lw	a0,8(a5)
    80005f88:	02051613          	slli	a2,a0,0x20
    80005f8c:	01c65613          	srli	a2,a2,0x1c
    80005f90:	00c78633          	add	a2,a5,a2
    80005f94:	04c68263          	beq	a3,a2,80005fd8 <__mem_free+0xac>
    80005f98:	00813403          	ld	s0,8(sp)
    80005f9c:	00d7b023          	sd	a3,0(a5)
    80005fa0:	00f5b023          	sd	a5,0(a1)
    80005fa4:	00000513          	li	a0,0
    80005fa8:	01010113          	addi	sp,sp,16
    80005fac:	00008067          	ret
    80005fb0:	00872603          	lw	a2,8(a4)
    80005fb4:	00073703          	ld	a4,0(a4)
    80005fb8:	0106083b          	addw	a6,a2,a6
    80005fbc:	ff052c23          	sw	a6,-8(a0)
    80005fc0:	fee53823          	sd	a4,-16(a0)
    80005fc4:	0087a503          	lw	a0,8(a5)
    80005fc8:	02051613          	slli	a2,a0,0x20
    80005fcc:	01c65613          	srli	a2,a2,0x1c
    80005fd0:	00c78633          	add	a2,a5,a2
    80005fd4:	fcc692e3          	bne	a3,a2,80005f98 <__mem_free+0x6c>
    80005fd8:	00813403          	ld	s0,8(sp)
    80005fdc:	0105053b          	addw	a0,a0,a6
    80005fe0:	00a7a423          	sw	a0,8(a5)
    80005fe4:	00e7b023          	sd	a4,0(a5)
    80005fe8:	00f5b023          	sd	a5,0(a1)
    80005fec:	00000513          	li	a0,0
    80005ff0:	01010113          	addi	sp,sp,16
    80005ff4:	00008067          	ret

0000000080005ff8 <__mem_alloc>:
    80005ff8:	fc010113          	addi	sp,sp,-64
    80005ffc:	02813823          	sd	s0,48(sp)
    80006000:	02913423          	sd	s1,40(sp)
    80006004:	03213023          	sd	s2,32(sp)
    80006008:	01513423          	sd	s5,8(sp)
    8000600c:	02113c23          	sd	ra,56(sp)
    80006010:	01313c23          	sd	s3,24(sp)
    80006014:	01413823          	sd	s4,16(sp)
    80006018:	01613023          	sd	s6,0(sp)
    8000601c:	04010413          	addi	s0,sp,64
    80006020:	00002a97          	auipc	s5,0x2
    80006024:	2c8a8a93          	addi	s5,s5,712 # 800082e8 <freep>
    80006028:	00f50913          	addi	s2,a0,15
    8000602c:	000ab683          	ld	a3,0(s5)
    80006030:	00495913          	srli	s2,s2,0x4
    80006034:	0019049b          	addiw	s1,s2,1
    80006038:	00048913          	mv	s2,s1
    8000603c:	0c068c63          	beqz	a3,80006114 <__mem_alloc+0x11c>
    80006040:	0006b503          	ld	a0,0(a3)
    80006044:	00852703          	lw	a4,8(a0)
    80006048:	10977063          	bgeu	a4,s1,80006148 <__mem_alloc+0x150>
    8000604c:	000017b7          	lui	a5,0x1
    80006050:	0009099b          	sext.w	s3,s2
    80006054:	0af4e863          	bltu	s1,a5,80006104 <__mem_alloc+0x10c>
    80006058:	02099a13          	slli	s4,s3,0x20
    8000605c:	01ca5a13          	srli	s4,s4,0x1c
    80006060:	fff00b13          	li	s6,-1
    80006064:	0100006f          	j	80006074 <__mem_alloc+0x7c>
    80006068:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000606c:	00852703          	lw	a4,8(a0)
    80006070:	04977463          	bgeu	a4,s1,800060b8 <__mem_alloc+0xc0>
    80006074:	00050793          	mv	a5,a0
    80006078:	fea698e3          	bne	a3,a0,80006068 <__mem_alloc+0x70>
    8000607c:	000a0513          	mv	a0,s4
    80006080:	00000097          	auipc	ra,0x0
    80006084:	1f0080e7          	jalr	496(ra) # 80006270 <kvmincrease>
    80006088:	00050793          	mv	a5,a0
    8000608c:	01050513          	addi	a0,a0,16
    80006090:	07678e63          	beq	a5,s6,8000610c <__mem_alloc+0x114>
    80006094:	0137a423          	sw	s3,8(a5)
    80006098:	00000097          	auipc	ra,0x0
    8000609c:	e94080e7          	jalr	-364(ra) # 80005f2c <__mem_free>
    800060a0:	000ab783          	ld	a5,0(s5)
    800060a4:	06078463          	beqz	a5,8000610c <__mem_alloc+0x114>
    800060a8:	0007b503          	ld	a0,0(a5)
    800060ac:	00078693          	mv	a3,a5
    800060b0:	00852703          	lw	a4,8(a0)
    800060b4:	fc9760e3          	bltu	a4,s1,80006074 <__mem_alloc+0x7c>
    800060b8:	08e48263          	beq	s1,a4,8000613c <__mem_alloc+0x144>
    800060bc:	4127073b          	subw	a4,a4,s2
    800060c0:	02071693          	slli	a3,a4,0x20
    800060c4:	01c6d693          	srli	a3,a3,0x1c
    800060c8:	00e52423          	sw	a4,8(a0)
    800060cc:	00d50533          	add	a0,a0,a3
    800060d0:	01252423          	sw	s2,8(a0)
    800060d4:	00fab023          	sd	a5,0(s5)
    800060d8:	01050513          	addi	a0,a0,16
    800060dc:	03813083          	ld	ra,56(sp)
    800060e0:	03013403          	ld	s0,48(sp)
    800060e4:	02813483          	ld	s1,40(sp)
    800060e8:	02013903          	ld	s2,32(sp)
    800060ec:	01813983          	ld	s3,24(sp)
    800060f0:	01013a03          	ld	s4,16(sp)
    800060f4:	00813a83          	ld	s5,8(sp)
    800060f8:	00013b03          	ld	s6,0(sp)
    800060fc:	04010113          	addi	sp,sp,64
    80006100:	00008067          	ret
    80006104:	000019b7          	lui	s3,0x1
    80006108:	f51ff06f          	j	80006058 <__mem_alloc+0x60>
    8000610c:	00000513          	li	a0,0
    80006110:	fcdff06f          	j	800060dc <__mem_alloc+0xe4>
    80006114:	00003797          	auipc	a5,0x3
    80006118:	47c78793          	addi	a5,a5,1148 # 80009590 <base>
    8000611c:	00078513          	mv	a0,a5
    80006120:	00fab023          	sd	a5,0(s5)
    80006124:	00f7b023          	sd	a5,0(a5)
    80006128:	00000713          	li	a4,0
    8000612c:	00003797          	auipc	a5,0x3
    80006130:	4607a623          	sw	zero,1132(a5) # 80009598 <base+0x8>
    80006134:	00050693          	mv	a3,a0
    80006138:	f11ff06f          	j	80006048 <__mem_alloc+0x50>
    8000613c:	00053703          	ld	a4,0(a0)
    80006140:	00e7b023          	sd	a4,0(a5)
    80006144:	f91ff06f          	j	800060d4 <__mem_alloc+0xdc>
    80006148:	00068793          	mv	a5,a3
    8000614c:	f6dff06f          	j	800060b8 <__mem_alloc+0xc0>

0000000080006150 <__putc>:
    80006150:	fe010113          	addi	sp,sp,-32
    80006154:	00813823          	sd	s0,16(sp)
    80006158:	00113c23          	sd	ra,24(sp)
    8000615c:	02010413          	addi	s0,sp,32
    80006160:	00050793          	mv	a5,a0
    80006164:	fef40593          	addi	a1,s0,-17
    80006168:	00100613          	li	a2,1
    8000616c:	00000513          	li	a0,0
    80006170:	fef407a3          	sb	a5,-17(s0)
    80006174:	fffff097          	auipc	ra,0xfffff
    80006178:	918080e7          	jalr	-1768(ra) # 80004a8c <console_write>
    8000617c:	01813083          	ld	ra,24(sp)
    80006180:	01013403          	ld	s0,16(sp)
    80006184:	02010113          	addi	sp,sp,32
    80006188:	00008067          	ret

000000008000618c <__getc>:
    8000618c:	fe010113          	addi	sp,sp,-32
    80006190:	00813823          	sd	s0,16(sp)
    80006194:	00113c23          	sd	ra,24(sp)
    80006198:	02010413          	addi	s0,sp,32
    8000619c:	fe840593          	addi	a1,s0,-24
    800061a0:	00100613          	li	a2,1
    800061a4:	00000513          	li	a0,0
    800061a8:	fffff097          	auipc	ra,0xfffff
    800061ac:	8c4080e7          	jalr	-1852(ra) # 80004a6c <console_read>
    800061b0:	fe844503          	lbu	a0,-24(s0)
    800061b4:	01813083          	ld	ra,24(sp)
    800061b8:	01013403          	ld	s0,16(sp)
    800061bc:	02010113          	addi	sp,sp,32
    800061c0:	00008067          	ret

00000000800061c4 <console_handler>:
    800061c4:	fe010113          	addi	sp,sp,-32
    800061c8:	00813823          	sd	s0,16(sp)
    800061cc:	00113c23          	sd	ra,24(sp)
    800061d0:	00913423          	sd	s1,8(sp)
    800061d4:	02010413          	addi	s0,sp,32
    800061d8:	14202773          	csrr	a4,scause
    800061dc:	100027f3          	csrr	a5,sstatus
    800061e0:	0027f793          	andi	a5,a5,2
    800061e4:	06079e63          	bnez	a5,80006260 <console_handler+0x9c>
    800061e8:	00074c63          	bltz	a4,80006200 <console_handler+0x3c>
    800061ec:	01813083          	ld	ra,24(sp)
    800061f0:	01013403          	ld	s0,16(sp)
    800061f4:	00813483          	ld	s1,8(sp)
    800061f8:	02010113          	addi	sp,sp,32
    800061fc:	00008067          	ret
    80006200:	0ff77713          	andi	a4,a4,255
    80006204:	00900793          	li	a5,9
    80006208:	fef712e3          	bne	a4,a5,800061ec <console_handler+0x28>
    8000620c:	ffffe097          	auipc	ra,0xffffe
    80006210:	4b8080e7          	jalr	1208(ra) # 800046c4 <plic_claim>
    80006214:	00a00793          	li	a5,10
    80006218:	00050493          	mv	s1,a0
    8000621c:	02f50c63          	beq	a0,a5,80006254 <console_handler+0x90>
    80006220:	fc0506e3          	beqz	a0,800061ec <console_handler+0x28>
    80006224:	00050593          	mv	a1,a0
    80006228:	00001517          	auipc	a0,0x1
    8000622c:	45850513          	addi	a0,a0,1112 # 80007680 <_ZZ12printIntegermE6digits+0xe0>
    80006230:	fffff097          	auipc	ra,0xfffff
    80006234:	8d8080e7          	jalr	-1832(ra) # 80004b08 <__printf>
    80006238:	01013403          	ld	s0,16(sp)
    8000623c:	01813083          	ld	ra,24(sp)
    80006240:	00048513          	mv	a0,s1
    80006244:	00813483          	ld	s1,8(sp)
    80006248:	02010113          	addi	sp,sp,32
    8000624c:	ffffe317          	auipc	t1,0xffffe
    80006250:	4b030067          	jr	1200(t1) # 800046fc <plic_complete>
    80006254:	fffff097          	auipc	ra,0xfffff
    80006258:	1bc080e7          	jalr	444(ra) # 80005410 <uartintr>
    8000625c:	fddff06f          	j	80006238 <console_handler+0x74>
    80006260:	00001517          	auipc	a0,0x1
    80006264:	52050513          	addi	a0,a0,1312 # 80007780 <digits+0x78>
    80006268:	fffff097          	auipc	ra,0xfffff
    8000626c:	844080e7          	jalr	-1980(ra) # 80004aac <panic>

0000000080006270 <kvmincrease>:
    80006270:	fe010113          	addi	sp,sp,-32
    80006274:	01213023          	sd	s2,0(sp)
    80006278:	00001937          	lui	s2,0x1
    8000627c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80006280:	00813823          	sd	s0,16(sp)
    80006284:	00113c23          	sd	ra,24(sp)
    80006288:	00913423          	sd	s1,8(sp)
    8000628c:	02010413          	addi	s0,sp,32
    80006290:	01250933          	add	s2,a0,s2
    80006294:	00c95913          	srli	s2,s2,0xc
    80006298:	02090863          	beqz	s2,800062c8 <kvmincrease+0x58>
    8000629c:	00000493          	li	s1,0
    800062a0:	00148493          	addi	s1,s1,1
    800062a4:	fffff097          	auipc	ra,0xfffff
    800062a8:	4bc080e7          	jalr	1212(ra) # 80005760 <kalloc>
    800062ac:	fe991ae3          	bne	s2,s1,800062a0 <kvmincrease+0x30>
    800062b0:	01813083          	ld	ra,24(sp)
    800062b4:	01013403          	ld	s0,16(sp)
    800062b8:	00813483          	ld	s1,8(sp)
    800062bc:	00013903          	ld	s2,0(sp)
    800062c0:	02010113          	addi	sp,sp,32
    800062c4:	00008067          	ret
    800062c8:	01813083          	ld	ra,24(sp)
    800062cc:	01013403          	ld	s0,16(sp)
    800062d0:	00813483          	ld	s1,8(sp)
    800062d4:	00013903          	ld	s2,0(sp)
    800062d8:	00000513          	li	a0,0
    800062dc:	02010113          	addi	sp,sp,32
    800062e0:	00008067          	ret
	...
