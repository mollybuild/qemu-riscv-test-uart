
test32-k.elf:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <_start>:
80000000:	7f120b37          	lui	s6,0x7f120
80000004:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
80000006:	4b8d                	li	s7,3
80000008:	f8900c37          	lui	s8,0xf8900
8000000c:	0c6d                	addi	s8,s8,27 # f890001b <error+0x788ffcda>
8000000e:	617b1cb3          	rol	s9,s6,s7
80000012:	318c9163          	bne	s9,s8,80000314 <print_error>
80000016:	7f120b37          	lui	s6,0x7f120
8000001a:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
8000001c:	4b8d                	li	s7,3
8000001e:	6fe24c37          	lui	s8,0x6fe24
80000022:	617b5cb3          	ror	s9,s6,s7
80000026:	2f8c9763          	bne	s9,s8,80000314 <print_error>
8000002a:	7f120b37          	lui	s6,0x7f120
8000002e:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
80000030:	4b8d                	li	s7,3
80000032:	6fe24c37          	lui	s8,0x6fe24
80000036:	603b5c93          	rori	s9,s6,0x3
8000003a:	2d8c9d63          	bne	s9,s8,80000314 <print_error>
8000003e:	7f120b37          	lui	s6,0x7f120
80000042:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
80000044:	4b8d                	li	s7,3
80000046:	7f120c37          	lui	s8,0x7f120
8000004a:	417b7cb3          	andn	s9,s6,s7
8000004e:	2d8c9363          	bne	s9,s8,80000314 <print_error>
80000052:	7f120b37          	lui	s6,0x7f120
80000056:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
80000058:	4b8d                	li	s7,3
8000005a:	fff00c13          	li	s8,-1
8000005e:	417b6cb3          	orn	s9,s6,s7
80000062:	2b8c9963          	bne	s9,s8,80000314 <print_error>
80000066:	7f120b37          	lui	s6,0x7f120
8000006a:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
8000006c:	4b8d                	li	s7,3
8000006e:	80ee0c37          	lui	s8,0x80ee0
80000072:	1c7d                	addi	s8,s8,-1 # 80edffff <error+0xedfcbe>
80000074:	417b4cb3          	xnor	s9,s6,s7
80000078:	298c9e63          	bne	s9,s8,80000314 <print_error>
8000007c:	7f120b37          	lui	s6,0x7f120
80000080:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
80000082:	4b8d                	li	s7,3
80000084:	00030c37          	lui	s8,0x30
80000088:	0c0d                	addi	s8,s8,3 # 30003 <_start-0x7ffcfffd>
8000008a:	097b4cb3          	pack	s9,s6,s7
8000008e:	298c9363          	bne	s9,s8,80000314 <print_error>
80000092:	7f120b37          	lui	s6,0x7f120
80000096:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
80000098:	4b8d                	li	s7,3
8000009a:	30300c13          	li	s8,771
8000009e:	097b7cb3          	packh	s9,s6,s7
800000a2:	278c9963          	bne	s9,s8,80000314 <print_error>
800000a6:	7f120b37          	lui	s6,0x7f120
800000aa:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
800000ac:	fe480c37          	lui	s8,0xfe480
800000b0:	0c0c0c13          	addi	s8,s8,192 # fe4800c0 <error+0x7e47fd7f>
800000b4:	687b5c93          	brev8	s9,s6
800000b8:	258c9e63          	bne	s9,s8,80000314 <print_error>
800000bc:	7f120b37          	lui	s6,0x7f120
800000c0:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
800000c2:	03001c37          	lui	s8,0x3001
800000c6:	27fc0c13          	addi	s8,s8,639 # 300127f <_start-0x7cffed81>
800000ca:	698b5c93          	rev8	s9,s6
800000ce:	258c9363          	bne	s9,s8,80000314 <print_error>
800000d2:	7f120b37          	lui	s6,0x7f120
800000d6:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
800000d8:	2aaa0c37          	lui	s8,0x2aaa0
800000dc:	20dc0c13          	addi	s8,s8,525 # 2aaa020d <_start-0x5555fdf3>
800000e0:	08fb1c93          	zip	s9,s6
800000e4:	238c9863          	bne	s9,s8,80000314 <print_error>
800000e8:	7f120b37          	lui	s6,0x7f120
800000ec:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
800000ee:	7101fc37          	lui	s8,0x7101f
800000f2:	401c0c13          	addi	s8,s8,1025 # 7101f401 <_start-0xefe0bff>
800000f6:	08fb5c93          	unzip	s9,s6
800000fa:	218c9d63          	bne	s9,s8,80000314 <print_error>
800000fe:	7f120b37          	lui	s6,0x7f120
80000102:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
80000104:	4b8d                	li	s7,3
80000106:	81360c37          	lui	s8,0x81360
8000010a:	0c15                	addi	s8,s8,5 # 81360005 <error+0x135fcc4>
8000010c:	0b7b1cb3          	clmul	s9,s6,s7
80000110:	218c9263          	bne	s9,s8,80000314 <print_error>
80000114:	7f120b37          	lui	s6,0x7f120
80000118:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
8000011a:	4b8d                	li	s7,3
8000011c:	4c01                	li	s8,0
8000011e:	0b7b3cb3          	clmulh	s9,s6,s7
80000122:	1f8c9963          	bne	s9,s8,80000314 <print_error>
80000126:	7f120b37          	lui	s6,0x7f120
8000012a:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
8000012c:	4b8d                	li	s7,3
8000012e:	03030c37          	lui	s8,0x3030
80000132:	37fc0c13          	addi	s8,s8,895 # 303037f <_start-0x7cfcfc81>
80000136:	297b4cb3          	xperm8	s9,s6,s7
8000013a:	1d8c9d63          	bne	s9,s8,80000314 <print_error>
8000013e:	7f120b37          	lui	s6,0x7f120
80000142:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
80000144:	4b8d                	li	s7,3
80000146:	33333c37          	lui	s8,0x33333
8000014a:	330c0c13          	addi	s8,s8,816 # 33333330 <_start-0x4cccccd0>
8000014e:	297b2cb3          	xperm4	s9,s6,s7
80000152:	1d8c9163          	bne	s9,s8,80000314 <print_error>
80000156:	7f120b37          	lui	s6,0x7f120
8000015a:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
8000015c:	4b8d                	li	s7,3
8000015e:	7f125c37          	lui	s8,0x7f125
80000162:	203c0c13          	addi	s8,s8,515 # 7f125203 <_start-0xedadfd>
80000166:	6b7b0cb3          	aes32dsi	s9,s6,s7,0x1
8000016a:	1b8c9563          	bne	s9,s8,80000314 <print_error>
8000016e:	7f120b37          	lui	s6,0x7f120
80000172:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
80000174:	4b8d                	li	s7,3
80000176:	d8e65c37          	lui	s8,0xd8e65
8000017a:	153c0c13          	addi	s8,s8,339 # d8e65153 <error+0x58e64e12>
8000017e:	6f7b0cb3          	aes32dsmi	s9,s6,s7,0x1
80000182:	198c9963          	bne	s9,s8,80000314 <print_error>
80000186:	7f120b37          	lui	s6,0x7f120
8000018a:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
8000018c:	4b8d                	li	s7,3
8000018e:	7f126c37          	lui	s8,0x7f126
80000192:	303c0c13          	addi	s8,s8,771 # 7f126303 <_start-0xed9cfd>
80000196:	637b0cb3          	aes32esi	s9,s6,s7,0x1
8000019a:	178c9d63          	bne	s9,s8,80000314 <print_error>
8000019e:	7f120b37          	lui	s6,0x7f120
800001a2:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
800001a4:	4b8d                	li	s7,3
800001a6:	1c71cc37          	lui	s8,0x1c71c
800001aa:	6a6c0c13          	addi	s8,s8,1702 # 1c71c6a6 <_start-0x638e395a>
800001ae:	677b0cb3          	aes32esmi	s9,s6,s7,0x1
800001b2:	178c9163          	bne	s9,s8,80000314 <print_error>
800001b6:	7f120b37          	lui	s6,0x7f120
800001ba:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
800001bc:	891ccc37          	lui	s8,0x891cc
800001c0:	bc4c0c13          	addi	s8,s8,-1084 # 891cbbc4 <error+0x91cb883>
800001c4:	102b1c93          	sha256sig0	s9,s6
800001c8:	158c9663          	bne	s9,s8,80000314 <print_error>
800001cc:	7f120b37          	lui	s6,0x7f120
800001d0:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
800001d2:	401e1c37          	lui	s8,0x401e1
800001d6:	4ebc0c13          	addi	s8,s8,1259 # 401e14eb <_start-0x3fe1eb15>
800001da:	103b1c93          	sha256sig1	s9,s6
800001de:	138c9b63          	bne	s9,s8,80000314 <print_error>
800001e2:	7f120b37          	lui	s6,0x7f120
800001e6:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
800001e8:	97df7c37          	lui	s8,0x97df7
800001ec:	56cc0c13          	addi	s8,s8,1388 # 97df756c <error+0x17df722b>
800001f0:	100b1c93          	sha256sum0	s9,s6
800001f4:	138c9063          	bne	s9,s8,80000314 <print_error>
800001f8:	7f120b37          	lui	s6,0x7f120
800001fc:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
800001fe:	8493bc37          	lui	s8,0x8493b
80000202:	bffc0c13          	addi	s8,s8,-1025 # 8493abff <error+0x493a8be>
80000206:	101b1c93          	sha256sum1	s9,s6
8000020a:	118c9563          	bne	s9,s8,80000314 <print_error>
8000020e:	7f120b37          	lui	s6,0x7f120
80000212:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
80000214:	4b8d                	li	s7,3
80000216:	bc083c37          	lui	s8,0xbc083
8000021a:	601c0c13          	addi	s8,s8,1537 # bc083601 <error+0x3c0832c0>
8000021e:	5d7b0cb3          	sha512sig0h	s9,s6,s7
80000222:	0f8c9963          	bne	s9,s8,80000314 <print_error>
80000226:	7f120b37          	lui	s6,0x7f120
8000022a:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
8000022c:	4b8d                	li	s7,3
8000022e:	ba083c37          	lui	s8,0xba083
80000232:	601c0c13          	addi	s8,s8,1537 # ba083601 <error+0x3a0832c0>
80000236:	557b0cb3          	sha512sig0l	s9,s6,s7
8000023a:	0d8c9d63          	bne	s9,s8,80000314 <print_error>
8000023e:	7f120b37          	lui	s6,0x7f120
80000242:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
80000244:	4b8d                	li	s7,3
80000246:	f96c2c37          	lui	s8,0xf96c2
8000024a:	7fac0c13          	addi	s8,s8,2042 # f96c27fa <error+0x796c24b9>
8000024e:	5f7b0cb3          	sha512sig1h	s9,s6,s7
80000252:	0d8c9163          	bne	s9,s8,80000314 <print_error>
80000256:	7f120b37          	lui	s6,0x7f120
8000025a:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
8000025c:	4b8d                	li	s7,3
8000025e:	f56c2c37          	lui	s8,0xf56c2
80000262:	7fac0c13          	addi	s8,s8,2042 # f56c27fa <error+0x756c24b9>
80000266:	577b0cb3          	sha512sig1l	s9,s6,s7
8000026a:	0b8c9563          	bne	s9,s8,80000314 <print_error>
8000026e:	7f120b37          	lui	s6,0x7f120
80000272:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
80000274:	4b8d                	li	s7,3
80000276:	c6000c37          	lui	s8,0xc6000
8000027a:	037c0c13          	addi	s8,s8,55 # c6000037 <error+0x45fffcf6>
8000027e:	517b0cb3          	sha512sum0r	s9,s6,s7
80000282:	098c9963          	bne	s9,s8,80000314 <print_error>
80000286:	7f120b37          	lui	s6,0x7f120
8000028a:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
8000028c:	4b8d                	li	s7,3
8000028e:	018d2c37          	lui	s8,0x18d2
80000292:	38cc0c13          	addi	s8,s8,908 # 18d238c <_start-0x7e72dc74>
80000296:	537b0cb3          	sha512sum1r	s9,s6,s7
8000029a:	078c9d63          	bne	s9,s8,80000314 <print_error>
8000029e:	7f120b37          	lui	s6,0x7f120
800002a2:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
800002a4:	4b8d                	li	s7,3
800002a6:	24c79c37          	lui	s8,0x24c79
800002aa:	e58c0c13          	addi	s8,s8,-424 # 24c78e58 <_start-0x5b3871a8>
800002ae:	717b0cb3          	sm4ed	s9,s6,s7,0x1
800002b2:	078c9163          	bne	s9,s8,80000314 <print_error>
800002b6:	7f120b37          	lui	s6,0x7f120
800002ba:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
800002bc:	4b8d                	li	s7,3
800002be:	6579dc37          	lui	s8,0x6579d
800002c2:	6c3c0c13          	addi	s8,s8,1731 # 6579d6c3 <_start-0x1a86293d>
800002c6:	757b0cb3          	sm4ks	s9,s6,s7,0x1
800002ca:	058c9563          	bne	s9,s8,80000314 <print_error>
800002ce:	7f120b37          	lui	s6,0x7f120
800002d2:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
800002d4:	5b150c37          	lui	s8,0x5b150
800002d8:	8d9c0c13          	addi	s8,s8,-1831 # 5b14f8d9 <_start-0x24eb0727>
800002dc:	108b1c93          	sm3p0	s9,s6
800002e0:	038c9a63          	bne	s9,s8,80000314 <print_error>
800002e4:	7f120b37          	lui	s6,0x7f120
800002e8:	0b0d                	addi	s6,s6,3 # 7f120003 <_start-0xedfffd>
800002ea:	7eac3c37          	lui	s8,0x7eac3
800002ee:	68ac0c13          	addi	s8,s8,1674 # 7eac368a <_start-0x153c976>
800002f2:	109b1c93          	sm3p1	s9,s6
800002f6:	018c9f63          	bne	s9,s8,80000314 <print_error>
800002fa:	f14022f3          	csrr	t0,mhartid
800002fe:	02029a63          	bnez	t0,80000332 <forever>

80000302 <print_pass>:
80000302:	100004b7          	lui	s1,0x10000
80000306:	00000917          	auipc	s2,0x0
8000030a:	03290913          	addi	s2,s2,50 # 80000338 <pass>
8000030e:	00890993          	addi	s3,s2,8
80000312:	2809                	jal	80000324 <loop>

80000314 <print_error>:
80000314:	100004b7          	lui	s1,0x10000
80000318:	00000917          	auipc	s2,0x0
8000031c:	02990913          	addi	s2,s2,41 # 80000341 <error>
80000320:	00d90993          	addi	s3,s2,13

80000324 <loop>:
80000324:	00090a03          	lb	s4,0(s2)
80000328:	01448023          	sb	s4,0(s1) # 10000000 <_start-0x70000000>
8000032c:	0905                	addi	s2,s2,1
8000032e:	ff394be3          	blt	s2,s3,80000324 <loop>

80000332 <forever>:
80000332:	10500073          	wfi
80000336:	bff5                	j	80000332 <forever>
