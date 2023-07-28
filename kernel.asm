
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	80013103          	ld	sp,-2048(sp) # 80005800 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	58d010ef          	jal	ra,80001da8 <start>

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
    80001084:	189000ef          	jal	ra,80001a0c <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001124 <_ZL9fibonaccim>:
        }
    }
}

static uint64 fibonacci(uint64 n)
{
    80001124:	fe010113          	addi	sp,sp,-32
    80001128:	00113c23          	sd	ra,24(sp)
    8000112c:	00813823          	sd	s0,16(sp)
    80001130:	00913423          	sd	s1,8(sp)
    80001134:	01213023          	sd	s2,0(sp)
    80001138:	02010413          	addi	s0,sp,32
    8000113c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001140:	00100793          	li	a5,1
    80001144:	02a7f863          	bgeu	a5,a0,80001174 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { TCB::yield(); }
    80001148:	00a00793          	li	a5,10
    8000114c:	02f577b3          	remu	a5,a0,a5
    80001150:	02078e63          	beqz	a5,8000118c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001154:	fff48513          	addi	a0,s1,-1
    80001158:	00000097          	auipc	ra,0x0
    8000115c:	fcc080e7          	jalr	-52(ra) # 80001124 <_ZL9fibonaccim>
    80001160:	00050913          	mv	s2,a0
    80001164:	ffe48513          	addi	a0,s1,-2
    80001168:	00000097          	auipc	ra,0x0
    8000116c:	fbc080e7          	jalr	-68(ra) # 80001124 <_ZL9fibonaccim>
    80001170:	00a90533          	add	a0,s2,a0
}
    80001174:	01813083          	ld	ra,24(sp)
    80001178:	01013403          	ld	s0,16(sp)
    8000117c:	00813483          	ld	s1,8(sp)
    80001180:	00013903          	ld	s2,0(sp)
    80001184:	02010113          	addi	sp,sp,32
    80001188:	00008067          	ret
    if (n % 10 == 0) { TCB::yield(); }
    8000118c:	00000097          	auipc	ra,0x0
    80001190:	5c8080e7          	jalr	1480(ra) # 80001754 <_ZN3TCB5yieldEv>
    80001194:	fc1ff06f          	j	80001154 <_ZL9fibonaccim+0x30>

0000000080001198 <_Z11workerBodyAv>:
{
    80001198:	fe010113          	addi	sp,sp,-32
    8000119c:	00113c23          	sd	ra,24(sp)
    800011a0:	00813823          	sd	s0,16(sp)
    800011a4:	00913423          	sd	s1,8(sp)
    800011a8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++)
    800011ac:	00000493          	li	s1,0
    800011b0:	0300006f          	j	800011e0 <_Z11workerBodyAv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    800011b4:	00168693          	addi	a3,a3,1
    800011b8:	000027b7          	lui	a5,0x2
    800011bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800011c0:	00d7ee63          	bltu	a5,a3,800011dc <_Z11workerBodyAv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    800011c4:	00000713          	li	a4,0
    800011c8:	000077b7          	lui	a5,0x7
    800011cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800011d0:	fee7e2e3          	bltu	a5,a4,800011b4 <_Z11workerBodyAv+0x1c>
    800011d4:	00170713          	addi	a4,a4,1
    800011d8:	ff1ff06f          	j	800011c8 <_Z11workerBodyAv+0x30>
    for (uint64 i = 0; i < 10; i++)
    800011dc:	00148493          	addi	s1,s1,1
    800011e0:	00900793          	li	a5,9
    800011e4:	0297ec63          	bltu	a5,s1,8000121c <_Z11workerBodyAv+0x84>
        printString("A: i=");
    800011e8:	00004517          	auipc	a0,0x4
    800011ec:	e1850513          	addi	a0,a0,-488 # 80005000 <kvmincrease+0xe50>
    800011f0:	00001097          	auipc	ra,0x1
    800011f4:	a8c080e7          	jalr	-1396(ra) # 80001c7c <_Z11printStringPKc>
        printInteger(i);
    800011f8:	00048513          	mv	a0,s1
    800011fc:	00001097          	auipc	ra,0x1
    80001200:	af0080e7          	jalr	-1296(ra) # 80001cec <_Z12printIntegerm>
        printString("\n");
    80001204:	00004517          	auipc	a0,0x4
    80001208:	ecc50513          	addi	a0,a0,-308 # 800050d0 <kvmincrease+0xf20>
    8000120c:	00001097          	auipc	ra,0x1
    80001210:	a70080e7          	jalr	-1424(ra) # 80001c7c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    80001214:	00000693          	li	a3,0
    80001218:	fa1ff06f          	j	800011b8 <_Z11workerBodyAv+0x20>
}
    8000121c:	01813083          	ld	ra,24(sp)
    80001220:	01013403          	ld	s0,16(sp)
    80001224:	00813483          	ld	s1,8(sp)
    80001228:	02010113          	addi	sp,sp,32
    8000122c:	00008067          	ret

0000000080001230 <_Z11workerBodyBv>:
{
    80001230:	fe010113          	addi	sp,sp,-32
    80001234:	00113c23          	sd	ra,24(sp)
    80001238:	00813823          	sd	s0,16(sp)
    8000123c:	00913423          	sd	s1,8(sp)
    80001240:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++)
    80001244:	00000493          	li	s1,0
    80001248:	0300006f          	j	80001278 <_Z11workerBodyBv+0x48>
        for (uint64 j = 0; j < 10000; j++)
    8000124c:	00168693          	addi	a3,a3,1
    80001250:	000027b7          	lui	a5,0x2
    80001254:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001258:	00d7ee63          	bltu	a5,a3,80001274 <_Z11workerBodyBv+0x44>
            for (uint64 k = 0; k < 30000; k++)
    8000125c:	00000713          	li	a4,0
    80001260:	000077b7          	lui	a5,0x7
    80001264:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001268:	fee7e2e3          	bltu	a5,a4,8000124c <_Z11workerBodyBv+0x1c>
    8000126c:	00170713          	addi	a4,a4,1
    80001270:	ff1ff06f          	j	80001260 <_Z11workerBodyBv+0x30>
    for (uint64 i = 0; i < 16; i++)
    80001274:	00148493          	addi	s1,s1,1
    80001278:	00f00793          	li	a5,15
    8000127c:	0297ec63          	bltu	a5,s1,800012b4 <_Z11workerBodyBv+0x84>
        printString("B: i=");
    80001280:	00004517          	auipc	a0,0x4
    80001284:	d8850513          	addi	a0,a0,-632 # 80005008 <kvmincrease+0xe58>
    80001288:	00001097          	auipc	ra,0x1
    8000128c:	9f4080e7          	jalr	-1548(ra) # 80001c7c <_Z11printStringPKc>
        printInteger(i);
    80001290:	00048513          	mv	a0,s1
    80001294:	00001097          	auipc	ra,0x1
    80001298:	a58080e7          	jalr	-1448(ra) # 80001cec <_Z12printIntegerm>
        printString("\n");
    8000129c:	00004517          	auipc	a0,0x4
    800012a0:	e3450513          	addi	a0,a0,-460 # 800050d0 <kvmincrease+0xf20>
    800012a4:	00001097          	auipc	ra,0x1
    800012a8:	9d8080e7          	jalr	-1576(ra) # 80001c7c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++)
    800012ac:	00000693          	li	a3,0
    800012b0:	fa1ff06f          	j	80001250 <_Z11workerBodyBv+0x20>
}
    800012b4:	01813083          	ld	ra,24(sp)
    800012b8:	01013403          	ld	s0,16(sp)
    800012bc:	00813483          	ld	s1,8(sp)
    800012c0:	02010113          	addi	sp,sp,32
    800012c4:	00008067          	ret

00000000800012c8 <_Z11workerBodyCv>:

void workerBodyC()
{
    800012c8:	fe010113          	addi	sp,sp,-32
    800012cc:	00113c23          	sd	ra,24(sp)
    800012d0:	00813823          	sd	s0,16(sp)
    800012d4:	00913423          	sd	s1,8(sp)
    800012d8:	01213023          	sd	s2,0(sp)
    800012dc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800012e0:	00000493          	li	s1,0
    800012e4:	0380006f          	j	8000131c <_Z11workerBodyCv+0x54>
    for (; i < 3; i++)
    {
        printString("C: i=");
    800012e8:	00004517          	auipc	a0,0x4
    800012ec:	d2850513          	addi	a0,a0,-728 # 80005010 <kvmincrease+0xe60>
    800012f0:	00001097          	auipc	ra,0x1
    800012f4:	98c080e7          	jalr	-1652(ra) # 80001c7c <_Z11printStringPKc>
        printInteger(i);
    800012f8:	00048513          	mv	a0,s1
    800012fc:	00001097          	auipc	ra,0x1
    80001300:	9f0080e7          	jalr	-1552(ra) # 80001cec <_Z12printIntegerm>
        printString("\n");
    80001304:	00004517          	auipc	a0,0x4
    80001308:	dcc50513          	addi	a0,a0,-564 # 800050d0 <kvmincrease+0xf20>
    8000130c:	00001097          	auipc	ra,0x1
    80001310:	970080e7          	jalr	-1680(ra) # 80001c7c <_Z11printStringPKc>
    for (; i < 3; i++)
    80001314:	0014849b          	addiw	s1,s1,1
    80001318:	0ff4f493          	andi	s1,s1,255
    8000131c:	00200793          	li	a5,2
    80001320:	fc97f4e3          	bgeu	a5,s1,800012e8 <_Z11workerBodyCv+0x20>
    }

    printString("C: yield\n");
    80001324:	00004517          	auipc	a0,0x4
    80001328:	cf450513          	addi	a0,a0,-780 # 80005018 <kvmincrease+0xe68>
    8000132c:	00001097          	auipc	ra,0x1
    80001330:	950080e7          	jalr	-1712(ra) # 80001c7c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001334:	00700313          	li	t1,7
    TCB::yield();
    80001338:	00000097          	auipc	ra,0x0
    8000133c:	41c080e7          	jalr	1052(ra) # 80001754 <_ZN3TCB5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001340:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001344:	00004517          	auipc	a0,0x4
    80001348:	ce450513          	addi	a0,a0,-796 # 80005028 <kvmincrease+0xe78>
    8000134c:	00001097          	auipc	ra,0x1
    80001350:	930080e7          	jalr	-1744(ra) # 80001c7c <_Z11printStringPKc>
    printInteger(t1);
    80001354:	00090513          	mv	a0,s2
    80001358:	00001097          	auipc	ra,0x1
    8000135c:	994080e7          	jalr	-1644(ra) # 80001cec <_Z12printIntegerm>
    printString("\n");
    80001360:	00004517          	auipc	a0,0x4
    80001364:	d7050513          	addi	a0,a0,-656 # 800050d0 <kvmincrease+0xf20>
    80001368:	00001097          	auipc	ra,0x1
    8000136c:	914080e7          	jalr	-1772(ra) # 80001c7c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001370:	00c00513          	li	a0,12
    80001374:	00000097          	auipc	ra,0x0
    80001378:	db0080e7          	jalr	-592(ra) # 80001124 <_ZL9fibonaccim>
    8000137c:	00050913          	mv	s2,a0
    printString("C: fibonaci=");
    80001380:	00004517          	auipc	a0,0x4
    80001384:	cb050513          	addi	a0,a0,-848 # 80005030 <kvmincrease+0xe80>
    80001388:	00001097          	auipc	ra,0x1
    8000138c:	8f4080e7          	jalr	-1804(ra) # 80001c7c <_Z11printStringPKc>
    printInteger(result);
    80001390:	00090513          	mv	a0,s2
    80001394:	00001097          	auipc	ra,0x1
    80001398:	958080e7          	jalr	-1704(ra) # 80001cec <_Z12printIntegerm>
    printString("\n");
    8000139c:	00004517          	auipc	a0,0x4
    800013a0:	d3450513          	addi	a0,a0,-716 # 800050d0 <kvmincrease+0xf20>
    800013a4:	00001097          	auipc	ra,0x1
    800013a8:	8d8080e7          	jalr	-1832(ra) # 80001c7c <_Z11printStringPKc>
    800013ac:	0380006f          	j	800013e4 <_Z11workerBodyCv+0x11c>

    for (; i < 6; i++)
    {
        printString("C: i=");
    800013b0:	00004517          	auipc	a0,0x4
    800013b4:	c6050513          	addi	a0,a0,-928 # 80005010 <kvmincrease+0xe60>
    800013b8:	00001097          	auipc	ra,0x1
    800013bc:	8c4080e7          	jalr	-1852(ra) # 80001c7c <_Z11printStringPKc>
        printInteger(i);
    800013c0:	00048513          	mv	a0,s1
    800013c4:	00001097          	auipc	ra,0x1
    800013c8:	928080e7          	jalr	-1752(ra) # 80001cec <_Z12printIntegerm>
        printString("\n");
    800013cc:	00004517          	auipc	a0,0x4
    800013d0:	d0450513          	addi	a0,a0,-764 # 800050d0 <kvmincrease+0xf20>
    800013d4:	00001097          	auipc	ra,0x1
    800013d8:	8a8080e7          	jalr	-1880(ra) # 80001c7c <_Z11printStringPKc>
    for (; i < 6; i++)
    800013dc:	0014849b          	addiw	s1,s1,1
    800013e0:	0ff4f493          	andi	s1,s1,255
    800013e4:	00500793          	li	a5,5
    800013e8:	fc97f4e3          	bgeu	a5,s1,800013b0 <_Z11workerBodyCv+0xe8>
    }
//    TCB::yield();
}
    800013ec:	01813083          	ld	ra,24(sp)
    800013f0:	01013403          	ld	s0,16(sp)
    800013f4:	00813483          	ld	s1,8(sp)
    800013f8:	00013903          	ld	s2,0(sp)
    800013fc:	02010113          	addi	sp,sp,32
    80001400:	00008067          	ret

0000000080001404 <_Z11workerBodyDv>:

void workerBodyD()
{
    80001404:	fe010113          	addi	sp,sp,-32
    80001408:	00113c23          	sd	ra,24(sp)
    8000140c:	00813823          	sd	s0,16(sp)
    80001410:	00913423          	sd	s1,8(sp)
    80001414:	01213023          	sd	s2,0(sp)
    80001418:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000141c:	00a00493          	li	s1,10
    80001420:	0380006f          	j	80001458 <_Z11workerBodyDv+0x54>
    for (; i < 13; i++)
    {
        printString("D: i=");
    80001424:	00004517          	auipc	a0,0x4
    80001428:	c1c50513          	addi	a0,a0,-996 # 80005040 <kvmincrease+0xe90>
    8000142c:	00001097          	auipc	ra,0x1
    80001430:	850080e7          	jalr	-1968(ra) # 80001c7c <_Z11printStringPKc>
        printInteger(i);
    80001434:	00048513          	mv	a0,s1
    80001438:	00001097          	auipc	ra,0x1
    8000143c:	8b4080e7          	jalr	-1868(ra) # 80001cec <_Z12printIntegerm>
        printString("\n");
    80001440:	00004517          	auipc	a0,0x4
    80001444:	c9050513          	addi	a0,a0,-880 # 800050d0 <kvmincrease+0xf20>
    80001448:	00001097          	auipc	ra,0x1
    8000144c:	834080e7          	jalr	-1996(ra) # 80001c7c <_Z11printStringPKc>
    for (; i < 13; i++)
    80001450:	0014849b          	addiw	s1,s1,1
    80001454:	0ff4f493          	andi	s1,s1,255
    80001458:	00c00793          	li	a5,12
    8000145c:	fc97f4e3          	bgeu	a5,s1,80001424 <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    80001460:	00004517          	auipc	a0,0x4
    80001464:	be850513          	addi	a0,a0,-1048 # 80005048 <kvmincrease+0xe98>
    80001468:	00001097          	auipc	ra,0x1
    8000146c:	814080e7          	jalr	-2028(ra) # 80001c7c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001470:	00500313          	li	t1,5
    TCB::yield();
    80001474:	00000097          	auipc	ra,0x0
    80001478:	2e0080e7          	jalr	736(ra) # 80001754 <_ZN3TCB5yieldEv>

    uint64 result = fibonacci(16);
    8000147c:	01000513          	li	a0,16
    80001480:	00000097          	auipc	ra,0x0
    80001484:	ca4080e7          	jalr	-860(ra) # 80001124 <_ZL9fibonaccim>
    80001488:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    8000148c:	00004517          	auipc	a0,0x4
    80001490:	bcc50513          	addi	a0,a0,-1076 # 80005058 <kvmincrease+0xea8>
    80001494:	00000097          	auipc	ra,0x0
    80001498:	7e8080e7          	jalr	2024(ra) # 80001c7c <_Z11printStringPKc>
    printInteger(result);
    8000149c:	00090513          	mv	a0,s2
    800014a0:	00001097          	auipc	ra,0x1
    800014a4:	84c080e7          	jalr	-1972(ra) # 80001cec <_Z12printIntegerm>
    printString("\n");
    800014a8:	00004517          	auipc	a0,0x4
    800014ac:	c2850513          	addi	a0,a0,-984 # 800050d0 <kvmincrease+0xf20>
    800014b0:	00000097          	auipc	ra,0x0
    800014b4:	7cc080e7          	jalr	1996(ra) # 80001c7c <_Z11printStringPKc>
    800014b8:	0380006f          	j	800014f0 <_Z11workerBodyDv+0xec>

    for (; i < 16; i++)
    {
        printString("D: i=");
    800014bc:	00004517          	auipc	a0,0x4
    800014c0:	b8450513          	addi	a0,a0,-1148 # 80005040 <kvmincrease+0xe90>
    800014c4:	00000097          	auipc	ra,0x0
    800014c8:	7b8080e7          	jalr	1976(ra) # 80001c7c <_Z11printStringPKc>
        printInteger(i);
    800014cc:	00048513          	mv	a0,s1
    800014d0:	00001097          	auipc	ra,0x1
    800014d4:	81c080e7          	jalr	-2020(ra) # 80001cec <_Z12printIntegerm>
        printString("\n");
    800014d8:	00004517          	auipc	a0,0x4
    800014dc:	bf850513          	addi	a0,a0,-1032 # 800050d0 <kvmincrease+0xf20>
    800014e0:	00000097          	auipc	ra,0x0
    800014e4:	79c080e7          	jalr	1948(ra) # 80001c7c <_Z11printStringPKc>
    for (; i < 16; i++)
    800014e8:	0014849b          	addiw	s1,s1,1
    800014ec:	0ff4f493          	andi	s1,s1,255
    800014f0:	00f00793          	li	a5,15
    800014f4:	fc97f4e3          	bgeu	a5,s1,800014bc <_Z11workerBodyDv+0xb8>
    }
//    TCB::yield();
    800014f8:	01813083          	ld	ra,24(sp)
    800014fc:	01013403          	ld	s0,16(sp)
    80001500:	00813483          	ld	s1,8(sp)
    80001504:	00013903          	ld	s2,0(sp)
    80001508:	02010113          	addi	sp,sp,32
    8000150c:	00008067          	ret

0000000080001510 <main>:
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"

int main()
{
    80001510:	fb010113          	addi	sp,sp,-80
    80001514:	04113423          	sd	ra,72(sp)
    80001518:	04813023          	sd	s0,64(sp)
    8000151c:	02913c23          	sd	s1,56(sp)
    80001520:	03213823          	sd	s2,48(sp)
    80001524:	05010413          	addi	s0,sp,80
    TCB *threads[5];

    threads[0] = TCB::createThread(nullptr);
    80001528:	00000513          	li	a0,0
    8000152c:	00000097          	auipc	ra,0x0
    80001530:	160080e7          	jalr	352(ra) # 8000168c <_ZN3TCB12createThreadEPFvvE>
    80001534:	faa43c23          	sd	a0,-72(s0)
    TCB::running = threads[0];
    80001538:	00004797          	auipc	a5,0x4
    8000153c:	2d07b783          	ld	a5,720(a5) # 80005808 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001540:	00a7b023          	sd	a0,0(a5)

    threads[1] = TCB::createThread(workerBodyA);
    80001544:	00004517          	auipc	a0,0x4
    80001548:	2b453503          	ld	a0,692(a0) # 800057f8 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000154c:	00000097          	auipc	ra,0x0
    80001550:	140080e7          	jalr	320(ra) # 8000168c <_ZN3TCB12createThreadEPFvvE>
    80001554:	fca43023          	sd	a0,-64(s0)
    printString("ThreadA created\n");
    80001558:	00004517          	auipc	a0,0x4
    8000155c:	b1050513          	addi	a0,a0,-1264 # 80005068 <kvmincrease+0xeb8>
    80001560:	00000097          	auipc	ra,0x0
    80001564:	71c080e7          	jalr	1820(ra) # 80001c7c <_Z11printStringPKc>
    threads[2] = TCB::createThread(workerBodyB);
    80001568:	00004517          	auipc	a0,0x4
    8000156c:	28053503          	ld	a0,640(a0) # 800057e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001570:	00000097          	auipc	ra,0x0
    80001574:	11c080e7          	jalr	284(ra) # 8000168c <_ZN3TCB12createThreadEPFvvE>
    80001578:	fca43423          	sd	a0,-56(s0)
    printString("ThreadB created\n");
    8000157c:	00004517          	auipc	a0,0x4
    80001580:	b0450513          	addi	a0,a0,-1276 # 80005080 <kvmincrease+0xed0>
    80001584:	00000097          	auipc	ra,0x0
    80001588:	6f8080e7          	jalr	1784(ra) # 80001c7c <_Z11printStringPKc>
    threads[3] = TCB::createThread(workerBodyC);
    8000158c:	00004517          	auipc	a0,0x4
    80001590:	28453503          	ld	a0,644(a0) # 80005810 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001594:	00000097          	auipc	ra,0x0
    80001598:	0f8080e7          	jalr	248(ra) # 8000168c <_ZN3TCB12createThreadEPFvvE>
    8000159c:	fca43823          	sd	a0,-48(s0)
    printString("ThreadC created\n");
    800015a0:	00004517          	auipc	a0,0x4
    800015a4:	af850513          	addi	a0,a0,-1288 # 80005098 <kvmincrease+0xee8>
    800015a8:	00000097          	auipc	ra,0x0
    800015ac:	6d4080e7          	jalr	1748(ra) # 80001c7c <_Z11printStringPKc>
    threads[4] = TCB::createThread(workerBodyD);
    800015b0:	00004517          	auipc	a0,0x4
    800015b4:	26853503          	ld	a0,616(a0) # 80005818 <_GLOBAL_OFFSET_TABLE_+0x40>
    800015b8:	00000097          	auipc	ra,0x0
    800015bc:	0d4080e7          	jalr	212(ra) # 8000168c <_ZN3TCB12createThreadEPFvvE>
    800015c0:	fca43c23          	sd	a0,-40(s0)
    printString("ThreadD created\n");
    800015c4:	00004517          	auipc	a0,0x4
    800015c8:	aec50513          	addi	a0,a0,-1300 # 800050b0 <kvmincrease+0xf00>
    800015cc:	00000097          	auipc	ra,0x0
    800015d0:	6b0080e7          	jalr	1712(ra) # 80001c7c <_Z11printStringPKc>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800015d4:	00004797          	auipc	a5,0x4
    800015d8:	20c7b783          	ld	a5,524(a5) # 800057e0 <_GLOBAL_OFFSET_TABLE_+0x8>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800015dc:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800015e0:	00200793          	li	a5,2
    800015e4:	1007a073          	csrs	sstatus,a5
}
    800015e8:	00c0006f          	j	800015f4 <main+0xe4>
    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        TCB::yield();
    800015ec:	00000097          	auipc	ra,0x0
    800015f0:	168080e7          	jalr	360(ra) # 80001754 <_ZN3TCB5yieldEv>
    while (!(threads[1]->isFinished() &&
    800015f4:	fc043783          	ld	a5,-64(s0)
class TCB
{
public:
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    800015f8:	0287c783          	lbu	a5,40(a5)
    800015fc:	fe0788e3          	beqz	a5,800015ec <main+0xdc>
             threads[2]->isFinished() &&
    80001600:	fc843783          	ld	a5,-56(s0)
    80001604:	0287c783          	lbu	a5,40(a5)
    while (!(threads[1]->isFinished() &&
    80001608:	fe0782e3          	beqz	a5,800015ec <main+0xdc>
             threads[3]->isFinished() &&
    8000160c:	fd043783          	ld	a5,-48(s0)
    80001610:	0287c783          	lbu	a5,40(a5)
             threads[2]->isFinished() &&
    80001614:	fc078ce3          	beqz	a5,800015ec <main+0xdc>
             threads[4]->isFinished()))
    80001618:	fd843783          	ld	a5,-40(s0)
    8000161c:	0287c783          	lbu	a5,40(a5)
    while (!(threads[1]->isFinished() &&
    80001620:	fc0786e3          	beqz	a5,800015ec <main+0xdc>
    80001624:	fb840493          	addi	s1,s0,-72
    80001628:	0140006f          	j	8000163c <main+0x12c>
    }

    for (auto &thread: threads)
    {
        delete thread;
    8000162c:	00090513          	mv	a0,s2
    80001630:	00000097          	auipc	ra,0x0
    80001634:	36c080e7          	jalr	876(ra) # 8000199c <_ZdlPv>
    for (auto &thread: threads)
    80001638:	00848493          	addi	s1,s1,8
    8000163c:	fe040793          	addi	a5,s0,-32
    80001640:	02f48063          	beq	s1,a5,80001660 <main+0x150>
        delete thread;
    80001644:	0004b903          	ld	s2,0(s1)
    80001648:	fe0908e3          	beqz	s2,80001638 <main+0x128>
    ~TCB() { delete[] stack; }
    8000164c:	00893503          	ld	a0,8(s2)
    80001650:	fc050ee3          	beqz	a0,8000162c <main+0x11c>
    80001654:	00000097          	auipc	ra,0x0
    80001658:	370080e7          	jalr	880(ra) # 800019c4 <_ZdaPv>
    8000165c:	fd1ff06f          	j	8000162c <main+0x11c>
    }
    printString("Finished\n");
    80001660:	00004517          	auipc	a0,0x4
    80001664:	a6850513          	addi	a0,a0,-1432 # 800050c8 <kvmincrease+0xf18>
    80001668:	00000097          	auipc	ra,0x0
    8000166c:	614080e7          	jalr	1556(ra) # 80001c7c <_Z11printStringPKc>

    return 0;
}
    80001670:	00000513          	li	a0,0
    80001674:	04813083          	ld	ra,72(sp)
    80001678:	04013403          	ld	s0,64(sp)
    8000167c:	03813483          	ld	s1,56(sp)
    80001680:	03013903          	ld	s2,48(sp)
    80001684:	05010113          	addi	sp,sp,80
    80001688:	00008067          	ret

000000008000168c <_ZN3TCB12createThreadEPFvvE>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    8000168c:	fe010113          	addi	sp,sp,-32
    80001690:	00113c23          	sd	ra,24(sp)
    80001694:	00813823          	sd	s0,16(sp)
    80001698:	00913423          	sd	s1,8(sp)
    8000169c:	01213023          	sd	s2,0(sp)
    800016a0:	02010413          	addi	s0,sp,32
    800016a4:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    800016a8:	03000513          	li	a0,48
    800016ac:	00000097          	auipc	ra,0x0
    800016b0:	2a0080e7          	jalr	672(ra) # 8000194c <_Znwm>
    800016b4:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    800016b8:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    800016bc:	00090a63          	beqz	s2,800016d0 <_ZN3TCB12createThreadEPFvvE+0x44>
    800016c0:	00002537          	lui	a0,0x2
    800016c4:	00000097          	auipc	ra,0x0
    800016c8:	2b0080e7          	jalr	688(ra) # 80001974 <_Znam>
    800016cc:	0080006f          	j	800016d4 <_ZN3TCB12createThreadEPFvvE+0x48>
    800016d0:	00000513          	li	a0,0
            finished(false)
    800016d4:	00a4b423          	sd	a0,8(s1)
    800016d8:	00000797          	auipc	a5,0x0
    800016dc:	09878793          	addi	a5,a5,152 # 80001770 <_ZN3TCB13threadWrapperEv>
    800016e0:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800016e4:	02050863          	beqz	a0,80001714 <_ZN3TCB12createThreadEPFvvE+0x88>
    800016e8:	000027b7          	lui	a5,0x2
    800016ec:	00f507b3          	add	a5,a0,a5
            finished(false)
    800016f0:	00f4bc23          	sd	a5,24(s1)
    800016f4:	00200793          	li	a5,2
    800016f8:	02f4b023          	sd	a5,32(s1)
    800016fc:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001700:	02090c63          	beqz	s2,80001738 <_ZN3TCB12createThreadEPFvvE+0xac>
    80001704:	00048513          	mv	a0,s1
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	4d4080e7          	jalr	1236(ra) # 80001bdc <_ZN9Scheduler3putEP3TCB>
    80001710:	0280006f          	j	80001738 <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001714:	00000793          	li	a5,0
    80001718:	fd9ff06f          	j	800016f0 <_ZN3TCB12createThreadEPFvvE+0x64>
    8000171c:	00050913          	mv	s2,a0
    80001720:	00048513          	mv	a0,s1
    80001724:	00000097          	auipc	ra,0x0
    80001728:	278080e7          	jalr	632(ra) # 8000199c <_ZdlPv>
    8000172c:	00090513          	mv	a0,s2
    80001730:	00005097          	auipc	ra,0x5
    80001734:	228080e7          	jalr	552(ra) # 80006958 <_Unwind_Resume>
}
    80001738:	00048513          	mv	a0,s1
    8000173c:	01813083          	ld	ra,24(sp)
    80001740:	01013403          	ld	s0,16(sp)
    80001744:	00813483          	ld	s1,8(sp)
    80001748:	00013903          	ld	s2,0(sp)
    8000174c:	02010113          	addi	sp,sp,32
    80001750:	00008067          	ret

0000000080001754 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    80001754:	ff010113          	addi	sp,sp,-16
    80001758:	00813423          	sd	s0,8(sp)
    8000175c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80001760:	00000073          	ecall
}
    80001764:	00813403          	ld	s0,8(sp)
    80001768:	01010113          	addi	sp,sp,16
    8000176c:	00008067          	ret

0000000080001770 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001770:	fe010113          	addi	sp,sp,-32
    80001774:	00113c23          	sd	ra,24(sp)
    80001778:	00813823          	sd	s0,16(sp)
    8000177c:	00913423          	sd	s1,8(sp)
    80001780:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001784:	00000097          	auipc	ra,0x0
    80001788:	268080e7          	jalr	616(ra) # 800019ec <_ZN5Riscv10popSppSpieEv>
    running->body();
    8000178c:	00004497          	auipc	s1,0x4
    80001790:	0e448493          	addi	s1,s1,228 # 80005870 <_ZN3TCB7runningE>
    80001794:	0004b783          	ld	a5,0(s1)
    80001798:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    8000179c:	000780e7          	jalr	a5
    running->setFinished(true);
    800017a0:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    800017a4:	00100713          	li	a4,1
    800017a8:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    800017ac:	00000097          	auipc	ra,0x0
    800017b0:	fa8080e7          	jalr	-88(ra) # 80001754 <_ZN3TCB5yieldEv>
}
    800017b4:	01813083          	ld	ra,24(sp)
    800017b8:	01013403          	ld	s0,16(sp)
    800017bc:	00813483          	ld	s1,8(sp)
    800017c0:	02010113          	addi	sp,sp,32
    800017c4:	00008067          	ret

00000000800017c8 <_ZN3TCB8dispatchEv>:
{
    800017c8:	fe010113          	addi	sp,sp,-32
    800017cc:	00113c23          	sd	ra,24(sp)
    800017d0:	00813823          	sd	s0,16(sp)
    800017d4:	00913423          	sd	s1,8(sp)
    800017d8:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800017dc:	00004497          	auipc	s1,0x4
    800017e0:	0944b483          	ld	s1,148(s1) # 80005870 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    800017e4:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    800017e8:	02078c63          	beqz	a5,80001820 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    800017ec:	00000097          	auipc	ra,0x0
    800017f0:	388080e7          	jalr	904(ra) # 80001b74 <_ZN9Scheduler3getEv>
    800017f4:	00004797          	auipc	a5,0x4
    800017f8:	06a7be23          	sd	a0,124(a5) # 80005870 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    800017fc:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001800:	01048513          	addi	a0,s1,16
    80001804:	00000097          	auipc	ra,0x0
    80001808:	90c080e7          	jalr	-1780(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    8000180c:	01813083          	ld	ra,24(sp)
    80001810:	01013403          	ld	s0,16(sp)
    80001814:	00813483          	ld	s1,8(sp)
    80001818:	02010113          	addi	sp,sp,32
    8000181c:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001820:	00048513          	mv	a0,s1
    80001824:	00000097          	auipc	ra,0x0
    80001828:	3b8080e7          	jalr	952(ra) # 80001bdc <_ZN9Scheduler3putEP3TCB>
    8000182c:	fc1ff06f          	j	800017ec <_ZN3TCB8dispatchEv+0x24>

0000000080001830 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>:


    return true;
}

bool MemoryAllocatorTest::testMemoryAllocate(uint64 size, void** allocatedMemoryPointer) {
    80001830:	ff010113          	addi	sp,sp,-16
    80001834:	00813423          	sd	s0,8(sp)
    80001838:	01010413          	addi	s0,sp,16
    return true;
}
    8000183c:	00100513          	li	a0,1
    80001840:	00813403          	ld	s0,8(sp)
    80001844:	01010113          	addi	sp,sp,16
    80001848:	00008067          	ret

000000008000184c <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>:

bool MemoryAllocatorTest::testMemoryFree(uint64 size, void* allocatedMemoryPointer) {
    8000184c:	ff010113          	addi	sp,sp,-16
    80001850:	00813423          	sd	s0,8(sp)
    80001854:	01010413          	addi	s0,sp,16
    return true;
}
    80001858:	00100513          	li	a0,1
    8000185c:	00813403          	ld	s0,8(sp)
    80001860:	01010113          	addi	sp,sp,16
    80001864:	00008067          	ret

0000000080001868 <_ZN19MemoryAllocatorTest12testFirstFitEv>:

bool MemoryAllocatorTest::testFirstFit() {
    80001868:	ff010113          	addi	sp,sp,-16
    8000186c:	00813423          	sd	s0,8(sp)
    80001870:	01010413          	addi	s0,sp,16
    return true;
}
    80001874:	00100513          	li	a0,1
    80001878:	00813403          	ld	s0,8(sp)
    8000187c:	01010113          	addi	sp,sp,16
    80001880:	00008067          	ret

0000000080001884 <_ZN19MemoryAllocatorTest8runTestsEv>:
bool MemoryAllocatorTest::runTests() {
    80001884:	fa010113          	addi	sp,sp,-96
    80001888:	04113c23          	sd	ra,88(sp)
    8000188c:	04813823          	sd	s0,80(sp)
    80001890:	04913423          	sd	s1,72(sp)
    80001894:	05213023          	sd	s2,64(sp)
    80001898:	03313c23          	sd	s3,56(sp)
    8000189c:	06010413          	addi	s0,sp,96
    800018a0:	00050913          	mv	s2,a0
    sizes[0] = 3.7 * MEM_BLOCK_SIZE;
    800018a4:	0ec00793          	li	a5,236
    800018a8:	faf43423          	sd	a5,-88(s0)
    sizes[1] = MEM_BLOCK_SIZE;
    800018ac:	04000793          	li	a5,64
    800018b0:	faf43823          	sd	a5,-80(s0)
    sizes[2] = 0.3 * MEM_BLOCK_SIZE;
    800018b4:	01300793          	li	a5,19
    800018b8:	faf43c23          	sd	a5,-72(s0)
    sizes[3] = 0;
    800018bc:	fc043023          	sd	zero,-64(s0)
    sizes[4] = -37;
    800018c0:	fdb00793          	li	a5,-37
    800018c4:	fcf43423          	sd	a5,-56(s0)
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    800018c8:	00000493          	li	s1,0
    800018cc:	00400793          	li	a5,4
    800018d0:	0497ca63          	blt	a5,s1,80001924 <_ZN19MemoryAllocatorTest8runTestsEv+0xa0>
        if (!testMemoryAllocate(sizes[i], &allocatedMemoryPointer)) return false;
    800018d4:	00349793          	slli	a5,s1,0x3
    800018d8:	fd040713          	addi	a4,s0,-48
    800018dc:	00f707b3          	add	a5,a4,a5
    800018e0:	fd87b983          	ld	s3,-40(a5)
    800018e4:	fa040613          	addi	a2,s0,-96
    800018e8:	00098593          	mv	a1,s3
    800018ec:	00090513          	mv	a0,s2
    800018f0:	00000097          	auipc	ra,0x0
    800018f4:	f40080e7          	jalr	-192(ra) # 80001830 <_ZN19MemoryAllocatorTest18testMemoryAllocateEmPPv>
    800018f8:	02050263          	beqz	a0,8000191c <_ZN19MemoryAllocatorTest8runTestsEv+0x98>
        if (!testMemoryFree(sizes[i], allocatedMemoryPointer)) return false;
    800018fc:	00000613          	li	a2,0
    80001900:	00098593          	mv	a1,s3
    80001904:	00090513          	mv	a0,s2
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	f44080e7          	jalr	-188(ra) # 8000184c <_ZN19MemoryAllocatorTest14testMemoryFreeEmPv>
    80001910:	00050663          	beqz	a0,8000191c <_ZN19MemoryAllocatorTest8runTestsEv+0x98>
    for (int i = 0; i < SIZE_TEST_NUMBER; ++i) {
    80001914:	0014849b          	addiw	s1,s1,1
    80001918:	fb5ff06f          	j	800018cc <_ZN19MemoryAllocatorTest8runTestsEv+0x48>
        if (!testMemoryAllocate(sizes[i], &allocatedMemoryPointer)) return false;
    8000191c:	00000513          	li	a0,0
    80001920:	0100006f          	j	80001930 <_ZN19MemoryAllocatorTest8runTestsEv+0xac>
    if (!testFirstFit()) return false;
    80001924:	00090513          	mv	a0,s2
    80001928:	00000097          	auipc	ra,0x0
    8000192c:	f40080e7          	jalr	-192(ra) # 80001868 <_ZN19MemoryAllocatorTest12testFirstFitEv>
}
    80001930:	05813083          	ld	ra,88(sp)
    80001934:	05013403          	ld	s0,80(sp)
    80001938:	04813483          	ld	s1,72(sp)
    8000193c:	04013903          	ld	s2,64(sp)
    80001940:	03813983          	ld	s3,56(sp)
    80001944:	06010113          	addi	sp,sp,96
    80001948:	00008067          	ret

000000008000194c <_Znwm>:
#include "../lib/mem.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    8000194c:	ff010113          	addi	sp,sp,-16
    80001950:	00113423          	sd	ra,8(sp)
    80001954:	00813023          	sd	s0,0(sp)
    80001958:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    8000195c:	00002097          	auipc	ra,0x2
    80001960:	5dc080e7          	jalr	1500(ra) # 80003f38 <__mem_alloc>
}
    80001964:	00813083          	ld	ra,8(sp)
    80001968:	00013403          	ld	s0,0(sp)
    8000196c:	01010113          	addi	sp,sp,16
    80001970:	00008067          	ret

0000000080001974 <_Znam>:

void *operator new[](size_t n)
{
    80001974:	ff010113          	addi	sp,sp,-16
    80001978:	00113423          	sd	ra,8(sp)
    8000197c:	00813023          	sd	s0,0(sp)
    80001980:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001984:	00002097          	auipc	ra,0x2
    80001988:	5b4080e7          	jalr	1460(ra) # 80003f38 <__mem_alloc>
}
    8000198c:	00813083          	ld	ra,8(sp)
    80001990:	00013403          	ld	s0,0(sp)
    80001994:	01010113          	addi	sp,sp,16
    80001998:	00008067          	ret

000000008000199c <_ZdlPv>:

void operator delete(void *p) noexcept
{
    8000199c:	ff010113          	addi	sp,sp,-16
    800019a0:	00113423          	sd	ra,8(sp)
    800019a4:	00813023          	sd	s0,0(sp)
    800019a8:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800019ac:	00002097          	auipc	ra,0x2
    800019b0:	4c0080e7          	jalr	1216(ra) # 80003e6c <__mem_free>
}
    800019b4:	00813083          	ld	ra,8(sp)
    800019b8:	00013403          	ld	s0,0(sp)
    800019bc:	01010113          	addi	sp,sp,16
    800019c0:	00008067          	ret

00000000800019c4 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    800019c4:	ff010113          	addi	sp,sp,-16
    800019c8:	00113423          	sd	ra,8(sp)
    800019cc:	00813023          	sd	s0,0(sp)
    800019d0:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800019d4:	00002097          	auipc	ra,0x2
    800019d8:	498080e7          	jalr	1176(ra) # 80003e6c <__mem_free>
    800019dc:	00813083          	ld	ra,8(sp)
    800019e0:	00013403          	ld	s0,0(sp)
    800019e4:	01010113          	addi	sp,sp,16
    800019e8:	00008067          	ret

00000000800019ec <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"

void Riscv::popSppSpie()
{
    800019ec:	ff010113          	addi	sp,sp,-16
    800019f0:	00813423          	sd	s0,8(sp)
    800019f4:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800019f8:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800019fc:	10200073          	sret
}
    80001a00:	00813403          	ld	s0,8(sp)
    80001a04:	01010113          	addi	sp,sp,16
    80001a08:	00008067          	ret

0000000080001a0c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80001a0c:	fa010113          	addi	sp,sp,-96
    80001a10:	04113c23          	sd	ra,88(sp)
    80001a14:	04813823          	sd	s0,80(sp)
    80001a18:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001a1c:	142027f3          	csrr	a5,scause
    80001a20:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80001a24:	fc843703          	ld	a4,-56(s0)
    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001a28:	ff870693          	addi	a3,a4,-8
    80001a2c:	00100793          	li	a5,1
    80001a30:	02d7fa63          	bgeu	a5,a3,80001a64 <_ZN5Riscv20handleSupervisorTrapEv+0x58>
        TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80001a34:	fff00793          	li	a5,-1
    80001a38:	03f79793          	slli	a5,a5,0x3f
    80001a3c:	00178793          	addi	a5,a5,1
    80001a40:	06f70863          	beq	a4,a5,80001ab0 <_ZN5Riscv20handleSupervisorTrapEv+0xa4>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if (scause == 0x8000000000000009UL)
    80001a44:	fff00793          	li	a5,-1
    80001a48:	03f79793          	slli	a5,a5,0x3f
    80001a4c:	00978793          	addi	a5,a5,9
    80001a50:	0cf70c63          	beq	a4,a5,80001b28 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
    }
    else
    {
        // unexpected trap cause
    }
    80001a54:	05813083          	ld	ra,88(sp)
    80001a58:	05013403          	ld	s0,80(sp)
    80001a5c:	06010113          	addi	sp,sp,96
    80001a60:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001a64:	141027f3          	csrr	a5,sepc
    80001a68:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001a6c:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80001a70:	00478793          	addi	a5,a5,4
    80001a74:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001a78:	100027f3          	csrr	a5,sstatus
    80001a7c:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001a80:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80001a84:	faf43823          	sd	a5,-80(s0)
        TCB::timeSliceCounter = 0;
    80001a88:	00004797          	auipc	a5,0x4
    80001a8c:	d687b783          	ld	a5,-664(a5) # 800057f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001a90:	0007b023          	sd	zero,0(a5)
        TCB::dispatch();
    80001a94:	00000097          	auipc	ra,0x0
    80001a98:	d34080e7          	jalr	-716(ra) # 800017c8 <_ZN3TCB8dispatchEv>
        w_sstatus(sstatus);
    80001a9c:	fb043783          	ld	a5,-80(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001aa0:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001aa4:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001aa8:	14179073          	csrw	sepc,a5
}
    80001aac:	fa9ff06f          	j	80001a54 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001ab0:	00200793          	li	a5,2
    80001ab4:	1447b073          	csrc	sip,a5
        TCB::timeSliceCounter++;
    80001ab8:	00004717          	auipc	a4,0x4
    80001abc:	d3873703          	ld	a4,-712(a4) # 800057f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001ac0:	00073783          	ld	a5,0(a4)
    80001ac4:	00178793          	addi	a5,a5,1
    80001ac8:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80001acc:	00004717          	auipc	a4,0x4
    80001ad0:	d3c73703          	ld	a4,-708(a4) # 80005808 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001ad4:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80001ad8:	02073703          	ld	a4,32(a4)
    80001adc:	f6e7ece3          	bltu	a5,a4,80001a54 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001ae0:	141027f3          	csrr	a5,sepc
    80001ae4:	fef43423          	sd	a5,-24(s0)
    return sepc;
    80001ae8:	fe843783          	ld	a5,-24(s0)
            uint64 volatile sepc = r_sepc();
    80001aec:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001af0:	100027f3          	csrr	a5,sstatus
    80001af4:	fef43023          	sd	a5,-32(s0)
    return sstatus;
    80001af8:	fe043783          	ld	a5,-32(s0)
            uint64 volatile sstatus = r_sstatus();
    80001afc:	fcf43023          	sd	a5,-64(s0)
            TCB::timeSliceCounter = 0;
    80001b00:	00004797          	auipc	a5,0x4
    80001b04:	cf07b783          	ld	a5,-784(a5) # 800057f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001b08:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001b0c:	00000097          	auipc	ra,0x0
    80001b10:	cbc080e7          	jalr	-836(ra) # 800017c8 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80001b14:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001b18:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80001b1c:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001b20:	14179073          	csrw	sepc,a5
}
    80001b24:	f31ff06f          	j	80001a54 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
        console_handler();
    80001b28:	00002097          	auipc	ra,0x2
    80001b2c:	5dc080e7          	jalr	1500(ra) # 80004104 <console_handler>
    80001b30:	f25ff06f          	j	80001a54 <_ZN5Riscv20handleSupervisorTrapEv+0x48>

0000000080001b34 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80001b34:	ff010113          	addi	sp,sp,-16
    80001b38:	00813423          	sd	s0,8(sp)
    80001b3c:	01010413          	addi	s0,sp,16
    80001b40:	00100793          	li	a5,1
    80001b44:	00f50863          	beq	a0,a5,80001b54 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001b48:	00813403          	ld	s0,8(sp)
    80001b4c:	01010113          	addi	sp,sp,16
    80001b50:	00008067          	ret
    80001b54:	000107b7          	lui	a5,0x10
    80001b58:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001b5c:	fef596e3          	bne	a1,a5,80001b48 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001b60:	00004797          	auipc	a5,0x4
    80001b64:	d2078793          	addi	a5,a5,-736 # 80005880 <_ZN9Scheduler16readyThreadQueueE>
    80001b68:	0007b023          	sd	zero,0(a5)
    80001b6c:	0007b423          	sd	zero,8(a5)
    80001b70:	fd9ff06f          	j	80001b48 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001b74 <_ZN9Scheduler3getEv>:
{
    80001b74:	fe010113          	addi	sp,sp,-32
    80001b78:	00113c23          	sd	ra,24(sp)
    80001b7c:	00813823          	sd	s0,16(sp)
    80001b80:	00913423          	sd	s1,8(sp)
    80001b84:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001b88:	00004517          	auipc	a0,0x4
    80001b8c:	cf853503          	ld	a0,-776(a0) # 80005880 <_ZN9Scheduler16readyThreadQueueE>
    80001b90:	04050263          	beqz	a0,80001bd4 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001b94:	00853783          	ld	a5,8(a0)
    80001b98:	00004717          	auipc	a4,0x4
    80001b9c:	cef73423          	sd	a5,-792(a4) # 80005880 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001ba0:	02078463          	beqz	a5,80001bc8 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001ba4:	00053483          	ld	s1,0(a0)
        delete elem;
    80001ba8:	00000097          	auipc	ra,0x0
    80001bac:	df4080e7          	jalr	-524(ra) # 8000199c <_ZdlPv>
}
    80001bb0:	00048513          	mv	a0,s1
    80001bb4:	01813083          	ld	ra,24(sp)
    80001bb8:	01013403          	ld	s0,16(sp)
    80001bbc:	00813483          	ld	s1,8(sp)
    80001bc0:	02010113          	addi	sp,sp,32
    80001bc4:	00008067          	ret
        if (!head) { tail = 0; }
    80001bc8:	00004797          	auipc	a5,0x4
    80001bcc:	cc07b023          	sd	zero,-832(a5) # 80005888 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001bd0:	fd5ff06f          	j	80001ba4 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001bd4:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001bd8:	fd9ff06f          	j	80001bb0 <_ZN9Scheduler3getEv+0x3c>

0000000080001bdc <_ZN9Scheduler3putEP3TCB>:
{
    80001bdc:	fe010113          	addi	sp,sp,-32
    80001be0:	00113c23          	sd	ra,24(sp)
    80001be4:	00813823          	sd	s0,16(sp)
    80001be8:	00913423          	sd	s1,8(sp)
    80001bec:	02010413          	addi	s0,sp,32
    80001bf0:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001bf4:	01000513          	li	a0,16
    80001bf8:	00000097          	auipc	ra,0x0
    80001bfc:	d54080e7          	jalr	-684(ra) # 8000194c <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001c00:	00953023          	sd	s1,0(a0)
    80001c04:	00053423          	sd	zero,8(a0)
        if (tail)
    80001c08:	00004797          	auipc	a5,0x4
    80001c0c:	c807b783          	ld	a5,-896(a5) # 80005888 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001c10:	02078263          	beqz	a5,80001c34 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001c14:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001c18:	00004797          	auipc	a5,0x4
    80001c1c:	c6a7b823          	sd	a0,-912(a5) # 80005888 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001c20:	01813083          	ld	ra,24(sp)
    80001c24:	01013403          	ld	s0,16(sp)
    80001c28:	00813483          	ld	s1,8(sp)
    80001c2c:	02010113          	addi	sp,sp,32
    80001c30:	00008067          	ret
            head = tail = elem;
    80001c34:	00004797          	auipc	a5,0x4
    80001c38:	c4c78793          	addi	a5,a5,-948 # 80005880 <_ZN9Scheduler16readyThreadQueueE>
    80001c3c:	00a7b423          	sd	a0,8(a5)
    80001c40:	00a7b023          	sd	a0,0(a5)
    80001c44:	fddff06f          	j	80001c20 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001c48 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001c48:	ff010113          	addi	sp,sp,-16
    80001c4c:	00113423          	sd	ra,8(sp)
    80001c50:	00813023          	sd	s0,0(sp)
    80001c54:	01010413          	addi	s0,sp,16
    80001c58:	000105b7          	lui	a1,0x10
    80001c5c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001c60:	00100513          	li	a0,1
    80001c64:	00000097          	auipc	ra,0x0
    80001c68:	ed0080e7          	jalr	-304(ra) # 80001b34 <_Z41__static_initialization_and_destruction_0ii>
    80001c6c:	00813083          	ld	ra,8(sp)
    80001c70:	00013403          	ld	s0,0(sp)
    80001c74:	01010113          	addi	sp,sp,16
    80001c78:	00008067          	ret

0000000080001c7c <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001c7c:	fd010113          	addi	sp,sp,-48
    80001c80:	02113423          	sd	ra,40(sp)
    80001c84:	02813023          	sd	s0,32(sp)
    80001c88:	00913c23          	sd	s1,24(sp)
    80001c8c:	01213823          	sd	s2,16(sp)
    80001c90:	03010413          	addi	s0,sp,48
    80001c94:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001c98:	100027f3          	csrr	a5,sstatus
    80001c9c:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001ca0:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001ca4:	00200793          	li	a5,2
    80001ca8:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001cac:	0004c503          	lbu	a0,0(s1)
    80001cb0:	00050a63          	beqz	a0,80001cc4 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001cb4:	00002097          	auipc	ra,0x2
    80001cb8:	3dc080e7          	jalr	988(ra) # 80004090 <__putc>
        string++;
    80001cbc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001cc0:	fedff06f          	j	80001cac <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001cc4:	0009091b          	sext.w	s2,s2
    80001cc8:	00297913          	andi	s2,s2,2
    80001ccc:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001cd0:	10092073          	csrs	sstatus,s2
}
    80001cd4:	02813083          	ld	ra,40(sp)
    80001cd8:	02013403          	ld	s0,32(sp)
    80001cdc:	01813483          	ld	s1,24(sp)
    80001ce0:	01013903          	ld	s2,16(sp)
    80001ce4:	03010113          	addi	sp,sp,48
    80001ce8:	00008067          	ret

0000000080001cec <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001cec:	fc010113          	addi	sp,sp,-64
    80001cf0:	02113c23          	sd	ra,56(sp)
    80001cf4:	02813823          	sd	s0,48(sp)
    80001cf8:	02913423          	sd	s1,40(sp)
    80001cfc:	03213023          	sd	s2,32(sp)
    80001d00:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d04:	100027f3          	csrr	a5,sstatus
    80001d08:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001d0c:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001d10:	00200793          	li	a5,2
    80001d14:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001d18:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001d1c:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001d20:	00a00613          	li	a2,10
    80001d24:	02c5773b          	remuw	a4,a0,a2
    80001d28:	02071693          	slli	a3,a4,0x20
    80001d2c:	0206d693          	srli	a3,a3,0x20
    80001d30:	00003717          	auipc	a4,0x3
    80001d34:	3a870713          	addi	a4,a4,936 # 800050d8 <_ZZ12printIntegermE6digits>
    80001d38:	00d70733          	add	a4,a4,a3
    80001d3c:	00074703          	lbu	a4,0(a4)
    80001d40:	fe040693          	addi	a3,s0,-32
    80001d44:	009687b3          	add	a5,a3,s1
    80001d48:	0014849b          	addiw	s1,s1,1
    80001d4c:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001d50:	0005071b          	sext.w	a4,a0
    80001d54:	02c5553b          	divuw	a0,a0,a2
    80001d58:	00900793          	li	a5,9
    80001d5c:	fce7e2e3          	bltu	a5,a4,80001d20 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001d60:	fff4849b          	addiw	s1,s1,-1
    80001d64:	0004ce63          	bltz	s1,80001d80 <_Z12printIntegerm+0x94>
    80001d68:	fe040793          	addi	a5,s0,-32
    80001d6c:	009787b3          	add	a5,a5,s1
    80001d70:	ff07c503          	lbu	a0,-16(a5)
    80001d74:	00002097          	auipc	ra,0x2
    80001d78:	31c080e7          	jalr	796(ra) # 80004090 <__putc>
    80001d7c:	fe5ff06f          	j	80001d60 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001d80:	0009091b          	sext.w	s2,s2
    80001d84:	00297913          	andi	s2,s2,2
    80001d88:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001d8c:	10092073          	csrs	sstatus,s2
}
    80001d90:	03813083          	ld	ra,56(sp)
    80001d94:	03013403          	ld	s0,48(sp)
    80001d98:	02813483          	ld	s1,40(sp)
    80001d9c:	02013903          	ld	s2,32(sp)
    80001da0:	04010113          	addi	sp,sp,64
    80001da4:	00008067          	ret

0000000080001da8 <start>:
    80001da8:	ff010113          	addi	sp,sp,-16
    80001dac:	00813423          	sd	s0,8(sp)
    80001db0:	01010413          	addi	s0,sp,16
    80001db4:	300027f3          	csrr	a5,mstatus
    80001db8:	ffffe737          	lui	a4,0xffffe
    80001dbc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7cff>
    80001dc0:	00e7f7b3          	and	a5,a5,a4
    80001dc4:	00001737          	lui	a4,0x1
    80001dc8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001dcc:	00e7e7b3          	or	a5,a5,a4
    80001dd0:	30079073          	csrw	mstatus,a5
    80001dd4:	00000797          	auipc	a5,0x0
    80001dd8:	16078793          	addi	a5,a5,352 # 80001f34 <system_main>
    80001ddc:	34179073          	csrw	mepc,a5
    80001de0:	00000793          	li	a5,0
    80001de4:	18079073          	csrw	satp,a5
    80001de8:	000107b7          	lui	a5,0x10
    80001dec:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001df0:	30279073          	csrw	medeleg,a5
    80001df4:	30379073          	csrw	mideleg,a5
    80001df8:	104027f3          	csrr	a5,sie
    80001dfc:	2227e793          	ori	a5,a5,546
    80001e00:	10479073          	csrw	sie,a5
    80001e04:	fff00793          	li	a5,-1
    80001e08:	00a7d793          	srli	a5,a5,0xa
    80001e0c:	3b079073          	csrw	pmpaddr0,a5
    80001e10:	00f00793          	li	a5,15
    80001e14:	3a079073          	csrw	pmpcfg0,a5
    80001e18:	f14027f3          	csrr	a5,mhartid
    80001e1c:	0200c737          	lui	a4,0x200c
    80001e20:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001e24:	0007869b          	sext.w	a3,a5
    80001e28:	00269713          	slli	a4,a3,0x2
    80001e2c:	000f4637          	lui	a2,0xf4
    80001e30:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001e34:	00d70733          	add	a4,a4,a3
    80001e38:	0037979b          	slliw	a5,a5,0x3
    80001e3c:	020046b7          	lui	a3,0x2004
    80001e40:	00d787b3          	add	a5,a5,a3
    80001e44:	00c585b3          	add	a1,a1,a2
    80001e48:	00371693          	slli	a3,a4,0x3
    80001e4c:	00004717          	auipc	a4,0x4
    80001e50:	a4470713          	addi	a4,a4,-1468 # 80005890 <timer_scratch>
    80001e54:	00b7b023          	sd	a1,0(a5)
    80001e58:	00d70733          	add	a4,a4,a3
    80001e5c:	00f73c23          	sd	a5,24(a4)
    80001e60:	02c73023          	sd	a2,32(a4)
    80001e64:	34071073          	csrw	mscratch,a4
    80001e68:	00000797          	auipc	a5,0x0
    80001e6c:	6e878793          	addi	a5,a5,1768 # 80002550 <timervec>
    80001e70:	30579073          	csrw	mtvec,a5
    80001e74:	300027f3          	csrr	a5,mstatus
    80001e78:	0087e793          	ori	a5,a5,8
    80001e7c:	30079073          	csrw	mstatus,a5
    80001e80:	304027f3          	csrr	a5,mie
    80001e84:	0807e793          	ori	a5,a5,128
    80001e88:	30479073          	csrw	mie,a5
    80001e8c:	f14027f3          	csrr	a5,mhartid
    80001e90:	0007879b          	sext.w	a5,a5
    80001e94:	00078213          	mv	tp,a5
    80001e98:	30200073          	mret
    80001e9c:	00813403          	ld	s0,8(sp)
    80001ea0:	01010113          	addi	sp,sp,16
    80001ea4:	00008067          	ret

0000000080001ea8 <timerinit>:
    80001ea8:	ff010113          	addi	sp,sp,-16
    80001eac:	00813423          	sd	s0,8(sp)
    80001eb0:	01010413          	addi	s0,sp,16
    80001eb4:	f14027f3          	csrr	a5,mhartid
    80001eb8:	0200c737          	lui	a4,0x200c
    80001ebc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001ec0:	0007869b          	sext.w	a3,a5
    80001ec4:	00269713          	slli	a4,a3,0x2
    80001ec8:	000f4637          	lui	a2,0xf4
    80001ecc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001ed0:	00d70733          	add	a4,a4,a3
    80001ed4:	0037979b          	slliw	a5,a5,0x3
    80001ed8:	020046b7          	lui	a3,0x2004
    80001edc:	00d787b3          	add	a5,a5,a3
    80001ee0:	00c585b3          	add	a1,a1,a2
    80001ee4:	00371693          	slli	a3,a4,0x3
    80001ee8:	00004717          	auipc	a4,0x4
    80001eec:	9a870713          	addi	a4,a4,-1624 # 80005890 <timer_scratch>
    80001ef0:	00b7b023          	sd	a1,0(a5)
    80001ef4:	00d70733          	add	a4,a4,a3
    80001ef8:	00f73c23          	sd	a5,24(a4)
    80001efc:	02c73023          	sd	a2,32(a4)
    80001f00:	34071073          	csrw	mscratch,a4
    80001f04:	00000797          	auipc	a5,0x0
    80001f08:	64c78793          	addi	a5,a5,1612 # 80002550 <timervec>
    80001f0c:	30579073          	csrw	mtvec,a5
    80001f10:	300027f3          	csrr	a5,mstatus
    80001f14:	0087e793          	ori	a5,a5,8
    80001f18:	30079073          	csrw	mstatus,a5
    80001f1c:	304027f3          	csrr	a5,mie
    80001f20:	0807e793          	ori	a5,a5,128
    80001f24:	30479073          	csrw	mie,a5
    80001f28:	00813403          	ld	s0,8(sp)
    80001f2c:	01010113          	addi	sp,sp,16
    80001f30:	00008067          	ret

0000000080001f34 <system_main>:
    80001f34:	fe010113          	addi	sp,sp,-32
    80001f38:	00813823          	sd	s0,16(sp)
    80001f3c:	00913423          	sd	s1,8(sp)
    80001f40:	00113c23          	sd	ra,24(sp)
    80001f44:	02010413          	addi	s0,sp,32
    80001f48:	00000097          	auipc	ra,0x0
    80001f4c:	0c4080e7          	jalr	196(ra) # 8000200c <cpuid>
    80001f50:	00004497          	auipc	s1,0x4
    80001f54:	8f048493          	addi	s1,s1,-1808 # 80005840 <started>
    80001f58:	02050263          	beqz	a0,80001f7c <system_main+0x48>
    80001f5c:	0004a783          	lw	a5,0(s1)
    80001f60:	0007879b          	sext.w	a5,a5
    80001f64:	fe078ce3          	beqz	a5,80001f5c <system_main+0x28>
    80001f68:	0ff0000f          	fence
    80001f6c:	00003517          	auipc	a0,0x3
    80001f70:	1ac50513          	addi	a0,a0,428 # 80005118 <_ZZ12printIntegermE6digits+0x40>
    80001f74:	00001097          	auipc	ra,0x1
    80001f78:	a78080e7          	jalr	-1416(ra) # 800029ec <panic>
    80001f7c:	00001097          	auipc	ra,0x1
    80001f80:	9cc080e7          	jalr	-1588(ra) # 80002948 <consoleinit>
    80001f84:	00001097          	auipc	ra,0x1
    80001f88:	158080e7          	jalr	344(ra) # 800030dc <printfinit>
    80001f8c:	00003517          	auipc	a0,0x3
    80001f90:	14450513          	addi	a0,a0,324 # 800050d0 <kvmincrease+0xf20>
    80001f94:	00001097          	auipc	ra,0x1
    80001f98:	ab4080e7          	jalr	-1356(ra) # 80002a48 <__printf>
    80001f9c:	00003517          	auipc	a0,0x3
    80001fa0:	14c50513          	addi	a0,a0,332 # 800050e8 <_ZZ12printIntegermE6digits+0x10>
    80001fa4:	00001097          	auipc	ra,0x1
    80001fa8:	aa4080e7          	jalr	-1372(ra) # 80002a48 <__printf>
    80001fac:	00003517          	auipc	a0,0x3
    80001fb0:	12450513          	addi	a0,a0,292 # 800050d0 <kvmincrease+0xf20>
    80001fb4:	00001097          	auipc	ra,0x1
    80001fb8:	a94080e7          	jalr	-1388(ra) # 80002a48 <__printf>
    80001fbc:	00001097          	auipc	ra,0x1
    80001fc0:	4ac080e7          	jalr	1196(ra) # 80003468 <kinit>
    80001fc4:	00000097          	auipc	ra,0x0
    80001fc8:	148080e7          	jalr	328(ra) # 8000210c <trapinit>
    80001fcc:	00000097          	auipc	ra,0x0
    80001fd0:	16c080e7          	jalr	364(ra) # 80002138 <trapinithart>
    80001fd4:	00000097          	auipc	ra,0x0
    80001fd8:	5bc080e7          	jalr	1468(ra) # 80002590 <plicinit>
    80001fdc:	00000097          	auipc	ra,0x0
    80001fe0:	5dc080e7          	jalr	1500(ra) # 800025b8 <plicinithart>
    80001fe4:	00000097          	auipc	ra,0x0
    80001fe8:	078080e7          	jalr	120(ra) # 8000205c <userinit>
    80001fec:	0ff0000f          	fence
    80001ff0:	00100793          	li	a5,1
    80001ff4:	00003517          	auipc	a0,0x3
    80001ff8:	10c50513          	addi	a0,a0,268 # 80005100 <_ZZ12printIntegermE6digits+0x28>
    80001ffc:	00f4a023          	sw	a5,0(s1)
    80002000:	00001097          	auipc	ra,0x1
    80002004:	a48080e7          	jalr	-1464(ra) # 80002a48 <__printf>
    80002008:	0000006f          	j	80002008 <system_main+0xd4>

000000008000200c <cpuid>:
    8000200c:	ff010113          	addi	sp,sp,-16
    80002010:	00813423          	sd	s0,8(sp)
    80002014:	01010413          	addi	s0,sp,16
    80002018:	00020513          	mv	a0,tp
    8000201c:	00813403          	ld	s0,8(sp)
    80002020:	0005051b          	sext.w	a0,a0
    80002024:	01010113          	addi	sp,sp,16
    80002028:	00008067          	ret

000000008000202c <mycpu>:
    8000202c:	ff010113          	addi	sp,sp,-16
    80002030:	00813423          	sd	s0,8(sp)
    80002034:	01010413          	addi	s0,sp,16
    80002038:	00020793          	mv	a5,tp
    8000203c:	00813403          	ld	s0,8(sp)
    80002040:	0007879b          	sext.w	a5,a5
    80002044:	00779793          	slli	a5,a5,0x7
    80002048:	00005517          	auipc	a0,0x5
    8000204c:	87850513          	addi	a0,a0,-1928 # 800068c0 <cpus>
    80002050:	00f50533          	add	a0,a0,a5
    80002054:	01010113          	addi	sp,sp,16
    80002058:	00008067          	ret

000000008000205c <userinit>:
    8000205c:	ff010113          	addi	sp,sp,-16
    80002060:	00813423          	sd	s0,8(sp)
    80002064:	01010413          	addi	s0,sp,16
    80002068:	00813403          	ld	s0,8(sp)
    8000206c:	01010113          	addi	sp,sp,16
    80002070:	fffff317          	auipc	t1,0xfffff
    80002074:	4a030067          	jr	1184(t1) # 80001510 <main>

0000000080002078 <either_copyout>:
    80002078:	ff010113          	addi	sp,sp,-16
    8000207c:	00813023          	sd	s0,0(sp)
    80002080:	00113423          	sd	ra,8(sp)
    80002084:	01010413          	addi	s0,sp,16
    80002088:	02051663          	bnez	a0,800020b4 <either_copyout+0x3c>
    8000208c:	00058513          	mv	a0,a1
    80002090:	00060593          	mv	a1,a2
    80002094:	0006861b          	sext.w	a2,a3
    80002098:	00002097          	auipc	ra,0x2
    8000209c:	c5c080e7          	jalr	-932(ra) # 80003cf4 <__memmove>
    800020a0:	00813083          	ld	ra,8(sp)
    800020a4:	00013403          	ld	s0,0(sp)
    800020a8:	00000513          	li	a0,0
    800020ac:	01010113          	addi	sp,sp,16
    800020b0:	00008067          	ret
    800020b4:	00003517          	auipc	a0,0x3
    800020b8:	08c50513          	addi	a0,a0,140 # 80005140 <_ZZ12printIntegermE6digits+0x68>
    800020bc:	00001097          	auipc	ra,0x1
    800020c0:	930080e7          	jalr	-1744(ra) # 800029ec <panic>

00000000800020c4 <either_copyin>:
    800020c4:	ff010113          	addi	sp,sp,-16
    800020c8:	00813023          	sd	s0,0(sp)
    800020cc:	00113423          	sd	ra,8(sp)
    800020d0:	01010413          	addi	s0,sp,16
    800020d4:	02059463          	bnez	a1,800020fc <either_copyin+0x38>
    800020d8:	00060593          	mv	a1,a2
    800020dc:	0006861b          	sext.w	a2,a3
    800020e0:	00002097          	auipc	ra,0x2
    800020e4:	c14080e7          	jalr	-1004(ra) # 80003cf4 <__memmove>
    800020e8:	00813083          	ld	ra,8(sp)
    800020ec:	00013403          	ld	s0,0(sp)
    800020f0:	00000513          	li	a0,0
    800020f4:	01010113          	addi	sp,sp,16
    800020f8:	00008067          	ret
    800020fc:	00003517          	auipc	a0,0x3
    80002100:	06c50513          	addi	a0,a0,108 # 80005168 <_ZZ12printIntegermE6digits+0x90>
    80002104:	00001097          	auipc	ra,0x1
    80002108:	8e8080e7          	jalr	-1816(ra) # 800029ec <panic>

000000008000210c <trapinit>:
    8000210c:	ff010113          	addi	sp,sp,-16
    80002110:	00813423          	sd	s0,8(sp)
    80002114:	01010413          	addi	s0,sp,16
    80002118:	00813403          	ld	s0,8(sp)
    8000211c:	00003597          	auipc	a1,0x3
    80002120:	07458593          	addi	a1,a1,116 # 80005190 <_ZZ12printIntegermE6digits+0xb8>
    80002124:	00005517          	auipc	a0,0x5
    80002128:	81c50513          	addi	a0,a0,-2020 # 80006940 <tickslock>
    8000212c:	01010113          	addi	sp,sp,16
    80002130:	00001317          	auipc	t1,0x1
    80002134:	5c830067          	jr	1480(t1) # 800036f8 <initlock>

0000000080002138 <trapinithart>:
    80002138:	ff010113          	addi	sp,sp,-16
    8000213c:	00813423          	sd	s0,8(sp)
    80002140:	01010413          	addi	s0,sp,16
    80002144:	00000797          	auipc	a5,0x0
    80002148:	2fc78793          	addi	a5,a5,764 # 80002440 <kernelvec>
    8000214c:	10579073          	csrw	stvec,a5
    80002150:	00813403          	ld	s0,8(sp)
    80002154:	01010113          	addi	sp,sp,16
    80002158:	00008067          	ret

000000008000215c <usertrap>:
    8000215c:	ff010113          	addi	sp,sp,-16
    80002160:	00813423          	sd	s0,8(sp)
    80002164:	01010413          	addi	s0,sp,16
    80002168:	00813403          	ld	s0,8(sp)
    8000216c:	01010113          	addi	sp,sp,16
    80002170:	00008067          	ret

0000000080002174 <usertrapret>:
    80002174:	ff010113          	addi	sp,sp,-16
    80002178:	00813423          	sd	s0,8(sp)
    8000217c:	01010413          	addi	s0,sp,16
    80002180:	00813403          	ld	s0,8(sp)
    80002184:	01010113          	addi	sp,sp,16
    80002188:	00008067          	ret

000000008000218c <kerneltrap>:
    8000218c:	fe010113          	addi	sp,sp,-32
    80002190:	00813823          	sd	s0,16(sp)
    80002194:	00113c23          	sd	ra,24(sp)
    80002198:	00913423          	sd	s1,8(sp)
    8000219c:	02010413          	addi	s0,sp,32
    800021a0:	142025f3          	csrr	a1,scause
    800021a4:	100027f3          	csrr	a5,sstatus
    800021a8:	0027f793          	andi	a5,a5,2
    800021ac:	10079c63          	bnez	a5,800022c4 <kerneltrap+0x138>
    800021b0:	142027f3          	csrr	a5,scause
    800021b4:	0207ce63          	bltz	a5,800021f0 <kerneltrap+0x64>
    800021b8:	00003517          	auipc	a0,0x3
    800021bc:	02050513          	addi	a0,a0,32 # 800051d8 <_ZZ12printIntegermE6digits+0x100>
    800021c0:	00001097          	auipc	ra,0x1
    800021c4:	888080e7          	jalr	-1912(ra) # 80002a48 <__printf>
    800021c8:	141025f3          	csrr	a1,sepc
    800021cc:	14302673          	csrr	a2,stval
    800021d0:	00003517          	auipc	a0,0x3
    800021d4:	01850513          	addi	a0,a0,24 # 800051e8 <_ZZ12printIntegermE6digits+0x110>
    800021d8:	00001097          	auipc	ra,0x1
    800021dc:	870080e7          	jalr	-1936(ra) # 80002a48 <__printf>
    800021e0:	00003517          	auipc	a0,0x3
    800021e4:	02050513          	addi	a0,a0,32 # 80005200 <_ZZ12printIntegermE6digits+0x128>
    800021e8:	00001097          	auipc	ra,0x1
    800021ec:	804080e7          	jalr	-2044(ra) # 800029ec <panic>
    800021f0:	0ff7f713          	andi	a4,a5,255
    800021f4:	00900693          	li	a3,9
    800021f8:	04d70063          	beq	a4,a3,80002238 <kerneltrap+0xac>
    800021fc:	fff00713          	li	a4,-1
    80002200:	03f71713          	slli	a4,a4,0x3f
    80002204:	00170713          	addi	a4,a4,1
    80002208:	fae798e3          	bne	a5,a4,800021b8 <kerneltrap+0x2c>
    8000220c:	00000097          	auipc	ra,0x0
    80002210:	e00080e7          	jalr	-512(ra) # 8000200c <cpuid>
    80002214:	06050663          	beqz	a0,80002280 <kerneltrap+0xf4>
    80002218:	144027f3          	csrr	a5,sip
    8000221c:	ffd7f793          	andi	a5,a5,-3
    80002220:	14479073          	csrw	sip,a5
    80002224:	01813083          	ld	ra,24(sp)
    80002228:	01013403          	ld	s0,16(sp)
    8000222c:	00813483          	ld	s1,8(sp)
    80002230:	02010113          	addi	sp,sp,32
    80002234:	00008067          	ret
    80002238:	00000097          	auipc	ra,0x0
    8000223c:	3cc080e7          	jalr	972(ra) # 80002604 <plic_claim>
    80002240:	00a00793          	li	a5,10
    80002244:	00050493          	mv	s1,a0
    80002248:	06f50863          	beq	a0,a5,800022b8 <kerneltrap+0x12c>
    8000224c:	fc050ce3          	beqz	a0,80002224 <kerneltrap+0x98>
    80002250:	00050593          	mv	a1,a0
    80002254:	00003517          	auipc	a0,0x3
    80002258:	f6450513          	addi	a0,a0,-156 # 800051b8 <_ZZ12printIntegermE6digits+0xe0>
    8000225c:	00000097          	auipc	ra,0x0
    80002260:	7ec080e7          	jalr	2028(ra) # 80002a48 <__printf>
    80002264:	01013403          	ld	s0,16(sp)
    80002268:	01813083          	ld	ra,24(sp)
    8000226c:	00048513          	mv	a0,s1
    80002270:	00813483          	ld	s1,8(sp)
    80002274:	02010113          	addi	sp,sp,32
    80002278:	00000317          	auipc	t1,0x0
    8000227c:	3c430067          	jr	964(t1) # 8000263c <plic_complete>
    80002280:	00004517          	auipc	a0,0x4
    80002284:	6c050513          	addi	a0,a0,1728 # 80006940 <tickslock>
    80002288:	00001097          	auipc	ra,0x1
    8000228c:	494080e7          	jalr	1172(ra) # 8000371c <acquire>
    80002290:	00003717          	auipc	a4,0x3
    80002294:	5b470713          	addi	a4,a4,1460 # 80005844 <ticks>
    80002298:	00072783          	lw	a5,0(a4)
    8000229c:	00004517          	auipc	a0,0x4
    800022a0:	6a450513          	addi	a0,a0,1700 # 80006940 <tickslock>
    800022a4:	0017879b          	addiw	a5,a5,1
    800022a8:	00f72023          	sw	a5,0(a4)
    800022ac:	00001097          	auipc	ra,0x1
    800022b0:	53c080e7          	jalr	1340(ra) # 800037e8 <release>
    800022b4:	f65ff06f          	j	80002218 <kerneltrap+0x8c>
    800022b8:	00001097          	auipc	ra,0x1
    800022bc:	098080e7          	jalr	152(ra) # 80003350 <uartintr>
    800022c0:	fa5ff06f          	j	80002264 <kerneltrap+0xd8>
    800022c4:	00003517          	auipc	a0,0x3
    800022c8:	ed450513          	addi	a0,a0,-300 # 80005198 <_ZZ12printIntegermE6digits+0xc0>
    800022cc:	00000097          	auipc	ra,0x0
    800022d0:	720080e7          	jalr	1824(ra) # 800029ec <panic>

00000000800022d4 <clockintr>:
    800022d4:	fe010113          	addi	sp,sp,-32
    800022d8:	00813823          	sd	s0,16(sp)
    800022dc:	00913423          	sd	s1,8(sp)
    800022e0:	00113c23          	sd	ra,24(sp)
    800022e4:	02010413          	addi	s0,sp,32
    800022e8:	00004497          	auipc	s1,0x4
    800022ec:	65848493          	addi	s1,s1,1624 # 80006940 <tickslock>
    800022f0:	00048513          	mv	a0,s1
    800022f4:	00001097          	auipc	ra,0x1
    800022f8:	428080e7          	jalr	1064(ra) # 8000371c <acquire>
    800022fc:	00003717          	auipc	a4,0x3
    80002300:	54870713          	addi	a4,a4,1352 # 80005844 <ticks>
    80002304:	00072783          	lw	a5,0(a4)
    80002308:	01013403          	ld	s0,16(sp)
    8000230c:	01813083          	ld	ra,24(sp)
    80002310:	00048513          	mv	a0,s1
    80002314:	0017879b          	addiw	a5,a5,1
    80002318:	00813483          	ld	s1,8(sp)
    8000231c:	00f72023          	sw	a5,0(a4)
    80002320:	02010113          	addi	sp,sp,32
    80002324:	00001317          	auipc	t1,0x1
    80002328:	4c430067          	jr	1220(t1) # 800037e8 <release>

000000008000232c <devintr>:
    8000232c:	142027f3          	csrr	a5,scause
    80002330:	00000513          	li	a0,0
    80002334:	0007c463          	bltz	a5,8000233c <devintr+0x10>
    80002338:	00008067          	ret
    8000233c:	fe010113          	addi	sp,sp,-32
    80002340:	00813823          	sd	s0,16(sp)
    80002344:	00113c23          	sd	ra,24(sp)
    80002348:	00913423          	sd	s1,8(sp)
    8000234c:	02010413          	addi	s0,sp,32
    80002350:	0ff7f713          	andi	a4,a5,255
    80002354:	00900693          	li	a3,9
    80002358:	04d70c63          	beq	a4,a3,800023b0 <devintr+0x84>
    8000235c:	fff00713          	li	a4,-1
    80002360:	03f71713          	slli	a4,a4,0x3f
    80002364:	00170713          	addi	a4,a4,1
    80002368:	00e78c63          	beq	a5,a4,80002380 <devintr+0x54>
    8000236c:	01813083          	ld	ra,24(sp)
    80002370:	01013403          	ld	s0,16(sp)
    80002374:	00813483          	ld	s1,8(sp)
    80002378:	02010113          	addi	sp,sp,32
    8000237c:	00008067          	ret
    80002380:	00000097          	auipc	ra,0x0
    80002384:	c8c080e7          	jalr	-884(ra) # 8000200c <cpuid>
    80002388:	06050663          	beqz	a0,800023f4 <devintr+0xc8>
    8000238c:	144027f3          	csrr	a5,sip
    80002390:	ffd7f793          	andi	a5,a5,-3
    80002394:	14479073          	csrw	sip,a5
    80002398:	01813083          	ld	ra,24(sp)
    8000239c:	01013403          	ld	s0,16(sp)
    800023a0:	00813483          	ld	s1,8(sp)
    800023a4:	00200513          	li	a0,2
    800023a8:	02010113          	addi	sp,sp,32
    800023ac:	00008067          	ret
    800023b0:	00000097          	auipc	ra,0x0
    800023b4:	254080e7          	jalr	596(ra) # 80002604 <plic_claim>
    800023b8:	00a00793          	li	a5,10
    800023bc:	00050493          	mv	s1,a0
    800023c0:	06f50663          	beq	a0,a5,8000242c <devintr+0x100>
    800023c4:	00100513          	li	a0,1
    800023c8:	fa0482e3          	beqz	s1,8000236c <devintr+0x40>
    800023cc:	00048593          	mv	a1,s1
    800023d0:	00003517          	auipc	a0,0x3
    800023d4:	de850513          	addi	a0,a0,-536 # 800051b8 <_ZZ12printIntegermE6digits+0xe0>
    800023d8:	00000097          	auipc	ra,0x0
    800023dc:	670080e7          	jalr	1648(ra) # 80002a48 <__printf>
    800023e0:	00048513          	mv	a0,s1
    800023e4:	00000097          	auipc	ra,0x0
    800023e8:	258080e7          	jalr	600(ra) # 8000263c <plic_complete>
    800023ec:	00100513          	li	a0,1
    800023f0:	f7dff06f          	j	8000236c <devintr+0x40>
    800023f4:	00004517          	auipc	a0,0x4
    800023f8:	54c50513          	addi	a0,a0,1356 # 80006940 <tickslock>
    800023fc:	00001097          	auipc	ra,0x1
    80002400:	320080e7          	jalr	800(ra) # 8000371c <acquire>
    80002404:	00003717          	auipc	a4,0x3
    80002408:	44070713          	addi	a4,a4,1088 # 80005844 <ticks>
    8000240c:	00072783          	lw	a5,0(a4)
    80002410:	00004517          	auipc	a0,0x4
    80002414:	53050513          	addi	a0,a0,1328 # 80006940 <tickslock>
    80002418:	0017879b          	addiw	a5,a5,1
    8000241c:	00f72023          	sw	a5,0(a4)
    80002420:	00001097          	auipc	ra,0x1
    80002424:	3c8080e7          	jalr	968(ra) # 800037e8 <release>
    80002428:	f65ff06f          	j	8000238c <devintr+0x60>
    8000242c:	00001097          	auipc	ra,0x1
    80002430:	f24080e7          	jalr	-220(ra) # 80003350 <uartintr>
    80002434:	fadff06f          	j	800023e0 <devintr+0xb4>
	...

0000000080002440 <kernelvec>:
    80002440:	f0010113          	addi	sp,sp,-256
    80002444:	00113023          	sd	ra,0(sp)
    80002448:	00213423          	sd	sp,8(sp)
    8000244c:	00313823          	sd	gp,16(sp)
    80002450:	00413c23          	sd	tp,24(sp)
    80002454:	02513023          	sd	t0,32(sp)
    80002458:	02613423          	sd	t1,40(sp)
    8000245c:	02713823          	sd	t2,48(sp)
    80002460:	02813c23          	sd	s0,56(sp)
    80002464:	04913023          	sd	s1,64(sp)
    80002468:	04a13423          	sd	a0,72(sp)
    8000246c:	04b13823          	sd	a1,80(sp)
    80002470:	04c13c23          	sd	a2,88(sp)
    80002474:	06d13023          	sd	a3,96(sp)
    80002478:	06e13423          	sd	a4,104(sp)
    8000247c:	06f13823          	sd	a5,112(sp)
    80002480:	07013c23          	sd	a6,120(sp)
    80002484:	09113023          	sd	a7,128(sp)
    80002488:	09213423          	sd	s2,136(sp)
    8000248c:	09313823          	sd	s3,144(sp)
    80002490:	09413c23          	sd	s4,152(sp)
    80002494:	0b513023          	sd	s5,160(sp)
    80002498:	0b613423          	sd	s6,168(sp)
    8000249c:	0b713823          	sd	s7,176(sp)
    800024a0:	0b813c23          	sd	s8,184(sp)
    800024a4:	0d913023          	sd	s9,192(sp)
    800024a8:	0da13423          	sd	s10,200(sp)
    800024ac:	0db13823          	sd	s11,208(sp)
    800024b0:	0dc13c23          	sd	t3,216(sp)
    800024b4:	0fd13023          	sd	t4,224(sp)
    800024b8:	0fe13423          	sd	t5,232(sp)
    800024bc:	0ff13823          	sd	t6,240(sp)
    800024c0:	ccdff0ef          	jal	ra,8000218c <kerneltrap>
    800024c4:	00013083          	ld	ra,0(sp)
    800024c8:	00813103          	ld	sp,8(sp)
    800024cc:	01013183          	ld	gp,16(sp)
    800024d0:	02013283          	ld	t0,32(sp)
    800024d4:	02813303          	ld	t1,40(sp)
    800024d8:	03013383          	ld	t2,48(sp)
    800024dc:	03813403          	ld	s0,56(sp)
    800024e0:	04013483          	ld	s1,64(sp)
    800024e4:	04813503          	ld	a0,72(sp)
    800024e8:	05013583          	ld	a1,80(sp)
    800024ec:	05813603          	ld	a2,88(sp)
    800024f0:	06013683          	ld	a3,96(sp)
    800024f4:	06813703          	ld	a4,104(sp)
    800024f8:	07013783          	ld	a5,112(sp)
    800024fc:	07813803          	ld	a6,120(sp)
    80002500:	08013883          	ld	a7,128(sp)
    80002504:	08813903          	ld	s2,136(sp)
    80002508:	09013983          	ld	s3,144(sp)
    8000250c:	09813a03          	ld	s4,152(sp)
    80002510:	0a013a83          	ld	s5,160(sp)
    80002514:	0a813b03          	ld	s6,168(sp)
    80002518:	0b013b83          	ld	s7,176(sp)
    8000251c:	0b813c03          	ld	s8,184(sp)
    80002520:	0c013c83          	ld	s9,192(sp)
    80002524:	0c813d03          	ld	s10,200(sp)
    80002528:	0d013d83          	ld	s11,208(sp)
    8000252c:	0d813e03          	ld	t3,216(sp)
    80002530:	0e013e83          	ld	t4,224(sp)
    80002534:	0e813f03          	ld	t5,232(sp)
    80002538:	0f013f83          	ld	t6,240(sp)
    8000253c:	10010113          	addi	sp,sp,256
    80002540:	10200073          	sret
    80002544:	00000013          	nop
    80002548:	00000013          	nop
    8000254c:	00000013          	nop

0000000080002550 <timervec>:
    80002550:	34051573          	csrrw	a0,mscratch,a0
    80002554:	00b53023          	sd	a1,0(a0)
    80002558:	00c53423          	sd	a2,8(a0)
    8000255c:	00d53823          	sd	a3,16(a0)
    80002560:	01853583          	ld	a1,24(a0)
    80002564:	02053603          	ld	a2,32(a0)
    80002568:	0005b683          	ld	a3,0(a1)
    8000256c:	00c686b3          	add	a3,a3,a2
    80002570:	00d5b023          	sd	a3,0(a1)
    80002574:	00200593          	li	a1,2
    80002578:	14459073          	csrw	sip,a1
    8000257c:	01053683          	ld	a3,16(a0)
    80002580:	00853603          	ld	a2,8(a0)
    80002584:	00053583          	ld	a1,0(a0)
    80002588:	34051573          	csrrw	a0,mscratch,a0
    8000258c:	30200073          	mret

0000000080002590 <plicinit>:
    80002590:	ff010113          	addi	sp,sp,-16
    80002594:	00813423          	sd	s0,8(sp)
    80002598:	01010413          	addi	s0,sp,16
    8000259c:	00813403          	ld	s0,8(sp)
    800025a0:	0c0007b7          	lui	a5,0xc000
    800025a4:	00100713          	li	a4,1
    800025a8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800025ac:	00e7a223          	sw	a4,4(a5)
    800025b0:	01010113          	addi	sp,sp,16
    800025b4:	00008067          	ret

00000000800025b8 <plicinithart>:
    800025b8:	ff010113          	addi	sp,sp,-16
    800025bc:	00813023          	sd	s0,0(sp)
    800025c0:	00113423          	sd	ra,8(sp)
    800025c4:	01010413          	addi	s0,sp,16
    800025c8:	00000097          	auipc	ra,0x0
    800025cc:	a44080e7          	jalr	-1468(ra) # 8000200c <cpuid>
    800025d0:	0085171b          	slliw	a4,a0,0x8
    800025d4:	0c0027b7          	lui	a5,0xc002
    800025d8:	00e787b3          	add	a5,a5,a4
    800025dc:	40200713          	li	a4,1026
    800025e0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800025e4:	00813083          	ld	ra,8(sp)
    800025e8:	00013403          	ld	s0,0(sp)
    800025ec:	00d5151b          	slliw	a0,a0,0xd
    800025f0:	0c2017b7          	lui	a5,0xc201
    800025f4:	00a78533          	add	a0,a5,a0
    800025f8:	00052023          	sw	zero,0(a0)
    800025fc:	01010113          	addi	sp,sp,16
    80002600:	00008067          	ret

0000000080002604 <plic_claim>:
    80002604:	ff010113          	addi	sp,sp,-16
    80002608:	00813023          	sd	s0,0(sp)
    8000260c:	00113423          	sd	ra,8(sp)
    80002610:	01010413          	addi	s0,sp,16
    80002614:	00000097          	auipc	ra,0x0
    80002618:	9f8080e7          	jalr	-1544(ra) # 8000200c <cpuid>
    8000261c:	00813083          	ld	ra,8(sp)
    80002620:	00013403          	ld	s0,0(sp)
    80002624:	00d5151b          	slliw	a0,a0,0xd
    80002628:	0c2017b7          	lui	a5,0xc201
    8000262c:	00a78533          	add	a0,a5,a0
    80002630:	00452503          	lw	a0,4(a0)
    80002634:	01010113          	addi	sp,sp,16
    80002638:	00008067          	ret

000000008000263c <plic_complete>:
    8000263c:	fe010113          	addi	sp,sp,-32
    80002640:	00813823          	sd	s0,16(sp)
    80002644:	00913423          	sd	s1,8(sp)
    80002648:	00113c23          	sd	ra,24(sp)
    8000264c:	02010413          	addi	s0,sp,32
    80002650:	00050493          	mv	s1,a0
    80002654:	00000097          	auipc	ra,0x0
    80002658:	9b8080e7          	jalr	-1608(ra) # 8000200c <cpuid>
    8000265c:	01813083          	ld	ra,24(sp)
    80002660:	01013403          	ld	s0,16(sp)
    80002664:	00d5179b          	slliw	a5,a0,0xd
    80002668:	0c201737          	lui	a4,0xc201
    8000266c:	00f707b3          	add	a5,a4,a5
    80002670:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002674:	00813483          	ld	s1,8(sp)
    80002678:	02010113          	addi	sp,sp,32
    8000267c:	00008067          	ret

0000000080002680 <consolewrite>:
    80002680:	fb010113          	addi	sp,sp,-80
    80002684:	04813023          	sd	s0,64(sp)
    80002688:	04113423          	sd	ra,72(sp)
    8000268c:	02913c23          	sd	s1,56(sp)
    80002690:	03213823          	sd	s2,48(sp)
    80002694:	03313423          	sd	s3,40(sp)
    80002698:	03413023          	sd	s4,32(sp)
    8000269c:	01513c23          	sd	s5,24(sp)
    800026a0:	05010413          	addi	s0,sp,80
    800026a4:	06c05c63          	blez	a2,8000271c <consolewrite+0x9c>
    800026a8:	00060993          	mv	s3,a2
    800026ac:	00050a13          	mv	s4,a0
    800026b0:	00058493          	mv	s1,a1
    800026b4:	00000913          	li	s2,0
    800026b8:	fff00a93          	li	s5,-1
    800026bc:	01c0006f          	j	800026d8 <consolewrite+0x58>
    800026c0:	fbf44503          	lbu	a0,-65(s0)
    800026c4:	0019091b          	addiw	s2,s2,1
    800026c8:	00148493          	addi	s1,s1,1
    800026cc:	00001097          	auipc	ra,0x1
    800026d0:	a9c080e7          	jalr	-1380(ra) # 80003168 <uartputc>
    800026d4:	03298063          	beq	s3,s2,800026f4 <consolewrite+0x74>
    800026d8:	00048613          	mv	a2,s1
    800026dc:	00100693          	li	a3,1
    800026e0:	000a0593          	mv	a1,s4
    800026e4:	fbf40513          	addi	a0,s0,-65
    800026e8:	00000097          	auipc	ra,0x0
    800026ec:	9dc080e7          	jalr	-1572(ra) # 800020c4 <either_copyin>
    800026f0:	fd5518e3          	bne	a0,s5,800026c0 <consolewrite+0x40>
    800026f4:	04813083          	ld	ra,72(sp)
    800026f8:	04013403          	ld	s0,64(sp)
    800026fc:	03813483          	ld	s1,56(sp)
    80002700:	02813983          	ld	s3,40(sp)
    80002704:	02013a03          	ld	s4,32(sp)
    80002708:	01813a83          	ld	s5,24(sp)
    8000270c:	00090513          	mv	a0,s2
    80002710:	03013903          	ld	s2,48(sp)
    80002714:	05010113          	addi	sp,sp,80
    80002718:	00008067          	ret
    8000271c:	00000913          	li	s2,0
    80002720:	fd5ff06f          	j	800026f4 <consolewrite+0x74>

0000000080002724 <consoleread>:
    80002724:	f9010113          	addi	sp,sp,-112
    80002728:	06813023          	sd	s0,96(sp)
    8000272c:	04913c23          	sd	s1,88(sp)
    80002730:	05213823          	sd	s2,80(sp)
    80002734:	05313423          	sd	s3,72(sp)
    80002738:	05413023          	sd	s4,64(sp)
    8000273c:	03513c23          	sd	s5,56(sp)
    80002740:	03613823          	sd	s6,48(sp)
    80002744:	03713423          	sd	s7,40(sp)
    80002748:	03813023          	sd	s8,32(sp)
    8000274c:	06113423          	sd	ra,104(sp)
    80002750:	01913c23          	sd	s9,24(sp)
    80002754:	07010413          	addi	s0,sp,112
    80002758:	00060b93          	mv	s7,a2
    8000275c:	00050913          	mv	s2,a0
    80002760:	00058c13          	mv	s8,a1
    80002764:	00060b1b          	sext.w	s6,a2
    80002768:	00004497          	auipc	s1,0x4
    8000276c:	20048493          	addi	s1,s1,512 # 80006968 <cons>
    80002770:	00400993          	li	s3,4
    80002774:	fff00a13          	li	s4,-1
    80002778:	00a00a93          	li	s5,10
    8000277c:	05705e63          	blez	s7,800027d8 <consoleread+0xb4>
    80002780:	09c4a703          	lw	a4,156(s1)
    80002784:	0984a783          	lw	a5,152(s1)
    80002788:	0007071b          	sext.w	a4,a4
    8000278c:	08e78463          	beq	a5,a4,80002814 <consoleread+0xf0>
    80002790:	07f7f713          	andi	a4,a5,127
    80002794:	00e48733          	add	a4,s1,a4
    80002798:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000279c:	0017869b          	addiw	a3,a5,1
    800027a0:	08d4ac23          	sw	a3,152(s1)
    800027a4:	00070c9b          	sext.w	s9,a4
    800027a8:	0b370663          	beq	a4,s3,80002854 <consoleread+0x130>
    800027ac:	00100693          	li	a3,1
    800027b0:	f9f40613          	addi	a2,s0,-97
    800027b4:	000c0593          	mv	a1,s8
    800027b8:	00090513          	mv	a0,s2
    800027bc:	f8e40fa3          	sb	a4,-97(s0)
    800027c0:	00000097          	auipc	ra,0x0
    800027c4:	8b8080e7          	jalr	-1864(ra) # 80002078 <either_copyout>
    800027c8:	01450863          	beq	a0,s4,800027d8 <consoleread+0xb4>
    800027cc:	001c0c13          	addi	s8,s8,1
    800027d0:	fffb8b9b          	addiw	s7,s7,-1
    800027d4:	fb5c94e3          	bne	s9,s5,8000277c <consoleread+0x58>
    800027d8:	000b851b          	sext.w	a0,s7
    800027dc:	06813083          	ld	ra,104(sp)
    800027e0:	06013403          	ld	s0,96(sp)
    800027e4:	05813483          	ld	s1,88(sp)
    800027e8:	05013903          	ld	s2,80(sp)
    800027ec:	04813983          	ld	s3,72(sp)
    800027f0:	04013a03          	ld	s4,64(sp)
    800027f4:	03813a83          	ld	s5,56(sp)
    800027f8:	02813b83          	ld	s7,40(sp)
    800027fc:	02013c03          	ld	s8,32(sp)
    80002800:	01813c83          	ld	s9,24(sp)
    80002804:	40ab053b          	subw	a0,s6,a0
    80002808:	03013b03          	ld	s6,48(sp)
    8000280c:	07010113          	addi	sp,sp,112
    80002810:	00008067          	ret
    80002814:	00001097          	auipc	ra,0x1
    80002818:	1d8080e7          	jalr	472(ra) # 800039ec <push_on>
    8000281c:	0984a703          	lw	a4,152(s1)
    80002820:	09c4a783          	lw	a5,156(s1)
    80002824:	0007879b          	sext.w	a5,a5
    80002828:	fef70ce3          	beq	a4,a5,80002820 <consoleread+0xfc>
    8000282c:	00001097          	auipc	ra,0x1
    80002830:	234080e7          	jalr	564(ra) # 80003a60 <pop_on>
    80002834:	0984a783          	lw	a5,152(s1)
    80002838:	07f7f713          	andi	a4,a5,127
    8000283c:	00e48733          	add	a4,s1,a4
    80002840:	01874703          	lbu	a4,24(a4)
    80002844:	0017869b          	addiw	a3,a5,1
    80002848:	08d4ac23          	sw	a3,152(s1)
    8000284c:	00070c9b          	sext.w	s9,a4
    80002850:	f5371ee3          	bne	a4,s3,800027ac <consoleread+0x88>
    80002854:	000b851b          	sext.w	a0,s7
    80002858:	f96bf2e3          	bgeu	s7,s6,800027dc <consoleread+0xb8>
    8000285c:	08f4ac23          	sw	a5,152(s1)
    80002860:	f7dff06f          	j	800027dc <consoleread+0xb8>

0000000080002864 <consputc>:
    80002864:	10000793          	li	a5,256
    80002868:	00f50663          	beq	a0,a5,80002874 <consputc+0x10>
    8000286c:	00001317          	auipc	t1,0x1
    80002870:	9f430067          	jr	-1548(t1) # 80003260 <uartputc_sync>
    80002874:	ff010113          	addi	sp,sp,-16
    80002878:	00113423          	sd	ra,8(sp)
    8000287c:	00813023          	sd	s0,0(sp)
    80002880:	01010413          	addi	s0,sp,16
    80002884:	00800513          	li	a0,8
    80002888:	00001097          	auipc	ra,0x1
    8000288c:	9d8080e7          	jalr	-1576(ra) # 80003260 <uartputc_sync>
    80002890:	02000513          	li	a0,32
    80002894:	00001097          	auipc	ra,0x1
    80002898:	9cc080e7          	jalr	-1588(ra) # 80003260 <uartputc_sync>
    8000289c:	00013403          	ld	s0,0(sp)
    800028a0:	00813083          	ld	ra,8(sp)
    800028a4:	00800513          	li	a0,8
    800028a8:	01010113          	addi	sp,sp,16
    800028ac:	00001317          	auipc	t1,0x1
    800028b0:	9b430067          	jr	-1612(t1) # 80003260 <uartputc_sync>

00000000800028b4 <consoleintr>:
    800028b4:	fe010113          	addi	sp,sp,-32
    800028b8:	00813823          	sd	s0,16(sp)
    800028bc:	00913423          	sd	s1,8(sp)
    800028c0:	01213023          	sd	s2,0(sp)
    800028c4:	00113c23          	sd	ra,24(sp)
    800028c8:	02010413          	addi	s0,sp,32
    800028cc:	00004917          	auipc	s2,0x4
    800028d0:	09c90913          	addi	s2,s2,156 # 80006968 <cons>
    800028d4:	00050493          	mv	s1,a0
    800028d8:	00090513          	mv	a0,s2
    800028dc:	00001097          	auipc	ra,0x1
    800028e0:	e40080e7          	jalr	-448(ra) # 8000371c <acquire>
    800028e4:	02048c63          	beqz	s1,8000291c <consoleintr+0x68>
    800028e8:	0a092783          	lw	a5,160(s2)
    800028ec:	09892703          	lw	a4,152(s2)
    800028f0:	07f00693          	li	a3,127
    800028f4:	40e7873b          	subw	a4,a5,a4
    800028f8:	02e6e263          	bltu	a3,a4,8000291c <consoleintr+0x68>
    800028fc:	00d00713          	li	a4,13
    80002900:	04e48063          	beq	s1,a4,80002940 <consoleintr+0x8c>
    80002904:	07f7f713          	andi	a4,a5,127
    80002908:	00e90733          	add	a4,s2,a4
    8000290c:	0017879b          	addiw	a5,a5,1
    80002910:	0af92023          	sw	a5,160(s2)
    80002914:	00970c23          	sb	s1,24(a4)
    80002918:	08f92e23          	sw	a5,156(s2)
    8000291c:	01013403          	ld	s0,16(sp)
    80002920:	01813083          	ld	ra,24(sp)
    80002924:	00813483          	ld	s1,8(sp)
    80002928:	00013903          	ld	s2,0(sp)
    8000292c:	00004517          	auipc	a0,0x4
    80002930:	03c50513          	addi	a0,a0,60 # 80006968 <cons>
    80002934:	02010113          	addi	sp,sp,32
    80002938:	00001317          	auipc	t1,0x1
    8000293c:	eb030067          	jr	-336(t1) # 800037e8 <release>
    80002940:	00a00493          	li	s1,10
    80002944:	fc1ff06f          	j	80002904 <consoleintr+0x50>

0000000080002948 <consoleinit>:
    80002948:	fe010113          	addi	sp,sp,-32
    8000294c:	00113c23          	sd	ra,24(sp)
    80002950:	00813823          	sd	s0,16(sp)
    80002954:	00913423          	sd	s1,8(sp)
    80002958:	02010413          	addi	s0,sp,32
    8000295c:	00004497          	auipc	s1,0x4
    80002960:	00c48493          	addi	s1,s1,12 # 80006968 <cons>
    80002964:	00048513          	mv	a0,s1
    80002968:	00003597          	auipc	a1,0x3
    8000296c:	8a858593          	addi	a1,a1,-1880 # 80005210 <_ZZ12printIntegermE6digits+0x138>
    80002970:	00001097          	auipc	ra,0x1
    80002974:	d88080e7          	jalr	-632(ra) # 800036f8 <initlock>
    80002978:	00000097          	auipc	ra,0x0
    8000297c:	7ac080e7          	jalr	1964(ra) # 80003124 <uartinit>
    80002980:	01813083          	ld	ra,24(sp)
    80002984:	01013403          	ld	s0,16(sp)
    80002988:	00000797          	auipc	a5,0x0
    8000298c:	d9c78793          	addi	a5,a5,-612 # 80002724 <consoleread>
    80002990:	0af4bc23          	sd	a5,184(s1)
    80002994:	00000797          	auipc	a5,0x0
    80002998:	cec78793          	addi	a5,a5,-788 # 80002680 <consolewrite>
    8000299c:	0cf4b023          	sd	a5,192(s1)
    800029a0:	00813483          	ld	s1,8(sp)
    800029a4:	02010113          	addi	sp,sp,32
    800029a8:	00008067          	ret

00000000800029ac <console_read>:
    800029ac:	ff010113          	addi	sp,sp,-16
    800029b0:	00813423          	sd	s0,8(sp)
    800029b4:	01010413          	addi	s0,sp,16
    800029b8:	00813403          	ld	s0,8(sp)
    800029bc:	00004317          	auipc	t1,0x4
    800029c0:	06433303          	ld	t1,100(t1) # 80006a20 <devsw+0x10>
    800029c4:	01010113          	addi	sp,sp,16
    800029c8:	00030067          	jr	t1

00000000800029cc <console_write>:
    800029cc:	ff010113          	addi	sp,sp,-16
    800029d0:	00813423          	sd	s0,8(sp)
    800029d4:	01010413          	addi	s0,sp,16
    800029d8:	00813403          	ld	s0,8(sp)
    800029dc:	00004317          	auipc	t1,0x4
    800029e0:	04c33303          	ld	t1,76(t1) # 80006a28 <devsw+0x18>
    800029e4:	01010113          	addi	sp,sp,16
    800029e8:	00030067          	jr	t1

00000000800029ec <panic>:
    800029ec:	fe010113          	addi	sp,sp,-32
    800029f0:	00113c23          	sd	ra,24(sp)
    800029f4:	00813823          	sd	s0,16(sp)
    800029f8:	00913423          	sd	s1,8(sp)
    800029fc:	02010413          	addi	s0,sp,32
    80002a00:	00050493          	mv	s1,a0
    80002a04:	00003517          	auipc	a0,0x3
    80002a08:	81450513          	addi	a0,a0,-2028 # 80005218 <_ZZ12printIntegermE6digits+0x140>
    80002a0c:	00004797          	auipc	a5,0x4
    80002a10:	0a07ae23          	sw	zero,188(a5) # 80006ac8 <pr+0x18>
    80002a14:	00000097          	auipc	ra,0x0
    80002a18:	034080e7          	jalr	52(ra) # 80002a48 <__printf>
    80002a1c:	00048513          	mv	a0,s1
    80002a20:	00000097          	auipc	ra,0x0
    80002a24:	028080e7          	jalr	40(ra) # 80002a48 <__printf>
    80002a28:	00002517          	auipc	a0,0x2
    80002a2c:	6a850513          	addi	a0,a0,1704 # 800050d0 <kvmincrease+0xf20>
    80002a30:	00000097          	auipc	ra,0x0
    80002a34:	018080e7          	jalr	24(ra) # 80002a48 <__printf>
    80002a38:	00100793          	li	a5,1
    80002a3c:	00003717          	auipc	a4,0x3
    80002a40:	e0f72623          	sw	a5,-500(a4) # 80005848 <panicked>
    80002a44:	0000006f          	j	80002a44 <panic+0x58>

0000000080002a48 <__printf>:
    80002a48:	f3010113          	addi	sp,sp,-208
    80002a4c:	08813023          	sd	s0,128(sp)
    80002a50:	07313423          	sd	s3,104(sp)
    80002a54:	09010413          	addi	s0,sp,144
    80002a58:	05813023          	sd	s8,64(sp)
    80002a5c:	08113423          	sd	ra,136(sp)
    80002a60:	06913c23          	sd	s1,120(sp)
    80002a64:	07213823          	sd	s2,112(sp)
    80002a68:	07413023          	sd	s4,96(sp)
    80002a6c:	05513c23          	sd	s5,88(sp)
    80002a70:	05613823          	sd	s6,80(sp)
    80002a74:	05713423          	sd	s7,72(sp)
    80002a78:	03913c23          	sd	s9,56(sp)
    80002a7c:	03a13823          	sd	s10,48(sp)
    80002a80:	03b13423          	sd	s11,40(sp)
    80002a84:	00004317          	auipc	t1,0x4
    80002a88:	02c30313          	addi	t1,t1,44 # 80006ab0 <pr>
    80002a8c:	01832c03          	lw	s8,24(t1)
    80002a90:	00b43423          	sd	a1,8(s0)
    80002a94:	00c43823          	sd	a2,16(s0)
    80002a98:	00d43c23          	sd	a3,24(s0)
    80002a9c:	02e43023          	sd	a4,32(s0)
    80002aa0:	02f43423          	sd	a5,40(s0)
    80002aa4:	03043823          	sd	a6,48(s0)
    80002aa8:	03143c23          	sd	a7,56(s0)
    80002aac:	00050993          	mv	s3,a0
    80002ab0:	4a0c1663          	bnez	s8,80002f5c <__printf+0x514>
    80002ab4:	60098c63          	beqz	s3,800030cc <__printf+0x684>
    80002ab8:	0009c503          	lbu	a0,0(s3)
    80002abc:	00840793          	addi	a5,s0,8
    80002ac0:	f6f43c23          	sd	a5,-136(s0)
    80002ac4:	00000493          	li	s1,0
    80002ac8:	22050063          	beqz	a0,80002ce8 <__printf+0x2a0>
    80002acc:	00002a37          	lui	s4,0x2
    80002ad0:	00018ab7          	lui	s5,0x18
    80002ad4:	000f4b37          	lui	s6,0xf4
    80002ad8:	00989bb7          	lui	s7,0x989
    80002adc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002ae0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002ae4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002ae8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002aec:	00148c9b          	addiw	s9,s1,1
    80002af0:	02500793          	li	a5,37
    80002af4:	01998933          	add	s2,s3,s9
    80002af8:	38f51263          	bne	a0,a5,80002e7c <__printf+0x434>
    80002afc:	00094783          	lbu	a5,0(s2)
    80002b00:	00078c9b          	sext.w	s9,a5
    80002b04:	1e078263          	beqz	a5,80002ce8 <__printf+0x2a0>
    80002b08:	0024849b          	addiw	s1,s1,2
    80002b0c:	07000713          	li	a4,112
    80002b10:	00998933          	add	s2,s3,s1
    80002b14:	38e78a63          	beq	a5,a4,80002ea8 <__printf+0x460>
    80002b18:	20f76863          	bltu	a4,a5,80002d28 <__printf+0x2e0>
    80002b1c:	42a78863          	beq	a5,a0,80002f4c <__printf+0x504>
    80002b20:	06400713          	li	a4,100
    80002b24:	40e79663          	bne	a5,a4,80002f30 <__printf+0x4e8>
    80002b28:	f7843783          	ld	a5,-136(s0)
    80002b2c:	0007a603          	lw	a2,0(a5)
    80002b30:	00878793          	addi	a5,a5,8
    80002b34:	f6f43c23          	sd	a5,-136(s0)
    80002b38:	42064a63          	bltz	a2,80002f6c <__printf+0x524>
    80002b3c:	00a00713          	li	a4,10
    80002b40:	02e677bb          	remuw	a5,a2,a4
    80002b44:	00002d97          	auipc	s11,0x2
    80002b48:	6fcd8d93          	addi	s11,s11,1788 # 80005240 <digits>
    80002b4c:	00900593          	li	a1,9
    80002b50:	0006051b          	sext.w	a0,a2
    80002b54:	00000c93          	li	s9,0
    80002b58:	02079793          	slli	a5,a5,0x20
    80002b5c:	0207d793          	srli	a5,a5,0x20
    80002b60:	00fd87b3          	add	a5,s11,a5
    80002b64:	0007c783          	lbu	a5,0(a5)
    80002b68:	02e656bb          	divuw	a3,a2,a4
    80002b6c:	f8f40023          	sb	a5,-128(s0)
    80002b70:	14c5d863          	bge	a1,a2,80002cc0 <__printf+0x278>
    80002b74:	06300593          	li	a1,99
    80002b78:	00100c93          	li	s9,1
    80002b7c:	02e6f7bb          	remuw	a5,a3,a4
    80002b80:	02079793          	slli	a5,a5,0x20
    80002b84:	0207d793          	srli	a5,a5,0x20
    80002b88:	00fd87b3          	add	a5,s11,a5
    80002b8c:	0007c783          	lbu	a5,0(a5)
    80002b90:	02e6d73b          	divuw	a4,a3,a4
    80002b94:	f8f400a3          	sb	a5,-127(s0)
    80002b98:	12a5f463          	bgeu	a1,a0,80002cc0 <__printf+0x278>
    80002b9c:	00a00693          	li	a3,10
    80002ba0:	00900593          	li	a1,9
    80002ba4:	02d777bb          	remuw	a5,a4,a3
    80002ba8:	02079793          	slli	a5,a5,0x20
    80002bac:	0207d793          	srli	a5,a5,0x20
    80002bb0:	00fd87b3          	add	a5,s11,a5
    80002bb4:	0007c503          	lbu	a0,0(a5)
    80002bb8:	02d757bb          	divuw	a5,a4,a3
    80002bbc:	f8a40123          	sb	a0,-126(s0)
    80002bc0:	48e5f263          	bgeu	a1,a4,80003044 <__printf+0x5fc>
    80002bc4:	06300513          	li	a0,99
    80002bc8:	02d7f5bb          	remuw	a1,a5,a3
    80002bcc:	02059593          	slli	a1,a1,0x20
    80002bd0:	0205d593          	srli	a1,a1,0x20
    80002bd4:	00bd85b3          	add	a1,s11,a1
    80002bd8:	0005c583          	lbu	a1,0(a1)
    80002bdc:	02d7d7bb          	divuw	a5,a5,a3
    80002be0:	f8b401a3          	sb	a1,-125(s0)
    80002be4:	48e57263          	bgeu	a0,a4,80003068 <__printf+0x620>
    80002be8:	3e700513          	li	a0,999
    80002bec:	02d7f5bb          	remuw	a1,a5,a3
    80002bf0:	02059593          	slli	a1,a1,0x20
    80002bf4:	0205d593          	srli	a1,a1,0x20
    80002bf8:	00bd85b3          	add	a1,s11,a1
    80002bfc:	0005c583          	lbu	a1,0(a1)
    80002c00:	02d7d7bb          	divuw	a5,a5,a3
    80002c04:	f8b40223          	sb	a1,-124(s0)
    80002c08:	46e57663          	bgeu	a0,a4,80003074 <__printf+0x62c>
    80002c0c:	02d7f5bb          	remuw	a1,a5,a3
    80002c10:	02059593          	slli	a1,a1,0x20
    80002c14:	0205d593          	srli	a1,a1,0x20
    80002c18:	00bd85b3          	add	a1,s11,a1
    80002c1c:	0005c583          	lbu	a1,0(a1)
    80002c20:	02d7d7bb          	divuw	a5,a5,a3
    80002c24:	f8b402a3          	sb	a1,-123(s0)
    80002c28:	46ea7863          	bgeu	s4,a4,80003098 <__printf+0x650>
    80002c2c:	02d7f5bb          	remuw	a1,a5,a3
    80002c30:	02059593          	slli	a1,a1,0x20
    80002c34:	0205d593          	srli	a1,a1,0x20
    80002c38:	00bd85b3          	add	a1,s11,a1
    80002c3c:	0005c583          	lbu	a1,0(a1)
    80002c40:	02d7d7bb          	divuw	a5,a5,a3
    80002c44:	f8b40323          	sb	a1,-122(s0)
    80002c48:	3eeaf863          	bgeu	s5,a4,80003038 <__printf+0x5f0>
    80002c4c:	02d7f5bb          	remuw	a1,a5,a3
    80002c50:	02059593          	slli	a1,a1,0x20
    80002c54:	0205d593          	srli	a1,a1,0x20
    80002c58:	00bd85b3          	add	a1,s11,a1
    80002c5c:	0005c583          	lbu	a1,0(a1)
    80002c60:	02d7d7bb          	divuw	a5,a5,a3
    80002c64:	f8b403a3          	sb	a1,-121(s0)
    80002c68:	42eb7e63          	bgeu	s6,a4,800030a4 <__printf+0x65c>
    80002c6c:	02d7f5bb          	remuw	a1,a5,a3
    80002c70:	02059593          	slli	a1,a1,0x20
    80002c74:	0205d593          	srli	a1,a1,0x20
    80002c78:	00bd85b3          	add	a1,s11,a1
    80002c7c:	0005c583          	lbu	a1,0(a1)
    80002c80:	02d7d7bb          	divuw	a5,a5,a3
    80002c84:	f8b40423          	sb	a1,-120(s0)
    80002c88:	42ebfc63          	bgeu	s7,a4,800030c0 <__printf+0x678>
    80002c8c:	02079793          	slli	a5,a5,0x20
    80002c90:	0207d793          	srli	a5,a5,0x20
    80002c94:	00fd8db3          	add	s11,s11,a5
    80002c98:	000dc703          	lbu	a4,0(s11)
    80002c9c:	00a00793          	li	a5,10
    80002ca0:	00900c93          	li	s9,9
    80002ca4:	f8e404a3          	sb	a4,-119(s0)
    80002ca8:	00065c63          	bgez	a2,80002cc0 <__printf+0x278>
    80002cac:	f9040713          	addi	a4,s0,-112
    80002cb0:	00f70733          	add	a4,a4,a5
    80002cb4:	02d00693          	li	a3,45
    80002cb8:	fed70823          	sb	a3,-16(a4)
    80002cbc:	00078c93          	mv	s9,a5
    80002cc0:	f8040793          	addi	a5,s0,-128
    80002cc4:	01978cb3          	add	s9,a5,s9
    80002cc8:	f7f40d13          	addi	s10,s0,-129
    80002ccc:	000cc503          	lbu	a0,0(s9)
    80002cd0:	fffc8c93          	addi	s9,s9,-1
    80002cd4:	00000097          	auipc	ra,0x0
    80002cd8:	b90080e7          	jalr	-1136(ra) # 80002864 <consputc>
    80002cdc:	ffac98e3          	bne	s9,s10,80002ccc <__printf+0x284>
    80002ce0:	00094503          	lbu	a0,0(s2)
    80002ce4:	e00514e3          	bnez	a0,80002aec <__printf+0xa4>
    80002ce8:	1a0c1663          	bnez	s8,80002e94 <__printf+0x44c>
    80002cec:	08813083          	ld	ra,136(sp)
    80002cf0:	08013403          	ld	s0,128(sp)
    80002cf4:	07813483          	ld	s1,120(sp)
    80002cf8:	07013903          	ld	s2,112(sp)
    80002cfc:	06813983          	ld	s3,104(sp)
    80002d00:	06013a03          	ld	s4,96(sp)
    80002d04:	05813a83          	ld	s5,88(sp)
    80002d08:	05013b03          	ld	s6,80(sp)
    80002d0c:	04813b83          	ld	s7,72(sp)
    80002d10:	04013c03          	ld	s8,64(sp)
    80002d14:	03813c83          	ld	s9,56(sp)
    80002d18:	03013d03          	ld	s10,48(sp)
    80002d1c:	02813d83          	ld	s11,40(sp)
    80002d20:	0d010113          	addi	sp,sp,208
    80002d24:	00008067          	ret
    80002d28:	07300713          	li	a4,115
    80002d2c:	1ce78a63          	beq	a5,a4,80002f00 <__printf+0x4b8>
    80002d30:	07800713          	li	a4,120
    80002d34:	1ee79e63          	bne	a5,a4,80002f30 <__printf+0x4e8>
    80002d38:	f7843783          	ld	a5,-136(s0)
    80002d3c:	0007a703          	lw	a4,0(a5)
    80002d40:	00878793          	addi	a5,a5,8
    80002d44:	f6f43c23          	sd	a5,-136(s0)
    80002d48:	28074263          	bltz	a4,80002fcc <__printf+0x584>
    80002d4c:	00002d97          	auipc	s11,0x2
    80002d50:	4f4d8d93          	addi	s11,s11,1268 # 80005240 <digits>
    80002d54:	00f77793          	andi	a5,a4,15
    80002d58:	00fd87b3          	add	a5,s11,a5
    80002d5c:	0007c683          	lbu	a3,0(a5)
    80002d60:	00f00613          	li	a2,15
    80002d64:	0007079b          	sext.w	a5,a4
    80002d68:	f8d40023          	sb	a3,-128(s0)
    80002d6c:	0047559b          	srliw	a1,a4,0x4
    80002d70:	0047569b          	srliw	a3,a4,0x4
    80002d74:	00000c93          	li	s9,0
    80002d78:	0ee65063          	bge	a2,a4,80002e58 <__printf+0x410>
    80002d7c:	00f6f693          	andi	a3,a3,15
    80002d80:	00dd86b3          	add	a3,s11,a3
    80002d84:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002d88:	0087d79b          	srliw	a5,a5,0x8
    80002d8c:	00100c93          	li	s9,1
    80002d90:	f8d400a3          	sb	a3,-127(s0)
    80002d94:	0cb67263          	bgeu	a2,a1,80002e58 <__printf+0x410>
    80002d98:	00f7f693          	andi	a3,a5,15
    80002d9c:	00dd86b3          	add	a3,s11,a3
    80002da0:	0006c583          	lbu	a1,0(a3)
    80002da4:	00f00613          	li	a2,15
    80002da8:	0047d69b          	srliw	a3,a5,0x4
    80002dac:	f8b40123          	sb	a1,-126(s0)
    80002db0:	0047d593          	srli	a1,a5,0x4
    80002db4:	28f67e63          	bgeu	a2,a5,80003050 <__printf+0x608>
    80002db8:	00f6f693          	andi	a3,a3,15
    80002dbc:	00dd86b3          	add	a3,s11,a3
    80002dc0:	0006c503          	lbu	a0,0(a3)
    80002dc4:	0087d813          	srli	a6,a5,0x8
    80002dc8:	0087d69b          	srliw	a3,a5,0x8
    80002dcc:	f8a401a3          	sb	a0,-125(s0)
    80002dd0:	28b67663          	bgeu	a2,a1,8000305c <__printf+0x614>
    80002dd4:	00f6f693          	andi	a3,a3,15
    80002dd8:	00dd86b3          	add	a3,s11,a3
    80002ddc:	0006c583          	lbu	a1,0(a3)
    80002de0:	00c7d513          	srli	a0,a5,0xc
    80002de4:	00c7d69b          	srliw	a3,a5,0xc
    80002de8:	f8b40223          	sb	a1,-124(s0)
    80002dec:	29067a63          	bgeu	a2,a6,80003080 <__printf+0x638>
    80002df0:	00f6f693          	andi	a3,a3,15
    80002df4:	00dd86b3          	add	a3,s11,a3
    80002df8:	0006c583          	lbu	a1,0(a3)
    80002dfc:	0107d813          	srli	a6,a5,0x10
    80002e00:	0107d69b          	srliw	a3,a5,0x10
    80002e04:	f8b402a3          	sb	a1,-123(s0)
    80002e08:	28a67263          	bgeu	a2,a0,8000308c <__printf+0x644>
    80002e0c:	00f6f693          	andi	a3,a3,15
    80002e10:	00dd86b3          	add	a3,s11,a3
    80002e14:	0006c683          	lbu	a3,0(a3)
    80002e18:	0147d79b          	srliw	a5,a5,0x14
    80002e1c:	f8d40323          	sb	a3,-122(s0)
    80002e20:	21067663          	bgeu	a2,a6,8000302c <__printf+0x5e4>
    80002e24:	02079793          	slli	a5,a5,0x20
    80002e28:	0207d793          	srli	a5,a5,0x20
    80002e2c:	00fd8db3          	add	s11,s11,a5
    80002e30:	000dc683          	lbu	a3,0(s11)
    80002e34:	00800793          	li	a5,8
    80002e38:	00700c93          	li	s9,7
    80002e3c:	f8d403a3          	sb	a3,-121(s0)
    80002e40:	00075c63          	bgez	a4,80002e58 <__printf+0x410>
    80002e44:	f9040713          	addi	a4,s0,-112
    80002e48:	00f70733          	add	a4,a4,a5
    80002e4c:	02d00693          	li	a3,45
    80002e50:	fed70823          	sb	a3,-16(a4)
    80002e54:	00078c93          	mv	s9,a5
    80002e58:	f8040793          	addi	a5,s0,-128
    80002e5c:	01978cb3          	add	s9,a5,s9
    80002e60:	f7f40d13          	addi	s10,s0,-129
    80002e64:	000cc503          	lbu	a0,0(s9)
    80002e68:	fffc8c93          	addi	s9,s9,-1
    80002e6c:	00000097          	auipc	ra,0x0
    80002e70:	9f8080e7          	jalr	-1544(ra) # 80002864 <consputc>
    80002e74:	ff9d18e3          	bne	s10,s9,80002e64 <__printf+0x41c>
    80002e78:	0100006f          	j	80002e88 <__printf+0x440>
    80002e7c:	00000097          	auipc	ra,0x0
    80002e80:	9e8080e7          	jalr	-1560(ra) # 80002864 <consputc>
    80002e84:	000c8493          	mv	s1,s9
    80002e88:	00094503          	lbu	a0,0(s2)
    80002e8c:	c60510e3          	bnez	a0,80002aec <__printf+0xa4>
    80002e90:	e40c0ee3          	beqz	s8,80002cec <__printf+0x2a4>
    80002e94:	00004517          	auipc	a0,0x4
    80002e98:	c1c50513          	addi	a0,a0,-996 # 80006ab0 <pr>
    80002e9c:	00001097          	auipc	ra,0x1
    80002ea0:	94c080e7          	jalr	-1716(ra) # 800037e8 <release>
    80002ea4:	e49ff06f          	j	80002cec <__printf+0x2a4>
    80002ea8:	f7843783          	ld	a5,-136(s0)
    80002eac:	03000513          	li	a0,48
    80002eb0:	01000d13          	li	s10,16
    80002eb4:	00878713          	addi	a4,a5,8
    80002eb8:	0007bc83          	ld	s9,0(a5)
    80002ebc:	f6e43c23          	sd	a4,-136(s0)
    80002ec0:	00000097          	auipc	ra,0x0
    80002ec4:	9a4080e7          	jalr	-1628(ra) # 80002864 <consputc>
    80002ec8:	07800513          	li	a0,120
    80002ecc:	00000097          	auipc	ra,0x0
    80002ed0:	998080e7          	jalr	-1640(ra) # 80002864 <consputc>
    80002ed4:	00002d97          	auipc	s11,0x2
    80002ed8:	36cd8d93          	addi	s11,s11,876 # 80005240 <digits>
    80002edc:	03ccd793          	srli	a5,s9,0x3c
    80002ee0:	00fd87b3          	add	a5,s11,a5
    80002ee4:	0007c503          	lbu	a0,0(a5)
    80002ee8:	fffd0d1b          	addiw	s10,s10,-1
    80002eec:	004c9c93          	slli	s9,s9,0x4
    80002ef0:	00000097          	auipc	ra,0x0
    80002ef4:	974080e7          	jalr	-1676(ra) # 80002864 <consputc>
    80002ef8:	fe0d12e3          	bnez	s10,80002edc <__printf+0x494>
    80002efc:	f8dff06f          	j	80002e88 <__printf+0x440>
    80002f00:	f7843783          	ld	a5,-136(s0)
    80002f04:	0007bc83          	ld	s9,0(a5)
    80002f08:	00878793          	addi	a5,a5,8
    80002f0c:	f6f43c23          	sd	a5,-136(s0)
    80002f10:	000c9a63          	bnez	s9,80002f24 <__printf+0x4dc>
    80002f14:	1080006f          	j	8000301c <__printf+0x5d4>
    80002f18:	001c8c93          	addi	s9,s9,1
    80002f1c:	00000097          	auipc	ra,0x0
    80002f20:	948080e7          	jalr	-1720(ra) # 80002864 <consputc>
    80002f24:	000cc503          	lbu	a0,0(s9)
    80002f28:	fe0518e3          	bnez	a0,80002f18 <__printf+0x4d0>
    80002f2c:	f5dff06f          	j	80002e88 <__printf+0x440>
    80002f30:	02500513          	li	a0,37
    80002f34:	00000097          	auipc	ra,0x0
    80002f38:	930080e7          	jalr	-1744(ra) # 80002864 <consputc>
    80002f3c:	000c8513          	mv	a0,s9
    80002f40:	00000097          	auipc	ra,0x0
    80002f44:	924080e7          	jalr	-1756(ra) # 80002864 <consputc>
    80002f48:	f41ff06f          	j	80002e88 <__printf+0x440>
    80002f4c:	02500513          	li	a0,37
    80002f50:	00000097          	auipc	ra,0x0
    80002f54:	914080e7          	jalr	-1772(ra) # 80002864 <consputc>
    80002f58:	f31ff06f          	j	80002e88 <__printf+0x440>
    80002f5c:	00030513          	mv	a0,t1
    80002f60:	00000097          	auipc	ra,0x0
    80002f64:	7bc080e7          	jalr	1980(ra) # 8000371c <acquire>
    80002f68:	b4dff06f          	j	80002ab4 <__printf+0x6c>
    80002f6c:	40c0053b          	negw	a0,a2
    80002f70:	00a00713          	li	a4,10
    80002f74:	02e576bb          	remuw	a3,a0,a4
    80002f78:	00002d97          	auipc	s11,0x2
    80002f7c:	2c8d8d93          	addi	s11,s11,712 # 80005240 <digits>
    80002f80:	ff700593          	li	a1,-9
    80002f84:	02069693          	slli	a3,a3,0x20
    80002f88:	0206d693          	srli	a3,a3,0x20
    80002f8c:	00dd86b3          	add	a3,s11,a3
    80002f90:	0006c683          	lbu	a3,0(a3)
    80002f94:	02e557bb          	divuw	a5,a0,a4
    80002f98:	f8d40023          	sb	a3,-128(s0)
    80002f9c:	10b65e63          	bge	a2,a1,800030b8 <__printf+0x670>
    80002fa0:	06300593          	li	a1,99
    80002fa4:	02e7f6bb          	remuw	a3,a5,a4
    80002fa8:	02069693          	slli	a3,a3,0x20
    80002fac:	0206d693          	srli	a3,a3,0x20
    80002fb0:	00dd86b3          	add	a3,s11,a3
    80002fb4:	0006c683          	lbu	a3,0(a3)
    80002fb8:	02e7d73b          	divuw	a4,a5,a4
    80002fbc:	00200793          	li	a5,2
    80002fc0:	f8d400a3          	sb	a3,-127(s0)
    80002fc4:	bca5ece3          	bltu	a1,a0,80002b9c <__printf+0x154>
    80002fc8:	ce5ff06f          	j	80002cac <__printf+0x264>
    80002fcc:	40e007bb          	negw	a5,a4
    80002fd0:	00002d97          	auipc	s11,0x2
    80002fd4:	270d8d93          	addi	s11,s11,624 # 80005240 <digits>
    80002fd8:	00f7f693          	andi	a3,a5,15
    80002fdc:	00dd86b3          	add	a3,s11,a3
    80002fe0:	0006c583          	lbu	a1,0(a3)
    80002fe4:	ff100613          	li	a2,-15
    80002fe8:	0047d69b          	srliw	a3,a5,0x4
    80002fec:	f8b40023          	sb	a1,-128(s0)
    80002ff0:	0047d59b          	srliw	a1,a5,0x4
    80002ff4:	0ac75e63          	bge	a4,a2,800030b0 <__printf+0x668>
    80002ff8:	00f6f693          	andi	a3,a3,15
    80002ffc:	00dd86b3          	add	a3,s11,a3
    80003000:	0006c603          	lbu	a2,0(a3)
    80003004:	00f00693          	li	a3,15
    80003008:	0087d79b          	srliw	a5,a5,0x8
    8000300c:	f8c400a3          	sb	a2,-127(s0)
    80003010:	d8b6e4e3          	bltu	a3,a1,80002d98 <__printf+0x350>
    80003014:	00200793          	li	a5,2
    80003018:	e2dff06f          	j	80002e44 <__printf+0x3fc>
    8000301c:	00002c97          	auipc	s9,0x2
    80003020:	204c8c93          	addi	s9,s9,516 # 80005220 <_ZZ12printIntegermE6digits+0x148>
    80003024:	02800513          	li	a0,40
    80003028:	ef1ff06f          	j	80002f18 <__printf+0x4d0>
    8000302c:	00700793          	li	a5,7
    80003030:	00600c93          	li	s9,6
    80003034:	e0dff06f          	j	80002e40 <__printf+0x3f8>
    80003038:	00700793          	li	a5,7
    8000303c:	00600c93          	li	s9,6
    80003040:	c69ff06f          	j	80002ca8 <__printf+0x260>
    80003044:	00300793          	li	a5,3
    80003048:	00200c93          	li	s9,2
    8000304c:	c5dff06f          	j	80002ca8 <__printf+0x260>
    80003050:	00300793          	li	a5,3
    80003054:	00200c93          	li	s9,2
    80003058:	de9ff06f          	j	80002e40 <__printf+0x3f8>
    8000305c:	00400793          	li	a5,4
    80003060:	00300c93          	li	s9,3
    80003064:	dddff06f          	j	80002e40 <__printf+0x3f8>
    80003068:	00400793          	li	a5,4
    8000306c:	00300c93          	li	s9,3
    80003070:	c39ff06f          	j	80002ca8 <__printf+0x260>
    80003074:	00500793          	li	a5,5
    80003078:	00400c93          	li	s9,4
    8000307c:	c2dff06f          	j	80002ca8 <__printf+0x260>
    80003080:	00500793          	li	a5,5
    80003084:	00400c93          	li	s9,4
    80003088:	db9ff06f          	j	80002e40 <__printf+0x3f8>
    8000308c:	00600793          	li	a5,6
    80003090:	00500c93          	li	s9,5
    80003094:	dadff06f          	j	80002e40 <__printf+0x3f8>
    80003098:	00600793          	li	a5,6
    8000309c:	00500c93          	li	s9,5
    800030a0:	c09ff06f          	j	80002ca8 <__printf+0x260>
    800030a4:	00800793          	li	a5,8
    800030a8:	00700c93          	li	s9,7
    800030ac:	bfdff06f          	j	80002ca8 <__printf+0x260>
    800030b0:	00100793          	li	a5,1
    800030b4:	d91ff06f          	j	80002e44 <__printf+0x3fc>
    800030b8:	00100793          	li	a5,1
    800030bc:	bf1ff06f          	j	80002cac <__printf+0x264>
    800030c0:	00900793          	li	a5,9
    800030c4:	00800c93          	li	s9,8
    800030c8:	be1ff06f          	j	80002ca8 <__printf+0x260>
    800030cc:	00002517          	auipc	a0,0x2
    800030d0:	15c50513          	addi	a0,a0,348 # 80005228 <_ZZ12printIntegermE6digits+0x150>
    800030d4:	00000097          	auipc	ra,0x0
    800030d8:	918080e7          	jalr	-1768(ra) # 800029ec <panic>

00000000800030dc <printfinit>:
    800030dc:	fe010113          	addi	sp,sp,-32
    800030e0:	00813823          	sd	s0,16(sp)
    800030e4:	00913423          	sd	s1,8(sp)
    800030e8:	00113c23          	sd	ra,24(sp)
    800030ec:	02010413          	addi	s0,sp,32
    800030f0:	00004497          	auipc	s1,0x4
    800030f4:	9c048493          	addi	s1,s1,-1600 # 80006ab0 <pr>
    800030f8:	00048513          	mv	a0,s1
    800030fc:	00002597          	auipc	a1,0x2
    80003100:	13c58593          	addi	a1,a1,316 # 80005238 <_ZZ12printIntegermE6digits+0x160>
    80003104:	00000097          	auipc	ra,0x0
    80003108:	5f4080e7          	jalr	1524(ra) # 800036f8 <initlock>
    8000310c:	01813083          	ld	ra,24(sp)
    80003110:	01013403          	ld	s0,16(sp)
    80003114:	0004ac23          	sw	zero,24(s1)
    80003118:	00813483          	ld	s1,8(sp)
    8000311c:	02010113          	addi	sp,sp,32
    80003120:	00008067          	ret

0000000080003124 <uartinit>:
    80003124:	ff010113          	addi	sp,sp,-16
    80003128:	00813423          	sd	s0,8(sp)
    8000312c:	01010413          	addi	s0,sp,16
    80003130:	100007b7          	lui	a5,0x10000
    80003134:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003138:	f8000713          	li	a4,-128
    8000313c:	00e781a3          	sb	a4,3(a5)
    80003140:	00300713          	li	a4,3
    80003144:	00e78023          	sb	a4,0(a5)
    80003148:	000780a3          	sb	zero,1(a5)
    8000314c:	00e781a3          	sb	a4,3(a5)
    80003150:	00700693          	li	a3,7
    80003154:	00d78123          	sb	a3,2(a5)
    80003158:	00e780a3          	sb	a4,1(a5)
    8000315c:	00813403          	ld	s0,8(sp)
    80003160:	01010113          	addi	sp,sp,16
    80003164:	00008067          	ret

0000000080003168 <uartputc>:
    80003168:	00002797          	auipc	a5,0x2
    8000316c:	6e07a783          	lw	a5,1760(a5) # 80005848 <panicked>
    80003170:	00078463          	beqz	a5,80003178 <uartputc+0x10>
    80003174:	0000006f          	j	80003174 <uartputc+0xc>
    80003178:	fd010113          	addi	sp,sp,-48
    8000317c:	02813023          	sd	s0,32(sp)
    80003180:	00913c23          	sd	s1,24(sp)
    80003184:	01213823          	sd	s2,16(sp)
    80003188:	01313423          	sd	s3,8(sp)
    8000318c:	02113423          	sd	ra,40(sp)
    80003190:	03010413          	addi	s0,sp,48
    80003194:	00002917          	auipc	s2,0x2
    80003198:	6bc90913          	addi	s2,s2,1724 # 80005850 <uart_tx_r>
    8000319c:	00093783          	ld	a5,0(s2)
    800031a0:	00002497          	auipc	s1,0x2
    800031a4:	6b848493          	addi	s1,s1,1720 # 80005858 <uart_tx_w>
    800031a8:	0004b703          	ld	a4,0(s1)
    800031ac:	02078693          	addi	a3,a5,32
    800031b0:	00050993          	mv	s3,a0
    800031b4:	02e69c63          	bne	a3,a4,800031ec <uartputc+0x84>
    800031b8:	00001097          	auipc	ra,0x1
    800031bc:	834080e7          	jalr	-1996(ra) # 800039ec <push_on>
    800031c0:	00093783          	ld	a5,0(s2)
    800031c4:	0004b703          	ld	a4,0(s1)
    800031c8:	02078793          	addi	a5,a5,32
    800031cc:	00e79463          	bne	a5,a4,800031d4 <uartputc+0x6c>
    800031d0:	0000006f          	j	800031d0 <uartputc+0x68>
    800031d4:	00001097          	auipc	ra,0x1
    800031d8:	88c080e7          	jalr	-1908(ra) # 80003a60 <pop_on>
    800031dc:	00093783          	ld	a5,0(s2)
    800031e0:	0004b703          	ld	a4,0(s1)
    800031e4:	02078693          	addi	a3,a5,32
    800031e8:	fce688e3          	beq	a3,a4,800031b8 <uartputc+0x50>
    800031ec:	01f77693          	andi	a3,a4,31
    800031f0:	00004597          	auipc	a1,0x4
    800031f4:	8e058593          	addi	a1,a1,-1824 # 80006ad0 <uart_tx_buf>
    800031f8:	00d586b3          	add	a3,a1,a3
    800031fc:	00170713          	addi	a4,a4,1
    80003200:	01368023          	sb	s3,0(a3)
    80003204:	00e4b023          	sd	a4,0(s1)
    80003208:	10000637          	lui	a2,0x10000
    8000320c:	02f71063          	bne	a4,a5,8000322c <uartputc+0xc4>
    80003210:	0340006f          	j	80003244 <uartputc+0xdc>
    80003214:	00074703          	lbu	a4,0(a4)
    80003218:	00f93023          	sd	a5,0(s2)
    8000321c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003220:	00093783          	ld	a5,0(s2)
    80003224:	0004b703          	ld	a4,0(s1)
    80003228:	00f70e63          	beq	a4,a5,80003244 <uartputc+0xdc>
    8000322c:	00564683          	lbu	a3,5(a2)
    80003230:	01f7f713          	andi	a4,a5,31
    80003234:	00e58733          	add	a4,a1,a4
    80003238:	0206f693          	andi	a3,a3,32
    8000323c:	00178793          	addi	a5,a5,1
    80003240:	fc069ae3          	bnez	a3,80003214 <uartputc+0xac>
    80003244:	02813083          	ld	ra,40(sp)
    80003248:	02013403          	ld	s0,32(sp)
    8000324c:	01813483          	ld	s1,24(sp)
    80003250:	01013903          	ld	s2,16(sp)
    80003254:	00813983          	ld	s3,8(sp)
    80003258:	03010113          	addi	sp,sp,48
    8000325c:	00008067          	ret

0000000080003260 <uartputc_sync>:
    80003260:	ff010113          	addi	sp,sp,-16
    80003264:	00813423          	sd	s0,8(sp)
    80003268:	01010413          	addi	s0,sp,16
    8000326c:	00002717          	auipc	a4,0x2
    80003270:	5dc72703          	lw	a4,1500(a4) # 80005848 <panicked>
    80003274:	02071663          	bnez	a4,800032a0 <uartputc_sync+0x40>
    80003278:	00050793          	mv	a5,a0
    8000327c:	100006b7          	lui	a3,0x10000
    80003280:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003284:	02077713          	andi	a4,a4,32
    80003288:	fe070ce3          	beqz	a4,80003280 <uartputc_sync+0x20>
    8000328c:	0ff7f793          	andi	a5,a5,255
    80003290:	00f68023          	sb	a5,0(a3)
    80003294:	00813403          	ld	s0,8(sp)
    80003298:	01010113          	addi	sp,sp,16
    8000329c:	00008067          	ret
    800032a0:	0000006f          	j	800032a0 <uartputc_sync+0x40>

00000000800032a4 <uartstart>:
    800032a4:	ff010113          	addi	sp,sp,-16
    800032a8:	00813423          	sd	s0,8(sp)
    800032ac:	01010413          	addi	s0,sp,16
    800032b0:	00002617          	auipc	a2,0x2
    800032b4:	5a060613          	addi	a2,a2,1440 # 80005850 <uart_tx_r>
    800032b8:	00002517          	auipc	a0,0x2
    800032bc:	5a050513          	addi	a0,a0,1440 # 80005858 <uart_tx_w>
    800032c0:	00063783          	ld	a5,0(a2)
    800032c4:	00053703          	ld	a4,0(a0)
    800032c8:	04f70263          	beq	a4,a5,8000330c <uartstart+0x68>
    800032cc:	100005b7          	lui	a1,0x10000
    800032d0:	00004817          	auipc	a6,0x4
    800032d4:	80080813          	addi	a6,a6,-2048 # 80006ad0 <uart_tx_buf>
    800032d8:	01c0006f          	j	800032f4 <uartstart+0x50>
    800032dc:	0006c703          	lbu	a4,0(a3)
    800032e0:	00f63023          	sd	a5,0(a2)
    800032e4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800032e8:	00063783          	ld	a5,0(a2)
    800032ec:	00053703          	ld	a4,0(a0)
    800032f0:	00f70e63          	beq	a4,a5,8000330c <uartstart+0x68>
    800032f4:	01f7f713          	andi	a4,a5,31
    800032f8:	00e806b3          	add	a3,a6,a4
    800032fc:	0055c703          	lbu	a4,5(a1)
    80003300:	00178793          	addi	a5,a5,1
    80003304:	02077713          	andi	a4,a4,32
    80003308:	fc071ae3          	bnez	a4,800032dc <uartstart+0x38>
    8000330c:	00813403          	ld	s0,8(sp)
    80003310:	01010113          	addi	sp,sp,16
    80003314:	00008067          	ret

0000000080003318 <uartgetc>:
    80003318:	ff010113          	addi	sp,sp,-16
    8000331c:	00813423          	sd	s0,8(sp)
    80003320:	01010413          	addi	s0,sp,16
    80003324:	10000737          	lui	a4,0x10000
    80003328:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000332c:	0017f793          	andi	a5,a5,1
    80003330:	00078c63          	beqz	a5,80003348 <uartgetc+0x30>
    80003334:	00074503          	lbu	a0,0(a4)
    80003338:	0ff57513          	andi	a0,a0,255
    8000333c:	00813403          	ld	s0,8(sp)
    80003340:	01010113          	addi	sp,sp,16
    80003344:	00008067          	ret
    80003348:	fff00513          	li	a0,-1
    8000334c:	ff1ff06f          	j	8000333c <uartgetc+0x24>

0000000080003350 <uartintr>:
    80003350:	100007b7          	lui	a5,0x10000
    80003354:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003358:	0017f793          	andi	a5,a5,1
    8000335c:	0a078463          	beqz	a5,80003404 <uartintr+0xb4>
    80003360:	fe010113          	addi	sp,sp,-32
    80003364:	00813823          	sd	s0,16(sp)
    80003368:	00913423          	sd	s1,8(sp)
    8000336c:	00113c23          	sd	ra,24(sp)
    80003370:	02010413          	addi	s0,sp,32
    80003374:	100004b7          	lui	s1,0x10000
    80003378:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000337c:	0ff57513          	andi	a0,a0,255
    80003380:	fffff097          	auipc	ra,0xfffff
    80003384:	534080e7          	jalr	1332(ra) # 800028b4 <consoleintr>
    80003388:	0054c783          	lbu	a5,5(s1)
    8000338c:	0017f793          	andi	a5,a5,1
    80003390:	fe0794e3          	bnez	a5,80003378 <uartintr+0x28>
    80003394:	00002617          	auipc	a2,0x2
    80003398:	4bc60613          	addi	a2,a2,1212 # 80005850 <uart_tx_r>
    8000339c:	00002517          	auipc	a0,0x2
    800033a0:	4bc50513          	addi	a0,a0,1212 # 80005858 <uart_tx_w>
    800033a4:	00063783          	ld	a5,0(a2)
    800033a8:	00053703          	ld	a4,0(a0)
    800033ac:	04f70263          	beq	a4,a5,800033f0 <uartintr+0xa0>
    800033b0:	100005b7          	lui	a1,0x10000
    800033b4:	00003817          	auipc	a6,0x3
    800033b8:	71c80813          	addi	a6,a6,1820 # 80006ad0 <uart_tx_buf>
    800033bc:	01c0006f          	j	800033d8 <uartintr+0x88>
    800033c0:	0006c703          	lbu	a4,0(a3)
    800033c4:	00f63023          	sd	a5,0(a2)
    800033c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800033cc:	00063783          	ld	a5,0(a2)
    800033d0:	00053703          	ld	a4,0(a0)
    800033d4:	00f70e63          	beq	a4,a5,800033f0 <uartintr+0xa0>
    800033d8:	01f7f713          	andi	a4,a5,31
    800033dc:	00e806b3          	add	a3,a6,a4
    800033e0:	0055c703          	lbu	a4,5(a1)
    800033e4:	00178793          	addi	a5,a5,1
    800033e8:	02077713          	andi	a4,a4,32
    800033ec:	fc071ae3          	bnez	a4,800033c0 <uartintr+0x70>
    800033f0:	01813083          	ld	ra,24(sp)
    800033f4:	01013403          	ld	s0,16(sp)
    800033f8:	00813483          	ld	s1,8(sp)
    800033fc:	02010113          	addi	sp,sp,32
    80003400:	00008067          	ret
    80003404:	00002617          	auipc	a2,0x2
    80003408:	44c60613          	addi	a2,a2,1100 # 80005850 <uart_tx_r>
    8000340c:	00002517          	auipc	a0,0x2
    80003410:	44c50513          	addi	a0,a0,1100 # 80005858 <uart_tx_w>
    80003414:	00063783          	ld	a5,0(a2)
    80003418:	00053703          	ld	a4,0(a0)
    8000341c:	04f70263          	beq	a4,a5,80003460 <uartintr+0x110>
    80003420:	100005b7          	lui	a1,0x10000
    80003424:	00003817          	auipc	a6,0x3
    80003428:	6ac80813          	addi	a6,a6,1708 # 80006ad0 <uart_tx_buf>
    8000342c:	01c0006f          	j	80003448 <uartintr+0xf8>
    80003430:	0006c703          	lbu	a4,0(a3)
    80003434:	00f63023          	sd	a5,0(a2)
    80003438:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000343c:	00063783          	ld	a5,0(a2)
    80003440:	00053703          	ld	a4,0(a0)
    80003444:	02f70063          	beq	a4,a5,80003464 <uartintr+0x114>
    80003448:	01f7f713          	andi	a4,a5,31
    8000344c:	00e806b3          	add	a3,a6,a4
    80003450:	0055c703          	lbu	a4,5(a1)
    80003454:	00178793          	addi	a5,a5,1
    80003458:	02077713          	andi	a4,a4,32
    8000345c:	fc071ae3          	bnez	a4,80003430 <uartintr+0xe0>
    80003460:	00008067          	ret
    80003464:	00008067          	ret

0000000080003468 <kinit>:
    80003468:	fc010113          	addi	sp,sp,-64
    8000346c:	02913423          	sd	s1,40(sp)
    80003470:	fffff7b7          	lui	a5,0xfffff
    80003474:	00004497          	auipc	s1,0x4
    80003478:	68b48493          	addi	s1,s1,1675 # 80007aff <end+0xfff>
    8000347c:	02813823          	sd	s0,48(sp)
    80003480:	01313c23          	sd	s3,24(sp)
    80003484:	00f4f4b3          	and	s1,s1,a5
    80003488:	02113c23          	sd	ra,56(sp)
    8000348c:	03213023          	sd	s2,32(sp)
    80003490:	01413823          	sd	s4,16(sp)
    80003494:	01513423          	sd	s5,8(sp)
    80003498:	04010413          	addi	s0,sp,64
    8000349c:	000017b7          	lui	a5,0x1
    800034a0:	01100993          	li	s3,17
    800034a4:	00f487b3          	add	a5,s1,a5
    800034a8:	01b99993          	slli	s3,s3,0x1b
    800034ac:	06f9e063          	bltu	s3,a5,8000350c <kinit+0xa4>
    800034b0:	00003a97          	auipc	s5,0x3
    800034b4:	650a8a93          	addi	s5,s5,1616 # 80006b00 <end>
    800034b8:	0754ec63          	bltu	s1,s5,80003530 <kinit+0xc8>
    800034bc:	0734fa63          	bgeu	s1,s3,80003530 <kinit+0xc8>
    800034c0:	00088a37          	lui	s4,0x88
    800034c4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800034c8:	00002917          	auipc	s2,0x2
    800034cc:	39890913          	addi	s2,s2,920 # 80005860 <kmem>
    800034d0:	00ca1a13          	slli	s4,s4,0xc
    800034d4:	0140006f          	j	800034e8 <kinit+0x80>
    800034d8:	000017b7          	lui	a5,0x1
    800034dc:	00f484b3          	add	s1,s1,a5
    800034e0:	0554e863          	bltu	s1,s5,80003530 <kinit+0xc8>
    800034e4:	0534f663          	bgeu	s1,s3,80003530 <kinit+0xc8>
    800034e8:	00001637          	lui	a2,0x1
    800034ec:	00100593          	li	a1,1
    800034f0:	00048513          	mv	a0,s1
    800034f4:	00000097          	auipc	ra,0x0
    800034f8:	5e4080e7          	jalr	1508(ra) # 80003ad8 <__memset>
    800034fc:	00093783          	ld	a5,0(s2)
    80003500:	00f4b023          	sd	a5,0(s1)
    80003504:	00993023          	sd	s1,0(s2)
    80003508:	fd4498e3          	bne	s1,s4,800034d8 <kinit+0x70>
    8000350c:	03813083          	ld	ra,56(sp)
    80003510:	03013403          	ld	s0,48(sp)
    80003514:	02813483          	ld	s1,40(sp)
    80003518:	02013903          	ld	s2,32(sp)
    8000351c:	01813983          	ld	s3,24(sp)
    80003520:	01013a03          	ld	s4,16(sp)
    80003524:	00813a83          	ld	s5,8(sp)
    80003528:	04010113          	addi	sp,sp,64
    8000352c:	00008067          	ret
    80003530:	00002517          	auipc	a0,0x2
    80003534:	d2850513          	addi	a0,a0,-728 # 80005258 <digits+0x18>
    80003538:	fffff097          	auipc	ra,0xfffff
    8000353c:	4b4080e7          	jalr	1204(ra) # 800029ec <panic>

0000000080003540 <freerange>:
    80003540:	fc010113          	addi	sp,sp,-64
    80003544:	000017b7          	lui	a5,0x1
    80003548:	02913423          	sd	s1,40(sp)
    8000354c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003550:	009504b3          	add	s1,a0,s1
    80003554:	fffff537          	lui	a0,0xfffff
    80003558:	02813823          	sd	s0,48(sp)
    8000355c:	02113c23          	sd	ra,56(sp)
    80003560:	03213023          	sd	s2,32(sp)
    80003564:	01313c23          	sd	s3,24(sp)
    80003568:	01413823          	sd	s4,16(sp)
    8000356c:	01513423          	sd	s5,8(sp)
    80003570:	01613023          	sd	s6,0(sp)
    80003574:	04010413          	addi	s0,sp,64
    80003578:	00a4f4b3          	and	s1,s1,a0
    8000357c:	00f487b3          	add	a5,s1,a5
    80003580:	06f5e463          	bltu	a1,a5,800035e8 <freerange+0xa8>
    80003584:	00003a97          	auipc	s5,0x3
    80003588:	57ca8a93          	addi	s5,s5,1404 # 80006b00 <end>
    8000358c:	0954e263          	bltu	s1,s5,80003610 <freerange+0xd0>
    80003590:	01100993          	li	s3,17
    80003594:	01b99993          	slli	s3,s3,0x1b
    80003598:	0734fc63          	bgeu	s1,s3,80003610 <freerange+0xd0>
    8000359c:	00058a13          	mv	s4,a1
    800035a0:	00002917          	auipc	s2,0x2
    800035a4:	2c090913          	addi	s2,s2,704 # 80005860 <kmem>
    800035a8:	00002b37          	lui	s6,0x2
    800035ac:	0140006f          	j	800035c0 <freerange+0x80>
    800035b0:	000017b7          	lui	a5,0x1
    800035b4:	00f484b3          	add	s1,s1,a5
    800035b8:	0554ec63          	bltu	s1,s5,80003610 <freerange+0xd0>
    800035bc:	0534fa63          	bgeu	s1,s3,80003610 <freerange+0xd0>
    800035c0:	00001637          	lui	a2,0x1
    800035c4:	00100593          	li	a1,1
    800035c8:	00048513          	mv	a0,s1
    800035cc:	00000097          	auipc	ra,0x0
    800035d0:	50c080e7          	jalr	1292(ra) # 80003ad8 <__memset>
    800035d4:	00093703          	ld	a4,0(s2)
    800035d8:	016487b3          	add	a5,s1,s6
    800035dc:	00e4b023          	sd	a4,0(s1)
    800035e0:	00993023          	sd	s1,0(s2)
    800035e4:	fcfa76e3          	bgeu	s4,a5,800035b0 <freerange+0x70>
    800035e8:	03813083          	ld	ra,56(sp)
    800035ec:	03013403          	ld	s0,48(sp)
    800035f0:	02813483          	ld	s1,40(sp)
    800035f4:	02013903          	ld	s2,32(sp)
    800035f8:	01813983          	ld	s3,24(sp)
    800035fc:	01013a03          	ld	s4,16(sp)
    80003600:	00813a83          	ld	s5,8(sp)
    80003604:	00013b03          	ld	s6,0(sp)
    80003608:	04010113          	addi	sp,sp,64
    8000360c:	00008067          	ret
    80003610:	00002517          	auipc	a0,0x2
    80003614:	c4850513          	addi	a0,a0,-952 # 80005258 <digits+0x18>
    80003618:	fffff097          	auipc	ra,0xfffff
    8000361c:	3d4080e7          	jalr	980(ra) # 800029ec <panic>

0000000080003620 <kfree>:
    80003620:	fe010113          	addi	sp,sp,-32
    80003624:	00813823          	sd	s0,16(sp)
    80003628:	00113c23          	sd	ra,24(sp)
    8000362c:	00913423          	sd	s1,8(sp)
    80003630:	02010413          	addi	s0,sp,32
    80003634:	03451793          	slli	a5,a0,0x34
    80003638:	04079c63          	bnez	a5,80003690 <kfree+0x70>
    8000363c:	00003797          	auipc	a5,0x3
    80003640:	4c478793          	addi	a5,a5,1220 # 80006b00 <end>
    80003644:	00050493          	mv	s1,a0
    80003648:	04f56463          	bltu	a0,a5,80003690 <kfree+0x70>
    8000364c:	01100793          	li	a5,17
    80003650:	01b79793          	slli	a5,a5,0x1b
    80003654:	02f57e63          	bgeu	a0,a5,80003690 <kfree+0x70>
    80003658:	00001637          	lui	a2,0x1
    8000365c:	00100593          	li	a1,1
    80003660:	00000097          	auipc	ra,0x0
    80003664:	478080e7          	jalr	1144(ra) # 80003ad8 <__memset>
    80003668:	00002797          	auipc	a5,0x2
    8000366c:	1f878793          	addi	a5,a5,504 # 80005860 <kmem>
    80003670:	0007b703          	ld	a4,0(a5)
    80003674:	01813083          	ld	ra,24(sp)
    80003678:	01013403          	ld	s0,16(sp)
    8000367c:	00e4b023          	sd	a4,0(s1)
    80003680:	0097b023          	sd	s1,0(a5)
    80003684:	00813483          	ld	s1,8(sp)
    80003688:	02010113          	addi	sp,sp,32
    8000368c:	00008067          	ret
    80003690:	00002517          	auipc	a0,0x2
    80003694:	bc850513          	addi	a0,a0,-1080 # 80005258 <digits+0x18>
    80003698:	fffff097          	auipc	ra,0xfffff
    8000369c:	354080e7          	jalr	852(ra) # 800029ec <panic>

00000000800036a0 <kalloc>:
    800036a0:	fe010113          	addi	sp,sp,-32
    800036a4:	00813823          	sd	s0,16(sp)
    800036a8:	00913423          	sd	s1,8(sp)
    800036ac:	00113c23          	sd	ra,24(sp)
    800036b0:	02010413          	addi	s0,sp,32
    800036b4:	00002797          	auipc	a5,0x2
    800036b8:	1ac78793          	addi	a5,a5,428 # 80005860 <kmem>
    800036bc:	0007b483          	ld	s1,0(a5)
    800036c0:	02048063          	beqz	s1,800036e0 <kalloc+0x40>
    800036c4:	0004b703          	ld	a4,0(s1)
    800036c8:	00001637          	lui	a2,0x1
    800036cc:	00500593          	li	a1,5
    800036d0:	00048513          	mv	a0,s1
    800036d4:	00e7b023          	sd	a4,0(a5)
    800036d8:	00000097          	auipc	ra,0x0
    800036dc:	400080e7          	jalr	1024(ra) # 80003ad8 <__memset>
    800036e0:	01813083          	ld	ra,24(sp)
    800036e4:	01013403          	ld	s0,16(sp)
    800036e8:	00048513          	mv	a0,s1
    800036ec:	00813483          	ld	s1,8(sp)
    800036f0:	02010113          	addi	sp,sp,32
    800036f4:	00008067          	ret

00000000800036f8 <initlock>:
    800036f8:	ff010113          	addi	sp,sp,-16
    800036fc:	00813423          	sd	s0,8(sp)
    80003700:	01010413          	addi	s0,sp,16
    80003704:	00813403          	ld	s0,8(sp)
    80003708:	00b53423          	sd	a1,8(a0)
    8000370c:	00052023          	sw	zero,0(a0)
    80003710:	00053823          	sd	zero,16(a0)
    80003714:	01010113          	addi	sp,sp,16
    80003718:	00008067          	ret

000000008000371c <acquire>:
    8000371c:	fe010113          	addi	sp,sp,-32
    80003720:	00813823          	sd	s0,16(sp)
    80003724:	00913423          	sd	s1,8(sp)
    80003728:	00113c23          	sd	ra,24(sp)
    8000372c:	01213023          	sd	s2,0(sp)
    80003730:	02010413          	addi	s0,sp,32
    80003734:	00050493          	mv	s1,a0
    80003738:	10002973          	csrr	s2,sstatus
    8000373c:	100027f3          	csrr	a5,sstatus
    80003740:	ffd7f793          	andi	a5,a5,-3
    80003744:	10079073          	csrw	sstatus,a5
    80003748:	fffff097          	auipc	ra,0xfffff
    8000374c:	8e4080e7          	jalr	-1820(ra) # 8000202c <mycpu>
    80003750:	07852783          	lw	a5,120(a0)
    80003754:	06078e63          	beqz	a5,800037d0 <acquire+0xb4>
    80003758:	fffff097          	auipc	ra,0xfffff
    8000375c:	8d4080e7          	jalr	-1836(ra) # 8000202c <mycpu>
    80003760:	07852783          	lw	a5,120(a0)
    80003764:	0004a703          	lw	a4,0(s1)
    80003768:	0017879b          	addiw	a5,a5,1
    8000376c:	06f52c23          	sw	a5,120(a0)
    80003770:	04071063          	bnez	a4,800037b0 <acquire+0x94>
    80003774:	00100713          	li	a4,1
    80003778:	00070793          	mv	a5,a4
    8000377c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003780:	0007879b          	sext.w	a5,a5
    80003784:	fe079ae3          	bnez	a5,80003778 <acquire+0x5c>
    80003788:	0ff0000f          	fence
    8000378c:	fffff097          	auipc	ra,0xfffff
    80003790:	8a0080e7          	jalr	-1888(ra) # 8000202c <mycpu>
    80003794:	01813083          	ld	ra,24(sp)
    80003798:	01013403          	ld	s0,16(sp)
    8000379c:	00a4b823          	sd	a0,16(s1)
    800037a0:	00013903          	ld	s2,0(sp)
    800037a4:	00813483          	ld	s1,8(sp)
    800037a8:	02010113          	addi	sp,sp,32
    800037ac:	00008067          	ret
    800037b0:	0104b903          	ld	s2,16(s1)
    800037b4:	fffff097          	auipc	ra,0xfffff
    800037b8:	878080e7          	jalr	-1928(ra) # 8000202c <mycpu>
    800037bc:	faa91ce3          	bne	s2,a0,80003774 <acquire+0x58>
    800037c0:	00002517          	auipc	a0,0x2
    800037c4:	aa050513          	addi	a0,a0,-1376 # 80005260 <digits+0x20>
    800037c8:	fffff097          	auipc	ra,0xfffff
    800037cc:	224080e7          	jalr	548(ra) # 800029ec <panic>
    800037d0:	00195913          	srli	s2,s2,0x1
    800037d4:	fffff097          	auipc	ra,0xfffff
    800037d8:	858080e7          	jalr	-1960(ra) # 8000202c <mycpu>
    800037dc:	00197913          	andi	s2,s2,1
    800037e0:	07252e23          	sw	s2,124(a0)
    800037e4:	f75ff06f          	j	80003758 <acquire+0x3c>

00000000800037e8 <release>:
    800037e8:	fe010113          	addi	sp,sp,-32
    800037ec:	00813823          	sd	s0,16(sp)
    800037f0:	00113c23          	sd	ra,24(sp)
    800037f4:	00913423          	sd	s1,8(sp)
    800037f8:	01213023          	sd	s2,0(sp)
    800037fc:	02010413          	addi	s0,sp,32
    80003800:	00052783          	lw	a5,0(a0)
    80003804:	00079a63          	bnez	a5,80003818 <release+0x30>
    80003808:	00002517          	auipc	a0,0x2
    8000380c:	a6050513          	addi	a0,a0,-1440 # 80005268 <digits+0x28>
    80003810:	fffff097          	auipc	ra,0xfffff
    80003814:	1dc080e7          	jalr	476(ra) # 800029ec <panic>
    80003818:	01053903          	ld	s2,16(a0)
    8000381c:	00050493          	mv	s1,a0
    80003820:	fffff097          	auipc	ra,0xfffff
    80003824:	80c080e7          	jalr	-2036(ra) # 8000202c <mycpu>
    80003828:	fea910e3          	bne	s2,a0,80003808 <release+0x20>
    8000382c:	0004b823          	sd	zero,16(s1)
    80003830:	0ff0000f          	fence
    80003834:	0f50000f          	fence	iorw,ow
    80003838:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000383c:	ffffe097          	auipc	ra,0xffffe
    80003840:	7f0080e7          	jalr	2032(ra) # 8000202c <mycpu>
    80003844:	100027f3          	csrr	a5,sstatus
    80003848:	0027f793          	andi	a5,a5,2
    8000384c:	04079a63          	bnez	a5,800038a0 <release+0xb8>
    80003850:	07852783          	lw	a5,120(a0)
    80003854:	02f05e63          	blez	a5,80003890 <release+0xa8>
    80003858:	fff7871b          	addiw	a4,a5,-1
    8000385c:	06e52c23          	sw	a4,120(a0)
    80003860:	00071c63          	bnez	a4,80003878 <release+0x90>
    80003864:	07c52783          	lw	a5,124(a0)
    80003868:	00078863          	beqz	a5,80003878 <release+0x90>
    8000386c:	100027f3          	csrr	a5,sstatus
    80003870:	0027e793          	ori	a5,a5,2
    80003874:	10079073          	csrw	sstatus,a5
    80003878:	01813083          	ld	ra,24(sp)
    8000387c:	01013403          	ld	s0,16(sp)
    80003880:	00813483          	ld	s1,8(sp)
    80003884:	00013903          	ld	s2,0(sp)
    80003888:	02010113          	addi	sp,sp,32
    8000388c:	00008067          	ret
    80003890:	00002517          	auipc	a0,0x2
    80003894:	9f850513          	addi	a0,a0,-1544 # 80005288 <digits+0x48>
    80003898:	fffff097          	auipc	ra,0xfffff
    8000389c:	154080e7          	jalr	340(ra) # 800029ec <panic>
    800038a0:	00002517          	auipc	a0,0x2
    800038a4:	9d050513          	addi	a0,a0,-1584 # 80005270 <digits+0x30>
    800038a8:	fffff097          	auipc	ra,0xfffff
    800038ac:	144080e7          	jalr	324(ra) # 800029ec <panic>

00000000800038b0 <holding>:
    800038b0:	00052783          	lw	a5,0(a0)
    800038b4:	00079663          	bnez	a5,800038c0 <holding+0x10>
    800038b8:	00000513          	li	a0,0
    800038bc:	00008067          	ret
    800038c0:	fe010113          	addi	sp,sp,-32
    800038c4:	00813823          	sd	s0,16(sp)
    800038c8:	00913423          	sd	s1,8(sp)
    800038cc:	00113c23          	sd	ra,24(sp)
    800038d0:	02010413          	addi	s0,sp,32
    800038d4:	01053483          	ld	s1,16(a0)
    800038d8:	ffffe097          	auipc	ra,0xffffe
    800038dc:	754080e7          	jalr	1876(ra) # 8000202c <mycpu>
    800038e0:	01813083          	ld	ra,24(sp)
    800038e4:	01013403          	ld	s0,16(sp)
    800038e8:	40a48533          	sub	a0,s1,a0
    800038ec:	00153513          	seqz	a0,a0
    800038f0:	00813483          	ld	s1,8(sp)
    800038f4:	02010113          	addi	sp,sp,32
    800038f8:	00008067          	ret

00000000800038fc <push_off>:
    800038fc:	fe010113          	addi	sp,sp,-32
    80003900:	00813823          	sd	s0,16(sp)
    80003904:	00113c23          	sd	ra,24(sp)
    80003908:	00913423          	sd	s1,8(sp)
    8000390c:	02010413          	addi	s0,sp,32
    80003910:	100024f3          	csrr	s1,sstatus
    80003914:	100027f3          	csrr	a5,sstatus
    80003918:	ffd7f793          	andi	a5,a5,-3
    8000391c:	10079073          	csrw	sstatus,a5
    80003920:	ffffe097          	auipc	ra,0xffffe
    80003924:	70c080e7          	jalr	1804(ra) # 8000202c <mycpu>
    80003928:	07852783          	lw	a5,120(a0)
    8000392c:	02078663          	beqz	a5,80003958 <push_off+0x5c>
    80003930:	ffffe097          	auipc	ra,0xffffe
    80003934:	6fc080e7          	jalr	1788(ra) # 8000202c <mycpu>
    80003938:	07852783          	lw	a5,120(a0)
    8000393c:	01813083          	ld	ra,24(sp)
    80003940:	01013403          	ld	s0,16(sp)
    80003944:	0017879b          	addiw	a5,a5,1
    80003948:	06f52c23          	sw	a5,120(a0)
    8000394c:	00813483          	ld	s1,8(sp)
    80003950:	02010113          	addi	sp,sp,32
    80003954:	00008067          	ret
    80003958:	0014d493          	srli	s1,s1,0x1
    8000395c:	ffffe097          	auipc	ra,0xffffe
    80003960:	6d0080e7          	jalr	1744(ra) # 8000202c <mycpu>
    80003964:	0014f493          	andi	s1,s1,1
    80003968:	06952e23          	sw	s1,124(a0)
    8000396c:	fc5ff06f          	j	80003930 <push_off+0x34>

0000000080003970 <pop_off>:
    80003970:	ff010113          	addi	sp,sp,-16
    80003974:	00813023          	sd	s0,0(sp)
    80003978:	00113423          	sd	ra,8(sp)
    8000397c:	01010413          	addi	s0,sp,16
    80003980:	ffffe097          	auipc	ra,0xffffe
    80003984:	6ac080e7          	jalr	1708(ra) # 8000202c <mycpu>
    80003988:	100027f3          	csrr	a5,sstatus
    8000398c:	0027f793          	andi	a5,a5,2
    80003990:	04079663          	bnez	a5,800039dc <pop_off+0x6c>
    80003994:	07852783          	lw	a5,120(a0)
    80003998:	02f05a63          	blez	a5,800039cc <pop_off+0x5c>
    8000399c:	fff7871b          	addiw	a4,a5,-1
    800039a0:	06e52c23          	sw	a4,120(a0)
    800039a4:	00071c63          	bnez	a4,800039bc <pop_off+0x4c>
    800039a8:	07c52783          	lw	a5,124(a0)
    800039ac:	00078863          	beqz	a5,800039bc <pop_off+0x4c>
    800039b0:	100027f3          	csrr	a5,sstatus
    800039b4:	0027e793          	ori	a5,a5,2
    800039b8:	10079073          	csrw	sstatus,a5
    800039bc:	00813083          	ld	ra,8(sp)
    800039c0:	00013403          	ld	s0,0(sp)
    800039c4:	01010113          	addi	sp,sp,16
    800039c8:	00008067          	ret
    800039cc:	00002517          	auipc	a0,0x2
    800039d0:	8bc50513          	addi	a0,a0,-1860 # 80005288 <digits+0x48>
    800039d4:	fffff097          	auipc	ra,0xfffff
    800039d8:	018080e7          	jalr	24(ra) # 800029ec <panic>
    800039dc:	00002517          	auipc	a0,0x2
    800039e0:	89450513          	addi	a0,a0,-1900 # 80005270 <digits+0x30>
    800039e4:	fffff097          	auipc	ra,0xfffff
    800039e8:	008080e7          	jalr	8(ra) # 800029ec <panic>

00000000800039ec <push_on>:
    800039ec:	fe010113          	addi	sp,sp,-32
    800039f0:	00813823          	sd	s0,16(sp)
    800039f4:	00113c23          	sd	ra,24(sp)
    800039f8:	00913423          	sd	s1,8(sp)
    800039fc:	02010413          	addi	s0,sp,32
    80003a00:	100024f3          	csrr	s1,sstatus
    80003a04:	100027f3          	csrr	a5,sstatus
    80003a08:	0027e793          	ori	a5,a5,2
    80003a0c:	10079073          	csrw	sstatus,a5
    80003a10:	ffffe097          	auipc	ra,0xffffe
    80003a14:	61c080e7          	jalr	1564(ra) # 8000202c <mycpu>
    80003a18:	07852783          	lw	a5,120(a0)
    80003a1c:	02078663          	beqz	a5,80003a48 <push_on+0x5c>
    80003a20:	ffffe097          	auipc	ra,0xffffe
    80003a24:	60c080e7          	jalr	1548(ra) # 8000202c <mycpu>
    80003a28:	07852783          	lw	a5,120(a0)
    80003a2c:	01813083          	ld	ra,24(sp)
    80003a30:	01013403          	ld	s0,16(sp)
    80003a34:	0017879b          	addiw	a5,a5,1
    80003a38:	06f52c23          	sw	a5,120(a0)
    80003a3c:	00813483          	ld	s1,8(sp)
    80003a40:	02010113          	addi	sp,sp,32
    80003a44:	00008067          	ret
    80003a48:	0014d493          	srli	s1,s1,0x1
    80003a4c:	ffffe097          	auipc	ra,0xffffe
    80003a50:	5e0080e7          	jalr	1504(ra) # 8000202c <mycpu>
    80003a54:	0014f493          	andi	s1,s1,1
    80003a58:	06952e23          	sw	s1,124(a0)
    80003a5c:	fc5ff06f          	j	80003a20 <push_on+0x34>

0000000080003a60 <pop_on>:
    80003a60:	ff010113          	addi	sp,sp,-16
    80003a64:	00813023          	sd	s0,0(sp)
    80003a68:	00113423          	sd	ra,8(sp)
    80003a6c:	01010413          	addi	s0,sp,16
    80003a70:	ffffe097          	auipc	ra,0xffffe
    80003a74:	5bc080e7          	jalr	1468(ra) # 8000202c <mycpu>
    80003a78:	100027f3          	csrr	a5,sstatus
    80003a7c:	0027f793          	andi	a5,a5,2
    80003a80:	04078463          	beqz	a5,80003ac8 <pop_on+0x68>
    80003a84:	07852783          	lw	a5,120(a0)
    80003a88:	02f05863          	blez	a5,80003ab8 <pop_on+0x58>
    80003a8c:	fff7879b          	addiw	a5,a5,-1
    80003a90:	06f52c23          	sw	a5,120(a0)
    80003a94:	07853783          	ld	a5,120(a0)
    80003a98:	00079863          	bnez	a5,80003aa8 <pop_on+0x48>
    80003a9c:	100027f3          	csrr	a5,sstatus
    80003aa0:	ffd7f793          	andi	a5,a5,-3
    80003aa4:	10079073          	csrw	sstatus,a5
    80003aa8:	00813083          	ld	ra,8(sp)
    80003aac:	00013403          	ld	s0,0(sp)
    80003ab0:	01010113          	addi	sp,sp,16
    80003ab4:	00008067          	ret
    80003ab8:	00001517          	auipc	a0,0x1
    80003abc:	7f850513          	addi	a0,a0,2040 # 800052b0 <digits+0x70>
    80003ac0:	fffff097          	auipc	ra,0xfffff
    80003ac4:	f2c080e7          	jalr	-212(ra) # 800029ec <panic>
    80003ac8:	00001517          	auipc	a0,0x1
    80003acc:	7c850513          	addi	a0,a0,1992 # 80005290 <digits+0x50>
    80003ad0:	fffff097          	auipc	ra,0xfffff
    80003ad4:	f1c080e7          	jalr	-228(ra) # 800029ec <panic>

0000000080003ad8 <__memset>:
    80003ad8:	ff010113          	addi	sp,sp,-16
    80003adc:	00813423          	sd	s0,8(sp)
    80003ae0:	01010413          	addi	s0,sp,16
    80003ae4:	1a060e63          	beqz	a2,80003ca0 <__memset+0x1c8>
    80003ae8:	40a007b3          	neg	a5,a0
    80003aec:	0077f793          	andi	a5,a5,7
    80003af0:	00778693          	addi	a3,a5,7
    80003af4:	00b00813          	li	a6,11
    80003af8:	0ff5f593          	andi	a1,a1,255
    80003afc:	fff6071b          	addiw	a4,a2,-1
    80003b00:	1b06e663          	bltu	a3,a6,80003cac <__memset+0x1d4>
    80003b04:	1cd76463          	bltu	a4,a3,80003ccc <__memset+0x1f4>
    80003b08:	1a078e63          	beqz	a5,80003cc4 <__memset+0x1ec>
    80003b0c:	00b50023          	sb	a1,0(a0)
    80003b10:	00100713          	li	a4,1
    80003b14:	1ae78463          	beq	a5,a4,80003cbc <__memset+0x1e4>
    80003b18:	00b500a3          	sb	a1,1(a0)
    80003b1c:	00200713          	li	a4,2
    80003b20:	1ae78a63          	beq	a5,a4,80003cd4 <__memset+0x1fc>
    80003b24:	00b50123          	sb	a1,2(a0)
    80003b28:	00300713          	li	a4,3
    80003b2c:	18e78463          	beq	a5,a4,80003cb4 <__memset+0x1dc>
    80003b30:	00b501a3          	sb	a1,3(a0)
    80003b34:	00400713          	li	a4,4
    80003b38:	1ae78263          	beq	a5,a4,80003cdc <__memset+0x204>
    80003b3c:	00b50223          	sb	a1,4(a0)
    80003b40:	00500713          	li	a4,5
    80003b44:	1ae78063          	beq	a5,a4,80003ce4 <__memset+0x20c>
    80003b48:	00b502a3          	sb	a1,5(a0)
    80003b4c:	00700713          	li	a4,7
    80003b50:	18e79e63          	bne	a5,a4,80003cec <__memset+0x214>
    80003b54:	00b50323          	sb	a1,6(a0)
    80003b58:	00700e93          	li	t4,7
    80003b5c:	00859713          	slli	a4,a1,0x8
    80003b60:	00e5e733          	or	a4,a1,a4
    80003b64:	01059e13          	slli	t3,a1,0x10
    80003b68:	01c76e33          	or	t3,a4,t3
    80003b6c:	01859313          	slli	t1,a1,0x18
    80003b70:	006e6333          	or	t1,t3,t1
    80003b74:	02059893          	slli	a7,a1,0x20
    80003b78:	40f60e3b          	subw	t3,a2,a5
    80003b7c:	011368b3          	or	a7,t1,a7
    80003b80:	02859813          	slli	a6,a1,0x28
    80003b84:	0108e833          	or	a6,a7,a6
    80003b88:	03059693          	slli	a3,a1,0x30
    80003b8c:	003e589b          	srliw	a7,t3,0x3
    80003b90:	00d866b3          	or	a3,a6,a3
    80003b94:	03859713          	slli	a4,a1,0x38
    80003b98:	00389813          	slli	a6,a7,0x3
    80003b9c:	00f507b3          	add	a5,a0,a5
    80003ba0:	00e6e733          	or	a4,a3,a4
    80003ba4:	000e089b          	sext.w	a7,t3
    80003ba8:	00f806b3          	add	a3,a6,a5
    80003bac:	00e7b023          	sd	a4,0(a5)
    80003bb0:	00878793          	addi	a5,a5,8
    80003bb4:	fed79ce3          	bne	a5,a3,80003bac <__memset+0xd4>
    80003bb8:	ff8e7793          	andi	a5,t3,-8
    80003bbc:	0007871b          	sext.w	a4,a5
    80003bc0:	01d787bb          	addw	a5,a5,t4
    80003bc4:	0ce88e63          	beq	a7,a4,80003ca0 <__memset+0x1c8>
    80003bc8:	00f50733          	add	a4,a0,a5
    80003bcc:	00b70023          	sb	a1,0(a4)
    80003bd0:	0017871b          	addiw	a4,a5,1
    80003bd4:	0cc77663          	bgeu	a4,a2,80003ca0 <__memset+0x1c8>
    80003bd8:	00e50733          	add	a4,a0,a4
    80003bdc:	00b70023          	sb	a1,0(a4)
    80003be0:	0027871b          	addiw	a4,a5,2
    80003be4:	0ac77e63          	bgeu	a4,a2,80003ca0 <__memset+0x1c8>
    80003be8:	00e50733          	add	a4,a0,a4
    80003bec:	00b70023          	sb	a1,0(a4)
    80003bf0:	0037871b          	addiw	a4,a5,3
    80003bf4:	0ac77663          	bgeu	a4,a2,80003ca0 <__memset+0x1c8>
    80003bf8:	00e50733          	add	a4,a0,a4
    80003bfc:	00b70023          	sb	a1,0(a4)
    80003c00:	0047871b          	addiw	a4,a5,4
    80003c04:	08c77e63          	bgeu	a4,a2,80003ca0 <__memset+0x1c8>
    80003c08:	00e50733          	add	a4,a0,a4
    80003c0c:	00b70023          	sb	a1,0(a4)
    80003c10:	0057871b          	addiw	a4,a5,5
    80003c14:	08c77663          	bgeu	a4,a2,80003ca0 <__memset+0x1c8>
    80003c18:	00e50733          	add	a4,a0,a4
    80003c1c:	00b70023          	sb	a1,0(a4)
    80003c20:	0067871b          	addiw	a4,a5,6
    80003c24:	06c77e63          	bgeu	a4,a2,80003ca0 <__memset+0x1c8>
    80003c28:	00e50733          	add	a4,a0,a4
    80003c2c:	00b70023          	sb	a1,0(a4)
    80003c30:	0077871b          	addiw	a4,a5,7
    80003c34:	06c77663          	bgeu	a4,a2,80003ca0 <__memset+0x1c8>
    80003c38:	00e50733          	add	a4,a0,a4
    80003c3c:	00b70023          	sb	a1,0(a4)
    80003c40:	0087871b          	addiw	a4,a5,8
    80003c44:	04c77e63          	bgeu	a4,a2,80003ca0 <__memset+0x1c8>
    80003c48:	00e50733          	add	a4,a0,a4
    80003c4c:	00b70023          	sb	a1,0(a4)
    80003c50:	0097871b          	addiw	a4,a5,9
    80003c54:	04c77663          	bgeu	a4,a2,80003ca0 <__memset+0x1c8>
    80003c58:	00e50733          	add	a4,a0,a4
    80003c5c:	00b70023          	sb	a1,0(a4)
    80003c60:	00a7871b          	addiw	a4,a5,10
    80003c64:	02c77e63          	bgeu	a4,a2,80003ca0 <__memset+0x1c8>
    80003c68:	00e50733          	add	a4,a0,a4
    80003c6c:	00b70023          	sb	a1,0(a4)
    80003c70:	00b7871b          	addiw	a4,a5,11
    80003c74:	02c77663          	bgeu	a4,a2,80003ca0 <__memset+0x1c8>
    80003c78:	00e50733          	add	a4,a0,a4
    80003c7c:	00b70023          	sb	a1,0(a4)
    80003c80:	00c7871b          	addiw	a4,a5,12
    80003c84:	00c77e63          	bgeu	a4,a2,80003ca0 <__memset+0x1c8>
    80003c88:	00e50733          	add	a4,a0,a4
    80003c8c:	00b70023          	sb	a1,0(a4)
    80003c90:	00d7879b          	addiw	a5,a5,13
    80003c94:	00c7f663          	bgeu	a5,a2,80003ca0 <__memset+0x1c8>
    80003c98:	00f507b3          	add	a5,a0,a5
    80003c9c:	00b78023          	sb	a1,0(a5)
    80003ca0:	00813403          	ld	s0,8(sp)
    80003ca4:	01010113          	addi	sp,sp,16
    80003ca8:	00008067          	ret
    80003cac:	00b00693          	li	a3,11
    80003cb0:	e55ff06f          	j	80003b04 <__memset+0x2c>
    80003cb4:	00300e93          	li	t4,3
    80003cb8:	ea5ff06f          	j	80003b5c <__memset+0x84>
    80003cbc:	00100e93          	li	t4,1
    80003cc0:	e9dff06f          	j	80003b5c <__memset+0x84>
    80003cc4:	00000e93          	li	t4,0
    80003cc8:	e95ff06f          	j	80003b5c <__memset+0x84>
    80003ccc:	00000793          	li	a5,0
    80003cd0:	ef9ff06f          	j	80003bc8 <__memset+0xf0>
    80003cd4:	00200e93          	li	t4,2
    80003cd8:	e85ff06f          	j	80003b5c <__memset+0x84>
    80003cdc:	00400e93          	li	t4,4
    80003ce0:	e7dff06f          	j	80003b5c <__memset+0x84>
    80003ce4:	00500e93          	li	t4,5
    80003ce8:	e75ff06f          	j	80003b5c <__memset+0x84>
    80003cec:	00600e93          	li	t4,6
    80003cf0:	e6dff06f          	j	80003b5c <__memset+0x84>

0000000080003cf4 <__memmove>:
    80003cf4:	ff010113          	addi	sp,sp,-16
    80003cf8:	00813423          	sd	s0,8(sp)
    80003cfc:	01010413          	addi	s0,sp,16
    80003d00:	0e060863          	beqz	a2,80003df0 <__memmove+0xfc>
    80003d04:	fff6069b          	addiw	a3,a2,-1
    80003d08:	0006881b          	sext.w	a6,a3
    80003d0c:	0ea5e863          	bltu	a1,a0,80003dfc <__memmove+0x108>
    80003d10:	00758713          	addi	a4,a1,7
    80003d14:	00a5e7b3          	or	a5,a1,a0
    80003d18:	40a70733          	sub	a4,a4,a0
    80003d1c:	0077f793          	andi	a5,a5,7
    80003d20:	00f73713          	sltiu	a4,a4,15
    80003d24:	00174713          	xori	a4,a4,1
    80003d28:	0017b793          	seqz	a5,a5
    80003d2c:	00e7f7b3          	and	a5,a5,a4
    80003d30:	10078863          	beqz	a5,80003e40 <__memmove+0x14c>
    80003d34:	00900793          	li	a5,9
    80003d38:	1107f463          	bgeu	a5,a6,80003e40 <__memmove+0x14c>
    80003d3c:	0036581b          	srliw	a6,a2,0x3
    80003d40:	fff8081b          	addiw	a6,a6,-1
    80003d44:	02081813          	slli	a6,a6,0x20
    80003d48:	01d85893          	srli	a7,a6,0x1d
    80003d4c:	00858813          	addi	a6,a1,8
    80003d50:	00058793          	mv	a5,a1
    80003d54:	00050713          	mv	a4,a0
    80003d58:	01088833          	add	a6,a7,a6
    80003d5c:	0007b883          	ld	a7,0(a5)
    80003d60:	00878793          	addi	a5,a5,8
    80003d64:	00870713          	addi	a4,a4,8
    80003d68:	ff173c23          	sd	a7,-8(a4)
    80003d6c:	ff0798e3          	bne	a5,a6,80003d5c <__memmove+0x68>
    80003d70:	ff867713          	andi	a4,a2,-8
    80003d74:	02071793          	slli	a5,a4,0x20
    80003d78:	0207d793          	srli	a5,a5,0x20
    80003d7c:	00f585b3          	add	a1,a1,a5
    80003d80:	40e686bb          	subw	a3,a3,a4
    80003d84:	00f507b3          	add	a5,a0,a5
    80003d88:	06e60463          	beq	a2,a4,80003df0 <__memmove+0xfc>
    80003d8c:	0005c703          	lbu	a4,0(a1)
    80003d90:	00e78023          	sb	a4,0(a5)
    80003d94:	04068e63          	beqz	a3,80003df0 <__memmove+0xfc>
    80003d98:	0015c603          	lbu	a2,1(a1)
    80003d9c:	00100713          	li	a4,1
    80003da0:	00c780a3          	sb	a2,1(a5)
    80003da4:	04e68663          	beq	a3,a4,80003df0 <__memmove+0xfc>
    80003da8:	0025c603          	lbu	a2,2(a1)
    80003dac:	00200713          	li	a4,2
    80003db0:	00c78123          	sb	a2,2(a5)
    80003db4:	02e68e63          	beq	a3,a4,80003df0 <__memmove+0xfc>
    80003db8:	0035c603          	lbu	a2,3(a1)
    80003dbc:	00300713          	li	a4,3
    80003dc0:	00c781a3          	sb	a2,3(a5)
    80003dc4:	02e68663          	beq	a3,a4,80003df0 <__memmove+0xfc>
    80003dc8:	0045c603          	lbu	a2,4(a1)
    80003dcc:	00400713          	li	a4,4
    80003dd0:	00c78223          	sb	a2,4(a5)
    80003dd4:	00e68e63          	beq	a3,a4,80003df0 <__memmove+0xfc>
    80003dd8:	0055c603          	lbu	a2,5(a1)
    80003ddc:	00500713          	li	a4,5
    80003de0:	00c782a3          	sb	a2,5(a5)
    80003de4:	00e68663          	beq	a3,a4,80003df0 <__memmove+0xfc>
    80003de8:	0065c703          	lbu	a4,6(a1)
    80003dec:	00e78323          	sb	a4,6(a5)
    80003df0:	00813403          	ld	s0,8(sp)
    80003df4:	01010113          	addi	sp,sp,16
    80003df8:	00008067          	ret
    80003dfc:	02061713          	slli	a4,a2,0x20
    80003e00:	02075713          	srli	a4,a4,0x20
    80003e04:	00e587b3          	add	a5,a1,a4
    80003e08:	f0f574e3          	bgeu	a0,a5,80003d10 <__memmove+0x1c>
    80003e0c:	02069613          	slli	a2,a3,0x20
    80003e10:	02065613          	srli	a2,a2,0x20
    80003e14:	fff64613          	not	a2,a2
    80003e18:	00e50733          	add	a4,a0,a4
    80003e1c:	00c78633          	add	a2,a5,a2
    80003e20:	fff7c683          	lbu	a3,-1(a5)
    80003e24:	fff78793          	addi	a5,a5,-1
    80003e28:	fff70713          	addi	a4,a4,-1
    80003e2c:	00d70023          	sb	a3,0(a4)
    80003e30:	fec798e3          	bne	a5,a2,80003e20 <__memmove+0x12c>
    80003e34:	00813403          	ld	s0,8(sp)
    80003e38:	01010113          	addi	sp,sp,16
    80003e3c:	00008067          	ret
    80003e40:	02069713          	slli	a4,a3,0x20
    80003e44:	02075713          	srli	a4,a4,0x20
    80003e48:	00170713          	addi	a4,a4,1
    80003e4c:	00e50733          	add	a4,a0,a4
    80003e50:	00050793          	mv	a5,a0
    80003e54:	0005c683          	lbu	a3,0(a1)
    80003e58:	00178793          	addi	a5,a5,1
    80003e5c:	00158593          	addi	a1,a1,1
    80003e60:	fed78fa3          	sb	a3,-1(a5)
    80003e64:	fee798e3          	bne	a5,a4,80003e54 <__memmove+0x160>
    80003e68:	f89ff06f          	j	80003df0 <__memmove+0xfc>

0000000080003e6c <__mem_free>:
    80003e6c:	ff010113          	addi	sp,sp,-16
    80003e70:	00813423          	sd	s0,8(sp)
    80003e74:	01010413          	addi	s0,sp,16
    80003e78:	00002597          	auipc	a1,0x2
    80003e7c:	9f058593          	addi	a1,a1,-1552 # 80005868 <freep>
    80003e80:	0005b783          	ld	a5,0(a1)
    80003e84:	ff050693          	addi	a3,a0,-16
    80003e88:	0007b703          	ld	a4,0(a5)
    80003e8c:	00d7fc63          	bgeu	a5,a3,80003ea4 <__mem_free+0x38>
    80003e90:	00e6ee63          	bltu	a3,a4,80003eac <__mem_free+0x40>
    80003e94:	00e7fc63          	bgeu	a5,a4,80003eac <__mem_free+0x40>
    80003e98:	00070793          	mv	a5,a4
    80003e9c:	0007b703          	ld	a4,0(a5)
    80003ea0:	fed7e8e3          	bltu	a5,a3,80003e90 <__mem_free+0x24>
    80003ea4:	fee7eae3          	bltu	a5,a4,80003e98 <__mem_free+0x2c>
    80003ea8:	fee6f8e3          	bgeu	a3,a4,80003e98 <__mem_free+0x2c>
    80003eac:	ff852803          	lw	a6,-8(a0)
    80003eb0:	02081613          	slli	a2,a6,0x20
    80003eb4:	01c65613          	srli	a2,a2,0x1c
    80003eb8:	00c68633          	add	a2,a3,a2
    80003ebc:	02c70a63          	beq	a4,a2,80003ef0 <__mem_free+0x84>
    80003ec0:	fee53823          	sd	a4,-16(a0)
    80003ec4:	0087a503          	lw	a0,8(a5)
    80003ec8:	02051613          	slli	a2,a0,0x20
    80003ecc:	01c65613          	srli	a2,a2,0x1c
    80003ed0:	00c78633          	add	a2,a5,a2
    80003ed4:	04c68263          	beq	a3,a2,80003f18 <__mem_free+0xac>
    80003ed8:	00813403          	ld	s0,8(sp)
    80003edc:	00d7b023          	sd	a3,0(a5)
    80003ee0:	00f5b023          	sd	a5,0(a1)
    80003ee4:	00000513          	li	a0,0
    80003ee8:	01010113          	addi	sp,sp,16
    80003eec:	00008067          	ret
    80003ef0:	00872603          	lw	a2,8(a4)
    80003ef4:	00073703          	ld	a4,0(a4)
    80003ef8:	0106083b          	addw	a6,a2,a6
    80003efc:	ff052c23          	sw	a6,-8(a0)
    80003f00:	fee53823          	sd	a4,-16(a0)
    80003f04:	0087a503          	lw	a0,8(a5)
    80003f08:	02051613          	slli	a2,a0,0x20
    80003f0c:	01c65613          	srli	a2,a2,0x1c
    80003f10:	00c78633          	add	a2,a5,a2
    80003f14:	fcc692e3          	bne	a3,a2,80003ed8 <__mem_free+0x6c>
    80003f18:	00813403          	ld	s0,8(sp)
    80003f1c:	0105053b          	addw	a0,a0,a6
    80003f20:	00a7a423          	sw	a0,8(a5)
    80003f24:	00e7b023          	sd	a4,0(a5)
    80003f28:	00f5b023          	sd	a5,0(a1)
    80003f2c:	00000513          	li	a0,0
    80003f30:	01010113          	addi	sp,sp,16
    80003f34:	00008067          	ret

0000000080003f38 <__mem_alloc>:
    80003f38:	fc010113          	addi	sp,sp,-64
    80003f3c:	02813823          	sd	s0,48(sp)
    80003f40:	02913423          	sd	s1,40(sp)
    80003f44:	03213023          	sd	s2,32(sp)
    80003f48:	01513423          	sd	s5,8(sp)
    80003f4c:	02113c23          	sd	ra,56(sp)
    80003f50:	01313c23          	sd	s3,24(sp)
    80003f54:	01413823          	sd	s4,16(sp)
    80003f58:	01613023          	sd	s6,0(sp)
    80003f5c:	04010413          	addi	s0,sp,64
    80003f60:	00002a97          	auipc	s5,0x2
    80003f64:	908a8a93          	addi	s5,s5,-1784 # 80005868 <freep>
    80003f68:	00f50913          	addi	s2,a0,15
    80003f6c:	000ab683          	ld	a3,0(s5)
    80003f70:	00495913          	srli	s2,s2,0x4
    80003f74:	0019049b          	addiw	s1,s2,1
    80003f78:	00048913          	mv	s2,s1
    80003f7c:	0c068c63          	beqz	a3,80004054 <__mem_alloc+0x11c>
    80003f80:	0006b503          	ld	a0,0(a3)
    80003f84:	00852703          	lw	a4,8(a0)
    80003f88:	10977063          	bgeu	a4,s1,80004088 <__mem_alloc+0x150>
    80003f8c:	000017b7          	lui	a5,0x1
    80003f90:	0009099b          	sext.w	s3,s2
    80003f94:	0af4e863          	bltu	s1,a5,80004044 <__mem_alloc+0x10c>
    80003f98:	02099a13          	slli	s4,s3,0x20
    80003f9c:	01ca5a13          	srli	s4,s4,0x1c
    80003fa0:	fff00b13          	li	s6,-1
    80003fa4:	0100006f          	j	80003fb4 <__mem_alloc+0x7c>
    80003fa8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80003fac:	00852703          	lw	a4,8(a0)
    80003fb0:	04977463          	bgeu	a4,s1,80003ff8 <__mem_alloc+0xc0>
    80003fb4:	00050793          	mv	a5,a0
    80003fb8:	fea698e3          	bne	a3,a0,80003fa8 <__mem_alloc+0x70>
    80003fbc:	000a0513          	mv	a0,s4
    80003fc0:	00000097          	auipc	ra,0x0
    80003fc4:	1f0080e7          	jalr	496(ra) # 800041b0 <kvmincrease>
    80003fc8:	00050793          	mv	a5,a0
    80003fcc:	01050513          	addi	a0,a0,16
    80003fd0:	07678e63          	beq	a5,s6,8000404c <__mem_alloc+0x114>
    80003fd4:	0137a423          	sw	s3,8(a5)
    80003fd8:	00000097          	auipc	ra,0x0
    80003fdc:	e94080e7          	jalr	-364(ra) # 80003e6c <__mem_free>
    80003fe0:	000ab783          	ld	a5,0(s5)
    80003fe4:	06078463          	beqz	a5,8000404c <__mem_alloc+0x114>
    80003fe8:	0007b503          	ld	a0,0(a5)
    80003fec:	00078693          	mv	a3,a5
    80003ff0:	00852703          	lw	a4,8(a0)
    80003ff4:	fc9760e3          	bltu	a4,s1,80003fb4 <__mem_alloc+0x7c>
    80003ff8:	08e48263          	beq	s1,a4,8000407c <__mem_alloc+0x144>
    80003ffc:	4127073b          	subw	a4,a4,s2
    80004000:	02071693          	slli	a3,a4,0x20
    80004004:	01c6d693          	srli	a3,a3,0x1c
    80004008:	00e52423          	sw	a4,8(a0)
    8000400c:	00d50533          	add	a0,a0,a3
    80004010:	01252423          	sw	s2,8(a0)
    80004014:	00fab023          	sd	a5,0(s5)
    80004018:	01050513          	addi	a0,a0,16
    8000401c:	03813083          	ld	ra,56(sp)
    80004020:	03013403          	ld	s0,48(sp)
    80004024:	02813483          	ld	s1,40(sp)
    80004028:	02013903          	ld	s2,32(sp)
    8000402c:	01813983          	ld	s3,24(sp)
    80004030:	01013a03          	ld	s4,16(sp)
    80004034:	00813a83          	ld	s5,8(sp)
    80004038:	00013b03          	ld	s6,0(sp)
    8000403c:	04010113          	addi	sp,sp,64
    80004040:	00008067          	ret
    80004044:	000019b7          	lui	s3,0x1
    80004048:	f51ff06f          	j	80003f98 <__mem_alloc+0x60>
    8000404c:	00000513          	li	a0,0
    80004050:	fcdff06f          	j	8000401c <__mem_alloc+0xe4>
    80004054:	00003797          	auipc	a5,0x3
    80004058:	a9c78793          	addi	a5,a5,-1380 # 80006af0 <base>
    8000405c:	00078513          	mv	a0,a5
    80004060:	00fab023          	sd	a5,0(s5)
    80004064:	00f7b023          	sd	a5,0(a5)
    80004068:	00000713          	li	a4,0
    8000406c:	00003797          	auipc	a5,0x3
    80004070:	a807a623          	sw	zero,-1396(a5) # 80006af8 <base+0x8>
    80004074:	00050693          	mv	a3,a0
    80004078:	f11ff06f          	j	80003f88 <__mem_alloc+0x50>
    8000407c:	00053703          	ld	a4,0(a0)
    80004080:	00e7b023          	sd	a4,0(a5)
    80004084:	f91ff06f          	j	80004014 <__mem_alloc+0xdc>
    80004088:	00068793          	mv	a5,a3
    8000408c:	f6dff06f          	j	80003ff8 <__mem_alloc+0xc0>

0000000080004090 <__putc>:
    80004090:	fe010113          	addi	sp,sp,-32
    80004094:	00813823          	sd	s0,16(sp)
    80004098:	00113c23          	sd	ra,24(sp)
    8000409c:	02010413          	addi	s0,sp,32
    800040a0:	00050793          	mv	a5,a0
    800040a4:	fef40593          	addi	a1,s0,-17
    800040a8:	00100613          	li	a2,1
    800040ac:	00000513          	li	a0,0
    800040b0:	fef407a3          	sb	a5,-17(s0)
    800040b4:	fffff097          	auipc	ra,0xfffff
    800040b8:	918080e7          	jalr	-1768(ra) # 800029cc <console_write>
    800040bc:	01813083          	ld	ra,24(sp)
    800040c0:	01013403          	ld	s0,16(sp)
    800040c4:	02010113          	addi	sp,sp,32
    800040c8:	00008067          	ret

00000000800040cc <__getc>:
    800040cc:	fe010113          	addi	sp,sp,-32
    800040d0:	00813823          	sd	s0,16(sp)
    800040d4:	00113c23          	sd	ra,24(sp)
    800040d8:	02010413          	addi	s0,sp,32
    800040dc:	fe840593          	addi	a1,s0,-24
    800040e0:	00100613          	li	a2,1
    800040e4:	00000513          	li	a0,0
    800040e8:	fffff097          	auipc	ra,0xfffff
    800040ec:	8c4080e7          	jalr	-1852(ra) # 800029ac <console_read>
    800040f0:	fe844503          	lbu	a0,-24(s0)
    800040f4:	01813083          	ld	ra,24(sp)
    800040f8:	01013403          	ld	s0,16(sp)
    800040fc:	02010113          	addi	sp,sp,32
    80004100:	00008067          	ret

0000000080004104 <console_handler>:
    80004104:	fe010113          	addi	sp,sp,-32
    80004108:	00813823          	sd	s0,16(sp)
    8000410c:	00113c23          	sd	ra,24(sp)
    80004110:	00913423          	sd	s1,8(sp)
    80004114:	02010413          	addi	s0,sp,32
    80004118:	14202773          	csrr	a4,scause
    8000411c:	100027f3          	csrr	a5,sstatus
    80004120:	0027f793          	andi	a5,a5,2
    80004124:	06079e63          	bnez	a5,800041a0 <console_handler+0x9c>
    80004128:	00074c63          	bltz	a4,80004140 <console_handler+0x3c>
    8000412c:	01813083          	ld	ra,24(sp)
    80004130:	01013403          	ld	s0,16(sp)
    80004134:	00813483          	ld	s1,8(sp)
    80004138:	02010113          	addi	sp,sp,32
    8000413c:	00008067          	ret
    80004140:	0ff77713          	andi	a4,a4,255
    80004144:	00900793          	li	a5,9
    80004148:	fef712e3          	bne	a4,a5,8000412c <console_handler+0x28>
    8000414c:	ffffe097          	auipc	ra,0xffffe
    80004150:	4b8080e7          	jalr	1208(ra) # 80002604 <plic_claim>
    80004154:	00a00793          	li	a5,10
    80004158:	00050493          	mv	s1,a0
    8000415c:	02f50c63          	beq	a0,a5,80004194 <console_handler+0x90>
    80004160:	fc0506e3          	beqz	a0,8000412c <console_handler+0x28>
    80004164:	00050593          	mv	a1,a0
    80004168:	00001517          	auipc	a0,0x1
    8000416c:	05050513          	addi	a0,a0,80 # 800051b8 <_ZZ12printIntegermE6digits+0xe0>
    80004170:	fffff097          	auipc	ra,0xfffff
    80004174:	8d8080e7          	jalr	-1832(ra) # 80002a48 <__printf>
    80004178:	01013403          	ld	s0,16(sp)
    8000417c:	01813083          	ld	ra,24(sp)
    80004180:	00048513          	mv	a0,s1
    80004184:	00813483          	ld	s1,8(sp)
    80004188:	02010113          	addi	sp,sp,32
    8000418c:	ffffe317          	auipc	t1,0xffffe
    80004190:	4b030067          	jr	1200(t1) # 8000263c <plic_complete>
    80004194:	fffff097          	auipc	ra,0xfffff
    80004198:	1bc080e7          	jalr	444(ra) # 80003350 <uartintr>
    8000419c:	fddff06f          	j	80004178 <console_handler+0x74>
    800041a0:	00001517          	auipc	a0,0x1
    800041a4:	11850513          	addi	a0,a0,280 # 800052b8 <digits+0x78>
    800041a8:	fffff097          	auipc	ra,0xfffff
    800041ac:	844080e7          	jalr	-1980(ra) # 800029ec <panic>

00000000800041b0 <kvmincrease>:
    800041b0:	fe010113          	addi	sp,sp,-32
    800041b4:	01213023          	sd	s2,0(sp)
    800041b8:	00001937          	lui	s2,0x1
    800041bc:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    800041c0:	00813823          	sd	s0,16(sp)
    800041c4:	00113c23          	sd	ra,24(sp)
    800041c8:	00913423          	sd	s1,8(sp)
    800041cc:	02010413          	addi	s0,sp,32
    800041d0:	01250933          	add	s2,a0,s2
    800041d4:	00c95913          	srli	s2,s2,0xc
    800041d8:	02090863          	beqz	s2,80004208 <kvmincrease+0x58>
    800041dc:	00000493          	li	s1,0
    800041e0:	00148493          	addi	s1,s1,1
    800041e4:	fffff097          	auipc	ra,0xfffff
    800041e8:	4bc080e7          	jalr	1212(ra) # 800036a0 <kalloc>
    800041ec:	fe991ae3          	bne	s2,s1,800041e0 <kvmincrease+0x30>
    800041f0:	01813083          	ld	ra,24(sp)
    800041f4:	01013403          	ld	s0,16(sp)
    800041f8:	00813483          	ld	s1,8(sp)
    800041fc:	00013903          	ld	s2,0(sp)
    80004200:	02010113          	addi	sp,sp,32
    80004204:	00008067          	ret
    80004208:	01813083          	ld	ra,24(sp)
    8000420c:	01013403          	ld	s0,16(sp)
    80004210:	00813483          	ld	s1,8(sp)
    80004214:	00013903          	ld	s2,0(sp)
    80004218:	00000513          	li	a0,0
    8000421c:	02010113          	addi	sp,sp,32
    80004220:	00008067          	ret
	...
