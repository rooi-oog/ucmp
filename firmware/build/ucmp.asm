
build/ucmp.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vector_table>:
 8000000:	00 50 00 20 2d 4b 00 08 29 4b 00 08 27 4b 00 08     .P. -K..)K..'K..
 8000010:	27 4b 00 08 27 4b 00 08 27 4b 00 08 00 00 00 00     'K..'K..'K......
	...
 800002c:	29 4b 00 08 29 4b 00 08 00 00 00 00 29 4b 00 08     )K..)K......)K..
 800003c:	75 32 00 08 27 4b 00 08 27 4b 00 08 27 4b 00 08     u2..'K..'K..'K..
 800004c:	27 4b 00 08 27 4b 00 08 27 4b 00 08 27 4b 00 08     'K..'K..'K..'K..
 800005c:	27 4b 00 08 27 4b 00 08 27 4b 00 08 27 4b 00 08     'K..'K..'K..'K..
 800006c:	27 4b 00 08 27 4b 00 08 27 4b 00 08 27 4b 00 08     'K..'K..'K..'K..
 800007c:	27 4b 00 08 27 4b 00 08 27 4b 00 08 27 4b 00 08     'K..'K..'K..'K..
 800008c:	27 4b 00 08 2d 3d 00 08 27 4b 00 08 27 4b 00 08     'K..-=..'K..'K..
 800009c:	27 4b 00 08 27 4b 00 08 27 4b 00 08 27 4b 00 08     'K..'K..'K..'K..
 80000ac:	27 4b 00 08 27 4b 00 08 27 4b 00 08 27 4b 00 08     'K..'K..'K..'K..
 80000bc:	27 4b 00 08 27 4b 00 08 27 4b 00 08 27 4b 00 08     'K..'K..'K..'K..
 80000cc:	27 4b 00 08 27 4b 00 08 49 37 00 08 27 4b 00 08     'K..'K..I7..'K..
 80000dc:	27 4b 00 08 27 4b 00 08 27 4b 00 08 39 3d 00 08     'K..'K..'K..9=..
 80000ec:	27 4b 00 08 27 4b 00 08 27 4b 00 08 27 4b 00 08     'K..'K..'K..'K..
 80000fc:	27 4b 00 08 27 4b 00 08 27 4b 00 08 27 4b 00 08     'K..'K..'K..'K..
 800010c:	27 4b 00 08 27 4b 00 08 27 4b 00 08 27 4b 00 08     'K..'K..'K..'K..
 800011c:	27 4b 00 08 27 4b 00 08 27 4b 00 08 27 4b 00 08     'K..'K..'K..'K..
 800012c:	27 4b 00 08 27 4b 00 08 27 4b 00 08 27 4b 00 08     'K..'K..'K..'K..
 800013c:	27 4b 00 08 27 4b 00 08 27 4b 00 08 27 4b 00 08     'K..'K..'K..'K..
 800014c:	27 4b 00 08                                         'K..

08000150 <SWJ_Sequence>:
 8000150:	2800      	cmp	r0, #0
 8000152:	d02e      	beq.n	80001b2 <SWJ_Sequence+0x62>
 8000154:	2200      	movs	r2, #0
 8000156:	b4f0      	push	{r4, r5, r6, r7}
 8000158:	4614      	mov	r4, r2
 800015a:	4d16      	ldr	r5, [pc, #88]	; (80001b4 <SWJ_Sequence+0x64>)
 800015c:	b082      	sub	sp, #8
 800015e:	3801      	subs	r0, #1
 8000160:	b31a      	cbz	r2, 80001aa <SWJ_Sequence+0x5a>
 8000162:	3a01      	subs	r2, #1
 8000164:	b2d2      	uxtb	r2, r2
 8000166:	07e3      	lsls	r3, r4, #31
 8000168:	bf4c      	ite	mi
 800016a:	2602      	movmi	r6, #2
 800016c:	f44f 3600 	movpl.w	r6, #131072	; 0x20000
 8000170:	f44f 3780 	mov.w	r7, #65536	; 0x10000
 8000174:	4b10      	ldr	r3, [pc, #64]	; (80001b8 <SWJ_Sequence+0x68>)
 8000176:	601e      	str	r6, [r3, #0]
 8000178:	686b      	ldr	r3, [r5, #4]
 800017a:	4e0f      	ldr	r6, [pc, #60]	; (80001b8 <SWJ_Sequence+0x68>)
 800017c:	6037      	str	r7, [r6, #0]
 800017e:	9301      	str	r3, [sp, #4]
 8000180:	9b01      	ldr	r3, [sp, #4]
 8000182:	3b01      	subs	r3, #1
 8000184:	9301      	str	r3, [sp, #4]
 8000186:	2b00      	cmp	r3, #0
 8000188:	d1fa      	bne.n	8000180 <SWJ_Sequence+0x30>
 800018a:	2701      	movs	r7, #1
 800018c:	686b      	ldr	r3, [r5, #4]
 800018e:	4e0a      	ldr	r6, [pc, #40]	; (80001b8 <SWJ_Sequence+0x68>)
 8000190:	6037      	str	r7, [r6, #0]
 8000192:	9300      	str	r3, [sp, #0]
 8000194:	9b00      	ldr	r3, [sp, #0]
 8000196:	3b01      	subs	r3, #1
 8000198:	9300      	str	r3, [sp, #0]
 800019a:	2b00      	cmp	r3, #0
 800019c:	d1fa      	bne.n	8000194 <SWJ_Sequence+0x44>
 800019e:	0864      	lsrs	r4, r4, #1
 80001a0:	2800      	cmp	r0, #0
 80001a2:	d1dc      	bne.n	800015e <SWJ_Sequence+0xe>
 80001a4:	b002      	add	sp, #8
 80001a6:	bcf0      	pop	{r4, r5, r6, r7}
 80001a8:	4770      	bx	lr
 80001aa:	f811 4b01 	ldrb.w	r4, [r1], #1
 80001ae:	2207      	movs	r2, #7
 80001b0:	e7d9      	b.n	8000166 <SWJ_Sequence+0x16>
 80001b2:	4770      	bx	lr
 80001b4:	200004a0 	.word	0x200004a0
 80001b8:	40010c10 	.word	0x40010c10

080001bc <SWD_TransferFast>:
 80001bc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80001be:	4606      	mov	r6, r0
 80001c0:	2202      	movs	r2, #2
 80001c2:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 80001c6:	2001      	movs	r0, #1
 80001c8:	4b92      	ldr	r3, [pc, #584]	; (8000414 <SWD_TransferFast+0x258>)
 80001ca:	460d      	mov	r5, r1
 80001cc:	07f1      	lsls	r1, r6, #31
 80001ce:	601a      	str	r2, [r3, #0]
 80001d0:	f04f 0101 	mov.w	r1, #1
 80001d4:	bf58      	it	pl
 80001d6:	f44f 3200 	movpl.w	r2, #131072	; 0x20000
 80001da:	601c      	str	r4, [r3, #0]
 80001dc:	6018      	str	r0, [r3, #0]
 80001de:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 80001e2:	601a      	str	r2, [r3, #0]
 80001e4:	fa26 f301 	lsr.w	r3, r6, r1
 80001e8:	4a8a      	ldr	r2, [pc, #552]	; (8000414 <SWD_TransferFast+0x258>)
 80001ea:	07df      	lsls	r7, r3, #31
 80001ec:	6010      	str	r0, [r2, #0]
 80001ee:	6011      	str	r1, [r2, #0]
 80001f0:	bf4c      	ite	mi
 80001f2:	2102      	movmi	r1, #2
 80001f4:	f44f 3100 	movpl.w	r1, #131072	; 0x20000
 80001f8:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 80001fc:	6011      	str	r1, [r2, #0]
 80001fe:	4985      	ldr	r1, [pc, #532]	; (8000414 <SWD_TransferFast+0x258>)
 8000200:	08b2      	lsrs	r2, r6, #2
 8000202:	600c      	str	r4, [r1, #0]
 8000204:	07d4      	lsls	r4, r2, #31
 8000206:	4413      	add	r3, r2
 8000208:	f04f 0001 	mov.w	r0, #1
 800020c:	bf4c      	ite	mi
 800020e:	2202      	movmi	r2, #2
 8000210:	f44f 3200 	movpl.w	r2, #131072	; 0x20000
 8000214:	6008      	str	r0, [r1, #0]
 8000216:	600a      	str	r2, [r1, #0]
 8000218:	f44f 3180 	mov.w	r1, #65536	; 0x10000
 800021c:	2001      	movs	r0, #1
 800021e:	4a7d      	ldr	r2, [pc, #500]	; (8000414 <SWD_TransferFast+0x258>)
 8000220:	4433      	add	r3, r6
 8000222:	6011      	str	r1, [r2, #0]
 8000224:	08f1      	lsrs	r1, r6, #3
 8000226:	6010      	str	r0, [r2, #0]
 8000228:	07c8      	lsls	r0, r1, #31
 800022a:	bf4c      	ite	mi
 800022c:	2002      	movmi	r0, #2
 800022e:	f44f 3000 	movpl.w	r0, #131072	; 0x20000
 8000232:	b2db      	uxtb	r3, r3
 8000234:	440b      	add	r3, r1
 8000236:	07d9      	lsls	r1, r3, #31
 8000238:	6010      	str	r0, [r2, #0]
 800023a:	bf4c      	ite	mi
 800023c:	2302      	movmi	r3, #2
 800023e:	f44f 3300 	movpl.w	r3, #131072	; 0x20000
 8000242:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 8000246:	2001      	movs	r0, #1
 8000248:	4a72      	ldr	r2, [pc, #456]	; (8000414 <SWD_TransferFast+0x258>)
 800024a:	2702      	movs	r7, #2
 800024c:	6014      	str	r4, [r2, #0]
 800024e:	6010      	str	r0, [r2, #0]
 8000250:	f44f 3400 	mov.w	r4, #131072	; 0x20000
 8000254:	6013      	str	r3, [r2, #0]
 8000256:	2001      	movs	r0, #1
 8000258:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 800025c:	496d      	ldr	r1, [pc, #436]	; (8000414 <SWD_TransferFast+0x258>)
 800025e:	463b      	mov	r3, r7
 8000260:	600a      	str	r2, [r1, #0]
 8000262:	6008      	str	r0, [r1, #0]
 8000264:	600c      	str	r4, [r1, #0]
 8000266:	600a      	str	r2, [r1, #0]
 8000268:	4c6b      	ldr	r4, [pc, #428]	; (8000418 <SWD_TransferFast+0x25c>)
 800026a:	6008      	str	r0, [r1, #0]
 800026c:	600f      	str	r7, [r1, #0]
 800026e:	600a      	str	r2, [r1, #0]
 8000270:	6008      	str	r0, [r1, #0]
 8000272:	463a      	mov	r2, r7
 8000274:	2100      	movs	r1, #0
 8000276:	4869      	ldr	r0, [pc, #420]	; (800041c <SWD_TransferFast+0x260>)
 8000278:	f003 fd64 	bl	8003d44 <gpio_set_mode>
 800027c:	4639      	mov	r1, r7
 800027e:	4867      	ldr	r0, [pc, #412]	; (800041c <SWD_TransferFast+0x260>)
 8000280:	f003 fe8e 	bl	8003fa0 <gpio_set>
 8000284:	7d23      	ldrb	r3, [r4, #20]
 8000286:	b14b      	cbz	r3, 800029c <SWD_TransferFast+0xe0>
 8000288:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 800028c:	2101      	movs	r1, #1
 800028e:	4a61      	ldr	r2, [pc, #388]	; (8000414 <SWD_TransferFast+0x258>)
 8000290:	3b01      	subs	r3, #1
 8000292:	f013 03ff 	ands.w	r3, r3, #255	; 0xff
 8000296:	6010      	str	r0, [r2, #0]
 8000298:	6011      	str	r1, [r2, #0]
 800029a:	d1f5      	bne.n	8000288 <SWD_TransferFast+0xcc>
 800029c:	f44f 3c80 	mov.w	ip, #65536	; 0x10000
 80002a0:	2101      	movs	r1, #1
 80002a2:	4a5c      	ldr	r2, [pc, #368]	; (8000414 <SWD_TransferFast+0x258>)
 80002a4:	4f5e      	ldr	r7, [pc, #376]	; (8000420 <SWD_TransferFast+0x264>)
 80002a6:	f8c2 c000 	str.w	ip, [r2]
 80002aa:	6838      	ldr	r0, [r7, #0]
 80002ac:	6011      	str	r1, [r2, #0]
 80002ae:	f8c2 c000 	str.w	ip, [r2]
 80002b2:	683b      	ldr	r3, [r7, #0]
 80002b4:	6011      	str	r1, [r2, #0]
 80002b6:	f8c2 c000 	str.w	ip, [r2]
 80002ba:	683f      	ldr	r7, [r7, #0]
 80002bc:	f003 0302 	and.w	r3, r3, #2
 80002c0:	f3c7 0740 	ubfx	r7, r7, #1, #1
 80002c4:	ea43 0387 	orr.w	r3, r3, r7, lsl #2
 80002c8:	f3c0 0040 	ubfx	r0, r0, #1, #1
 80002cc:	4303      	orrs	r3, r0
 80002ce:	428b      	cmp	r3, r1
 80002d0:	6011      	str	r1, [r2, #0]
 80002d2:	b2df      	uxtb	r7, r3
 80002d4:	d04d      	beq.n	8000372 <SWD_TransferFast+0x1b6>
 80002d6:	2f02      	cmp	r7, #2
 80002d8:	d015      	beq.n	8000306 <SWD_TransferFast+0x14a>
 80002da:	2f04      	cmp	r7, #4
 80002dc:	d013      	beq.n	8000306 <SWD_TransferFast+0x14a>
 80002de:	7d23      	ldrb	r3, [r4, #20]
 80002e0:	3321      	adds	r3, #33	; 0x21
 80002e2:	f013 03ff 	ands.w	r3, r3, #255	; 0xff
 80002e6:	d009      	beq.n	80002fc <SWD_TransferFast+0x140>
 80002e8:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 80002ec:	2101      	movs	r1, #1
 80002ee:	4a49      	ldr	r2, [pc, #292]	; (8000414 <SWD_TransferFast+0x258>)
 80002f0:	3b01      	subs	r3, #1
 80002f2:	f013 03ff 	ands.w	r3, r3, #255	; 0xff
 80002f6:	6010      	str	r0, [r2, #0]
 80002f8:	6011      	str	r1, [r2, #0]
 80002fa:	d1f5      	bne.n	80002e8 <SWD_TransferFast+0x12c>
 80002fc:	2202      	movs	r2, #2
 80002fe:	4b45      	ldr	r3, [pc, #276]	; (8000414 <SWD_TransferFast+0x258>)
 8000300:	4638      	mov	r0, r7
 8000302:	601a      	str	r2, [r3, #0]
 8000304:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000306:	7d63      	ldrb	r3, [r4, #21]
 8000308:	b163      	cbz	r3, 8000324 <SWD_TransferFast+0x168>
 800030a:	07b2      	lsls	r2, r6, #30
 800030c:	d50a      	bpl.n	8000324 <SWD_TransferFast+0x168>
 800030e:	2321      	movs	r3, #33	; 0x21
 8000310:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 8000314:	2101      	movs	r1, #1
 8000316:	4a3f      	ldr	r2, [pc, #252]	; (8000414 <SWD_TransferFast+0x258>)
 8000318:	3b01      	subs	r3, #1
 800031a:	f013 03ff 	ands.w	r3, r3, #255	; 0xff
 800031e:	6010      	str	r0, [r2, #0]
 8000320:	6011      	str	r1, [r2, #0]
 8000322:	d1f5      	bne.n	8000310 <SWD_TransferFast+0x154>
 8000324:	7d23      	ldrb	r3, [r4, #20]
 8000326:	b14b      	cbz	r3, 800033c <SWD_TransferFast+0x180>
 8000328:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 800032c:	2101      	movs	r1, #1
 800032e:	4a39      	ldr	r2, [pc, #228]	; (8000414 <SWD_TransferFast+0x258>)
 8000330:	3b01      	subs	r3, #1
 8000332:	f013 03ff 	ands.w	r3, r3, #255	; 0xff
 8000336:	6010      	str	r0, [r2, #0]
 8000338:	6011      	str	r1, [r2, #0]
 800033a:	d1f5      	bne.n	8000328 <SWD_TransferFast+0x16c>
 800033c:	2302      	movs	r3, #2
 800033e:	2200      	movs	r2, #0
 8000340:	2101      	movs	r1, #1
 8000342:	4836      	ldr	r0, [pc, #216]	; (800041c <SWD_TransferFast+0x260>)
 8000344:	f003 fcfe 	bl	8003d44 <gpio_set_mode>
 8000348:	7d63      	ldrb	r3, [r4, #21]
 800034a:	2b00      	cmp	r3, #0
 800034c:	d0d6      	beq.n	80002fc <SWD_TransferFast+0x140>
 800034e:	07b3      	lsls	r3, r6, #30
 8000350:	d4d4      	bmi.n	80002fc <SWD_TransferFast+0x140>
 8000352:	f44f 3100 	mov.w	r1, #131072	; 0x20000
 8000356:	2321      	movs	r3, #33	; 0x21
 8000358:	4a2e      	ldr	r2, [pc, #184]	; (8000414 <SWD_TransferFast+0x258>)
 800035a:	6011      	str	r1, [r2, #0]
 800035c:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 8000360:	2101      	movs	r1, #1
 8000362:	4a2c      	ldr	r2, [pc, #176]	; (8000414 <SWD_TransferFast+0x258>)
 8000364:	3b01      	subs	r3, #1
 8000366:	f013 03ff 	ands.w	r3, r3, #255	; 0xff
 800036a:	6010      	str	r0, [r2, #0]
 800036c:	6011      	str	r1, [r2, #0]
 800036e:	d1f5      	bne.n	800035c <SWD_TransferFast+0x1a0>
 8000370:	e7c4      	b.n	80002fc <SWD_TransferFast+0x140>
 8000372:	07b3      	lsls	r3, r6, #30
 8000374:	d556      	bpl.n	8000424 <SWD_TransferFast+0x268>
 8000376:	2100      	movs	r1, #0
 8000378:	2220      	movs	r2, #32
 800037a:	460e      	mov	r6, r1
 800037c:	f44f 3e80 	mov.w	lr, #65536	; 0x10000
 8000380:	2701      	movs	r7, #1
 8000382:	4824      	ldr	r0, [pc, #144]	; (8000414 <SWD_TransferFast+0x258>)
 8000384:	f8df c098 	ldr.w	ip, [pc, #152]	; 8000420 <SWD_TransferFast+0x264>
 8000388:	f8c0 e000 	str.w	lr, [r0]
 800038c:	f8dc 3000 	ldr.w	r3, [ip]
 8000390:	3a01      	subs	r2, #1
 8000392:	f3c3 0340 	ubfx	r3, r3, #1, #1
 8000396:	4419      	add	r1, r3
 8000398:	f012 02ff 	ands.w	r2, r2, #255	; 0xff
 800039c:	ea4f 73c3 	mov.w	r3, r3, lsl #31
 80003a0:	b2c9      	uxtb	r1, r1
 80003a2:	ea43 0656 	orr.w	r6, r3, r6, lsr #1
 80003a6:	6007      	str	r7, [r0, #0]
 80003a8:	d1e8      	bne.n	800037c <SWD_TransferFast+0x1c0>
 80003aa:	f8c0 e000 	str.w	lr, [r0]
 80003ae:	f8dc 3000 	ldr.w	r3, [ip]
 80003b2:	6007      	str	r7, [r0, #0]
 80003b4:	ea81 0153 	eor.w	r1, r1, r3, lsr #1
 80003b8:	f011 0f01 	tst.w	r1, #1
 80003bc:	bf18      	it	ne
 80003be:	2708      	movne	r7, #8
 80003c0:	b105      	cbz	r5, 80003c4 <SWD_TransferFast+0x208>
 80003c2:	602e      	str	r6, [r5, #0]
 80003c4:	7d23      	ldrb	r3, [r4, #20]
 80003c6:	b14b      	cbz	r3, 80003dc <SWD_TransferFast+0x220>
 80003c8:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 80003cc:	2101      	movs	r1, #1
 80003ce:	4a11      	ldr	r2, [pc, #68]	; (8000414 <SWD_TransferFast+0x258>)
 80003d0:	3b01      	subs	r3, #1
 80003d2:	f013 03ff 	ands.w	r3, r3, #255	; 0xff
 80003d6:	6010      	str	r0, [r2, #0]
 80003d8:	6011      	str	r1, [r2, #0]
 80003da:	d1f5      	bne.n	80003c8 <SWD_TransferFast+0x20c>
 80003dc:	2302      	movs	r3, #2
 80003de:	2200      	movs	r2, #0
 80003e0:	2101      	movs	r1, #1
 80003e2:	480e      	ldr	r0, [pc, #56]	; (800041c <SWD_TransferFast+0x260>)
 80003e4:	f003 fcae 	bl	8003d44 <gpio_set_mode>
 80003e8:	7a23      	ldrb	r3, [r4, #8]
 80003ea:	2b00      	cmp	r3, #0
 80003ec:	d086      	beq.n	80002fc <SWD_TransferFast+0x140>
 80003ee:	f44f 3100 	mov.w	r1, #131072	; 0x20000
 80003f2:	4a08      	ldr	r2, [pc, #32]	; (8000414 <SWD_TransferFast+0x258>)
 80003f4:	6011      	str	r1, [r2, #0]
 80003f6:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 80003fa:	2101      	movs	r1, #1
 80003fc:	4a05      	ldr	r2, [pc, #20]	; (8000414 <SWD_TransferFast+0x258>)
 80003fe:	3b01      	subs	r3, #1
 8000400:	f013 03ff 	ands.w	r3, r3, #255	; 0xff
 8000404:	6010      	str	r0, [r2, #0]
 8000406:	6011      	str	r1, [r2, #0]
 8000408:	d1f5      	bne.n	80003f6 <SWD_TransferFast+0x23a>
 800040a:	2202      	movs	r2, #2
 800040c:	4b01      	ldr	r3, [pc, #4]	; (8000414 <SWD_TransferFast+0x258>)
 800040e:	4638      	mov	r0, r7
 8000410:	601a      	str	r2, [r3, #0]
 8000412:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000414:	40010c10 	.word	0x40010c10
 8000418:	200004a0 	.word	0x200004a0
 800041c:	40010c00 	.word	0x40010c00
 8000420:	40010c08 	.word	0x40010c08
 8000424:	7d23      	ldrb	r3, [r4, #20]
 8000426:	b14b      	cbz	r3, 800043c <SWD_TransferFast+0x280>
 8000428:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 800042c:	2101      	movs	r1, #1
 800042e:	4a22      	ldr	r2, [pc, #136]	; (80004b8 <SWD_TransferFast+0x2fc>)
 8000430:	3b01      	subs	r3, #1
 8000432:	f013 03ff 	ands.w	r3, r3, #255	; 0xff
 8000436:	6010      	str	r0, [r2, #0]
 8000438:	6011      	str	r1, [r2, #0]
 800043a:	d1f5      	bne.n	8000428 <SWD_TransferFast+0x26c>
 800043c:	2302      	movs	r3, #2
 800043e:	2200      	movs	r2, #0
 8000440:	2101      	movs	r1, #1
 8000442:	481e      	ldr	r0, [pc, #120]	; (80004bc <SWD_TransferFast+0x300>)
 8000444:	f003 fc7e 	bl	8003d44 <gpio_set_mode>
 8000448:	2220      	movs	r2, #32
 800044a:	2100      	movs	r1, #0
 800044c:	682b      	ldr	r3, [r5, #0]
 800044e:	4d1a      	ldr	r5, [pc, #104]	; (80004b8 <SWD_TransferFast+0x2fc>)
 8000450:	18cf      	adds	r7, r1, r3
 8000452:	1e56      	subs	r6, r2, #1
 8000454:	f013 0f01 	tst.w	r3, #1
 8000458:	4628      	mov	r0, r5
 800045a:	4639      	mov	r1, r7
 800045c:	4632      	mov	r2, r6
 800045e:	d01c      	beq.n	800049a <SWD_TransferFast+0x2de>
 8000460:	2201      	movs	r2, #1
 8000462:	f04f 0c02 	mov.w	ip, #2
 8000466:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 800046a:	f8c5 c000 	str.w	ip, [r5]
 800046e:	40d3      	lsrs	r3, r2
 8000470:	6028      	str	r0, [r5, #0]
 8000472:	602a      	str	r2, [r5, #0]
 8000474:	f016 02ff 	ands.w	r2, r6, #255	; 0xff
 8000478:	b2f9      	uxtb	r1, r7
 800047a:	d1e8      	bne.n	800044e <SWD_TransferFast+0x292>
 800047c:	07c9      	lsls	r1, r1, #31
 800047e:	bf4c      	ite	mi
 8000480:	2202      	movmi	r2, #2
 8000482:	f44f 3200 	movpl.w	r2, #131072	; 0x20000
 8000486:	4b0c      	ldr	r3, [pc, #48]	; (80004b8 <SWD_TransferFast+0x2fc>)
 8000488:	f44f 3180 	mov.w	r1, #65536	; 0x10000
 800048c:	601a      	str	r2, [r3, #0]
 800048e:	2201      	movs	r2, #1
 8000490:	4b09      	ldr	r3, [pc, #36]	; (80004b8 <SWD_TransferFast+0x2fc>)
 8000492:	4617      	mov	r7, r2
 8000494:	6019      	str	r1, [r3, #0]
 8000496:	601a      	str	r2, [r3, #0]
 8000498:	e7a6      	b.n	80003e8 <SWD_TransferFast+0x22c>
 800049a:	2501      	movs	r5, #1
 800049c:	f44f 3700 	mov.w	r7, #131072	; 0x20000
 80004a0:	f44f 3680 	mov.w	r6, #65536	; 0x10000
 80004a4:	f012 02ff 	ands.w	r2, r2, #255	; 0xff
 80004a8:	6007      	str	r7, [r0, #0]
 80004aa:	b2c9      	uxtb	r1, r1
 80004ac:	6006      	str	r6, [r0, #0]
 80004ae:	fa23 f305 	lsr.w	r3, r3, r5
 80004b2:	6005      	str	r5, [r0, #0]
 80004b4:	d1cb      	bne.n	800044e <SWD_TransferFast+0x292>
 80004b6:	e7e1      	b.n	800047c <SWD_TransferFast+0x2c0>
 80004b8:	40010c10 	.word	0x40010c10
 80004bc:	40010c00 	.word	0x40010c00

080004c0 <SWD_TransferSlow>:
 80004c0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80004c2:	2202      	movs	r2, #2
 80004c4:	f44f 3680 	mov.w	r6, #65536	; 0x10000
 80004c8:	4607      	mov	r7, r0
 80004ca:	4c94      	ldr	r4, [pc, #592]	; (800071c <SWD_TransferSlow+0x25c>)
 80004cc:	4b94      	ldr	r3, [pc, #592]	; (8000720 <SWD_TransferSlow+0x260>)
 80004ce:	460d      	mov	r5, r1
 80004d0:	6861      	ldr	r1, [r4, #4]
 80004d2:	b0af      	sub	sp, #188	; 0xbc
 80004d4:	601a      	str	r2, [r3, #0]
 80004d6:	601e      	str	r6, [r3, #0]
 80004d8:	910f      	str	r1, [sp, #60]	; 0x3c
 80004da:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80004dc:	3b01      	subs	r3, #1
 80004de:	930f      	str	r3, [sp, #60]	; 0x3c
 80004e0:	2b00      	cmp	r3, #0
 80004e2:	d1fa      	bne.n	80004da <SWD_TransferSlow+0x1a>
 80004e4:	2101      	movs	r1, #1
 80004e6:	6863      	ldr	r3, [r4, #4]
 80004e8:	4a8d      	ldr	r2, [pc, #564]	; (8000720 <SWD_TransferSlow+0x260>)
 80004ea:	6011      	str	r1, [r2, #0]
 80004ec:	930e      	str	r3, [sp, #56]	; 0x38
 80004ee:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80004f0:	3b01      	subs	r3, #1
 80004f2:	930e      	str	r3, [sp, #56]	; 0x38
 80004f4:	2b00      	cmp	r3, #0
 80004f6:	d1fa      	bne.n	80004ee <SWD_TransferSlow+0x2e>
 80004f8:	07fa      	lsls	r2, r7, #31
 80004fa:	bf4c      	ite	mi
 80004fc:	2202      	movmi	r2, #2
 80004fe:	f44f 3200 	movpl.w	r2, #131072	; 0x20000
 8000502:	f44f 3180 	mov.w	r1, #65536	; 0x10000
 8000506:	4b86      	ldr	r3, [pc, #536]	; (8000720 <SWD_TransferSlow+0x260>)
 8000508:	601a      	str	r2, [r3, #0]
 800050a:	6863      	ldr	r3, [r4, #4]
 800050c:	4a84      	ldr	r2, [pc, #528]	; (8000720 <SWD_TransferSlow+0x260>)
 800050e:	6011      	str	r1, [r2, #0]
 8000510:	930d      	str	r3, [sp, #52]	; 0x34
 8000512:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8000514:	3b01      	subs	r3, #1
 8000516:	930d      	str	r3, [sp, #52]	; 0x34
 8000518:	2b00      	cmp	r3, #0
 800051a:	d1fa      	bne.n	8000512 <SWD_TransferSlow+0x52>
 800051c:	2101      	movs	r1, #1
 800051e:	6863      	ldr	r3, [r4, #4]
 8000520:	4a7f      	ldr	r2, [pc, #508]	; (8000720 <SWD_TransferSlow+0x260>)
 8000522:	6011      	str	r1, [r2, #0]
 8000524:	930c      	str	r3, [sp, #48]	; 0x30
 8000526:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8000528:	3b01      	subs	r3, #1
 800052a:	930c      	str	r3, [sp, #48]	; 0x30
 800052c:	2b00      	cmp	r3, #0
 800052e:	d1fa      	bne.n	8000526 <SWD_TransferSlow+0x66>
 8000530:	0879      	lsrs	r1, r7, #1
 8000532:	07cb      	lsls	r3, r1, #31
 8000534:	bf4c      	ite	mi
 8000536:	2202      	movmi	r2, #2
 8000538:	f44f 3200 	movpl.w	r2, #131072	; 0x20000
 800053c:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 8000540:	4b77      	ldr	r3, [pc, #476]	; (8000720 <SWD_TransferSlow+0x260>)
 8000542:	601a      	str	r2, [r3, #0]
 8000544:	6863      	ldr	r3, [r4, #4]
 8000546:	4a76      	ldr	r2, [pc, #472]	; (8000720 <SWD_TransferSlow+0x260>)
 8000548:	6010      	str	r0, [r2, #0]
 800054a:	930b      	str	r3, [sp, #44]	; 0x2c
 800054c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800054e:	3b01      	subs	r3, #1
 8000550:	930b      	str	r3, [sp, #44]	; 0x2c
 8000552:	2b00      	cmp	r3, #0
 8000554:	d1fa      	bne.n	800054c <SWD_TransferSlow+0x8c>
 8000556:	2001      	movs	r0, #1
 8000558:	6863      	ldr	r3, [r4, #4]
 800055a:	4a71      	ldr	r2, [pc, #452]	; (8000720 <SWD_TransferSlow+0x260>)
 800055c:	6010      	str	r0, [r2, #0]
 800055e:	930a      	str	r3, [sp, #40]	; 0x28
 8000560:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8000562:	3b01      	subs	r3, #1
 8000564:	930a      	str	r3, [sp, #40]	; 0x28
 8000566:	2b00      	cmp	r3, #0
 8000568:	d1fa      	bne.n	8000560 <SWD_TransferSlow+0xa0>
 800056a:	08ba      	lsrs	r2, r7, #2
 800056c:	07d6      	lsls	r6, r2, #31
 800056e:	4411      	add	r1, r2
 8000570:	bf4c      	ite	mi
 8000572:	2202      	movmi	r2, #2
 8000574:	f44f 3200 	movpl.w	r2, #131072	; 0x20000
 8000578:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 800057c:	4b68      	ldr	r3, [pc, #416]	; (8000720 <SWD_TransferSlow+0x260>)
 800057e:	601a      	str	r2, [r3, #0]
 8000580:	6863      	ldr	r3, [r4, #4]
 8000582:	4a67      	ldr	r2, [pc, #412]	; (8000720 <SWD_TransferSlow+0x260>)
 8000584:	6010      	str	r0, [r2, #0]
 8000586:	9309      	str	r3, [sp, #36]	; 0x24
 8000588:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800058a:	3b01      	subs	r3, #1
 800058c:	9309      	str	r3, [sp, #36]	; 0x24
 800058e:	2b00      	cmp	r3, #0
 8000590:	d1fa      	bne.n	8000588 <SWD_TransferSlow+0xc8>
 8000592:	2001      	movs	r0, #1
 8000594:	6863      	ldr	r3, [r4, #4]
 8000596:	4a62      	ldr	r2, [pc, #392]	; (8000720 <SWD_TransferSlow+0x260>)
 8000598:	6010      	str	r0, [r2, #0]
 800059a:	9308      	str	r3, [sp, #32]
 800059c:	9b08      	ldr	r3, [sp, #32]
 800059e:	3b01      	subs	r3, #1
 80005a0:	9308      	str	r3, [sp, #32]
 80005a2:	2b00      	cmp	r3, #0
 80005a4:	d1fa      	bne.n	800059c <SWD_TransferSlow+0xdc>
 80005a6:	19cb      	adds	r3, r1, r7
 80005a8:	08f9      	lsrs	r1, r7, #3
 80005aa:	07c8      	lsls	r0, r1, #31
 80005ac:	bf4c      	ite	mi
 80005ae:	2002      	movmi	r0, #2
 80005b0:	f44f 3000 	movpl.w	r0, #131072	; 0x20000
 80005b4:	f44f 3680 	mov.w	r6, #65536	; 0x10000
 80005b8:	b2da      	uxtb	r2, r3
 80005ba:	4b59      	ldr	r3, [pc, #356]	; (8000720 <SWD_TransferSlow+0x260>)
 80005bc:	6018      	str	r0, [r3, #0]
 80005be:	6863      	ldr	r3, [r4, #4]
 80005c0:	4857      	ldr	r0, [pc, #348]	; (8000720 <SWD_TransferSlow+0x260>)
 80005c2:	6006      	str	r6, [r0, #0]
 80005c4:	9307      	str	r3, [sp, #28]
 80005c6:	9b07      	ldr	r3, [sp, #28]
 80005c8:	3b01      	subs	r3, #1
 80005ca:	9307      	str	r3, [sp, #28]
 80005cc:	2b00      	cmp	r3, #0
 80005ce:	d1fa      	bne.n	80005c6 <SWD_TransferSlow+0x106>
 80005d0:	2601      	movs	r6, #1
 80005d2:	6863      	ldr	r3, [r4, #4]
 80005d4:	4852      	ldr	r0, [pc, #328]	; (8000720 <SWD_TransferSlow+0x260>)
 80005d6:	6006      	str	r6, [r0, #0]
 80005d8:	9306      	str	r3, [sp, #24]
 80005da:	9b06      	ldr	r3, [sp, #24]
 80005dc:	3b01      	subs	r3, #1
 80005de:	9306      	str	r3, [sp, #24]
 80005e0:	2b00      	cmp	r3, #0
 80005e2:	d1fa      	bne.n	80005da <SWD_TransferSlow+0x11a>
 80005e4:	1853      	adds	r3, r2, r1
 80005e6:	07db      	lsls	r3, r3, #31
 80005e8:	bf4c      	ite	mi
 80005ea:	2202      	movmi	r2, #2
 80005ec:	f44f 3200 	movpl.w	r2, #131072	; 0x20000
 80005f0:	f44f 3180 	mov.w	r1, #65536	; 0x10000
 80005f4:	4b4a      	ldr	r3, [pc, #296]	; (8000720 <SWD_TransferSlow+0x260>)
 80005f6:	601a      	str	r2, [r3, #0]
 80005f8:	6863      	ldr	r3, [r4, #4]
 80005fa:	4a49      	ldr	r2, [pc, #292]	; (8000720 <SWD_TransferSlow+0x260>)
 80005fc:	6011      	str	r1, [r2, #0]
 80005fe:	9305      	str	r3, [sp, #20]
 8000600:	9b05      	ldr	r3, [sp, #20]
 8000602:	3b01      	subs	r3, #1
 8000604:	9305      	str	r3, [sp, #20]
 8000606:	2b00      	cmp	r3, #0
 8000608:	d1fa      	bne.n	8000600 <SWD_TransferSlow+0x140>
 800060a:	2101      	movs	r1, #1
 800060c:	6863      	ldr	r3, [r4, #4]
 800060e:	4a44      	ldr	r2, [pc, #272]	; (8000720 <SWD_TransferSlow+0x260>)
 8000610:	6011      	str	r1, [r2, #0]
 8000612:	9304      	str	r3, [sp, #16]
 8000614:	9b04      	ldr	r3, [sp, #16]
 8000616:	3b01      	subs	r3, #1
 8000618:	9304      	str	r3, [sp, #16]
 800061a:	2b00      	cmp	r3, #0
 800061c:	d1fa      	bne.n	8000614 <SWD_TransferSlow+0x154>
 800061e:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8000622:	f44f 3180 	mov.w	r1, #65536	; 0x10000
 8000626:	6862      	ldr	r2, [r4, #4]
 8000628:	4b3d      	ldr	r3, [pc, #244]	; (8000720 <SWD_TransferSlow+0x260>)
 800062a:	6018      	str	r0, [r3, #0]
 800062c:	6019      	str	r1, [r3, #0]
 800062e:	9203      	str	r2, [sp, #12]
 8000630:	9b03      	ldr	r3, [sp, #12]
 8000632:	3b01      	subs	r3, #1
 8000634:	9303      	str	r3, [sp, #12]
 8000636:	2b00      	cmp	r3, #0
 8000638:	d1fa      	bne.n	8000630 <SWD_TransferSlow+0x170>
 800063a:	2101      	movs	r1, #1
 800063c:	6863      	ldr	r3, [r4, #4]
 800063e:	4a38      	ldr	r2, [pc, #224]	; (8000720 <SWD_TransferSlow+0x260>)
 8000640:	6011      	str	r1, [r2, #0]
 8000642:	9302      	str	r3, [sp, #8]
 8000644:	9b02      	ldr	r3, [sp, #8]
 8000646:	3b01      	subs	r3, #1
 8000648:	9302      	str	r3, [sp, #8]
 800064a:	2b00      	cmp	r3, #0
 800064c:	d1fa      	bne.n	8000644 <SWD_TransferSlow+0x184>
 800064e:	2002      	movs	r0, #2
 8000650:	f44f 3180 	mov.w	r1, #65536	; 0x10000
 8000654:	6862      	ldr	r2, [r4, #4]
 8000656:	4b32      	ldr	r3, [pc, #200]	; (8000720 <SWD_TransferSlow+0x260>)
 8000658:	6018      	str	r0, [r3, #0]
 800065a:	6019      	str	r1, [r3, #0]
 800065c:	9201      	str	r2, [sp, #4]
 800065e:	9b01      	ldr	r3, [sp, #4]
 8000660:	3b01      	subs	r3, #1
 8000662:	9301      	str	r3, [sp, #4]
 8000664:	2b00      	cmp	r3, #0
 8000666:	d1fa      	bne.n	800065e <SWD_TransferSlow+0x19e>
 8000668:	2101      	movs	r1, #1
 800066a:	6863      	ldr	r3, [r4, #4]
 800066c:	4a2c      	ldr	r2, [pc, #176]	; (8000720 <SWD_TransferSlow+0x260>)
 800066e:	6011      	str	r1, [r2, #0]
 8000670:	9300      	str	r3, [sp, #0]
 8000672:	9900      	ldr	r1, [sp, #0]
 8000674:	3901      	subs	r1, #1
 8000676:	9100      	str	r1, [sp, #0]
 8000678:	2900      	cmp	r1, #0
 800067a:	d1fa      	bne.n	8000672 <SWD_TransferSlow+0x1b2>
 800067c:	2302      	movs	r3, #2
 800067e:	4829      	ldr	r0, [pc, #164]	; (8000724 <SWD_TransferSlow+0x264>)
 8000680:	461a      	mov	r2, r3
 8000682:	f003 fb5f 	bl	8003d44 <gpio_set_mode>
 8000686:	2102      	movs	r1, #2
 8000688:	4826      	ldr	r0, [pc, #152]	; (8000724 <SWD_TransferSlow+0x264>)
 800068a:	f003 fc89 	bl	8003fa0 <gpio_set>
 800068e:	7d22      	ldrb	r2, [r4, #20]
 8000690:	b1c2      	cbz	r2, 80006c4 <SWD_TransferSlow+0x204>
 8000692:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 8000696:	6863      	ldr	r3, [r4, #4]
 8000698:	4921      	ldr	r1, [pc, #132]	; (8000720 <SWD_TransferSlow+0x260>)
 800069a:	6008      	str	r0, [r1, #0]
 800069c:	9311      	str	r3, [sp, #68]	; 0x44
 800069e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80006a0:	3b01      	subs	r3, #1
 80006a2:	9311      	str	r3, [sp, #68]	; 0x44
 80006a4:	2b00      	cmp	r3, #0
 80006a6:	d1fa      	bne.n	800069e <SWD_TransferSlow+0x1de>
 80006a8:	2001      	movs	r0, #1
 80006aa:	6863      	ldr	r3, [r4, #4]
 80006ac:	491c      	ldr	r1, [pc, #112]	; (8000720 <SWD_TransferSlow+0x260>)
 80006ae:	6008      	str	r0, [r1, #0]
 80006b0:	9310      	str	r3, [sp, #64]	; 0x40
 80006b2:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80006b4:	3b01      	subs	r3, #1
 80006b6:	9310      	str	r3, [sp, #64]	; 0x40
 80006b8:	2b00      	cmp	r3, #0
 80006ba:	d1fa      	bne.n	80006b2 <SWD_TransferSlow+0x1f2>
 80006bc:	1e53      	subs	r3, r2, #1
 80006be:	f013 02ff 	ands.w	r2, r3, #255	; 0xff
 80006c2:	d1e6      	bne.n	8000692 <SWD_TransferSlow+0x1d2>
 80006c4:	f44f 3180 	mov.w	r1, #65536	; 0x10000
 80006c8:	6863      	ldr	r3, [r4, #4]
 80006ca:	4a15      	ldr	r2, [pc, #84]	; (8000720 <SWD_TransferSlow+0x260>)
 80006cc:	6011      	str	r1, [r2, #0]
 80006ce:	9317      	str	r3, [sp, #92]	; 0x5c
 80006d0:	9b17      	ldr	r3, [sp, #92]	; 0x5c
 80006d2:	3b01      	subs	r3, #1
 80006d4:	9317      	str	r3, [sp, #92]	; 0x5c
 80006d6:	2b00      	cmp	r3, #0
 80006d8:	d1fa      	bne.n	80006d0 <SWD_TransferSlow+0x210>
 80006da:	2001      	movs	r0, #1
 80006dc:	4b12      	ldr	r3, [pc, #72]	; (8000728 <SWD_TransferSlow+0x268>)
 80006de:	4a10      	ldr	r2, [pc, #64]	; (8000720 <SWD_TransferSlow+0x260>)
 80006e0:	6819      	ldr	r1, [r3, #0]
 80006e2:	6863      	ldr	r3, [r4, #4]
 80006e4:	f3c1 0140 	ubfx	r1, r1, #1, #1
 80006e8:	6010      	str	r0, [r2, #0]
 80006ea:	9316      	str	r3, [sp, #88]	; 0x58
 80006ec:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80006ee:	3b01      	subs	r3, #1
 80006f0:	9316      	str	r3, [sp, #88]	; 0x58
 80006f2:	2b00      	cmp	r3, #0
 80006f4:	d1fa      	bne.n	80006ec <SWD_TransferSlow+0x22c>
 80006f6:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 80006fa:	6863      	ldr	r3, [r4, #4]
 80006fc:	4a08      	ldr	r2, [pc, #32]	; (8000720 <SWD_TransferSlow+0x260>)
 80006fe:	6010      	str	r0, [r2, #0]
 8000700:	9315      	str	r3, [sp, #84]	; 0x54
 8000702:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8000704:	3b01      	subs	r3, #1
 8000706:	9315      	str	r3, [sp, #84]	; 0x54
 8000708:	2b00      	cmp	r3, #0
 800070a:	d1fa      	bne.n	8000702 <SWD_TransferSlow+0x242>
 800070c:	2001      	movs	r0, #1
 800070e:	4b06      	ldr	r3, [pc, #24]	; (8000728 <SWD_TransferSlow+0x268>)
 8000710:	4e03      	ldr	r6, [pc, #12]	; (8000720 <SWD_TransferSlow+0x260>)
 8000712:	681a      	ldr	r2, [r3, #0]
 8000714:	6863      	ldr	r3, [r4, #4]
 8000716:	f3c2 0240 	ubfx	r2, r2, #1, #1
 800071a:	e007      	b.n	800072c <SWD_TransferSlow+0x26c>
 800071c:	200004a0 	.word	0x200004a0
 8000720:	40010c10 	.word	0x40010c10
 8000724:	40010c00 	.word	0x40010c00
 8000728:	40010c08 	.word	0x40010c08
 800072c:	6030      	str	r0, [r6, #0]
 800072e:	9314      	str	r3, [sp, #80]	; 0x50
 8000730:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8000732:	3b01      	subs	r3, #1
 8000734:	9314      	str	r3, [sp, #80]	; 0x50
 8000736:	2b00      	cmp	r3, #0
 8000738:	d1fa      	bne.n	8000730 <SWD_TransferSlow+0x270>
 800073a:	f44f 3e80 	mov.w	lr, #65536	; 0x10000
 800073e:	488e      	ldr	r0, [pc, #568]	; (8000978 <SWD_TransferSlow+0x4b8>)
 8000740:	0053      	lsls	r3, r2, #1
 8000742:	f8c0 e000 	str.w	lr, [r0]
 8000746:	b25a      	sxtb	r2, r3
 8000748:	6863      	ldr	r3, [r4, #4]
 800074a:	b24e      	sxtb	r6, r1
 800074c:	9313      	str	r3, [sp, #76]	; 0x4c
 800074e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8000750:	3b01      	subs	r3, #1
 8000752:	9313      	str	r3, [sp, #76]	; 0x4c
 8000754:	2b00      	cmp	r3, #0
 8000756:	d1fa      	bne.n	800074e <SWD_TransferSlow+0x28e>
 8000758:	f04f 0c01 	mov.w	ip, #1
 800075c:	4b87      	ldr	r3, [pc, #540]	; (800097c <SWD_TransferSlow+0x4bc>)
 800075e:	4886      	ldr	r0, [pc, #536]	; (8000978 <SWD_TransferSlow+0x4b8>)
 8000760:	6819      	ldr	r1, [r3, #0]
 8000762:	6863      	ldr	r3, [r4, #4]
 8000764:	f3c1 0140 	ubfx	r1, r1, #1, #1
 8000768:	f8c0 c000 	str.w	ip, [r0]
 800076c:	9312      	str	r3, [sp, #72]	; 0x48
 800076e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8000770:	3b01      	subs	r3, #1
 8000772:	9312      	str	r3, [sp, #72]	; 0x48
 8000774:	2b00      	cmp	r3, #0
 8000776:	d1fa      	bne.n	800076e <SWD_TransferSlow+0x2ae>
 8000778:	ea42 0281 	orr.w	r2, r2, r1, lsl #2
 800077c:	4332      	orrs	r2, r6
 800077e:	2a01      	cmp	r2, #1
 8000780:	b2d6      	uxtb	r6, r2
 8000782:	f000 808b 	beq.w	800089c <SWD_TransferSlow+0x3dc>
 8000786:	2e02      	cmp	r6, #2
 8000788:	d025      	beq.n	80007d6 <SWD_TransferSlow+0x316>
 800078a:	2e04      	cmp	r6, #4
 800078c:	d023      	beq.n	80007d6 <SWD_TransferSlow+0x316>
 800078e:	7d23      	ldrb	r3, [r4, #20]
 8000790:	3321      	adds	r3, #33	; 0x21
 8000792:	f013 02ff 	ands.w	r2, r3, #255	; 0xff
 8000796:	d018      	beq.n	80007ca <SWD_TransferSlow+0x30a>
 8000798:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 800079c:	6863      	ldr	r3, [r4, #4]
 800079e:	4976      	ldr	r1, [pc, #472]	; (8000978 <SWD_TransferSlow+0x4b8>)
 80007a0:	6008      	str	r0, [r1, #0]
 80007a2:	932d      	str	r3, [sp, #180]	; 0xb4
 80007a4:	9b2d      	ldr	r3, [sp, #180]	; 0xb4
 80007a6:	3b01      	subs	r3, #1
 80007a8:	932d      	str	r3, [sp, #180]	; 0xb4
 80007aa:	2b00      	cmp	r3, #0
 80007ac:	d1fa      	bne.n	80007a4 <SWD_TransferSlow+0x2e4>
 80007ae:	2001      	movs	r0, #1
 80007b0:	6863      	ldr	r3, [r4, #4]
 80007b2:	4971      	ldr	r1, [pc, #452]	; (8000978 <SWD_TransferSlow+0x4b8>)
 80007b4:	6008      	str	r0, [r1, #0]
 80007b6:	932c      	str	r3, [sp, #176]	; 0xb0
 80007b8:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 80007ba:	3b01      	subs	r3, #1
 80007bc:	932c      	str	r3, [sp, #176]	; 0xb0
 80007be:	2b00      	cmp	r3, #0
 80007c0:	d1fa      	bne.n	80007b8 <SWD_TransferSlow+0x2f8>
 80007c2:	1e53      	subs	r3, r2, #1
 80007c4:	f013 02ff 	ands.w	r2, r3, #255	; 0xff
 80007c8:	d1e6      	bne.n	8000798 <SWD_TransferSlow+0x2d8>
 80007ca:	2202      	movs	r2, #2
 80007cc:	4630      	mov	r0, r6
 80007ce:	4b6a      	ldr	r3, [pc, #424]	; (8000978 <SWD_TransferSlow+0x4b8>)
 80007d0:	601a      	str	r2, [r3, #0]
 80007d2:	b02f      	add	sp, #188	; 0xbc
 80007d4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80007d6:	7d63      	ldrb	r3, [r4, #21]
 80007d8:	b1db      	cbz	r3, 8000812 <SWD_TransferSlow+0x352>
 80007da:	07ba      	lsls	r2, r7, #30
 80007dc:	d519      	bpl.n	8000812 <SWD_TransferSlow+0x352>
 80007de:	2221      	movs	r2, #33	; 0x21
 80007e0:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 80007e4:	6863      	ldr	r3, [r4, #4]
 80007e6:	4964      	ldr	r1, [pc, #400]	; (8000978 <SWD_TransferSlow+0x4b8>)
 80007e8:	6008      	str	r0, [r1, #0]
 80007ea:	9327      	str	r3, [sp, #156]	; 0x9c
 80007ec:	9b27      	ldr	r3, [sp, #156]	; 0x9c
 80007ee:	3b01      	subs	r3, #1
 80007f0:	9327      	str	r3, [sp, #156]	; 0x9c
 80007f2:	2b00      	cmp	r3, #0
 80007f4:	d1fa      	bne.n	80007ec <SWD_TransferSlow+0x32c>
 80007f6:	2001      	movs	r0, #1
 80007f8:	6863      	ldr	r3, [r4, #4]
 80007fa:	495f      	ldr	r1, [pc, #380]	; (8000978 <SWD_TransferSlow+0x4b8>)
 80007fc:	6008      	str	r0, [r1, #0]
 80007fe:	9326      	str	r3, [sp, #152]	; 0x98
 8000800:	9b26      	ldr	r3, [sp, #152]	; 0x98
 8000802:	3b01      	subs	r3, #1
 8000804:	9326      	str	r3, [sp, #152]	; 0x98
 8000806:	2b00      	cmp	r3, #0
 8000808:	d1fa      	bne.n	8000800 <SWD_TransferSlow+0x340>
 800080a:	1e53      	subs	r3, r2, #1
 800080c:	f013 02ff 	ands.w	r2, r3, #255	; 0xff
 8000810:	d1e6      	bne.n	80007e0 <SWD_TransferSlow+0x320>
 8000812:	7d22      	ldrb	r2, [r4, #20]
 8000814:	b1c2      	cbz	r2, 8000848 <SWD_TransferSlow+0x388>
 8000816:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 800081a:	6863      	ldr	r3, [r4, #4]
 800081c:	4956      	ldr	r1, [pc, #344]	; (8000978 <SWD_TransferSlow+0x4b8>)
 800081e:	6008      	str	r0, [r1, #0]
 8000820:	9329      	str	r3, [sp, #164]	; 0xa4
 8000822:	9b29      	ldr	r3, [sp, #164]	; 0xa4
 8000824:	3b01      	subs	r3, #1
 8000826:	9329      	str	r3, [sp, #164]	; 0xa4
 8000828:	2b00      	cmp	r3, #0
 800082a:	d1fa      	bne.n	8000822 <SWD_TransferSlow+0x362>
 800082c:	2001      	movs	r0, #1
 800082e:	6863      	ldr	r3, [r4, #4]
 8000830:	4951      	ldr	r1, [pc, #324]	; (8000978 <SWD_TransferSlow+0x4b8>)
 8000832:	6008      	str	r0, [r1, #0]
 8000834:	9328      	str	r3, [sp, #160]	; 0xa0
 8000836:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8000838:	3b01      	subs	r3, #1
 800083a:	9328      	str	r3, [sp, #160]	; 0xa0
 800083c:	2b00      	cmp	r3, #0
 800083e:	d1fa      	bne.n	8000836 <SWD_TransferSlow+0x376>
 8000840:	1e53      	subs	r3, r2, #1
 8000842:	f013 02ff 	ands.w	r2, r3, #255	; 0xff
 8000846:	d1e6      	bne.n	8000816 <SWD_TransferSlow+0x356>
 8000848:	2302      	movs	r3, #2
 800084a:	2200      	movs	r2, #0
 800084c:	2101      	movs	r1, #1
 800084e:	484c      	ldr	r0, [pc, #304]	; (8000980 <SWD_TransferSlow+0x4c0>)
 8000850:	f003 fa78 	bl	8003d44 <gpio_set_mode>
 8000854:	7d63      	ldrb	r3, [r4, #21]
 8000856:	2b00      	cmp	r3, #0
 8000858:	d0b7      	beq.n	80007ca <SWD_TransferSlow+0x30a>
 800085a:	07bb      	lsls	r3, r7, #30
 800085c:	d4b5      	bmi.n	80007ca <SWD_TransferSlow+0x30a>
 800085e:	f44f 3100 	mov.w	r1, #131072	; 0x20000
 8000862:	2221      	movs	r2, #33	; 0x21
 8000864:	4b44      	ldr	r3, [pc, #272]	; (8000978 <SWD_TransferSlow+0x4b8>)
 8000866:	6019      	str	r1, [r3, #0]
 8000868:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 800086c:	6863      	ldr	r3, [r4, #4]
 800086e:	4942      	ldr	r1, [pc, #264]	; (8000978 <SWD_TransferSlow+0x4b8>)
 8000870:	6008      	str	r0, [r1, #0]
 8000872:	932b      	str	r3, [sp, #172]	; 0xac
 8000874:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8000876:	3b01      	subs	r3, #1
 8000878:	932b      	str	r3, [sp, #172]	; 0xac
 800087a:	2b00      	cmp	r3, #0
 800087c:	d1fa      	bne.n	8000874 <SWD_TransferSlow+0x3b4>
 800087e:	2001      	movs	r0, #1
 8000880:	6863      	ldr	r3, [r4, #4]
 8000882:	493d      	ldr	r1, [pc, #244]	; (8000978 <SWD_TransferSlow+0x4b8>)
 8000884:	6008      	str	r0, [r1, #0]
 8000886:	932a      	str	r3, [sp, #168]	; 0xa8
 8000888:	9b2a      	ldr	r3, [sp, #168]	; 0xa8
 800088a:	3b01      	subs	r3, #1
 800088c:	932a      	str	r3, [sp, #168]	; 0xa8
 800088e:	2b00      	cmp	r3, #0
 8000890:	d1fa      	bne.n	8000888 <SWD_TransferSlow+0x3c8>
 8000892:	1e53      	subs	r3, r2, #1
 8000894:	f013 02ff 	ands.w	r2, r3, #255	; 0xff
 8000898:	d1e6      	bne.n	8000868 <SWD_TransferSlow+0x3a8>
 800089a:	e796      	b.n	80007ca <SWD_TransferSlow+0x30a>
 800089c:	07be      	lsls	r6, r7, #30
 800089e:	d571      	bpl.n	8000984 <SWD_TransferSlow+0x4c4>
 80008a0:	461a      	mov	r2, r3
 80008a2:	2020      	movs	r0, #32
 80008a4:	461f      	mov	r7, r3
 80008a6:	f44f 3680 	mov.w	r6, #65536	; 0x10000
 80008aa:	6863      	ldr	r3, [r4, #4]
 80008ac:	4932      	ldr	r1, [pc, #200]	; (8000978 <SWD_TransferSlow+0x4b8>)
 80008ae:	600e      	str	r6, [r1, #0]
 80008b0:	9319      	str	r3, [sp, #100]	; 0x64
 80008b2:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80008b4:	3b01      	subs	r3, #1
 80008b6:	9319      	str	r3, [sp, #100]	; 0x64
 80008b8:	2b00      	cmp	r3, #0
 80008ba:	d1fa      	bne.n	80008b2 <SWD_TransferSlow+0x3f2>
 80008bc:	f04f 0c01 	mov.w	ip, #1
 80008c0:	4b2e      	ldr	r3, [pc, #184]	; (800097c <SWD_TransferSlow+0x4bc>)
 80008c2:	4e2d      	ldr	r6, [pc, #180]	; (8000978 <SWD_TransferSlow+0x4b8>)
 80008c4:	6819      	ldr	r1, [r3, #0]
 80008c6:	6863      	ldr	r3, [r4, #4]
 80008c8:	f3c1 0140 	ubfx	r1, r1, #1, #1
 80008cc:	f8c6 c000 	str.w	ip, [r6]
 80008d0:	9318      	str	r3, [sp, #96]	; 0x60
 80008d2:	9b18      	ldr	r3, [sp, #96]	; 0x60
 80008d4:	3b01      	subs	r3, #1
 80008d6:	9318      	str	r3, [sp, #96]	; 0x60
 80008d8:	2b00      	cmp	r3, #0
 80008da:	d1fa      	bne.n	80008d2 <SWD_TransferSlow+0x412>
 80008dc:	3801      	subs	r0, #1
 80008de:	188b      	adds	r3, r1, r2
 80008e0:	f010 00ff 	ands.w	r0, r0, #255	; 0xff
 80008e4:	ea4f 71c1 	mov.w	r1, r1, lsl #31
 80008e8:	b2da      	uxtb	r2, r3
 80008ea:	ea41 0757 	orr.w	r7, r1, r7, lsr #1
 80008ee:	d1da      	bne.n	80008a6 <SWD_TransferSlow+0x3e6>
 80008f0:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 80008f4:	6863      	ldr	r3, [r4, #4]
 80008f6:	4920      	ldr	r1, [pc, #128]	; (8000978 <SWD_TransferSlow+0x4b8>)
 80008f8:	6008      	str	r0, [r1, #0]
 80008fa:	931b      	str	r3, [sp, #108]	; 0x6c
 80008fc:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80008fe:	3b01      	subs	r3, #1
 8000900:	931b      	str	r3, [sp, #108]	; 0x6c
 8000902:	2b00      	cmp	r3, #0
 8000904:	d1fa      	bne.n	80008fc <SWD_TransferSlow+0x43c>
 8000906:	2001      	movs	r0, #1
 8000908:	4b1c      	ldr	r3, [pc, #112]	; (800097c <SWD_TransferSlow+0x4bc>)
 800090a:	4e1b      	ldr	r6, [pc, #108]	; (8000978 <SWD_TransferSlow+0x4b8>)
 800090c:	6819      	ldr	r1, [r3, #0]
 800090e:	6863      	ldr	r3, [r4, #4]
 8000910:	f3c1 0140 	ubfx	r1, r1, #1, #1
 8000914:	6030      	str	r0, [r6, #0]
 8000916:	931a      	str	r3, [sp, #104]	; 0x68
 8000918:	9b1a      	ldr	r3, [sp, #104]	; 0x68
 800091a:	3b01      	subs	r3, #1
 800091c:	931a      	str	r3, [sp, #104]	; 0x68
 800091e:	2b00      	cmp	r3, #0
 8000920:	d1fa      	bne.n	8000918 <SWD_TransferSlow+0x458>
 8000922:	ea82 0301 	eor.w	r3, r2, r1
 8000926:	f013 0f01 	tst.w	r3, #1
 800092a:	bf0c      	ite	eq
 800092c:	2601      	moveq	r6, #1
 800092e:	2608      	movne	r6, #8
 8000930:	b105      	cbz	r5, 8000934 <SWD_TransferSlow+0x474>
 8000932:	602f      	str	r7, [r5, #0]
 8000934:	7d22      	ldrb	r2, [r4, #20]
 8000936:	b1c2      	cbz	r2, 800096a <SWD_TransferSlow+0x4aa>
 8000938:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 800093c:	6863      	ldr	r3, [r4, #4]
 800093e:	490e      	ldr	r1, [pc, #56]	; (8000978 <SWD_TransferSlow+0x4b8>)
 8000940:	6008      	str	r0, [r1, #0]
 8000942:	931d      	str	r3, [sp, #116]	; 0x74
 8000944:	9b1d      	ldr	r3, [sp, #116]	; 0x74
 8000946:	3b01      	subs	r3, #1
 8000948:	931d      	str	r3, [sp, #116]	; 0x74
 800094a:	2b00      	cmp	r3, #0
 800094c:	d1fa      	bne.n	8000944 <SWD_TransferSlow+0x484>
 800094e:	2001      	movs	r0, #1
 8000950:	6863      	ldr	r3, [r4, #4]
 8000952:	4909      	ldr	r1, [pc, #36]	; (8000978 <SWD_TransferSlow+0x4b8>)
 8000954:	6008      	str	r0, [r1, #0]
 8000956:	931c      	str	r3, [sp, #112]	; 0x70
 8000958:	9b1c      	ldr	r3, [sp, #112]	; 0x70
 800095a:	3b01      	subs	r3, #1
 800095c:	931c      	str	r3, [sp, #112]	; 0x70
 800095e:	2b00      	cmp	r3, #0
 8000960:	d1fa      	bne.n	8000958 <SWD_TransferSlow+0x498>
 8000962:	1e53      	subs	r3, r2, #1
 8000964:	f013 02ff 	ands.w	r2, r3, #255	; 0xff
 8000968:	d1e6      	bne.n	8000938 <SWD_TransferSlow+0x478>
 800096a:	2302      	movs	r3, #2
 800096c:	2200      	movs	r2, #0
 800096e:	2101      	movs	r1, #1
 8000970:	4803      	ldr	r0, [pc, #12]	; (8000980 <SWD_TransferSlow+0x4c0>)
 8000972:	f003 f9e7 	bl	8003d44 <gpio_set_mode>
 8000976:	e06a      	b.n	8000a4e <SWD_TransferSlow+0x58e>
 8000978:	40010c10 	.word	0x40010c10
 800097c:	40010c08 	.word	0x40010c08
 8000980:	40010c00 	.word	0x40010c00
 8000984:	7d22      	ldrb	r2, [r4, #20]
 8000986:	b1c2      	cbz	r2, 80009ba <SWD_TransferSlow+0x4fa>
 8000988:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 800098c:	6863      	ldr	r3, [r4, #4]
 800098e:	4941      	ldr	r1, [pc, #260]	; (8000a94 <SWD_TransferSlow+0x5d4>)
 8000990:	6008      	str	r0, [r1, #0]
 8000992:	931f      	str	r3, [sp, #124]	; 0x7c
 8000994:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
 8000996:	3b01      	subs	r3, #1
 8000998:	931f      	str	r3, [sp, #124]	; 0x7c
 800099a:	2b00      	cmp	r3, #0
 800099c:	d1fa      	bne.n	8000994 <SWD_TransferSlow+0x4d4>
 800099e:	2001      	movs	r0, #1
 80009a0:	6863      	ldr	r3, [r4, #4]
 80009a2:	493c      	ldr	r1, [pc, #240]	; (8000a94 <SWD_TransferSlow+0x5d4>)
 80009a4:	6008      	str	r0, [r1, #0]
 80009a6:	931e      	str	r3, [sp, #120]	; 0x78
 80009a8:	9b1e      	ldr	r3, [sp, #120]	; 0x78
 80009aa:	3b01      	subs	r3, #1
 80009ac:	931e      	str	r3, [sp, #120]	; 0x78
 80009ae:	2b00      	cmp	r3, #0
 80009b0:	d1fa      	bne.n	80009a8 <SWD_TransferSlow+0x4e8>
 80009b2:	1e53      	subs	r3, r2, #1
 80009b4:	f013 02ff 	ands.w	r2, r3, #255	; 0xff
 80009b8:	d1e6      	bne.n	8000988 <SWD_TransferSlow+0x4c8>
 80009ba:	2200      	movs	r2, #0
 80009bc:	2101      	movs	r1, #1
 80009be:	4836      	ldr	r0, [pc, #216]	; (8000a98 <SWD_TransferSlow+0x5d8>)
 80009c0:	2302      	movs	r3, #2
 80009c2:	f003 f9bf 	bl	8003d44 <gpio_set_mode>
 80009c6:	2220      	movs	r2, #32
 80009c8:	2100      	movs	r1, #0
 80009ca:	6828      	ldr	r0, [r5, #0]
 80009cc:	07c5      	lsls	r5, r0, #31
 80009ce:	bf4c      	ite	mi
 80009d0:	2502      	movmi	r5, #2
 80009d2:	f44f 3500 	movpl.w	r5, #131072	; 0x20000
 80009d6:	f44f 3680 	mov.w	r6, #65536	; 0x10000
 80009da:	4b2e      	ldr	r3, [pc, #184]	; (8000a94 <SWD_TransferSlow+0x5d4>)
 80009dc:	601d      	str	r5, [r3, #0]
 80009de:	6863      	ldr	r3, [r4, #4]
 80009e0:	4d2c      	ldr	r5, [pc, #176]	; (8000a94 <SWD_TransferSlow+0x5d4>)
 80009e2:	602e      	str	r6, [r5, #0]
 80009e4:	9321      	str	r3, [sp, #132]	; 0x84
 80009e6:	9b21      	ldr	r3, [sp, #132]	; 0x84
 80009e8:	3b01      	subs	r3, #1
 80009ea:	9321      	str	r3, [sp, #132]	; 0x84
 80009ec:	2b00      	cmp	r3, #0
 80009ee:	d1fa      	bne.n	80009e6 <SWD_TransferSlow+0x526>
 80009f0:	2601      	movs	r6, #1
 80009f2:	6863      	ldr	r3, [r4, #4]
 80009f4:	4d27      	ldr	r5, [pc, #156]	; (8000a94 <SWD_TransferSlow+0x5d4>)
 80009f6:	602e      	str	r6, [r5, #0]
 80009f8:	9320      	str	r3, [sp, #128]	; 0x80
 80009fa:	9b20      	ldr	r3, [sp, #128]	; 0x80
 80009fc:	3b01      	subs	r3, #1
 80009fe:	9320      	str	r3, [sp, #128]	; 0x80
 8000a00:	2b00      	cmp	r3, #0
 8000a02:	d1fa      	bne.n	80009fa <SWD_TransferSlow+0x53a>
 8000a04:	1e53      	subs	r3, r2, #1
 8000a06:	4401      	add	r1, r0
 8000a08:	f013 02ff 	ands.w	r2, r3, #255	; 0xff
 8000a0c:	b2c9      	uxtb	r1, r1
 8000a0e:	ea4f 0050 	mov.w	r0, r0, lsr #1
 8000a12:	d1db      	bne.n	80009cc <SWD_TransferSlow+0x50c>
 8000a14:	07c9      	lsls	r1, r1, #31
 8000a16:	bf4c      	ite	mi
 8000a18:	2202      	movmi	r2, #2
 8000a1a:	f44f 3200 	movpl.w	r2, #131072	; 0x20000
 8000a1e:	f44f 3180 	mov.w	r1, #65536	; 0x10000
 8000a22:	4b1c      	ldr	r3, [pc, #112]	; (8000a94 <SWD_TransferSlow+0x5d4>)
 8000a24:	601a      	str	r2, [r3, #0]
 8000a26:	6863      	ldr	r3, [r4, #4]
 8000a28:	4a1a      	ldr	r2, [pc, #104]	; (8000a94 <SWD_TransferSlow+0x5d4>)
 8000a2a:	6011      	str	r1, [r2, #0]
 8000a2c:	9323      	str	r3, [sp, #140]	; 0x8c
 8000a2e:	9b23      	ldr	r3, [sp, #140]	; 0x8c
 8000a30:	3b01      	subs	r3, #1
 8000a32:	9323      	str	r3, [sp, #140]	; 0x8c
 8000a34:	2b00      	cmp	r3, #0
 8000a36:	d1fa      	bne.n	8000a2e <SWD_TransferSlow+0x56e>
 8000a38:	2101      	movs	r1, #1
 8000a3a:	6863      	ldr	r3, [r4, #4]
 8000a3c:	4a15      	ldr	r2, [pc, #84]	; (8000a94 <SWD_TransferSlow+0x5d4>)
 8000a3e:	6011      	str	r1, [r2, #0]
 8000a40:	9322      	str	r3, [sp, #136]	; 0x88
 8000a42:	9b22      	ldr	r3, [sp, #136]	; 0x88
 8000a44:	3b01      	subs	r3, #1
 8000a46:	9322      	str	r3, [sp, #136]	; 0x88
 8000a48:	2b00      	cmp	r3, #0
 8000a4a:	d1fa      	bne.n	8000a42 <SWD_TransferSlow+0x582>
 8000a4c:	2601      	movs	r6, #1
 8000a4e:	7a22      	ldrb	r2, [r4, #8]
 8000a50:	2a00      	cmp	r2, #0
 8000a52:	f43f aeba 	beq.w	80007ca <SWD_TransferSlow+0x30a>
 8000a56:	f44f 3100 	mov.w	r1, #131072	; 0x20000
 8000a5a:	4b0e      	ldr	r3, [pc, #56]	; (8000a94 <SWD_TransferSlow+0x5d4>)
 8000a5c:	6019      	str	r1, [r3, #0]
 8000a5e:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 8000a62:	6863      	ldr	r3, [r4, #4]
 8000a64:	490b      	ldr	r1, [pc, #44]	; (8000a94 <SWD_TransferSlow+0x5d4>)
 8000a66:	6008      	str	r0, [r1, #0]
 8000a68:	9325      	str	r3, [sp, #148]	; 0x94
 8000a6a:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8000a6c:	3b01      	subs	r3, #1
 8000a6e:	9325      	str	r3, [sp, #148]	; 0x94
 8000a70:	2b00      	cmp	r3, #0
 8000a72:	d1fa      	bne.n	8000a6a <SWD_TransferSlow+0x5aa>
 8000a74:	2001      	movs	r0, #1
 8000a76:	6863      	ldr	r3, [r4, #4]
 8000a78:	4906      	ldr	r1, [pc, #24]	; (8000a94 <SWD_TransferSlow+0x5d4>)
 8000a7a:	6008      	str	r0, [r1, #0]
 8000a7c:	9324      	str	r3, [sp, #144]	; 0x90
 8000a7e:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8000a80:	3b01      	subs	r3, #1
 8000a82:	9324      	str	r3, [sp, #144]	; 0x90
 8000a84:	2b00      	cmp	r3, #0
 8000a86:	d1fa      	bne.n	8000a7e <SWD_TransferSlow+0x5be>
 8000a88:	1e53      	subs	r3, r2, #1
 8000a8a:	f013 02ff 	ands.w	r2, r3, #255	; 0xff
 8000a8e:	d1e6      	bne.n	8000a5e <SWD_TransferSlow+0x59e>
 8000a90:	e69b      	b.n	80007ca <SWD_TransferSlow+0x30a>
 8000a92:	bf00      	nop
 8000a94:	40010c10 	.word	0x40010c10
 8000a98:	40010c00 	.word	0x40010c00

08000a9c <SWD_Transfer>:
 8000a9c:	4b03      	ldr	r3, [pc, #12]	; (8000aac <SWD_Transfer+0x10>)
 8000a9e:	785b      	ldrb	r3, [r3, #1]
 8000aa0:	b10b      	cbz	r3, 8000aa6 <SWD_Transfer+0xa>
 8000aa2:	f7ff bb8b 	b.w	80001bc <SWD_TransferFast>
 8000aa6:	f7ff bd0b 	b.w	80004c0 <SWD_TransferSlow>
 8000aaa:	bf00      	nop
 8000aac:	200004a0 	.word	0x200004a0

08000ab0 <DAP_ProcessCommand>:
 8000ab0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000ab4:	7803      	ldrb	r3, [r0, #0]
 8000ab6:	b08d      	sub	sp, #52	; 0x34
 8000ab8:	f083 0280 	eor.w	r2, r3, #128	; 0x80
 8000abc:	2a1f      	cmp	r2, #31
 8000abe:	d920      	bls.n	8000b02 <DAP_ProcessCommand+0x52>
 8000ac0:	4688      	mov	r8, r1
 8000ac2:	4605      	mov	r5, r0
 8000ac4:	468b      	mov	fp, r1
 8000ac6:	f808 3b01 	strb.w	r3, [r8], #1
 8000aca:	2b16      	cmp	r3, #22
 8000acc:	f200 8265 	bhi.w	8000f9a <DAP_ProcessCommand+0x4ea>
 8000ad0:	e8df f013 	tbh	[pc, r3, lsl #1]
 8000ad4:	01f70206 	.word	0x01f70206
 8000ad8:	01b801c9 	.word	0x01b801c9
 8000adc:	00ed00fd 	.word	0x00ed00fd
 8000ae0:	026300dd 	.word	0x026300dd
 8000ae4:	021c00c3 	.word	0x021c00c3
 8000ae8:	02630217 	.word	0x02630217
 8000aec:	02630263 	.word	0x02630263
 8000af0:	02630263 	.word	0x02630263
 8000af4:	010f011f 	.word	0x010f011f
 8000af8:	01e90256 	.word	0x01e90256
 8000afc:	003e0232 	.word	0x003e0232
 8000b00:	001e      	.short	0x001e
 8000b02:	f001 f9f3 	bl	8001eec <DAP_ProcessVendorCommand>
 8000b06:	4603      	mov	r3, r0
 8000b08:	4618      	mov	r0, r3
 8000b0a:	b00d      	add	sp, #52	; 0x34
 8000b0c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000b10:	4bc5      	ldr	r3, [pc, #788]	; (8000e28 <DAP_ProcessCommand+0x378>)
 8000b12:	781a      	ldrb	r2, [r3, #0]
 8000b14:	2a02      	cmp	r2, #2
 8000b16:	f040 81db 	bne.w	8000ed0 <DAP_ProcessCommand+0x420>
 8000b1a:	7842      	ldrb	r2, [r0, #1]
 8000b1c:	7d99      	ldrb	r1, [r3, #22]
 8000b1e:	75da      	strb	r2, [r3, #23]
 8000b20:	4291      	cmp	r1, r2
 8000b22:	f240 81d5 	bls.w	8000ed0 <DAP_ProcessCommand+0x420>
 8000b26:	200e      	movs	r0, #14
 8000b28:	f002 fa0e 	bl	8002f48 <JTAG_IR>
 8000b2c:	f001 ffc2 	bl	8002ab4 <JTAG_ReadIDCode>
 8000b30:	2300      	movs	r3, #0
 8000b32:	0a04      	lsrs	r4, r0, #8
 8000b34:	0c01      	lsrs	r1, r0, #16
 8000b36:	0e02      	lsrs	r2, r0, #24
 8000b38:	f88b 3001 	strb.w	r3, [fp, #1]
 8000b3c:	f88b 0002 	strb.w	r0, [fp, #2]
 8000b40:	f88b 4003 	strb.w	r4, [fp, #3]
 8000b44:	f88b 1004 	strb.w	r1, [fp, #4]
 8000b48:	f88b 2005 	strb.w	r2, [fp, #5]
 8000b4c:	2306      	movs	r3, #6
 8000b4e:	e7db      	b.n	8000b08 <DAP_ProcessCommand+0x58>
 8000b50:	7841      	ldrb	r1, [r0, #1]
 8000b52:	f8df a2d4 	ldr.w	sl, [pc, #724]	; 8000e28 <DAP_ProcessCommand+0x378>
 8000b56:	f88a 1016 	strb.w	r1, [sl, #22]
 8000b5a:	2900      	cmp	r1, #0
 8000b5c:	d075      	beq.n	8000c4a <DAP_ProcessCommand+0x19a>
 8000b5e:	2300      	movs	r3, #0
 8000b60:	7880      	ldrb	r0, [r0, #2]
 8000b62:	2901      	cmp	r1, #1
 8000b64:	f8aa 3020 	strh.w	r3, [sl, #32]
 8000b68:	f88a 0018 	strb.w	r0, [sl, #24]
 8000b6c:	f000 87ad 	beq.w	8001aca <DAP_ProcessCommand+0x101a>
 8000b70:	78eb      	ldrb	r3, [r5, #3]
 8000b72:	2902      	cmp	r1, #2
 8000b74:	f88a 3019 	strb.w	r3, [sl, #25]
 8000b78:	f8aa 0022 	strh.w	r0, [sl, #34]	; 0x22
 8000b7c:	4403      	add	r3, r0
 8000b7e:	d02d      	beq.n	8000bdc <DAP_ProcessCommand+0x12c>
 8000b80:	792a      	ldrb	r2, [r5, #4]
 8000b82:	2903      	cmp	r1, #3
 8000b84:	f8aa 3024 	strh.w	r3, [sl, #36]	; 0x24
 8000b88:	f88a 201a 	strb.w	r2, [sl, #26]
 8000b8c:	4413      	add	r3, r2
 8000b8e:	d025      	beq.n	8000bdc <DAP_ProcessCommand+0x12c>
 8000b90:	796a      	ldrb	r2, [r5, #5]
 8000b92:	2904      	cmp	r1, #4
 8000b94:	f8aa 3026 	strh.w	r3, [sl, #38]	; 0x26
 8000b98:	f88a 201b 	strb.w	r2, [sl, #27]
 8000b9c:	4413      	add	r3, r2
 8000b9e:	d01d      	beq.n	8000bdc <DAP_ProcessCommand+0x12c>
 8000ba0:	79aa      	ldrb	r2, [r5, #6]
 8000ba2:	2905      	cmp	r1, #5
 8000ba4:	f8aa 3028 	strh.w	r3, [sl, #40]	; 0x28
 8000ba8:	f88a 201c 	strb.w	r2, [sl, #28]
 8000bac:	4413      	add	r3, r2
 8000bae:	d015      	beq.n	8000bdc <DAP_ProcessCommand+0x12c>
 8000bb0:	79ea      	ldrb	r2, [r5, #7]
 8000bb2:	2906      	cmp	r1, #6
 8000bb4:	f8aa 302a 	strh.w	r3, [sl, #42]	; 0x2a
 8000bb8:	f88a 201d 	strb.w	r2, [sl, #29]
 8000bbc:	4413      	add	r3, r2
 8000bbe:	d00d      	beq.n	8000bdc <DAP_ProcessCommand+0x12c>
 8000bc0:	7a2a      	ldrb	r2, [r5, #8]
 8000bc2:	2907      	cmp	r1, #7
 8000bc4:	f8aa 302c 	strh.w	r3, [sl, #44]	; 0x2c
 8000bc8:	f88a 201e 	strb.w	r2, [sl, #30]
 8000bcc:	4413      	add	r3, r2
 8000bce:	d005      	beq.n	8000bdc <DAP_ProcessCommand+0x12c>
 8000bd0:	7a6a      	ldrb	r2, [r5, #9]
 8000bd2:	f8aa 302e 	strh.w	r3, [sl, #46]	; 0x2e
 8000bd6:	f88a 201f 	strb.w	r2, [sl, #31]
 8000bda:	4413      	add	r3, r2
 8000bdc:	f89a 2019 	ldrb.w	r2, [sl, #25]
 8000be0:	1a1b      	subs	r3, r3, r0
 8000be2:	1a9a      	subs	r2, r3, r2
 8000be4:	2902      	cmp	r1, #2
 8000be6:	f8aa 3030 	strh.w	r3, [sl, #48]	; 0x30
 8000bea:	f8aa 2032 	strh.w	r2, [sl, #50]	; 0x32
 8000bee:	d02c      	beq.n	8000c4a <DAP_ProcessCommand+0x19a>
 8000bf0:	f89a 301a 	ldrb.w	r3, [sl, #26]
 8000bf4:	2903      	cmp	r1, #3
 8000bf6:	eba2 0203 	sub.w	r2, r2, r3
 8000bfa:	f8aa 2034 	strh.w	r2, [sl, #52]	; 0x34
 8000bfe:	d024      	beq.n	8000c4a <DAP_ProcessCommand+0x19a>
 8000c00:	f89a 301b 	ldrb.w	r3, [sl, #27]
 8000c04:	2904      	cmp	r1, #4
 8000c06:	eba2 0203 	sub.w	r2, r2, r3
 8000c0a:	f8aa 2036 	strh.w	r2, [sl, #54]	; 0x36
 8000c0e:	d01c      	beq.n	8000c4a <DAP_ProcessCommand+0x19a>
 8000c10:	f89a 301c 	ldrb.w	r3, [sl, #28]
 8000c14:	2905      	cmp	r1, #5
 8000c16:	eba2 0203 	sub.w	r2, r2, r3
 8000c1a:	f8aa 2038 	strh.w	r2, [sl, #56]	; 0x38
 8000c1e:	d014      	beq.n	8000c4a <DAP_ProcessCommand+0x19a>
 8000c20:	f89a 301d 	ldrb.w	r3, [sl, #29]
 8000c24:	2906      	cmp	r1, #6
 8000c26:	eba2 0203 	sub.w	r2, r2, r3
 8000c2a:	f8aa 203a 	strh.w	r2, [sl, #58]	; 0x3a
 8000c2e:	d00c      	beq.n	8000c4a <DAP_ProcessCommand+0x19a>
 8000c30:	f89a 301e 	ldrb.w	r3, [sl, #30]
 8000c34:	2907      	cmp	r1, #7
 8000c36:	eba2 0203 	sub.w	r2, r2, r3
 8000c3a:	f8aa 203c 	strh.w	r2, [sl, #60]	; 0x3c
 8000c3e:	d004      	beq.n	8000c4a <DAP_ProcessCommand+0x19a>
 8000c40:	f89a 301f 	ldrb.w	r3, [sl, #31]
 8000c44:	1ad2      	subs	r2, r2, r3
 8000c46:	f8aa 203e 	strh.w	r2, [sl, #62]	; 0x3e
 8000c4a:	2302      	movs	r3, #2
 8000c4c:	2200      	movs	r2, #0
 8000c4e:	4618      	mov	r0, r3
 8000c50:	f88b 2001 	strb.w	r2, [fp, #1]
 8000c54:	b00d      	add	sp, #52	; 0x34
 8000c56:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000c5a:	4b73      	ldr	r3, [pc, #460]	; (8000e28 <DAP_ProcessCommand+0x378>)
 8000c5c:	781c      	ldrb	r4, [r3, #0]
 8000c5e:	2c01      	cmp	r4, #1
 8000c60:	f000 81e1 	beq.w	8001026 <DAP_ProcessCommand+0x576>
 8000c64:	2c02      	cmp	r4, #2
 8000c66:	f040 8133 	bne.w	8000ed0 <DAP_ProcessCommand+0x420>
 8000c6a:	7842      	ldrb	r2, [r0, #1]
 8000c6c:	7d99      	ldrb	r1, [r3, #22]
 8000c6e:	75da      	strb	r2, [r3, #23]
 8000c70:	4291      	cmp	r1, r2
 8000c72:	f240 812d 	bls.w	8000ed0 <DAP_ProcessCommand+0x420>
 8000c76:	2008      	movs	r0, #8
 8000c78:	f002 f966 	bl	8002f48 <JTAG_IR>
 8000c7c:	f8d5 0002 	ldr.w	r0, [r5, #2]
 8000c80:	f001 ffec 	bl	8002c5c <JTAG_WriteAbort>
 8000c84:	2200      	movs	r2, #0
 8000c86:	4623      	mov	r3, r4
 8000c88:	f88b 2001 	strb.w	r2, [fp, #1]
 8000c8c:	e73c      	b.n	8000b08 <DAP_ProcessCommand+0x58>
 8000c8e:	f8df a198 	ldr.w	sl, [pc, #408]	; 8000e28 <DAP_ProcessCommand+0x378>
 8000c92:	f89a 6000 	ldrb.w	r6, [sl]
 8000c96:	2e01      	cmp	r6, #1
 8000c98:	f000 8252 	beq.w	8001140 <DAP_ProcessCommand+0x690>
 8000c9c:	2e02      	cmp	r6, #2
 8000c9e:	f000 81ca 	beq.w	8001036 <DAP_ProcessCommand+0x586>
 8000ca2:	2200      	movs	r2, #0
 8000ca4:	2304      	movs	r3, #4
 8000ca6:	704a      	strb	r2, [r1, #1]
 8000ca8:	708a      	strb	r2, [r1, #2]
 8000caa:	70ca      	strb	r2, [r1, #3]
 8000cac:	e72c      	b.n	8000b08 <DAP_ProcessCommand+0x58>
 8000cae:	f8df a178 	ldr.w	sl, [pc, #376]	; 8000e28 <DAP_ProcessCommand+0x378>
 8000cb2:	f89a 3000 	ldrb.w	r3, [sl]
 8000cb6:	2b01      	cmp	r3, #1
 8000cb8:	9307      	str	r3, [sp, #28]
 8000cba:	f000 843a 	beq.w	8001532 <DAP_ProcessCommand+0xa82>
 8000cbe:	2b02      	cmp	r3, #2
 8000cc0:	f000 8295 	beq.w	80011ee <DAP_ProcessCommand+0x73e>
 8000cc4:	2200      	movs	r2, #0
 8000cc6:	2303      	movs	r3, #3
 8000cc8:	704a      	strb	r2, [r1, #1]
 8000cca:	708a      	strb	r2, [r1, #2]
 8000ccc:	e71c      	b.n	8000b08 <DAP_ProcessCommand+0x58>
 8000cce:	2000      	movs	r0, #0
 8000cd0:	786b      	ldrb	r3, [r5, #1]
 8000cd2:	4a55      	ldr	r2, [pc, #340]	; (8000e28 <DAP_ProcessCommand+0x378>)
 8000cd4:	7213      	strb	r3, [r2, #8]
 8000cd6:	78e9      	ldrb	r1, [r5, #3]
 8000cd8:	78ab      	ldrb	r3, [r5, #2]
 8000cda:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000cde:	8153      	strh	r3, [r2, #10]
 8000ce0:	796c      	ldrb	r4, [r5, #5]
 8000ce2:	7929      	ldrb	r1, [r5, #4]
 8000ce4:	2302      	movs	r3, #2
 8000ce6:	ea41 2104 	orr.w	r1, r1, r4, lsl #8
 8000cea:	8191      	strh	r1, [r2, #12]
 8000cec:	f88b 0001 	strb.w	r0, [fp, #1]
 8000cf0:	e70a      	b.n	8000b08 <DAP_ProcessCommand+0x58>
 8000cf2:	f8d0 2001 	ldr.w	r2, [r0, #1]
 8000cf6:	2a00      	cmp	r2, #0
 8000cf8:	f000 80ea 	beq.w	8000ed0 <DAP_ProcessCommand+0x420>
 8000cfc:	4b4b      	ldr	r3, [pc, #300]	; (8000e2c <DAP_ProcessCommand+0x37c>)
 8000cfe:	681b      	ldr	r3, [r3, #0]
 8000d00:	ebb2 0f93 	cmp.w	r2, r3, lsr #2
 8000d04:	f0c0 859e 	bcc.w	8001844 <DAP_ProcessCommand+0xd94>
 8000d08:	2201      	movs	r2, #1
 8000d0a:	4b47      	ldr	r3, [pc, #284]	; (8000e28 <DAP_ProcessCommand+0x378>)
 8000d0c:	705a      	strb	r2, [r3, #1]
 8000d0e:	605a      	str	r2, [r3, #4]
 8000d10:	e79b      	b.n	8000c4a <DAP_ProcessCommand+0x19a>
 8000d12:	7883      	ldrb	r3, [r0, #2]
 8000d14:	7846      	ldrb	r6, [r0, #1]
 8000d16:	f013 0a01 	ands.w	sl, r3, #1
 8000d1a:	f8d0 5003 	ldr.w	r5, [r0, #3]
 8000d1e:	d006      	beq.n	8000d2e <DAP_ProcessCommand+0x27e>
 8000d20:	07f4      	lsls	r4, r6, #31
 8000d22:	bf4c      	ite	mi
 8000d24:	2101      	movmi	r1, #1
 8000d26:	f44f 3180 	movpl.w	r1, #65536	; 0x10000
 8000d2a:	4a41      	ldr	r2, [pc, #260]	; (8000e30 <DAP_ProcessCommand+0x380>)
 8000d2c:	6011      	str	r1, [r2, #0]
 8000d2e:	f013 0802 	ands.w	r8, r3, #2
 8000d32:	d006      	beq.n	8000d42 <DAP_ProcessCommand+0x292>
 8000d34:	07b0      	lsls	r0, r6, #30
 8000d36:	bf4c      	ite	mi
 8000d38:	2102      	movmi	r1, #2
 8000d3a:	f44f 3100 	movpl.w	r1, #131072	; 0x20000
 8000d3e:	4a3c      	ldr	r2, [pc, #240]	; (8000e30 <DAP_ProcessCommand+0x380>)
 8000d40:	6011      	str	r1, [r2, #0]
 8000d42:	f013 0704 	ands.w	r7, r3, #4
 8000d46:	d006      	beq.n	8000d56 <DAP_ProcessCommand+0x2a6>
 8000d48:	0771      	lsls	r1, r6, #29
 8000d4a:	bf4c      	ite	mi
 8000d4c:	2108      	movmi	r1, #8
 8000d4e:	f44f 2100 	movpl.w	r1, #524288	; 0x80000
 8000d52:	4a37      	ldr	r2, [pc, #220]	; (8000e30 <DAP_ProcessCommand+0x380>)
 8000d54:	6011      	str	r1, [r2, #0]
 8000d56:	f013 0920 	ands.w	r9, r3, #32
 8000d5a:	d006      	beq.n	8000d6a <DAP_ProcessCommand+0x2ba>
 8000d5c:	06b2      	lsls	r2, r6, #26
 8000d5e:	bf4c      	ite	mi
 8000d60:	2110      	movmi	r1, #16
 8000d62:	f44f 1180 	movpl.w	r1, #1048576	; 0x100000
 8000d66:	4a32      	ldr	r2, [pc, #200]	; (8000e30 <DAP_ProcessCommand+0x380>)
 8000d68:	6011      	str	r1, [r2, #0]
 8000d6a:	b25c      	sxtb	r4, r3
 8000d6c:	2c00      	cmp	r4, #0
 8000d6e:	f2c0 8118 	blt.w	8000fa2 <DAP_ProcessCommand+0x4f2>
 8000d72:	2d00      	cmp	r5, #0
 8000d74:	d039      	beq.n	8000dea <DAP_ProcessCommand+0x33a>
 8000d76:	2004      	movs	r0, #4
 8000d78:	f003 ff26 	bl	8004bc8 <systick_set_clocksource>
 8000d7c:	f003 ff48 	bl	8004c10 <systick_clear>
 8000d80:	4a2c      	ldr	r2, [pc, #176]	; (8000e34 <DAP_ProcessCommand+0x384>)
 8000d82:	4b2a      	ldr	r3, [pc, #168]	; (8000e2c <DAP_ProcessCommand+0x37c>)
 8000d84:	4295      	cmp	r5, r2
 8000d86:	bf28      	it	cs
 8000d88:	4615      	movcs	r5, r2
 8000d8a:	6818      	ldr	r0, [r3, #0]
 8000d8c:	4b2a      	ldr	r3, [pc, #168]	; (8000e38 <DAP_ProcessCommand+0x388>)
 8000d8e:	fb00 f505 	mul.w	r5, r0, r5
 8000d92:	fba3 3005 	umull	r3, r0, r3, r5
 8000d96:	0c80      	lsrs	r0, r0, #18
 8000d98:	f003 ff0e 	bl	8004bb8 <systick_set_reload>
 8000d9c:	08b5      	lsrs	r5, r6, #2
 8000d9e:	f003 ff27 	bl	8004bf0 <systick_counter_enable>
 8000da2:	0873      	lsrs	r3, r6, #1
 8000da4:	0970      	lsrs	r0, r6, #5
 8000da6:	09f2      	lsrs	r2, r6, #7
 8000da8:	f1ba 0f00 	cmp.w	sl, #0
 8000dac:	f040 857b 	bne.w	80018a6 <DAP_ProcessCommand+0xdf6>
 8000db0:	f1b8 0f00 	cmp.w	r8, #0
 8000db4:	f040 85d3 	bne.w	800195e <DAP_ProcessCommand+0xeae>
 8000db8:	2c00      	cmp	r4, #0
 8000dba:	f280 87de 	bge.w	8001d7a <DAP_ProcessCommand+0x12ca>
 8000dbe:	f1b9 0f00 	cmp.w	r9, #0
 8000dc2:	f040 80f6 	bne.w	8000fb2 <DAP_ProcessCommand+0x502>
 8000dc6:	4b1d      	ldr	r3, [pc, #116]	; (8000e3c <DAP_ProcessCommand+0x38c>)
 8000dc8:	b127      	cbz	r7, 8000dd4 <DAP_ProcessCommand+0x324>
 8000dca:	6819      	ldr	r1, [r3, #0]
 8000dcc:	f3c1 0180 	ubfx	r1, r1, #2, #1
 8000dd0:	428d      	cmp	r5, r1
 8000dd2:	d104      	bne.n	8000dde <DAP_ProcessCommand+0x32e>
 8000dd4:	681b      	ldr	r3, [r3, #0]
 8000dd6:	f3c3 1340 	ubfx	r3, r3, #5, #1
 8000dda:	429a      	cmp	r2, r3
 8000ddc:	d003      	beq.n	8000de6 <DAP_ProcessCommand+0x336>
 8000dde:	4b18      	ldr	r3, [pc, #96]	; (8000e40 <DAP_ProcessCommand+0x390>)
 8000de0:	681b      	ldr	r3, [r3, #0]
 8000de2:	03db      	lsls	r3, r3, #15
 8000de4:	d5ef      	bpl.n	8000dc6 <DAP_ProcessCommand+0x316>
 8000de6:	f003 ff0b 	bl	8004c00 <systick_counter_disable>
 8000dea:	2302      	movs	r3, #2
 8000dec:	4913      	ldr	r1, [pc, #76]	; (8000e3c <DAP_ProcessCommand+0x38c>)
 8000dee:	6808      	ldr	r0, [r1, #0]
 8000df0:	680a      	ldr	r2, [r1, #0]
 8000df2:	680c      	ldr	r4, [r1, #0]
 8000df4:	401a      	ands	r2, r3
 8000df6:	f004 0404 	and.w	r4, r4, #4
 8000dfa:	f000 0001 	and.w	r0, r0, #1
 8000dfe:	4322      	orrs	r2, r4
 8000e00:	680c      	ldr	r4, [r1, #0]
 8000e02:	4302      	orrs	r2, r0
 8000e04:	6808      	ldr	r0, [r1, #0]
 8000e06:	f3c4 0480 	ubfx	r4, r4, #2, #1
 8000e0a:	6809      	ldr	r1, [r1, #0]
 8000e0c:	ea42 02c4 	orr.w	r2, r2, r4, lsl #3
 8000e10:	f3c0 1000 	ubfx	r0, r0, #4, #1
 8000e14:	ea42 1240 	orr.w	r2, r2, r0, lsl #5
 8000e18:	f3c1 1140 	ubfx	r1, r1, #5, #1
 8000e1c:	ea42 12c1 	orr.w	r2, r2, r1, lsl #7
 8000e20:	f88b 2001 	strb.w	r2, [fp, #1]
 8000e24:	e670      	b.n	8000b08 <DAP_ProcessCommand+0x58>
 8000e26:	bf00      	nop
 8000e28:	200004a0 	.word	0x200004a0
 8000e2c:	2000001c 	.word	0x2000001c
 8000e30:	40010c10 	.word	0x40010c10
 8000e34:	002dc6c0 	.word	0x002dc6c0
 8000e38:	431bde83 	.word	0x431bde83
 8000e3c:	40010c08 	.word	0x40010c08
 8000e40:	e000e010 	.word	0xe000e010
 8000e44:	2400      	movs	r4, #0
 8000e46:	4db3      	ldr	r5, [pc, #716]	; (8001114 <DAP_ProcessCommand+0x664>)
 8000e48:	233f      	movs	r3, #63	; 0x3f
 8000e4a:	4621      	mov	r1, r4
 8000e4c:	2202      	movs	r2, #2
 8000e4e:	48b2      	ldr	r0, [pc, #712]	; (8001118 <DAP_ProcessCommand+0x668>)
 8000e50:	702c      	strb	r4, [r5, #0]
 8000e52:	f002 ff77 	bl	8003d44 <gpio_set_mode>
 8000e56:	213f      	movs	r1, #63	; 0x3f
 8000e58:	48af      	ldr	r0, [pc, #700]	; (8001118 <DAP_ProcessCommand+0x668>)
 8000e5a:	f003 f8a1 	bl	8003fa0 <gpio_set>
 8000e5e:	f88b 4001 	strb.w	r4, [fp, #1]
 8000e62:	2302      	movs	r3, #2
 8000e64:	e650      	b.n	8000b08 <DAP_ProcessCommand+0x58>
 8000e66:	7844      	ldrb	r4, [r0, #1]
 8000e68:	2c00      	cmp	r4, #0
 8000e6a:	f000 80c4 	beq.w	8000ff6 <DAP_ProcessCommand+0x546>
 8000e6e:	2c01      	cmp	r4, #1
 8000e70:	f000 80c1 	beq.w	8000ff6 <DAP_ProcessCommand+0x546>
 8000e74:	2c02      	cmp	r4, #2
 8000e76:	f47f aee8 	bne.w	8000c4a <DAP_ProcessCommand+0x19a>
 8000e7a:	4da6      	ldr	r5, [pc, #664]	; (8001114 <DAP_ProcessCommand+0x664>)
 8000e7c:	232b      	movs	r3, #43	; 0x2b
 8000e7e:	2200      	movs	r2, #0
 8000e80:	2101      	movs	r1, #1
 8000e82:	48a5      	ldr	r0, [pc, #660]	; (8001118 <DAP_ProcessCommand+0x668>)
 8000e84:	702c      	strb	r4, [r5, #0]
 8000e86:	f002 ff5d 	bl	8003d44 <gpio_set_mode>
 8000e8a:	2100      	movs	r1, #0
 8000e8c:	48a2      	ldr	r0, [pc, #648]	; (8001118 <DAP_ProcessCommand+0x668>)
 8000e8e:	2304      	movs	r3, #4
 8000e90:	4622      	mov	r2, r4
 8000e92:	f002 ff57 	bl	8003d44 <gpio_set_mode>
 8000e96:	212f      	movs	r1, #47	; 0x2f
 8000e98:	489f      	ldr	r0, [pc, #636]	; (8001118 <DAP_ProcessCommand+0x668>)
 8000e9a:	f003 f881 	bl	8003fa0 <gpio_set>
 8000e9e:	f88b 4001 	strb.w	r4, [fp, #1]
 8000ea2:	2302      	movs	r3, #2
 8000ea4:	e630      	b.n	8000b08 <DAP_ProcessCommand+0x58>
 8000ea6:	2000      	movs	r0, #0
 8000ea8:	786b      	ldrb	r3, [r5, #1]
 8000eaa:	499a      	ldr	r1, [pc, #616]	; (8001114 <DAP_ProcessCommand+0x664>)
 8000eac:	f003 0203 	and.w	r2, r3, #3
 8000eb0:	3201      	adds	r2, #1
 8000eb2:	f3c3 0380 	ubfx	r3, r3, #2, #1
 8000eb6:	754b      	strb	r3, [r1, #21]
 8000eb8:	750a      	strb	r2, [r1, #20]
 8000eba:	2302      	movs	r3, #2
 8000ebc:	f88b 0001 	strb.w	r0, [fp, #1]
 8000ec0:	e622      	b.n	8000b08 <DAP_ProcessCommand+0x58>
 8000ec2:	7843      	ldrb	r3, [r0, #1]
 8000ec4:	2b00      	cmp	r3, #0
 8000ec6:	f000 80a4 	beq.w	8001012 <DAP_ProcessCommand+0x562>
 8000eca:	2b01      	cmp	r3, #1
 8000ecc:	f43f aebd 	beq.w	8000c4a <DAP_ProcessCommand+0x19a>
 8000ed0:	22ff      	movs	r2, #255	; 0xff
 8000ed2:	2302      	movs	r3, #2
 8000ed4:	4618      	mov	r0, r3
 8000ed6:	f88b 2001 	strb.w	r2, [fp, #1]
 8000eda:	b00d      	add	sp, #52	; 0x34
 8000edc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000ee0:	7843      	ldrb	r3, [r0, #1]
 8000ee2:	2bf0      	cmp	r3, #240	; 0xf0
 8000ee4:	f000 851f 	beq.w	8001926 <DAP_ProcessCommand+0xe76>
 8000ee8:	d977      	bls.n	8000fda <DAP_ProcessCommand+0x52a>
 8000eea:	2bfe      	cmp	r3, #254	; 0xfe
 8000eec:	f000 8520 	beq.w	8001930 <DAP_ProcessCommand+0xe80>
 8000ef0:	2bff      	cmp	r3, #255	; 0xff
 8000ef2:	d17d      	bne.n	8000ff0 <DAP_ProcessCommand+0x540>
 8000ef4:	2240      	movs	r2, #64	; 0x40
 8000ef6:	2300      	movs	r3, #0
 8000ef8:	708a      	strb	r2, [r1, #2]
 8000efa:	70cb      	strb	r3, [r1, #3]
 8000efc:	2202      	movs	r2, #2
 8000efe:	2304      	movs	r3, #4
 8000f00:	e7e8      	b.n	8000ed4 <DAP_ProcessCommand+0x424>
 8000f02:	2200      	movs	r2, #0
 8000f04:	2303      	movs	r3, #3
 8000f06:	708a      	strb	r2, [r1, #2]
 8000f08:	704a      	strb	r2, [r1, #1]
 8000f0a:	e5fd      	b.n	8000b08 <DAP_ProcessCommand+0x58>
 8000f0c:	4b83      	ldr	r3, [pc, #524]	; (800111c <DAP_ProcessCommand+0x66c>)
 8000f0e:	4984      	ldr	r1, [pc, #528]	; (8001120 <DAP_ProcessCommand+0x670>)
 8000f10:	681b      	ldr	r3, [r3, #0]
 8000f12:	4a84      	ldr	r2, [pc, #528]	; (8001124 <DAP_ProcessCommand+0x674>)
 8000f14:	fba1 1303 	umull	r1, r3, r1, r3
 8000f18:	0c9b      	lsrs	r3, r3, #18
 8000f1a:	3302      	adds	r3, #2
 8000f1c:	fba2 2303 	umull	r2, r3, r2, r3
 8000f20:	f8b0 2001 	ldrh.w	r2, [r0, #1]
 8000f24:	085b      	lsrs	r3, r3, #1
 8000f26:	fb02 f303 	mul.w	r3, r2, r3
 8000f2a:	930b      	str	r3, [sp, #44]	; 0x2c
 8000f2c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8000f2e:	3b01      	subs	r3, #1
 8000f30:	930b      	str	r3, [sp, #44]	; 0x2c
 8000f32:	2b00      	cmp	r3, #0
 8000f34:	d1fa      	bne.n	8000f2c <DAP_ProcessCommand+0x47c>
 8000f36:	e688      	b.n	8000c4a <DAP_ProcessCommand+0x19a>
 8000f38:	2300      	movs	r3, #0
 8000f3a:	704b      	strb	r3, [r1, #1]
 8000f3c:	7843      	ldrb	r3, [r0, #1]
 8000f3e:	f101 0b02 	add.w	fp, r1, #2
 8000f42:	3502      	adds	r5, #2
 8000f44:	f103 38ff 	add.w	r8, r3, #4294967295	; 0xffffffff
 8000f48:	2401      	movs	r4, #1
 8000f4a:	b1bb      	cbz	r3, 8000f7c <DAP_ProcessCommand+0x4cc>
 8000f4c:	f815 6b01 	ldrb.w	r6, [r5], #1
 8000f50:	465a      	mov	r2, fp
 8000f52:	4629      	mov	r1, r5
 8000f54:	4630      	mov	r0, r6
 8000f56:	f000 ffcb 	bl	8001ef0 <JTAG_Sequence>
 8000f5a:	f016 033f 	ands.w	r3, r6, #63	; 0x3f
 8000f5e:	f103 0307 	add.w	r3, r3, #7
 8000f62:	bf0c      	ite	eq
 8000f64:	2308      	moveq	r3, #8
 8000f66:	08db      	lsrne	r3, r3, #3
 8000f68:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8000f6c:	0636      	lsls	r6, r6, #24
 8000f6e:	bf44      	itt	mi
 8000f70:	449b      	addmi	fp, r3
 8000f72:	18e4      	addmi	r4, r4, r3
 8000f74:	f1b8 3fff 	cmp.w	r8, #4294967295	; 0xffffffff
 8000f78:	441d      	add	r5, r3
 8000f7a:	d1e7      	bne.n	8000f4c <DAP_ProcessCommand+0x49c>
 8000f7c:	1c63      	adds	r3, r4, #1
 8000f7e:	e5c3      	b.n	8000b08 <DAP_ProcessCommand+0x58>
 8000f80:	7840      	ldrb	r0, [r0, #1]
 8000f82:	1ca9      	adds	r1, r5, #2
 8000f84:	2800      	cmp	r0, #0
 8000f86:	bf08      	it	eq
 8000f88:	f44f 7080 	moveq.w	r0, #256	; 0x100
 8000f8c:	f7ff f8e0 	bl	8000150 <SWJ_Sequence>
 8000f90:	2200      	movs	r2, #0
 8000f92:	2302      	movs	r3, #2
 8000f94:	f88b 2001 	strb.w	r2, [fp, #1]
 8000f98:	e5b6      	b.n	8000b08 <DAP_ProcessCommand+0x58>
 8000f9a:	22ff      	movs	r2, #255	; 0xff
 8000f9c:	2301      	movs	r3, #1
 8000f9e:	700a      	strb	r2, [r1, #0]
 8000fa0:	e5b2      	b.n	8000b08 <DAP_ProcessCommand+0x58>
 8000fa2:	09f3      	lsrs	r3, r6, #7
 8000fa4:	bf14      	ite	ne
 8000fa6:	2220      	movne	r2, #32
 8000fa8:	f44f 1200 	moveq.w	r2, #2097152	; 0x200000
 8000fac:	4b5e      	ldr	r3, [pc, #376]	; (8001128 <DAP_ProcessCommand+0x678>)
 8000fae:	601a      	str	r2, [r3, #0]
 8000fb0:	e6df      	b.n	8000d72 <DAP_ProcessCommand+0x2c2>
 8000fb2:	495e      	ldr	r1, [pc, #376]	; (800112c <DAP_ProcessCommand+0x67c>)
 8000fb4:	4b5e      	ldr	r3, [pc, #376]	; (8001130 <DAP_ProcessCommand+0x680>)
 8000fb6:	2f00      	cmp	r7, #0
 8000fb8:	f040 858b 	bne.w	8001ad2 <DAP_ProcessCommand+0x1022>
 8000fbc:	680c      	ldr	r4, [r1, #0]
 8000fbe:	f3c4 1400 	ubfx	r4, r4, #4, #1
 8000fc2:	42a0      	cmp	r0, r4
 8000fc4:	d105      	bne.n	8000fd2 <DAP_ProcessCommand+0x522>
 8000fc6:	6809      	ldr	r1, [r1, #0]
 8000fc8:	f3c1 1140 	ubfx	r1, r1, #5, #1
 8000fcc:	428a      	cmp	r2, r1
 8000fce:	f43f af0a 	beq.w	8000de6 <DAP_ProcessCommand+0x336>
 8000fd2:	681b      	ldr	r3, [r3, #0]
 8000fd4:	03de      	lsls	r6, r3, #15
 8000fd6:	d5ec      	bpl.n	8000fb2 <DAP_ProcessCommand+0x502>
 8000fd8:	e705      	b.n	8000de6 <DAP_ProcessCommand+0x336>
 8000fda:	2b04      	cmp	r3, #4
 8000fdc:	d108      	bne.n	8000ff0 <DAP_ProcessCommand+0x540>
 8000fde:	2205      	movs	r2, #5
 8000fe0:	4954      	ldr	r1, [pc, #336]	; (8001134 <DAP_ProcessCommand+0x684>)
 8000fe2:	f10b 0002 	add.w	r0, fp, #2
 8000fe6:	f004 f8cd 	bl	8005184 <memcpy>
 8000fea:	2307      	movs	r3, #7
 8000fec:	2205      	movs	r2, #5
 8000fee:	e771      	b.n	8000ed4 <DAP_ProcessCommand+0x424>
 8000ff0:	2302      	movs	r3, #2
 8000ff2:	2200      	movs	r2, #0
 8000ff4:	e76e      	b.n	8000ed4 <DAP_ProcessCommand+0x424>
 8000ff6:	2401      	movs	r4, #1
 8000ff8:	4d46      	ldr	r5, [pc, #280]	; (8001114 <DAP_ProcessCommand+0x664>)
 8000ffa:	4621      	mov	r1, r4
 8000ffc:	2323      	movs	r3, #35	; 0x23
 8000ffe:	2200      	movs	r2, #0
 8001000:	4845      	ldr	r0, [pc, #276]	; (8001118 <DAP_ProcessCommand+0x668>)
 8001002:	702c      	strb	r4, [r5, #0]
 8001004:	f002 fe9e 	bl	8003d44 <gpio_set_mode>
 8001008:	2123      	movs	r1, #35	; 0x23
 800100a:	4843      	ldr	r0, [pc, #268]	; (8001118 <DAP_ProcessCommand+0x668>)
 800100c:	f002 ffc8 	bl	8003fa0 <gpio_set>
 8001010:	e745      	b.n	8000e9e <DAP_ProcessCommand+0x3ee>
 8001012:	7883      	ldrb	r3, [r0, #2]
 8001014:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8001018:	07dd      	lsls	r5, r3, #31
 800101a:	4847      	ldr	r0, [pc, #284]	; (8001138 <DAP_ProcessCommand+0x688>)
 800101c:	f140 848f 	bpl.w	800193e <DAP_ProcessCommand+0xe8e>
 8001020:	f002 ffc0 	bl	8003fa4 <gpio_clear>
 8001024:	e611      	b.n	8000c4a <DAP_ProcessCommand+0x19a>
 8001026:	f8d0 3002 	ldr.w	r3, [r0, #2]
 800102a:	a90b      	add	r1, sp, #44	; 0x2c
 800102c:	2000      	movs	r0, #0
 800102e:	930b      	str	r3, [sp, #44]	; 0x2c
 8001030:	f7ff fd34 	bl	8000a9c <SWD_Transfer>
 8001034:	e609      	b.n	8000c4a <DAP_ProcessCommand+0x19a>
 8001036:	2200      	movs	r2, #0
 8001038:	7843      	ldrb	r3, [r0, #1]
 800103a:	f89a 1016 	ldrb.w	r1, [sl, #22]
 800103e:	4c3f      	ldr	r4, [pc, #252]	; (800113c <DAP_ProcessCommand+0x68c>)
 8001040:	f10b 0004 	add.w	r0, fp, #4
 8001044:	4299      	cmp	r1, r3
 8001046:	7022      	strb	r2, [r4, #0]
 8001048:	f88a 3017 	strb.w	r3, [sl, #23]
 800104c:	9002      	str	r0, [sp, #8]
 800104e:	f240 84ca 	bls.w	80019e6 <DAP_ProcessCommand+0xf36>
 8001052:	886f      	ldrh	r7, [r5, #2]
 8001054:	2f00      	cmp	r7, #0
 8001056:	f000 8551 	beq.w	8001afc <DAP_ProcessCommand+0x104c>
 800105a:	f895 9004 	ldrb.w	r9, [r5, #4]
 800105e:	f019 0f01 	tst.w	r9, #1
 8001062:	bf14      	ite	ne
 8001064:	230b      	movne	r3, #11
 8001066:	230a      	moveq	r3, #10
 8001068:	4618      	mov	r0, r3
 800106a:	9305      	str	r3, [sp, #20]
 800106c:	f001 ff6c 	bl	8002f48 <JTAG_IR>
 8001070:	f019 0302 	ands.w	r3, r9, #2
 8001074:	f040 8547 	bne.w	8001b06 <DAP_ProcessCommand+0x1056>
 8001078:	1d6a      	adds	r2, r5, #5
 800107a:	e9cd 8603 	strd	r8, r6, [sp, #12]
 800107e:	46d0      	mov	r8, sl
 8001080:	4692      	mov	sl, r2
 8001082:	463d      	mov	r5, r7
 8001084:	9301      	str	r3, [sp, #4]
 8001086:	af0b      	add	r7, sp, #44	; 0x2c
 8001088:	f85a 2b04 	ldr.w	r2, [sl], #4
 800108c:	f8b8 600a 	ldrh.w	r6, [r8, #10]
 8001090:	920b      	str	r2, [sp, #44]	; 0x2c
 8001092:	e003      	b.n	800109c <DAP_ProcessCommand+0x5ec>
 8001094:	b3be      	cbz	r6, 8001106 <DAP_ProcessCommand+0x656>
 8001096:	7823      	ldrb	r3, [r4, #0]
 8001098:	3e01      	subs	r6, #1
 800109a:	bba3      	cbnz	r3, 8001106 <DAP_ProcessCommand+0x656>
 800109c:	4639      	mov	r1, r7
 800109e:	4648      	mov	r0, r9
 80010a0:	f001 ff5c 	bl	8002f5c <JTAG_Transfer>
 80010a4:	2802      	cmp	r0, #2
 80010a6:	d0f5      	beq.n	8001094 <DAP_ProcessCommand+0x5e4>
 80010a8:	2801      	cmp	r0, #1
 80010aa:	f040 86e7 	bne.w	8001e7c <DAP_ProcessCommand+0x13cc>
 80010ae:	9b01      	ldr	r3, [sp, #4]
 80010b0:	3d01      	subs	r5, #1
 80010b2:	f103 0301 	add.w	r3, r3, #1
 80010b6:	9301      	str	r3, [sp, #4]
 80010b8:	d1e6      	bne.n	8001088 <DAP_ProcessCommand+0x5d8>
 80010ba:	9b05      	ldr	r3, [sp, #20]
 80010bc:	46c2      	mov	sl, r8
 80010be:	2b0a      	cmp	r3, #10
 80010c0:	f8dd 800c 	ldr.w	r8, [sp, #12]
 80010c4:	d002      	beq.n	80010cc <DAP_ProcessCommand+0x61c>
 80010c6:	200a      	movs	r0, #10
 80010c8:	f001 ff3e 	bl	8002f48 <JTAG_IR>
 80010cc:	f8ba 500a 	ldrh.w	r5, [sl, #10]
 80010d0:	e003      	b.n	80010da <DAP_ProcessCommand+0x62a>
 80010d2:	b145      	cbz	r5, 80010e6 <DAP_ProcessCommand+0x636>
 80010d4:	7823      	ldrb	r3, [r4, #0]
 80010d6:	3d01      	subs	r5, #1
 80010d8:	b92b      	cbnz	r3, 80010e6 <DAP_ProcessCommand+0x636>
 80010da:	2100      	movs	r1, #0
 80010dc:	200e      	movs	r0, #14
 80010de:	f001 ff3d 	bl	8002f5c <JTAG_Transfer>
 80010e2:	2802      	cmp	r0, #2
 80010e4:	d0f5      	beq.n	80010d2 <DAP_ProcessCommand+0x622>
 80010e6:	4606      	mov	r6, r0
 80010e8:	9b01      	ldr	r3, [sp, #4]
 80010ea:	b2da      	uxtb	r2, r3
 80010ec:	f3c3 2907 	ubfx	r9, r3, #8, #8
 80010f0:	9b02      	ldr	r3, [sp, #8]
 80010f2:	f88b 2001 	strb.w	r2, [fp, #1]
 80010f6:	eba3 0308 	sub.w	r3, r3, r8
 80010fa:	3301      	adds	r3, #1
 80010fc:	f88b 9002 	strb.w	r9, [fp, #2]
 8001100:	f88b 6003 	strb.w	r6, [fp, #3]
 8001104:	e500      	b.n	8000b08 <DAP_ProcessCommand+0x58>
 8001106:	9b01      	ldr	r3, [sp, #4]
 8001108:	e9dd 8603 	ldrd	r8, r6, [sp, #12]
 800110c:	b2da      	uxtb	r2, r3
 800110e:	f3c3 2907 	ubfx	r9, r3, #8, #8
 8001112:	e7ed      	b.n	80010f0 <DAP_ProcessCommand+0x640>
 8001114:	200004a0 	.word	0x200004a0
 8001118:	40010c00 	.word	0x40010c00
 800111c:	2000001c 	.word	0x2000001c
 8001120:	431bde83 	.word	0x431bde83
 8001124:	aaaaaaab 	.word	0xaaaaaaab
 8001128:	40010c10 	.word	0x40010c10
 800112c:	40010c08 	.word	0x40010c08
 8001130:	e000e010 	.word	0xe000e010
 8001134:	08005544 	.word	0x08005544
 8001138:	40011000 	.word	0x40011000
 800113c:	200004e0 	.word	0x200004e0
 8001140:	2300      	movs	r3, #0
 8001142:	4caa      	ldr	r4, [pc, #680]	; (80013ec <DAP_ProcessCommand+0x93c>)
 8001144:	8847      	ldrh	r7, [r0, #2]
 8001146:	7023      	strb	r3, [r4, #0]
 8001148:	1d0b      	adds	r3, r1, #4
 800114a:	9301      	str	r3, [sp, #4]
 800114c:	2f00      	cmp	r7, #0
 800114e:	f000 844e 	beq.w	80019ee <DAP_ProcessCommand+0xf3e>
 8001152:	f890 9004 	ldrb.w	r9, [r0, #4]
 8001156:	f8ba 300a 	ldrh.w	r3, [sl, #10]
 800115a:	f019 0202 	ands.w	r2, r9, #2
 800115e:	f040 844e 	bne.w	80019fe <DAP_ProcessCommand+0xf4e>
 8001162:	1d41      	adds	r1, r0, #5
 8001164:	f8cd 800c 	str.w	r8, [sp, #12]
 8001168:	f8cd a008 	str.w	sl, [sp, #8]
 800116c:	4690      	mov	r8, r2
 800116e:	468a      	mov	sl, r1
 8001170:	463d      	mov	r5, r7
 8001172:	af0b      	add	r7, sp, #44	; 0x2c
 8001174:	f85a 2b04 	ldr.w	r2, [sl], #4
 8001178:	461e      	mov	r6, r3
 800117a:	920b      	str	r2, [sp, #44]	; 0x2c
 800117c:	e003      	b.n	8001186 <DAP_ProcessCommand+0x6d6>
 800117e:	b376      	cbz	r6, 80011de <DAP_ProcessCommand+0x72e>
 8001180:	7823      	ldrb	r3, [r4, #0]
 8001182:	3e01      	subs	r6, #1
 8001184:	bb5b      	cbnz	r3, 80011de <DAP_ProcessCommand+0x72e>
 8001186:	4639      	mov	r1, r7
 8001188:	4648      	mov	r0, r9
 800118a:	f7ff fc87 	bl	8000a9c <SWD_Transfer>
 800118e:	2802      	cmp	r0, #2
 8001190:	d0f5      	beq.n	800117e <DAP_ProcessCommand+0x6ce>
 8001192:	2801      	cmp	r0, #1
 8001194:	d123      	bne.n	80011de <DAP_ProcessCommand+0x72e>
 8001196:	9b02      	ldr	r3, [sp, #8]
 8001198:	3d01      	subs	r5, #1
 800119a:	f108 0801 	add.w	r8, r8, #1
 800119e:	895b      	ldrh	r3, [r3, #10]
 80011a0:	d1e8      	bne.n	8001174 <DAP_ProcessCommand+0x6c4>
 80011a2:	4647      	mov	r7, r8
 80011a4:	461d      	mov	r5, r3
 80011a6:	f8dd 800c 	ldr.w	r8, [sp, #12]
 80011aa:	e003      	b.n	80011b4 <DAP_ProcessCommand+0x704>
 80011ac:	b145      	cbz	r5, 80011c0 <DAP_ProcessCommand+0x710>
 80011ae:	7823      	ldrb	r3, [r4, #0]
 80011b0:	3d01      	subs	r5, #1
 80011b2:	b92b      	cbnz	r3, 80011c0 <DAP_ProcessCommand+0x710>
 80011b4:	2100      	movs	r1, #0
 80011b6:	200e      	movs	r0, #14
 80011b8:	f7ff fc70 	bl	8000a9c <SWD_Transfer>
 80011bc:	2802      	cmp	r0, #2
 80011be:	d0f5      	beq.n	80011ac <DAP_ProcessCommand+0x6fc>
 80011c0:	4606      	mov	r6, r0
 80011c2:	b2fa      	uxtb	r2, r7
 80011c4:	f3c7 2a07 	ubfx	sl, r7, #8, #8
 80011c8:	9b01      	ldr	r3, [sp, #4]
 80011ca:	f88b 2001 	strb.w	r2, [fp, #1]
 80011ce:	eba3 0308 	sub.w	r3, r3, r8
 80011d2:	3301      	adds	r3, #1
 80011d4:	f88b a002 	strb.w	sl, [fp, #2]
 80011d8:	f88b 6003 	strb.w	r6, [fp, #3]
 80011dc:	e494      	b.n	8000b08 <DAP_ProcessCommand+0x58>
 80011de:	4643      	mov	r3, r8
 80011e0:	4606      	mov	r6, r0
 80011e2:	f8dd 800c 	ldr.w	r8, [sp, #12]
 80011e6:	b2da      	uxtb	r2, r3
 80011e8:	f3c3 2a07 	ubfx	sl, r3, #8, #8
 80011ec:	e7ec      	b.n	80011c8 <DAP_ProcessCommand+0x718>
 80011ee:	2300      	movs	r3, #0
 80011f0:	7842      	ldrb	r2, [r0, #1]
 80011f2:	f89a 1016 	ldrb.w	r1, [sl, #22]
 80011f6:	4c7d      	ldr	r4, [pc, #500]	; (80013ec <DAP_ProcessCommand+0x93c>)
 80011f8:	f10b 0003 	add.w	r0, fp, #3
 80011fc:	4291      	cmp	r1, r2
 80011fe:	7023      	strb	r3, [r4, #0]
 8001200:	f88a 2017 	strb.w	r2, [sl, #23]
 8001204:	9006      	str	r0, [sp, #24]
 8001206:	f240 83f7 	bls.w	80019f8 <DAP_ProcessCommand+0xf48>
 800120a:	461f      	mov	r7, r3
 800120c:	4618      	mov	r0, r3
 800120e:	4699      	mov	r9, r3
 8001210:	1cea      	adds	r2, r5, #3
 8001212:	9201      	str	r2, [sp, #4]
 8001214:	e9cd 8b03 	strd	r8, fp, [sp, #12]
 8001218:	78aa      	ldrb	r2, [r5, #2]
 800121a:	9205      	str	r2, [sp, #20]
 800121c:	9a05      	ldr	r2, [sp, #20]
 800121e:	454a      	cmp	r2, r9
 8001220:	f000 845f 	beq.w	8001ae2 <DAP_ProcessCommand+0x1032>
 8001224:	f8dd 8004 	ldr.w	r8, [sp, #4]
 8001228:	f818 5b01 	ldrb.w	r5, [r8], #1
 800122c:	f015 0f01 	tst.w	r5, #1
 8001230:	bf14      	ite	ne
 8001232:	220b      	movne	r2, #11
 8001234:	220a      	moveq	r2, #10
 8001236:	07a9      	lsls	r1, r5, #30
 8001238:	9202      	str	r2, [sp, #8]
 800123a:	d56f      	bpl.n	800131c <DAP_ProcessCommand+0x86c>
 800123c:	2f00      	cmp	r7, #0
 800123e:	f040 8081 	bne.w	8001344 <DAP_ProcessCommand+0x894>
 8001242:	06ea      	lsls	r2, r5, #27
 8001244:	f100 8113 	bmi.w	800146e <DAP_ProcessCommand+0x9be>
 8001248:	9802      	ldr	r0, [sp, #8]
 800124a:	4298      	cmp	r0, r3
 800124c:	d001      	beq.n	8001252 <DAP_ProcessCommand+0x7a2>
 800124e:	f001 fe7b 	bl	8002f48 <JTAG_IR>
 8001252:	f8ba 600a 	ldrh.w	r6, [sl, #10]
 8001256:	e005      	b.n	8001264 <DAP_ProcessCommand+0x7b4>
 8001258:	2e00      	cmp	r6, #0
 800125a:	d06e      	beq.n	800133a <DAP_ProcessCommand+0x88a>
 800125c:	7823      	ldrb	r3, [r4, #0]
 800125e:	3e01      	subs	r6, #1
 8001260:	2b00      	cmp	r3, #0
 8001262:	d16a      	bne.n	800133a <DAP_ProcessCommand+0x88a>
 8001264:	2100      	movs	r1, #0
 8001266:	4628      	mov	r0, r5
 8001268:	f001 fe78 	bl	8002f5c <JTAG_Transfer>
 800126c:	2802      	cmp	r0, #2
 800126e:	d0f3      	beq.n	8001258 <DAP_ProcessCommand+0x7a8>
 8001270:	2801      	cmp	r0, #1
 8001272:	4607      	mov	r7, r0
 8001274:	f040 8630 	bne.w	8001ed8 <DAP_ProcessCommand+0x1428>
 8001278:	9b02      	ldr	r3, [sp, #8]
 800127a:	f8cd 8004 	str.w	r8, [sp, #4]
 800127e:	7822      	ldrb	r2, [r4, #0]
 8001280:	f109 0901 	add.w	r9, r9, #1
 8001284:	2001      	movs	r0, #1
 8001286:	2a00      	cmp	r2, #0
 8001288:	d0c8      	beq.n	800121c <DAP_ProcessCommand+0x76c>
 800128a:	463e      	mov	r6, r7
 800128c:	f8dd 800c 	ldr.w	r8, [sp, #12]
 8001290:	f8dd b010 	ldr.w	fp, [sp, #16]
 8001294:	2b0a      	cmp	r3, #10
 8001296:	d002      	beq.n	800129e <DAP_ProcessCommand+0x7ee>
 8001298:	200a      	movs	r0, #10
 800129a:	f001 fe55 	bl	8002f48 <JTAG_IR>
 800129e:	f8ba 500a 	ldrh.w	r5, [sl, #10]
 80012a2:	b33e      	cbz	r6, 80012f4 <DAP_ProcessCommand+0x844>
 80012a4:	af0b      	add	r7, sp, #44	; 0x2c
 80012a6:	e003      	b.n	80012b0 <DAP_ProcessCommand+0x800>
 80012a8:	b35d      	cbz	r5, 8001302 <DAP_ProcessCommand+0x852>
 80012aa:	7823      	ldrb	r3, [r4, #0]
 80012ac:	3d01      	subs	r5, #1
 80012ae:	bb43      	cbnz	r3, 8001302 <DAP_ProcessCommand+0x852>
 80012b0:	4639      	mov	r1, r7
 80012b2:	200e      	movs	r0, #14
 80012b4:	f001 fe52 	bl	8002f5c <JTAG_Transfer>
 80012b8:	2802      	cmp	r0, #2
 80012ba:	d0f5      	beq.n	80012a8 <DAP_ProcessCommand+0x7f8>
 80012bc:	2801      	cmp	r0, #1
 80012be:	fa5f f189 	uxtb.w	r1, r9
 80012c2:	f040 85ea 	bne.w	8001e9a <DAP_ProcessCommand+0x13ea>
 80012c6:	2200      	movs	r2, #0
 80012c8:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80012ca:	9007      	str	r0, [sp, #28]
 80012cc:	f363 0207 	bfi	r2, r3, #0, #8
 80012d0:	0a18      	lsrs	r0, r3, #8
 80012d2:	f360 220f 	bfi	r2, r0, #8, #8
 80012d6:	0c18      	lsrs	r0, r3, #16
 80012d8:	9c06      	ldr	r4, [sp, #24]
 80012da:	f360 4217 	bfi	r2, r0, #16, #8
 80012de:	0e1b      	lsrs	r3, r3, #24
 80012e0:	f363 621f 	bfi	r2, r3, #24, #8
 80012e4:	f844 2b04 	str.w	r2, [r4], #4
 80012e8:	9406      	str	r4, [sp, #24]
 80012ea:	e00c      	b.n	8001306 <DAP_ProcessCommand+0x856>
 80012ec:	b145      	cbz	r5, 8001300 <DAP_ProcessCommand+0x850>
 80012ee:	7823      	ldrb	r3, [r4, #0]
 80012f0:	3d01      	subs	r5, #1
 80012f2:	b92b      	cbnz	r3, 8001300 <DAP_ProcessCommand+0x850>
 80012f4:	2100      	movs	r1, #0
 80012f6:	200e      	movs	r0, #14
 80012f8:	f001 fe30 	bl	8002f5c <JTAG_Transfer>
 80012fc:	2802      	cmp	r0, #2
 80012fe:	d0f5      	beq.n	80012ec <DAP_ProcessCommand+0x83c>
 8001300:	9007      	str	r0, [sp, #28]
 8001302:	fa5f f189 	uxtb.w	r1, r9
 8001306:	9b06      	ldr	r3, [sp, #24]
 8001308:	9a07      	ldr	r2, [sp, #28]
 800130a:	eba3 0308 	sub.w	r3, r3, r8
 800130e:	3301      	adds	r3, #1
 8001310:	f88b 1001 	strb.w	r1, [fp, #1]
 8001314:	f88b 2002 	strb.w	r2, [fp, #2]
 8001318:	f7ff bbf6 	b.w	8000b08 <DAP_ProcessCommand+0x58>
 800131c:	2f00      	cmp	r7, #0
 800131e:	d15b      	bne.n	80013d8 <DAP_ProcessCommand+0x928>
 8001320:	9901      	ldr	r1, [sp, #4]
 8001322:	f8d1 2001 	ldr.w	r2, [r1, #1]
 8001326:	3105      	adds	r1, #5
 8001328:	9101      	str	r1, [sp, #4]
 800132a:	06a9      	lsls	r1, r5, #26
 800132c:	920b      	str	r2, [sp, #44]	; 0x2c
 800132e:	f140 8081 	bpl.w	8001434 <DAP_ProcessCommand+0x984>
 8001332:	f8ca 2010 	str.w	r2, [sl, #16]
 8001336:	2700      	movs	r7, #0
 8001338:	e7a1      	b.n	800127e <DAP_ProcessCommand+0x7ce>
 800133a:	e9dd 8b03 	ldrd	r8, fp, [sp, #12]
 800133e:	fa5f f189 	uxtb.w	r1, r9
 8001342:	e7e0      	b.n	8001306 <DAP_ProcessCommand+0x856>
 8001344:	4293      	cmp	r3, r2
 8001346:	f8ba b00a 	ldrh.w	fp, [sl, #10]
 800134a:	d12e      	bne.n	80013aa <DAP_ProcessCommand+0x8fa>
 800134c:	06ee      	lsls	r6, r5, #27
 800134e:	d42c      	bmi.n	80013aa <DAP_ProcessCommand+0x8fa>
 8001350:	9708      	str	r7, [sp, #32]
 8001352:	ae0b      	add	r6, sp, #44	; 0x2c
 8001354:	465f      	mov	r7, fp
 8001356:	469b      	mov	fp, r3
 8001358:	e005      	b.n	8001366 <DAP_ProcessCommand+0x8b6>
 800135a:	2f00      	cmp	r7, #0
 800135c:	d0ed      	beq.n	800133a <DAP_ProcessCommand+0x88a>
 800135e:	7822      	ldrb	r2, [r4, #0]
 8001360:	3f01      	subs	r7, #1
 8001362:	2a00      	cmp	r2, #0
 8001364:	d1e9      	bne.n	800133a <DAP_ProcessCommand+0x88a>
 8001366:	4631      	mov	r1, r6
 8001368:	4628      	mov	r0, r5
 800136a:	f001 fdf7 	bl	8002f5c <JTAG_Transfer>
 800136e:	2802      	cmp	r0, #2
 8001370:	d0f3      	beq.n	800135a <DAP_ProcessCommand+0x8aa>
 8001372:	465b      	mov	r3, fp
 8001374:	9f08      	ldr	r7, [sp, #32]
 8001376:	2801      	cmp	r0, #1
 8001378:	f040 8592 	bne.w	8001ea0 <DAP_ProcessCommand+0x13f0>
 800137c:	2000      	movs	r0, #0
 800137e:	990b      	ldr	r1, [sp, #44]	; 0x2c
 8001380:	9a06      	ldr	r2, [sp, #24]
 8001382:	0a0e      	lsrs	r6, r1, #8
 8001384:	f361 0007 	bfi	r0, r1, #0, #8
 8001388:	f366 200f 	bfi	r0, r6, #8, #8
 800138c:	0c0e      	lsrs	r6, r1, #16
 800138e:	f366 4017 	bfi	r0, r6, #16, #8
 8001392:	0e09      	lsrs	r1, r1, #24
 8001394:	f361 601f 	bfi	r0, r1, #24, #8
 8001398:	f842 0b04 	str.w	r0, [r2], #4
 800139c:	06e8      	lsls	r0, r5, #27
 800139e:	9206      	str	r2, [sp, #24]
 80013a0:	d465      	bmi.n	800146e <DAP_ProcessCommand+0x9be>
 80013a2:	2f00      	cmp	r7, #0
 80013a4:	f47f af69 	bne.w	800127a <DAP_ProcessCommand+0x7ca>
 80013a8:	e74e      	b.n	8001248 <DAP_ProcessCommand+0x798>
 80013aa:	2b0a      	cmp	r3, #10
 80013ac:	d002      	beq.n	80013b4 <DAP_ProcessCommand+0x904>
 80013ae:	200a      	movs	r0, #10
 80013b0:	f001 fdca 	bl	8002f48 <JTAG_IR>
 80013b4:	ae0b      	add	r6, sp, #44	; 0x2c
 80013b6:	465f      	mov	r7, fp
 80013b8:	e005      	b.n	80013c6 <DAP_ProcessCommand+0x916>
 80013ba:	2f00      	cmp	r7, #0
 80013bc:	d0bd      	beq.n	800133a <DAP_ProcessCommand+0x88a>
 80013be:	7823      	ldrb	r3, [r4, #0]
 80013c0:	3f01      	subs	r7, #1
 80013c2:	2b00      	cmp	r3, #0
 80013c4:	d1b9      	bne.n	800133a <DAP_ProcessCommand+0x88a>
 80013c6:	4631      	mov	r1, r6
 80013c8:	200e      	movs	r0, #14
 80013ca:	f001 fdc7 	bl	8002f5c <JTAG_Transfer>
 80013ce:	2802      	cmp	r0, #2
 80013d0:	d0f3      	beq.n	80013ba <DAP_ProcessCommand+0x90a>
 80013d2:	230a      	movs	r3, #10
 80013d4:	2700      	movs	r7, #0
 80013d6:	e7ce      	b.n	8001376 <DAP_ProcessCommand+0x8c6>
 80013d8:	2b0a      	cmp	r3, #10
 80013da:	d002      	beq.n	80013e2 <DAP_ProcessCommand+0x932>
 80013dc:	200a      	movs	r0, #10
 80013de:	f001 fdb3 	bl	8002f48 <JTAG_IR>
 80013e2:	f8ba 700a 	ldrh.w	r7, [sl, #10]
 80013e6:	ae0b      	add	r6, sp, #44	; 0x2c
 80013e8:	e008      	b.n	80013fc <DAP_ProcessCommand+0x94c>
 80013ea:	bf00      	nop
 80013ec:	200004e0 	.word	0x200004e0
 80013f0:	2f00      	cmp	r7, #0
 80013f2:	d0a2      	beq.n	800133a <DAP_ProcessCommand+0x88a>
 80013f4:	7823      	ldrb	r3, [r4, #0]
 80013f6:	3f01      	subs	r7, #1
 80013f8:	2b00      	cmp	r3, #0
 80013fa:	d19e      	bne.n	800133a <DAP_ProcessCommand+0x88a>
 80013fc:	4631      	mov	r1, r6
 80013fe:	200e      	movs	r0, #14
 8001400:	f001 fdac 	bl	8002f5c <JTAG_Transfer>
 8001404:	2802      	cmp	r0, #2
 8001406:	d0f3      	beq.n	80013f0 <DAP_ProcessCommand+0x940>
 8001408:	2801      	cmp	r0, #1
 800140a:	f040 855a 	bne.w	8001ec2 <DAP_ProcessCommand+0x1412>
 800140e:	2000      	movs	r0, #0
 8001410:	990b      	ldr	r1, [sp, #44]	; 0x2c
 8001412:	9a06      	ldr	r2, [sp, #24]
 8001414:	0a0e      	lsrs	r6, r1, #8
 8001416:	f361 0007 	bfi	r0, r1, #0, #8
 800141a:	f366 200f 	bfi	r0, r6, #8, #8
 800141e:	0c0e      	lsrs	r6, r1, #16
 8001420:	f366 4017 	bfi	r0, r6, #16, #8
 8001424:	0e09      	lsrs	r1, r1, #24
 8001426:	f361 601f 	bfi	r0, r1, #24, #8
 800142a:	f842 0b04 	str.w	r0, [r2], #4
 800142e:	230a      	movs	r3, #10
 8001430:	9206      	str	r2, [sp, #24]
 8001432:	e775      	b.n	8001320 <DAP_ProcessCommand+0x870>
 8001434:	9802      	ldr	r0, [sp, #8]
 8001436:	4298      	cmp	r0, r3
 8001438:	d001      	beq.n	800143e <DAP_ProcessCommand+0x98e>
 800143a:	f001 fd85 	bl	8002f48 <JTAG_IR>
 800143e:	f8ba 700a 	ldrh.w	r7, [sl, #10]
 8001442:	ae0b      	add	r6, sp, #44	; 0x2c
 8001444:	e007      	b.n	8001456 <DAP_ProcessCommand+0x9a6>
 8001446:	2f00      	cmp	r7, #0
 8001448:	f43f af77 	beq.w	800133a <DAP_ProcessCommand+0x88a>
 800144c:	7823      	ldrb	r3, [r4, #0]
 800144e:	3f01      	subs	r7, #1
 8001450:	2b00      	cmp	r3, #0
 8001452:	f47f af72 	bne.w	800133a <DAP_ProcessCommand+0x88a>
 8001456:	4631      	mov	r1, r6
 8001458:	4628      	mov	r0, r5
 800145a:	f001 fd7f 	bl	8002f5c <JTAG_Transfer>
 800145e:	2802      	cmp	r0, #2
 8001460:	d0f1      	beq.n	8001446 <DAP_ProcessCommand+0x996>
 8001462:	2801      	cmp	r0, #1
 8001464:	f040 852d 	bne.w	8001ec2 <DAP_ProcessCommand+0x1412>
 8001468:	9b02      	ldr	r3, [sp, #8]
 800146a:	2700      	movs	r7, #0
 800146c:	e707      	b.n	800127e <DAP_ProcessCommand+0x7ce>
 800146e:	9a01      	ldr	r2, [sp, #4]
 8001470:	9802      	ldr	r0, [sp, #8]
 8001472:	f8d2 2001 	ldr.w	r2, [r2, #1]
 8001476:	4298      	cmp	r0, r3
 8001478:	9208      	str	r2, [sp, #32]
 800147a:	f8ba 800c 	ldrh.w	r8, [sl, #12]
 800147e:	d001      	beq.n	8001484 <DAP_ProcessCommand+0x9d4>
 8001480:	f001 fd62 	bl	8002f48 <JTAG_IR>
 8001484:	f8ba 600a 	ldrh.w	r6, [sl, #10]
 8001488:	e007      	b.n	800149a <DAP_ProcessCommand+0x9ea>
 800148a:	2e00      	cmp	r6, #0
 800148c:	f43f af55 	beq.w	800133a <DAP_ProcessCommand+0x88a>
 8001490:	7823      	ldrb	r3, [r4, #0]
 8001492:	3e01      	subs	r6, #1
 8001494:	2b00      	cmp	r3, #0
 8001496:	f47f af50 	bne.w	800133a <DAP_ProcessCommand+0x88a>
 800149a:	2100      	movs	r1, #0
 800149c:	4628      	mov	r0, r5
 800149e:	f001 fd5d 	bl	8002f5c <JTAG_Transfer>
 80014a2:	2802      	cmp	r0, #2
 80014a4:	d0f1      	beq.n	800148a <DAP_ProcessCommand+0x9da>
 80014a6:	2801      	cmp	r0, #1
 80014a8:	f040 850b 	bne.w	8001ec2 <DAP_ProcessCommand+0x1412>
 80014ac:	9709      	str	r7, [sp, #36]	; 0x24
 80014ae:	4647      	mov	r7, r8
 80014b0:	f8dd 8020 	ldr.w	r8, [sp, #32]
 80014b4:	ae0b      	add	r6, sp, #44	; 0x2c
 80014b6:	4623      	mov	r3, r4
 80014b8:	f8ba b00a 	ldrh.w	fp, [sl, #10]
 80014bc:	465c      	mov	r4, fp
 80014be:	469b      	mov	fp, r3
 80014c0:	e004      	b.n	80014cc <DAP_ProcessCommand+0xa1c>
 80014c2:	b344      	cbz	r4, 8001516 <DAP_ProcessCommand+0xa66>
 80014c4:	f89b 3000 	ldrb.w	r3, [fp]
 80014c8:	3c01      	subs	r4, #1
 80014ca:	bb23      	cbnz	r3, 8001516 <DAP_ProcessCommand+0xa66>
 80014cc:	4631      	mov	r1, r6
 80014ce:	4628      	mov	r0, r5
 80014d0:	f001 fd44 	bl	8002f5c <JTAG_Transfer>
 80014d4:	2802      	cmp	r0, #2
 80014d6:	d0f4      	beq.n	80014c2 <DAP_ProcessCommand+0xa12>
 80014d8:	f8da 3010 	ldr.w	r3, [sl, #16]
 80014dc:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80014de:	2801      	cmp	r0, #1
 80014e0:	465c      	mov	r4, fp
 80014e2:	ea03 0302 	and.w	r3, r3, r2
 80014e6:	f040 84e7 	bne.w	8001eb8 <DAP_ProcessCommand+0x1408>
 80014ea:	4598      	cmp	r8, r3
 80014ec:	f000 822b 	beq.w	8001946 <DAP_ProcessCommand+0xe96>
 80014f0:	2f00      	cmp	r7, #0
 80014f2:	f000 822e 	beq.w	8001952 <DAP_ProcessCommand+0xea2>
 80014f6:	f89b 3000 	ldrb.w	r3, [fp]
 80014fa:	3f01      	subs	r7, #1
 80014fc:	2b00      	cmp	r3, #0
 80014fe:	d0da      	beq.n	80014b6 <DAP_ProcessCommand+0xa06>
 8001500:	fa5f f189 	uxtb.w	r1, r9
 8001504:	9007      	str	r0, [sp, #28]
 8001506:	e9dd 8b03 	ldrd	r8, fp, [sp, #12]
 800150a:	9b07      	ldr	r3, [sp, #28]
 800150c:	f043 0310 	orr.w	r3, r3, #16
 8001510:	b2db      	uxtb	r3, r3
 8001512:	9307      	str	r3, [sp, #28]
 8001514:	e6f7      	b.n	8001306 <DAP_ProcessCommand+0x856>
 8001516:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8001518:	e9dd 8b03 	ldrd	r8, fp, [sp, #12]
 800151c:	f8da 3010 	ldr.w	r3, [sl, #16]
 8001520:	fa5f f189 	uxtb.w	r1, r9
 8001524:	401a      	ands	r2, r3
 8001526:	9b08      	ldr	r3, [sp, #32]
 8001528:	4293      	cmp	r3, r2
 800152a:	d1ee      	bne.n	800150a <DAP_ProcessCommand+0xa5a>
 800152c:	b2c3      	uxtb	r3, r0
 800152e:	9307      	str	r3, [sp, #28]
 8001530:	e6e9      	b.n	8001306 <DAP_ProcessCommand+0x856>
 8001532:	2300      	movs	r3, #0
 8001534:	4cad      	ldr	r4, [pc, #692]	; (80017ec <DAP_ProcessCommand+0xd3c>)
 8001536:	9302      	str	r3, [sp, #8]
 8001538:	9305      	str	r3, [sp, #20]
 800153a:	7023      	strb	r3, [r4, #0]
 800153c:	4618      	mov	r0, r3
 800153e:	9301      	str	r3, [sp, #4]
 8001540:	1ccb      	adds	r3, r1, #3
 8001542:	9307      	str	r3, [sp, #28]
 8001544:	1ceb      	adds	r3, r5, #3
 8001546:	4699      	mov	r9, r3
 8001548:	78aa      	ldrb	r2, [r5, #2]
 800154a:	f8cd 800c 	str.w	r8, [sp, #12]
 800154e:	9206      	str	r2, [sp, #24]
 8001550:	9104      	str	r1, [sp, #16]
 8001552:	9b06      	ldr	r3, [sp, #24]
 8001554:	9a01      	ldr	r2, [sp, #4]
 8001556:	4293      	cmp	r3, r2
 8001558:	f000 80b6 	beq.w	80016c8 <DAP_ProcessCommand+0xc18>
 800155c:	464f      	mov	r7, r9
 800155e:	f817 5b01 	ldrb.w	r5, [r7], #1
 8001562:	f015 0302 	ands.w	r3, r5, #2
 8001566:	f000 8098 	beq.w	800169a <DAP_ProcessCommand+0xbea>
 800156a:	9b05      	ldr	r3, [sp, #20]
 800156c:	f8ba 800a 	ldrh.w	r8, [sl, #10]
 8001570:	b37b      	cbz	r3, 80015d2 <DAP_ProcessCommand+0xb22>
 8001572:	f005 0211 	and.w	r2, r5, #17
 8001576:	2a01      	cmp	r2, #1
 8001578:	f000 80d3 	beq.w	8001722 <DAP_ProcessCommand+0xc72>
 800157c:	f04f 0b00 	mov.w	fp, #0
 8001580:	ae0b      	add	r6, sp, #44	; 0x2c
 8001582:	e008      	b.n	8001596 <DAP_ProcessCommand+0xae6>
 8001584:	45d8      	cmp	r8, fp
 8001586:	f000 80df 	beq.w	8001748 <DAP_ProcessCommand+0xc98>
 800158a:	7823      	ldrb	r3, [r4, #0]
 800158c:	f10b 0b01 	add.w	fp, fp, #1
 8001590:	2b00      	cmp	r3, #0
 8001592:	f040 80d9 	bne.w	8001748 <DAP_ProcessCommand+0xc98>
 8001596:	4631      	mov	r1, r6
 8001598:	200e      	movs	r0, #14
 800159a:	f7ff fa7f 	bl	8000a9c <SWD_Transfer>
 800159e:	2802      	cmp	r0, #2
 80015a0:	d0f0      	beq.n	8001584 <DAP_ProcessCommand+0xad4>
 80015a2:	2300      	movs	r3, #0
 80015a4:	9305      	str	r3, [sp, #20]
 80015a6:	2801      	cmp	r0, #1
 80015a8:	f040 80ce 	bne.w	8001748 <DAP_ProcessCommand+0xc98>
 80015ac:	2100      	movs	r1, #0
 80015ae:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80015b0:	9b07      	ldr	r3, [sp, #28]
 80015b2:	0a16      	lsrs	r6, r2, #8
 80015b4:	f362 0107 	bfi	r1, r2, #0, #8
 80015b8:	f366 210f 	bfi	r1, r6, #8, #8
 80015bc:	0c16      	lsrs	r6, r2, #16
 80015be:	f366 4117 	bfi	r1, r6, #16, #8
 80015c2:	0e12      	lsrs	r2, r2, #24
 80015c4:	f362 611f 	bfi	r1, r2, #24, #8
 80015c8:	f843 1b04 	str.w	r1, [r3], #4
 80015cc:	f8ba 800a 	ldrh.w	r8, [sl, #10]
 80015d0:	9307      	str	r3, [sp, #28]
 80015d2:	f015 0110 	ands.w	r1, r5, #16
 80015d6:	f005 0201 	and.w	r2, r5, #1
 80015da:	f000 80b8 	beq.w	800174e <DAP_ProcessCommand+0xc9e>
 80015de:	f8d9 3001 	ldr.w	r3, [r9, #1]
 80015e2:	f8ba 700c 	ldrh.w	r7, [sl, #12]
 80015e6:	9302      	str	r3, [sp, #8]
 80015e8:	b1b2      	cbz	r2, 8001618 <DAP_ProcessCommand+0xb68>
 80015ea:	4646      	mov	r6, r8
 80015ec:	e007      	b.n	80015fe <DAP_ProcessCommand+0xb4e>
 80015ee:	2e00      	cmp	r6, #0
 80015f0:	f000 80aa 	beq.w	8001748 <DAP_ProcessCommand+0xc98>
 80015f4:	7822      	ldrb	r2, [r4, #0]
 80015f6:	b29e      	uxth	r6, r3
 80015f8:	2a00      	cmp	r2, #0
 80015fa:	f040 80a5 	bne.w	8001748 <DAP_ProcessCommand+0xc98>
 80015fe:	2100      	movs	r1, #0
 8001600:	4628      	mov	r0, r5
 8001602:	f7ff fa4b 	bl	8000a9c <SWD_Transfer>
 8001606:	2802      	cmp	r0, #2
 8001608:	f106 33ff 	add.w	r3, r6, #4294967295	; 0xffffffff
 800160c:	d0ef      	beq.n	80015ee <DAP_ProcessCommand+0xb3e>
 800160e:	2801      	cmp	r0, #1
 8001610:	f040 809a 	bne.w	8001748 <DAP_ProcessCommand+0xc98>
 8001614:	f8ba 800a 	ldrh.w	r8, [sl, #10]
 8001618:	ae0b      	add	r6, sp, #44	; 0x2c
 800161a:	e006      	b.n	800162a <DAP_ProcessCommand+0xb7a>
 800161c:	f1b8 0f00 	cmp.w	r8, #0
 8001620:	d024      	beq.n	800166c <DAP_ProcessCommand+0xbbc>
 8001622:	7823      	ldrb	r3, [r4, #0]
 8001624:	fa1f f882 	uxth.w	r8, r2
 8001628:	bb03      	cbnz	r3, 800166c <DAP_ProcessCommand+0xbbc>
 800162a:	4631      	mov	r1, r6
 800162c:	4628      	mov	r0, r5
 800162e:	f7ff fa35 	bl	8000a9c <SWD_Transfer>
 8001632:	2802      	cmp	r0, #2
 8001634:	f108 32ff 	add.w	r2, r8, #4294967295	; 0xffffffff
 8001638:	d0f0      	beq.n	800161c <DAP_ProcessCommand+0xb6c>
 800163a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800163c:	f8da 3010 	ldr.w	r3, [sl, #16]
 8001640:	2801      	cmp	r0, #1
 8001642:	f107 31ff 	add.w	r1, r7, #4294967295	; 0xffffffff
 8001646:	ea03 0302 	and.w	r3, r3, r2
 800164a:	f040 8431 	bne.w	8001eb0 <DAP_ProcessCommand+0x1400>
 800164e:	9a02      	ldr	r2, [sp, #8]
 8001650:	4293      	cmp	r3, r2
 8001652:	f000 80f2 	beq.w	800183a <DAP_ProcessCommand+0xd8a>
 8001656:	2f00      	cmp	r7, #0
 8001658:	f000 80bf 	beq.w	80017da <DAP_ProcessCommand+0xd2a>
 800165c:	7823      	ldrb	r3, [r4, #0]
 800165e:	b28f      	uxth	r7, r1
 8001660:	2b00      	cmp	r3, #0
 8001662:	f040 80ba 	bne.w	80017da <DAP_ProcessCommand+0xd2a>
 8001666:	f8ba 800a 	ldrh.w	r8, [sl, #10]
 800166a:	e7de      	b.n	800162a <DAP_ProcessCommand+0xb7a>
 800166c:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800166e:	e9dd 8b03 	ldrd	r8, fp, [sp, #12]
 8001672:	f8da 3010 	ldr.w	r3, [sl, #16]
 8001676:	401a      	ands	r2, r3
 8001678:	9b02      	ldr	r3, [sp, #8]
 800167a:	4293      	cmp	r3, r2
 800167c:	d002      	beq.n	8001684 <DAP_ProcessCommand+0xbd4>
 800167e:	f040 0010 	orr.w	r0, r0, #16
 8001682:	b2c0      	uxtb	r0, r0
 8001684:	9b07      	ldr	r3, [sp, #28]
 8001686:	9a01      	ldr	r2, [sp, #4]
 8001688:	eba3 0308 	sub.w	r3, r3, r8
 800168c:	3301      	adds	r3, #1
 800168e:	f88b 2001 	strb.w	r2, [fp, #1]
 8001692:	f88b 0002 	strb.w	r0, [fp, #2]
 8001696:	f7ff ba37 	b.w	8000b08 <DAP_ProcessCommand+0x58>
 800169a:	9a05      	ldr	r2, [sp, #20]
 800169c:	2a00      	cmp	r2, #0
 800169e:	d15f      	bne.n	8001760 <DAP_ProcessCommand+0xcb0>
 80016a0:	f8d9 3001 	ldr.w	r3, [r9, #1]
 80016a4:	06a8      	lsls	r0, r5, #26
 80016a6:	f109 0905 	add.w	r9, r9, #5
 80016aa:	930b      	str	r3, [sp, #44]	; 0x2c
 80016ac:	d57d      	bpl.n	80017aa <DAP_ProcessCommand+0xcfa>
 80016ae:	f8ca 3010 	str.w	r3, [sl, #16]
 80016b2:	2300      	movs	r3, #0
 80016b4:	2001      	movs	r0, #1
 80016b6:	9305      	str	r3, [sp, #20]
 80016b8:	9a01      	ldr	r2, [sp, #4]
 80016ba:	7823      	ldrb	r3, [r4, #0]
 80016bc:	3201      	adds	r2, #1
 80016be:	b2d2      	uxtb	r2, r2
 80016c0:	9201      	str	r2, [sp, #4]
 80016c2:	2b00      	cmp	r3, #0
 80016c4:	f43f af45 	beq.w	8001552 <DAP_ProcessCommand+0xaa2>
 80016c8:	2801      	cmp	r0, #1
 80016ca:	e9dd 8b03 	ldrd	r8, fp, [sp, #12]
 80016ce:	d1d9      	bne.n	8001684 <DAP_ProcessCommand+0xbd4>
 80016d0:	9b05      	ldr	r3, [sp, #20]
 80016d2:	2b00      	cmp	r3, #0
 80016d4:	f000 82ea 	beq.w	8001cac <DAP_ProcessCommand+0x11fc>
 80016d8:	2600      	movs	r6, #0
 80016da:	f8ba 500a 	ldrh.w	r5, [sl, #10]
 80016de:	af0b      	add	r7, sp, #44	; 0x2c
 80016e0:	e005      	b.n	80016ee <DAP_ProcessCommand+0xc3e>
 80016e2:	42b5      	cmp	r5, r6
 80016e4:	d0ce      	beq.n	8001684 <DAP_ProcessCommand+0xbd4>
 80016e6:	7823      	ldrb	r3, [r4, #0]
 80016e8:	3601      	adds	r6, #1
 80016ea:	2b00      	cmp	r3, #0
 80016ec:	d1ca      	bne.n	8001684 <DAP_ProcessCommand+0xbd4>
 80016ee:	4639      	mov	r1, r7
 80016f0:	200e      	movs	r0, #14
 80016f2:	f7ff f9d3 	bl	8000a9c <SWD_Transfer>
 80016f6:	2802      	cmp	r0, #2
 80016f8:	d0f3      	beq.n	80016e2 <DAP_ProcessCommand+0xc32>
 80016fa:	2801      	cmp	r0, #1
 80016fc:	d1c2      	bne.n	8001684 <DAP_ProcessCommand+0xbd4>
 80016fe:	2200      	movs	r2, #0
 8001700:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8001702:	9907      	ldr	r1, [sp, #28]
 8001704:	0a1c      	lsrs	r4, r3, #8
 8001706:	f363 0207 	bfi	r2, r3, #0, #8
 800170a:	f364 220f 	bfi	r2, r4, #8, #8
 800170e:	0c1c      	lsrs	r4, r3, #16
 8001710:	f364 4217 	bfi	r2, r4, #16, #8
 8001714:	0e1b      	lsrs	r3, r3, #24
 8001716:	f363 621f 	bfi	r2, r3, #24, #8
 800171a:	f841 2b04 	str.w	r2, [r1], #4
 800171e:	9107      	str	r1, [sp, #28]
 8001720:	e7b0      	b.n	8001684 <DAP_ProcessCommand+0xbd4>
 8001722:	ae0b      	add	r6, sp, #44	; 0x2c
 8001724:	4633      	mov	r3, r6
 8001726:	4646      	mov	r6, r8
 8001728:	4698      	mov	r8, r3
 800172a:	e002      	b.n	8001732 <DAP_ProcessCommand+0xc82>
 800172c:	7822      	ldrb	r2, [r4, #0]
 800172e:	b29e      	uxth	r6, r3
 8001730:	b952      	cbnz	r2, 8001748 <DAP_ProcessCommand+0xc98>
 8001732:	4641      	mov	r1, r8
 8001734:	4628      	mov	r0, r5
 8001736:	f7ff f9b1 	bl	8000a9c <SWD_Transfer>
 800173a:	2802      	cmp	r0, #2
 800173c:	f106 33ff 	add.w	r3, r6, #4294967295	; 0xffffffff
 8001740:	f47f af31 	bne.w	80015a6 <DAP_ProcessCommand+0xaf6>
 8001744:	2e00      	cmp	r6, #0
 8001746:	d1f1      	bne.n	800172c <DAP_ProcessCommand+0xc7c>
 8001748:	e9dd 8b03 	ldrd	r8, fp, [sp, #12]
 800174c:	e79a      	b.n	8001684 <DAP_ProcessCommand+0xbd4>
 800174e:	2a00      	cmp	r2, #0
 8001750:	d047      	beq.n	80017e2 <DAP_ProcessCommand+0xd32>
 8001752:	9b05      	ldr	r3, [sp, #20]
 8001754:	2b00      	cmp	r3, #0
 8001756:	f000 808c 	beq.w	8001872 <DAP_ProcessCommand+0xdc2>
 800175a:	46b9      	mov	r9, r7
 800175c:	9102      	str	r1, [sp, #8]
 800175e:	e7ab      	b.n	80016b8 <DAP_ProcessCommand+0xc08>
 8001760:	461f      	mov	r7, r3
 8001762:	f8ba 800a 	ldrh.w	r8, [sl, #10]
 8001766:	ae0b      	add	r6, sp, #44	; 0x2c
 8001768:	e005      	b.n	8001776 <DAP_ProcessCommand+0xcc6>
 800176a:	45b8      	cmp	r8, r7
 800176c:	d0ec      	beq.n	8001748 <DAP_ProcessCommand+0xc98>
 800176e:	7823      	ldrb	r3, [r4, #0]
 8001770:	3701      	adds	r7, #1
 8001772:	2b00      	cmp	r3, #0
 8001774:	d1e8      	bne.n	8001748 <DAP_ProcessCommand+0xc98>
 8001776:	4631      	mov	r1, r6
 8001778:	200e      	movs	r0, #14
 800177a:	f7ff f98f 	bl	8000a9c <SWD_Transfer>
 800177e:	2802      	cmp	r0, #2
 8001780:	d0f3      	beq.n	800176a <DAP_ProcessCommand+0xcba>
 8001782:	2801      	cmp	r0, #1
 8001784:	d1e0      	bne.n	8001748 <DAP_ProcessCommand+0xc98>
 8001786:	2200      	movs	r2, #0
 8001788:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800178a:	9907      	ldr	r1, [sp, #28]
 800178c:	0a18      	lsrs	r0, r3, #8
 800178e:	f363 0207 	bfi	r2, r3, #0, #8
 8001792:	f360 220f 	bfi	r2, r0, #8, #8
 8001796:	0c18      	lsrs	r0, r3, #16
 8001798:	f360 4217 	bfi	r2, r0, #16, #8
 800179c:	0e1b      	lsrs	r3, r3, #24
 800179e:	f363 621f 	bfi	r2, r3, #24, #8
 80017a2:	f841 2b04 	str.w	r2, [r1], #4
 80017a6:	9107      	str	r1, [sp, #28]
 80017a8:	e77a      	b.n	80016a0 <DAP_ProcessCommand+0xbf0>
 80017aa:	f8ba 700a 	ldrh.w	r7, [sl, #10]
 80017ae:	ae0b      	add	r6, sp, #44	; 0x2c
 80017b0:	e005      	b.n	80017be <DAP_ProcessCommand+0xd0e>
 80017b2:	2f00      	cmp	r7, #0
 80017b4:	d0c8      	beq.n	8001748 <DAP_ProcessCommand+0xc98>
 80017b6:	7822      	ldrb	r2, [r4, #0]
 80017b8:	b29f      	uxth	r7, r3
 80017ba:	2a00      	cmp	r2, #0
 80017bc:	d1c4      	bne.n	8001748 <DAP_ProcessCommand+0xc98>
 80017be:	4631      	mov	r1, r6
 80017c0:	4628      	mov	r0, r5
 80017c2:	f7ff f96b 	bl	8000a9c <SWD_Transfer>
 80017c6:	2802      	cmp	r0, #2
 80017c8:	f107 33ff 	add.w	r3, r7, #4294967295	; 0xffffffff
 80017cc:	d0f1      	beq.n	80017b2 <DAP_ProcessCommand+0xd02>
 80017ce:	2801      	cmp	r0, #1
 80017d0:	d1ba      	bne.n	8001748 <DAP_ProcessCommand+0xc98>
 80017d2:	2300      	movs	r3, #0
 80017d4:	9002      	str	r0, [sp, #8]
 80017d6:	9305      	str	r3, [sp, #20]
 80017d8:	e76e      	b.n	80016b8 <DAP_ProcessCommand+0xc08>
 80017da:	e9dd 8b03 	ldrd	r8, fp, [sp, #12]
 80017de:	2011      	movs	r0, #17
 80017e0:	e750      	b.n	8001684 <DAP_ProcessCommand+0xbd4>
 80017e2:	4643      	mov	r3, r8
 80017e4:	ae0b      	add	r6, sp, #44	; 0x2c
 80017e6:	46a8      	mov	r8, r5
 80017e8:	461d      	mov	r5, r3
 80017ea:	e007      	b.n	80017fc <DAP_ProcessCommand+0xd4c>
 80017ec:	200004e0 	.word	0x200004e0
 80017f0:	2d00      	cmp	r5, #0
 80017f2:	d0a9      	beq.n	8001748 <DAP_ProcessCommand+0xc98>
 80017f4:	7822      	ldrb	r2, [r4, #0]
 80017f6:	b29d      	uxth	r5, r3
 80017f8:	2a00      	cmp	r2, #0
 80017fa:	d1a5      	bne.n	8001748 <DAP_ProcessCommand+0xc98>
 80017fc:	4631      	mov	r1, r6
 80017fe:	4640      	mov	r0, r8
 8001800:	f7ff f94c 	bl	8000a9c <SWD_Transfer>
 8001804:	2802      	cmp	r0, #2
 8001806:	f105 33ff 	add.w	r3, r5, #4294967295	; 0xffffffff
 800180a:	d0f1      	beq.n	80017f0 <DAP_ProcessCommand+0xd40>
 800180c:	2801      	cmp	r0, #1
 800180e:	d19b      	bne.n	8001748 <DAP_ProcessCommand+0xc98>
 8001810:	2100      	movs	r1, #0
 8001812:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8001814:	9b07      	ldr	r3, [sp, #28]
 8001816:	0a15      	lsrs	r5, r2, #8
 8001818:	f362 0107 	bfi	r1, r2, #0, #8
 800181c:	f365 210f 	bfi	r1, r5, #8, #8
 8001820:	0c15      	lsrs	r5, r2, #16
 8001822:	f365 4117 	bfi	r1, r5, #16, #8
 8001826:	0e12      	lsrs	r2, r2, #24
 8001828:	f362 611f 	bfi	r1, r2, #24, #8
 800182c:	f843 1b04 	str.w	r1, [r3], #4
 8001830:	9307      	str	r3, [sp, #28]
 8001832:	2300      	movs	r3, #0
 8001834:	46b9      	mov	r9, r7
 8001836:	9302      	str	r3, [sp, #8]
 8001838:	e73e      	b.n	80016b8 <DAP_ProcessCommand+0xc08>
 800183a:	2300      	movs	r3, #0
 800183c:	f109 0905 	add.w	r9, r9, #5
 8001840:	9302      	str	r3, [sp, #8]
 8001842:	e739      	b.n	80016b8 <DAP_ProcessCommand+0xc08>
 8001844:	eb02 0353 	add.w	r3, r2, r3, lsr #1
 8001848:	3b01      	subs	r3, #1
 800184a:	fbb3 f3f2 	udiv	r3, r3, r2
 800184e:	2200      	movs	r2, #0
 8001850:	2b02      	cmp	r3, #2
 8001852:	bf98      	it	ls
 8001854:	2301      	movls	r3, #1
 8001856:	f8df a358 	ldr.w	sl, [pc, #856]	; 8001bb0 <DAP_ProcessCommand+0x1100>
 800185a:	f88a 2001 	strb.w	r2, [sl, #1]
 800185e:	bf82      	ittt	hi
 8001860:	f1a2 3255 	subhi.w	r2, r2, #1431655765	; 0x55555555
 8001864:	fba2 2303 	umullhi	r2, r3, r2, r3
 8001868:	085b      	lsrhi	r3, r3, #1
 800186a:	f8ca 3004 	str.w	r3, [sl, #4]
 800186e:	f7ff b9ec 	b.w	8000c4a <DAP_ProcessCommand+0x19a>
 8001872:	4646      	mov	r6, r8
 8001874:	e007      	b.n	8001886 <DAP_ProcessCommand+0xdd6>
 8001876:	2e00      	cmp	r6, #0
 8001878:	f43f af66 	beq.w	8001748 <DAP_ProcessCommand+0xc98>
 800187c:	7822      	ldrb	r2, [r4, #0]
 800187e:	b29e      	uxth	r6, r3
 8001880:	2a00      	cmp	r2, #0
 8001882:	f47f af61 	bne.w	8001748 <DAP_ProcessCommand+0xc98>
 8001886:	2100      	movs	r1, #0
 8001888:	4628      	mov	r0, r5
 800188a:	f7ff f907 	bl	8000a9c <SWD_Transfer>
 800188e:	2802      	cmp	r0, #2
 8001890:	f106 33ff 	add.w	r3, r6, #4294967295	; 0xffffffff
 8001894:	d0ef      	beq.n	8001876 <DAP_ProcessCommand+0xdc6>
 8001896:	2801      	cmp	r0, #1
 8001898:	f47f af56 	bne.w	8001748 <DAP_ProcessCommand+0xc98>
 800189c:	2300      	movs	r3, #0
 800189e:	46b9      	mov	r9, r7
 80018a0:	9302      	str	r3, [sp, #8]
 80018a2:	9005      	str	r0, [sp, #20]
 80018a4:	e708      	b.n	80016b8 <DAP_ProcessCommand+0xc08>
 80018a6:	2c00      	cmp	r4, #0
 80018a8:	f280 8237 	bge.w	8001d1a <DAP_ProcessCommand+0x126a>
 80018ac:	f1b9 0f00 	cmp.w	r9, #0
 80018b0:	d176      	bne.n	80019a0 <DAP_ProcessCommand+0xef0>
 80018b2:	f1b8 0f00 	cmp.w	r8, #0
 80018b6:	d118      	bne.n	80018ea <DAP_ProcessCommand+0xe3a>
 80018b8:	49bb      	ldr	r1, [pc, #748]	; (8001ba8 <DAP_ProcessCommand+0x10f8>)
 80018ba:	48bc      	ldr	r0, [pc, #752]	; (8001bac <DAP_ProcessCommand+0x10fc>)
 80018bc:	680b      	ldr	r3, [r1, #0]
 80018be:	f003 0301 	and.w	r3, r3, #1
 80018c2:	429e      	cmp	r6, r3
 80018c4:	d10c      	bne.n	80018e0 <DAP_ProcessCommand+0xe30>
 80018c6:	460c      	mov	r4, r1
 80018c8:	b127      	cbz	r7, 80018d4 <DAP_ProcessCommand+0xe24>
 80018ca:	680b      	ldr	r3, [r1, #0]
 80018cc:	f3c3 0380 	ubfx	r3, r3, #2, #1
 80018d0:	429d      	cmp	r5, r3
 80018d2:	d105      	bne.n	80018e0 <DAP_ProcessCommand+0xe30>
 80018d4:	6823      	ldr	r3, [r4, #0]
 80018d6:	f3c3 1340 	ubfx	r3, r3, #5, #1
 80018da:	429a      	cmp	r2, r3
 80018dc:	f43f aa83 	beq.w	8000de6 <DAP_ProcessCommand+0x336>
 80018e0:	6803      	ldr	r3, [r0, #0]
 80018e2:	03dc      	lsls	r4, r3, #15
 80018e4:	d5e8      	bpl.n	80018b8 <DAP_ProcessCommand+0xe08>
 80018e6:	f7ff ba7e 	b.w	8000de6 <DAP_ProcessCommand+0x336>
 80018ea:	48af      	ldr	r0, [pc, #700]	; (8001ba8 <DAP_ProcessCommand+0x10f8>)
 80018ec:	6801      	ldr	r1, [r0, #0]
 80018ee:	f001 0101 	and.w	r1, r1, #1
 80018f2:	428e      	cmp	r6, r1
 80018f4:	d111      	bne.n	800191a <DAP_ProcessCommand+0xe6a>
 80018f6:	6801      	ldr	r1, [r0, #0]
 80018f8:	f3c1 0140 	ubfx	r1, r1, #1, #1
 80018fc:	428b      	cmp	r3, r1
 80018fe:	d10c      	bne.n	800191a <DAP_ProcessCommand+0xe6a>
 8001900:	4ca9      	ldr	r4, [pc, #676]	; (8001ba8 <DAP_ProcessCommand+0x10f8>)
 8001902:	b127      	cbz	r7, 800190e <DAP_ProcessCommand+0xe5e>
 8001904:	6801      	ldr	r1, [r0, #0]
 8001906:	f3c1 0180 	ubfx	r1, r1, #2, #1
 800190a:	428d      	cmp	r5, r1
 800190c:	d105      	bne.n	800191a <DAP_ProcessCommand+0xe6a>
 800190e:	6821      	ldr	r1, [r4, #0]
 8001910:	f3c1 1140 	ubfx	r1, r1, #5, #1
 8001914:	428a      	cmp	r2, r1
 8001916:	f43f aa66 	beq.w	8000de6 <DAP_ProcessCommand+0x336>
 800191a:	49a4      	ldr	r1, [pc, #656]	; (8001bac <DAP_ProcessCommand+0x10fc>)
 800191c:	6809      	ldr	r1, [r1, #0]
 800191e:	03c8      	lsls	r0, r1, #15
 8001920:	d5e3      	bpl.n	80018ea <DAP_ProcessCommand+0xe3a>
 8001922:	f7ff ba60 	b.w	8000de6 <DAP_ProcessCommand+0x336>
 8001926:	2303      	movs	r3, #3
 8001928:	2201      	movs	r2, #1
 800192a:	708b      	strb	r3, [r1, #2]
 800192c:	f7ff bad2 	b.w	8000ed4 <DAP_ProcessCommand+0x424>
 8001930:	2140      	movs	r1, #64	; 0x40
 8001932:	2303      	movs	r3, #3
 8001934:	2201      	movs	r2, #1
 8001936:	f88b 1002 	strb.w	r1, [fp, #2]
 800193a:	f7ff bacb 	b.w	8000ed4 <DAP_ProcessCommand+0x424>
 800193e:	f002 fb2f 	bl	8003fa0 <gpio_set>
 8001942:	f7ff b982 	b.w	8000c4a <DAP_ProcessCommand+0x19a>
 8001946:	9b01      	ldr	r3, [sp, #4]
 8001948:	9f09      	ldr	r7, [sp, #36]	; 0x24
 800194a:	3305      	adds	r3, #5
 800194c:	9301      	str	r3, [sp, #4]
 800194e:	9b02      	ldr	r3, [sp, #8]
 8001950:	e495      	b.n	800127e <DAP_ProcessCommand+0x7ce>
 8001952:	e9dd 8b03 	ldrd	r8, fp, [sp, #12]
 8001956:	9007      	str	r0, [sp, #28]
 8001958:	fa5f f189 	uxtb.w	r1, r9
 800195c:	e5d5      	b.n	800150a <DAP_ProcessCommand+0xa5a>
 800195e:	2f00      	cmp	r7, #0
 8001960:	f040 813d 	bne.w	8001bde <DAP_ProcessCommand+0x112e>
 8001964:	2c00      	cmp	r4, #0
 8001966:	bfb8      	it	lt
 8001968:	464e      	movlt	r6, r9
 800196a:	f280 8271 	bge.w	8001e50 <DAP_ProcessCommand+0x13a0>
 800196e:	4c8e      	ldr	r4, [pc, #568]	; (8001ba8 <DAP_ProcessCommand+0x10f8>)
 8001970:	4d8e      	ldr	r5, [pc, #568]	; (8001bac <DAP_ProcessCommand+0x10fc>)
 8001972:	6821      	ldr	r1, [r4, #0]
 8001974:	f3c1 0140 	ubfx	r1, r1, #1, #1
 8001978:	428b      	cmp	r3, r1
 800197a:	d10c      	bne.n	8001996 <DAP_ProcessCommand+0xee6>
 800197c:	4621      	mov	r1, r4
 800197e:	b126      	cbz	r6, 800198a <DAP_ProcessCommand+0xeda>
 8001980:	6824      	ldr	r4, [r4, #0]
 8001982:	f3c4 1400 	ubfx	r4, r4, #4, #1
 8001986:	42a0      	cmp	r0, r4
 8001988:	d105      	bne.n	8001996 <DAP_ProcessCommand+0xee6>
 800198a:	6809      	ldr	r1, [r1, #0]
 800198c:	f3c1 1140 	ubfx	r1, r1, #5, #1
 8001990:	428a      	cmp	r2, r1
 8001992:	f43f aa28 	beq.w	8000de6 <DAP_ProcessCommand+0x336>
 8001996:	6829      	ldr	r1, [r5, #0]
 8001998:	03c9      	lsls	r1, r1, #15
 800199a:	d5e8      	bpl.n	800196e <DAP_ProcessCommand+0xebe>
 800199c:	f7ff ba23 	b.w	8000de6 <DAP_ProcessCommand+0x336>
 80019a0:	2f00      	cmp	r7, #0
 80019a2:	f040 8158 	bne.w	8001c56 <DAP_ProcessCommand+0x11a6>
 80019a6:	4645      	mov	r5, r8
 80019a8:	4c7f      	ldr	r4, [pc, #508]	; (8001ba8 <DAP_ProcessCommand+0x10f8>)
 80019aa:	6821      	ldr	r1, [r4, #0]
 80019ac:	f001 0101 	and.w	r1, r1, #1
 80019b0:	428e      	cmp	r6, r1
 80019b2:	d10c      	bne.n	80019ce <DAP_ProcessCommand+0xf1e>
 80019b4:	b98d      	cbnz	r5, 80019da <DAP_ProcessCommand+0xf2a>
 80019b6:	4c7c      	ldr	r4, [pc, #496]	; (8001ba8 <DAP_ProcessCommand+0x10f8>)
 80019b8:	6821      	ldr	r1, [r4, #0]
 80019ba:	f3c1 1100 	ubfx	r1, r1, #4, #1
 80019be:	4288      	cmp	r0, r1
 80019c0:	d105      	bne.n	80019ce <DAP_ProcessCommand+0xf1e>
 80019c2:	6821      	ldr	r1, [r4, #0]
 80019c4:	f3c1 1140 	ubfx	r1, r1, #5, #1
 80019c8:	428a      	cmp	r2, r1
 80019ca:	f43f aa0c 	beq.w	8000de6 <DAP_ProcessCommand+0x336>
 80019ce:	4977      	ldr	r1, [pc, #476]	; (8001bac <DAP_ProcessCommand+0x10fc>)
 80019d0:	6809      	ldr	r1, [r1, #0]
 80019d2:	03c9      	lsls	r1, r1, #15
 80019d4:	d5e8      	bpl.n	80019a8 <DAP_ProcessCommand+0xef8>
 80019d6:	f7ff ba06 	b.w	8000de6 <DAP_ProcessCommand+0x336>
 80019da:	6821      	ldr	r1, [r4, #0]
 80019dc:	f3c1 0140 	ubfx	r1, r1, #1, #1
 80019e0:	428b      	cmp	r3, r1
 80019e2:	d0e8      	beq.n	80019b6 <DAP_ProcessCommand+0xf06>
 80019e4:	e7f3      	b.n	80019ce <DAP_ProcessCommand+0xf1e>
 80019e6:	4616      	mov	r6, r2
 80019e8:	4691      	mov	r9, r2
 80019ea:	f7ff bb81 	b.w	80010f0 <DAP_ProcessCommand+0x640>
 80019ee:	463e      	mov	r6, r7
 80019f0:	46ba      	mov	sl, r7
 80019f2:	463a      	mov	r2, r7
 80019f4:	f7ff bbe8 	b.w	80011c8 <DAP_ProcessCommand+0x718>
 80019f8:	9307      	str	r3, [sp, #28]
 80019fa:	4619      	mov	r1, r3
 80019fc:	e483      	b.n	8001306 <DAP_ProcessCommand+0x856>
 80019fe:	f019 0f01 	tst.w	r9, #1
 8001a02:	d014      	beq.n	8001a2e <DAP_ProcessCommand+0xf7e>
 8001a04:	461d      	mov	r5, r3
 8001a06:	e007      	b.n	8001a18 <DAP_ProcessCommand+0xf68>
 8001a08:	2d00      	cmp	r5, #0
 8001a0a:	f000 8175 	beq.w	8001cf8 <DAP_ProcessCommand+0x1248>
 8001a0e:	7823      	ldrb	r3, [r4, #0]
 8001a10:	3d01      	subs	r5, #1
 8001a12:	2b00      	cmp	r3, #0
 8001a14:	f040 8170 	bne.w	8001cf8 <DAP_ProcessCommand+0x1248>
 8001a18:	2100      	movs	r1, #0
 8001a1a:	4648      	mov	r0, r9
 8001a1c:	f7ff f83e 	bl	8000a9c <SWD_Transfer>
 8001a20:	2802      	cmp	r0, #2
 8001a22:	d0f1      	beq.n	8001a08 <DAP_ProcessCommand+0xf58>
 8001a24:	2801      	cmp	r0, #1
 8001a26:	f040 8167 	bne.w	8001cf8 <DAP_ProcessCommand+0x1248>
 8001a2a:	f8ba 300a 	ldrh.w	r3, [sl, #10]
 8001a2e:	2100      	movs	r1, #0
 8001a30:	1e7a      	subs	r2, r7, #1
 8001a32:	9604      	str	r6, [sp, #16]
 8001a34:	f8cd 8008 	str.w	r8, [sp, #8]
 8001a38:	4616      	mov	r6, r2
 8001a3a:	4688      	mov	r8, r1
 8001a3c:	f8cd b00c 	str.w	fp, [sp, #12]
 8001a40:	af0b      	add	r7, sp, #44	; 0x2c
 8001a42:	f8dd b004 	ldr.w	fp, [sp, #4]
 8001a46:	f8cd a004 	str.w	sl, [sp, #4]
 8001a4a:	b3be      	cbz	r6, 8001abc <DAP_ProcessCommand+0x100c>
 8001a4c:	fa5f f589 	uxtb.w	r5, r9
 8001a50:	46aa      	mov	sl, r5
 8001a52:	461d      	mov	r5, r3
 8001a54:	e003      	b.n	8001a5e <DAP_ProcessCommand+0xfae>
 8001a56:	b325      	cbz	r5, 8001aa2 <DAP_ProcessCommand+0xff2>
 8001a58:	7823      	ldrb	r3, [r4, #0]
 8001a5a:	3d01      	subs	r5, #1
 8001a5c:	bb0b      	cbnz	r3, 8001aa2 <DAP_ProcessCommand+0xff2>
 8001a5e:	4639      	mov	r1, r7
 8001a60:	4650      	mov	r0, sl
 8001a62:	f7ff f81b 	bl	8000a9c <SWD_Transfer>
 8001a66:	2802      	cmp	r0, #2
 8001a68:	d0f5      	beq.n	8001a56 <DAP_ProcessCommand+0xfa6>
 8001a6a:	2801      	cmp	r0, #1
 8001a6c:	d119      	bne.n	8001aa2 <DAP_ProcessCommand+0xff2>
 8001a6e:	2200      	movs	r2, #0
 8001a70:	4658      	mov	r0, fp
 8001a72:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8001a74:	f108 0801 	add.w	r8, r8, #1
 8001a78:	0a19      	lsrs	r1, r3, #8
 8001a7a:	f363 0207 	bfi	r2, r3, #0, #8
 8001a7e:	f361 220f 	bfi	r2, r1, #8, #8
 8001a82:	0c19      	lsrs	r1, r3, #16
 8001a84:	f361 4217 	bfi	r2, r1, #16, #8
 8001a88:	0e1b      	lsrs	r3, r3, #24
 8001a8a:	f363 621f 	bfi	r2, r3, #24, #8
 8001a8e:	f840 2b04 	str.w	r2, [r0], #4
 8001a92:	2e00      	cmp	r6, #0
 8001a94:	f000 8126 	beq.w	8001ce4 <DAP_ProcessCommand+0x1234>
 8001a98:	9b01      	ldr	r3, [sp, #4]
 8001a9a:	4683      	mov	fp, r0
 8001a9c:	895b      	ldrh	r3, [r3, #10]
 8001a9e:	3e01      	subs	r6, #1
 8001aa0:	e7d3      	b.n	8001a4a <DAP_ProcessCommand+0xf9a>
 8001aa2:	4643      	mov	r3, r8
 8001aa4:	f8cd b004 	str.w	fp, [sp, #4]
 8001aa8:	f8dd 8008 	ldr.w	r8, [sp, #8]
 8001aac:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8001ab0:	4606      	mov	r6, r0
 8001ab2:	b2da      	uxtb	r2, r3
 8001ab4:	f3c3 2a07 	ubfx	sl, r3, #8, #8
 8001ab8:	f7ff bb86 	b.w	80011c8 <DAP_ProcessCommand+0x718>
 8001abc:	f019 0f01 	tst.w	r9, #1
 8001ac0:	d0c4      	beq.n	8001a4c <DAP_ProcessCommand+0xf9c>
 8001ac2:	f04f 090e 	mov.w	r9, #14
 8001ac6:	464d      	mov	r5, r9
 8001ac8:	e7c2      	b.n	8001a50 <DAP_ProcessCommand+0xfa0>
 8001aca:	f8aa 3030 	strh.w	r3, [sl, #48]	; 0x30
 8001ace:	f7ff b8bc 	b.w	8000c4a <DAP_ProcessCommand+0x19a>
 8001ad2:	680c      	ldr	r4, [r1, #0]
 8001ad4:	f3c4 0480 	ubfx	r4, r4, #2, #1
 8001ad8:	42a5      	cmp	r5, r4
 8001ada:	f43f aa6f 	beq.w	8000fbc <DAP_ProcessCommand+0x50c>
 8001ade:	f7ff ba78 	b.w	8000fd2 <DAP_ProcessCommand+0x522>
 8001ae2:	f8dd 800c 	ldr.w	r8, [sp, #12]
 8001ae6:	463e      	mov	r6, r7
 8001ae8:	f8dd b010 	ldr.w	fp, [sp, #16]
 8001aec:	f89d 1014 	ldrb.w	r1, [sp, #20]
 8001af0:	2800      	cmp	r0, #0
 8001af2:	f47f abcf 	bne.w	8001294 <DAP_ProcessCommand+0x7e4>
 8001af6:	2300      	movs	r3, #0
 8001af8:	9307      	str	r3, [sp, #28]
 8001afa:	e404      	b.n	8001306 <DAP_ProcessCommand+0x856>
 8001afc:	463e      	mov	r6, r7
 8001afe:	46b9      	mov	r9, r7
 8001b00:	463a      	mov	r2, r7
 8001b02:	f7ff baf5 	b.w	80010f0 <DAP_ProcessCommand+0x640>
 8001b06:	f8ba 500a 	ldrh.w	r5, [sl, #10]
 8001b0a:	e007      	b.n	8001b1c <DAP_ProcessCommand+0x106c>
 8001b0c:	2d00      	cmp	r5, #0
 8001b0e:	f000 80e4 	beq.w	8001cda <DAP_ProcessCommand+0x122a>
 8001b12:	7823      	ldrb	r3, [r4, #0]
 8001b14:	3d01      	subs	r5, #1
 8001b16:	2b00      	cmp	r3, #0
 8001b18:	f040 80df 	bne.w	8001cda <DAP_ProcessCommand+0x122a>
 8001b1c:	2100      	movs	r1, #0
 8001b1e:	4648      	mov	r0, r9
 8001b20:	f001 fa1c 	bl	8002f5c <JTAG_Transfer>
 8001b24:	2802      	cmp	r0, #2
 8001b26:	d0f1      	beq.n	8001b0c <DAP_ProcessCommand+0x105c>
 8001b28:	2801      	cmp	r0, #1
 8001b2a:	f040 81b0 	bne.w	8001e8e <DAP_ProcessCommand+0x13de>
 8001b2e:	4649      	mov	r1, r9
 8001b30:	2200      	movs	r2, #0
 8001b32:	1e7b      	subs	r3, r7, #1
 8001b34:	9604      	str	r6, [sp, #16]
 8001b36:	f8cd b00c 	str.w	fp, [sp, #12]
 8001b3a:	4691      	mov	r9, r2
 8001b3c:	461e      	mov	r6, r3
 8001b3e:	468b      	mov	fp, r1
 8001b40:	af0b      	add	r7, sp, #44	; 0x2c
 8001b42:	f8cd 8004 	str.w	r8, [sp, #4]
 8001b46:	2e00      	cmp	r6, #0
 8001b48:	d03f      	beq.n	8001bca <DAP_ProcessCommand+0x111a>
 8001b4a:	fa5f f58b 	uxtb.w	r5, fp
 8001b4e:	f8ba 800a 	ldrh.w	r8, [sl, #10]
 8001b52:	4643      	mov	r3, r8
 8001b54:	46a8      	mov	r8, r5
 8001b56:	461d      	mov	r5, r3
 8001b58:	e003      	b.n	8001b62 <DAP_ProcessCommand+0x10b2>
 8001b5a:	b35d      	cbz	r5, 8001bb4 <DAP_ProcessCommand+0x1104>
 8001b5c:	7823      	ldrb	r3, [r4, #0]
 8001b5e:	3d01      	subs	r5, #1
 8001b60:	bb43      	cbnz	r3, 8001bb4 <DAP_ProcessCommand+0x1104>
 8001b62:	4639      	mov	r1, r7
 8001b64:	4640      	mov	r0, r8
 8001b66:	f001 f9f9 	bl	8002f5c <JTAG_Transfer>
 8001b6a:	2802      	cmp	r0, #2
 8001b6c:	d0f5      	beq.n	8001b5a <DAP_ProcessCommand+0x10aa>
 8001b6e:	2801      	cmp	r0, #1
 8001b70:	f040 80c8 	bne.w	8001d04 <DAP_ProcessCommand+0x1254>
 8001b74:	2200      	movs	r2, #0
 8001b76:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8001b78:	9902      	ldr	r1, [sp, #8]
 8001b7a:	0a1d      	lsrs	r5, r3, #8
 8001b7c:	f363 0207 	bfi	r2, r3, #0, #8
 8001b80:	f365 220f 	bfi	r2, r5, #8, #8
 8001b84:	0c1d      	lsrs	r5, r3, #16
 8001b86:	f365 4217 	bfi	r2, r5, #16, #8
 8001b8a:	0e1b      	lsrs	r3, r3, #24
 8001b8c:	f363 621f 	bfi	r2, r3, #24, #8
 8001b90:	f841 2b04 	str.w	r2, [r1], #4
 8001b94:	f109 0901 	add.w	r9, r9, #1
 8001b98:	9102      	str	r1, [sp, #8]
 8001b9a:	1e73      	subs	r3, r6, #1
 8001b9c:	2e00      	cmp	r6, #0
 8001b9e:	f000 80b1 	beq.w	8001d04 <DAP_ProcessCommand+0x1254>
 8001ba2:	461e      	mov	r6, r3
 8001ba4:	e7cf      	b.n	8001b46 <DAP_ProcessCommand+0x1096>
 8001ba6:	bf00      	nop
 8001ba8:	40010c08 	.word	0x40010c08
 8001bac:	e000e010 	.word	0xe000e010
 8001bb0:	200004a0 	.word	0x200004a0
 8001bb4:	fa5f f289 	uxtb.w	r2, r9
 8001bb8:	9e04      	ldr	r6, [sp, #16]
 8001bba:	f8dd 8004 	ldr.w	r8, [sp, #4]
 8001bbe:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8001bc2:	f3c9 2907 	ubfx	r9, r9, #8, #8
 8001bc6:	f7ff ba93 	b.w	80010f0 <DAP_ProcessCommand+0x640>
 8001bca:	9b05      	ldr	r3, [sp, #20]
 8001bcc:	f04f 0b0e 	mov.w	fp, #14
 8001bd0:	2b0a      	cmp	r3, #10
 8001bd2:	d069      	beq.n	8001ca8 <DAP_ProcessCommand+0x11f8>
 8001bd4:	200a      	movs	r0, #10
 8001bd6:	465d      	mov	r5, fp
 8001bd8:	f001 f9b6 	bl	8002f48 <JTAG_IR>
 8001bdc:	e7b7      	b.n	8001b4e <DAP_ProcessCommand+0x109e>
 8001bde:	f1b9 0f00 	cmp.w	r9, #0
 8001be2:	d119      	bne.n	8001c18 <DAP_ProcessCommand+0x1168>
 8001be4:	48ba      	ldr	r0, [pc, #744]	; (8001ed0 <DAP_ProcessCommand+0x1420>)
 8001be6:	4ebb      	ldr	r6, [pc, #748]	; (8001ed4 <DAP_ProcessCommand+0x1424>)
 8001be8:	6801      	ldr	r1, [r0, #0]
 8001bea:	f3c1 0140 	ubfx	r1, r1, #1, #1
 8001bee:	428b      	cmp	r3, r1
 8001bf0:	d10d      	bne.n	8001c0e <DAP_ProcessCommand+0x115e>
 8001bf2:	6801      	ldr	r1, [r0, #0]
 8001bf4:	f3c1 0180 	ubfx	r1, r1, #2, #1
 8001bf8:	428d      	cmp	r5, r1
 8001bfa:	d108      	bne.n	8001c0e <DAP_ProcessCommand+0x115e>
 8001bfc:	2c00      	cmp	r4, #0
 8001bfe:	f6bf a8f2 	bge.w	8000de6 <DAP_ProcessCommand+0x336>
 8001c02:	6801      	ldr	r1, [r0, #0]
 8001c04:	f3c1 1140 	ubfx	r1, r1, #5, #1
 8001c08:	428a      	cmp	r2, r1
 8001c0a:	f43f a8ec 	beq.w	8000de6 <DAP_ProcessCommand+0x336>
 8001c0e:	6831      	ldr	r1, [r6, #0]
 8001c10:	03cf      	lsls	r7, r1, #15
 8001c12:	d5e7      	bpl.n	8001be4 <DAP_ProcessCommand+0x1134>
 8001c14:	f7ff b8e7 	b.w	8000de6 <DAP_ProcessCommand+0x336>
 8001c18:	4ead      	ldr	r6, [pc, #692]	; (8001ed0 <DAP_ProcessCommand+0x1420>)
 8001c1a:	6831      	ldr	r1, [r6, #0]
 8001c1c:	f3c1 0140 	ubfx	r1, r1, #1, #1
 8001c20:	428b      	cmp	r3, r1
 8001c22:	d112      	bne.n	8001c4a <DAP_ProcessCommand+0x119a>
 8001c24:	6831      	ldr	r1, [r6, #0]
 8001c26:	f3c1 0180 	ubfx	r1, r1, #2, #1
 8001c2a:	428d      	cmp	r5, r1
 8001c2c:	d10d      	bne.n	8001c4a <DAP_ProcessCommand+0x119a>
 8001c2e:	6831      	ldr	r1, [r6, #0]
 8001c30:	f3c1 1100 	ubfx	r1, r1, #4, #1
 8001c34:	4288      	cmp	r0, r1
 8001c36:	d108      	bne.n	8001c4a <DAP_ProcessCommand+0x119a>
 8001c38:	2c00      	cmp	r4, #0
 8001c3a:	f6bf a8d4 	bge.w	8000de6 <DAP_ProcessCommand+0x336>
 8001c3e:	6831      	ldr	r1, [r6, #0]
 8001c40:	f3c1 1140 	ubfx	r1, r1, #5, #1
 8001c44:	428a      	cmp	r2, r1
 8001c46:	f43f a8ce 	beq.w	8000de6 <DAP_ProcessCommand+0x336>
 8001c4a:	49a2      	ldr	r1, [pc, #648]	; (8001ed4 <DAP_ProcessCommand+0x1424>)
 8001c4c:	6809      	ldr	r1, [r1, #0]
 8001c4e:	03ce      	lsls	r6, r1, #15
 8001c50:	d5e2      	bpl.n	8001c18 <DAP_ProcessCommand+0x1168>
 8001c52:	f7ff b8c8 	b.w	8000de6 <DAP_ProcessCommand+0x336>
 8001c56:	469c      	mov	ip, r3
 8001c58:	4643      	mov	r3, r8
 8001c5a:	4c9d      	ldr	r4, [pc, #628]	; (8001ed0 <DAP_ProcessCommand+0x1420>)
 8001c5c:	4f9d      	ldr	r7, [pc, #628]	; (8001ed4 <DAP_ProcessCommand+0x1424>)
 8001c5e:	6821      	ldr	r1, [r4, #0]
 8001c60:	f001 0101 	and.w	r1, r1, #1
 8001c64:	428e      	cmp	r6, r1
 8001c66:	d114      	bne.n	8001c92 <DAP_ProcessCommand+0x11e2>
 8001c68:	46a6      	mov	lr, r4
 8001c6a:	b9bb      	cbnz	r3, 8001c9c <DAP_ProcessCommand+0x11ec>
 8001c6c:	f8de 1000 	ldr.w	r1, [lr]
 8001c70:	f3c1 0180 	ubfx	r1, r1, #2, #1
 8001c74:	428d      	cmp	r5, r1
 8001c76:	d10c      	bne.n	8001c92 <DAP_ProcessCommand+0x11e2>
 8001c78:	f8de 1000 	ldr.w	r1, [lr]
 8001c7c:	f3c1 1100 	ubfx	r1, r1, #4, #1
 8001c80:	4288      	cmp	r0, r1
 8001c82:	d106      	bne.n	8001c92 <DAP_ProcessCommand+0x11e2>
 8001c84:	f8de 1000 	ldr.w	r1, [lr]
 8001c88:	f3c1 1140 	ubfx	r1, r1, #5, #1
 8001c8c:	428a      	cmp	r2, r1
 8001c8e:	f43f a8aa 	beq.w	8000de6 <DAP_ProcessCommand+0x336>
 8001c92:	6839      	ldr	r1, [r7, #0]
 8001c94:	03cf      	lsls	r7, r1, #15
 8001c96:	d5e0      	bpl.n	8001c5a <DAP_ProcessCommand+0x11aa>
 8001c98:	f7ff b8a5 	b.w	8000de6 <DAP_ProcessCommand+0x336>
 8001c9c:	6821      	ldr	r1, [r4, #0]
 8001c9e:	f3c1 0140 	ubfx	r1, r1, #1, #1
 8001ca2:	458c      	cmp	ip, r1
 8001ca4:	d0e2      	beq.n	8001c6c <DAP_ProcessCommand+0x11bc>
 8001ca6:	e7f4      	b.n	8001c92 <DAP_ProcessCommand+0x11e2>
 8001ca8:	465d      	mov	r5, fp
 8001caa:	e750      	b.n	8001b4e <DAP_ProcessCommand+0x109e>
 8001cac:	9b02      	ldr	r3, [sp, #8]
 8001cae:	2b00      	cmp	r3, #0
 8001cb0:	f43f ace8 	beq.w	8001684 <DAP_ProcessCommand+0xbd4>
 8001cb4:	9e05      	ldr	r6, [sp, #20]
 8001cb6:	f8ba 500a 	ldrh.w	r5, [sl, #10]
 8001cba:	e007      	b.n	8001ccc <DAP_ProcessCommand+0x121c>
 8001cbc:	42b5      	cmp	r5, r6
 8001cbe:	f43f ace1 	beq.w	8001684 <DAP_ProcessCommand+0xbd4>
 8001cc2:	7823      	ldrb	r3, [r4, #0]
 8001cc4:	3601      	adds	r6, #1
 8001cc6:	2b00      	cmp	r3, #0
 8001cc8:	f47f acdc 	bne.w	8001684 <DAP_ProcessCommand+0xbd4>
 8001ccc:	2100      	movs	r1, #0
 8001cce:	200e      	movs	r0, #14
 8001cd0:	f7fe fee4 	bl	8000a9c <SWD_Transfer>
 8001cd4:	2802      	cmp	r0, #2
 8001cd6:	d0f1      	beq.n	8001cbc <DAP_ProcessCommand+0x120c>
 8001cd8:	e4d4      	b.n	8001684 <DAP_ProcessCommand+0xbd4>
 8001cda:	f04f 0900 	mov.w	r9, #0
 8001cde:	464a      	mov	r2, r9
 8001ce0:	f7ff ba06 	b.w	80010f0 <DAP_ProcessCommand+0x640>
 8001ce4:	4643      	mov	r3, r8
 8001ce6:	e9dd 8b02 	ldrd	r8, fp, [sp, #8]
 8001cea:	9e04      	ldr	r6, [sp, #16]
 8001cec:	9001      	str	r0, [sp, #4]
 8001cee:	b2da      	uxtb	r2, r3
 8001cf0:	f3c3 2a07 	ubfx	sl, r3, #8, #8
 8001cf4:	f7ff ba68 	b.w	80011c8 <DAP_ProcessCommand+0x718>
 8001cf8:	f04f 0a00 	mov.w	sl, #0
 8001cfc:	4606      	mov	r6, r0
 8001cfe:	4652      	mov	r2, sl
 8001d00:	f7ff ba62 	b.w	80011c8 <DAP_ProcessCommand+0x718>
 8001d04:	fa5f f289 	uxtb.w	r2, r9
 8001d08:	f8dd 8004 	ldr.w	r8, [sp, #4]
 8001d0c:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8001d10:	4606      	mov	r6, r0
 8001d12:	f3c9 2907 	ubfx	r9, r9, #8, #8
 8001d16:	f7ff b9eb 	b.w	80010f0 <DAP_ProcessCommand+0x640>
 8001d1a:	f1b8 0f00 	cmp.w	r8, #0
 8001d1e:	d13f      	bne.n	8001da0 <DAP_ProcessCommand+0x12f0>
 8001d20:	f1b9 0f00 	cmp.w	r9, #0
 8001d24:	d114      	bne.n	8001d50 <DAP_ProcessCommand+0x12a0>
 8001d26:	4a6a      	ldr	r2, [pc, #424]	; (8001ed0 <DAP_ProcessCommand+0x1420>)
 8001d28:	496a      	ldr	r1, [pc, #424]	; (8001ed4 <DAP_ProcessCommand+0x1424>)
 8001d2a:	6813      	ldr	r3, [r2, #0]
 8001d2c:	f003 0301 	and.w	r3, r3, #1
 8001d30:	429e      	cmp	r6, r3
 8001d32:	d108      	bne.n	8001d46 <DAP_ProcessCommand+0x1296>
 8001d34:	2f00      	cmp	r7, #0
 8001d36:	f43f a856 	beq.w	8000de6 <DAP_ProcessCommand+0x336>
 8001d3a:	6813      	ldr	r3, [r2, #0]
 8001d3c:	f3c3 0380 	ubfx	r3, r3, #2, #1
 8001d40:	429d      	cmp	r5, r3
 8001d42:	f43f a850 	beq.w	8000de6 <DAP_ProcessCommand+0x336>
 8001d46:	680b      	ldr	r3, [r1, #0]
 8001d48:	03d8      	lsls	r0, r3, #15
 8001d4a:	d5ec      	bpl.n	8001d26 <DAP_ProcessCommand+0x1276>
 8001d4c:	f7ff b84b 	b.w	8000de6 <DAP_ProcessCommand+0x336>
 8001d50:	4a5f      	ldr	r2, [pc, #380]	; (8001ed0 <DAP_ProcessCommand+0x1420>)
 8001d52:	4960      	ldr	r1, [pc, #384]	; (8001ed4 <DAP_ProcessCommand+0x1424>)
 8001d54:	6813      	ldr	r3, [r2, #0]
 8001d56:	f003 0301 	and.w	r3, r3, #1
 8001d5a:	429e      	cmp	r6, r3
 8001d5c:	d108      	bne.n	8001d70 <DAP_ProcessCommand+0x12c0>
 8001d5e:	4614      	mov	r4, r2
 8001d60:	2f00      	cmp	r7, #0
 8001d62:	d159      	bne.n	8001e18 <DAP_ProcessCommand+0x1368>
 8001d64:	6823      	ldr	r3, [r4, #0]
 8001d66:	f3c3 1300 	ubfx	r3, r3, #4, #1
 8001d6a:	4283      	cmp	r3, r0
 8001d6c:	f43f a83b 	beq.w	8000de6 <DAP_ProcessCommand+0x336>
 8001d70:	680b      	ldr	r3, [r1, #0]
 8001d72:	03d9      	lsls	r1, r3, #15
 8001d74:	d5ec      	bpl.n	8001d50 <DAP_ProcessCommand+0x12a0>
 8001d76:	f7ff b836 	b.w	8000de6 <DAP_ProcessCommand+0x336>
 8001d7a:	2f00      	cmp	r7, #0
 8001d7c:	d152      	bne.n	8001e24 <DAP_ProcessCommand+0x1374>
 8001d7e:	4649      	mov	r1, r9
 8001d80:	4b53      	ldr	r3, [pc, #332]	; (8001ed0 <DAP_ProcessCommand+0x1420>)
 8001d82:	2900      	cmp	r1, #0
 8001d84:	f43f a82f 	beq.w	8000de6 <DAP_ProcessCommand+0x336>
 8001d88:	681b      	ldr	r3, [r3, #0]
 8001d8a:	4a52      	ldr	r2, [pc, #328]	; (8001ed4 <DAP_ProcessCommand+0x1424>)
 8001d8c:	f3c3 1300 	ubfx	r3, r3, #4, #1
 8001d90:	4298      	cmp	r0, r3
 8001d92:	f43f a828 	beq.w	8000de6 <DAP_ProcessCommand+0x336>
 8001d96:	6813      	ldr	r3, [r2, #0]
 8001d98:	03dc      	lsls	r4, r3, #15
 8001d9a:	d5f1      	bpl.n	8001d80 <DAP_ProcessCommand+0x12d0>
 8001d9c:	f7ff b823 	b.w	8000de6 <DAP_ProcessCommand+0x336>
 8001da0:	b9d7      	cbnz	r7, 8001dd8 <DAP_ProcessCommand+0x1328>
 8001da2:	464d      	mov	r5, r9
 8001da4:	4a4a      	ldr	r2, [pc, #296]	; (8001ed0 <DAP_ProcessCommand+0x1420>)
 8001da6:	4c4b      	ldr	r4, [pc, #300]	; (8001ed4 <DAP_ProcessCommand+0x1424>)
 8001da8:	6811      	ldr	r1, [r2, #0]
 8001daa:	f001 0101 	and.w	r1, r1, #1
 8001dae:	428e      	cmp	r6, r1
 8001db0:	d10d      	bne.n	8001dce <DAP_ProcessCommand+0x131e>
 8001db2:	6811      	ldr	r1, [r2, #0]
 8001db4:	f3c1 0140 	ubfx	r1, r1, #1, #1
 8001db8:	428b      	cmp	r3, r1
 8001dba:	d108      	bne.n	8001dce <DAP_ProcessCommand+0x131e>
 8001dbc:	2d00      	cmp	r5, #0
 8001dbe:	f43f a812 	beq.w	8000de6 <DAP_ProcessCommand+0x336>
 8001dc2:	6812      	ldr	r2, [r2, #0]
 8001dc4:	f3c2 1200 	ubfx	r2, r2, #4, #1
 8001dc8:	4290      	cmp	r0, r2
 8001dca:	f43f a80c 	beq.w	8000de6 <DAP_ProcessCommand+0x336>
 8001dce:	6822      	ldr	r2, [r4, #0]
 8001dd0:	03d2      	lsls	r2, r2, #15
 8001dd2:	d5e7      	bpl.n	8001da4 <DAP_ProcessCommand+0x12f4>
 8001dd4:	f7ff b807 	b.w	8000de6 <DAP_ProcessCommand+0x336>
 8001dd8:	464c      	mov	r4, r9
 8001dda:	4a3d      	ldr	r2, [pc, #244]	; (8001ed0 <DAP_ProcessCommand+0x1420>)
 8001ddc:	6811      	ldr	r1, [r2, #0]
 8001dde:	f001 0101 	and.w	r1, r1, #1
 8001de2:	428e      	cmp	r6, r1
 8001de4:	d112      	bne.n	8001e0c <DAP_ProcessCommand+0x135c>
 8001de6:	6811      	ldr	r1, [r2, #0]
 8001de8:	f3c1 0140 	ubfx	r1, r1, #1, #1
 8001dec:	428b      	cmp	r3, r1
 8001dee:	d10d      	bne.n	8001e0c <DAP_ProcessCommand+0x135c>
 8001df0:	6811      	ldr	r1, [r2, #0]
 8001df2:	f3c1 0180 	ubfx	r1, r1, #2, #1
 8001df6:	428d      	cmp	r5, r1
 8001df8:	d108      	bne.n	8001e0c <DAP_ProcessCommand+0x135c>
 8001dfa:	2c00      	cmp	r4, #0
 8001dfc:	f43e aff3 	beq.w	8000de6 <DAP_ProcessCommand+0x336>
 8001e00:	6812      	ldr	r2, [r2, #0]
 8001e02:	f3c2 1200 	ubfx	r2, r2, #4, #1
 8001e06:	4290      	cmp	r0, r2
 8001e08:	f43e afed 	beq.w	8000de6 <DAP_ProcessCommand+0x336>
 8001e0c:	4a31      	ldr	r2, [pc, #196]	; (8001ed4 <DAP_ProcessCommand+0x1424>)
 8001e0e:	6812      	ldr	r2, [r2, #0]
 8001e10:	03d7      	lsls	r7, r2, #15
 8001e12:	d5e2      	bpl.n	8001dda <DAP_ProcessCommand+0x132a>
 8001e14:	f7fe bfe7 	b.w	8000de6 <DAP_ProcessCommand+0x336>
 8001e18:	6813      	ldr	r3, [r2, #0]
 8001e1a:	f3c3 0380 	ubfx	r3, r3, #2, #1
 8001e1e:	429d      	cmp	r5, r3
 8001e20:	d0a0      	beq.n	8001d64 <DAP_ProcessCommand+0x12b4>
 8001e22:	e7a5      	b.n	8001d70 <DAP_ProcessCommand+0x12c0>
 8001e24:	464c      	mov	r4, r9
 8001e26:	4a2a      	ldr	r2, [pc, #168]	; (8001ed0 <DAP_ProcessCommand+0x1420>)
 8001e28:	492a      	ldr	r1, [pc, #168]	; (8001ed4 <DAP_ProcessCommand+0x1424>)
 8001e2a:	6813      	ldr	r3, [r2, #0]
 8001e2c:	f3c3 0380 	ubfx	r3, r3, #2, #1
 8001e30:	429d      	cmp	r5, r3
 8001e32:	d108      	bne.n	8001e46 <DAP_ProcessCommand+0x1396>
 8001e34:	2c00      	cmp	r4, #0
 8001e36:	f43e afd6 	beq.w	8000de6 <DAP_ProcessCommand+0x336>
 8001e3a:	6813      	ldr	r3, [r2, #0]
 8001e3c:	f3c3 1300 	ubfx	r3, r3, #4, #1
 8001e40:	4298      	cmp	r0, r3
 8001e42:	f43e afd0 	beq.w	8000de6 <DAP_ProcessCommand+0x336>
 8001e46:	680b      	ldr	r3, [r1, #0]
 8001e48:	03da      	lsls	r2, r3, #15
 8001e4a:	d5ec      	bpl.n	8001e26 <DAP_ProcessCommand+0x1376>
 8001e4c:	f7fe bfcb 	b.w	8000de6 <DAP_ProcessCommand+0x336>
 8001e50:	464d      	mov	r5, r9
 8001e52:	491f      	ldr	r1, [pc, #124]	; (8001ed0 <DAP_ProcessCommand+0x1420>)
 8001e54:	4c1f      	ldr	r4, [pc, #124]	; (8001ed4 <DAP_ProcessCommand+0x1424>)
 8001e56:	680a      	ldr	r2, [r1, #0]
 8001e58:	f3c2 0240 	ubfx	r2, r2, #1, #1
 8001e5c:	4293      	cmp	r3, r2
 8001e5e:	d108      	bne.n	8001e72 <DAP_ProcessCommand+0x13c2>
 8001e60:	2d00      	cmp	r5, #0
 8001e62:	f43e afc0 	beq.w	8000de6 <DAP_ProcessCommand+0x336>
 8001e66:	680a      	ldr	r2, [r1, #0]
 8001e68:	f3c2 1200 	ubfx	r2, r2, #4, #1
 8001e6c:	4290      	cmp	r0, r2
 8001e6e:	f43e afba 	beq.w	8000de6 <DAP_ProcessCommand+0x336>
 8001e72:	6822      	ldr	r2, [r4, #0]
 8001e74:	03d4      	lsls	r4, r2, #15
 8001e76:	d5ec      	bpl.n	8001e52 <DAP_ProcessCommand+0x13a2>
 8001e78:	f7fe bfb5 	b.w	8000de6 <DAP_ProcessCommand+0x336>
 8001e7c:	9b01      	ldr	r3, [sp, #4]
 8001e7e:	f8dd 800c 	ldr.w	r8, [sp, #12]
 8001e82:	4606      	mov	r6, r0
 8001e84:	b2da      	uxtb	r2, r3
 8001e86:	f3c3 2907 	ubfx	r9, r3, #8, #8
 8001e8a:	f7ff b931 	b.w	80010f0 <DAP_ProcessCommand+0x640>
 8001e8e:	f04f 0900 	mov.w	r9, #0
 8001e92:	4606      	mov	r6, r0
 8001e94:	464a      	mov	r2, r9
 8001e96:	f7ff b92b 	b.w	80010f0 <DAP_ProcessCommand+0x640>
 8001e9a:	9007      	str	r0, [sp, #28]
 8001e9c:	f7ff ba33 	b.w	8001306 <DAP_ProcessCommand+0x856>
 8001ea0:	b2c3      	uxtb	r3, r0
 8001ea2:	e9dd 8b03 	ldrd	r8, fp, [sp, #12]
 8001ea6:	fa5f f189 	uxtb.w	r1, r9
 8001eaa:	9307      	str	r3, [sp, #28]
 8001eac:	f7ff ba2b 	b.w	8001306 <DAP_ProcessCommand+0x856>
 8001eb0:	e9dd 8b03 	ldrd	r8, fp, [sp, #12]
 8001eb4:	f7ff bbdd 	b.w	8001672 <DAP_ProcessCommand+0xbc2>
 8001eb8:	e9dd 8b03 	ldrd	r8, fp, [sp, #12]
 8001ebc:	9007      	str	r0, [sp, #28]
 8001ebe:	f7ff bb2d 	b.w	800151c <DAP_ProcessCommand+0xa6c>
 8001ec2:	e9dd 8b03 	ldrd	r8, fp, [sp, #12]
 8001ec6:	fa5f f189 	uxtb.w	r1, r9
 8001eca:	9007      	str	r0, [sp, #28]
 8001ecc:	f7ff ba1b 	b.w	8001306 <DAP_ProcessCommand+0x856>
 8001ed0:	40010c08 	.word	0x40010c08
 8001ed4:	e000e010 	.word	0xe000e010
 8001ed8:	f8dd 800c 	ldr.w	r8, [sp, #12]
 8001edc:	f8dd b010 	ldr.w	fp, [sp, #16]
 8001ee0:	fa5f f189 	uxtb.w	r1, r9
 8001ee4:	9007      	str	r0, [sp, #28]
 8001ee6:	f7ff ba0e 	b.w	8001306 <DAP_ProcessCommand+0x856>
 8001eea:	bf00      	nop

08001eec <DAP_ProcessVendorCommand>:
 8001eec:	2000      	movs	r0, #0
 8001eee:	4770      	bx	lr

08001ef0 <JTAG_Sequence>:
 8001ef0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8001ef4:	f010 073f 	ands.w	r7, r0, #63	; 0x3f
 8001ef8:	4691      	mov	r9, r2
 8001efa:	bf08      	it	eq
 8001efc:	2740      	moveq	r7, #64	; 0x40
 8001efe:	0642      	lsls	r2, r0, #25
 8001f00:	bf4c      	ite	mi
 8001f02:	2402      	movmi	r4, #2
 8001f04:	f44f 3400 	movpl.w	r4, #131072	; 0x20000
 8001f08:	4b29      	ldr	r3, [pc, #164]	; (8001fb0 <JTAG_Sequence+0xc0>)
 8001f0a:	4e2a      	ldr	r6, [pc, #168]	; (8001fb4 <JTAG_Sequence+0xc4>)
 8001f0c:	b082      	sub	sp, #8
 8001f0e:	601c      	str	r4, [r3, #0]
 8001f10:	f000 0e80 	and.w	lr, r0, #128	; 0x80
 8001f14:	4638      	mov	r0, r7
 8001f16:	2500      	movs	r5, #0
 8001f18:	f811 4b01 	ldrb.w	r4, [r1], #1
 8001f1c:	3f08      	subs	r7, #8
 8001f1e:	f1c0 0c07 	rsb	ip, r0, #7
 8001f22:	07e3      	lsls	r3, r4, #31
 8001f24:	bf4c      	ite	mi
 8001f26:	2208      	movmi	r2, #8
 8001f28:	f44f 2200 	movpl.w	r2, #524288	; 0x80000
 8001f2c:	4b20      	ldr	r3, [pc, #128]	; (8001fb0 <JTAG_Sequence+0xc0>)
 8001f2e:	601a      	str	r2, [r3, #0]
 8001f30:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001f34:	4b1e      	ldr	r3, [pc, #120]	; (8001fb0 <JTAG_Sequence+0xc0>)
 8001f36:	601a      	str	r2, [r3, #0]
 8001f38:	6873      	ldr	r3, [r6, #4]
 8001f3a:	9301      	str	r3, [sp, #4]
 8001f3c:	9b01      	ldr	r3, [sp, #4]
 8001f3e:	3b01      	subs	r3, #1
 8001f40:	9301      	str	r3, [sp, #4]
 8001f42:	2b00      	cmp	r3, #0
 8001f44:	d1fa      	bne.n	8001f3c <JTAG_Sequence+0x4c>
 8001f46:	f04f 0a01 	mov.w	sl, #1
 8001f4a:	4b1b      	ldr	r3, [pc, #108]	; (8001fb8 <JTAG_Sequence+0xc8>)
 8001f4c:	4a18      	ldr	r2, [pc, #96]	; (8001fb0 <JTAG_Sequence+0xc0>)
 8001f4e:	681b      	ldr	r3, [r3, #0]
 8001f50:	f8c2 a000 	str.w	sl, [r2]
 8001f54:	f3c3 0880 	ubfx	r8, r3, #2, #1
 8001f58:	6873      	ldr	r3, [r6, #4]
 8001f5a:	9300      	str	r3, [sp, #0]
 8001f5c:	9b00      	ldr	r3, [sp, #0]
 8001f5e:	3b01      	subs	r3, #1
 8001f60:	9300      	str	r3, [sp, #0]
 8001f62:	2b00      	cmp	r3, #0
 8001f64:	d1fa      	bne.n	8001f5c <JTAG_Sequence+0x6c>
 8001f66:	ea4f 13c8 	mov.w	r3, r8, lsl #7
 8001f6a:	eb0c 0800 	add.w	r8, ip, r0
 8001f6e:	3801      	subs	r0, #1
 8001f70:	42b8      	cmp	r0, r7
 8001f72:	ea43 0555 	orr.w	r5, r3, r5, lsr #1
 8001f76:	ea4f 0454 	mov.w	r4, r4, lsr #1
 8001f7a:	d00b      	beq.n	8001f94 <JTAG_Sequence+0xa4>
 8001f7c:	2800      	cmp	r0, #0
 8001f7e:	d1d0      	bne.n	8001f22 <JTAG_Sequence+0x32>
 8001f80:	fa25 f508 	lsr.w	r5, r5, r8
 8001f84:	f1be 0f00 	cmp.w	lr, #0
 8001f88:	d001      	beq.n	8001f8e <JTAG_Sequence+0x9e>
 8001f8a:	f889 5000 	strb.w	r5, [r9]
 8001f8e:	b002      	add	sp, #8
 8001f90:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8001f94:	f1be 0f00 	cmp.w	lr, #0
 8001f98:	d102      	bne.n	8001fa0 <JTAG_Sequence+0xb0>
 8001f9a:	2f00      	cmp	r7, #0
 8001f9c:	d1ba      	bne.n	8001f14 <JTAG_Sequence+0x24>
 8001f9e:	e7f6      	b.n	8001f8e <JTAG_Sequence+0x9e>
 8001fa0:	464a      	mov	r2, r9
 8001fa2:	f802 5b01 	strb.w	r5, [r2], #1
 8001fa6:	4691      	mov	r9, r2
 8001fa8:	2f00      	cmp	r7, #0
 8001faa:	d1b3      	bne.n	8001f14 <JTAG_Sequence+0x24>
 8001fac:	e7ef      	b.n	8001f8e <JTAG_Sequence+0x9e>
 8001fae:	bf00      	nop
 8001fb0:	40010c10 	.word	0x40010c10
 8001fb4:	200004a0 	.word	0x200004a0
 8001fb8:	40010c08 	.word	0x40010c08

08001fbc <JTAG_IR_Fast>:
 8001fbc:	b4f0      	push	{r4, r5, r6, r7}
 8001fbe:	f44f 3300 	mov.w	r3, #131072	; 0x20000
 8001fc2:	f44f 3680 	mov.w	r6, #65536	; 0x10000
 8001fc6:	2401      	movs	r4, #1
 8001fc8:	f04f 0c02 	mov.w	ip, #2
 8001fcc:	2708      	movs	r7, #8
 8001fce:	4d43      	ldr	r5, [pc, #268]	; (80020dc <JTAG_IR_Fast+0x120>)
 8001fd0:	4a43      	ldr	r2, [pc, #268]	; (80020e0 <JTAG_IR_Fast+0x124>)
 8001fd2:	7de9      	ldrb	r1, [r5, #23]
 8001fd4:	f8c2 c000 	str.w	ip, [r2]
 8001fd8:	6016      	str	r6, [r2, #0]
 8001fda:	6014      	str	r4, [r2, #0]
 8001fdc:	6016      	str	r6, [r2, #0]
 8001fde:	6014      	str	r4, [r2, #0]
 8001fe0:	6013      	str	r3, [r2, #0]
 8001fe2:	eb05 0341 	add.w	r3, r5, r1, lsl #1
 8001fe6:	8c1b      	ldrh	r3, [r3, #32]
 8001fe8:	6016      	str	r6, [r2, #0]
 8001fea:	6014      	str	r4, [r2, #0]
 8001fec:	6016      	str	r6, [r2, #0]
 8001fee:	6014      	str	r4, [r2, #0]
 8001ff0:	6017      	str	r7, [r2, #0]
 8001ff2:	b143      	cbz	r3, 8002006 <JTAG_IR_Fast+0x4a>
 8001ff4:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 8001ff8:	2101      	movs	r1, #1
 8001ffa:	4a39      	ldr	r2, [pc, #228]	; (80020e0 <JTAG_IR_Fast+0x124>)
 8001ffc:	3b01      	subs	r3, #1
 8001ffe:	6014      	str	r4, [r2, #0]
 8002000:	6011      	str	r1, [r2, #0]
 8002002:	d1f7      	bne.n	8001ff4 <JTAG_IR_Fast+0x38>
 8002004:	7de9      	ldrb	r1, [r5, #23]
 8002006:	186b      	adds	r3, r5, r1
 8002008:	7e1b      	ldrb	r3, [r3, #24]
 800200a:	3b01      	subs	r3, #1
 800200c:	d00f      	beq.n	800202e <JTAG_IR_Fast+0x72>
 800200e:	4934      	ldr	r1, [pc, #208]	; (80020e0 <JTAG_IR_Fast+0x124>)
 8002010:	07c4      	lsls	r4, r0, #31
 8002012:	460a      	mov	r2, r1
 8002014:	d531      	bpl.n	800207a <JTAG_IR_Fast+0xbe>
 8002016:	2201      	movs	r2, #1
 8002018:	2608      	movs	r6, #8
 800201a:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 800201e:	3b01      	subs	r3, #1
 8002020:	600e      	str	r6, [r1, #0]
 8002022:	fa20 f002 	lsr.w	r0, r0, r2
 8002026:	600c      	str	r4, [r1, #0]
 8002028:	600a      	str	r2, [r1, #0]
 800202a:	d1f0      	bne.n	800200e <JTAG_IR_Fast+0x52>
 800202c:	7de9      	ldrb	r1, [r5, #23]
 800202e:	eb05 0541 	add.w	r5, r5, r1, lsl #1
 8002032:	8e2b      	ldrh	r3, [r5, #48]	; 0x30
 8002034:	f000 0001 	and.w	r0, r0, #1
 8002038:	b363      	cbz	r3, 8002094 <JTAG_IR_Fast+0xd8>
 800203a:	2800      	cmp	r0, #0
 800203c:	d045      	beq.n	80020ca <JTAG_IR_Fast+0x10e>
 800203e:	2108      	movs	r1, #8
 8002040:	4a27      	ldr	r2, [pc, #156]	; (80020e0 <JTAG_IR_Fast+0x124>)
 8002042:	6011      	str	r1, [r2, #0]
 8002044:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 8002048:	2001      	movs	r0, #1
 800204a:	2108      	movs	r1, #8
 800204c:	4a24      	ldr	r2, [pc, #144]	; (80020e0 <JTAG_IR_Fast+0x124>)
 800204e:	3b01      	subs	r3, #1
 8002050:	6014      	str	r4, [r2, #0]
 8002052:	6010      	str	r0, [r2, #0]
 8002054:	6011      	str	r1, [r2, #0]
 8002056:	d007      	beq.n	8002068 <JTAG_IR_Fast+0xac>
 8002058:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 800205c:	2101      	movs	r1, #1
 800205e:	4a20      	ldr	r2, [pc, #128]	; (80020e0 <JTAG_IR_Fast+0x124>)
 8002060:	3b01      	subs	r3, #1
 8002062:	6010      	str	r0, [r2, #0]
 8002064:	6011      	str	r1, [r2, #0]
 8002066:	d1f7      	bne.n	8002058 <JTAG_IR_Fast+0x9c>
 8002068:	2002      	movs	r0, #2
 800206a:	f44f 3180 	mov.w	r1, #65536	; 0x10000
 800206e:	2201      	movs	r2, #1
 8002070:	4b1b      	ldr	r3, [pc, #108]	; (80020e0 <JTAG_IR_Fast+0x124>)
 8002072:	6018      	str	r0, [r3, #0]
 8002074:	6019      	str	r1, [r3, #0]
 8002076:	601a      	str	r2, [r3, #0]
 8002078:	e018      	b.n	80020ac <JTAG_IR_Fast+0xf0>
 800207a:	2101      	movs	r1, #1
 800207c:	f44f 2600 	mov.w	r6, #524288	; 0x80000
 8002080:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 8002084:	3b01      	subs	r3, #1
 8002086:	6016      	str	r6, [r2, #0]
 8002088:	fa20 f001 	lsr.w	r0, r0, r1
 800208c:	6014      	str	r4, [r2, #0]
 800208e:	6011      	str	r1, [r2, #0]
 8002090:	d1bd      	bne.n	800200e <JTAG_IR_Fast+0x52>
 8002092:	e7cb      	b.n	800202c <JTAG_IR_Fast+0x70>
 8002094:	2202      	movs	r2, #2
 8002096:	4b12      	ldr	r3, [pc, #72]	; (80020e0 <JTAG_IR_Fast+0x124>)
 8002098:	601a      	str	r2, [r3, #0]
 800209a:	b1d8      	cbz	r0, 80020d4 <JTAG_IR_Fast+0x118>
 800209c:	2208      	movs	r2, #8
 800209e:	601a      	str	r2, [r3, #0]
 80020a0:	f44f 3180 	mov.w	r1, #65536	; 0x10000
 80020a4:	2201      	movs	r2, #1
 80020a6:	4b0e      	ldr	r3, [pc, #56]	; (80020e0 <JTAG_IR_Fast+0x124>)
 80020a8:	6019      	str	r1, [r3, #0]
 80020aa:	601a      	str	r2, [r3, #0]
 80020ac:	f44f 3180 	mov.w	r1, #65536	; 0x10000
 80020b0:	2201      	movs	r2, #1
 80020b2:	f44f 3400 	mov.w	r4, #131072	; 0x20000
 80020b6:	2008      	movs	r0, #8
 80020b8:	4b09      	ldr	r3, [pc, #36]	; (80020e0 <JTAG_IR_Fast+0x124>)
 80020ba:	6019      	str	r1, [r3, #0]
 80020bc:	601a      	str	r2, [r3, #0]
 80020be:	601c      	str	r4, [r3, #0]
 80020c0:	6019      	str	r1, [r3, #0]
 80020c2:	bcf0      	pop	{r4, r5, r6, r7}
 80020c4:	601a      	str	r2, [r3, #0]
 80020c6:	6018      	str	r0, [r3, #0]
 80020c8:	4770      	bx	lr
 80020ca:	f44f 2100 	mov.w	r1, #524288	; 0x80000
 80020ce:	4a04      	ldr	r2, [pc, #16]	; (80020e0 <JTAG_IR_Fast+0x124>)
 80020d0:	6011      	str	r1, [r2, #0]
 80020d2:	e7b7      	b.n	8002044 <JTAG_IR_Fast+0x88>
 80020d4:	f44f 2200 	mov.w	r2, #524288	; 0x80000
 80020d8:	601a      	str	r2, [r3, #0]
 80020da:	e7e1      	b.n	80020a0 <JTAG_IR_Fast+0xe4>
 80020dc:	200004a0 	.word	0x200004a0
 80020e0:	40010c10 	.word	0x40010c10

080020e4 <JTAG_TransferFast>:
 80020e4:	2302      	movs	r3, #2
 80020e6:	b5f0      	push	{r4, r5, r6, r7, lr}
 80020e8:	f44f 3680 	mov.w	r6, #65536	; 0x10000
 80020ec:	2401      	movs	r4, #1
 80020ee:	f44f 3700 	mov.w	r7, #131072	; 0x20000
 80020f2:	4a87      	ldr	r2, [pc, #540]	; (8002310 <JTAG_TransferFast+0x22c>)
 80020f4:	4d87      	ldr	r5, [pc, #540]	; (8002314 <JTAG_TransferFast+0x230>)
 80020f6:	6013      	str	r3, [r2, #0]
 80020f8:	7deb      	ldrb	r3, [r5, #23]
 80020fa:	6016      	str	r6, [r2, #0]
 80020fc:	6014      	str	r4, [r2, #0]
 80020fe:	6017      	str	r7, [r2, #0]
 8002100:	6016      	str	r6, [r2, #0]
 8002102:	6014      	str	r4, [r2, #0]
 8002104:	6016      	str	r6, [r2, #0]
 8002106:	6014      	str	r4, [r2, #0]
 8002108:	b13b      	cbz	r3, 800211a <JTAG_TransferFast+0x36>
 800210a:	f44f 3680 	mov.w	r6, #65536	; 0x10000
 800210e:	2401      	movs	r4, #1
 8002110:	4a7f      	ldr	r2, [pc, #508]	; (8002310 <JTAG_TransferFast+0x22c>)
 8002112:	3b01      	subs	r3, #1
 8002114:	6016      	str	r6, [r2, #0]
 8002116:	6014      	str	r4, [r2, #0]
 8002118:	d1f7      	bne.n	800210a <JTAG_TransferFast+0x26>
 800211a:	0783      	lsls	r3, r0, #30
 800211c:	f140 8091 	bpl.w	8002242 <JTAG_TransferFast+0x15e>
 8002120:	2208      	movs	r2, #8
 8002122:	4b7b      	ldr	r3, [pc, #492]	; (8002310 <JTAG_TransferFast+0x22c>)
 8002124:	601a      	str	r2, [r3, #0]
 8002126:	f44f 3680 	mov.w	r6, #65536	; 0x10000
 800212a:	4a79      	ldr	r2, [pc, #484]	; (8002310 <JTAG_TransferFast+0x22c>)
 800212c:	4c7a      	ldr	r4, [pc, #488]	; (8002318 <JTAG_TransferFast+0x234>)
 800212e:	6016      	str	r6, [r2, #0]
 8002130:	0747      	lsls	r7, r0, #29
 8002132:	6826      	ldr	r6, [r4, #0]
 8002134:	f04f 0301 	mov.w	r3, #1
 8002138:	bf4c      	ite	mi
 800213a:	2408      	movmi	r4, #8
 800213c:	f44f 2400 	movpl.w	r4, #524288	; 0x80000
 8002140:	f44f 3780 	mov.w	r7, #65536	; 0x10000
 8002144:	6013      	str	r3, [r2, #0]
 8002146:	6014      	str	r4, [r2, #0]
 8002148:	2401      	movs	r4, #1
 800214a:	4a71      	ldr	r2, [pc, #452]	; (8002310 <JTAG_TransferFast+0x22c>)
 800214c:	f3c6 0680 	ubfx	r6, r6, #2, #1
 8002150:	fa06 f303 	lsl.w	r3, r6, r3
 8002154:	4e70      	ldr	r6, [pc, #448]	; (8002318 <JTAG_TransferFast+0x234>)
 8002156:	6017      	str	r7, [r2, #0]
 8002158:	6836      	ldr	r6, [r6, #0]
 800215a:	6014      	str	r4, [r2, #0]
 800215c:	f3c6 0480 	ubfx	r4, r6, #2, #1
 8002160:	0706      	lsls	r6, r0, #28
 8002162:	bf4c      	ite	mi
 8002164:	2608      	movmi	r6, #8
 8002166:	f44f 2600 	movpl.w	r6, #524288	; 0x80000
 800216a:	f44f 3c80 	mov.w	ip, #65536	; 0x10000
 800216e:	2701      	movs	r7, #1
 8002170:	6016      	str	r6, [r2, #0]
 8002172:	4a67      	ldr	r2, [pc, #412]	; (8002310 <JTAG_TransferFast+0x22c>)
 8002174:	4e68      	ldr	r6, [pc, #416]	; (8002318 <JTAG_TransferFast+0x234>)
 8002176:	f8c2 c000 	str.w	ip, [r2]
 800217a:	6836      	ldr	r6, [r6, #0]
 800217c:	6017      	str	r7, [r2, #0]
 800217e:	f006 0604 	and.w	r6, r6, #4
 8002182:	431e      	orrs	r6, r3
 8002184:	4326      	orrs	r6, r4
 8002186:	42be      	cmp	r6, r7
 8002188:	d020      	beq.n	80021cc <JTAG_TransferFast+0xe8>
 800218a:	2302      	movs	r3, #2
 800218c:	6013      	str	r3, [r2, #0]
 800218e:	f8c2 c000 	str.w	ip, [r2]
 8002192:	6017      	str	r7, [r2, #0]
 8002194:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 8002198:	2001      	movs	r0, #1
 800219a:	f44f 3c00 	mov.w	ip, #131072	; 0x20000
 800219e:	2708      	movs	r7, #8
 80021a0:	7a29      	ldrb	r1, [r5, #8]
 80021a2:	4a5b      	ldr	r2, [pc, #364]	; (8002310 <JTAG_TransferFast+0x22c>)
 80021a4:	1e4b      	subs	r3, r1, #1
 80021a6:	6014      	str	r4, [r2, #0]
 80021a8:	6010      	str	r0, [r2, #0]
 80021aa:	f8c2 c000 	str.w	ip, [r2]
 80021ae:	6014      	str	r4, [r2, #0]
 80021b0:	6010      	str	r0, [r2, #0]
 80021b2:	6017      	str	r7, [r2, #0]
 80021b4:	b141      	cbz	r1, 80021c8 <JTAG_TransferFast+0xe4>
 80021b6:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 80021ba:	2101      	movs	r1, #1
 80021bc:	4a54      	ldr	r2, [pc, #336]	; (8002310 <JTAG_TransferFast+0x22c>)
 80021be:	3b01      	subs	r3, #1
 80021c0:	6010      	str	r0, [r2, #0]
 80021c2:	6011      	str	r1, [r2, #0]
 80021c4:	1c5a      	adds	r2, r3, #1
 80021c6:	d1f6      	bne.n	80021b6 <JTAG_TransferFast+0xd2>
 80021c8:	b2f0      	uxtb	r0, r6
 80021ca:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80021cc:	0784      	lsls	r4, r0, #30
 80021ce:	d53d      	bpl.n	800224c <JTAG_TransferFast+0x168>
 80021d0:	241f      	movs	r4, #31
 80021d2:	2000      	movs	r0, #0
 80021d4:	f44f 3c80 	mov.w	ip, #65536	; 0x10000
 80021d8:	f04f 0e01 	mov.w	lr, #1
 80021dc:	4a4c      	ldr	r2, [pc, #304]	; (8002310 <JTAG_TransferFast+0x22c>)
 80021de:	4f4e      	ldr	r7, [pc, #312]	; (8002318 <JTAG_TransferFast+0x234>)
 80021e0:	f8c2 c000 	str.w	ip, [r2]
 80021e4:	683b      	ldr	r3, [r7, #0]
 80021e6:	3c01      	subs	r4, #1
 80021e8:	f3c3 0380 	ubfx	r3, r3, #2, #1
 80021ec:	ea40 73c3 	orr.w	r3, r0, r3, lsl #31
 80021f0:	f8c2 e000 	str.w	lr, [r2]
 80021f4:	fa23 f00e 	lsr.w	r0, r3, lr
 80021f8:	d1ec      	bne.n	80021d4 <JTAG_TransferFast+0xf0>
 80021fa:	7dac      	ldrb	r4, [r5, #22]
 80021fc:	7deb      	ldrb	r3, [r5, #23]
 80021fe:	1ae4      	subs	r4, r4, r3
 8002200:	4574      	cmp	r4, lr
 8002202:	d066      	beq.n	80022d2 <JTAG_TransferFast+0x1ee>
 8002204:	f8c2 c000 	str.w	ip, [r2]
 8002208:	683b      	ldr	r3, [r7, #0]
 800220a:	f8c2 e000 	str.w	lr, [r2]
 800220e:	1ea2      	subs	r2, r4, #2
 8002210:	f3c3 0c80 	ubfx	ip, r3, #2, #1
 8002214:	d007      	beq.n	8002226 <JTAG_TransferFast+0x142>
 8002216:	f44f 3380 	mov.w	r3, #65536	; 0x10000
 800221a:	2701      	movs	r7, #1
 800221c:	4c3c      	ldr	r4, [pc, #240]	; (8002310 <JTAG_TransferFast+0x22c>)
 800221e:	3a01      	subs	r2, #1
 8002220:	6023      	str	r3, [r4, #0]
 8002222:	6027      	str	r7, [r4, #0]
 8002224:	d1f7      	bne.n	8002216 <JTAG_TransferFast+0x132>
 8002226:	2702      	movs	r7, #2
 8002228:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 800222c:	2201      	movs	r2, #1
 800222e:	4b38      	ldr	r3, [pc, #224]	; (8002310 <JTAG_TransferFast+0x22c>)
 8002230:	601f      	str	r7, [r3, #0]
 8002232:	601c      	str	r4, [r3, #0]
 8002234:	601a      	str	r2, [r3, #0]
 8002236:	2900      	cmp	r1, #0
 8002238:	d0ac      	beq.n	8002194 <JTAG_TransferFast+0xb0>
 800223a:	ea40 70cc 	orr.w	r0, r0, ip, lsl #31
 800223e:	6008      	str	r0, [r1, #0]
 8002240:	e7a8      	b.n	8002194 <JTAG_TransferFast+0xb0>
 8002242:	f44f 2200 	mov.w	r2, #524288	; 0x80000
 8002246:	4b32      	ldr	r3, [pc, #200]	; (8002310 <JTAG_TransferFast+0x22c>)
 8002248:	601a      	str	r2, [r3, #0]
 800224a:	e76c      	b.n	8002126 <JTAG_TransferFast+0x42>
 800224c:	221f      	movs	r2, #31
 800224e:	680b      	ldr	r3, [r1, #0]
 8002250:	4c2f      	ldr	r4, [pc, #188]	; (8002310 <JTAG_TransferFast+0x22c>)
 8002252:	07d8      	lsls	r0, r3, #31
 8002254:	4621      	mov	r1, r4
 8002256:	d52f      	bpl.n	80022b8 <JTAG_TransferFast+0x1d4>
 8002258:	2101      	movs	r1, #1
 800225a:	2708      	movs	r7, #8
 800225c:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 8002260:	3a01      	subs	r2, #1
 8002262:	6027      	str	r7, [r4, #0]
 8002264:	fa23 f301 	lsr.w	r3, r3, r1
 8002268:	6020      	str	r0, [r4, #0]
 800226a:	6021      	str	r1, [r4, #0]
 800226c:	d1f0      	bne.n	8002250 <JTAG_TransferFast+0x16c>
 800226e:	7daa      	ldrb	r2, [r5, #22]
 8002270:	7de9      	ldrb	r1, [r5, #23]
 8002272:	f003 0301 	and.w	r3, r3, #1
 8002276:	1a52      	subs	r2, r2, r1
 8002278:	2a01      	cmp	r2, #1
 800227a:	d033      	beq.n	80022e4 <JTAG_TransferFast+0x200>
 800227c:	2b00      	cmp	r3, #0
 800227e:	d03f      	beq.n	8002300 <JTAG_TransferFast+0x21c>
 8002280:	2108      	movs	r1, #8
 8002282:	4b23      	ldr	r3, [pc, #140]	; (8002310 <JTAG_TransferFast+0x22c>)
 8002284:	6019      	str	r1, [r3, #0]
 8002286:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 800228a:	2101      	movs	r1, #1
 800228c:	4b20      	ldr	r3, [pc, #128]	; (8002310 <JTAG_TransferFast+0x22c>)
 800228e:	6018      	str	r0, [r3, #0]
 8002290:	6019      	str	r1, [r3, #0]
 8002292:	1e93      	subs	r3, r2, #2
 8002294:	d007      	beq.n	80022a6 <JTAG_TransferFast+0x1c2>
 8002296:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 800229a:	2101      	movs	r1, #1
 800229c:	4a1c      	ldr	r2, [pc, #112]	; (8002310 <JTAG_TransferFast+0x22c>)
 800229e:	3b01      	subs	r3, #1
 80022a0:	6010      	str	r0, [r2, #0]
 80022a2:	6011      	str	r1, [r2, #0]
 80022a4:	d1f7      	bne.n	8002296 <JTAG_TransferFast+0x1b2>
 80022a6:	2002      	movs	r0, #2
 80022a8:	f44f 3180 	mov.w	r1, #65536	; 0x10000
 80022ac:	2201      	movs	r2, #1
 80022ae:	4b18      	ldr	r3, [pc, #96]	; (8002310 <JTAG_TransferFast+0x22c>)
 80022b0:	6018      	str	r0, [r3, #0]
 80022b2:	6019      	str	r1, [r3, #0]
 80022b4:	601a      	str	r2, [r3, #0]
 80022b6:	e76d      	b.n	8002194 <JTAG_TransferFast+0xb0>
 80022b8:	2001      	movs	r0, #1
 80022ba:	f44f 2700 	mov.w	r7, #524288	; 0x80000
 80022be:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 80022c2:	3a01      	subs	r2, #1
 80022c4:	600f      	str	r7, [r1, #0]
 80022c6:	fa23 f300 	lsr.w	r3, r3, r0
 80022ca:	600c      	str	r4, [r1, #0]
 80022cc:	6008      	str	r0, [r1, #0]
 80022ce:	d1bf      	bne.n	8002250 <JTAG_TransferFast+0x16c>
 80022d0:	e7cd      	b.n	800226e <JTAG_TransferFast+0x18a>
 80022d2:	2302      	movs	r3, #2
 80022d4:	6013      	str	r3, [r2, #0]
 80022d6:	f8c2 c000 	str.w	ip, [r2]
 80022da:	683b      	ldr	r3, [r7, #0]
 80022dc:	6014      	str	r4, [r2, #0]
 80022de:	f3c3 0c80 	ubfx	ip, r3, #2, #1
 80022e2:	e7a8      	b.n	8002236 <JTAG_TransferFast+0x152>
 80022e4:	2102      	movs	r1, #2
 80022e6:	4a0a      	ldr	r2, [pc, #40]	; (8002310 <JTAG_TransferFast+0x22c>)
 80022e8:	6011      	str	r1, [r2, #0]
 80022ea:	b973      	cbnz	r3, 800230a <JTAG_TransferFast+0x226>
 80022ec:	f44f 2300 	mov.w	r3, #524288	; 0x80000
 80022f0:	6013      	str	r3, [r2, #0]
 80022f2:	f44f 3180 	mov.w	r1, #65536	; 0x10000
 80022f6:	2201      	movs	r2, #1
 80022f8:	4b05      	ldr	r3, [pc, #20]	; (8002310 <JTAG_TransferFast+0x22c>)
 80022fa:	6019      	str	r1, [r3, #0]
 80022fc:	601a      	str	r2, [r3, #0]
 80022fe:	e749      	b.n	8002194 <JTAG_TransferFast+0xb0>
 8002300:	f44f 2100 	mov.w	r1, #524288	; 0x80000
 8002304:	4b02      	ldr	r3, [pc, #8]	; (8002310 <JTAG_TransferFast+0x22c>)
 8002306:	6019      	str	r1, [r3, #0]
 8002308:	e7bd      	b.n	8002286 <JTAG_TransferFast+0x1a2>
 800230a:	2308      	movs	r3, #8
 800230c:	6013      	str	r3, [r2, #0]
 800230e:	e7f0      	b.n	80022f2 <JTAG_TransferFast+0x20e>
 8002310:	40010c10 	.word	0x40010c10
 8002314:	200004a0 	.word	0x200004a0
 8002318:	40010c08 	.word	0x40010c08

0800231c <JTAG_IR_Slow>:
 800231c:	b430      	push	{r4, r5}
 800231e:	2502      	movs	r5, #2
 8002320:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 8002324:	4a92      	ldr	r2, [pc, #584]	; (8002570 <JTAG_IR_Slow+0x254>)
 8002326:	4b93      	ldr	r3, [pc, #588]	; (8002574 <JTAG_IR_Slow+0x258>)
 8002328:	6851      	ldr	r1, [r2, #4]
 800232a:	b098      	sub	sp, #96	; 0x60
 800232c:	601d      	str	r5, [r3, #0]
 800232e:	601c      	str	r4, [r3, #0]
 8002330:	9107      	str	r1, [sp, #28]
 8002332:	9b07      	ldr	r3, [sp, #28]
 8002334:	3b01      	subs	r3, #1
 8002336:	9307      	str	r3, [sp, #28]
 8002338:	2b00      	cmp	r3, #0
 800233a:	d1fa      	bne.n	8002332 <JTAG_IR_Slow+0x16>
 800233c:	2401      	movs	r4, #1
 800233e:	6853      	ldr	r3, [r2, #4]
 8002340:	498c      	ldr	r1, [pc, #560]	; (8002574 <JTAG_IR_Slow+0x258>)
 8002342:	600c      	str	r4, [r1, #0]
 8002344:	9306      	str	r3, [sp, #24]
 8002346:	9b06      	ldr	r3, [sp, #24]
 8002348:	3b01      	subs	r3, #1
 800234a:	9306      	str	r3, [sp, #24]
 800234c:	2b00      	cmp	r3, #0
 800234e:	d1fa      	bne.n	8002346 <JTAG_IR_Slow+0x2a>
 8002350:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 8002354:	6853      	ldr	r3, [r2, #4]
 8002356:	4987      	ldr	r1, [pc, #540]	; (8002574 <JTAG_IR_Slow+0x258>)
 8002358:	600c      	str	r4, [r1, #0]
 800235a:	9305      	str	r3, [sp, #20]
 800235c:	9b05      	ldr	r3, [sp, #20]
 800235e:	3b01      	subs	r3, #1
 8002360:	9305      	str	r3, [sp, #20]
 8002362:	2b00      	cmp	r3, #0
 8002364:	d1fa      	bne.n	800235c <JTAG_IR_Slow+0x40>
 8002366:	2401      	movs	r4, #1
 8002368:	6853      	ldr	r3, [r2, #4]
 800236a:	4982      	ldr	r1, [pc, #520]	; (8002574 <JTAG_IR_Slow+0x258>)
 800236c:	600c      	str	r4, [r1, #0]
 800236e:	9304      	str	r3, [sp, #16]
 8002370:	9b04      	ldr	r3, [sp, #16]
 8002372:	3b01      	subs	r3, #1
 8002374:	9304      	str	r3, [sp, #16]
 8002376:	2b00      	cmp	r3, #0
 8002378:	d1fa      	bne.n	8002370 <JTAG_IR_Slow+0x54>
 800237a:	f44f 3500 	mov.w	r5, #131072	; 0x20000
 800237e:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 8002382:	6851      	ldr	r1, [r2, #4]
 8002384:	4b7b      	ldr	r3, [pc, #492]	; (8002574 <JTAG_IR_Slow+0x258>)
 8002386:	601d      	str	r5, [r3, #0]
 8002388:	601c      	str	r4, [r3, #0]
 800238a:	9103      	str	r1, [sp, #12]
 800238c:	9b03      	ldr	r3, [sp, #12]
 800238e:	3b01      	subs	r3, #1
 8002390:	9303      	str	r3, [sp, #12]
 8002392:	2b00      	cmp	r3, #0
 8002394:	d1fa      	bne.n	800238c <JTAG_IR_Slow+0x70>
 8002396:	2401      	movs	r4, #1
 8002398:	6853      	ldr	r3, [r2, #4]
 800239a:	4976      	ldr	r1, [pc, #472]	; (8002574 <JTAG_IR_Slow+0x258>)
 800239c:	600c      	str	r4, [r1, #0]
 800239e:	9302      	str	r3, [sp, #8]
 80023a0:	9b02      	ldr	r3, [sp, #8]
 80023a2:	3b01      	subs	r3, #1
 80023a4:	9302      	str	r3, [sp, #8]
 80023a6:	2b00      	cmp	r3, #0
 80023a8:	d1fa      	bne.n	80023a0 <JTAG_IR_Slow+0x84>
 80023aa:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 80023ae:	6853      	ldr	r3, [r2, #4]
 80023b0:	4970      	ldr	r1, [pc, #448]	; (8002574 <JTAG_IR_Slow+0x258>)
 80023b2:	600c      	str	r4, [r1, #0]
 80023b4:	9301      	str	r3, [sp, #4]
 80023b6:	9b01      	ldr	r3, [sp, #4]
 80023b8:	3b01      	subs	r3, #1
 80023ba:	9301      	str	r3, [sp, #4]
 80023bc:	2b00      	cmp	r3, #0
 80023be:	d1fa      	bne.n	80023b6 <JTAG_IR_Slow+0x9a>
 80023c0:	2401      	movs	r4, #1
 80023c2:	6853      	ldr	r3, [r2, #4]
 80023c4:	496b      	ldr	r1, [pc, #428]	; (8002574 <JTAG_IR_Slow+0x258>)
 80023c6:	600c      	str	r4, [r1, #0]
 80023c8:	9300      	str	r3, [sp, #0]
 80023ca:	9b00      	ldr	r3, [sp, #0]
 80023cc:	3b01      	subs	r3, #1
 80023ce:	9300      	str	r3, [sp, #0]
 80023d0:	2b00      	cmp	r3, #0
 80023d2:	d1fa      	bne.n	80023ca <JTAG_IR_Slow+0xae>
 80023d4:	2508      	movs	r5, #8
 80023d6:	7dd3      	ldrb	r3, [r2, #23]
 80023d8:	4c66      	ldr	r4, [pc, #408]	; (8002574 <JTAG_IR_Slow+0x258>)
 80023da:	eb02 0143 	add.w	r1, r2, r3, lsl #1
 80023de:	8c09      	ldrh	r1, [r1, #32]
 80023e0:	6025      	str	r5, [r4, #0]
 80023e2:	b1b9      	cbz	r1, 8002414 <JTAG_IR_Slow+0xf8>
 80023e4:	f44f 3580 	mov.w	r5, #65536	; 0x10000
 80023e8:	6853      	ldr	r3, [r2, #4]
 80023ea:	4c62      	ldr	r4, [pc, #392]	; (8002574 <JTAG_IR_Slow+0x258>)
 80023ec:	6025      	str	r5, [r4, #0]
 80023ee:	9309      	str	r3, [sp, #36]	; 0x24
 80023f0:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80023f2:	3b01      	subs	r3, #1
 80023f4:	9309      	str	r3, [sp, #36]	; 0x24
 80023f6:	2b00      	cmp	r3, #0
 80023f8:	d1fa      	bne.n	80023f0 <JTAG_IR_Slow+0xd4>
 80023fa:	2501      	movs	r5, #1
 80023fc:	6853      	ldr	r3, [r2, #4]
 80023fe:	4c5d      	ldr	r4, [pc, #372]	; (8002574 <JTAG_IR_Slow+0x258>)
 8002400:	6025      	str	r5, [r4, #0]
 8002402:	9308      	str	r3, [sp, #32]
 8002404:	9b08      	ldr	r3, [sp, #32]
 8002406:	3b01      	subs	r3, #1
 8002408:	9308      	str	r3, [sp, #32]
 800240a:	2b00      	cmp	r3, #0
 800240c:	d1fa      	bne.n	8002404 <JTAG_IR_Slow+0xe8>
 800240e:	3901      	subs	r1, #1
 8002410:	d1e8      	bne.n	80023e4 <JTAG_IR_Slow+0xc8>
 8002412:	7dd3      	ldrb	r3, [r2, #23]
 8002414:	18d1      	adds	r1, r2, r3
 8002416:	7e09      	ldrb	r1, [r1, #24]
 8002418:	3901      	subs	r1, #1
 800241a:	d020      	beq.n	800245e <JTAG_IR_Slow+0x142>
 800241c:	07c3      	lsls	r3, r0, #31
 800241e:	bf4c      	ite	mi
 8002420:	2408      	movmi	r4, #8
 8002422:	f44f 2400 	movpl.w	r4, #524288	; 0x80000
 8002426:	f44f 3580 	mov.w	r5, #65536	; 0x10000
 800242a:	4b52      	ldr	r3, [pc, #328]	; (8002574 <JTAG_IR_Slow+0x258>)
 800242c:	601c      	str	r4, [r3, #0]
 800242e:	6853      	ldr	r3, [r2, #4]
 8002430:	4c50      	ldr	r4, [pc, #320]	; (8002574 <JTAG_IR_Slow+0x258>)
 8002432:	6025      	str	r5, [r4, #0]
 8002434:	930b      	str	r3, [sp, #44]	; 0x2c
 8002436:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002438:	3b01      	subs	r3, #1
 800243a:	930b      	str	r3, [sp, #44]	; 0x2c
 800243c:	2b00      	cmp	r3, #0
 800243e:	d1fa      	bne.n	8002436 <JTAG_IR_Slow+0x11a>
 8002440:	2501      	movs	r5, #1
 8002442:	6853      	ldr	r3, [r2, #4]
 8002444:	4c4b      	ldr	r4, [pc, #300]	; (8002574 <JTAG_IR_Slow+0x258>)
 8002446:	6025      	str	r5, [r4, #0]
 8002448:	930a      	str	r3, [sp, #40]	; 0x28
 800244a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800244c:	3b01      	subs	r3, #1
 800244e:	930a      	str	r3, [sp, #40]	; 0x28
 8002450:	2b00      	cmp	r3, #0
 8002452:	d1fa      	bne.n	800244a <JTAG_IR_Slow+0x12e>
 8002454:	3901      	subs	r1, #1
 8002456:	ea4f 0050 	mov.w	r0, r0, lsr #1
 800245a:	d1df      	bne.n	800241c <JTAG_IR_Slow+0x100>
 800245c:	7dd3      	ldrb	r3, [r2, #23]
 800245e:	eb02 0343 	add.w	r3, r2, r3, lsl #1
 8002462:	8e19      	ldrh	r1, [r3, #48]	; 0x30
 8002464:	f000 0001 	and.w	r0, r0, #1
 8002468:	2900      	cmp	r1, #0
 800246a:	f000 8085 	beq.w	8002578 <JTAG_IR_Slow+0x25c>
 800246e:	2800      	cmp	r0, #0
 8002470:	f000 809e 	beq.w	80025b0 <JTAG_IR_Slow+0x294>
 8002474:	2008      	movs	r0, #8
 8002476:	4b3f      	ldr	r3, [pc, #252]	; (8002574 <JTAG_IR_Slow+0x258>)
 8002478:	6018      	str	r0, [r3, #0]
 800247a:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 800247e:	6853      	ldr	r3, [r2, #4]
 8002480:	483c      	ldr	r0, [pc, #240]	; (8002574 <JTAG_IR_Slow+0x258>)
 8002482:	6004      	str	r4, [r0, #0]
 8002484:	930d      	str	r3, [sp, #52]	; 0x34
 8002486:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8002488:	3b01      	subs	r3, #1
 800248a:	930d      	str	r3, [sp, #52]	; 0x34
 800248c:	2b00      	cmp	r3, #0
 800248e:	d1fa      	bne.n	8002486 <JTAG_IR_Slow+0x16a>
 8002490:	2401      	movs	r4, #1
 8002492:	6853      	ldr	r3, [r2, #4]
 8002494:	4837      	ldr	r0, [pc, #220]	; (8002574 <JTAG_IR_Slow+0x258>)
 8002496:	6004      	str	r4, [r0, #0]
 8002498:	930c      	str	r3, [sp, #48]	; 0x30
 800249a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800249c:	3b01      	subs	r3, #1
 800249e:	930c      	str	r3, [sp, #48]	; 0x30
 80024a0:	2b00      	cmp	r3, #0
 80024a2:	d1fa      	bne.n	800249a <JTAG_IR_Slow+0x17e>
 80024a4:	2008      	movs	r0, #8
 80024a6:	4b33      	ldr	r3, [pc, #204]	; (8002574 <JTAG_IR_Slow+0x258>)
 80024a8:	3901      	subs	r1, #1
 80024aa:	6018      	str	r0, [r3, #0]
 80024ac:	d016      	beq.n	80024dc <JTAG_IR_Slow+0x1c0>
 80024ae:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 80024b2:	6853      	ldr	r3, [r2, #4]
 80024b4:	482f      	ldr	r0, [pc, #188]	; (8002574 <JTAG_IR_Slow+0x258>)
 80024b6:	6004      	str	r4, [r0, #0]
 80024b8:	930f      	str	r3, [sp, #60]	; 0x3c
 80024ba:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80024bc:	3b01      	subs	r3, #1
 80024be:	930f      	str	r3, [sp, #60]	; 0x3c
 80024c0:	2b00      	cmp	r3, #0
 80024c2:	d1fa      	bne.n	80024ba <JTAG_IR_Slow+0x19e>
 80024c4:	2401      	movs	r4, #1
 80024c6:	6853      	ldr	r3, [r2, #4]
 80024c8:	482a      	ldr	r0, [pc, #168]	; (8002574 <JTAG_IR_Slow+0x258>)
 80024ca:	6004      	str	r4, [r0, #0]
 80024cc:	930e      	str	r3, [sp, #56]	; 0x38
 80024ce:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80024d0:	3b01      	subs	r3, #1
 80024d2:	930e      	str	r3, [sp, #56]	; 0x38
 80024d4:	2b00      	cmp	r3, #0
 80024d6:	d1fa      	bne.n	80024ce <JTAG_IR_Slow+0x1b2>
 80024d8:	3901      	subs	r1, #1
 80024da:	d1e8      	bne.n	80024ae <JTAG_IR_Slow+0x192>
 80024dc:	2402      	movs	r4, #2
 80024de:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 80024e2:	6851      	ldr	r1, [r2, #4]
 80024e4:	4b23      	ldr	r3, [pc, #140]	; (8002574 <JTAG_IR_Slow+0x258>)
 80024e6:	601c      	str	r4, [r3, #0]
 80024e8:	6018      	str	r0, [r3, #0]
 80024ea:	9111      	str	r1, [sp, #68]	; 0x44
 80024ec:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80024ee:	3b01      	subs	r3, #1
 80024f0:	9311      	str	r3, [sp, #68]	; 0x44
 80024f2:	2b00      	cmp	r3, #0
 80024f4:	d1fa      	bne.n	80024ec <JTAG_IR_Slow+0x1d0>
 80024f6:	2001      	movs	r0, #1
 80024f8:	6853      	ldr	r3, [r2, #4]
 80024fa:	491e      	ldr	r1, [pc, #120]	; (8002574 <JTAG_IR_Slow+0x258>)
 80024fc:	6008      	str	r0, [r1, #0]
 80024fe:	9310      	str	r3, [sp, #64]	; 0x40
 8002500:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002502:	3b01      	subs	r3, #1
 8002504:	9310      	str	r3, [sp, #64]	; 0x40
 8002506:	2b00      	cmp	r3, #0
 8002508:	d1fa      	bne.n	8002500 <JTAG_IR_Slow+0x1e4>
 800250a:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 800250e:	6853      	ldr	r3, [r2, #4]
 8002510:	4918      	ldr	r1, [pc, #96]	; (8002574 <JTAG_IR_Slow+0x258>)
 8002512:	6008      	str	r0, [r1, #0]
 8002514:	9317      	str	r3, [sp, #92]	; 0x5c
 8002516:	9b17      	ldr	r3, [sp, #92]	; 0x5c
 8002518:	3b01      	subs	r3, #1
 800251a:	9317      	str	r3, [sp, #92]	; 0x5c
 800251c:	2b00      	cmp	r3, #0
 800251e:	d1fa      	bne.n	8002516 <JTAG_IR_Slow+0x1fa>
 8002520:	2001      	movs	r0, #1
 8002522:	6853      	ldr	r3, [r2, #4]
 8002524:	4913      	ldr	r1, [pc, #76]	; (8002574 <JTAG_IR_Slow+0x258>)
 8002526:	6008      	str	r0, [r1, #0]
 8002528:	9316      	str	r3, [sp, #88]	; 0x58
 800252a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800252c:	3b01      	subs	r3, #1
 800252e:	9316      	str	r3, [sp, #88]	; 0x58
 8002530:	2b00      	cmp	r3, #0
 8002532:	d1fa      	bne.n	800252a <JTAG_IR_Slow+0x20e>
 8002534:	f44f 3400 	mov.w	r4, #131072	; 0x20000
 8002538:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 800253c:	6851      	ldr	r1, [r2, #4]
 800253e:	4b0d      	ldr	r3, [pc, #52]	; (8002574 <JTAG_IR_Slow+0x258>)
 8002540:	601c      	str	r4, [r3, #0]
 8002542:	6018      	str	r0, [r3, #0]
 8002544:	9115      	str	r1, [sp, #84]	; 0x54
 8002546:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8002548:	3b01      	subs	r3, #1
 800254a:	9315      	str	r3, [sp, #84]	; 0x54
 800254c:	2b00      	cmp	r3, #0
 800254e:	d1fa      	bne.n	8002546 <JTAG_IR_Slow+0x22a>
 8002550:	2101      	movs	r1, #1
 8002552:	6853      	ldr	r3, [r2, #4]
 8002554:	4a07      	ldr	r2, [pc, #28]	; (8002574 <JTAG_IR_Slow+0x258>)
 8002556:	6011      	str	r1, [r2, #0]
 8002558:	9314      	str	r3, [sp, #80]	; 0x50
 800255a:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800255c:	3b01      	subs	r3, #1
 800255e:	9314      	str	r3, [sp, #80]	; 0x50
 8002560:	2b00      	cmp	r3, #0
 8002562:	d1fa      	bne.n	800255a <JTAG_IR_Slow+0x23e>
 8002564:	2208      	movs	r2, #8
 8002566:	4b03      	ldr	r3, [pc, #12]	; (8002574 <JTAG_IR_Slow+0x258>)
 8002568:	601a      	str	r2, [r3, #0]
 800256a:	b018      	add	sp, #96	; 0x60
 800256c:	bc30      	pop	{r4, r5}
 800256e:	4770      	bx	lr
 8002570:	200004a0 	.word	0x200004a0
 8002574:	40010c10 	.word	0x40010c10
 8002578:	2102      	movs	r1, #2
 800257a:	4b12      	ldr	r3, [pc, #72]	; (80025c4 <JTAG_IR_Slow+0x2a8>)
 800257c:	6019      	str	r1, [r3, #0]
 800257e:	b1e0      	cbz	r0, 80025ba <JTAG_IR_Slow+0x29e>
 8002580:	2108      	movs	r1, #8
 8002582:	6019      	str	r1, [r3, #0]
 8002584:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 8002588:	6853      	ldr	r3, [r2, #4]
 800258a:	490e      	ldr	r1, [pc, #56]	; (80025c4 <JTAG_IR_Slow+0x2a8>)
 800258c:	6008      	str	r0, [r1, #0]
 800258e:	9313      	str	r3, [sp, #76]	; 0x4c
 8002590:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8002592:	3b01      	subs	r3, #1
 8002594:	9313      	str	r3, [sp, #76]	; 0x4c
 8002596:	2b00      	cmp	r3, #0
 8002598:	d1fa      	bne.n	8002590 <JTAG_IR_Slow+0x274>
 800259a:	2001      	movs	r0, #1
 800259c:	6853      	ldr	r3, [r2, #4]
 800259e:	4909      	ldr	r1, [pc, #36]	; (80025c4 <JTAG_IR_Slow+0x2a8>)
 80025a0:	6008      	str	r0, [r1, #0]
 80025a2:	9312      	str	r3, [sp, #72]	; 0x48
 80025a4:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80025a6:	3b01      	subs	r3, #1
 80025a8:	9312      	str	r3, [sp, #72]	; 0x48
 80025aa:	2b00      	cmp	r3, #0
 80025ac:	d1fa      	bne.n	80025a4 <JTAG_IR_Slow+0x288>
 80025ae:	e7ac      	b.n	800250a <JTAG_IR_Slow+0x1ee>
 80025b0:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 80025b4:	4b03      	ldr	r3, [pc, #12]	; (80025c4 <JTAG_IR_Slow+0x2a8>)
 80025b6:	6018      	str	r0, [r3, #0]
 80025b8:	e75f      	b.n	800247a <JTAG_IR_Slow+0x15e>
 80025ba:	f44f 2100 	mov.w	r1, #524288	; 0x80000
 80025be:	6019      	str	r1, [r3, #0]
 80025c0:	e7e0      	b.n	8002584 <JTAG_IR_Slow+0x268>
 80025c2:	bf00      	nop
 80025c4:	40010c10 	.word	0x40010c10

080025c8 <JTAG_TransferSlow>:
 80025c8:	b4f0      	push	{r4, r5, r6, r7}
 80025ca:	2602      	movs	r6, #2
 80025cc:	f44f 3580 	mov.w	r5, #65536	; 0x10000
 80025d0:	4a8f      	ldr	r2, [pc, #572]	; (8002810 <JTAG_TransferSlow+0x248>)
 80025d2:	4b90      	ldr	r3, [pc, #576]	; (8002814 <JTAG_TransferSlow+0x24c>)
 80025d4:	4604      	mov	r4, r0
 80025d6:	6850      	ldr	r0, [r2, #4]
 80025d8:	b0aa      	sub	sp, #168	; 0xa8
 80025da:	601e      	str	r6, [r3, #0]
 80025dc:	601d      	str	r5, [r3, #0]
 80025de:	9005      	str	r0, [sp, #20]
 80025e0:	9b05      	ldr	r3, [sp, #20]
 80025e2:	3b01      	subs	r3, #1
 80025e4:	9305      	str	r3, [sp, #20]
 80025e6:	2b00      	cmp	r3, #0
 80025e8:	d1fa      	bne.n	80025e0 <JTAG_TransferSlow+0x18>
 80025ea:	2501      	movs	r5, #1
 80025ec:	6853      	ldr	r3, [r2, #4]
 80025ee:	4889      	ldr	r0, [pc, #548]	; (8002814 <JTAG_TransferSlow+0x24c>)
 80025f0:	6005      	str	r5, [r0, #0]
 80025f2:	9304      	str	r3, [sp, #16]
 80025f4:	9b04      	ldr	r3, [sp, #16]
 80025f6:	3b01      	subs	r3, #1
 80025f8:	9304      	str	r3, [sp, #16]
 80025fa:	2b00      	cmp	r3, #0
 80025fc:	d1fa      	bne.n	80025f4 <JTAG_TransferSlow+0x2c>
 80025fe:	f44f 3600 	mov.w	r6, #131072	; 0x20000
 8002602:	f44f 3580 	mov.w	r5, #65536	; 0x10000
 8002606:	6850      	ldr	r0, [r2, #4]
 8002608:	4b82      	ldr	r3, [pc, #520]	; (8002814 <JTAG_TransferSlow+0x24c>)
 800260a:	601e      	str	r6, [r3, #0]
 800260c:	601d      	str	r5, [r3, #0]
 800260e:	9003      	str	r0, [sp, #12]
 8002610:	9b03      	ldr	r3, [sp, #12]
 8002612:	3b01      	subs	r3, #1
 8002614:	9303      	str	r3, [sp, #12]
 8002616:	2b00      	cmp	r3, #0
 8002618:	d1fa      	bne.n	8002610 <JTAG_TransferSlow+0x48>
 800261a:	2501      	movs	r5, #1
 800261c:	6853      	ldr	r3, [r2, #4]
 800261e:	487d      	ldr	r0, [pc, #500]	; (8002814 <JTAG_TransferSlow+0x24c>)
 8002620:	6005      	str	r5, [r0, #0]
 8002622:	9302      	str	r3, [sp, #8]
 8002624:	9b02      	ldr	r3, [sp, #8]
 8002626:	3b01      	subs	r3, #1
 8002628:	9302      	str	r3, [sp, #8]
 800262a:	2b00      	cmp	r3, #0
 800262c:	d1fa      	bne.n	8002624 <JTAG_TransferSlow+0x5c>
 800262e:	f44f 3580 	mov.w	r5, #65536	; 0x10000
 8002632:	6853      	ldr	r3, [r2, #4]
 8002634:	4877      	ldr	r0, [pc, #476]	; (8002814 <JTAG_TransferSlow+0x24c>)
 8002636:	6005      	str	r5, [r0, #0]
 8002638:	9301      	str	r3, [sp, #4]
 800263a:	9b01      	ldr	r3, [sp, #4]
 800263c:	3b01      	subs	r3, #1
 800263e:	9301      	str	r3, [sp, #4]
 8002640:	2b00      	cmp	r3, #0
 8002642:	d1fa      	bne.n	800263a <JTAG_TransferSlow+0x72>
 8002644:	2501      	movs	r5, #1
 8002646:	6853      	ldr	r3, [r2, #4]
 8002648:	4872      	ldr	r0, [pc, #456]	; (8002814 <JTAG_TransferSlow+0x24c>)
 800264a:	6005      	str	r5, [r0, #0]
 800264c:	9300      	str	r3, [sp, #0]
 800264e:	9b00      	ldr	r3, [sp, #0]
 8002650:	3b01      	subs	r3, #1
 8002652:	9300      	str	r3, [sp, #0]
 8002654:	2b00      	cmp	r3, #0
 8002656:	d1fa      	bne.n	800264e <JTAG_TransferSlow+0x86>
 8002658:	7dd0      	ldrb	r0, [r2, #23]
 800265a:	b1b0      	cbz	r0, 800268a <JTAG_TransferSlow+0xc2>
 800265c:	f44f 3680 	mov.w	r6, #65536	; 0x10000
 8002660:	6853      	ldr	r3, [r2, #4]
 8002662:	4d6c      	ldr	r5, [pc, #432]	; (8002814 <JTAG_TransferSlow+0x24c>)
 8002664:	602e      	str	r6, [r5, #0]
 8002666:	9307      	str	r3, [sp, #28]
 8002668:	9b07      	ldr	r3, [sp, #28]
 800266a:	3b01      	subs	r3, #1
 800266c:	9307      	str	r3, [sp, #28]
 800266e:	2b00      	cmp	r3, #0
 8002670:	d1fa      	bne.n	8002668 <JTAG_TransferSlow+0xa0>
 8002672:	2601      	movs	r6, #1
 8002674:	6853      	ldr	r3, [r2, #4]
 8002676:	4d67      	ldr	r5, [pc, #412]	; (8002814 <JTAG_TransferSlow+0x24c>)
 8002678:	602e      	str	r6, [r5, #0]
 800267a:	9306      	str	r3, [sp, #24]
 800267c:	9b06      	ldr	r3, [sp, #24]
 800267e:	3b01      	subs	r3, #1
 8002680:	9306      	str	r3, [sp, #24]
 8002682:	2b00      	cmp	r3, #0
 8002684:	d1fa      	bne.n	800267c <JTAG_TransferSlow+0xb4>
 8002686:	3801      	subs	r0, #1
 8002688:	d1e8      	bne.n	800265c <JTAG_TransferSlow+0x94>
 800268a:	07a3      	lsls	r3, r4, #30
 800268c:	f140 80cf 	bpl.w	800282e <JTAG_TransferSlow+0x266>
 8002690:	2008      	movs	r0, #8
 8002692:	4b60      	ldr	r3, [pc, #384]	; (8002814 <JTAG_TransferSlow+0x24c>)
 8002694:	6018      	str	r0, [r3, #0]
 8002696:	f44f 3580 	mov.w	r5, #65536	; 0x10000
 800269a:	6853      	ldr	r3, [r2, #4]
 800269c:	485d      	ldr	r0, [pc, #372]	; (8002814 <JTAG_TransferSlow+0x24c>)
 800269e:	6005      	str	r5, [r0, #0]
 80026a0:	930d      	str	r3, [sp, #52]	; 0x34
 80026a2:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80026a4:	3b01      	subs	r3, #1
 80026a6:	930d      	str	r3, [sp, #52]	; 0x34
 80026a8:	2b00      	cmp	r3, #0
 80026aa:	d1fa      	bne.n	80026a2 <JTAG_TransferSlow+0xda>
 80026ac:	2601      	movs	r6, #1
 80026ae:	4b5a      	ldr	r3, [pc, #360]	; (8002818 <JTAG_TransferSlow+0x250>)
 80026b0:	4858      	ldr	r0, [pc, #352]	; (8002814 <JTAG_TransferSlow+0x24c>)
 80026b2:	681d      	ldr	r5, [r3, #0]
 80026b4:	6853      	ldr	r3, [r2, #4]
 80026b6:	f3c5 0580 	ubfx	r5, r5, #2, #1
 80026ba:	6006      	str	r6, [r0, #0]
 80026bc:	930c      	str	r3, [sp, #48]	; 0x30
 80026be:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80026c0:	3b01      	subs	r3, #1
 80026c2:	930c      	str	r3, [sp, #48]	; 0x30
 80026c4:	2b00      	cmp	r3, #0
 80026c6:	d1fa      	bne.n	80026be <JTAG_TransferSlow+0xf6>
 80026c8:	0767      	lsls	r7, r4, #29
 80026ca:	bf4c      	ite	mi
 80026cc:	2008      	movmi	r0, #8
 80026ce:	f44f 2000 	movpl.w	r0, #524288	; 0x80000
 80026d2:	f44f 3680 	mov.w	r6, #65536	; 0x10000
 80026d6:	4b4f      	ldr	r3, [pc, #316]	; (8002814 <JTAG_TransferSlow+0x24c>)
 80026d8:	006d      	lsls	r5, r5, #1
 80026da:	6018      	str	r0, [r3, #0]
 80026dc:	6853      	ldr	r3, [r2, #4]
 80026de:	484d      	ldr	r0, [pc, #308]	; (8002814 <JTAG_TransferSlow+0x24c>)
 80026e0:	6006      	str	r6, [r0, #0]
 80026e2:	930b      	str	r3, [sp, #44]	; 0x2c
 80026e4:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80026e6:	3b01      	subs	r3, #1
 80026e8:	930b      	str	r3, [sp, #44]	; 0x2c
 80026ea:	2b00      	cmp	r3, #0
 80026ec:	d1fa      	bne.n	80026e4 <JTAG_TransferSlow+0x11c>
 80026ee:	2701      	movs	r7, #1
 80026f0:	4b49      	ldr	r3, [pc, #292]	; (8002818 <JTAG_TransferSlow+0x250>)
 80026f2:	4e48      	ldr	r6, [pc, #288]	; (8002814 <JTAG_TransferSlow+0x24c>)
 80026f4:	6818      	ldr	r0, [r3, #0]
 80026f6:	6853      	ldr	r3, [r2, #4]
 80026f8:	f3c0 0080 	ubfx	r0, r0, #2, #1
 80026fc:	6037      	str	r7, [r6, #0]
 80026fe:	930a      	str	r3, [sp, #40]	; 0x28
 8002700:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002702:	3b01      	subs	r3, #1
 8002704:	930a      	str	r3, [sp, #40]	; 0x28
 8002706:	2b00      	cmp	r3, #0
 8002708:	d1fa      	bne.n	8002700 <JTAG_TransferSlow+0x138>
 800270a:	0726      	lsls	r6, r4, #28
 800270c:	bf4c      	ite	mi
 800270e:	2608      	movmi	r6, #8
 8002710:	f44f 2600 	movpl.w	r6, #524288	; 0x80000
 8002714:	f44f 3780 	mov.w	r7, #65536	; 0x10000
 8002718:	4b3e      	ldr	r3, [pc, #248]	; (8002814 <JTAG_TransferSlow+0x24c>)
 800271a:	601e      	str	r6, [r3, #0]
 800271c:	6853      	ldr	r3, [r2, #4]
 800271e:	4e3d      	ldr	r6, [pc, #244]	; (8002814 <JTAG_TransferSlow+0x24c>)
 8002720:	6037      	str	r7, [r6, #0]
 8002722:	9309      	str	r3, [sp, #36]	; 0x24
 8002724:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002726:	3b01      	subs	r3, #1
 8002728:	9309      	str	r3, [sp, #36]	; 0x24
 800272a:	2b00      	cmp	r3, #0
 800272c:	d1fa      	bne.n	8002724 <JTAG_TransferSlow+0x15c>
 800272e:	f04f 0c01 	mov.w	ip, #1
 8002732:	4b39      	ldr	r3, [pc, #228]	; (8002818 <JTAG_TransferSlow+0x250>)
 8002734:	4f37      	ldr	r7, [pc, #220]	; (8002814 <JTAG_TransferSlow+0x24c>)
 8002736:	681e      	ldr	r6, [r3, #0]
 8002738:	6853      	ldr	r3, [r2, #4]
 800273a:	f3c6 0680 	ubfx	r6, r6, #2, #1
 800273e:	f8c7 c000 	str.w	ip, [r7]
 8002742:	9308      	str	r3, [sp, #32]
 8002744:	9b08      	ldr	r3, [sp, #32]
 8002746:	3b01      	subs	r3, #1
 8002748:	9308      	str	r3, [sp, #32]
 800274a:	2b00      	cmp	r3, #0
 800274c:	d1fa      	bne.n	8002744 <JTAG_TransferSlow+0x17c>
 800274e:	ea45 0586 	orr.w	r5, r5, r6, lsl #2
 8002752:	4328      	orrs	r0, r5
 8002754:	2801      	cmp	r0, #1
 8002756:	d072      	beq.n	800283e <JTAG_TransferSlow+0x276>
 8002758:	2502      	movs	r5, #2
 800275a:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 800275e:	6851      	ldr	r1, [r2, #4]
 8002760:	4b2c      	ldr	r3, [pc, #176]	; (8002814 <JTAG_TransferSlow+0x24c>)
 8002762:	601d      	str	r5, [r3, #0]
 8002764:	601c      	str	r4, [r3, #0]
 8002766:	910f      	str	r1, [sp, #60]	; 0x3c
 8002768:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800276a:	3b01      	subs	r3, #1
 800276c:	930f      	str	r3, [sp, #60]	; 0x3c
 800276e:	2b00      	cmp	r3, #0
 8002770:	d1fa      	bne.n	8002768 <JTAG_TransferSlow+0x1a0>
 8002772:	2401      	movs	r4, #1
 8002774:	6853      	ldr	r3, [r2, #4]
 8002776:	4927      	ldr	r1, [pc, #156]	; (8002814 <JTAG_TransferSlow+0x24c>)
 8002778:	600c      	str	r4, [r1, #0]
 800277a:	930e      	str	r3, [sp, #56]	; 0x38
 800277c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800277e:	3b01      	subs	r3, #1
 8002780:	930e      	str	r3, [sp, #56]	; 0x38
 8002782:	2b00      	cmp	r3, #0
 8002784:	d1fa      	bne.n	800277c <JTAG_TransferSlow+0x1b4>
 8002786:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 800278a:	6853      	ldr	r3, [r2, #4]
 800278c:	4921      	ldr	r1, [pc, #132]	; (8002814 <JTAG_TransferSlow+0x24c>)
 800278e:	600c      	str	r4, [r1, #0]
 8002790:	9327      	str	r3, [sp, #156]	; 0x9c
 8002792:	9b27      	ldr	r3, [sp, #156]	; 0x9c
 8002794:	3b01      	subs	r3, #1
 8002796:	9327      	str	r3, [sp, #156]	; 0x9c
 8002798:	2b00      	cmp	r3, #0
 800279a:	d1fa      	bne.n	8002792 <JTAG_TransferSlow+0x1ca>
 800279c:	2401      	movs	r4, #1
 800279e:	6853      	ldr	r3, [r2, #4]
 80027a0:	491c      	ldr	r1, [pc, #112]	; (8002814 <JTAG_TransferSlow+0x24c>)
 80027a2:	600c      	str	r4, [r1, #0]
 80027a4:	9326      	str	r3, [sp, #152]	; 0x98
 80027a6:	9b26      	ldr	r3, [sp, #152]	; 0x98
 80027a8:	3b01      	subs	r3, #1
 80027aa:	9326      	str	r3, [sp, #152]	; 0x98
 80027ac:	2b00      	cmp	r3, #0
 80027ae:	d1fa      	bne.n	80027a6 <JTAG_TransferSlow+0x1de>
 80027b0:	f44f 3500 	mov.w	r5, #131072	; 0x20000
 80027b4:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 80027b8:	6851      	ldr	r1, [r2, #4]
 80027ba:	4b16      	ldr	r3, [pc, #88]	; (8002814 <JTAG_TransferSlow+0x24c>)
 80027bc:	601d      	str	r5, [r3, #0]
 80027be:	601c      	str	r4, [r3, #0]
 80027c0:	9125      	str	r1, [sp, #148]	; 0x94
 80027c2:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80027c4:	3b01      	subs	r3, #1
 80027c6:	9325      	str	r3, [sp, #148]	; 0x94
 80027c8:	2b00      	cmp	r3, #0
 80027ca:	d1fa      	bne.n	80027c2 <JTAG_TransferSlow+0x1fa>
 80027cc:	2401      	movs	r4, #1
 80027ce:	6853      	ldr	r3, [r2, #4]
 80027d0:	4910      	ldr	r1, [pc, #64]	; (8002814 <JTAG_TransferSlow+0x24c>)
 80027d2:	600c      	str	r4, [r1, #0]
 80027d4:	9324      	str	r3, [sp, #144]	; 0x90
 80027d6:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80027d8:	3b01      	subs	r3, #1
 80027da:	9324      	str	r3, [sp, #144]	; 0x90
 80027dc:	2b00      	cmp	r3, #0
 80027de:	d1fa      	bne.n	80027d6 <JTAG_TransferSlow+0x20e>
 80027e0:	2408      	movs	r4, #8
 80027e2:	490c      	ldr	r1, [pc, #48]	; (8002814 <JTAG_TransferSlow+0x24c>)
 80027e4:	7a13      	ldrb	r3, [r2, #8]
 80027e6:	600c      	str	r4, [r1, #0]
 80027e8:	1e59      	subs	r1, r3, #1
 80027ea:	b32b      	cbz	r3, 8002838 <JTAG_TransferSlow+0x270>
 80027ec:	f44f 3580 	mov.w	r5, #65536	; 0x10000
 80027f0:	6853      	ldr	r3, [r2, #4]
 80027f2:	4c08      	ldr	r4, [pc, #32]	; (8002814 <JTAG_TransferSlow+0x24c>)
 80027f4:	6025      	str	r5, [r4, #0]
 80027f6:	9329      	str	r3, [sp, #164]	; 0xa4
 80027f8:	9b29      	ldr	r3, [sp, #164]	; 0xa4
 80027fa:	3b01      	subs	r3, #1
 80027fc:	9329      	str	r3, [sp, #164]	; 0xa4
 80027fe:	2b00      	cmp	r3, #0
 8002800:	d1fa      	bne.n	80027f8 <JTAG_TransferSlow+0x230>
 8002802:	2501      	movs	r5, #1
 8002804:	6853      	ldr	r3, [r2, #4]
 8002806:	4c03      	ldr	r4, [pc, #12]	; (8002814 <JTAG_TransferSlow+0x24c>)
 8002808:	6025      	str	r5, [r4, #0]
 800280a:	9328      	str	r3, [sp, #160]	; 0xa0
 800280c:	e006      	b.n	800281c <JTAG_TransferSlow+0x254>
 800280e:	bf00      	nop
 8002810:	200004a0 	.word	0x200004a0
 8002814:	40010c10 	.word	0x40010c10
 8002818:	40010c08 	.word	0x40010c08
 800281c:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 800281e:	3b01      	subs	r3, #1
 8002820:	9328      	str	r3, [sp, #160]	; 0xa0
 8002822:	2b00      	cmp	r3, #0
 8002824:	d1fa      	bne.n	800281c <JTAG_TransferSlow+0x254>
 8002826:	1e4b      	subs	r3, r1, #1
 8002828:	b131      	cbz	r1, 8002838 <JTAG_TransferSlow+0x270>
 800282a:	4619      	mov	r1, r3
 800282c:	e7de      	b.n	80027ec <JTAG_TransferSlow+0x224>
 800282e:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8002832:	4b8a      	ldr	r3, [pc, #552]	; (8002a5c <JTAG_TransferSlow+0x494>)
 8002834:	6018      	str	r0, [r3, #0]
 8002836:	e72e      	b.n	8002696 <JTAG_TransferSlow+0xce>
 8002838:	b02a      	add	sp, #168	; 0xa8
 800283a:	bcf0      	pop	{r4, r5, r6, r7}
 800283c:	4770      	bx	lr
 800283e:	07a4      	lsls	r4, r4, #30
 8002840:	d578      	bpl.n	8002934 <JTAG_TransferSlow+0x36c>
 8002842:	461d      	mov	r5, r3
 8002844:	261f      	movs	r6, #31
 8002846:	f44f 3780 	mov.w	r7, #65536	; 0x10000
 800284a:	6853      	ldr	r3, [r2, #4]
 800284c:	4c83      	ldr	r4, [pc, #524]	; (8002a5c <JTAG_TransferSlow+0x494>)
 800284e:	6027      	str	r7, [r4, #0]
 8002850:	9311      	str	r3, [sp, #68]	; 0x44
 8002852:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8002854:	3b01      	subs	r3, #1
 8002856:	9311      	str	r3, [sp, #68]	; 0x44
 8002858:	2b00      	cmp	r3, #0
 800285a:	d1fa      	bne.n	8002852 <JTAG_TransferSlow+0x28a>
 800285c:	f04f 0c01 	mov.w	ip, #1
 8002860:	4b7f      	ldr	r3, [pc, #508]	; (8002a60 <JTAG_TransferSlow+0x498>)
 8002862:	4f7e      	ldr	r7, [pc, #504]	; (8002a5c <JTAG_TransferSlow+0x494>)
 8002864:	681c      	ldr	r4, [r3, #0]
 8002866:	6853      	ldr	r3, [r2, #4]
 8002868:	f3c4 0480 	ubfx	r4, r4, #2, #1
 800286c:	f8c7 c000 	str.w	ip, [r7]
 8002870:	9310      	str	r3, [sp, #64]	; 0x40
 8002872:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002874:	3b01      	subs	r3, #1
 8002876:	9310      	str	r3, [sp, #64]	; 0x40
 8002878:	2b00      	cmp	r3, #0
 800287a:	d1fa      	bne.n	8002872 <JTAG_TransferSlow+0x2aa>
 800287c:	ea45 73c4 	orr.w	r3, r5, r4, lsl #31
 8002880:	3e01      	subs	r6, #1
 8002882:	ea4f 0553 	mov.w	r5, r3, lsr #1
 8002886:	d1de      	bne.n	8002846 <JTAG_TransferSlow+0x27e>
 8002888:	7d96      	ldrb	r6, [r2, #22]
 800288a:	7dd3      	ldrb	r3, [r2, #23]
 800288c:	1af6      	subs	r6, r6, r3
 800288e:	2e01      	cmp	r6, #1
 8002890:	f000 80e8 	beq.w	8002a64 <JTAG_TransferSlow+0x49c>
 8002894:	f44f 3780 	mov.w	r7, #65536	; 0x10000
 8002898:	6853      	ldr	r3, [r2, #4]
 800289a:	4c70      	ldr	r4, [pc, #448]	; (8002a5c <JTAG_TransferSlow+0x494>)
 800289c:	6027      	str	r7, [r4, #0]
 800289e:	9313      	str	r3, [sp, #76]	; 0x4c
 80028a0:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80028a2:	3b01      	subs	r3, #1
 80028a4:	9313      	str	r3, [sp, #76]	; 0x4c
 80028a6:	2b00      	cmp	r3, #0
 80028a8:	d1fa      	bne.n	80028a0 <JTAG_TransferSlow+0x2d8>
 80028aa:	2701      	movs	r7, #1
 80028ac:	4b6b      	ldr	r3, [pc, #428]	; (8002a5c <JTAG_TransferSlow+0x494>)
 80028ae:	4c6c      	ldr	r4, [pc, #432]	; (8002a60 <JTAG_TransferSlow+0x498>)
 80028b0:	6824      	ldr	r4, [r4, #0]
 80028b2:	601f      	str	r7, [r3, #0]
 80028b4:	6853      	ldr	r3, [r2, #4]
 80028b6:	f3c4 0480 	ubfx	r4, r4, #2, #1
 80028ba:	9312      	str	r3, [sp, #72]	; 0x48
 80028bc:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80028be:	3b01      	subs	r3, #1
 80028c0:	9312      	str	r3, [sp, #72]	; 0x48
 80028c2:	2b00      	cmp	r3, #0
 80028c4:	d1fa      	bne.n	80028bc <JTAG_TransferSlow+0x2f4>
 80028c6:	3e02      	subs	r6, #2
 80028c8:	d016      	beq.n	80028f8 <JTAG_TransferSlow+0x330>
 80028ca:	f44f 3380 	mov.w	r3, #65536	; 0x10000
 80028ce:	4f63      	ldr	r7, [pc, #396]	; (8002a5c <JTAG_TransferSlow+0x494>)
 80028d0:	603b      	str	r3, [r7, #0]
 80028d2:	6853      	ldr	r3, [r2, #4]
 80028d4:	9315      	str	r3, [sp, #84]	; 0x54
 80028d6:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80028d8:	3b01      	subs	r3, #1
 80028da:	9315      	str	r3, [sp, #84]	; 0x54
 80028dc:	2b00      	cmp	r3, #0
 80028de:	d1fa      	bne.n	80028d6 <JTAG_TransferSlow+0x30e>
 80028e0:	2301      	movs	r3, #1
 80028e2:	4f5e      	ldr	r7, [pc, #376]	; (8002a5c <JTAG_TransferSlow+0x494>)
 80028e4:	603b      	str	r3, [r7, #0]
 80028e6:	6853      	ldr	r3, [r2, #4]
 80028e8:	9314      	str	r3, [sp, #80]	; 0x50
 80028ea:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80028ec:	3b01      	subs	r3, #1
 80028ee:	9314      	str	r3, [sp, #80]	; 0x50
 80028f0:	2b00      	cmp	r3, #0
 80028f2:	d1fa      	bne.n	80028ea <JTAG_TransferSlow+0x322>
 80028f4:	3e01      	subs	r6, #1
 80028f6:	d1e8      	bne.n	80028ca <JTAG_TransferSlow+0x302>
 80028f8:	2602      	movs	r6, #2
 80028fa:	f44f 3780 	mov.w	r7, #65536	; 0x10000
 80028fe:	4b57      	ldr	r3, [pc, #348]	; (8002a5c <JTAG_TransferSlow+0x494>)
 8002900:	601e      	str	r6, [r3, #0]
 8002902:	601f      	str	r7, [r3, #0]
 8002904:	6853      	ldr	r3, [r2, #4]
 8002906:	9317      	str	r3, [sp, #92]	; 0x5c
 8002908:	9b17      	ldr	r3, [sp, #92]	; 0x5c
 800290a:	3b01      	subs	r3, #1
 800290c:	9317      	str	r3, [sp, #92]	; 0x5c
 800290e:	2b00      	cmp	r3, #0
 8002910:	d1fa      	bne.n	8002908 <JTAG_TransferSlow+0x340>
 8002912:	2701      	movs	r7, #1
 8002914:	6853      	ldr	r3, [r2, #4]
 8002916:	4e51      	ldr	r6, [pc, #324]	; (8002a5c <JTAG_TransferSlow+0x494>)
 8002918:	6037      	str	r7, [r6, #0]
 800291a:	9316      	str	r3, [sp, #88]	; 0x58
 800291c:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800291e:	3b01      	subs	r3, #1
 8002920:	9316      	str	r3, [sp, #88]	; 0x58
 8002922:	2b00      	cmp	r3, #0
 8002924:	d1fa      	bne.n	800291c <JTAG_TransferSlow+0x354>
 8002926:	2900      	cmp	r1, #0
 8002928:	f43f af2d 	beq.w	8002786 <JTAG_TransferSlow+0x1be>
 800292c:	ea45 74c4 	orr.w	r4, r5, r4, lsl #31
 8002930:	600c      	str	r4, [r1, #0]
 8002932:	e728      	b.n	8002786 <JTAG_TransferSlow+0x1be>
 8002934:	241f      	movs	r4, #31
 8002936:	6809      	ldr	r1, [r1, #0]
 8002938:	07cb      	lsls	r3, r1, #31
 800293a:	bf4c      	ite	mi
 800293c:	2508      	movmi	r5, #8
 800293e:	f44f 2500 	movpl.w	r5, #524288	; 0x80000
 8002942:	f44f 3680 	mov.w	r6, #65536	; 0x10000
 8002946:	4b45      	ldr	r3, [pc, #276]	; (8002a5c <JTAG_TransferSlow+0x494>)
 8002948:	601d      	str	r5, [r3, #0]
 800294a:	6853      	ldr	r3, [r2, #4]
 800294c:	4d43      	ldr	r5, [pc, #268]	; (8002a5c <JTAG_TransferSlow+0x494>)
 800294e:	602e      	str	r6, [r5, #0]
 8002950:	931b      	str	r3, [sp, #108]	; 0x6c
 8002952:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8002954:	3b01      	subs	r3, #1
 8002956:	931b      	str	r3, [sp, #108]	; 0x6c
 8002958:	2b00      	cmp	r3, #0
 800295a:	d1fa      	bne.n	8002952 <JTAG_TransferSlow+0x38a>
 800295c:	2601      	movs	r6, #1
 800295e:	6853      	ldr	r3, [r2, #4]
 8002960:	4d3e      	ldr	r5, [pc, #248]	; (8002a5c <JTAG_TransferSlow+0x494>)
 8002962:	602e      	str	r6, [r5, #0]
 8002964:	931a      	str	r3, [sp, #104]	; 0x68
 8002966:	9b1a      	ldr	r3, [sp, #104]	; 0x68
 8002968:	3b01      	subs	r3, #1
 800296a:	931a      	str	r3, [sp, #104]	; 0x68
 800296c:	2b00      	cmp	r3, #0
 800296e:	d1fa      	bne.n	8002966 <JTAG_TransferSlow+0x39e>
 8002970:	3c01      	subs	r4, #1
 8002972:	ea4f 0151 	mov.w	r1, r1, lsr #1
 8002976:	d1df      	bne.n	8002938 <JTAG_TransferSlow+0x370>
 8002978:	7d94      	ldrb	r4, [r2, #22]
 800297a:	7dd3      	ldrb	r3, [r2, #23]
 800297c:	f001 0101 	and.w	r1, r1, #1
 8002980:	1ae4      	subs	r4, r4, r3
 8002982:	2c01      	cmp	r4, #1
 8002984:	d04b      	beq.n	8002a1e <JTAG_TransferSlow+0x456>
 8002986:	2900      	cmp	r1, #0
 8002988:	f000 8088 	beq.w	8002a9c <JTAG_TransferSlow+0x4d4>
 800298c:	2108      	movs	r1, #8
 800298e:	4b33      	ldr	r3, [pc, #204]	; (8002a5c <JTAG_TransferSlow+0x494>)
 8002990:	6019      	str	r1, [r3, #0]
 8002992:	f44f 3580 	mov.w	r5, #65536	; 0x10000
 8002996:	6853      	ldr	r3, [r2, #4]
 8002998:	4930      	ldr	r1, [pc, #192]	; (8002a5c <JTAG_TransferSlow+0x494>)
 800299a:	600d      	str	r5, [r1, #0]
 800299c:	931d      	str	r3, [sp, #116]	; 0x74
 800299e:	9b1d      	ldr	r3, [sp, #116]	; 0x74
 80029a0:	3b01      	subs	r3, #1
 80029a2:	931d      	str	r3, [sp, #116]	; 0x74
 80029a4:	2b00      	cmp	r3, #0
 80029a6:	d1fa      	bne.n	800299e <JTAG_TransferSlow+0x3d6>
 80029a8:	2501      	movs	r5, #1
 80029aa:	6853      	ldr	r3, [r2, #4]
 80029ac:	492b      	ldr	r1, [pc, #172]	; (8002a5c <JTAG_TransferSlow+0x494>)
 80029ae:	600d      	str	r5, [r1, #0]
 80029b0:	931c      	str	r3, [sp, #112]	; 0x70
 80029b2:	9b1c      	ldr	r3, [sp, #112]	; 0x70
 80029b4:	3b01      	subs	r3, #1
 80029b6:	931c      	str	r3, [sp, #112]	; 0x70
 80029b8:	2b00      	cmp	r3, #0
 80029ba:	d1fa      	bne.n	80029b2 <JTAG_TransferSlow+0x3ea>
 80029bc:	1ea1      	subs	r1, r4, #2
 80029be:	d016      	beq.n	80029ee <JTAG_TransferSlow+0x426>
 80029c0:	f44f 3580 	mov.w	r5, #65536	; 0x10000
 80029c4:	6853      	ldr	r3, [r2, #4]
 80029c6:	4c25      	ldr	r4, [pc, #148]	; (8002a5c <JTAG_TransferSlow+0x494>)
 80029c8:	6025      	str	r5, [r4, #0]
 80029ca:	931f      	str	r3, [sp, #124]	; 0x7c
 80029cc:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
 80029ce:	3b01      	subs	r3, #1
 80029d0:	931f      	str	r3, [sp, #124]	; 0x7c
 80029d2:	2b00      	cmp	r3, #0
 80029d4:	d1fa      	bne.n	80029cc <JTAG_TransferSlow+0x404>
 80029d6:	2501      	movs	r5, #1
 80029d8:	6853      	ldr	r3, [r2, #4]
 80029da:	4c20      	ldr	r4, [pc, #128]	; (8002a5c <JTAG_TransferSlow+0x494>)
 80029dc:	6025      	str	r5, [r4, #0]
 80029de:	931e      	str	r3, [sp, #120]	; 0x78
 80029e0:	9b1e      	ldr	r3, [sp, #120]	; 0x78
 80029e2:	3b01      	subs	r3, #1
 80029e4:	931e      	str	r3, [sp, #120]	; 0x78
 80029e6:	2b00      	cmp	r3, #0
 80029e8:	d1fa      	bne.n	80029e0 <JTAG_TransferSlow+0x418>
 80029ea:	3901      	subs	r1, #1
 80029ec:	d1e8      	bne.n	80029c0 <JTAG_TransferSlow+0x3f8>
 80029ee:	2502      	movs	r5, #2
 80029f0:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 80029f4:	6851      	ldr	r1, [r2, #4]
 80029f6:	4b19      	ldr	r3, [pc, #100]	; (8002a5c <JTAG_TransferSlow+0x494>)
 80029f8:	601d      	str	r5, [r3, #0]
 80029fa:	601c      	str	r4, [r3, #0]
 80029fc:	9121      	str	r1, [sp, #132]	; 0x84
 80029fe:	9b21      	ldr	r3, [sp, #132]	; 0x84
 8002a00:	3b01      	subs	r3, #1
 8002a02:	9321      	str	r3, [sp, #132]	; 0x84
 8002a04:	2b00      	cmp	r3, #0
 8002a06:	d1fa      	bne.n	80029fe <JTAG_TransferSlow+0x436>
 8002a08:	2401      	movs	r4, #1
 8002a0a:	6853      	ldr	r3, [r2, #4]
 8002a0c:	4913      	ldr	r1, [pc, #76]	; (8002a5c <JTAG_TransferSlow+0x494>)
 8002a0e:	600c      	str	r4, [r1, #0]
 8002a10:	9320      	str	r3, [sp, #128]	; 0x80
 8002a12:	9b20      	ldr	r3, [sp, #128]	; 0x80
 8002a14:	3b01      	subs	r3, #1
 8002a16:	9320      	str	r3, [sp, #128]	; 0x80
 8002a18:	2b00      	cmp	r3, #0
 8002a1a:	d1fa      	bne.n	8002a12 <JTAG_TransferSlow+0x44a>
 8002a1c:	e6b3      	b.n	8002786 <JTAG_TransferSlow+0x1be>
 8002a1e:	2402      	movs	r4, #2
 8002a20:	4b0e      	ldr	r3, [pc, #56]	; (8002a5c <JTAG_TransferSlow+0x494>)
 8002a22:	601c      	str	r4, [r3, #0]
 8002a24:	2900      	cmp	r1, #0
 8002a26:	d13e      	bne.n	8002aa6 <JTAG_TransferSlow+0x4de>
 8002a28:	f44f 2100 	mov.w	r1, #524288	; 0x80000
 8002a2c:	6019      	str	r1, [r3, #0]
 8002a2e:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 8002a32:	6853      	ldr	r3, [r2, #4]
 8002a34:	4909      	ldr	r1, [pc, #36]	; (8002a5c <JTAG_TransferSlow+0x494>)
 8002a36:	600c      	str	r4, [r1, #0]
 8002a38:	9323      	str	r3, [sp, #140]	; 0x8c
 8002a3a:	9b23      	ldr	r3, [sp, #140]	; 0x8c
 8002a3c:	3b01      	subs	r3, #1
 8002a3e:	9323      	str	r3, [sp, #140]	; 0x8c
 8002a40:	2b00      	cmp	r3, #0
 8002a42:	d1fa      	bne.n	8002a3a <JTAG_TransferSlow+0x472>
 8002a44:	2401      	movs	r4, #1
 8002a46:	6853      	ldr	r3, [r2, #4]
 8002a48:	4904      	ldr	r1, [pc, #16]	; (8002a5c <JTAG_TransferSlow+0x494>)
 8002a4a:	600c      	str	r4, [r1, #0]
 8002a4c:	9322      	str	r3, [sp, #136]	; 0x88
 8002a4e:	9b22      	ldr	r3, [sp, #136]	; 0x88
 8002a50:	3b01      	subs	r3, #1
 8002a52:	9322      	str	r3, [sp, #136]	; 0x88
 8002a54:	2b00      	cmp	r3, #0
 8002a56:	d1fa      	bne.n	8002a4e <JTAG_TransferSlow+0x486>
 8002a58:	e695      	b.n	8002786 <JTAG_TransferSlow+0x1be>
 8002a5a:	bf00      	nop
 8002a5c:	40010c10 	.word	0x40010c10
 8002a60:	40010c08 	.word	0x40010c08
 8002a64:	2702      	movs	r7, #2
 8002a66:	f44f 3680 	mov.w	r6, #65536	; 0x10000
 8002a6a:	6854      	ldr	r4, [r2, #4]
 8002a6c:	4b0f      	ldr	r3, [pc, #60]	; (8002aac <JTAG_TransferSlow+0x4e4>)
 8002a6e:	601f      	str	r7, [r3, #0]
 8002a70:	601e      	str	r6, [r3, #0]
 8002a72:	9419      	str	r4, [sp, #100]	; 0x64
 8002a74:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8002a76:	3b01      	subs	r3, #1
 8002a78:	9319      	str	r3, [sp, #100]	; 0x64
 8002a7a:	2b00      	cmp	r3, #0
 8002a7c:	d1fa      	bne.n	8002a74 <JTAG_TransferSlow+0x4ac>
 8002a7e:	2301      	movs	r3, #1
 8002a80:	4c0b      	ldr	r4, [pc, #44]	; (8002ab0 <JTAG_TransferSlow+0x4e8>)
 8002a82:	6856      	ldr	r6, [r2, #4]
 8002a84:	6824      	ldr	r4, [r4, #0]
 8002a86:	4f09      	ldr	r7, [pc, #36]	; (8002aac <JTAG_TransferSlow+0x4e4>)
 8002a88:	f3c4 0480 	ubfx	r4, r4, #2, #1
 8002a8c:	603b      	str	r3, [r7, #0]
 8002a8e:	9618      	str	r6, [sp, #96]	; 0x60
 8002a90:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8002a92:	3b01      	subs	r3, #1
 8002a94:	9318      	str	r3, [sp, #96]	; 0x60
 8002a96:	2b00      	cmp	r3, #0
 8002a98:	d1fa      	bne.n	8002a90 <JTAG_TransferSlow+0x4c8>
 8002a9a:	e744      	b.n	8002926 <JTAG_TransferSlow+0x35e>
 8002a9c:	f44f 2100 	mov.w	r1, #524288	; 0x80000
 8002aa0:	4b02      	ldr	r3, [pc, #8]	; (8002aac <JTAG_TransferSlow+0x4e4>)
 8002aa2:	6019      	str	r1, [r3, #0]
 8002aa4:	e775      	b.n	8002992 <JTAG_TransferSlow+0x3ca>
 8002aa6:	2108      	movs	r1, #8
 8002aa8:	6019      	str	r1, [r3, #0]
 8002aaa:	e7c0      	b.n	8002a2e <JTAG_TransferSlow+0x466>
 8002aac:	40010c10 	.word	0x40010c10
 8002ab0:	40010c08 	.word	0x40010c08

08002ab4 <JTAG_ReadIDCode>:
 8002ab4:	2002      	movs	r0, #2
 8002ab6:	f44f 3180 	mov.w	r1, #65536	; 0x10000
 8002aba:	b470      	push	{r4, r5, r6}
 8002abc:	4c64      	ldr	r4, [pc, #400]	; (8002c50 <JTAG_ReadIDCode+0x19c>)
 8002abe:	4b65      	ldr	r3, [pc, #404]	; (8002c54 <JTAG_ReadIDCode+0x1a0>)
 8002ac0:	6862      	ldr	r2, [r4, #4]
 8002ac2:	b091      	sub	sp, #68	; 0x44
 8002ac4:	6018      	str	r0, [r3, #0]
 8002ac6:	6019      	str	r1, [r3, #0]
 8002ac8:	9205      	str	r2, [sp, #20]
 8002aca:	9b05      	ldr	r3, [sp, #20]
 8002acc:	3b01      	subs	r3, #1
 8002ace:	9305      	str	r3, [sp, #20]
 8002ad0:	2b00      	cmp	r3, #0
 8002ad2:	d1fa      	bne.n	8002aca <JTAG_ReadIDCode+0x16>
 8002ad4:	2101      	movs	r1, #1
 8002ad6:	6863      	ldr	r3, [r4, #4]
 8002ad8:	4a5e      	ldr	r2, [pc, #376]	; (8002c54 <JTAG_ReadIDCode+0x1a0>)
 8002ada:	6011      	str	r1, [r2, #0]
 8002adc:	9304      	str	r3, [sp, #16]
 8002ade:	9b04      	ldr	r3, [sp, #16]
 8002ae0:	3b01      	subs	r3, #1
 8002ae2:	9304      	str	r3, [sp, #16]
 8002ae4:	2b00      	cmp	r3, #0
 8002ae6:	d1fa      	bne.n	8002ade <JTAG_ReadIDCode+0x2a>
 8002ae8:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8002aec:	f44f 3180 	mov.w	r1, #65536	; 0x10000
 8002af0:	6862      	ldr	r2, [r4, #4]
 8002af2:	4b58      	ldr	r3, [pc, #352]	; (8002c54 <JTAG_ReadIDCode+0x1a0>)
 8002af4:	6018      	str	r0, [r3, #0]
 8002af6:	6019      	str	r1, [r3, #0]
 8002af8:	9203      	str	r2, [sp, #12]
 8002afa:	9b03      	ldr	r3, [sp, #12]
 8002afc:	3b01      	subs	r3, #1
 8002afe:	9303      	str	r3, [sp, #12]
 8002b00:	2b00      	cmp	r3, #0
 8002b02:	d1fa      	bne.n	8002afa <JTAG_ReadIDCode+0x46>
 8002b04:	2101      	movs	r1, #1
 8002b06:	6863      	ldr	r3, [r4, #4]
 8002b08:	4a52      	ldr	r2, [pc, #328]	; (8002c54 <JTAG_ReadIDCode+0x1a0>)
 8002b0a:	6011      	str	r1, [r2, #0]
 8002b0c:	9302      	str	r3, [sp, #8]
 8002b0e:	9b02      	ldr	r3, [sp, #8]
 8002b10:	3b01      	subs	r3, #1
 8002b12:	9302      	str	r3, [sp, #8]
 8002b14:	2b00      	cmp	r3, #0
 8002b16:	d1fa      	bne.n	8002b0e <JTAG_ReadIDCode+0x5a>
 8002b18:	f44f 3180 	mov.w	r1, #65536	; 0x10000
 8002b1c:	6863      	ldr	r3, [r4, #4]
 8002b1e:	4a4d      	ldr	r2, [pc, #308]	; (8002c54 <JTAG_ReadIDCode+0x1a0>)
 8002b20:	6011      	str	r1, [r2, #0]
 8002b22:	9301      	str	r3, [sp, #4]
 8002b24:	9b01      	ldr	r3, [sp, #4]
 8002b26:	3b01      	subs	r3, #1
 8002b28:	9301      	str	r3, [sp, #4]
 8002b2a:	2b00      	cmp	r3, #0
 8002b2c:	d1fa      	bne.n	8002b24 <JTAG_ReadIDCode+0x70>
 8002b2e:	2101      	movs	r1, #1
 8002b30:	6863      	ldr	r3, [r4, #4]
 8002b32:	4a48      	ldr	r2, [pc, #288]	; (8002c54 <JTAG_ReadIDCode+0x1a0>)
 8002b34:	6011      	str	r1, [r2, #0]
 8002b36:	9300      	str	r3, [sp, #0]
 8002b38:	9b00      	ldr	r3, [sp, #0]
 8002b3a:	3b01      	subs	r3, #1
 8002b3c:	9300      	str	r3, [sp, #0]
 8002b3e:	2b00      	cmp	r3, #0
 8002b40:	d1fa      	bne.n	8002b38 <JTAG_ReadIDCode+0x84>
 8002b42:	7de2      	ldrb	r2, [r4, #23]
 8002b44:	b1b2      	cbz	r2, 8002b74 <JTAG_ReadIDCode+0xc0>
 8002b46:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 8002b4a:	6863      	ldr	r3, [r4, #4]
 8002b4c:	4941      	ldr	r1, [pc, #260]	; (8002c54 <JTAG_ReadIDCode+0x1a0>)
 8002b4e:	6008      	str	r0, [r1, #0]
 8002b50:	9307      	str	r3, [sp, #28]
 8002b52:	9b07      	ldr	r3, [sp, #28]
 8002b54:	3b01      	subs	r3, #1
 8002b56:	9307      	str	r3, [sp, #28]
 8002b58:	2b00      	cmp	r3, #0
 8002b5a:	d1fa      	bne.n	8002b52 <JTAG_ReadIDCode+0x9e>
 8002b5c:	2001      	movs	r0, #1
 8002b5e:	6863      	ldr	r3, [r4, #4]
 8002b60:	493c      	ldr	r1, [pc, #240]	; (8002c54 <JTAG_ReadIDCode+0x1a0>)
 8002b62:	6008      	str	r0, [r1, #0]
 8002b64:	9306      	str	r3, [sp, #24]
 8002b66:	9b06      	ldr	r3, [sp, #24]
 8002b68:	3b01      	subs	r3, #1
 8002b6a:	9306      	str	r3, [sp, #24]
 8002b6c:	2b00      	cmp	r3, #0
 8002b6e:	d1fa      	bne.n	8002b66 <JTAG_ReadIDCode+0xb2>
 8002b70:	3a01      	subs	r2, #1
 8002b72:	d1e8      	bne.n	8002b46 <JTAG_ReadIDCode+0x92>
 8002b74:	211f      	movs	r1, #31
 8002b76:	2000      	movs	r0, #0
 8002b78:	f44f 3580 	mov.w	r5, #65536	; 0x10000
 8002b7c:	6863      	ldr	r3, [r4, #4]
 8002b7e:	4a35      	ldr	r2, [pc, #212]	; (8002c54 <JTAG_ReadIDCode+0x1a0>)
 8002b80:	6015      	str	r5, [r2, #0]
 8002b82:	9309      	str	r3, [sp, #36]	; 0x24
 8002b84:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002b86:	3b01      	subs	r3, #1
 8002b88:	9309      	str	r3, [sp, #36]	; 0x24
 8002b8a:	2b00      	cmp	r3, #0
 8002b8c:	d1fa      	bne.n	8002b84 <JTAG_ReadIDCode+0xd0>
 8002b8e:	2601      	movs	r6, #1
 8002b90:	4b31      	ldr	r3, [pc, #196]	; (8002c58 <JTAG_ReadIDCode+0x1a4>)
 8002b92:	4d30      	ldr	r5, [pc, #192]	; (8002c54 <JTAG_ReadIDCode+0x1a0>)
 8002b94:	681a      	ldr	r2, [r3, #0]
 8002b96:	6863      	ldr	r3, [r4, #4]
 8002b98:	f3c2 0280 	ubfx	r2, r2, #2, #1
 8002b9c:	602e      	str	r6, [r5, #0]
 8002b9e:	9308      	str	r3, [sp, #32]
 8002ba0:	9b08      	ldr	r3, [sp, #32]
 8002ba2:	3b01      	subs	r3, #1
 8002ba4:	9308      	str	r3, [sp, #32]
 8002ba6:	2b00      	cmp	r3, #0
 8002ba8:	d1fa      	bne.n	8002ba0 <JTAG_ReadIDCode+0xec>
 8002baa:	ea40 73c2 	orr.w	r3, r0, r2, lsl #31
 8002bae:	3901      	subs	r1, #1
 8002bb0:	ea4f 0053 	mov.w	r0, r3, lsr #1
 8002bb4:	d1e0      	bne.n	8002b78 <JTAG_ReadIDCode+0xc4>
 8002bb6:	2502      	movs	r5, #2
 8002bb8:	f44f 3180 	mov.w	r1, #65536	; 0x10000
 8002bbc:	6862      	ldr	r2, [r4, #4]
 8002bbe:	4b25      	ldr	r3, [pc, #148]	; (8002c54 <JTAG_ReadIDCode+0x1a0>)
 8002bc0:	601d      	str	r5, [r3, #0]
 8002bc2:	6019      	str	r1, [r3, #0]
 8002bc4:	920f      	str	r2, [sp, #60]	; 0x3c
 8002bc6:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8002bc8:	3b01      	subs	r3, #1
 8002bca:	930f      	str	r3, [sp, #60]	; 0x3c
 8002bcc:	2b00      	cmp	r3, #0
 8002bce:	d1fa      	bne.n	8002bc6 <JTAG_ReadIDCode+0x112>
 8002bd0:	2501      	movs	r5, #1
 8002bd2:	4b21      	ldr	r3, [pc, #132]	; (8002c58 <JTAG_ReadIDCode+0x1a4>)
 8002bd4:	491f      	ldr	r1, [pc, #124]	; (8002c54 <JTAG_ReadIDCode+0x1a0>)
 8002bd6:	681a      	ldr	r2, [r3, #0]
 8002bd8:	6863      	ldr	r3, [r4, #4]
 8002bda:	f3c2 0280 	ubfx	r2, r2, #2, #1
 8002bde:	600d      	str	r5, [r1, #0]
 8002be0:	930e      	str	r3, [sp, #56]	; 0x38
 8002be2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002be4:	3b01      	subs	r3, #1
 8002be6:	930e      	str	r3, [sp, #56]	; 0x38
 8002be8:	2b00      	cmp	r3, #0
 8002bea:	d1fa      	bne.n	8002be2 <JTAG_ReadIDCode+0x12e>
 8002bec:	f44f 3580 	mov.w	r5, #65536	; 0x10000
 8002bf0:	6863      	ldr	r3, [r4, #4]
 8002bf2:	4918      	ldr	r1, [pc, #96]	; (8002c54 <JTAG_ReadIDCode+0x1a0>)
 8002bf4:	ea40 70c2 	orr.w	r0, r0, r2, lsl #31
 8002bf8:	600d      	str	r5, [r1, #0]
 8002bfa:	930d      	str	r3, [sp, #52]	; 0x34
 8002bfc:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8002bfe:	3b01      	subs	r3, #1
 8002c00:	930d      	str	r3, [sp, #52]	; 0x34
 8002c02:	2b00      	cmp	r3, #0
 8002c04:	d1fa      	bne.n	8002bfc <JTAG_ReadIDCode+0x148>
 8002c06:	2101      	movs	r1, #1
 8002c08:	6863      	ldr	r3, [r4, #4]
 8002c0a:	4a12      	ldr	r2, [pc, #72]	; (8002c54 <JTAG_ReadIDCode+0x1a0>)
 8002c0c:	6011      	str	r1, [r2, #0]
 8002c0e:	930c      	str	r3, [sp, #48]	; 0x30
 8002c10:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002c12:	3b01      	subs	r3, #1
 8002c14:	930c      	str	r3, [sp, #48]	; 0x30
 8002c16:	2b00      	cmp	r3, #0
 8002c18:	d1fa      	bne.n	8002c10 <JTAG_ReadIDCode+0x15c>
 8002c1a:	f44f 3500 	mov.w	r5, #131072	; 0x20000
 8002c1e:	f44f 3180 	mov.w	r1, #65536	; 0x10000
 8002c22:	6862      	ldr	r2, [r4, #4]
 8002c24:	4b0b      	ldr	r3, [pc, #44]	; (8002c54 <JTAG_ReadIDCode+0x1a0>)
 8002c26:	601d      	str	r5, [r3, #0]
 8002c28:	6019      	str	r1, [r3, #0]
 8002c2a:	920b      	str	r2, [sp, #44]	; 0x2c
 8002c2c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002c2e:	3b01      	subs	r3, #1
 8002c30:	930b      	str	r3, [sp, #44]	; 0x2c
 8002c32:	2b00      	cmp	r3, #0
 8002c34:	d1fa      	bne.n	8002c2c <JTAG_ReadIDCode+0x178>
 8002c36:	2101      	movs	r1, #1
 8002c38:	6863      	ldr	r3, [r4, #4]
 8002c3a:	4a06      	ldr	r2, [pc, #24]	; (8002c54 <JTAG_ReadIDCode+0x1a0>)
 8002c3c:	6011      	str	r1, [r2, #0]
 8002c3e:	930a      	str	r3, [sp, #40]	; 0x28
 8002c40:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002c42:	3b01      	subs	r3, #1
 8002c44:	930a      	str	r3, [sp, #40]	; 0x28
 8002c46:	2b00      	cmp	r3, #0
 8002c48:	d1fa      	bne.n	8002c40 <JTAG_ReadIDCode+0x18c>
 8002c4a:	b011      	add	sp, #68	; 0x44
 8002c4c:	bc70      	pop	{r4, r5, r6}
 8002c4e:	4770      	bx	lr
 8002c50:	200004a0 	.word	0x200004a0
 8002c54:	40010c10 	.word	0x40010c10
 8002c58:	40010c08 	.word	0x40010c08

08002c5c <JTAG_WriteAbort>:
 8002c5c:	b430      	push	{r4, r5}
 8002c5e:	2502      	movs	r5, #2
 8002c60:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 8002c64:	4a91      	ldr	r2, [pc, #580]	; (8002eac <JTAG_WriteAbort+0x250>)
 8002c66:	4b92      	ldr	r3, [pc, #584]	; (8002eb0 <JTAG_WriteAbort+0x254>)
 8002c68:	6851      	ldr	r1, [r2, #4]
 8002c6a:	b09c      	sub	sp, #112	; 0x70
 8002c6c:	601d      	str	r5, [r3, #0]
 8002c6e:	601c      	str	r4, [r3, #0]
 8002c70:	9105      	str	r1, [sp, #20]
 8002c72:	9b05      	ldr	r3, [sp, #20]
 8002c74:	3b01      	subs	r3, #1
 8002c76:	9305      	str	r3, [sp, #20]
 8002c78:	2b00      	cmp	r3, #0
 8002c7a:	d1fa      	bne.n	8002c72 <JTAG_WriteAbort+0x16>
 8002c7c:	2401      	movs	r4, #1
 8002c7e:	6853      	ldr	r3, [r2, #4]
 8002c80:	498b      	ldr	r1, [pc, #556]	; (8002eb0 <JTAG_WriteAbort+0x254>)
 8002c82:	600c      	str	r4, [r1, #0]
 8002c84:	9304      	str	r3, [sp, #16]
 8002c86:	9b04      	ldr	r3, [sp, #16]
 8002c88:	3b01      	subs	r3, #1
 8002c8a:	9304      	str	r3, [sp, #16]
 8002c8c:	2b00      	cmp	r3, #0
 8002c8e:	d1fa      	bne.n	8002c86 <JTAG_WriteAbort+0x2a>
 8002c90:	f44f 3500 	mov.w	r5, #131072	; 0x20000
 8002c94:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 8002c98:	6851      	ldr	r1, [r2, #4]
 8002c9a:	4b85      	ldr	r3, [pc, #532]	; (8002eb0 <JTAG_WriteAbort+0x254>)
 8002c9c:	601d      	str	r5, [r3, #0]
 8002c9e:	601c      	str	r4, [r3, #0]
 8002ca0:	9103      	str	r1, [sp, #12]
 8002ca2:	9b03      	ldr	r3, [sp, #12]
 8002ca4:	3b01      	subs	r3, #1
 8002ca6:	9303      	str	r3, [sp, #12]
 8002ca8:	2b00      	cmp	r3, #0
 8002caa:	d1fa      	bne.n	8002ca2 <JTAG_WriteAbort+0x46>
 8002cac:	2401      	movs	r4, #1
 8002cae:	6853      	ldr	r3, [r2, #4]
 8002cb0:	497f      	ldr	r1, [pc, #508]	; (8002eb0 <JTAG_WriteAbort+0x254>)
 8002cb2:	600c      	str	r4, [r1, #0]
 8002cb4:	9302      	str	r3, [sp, #8]
 8002cb6:	9b02      	ldr	r3, [sp, #8]
 8002cb8:	3b01      	subs	r3, #1
 8002cba:	9302      	str	r3, [sp, #8]
 8002cbc:	2b00      	cmp	r3, #0
 8002cbe:	d1fa      	bne.n	8002cb6 <JTAG_WriteAbort+0x5a>
 8002cc0:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 8002cc4:	6853      	ldr	r3, [r2, #4]
 8002cc6:	497a      	ldr	r1, [pc, #488]	; (8002eb0 <JTAG_WriteAbort+0x254>)
 8002cc8:	600c      	str	r4, [r1, #0]
 8002cca:	9301      	str	r3, [sp, #4]
 8002ccc:	9b01      	ldr	r3, [sp, #4]
 8002cce:	3b01      	subs	r3, #1
 8002cd0:	9301      	str	r3, [sp, #4]
 8002cd2:	2b00      	cmp	r3, #0
 8002cd4:	d1fa      	bne.n	8002ccc <JTAG_WriteAbort+0x70>
 8002cd6:	2401      	movs	r4, #1
 8002cd8:	6853      	ldr	r3, [r2, #4]
 8002cda:	4975      	ldr	r1, [pc, #468]	; (8002eb0 <JTAG_WriteAbort+0x254>)
 8002cdc:	600c      	str	r4, [r1, #0]
 8002cde:	9300      	str	r3, [sp, #0]
 8002ce0:	9b00      	ldr	r3, [sp, #0]
 8002ce2:	3b01      	subs	r3, #1
 8002ce4:	9300      	str	r3, [sp, #0]
 8002ce6:	2b00      	cmp	r3, #0
 8002ce8:	d1fa      	bne.n	8002ce0 <JTAG_WriteAbort+0x84>
 8002cea:	7dd1      	ldrb	r1, [r2, #23]
 8002cec:	b1b1      	cbz	r1, 8002d1c <JTAG_WriteAbort+0xc0>
 8002cee:	f44f 3580 	mov.w	r5, #65536	; 0x10000
 8002cf2:	6853      	ldr	r3, [r2, #4]
 8002cf4:	4c6e      	ldr	r4, [pc, #440]	; (8002eb0 <JTAG_WriteAbort+0x254>)
 8002cf6:	6025      	str	r5, [r4, #0]
 8002cf8:	9307      	str	r3, [sp, #28]
 8002cfa:	9b07      	ldr	r3, [sp, #28]
 8002cfc:	3b01      	subs	r3, #1
 8002cfe:	9307      	str	r3, [sp, #28]
 8002d00:	2b00      	cmp	r3, #0
 8002d02:	d1fa      	bne.n	8002cfa <JTAG_WriteAbort+0x9e>
 8002d04:	2501      	movs	r5, #1
 8002d06:	6853      	ldr	r3, [r2, #4]
 8002d08:	4c69      	ldr	r4, [pc, #420]	; (8002eb0 <JTAG_WriteAbort+0x254>)
 8002d0a:	6025      	str	r5, [r4, #0]
 8002d0c:	9306      	str	r3, [sp, #24]
 8002d0e:	9b06      	ldr	r3, [sp, #24]
 8002d10:	3b01      	subs	r3, #1
 8002d12:	9306      	str	r3, [sp, #24]
 8002d14:	2b00      	cmp	r3, #0
 8002d16:	d1fa      	bne.n	8002d0e <JTAG_WriteAbort+0xb2>
 8002d18:	3901      	subs	r1, #1
 8002d1a:	d1e8      	bne.n	8002cee <JTAG_WriteAbort+0x92>
 8002d1c:	f44f 2500 	mov.w	r5, #524288	; 0x80000
 8002d20:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 8002d24:	6851      	ldr	r1, [r2, #4]
 8002d26:	4b62      	ldr	r3, [pc, #392]	; (8002eb0 <JTAG_WriteAbort+0x254>)
 8002d28:	601d      	str	r5, [r3, #0]
 8002d2a:	601c      	str	r4, [r3, #0]
 8002d2c:	910d      	str	r1, [sp, #52]	; 0x34
 8002d2e:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8002d30:	3b01      	subs	r3, #1
 8002d32:	930d      	str	r3, [sp, #52]	; 0x34
 8002d34:	2b00      	cmp	r3, #0
 8002d36:	d1fa      	bne.n	8002d2e <JTAG_WriteAbort+0xd2>
 8002d38:	2401      	movs	r4, #1
 8002d3a:	6853      	ldr	r3, [r2, #4]
 8002d3c:	495c      	ldr	r1, [pc, #368]	; (8002eb0 <JTAG_WriteAbort+0x254>)
 8002d3e:	600c      	str	r4, [r1, #0]
 8002d40:	930c      	str	r3, [sp, #48]	; 0x30
 8002d42:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002d44:	3b01      	subs	r3, #1
 8002d46:	930c      	str	r3, [sp, #48]	; 0x30
 8002d48:	2b00      	cmp	r3, #0
 8002d4a:	d1fa      	bne.n	8002d42 <JTAG_WriteAbort+0xe6>
 8002d4c:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 8002d50:	6853      	ldr	r3, [r2, #4]
 8002d52:	4957      	ldr	r1, [pc, #348]	; (8002eb0 <JTAG_WriteAbort+0x254>)
 8002d54:	600c      	str	r4, [r1, #0]
 8002d56:	930b      	str	r3, [sp, #44]	; 0x2c
 8002d58:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002d5a:	3b01      	subs	r3, #1
 8002d5c:	930b      	str	r3, [sp, #44]	; 0x2c
 8002d5e:	2b00      	cmp	r3, #0
 8002d60:	d1fa      	bne.n	8002d58 <JTAG_WriteAbort+0xfc>
 8002d62:	2401      	movs	r4, #1
 8002d64:	6853      	ldr	r3, [r2, #4]
 8002d66:	4952      	ldr	r1, [pc, #328]	; (8002eb0 <JTAG_WriteAbort+0x254>)
 8002d68:	600c      	str	r4, [r1, #0]
 8002d6a:	930a      	str	r3, [sp, #40]	; 0x28
 8002d6c:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002d6e:	3b01      	subs	r3, #1
 8002d70:	930a      	str	r3, [sp, #40]	; 0x28
 8002d72:	2b00      	cmp	r3, #0
 8002d74:	d1fa      	bne.n	8002d6c <JTAG_WriteAbort+0x110>
 8002d76:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 8002d7a:	6853      	ldr	r3, [r2, #4]
 8002d7c:	494c      	ldr	r1, [pc, #304]	; (8002eb0 <JTAG_WriteAbort+0x254>)
 8002d7e:	600c      	str	r4, [r1, #0]
 8002d80:	9309      	str	r3, [sp, #36]	; 0x24
 8002d82:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002d84:	3b01      	subs	r3, #1
 8002d86:	9309      	str	r3, [sp, #36]	; 0x24
 8002d88:	2b00      	cmp	r3, #0
 8002d8a:	d1fa      	bne.n	8002d82 <JTAG_WriteAbort+0x126>
 8002d8c:	2401      	movs	r4, #1
 8002d8e:	6853      	ldr	r3, [r2, #4]
 8002d90:	4947      	ldr	r1, [pc, #284]	; (8002eb0 <JTAG_WriteAbort+0x254>)
 8002d92:	600c      	str	r4, [r1, #0]
 8002d94:	9308      	str	r3, [sp, #32]
 8002d96:	9b08      	ldr	r3, [sp, #32]
 8002d98:	3b01      	subs	r3, #1
 8002d9a:	9308      	str	r3, [sp, #32]
 8002d9c:	2b00      	cmp	r3, #0
 8002d9e:	d1fa      	bne.n	8002d96 <JTAG_WriteAbort+0x13a>
 8002da0:	211f      	movs	r1, #31
 8002da2:	07c3      	lsls	r3, r0, #31
 8002da4:	bf4c      	ite	mi
 8002da6:	2408      	movmi	r4, #8
 8002da8:	f44f 2400 	movpl.w	r4, #524288	; 0x80000
 8002dac:	f44f 3580 	mov.w	r5, #65536	; 0x10000
 8002db0:	4b3f      	ldr	r3, [pc, #252]	; (8002eb0 <JTAG_WriteAbort+0x254>)
 8002db2:	601c      	str	r4, [r3, #0]
 8002db4:	6853      	ldr	r3, [r2, #4]
 8002db6:	4c3e      	ldr	r4, [pc, #248]	; (8002eb0 <JTAG_WriteAbort+0x254>)
 8002db8:	6025      	str	r5, [r4, #0]
 8002dba:	930f      	str	r3, [sp, #60]	; 0x3c
 8002dbc:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8002dbe:	3b01      	subs	r3, #1
 8002dc0:	930f      	str	r3, [sp, #60]	; 0x3c
 8002dc2:	2b00      	cmp	r3, #0
 8002dc4:	d1fa      	bne.n	8002dbc <JTAG_WriteAbort+0x160>
 8002dc6:	2501      	movs	r5, #1
 8002dc8:	6853      	ldr	r3, [r2, #4]
 8002dca:	4c39      	ldr	r4, [pc, #228]	; (8002eb0 <JTAG_WriteAbort+0x254>)
 8002dcc:	6025      	str	r5, [r4, #0]
 8002dce:	930e      	str	r3, [sp, #56]	; 0x38
 8002dd0:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002dd2:	3b01      	subs	r3, #1
 8002dd4:	930e      	str	r3, [sp, #56]	; 0x38
 8002dd6:	2b00      	cmp	r3, #0
 8002dd8:	d1fa      	bne.n	8002dd0 <JTAG_WriteAbort+0x174>
 8002dda:	3901      	subs	r1, #1
 8002ddc:	ea4f 0050 	mov.w	r0, r0, lsr #1
 8002de0:	d1df      	bne.n	8002da2 <JTAG_WriteAbort+0x146>
 8002de2:	7d91      	ldrb	r1, [r2, #22]
 8002de4:	7dd3      	ldrb	r3, [r2, #23]
 8002de6:	f000 0001 	and.w	r0, r0, #1
 8002dea:	1ac9      	subs	r1, r1, r3
 8002dec:	2901      	cmp	r1, #1
 8002dee:	f000 8088 	beq.w	8002f02 <JTAG_WriteAbort+0x2a6>
 8002df2:	2800      	cmp	r0, #0
 8002df4:	f040 8081 	bne.w	8002efa <JTAG_WriteAbort+0x29e>
 8002df8:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8002dfc:	4b2c      	ldr	r3, [pc, #176]	; (8002eb0 <JTAG_WriteAbort+0x254>)
 8002dfe:	6018      	str	r0, [r3, #0]
 8002e00:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 8002e04:	6853      	ldr	r3, [r2, #4]
 8002e06:	482a      	ldr	r0, [pc, #168]	; (8002eb0 <JTAG_WriteAbort+0x254>)
 8002e08:	6004      	str	r4, [r0, #0]
 8002e0a:	9311      	str	r3, [sp, #68]	; 0x44
 8002e0c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8002e0e:	3b01      	subs	r3, #1
 8002e10:	9311      	str	r3, [sp, #68]	; 0x44
 8002e12:	2b00      	cmp	r3, #0
 8002e14:	d1fa      	bne.n	8002e0c <JTAG_WriteAbort+0x1b0>
 8002e16:	2401      	movs	r4, #1
 8002e18:	6853      	ldr	r3, [r2, #4]
 8002e1a:	4825      	ldr	r0, [pc, #148]	; (8002eb0 <JTAG_WriteAbort+0x254>)
 8002e1c:	6004      	str	r4, [r0, #0]
 8002e1e:	9310      	str	r3, [sp, #64]	; 0x40
 8002e20:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002e22:	3b01      	subs	r3, #1
 8002e24:	9310      	str	r3, [sp, #64]	; 0x40
 8002e26:	2b00      	cmp	r3, #0
 8002e28:	d1fa      	bne.n	8002e20 <JTAG_WriteAbort+0x1c4>
 8002e2a:	3902      	subs	r1, #2
 8002e2c:	d016      	beq.n	8002e5c <JTAG_WriteAbort+0x200>
 8002e2e:	f44f 3480 	mov.w	r4, #65536	; 0x10000
 8002e32:	6853      	ldr	r3, [r2, #4]
 8002e34:	481e      	ldr	r0, [pc, #120]	; (8002eb0 <JTAG_WriteAbort+0x254>)
 8002e36:	6004      	str	r4, [r0, #0]
 8002e38:	9313      	str	r3, [sp, #76]	; 0x4c
 8002e3a:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8002e3c:	3b01      	subs	r3, #1
 8002e3e:	9313      	str	r3, [sp, #76]	; 0x4c
 8002e40:	2b00      	cmp	r3, #0
 8002e42:	d1fa      	bne.n	8002e3a <JTAG_WriteAbort+0x1de>
 8002e44:	2401      	movs	r4, #1
 8002e46:	6853      	ldr	r3, [r2, #4]
 8002e48:	4819      	ldr	r0, [pc, #100]	; (8002eb0 <JTAG_WriteAbort+0x254>)
 8002e4a:	6004      	str	r4, [r0, #0]
 8002e4c:	9312      	str	r3, [sp, #72]	; 0x48
 8002e4e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8002e50:	3b01      	subs	r3, #1
 8002e52:	9312      	str	r3, [sp, #72]	; 0x48
 8002e54:	2b00      	cmp	r3, #0
 8002e56:	d1fa      	bne.n	8002e4e <JTAG_WriteAbort+0x1f2>
 8002e58:	3901      	subs	r1, #1
 8002e5a:	d1e8      	bne.n	8002e2e <JTAG_WriteAbort+0x1d2>
 8002e5c:	2402      	movs	r4, #2
 8002e5e:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 8002e62:	6851      	ldr	r1, [r2, #4]
 8002e64:	4b12      	ldr	r3, [pc, #72]	; (8002eb0 <JTAG_WriteAbort+0x254>)
 8002e66:	601c      	str	r4, [r3, #0]
 8002e68:	6018      	str	r0, [r3, #0]
 8002e6a:	9115      	str	r1, [sp, #84]	; 0x54
 8002e6c:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8002e6e:	3b01      	subs	r3, #1
 8002e70:	9315      	str	r3, [sp, #84]	; 0x54
 8002e72:	2b00      	cmp	r3, #0
 8002e74:	d1fa      	bne.n	8002e6c <JTAG_WriteAbort+0x210>
 8002e76:	2001      	movs	r0, #1
 8002e78:	6853      	ldr	r3, [r2, #4]
 8002e7a:	490d      	ldr	r1, [pc, #52]	; (8002eb0 <JTAG_WriteAbort+0x254>)
 8002e7c:	6008      	str	r0, [r1, #0]
 8002e7e:	9314      	str	r3, [sp, #80]	; 0x50
 8002e80:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8002e82:	3b01      	subs	r3, #1
 8002e84:	9314      	str	r3, [sp, #80]	; 0x50
 8002e86:	2b00      	cmp	r3, #0
 8002e88:	d1fa      	bne.n	8002e80 <JTAG_WriteAbort+0x224>
 8002e8a:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 8002e8e:	6853      	ldr	r3, [r2, #4]
 8002e90:	4907      	ldr	r1, [pc, #28]	; (8002eb0 <JTAG_WriteAbort+0x254>)
 8002e92:	6008      	str	r0, [r1, #0]
 8002e94:	931b      	str	r3, [sp, #108]	; 0x6c
 8002e96:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8002e98:	3b01      	subs	r3, #1
 8002e9a:	931b      	str	r3, [sp, #108]	; 0x6c
 8002e9c:	2b00      	cmp	r3, #0
 8002e9e:	d1fa      	bne.n	8002e96 <JTAG_WriteAbort+0x23a>
 8002ea0:	2001      	movs	r0, #1
 8002ea2:	6853      	ldr	r3, [r2, #4]
 8002ea4:	4902      	ldr	r1, [pc, #8]	; (8002eb0 <JTAG_WriteAbort+0x254>)
 8002ea6:	6008      	str	r0, [r1, #0]
 8002ea8:	931a      	str	r3, [sp, #104]	; 0x68
 8002eaa:	e003      	b.n	8002eb4 <JTAG_WriteAbort+0x258>
 8002eac:	200004a0 	.word	0x200004a0
 8002eb0:	40010c10 	.word	0x40010c10
 8002eb4:	9b1a      	ldr	r3, [sp, #104]	; 0x68
 8002eb6:	3b01      	subs	r3, #1
 8002eb8:	931a      	str	r3, [sp, #104]	; 0x68
 8002eba:	2b00      	cmp	r3, #0
 8002ebc:	d1fa      	bne.n	8002eb4 <JTAG_WriteAbort+0x258>
 8002ebe:	f44f 3400 	mov.w	r4, #131072	; 0x20000
 8002ec2:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 8002ec6:	6851      	ldr	r1, [r2, #4]
 8002ec8:	4b1e      	ldr	r3, [pc, #120]	; (8002f44 <JTAG_WriteAbort+0x2e8>)
 8002eca:	601c      	str	r4, [r3, #0]
 8002ecc:	6018      	str	r0, [r3, #0]
 8002ece:	9119      	str	r1, [sp, #100]	; 0x64
 8002ed0:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8002ed2:	3b01      	subs	r3, #1
 8002ed4:	9319      	str	r3, [sp, #100]	; 0x64
 8002ed6:	2b00      	cmp	r3, #0
 8002ed8:	d1fa      	bne.n	8002ed0 <JTAG_WriteAbort+0x274>
 8002eda:	2101      	movs	r1, #1
 8002edc:	6853      	ldr	r3, [r2, #4]
 8002ede:	4a19      	ldr	r2, [pc, #100]	; (8002f44 <JTAG_WriteAbort+0x2e8>)
 8002ee0:	6011      	str	r1, [r2, #0]
 8002ee2:	9318      	str	r3, [sp, #96]	; 0x60
 8002ee4:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8002ee6:	3b01      	subs	r3, #1
 8002ee8:	9318      	str	r3, [sp, #96]	; 0x60
 8002eea:	2b00      	cmp	r3, #0
 8002eec:	d1fa      	bne.n	8002ee4 <JTAG_WriteAbort+0x288>
 8002eee:	2208      	movs	r2, #8
 8002ef0:	4b14      	ldr	r3, [pc, #80]	; (8002f44 <JTAG_WriteAbort+0x2e8>)
 8002ef2:	601a      	str	r2, [r3, #0]
 8002ef4:	b01c      	add	sp, #112	; 0x70
 8002ef6:	bc30      	pop	{r4, r5}
 8002ef8:	4770      	bx	lr
 8002efa:	2008      	movs	r0, #8
 8002efc:	4b11      	ldr	r3, [pc, #68]	; (8002f44 <JTAG_WriteAbort+0x2e8>)
 8002efe:	6018      	str	r0, [r3, #0]
 8002f00:	e77e      	b.n	8002e00 <JTAG_WriteAbort+0x1a4>
 8002f02:	2102      	movs	r1, #2
 8002f04:	4b0f      	ldr	r3, [pc, #60]	; (8002f44 <JTAG_WriteAbort+0x2e8>)
 8002f06:	6019      	str	r1, [r3, #0]
 8002f08:	b9c0      	cbnz	r0, 8002f3c <JTAG_WriteAbort+0x2e0>
 8002f0a:	f44f 2100 	mov.w	r1, #524288	; 0x80000
 8002f0e:	6019      	str	r1, [r3, #0]
 8002f10:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 8002f14:	6853      	ldr	r3, [r2, #4]
 8002f16:	490b      	ldr	r1, [pc, #44]	; (8002f44 <JTAG_WriteAbort+0x2e8>)
 8002f18:	6008      	str	r0, [r1, #0]
 8002f1a:	9317      	str	r3, [sp, #92]	; 0x5c
 8002f1c:	9b17      	ldr	r3, [sp, #92]	; 0x5c
 8002f1e:	3b01      	subs	r3, #1
 8002f20:	9317      	str	r3, [sp, #92]	; 0x5c
 8002f22:	2b00      	cmp	r3, #0
 8002f24:	d1fa      	bne.n	8002f1c <JTAG_WriteAbort+0x2c0>
 8002f26:	2001      	movs	r0, #1
 8002f28:	6853      	ldr	r3, [r2, #4]
 8002f2a:	4906      	ldr	r1, [pc, #24]	; (8002f44 <JTAG_WriteAbort+0x2e8>)
 8002f2c:	6008      	str	r0, [r1, #0]
 8002f2e:	9316      	str	r3, [sp, #88]	; 0x58
 8002f30:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8002f32:	3b01      	subs	r3, #1
 8002f34:	9316      	str	r3, [sp, #88]	; 0x58
 8002f36:	2b00      	cmp	r3, #0
 8002f38:	d1fa      	bne.n	8002f30 <JTAG_WriteAbort+0x2d4>
 8002f3a:	e7a6      	b.n	8002e8a <JTAG_WriteAbort+0x22e>
 8002f3c:	2108      	movs	r1, #8
 8002f3e:	6019      	str	r1, [r3, #0]
 8002f40:	e7e6      	b.n	8002f10 <JTAG_WriteAbort+0x2b4>
 8002f42:	bf00      	nop
 8002f44:	40010c10 	.word	0x40010c10

08002f48 <JTAG_IR>:
 8002f48:	4b03      	ldr	r3, [pc, #12]	; (8002f58 <JTAG_IR+0x10>)
 8002f4a:	785b      	ldrb	r3, [r3, #1]
 8002f4c:	b10b      	cbz	r3, 8002f52 <JTAG_IR+0xa>
 8002f4e:	f7ff b835 	b.w	8001fbc <JTAG_IR_Fast>
 8002f52:	f7ff b9e3 	b.w	800231c <JTAG_IR_Slow>
 8002f56:	bf00      	nop
 8002f58:	200004a0 	.word	0x200004a0

08002f5c <JTAG_Transfer>:
 8002f5c:	4b03      	ldr	r3, [pc, #12]	; (8002f6c <JTAG_Transfer+0x10>)
 8002f5e:	785b      	ldrb	r3, [r3, #1]
 8002f60:	b10b      	cbz	r3, 8002f66 <JTAG_Transfer+0xa>
 8002f62:	f7ff b8bf 	b.w	80020e4 <JTAG_TransferFast>
 8002f66:	f7ff bb2f 	b.w	80025c8 <JTAG_TransferSlow>
 8002f6a:	bf00      	nop
 8002f6c:	200004a0 	.word	0x200004a0

08002f70 <usb_to_uart>:
 8002f70:	b500      	push	{lr}
 8002f72:	b083      	sub	sp, #12
 8002f74:	f001 f874 	bl	8004060 <iwdg_reset>
 8002f78:	f10d 0107 	add.w	r1, sp, #7
 8002f7c:	2201      	movs	r2, #1
 8002f7e:	2000      	movs	r0, #0
 8002f80:	f002 fa74 	bl	800546c <read>
 8002f84:	2800      	cmp	r0, #0
 8002f86:	dd03      	ble.n	8002f90 <usb_to_uart+0x20>
 8002f88:	f99d 0007 	ldrsb.w	r0, [sp, #7]
 8002f8c:	f000 fc3c 	bl	8003808 <uart_write>
 8002f90:	f000 fc2e 	bl	80037f0 <uart_read_nonblock>
 8002f94:	b910      	cbnz	r0, 8002f9c <usb_to_uart+0x2c>
 8002f96:	b003      	add	sp, #12
 8002f98:	f85d fb04 	ldr.w	pc, [sp], #4
 8002f9c:	f000 fc12 	bl	80037c4 <uart_read>
 8002fa0:	2201      	movs	r2, #1
 8002fa2:	f88d 0007 	strb.w	r0, [sp, #7]
 8002fa6:	f10d 0107 	add.w	r1, sp, #7
 8002faa:	4610      	mov	r0, r2
 8002fac:	f002 fa68 	bl	8005480 <write>
 8002fb0:	b003      	add	sp, #12
 8002fb2:	f85d fb04 	ldr.w	pc, [sp], #4
 8002fb6:	bf00      	nop

08002fb8 <usb_command_handler>:
 8002fb8:	b570      	push	{r4, r5, r6, lr}
 8002fba:	b092      	sub	sp, #72	; 0x48
 8002fbc:	f001 f850 	bl	8004060 <iwdg_reset>
 8002fc0:	a902      	add	r1, sp, #8
 8002fc2:	2240      	movs	r2, #64	; 0x40
 8002fc4:	2000      	movs	r0, #0
 8002fc6:	f002 fa51 	bl	800546c <read>
 8002fca:	2800      	cmp	r0, #0
 8002fcc:	dd76      	ble.n	80030bc <usb_command_handler+0x104>
 8002fce:	f99d 3008 	ldrsb.w	r3, [sp, #8]
 8002fd2:	3b47      	subs	r3, #71	; 0x47
 8002fd4:	2b30      	cmp	r3, #48	; 0x30
 8002fd6:	f200 8116 	bhi.w	8003206 <usb_command_handler+0x24e>
 8002fda:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002fde:	0087      	.short	0x0087
 8002fe0:	01140114 	.word	0x01140114
 8002fe4:	01140114 	.word	0x01140114
 8002fe8:	01140114 	.word	0x01140114
 8002fec:	01140114 	.word	0x01140114
 8002ff0:	01140105 	.word	0x01140105
 8002ff4:	01140114 	.word	0x01140114
 8002ff8:	01140114 	.word	0x01140114
 8002ffc:	01140114 	.word	0x01140114
 8003000:	01140114 	.word	0x01140114
 8003004:	01140114 	.word	0x01140114
 8003008:	01140114 	.word	0x01140114
 800300c:	01140114 	.word	0x01140114
 8003010:	00f30114 	.word	0x00f30114
 8003014:	01140114 	.word	0x01140114
 8003018:	011400f9 	.word	0x011400f9
 800301c:	00950114 	.word	0x00950114
 8003020:	01140114 	.word	0x01140114
 8003024:	01140114 	.word	0x01140114
 8003028:	00a60114 	.word	0x00a60114
 800302c:	01140114 	.word	0x01140114
 8003030:	011400bf 	.word	0x011400bf
 8003034:	011400d5 	.word	0x011400d5
 8003038:	01140114 	.word	0x01140114
 800303c:	00310114 	.word	0x00310114
 8003040:	4b7e      	ldr	r3, [pc, #504]	; (800323c <usb_command_handler+0x284>)
 8003042:	2400      	movs	r4, #0
 8003044:	681d      	ldr	r5, [r3, #0]
 8003046:	6868      	ldr	r0, [r5, #4]
 8003048:	f002 f88c 	bl	8005164 <malloc>
 800304c:	4606      	mov	r6, r0
 800304e:	686a      	ldr	r2, [r5, #4]
 8003050:	1931      	adds	r1, r6, r4
 8003052:	2000      	movs	r0, #0
 8003054:	f002 fa0a 	bl	800546c <read>
 8003058:	686a      	ldr	r2, [r5, #4]
 800305a:	4404      	add	r4, r0
 800305c:	b2a4      	uxth	r4, r4
 800305e:	4294      	cmp	r4, r2
 8003060:	d1f6      	bne.n	8003050 <usb_command_handler+0x98>
 8003062:	4977      	ldr	r1, [pc, #476]	; (8003240 <usb_command_handler+0x288>)
 8003064:	f105 0029 	add.w	r0, r5, #41	; 0x29
 8003068:	f002 f956 	bl	8005318 <strcmp>
 800306c:	2800      	cmp	r0, #0
 800306e:	f040 80da 	bne.w	8003226 <usb_command_handler+0x26e>
 8003072:	686b      	ldr	r3, [r5, #4]
 8003074:	2b00      	cmp	r3, #0
 8003076:	f000 80de 	beq.w	8003236 <usb_command_handler+0x27e>
 800307a:	4604      	mov	r4, r0
 800307c:	4601      	mov	r1, r0
 800307e:	7a2a      	ldrb	r2, [r5, #8]
 8003080:	4431      	add	r1, r6
 8003082:	4620      	mov	r0, r4
 8003084:	f000 fa72 	bl	800356c <i2c_write_page>
 8003088:	2800      	cmp	r0, #0
 800308a:	f000 80d4 	beq.w	8003236 <usb_command_handler+0x27e>
 800308e:	f000 ffe7 	bl	8004060 <iwdg_reset>
 8003092:	4a6c      	ldr	r2, [pc, #432]	; (8003244 <usb_command_handler+0x28c>)
 8003094:	6811      	ldr	r1, [r2, #0]
 8003096:	6813      	ldr	r3, [r2, #0]
 8003098:	1a5b      	subs	r3, r3, r1
 800309a:	2b09      	cmp	r3, #9
 800309c:	d9fb      	bls.n	8003096 <usb_command_handler+0xde>
 800309e:	7a2a      	ldrb	r2, [r5, #8]
 80030a0:	686b      	ldr	r3, [r5, #4]
 80030a2:	4414      	add	r4, r2
 80030a4:	b2a4      	uxth	r4, r4
 80030a6:	429c      	cmp	r4, r3
 80030a8:	4621      	mov	r1, r4
 80030aa:	d3e9      	bcc.n	8003080 <usb_command_handler+0xc8>
 80030ac:	4966      	ldr	r1, [pc, #408]	; (8003248 <usb_command_handler+0x290>)
 80030ae:	2204      	movs	r2, #4
 80030b0:	2001      	movs	r0, #1
 80030b2:	f002 f9e5 	bl	8005480 <write>
 80030b6:	4630      	mov	r0, r6
 80030b8:	f002 f85c 	bl	8005174 <free>
 80030bc:	4c63      	ldr	r4, [pc, #396]	; (800324c <usb_command_handler+0x294>)
 80030be:	6820      	ldr	r0, [r4, #0]
 80030c0:	f000 fc80 	bl	80039c4 <usbrw_read_nonblock>
 80030c4:	283f      	cmp	r0, #63	; 0x3f
 80030c6:	dc01      	bgt.n	80030cc <usb_command_handler+0x114>
 80030c8:	b012      	add	sp, #72	; 0x48
 80030ca:	bd70      	pop	{r4, r5, r6, pc}
 80030cc:	2240      	movs	r2, #64	; 0x40
 80030ce:	4960      	ldr	r1, [pc, #384]	; (8003250 <usb_command_handler+0x298>)
 80030d0:	6820      	ldr	r0, [r4, #0]
 80030d2:	f000 fc7f 	bl	80039d4 <usbrw_read>
 80030d6:	495f      	ldr	r1, [pc, #380]	; (8003254 <usb_command_handler+0x29c>)
 80030d8:	485d      	ldr	r0, [pc, #372]	; (8003250 <usb_command_handler+0x298>)
 80030da:	f7fd fce9 	bl	8000ab0 <DAP_ProcessCommand>
 80030de:	6820      	ldr	r0, [r4, #0]
 80030e0:	2240      	movs	r2, #64	; 0x40
 80030e2:	495c      	ldr	r1, [pc, #368]	; (8003254 <usb_command_handler+0x29c>)
 80030e4:	f000 fc9e 	bl	8003a24 <usbrw_write>
 80030e8:	b012      	add	sp, #72	; 0x48
 80030ea:	bd70      	pop	{r4, r5, r6, pc}
 80030ec:	f10d 000a 	add.w	r0, sp, #10
 80030f0:	f002 f82a 	bl	8005148 <atoi>
 80030f4:	b2c1      	uxtb	r1, r0
 80030f6:	4858      	ldr	r0, [pc, #352]	; (8003258 <usb_command_handler+0x2a0>)
 80030f8:	f000 ff66 	bl	8003fc8 <gpio_port_write>
 80030fc:	2204      	movs	r2, #4
 80030fe:	4952      	ldr	r1, [pc, #328]	; (8003248 <usb_command_handler+0x290>)
 8003100:	2001      	movs	r0, #1
 8003102:	f002 f9bd 	bl	8005480 <write>
 8003106:	e7d9      	b.n	80030bc <usb_command_handler+0x104>
 8003108:	2204      	movs	r2, #4
 800310a:	494f      	ldr	r1, [pc, #316]	; (8003248 <usb_command_handler+0x290>)
 800310c:	2001      	movs	r0, #1
 800310e:	f002 f9b7 	bl	8005480 <write>
 8003112:	4851      	ldr	r0, [pc, #324]	; (8003258 <usb_command_handler+0x2a0>)
 8003114:	f000 ff55 	bl	8003fc2 <gpio_port_read>
 8003118:	2201      	movs	r2, #1
 800311a:	f88d 0007 	strb.w	r0, [sp, #7]
 800311e:	f10d 0107 	add.w	r1, sp, #7
 8003122:	4610      	mov	r0, r2
 8003124:	f002 f9ac 	bl	8005480 <write>
 8003128:	e7c8      	b.n	80030bc <usb_command_handler+0x104>
 800312a:	f10d 000a 	add.w	r0, sp, #10
 800312e:	f002 f80b 	bl	8005148 <atoi>
 8003132:	2400      	movs	r4, #0
 8003134:	b2c5      	uxtb	r5, r0
 8003136:	2201      	movs	r2, #1
 8003138:	fa45 f104 	asr.w	r1, r5, r4
 800313c:	4011      	ands	r1, r2
 800313e:	fa02 f304 	lsl.w	r3, r2, r4
 8003142:	4845      	ldr	r0, [pc, #276]	; (8003258 <usb_command_handler+0x2a0>)
 8003144:	bf1a      	itte	ne
 8003146:	2200      	movne	r2, #0
 8003148:	2103      	movne	r1, #3
 800314a:	4843      	ldreq	r0, [pc, #268]	; (8003258 <usb_command_handler+0x2a0>)
 800314c:	b29b      	uxth	r3, r3
 800314e:	3401      	adds	r4, #1
 8003150:	f000 fdf8 	bl	8003d44 <gpio_set_mode>
 8003154:	2c08      	cmp	r4, #8
 8003156:	d1ee      	bne.n	8003136 <usb_command_handler+0x17e>
 8003158:	2100      	movs	r1, #0
 800315a:	e7cc      	b.n	80030f6 <usb_command_handler+0x13e>
 800315c:	f10d 000a 	add.w	r0, sp, #10
 8003160:	f001 fff2 	bl	8005148 <atoi>
 8003164:	2800      	cmp	r0, #0
 8003166:	ea20 71e0 	bic.w	r1, r0, r0, asr #31
 800316a:	bfa8      	it	ge
 800316c:	2000      	movge	r0, #0
 800316e:	4b3b      	ldr	r3, [pc, #236]	; (800325c <usb_command_handler+0x2a4>)
 8003170:	bfb8      	it	lt
 8003172:	4240      	neglt	r0, r0
 8003174:	681a      	ldr	r2, [r3, #0]
 8003176:	685b      	ldr	r3, [r3, #4]
 8003178:	6011      	str	r1, [r2, #0]
 800317a:	6018      	str	r0, [r3, #0]
 800317c:	2204      	movs	r2, #4
 800317e:	4932      	ldr	r1, [pc, #200]	; (8003248 <usb_command_handler+0x290>)
 8003180:	2001      	movs	r0, #1
 8003182:	f002 f97d 	bl	8005480 <write>
 8003186:	e799      	b.n	80030bc <usb_command_handler+0x104>
 8003188:	4b2c      	ldr	r3, [pc, #176]	; (800323c <usb_command_handler+0x284>)
 800318a:	681c      	ldr	r4, [r3, #0]
 800318c:	6860      	ldr	r0, [r4, #4]
 800318e:	f001 ffe9 	bl	8005164 <malloc>
 8003192:	4933      	ldr	r1, [pc, #204]	; (8003260 <usb_command_handler+0x2a8>)
 8003194:	4605      	mov	r5, r0
 8003196:	f104 0029 	add.w	r0, r4, #41	; 0x29
 800319a:	f002 f8bd 	bl	8005318 <strcmp>
 800319e:	4931      	ldr	r1, [pc, #196]	; (8003264 <usb_command_handler+0x2ac>)
 80031a0:	4b31      	ldr	r3, [pc, #196]	; (8003268 <usb_command_handler+0x2b0>)
 80031a2:	6862      	ldr	r2, [r4, #4]
 80031a4:	2800      	cmp	r0, #0
 80031a6:	bf18      	it	ne
 80031a8:	460b      	movne	r3, r1
 80031aa:	4629      	mov	r1, r5
 80031ac:	2000      	movs	r0, #0
 80031ae:	4798      	blx	r3
 80031b0:	2204      	movs	r2, #4
 80031b2:	bb70      	cbnz	r0, 8003212 <usb_command_handler+0x25a>
 80031b4:	492d      	ldr	r1, [pc, #180]	; (800326c <usb_command_handler+0x2b4>)
 80031b6:	2001      	movs	r0, #1
 80031b8:	f002 f962 	bl	8005480 <write>
 80031bc:	4628      	mov	r0, r5
 80031be:	f001 ffd9 	bl	8005174 <free>
 80031c2:	e77b      	b.n	80030bc <usb_command_handler+0x104>
 80031c4:	2204      	movs	r2, #4
 80031c6:	4929      	ldr	r1, [pc, #164]	; (800326c <usb_command_handler+0x2b4>)
 80031c8:	2001      	movs	r0, #1
 80031ca:	f002 f959 	bl	8005480 <write>
 80031ce:	e775      	b.n	80030bc <usb_command_handler+0x104>
 80031d0:	4b1a      	ldr	r3, [pc, #104]	; (800323c <usb_command_handler+0x284>)
 80031d2:	a902      	add	r1, sp, #8
 80031d4:	6818      	ldr	r0, [r3, #0]
 80031d6:	2230      	movs	r2, #48	; 0x30
 80031d8:	f001 ffd4 	bl	8005184 <memcpy>
 80031dc:	2204      	movs	r2, #4
 80031de:	491a      	ldr	r1, [pc, #104]	; (8003248 <usb_command_handler+0x290>)
 80031e0:	2001      	movs	r0, #1
 80031e2:	f002 f94d 	bl	8005480 <write>
 80031e6:	e769      	b.n	80030bc <usb_command_handler+0x104>
 80031e8:	f10d 000a 	add.w	r0, sp, #10
 80031ec:	f001 ffac 	bl	8005148 <atoi>
 80031f0:	4b1a      	ldr	r3, [pc, #104]	; (800325c <usb_command_handler+0x2a4>)
 80031f2:	ea20 71e0 	bic.w	r1, r0, r0, asr #31
 80031f6:	689a      	ldr	r2, [r3, #8]
 80031f8:	2800      	cmp	r0, #0
 80031fa:	6011      	str	r1, [r2, #0]
 80031fc:	bfb4      	ite	lt
 80031fe:	4240      	neglt	r0, r0
 8003200:	2000      	movge	r0, #0
 8003202:	68db      	ldr	r3, [r3, #12]
 8003204:	e7b9      	b.n	800317a <usb_command_handler+0x1c2>
 8003206:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 800320a:	4819      	ldr	r0, [pc, #100]	; (8003270 <usb_command_handler+0x2b8>)
 800320c:	f000 fed0 	bl	8003fb0 <gpio_toggle>
 8003210:	e754      	b.n	80030bc <usb_command_handler+0x104>
 8003212:	490d      	ldr	r1, [pc, #52]	; (8003248 <usb_command_handler+0x290>)
 8003214:	2001      	movs	r0, #1
 8003216:	f002 f933 	bl	8005480 <write>
 800321a:	6862      	ldr	r2, [r4, #4]
 800321c:	4629      	mov	r1, r5
 800321e:	2001      	movs	r0, #1
 8003220:	f002 f92e 	bl	8005480 <write>
 8003224:	e7ca      	b.n	80031bc <usb_command_handler+0x204>
 8003226:	686a      	ldr	r2, [r5, #4]
 8003228:	4631      	mov	r1, r6
 800322a:	2000      	movs	r0, #0
 800322c:	f000 fa3a 	bl	80036a4 <spi_write_page>
 8003230:	2800      	cmp	r0, #0
 8003232:	f47f af3b 	bne.w	80030ac <usb_command_handler+0xf4>
 8003236:	490d      	ldr	r1, [pc, #52]	; (800326c <usb_command_handler+0x2b4>)
 8003238:	e739      	b.n	80030ae <usb_command_handler+0xf6>
 800323a:	bf00      	nop
 800323c:	200004e4 	.word	0x200004e4
 8003240:	08005560 	.word	0x08005560
 8003244:	20000278 	.word	0x20000278
 8003248:	0800554c 	.word	0x0800554c
 800324c:	20000570 	.word	0x20000570
 8003250:	200001f8 	.word	0x200001f8
 8003254:	20000238 	.word	0x20000238
 8003258:	40010800 	.word	0x40010800
 800325c:	20000000 	.word	0x20000000
 8003260:	0800555c 	.word	0x0800555c
 8003264:	080035f1 	.word	0x080035f1
 8003268:	080036ed 	.word	0x080036ed
 800326c:	08005554 	.word	0x08005554
 8003270:	40011000 	.word	0x40011000

08003274 <sys_tick_handler>:
 8003274:	4a02      	ldr	r2, [pc, #8]	; (8003280 <sys_tick_handler+0xc>)
 8003276:	6813      	ldr	r3, [r2, #0]
 8003278:	3301      	adds	r3, #1
 800327a:	6013      	str	r3, [r2, #0]
 800327c:	4770      	bx	lr
 800327e:	bf00      	nop
 8003280:	20000278 	.word	0x20000278

08003284 <main>:
 8003284:	b510      	push	{r4, lr}
 8003286:	2030      	movs	r0, #48	; 0x30
 8003288:	f001 ff6c 	bl	8005164 <malloc>
 800328c:	4b1d      	ldr	r3, [pc, #116]	; (8003304 <main+0x80>)
 800328e:	6018      	str	r0, [r3, #0]
 8003290:	f000 f842 	bl	8003318 <clock_setup>
 8003294:	f000 f890 	bl	80033b8 <gpio_setup>
 8003298:	f000 f854 	bl	8003344 <usb_setup>
 800329c:	f000 f85c 	bl	8003358 <uart_setup>
 80032a0:	f000 f8cc 	bl	800343c <i2c_setup>
 80032a4:	f000 f8f6 	bl	8003494 <spi_setup>
 80032a8:	f000 f928 	bl	80034fc <pwm_setup>
 80032ac:	f000 f94c 	bl	8003548 <systick_setup>
 80032b0:	2307      	movs	r3, #7
 80032b2:	2200      	movs	r2, #0
 80032b4:	2101      	movs	r1, #1
 80032b6:	4814      	ldr	r0, [pc, #80]	; (8003308 <main+0x84>)
 80032b8:	f000 fd44 	bl	8003d44 <gpio_set_mode>
 80032bc:	2308      	movs	r3, #8
 80032be:	2202      	movs	r2, #2
 80032c0:	2100      	movs	r1, #0
 80032c2:	4811      	ldr	r0, [pc, #68]	; (8003308 <main+0x84>)
 80032c4:	f000 fd3e 	bl	8003d44 <gpio_set_mode>
 80032c8:	2200      	movs	r2, #0
 80032ca:	2330      	movs	r3, #48	; 0x30
 80032cc:	2101      	movs	r1, #1
 80032ce:	480e      	ldr	r0, [pc, #56]	; (8003308 <main+0x84>)
 80032d0:	f000 fd38 	bl	8003d44 <gpio_set_mode>
 80032d4:	2130      	movs	r1, #48	; 0x30
 80032d6:	480c      	ldr	r0, [pc, #48]	; (8003308 <main+0x84>)
 80032d8:	f000 fe62 	bl	8003fa0 <gpio_set>
 80032dc:	4a0b      	ldr	r2, [pc, #44]	; (800330c <main+0x88>)
 80032de:	6811      	ldr	r1, [r2, #0]
 80032e0:	6813      	ldr	r3, [r2, #0]
 80032e2:	1a5b      	subs	r3, r3, r1
 80032e4:	2b63      	cmp	r3, #99	; 0x63
 80032e6:	d9fb      	bls.n	80032e0 <main+0x5c>
 80032e8:	f000 feb2 	bl	8004050 <iwdg_start>
 80032ec:	2101      	movs	r1, #1
 80032ee:	4806      	ldr	r0, [pc, #24]	; (8003308 <main+0x84>)
 80032f0:	f000 fe5b 	bl	8003faa <gpio_get>
 80032f4:	4c06      	ldr	r4, [pc, #24]	; (8003310 <main+0x8c>)
 80032f6:	4b07      	ldr	r3, [pc, #28]	; (8003314 <main+0x90>)
 80032f8:	2800      	cmp	r0, #0
 80032fa:	bf18      	it	ne
 80032fc:	461c      	movne	r4, r3
 80032fe:	47a0      	blx	r4
 8003300:	e7fd      	b.n	80032fe <main+0x7a>
 8003302:	bf00      	nop
 8003304:	200004e4 	.word	0x200004e4
 8003308:	40010c00 	.word	0x40010c00
 800330c:	20000278 	.word	0x20000278
 8003310:	08002f71 	.word	0x08002f71
 8003314:	08002fb9 	.word	0x08002fb9

08003318 <clock_setup>:
 8003318:	b508      	push	{r3, lr}
 800331a:	f000 fdfb 	bl	8003f14 <rcc_clock_setup_in_hse_8mhz_out_72mhz>
 800331e:	f44f 7041 	mov.w	r0, #772	; 0x304
 8003322:	f000 fedf 	bl	80040e4 <rcc_periph_clock_enable>
 8003326:	f240 3002 	movw	r0, #770	; 0x302
 800332a:	f000 fedb 	bl	80040e4 <rcc_periph_clock_enable>
 800332e:	f240 3003 	movw	r0, #771	; 0x303
 8003332:	f000 fed7 	bl	80040e4 <rcc_periph_clock_enable>
 8003336:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800333a:	f44f 7040 	mov.w	r0, #768	; 0x300
 800333e:	f000 bed1 	b.w	80040e4 <rcc_periph_clock_enable>
 8003342:	bf00      	nop

08003344 <usb_setup>:
 8003344:	b508      	push	{r3, lr}
 8003346:	f44f 7023 	mov.w	r0, #652	; 0x28c
 800334a:	f000 fecb 	bl	80040e4 <rcc_periph_clock_enable>
 800334e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8003352:	f000 bca3 	b.w	8003c9c <usb_cdcacm_init>
 8003356:	bf00      	nop

08003358 <uart_setup>:
 8003358:	b510      	push	{r4, lr}
 800335a:	f240 300e 	movw	r0, #782	; 0x30e
 800335e:	4c14      	ldr	r4, [pc, #80]	; (80033b0 <uart_setup+0x58>)
 8003360:	f000 fec0 	bl	80040e4 <rcc_periph_clock_enable>
 8003364:	2025      	movs	r0, #37	; 0x25
 8003366:	f001 fc59 	bl	8004c1c <nvic_enable_irq>
 800336a:	4620      	mov	r0, r4
 800336c:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
 8003370:	f000 fe7e 	bl	8004070 <usart_set_baudrate>
 8003374:	4620      	mov	r0, r4
 8003376:	2108      	movs	r1, #8
 8003378:	f000 fe8e 	bl	8004098 <usart_set_databits>
 800337c:	4620      	mov	r0, r4
 800337e:	2100      	movs	r1, #0
 8003380:	f000 fe93 	bl	80040aa <usart_set_stopbits>
 8003384:	4620      	mov	r0, r4
 8003386:	2100      	movs	r1, #0
 8003388:	f000 fe95 	bl	80040b6 <usart_set_parity>
 800338c:	4620      	mov	r0, r4
 800338e:	2100      	movs	r1, #0
 8003390:	f000 fe9d 	bl	80040ce <usart_set_flow_control>
 8003394:	4620      	mov	r0, r4
 8003396:	210c      	movs	r1, #12
 8003398:	f000 fe93 	bl	80040c2 <usart_set_mode>
 800339c:	4a05      	ldr	r2, [pc, #20]	; (80033b4 <uart_setup+0x5c>)
 800339e:	4620      	mov	r0, r4
 80033a0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80033a4:	6813      	ldr	r3, [r2, #0]
 80033a6:	f043 0360 	orr.w	r3, r3, #96	; 0x60
 80033aa:	6013      	str	r3, [r2, #0]
 80033ac:	f000 be95 	b.w	80040da <usart_enable>
 80033b0:	40013800 	.word	0x40013800
 80033b4:	4001380c 	.word	0x4001380c

080033b8 <gpio_setup>:
 80033b8:	b538      	push	{r3, r4, r5, lr}
 80033ba:	2200      	movs	r2, #0
 80033bc:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 80033c0:	2102      	movs	r1, #2
 80033c2:	481b      	ldr	r0, [pc, #108]	; (8003430 <gpio_setup+0x78>)
 80033c4:	f000 fcbe 	bl	8003d44 <gpio_set_mode>
 80033c8:	2400      	movs	r4, #0
 80033ca:	2501      	movs	r5, #1
 80033cc:	fa05 f304 	lsl.w	r3, r5, r4
 80033d0:	b29b      	uxth	r3, r3
 80033d2:	442c      	add	r4, r5
 80033d4:	462a      	mov	r2, r5
 80033d6:	2100      	movs	r1, #0
 80033d8:	4816      	ldr	r0, [pc, #88]	; (8003434 <gpio_setup+0x7c>)
 80033da:	f000 fcb3 	bl	8003d44 <gpio_set_mode>
 80033de:	2c08      	cmp	r4, #8
 80033e0:	d1f3      	bne.n	80033ca <gpio_setup+0x12>
 80033e2:	2202      	movs	r2, #2
 80033e4:	f44f 7370 	mov.w	r3, #960	; 0x3c0
 80033e8:	4611      	mov	r1, r2
 80033ea:	4813      	ldr	r0, [pc, #76]	; (8003438 <gpio_setup+0x80>)
 80033ec:	f000 fcaa 	bl	8003d44 <gpio_set_mode>
 80033f0:	2202      	movs	r2, #2
 80033f2:	f44f 7300 	mov.w	r3, #512	; 0x200
 80033f6:	4611      	mov	r1, r2
 80033f8:	480e      	ldr	r0, [pc, #56]	; (8003434 <gpio_setup+0x7c>)
 80033fa:	f000 fca3 	bl	8003d44 <gpio_set_mode>
 80033fe:	462a      	mov	r2, r5
 8003400:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8003404:	2100      	movs	r1, #0
 8003406:	480b      	ldr	r0, [pc, #44]	; (8003434 <gpio_setup+0x7c>)
 8003408:	f000 fc9c 	bl	8003d44 <gpio_set_mode>
 800340c:	462b      	mov	r3, r5
 800340e:	2202      	movs	r2, #2
 8003410:	2100      	movs	r1, #0
 8003412:	4809      	ldr	r0, [pc, #36]	; (8003438 <gpio_setup+0x80>)
 8003414:	f000 fc96 	bl	8003d44 <gpio_set_mode>
 8003418:	4629      	mov	r1, r5
 800341a:	4807      	ldr	r0, [pc, #28]	; (8003438 <gpio_setup+0x80>)
 800341c:	f000 fdc0 	bl	8003fa0 <gpio_set>
 8003420:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8003424:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8003428:	4801      	ldr	r0, [pc, #4]	; (8003430 <gpio_setup+0x78>)
 800342a:	f000 bdb9 	b.w	8003fa0 <gpio_set>
 800342e:	bf00      	nop
 8003430:	40011000 	.word	0x40011000
 8003434:	40010800 	.word	0x40010800
 8003438:	40010c00 	.word	0x40010c00

0800343c <i2c_setup>:
 800343c:	b510      	push	{r4, lr}
 800343e:	f240 3096 	movw	r0, #918	; 0x396
 8003442:	f000 fe4f 	bl	80040e4 <rcc_periph_clock_enable>
 8003446:	2203      	movs	r2, #3
 8003448:	4c10      	ldr	r4, [pc, #64]	; (800348c <i2c_setup+0x50>)
 800344a:	4611      	mov	r1, r2
 800344c:	f44f 6340 	mov.w	r3, #3072	; 0xc00
 8003450:	480f      	ldr	r0, [pc, #60]	; (8003490 <i2c_setup+0x54>)
 8003452:	f000 fc77 	bl	8003d44 <gpio_set_mode>
 8003456:	4620      	mov	r0, r4
 8003458:	f000 fdbd 	bl	8003fd6 <i2c_peripheral_disable>
 800345c:	4620      	mov	r0, r4
 800345e:	2124      	movs	r1, #36	; 0x24
 8003460:	f000 fdcd 	bl	8003ffe <i2c_set_clock_frequency>
 8003464:	4620      	mov	r0, r4
 8003466:	f000 fdd3 	bl	8004010 <i2c_set_fast_mode>
 800346a:	4620      	mov	r0, r4
 800346c:	211e      	movs	r1, #30
 800346e:	f000 fdd4 	bl	800401a <i2c_set_ccr>
 8003472:	4620      	mov	r0, r4
 8003474:	210b      	movs	r1, #11
 8003476:	f000 fdd6 	bl	8004026 <i2c_set_trise>
 800347a:	4620      	mov	r0, r4
 800347c:	2132      	movs	r1, #50	; 0x32
 800347e:	f000 fdb9 	bl	8003ff4 <i2c_set_own_7bit_slave_address>
 8003482:	4620      	mov	r0, r4
 8003484:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8003488:	f000 bda0 	b.w	8003fcc <i2c_peripheral_enable>
 800348c:	40005800 	.word	0x40005800
 8003490:	40010c00 	.word	0x40010c00

08003494 <spi_setup>:
 8003494:	b510      	push	{r4, lr}
 8003496:	f240 308e 	movw	r0, #910	; 0x38e
 800349a:	b082      	sub	sp, #8
 800349c:	f000 fe22 	bl	80040e4 <rcc_periph_clock_enable>
 80034a0:	4c13      	ldr	r4, [pc, #76]	; (80034f0 <spi_setup+0x5c>)
 80034a2:	f44f 4330 	mov.w	r3, #45056	; 0xb000
 80034a6:	2202      	movs	r2, #2
 80034a8:	2103      	movs	r1, #3
 80034aa:	4812      	ldr	r0, [pc, #72]	; (80034f4 <spi_setup+0x60>)
 80034ac:	f000 fc4a 	bl	8003d44 <gpio_set_mode>
 80034b0:	f44f 4380 	mov.w	r3, #16384	; 0x4000
 80034b4:	2201      	movs	r2, #1
 80034b6:	2100      	movs	r1, #0
 80034b8:	480f      	ldr	r0, [pc, #60]	; (80034f8 <spi_setup+0x64>)
 80034ba:	f000 fc43 	bl	8003d44 <gpio_set_mode>
 80034be:	4620      	mov	r0, r4
 80034c0:	f000 fe38 	bl	8004134 <spi_reset>
 80034c4:	2300      	movs	r3, #0
 80034c6:	2202      	movs	r2, #2
 80034c8:	2128      	movs	r1, #40	; 0x28
 80034ca:	e9cd 3300 	strd	r3, r3, [sp]
 80034ce:	4620      	mov	r0, r4
 80034d0:	2301      	movs	r3, #1
 80034d2:	f000 fe66 	bl	80041a2 <spi_init_master>
 80034d6:	4620      	mov	r0, r4
 80034d8:	f000 fe55 	bl	8004186 <spi_enable_software_slave_management>
 80034dc:	4620      	mov	r0, r4
 80034de:	f000 fe5b 	bl	8004198 <spi_set_nss_high>
 80034e2:	4620      	mov	r0, r4
 80034e4:	b002      	add	sp, #8
 80034e6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80034ea:	f000 be3b 	b.w	8004164 <spi_enable>
 80034ee:	bf00      	nop
 80034f0:	40003800 	.word	0x40003800
 80034f4:	40010c00 	.word	0x40010c00
 80034f8:	40010800 	.word	0x40010800

080034fc <pwm_setup>:
 80034fc:	b570      	push	{r4, r5, r6, lr}
 80034fe:	f240 3082 	movw	r0, #898	; 0x382
 8003502:	f000 fdef 	bl	80040e4 <rcc_periph_clock_enable>
 8003506:	f646 0068 	movw	r0, #26728	; 0x6868
 800350a:	267f      	movs	r6, #127	; 0x7f
 800350c:	251c      	movs	r5, #28
 800350e:	2481      	movs	r4, #129	; 0x81
 8003510:	4b09      	ldr	r3, [pc, #36]	; (8003538 <pwm_setup+0x3c>)
 8003512:	490a      	ldr	r1, [pc, #40]	; (800353c <pwm_setup+0x40>)
 8003514:	681a      	ldr	r2, [r3, #0]
 8003516:	4302      	orrs	r2, r0
 8003518:	601a      	str	r2, [r3, #0]
 800351a:	680b      	ldr	r3, [r1, #0]
 800351c:	4a08      	ldr	r2, [pc, #32]	; (8003540 <pwm_setup+0x44>)
 800351e:	4303      	orrs	r3, r0
 8003520:	600b      	str	r3, [r1, #0]
 8003522:	6813      	ldr	r3, [r2, #0]
 8003524:	f443 5388 	orr.w	r3, r3, #4352	; 0x1100
 8003528:	f043 0311 	orr.w	r3, r3, #17
 800352c:	6013      	str	r3, [r2, #0]
 800352e:	4b05      	ldr	r3, [pc, #20]	; (8003544 <pwm_setup+0x48>)
 8003530:	610e      	str	r6, [r1, #16]
 8003532:	6095      	str	r5, [r2, #8]
 8003534:	601c      	str	r4, [r3, #0]
 8003536:	bd70      	pop	{r4, r5, r6, pc}
 8003538:	40000818 	.word	0x40000818
 800353c:	4000081c 	.word	0x4000081c
 8003540:	40000820 	.word	0x40000820
 8003544:	40000800 	.word	0x40000800

08003548 <systick_setup>:
 8003548:	b508      	push	{r3, lr}
 800354a:	2000      	movs	r0, #0
 800354c:	f001 fb3c 	bl	8004bc8 <systick_set_clocksource>
 8003550:	f242 3027 	movw	r0, #8999	; 0x2327
 8003554:	f001 fb30 	bl	8004bb8 <systick_set_reload>
 8003558:	f001 fb42 	bl	8004be0 <systick_interrupt_enable>
 800355c:	f001 fb48 	bl	8004bf0 <systick_counter_enable>
 8003560:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8003564:	20ff      	movs	r0, #255	; 0xff
 8003566:	f001 bb59 	b.w	8004c1c <nvic_enable_irq>
 800356a:	bf00      	nop

0800356c <i2c_write_page>:
 800356c:	b570      	push	{r4, r5, r6, lr}
 800356e:	4606      	mov	r6, r0
 8003570:	481c      	ldr	r0, [pc, #112]	; (80035e4 <i2c_write_page+0x78>)
 8003572:	460c      	mov	r4, r1
 8003574:	4615      	mov	r5, r2
 8003576:	f000 fd33 	bl	8003fe0 <i2c_send_start>
 800357a:	4b1b      	ldr	r3, [pc, #108]	; (80035e8 <i2c_write_page+0x7c>)
 800357c:	681b      	ldr	r3, [r3, #0]
 800357e:	07d8      	lsls	r0, r3, #31
 8003580:	d5fb      	bpl.n	800357a <i2c_write_page+0xe>
 8003582:	2200      	movs	r2, #0
 8003584:	2150      	movs	r1, #80	; 0x50
 8003586:	4817      	ldr	r0, [pc, #92]	; (80035e4 <i2c_write_page+0x78>)
 8003588:	f000 fd4f 	bl	800402a <i2c_send_7bit_address>
 800358c:	4b16      	ldr	r3, [pc, #88]	; (80035e8 <i2c_write_page+0x7c>)
 800358e:	681b      	ldr	r3, [r3, #0]
 8003590:	0799      	lsls	r1, r3, #30
 8003592:	d5fb      	bpl.n	800358c <i2c_write_page+0x20>
 8003594:	4b15      	ldr	r3, [pc, #84]	; (80035ec <i2c_write_page+0x80>)
 8003596:	6818      	ldr	r0, [r3, #0]
 8003598:	f010 0001 	ands.w	r0, r0, #1
 800359c:	d003      	beq.n	80035a6 <i2c_write_page+0x3a>
 800359e:	6818      	ldr	r0, [r3, #0]
 80035a0:	f010 0002 	ands.w	r0, r0, #2
 80035a4:	d100      	bne.n	80035a8 <i2c_write_page+0x3c>
 80035a6:	bd70      	pop	{r4, r5, r6, pc}
 80035a8:	b2f1      	uxtb	r1, r6
 80035aa:	480e      	ldr	r0, [pc, #56]	; (80035e4 <i2c_write_page+0x78>)
 80035ac:	f000 fd2e 	bl	800400c <i2c_send_data>
 80035b0:	4b0d      	ldr	r3, [pc, #52]	; (80035e8 <i2c_write_page+0x7c>)
 80035b2:	681b      	ldr	r3, [r3, #0]
 80035b4:	061a      	lsls	r2, r3, #24
 80035b6:	d5fb      	bpl.n	80035b0 <i2c_write_page+0x44>
 80035b8:	b175      	cbz	r5, 80035d8 <i2c_write_page+0x6c>
 80035ba:	3d01      	subs	r5, #1
 80035bc:	b2ad      	uxth	r5, r5
 80035be:	3501      	adds	r5, #1
 80035c0:	4425      	add	r5, r4
 80035c2:	f814 1b01 	ldrb.w	r1, [r4], #1
 80035c6:	4807      	ldr	r0, [pc, #28]	; (80035e4 <i2c_write_page+0x78>)
 80035c8:	f000 fd20 	bl	800400c <i2c_send_data>
 80035cc:	4b06      	ldr	r3, [pc, #24]	; (80035e8 <i2c_write_page+0x7c>)
 80035ce:	681b      	ldr	r3, [r3, #0]
 80035d0:	061b      	lsls	r3, r3, #24
 80035d2:	d5fb      	bpl.n	80035cc <i2c_write_page+0x60>
 80035d4:	42ac      	cmp	r4, r5
 80035d6:	d1f4      	bne.n	80035c2 <i2c_write_page+0x56>
 80035d8:	4802      	ldr	r0, [pc, #8]	; (80035e4 <i2c_write_page+0x78>)
 80035da:	f000 fd06 	bl	8003fea <i2c_send_stop>
 80035de:	2001      	movs	r0, #1
 80035e0:	bd70      	pop	{r4, r5, r6, pc}
 80035e2:	bf00      	nop
 80035e4:	40005800 	.word	0x40005800
 80035e8:	40005814 	.word	0x40005814
 80035ec:	40005818 	.word	0x40005818

080035f0 <i2c_read_page>:
 80035f0:	b570      	push	{r4, r5, r6, lr}
 80035f2:	4606      	mov	r6, r0
 80035f4:	4828      	ldr	r0, [pc, #160]	; (8003698 <i2c_read_page+0xa8>)
 80035f6:	460d      	mov	r5, r1
 80035f8:	4614      	mov	r4, r2
 80035fa:	f000 fcf1 	bl	8003fe0 <i2c_send_start>
 80035fe:	4b27      	ldr	r3, [pc, #156]	; (800369c <i2c_read_page+0xac>)
 8003600:	681b      	ldr	r3, [r3, #0]
 8003602:	07d8      	lsls	r0, r3, #31
 8003604:	d5fb      	bpl.n	80035fe <i2c_read_page+0xe>
 8003606:	2200      	movs	r2, #0
 8003608:	2150      	movs	r1, #80	; 0x50
 800360a:	4823      	ldr	r0, [pc, #140]	; (8003698 <i2c_read_page+0xa8>)
 800360c:	f000 fd0d 	bl	800402a <i2c_send_7bit_address>
 8003610:	4b22      	ldr	r3, [pc, #136]	; (800369c <i2c_read_page+0xac>)
 8003612:	681b      	ldr	r3, [r3, #0]
 8003614:	0799      	lsls	r1, r3, #30
 8003616:	d5fb      	bpl.n	8003610 <i2c_read_page+0x20>
 8003618:	4b21      	ldr	r3, [pc, #132]	; (80036a0 <i2c_read_page+0xb0>)
 800361a:	681a      	ldr	r2, [r3, #0]
 800361c:	07d2      	lsls	r2, r2, #31
 800361e:	d502      	bpl.n	8003626 <i2c_read_page+0x36>
 8003620:	681b      	ldr	r3, [r3, #0]
 8003622:	079b      	lsls	r3, r3, #30
 8003624:	d401      	bmi.n	800362a <i2c_read_page+0x3a>
 8003626:	2000      	movs	r0, #0
 8003628:	bd70      	pop	{r4, r5, r6, pc}
 800362a:	b2f1      	uxtb	r1, r6
 800362c:	481a      	ldr	r0, [pc, #104]	; (8003698 <i2c_read_page+0xa8>)
 800362e:	f000 fced 	bl	800400c <i2c_send_data>
 8003632:	4b1a      	ldr	r3, [pc, #104]	; (800369c <i2c_read_page+0xac>)
 8003634:	681b      	ldr	r3, [r3, #0]
 8003636:	061e      	lsls	r6, r3, #24
 8003638:	d5fb      	bpl.n	8003632 <i2c_read_page+0x42>
 800363a:	4817      	ldr	r0, [pc, #92]	; (8003698 <i2c_read_page+0xa8>)
 800363c:	f000 fcd0 	bl	8003fe0 <i2c_send_start>
 8003640:	4b16      	ldr	r3, [pc, #88]	; (800369c <i2c_read_page+0xac>)
 8003642:	681b      	ldr	r3, [r3, #0]
 8003644:	07d8      	lsls	r0, r3, #31
 8003646:	d5fb      	bpl.n	8003640 <i2c_read_page+0x50>
 8003648:	2201      	movs	r2, #1
 800364a:	2150      	movs	r1, #80	; 0x50
 800364c:	4812      	ldr	r0, [pc, #72]	; (8003698 <i2c_read_page+0xa8>)
 800364e:	f000 fcec 	bl	800402a <i2c_send_7bit_address>
 8003652:	4b12      	ldr	r3, [pc, #72]	; (800369c <i2c_read_page+0xac>)
 8003654:	681b      	ldr	r3, [r3, #0]
 8003656:	0799      	lsls	r1, r3, #30
 8003658:	d5fb      	bpl.n	8003652 <i2c_read_page+0x62>
 800365a:	4b11      	ldr	r3, [pc, #68]	; (80036a0 <i2c_read_page+0xb0>)
 800365c:	681b      	ldr	r3, [r3, #0]
 800365e:	079a      	lsls	r2, r3, #30
 8003660:	d5e1      	bpl.n	8003626 <i2c_read_page+0x36>
 8003662:	480d      	ldr	r0, [pc, #52]	; (8003698 <i2c_read_page+0xa8>)
 8003664:	f000 fce9 	bl	800403a <i2c_enable_ack>
 8003668:	b184      	cbz	r4, 800368c <i2c_read_page+0x9c>
 800366a:	4b0c      	ldr	r3, [pc, #48]	; (800369c <i2c_read_page+0xac>)
 800366c:	681b      	ldr	r3, [r3, #0]
 800366e:	065b      	lsls	r3, r3, #25
 8003670:	d5fb      	bpl.n	800366a <i2c_read_page+0x7a>
 8003672:	4809      	ldr	r0, [pc, #36]	; (8003698 <i2c_read_page+0xa8>)
 8003674:	f000 fcde 	bl	8004034 <i2c_get_data>
 8003678:	3c01      	subs	r4, #1
 800367a:	b2a4      	uxth	r4, r4
 800367c:	2c01      	cmp	r4, #1
 800367e:	f805 0b01 	strb.w	r0, [r5], #1
 8003682:	d1f1      	bne.n	8003668 <i2c_read_page+0x78>
 8003684:	4804      	ldr	r0, [pc, #16]	; (8003698 <i2c_read_page+0xa8>)
 8003686:	f000 fcdd 	bl	8004044 <i2c_disable_ack>
 800368a:	e7ee      	b.n	800366a <i2c_read_page+0x7a>
 800368c:	4802      	ldr	r0, [pc, #8]	; (8003698 <i2c_read_page+0xa8>)
 800368e:	f000 fcac 	bl	8003fea <i2c_send_stop>
 8003692:	2001      	movs	r0, #1
 8003694:	bd70      	pop	{r4, r5, r6, pc}
 8003696:	bf00      	nop
 8003698:	40005800 	.word	0x40005800
 800369c:	40005814 	.word	0x40005814
 80036a0:	40005818 	.word	0x40005818

080036a4 <spi_write_page>:
 80036a4:	b538      	push	{r3, r4, r5, lr}
 80036a6:	4615      	mov	r5, r2
 80036a8:	480f      	ldr	r0, [pc, #60]	; (80036e8 <spi_write_page+0x44>)
 80036aa:	460c      	mov	r4, r1
 80036ac:	2106      	movs	r1, #6
 80036ae:	f000 fd5e 	bl	800416e <spi_send>
 80036b2:	2102      	movs	r1, #2
 80036b4:	480c      	ldr	r0, [pc, #48]	; (80036e8 <spi_write_page+0x44>)
 80036b6:	f000 fd5a 	bl	800416e <spi_send>
 80036ba:	2100      	movs	r1, #0
 80036bc:	480a      	ldr	r0, [pc, #40]	; (80036e8 <spi_write_page+0x44>)
 80036be:	f000 fd56 	bl	800416e <spi_send>
 80036c2:	2100      	movs	r1, #0
 80036c4:	4808      	ldr	r0, [pc, #32]	; (80036e8 <spi_write_page+0x44>)
 80036c6:	f000 fd52 	bl	800416e <spi_send>
 80036ca:	2100      	movs	r1, #0
 80036cc:	4806      	ldr	r0, [pc, #24]	; (80036e8 <spi_write_page+0x44>)
 80036ce:	f000 fd4e 	bl	800416e <spi_send>
 80036d2:	b13d      	cbz	r5, 80036e4 <spi_write_page+0x40>
 80036d4:	4425      	add	r5, r4
 80036d6:	f814 1b01 	ldrb.w	r1, [r4], #1
 80036da:	4803      	ldr	r0, [pc, #12]	; (80036e8 <spi_write_page+0x44>)
 80036dc:	f000 fd47 	bl	800416e <spi_send>
 80036e0:	42ac      	cmp	r4, r5
 80036e2:	d1f8      	bne.n	80036d6 <spi_write_page+0x32>
 80036e4:	2001      	movs	r0, #1
 80036e6:	bd38      	pop	{r3, r4, r5, pc}
 80036e8:	40003800 	.word	0x40003800

080036ec <spi_read_page>:
 80036ec:	b538      	push	{r3, r4, r5, lr}
 80036ee:	4615      	mov	r5, r2
 80036f0:	4813      	ldr	r0, [pc, #76]	; (8003740 <spi_read_page+0x54>)
 80036f2:	460c      	mov	r4, r1
 80036f4:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 80036f8:	f000 fc54 	bl	8003fa4 <gpio_clear>
 80036fc:	2103      	movs	r1, #3
 80036fe:	4811      	ldr	r0, [pc, #68]	; (8003744 <spi_read_page+0x58>)
 8003700:	f000 fd35 	bl	800416e <spi_send>
 8003704:	2100      	movs	r1, #0
 8003706:	480f      	ldr	r0, [pc, #60]	; (8003744 <spi_read_page+0x58>)
 8003708:	f000 fd31 	bl	800416e <spi_send>
 800370c:	2100      	movs	r1, #0
 800370e:	480d      	ldr	r0, [pc, #52]	; (8003744 <spi_read_page+0x58>)
 8003710:	f000 fd2d 	bl	800416e <spi_send>
 8003714:	2100      	movs	r1, #0
 8003716:	480b      	ldr	r0, [pc, #44]	; (8003744 <spi_read_page+0x58>)
 8003718:	f000 fd29 	bl	800416e <spi_send>
 800371c:	b145      	cbz	r5, 8003730 <spi_read_page+0x44>
 800371e:	4425      	add	r5, r4
 8003720:	2100      	movs	r1, #0
 8003722:	4808      	ldr	r0, [pc, #32]	; (8003744 <spi_read_page+0x58>)
 8003724:	f000 fd28 	bl	8004178 <spi_xfer>
 8003728:	f804 0b01 	strb.w	r0, [r4], #1
 800372c:	42ac      	cmp	r4, r5
 800372e:	d1f7      	bne.n	8003720 <spi_read_page+0x34>
 8003730:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 8003734:	4802      	ldr	r0, [pc, #8]	; (8003740 <spi_read_page+0x54>)
 8003736:	f000 fc33 	bl	8003fa0 <gpio_set>
 800373a:	2001      	movs	r0, #1
 800373c:	bd38      	pop	{r3, r4, r5, pc}
 800373e:	bf00      	nop
 8003740:	40010c00 	.word	0x40010c00
 8003744:	40003800 	.word	0x40003800

08003748 <usart1_isr>:
 8003748:	4b16      	ldr	r3, [pc, #88]	; (80037a4 <usart1_isr+0x5c>)
 800374a:	b410      	push	{r4}
 800374c:	681b      	ldr	r3, [r3, #0]
 800374e:	0699      	lsls	r1, r3, #26
 8003750:	d50a      	bpl.n	8003768 <usart1_isr+0x20>
 8003752:	4a15      	ldr	r2, [pc, #84]	; (80037a8 <usart1_isr+0x60>)
 8003754:	4b15      	ldr	r3, [pc, #84]	; (80037ac <usart1_isr+0x64>)
 8003756:	4816      	ldr	r0, [pc, #88]	; (80037b0 <usart1_isr+0x68>)
 8003758:	681c      	ldr	r4, [r3, #0]
 800375a:	6811      	ldr	r1, [r2, #0]
 800375c:	6813      	ldr	r3, [r2, #0]
 800375e:	5444      	strb	r4, [r0, r1]
 8003760:	3301      	adds	r3, #1
 8003762:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8003766:	6013      	str	r3, [r2, #0]
 8003768:	4b0e      	ldr	r3, [pc, #56]	; (80037a4 <usart1_isr+0x5c>)
 800376a:	681a      	ldr	r2, [r3, #0]
 800376c:	0652      	lsls	r2, r2, #25
 800376e:	d511      	bpl.n	8003794 <usart1_isr+0x4c>
 8003770:	681a      	ldr	r2, [r3, #0]
 8003772:	4910      	ldr	r1, [pc, #64]	; (80037b4 <usart1_isr+0x6c>)
 8003774:	4810      	ldr	r0, [pc, #64]	; (80037b8 <usart1_isr+0x70>)
 8003776:	f022 0240 	bic.w	r2, r2, #64	; 0x40
 800377a:	601a      	str	r2, [r3, #0]
 800377c:	680b      	ldr	r3, [r1, #0]
 800377e:	6802      	ldr	r2, [r0, #0]
 8003780:	429a      	cmp	r2, r3
 8003782:	d009      	beq.n	8003798 <usart1_isr+0x50>
 8003784:	480d      	ldr	r0, [pc, #52]	; (80037bc <usart1_isr+0x74>)
 8003786:	1c5a      	adds	r2, r3, #1
 8003788:	5cc4      	ldrb	r4, [r0, r3]
 800378a:	4808      	ldr	r0, [pc, #32]	; (80037ac <usart1_isr+0x64>)
 800378c:	f002 027f 	and.w	r2, r2, #127	; 0x7f
 8003790:	6004      	str	r4, [r0, #0]
 8003792:	600a      	str	r2, [r1, #0]
 8003794:	bc10      	pop	{r4}
 8003796:	4770      	bx	lr
 8003798:	2201      	movs	r2, #1
 800379a:	4b09      	ldr	r3, [pc, #36]	; (80037c0 <usart1_isr+0x78>)
 800379c:	bc10      	pop	{r4}
 800379e:	601a      	str	r2, [r3, #0]
 80037a0:	4770      	bx	lr
 80037a2:	bf00      	nop
 80037a4:	40013800 	.word	0x40013800
 80037a8:	20000300 	.word	0x20000300
 80037ac:	40013804 	.word	0x40013804
 80037b0:	2000027c 	.word	0x2000027c
 80037b4:	20000384 	.word	0x20000384
 80037b8:	2000038c 	.word	0x2000038c
 80037bc:	20000304 	.word	0x20000304
 80037c0:	20000388 	.word	0x20000388

080037c4 <uart_read>:
 80037c4:	4907      	ldr	r1, [pc, #28]	; (80037e4 <uart_read+0x20>)
 80037c6:	4808      	ldr	r0, [pc, #32]	; (80037e8 <uart_read+0x24>)
 80037c8:	680a      	ldr	r2, [r1, #0]
 80037ca:	6803      	ldr	r3, [r0, #0]
 80037cc:	429a      	cmp	r2, r3
 80037ce:	d0fb      	beq.n	80037c8 <uart_read+0x4>
 80037d0:	680a      	ldr	r2, [r1, #0]
 80037d2:	680b      	ldr	r3, [r1, #0]
 80037d4:	4805      	ldr	r0, [pc, #20]	; (80037ec <uart_read+0x28>)
 80037d6:	3301      	adds	r3, #1
 80037d8:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 80037dc:	5680      	ldrsb	r0, [r0, r2]
 80037de:	600b      	str	r3, [r1, #0]
 80037e0:	4770      	bx	lr
 80037e2:	bf00      	nop
 80037e4:	200002fc 	.word	0x200002fc
 80037e8:	20000300 	.word	0x20000300
 80037ec:	2000027c 	.word	0x2000027c

080037f0 <uart_read_nonblock>:
 80037f0:	4a03      	ldr	r2, [pc, #12]	; (8003800 <uart_read_nonblock+0x10>)
 80037f2:	4b04      	ldr	r3, [pc, #16]	; (8003804 <uart_read_nonblock+0x14>)
 80037f4:	6810      	ldr	r0, [r2, #0]
 80037f6:	681b      	ldr	r3, [r3, #0]
 80037f8:	1ac0      	subs	r0, r0, r3
 80037fa:	bf18      	it	ne
 80037fc:	2001      	movne	r0, #1
 80037fe:	4770      	bx	lr
 8003800:	200002fc 	.word	0x200002fc
 8003804:	20000300 	.word	0x20000300

08003808 <uart_write>:
 8003808:	4b09      	ldr	r3, [pc, #36]	; (8003830 <uart_write+0x28>)
 800380a:	681a      	ldr	r2, [r3, #0]
 800380c:	b12a      	cbz	r2, 800381a <uart_write+0x12>
 800380e:	2100      	movs	r1, #0
 8003810:	4a08      	ldr	r2, [pc, #32]	; (8003834 <uart_write+0x2c>)
 8003812:	b2c0      	uxtb	r0, r0
 8003814:	6019      	str	r1, [r3, #0]
 8003816:	6010      	str	r0, [r2, #0]
 8003818:	4770      	bx	lr
 800381a:	4907      	ldr	r1, [pc, #28]	; (8003838 <uart_write+0x30>)
 800381c:	b410      	push	{r4}
 800381e:	680a      	ldr	r2, [r1, #0]
 8003820:	4c06      	ldr	r4, [pc, #24]	; (800383c <uart_write+0x34>)
 8003822:	1c53      	adds	r3, r2, #1
 8003824:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8003828:	54a0      	strb	r0, [r4, r2]
 800382a:	600b      	str	r3, [r1, #0]
 800382c:	bc10      	pop	{r4}
 800382e:	4770      	bx	lr
 8003830:	20000388 	.word	0x20000388
 8003834:	40013804 	.word	0x40013804
 8003838:	2000038c 	.word	0x2000038c
 800383c:	20000304 	.word	0x20000304

08003840 <_tx_data_cb>:
 8003840:	2100      	movs	r1, #0
 8003842:	b538      	push	{r3, r4, r5, lr}
 8003844:	f8d0 2c1c 	ldr.w	r2, [r0, #3100]	; 0xc1c
 8003848:	f8d0 3c18 	ldr.w	r3, [r0, #3096]	; 0xc18
 800384c:	4604      	mov	r4, r0
 800384e:	1a9b      	subs	r3, r3, r2
 8003850:	428b      	cmp	r3, r1
 8003852:	f880 1c20 	strb.w	r1, [r0, #3104]	; 0xc20
 8003856:	db18      	blt.n	800388a <_tx_data_cb+0x4a>
 8003858:	d103      	bne.n	8003862 <_tx_data_cb+0x22>
 800385a:	2301      	movs	r3, #1
 800385c:	f880 3c20 	strb.w	r3, [r0, #3104]	; 0xc20
 8003860:	bd38      	pop	{r3, r4, r5, pc}
 8003862:	2b40      	cmp	r3, #64	; 0x40
 8003864:	bfa8      	it	ge
 8003866:	2340      	movge	r3, #64	; 0x40
 8003868:	461d      	mov	r5, r3
 800386a:	f602 0218 	addw	r2, r2, #2072	; 0x818
 800386e:	4402      	add	r2, r0
 8003870:	b29b      	uxth	r3, r3
 8003872:	7841      	ldrb	r1, [r0, #1]
 8003874:	6840      	ldr	r0, [r0, #4]
 8003876:	f000 fcf5 	bl	8004264 <usbd_ep_write_packet>
 800387a:	f8d4 3c1c 	ldr.w	r3, [r4, #3100]	; 0xc1c
 800387e:	442b      	add	r3, r5
 8003880:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8003884:	f8c4 3c1c 	str.w	r3, [r4, #3100]	; 0xc1c
 8003888:	bd38      	pop	{r3, r4, r5, pc}
 800388a:	f5c2 6580 	rsb	r5, r2, #1024	; 0x400
 800388e:	2d40      	cmp	r5, #64	; 0x40
 8003890:	bf28      	it	cs
 8003892:	2540      	movcs	r5, #64	; 0x40
 8003894:	f602 0218 	addw	r2, r2, #2072	; 0x818
 8003898:	b2ab      	uxth	r3, r5
 800389a:	4402      	add	r2, r0
 800389c:	7841      	ldrb	r1, [r0, #1]
 800389e:	6840      	ldr	r0, [r0, #4]
 80038a0:	f000 fce0 	bl	8004264 <usbd_ep_write_packet>
 80038a4:	f8d4 3c1c 	ldr.w	r3, [r4, #3100]	; 0xc1c
 80038a8:	441d      	add	r5, r3
 80038aa:	f3c5 0509 	ubfx	r5, r5, #0, #10
 80038ae:	f8c4 5c1c 	str.w	r5, [r4, #3100]	; 0xc1c
 80038b2:	bd38      	pop	{r3, r4, r5, pc}

080038b4 <_rx_data_cb>:
 80038b4:	b510      	push	{r4, lr}
 80038b6:	f8d0 2810 	ldr.w	r2, [r0, #2064]	; 0x810
 80038ba:	4604      	mov	r4, r0
 80038bc:	3210      	adds	r2, #16
 80038be:	7801      	ldrb	r1, [r0, #0]
 80038c0:	4402      	add	r2, r0
 80038c2:	2340      	movs	r3, #64	; 0x40
 80038c4:	6840      	ldr	r0, [r0, #4]
 80038c6:	f000 fcd4 	bl	8004272 <usbd_ep_read_packet>
 80038ca:	f8d4 3810 	ldr.w	r3, [r4, #2064]	; 0x810
 80038ce:	b2c0      	uxtb	r0, r0
 80038d0:	4418      	add	r0, r3
 80038d2:	f3c0 000a 	ubfx	r0, r0, #0, #11
 80038d6:	f8c4 0810 	str.w	r0, [r4, #2064]	; 0x810
 80038da:	bd10      	pop	{r4, pc}

080038dc <_usbrw_write>:
 80038dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80038de:	4605      	mov	r5, r0
 80038e0:	f8d0 3c18 	ldr.w	r3, [r0, #3096]	; 0xc18
 80038e4:	4614      	mov	r4, r2
 80038e6:	189e      	adds	r6, r3, r2
 80038e8:	f603 0018 	addw	r0, r3, #2072	; 0x818
 80038ec:	f5b6 6f80 	cmp.w	r6, #1024	; 0x400
 80038f0:	4428      	add	r0, r5
 80038f2:	d928      	bls.n	8003946 <_usbrw_write+0x6a>
 80038f4:	460f      	mov	r7, r1
 80038f6:	f5c3 6280 	rsb	r2, r3, #1024	; 0x400
 80038fa:	f001 fc43 	bl	8005184 <memcpy>
 80038fe:	f8d5 3c18 	ldr.w	r3, [r5, #3096]	; 0xc18
 8003902:	f5a4 6280 	sub.w	r2, r4, #1024	; 0x400
 8003906:	f5c3 6180 	rsb	r1, r3, #1024	; 0x400
 800390a:	4439      	add	r1, r7
 800390c:	441a      	add	r2, r3
 800390e:	f605 0018 	addw	r0, r5, #2072	; 0x818
 8003912:	f001 fc37 	bl	8005184 <memcpy>
 8003916:	f8d5 2c18 	ldr.w	r2, [r5, #3096]	; 0xc18
 800391a:	f895 3c20 	ldrb.w	r3, [r5, #3104]	; 0xc20
 800391e:	4414      	add	r4, r2
 8003920:	f3c4 0409 	ubfx	r4, r4, #0, #10
 8003924:	f8c5 4c18 	str.w	r4, [r5, #3096]	; 0xc18
 8003928:	b903      	cbnz	r3, 800392c <_usbrw_write+0x50>
 800392a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800392c:	2300      	movs	r3, #0
 800392e:	f8d5 2c1c 	ldr.w	r2, [r5, #3100]	; 0xc1c
 8003932:	f885 3c20 	strb.w	r3, [r5, #3104]	; 0xc20
 8003936:	1aa4      	subs	r4, r4, r2
 8003938:	429c      	cmp	r4, r3
 800393a:	db1a      	blt.n	8003972 <_usbrw_write+0x96>
 800393c:	d106      	bne.n	800394c <_usbrw_write+0x70>
 800393e:	2301      	movs	r3, #1
 8003940:	f885 3c20 	strb.w	r3, [r5, #3104]	; 0xc20
 8003944:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8003946:	f001 fc1d 	bl	8005184 <memcpy>
 800394a:	e7e4      	b.n	8003916 <_usbrw_write+0x3a>
 800394c:	2c40      	cmp	r4, #64	; 0x40
 800394e:	bfa8      	it	ge
 8003950:	2440      	movge	r4, #64	; 0x40
 8003952:	f602 0218 	addw	r2, r2, #2072	; 0x818
 8003956:	b2a3      	uxth	r3, r4
 8003958:	442a      	add	r2, r5
 800395a:	7869      	ldrb	r1, [r5, #1]
 800395c:	6868      	ldr	r0, [r5, #4]
 800395e:	f000 fc81 	bl	8004264 <usbd_ep_write_packet>
 8003962:	f8d5 3c1c 	ldr.w	r3, [r5, #3100]	; 0xc1c
 8003966:	441c      	add	r4, r3
 8003968:	f3c4 0409 	ubfx	r4, r4, #0, #10
 800396c:	f8c5 4c1c 	str.w	r4, [r5, #3100]	; 0xc1c
 8003970:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8003972:	f5c2 6480 	rsb	r4, r2, #1024	; 0x400
 8003976:	2c40      	cmp	r4, #64	; 0x40
 8003978:	bf28      	it	cs
 800397a:	2440      	movcs	r4, #64	; 0x40
 800397c:	e7e9      	b.n	8003952 <_usbrw_write+0x76>
 800397e:	bf00      	nop

08003980 <usbrw_new>:
 8003980:	f640 4024 	movw	r0, #3108	; 0xc24
 8003984:	f001 bbee 	b.w	8005164 <malloc>

08003988 <usbrw_init>:
 8003988:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800398c:	4604      	mov	r4, r0
 800398e:	4688      	mov	r8, r1
 8003990:	6800      	ldr	r0, [r0, #0]
 8003992:	f640 4124 	movw	r1, #3108	; 0xc24
 8003996:	4617      	mov	r7, r2
 8003998:	461e      	mov	r6, r3
 800399a:	f001 fbd9 	bl	8005150 <bzero>
 800399e:	2001      	movs	r0, #1
 80039a0:	6821      	ldr	r1, [r4, #0]
 80039a2:	4d06      	ldr	r5, [pc, #24]	; (80039bc <usbrw_init+0x34>)
 80039a4:	4c06      	ldr	r4, [pc, #24]	; (80039c0 <usbrw_init+0x38>)
 80039a6:	700f      	strb	r7, [r1, #0]
 80039a8:	704e      	strb	r6, [r1, #1]
 80039aa:	f8c1 8004 	str.w	r8, [r1, #4]
 80039ae:	e9c1 5402 	strd	r5, r4, [r1, #8]
 80039b2:	f881 0c20 	strb.w	r0, [r1, #3104]	; 0xc20
 80039b6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80039ba:	bf00      	nop
 80039bc:	080038b5 	.word	0x080038b5
 80039c0:	08003841 	.word	0x08003841

080039c4 <usbrw_read_nonblock>:
 80039c4:	f8d0 2810 	ldr.w	r2, [r0, #2064]	; 0x810
 80039c8:	f8d0 0814 	ldr.w	r0, [r0, #2068]	; 0x814
 80039cc:	1a10      	subs	r0, r2, r0
 80039ce:	f001 bbb7 	b.w	8005140 <abs>
 80039d2:	bf00      	nop

080039d4 <usbrw_read>:
 80039d4:	b570      	push	{r4, r5, r6, lr}
 80039d6:	4605      	mov	r5, r0
 80039d8:	f8d0 0810 	ldr.w	r0, [r0, #2064]	; 0x810
 80039dc:	f8d5 3814 	ldr.w	r3, [r5, #2068]	; 0x814
 80039e0:	4614      	mov	r4, r2
 80039e2:	1ac0      	subs	r0, r0, r3
 80039e4:	460e      	mov	r6, r1
 80039e6:	f001 fbab 	bl	8005140 <abs>
 80039ea:	42a0      	cmp	r0, r4
 80039ec:	dd10      	ble.n	8003a10 <usbrw_read+0x3c>
 80039ee:	f8d5 1814 	ldr.w	r1, [r5, #2068]	; 0x814
 80039f2:	4622      	mov	r2, r4
 80039f4:	3110      	adds	r1, #16
 80039f6:	4630      	mov	r0, r6
 80039f8:	4429      	add	r1, r5
 80039fa:	f001 fbc3 	bl	8005184 <memcpy>
 80039fe:	f8d5 3814 	ldr.w	r3, [r5, #2068]	; 0x814
 8003a02:	4620      	mov	r0, r4
 8003a04:	441c      	add	r4, r3
 8003a06:	f3c4 040a 	ubfx	r4, r4, #0, #11
 8003a0a:	f8c5 4814 	str.w	r4, [r5, #2068]	; 0x814
 8003a0e:	bd70      	pop	{r4, r5, r6, pc}
 8003a10:	f8d5 0810 	ldr.w	r0, [r5, #2064]	; 0x810
 8003a14:	f8d5 3814 	ldr.w	r3, [r5, #2068]	; 0x814
 8003a18:	1ac0      	subs	r0, r0, r3
 8003a1a:	f001 fb91 	bl	8005140 <abs>
 8003a1e:	4604      	mov	r4, r0
 8003a20:	e7e5      	b.n	80039ee <usbrw_read+0x1a>
 8003a22:	bf00      	nop

08003a24 <usbrw_write>:
 8003a24:	2a40      	cmp	r2, #64	; 0x40
 8003a26:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8003a2a:	fa5f f982 	uxtb.w	r9, r2
 8003a2e:	dd64      	ble.n	8003afa <usbrw_write+0xd6>
 8003a30:	f1a2 0641 	sub.w	r6, r2, #65	; 0x41
 8003a34:	f026 033f 	bic.w	r3, r6, #63	; 0x3f
 8003a38:	f101 0740 	add.w	r7, r1, #64	; 0x40
 8003a3c:	4604      	mov	r4, r0
 8003a3e:	4688      	mov	r8, r1
 8003a40:	460d      	mov	r5, r1
 8003a42:	441f      	add	r7, r3
 8003a44:	e01a      	b.n	8003a7c <usbrw_write+0x58>
 8003a46:	4629      	mov	r1, r5
 8003a48:	f001 fb9c 	bl	8005184 <memcpy>
 8003a4c:	f8d4 2c18 	ldr.w	r2, [r4, #3096]	; 0xc18
 8003a50:	f604 0018 	addw	r0, r4, #2072	; 0x818
 8003a54:	f5c2 6180 	rsb	r1, r2, #1024	; 0x400
 8003a58:	4429      	add	r1, r5
 8003a5a:	f5a2 7270 	sub.w	r2, r2, #960	; 0x3c0
 8003a5e:	f001 fb91 	bl	8005184 <memcpy>
 8003a62:	f8d4 3c18 	ldr.w	r3, [r4, #3096]	; 0xc18
 8003a66:	f894 2c20 	ldrb.w	r2, [r4, #3104]	; 0xc20
 8003a6a:	3340      	adds	r3, #64	; 0x40
 8003a6c:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8003a70:	f8c4 3c18 	str.w	r3, [r4, #3096]	; 0xc18
 8003a74:	b992      	cbnz	r2, 8003a9c <usbrw_write+0x78>
 8003a76:	3540      	adds	r5, #64	; 0x40
 8003a78:	42af      	cmp	r7, r5
 8003a7a:	d01e      	beq.n	8003aba <usbrw_write+0x96>
 8003a7c:	f8d4 3c18 	ldr.w	r3, [r4, #3096]	; 0xc18
 8003a80:	f603 0018 	addw	r0, r3, #2072	; 0x818
 8003a84:	f5c3 6280 	rsb	r2, r3, #1024	; 0x400
 8003a88:	3340      	adds	r3, #64	; 0x40
 8003a8a:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
 8003a8e:	4420      	add	r0, r4
 8003a90:	d8d9      	bhi.n	8003a46 <usbrw_write+0x22>
 8003a92:	2240      	movs	r2, #64	; 0x40
 8003a94:	4629      	mov	r1, r5
 8003a96:	f001 fb75 	bl	8005184 <memcpy>
 8003a9a:	e7e2      	b.n	8003a62 <usbrw_write+0x3e>
 8003a9c:	2100      	movs	r1, #0
 8003a9e:	f8d4 2c1c 	ldr.w	r2, [r4, #3100]	; 0xc1c
 8003aa2:	f884 1c20 	strb.w	r1, [r4, #3104]	; 0xc20
 8003aa6:	1a9b      	subs	r3, r3, r2
 8003aa8:	428b      	cmp	r3, r1
 8003aaa:	db2b      	blt.n	8003b04 <usbrw_write+0xe0>
 8003aac:	d111      	bne.n	8003ad2 <usbrw_write+0xae>
 8003aae:	2301      	movs	r3, #1
 8003ab0:	3540      	adds	r5, #64	; 0x40
 8003ab2:	42af      	cmp	r7, r5
 8003ab4:	f884 3c20 	strb.w	r3, [r4, #3104]	; 0xc20
 8003ab8:	d1e0      	bne.n	8003a7c <usbrw_write+0x58>
 8003aba:	f026 013f 	bic.w	r1, r6, #63	; 0x3f
 8003abe:	3140      	adds	r1, #64	; 0x40
 8003ac0:	eba9 0201 	sub.w	r2, r9, r1
 8003ac4:	4620      	mov	r0, r4
 8003ac6:	4441      	add	r1, r8
 8003ac8:	b2d2      	uxtb	r2, r2
 8003aca:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8003ace:	f7ff bf05 	b.w	80038dc <_usbrw_write>
 8003ad2:	2b40      	cmp	r3, #64	; 0x40
 8003ad4:	bfa8      	it	ge
 8003ad6:	2340      	movge	r3, #64	; 0x40
 8003ad8:	469a      	mov	sl, r3
 8003ada:	f602 0218 	addw	r2, r2, #2072	; 0x818
 8003ade:	b29b      	uxth	r3, r3
 8003ae0:	4422      	add	r2, r4
 8003ae2:	7861      	ldrb	r1, [r4, #1]
 8003ae4:	6860      	ldr	r0, [r4, #4]
 8003ae6:	f000 fbbd 	bl	8004264 <usbd_ep_write_packet>
 8003aea:	f8d4 3c1c 	ldr.w	r3, [r4, #3100]	; 0xc1c
 8003aee:	4453      	add	r3, sl
 8003af0:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8003af4:	f8c4 3c1c 	str.w	r3, [r4, #3100]	; 0xc1c
 8003af8:	e7bd      	b.n	8003a76 <usbrw_write+0x52>
 8003afa:	464a      	mov	r2, r9
 8003afc:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8003b00:	f7ff beec 	b.w	80038dc <_usbrw_write>
 8003b04:	f5c2 6a80 	rsb	sl, r2, #1024	; 0x400
 8003b08:	f1ba 0f40 	cmp.w	sl, #64	; 0x40
 8003b0c:	bf28      	it	cs
 8003b0e:	f04f 0a40 	movcs.w	sl, #64	; 0x40
 8003b12:	f602 0218 	addw	r2, r2, #2072	; 0x818
 8003b16:	fa1f f38a 	uxth.w	r3, sl
 8003b1a:	4422      	add	r2, r4
 8003b1c:	7861      	ldrb	r1, [r4, #1]
 8003b1e:	6860      	ldr	r0, [r4, #4]
 8003b20:	f000 fba0 	bl	8004264 <usbd_ep_write_packet>
 8003b24:	f8d4 3c1c 	ldr.w	r3, [r4, #3100]	; 0xc1c
 8003b28:	449a      	add	sl, r3
 8003b2a:	f3ca 0309 	ubfx	r3, sl, #0, #10
 8003b2e:	f8c4 3c1c 	str.w	r3, [r4, #3100]	; 0xc1c
 8003b32:	e7a0      	b.n	8003a76 <usbrw_write+0x52>

08003b34 <usbhid_data_rx_cb>:
 8003b34:	4b01      	ldr	r3, [pc, #4]	; (8003b3c <usbhid_data_rx_cb+0x8>)
 8003b36:	6818      	ldr	r0, [r3, #0]
 8003b38:	6883      	ldr	r3, [r0, #8]
 8003b3a:	4718      	bx	r3
 8003b3c:	20000570 	.word	0x20000570

08003b40 <usbhid_data_tx_cb>:
 8003b40:	4b01      	ldr	r3, [pc, #4]	; (8003b48 <usbhid_data_tx_cb+0x8>)
 8003b42:	6818      	ldr	r0, [r3, #0]
 8003b44:	68c3      	ldr	r3, [r0, #12]
 8003b46:	4718      	bx	r3
 8003b48:	20000570 	.word	0x20000570

08003b4c <stdout_data_rx_cb>:
 8003b4c:	4b01      	ldr	r3, [pc, #4]	; (8003b54 <stdout_data_rx_cb+0x8>)
 8003b4e:	6818      	ldr	r0, [r3, #0]
 8003b50:	6883      	ldr	r3, [r0, #8]
 8003b52:	4718      	bx	r3
 8003b54:	200004ec 	.word	0x200004ec

08003b58 <stdout_data_tx_cb>:
 8003b58:	4b01      	ldr	r3, [pc, #4]	; (8003b60 <stdout_data_tx_cb+0x8>)
 8003b5a:	6818      	ldr	r0, [r3, #0]
 8003b5c:	68c3      	ldr	r3, [r0, #12]
 8003b5e:	4718      	bx	r3
 8003b60:	200004ec 	.word	0x200004ec

08003b64 <comp_set_config>:
 8003b64:	b510      	push	{r4, lr}
 8003b66:	4604      	mov	r4, r0
 8003b68:	4a18      	ldr	r2, [pc, #96]	; (8003bcc <comp_set_config+0x68>)
 8003b6a:	b082      	sub	sp, #8
 8003b6c:	9200      	str	r2, [sp, #0]
 8003b6e:	2340      	movs	r3, #64	; 0x40
 8003b70:	2203      	movs	r2, #3
 8003b72:	2101      	movs	r1, #1
 8003b74:	f000 fb56 	bl	8004224 <usbd_ep_setup>
 8003b78:	4b15      	ldr	r3, [pc, #84]	; (8003bd0 <comp_set_config+0x6c>)
 8003b7a:	4620      	mov	r0, r4
 8003b7c:	9300      	str	r3, [sp, #0]
 8003b7e:	2203      	movs	r2, #3
 8003b80:	2340      	movs	r3, #64	; 0x40
 8003b82:	2181      	movs	r1, #129	; 0x81
 8003b84:	f000 fb4e 	bl	8004224 <usbd_ep_setup>
 8003b88:	2202      	movs	r2, #2
 8003b8a:	4b12      	ldr	r3, [pc, #72]	; (8003bd4 <comp_set_config+0x70>)
 8003b8c:	4620      	mov	r0, r4
 8003b8e:	4611      	mov	r1, r2
 8003b90:	9300      	str	r3, [sp, #0]
 8003b92:	2340      	movs	r3, #64	; 0x40
 8003b94:	f000 fb46 	bl	8004224 <usbd_ep_setup>
 8003b98:	4b0f      	ldr	r3, [pc, #60]	; (8003bd8 <comp_set_config+0x74>)
 8003b9a:	4620      	mov	r0, r4
 8003b9c:	9300      	str	r3, [sp, #0]
 8003b9e:	2202      	movs	r2, #2
 8003ba0:	2340      	movs	r3, #64	; 0x40
 8003ba2:	2182      	movs	r1, #130	; 0x82
 8003ba4:	f000 fb3e 	bl	8004224 <usbd_ep_setup>
 8003ba8:	2300      	movs	r3, #0
 8003baa:	4620      	mov	r0, r4
 8003bac:	9300      	str	r3, [sp, #0]
 8003bae:	2203      	movs	r2, #3
 8003bb0:	2310      	movs	r3, #16
 8003bb2:	2183      	movs	r1, #131	; 0x83
 8003bb4:	f000 fb36 	bl	8004224 <usbd_ep_setup>
 8003bb8:	4620      	mov	r0, r4
 8003bba:	227f      	movs	r2, #127	; 0x7f
 8003bbc:	2101      	movs	r1, #1
 8003bbe:	4b07      	ldr	r3, [pc, #28]	; (8003bdc <comp_set_config+0x78>)
 8003bc0:	b002      	add	sp, #8
 8003bc2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8003bc6:	f000 bc1b 	b.w	8004400 <usbd_register_control_callback>
 8003bca:	bf00      	nop
 8003bcc:	08003b35 	.word	0x08003b35
 8003bd0:	08003b41 	.word	0x08003b41
 8003bd4:	08003b4d 	.word	0x08003b4d
 8003bd8:	08003b59 	.word	0x08003b59
 8003bdc:	08003be1 	.word	0x08003be1

08003be0 <cdcacm_control_request>:
 8003be0:	b410      	push	{r4}
 8003be2:	780c      	ldrb	r4, [r1, #0]
 8003be4:	f004 0060 	and.w	r0, r4, #96	; 0x60
 8003be8:	0624      	lsls	r4, r4, #24
 8003bea:	d40e      	bmi.n	8003c0a <cdcacm_control_request+0x2a>
 8003bec:	2820      	cmp	r0, #32
 8003bee:	d002      	beq.n	8003bf6 <cdcacm_control_request+0x16>
 8003bf0:	2000      	movs	r0, #0
 8003bf2:	bc10      	pop	{r4}
 8003bf4:	4770      	bx	lr
 8003bf6:	7848      	ldrb	r0, [r1, #1]
 8003bf8:	2820      	cmp	r0, #32
 8003bfa:	d015      	beq.n	8003c28 <cdcacm_control_request+0x48>
 8003bfc:	f1a0 0022 	sub.w	r0, r0, #34	; 0x22
 8003c00:	fab0 f080 	clz	r0, r0
 8003c04:	bc10      	pop	{r4}
 8003c06:	0940      	lsrs	r0, r0, #5
 8003c08:	4770      	bx	lr
 8003c0a:	2800      	cmp	r0, #0
 8003c0c:	d1ee      	bne.n	8003bec <cdcacm_control_request+0xc>
 8003c0e:	784c      	ldrb	r4, [r1, #1]
 8003c10:	2c06      	cmp	r4, #6
 8003c12:	d1ee      	bne.n	8003bf2 <cdcacm_control_request+0x12>
 8003c14:	8849      	ldrh	r1, [r1, #2]
 8003c16:	f5b1 5f08 	cmp.w	r1, #8704	; 0x2200
 8003c1a:	d1ea      	bne.n	8003bf2 <cdcacm_control_request+0x12>
 8003c1c:	2121      	movs	r1, #33	; 0x21
 8003c1e:	4c06      	ldr	r4, [pc, #24]	; (8003c38 <cdcacm_control_request+0x58>)
 8003c20:	2001      	movs	r0, #1
 8003c22:	6014      	str	r4, [r2, #0]
 8003c24:	8019      	strh	r1, [r3, #0]
 8003c26:	e7e4      	b.n	8003bf2 <cdcacm_control_request+0x12>
 8003c28:	8818      	ldrh	r0, [r3, #0]
 8003c2a:	bc10      	pop	{r4}
 8003c2c:	2806      	cmp	r0, #6
 8003c2e:	bf94      	ite	ls
 8003c30:	2000      	movls	r0, #0
 8003c32:	2001      	movhi	r0, #1
 8003c34:	4770      	bx	lr
 8003c36:	bf00      	nop
 8003c38:	08005640 	.word	0x08005640

08003c3c <_write>:
 8003c3c:	2801      	cmp	r0, #1
 8003c3e:	b510      	push	{r4, lr}
 8003c40:	d106      	bne.n	8003c50 <_write+0x14>
 8003c42:	4b07      	ldr	r3, [pc, #28]	; (8003c60 <_write+0x24>)
 8003c44:	4614      	mov	r4, r2
 8003c46:	6818      	ldr	r0, [r3, #0]
 8003c48:	f7ff feec 	bl	8003a24 <usbrw_write>
 8003c4c:	4620      	mov	r0, r4
 8003c4e:	bd10      	pop	{r4, pc}
 8003c50:	f001 fa82 	bl	8005158 <__errno>
 8003c54:	2305      	movs	r3, #5
 8003c56:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8003c5a:	6003      	str	r3, [r0, #0]
 8003c5c:	e7f6      	b.n	8003c4c <_write+0x10>
 8003c5e:	bf00      	nop
 8003c60:	200004ec 	.word	0x200004ec

08003c64 <_read>:
 8003c64:	b570      	push	{r4, r5, r6, lr}
 8003c66:	b980      	cbnz	r0, 8003c8a <_read+0x26>
 8003c68:	4c0b      	ldr	r4, [pc, #44]	; (8003c98 <_read+0x34>)
 8003c6a:	460d      	mov	r5, r1
 8003c6c:	6820      	ldr	r0, [r4, #0]
 8003c6e:	4616      	mov	r6, r2
 8003c70:	f7ff fea8 	bl	80039c4 <usbrw_read_nonblock>
 8003c74:	4603      	mov	r3, r0
 8003c76:	b908      	cbnz	r0, 8003c7c <_read+0x18>
 8003c78:	4618      	mov	r0, r3
 8003c7a:	bd70      	pop	{r4, r5, r6, pc}
 8003c7c:	4632      	mov	r2, r6
 8003c7e:	4629      	mov	r1, r5
 8003c80:	6820      	ldr	r0, [r4, #0]
 8003c82:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8003c86:	f7ff bea5 	b.w	80039d4 <usbrw_read>
 8003c8a:	f001 fa65 	bl	8005158 <__errno>
 8003c8e:	2205      	movs	r2, #5
 8003c90:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8003c94:	6002      	str	r2, [r0, #0]
 8003c96:	e7ef      	b.n	8003c78 <_read+0x14>
 8003c98:	200004ec 	.word	0x200004ec

08003c9c <usb_cdcacm_init>:
 8003c9c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8003c9e:	b085      	sub	sp, #20
 8003ca0:	f7ff fe6e 	bl	8003980 <usbrw_new>
 8003ca4:	4f18      	ldr	r7, [pc, #96]	; (8003d08 <usb_cdcacm_init+0x6c>)
 8003ca6:	4d19      	ldr	r5, [pc, #100]	; (8003d0c <usb_cdcacm_init+0x70>)
 8003ca8:	6038      	str	r0, [r7, #0]
 8003caa:	f7ff fe69 	bl	8003980 <usbrw_new>
 8003cae:	2180      	movs	r1, #128	; 0x80
 8003cb0:	2203      	movs	r2, #3
 8003cb2:	4b17      	ldr	r3, [pc, #92]	; (8003d10 <usb_cdcacm_init+0x74>)
 8003cb4:	6028      	str	r0, [r5, #0]
 8003cb6:	e9cd 2300 	strd	r2, r3, [sp]
 8003cba:	9102      	str	r1, [sp, #8]
 8003cbc:	4b15      	ldr	r3, [pc, #84]	; (8003d14 <usb_cdcacm_init+0x78>)
 8003cbe:	4a16      	ldr	r2, [pc, #88]	; (8003d18 <usb_cdcacm_init+0x7c>)
 8003cc0:	4916      	ldr	r1, [pc, #88]	; (8003d1c <usb_cdcacm_init+0x80>)
 8003cc2:	4817      	ldr	r0, [pc, #92]	; (8003d20 <usb_cdcacm_init+0x84>)
 8003cc4:	f000 fa82 	bl	80041cc <usbd_init>
 8003cc8:	4606      	mov	r6, r0
 8003cca:	4c16      	ldr	r4, [pc, #88]	; (8003d24 <usb_cdcacm_init+0x88>)
 8003ccc:	4638      	mov	r0, r7
 8003cce:	4631      	mov	r1, r6
 8003cd0:	2381      	movs	r3, #129	; 0x81
 8003cd2:	2201      	movs	r2, #1
 8003cd4:	6026      	str	r6, [r4, #0]
 8003cd6:	f7ff fe57 	bl	8003988 <usbrw_init>
 8003cda:	2382      	movs	r3, #130	; 0x82
 8003cdc:	2202      	movs	r2, #2
 8003cde:	4628      	mov	r0, r5
 8003ce0:	6821      	ldr	r1, [r4, #0]
 8003ce2:	f7ff fe51 	bl	8003988 <usbrw_init>
 8003ce6:	6820      	ldr	r0, [r4, #0]
 8003ce8:	490f      	ldr	r1, [pc, #60]	; (8003d28 <usb_cdcacm_init+0x8c>)
 8003cea:	f000 fe60 	bl	80049ae <usbd_register_set_config_callback>
 8003cee:	2120      	movs	r1, #32
 8003cf0:	2014      	movs	r0, #20
 8003cf2:	f000 ffa1 	bl	8004c38 <nvic_set_priority>
 8003cf6:	2014      	movs	r0, #20
 8003cf8:	f000 ff90 	bl	8004c1c <nvic_enable_irq>
 8003cfc:	202a      	movs	r0, #42	; 0x2a
 8003cfe:	b005      	add	sp, #20
 8003d00:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
 8003d04:	f000 bf8a 	b.w	8004c1c <nvic_enable_irq>
 8003d08:	20000570 	.word	0x20000570
 8003d0c:	200004ec 	.word	0x200004ec
 8003d10:	200004f0 	.word	0x200004f0
 8003d14:	20000010 	.word	0x20000010
 8003d18:	080055a0 	.word	0x080055a0
 8003d1c:	080055e8 	.word	0x080055e8
 8003d20:	080056b4 	.word	0x080056b4
 8003d24:	200004e8 	.word	0x200004e8
 8003d28:	08003b65 	.word	0x08003b65

08003d2c <usb_lp_can_rx0_isr>:
 8003d2c:	4b01      	ldr	r3, [pc, #4]	; (8003d34 <usb_lp_can_rx0_isr+0x8>)
 8003d2e:	6818      	ldr	r0, [r3, #0]
 8003d30:	f000 ba74 	b.w	800421c <usbd_poll>
 8003d34:	200004e8 	.word	0x200004e8

08003d38 <usb_wakeup_isr>:
 8003d38:	4b01      	ldr	r3, [pc, #4]	; (8003d40 <usb_wakeup_isr+0x8>)
 8003d3a:	6818      	ldr	r0, [r3, #0]
 8003d3c:	f000 ba6e 	b.w	800421c <usbd_poll>
 8003d40:	200004e8 	.word	0x200004e8

08003d44 <gpio_set_mode>:
 8003d44:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003d48:	f04f 0c0f 	mov.w	ip, #15
 8003d4c:	2500      	movs	r5, #0
 8003d4e:	6807      	ldr	r7, [r0, #0]
 8003d50:	6846      	ldr	r6, [r0, #4]
 8003d52:	fa43 f405 	asr.w	r4, r3, r5
 8003d56:	07e4      	lsls	r4, r4, #31
 8003d58:	d51c      	bpl.n	8003d94 <gpio_set_mode+0x50>
 8003d5a:	2d07      	cmp	r5, #7
 8003d5c:	bf94      	ite	ls
 8003d5e:	46be      	movls	lr, r7
 8003d60:	46b6      	movhi	lr, r6
 8003d62:	b2ac      	uxth	r4, r5
 8003d64:	ea4f 0484 	mov.w	r4, r4, lsl #2
 8003d68:	bf8a      	itet	hi
 8003d6a:	3c20      	subhi	r4, #32
 8003d6c:	b2a4      	uxthls	r4, r4
 8003d6e:	b2a4      	uxthhi	r4, r4
 8003d70:	fa0c f804 	lsl.w	r8, ip, r4
 8003d74:	ea2e 0808 	bic.w	r8, lr, r8
 8003d78:	f104 0e02 	add.w	lr, r4, #2
 8003d7c:	fa02 fe0e 	lsl.w	lr, r2, lr
 8003d80:	fa01 f404 	lsl.w	r4, r1, r4
 8003d84:	ea4e 0404 	orr.w	r4, lr, r4
 8003d88:	ea44 0408 	orr.w	r4, r4, r8
 8003d8c:	2d07      	cmp	r5, #7
 8003d8e:	bf94      	ite	ls
 8003d90:	4627      	movls	r7, r4
 8003d92:	4626      	movhi	r6, r4
 8003d94:	3501      	adds	r5, #1
 8003d96:	2d10      	cmp	r5, #16
 8003d98:	d1db      	bne.n	8003d52 <gpio_set_mode+0xe>
 8003d9a:	6007      	str	r7, [r0, #0]
 8003d9c:	6046      	str	r6, [r0, #4]
 8003d9e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	...

08003da4 <rcc_osc_on.part.1>:
 8003da4:	4a02      	ldr	r2, [pc, #8]	; (8003db0 <rcc_osc_on.part.1+0xc>)
 8003da6:	6813      	ldr	r3, [r2, #0]
 8003da8:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8003dac:	6013      	str	r3, [r2, #0]
 8003dae:	4770      	bx	lr
 8003db0:	40021000 	.word	0x40021000

08003db4 <rcc_is_osc_ready>:
 8003db4:	2806      	cmp	r0, #6
 8003db6:	d822      	bhi.n	8003dfe <rcc_is_osc_ready+0x4a>
 8003db8:	e8df f000 	tbb	[pc, r0]
 8003dbc:	130e0904 	.word	0x130e0904
 8003dc0:	1d18      	.short	0x1d18
 8003dc2:	1f          	.byte	0x1f
 8003dc3:	00          	.byte	0x00
 8003dc4:	4b0f      	ldr	r3, [pc, #60]	; (8003e04 <rcc_is_osc_ready+0x50>)
 8003dc6:	6818      	ldr	r0, [r3, #0]
 8003dc8:	f3c0 6040 	ubfx	r0, r0, #25, #1
 8003dcc:	4770      	bx	lr
 8003dce:	4b0d      	ldr	r3, [pc, #52]	; (8003e04 <rcc_is_osc_ready+0x50>)
 8003dd0:	6818      	ldr	r0, [r3, #0]
 8003dd2:	f3c0 60c0 	ubfx	r0, r0, #27, #1
 8003dd6:	4770      	bx	lr
 8003dd8:	4b0a      	ldr	r3, [pc, #40]	; (8003e04 <rcc_is_osc_ready+0x50>)
 8003dda:	6818      	ldr	r0, [r3, #0]
 8003ddc:	f3c0 7040 	ubfx	r0, r0, #29, #1
 8003de0:	4770      	bx	lr
 8003de2:	4b08      	ldr	r3, [pc, #32]	; (8003e04 <rcc_is_osc_ready+0x50>)
 8003de4:	6818      	ldr	r0, [r3, #0]
 8003de6:	f3c0 4040 	ubfx	r0, r0, #17, #1
 8003dea:	4770      	bx	lr
 8003dec:	4b05      	ldr	r3, [pc, #20]	; (8003e04 <rcc_is_osc_ready+0x50>)
 8003dee:	6818      	ldr	r0, [r3, #0]
 8003df0:	f3c0 0040 	ubfx	r0, r0, #1, #1
 8003df4:	4770      	bx	lr
 8003df6:	4b04      	ldr	r3, [pc, #16]	; (8003e08 <rcc_is_osc_ready+0x54>)
 8003df8:	e7f9      	b.n	8003dee <rcc_is_osc_ready+0x3a>
 8003dfa:	4b04      	ldr	r3, [pc, #16]	; (8003e0c <rcc_is_osc_ready+0x58>)
 8003dfc:	e7f7      	b.n	8003dee <rcc_is_osc_ready+0x3a>
 8003dfe:	2000      	movs	r0, #0
 8003e00:	4770      	bx	lr
 8003e02:	bf00      	nop
 8003e04:	40021000 	.word	0x40021000
 8003e08:	40021020 	.word	0x40021020
 8003e0c:	40021024 	.word	0x40021024

08003e10 <rcc_wait_for_osc_ready>:
 8003e10:	4602      	mov	r2, r0
 8003e12:	b508      	push	{r3, lr}
 8003e14:	4610      	mov	r0, r2
 8003e16:	f7ff ffcd 	bl	8003db4 <rcc_is_osc_ready>
 8003e1a:	2800      	cmp	r0, #0
 8003e1c:	d0fa      	beq.n	8003e14 <rcc_wait_for_osc_ready+0x4>
 8003e1e:	bd08      	pop	{r3, pc}

08003e20 <rcc_osc_on>:
 8003e20:	2806      	cmp	r0, #6
 8003e22:	d80c      	bhi.n	8003e3e <rcc_osc_on+0x1e>
 8003e24:	e8df f000 	tbb	[pc, r0]
 8003e28:	110c0604 	.word	0x110c0604
 8003e2c:	1b16      	.short	0x1b16
 8003e2e:	1d          	.byte	0x1d
 8003e2f:	00          	.byte	0x00
 8003e30:	f7ff bfb8 	b.w	8003da4 <rcc_osc_on.part.1>
 8003e34:	4a0c      	ldr	r2, [pc, #48]	; (8003e68 <rcc_osc_on+0x48>)
 8003e36:	6813      	ldr	r3, [r2, #0]
 8003e38:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
 8003e3c:	6013      	str	r3, [r2, #0]
 8003e3e:	4770      	bx	lr
 8003e40:	4a09      	ldr	r2, [pc, #36]	; (8003e68 <rcc_osc_on+0x48>)
 8003e42:	6813      	ldr	r3, [r2, #0]
 8003e44:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 8003e48:	e7f8      	b.n	8003e3c <rcc_osc_on+0x1c>
 8003e4a:	4a07      	ldr	r2, [pc, #28]	; (8003e68 <rcc_osc_on+0x48>)
 8003e4c:	6813      	ldr	r3, [r2, #0]
 8003e4e:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8003e52:	e7f3      	b.n	8003e3c <rcc_osc_on+0x1c>
 8003e54:	4a04      	ldr	r2, [pc, #16]	; (8003e68 <rcc_osc_on+0x48>)
 8003e56:	6813      	ldr	r3, [r2, #0]
 8003e58:	f043 0301 	orr.w	r3, r3, #1
 8003e5c:	e7ee      	b.n	8003e3c <rcc_osc_on+0x1c>
 8003e5e:	4a03      	ldr	r2, [pc, #12]	; (8003e6c <rcc_osc_on+0x4c>)
 8003e60:	e7f9      	b.n	8003e56 <rcc_osc_on+0x36>
 8003e62:	4a03      	ldr	r2, [pc, #12]	; (8003e70 <rcc_osc_on+0x50>)
 8003e64:	e7f7      	b.n	8003e56 <rcc_osc_on+0x36>
 8003e66:	bf00      	nop
 8003e68:	40021000 	.word	0x40021000
 8003e6c:	40021020 	.word	0x40021020
 8003e70:	40021024 	.word	0x40021024

08003e74 <rcc_set_sysclk_source>:
 8003e74:	4a03      	ldr	r2, [pc, #12]	; (8003e84 <rcc_set_sysclk_source+0x10>)
 8003e76:	6813      	ldr	r3, [r2, #0]
 8003e78:	f023 0303 	bic.w	r3, r3, #3
 8003e7c:	4318      	orrs	r0, r3
 8003e7e:	6010      	str	r0, [r2, #0]
 8003e80:	4770      	bx	lr
 8003e82:	bf00      	nop
 8003e84:	40021004 	.word	0x40021004

08003e88 <rcc_set_pll_multiplication_factor>:
 8003e88:	4a03      	ldr	r2, [pc, #12]	; (8003e98 <rcc_set_pll_multiplication_factor+0x10>)
 8003e8a:	6813      	ldr	r3, [r2, #0]
 8003e8c:	f423 1370 	bic.w	r3, r3, #3932160	; 0x3c0000
 8003e90:	ea43 4080 	orr.w	r0, r3, r0, lsl #18
 8003e94:	6010      	str	r0, [r2, #0]
 8003e96:	4770      	bx	lr
 8003e98:	40021004 	.word	0x40021004

08003e9c <rcc_set_pll_source>:
 8003e9c:	4a03      	ldr	r2, [pc, #12]	; (8003eac <rcc_set_pll_source+0x10>)
 8003e9e:	6813      	ldr	r3, [r2, #0]
 8003ea0:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8003ea4:	ea43 4000 	orr.w	r0, r3, r0, lsl #16
 8003ea8:	6010      	str	r0, [r2, #0]
 8003eaa:	4770      	bx	lr
 8003eac:	40021004 	.word	0x40021004

08003eb0 <rcc_set_pllxtpre>:
 8003eb0:	4a03      	ldr	r2, [pc, #12]	; (8003ec0 <rcc_set_pllxtpre+0x10>)
 8003eb2:	6813      	ldr	r3, [r2, #0]
 8003eb4:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8003eb8:	ea43 4040 	orr.w	r0, r3, r0, lsl #17
 8003ebc:	6010      	str	r0, [r2, #0]
 8003ebe:	4770      	bx	lr
 8003ec0:	40021004 	.word	0x40021004

08003ec4 <rcc_set_adcpre>:
 8003ec4:	4a03      	ldr	r2, [pc, #12]	; (8003ed4 <rcc_set_adcpre+0x10>)
 8003ec6:	6813      	ldr	r3, [r2, #0]
 8003ec8:	f423 4340 	bic.w	r3, r3, #49152	; 0xc000
 8003ecc:	ea43 3080 	orr.w	r0, r3, r0, lsl #14
 8003ed0:	6010      	str	r0, [r2, #0]
 8003ed2:	4770      	bx	lr
 8003ed4:	40021004 	.word	0x40021004

08003ed8 <rcc_set_ppre2>:
 8003ed8:	4a03      	ldr	r2, [pc, #12]	; (8003ee8 <rcc_set_ppre2+0x10>)
 8003eda:	6813      	ldr	r3, [r2, #0]
 8003edc:	f423 5360 	bic.w	r3, r3, #14336	; 0x3800
 8003ee0:	ea43 20c0 	orr.w	r0, r3, r0, lsl #11
 8003ee4:	6010      	str	r0, [r2, #0]
 8003ee6:	4770      	bx	lr
 8003ee8:	40021004 	.word	0x40021004

08003eec <rcc_set_ppre1>:
 8003eec:	4a03      	ldr	r2, [pc, #12]	; (8003efc <rcc_set_ppre1+0x10>)
 8003eee:	6813      	ldr	r3, [r2, #0]
 8003ef0:	f423 63e0 	bic.w	r3, r3, #1792	; 0x700
 8003ef4:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
 8003ef8:	6010      	str	r0, [r2, #0]
 8003efa:	4770      	bx	lr
 8003efc:	40021004 	.word	0x40021004

08003f00 <rcc_set_hpre>:
 8003f00:	4a03      	ldr	r2, [pc, #12]	; (8003f10 <rcc_set_hpre+0x10>)
 8003f02:	6813      	ldr	r3, [r2, #0]
 8003f04:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 8003f08:	ea43 1000 	orr.w	r0, r3, r0, lsl #4
 8003f0c:	6010      	str	r0, [r2, #0]
 8003f0e:	4770      	bx	lr
 8003f10:	40021004 	.word	0x40021004

08003f14 <rcc_clock_setup_in_hse_8mhz_out_72mhz>:
 8003f14:	b508      	push	{r3, lr}
 8003f16:	2004      	movs	r0, #4
 8003f18:	f7ff ff82 	bl	8003e20 <rcc_osc_on>
 8003f1c:	2004      	movs	r0, #4
 8003f1e:	f7ff ff77 	bl	8003e10 <rcc_wait_for_osc_ready>
 8003f22:	2000      	movs	r0, #0
 8003f24:	f7ff ffa6 	bl	8003e74 <rcc_set_sysclk_source>
 8003f28:	2003      	movs	r0, #3
 8003f2a:	f7ff ff79 	bl	8003e20 <rcc_osc_on>
 8003f2e:	2003      	movs	r0, #3
 8003f30:	f7ff ff6e 	bl	8003e10 <rcc_wait_for_osc_ready>
 8003f34:	2001      	movs	r0, #1
 8003f36:	f7ff ff9d 	bl	8003e74 <rcc_set_sysclk_source>
 8003f3a:	2000      	movs	r0, #0
 8003f3c:	f7ff ffe0 	bl	8003f00 <rcc_set_hpre>
 8003f40:	2003      	movs	r0, #3
 8003f42:	f7ff ffbf 	bl	8003ec4 <rcc_set_adcpre>
 8003f46:	2004      	movs	r0, #4
 8003f48:	f7ff ffd0 	bl	8003eec <rcc_set_ppre1>
 8003f4c:	2000      	movs	r0, #0
 8003f4e:	f7ff ffc3 	bl	8003ed8 <rcc_set_ppre2>
 8003f52:	2002      	movs	r0, #2
 8003f54:	f000 f8e4 	bl	8004120 <flash_set_ws>
 8003f58:	2007      	movs	r0, #7
 8003f5a:	f7ff ff95 	bl	8003e88 <rcc_set_pll_multiplication_factor>
 8003f5e:	2001      	movs	r0, #1
 8003f60:	f7ff ff9c 	bl	8003e9c <rcc_set_pll_source>
 8003f64:	2000      	movs	r0, #0
 8003f66:	f7ff ffa3 	bl	8003eb0 <rcc_set_pllxtpre>
 8003f6a:	f7ff ff1b 	bl	8003da4 <rcc_osc_on.part.1>
 8003f6e:	2000      	movs	r0, #0
 8003f70:	f7ff ff4e 	bl	8003e10 <rcc_wait_for_osc_ready>
 8003f74:	2002      	movs	r0, #2
 8003f76:	f7ff ff7d 	bl	8003e74 <rcc_set_sysclk_source>
 8003f7a:	4b04      	ldr	r3, [pc, #16]	; (8003f8c <rcc_clock_setup_in_hse_8mhz_out_72mhz+0x78>)
 8003f7c:	4a04      	ldr	r2, [pc, #16]	; (8003f90 <rcc_clock_setup_in_hse_8mhz_out_72mhz+0x7c>)
 8003f7e:	4905      	ldr	r1, [pc, #20]	; (8003f94 <rcc_clock_setup_in_hse_8mhz_out_72mhz+0x80>)
 8003f80:	6013      	str	r3, [r2, #0]
 8003f82:	4a05      	ldr	r2, [pc, #20]	; (8003f98 <rcc_clock_setup_in_hse_8mhz_out_72mhz+0x84>)
 8003f84:	6011      	str	r1, [r2, #0]
 8003f86:	4a05      	ldr	r2, [pc, #20]	; (8003f9c <rcc_clock_setup_in_hse_8mhz_out_72mhz+0x88>)
 8003f88:	6013      	str	r3, [r2, #0]
 8003f8a:	bd08      	pop	{r3, pc}
 8003f8c:	044aa200 	.word	0x044aa200
 8003f90:	2000001c 	.word	0x2000001c
 8003f94:	02255100 	.word	0x02255100
 8003f98:	20000020 	.word	0x20000020
 8003f9c:	20000024 	.word	0x20000024

08003fa0 <gpio_set>:
 8003fa0:	6101      	str	r1, [r0, #16]
 8003fa2:	4770      	bx	lr

08003fa4 <gpio_clear>:
 8003fa4:	0409      	lsls	r1, r1, #16
 8003fa6:	6101      	str	r1, [r0, #16]
 8003fa8:	4770      	bx	lr

08003faa <gpio_get>:
 8003faa:	6880      	ldr	r0, [r0, #8]
 8003fac:	4008      	ands	r0, r1
 8003fae:	4770      	bx	lr

08003fb0 <gpio_toggle>:
 8003fb0:	68c3      	ldr	r3, [r0, #12]
 8003fb2:	ea01 0203 	and.w	r2, r1, r3
 8003fb6:	ea21 0103 	bic.w	r1, r1, r3
 8003fba:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
 8003fbe:	6101      	str	r1, [r0, #16]
 8003fc0:	4770      	bx	lr

08003fc2 <gpio_port_read>:
 8003fc2:	6880      	ldr	r0, [r0, #8]
 8003fc4:	b280      	uxth	r0, r0
 8003fc6:	4770      	bx	lr

08003fc8 <gpio_port_write>:
 8003fc8:	60c1      	str	r1, [r0, #12]
 8003fca:	4770      	bx	lr

08003fcc <i2c_peripheral_enable>:
 8003fcc:	6803      	ldr	r3, [r0, #0]
 8003fce:	f043 0301 	orr.w	r3, r3, #1
 8003fd2:	6003      	str	r3, [r0, #0]
 8003fd4:	4770      	bx	lr

08003fd6 <i2c_peripheral_disable>:
 8003fd6:	6803      	ldr	r3, [r0, #0]
 8003fd8:	f023 0301 	bic.w	r3, r3, #1
 8003fdc:	6003      	str	r3, [r0, #0]
 8003fde:	4770      	bx	lr

08003fe0 <i2c_send_start>:
 8003fe0:	6803      	ldr	r3, [r0, #0]
 8003fe2:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8003fe6:	6003      	str	r3, [r0, #0]
 8003fe8:	4770      	bx	lr

08003fea <i2c_send_stop>:
 8003fea:	6803      	ldr	r3, [r0, #0]
 8003fec:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8003ff0:	6003      	str	r3, [r0, #0]
 8003ff2:	4770      	bx	lr

08003ff4 <i2c_set_own_7bit_slave_address>:
 8003ff4:	0049      	lsls	r1, r1, #1
 8003ff6:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8003ffa:	6081      	str	r1, [r0, #8]
 8003ffc:	4770      	bx	lr

08003ffe <i2c_set_clock_frequency>:
 8003ffe:	6843      	ldr	r3, [r0, #4]
 8004000:	f023 033f 	bic.w	r3, r3, #63	; 0x3f
 8004004:	b29b      	uxth	r3, r3
 8004006:	4319      	orrs	r1, r3
 8004008:	6041      	str	r1, [r0, #4]
 800400a:	4770      	bx	lr

0800400c <i2c_send_data>:
 800400c:	6101      	str	r1, [r0, #16]
 800400e:	4770      	bx	lr

08004010 <i2c_set_fast_mode>:
 8004010:	69c3      	ldr	r3, [r0, #28]
 8004012:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8004016:	61c3      	str	r3, [r0, #28]
 8004018:	4770      	bx	lr

0800401a <i2c_set_ccr>:
 800401a:	69c3      	ldr	r3, [r0, #28]
 800401c:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8004020:	4319      	orrs	r1, r3
 8004022:	61c1      	str	r1, [r0, #28]
 8004024:	4770      	bx	lr

08004026 <i2c_set_trise>:
 8004026:	6201      	str	r1, [r0, #32]
 8004028:	4770      	bx	lr

0800402a <i2c_send_7bit_address>:
 800402a:	ea42 0241 	orr.w	r2, r2, r1, lsl #1
 800402e:	b2d2      	uxtb	r2, r2
 8004030:	6102      	str	r2, [r0, #16]
 8004032:	4770      	bx	lr

08004034 <i2c_get_data>:
 8004034:	6900      	ldr	r0, [r0, #16]
 8004036:	b2c0      	uxtb	r0, r0
 8004038:	4770      	bx	lr

0800403a <i2c_enable_ack>:
 800403a:	6803      	ldr	r3, [r0, #0]
 800403c:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 8004040:	6003      	str	r3, [r0, #0]
 8004042:	4770      	bx	lr

08004044 <i2c_disable_ack>:
 8004044:	6803      	ldr	r3, [r0, #0]
 8004046:	f423 6380 	bic.w	r3, r3, #1024	; 0x400
 800404a:	6003      	str	r3, [r0, #0]
 800404c:	4770      	bx	lr
	...

08004050 <iwdg_start>:
 8004050:	f64c 42cc 	movw	r2, #52428	; 0xcccc
 8004054:	4b01      	ldr	r3, [pc, #4]	; (800405c <iwdg_start+0xc>)
 8004056:	601a      	str	r2, [r3, #0]
 8004058:	4770      	bx	lr
 800405a:	bf00      	nop
 800405c:	40003000 	.word	0x40003000

08004060 <iwdg_reset>:
 8004060:	f64a 22aa 	movw	r2, #43690	; 0xaaaa
 8004064:	4b01      	ldr	r3, [pc, #4]	; (800406c <iwdg_reset+0xc>)
 8004066:	601a      	str	r2, [r3, #0]
 8004068:	4770      	bx	lr
 800406a:	bf00      	nop
 800406c:	40003000 	.word	0x40003000

08004070 <usart_set_baudrate>:
 8004070:	4a06      	ldr	r2, [pc, #24]	; (800408c <usart_set_baudrate+0x1c>)
 8004072:	4b07      	ldr	r3, [pc, #28]	; (8004090 <usart_set_baudrate+0x20>)
 8004074:	4290      	cmp	r0, r2
 8004076:	681b      	ldr	r3, [r3, #0]
 8004078:	bf04      	itt	eq
 800407a:	4b06      	ldreq	r3, [pc, #24]	; (8004094 <usart_set_baudrate+0x24>)
 800407c:	681b      	ldreq	r3, [r3, #0]
 800407e:	eb01 0343 	add.w	r3, r1, r3, lsl #1
 8004082:	0049      	lsls	r1, r1, #1
 8004084:	fbb3 f3f1 	udiv	r3, r3, r1
 8004088:	6083      	str	r3, [r0, #8]
 800408a:	4770      	bx	lr
 800408c:	40013800 	.word	0x40013800
 8004090:	20000020 	.word	0x20000020
 8004094:	20000024 	.word	0x20000024

08004098 <usart_set_databits>:
 8004098:	68c3      	ldr	r3, [r0, #12]
 800409a:	2908      	cmp	r1, #8
 800409c:	bf0c      	ite	eq
 800409e:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 80040a2:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 80040a6:	60c3      	str	r3, [r0, #12]
 80040a8:	4770      	bx	lr

080040aa <usart_set_stopbits>:
 80040aa:	6903      	ldr	r3, [r0, #16]
 80040ac:	f423 5340 	bic.w	r3, r3, #12288	; 0x3000
 80040b0:	4319      	orrs	r1, r3
 80040b2:	6101      	str	r1, [r0, #16]
 80040b4:	4770      	bx	lr

080040b6 <usart_set_parity>:
 80040b6:	68c3      	ldr	r3, [r0, #12]
 80040b8:	f423 63c0 	bic.w	r3, r3, #1536	; 0x600
 80040bc:	4319      	orrs	r1, r3
 80040be:	60c1      	str	r1, [r0, #12]
 80040c0:	4770      	bx	lr

080040c2 <usart_set_mode>:
 80040c2:	68c3      	ldr	r3, [r0, #12]
 80040c4:	f023 030c 	bic.w	r3, r3, #12
 80040c8:	4319      	orrs	r1, r3
 80040ca:	60c1      	str	r1, [r0, #12]
 80040cc:	4770      	bx	lr

080040ce <usart_set_flow_control>:
 80040ce:	6943      	ldr	r3, [r0, #20]
 80040d0:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 80040d4:	4319      	orrs	r1, r3
 80040d6:	6141      	str	r1, [r0, #20]
 80040d8:	4770      	bx	lr

080040da <usart_enable>:
 80040da:	68c3      	ldr	r3, [r0, #12]
 80040dc:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80040e0:	60c3      	str	r3, [r0, #12]
 80040e2:	4770      	bx	lr

080040e4 <rcc_periph_clock_enable>:
 80040e4:	0943      	lsrs	r3, r0, #5
 80040e6:	f000 021f 	and.w	r2, r0, #31
 80040ea:	2001      	movs	r0, #1
 80040ec:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 80040f0:	f503 3304 	add.w	r3, r3, #135168	; 0x21000
 80040f4:	6819      	ldr	r1, [r3, #0]
 80040f6:	4090      	lsls	r0, r2
 80040f8:	4308      	orrs	r0, r1
 80040fa:	6018      	str	r0, [r3, #0]
 80040fc:	4770      	bx	lr

080040fe <rcc_periph_reset_pulse>:
 80040fe:	f000 021f 	and.w	r2, r0, #31
 8004102:	0943      	lsrs	r3, r0, #5
 8004104:	2001      	movs	r0, #1
 8004106:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 800410a:	f503 3304 	add.w	r3, r3, #135168	; 0x21000
 800410e:	6819      	ldr	r1, [r3, #0]
 8004110:	4090      	lsls	r0, r2
 8004112:	4301      	orrs	r1, r0
 8004114:	6019      	str	r1, [r3, #0]
 8004116:	681a      	ldr	r2, [r3, #0]
 8004118:	ea22 0000 	bic.w	r0, r2, r0
 800411c:	6018      	str	r0, [r3, #0]
 800411e:	4770      	bx	lr

08004120 <flash_set_ws>:
 8004120:	4a03      	ldr	r2, [pc, #12]	; (8004130 <flash_set_ws+0x10>)
 8004122:	6813      	ldr	r3, [r2, #0]
 8004124:	f023 0307 	bic.w	r3, r3, #7
 8004128:	4318      	orrs	r0, r3
 800412a:	6010      	str	r0, [r2, #0]
 800412c:	4770      	bx	lr
 800412e:	bf00      	nop
 8004130:	40022000 	.word	0x40022000

08004134 <spi_reset>:
 8004134:	4b0a      	ldr	r3, [pc, #40]	; (8004160 <spi_reset+0x2c>)
 8004136:	4298      	cmp	r0, r3
 8004138:	d00e      	beq.n	8004158 <spi_reset+0x24>
 800413a:	f503 4374 	add.w	r3, r3, #62464	; 0xf400
 800413e:	4298      	cmp	r0, r3
 8004140:	d006      	beq.n	8004150 <spi_reset+0x1c>
 8004142:	f5a3 4378 	sub.w	r3, r3, #63488	; 0xf800
 8004146:	4298      	cmp	r0, r3
 8004148:	d109      	bne.n	800415e <spi_reset+0x2a>
 800414a:	f240 200e 	movw	r0, #526	; 0x20e
 800414e:	e001      	b.n	8004154 <spi_reset+0x20>
 8004150:	f44f 70c6 	mov.w	r0, #396	; 0x18c
 8004154:	f7ff bfd3 	b.w	80040fe <rcc_periph_reset_pulse>
 8004158:	f240 200f 	movw	r0, #527	; 0x20f
 800415c:	e7fa      	b.n	8004154 <spi_reset+0x20>
 800415e:	4770      	bx	lr
 8004160:	40003c00 	.word	0x40003c00

08004164 <spi_enable>:
 8004164:	6803      	ldr	r3, [r0, #0]
 8004166:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800416a:	6003      	str	r3, [r0, #0]
 800416c:	4770      	bx	lr

0800416e <spi_send>:
 800416e:	6883      	ldr	r3, [r0, #8]
 8004170:	079b      	lsls	r3, r3, #30
 8004172:	d5fc      	bpl.n	800416e <spi_send>
 8004174:	60c1      	str	r1, [r0, #12]
 8004176:	4770      	bx	lr

08004178 <spi_xfer>:
 8004178:	60c1      	str	r1, [r0, #12]
 800417a:	6883      	ldr	r3, [r0, #8]
 800417c:	07db      	lsls	r3, r3, #31
 800417e:	d5fc      	bpl.n	800417a <spi_xfer+0x2>
 8004180:	68c0      	ldr	r0, [r0, #12]
 8004182:	b280      	uxth	r0, r0
 8004184:	4770      	bx	lr

08004186 <spi_enable_software_slave_management>:
 8004186:	6803      	ldr	r3, [r0, #0]
 8004188:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 800418c:	6003      	str	r3, [r0, #0]
 800418e:	6843      	ldr	r3, [r0, #4]
 8004190:	f023 0304 	bic.w	r3, r3, #4
 8004194:	6043      	str	r3, [r0, #4]
 8004196:	4770      	bx	lr

08004198 <spi_set_nss_high>:
 8004198:	6803      	ldr	r3, [r0, #0]
 800419a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800419e:	6003      	str	r3, [r0, #0]
 80041a0:	4770      	bx	lr

080041a2 <spi_init_master>:
 80041a2:	b530      	push	{r4, r5, lr}
 80041a4:	6804      	ldr	r4, [r0, #0]
 80041a6:	9d04      	ldr	r5, [sp, #16]
 80041a8:	f404 5441 	and.w	r4, r4, #12352	; 0x3040
 80041ac:	432c      	orrs	r4, r5
 80041ae:	9d03      	ldr	r5, [sp, #12]
 80041b0:	432c      	orrs	r4, r5
 80041b2:	4323      	orrs	r3, r4
 80041b4:	4313      	orrs	r3, r2
 80041b6:	6842      	ldr	r2, [r0, #4]
 80041b8:	430b      	orrs	r3, r1
 80041ba:	f043 0304 	orr.w	r3, r3, #4
 80041be:	f042 0204 	orr.w	r2, r2, #4
 80041c2:	6042      	str	r2, [r0, #4]
 80041c4:	6003      	str	r3, [r0, #0]
 80041c6:	2000      	movs	r0, #0
 80041c8:	bd30      	pop	{r4, r5, pc}
	...

080041cc <usbd_init>:
 80041cc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80041d0:	461e      	mov	r6, r3
 80041d2:	6803      	ldr	r3, [r0, #0]
 80041d4:	4605      	mov	r5, r0
 80041d6:	4688      	mov	r8, r1
 80041d8:	4617      	mov	r7, r2
 80041da:	4798      	blx	r3
 80041dc:	9b06      	ldr	r3, [sp, #24]
 80041de:	f8c0 50dc 	str.w	r5, [r0, #220]	; 0xdc
 80041e2:	60c3      	str	r3, [r0, #12]
 80041e4:	9b07      	ldr	r3, [sp, #28]
 80041e6:	e9c0 8700 	strd	r8, r7, [r0]
 80041ea:	6103      	str	r3, [r0, #16]
 80041ec:	f8bd 3020 	ldrh.w	r3, [sp, #32]
 80041f0:	6086      	str	r6, [r0, #8]
 80041f2:	8283      	strh	r3, [r0, #20]
 80041f4:	4b06      	ldr	r3, [pc, #24]	; (8004210 <usbd_init+0x44>)
 80041f6:	6703      	str	r3, [r0, #112]	; 0x70
 80041f8:	4b06      	ldr	r3, [pc, #24]	; (8004214 <usbd_init+0x48>)
 80041fa:	66c3      	str	r3, [r0, #108]	; 0x6c
 80041fc:	4b06      	ldr	r3, [pc, #24]	; (8004218 <usbd_init+0x4c>)
 80041fe:	6683      	str	r3, [r0, #104]	; 0x68
 8004200:	2300      	movs	r3, #0
 8004202:	e9c0 3332 	strd	r3, r3, [r0, #200]	; 0xc8
 8004206:	e9c0 3334 	strd	r3, r3, [r0, #208]	; 0xd0
 800420a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800420e:	bf00      	nop
 8004210:	0800442d 	.word	0x0800442d
 8004214:	0800449d 	.word	0x0800449d
 8004218:	0800451f 	.word	0x0800451f

0800421c <usbd_poll>:
 800421c:	f8d0 30dc 	ldr.w	r3, [r0, #220]	; 0xdc
 8004220:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8004222:	4718      	bx	r3

08004224 <usbd_ep_setup>:
 8004224:	b410      	push	{r4}
 8004226:	f8d0 40dc 	ldr.w	r4, [r0, #220]	; 0xdc
 800422a:	68a4      	ldr	r4, [r4, #8]
 800422c:	46a4      	mov	ip, r4
 800422e:	bc10      	pop	{r4}
 8004230:	4760      	bx	ip

08004232 <_usbd_reset>:
 8004232:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8004234:	2500      	movs	r5, #0
 8004236:	4604      	mov	r4, r0
 8004238:	6803      	ldr	r3, [r0, #0]
 800423a:	82c5      	strh	r5, [r0, #22]
 800423c:	79db      	ldrb	r3, [r3, #7]
 800423e:	462a      	mov	r2, r5
 8004240:	4629      	mov	r1, r5
 8004242:	9500      	str	r5, [sp, #0]
 8004244:	f7ff ffee 	bl	8004224 <usbd_ep_setup>
 8004248:	f8d4 30dc 	ldr.w	r3, [r4, #220]	; 0xdc
 800424c:	4629      	mov	r1, r5
 800424e:	685b      	ldr	r3, [r3, #4]
 8004250:	4620      	mov	r0, r4
 8004252:	4798      	blx	r3
 8004254:	69e3      	ldr	r3, [r4, #28]
 8004256:	b11b      	cbz	r3, 8004260 <_usbd_reset+0x2e>
 8004258:	b003      	add	sp, #12
 800425a:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 800425e:	4718      	bx	r3
 8004260:	b003      	add	sp, #12
 8004262:	bd30      	pop	{r4, r5, pc}

08004264 <usbd_ep_write_packet>:
 8004264:	b410      	push	{r4}
 8004266:	f8d0 40dc 	ldr.w	r4, [r0, #220]	; 0xdc
 800426a:	69e4      	ldr	r4, [r4, #28]
 800426c:	46a4      	mov	ip, r4
 800426e:	bc10      	pop	{r4}
 8004270:	4760      	bx	ip

08004272 <usbd_ep_read_packet>:
 8004272:	b410      	push	{r4}
 8004274:	f8d0 40dc 	ldr.w	r4, [r0, #220]	; 0xdc
 8004278:	6a24      	ldr	r4, [r4, #32]
 800427a:	46a4      	mov	ip, r4
 800427c:	bc10      	pop	{r4}
 800427e:	4760      	bx	ip

08004280 <usbd_ep_stall_set>:
 8004280:	f8d0 30dc 	ldr.w	r3, [r0, #220]	; 0xdc
 8004284:	691b      	ldr	r3, [r3, #16]
 8004286:	4718      	bx	r3

08004288 <usbd_ep_stall_get>:
 8004288:	f8d0 30dc 	ldr.w	r3, [r0, #220]	; 0xdc
 800428c:	699b      	ldr	r3, [r3, #24]
 800428e:	4718      	bx	r3

08004290 <usbd_ep_nak_set>:
 8004290:	f8d0 30dc 	ldr.w	r3, [r0, #220]	; 0xdc
 8004294:	695b      	ldr	r3, [r3, #20]
 8004296:	4718      	bx	r3

08004298 <stall_transaction>:
 8004298:	b510      	push	{r4, lr}
 800429a:	2201      	movs	r2, #1
 800429c:	2100      	movs	r1, #0
 800429e:	4604      	mov	r4, r0
 80042a0:	f7ff ffee 	bl	8004280 <usbd_ep_stall_set>
 80042a4:	2300      	movs	r3, #0
 80042a6:	f884 302c 	strb.w	r3, [r4, #44]	; 0x2c
 80042aa:	bd10      	pop	{r4, pc}

080042ac <usb_control_recv_chunk>:
 80042ac:	b570      	push	{r4, r5, r6, lr}
 80042ae:	6803      	ldr	r3, [r0, #0]
 80042b0:	8f82      	ldrh	r2, [r0, #60]	; 0x3c
 80042b2:	8ec4      	ldrh	r4, [r0, #54]	; 0x36
 80042b4:	79db      	ldrb	r3, [r3, #7]
 80042b6:	1aa4      	subs	r4, r4, r2
 80042b8:	429c      	cmp	r4, r3
 80042ba:	bfa8      	it	ge
 80042bc:	461c      	movge	r4, r3
 80042be:	6b81      	ldr	r1, [r0, #56]	; 0x38
 80042c0:	b2a6      	uxth	r6, r4
 80042c2:	440a      	add	r2, r1
 80042c4:	4633      	mov	r3, r6
 80042c6:	2100      	movs	r1, #0
 80042c8:	4605      	mov	r5, r0
 80042ca:	f7ff ffd2 	bl	8004272 <usbd_ep_read_packet>
 80042ce:	4286      	cmp	r6, r0
 80042d0:	d005      	beq.n	80042de <usb_control_recv_chunk+0x32>
 80042d2:	4628      	mov	r0, r5
 80042d4:	f7ff ffe0 	bl	8004298 <stall_transaction>
 80042d8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80042dc:	bd70      	pop	{r4, r5, r6, pc}
 80042de:	8fab      	ldrh	r3, [r5, #60]	; 0x3c
 80042e0:	b2a0      	uxth	r0, r4
 80042e2:	441e      	add	r6, r3
 80042e4:	87ae      	strh	r6, [r5, #60]	; 0x3c
 80042e6:	e7f9      	b.n	80042dc <usb_control_recv_chunk+0x30>

080042e8 <usb_control_send_chunk>:
 80042e8:	b510      	push	{r4, lr}
 80042ea:	6803      	ldr	r3, [r0, #0]
 80042ec:	4604      	mov	r4, r0
 80042ee:	79d9      	ldrb	r1, [r3, #7]
 80042f0:	8f83      	ldrh	r3, [r0, #60]	; 0x3c
 80042f2:	6b82      	ldr	r2, [r0, #56]	; 0x38
 80042f4:	4299      	cmp	r1, r3
 80042f6:	d20f      	bcs.n	8004318 <usb_control_send_chunk+0x30>
 80042f8:	460b      	mov	r3, r1
 80042fa:	2100      	movs	r1, #0
 80042fc:	f7ff ffb2 	bl	8004264 <usbd_ep_write_packet>
 8004300:	2302      	movs	r3, #2
 8004302:	f884 302c 	strb.w	r3, [r4, #44]	; 0x2c
 8004306:	6823      	ldr	r3, [r4, #0]
 8004308:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 800430a:	79d9      	ldrb	r1, [r3, #7]
 800430c:	8fa3      	ldrh	r3, [r4, #60]	; 0x3c
 800430e:	440a      	add	r2, r1
 8004310:	1a5b      	subs	r3, r3, r1
 8004312:	63a2      	str	r2, [r4, #56]	; 0x38
 8004314:	87a3      	strh	r3, [r4, #60]	; 0x3c
 8004316:	bd10      	pop	{r4, pc}
 8004318:	2100      	movs	r1, #0
 800431a:	f7ff ffa3 	bl	8004264 <usbd_ep_write_packet>
 800431e:	f894 3044 	ldrb.w	r3, [r4, #68]	; 0x44
 8004322:	2b00      	cmp	r3, #0
 8004324:	bf14      	ite	ne
 8004326:	2302      	movne	r3, #2
 8004328:	2303      	moveq	r3, #3
 800432a:	f884 302c 	strb.w	r3, [r4, #44]	; 0x2c
 800432e:	2300      	movs	r3, #0
 8004330:	f884 3044 	strb.w	r3, [r4, #68]	; 0x44
 8004334:	87a3      	strh	r3, [r4, #60]	; 0x3c
 8004336:	63a3      	str	r3, [r4, #56]	; 0x38
 8004338:	e7ed      	b.n	8004316 <usb_control_send_chunk+0x2e>

0800433a <usb_control_request_dispatch>:
 800433a:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800433e:	4604      	mov	r4, r0
 8004340:	460e      	mov	r6, r1
 8004342:	4605      	mov	r5, r0
 8004344:	f100 0b20 	add.w	fp, r0, #32
 8004348:	f100 0838 	add.w	r8, r0, #56	; 0x38
 800434c:	f100 093c 	add.w	r9, r0, #60	; 0x3c
 8004350:	f100 0a40 	add.w	sl, r0, #64	; 0x40
 8004354:	6caf      	ldr	r7, [r5, #72]	; 0x48
 8004356:	b947      	cbnz	r7, 800436a <usb_control_request_dispatch+0x30>
 8004358:	464b      	mov	r3, r9
 800435a:	4642      	mov	r2, r8
 800435c:	4631      	mov	r1, r6
 800435e:	4620      	mov	r0, r4
 8004360:	b003      	add	sp, #12
 8004362:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004366:	f000 bb8f 	b.w	8004a88 <_usbd_standard_request>
 800436a:	7833      	ldrb	r3, [r6, #0]
 800436c:	f895 104d 	ldrb.w	r1, [r5, #77]	; 0x4d
 8004370:	f895 204c 	ldrb.w	r2, [r5, #76]	; 0x4c
 8004374:	400b      	ands	r3, r1
 8004376:	429a      	cmp	r2, r3
 8004378:	d003      	beq.n	8004382 <usb_control_request_dispatch+0x48>
 800437a:	3508      	adds	r5, #8
 800437c:	455d      	cmp	r5, fp
 800437e:	d1e9      	bne.n	8004354 <usb_control_request_dispatch+0x1a>
 8004380:	e7ea      	b.n	8004358 <usb_control_request_dispatch+0x1e>
 8004382:	f8cd a000 	str.w	sl, [sp]
 8004386:	464b      	mov	r3, r9
 8004388:	4642      	mov	r2, r8
 800438a:	4631      	mov	r1, r6
 800438c:	4620      	mov	r0, r4
 800438e:	47b8      	blx	r7
 8004390:	2801      	cmp	r0, #1
 8004392:	d8f2      	bhi.n	800437a <usb_control_request_dispatch+0x40>
 8004394:	b003      	add	sp, #12
 8004396:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

0800439a <usb_control_setup_read>:
 800439a:	b538      	push	{r3, r4, r5, lr}
 800439c:	6903      	ldr	r3, [r0, #16]
 800439e:	4604      	mov	r4, r0
 80043a0:	6383      	str	r3, [r0, #56]	; 0x38
 80043a2:	798b      	ldrb	r3, [r1, #6]
 80043a4:	79ca      	ldrb	r2, [r1, #7]
 80043a6:	460d      	mov	r5, r1
 80043a8:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
 80043ac:	8783      	strh	r3, [r0, #60]	; 0x3c
 80043ae:	f7ff ffc4 	bl	800433a <usb_control_request_dispatch>
 80043b2:	b300      	cbz	r0, 80043f6 <usb_control_setup_read+0x5c>
 80043b4:	88eb      	ldrh	r3, [r5, #6]
 80043b6:	b1ab      	cbz	r3, 80043e4 <usb_control_setup_read+0x4a>
 80043b8:	8fa2      	ldrh	r2, [r4, #60]	; 0x3c
 80043ba:	6821      	ldr	r1, [r4, #0]
 80043bc:	4293      	cmp	r3, r2
 80043be:	79c9      	ldrb	r1, [r1, #7]
 80043c0:	d90e      	bls.n	80043e0 <usb_control_setup_read+0x46>
 80043c2:	b132      	cbz	r2, 80043d2 <usb_control_setup_read+0x38>
 80043c4:	fbb2 f3f1 	udiv	r3, r2, r1
 80043c8:	fb01 2213 	mls	r2, r1, r3, r2
 80043cc:	fab2 f282 	clz	r2, r2
 80043d0:	0952      	lsrs	r2, r2, #5
 80043d2:	f884 2044 	strb.w	r2, [r4, #68]	; 0x44
 80043d6:	4620      	mov	r0, r4
 80043d8:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80043dc:	f7ff bf84 	b.w	80042e8 <usb_control_send_chunk>
 80043e0:	2200      	movs	r2, #0
 80043e2:	e7f6      	b.n	80043d2 <usb_control_setup_read+0x38>
 80043e4:	461a      	mov	r2, r3
 80043e6:	4619      	mov	r1, r3
 80043e8:	4620      	mov	r0, r4
 80043ea:	f7ff ff3b 	bl	8004264 <usbd_ep_write_packet>
 80043ee:	2304      	movs	r3, #4
 80043f0:	f884 302c 	strb.w	r3, [r4, #44]	; 0x2c
 80043f4:	bd38      	pop	{r3, r4, r5, pc}
 80043f6:	4620      	mov	r0, r4
 80043f8:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80043fc:	f7ff bf4c 	b.w	8004298 <stall_transaction>

08004400 <usbd_register_control_callback>:
 8004400:	b570      	push	{r4, r5, r6, lr}
 8004402:	2400      	movs	r4, #0
 8004404:	f100 0648 	add.w	r6, r0, #72	; 0x48
 8004408:	f856 5034 	ldr.w	r5, [r6, r4, lsl #3]
 800440c:	b12d      	cbz	r5, 800441a <usbd_register_control_callback+0x1a>
 800440e:	3401      	adds	r4, #1
 8004410:	2c04      	cmp	r4, #4
 8004412:	d1f9      	bne.n	8004408 <usbd_register_control_callback+0x8>
 8004414:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004418:	bd70      	pop	{r4, r5, r6, pc}
 800441a:	eb00 04c4 	add.w	r4, r0, r4, lsl #3
 800441e:	f884 104c 	strb.w	r1, [r4, #76]	; 0x4c
 8004422:	f884 204d 	strb.w	r2, [r4, #77]	; 0x4d
 8004426:	64a3      	str	r3, [r4, #72]	; 0x48
 8004428:	4628      	mov	r0, r5
 800442a:	e7f5      	b.n	8004418 <usbd_register_control_callback+0x18>

0800442c <_usbd_control_setup>:
 800442c:	b570      	push	{r4, r5, r6, lr}
 800442e:	2500      	movs	r5, #0
 8004430:	4604      	mov	r4, r0
 8004432:	f100 0630 	add.w	r6, r0, #48	; 0x30
 8004436:	6405      	str	r5, [r0, #64]	; 0x40
 8004438:	2201      	movs	r2, #1
 800443a:	4629      	mov	r1, r5
 800443c:	f7ff ff28 	bl	8004290 <usbd_ep_nak_set>
 8004440:	2308      	movs	r3, #8
 8004442:	4632      	mov	r2, r6
 8004444:	4629      	mov	r1, r5
 8004446:	4620      	mov	r0, r4
 8004448:	f7ff ff13 	bl	8004272 <usbd_ep_read_packet>
 800444c:	2808      	cmp	r0, #8
 800444e:	d004      	beq.n	800445a <_usbd_control_setup+0x2e>
 8004450:	4620      	mov	r0, r4
 8004452:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8004456:	f7ff bf1f 	b.w	8004298 <stall_transaction>
 800445a:	8ee2      	ldrh	r2, [r4, #54]	; 0x36
 800445c:	b92a      	cbnz	r2, 800446a <_usbd_control_setup+0x3e>
 800445e:	4631      	mov	r1, r6
 8004460:	4620      	mov	r0, r4
 8004462:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8004466:	f7ff bf98 	b.w	800439a <usb_control_setup_read>
 800446a:	f994 3030 	ldrsb.w	r3, [r4, #48]	; 0x30
 800446e:	2b00      	cmp	r3, #0
 8004470:	dbf5      	blt.n	800445e <_usbd_control_setup+0x32>
 8004472:	8aa3      	ldrh	r3, [r4, #20]
 8004474:	4293      	cmp	r3, r2
 8004476:	d3eb      	bcc.n	8004450 <_usbd_control_setup+0x24>
 8004478:	6923      	ldr	r3, [r4, #16]
 800447a:	87a5      	strh	r5, [r4, #60]	; 0x3c
 800447c:	63a3      	str	r3, [r4, #56]	; 0x38
 800447e:	6823      	ldr	r3, [r4, #0]
 8004480:	4629      	mov	r1, r5
 8004482:	79db      	ldrb	r3, [r3, #7]
 8004484:	4620      	mov	r0, r4
 8004486:	4293      	cmp	r3, r2
 8004488:	bf34      	ite	cc
 800448a:	2305      	movcc	r3, #5
 800448c:	2306      	movcs	r3, #6
 800448e:	462a      	mov	r2, r5
 8004490:	f884 302c 	strb.w	r3, [r4, #44]	; 0x2c
 8004494:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8004498:	f7ff befa 	b.w	8004290 <usbd_ep_nak_set>

0800449c <_usbd_control_out>:
 800449c:	f890 302c 	ldrb.w	r3, [r0, #44]	; 0x2c
 80044a0:	b510      	push	{r4, lr}
 80044a2:	2b06      	cmp	r3, #6
 80044a4:	4604      	mov	r4, r0
 80044a6:	d012      	beq.n	80044ce <_usbd_control_out+0x32>
 80044a8:	2b07      	cmp	r3, #7
 80044aa:	d027      	beq.n	80044fc <_usbd_control_out+0x60>
 80044ac:	2b05      	cmp	r3, #5
 80044ae:	d121      	bne.n	80044f4 <_usbd_control_out+0x58>
 80044b0:	f7ff fefc 	bl	80042ac <usb_control_recv_chunk>
 80044b4:	2800      	cmp	r0, #0
 80044b6:	db09      	blt.n	80044cc <_usbd_control_out+0x30>
 80044b8:	8fa2      	ldrh	r2, [r4, #60]	; 0x3c
 80044ba:	8ee3      	ldrh	r3, [r4, #54]	; 0x36
 80044bc:	1a9b      	subs	r3, r3, r2
 80044be:	6822      	ldr	r2, [r4, #0]
 80044c0:	79d2      	ldrb	r2, [r2, #7]
 80044c2:	4293      	cmp	r3, r2
 80044c4:	dc02      	bgt.n	80044cc <_usbd_control_out+0x30>
 80044c6:	2306      	movs	r3, #6
 80044c8:	f884 302c 	strb.w	r3, [r4, #44]	; 0x2c
 80044cc:	bd10      	pop	{r4, pc}
 80044ce:	f7ff feed 	bl	80042ac <usb_control_recv_chunk>
 80044d2:	2800      	cmp	r0, #0
 80044d4:	dbfa      	blt.n	80044cc <_usbd_control_out+0x30>
 80044d6:	f104 0130 	add.w	r1, r4, #48	; 0x30
 80044da:	4620      	mov	r0, r4
 80044dc:	f7ff ff2d 	bl	800433a <usb_control_request_dispatch>
 80044e0:	b138      	cbz	r0, 80044f2 <_usbd_control_out+0x56>
 80044e2:	2300      	movs	r3, #0
 80044e4:	4620      	mov	r0, r4
 80044e6:	461a      	mov	r2, r3
 80044e8:	4619      	mov	r1, r3
 80044ea:	f7ff febb 	bl	8004264 <usbd_ep_write_packet>
 80044ee:	2304      	movs	r3, #4
 80044f0:	e7ea      	b.n	80044c8 <_usbd_control_out+0x2c>
 80044f2:	4620      	mov	r0, r4
 80044f4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80044f8:	f7ff bece 	b.w	8004298 <stall_transaction>
 80044fc:	2300      	movs	r3, #0
 80044fe:	461a      	mov	r2, r3
 8004500:	4619      	mov	r1, r3
 8004502:	f7ff feb6 	bl	8004272 <usbd_ep_read_packet>
 8004506:	2300      	movs	r3, #0
 8004508:	f884 302c 	strb.w	r3, [r4, #44]	; 0x2c
 800450c:	6c23      	ldr	r3, [r4, #64]	; 0x40
 800450e:	b11b      	cbz	r3, 8004518 <_usbd_control_out+0x7c>
 8004510:	f104 0130 	add.w	r1, r4, #48	; 0x30
 8004514:	4620      	mov	r0, r4
 8004516:	4798      	blx	r3
 8004518:	2300      	movs	r3, #0
 800451a:	6423      	str	r3, [r4, #64]	; 0x40
 800451c:	e7d6      	b.n	80044cc <_usbd_control_out+0x30>

0800451e <_usbd_control_in>:
 800451e:	f890 302c 	ldrb.w	r3, [r0, #44]	; 0x2c
 8004522:	b510      	push	{r4, lr}
 8004524:	2b03      	cmp	r3, #3
 8004526:	4604      	mov	r4, r0
 8004528:	d007      	beq.n	800453a <_usbd_control_in+0x1c>
 800452a:	2b04      	cmp	r3, #4
 800452c:	d00e      	beq.n	800454c <_usbd_control_in+0x2e>
 800452e:	2b02      	cmp	r3, #2
 8004530:	d123      	bne.n	800457a <_usbd_control_in+0x5c>
 8004532:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8004536:	f7ff bed7 	b.w	80042e8 <usb_control_send_chunk>
 800453a:	2307      	movs	r3, #7
 800453c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8004540:	2200      	movs	r2, #0
 8004542:	f880 302c 	strb.w	r3, [r0, #44]	; 0x2c
 8004546:	4611      	mov	r1, r2
 8004548:	f7ff bea2 	b.w	8004290 <usbd_ep_nak_set>
 800454c:	6c03      	ldr	r3, [r0, #64]	; 0x40
 800454e:	b113      	cbz	r3, 8004556 <_usbd_control_in+0x38>
 8004550:	f100 0130 	add.w	r1, r0, #48	; 0x30
 8004554:	4798      	blx	r3
 8004556:	f894 3030 	ldrb.w	r3, [r4, #48]	; 0x30
 800455a:	b953      	cbnz	r3, 8004572 <_usbd_control_in+0x54>
 800455c:	f894 3031 	ldrb.w	r3, [r4, #49]	; 0x31
 8004560:	2b05      	cmp	r3, #5
 8004562:	d106      	bne.n	8004572 <_usbd_control_in+0x54>
 8004564:	8e61      	ldrh	r1, [r4, #50]	; 0x32
 8004566:	f8d4 30dc 	ldr.w	r3, [r4, #220]	; 0xdc
 800456a:	b2c9      	uxtb	r1, r1
 800456c:	685b      	ldr	r3, [r3, #4]
 800456e:	4620      	mov	r0, r4
 8004570:	4798      	blx	r3
 8004572:	2300      	movs	r3, #0
 8004574:	f884 302c 	strb.w	r3, [r4, #44]	; 0x2c
 8004578:	bd10      	pop	{r4, pc}
 800457a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800457e:	f7ff be8b 	b.w	8004298 <stall_transaction>

08004582 <usb_standard_set_address>:
 8004582:	b510      	push	{r4, lr}
 8004584:	780b      	ldrb	r3, [r1, #0]
 8004586:	b973      	cbnz	r3, 80045a6 <usb_standard_set_address+0x24>
 8004588:	884c      	ldrh	r4, [r1, #2]
 800458a:	2c7f      	cmp	r4, #127	; 0x7f
 800458c:	d80b      	bhi.n	80045a6 <usb_standard_set_address+0x24>
 800458e:	f8d0 30dc 	ldr.w	r3, [r0, #220]	; 0xdc
 8004592:	7584      	strb	r4, [r0, #22]
 8004594:	f893 2030 	ldrb.w	r2, [r3, #48]	; 0x30
 8004598:	b11a      	cbz	r2, 80045a2 <usb_standard_set_address+0x20>
 800459a:	8849      	ldrh	r1, [r1, #2]
 800459c:	685b      	ldr	r3, [r3, #4]
 800459e:	b2c9      	uxtb	r1, r1
 80045a0:	4798      	blx	r3
 80045a2:	2001      	movs	r0, #1
 80045a4:	e000      	b.n	80045a8 <usb_standard_set_address+0x26>
 80045a6:	2000      	movs	r0, #0
 80045a8:	bd10      	pop	{r4, pc}

080045aa <usb_standard_set_configuration>:
 80045aa:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80045ac:	460d      	mov	r5, r1
 80045ae:	8849      	ldrh	r1, [r1, #2]
 80045b0:	4604      	mov	r4, r0
 80045b2:	b179      	cbz	r1, 80045d4 <usb_standard_set_configuration+0x2a>
 80045b4:	6803      	ldr	r3, [r0, #0]
 80045b6:	260d      	movs	r6, #13
 80045b8:	7c58      	ldrb	r0, [r3, #17]
 80045ba:	2300      	movs	r3, #0
 80045bc:	4298      	cmp	r0, r3
 80045be:	d801      	bhi.n	80045c4 <usb_standard_set_configuration+0x1a>
 80045c0:	2000      	movs	r0, #0
 80045c2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80045c4:	6862      	ldr	r2, [r4, #4]
 80045c6:	fb06 2203 	mla	r2, r6, r3, r2
 80045ca:	7952      	ldrb	r2, [r2, #5]
 80045cc:	428a      	cmp	r2, r1
 80045ce:	d003      	beq.n	80045d8 <usb_standard_set_configuration+0x2e>
 80045d0:	3301      	adds	r3, #1
 80045d2:	e7f3      	b.n	80045bc <usb_standard_set_configuration+0x12>
 80045d4:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80045d8:	3301      	adds	r3, #1
 80045da:	b2db      	uxtb	r3, r3
 80045dc:	75e3      	strb	r3, [r4, #23]
 80045de:	b94b      	cbnz	r3, 80045f4 <usb_standard_set_configuration+0x4a>
 80045e0:	f8d4 30dc 	ldr.w	r3, [r4, #220]	; 0xdc
 80045e4:	4620      	mov	r0, r4
 80045e6:	68db      	ldr	r3, [r3, #12]
 80045e8:	4798      	blx	r3
 80045ea:	f8d4 30c8 	ldr.w	r3, [r4, #200]	; 0xc8
 80045ee:	b99b      	cbnz	r3, 8004618 <usb_standard_set_configuration+0x6e>
 80045f0:	2001      	movs	r0, #1
 80045f2:	e7e6      	b.n	80045c2 <usb_standard_set_configuration+0x18>
 80045f4:	220d      	movs	r2, #13
 80045f6:	4353      	muls	r3, r2
 80045f8:	6862      	ldr	r2, [r4, #4]
 80045fa:	3b0d      	subs	r3, #13
 80045fc:	4413      	add	r3, r2
 80045fe:	2200      	movs	r2, #0
 8004600:	4610      	mov	r0, r2
 8004602:	7919      	ldrb	r1, [r3, #4]
 8004604:	4291      	cmp	r1, r2
 8004606:	d9eb      	bls.n	80045e0 <usb_standard_set_configuration+0x36>
 8004608:	f8d3 1009 	ldr.w	r1, [r3, #9]
 800460c:	0116      	lsls	r6, r2, #4
 800460e:	5871      	ldr	r1, [r6, r1]
 8004610:	b101      	cbz	r1, 8004614 <usb_standard_set_configuration+0x6a>
 8004612:	7008      	strb	r0, [r1, #0]
 8004614:	3201      	adds	r2, #1
 8004616:	e7f4      	b.n	8004602 <usb_standard_set_configuration+0x58>
 8004618:	2300      	movs	r3, #0
 800461a:	f104 06c8 	add.w	r6, r4, #200	; 0xc8
 800461e:	64a3      	str	r3, [r4, #72]	; 0x48
 8004620:	6523      	str	r3, [r4, #80]	; 0x50
 8004622:	65a3      	str	r3, [r4, #88]	; 0x58
 8004624:	6623      	str	r3, [r4, #96]	; 0x60
 8004626:	f104 07d8 	add.w	r7, r4, #216	; 0xd8
 800462a:	f856 3b04 	ldr.w	r3, [r6], #4
 800462e:	b113      	cbz	r3, 8004636 <usb_standard_set_configuration+0x8c>
 8004630:	8869      	ldrh	r1, [r5, #2]
 8004632:	4620      	mov	r0, r4
 8004634:	4798      	blx	r3
 8004636:	42b7      	cmp	r7, r6
 8004638:	d1f7      	bne.n	800462a <usb_standard_set_configuration+0x80>
 800463a:	e7d9      	b.n	80045f0 <usb_standard_set_configuration+0x46>

0800463c <usb_standard_get_configuration>:
 800463c:	8819      	ldrh	r1, [r3, #0]
 800463e:	6812      	ldr	r2, [r2, #0]
 8004640:	2901      	cmp	r1, #1
 8004642:	bf84      	itt	hi
 8004644:	2101      	movhi	r1, #1
 8004646:	8019      	strhhi	r1, [r3, #0]
 8004648:	7dc3      	ldrb	r3, [r0, #23]
 800464a:	b12b      	cbz	r3, 8004658 <usb_standard_get_configuration+0x1c>
 800464c:	6841      	ldr	r1, [r0, #4]
 800464e:	200d      	movs	r0, #13
 8004650:	fb00 1303 	mla	r3, r0, r3, r1
 8004654:	f813 3c08 	ldrb.w	r3, [r3, #-8]
 8004658:	7013      	strb	r3, [r2, #0]
 800465a:	2001      	movs	r0, #1
 800465c:	4770      	bx	lr

0800465e <usb_standard_get_interface>:
 800465e:	b530      	push	{r4, r5, lr}
 8004660:	240d      	movs	r4, #13
 8004662:	7dc5      	ldrb	r5, [r0, #23]
 8004664:	6840      	ldr	r0, [r0, #4]
 8004666:	436c      	muls	r4, r5
 8004668:	3c0d      	subs	r4, #13
 800466a:	4404      	add	r4, r0
 800466c:	888d      	ldrh	r5, [r1, #4]
 800466e:	7920      	ldrb	r0, [r4, #4]
 8004670:	4285      	cmp	r5, r0
 8004672:	d20c      	bcs.n	800468e <usb_standard_get_interface+0x30>
 8004674:	2001      	movs	r0, #1
 8004676:	8018      	strh	r0, [r3, #0]
 8004678:	888b      	ldrh	r3, [r1, #4]
 800467a:	f8d4 0009 	ldr.w	r0, [r4, #9]
 800467e:	011b      	lsls	r3, r3, #4
 8004680:	581b      	ldr	r3, [r3, r0]
 8004682:	b103      	cbz	r3, 8004686 <usb_standard_get_interface+0x28>
 8004684:	781b      	ldrb	r3, [r3, #0]
 8004686:	2001      	movs	r0, #1
 8004688:	6812      	ldr	r2, [r2, #0]
 800468a:	7013      	strb	r3, [r2, #0]
 800468c:	bd30      	pop	{r4, r5, pc}
 800468e:	2000      	movs	r0, #0
 8004690:	e7fc      	b.n	800468c <usb_standard_get_interface+0x2e>

08004692 <usb_standard_device_get_status>:
 8004692:	8819      	ldrh	r1, [r3, #0]
 8004694:	2001      	movs	r0, #1
 8004696:	2902      	cmp	r1, #2
 8004698:	bf84      	itt	hi
 800469a:	2102      	movhi	r1, #2
 800469c:	8019      	strhhi	r1, [r3, #0]
 800469e:	2300      	movs	r3, #0
 80046a0:	6811      	ldr	r1, [r2, #0]
 80046a2:	700b      	strb	r3, [r1, #0]
 80046a4:	6812      	ldr	r2, [r2, #0]
 80046a6:	7053      	strb	r3, [r2, #1]
 80046a8:	4770      	bx	lr

080046aa <usb_standard_endpoint_get_status>:
 80046aa:	b510      	push	{r4, lr}
 80046ac:	4614      	mov	r4, r2
 80046ae:	881a      	ldrh	r2, [r3, #0]
 80046b0:	2a02      	cmp	r2, #2
 80046b2:	bf84      	itt	hi
 80046b4:	2202      	movhi	r2, #2
 80046b6:	801a      	strhhi	r2, [r3, #0]
 80046b8:	8889      	ldrh	r1, [r1, #4]
 80046ba:	b2c9      	uxtb	r1, r1
 80046bc:	f7ff fde4 	bl	8004288 <usbd_ep_stall_get>
 80046c0:	3000      	adds	r0, #0
 80046c2:	bf18      	it	ne
 80046c4:	2001      	movne	r0, #1
 80046c6:	2200      	movs	r2, #0
 80046c8:	6823      	ldr	r3, [r4, #0]
 80046ca:	7018      	strb	r0, [r3, #0]
 80046cc:	6823      	ldr	r3, [r4, #0]
 80046ce:	2001      	movs	r0, #1
 80046d0:	705a      	strb	r2, [r3, #1]
 80046d2:	bd10      	pop	{r4, pc}

080046d4 <usb_standard_endpoint_stall>:
 80046d4:	b508      	push	{r3, lr}
 80046d6:	8889      	ldrh	r1, [r1, #4]
 80046d8:	2201      	movs	r2, #1
 80046da:	b2c9      	uxtb	r1, r1
 80046dc:	f7ff fdd0 	bl	8004280 <usbd_ep_stall_set>
 80046e0:	2001      	movs	r0, #1
 80046e2:	bd08      	pop	{r3, pc}

080046e4 <usb_standard_endpoint_unstall>:
 80046e4:	b508      	push	{r3, lr}
 80046e6:	8889      	ldrh	r1, [r1, #4]
 80046e8:	2200      	movs	r2, #0
 80046ea:	b2c9      	uxtb	r1, r1
 80046ec:	f7ff fdc8 	bl	8004280 <usbd_ep_stall_set>
 80046f0:	2001      	movs	r0, #1
 80046f2:	bd08      	pop	{r3, pc}

080046f4 <usb_standard_set_interface>:
 80046f4:	220d      	movs	r2, #13
 80046f6:	b570      	push	{r4, r5, r6, lr}
 80046f8:	461c      	mov	r4, r3
 80046fa:	7dc3      	ldrb	r3, [r0, #23]
 80046fc:	435a      	muls	r2, r3
 80046fe:	6843      	ldr	r3, [r0, #4]
 8004700:	3a0d      	subs	r2, #13
 8004702:	4413      	add	r3, r2
 8004704:	791d      	ldrb	r5, [r3, #4]
 8004706:	888a      	ldrh	r2, [r1, #4]
 8004708:	4295      	cmp	r5, r2
 800470a:	d918      	bls.n	800473e <usb_standard_set_interface+0x4a>
 800470c:	f8d3 5009 	ldr.w	r5, [r3, #9]
 8004710:	0112      	lsls	r2, r2, #4
 8004712:	18ae      	adds	r6, r5, r2
 8004714:	884b      	ldrh	r3, [r1, #2]
 8004716:	7936      	ldrb	r6, [r6, #4]
 8004718:	429e      	cmp	r6, r3
 800471a:	d910      	bls.n	800473e <usb_standard_set_interface+0x4a>
 800471c:	58aa      	ldr	r2, [r5, r2]
 800471e:	b152      	cbz	r2, 8004736 <usb_standard_set_interface+0x42>
 8004720:	7013      	strb	r3, [r2, #0]
 8004722:	f8d0 30d8 	ldr.w	r3, [r0, #216]	; 0xd8
 8004726:	b113      	cbz	r3, 800472e <usb_standard_set_interface+0x3a>
 8004728:	884a      	ldrh	r2, [r1, #2]
 800472a:	8889      	ldrh	r1, [r1, #4]
 800472c:	4798      	blx	r3
 800472e:	2300      	movs	r3, #0
 8004730:	2001      	movs	r0, #1
 8004732:	8023      	strh	r3, [r4, #0]
 8004734:	bd70      	pop	{r4, r5, r6, pc}
 8004736:	2b00      	cmp	r3, #0
 8004738:	d0f3      	beq.n	8004722 <usb_standard_set_interface+0x2e>
 800473a:	4610      	mov	r0, r2
 800473c:	e7fa      	b.n	8004734 <usb_standard_set_interface+0x40>
 800473e:	2000      	movs	r0, #0
 8004740:	e7f8      	b.n	8004734 <usb_standard_set_interface+0x40>

08004742 <usb_standard_get_descriptor>:
 8004742:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004746:	884d      	ldrh	r5, [r1, #2]
 8004748:	461f      	mov	r7, r3
 800474a:	0a2b      	lsrs	r3, r5, #8
 800474c:	2b02      	cmp	r3, #2
 800474e:	b089      	sub	sp, #36	; 0x24
 8004750:	4616      	mov	r6, r2
 8004752:	d011      	beq.n	8004778 <usb_standard_get_descriptor+0x36>
 8004754:	2b03      	cmp	r3, #3
 8004756:	f000 80e5 	beq.w	8004924 <usb_standard_get_descriptor+0x1e2>
 800475a:	2b01      	cmp	r3, #1
 800475c:	f040 8119 	bne.w	8004992 <usb_standard_get_descriptor+0x250>
 8004760:	6802      	ldr	r2, [r0, #0]
 8004762:	8839      	ldrh	r1, [r7, #0]
 8004764:	6032      	str	r2, [r6, #0]
 8004766:	7812      	ldrb	r2, [r2, #0]
 8004768:	428a      	cmp	r2, r1
 800476a:	bf28      	it	cs
 800476c:	460a      	movcs	r2, r1
 800476e:	803a      	strh	r2, [r7, #0]
 8004770:	2001      	movs	r0, #1
 8004772:	b009      	add	sp, #36	; 0x24
 8004774:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004778:	260d      	movs	r6, #13
 800477a:	b2ed      	uxtb	r5, r5
 800477c:	436e      	muls	r6, r5
 800477e:	6903      	ldr	r3, [r0, #16]
 8004780:	f8d0 8004 	ldr.w	r8, [r0, #4]
 8004784:	6013      	str	r3, [r2, #0]
 8004786:	f818 5006 	ldrb.w	r5, [r8, r6]
 800478a:	883c      	ldrh	r4, [r7, #0]
 800478c:	9301      	str	r3, [sp, #4]
 800478e:	42a5      	cmp	r5, r4
 8004790:	bf28      	it	cs
 8004792:	4625      	movcs	r5, r4
 8004794:	eb08 0306 	add.w	r3, r8, r6
 8004798:	462a      	mov	r2, r5
 800479a:	4619      	mov	r1, r3
 800479c:	9801      	ldr	r0, [sp, #4]
 800479e:	9302      	str	r3, [sp, #8]
 80047a0:	f000 fcf0 	bl	8005184 <memcpy>
 80047a4:	2200      	movs	r2, #0
 80047a6:	9b01      	ldr	r3, [sp, #4]
 80047a8:	1b64      	subs	r4, r4, r5
 80047aa:	f818 6006 	ldrb.w	r6, [r8, r6]
 80047ae:	442b      	add	r3, r5
 80047b0:	b2a4      	uxth	r4, r4
 80047b2:	9204      	str	r2, [sp, #16]
 80047b4:	9a02      	ldr	r2, [sp, #8]
 80047b6:	7911      	ldrb	r1, [r2, #4]
 80047b8:	f8bd 2010 	ldrh.w	r2, [sp, #16]
 80047bc:	4291      	cmp	r1, r2
 80047be:	d803      	bhi.n	80047c8 <usb_standard_get_descriptor+0x86>
 80047c0:	9b01      	ldr	r3, [sp, #4]
 80047c2:	805e      	strh	r6, [r3, #2]
 80047c4:	803d      	strh	r5, [r7, #0]
 80047c6:	e7d3      	b.n	8004770 <usb_standard_get_descriptor+0x2e>
 80047c8:	9a04      	ldr	r2, [sp, #16]
 80047ca:	0112      	lsls	r2, r2, #4
 80047cc:	9207      	str	r2, [sp, #28]
 80047ce:	9a02      	ldr	r2, [sp, #8]
 80047d0:	9907      	ldr	r1, [sp, #28]
 80047d2:	f8d2 2009 	ldr.w	r2, [r2, #9]
 80047d6:	440a      	add	r2, r1
 80047d8:	f8d2 9008 	ldr.w	r9, [r2, #8]
 80047dc:	f1b9 0f00 	cmp.w	r9, #0
 80047e0:	d014      	beq.n	800480c <usb_standard_get_descriptor+0xca>
 80047e2:	f899 8000 	ldrb.w	r8, [r9]
 80047e6:	4618      	mov	r0, r3
 80047e8:	45a0      	cmp	r8, r4
 80047ea:	bf28      	it	cs
 80047ec:	46a0      	movcs	r8, r4
 80047ee:	4649      	mov	r1, r9
 80047f0:	4642      	mov	r2, r8
 80047f2:	f000 fcc7 	bl	8005184 <memcpy>
 80047f6:	4603      	mov	r3, r0
 80047f8:	f899 2000 	ldrb.w	r2, [r9]
 80047fc:	eba4 0408 	sub.w	r4, r4, r8
 8004800:	4445      	add	r5, r8
 8004802:	4416      	add	r6, r2
 8004804:	4443      	add	r3, r8
 8004806:	b2a4      	uxth	r4, r4
 8004808:	b2ad      	uxth	r5, r5
 800480a:	b2b6      	uxth	r6, r6
 800480c:	2200      	movs	r2, #0
 800480e:	9205      	str	r2, [sp, #20]
 8004810:	9a02      	ldr	r2, [sp, #8]
 8004812:	9907      	ldr	r1, [sp, #28]
 8004814:	f8d2 2009 	ldr.w	r2, [r2, #9]
 8004818:	440a      	add	r2, r1
 800481a:	7910      	ldrb	r0, [r2, #4]
 800481c:	f8bd 1014 	ldrh.w	r1, [sp, #20]
 8004820:	4288      	cmp	r0, r1
 8004822:	d802      	bhi.n	800482a <usb_standard_get_descriptor+0xe8>
 8004824:	9a04      	ldr	r2, [sp, #16]
 8004826:	3201      	adds	r2, #1
 8004828:	e7c3      	b.n	80047b2 <usb_standard_get_descriptor+0x70>
 800482a:	2015      	movs	r0, #21
 800482c:	9905      	ldr	r1, [sp, #20]
 800482e:	f8d2 a00c 	ldr.w	sl, [r2, #12]
 8004832:	fb00 f901 	mul.w	r9, r0, r1
 8004836:	f81a 8009 	ldrb.w	r8, [sl, r9]
 800483a:	eb0a 0b09 	add.w	fp, sl, r9
 800483e:	45a0      	cmp	r8, r4
 8004840:	bf28      	it	cs
 8004842:	46a0      	movcs	r8, r4
 8004844:	4659      	mov	r1, fp
 8004846:	4642      	mov	r2, r8
 8004848:	4618      	mov	r0, r3
 800484a:	f000 fc9b 	bl	8005184 <memcpy>
 800484e:	4603      	mov	r3, r0
 8004850:	f81a 2009 	ldrb.w	r2, [sl, r9]
 8004854:	f8db 100d 	ldr.w	r1, [fp, #13]
 8004858:	eba4 0408 	sub.w	r4, r4, r8
 800485c:	4445      	add	r5, r8
 800485e:	4416      	add	r6, r2
 8004860:	4443      	add	r3, r8
 8004862:	b2a4      	uxth	r4, r4
 8004864:	b2ad      	uxth	r5, r5
 8004866:	b2b6      	uxth	r6, r6
 8004868:	b1a9      	cbz	r1, 8004896 <usb_standard_get_descriptor+0x154>
 800486a:	f8db 8011 	ldr.w	r8, [fp, #17]
 800486e:	4618      	mov	r0, r3
 8004870:	45a0      	cmp	r8, r4
 8004872:	bfa8      	it	ge
 8004874:	46a0      	movge	r8, r4
 8004876:	fa1f f988 	uxth.w	r9, r8
 800487a:	464a      	mov	r2, r9
 800487c:	f000 fc82 	bl	8005184 <memcpy>
 8004880:	4603      	mov	r3, r0
 8004882:	f8db 2011 	ldr.w	r2, [fp, #17]
 8004886:	eba4 0409 	sub.w	r4, r4, r9
 800488a:	444d      	add	r5, r9
 800488c:	4416      	add	r6, r2
 800488e:	444b      	add	r3, r9
 8004890:	b2a4      	uxth	r4, r4
 8004892:	b2ad      	uxth	r5, r5
 8004894:	b2b6      	uxth	r6, r6
 8004896:	f04f 0900 	mov.w	r9, #0
 800489a:	f89b 1004 	ldrb.w	r1, [fp, #4]
 800489e:	fa1f f289 	uxth.w	r2, r9
 80048a2:	4291      	cmp	r1, r2
 80048a4:	d802      	bhi.n	80048ac <usb_standard_get_descriptor+0x16a>
 80048a6:	9a05      	ldr	r2, [sp, #20]
 80048a8:	3201      	adds	r2, #1
 80048aa:	e7b0      	b.n	800480e <usb_standard_get_descriptor+0xcc>
 80048ac:	f8db 2009 	ldr.w	r2, [fp, #9]
 80048b0:	ebc9 1a09 	rsb	sl, r9, r9, lsl #4
 80048b4:	9206      	str	r2, [sp, #24]
 80048b6:	4452      	add	r2, sl
 80048b8:	9203      	str	r2, [sp, #12]
 80048ba:	9a06      	ldr	r2, [sp, #24]
 80048bc:	9903      	ldr	r1, [sp, #12]
 80048be:	f812 800a 	ldrb.w	r8, [r2, sl]
 80048c2:	4618      	mov	r0, r3
 80048c4:	45a0      	cmp	r8, r4
 80048c6:	bf28      	it	cs
 80048c8:	46a0      	movcs	r8, r4
 80048ca:	4642      	mov	r2, r8
 80048cc:	f000 fc5a 	bl	8005184 <memcpy>
 80048d0:	4603      	mov	r3, r0
 80048d2:	9a06      	ldr	r2, [sp, #24]
 80048d4:	eba4 0408 	sub.w	r4, r4, r8
 80048d8:	f812 200a 	ldrb.w	r2, [r2, sl]
 80048dc:	4445      	add	r5, r8
 80048de:	4416      	add	r6, r2
 80048e0:	9a03      	ldr	r2, [sp, #12]
 80048e2:	4443      	add	r3, r8
 80048e4:	f8d2 1007 	ldr.w	r1, [r2, #7]
 80048e8:	b2a4      	uxth	r4, r4
 80048ea:	b2ad      	uxth	r5, r5
 80048ec:	b2b6      	uxth	r6, r6
 80048ee:	b1b1      	cbz	r1, 800491e <usb_standard_get_descriptor+0x1dc>
 80048f0:	f8d2 800b 	ldr.w	r8, [r2, #11]
 80048f4:	4618      	mov	r0, r3
 80048f6:	45a0      	cmp	r8, r4
 80048f8:	bfa8      	it	ge
 80048fa:	46a0      	movge	r8, r4
 80048fc:	fa1f fa88 	uxth.w	sl, r8
 8004900:	4652      	mov	r2, sl
 8004902:	f000 fc3f 	bl	8005184 <memcpy>
 8004906:	4603      	mov	r3, r0
 8004908:	9a03      	ldr	r2, [sp, #12]
 800490a:	eba4 040a 	sub.w	r4, r4, sl
 800490e:	f8d2 200b 	ldr.w	r2, [r2, #11]
 8004912:	4455      	add	r5, sl
 8004914:	4416      	add	r6, r2
 8004916:	4453      	add	r3, sl
 8004918:	b2a4      	uxth	r4, r4
 800491a:	b2ad      	uxth	r5, r5
 800491c:	b2b6      	uxth	r6, r6
 800491e:	f109 0901 	add.w	r9, r9, #1
 8004922:	e7ba      	b.n	800489a <usb_standard_get_descriptor+0x158>
 8004924:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8004928:	6904      	ldr	r4, [r0, #16]
 800492a:	d10d      	bne.n	8004948 <usb_standard_get_descriptor+0x206>
 800492c:	2309      	movs	r3, #9
 800492e:	70a3      	strb	r3, [r4, #2]
 8004930:	2304      	movs	r3, #4
 8004932:	70e3      	strb	r3, [r4, #3]
 8004934:	7023      	strb	r3, [r4, #0]
 8004936:	883b      	ldrh	r3, [r7, #0]
 8004938:	2b04      	cmp	r3, #4
 800493a:	bf28      	it	cs
 800493c:	2304      	movcs	r3, #4
 800493e:	803b      	strh	r3, [r7, #0]
 8004940:	2303      	movs	r3, #3
 8004942:	7063      	strb	r3, [r4, #1]
 8004944:	6034      	str	r4, [r6, #0]
 8004946:	e713      	b.n	8004770 <usb_standard_get_descriptor+0x2e>
 8004948:	6883      	ldr	r3, [r0, #8]
 800494a:	3d01      	subs	r5, #1
 800494c:	b30b      	cbz	r3, 8004992 <usb_standard_get_descriptor+0x250>
 800494e:	68c2      	ldr	r2, [r0, #12]
 8004950:	42aa      	cmp	r2, r5
 8004952:	dd1e      	ble.n	8004992 <usb_standard_get_descriptor+0x250>
 8004954:	f240 4209 	movw	r2, #1033	; 0x409
 8004958:	8889      	ldrh	r1, [r1, #4]
 800495a:	4291      	cmp	r1, r2
 800495c:	d119      	bne.n	8004992 <usb_standard_get_descriptor+0x250>
 800495e:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8004962:	4628      	mov	r0, r5
 8004964:	f000 fce2 	bl	800532c <strlen>
 8004968:	3001      	adds	r0, #1
 800496a:	0040      	lsls	r0, r0, #1
 800496c:	b2c0      	uxtb	r0, r0
 800496e:	7020      	strb	r0, [r4, #0]
 8004970:	883b      	ldrh	r3, [r7, #0]
 8004972:	4298      	cmp	r0, r3
 8004974:	bf28      	it	cs
 8004976:	4618      	movcs	r0, r3
 8004978:	2300      	movs	r3, #0
 800497a:	8038      	strh	r0, [r7, #0]
 800497c:	883a      	ldrh	r2, [r7, #0]
 800497e:	0852      	lsrs	r2, r2, #1
 8004980:	3a01      	subs	r2, #1
 8004982:	429a      	cmp	r2, r3
 8004984:	dddc      	ble.n	8004940 <usb_standard_get_descriptor+0x1fe>
 8004986:	5ce9      	ldrb	r1, [r5, r3]
 8004988:	eb04 0243 	add.w	r2, r4, r3, lsl #1
 800498c:	8051      	strh	r1, [r2, #2]
 800498e:	3301      	adds	r3, #1
 8004990:	e7f4      	b.n	800497c <usb_standard_get_descriptor+0x23a>
 8004992:	2000      	movs	r0, #0
 8004994:	e6ed      	b.n	8004772 <usb_standard_get_descriptor+0x30>

08004996 <usb_standard_interface_get_status>:
 8004996:	8819      	ldrh	r1, [r3, #0]
 8004998:	2001      	movs	r0, #1
 800499a:	2902      	cmp	r1, #2
 800499c:	bf84      	itt	hi
 800499e:	2102      	movhi	r1, #2
 80049a0:	8019      	strhhi	r1, [r3, #0]
 80049a2:	2300      	movs	r3, #0
 80049a4:	6811      	ldr	r1, [r2, #0]
 80049a6:	700b      	strb	r3, [r1, #0]
 80049a8:	6812      	ldr	r2, [r2, #0]
 80049aa:	7053      	strb	r3, [r2, #1]
 80049ac:	4770      	bx	lr

080049ae <usbd_register_set_config_callback>:
 80049ae:	2300      	movs	r3, #0
 80049b0:	b510      	push	{r4, lr}
 80049b2:	f100 04c8 	add.w	r4, r0, #200	; 0xc8
 80049b6:	f854 2b04 	ldr.w	r2, [r4], #4
 80049ba:	b12a      	cbz	r2, 80049c8 <usbd_register_set_config_callback+0x1a>
 80049bc:	3301      	adds	r3, #1
 80049be:	2b04      	cmp	r3, #4
 80049c0:	d1f9      	bne.n	80049b6 <usbd_register_set_config_callback+0x8>
 80049c2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80049c6:	bd10      	pop	{r4, pc}
 80049c8:	3332      	adds	r3, #50	; 0x32
 80049ca:	f840 1023 	str.w	r1, [r0, r3, lsl #2]
 80049ce:	4610      	mov	r0, r2
 80049d0:	e7f9      	b.n	80049c6 <usbd_register_set_config_callback+0x18>
	...

080049d4 <_usbd_standard_request_device>:
 80049d4:	b410      	push	{r4}
 80049d6:	784c      	ldrb	r4, [r1, #1]
 80049d8:	2c09      	cmp	r4, #9
 80049da:	d812      	bhi.n	8004a02 <_usbd_standard_request_device+0x2e>
 80049dc:	e8df f004 	tbb	[pc, r4]
 80049e0:	1111110d 	.word	0x1111110d
 80049e4:	110b0f11 	.word	0x110b0f11
 80049e8:	0509      	.short	0x0509
 80049ea:	4c07      	ldr	r4, [pc, #28]	; (8004a08 <_usbd_standard_request_device+0x34>)
 80049ec:	46a4      	mov	ip, r4
 80049ee:	bc10      	pop	{r4}
 80049f0:	4760      	bx	ip
 80049f2:	4c06      	ldr	r4, [pc, #24]	; (8004a0c <_usbd_standard_request_device+0x38>)
 80049f4:	e7fa      	b.n	80049ec <_usbd_standard_request_device+0x18>
 80049f6:	4c06      	ldr	r4, [pc, #24]	; (8004a10 <_usbd_standard_request_device+0x3c>)
 80049f8:	e7f8      	b.n	80049ec <_usbd_standard_request_device+0x18>
 80049fa:	4c06      	ldr	r4, [pc, #24]	; (8004a14 <_usbd_standard_request_device+0x40>)
 80049fc:	e7f6      	b.n	80049ec <_usbd_standard_request_device+0x18>
 80049fe:	4c06      	ldr	r4, [pc, #24]	; (8004a18 <_usbd_standard_request_device+0x44>)
 8004a00:	e7f4      	b.n	80049ec <_usbd_standard_request_device+0x18>
 8004a02:	2000      	movs	r0, #0
 8004a04:	bc10      	pop	{r4}
 8004a06:	4770      	bx	lr
 8004a08:	080045ab 	.word	0x080045ab
 8004a0c:	0800463d 	.word	0x0800463d
 8004a10:	08004743 	.word	0x08004743
 8004a14:	08004693 	.word	0x08004693
 8004a18:	08004583 	.word	0x08004583

08004a1c <_usbd_standard_request_interface>:
 8004a1c:	b410      	push	{r4}
 8004a1e:	784c      	ldrb	r4, [r1, #1]
 8004a20:	2c0a      	cmp	r4, #10
 8004a22:	d006      	beq.n	8004a32 <_usbd_standard_request_interface+0x16>
 8004a24:	2c0b      	cmp	r4, #11
 8004a26:	d006      	beq.n	8004a36 <_usbd_standard_request_interface+0x1a>
 8004a28:	b93c      	cbnz	r4, 8004a3a <_usbd_standard_request_interface+0x1e>
 8004a2a:	4c05      	ldr	r4, [pc, #20]	; (8004a40 <_usbd_standard_request_interface+0x24>)
 8004a2c:	46a4      	mov	ip, r4
 8004a2e:	bc10      	pop	{r4}
 8004a30:	4760      	bx	ip
 8004a32:	4c04      	ldr	r4, [pc, #16]	; (8004a44 <_usbd_standard_request_interface+0x28>)
 8004a34:	e7fa      	b.n	8004a2c <_usbd_standard_request_interface+0x10>
 8004a36:	4c04      	ldr	r4, [pc, #16]	; (8004a48 <_usbd_standard_request_interface+0x2c>)
 8004a38:	e7f8      	b.n	8004a2c <_usbd_standard_request_interface+0x10>
 8004a3a:	2000      	movs	r0, #0
 8004a3c:	bc10      	pop	{r4}
 8004a3e:	4770      	bx	lr
 8004a40:	08004997 	.word	0x08004997
 8004a44:	0800465f 	.word	0x0800465f
 8004a48:	080046f5 	.word	0x080046f5

08004a4c <_usbd_standard_request_endpoint>:
 8004a4c:	b410      	push	{r4}
 8004a4e:	784c      	ldrb	r4, [r1, #1]
 8004a50:	2c01      	cmp	r4, #1
 8004a52:	d005      	beq.n	8004a60 <_usbd_standard_request_endpoint+0x14>
 8004a54:	b184      	cbz	r4, 8004a78 <_usbd_standard_request_endpoint+0x2c>
 8004a56:	2c03      	cmp	r4, #3
 8004a58:	d007      	beq.n	8004a6a <_usbd_standard_request_endpoint+0x1e>
 8004a5a:	2000      	movs	r0, #0
 8004a5c:	bc10      	pop	{r4}
 8004a5e:	4770      	bx	lr
 8004a60:	884c      	ldrh	r4, [r1, #2]
 8004a62:	2c00      	cmp	r4, #0
 8004a64:	d1f9      	bne.n	8004a5a <_usbd_standard_request_endpoint+0xe>
 8004a66:	4c05      	ldr	r4, [pc, #20]	; (8004a7c <_usbd_standard_request_endpoint+0x30>)
 8004a68:	e003      	b.n	8004a72 <_usbd_standard_request_endpoint+0x26>
 8004a6a:	884c      	ldrh	r4, [r1, #2]
 8004a6c:	2c00      	cmp	r4, #0
 8004a6e:	d1f4      	bne.n	8004a5a <_usbd_standard_request_endpoint+0xe>
 8004a70:	4c03      	ldr	r4, [pc, #12]	; (8004a80 <_usbd_standard_request_endpoint+0x34>)
 8004a72:	46a4      	mov	ip, r4
 8004a74:	bc10      	pop	{r4}
 8004a76:	4760      	bx	ip
 8004a78:	4c02      	ldr	r4, [pc, #8]	; (8004a84 <_usbd_standard_request_endpoint+0x38>)
 8004a7a:	e7fa      	b.n	8004a72 <_usbd_standard_request_endpoint+0x26>
 8004a7c:	080046e5 	.word	0x080046e5
 8004a80:	080046d5 	.word	0x080046d5
 8004a84:	080046ab 	.word	0x080046ab

08004a88 <_usbd_standard_request>:
 8004a88:	b410      	push	{r4}
 8004a8a:	780c      	ldrb	r4, [r1, #0]
 8004a8c:	f014 0f60 	tst.w	r4, #96	; 0x60
 8004a90:	d106      	bne.n	8004aa0 <_usbd_standard_request+0x18>
 8004a92:	f004 041f 	and.w	r4, r4, #31
 8004a96:	2c01      	cmp	r4, #1
 8004a98:	d008      	beq.n	8004aac <_usbd_standard_request+0x24>
 8004a9a:	b124      	cbz	r4, 8004aa6 <_usbd_standard_request+0x1e>
 8004a9c:	2c02      	cmp	r4, #2
 8004a9e:	d008      	beq.n	8004ab2 <_usbd_standard_request+0x2a>
 8004aa0:	2000      	movs	r0, #0
 8004aa2:	bc10      	pop	{r4}
 8004aa4:	4770      	bx	lr
 8004aa6:	bc10      	pop	{r4}
 8004aa8:	f7ff bf94 	b.w	80049d4 <_usbd_standard_request_device>
 8004aac:	bc10      	pop	{r4}
 8004aae:	f7ff bfb5 	b.w	8004a1c <_usbd_standard_request_interface>
 8004ab2:	bc10      	pop	{r4}
 8004ab4:	f7ff bfca 	b.w	8004a4c <_usbd_standard_request_endpoint>

08004ab8 <st_usbfs_v1_usbd_init>:
 8004ab8:	b508      	push	{r3, lr}
 8004aba:	f240 3097 	movw	r0, #919	; 0x397
 8004abe:	f7ff fb11 	bl	80040e4 <rcc_periph_clock_enable>
 8004ac2:	2300      	movs	r3, #0
 8004ac4:	4a05      	ldr	r2, [pc, #20]	; (8004adc <st_usbfs_v1_usbd_init+0x24>)
 8004ac6:	4906      	ldr	r1, [pc, #24]	; (8004ae0 <st_usbfs_v1_usbd_init+0x28>)
 8004ac8:	6013      	str	r3, [r2, #0]
 8004aca:	600b      	str	r3, [r1, #0]
 8004acc:	f841 3c0c 	str.w	r3, [r1, #-12]
 8004ad0:	f44f 431c 	mov.w	r3, #39936	; 0x9c00
 8004ad4:	4803      	ldr	r0, [pc, #12]	; (8004ae4 <st_usbfs_v1_usbd_init+0x2c>)
 8004ad6:	6013      	str	r3, [r2, #0]
 8004ad8:	bd08      	pop	{r3, pc}
 8004ada:	bf00      	nop
 8004adc:	40005c40 	.word	0x40005c40
 8004ae0:	40005c50 	.word	0x40005c50
 8004ae4:	20000390 	.word	0x20000390

08004ae8 <st_usbfs_copy_to_pm>:
 8004ae8:	3201      	adds	r2, #1
 8004aea:	1052      	asrs	r2, r2, #1
 8004aec:	eb01 0242 	add.w	r2, r1, r2, lsl #1
 8004af0:	4291      	cmp	r1, r2
 8004af2:	d100      	bne.n	8004af6 <st_usbfs_copy_to_pm+0xe>
 8004af4:	4770      	bx	lr
 8004af6:	f831 3b02 	ldrh.w	r3, [r1], #2
 8004afa:	f840 3b04 	str.w	r3, [r0], #4
 8004afe:	e7f7      	b.n	8004af0 <st_usbfs_copy_to_pm+0x8>

08004b00 <st_usbfs_copy_from_pm>:
 8004b00:	4603      	mov	r3, r0
 8004b02:	b570      	push	{r4, r5, r6, lr}
 8004b04:	f002 0401 	and.w	r4, r2, #1
 8004b08:	0852      	lsrs	r2, r2, #1
 8004b0a:	eb01 0582 	add.w	r5, r1, r2, lsl #2
 8004b0e:	42a9      	cmp	r1, r5
 8004b10:	d104      	bne.n	8004b1c <st_usbfs_copy_from_pm+0x1c>
 8004b12:	b114      	cbz	r4, 8004b1a <st_usbfs_copy_from_pm+0x1a>
 8004b14:	780b      	ldrb	r3, [r1, #0]
 8004b16:	f800 3012 	strb.w	r3, [r0, r2, lsl #1]
 8004b1a:	bd70      	pop	{r4, r5, r6, pc}
 8004b1c:	f831 6b04 	ldrh.w	r6, [r1], #4
 8004b20:	f823 6b02 	strh.w	r6, [r3], #2
 8004b24:	e7f3      	b.n	8004b0e <st_usbfs_copy_from_pm+0xe>

08004b26 <blocking_handler>:
 8004b26:	e7fe      	b.n	8004b26 <blocking_handler>

08004b28 <null_handler>:
 8004b28:	4770      	bx	lr
	...

08004b2c <reset_handler>:
 8004b2c:	4b17      	ldr	r3, [pc, #92]	; (8004b8c <reset_handler+0x60>)
 8004b2e:	4a18      	ldr	r2, [pc, #96]	; (8004b90 <reset_handler+0x64>)
 8004b30:	4918      	ldr	r1, [pc, #96]	; (8004b94 <reset_handler+0x68>)
 8004b32:	428b      	cmp	r3, r1
 8004b34:	d316      	bcc.n	8004b64 <reset_handler+0x38>
 8004b36:	2100      	movs	r1, #0
 8004b38:	4a17      	ldr	r2, [pc, #92]	; (8004b98 <reset_handler+0x6c>)
 8004b3a:	4293      	cmp	r3, r2
 8004b3c:	d317      	bcc.n	8004b6e <reset_handler+0x42>
 8004b3e:	4a17      	ldr	r2, [pc, #92]	; (8004b9c <reset_handler+0x70>)
 8004b40:	4c17      	ldr	r4, [pc, #92]	; (8004ba0 <reset_handler+0x74>)
 8004b42:	6813      	ldr	r3, [r2, #0]
 8004b44:	4d17      	ldr	r5, [pc, #92]	; (8004ba4 <reset_handler+0x78>)
 8004b46:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8004b4a:	6013      	str	r3, [r2, #0]
 8004b4c:	42ac      	cmp	r4, r5
 8004b4e:	d311      	bcc.n	8004b74 <reset_handler+0x48>
 8004b50:	4c15      	ldr	r4, [pc, #84]	; (8004ba8 <reset_handler+0x7c>)
 8004b52:	4d16      	ldr	r5, [pc, #88]	; (8004bac <reset_handler+0x80>)
 8004b54:	42ac      	cmp	r4, r5
 8004b56:	d311      	bcc.n	8004b7c <reset_handler+0x50>
 8004b58:	f7fe fb94 	bl	8003284 <main>
 8004b5c:	4c14      	ldr	r4, [pc, #80]	; (8004bb0 <reset_handler+0x84>)
 8004b5e:	4d15      	ldr	r5, [pc, #84]	; (8004bb4 <reset_handler+0x88>)
 8004b60:	42ac      	cmp	r4, r5
 8004b62:	d30f      	bcc.n	8004b84 <reset_handler+0x58>
 8004b64:	f852 0b04 	ldr.w	r0, [r2], #4
 8004b68:	f843 0b04 	str.w	r0, [r3], #4
 8004b6c:	e7e1      	b.n	8004b32 <reset_handler+0x6>
 8004b6e:	f843 1b04 	str.w	r1, [r3], #4
 8004b72:	e7e2      	b.n	8004b3a <reset_handler+0xe>
 8004b74:	f854 3b04 	ldr.w	r3, [r4], #4
 8004b78:	4798      	blx	r3
 8004b7a:	e7e7      	b.n	8004b4c <reset_handler+0x20>
 8004b7c:	f854 3b04 	ldr.w	r3, [r4], #4
 8004b80:	4798      	blx	r3
 8004b82:	e7e7      	b.n	8004b54 <reset_handler+0x28>
 8004b84:	f854 3b04 	ldr.w	r3, [r4], #4
 8004b88:	4798      	blx	r3
 8004b8a:	e7e9      	b.n	8004b60 <reset_handler+0x34>
 8004b8c:	20000000 	.word	0x20000000
 8004b90:	080057f4 	.word	0x080057f4
 8004b94:	200001f8 	.word	0x200001f8
 8004b98:	20000578 	.word	0x20000578
 8004b9c:	e000ed14 	.word	0xe000ed14
 8004ba0:	080057f4 	.word	0x080057f4
 8004ba4:	080057f4 	.word	0x080057f4
 8004ba8:	080057f4 	.word	0x080057f4
 8004bac:	080057f4 	.word	0x080057f4
 8004bb0:	080057f4 	.word	0x080057f4
 8004bb4:	080057f4 	.word	0x080057f4

08004bb8 <systick_set_reload>:
 8004bb8:	4b02      	ldr	r3, [pc, #8]	; (8004bc4 <systick_set_reload+0xc>)
 8004bba:	f020 407f 	bic.w	r0, r0, #4278190080	; 0xff000000
 8004bbe:	6018      	str	r0, [r3, #0]
 8004bc0:	4770      	bx	lr
 8004bc2:	bf00      	nop
 8004bc4:	e000e014 	.word	0xe000e014

08004bc8 <systick_set_clocksource>:
 8004bc8:	4a04      	ldr	r2, [pc, #16]	; (8004bdc <systick_set_clocksource+0x14>)
 8004bca:	f000 0004 	and.w	r0, r0, #4
 8004bce:	6813      	ldr	r3, [r2, #0]
 8004bd0:	f023 0304 	bic.w	r3, r3, #4
 8004bd4:	4303      	orrs	r3, r0
 8004bd6:	6013      	str	r3, [r2, #0]
 8004bd8:	4770      	bx	lr
 8004bda:	bf00      	nop
 8004bdc:	e000e010 	.word	0xe000e010

08004be0 <systick_interrupt_enable>:
 8004be0:	4a02      	ldr	r2, [pc, #8]	; (8004bec <systick_interrupt_enable+0xc>)
 8004be2:	6813      	ldr	r3, [r2, #0]
 8004be4:	f043 0302 	orr.w	r3, r3, #2
 8004be8:	6013      	str	r3, [r2, #0]
 8004bea:	4770      	bx	lr
 8004bec:	e000e010 	.word	0xe000e010

08004bf0 <systick_counter_enable>:
 8004bf0:	4a02      	ldr	r2, [pc, #8]	; (8004bfc <systick_counter_enable+0xc>)
 8004bf2:	6813      	ldr	r3, [r2, #0]
 8004bf4:	f043 0301 	orr.w	r3, r3, #1
 8004bf8:	6013      	str	r3, [r2, #0]
 8004bfa:	4770      	bx	lr
 8004bfc:	e000e010 	.word	0xe000e010

08004c00 <systick_counter_disable>:
 8004c00:	4a02      	ldr	r2, [pc, #8]	; (8004c0c <systick_counter_disable+0xc>)
 8004c02:	6813      	ldr	r3, [r2, #0]
 8004c04:	f023 0301 	bic.w	r3, r3, #1
 8004c08:	6013      	str	r3, [r2, #0]
 8004c0a:	4770      	bx	lr
 8004c0c:	e000e010 	.word	0xe000e010

08004c10 <systick_clear>:
 8004c10:	2200      	movs	r2, #0
 8004c12:	4b01      	ldr	r3, [pc, #4]	; (8004c18 <systick_clear+0x8>)
 8004c14:	601a      	str	r2, [r3, #0]
 8004c16:	4770      	bx	lr
 8004c18:	e000e018 	.word	0xe000e018

08004c1c <nvic_enable_irq>:
 8004c1c:	2201      	movs	r2, #1
 8004c1e:	0943      	lsrs	r3, r0, #5
 8004c20:	009b      	lsls	r3, r3, #2
 8004c22:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8004c26:	f000 001f 	and.w	r0, r0, #31
 8004c2a:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 8004c2e:	fa02 f000 	lsl.w	r0, r2, r0
 8004c32:	6018      	str	r0, [r3, #0]
 8004c34:	4770      	bx	lr
	...

08004c38 <nvic_set_priority>:
 8004c38:	2843      	cmp	r0, #67	; 0x43
 8004c3a:	bf93      	iteet	ls
 8004c3c:	f100 4060 	addls.w	r0, r0, #3758096384	; 0xe0000000
 8004c40:	4b04      	ldrhi	r3, [pc, #16]	; (8004c54 <nvic_set_priority+0x1c>)
 8004c42:	f000 000f 	andhi.w	r0, r0, #15
 8004c46:	f500 4064 	addls.w	r0, r0, #58368	; 0xe400
 8004c4a:	bf8c      	ite	hi
 8004c4c:	54c1      	strbhi	r1, [r0, r3]
 8004c4e:	7001      	strbls	r1, [r0, #0]
 8004c50:	4770      	bx	lr
 8004c52:	bf00      	nop
 8004c54:	e000ed14 	.word	0xe000ed14

08004c58 <st_usbfs_set_address>:
 8004c58:	4b02      	ldr	r3, [pc, #8]	; (8004c64 <st_usbfs_set_address+0xc>)
 8004c5a:	f041 0180 	orr.w	r1, r1, #128	; 0x80
 8004c5e:	6019      	str	r1, [r3, #0]
 8004c60:	4770      	bx	lr
 8004c62:	bf00      	nop
 8004c64:	40005c4c 	.word	0x40005c4c

08004c68 <st_usbfs_set_ep_rx_bufsize>:
 8004c68:	2a3e      	cmp	r2, #62	; 0x3e
 8004c6a:	4b0f      	ldr	r3, [pc, #60]	; (8004ca8 <st_usbfs_set_ep_rx_bufsize+0x40>)
 8004c6c:	ea4f 01c1 	mov.w	r1, r1, lsl #3
 8004c70:	d90d      	bls.n	8004c8e <st_usbfs_set_ep_rx_bufsize+0x26>
 8004c72:	681b      	ldr	r3, [r3, #0]
 8004c74:	06d0      	lsls	r0, r2, #27
 8004c76:	b29b      	uxth	r3, r3
 8004c78:	4419      	add	r1, r3
 8004c7a:	4b0c      	ldr	r3, [pc, #48]	; (8004cac <st_usbfs_set_ep_rx_bufsize+0x44>)
 8004c7c:	bf18      	it	ne
 8004c7e:	3a20      	subne	r2, #32
 8004c80:	480b      	ldr	r0, [pc, #44]	; (8004cb0 <st_usbfs_set_ep_rx_bufsize+0x48>)
 8004c82:	ea43 1242 	orr.w	r2, r3, r2, lsl #5
 8004c86:	0049      	lsls	r1, r1, #1
 8004c88:	b292      	uxth	r2, r2
 8004c8a:	5042      	str	r2, [r0, r1]
 8004c8c:	4770      	bx	lr
 8004c8e:	681b      	ldr	r3, [r3, #0]
 8004c90:	07d0      	lsls	r0, r2, #31
 8004c92:	b29b      	uxth	r3, r3
 8004c94:	bf48      	it	mi
 8004c96:	3201      	addmi	r2, #1
 8004c98:	4419      	add	r1, r3
 8004c9a:	0292      	lsls	r2, r2, #10
 8004c9c:	4b04      	ldr	r3, [pc, #16]	; (8004cb0 <st_usbfs_set_ep_rx_bufsize+0x48>)
 8004c9e:	0049      	lsls	r1, r1, #1
 8004ca0:	b292      	uxth	r2, r2
 8004ca2:	505a      	str	r2, [r3, r1]
 8004ca4:	4770      	bx	lr
 8004ca6:	bf00      	nop
 8004ca8:	40005c50 	.word	0x40005c50
 8004cac:	ffff8000 	.word	0xffff8000
 8004cb0:	4000600c 	.word	0x4000600c

08004cb4 <st_usbfs_ep_setup>:
 8004cb4:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8004cb8:	461e      	mov	r6, r3
 8004cba:	f04f 63c0 	mov.w	r3, #100663296	; 0x6000000
 8004cbe:	f001 077f 	and.w	r7, r1, #127	; 0x7f
 8004cc2:	00bc      	lsls	r4, r7, #2
 8004cc4:	4605      	mov	r5, r0
 8004cc6:	f104 4480 	add.w	r4, r4, #1073741824	; 0x40000000
 8004cca:	4840      	ldr	r0, [pc, #256]	; (8004dcc <st_usbfs_ep_setup+0x118>)
 8004ccc:	f504 44b8 	add.w	r4, r4, #23552	; 0x5c00
 8004cd0:	e9cd 0300 	strd	r0, r3, [sp]
 8004cd4:	6823      	ldr	r3, [r4, #0]
 8004cd6:	a802      	add	r0, sp, #8
 8004cd8:	f423 43e0 	bic.w	r3, r3, #28672	; 0x7000
 8004cdc:	f023 037f 	bic.w	r3, r3, #127	; 0x7f
 8004ce0:	433b      	orrs	r3, r7
 8004ce2:	b29b      	uxth	r3, r3
 8004ce4:	6023      	str	r3, [r4, #0]
 8004ce6:	6823      	ldr	r3, [r4, #0]
 8004ce8:	eb00 0242 	add.w	r2, r0, r2, lsl #1
 8004cec:	f423 43ec 	bic.w	r3, r3, #30208	; 0x7600
 8004cf0:	f832 2c08 	ldrh.w	r2, [r2, #-8]
 8004cf4:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8004cf8:	4313      	orrs	r3, r2
 8004cfa:	b249      	sxtb	r1, r1
 8004cfc:	b29b      	uxth	r3, r3
 8004cfe:	2900      	cmp	r1, #0
 8004d00:	f8dd 8020 	ldr.w	r8, [sp, #32]
 8004d04:	6023      	str	r3, [r4, #0]
 8004d06:	4832      	ldr	r0, [pc, #200]	; (8004dd0 <st_usbfs_ep_setup+0x11c>)
 8004d08:	ea4f 0cc7 	mov.w	ip, r7, lsl #3
 8004d0c:	db2a      	blt.n	8004d64 <st_usbfs_ep_setup+0xb0>
 8004d0e:	b34f      	cbz	r7, 8004d64 <st_usbfs_ep_setup+0xb0>
 8004d10:	6803      	ldr	r3, [r0, #0]
 8004d12:	8b2a      	ldrh	r2, [r5, #24]
 8004d14:	b29b      	uxth	r3, r3
 8004d16:	449c      	add	ip, r3
 8004d18:	4b2e      	ldr	r3, [pc, #184]	; (8004dd4 <st_usbfs_ep_setup+0x120>)
 8004d1a:	ea4f 0c4c 	mov.w	ip, ip, lsl #1
 8004d1e:	f843 200c 	str.w	r2, [r3, ip]
 8004d22:	4639      	mov	r1, r7
 8004d24:	4632      	mov	r2, r6
 8004d26:	4628      	mov	r0, r5
 8004d28:	f7ff ff9e 	bl	8004c68 <st_usbfs_set_ep_rx_bufsize>
 8004d2c:	f1b8 0f00 	cmp.w	r8, #0
 8004d30:	d146      	bne.n	8004dc0 <st_usbfs_ep_setup+0x10c>
 8004d32:	6823      	ldr	r3, [r4, #0]
 8004d34:	f423 5341 	bic.w	r3, r3, #12352	; 0x3040
 8004d38:	f023 0330 	bic.w	r3, r3, #48	; 0x30
 8004d3c:	041b      	lsls	r3, r3, #16
 8004d3e:	0c1b      	lsrs	r3, r3, #16
 8004d40:	6023      	str	r3, [r4, #0]
 8004d42:	6822      	ldr	r2, [r4, #0]
 8004d44:	8b2b      	ldrh	r3, [r5, #24]
 8004d46:	f422 4280 	bic.w	r2, r2, #16384	; 0x4000
 8004d4a:	f022 0270 	bic.w	r2, r2, #112	; 0x70
 8004d4e:	b292      	uxth	r2, r2
 8004d50:	f482 5240 	eor.w	r2, r2, #12288	; 0x3000
 8004d54:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
 8004d58:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8004d5c:	441e      	add	r6, r3
 8004d5e:	6022      	str	r2, [r4, #0]
 8004d60:	832e      	strh	r6, [r5, #24]
 8004d62:	e02a      	b.n	8004dba <st_usbfs_ep_setup+0x106>
 8004d64:	6802      	ldr	r2, [r0, #0]
 8004d66:	8b2b      	ldrh	r3, [r5, #24]
 8004d68:	b292      	uxth	r2, r2
 8004d6a:	4462      	add	r2, ip
 8004d6c:	0052      	lsls	r2, r2, #1
 8004d6e:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 8004d72:	f502 42c0 	add.w	r2, r2, #24576	; 0x6000
 8004d76:	6013      	str	r3, [r2, #0]
 8004d78:	f1b8 0f00 	cmp.w	r8, #0
 8004d7c:	d004      	beq.n	8004d88 <st_usbfs_ep_setup+0xd4>
 8004d7e:	220c      	movs	r2, #12
 8004d80:	fb02 5207 	mla	r2, r2, r7, r5
 8004d84:	f8c2 8068 	str.w	r8, [r2, #104]	; 0x68
 8004d88:	6822      	ldr	r2, [r4, #0]
 8004d8a:	4433      	add	r3, r6
 8004d8c:	f422 42e0 	bic.w	r2, r2, #28672	; 0x7000
 8004d90:	f022 0230 	bic.w	r2, r2, #48	; 0x30
 8004d94:	0412      	lsls	r2, r2, #16
 8004d96:	0c12      	lsrs	r2, r2, #16
 8004d98:	6022      	str	r2, [r4, #0]
 8004d9a:	6822      	ldr	r2, [r4, #0]
 8004d9c:	2900      	cmp	r1, #0
 8004d9e:	f422 42e0 	bic.w	r2, r2, #28672	; 0x7000
 8004da2:	f022 0240 	bic.w	r2, r2, #64	; 0x40
 8004da6:	b292      	uxth	r2, r2
 8004da8:	f082 0220 	eor.w	r2, r2, #32
 8004dac:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
 8004db0:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8004db4:	6022      	str	r2, [r4, #0]
 8004db6:	832b      	strh	r3, [r5, #24]
 8004db8:	daaa      	bge.n	8004d10 <st_usbfs_ep_setup+0x5c>
 8004dba:	b002      	add	sp, #8
 8004dbc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004dc0:	230c      	movs	r3, #12
 8004dc2:	fb03 5707 	mla	r7, r3, r7, r5
 8004dc6:	f8c7 806c 	str.w	r8, [r7, #108]	; 0x6c
 8004dca:	e7b2      	b.n	8004d32 <st_usbfs_ep_setup+0x7e>
 8004dcc:	04000200 	.word	0x04000200
 8004dd0:	40005c50 	.word	0x40005c50
 8004dd4:	40006008 	.word	0x40006008

08004dd8 <st_usbfs_endpoints_reset>:
 8004dd8:	f248 0180 	movw	r1, #32896	; 0x8080
 8004ddc:	b570      	push	{r4, r5, r6, lr}
 8004dde:	4a0b      	ldr	r2, [pc, #44]	; (8004e0c <st_usbfs_endpoints_reset+0x34>)
 8004de0:	4e0b      	ldr	r6, [pc, #44]	; (8004e10 <st_usbfs_endpoints_reset+0x38>)
 8004de2:	4d0c      	ldr	r5, [pc, #48]	; (8004e14 <st_usbfs_endpoints_reset+0x3c>)
 8004de4:	4c0c      	ldr	r4, [pc, #48]	; (8004e18 <st_usbfs_endpoints_reset+0x40>)
 8004de6:	6813      	ldr	r3, [r2, #0]
 8004de8:	4033      	ands	r3, r6
 8004dea:	430b      	orrs	r3, r1
 8004dec:	b29b      	uxth	r3, r3
 8004dee:	6013      	str	r3, [r2, #0]
 8004df0:	6813      	ldr	r3, [r2, #0]
 8004df2:	402b      	ands	r3, r5
 8004df4:	430b      	orrs	r3, r1
 8004df6:	b29b      	uxth	r3, r3
 8004df8:	f842 3b04 	str.w	r3, [r2], #4
 8004dfc:	42a2      	cmp	r2, r4
 8004dfe:	d1f2      	bne.n	8004de6 <st_usbfs_endpoints_reset+0xe>
 8004e00:	6803      	ldr	r3, [r0, #0]
 8004e02:	79db      	ldrb	r3, [r3, #7]
 8004e04:	3320      	adds	r3, #32
 8004e06:	005b      	lsls	r3, r3, #1
 8004e08:	8303      	strh	r3, [r0, #24]
 8004e0a:	bd70      	pop	{r4, r5, r6, pc}
 8004e0c:	40005c04 	.word	0x40005c04
 8004e10:	ffff8fbf 	.word	0xffff8fbf
 8004e14:	ffffbf8f 	.word	0xffffbf8f
 8004e18:	40005c20 	.word	0x40005c20

08004e1c <st_usbfs_ep_stall_set>:
 8004e1c:	b510      	push	{r4, lr}
 8004e1e:	2900      	cmp	r1, #0
 8004e20:	d132      	bne.n	8004e88 <st_usbfs_ep_stall_set+0x6c>
 8004e22:	2a00      	cmp	r2, #0
 8004e24:	bf14      	ite	ne
 8004e26:	2410      	movne	r4, #16
 8004e28:	2420      	moveq	r4, #32
 8004e2a:	482a      	ldr	r0, [pc, #168]	; (8004ed4 <st_usbfs_ep_stall_set+0xb8>)
 8004e2c:	6803      	ldr	r3, [r0, #0]
 8004e2e:	f423 43e0 	bic.w	r3, r3, #28672	; 0x7000
 8004e32:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8004e36:	4063      	eors	r3, r4
 8004e38:	b21b      	sxth	r3, r3
 8004e3a:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8004e3e:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8004e42:	b29b      	uxth	r3, r3
 8004e44:	6003      	str	r3, [r0, #0]
 8004e46:	0089      	lsls	r1, r1, #2
 8004e48:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8004e4c:	f501 41b8 	add.w	r1, r1, #23552	; 0x5c00
 8004e50:	b93a      	cbnz	r2, 8004e62 <st_usbfs_ep_stall_set+0x46>
 8004e52:	680b      	ldr	r3, [r1, #0]
 8004e54:	f423 5341 	bic.w	r3, r3, #12352	; 0x3040
 8004e58:	f023 0330 	bic.w	r3, r3, #48	; 0x30
 8004e5c:	041b      	lsls	r3, r3, #16
 8004e5e:	0c1b      	lsrs	r3, r3, #16
 8004e60:	600b      	str	r3, [r1, #0]
 8004e62:	2a00      	cmp	r2, #0
 8004e64:	bf14      	ite	ne
 8004e66:	f44f 5280 	movne.w	r2, #4096	; 0x1000
 8004e6a:	f44f 5240 	moveq.w	r2, #12288	; 0x3000
 8004e6e:	680b      	ldr	r3, [r1, #0]
 8004e70:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8004e74:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8004e78:	4053      	eors	r3, r2
 8004e7a:	b21b      	sxth	r3, r3
 8004e7c:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8004e80:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8004e84:	b29b      	uxth	r3, r3
 8004e86:	e023      	b.n	8004ed0 <st_usbfs_ep_stall_set+0xb4>
 8004e88:	060b      	lsls	r3, r1, #24
 8004e8a:	d5dc      	bpl.n	8004e46 <st_usbfs_ep_stall_set+0x2a>
 8004e8c:	2a00      	cmp	r2, #0
 8004e8e:	bf14      	ite	ne
 8004e90:	2210      	movne	r2, #16
 8004e92:	2220      	moveq	r2, #32
 8004e94:	f001 017f 	and.w	r1, r1, #127	; 0x7f
 8004e98:	ea4f 0181 	mov.w	r1, r1, lsl #2
 8004e9c:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8004ea0:	f501 41b8 	add.w	r1, r1, #23552	; 0x5c00
 8004ea4:	680b      	ldr	r3, [r1, #0]
 8004ea6:	f423 43e0 	bic.w	r3, r3, #28672	; 0x7000
 8004eaa:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8004eae:	ea83 0302 	eor.w	r3, r3, r2
 8004eb2:	b21b      	sxth	r3, r3
 8004eb4:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8004eb8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8004ebc:	b29b      	uxth	r3, r3
 8004ebe:	600b      	str	r3, [r1, #0]
 8004ec0:	d107      	bne.n	8004ed2 <st_usbfs_ep_stall_set+0xb6>
 8004ec2:	680b      	ldr	r3, [r1, #0]
 8004ec4:	f423 43e0 	bic.w	r3, r3, #28672	; 0x7000
 8004ec8:	f023 0330 	bic.w	r3, r3, #48	; 0x30
 8004ecc:	041b      	lsls	r3, r3, #16
 8004ece:	0c1b      	lsrs	r3, r3, #16
 8004ed0:	600b      	str	r3, [r1, #0]
 8004ed2:	bd10      	pop	{r4, pc}
 8004ed4:	40005c00 	.word	0x40005c00

08004ed8 <st_usbfs_ep_stall_get>:
 8004ed8:	060b      	lsls	r3, r1, #24
 8004eda:	d50e      	bpl.n	8004efa <st_usbfs_ep_stall_get+0x22>
 8004edc:	f001 017f 	and.w	r1, r1, #127	; 0x7f
 8004ee0:	0089      	lsls	r1, r1, #2
 8004ee2:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8004ee6:	f501 41b8 	add.w	r1, r1, #23552	; 0x5c00
 8004eea:	6808      	ldr	r0, [r1, #0]
 8004eec:	f000 0030 	and.w	r0, r0, #48	; 0x30
 8004ef0:	2810      	cmp	r0, #16
 8004ef2:	bf14      	ite	ne
 8004ef4:	2000      	movne	r0, #0
 8004ef6:	2001      	moveq	r0, #1
 8004ef8:	4770      	bx	lr
 8004efa:	0089      	lsls	r1, r1, #2
 8004efc:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8004f00:	f501 41b8 	add.w	r1, r1, #23552	; 0x5c00
 8004f04:	6808      	ldr	r0, [r1, #0]
 8004f06:	f400 5040 	and.w	r0, r0, #12288	; 0x3000
 8004f0a:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8004f0e:	e7f0      	b.n	8004ef2 <st_usbfs_ep_stall_get+0x1a>

08004f10 <st_usbfs_ep_nak_set>:
 8004f10:	060b      	lsls	r3, r1, #24
 8004f12:	d412      	bmi.n	8004f3a <st_usbfs_ep_nak_set+0x2a>
 8004f14:	4b0b      	ldr	r3, [pc, #44]	; (8004f44 <st_usbfs_ep_nak_set+0x34>)
 8004f16:	480c      	ldr	r0, [pc, #48]	; (8004f48 <st_usbfs_ep_nak_set+0x38>)
 8004f18:	545a      	strb	r2, [r3, r1]
 8004f1a:	0089      	lsls	r1, r1, #2
 8004f1c:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8004f20:	f501 41b8 	add.w	r1, r1, #23552	; 0x5c00
 8004f24:	680b      	ldr	r3, [r1, #0]
 8004f26:	4003      	ands	r3, r0
 8004f28:	b29b      	uxth	r3, r3
 8004f2a:	b13a      	cbz	r2, 8004f3c <st_usbfs_ep_nak_set+0x2c>
 8004f2c:	f483 5300 	eor.w	r3, r3, #8192	; 0x2000
 8004f30:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8004f34:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8004f38:	600b      	str	r3, [r1, #0]
 8004f3a:	4770      	bx	lr
 8004f3c:	f483 5340 	eor.w	r3, r3, #12288	; 0x3000
 8004f40:	e7f6      	b.n	8004f30 <st_usbfs_ep_nak_set+0x20>
 8004f42:	bf00      	nop
 8004f44:	2000048c 	.word	0x2000048c
 8004f48:	ffffbf8f 	.word	0xffffbf8f

08004f4c <st_usbfs_ep_write_packet>:
 8004f4c:	f001 017f 	and.w	r1, r1, #127	; 0x7f
 8004f50:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8004f52:	008c      	lsls	r4, r1, #2
 8004f54:	f104 4480 	add.w	r4, r4, #1073741824	; 0x40000000
 8004f58:	f504 44b8 	add.w	r4, r4, #23552	; 0x5c00
 8004f5c:	461d      	mov	r5, r3
 8004f5e:	6823      	ldr	r3, [r4, #0]
 8004f60:	4694      	mov	ip, r2
 8004f62:	f003 0330 	and.w	r3, r3, #48	; 0x30
 8004f66:	2b30      	cmp	r3, #48	; 0x30
 8004f68:	d028      	beq.n	8004fbc <st_usbfs_ep_write_packet+0x70>
 8004f6a:	4f15      	ldr	r7, [pc, #84]	; (8004fc0 <st_usbfs_ep_write_packet+0x74>)
 8004f6c:	00ce      	lsls	r6, r1, #3
 8004f6e:	683a      	ldr	r2, [r7, #0]
 8004f70:	4661      	mov	r1, ip
 8004f72:	b292      	uxth	r2, r2
 8004f74:	4432      	add	r2, r6
 8004f76:	0052      	lsls	r2, r2, #1
 8004f78:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 8004f7c:	f502 42c0 	add.w	r2, r2, #24576	; 0x6000
 8004f80:	8810      	ldrh	r0, [r2, #0]
 8004f82:	462a      	mov	r2, r5
 8004f84:	0040      	lsls	r0, r0, #1
 8004f86:	f100 4080 	add.w	r0, r0, #1073741824	; 0x40000000
 8004f8a:	f500 40c0 	add.w	r0, r0, #24576	; 0x6000
 8004f8e:	f7ff fdab 	bl	8004ae8 <st_usbfs_copy_to_pm>
 8004f92:	6839      	ldr	r1, [r7, #0]
 8004f94:	4b0b      	ldr	r3, [pc, #44]	; (8004fc4 <st_usbfs_ep_write_packet+0x78>)
 8004f96:	b289      	uxth	r1, r1
 8004f98:	440e      	add	r6, r1
 8004f9a:	0076      	lsls	r6, r6, #1
 8004f9c:	519d      	str	r5, [r3, r6]
 8004f9e:	6822      	ldr	r2, [r4, #0]
 8004fa0:	f422 42e0 	bic.w	r2, r2, #28672	; 0x7000
 8004fa4:	f022 0240 	bic.w	r2, r2, #64	; 0x40
 8004fa8:	b292      	uxth	r2, r2
 8004faa:	f082 0230 	eor.w	r2, r2, #48	; 0x30
 8004fae:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
 8004fb2:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8004fb6:	6022      	str	r2, [r4, #0]
 8004fb8:	4628      	mov	r0, r5
 8004fba:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8004fbc:	2500      	movs	r5, #0
 8004fbe:	e7fb      	b.n	8004fb8 <st_usbfs_ep_write_packet+0x6c>
 8004fc0:	40005c50 	.word	0x40005c50
 8004fc4:	40006004 	.word	0x40006004

08004fc8 <st_usbfs_ep_read_packet>:
 8004fc8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8004fca:	008c      	lsls	r4, r1, #2
 8004fcc:	f104 4480 	add.w	r4, r4, #1073741824	; 0x40000000
 8004fd0:	f504 44b8 	add.w	r4, r4, #23552	; 0x5c00
 8004fd4:	461d      	mov	r5, r3
 8004fd6:	6823      	ldr	r3, [r4, #0]
 8004fd8:	460e      	mov	r6, r1
 8004fda:	f403 5340 	and.w	r3, r3, #12288	; 0x3000
 8004fde:	f5b3 5f40 	cmp.w	r3, #12288	; 0x3000
 8004fe2:	4610      	mov	r0, r2
 8004fe4:	d03a      	beq.n	800505c <st_usbfs_ep_read_packet+0x94>
 8004fe6:	491e      	ldr	r1, [pc, #120]	; (8005060 <st_usbfs_ep_read_packet+0x98>)
 8004fe8:	00f2      	lsls	r2, r6, #3
 8004fea:	680b      	ldr	r3, [r1, #0]
 8004fec:	4f1d      	ldr	r7, [pc, #116]	; (8005064 <st_usbfs_ep_read_packet+0x9c>)
 8004fee:	b29b      	uxth	r3, r3
 8004ff0:	4413      	add	r3, r2
 8004ff2:	005b      	lsls	r3, r3, #1
 8004ff4:	58fb      	ldr	r3, [r7, r3]
 8004ff6:	f3c3 0309 	ubfx	r3, r3, #0, #10
 8004ffa:	42ab      	cmp	r3, r5
 8004ffc:	da06      	bge.n	800500c <st_usbfs_ep_read_packet+0x44>
 8004ffe:	680b      	ldr	r3, [r1, #0]
 8005000:	b29b      	uxth	r3, r3
 8005002:	4413      	add	r3, r2
 8005004:	005b      	lsls	r3, r3, #1
 8005006:	58fd      	ldr	r5, [r7, r3]
 8005008:	f3c5 0509 	ubfx	r5, r5, #0, #10
 800500c:	680b      	ldr	r3, [r1, #0]
 800500e:	b29b      	uxth	r3, r3
 8005010:	441a      	add	r2, r3
 8005012:	4b15      	ldr	r3, [pc, #84]	; (8005068 <st_usbfs_ep_read_packet+0xa0>)
 8005014:	0052      	lsls	r2, r2, #1
 8005016:	5a99      	ldrh	r1, [r3, r2]
 8005018:	462a      	mov	r2, r5
 800501a:	0049      	lsls	r1, r1, #1
 800501c:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8005020:	f501 41c0 	add.w	r1, r1, #24576	; 0x6000
 8005024:	f7ff fd6c 	bl	8004b00 <st_usbfs_copy_from_pm>
 8005028:	6823      	ldr	r3, [r4, #0]
 800502a:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 800502e:	051b      	lsls	r3, r3, #20
 8005030:	0d1b      	lsrs	r3, r3, #20
 8005032:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005036:	6023      	str	r3, [r4, #0]
 8005038:	4b0c      	ldr	r3, [pc, #48]	; (800506c <st_usbfs_ep_read_packet+0xa4>)
 800503a:	5d9b      	ldrb	r3, [r3, r6]
 800503c:	b963      	cbnz	r3, 8005058 <st_usbfs_ep_read_packet+0x90>
 800503e:	6822      	ldr	r2, [r4, #0]
 8005040:	f422 4280 	bic.w	r2, r2, #16384	; 0x4000
 8005044:	f022 0270 	bic.w	r2, r2, #112	; 0x70
 8005048:	b292      	uxth	r2, r2
 800504a:	f482 5240 	eor.w	r2, r2, #12288	; 0x3000
 800504e:	f442 4200 	orr.w	r2, r2, #32768	; 0x8000
 8005052:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005056:	6022      	str	r2, [r4, #0]
 8005058:	4628      	mov	r0, r5
 800505a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800505c:	2500      	movs	r5, #0
 800505e:	e7fb      	b.n	8005058 <st_usbfs_ep_read_packet+0x90>
 8005060:	40005c50 	.word	0x40005c50
 8005064:	4000600c 	.word	0x4000600c
 8005068:	40006008 	.word	0x40006008
 800506c:	2000048c 	.word	0x2000048c

08005070 <st_usbfs_poll>:
 8005070:	4a31      	ldr	r2, [pc, #196]	; (8005138 <st_usbfs_poll+0xc8>)
 8005072:	b570      	push	{r4, r5, r6, lr}
 8005074:	6813      	ldr	r3, [r2, #0]
 8005076:	4604      	mov	r4, r0
 8005078:	f413 6f80 	tst.w	r3, #1024	; 0x400
 800507c:	b29e      	uxth	r6, r3
 800507e:	4615      	mov	r5, r2
 8005080:	d008      	beq.n	8005094 <st_usbfs_poll+0x24>
 8005082:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8005086:	f64f 33ff 	movw	r3, #64511	; 0xfbff
 800508a:	6013      	str	r3, [r2, #0]
 800508c:	2340      	movs	r3, #64	; 0x40
 800508e:	8303      	strh	r3, [r0, #24]
 8005090:	f7ff b8cf 	b.w	8004232 <_usbd_reset>
 8005094:	0419      	lsls	r1, r3, #16
 8005096:	d518      	bpl.n	80050ca <st_usbfs_poll+0x5a>
 8005098:	f003 010f 	and.w	r1, r3, #15
 800509c:	008a      	lsls	r2, r1, #2
 800509e:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 80050a2:	f013 0310 	ands.w	r3, r3, #16
 80050a6:	f502 42b8 	add.w	r2, r2, #23552	; 0x5c00
 80050aa:	d02f      	beq.n	800510c <st_usbfs_poll+0x9c>
 80050ac:	6813      	ldr	r3, [r2, #0]
 80050ae:	f413 6f00 	tst.w	r3, #2048	; 0x800
 80050b2:	bf14      	ite	ne
 80050b4:	2302      	movne	r3, #2
 80050b6:	2301      	moveq	r3, #1
 80050b8:	eb01 0041 	add.w	r0, r1, r1, lsl #1
 80050bc:	4403      	add	r3, r0
 80050be:	331a      	adds	r3, #26
 80050c0:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 80050c4:	b35b      	cbz	r3, 800511e <st_usbfs_poll+0xae>
 80050c6:	4620      	mov	r0, r4
 80050c8:	4798      	blx	r3
 80050ca:	0532      	lsls	r2, r6, #20
 80050cc:	d505      	bpl.n	80050da <st_usbfs_poll+0x6a>
 80050ce:	f24f 73ff 	movw	r3, #63487	; 0xf7ff
 80050d2:	602b      	str	r3, [r5, #0]
 80050d4:	6a23      	ldr	r3, [r4, #32]
 80050d6:	b103      	cbz	r3, 80050da <st_usbfs_poll+0x6a>
 80050d8:	4798      	blx	r3
 80050da:	04f3      	lsls	r3, r6, #19
 80050dc:	d505      	bpl.n	80050ea <st_usbfs_poll+0x7a>
 80050de:	f64e 73ff 	movw	r3, #61439	; 0xefff
 80050e2:	602b      	str	r3, [r5, #0]
 80050e4:	6a63      	ldr	r3, [r4, #36]	; 0x24
 80050e6:	b103      	cbz	r3, 80050ea <st_usbfs_poll+0x7a>
 80050e8:	4798      	blx	r3
 80050ea:	f416 7f00 	tst.w	r6, #512	; 0x200
 80050ee:	4e13      	ldr	r6, [pc, #76]	; (800513c <st_usbfs_poll+0xcc>)
 80050f0:	d005      	beq.n	80050fe <st_usbfs_poll+0x8e>
 80050f2:	f64f 52ff 	movw	r2, #65023	; 0xfdff
 80050f6:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 80050f8:	602a      	str	r2, [r5, #0]
 80050fa:	b1cb      	cbz	r3, 8005130 <st_usbfs_poll+0xc0>
 80050fc:	4798      	blx	r3
 80050fe:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 8005100:	b1b3      	cbz	r3, 8005130 <st_usbfs_poll+0xc0>
 8005102:	6833      	ldr	r3, [r6, #0]
 8005104:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8005108:	6033      	str	r3, [r6, #0]
 800510a:	bd70      	pop	{r4, r5, r6, pc}
 800510c:	6810      	ldr	r0, [r2, #0]
 800510e:	f020 00f0 	bic.w	r0, r0, #240	; 0xf0
 8005112:	0500      	lsls	r0, r0, #20
 8005114:	0d00      	lsrs	r0, r0, #20
 8005116:	f440 4000 	orr.w	r0, r0, #32768	; 0x8000
 800511a:	6010      	str	r0, [r2, #0]
 800511c:	e7cc      	b.n	80050b8 <st_usbfs_poll+0x48>
 800511e:	6813      	ldr	r3, [r2, #0]
 8005120:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 8005124:	051b      	lsls	r3, r3, #20
 8005126:	0d1b      	lsrs	r3, r3, #20
 8005128:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800512c:	6013      	str	r3, [r2, #0]
 800512e:	e7cc      	b.n	80050ca <st_usbfs_poll+0x5a>
 8005130:	6833      	ldr	r3, [r6, #0]
 8005132:	f423 7300 	bic.w	r3, r3, #512	; 0x200
 8005136:	e7e7      	b.n	8005108 <st_usbfs_poll+0x98>
 8005138:	40005c44 	.word	0x40005c44
 800513c:	40005c40 	.word	0x40005c40

08005140 <abs>:
 8005140:	2800      	cmp	r0, #0
 8005142:	bfb8      	it	lt
 8005144:	4240      	neglt	r0, r0
 8005146:	4770      	bx	lr

08005148 <atoi>:
 8005148:	220a      	movs	r2, #10
 800514a:	2100      	movs	r1, #0
 800514c:	f000 b978 	b.w	8005440 <strtol>

08005150 <bzero>:
 8005150:	460a      	mov	r2, r1
 8005152:	2100      	movs	r1, #0
 8005154:	f000 b821 	b.w	800519a <memset>

08005158 <__errno>:
 8005158:	4b01      	ldr	r3, [pc, #4]	; (8005160 <__errno+0x8>)
 800515a:	6818      	ldr	r0, [r3, #0]
 800515c:	4770      	bx	lr
 800515e:	bf00      	nop
 8005160:	20000028 	.word	0x20000028

08005164 <malloc>:
 8005164:	4b02      	ldr	r3, [pc, #8]	; (8005170 <malloc+0xc>)
 8005166:	4601      	mov	r1, r0
 8005168:	6818      	ldr	r0, [r3, #0]
 800516a:	f000 b86b 	b.w	8005244 <_malloc_r>
 800516e:	bf00      	nop
 8005170:	20000028 	.word	0x20000028

08005174 <free>:
 8005174:	4b02      	ldr	r3, [pc, #8]	; (8005180 <free+0xc>)
 8005176:	4601      	mov	r1, r0
 8005178:	6818      	ldr	r0, [r3, #0]
 800517a:	f000 b817 	b.w	80051ac <_free_r>
 800517e:	bf00      	nop
 8005180:	20000028 	.word	0x20000028

08005184 <memcpy>:
 8005184:	b510      	push	{r4, lr}
 8005186:	1e43      	subs	r3, r0, #1
 8005188:	440a      	add	r2, r1
 800518a:	4291      	cmp	r1, r2
 800518c:	d100      	bne.n	8005190 <memcpy+0xc>
 800518e:	bd10      	pop	{r4, pc}
 8005190:	f811 4b01 	ldrb.w	r4, [r1], #1
 8005194:	f803 4f01 	strb.w	r4, [r3, #1]!
 8005198:	e7f7      	b.n	800518a <memcpy+0x6>

0800519a <memset>:
 800519a:	4603      	mov	r3, r0
 800519c:	4402      	add	r2, r0
 800519e:	4293      	cmp	r3, r2
 80051a0:	d100      	bne.n	80051a4 <memset+0xa>
 80051a2:	4770      	bx	lr
 80051a4:	f803 1b01 	strb.w	r1, [r3], #1
 80051a8:	e7f9      	b.n	800519e <memset+0x4>
	...

080051ac <_free_r>:
 80051ac:	b538      	push	{r3, r4, r5, lr}
 80051ae:	4605      	mov	r5, r0
 80051b0:	2900      	cmp	r1, #0
 80051b2:	d043      	beq.n	800523c <_free_r+0x90>
 80051b4:	f851 3c04 	ldr.w	r3, [r1, #-4]
 80051b8:	1f0c      	subs	r4, r1, #4
 80051ba:	2b00      	cmp	r3, #0
 80051bc:	bfb8      	it	lt
 80051be:	18e4      	addlt	r4, r4, r3
 80051c0:	f000 f98f 	bl	80054e2 <__malloc_lock>
 80051c4:	4a1e      	ldr	r2, [pc, #120]	; (8005240 <_free_r+0x94>)
 80051c6:	6813      	ldr	r3, [r2, #0]
 80051c8:	4610      	mov	r0, r2
 80051ca:	b933      	cbnz	r3, 80051da <_free_r+0x2e>
 80051cc:	6063      	str	r3, [r4, #4]
 80051ce:	6014      	str	r4, [r2, #0]
 80051d0:	4628      	mov	r0, r5
 80051d2:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80051d6:	f000 b985 	b.w	80054e4 <__malloc_unlock>
 80051da:	42a3      	cmp	r3, r4
 80051dc:	d90b      	bls.n	80051f6 <_free_r+0x4a>
 80051de:	6821      	ldr	r1, [r4, #0]
 80051e0:	1862      	adds	r2, r4, r1
 80051e2:	4293      	cmp	r3, r2
 80051e4:	bf01      	itttt	eq
 80051e6:	681a      	ldreq	r2, [r3, #0]
 80051e8:	685b      	ldreq	r3, [r3, #4]
 80051ea:	1852      	addeq	r2, r2, r1
 80051ec:	6022      	streq	r2, [r4, #0]
 80051ee:	6063      	str	r3, [r4, #4]
 80051f0:	6004      	str	r4, [r0, #0]
 80051f2:	e7ed      	b.n	80051d0 <_free_r+0x24>
 80051f4:	4613      	mov	r3, r2
 80051f6:	685a      	ldr	r2, [r3, #4]
 80051f8:	b10a      	cbz	r2, 80051fe <_free_r+0x52>
 80051fa:	42a2      	cmp	r2, r4
 80051fc:	d9fa      	bls.n	80051f4 <_free_r+0x48>
 80051fe:	6819      	ldr	r1, [r3, #0]
 8005200:	1858      	adds	r0, r3, r1
 8005202:	42a0      	cmp	r0, r4
 8005204:	d10b      	bne.n	800521e <_free_r+0x72>
 8005206:	6820      	ldr	r0, [r4, #0]
 8005208:	4401      	add	r1, r0
 800520a:	1858      	adds	r0, r3, r1
 800520c:	4282      	cmp	r2, r0
 800520e:	6019      	str	r1, [r3, #0]
 8005210:	d1de      	bne.n	80051d0 <_free_r+0x24>
 8005212:	6810      	ldr	r0, [r2, #0]
 8005214:	6852      	ldr	r2, [r2, #4]
 8005216:	4401      	add	r1, r0
 8005218:	6019      	str	r1, [r3, #0]
 800521a:	605a      	str	r2, [r3, #4]
 800521c:	e7d8      	b.n	80051d0 <_free_r+0x24>
 800521e:	d902      	bls.n	8005226 <_free_r+0x7a>
 8005220:	230c      	movs	r3, #12
 8005222:	602b      	str	r3, [r5, #0]
 8005224:	e7d4      	b.n	80051d0 <_free_r+0x24>
 8005226:	6820      	ldr	r0, [r4, #0]
 8005228:	1821      	adds	r1, r4, r0
 800522a:	428a      	cmp	r2, r1
 800522c:	bf01      	itttt	eq
 800522e:	6811      	ldreq	r1, [r2, #0]
 8005230:	6852      	ldreq	r2, [r2, #4]
 8005232:	1809      	addeq	r1, r1, r0
 8005234:	6021      	streq	r1, [r4, #0]
 8005236:	6062      	str	r2, [r4, #4]
 8005238:	605c      	str	r4, [r3, #4]
 800523a:	e7c9      	b.n	80051d0 <_free_r+0x24>
 800523c:	bd38      	pop	{r3, r4, r5, pc}
 800523e:	bf00      	nop
 8005240:	20000494 	.word	0x20000494

08005244 <_malloc_r>:
 8005244:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005246:	1ccd      	adds	r5, r1, #3
 8005248:	f025 0503 	bic.w	r5, r5, #3
 800524c:	3508      	adds	r5, #8
 800524e:	2d0c      	cmp	r5, #12
 8005250:	bf38      	it	cc
 8005252:	250c      	movcc	r5, #12
 8005254:	2d00      	cmp	r5, #0
 8005256:	4606      	mov	r6, r0
 8005258:	db01      	blt.n	800525e <_malloc_r+0x1a>
 800525a:	42a9      	cmp	r1, r5
 800525c:	d903      	bls.n	8005266 <_malloc_r+0x22>
 800525e:	230c      	movs	r3, #12
 8005260:	6033      	str	r3, [r6, #0]
 8005262:	2000      	movs	r0, #0
 8005264:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005266:	f000 f93c 	bl	80054e2 <__malloc_lock>
 800526a:	4921      	ldr	r1, [pc, #132]	; (80052f0 <_malloc_r+0xac>)
 800526c:	680a      	ldr	r2, [r1, #0]
 800526e:	4614      	mov	r4, r2
 8005270:	b99c      	cbnz	r4, 800529a <_malloc_r+0x56>
 8005272:	4f20      	ldr	r7, [pc, #128]	; (80052f4 <_malloc_r+0xb0>)
 8005274:	683b      	ldr	r3, [r7, #0]
 8005276:	b923      	cbnz	r3, 8005282 <_malloc_r+0x3e>
 8005278:	4621      	mov	r1, r4
 800527a:	4630      	mov	r0, r6
 800527c:	f000 f83c 	bl	80052f8 <_sbrk_r>
 8005280:	6038      	str	r0, [r7, #0]
 8005282:	4629      	mov	r1, r5
 8005284:	4630      	mov	r0, r6
 8005286:	f000 f837 	bl	80052f8 <_sbrk_r>
 800528a:	1c43      	adds	r3, r0, #1
 800528c:	d123      	bne.n	80052d6 <_malloc_r+0x92>
 800528e:	230c      	movs	r3, #12
 8005290:	4630      	mov	r0, r6
 8005292:	6033      	str	r3, [r6, #0]
 8005294:	f000 f926 	bl	80054e4 <__malloc_unlock>
 8005298:	e7e3      	b.n	8005262 <_malloc_r+0x1e>
 800529a:	6823      	ldr	r3, [r4, #0]
 800529c:	1b5b      	subs	r3, r3, r5
 800529e:	d417      	bmi.n	80052d0 <_malloc_r+0x8c>
 80052a0:	2b0b      	cmp	r3, #11
 80052a2:	d903      	bls.n	80052ac <_malloc_r+0x68>
 80052a4:	6023      	str	r3, [r4, #0]
 80052a6:	441c      	add	r4, r3
 80052a8:	6025      	str	r5, [r4, #0]
 80052aa:	e004      	b.n	80052b6 <_malloc_r+0x72>
 80052ac:	6863      	ldr	r3, [r4, #4]
 80052ae:	42a2      	cmp	r2, r4
 80052b0:	bf0c      	ite	eq
 80052b2:	600b      	streq	r3, [r1, #0]
 80052b4:	6053      	strne	r3, [r2, #4]
 80052b6:	4630      	mov	r0, r6
 80052b8:	f000 f914 	bl	80054e4 <__malloc_unlock>
 80052bc:	f104 000b 	add.w	r0, r4, #11
 80052c0:	1d23      	adds	r3, r4, #4
 80052c2:	f020 0007 	bic.w	r0, r0, #7
 80052c6:	1ac2      	subs	r2, r0, r3
 80052c8:	d0cc      	beq.n	8005264 <_malloc_r+0x20>
 80052ca:	1a1b      	subs	r3, r3, r0
 80052cc:	50a3      	str	r3, [r4, r2]
 80052ce:	e7c9      	b.n	8005264 <_malloc_r+0x20>
 80052d0:	4622      	mov	r2, r4
 80052d2:	6864      	ldr	r4, [r4, #4]
 80052d4:	e7cc      	b.n	8005270 <_malloc_r+0x2c>
 80052d6:	1cc4      	adds	r4, r0, #3
 80052d8:	f024 0403 	bic.w	r4, r4, #3
 80052dc:	42a0      	cmp	r0, r4
 80052de:	d0e3      	beq.n	80052a8 <_malloc_r+0x64>
 80052e0:	1a21      	subs	r1, r4, r0
 80052e2:	4630      	mov	r0, r6
 80052e4:	f000 f808 	bl	80052f8 <_sbrk_r>
 80052e8:	3001      	adds	r0, #1
 80052ea:	d1dd      	bne.n	80052a8 <_malloc_r+0x64>
 80052ec:	e7cf      	b.n	800528e <_malloc_r+0x4a>
 80052ee:	bf00      	nop
 80052f0:	20000494 	.word	0x20000494
 80052f4:	20000498 	.word	0x20000498

080052f8 <_sbrk_r>:
 80052f8:	b538      	push	{r3, r4, r5, lr}
 80052fa:	2300      	movs	r3, #0
 80052fc:	4c05      	ldr	r4, [pc, #20]	; (8005314 <_sbrk_r+0x1c>)
 80052fe:	4605      	mov	r5, r0
 8005300:	4608      	mov	r0, r1
 8005302:	6023      	str	r3, [r4, #0]
 8005304:	f000 f910 	bl	8005528 <_sbrk>
 8005308:	1c43      	adds	r3, r0, #1
 800530a:	d102      	bne.n	8005312 <_sbrk_r+0x1a>
 800530c:	6823      	ldr	r3, [r4, #0]
 800530e:	b103      	cbz	r3, 8005312 <_sbrk_r+0x1a>
 8005310:	602b      	str	r3, [r5, #0]
 8005312:	bd38      	pop	{r3, r4, r5, pc}
 8005314:	20000574 	.word	0x20000574

08005318 <strcmp>:
 8005318:	f810 2b01 	ldrb.w	r2, [r0], #1
 800531c:	f811 3b01 	ldrb.w	r3, [r1], #1
 8005320:	2a01      	cmp	r2, #1
 8005322:	bf28      	it	cs
 8005324:	429a      	cmpcs	r2, r3
 8005326:	d0f7      	beq.n	8005318 <strcmp>
 8005328:	1ad0      	subs	r0, r2, r3
 800532a:	4770      	bx	lr

0800532c <strlen>:
 800532c:	4603      	mov	r3, r0
 800532e:	f813 2b01 	ldrb.w	r2, [r3], #1
 8005332:	2a00      	cmp	r2, #0
 8005334:	d1fb      	bne.n	800532e <strlen+0x2>
 8005336:	1a18      	subs	r0, r3, r0
 8005338:	3801      	subs	r0, #1
 800533a:	4770      	bx	lr

0800533c <_strtol_l.isra.0>:
 800533c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005340:	4680      	mov	r8, r0
 8005342:	4689      	mov	r9, r1
 8005344:	4692      	mov	sl, r2
 8005346:	469b      	mov	fp, r3
 8005348:	460e      	mov	r6, r1
 800534a:	4635      	mov	r5, r6
 800534c:	980a      	ldr	r0, [sp, #40]	; 0x28
 800534e:	f815 4b01 	ldrb.w	r4, [r5], #1
 8005352:	f000 f8b1 	bl	80054b8 <__locale_ctype_ptr_l>
 8005356:	4420      	add	r0, r4
 8005358:	7840      	ldrb	r0, [r0, #1]
 800535a:	f010 0008 	ands.w	r0, r0, #8
 800535e:	d135      	bne.n	80053cc <_strtol_l.isra.0+0x90>
 8005360:	2c2d      	cmp	r4, #45	; 0x2d
 8005362:	d135      	bne.n	80053d0 <_strtol_l.isra.0+0x94>
 8005364:	2201      	movs	r2, #1
 8005366:	782c      	ldrb	r4, [r5, #0]
 8005368:	1cb5      	adds	r5, r6, #2
 800536a:	f1bb 0f00 	cmp.w	fp, #0
 800536e:	d062      	beq.n	8005436 <_strtol_l.isra.0+0xfa>
 8005370:	f1bb 0f10 	cmp.w	fp, #16
 8005374:	d10a      	bne.n	800538c <_strtol_l.isra.0+0x50>
 8005376:	2c30      	cmp	r4, #48	; 0x30
 8005378:	d108      	bne.n	800538c <_strtol_l.isra.0+0x50>
 800537a:	782b      	ldrb	r3, [r5, #0]
 800537c:	f003 03df 	and.w	r3, r3, #223	; 0xdf
 8005380:	2b58      	cmp	r3, #88	; 0x58
 8005382:	d151      	bne.n	8005428 <_strtol_l.isra.0+0xec>
 8005384:	f04f 0b10 	mov.w	fp, #16
 8005388:	786c      	ldrb	r4, [r5, #1]
 800538a:	3502      	adds	r5, #2
 800538c:	2a00      	cmp	r2, #0
 800538e:	bf14      	ite	ne
 8005390:	f04f 4300 	movne.w	r3, #2147483648	; 0x80000000
 8005394:	f06f 4300 	mvneq.w	r3, #2147483648	; 0x80000000
 8005398:	2700      	movs	r7, #0
 800539a:	fbb3 f1fb 	udiv	r1, r3, fp
 800539e:	4638      	mov	r0, r7
 80053a0:	fb0b 3c11 	mls	ip, fp, r1, r3
 80053a4:	f1a4 0630 	sub.w	r6, r4, #48	; 0x30
 80053a8:	2e09      	cmp	r6, #9
 80053aa:	d818      	bhi.n	80053de <_strtol_l.isra.0+0xa2>
 80053ac:	4634      	mov	r4, r6
 80053ae:	45a3      	cmp	fp, r4
 80053b0:	dd24      	ble.n	80053fc <_strtol_l.isra.0+0xc0>
 80053b2:	1c7e      	adds	r6, r7, #1
 80053b4:	d007      	beq.n	80053c6 <_strtol_l.isra.0+0x8a>
 80053b6:	4281      	cmp	r1, r0
 80053b8:	d31d      	bcc.n	80053f6 <_strtol_l.isra.0+0xba>
 80053ba:	d101      	bne.n	80053c0 <_strtol_l.isra.0+0x84>
 80053bc:	45a4      	cmp	ip, r4
 80053be:	db1a      	blt.n	80053f6 <_strtol_l.isra.0+0xba>
 80053c0:	2701      	movs	r7, #1
 80053c2:	fb00 400b 	mla	r0, r0, fp, r4
 80053c6:	f815 4b01 	ldrb.w	r4, [r5], #1
 80053ca:	e7eb      	b.n	80053a4 <_strtol_l.isra.0+0x68>
 80053cc:	462e      	mov	r6, r5
 80053ce:	e7bc      	b.n	800534a <_strtol_l.isra.0+0xe>
 80053d0:	2c2b      	cmp	r4, #43	; 0x2b
 80053d2:	bf08      	it	eq
 80053d4:	782c      	ldrbeq	r4, [r5, #0]
 80053d6:	4602      	mov	r2, r0
 80053d8:	bf08      	it	eq
 80053da:	1cb5      	addeq	r5, r6, #2
 80053dc:	e7c5      	b.n	800536a <_strtol_l.isra.0+0x2e>
 80053de:	f1a4 0641 	sub.w	r6, r4, #65	; 0x41
 80053e2:	2e19      	cmp	r6, #25
 80053e4:	d801      	bhi.n	80053ea <_strtol_l.isra.0+0xae>
 80053e6:	3c37      	subs	r4, #55	; 0x37
 80053e8:	e7e1      	b.n	80053ae <_strtol_l.isra.0+0x72>
 80053ea:	f1a4 0661 	sub.w	r6, r4, #97	; 0x61
 80053ee:	2e19      	cmp	r6, #25
 80053f0:	d804      	bhi.n	80053fc <_strtol_l.isra.0+0xc0>
 80053f2:	3c57      	subs	r4, #87	; 0x57
 80053f4:	e7db      	b.n	80053ae <_strtol_l.isra.0+0x72>
 80053f6:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 80053fa:	e7e4      	b.n	80053c6 <_strtol_l.isra.0+0x8a>
 80053fc:	1c79      	adds	r1, r7, #1
 80053fe:	d108      	bne.n	8005412 <_strtol_l.isra.0+0xd6>
 8005400:	2222      	movs	r2, #34	; 0x22
 8005402:	4618      	mov	r0, r3
 8005404:	f8c8 2000 	str.w	r2, [r8]
 8005408:	f1ba 0f00 	cmp.w	sl, #0
 800540c:	d107      	bne.n	800541e <_strtol_l.isra.0+0xe2>
 800540e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005412:	b102      	cbz	r2, 8005416 <_strtol_l.isra.0+0xda>
 8005414:	4240      	negs	r0, r0
 8005416:	f1ba 0f00 	cmp.w	sl, #0
 800541a:	d0f8      	beq.n	800540e <_strtol_l.isra.0+0xd2>
 800541c:	b10f      	cbz	r7, 8005422 <_strtol_l.isra.0+0xe6>
 800541e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8005422:	f8ca 9000 	str.w	r9, [sl]
 8005426:	e7f2      	b.n	800540e <_strtol_l.isra.0+0xd2>
 8005428:	2430      	movs	r4, #48	; 0x30
 800542a:	f1bb 0f00 	cmp.w	fp, #0
 800542e:	d1ad      	bne.n	800538c <_strtol_l.isra.0+0x50>
 8005430:	f04f 0b08 	mov.w	fp, #8
 8005434:	e7aa      	b.n	800538c <_strtol_l.isra.0+0x50>
 8005436:	2c30      	cmp	r4, #48	; 0x30
 8005438:	d09f      	beq.n	800537a <_strtol_l.isra.0+0x3e>
 800543a:	f04f 0b0a 	mov.w	fp, #10
 800543e:	e7a5      	b.n	800538c <_strtol_l.isra.0+0x50>

08005440 <strtol>:
 8005440:	4b08      	ldr	r3, [pc, #32]	; (8005464 <strtol+0x24>)
 8005442:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8005444:	681c      	ldr	r4, [r3, #0]
 8005446:	4d08      	ldr	r5, [pc, #32]	; (8005468 <strtol+0x28>)
 8005448:	6a23      	ldr	r3, [r4, #32]
 800544a:	2b00      	cmp	r3, #0
 800544c:	bf08      	it	eq
 800544e:	462b      	moveq	r3, r5
 8005450:	9300      	str	r3, [sp, #0]
 8005452:	4613      	mov	r3, r2
 8005454:	460a      	mov	r2, r1
 8005456:	4601      	mov	r1, r0
 8005458:	4620      	mov	r0, r4
 800545a:	f7ff ff6f 	bl	800533c <_strtol_l.isra.0>
 800545e:	b003      	add	sp, #12
 8005460:	bd30      	pop	{r4, r5, pc}
 8005462:	bf00      	nop
 8005464:	20000028 	.word	0x20000028
 8005468:	2000008c 	.word	0x2000008c

0800546c <read>:
 800546c:	4613      	mov	r3, r2
 800546e:	460a      	mov	r2, r1
 8005470:	4601      	mov	r1, r0
 8005472:	4802      	ldr	r0, [pc, #8]	; (800547c <read+0x10>)
 8005474:	6800      	ldr	r0, [r0, #0]
 8005476:	f000 b837 	b.w	80054e8 <_read_r>
 800547a:	bf00      	nop
 800547c:	20000028 	.word	0x20000028

08005480 <write>:
 8005480:	4613      	mov	r3, r2
 8005482:	460a      	mov	r2, r1
 8005484:	4601      	mov	r1, r0
 8005486:	4802      	ldr	r0, [pc, #8]	; (8005490 <write+0x10>)
 8005488:	6800      	ldr	r0, [r0, #0]
 800548a:	f000 b803 	b.w	8005494 <_write_r>
 800548e:	bf00      	nop
 8005490:	20000028 	.word	0x20000028

08005494 <_write_r>:
 8005494:	b538      	push	{r3, r4, r5, lr}
 8005496:	4605      	mov	r5, r0
 8005498:	4608      	mov	r0, r1
 800549a:	4611      	mov	r1, r2
 800549c:	2200      	movs	r2, #0
 800549e:	4c05      	ldr	r4, [pc, #20]	; (80054b4 <_write_r+0x20>)
 80054a0:	6022      	str	r2, [r4, #0]
 80054a2:	461a      	mov	r2, r3
 80054a4:	f7fe fbca 	bl	8003c3c <_write>
 80054a8:	1c43      	adds	r3, r0, #1
 80054aa:	d102      	bne.n	80054b2 <_write_r+0x1e>
 80054ac:	6823      	ldr	r3, [r4, #0]
 80054ae:	b103      	cbz	r3, 80054b2 <_write_r+0x1e>
 80054b0:	602b      	str	r3, [r5, #0]
 80054b2:	bd38      	pop	{r3, r4, r5, pc}
 80054b4:	20000574 	.word	0x20000574

080054b8 <__locale_ctype_ptr_l>:
 80054b8:	f8d0 00ec 	ldr.w	r0, [r0, #236]	; 0xec
 80054bc:	4770      	bx	lr

080054be <__ascii_mbtowc>:
 80054be:	b082      	sub	sp, #8
 80054c0:	b901      	cbnz	r1, 80054c4 <__ascii_mbtowc+0x6>
 80054c2:	a901      	add	r1, sp, #4
 80054c4:	b142      	cbz	r2, 80054d8 <__ascii_mbtowc+0x1a>
 80054c6:	b14b      	cbz	r3, 80054dc <__ascii_mbtowc+0x1e>
 80054c8:	7813      	ldrb	r3, [r2, #0]
 80054ca:	600b      	str	r3, [r1, #0]
 80054cc:	7812      	ldrb	r2, [r2, #0]
 80054ce:	1c10      	adds	r0, r2, #0
 80054d0:	bf18      	it	ne
 80054d2:	2001      	movne	r0, #1
 80054d4:	b002      	add	sp, #8
 80054d6:	4770      	bx	lr
 80054d8:	4610      	mov	r0, r2
 80054da:	e7fb      	b.n	80054d4 <__ascii_mbtowc+0x16>
 80054dc:	f06f 0001 	mvn.w	r0, #1
 80054e0:	e7f8      	b.n	80054d4 <__ascii_mbtowc+0x16>

080054e2 <__malloc_lock>:
 80054e2:	4770      	bx	lr

080054e4 <__malloc_unlock>:
 80054e4:	4770      	bx	lr
	...

080054e8 <_read_r>:
 80054e8:	b538      	push	{r3, r4, r5, lr}
 80054ea:	4605      	mov	r5, r0
 80054ec:	4608      	mov	r0, r1
 80054ee:	4611      	mov	r1, r2
 80054f0:	2200      	movs	r2, #0
 80054f2:	4c05      	ldr	r4, [pc, #20]	; (8005508 <_read_r+0x20>)
 80054f4:	6022      	str	r2, [r4, #0]
 80054f6:	461a      	mov	r2, r3
 80054f8:	f7fe fbb4 	bl	8003c64 <_read>
 80054fc:	1c43      	adds	r3, r0, #1
 80054fe:	d102      	bne.n	8005506 <_read_r+0x1e>
 8005500:	6823      	ldr	r3, [r4, #0]
 8005502:	b103      	cbz	r3, 8005506 <_read_r+0x1e>
 8005504:	602b      	str	r3, [r5, #0]
 8005506:	bd38      	pop	{r3, r4, r5, pc}
 8005508:	20000574 	.word	0x20000574

0800550c <__ascii_wctomb>:
 800550c:	b149      	cbz	r1, 8005522 <__ascii_wctomb+0x16>
 800550e:	2aff      	cmp	r2, #255	; 0xff
 8005510:	bf8b      	itete	hi
 8005512:	238a      	movhi	r3, #138	; 0x8a
 8005514:	700a      	strbls	r2, [r1, #0]
 8005516:	6003      	strhi	r3, [r0, #0]
 8005518:	2001      	movls	r0, #1
 800551a:	bf88      	it	hi
 800551c:	f04f 30ff 	movhi.w	r0, #4294967295	; 0xffffffff
 8005520:	4770      	bx	lr
 8005522:	4608      	mov	r0, r1
 8005524:	4770      	bx	lr
	...

08005528 <_sbrk>:
 8005528:	4a04      	ldr	r2, [pc, #16]	; (800553c <_sbrk+0x14>)
 800552a:	4905      	ldr	r1, [pc, #20]	; (8005540 <_sbrk+0x18>)
 800552c:	6813      	ldr	r3, [r2, #0]
 800552e:	2b00      	cmp	r3, #0
 8005530:	bf08      	it	eq
 8005532:	460b      	moveq	r3, r1
 8005534:	4418      	add	r0, r3
 8005536:	6010      	str	r0, [r2, #0]
 8005538:	4618      	mov	r0, r3
 800553a:	4770      	bx	lr
 800553c:	2000049c 	.word	0x2000049c
 8005540:	20000578 	.word	0x20000578

08005544 <DAP_FW_Ver>:
 8005544:	30312e30 00000000 004b4341 00000000     0.10....ACK.....
 8005554:	004b414e 00000000 00495053 00433249     NAK.....SPI.I2C.

08005564 <cdcacm_functional_descriptors>:
 8005564:	10002405 01240501 24040100 24050002     .$....$....$...$
 8005574:	00010006                                ....

08005578 <comm_endp>:
 8005578:	03830507 00ff0010 00000000 00000000     ................

08005588 <comm_iface>:
 8005588:	00000409 01020201 00557801 00556408     .........xU..dU.
 8005598:	00001308 00000000                       ........

080055a0 <config>:
 80055a0:	00000209 c0000103 00566432 00000008     ........2dV.....

080055b0 <data_endp>:
 80055b0:	02020507 00010040 00000000 07000000     ....@...........
 80055c0:	40028205 00000100 00000000 00000000     ...@............

080055d0 <data_iface>:
 80055d0:	00010409 00000a02 0055b001 00000008     ..........U.....
	...

080055e8 <dev_descr>:
 80055e8:	02000112 40000000 f002c251 02010200     .......@Q.......
 80055f8:	00000103                                ....

080055fc <hid_endpoints>:
 80055fc:	03010507 00020040 00000000 07000000     ....@...........
 800560c:	40038105 00000200 00000000 00000000     ...@............

0800561c <hid_function>:
 800561c:	01002109 21220100 00000000              .!...."!....

08005628 <hid_iface>:
 8005628:	00020409 00000302 0055fc00 00561c08     ..........U...V.
 8005638:	00000908 00000000                       ........

08005640 <hid_report_descriptor>:
 8005640:	09ff0006 1501a101 00ff2600 40950875     .........&..u..@
 8005650:	02810109 01094095 40950291 02b10109     .....@.....@....
 8005660:	000000c0                                ....

08005664 <ifaces>:
 8005664:	00000000 00000001 00000000 08005588     .............U..
 8005674:	00000000 00000001 00000000 080055d0     .............U..
 8005684:	00000000 00000001 00000000 08005628     ............(V..
 8005694:	74696e55 706d6f63 64744c20 0000002e     Unitcomp Ltd....
 80056a4:	49534d43 41442d53 00000050 00412f4e     CMSIS-DAP...N/A.

080056b4 <st_usbfs_v1_usb_driver>:
 80056b4:	08004ab9 08004c59 08004cb5 08004dd9     .J..YL...L...M..
 80056c4:	08004e1d 08004f11 08004ed9 08004f4d     .N...O...N..MO..
 80056d4:	08004fc9 08005071 00000000 00000000     .O..qP..........
 80056e4:	00000000 4f500043 00584953               ....C.POSIX...

080056f2 <_ctype_>:
 80056f2:	20202000 20202020 28282020 20282828     .         ((((( 
 8005702:	20202020 20202020 20202020 20202020                     
 8005712:	10108820 10101010 10101010 10101010      ...............
 8005722:	04040410 04040404 10040404 10101010     ................
 8005732:	41411010 41414141 01010101 01010101     ..AAAAAA........
 8005742:	01010101 01010101 01010101 10101010     ................
 8005752:	42421010 42424242 02020202 02020202     ..BBBBBB........
 8005762:	02020202 02020202 02020202 10101010     ................
 8005772:	00000020 00000000 00000000 00000000      ...............
	...
