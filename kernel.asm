
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	b9813103          	ld	sp,-1128(sp) # 80005b98 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	20c020ef          	jal	ra,80002228 <start>

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
    80001084:	5e5000ef          	jal	ra,80001e68 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001144:	590080e7          	jalr	1424(ra) # 800016d0 <_ZN3TCB12createThreadEPFvvE>
    80001148:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    8000114c:	00005797          	auipc	a5,0x5
    80001150:	a547b783          	ld	a5,-1452(a5) # 80005ba0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001154:	00a7b023          	sd	a0,0(a5)

    threads[1] = TCB::createThread(workerBodyA);
    80001158:	00005517          	auipc	a0,0x5
    8000115c:	a3853503          	ld	a0,-1480(a0) # 80005b90 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001160:	00000097          	auipc	ra,0x0
    80001164:	570080e7          	jalr	1392(ra) # 800016d0 <_ZN3TCB12createThreadEPFvvE>
    80001168:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    8000116c:	00004517          	auipc	a0,0x4
    80001170:	eb450513          	addi	a0,a0,-332 # 80005020 <CONSOLE_STATUS+0x10>
    80001174:	00001097          	auipc	ra,0x1
    80001178:	f64080e7          	jalr	-156(ra) # 800020d8 <_Z11printStringPKc>
    threads[2] = TCB::createThread(workerBodyB);
    8000117c:	00005517          	auipc	a0,0x5
    80001180:	a0453503          	ld	a0,-1532(a0) # 80005b80 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001184:	00000097          	auipc	ra,0x0
    80001188:	54c080e7          	jalr	1356(ra) # 800016d0 <_ZN3TCB12createThreadEPFvvE>
    8000118c:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    80001190:	00004517          	auipc	a0,0x4
    80001194:	ea850513          	addi	a0,a0,-344 # 80005038 <CONSOLE_STATUS+0x28>
    80001198:	00001097          	auipc	ra,0x1
    8000119c:	f40080e7          	jalr	-192(ra) # 800020d8 <_Z11printStringPKc>
    threads[3] = TCB::createThread(workerBodyC);
    800011a0:	00005517          	auipc	a0,0x5
    800011a4:	a1053503          	ld	a0,-1520(a0) # 80005bb0 <_GLOBAL_OFFSET_TABLE_+0x48>
    800011a8:	00000097          	auipc	ra,0x0
    800011ac:	528080e7          	jalr	1320(ra) # 800016d0 <_ZN3TCB12createThreadEPFvvE>
    800011b0:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    800011b4:	00004517          	auipc	a0,0x4
    800011b8:	e9c50513          	addi	a0,a0,-356 # 80005050 <CONSOLE_STATUS+0x40>
    800011bc:	00001097          	auipc	ra,0x1
    800011c0:	f1c080e7          	jalr	-228(ra) # 800020d8 <_Z11printStringPKc>
    threads[4] = TCB::createThread(workerBodyD);
    800011c4:	00005517          	auipc	a0,0x5
    800011c8:	9f453503          	ld	a0,-1548(a0) # 80005bb8 <_GLOBAL_OFFSET_TABLE_+0x50>
    800011cc:	00000097          	auipc	ra,0x0
    800011d0:	504080e7          	jalr	1284(ra) # 800016d0 <_ZN3TCB12createThreadEPFvvE>
    800011d4:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    800011d8:	00004517          	auipc	a0,0x4
    800011dc:	e9050513          	addi	a0,a0,-368 # 80005068 <CONSOLE_STATUS+0x58>
    800011e0:	00001097          	auipc	ra,0x1
    800011e4:	ef8080e7          	jalr	-264(ra) # 800020d8 <_Z11printStringPKc>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800011e8:	00005797          	auipc	a5,0x5
    800011ec:	9907b783          	ld	a5,-1648(a5) # 80005b78 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    80001204:	598080e7          	jalr	1432(ra) # 80001798 <_ZN3TCB5yieldEv>
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
    80001244:	00001097          	auipc	ra,0x1
    80001248:	bb4080e7          	jalr	-1100(ra) # 80001df8 <_ZdlPv>
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
    80001268:	00001097          	auipc	ra,0x1
    8000126c:	bb8080e7          	jalr	-1096(ra) # 80001e20 <_ZdaPv>
    80001270:	fd1ff06f          	j	80001240 <_Z5main2v+0x11c>
    }
    printString("Finished\n");
    80001274:	00004517          	auipc	a0,0x4
    80001278:	e0c50513          	addi	a0,a0,-500 # 80005080 <CONSOLE_STATUS+0x70>
    8000127c:	00001097          	auipc	ra,0x1
    80001280:	e5c080e7          	jalr	-420(ra) # 800020d8 <_Z11printStringPKc>

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
    8000130c:	490080e7          	jalr	1168(ra) # 80001798 <_ZN3TCB5yieldEv>
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
    80001364:	00004517          	auipc	a0,0x4
    80001368:	d2c50513          	addi	a0,a0,-724 # 80005090 <CONSOLE_STATUS+0x80>
    8000136c:	00001097          	auipc	ra,0x1
    80001370:	d6c080e7          	jalr	-660(ra) # 800020d8 <_Z11printStringPKc>
        printInteger(i);
    80001374:	00048513          	mv	a0,s1
    80001378:	00001097          	auipc	ra,0x1
    8000137c:	dd0080e7          	jalr	-560(ra) # 80002148 <_Z12printIntegerm>
        printString("\n");
    80001380:	00004517          	auipc	a0,0x4
    80001384:	d0850513          	addi	a0,a0,-760 # 80005088 <CONSOLE_STATUS+0x78>
    80001388:	00001097          	auipc	ra,0x1
    8000138c:	d50080e7          	jalr	-688(ra) # 800020d8 <_Z11printStringPKc>
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
    800013fc:	00004517          	auipc	a0,0x4
    80001400:	c9c50513          	addi	a0,a0,-868 # 80005098 <CONSOLE_STATUS+0x88>
    80001404:	00001097          	auipc	ra,0x1
    80001408:	cd4080e7          	jalr	-812(ra) # 800020d8 <_Z11printStringPKc>
        printInteger(i);
    8000140c:	00048513          	mv	a0,s1
    80001410:	00001097          	auipc	ra,0x1
    80001414:	d38080e7          	jalr	-712(ra) # 80002148 <_Z12printIntegerm>
        printString("\n");
    80001418:	00004517          	auipc	a0,0x4
    8000141c:	c7050513          	addi	a0,a0,-912 # 80005088 <CONSOLE_STATUS+0x78>
    80001420:	00001097          	auipc	ra,0x1
    80001424:	cb8080e7          	jalr	-840(ra) # 800020d8 <_Z11printStringPKc>
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
    80001464:	00004517          	auipc	a0,0x4
    80001468:	c3c50513          	addi	a0,a0,-964 # 800050a0 <CONSOLE_STATUS+0x90>
    8000146c:	00001097          	auipc	ra,0x1
    80001470:	c6c080e7          	jalr	-916(ra) # 800020d8 <_Z11printStringPKc>
        printInteger(i);
    80001474:	00048513          	mv	a0,s1
    80001478:	00001097          	auipc	ra,0x1
    8000147c:	cd0080e7          	jalr	-816(ra) # 80002148 <_Z12printIntegerm>
        printString("\n");
    80001480:	00004517          	auipc	a0,0x4
    80001484:	c0850513          	addi	a0,a0,-1016 # 80005088 <CONSOLE_STATUS+0x78>
    80001488:	00001097          	auipc	ra,0x1
    8000148c:	c50080e7          	jalr	-944(ra) # 800020d8 <_Z11printStringPKc>
    for (; i < 3; i++)
    80001490:	0014849b          	addiw	s1,s1,1
    80001494:	0ff4f493          	andi	s1,s1,255
    80001498:	00200793          	li	a5,2
    8000149c:	fc97f4e3          	bgeu	a5,s1,80001464 <_Z11workerBodyCv+0x20>
    }

    printString("C: yield\n");
    800014a0:	00004517          	auipc	a0,0x4
    800014a4:	c0850513          	addi	a0,a0,-1016 # 800050a8 <CONSOLE_STATUS+0x98>
    800014a8:	00001097          	auipc	ra,0x1
    800014ac:	c30080e7          	jalr	-976(ra) # 800020d8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800014b0:	00700313          	li	t1,7
    TCB::yield();
    800014b4:	00000097          	auipc	ra,0x0
    800014b8:	2e4080e7          	jalr	740(ra) # 80001798 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800014bc:	00030913          	mv	s2,t1

    printString("C: t1=");
    800014c0:	00004517          	auipc	a0,0x4
    800014c4:	bf850513          	addi	a0,a0,-1032 # 800050b8 <CONSOLE_STATUS+0xa8>
    800014c8:	00001097          	auipc	ra,0x1
    800014cc:	c10080e7          	jalr	-1008(ra) # 800020d8 <_Z11printStringPKc>
    printInteger(t1);
    800014d0:	00090513          	mv	a0,s2
    800014d4:	00001097          	auipc	ra,0x1
    800014d8:	c74080e7          	jalr	-908(ra) # 80002148 <_Z12printIntegerm>
    printString("\n");
    800014dc:	00004517          	auipc	a0,0x4
    800014e0:	bac50513          	addi	a0,a0,-1108 # 80005088 <CONSOLE_STATUS+0x78>
    800014e4:	00001097          	auipc	ra,0x1
    800014e8:	bf4080e7          	jalr	-1036(ra) # 800020d8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800014ec:	00c00513          	li	a0,12
    800014f0:	00000097          	auipc	ra,0x0
    800014f4:	db0080e7          	jalr	-592(ra) # 800012a0 <_ZL9fibonaccim>
    800014f8:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    800014fc:	00004517          	auipc	a0,0x4
    80001500:	bc450513          	addi	a0,a0,-1084 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001504:	00001097          	auipc	ra,0x1
    80001508:	bd4080e7          	jalr	-1068(ra) # 800020d8 <_Z11printStringPKc>
    printInteger(result);
    8000150c:	00090513          	mv	a0,s2
    80001510:	00001097          	auipc	ra,0x1
    80001514:	c38080e7          	jalr	-968(ra) # 80002148 <_Z12printIntegerm>
    printString("\n");
    80001518:	00004517          	auipc	a0,0x4
    8000151c:	b7050513          	addi	a0,a0,-1168 # 80005088 <CONSOLE_STATUS+0x78>
    80001520:	00001097          	auipc	ra,0x1
    80001524:	bb8080e7          	jalr	-1096(ra) # 800020d8 <_Z11printStringPKc>
    80001528:	0380006f          	j	80001560 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    8000152c:	00004517          	auipc	a0,0x4
    80001530:	b7450513          	addi	a0,a0,-1164 # 800050a0 <CONSOLE_STATUS+0x90>
    80001534:	00001097          	auipc	ra,0x1
    80001538:	ba4080e7          	jalr	-1116(ra) # 800020d8 <_Z11printStringPKc>
        printInteger(i);
    8000153c:	00048513          	mv	a0,s1
    80001540:	00001097          	auipc	ra,0x1
    80001544:	c08080e7          	jalr	-1016(ra) # 80002148 <_Z12printIntegerm>
        printString("\n");
    80001548:	00004517          	auipc	a0,0x4
    8000154c:	b4050513          	addi	a0,a0,-1216 # 80005088 <CONSOLE_STATUS+0x78>
    80001550:	00001097          	auipc	ra,0x1
    80001554:	b88080e7          	jalr	-1144(ra) # 800020d8 <_Z11printStringPKc>
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
    800015a0:	00004517          	auipc	a0,0x4
    800015a4:	b3050513          	addi	a0,a0,-1232 # 800050d0 <CONSOLE_STATUS+0xc0>
    800015a8:	00001097          	auipc	ra,0x1
    800015ac:	b30080e7          	jalr	-1232(ra) # 800020d8 <_Z11printStringPKc>
        printInteger(i);
    800015b0:	00048513          	mv	a0,s1
    800015b4:	00001097          	auipc	ra,0x1
    800015b8:	b94080e7          	jalr	-1132(ra) # 80002148 <_Z12printIntegerm>
        printString("\n");
    800015bc:	00004517          	auipc	a0,0x4
    800015c0:	acc50513          	addi	a0,a0,-1332 # 80005088 <CONSOLE_STATUS+0x78>
    800015c4:	00001097          	auipc	ra,0x1
    800015c8:	b14080e7          	jalr	-1260(ra) # 800020d8 <_Z11printStringPKc>
    for (; i < 13; i++)
    800015cc:	0014849b          	addiw	s1,s1,1
    800015d0:	0ff4f493          	andi	s1,s1,255
    800015d4:	00c00793          	li	a5,12
    800015d8:	fc97f4e3          	bgeu	a5,s1,800015a0 <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    800015dc:	00004517          	auipc	a0,0x4
    800015e0:	afc50513          	addi	a0,a0,-1284 # 800050d8 <CONSOLE_STATUS+0xc8>
    800015e4:	00001097          	auipc	ra,0x1
    800015e8:	af4080e7          	jalr	-1292(ra) # 800020d8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800015ec:	00500313          	li	t1,5
    TCB::yield();
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	1a8080e7          	jalr	424(ra) # 80001798 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    800015f8:	01000513          	li	a0,16
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	ca4080e7          	jalr	-860(ra) # 800012a0 <_ZL9fibonaccim>
    80001604:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001608:	00004517          	auipc	a0,0x4
    8000160c:	ae050513          	addi	a0,a0,-1312 # 800050e8 <CONSOLE_STATUS+0xd8>
    80001610:	00001097          	auipc	ra,0x1
    80001614:	ac8080e7          	jalr	-1336(ra) # 800020d8 <_Z11printStringPKc>
    printInteger(result);
    80001618:	00090513          	mv	a0,s2
    8000161c:	00001097          	auipc	ra,0x1
    80001620:	b2c080e7          	jalr	-1236(ra) # 80002148 <_Z12printIntegerm>
    printString("\n");
    80001624:	00004517          	auipc	a0,0x4
    80001628:	a6450513          	addi	a0,a0,-1436 # 80005088 <CONSOLE_STATUS+0x78>
    8000162c:	00001097          	auipc	ra,0x1
    80001630:	aac080e7          	jalr	-1364(ra) # 800020d8 <_Z11printStringPKc>
    80001634:	0380006f          	j	8000166c <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    80001638:	00004517          	auipc	a0,0x4
    8000163c:	a9850513          	addi	a0,a0,-1384 # 800050d0 <CONSOLE_STATUS+0xc0>
    80001640:	00001097          	auipc	ra,0x1
    80001644:	a98080e7          	jalr	-1384(ra) # 800020d8 <_Z11printStringPKc>
        printInteger(i);
    80001648:	00048513          	mv	a0,s1
    8000164c:	00001097          	auipc	ra,0x1
    80001650:	afc080e7          	jalr	-1284(ra) # 80002148 <_Z12printIntegerm>
        printString("\n");
    80001654:	00004517          	auipc	a0,0x4
    80001658:	a3450513          	addi	a0,a0,-1484 # 80005088 <CONSOLE_STATUS+0x78>
    8000165c:	00001097          	auipc	ra,0x1
    80001660:	a7c080e7          	jalr	-1412(ra) # 800020d8 <_Z11printStringPKc>
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

int main() {
    8000168c:	ff010113          	addi	sp,sp,-16
    80001690:	00113423          	sd	ra,8(sp)
    80001694:	00813023          	sd	s0,0(sp)
    80001698:	01010413          	addi	s0,sp,16

    MemoryAllocator::printMemorySpaceParamsToConsole();
    8000169c:	00000097          	auipc	ra,0x0
    800016a0:	43c080e7          	jalr	1084(ra) # 80001ad8 <_ZN15MemoryAllocator31printMemorySpaceParamsToConsoleEv>
    MemoryAllocator::instance()->printInstanceMemorySpaceParamsToConsole();
    800016a4:	00000097          	auipc	ra,0x0
    800016a8:	228080e7          	jalr	552(ra) # 800018cc <_ZN15MemoryAllocator8instanceEv>
    800016ac:	00000097          	auipc	ra,0x0
    800016b0:	270080e7          	jalr	624(ra) # 8000191c <_ZN15MemoryAllocator39printInstanceMemorySpaceParamsToConsoleEv>
    MemoryAllocator::printMemorySpaceParamsToConsole();
    800016b4:	00000097          	auipc	ra,0x0
    800016b8:	424080e7          	jalr	1060(ra) # 80001ad8 <_ZN15MemoryAllocator31printMemorySpaceParamsToConsoleEv>

    return 0;
    800016bc:	00000513          	li	a0,0
    800016c0:	00813083          	ld	ra,8(sp)
    800016c4:	00013403          	ld	s0,0(sp)
    800016c8:	01010113          	addi	sp,sp,16
    800016cc:	00008067          	ret

00000000800016d0 <_ZN3TCB12createThreadEPFvvE>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    800016d0:	fe010113          	addi	sp,sp,-32
    800016d4:	00113c23          	sd	ra,24(sp)
    800016d8:	00813823          	sd	s0,16(sp)
    800016dc:	00913423          	sd	s1,8(sp)
    800016e0:	01213023          	sd	s2,0(sp)
    800016e4:	02010413          	addi	s0,sp,32
    800016e8:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    800016ec:	03000513          	li	a0,48
    800016f0:	00000097          	auipc	ra,0x0
    800016f4:	6b8080e7          	jalr	1720(ra) # 80001da8 <_Znwm>
    800016f8:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    800016fc:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001700:	00090a63          	beqz	s2,80001714 <_ZN3TCB12createThreadEPFvvE+0x44>
    80001704:	00002537          	lui	a0,0x2
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	6c8080e7          	jalr	1736(ra) # 80001dd0 <_Znam>
    80001710:	0080006f          	j	80001718 <_ZN3TCB12createThreadEPFvvE+0x48>
    80001714:	00000513          	li	a0,0
            finished(false)
    80001718:	00a4b423          	sd	a0,8(s1)
    8000171c:	00000797          	auipc	a5,0x0
    80001720:	09878793          	addi	a5,a5,152 # 800017b4 <_ZN3TCB13threadWrapperEv>
    80001724:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001728:	02050863          	beqz	a0,80001758 <_ZN3TCB12createThreadEPFvvE+0x88>
    8000172c:	000027b7          	lui	a5,0x2
    80001730:	00f507b3          	add	a5,a0,a5
            finished(false)
    80001734:	00f4bc23          	sd	a5,24(s1)
    80001738:	00200793          	li	a5,2
    8000173c:	02f4b023          	sd	a5,32(s1)
    80001740:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001744:	02090c63          	beqz	s2,8000177c <_ZN3TCB12createThreadEPFvvE+0xac>
    80001748:	00048513          	mv	a0,s1
    8000174c:	00001097          	auipc	ra,0x1
    80001750:	8ec080e7          	jalr	-1812(ra) # 80002038 <_ZN9Scheduler3putEP3TCB>
    80001754:	0280006f          	j	8000177c <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001758:	00000793          	li	a5,0
    8000175c:	fd9ff06f          	j	80001734 <_ZN3TCB12createThreadEPFvvE+0x64>
    80001760:	00050913          	mv	s2,a0
    80001764:	00048513          	mv	a0,s1
    80001768:	00000097          	auipc	ra,0x0
    8000176c:	690080e7          	jalr	1680(ra) # 80001df8 <_ZdlPv>
    80001770:	00090513          	mv	a0,s2
    80001774:	00005097          	auipc	ra,0x5
    80001778:	5a4080e7          	jalr	1444(ra) # 80006d18 <_Unwind_Resume>
}
    8000177c:	00048513          	mv	a0,s1
    80001780:	01813083          	ld	ra,24(sp)
    80001784:	01013403          	ld	s0,16(sp)
    80001788:	00813483          	ld	s1,8(sp)
    8000178c:	00013903          	ld	s2,0(sp)
    80001790:	02010113          	addi	sp,sp,32
    80001794:	00008067          	ret

0000000080001798 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    80001798:	ff010113          	addi	sp,sp,-16
    8000179c:	00813423          	sd	s0,8(sp)
    800017a0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    800017a4:	00000073          	ecall
}
    800017a8:	00813403          	ld	s0,8(sp)
    800017ac:	01010113          	addi	sp,sp,16
    800017b0:	00008067          	ret

00000000800017b4 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    800017b4:	fe010113          	addi	sp,sp,-32
    800017b8:	00113c23          	sd	ra,24(sp)
    800017bc:	00813823          	sd	s0,16(sp)
    800017c0:	00913423          	sd	s1,8(sp)
    800017c4:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    800017c8:	00000097          	auipc	ra,0x0
    800017cc:	680080e7          	jalr	1664(ra) # 80001e48 <_ZN5Riscv10popSppSpieEv>
    running->body();
    800017d0:	00004497          	auipc	s1,0x4
    800017d4:	44048493          	addi	s1,s1,1088 # 80005c10 <_ZN3TCB7runningE>
    800017d8:	0004b783          	ld	a5,0(s1)
    800017dc:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    800017e0:	000780e7          	jalr	a5
    running->setFinished(true);
    800017e4:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    800017e8:	00100713          	li	a4,1
    800017ec:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    800017f0:	00000097          	auipc	ra,0x0
    800017f4:	fa8080e7          	jalr	-88(ra) # 80001798 <_ZN3TCB5yieldEv>
}
    800017f8:	01813083          	ld	ra,24(sp)
    800017fc:	01013403          	ld	s0,16(sp)
    80001800:	00813483          	ld	s1,8(sp)
    80001804:	02010113          	addi	sp,sp,32
    80001808:	00008067          	ret

000000008000180c <_ZN3TCB8dispatchEv>:
{
    8000180c:	fe010113          	addi	sp,sp,-32
    80001810:	00113c23          	sd	ra,24(sp)
    80001814:	00813823          	sd	s0,16(sp)
    80001818:	00913423          	sd	s1,8(sp)
    8000181c:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001820:	00004497          	auipc	s1,0x4
    80001824:	3f04b483          	ld	s1,1008(s1) # 80005c10 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001828:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    8000182c:	02078c63          	beqz	a5,80001864 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001830:	00000097          	auipc	ra,0x0
    80001834:	7a0080e7          	jalr	1952(ra) # 80001fd0 <_ZN9Scheduler3getEv>
    80001838:	00004797          	auipc	a5,0x4
    8000183c:	3ca7bc23          	sd	a0,984(a5) # 80005c10 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001840:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001844:	01048513          	addi	a0,s1,16
    80001848:	00000097          	auipc	ra,0x0
    8000184c:	8c8080e7          	jalr	-1848(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001850:	01813083          	ld	ra,24(sp)
    80001854:	01013403          	ld	s0,16(sp)
    80001858:	00813483          	ld	s1,8(sp)
    8000185c:	02010113          	addi	sp,sp,32
    80001860:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001864:	00048513          	mv	a0,s1
    80001868:	00000097          	auipc	ra,0x0
    8000186c:	7d0080e7          	jalr	2000(ra) # 80002038 <_ZN9Scheduler3putEP3TCB>
    80001870:	fc1ff06f          	j	80001830 <_ZN3TCB8dispatchEv+0x24>

0000000080001874 <_ZN15MemoryAllocator14createInstanceEv>:
    if (onlyInstance == nullptr)
        onlyInstance = createInstance();
    return onlyInstance;
}

MemoryAllocator* MemoryAllocator::createInstance() {
    80001874:	ff010113          	addi	sp,sp,-16
    80001878:	00813423          	sd	s0,8(sp)
    8000187c:	01010413          	addi	s0,sp,16
    managedMemorySpaceStart = (uint8*) HEAP_START_ADDR;
    80001880:	00004797          	auipc	a5,0x4
    80001884:	2f07b783          	ld	a5,752(a5) # 80005b70 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001888:	0007b503          	ld	a0,0(a5)
    managedMemorySpaceEnd = (uint8*) HEAP_END_ADDR;
    8000188c:	00004797          	auipc	a5,0x4
    80001890:	31c7b783          	ld	a5,796(a5) # 80005ba8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001894:	0007b783          	ld	a5,0(a5)
    80001898:	00004697          	auipc	a3,0x4
    8000189c:	38868693          	addi	a3,a3,904 # 80005c20 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    800018a0:	00f6b023          	sd	a5,0(a3)

    size_t noBlocksForStoringMemoryAllocator = sizeof(MemoryAllocator) / MEM_BLOCK_SIZE + 1;
    MemoryAllocator* newMemoryAllocator = (MemoryAllocator*)managedMemorySpaceStart;
    managedMemorySpaceStart += noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE;
    800018a4:	04050713          	addi	a4,a0,64
    800018a8:	00e6b423          	sd	a4,8(a3)

    newMemoryAllocator->totalTaken = 0;
    800018ac:	00053823          	sd	zero,16(a0)
    newMemoryAllocator->totalFree = (size_t) (managedMemorySpaceEnd - managedMemorySpaceStart); // free memory in Bytes
    800018b0:	40e787b3          	sub	a5,a5,a4
    800018b4:	00f53023          	sd	a5,0(a0)
    newMemoryAllocator->freeBlockNo = newMemoryAllocator->totalFree / MEM_BLOCK_SIZE;
    800018b8:	0067d793          	srli	a5,a5,0x6
    800018bc:	00f53423          	sd	a5,8(a0)

    return newMemoryAllocator;
}
    800018c0:	00813403          	ld	s0,8(sp)
    800018c4:	01010113          	addi	sp,sp,16
    800018c8:	00008067          	ret

00000000800018cc <_ZN15MemoryAllocator8instanceEv>:
    if (onlyInstance == nullptr)
    800018cc:	00004797          	auipc	a5,0x4
    800018d0:	3647b783          	ld	a5,868(a5) # 80005c30 <_ZN15MemoryAllocator12onlyInstanceE>
    800018d4:	00078863          	beqz	a5,800018e4 <_ZN15MemoryAllocator8instanceEv+0x18>
}
    800018d8:	00004517          	auipc	a0,0x4
    800018dc:	35853503          	ld	a0,856(a0) # 80005c30 <_ZN15MemoryAllocator12onlyInstanceE>
    800018e0:	00008067          	ret
MemoryAllocator* MemoryAllocator::instance() {
    800018e4:	ff010113          	addi	sp,sp,-16
    800018e8:	00113423          	sd	ra,8(sp)
    800018ec:	00813023          	sd	s0,0(sp)
    800018f0:	01010413          	addi	s0,sp,16
        onlyInstance = createInstance();
    800018f4:	00000097          	auipc	ra,0x0
    800018f8:	f80080e7          	jalr	-128(ra) # 80001874 <_ZN15MemoryAllocator14createInstanceEv>
    800018fc:	00004797          	auipc	a5,0x4
    80001900:	32a7ba23          	sd	a0,820(a5) # 80005c30 <_ZN15MemoryAllocator12onlyInstanceE>
}
    80001904:	00004517          	auipc	a0,0x4
    80001908:	32c53503          	ld	a0,812(a0) # 80005c30 <_ZN15MemoryAllocator12onlyInstanceE>
    8000190c:	00813083          	ld	ra,8(sp)
    80001910:	00013403          	ld	s0,0(sp)
    80001914:	01010113          	addi	sp,sp,16
    80001918:	00008067          	ret

000000008000191c <_ZN15MemoryAllocator39printInstanceMemorySpaceParamsToConsoleEv>:


void MemoryAllocator::printInstanceMemorySpaceParamsToConsole() {
    8000191c:	fe010113          	addi	sp,sp,-32
    80001920:	00113c23          	sd	ra,24(sp)
    80001924:	00813823          	sd	s0,16(sp)
    80001928:	00913423          	sd	s1,8(sp)
    8000192c:	01213023          	sd	s2,0(sp)
    80001930:	02010413          	addi	s0,sp,32
    80001934:	00050493          	mv	s1,a0
    printString("##################################\n\n");
    80001938:	00003517          	auipc	a0,0x3
    8000193c:	7c050513          	addi	a0,a0,1984 # 800050f8 <CONSOLE_STATUS+0xe8>
    80001940:	00000097          	auipc	ra,0x0
    80001944:	798080e7          	jalr	1944(ra) # 800020d8 <_Z11printStringPKc>
    printString("MemoryAllocator address: "); printInteger((uint64)this); printString("\n");
    80001948:	00003517          	auipc	a0,0x3
    8000194c:	7d850513          	addi	a0,a0,2008 # 80005120 <CONSOLE_STATUS+0x110>
    80001950:	00000097          	auipc	ra,0x0
    80001954:	788080e7          	jalr	1928(ra) # 800020d8 <_Z11printStringPKc>
    80001958:	00048513          	mv	a0,s1
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	7ec080e7          	jalr	2028(ra) # 80002148 <_Z12printIntegerm>
    80001964:	00003517          	auipc	a0,0x3
    80001968:	72450513          	addi	a0,a0,1828 # 80005088 <CONSOLE_STATUS+0x78>
    8000196c:	00000097          	auipc	ra,0x0
    80001970:	76c080e7          	jalr	1900(ra) # 800020d8 <_Z11printStringPKc>

    size_t noBlocksForStoringMemoryAllocator = sizeof(MemoryAllocator) / MEM_BLOCK_SIZE + 1;
    printString("noBlocksForStoringMemoryAllocator: ");
    80001974:	00003517          	auipc	a0,0x3
    80001978:	7cc50513          	addi	a0,a0,1996 # 80005140 <CONSOLE_STATUS+0x130>
    8000197c:	00000097          	auipc	ra,0x0
    80001980:	75c080e7          	jalr	1884(ra) # 800020d8 <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator); printString("\n");
    80001984:	00100513          	li	a0,1
    80001988:	00000097          	auipc	ra,0x0
    8000198c:	7c0080e7          	jalr	1984(ra) # 80002148 <_Z12printIntegerm>
    80001990:	00003517          	auipc	a0,0x3
    80001994:	6f850513          	addi	a0,a0,1784 # 80005088 <CONSOLE_STATUS+0x78>
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	740080e7          	jalr	1856(ra) # 800020d8 <_Z11printStringPKc>
    printString("noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE: ");
    800019a0:	00003517          	auipc	a0,0x3
    800019a4:	7c850513          	addi	a0,a0,1992 # 80005168 <CONSOLE_STATUS+0x158>
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	730080e7          	jalr	1840(ra) # 800020d8 <_Z11printStringPKc>
    printInteger(noBlocksForStoringMemoryAllocator * MEM_BLOCK_SIZE); printString("\n\n");
    800019b0:	04000513          	li	a0,64
    800019b4:	00000097          	auipc	ra,0x0
    800019b8:	794080e7          	jalr	1940(ra) # 80002148 <_Z12printIntegerm>
    800019bc:	00003517          	auipc	a0,0x3
    800019c0:	7e450513          	addi	a0,a0,2020 # 800051a0 <CONSOLE_STATUS+0x190>
    800019c4:	00000097          	auipc	ra,0x0
    800019c8:	714080e7          	jalr	1812(ra) # 800020d8 <_Z11printStringPKc>

    printString("Managed memory space start: ");
    800019cc:	00003517          	auipc	a0,0x3
    800019d0:	7dc50513          	addi	a0,a0,2012 # 800051a8 <CONSOLE_STATUS+0x198>
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	704080e7          	jalr	1796(ra) # 800020d8 <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceStart); printString("\n");
    800019dc:	00004917          	auipc	s2,0x4
    800019e0:	24490913          	addi	s2,s2,580 # 80005c20 <_ZN15MemoryAllocator21managedMemorySpaceEndE>
    800019e4:	00893503          	ld	a0,8(s2)
    800019e8:	00000097          	auipc	ra,0x0
    800019ec:	760080e7          	jalr	1888(ra) # 80002148 <_Z12printIntegerm>
    800019f0:	00003517          	auipc	a0,0x3
    800019f4:	69850513          	addi	a0,a0,1688 # 80005088 <CONSOLE_STATUS+0x78>
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	6e0080e7          	jalr	1760(ra) # 800020d8 <_Z11printStringPKc>
    printString("Managed memory space end: ");
    80001a00:	00003517          	auipc	a0,0x3
    80001a04:	7c850513          	addi	a0,a0,1992 # 800051c8 <CONSOLE_STATUS+0x1b8>
    80001a08:	00000097          	auipc	ra,0x0
    80001a0c:	6d0080e7          	jalr	1744(ra) # 800020d8 <_Z11printStringPKc>
    printInteger((uint64)managedMemorySpaceEnd); printString("\n\n");
    80001a10:	00093503          	ld	a0,0(s2)
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	734080e7          	jalr	1844(ra) # 80002148 <_Z12printIntegerm>
    80001a1c:	00003517          	auipc	a0,0x3
    80001a20:	78450513          	addi	a0,a0,1924 # 800051a0 <CONSOLE_STATUS+0x190>
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	6b4080e7          	jalr	1716(ra) # 800020d8 <_Z11printStringPKc>

    printString("Total Free: "); printInteger(getTotalFree()); printString("\n");
    80001a2c:	00003517          	auipc	a0,0x3
    80001a30:	7bc50513          	addi	a0,a0,1980 # 800051e8 <CONSOLE_STATUS+0x1d8>
    80001a34:	00000097          	auipc	ra,0x0
    80001a38:	6a4080e7          	jalr	1700(ra) # 800020d8 <_Z11printStringPKc>
    80001a3c:	0004b503          	ld	a0,0(s1)
    80001a40:	00000097          	auipc	ra,0x0
    80001a44:	708080e7          	jalr	1800(ra) # 80002148 <_Z12printIntegerm>
    80001a48:	00003517          	auipc	a0,0x3
    80001a4c:	64050513          	addi	a0,a0,1600 # 80005088 <CONSOLE_STATUS+0x78>
    80001a50:	00000097          	auipc	ra,0x0
    80001a54:	688080e7          	jalr	1672(ra) # 800020d8 <_Z11printStringPKc>
    printString("Total Taken: "); printInteger(getTotalTaken()); printString("\n");
    80001a58:	00003517          	auipc	a0,0x3
    80001a5c:	7a050513          	addi	a0,a0,1952 # 800051f8 <CONSOLE_STATUS+0x1e8>
    80001a60:	00000097          	auipc	ra,0x0
    80001a64:	678080e7          	jalr	1656(ra) # 800020d8 <_Z11printStringPKc>
    80001a68:	0104b503          	ld	a0,16(s1)
    80001a6c:	00000097          	auipc	ra,0x0
    80001a70:	6dc080e7          	jalr	1756(ra) # 80002148 <_Z12printIntegerm>
    80001a74:	00003517          	auipc	a0,0x3
    80001a78:	61450513          	addi	a0,a0,1556 # 80005088 <CONSOLE_STATUS+0x78>
    80001a7c:	00000097          	auipc	ra,0x0
    80001a80:	65c080e7          	jalr	1628(ra) # 800020d8 <_Z11printStringPKc>
    printString("Free Block No: "); printInteger(getFreeBlockNo()); printString("\n");
    80001a84:	00003517          	auipc	a0,0x3
    80001a88:	78450513          	addi	a0,a0,1924 # 80005208 <CONSOLE_STATUS+0x1f8>
    80001a8c:	00000097          	auipc	ra,0x0
    80001a90:	64c080e7          	jalr	1612(ra) # 800020d8 <_Z11printStringPKc>
    80001a94:	0084b503          	ld	a0,8(s1)
    80001a98:	00000097          	auipc	ra,0x0
    80001a9c:	6b0080e7          	jalr	1712(ra) # 80002148 <_Z12printIntegerm>
    80001aa0:	00003517          	auipc	a0,0x3
    80001aa4:	5e850513          	addi	a0,a0,1512 # 80005088 <CONSOLE_STATUS+0x78>
    80001aa8:	00000097          	auipc	ra,0x0
    80001aac:	630080e7          	jalr	1584(ra) # 800020d8 <_Z11printStringPKc>
    printString("\n##################################\n");
    80001ab0:	00003517          	auipc	a0,0x3
    80001ab4:	76850513          	addi	a0,a0,1896 # 80005218 <CONSOLE_STATUS+0x208>
    80001ab8:	00000097          	auipc	ra,0x0
    80001abc:	620080e7          	jalr	1568(ra) # 800020d8 <_Z11printStringPKc>
}
    80001ac0:	01813083          	ld	ra,24(sp)
    80001ac4:	01013403          	ld	s0,16(sp)
    80001ac8:	00813483          	ld	s1,8(sp)
    80001acc:	00013903          	ld	s2,0(sp)
    80001ad0:	02010113          	addi	sp,sp,32
    80001ad4:	00008067          	ret

0000000080001ad8 <_ZN15MemoryAllocator31printMemorySpaceParamsToConsoleEv>:

void MemoryAllocator::printMemorySpaceParamsToConsole() {
    80001ad8:	fe010113          	addi	sp,sp,-32
    80001adc:	00113c23          	sd	ra,24(sp)
    80001ae0:	00813823          	sd	s0,16(sp)
    80001ae4:	00913423          	sd	s1,8(sp)
    80001ae8:	01213023          	sd	s2,0(sp)
    80001aec:	02010413          	addi	s0,sp,32
    printString("----------------------------------\n\n");
    80001af0:	00003517          	auipc	a0,0x3
    80001af4:	75050513          	addi	a0,a0,1872 # 80005240 <CONSOLE_STATUS+0x230>
    80001af8:	00000097          	auipc	ra,0x0
    80001afc:	5e0080e7          	jalr	1504(ra) # 800020d8 <_Z11printStringPKc>
    printString("Size of MemoryAllocator class: ");
    80001b00:	00003517          	auipc	a0,0x3
    80001b04:	76850513          	addi	a0,a0,1896 # 80005268 <CONSOLE_STATUS+0x258>
    80001b08:	00000097          	auipc	ra,0x0
    80001b0c:	5d0080e7          	jalr	1488(ra) # 800020d8 <_Z11printStringPKc>
    printInteger(sizeof(MemoryAllocator)); printString("\n");
    80001b10:	01800513          	li	a0,24
    80001b14:	00000097          	auipc	ra,0x0
    80001b18:	634080e7          	jalr	1588(ra) # 80002148 <_Z12printIntegerm>
    80001b1c:	00003517          	auipc	a0,0x3
    80001b20:	56c50513          	addi	a0,a0,1388 # 80005088 <CONSOLE_STATUS+0x78>
    80001b24:	00000097          	auipc	ra,0x0
    80001b28:	5b4080e7          	jalr	1460(ra) # 800020d8 <_Z11printStringPKc>

    printString("HEAP_START_ADDR: "); printInteger((uint64)HEAP_START_ADDR); printString("\n");
    80001b2c:	00003517          	auipc	a0,0x3
    80001b30:	77c50513          	addi	a0,a0,1916 # 800052a8 <CONSOLE_STATUS+0x298>
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	5a4080e7          	jalr	1444(ra) # 800020d8 <_Z11printStringPKc>
    80001b3c:	00004497          	auipc	s1,0x4
    80001b40:	0344b483          	ld	s1,52(s1) # 80005b70 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001b44:	0004b503          	ld	a0,0(s1)
    80001b48:	00000097          	auipc	ra,0x0
    80001b4c:	600080e7          	jalr	1536(ra) # 80002148 <_Z12printIntegerm>
    80001b50:	00003517          	auipc	a0,0x3
    80001b54:	53850513          	addi	a0,a0,1336 # 80005088 <CONSOLE_STATUS+0x78>
    80001b58:	00000097          	auipc	ra,0x0
    80001b5c:	580080e7          	jalr	1408(ra) # 800020d8 <_Z11printStringPKc>
    printString("HEAP_END_ADDR: "); printInteger((uint64)HEAP_END_ADDR); printString("\n");
    80001b60:	00003517          	auipc	a0,0x3
    80001b64:	72850513          	addi	a0,a0,1832 # 80005288 <CONSOLE_STATUS+0x278>
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	570080e7          	jalr	1392(ra) # 800020d8 <_Z11printStringPKc>
    80001b70:	00004917          	auipc	s2,0x4
    80001b74:	03893903          	ld	s2,56(s2) # 80005ba8 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001b78:	00093503          	ld	a0,0(s2)
    80001b7c:	00000097          	auipc	ra,0x0
    80001b80:	5cc080e7          	jalr	1484(ra) # 80002148 <_Z12printIntegerm>
    80001b84:	00003517          	auipc	a0,0x3
    80001b88:	50450513          	addi	a0,a0,1284 # 80005088 <CONSOLE_STATUS+0x78>
    80001b8c:	00000097          	auipc	ra,0x0
    80001b90:	54c080e7          	jalr	1356(ra) # 800020d8 <_Z11printStringPKc>

    printString("HEAP_END_ADDR - HEAP_START_ADDR: ");
    80001b94:	00003517          	auipc	a0,0x3
    80001b98:	70450513          	addi	a0,a0,1796 # 80005298 <CONSOLE_STATUS+0x288>
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	53c080e7          	jalr	1340(ra) # 800020d8 <_Z11printStringPKc>
    printInteger((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)); printString("\n");
    80001ba4:	00093503          	ld	a0,0(s2)
    80001ba8:	0004b783          	ld	a5,0(s1)
    80001bac:	40f50533          	sub	a0,a0,a5
    80001bb0:	00000097          	auipc	ra,0x0
    80001bb4:	598080e7          	jalr	1432(ra) # 80002148 <_Z12printIntegerm>
    80001bb8:	00003517          	auipc	a0,0x3
    80001bbc:	4d050513          	addi	a0,a0,1232 # 80005088 <CONSOLE_STATUS+0x78>
    80001bc0:	00000097          	auipc	ra,0x0
    80001bc4:	518080e7          	jalr	1304(ra) # 800020d8 <_Z11printStringPKc>

    printString("MEM_BLOCK_SIZE: "); printInteger(MEM_BLOCK_SIZE); printString("\n");
    80001bc8:	00003517          	auipc	a0,0x3
    80001bcc:	6f850513          	addi	a0,a0,1784 # 800052c0 <CONSOLE_STATUS+0x2b0>
    80001bd0:	00000097          	auipc	ra,0x0
    80001bd4:	508080e7          	jalr	1288(ra) # 800020d8 <_Z11printStringPKc>
    80001bd8:	04000513          	li	a0,64
    80001bdc:	00000097          	auipc	ra,0x0
    80001be0:	56c080e7          	jalr	1388(ra) # 80002148 <_Z12printIntegerm>
    80001be4:	00003517          	auipc	a0,0x3
    80001be8:	4a450513          	addi	a0,a0,1188 # 80005088 <CONSOLE_STATUS+0x78>
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	4ec080e7          	jalr	1260(ra) # 800020d8 <_Z11printStringPKc>

    printString("Number of blocks in (HEAP_END_ADDR - HEAP_START_ADDR): ");
    80001bf4:	00003517          	auipc	a0,0x3
    80001bf8:	6e450513          	addi	a0,a0,1764 # 800052d8 <CONSOLE_STATUS+0x2c8>
    80001bfc:	00000097          	auipc	ra,0x0
    80001c00:	4dc080e7          	jalr	1244(ra) # 800020d8 <_Z11printStringPKc>
    printInteger(((size_t) ((uint8*) HEAP_END_ADDR - (uint8*) HEAP_START_ADDR)) / MEM_BLOCK_SIZE);
    80001c04:	00093503          	ld	a0,0(s2)
    80001c08:	0004b783          	ld	a5,0(s1)
    80001c0c:	40f50533          	sub	a0,a0,a5
    80001c10:	00655513          	srli	a0,a0,0x6
    80001c14:	00000097          	auipc	ra,0x0
    80001c18:	534080e7          	jalr	1332(ra) # 80002148 <_Z12printIntegerm>
    printString("\n");
    80001c1c:	00003517          	auipc	a0,0x3
    80001c20:	46c50513          	addi	a0,a0,1132 # 80005088 <CONSOLE_STATUS+0x78>
    80001c24:	00000097          	auipc	ra,0x0
    80001c28:	4b4080e7          	jalr	1204(ra) # 800020d8 <_Z11printStringPKc>
    printString("\n----------------------------------\n");
    80001c2c:	00003517          	auipc	a0,0x3
    80001c30:	6e450513          	addi	a0,a0,1764 # 80005310 <CONSOLE_STATUS+0x300>
    80001c34:	00000097          	auipc	ra,0x0
    80001c38:	4a4080e7          	jalr	1188(ra) # 800020d8 <_Z11printStringPKc>
}
    80001c3c:	01813083          	ld	ra,24(sp)
    80001c40:	01013403          	ld	s0,16(sp)
    80001c44:	00813483          	ld	s1,8(sp)
    80001c48:	00013903          	ld	s2,0(sp)
    80001c4c:	02010113          	addi	sp,sp,32
    80001c50:	00008067          	ret

0000000080001c54 <_ZN15MemoryAllocator10kmem_allocEm>:

void* MemoryAllocator::kmem_alloc(size_t size) {
    80001c54:	ff010113          	addi	sp,sp,-16
    80001c58:	00813423          	sd	s0,8(sp)
    80001c5c:	01010413          	addi	s0,sp,16
    return nullptr;
}
    80001c60:	00000513          	li	a0,0
    80001c64:	00813403          	ld	s0,8(sp)
    80001c68:	01010113          	addi	sp,sp,16
    80001c6c:	00008067          	ret

0000000080001c70 <_ZN15MemoryAllocator9kmem_freeEm>:

int MemoryAllocator::kmem_free(size_t size) {
    80001c70:	ff010113          	addi	sp,sp,-16
    80001c74:	00813423          	sd	s0,8(sp)
    80001c78:	01010413          	addi	s0,sp,16
    return 0;
}
    80001c7c:	00000513          	li	a0,0
    80001c80:	00813403          	ld	s0,8(sp)
    80001c84:	01010113          	addi	sp,sp,16
    80001c88:	00008067          	ret

0000000080001c8c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>:


    return true;
}

bool MemoryAllocatorTest::testMemoryAllocate(uint64 size, void** allocatedMemoryPointer) {
    80001c8c:	ff010113          	addi	sp,sp,-16
    80001c90:	00813423          	sd	s0,8(sp)
    80001c94:	01010413          	addi	s0,sp,16
    return true;
}
    80001c98:	00100513          	li	a0,1
    80001c9c:	00813403          	ld	s0,8(sp)
    80001ca0:	01010113          	addi	sp,sp,16
    80001ca4:	00008067          	ret

0000000080001ca8 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>:

bool MemoryAllocatorTest::testMemoryFree(uint64 size, void* allocatedMemoryPointer) {
    80001ca8:	ff010113          	addi	sp,sp,-16
    80001cac:	00813423          	sd	s0,8(sp)
    80001cb0:	01010413          	addi	s0,sp,16
    return true;
}
    80001cb4:	00100513          	li	a0,1
    80001cb8:	00813403          	ld	s0,8(sp)
    80001cbc:	01010113          	addi	sp,sp,16
    80001cc0:	00008067          	ret

0000000080001cc4 <_ZN19MemoryAllocatorTest12testFirstFitEv>:

bool MemoryAllocatorTest::testFirstFit() {
    80001cc4:	ff010113          	addi	sp,sp,-16
    80001cc8:	00813423          	sd	s0,8(sp)
    80001ccc:	01010413          	addi	s0,sp,16
    return true;
}
    80001cd0:	00100513          	li	a0,1
    80001cd4:	00813403          	ld	s0,8(sp)
    80001cd8:	01010113          	addi	sp,sp,16
    80001cdc:	00008067          	ret

0000000080001ce0 <_ZN19MemoryAllocatorTest8runTestsEv>:
bool MemoryAllocatorTest::runTests() {
    80001ce0:	fa010113          	addi	sp,sp,-96
    80001ce4:	04113c23          	sd	ra,88(sp)
    80001ce8:	04813823          	sd	s0,80(sp)
    80001cec:	04913423          	sd	s1,72(sp)
    80001cf0:	05213023          	sd	s2,64(sp)
    80001cf4:	03313c23          	sd	s3,56(sp)
    80001cf8:	06010413          	addi	s0,sp,96
    80001cfc:	00050913          	mv	s2,a0
    sizes[0] = 3.7 * MEM_BLOCK_SIZE;
    80001d00:	0ec00793          	li	a5,236
    80001d04:	faf43423          	sd	a5,-88(s0)
    sizes[1] = MEM_BLOCK_SIZE;
    80001d08:	04000793          	li	a5,64
    80001d0c:	faf43823          	sd	a5,-80(s0)
    sizes[2] = 0.3 * MEM_BLOCK_SIZE;
    80001d10:	01300793          	li	a5,19
    80001d14:	faf43c23          	sd	a5,-72(s0)
    sizes[3] = 0;
    80001d18:	fc043023          	sd	zero,-64(s0)
    sizes[4] = -37;
    80001d1c:	fdb00793          	li	a5,-37
    80001d20:	fcf43423          	sd	a5,-56(s0)
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    80001d24:	00000493          	li	s1,0
    80001d28:	00400793          	li	a5,4
    80001d2c:	0497ca63          	blt	a5,s1,80001d80 <_ZN19MemoryAllocatorTest8runTestsEv+0xa0>
        if (!testMemoryAllocate(sizes[i], &allocatedMemoryPointer)) return false;
    80001d30:	00349793          	slli	a5,s1,0x3
    80001d34:	fd040713          	addi	a4,s0,-48
    80001d38:	00f707b3          	add	a5,a4,a5
    80001d3c:	fd87b983          	ld	s3,-40(a5)
    80001d40:	fa040613          	addi	a2,s0,-96
    80001d44:	00098593          	mv	a1,s3
    80001d48:	00090513          	mv	a0,s2
    80001d4c:	00000097          	auipc	ra,0x0
    80001d50:	f40080e7          	jalr	-192(ra) # 80001c8c <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>
    80001d54:	02050263          	beqz	a0,80001d78 <_ZN19MemoryAllocatorTest8runTestsEv+0x98>
        if (!testMemoryFree(sizes[i], allocatedMemoryPointer)) return false;
    80001d58:	00000613          	li	a2,0
    80001d5c:	00098593          	mv	a1,s3
    80001d60:	00090513          	mv	a0,s2
    80001d64:	00000097          	auipc	ra,0x0
    80001d68:	f44080e7          	jalr	-188(ra) # 80001ca8 <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>
    80001d6c:	00050663          	beqz	a0,80001d78 <_ZN19MemoryAllocatorTest8runTestsEv+0x98>
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    80001d70:	0014849b          	addiw	s1,s1,1
    80001d74:	fb5ff06f          	j	80001d28 <_ZN19MemoryAllocatorTest8runTestsEv+0x48>
        if (!testMemoryAllocate(sizes[i], &allocatedMemoryPointer)) return false;
    80001d78:	00000513          	li	a0,0
    80001d7c:	0100006f          	j	80001d8c <_ZN19MemoryAllocatorTest8runTestsEv+0xac>
    if (!testFirstFit()) return false;
    80001d80:	00090513          	mv	a0,s2
    80001d84:	00000097          	auipc	ra,0x0
    80001d88:	f40080e7          	jalr	-192(ra) # 80001cc4 <_ZN19MemoryAllocatorTest12testFirstFitEv>
}
    80001d8c:	05813083          	ld	ra,88(sp)
    80001d90:	05013403          	ld	s0,80(sp)
    80001d94:	04813483          	ld	s1,72(sp)
    80001d98:	04013903          	ld	s2,64(sp)
    80001d9c:	03813983          	ld	s3,56(sp)
    80001da0:	06010113          	addi	sp,sp,96
    80001da4:	00008067          	ret

0000000080001da8 <_Znwm>:
#include "../lib/mem.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001da8:	ff010113          	addi	sp,sp,-16
    80001dac:	00113423          	sd	ra,8(sp)
    80001db0:	00813023          	sd	s0,0(sp)
    80001db4:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001db8:	00002097          	auipc	ra,0x2
    80001dbc:	600080e7          	jalr	1536(ra) # 800043b8 <__mem_alloc>
}
    80001dc0:	00813083          	ld	ra,8(sp)
    80001dc4:	00013403          	ld	s0,0(sp)
    80001dc8:	01010113          	addi	sp,sp,16
    80001dcc:	00008067          	ret

0000000080001dd0 <_Znam>:

void *operator new[](size_t n)
{
    80001dd0:	ff010113          	addi	sp,sp,-16
    80001dd4:	00113423          	sd	ra,8(sp)
    80001dd8:	00813023          	sd	s0,0(sp)
    80001ddc:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001de0:	00002097          	auipc	ra,0x2
    80001de4:	5d8080e7          	jalr	1496(ra) # 800043b8 <__mem_alloc>
}
    80001de8:	00813083          	ld	ra,8(sp)
    80001dec:	00013403          	ld	s0,0(sp)
    80001df0:	01010113          	addi	sp,sp,16
    80001df4:	00008067          	ret

0000000080001df8 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001df8:	ff010113          	addi	sp,sp,-16
    80001dfc:	00113423          	sd	ra,8(sp)
    80001e00:	00813023          	sd	s0,0(sp)
    80001e04:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001e08:	00002097          	auipc	ra,0x2
    80001e0c:	4e4080e7          	jalr	1252(ra) # 800042ec <__mem_free>
}
    80001e10:	00813083          	ld	ra,8(sp)
    80001e14:	00013403          	ld	s0,0(sp)
    80001e18:	01010113          	addi	sp,sp,16
    80001e1c:	00008067          	ret

0000000080001e20 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001e20:	ff010113          	addi	sp,sp,-16
    80001e24:	00113423          	sd	ra,8(sp)
    80001e28:	00813023          	sd	s0,0(sp)
    80001e2c:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001e30:	00002097          	auipc	ra,0x2
    80001e34:	4bc080e7          	jalr	1212(ra) # 800042ec <__mem_free>
    80001e38:	00813083          	ld	ra,8(sp)
    80001e3c:	00013403          	ld	s0,0(sp)
    80001e40:	01010113          	addi	sp,sp,16
    80001e44:	00008067          	ret

0000000080001e48 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"

void Riscv::popSppSpie()
{
    80001e48:	ff010113          	addi	sp,sp,-16
    80001e4c:	00813423          	sd	s0,8(sp)
    80001e50:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001e54:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001e58:	10200073          	sret
}
    80001e5c:	00813403          	ld	s0,8(sp)
    80001e60:	01010113          	addi	sp,sp,16
    80001e64:	00008067          	ret

0000000080001e68 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80001e68:	fa010113          	addi	sp,sp,-96
    80001e6c:	04113c23          	sd	ra,88(sp)
    80001e70:	04813823          	sd	s0,80(sp)
    80001e74:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001e78:	142027f3          	csrr	a5,scause
    80001e7c:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80001e80:	fc843703          	ld	a4,-56(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001e84:	ff870693          	addi	a3,a4,-8
    80001e88:	00100793          	li	a5,1
    80001e8c:	02d7fa63          	bgeu	a5,a3,80001ec0 <_ZN5Riscv20handleSupervisorTrapEv+0x58>
        TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80001e90:	fff00793          	li	a5,-1
    80001e94:	03f79793          	slli	a5,a5,0x3f
    80001e98:	00178793          	addi	a5,a5,1
    80001e9c:	06f70863          	beq	a4,a5,80001f0c <_ZN5Riscv20handleSupervisorTrapEv+0xa4>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80001ea0:	fff00793          	li	a5,-1
    80001ea4:	03f79793          	slli	a5,a5,0x3f
    80001ea8:	00978793          	addi	a5,a5,9
    80001eac:	0cf70c63          	beq	a4,a5,80001f84 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
    }
    else
    {
        // unexpected trap cause
    }
    80001eb0:	05813083          	ld	ra,88(sp)
    80001eb4:	05013403          	ld	s0,80(sp)
    80001eb8:	06010113          	addi	sp,sp,96
    80001ebc:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001ec0:	141027f3          	csrr	a5,sepc
    80001ec4:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001ec8:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80001ecc:	00478793          	addi	a5,a5,4
    80001ed0:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001ed4:	100027f3          	csrr	a5,sstatus
    80001ed8:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001edc:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80001ee0:	faf43823          	sd	a5,-80(s0)
        TCB::timeSliceCounter = 0;
    80001ee4:	00004797          	auipc	a5,0x4
    80001ee8:	ca47b783          	ld	a5,-860(a5) # 80005b88 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001eec:	0007b023          	sd	zero,0(a5)
        TCB::dispatch();
    80001ef0:	00000097          	auipc	ra,0x0
    80001ef4:	91c080e7          	jalr	-1764(ra) # 8000180c <_ZN3TCB8dispatchEv>
        w_sstatus(sstatus);
    80001ef8:	fb043783          	ld	a5,-80(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001efc:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001f00:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001f04:	14179073          	csrw	sepc,a5
}
    80001f08:	fa9ff06f          	j	80001eb0 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001f0c:	00200793          	li	a5,2
    80001f10:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80001f14:	00004717          	auipc	a4,0x4
    80001f18:	c7473703          	ld	a4,-908(a4) # 80005b88 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001f1c:	00073783          	ld	a5,0(a4)
    80001f20:	00178793          	addi	a5,a5,1
    80001f24:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80001f28:	00004717          	auipc	a4,0x4
    80001f2c:	c7873703          	ld	a4,-904(a4) # 80005ba0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001f30:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80001f34:	02073703          	ld	a4,32(a4)
    80001f38:	f6e7ece3          	bltu	a5,a4,80001eb0 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001f3c:	141027f3          	csrr	a5,sepc
    80001f40:	fef43423          	sd	a5,-24(s0)
    return sepc;
    80001f44:	fe843783          	ld	a5,-24(s0)
            uint64 volatile sepc = r_sepc();
    80001f48:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001f4c:	100027f3          	csrr	a5,sstatus
    80001f50:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    80001f54:	fe043783          	ld	a5,-32(s0)
            uint64 volatile sstatus = r_sstatus();
    80001f58:	fcf43023          	sd	a5,-64(s0)
            TCB::timeSliceCounter = 0;
    80001f5c:	00004797          	auipc	a5,0x4
    80001f60:	c2c7b783          	ld	a5,-980(a5) # 80005b88 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001f64:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001f68:	00000097          	auipc	ra,0x0
    80001f6c:	8a4080e7          	jalr	-1884(ra) # 8000180c <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80001f70:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001f74:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001f78:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001f7c:	14179073          	csrw	sepc,a5
}
    80001f80:	f31ff06f          	j	80001eb0 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
        console_handler();
    80001f84:	00002097          	auipc	ra,0x2
    80001f88:	600080e7          	jalr	1536(ra) # 80004584 <console_handler>
    80001f8c:	f25ff06f          	j	80001eb0 <_ZN5Riscv20handleSupervisorTrapEv+0x48>

0000000080001f90 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80001f90:	ff010113          	addi	sp,sp,-16
    80001f94:	00813423          	sd	s0,8(sp)
    80001f98:	01010413          	addi	s0,sp,16
    80001f9c:	00100793          	li	a5,1
    80001fa0:	00f50863          	beq	a0,a5,80001fb0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001fa4:	00813403          	ld	s0,8(sp)
    80001fa8:	01010113          	addi	sp,sp,16
    80001fac:	00008067          	ret
    80001fb0:	000107b7          	lui	a5,0x10
    80001fb4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001fb8:	fef596e3          	bne	a1,a5,80001fa4 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001fbc:	00004797          	auipc	a5,0x4
    80001fc0:	c7c78793          	addi	a5,a5,-900 # 80005c38 <_ZN9Scheduler16readyThreadQueueE>
    80001fc4:	0007b023          	sd	zero,0(a5)
    80001fc8:	0007b423          	sd	zero,8(a5)
    80001fcc:	fd9ff06f          	j	80001fa4 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001fd0 <_ZN9Scheduler3getEv>:
{
    80001fd0:	fe010113          	addi	sp,sp,-32
    80001fd4:	00113c23          	sd	ra,24(sp)
    80001fd8:	00813823          	sd	s0,16(sp)
    80001fdc:	00913423          	sd	s1,8(sp)
    80001fe0:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001fe4:	00004517          	auipc	a0,0x4
    80001fe8:	c5453503          	ld	a0,-940(a0) # 80005c38 <_ZN9Scheduler16readyThreadQueueE>
    80001fec:	04050263          	beqz	a0,80002030 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001ff0:	00853783          	ld	a5,8(a0)
    80001ff4:	00004717          	auipc	a4,0x4
    80001ff8:	c4f73223          	sd	a5,-956(a4) # 80005c38 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001ffc:	02078463          	beqz	a5,80002024 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80002000:	00053483          	ld	s1,0(a0)
        delete elem;
    80002004:	00000097          	auipc	ra,0x0
    80002008:	df4080e7          	jalr	-524(ra) # 80001df8 <_ZdlPv>
}
    8000200c:	00048513          	mv	a0,s1
    80002010:	01813083          	ld	ra,24(sp)
    80002014:	01013403          	ld	s0,16(sp)
    80002018:	00813483          	ld	s1,8(sp)
    8000201c:	02010113          	addi	sp,sp,32
    80002020:	00008067          	ret
        if (!head) { tail = 0; }
    80002024:	00004797          	auipc	a5,0x4
    80002028:	c007be23          	sd	zero,-996(a5) # 80005c40 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000202c:	fd5ff06f          	j	80002000 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002030:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80002034:	fd9ff06f          	j	8000200c <_ZN9Scheduler3getEv+0x3c>

0000000080002038 <_ZN9Scheduler3putEP3TCB>:
{
    80002038:	fe010113          	addi	sp,sp,-32
    8000203c:	00113c23          	sd	ra,24(sp)
    80002040:	00813823          	sd	s0,16(sp)
    80002044:	00913423          	sd	s1,8(sp)
    80002048:	02010413          	addi	s0,sp,32
    8000204c:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80002050:	01000513          	li	a0,16
    80002054:	00000097          	auipc	ra,0x0
    80002058:	d54080e7          	jalr	-684(ra) # 80001da8 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    8000205c:	00953023          	sd	s1,0(a0)
    80002060:	00053423          	sd	zero,8(a0)
        if (tail)
    80002064:	00004797          	auipc	a5,0x4
    80002068:	bdc7b783          	ld	a5,-1060(a5) # 80005c40 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000206c:	02078263          	beqz	a5,80002090 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002070:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002074:	00004797          	auipc	a5,0x4
    80002078:	bca7b623          	sd	a0,-1076(a5) # 80005c40 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000207c:	01813083          	ld	ra,24(sp)
    80002080:	01013403          	ld	s0,16(sp)
    80002084:	00813483          	ld	s1,8(sp)
    80002088:	02010113          	addi	sp,sp,32
    8000208c:	00008067          	ret
            head = tail = elem;
    80002090:	00004797          	auipc	a5,0x4
    80002094:	ba878793          	addi	a5,a5,-1112 # 80005c38 <_ZN9Scheduler16readyThreadQueueE>
    80002098:	00a7b423          	sd	a0,8(a5)
    8000209c:	00a7b023          	sd	a0,0(a5)
    800020a0:	fddff06f          	j	8000207c <_ZN9Scheduler3putEP3TCB+0x44>

00000000800020a4 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800020a4:	ff010113          	addi	sp,sp,-16
    800020a8:	00113423          	sd	ra,8(sp)
    800020ac:	00813023          	sd	s0,0(sp)
    800020b0:	01010413          	addi	s0,sp,16
    800020b4:	000105b7          	lui	a1,0x10
    800020b8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800020bc:	00100513          	li	a0,1
    800020c0:	00000097          	auipc	ra,0x0
    800020c4:	ed0080e7          	jalr	-304(ra) # 80001f90 <_Z41__static_initialization_and_destruction_0ii>
    800020c8:	00813083          	ld	ra,8(sp)
    800020cc:	00013403          	ld	s0,0(sp)
    800020d0:	01010113          	addi	sp,sp,16
    800020d4:	00008067          	ret

00000000800020d8 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    800020d8:	fd010113          	addi	sp,sp,-48
    800020dc:	02113423          	sd	ra,40(sp)
    800020e0:	02813023          	sd	s0,32(sp)
    800020e4:	00913c23          	sd	s1,24(sp)
    800020e8:	01213823          	sd	s2,16(sp)
    800020ec:	03010413          	addi	s0,sp,48
    800020f0:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800020f4:	100027f3          	csrr	a5,sstatus
    800020f8:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800020fc:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002100:	00200793          	li	a5,2
    80002104:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    while (*string != '\0') __putc(*string++);
    80002108:	0004c503          	lbu	a0,0(s1)
    8000210c:	00050a63          	beqz	a0,80002120 <_Z11printStringPKc+0x48>
    80002110:	00148493          	addi	s1,s1,1
    80002114:	00002097          	auipc	ra,0x2
    80002118:	3fc080e7          	jalr	1020(ra) # 80004510 <__putc>
    8000211c:	fedff06f          	j	80002108 <_Z11printStringPKc+0x30>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002120:	0009091b          	sext.w	s2,s2
    80002124:	00297913          	andi	s2,s2,2
    80002128:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000212c:	10092073          	csrs	sstatus,s2
}
    80002130:	02813083          	ld	ra,40(sp)
    80002134:	02013403          	ld	s0,32(sp)
    80002138:	01813483          	ld	s1,24(sp)
    8000213c:	01013903          	ld	s2,16(sp)
    80002140:	03010113          	addi	sp,sp,48
    80002144:	00008067          	ret

0000000080002148 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80002148:	fc010113          	addi	sp,sp,-64
    8000214c:	02113c23          	sd	ra,56(sp)
    80002150:	02813823          	sd	s0,48(sp)
    80002154:	02913423          	sd	s1,40(sp)
    80002158:	03213023          	sd	s2,32(sp)
    8000215c:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002160:	100027f3          	csrr	a5,sstatus
    80002164:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80002168:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000216c:	00200793          	li	a5,2
    80002170:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);

    static char digits[] = "0123456789";
    char buf[16]; int i = 0; uint64 x = integer;
    int neg = (integer & ((uint64)1 << 63)) != 0;
    80002174:	00050593          	mv	a1,a0

    if (neg) x = ~integer + 1;
    80002178:	06054463          	bltz	a0,800021e0 <_Z12printIntegerm+0x98>
{
    8000217c:	00000493          	li	s1,0

    do buf[i++] = digits[x % 10];
    80002180:	00a00713          	li	a4,10
    80002184:	02e57633          	remu	a2,a0,a4
    80002188:	00048693          	mv	a3,s1
    8000218c:	0014849b          	addiw	s1,s1,1
    80002190:	00003797          	auipc	a5,0x3
    80002194:	1a878793          	addi	a5,a5,424 # 80005338 <_ZZ12printIntegermE6digits>
    80002198:	00c787b3          	add	a5,a5,a2
    8000219c:	0007c603          	lbu	a2,0(a5)
    800021a0:	fe040793          	addi	a5,s0,-32
    800021a4:	00d787b3          	add	a5,a5,a3
    800021a8:	fec78823          	sb	a2,-16(a5)
    while ((x /= 10) != 0);
    800021ac:	00050613          	mv	a2,a0
    800021b0:	02e55533          	divu	a0,a0,a4
    800021b4:	00900793          	li	a5,9
    800021b8:	fcc7e4e3          	bltu	a5,a2,80002180 <_Z12printIntegerm+0x38>

    if (neg) buf[i++] = '-';
    800021bc:	0205c663          	bltz	a1,800021e8 <_Z12printIntegerm+0xa0>
    while (--i >= 0) { __putc(buf[i]); }
    800021c0:	fff4849b          	addiw	s1,s1,-1
    800021c4:	0204ce63          	bltz	s1,80002200 <_Z12printIntegerm+0xb8>
    800021c8:	fe040793          	addi	a5,s0,-32
    800021cc:	009787b3          	add	a5,a5,s1
    800021d0:	ff07c503          	lbu	a0,-16(a5)
    800021d4:	00002097          	auipc	ra,0x2
    800021d8:	33c080e7          	jalr	828(ra) # 80004510 <__putc>
    800021dc:	fe5ff06f          	j	800021c0 <_Z12printIntegerm+0x78>
    if (neg) x = ~integer + 1;
    800021e0:	40a00533          	neg	a0,a0
    800021e4:	f99ff06f          	j	8000217c <_Z12printIntegerm+0x34>
    if (neg) buf[i++] = '-';
    800021e8:	fe040793          	addi	a5,s0,-32
    800021ec:	009784b3          	add	s1,a5,s1
    800021f0:	02d00793          	li	a5,45
    800021f4:	fef48823          	sb	a5,-16(s1)
    800021f8:	0026849b          	addiw	s1,a3,2
    800021fc:	fc5ff06f          	j	800021c0 <_Z12printIntegerm+0x78>

    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80002200:	0009091b          	sext.w	s2,s2
    80002204:	00297913          	andi	s2,s2,2
    80002208:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000220c:	10092073          	csrs	sstatus,s2
}
    80002210:	03813083          	ld	ra,56(sp)
    80002214:	03013403          	ld	s0,48(sp)
    80002218:	02813483          	ld	s1,40(sp)
    8000221c:	02013903          	ld	s2,32(sp)
    80002220:	04010113          	addi	sp,sp,64
    80002224:	00008067          	ret

0000000080002228 <start>:
    80002228:	ff010113          	addi	sp,sp,-16
    8000222c:	00813423          	sd	s0,8(sp)
    80002230:	01010413          	addi	s0,sp,16
    80002234:	300027f3          	csrr	a5,mstatus
    80002238:	ffffe737          	lui	a4,0xffffe
    8000223c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff793f>
    80002240:	00e7f7b3          	and	a5,a5,a4
    80002244:	00001737          	lui	a4,0x1
    80002248:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000224c:	00e7e7b3          	or	a5,a5,a4
    80002250:	30079073          	csrw	mstatus,a5
    80002254:	00000797          	auipc	a5,0x0
    80002258:	16078793          	addi	a5,a5,352 # 800023b4 <system_main>
    8000225c:	34179073          	csrw	mepc,a5
    80002260:	00000793          	li	a5,0
    80002264:	18079073          	csrw	satp,a5
    80002268:	000107b7          	lui	a5,0x10
    8000226c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002270:	30279073          	csrw	medeleg,a5
    80002274:	30379073          	csrw	mideleg,a5
    80002278:	104027f3          	csrr	a5,sie
    8000227c:	2227e793          	ori	a5,a5,546
    80002280:	10479073          	csrw	sie,a5
    80002284:	fff00793          	li	a5,-1
    80002288:	00a7d793          	srli	a5,a5,0xa
    8000228c:	3b079073          	csrw	pmpaddr0,a5
    80002290:	00f00793          	li	a5,15
    80002294:	3a079073          	csrw	pmpcfg0,a5
    80002298:	f14027f3          	csrr	a5,mhartid
    8000229c:	0200c737          	lui	a4,0x200c
    800022a0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800022a4:	0007869b          	sext.w	a3,a5
    800022a8:	00269713          	slli	a4,a3,0x2
    800022ac:	000f4637          	lui	a2,0xf4
    800022b0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800022b4:	00d70733          	add	a4,a4,a3
    800022b8:	0037979b          	slliw	a5,a5,0x3
    800022bc:	020046b7          	lui	a3,0x2004
    800022c0:	00d787b3          	add	a5,a5,a3
    800022c4:	00c585b3          	add	a1,a1,a2
    800022c8:	00371693          	slli	a3,a4,0x3
    800022cc:	00004717          	auipc	a4,0x4
    800022d0:	98470713          	addi	a4,a4,-1660 # 80005c50 <timer_scratch>
    800022d4:	00b7b023          	sd	a1,0(a5)
    800022d8:	00d70733          	add	a4,a4,a3
    800022dc:	00f73c23          	sd	a5,24(a4)
    800022e0:	02c73023          	sd	a2,32(a4)
    800022e4:	34071073          	csrw	mscratch,a4
    800022e8:	00000797          	auipc	a5,0x0
    800022ec:	6e878793          	addi	a5,a5,1768 # 800029d0 <timervec>
    800022f0:	30579073          	csrw	mtvec,a5
    800022f4:	300027f3          	csrr	a5,mstatus
    800022f8:	0087e793          	ori	a5,a5,8
    800022fc:	30079073          	csrw	mstatus,a5
    80002300:	304027f3          	csrr	a5,mie
    80002304:	0807e793          	ori	a5,a5,128
    80002308:	30479073          	csrw	mie,a5
    8000230c:	f14027f3          	csrr	a5,mhartid
    80002310:	0007879b          	sext.w	a5,a5
    80002314:	00078213          	mv	tp,a5
    80002318:	30200073          	mret
    8000231c:	00813403          	ld	s0,8(sp)
    80002320:	01010113          	addi	sp,sp,16
    80002324:	00008067          	ret

0000000080002328 <timerinit>:
    80002328:	ff010113          	addi	sp,sp,-16
    8000232c:	00813423          	sd	s0,8(sp)
    80002330:	01010413          	addi	s0,sp,16
    80002334:	f14027f3          	csrr	a5,mhartid
    80002338:	0200c737          	lui	a4,0x200c
    8000233c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002340:	0007869b          	sext.w	a3,a5
    80002344:	00269713          	slli	a4,a3,0x2
    80002348:	000f4637          	lui	a2,0xf4
    8000234c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002350:	00d70733          	add	a4,a4,a3
    80002354:	0037979b          	slliw	a5,a5,0x3
    80002358:	020046b7          	lui	a3,0x2004
    8000235c:	00d787b3          	add	a5,a5,a3
    80002360:	00c585b3          	add	a1,a1,a2
    80002364:	00371693          	slli	a3,a4,0x3
    80002368:	00004717          	auipc	a4,0x4
    8000236c:	8e870713          	addi	a4,a4,-1816 # 80005c50 <timer_scratch>
    80002370:	00b7b023          	sd	a1,0(a5)
    80002374:	00d70733          	add	a4,a4,a3
    80002378:	00f73c23          	sd	a5,24(a4)
    8000237c:	02c73023          	sd	a2,32(a4)
    80002380:	34071073          	csrw	mscratch,a4
    80002384:	00000797          	auipc	a5,0x0
    80002388:	64c78793          	addi	a5,a5,1612 # 800029d0 <timervec>
    8000238c:	30579073          	csrw	mtvec,a5
    80002390:	300027f3          	csrr	a5,mstatus
    80002394:	0087e793          	ori	a5,a5,8
    80002398:	30079073          	csrw	mstatus,a5
    8000239c:	304027f3          	csrr	a5,mie
    800023a0:	0807e793          	ori	a5,a5,128
    800023a4:	30479073          	csrw	mie,a5
    800023a8:	00813403          	ld	s0,8(sp)
    800023ac:	01010113          	addi	sp,sp,16
    800023b0:	00008067          	ret

00000000800023b4 <system_main>:
    800023b4:	fe010113          	addi	sp,sp,-32
    800023b8:	00813823          	sd	s0,16(sp)
    800023bc:	00913423          	sd	s1,8(sp)
    800023c0:	00113c23          	sd	ra,24(sp)
    800023c4:	02010413          	addi	s0,sp,32
    800023c8:	00000097          	auipc	ra,0x0
    800023cc:	0c4080e7          	jalr	196(ra) # 8000248c <cpuid>
    800023d0:	00004497          	auipc	s1,0x4
    800023d4:	81048493          	addi	s1,s1,-2032 # 80005be0 <started>
    800023d8:	02050263          	beqz	a0,800023fc <system_main+0x48>
    800023dc:	0004a783          	lw	a5,0(s1)
    800023e0:	0007879b          	sext.w	a5,a5
    800023e4:	fe078ce3          	beqz	a5,800023dc <system_main+0x28>
    800023e8:	0ff0000f          	fence
    800023ec:	00003517          	auipc	a0,0x3
    800023f0:	f8c50513          	addi	a0,a0,-116 # 80005378 <_ZZ12printIntegermE6digits+0x40>
    800023f4:	00001097          	auipc	ra,0x1
    800023f8:	a78080e7          	jalr	-1416(ra) # 80002e6c <panic>
    800023fc:	00001097          	auipc	ra,0x1
    80002400:	9cc080e7          	jalr	-1588(ra) # 80002dc8 <consoleinit>
    80002404:	00001097          	auipc	ra,0x1
    80002408:	158080e7          	jalr	344(ra) # 8000355c <printfinit>
    8000240c:	00003517          	auipc	a0,0x3
    80002410:	c7c50513          	addi	a0,a0,-900 # 80005088 <CONSOLE_STATUS+0x78>
    80002414:	00001097          	auipc	ra,0x1
    80002418:	ab4080e7          	jalr	-1356(ra) # 80002ec8 <__printf>
    8000241c:	00003517          	auipc	a0,0x3
    80002420:	f2c50513          	addi	a0,a0,-212 # 80005348 <_ZZ12printIntegermE6digits+0x10>
    80002424:	00001097          	auipc	ra,0x1
    80002428:	aa4080e7          	jalr	-1372(ra) # 80002ec8 <__printf>
    8000242c:	00003517          	auipc	a0,0x3
    80002430:	c5c50513          	addi	a0,a0,-932 # 80005088 <CONSOLE_STATUS+0x78>
    80002434:	00001097          	auipc	ra,0x1
    80002438:	a94080e7          	jalr	-1388(ra) # 80002ec8 <__printf>
    8000243c:	00001097          	auipc	ra,0x1
    80002440:	4ac080e7          	jalr	1196(ra) # 800038e8 <kinit>
    80002444:	00000097          	auipc	ra,0x0
    80002448:	148080e7          	jalr	328(ra) # 8000258c <trapinit>
    8000244c:	00000097          	auipc	ra,0x0
    80002450:	16c080e7          	jalr	364(ra) # 800025b8 <trapinithart>
    80002454:	00000097          	auipc	ra,0x0
    80002458:	5bc080e7          	jalr	1468(ra) # 80002a10 <plicinit>
    8000245c:	00000097          	auipc	ra,0x0
    80002460:	5dc080e7          	jalr	1500(ra) # 80002a38 <plicinithart>
    80002464:	00000097          	auipc	ra,0x0
    80002468:	078080e7          	jalr	120(ra) # 800024dc <userinit>
    8000246c:	0ff0000f          	fence
    80002470:	00100793          	li	a5,1
    80002474:	00003517          	auipc	a0,0x3
    80002478:	eec50513          	addi	a0,a0,-276 # 80005360 <_ZZ12printIntegermE6digits+0x28>
    8000247c:	00f4a023          	sw	a5,0(s1)
    80002480:	00001097          	auipc	ra,0x1
    80002484:	a48080e7          	jalr	-1464(ra) # 80002ec8 <__printf>
    80002488:	0000006f          	j	80002488 <system_main+0xd4>

000000008000248c <cpuid>:
    8000248c:	ff010113          	addi	sp,sp,-16
    80002490:	00813423          	sd	s0,8(sp)
    80002494:	01010413          	addi	s0,sp,16
    80002498:	00020513          	mv	a0,tp
    8000249c:	00813403          	ld	s0,8(sp)
    800024a0:	0005051b          	sext.w	a0,a0
    800024a4:	01010113          	addi	sp,sp,16
    800024a8:	00008067          	ret

00000000800024ac <mycpu>:
    800024ac:	ff010113          	addi	sp,sp,-16
    800024b0:	00813423          	sd	s0,8(sp)
    800024b4:	01010413          	addi	s0,sp,16
    800024b8:	00020793          	mv	a5,tp
    800024bc:	00813403          	ld	s0,8(sp)
    800024c0:	0007879b          	sext.w	a5,a5
    800024c4:	00779793          	slli	a5,a5,0x7
    800024c8:	00004517          	auipc	a0,0x4
    800024cc:	7b850513          	addi	a0,a0,1976 # 80006c80 <cpus>
    800024d0:	00f50533          	add	a0,a0,a5
    800024d4:	01010113          	addi	sp,sp,16
    800024d8:	00008067          	ret

00000000800024dc <userinit>:
    800024dc:	ff010113          	addi	sp,sp,-16
    800024e0:	00813423          	sd	s0,8(sp)
    800024e4:	01010413          	addi	s0,sp,16
    800024e8:	00813403          	ld	s0,8(sp)
    800024ec:	01010113          	addi	sp,sp,16
    800024f0:	fffff317          	auipc	t1,0xfffff
    800024f4:	19c30067          	jr	412(t1) # 8000168c <main>

00000000800024f8 <either_copyout>:
    800024f8:	ff010113          	addi	sp,sp,-16
    800024fc:	00813023          	sd	s0,0(sp)
    80002500:	00113423          	sd	ra,8(sp)
    80002504:	01010413          	addi	s0,sp,16
    80002508:	02051663          	bnez	a0,80002534 <either_copyout+0x3c>
    8000250c:	00058513          	mv	a0,a1
    80002510:	00060593          	mv	a1,a2
    80002514:	0006861b          	sext.w	a2,a3
    80002518:	00002097          	auipc	ra,0x2
    8000251c:	c5c080e7          	jalr	-932(ra) # 80004174 <__memmove>
    80002520:	00813083          	ld	ra,8(sp)
    80002524:	00013403          	ld	s0,0(sp)
    80002528:	00000513          	li	a0,0
    8000252c:	01010113          	addi	sp,sp,16
    80002530:	00008067          	ret
    80002534:	00003517          	auipc	a0,0x3
    80002538:	e6c50513          	addi	a0,a0,-404 # 800053a0 <_ZZ12printIntegermE6digits+0x68>
    8000253c:	00001097          	auipc	ra,0x1
    80002540:	930080e7          	jalr	-1744(ra) # 80002e6c <panic>

0000000080002544 <either_copyin>:
    80002544:	ff010113          	addi	sp,sp,-16
    80002548:	00813023          	sd	s0,0(sp)
    8000254c:	00113423          	sd	ra,8(sp)
    80002550:	01010413          	addi	s0,sp,16
    80002554:	02059463          	bnez	a1,8000257c <either_copyin+0x38>
    80002558:	00060593          	mv	a1,a2
    8000255c:	0006861b          	sext.w	a2,a3
    80002560:	00002097          	auipc	ra,0x2
    80002564:	c14080e7          	jalr	-1004(ra) # 80004174 <__memmove>
    80002568:	00813083          	ld	ra,8(sp)
    8000256c:	00013403          	ld	s0,0(sp)
    80002570:	00000513          	li	a0,0
    80002574:	01010113          	addi	sp,sp,16
    80002578:	00008067          	ret
    8000257c:	00003517          	auipc	a0,0x3
    80002580:	e4c50513          	addi	a0,a0,-436 # 800053c8 <_ZZ12printIntegermE6digits+0x90>
    80002584:	00001097          	auipc	ra,0x1
    80002588:	8e8080e7          	jalr	-1816(ra) # 80002e6c <panic>

000000008000258c <trapinit>:
    8000258c:	ff010113          	addi	sp,sp,-16
    80002590:	00813423          	sd	s0,8(sp)
    80002594:	01010413          	addi	s0,sp,16
    80002598:	00813403          	ld	s0,8(sp)
    8000259c:	00003597          	auipc	a1,0x3
    800025a0:	e5458593          	addi	a1,a1,-428 # 800053f0 <_ZZ12printIntegermE6digits+0xb8>
    800025a4:	00004517          	auipc	a0,0x4
    800025a8:	75c50513          	addi	a0,a0,1884 # 80006d00 <tickslock>
    800025ac:	01010113          	addi	sp,sp,16
    800025b0:	00001317          	auipc	t1,0x1
    800025b4:	5c830067          	jr	1480(t1) # 80003b78 <initlock>

00000000800025b8 <trapinithart>:
    800025b8:	ff010113          	addi	sp,sp,-16
    800025bc:	00813423          	sd	s0,8(sp)
    800025c0:	01010413          	addi	s0,sp,16
    800025c4:	00000797          	auipc	a5,0x0
    800025c8:	2fc78793          	addi	a5,a5,764 # 800028c0 <kernelvec>
    800025cc:	10579073          	csrw	stvec,a5
    800025d0:	00813403          	ld	s0,8(sp)
    800025d4:	01010113          	addi	sp,sp,16
    800025d8:	00008067          	ret

00000000800025dc <usertrap>:
    800025dc:	ff010113          	addi	sp,sp,-16
    800025e0:	00813423          	sd	s0,8(sp)
    800025e4:	01010413          	addi	s0,sp,16
    800025e8:	00813403          	ld	s0,8(sp)
    800025ec:	01010113          	addi	sp,sp,16
    800025f0:	00008067          	ret

00000000800025f4 <usertrapret>:
    800025f4:	ff010113          	addi	sp,sp,-16
    800025f8:	00813423          	sd	s0,8(sp)
    800025fc:	01010413          	addi	s0,sp,16
    80002600:	00813403          	ld	s0,8(sp)
    80002604:	01010113          	addi	sp,sp,16
    80002608:	00008067          	ret

000000008000260c <kerneltrap>:
    8000260c:	fe010113          	addi	sp,sp,-32
    80002610:	00813823          	sd	s0,16(sp)
    80002614:	00113c23          	sd	ra,24(sp)
    80002618:	00913423          	sd	s1,8(sp)
    8000261c:	02010413          	addi	s0,sp,32
    80002620:	142025f3          	csrr	a1,scause
    80002624:	100027f3          	csrr	a5,sstatus
    80002628:	0027f793          	andi	a5,a5,2
    8000262c:	10079c63          	bnez	a5,80002744 <kerneltrap+0x138>
    80002630:	142027f3          	csrr	a5,scause
    80002634:	0207ce63          	bltz	a5,80002670 <kerneltrap+0x64>
    80002638:	00003517          	auipc	a0,0x3
    8000263c:	e0050513          	addi	a0,a0,-512 # 80005438 <_ZZ12printIntegermE6digits+0x100>
    80002640:	00001097          	auipc	ra,0x1
    80002644:	888080e7          	jalr	-1912(ra) # 80002ec8 <__printf>
    80002648:	141025f3          	csrr	a1,sepc
    8000264c:	14302673          	csrr	a2,stval
    80002650:	00003517          	auipc	a0,0x3
    80002654:	df850513          	addi	a0,a0,-520 # 80005448 <_ZZ12printIntegermE6digits+0x110>
    80002658:	00001097          	auipc	ra,0x1
    8000265c:	870080e7          	jalr	-1936(ra) # 80002ec8 <__printf>
    80002660:	00003517          	auipc	a0,0x3
    80002664:	e0050513          	addi	a0,a0,-512 # 80005460 <_ZZ12printIntegermE6digits+0x128>
    80002668:	00001097          	auipc	ra,0x1
    8000266c:	804080e7          	jalr	-2044(ra) # 80002e6c <panic>
    80002670:	0ff7f713          	andi	a4,a5,255
    80002674:	00900693          	li	a3,9
    80002678:	04d70063          	beq	a4,a3,800026b8 <kerneltrap+0xac>
    8000267c:	fff00713          	li	a4,-1
    80002680:	03f71713          	slli	a4,a4,0x3f
    80002684:	00170713          	addi	a4,a4,1
    80002688:	fae798e3          	bne	a5,a4,80002638 <kerneltrap+0x2c>
    8000268c:	00000097          	auipc	ra,0x0
    80002690:	e00080e7          	jalr	-512(ra) # 8000248c <cpuid>
    80002694:	06050663          	beqz	a0,80002700 <kerneltrap+0xf4>
    80002698:	144027f3          	csrr	a5,sip
    8000269c:	ffd7f793          	andi	a5,a5,-3
    800026a0:	14479073          	csrw	sip,a5
    800026a4:	01813083          	ld	ra,24(sp)
    800026a8:	01013403          	ld	s0,16(sp)
    800026ac:	00813483          	ld	s1,8(sp)
    800026b0:	02010113          	addi	sp,sp,32
    800026b4:	00008067          	ret
    800026b8:	00000097          	auipc	ra,0x0
    800026bc:	3cc080e7          	jalr	972(ra) # 80002a84 <plic_claim>
    800026c0:	00a00793          	li	a5,10
    800026c4:	00050493          	mv	s1,a0
    800026c8:	06f50863          	beq	a0,a5,80002738 <kerneltrap+0x12c>
    800026cc:	fc050ce3          	beqz	a0,800026a4 <kerneltrap+0x98>
    800026d0:	00050593          	mv	a1,a0
    800026d4:	00003517          	auipc	a0,0x3
    800026d8:	d4450513          	addi	a0,a0,-700 # 80005418 <_ZZ12printIntegermE6digits+0xe0>
    800026dc:	00000097          	auipc	ra,0x0
    800026e0:	7ec080e7          	jalr	2028(ra) # 80002ec8 <__printf>
    800026e4:	01013403          	ld	s0,16(sp)
    800026e8:	01813083          	ld	ra,24(sp)
    800026ec:	00048513          	mv	a0,s1
    800026f0:	00813483          	ld	s1,8(sp)
    800026f4:	02010113          	addi	sp,sp,32
    800026f8:	00000317          	auipc	t1,0x0
    800026fc:	3c430067          	jr	964(t1) # 80002abc <plic_complete>
    80002700:	00004517          	auipc	a0,0x4
    80002704:	60050513          	addi	a0,a0,1536 # 80006d00 <tickslock>
    80002708:	00001097          	auipc	ra,0x1
    8000270c:	494080e7          	jalr	1172(ra) # 80003b9c <acquire>
    80002710:	00003717          	auipc	a4,0x3
    80002714:	4d470713          	addi	a4,a4,1236 # 80005be4 <ticks>
    80002718:	00072783          	lw	a5,0(a4)
    8000271c:	00004517          	auipc	a0,0x4
    80002720:	5e450513          	addi	a0,a0,1508 # 80006d00 <tickslock>
    80002724:	0017879b          	addiw	a5,a5,1
    80002728:	00f72023          	sw	a5,0(a4)
    8000272c:	00001097          	auipc	ra,0x1
    80002730:	53c080e7          	jalr	1340(ra) # 80003c68 <release>
    80002734:	f65ff06f          	j	80002698 <kerneltrap+0x8c>
    80002738:	00001097          	auipc	ra,0x1
    8000273c:	098080e7          	jalr	152(ra) # 800037d0 <uartintr>
    80002740:	fa5ff06f          	j	800026e4 <kerneltrap+0xd8>
    80002744:	00003517          	auipc	a0,0x3
    80002748:	cb450513          	addi	a0,a0,-844 # 800053f8 <_ZZ12printIntegermE6digits+0xc0>
    8000274c:	00000097          	auipc	ra,0x0
    80002750:	720080e7          	jalr	1824(ra) # 80002e6c <panic>

0000000080002754 <clockintr>:
    80002754:	fe010113          	addi	sp,sp,-32
    80002758:	00813823          	sd	s0,16(sp)
    8000275c:	00913423          	sd	s1,8(sp)
    80002760:	00113c23          	sd	ra,24(sp)
    80002764:	02010413          	addi	s0,sp,32
    80002768:	00004497          	auipc	s1,0x4
    8000276c:	59848493          	addi	s1,s1,1432 # 80006d00 <tickslock>
    80002770:	00048513          	mv	a0,s1
    80002774:	00001097          	auipc	ra,0x1
    80002778:	428080e7          	jalr	1064(ra) # 80003b9c <acquire>
    8000277c:	00003717          	auipc	a4,0x3
    80002780:	46870713          	addi	a4,a4,1128 # 80005be4 <ticks>
    80002784:	00072783          	lw	a5,0(a4)
    80002788:	01013403          	ld	s0,16(sp)
    8000278c:	01813083          	ld	ra,24(sp)
    80002790:	00048513          	mv	a0,s1
    80002794:	0017879b          	addiw	a5,a5,1
    80002798:	00813483          	ld	s1,8(sp)
    8000279c:	00f72023          	sw	a5,0(a4)
    800027a0:	02010113          	addi	sp,sp,32
    800027a4:	00001317          	auipc	t1,0x1
    800027a8:	4c430067          	jr	1220(t1) # 80003c68 <release>

00000000800027ac <devintr>:
    800027ac:	142027f3          	csrr	a5,scause
    800027b0:	00000513          	li	a0,0
    800027b4:	0007c463          	bltz	a5,800027bc <devintr+0x10>
    800027b8:	00008067          	ret
    800027bc:	fe010113          	addi	sp,sp,-32
    800027c0:	00813823          	sd	s0,16(sp)
    800027c4:	00113c23          	sd	ra,24(sp)
    800027c8:	00913423          	sd	s1,8(sp)
    800027cc:	02010413          	addi	s0,sp,32
    800027d0:	0ff7f713          	andi	a4,a5,255
    800027d4:	00900693          	li	a3,9
    800027d8:	04d70c63          	beq	a4,a3,80002830 <devintr+0x84>
    800027dc:	fff00713          	li	a4,-1
    800027e0:	03f71713          	slli	a4,a4,0x3f
    800027e4:	00170713          	addi	a4,a4,1
    800027e8:	00e78c63          	beq	a5,a4,80002800 <devintr+0x54>
    800027ec:	01813083          	ld	ra,24(sp)
    800027f0:	01013403          	ld	s0,16(sp)
    800027f4:	00813483          	ld	s1,8(sp)
    800027f8:	02010113          	addi	sp,sp,32
    800027fc:	00008067          	ret
    80002800:	00000097          	auipc	ra,0x0
    80002804:	c8c080e7          	jalr	-884(ra) # 8000248c <cpuid>
    80002808:	06050663          	beqz	a0,80002874 <devintr+0xc8>
    8000280c:	144027f3          	csrr	a5,sip
    80002810:	ffd7f793          	andi	a5,a5,-3
    80002814:	14479073          	csrw	sip,a5
    80002818:	01813083          	ld	ra,24(sp)
    8000281c:	01013403          	ld	s0,16(sp)
    80002820:	00813483          	ld	s1,8(sp)
    80002824:	00200513          	li	a0,2
    80002828:	02010113          	addi	sp,sp,32
    8000282c:	00008067          	ret
    80002830:	00000097          	auipc	ra,0x0
    80002834:	254080e7          	jalr	596(ra) # 80002a84 <plic_claim>
    80002838:	00a00793          	li	a5,10
    8000283c:	00050493          	mv	s1,a0
    80002840:	06f50663          	beq	a0,a5,800028ac <devintr+0x100>
    80002844:	00100513          	li	a0,1
    80002848:	fa0482e3          	beqz	s1,800027ec <devintr+0x40>
    8000284c:	00048593          	mv	a1,s1
    80002850:	00003517          	auipc	a0,0x3
    80002854:	bc850513          	addi	a0,a0,-1080 # 80005418 <_ZZ12printIntegermE6digits+0xe0>
    80002858:	00000097          	auipc	ra,0x0
    8000285c:	670080e7          	jalr	1648(ra) # 80002ec8 <__printf>
    80002860:	00048513          	mv	a0,s1
    80002864:	00000097          	auipc	ra,0x0
    80002868:	258080e7          	jalr	600(ra) # 80002abc <plic_complete>
    8000286c:	00100513          	li	a0,1
    80002870:	f7dff06f          	j	800027ec <devintr+0x40>
    80002874:	00004517          	auipc	a0,0x4
    80002878:	48c50513          	addi	a0,a0,1164 # 80006d00 <tickslock>
    8000287c:	00001097          	auipc	ra,0x1
    80002880:	320080e7          	jalr	800(ra) # 80003b9c <acquire>
    80002884:	00003717          	auipc	a4,0x3
    80002888:	36070713          	addi	a4,a4,864 # 80005be4 <ticks>
    8000288c:	00072783          	lw	a5,0(a4)
    80002890:	00004517          	auipc	a0,0x4
    80002894:	47050513          	addi	a0,a0,1136 # 80006d00 <tickslock>
    80002898:	0017879b          	addiw	a5,a5,1
    8000289c:	00f72023          	sw	a5,0(a4)
    800028a0:	00001097          	auipc	ra,0x1
    800028a4:	3c8080e7          	jalr	968(ra) # 80003c68 <release>
    800028a8:	f65ff06f          	j	8000280c <devintr+0x60>
    800028ac:	00001097          	auipc	ra,0x1
    800028b0:	f24080e7          	jalr	-220(ra) # 800037d0 <uartintr>
    800028b4:	fadff06f          	j	80002860 <devintr+0xb4>
	...

00000000800028c0 <kernelvec>:
    800028c0:	f0010113          	addi	sp,sp,-256
    800028c4:	00113023          	sd	ra,0(sp)
    800028c8:	00213423          	sd	sp,8(sp)
    800028cc:	00313823          	sd	gp,16(sp)
    800028d0:	00413c23          	sd	tp,24(sp)
    800028d4:	02513023          	sd	t0,32(sp)
    800028d8:	02613423          	sd	t1,40(sp)
    800028dc:	02713823          	sd	t2,48(sp)
    800028e0:	02813c23          	sd	s0,56(sp)
    800028e4:	04913023          	sd	s1,64(sp)
    800028e8:	04a13423          	sd	a0,72(sp)
    800028ec:	04b13823          	sd	a1,80(sp)
    800028f0:	04c13c23          	sd	a2,88(sp)
    800028f4:	06d13023          	sd	a3,96(sp)
    800028f8:	06e13423          	sd	a4,104(sp)
    800028fc:	06f13823          	sd	a5,112(sp)
    80002900:	07013c23          	sd	a6,120(sp)
    80002904:	09113023          	sd	a7,128(sp)
    80002908:	09213423          	sd	s2,136(sp)
    8000290c:	09313823          	sd	s3,144(sp)
    80002910:	09413c23          	sd	s4,152(sp)
    80002914:	0b513023          	sd	s5,160(sp)
    80002918:	0b613423          	sd	s6,168(sp)
    8000291c:	0b713823          	sd	s7,176(sp)
    80002920:	0b813c23          	sd	s8,184(sp)
    80002924:	0d913023          	sd	s9,192(sp)
    80002928:	0da13423          	sd	s10,200(sp)
    8000292c:	0db13823          	sd	s11,208(sp)
    80002930:	0dc13c23          	sd	t3,216(sp)
    80002934:	0fd13023          	sd	t4,224(sp)
    80002938:	0fe13423          	sd	t5,232(sp)
    8000293c:	0ff13823          	sd	t6,240(sp)
    80002940:	ccdff0ef          	jal	ra,8000260c <kerneltrap>
    80002944:	00013083          	ld	ra,0(sp)
    80002948:	00813103          	ld	sp,8(sp)
    8000294c:	01013183          	ld	gp,16(sp)
    80002950:	02013283          	ld	t0,32(sp)
    80002954:	02813303          	ld	t1,40(sp)
    80002958:	03013383          	ld	t2,48(sp)
    8000295c:	03813403          	ld	s0,56(sp)
    80002960:	04013483          	ld	s1,64(sp)
    80002964:	04813503          	ld	a0,72(sp)
    80002968:	05013583          	ld	a1,80(sp)
    8000296c:	05813603          	ld	a2,88(sp)
    80002970:	06013683          	ld	a3,96(sp)
    80002974:	06813703          	ld	a4,104(sp)
    80002978:	07013783          	ld	a5,112(sp)
    8000297c:	07813803          	ld	a6,120(sp)
    80002980:	08013883          	ld	a7,128(sp)
    80002984:	08813903          	ld	s2,136(sp)
    80002988:	09013983          	ld	s3,144(sp)
    8000298c:	09813a03          	ld	s4,152(sp)
    80002990:	0a013a83          	ld	s5,160(sp)
    80002994:	0a813b03          	ld	s6,168(sp)
    80002998:	0b013b83          	ld	s7,176(sp)
    8000299c:	0b813c03          	ld	s8,184(sp)
    800029a0:	0c013c83          	ld	s9,192(sp)
    800029a4:	0c813d03          	ld	s10,200(sp)
    800029a8:	0d013d83          	ld	s11,208(sp)
    800029ac:	0d813e03          	ld	t3,216(sp)
    800029b0:	0e013e83          	ld	t4,224(sp)
    800029b4:	0e813f03          	ld	t5,232(sp)
    800029b8:	0f013f83          	ld	t6,240(sp)
    800029bc:	10010113          	addi	sp,sp,256
    800029c0:	10200073          	sret
    800029c4:	00000013          	nop
    800029c8:	00000013          	nop
    800029cc:	00000013          	nop

00000000800029d0 <timervec>:
    800029d0:	34051573          	csrrw	a0,mscratch,a0
    800029d4:	00b53023          	sd	a1,0(a0)
    800029d8:	00c53423          	sd	a2,8(a0)
    800029dc:	00d53823          	sd	a3,16(a0)
    800029e0:	01853583          	ld	a1,24(a0)
    800029e4:	02053603          	ld	a2,32(a0)
    800029e8:	0005b683          	ld	a3,0(a1)
    800029ec:	00c686b3          	add	a3,a3,a2
    800029f0:	00d5b023          	sd	a3,0(a1)
    800029f4:	00200593          	li	a1,2
    800029f8:	14459073          	csrw	sip,a1
    800029fc:	01053683          	ld	a3,16(a0)
    80002a00:	00853603          	ld	a2,8(a0)
    80002a04:	00053583          	ld	a1,0(a0)
    80002a08:	34051573          	csrrw	a0,mscratch,a0
    80002a0c:	30200073          	mret

0000000080002a10 <plicinit>:
    80002a10:	ff010113          	addi	sp,sp,-16
    80002a14:	00813423          	sd	s0,8(sp)
    80002a18:	01010413          	addi	s0,sp,16
    80002a1c:	00813403          	ld	s0,8(sp)
    80002a20:	0c0007b7          	lui	a5,0xc000
    80002a24:	00100713          	li	a4,1
    80002a28:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002a2c:	00e7a223          	sw	a4,4(a5)
    80002a30:	01010113          	addi	sp,sp,16
    80002a34:	00008067          	ret

0000000080002a38 <plicinithart>:
    80002a38:	ff010113          	addi	sp,sp,-16
    80002a3c:	00813023          	sd	s0,0(sp)
    80002a40:	00113423          	sd	ra,8(sp)
    80002a44:	01010413          	addi	s0,sp,16
    80002a48:	00000097          	auipc	ra,0x0
    80002a4c:	a44080e7          	jalr	-1468(ra) # 8000248c <cpuid>
    80002a50:	0085171b          	slliw	a4,a0,0x8
    80002a54:	0c0027b7          	lui	a5,0xc002
    80002a58:	00e787b3          	add	a5,a5,a4
    80002a5c:	40200713          	li	a4,1026
    80002a60:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002a64:	00813083          	ld	ra,8(sp)
    80002a68:	00013403          	ld	s0,0(sp)
    80002a6c:	00d5151b          	slliw	a0,a0,0xd
    80002a70:	0c2017b7          	lui	a5,0xc201
    80002a74:	00a78533          	add	a0,a5,a0
    80002a78:	00052023          	sw	zero,0(a0)
    80002a7c:	01010113          	addi	sp,sp,16
    80002a80:	00008067          	ret

0000000080002a84 <plic_claim>:
    80002a84:	ff010113          	addi	sp,sp,-16
    80002a88:	00813023          	sd	s0,0(sp)
    80002a8c:	00113423          	sd	ra,8(sp)
    80002a90:	01010413          	addi	s0,sp,16
    80002a94:	00000097          	auipc	ra,0x0
    80002a98:	9f8080e7          	jalr	-1544(ra) # 8000248c <cpuid>
    80002a9c:	00813083          	ld	ra,8(sp)
    80002aa0:	00013403          	ld	s0,0(sp)
    80002aa4:	00d5151b          	slliw	a0,a0,0xd
    80002aa8:	0c2017b7          	lui	a5,0xc201
    80002aac:	00a78533          	add	a0,a5,a0
    80002ab0:	00452503          	lw	a0,4(a0)
    80002ab4:	01010113          	addi	sp,sp,16
    80002ab8:	00008067          	ret

0000000080002abc <plic_complete>:
    80002abc:	fe010113          	addi	sp,sp,-32
    80002ac0:	00813823          	sd	s0,16(sp)
    80002ac4:	00913423          	sd	s1,8(sp)
    80002ac8:	00113c23          	sd	ra,24(sp)
    80002acc:	02010413          	addi	s0,sp,32
    80002ad0:	00050493          	mv	s1,a0
    80002ad4:	00000097          	auipc	ra,0x0
    80002ad8:	9b8080e7          	jalr	-1608(ra) # 8000248c <cpuid>
    80002adc:	01813083          	ld	ra,24(sp)
    80002ae0:	01013403          	ld	s0,16(sp)
    80002ae4:	00d5179b          	slliw	a5,a0,0xd
    80002ae8:	0c201737          	lui	a4,0xc201
    80002aec:	00f707b3          	add	a5,a4,a5
    80002af0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002af4:	00813483          	ld	s1,8(sp)
    80002af8:	02010113          	addi	sp,sp,32
    80002afc:	00008067          	ret

0000000080002b00 <consolewrite>:
    80002b00:	fb010113          	addi	sp,sp,-80
    80002b04:	04813023          	sd	s0,64(sp)
    80002b08:	04113423          	sd	ra,72(sp)
    80002b0c:	02913c23          	sd	s1,56(sp)
    80002b10:	03213823          	sd	s2,48(sp)
    80002b14:	03313423          	sd	s3,40(sp)
    80002b18:	03413023          	sd	s4,32(sp)
    80002b1c:	01513c23          	sd	s5,24(sp)
    80002b20:	05010413          	addi	s0,sp,80
    80002b24:	06c05c63          	blez	a2,80002b9c <consolewrite+0x9c>
    80002b28:	00060993          	mv	s3,a2
    80002b2c:	00050a13          	mv	s4,a0
    80002b30:	00058493          	mv	s1,a1
    80002b34:	00000913          	li	s2,0
    80002b38:	fff00a93          	li	s5,-1
    80002b3c:	01c0006f          	j	80002b58 <consolewrite+0x58>
    80002b40:	fbf44503          	lbu	a0,-65(s0)
    80002b44:	0019091b          	addiw	s2,s2,1
    80002b48:	00148493          	addi	s1,s1,1
    80002b4c:	00001097          	auipc	ra,0x1
    80002b50:	a9c080e7          	jalr	-1380(ra) # 800035e8 <uartputc>
    80002b54:	03298063          	beq	s3,s2,80002b74 <consolewrite+0x74>
    80002b58:	00048613          	mv	a2,s1
    80002b5c:	00100693          	li	a3,1
    80002b60:	000a0593          	mv	a1,s4
    80002b64:	fbf40513          	addi	a0,s0,-65
    80002b68:	00000097          	auipc	ra,0x0
    80002b6c:	9dc080e7          	jalr	-1572(ra) # 80002544 <either_copyin>
    80002b70:	fd5518e3          	bne	a0,s5,80002b40 <consolewrite+0x40>
    80002b74:	04813083          	ld	ra,72(sp)
    80002b78:	04013403          	ld	s0,64(sp)
    80002b7c:	03813483          	ld	s1,56(sp)
    80002b80:	02813983          	ld	s3,40(sp)
    80002b84:	02013a03          	ld	s4,32(sp)
    80002b88:	01813a83          	ld	s5,24(sp)
    80002b8c:	00090513          	mv	a0,s2
    80002b90:	03013903          	ld	s2,48(sp)
    80002b94:	05010113          	addi	sp,sp,80
    80002b98:	00008067          	ret
    80002b9c:	00000913          	li	s2,0
    80002ba0:	fd5ff06f          	j	80002b74 <consolewrite+0x74>

0000000080002ba4 <consoleread>:
    80002ba4:	f9010113          	addi	sp,sp,-112
    80002ba8:	06813023          	sd	s0,96(sp)
    80002bac:	04913c23          	sd	s1,88(sp)
    80002bb0:	05213823          	sd	s2,80(sp)
    80002bb4:	05313423          	sd	s3,72(sp)
    80002bb8:	05413023          	sd	s4,64(sp)
    80002bbc:	03513c23          	sd	s5,56(sp)
    80002bc0:	03613823          	sd	s6,48(sp)
    80002bc4:	03713423          	sd	s7,40(sp)
    80002bc8:	03813023          	sd	s8,32(sp)
    80002bcc:	06113423          	sd	ra,104(sp)
    80002bd0:	01913c23          	sd	s9,24(sp)
    80002bd4:	07010413          	addi	s0,sp,112
    80002bd8:	00060b93          	mv	s7,a2
    80002bdc:	00050913          	mv	s2,a0
    80002be0:	00058c13          	mv	s8,a1
    80002be4:	00060b1b          	sext.w	s6,a2
    80002be8:	00004497          	auipc	s1,0x4
    80002bec:	14048493          	addi	s1,s1,320 # 80006d28 <cons>
    80002bf0:	00400993          	li	s3,4
    80002bf4:	fff00a13          	li	s4,-1
    80002bf8:	00a00a93          	li	s5,10
    80002bfc:	05705e63          	blez	s7,80002c58 <consoleread+0xb4>
    80002c00:	09c4a703          	lw	a4,156(s1)
    80002c04:	0984a783          	lw	a5,152(s1)
    80002c08:	0007071b          	sext.w	a4,a4
    80002c0c:	08e78463          	beq	a5,a4,80002c94 <consoleread+0xf0>
    80002c10:	07f7f713          	andi	a4,a5,127
    80002c14:	00e48733          	add	a4,s1,a4
    80002c18:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002c1c:	0017869b          	addiw	a3,a5,1
    80002c20:	08d4ac23          	sw	a3,152(s1)
    80002c24:	00070c9b          	sext.w	s9,a4
    80002c28:	0b370663          	beq	a4,s3,80002cd4 <consoleread+0x130>
    80002c2c:	00100693          	li	a3,1
    80002c30:	f9f40613          	addi	a2,s0,-97
    80002c34:	000c0593          	mv	a1,s8
    80002c38:	00090513          	mv	a0,s2
    80002c3c:	f8e40fa3          	sb	a4,-97(s0)
    80002c40:	00000097          	auipc	ra,0x0
    80002c44:	8b8080e7          	jalr	-1864(ra) # 800024f8 <either_copyout>
    80002c48:	01450863          	beq	a0,s4,80002c58 <consoleread+0xb4>
    80002c4c:	001c0c13          	addi	s8,s8,1
    80002c50:	fffb8b9b          	addiw	s7,s7,-1
    80002c54:	fb5c94e3          	bne	s9,s5,80002bfc <consoleread+0x58>
    80002c58:	000b851b          	sext.w	a0,s7
    80002c5c:	06813083          	ld	ra,104(sp)
    80002c60:	06013403          	ld	s0,96(sp)
    80002c64:	05813483          	ld	s1,88(sp)
    80002c68:	05013903          	ld	s2,80(sp)
    80002c6c:	04813983          	ld	s3,72(sp)
    80002c70:	04013a03          	ld	s4,64(sp)
    80002c74:	03813a83          	ld	s5,56(sp)
    80002c78:	02813b83          	ld	s7,40(sp)
    80002c7c:	02013c03          	ld	s8,32(sp)
    80002c80:	01813c83          	ld	s9,24(sp)
    80002c84:	40ab053b          	subw	a0,s6,a0
    80002c88:	03013b03          	ld	s6,48(sp)
    80002c8c:	07010113          	addi	sp,sp,112
    80002c90:	00008067          	ret
    80002c94:	00001097          	auipc	ra,0x1
    80002c98:	1d8080e7          	jalr	472(ra) # 80003e6c <push_on>
    80002c9c:	0984a703          	lw	a4,152(s1)
    80002ca0:	09c4a783          	lw	a5,156(s1)
    80002ca4:	0007879b          	sext.w	a5,a5
    80002ca8:	fef70ce3          	beq	a4,a5,80002ca0 <consoleread+0xfc>
    80002cac:	00001097          	auipc	ra,0x1
    80002cb0:	234080e7          	jalr	564(ra) # 80003ee0 <pop_on>
    80002cb4:	0984a783          	lw	a5,152(s1)
    80002cb8:	07f7f713          	andi	a4,a5,127
    80002cbc:	00e48733          	add	a4,s1,a4
    80002cc0:	01874703          	lbu	a4,24(a4)
    80002cc4:	0017869b          	addiw	a3,a5,1
    80002cc8:	08d4ac23          	sw	a3,152(s1)
    80002ccc:	00070c9b          	sext.w	s9,a4
    80002cd0:	f5371ee3          	bne	a4,s3,80002c2c <consoleread+0x88>
    80002cd4:	000b851b          	sext.w	a0,s7
    80002cd8:	f96bf2e3          	bgeu	s7,s6,80002c5c <consoleread+0xb8>
    80002cdc:	08f4ac23          	sw	a5,152(s1)
    80002ce0:	f7dff06f          	j	80002c5c <consoleread+0xb8>

0000000080002ce4 <consputc>:
    80002ce4:	10000793          	li	a5,256
    80002ce8:	00f50663          	beq	a0,a5,80002cf4 <consputc+0x10>
    80002cec:	00001317          	auipc	t1,0x1
    80002cf0:	9f430067          	jr	-1548(t1) # 800036e0 <uartputc_sync>
    80002cf4:	ff010113          	addi	sp,sp,-16
    80002cf8:	00113423          	sd	ra,8(sp)
    80002cfc:	00813023          	sd	s0,0(sp)
    80002d00:	01010413          	addi	s0,sp,16
    80002d04:	00800513          	li	a0,8
    80002d08:	00001097          	auipc	ra,0x1
    80002d0c:	9d8080e7          	jalr	-1576(ra) # 800036e0 <uartputc_sync>
    80002d10:	02000513          	li	a0,32
    80002d14:	00001097          	auipc	ra,0x1
    80002d18:	9cc080e7          	jalr	-1588(ra) # 800036e0 <uartputc_sync>
    80002d1c:	00013403          	ld	s0,0(sp)
    80002d20:	00813083          	ld	ra,8(sp)
    80002d24:	00800513          	li	a0,8
    80002d28:	01010113          	addi	sp,sp,16
    80002d2c:	00001317          	auipc	t1,0x1
    80002d30:	9b430067          	jr	-1612(t1) # 800036e0 <uartputc_sync>

0000000080002d34 <consoleintr>:
    80002d34:	fe010113          	addi	sp,sp,-32
    80002d38:	00813823          	sd	s0,16(sp)
    80002d3c:	00913423          	sd	s1,8(sp)
    80002d40:	01213023          	sd	s2,0(sp)
    80002d44:	00113c23          	sd	ra,24(sp)
    80002d48:	02010413          	addi	s0,sp,32
    80002d4c:	00004917          	auipc	s2,0x4
    80002d50:	fdc90913          	addi	s2,s2,-36 # 80006d28 <cons>
    80002d54:	00050493          	mv	s1,a0
    80002d58:	00090513          	mv	a0,s2
    80002d5c:	00001097          	auipc	ra,0x1
    80002d60:	e40080e7          	jalr	-448(ra) # 80003b9c <acquire>
    80002d64:	02048c63          	beqz	s1,80002d9c <consoleintr+0x68>
    80002d68:	0a092783          	lw	a5,160(s2)
    80002d6c:	09892703          	lw	a4,152(s2)
    80002d70:	07f00693          	li	a3,127
    80002d74:	40e7873b          	subw	a4,a5,a4
    80002d78:	02e6e263          	bltu	a3,a4,80002d9c <consoleintr+0x68>
    80002d7c:	00d00713          	li	a4,13
    80002d80:	04e48063          	beq	s1,a4,80002dc0 <consoleintr+0x8c>
    80002d84:	07f7f713          	andi	a4,a5,127
    80002d88:	00e90733          	add	a4,s2,a4
    80002d8c:	0017879b          	addiw	a5,a5,1
    80002d90:	0af92023          	sw	a5,160(s2)
    80002d94:	00970c23          	sb	s1,24(a4)
    80002d98:	08f92e23          	sw	a5,156(s2)
    80002d9c:	01013403          	ld	s0,16(sp)
    80002da0:	01813083          	ld	ra,24(sp)
    80002da4:	00813483          	ld	s1,8(sp)
    80002da8:	00013903          	ld	s2,0(sp)
    80002dac:	00004517          	auipc	a0,0x4
    80002db0:	f7c50513          	addi	a0,a0,-132 # 80006d28 <cons>
    80002db4:	02010113          	addi	sp,sp,32
    80002db8:	00001317          	auipc	t1,0x1
    80002dbc:	eb030067          	jr	-336(t1) # 80003c68 <release>
    80002dc0:	00a00493          	li	s1,10
    80002dc4:	fc1ff06f          	j	80002d84 <consoleintr+0x50>

0000000080002dc8 <consoleinit>:
    80002dc8:	fe010113          	addi	sp,sp,-32
    80002dcc:	00113c23          	sd	ra,24(sp)
    80002dd0:	00813823          	sd	s0,16(sp)
    80002dd4:	00913423          	sd	s1,8(sp)
    80002dd8:	02010413          	addi	s0,sp,32
    80002ddc:	00004497          	auipc	s1,0x4
    80002de0:	f4c48493          	addi	s1,s1,-180 # 80006d28 <cons>
    80002de4:	00048513          	mv	a0,s1
    80002de8:	00002597          	auipc	a1,0x2
    80002dec:	68858593          	addi	a1,a1,1672 # 80005470 <_ZZ12printIntegermE6digits+0x138>
    80002df0:	00001097          	auipc	ra,0x1
    80002df4:	d88080e7          	jalr	-632(ra) # 80003b78 <initlock>
    80002df8:	00000097          	auipc	ra,0x0
    80002dfc:	7ac080e7          	jalr	1964(ra) # 800035a4 <uartinit>
    80002e00:	01813083          	ld	ra,24(sp)
    80002e04:	01013403          	ld	s0,16(sp)
    80002e08:	00000797          	auipc	a5,0x0
    80002e0c:	d9c78793          	addi	a5,a5,-612 # 80002ba4 <consoleread>
    80002e10:	0af4bc23          	sd	a5,184(s1)
    80002e14:	00000797          	auipc	a5,0x0
    80002e18:	cec78793          	addi	a5,a5,-788 # 80002b00 <consolewrite>
    80002e1c:	0cf4b023          	sd	a5,192(s1)
    80002e20:	00813483          	ld	s1,8(sp)
    80002e24:	02010113          	addi	sp,sp,32
    80002e28:	00008067          	ret

0000000080002e2c <console_read>:
    80002e2c:	ff010113          	addi	sp,sp,-16
    80002e30:	00813423          	sd	s0,8(sp)
    80002e34:	01010413          	addi	s0,sp,16
    80002e38:	00813403          	ld	s0,8(sp)
    80002e3c:	00004317          	auipc	t1,0x4
    80002e40:	fa433303          	ld	t1,-92(t1) # 80006de0 <devsw+0x10>
    80002e44:	01010113          	addi	sp,sp,16
    80002e48:	00030067          	jr	t1

0000000080002e4c <console_write>:
    80002e4c:	ff010113          	addi	sp,sp,-16
    80002e50:	00813423          	sd	s0,8(sp)
    80002e54:	01010413          	addi	s0,sp,16
    80002e58:	00813403          	ld	s0,8(sp)
    80002e5c:	00004317          	auipc	t1,0x4
    80002e60:	f8c33303          	ld	t1,-116(t1) # 80006de8 <devsw+0x18>
    80002e64:	01010113          	addi	sp,sp,16
    80002e68:	00030067          	jr	t1

0000000080002e6c <panic>:
    80002e6c:	fe010113          	addi	sp,sp,-32
    80002e70:	00113c23          	sd	ra,24(sp)
    80002e74:	00813823          	sd	s0,16(sp)
    80002e78:	00913423          	sd	s1,8(sp)
    80002e7c:	02010413          	addi	s0,sp,32
    80002e80:	00050493          	mv	s1,a0
    80002e84:	00002517          	auipc	a0,0x2
    80002e88:	5f450513          	addi	a0,a0,1524 # 80005478 <_ZZ12printIntegermE6digits+0x140>
    80002e8c:	00004797          	auipc	a5,0x4
    80002e90:	fe07ae23          	sw	zero,-4(a5) # 80006e88 <pr+0x18>
    80002e94:	00000097          	auipc	ra,0x0
    80002e98:	034080e7          	jalr	52(ra) # 80002ec8 <__printf>
    80002e9c:	00048513          	mv	a0,s1
    80002ea0:	00000097          	auipc	ra,0x0
    80002ea4:	028080e7          	jalr	40(ra) # 80002ec8 <__printf>
    80002ea8:	00002517          	auipc	a0,0x2
    80002eac:	1e050513          	addi	a0,a0,480 # 80005088 <CONSOLE_STATUS+0x78>
    80002eb0:	00000097          	auipc	ra,0x0
    80002eb4:	018080e7          	jalr	24(ra) # 80002ec8 <__printf>
    80002eb8:	00100793          	li	a5,1
    80002ebc:	00003717          	auipc	a4,0x3
    80002ec0:	d2f72623          	sw	a5,-724(a4) # 80005be8 <panicked>
    80002ec4:	0000006f          	j	80002ec4 <panic+0x58>

0000000080002ec8 <__printf>:
    80002ec8:	f3010113          	addi	sp,sp,-208
    80002ecc:	08813023          	sd	s0,128(sp)
    80002ed0:	07313423          	sd	s3,104(sp)
    80002ed4:	09010413          	addi	s0,sp,144
    80002ed8:	05813023          	sd	s8,64(sp)
    80002edc:	08113423          	sd	ra,136(sp)
    80002ee0:	06913c23          	sd	s1,120(sp)
    80002ee4:	07213823          	sd	s2,112(sp)
    80002ee8:	07413023          	sd	s4,96(sp)
    80002eec:	05513c23          	sd	s5,88(sp)
    80002ef0:	05613823          	sd	s6,80(sp)
    80002ef4:	05713423          	sd	s7,72(sp)
    80002ef8:	03913c23          	sd	s9,56(sp)
    80002efc:	03a13823          	sd	s10,48(sp)
    80002f00:	03b13423          	sd	s11,40(sp)
    80002f04:	00004317          	auipc	t1,0x4
    80002f08:	f6c30313          	addi	t1,t1,-148 # 80006e70 <pr>
    80002f0c:	01832c03          	lw	s8,24(t1)
    80002f10:	00b43423          	sd	a1,8(s0)
    80002f14:	00c43823          	sd	a2,16(s0)
    80002f18:	00d43c23          	sd	a3,24(s0)
    80002f1c:	02e43023          	sd	a4,32(s0)
    80002f20:	02f43423          	sd	a5,40(s0)
    80002f24:	03043823          	sd	a6,48(s0)
    80002f28:	03143c23          	sd	a7,56(s0)
    80002f2c:	00050993          	mv	s3,a0
    80002f30:	4a0c1663          	bnez	s8,800033dc <__printf+0x514>
    80002f34:	60098c63          	beqz	s3,8000354c <__printf+0x684>
    80002f38:	0009c503          	lbu	a0,0(s3)
    80002f3c:	00840793          	addi	a5,s0,8
    80002f40:	f6f43c23          	sd	a5,-136(s0)
    80002f44:	00000493          	li	s1,0
    80002f48:	22050063          	beqz	a0,80003168 <__printf+0x2a0>
    80002f4c:	00002a37          	lui	s4,0x2
    80002f50:	00018ab7          	lui	s5,0x18
    80002f54:	000f4b37          	lui	s6,0xf4
    80002f58:	00989bb7          	lui	s7,0x989
    80002f5c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002f60:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002f64:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002f68:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002f6c:	00148c9b          	addiw	s9,s1,1
    80002f70:	02500793          	li	a5,37
    80002f74:	01998933          	add	s2,s3,s9
    80002f78:	38f51263          	bne	a0,a5,800032fc <__printf+0x434>
    80002f7c:	00094783          	lbu	a5,0(s2)
    80002f80:	00078c9b          	sext.w	s9,a5
    80002f84:	1e078263          	beqz	a5,80003168 <__printf+0x2a0>
    80002f88:	0024849b          	addiw	s1,s1,2
    80002f8c:	07000713          	li	a4,112
    80002f90:	00998933          	add	s2,s3,s1
    80002f94:	38e78a63          	beq	a5,a4,80003328 <__printf+0x460>
    80002f98:	20f76863          	bltu	a4,a5,800031a8 <__printf+0x2e0>
    80002f9c:	42a78863          	beq	a5,a0,800033cc <__printf+0x504>
    80002fa0:	06400713          	li	a4,100
    80002fa4:	40e79663          	bne	a5,a4,800033b0 <__printf+0x4e8>
    80002fa8:	f7843783          	ld	a5,-136(s0)
    80002fac:	0007a603          	lw	a2,0(a5)
    80002fb0:	00878793          	addi	a5,a5,8
    80002fb4:	f6f43c23          	sd	a5,-136(s0)
    80002fb8:	42064a63          	bltz	a2,800033ec <__printf+0x524>
    80002fbc:	00a00713          	li	a4,10
    80002fc0:	02e677bb          	remuw	a5,a2,a4
    80002fc4:	00002d97          	auipc	s11,0x2
    80002fc8:	4dcd8d93          	addi	s11,s11,1244 # 800054a0 <digits>
    80002fcc:	00900593          	li	a1,9
    80002fd0:	0006051b          	sext.w	a0,a2
    80002fd4:	00000c93          	li	s9,0
    80002fd8:	02079793          	slli	a5,a5,0x20
    80002fdc:	0207d793          	srli	a5,a5,0x20
    80002fe0:	00fd87b3          	add	a5,s11,a5
    80002fe4:	0007c783          	lbu	a5,0(a5)
    80002fe8:	02e656bb          	divuw	a3,a2,a4
    80002fec:	f8f40023          	sb	a5,-128(s0)
    80002ff0:	14c5d863          	bge	a1,a2,80003140 <__printf+0x278>
    80002ff4:	06300593          	li	a1,99
    80002ff8:	00100c93          	li	s9,1
    80002ffc:	02e6f7bb          	remuw	a5,a3,a4
    80003000:	02079793          	slli	a5,a5,0x20
    80003004:	0207d793          	srli	a5,a5,0x20
    80003008:	00fd87b3          	add	a5,s11,a5
    8000300c:	0007c783          	lbu	a5,0(a5)
    80003010:	02e6d73b          	divuw	a4,a3,a4
    80003014:	f8f400a3          	sb	a5,-127(s0)
    80003018:	12a5f463          	bgeu	a1,a0,80003140 <__printf+0x278>
    8000301c:	00a00693          	li	a3,10
    80003020:	00900593          	li	a1,9
    80003024:	02d777bb          	remuw	a5,a4,a3
    80003028:	02079793          	slli	a5,a5,0x20
    8000302c:	0207d793          	srli	a5,a5,0x20
    80003030:	00fd87b3          	add	a5,s11,a5
    80003034:	0007c503          	lbu	a0,0(a5)
    80003038:	02d757bb          	divuw	a5,a4,a3
    8000303c:	f8a40123          	sb	a0,-126(s0)
    80003040:	48e5f263          	bgeu	a1,a4,800034c4 <__printf+0x5fc>
    80003044:	06300513          	li	a0,99
    80003048:	02d7f5bb          	remuw	a1,a5,a3
    8000304c:	02059593          	slli	a1,a1,0x20
    80003050:	0205d593          	srli	a1,a1,0x20
    80003054:	00bd85b3          	add	a1,s11,a1
    80003058:	0005c583          	lbu	a1,0(a1)
    8000305c:	02d7d7bb          	divuw	a5,a5,a3
    80003060:	f8b401a3          	sb	a1,-125(s0)
    80003064:	48e57263          	bgeu	a0,a4,800034e8 <__printf+0x620>
    80003068:	3e700513          	li	a0,999
    8000306c:	02d7f5bb          	remuw	a1,a5,a3
    80003070:	02059593          	slli	a1,a1,0x20
    80003074:	0205d593          	srli	a1,a1,0x20
    80003078:	00bd85b3          	add	a1,s11,a1
    8000307c:	0005c583          	lbu	a1,0(a1)
    80003080:	02d7d7bb          	divuw	a5,a5,a3
    80003084:	f8b40223          	sb	a1,-124(s0)
    80003088:	46e57663          	bgeu	a0,a4,800034f4 <__printf+0x62c>
    8000308c:	02d7f5bb          	remuw	a1,a5,a3
    80003090:	02059593          	slli	a1,a1,0x20
    80003094:	0205d593          	srli	a1,a1,0x20
    80003098:	00bd85b3          	add	a1,s11,a1
    8000309c:	0005c583          	lbu	a1,0(a1)
    800030a0:	02d7d7bb          	divuw	a5,a5,a3
    800030a4:	f8b402a3          	sb	a1,-123(s0)
    800030a8:	46ea7863          	bgeu	s4,a4,80003518 <__printf+0x650>
    800030ac:	02d7f5bb          	remuw	a1,a5,a3
    800030b0:	02059593          	slli	a1,a1,0x20
    800030b4:	0205d593          	srli	a1,a1,0x20
    800030b8:	00bd85b3          	add	a1,s11,a1
    800030bc:	0005c583          	lbu	a1,0(a1)
    800030c0:	02d7d7bb          	divuw	a5,a5,a3
    800030c4:	f8b40323          	sb	a1,-122(s0)
    800030c8:	3eeaf863          	bgeu	s5,a4,800034b8 <__printf+0x5f0>
    800030cc:	02d7f5bb          	remuw	a1,a5,a3
    800030d0:	02059593          	slli	a1,a1,0x20
    800030d4:	0205d593          	srli	a1,a1,0x20
    800030d8:	00bd85b3          	add	a1,s11,a1
    800030dc:	0005c583          	lbu	a1,0(a1)
    800030e0:	02d7d7bb          	divuw	a5,a5,a3
    800030e4:	f8b403a3          	sb	a1,-121(s0)
    800030e8:	42eb7e63          	bgeu	s6,a4,80003524 <__printf+0x65c>
    800030ec:	02d7f5bb          	remuw	a1,a5,a3
    800030f0:	02059593          	slli	a1,a1,0x20
    800030f4:	0205d593          	srli	a1,a1,0x20
    800030f8:	00bd85b3          	add	a1,s11,a1
    800030fc:	0005c583          	lbu	a1,0(a1)
    80003100:	02d7d7bb          	divuw	a5,a5,a3
    80003104:	f8b40423          	sb	a1,-120(s0)
    80003108:	42ebfc63          	bgeu	s7,a4,80003540 <__printf+0x678>
    8000310c:	02079793          	slli	a5,a5,0x20
    80003110:	0207d793          	srli	a5,a5,0x20
    80003114:	00fd8db3          	add	s11,s11,a5
    80003118:	000dc703          	lbu	a4,0(s11)
    8000311c:	00a00793          	li	a5,10
    80003120:	00900c93          	li	s9,9
    80003124:	f8e404a3          	sb	a4,-119(s0)
    80003128:	00065c63          	bgez	a2,80003140 <__printf+0x278>
    8000312c:	f9040713          	addi	a4,s0,-112
    80003130:	00f70733          	add	a4,a4,a5
    80003134:	02d00693          	li	a3,45
    80003138:	fed70823          	sb	a3,-16(a4)
    8000313c:	00078c93          	mv	s9,a5
    80003140:	f8040793          	addi	a5,s0,-128
    80003144:	01978cb3          	add	s9,a5,s9
    80003148:	f7f40d13          	addi	s10,s0,-129
    8000314c:	000cc503          	lbu	a0,0(s9)
    80003150:	fffc8c93          	addi	s9,s9,-1
    80003154:	00000097          	auipc	ra,0x0
    80003158:	b90080e7          	jalr	-1136(ra) # 80002ce4 <consputc>
    8000315c:	ffac98e3          	bne	s9,s10,8000314c <__printf+0x284>
    80003160:	00094503          	lbu	a0,0(s2)
    80003164:	e00514e3          	bnez	a0,80002f6c <__printf+0xa4>
    80003168:	1a0c1663          	bnez	s8,80003314 <__printf+0x44c>
    8000316c:	08813083          	ld	ra,136(sp)
    80003170:	08013403          	ld	s0,128(sp)
    80003174:	07813483          	ld	s1,120(sp)
    80003178:	07013903          	ld	s2,112(sp)
    8000317c:	06813983          	ld	s3,104(sp)
    80003180:	06013a03          	ld	s4,96(sp)
    80003184:	05813a83          	ld	s5,88(sp)
    80003188:	05013b03          	ld	s6,80(sp)
    8000318c:	04813b83          	ld	s7,72(sp)
    80003190:	04013c03          	ld	s8,64(sp)
    80003194:	03813c83          	ld	s9,56(sp)
    80003198:	03013d03          	ld	s10,48(sp)
    8000319c:	02813d83          	ld	s11,40(sp)
    800031a0:	0d010113          	addi	sp,sp,208
    800031a4:	00008067          	ret
    800031a8:	07300713          	li	a4,115
    800031ac:	1ce78a63          	beq	a5,a4,80003380 <__printf+0x4b8>
    800031b0:	07800713          	li	a4,120
    800031b4:	1ee79e63          	bne	a5,a4,800033b0 <__printf+0x4e8>
    800031b8:	f7843783          	ld	a5,-136(s0)
    800031bc:	0007a703          	lw	a4,0(a5)
    800031c0:	00878793          	addi	a5,a5,8
    800031c4:	f6f43c23          	sd	a5,-136(s0)
    800031c8:	28074263          	bltz	a4,8000344c <__printf+0x584>
    800031cc:	00002d97          	auipc	s11,0x2
    800031d0:	2d4d8d93          	addi	s11,s11,724 # 800054a0 <digits>
    800031d4:	00f77793          	andi	a5,a4,15
    800031d8:	00fd87b3          	add	a5,s11,a5
    800031dc:	0007c683          	lbu	a3,0(a5)
    800031e0:	00f00613          	li	a2,15
    800031e4:	0007079b          	sext.w	a5,a4
    800031e8:	f8d40023          	sb	a3,-128(s0)
    800031ec:	0047559b          	srliw	a1,a4,0x4
    800031f0:	0047569b          	srliw	a3,a4,0x4
    800031f4:	00000c93          	li	s9,0
    800031f8:	0ee65063          	bge	a2,a4,800032d8 <__printf+0x410>
    800031fc:	00f6f693          	andi	a3,a3,15
    80003200:	00dd86b3          	add	a3,s11,a3
    80003204:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003208:	0087d79b          	srliw	a5,a5,0x8
    8000320c:	00100c93          	li	s9,1
    80003210:	f8d400a3          	sb	a3,-127(s0)
    80003214:	0cb67263          	bgeu	a2,a1,800032d8 <__printf+0x410>
    80003218:	00f7f693          	andi	a3,a5,15
    8000321c:	00dd86b3          	add	a3,s11,a3
    80003220:	0006c583          	lbu	a1,0(a3)
    80003224:	00f00613          	li	a2,15
    80003228:	0047d69b          	srliw	a3,a5,0x4
    8000322c:	f8b40123          	sb	a1,-126(s0)
    80003230:	0047d593          	srli	a1,a5,0x4
    80003234:	28f67e63          	bgeu	a2,a5,800034d0 <__printf+0x608>
    80003238:	00f6f693          	andi	a3,a3,15
    8000323c:	00dd86b3          	add	a3,s11,a3
    80003240:	0006c503          	lbu	a0,0(a3)
    80003244:	0087d813          	srli	a6,a5,0x8
    80003248:	0087d69b          	srliw	a3,a5,0x8
    8000324c:	f8a401a3          	sb	a0,-125(s0)
    80003250:	28b67663          	bgeu	a2,a1,800034dc <__printf+0x614>
    80003254:	00f6f693          	andi	a3,a3,15
    80003258:	00dd86b3          	add	a3,s11,a3
    8000325c:	0006c583          	lbu	a1,0(a3)
    80003260:	00c7d513          	srli	a0,a5,0xc
    80003264:	00c7d69b          	srliw	a3,a5,0xc
    80003268:	f8b40223          	sb	a1,-124(s0)
    8000326c:	29067a63          	bgeu	a2,a6,80003500 <__printf+0x638>
    80003270:	00f6f693          	andi	a3,a3,15
    80003274:	00dd86b3          	add	a3,s11,a3
    80003278:	0006c583          	lbu	a1,0(a3)
    8000327c:	0107d813          	srli	a6,a5,0x10
    80003280:	0107d69b          	srliw	a3,a5,0x10
    80003284:	f8b402a3          	sb	a1,-123(s0)
    80003288:	28a67263          	bgeu	a2,a0,8000350c <__printf+0x644>
    8000328c:	00f6f693          	andi	a3,a3,15
    80003290:	00dd86b3          	add	a3,s11,a3
    80003294:	0006c683          	lbu	a3,0(a3)
    80003298:	0147d79b          	srliw	a5,a5,0x14
    8000329c:	f8d40323          	sb	a3,-122(s0)
    800032a0:	21067663          	bgeu	a2,a6,800034ac <__printf+0x5e4>
    800032a4:	02079793          	slli	a5,a5,0x20
    800032a8:	0207d793          	srli	a5,a5,0x20
    800032ac:	00fd8db3          	add	s11,s11,a5
    800032b0:	000dc683          	lbu	a3,0(s11)
    800032b4:	00800793          	li	a5,8
    800032b8:	00700c93          	li	s9,7
    800032bc:	f8d403a3          	sb	a3,-121(s0)
    800032c0:	00075c63          	bgez	a4,800032d8 <__printf+0x410>
    800032c4:	f9040713          	addi	a4,s0,-112
    800032c8:	00f70733          	add	a4,a4,a5
    800032cc:	02d00693          	li	a3,45
    800032d0:	fed70823          	sb	a3,-16(a4)
    800032d4:	00078c93          	mv	s9,a5
    800032d8:	f8040793          	addi	a5,s0,-128
    800032dc:	01978cb3          	add	s9,a5,s9
    800032e0:	f7f40d13          	addi	s10,s0,-129
    800032e4:	000cc503          	lbu	a0,0(s9)
    800032e8:	fffc8c93          	addi	s9,s9,-1
    800032ec:	00000097          	auipc	ra,0x0
    800032f0:	9f8080e7          	jalr	-1544(ra) # 80002ce4 <consputc>
    800032f4:	ff9d18e3          	bne	s10,s9,800032e4 <__printf+0x41c>
    800032f8:	0100006f          	j	80003308 <__printf+0x440>
    800032fc:	00000097          	auipc	ra,0x0
    80003300:	9e8080e7          	jalr	-1560(ra) # 80002ce4 <consputc>
    80003304:	000c8493          	mv	s1,s9
    80003308:	00094503          	lbu	a0,0(s2)
    8000330c:	c60510e3          	bnez	a0,80002f6c <__printf+0xa4>
    80003310:	e40c0ee3          	beqz	s8,8000316c <__printf+0x2a4>
    80003314:	00004517          	auipc	a0,0x4
    80003318:	b5c50513          	addi	a0,a0,-1188 # 80006e70 <pr>
    8000331c:	00001097          	auipc	ra,0x1
    80003320:	94c080e7          	jalr	-1716(ra) # 80003c68 <release>
    80003324:	e49ff06f          	j	8000316c <__printf+0x2a4>
    80003328:	f7843783          	ld	a5,-136(s0)
    8000332c:	03000513          	li	a0,48
    80003330:	01000d13          	li	s10,16
    80003334:	00878713          	addi	a4,a5,8
    80003338:	0007bc83          	ld	s9,0(a5)
    8000333c:	f6e43c23          	sd	a4,-136(s0)
    80003340:	00000097          	auipc	ra,0x0
    80003344:	9a4080e7          	jalr	-1628(ra) # 80002ce4 <consputc>
    80003348:	07800513          	li	a0,120
    8000334c:	00000097          	auipc	ra,0x0
    80003350:	998080e7          	jalr	-1640(ra) # 80002ce4 <consputc>
    80003354:	00002d97          	auipc	s11,0x2
    80003358:	14cd8d93          	addi	s11,s11,332 # 800054a0 <digits>
    8000335c:	03ccd793          	srli	a5,s9,0x3c
    80003360:	00fd87b3          	add	a5,s11,a5
    80003364:	0007c503          	lbu	a0,0(a5)
    80003368:	fffd0d1b          	addiw	s10,s10,-1
    8000336c:	004c9c93          	slli	s9,s9,0x4
    80003370:	00000097          	auipc	ra,0x0
    80003374:	974080e7          	jalr	-1676(ra) # 80002ce4 <consputc>
    80003378:	fe0d12e3          	bnez	s10,8000335c <__printf+0x494>
    8000337c:	f8dff06f          	j	80003308 <__printf+0x440>
    80003380:	f7843783          	ld	a5,-136(s0)
    80003384:	0007bc83          	ld	s9,0(a5)
    80003388:	00878793          	addi	a5,a5,8
    8000338c:	f6f43c23          	sd	a5,-136(s0)
    80003390:	000c9a63          	bnez	s9,800033a4 <__printf+0x4dc>
    80003394:	1080006f          	j	8000349c <__printf+0x5d4>
    80003398:	001c8c93          	addi	s9,s9,1
    8000339c:	00000097          	auipc	ra,0x0
    800033a0:	948080e7          	jalr	-1720(ra) # 80002ce4 <consputc>
    800033a4:	000cc503          	lbu	a0,0(s9)
    800033a8:	fe0518e3          	bnez	a0,80003398 <__printf+0x4d0>
    800033ac:	f5dff06f          	j	80003308 <__printf+0x440>
    800033b0:	02500513          	li	a0,37
    800033b4:	00000097          	auipc	ra,0x0
    800033b8:	930080e7          	jalr	-1744(ra) # 80002ce4 <consputc>
    800033bc:	000c8513          	mv	a0,s9
    800033c0:	00000097          	auipc	ra,0x0
    800033c4:	924080e7          	jalr	-1756(ra) # 80002ce4 <consputc>
    800033c8:	f41ff06f          	j	80003308 <__printf+0x440>
    800033cc:	02500513          	li	a0,37
    800033d0:	00000097          	auipc	ra,0x0
    800033d4:	914080e7          	jalr	-1772(ra) # 80002ce4 <consputc>
    800033d8:	f31ff06f          	j	80003308 <__printf+0x440>
    800033dc:	00030513          	mv	a0,t1
    800033e0:	00000097          	auipc	ra,0x0
    800033e4:	7bc080e7          	jalr	1980(ra) # 80003b9c <acquire>
    800033e8:	b4dff06f          	j	80002f34 <__printf+0x6c>
    800033ec:	40c0053b          	negw	a0,a2
    800033f0:	00a00713          	li	a4,10
    800033f4:	02e576bb          	remuw	a3,a0,a4
    800033f8:	00002d97          	auipc	s11,0x2
    800033fc:	0a8d8d93          	addi	s11,s11,168 # 800054a0 <digits>
    80003400:	ff700593          	li	a1,-9
    80003404:	02069693          	slli	a3,a3,0x20
    80003408:	0206d693          	srli	a3,a3,0x20
    8000340c:	00dd86b3          	add	a3,s11,a3
    80003410:	0006c683          	lbu	a3,0(a3)
    80003414:	02e557bb          	divuw	a5,a0,a4
    80003418:	f8d40023          	sb	a3,-128(s0)
    8000341c:	10b65e63          	bge	a2,a1,80003538 <__printf+0x670>
    80003420:	06300593          	li	a1,99
    80003424:	02e7f6bb          	remuw	a3,a5,a4
    80003428:	02069693          	slli	a3,a3,0x20
    8000342c:	0206d693          	srli	a3,a3,0x20
    80003430:	00dd86b3          	add	a3,s11,a3
    80003434:	0006c683          	lbu	a3,0(a3)
    80003438:	02e7d73b          	divuw	a4,a5,a4
    8000343c:	00200793          	li	a5,2
    80003440:	f8d400a3          	sb	a3,-127(s0)
    80003444:	bca5ece3          	bltu	a1,a0,8000301c <__printf+0x154>
    80003448:	ce5ff06f          	j	8000312c <__printf+0x264>
    8000344c:	40e007bb          	negw	a5,a4
    80003450:	00002d97          	auipc	s11,0x2
    80003454:	050d8d93          	addi	s11,s11,80 # 800054a0 <digits>
    80003458:	00f7f693          	andi	a3,a5,15
    8000345c:	00dd86b3          	add	a3,s11,a3
    80003460:	0006c583          	lbu	a1,0(a3)
    80003464:	ff100613          	li	a2,-15
    80003468:	0047d69b          	srliw	a3,a5,0x4
    8000346c:	f8b40023          	sb	a1,-128(s0)
    80003470:	0047d59b          	srliw	a1,a5,0x4
    80003474:	0ac75e63          	bge	a4,a2,80003530 <__printf+0x668>
    80003478:	00f6f693          	andi	a3,a3,15
    8000347c:	00dd86b3          	add	a3,s11,a3
    80003480:	0006c603          	lbu	a2,0(a3)
    80003484:	00f00693          	li	a3,15
    80003488:	0087d79b          	srliw	a5,a5,0x8
    8000348c:	f8c400a3          	sb	a2,-127(s0)
    80003490:	d8b6e4e3          	bltu	a3,a1,80003218 <__printf+0x350>
    80003494:	00200793          	li	a5,2
    80003498:	e2dff06f          	j	800032c4 <__printf+0x3fc>
    8000349c:	00002c97          	auipc	s9,0x2
    800034a0:	fe4c8c93          	addi	s9,s9,-28 # 80005480 <_ZZ12printIntegermE6digits+0x148>
    800034a4:	02800513          	li	a0,40
    800034a8:	ef1ff06f          	j	80003398 <__printf+0x4d0>
    800034ac:	00700793          	li	a5,7
    800034b0:	00600c93          	li	s9,6
    800034b4:	e0dff06f          	j	800032c0 <__printf+0x3f8>
    800034b8:	00700793          	li	a5,7
    800034bc:	00600c93          	li	s9,6
    800034c0:	c69ff06f          	j	80003128 <__printf+0x260>
    800034c4:	00300793          	li	a5,3
    800034c8:	00200c93          	li	s9,2
    800034cc:	c5dff06f          	j	80003128 <__printf+0x260>
    800034d0:	00300793          	li	a5,3
    800034d4:	00200c93          	li	s9,2
    800034d8:	de9ff06f          	j	800032c0 <__printf+0x3f8>
    800034dc:	00400793          	li	a5,4
    800034e0:	00300c93          	li	s9,3
    800034e4:	dddff06f          	j	800032c0 <__printf+0x3f8>
    800034e8:	00400793          	li	a5,4
    800034ec:	00300c93          	li	s9,3
    800034f0:	c39ff06f          	j	80003128 <__printf+0x260>
    800034f4:	00500793          	li	a5,5
    800034f8:	00400c93          	li	s9,4
    800034fc:	c2dff06f          	j	80003128 <__printf+0x260>
    80003500:	00500793          	li	a5,5
    80003504:	00400c93          	li	s9,4
    80003508:	db9ff06f          	j	800032c0 <__printf+0x3f8>
    8000350c:	00600793          	li	a5,6
    80003510:	00500c93          	li	s9,5
    80003514:	dadff06f          	j	800032c0 <__printf+0x3f8>
    80003518:	00600793          	li	a5,6
    8000351c:	00500c93          	li	s9,5
    80003520:	c09ff06f          	j	80003128 <__printf+0x260>
    80003524:	00800793          	li	a5,8
    80003528:	00700c93          	li	s9,7
    8000352c:	bfdff06f          	j	80003128 <__printf+0x260>
    80003530:	00100793          	li	a5,1
    80003534:	d91ff06f          	j	800032c4 <__printf+0x3fc>
    80003538:	00100793          	li	a5,1
    8000353c:	bf1ff06f          	j	8000312c <__printf+0x264>
    80003540:	00900793          	li	a5,9
    80003544:	00800c93          	li	s9,8
    80003548:	be1ff06f          	j	80003128 <__printf+0x260>
    8000354c:	00002517          	auipc	a0,0x2
    80003550:	f3c50513          	addi	a0,a0,-196 # 80005488 <_ZZ12printIntegermE6digits+0x150>
    80003554:	00000097          	auipc	ra,0x0
    80003558:	918080e7          	jalr	-1768(ra) # 80002e6c <panic>

000000008000355c <printfinit>:
    8000355c:	fe010113          	addi	sp,sp,-32
    80003560:	00813823          	sd	s0,16(sp)
    80003564:	00913423          	sd	s1,8(sp)
    80003568:	00113c23          	sd	ra,24(sp)
    8000356c:	02010413          	addi	s0,sp,32
    80003570:	00004497          	auipc	s1,0x4
    80003574:	90048493          	addi	s1,s1,-1792 # 80006e70 <pr>
    80003578:	00048513          	mv	a0,s1
    8000357c:	00002597          	auipc	a1,0x2
    80003580:	f1c58593          	addi	a1,a1,-228 # 80005498 <_ZZ12printIntegermE6digits+0x160>
    80003584:	00000097          	auipc	ra,0x0
    80003588:	5f4080e7          	jalr	1524(ra) # 80003b78 <initlock>
    8000358c:	01813083          	ld	ra,24(sp)
    80003590:	01013403          	ld	s0,16(sp)
    80003594:	0004ac23          	sw	zero,24(s1)
    80003598:	00813483          	ld	s1,8(sp)
    8000359c:	02010113          	addi	sp,sp,32
    800035a0:	00008067          	ret

00000000800035a4 <uartinit>:
    800035a4:	ff010113          	addi	sp,sp,-16
    800035a8:	00813423          	sd	s0,8(sp)
    800035ac:	01010413          	addi	s0,sp,16
    800035b0:	100007b7          	lui	a5,0x10000
    800035b4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800035b8:	f8000713          	li	a4,-128
    800035bc:	00e781a3          	sb	a4,3(a5)
    800035c0:	00300713          	li	a4,3
    800035c4:	00e78023          	sb	a4,0(a5)
    800035c8:	000780a3          	sb	zero,1(a5)
    800035cc:	00e781a3          	sb	a4,3(a5)
    800035d0:	00700693          	li	a3,7
    800035d4:	00d78123          	sb	a3,2(a5)
    800035d8:	00e780a3          	sb	a4,1(a5)
    800035dc:	00813403          	ld	s0,8(sp)
    800035e0:	01010113          	addi	sp,sp,16
    800035e4:	00008067          	ret

00000000800035e8 <uartputc>:
    800035e8:	00002797          	auipc	a5,0x2
    800035ec:	6007a783          	lw	a5,1536(a5) # 80005be8 <panicked>
    800035f0:	00078463          	beqz	a5,800035f8 <uartputc+0x10>
    800035f4:	0000006f          	j	800035f4 <uartputc+0xc>
    800035f8:	fd010113          	addi	sp,sp,-48
    800035fc:	02813023          	sd	s0,32(sp)
    80003600:	00913c23          	sd	s1,24(sp)
    80003604:	01213823          	sd	s2,16(sp)
    80003608:	01313423          	sd	s3,8(sp)
    8000360c:	02113423          	sd	ra,40(sp)
    80003610:	03010413          	addi	s0,sp,48
    80003614:	00002917          	auipc	s2,0x2
    80003618:	5dc90913          	addi	s2,s2,1500 # 80005bf0 <uart_tx_r>
    8000361c:	00093783          	ld	a5,0(s2)
    80003620:	00002497          	auipc	s1,0x2
    80003624:	5d848493          	addi	s1,s1,1496 # 80005bf8 <uart_tx_w>
    80003628:	0004b703          	ld	a4,0(s1)
    8000362c:	02078693          	addi	a3,a5,32
    80003630:	00050993          	mv	s3,a0
    80003634:	02e69c63          	bne	a3,a4,8000366c <uartputc+0x84>
    80003638:	00001097          	auipc	ra,0x1
    8000363c:	834080e7          	jalr	-1996(ra) # 80003e6c <push_on>
    80003640:	00093783          	ld	a5,0(s2)
    80003644:	0004b703          	ld	a4,0(s1)
    80003648:	02078793          	addi	a5,a5,32
    8000364c:	00e79463          	bne	a5,a4,80003654 <uartputc+0x6c>
    80003650:	0000006f          	j	80003650 <uartputc+0x68>
    80003654:	00001097          	auipc	ra,0x1
    80003658:	88c080e7          	jalr	-1908(ra) # 80003ee0 <pop_on>
    8000365c:	00093783          	ld	a5,0(s2)
    80003660:	0004b703          	ld	a4,0(s1)
    80003664:	02078693          	addi	a3,a5,32
    80003668:	fce688e3          	beq	a3,a4,80003638 <uartputc+0x50>
    8000366c:	01f77693          	andi	a3,a4,31
    80003670:	00004597          	auipc	a1,0x4
    80003674:	82058593          	addi	a1,a1,-2016 # 80006e90 <uart_tx_buf>
    80003678:	00d586b3          	add	a3,a1,a3
    8000367c:	00170713          	addi	a4,a4,1
    80003680:	01368023          	sb	s3,0(a3)
    80003684:	00e4b023          	sd	a4,0(s1)
    80003688:	10000637          	lui	a2,0x10000
    8000368c:	02f71063          	bne	a4,a5,800036ac <uartputc+0xc4>
    80003690:	0340006f          	j	800036c4 <uartputc+0xdc>
    80003694:	00074703          	lbu	a4,0(a4)
    80003698:	00f93023          	sd	a5,0(s2)
    8000369c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800036a0:	00093783          	ld	a5,0(s2)
    800036a4:	0004b703          	ld	a4,0(s1)
    800036a8:	00f70e63          	beq	a4,a5,800036c4 <uartputc+0xdc>
    800036ac:	00564683          	lbu	a3,5(a2)
    800036b0:	01f7f713          	andi	a4,a5,31
    800036b4:	00e58733          	add	a4,a1,a4
    800036b8:	0206f693          	andi	a3,a3,32
    800036bc:	00178793          	addi	a5,a5,1
    800036c0:	fc069ae3          	bnez	a3,80003694 <uartputc+0xac>
    800036c4:	02813083          	ld	ra,40(sp)
    800036c8:	02013403          	ld	s0,32(sp)
    800036cc:	01813483          	ld	s1,24(sp)
    800036d0:	01013903          	ld	s2,16(sp)
    800036d4:	00813983          	ld	s3,8(sp)
    800036d8:	03010113          	addi	sp,sp,48
    800036dc:	00008067          	ret

00000000800036e0 <uartputc_sync>:
    800036e0:	ff010113          	addi	sp,sp,-16
    800036e4:	00813423          	sd	s0,8(sp)
    800036e8:	01010413          	addi	s0,sp,16
    800036ec:	00002717          	auipc	a4,0x2
    800036f0:	4fc72703          	lw	a4,1276(a4) # 80005be8 <panicked>
    800036f4:	02071663          	bnez	a4,80003720 <uartputc_sync+0x40>
    800036f8:	00050793          	mv	a5,a0
    800036fc:	100006b7          	lui	a3,0x10000
    80003700:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003704:	02077713          	andi	a4,a4,32
    80003708:	fe070ce3          	beqz	a4,80003700 <uartputc_sync+0x20>
    8000370c:	0ff7f793          	andi	a5,a5,255
    80003710:	00f68023          	sb	a5,0(a3)
    80003714:	00813403          	ld	s0,8(sp)
    80003718:	01010113          	addi	sp,sp,16
    8000371c:	00008067          	ret
    80003720:	0000006f          	j	80003720 <uartputc_sync+0x40>

0000000080003724 <uartstart>:
    80003724:	ff010113          	addi	sp,sp,-16
    80003728:	00813423          	sd	s0,8(sp)
    8000372c:	01010413          	addi	s0,sp,16
    80003730:	00002617          	auipc	a2,0x2
    80003734:	4c060613          	addi	a2,a2,1216 # 80005bf0 <uart_tx_r>
    80003738:	00002517          	auipc	a0,0x2
    8000373c:	4c050513          	addi	a0,a0,1216 # 80005bf8 <uart_tx_w>
    80003740:	00063783          	ld	a5,0(a2)
    80003744:	00053703          	ld	a4,0(a0)
    80003748:	04f70263          	beq	a4,a5,8000378c <uartstart+0x68>
    8000374c:	100005b7          	lui	a1,0x10000
    80003750:	00003817          	auipc	a6,0x3
    80003754:	74080813          	addi	a6,a6,1856 # 80006e90 <uart_tx_buf>
    80003758:	01c0006f          	j	80003774 <uartstart+0x50>
    8000375c:	0006c703          	lbu	a4,0(a3)
    80003760:	00f63023          	sd	a5,0(a2)
    80003764:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003768:	00063783          	ld	a5,0(a2)
    8000376c:	00053703          	ld	a4,0(a0)
    80003770:	00f70e63          	beq	a4,a5,8000378c <uartstart+0x68>
    80003774:	01f7f713          	andi	a4,a5,31
    80003778:	00e806b3          	add	a3,a6,a4
    8000377c:	0055c703          	lbu	a4,5(a1)
    80003780:	00178793          	addi	a5,a5,1
    80003784:	02077713          	andi	a4,a4,32
    80003788:	fc071ae3          	bnez	a4,8000375c <uartstart+0x38>
    8000378c:	00813403          	ld	s0,8(sp)
    80003790:	01010113          	addi	sp,sp,16
    80003794:	00008067          	ret

0000000080003798 <uartgetc>:
    80003798:	ff010113          	addi	sp,sp,-16
    8000379c:	00813423          	sd	s0,8(sp)
    800037a0:	01010413          	addi	s0,sp,16
    800037a4:	10000737          	lui	a4,0x10000
    800037a8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800037ac:	0017f793          	andi	a5,a5,1
    800037b0:	00078c63          	beqz	a5,800037c8 <uartgetc+0x30>
    800037b4:	00074503          	lbu	a0,0(a4)
    800037b8:	0ff57513          	andi	a0,a0,255
    800037bc:	00813403          	ld	s0,8(sp)
    800037c0:	01010113          	addi	sp,sp,16
    800037c4:	00008067          	ret
    800037c8:	fff00513          	li	a0,-1
    800037cc:	ff1ff06f          	j	800037bc <uartgetc+0x24>

00000000800037d0 <uartintr>:
    800037d0:	100007b7          	lui	a5,0x10000
    800037d4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800037d8:	0017f793          	andi	a5,a5,1
    800037dc:	0a078463          	beqz	a5,80003884 <uartintr+0xb4>
    800037e0:	fe010113          	addi	sp,sp,-32
    800037e4:	00813823          	sd	s0,16(sp)
    800037e8:	00913423          	sd	s1,8(sp)
    800037ec:	00113c23          	sd	ra,24(sp)
    800037f0:	02010413          	addi	s0,sp,32
    800037f4:	100004b7          	lui	s1,0x10000
    800037f8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800037fc:	0ff57513          	andi	a0,a0,255
    80003800:	fffff097          	auipc	ra,0xfffff
    80003804:	534080e7          	jalr	1332(ra) # 80002d34 <consoleintr>
    80003808:	0054c783          	lbu	a5,5(s1)
    8000380c:	0017f793          	andi	a5,a5,1
    80003810:	fe0794e3          	bnez	a5,800037f8 <uartintr+0x28>
    80003814:	00002617          	auipc	a2,0x2
    80003818:	3dc60613          	addi	a2,a2,988 # 80005bf0 <uart_tx_r>
    8000381c:	00002517          	auipc	a0,0x2
    80003820:	3dc50513          	addi	a0,a0,988 # 80005bf8 <uart_tx_w>
    80003824:	00063783          	ld	a5,0(a2)
    80003828:	00053703          	ld	a4,0(a0)
    8000382c:	04f70263          	beq	a4,a5,80003870 <uartintr+0xa0>
    80003830:	100005b7          	lui	a1,0x10000
    80003834:	00003817          	auipc	a6,0x3
    80003838:	65c80813          	addi	a6,a6,1628 # 80006e90 <uart_tx_buf>
    8000383c:	01c0006f          	j	80003858 <uartintr+0x88>
    80003840:	0006c703          	lbu	a4,0(a3)
    80003844:	00f63023          	sd	a5,0(a2)
    80003848:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000384c:	00063783          	ld	a5,0(a2)
    80003850:	00053703          	ld	a4,0(a0)
    80003854:	00f70e63          	beq	a4,a5,80003870 <uartintr+0xa0>
    80003858:	01f7f713          	andi	a4,a5,31
    8000385c:	00e806b3          	add	a3,a6,a4
    80003860:	0055c703          	lbu	a4,5(a1)
    80003864:	00178793          	addi	a5,a5,1
    80003868:	02077713          	andi	a4,a4,32
    8000386c:	fc071ae3          	bnez	a4,80003840 <uartintr+0x70>
    80003870:	01813083          	ld	ra,24(sp)
    80003874:	01013403          	ld	s0,16(sp)
    80003878:	00813483          	ld	s1,8(sp)
    8000387c:	02010113          	addi	sp,sp,32
    80003880:	00008067          	ret
    80003884:	00002617          	auipc	a2,0x2
    80003888:	36c60613          	addi	a2,a2,876 # 80005bf0 <uart_tx_r>
    8000388c:	00002517          	auipc	a0,0x2
    80003890:	36c50513          	addi	a0,a0,876 # 80005bf8 <uart_tx_w>
    80003894:	00063783          	ld	a5,0(a2)
    80003898:	00053703          	ld	a4,0(a0)
    8000389c:	04f70263          	beq	a4,a5,800038e0 <uartintr+0x110>
    800038a0:	100005b7          	lui	a1,0x10000
    800038a4:	00003817          	auipc	a6,0x3
    800038a8:	5ec80813          	addi	a6,a6,1516 # 80006e90 <uart_tx_buf>
    800038ac:	01c0006f          	j	800038c8 <uartintr+0xf8>
    800038b0:	0006c703          	lbu	a4,0(a3)
    800038b4:	00f63023          	sd	a5,0(a2)
    800038b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800038bc:	00063783          	ld	a5,0(a2)
    800038c0:	00053703          	ld	a4,0(a0)
    800038c4:	02f70063          	beq	a4,a5,800038e4 <uartintr+0x114>
    800038c8:	01f7f713          	andi	a4,a5,31
    800038cc:	00e806b3          	add	a3,a6,a4
    800038d0:	0055c703          	lbu	a4,5(a1)
    800038d4:	00178793          	addi	a5,a5,1
    800038d8:	02077713          	andi	a4,a4,32
    800038dc:	fc071ae3          	bnez	a4,800038b0 <uartintr+0xe0>
    800038e0:	00008067          	ret
    800038e4:	00008067          	ret

00000000800038e8 <kinit>:
    800038e8:	fc010113          	addi	sp,sp,-64
    800038ec:	02913423          	sd	s1,40(sp)
    800038f0:	fffff7b7          	lui	a5,0xfffff
    800038f4:	00004497          	auipc	s1,0x4
    800038f8:	5cb48493          	addi	s1,s1,1483 # 80007ebf <end+0xfff>
    800038fc:	02813823          	sd	s0,48(sp)
    80003900:	01313c23          	sd	s3,24(sp)
    80003904:	00f4f4b3          	and	s1,s1,a5
    80003908:	02113c23          	sd	ra,56(sp)
    8000390c:	03213023          	sd	s2,32(sp)
    80003910:	01413823          	sd	s4,16(sp)
    80003914:	01513423          	sd	s5,8(sp)
    80003918:	04010413          	addi	s0,sp,64
    8000391c:	000017b7          	lui	a5,0x1
    80003920:	01100993          	li	s3,17
    80003924:	00f487b3          	add	a5,s1,a5
    80003928:	01b99993          	slli	s3,s3,0x1b
    8000392c:	06f9e063          	bltu	s3,a5,8000398c <kinit+0xa4>
    80003930:	00003a97          	auipc	s5,0x3
    80003934:	590a8a93          	addi	s5,s5,1424 # 80006ec0 <end>
    80003938:	0754ec63          	bltu	s1,s5,800039b0 <kinit+0xc8>
    8000393c:	0734fa63          	bgeu	s1,s3,800039b0 <kinit+0xc8>
    80003940:	00088a37          	lui	s4,0x88
    80003944:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003948:	00002917          	auipc	s2,0x2
    8000394c:	2b890913          	addi	s2,s2,696 # 80005c00 <kmem>
    80003950:	00ca1a13          	slli	s4,s4,0xc
    80003954:	0140006f          	j	80003968 <kinit+0x80>
    80003958:	000017b7          	lui	a5,0x1
    8000395c:	00f484b3          	add	s1,s1,a5
    80003960:	0554e863          	bltu	s1,s5,800039b0 <kinit+0xc8>
    80003964:	0534f663          	bgeu	s1,s3,800039b0 <kinit+0xc8>
    80003968:	00001637          	lui	a2,0x1
    8000396c:	00100593          	li	a1,1
    80003970:	00048513          	mv	a0,s1
    80003974:	00000097          	auipc	ra,0x0
    80003978:	5e4080e7          	jalr	1508(ra) # 80003f58 <__memset>
    8000397c:	00093783          	ld	a5,0(s2)
    80003980:	00f4b023          	sd	a5,0(s1)
    80003984:	00993023          	sd	s1,0(s2)
    80003988:	fd4498e3          	bne	s1,s4,80003958 <kinit+0x70>
    8000398c:	03813083          	ld	ra,56(sp)
    80003990:	03013403          	ld	s0,48(sp)
    80003994:	02813483          	ld	s1,40(sp)
    80003998:	02013903          	ld	s2,32(sp)
    8000399c:	01813983          	ld	s3,24(sp)
    800039a0:	01013a03          	ld	s4,16(sp)
    800039a4:	00813a83          	ld	s5,8(sp)
    800039a8:	04010113          	addi	sp,sp,64
    800039ac:	00008067          	ret
    800039b0:	00002517          	auipc	a0,0x2
    800039b4:	b0850513          	addi	a0,a0,-1272 # 800054b8 <digits+0x18>
    800039b8:	fffff097          	auipc	ra,0xfffff
    800039bc:	4b4080e7          	jalr	1204(ra) # 80002e6c <panic>

00000000800039c0 <freerange>:
    800039c0:	fc010113          	addi	sp,sp,-64
    800039c4:	000017b7          	lui	a5,0x1
    800039c8:	02913423          	sd	s1,40(sp)
    800039cc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800039d0:	009504b3          	add	s1,a0,s1
    800039d4:	fffff537          	lui	a0,0xfffff
    800039d8:	02813823          	sd	s0,48(sp)
    800039dc:	02113c23          	sd	ra,56(sp)
    800039e0:	03213023          	sd	s2,32(sp)
    800039e4:	01313c23          	sd	s3,24(sp)
    800039e8:	01413823          	sd	s4,16(sp)
    800039ec:	01513423          	sd	s5,8(sp)
    800039f0:	01613023          	sd	s6,0(sp)
    800039f4:	04010413          	addi	s0,sp,64
    800039f8:	00a4f4b3          	and	s1,s1,a0
    800039fc:	00f487b3          	add	a5,s1,a5
    80003a00:	06f5e463          	bltu	a1,a5,80003a68 <freerange+0xa8>
    80003a04:	00003a97          	auipc	s5,0x3
    80003a08:	4bca8a93          	addi	s5,s5,1212 # 80006ec0 <end>
    80003a0c:	0954e263          	bltu	s1,s5,80003a90 <freerange+0xd0>
    80003a10:	01100993          	li	s3,17
    80003a14:	01b99993          	slli	s3,s3,0x1b
    80003a18:	0734fc63          	bgeu	s1,s3,80003a90 <freerange+0xd0>
    80003a1c:	00058a13          	mv	s4,a1
    80003a20:	00002917          	auipc	s2,0x2
    80003a24:	1e090913          	addi	s2,s2,480 # 80005c00 <kmem>
    80003a28:	00002b37          	lui	s6,0x2
    80003a2c:	0140006f          	j	80003a40 <freerange+0x80>
    80003a30:	000017b7          	lui	a5,0x1
    80003a34:	00f484b3          	add	s1,s1,a5
    80003a38:	0554ec63          	bltu	s1,s5,80003a90 <freerange+0xd0>
    80003a3c:	0534fa63          	bgeu	s1,s3,80003a90 <freerange+0xd0>
    80003a40:	00001637          	lui	a2,0x1
    80003a44:	00100593          	li	a1,1
    80003a48:	00048513          	mv	a0,s1
    80003a4c:	00000097          	auipc	ra,0x0
    80003a50:	50c080e7          	jalr	1292(ra) # 80003f58 <__memset>
    80003a54:	00093703          	ld	a4,0(s2)
    80003a58:	016487b3          	add	a5,s1,s6
    80003a5c:	00e4b023          	sd	a4,0(s1)
    80003a60:	00993023          	sd	s1,0(s2)
    80003a64:	fcfa76e3          	bgeu	s4,a5,80003a30 <freerange+0x70>
    80003a68:	03813083          	ld	ra,56(sp)
    80003a6c:	03013403          	ld	s0,48(sp)
    80003a70:	02813483          	ld	s1,40(sp)
    80003a74:	02013903          	ld	s2,32(sp)
    80003a78:	01813983          	ld	s3,24(sp)
    80003a7c:	01013a03          	ld	s4,16(sp)
    80003a80:	00813a83          	ld	s5,8(sp)
    80003a84:	00013b03          	ld	s6,0(sp)
    80003a88:	04010113          	addi	sp,sp,64
    80003a8c:	00008067          	ret
    80003a90:	00002517          	auipc	a0,0x2
    80003a94:	a2850513          	addi	a0,a0,-1496 # 800054b8 <digits+0x18>
    80003a98:	fffff097          	auipc	ra,0xfffff
    80003a9c:	3d4080e7          	jalr	980(ra) # 80002e6c <panic>

0000000080003aa0 <kfree>:
    80003aa0:	fe010113          	addi	sp,sp,-32
    80003aa4:	00813823          	sd	s0,16(sp)
    80003aa8:	00113c23          	sd	ra,24(sp)
    80003aac:	00913423          	sd	s1,8(sp)
    80003ab0:	02010413          	addi	s0,sp,32
    80003ab4:	03451793          	slli	a5,a0,0x34
    80003ab8:	04079c63          	bnez	a5,80003b10 <kfree+0x70>
    80003abc:	00003797          	auipc	a5,0x3
    80003ac0:	40478793          	addi	a5,a5,1028 # 80006ec0 <end>
    80003ac4:	00050493          	mv	s1,a0
    80003ac8:	04f56463          	bltu	a0,a5,80003b10 <kfree+0x70>
    80003acc:	01100793          	li	a5,17
    80003ad0:	01b79793          	slli	a5,a5,0x1b
    80003ad4:	02f57e63          	bgeu	a0,a5,80003b10 <kfree+0x70>
    80003ad8:	00001637          	lui	a2,0x1
    80003adc:	00100593          	li	a1,1
    80003ae0:	00000097          	auipc	ra,0x0
    80003ae4:	478080e7          	jalr	1144(ra) # 80003f58 <__memset>
    80003ae8:	00002797          	auipc	a5,0x2
    80003aec:	11878793          	addi	a5,a5,280 # 80005c00 <kmem>
    80003af0:	0007b703          	ld	a4,0(a5)
    80003af4:	01813083          	ld	ra,24(sp)
    80003af8:	01013403          	ld	s0,16(sp)
    80003afc:	00e4b023          	sd	a4,0(s1)
    80003b00:	0097b023          	sd	s1,0(a5)
    80003b04:	00813483          	ld	s1,8(sp)
    80003b08:	02010113          	addi	sp,sp,32
    80003b0c:	00008067          	ret
    80003b10:	00002517          	auipc	a0,0x2
    80003b14:	9a850513          	addi	a0,a0,-1624 # 800054b8 <digits+0x18>
    80003b18:	fffff097          	auipc	ra,0xfffff
    80003b1c:	354080e7          	jalr	852(ra) # 80002e6c <panic>

0000000080003b20 <kalloc>:
    80003b20:	fe010113          	addi	sp,sp,-32
    80003b24:	00813823          	sd	s0,16(sp)
    80003b28:	00913423          	sd	s1,8(sp)
    80003b2c:	00113c23          	sd	ra,24(sp)
    80003b30:	02010413          	addi	s0,sp,32
    80003b34:	00002797          	auipc	a5,0x2
    80003b38:	0cc78793          	addi	a5,a5,204 # 80005c00 <kmem>
    80003b3c:	0007b483          	ld	s1,0(a5)
    80003b40:	02048063          	beqz	s1,80003b60 <kalloc+0x40>
    80003b44:	0004b703          	ld	a4,0(s1)
    80003b48:	00001637          	lui	a2,0x1
    80003b4c:	00500593          	li	a1,5
    80003b50:	00048513          	mv	a0,s1
    80003b54:	00e7b023          	sd	a4,0(a5)
    80003b58:	00000097          	auipc	ra,0x0
    80003b5c:	400080e7          	jalr	1024(ra) # 80003f58 <__memset>
    80003b60:	01813083          	ld	ra,24(sp)
    80003b64:	01013403          	ld	s0,16(sp)
    80003b68:	00048513          	mv	a0,s1
    80003b6c:	00813483          	ld	s1,8(sp)
    80003b70:	02010113          	addi	sp,sp,32
    80003b74:	00008067          	ret

0000000080003b78 <initlock>:
    80003b78:	ff010113          	addi	sp,sp,-16
    80003b7c:	00813423          	sd	s0,8(sp)
    80003b80:	01010413          	addi	s0,sp,16
    80003b84:	00813403          	ld	s0,8(sp)
    80003b88:	00b53423          	sd	a1,8(a0)
    80003b8c:	00052023          	sw	zero,0(a0)
    80003b90:	00053823          	sd	zero,16(a0)
    80003b94:	01010113          	addi	sp,sp,16
    80003b98:	00008067          	ret

0000000080003b9c <acquire>:
    80003b9c:	fe010113          	addi	sp,sp,-32
    80003ba0:	00813823          	sd	s0,16(sp)
    80003ba4:	00913423          	sd	s1,8(sp)
    80003ba8:	00113c23          	sd	ra,24(sp)
    80003bac:	01213023          	sd	s2,0(sp)
    80003bb0:	02010413          	addi	s0,sp,32
    80003bb4:	00050493          	mv	s1,a0
    80003bb8:	10002973          	csrr	s2,sstatus
    80003bbc:	100027f3          	csrr	a5,sstatus
    80003bc0:	ffd7f793          	andi	a5,a5,-3
    80003bc4:	10079073          	csrw	sstatus,a5
    80003bc8:	fffff097          	auipc	ra,0xfffff
    80003bcc:	8e4080e7          	jalr	-1820(ra) # 800024ac <mycpu>
    80003bd0:	07852783          	lw	a5,120(a0)
    80003bd4:	06078e63          	beqz	a5,80003c50 <acquire+0xb4>
    80003bd8:	fffff097          	auipc	ra,0xfffff
    80003bdc:	8d4080e7          	jalr	-1836(ra) # 800024ac <mycpu>
    80003be0:	07852783          	lw	a5,120(a0)
    80003be4:	0004a703          	lw	a4,0(s1)
    80003be8:	0017879b          	addiw	a5,a5,1
    80003bec:	06f52c23          	sw	a5,120(a0)
    80003bf0:	04071063          	bnez	a4,80003c30 <acquire+0x94>
    80003bf4:	00100713          	li	a4,1
    80003bf8:	00070793          	mv	a5,a4
    80003bfc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003c00:	0007879b          	sext.w	a5,a5
    80003c04:	fe079ae3          	bnez	a5,80003bf8 <acquire+0x5c>
    80003c08:	0ff0000f          	fence
    80003c0c:	fffff097          	auipc	ra,0xfffff
    80003c10:	8a0080e7          	jalr	-1888(ra) # 800024ac <mycpu>
    80003c14:	01813083          	ld	ra,24(sp)
    80003c18:	01013403          	ld	s0,16(sp)
    80003c1c:	00a4b823          	sd	a0,16(s1)
    80003c20:	00013903          	ld	s2,0(sp)
    80003c24:	00813483          	ld	s1,8(sp)
    80003c28:	02010113          	addi	sp,sp,32
    80003c2c:	00008067          	ret
    80003c30:	0104b903          	ld	s2,16(s1)
    80003c34:	fffff097          	auipc	ra,0xfffff
    80003c38:	878080e7          	jalr	-1928(ra) # 800024ac <mycpu>
    80003c3c:	faa91ce3          	bne	s2,a0,80003bf4 <acquire+0x58>
    80003c40:	00002517          	auipc	a0,0x2
    80003c44:	88050513          	addi	a0,a0,-1920 # 800054c0 <digits+0x20>
    80003c48:	fffff097          	auipc	ra,0xfffff
    80003c4c:	224080e7          	jalr	548(ra) # 80002e6c <panic>
    80003c50:	00195913          	srli	s2,s2,0x1
    80003c54:	fffff097          	auipc	ra,0xfffff
    80003c58:	858080e7          	jalr	-1960(ra) # 800024ac <mycpu>
    80003c5c:	00197913          	andi	s2,s2,1
    80003c60:	07252e23          	sw	s2,124(a0)
    80003c64:	f75ff06f          	j	80003bd8 <acquire+0x3c>

0000000080003c68 <release>:
    80003c68:	fe010113          	addi	sp,sp,-32
    80003c6c:	00813823          	sd	s0,16(sp)
    80003c70:	00113c23          	sd	ra,24(sp)
    80003c74:	00913423          	sd	s1,8(sp)
    80003c78:	01213023          	sd	s2,0(sp)
    80003c7c:	02010413          	addi	s0,sp,32
    80003c80:	00052783          	lw	a5,0(a0)
    80003c84:	00079a63          	bnez	a5,80003c98 <release+0x30>
    80003c88:	00002517          	auipc	a0,0x2
    80003c8c:	84050513          	addi	a0,a0,-1984 # 800054c8 <digits+0x28>
    80003c90:	fffff097          	auipc	ra,0xfffff
    80003c94:	1dc080e7          	jalr	476(ra) # 80002e6c <panic>
    80003c98:	01053903          	ld	s2,16(a0)
    80003c9c:	00050493          	mv	s1,a0
    80003ca0:	fffff097          	auipc	ra,0xfffff
    80003ca4:	80c080e7          	jalr	-2036(ra) # 800024ac <mycpu>
    80003ca8:	fea910e3          	bne	s2,a0,80003c88 <release+0x20>
    80003cac:	0004b823          	sd	zero,16(s1)
    80003cb0:	0ff0000f          	fence
    80003cb4:	0f50000f          	fence	iorw,ow
    80003cb8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003cbc:	ffffe097          	auipc	ra,0xffffe
    80003cc0:	7f0080e7          	jalr	2032(ra) # 800024ac <mycpu>
    80003cc4:	100027f3          	csrr	a5,sstatus
    80003cc8:	0027f793          	andi	a5,a5,2
    80003ccc:	04079a63          	bnez	a5,80003d20 <release+0xb8>
    80003cd0:	07852783          	lw	a5,120(a0)
    80003cd4:	02f05e63          	blez	a5,80003d10 <release+0xa8>
    80003cd8:	fff7871b          	addiw	a4,a5,-1
    80003cdc:	06e52c23          	sw	a4,120(a0)
    80003ce0:	00071c63          	bnez	a4,80003cf8 <release+0x90>
    80003ce4:	07c52783          	lw	a5,124(a0)
    80003ce8:	00078863          	beqz	a5,80003cf8 <release+0x90>
    80003cec:	100027f3          	csrr	a5,sstatus
    80003cf0:	0027e793          	ori	a5,a5,2
    80003cf4:	10079073          	csrw	sstatus,a5
    80003cf8:	01813083          	ld	ra,24(sp)
    80003cfc:	01013403          	ld	s0,16(sp)
    80003d00:	00813483          	ld	s1,8(sp)
    80003d04:	00013903          	ld	s2,0(sp)
    80003d08:	02010113          	addi	sp,sp,32
    80003d0c:	00008067          	ret
    80003d10:	00001517          	auipc	a0,0x1
    80003d14:	7d850513          	addi	a0,a0,2008 # 800054e8 <digits+0x48>
    80003d18:	fffff097          	auipc	ra,0xfffff
    80003d1c:	154080e7          	jalr	340(ra) # 80002e6c <panic>
    80003d20:	00001517          	auipc	a0,0x1
    80003d24:	7b050513          	addi	a0,a0,1968 # 800054d0 <digits+0x30>
    80003d28:	fffff097          	auipc	ra,0xfffff
    80003d2c:	144080e7          	jalr	324(ra) # 80002e6c <panic>

0000000080003d30 <holding>:
    80003d30:	00052783          	lw	a5,0(a0)
    80003d34:	00079663          	bnez	a5,80003d40 <holding+0x10>
    80003d38:	00000513          	li	a0,0
    80003d3c:	00008067          	ret
    80003d40:	fe010113          	addi	sp,sp,-32
    80003d44:	00813823          	sd	s0,16(sp)
    80003d48:	00913423          	sd	s1,8(sp)
    80003d4c:	00113c23          	sd	ra,24(sp)
    80003d50:	02010413          	addi	s0,sp,32
    80003d54:	01053483          	ld	s1,16(a0)
    80003d58:	ffffe097          	auipc	ra,0xffffe
    80003d5c:	754080e7          	jalr	1876(ra) # 800024ac <mycpu>
    80003d60:	01813083          	ld	ra,24(sp)
    80003d64:	01013403          	ld	s0,16(sp)
    80003d68:	40a48533          	sub	a0,s1,a0
    80003d6c:	00153513          	seqz	a0,a0
    80003d70:	00813483          	ld	s1,8(sp)
    80003d74:	02010113          	addi	sp,sp,32
    80003d78:	00008067          	ret

0000000080003d7c <push_off>:
    80003d7c:	fe010113          	addi	sp,sp,-32
    80003d80:	00813823          	sd	s0,16(sp)
    80003d84:	00113c23          	sd	ra,24(sp)
    80003d88:	00913423          	sd	s1,8(sp)
    80003d8c:	02010413          	addi	s0,sp,32
    80003d90:	100024f3          	csrr	s1,sstatus
    80003d94:	100027f3          	csrr	a5,sstatus
    80003d98:	ffd7f793          	andi	a5,a5,-3
    80003d9c:	10079073          	csrw	sstatus,a5
    80003da0:	ffffe097          	auipc	ra,0xffffe
    80003da4:	70c080e7          	jalr	1804(ra) # 800024ac <mycpu>
    80003da8:	07852783          	lw	a5,120(a0)
    80003dac:	02078663          	beqz	a5,80003dd8 <push_off+0x5c>
    80003db0:	ffffe097          	auipc	ra,0xffffe
    80003db4:	6fc080e7          	jalr	1788(ra) # 800024ac <mycpu>
    80003db8:	07852783          	lw	a5,120(a0)
    80003dbc:	01813083          	ld	ra,24(sp)
    80003dc0:	01013403          	ld	s0,16(sp)
    80003dc4:	0017879b          	addiw	a5,a5,1
    80003dc8:	06f52c23          	sw	a5,120(a0)
    80003dcc:	00813483          	ld	s1,8(sp)
    80003dd0:	02010113          	addi	sp,sp,32
    80003dd4:	00008067          	ret
    80003dd8:	0014d493          	srli	s1,s1,0x1
    80003ddc:	ffffe097          	auipc	ra,0xffffe
    80003de0:	6d0080e7          	jalr	1744(ra) # 800024ac <mycpu>
    80003de4:	0014f493          	andi	s1,s1,1
    80003de8:	06952e23          	sw	s1,124(a0)
    80003dec:	fc5ff06f          	j	80003db0 <push_off+0x34>

0000000080003df0 <pop_off>:
    80003df0:	ff010113          	addi	sp,sp,-16
    80003df4:	00813023          	sd	s0,0(sp)
    80003df8:	00113423          	sd	ra,8(sp)
    80003dfc:	01010413          	addi	s0,sp,16
    80003e00:	ffffe097          	auipc	ra,0xffffe
    80003e04:	6ac080e7          	jalr	1708(ra) # 800024ac <mycpu>
    80003e08:	100027f3          	csrr	a5,sstatus
    80003e0c:	0027f793          	andi	a5,a5,2
    80003e10:	04079663          	bnez	a5,80003e5c <pop_off+0x6c>
    80003e14:	07852783          	lw	a5,120(a0)
    80003e18:	02f05a63          	blez	a5,80003e4c <pop_off+0x5c>
    80003e1c:	fff7871b          	addiw	a4,a5,-1
    80003e20:	06e52c23          	sw	a4,120(a0)
    80003e24:	00071c63          	bnez	a4,80003e3c <pop_off+0x4c>
    80003e28:	07c52783          	lw	a5,124(a0)
    80003e2c:	00078863          	beqz	a5,80003e3c <pop_off+0x4c>
    80003e30:	100027f3          	csrr	a5,sstatus
    80003e34:	0027e793          	ori	a5,a5,2
    80003e38:	10079073          	csrw	sstatus,a5
    80003e3c:	00813083          	ld	ra,8(sp)
    80003e40:	00013403          	ld	s0,0(sp)
    80003e44:	01010113          	addi	sp,sp,16
    80003e48:	00008067          	ret
    80003e4c:	00001517          	auipc	a0,0x1
    80003e50:	69c50513          	addi	a0,a0,1692 # 800054e8 <digits+0x48>
    80003e54:	fffff097          	auipc	ra,0xfffff
    80003e58:	018080e7          	jalr	24(ra) # 80002e6c <panic>
    80003e5c:	00001517          	auipc	a0,0x1
    80003e60:	67450513          	addi	a0,a0,1652 # 800054d0 <digits+0x30>
    80003e64:	fffff097          	auipc	ra,0xfffff
    80003e68:	008080e7          	jalr	8(ra) # 80002e6c <panic>

0000000080003e6c <push_on>:
    80003e6c:	fe010113          	addi	sp,sp,-32
    80003e70:	00813823          	sd	s0,16(sp)
    80003e74:	00113c23          	sd	ra,24(sp)
    80003e78:	00913423          	sd	s1,8(sp)
    80003e7c:	02010413          	addi	s0,sp,32
    80003e80:	100024f3          	csrr	s1,sstatus
    80003e84:	100027f3          	csrr	a5,sstatus
    80003e88:	0027e793          	ori	a5,a5,2
    80003e8c:	10079073          	csrw	sstatus,a5
    80003e90:	ffffe097          	auipc	ra,0xffffe
    80003e94:	61c080e7          	jalr	1564(ra) # 800024ac <mycpu>
    80003e98:	07852783          	lw	a5,120(a0)
    80003e9c:	02078663          	beqz	a5,80003ec8 <push_on+0x5c>
    80003ea0:	ffffe097          	auipc	ra,0xffffe
    80003ea4:	60c080e7          	jalr	1548(ra) # 800024ac <mycpu>
    80003ea8:	07852783          	lw	a5,120(a0)
    80003eac:	01813083          	ld	ra,24(sp)
    80003eb0:	01013403          	ld	s0,16(sp)
    80003eb4:	0017879b          	addiw	a5,a5,1
    80003eb8:	06f52c23          	sw	a5,120(a0)
    80003ebc:	00813483          	ld	s1,8(sp)
    80003ec0:	02010113          	addi	sp,sp,32
    80003ec4:	00008067          	ret
    80003ec8:	0014d493          	srli	s1,s1,0x1
    80003ecc:	ffffe097          	auipc	ra,0xffffe
    80003ed0:	5e0080e7          	jalr	1504(ra) # 800024ac <mycpu>
    80003ed4:	0014f493          	andi	s1,s1,1
    80003ed8:	06952e23          	sw	s1,124(a0)
    80003edc:	fc5ff06f          	j	80003ea0 <push_on+0x34>

0000000080003ee0 <pop_on>:
    80003ee0:	ff010113          	addi	sp,sp,-16
    80003ee4:	00813023          	sd	s0,0(sp)
    80003ee8:	00113423          	sd	ra,8(sp)
    80003eec:	01010413          	addi	s0,sp,16
    80003ef0:	ffffe097          	auipc	ra,0xffffe
    80003ef4:	5bc080e7          	jalr	1468(ra) # 800024ac <mycpu>
    80003ef8:	100027f3          	csrr	a5,sstatus
    80003efc:	0027f793          	andi	a5,a5,2
    80003f00:	04078463          	beqz	a5,80003f48 <pop_on+0x68>
    80003f04:	07852783          	lw	a5,120(a0)
    80003f08:	02f05863          	blez	a5,80003f38 <pop_on+0x58>
    80003f0c:	fff7879b          	addiw	a5,a5,-1
    80003f10:	06f52c23          	sw	a5,120(a0)
    80003f14:	07853783          	ld	a5,120(a0)
    80003f18:	00079863          	bnez	a5,80003f28 <pop_on+0x48>
    80003f1c:	100027f3          	csrr	a5,sstatus
    80003f20:	ffd7f793          	andi	a5,a5,-3
    80003f24:	10079073          	csrw	sstatus,a5
    80003f28:	00813083          	ld	ra,8(sp)
    80003f2c:	00013403          	ld	s0,0(sp)
    80003f30:	01010113          	addi	sp,sp,16
    80003f34:	00008067          	ret
    80003f38:	00001517          	auipc	a0,0x1
    80003f3c:	5d850513          	addi	a0,a0,1496 # 80005510 <digits+0x70>
    80003f40:	fffff097          	auipc	ra,0xfffff
    80003f44:	f2c080e7          	jalr	-212(ra) # 80002e6c <panic>
    80003f48:	00001517          	auipc	a0,0x1
    80003f4c:	5a850513          	addi	a0,a0,1448 # 800054f0 <digits+0x50>
    80003f50:	fffff097          	auipc	ra,0xfffff
    80003f54:	f1c080e7          	jalr	-228(ra) # 80002e6c <panic>

0000000080003f58 <__memset>:
    80003f58:	ff010113          	addi	sp,sp,-16
    80003f5c:	00813423          	sd	s0,8(sp)
    80003f60:	01010413          	addi	s0,sp,16
    80003f64:	1a060e63          	beqz	a2,80004120 <__memset+0x1c8>
    80003f68:	40a007b3          	neg	a5,a0
    80003f6c:	0077f793          	andi	a5,a5,7
    80003f70:	00778693          	addi	a3,a5,7
    80003f74:	00b00813          	li	a6,11
    80003f78:	0ff5f593          	andi	a1,a1,255
    80003f7c:	fff6071b          	addiw	a4,a2,-1
    80003f80:	1b06e663          	bltu	a3,a6,8000412c <__memset+0x1d4>
    80003f84:	1cd76463          	bltu	a4,a3,8000414c <__memset+0x1f4>
    80003f88:	1a078e63          	beqz	a5,80004144 <__memset+0x1ec>
    80003f8c:	00b50023          	sb	a1,0(a0)
    80003f90:	00100713          	li	a4,1
    80003f94:	1ae78463          	beq	a5,a4,8000413c <__memset+0x1e4>
    80003f98:	00b500a3          	sb	a1,1(a0)
    80003f9c:	00200713          	li	a4,2
    80003fa0:	1ae78a63          	beq	a5,a4,80004154 <__memset+0x1fc>
    80003fa4:	00b50123          	sb	a1,2(a0)
    80003fa8:	00300713          	li	a4,3
    80003fac:	18e78463          	beq	a5,a4,80004134 <__memset+0x1dc>
    80003fb0:	00b501a3          	sb	a1,3(a0)
    80003fb4:	00400713          	li	a4,4
    80003fb8:	1ae78263          	beq	a5,a4,8000415c <__memset+0x204>
    80003fbc:	00b50223          	sb	a1,4(a0)
    80003fc0:	00500713          	li	a4,5
    80003fc4:	1ae78063          	beq	a5,a4,80004164 <__memset+0x20c>
    80003fc8:	00b502a3          	sb	a1,5(a0)
    80003fcc:	00700713          	li	a4,7
    80003fd0:	18e79e63          	bne	a5,a4,8000416c <__memset+0x214>
    80003fd4:	00b50323          	sb	a1,6(a0)
    80003fd8:	00700e93          	li	t4,7
    80003fdc:	00859713          	slli	a4,a1,0x8
    80003fe0:	00e5e733          	or	a4,a1,a4
    80003fe4:	01059e13          	slli	t3,a1,0x10
    80003fe8:	01c76e33          	or	t3,a4,t3
    80003fec:	01859313          	slli	t1,a1,0x18
    80003ff0:	006e6333          	or	t1,t3,t1
    80003ff4:	02059893          	slli	a7,a1,0x20
    80003ff8:	40f60e3b          	subw	t3,a2,a5
    80003ffc:	011368b3          	or	a7,t1,a7
    80004000:	02859813          	slli	a6,a1,0x28
    80004004:	0108e833          	or	a6,a7,a6
    80004008:	03059693          	slli	a3,a1,0x30
    8000400c:	003e589b          	srliw	a7,t3,0x3
    80004010:	00d866b3          	or	a3,a6,a3
    80004014:	03859713          	slli	a4,a1,0x38
    80004018:	00389813          	slli	a6,a7,0x3
    8000401c:	00f507b3          	add	a5,a0,a5
    80004020:	00e6e733          	or	a4,a3,a4
    80004024:	000e089b          	sext.w	a7,t3
    80004028:	00f806b3          	add	a3,a6,a5
    8000402c:	00e7b023          	sd	a4,0(a5)
    80004030:	00878793          	addi	a5,a5,8
    80004034:	fed79ce3          	bne	a5,a3,8000402c <__memset+0xd4>
    80004038:	ff8e7793          	andi	a5,t3,-8
    8000403c:	0007871b          	sext.w	a4,a5
    80004040:	01d787bb          	addw	a5,a5,t4
    80004044:	0ce88e63          	beq	a7,a4,80004120 <__memset+0x1c8>
    80004048:	00f50733          	add	a4,a0,a5
    8000404c:	00b70023          	sb	a1,0(a4)
    80004050:	0017871b          	addiw	a4,a5,1
    80004054:	0cc77663          	bgeu	a4,a2,80004120 <__memset+0x1c8>
    80004058:	00e50733          	add	a4,a0,a4
    8000405c:	00b70023          	sb	a1,0(a4)
    80004060:	0027871b          	addiw	a4,a5,2
    80004064:	0ac77e63          	bgeu	a4,a2,80004120 <__memset+0x1c8>
    80004068:	00e50733          	add	a4,a0,a4
    8000406c:	00b70023          	sb	a1,0(a4)
    80004070:	0037871b          	addiw	a4,a5,3
    80004074:	0ac77663          	bgeu	a4,a2,80004120 <__memset+0x1c8>
    80004078:	00e50733          	add	a4,a0,a4
    8000407c:	00b70023          	sb	a1,0(a4)
    80004080:	0047871b          	addiw	a4,a5,4
    80004084:	08c77e63          	bgeu	a4,a2,80004120 <__memset+0x1c8>
    80004088:	00e50733          	add	a4,a0,a4
    8000408c:	00b70023          	sb	a1,0(a4)
    80004090:	0057871b          	addiw	a4,a5,5
    80004094:	08c77663          	bgeu	a4,a2,80004120 <__memset+0x1c8>
    80004098:	00e50733          	add	a4,a0,a4
    8000409c:	00b70023          	sb	a1,0(a4)
    800040a0:	0067871b          	addiw	a4,a5,6
    800040a4:	06c77e63          	bgeu	a4,a2,80004120 <__memset+0x1c8>
    800040a8:	00e50733          	add	a4,a0,a4
    800040ac:	00b70023          	sb	a1,0(a4)
    800040b0:	0077871b          	addiw	a4,a5,7
    800040b4:	06c77663          	bgeu	a4,a2,80004120 <__memset+0x1c8>
    800040b8:	00e50733          	add	a4,a0,a4
    800040bc:	00b70023          	sb	a1,0(a4)
    800040c0:	0087871b          	addiw	a4,a5,8
    800040c4:	04c77e63          	bgeu	a4,a2,80004120 <__memset+0x1c8>
    800040c8:	00e50733          	add	a4,a0,a4
    800040cc:	00b70023          	sb	a1,0(a4)
    800040d0:	0097871b          	addiw	a4,a5,9
    800040d4:	04c77663          	bgeu	a4,a2,80004120 <__memset+0x1c8>
    800040d8:	00e50733          	add	a4,a0,a4
    800040dc:	00b70023          	sb	a1,0(a4)
    800040e0:	00a7871b          	addiw	a4,a5,10
    800040e4:	02c77e63          	bgeu	a4,a2,80004120 <__memset+0x1c8>
    800040e8:	00e50733          	add	a4,a0,a4
    800040ec:	00b70023          	sb	a1,0(a4)
    800040f0:	00b7871b          	addiw	a4,a5,11
    800040f4:	02c77663          	bgeu	a4,a2,80004120 <__memset+0x1c8>
    800040f8:	00e50733          	add	a4,a0,a4
    800040fc:	00b70023          	sb	a1,0(a4)
    80004100:	00c7871b          	addiw	a4,a5,12
    80004104:	00c77e63          	bgeu	a4,a2,80004120 <__memset+0x1c8>
    80004108:	00e50733          	add	a4,a0,a4
    8000410c:	00b70023          	sb	a1,0(a4)
    80004110:	00d7879b          	addiw	a5,a5,13
    80004114:	00c7f663          	bgeu	a5,a2,80004120 <__memset+0x1c8>
    80004118:	00f507b3          	add	a5,a0,a5
    8000411c:	00b78023          	sb	a1,0(a5)
    80004120:	00813403          	ld	s0,8(sp)
    80004124:	01010113          	addi	sp,sp,16
    80004128:	00008067          	ret
    8000412c:	00b00693          	li	a3,11
    80004130:	e55ff06f          	j	80003f84 <__memset+0x2c>
    80004134:	00300e93          	li	t4,3
    80004138:	ea5ff06f          	j	80003fdc <__memset+0x84>
    8000413c:	00100e93          	li	t4,1
    80004140:	e9dff06f          	j	80003fdc <__memset+0x84>
    80004144:	00000e93          	li	t4,0
    80004148:	e95ff06f          	j	80003fdc <__memset+0x84>
    8000414c:	00000793          	li	a5,0
    80004150:	ef9ff06f          	j	80004048 <__memset+0xf0>
    80004154:	00200e93          	li	t4,2
    80004158:	e85ff06f          	j	80003fdc <__memset+0x84>
    8000415c:	00400e93          	li	t4,4
    80004160:	e7dff06f          	j	80003fdc <__memset+0x84>
    80004164:	00500e93          	li	t4,5
    80004168:	e75ff06f          	j	80003fdc <__memset+0x84>
    8000416c:	00600e93          	li	t4,6
    80004170:	e6dff06f          	j	80003fdc <__memset+0x84>

0000000080004174 <__memmove>:
    80004174:	ff010113          	addi	sp,sp,-16
    80004178:	00813423          	sd	s0,8(sp)
    8000417c:	01010413          	addi	s0,sp,16
    80004180:	0e060863          	beqz	a2,80004270 <__memmove+0xfc>
    80004184:	fff6069b          	addiw	a3,a2,-1
    80004188:	0006881b          	sext.w	a6,a3
    8000418c:	0ea5e863          	bltu	a1,a0,8000427c <__memmove+0x108>
    80004190:	00758713          	addi	a4,a1,7
    80004194:	00a5e7b3          	or	a5,a1,a0
    80004198:	40a70733          	sub	a4,a4,a0
    8000419c:	0077f793          	andi	a5,a5,7
    800041a0:	00f73713          	sltiu	a4,a4,15
    800041a4:	00174713          	xori	a4,a4,1
    800041a8:	0017b793          	seqz	a5,a5
    800041ac:	00e7f7b3          	and	a5,a5,a4
    800041b0:	10078863          	beqz	a5,800042c0 <__memmove+0x14c>
    800041b4:	00900793          	li	a5,9
    800041b8:	1107f463          	bgeu	a5,a6,800042c0 <__memmove+0x14c>
    800041bc:	0036581b          	srliw	a6,a2,0x3
    800041c0:	fff8081b          	addiw	a6,a6,-1
    800041c4:	02081813          	slli	a6,a6,0x20
    800041c8:	01d85893          	srli	a7,a6,0x1d
    800041cc:	00858813          	addi	a6,a1,8
    800041d0:	00058793          	mv	a5,a1
    800041d4:	00050713          	mv	a4,a0
    800041d8:	01088833          	add	a6,a7,a6
    800041dc:	0007b883          	ld	a7,0(a5)
    800041e0:	00878793          	addi	a5,a5,8
    800041e4:	00870713          	addi	a4,a4,8
    800041e8:	ff173c23          	sd	a7,-8(a4)
    800041ec:	ff0798e3          	bne	a5,a6,800041dc <__memmove+0x68>
    800041f0:	ff867713          	andi	a4,a2,-8
    800041f4:	02071793          	slli	a5,a4,0x20
    800041f8:	0207d793          	srli	a5,a5,0x20
    800041fc:	00f585b3          	add	a1,a1,a5
    80004200:	40e686bb          	subw	a3,a3,a4
    80004204:	00f507b3          	add	a5,a0,a5
    80004208:	06e60463          	beq	a2,a4,80004270 <__memmove+0xfc>
    8000420c:	0005c703          	lbu	a4,0(a1)
    80004210:	00e78023          	sb	a4,0(a5)
    80004214:	04068e63          	beqz	a3,80004270 <__memmove+0xfc>
    80004218:	0015c603          	lbu	a2,1(a1)
    8000421c:	00100713          	li	a4,1
    80004220:	00c780a3          	sb	a2,1(a5)
    80004224:	04e68663          	beq	a3,a4,80004270 <__memmove+0xfc>
    80004228:	0025c603          	lbu	a2,2(a1)
    8000422c:	00200713          	li	a4,2
    80004230:	00c78123          	sb	a2,2(a5)
    80004234:	02e68e63          	beq	a3,a4,80004270 <__memmove+0xfc>
    80004238:	0035c603          	lbu	a2,3(a1)
    8000423c:	00300713          	li	a4,3
    80004240:	00c781a3          	sb	a2,3(a5)
    80004244:	02e68663          	beq	a3,a4,80004270 <__memmove+0xfc>
    80004248:	0045c603          	lbu	a2,4(a1)
    8000424c:	00400713          	li	a4,4
    80004250:	00c78223          	sb	a2,4(a5)
    80004254:	00e68e63          	beq	a3,a4,80004270 <__memmove+0xfc>
    80004258:	0055c603          	lbu	a2,5(a1)
    8000425c:	00500713          	li	a4,5
    80004260:	00c782a3          	sb	a2,5(a5)
    80004264:	00e68663          	beq	a3,a4,80004270 <__memmove+0xfc>
    80004268:	0065c703          	lbu	a4,6(a1)
    8000426c:	00e78323          	sb	a4,6(a5)
    80004270:	00813403          	ld	s0,8(sp)
    80004274:	01010113          	addi	sp,sp,16
    80004278:	00008067          	ret
    8000427c:	02061713          	slli	a4,a2,0x20
    80004280:	02075713          	srli	a4,a4,0x20
    80004284:	00e587b3          	add	a5,a1,a4
    80004288:	f0f574e3          	bgeu	a0,a5,80004190 <__memmove+0x1c>
    8000428c:	02069613          	slli	a2,a3,0x20
    80004290:	02065613          	srli	a2,a2,0x20
    80004294:	fff64613          	not	a2,a2
    80004298:	00e50733          	add	a4,a0,a4
    8000429c:	00c78633          	add	a2,a5,a2
    800042a0:	fff7c683          	lbu	a3,-1(a5)
    800042a4:	fff78793          	addi	a5,a5,-1
    800042a8:	fff70713          	addi	a4,a4,-1
    800042ac:	00d70023          	sb	a3,0(a4)
    800042b0:	fec798e3          	bne	a5,a2,800042a0 <__memmove+0x12c>
    800042b4:	00813403          	ld	s0,8(sp)
    800042b8:	01010113          	addi	sp,sp,16
    800042bc:	00008067          	ret
    800042c0:	02069713          	slli	a4,a3,0x20
    800042c4:	02075713          	srli	a4,a4,0x20
    800042c8:	00170713          	addi	a4,a4,1
    800042cc:	00e50733          	add	a4,a0,a4
    800042d0:	00050793          	mv	a5,a0
    800042d4:	0005c683          	lbu	a3,0(a1)
    800042d8:	00178793          	addi	a5,a5,1
    800042dc:	00158593          	addi	a1,a1,1
    800042e0:	fed78fa3          	sb	a3,-1(a5)
    800042e4:	fee798e3          	bne	a5,a4,800042d4 <__memmove+0x160>
    800042e8:	f89ff06f          	j	80004270 <__memmove+0xfc>

00000000800042ec <__mem_free>:
    800042ec:	ff010113          	addi	sp,sp,-16
    800042f0:	00813423          	sd	s0,8(sp)
    800042f4:	01010413          	addi	s0,sp,16
    800042f8:	00002597          	auipc	a1,0x2
    800042fc:	91058593          	addi	a1,a1,-1776 # 80005c08 <freep>
    80004300:	0005b783          	ld	a5,0(a1)
    80004304:	ff050693          	addi	a3,a0,-16
    80004308:	0007b703          	ld	a4,0(a5)
    8000430c:	00d7fc63          	bgeu	a5,a3,80004324 <__mem_free+0x38>
    80004310:	00e6ee63          	bltu	a3,a4,8000432c <__mem_free+0x40>
    80004314:	00e7fc63          	bgeu	a5,a4,8000432c <__mem_free+0x40>
    80004318:	00070793          	mv	a5,a4
    8000431c:	0007b703          	ld	a4,0(a5)
    80004320:	fed7e8e3          	bltu	a5,a3,80004310 <__mem_free+0x24>
    80004324:	fee7eae3          	bltu	a5,a4,80004318 <__mem_free+0x2c>
    80004328:	fee6f8e3          	bgeu	a3,a4,80004318 <__mem_free+0x2c>
    8000432c:	ff852803          	lw	a6,-8(a0)
    80004330:	02081613          	slli	a2,a6,0x20
    80004334:	01c65613          	srli	a2,a2,0x1c
    80004338:	00c68633          	add	a2,a3,a2
    8000433c:	02c70a63          	beq	a4,a2,80004370 <__mem_free+0x84>
    80004340:	fee53823          	sd	a4,-16(a0)
    80004344:	0087a503          	lw	a0,8(a5)
    80004348:	02051613          	slli	a2,a0,0x20
    8000434c:	01c65613          	srli	a2,a2,0x1c
    80004350:	00c78633          	add	a2,a5,a2
    80004354:	04c68263          	beq	a3,a2,80004398 <__mem_free+0xac>
    80004358:	00813403          	ld	s0,8(sp)
    8000435c:	00d7b023          	sd	a3,0(a5)
    80004360:	00f5b023          	sd	a5,0(a1)
    80004364:	00000513          	li	a0,0
    80004368:	01010113          	addi	sp,sp,16
    8000436c:	00008067          	ret
    80004370:	00872603          	lw	a2,8(a4)
    80004374:	00073703          	ld	a4,0(a4)
    80004378:	0106083b          	addw	a6,a2,a6
    8000437c:	ff052c23          	sw	a6,-8(a0)
    80004380:	fee53823          	sd	a4,-16(a0)
    80004384:	0087a503          	lw	a0,8(a5)
    80004388:	02051613          	slli	a2,a0,0x20
    8000438c:	01c65613          	srli	a2,a2,0x1c
    80004390:	00c78633          	add	a2,a5,a2
    80004394:	fcc692e3          	bne	a3,a2,80004358 <__mem_free+0x6c>
    80004398:	00813403          	ld	s0,8(sp)
    8000439c:	0105053b          	addw	a0,a0,a6
    800043a0:	00a7a423          	sw	a0,8(a5)
    800043a4:	00e7b023          	sd	a4,0(a5)
    800043a8:	00f5b023          	sd	a5,0(a1)
    800043ac:	00000513          	li	a0,0
    800043b0:	01010113          	addi	sp,sp,16
    800043b4:	00008067          	ret

00000000800043b8 <__mem_alloc>:
    800043b8:	fc010113          	addi	sp,sp,-64
    800043bc:	02813823          	sd	s0,48(sp)
    800043c0:	02913423          	sd	s1,40(sp)
    800043c4:	03213023          	sd	s2,32(sp)
    800043c8:	01513423          	sd	s5,8(sp)
    800043cc:	02113c23          	sd	ra,56(sp)
    800043d0:	01313c23          	sd	s3,24(sp)
    800043d4:	01413823          	sd	s4,16(sp)
    800043d8:	01613023          	sd	s6,0(sp)
    800043dc:	04010413          	addi	s0,sp,64
    800043e0:	00002a97          	auipc	s5,0x2
    800043e4:	828a8a93          	addi	s5,s5,-2008 # 80005c08 <freep>
    800043e8:	00f50913          	addi	s2,a0,15
    800043ec:	000ab683          	ld	a3,0(s5)
    800043f0:	00495913          	srli	s2,s2,0x4
    800043f4:	0019049b          	addiw	s1,s2,1
    800043f8:	00048913          	mv	s2,s1
    800043fc:	0c068c63          	beqz	a3,800044d4 <__mem_alloc+0x11c>
    80004400:	0006b503          	ld	a0,0(a3)
    80004404:	00852703          	lw	a4,8(a0)
    80004408:	10977063          	bgeu	a4,s1,80004508 <__mem_alloc+0x150>
    8000440c:	000017b7          	lui	a5,0x1
    80004410:	0009099b          	sext.w	s3,s2
    80004414:	0af4e863          	bltu	s1,a5,800044c4 <__mem_alloc+0x10c>
    80004418:	02099a13          	slli	s4,s3,0x20
    8000441c:	01ca5a13          	srli	s4,s4,0x1c
    80004420:	fff00b13          	li	s6,-1
    80004424:	0100006f          	j	80004434 <__mem_alloc+0x7c>
    80004428:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000442c:	00852703          	lw	a4,8(a0)
    80004430:	04977463          	bgeu	a4,s1,80004478 <__mem_alloc+0xc0>
    80004434:	00050793          	mv	a5,a0
    80004438:	fea698e3          	bne	a3,a0,80004428 <__mem_alloc+0x70>
    8000443c:	000a0513          	mv	a0,s4
    80004440:	00000097          	auipc	ra,0x0
    80004444:	1f0080e7          	jalr	496(ra) # 80004630 <kvmincrease>
    80004448:	00050793          	mv	a5,a0
    8000444c:	01050513          	addi	a0,a0,16
    80004450:	07678e63          	beq	a5,s6,800044cc <__mem_alloc+0x114>
    80004454:	0137a423          	sw	s3,8(a5)
    80004458:	00000097          	auipc	ra,0x0
    8000445c:	e94080e7          	jalr	-364(ra) # 800042ec <__mem_free>
    80004460:	000ab783          	ld	a5,0(s5)
    80004464:	06078463          	beqz	a5,800044cc <__mem_alloc+0x114>
    80004468:	0007b503          	ld	a0,0(a5)
    8000446c:	00078693          	mv	a3,a5
    80004470:	00852703          	lw	a4,8(a0)
    80004474:	fc9760e3          	bltu	a4,s1,80004434 <__mem_alloc+0x7c>
    80004478:	08e48263          	beq	s1,a4,800044fc <__mem_alloc+0x144>
    8000447c:	4127073b          	subw	a4,a4,s2
    80004480:	02071693          	slli	a3,a4,0x20
    80004484:	01c6d693          	srli	a3,a3,0x1c
    80004488:	00e52423          	sw	a4,8(a0)
    8000448c:	00d50533          	add	a0,a0,a3
    80004490:	01252423          	sw	s2,8(a0)
    80004494:	00fab023          	sd	a5,0(s5)
    80004498:	01050513          	addi	a0,a0,16
    8000449c:	03813083          	ld	ra,56(sp)
    800044a0:	03013403          	ld	s0,48(sp)
    800044a4:	02813483          	ld	s1,40(sp)
    800044a8:	02013903          	ld	s2,32(sp)
    800044ac:	01813983          	ld	s3,24(sp)
    800044b0:	01013a03          	ld	s4,16(sp)
    800044b4:	00813a83          	ld	s5,8(sp)
    800044b8:	00013b03          	ld	s6,0(sp)
    800044bc:	04010113          	addi	sp,sp,64
    800044c0:	00008067          	ret
    800044c4:	000019b7          	lui	s3,0x1
    800044c8:	f51ff06f          	j	80004418 <__mem_alloc+0x60>
    800044cc:	00000513          	li	a0,0
    800044d0:	fcdff06f          	j	8000449c <__mem_alloc+0xe4>
    800044d4:	00003797          	auipc	a5,0x3
    800044d8:	9dc78793          	addi	a5,a5,-1572 # 80006eb0 <base>
    800044dc:	00078513          	mv	a0,a5
    800044e0:	00fab023          	sd	a5,0(s5)
    800044e4:	00f7b023          	sd	a5,0(a5)
    800044e8:	00000713          	li	a4,0
    800044ec:	00003797          	auipc	a5,0x3
    800044f0:	9c07a623          	sw	zero,-1588(a5) # 80006eb8 <base+0x8>
    800044f4:	00050693          	mv	a3,a0
    800044f8:	f11ff06f          	j	80004408 <__mem_alloc+0x50>
    800044fc:	00053703          	ld	a4,0(a0)
    80004500:	00e7b023          	sd	a4,0(a5)
    80004504:	f91ff06f          	j	80004494 <__mem_alloc+0xdc>
    80004508:	00068793          	mv	a5,a3
    8000450c:	f6dff06f          	j	80004478 <__mem_alloc+0xc0>

0000000080004510 <__putc>:
    80004510:	fe010113          	addi	sp,sp,-32
    80004514:	00813823          	sd	s0,16(sp)
    80004518:	00113c23          	sd	ra,24(sp)
    8000451c:	02010413          	addi	s0,sp,32
    80004520:	00050793          	mv	a5,a0
    80004524:	fef40593          	addi	a1,s0,-17
    80004528:	00100613          	li	a2,1
    8000452c:	00000513          	li	a0,0
    80004530:	fef407a3          	sb	a5,-17(s0)
    80004534:	fffff097          	auipc	ra,0xfffff
    80004538:	918080e7          	jalr	-1768(ra) # 80002e4c <console_write>
    8000453c:	01813083          	ld	ra,24(sp)
    80004540:	01013403          	ld	s0,16(sp)
    80004544:	02010113          	addi	sp,sp,32
    80004548:	00008067          	ret

000000008000454c <__getc>:
    8000454c:	fe010113          	addi	sp,sp,-32
    80004550:	00813823          	sd	s0,16(sp)
    80004554:	00113c23          	sd	ra,24(sp)
    80004558:	02010413          	addi	s0,sp,32
    8000455c:	fe840593          	addi	a1,s0,-24
    80004560:	00100613          	li	a2,1
    80004564:	00000513          	li	a0,0
    80004568:	fffff097          	auipc	ra,0xfffff
    8000456c:	8c4080e7          	jalr	-1852(ra) # 80002e2c <console_read>
    80004570:	fe844503          	lbu	a0,-24(s0)
    80004574:	01813083          	ld	ra,24(sp)
    80004578:	01013403          	ld	s0,16(sp)
    8000457c:	02010113          	addi	sp,sp,32
    80004580:	00008067          	ret

0000000080004584 <console_handler>:
    80004584:	fe010113          	addi	sp,sp,-32
    80004588:	00813823          	sd	s0,16(sp)
    8000458c:	00113c23          	sd	ra,24(sp)
    80004590:	00913423          	sd	s1,8(sp)
    80004594:	02010413          	addi	s0,sp,32
    80004598:	14202773          	csrr	a4,scause
    8000459c:	100027f3          	csrr	a5,sstatus
    800045a0:	0027f793          	andi	a5,a5,2
    800045a4:	06079e63          	bnez	a5,80004620 <console_handler+0x9c>
    800045a8:	00074c63          	bltz	a4,800045c0 <console_handler+0x3c>
    800045ac:	01813083          	ld	ra,24(sp)
    800045b0:	01013403          	ld	s0,16(sp)
    800045b4:	00813483          	ld	s1,8(sp)
    800045b8:	02010113          	addi	sp,sp,32
    800045bc:	00008067          	ret
    800045c0:	0ff77713          	andi	a4,a4,255
    800045c4:	00900793          	li	a5,9
    800045c8:	fef712e3          	bne	a4,a5,800045ac <console_handler+0x28>
    800045cc:	ffffe097          	auipc	ra,0xffffe
    800045d0:	4b8080e7          	jalr	1208(ra) # 80002a84 <plic_claim>
    800045d4:	00a00793          	li	a5,10
    800045d8:	00050493          	mv	s1,a0
    800045dc:	02f50c63          	beq	a0,a5,80004614 <console_handler+0x90>
    800045e0:	fc0506e3          	beqz	a0,800045ac <console_handler+0x28>
    800045e4:	00050593          	mv	a1,a0
    800045e8:	00001517          	auipc	a0,0x1
    800045ec:	e3050513          	addi	a0,a0,-464 # 80005418 <_ZZ12printIntegermE6digits+0xe0>
    800045f0:	fffff097          	auipc	ra,0xfffff
    800045f4:	8d8080e7          	jalr	-1832(ra) # 80002ec8 <__printf>
    800045f8:	01013403          	ld	s0,16(sp)
    800045fc:	01813083          	ld	ra,24(sp)
    80004600:	00048513          	mv	a0,s1
    80004604:	00813483          	ld	s1,8(sp)
    80004608:	02010113          	addi	sp,sp,32
    8000460c:	ffffe317          	auipc	t1,0xffffe
    80004610:	4b030067          	jr	1200(t1) # 80002abc <plic_complete>
    80004614:	fffff097          	auipc	ra,0xfffff
    80004618:	1bc080e7          	jalr	444(ra) # 800037d0 <uartintr>
    8000461c:	fddff06f          	j	800045f8 <console_handler+0x74>
    80004620:	00001517          	auipc	a0,0x1
    80004624:	ef850513          	addi	a0,a0,-264 # 80005518 <digits+0x78>
    80004628:	fffff097          	auipc	ra,0xfffff
    8000462c:	844080e7          	jalr	-1980(ra) # 80002e6c <panic>

0000000080004630 <kvmincrease>:
    80004630:	fe010113          	addi	sp,sp,-32
    80004634:	01213023          	sd	s2,0(sp)
    80004638:	00001937          	lui	s2,0x1
    8000463c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004640:	00813823          	sd	s0,16(sp)
    80004644:	00113c23          	sd	ra,24(sp)
    80004648:	00913423          	sd	s1,8(sp)
    8000464c:	02010413          	addi	s0,sp,32
    80004650:	01250933          	add	s2,a0,s2
    80004654:	00c95913          	srli	s2,s2,0xc
    80004658:	02090863          	beqz	s2,80004688 <kvmincrease+0x58>
    8000465c:	00000493          	li	s1,0
    80004660:	00148493          	addi	s1,s1,1
    80004664:	fffff097          	auipc	ra,0xfffff
    80004668:	4bc080e7          	jalr	1212(ra) # 80003b20 <kalloc>
    8000466c:	fe991ae3          	bne	s2,s1,80004660 <kvmincrease+0x30>
    80004670:	01813083          	ld	ra,24(sp)
    80004674:	01013403          	ld	s0,16(sp)
    80004678:	00813483          	ld	s1,8(sp)
    8000467c:	00013903          	ld	s2,0(sp)
    80004680:	02010113          	addi	sp,sp,32
    80004684:	00008067          	ret
    80004688:	01813083          	ld	ra,24(sp)
    8000468c:	01013403          	ld	s0,16(sp)
    80004690:	00813483          	ld	s1,8(sp)
    80004694:	00013903          	ld	s2,0(sp)
    80004698:	00000513          	li	a0,0
    8000469c:	02010113          	addi	sp,sp,32
    800046a0:	00008067          	ret
	...
