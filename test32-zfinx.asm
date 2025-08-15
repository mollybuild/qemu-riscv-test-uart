
test32-zfinx.elf:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <_start>:
80000000:	7f120ab7          	lui	s5,0x7f120
80000004:	0a8d                	addi	s5,s5,3 # 7f120003 <_start-0xedfffd>
80000006:	ff780b37          	lui	s6,0xff780
8000000a:	0b05                	addi	s6,s6,1 # ff780001 <error+0x7f77fdda>
8000000c:	4b8d                	li	s7,3
8000000e:	7f120c37          	lui	s8,0x7f120
80000012:	0c0d                	addi	s8,s8,3 # 7f120003 <_start-0xedfffd>
80000014:	a97b7cc3          	fmadd.s	s9,s6,s7,s5
80000018:	1f8c9163          	bne	s9,s8,800001fa <print_error>
8000001c:	7f120ab7          	lui	s5,0x7f120
80000020:	0a8d                	addi	s5,s5,3 # 7f120003 <_start-0xedfffd>
80000022:	ff780b37          	lui	s6,0xff780
80000026:	0b05                	addi	s6,s6,1 # ff780001 <error+0x7f77fdda>
80000028:	4b8d                	li	s7,3
8000002a:	ff120c37          	lui	s8,0xff120
8000002e:	0c0d                	addi	s8,s8,3 # ff120003 <error+0x7f11fddc>
80000030:	a97b7cc7          	fmsub.s	s9,s6,s7,s5
80000034:	1d8c9363          	bne	s9,s8,800001fa <print_error>
80000038:	7f120ab7          	lui	s5,0x7f120
8000003c:	0a8d                	addi	s5,s5,3 # 7f120003 <_start-0xedfffd>
8000003e:	ff780b37          	lui	s6,0xff780
80000042:	0b05                	addi	s6,s6,1 # ff780001 <error+0x7f77fdda>
80000044:	4b8d                	li	s7,3
80000046:	7f120c37          	lui	s8,0x7f120
8000004a:	0c0d                	addi	s8,s8,3 # 7f120003 <_start-0xedfffd>
8000004c:	a97b7ccb          	fnmsub.s	s9,s6,s7,s5
80000050:	1b8c9563          	bne	s9,s8,800001fa <print_error>
80000054:	7f120ab7          	lui	s5,0x7f120
80000058:	0a8d                	addi	s5,s5,3 # 7f120003 <_start-0xedfffd>
8000005a:	ff780b37          	lui	s6,0xff780
8000005e:	0b05                	addi	s6,s6,1 # ff780001 <error+0x7f77fdda>
80000060:	4b8d                	li	s7,3
80000062:	ff120c37          	lui	s8,0xff120
80000066:	0c0d                	addi	s8,s8,3 # ff120003 <error+0x7f11fddc>
80000068:	a97b7ccf          	fnmadd.s	s9,s6,s7,s5
8000006c:	198c9763          	bne	s9,s8,800001fa <print_error>
80000070:	7f120b37          	lui	s6,0x7f120
80000074:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
80000076:	4b8d                	li	s7,3
80000078:	7f120c37          	lui	s8,0x7f120
8000007c:	0c0d                	addi	s8,s8,3 # 7f120003 <_start-0xedfffd>
8000007e:	017b7cd3          	fadd.s	s9,s6,s7
80000082:	178c9c63          	bne	s9,s8,800001fa <print_error>
80000086:	7f120b37          	lui	s6,0x7f120
8000008a:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
8000008c:	4b8d                	li	s7,3
8000008e:	7f120c37          	lui	s8,0x7f120
80000092:	0c0d                	addi	s8,s8,3 # 7f120003 <_start-0xedfffd>
80000094:	097b7cd3          	fsub.s	s9,s6,s7
80000098:	178c9163          	bne	s9,s8,800001fa <print_error>
8000009c:	7f120b37          	lui	s6,0x7f120
800000a0:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
800000a2:	4b8d                	li	s7,3
800000a4:	355b0c37          	lui	s8,0x355b0
800000a8:	0c11                	addi	s8,s8,4 # 355b0004 <_start-0x4aa4fffc>
800000aa:	117b7cd3          	fmul.s	s9,s6,s7
800000ae:	158c9663          	bne	s9,s8,800001fa <print_error>
800000b2:	7f120b37          	lui	s6,0x7f120
800000b6:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
800000b8:	4b8d                	li	s7,3
800000ba:	7f800c37          	lui	s8,0x7f800
800000be:	197b7cd3          	fdiv.s	s9,s6,s7
800000c2:	138c9c63          	bne	s9,s8,800001fa <print_error>
800000c6:	7f120b37          	lui	s6,0x7f120
800000ca:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
800000cc:	5f415c37          	lui	s8,0x5f415
800000d0:	42ac0c13          	addi	s8,s8,1066 # 5f41542a <_start-0x20beabd6>
800000d4:	580b7cd3          	fsqrt.s	s9,s6
800000d8:	138c9163          	bne	s9,s8,800001fa <print_error>
800000dc:	7f120b37          	lui	s6,0x7f120
800000e0:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
800000e2:	4b8d                	li	s7,3
800000e4:	7f120c37          	lui	s8,0x7f120
800000e8:	0c0d                	addi	s8,s8,3 # 7f120003 <_start-0xedfffd>
800000ea:	217b0cd3          	fsgnj.s	s9,s6,s7
800000ee:	118c9663          	bne	s9,s8,800001fa <print_error>
800000f2:	7f120b37          	lui	s6,0x7f120
800000f6:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
800000f8:	4b8d                	li	s7,3
800000fa:	ff120c37          	lui	s8,0xff120
800000fe:	0c0d                	addi	s8,s8,3 # ff120003 <error+0x7f11fddc>
80000100:	217b1cd3          	fsgnjn.s	s9,s6,s7
80000104:	0f8c9b63          	bne	s9,s8,800001fa <print_error>
80000108:	7f120b37          	lui	s6,0x7f120
8000010c:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
8000010e:	4b8d                	li	s7,3
80000110:	7f120c37          	lui	s8,0x7f120
80000114:	0c0d                	addi	s8,s8,3 # 7f120003 <_start-0xedfffd>
80000116:	217b2cd3          	fsgnjx.s	s9,s6,s7
8000011a:	0f8c9063          	bne	s9,s8,800001fa <print_error>
8000011e:	7f120b37          	lui	s6,0x7f120
80000122:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
80000124:	4b8d                	li	s7,3
80000126:	4c0d                	li	s8,3
80000128:	297b0cd3          	fmin.s	s9,s6,s7
8000012c:	0d8c9763          	bne	s9,s8,800001fa <print_error>
80000130:	7f120b37          	lui	s6,0x7f120
80000134:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
80000136:	4b8d                	li	s7,3
80000138:	7f120c37          	lui	s8,0x7f120
8000013c:	0c0d                	addi	s8,s8,3 # 7f120003 <_start-0xedfffd>
8000013e:	297b1cd3          	fmax.s	s9,s6,s7
80000142:	0b8c9c63          	bne	s9,s8,800001fa <print_error>
80000146:	7f120b37          	lui	s6,0x7f120
8000014a:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
8000014c:	80000c37          	lui	s8,0x80000
80000150:	1c7d                	addi	s8,s8,-1 # 7fffffff <_start-0x1>
80000152:	c00b7cd3          	fcvt.w.s	s9,s6
80000156:	0b8c9263          	bne	s9,s8,800001fa <print_error>
8000015a:	7f120b37          	lui	s6,0x7f120
8000015e:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
80000160:	fff00c13          	li	s8,-1
80000164:	c01b7cd3          	fcvt.wu.s	s9,s6
80000168:	098c9963          	bne	s9,s8,800001fa <print_error>
8000016c:	7f120b37          	lui	s6,0x7f120
80000170:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
80000172:	4b8d                	li	s7,3
80000174:	4c01                	li	s8,0
80000176:	a17b2cd3          	feq.s	s9,s6,s7
8000017a:	098c9063          	bne	s9,s8,800001fa <print_error>
8000017e:	7f120b37          	lui	s6,0x7f120
80000182:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
80000184:	4b8d                	li	s7,3
80000186:	4c01                	li	s8,0
80000188:	a17b1cd3          	flt.s	s9,s6,s7
8000018c:	078c9763          	bne	s9,s8,800001fa <print_error>
80000190:	7f120b37          	lui	s6,0x7f120
80000194:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
80000196:	4b8d                	li	s7,3
80000198:	4c01                	li	s8,0
8000019a:	a17b0cd3          	fle.s	s9,s6,s7
8000019e:	058c9e63          	bne	s9,s8,800001fa <print_error>
800001a2:	7f120b37          	lui	s6,0x7f120
800001a6:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
800001a8:	04000c13          	li	s8,64
800001ac:	e00b1cd3          	fclass.s	s9,s6
800001b0:	058c9563          	bne	s9,s8,800001fa <print_error>
800001b4:	7f120b37          	lui	s6,0x7f120
800001b8:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
800001ba:	4efe2c37          	lui	s8,0x4efe2
800001be:	400c0c13          	addi	s8,s8,1024 # 4efe2400 <_start-0x3101dc00>
800001c2:	d00b7cd3          	fcvt.s.w	s9,s6
800001c6:	038c9a63          	bne	s9,s8,800001fa <print_error>
800001ca:	7f120b37          	lui	s6,0x7f120
800001ce:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
800001d0:	4efe2c37          	lui	s8,0x4efe2
800001d4:	400c0c13          	addi	s8,s8,1024 # 4efe2400 <_start-0x3101dc00>
800001d8:	d01b7cd3          	fcvt.s.wu	s9,s6
800001dc:	018c9f63          	bne	s9,s8,800001fa <print_error>
800001e0:	f14022f3          	csrr	t0,mhartid
800001e4:	02029a63          	bnez	t0,80000218 <forever>

800001e8 <print_pass>:
800001e8:	100004b7          	lui	s1,0x10000
800001ec:	00000917          	auipc	s2,0x0
800001f0:	03290913          	addi	s2,s2,50 # 8000021e <pass>
800001f4:	00890993          	addi	s3,s2,8
800001f8:	2809                	jal	8000020a <loop>

800001fa <print_error>:
800001fa:	100004b7          	lui	s1,0x10000
800001fe:	00000917          	auipc	s2,0x0
80000202:	02990913          	addi	s2,s2,41 # 80000227 <error>
80000206:	00d90993          	addi	s3,s2,13

8000020a <loop>:
8000020a:	00090a03          	lb	s4,0(s2)
8000020e:	01448023          	sb	s4,0(s1) # 10000000 <_start-0x70000000>
80000212:	0905                	addi	s2,s2,1
80000214:	ff394be3          	blt	s2,s3,8000020a <loop>

80000218 <forever>:
80000218:	10500073          	wfi
8000021c:	bff5                	j	80000218 <forever>
