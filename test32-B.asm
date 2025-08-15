
test32-B.elf:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <_start>:
80000000:	80780537          	lui	a0,0x80780
80000004:	00150513          	addi	a0,a0,1 # 80780001 <error+0x77fcd0>
80000008:	000307b7          	lui	a5,0x30
8000000c:	00178793          	addi	a5,a5,1 # 30001 <_start-0x7ffcffff>
80000010:	80780637          	lui	a2,0x80780
80000014:	40f57733          	andn	a4,a0,a5
80000018:	2ec71463          	bne	a4,a2,80000300 <print_error>
8000001c:	80780537          	lui	a0,0x80780
80000020:	00150513          	addi	a0,a0,1 # 80780001 <error+0x77fcd0>
80000024:	000307b7          	lui	a5,0x30
80000028:	00178793          	addi	a5,a5,1 # 30001 <_start-0x7ffcffff>
8000002c:	807b0637          	lui	a2,0x807b0
80000030:	00160613          	addi	a2,a2,1 # 807b0001 <error+0x7afcd0>
80000034:	0af51733          	clmul	a4,a0,a5
80000038:	2cc71463          	bne	a4,a2,80000300 <print_error>
8000003c:	80780537          	lui	a0,0x80780
80000040:	00150513          	addi	a0,a0,1 # 80780001 <error+0x77fcd0>
80000044:	000307b7          	lui	a5,0x30
80000048:	00178793          	addi	a5,a5,1 # 30001 <_start-0x7ffcffff>
8000004c:	00018637          	lui	a2,0x18
80000050:	08860613          	addi	a2,a2,136 # 18088 <_start-0x7ffe7f78>
80000054:	0af53733          	clmulh	a4,a0,a5
80000058:	2ac71463          	bne	a4,a2,80000300 <print_error>
8000005c:	80780537          	lui	a0,0x80780
80000060:	00150513          	addi	a0,a0,1 # 80780001 <error+0x77fcd0>
80000064:	000307b7          	lui	a5,0x30
80000068:	00178793          	addi	a5,a5,1 # 30001 <_start-0x7ffcffff>
8000006c:	00030637          	lui	a2,0x30
80000070:	11160613          	addi	a2,a2,273 # 30111 <_start-0x7ffcfeef>
80000074:	0af52733          	clmulr	a4,a0,a5
80000078:	28c71463          	bne	a4,a2,80000300 <print_error>
8000007c:	000307b7          	lui	a5,0x30
80000080:	00178793          	addi	a5,a5,1 # 30001 <_start-0x7ffcffff>
80000084:	00e00613          	li	a2,14
80000088:	60079713          	clz	a4,a5
8000008c:	26c71a63          	bne	a4,a2,80000300 <print_error>
80000090:	000307b7          	lui	a5,0x30
80000094:	00178793          	addi	a5,a5,1 # 30001 <_start-0x7ffcffff>
80000098:	00300613          	li	a2,3
8000009c:	60279713          	cpop	a4,a5
800000a0:	26c71063          	bne	a4,a2,80000300 <print_error>
800000a4:	000307b7          	lui	a5,0x30
800000a8:	00178793          	addi	a5,a5,1 # 30001 <_start-0x7ffcffff>
800000ac:	00000613          	li	a2,0
800000b0:	60179713          	ctz	a4,a5
800000b4:	24c71663          	bne	a4,a2,80000300 <print_error>
800000b8:	80780537          	lui	a0,0x80780
800000bc:	00150513          	addi	a0,a0,1 # 80780001 <error+0x77fcd0>
800000c0:	000307b7          	lui	a5,0x30
800000c4:	00178793          	addi	a5,a5,1 # 30001 <_start-0x7ffcffff>
800000c8:	00030637          	lui	a2,0x30
800000cc:	00160613          	addi	a2,a2,1 # 30001 <_start-0x7ffcffff>
800000d0:	0af56733          	max	a4,a0,a5
800000d4:	22c71663          	bne	a4,a2,80000300 <print_error>
800000d8:	80780537          	lui	a0,0x80780
800000dc:	00150513          	addi	a0,a0,1 # 80780001 <error+0x77fcd0>
800000e0:	000307b7          	lui	a5,0x30
800000e4:	00178793          	addi	a5,a5,1 # 30001 <_start-0x7ffcffff>
800000e8:	80780637          	lui	a2,0x80780
800000ec:	00160613          	addi	a2,a2,1 # 80780001 <error+0x77fcd0>
800000f0:	0af57733          	maxu	a4,a0,a5
800000f4:	20c71663          	bne	a4,a2,80000300 <print_error>
800000f8:	80780537          	lui	a0,0x80780
800000fc:	00150513          	addi	a0,a0,1 # 80780001 <error+0x77fcd0>
80000100:	000307b7          	lui	a5,0x30
80000104:	00178793          	addi	a5,a5,1 # 30001 <_start-0x7ffcffff>
80000108:	80780637          	lui	a2,0x80780
8000010c:	00160613          	addi	a2,a2,1 # 80780001 <error+0x77fcd0>
80000110:	0af54733          	min	a4,a0,a5
80000114:	1ec71663          	bne	a4,a2,80000300 <print_error>
80000118:	80780537          	lui	a0,0x80780
8000011c:	00150513          	addi	a0,a0,1 # 80780001 <error+0x77fcd0>
80000120:	000307b7          	lui	a5,0x30
80000124:	00178793          	addi	a5,a5,1 # 30001 <_start-0x7ffcffff>
80000128:	00030637          	lui	a2,0x30
8000012c:	00160613          	addi	a2,a2,1 # 30001 <_start-0x7ffcffff>
80000130:	0af55733          	minu	a4,a0,a5
80000134:	1cc71663          	bne	a4,a2,80000300 <print_error>
80000138:	000307b7          	lui	a5,0x30
8000013c:	00178793          	addi	a5,a5,1 # 30001 <_start-0x7ffcffff>
80000140:	00ff0637          	lui	a2,0xff0
80000144:	0ff60613          	addi	a2,a2,255 # ff00ff <_start-0x7f00ff01>
80000148:	2877d713          	orc.b	a4,a5
8000014c:	1ac71a63          	bne	a4,a2,80000300 <print_error>
80000150:	80780537          	lui	a0,0x80780
80000154:	00150513          	addi	a0,a0,1 # 80780001 <error+0x77fcd0>
80000158:	000307b7          	lui	a5,0x30
8000015c:	00178793          	addi	a5,a5,1 # 30001 <_start-0x7ffcffff>
80000160:	fffd0637          	lui	a2,0xfffd0
80000164:	fff60613          	addi	a2,a2,-1 # fffcffff <error+0x7ffcfcce>
80000168:	40f56733          	orn	a4,a0,a5
8000016c:	18c71a63          	bne	a4,a2,80000300 <print_error>
80000170:	80780537          	lui	a0,0x80780
80000174:	00150513          	addi	a0,a0,1 # 80780001 <error+0x77fcd0>
80000178:	000307b7          	lui	a5,0x30
8000017c:	00178793          	addi	a5,a5,1 # 30001 <_start-0x7ffcffff>
80000180:	80780637          	lui	a2,0x80780
80000184:	00160613          	addi	a2,a2,1 # 80780001 <error+0x77fcd0>
80000188:	48f51733          	bclr	a4,a0,a5
8000018c:	16c71a63          	bne	a4,a2,80000300 <print_error>
80000190:	80780537          	lui	a0,0x80780
80000194:	00150513          	addi	a0,a0,1 # 80780001 <error+0x77fcd0>
80000198:	00780637          	lui	a2,0x780
8000019c:	00160613          	addi	a2,a2,1 # 780001 <_start-0x7f87ffff>
800001a0:	49f51713          	bclri	a4,a0,0x1f
800001a4:	14c71e63          	bne	a4,a2,80000300 <print_error>
800001a8:	80780537          	lui	a0,0x80780
800001ac:	00150513          	addi	a0,a0,1 # 80780001 <error+0x77fcd0>
800001b0:	000307b7          	lui	a5,0x30
800001b4:	00178793          	addi	a5,a5,1 # 30001 <_start-0x7ffcffff>
800001b8:	00000613          	li	a2,0
800001bc:	48f55733          	bext	a4,a0,a5
800001c0:	14c71063          	bne	a4,a2,80000300 <print_error>
800001c4:	80780537          	lui	a0,0x80780
800001c8:	00150513          	addi	a0,a0,1 # 80780001 <error+0x77fcd0>
800001cc:	00100613          	li	a2,1
800001d0:	49f55713          	bexti	a4,a0,0x1f
800001d4:	12c71663          	bne	a4,a2,80000300 <print_error>
800001d8:	80780537          	lui	a0,0x80780
800001dc:	00150513          	addi	a0,a0,1 # 80780001 <error+0x77fcd0>
800001e0:	000307b7          	lui	a5,0x30
800001e4:	00178793          	addi	a5,a5,1 # 30001 <_start-0x7ffcffff>
800001e8:	80780637          	lui	a2,0x80780
800001ec:	00360613          	addi	a2,a2,3 # 80780003 <error+0x77fcd2>
800001f0:	68f51733          	binv	a4,a0,a5
800001f4:	10c71663          	bne	a4,a2,80000300 <print_error>
800001f8:	80780537          	lui	a0,0x80780
800001fc:	00150513          	addi	a0,a0,1 # 80780001 <error+0x77fcd0>
80000200:	00780637          	lui	a2,0x780
80000204:	00160613          	addi	a2,a2,1 # 780001 <_start-0x7f87ffff>
80000208:	69f51713          	binvi	a4,a0,0x1f
8000020c:	0ec71a63          	bne	a4,a2,80000300 <print_error>
80000210:	80780537          	lui	a0,0x80780
80000214:	00150513          	addi	a0,a0,1 # 80780001 <error+0x77fcd0>
80000218:	000307b7          	lui	a5,0x30
8000021c:	00178793          	addi	a5,a5,1 # 30001 <_start-0x7ffcffff>
80000220:	80780637          	lui	a2,0x80780
80000224:	00360613          	addi	a2,a2,3 # 80780003 <error+0x77fcd2>
80000228:	28f51733          	bset	a4,a0,a5
8000022c:	0cc71a63          	bne	a4,a2,80000300 <print_error>
80000230:	80780537          	lui	a0,0x80780
80000234:	00150513          	addi	a0,a0,1 # 80780001 <error+0x77fcd0>
80000238:	80780637          	lui	a2,0x80780
8000023c:	00160613          	addi	a2,a2,1 # 80780001 <error+0x77fcd0>
80000240:	29f51713          	bseti	a4,a0,0x1f
80000244:	0ac71e63          	bne	a4,a2,80000300 <print_error>
80000248:	80780537          	lui	a0,0x80780
8000024c:	00150513          	addi	a0,a0,1 # 80780001 <error+0x77fcd0>
80000250:	00100613          	li	a2,1
80000254:	60451713          	sext.b	a4,a0
80000258:	0ac71463          	bne	a4,a2,80000300 <print_error>
8000025c:	80780537          	lui	a0,0x80780
80000260:	00150513          	addi	a0,a0,1 # 80780001 <error+0x77fcd0>
80000264:	00100613          	li	a2,1
80000268:	60551713          	sext.h	a4,a0
8000026c:	08c71a63          	bne	a4,a2,80000300 <print_error>
80000270:	80780537          	lui	a0,0x80780
80000274:	00150513          	addi	a0,a0,1 # 80780001 <error+0x77fcd0>
80000278:	000307b7          	lui	a5,0x30
8000027c:	00178793          	addi	a5,a5,1 # 30001 <_start-0x7ffcffff>
80000280:	00f30637          	lui	a2,0xf30
80000284:	00360613          	addi	a2,a2,3 # f30003 <_start-0x7f0cfffd>
80000288:	20f52733          	sh1add	a4,a0,a5
8000028c:	06c71a63          	bne	a4,a2,80000300 <print_error>
80000290:	80780537          	lui	a0,0x80780
80000294:	00150513          	addi	a0,a0,1 # 80780001 <error+0x77fcd0>
80000298:	000307b7          	lui	a5,0x30
8000029c:	00178793          	addi	a5,a5,1 # 30001 <_start-0x7ffcffff>
800002a0:	01e30637          	lui	a2,0x1e30
800002a4:	00560613          	addi	a2,a2,5 # 1e30005 <_start-0x7e1cfffb>
800002a8:	20f54733          	sh2add	a4,a0,a5
800002ac:	04c71a63          	bne	a4,a2,80000300 <print_error>
800002b0:	80780537          	lui	a0,0x80780
800002b4:	00150513          	addi	a0,a0,1 # 80780001 <error+0x77fcd0>
800002b8:	000307b7          	lui	a5,0x30
800002bc:	00178793          	addi	a5,a5,1 # 30001 <_start-0x7ffcffff>
800002c0:	03c30637          	lui	a2,0x3c30
800002c4:	00960613          	addi	a2,a2,9 # 3c30009 <_start-0x7c3cfff7>
800002c8:	20f56733          	sh3add	a4,a0,a5
800002cc:	02c71a63          	bne	a4,a2,80000300 <print_error>
800002d0:	80780537          	lui	a0,0x80780
800002d4:	00150513          	addi	a0,a0,1 # 80780001 <error+0x77fcd0>
800002d8:	00100613          	li	a2,1
800002dc:	08054733          	zext.h	a4,a0
800002e0:	02c71063          	bne	a4,a2,80000300 <print_error>
800002e4:	f14022f3          	csrr	t0,mhartid
800002e8:	02029c63          	bnez	t0,80000320 <forever>

800002ec <print_pass>:
800002ec:	100004b7          	lui	s1,0x10000
800002f0:	00000917          	auipc	s2,0x0
800002f4:	03890913          	addi	s2,s2,56 # 80000328 <pass>
800002f8:	00890993          	addi	s3,s2,8
800002fc:	014000ef          	jal	80000310 <loop>

80000300 <print_error>:
80000300:	100004b7          	lui	s1,0x10000
80000304:	00000917          	auipc	s2,0x0
80000308:	02d90913          	addi	s2,s2,45 # 80000331 <error>
8000030c:	00d90993          	addi	s3,s2,13

80000310 <loop>:
80000310:	00090a03          	lb	s4,0(s2)
80000314:	01448023          	sb	s4,0(s1) # 10000000 <_start-0x70000000>
80000318:	00190913          	addi	s2,s2,1
8000031c:	ff394ae3          	blt	s2,s3,80000310 <loop>

80000320 <forever>:
80000320:	10500073          	wfi
80000324:	ffdff06f          	j	80000320 <forever>
