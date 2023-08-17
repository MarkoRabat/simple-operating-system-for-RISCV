
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00008117          	auipc	sp,0x8
    80000004:	19813103          	ld	sp,408(sp) # 80008198 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	495030ef          	jal	ra,80003cb0 <start>

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
    80001084:	045020ef          	jal	ra,800038c8 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001144:	890080e7          	jalr	-1904(ra) # 800019d0 <_ZN3TCB12createThreadEPFvvE>
    80001148:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    8000114c:	00007797          	auipc	a5,0x7
    80001150:	0547b783          	ld	a5,84(a5) # 800081a0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001154:	00a7b023          	sd	a0,0(a5)

    threads[1] = TCB::createThread(workerBodyA);
    80001158:	00007517          	auipc	a0,0x7
    8000115c:	03853503          	ld	a0,56(a0) # 80008190 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001160:	00001097          	auipc	ra,0x1
    80001164:	870080e7          	jalr	-1936(ra) # 800019d0 <_ZN3TCB12createThreadEPFvvE>
    80001168:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    8000116c:	00006517          	auipc	a0,0x6
    80001170:	eb450513          	addi	a0,a0,-332 # 80007020 <CONSOLE_STATUS+0x10>
    80001174:	00003097          	auipc	ra,0x3
    80001178:	9c4080e7          	jalr	-1596(ra) # 80003b38 <_Z11printStringPKc>
    threads[2] = TCB::createThread(workerBodyB);
    8000117c:	00007517          	auipc	a0,0x7
    80001180:	ffc53503          	ld	a0,-4(a0) # 80008178 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001184:	00001097          	auipc	ra,0x1
    80001188:	84c080e7          	jalr	-1972(ra) # 800019d0 <_ZN3TCB12createThreadEPFvvE>
    8000118c:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    80001190:	00006517          	auipc	a0,0x6
    80001194:	ea850513          	addi	a0,a0,-344 # 80007038 <CONSOLE_STATUS+0x28>
    80001198:	00003097          	auipc	ra,0x3
    8000119c:	9a0080e7          	jalr	-1632(ra) # 80003b38 <_Z11printStringPKc>
    threads[3] = TCB::createThread(workerBodyC);
    800011a0:	00007517          	auipc	a0,0x7
    800011a4:	01053503          	ld	a0,16(a0) # 800081b0 <_GLOBAL_OFFSET_TABLE_+0x58>
    800011a8:	00001097          	auipc	ra,0x1
    800011ac:	828080e7          	jalr	-2008(ra) # 800019d0 <_ZN3TCB12createThreadEPFvvE>
    800011b0:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    800011b4:	00006517          	auipc	a0,0x6
    800011b8:	e9c50513          	addi	a0,a0,-356 # 80007050 <CONSOLE_STATUS+0x40>
    800011bc:	00003097          	auipc	ra,0x3
    800011c0:	97c080e7          	jalr	-1668(ra) # 80003b38 <_Z11printStringPKc>
    threads[4] = TCB::createThread(workerBodyD);
    800011c4:	00007517          	auipc	a0,0x7
    800011c8:	ff453503          	ld	a0,-12(a0) # 800081b8 <_GLOBAL_OFFSET_TABLE_+0x60>
    800011cc:	00001097          	auipc	ra,0x1
    800011d0:	804080e7          	jalr	-2044(ra) # 800019d0 <_ZN3TCB12createThreadEPFvvE>
    800011d4:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    800011d8:	00006517          	auipc	a0,0x6
    800011dc:	e9050513          	addi	a0,a0,-368 # 80007068 <CONSOLE_STATUS+0x58>
    800011e0:	00003097          	auipc	ra,0x3
    800011e4:	958080e7          	jalr	-1704(ra) # 80003b38 <_Z11printStringPKc>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800011e8:	00007797          	auipc	a5,0x7
    800011ec:	f887b783          	ld	a5,-120(a5) # 80008170 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80001204:	898080e7          	jalr	-1896(ra) # 80001a98 <_ZN3TCB5yieldEv>
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
    80001248:	f60080e7          	jalr	-160(ra) # 800031a4 <_ZdlPv>
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
    8000126c:	f64080e7          	jalr	-156(ra) # 800031cc <_ZdaPv>
    80001270:	fd1ff06f          	j	80001240 <_Z5main2v+0x11c>
    }
    printString("Finished\n");
    80001274:	00006517          	auipc	a0,0x6
    80001278:	e0c50513          	addi	a0,a0,-500 # 80007080 <CONSOLE_STATUS+0x70>
    8000127c:	00003097          	auipc	ra,0x3
    80001280:	8bc080e7          	jalr	-1860(ra) # 80003b38 <_Z11printStringPKc>

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
    8000130c:	790080e7          	jalr	1936(ra) # 80001a98 <_ZN3TCB5yieldEv>
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
    8000136c:	00002097          	auipc	ra,0x2
    80001370:	7cc080e7          	jalr	1996(ra) # 80003b38 <_Z11printStringPKc>
        printInteger(i);
    80001374:	00048513          	mv	a0,s1
    80001378:	00003097          	auipc	ra,0x3
    8000137c:	830080e7          	jalr	-2000(ra) # 80003ba8 <_Z12printIntegerm>
        printString("\n");
    80001380:	00006517          	auipc	a0,0x6
    80001384:	d0850513          	addi	a0,a0,-760 # 80007088 <CONSOLE_STATUS+0x78>
    80001388:	00002097          	auipc	ra,0x2
    8000138c:	7b0080e7          	jalr	1968(ra) # 80003b38 <_Z11printStringPKc>
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
    80001404:	00002097          	auipc	ra,0x2
    80001408:	734080e7          	jalr	1844(ra) # 80003b38 <_Z11printStringPKc>
        printInteger(i);
    8000140c:	00048513          	mv	a0,s1
    80001410:	00002097          	auipc	ra,0x2
    80001414:	798080e7          	jalr	1944(ra) # 80003ba8 <_Z12printIntegerm>
        printString("\n");
    80001418:	00006517          	auipc	a0,0x6
    8000141c:	c7050513          	addi	a0,a0,-912 # 80007088 <CONSOLE_STATUS+0x78>
    80001420:	00002097          	auipc	ra,0x2
    80001424:	718080e7          	jalr	1816(ra) # 80003b38 <_Z11printStringPKc>
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
    8000146c:	00002097          	auipc	ra,0x2
    80001470:	6cc080e7          	jalr	1740(ra) # 80003b38 <_Z11printStringPKc>
        printInteger(i);
    80001474:	00048513          	mv	a0,s1
    80001478:	00002097          	auipc	ra,0x2
    8000147c:	730080e7          	jalr	1840(ra) # 80003ba8 <_Z12printIntegerm>
        printString("\n");
    80001480:	00006517          	auipc	a0,0x6
    80001484:	c0850513          	addi	a0,a0,-1016 # 80007088 <CONSOLE_STATUS+0x78>
    80001488:	00002097          	auipc	ra,0x2
    8000148c:	6b0080e7          	jalr	1712(ra) # 80003b38 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001490:	0014849b          	addiw	s1,s1,1
    80001494:	0ff4f493          	andi	s1,s1,255
    80001498:	00200793          	li	a5,2
    8000149c:	fc97f4e3          	bgeu	a5,s1,80001464 <_Z11workerBodyCv+0x20>
    }

    printString("C: yield\n");
    800014a0:	00006517          	auipc	a0,0x6
    800014a4:	c0850513          	addi	a0,a0,-1016 # 800070a8 <CONSOLE_STATUS+0x98>
    800014a8:	00002097          	auipc	ra,0x2
    800014ac:	690080e7          	jalr	1680(ra) # 80003b38 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800014b0:	00700313          	li	t1,7
    TCB::yield();
    800014b4:	00000097          	auipc	ra,0x0
    800014b8:	5e4080e7          	jalr	1508(ra) # 80001a98 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800014bc:	00030913          	mv	s2,t1

    printString("C: t1=");
    800014c0:	00006517          	auipc	a0,0x6
    800014c4:	bf850513          	addi	a0,a0,-1032 # 800070b8 <CONSOLE_STATUS+0xa8>
    800014c8:	00002097          	auipc	ra,0x2
    800014cc:	670080e7          	jalr	1648(ra) # 80003b38 <_Z11printStringPKc>
    printInteger(t1);
    800014d0:	00090513          	mv	a0,s2
    800014d4:	00002097          	auipc	ra,0x2
    800014d8:	6d4080e7          	jalr	1748(ra) # 80003ba8 <_Z12printIntegerm>
    printString("\n");
    800014dc:	00006517          	auipc	a0,0x6
    800014e0:	bac50513          	addi	a0,a0,-1108 # 80007088 <CONSOLE_STATUS+0x78>
    800014e4:	00002097          	auipc	ra,0x2
    800014e8:	654080e7          	jalr	1620(ra) # 80003b38 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800014ec:	00c00513          	li	a0,12
    800014f0:	00000097          	auipc	ra,0x0
    800014f4:	db0080e7          	jalr	-592(ra) # 800012a0 <_ZL9fibonaccim>
    800014f8:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800014fc:	00006517          	auipc	a0,0x6
    80001500:	bc450513          	addi	a0,a0,-1084 # 800070c0 <CONSOLE_STATUS+0xb0>
    80001504:	00002097          	auipc	ra,0x2
    80001508:	634080e7          	jalr	1588(ra) # 80003b38 <_Z11printStringPKc>
    printInteger(result);
    8000150c:	00090513          	mv	a0,s2
    80001510:	00002097          	auipc	ra,0x2
    80001514:	698080e7          	jalr	1688(ra) # 80003ba8 <_Z12printIntegerm>
    printString("\n");
    80001518:	00006517          	auipc	a0,0x6
    8000151c:	b7050513          	addi	a0,a0,-1168 # 80007088 <CONSOLE_STATUS+0x78>
    80001520:	00002097          	auipc	ra,0x2
    80001524:	618080e7          	jalr	1560(ra) # 80003b38 <_Z11printStringPKc>
    80001528:	0380006f          	j	80001560 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    8000152c:	00006517          	auipc	a0,0x6
    80001530:	b7450513          	addi	a0,a0,-1164 # 800070a0 <CONSOLE_STATUS+0x90>
    80001534:	00002097          	auipc	ra,0x2
    80001538:	604080e7          	jalr	1540(ra) # 80003b38 <_Z11printStringPKc>
        printInteger(i);
    8000153c:	00048513          	mv	a0,s1
    80001540:	00002097          	auipc	ra,0x2
    80001544:	668080e7          	jalr	1640(ra) # 80003ba8 <_Z12printIntegerm>
        printString("\n");
    80001548:	00006517          	auipc	a0,0x6
    8000154c:	b4050513          	addi	a0,a0,-1216 # 80007088 <CONSOLE_STATUS+0x78>
    80001550:	00002097          	auipc	ra,0x2
    80001554:	5e8080e7          	jalr	1512(ra) # 80003b38 <_Z11printStringPKc>
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
    800015ac:	590080e7          	jalr	1424(ra) # 80003b38 <_Z11printStringPKc>
        printInteger(i);
    800015b0:	00048513          	mv	a0,s1
    800015b4:	00002097          	auipc	ra,0x2
    800015b8:	5f4080e7          	jalr	1524(ra) # 80003ba8 <_Z12printIntegerm>
        printString("\n");
    800015bc:	00006517          	auipc	a0,0x6
    800015c0:	acc50513          	addi	a0,a0,-1332 # 80007088 <CONSOLE_STATUS+0x78>
    800015c4:	00002097          	auipc	ra,0x2
    800015c8:	574080e7          	jalr	1396(ra) # 80003b38 <_Z11printStringPKc>
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
    800015e8:	554080e7          	jalr	1364(ra) # 80003b38 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800015ec:	00500313          	li	t1,5
    TCB::yield();
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	4a8080e7          	jalr	1192(ra) # 80001a98 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    800015f8:	01000513          	li	a0,16
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	ca4080e7          	jalr	-860(ra) # 800012a0 <_ZL9fibonaccim>
    80001604:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001608:	00006517          	auipc	a0,0x6
    8000160c:	ae050513          	addi	a0,a0,-1312 # 800070e8 <CONSOLE_STATUS+0xd8>
    80001610:	00002097          	auipc	ra,0x2
    80001614:	528080e7          	jalr	1320(ra) # 80003b38 <_Z11printStringPKc>
    printInteger(result);
    80001618:	00090513          	mv	a0,s2
    8000161c:	00002097          	auipc	ra,0x2
    80001620:	58c080e7          	jalr	1420(ra) # 80003ba8 <_Z12printIntegerm>
    printString("\n");
    80001624:	00006517          	auipc	a0,0x6
    80001628:	a6450513          	addi	a0,a0,-1436 # 80007088 <CONSOLE_STATUS+0x78>
    8000162c:	00002097          	auipc	ra,0x2
    80001630:	50c080e7          	jalr	1292(ra) # 80003b38 <_Z11printStringPKc>
    80001634:	0380006f          	j	8000166c <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    80001638:	00006517          	auipc	a0,0x6
    8000163c:	a9850513          	addi	a0,a0,-1384 # 800070d0 <CONSOLE_STATUS+0xc0>
    80001640:	00002097          	auipc	ra,0x2
    80001644:	4f8080e7          	jalr	1272(ra) # 80003b38 <_Z11printStringPKc>
        printInteger(i);
    80001648:	00048513          	mv	a0,s1
    8000164c:	00002097          	auipc	ra,0x2
    80001650:	55c080e7          	jalr	1372(ra) # 80003ba8 <_Z12printIntegerm>
        printString("\n");
    80001654:	00006517          	auipc	a0,0x6
    80001658:	a3450513          	addi	a0,a0,-1484 # 80007088 <CONSOLE_STATUS+0x78>
    8000165c:	00002097          	auipc	ra,0x2
    80001660:	4dc080e7          	jalr	1244(ra) # 80003b38 <_Z11printStringPKc>
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
    8000168c:	81010113          	addi	sp,sp,-2032
    80001690:	7e113423          	sd	ra,2024(sp)
    80001694:	7e813023          	sd	s0,2016(sp)
    80001698:	7c913c23          	sd	s1,2008(sp)
    8000169c:	7d213823          	sd	s2,2000(sp)
    800016a0:	7d313423          	sd	s3,1992(sp)
    800016a4:	7d413023          	sd	s4,1984(sp)
    800016a8:	7f010413          	addi	s0,sp,2032
    800016ac:	b3010113          	addi	sp,sp,-1232
        );
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    }
    void* operator new(size_t size) {
        return MemoryAllocator::instance()->kmem_alloc(size);
    800016b0:	00000097          	auipc	ra,0x0
    800016b4:	5bc080e7          	jalr	1468(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    800016b8:	04000593          	li	a1,64
    800016bc:	00000097          	auipc	ra,0x0
    800016c0:	694080e7          	jalr	1684(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
    800016c4:	00050993          	mv	s3,a0
            : initialNumberOfObjects(initialObjectNumber), numberOfObjects(initialObjectNumber),  objectSize(objectSize) {
    800016c8:	14000793          	li	a5,320
    800016cc:	00f53023          	sd	a5,0(a0)
    800016d0:	00f53423          	sd	a5,8(a0)
    800016d4:	00100793          	li	a5,1
    800016d8:	00f53c23          	sd	a5,24(a0)
    800016dc:	02f53823          	sd	a5,48(a0)
    800016e0:	02053c23          	sd	zero,56(a0)
        bitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    800016e4:	00000097          	auipc	ra,0x0
    800016e8:	588080e7          	jalr	1416(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    800016ec:	0309b583          	ld	a1,48(s3)
    800016f0:	00359593          	slli	a1,a1,0x3
    800016f4:	00000097          	auipc	ra,0x0
    800016f8:	65c080e7          	jalr	1628(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
    800016fc:	02a9b423          	sd	a0,40(s3)
        objectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(numberOfAllocations * sizeof(uint8*));
    80001700:	00000097          	auipc	ra,0x0
    80001704:	56c080e7          	jalr	1388(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80001708:	0309b583          	ld	a1,48(s3)
    8000170c:	00359593          	slli	a1,a1,0x3
    80001710:	00000097          	auipc	ra,0x0
    80001714:	640080e7          	jalr	1600(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
    80001718:	02a9b023          	sd	a0,32(s3)
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    8000171c:	0089b703          	ld	a4,8(s3)
    80001720:	ff877793          	andi	a5,a4,-8
    80001724:	02f70463          	beq	a4,a5,8000174c <main+0xc0>
    80001728:	00800713          	li	a4,8
    8000172c:	00e787b3          	add	a5,a5,a4
    80001730:	00f9b423          	sd	a5,8(s3)
    80001734:	00f9b023          	sd	a5,0(s3)
        memorySizeForBits = numberOfObjects / 8;
    80001738:	0037d793          	srli	a5,a5,0x3
    8000173c:	00f9b823          	sd	a5,16(s3)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80001740:	00000097          	auipc	ra,0x0
    80001744:	52c080e7          	jalr	1324(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80001748:	00c0006f          	j	80001754 <main+0xc8>
        initialNumberOfObjects = numberOfObjects = numberOfObjects / 8 * 8 + 8 * (numberOfObjects / 8 * 8 != numberOfObjects);
    8000174c:	00000713          	li	a4,0
    80001750:	fddff06f          	j	8000172c <main+0xa0>
                memorySizeForBits + initialNumberOfObjects * objectSize
    80001754:	0109b583          	ld	a1,16(s3)
    80001758:	0009b783          	ld	a5,0(s3)
        bitVectors[0] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    8000175c:	0289b483          	ld	s1,40(s3)
    80001760:	00f585b3          	add	a1,a1,a5
    80001764:	00000097          	auipc	ra,0x0
    80001768:	5ec080e7          	jalr	1516(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
    8000176c:	00a4b023          	sd	a0,0(s1)
        objectVectors[0] = bitVectors[0] + memorySizeForBits;   // start of memory for objects
    80001770:	0289b783          	ld	a5,40(s3)
    80001774:	0007b783          	ld	a5,0(a5)
    80001778:	0109b683          	ld	a3,16(s3)
    8000177c:	0209b703          	ld	a4,32(s3)
    80001780:	00d787b3          	add	a5,a5,a3
    80001784:	00f73023          	sd	a5,0(a4)
        for (size_t i = 0; i < memorySizeForBits; bitVectors[0][i++] = 0);
    80001788:	00000793          	li	a5,0
    8000178c:	0109b703          	ld	a4,16(s3)
    80001790:	00e7fe63          	bgeu	a5,a4,800017ac <main+0x120>
    80001794:	0289b703          	ld	a4,40(s3)
    80001798:	00073703          	ld	a4,0(a4)
    8000179c:	00f70733          	add	a4,a4,a5
    800017a0:	00070023          	sb	zero,0(a4)
    800017a4:	00178793          	addi	a5,a5,1
    800017a8:	fe5ff06f          	j	8000178c <main+0x100>
    //KObjectAllocator* newObj = new KObjectAllocator(sizeof(uint8), 4);
    KObjectAllocator* newObj = new KObjectAllocator(sizeof(uint8));

    void* objArr[400];
    size_t objNumber = 0; //newObj->getNumberOfObjects();
    for (int i = 0; i < 400; ++i) {
    800017ac:	00000493          	li	s1,0
    size_t objNumber = 0; //newObj->getNumberOfObjects();
    800017b0:	00000a13          	li	s4,0
    800017b4:	0640006f          	j	80001818 <main+0x18c>
        objArr[i] = newObj->allocateNewObject();
        if (i == 14) newObj->freeObject(objArr[4]);
    800017b8:	fffff7b7          	lui	a5,0xfffff
    800017bc:	00f687b3          	add	a5,a3,a5
    800017c0:	3a07b583          	ld	a1,928(a5) # fffffffffffff3a0 <end+0xffffffff7fff5ee0>
    800017c4:	00098513          	mv	a0,s3
    800017c8:	00002097          	auipc	ra,0x2
    800017cc:	ddc080e7          	jalr	-548(ra) # 800035a4 <_ZN16KObjectAllocator10freeObjectEPv>
    800017d0:	0800006f          	j	80001850 <main+0x1c4>
        if (i == 14) newObj->freeObject(objArr[9]);
    800017d4:	fffff7b7          	lui	a5,0xfffff
    800017d8:	fd040713          	addi	a4,s0,-48
    800017dc:	00f707b3          	add	a5,a4,a5
    800017e0:	3c87b583          	ld	a1,968(a5) # fffffffffffff3c8 <end+0xffffffff7fff5f08>
    800017e4:	00098513          	mv	a0,s3
    800017e8:	00002097          	auipc	ra,0x2
    800017ec:	dbc080e7          	jalr	-580(ra) # 800035a4 <_ZN16KObjectAllocator10freeObjectEPv>
    800017f0:	0680006f          	j	80001858 <main+0x1cc>
        if (objNumber != newObj->getNumberOfObjects() || i % 100 == 0) {
            objNumber = newObj->getNumberOfObjects();
            //printString("\nobjectNumber: "); printInteger(newObj->getNumberOfObjects()); printString("\n");
            //printString("numberOfAllocations: "); printInteger(newObj->getNumberOfAllocations()); printString("\n");
            //printString("\n\n");
            newObj->printInternalMemory();
    800017f4:	00098513          	mv	a0,s3
    800017f8:	00002097          	auipc	ra,0x2
    800017fc:	9fc080e7          	jalr	-1540(ra) # 800031f4 <_ZN16KObjectAllocator19printInternalMemoryEv>
            printString("\n");
    80001800:	00006517          	auipc	a0,0x6
    80001804:	88850513          	addi	a0,a0,-1912 # 80007088 <CONSOLE_STATUS+0x78>
    80001808:	00002097          	auipc	ra,0x2
    8000180c:	330080e7          	jalr	816(ra) # 80003b38 <_Z11printStringPKc>
            objNumber = newObj->getNumberOfObjects();
    80001810:	00090a13          	mv	s4,s2
    for (int i = 0; i < 400; ++i) {
    80001814:	0014849b          	addiw	s1,s1,1
    80001818:	18f00793          	li	a5,399
    8000181c:	0497ce63          	blt	a5,s1,80001878 <main+0x1ec>
        objArr[i] = newObj->allocateNewObject();
    80001820:	00098513          	mv	a0,s3
    80001824:	00002097          	auipc	ra,0x2
    80001828:	000080e7          	jalr	ra # 80003824 <_ZN16KObjectAllocator17allocateNewObjectEv>
    8000182c:	00050913          	mv	s2,a0
    80001830:	fffff737          	lui	a4,0xfffff
    80001834:	00349793          	slli	a5,s1,0x3
    80001838:	fd040693          	addi	a3,s0,-48
    8000183c:	00e68733          	add	a4,a3,a4
    80001840:	00f707b3          	add	a5,a4,a5
    80001844:	38a7b023          	sd	a0,896(a5)
        if (i == 14) newObj->freeObject(objArr[4]);
    80001848:	00e00793          	li	a5,14
    8000184c:	f6f486e3          	beq	s1,a5,800017b8 <main+0x12c>
        if (i == 14) newObj->freeObject(objArr[9]);
    80001850:	00e00793          	li	a5,14
    80001854:	f8f480e3          	beq	s1,a5,800017d4 <main+0x148>
        *(uint8*) objArr[i] = 128;
    80001858:	f8000793          	li	a5,-128
    8000185c:	00f90023          	sb	a5,0(s2)
        MemoryAllocator::instance()->kmem_free(p);
    }
    void printInternalMemory();
    size_t getObjectSize() { return objectSize; }
    size_t getInitialNumberOfObjects() { return initialNumberOfObjects; }
    size_t getNumberOfObjects() { return numberOfObjects; }
    80001860:	0089b903          	ld	s2,8(s3)
        if (objNumber != newObj->getNumberOfObjects() || i % 100 == 0) {
    80001864:	f92a18e3          	bne	s4,s2,800017f4 <main+0x168>
    80001868:	06400793          	li	a5,100
    8000186c:	02f4e7bb          	remw	a5,s1,a5
    80001870:	fa0792e3          	bnez	a5,80001814 <main+0x188>
    80001874:	f81ff06f          	j	800017f4 <main+0x168>
        }
    }

    for (int i = 0; i < 10; ++i) newObj->freeObject(objArr[i]);
    80001878:	00000493          	li	s1,0
    8000187c:	00900793          	li	a5,9
    80001880:	0297c863          	blt	a5,s1,800018b0 <main+0x224>
    80001884:	fffff7b7          	lui	a5,0xfffff
    80001888:	00349713          	slli	a4,s1,0x3
    8000188c:	fd040693          	addi	a3,s0,-48
    80001890:	00f687b3          	add	a5,a3,a5
    80001894:	00e787b3          	add	a5,a5,a4
    80001898:	3807b583          	ld	a1,896(a5) # fffffffffffff380 <end+0xffffffff7fff5ec0>
    8000189c:	00098513          	mv	a0,s3
    800018a0:	00002097          	auipc	ra,0x2
    800018a4:	d04080e7          	jalr	-764(ra) # 800035a4 <_ZN16KObjectAllocator10freeObjectEPv>
    800018a8:	0014849b          	addiw	s1,s1,1
    800018ac:	fd1ff06f          	j	8000187c <main+0x1f0>


    delete newObj;
    800018b0:	00098863          	beqz	s3,800018c0 <main+0x234>
    800018b4:	00098513          	mv	a0,s3
    800018b8:	00000097          	auipc	ra,0x0
    800018bc:	074080e7          	jalr	116(ra) # 8000192c <_ZN16KObjectAllocatordlEPv>
    /*printString("\nKObjectAllocator tests:\n");
    KObjectAllocatorTest* t2 = new KObjectAllocatorTest;
    t2->runTests();
    delete t2;*/

    printString("\nMemory tests:\n");
    800018c0:	00006517          	auipc	a0,0x6
    800018c4:	83850513          	addi	a0,a0,-1992 # 800070f8 <CONSOLE_STATUS+0xe8>
    800018c8:	00002097          	auipc	ra,0x2
    800018cc:	270080e7          	jalr	624(ra) # 80003b38 <_Z11printStringPKc>
    MemoryAllocatorTest t1;
    t1.runTests();
    800018d0:	fffff537          	lui	a0,0xfffff
    800018d4:	37850513          	addi	a0,a0,888 # fffffffffffff378 <end+0xffffffff7fff5eb8>
    800018d8:	fd040793          	addi	a5,s0,-48
    800018dc:	00a78533          	add	a0,a5,a0
    800018e0:	00001097          	auipc	ra,0x1
    800018e4:	654080e7          	jalr	1620(ra) # 80002f34 <_ZN19MemoryAllocatorTest8runTestsEv>


    return 0;
    800018e8:	00000513          	li	a0,0
    800018ec:	4d010113          	addi	sp,sp,1232
    800018f0:	7e813083          	ld	ra,2024(sp)
    800018f4:	7e013403          	ld	s0,2016(sp)
    800018f8:	7d813483          	ld	s1,2008(sp)
    800018fc:	7d013903          	ld	s2,2000(sp)
    80001900:	7c813983          	ld	s3,1992(sp)
    80001904:	7c013a03          	ld	s4,1984(sp)
    80001908:	7f010113          	addi	sp,sp,2032
    8000190c:	00008067          	ret
    80001910:	00050493          	mv	s1,a0
    KObjectAllocator* newObj = new KObjectAllocator(sizeof(uint8));
    80001914:	00098513          	mv	a0,s3
    80001918:	00000097          	auipc	ra,0x0
    8000191c:	014080e7          	jalr	20(ra) # 8000192c <_ZN16KObjectAllocatordlEPv>
    80001920:	00048513          	mv	a0,s1
    80001924:	00008097          	auipc	ra,0x8
    80001928:	9f4080e7          	jalr	-1548(ra) # 80009318 <_Unwind_Resume>

000000008000192c <_ZN16KObjectAllocatordlEPv>:
    void operator delete(void* p) {
    8000192c:	fe010113          	addi	sp,sp,-32
    80001930:	00113c23          	sd	ra,24(sp)
    80001934:	00813823          	sd	s0,16(sp)
    80001938:	00913423          	sd	s1,8(sp)
    8000193c:	01213023          	sd	s2,0(sp)
    80001940:	02010413          	addi	s0,sp,32
    80001944:	00050913          	mv	s2,a0
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80001948:	00000493          	li	s1,0
    8000194c:	03093783          	ld	a5,48(s2)
    80001950:	02f4f663          	bgeu	s1,a5,8000197c <_ZN16KObjectAllocatordlEPv+0x50>
            MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors[i]);
    80001954:	00000097          	auipc	ra,0x0
    80001958:	318080e7          	jalr	792(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    8000195c:	02893783          	ld	a5,40(s2)
    80001960:	00349713          	slli	a4,s1,0x3
    80001964:	00e787b3          	add	a5,a5,a4
    80001968:	0007b583          	ld	a1,0(a5)
    8000196c:	00000097          	auipc	ra,0x0
    80001970:	48c080e7          	jalr	1164(ra) # 80001df8 <_ZN15MemoryAllocator9kmem_freeEPv>
        for (size_t i = 0; i < ((KObjectAllocator*) p)->numberOfAllocations; ++i)
    80001974:	00148493          	addi	s1,s1,1
    80001978:	fd5ff06f          	j	8000194c <_ZN16KObjectAllocatordlEPv+0x20>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->bitVectors);
    8000197c:	00000097          	auipc	ra,0x0
    80001980:	2f0080e7          	jalr	752(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80001984:	02893583          	ld	a1,40(s2)
    80001988:	00000097          	auipc	ra,0x0
    8000198c:	470080e7          	jalr	1136(ra) # 80001df8 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(((KObjectAllocator*) p)->objectVectors);
    80001990:	00000097          	auipc	ra,0x0
    80001994:	2dc080e7          	jalr	732(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80001998:	02093583          	ld	a1,32(s2)
    8000199c:	00000097          	auipc	ra,0x0
    800019a0:	45c080e7          	jalr	1116(ra) # 80001df8 <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance()->kmem_free(p);
    800019a4:	00000097          	auipc	ra,0x0
    800019a8:	2c8080e7          	jalr	712(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    800019ac:	00090593          	mv	a1,s2
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	448080e7          	jalr	1096(ra) # 80001df8 <_ZN15MemoryAllocator9kmem_freeEPv>
    }
    800019b8:	01813083          	ld	ra,24(sp)
    800019bc:	01013403          	ld	s0,16(sp)
    800019c0:	00813483          	ld	s1,8(sp)
    800019c4:	00013903          	ld	s2,0(sp)
    800019c8:	02010113          	addi	sp,sp,32
    800019cc:	00008067          	ret

00000000800019d0 <_ZN3TCB12createThreadEPFvvE>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    800019d0:	fe010113          	addi	sp,sp,-32
    800019d4:	00113c23          	sd	ra,24(sp)
    800019d8:	00813823          	sd	s0,16(sp)
    800019dc:	00913423          	sd	s1,8(sp)
    800019e0:	01213023          	sd	s2,0(sp)
    800019e4:	02010413          	addi	s0,sp,32
    800019e8:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    800019ec:	03000513          	li	a0,48
    800019f0:	00001097          	auipc	ra,0x1
    800019f4:	764080e7          	jalr	1892(ra) # 80003154 <_Znwm>
    800019f8:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    800019fc:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001a00:	00090a63          	beqz	s2,80001a14 <_ZN3TCB12createThreadEPFvvE+0x44>
    80001a04:	00002537          	lui	a0,0x2
    80001a08:	00001097          	auipc	ra,0x1
    80001a0c:	774080e7          	jalr	1908(ra) # 8000317c <_Znam>
    80001a10:	0080006f          	j	80001a18 <_ZN3TCB12createThreadEPFvvE+0x48>
    80001a14:	00000513          	li	a0,0
            finished(false)
    80001a18:	00a4b423          	sd	a0,8(s1)
    80001a1c:	00000797          	auipc	a5,0x0
    80001a20:	09878793          	addi	a5,a5,152 # 80001ab4 <_ZN3TCB13threadWrapperEv>
    80001a24:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001a28:	02050863          	beqz	a0,80001a58 <_ZN3TCB12createThreadEPFvvE+0x88>
    80001a2c:	000027b7          	lui	a5,0x2
    80001a30:	00f507b3          	add	a5,a0,a5
            finished(false)
    80001a34:	00f4bc23          	sd	a5,24(s1)
    80001a38:	00200793          	li	a5,2
    80001a3c:	02f4b023          	sd	a5,32(s1)
    80001a40:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001a44:	02090c63          	beqz	s2,80001a7c <_ZN3TCB12createThreadEPFvvE+0xac>
    80001a48:	00048513          	mv	a0,s1
    80001a4c:	00002097          	auipc	ra,0x2
    80001a50:	04c080e7          	jalr	76(ra) # 80003a98 <_ZN9Scheduler3putEP3TCB>
    80001a54:	0280006f          	j	80001a7c <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001a58:	00000793          	li	a5,0
    80001a5c:	fd9ff06f          	j	80001a34 <_ZN3TCB12createThreadEPFvvE+0x64>
    80001a60:	00050913          	mv	s2,a0
    80001a64:	00048513          	mv	a0,s1
    80001a68:	00001097          	auipc	ra,0x1
    80001a6c:	73c080e7          	jalr	1852(ra) # 800031a4 <_ZdlPv>
    80001a70:	00090513          	mv	a0,s2
    80001a74:	00008097          	auipc	ra,0x8
    80001a78:	8a4080e7          	jalr	-1884(ra) # 80009318 <_Unwind_Resume>
}
    80001a7c:	00048513          	mv	a0,s1
    80001a80:	01813083          	ld	ra,24(sp)
    80001a84:	01013403          	ld	s0,16(sp)
    80001a88:	00813483          	ld	s1,8(sp)
    80001a8c:	00013903          	ld	s2,0(sp)
    80001a90:	02010113          	addi	sp,sp,32
    80001a94:	00008067          	ret

0000000080001a98 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    80001a98:	ff010113          	addi	sp,sp,-16
    80001a9c:	00813423          	sd	s0,8(sp)
    80001aa0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80001aa4:	00000073          	ecall
}
    80001aa8:	00813403          	ld	s0,8(sp)
    80001aac:	01010113          	addi	sp,sp,16
    80001ab0:	00008067          	ret

0000000080001ab4 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001ab4:	fe010113          	addi	sp,sp,-32
    80001ab8:	00113c23          	sd	ra,24(sp)
    80001abc:	00813823          	sd	s0,16(sp)
    80001ac0:	00913423          	sd	s1,8(sp)
    80001ac4:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001ac8:	00002097          	auipc	ra,0x2
    80001acc:	de0080e7          	jalr	-544(ra) # 800038a8 <_ZN5Riscv10popSppSpieEv>
    running->body();
    80001ad0:	00006497          	auipc	s1,0x6
    80001ad4:	74048493          	addi	s1,s1,1856 # 80008210 <_ZN3TCB7runningE>
    80001ad8:	0004b783          	ld	a5,0(s1)
    80001adc:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    80001ae0:	000780e7          	jalr	a5
    running->setFinished(true);
    80001ae4:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80001ae8:	00100713          	li	a4,1
    80001aec:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    80001af0:	00000097          	auipc	ra,0x0
    80001af4:	fa8080e7          	jalr	-88(ra) # 80001a98 <_ZN3TCB5yieldEv>
}
    80001af8:	01813083          	ld	ra,24(sp)
    80001afc:	01013403          	ld	s0,16(sp)
    80001b00:	00813483          	ld	s1,8(sp)
    80001b04:	02010113          	addi	sp,sp,32
    80001b08:	00008067          	ret

0000000080001b0c <_ZN3TCB8dispatchEv>:
{
    80001b0c:	fe010113          	addi	sp,sp,-32
    80001b10:	00113c23          	sd	ra,24(sp)
    80001b14:	00813823          	sd	s0,16(sp)
    80001b18:	00913423          	sd	s1,8(sp)
    80001b1c:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001b20:	00006497          	auipc	s1,0x6
    80001b24:	6f04b483          	ld	s1,1776(s1) # 80008210 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001b28:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001b2c:	02078c63          	beqz	a5,80001b64 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001b30:	00002097          	auipc	ra,0x2
    80001b34:	f00080e7          	jalr	-256(ra) # 80003a30 <_ZN9Scheduler3getEv>
    80001b38:	00006797          	auipc	a5,0x6
    80001b3c:	6ca7bc23          	sd	a0,1752(a5) # 80008210 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001b40:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001b44:	01048513          	addi	a0,s1,16
    80001b48:	fffff097          	auipc	ra,0xfffff
    80001b4c:	5c8080e7          	jalr	1480(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001b50:	01813083          	ld	ra,24(sp)
    80001b54:	01013403          	ld	s0,16(sp)
    80001b58:	00813483          	ld	s1,8(sp)
    80001b5c:	02010113          	addi	sp,sp,32
    80001b60:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001b64:	00048513          	mv	a0,s1
    80001b68:	00002097          	auipc	ra,0x2
    80001b6c:	f30080e7          	jalr	-208(ra) # 80003a98 <_ZN9Scheduler3putEP3TCB>
    80001b70:	fc1ff06f          	j	80001b30 <_ZN3TCB8dispatchEv+0x24>

0000000080001b74 <_ZN15MemoryAllocator17getMinBlockNumberEm>:
    newMemoryAllocator->freeMemoryHead->next = nullptr;

    return newMemoryAllocator;
}

size_t MemoryAllocator::getMinBlockNumber(size_t size) {
    80001b74:	ff010113          	addi	sp,sp,-16
    80001b78:	00813423          	sd	s0,8(sp)
    80001b7c:	01010413          	addi	s0,sp,16
    size_t blockNo = size / MEM_BLOCK_SIZE;
    80001b80:	00655713          	srli	a4,a0,0x6
    blockNo = blockNo + (size - blockNo * MEM_BLOCK_SIZE != 0);
    80001b84:	fc057793          	andi	a5,a0,-64
    80001b88:	40a78533          	sub	a0,a5,a0
    80001b8c:	00a03533          	snez	a0,a0
    return blockNo;
}
    80001b90:	00e50533          	add	a0,a0,a4
    80001b94:	00813403          	ld	s0,8(sp)
    80001b98:	01010113          	addi	sp,sp,16
    80001b9c:	00008067          	ret

0000000080001ba0 <_ZN15MemoryAllocator14createInstanceEv>:
MemoryAllocator* MemoryAllocator::createInstance() {
    80001ba0:	fd010113          	addi	sp,sp,-48
    80001ba4:	02113423          	sd	ra,40(sp)
    80001ba8:	02813023          	sd	s0,32(sp)
    80001bac:	00913c23          	sd	s1,24(sp)
    80001bb0:	01213823          	sd	s2,16(sp)
    80001bb4:	01313423          	sd	s3,8(sp)
    80001bb8:	01413023          	sd	s4,0(sp)
    80001bbc:	03010413          	addi	s0,sp,48
    managedMemorySpaceStart = (uint8*) HEAP_START_ADDR;
    80001bc0:	00006797          	auipc	a5,0x6
    80001bc4:	5a07b783          	ld	a5,1440(a5) # 80008160 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001bc8:	0007b903          	ld	s2,0(a5)
    managedMemorySpaceEnd = (uint8*) HEAP_END_ADDR;
    80001bcc:	00006797          	auipc	a5,0x6
    80001bd0:	5dc7b783          	ld	a5,1500(a5) # 800081a8 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001bd4:	0007b483          	ld	s1,0(a5)
    80001bd8:	00006a17          	auipc	s4,0x6
    80001bdc:	648a0a13          	addi	s4,s4,1608 # 80008220 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    80001be0:	009a3023          	sd	s1,0(s4)
    minMemoryFragmentSize = getMinBlockNumber(sizeof(SegmentDescriptor)) + getMinBlockNumber(sizeof(uint64));
    80001be4:	01000513          	li	a0,16
    80001be8:	00000097          	auipc	ra,0x0
    80001bec:	f8c080e7          	jalr	-116(ra) # 80001b74 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001bf0:	00050993          	mv	s3,a0
    80001bf4:	00800513          	li	a0,8
    80001bf8:	00000097          	auipc	ra,0x0
    80001bfc:	f7c080e7          	jalr	-132(ra) # 80001b74 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001c00:	00a989b3          	add	s3,s3,a0
    80001c04:	013a3423          	sd	s3,8(s4)
    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
    80001c08:	02000513          	li	a0,32
    80001c0c:	00000097          	auipc	ra,0x0
    80001c10:	f68080e7          	jalr	-152(ra) # 80001b74 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    managedMemorySpaceStart += noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE;
    80001c14:	00651513          	slli	a0,a0,0x6
    80001c18:	00a90533          	add	a0,s2,a0
    80001c1c:	00aa3823          	sd	a0,16(s4)
    newMemoryAllocator->totalTaken = 0;
    80001c20:	00093423          	sd	zero,8(s2)
    newMemoryAllocator->totalFree = (size_t) (managedMemorySpaceEnd - managedMemorySpaceStart);
    80001c24:	40a484b3          	sub	s1,s1,a0
    80001c28:	00993023          	sd	s1,0(s2)
    newMemoryAllocator->freeBlockNo = newMemoryAllocator->totalFree / MEM_BLOCK_SIZE;
    80001c2c:	0064d493          	srli	s1,s1,0x6
    80001c30:	00993823          	sd	s1,16(s2)
    newMemoryAllocator->freeMemoryHead = (SegmentDescriptor*) managedMemorySpaceStart;
    80001c34:	010a3783          	ld	a5,16(s4)
    80001c38:	00f93c23          	sd	a5,24(s2)
    newMemoryAllocator->freeMemoryHead->noBlocks = newMemoryAllocator->freeBlockNo;
    80001c3c:	0097b023          	sd	s1,0(a5)
    newMemoryAllocator->freeMemoryHead->next = nullptr;
    80001c40:	01893783          	ld	a5,24(s2)
    80001c44:	0007b423          	sd	zero,8(a5)
}
    80001c48:	00090513          	mv	a0,s2
    80001c4c:	02813083          	ld	ra,40(sp)
    80001c50:	02013403          	ld	s0,32(sp)
    80001c54:	01813483          	ld	s1,24(sp)
    80001c58:	01013903          	ld	s2,16(sp)
    80001c5c:	00813983          	ld	s3,8(sp)
    80001c60:	00013a03          	ld	s4,0(sp)
    80001c64:	03010113          	addi	sp,sp,48
    80001c68:	00008067          	ret

0000000080001c6c <_ZN15MemoryAllocator8instanceEv>:
    if (onlyInstance == nullptr)
    80001c6c:	00006797          	auipc	a5,0x6
    80001c70:	5cc7b783          	ld	a5,1484(a5) # 80008238 <_ZN15MemoryAllocator12onlyInstanceE>
    80001c74:	00078863          	beqz	a5,80001c84 <_ZN15MemoryAllocator8instanceEv+0x18>
}
    80001c78:	00006517          	auipc	a0,0x6
    80001c7c:	5c053503          	ld	a0,1472(a0) # 80008238 <_ZN15MemoryAllocator12onlyInstanceE>
    80001c80:	00008067          	ret
MemoryAllocator* MemoryAllocator::instance() {
    80001c84:	ff010113          	addi	sp,sp,-16
    80001c88:	00113423          	sd	ra,8(sp)
    80001c8c:	00813023          	sd	s0,0(sp)
    80001c90:	01010413          	addi	s0,sp,16
        onlyInstance = createInstance();
    80001c94:	00000097          	auipc	ra,0x0
    80001c98:	f0c080e7          	jalr	-244(ra) # 80001ba0 <_ZN15MemoryAllocator14createInstanceEv>
    80001c9c:	00006797          	auipc	a5,0x6
    80001ca0:	58a7be23          	sd	a0,1436(a5) # 80008238 <_ZN15MemoryAllocator12onlyInstanceE>
}
    80001ca4:	00006517          	auipc	a0,0x6
    80001ca8:	59453503          	ld	a0,1428(a0) # 80008238 <_ZN15MemoryAllocator12onlyInstanceE>
    80001cac:	00813083          	ld	ra,8(sp)
    80001cb0:	00013403          	ld	s0,0(sp)
    80001cb4:	01010113          	addi	sp,sp,16
    80001cb8:	00008067          	ret

0000000080001cbc <_ZN15MemoryAllocator8firstFitEm>:


MemoryAllocator::SegmentDescriptor* MemoryAllocator::firstFit(size_t blockNo) {
    80001cbc:	ff010113          	addi	sp,sp,-16
    80001cc0:	00813423          	sd	s0,8(sp)
    80001cc4:	01010413          	addi	s0,sp,16
    80001cc8:	00050693          	mv	a3,a0
    SegmentDescriptor* largeEnoughSegment = freeMemoryHead;
    80001ccc:	01853503          	ld	a0,24(a0)
    SegmentDescriptor* prevSegment = nullptr;
    80001cd0:	00000713          	li	a4,0
    while (largeEnoughSegment && largeEnoughSegment->noBlocks < blockNo) {
    80001cd4:	00050c63          	beqz	a0,80001cec <_ZN15MemoryAllocator8firstFitEm+0x30>
    80001cd8:	00053783          	ld	a5,0(a0)
    80001cdc:	00b7f863          	bgeu	a5,a1,80001cec <_ZN15MemoryAllocator8firstFitEm+0x30>
        prevSegment = largeEnoughSegment;
    80001ce0:	00050713          	mv	a4,a0
        largeEnoughSegment = largeEnoughSegment->next;
    80001ce4:	00853503          	ld	a0,8(a0)
    while (largeEnoughSegment && largeEnoughSegment->noBlocks < blockNo) {
    80001ce8:	fedff06f          	j	80001cd4 <_ZN15MemoryAllocator8firstFitEm+0x18>
    }
    if (!largeEnoughSegment) return nullptr;
    80001cec:	04050663          	beqz	a0,80001d38 <_ZN15MemoryAllocator8firstFitEm+0x7c>

    if (largeEnoughSegment->noBlocks - blockNo >= minMemoryFragmentSize) {
    80001cf0:	00053783          	ld	a5,0(a0)
    80001cf4:	40b787b3          	sub	a5,a5,a1
    80001cf8:	00006617          	auipc	a2,0x6
    80001cfc:	53063603          	ld	a2,1328(a2) # 80008228 <_ZN15MemoryAllocator21minMemoryFragmentSizeE>
    80001d00:	02c7e063          	bltu	a5,a2,80001d20 <_ZN15MemoryAllocator8firstFitEm+0x64>
        SegmentDescriptor* newSegment = (SegmentDescriptor*) ((uint8*) largeEnoughSegment + blockNo * MEM_BLOCK_SIZE);
    80001d04:	00659613          	slli	a2,a1,0x6
    80001d08:	00c50633          	add	a2,a0,a2
        newSegment->noBlocks = largeEnoughSegment->noBlocks - blockNo;
    80001d0c:	00f63023          	sd	a5,0(a2)
        newSegment->next = largeEnoughSegment->next;
    80001d10:	00853783          	ld	a5,8(a0)
    80001d14:	00f63423          	sd	a5,8(a2)
        largeEnoughSegment->next = newSegment;
    80001d18:	00c53423          	sd	a2,8(a0)
        largeEnoughSegment->noBlocks = blockNo;
    80001d1c:	00b53023          	sd	a1,0(a0)
    }

    if (prevSegment) prevSegment->next = largeEnoughSegment->next;
    80001d20:	00070663          	beqz	a4,80001d2c <_ZN15MemoryAllocator8firstFitEm+0x70>
    80001d24:	00853783          	ld	a5,8(a0)
    80001d28:	00f73423          	sd	a5,8(a4) # fffffffffffff008 <end+0xffffffff7fff5b48>
    if (freeMemoryHead == largeEnoughSegment)
    80001d2c:	0186b783          	ld	a5,24(a3)
    80001d30:	00a78a63          	beq	a5,a0,80001d44 <_ZN15MemoryAllocator8firstFitEm+0x88>
        freeMemoryHead = largeEnoughSegment->next;

    largeEnoughSegment->next = nullptr;
    80001d34:	00053423          	sd	zero,8(a0)
    return largeEnoughSegment;
}
    80001d38:	00813403          	ld	s0,8(sp)
    80001d3c:	01010113          	addi	sp,sp,16
    80001d40:	00008067          	ret
        freeMemoryHead = largeEnoughSegment->next;
    80001d44:	00853783          	ld	a5,8(a0)
    80001d48:	00f6bc23          	sd	a5,24(a3)
    80001d4c:	fe9ff06f          	j	80001d34 <_ZN15MemoryAllocator8firstFitEm+0x78>

0000000080001d50 <_ZN15MemoryAllocator10kmem_allocEm>:

void* MemoryAllocator::kmem_alloc(size_t size) {
    80001d50:	fe010113          	addi	sp,sp,-32
    80001d54:	00113c23          	sd	ra,24(sp)
    80001d58:	00813823          	sd	s0,16(sp)
    80001d5c:	00913423          	sd	s1,8(sp)
    80001d60:	01213023          	sd	s2,0(sp)
    80001d64:	02010413          	addi	s0,sp,32
    80001d68:	00050493          	mv	s1,a0
    80001d6c:	00058913          	mv	s2,a1
    size_t minBlockNo = getMinBlockNumber(size);
    80001d70:	00058513          	mv	a0,a1
    80001d74:	00000097          	auipc	ra,0x0
    80001d78:	e00080e7          	jalr	-512(ra) # 80001b74 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001d7c:	00050593          	mv	a1,a0
    if (minBlockNo * MEM_BLOCK_SIZE - size < sizeof(SegmentDescriptor)) ++minBlockNo;
    80001d80:	00651793          	slli	a5,a0,0x6
    80001d84:	41278933          	sub	s2,a5,s2
    80001d88:	00f00793          	li	a5,15
    80001d8c:	0127e463          	bltu	a5,s2,80001d94 <_ZN15MemoryAllocator10kmem_allocEm+0x44>
    80001d90:	00150593          	addi	a1,a0,1
    SegmentDescriptor* newTaken = firstFit(minBlockNo);
    80001d94:	00048513          	mv	a0,s1
    80001d98:	00000097          	auipc	ra,0x0
    80001d9c:	f24080e7          	jalr	-220(ra) # 80001cbc <_ZN15MemoryAllocator8firstFitEm>
    if (!newTaken) return nullptr;
    80001da0:	04050063          	beqz	a0,80001de0 <_ZN15MemoryAllocator10kmem_allocEm+0x90>

    freeBlockNo -= newTaken->noBlocks;
    80001da4:	00053703          	ld	a4,0(a0)
    80001da8:	0104b783          	ld	a5,16(s1)
    80001dac:	40e787b3          	sub	a5,a5,a4
    80001db0:	00f4b823          	sd	a5,16(s1)
    totalFree -= newTaken->noBlocks * MEM_BLOCK_SIZE;
    80001db4:	00053783          	ld	a5,0(a0)
    80001db8:	00679713          	slli	a4,a5,0x6
    80001dbc:	0004b783          	ld	a5,0(s1)
    80001dc0:	40e787b3          	sub	a5,a5,a4
    80001dc4:	00f4b023          	sd	a5,0(s1)
    totalTaken += newTaken->noBlocks * MEM_BLOCK_SIZE;
    80001dc8:	00053783          	ld	a5,0(a0)
    80001dcc:	00679713          	slli	a4,a5,0x6
    80001dd0:	0084b783          	ld	a5,8(s1)
    80001dd4:	00e787b3          	add	a5,a5,a4
    80001dd8:	00f4b423          	sd	a5,8(s1)

    return (uint8*) newTaken + sizeof(SegmentDescriptor);
    80001ddc:	01050513          	addi	a0,a0,16
}
    80001de0:	01813083          	ld	ra,24(sp)
    80001de4:	01013403          	ld	s0,16(sp)
    80001de8:	00813483          	ld	s1,8(sp)
    80001dec:	00013903          	ld	s2,0(sp)
    80001df0:	02010113          	addi	sp,sp,32
    80001df4:	00008067          	ret

0000000080001df8 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* newFree) {
    80001df8:	ff010113          	addi	sp,sp,-16
    80001dfc:	00813423          	sd	s0,8(sp)
    80001e00:	01010413          	addi	s0,sp,16
    if (newFree == nullptr) return 0;
    80001e04:	08058863          	beqz	a1,80001e94 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>
    SegmentDescriptor* newFreeSegment = (SegmentDescriptor*) ((uint8*) newFree - sizeof(SegmentDescriptor));
    80001e08:	ff058693          	addi	a3,a1,-16
    freeBlockNo += newFreeSegment->noBlocks;
    80001e0c:	ff05b703          	ld	a4,-16(a1)
    80001e10:	01053783          	ld	a5,16(a0)
    80001e14:	00e787b3          	add	a5,a5,a4
    80001e18:	00f53823          	sd	a5,16(a0)
    totalFree += newFreeSegment->noBlocks * MEM_BLOCK_SIZE;
    80001e1c:	ff05b783          	ld	a5,-16(a1)
    80001e20:	00679713          	slli	a4,a5,0x6
    80001e24:	00053783          	ld	a5,0(a0)
    80001e28:	00e787b3          	add	a5,a5,a4
    80001e2c:	00f53023          	sd	a5,0(a0)
    totalTaken -= newFreeSegment->noBlocks * MEM_BLOCK_SIZE;
    80001e30:	ff05b783          	ld	a5,-16(a1)
    80001e34:	00679713          	slli	a4,a5,0x6
    80001e38:	00853783          	ld	a5,8(a0)
    80001e3c:	40e787b3          	sub	a5,a5,a4
    80001e40:	00f53423          	sd	a5,8(a0)

    SegmentDescriptor* after = freeMemoryHead, *prev = nullptr;
    80001e44:	01853783          	ld	a5,24(a0)
    80001e48:	00000713          	li	a4,0
    while (after && after < newFreeSegment) {
    80001e4c:	00078a63          	beqz	a5,80001e60 <_ZN15MemoryAllocator9kmem_freeEPv+0x68>
    80001e50:	00d7f863          	bgeu	a5,a3,80001e60 <_ZN15MemoryAllocator9kmem_freeEPv+0x68>
        prev = after; after = after->next; }
    80001e54:	00078713          	mv	a4,a5
    80001e58:	0087b783          	ld	a5,8(a5)
    while (after && after < newFreeSegment) {
    80001e5c:	ff1ff06f          	j	80001e4c <_ZN15MemoryAllocator9kmem_freeEPv+0x54>

    newFreeSegment->next = after;
    80001e60:	fef5bc23          	sd	a5,-8(a1)
    if (prev) prev->next = newFreeSegment;
    80001e64:	04070063          	beqz	a4,80001ea4 <_ZN15MemoryAllocator9kmem_freeEPv+0xac>
    80001e68:	00d73423          	sd	a3,8(a4)
    else freeMemoryHead = newFreeSegment;

    if (prev && (uint8*) prev + prev->noBlocks * MEM_BLOCK_SIZE == (uint8*) newFreeSegment) {
    80001e6c:	00070a63          	beqz	a4,80001e80 <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
    80001e70:	00073503          	ld	a0,0(a4)
    80001e74:	00651613          	slli	a2,a0,0x6
    80001e78:	00c70633          	add	a2,a4,a2
    80001e7c:	02d60863          	beq	a2,a3,80001eac <_ZN15MemoryAllocator9kmem_freeEPv+0xb4>
        prev->next = newFreeSegment->next;
        prev->noBlocks += newFreeSegment->noBlocks;
        newFreeSegment = prev;
    }

    if (after && (uint8*) newFreeSegment + newFreeSegment->noBlocks * MEM_BLOCK_SIZE == (uint8*) after) {
    80001e80:	00078a63          	beqz	a5,80001e94 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>
    80001e84:	0006b603          	ld	a2,0(a3)
    80001e88:	00661713          	slli	a4,a2,0x6
    80001e8c:	00e68733          	add	a4,a3,a4
    80001e90:	02f70c63          	beq	a4,a5,80001ec8 <_ZN15MemoryAllocator9kmem_freeEPv+0xd0>
        newFreeSegment->next = after->next; newFreeSegment->noBlocks += after->noBlocks; }

    return 0;
}
    80001e94:	00000513          	li	a0,0
    80001e98:	00813403          	ld	s0,8(sp)
    80001e9c:	01010113          	addi	sp,sp,16
    80001ea0:	00008067          	ret
    else freeMemoryHead = newFreeSegment;
    80001ea4:	00d53c23          	sd	a3,24(a0)
    80001ea8:	fc5ff06f          	j	80001e6c <_ZN15MemoryAllocator9kmem_freeEPv+0x74>
        prev->next = newFreeSegment->next;
    80001eac:	ff85b683          	ld	a3,-8(a1)
    80001eb0:	00d73423          	sd	a3,8(a4)
        prev->noBlocks += newFreeSegment->noBlocks;
    80001eb4:	ff05b683          	ld	a3,-16(a1)
    80001eb8:	00d50533          	add	a0,a0,a3
    80001ebc:	00a73023          	sd	a0,0(a4)
        newFreeSegment = prev;
    80001ec0:	00070693          	mv	a3,a4
    80001ec4:	fbdff06f          	j	80001e80 <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
        newFreeSegment->next = after->next; newFreeSegment->noBlocks += after->noBlocks; }
    80001ec8:	0087b703          	ld	a4,8(a5)
    80001ecc:	00e6b423          	sd	a4,8(a3)
    80001ed0:	0007b783          	ld	a5,0(a5)
    80001ed4:	00f60633          	add	a2,a2,a5
    80001ed8:	00c6b023          	sd	a2,0(a3)
    80001edc:	fb9ff06f          	j	80001e94 <_ZN15MemoryAllocator9kmem_freeEPv+0x9c>

0000000080001ee0 <_ZN15MemoryAllocator30printInstanceMemorySpaceParamsEv>:

void MemoryAllocator::printInstanceMemorySpaceParams() {
    80001ee0:	fe010113          	addi	sp,sp,-32
    80001ee4:	00113c23          	sd	ra,24(sp)
    80001ee8:	00813823          	sd	s0,16(sp)
    80001eec:	00913423          	sd	s1,8(sp)
    80001ef0:	01213023          	sd	s2,0(sp)
    80001ef4:	02010413          	addi	s0,sp,32
    80001ef8:	00050493          	mv	s1,a0
    printString("##################################\n\n");
    80001efc:	00005517          	auipc	a0,0x5
    80001f00:	20c50513          	addi	a0,a0,524 # 80007108 <CONSOLE_STATUS+0xf8>
    80001f04:	00002097          	auipc	ra,0x2
    80001f08:	c34080e7          	jalr	-972(ra) # 80003b38 <_Z11printStringPKc>
    printString("MemoryAllocator address: "); printInteger((uint64)this); printString("\n");
    80001f0c:	00005517          	auipc	a0,0x5
    80001f10:	22450513          	addi	a0,a0,548 # 80007130 <CONSOLE_STATUS+0x120>
    80001f14:	00002097          	auipc	ra,0x2
    80001f18:	c24080e7          	jalr	-988(ra) # 80003b38 <_Z11printStringPKc>
    80001f1c:	00048513          	mv	a0,s1
    80001f20:	00002097          	auipc	ra,0x2
    80001f24:	c88080e7          	jalr	-888(ra) # 80003ba8 <_Z12printIntegerm>
    80001f28:	00005517          	auipc	a0,0x5
    80001f2c:	16050513          	addi	a0,a0,352 # 80007088 <CONSOLE_STATUS+0x78>
    80001f30:	00002097          	auipc	ra,0x2
    80001f34:	c08080e7          	jalr	-1016(ra) # 80003b38 <_Z11printStringPKc>

    // size_t noBlocksForStoringMemoryAllocator = sizeof(MemoryAllocator) / MEM_BLOCK_SIZE + 1;
    size_t noBlocksForStoringMemoryAllocator = getMinBlockNumber(sizeof(MemoryAllocator));
    80001f38:	02000513          	li	a0,32
    80001f3c:	00000097          	auipc	ra,0x0
    80001f40:	c38080e7          	jalr	-968(ra) # 80001b74 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80001f44:	00050913          	mv	s2,a0
    printString("noBlocksForStoringMemoryAllocator: ");
    80001f48:	00005517          	auipc	a0,0x5
    80001f4c:	20850513          	addi	a0,a0,520 # 80007150 <CONSOLE_STATUS+0x140>
    80001f50:	00002097          	auipc	ra,0x2
    80001f54:	be8080e7          	jalr	-1048(ra) # 80003b38 <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator); printString("\n");
    80001f58:	00090513          	mv	a0,s2
    80001f5c:	00002097          	auipc	ra,0x2
    80001f60:	c4c080e7          	jalr	-948(ra) # 80003ba8 <_Z12printIntegerm>
    80001f64:	00005517          	auipc	a0,0x5
    80001f68:	12450513          	addi	a0,a0,292 # 80007088 <CONSOLE_STATUS+0x78>
    80001f6c:	00002097          	auipc	ra,0x2
    80001f70:	bcc080e7          	jalr	-1076(ra) # 80003b38 <_Z11printStringPKc>
    printString("noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE: ");
    80001f74:	00005517          	auipc	a0,0x5
    80001f78:	20450513          	addi	a0,a0,516 # 80007178 <CONSOLE_STATUS+0x168>
    80001f7c:	00002097          	auipc	ra,0x2
    80001f80:	bbc080e7          	jalr	-1092(ra) # 80003b38 <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE); printString("\n\n");
    80001f84:	00691513          	slli	a0,s2,0x6
    80001f88:	00002097          	auipc	ra,0x2
    80001f8c:	c20080e7          	jalr	-992(ra) # 80003ba8 <_Z12printIntegerm>
    80001f90:	00005517          	auipc	a0,0x5
    80001f94:	22050513          	addi	a0,a0,544 # 800071b0 <CONSOLE_STATUS+0x1a0>
    80001f98:	00002097          	auipc	ra,0x2
    80001f9c:	ba0080e7          	jalr	-1120(ra) # 80003b38 <_Z11printStringPKc>

    printString("Managed memory space start: ");
    80001fa0:	00005517          	auipc	a0,0x5
    80001fa4:	21850513          	addi	a0,a0,536 # 800071b8 <CONSOLE_STATUS+0x1a8>
    80001fa8:	00002097          	auipc	ra,0x2
    80001fac:	b90080e7          	jalr	-1136(ra) # 80003b38 <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceStart); printString("\n");
    80001fb0:	00006917          	auipc	s2,0x6
    80001fb4:	27090913          	addi	s2,s2,624 # 80008220 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    80001fb8:	01093503          	ld	a0,16(s2)
    80001fbc:	00002097          	auipc	ra,0x2
    80001fc0:	bec080e7          	jalr	-1044(ra) # 80003ba8 <_Z12printIntegerm>
    80001fc4:	00005517          	auipc	a0,0x5
    80001fc8:	0c450513          	addi	a0,a0,196 # 80007088 <CONSOLE_STATUS+0x78>
    80001fcc:	00002097          	auipc	ra,0x2
    80001fd0:	b6c080e7          	jalr	-1172(ra) # 80003b38 <_Z11printStringPKc>
    printString("Managed memory space end: ");
    80001fd4:	00005517          	auipc	a0,0x5
    80001fd8:	20450513          	addi	a0,a0,516 # 800071d8 <CONSOLE_STATUS+0x1c8>
    80001fdc:	00002097          	auipc	ra,0x2
    80001fe0:	b5c080e7          	jalr	-1188(ra) # 80003b38 <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceEnd); printString("\n\n");
    80001fe4:	00093503          	ld	a0,0(s2)
    80001fe8:	00002097          	auipc	ra,0x2
    80001fec:	bc0080e7          	jalr	-1088(ra) # 80003ba8 <_Z12printIntegerm>
    80001ff0:	00005517          	auipc	a0,0x5
    80001ff4:	1c050513          	addi	a0,a0,448 # 800071b0 <CONSOLE_STATUS+0x1a0>
    80001ff8:	00002097          	auipc	ra,0x2
    80001ffc:	b40080e7          	jalr	-1216(ra) # 80003b38 <_Z11printStringPKc>

    printString("Total Free: "); printInteger(getTotalFree()); printString("\n");
    80002000:	00005517          	auipc	a0,0x5
    80002004:	1f850513          	addi	a0,a0,504 # 800071f8 <CONSOLE_STATUS+0x1e8>
    80002008:	00002097          	auipc	ra,0x2
    8000200c:	b30080e7          	jalr	-1232(ra) # 80003b38 <_Z11printStringPKc>
    80002010:	0004b503          	ld	a0,0(s1)
    80002014:	00002097          	auipc	ra,0x2
    80002018:	b94080e7          	jalr	-1132(ra) # 80003ba8 <_Z12printIntegerm>
    8000201c:	00005517          	auipc	a0,0x5
    80002020:	06c50513          	addi	a0,a0,108 # 80007088 <CONSOLE_STATUS+0x78>
    80002024:	00002097          	auipc	ra,0x2
    80002028:	b14080e7          	jalr	-1260(ra) # 80003b38 <_Z11printStringPKc>
    printString("Total Taken: "); printInteger(getTotalTaken()); printString("\n");
    8000202c:	00005517          	auipc	a0,0x5
    80002030:	1dc50513          	addi	a0,a0,476 # 80007208 <CONSOLE_STATUS+0x1f8>
    80002034:	00002097          	auipc	ra,0x2
    80002038:	b04080e7          	jalr	-1276(ra) # 80003b38 <_Z11printStringPKc>
    8000203c:	0084b503          	ld	a0,8(s1)
    80002040:	00002097          	auipc	ra,0x2
    80002044:	b68080e7          	jalr	-1176(ra) # 80003ba8 <_Z12printIntegerm>
    80002048:	00005517          	auipc	a0,0x5
    8000204c:	04050513          	addi	a0,a0,64 # 80007088 <CONSOLE_STATUS+0x78>
    80002050:	00002097          	auipc	ra,0x2
    80002054:	ae8080e7          	jalr	-1304(ra) # 80003b38 <_Z11printStringPKc>
    printString("Free Block No: "); printInteger(getFreeBlockNo()); printString("\n");
    80002058:	00005517          	auipc	a0,0x5
    8000205c:	1c050513          	addi	a0,a0,448 # 80007218 <CONSOLE_STATUS+0x208>
    80002060:	00002097          	auipc	ra,0x2
    80002064:	ad8080e7          	jalr	-1320(ra) # 80003b38 <_Z11printStringPKc>
    80002068:	0104b503          	ld	a0,16(s1)
    8000206c:	00002097          	auipc	ra,0x2
    80002070:	b3c080e7          	jalr	-1220(ra) # 80003ba8 <_Z12printIntegerm>
    80002074:	00005517          	auipc	a0,0x5
    80002078:	01450513          	addi	a0,a0,20 # 80007088 <CONSOLE_STATUS+0x78>
    8000207c:	00002097          	auipc	ra,0x2
    80002080:	abc080e7          	jalr	-1348(ra) # 80003b38 <_Z11printStringPKc>
    printString("\n##################################\n");
    80002084:	00005517          	auipc	a0,0x5
    80002088:	1a450513          	addi	a0,a0,420 # 80007228 <CONSOLE_STATUS+0x218>
    8000208c:	00002097          	auipc	ra,0x2
    80002090:	aac080e7          	jalr	-1364(ra) # 80003b38 <_Z11printStringPKc>
}
    80002094:	01813083          	ld	ra,24(sp)
    80002098:	01013403          	ld	s0,16(sp)
    8000209c:	00813483          	ld	s1,8(sp)
    800020a0:	00013903          	ld	s2,0(sp)
    800020a4:	02010113          	addi	sp,sp,32
    800020a8:	00008067          	ret

00000000800020ac <_ZN15MemoryAllocator22printMemorySpaceParamsEv>:

void MemoryAllocator::printMemorySpaceParams() {
    800020ac:	fe010113          	addi	sp,sp,-32
    800020b0:	00113c23          	sd	ra,24(sp)
    800020b4:	00813823          	sd	s0,16(sp)
    800020b8:	00913423          	sd	s1,8(sp)
    800020bc:	01213023          	sd	s2,0(sp)
    800020c0:	02010413          	addi	s0,sp,32
    printString("----------------------------------\n\n");
    800020c4:	00005517          	auipc	a0,0x5
    800020c8:	18c50513          	addi	a0,a0,396 # 80007250 <CONSOLE_STATUS+0x240>
    800020cc:	00002097          	auipc	ra,0x2
    800020d0:	a6c080e7          	jalr	-1428(ra) # 80003b38 <_Z11printStringPKc>
    printString("Size of MemoryAllocator class: ");
    800020d4:	00005517          	auipc	a0,0x5
    800020d8:	1a450513          	addi	a0,a0,420 # 80007278 <CONSOLE_STATUS+0x268>
    800020dc:	00002097          	auipc	ra,0x2
    800020e0:	a5c080e7          	jalr	-1444(ra) # 80003b38 <_Z11printStringPKc>
    printInteger(sizeof(MemoryAllocator)); printString("\n");
    800020e4:	02000513          	li	a0,32
    800020e8:	00002097          	auipc	ra,0x2
    800020ec:	ac0080e7          	jalr	-1344(ra) # 80003ba8 <_Z12printIntegerm>
    800020f0:	00005517          	auipc	a0,0x5
    800020f4:	f9850513          	addi	a0,a0,-104 # 80007088 <CONSOLE_STATUS+0x78>
    800020f8:	00002097          	auipc	ra,0x2
    800020fc:	a40080e7          	jalr	-1472(ra) # 80003b38 <_Z11printStringPKc>

    printString("HEAP_START_ADDR: "); printInteger((uint64)HEAP_START_ADDR); printString("\n");
    80002100:	00005517          	auipc	a0,0x5
    80002104:	1b850513          	addi	a0,a0,440 # 800072b8 <CONSOLE_STATUS+0x2a8>
    80002108:	00002097          	auipc	ra,0x2
    8000210c:	a30080e7          	jalr	-1488(ra) # 80003b38 <_Z11printStringPKc>
    80002110:	00006497          	auipc	s1,0x6
    80002114:	0504b483          	ld	s1,80(s1) # 80008160 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002118:	0004b503          	ld	a0,0(s1)
    8000211c:	00002097          	auipc	ra,0x2
    80002120:	a8c080e7          	jalr	-1396(ra) # 80003ba8 <_Z12printIntegerm>
    80002124:	00005517          	auipc	a0,0x5
    80002128:	f6450513          	addi	a0,a0,-156 # 80007088 <CONSOLE_STATUS+0x78>
    8000212c:	00002097          	auipc	ra,0x2
    80002130:	a0c080e7          	jalr	-1524(ra) # 80003b38 <_Z11printStringPKc>
    printString("HEAP_END_ADDR: "); printInteger((uint64)HEAP_END_ADDR); printString("\n");
    80002134:	00005517          	auipc	a0,0x5
    80002138:	16450513          	addi	a0,a0,356 # 80007298 <CONSOLE_STATUS+0x288>
    8000213c:	00002097          	auipc	ra,0x2
    80002140:	9fc080e7          	jalr	-1540(ra) # 80003b38 <_Z11printStringPKc>
    80002144:	00006917          	auipc	s2,0x6
    80002148:	06493903          	ld	s2,100(s2) # 800081a8 <_GLOBAL_OFFSET_TABLE_+0x50>
    8000214c:	00093503          	ld	a0,0(s2)
    80002150:	00002097          	auipc	ra,0x2
    80002154:	a58080e7          	jalr	-1448(ra) # 80003ba8 <_Z12printIntegerm>
    80002158:	00005517          	auipc	a0,0x5
    8000215c:	f3050513          	addi	a0,a0,-208 # 80007088 <CONSOLE_STATUS+0x78>
    80002160:	00002097          	auipc	ra,0x2
    80002164:	9d8080e7          	jalr	-1576(ra) # 80003b38 <_Z11printStringPKc>

    printString("HEAP_END_ADDR - HEAP_START_ADDR: ");
    80002168:	00005517          	auipc	a0,0x5
    8000216c:	14050513          	addi	a0,a0,320 # 800072a8 <CONSOLE_STATUS+0x298>
    80002170:	00002097          	auipc	ra,0x2
    80002174:	9c8080e7          	jalr	-1592(ra) # 80003b38 <_Z11printStringPKc>
    printInteger((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)); printString("\n");
    80002178:	00093503          	ld	a0,0(s2)
    8000217c:	0004b783          	ld	a5,0(s1)
    80002180:	40f50533          	sub	a0,a0,a5
    80002184:	00002097          	auipc	ra,0x2
    80002188:	a24080e7          	jalr	-1500(ra) # 80003ba8 <_Z12printIntegerm>
    8000218c:	00005517          	auipc	a0,0x5
    80002190:	efc50513          	addi	a0,a0,-260 # 80007088 <CONSOLE_STATUS+0x78>
    80002194:	00002097          	auipc	ra,0x2
    80002198:	9a4080e7          	jalr	-1628(ra) # 80003b38 <_Z11printStringPKc>

    printString("MEM_BLOCK_SIZE: "); printInteger(MEM_BLOCK_SIZE); printString("\n");
    8000219c:	00005517          	auipc	a0,0x5
    800021a0:	13450513          	addi	a0,a0,308 # 800072d0 <CONSOLE_STATUS+0x2c0>
    800021a4:	00002097          	auipc	ra,0x2
    800021a8:	994080e7          	jalr	-1644(ra) # 80003b38 <_Z11printStringPKc>
    800021ac:	04000513          	li	a0,64
    800021b0:	00002097          	auipc	ra,0x2
    800021b4:	9f8080e7          	jalr	-1544(ra) # 80003ba8 <_Z12printIntegerm>
    800021b8:	00005517          	auipc	a0,0x5
    800021bc:	ed050513          	addi	a0,a0,-304 # 80007088 <CONSOLE_STATUS+0x78>
    800021c0:	00002097          	auipc	ra,0x2
    800021c4:	978080e7          	jalr	-1672(ra) # 80003b38 <_Z11printStringPKc>

    printString("Number of blocks in (HEAP_END_ADDR - HEAP_START_ADDR): ");
    800021c8:	00005517          	auipc	a0,0x5
    800021cc:	12050513          	addi	a0,a0,288 # 800072e8 <CONSOLE_STATUS+0x2d8>
    800021d0:	00002097          	auipc	ra,0x2
    800021d4:	968080e7          	jalr	-1688(ra) # 80003b38 <_Z11printStringPKc>
    printInteger(((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)) / MEM_BLOCK_SIZE);
    800021d8:	00093503          	ld	a0,0(s2)
    800021dc:	0004b783          	ld	a5,0(s1)
    800021e0:	40f50533          	sub	a0,a0,a5
    800021e4:	00655513          	srli	a0,a0,0x6
    800021e8:	00002097          	auipc	ra,0x2
    800021ec:	9c0080e7          	jalr	-1600(ra) # 80003ba8 <_Z12printIntegerm>
    printString("\n");
    800021f0:	00005517          	auipc	a0,0x5
    800021f4:	e9850513          	addi	a0,a0,-360 # 80007088 <CONSOLE_STATUS+0x78>
    800021f8:	00002097          	auipc	ra,0x2
    800021fc:	940080e7          	jalr	-1728(ra) # 80003b38 <_Z11printStringPKc>
    printString("\n----------------------------------\n");
    80002200:	00005517          	auipc	a0,0x5
    80002204:	12050513          	addi	a0,a0,288 # 80007320 <CONSOLE_STATUS+0x310>
    80002208:	00002097          	auipc	ra,0x2
    8000220c:	930080e7          	jalr	-1744(ra) # 80003b38 <_Z11printStringPKc>
}
    80002210:	01813083          	ld	ra,24(sp)
    80002214:	01013403          	ld	s0,16(sp)
    80002218:	00813483          	ld	s1,8(sp)
    8000221c:	00013903          	ld	s2,0(sp)
    80002220:	02010113          	addi	sp,sp,32
    80002224:	00008067          	ret

0000000080002228 <_ZN15MemoryAllocator23printFreeMemoryHeadDataEv>:

void MemoryAllocator::printFreeMemoryHeadData() {
    80002228:	fe010113          	addi	sp,sp,-32
    8000222c:	00113c23          	sd	ra,24(sp)
    80002230:	00813823          	sd	s0,16(sp)
    80002234:	00913423          	sd	s1,8(sp)
    80002238:	02010413          	addi	s0,sp,32
    8000223c:	00050493          	mv	s1,a0
    printString("##################################\n\n");
    80002240:	00005517          	auipc	a0,0x5
    80002244:	ec850513          	addi	a0,a0,-312 # 80007108 <CONSOLE_STATUS+0xf8>
    80002248:	00002097          	auipc	ra,0x2
    8000224c:	8f0080e7          	jalr	-1808(ra) # 80003b38 <_Z11printStringPKc>
    printString("freeMemoryHead: ");
    80002250:	00005517          	auipc	a0,0x5
    80002254:	0f850513          	addi	a0,a0,248 # 80007348 <CONSOLE_STATUS+0x338>
    80002258:	00002097          	auipc	ra,0x2
    8000225c:	8e0080e7          	jalr	-1824(ra) # 80003b38 <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead); printString("\n");
    80002260:	0184b503          	ld	a0,24(s1)
    80002264:	00002097          	auipc	ra,0x2
    80002268:	944080e7          	jalr	-1724(ra) # 80003ba8 <_Z12printIntegerm>
    8000226c:	00005517          	auipc	a0,0x5
    80002270:	e1c50513          	addi	a0,a0,-484 # 80007088 <CONSOLE_STATUS+0x78>
    80002274:	00002097          	auipc	ra,0x2
    80002278:	8c4080e7          	jalr	-1852(ra) # 80003b38 <_Z11printStringPKc>
    printString("freeMemoryHead->noBlocks: ");
    8000227c:	00005517          	auipc	a0,0x5
    80002280:	0e450513          	addi	a0,a0,228 # 80007360 <CONSOLE_STATUS+0x350>
    80002284:	00002097          	auipc	ra,0x2
    80002288:	8b4080e7          	jalr	-1868(ra) # 80003b38 <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead->noBlocks); printString("\n");
    8000228c:	0184b783          	ld	a5,24(s1)
    80002290:	0007b503          	ld	a0,0(a5)
    80002294:	00002097          	auipc	ra,0x2
    80002298:	914080e7          	jalr	-1772(ra) # 80003ba8 <_Z12printIntegerm>
    8000229c:	00005517          	auipc	a0,0x5
    800022a0:	dec50513          	addi	a0,a0,-532 # 80007088 <CONSOLE_STATUS+0x78>
    800022a4:	00002097          	auipc	ra,0x2
    800022a8:	894080e7          	jalr	-1900(ra) # 80003b38 <_Z11printStringPKc>
    printString("freeMemoryHead->next: ");
    800022ac:	00005517          	auipc	a0,0x5
    800022b0:	0d450513          	addi	a0,a0,212 # 80007380 <CONSOLE_STATUS+0x370>
    800022b4:	00002097          	auipc	ra,0x2
    800022b8:	884080e7          	jalr	-1916(ra) # 80003b38 <_Z11printStringPKc>
    printInteger((uint64)freeMemoryHead->next); printString("\n");
    800022bc:	0184b783          	ld	a5,24(s1)
    800022c0:	0087b503          	ld	a0,8(a5)
    800022c4:	00002097          	auipc	ra,0x2
    800022c8:	8e4080e7          	jalr	-1820(ra) # 80003ba8 <_Z12printIntegerm>
    800022cc:	00005517          	auipc	a0,0x5
    800022d0:	dbc50513          	addi	a0,a0,-580 # 80007088 <CONSOLE_STATUS+0x78>
    800022d4:	00002097          	auipc	ra,0x2
    800022d8:	864080e7          	jalr	-1948(ra) # 80003b38 <_Z11printStringPKc>
    printString("Segment Descriptor size: ");
    800022dc:	00005517          	auipc	a0,0x5
    800022e0:	0bc50513          	addi	a0,a0,188 # 80007398 <CONSOLE_STATUS+0x388>
    800022e4:	00002097          	auipc	ra,0x2
    800022e8:	854080e7          	jalr	-1964(ra) # 80003b38 <_Z11printStringPKc>
    printInteger(sizeof(*freeMemoryHead)); printString("\n");
    800022ec:	01000513          	li	a0,16
    800022f0:	00002097          	auipc	ra,0x2
    800022f4:	8b8080e7          	jalr	-1864(ra) # 80003ba8 <_Z12printIntegerm>
    800022f8:	00005517          	auipc	a0,0x5
    800022fc:	d9050513          	addi	a0,a0,-624 # 80007088 <CONSOLE_STATUS+0x78>
    80002300:	00002097          	auipc	ra,0x2
    80002304:	838080e7          	jalr	-1992(ra) # 80003b38 <_Z11printStringPKc>
    printString("\n##################################\n");
    80002308:	00005517          	auipc	a0,0x5
    8000230c:	f2050513          	addi	a0,a0,-224 # 80007228 <CONSOLE_STATUS+0x218>
    80002310:	00002097          	auipc	ra,0x2
    80002314:	828080e7          	jalr	-2008(ra) # 80003b38 <_Z11printStringPKc>
}
    80002318:	01813083          	ld	ra,24(sp)
    8000231c:	01013403          	ld	s0,16(sp)
    80002320:	00813483          	ld	s1,8(sp)
    80002324:	02010113          	addi	sp,sp,32
    80002328:	00008067          	ret

000000008000232c <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv>:
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    return beforeTestFreeBlockNo == afterTestFreeBlockNo - minNoBlocksForSize - addendForSegDesc;

}

size_t MemoryAllocatorTest::getFreeBlocksCnt() {
    8000232c:	ff010113          	addi	sp,sp,-16
    80002330:	00113423          	sd	ra,8(sp)
    80002334:	00813023          	sd	s0,0(sp)
    80002338:	01010413          	addi	s0,sp,16
    MemoryAllocator::SegmentDescriptor* freeMemHead = MemoryAllocator::instance()->freeMemoryHead;
    8000233c:	00000097          	auipc	ra,0x0
    80002340:	930080e7          	jalr	-1744(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002344:	01853783          	ld	a5,24(a0)
    size_t blockCnt = 0;
    80002348:	00000513          	li	a0,0
    while (freeMemHead) {
    8000234c:	00078a63          	beqz	a5,80002360 <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv+0x34>
        blockCnt += freeMemHead->noBlocks;
    80002350:	0007b703          	ld	a4,0(a5)
    80002354:	00e50533          	add	a0,a0,a4
        freeMemHead = freeMemHead->next;
    80002358:	0087b783          	ld	a5,8(a5)
    while (freeMemHead) {
    8000235c:	ff1ff06f          	j	8000234c <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv+0x20>
    }
    return blockCnt;
}
    80002360:	00813083          	ld	ra,8(sp)
    80002364:	00013403          	ld	s0,0(sp)
    80002368:	01010113          	addi	sp,sp,16
    8000236c:	00008067          	ret

0000000080002370 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>:

bool MemoryAllocatorTest::testMemoryMetadataValidity() {
    80002370:	fd010113          	addi	sp,sp,-48
    80002374:	02113423          	sd	ra,40(sp)
    80002378:	02813023          	sd	s0,32(sp)
    8000237c:	00913c23          	sd	s1,24(sp)
    80002380:	01213823          	sd	s2,16(sp)
    80002384:	01313423          	sd	s3,8(sp)
    80002388:	01413023          	sd	s4,0(sp)
    8000238c:	03010413          	addi	s0,sp,48
    80002390:	00050913          	mv	s2,a0
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002394:	00000097          	auipc	ra,0x0
    80002398:	8d8080e7          	jalr	-1832(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>

    void* kmem_alloc(size_t size);
    int kmem_free(void* newFree);
    void printInstanceMemorySpaceParams();
    void printFreeMemoryHeadData();
    size_t getTotalFree() { return totalFree; }
    8000239c:	00053483          	ld	s1,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    800023a0:	00000097          	auipc	ra,0x0
    800023a4:	8cc080e7          	jalr	-1844(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800023a8:	00853a03          	ld	s4,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    800023ac:	00000097          	auipc	ra,0x0
    800023b0:	8c0080e7          	jalr	-1856(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    800023b4:	01053983          	ld	s3,16(a0)
    size_t freeBlocksCnt = getFreeBlocksCnt();
    800023b8:	00090513          	mv	a0,s2
    800023bc:	00000097          	auipc	ra,0x0
    800023c0:	f70080e7          	jalr	-144(ra) # 8000232c <_ZN19MemoryAllocatorTest16getFreeBlocksCntEv>

    if (freeBlocksCnt != beforeTestFreeBlockNo) return false;
    800023c4:	02a99c63          	bne	s3,a0,800023fc <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x8c>
    if (freeBlocksCnt != beforeTestTotalFree / MEM_BLOCK_SIZE) return false;
    800023c8:	0064d793          	srli	a5,s1,0x6
    800023cc:	04a79a63          	bne	a5,a0,80002420 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0xb0>

    size_t totalMemory = (size_t) (MemoryAllocator::managedMemorySpaceEnd - MemoryAllocator::managedMemorySpaceStart);
    800023d0:	00006797          	auipc	a5,0x6
    800023d4:	d987b783          	ld	a5,-616(a5) # 80008168 <_GLOBAL_OFFSET_TABLE_+0x10>
    800023d8:	0007b503          	ld	a0,0(a5)
    800023dc:	00006797          	auipc	a5,0x6
    800023e0:	de47b783          	ld	a5,-540(a5) # 800081c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    800023e4:	0007b783          	ld	a5,0(a5)
    800023e8:	40f507b3          	sub	a5,a0,a5
    return totalMemory == beforeTestTotalFree + beforeTestTotalTaken;
    800023ec:	01448533          	add	a0,s1,s4
    800023f0:	40f50533          	sub	a0,a0,a5
    800023f4:	00153513          	seqz	a0,a0
    800023f8:	0080006f          	j	80002400 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x90>
    if (freeBlocksCnt != beforeTestFreeBlockNo) return false;
    800023fc:	00000513          	li	a0,0
}
    80002400:	02813083          	ld	ra,40(sp)
    80002404:	02013403          	ld	s0,32(sp)
    80002408:	01813483          	ld	s1,24(sp)
    8000240c:	01013903          	ld	s2,16(sp)
    80002410:	00813983          	ld	s3,8(sp)
    80002414:	00013a03          	ld	s4,0(sp)
    80002418:	03010113          	addi	sp,sp,48
    8000241c:	00008067          	ret
    if (freeBlocksCnt != beforeTestTotalFree / MEM_BLOCK_SIZE) return false;
    80002420:	00000513          	li	a0,0
    80002424:	fddff06f          	j	80002400 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv+0x90>

0000000080002428 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>:
bool MemoryAllocatorTest::testMemoryAllocate(uint64 size, void** allocatedMemoryPointer) {
    80002428:	fa010113          	addi	sp,sp,-96
    8000242c:	04113c23          	sd	ra,88(sp)
    80002430:	04813823          	sd	s0,80(sp)
    80002434:	04913423          	sd	s1,72(sp)
    80002438:	05213023          	sd	s2,64(sp)
    8000243c:	03313c23          	sd	s3,56(sp)
    80002440:	03413823          	sd	s4,48(sp)
    80002444:	03513423          	sd	s5,40(sp)
    80002448:	03613023          	sd	s6,32(sp)
    8000244c:	01713c23          	sd	s7,24(sp)
    80002450:	01813823          	sd	s8,16(sp)
    80002454:	01913423          	sd	s9,8(sp)
    80002458:	01a13023          	sd	s10,0(sp)
    8000245c:	06010413          	addi	s0,sp,96
    80002460:	00050a13          	mv	s4,a0
    80002464:	00058913          	mv	s2,a1
    80002468:	00060993          	mv	s3,a2
    if (!testMemoryMetadataValidity()) return false;
    8000246c:	00000097          	auipc	ra,0x0
    80002470:	f04080e7          	jalr	-252(ra) # 80002370 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002474:	00050493          	mv	s1,a0
    80002478:	04051063          	bnez	a0,800024b8 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x90>
}
    8000247c:	00048513          	mv	a0,s1
    80002480:	05813083          	ld	ra,88(sp)
    80002484:	05013403          	ld	s0,80(sp)
    80002488:	04813483          	ld	s1,72(sp)
    8000248c:	04013903          	ld	s2,64(sp)
    80002490:	03813983          	ld	s3,56(sp)
    80002494:	03013a03          	ld	s4,48(sp)
    80002498:	02813a83          	ld	s5,40(sp)
    8000249c:	02013b03          	ld	s6,32(sp)
    800024a0:	01813b83          	ld	s7,24(sp)
    800024a4:	01013c03          	ld	s8,16(sp)
    800024a8:	00813c83          	ld	s9,8(sp)
    800024ac:	00013d03          	ld	s10,0(sp)
    800024b0:	06010113          	addi	sp,sp,96
    800024b4:	00008067          	ret
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    800024b8:	fffff097          	auipc	ra,0xfffff
    800024bc:	7b4080e7          	jalr	1972(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    800024c0:	00053b03          	ld	s6,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    800024c4:	fffff097          	auipc	ra,0xfffff
    800024c8:	7a8080e7          	jalr	1960(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800024cc:	00853b83          	ld	s7,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    800024d0:	fffff097          	auipc	ra,0xfffff
    800024d4:	79c080e7          	jalr	1948(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    800024d8:	01053c03          	ld	s8,16(a0)
    *allocatedMemoryPointer = MemoryAllocator::instance()->kmem_alloc(size);
    800024dc:	fffff097          	auipc	ra,0xfffff
    800024e0:	790080e7          	jalr	1936(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    800024e4:	00090593          	mv	a1,s2
    800024e8:	00000097          	auipc	ra,0x0
    800024ec:	868080e7          	jalr	-1944(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
    800024f0:	00050a93          	mv	s5,a0
    800024f4:	00a9b023          	sd	a0,0(s3)
    if (*allocatedMemoryPointer == nullptr && size == (uint64) -37) return true;
    800024f8:	08050663          	beqz	a0,80002584 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x15c>
    size_t minNoBlocksForSize = MemoryAllocator::getMinBlockNumber(size);
    800024fc:	00090513          	mv	a0,s2
    80002500:	fffff097          	auipc	ra,0xfffff
    80002504:	674080e7          	jalr	1652(ra) # 80001b74 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80002508:	00050993          	mv	s3,a0
    size_t addendForSegDesc = minNoBlocksForSize * MEM_BLOCK_SIZE - size < sizeof(MemoryAllocator::SegmentDescriptor);
    8000250c:	00651593          	slli	a1,a0,0x6
    80002510:	41258933          	sub	s2,a1,s2
    80002514:	01093913          	sltiu	s2,s2,16
    size_t allocatedMemory = (minNoBlocksForSize + addendForSegDesc) * MEM_BLOCK_SIZE;
    80002518:	01250cb3          	add	s9,a0,s2
    8000251c:	006c9d13          	slli	s10,s9,0x6
    if (!testMemoryMetadataValidity()) return false;
    80002520:	000a0513          	mv	a0,s4
    80002524:	00000097          	auipc	ra,0x0
    80002528:	e4c080e7          	jalr	-436(ra) # 80002370 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    8000252c:	00050493          	mv	s1,a0
    80002530:	f40506e3          	beqz	a0,8000247c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    size_t afterTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002534:	fffff097          	auipc	ra,0xfffff
    80002538:	738080e7          	jalr	1848(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    8000253c:	00053483          	ld	s1,0(a0)
    size_t afterTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    80002540:	fffff097          	auipc	ra,0xfffff
    80002544:	72c080e7          	jalr	1836(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    80002548:	00853a03          	ld	s4,8(a0)
    size_t afterTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    8000254c:	fffff097          	auipc	ra,0xfffff
    80002550:	720080e7          	jalr	1824(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002554:	01053783          	ld	a5,16(a0)
    if (beforeTestTotalFree != afterTestTotalFree + allocatedMemory) return false;
    80002558:	01a484b3          	add	s1,s1,s10
    8000255c:	03649a63          	bne	s1,s6,80002590 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x168>
    if (beforeTestTotalTaken != afterTestTotalTaken - allocatedMemory) return false;
    80002560:	41aa0d33          	sub	s10,s4,s10
    80002564:	037d1a63          	bne	s10,s7,80002598 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x170>
    if (beforeTestFreeBlockNo != afterTestFreeBlockNo + minNoBlocksForSize + addendForSegDesc) return false;
    80002568:	013789b3          	add	s3,a5,s3
    8000256c:	01298933          	add	s2,s3,s2
    80002570:	03891863          	bne	s2,s8,800025a0 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x178>
    return segDesc->noBlocks == minNoBlocksForSize + addendForSegDesc;
    80002574:	ff0ab483          	ld	s1,-16(s5)
    80002578:	409c84b3          	sub	s1,s9,s1
    8000257c:	0014b493          	seqz	s1,s1
    80002580:	efdff06f          	j	8000247c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (*allocatedMemoryPointer == nullptr && size == (uint64) -37) return true;
    80002584:	fdb00793          	li	a5,-37
    80002588:	f6f91ae3          	bne	s2,a5,800024fc <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0xd4>
    8000258c:	ef1ff06f          	j	8000247c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestTotalFree != afterTestTotalFree + allocatedMemory) return false;
    80002590:	00000493          	li	s1,0
    80002594:	ee9ff06f          	j	8000247c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestTotalTaken != afterTestTotalTaken - allocatedMemory) return false;
    80002598:	00000493          	li	s1,0
    8000259c:	ee1ff06f          	j	8000247c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>
    if (beforeTestFreeBlockNo != afterTestFreeBlockNo + minNoBlocksForSize + addendForSegDesc) return false;
    800025a0:	00000493          	li	s1,0
    800025a4:	ed9ff06f          	j	8000247c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv+0x54>

00000000800025a8 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>:
bool MemoryAllocatorTest::testMemoryFree(uint64 size, void* allocatedMemoryPointer) {
    800025a8:	fb010113          	addi	sp,sp,-80
    800025ac:	04113423          	sd	ra,72(sp)
    800025b0:	04813023          	sd	s0,64(sp)
    800025b4:	02913c23          	sd	s1,56(sp)
    800025b8:	03213823          	sd	s2,48(sp)
    800025bc:	03313423          	sd	s3,40(sp)
    800025c0:	03413023          	sd	s4,32(sp)
    800025c4:	01513c23          	sd	s5,24(sp)
    800025c8:	01613823          	sd	s6,16(sp)
    800025cc:	01713423          	sd	s7,8(sp)
    800025d0:	01813023          	sd	s8,0(sp)
    800025d4:	05010413          	addi	s0,sp,80
    800025d8:	00050a13          	mv	s4,a0
    800025dc:	00058913          	mv	s2,a1
    800025e0:	00060493          	mv	s1,a2
    if (!testMemoryMetadataValidity()) return false;
    800025e4:	00000097          	auipc	ra,0x0
    800025e8:	d8c080e7          	jalr	-628(ra) # 80002370 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800025ec:	02051a63          	bnez	a0,80002620 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x78>
}
    800025f0:	04813083          	ld	ra,72(sp)
    800025f4:	04013403          	ld	s0,64(sp)
    800025f8:	03813483          	ld	s1,56(sp)
    800025fc:	03013903          	ld	s2,48(sp)
    80002600:	02813983          	ld	s3,40(sp)
    80002604:	02013a03          	ld	s4,32(sp)
    80002608:	01813a83          	ld	s5,24(sp)
    8000260c:	01013b03          	ld	s6,16(sp)
    80002610:	00813b83          	ld	s7,8(sp)
    80002614:	00013c03          	ld	s8,0(sp)
    80002618:	05010113          	addi	sp,sp,80
    8000261c:	00008067          	ret
    size_t beforeTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    80002620:	fffff097          	auipc	ra,0xfffff
    80002624:	64c080e7          	jalr	1612(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    80002628:	00053b03          	ld	s6,0(a0)
    size_t beforeTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    8000262c:	fffff097          	auipc	ra,0xfffff
    80002630:	640080e7          	jalr	1600(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    80002634:	00853b83          	ld	s7,8(a0)
    size_t beforeTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    80002638:	fffff097          	auipc	ra,0xfffff
    8000263c:	634080e7          	jalr	1588(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    80002640:	01053a83          	ld	s5,16(a0)
    size_t minNoBlocksForSize = MemoryAllocator::getMinBlockNumber(size);
    80002644:	00090513          	mv	a0,s2
    80002648:	fffff097          	auipc	ra,0xfffff
    8000264c:	52c080e7          	jalr	1324(ra) # 80001b74 <_ZN15MemoryAllocator17getMinBlockNumberEm>
    80002650:	00050993          	mv	s3,a0
    size_t addendForSegDesc = minNoBlocksForSize * MEM_BLOCK_SIZE - size < sizeof(MemoryAllocator::SegmentDescriptor);
    80002654:	00651593          	slli	a1,a0,0x6
    80002658:	41258933          	sub	s2,a1,s2
    8000265c:	01093913          	sltiu	s2,s2,16
    size_t allocatedMemory = (minNoBlocksForSize + addendForSegDesc) * MEM_BLOCK_SIZE;
    80002660:	01250733          	add	a4,a0,s2
    80002664:	00671c13          	slli	s8,a4,0x6
    if (!allocatedMemoryPointer) {
    80002668:	08048463          	beqz	s1,800026f0 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x148>
    if (allocatedMemoryPointer) segDesc = (MemoryAllocator::SegmentDescriptor*)
    8000266c:	08048a63          	beqz	s1,80002700 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x158>
    80002670:	ff048793          	addi	a5,s1,-16
    if (allocatedMemoryPointer)
    80002674:	00048863          	beqz	s1,80002684 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xdc>
    if (segDesc->noBlocks != minNoBlocksForSize + addendForSegDesc) return false;
    80002678:	0007b703          	ld	a4,0(a5)
    8000267c:	012987b3          	add	a5,s3,s2
    80002680:	08f71463          	bne	a4,a5,80002708 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x160>
    MemoryAllocator::instance()->kmem_free(allocatedMemoryPointer);
    80002684:	fffff097          	auipc	ra,0xfffff
    80002688:	5e8080e7          	jalr	1512(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    8000268c:	00048593          	mv	a1,s1
    80002690:	fffff097          	auipc	ra,0xfffff
    80002694:	768080e7          	jalr	1896(ra) # 80001df8 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002698:	000a0513          	mv	a0,s4
    8000269c:	00000097          	auipc	ra,0x0
    800026a0:	cd4080e7          	jalr	-812(ra) # 80002370 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800026a4:	f40506e3          	beqz	a0,800025f0 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    size_t afterTestTotalFree = MemoryAllocator::instance()->getTotalFree();
    800026a8:	fffff097          	auipc	ra,0xfffff
    800026ac:	5c4080e7          	jalr	1476(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalFree() { return totalFree; }
    800026b0:	00053483          	ld	s1,0(a0)
    size_t afterTestTotalTaken = MemoryAllocator::instance()->getTotalTaken();
    800026b4:	fffff097          	auipc	ra,0xfffff
    800026b8:	5b8080e7          	jalr	1464(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    size_t getTotalTaken() { return totalTaken; }
    800026bc:	00853a03          	ld	s4,8(a0)
    size_t afterTestFreeBlockNo = MemoryAllocator::instance()->getFreeBlockNo();
    800026c0:	fffff097          	auipc	ra,0xfffff
    800026c4:	5ac080e7          	jalr	1452(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    size_t getFreeBlockNo() { return freeBlockNo; }
    800026c8:	01053783          	ld	a5,16(a0)
    if (beforeTestTotalFree != afterTestTotalFree - allocatedMemory) return false;
    800026cc:	418484b3          	sub	s1,s1,s8
    800026d0:	05649063          	bne	s1,s6,80002710 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x168>
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    800026d4:	014c0733          	add	a4,s8,s4
    800026d8:	05771063          	bne	a4,s7,80002718 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x170>
    return beforeTestFreeBlockNo == afterTestFreeBlockNo - minNoBlocksForSize - addendForSegDesc;
    800026dc:	41378533          	sub	a0,a5,s3
    800026e0:	41250533          	sub	a0,a0,s2
    800026e4:	41550533          	sub	a0,a0,s5
    800026e8:	00153513          	seqz	a0,a0
    800026ec:	f05ff06f          	j	800025f0 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
        minNoBlocksForSize = 0; addendForSegDesc = 0; allocatedMemory = 0;
    800026f0:	00000c13          	li	s8,0
    800026f4:	00000913          	li	s2,0
    800026f8:	00000993          	li	s3,0
    800026fc:	f71ff06f          	j	8000266c <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xc4>
    MemoryAllocator::SegmentDescriptor* segDesc = nullptr;
    80002700:	00048793          	mv	a5,s1
    80002704:	f71ff06f          	j	80002674 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0xcc>
    if (segDesc->noBlocks != minNoBlocksForSize + addendForSegDesc) return false;
    80002708:	00000513          	li	a0,0
    8000270c:	ee5ff06f          	j	800025f0 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    if (beforeTestTotalFree != afterTestTotalFree - allocatedMemory) return false;
    80002710:	00000513          	li	a0,0
    80002714:	eddff06f          	j	800025f0 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>
    if (beforeTestTotalTaken != afterTestTotalTaken + allocatedMemory) return false;
    80002718:	00000513          	li	a0,0
    8000271c:	ed5ff06f          	j	800025f0 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv+0x48>

0000000080002720 <_ZN19MemoryAllocatorTest13firstFitTest1Ev>:
    if (!firstFitTest2()) return false;
    if (!firstFitTest3()) return false;
    return true;
}

bool MemoryAllocatorTest::firstFitTest1() {
    80002720:	fc010113          	addi	sp,sp,-64
    80002724:	02113c23          	sd	ra,56(sp)
    80002728:	02813823          	sd	s0,48(sp)
    8000272c:	02913423          	sd	s1,40(sp)
    80002730:	03213023          	sd	s2,32(sp)
    80002734:	01313c23          	sd	s3,24(sp)
    80002738:	01413823          	sd	s4,16(sp)
    8000273c:	01513423          	sd	s5,8(sp)
    80002740:	04010413          	addi	s0,sp,64
    80002744:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    80002748:	00000097          	auipc	ra,0x0
    8000274c:	c28080e7          	jalr	-984(ra) # 80002370 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002750:	02051463          	bnez	a0,80002778 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x58>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002754:	03813083          	ld	ra,56(sp)
    80002758:	03013403          	ld	s0,48(sp)
    8000275c:	02813483          	ld	s1,40(sp)
    80002760:	02013903          	ld	s2,32(sp)
    80002764:	01813983          	ld	s3,24(sp)
    80002768:	01013a03          	ld	s4,16(sp)
    8000276c:	00813a83          	ld	s5,8(sp)
    80002770:	04010113          	addi	sp,sp,64
    80002774:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002778:	fffff097          	auipc	ra,0xfffff
    8000277c:	4f4080e7          	jalr	1268(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002780:	02f00593          	li	a1,47
    80002784:	fffff097          	auipc	ra,0xfffff
    80002788:	5cc080e7          	jalr	1484(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
    8000278c:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002790:	00006797          	auipc	a5,0x6
    80002794:	a307b783          	ld	a5,-1488(a5) # 800081c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002798:	0007b783          	ld	a5,0(a5)
    8000279c:	01078793          	addi	a5,a5,16
    800027a0:	00a78663          	beq	a5,a0,800027ac <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x8c>
        return false;
    800027a4:	00000513          	li	a0,0
    800027a8:	fadff06f          	j	80002754 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    800027ac:	fffff097          	auipc	ra,0xfffff
    800027b0:	4c0080e7          	jalr	1216(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    800027b4:	03000593          	li	a1,48
    800027b8:	fffff097          	auipc	ra,0xfffff
    800027bc:	598080e7          	jalr	1432(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
    800027c0:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    800027c4:	00006797          	auipc	a5,0x6
    800027c8:	9fc7b783          	ld	a5,-1540(a5) # 800081c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    800027cc:	0007b783          	ld	a5,0(a5)
    800027d0:	05078793          	addi	a5,a5,80
    800027d4:	00a78663          	beq	a5,a0,800027e0 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0xc0>
        return false;
    800027d8:	00000513          	li	a0,0
    800027dc:	f79ff06f          	j	80002754 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    800027e0:	fffff097          	auipc	ra,0xfffff
    800027e4:	48c080e7          	jalr	1164(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    800027e8:	03100593          	li	a1,49
    800027ec:	fffff097          	auipc	ra,0xfffff
    800027f0:	564080e7          	jalr	1380(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
    800027f4:	00050a13          	mv	s4,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + 2 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    800027f8:	00006797          	auipc	a5,0x6
    800027fc:	9c87b783          	ld	a5,-1592(a5) # 800081c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002800:	0007b783          	ld	a5,0(a5)
    80002804:	09078793          	addi	a5,a5,144
    80002808:	00a78663          	beq	a5,a0,80002814 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0xf4>
        return false;
    8000280c:	00000513          	li	a0,0
    80002810:	f45ff06f          	j	80002754 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002814:	fffff097          	auipc	ra,0xfffff
    80002818:	458080e7          	jalr	1112(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    8000281c:	00098593          	mv	a1,s3
    80002820:	fffff097          	auipc	ra,0xfffff
    80002824:	5d8080e7          	jalr	1496(ra) # 80001df8 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002828:	fffff097          	auipc	ra,0xfffff
    8000282c:	444080e7          	jalr	1092(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002830:	01e00593          	li	a1,30
    80002834:	fffff097          	auipc	ra,0xfffff
    80002838:	51c080e7          	jalr	1308(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
    8000283c:	00050993          	mv	s3,a0
    if (pointers[3] != MemoryAllocator::managedMemorySpaceStart + 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002840:	00006797          	auipc	a5,0x6
    80002844:	9807b783          	ld	a5,-1664(a5) # 800081c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002848:	0007b783          	ld	a5,0(a5)
    8000284c:	05078793          	addi	a5,a5,80
    80002850:	00a78663          	beq	a5,a0,8000285c <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x13c>
        return false;
    80002854:	00000513          	li	a0,0
    80002858:	efdff06f          	j	80002754 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    8000285c:	fffff097          	auipc	ra,0xfffff
    80002860:	410080e7          	jalr	1040(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002864:	12100593          	li	a1,289
    80002868:	fffff097          	auipc	ra,0xfffff
    8000286c:	4e8080e7          	jalr	1256(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
    80002870:	00050a93          	mv	s5,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + 4 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002874:	00006797          	auipc	a5,0x6
    80002878:	94c7b783          	ld	a5,-1716(a5) # 800081c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    8000287c:	0007b783          	ld	a5,0(a5)
    80002880:	11078793          	addi	a5,a5,272
    80002884:	00a78663          	beq	a5,a0,80002890 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x170>
        return false;
    80002888:	00000513          	li	a0,0
    8000288c:	ec9ff06f          	j	80002754 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    if (!testMemoryMetadataValidity()) return false;
    80002890:	00048513          	mv	a0,s1
    80002894:	00000097          	auipc	ra,0x0
    80002898:	adc080e7          	jalr	-1316(ra) # 80002370 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    8000289c:	ea050ce3          	beqz	a0,80002754 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    800028a0:	fffff097          	auipc	ra,0xfffff
    800028a4:	3cc080e7          	jalr	972(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    800028a8:	00090593          	mv	a1,s2
    800028ac:	fffff097          	auipc	ra,0xfffff
    800028b0:	54c080e7          	jalr	1356(ra) # 80001df8 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    800028b4:	fffff097          	auipc	ra,0xfffff
    800028b8:	3b8080e7          	jalr	952(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    800028bc:	000a0593          	mv	a1,s4
    800028c0:	fffff097          	auipc	ra,0xfffff
    800028c4:	538080e7          	jalr	1336(ra) # 80001df8 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    800028c8:	fffff097          	auipc	ra,0xfffff
    800028cc:	3a4080e7          	jalr	932(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    800028d0:	00098593          	mv	a1,s3
    800028d4:	fffff097          	auipc	ra,0xfffff
    800028d8:	524080e7          	jalr	1316(ra) # 80001df8 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    800028dc:	fffff097          	auipc	ra,0xfffff
    800028e0:	390080e7          	jalr	912(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    800028e4:	000a8593          	mv	a1,s5
    800028e8:	fffff097          	auipc	ra,0xfffff
    800028ec:	510080e7          	jalr	1296(ra) # 80001df8 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    800028f0:	00048513          	mv	a0,s1
    800028f4:	00000097          	auipc	ra,0x0
    800028f8:	a7c080e7          	jalr	-1412(ra) # 80002370 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    800028fc:	e59ff06f          	j	80002754 <_ZN19MemoryAllocatorTest13firstFitTest1Ev+0x34>

0000000080002900 <_ZN19MemoryAllocatorTest12printPointerEiPPv>:


void MemoryAllocatorTest::printPointer(int i, void** pointers) {
    80002900:	fe010113          	addi	sp,sp,-32
    80002904:	00113c23          	sd	ra,24(sp)
    80002908:	00813823          	sd	s0,16(sp)
    8000290c:	00913423          	sd	s1,8(sp)
    80002910:	01213023          	sd	s2,0(sp)
    80002914:	02010413          	addi	s0,sp,32
    80002918:	00058913          	mv	s2,a1
    8000291c:	00060493          	mv	s1,a2
    printString("\npointers[");
    80002920:	00005517          	auipc	a0,0x5
    80002924:	a9850513          	addi	a0,a0,-1384 # 800073b8 <CONSOLE_STATUS+0x3a8>
    80002928:	00001097          	auipc	ra,0x1
    8000292c:	210080e7          	jalr	528(ra) # 80003b38 <_Z11printStringPKc>
    printInteger(i);
    80002930:	00090513          	mv	a0,s2
    80002934:	00001097          	auipc	ra,0x1
    80002938:	274080e7          	jalr	628(ra) # 80003ba8 <_Z12printIntegerm>
    printString("]: ");
    8000293c:	00005517          	auipc	a0,0x5
    80002940:	a8c50513          	addi	a0,a0,-1396 # 800073c8 <CONSOLE_STATUS+0x3b8>
    80002944:	00001097          	auipc	ra,0x1
    80002948:	1f4080e7          	jalr	500(ra) # 80003b38 <_Z11printStringPKc>
    printInteger((uint64)((uint8*) pointers[i] - MemoryAllocator::managedMemorySpaceStart));
    8000294c:	00391613          	slli	a2,s2,0x3
    80002950:	00c484b3          	add	s1,s1,a2
    80002954:	0004b503          	ld	a0,0(s1)
    80002958:	00006797          	auipc	a5,0x6
    8000295c:	8687b783          	ld	a5,-1944(a5) # 800081c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002960:	0007b783          	ld	a5,0(a5)
    80002964:	40f50533          	sub	a0,a0,a5
    80002968:	00001097          	auipc	ra,0x1
    8000296c:	240080e7          	jalr	576(ra) # 80003ba8 <_Z12printIntegerm>
    printString("\npointers[");
    80002970:	00005517          	auipc	a0,0x5
    80002974:	a4850513          	addi	a0,a0,-1464 # 800073b8 <CONSOLE_STATUS+0x3a8>
    80002978:	00001097          	auipc	ra,0x1
    8000297c:	1c0080e7          	jalr	448(ra) # 80003b38 <_Z11printStringPKc>
    printInteger(i);
    80002980:	00090513          	mv	a0,s2
    80002984:	00001097          	auipc	ra,0x1
    80002988:	224080e7          	jalr	548(ra) # 80003ba8 <_Z12printIntegerm>
    printString("]->blockNo: "); printInteger((uint64) (((MemoryAllocator::SegmentDescriptor*) pointers[i])->noBlocks));
    8000298c:	00005517          	auipc	a0,0x5
    80002990:	a4450513          	addi	a0,a0,-1468 # 800073d0 <CONSOLE_STATUS+0x3c0>
    80002994:	00001097          	auipc	ra,0x1
    80002998:	1a4080e7          	jalr	420(ra) # 80003b38 <_Z11printStringPKc>
    8000299c:	0004b783          	ld	a5,0(s1)
    800029a0:	0007b503          	ld	a0,0(a5)
    800029a4:	00001097          	auipc	ra,0x1
    800029a8:	204080e7          	jalr	516(ra) # 80003ba8 <_Z12printIntegerm>
    printString("\n");
    800029ac:	00004517          	auipc	a0,0x4
    800029b0:	6dc50513          	addi	a0,a0,1756 # 80007088 <CONSOLE_STATUS+0x78>
    800029b4:	00001097          	auipc	ra,0x1
    800029b8:	184080e7          	jalr	388(ra) # 80003b38 <_Z11printStringPKc>
}
    800029bc:	01813083          	ld	ra,24(sp)
    800029c0:	01013403          	ld	s0,16(sp)
    800029c4:	00813483          	ld	s1,8(sp)
    800029c8:	00013903          	ld	s2,0(sp)
    800029cc:	02010113          	addi	sp,sp,32
    800029d0:	00008067          	ret

00000000800029d4 <_ZN19MemoryAllocatorTest13firstFitTest2Ev>:

bool MemoryAllocatorTest::firstFitTest2() {
    800029d4:	fc010113          	addi	sp,sp,-64
    800029d8:	02113c23          	sd	ra,56(sp)
    800029dc:	02813823          	sd	s0,48(sp)
    800029e0:	02913423          	sd	s1,40(sp)
    800029e4:	03213023          	sd	s2,32(sp)
    800029e8:	01313c23          	sd	s3,24(sp)
    800029ec:	01413823          	sd	s4,16(sp)
    800029f0:	01513423          	sd	s5,8(sp)
    800029f4:	04010413          	addi	s0,sp,64
    800029f8:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    800029fc:	00000097          	auipc	ra,0x0
    80002a00:	974080e7          	jalr	-1676(ra) # 80002370 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002a04:	02051463          	bnez	a0,80002a2c <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x58>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002a08:	03813083          	ld	ra,56(sp)
    80002a0c:	03013403          	ld	s0,48(sp)
    80002a10:	02813483          	ld	s1,40(sp)
    80002a14:	02013903          	ld	s2,32(sp)
    80002a18:	01813983          	ld	s3,24(sp)
    80002a1c:	01013a03          	ld	s4,16(sp)
    80002a20:	00813a83          	ld	s5,8(sp)
    80002a24:	04010113          	addi	sp,sp,64
    80002a28:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002a2c:	fffff097          	auipc	ra,0xfffff
    80002a30:	240080e7          	jalr	576(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002a34:	08200593          	li	a1,130
    80002a38:	fffff097          	auipc	ra,0xfffff
    80002a3c:	318080e7          	jalr	792(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
    80002a40:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002a44:	00005797          	auipc	a5,0x5
    80002a48:	77c7b783          	ld	a5,1916(a5) # 800081c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a4c:	0007b783          	ld	a5,0(a5)
    80002a50:	01078793          	addi	a5,a5,16
    80002a54:	00a78663          	beq	a5,a0,80002a60 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x8c>
        return false;
    80002a58:	00000513          	li	a0,0
    80002a5c:	fadff06f          	j	80002a08 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    80002a60:	fffff097          	auipc	ra,0xfffff
    80002a64:	20c080e7          	jalr	524(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002a68:	01400593          	li	a1,20
    80002a6c:	fffff097          	auipc	ra,0xfffff
    80002a70:	2e4080e7          	jalr	740(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
    80002a74:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 3 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002a78:	00005797          	auipc	a5,0x5
    80002a7c:	7487b783          	ld	a5,1864(a5) # 800081c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a80:	0007b783          	ld	a5,0(a5)
    80002a84:	0d078793          	addi	a5,a5,208
    80002a88:	00a78663          	beq	a5,a0,80002a94 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0xc0>
        return false;
    80002a8c:	00000513          	li	a0,0
    80002a90:	f79ff06f          	j	80002a08 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    80002a94:	fffff097          	auipc	ra,0xfffff
    80002a98:	1d8080e7          	jalr	472(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002a9c:	00090593          	mv	a1,s2
    80002aa0:	fffff097          	auipc	ra,0xfffff
    80002aa4:	358080e7          	jalr	856(ra) # 80001df8 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    80002aa8:	fffff097          	auipc	ra,0xfffff
    80002aac:	1c4080e7          	jalr	452(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002ab0:	07800593          	li	a1,120
    80002ab4:	fffff097          	auipc	ra,0xfffff
    80002ab8:	29c080e7          	jalr	668(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
    80002abc:	00050913          	mv	s2,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002ac0:	00005797          	auipc	a5,0x5
    80002ac4:	7007b783          	ld	a5,1792(a5) # 800081c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002ac8:	0007b783          	ld	a5,0(a5)
    80002acc:	01078793          	addi	a5,a5,16
    80002ad0:	00a78663          	beq	a5,a0,80002adc <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x108>
        return false;
    80002ad4:	00000513          	li	a0,0
    80002ad8:	f31ff06f          	j	80002a08 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002adc:	fffff097          	auipc	ra,0xfffff
    80002ae0:	190080e7          	jalr	400(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002ae4:	01e00593          	li	a1,30
    80002ae8:	fffff097          	auipc	ra,0xfffff
    80002aec:	268080e7          	jalr	616(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
    80002af0:	00050a13          	mv	s4,a0
    if (pointers[3] != MemoryAllocator::managedMemorySpaceStart + 4 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002af4:	00005797          	auipc	a5,0x5
    80002af8:	6cc7b783          	ld	a5,1740(a5) # 800081c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002afc:	0007b783          	ld	a5,0(a5)
    80002b00:	11078793          	addi	a5,a5,272
    80002b04:	00a78663          	beq	a5,a0,80002b10 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x13c>
        return false;
    80002b08:	00000513          	li	a0,0
    80002b0c:	efdff06f          	j	80002a08 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002b10:	fffff097          	auipc	ra,0xfffff
    80002b14:	15c080e7          	jalr	348(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002b18:	00090593          	mv	a1,s2
    80002b1c:	fffff097          	auipc	ra,0xfffff
    80002b20:	2dc080e7          	jalr	732(ra) # 80001df8 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002b24:	fffff097          	auipc	ra,0xfffff
    80002b28:	148080e7          	jalr	328(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002b2c:	02f00593          	li	a1,47
    80002b30:	fffff097          	auipc	ra,0xfffff
    80002b34:	220080e7          	jalr	544(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
    80002b38:	00050913          	mv	s2,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002b3c:	00005797          	auipc	a5,0x5
    80002b40:	6847b783          	ld	a5,1668(a5) # 800081c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b44:	0007b783          	ld	a5,0(a5)
    80002b48:	01078793          	addi	a5,a5,16
    80002b4c:	00a78663          	beq	a5,a0,80002b58 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x184>
        return false;
    80002b50:	00000513          	li	a0,0
    80002b54:	eb5ff06f          	j	80002a08 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    pointers[5] = MemoryAllocator::instance()->kmem_alloc(sizes[5]);
    80002b58:	fffff097          	auipc	ra,0xfffff
    80002b5c:	114080e7          	jalr	276(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002b60:	01400593          	li	a1,20
    80002b64:	fffff097          	auipc	ra,0xfffff
    80002b68:	1ec080e7          	jalr	492(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
    80002b6c:	00050a93          	mv	s5,a0
    if (pointers[5] != MemoryAllocator::managedMemorySpaceStart + 1 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002b70:	00005797          	auipc	a5,0x5
    80002b74:	6507b783          	ld	a5,1616(a5) # 800081c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b78:	0007b783          	ld	a5,0(a5)
    80002b7c:	05078793          	addi	a5,a5,80
    80002b80:	00a78663          	beq	a5,a0,80002b8c <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x1b8>
        return false;
    80002b84:	00000513          	li	a0,0
    80002b88:	e81ff06f          	j	80002a08 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    if (!testMemoryMetadataValidity()) return false;
    80002b8c:	00048513          	mv	a0,s1
    80002b90:	fffff097          	auipc	ra,0xfffff
    80002b94:	7e0080e7          	jalr	2016(ra) # 80002370 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002b98:	e60508e3          	beqz	a0,80002a08 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002b9c:	fffff097          	auipc	ra,0xfffff
    80002ba0:	0d0080e7          	jalr	208(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002ba4:	00098593          	mv	a1,s3
    80002ba8:	fffff097          	auipc	ra,0xfffff
    80002bac:	250080e7          	jalr	592(ra) # 80001df8 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002bb0:	fffff097          	auipc	ra,0xfffff
    80002bb4:	0bc080e7          	jalr	188(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002bb8:	000a0593          	mv	a1,s4
    80002bbc:	fffff097          	auipc	ra,0xfffff
    80002bc0:	23c080e7          	jalr	572(ra) # 80001df8 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80002bc4:	fffff097          	auipc	ra,0xfffff
    80002bc8:	0a8080e7          	jalr	168(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002bcc:	00090593          	mv	a1,s2
    80002bd0:	fffff097          	auipc	ra,0xfffff
    80002bd4:	228080e7          	jalr	552(ra) # 80001df8 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    80002bd8:	fffff097          	auipc	ra,0xfffff
    80002bdc:	094080e7          	jalr	148(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002be0:	000a8593          	mv	a1,s5
    80002be4:	fffff097          	auipc	ra,0xfffff
    80002be8:	214080e7          	jalr	532(ra) # 80001df8 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002bec:	00048513          	mv	a0,s1
    80002bf0:	fffff097          	auipc	ra,0xfffff
    80002bf4:	780080e7          	jalr	1920(ra) # 80002370 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002bf8:	e11ff06f          	j	80002a08 <_ZN19MemoryAllocatorTest13firstFitTest2Ev+0x34>

0000000080002bfc <_ZN19MemoryAllocatorTest13firstFitTest3Ev>:


bool MemoryAllocatorTest::firstFitTest3() {
    80002bfc:	fb010113          	addi	sp,sp,-80
    80002c00:	04113423          	sd	ra,72(sp)
    80002c04:	04813023          	sd	s0,64(sp)
    80002c08:	02913c23          	sd	s1,56(sp)
    80002c0c:	03213823          	sd	s2,48(sp)
    80002c10:	03313423          	sd	s3,40(sp)
    80002c14:	03413023          	sd	s4,32(sp)
    80002c18:	01513c23          	sd	s5,24(sp)
    80002c1c:	01613823          	sd	s6,16(sp)
    80002c20:	01713423          	sd	s7,8(sp)
    80002c24:	05010413          	addi	s0,sp,80
    80002c28:	00050493          	mv	s1,a0
    if (!testMemoryMetadataValidity()) return false;
    80002c2c:	fffff097          	auipc	ra,0xfffff
    80002c30:	744080e7          	jalr	1860(ra) # 80002370 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002c34:	02051863          	bnez	a0,80002c64 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x68>
    MemoryAllocator::instance()->kmem_free(pointers[6]);
    MemoryAllocator::instance()->kmem_free(pointers[7]);
    if (!testMemoryMetadataValidity()) return false;

    return true;
}
    80002c38:	04813083          	ld	ra,72(sp)
    80002c3c:	04013403          	ld	s0,64(sp)
    80002c40:	03813483          	ld	s1,56(sp)
    80002c44:	03013903          	ld	s2,48(sp)
    80002c48:	02813983          	ld	s3,40(sp)
    80002c4c:	02013a03          	ld	s4,32(sp)
    80002c50:	01813a83          	ld	s5,24(sp)
    80002c54:	01013b03          	ld	s6,16(sp)
    80002c58:	00813b83          	ld	s7,8(sp)
    80002c5c:	05010113          	addi	sp,sp,80
    80002c60:	00008067          	ret
    pointers[0] = MemoryAllocator::instance()->kmem_alloc(sizes[0]);
    80002c64:	fffff097          	auipc	ra,0xfffff
    80002c68:	008080e7          	jalr	8(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002c6c:	13000593          	li	a1,304
    80002c70:	fffff097          	auipc	ra,0xfffff
    80002c74:	0e0080e7          	jalr	224(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
    80002c78:	00050913          	mv	s2,a0
    if (pointers[0] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002c7c:	00005797          	auipc	a5,0x5
    80002c80:	5447b783          	ld	a5,1348(a5) # 800081c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002c84:	0007b783          	ld	a5,0(a5)
    80002c88:	01078793          	addi	a5,a5,16
    80002c8c:	00a78663          	beq	a5,a0,80002c98 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x9c>
        return false;
    80002c90:	00000513          	li	a0,0
    80002c94:	fa5ff06f          	j	80002c38 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[1] = MemoryAllocator::instance()->kmem_alloc(sizes[1]);
    80002c98:	fffff097          	auipc	ra,0xfffff
    80002c9c:	fd4080e7          	jalr	-44(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002ca0:	03100593          	li	a1,49
    80002ca4:	fffff097          	auipc	ra,0xfffff
    80002ca8:	0ac080e7          	jalr	172(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
    80002cac:	00050993          	mv	s3,a0
    if (pointers[1] != MemoryAllocator::managedMemorySpaceStart + 5 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002cb0:	00005797          	auipc	a5,0x5
    80002cb4:	5107b783          	ld	a5,1296(a5) # 800081c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002cb8:	0007b783          	ld	a5,0(a5)
    80002cbc:	15078793          	addi	a5,a5,336
    80002cc0:	00a78663          	beq	a5,a0,80002ccc <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0xd0>
        return false;
    80002cc4:	00000513          	li	a0,0
    80002cc8:	f71ff06f          	j	80002c38 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[0]);
    80002ccc:	fffff097          	auipc	ra,0xfffff
    80002cd0:	fa0080e7          	jalr	-96(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002cd4:	00090593          	mv	a1,s2
    80002cd8:	fffff097          	auipc	ra,0xfffff
    80002cdc:	120080e7          	jalr	288(ra) # 80001df8 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[2] = MemoryAllocator::instance()->kmem_alloc(sizes[2]);
    80002ce0:	fffff097          	auipc	ra,0xfffff
    80002ce4:	f8c080e7          	jalr	-116(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002ce8:	0e600593          	li	a1,230
    80002cec:	fffff097          	auipc	ra,0xfffff
    80002cf0:	064080e7          	jalr	100(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
    80002cf4:	00050913          	mv	s2,a0
    if (pointers[2] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002cf8:	00005797          	auipc	a5,0x5
    80002cfc:	4c87b783          	ld	a5,1224(a5) # 800081c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002d00:	0007b783          	ld	a5,0(a5)
    80002d04:	01078793          	addi	a5,a5,16
    80002d08:	00a78663          	beq	a5,a0,80002d14 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x118>
        return false;
    80002d0c:	00000513          	li	a0,0
    80002d10:	f29ff06f          	j	80002c38 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[3] = MemoryAllocator::instance()->kmem_alloc(sizes[3]);
    80002d14:	fffff097          	auipc	ra,0xfffff
    80002d18:	f58080e7          	jalr	-168(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002d1c:	fdb00593          	li	a1,-37
    80002d20:	fffff097          	auipc	ra,0xfffff
    80002d24:	030080e7          	jalr	48(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
    80002d28:	00050a13          	mv	s4,a0
    if (pointers[3]) return false;
    80002d2c:	00050663          	beqz	a0,80002d38 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x13c>
    80002d30:	00000513          	li	a0,0
    80002d34:	f05ff06f          	j	80002c38 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[4] = MemoryAllocator::instance()->kmem_alloc(sizes[4]);
    80002d38:	fffff097          	auipc	ra,0xfffff
    80002d3c:	f34080e7          	jalr	-204(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002d40:	01e00593          	li	a1,30
    80002d44:	fffff097          	auipc	ra,0xfffff
    80002d48:	00c080e7          	jalr	12(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
    80002d4c:	00050a93          	mv	s5,a0
    if (pointers[4] != MemoryAllocator::managedMemorySpaceStart + 7 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002d50:	00005797          	auipc	a5,0x5
    80002d54:	4707b783          	ld	a5,1136(a5) # 800081c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002d58:	0007b783          	ld	a5,0(a5)
    80002d5c:	1d078793          	addi	a5,a5,464
    80002d60:	00a78663          	beq	a5,a0,80002d6c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x170>
        return false;
    80002d64:	00000513          	li	a0,0
    80002d68:	ed1ff06f          	j	80002c38 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[2]);
    80002d6c:	fffff097          	auipc	ra,0xfffff
    80002d70:	f00080e7          	jalr	-256(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002d74:	00090593          	mv	a1,s2
    80002d78:	fffff097          	auipc	ra,0xfffff
    80002d7c:	080080e7          	jalr	128(ra) # 80001df8 <_ZN15MemoryAllocator9kmem_freeEPv>
    pointers[5] = MemoryAllocator::instance()->kmem_alloc(sizes[5]);
    80002d80:	fffff097          	auipc	ra,0xfffff
    80002d84:	eec080e7          	jalr	-276(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002d88:	09600593          	li	a1,150
    80002d8c:	fffff097          	auipc	ra,0xfffff
    80002d90:	fc4080e7          	jalr	-60(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
    80002d94:	00050b93          	mv	s7,a0
    if (pointers[5] != MemoryAllocator::managedMemorySpaceStart + sizeof(MemoryAllocator::SegmentDescriptor))
    80002d98:	00005797          	auipc	a5,0x5
    80002d9c:	4287b783          	ld	a5,1064(a5) # 800081c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002da0:	0007b783          	ld	a5,0(a5)
    80002da4:	01078793          	addi	a5,a5,16
    80002da8:	00a78663          	beq	a5,a0,80002db4 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x1b8>
        return false;
    80002dac:	00000513          	li	a0,0
    80002db0:	e89ff06f          	j	80002c38 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[6] = MemoryAllocator::instance()->kmem_alloc(sizes[6]);
    80002db4:	fffff097          	auipc	ra,0xfffff
    80002db8:	eb8080e7          	jalr	-328(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002dbc:	02f00593          	li	a1,47
    80002dc0:	fffff097          	auipc	ra,0xfffff
    80002dc4:	f90080e7          	jalr	-112(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
    80002dc8:	00050b13          	mv	s6,a0
    if (pointers[6] != MemoryAllocator::managedMemorySpaceStart + 3 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002dcc:	00005797          	auipc	a5,0x5
    80002dd0:	3f47b783          	ld	a5,1012(a5) # 800081c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002dd4:	0007b783          	ld	a5,0(a5)
    80002dd8:	0d078793          	addi	a5,a5,208
    80002ddc:	00a78663          	beq	a5,a0,80002de8 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x1ec>
        return false;
    80002de0:	00000513          	li	a0,0
    80002de4:	e55ff06f          	j	80002c38 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    pointers[7] = MemoryAllocator::instance()->kmem_alloc(sizes[7]);
    80002de8:	fffff097          	auipc	ra,0xfffff
    80002dec:	e84080e7          	jalr	-380(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002df0:	02500593          	li	a1,37
    80002df4:	fffff097          	auipc	ra,0xfffff
    80002df8:	f5c080e7          	jalr	-164(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
    80002dfc:	00050913          	mv	s2,a0
    if (pointers[7] != MemoryAllocator::managedMemorySpaceStart + 8 * 64 + sizeof(MemoryAllocator::SegmentDescriptor))
    80002e00:	00005797          	auipc	a5,0x5
    80002e04:	3c07b783          	ld	a5,960(a5) # 800081c0 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002e08:	0007b783          	ld	a5,0(a5)
    80002e0c:	21078793          	addi	a5,a5,528
    80002e10:	00a78663          	beq	a5,a0,80002e1c <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x220>
        return false;
    80002e14:	00000513          	li	a0,0
    80002e18:	e21ff06f          	j	80002c38 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    if (!testMemoryMetadataValidity()) return false;
    80002e1c:	00048513          	mv	a0,s1
    80002e20:	fffff097          	auipc	ra,0xfffff
    80002e24:	550080e7          	jalr	1360(ra) # 80002370 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002e28:	e00508e3          	beqz	a0,80002c38 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>
    MemoryAllocator::instance()->kmem_free(pointers[1]);
    80002e2c:	fffff097          	auipc	ra,0xfffff
    80002e30:	e40080e7          	jalr	-448(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002e34:	00098593          	mv	a1,s3
    80002e38:	fffff097          	auipc	ra,0xfffff
    80002e3c:	fc0080e7          	jalr	-64(ra) # 80001df8 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[3]);
    80002e40:	fffff097          	auipc	ra,0xfffff
    80002e44:	e2c080e7          	jalr	-468(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002e48:	000a0593          	mv	a1,s4
    80002e4c:	fffff097          	auipc	ra,0xfffff
    80002e50:	fac080e7          	jalr	-84(ra) # 80001df8 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[4]);
    80002e54:	fffff097          	auipc	ra,0xfffff
    80002e58:	e18080e7          	jalr	-488(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002e5c:	000a8593          	mv	a1,s5
    80002e60:	fffff097          	auipc	ra,0xfffff
    80002e64:	f98080e7          	jalr	-104(ra) # 80001df8 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[5]);
    80002e68:	fffff097          	auipc	ra,0xfffff
    80002e6c:	e04080e7          	jalr	-508(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002e70:	000b8593          	mv	a1,s7
    80002e74:	fffff097          	auipc	ra,0xfffff
    80002e78:	f84080e7          	jalr	-124(ra) # 80001df8 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[6]);
    80002e7c:	fffff097          	auipc	ra,0xfffff
    80002e80:	df0080e7          	jalr	-528(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002e84:	000b0593          	mv	a1,s6
    80002e88:	fffff097          	auipc	ra,0xfffff
    80002e8c:	f70080e7          	jalr	-144(ra) # 80001df8 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(pointers[7]);
    80002e90:	fffff097          	auipc	ra,0xfffff
    80002e94:	ddc080e7          	jalr	-548(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80002e98:	00090593          	mv	a1,s2
    80002e9c:	fffff097          	auipc	ra,0xfffff
    80002ea0:	f5c080e7          	jalr	-164(ra) # 80001df8 <_ZN15MemoryAllocator9kmem_freeEPv>
    if (!testMemoryMetadataValidity()) return false;
    80002ea4:	00048513          	mv	a0,s1
    80002ea8:	fffff097          	auipc	ra,0xfffff
    80002eac:	4c8080e7          	jalr	1224(ra) # 80002370 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    80002eb0:	d89ff06f          	j	80002c38 <_ZN19MemoryAllocatorTest13firstFitTest3Ev+0x3c>

0000000080002eb4 <_ZN19MemoryAllocatorTest12testFirstFitEv>:
bool MemoryAllocatorTest::testFirstFit() {
    80002eb4:	fe010113          	addi	sp,sp,-32
    80002eb8:	00113c23          	sd	ra,24(sp)
    80002ebc:	00813823          	sd	s0,16(sp)
    80002ec0:	00913423          	sd	s1,8(sp)
    80002ec4:	02010413          	addi	s0,sp,32
    80002ec8:	00050493          	mv	s1,a0
    if (!firstFitTest1()) return false;
    80002ecc:	00000097          	auipc	ra,0x0
    80002ed0:	854080e7          	jalr	-1964(ra) # 80002720 <_ZN19MemoryAllocatorTest13firstFitTest1Ev>
    80002ed4:	00051c63          	bnez	a0,80002eec <_ZN19MemoryAllocatorTest12testFirstFitEv+0x38>
}
    80002ed8:	01813083          	ld	ra,24(sp)
    80002edc:	01013403          	ld	s0,16(sp)
    80002ee0:	00813483          	ld	s1,8(sp)
    80002ee4:	02010113          	addi	sp,sp,32
    80002ee8:	00008067          	ret
    if (!firstFitTest2()) return false;
    80002eec:	00048513          	mv	a0,s1
    80002ef0:	00000097          	auipc	ra,0x0
    80002ef4:	ae4080e7          	jalr	-1308(ra) # 800029d4 <_ZN19MemoryAllocatorTest13firstFitTest2Ev>
    80002ef8:	fe0500e3          	beqz	a0,80002ed8 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x24>
    if (!firstFitTest3()) return false;
    80002efc:	00048513          	mv	a0,s1
    80002f00:	00000097          	auipc	ra,0x0
    80002f04:	cfc080e7          	jalr	-772(ra) # 80002bfc <_ZN19MemoryAllocatorTest13firstFitTest3Ev>
    80002f08:	fd1ff06f          	j	80002ed8 <_ZN19MemoryAllocatorTest12testFirstFitEv+0x24>

0000000080002f0c <_ZN19MemoryAllocatorTest25testSegmentDescriptorSizeEv>:

bool MemoryAllocatorTest::testSegmentDescriptorSize() {
    80002f0c:	ff010113          	addi	sp,sp,-16
    80002f10:	00113423          	sd	ra,8(sp)
    80002f14:	00813023          	sd	s0,0(sp)
    80002f18:	01010413          	addi	s0,sp,16
    if (!testMemoryMetadataValidity()) return false;
    80002f1c:	fffff097          	auipc	ra,0xfffff
    80002f20:	454080e7          	jalr	1108(ra) # 80002370 <_ZN19MemoryAllocatorTest26testMemoryMetadataValidityEv>
    return sizeof(MemoryAllocator::SegmentDescriptor) == 16;
}
    80002f24:	00813083          	ld	ra,8(sp)
    80002f28:	00013403          	ld	s0,0(sp)
    80002f2c:	01010113          	addi	sp,sp,16
    80002f30:	00008067          	ret

0000000080002f34 <_ZN19MemoryAllocatorTest8runTestsEv>:
bool MemoryAllocatorTest::runTests() {
    80002f34:	f6010113          	addi	sp,sp,-160
    80002f38:	08113c23          	sd	ra,152(sp)
    80002f3c:	08813823          	sd	s0,144(sp)
    80002f40:	08913423          	sd	s1,136(sp)
    80002f44:	09213023          	sd	s2,128(sp)
    80002f48:	07313c23          	sd	s3,120(sp)
    80002f4c:	0a010413          	addi	s0,sp,160
    80002f50:	00050993          	mv	s3,a0
    sizes[0] = 3.7 * MEM_BLOCK_SIZE;
    80002f54:	0ec00793          	li	a5,236
    80002f58:	f6f43423          	sd	a5,-152(s0)
    sizes[1] = MEM_BLOCK_SIZE;
    80002f5c:	04000793          	li	a5,64
    80002f60:	f6f43823          	sd	a5,-144(s0)
    sizes[2] = 0.3 * MEM_BLOCK_SIZE;
    80002f64:	01300793          	li	a5,19
    80002f68:	f6f43c23          	sd	a5,-136(s0)
    sizes[3] = 0;
    80002f6c:	f8043023          	sd	zero,-128(s0)
    sizes[4] = -37;
    80002f70:	fdb00793          	li	a5,-37
    80002f74:	f8f43423          	sd	a5,-120(s0)
    sizes[5] = sizeof(MemoryAllocator::SegmentDescriptor) - 1;
    80002f78:	00f00793          	li	a5,15
    80002f7c:	f8f43823          	sd	a5,-112(s0)
    sizes[6] = sizeof(MemoryAllocator::SegmentDescriptor);
    80002f80:	01000793          	li	a5,16
    80002f84:	f8f43c23          	sd	a5,-104(s0)
    sizes[7] = sizeof(MemoryAllocator::SegmentDescriptor) + 1;
    80002f88:	01100793          	li	a5,17
    80002f8c:	faf43023          	sd	a5,-96(s0)
    sizes[8] = MemoryAllocator::minMemoryFragmentSize - 1;
    80002f90:	00005797          	auipc	a5,0x5
    80002f94:	1f87b783          	ld	a5,504(a5) # 80008188 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002f98:	0007b783          	ld	a5,0(a5)
    80002f9c:	fff78713          	addi	a4,a5,-1
    80002fa0:	fae43423          	sd	a4,-88(s0)
    sizes[9] = MemoryAllocator::minMemoryFragmentSize;
    80002fa4:	faf43823          	sd	a5,-80(s0)
    sizes[10] = MemoryAllocator::minMemoryFragmentSize + 1;
    80002fa8:	00178793          	addi	a5,a5,1
    80002fac:	faf43c23          	sd	a5,-72(s0)
    sizes[11] = MEM_BLOCK_SIZE - 1;
    80002fb0:	03f00793          	li	a5,63
    80002fb4:	fcf43023          	sd	a5,-64(s0)
    sizes[12] = MEM_BLOCK_SIZE + 1;
    80002fb8:	04100793          	li	a5,65
    80002fbc:	fcf43423          	sd	a5,-56(s0)
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    80002fc0:	00000493          	li	s1,0
    80002fc4:	0880006f          	j	8000304c <_ZN19MemoryAllocatorTest8runTestsEv+0x118>
            printString("Failed testMemoryAllocate test for input ");
    80002fc8:	00004517          	auipc	a0,0x4
    80002fcc:	41850513          	addi	a0,a0,1048 # 800073e0 <CONSOLE_STATUS+0x3d0>
    80002fd0:	00001097          	auipc	ra,0x1
    80002fd4:	b68080e7          	jalr	-1176(ra) # 80003b38 <_Z11printStringPKc>
            printInteger(sizes[i]); printString("\n"); return false;
    80002fd8:	00090513          	mv	a0,s2
    80002fdc:	00001097          	auipc	ra,0x1
    80002fe0:	bcc080e7          	jalr	-1076(ra) # 80003ba8 <_Z12printIntegerm>
    80002fe4:	00004517          	auipc	a0,0x4
    80002fe8:	0a450513          	addi	a0,a0,164 # 80007088 <CONSOLE_STATUS+0x78>
    80002fec:	00001097          	auipc	ra,0x1
    80002ff0:	b4c080e7          	jalr	-1204(ra) # 80003b38 <_Z11printStringPKc>
    80002ff4:	00000493          	li	s1,0
}
    80002ff8:	00048513          	mv	a0,s1
    80002ffc:	09813083          	ld	ra,152(sp)
    80003000:	09013403          	ld	s0,144(sp)
    80003004:	08813483          	ld	s1,136(sp)
    80003008:	08013903          	ld	s2,128(sp)
    8000300c:	07813983          	ld	s3,120(sp)
    80003010:	0a010113          	addi	sp,sp,160
    80003014:	00008067          	ret
            printString("Failed testMemoryFree test for input ");
    80003018:	00004517          	auipc	a0,0x4
    8000301c:	40050513          	addi	a0,a0,1024 # 80007418 <CONSOLE_STATUS+0x408>
    80003020:	00001097          	auipc	ra,0x1
    80003024:	b18080e7          	jalr	-1256(ra) # 80003b38 <_Z11printStringPKc>
            printInteger(sizes[i]); printString("\n"); return false;
    80003028:	00090513          	mv	a0,s2
    8000302c:	00001097          	auipc	ra,0x1
    80003030:	b7c080e7          	jalr	-1156(ra) # 80003ba8 <_Z12printIntegerm>
    80003034:	00004517          	auipc	a0,0x4
    80003038:	05450513          	addi	a0,a0,84 # 80007088 <CONSOLE_STATUS+0x78>
    8000303c:	00001097          	auipc	ra,0x1
    80003040:	afc080e7          	jalr	-1284(ra) # 80003b38 <_Z11printStringPKc>
    80003044:	fb1ff06f          	j	80002ff4 <_ZN19MemoryAllocatorTest8runTestsEv+0xc0>
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    80003048:	0014849b          	addiw	s1,s1,1
    8000304c:	00c00793          	li	a5,12
    80003050:	0897c863          	blt	a5,s1,800030e0 <_ZN19MemoryAllocatorTest8runTestsEv+0x1ac>
        void * allocatedMemoryPointer = nullptr;
    80003054:	f6043023          	sd	zero,-160(s0)
        if (!testMemoryAllocate(sizes[i], &allocatedMemoryPointer)) {
    80003058:	00349793          	slli	a5,s1,0x3
    8000305c:	fd040713          	addi	a4,s0,-48
    80003060:	00f707b3          	add	a5,a4,a5
    80003064:	f987b903          	ld	s2,-104(a5)
    80003068:	f6040613          	addi	a2,s0,-160
    8000306c:	00090593          	mv	a1,s2
    80003070:	00098513          	mv	a0,s3
    80003074:	fffff097          	auipc	ra,0xfffff
    80003078:	3b4080e7          	jalr	948(ra) # 80002428 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>
    8000307c:	f40506e3          	beqz	a0,80002fc8 <_ZN19MemoryAllocatorTest8runTestsEv+0x94>
        } else printString("Passed ");
    80003080:	00004517          	auipc	a0,0x4
    80003084:	39050513          	addi	a0,a0,912 # 80007410 <CONSOLE_STATUS+0x400>
    80003088:	00001097          	auipc	ra,0x1
    8000308c:	ab0080e7          	jalr	-1360(ra) # 80003b38 <_Z11printStringPKc>
        if (!testMemoryFree(sizes[i], allocatedMemoryPointer)) {
    80003090:	f6043603          	ld	a2,-160(s0)
    80003094:	00090593          	mv	a1,s2
    80003098:	00098513          	mv	a0,s3
    8000309c:	fffff097          	auipc	ra,0xfffff
    800030a0:	50c080e7          	jalr	1292(ra) # 800025a8 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>
    800030a4:	f6050ae3          	beqz	a0,80003018 <_ZN19MemoryAllocatorTest8runTestsEv+0xe4>
        } else printString("Passed ");
    800030a8:	00004517          	auipc	a0,0x4
    800030ac:	36850513          	addi	a0,a0,872 # 80007410 <CONSOLE_STATUS+0x400>
    800030b0:	00001097          	auipc	ra,0x1
    800030b4:	a88080e7          	jalr	-1400(ra) # 80003b38 <_Z11printStringPKc>
        if (i != 0 && (i + 1) % 5 == 0) printString("\n");
    800030b8:	f80488e3          	beqz	s1,80003048 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    800030bc:	0014879b          	addiw	a5,s1,1
    800030c0:	00500713          	li	a4,5
    800030c4:	02e7e7bb          	remw	a5,a5,a4
    800030c8:	f80790e3          	bnez	a5,80003048 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    800030cc:	00004517          	auipc	a0,0x4
    800030d0:	fbc50513          	addi	a0,a0,-68 # 80007088 <CONSOLE_STATUS+0x78>
    800030d4:	00001097          	auipc	ra,0x1
    800030d8:	a64080e7          	jalr	-1436(ra) # 80003b38 <_Z11printStringPKc>
    800030dc:	f6dff06f          	j	80003048 <_ZN19MemoryAllocatorTest8runTestsEv+0x114>
    if (!testFirstFit()) {
    800030e0:	00098513          	mv	a0,s3
    800030e4:	00000097          	auipc	ra,0x0
    800030e8:	dd0080e7          	jalr	-560(ra) # 80002eb4 <_ZN19MemoryAllocatorTest12testFirstFitEv>
    800030ec:	00050493          	mv	s1,a0
    800030f0:	02050e63          	beqz	a0,8000312c <_ZN19MemoryAllocatorTest8runTestsEv+0x1f8>
    else printString("Passed ");
    800030f4:	00004517          	auipc	a0,0x4
    800030f8:	31c50513          	addi	a0,a0,796 # 80007410 <CONSOLE_STATUS+0x400>
    800030fc:	00001097          	auipc	ra,0x1
    80003100:	a3c080e7          	jalr	-1476(ra) # 80003b38 <_Z11printStringPKc>
    if (!testSegmentDescriptorSize()) {
    80003104:	00098513          	mv	a0,s3
    80003108:	00000097          	auipc	ra,0x0
    8000310c:	e04080e7          	jalr	-508(ra) # 80002f0c <_ZN19MemoryAllocatorTest25testSegmentDescriptorSizeEv>
    80003110:	00050493          	mv	s1,a0
    80003114:	02050663          	beqz	a0,80003140 <_ZN19MemoryAllocatorTest8runTestsEv+0x20c>
    else printString("Passed\n");
    80003118:	00004517          	auipc	a0,0x4
    8000311c:	36850513          	addi	a0,a0,872 # 80007480 <CONSOLE_STATUS+0x470>
    80003120:	00001097          	auipc	ra,0x1
    80003124:	a18080e7          	jalr	-1512(ra) # 80003b38 <_Z11printStringPKc>
    80003128:	ed1ff06f          	j	80002ff8 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>
        printString("Failed testFirstFit\n"); return false; }
    8000312c:	00004517          	auipc	a0,0x4
    80003130:	31450513          	addi	a0,a0,788 # 80007440 <CONSOLE_STATUS+0x430>
    80003134:	00001097          	auipc	ra,0x1
    80003138:	a04080e7          	jalr	-1532(ra) # 80003b38 <_Z11printStringPKc>
    8000313c:	ebdff06f          	j	80002ff8 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>
        printString("Failed testSegmentDescriptorSize\n"); return false; }
    80003140:	00004517          	auipc	a0,0x4
    80003144:	31850513          	addi	a0,a0,792 # 80007458 <CONSOLE_STATUS+0x448>
    80003148:	00001097          	auipc	ra,0x1
    8000314c:	9f0080e7          	jalr	-1552(ra) # 80003b38 <_Z11printStringPKc>
    80003150:	ea9ff06f          	j	80002ff8 <_ZN19MemoryAllocatorTest8runTestsEv+0xc4>

0000000080003154 <_Znwm>:


using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80003154:	ff010113          	addi	sp,sp,-16
    80003158:	00113423          	sd	ra,8(sp)
    8000315c:	00813023          	sd	s0,0(sp)
    80003160:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80003164:	00003097          	auipc	ra,0x3
    80003168:	cd4080e7          	jalr	-812(ra) # 80005e38 <__mem_alloc>
    //return MemoryAllocator::instance()->kmem_alloc(n);
}
    8000316c:	00813083          	ld	ra,8(sp)
    80003170:	00013403          	ld	s0,0(sp)
    80003174:	01010113          	addi	sp,sp,16
    80003178:	00008067          	ret

000000008000317c <_Znam>:

void *operator new[](size_t n)
{
    8000317c:	ff010113          	addi	sp,sp,-16
    80003180:	00113423          	sd	ra,8(sp)
    80003184:	00813023          	sd	s0,0(sp)
    80003188:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    8000318c:	00003097          	auipc	ra,0x3
    80003190:	cac080e7          	jalr	-852(ra) # 80005e38 <__mem_alloc>
    //return MemoryAllocator::instance()->kmem_alloc(n);
}
    80003194:	00813083          	ld	ra,8(sp)
    80003198:	00013403          	ld	s0,0(sp)
    8000319c:	01010113          	addi	sp,sp,16
    800031a0:	00008067          	ret

00000000800031a4 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    800031a4:	ff010113          	addi	sp,sp,-16
    800031a8:	00113423          	sd	ra,8(sp)
    800031ac:	00813023          	sd	s0,0(sp)
    800031b0:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800031b4:	00003097          	auipc	ra,0x3
    800031b8:	bb8080e7          	jalr	-1096(ra) # 80005d6c <__mem_free>
    //MemoryAllocator::instance()->kmem_free(p);
}
    800031bc:	00813083          	ld	ra,8(sp)
    800031c0:	00013403          	ld	s0,0(sp)
    800031c4:	01010113          	addi	sp,sp,16
    800031c8:	00008067          	ret

00000000800031cc <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    800031cc:	ff010113          	addi	sp,sp,-16
    800031d0:	00113423          	sd	ra,8(sp)
    800031d4:	00813023          	sd	s0,0(sp)
    800031d8:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800031dc:	00003097          	auipc	ra,0x3
    800031e0:	b90080e7          	jalr	-1136(ra) # 80005d6c <__mem_free>
    //MemoryAllocator::instance()->kmem_free(p);
    800031e4:	00813083          	ld	ra,8(sp)
    800031e8:	00013403          	ld	s0,0(sp)
    800031ec:	01010113          	addi	sp,sp,16
    800031f0:	00008067          	ret

00000000800031f4 <_ZN16KObjectAllocator19printInternalMemoryEv>:
#include "../h/kObjectAllocator.hpp"
#include "../h/print.hpp"

void KObjectAllocator::printInternalMemory() {
    800031f4:	fc010113          	addi	sp,sp,-64
    800031f8:	02113c23          	sd	ra,56(sp)
    800031fc:	02813823          	sd	s0,48(sp)
    80003200:	02913423          	sd	s1,40(sp)
    80003204:	03213023          	sd	s2,32(sp)
    80003208:	01313c23          	sd	s3,24(sp)
    8000320c:	01413823          	sd	s4,16(sp)
    80003210:	01513423          	sd	s5,8(sp)
    80003214:	01613023          	sd	s6,0(sp)
    80003218:	04010413          	addi	s0,sp,64
    8000321c:	00050493          	mv	s1,a0
    size_t segmentSize = 16, printedBytes = 0;
    80003220:	00000a93          	li	s5,0
    80003224:	0f00006f          	j	80003314 <_ZN16KObjectAllocator19printInternalMemoryEv+0x120>
    while (printedBytes < memorySizeForBits) {
        for (size_t i = 0; i < numberOfAllocations; ++i) {
            for (size_t j = 0; j < segmentSize; ++j) {
                if (j + printedBytes >= memorySizeForBits) printString("    ");
    80003228:	00004517          	auipc	a0,0x4
    8000322c:	26050513          	addi	a0,a0,608 # 80007488 <CONSOLE_STATUS+0x478>
    80003230:	00001097          	auipc	ra,0x1
    80003234:	908080e7          	jalr	-1784(ra) # 80003b38 <_Z11printStringPKc>
    80003238:	04c0006f          	j	80003284 <_ZN16KObjectAllocator19printInternalMemoryEv+0x90>
                else {
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    8000323c:	00000513          	li	a0,0
    80003240:	00001097          	auipc	ra,0x1
    80003244:	968080e7          	jalr	-1688(ra) # 80003ba8 <_Z12printIntegerm>
    80003248:	0740006f          	j	800032bc <_ZN16KObjectAllocator19printInternalMemoryEv+0xc8>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    8000324c:	00000513          	li	a0,0
    80003250:	00001097          	auipc	ra,0x1
    80003254:	958080e7          	jalr	-1704(ra) # 80003ba8 <_Z12printIntegerm>
                    printInteger((uint64) bitVectors[i][j + printedBytes]);
    80003258:	0284b783          	ld	a5,40(s1)
    8000325c:	014787b3          	add	a5,a5,s4
    80003260:	0007b783          	ld	a5,0(a5)
    80003264:	013789b3          	add	s3,a5,s3
    80003268:	0009c503          	lbu	a0,0(s3)
    8000326c:	00001097          	auipc	ra,0x1
    80003270:	93c080e7          	jalr	-1732(ra) # 80003ba8 <_Z12printIntegerm>
                    printString(" ");
    80003274:	00004517          	auipc	a0,0x4
    80003278:	05450513          	addi	a0,a0,84 # 800072c8 <CONSOLE_STATUS+0x2b8>
    8000327c:	00001097          	auipc	ra,0x1
    80003280:	8bc080e7          	jalr	-1860(ra) # 80003b38 <_Z11printStringPKc>
            for (size_t j = 0; j < segmentSize; ++j) {
    80003284:	00190913          	addi	s2,s2,1
    80003288:	00f00793          	li	a5,15
    8000328c:	0527e863          	bltu	a5,s2,800032dc <_ZN16KObjectAllocator19printInternalMemoryEv+0xe8>
                if (j + printedBytes >= memorySizeForBits) printString("    ");
    80003290:	012a89b3          	add	s3,s5,s2
    80003294:	0104b783          	ld	a5,16(s1)
    80003298:	f8f9f8e3          	bgeu	s3,a5,80003228 <_ZN16KObjectAllocator19printInternalMemoryEv+0x34>
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    8000329c:	0284b783          	ld	a5,40(s1)
    800032a0:	003b1a13          	slli	s4,s6,0x3
    800032a4:	014787b3          	add	a5,a5,s4
    800032a8:	0007b783          	ld	a5,0(a5)
    800032ac:	013787b3          	add	a5,a5,s3
    800032b0:	0007c703          	lbu	a4,0(a5)
    800032b4:	06300793          	li	a5,99
    800032b8:	f8e7f2e3          	bgeu	a5,a4,8000323c <_ZN16KObjectAllocator19printInternalMemoryEv+0x48>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    800032bc:	0284b783          	ld	a5,40(s1)
    800032c0:	014787b3          	add	a5,a5,s4
    800032c4:	0007b783          	ld	a5,0(a5)
    800032c8:	013787b3          	add	a5,a5,s3
    800032cc:	0007c703          	lbu	a4,0(a5)
    800032d0:	00900793          	li	a5,9
    800032d4:	f8e7e2e3          	bltu	a5,a4,80003258 <_ZN16KObjectAllocator19printInternalMemoryEv+0x64>
    800032d8:	f75ff06f          	j	8000324c <_ZN16KObjectAllocator19printInternalMemoryEv+0x58>
                }
            }
            printString("  ");
    800032dc:	00004517          	auipc	a0,0x4
    800032e0:	1b450513          	addi	a0,a0,436 # 80007490 <CONSOLE_STATUS+0x480>
    800032e4:	00001097          	auipc	ra,0x1
    800032e8:	854080e7          	jalr	-1964(ra) # 80003b38 <_Z11printStringPKc>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    800032ec:	001b0b13          	addi	s6,s6,1
    800032f0:	0304b783          	ld	a5,48(s1)
    800032f4:	00fb7663          	bgeu	s6,a5,80003300 <_ZN16KObjectAllocator19printInternalMemoryEv+0x10c>
            for (size_t j = 0; j < segmentSize; ++j) {
    800032f8:	00000913          	li	s2,0
    800032fc:	f8dff06f          	j	80003288 <_ZN16KObjectAllocator19printInternalMemoryEv+0x94>
        }
        printString("\n");
    80003300:	00004517          	auipc	a0,0x4
    80003304:	d8850513          	addi	a0,a0,-632 # 80007088 <CONSOLE_STATUS+0x78>
    80003308:	00001097          	auipc	ra,0x1
    8000330c:	830080e7          	jalr	-2000(ra) # 80003b38 <_Z11printStringPKc>
        printedBytes += segmentSize;
    80003310:	010a8a93          	addi	s5,s5,16
    while (printedBytes < memorySizeForBits) {
    80003314:	0104b783          	ld	a5,16(s1)
    80003318:	00faf663          	bgeu	s5,a5,80003324 <_ZN16KObjectAllocator19printInternalMemoryEv+0x130>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    8000331c:	00000b13          	li	s6,0
    80003320:	fd1ff06f          	j	800032f0 <_ZN16KObjectAllocator19printInternalMemoryEv+0xfc>
    }

    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80003324:	00000993          	li	s3,0
    80003328:	0180006f          	j	80003340 <_ZN16KObjectAllocator19printInternalMemoryEv+0x14c>
        for (size_t j = 0; j < segmentSize - 1; ++j)
            printString("----");
        printString("----  ");
    8000332c:	00004517          	auipc	a0,0x4
    80003330:	17450513          	addi	a0,a0,372 # 800074a0 <CONSOLE_STATUS+0x490>
    80003334:	00001097          	auipc	ra,0x1
    80003338:	804080e7          	jalr	-2044(ra) # 80003b38 <_Z11printStringPKc>
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    8000333c:	00198993          	addi	s3,s3,1
    80003340:	0304b783          	ld	a5,48(s1)
    80003344:	02f9f463          	bgeu	s3,a5,8000336c <_ZN16KObjectAllocator19printInternalMemoryEv+0x178>
        for (size_t j = 0; j < segmentSize - 1; ++j)
    80003348:	00000913          	li	s2,0
    8000334c:	00e00793          	li	a5,14
    80003350:	fd27eee3          	bltu	a5,s2,8000332c <_ZN16KObjectAllocator19printInternalMemoryEv+0x138>
            printString("----");
    80003354:	00004517          	auipc	a0,0x4
    80003358:	14450513          	addi	a0,a0,324 # 80007498 <CONSOLE_STATUS+0x488>
    8000335c:	00000097          	auipc	ra,0x0
    80003360:	7dc080e7          	jalr	2012(ra) # 80003b38 <_Z11printStringPKc>
        for (size_t j = 0; j < segmentSize - 1; ++j)
    80003364:	00190913          	addi	s2,s2,1
    80003368:	fe5ff06f          	j	8000334c <_ZN16KObjectAllocator19printInternalMemoryEv+0x158>
    }
    printString("\n");
    8000336c:	00004517          	auipc	a0,0x4
    80003370:	d1c50513          	addi	a0,a0,-740 # 80007088 <CONSOLE_STATUS+0x78>
    80003374:	00000097          	auipc	ra,0x0
    80003378:	7c4080e7          	jalr	1988(ra) # 80003b38 <_Z11printStringPKc>

    printedBytes = memorySizeForBits;
    8000337c:	0104ba03          	ld	s4,16(s1)
    80003380:	1000006f          	j	80003480 <_ZN16KObjectAllocator19printInternalMemoryEv+0x28c>
    while(printedBytes < initialNumberOfObjects * objectSize) {
        for (size_t i = 0; i < numberOfAllocations; ++i) {
            for (size_t j = 0; j < segmentSize; ++j) {
                if (j + printedBytes - memorySizeForBits >= initialNumberOfObjects * objectSize) printString("    ");
    80003384:	00004517          	auipc	a0,0x4
    80003388:	10450513          	addi	a0,a0,260 # 80007488 <CONSOLE_STATUS+0x478>
    8000338c:	00000097          	auipc	ra,0x0
    80003390:	7ac080e7          	jalr	1964(ra) # 80003b38 <_Z11printStringPKc>
    80003394:	04c0006f          	j	800033e0 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1ec>
                else {
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80003398:	00000513          	li	a0,0
    8000339c:	00001097          	auipc	ra,0x1
    800033a0:	80c080e7          	jalr	-2036(ra) # 80003ba8 <_Z12printIntegerm>
    800033a4:	0840006f          	j	80003428 <_ZN16KObjectAllocator19printInternalMemoryEv+0x234>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    800033a8:	00000513          	li	a0,0
    800033ac:	00000097          	auipc	ra,0x0
    800033b0:	7fc080e7          	jalr	2044(ra) # 80003ba8 <_Z12printIntegerm>
                    printInteger((uint64) bitVectors[i][j + printedBytes]);
    800033b4:	0284b783          	ld	a5,40(s1)
    800033b8:	016787b3          	add	a5,a5,s6
    800033bc:	0007b783          	ld	a5,0(a5)
    800033c0:	013789b3          	add	s3,a5,s3
    800033c4:	0009c503          	lbu	a0,0(s3)
    800033c8:	00000097          	auipc	ra,0x0
    800033cc:	7e0080e7          	jalr	2016(ra) # 80003ba8 <_Z12printIntegerm>
                    printString(" ");
    800033d0:	00004517          	auipc	a0,0x4
    800033d4:	ef850513          	addi	a0,a0,-264 # 800072c8 <CONSOLE_STATUS+0x2b8>
    800033d8:	00000097          	auipc	ra,0x0
    800033dc:	760080e7          	jalr	1888(ra) # 80003b38 <_Z11printStringPKc>
            for (size_t j = 0; j < segmentSize; ++j) {
    800033e0:	00190913          	addi	s2,s2,1
    800033e4:	00f00793          	li	a5,15
    800033e8:	0727e063          	bltu	a5,s2,80003448 <_ZN16KObjectAllocator19printInternalMemoryEv+0x254>
                if (j + printedBytes - memorySizeForBits >= initialNumberOfObjects * objectSize) printString("    ");
    800033ec:	012a09b3          	add	s3,s4,s2
    800033f0:	0104b703          	ld	a4,16(s1)
    800033f4:	40e98733          	sub	a4,s3,a4
    800033f8:	0004b783          	ld	a5,0(s1)
    800033fc:	0184b683          	ld	a3,24(s1)
    80003400:	02d787b3          	mul	a5,a5,a3
    80003404:	f8f770e3          	bgeu	a4,a5,80003384 <_ZN16KObjectAllocator19printInternalMemoryEv+0x190>
                    if (bitVectors[i][j + printedBytes] / 100 == 0) printInteger((uint8) 0);
    80003408:	0284b783          	ld	a5,40(s1)
    8000340c:	003a9b13          	slli	s6,s5,0x3
    80003410:	016787b3          	add	a5,a5,s6
    80003414:	0007b783          	ld	a5,0(a5)
    80003418:	013787b3          	add	a5,a5,s3
    8000341c:	0007c703          	lbu	a4,0(a5)
    80003420:	06300793          	li	a5,99
    80003424:	f6e7fae3          	bgeu	a5,a4,80003398 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1a4>
                    if (bitVectors[i][j + printedBytes] / 10 == 0) printInteger((uint8) 0);
    80003428:	0284b783          	ld	a5,40(s1)
    8000342c:	016787b3          	add	a5,a5,s6
    80003430:	0007b783          	ld	a5,0(a5)
    80003434:	013787b3          	add	a5,a5,s3
    80003438:	0007c703          	lbu	a4,0(a5)
    8000343c:	00900793          	li	a5,9
    80003440:	f6e7eae3          	bltu	a5,a4,800033b4 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1c0>
    80003444:	f65ff06f          	j	800033a8 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1b4>
                }
            }
            printString("  ");
    80003448:	00004517          	auipc	a0,0x4
    8000344c:	04850513          	addi	a0,a0,72 # 80007490 <CONSOLE_STATUS+0x480>
    80003450:	00000097          	auipc	ra,0x0
    80003454:	6e8080e7          	jalr	1768(ra) # 80003b38 <_Z11printStringPKc>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80003458:	001a8a93          	addi	s5,s5,1
    8000345c:	0304b783          	ld	a5,48(s1)
    80003460:	00faf663          	bgeu	s5,a5,8000346c <_ZN16KObjectAllocator19printInternalMemoryEv+0x278>
            for (size_t j = 0; j < segmentSize; ++j) {
    80003464:	00000913          	li	s2,0
    80003468:	f7dff06f          	j	800033e4 <_ZN16KObjectAllocator19printInternalMemoryEv+0x1f0>
        }
        printString("\n");
    8000346c:	00004517          	auipc	a0,0x4
    80003470:	c1c50513          	addi	a0,a0,-996 # 80007088 <CONSOLE_STATUS+0x78>
    80003474:	00000097          	auipc	ra,0x0
    80003478:	6c4080e7          	jalr	1732(ra) # 80003b38 <_Z11printStringPKc>
        printedBytes += segmentSize;
    8000347c:	010a0a13          	addi	s4,s4,16
    while(printedBytes < initialNumberOfObjects * objectSize) {
    80003480:	0004b783          	ld	a5,0(s1)
    80003484:	0184b703          	ld	a4,24(s1)
    80003488:	02e787b3          	mul	a5,a5,a4
    8000348c:	00fa7663          	bgeu	s4,a5,80003498 <_ZN16KObjectAllocator19printInternalMemoryEv+0x2a4>
        for (size_t i = 0; i < numberOfAllocations; ++i) {
    80003490:	00000a93          	li	s5,0
    80003494:	fc9ff06f          	j	8000345c <_ZN16KObjectAllocator19printInternalMemoryEv+0x268>
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
    800034c0:	ff010113          	addi	sp,sp,-16
    800034c4:	00813423          	sd	s0,8(sp)
    800034c8:	01010413          	addi	s0,sp,16
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    800034cc:	00000893          	li	a7,0
    800034d0:	03053783          	ld	a5,48(a0)
    800034d4:	0cf8f463          	bgeu	a7,a5,8000359c <_ZN16KObjectAllocator18allocateFreeObjectEv+0xdc>
        for (size_t j = nextNonTakenByte; j >= i * memorySizeForBits && j < (i + 1) * memorySizeForBits; ++j) {
    800034d8:	03853303          	ld	t1,56(a0)
    800034dc:	0640006f          	j	80003540 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x80>
                    printString("j: "); printInteger(j); printString("\n");
                    printString("nextNonTakenByte: "); printInteger(nextNonTakenByte); printString("\n");
                    printString("Byte: "); printInteger(byte); printString("\n");
                    printString("Bit: "); printInteger(bit); printString("\n");
                    printString("========================");*/
                    nextNonTakenByte = j + (bit == 1);
    800034e0:	fff70793          	addi	a5,a4,-1
    800034e4:	0017b793          	seqz	a5,a5
    800034e8:	00678333          	add	t1,a5,t1
    800034ec:	02653c23          	sd	t1,56(a0)
                    bitVectors[i][byte] |= (uint8) 1 << (bit - 1);
    800034f0:	0006b683          	ld	a3,0(a3)
    800034f4:	00c686b3          	add	a3,a3,a2
    800034f8:	00100793          	li	a5,1
    800034fc:	0107983b          	sllw	a6,a5,a6
    80003500:	0006c783          	lbu	a5,0(a3)
    80003504:	00f86833          	or	a6,a6,a5
    80003508:	01068023          	sb	a6,0(a3)
                    return &objectVectors[i][(byte * 8 + 8 - bit) * objectSize];
    8000350c:	02053783          	ld	a5,32(a0)
    80003510:	00b785b3          	add	a1,a5,a1
    80003514:	0005b783          	ld	a5,0(a1)
    80003518:	00160613          	addi	a2,a2,1
    8000351c:	00361613          	slli	a2,a2,0x3
    80003520:	40e60733          	sub	a4,a2,a4
    80003524:	01853503          	ld	a0,24(a0)
    80003528:	02a70733          	mul	a4,a4,a0
    8000352c:	00e78533          	add	a0,a5,a4
                }
            }
        }
    }
    return nullptr;
}
    80003530:	00813403          	ld	s0,8(sp)
    80003534:	01010113          	addi	sp,sp,16
    80003538:	00008067          	ret
        for (size_t j = nextNonTakenByte; j >= i * memorySizeForBits && j < (i + 1) * memorySizeForBits; ++j) {
    8000353c:	00130313          	addi	t1,t1,1
    80003540:	01053783          	ld	a5,16(a0)
    80003544:	03178633          	mul	a2,a5,a7
    80003548:	04c36663          	bltu	t1,a2,80003594 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xd4>
    8000354c:	00188713          	addi	a4,a7,1
    80003550:	02e787b3          	mul	a5,a5,a4
    80003554:	04f37063          	bgeu	t1,a5,80003594 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xd4>
            size_t byte = j - i * memorySizeForBits;
    80003558:	40c30633          	sub	a2,t1,a2
            for (size_t bit = 8; bit != 0; --bit) {
    8000355c:	00800713          	li	a4,8
    80003560:	fc070ee3          	beqz	a4,8000353c <_ZN16KObjectAllocator18allocateFreeObjectEv+0x7c>
                if ((bitVectors[i][byte] >> (bit - 1) & (uint8) 1) == 0) {
    80003564:	02853683          	ld	a3,40(a0)
    80003568:	00389593          	slli	a1,a7,0x3
    8000356c:	00b686b3          	add	a3,a3,a1
    80003570:	0006b783          	ld	a5,0(a3)
    80003574:	00c787b3          	add	a5,a5,a2
    80003578:	0007c783          	lbu	a5,0(a5)
    8000357c:	fff7081b          	addiw	a6,a4,-1
    80003580:	4107d7bb          	sraw	a5,a5,a6
    80003584:	0017f793          	andi	a5,a5,1
    80003588:	f4078ce3          	beqz	a5,800034e0 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x20>
            for (size_t bit = 8; bit != 0; --bit) {
    8000358c:	fff70713          	addi	a4,a4,-1
    80003590:	fd1ff06f          	j	80003560 <_ZN16KObjectAllocator18allocateFreeObjectEv+0xa0>
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    80003594:	00188893          	addi	a7,a7,1
    80003598:	f39ff06f          	j	800034d0 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x10>
    return nullptr;
    8000359c:	00000513          	li	a0,0
    800035a0:	f91ff06f          	j	80003530 <_ZN16KObjectAllocator18allocateFreeObjectEv+0x70>

00000000800035a4 <_ZN16KObjectAllocator10freeObjectEPv>:

void KObjectAllocator::freeObject(void* objectPointer) {
    for (size_t i = 0; i < numberOfAllocations; ++i) {
    800035a4:	00000713          	li	a4,0
    800035a8:	0080006f          	j	800035b0 <_ZN16KObjectAllocator10freeObjectEPv+0xc>
    800035ac:	00170713          	addi	a4,a4,1
    800035b0:	03053783          	ld	a5,48(a0)
    800035b4:	06f77463          	bgeu	a4,a5,8000361c <_ZN16KObjectAllocator10freeObjectEPv+0x78>
        if ((uint8*) objectPointer < objectVectors[i]) continue;
    800035b8:	02053783          	ld	a5,32(a0)
    800035bc:	00371693          	slli	a3,a4,0x3
    800035c0:	00d787b3          	add	a5,a5,a3
    800035c4:	0007b783          	ld	a5,0(a5)
    800035c8:	fef5e2e3          	bltu	a1,a5,800035ac <_ZN16KObjectAllocator10freeObjectEPv+0x8>
        size_t idiff = (size_t) ((uint8*) objectPointer - objectVectors[i]);
    800035cc:	40f587b3          	sub	a5,a1,a5
        size_t byte = idiff / objectSize / 8;
    800035d0:	01853603          	ld	a2,24(a0)
    800035d4:	02c7d7b3          	divu	a5,a5,a2
    800035d8:	0037d813          	srli	a6,a5,0x3
        if (byte >= memorySizeForBits) continue;
    800035dc:	01053603          	ld	a2,16(a0)
    800035e0:	fcc876e3          	bgeu	a6,a2,800035ac <_ZN16KObjectAllocator10freeObjectEPv+0x8>
        size_t bit = idiff / objectSize - byte * 8;
    800035e4:	0077f793          	andi	a5,a5,7
        bitVectors[i][byte] &= ~((uint8) 1 << (7 - bit));
    800035e8:	02853603          	ld	a2,40(a0)
    800035ec:	00d606b3          	add	a3,a2,a3
    800035f0:	0006b703          	ld	a4,0(a3)
    800035f4:	01070733          	add	a4,a4,a6
    800035f8:	00700693          	li	a3,7
    800035fc:	40f686bb          	subw	a3,a3,a5
    80003600:	00100793          	li	a5,1
    80003604:	00d797bb          	sllw	a5,a5,a3
    80003608:	fff7c793          	not	a5,a5
    8000360c:	00074683          	lbu	a3,0(a4)
    80003610:	00d7f7b3          	and	a5,a5,a3
    80003614:	00f70023          	sb	a5,0(a4)
        return;
    80003618:	00008067          	ret
void KObjectAllocator::freeObject(void* objectPointer) {
    8000361c:	ff010113          	addi	sp,sp,-16
    80003620:	00113423          	sd	ra,8(sp)
    80003624:	00813023          	sd	s0,0(sp)
    80003628:	01010413          	addi	s0,sp,16
    }
    printString("ERROR: Object not allocated in this KObjectAllocator\n");
    8000362c:	00004517          	auipc	a0,0x4
    80003630:	e7c50513          	addi	a0,a0,-388 # 800074a8 <CONSOLE_STATUS+0x498>
    80003634:	00000097          	auipc	ra,0x0
    80003638:	504080e7          	jalr	1284(ra) # 80003b38 <_Z11printStringPKc>
}
    8000363c:	00813083          	ld	ra,8(sp)
    80003640:	00013403          	ld	s0,0(sp)
    80003644:	01010113          	addi	sp,sp,16
    80003648:	00008067          	ret

000000008000364c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv>:

bool KObjectAllocator::handleNotEnoughMemoryProblem() {
    8000364c:	fb010113          	addi	sp,sp,-80
    80003650:	04113423          	sd	ra,72(sp)
    80003654:	04813023          	sd	s0,64(sp)
    80003658:	02913c23          	sd	s1,56(sp)
    8000365c:	03213823          	sd	s2,48(sp)
    80003660:	03313423          	sd	s3,40(sp)
    80003664:	03413023          	sd	s4,32(sp)
    80003668:	01513c23          	sd	s5,24(sp)
    8000366c:	01613823          	sd	s6,16(sp)
    80003670:	01713423          	sd	s7,8(sp)
    80003674:	05010413          	addi	s0,sp,80
    80003678:	00050493          	mv	s1,a0
    size_t newNumberOfAllocations = 2 * numberOfAllocations;
    8000367c:	03053a03          	ld	s4,48(a0)
    80003680:	001a1993          	slli	s3,s4,0x1
    size_t newNumberOfObjects = 2 * numberOfObjects;
    80003684:	00853a83          	ld	s5,8(a0)
    uint8** newBitVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(
    80003688:	ffffe097          	auipc	ra,0xffffe
    8000368c:	5e4080e7          	jalr	1508(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    80003690:	004a1a13          	slli	s4,s4,0x4
    80003694:	000a0593          	mv	a1,s4
    80003698:	ffffe097          	auipc	ra,0xffffe
    8000369c:	6b8080e7          	jalr	1720(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
            newNumberOfAllocations * sizeof(uint8*)
    );
    if (!newBitVectors) return false;
    800036a0:	14050663          	beqz	a0,800037ec <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a0>
    800036a4:	001a9a93          	slli	s5,s5,0x1
    800036a8:	00050913          	mv	s2,a0
    uint8** newObjectVectors = (uint8**) MemoryAllocator::instance()->kmem_alloc(
    800036ac:	ffffe097          	auipc	ra,0xffffe
    800036b0:	5c0080e7          	jalr	1472(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    800036b4:	000a0593          	mv	a1,s4
    800036b8:	ffffe097          	auipc	ra,0xffffe
    800036bc:	698080e7          	jalr	1688(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
    800036c0:	00050a13          	mv	s4,a0
            newNumberOfAllocations * sizeof(uint8*)
    );
    if (!newObjectVectors) return false;
    800036c4:	14050c63          	beqz	a0,8000381c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1d0>

    for (size_t i = 0; i < numberOfAllocations; ++i) newBitVectors[i] = bitVectors[i];
    800036c8:	00000793          	li	a5,0
    800036cc:	0304bb03          	ld	s6,48(s1)
    800036d0:	0367f463          	bgeu	a5,s6,800036f8 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xac>
    800036d4:	0284b703          	ld	a4,40(s1)
    800036d8:	00379693          	slli	a3,a5,0x3
    800036dc:	00d90633          	add	a2,s2,a3
    800036e0:	00d70733          	add	a4,a4,a3
    800036e4:	00073703          	ld	a4,0(a4)
    800036e8:	00e63023          	sd	a4,0(a2)
    800036ec:	00178793          	addi	a5,a5,1
    800036f0:	fddff06f          	j	800036cc <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x80>
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i) {
    800036f4:	001b0b13          	addi	s6,s6,1
    800036f8:	053b7063          	bgeu	s6,s3,80003738 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xec>
        newBitVectors[i] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    800036fc:	ffffe097          	auipc	ra,0xffffe
    80003700:	570080e7          	jalr	1392(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
        memorySizeForBits + initialNumberOfObjects * objectSize );
    80003704:	0104b583          	ld	a1,16(s1)
    80003708:	0004b783          	ld	a5,0(s1)
    8000370c:	0184b703          	ld	a4,24(s1)
    80003710:	02e787b3          	mul	a5,a5,a4
        newBitVectors[i] = (uint8*) MemoryAllocator::instance()->kmem_alloc(
    80003714:	003b1b93          	slli	s7,s6,0x3
    80003718:	01790bb3          	add	s7,s2,s7
    8000371c:	00f585b3          	add	a1,a1,a5
    80003720:	ffffe097          	auipc	ra,0xffffe
    80003724:	630080e7          	jalr	1584(ra) # 80001d50 <_ZN15MemoryAllocator10kmem_allocEm>
    80003728:	00abb023          	sd	a0,0(s7)
        if (!newBitVectors[i]) return false;
    8000372c:	fc0514e3          	bnez	a0,800036f4 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xa8>
    80003730:	00000513          	li	a0,0
    80003734:	0bc0006f          	j	800037f0 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a4>
    }
    for (size_t i = 0; i < newNumberOfAllocations; ++i) newObjectVectors[i] = newBitVectors[i] + memorySizeForBits;
    80003738:	00000713          	li	a4,0
    8000373c:	03377463          	bgeu	a4,s3,80003764 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x118>
    80003740:	00371793          	slli	a5,a4,0x3
    80003744:	00f906b3          	add	a3,s2,a5
    80003748:	0006b683          	ld	a3,0(a3)
    8000374c:	0104b603          	ld	a2,16(s1)
    80003750:	00fa07b3          	add	a5,s4,a5
    80003754:	00c686b3          	add	a3,a3,a2
    80003758:	00d7b023          	sd	a3,0(a5)
    8000375c:	00170713          	addi	a4,a4,1
    80003760:	fddff06f          	j	8000373c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0xf0>
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i)
    80003764:	0304b683          	ld	a3,48(s1)
    80003768:	0280006f          	j	80003790 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x144>
        for (size_t j = 0; j < memorySizeForBits; newBitVectors[i][j++] = 0);
    8000376c:	00369713          	slli	a4,a3,0x3
    80003770:	00e90733          	add	a4,s2,a4
    80003774:	00073703          	ld	a4,0(a4)
    80003778:	00f70733          	add	a4,a4,a5
    8000377c:	00070023          	sb	zero,0(a4)
    80003780:	00178793          	addi	a5,a5,1
    80003784:	0104b703          	ld	a4,16(s1)
    80003788:	fee7e2e3          	bltu	a5,a4,8000376c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x120>
    for (size_t i = numberOfAllocations; i < newNumberOfAllocations; ++i)
    8000378c:	00168693          	addi	a3,a3,1
    80003790:	0136f663          	bgeu	a3,s3,8000379c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x150>
        for (size_t j = 0; j < memorySizeForBits; newBitVectors[i][j++] = 0);
    80003794:	00000793          	li	a5,0
    80003798:	fedff06f          	j	80003784 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x138>
    MemoryAllocator::instance()->kmem_free(bitVectors);
    8000379c:	ffffe097          	auipc	ra,0xffffe
    800037a0:	4d0080e7          	jalr	1232(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    800037a4:	0284b583          	ld	a1,40(s1)
    800037a8:	ffffe097          	auipc	ra,0xffffe
    800037ac:	650080e7          	jalr	1616(ra) # 80001df8 <_ZN15MemoryAllocator9kmem_freeEPv>
    MemoryAllocator::instance()->kmem_free(objectVectors);
    800037b0:	ffffe097          	auipc	ra,0xffffe
    800037b4:	4bc080e7          	jalr	1212(ra) # 80001c6c <_ZN15MemoryAllocator8instanceEv>
    800037b8:	0204b583          	ld	a1,32(s1)
    800037bc:	ffffe097          	auipc	ra,0xffffe
    800037c0:	63c080e7          	jalr	1596(ra) # 80001df8 <_ZN15MemoryAllocator9kmem_freeEPv>

    numberOfObjects = newNumberOfObjects;
    800037c4:	0154b423          	sd	s5,8(s1)
    nextNonTakenByte = numberOfAllocations * memorySizeForBits;
    800037c8:	0304b783          	ld	a5,48(s1)
    800037cc:	0104b703          	ld	a4,16(s1)
    800037d0:	02e787b3          	mul	a5,a5,a4
    800037d4:	02f4bc23          	sd	a5,56(s1)
    numberOfAllocations = newNumberOfAllocations;
    800037d8:	0334b823          	sd	s3,48(s1)
    bitVectors = newBitVectors;
    800037dc:	0324b423          	sd	s2,40(s1)
    objectVectors = newObjectVectors;
    800037e0:	0344b023          	sd	s4,32(s1)

    return true;
    800037e4:	00100513          	li	a0,1
    800037e8:	0080006f          	j	800037f0 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a4>
    if (!newBitVectors) return false;
    800037ec:	00000513          	li	a0,0
}
    800037f0:	04813083          	ld	ra,72(sp)
    800037f4:	04013403          	ld	s0,64(sp)
    800037f8:	03813483          	ld	s1,56(sp)
    800037fc:	03013903          	ld	s2,48(sp)
    80003800:	02813983          	ld	s3,40(sp)
    80003804:	02013a03          	ld	s4,32(sp)
    80003808:	01813a83          	ld	s5,24(sp)
    8000380c:	01013b03          	ld	s6,16(sp)
    80003810:	00813b83          	ld	s7,8(sp)
    80003814:	05010113          	addi	sp,sp,80
    80003818:	00008067          	ret
    if (!newObjectVectors) return false;
    8000381c:	00000513          	li	a0,0
    80003820:	fd1ff06f          	j	800037f0 <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv+0x1a4>

0000000080003824 <_ZN16KObjectAllocator17allocateNewObjectEv>:
void* KObjectAllocator::allocateNewObject() {
    80003824:	fe010113          	addi	sp,sp,-32
    80003828:	00113c23          	sd	ra,24(sp)
    8000382c:	00813823          	sd	s0,16(sp)
    80003830:	00913423          	sd	s1,8(sp)
    80003834:	01213023          	sd	s2,0(sp)
    80003838:	02010413          	addi	s0,sp,32
    8000383c:	00050913          	mv	s2,a0
    void* returnedObject = allocateFreeObject();
    80003840:	00000097          	auipc	ra,0x0
    80003844:	c80080e7          	jalr	-896(ra) # 800034c0 <_ZN16KObjectAllocator18allocateFreeObjectEv>
    80003848:	00050493          	mv	s1,a0
    if (returnedObject) {
    8000384c:	02050063          	beqz	a0,8000386c <_ZN16KObjectAllocator17allocateNewObjectEv+0x48>
}
    80003850:	00048513          	mv	a0,s1
    80003854:	01813083          	ld	ra,24(sp)
    80003858:	01013403          	ld	s0,16(sp)
    8000385c:	00813483          	ld	s1,8(sp)
    80003860:	00013903          	ld	s2,0(sp)
    80003864:	02010113          	addi	sp,sp,32
    80003868:	00008067          	ret
    nextNonTakenByte = 0;   // start search from start
    8000386c:	02093c23          	sd	zero,56(s2)
    returnedObject = allocateFreeObject();
    80003870:	00090513          	mv	a0,s2
    80003874:	00000097          	auipc	ra,0x0
    80003878:	c4c080e7          	jalr	-948(ra) # 800034c0 <_ZN16KObjectAllocator18allocateFreeObjectEv>
    8000387c:	00050493          	mv	s1,a0
    if (returnedObject) {
    80003880:	fc0518e3          	bnez	a0,80003850 <_ZN16KObjectAllocator17allocateNewObjectEv+0x2c>
    if (handleNotEnoughMemoryProblem()) {
    80003884:	00090513          	mv	a0,s2
    80003888:	00000097          	auipc	ra,0x0
    8000388c:	dc4080e7          	jalr	-572(ra) # 8000364c <_ZN16KObjectAllocator28handleNotEnoughMemoryProblemEv>
    80003890:	fc0500e3          	beqz	a0,80003850 <_ZN16KObjectAllocator17allocateNewObjectEv+0x2c>
        returnedObject = allocateFreeObject();
    80003894:	00090513          	mv	a0,s2
    80003898:	00000097          	auipc	ra,0x0
    8000389c:	c28080e7          	jalr	-984(ra) # 800034c0 <_ZN16KObjectAllocator18allocateFreeObjectEv>
    800038a0:	00050493          	mv	s1,a0
        if (returnedObject) {
    800038a4:	fadff06f          	j	80003850 <_ZN16KObjectAllocator17allocateNewObjectEv+0x2c>

00000000800038a8 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"

void Riscv::popSppSpie()
{
    800038a8:	ff010113          	addi	sp,sp,-16
    800038ac:	00813423          	sd	s0,8(sp)
    800038b0:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800038b4:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800038b8:	10200073          	sret
}
    800038bc:	00813403          	ld	s0,8(sp)
    800038c0:	01010113          	addi	sp,sp,16
    800038c4:	00008067          	ret

00000000800038c8 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    800038c8:	fa010113          	addi	sp,sp,-96
    800038cc:	04113c23          	sd	ra,88(sp)
    800038d0:	04813823          	sd	s0,80(sp)
    800038d4:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800038d8:	142027f3          	csrr	a5,scause
    800038dc:	fcf43423          	sd	a5,-56(s0)
    return scause;
    800038e0:	fc843703          	ld	a4,-56(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    800038e4:	ff870693          	addi	a3,a4,-8
    800038e8:	00100793          	li	a5,1
    800038ec:	02d7fa63          	bgeu	a5,a3,80003920 <_ZN5Riscv20handleSupervisorTrapEv+0x58>
        TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    800038f0:	fff00793          	li	a5,-1
    800038f4:	03f79793          	slli	a5,a5,0x3f
    800038f8:	00178793          	addi	a5,a5,1
    800038fc:	06f70863          	beq	a4,a5,8000396c <_ZN5Riscv20handleSupervisorTrapEv+0xa4>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80003900:	fff00793          	li	a5,-1
    80003904:	03f79793          	slli	a5,a5,0x3f
    80003908:	00978793          	addi	a5,a5,9
    8000390c:	0cf70c63          	beq	a4,a5,800039e4 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
    }
    else
    {
        // unexpected trap cause
    }
    80003910:	05813083          	ld	ra,88(sp)
    80003914:	05013403          	ld	s0,80(sp)
    80003918:	06010113          	addi	sp,sp,96
    8000391c:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80003920:	141027f3          	csrr	a5,sepc
    80003924:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80003928:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    8000392c:	00478793          	addi	a5,a5,4
    80003930:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003934:	100027f3          	csrr	a5,sstatus
    80003938:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    8000393c:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80003940:	faf43823          	sd	a5,-80(s0)
        TCB::timeSliceCounter = 0;
    80003944:	00005797          	auipc	a5,0x5
    80003948:	83c7b783          	ld	a5,-1988(a5) # 80008180 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000394c:	0007b023          	sd	zero,0(a5)
        TCB::dispatch();
    80003950:	ffffe097          	auipc	ra,0xffffe
    80003954:	1bc080e7          	jalr	444(ra) # 80001b0c <_ZN3TCB8dispatchEv>
        w_sstatus(sstatus);
    80003958:	fb043783          	ld	a5,-80(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000395c:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80003960:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80003964:	14179073          	csrw	sepc,a5
}
    80003968:	fa9ff06f          	j	80003910 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    8000396c:	00200793          	li	a5,2
    80003970:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80003974:	00005717          	auipc	a4,0x5
    80003978:	80c73703          	ld	a4,-2036(a4) # 80008180 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000397c:	00073783          	ld	a5,0(a4)
    80003980:	00178793          	addi	a5,a5,1
    80003984:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80003988:	00005717          	auipc	a4,0x5
    8000398c:	81873703          	ld	a4,-2024(a4) # 800081a0 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003990:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80003994:	02073703          	ld	a4,32(a4)
    80003998:	f6e7ece3          	bltu	a5,a4,80003910 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000399c:	141027f3          	csrr	a5,sepc
    800039a0:	fef43423          	sd	a5,-24(s0)
    return sepc;
    800039a4:	fe843783          	ld	a5,-24(s0)
            uint64 volatile sepc = r_sepc();
    800039a8:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800039ac:	100027f3          	csrr	a5,sstatus
    800039b0:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    800039b4:	fe043783          	ld	a5,-32(s0)
            uint64 volatile sstatus = r_sstatus();
    800039b8:	fcf43023          	sd	a5,-64(s0)
            TCB::timeSliceCounter = 0;
    800039bc:	00004797          	auipc	a5,0x4
    800039c0:	7c47b783          	ld	a5,1988(a5) # 80008180 <_GLOBAL_OFFSET_TABLE_+0x28>
    800039c4:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800039c8:	ffffe097          	auipc	ra,0xffffe
    800039cc:	144080e7          	jalr	324(ra) # 80001b0c <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    800039d0:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800039d4:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    800039d8:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800039dc:	14179073          	csrw	sepc,a5
}
    800039e0:	f31ff06f          	j	80003910 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
        console_handler();
    800039e4:	00002097          	auipc	ra,0x2
    800039e8:	620080e7          	jalr	1568(ra) # 80006004 <console_handler>
    800039ec:	f25ff06f          	j	80003910 <_ZN5Riscv20handleSupervisorTrapEv+0x48>

00000000800039f0 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    800039f0:	ff010113          	addi	sp,sp,-16
    800039f4:	00813423          	sd	s0,8(sp)
    800039f8:	01010413          	addi	s0,sp,16
    800039fc:	00100793          	li	a5,1
    80003a00:	00f50863          	beq	a0,a5,80003a10 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80003a04:	00813403          	ld	s0,8(sp)
    80003a08:	01010113          	addi	sp,sp,16
    80003a0c:	00008067          	ret
    80003a10:	000107b7          	lui	a5,0x10
    80003a14:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003a18:	fef596e3          	bne	a1,a5,80003a04 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80003a1c:	00005797          	auipc	a5,0x5
    80003a20:	82478793          	addi	a5,a5,-2012 # 80008240 <_ZN9Scheduler16readyThreadQueueE>
    80003a24:	0007b023          	sd	zero,0(a5)
    80003a28:	0007b423          	sd	zero,8(a5)
    80003a2c:	fd9ff06f          	j	80003a04 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080003a30 <_ZN9Scheduler3getEv>:
{
    80003a30:	fe010113          	addi	sp,sp,-32
    80003a34:	00113c23          	sd	ra,24(sp)
    80003a38:	00813823          	sd	s0,16(sp)
    80003a3c:	00913423          	sd	s1,8(sp)
    80003a40:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80003a44:	00004517          	auipc	a0,0x4
    80003a48:	7fc53503          	ld	a0,2044(a0) # 80008240 <_ZN9Scheduler16readyThreadQueueE>
    80003a4c:	04050263          	beqz	a0,80003a90 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80003a50:	00853783          	ld	a5,8(a0)
    80003a54:	00004717          	auipc	a4,0x4
    80003a58:	7ef73623          	sd	a5,2028(a4) # 80008240 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80003a5c:	02078463          	beqz	a5,80003a84 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80003a60:	00053483          	ld	s1,0(a0)
        delete elem;
    80003a64:	fffff097          	auipc	ra,0xfffff
    80003a68:	740080e7          	jalr	1856(ra) # 800031a4 <_ZdlPv>
}
    80003a6c:	00048513          	mv	a0,s1
    80003a70:	01813083          	ld	ra,24(sp)
    80003a74:	01013403          	ld	s0,16(sp)
    80003a78:	00813483          	ld	s1,8(sp)
    80003a7c:	02010113          	addi	sp,sp,32
    80003a80:	00008067          	ret
        if (!head) { tail = 0; }
    80003a84:	00004797          	auipc	a5,0x4
    80003a88:	7c07b223          	sd	zero,1988(a5) # 80008248 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003a8c:	fd5ff06f          	j	80003a60 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80003a90:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80003a94:	fd9ff06f          	j	80003a6c <_ZN9Scheduler3getEv+0x3c>

0000000080003a98 <_ZN9Scheduler3putEP3TCB>:
{
    80003a98:	fe010113          	addi	sp,sp,-32
    80003a9c:	00113c23          	sd	ra,24(sp)
    80003aa0:	00813823          	sd	s0,16(sp)
    80003aa4:	00913423          	sd	s1,8(sp)
    80003aa8:	02010413          	addi	s0,sp,32
    80003aac:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80003ab0:	01000513          	li	a0,16
    80003ab4:	fffff097          	auipc	ra,0xfffff
    80003ab8:	6a0080e7          	jalr	1696(ra) # 80003154 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80003abc:	00953023          	sd	s1,0(a0)
    80003ac0:	00053423          	sd	zero,8(a0)
        if (tail)
    80003ac4:	00004797          	auipc	a5,0x4
    80003ac8:	7847b783          	ld	a5,1924(a5) # 80008248 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003acc:	02078263          	beqz	a5,80003af0 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80003ad0:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80003ad4:	00004797          	auipc	a5,0x4
    80003ad8:	76a7ba23          	sd	a0,1908(a5) # 80008248 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003adc:	01813083          	ld	ra,24(sp)
    80003ae0:	01013403          	ld	s0,16(sp)
    80003ae4:	00813483          	ld	s1,8(sp)
    80003ae8:	02010113          	addi	sp,sp,32
    80003aec:	00008067          	ret
            head = tail = elem;
    80003af0:	00004797          	auipc	a5,0x4
    80003af4:	75078793          	addi	a5,a5,1872 # 80008240 <_ZN9Scheduler16readyThreadQueueE>
    80003af8:	00a7b423          	sd	a0,8(a5)
    80003afc:	00a7b023          	sd	a0,0(a5)
    80003b00:	fddff06f          	j	80003adc <_ZN9Scheduler3putEP3TCB+0x44>

0000000080003b04 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80003b04:	ff010113          	addi	sp,sp,-16
    80003b08:	00113423          	sd	ra,8(sp)
    80003b0c:	00813023          	sd	s0,0(sp)
    80003b10:	01010413          	addi	s0,sp,16
    80003b14:	000105b7          	lui	a1,0x10
    80003b18:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80003b1c:	00100513          	li	a0,1
    80003b20:	00000097          	auipc	ra,0x0
    80003b24:	ed0080e7          	jalr	-304(ra) # 800039f0 <_Z41__static_initialization_and_destruction_0ii>
    80003b28:	00813083          	ld	ra,8(sp)
    80003b2c:	00013403          	ld	s0,0(sp)
    80003b30:	01010113          	addi	sp,sp,16
    80003b34:	00008067          	ret

0000000080003b38 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80003b38:	fd010113          	addi	sp,sp,-48
    80003b3c:	02113423          	sd	ra,40(sp)
    80003b40:	02813023          	sd	s0,32(sp)
    80003b44:	00913c23          	sd	s1,24(sp)
    80003b48:	01213823          	sd	s2,16(sp)
    80003b4c:	03010413          	addi	s0,sp,48
    80003b50:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003b54:	100027f3          	csrr	a5,sstatus
    80003b58:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80003b5c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80003b60:	00200793          	li	a5,2
    80003b64:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    while (*string != '\0') __putc(*string++);
    80003b68:	0004c503          	lbu	a0,0(s1)
    80003b6c:	00050a63          	beqz	a0,80003b80 <_Z11printStringPKc+0x48>
    80003b70:	00148493          	addi	s1,s1,1
    80003b74:	00002097          	auipc	ra,0x2
    80003b78:	41c080e7          	jalr	1052(ra) # 80005f90 <__putc>
    80003b7c:	fedff06f          	j	80003b68 <_Z11printStringPKc+0x30>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80003b80:	0009091b          	sext.w	s2,s2
    80003b84:	00297913          	andi	s2,s2,2
    80003b88:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80003b8c:	10092073          	csrs	sstatus,s2
}
    80003b90:	02813083          	ld	ra,40(sp)
    80003b94:	02013403          	ld	s0,32(sp)
    80003b98:	01813483          	ld	s1,24(sp)
    80003b9c:	01013903          	ld	s2,16(sp)
    80003ba0:	03010113          	addi	sp,sp,48
    80003ba4:	00008067          	ret

0000000080003ba8 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80003ba8:	fc010113          	addi	sp,sp,-64
    80003bac:	02113c23          	sd	ra,56(sp)
    80003bb0:	02813823          	sd	s0,48(sp)
    80003bb4:	02913423          	sd	s1,40(sp)
    80003bb8:	03213023          	sd	s2,32(sp)
    80003bbc:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003bc0:	100027f3          	csrr	a5,sstatus
    80003bc4:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80003bc8:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80003bcc:	00200793          	li	a5,2
    80003bd0:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    static char digits[] = "0123456789";
    char buf[16]; int i = 0; uint64 x = integer;
    int neg = (integer & ((uint64)1 << 63)) != 0;
    80003bd4:	00050593          	mv	a1,a0

    if (neg) x = ~integer + 1;
    80003bd8:	06054463          	bltz	a0,80003c40 <_Z12printIntegerm+0x98>
{
    80003bdc:	00000493          	li	s1,0

    do buf[i++] = digits[x % 10];
    80003be0:	00a00713          	li	a4,10
    80003be4:	02e57633          	remu	a2,a0,a4
    80003be8:	00048693          	mv	a3,s1
    80003bec:	0014849b          	addiw	s1,s1,1
    80003bf0:	00004797          	auipc	a5,0x4
    80003bf4:	8f078793          	addi	a5,a5,-1808 # 800074e0 <_ZZ12printIntegermE6digits>
    80003bf8:	00c787b3          	add	a5,a5,a2
    80003bfc:	0007c603          	lbu	a2,0(a5)
    80003c00:	fe040793          	addi	a5,s0,-32
    80003c04:	00d787b3          	add	a5,a5,a3
    80003c08:	fec78823          	sb	a2,-16(a5)
    while ((x /= 10) != 0);
    80003c0c:	00050613          	mv	a2,a0
    80003c10:	02e55533          	divu	a0,a0,a4
    80003c14:	00900793          	li	a5,9
    80003c18:	fcc7e4e3          	bltu	a5,a2,80003be0 <_Z12printIntegerm+0x38>

    if (neg) buf[i++] = '-';
    80003c1c:	0205c663          	bltz	a1,80003c48 <_Z12printIntegerm+0xa0>
    while (--i >= 0) { __putc(buf[i]); }
    80003c20:	fff4849b          	addiw	s1,s1,-1
    80003c24:	0204ce63          	bltz	s1,80003c60 <_Z12printIntegerm+0xb8>
    80003c28:	fe040793          	addi	a5,s0,-32
    80003c2c:	009787b3          	add	a5,a5,s1
    80003c30:	ff07c503          	lbu	a0,-16(a5)
    80003c34:	00002097          	auipc	ra,0x2
    80003c38:	35c080e7          	jalr	860(ra) # 80005f90 <__putc>
    80003c3c:	fe5ff06f          	j	80003c20 <_Z12printIntegerm+0x78>
    if (neg) x = ~integer + 1;
    80003c40:	40a00533          	neg	a0,a0
    80003c44:	f99ff06f          	j	80003bdc <_Z12printIntegerm+0x34>
    if (neg) buf[i++] = '-';
    80003c48:	fe040793          	addi	a5,s0,-32
    80003c4c:	009784b3          	add	s1,a5,s1
    80003c50:	02d00793          	li	a5,45
    80003c54:	fef48823          	sb	a5,-16(s1)
    80003c58:	0026849b          	addiw	s1,a3,2
    80003c5c:	fc5ff06f          	j	80003c20 <_Z12printIntegerm+0x78>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80003c60:	0009091b          	sext.w	s2,s2
    80003c64:	00297913          	andi	s2,s2,2
    80003c68:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80003c6c:	10092073          	csrs	sstatus,s2
}
    80003c70:	03813083          	ld	ra,56(sp)
    80003c74:	03013403          	ld	s0,48(sp)
    80003c78:	02813483          	ld	s1,40(sp)
    80003c7c:	02013903          	ld	s2,32(sp)
    80003c80:	04010113          	addi	sp,sp,64
    80003c84:	00008067          	ret

0000000080003c88 <_Z12printIntegerh>:


void printInteger(uint8 integer)
{
    80003c88:	ff010113          	addi	sp,sp,-16
    80003c8c:	00113423          	sd	ra,8(sp)
    80003c90:	00813023          	sd	s0,0(sp)
    80003c94:	01010413          	addi	s0,sp,16
    printInteger((uint64)integer);
    80003c98:	00000097          	auipc	ra,0x0
    80003c9c:	f10080e7          	jalr	-240(ra) # 80003ba8 <_Z12printIntegerm>
}
    80003ca0:	00813083          	ld	ra,8(sp)
    80003ca4:	00013403          	ld	s0,0(sp)
    80003ca8:	01010113          	addi	sp,sp,16
    80003cac:	00008067          	ret

0000000080003cb0 <start>:
    80003cb0:	ff010113          	addi	sp,sp,-16
    80003cb4:	00813423          	sd	s0,8(sp)
    80003cb8:	01010413          	addi	s0,sp,16
    80003cbc:	300027f3          	csrr	a5,mstatus
    80003cc0:	ffffe737          	lui	a4,0xffffe
    80003cc4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff533f>
    80003cc8:	00e7f7b3          	and	a5,a5,a4
    80003ccc:	00001737          	lui	a4,0x1
    80003cd0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003cd4:	00e7e7b3          	or	a5,a5,a4
    80003cd8:	30079073          	csrw	mstatus,a5
    80003cdc:	00000797          	auipc	a5,0x0
    80003ce0:	16078793          	addi	a5,a5,352 # 80003e3c <system_main>
    80003ce4:	34179073          	csrw	mepc,a5
    80003ce8:	00000793          	li	a5,0
    80003cec:	18079073          	csrw	satp,a5
    80003cf0:	000107b7          	lui	a5,0x10
    80003cf4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003cf8:	30279073          	csrw	medeleg,a5
    80003cfc:	30379073          	csrw	mideleg,a5
    80003d00:	104027f3          	csrr	a5,sie
    80003d04:	2227e793          	ori	a5,a5,546
    80003d08:	10479073          	csrw	sie,a5
    80003d0c:	fff00793          	li	a5,-1
    80003d10:	00a7d793          	srli	a5,a5,0xa
    80003d14:	3b079073          	csrw	pmpaddr0,a5
    80003d18:	00f00793          	li	a5,15
    80003d1c:	3a079073          	csrw	pmpcfg0,a5
    80003d20:	f14027f3          	csrr	a5,mhartid
    80003d24:	0200c737          	lui	a4,0x200c
    80003d28:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003d2c:	0007869b          	sext.w	a3,a5
    80003d30:	00269713          	slli	a4,a3,0x2
    80003d34:	000f4637          	lui	a2,0xf4
    80003d38:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003d3c:	00d70733          	add	a4,a4,a3
    80003d40:	0037979b          	slliw	a5,a5,0x3
    80003d44:	020046b7          	lui	a3,0x2004
    80003d48:	00d787b3          	add	a5,a5,a3
    80003d4c:	00c585b3          	add	a1,a1,a2
    80003d50:	00371693          	slli	a3,a4,0x3
    80003d54:	00004717          	auipc	a4,0x4
    80003d58:	4fc70713          	addi	a4,a4,1276 # 80008250 <timer_scratch>
    80003d5c:	00b7b023          	sd	a1,0(a5)
    80003d60:	00d70733          	add	a4,a4,a3
    80003d64:	00f73c23          	sd	a5,24(a4)
    80003d68:	02c73023          	sd	a2,32(a4)
    80003d6c:	34071073          	csrw	mscratch,a4
    80003d70:	00000797          	auipc	a5,0x0
    80003d74:	6e078793          	addi	a5,a5,1760 # 80004450 <timervec>
    80003d78:	30579073          	csrw	mtvec,a5
    80003d7c:	300027f3          	csrr	a5,mstatus
    80003d80:	0087e793          	ori	a5,a5,8
    80003d84:	30079073          	csrw	mstatus,a5
    80003d88:	304027f3          	csrr	a5,mie
    80003d8c:	0807e793          	ori	a5,a5,128
    80003d90:	30479073          	csrw	mie,a5
    80003d94:	f14027f3          	csrr	a5,mhartid
    80003d98:	0007879b          	sext.w	a5,a5
    80003d9c:	00078213          	mv	tp,a5
    80003da0:	30200073          	mret
    80003da4:	00813403          	ld	s0,8(sp)
    80003da8:	01010113          	addi	sp,sp,16
    80003dac:	00008067          	ret

0000000080003db0 <timerinit>:
    80003db0:	ff010113          	addi	sp,sp,-16
    80003db4:	00813423          	sd	s0,8(sp)
    80003db8:	01010413          	addi	s0,sp,16
    80003dbc:	f14027f3          	csrr	a5,mhartid
    80003dc0:	0200c737          	lui	a4,0x200c
    80003dc4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003dc8:	0007869b          	sext.w	a3,a5
    80003dcc:	00269713          	slli	a4,a3,0x2
    80003dd0:	000f4637          	lui	a2,0xf4
    80003dd4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003dd8:	00d70733          	add	a4,a4,a3
    80003ddc:	0037979b          	slliw	a5,a5,0x3
    80003de0:	020046b7          	lui	a3,0x2004
    80003de4:	00d787b3          	add	a5,a5,a3
    80003de8:	00c585b3          	add	a1,a1,a2
    80003dec:	00371693          	slli	a3,a4,0x3
    80003df0:	00004717          	auipc	a4,0x4
    80003df4:	46070713          	addi	a4,a4,1120 # 80008250 <timer_scratch>
    80003df8:	00b7b023          	sd	a1,0(a5)
    80003dfc:	00d70733          	add	a4,a4,a3
    80003e00:	00f73c23          	sd	a5,24(a4)
    80003e04:	02c73023          	sd	a2,32(a4)
    80003e08:	34071073          	csrw	mscratch,a4
    80003e0c:	00000797          	auipc	a5,0x0
    80003e10:	64478793          	addi	a5,a5,1604 # 80004450 <timervec>
    80003e14:	30579073          	csrw	mtvec,a5
    80003e18:	300027f3          	csrr	a5,mstatus
    80003e1c:	0087e793          	ori	a5,a5,8
    80003e20:	30079073          	csrw	mstatus,a5
    80003e24:	304027f3          	csrr	a5,mie
    80003e28:	0807e793          	ori	a5,a5,128
    80003e2c:	30479073          	csrw	mie,a5
    80003e30:	00813403          	ld	s0,8(sp)
    80003e34:	01010113          	addi	sp,sp,16
    80003e38:	00008067          	ret

0000000080003e3c <system_main>:
    80003e3c:	fe010113          	addi	sp,sp,-32
    80003e40:	00813823          	sd	s0,16(sp)
    80003e44:	00913423          	sd	s1,8(sp)
    80003e48:	00113c23          	sd	ra,24(sp)
    80003e4c:	02010413          	addi	s0,sp,32
    80003e50:	00000097          	auipc	ra,0x0
    80003e54:	0c4080e7          	jalr	196(ra) # 80003f14 <cpuid>
    80003e58:	00004497          	auipc	s1,0x4
    80003e5c:	38848493          	addi	s1,s1,904 # 800081e0 <started>
    80003e60:	02050263          	beqz	a0,80003e84 <system_main+0x48>
    80003e64:	0004a783          	lw	a5,0(s1)
    80003e68:	0007879b          	sext.w	a5,a5
    80003e6c:	fe078ce3          	beqz	a5,80003e64 <system_main+0x28>
    80003e70:	0ff0000f          	fence
    80003e74:	00003517          	auipc	a0,0x3
    80003e78:	6ac50513          	addi	a0,a0,1708 # 80007520 <_ZZ12printIntegermE6digits+0x40>
    80003e7c:	00001097          	auipc	ra,0x1
    80003e80:	a70080e7          	jalr	-1424(ra) # 800048ec <panic>
    80003e84:	00001097          	auipc	ra,0x1
    80003e88:	9c4080e7          	jalr	-1596(ra) # 80004848 <consoleinit>
    80003e8c:	00001097          	auipc	ra,0x1
    80003e90:	150080e7          	jalr	336(ra) # 80004fdc <printfinit>
    80003e94:	00003517          	auipc	a0,0x3
    80003e98:	1f450513          	addi	a0,a0,500 # 80007088 <CONSOLE_STATUS+0x78>
    80003e9c:	00001097          	auipc	ra,0x1
    80003ea0:	aac080e7          	jalr	-1364(ra) # 80004948 <__printf>
    80003ea4:	00003517          	auipc	a0,0x3
    80003ea8:	64c50513          	addi	a0,a0,1612 # 800074f0 <_ZZ12printIntegermE6digits+0x10>
    80003eac:	00001097          	auipc	ra,0x1
    80003eb0:	a9c080e7          	jalr	-1380(ra) # 80004948 <__printf>
    80003eb4:	00003517          	auipc	a0,0x3
    80003eb8:	1d450513          	addi	a0,a0,468 # 80007088 <CONSOLE_STATUS+0x78>
    80003ebc:	00001097          	auipc	ra,0x1
    80003ec0:	a8c080e7          	jalr	-1396(ra) # 80004948 <__printf>
    80003ec4:	00001097          	auipc	ra,0x1
    80003ec8:	4a4080e7          	jalr	1188(ra) # 80005368 <kinit>
    80003ecc:	00000097          	auipc	ra,0x0
    80003ed0:	148080e7          	jalr	328(ra) # 80004014 <trapinit>
    80003ed4:	00000097          	auipc	ra,0x0
    80003ed8:	16c080e7          	jalr	364(ra) # 80004040 <trapinithart>
    80003edc:	00000097          	auipc	ra,0x0
    80003ee0:	5b4080e7          	jalr	1460(ra) # 80004490 <plicinit>
    80003ee4:	00000097          	auipc	ra,0x0
    80003ee8:	5d4080e7          	jalr	1492(ra) # 800044b8 <plicinithart>
    80003eec:	00000097          	auipc	ra,0x0
    80003ef0:	078080e7          	jalr	120(ra) # 80003f64 <userinit>
    80003ef4:	0ff0000f          	fence
    80003ef8:	00100793          	li	a5,1
    80003efc:	00003517          	auipc	a0,0x3
    80003f00:	60c50513          	addi	a0,a0,1548 # 80007508 <_ZZ12printIntegermE6digits+0x28>
    80003f04:	00f4a023          	sw	a5,0(s1)
    80003f08:	00001097          	auipc	ra,0x1
    80003f0c:	a40080e7          	jalr	-1472(ra) # 80004948 <__printf>
    80003f10:	0000006f          	j	80003f10 <system_main+0xd4>

0000000080003f14 <cpuid>:
    80003f14:	ff010113          	addi	sp,sp,-16
    80003f18:	00813423          	sd	s0,8(sp)
    80003f1c:	01010413          	addi	s0,sp,16
    80003f20:	00020513          	mv	a0,tp
    80003f24:	00813403          	ld	s0,8(sp)
    80003f28:	0005051b          	sext.w	a0,a0
    80003f2c:	01010113          	addi	sp,sp,16
    80003f30:	00008067          	ret

0000000080003f34 <mycpu>:
    80003f34:	ff010113          	addi	sp,sp,-16
    80003f38:	00813423          	sd	s0,8(sp)
    80003f3c:	01010413          	addi	s0,sp,16
    80003f40:	00020793          	mv	a5,tp
    80003f44:	00813403          	ld	s0,8(sp)
    80003f48:	0007879b          	sext.w	a5,a5
    80003f4c:	00779793          	slli	a5,a5,0x7
    80003f50:	00005517          	auipc	a0,0x5
    80003f54:	33050513          	addi	a0,a0,816 # 80009280 <cpus>
    80003f58:	00f50533          	add	a0,a0,a5
    80003f5c:	01010113          	addi	sp,sp,16
    80003f60:	00008067          	ret

0000000080003f64 <userinit>:
    80003f64:	ff010113          	addi	sp,sp,-16
    80003f68:	00813423          	sd	s0,8(sp)
    80003f6c:	01010413          	addi	s0,sp,16
    80003f70:	00813403          	ld	s0,8(sp)
    80003f74:	01010113          	addi	sp,sp,16
    80003f78:	ffffd317          	auipc	t1,0xffffd
    80003f7c:	71430067          	jr	1812(t1) # 8000168c <main>

0000000080003f80 <either_copyout>:
    80003f80:	ff010113          	addi	sp,sp,-16
    80003f84:	00813023          	sd	s0,0(sp)
    80003f88:	00113423          	sd	ra,8(sp)
    80003f8c:	01010413          	addi	s0,sp,16
    80003f90:	02051663          	bnez	a0,80003fbc <either_copyout+0x3c>
    80003f94:	00058513          	mv	a0,a1
    80003f98:	00060593          	mv	a1,a2
    80003f9c:	0006861b          	sext.w	a2,a3
    80003fa0:	00002097          	auipc	ra,0x2
    80003fa4:	c54080e7          	jalr	-940(ra) # 80005bf4 <__memmove>
    80003fa8:	00813083          	ld	ra,8(sp)
    80003fac:	00013403          	ld	s0,0(sp)
    80003fb0:	00000513          	li	a0,0
    80003fb4:	01010113          	addi	sp,sp,16
    80003fb8:	00008067          	ret
    80003fbc:	00003517          	auipc	a0,0x3
    80003fc0:	58c50513          	addi	a0,a0,1420 # 80007548 <_ZZ12printIntegermE6digits+0x68>
    80003fc4:	00001097          	auipc	ra,0x1
    80003fc8:	928080e7          	jalr	-1752(ra) # 800048ec <panic>

0000000080003fcc <either_copyin>:
    80003fcc:	ff010113          	addi	sp,sp,-16
    80003fd0:	00813023          	sd	s0,0(sp)
    80003fd4:	00113423          	sd	ra,8(sp)
    80003fd8:	01010413          	addi	s0,sp,16
    80003fdc:	02059463          	bnez	a1,80004004 <either_copyin+0x38>
    80003fe0:	00060593          	mv	a1,a2
    80003fe4:	0006861b          	sext.w	a2,a3
    80003fe8:	00002097          	auipc	ra,0x2
    80003fec:	c0c080e7          	jalr	-1012(ra) # 80005bf4 <__memmove>
    80003ff0:	00813083          	ld	ra,8(sp)
    80003ff4:	00013403          	ld	s0,0(sp)
    80003ff8:	00000513          	li	a0,0
    80003ffc:	01010113          	addi	sp,sp,16
    80004000:	00008067          	ret
    80004004:	00003517          	auipc	a0,0x3
    80004008:	56c50513          	addi	a0,a0,1388 # 80007570 <_ZZ12printIntegermE6digits+0x90>
    8000400c:	00001097          	auipc	ra,0x1
    80004010:	8e0080e7          	jalr	-1824(ra) # 800048ec <panic>

0000000080004014 <trapinit>:
    80004014:	ff010113          	addi	sp,sp,-16
    80004018:	00813423          	sd	s0,8(sp)
    8000401c:	01010413          	addi	s0,sp,16
    80004020:	00813403          	ld	s0,8(sp)
    80004024:	00003597          	auipc	a1,0x3
    80004028:	57458593          	addi	a1,a1,1396 # 80007598 <_ZZ12printIntegermE6digits+0xb8>
    8000402c:	00005517          	auipc	a0,0x5
    80004030:	2d450513          	addi	a0,a0,724 # 80009300 <tickslock>
    80004034:	01010113          	addi	sp,sp,16
    80004038:	00001317          	auipc	t1,0x1
    8000403c:	5c030067          	jr	1472(t1) # 800055f8 <initlock>

0000000080004040 <trapinithart>:
    80004040:	ff010113          	addi	sp,sp,-16
    80004044:	00813423          	sd	s0,8(sp)
    80004048:	01010413          	addi	s0,sp,16
    8000404c:	00000797          	auipc	a5,0x0
    80004050:	2f478793          	addi	a5,a5,756 # 80004340 <kernelvec>
    80004054:	10579073          	csrw	stvec,a5
    80004058:	00813403          	ld	s0,8(sp)
    8000405c:	01010113          	addi	sp,sp,16
    80004060:	00008067          	ret

0000000080004064 <usertrap>:
    80004064:	ff010113          	addi	sp,sp,-16
    80004068:	00813423          	sd	s0,8(sp)
    8000406c:	01010413          	addi	s0,sp,16
    80004070:	00813403          	ld	s0,8(sp)
    80004074:	01010113          	addi	sp,sp,16
    80004078:	00008067          	ret

000000008000407c <usertrapret>:
    8000407c:	ff010113          	addi	sp,sp,-16
    80004080:	00813423          	sd	s0,8(sp)
    80004084:	01010413          	addi	s0,sp,16
    80004088:	00813403          	ld	s0,8(sp)
    8000408c:	01010113          	addi	sp,sp,16
    80004090:	00008067          	ret

0000000080004094 <kerneltrap>:
    80004094:	fe010113          	addi	sp,sp,-32
    80004098:	00813823          	sd	s0,16(sp)
    8000409c:	00113c23          	sd	ra,24(sp)
    800040a0:	00913423          	sd	s1,8(sp)
    800040a4:	02010413          	addi	s0,sp,32
    800040a8:	142025f3          	csrr	a1,scause
    800040ac:	100027f3          	csrr	a5,sstatus
    800040b0:	0027f793          	andi	a5,a5,2
    800040b4:	10079c63          	bnez	a5,800041cc <kerneltrap+0x138>
    800040b8:	142027f3          	csrr	a5,scause
    800040bc:	0207ce63          	bltz	a5,800040f8 <kerneltrap+0x64>
    800040c0:	00003517          	auipc	a0,0x3
    800040c4:	52050513          	addi	a0,a0,1312 # 800075e0 <_ZZ12printIntegermE6digits+0x100>
    800040c8:	00001097          	auipc	ra,0x1
    800040cc:	880080e7          	jalr	-1920(ra) # 80004948 <__printf>
    800040d0:	141025f3          	csrr	a1,sepc
    800040d4:	14302673          	csrr	a2,stval
    800040d8:	00003517          	auipc	a0,0x3
    800040dc:	51850513          	addi	a0,a0,1304 # 800075f0 <_ZZ12printIntegermE6digits+0x110>
    800040e0:	00001097          	auipc	ra,0x1
    800040e4:	868080e7          	jalr	-1944(ra) # 80004948 <__printf>
    800040e8:	00003517          	auipc	a0,0x3
    800040ec:	52050513          	addi	a0,a0,1312 # 80007608 <_ZZ12printIntegermE6digits+0x128>
    800040f0:	00000097          	auipc	ra,0x0
    800040f4:	7fc080e7          	jalr	2044(ra) # 800048ec <panic>
    800040f8:	0ff7f713          	andi	a4,a5,255
    800040fc:	00900693          	li	a3,9
    80004100:	04d70063          	beq	a4,a3,80004140 <kerneltrap+0xac>
    80004104:	fff00713          	li	a4,-1
    80004108:	03f71713          	slli	a4,a4,0x3f
    8000410c:	00170713          	addi	a4,a4,1
    80004110:	fae798e3          	bne	a5,a4,800040c0 <kerneltrap+0x2c>
    80004114:	00000097          	auipc	ra,0x0
    80004118:	e00080e7          	jalr	-512(ra) # 80003f14 <cpuid>
    8000411c:	06050663          	beqz	a0,80004188 <kerneltrap+0xf4>
    80004120:	144027f3          	csrr	a5,sip
    80004124:	ffd7f793          	andi	a5,a5,-3
    80004128:	14479073          	csrw	sip,a5
    8000412c:	01813083          	ld	ra,24(sp)
    80004130:	01013403          	ld	s0,16(sp)
    80004134:	00813483          	ld	s1,8(sp)
    80004138:	02010113          	addi	sp,sp,32
    8000413c:	00008067          	ret
    80004140:	00000097          	auipc	ra,0x0
    80004144:	3c4080e7          	jalr	964(ra) # 80004504 <plic_claim>
    80004148:	00a00793          	li	a5,10
    8000414c:	00050493          	mv	s1,a0
    80004150:	06f50863          	beq	a0,a5,800041c0 <kerneltrap+0x12c>
    80004154:	fc050ce3          	beqz	a0,8000412c <kerneltrap+0x98>
    80004158:	00050593          	mv	a1,a0
    8000415c:	00003517          	auipc	a0,0x3
    80004160:	46450513          	addi	a0,a0,1124 # 800075c0 <_ZZ12printIntegermE6digits+0xe0>
    80004164:	00000097          	auipc	ra,0x0
    80004168:	7e4080e7          	jalr	2020(ra) # 80004948 <__printf>
    8000416c:	01013403          	ld	s0,16(sp)
    80004170:	01813083          	ld	ra,24(sp)
    80004174:	00048513          	mv	a0,s1
    80004178:	00813483          	ld	s1,8(sp)
    8000417c:	02010113          	addi	sp,sp,32
    80004180:	00000317          	auipc	t1,0x0
    80004184:	3bc30067          	jr	956(t1) # 8000453c <plic_complete>
    80004188:	00005517          	auipc	a0,0x5
    8000418c:	17850513          	addi	a0,a0,376 # 80009300 <tickslock>
    80004190:	00001097          	auipc	ra,0x1
    80004194:	48c080e7          	jalr	1164(ra) # 8000561c <acquire>
    80004198:	00004717          	auipc	a4,0x4
    8000419c:	04c70713          	addi	a4,a4,76 # 800081e4 <ticks>
    800041a0:	00072783          	lw	a5,0(a4)
    800041a4:	00005517          	auipc	a0,0x5
    800041a8:	15c50513          	addi	a0,a0,348 # 80009300 <tickslock>
    800041ac:	0017879b          	addiw	a5,a5,1
    800041b0:	00f72023          	sw	a5,0(a4)
    800041b4:	00001097          	auipc	ra,0x1
    800041b8:	534080e7          	jalr	1332(ra) # 800056e8 <release>
    800041bc:	f65ff06f          	j	80004120 <kerneltrap+0x8c>
    800041c0:	00001097          	auipc	ra,0x1
    800041c4:	090080e7          	jalr	144(ra) # 80005250 <uartintr>
    800041c8:	fa5ff06f          	j	8000416c <kerneltrap+0xd8>
    800041cc:	00003517          	auipc	a0,0x3
    800041d0:	3d450513          	addi	a0,a0,980 # 800075a0 <_ZZ12printIntegermE6digits+0xc0>
    800041d4:	00000097          	auipc	ra,0x0
    800041d8:	718080e7          	jalr	1816(ra) # 800048ec <panic>

00000000800041dc <clockintr>:
    800041dc:	fe010113          	addi	sp,sp,-32
    800041e0:	00813823          	sd	s0,16(sp)
    800041e4:	00913423          	sd	s1,8(sp)
    800041e8:	00113c23          	sd	ra,24(sp)
    800041ec:	02010413          	addi	s0,sp,32
    800041f0:	00005497          	auipc	s1,0x5
    800041f4:	11048493          	addi	s1,s1,272 # 80009300 <tickslock>
    800041f8:	00048513          	mv	a0,s1
    800041fc:	00001097          	auipc	ra,0x1
    80004200:	420080e7          	jalr	1056(ra) # 8000561c <acquire>
    80004204:	00004717          	auipc	a4,0x4
    80004208:	fe070713          	addi	a4,a4,-32 # 800081e4 <ticks>
    8000420c:	00072783          	lw	a5,0(a4)
    80004210:	01013403          	ld	s0,16(sp)
    80004214:	01813083          	ld	ra,24(sp)
    80004218:	00048513          	mv	a0,s1
    8000421c:	0017879b          	addiw	a5,a5,1
    80004220:	00813483          	ld	s1,8(sp)
    80004224:	00f72023          	sw	a5,0(a4)
    80004228:	02010113          	addi	sp,sp,32
    8000422c:	00001317          	auipc	t1,0x1
    80004230:	4bc30067          	jr	1212(t1) # 800056e8 <release>

0000000080004234 <devintr>:
    80004234:	142027f3          	csrr	a5,scause
    80004238:	00000513          	li	a0,0
    8000423c:	0007c463          	bltz	a5,80004244 <devintr+0x10>
    80004240:	00008067          	ret
    80004244:	fe010113          	addi	sp,sp,-32
    80004248:	00813823          	sd	s0,16(sp)
    8000424c:	00113c23          	sd	ra,24(sp)
    80004250:	00913423          	sd	s1,8(sp)
    80004254:	02010413          	addi	s0,sp,32
    80004258:	0ff7f713          	andi	a4,a5,255
    8000425c:	00900693          	li	a3,9
    80004260:	04d70c63          	beq	a4,a3,800042b8 <devintr+0x84>
    80004264:	fff00713          	li	a4,-1
    80004268:	03f71713          	slli	a4,a4,0x3f
    8000426c:	00170713          	addi	a4,a4,1
    80004270:	00e78c63          	beq	a5,a4,80004288 <devintr+0x54>
    80004274:	01813083          	ld	ra,24(sp)
    80004278:	01013403          	ld	s0,16(sp)
    8000427c:	00813483          	ld	s1,8(sp)
    80004280:	02010113          	addi	sp,sp,32
    80004284:	00008067          	ret
    80004288:	00000097          	auipc	ra,0x0
    8000428c:	c8c080e7          	jalr	-884(ra) # 80003f14 <cpuid>
    80004290:	06050663          	beqz	a0,800042fc <devintr+0xc8>
    80004294:	144027f3          	csrr	a5,sip
    80004298:	ffd7f793          	andi	a5,a5,-3
    8000429c:	14479073          	csrw	sip,a5
    800042a0:	01813083          	ld	ra,24(sp)
    800042a4:	01013403          	ld	s0,16(sp)
    800042a8:	00813483          	ld	s1,8(sp)
    800042ac:	00200513          	li	a0,2
    800042b0:	02010113          	addi	sp,sp,32
    800042b4:	00008067          	ret
    800042b8:	00000097          	auipc	ra,0x0
    800042bc:	24c080e7          	jalr	588(ra) # 80004504 <plic_claim>
    800042c0:	00a00793          	li	a5,10
    800042c4:	00050493          	mv	s1,a0
    800042c8:	06f50663          	beq	a0,a5,80004334 <devintr+0x100>
    800042cc:	00100513          	li	a0,1
    800042d0:	fa0482e3          	beqz	s1,80004274 <devintr+0x40>
    800042d4:	00048593          	mv	a1,s1
    800042d8:	00003517          	auipc	a0,0x3
    800042dc:	2e850513          	addi	a0,a0,744 # 800075c0 <_ZZ12printIntegermE6digits+0xe0>
    800042e0:	00000097          	auipc	ra,0x0
    800042e4:	668080e7          	jalr	1640(ra) # 80004948 <__printf>
    800042e8:	00048513          	mv	a0,s1
    800042ec:	00000097          	auipc	ra,0x0
    800042f0:	250080e7          	jalr	592(ra) # 8000453c <plic_complete>
    800042f4:	00100513          	li	a0,1
    800042f8:	f7dff06f          	j	80004274 <devintr+0x40>
    800042fc:	00005517          	auipc	a0,0x5
    80004300:	00450513          	addi	a0,a0,4 # 80009300 <tickslock>
    80004304:	00001097          	auipc	ra,0x1
    80004308:	318080e7          	jalr	792(ra) # 8000561c <acquire>
    8000430c:	00004717          	auipc	a4,0x4
    80004310:	ed870713          	addi	a4,a4,-296 # 800081e4 <ticks>
    80004314:	00072783          	lw	a5,0(a4)
    80004318:	00005517          	auipc	a0,0x5
    8000431c:	fe850513          	addi	a0,a0,-24 # 80009300 <tickslock>
    80004320:	0017879b          	addiw	a5,a5,1
    80004324:	00f72023          	sw	a5,0(a4)
    80004328:	00001097          	auipc	ra,0x1
    8000432c:	3c0080e7          	jalr	960(ra) # 800056e8 <release>
    80004330:	f65ff06f          	j	80004294 <devintr+0x60>
    80004334:	00001097          	auipc	ra,0x1
    80004338:	f1c080e7          	jalr	-228(ra) # 80005250 <uartintr>
    8000433c:	fadff06f          	j	800042e8 <devintr+0xb4>

0000000080004340 <kernelvec>:
    80004340:	f0010113          	addi	sp,sp,-256
    80004344:	00113023          	sd	ra,0(sp)
    80004348:	00213423          	sd	sp,8(sp)
    8000434c:	00313823          	sd	gp,16(sp)
    80004350:	00413c23          	sd	tp,24(sp)
    80004354:	02513023          	sd	t0,32(sp)
    80004358:	02613423          	sd	t1,40(sp)
    8000435c:	02713823          	sd	t2,48(sp)
    80004360:	02813c23          	sd	s0,56(sp)
    80004364:	04913023          	sd	s1,64(sp)
    80004368:	04a13423          	sd	a0,72(sp)
    8000436c:	04b13823          	sd	a1,80(sp)
    80004370:	04c13c23          	sd	a2,88(sp)
    80004374:	06d13023          	sd	a3,96(sp)
    80004378:	06e13423          	sd	a4,104(sp)
    8000437c:	06f13823          	sd	a5,112(sp)
    80004380:	07013c23          	sd	a6,120(sp)
    80004384:	09113023          	sd	a7,128(sp)
    80004388:	09213423          	sd	s2,136(sp)
    8000438c:	09313823          	sd	s3,144(sp)
    80004390:	09413c23          	sd	s4,152(sp)
    80004394:	0b513023          	sd	s5,160(sp)
    80004398:	0b613423          	sd	s6,168(sp)
    8000439c:	0b713823          	sd	s7,176(sp)
    800043a0:	0b813c23          	sd	s8,184(sp)
    800043a4:	0d913023          	sd	s9,192(sp)
    800043a8:	0da13423          	sd	s10,200(sp)
    800043ac:	0db13823          	sd	s11,208(sp)
    800043b0:	0dc13c23          	sd	t3,216(sp)
    800043b4:	0fd13023          	sd	t4,224(sp)
    800043b8:	0fe13423          	sd	t5,232(sp)
    800043bc:	0ff13823          	sd	t6,240(sp)
    800043c0:	cd5ff0ef          	jal	ra,80004094 <kerneltrap>
    800043c4:	00013083          	ld	ra,0(sp)
    800043c8:	00813103          	ld	sp,8(sp)
    800043cc:	01013183          	ld	gp,16(sp)
    800043d0:	02013283          	ld	t0,32(sp)
    800043d4:	02813303          	ld	t1,40(sp)
    800043d8:	03013383          	ld	t2,48(sp)
    800043dc:	03813403          	ld	s0,56(sp)
    800043e0:	04013483          	ld	s1,64(sp)
    800043e4:	04813503          	ld	a0,72(sp)
    800043e8:	05013583          	ld	a1,80(sp)
    800043ec:	05813603          	ld	a2,88(sp)
    800043f0:	06013683          	ld	a3,96(sp)
    800043f4:	06813703          	ld	a4,104(sp)
    800043f8:	07013783          	ld	a5,112(sp)
    800043fc:	07813803          	ld	a6,120(sp)
    80004400:	08013883          	ld	a7,128(sp)
    80004404:	08813903          	ld	s2,136(sp)
    80004408:	09013983          	ld	s3,144(sp)
    8000440c:	09813a03          	ld	s4,152(sp)
    80004410:	0a013a83          	ld	s5,160(sp)
    80004414:	0a813b03          	ld	s6,168(sp)
    80004418:	0b013b83          	ld	s7,176(sp)
    8000441c:	0b813c03          	ld	s8,184(sp)
    80004420:	0c013c83          	ld	s9,192(sp)
    80004424:	0c813d03          	ld	s10,200(sp)
    80004428:	0d013d83          	ld	s11,208(sp)
    8000442c:	0d813e03          	ld	t3,216(sp)
    80004430:	0e013e83          	ld	t4,224(sp)
    80004434:	0e813f03          	ld	t5,232(sp)
    80004438:	0f013f83          	ld	t6,240(sp)
    8000443c:	10010113          	addi	sp,sp,256
    80004440:	10200073          	sret
    80004444:	00000013          	nop
    80004448:	00000013          	nop
    8000444c:	00000013          	nop

0000000080004450 <timervec>:
    80004450:	34051573          	csrrw	a0,mscratch,a0
    80004454:	00b53023          	sd	a1,0(a0)
    80004458:	00c53423          	sd	a2,8(a0)
    8000445c:	00d53823          	sd	a3,16(a0)
    80004460:	01853583          	ld	a1,24(a0)
    80004464:	02053603          	ld	a2,32(a0)
    80004468:	0005b683          	ld	a3,0(a1)
    8000446c:	00c686b3          	add	a3,a3,a2
    80004470:	00d5b023          	sd	a3,0(a1)
    80004474:	00200593          	li	a1,2
    80004478:	14459073          	csrw	sip,a1
    8000447c:	01053683          	ld	a3,16(a0)
    80004480:	00853603          	ld	a2,8(a0)
    80004484:	00053583          	ld	a1,0(a0)
    80004488:	34051573          	csrrw	a0,mscratch,a0
    8000448c:	30200073          	mret

0000000080004490 <plicinit>:
    80004490:	ff010113          	addi	sp,sp,-16
    80004494:	00813423          	sd	s0,8(sp)
    80004498:	01010413          	addi	s0,sp,16
    8000449c:	00813403          	ld	s0,8(sp)
    800044a0:	0c0007b7          	lui	a5,0xc000
    800044a4:	00100713          	li	a4,1
    800044a8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800044ac:	00e7a223          	sw	a4,4(a5)
    800044b0:	01010113          	addi	sp,sp,16
    800044b4:	00008067          	ret

00000000800044b8 <plicinithart>:
    800044b8:	ff010113          	addi	sp,sp,-16
    800044bc:	00813023          	sd	s0,0(sp)
    800044c0:	00113423          	sd	ra,8(sp)
    800044c4:	01010413          	addi	s0,sp,16
    800044c8:	00000097          	auipc	ra,0x0
    800044cc:	a4c080e7          	jalr	-1460(ra) # 80003f14 <cpuid>
    800044d0:	0085171b          	slliw	a4,a0,0x8
    800044d4:	0c0027b7          	lui	a5,0xc002
    800044d8:	00e787b3          	add	a5,a5,a4
    800044dc:	40200713          	li	a4,1026
    800044e0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800044e4:	00813083          	ld	ra,8(sp)
    800044e8:	00013403          	ld	s0,0(sp)
    800044ec:	00d5151b          	slliw	a0,a0,0xd
    800044f0:	0c2017b7          	lui	a5,0xc201
    800044f4:	00a78533          	add	a0,a5,a0
    800044f8:	00052023          	sw	zero,0(a0)
    800044fc:	01010113          	addi	sp,sp,16
    80004500:	00008067          	ret

0000000080004504 <plic_claim>:
    80004504:	ff010113          	addi	sp,sp,-16
    80004508:	00813023          	sd	s0,0(sp)
    8000450c:	00113423          	sd	ra,8(sp)
    80004510:	01010413          	addi	s0,sp,16
    80004514:	00000097          	auipc	ra,0x0
    80004518:	a00080e7          	jalr	-1536(ra) # 80003f14 <cpuid>
    8000451c:	00813083          	ld	ra,8(sp)
    80004520:	00013403          	ld	s0,0(sp)
    80004524:	00d5151b          	slliw	a0,a0,0xd
    80004528:	0c2017b7          	lui	a5,0xc201
    8000452c:	00a78533          	add	a0,a5,a0
    80004530:	00452503          	lw	a0,4(a0)
    80004534:	01010113          	addi	sp,sp,16
    80004538:	00008067          	ret

000000008000453c <plic_complete>:
    8000453c:	fe010113          	addi	sp,sp,-32
    80004540:	00813823          	sd	s0,16(sp)
    80004544:	00913423          	sd	s1,8(sp)
    80004548:	00113c23          	sd	ra,24(sp)
    8000454c:	02010413          	addi	s0,sp,32
    80004550:	00050493          	mv	s1,a0
    80004554:	00000097          	auipc	ra,0x0
    80004558:	9c0080e7          	jalr	-1600(ra) # 80003f14 <cpuid>
    8000455c:	01813083          	ld	ra,24(sp)
    80004560:	01013403          	ld	s0,16(sp)
    80004564:	00d5179b          	slliw	a5,a0,0xd
    80004568:	0c201737          	lui	a4,0xc201
    8000456c:	00f707b3          	add	a5,a4,a5
    80004570:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004574:	00813483          	ld	s1,8(sp)
    80004578:	02010113          	addi	sp,sp,32
    8000457c:	00008067          	ret

0000000080004580 <consolewrite>:
    80004580:	fb010113          	addi	sp,sp,-80
    80004584:	04813023          	sd	s0,64(sp)
    80004588:	04113423          	sd	ra,72(sp)
    8000458c:	02913c23          	sd	s1,56(sp)
    80004590:	03213823          	sd	s2,48(sp)
    80004594:	03313423          	sd	s3,40(sp)
    80004598:	03413023          	sd	s4,32(sp)
    8000459c:	01513c23          	sd	s5,24(sp)
    800045a0:	05010413          	addi	s0,sp,80
    800045a4:	06c05c63          	blez	a2,8000461c <consolewrite+0x9c>
    800045a8:	00060993          	mv	s3,a2
    800045ac:	00050a13          	mv	s4,a0
    800045b0:	00058493          	mv	s1,a1
    800045b4:	00000913          	li	s2,0
    800045b8:	fff00a93          	li	s5,-1
    800045bc:	01c0006f          	j	800045d8 <consolewrite+0x58>
    800045c0:	fbf44503          	lbu	a0,-65(s0)
    800045c4:	0019091b          	addiw	s2,s2,1
    800045c8:	00148493          	addi	s1,s1,1
    800045cc:	00001097          	auipc	ra,0x1
    800045d0:	a9c080e7          	jalr	-1380(ra) # 80005068 <uartputc>
    800045d4:	03298063          	beq	s3,s2,800045f4 <consolewrite+0x74>
    800045d8:	00048613          	mv	a2,s1
    800045dc:	00100693          	li	a3,1
    800045e0:	000a0593          	mv	a1,s4
    800045e4:	fbf40513          	addi	a0,s0,-65
    800045e8:	00000097          	auipc	ra,0x0
    800045ec:	9e4080e7          	jalr	-1564(ra) # 80003fcc <either_copyin>
    800045f0:	fd5518e3          	bne	a0,s5,800045c0 <consolewrite+0x40>
    800045f4:	04813083          	ld	ra,72(sp)
    800045f8:	04013403          	ld	s0,64(sp)
    800045fc:	03813483          	ld	s1,56(sp)
    80004600:	02813983          	ld	s3,40(sp)
    80004604:	02013a03          	ld	s4,32(sp)
    80004608:	01813a83          	ld	s5,24(sp)
    8000460c:	00090513          	mv	a0,s2
    80004610:	03013903          	ld	s2,48(sp)
    80004614:	05010113          	addi	sp,sp,80
    80004618:	00008067          	ret
    8000461c:	00000913          	li	s2,0
    80004620:	fd5ff06f          	j	800045f4 <consolewrite+0x74>

0000000080004624 <consoleread>:
    80004624:	f9010113          	addi	sp,sp,-112
    80004628:	06813023          	sd	s0,96(sp)
    8000462c:	04913c23          	sd	s1,88(sp)
    80004630:	05213823          	sd	s2,80(sp)
    80004634:	05313423          	sd	s3,72(sp)
    80004638:	05413023          	sd	s4,64(sp)
    8000463c:	03513c23          	sd	s5,56(sp)
    80004640:	03613823          	sd	s6,48(sp)
    80004644:	03713423          	sd	s7,40(sp)
    80004648:	03813023          	sd	s8,32(sp)
    8000464c:	06113423          	sd	ra,104(sp)
    80004650:	01913c23          	sd	s9,24(sp)
    80004654:	07010413          	addi	s0,sp,112
    80004658:	00060b93          	mv	s7,a2
    8000465c:	00050913          	mv	s2,a0
    80004660:	00058c13          	mv	s8,a1
    80004664:	00060b1b          	sext.w	s6,a2
    80004668:	00005497          	auipc	s1,0x5
    8000466c:	cc048493          	addi	s1,s1,-832 # 80009328 <cons>
    80004670:	00400993          	li	s3,4
    80004674:	fff00a13          	li	s4,-1
    80004678:	00a00a93          	li	s5,10
    8000467c:	05705e63          	blez	s7,800046d8 <consoleread+0xb4>
    80004680:	09c4a703          	lw	a4,156(s1)
    80004684:	0984a783          	lw	a5,152(s1)
    80004688:	0007071b          	sext.w	a4,a4
    8000468c:	08e78463          	beq	a5,a4,80004714 <consoleread+0xf0>
    80004690:	07f7f713          	andi	a4,a5,127
    80004694:	00e48733          	add	a4,s1,a4
    80004698:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000469c:	0017869b          	addiw	a3,a5,1
    800046a0:	08d4ac23          	sw	a3,152(s1)
    800046a4:	00070c9b          	sext.w	s9,a4
    800046a8:	0b370663          	beq	a4,s3,80004754 <consoleread+0x130>
    800046ac:	00100693          	li	a3,1
    800046b0:	f9f40613          	addi	a2,s0,-97
    800046b4:	000c0593          	mv	a1,s8
    800046b8:	00090513          	mv	a0,s2
    800046bc:	f8e40fa3          	sb	a4,-97(s0)
    800046c0:	00000097          	auipc	ra,0x0
    800046c4:	8c0080e7          	jalr	-1856(ra) # 80003f80 <either_copyout>
    800046c8:	01450863          	beq	a0,s4,800046d8 <consoleread+0xb4>
    800046cc:	001c0c13          	addi	s8,s8,1
    800046d0:	fffb8b9b          	addiw	s7,s7,-1
    800046d4:	fb5c94e3          	bne	s9,s5,8000467c <consoleread+0x58>
    800046d8:	000b851b          	sext.w	a0,s7
    800046dc:	06813083          	ld	ra,104(sp)
    800046e0:	06013403          	ld	s0,96(sp)
    800046e4:	05813483          	ld	s1,88(sp)
    800046e8:	05013903          	ld	s2,80(sp)
    800046ec:	04813983          	ld	s3,72(sp)
    800046f0:	04013a03          	ld	s4,64(sp)
    800046f4:	03813a83          	ld	s5,56(sp)
    800046f8:	02813b83          	ld	s7,40(sp)
    800046fc:	02013c03          	ld	s8,32(sp)
    80004700:	01813c83          	ld	s9,24(sp)
    80004704:	40ab053b          	subw	a0,s6,a0
    80004708:	03013b03          	ld	s6,48(sp)
    8000470c:	07010113          	addi	sp,sp,112
    80004710:	00008067          	ret
    80004714:	00001097          	auipc	ra,0x1
    80004718:	1d8080e7          	jalr	472(ra) # 800058ec <push_on>
    8000471c:	0984a703          	lw	a4,152(s1)
    80004720:	09c4a783          	lw	a5,156(s1)
    80004724:	0007879b          	sext.w	a5,a5
    80004728:	fef70ce3          	beq	a4,a5,80004720 <consoleread+0xfc>
    8000472c:	00001097          	auipc	ra,0x1
    80004730:	234080e7          	jalr	564(ra) # 80005960 <pop_on>
    80004734:	0984a783          	lw	a5,152(s1)
    80004738:	07f7f713          	andi	a4,a5,127
    8000473c:	00e48733          	add	a4,s1,a4
    80004740:	01874703          	lbu	a4,24(a4)
    80004744:	0017869b          	addiw	a3,a5,1
    80004748:	08d4ac23          	sw	a3,152(s1)
    8000474c:	00070c9b          	sext.w	s9,a4
    80004750:	f5371ee3          	bne	a4,s3,800046ac <consoleread+0x88>
    80004754:	000b851b          	sext.w	a0,s7
    80004758:	f96bf2e3          	bgeu	s7,s6,800046dc <consoleread+0xb8>
    8000475c:	08f4ac23          	sw	a5,152(s1)
    80004760:	f7dff06f          	j	800046dc <consoleread+0xb8>

0000000080004764 <consputc>:
    80004764:	10000793          	li	a5,256
    80004768:	00f50663          	beq	a0,a5,80004774 <consputc+0x10>
    8000476c:	00001317          	auipc	t1,0x1
    80004770:	9f430067          	jr	-1548(t1) # 80005160 <uartputc_sync>
    80004774:	ff010113          	addi	sp,sp,-16
    80004778:	00113423          	sd	ra,8(sp)
    8000477c:	00813023          	sd	s0,0(sp)
    80004780:	01010413          	addi	s0,sp,16
    80004784:	00800513          	li	a0,8
    80004788:	00001097          	auipc	ra,0x1
    8000478c:	9d8080e7          	jalr	-1576(ra) # 80005160 <uartputc_sync>
    80004790:	02000513          	li	a0,32
    80004794:	00001097          	auipc	ra,0x1
    80004798:	9cc080e7          	jalr	-1588(ra) # 80005160 <uartputc_sync>
    8000479c:	00013403          	ld	s0,0(sp)
    800047a0:	00813083          	ld	ra,8(sp)
    800047a4:	00800513          	li	a0,8
    800047a8:	01010113          	addi	sp,sp,16
    800047ac:	00001317          	auipc	t1,0x1
    800047b0:	9b430067          	jr	-1612(t1) # 80005160 <uartputc_sync>

00000000800047b4 <consoleintr>:
    800047b4:	fe010113          	addi	sp,sp,-32
    800047b8:	00813823          	sd	s0,16(sp)
    800047bc:	00913423          	sd	s1,8(sp)
    800047c0:	01213023          	sd	s2,0(sp)
    800047c4:	00113c23          	sd	ra,24(sp)
    800047c8:	02010413          	addi	s0,sp,32
    800047cc:	00005917          	auipc	s2,0x5
    800047d0:	b5c90913          	addi	s2,s2,-1188 # 80009328 <cons>
    800047d4:	00050493          	mv	s1,a0
    800047d8:	00090513          	mv	a0,s2
    800047dc:	00001097          	auipc	ra,0x1
    800047e0:	e40080e7          	jalr	-448(ra) # 8000561c <acquire>
    800047e4:	02048c63          	beqz	s1,8000481c <consoleintr+0x68>
    800047e8:	0a092783          	lw	a5,160(s2)
    800047ec:	09892703          	lw	a4,152(s2)
    800047f0:	07f00693          	li	a3,127
    800047f4:	40e7873b          	subw	a4,a5,a4
    800047f8:	02e6e263          	bltu	a3,a4,8000481c <consoleintr+0x68>
    800047fc:	00d00713          	li	a4,13
    80004800:	04e48063          	beq	s1,a4,80004840 <consoleintr+0x8c>
    80004804:	07f7f713          	andi	a4,a5,127
    80004808:	00e90733          	add	a4,s2,a4
    8000480c:	0017879b          	addiw	a5,a5,1
    80004810:	0af92023          	sw	a5,160(s2)
    80004814:	00970c23          	sb	s1,24(a4)
    80004818:	08f92e23          	sw	a5,156(s2)
    8000481c:	01013403          	ld	s0,16(sp)
    80004820:	01813083          	ld	ra,24(sp)
    80004824:	00813483          	ld	s1,8(sp)
    80004828:	00013903          	ld	s2,0(sp)
    8000482c:	00005517          	auipc	a0,0x5
    80004830:	afc50513          	addi	a0,a0,-1284 # 80009328 <cons>
    80004834:	02010113          	addi	sp,sp,32
    80004838:	00001317          	auipc	t1,0x1
    8000483c:	eb030067          	jr	-336(t1) # 800056e8 <release>
    80004840:	00a00493          	li	s1,10
    80004844:	fc1ff06f          	j	80004804 <consoleintr+0x50>

0000000080004848 <consoleinit>:
    80004848:	fe010113          	addi	sp,sp,-32
    8000484c:	00113c23          	sd	ra,24(sp)
    80004850:	00813823          	sd	s0,16(sp)
    80004854:	00913423          	sd	s1,8(sp)
    80004858:	02010413          	addi	s0,sp,32
    8000485c:	00005497          	auipc	s1,0x5
    80004860:	acc48493          	addi	s1,s1,-1332 # 80009328 <cons>
    80004864:	00048513          	mv	a0,s1
    80004868:	00003597          	auipc	a1,0x3
    8000486c:	db058593          	addi	a1,a1,-592 # 80007618 <_ZZ12printIntegermE6digits+0x138>
    80004870:	00001097          	auipc	ra,0x1
    80004874:	d88080e7          	jalr	-632(ra) # 800055f8 <initlock>
    80004878:	00000097          	auipc	ra,0x0
    8000487c:	7ac080e7          	jalr	1964(ra) # 80005024 <uartinit>
    80004880:	01813083          	ld	ra,24(sp)
    80004884:	01013403          	ld	s0,16(sp)
    80004888:	00000797          	auipc	a5,0x0
    8000488c:	d9c78793          	addi	a5,a5,-612 # 80004624 <consoleread>
    80004890:	0af4bc23          	sd	a5,184(s1)
    80004894:	00000797          	auipc	a5,0x0
    80004898:	cec78793          	addi	a5,a5,-788 # 80004580 <consolewrite>
    8000489c:	0cf4b023          	sd	a5,192(s1)
    800048a0:	00813483          	ld	s1,8(sp)
    800048a4:	02010113          	addi	sp,sp,32
    800048a8:	00008067          	ret

00000000800048ac <console_read>:
    800048ac:	ff010113          	addi	sp,sp,-16
    800048b0:	00813423          	sd	s0,8(sp)
    800048b4:	01010413          	addi	s0,sp,16
    800048b8:	00813403          	ld	s0,8(sp)
    800048bc:	00005317          	auipc	t1,0x5
    800048c0:	b2433303          	ld	t1,-1244(t1) # 800093e0 <devsw+0x10>
    800048c4:	01010113          	addi	sp,sp,16
    800048c8:	00030067          	jr	t1

00000000800048cc <console_write>:
    800048cc:	ff010113          	addi	sp,sp,-16
    800048d0:	00813423          	sd	s0,8(sp)
    800048d4:	01010413          	addi	s0,sp,16
    800048d8:	00813403          	ld	s0,8(sp)
    800048dc:	00005317          	auipc	t1,0x5
    800048e0:	b0c33303          	ld	t1,-1268(t1) # 800093e8 <devsw+0x18>
    800048e4:	01010113          	addi	sp,sp,16
    800048e8:	00030067          	jr	t1

00000000800048ec <panic>:
    800048ec:	fe010113          	addi	sp,sp,-32
    800048f0:	00113c23          	sd	ra,24(sp)
    800048f4:	00813823          	sd	s0,16(sp)
    800048f8:	00913423          	sd	s1,8(sp)
    800048fc:	02010413          	addi	s0,sp,32
    80004900:	00050493          	mv	s1,a0
    80004904:	00003517          	auipc	a0,0x3
    80004908:	d1c50513          	addi	a0,a0,-740 # 80007620 <_ZZ12printIntegermE6digits+0x140>
    8000490c:	00005797          	auipc	a5,0x5
    80004910:	b607ae23          	sw	zero,-1156(a5) # 80009488 <pr+0x18>
    80004914:	00000097          	auipc	ra,0x0
    80004918:	034080e7          	jalr	52(ra) # 80004948 <__printf>
    8000491c:	00048513          	mv	a0,s1
    80004920:	00000097          	auipc	ra,0x0
    80004924:	028080e7          	jalr	40(ra) # 80004948 <__printf>
    80004928:	00002517          	auipc	a0,0x2
    8000492c:	76050513          	addi	a0,a0,1888 # 80007088 <CONSOLE_STATUS+0x78>
    80004930:	00000097          	auipc	ra,0x0
    80004934:	018080e7          	jalr	24(ra) # 80004948 <__printf>
    80004938:	00100793          	li	a5,1
    8000493c:	00004717          	auipc	a4,0x4
    80004940:	8af72623          	sw	a5,-1876(a4) # 800081e8 <panicked>
    80004944:	0000006f          	j	80004944 <panic+0x58>

0000000080004948 <__printf>:
    80004948:	f3010113          	addi	sp,sp,-208
    8000494c:	08813023          	sd	s0,128(sp)
    80004950:	07313423          	sd	s3,104(sp)
    80004954:	09010413          	addi	s0,sp,144
    80004958:	05813023          	sd	s8,64(sp)
    8000495c:	08113423          	sd	ra,136(sp)
    80004960:	06913c23          	sd	s1,120(sp)
    80004964:	07213823          	sd	s2,112(sp)
    80004968:	07413023          	sd	s4,96(sp)
    8000496c:	05513c23          	sd	s5,88(sp)
    80004970:	05613823          	sd	s6,80(sp)
    80004974:	05713423          	sd	s7,72(sp)
    80004978:	03913c23          	sd	s9,56(sp)
    8000497c:	03a13823          	sd	s10,48(sp)
    80004980:	03b13423          	sd	s11,40(sp)
    80004984:	00005317          	auipc	t1,0x5
    80004988:	aec30313          	addi	t1,t1,-1300 # 80009470 <pr>
    8000498c:	01832c03          	lw	s8,24(t1)
    80004990:	00b43423          	sd	a1,8(s0)
    80004994:	00c43823          	sd	a2,16(s0)
    80004998:	00d43c23          	sd	a3,24(s0)
    8000499c:	02e43023          	sd	a4,32(s0)
    800049a0:	02f43423          	sd	a5,40(s0)
    800049a4:	03043823          	sd	a6,48(s0)
    800049a8:	03143c23          	sd	a7,56(s0)
    800049ac:	00050993          	mv	s3,a0
    800049b0:	4a0c1663          	bnez	s8,80004e5c <__printf+0x514>
    800049b4:	60098c63          	beqz	s3,80004fcc <__printf+0x684>
    800049b8:	0009c503          	lbu	a0,0(s3)
    800049bc:	00840793          	addi	a5,s0,8
    800049c0:	f6f43c23          	sd	a5,-136(s0)
    800049c4:	00000493          	li	s1,0
    800049c8:	22050063          	beqz	a0,80004be8 <__printf+0x2a0>
    800049cc:	00002a37          	lui	s4,0x2
    800049d0:	00018ab7          	lui	s5,0x18
    800049d4:	000f4b37          	lui	s6,0xf4
    800049d8:	00989bb7          	lui	s7,0x989
    800049dc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800049e0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800049e4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800049e8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800049ec:	00148c9b          	addiw	s9,s1,1
    800049f0:	02500793          	li	a5,37
    800049f4:	01998933          	add	s2,s3,s9
    800049f8:	38f51263          	bne	a0,a5,80004d7c <__printf+0x434>
    800049fc:	00094783          	lbu	a5,0(s2)
    80004a00:	00078c9b          	sext.w	s9,a5
    80004a04:	1e078263          	beqz	a5,80004be8 <__printf+0x2a0>
    80004a08:	0024849b          	addiw	s1,s1,2
    80004a0c:	07000713          	li	a4,112
    80004a10:	00998933          	add	s2,s3,s1
    80004a14:	38e78a63          	beq	a5,a4,80004da8 <__printf+0x460>
    80004a18:	20f76863          	bltu	a4,a5,80004c28 <__printf+0x2e0>
    80004a1c:	42a78863          	beq	a5,a0,80004e4c <__printf+0x504>
    80004a20:	06400713          	li	a4,100
    80004a24:	40e79663          	bne	a5,a4,80004e30 <__printf+0x4e8>
    80004a28:	f7843783          	ld	a5,-136(s0)
    80004a2c:	0007a603          	lw	a2,0(a5)
    80004a30:	00878793          	addi	a5,a5,8
    80004a34:	f6f43c23          	sd	a5,-136(s0)
    80004a38:	42064a63          	bltz	a2,80004e6c <__printf+0x524>
    80004a3c:	00a00713          	li	a4,10
    80004a40:	02e677bb          	remuw	a5,a2,a4
    80004a44:	00003d97          	auipc	s11,0x3
    80004a48:	c04d8d93          	addi	s11,s11,-1020 # 80007648 <digits>
    80004a4c:	00900593          	li	a1,9
    80004a50:	0006051b          	sext.w	a0,a2
    80004a54:	00000c93          	li	s9,0
    80004a58:	02079793          	slli	a5,a5,0x20
    80004a5c:	0207d793          	srli	a5,a5,0x20
    80004a60:	00fd87b3          	add	a5,s11,a5
    80004a64:	0007c783          	lbu	a5,0(a5)
    80004a68:	02e656bb          	divuw	a3,a2,a4
    80004a6c:	f8f40023          	sb	a5,-128(s0)
    80004a70:	14c5d863          	bge	a1,a2,80004bc0 <__printf+0x278>
    80004a74:	06300593          	li	a1,99
    80004a78:	00100c93          	li	s9,1
    80004a7c:	02e6f7bb          	remuw	a5,a3,a4
    80004a80:	02079793          	slli	a5,a5,0x20
    80004a84:	0207d793          	srli	a5,a5,0x20
    80004a88:	00fd87b3          	add	a5,s11,a5
    80004a8c:	0007c783          	lbu	a5,0(a5)
    80004a90:	02e6d73b          	divuw	a4,a3,a4
    80004a94:	f8f400a3          	sb	a5,-127(s0)
    80004a98:	12a5f463          	bgeu	a1,a0,80004bc0 <__printf+0x278>
    80004a9c:	00a00693          	li	a3,10
    80004aa0:	00900593          	li	a1,9
    80004aa4:	02d777bb          	remuw	a5,a4,a3
    80004aa8:	02079793          	slli	a5,a5,0x20
    80004aac:	0207d793          	srli	a5,a5,0x20
    80004ab0:	00fd87b3          	add	a5,s11,a5
    80004ab4:	0007c503          	lbu	a0,0(a5)
    80004ab8:	02d757bb          	divuw	a5,a4,a3
    80004abc:	f8a40123          	sb	a0,-126(s0)
    80004ac0:	48e5f263          	bgeu	a1,a4,80004f44 <__printf+0x5fc>
    80004ac4:	06300513          	li	a0,99
    80004ac8:	02d7f5bb          	remuw	a1,a5,a3
    80004acc:	02059593          	slli	a1,a1,0x20
    80004ad0:	0205d593          	srli	a1,a1,0x20
    80004ad4:	00bd85b3          	add	a1,s11,a1
    80004ad8:	0005c583          	lbu	a1,0(a1)
    80004adc:	02d7d7bb          	divuw	a5,a5,a3
    80004ae0:	f8b401a3          	sb	a1,-125(s0)
    80004ae4:	48e57263          	bgeu	a0,a4,80004f68 <__printf+0x620>
    80004ae8:	3e700513          	li	a0,999
    80004aec:	02d7f5bb          	remuw	a1,a5,a3
    80004af0:	02059593          	slli	a1,a1,0x20
    80004af4:	0205d593          	srli	a1,a1,0x20
    80004af8:	00bd85b3          	add	a1,s11,a1
    80004afc:	0005c583          	lbu	a1,0(a1)
    80004b00:	02d7d7bb          	divuw	a5,a5,a3
    80004b04:	f8b40223          	sb	a1,-124(s0)
    80004b08:	46e57663          	bgeu	a0,a4,80004f74 <__printf+0x62c>
    80004b0c:	02d7f5bb          	remuw	a1,a5,a3
    80004b10:	02059593          	slli	a1,a1,0x20
    80004b14:	0205d593          	srli	a1,a1,0x20
    80004b18:	00bd85b3          	add	a1,s11,a1
    80004b1c:	0005c583          	lbu	a1,0(a1)
    80004b20:	02d7d7bb          	divuw	a5,a5,a3
    80004b24:	f8b402a3          	sb	a1,-123(s0)
    80004b28:	46ea7863          	bgeu	s4,a4,80004f98 <__printf+0x650>
    80004b2c:	02d7f5bb          	remuw	a1,a5,a3
    80004b30:	02059593          	slli	a1,a1,0x20
    80004b34:	0205d593          	srli	a1,a1,0x20
    80004b38:	00bd85b3          	add	a1,s11,a1
    80004b3c:	0005c583          	lbu	a1,0(a1)
    80004b40:	02d7d7bb          	divuw	a5,a5,a3
    80004b44:	f8b40323          	sb	a1,-122(s0)
    80004b48:	3eeaf863          	bgeu	s5,a4,80004f38 <__printf+0x5f0>
    80004b4c:	02d7f5bb          	remuw	a1,a5,a3
    80004b50:	02059593          	slli	a1,a1,0x20
    80004b54:	0205d593          	srli	a1,a1,0x20
    80004b58:	00bd85b3          	add	a1,s11,a1
    80004b5c:	0005c583          	lbu	a1,0(a1)
    80004b60:	02d7d7bb          	divuw	a5,a5,a3
    80004b64:	f8b403a3          	sb	a1,-121(s0)
    80004b68:	42eb7e63          	bgeu	s6,a4,80004fa4 <__printf+0x65c>
    80004b6c:	02d7f5bb          	remuw	a1,a5,a3
    80004b70:	02059593          	slli	a1,a1,0x20
    80004b74:	0205d593          	srli	a1,a1,0x20
    80004b78:	00bd85b3          	add	a1,s11,a1
    80004b7c:	0005c583          	lbu	a1,0(a1)
    80004b80:	02d7d7bb          	divuw	a5,a5,a3
    80004b84:	f8b40423          	sb	a1,-120(s0)
    80004b88:	42ebfc63          	bgeu	s7,a4,80004fc0 <__printf+0x678>
    80004b8c:	02079793          	slli	a5,a5,0x20
    80004b90:	0207d793          	srli	a5,a5,0x20
    80004b94:	00fd8db3          	add	s11,s11,a5
    80004b98:	000dc703          	lbu	a4,0(s11)
    80004b9c:	00a00793          	li	a5,10
    80004ba0:	00900c93          	li	s9,9
    80004ba4:	f8e404a3          	sb	a4,-119(s0)
    80004ba8:	00065c63          	bgez	a2,80004bc0 <__printf+0x278>
    80004bac:	f9040713          	addi	a4,s0,-112
    80004bb0:	00f70733          	add	a4,a4,a5
    80004bb4:	02d00693          	li	a3,45
    80004bb8:	fed70823          	sb	a3,-16(a4)
    80004bbc:	00078c93          	mv	s9,a5
    80004bc0:	f8040793          	addi	a5,s0,-128
    80004bc4:	01978cb3          	add	s9,a5,s9
    80004bc8:	f7f40d13          	addi	s10,s0,-129
    80004bcc:	000cc503          	lbu	a0,0(s9)
    80004bd0:	fffc8c93          	addi	s9,s9,-1
    80004bd4:	00000097          	auipc	ra,0x0
    80004bd8:	b90080e7          	jalr	-1136(ra) # 80004764 <consputc>
    80004bdc:	ffac98e3          	bne	s9,s10,80004bcc <__printf+0x284>
    80004be0:	00094503          	lbu	a0,0(s2)
    80004be4:	e00514e3          	bnez	a0,800049ec <__printf+0xa4>
    80004be8:	1a0c1663          	bnez	s8,80004d94 <__printf+0x44c>
    80004bec:	08813083          	ld	ra,136(sp)
    80004bf0:	08013403          	ld	s0,128(sp)
    80004bf4:	07813483          	ld	s1,120(sp)
    80004bf8:	07013903          	ld	s2,112(sp)
    80004bfc:	06813983          	ld	s3,104(sp)
    80004c00:	06013a03          	ld	s4,96(sp)
    80004c04:	05813a83          	ld	s5,88(sp)
    80004c08:	05013b03          	ld	s6,80(sp)
    80004c0c:	04813b83          	ld	s7,72(sp)
    80004c10:	04013c03          	ld	s8,64(sp)
    80004c14:	03813c83          	ld	s9,56(sp)
    80004c18:	03013d03          	ld	s10,48(sp)
    80004c1c:	02813d83          	ld	s11,40(sp)
    80004c20:	0d010113          	addi	sp,sp,208
    80004c24:	00008067          	ret
    80004c28:	07300713          	li	a4,115
    80004c2c:	1ce78a63          	beq	a5,a4,80004e00 <__printf+0x4b8>
    80004c30:	07800713          	li	a4,120
    80004c34:	1ee79e63          	bne	a5,a4,80004e30 <__printf+0x4e8>
    80004c38:	f7843783          	ld	a5,-136(s0)
    80004c3c:	0007a703          	lw	a4,0(a5)
    80004c40:	00878793          	addi	a5,a5,8
    80004c44:	f6f43c23          	sd	a5,-136(s0)
    80004c48:	28074263          	bltz	a4,80004ecc <__printf+0x584>
    80004c4c:	00003d97          	auipc	s11,0x3
    80004c50:	9fcd8d93          	addi	s11,s11,-1540 # 80007648 <digits>
    80004c54:	00f77793          	andi	a5,a4,15
    80004c58:	00fd87b3          	add	a5,s11,a5
    80004c5c:	0007c683          	lbu	a3,0(a5)
    80004c60:	00f00613          	li	a2,15
    80004c64:	0007079b          	sext.w	a5,a4
    80004c68:	f8d40023          	sb	a3,-128(s0)
    80004c6c:	0047559b          	srliw	a1,a4,0x4
    80004c70:	0047569b          	srliw	a3,a4,0x4
    80004c74:	00000c93          	li	s9,0
    80004c78:	0ee65063          	bge	a2,a4,80004d58 <__printf+0x410>
    80004c7c:	00f6f693          	andi	a3,a3,15
    80004c80:	00dd86b3          	add	a3,s11,a3
    80004c84:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004c88:	0087d79b          	srliw	a5,a5,0x8
    80004c8c:	00100c93          	li	s9,1
    80004c90:	f8d400a3          	sb	a3,-127(s0)
    80004c94:	0cb67263          	bgeu	a2,a1,80004d58 <__printf+0x410>
    80004c98:	00f7f693          	andi	a3,a5,15
    80004c9c:	00dd86b3          	add	a3,s11,a3
    80004ca0:	0006c583          	lbu	a1,0(a3)
    80004ca4:	00f00613          	li	a2,15
    80004ca8:	0047d69b          	srliw	a3,a5,0x4
    80004cac:	f8b40123          	sb	a1,-126(s0)
    80004cb0:	0047d593          	srli	a1,a5,0x4
    80004cb4:	28f67e63          	bgeu	a2,a5,80004f50 <__printf+0x608>
    80004cb8:	00f6f693          	andi	a3,a3,15
    80004cbc:	00dd86b3          	add	a3,s11,a3
    80004cc0:	0006c503          	lbu	a0,0(a3)
    80004cc4:	0087d813          	srli	a6,a5,0x8
    80004cc8:	0087d69b          	srliw	a3,a5,0x8
    80004ccc:	f8a401a3          	sb	a0,-125(s0)
    80004cd0:	28b67663          	bgeu	a2,a1,80004f5c <__printf+0x614>
    80004cd4:	00f6f693          	andi	a3,a3,15
    80004cd8:	00dd86b3          	add	a3,s11,a3
    80004cdc:	0006c583          	lbu	a1,0(a3)
    80004ce0:	00c7d513          	srli	a0,a5,0xc
    80004ce4:	00c7d69b          	srliw	a3,a5,0xc
    80004ce8:	f8b40223          	sb	a1,-124(s0)
    80004cec:	29067a63          	bgeu	a2,a6,80004f80 <__printf+0x638>
    80004cf0:	00f6f693          	andi	a3,a3,15
    80004cf4:	00dd86b3          	add	a3,s11,a3
    80004cf8:	0006c583          	lbu	a1,0(a3)
    80004cfc:	0107d813          	srli	a6,a5,0x10
    80004d00:	0107d69b          	srliw	a3,a5,0x10
    80004d04:	f8b402a3          	sb	a1,-123(s0)
    80004d08:	28a67263          	bgeu	a2,a0,80004f8c <__printf+0x644>
    80004d0c:	00f6f693          	andi	a3,a3,15
    80004d10:	00dd86b3          	add	a3,s11,a3
    80004d14:	0006c683          	lbu	a3,0(a3)
    80004d18:	0147d79b          	srliw	a5,a5,0x14
    80004d1c:	f8d40323          	sb	a3,-122(s0)
    80004d20:	21067663          	bgeu	a2,a6,80004f2c <__printf+0x5e4>
    80004d24:	02079793          	slli	a5,a5,0x20
    80004d28:	0207d793          	srli	a5,a5,0x20
    80004d2c:	00fd8db3          	add	s11,s11,a5
    80004d30:	000dc683          	lbu	a3,0(s11)
    80004d34:	00800793          	li	a5,8
    80004d38:	00700c93          	li	s9,7
    80004d3c:	f8d403a3          	sb	a3,-121(s0)
    80004d40:	00075c63          	bgez	a4,80004d58 <__printf+0x410>
    80004d44:	f9040713          	addi	a4,s0,-112
    80004d48:	00f70733          	add	a4,a4,a5
    80004d4c:	02d00693          	li	a3,45
    80004d50:	fed70823          	sb	a3,-16(a4)
    80004d54:	00078c93          	mv	s9,a5
    80004d58:	f8040793          	addi	a5,s0,-128
    80004d5c:	01978cb3          	add	s9,a5,s9
    80004d60:	f7f40d13          	addi	s10,s0,-129
    80004d64:	000cc503          	lbu	a0,0(s9)
    80004d68:	fffc8c93          	addi	s9,s9,-1
    80004d6c:	00000097          	auipc	ra,0x0
    80004d70:	9f8080e7          	jalr	-1544(ra) # 80004764 <consputc>
    80004d74:	ff9d18e3          	bne	s10,s9,80004d64 <__printf+0x41c>
    80004d78:	0100006f          	j	80004d88 <__printf+0x440>
    80004d7c:	00000097          	auipc	ra,0x0
    80004d80:	9e8080e7          	jalr	-1560(ra) # 80004764 <consputc>
    80004d84:	000c8493          	mv	s1,s9
    80004d88:	00094503          	lbu	a0,0(s2)
    80004d8c:	c60510e3          	bnez	a0,800049ec <__printf+0xa4>
    80004d90:	e40c0ee3          	beqz	s8,80004bec <__printf+0x2a4>
    80004d94:	00004517          	auipc	a0,0x4
    80004d98:	6dc50513          	addi	a0,a0,1756 # 80009470 <pr>
    80004d9c:	00001097          	auipc	ra,0x1
    80004da0:	94c080e7          	jalr	-1716(ra) # 800056e8 <release>
    80004da4:	e49ff06f          	j	80004bec <__printf+0x2a4>
    80004da8:	f7843783          	ld	a5,-136(s0)
    80004dac:	03000513          	li	a0,48
    80004db0:	01000d13          	li	s10,16
    80004db4:	00878713          	addi	a4,a5,8
    80004db8:	0007bc83          	ld	s9,0(a5)
    80004dbc:	f6e43c23          	sd	a4,-136(s0)
    80004dc0:	00000097          	auipc	ra,0x0
    80004dc4:	9a4080e7          	jalr	-1628(ra) # 80004764 <consputc>
    80004dc8:	07800513          	li	a0,120
    80004dcc:	00000097          	auipc	ra,0x0
    80004dd0:	998080e7          	jalr	-1640(ra) # 80004764 <consputc>
    80004dd4:	00003d97          	auipc	s11,0x3
    80004dd8:	874d8d93          	addi	s11,s11,-1932 # 80007648 <digits>
    80004ddc:	03ccd793          	srli	a5,s9,0x3c
    80004de0:	00fd87b3          	add	a5,s11,a5
    80004de4:	0007c503          	lbu	a0,0(a5)
    80004de8:	fffd0d1b          	addiw	s10,s10,-1
    80004dec:	004c9c93          	slli	s9,s9,0x4
    80004df0:	00000097          	auipc	ra,0x0
    80004df4:	974080e7          	jalr	-1676(ra) # 80004764 <consputc>
    80004df8:	fe0d12e3          	bnez	s10,80004ddc <__printf+0x494>
    80004dfc:	f8dff06f          	j	80004d88 <__printf+0x440>
    80004e00:	f7843783          	ld	a5,-136(s0)
    80004e04:	0007bc83          	ld	s9,0(a5)
    80004e08:	00878793          	addi	a5,a5,8
    80004e0c:	f6f43c23          	sd	a5,-136(s0)
    80004e10:	000c9a63          	bnez	s9,80004e24 <__printf+0x4dc>
    80004e14:	1080006f          	j	80004f1c <__printf+0x5d4>
    80004e18:	001c8c93          	addi	s9,s9,1
    80004e1c:	00000097          	auipc	ra,0x0
    80004e20:	948080e7          	jalr	-1720(ra) # 80004764 <consputc>
    80004e24:	000cc503          	lbu	a0,0(s9)
    80004e28:	fe0518e3          	bnez	a0,80004e18 <__printf+0x4d0>
    80004e2c:	f5dff06f          	j	80004d88 <__printf+0x440>
    80004e30:	02500513          	li	a0,37
    80004e34:	00000097          	auipc	ra,0x0
    80004e38:	930080e7          	jalr	-1744(ra) # 80004764 <consputc>
    80004e3c:	000c8513          	mv	a0,s9
    80004e40:	00000097          	auipc	ra,0x0
    80004e44:	924080e7          	jalr	-1756(ra) # 80004764 <consputc>
    80004e48:	f41ff06f          	j	80004d88 <__printf+0x440>
    80004e4c:	02500513          	li	a0,37
    80004e50:	00000097          	auipc	ra,0x0
    80004e54:	914080e7          	jalr	-1772(ra) # 80004764 <consputc>
    80004e58:	f31ff06f          	j	80004d88 <__printf+0x440>
    80004e5c:	00030513          	mv	a0,t1
    80004e60:	00000097          	auipc	ra,0x0
    80004e64:	7bc080e7          	jalr	1980(ra) # 8000561c <acquire>
    80004e68:	b4dff06f          	j	800049b4 <__printf+0x6c>
    80004e6c:	40c0053b          	negw	a0,a2
    80004e70:	00a00713          	li	a4,10
    80004e74:	02e576bb          	remuw	a3,a0,a4
    80004e78:	00002d97          	auipc	s11,0x2
    80004e7c:	7d0d8d93          	addi	s11,s11,2000 # 80007648 <digits>
    80004e80:	ff700593          	li	a1,-9
    80004e84:	02069693          	slli	a3,a3,0x20
    80004e88:	0206d693          	srli	a3,a3,0x20
    80004e8c:	00dd86b3          	add	a3,s11,a3
    80004e90:	0006c683          	lbu	a3,0(a3)
    80004e94:	02e557bb          	divuw	a5,a0,a4
    80004e98:	f8d40023          	sb	a3,-128(s0)
    80004e9c:	10b65e63          	bge	a2,a1,80004fb8 <__printf+0x670>
    80004ea0:	06300593          	li	a1,99
    80004ea4:	02e7f6bb          	remuw	a3,a5,a4
    80004ea8:	02069693          	slli	a3,a3,0x20
    80004eac:	0206d693          	srli	a3,a3,0x20
    80004eb0:	00dd86b3          	add	a3,s11,a3
    80004eb4:	0006c683          	lbu	a3,0(a3)
    80004eb8:	02e7d73b          	divuw	a4,a5,a4
    80004ebc:	00200793          	li	a5,2
    80004ec0:	f8d400a3          	sb	a3,-127(s0)
    80004ec4:	bca5ece3          	bltu	a1,a0,80004a9c <__printf+0x154>
    80004ec8:	ce5ff06f          	j	80004bac <__printf+0x264>
    80004ecc:	40e007bb          	negw	a5,a4
    80004ed0:	00002d97          	auipc	s11,0x2
    80004ed4:	778d8d93          	addi	s11,s11,1912 # 80007648 <digits>
    80004ed8:	00f7f693          	andi	a3,a5,15
    80004edc:	00dd86b3          	add	a3,s11,a3
    80004ee0:	0006c583          	lbu	a1,0(a3)
    80004ee4:	ff100613          	li	a2,-15
    80004ee8:	0047d69b          	srliw	a3,a5,0x4
    80004eec:	f8b40023          	sb	a1,-128(s0)
    80004ef0:	0047d59b          	srliw	a1,a5,0x4
    80004ef4:	0ac75e63          	bge	a4,a2,80004fb0 <__printf+0x668>
    80004ef8:	00f6f693          	andi	a3,a3,15
    80004efc:	00dd86b3          	add	a3,s11,a3
    80004f00:	0006c603          	lbu	a2,0(a3)
    80004f04:	00f00693          	li	a3,15
    80004f08:	0087d79b          	srliw	a5,a5,0x8
    80004f0c:	f8c400a3          	sb	a2,-127(s0)
    80004f10:	d8b6e4e3          	bltu	a3,a1,80004c98 <__printf+0x350>
    80004f14:	00200793          	li	a5,2
    80004f18:	e2dff06f          	j	80004d44 <__printf+0x3fc>
    80004f1c:	00002c97          	auipc	s9,0x2
    80004f20:	70cc8c93          	addi	s9,s9,1804 # 80007628 <_ZZ12printIntegermE6digits+0x148>
    80004f24:	02800513          	li	a0,40
    80004f28:	ef1ff06f          	j	80004e18 <__printf+0x4d0>
    80004f2c:	00700793          	li	a5,7
    80004f30:	00600c93          	li	s9,6
    80004f34:	e0dff06f          	j	80004d40 <__printf+0x3f8>
    80004f38:	00700793          	li	a5,7
    80004f3c:	00600c93          	li	s9,6
    80004f40:	c69ff06f          	j	80004ba8 <__printf+0x260>
    80004f44:	00300793          	li	a5,3
    80004f48:	00200c93          	li	s9,2
    80004f4c:	c5dff06f          	j	80004ba8 <__printf+0x260>
    80004f50:	00300793          	li	a5,3
    80004f54:	00200c93          	li	s9,2
    80004f58:	de9ff06f          	j	80004d40 <__printf+0x3f8>
    80004f5c:	00400793          	li	a5,4
    80004f60:	00300c93          	li	s9,3
    80004f64:	dddff06f          	j	80004d40 <__printf+0x3f8>
    80004f68:	00400793          	li	a5,4
    80004f6c:	00300c93          	li	s9,3
    80004f70:	c39ff06f          	j	80004ba8 <__printf+0x260>
    80004f74:	00500793          	li	a5,5
    80004f78:	00400c93          	li	s9,4
    80004f7c:	c2dff06f          	j	80004ba8 <__printf+0x260>
    80004f80:	00500793          	li	a5,5
    80004f84:	00400c93          	li	s9,4
    80004f88:	db9ff06f          	j	80004d40 <__printf+0x3f8>
    80004f8c:	00600793          	li	a5,6
    80004f90:	00500c93          	li	s9,5
    80004f94:	dadff06f          	j	80004d40 <__printf+0x3f8>
    80004f98:	00600793          	li	a5,6
    80004f9c:	00500c93          	li	s9,5
    80004fa0:	c09ff06f          	j	80004ba8 <__printf+0x260>
    80004fa4:	00800793          	li	a5,8
    80004fa8:	00700c93          	li	s9,7
    80004fac:	bfdff06f          	j	80004ba8 <__printf+0x260>
    80004fb0:	00100793          	li	a5,1
    80004fb4:	d91ff06f          	j	80004d44 <__printf+0x3fc>
    80004fb8:	00100793          	li	a5,1
    80004fbc:	bf1ff06f          	j	80004bac <__printf+0x264>
    80004fc0:	00900793          	li	a5,9
    80004fc4:	00800c93          	li	s9,8
    80004fc8:	be1ff06f          	j	80004ba8 <__printf+0x260>
    80004fcc:	00002517          	auipc	a0,0x2
    80004fd0:	66450513          	addi	a0,a0,1636 # 80007630 <_ZZ12printIntegermE6digits+0x150>
    80004fd4:	00000097          	auipc	ra,0x0
    80004fd8:	918080e7          	jalr	-1768(ra) # 800048ec <panic>

0000000080004fdc <printfinit>:
    80004fdc:	fe010113          	addi	sp,sp,-32
    80004fe0:	00813823          	sd	s0,16(sp)
    80004fe4:	00913423          	sd	s1,8(sp)
    80004fe8:	00113c23          	sd	ra,24(sp)
    80004fec:	02010413          	addi	s0,sp,32
    80004ff0:	00004497          	auipc	s1,0x4
    80004ff4:	48048493          	addi	s1,s1,1152 # 80009470 <pr>
    80004ff8:	00048513          	mv	a0,s1
    80004ffc:	00002597          	auipc	a1,0x2
    80005000:	64458593          	addi	a1,a1,1604 # 80007640 <_ZZ12printIntegermE6digits+0x160>
    80005004:	00000097          	auipc	ra,0x0
    80005008:	5f4080e7          	jalr	1524(ra) # 800055f8 <initlock>
    8000500c:	01813083          	ld	ra,24(sp)
    80005010:	01013403          	ld	s0,16(sp)
    80005014:	0004ac23          	sw	zero,24(s1)
    80005018:	00813483          	ld	s1,8(sp)
    8000501c:	02010113          	addi	sp,sp,32
    80005020:	00008067          	ret

0000000080005024 <uartinit>:
    80005024:	ff010113          	addi	sp,sp,-16
    80005028:	00813423          	sd	s0,8(sp)
    8000502c:	01010413          	addi	s0,sp,16
    80005030:	100007b7          	lui	a5,0x10000
    80005034:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80005038:	f8000713          	li	a4,-128
    8000503c:	00e781a3          	sb	a4,3(a5)
    80005040:	00300713          	li	a4,3
    80005044:	00e78023          	sb	a4,0(a5)
    80005048:	000780a3          	sb	zero,1(a5)
    8000504c:	00e781a3          	sb	a4,3(a5)
    80005050:	00700693          	li	a3,7
    80005054:	00d78123          	sb	a3,2(a5)
    80005058:	00e780a3          	sb	a4,1(a5)
    8000505c:	00813403          	ld	s0,8(sp)
    80005060:	01010113          	addi	sp,sp,16
    80005064:	00008067          	ret

0000000080005068 <uartputc>:
    80005068:	00003797          	auipc	a5,0x3
    8000506c:	1807a783          	lw	a5,384(a5) # 800081e8 <panicked>
    80005070:	00078463          	beqz	a5,80005078 <uartputc+0x10>
    80005074:	0000006f          	j	80005074 <uartputc+0xc>
    80005078:	fd010113          	addi	sp,sp,-48
    8000507c:	02813023          	sd	s0,32(sp)
    80005080:	00913c23          	sd	s1,24(sp)
    80005084:	01213823          	sd	s2,16(sp)
    80005088:	01313423          	sd	s3,8(sp)
    8000508c:	02113423          	sd	ra,40(sp)
    80005090:	03010413          	addi	s0,sp,48
    80005094:	00003917          	auipc	s2,0x3
    80005098:	15c90913          	addi	s2,s2,348 # 800081f0 <uart_tx_r>
    8000509c:	00093783          	ld	a5,0(s2)
    800050a0:	00003497          	auipc	s1,0x3
    800050a4:	15848493          	addi	s1,s1,344 # 800081f8 <uart_tx_w>
    800050a8:	0004b703          	ld	a4,0(s1)
    800050ac:	02078693          	addi	a3,a5,32
    800050b0:	00050993          	mv	s3,a0
    800050b4:	02e69c63          	bne	a3,a4,800050ec <uartputc+0x84>
    800050b8:	00001097          	auipc	ra,0x1
    800050bc:	834080e7          	jalr	-1996(ra) # 800058ec <push_on>
    800050c0:	00093783          	ld	a5,0(s2)
    800050c4:	0004b703          	ld	a4,0(s1)
    800050c8:	02078793          	addi	a5,a5,32
    800050cc:	00e79463          	bne	a5,a4,800050d4 <uartputc+0x6c>
    800050d0:	0000006f          	j	800050d0 <uartputc+0x68>
    800050d4:	00001097          	auipc	ra,0x1
    800050d8:	88c080e7          	jalr	-1908(ra) # 80005960 <pop_on>
    800050dc:	00093783          	ld	a5,0(s2)
    800050e0:	0004b703          	ld	a4,0(s1)
    800050e4:	02078693          	addi	a3,a5,32
    800050e8:	fce688e3          	beq	a3,a4,800050b8 <uartputc+0x50>
    800050ec:	01f77693          	andi	a3,a4,31
    800050f0:	00004597          	auipc	a1,0x4
    800050f4:	3a058593          	addi	a1,a1,928 # 80009490 <uart_tx_buf>
    800050f8:	00d586b3          	add	a3,a1,a3
    800050fc:	00170713          	addi	a4,a4,1
    80005100:	01368023          	sb	s3,0(a3)
    80005104:	00e4b023          	sd	a4,0(s1)
    80005108:	10000637          	lui	a2,0x10000
    8000510c:	02f71063          	bne	a4,a5,8000512c <uartputc+0xc4>
    80005110:	0340006f          	j	80005144 <uartputc+0xdc>
    80005114:	00074703          	lbu	a4,0(a4)
    80005118:	00f93023          	sd	a5,0(s2)
    8000511c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80005120:	00093783          	ld	a5,0(s2)
    80005124:	0004b703          	ld	a4,0(s1)
    80005128:	00f70e63          	beq	a4,a5,80005144 <uartputc+0xdc>
    8000512c:	00564683          	lbu	a3,5(a2)
    80005130:	01f7f713          	andi	a4,a5,31
    80005134:	00e58733          	add	a4,a1,a4
    80005138:	0206f693          	andi	a3,a3,32
    8000513c:	00178793          	addi	a5,a5,1
    80005140:	fc069ae3          	bnez	a3,80005114 <uartputc+0xac>
    80005144:	02813083          	ld	ra,40(sp)
    80005148:	02013403          	ld	s0,32(sp)
    8000514c:	01813483          	ld	s1,24(sp)
    80005150:	01013903          	ld	s2,16(sp)
    80005154:	00813983          	ld	s3,8(sp)
    80005158:	03010113          	addi	sp,sp,48
    8000515c:	00008067          	ret

0000000080005160 <uartputc_sync>:
    80005160:	ff010113          	addi	sp,sp,-16
    80005164:	00813423          	sd	s0,8(sp)
    80005168:	01010413          	addi	s0,sp,16
    8000516c:	00003717          	auipc	a4,0x3
    80005170:	07c72703          	lw	a4,124(a4) # 800081e8 <panicked>
    80005174:	02071663          	bnez	a4,800051a0 <uartputc_sync+0x40>
    80005178:	00050793          	mv	a5,a0
    8000517c:	100006b7          	lui	a3,0x10000
    80005180:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80005184:	02077713          	andi	a4,a4,32
    80005188:	fe070ce3          	beqz	a4,80005180 <uartputc_sync+0x20>
    8000518c:	0ff7f793          	andi	a5,a5,255
    80005190:	00f68023          	sb	a5,0(a3)
    80005194:	00813403          	ld	s0,8(sp)
    80005198:	01010113          	addi	sp,sp,16
    8000519c:	00008067          	ret
    800051a0:	0000006f          	j	800051a0 <uartputc_sync+0x40>

00000000800051a4 <uartstart>:
    800051a4:	ff010113          	addi	sp,sp,-16
    800051a8:	00813423          	sd	s0,8(sp)
    800051ac:	01010413          	addi	s0,sp,16
    800051b0:	00003617          	auipc	a2,0x3
    800051b4:	04060613          	addi	a2,a2,64 # 800081f0 <uart_tx_r>
    800051b8:	00003517          	auipc	a0,0x3
    800051bc:	04050513          	addi	a0,a0,64 # 800081f8 <uart_tx_w>
    800051c0:	00063783          	ld	a5,0(a2)
    800051c4:	00053703          	ld	a4,0(a0)
    800051c8:	04f70263          	beq	a4,a5,8000520c <uartstart+0x68>
    800051cc:	100005b7          	lui	a1,0x10000
    800051d0:	00004817          	auipc	a6,0x4
    800051d4:	2c080813          	addi	a6,a6,704 # 80009490 <uart_tx_buf>
    800051d8:	01c0006f          	j	800051f4 <uartstart+0x50>
    800051dc:	0006c703          	lbu	a4,0(a3)
    800051e0:	00f63023          	sd	a5,0(a2)
    800051e4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800051e8:	00063783          	ld	a5,0(a2)
    800051ec:	00053703          	ld	a4,0(a0)
    800051f0:	00f70e63          	beq	a4,a5,8000520c <uartstart+0x68>
    800051f4:	01f7f713          	andi	a4,a5,31
    800051f8:	00e806b3          	add	a3,a6,a4
    800051fc:	0055c703          	lbu	a4,5(a1)
    80005200:	00178793          	addi	a5,a5,1
    80005204:	02077713          	andi	a4,a4,32
    80005208:	fc071ae3          	bnez	a4,800051dc <uartstart+0x38>
    8000520c:	00813403          	ld	s0,8(sp)
    80005210:	01010113          	addi	sp,sp,16
    80005214:	00008067          	ret

0000000080005218 <uartgetc>:
    80005218:	ff010113          	addi	sp,sp,-16
    8000521c:	00813423          	sd	s0,8(sp)
    80005220:	01010413          	addi	s0,sp,16
    80005224:	10000737          	lui	a4,0x10000
    80005228:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000522c:	0017f793          	andi	a5,a5,1
    80005230:	00078c63          	beqz	a5,80005248 <uartgetc+0x30>
    80005234:	00074503          	lbu	a0,0(a4)
    80005238:	0ff57513          	andi	a0,a0,255
    8000523c:	00813403          	ld	s0,8(sp)
    80005240:	01010113          	addi	sp,sp,16
    80005244:	00008067          	ret
    80005248:	fff00513          	li	a0,-1
    8000524c:	ff1ff06f          	j	8000523c <uartgetc+0x24>

0000000080005250 <uartintr>:
    80005250:	100007b7          	lui	a5,0x10000
    80005254:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80005258:	0017f793          	andi	a5,a5,1
    8000525c:	0a078463          	beqz	a5,80005304 <uartintr+0xb4>
    80005260:	fe010113          	addi	sp,sp,-32
    80005264:	00813823          	sd	s0,16(sp)
    80005268:	00913423          	sd	s1,8(sp)
    8000526c:	00113c23          	sd	ra,24(sp)
    80005270:	02010413          	addi	s0,sp,32
    80005274:	100004b7          	lui	s1,0x10000
    80005278:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000527c:	0ff57513          	andi	a0,a0,255
    80005280:	fffff097          	auipc	ra,0xfffff
    80005284:	534080e7          	jalr	1332(ra) # 800047b4 <consoleintr>
    80005288:	0054c783          	lbu	a5,5(s1)
    8000528c:	0017f793          	andi	a5,a5,1
    80005290:	fe0794e3          	bnez	a5,80005278 <uartintr+0x28>
    80005294:	00003617          	auipc	a2,0x3
    80005298:	f5c60613          	addi	a2,a2,-164 # 800081f0 <uart_tx_r>
    8000529c:	00003517          	auipc	a0,0x3
    800052a0:	f5c50513          	addi	a0,a0,-164 # 800081f8 <uart_tx_w>
    800052a4:	00063783          	ld	a5,0(a2)
    800052a8:	00053703          	ld	a4,0(a0)
    800052ac:	04f70263          	beq	a4,a5,800052f0 <uartintr+0xa0>
    800052b0:	100005b7          	lui	a1,0x10000
    800052b4:	00004817          	auipc	a6,0x4
    800052b8:	1dc80813          	addi	a6,a6,476 # 80009490 <uart_tx_buf>
    800052bc:	01c0006f          	j	800052d8 <uartintr+0x88>
    800052c0:	0006c703          	lbu	a4,0(a3)
    800052c4:	00f63023          	sd	a5,0(a2)
    800052c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800052cc:	00063783          	ld	a5,0(a2)
    800052d0:	00053703          	ld	a4,0(a0)
    800052d4:	00f70e63          	beq	a4,a5,800052f0 <uartintr+0xa0>
    800052d8:	01f7f713          	andi	a4,a5,31
    800052dc:	00e806b3          	add	a3,a6,a4
    800052e0:	0055c703          	lbu	a4,5(a1)
    800052e4:	00178793          	addi	a5,a5,1
    800052e8:	02077713          	andi	a4,a4,32
    800052ec:	fc071ae3          	bnez	a4,800052c0 <uartintr+0x70>
    800052f0:	01813083          	ld	ra,24(sp)
    800052f4:	01013403          	ld	s0,16(sp)
    800052f8:	00813483          	ld	s1,8(sp)
    800052fc:	02010113          	addi	sp,sp,32
    80005300:	00008067          	ret
    80005304:	00003617          	auipc	a2,0x3
    80005308:	eec60613          	addi	a2,a2,-276 # 800081f0 <uart_tx_r>
    8000530c:	00003517          	auipc	a0,0x3
    80005310:	eec50513          	addi	a0,a0,-276 # 800081f8 <uart_tx_w>
    80005314:	00063783          	ld	a5,0(a2)
    80005318:	00053703          	ld	a4,0(a0)
    8000531c:	04f70263          	beq	a4,a5,80005360 <uartintr+0x110>
    80005320:	100005b7          	lui	a1,0x10000
    80005324:	00004817          	auipc	a6,0x4
    80005328:	16c80813          	addi	a6,a6,364 # 80009490 <uart_tx_buf>
    8000532c:	01c0006f          	j	80005348 <uartintr+0xf8>
    80005330:	0006c703          	lbu	a4,0(a3)
    80005334:	00f63023          	sd	a5,0(a2)
    80005338:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000533c:	00063783          	ld	a5,0(a2)
    80005340:	00053703          	ld	a4,0(a0)
    80005344:	02f70063          	beq	a4,a5,80005364 <uartintr+0x114>
    80005348:	01f7f713          	andi	a4,a5,31
    8000534c:	00e806b3          	add	a3,a6,a4
    80005350:	0055c703          	lbu	a4,5(a1)
    80005354:	00178793          	addi	a5,a5,1
    80005358:	02077713          	andi	a4,a4,32
    8000535c:	fc071ae3          	bnez	a4,80005330 <uartintr+0xe0>
    80005360:	00008067          	ret
    80005364:	00008067          	ret

0000000080005368 <kinit>:
    80005368:	fc010113          	addi	sp,sp,-64
    8000536c:	02913423          	sd	s1,40(sp)
    80005370:	fffff7b7          	lui	a5,0xfffff
    80005374:	00005497          	auipc	s1,0x5
    80005378:	14b48493          	addi	s1,s1,331 # 8000a4bf <end+0xfff>
    8000537c:	02813823          	sd	s0,48(sp)
    80005380:	01313c23          	sd	s3,24(sp)
    80005384:	00f4f4b3          	and	s1,s1,a5
    80005388:	02113c23          	sd	ra,56(sp)
    8000538c:	03213023          	sd	s2,32(sp)
    80005390:	01413823          	sd	s4,16(sp)
    80005394:	01513423          	sd	s5,8(sp)
    80005398:	04010413          	addi	s0,sp,64
    8000539c:	000017b7          	lui	a5,0x1
    800053a0:	01100993          	li	s3,17
    800053a4:	00f487b3          	add	a5,s1,a5
    800053a8:	01b99993          	slli	s3,s3,0x1b
    800053ac:	06f9e063          	bltu	s3,a5,8000540c <kinit+0xa4>
    800053b0:	00004a97          	auipc	s5,0x4
    800053b4:	110a8a93          	addi	s5,s5,272 # 800094c0 <end>
    800053b8:	0754ec63          	bltu	s1,s5,80005430 <kinit+0xc8>
    800053bc:	0734fa63          	bgeu	s1,s3,80005430 <kinit+0xc8>
    800053c0:	00088a37          	lui	s4,0x88
    800053c4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800053c8:	00003917          	auipc	s2,0x3
    800053cc:	e3890913          	addi	s2,s2,-456 # 80008200 <kmem>
    800053d0:	00ca1a13          	slli	s4,s4,0xc
    800053d4:	0140006f          	j	800053e8 <kinit+0x80>
    800053d8:	000017b7          	lui	a5,0x1
    800053dc:	00f484b3          	add	s1,s1,a5
    800053e0:	0554e863          	bltu	s1,s5,80005430 <kinit+0xc8>
    800053e4:	0534f663          	bgeu	s1,s3,80005430 <kinit+0xc8>
    800053e8:	00001637          	lui	a2,0x1
    800053ec:	00100593          	li	a1,1
    800053f0:	00048513          	mv	a0,s1
    800053f4:	00000097          	auipc	ra,0x0
    800053f8:	5e4080e7          	jalr	1508(ra) # 800059d8 <__memset>
    800053fc:	00093783          	ld	a5,0(s2)
    80005400:	00f4b023          	sd	a5,0(s1)
    80005404:	00993023          	sd	s1,0(s2)
    80005408:	fd4498e3          	bne	s1,s4,800053d8 <kinit+0x70>
    8000540c:	03813083          	ld	ra,56(sp)
    80005410:	03013403          	ld	s0,48(sp)
    80005414:	02813483          	ld	s1,40(sp)
    80005418:	02013903          	ld	s2,32(sp)
    8000541c:	01813983          	ld	s3,24(sp)
    80005420:	01013a03          	ld	s4,16(sp)
    80005424:	00813a83          	ld	s5,8(sp)
    80005428:	04010113          	addi	sp,sp,64
    8000542c:	00008067          	ret
    80005430:	00002517          	auipc	a0,0x2
    80005434:	23050513          	addi	a0,a0,560 # 80007660 <digits+0x18>
    80005438:	fffff097          	auipc	ra,0xfffff
    8000543c:	4b4080e7          	jalr	1204(ra) # 800048ec <panic>

0000000080005440 <freerange>:
    80005440:	fc010113          	addi	sp,sp,-64
    80005444:	000017b7          	lui	a5,0x1
    80005448:	02913423          	sd	s1,40(sp)
    8000544c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80005450:	009504b3          	add	s1,a0,s1
    80005454:	fffff537          	lui	a0,0xfffff
    80005458:	02813823          	sd	s0,48(sp)
    8000545c:	02113c23          	sd	ra,56(sp)
    80005460:	03213023          	sd	s2,32(sp)
    80005464:	01313c23          	sd	s3,24(sp)
    80005468:	01413823          	sd	s4,16(sp)
    8000546c:	01513423          	sd	s5,8(sp)
    80005470:	01613023          	sd	s6,0(sp)
    80005474:	04010413          	addi	s0,sp,64
    80005478:	00a4f4b3          	and	s1,s1,a0
    8000547c:	00f487b3          	add	a5,s1,a5
    80005480:	06f5e463          	bltu	a1,a5,800054e8 <freerange+0xa8>
    80005484:	00004a97          	auipc	s5,0x4
    80005488:	03ca8a93          	addi	s5,s5,60 # 800094c0 <end>
    8000548c:	0954e263          	bltu	s1,s5,80005510 <freerange+0xd0>
    80005490:	01100993          	li	s3,17
    80005494:	01b99993          	slli	s3,s3,0x1b
    80005498:	0734fc63          	bgeu	s1,s3,80005510 <freerange+0xd0>
    8000549c:	00058a13          	mv	s4,a1
    800054a0:	00003917          	auipc	s2,0x3
    800054a4:	d6090913          	addi	s2,s2,-672 # 80008200 <kmem>
    800054a8:	00002b37          	lui	s6,0x2
    800054ac:	0140006f          	j	800054c0 <freerange+0x80>
    800054b0:	000017b7          	lui	a5,0x1
    800054b4:	00f484b3          	add	s1,s1,a5
    800054b8:	0554ec63          	bltu	s1,s5,80005510 <freerange+0xd0>
    800054bc:	0534fa63          	bgeu	s1,s3,80005510 <freerange+0xd0>
    800054c0:	00001637          	lui	a2,0x1
    800054c4:	00100593          	li	a1,1
    800054c8:	00048513          	mv	a0,s1
    800054cc:	00000097          	auipc	ra,0x0
    800054d0:	50c080e7          	jalr	1292(ra) # 800059d8 <__memset>
    800054d4:	00093703          	ld	a4,0(s2)
    800054d8:	016487b3          	add	a5,s1,s6
    800054dc:	00e4b023          	sd	a4,0(s1)
    800054e0:	00993023          	sd	s1,0(s2)
    800054e4:	fcfa76e3          	bgeu	s4,a5,800054b0 <freerange+0x70>
    800054e8:	03813083          	ld	ra,56(sp)
    800054ec:	03013403          	ld	s0,48(sp)
    800054f0:	02813483          	ld	s1,40(sp)
    800054f4:	02013903          	ld	s2,32(sp)
    800054f8:	01813983          	ld	s3,24(sp)
    800054fc:	01013a03          	ld	s4,16(sp)
    80005500:	00813a83          	ld	s5,8(sp)
    80005504:	00013b03          	ld	s6,0(sp)
    80005508:	04010113          	addi	sp,sp,64
    8000550c:	00008067          	ret
    80005510:	00002517          	auipc	a0,0x2
    80005514:	15050513          	addi	a0,a0,336 # 80007660 <digits+0x18>
    80005518:	fffff097          	auipc	ra,0xfffff
    8000551c:	3d4080e7          	jalr	980(ra) # 800048ec <panic>

0000000080005520 <kfree>:
    80005520:	fe010113          	addi	sp,sp,-32
    80005524:	00813823          	sd	s0,16(sp)
    80005528:	00113c23          	sd	ra,24(sp)
    8000552c:	00913423          	sd	s1,8(sp)
    80005530:	02010413          	addi	s0,sp,32
    80005534:	03451793          	slli	a5,a0,0x34
    80005538:	04079c63          	bnez	a5,80005590 <kfree+0x70>
    8000553c:	00004797          	auipc	a5,0x4
    80005540:	f8478793          	addi	a5,a5,-124 # 800094c0 <end>
    80005544:	00050493          	mv	s1,a0
    80005548:	04f56463          	bltu	a0,a5,80005590 <kfree+0x70>
    8000554c:	01100793          	li	a5,17
    80005550:	01b79793          	slli	a5,a5,0x1b
    80005554:	02f57e63          	bgeu	a0,a5,80005590 <kfree+0x70>
    80005558:	00001637          	lui	a2,0x1
    8000555c:	00100593          	li	a1,1
    80005560:	00000097          	auipc	ra,0x0
    80005564:	478080e7          	jalr	1144(ra) # 800059d8 <__memset>
    80005568:	00003797          	auipc	a5,0x3
    8000556c:	c9878793          	addi	a5,a5,-872 # 80008200 <kmem>
    80005570:	0007b703          	ld	a4,0(a5)
    80005574:	01813083          	ld	ra,24(sp)
    80005578:	01013403          	ld	s0,16(sp)
    8000557c:	00e4b023          	sd	a4,0(s1)
    80005580:	0097b023          	sd	s1,0(a5)
    80005584:	00813483          	ld	s1,8(sp)
    80005588:	02010113          	addi	sp,sp,32
    8000558c:	00008067          	ret
    80005590:	00002517          	auipc	a0,0x2
    80005594:	0d050513          	addi	a0,a0,208 # 80007660 <digits+0x18>
    80005598:	fffff097          	auipc	ra,0xfffff
    8000559c:	354080e7          	jalr	852(ra) # 800048ec <panic>

00000000800055a0 <kalloc>:
    800055a0:	fe010113          	addi	sp,sp,-32
    800055a4:	00813823          	sd	s0,16(sp)
    800055a8:	00913423          	sd	s1,8(sp)
    800055ac:	00113c23          	sd	ra,24(sp)
    800055b0:	02010413          	addi	s0,sp,32
    800055b4:	00003797          	auipc	a5,0x3
    800055b8:	c4c78793          	addi	a5,a5,-948 # 80008200 <kmem>
    800055bc:	0007b483          	ld	s1,0(a5)
    800055c0:	02048063          	beqz	s1,800055e0 <kalloc+0x40>
    800055c4:	0004b703          	ld	a4,0(s1)
    800055c8:	00001637          	lui	a2,0x1
    800055cc:	00500593          	li	a1,5
    800055d0:	00048513          	mv	a0,s1
    800055d4:	00e7b023          	sd	a4,0(a5)
    800055d8:	00000097          	auipc	ra,0x0
    800055dc:	400080e7          	jalr	1024(ra) # 800059d8 <__memset>
    800055e0:	01813083          	ld	ra,24(sp)
    800055e4:	01013403          	ld	s0,16(sp)
    800055e8:	00048513          	mv	a0,s1
    800055ec:	00813483          	ld	s1,8(sp)
    800055f0:	02010113          	addi	sp,sp,32
    800055f4:	00008067          	ret

00000000800055f8 <initlock>:
    800055f8:	ff010113          	addi	sp,sp,-16
    800055fc:	00813423          	sd	s0,8(sp)
    80005600:	01010413          	addi	s0,sp,16
    80005604:	00813403          	ld	s0,8(sp)
    80005608:	00b53423          	sd	a1,8(a0)
    8000560c:	00052023          	sw	zero,0(a0)
    80005610:	00053823          	sd	zero,16(a0)
    80005614:	01010113          	addi	sp,sp,16
    80005618:	00008067          	ret

000000008000561c <acquire>:
    8000561c:	fe010113          	addi	sp,sp,-32
    80005620:	00813823          	sd	s0,16(sp)
    80005624:	00913423          	sd	s1,8(sp)
    80005628:	00113c23          	sd	ra,24(sp)
    8000562c:	01213023          	sd	s2,0(sp)
    80005630:	02010413          	addi	s0,sp,32
    80005634:	00050493          	mv	s1,a0
    80005638:	10002973          	csrr	s2,sstatus
    8000563c:	100027f3          	csrr	a5,sstatus
    80005640:	ffd7f793          	andi	a5,a5,-3
    80005644:	10079073          	csrw	sstatus,a5
    80005648:	fffff097          	auipc	ra,0xfffff
    8000564c:	8ec080e7          	jalr	-1812(ra) # 80003f34 <mycpu>
    80005650:	07852783          	lw	a5,120(a0)
    80005654:	06078e63          	beqz	a5,800056d0 <acquire+0xb4>
    80005658:	fffff097          	auipc	ra,0xfffff
    8000565c:	8dc080e7          	jalr	-1828(ra) # 80003f34 <mycpu>
    80005660:	07852783          	lw	a5,120(a0)
    80005664:	0004a703          	lw	a4,0(s1)
    80005668:	0017879b          	addiw	a5,a5,1
    8000566c:	06f52c23          	sw	a5,120(a0)
    80005670:	04071063          	bnez	a4,800056b0 <acquire+0x94>
    80005674:	00100713          	li	a4,1
    80005678:	00070793          	mv	a5,a4
    8000567c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005680:	0007879b          	sext.w	a5,a5
    80005684:	fe079ae3          	bnez	a5,80005678 <acquire+0x5c>
    80005688:	0ff0000f          	fence
    8000568c:	fffff097          	auipc	ra,0xfffff
    80005690:	8a8080e7          	jalr	-1880(ra) # 80003f34 <mycpu>
    80005694:	01813083          	ld	ra,24(sp)
    80005698:	01013403          	ld	s0,16(sp)
    8000569c:	00a4b823          	sd	a0,16(s1)
    800056a0:	00013903          	ld	s2,0(sp)
    800056a4:	00813483          	ld	s1,8(sp)
    800056a8:	02010113          	addi	sp,sp,32
    800056ac:	00008067          	ret
    800056b0:	0104b903          	ld	s2,16(s1)
    800056b4:	fffff097          	auipc	ra,0xfffff
    800056b8:	880080e7          	jalr	-1920(ra) # 80003f34 <mycpu>
    800056bc:	faa91ce3          	bne	s2,a0,80005674 <acquire+0x58>
    800056c0:	00002517          	auipc	a0,0x2
    800056c4:	fa850513          	addi	a0,a0,-88 # 80007668 <digits+0x20>
    800056c8:	fffff097          	auipc	ra,0xfffff
    800056cc:	224080e7          	jalr	548(ra) # 800048ec <panic>
    800056d0:	00195913          	srli	s2,s2,0x1
    800056d4:	fffff097          	auipc	ra,0xfffff
    800056d8:	860080e7          	jalr	-1952(ra) # 80003f34 <mycpu>
    800056dc:	00197913          	andi	s2,s2,1
    800056e0:	07252e23          	sw	s2,124(a0)
    800056e4:	f75ff06f          	j	80005658 <acquire+0x3c>

00000000800056e8 <release>:
    800056e8:	fe010113          	addi	sp,sp,-32
    800056ec:	00813823          	sd	s0,16(sp)
    800056f0:	00113c23          	sd	ra,24(sp)
    800056f4:	00913423          	sd	s1,8(sp)
    800056f8:	01213023          	sd	s2,0(sp)
    800056fc:	02010413          	addi	s0,sp,32
    80005700:	00052783          	lw	a5,0(a0)
    80005704:	00079a63          	bnez	a5,80005718 <release+0x30>
    80005708:	00002517          	auipc	a0,0x2
    8000570c:	f6850513          	addi	a0,a0,-152 # 80007670 <digits+0x28>
    80005710:	fffff097          	auipc	ra,0xfffff
    80005714:	1dc080e7          	jalr	476(ra) # 800048ec <panic>
    80005718:	01053903          	ld	s2,16(a0)
    8000571c:	00050493          	mv	s1,a0
    80005720:	fffff097          	auipc	ra,0xfffff
    80005724:	814080e7          	jalr	-2028(ra) # 80003f34 <mycpu>
    80005728:	fea910e3          	bne	s2,a0,80005708 <release+0x20>
    8000572c:	0004b823          	sd	zero,16(s1)
    80005730:	0ff0000f          	fence
    80005734:	0f50000f          	fence	iorw,ow
    80005738:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000573c:	ffffe097          	auipc	ra,0xffffe
    80005740:	7f8080e7          	jalr	2040(ra) # 80003f34 <mycpu>
    80005744:	100027f3          	csrr	a5,sstatus
    80005748:	0027f793          	andi	a5,a5,2
    8000574c:	04079a63          	bnez	a5,800057a0 <release+0xb8>
    80005750:	07852783          	lw	a5,120(a0)
    80005754:	02f05e63          	blez	a5,80005790 <release+0xa8>
    80005758:	fff7871b          	addiw	a4,a5,-1
    8000575c:	06e52c23          	sw	a4,120(a0)
    80005760:	00071c63          	bnez	a4,80005778 <release+0x90>
    80005764:	07c52783          	lw	a5,124(a0)
    80005768:	00078863          	beqz	a5,80005778 <release+0x90>
    8000576c:	100027f3          	csrr	a5,sstatus
    80005770:	0027e793          	ori	a5,a5,2
    80005774:	10079073          	csrw	sstatus,a5
    80005778:	01813083          	ld	ra,24(sp)
    8000577c:	01013403          	ld	s0,16(sp)
    80005780:	00813483          	ld	s1,8(sp)
    80005784:	00013903          	ld	s2,0(sp)
    80005788:	02010113          	addi	sp,sp,32
    8000578c:	00008067          	ret
    80005790:	00002517          	auipc	a0,0x2
    80005794:	f0050513          	addi	a0,a0,-256 # 80007690 <digits+0x48>
    80005798:	fffff097          	auipc	ra,0xfffff
    8000579c:	154080e7          	jalr	340(ra) # 800048ec <panic>
    800057a0:	00002517          	auipc	a0,0x2
    800057a4:	ed850513          	addi	a0,a0,-296 # 80007678 <digits+0x30>
    800057a8:	fffff097          	auipc	ra,0xfffff
    800057ac:	144080e7          	jalr	324(ra) # 800048ec <panic>

00000000800057b0 <holding>:
    800057b0:	00052783          	lw	a5,0(a0)
    800057b4:	00079663          	bnez	a5,800057c0 <holding+0x10>
    800057b8:	00000513          	li	a0,0
    800057bc:	00008067          	ret
    800057c0:	fe010113          	addi	sp,sp,-32
    800057c4:	00813823          	sd	s0,16(sp)
    800057c8:	00913423          	sd	s1,8(sp)
    800057cc:	00113c23          	sd	ra,24(sp)
    800057d0:	02010413          	addi	s0,sp,32
    800057d4:	01053483          	ld	s1,16(a0)
    800057d8:	ffffe097          	auipc	ra,0xffffe
    800057dc:	75c080e7          	jalr	1884(ra) # 80003f34 <mycpu>
    800057e0:	01813083          	ld	ra,24(sp)
    800057e4:	01013403          	ld	s0,16(sp)
    800057e8:	40a48533          	sub	a0,s1,a0
    800057ec:	00153513          	seqz	a0,a0
    800057f0:	00813483          	ld	s1,8(sp)
    800057f4:	02010113          	addi	sp,sp,32
    800057f8:	00008067          	ret

00000000800057fc <push_off>:
    800057fc:	fe010113          	addi	sp,sp,-32
    80005800:	00813823          	sd	s0,16(sp)
    80005804:	00113c23          	sd	ra,24(sp)
    80005808:	00913423          	sd	s1,8(sp)
    8000580c:	02010413          	addi	s0,sp,32
    80005810:	100024f3          	csrr	s1,sstatus
    80005814:	100027f3          	csrr	a5,sstatus
    80005818:	ffd7f793          	andi	a5,a5,-3
    8000581c:	10079073          	csrw	sstatus,a5
    80005820:	ffffe097          	auipc	ra,0xffffe
    80005824:	714080e7          	jalr	1812(ra) # 80003f34 <mycpu>
    80005828:	07852783          	lw	a5,120(a0)
    8000582c:	02078663          	beqz	a5,80005858 <push_off+0x5c>
    80005830:	ffffe097          	auipc	ra,0xffffe
    80005834:	704080e7          	jalr	1796(ra) # 80003f34 <mycpu>
    80005838:	07852783          	lw	a5,120(a0)
    8000583c:	01813083          	ld	ra,24(sp)
    80005840:	01013403          	ld	s0,16(sp)
    80005844:	0017879b          	addiw	a5,a5,1
    80005848:	06f52c23          	sw	a5,120(a0)
    8000584c:	00813483          	ld	s1,8(sp)
    80005850:	02010113          	addi	sp,sp,32
    80005854:	00008067          	ret
    80005858:	0014d493          	srli	s1,s1,0x1
    8000585c:	ffffe097          	auipc	ra,0xffffe
    80005860:	6d8080e7          	jalr	1752(ra) # 80003f34 <mycpu>
    80005864:	0014f493          	andi	s1,s1,1
    80005868:	06952e23          	sw	s1,124(a0)
    8000586c:	fc5ff06f          	j	80005830 <push_off+0x34>

0000000080005870 <pop_off>:
    80005870:	ff010113          	addi	sp,sp,-16
    80005874:	00813023          	sd	s0,0(sp)
    80005878:	00113423          	sd	ra,8(sp)
    8000587c:	01010413          	addi	s0,sp,16
    80005880:	ffffe097          	auipc	ra,0xffffe
    80005884:	6b4080e7          	jalr	1716(ra) # 80003f34 <mycpu>
    80005888:	100027f3          	csrr	a5,sstatus
    8000588c:	0027f793          	andi	a5,a5,2
    80005890:	04079663          	bnez	a5,800058dc <pop_off+0x6c>
    80005894:	07852783          	lw	a5,120(a0)
    80005898:	02f05a63          	blez	a5,800058cc <pop_off+0x5c>
    8000589c:	fff7871b          	addiw	a4,a5,-1
    800058a0:	06e52c23          	sw	a4,120(a0)
    800058a4:	00071c63          	bnez	a4,800058bc <pop_off+0x4c>
    800058a8:	07c52783          	lw	a5,124(a0)
    800058ac:	00078863          	beqz	a5,800058bc <pop_off+0x4c>
    800058b0:	100027f3          	csrr	a5,sstatus
    800058b4:	0027e793          	ori	a5,a5,2
    800058b8:	10079073          	csrw	sstatus,a5
    800058bc:	00813083          	ld	ra,8(sp)
    800058c0:	00013403          	ld	s0,0(sp)
    800058c4:	01010113          	addi	sp,sp,16
    800058c8:	00008067          	ret
    800058cc:	00002517          	auipc	a0,0x2
    800058d0:	dc450513          	addi	a0,a0,-572 # 80007690 <digits+0x48>
    800058d4:	fffff097          	auipc	ra,0xfffff
    800058d8:	018080e7          	jalr	24(ra) # 800048ec <panic>
    800058dc:	00002517          	auipc	a0,0x2
    800058e0:	d9c50513          	addi	a0,a0,-612 # 80007678 <digits+0x30>
    800058e4:	fffff097          	auipc	ra,0xfffff
    800058e8:	008080e7          	jalr	8(ra) # 800048ec <panic>

00000000800058ec <push_on>:
    800058ec:	fe010113          	addi	sp,sp,-32
    800058f0:	00813823          	sd	s0,16(sp)
    800058f4:	00113c23          	sd	ra,24(sp)
    800058f8:	00913423          	sd	s1,8(sp)
    800058fc:	02010413          	addi	s0,sp,32
    80005900:	100024f3          	csrr	s1,sstatus
    80005904:	100027f3          	csrr	a5,sstatus
    80005908:	0027e793          	ori	a5,a5,2
    8000590c:	10079073          	csrw	sstatus,a5
    80005910:	ffffe097          	auipc	ra,0xffffe
    80005914:	624080e7          	jalr	1572(ra) # 80003f34 <mycpu>
    80005918:	07852783          	lw	a5,120(a0)
    8000591c:	02078663          	beqz	a5,80005948 <push_on+0x5c>
    80005920:	ffffe097          	auipc	ra,0xffffe
    80005924:	614080e7          	jalr	1556(ra) # 80003f34 <mycpu>
    80005928:	07852783          	lw	a5,120(a0)
    8000592c:	01813083          	ld	ra,24(sp)
    80005930:	01013403          	ld	s0,16(sp)
    80005934:	0017879b          	addiw	a5,a5,1
    80005938:	06f52c23          	sw	a5,120(a0)
    8000593c:	00813483          	ld	s1,8(sp)
    80005940:	02010113          	addi	sp,sp,32
    80005944:	00008067          	ret
    80005948:	0014d493          	srli	s1,s1,0x1
    8000594c:	ffffe097          	auipc	ra,0xffffe
    80005950:	5e8080e7          	jalr	1512(ra) # 80003f34 <mycpu>
    80005954:	0014f493          	andi	s1,s1,1
    80005958:	06952e23          	sw	s1,124(a0)
    8000595c:	fc5ff06f          	j	80005920 <push_on+0x34>

0000000080005960 <pop_on>:
    80005960:	ff010113          	addi	sp,sp,-16
    80005964:	00813023          	sd	s0,0(sp)
    80005968:	00113423          	sd	ra,8(sp)
    8000596c:	01010413          	addi	s0,sp,16
    80005970:	ffffe097          	auipc	ra,0xffffe
    80005974:	5c4080e7          	jalr	1476(ra) # 80003f34 <mycpu>
    80005978:	100027f3          	csrr	a5,sstatus
    8000597c:	0027f793          	andi	a5,a5,2
    80005980:	04078463          	beqz	a5,800059c8 <pop_on+0x68>
    80005984:	07852783          	lw	a5,120(a0)
    80005988:	02f05863          	blez	a5,800059b8 <pop_on+0x58>
    8000598c:	fff7879b          	addiw	a5,a5,-1
    80005990:	06f52c23          	sw	a5,120(a0)
    80005994:	07853783          	ld	a5,120(a0)
    80005998:	00079863          	bnez	a5,800059a8 <pop_on+0x48>
    8000599c:	100027f3          	csrr	a5,sstatus
    800059a0:	ffd7f793          	andi	a5,a5,-3
    800059a4:	10079073          	csrw	sstatus,a5
    800059a8:	00813083          	ld	ra,8(sp)
    800059ac:	00013403          	ld	s0,0(sp)
    800059b0:	01010113          	addi	sp,sp,16
    800059b4:	00008067          	ret
    800059b8:	00002517          	auipc	a0,0x2
    800059bc:	d0050513          	addi	a0,a0,-768 # 800076b8 <digits+0x70>
    800059c0:	fffff097          	auipc	ra,0xfffff
    800059c4:	f2c080e7          	jalr	-212(ra) # 800048ec <panic>
    800059c8:	00002517          	auipc	a0,0x2
    800059cc:	cd050513          	addi	a0,a0,-816 # 80007698 <digits+0x50>
    800059d0:	fffff097          	auipc	ra,0xfffff
    800059d4:	f1c080e7          	jalr	-228(ra) # 800048ec <panic>

00000000800059d8 <__memset>:
    800059d8:	ff010113          	addi	sp,sp,-16
    800059dc:	00813423          	sd	s0,8(sp)
    800059e0:	01010413          	addi	s0,sp,16
    800059e4:	1a060e63          	beqz	a2,80005ba0 <__memset+0x1c8>
    800059e8:	40a007b3          	neg	a5,a0
    800059ec:	0077f793          	andi	a5,a5,7
    800059f0:	00778693          	addi	a3,a5,7
    800059f4:	00b00813          	li	a6,11
    800059f8:	0ff5f593          	andi	a1,a1,255
    800059fc:	fff6071b          	addiw	a4,a2,-1
    80005a00:	1b06e663          	bltu	a3,a6,80005bac <__memset+0x1d4>
    80005a04:	1cd76463          	bltu	a4,a3,80005bcc <__memset+0x1f4>
    80005a08:	1a078e63          	beqz	a5,80005bc4 <__memset+0x1ec>
    80005a0c:	00b50023          	sb	a1,0(a0)
    80005a10:	00100713          	li	a4,1
    80005a14:	1ae78463          	beq	a5,a4,80005bbc <__memset+0x1e4>
    80005a18:	00b500a3          	sb	a1,1(a0)
    80005a1c:	00200713          	li	a4,2
    80005a20:	1ae78a63          	beq	a5,a4,80005bd4 <__memset+0x1fc>
    80005a24:	00b50123          	sb	a1,2(a0)
    80005a28:	00300713          	li	a4,3
    80005a2c:	18e78463          	beq	a5,a4,80005bb4 <__memset+0x1dc>
    80005a30:	00b501a3          	sb	a1,3(a0)
    80005a34:	00400713          	li	a4,4
    80005a38:	1ae78263          	beq	a5,a4,80005bdc <__memset+0x204>
    80005a3c:	00b50223          	sb	a1,4(a0)
    80005a40:	00500713          	li	a4,5
    80005a44:	1ae78063          	beq	a5,a4,80005be4 <__memset+0x20c>
    80005a48:	00b502a3          	sb	a1,5(a0)
    80005a4c:	00700713          	li	a4,7
    80005a50:	18e79e63          	bne	a5,a4,80005bec <__memset+0x214>
    80005a54:	00b50323          	sb	a1,6(a0)
    80005a58:	00700e93          	li	t4,7
    80005a5c:	00859713          	slli	a4,a1,0x8
    80005a60:	00e5e733          	or	a4,a1,a4
    80005a64:	01059e13          	slli	t3,a1,0x10
    80005a68:	01c76e33          	or	t3,a4,t3
    80005a6c:	01859313          	slli	t1,a1,0x18
    80005a70:	006e6333          	or	t1,t3,t1
    80005a74:	02059893          	slli	a7,a1,0x20
    80005a78:	40f60e3b          	subw	t3,a2,a5
    80005a7c:	011368b3          	or	a7,t1,a7
    80005a80:	02859813          	slli	a6,a1,0x28
    80005a84:	0108e833          	or	a6,a7,a6
    80005a88:	03059693          	slli	a3,a1,0x30
    80005a8c:	003e589b          	srliw	a7,t3,0x3
    80005a90:	00d866b3          	or	a3,a6,a3
    80005a94:	03859713          	slli	a4,a1,0x38
    80005a98:	00389813          	slli	a6,a7,0x3
    80005a9c:	00f507b3          	add	a5,a0,a5
    80005aa0:	00e6e733          	or	a4,a3,a4
    80005aa4:	000e089b          	sext.w	a7,t3
    80005aa8:	00f806b3          	add	a3,a6,a5
    80005aac:	00e7b023          	sd	a4,0(a5)
    80005ab0:	00878793          	addi	a5,a5,8
    80005ab4:	fed79ce3          	bne	a5,a3,80005aac <__memset+0xd4>
    80005ab8:	ff8e7793          	andi	a5,t3,-8
    80005abc:	0007871b          	sext.w	a4,a5
    80005ac0:	01d787bb          	addw	a5,a5,t4
    80005ac4:	0ce88e63          	beq	a7,a4,80005ba0 <__memset+0x1c8>
    80005ac8:	00f50733          	add	a4,a0,a5
    80005acc:	00b70023          	sb	a1,0(a4)
    80005ad0:	0017871b          	addiw	a4,a5,1
    80005ad4:	0cc77663          	bgeu	a4,a2,80005ba0 <__memset+0x1c8>
    80005ad8:	00e50733          	add	a4,a0,a4
    80005adc:	00b70023          	sb	a1,0(a4)
    80005ae0:	0027871b          	addiw	a4,a5,2
    80005ae4:	0ac77e63          	bgeu	a4,a2,80005ba0 <__memset+0x1c8>
    80005ae8:	00e50733          	add	a4,a0,a4
    80005aec:	00b70023          	sb	a1,0(a4)
    80005af0:	0037871b          	addiw	a4,a5,3
    80005af4:	0ac77663          	bgeu	a4,a2,80005ba0 <__memset+0x1c8>
    80005af8:	00e50733          	add	a4,a0,a4
    80005afc:	00b70023          	sb	a1,0(a4)
    80005b00:	0047871b          	addiw	a4,a5,4
    80005b04:	08c77e63          	bgeu	a4,a2,80005ba0 <__memset+0x1c8>
    80005b08:	00e50733          	add	a4,a0,a4
    80005b0c:	00b70023          	sb	a1,0(a4)
    80005b10:	0057871b          	addiw	a4,a5,5
    80005b14:	08c77663          	bgeu	a4,a2,80005ba0 <__memset+0x1c8>
    80005b18:	00e50733          	add	a4,a0,a4
    80005b1c:	00b70023          	sb	a1,0(a4)
    80005b20:	0067871b          	addiw	a4,a5,6
    80005b24:	06c77e63          	bgeu	a4,a2,80005ba0 <__memset+0x1c8>
    80005b28:	00e50733          	add	a4,a0,a4
    80005b2c:	00b70023          	sb	a1,0(a4)
    80005b30:	0077871b          	addiw	a4,a5,7
    80005b34:	06c77663          	bgeu	a4,a2,80005ba0 <__memset+0x1c8>
    80005b38:	00e50733          	add	a4,a0,a4
    80005b3c:	00b70023          	sb	a1,0(a4)
    80005b40:	0087871b          	addiw	a4,a5,8
    80005b44:	04c77e63          	bgeu	a4,a2,80005ba0 <__memset+0x1c8>
    80005b48:	00e50733          	add	a4,a0,a4
    80005b4c:	00b70023          	sb	a1,0(a4)
    80005b50:	0097871b          	addiw	a4,a5,9
    80005b54:	04c77663          	bgeu	a4,a2,80005ba0 <__memset+0x1c8>
    80005b58:	00e50733          	add	a4,a0,a4
    80005b5c:	00b70023          	sb	a1,0(a4)
    80005b60:	00a7871b          	addiw	a4,a5,10
    80005b64:	02c77e63          	bgeu	a4,a2,80005ba0 <__memset+0x1c8>
    80005b68:	00e50733          	add	a4,a0,a4
    80005b6c:	00b70023          	sb	a1,0(a4)
    80005b70:	00b7871b          	addiw	a4,a5,11
    80005b74:	02c77663          	bgeu	a4,a2,80005ba0 <__memset+0x1c8>
    80005b78:	00e50733          	add	a4,a0,a4
    80005b7c:	00b70023          	sb	a1,0(a4)
    80005b80:	00c7871b          	addiw	a4,a5,12
    80005b84:	00c77e63          	bgeu	a4,a2,80005ba0 <__memset+0x1c8>
    80005b88:	00e50733          	add	a4,a0,a4
    80005b8c:	00b70023          	sb	a1,0(a4)
    80005b90:	00d7879b          	addiw	a5,a5,13
    80005b94:	00c7f663          	bgeu	a5,a2,80005ba0 <__memset+0x1c8>
    80005b98:	00f507b3          	add	a5,a0,a5
    80005b9c:	00b78023          	sb	a1,0(a5)
    80005ba0:	00813403          	ld	s0,8(sp)
    80005ba4:	01010113          	addi	sp,sp,16
    80005ba8:	00008067          	ret
    80005bac:	00b00693          	li	a3,11
    80005bb0:	e55ff06f          	j	80005a04 <__memset+0x2c>
    80005bb4:	00300e93          	li	t4,3
    80005bb8:	ea5ff06f          	j	80005a5c <__memset+0x84>
    80005bbc:	00100e93          	li	t4,1
    80005bc0:	e9dff06f          	j	80005a5c <__memset+0x84>
    80005bc4:	00000e93          	li	t4,0
    80005bc8:	e95ff06f          	j	80005a5c <__memset+0x84>
    80005bcc:	00000793          	li	a5,0
    80005bd0:	ef9ff06f          	j	80005ac8 <__memset+0xf0>
    80005bd4:	00200e93          	li	t4,2
    80005bd8:	e85ff06f          	j	80005a5c <__memset+0x84>
    80005bdc:	00400e93          	li	t4,4
    80005be0:	e7dff06f          	j	80005a5c <__memset+0x84>
    80005be4:	00500e93          	li	t4,5
    80005be8:	e75ff06f          	j	80005a5c <__memset+0x84>
    80005bec:	00600e93          	li	t4,6
    80005bf0:	e6dff06f          	j	80005a5c <__memset+0x84>

0000000080005bf4 <__memmove>:
    80005bf4:	ff010113          	addi	sp,sp,-16
    80005bf8:	00813423          	sd	s0,8(sp)
    80005bfc:	01010413          	addi	s0,sp,16
    80005c00:	0e060863          	beqz	a2,80005cf0 <__memmove+0xfc>
    80005c04:	fff6069b          	addiw	a3,a2,-1
    80005c08:	0006881b          	sext.w	a6,a3
    80005c0c:	0ea5e863          	bltu	a1,a0,80005cfc <__memmove+0x108>
    80005c10:	00758713          	addi	a4,a1,7
    80005c14:	00a5e7b3          	or	a5,a1,a0
    80005c18:	40a70733          	sub	a4,a4,a0
    80005c1c:	0077f793          	andi	a5,a5,7
    80005c20:	00f73713          	sltiu	a4,a4,15
    80005c24:	00174713          	xori	a4,a4,1
    80005c28:	0017b793          	seqz	a5,a5
    80005c2c:	00e7f7b3          	and	a5,a5,a4
    80005c30:	10078863          	beqz	a5,80005d40 <__memmove+0x14c>
    80005c34:	00900793          	li	a5,9
    80005c38:	1107f463          	bgeu	a5,a6,80005d40 <__memmove+0x14c>
    80005c3c:	0036581b          	srliw	a6,a2,0x3
    80005c40:	fff8081b          	addiw	a6,a6,-1
    80005c44:	02081813          	slli	a6,a6,0x20
    80005c48:	01d85893          	srli	a7,a6,0x1d
    80005c4c:	00858813          	addi	a6,a1,8
    80005c50:	00058793          	mv	a5,a1
    80005c54:	00050713          	mv	a4,a0
    80005c58:	01088833          	add	a6,a7,a6
    80005c5c:	0007b883          	ld	a7,0(a5)
    80005c60:	00878793          	addi	a5,a5,8
    80005c64:	00870713          	addi	a4,a4,8
    80005c68:	ff173c23          	sd	a7,-8(a4)
    80005c6c:	ff0798e3          	bne	a5,a6,80005c5c <__memmove+0x68>
    80005c70:	ff867713          	andi	a4,a2,-8
    80005c74:	02071793          	slli	a5,a4,0x20
    80005c78:	0207d793          	srli	a5,a5,0x20
    80005c7c:	00f585b3          	add	a1,a1,a5
    80005c80:	40e686bb          	subw	a3,a3,a4
    80005c84:	00f507b3          	add	a5,a0,a5
    80005c88:	06e60463          	beq	a2,a4,80005cf0 <__memmove+0xfc>
    80005c8c:	0005c703          	lbu	a4,0(a1)
    80005c90:	00e78023          	sb	a4,0(a5)
    80005c94:	04068e63          	beqz	a3,80005cf0 <__memmove+0xfc>
    80005c98:	0015c603          	lbu	a2,1(a1)
    80005c9c:	00100713          	li	a4,1
    80005ca0:	00c780a3          	sb	a2,1(a5)
    80005ca4:	04e68663          	beq	a3,a4,80005cf0 <__memmove+0xfc>
    80005ca8:	0025c603          	lbu	a2,2(a1)
    80005cac:	00200713          	li	a4,2
    80005cb0:	00c78123          	sb	a2,2(a5)
    80005cb4:	02e68e63          	beq	a3,a4,80005cf0 <__memmove+0xfc>
    80005cb8:	0035c603          	lbu	a2,3(a1)
    80005cbc:	00300713          	li	a4,3
    80005cc0:	00c781a3          	sb	a2,3(a5)
    80005cc4:	02e68663          	beq	a3,a4,80005cf0 <__memmove+0xfc>
    80005cc8:	0045c603          	lbu	a2,4(a1)
    80005ccc:	00400713          	li	a4,4
    80005cd0:	00c78223          	sb	a2,4(a5)
    80005cd4:	00e68e63          	beq	a3,a4,80005cf0 <__memmove+0xfc>
    80005cd8:	0055c603          	lbu	a2,5(a1)
    80005cdc:	00500713          	li	a4,5
    80005ce0:	00c782a3          	sb	a2,5(a5)
    80005ce4:	00e68663          	beq	a3,a4,80005cf0 <__memmove+0xfc>
    80005ce8:	0065c703          	lbu	a4,6(a1)
    80005cec:	00e78323          	sb	a4,6(a5)
    80005cf0:	00813403          	ld	s0,8(sp)
    80005cf4:	01010113          	addi	sp,sp,16
    80005cf8:	00008067          	ret
    80005cfc:	02061713          	slli	a4,a2,0x20
    80005d00:	02075713          	srli	a4,a4,0x20
    80005d04:	00e587b3          	add	a5,a1,a4
    80005d08:	f0f574e3          	bgeu	a0,a5,80005c10 <__memmove+0x1c>
    80005d0c:	02069613          	slli	a2,a3,0x20
    80005d10:	02065613          	srli	a2,a2,0x20
    80005d14:	fff64613          	not	a2,a2
    80005d18:	00e50733          	add	a4,a0,a4
    80005d1c:	00c78633          	add	a2,a5,a2
    80005d20:	fff7c683          	lbu	a3,-1(a5)
    80005d24:	fff78793          	addi	a5,a5,-1
    80005d28:	fff70713          	addi	a4,a4,-1
    80005d2c:	00d70023          	sb	a3,0(a4)
    80005d30:	fec798e3          	bne	a5,a2,80005d20 <__memmove+0x12c>
    80005d34:	00813403          	ld	s0,8(sp)
    80005d38:	01010113          	addi	sp,sp,16
    80005d3c:	00008067          	ret
    80005d40:	02069713          	slli	a4,a3,0x20
    80005d44:	02075713          	srli	a4,a4,0x20
    80005d48:	00170713          	addi	a4,a4,1
    80005d4c:	00e50733          	add	a4,a0,a4
    80005d50:	00050793          	mv	a5,a0
    80005d54:	0005c683          	lbu	a3,0(a1)
    80005d58:	00178793          	addi	a5,a5,1
    80005d5c:	00158593          	addi	a1,a1,1
    80005d60:	fed78fa3          	sb	a3,-1(a5)
    80005d64:	fee798e3          	bne	a5,a4,80005d54 <__memmove+0x160>
    80005d68:	f89ff06f          	j	80005cf0 <__memmove+0xfc>

0000000080005d6c <__mem_free>:
    80005d6c:	ff010113          	addi	sp,sp,-16
    80005d70:	00813423          	sd	s0,8(sp)
    80005d74:	01010413          	addi	s0,sp,16
    80005d78:	00002597          	auipc	a1,0x2
    80005d7c:	49058593          	addi	a1,a1,1168 # 80008208 <freep>
    80005d80:	0005b783          	ld	a5,0(a1)
    80005d84:	ff050693          	addi	a3,a0,-16
    80005d88:	0007b703          	ld	a4,0(a5)
    80005d8c:	00d7fc63          	bgeu	a5,a3,80005da4 <__mem_free+0x38>
    80005d90:	00e6ee63          	bltu	a3,a4,80005dac <__mem_free+0x40>
    80005d94:	00e7fc63          	bgeu	a5,a4,80005dac <__mem_free+0x40>
    80005d98:	00070793          	mv	a5,a4
    80005d9c:	0007b703          	ld	a4,0(a5)
    80005da0:	fed7e8e3          	bltu	a5,a3,80005d90 <__mem_free+0x24>
    80005da4:	fee7eae3          	bltu	a5,a4,80005d98 <__mem_free+0x2c>
    80005da8:	fee6f8e3          	bgeu	a3,a4,80005d98 <__mem_free+0x2c>
    80005dac:	ff852803          	lw	a6,-8(a0)
    80005db0:	02081613          	slli	a2,a6,0x20
    80005db4:	01c65613          	srli	a2,a2,0x1c
    80005db8:	00c68633          	add	a2,a3,a2
    80005dbc:	02c70a63          	beq	a4,a2,80005df0 <__mem_free+0x84>
    80005dc0:	fee53823          	sd	a4,-16(a0)
    80005dc4:	0087a503          	lw	a0,8(a5)
    80005dc8:	02051613          	slli	a2,a0,0x20
    80005dcc:	01c65613          	srli	a2,a2,0x1c
    80005dd0:	00c78633          	add	a2,a5,a2
    80005dd4:	04c68263          	beq	a3,a2,80005e18 <__mem_free+0xac>
    80005dd8:	00813403          	ld	s0,8(sp)
    80005ddc:	00d7b023          	sd	a3,0(a5)
    80005de0:	00f5b023          	sd	a5,0(a1)
    80005de4:	00000513          	li	a0,0
    80005de8:	01010113          	addi	sp,sp,16
    80005dec:	00008067          	ret
    80005df0:	00872603          	lw	a2,8(a4)
    80005df4:	00073703          	ld	a4,0(a4)
    80005df8:	0106083b          	addw	a6,a2,a6
    80005dfc:	ff052c23          	sw	a6,-8(a0)
    80005e00:	fee53823          	sd	a4,-16(a0)
    80005e04:	0087a503          	lw	a0,8(a5)
    80005e08:	02051613          	slli	a2,a0,0x20
    80005e0c:	01c65613          	srli	a2,a2,0x1c
    80005e10:	00c78633          	add	a2,a5,a2
    80005e14:	fcc692e3          	bne	a3,a2,80005dd8 <__mem_free+0x6c>
    80005e18:	00813403          	ld	s0,8(sp)
    80005e1c:	0105053b          	addw	a0,a0,a6
    80005e20:	00a7a423          	sw	a0,8(a5)
    80005e24:	00e7b023          	sd	a4,0(a5)
    80005e28:	00f5b023          	sd	a5,0(a1)
    80005e2c:	00000513          	li	a0,0
    80005e30:	01010113          	addi	sp,sp,16
    80005e34:	00008067          	ret

0000000080005e38 <__mem_alloc>:
    80005e38:	fc010113          	addi	sp,sp,-64
    80005e3c:	02813823          	sd	s0,48(sp)
    80005e40:	02913423          	sd	s1,40(sp)
    80005e44:	03213023          	sd	s2,32(sp)
    80005e48:	01513423          	sd	s5,8(sp)
    80005e4c:	02113c23          	sd	ra,56(sp)
    80005e50:	01313c23          	sd	s3,24(sp)
    80005e54:	01413823          	sd	s4,16(sp)
    80005e58:	01613023          	sd	s6,0(sp)
    80005e5c:	04010413          	addi	s0,sp,64
    80005e60:	00002a97          	auipc	s5,0x2
    80005e64:	3a8a8a93          	addi	s5,s5,936 # 80008208 <freep>
    80005e68:	00f50913          	addi	s2,a0,15
    80005e6c:	000ab683          	ld	a3,0(s5)
    80005e70:	00495913          	srli	s2,s2,0x4
    80005e74:	0019049b          	addiw	s1,s2,1
    80005e78:	00048913          	mv	s2,s1
    80005e7c:	0c068c63          	beqz	a3,80005f54 <__mem_alloc+0x11c>
    80005e80:	0006b503          	ld	a0,0(a3)
    80005e84:	00852703          	lw	a4,8(a0)
    80005e88:	10977063          	bgeu	a4,s1,80005f88 <__mem_alloc+0x150>
    80005e8c:	000017b7          	lui	a5,0x1
    80005e90:	0009099b          	sext.w	s3,s2
    80005e94:	0af4e863          	bltu	s1,a5,80005f44 <__mem_alloc+0x10c>
    80005e98:	02099a13          	slli	s4,s3,0x20
    80005e9c:	01ca5a13          	srli	s4,s4,0x1c
    80005ea0:	fff00b13          	li	s6,-1
    80005ea4:	0100006f          	j	80005eb4 <__mem_alloc+0x7c>
    80005ea8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80005eac:	00852703          	lw	a4,8(a0)
    80005eb0:	04977463          	bgeu	a4,s1,80005ef8 <__mem_alloc+0xc0>
    80005eb4:	00050793          	mv	a5,a0
    80005eb8:	fea698e3          	bne	a3,a0,80005ea8 <__mem_alloc+0x70>
    80005ebc:	000a0513          	mv	a0,s4
    80005ec0:	00000097          	auipc	ra,0x0
    80005ec4:	1f0080e7          	jalr	496(ra) # 800060b0 <kvmincrease>
    80005ec8:	00050793          	mv	a5,a0
    80005ecc:	01050513          	addi	a0,a0,16
    80005ed0:	07678e63          	beq	a5,s6,80005f4c <__mem_alloc+0x114>
    80005ed4:	0137a423          	sw	s3,8(a5)
    80005ed8:	00000097          	auipc	ra,0x0
    80005edc:	e94080e7          	jalr	-364(ra) # 80005d6c <__mem_free>
    80005ee0:	000ab783          	ld	a5,0(s5)
    80005ee4:	06078463          	beqz	a5,80005f4c <__mem_alloc+0x114>
    80005ee8:	0007b503          	ld	a0,0(a5)
    80005eec:	00078693          	mv	a3,a5
    80005ef0:	00852703          	lw	a4,8(a0)
    80005ef4:	fc9760e3          	bltu	a4,s1,80005eb4 <__mem_alloc+0x7c>
    80005ef8:	08e48263          	beq	s1,a4,80005f7c <__mem_alloc+0x144>
    80005efc:	4127073b          	subw	a4,a4,s2
    80005f00:	02071693          	slli	a3,a4,0x20
    80005f04:	01c6d693          	srli	a3,a3,0x1c
    80005f08:	00e52423          	sw	a4,8(a0)
    80005f0c:	00d50533          	add	a0,a0,a3
    80005f10:	01252423          	sw	s2,8(a0)
    80005f14:	00fab023          	sd	a5,0(s5)
    80005f18:	01050513          	addi	a0,a0,16
    80005f1c:	03813083          	ld	ra,56(sp)
    80005f20:	03013403          	ld	s0,48(sp)
    80005f24:	02813483          	ld	s1,40(sp)
    80005f28:	02013903          	ld	s2,32(sp)
    80005f2c:	01813983          	ld	s3,24(sp)
    80005f30:	01013a03          	ld	s4,16(sp)
    80005f34:	00813a83          	ld	s5,8(sp)
    80005f38:	00013b03          	ld	s6,0(sp)
    80005f3c:	04010113          	addi	sp,sp,64
    80005f40:	00008067          	ret
    80005f44:	000019b7          	lui	s3,0x1
    80005f48:	f51ff06f          	j	80005e98 <__mem_alloc+0x60>
    80005f4c:	00000513          	li	a0,0
    80005f50:	fcdff06f          	j	80005f1c <__mem_alloc+0xe4>
    80005f54:	00003797          	auipc	a5,0x3
    80005f58:	55c78793          	addi	a5,a5,1372 # 800094b0 <base>
    80005f5c:	00078513          	mv	a0,a5
    80005f60:	00fab023          	sd	a5,0(s5)
    80005f64:	00f7b023          	sd	a5,0(a5)
    80005f68:	00000713          	li	a4,0
    80005f6c:	00003797          	auipc	a5,0x3
    80005f70:	5407a623          	sw	zero,1356(a5) # 800094b8 <base+0x8>
    80005f74:	00050693          	mv	a3,a0
    80005f78:	f11ff06f          	j	80005e88 <__mem_alloc+0x50>
    80005f7c:	00053703          	ld	a4,0(a0)
    80005f80:	00e7b023          	sd	a4,0(a5)
    80005f84:	f91ff06f          	j	80005f14 <__mem_alloc+0xdc>
    80005f88:	00068793          	mv	a5,a3
    80005f8c:	f6dff06f          	j	80005ef8 <__mem_alloc+0xc0>

0000000080005f90 <__putc>:
    80005f90:	fe010113          	addi	sp,sp,-32
    80005f94:	00813823          	sd	s0,16(sp)
    80005f98:	00113c23          	sd	ra,24(sp)
    80005f9c:	02010413          	addi	s0,sp,32
    80005fa0:	00050793          	mv	a5,a0
    80005fa4:	fef40593          	addi	a1,s0,-17
    80005fa8:	00100613          	li	a2,1
    80005fac:	00000513          	li	a0,0
    80005fb0:	fef407a3          	sb	a5,-17(s0)
    80005fb4:	fffff097          	auipc	ra,0xfffff
    80005fb8:	918080e7          	jalr	-1768(ra) # 800048cc <console_write>
    80005fbc:	01813083          	ld	ra,24(sp)
    80005fc0:	01013403          	ld	s0,16(sp)
    80005fc4:	02010113          	addi	sp,sp,32
    80005fc8:	00008067          	ret

0000000080005fcc <__getc>:
    80005fcc:	fe010113          	addi	sp,sp,-32
    80005fd0:	00813823          	sd	s0,16(sp)
    80005fd4:	00113c23          	sd	ra,24(sp)
    80005fd8:	02010413          	addi	s0,sp,32
    80005fdc:	fe840593          	addi	a1,s0,-24
    80005fe0:	00100613          	li	a2,1
    80005fe4:	00000513          	li	a0,0
    80005fe8:	fffff097          	auipc	ra,0xfffff
    80005fec:	8c4080e7          	jalr	-1852(ra) # 800048ac <console_read>
    80005ff0:	fe844503          	lbu	a0,-24(s0)
    80005ff4:	01813083          	ld	ra,24(sp)
    80005ff8:	01013403          	ld	s0,16(sp)
    80005ffc:	02010113          	addi	sp,sp,32
    80006000:	00008067          	ret

0000000080006004 <console_handler>:
    80006004:	fe010113          	addi	sp,sp,-32
    80006008:	00813823          	sd	s0,16(sp)
    8000600c:	00113c23          	sd	ra,24(sp)
    80006010:	00913423          	sd	s1,8(sp)
    80006014:	02010413          	addi	s0,sp,32
    80006018:	14202773          	csrr	a4,scause
    8000601c:	100027f3          	csrr	a5,sstatus
    80006020:	0027f793          	andi	a5,a5,2
    80006024:	06079e63          	bnez	a5,800060a0 <console_handler+0x9c>
    80006028:	00074c63          	bltz	a4,80006040 <console_handler+0x3c>
    8000602c:	01813083          	ld	ra,24(sp)
    80006030:	01013403          	ld	s0,16(sp)
    80006034:	00813483          	ld	s1,8(sp)
    80006038:	02010113          	addi	sp,sp,32
    8000603c:	00008067          	ret
    80006040:	0ff77713          	andi	a4,a4,255
    80006044:	00900793          	li	a5,9
    80006048:	fef712e3          	bne	a4,a5,8000602c <console_handler+0x28>
    8000604c:	ffffe097          	auipc	ra,0xffffe
    80006050:	4b8080e7          	jalr	1208(ra) # 80004504 <plic_claim>
    80006054:	00a00793          	li	a5,10
    80006058:	00050493          	mv	s1,a0
    8000605c:	02f50c63          	beq	a0,a5,80006094 <console_handler+0x90>
    80006060:	fc0506e3          	beqz	a0,8000602c <console_handler+0x28>
    80006064:	00050593          	mv	a1,a0
    80006068:	00001517          	auipc	a0,0x1
    8000606c:	55850513          	addi	a0,a0,1368 # 800075c0 <_ZZ12printIntegermE6digits+0xe0>
    80006070:	fffff097          	auipc	ra,0xfffff
    80006074:	8d8080e7          	jalr	-1832(ra) # 80004948 <__printf>
    80006078:	01013403          	ld	s0,16(sp)
    8000607c:	01813083          	ld	ra,24(sp)
    80006080:	00048513          	mv	a0,s1
    80006084:	00813483          	ld	s1,8(sp)
    80006088:	02010113          	addi	sp,sp,32
    8000608c:	ffffe317          	auipc	t1,0xffffe
    80006090:	4b030067          	jr	1200(t1) # 8000453c <plic_complete>
    80006094:	fffff097          	auipc	ra,0xfffff
    80006098:	1bc080e7          	jalr	444(ra) # 80005250 <uartintr>
    8000609c:	fddff06f          	j	80006078 <console_handler+0x74>
    800060a0:	00001517          	auipc	a0,0x1
    800060a4:	62050513          	addi	a0,a0,1568 # 800076c0 <digits+0x78>
    800060a8:	fffff097          	auipc	ra,0xfffff
    800060ac:	844080e7          	jalr	-1980(ra) # 800048ec <panic>

00000000800060b0 <kvmincrease>:
    800060b0:	fe010113          	addi	sp,sp,-32
    800060b4:	01213023          	sd	s2,0(sp)
    800060b8:	00001937          	lui	s2,0x1
    800060bc:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    800060c0:	00813823          	sd	s0,16(sp)
    800060c4:	00113c23          	sd	ra,24(sp)
    800060c8:	00913423          	sd	s1,8(sp)
    800060cc:	02010413          	addi	s0,sp,32
    800060d0:	01250933          	add	s2,a0,s2
    800060d4:	00c95913          	srli	s2,s2,0xc
    800060d8:	02090863          	beqz	s2,80006108 <kvmincrease+0x58>
    800060dc:	00000493          	li	s1,0
    800060e0:	00148493          	addi	s1,s1,1
    800060e4:	fffff097          	auipc	ra,0xfffff
    800060e8:	4bc080e7          	jalr	1212(ra) # 800055a0 <kalloc>
    800060ec:	fe991ae3          	bne	s2,s1,800060e0 <kvmincrease+0x30>
    800060f0:	01813083          	ld	ra,24(sp)
    800060f4:	01013403          	ld	s0,16(sp)
    800060f8:	00813483          	ld	s1,8(sp)
    800060fc:	00013903          	ld	s2,0(sp)
    80006100:	02010113          	addi	sp,sp,32
    80006104:	00008067          	ret
    80006108:	01813083          	ld	ra,24(sp)
    8000610c:	01013403          	ld	s0,16(sp)
    80006110:	00813483          	ld	s1,8(sp)
    80006114:	00013903          	ld	s2,0(sp)
    80006118:	00000513          	li	a0,0
    8000611c:	02010113          	addi	sp,sp,32
    80006120:	00008067          	ret
	...
