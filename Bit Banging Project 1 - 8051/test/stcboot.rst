                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stcboot
                                      6 	
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _Timer0_isr
                                     13 	.globl _Init_Timer0
                                     14 	.globl _delay
                                     15 	.globl _CY
                                     16 	.globl _AC
                                     17 	.globl _F0
                                     18 	.globl _RS1
                                     19 	.globl _RS0
                                     20 	.globl _OV
                                     21 	.globl _F1
                                     22 	.globl _P
                                     23 	.globl _PS
                                     24 	.globl _PT1
                                     25 	.globl _PX1
                                     26 	.globl _PT0
                                     27 	.globl _PX0
                                     28 	.globl _RD
                                     29 	.globl _WR
                                     30 	.globl _T1
                                     31 	.globl _T0
                                     32 	.globl _INT1
                                     33 	.globl _INT0
                                     34 	.globl _TXD
                                     35 	.globl _RXD
                                     36 	.globl _P3_7
                                     37 	.globl _P3_6
                                     38 	.globl _P3_5
                                     39 	.globl _P3_4
                                     40 	.globl _P3_3
                                     41 	.globl _P3_2
                                     42 	.globl _P3_1
                                     43 	.globl _P3_0
                                     44 	.globl _EA
                                     45 	.globl _ES
                                     46 	.globl _ET1
                                     47 	.globl _EX1
                                     48 	.globl _ET0
                                     49 	.globl _EX0
                                     50 	.globl _P2_7
                                     51 	.globl _P2_6
                                     52 	.globl _P2_5
                                     53 	.globl _P2_4
                                     54 	.globl _P2_3
                                     55 	.globl _P2_2
                                     56 	.globl _P2_1
                                     57 	.globl _P2_0
                                     58 	.globl _SM0
                                     59 	.globl _SM1
                                     60 	.globl _SM2
                                     61 	.globl _REN
                                     62 	.globl _TB8
                                     63 	.globl _RB8
                                     64 	.globl _TI
                                     65 	.globl _RI
                                     66 	.globl _P1_7
                                     67 	.globl _P1_6
                                     68 	.globl _P1_5
                                     69 	.globl _P1_4
                                     70 	.globl _P1_3
                                     71 	.globl _P1_2
                                     72 	.globl _P1_1
                                     73 	.globl _P1_0
                                     74 	.globl _TF1
                                     75 	.globl _TR1
                                     76 	.globl _TF0
                                     77 	.globl _TR0
                                     78 	.globl _IE1
                                     79 	.globl _IT1
                                     80 	.globl _IE0
                                     81 	.globl _IT0
                                     82 	.globl _P0_7
                                     83 	.globl _P0_6
                                     84 	.globl _P0_5
                                     85 	.globl _P0_4
                                     86 	.globl _P0_3
                                     87 	.globl _P0_2
                                     88 	.globl _P0_1
                                     89 	.globl _P0_0
                                     90 	.globl _B
                                     91 	.globl _ACC
                                     92 	.globl _PSW
                                     93 	.globl _IP
                                     94 	.globl _P3
                                     95 	.globl _IE
                                     96 	.globl _P2
                                     97 	.globl _SBUF
                                     98 	.globl _SCON
                                     99 	.globl _P1
                                    100 	.globl _TH1
                                    101 	.globl _TH0
                                    102 	.globl _TL1
                                    103 	.globl _TL0
                                    104 	.globl _TMOD
                                    105 	.globl _TCON
                                    106 	.globl _PCON
                                    107 	.globl _DPH
                                    108 	.globl _DPL
                                    109 	.globl _SP
                                    110 	.globl _P0
                                    111 ;--------------------------------------------------------
                                    112 ; special function registers
                                    113 ;--------------------------------------------------------
                                    114 	.area RSEG    (ABS,DATA)
      000000                        115 	.org 0x0000
                           000080   116 _P0	=	0x0080
                           000081   117 _SP	=	0x0081
                           000082   118 _DPL	=	0x0082
                           000083   119 _DPH	=	0x0083
                           000087   120 _PCON	=	0x0087
                           000088   121 _TCON	=	0x0088
                           000089   122 _TMOD	=	0x0089
                           00008A   123 _TL0	=	0x008a
                           00008B   124 _TL1	=	0x008b
                           00008C   125 _TH0	=	0x008c
                           00008D   126 _TH1	=	0x008d
                           000090   127 _P1	=	0x0090
                           000098   128 _SCON	=	0x0098
                           000099   129 _SBUF	=	0x0099
                           0000A0   130 _P2	=	0x00a0
                           0000A8   131 _IE	=	0x00a8
                           0000B0   132 _P3	=	0x00b0
                           0000B8   133 _IP	=	0x00b8
                           0000D0   134 _PSW	=	0x00d0
                           0000E0   135 _ACC	=	0x00e0
                           0000F0   136 _B	=	0x00f0
                                    137 ;--------------------------------------------------------
                                    138 ; special function bits
                                    139 ;--------------------------------------------------------
                                    140 	.area RSEG    (ABS,DATA)
      000000                        141 	.org 0x0000
                           000080   142 _P0_0	=	0x0080
                           000081   143 _P0_1	=	0x0081
                           000082   144 _P0_2	=	0x0082
                           000083   145 _P0_3	=	0x0083
                           000084   146 _P0_4	=	0x0084
                           000085   147 _P0_5	=	0x0085
                           000086   148 _P0_6	=	0x0086
                           000087   149 _P0_7	=	0x0087
                           000088   150 _IT0	=	0x0088
                           000089   151 _IE0	=	0x0089
                           00008A   152 _IT1	=	0x008a
                           00008B   153 _IE1	=	0x008b
                           00008C   154 _TR0	=	0x008c
                           00008D   155 _TF0	=	0x008d
                           00008E   156 _TR1	=	0x008e
                           00008F   157 _TF1	=	0x008f
                           000090   158 _P1_0	=	0x0090
                           000091   159 _P1_1	=	0x0091
                           000092   160 _P1_2	=	0x0092
                           000093   161 _P1_3	=	0x0093
                           000094   162 _P1_4	=	0x0094
                           000095   163 _P1_5	=	0x0095
                           000096   164 _P1_6	=	0x0096
                           000097   165 _P1_7	=	0x0097
                           000098   166 _RI	=	0x0098
                           000099   167 _TI	=	0x0099
                           00009A   168 _RB8	=	0x009a
                           00009B   169 _TB8	=	0x009b
                           00009C   170 _REN	=	0x009c
                           00009D   171 _SM2	=	0x009d
                           00009E   172 _SM1	=	0x009e
                           00009F   173 _SM0	=	0x009f
                           0000A0   174 _P2_0	=	0x00a0
                           0000A1   175 _P2_1	=	0x00a1
                           0000A2   176 _P2_2	=	0x00a2
                           0000A3   177 _P2_3	=	0x00a3
                           0000A4   178 _P2_4	=	0x00a4
                           0000A5   179 _P2_5	=	0x00a5
                           0000A6   180 _P2_6	=	0x00a6
                           0000A7   181 _P2_7	=	0x00a7
                           0000A8   182 _EX0	=	0x00a8
                           0000A9   183 _ET0	=	0x00a9
                           0000AA   184 _EX1	=	0x00aa
                           0000AB   185 _ET1	=	0x00ab
                           0000AC   186 _ES	=	0x00ac
                           0000AF   187 _EA	=	0x00af
                           0000B0   188 _P3_0	=	0x00b0
                           0000B1   189 _P3_1	=	0x00b1
                           0000B2   190 _P3_2	=	0x00b2
                           0000B3   191 _P3_3	=	0x00b3
                           0000B4   192 _P3_4	=	0x00b4
                           0000B5   193 _P3_5	=	0x00b5
                           0000B6   194 _P3_6	=	0x00b6
                           0000B7   195 _P3_7	=	0x00b7
                           0000B0   196 _RXD	=	0x00b0
                           0000B1   197 _TXD	=	0x00b1
                           0000B2   198 _INT0	=	0x00b2
                           0000B3   199 _INT1	=	0x00b3
                           0000B4   200 _T0	=	0x00b4
                           0000B5   201 _T1	=	0x00b5
                           0000B6   202 _WR	=	0x00b6
                           0000B7   203 _RD	=	0x00b7
                           0000B8   204 _PX0	=	0x00b8
                           0000B9   205 _PT0	=	0x00b9
                           0000BA   206 _PX1	=	0x00ba
                           0000BB   207 _PT1	=	0x00bb
                           0000BC   208 _PS	=	0x00bc
                           0000D0   209 _P	=	0x00d0
                           0000D1   210 _F1	=	0x00d1
                           0000D2   211 _OV	=	0x00d2
                           0000D3   212 _RS0	=	0x00d3
                           0000D4   213 _RS1	=	0x00d4
                           0000D5   214 _F0	=	0x00d5
                           0000D6   215 _AC	=	0x00d6
                           0000D7   216 _CY	=	0x00d7
                                    217 ;--------------------------------------------------------
                                    218 ; overlayable register banks
                                    219 ;--------------------------------------------------------
                                    220 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        221 	.ds 8
                                    222 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        223 	.ds 8
                                    224 ;--------------------------------------------------------
                                    225 ; internal ram data
                                    226 ;--------------------------------------------------------
                                    227 	.area DSEG    (DATA)
                                    228 ;--------------------------------------------------------
                                    229 ; overlayable items in internal ram
                                    230 ;--------------------------------------------------------
                                    231 	.area	OSEG    (OVR,DATA)
                                    232 ;--------------------------------------------------------
                                    233 ; Stack segment in internal ram
                                    234 ;--------------------------------------------------------
                                    235 	.area SSEG
      000010                        236 __start__stack:
      000010                        237 	.ds	1
                                    238 
                                    239 ;--------------------------------------------------------
                                    240 ; indirectly addressable internal ram data
                                    241 ;--------------------------------------------------------
                                    242 	.area ISEG    (DATA)
                                    243 ;--------------------------------------------------------
                                    244 ; absolute internal ram data
                                    245 ;--------------------------------------------------------
                                    246 	.area IABS    (ABS,DATA)
                                    247 	.area IABS    (ABS,DATA)
                                    248 ;--------------------------------------------------------
                                    249 ; bit data
                                    250 ;--------------------------------------------------------
                                    251 	.area BSEG    (BIT)
                                    252 ;--------------------------------------------------------
                                    253 ; paged external ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area PSEG    (PAG,XDATA)
                                    256 ;--------------------------------------------------------
                                    257 ; uninitialized external ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area XSEG    (XDATA)
                                    260 ;--------------------------------------------------------
                                    261 ; absolute external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area XABS    (ABS,XDATA)
                                    264 ;--------------------------------------------------------
                                    265 ; initialized external ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area XISEG   (XDATA)
                                    268 	.area HOME    (CODE)
                                    269 	.area GSINIT0 (CODE)
                                    270 	.area GSINIT1 (CODE)
                                    271 	.area GSINIT2 (CODE)
                                    272 	.area GSINIT3 (CODE)
                                    273 	.area GSINIT4 (CODE)
                                    274 	.area GSINIT5 (CODE)
                                    275 	.area GSINIT  (CODE)
                                    276 	.area GSFINAL (CODE)
                                    277 	.area CSEG    (CODE)
                                    278 ;--------------------------------------------------------
                                    279 ; interrupt vector
                                    280 ;--------------------------------------------------------
                                    281 	.area HOME    (CODE)
      000000                        282 __interrupt_vect:
      000000 02 00 54         [24]  283 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  284 	reti
      000004                        285 	.ds	7
      00000B 02 00 D2         [24]  286 	ljmp	_Timer0_isr
                                    287 ; restartable atomic support routines
      00000E                        288 	.ds	2
      000010                        289 sdcc_atomic_exchange_rollback_start::
      000010 00               [12]  290 	nop
      000011 00               [12]  291 	nop
      000012                        292 sdcc_atomic_exchange_pdata_impl:
      000012 E2               [24]  293 	movx	a, @r0
      000013 FB               [12]  294 	mov	r3, a
      000014 EA               [12]  295 	mov	a, r2
      000015 F2               [24]  296 	movx	@r0, a
      000016 80 2C            [24]  297 	sjmp	sdcc_atomic_exchange_exit
      000018 00               [12]  298 	nop
      000019 00               [12]  299 	nop
      00001A                        300 sdcc_atomic_exchange_xdata_impl:
      00001A E0               [24]  301 	movx	a, @dptr
      00001B FB               [12]  302 	mov	r3, a
      00001C EA               [12]  303 	mov	a, r2
      00001D F0               [24]  304 	movx	@dptr, a
      00001E 80 24            [24]  305 	sjmp	sdcc_atomic_exchange_exit
      000020                        306 sdcc_atomic_compare_exchange_idata_impl:
      000020 E6               [12]  307 	mov	a, @r0
      000021 B5 02 02         [24]  308 	cjne	a, ar2, .+#5
      000024 EB               [12]  309 	mov	a, r3
      000025 F6               [12]  310 	mov	@r0, a
      000026 22               [24]  311 	ret
      000027 00               [12]  312 	nop
      000028                        313 sdcc_atomic_compare_exchange_pdata_impl:
      000028 E2               [24]  314 	movx	a, @r0
      000029 B5 02 02         [24]  315 	cjne	a, ar2, .+#5
      00002C EB               [12]  316 	mov	a, r3
      00002D F2               [24]  317 	movx	@r0, a
      00002E 22               [24]  318 	ret
      00002F 00               [12]  319 	nop
      000030                        320 sdcc_atomic_compare_exchange_xdata_impl:
      000030 E0               [24]  321 	movx	a, @dptr
      000031 B5 02 02         [24]  322 	cjne	a, ar2, .+#5
      000034 EB               [12]  323 	mov	a, r3
      000035 F0               [24]  324 	movx	@dptr, a
      000036 22               [24]  325 	ret
      000037                        326 sdcc_atomic_exchange_rollback_end::
                                    327 
      000037                        328 sdcc_atomic_exchange_gptr_impl::
      000037 30 F6 E0         [24]  329 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      00003A A8 82            [24]  330 	mov	r0, dpl
      00003C 20 F5 D3         [24]  331 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      00003F                        332 sdcc_atomic_exchange_idata_impl:
      00003F EA               [12]  333 	mov	a, r2
      000040 C6               [12]  334 	xch	a, @r0
      000041 F5 82            [12]  335 	mov	dpl, a
      000043 22               [24]  336 	ret
      000044                        337 sdcc_atomic_exchange_exit:
      000044 8B 82            [24]  338 	mov	dpl, r3
      000046 22               [24]  339 	ret
      000047                        340 sdcc_atomic_compare_exchange_gptr_impl::
      000047 30 F6 E6         [24]  341 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      00004A A8 82            [24]  342 	mov	r0, dpl
      00004C 20 F5 D9         [24]  343 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      00004F 80 CF            [24]  344 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    345 ;--------------------------------------------------------
                                    346 ; global & static initialisations
                                    347 ;--------------------------------------------------------
                                    348 	.area HOME    (CODE)
                                    349 	.area GSINIT  (CODE)
                                    350 	.area GSFINAL (CODE)
                                    351 	.area GSINIT  (CODE)
                                    352 	.globl __sdcc_gsinit_startup
                                    353 	.globl __sdcc_program_startup
                                    354 	.globl __start__stack
                                    355 	.globl __mcs51_genXINIT
                                    356 	.globl __mcs51_genXRAMCLEAR
                                    357 	.globl __mcs51_genRAMCLEAR
                                    358 	.area GSFINAL (CODE)
      0000AD 02 00 51         [24]  359 	ljmp	__sdcc_program_startup
                                    360 ;--------------------------------------------------------
                                    361 ; Home
                                    362 ;--------------------------------------------------------
                                    363 	.area HOME    (CODE)
                                    364 	.area HOME    (CODE)
      000051                        365 __sdcc_program_startup:
      000051 02 00 E1         [24]  366 	ljmp	_main
                                    367 ;	return from main will return to caller
                                    368 ;--------------------------------------------------------
                                    369 ; code
                                    370 ;--------------------------------------------------------
                                    371 	.area CSEG    (CODE)
                                    372 ;------------------------------------------------------------
                                    373 ;Allocation info for local variables in function 'delay'
                                    374 ;------------------------------------------------------------
                                    375 ;time          Allocated to registers 
                                    376 ;------------------------------------------------------------
                                    377 ;	.\stcboot.c:4: void delay(unsigned int time) {
                                    378 ;	-----------------------------------------
                                    379 ;	 function delay
                                    380 ;	-----------------------------------------
      0000B0                        381 _delay:
                           000007   382 	ar7 = 0x07
                           000006   383 	ar6 = 0x06
                           000005   384 	ar5 = 0x05
                           000004   385 	ar4 = 0x04
                           000003   386 	ar3 = 0x03
                           000002   387 	ar2 = 0x02
                           000001   388 	ar1 = 0x01
                           000000   389 	ar0 = 0x00
      0000B0 AE 82            [24]  390 	mov	r6, dpl
      0000B2 AF 83            [24]  391 	mov	r7, dph
                                    392 ;	.\stcboot.c:5: while (time--);
      0000B4                        393 00101$:
      0000B4 8E 04            [24]  394 	mov	ar4,r6
      0000B6 8F 05            [24]  395 	mov	ar5,r7
      0000B8 1E               [12]  396 	dec	r6
      0000B9 BE FF 01         [24]  397 	cjne	r6,#0xff,00113$
      0000BC 1F               [12]  398 	dec	r7
      0000BD                        399 00113$:
      0000BD EC               [12]  400 	mov	a,r4
      0000BE 4D               [12]  401 	orl	a,r5
      0000BF 70 F3            [24]  402 	jnz	00101$
                                    403 ;	.\stcboot.c:6: }
      0000C1 22               [24]  404 	ret
                                    405 ;------------------------------------------------------------
                                    406 ;Allocation info for local variables in function 'Init_Timer0'
                                    407 ;------------------------------------------------------------
                                    408 ;	.\stcboot.c:8: void Init_Timer0(void)
                                    409 ;	-----------------------------------------
                                    410 ;	 function Init_Timer0
                                    411 ;	-----------------------------------------
      0000C2                        412 _Init_Timer0:
                                    413 ;	.\stcboot.c:10: TMOD |= 0x01;		// mode 1, 16-bit timer
      0000C2 43 89 01         [24]  414 	orl	_TMOD,#0x01
                                    415 ;	.\stcboot.c:11: TH0 = 0x00;		// overflow at 65536
      0000C5 75 8C 00         [24]  416 	mov	_TH0,#0x00
                                    417 ;	.\stcboot.c:12: TL0 = 0x00;
      0000C8 75 8A 00         [24]  418 	mov	_TL0,#0x00
                                    419 ;	.\stcboot.c:13: EA = 1;			// enable global interrupts
                                    420 ;	assignBit
      0000CB D2 AF            [12]  421 	setb	_EA
                                    422 ;	.\stcboot.c:14: ET0 = 1;		// enable timer0 interrupt
                                    423 ;	assignBit
      0000CD D2 A9            [12]  424 	setb	_ET0
                                    425 ;	.\stcboot.c:15: TR0 = 1;		// timer on
                                    426 ;	assignBit
      0000CF D2 8C            [12]  427 	setb	_TR0
                                    428 ;	.\stcboot.c:16: }
      0000D1 22               [24]  429 	ret
                                    430 ;------------------------------------------------------------
                                    431 ;Allocation info for local variables in function 'Timer0_isr'
                                    432 ;------------------------------------------------------------
                                    433 ;	.\stcboot.c:18: void Timer0_isr(void) __interrupt(1) __using(1)
                                    434 ;	-----------------------------------------
                                    435 ;	 function Timer0_isr
                                    436 ;	-----------------------------------------
      0000D2                        437 _Timer0_isr:
                           00000F   438 	ar7 = 0x0f
                           00000E   439 	ar6 = 0x0e
                           00000D   440 	ar5 = 0x0d
                           00000C   441 	ar4 = 0x0c
                           00000B   442 	ar3 = 0x0b
                           00000A   443 	ar2 = 0x0a
                           000009   444 	ar1 = 0x09
                           000008   445 	ar0 = 0x08
      0000D2 C0 E0            [24]  446 	push	acc
                                    447 ;	.\stcboot.c:20: TH0 = 0x00;		// reload
                                    448 ;	.\stcboot.c:21: TL0 = 0x00;
                                    449 ;	.\stcboot.c:22: P1=~P1;
      0000D4 E4               [12]  450 	clr	a
      0000D5 F5 8C            [12]  451 	mov	_TH0,a
      0000D7 F5 8A            [12]  452 	mov	_TL0,a
      0000D9 E5 90            [12]  453 	mov	a,_P1
      0000DB F4               [12]  454 	cpl	a
      0000DC F5 90            [12]  455 	mov	_P1,a
                                    456 ;	.\stcboot.c:23: }
      0000DE D0 E0            [24]  457 	pop	acc
      0000E0 32               [24]  458 	reti
                                    459 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    460 ;	eliminated unneeded push/pop not_psw
                                    461 ;	eliminated unneeded push/pop dpl
                                    462 ;	eliminated unneeded push/pop dph
                                    463 ;	eliminated unneeded push/pop b
                                    464 ;------------------------------------------------------------
                                    465 ;Allocation info for local variables in function 'main'
                                    466 ;------------------------------------------------------------
                                    467 ;	.\stcboot.c:25: void main(void)
                                    468 ;	-----------------------------------------
                                    469 ;	 function main
                                    470 ;	-----------------------------------------
      0000E1                        471 _main:
                           000007   472 	ar7 = 0x07
                           000006   473 	ar6 = 0x06
                           000005   474 	ar5 = 0x05
                           000004   475 	ar4 = 0x04
                           000003   476 	ar3 = 0x03
                           000002   477 	ar2 = 0x02
                           000001   478 	ar1 = 0x01
                           000000   479 	ar0 = 0x00
                                    480 ;	.\stcboot.c:27: Init_Timer0();
      0000E1 12 00 C2         [24]  481 	lcall	_Init_Timer0
                                    482 ;	.\stcboot.c:28: P1 =0;
      0000E4 75 90 00         [24]  483 	mov	_P1,#0x00
                                    484 ;	.\stcboot.c:29: while (1);
      0000E7                        485 00102$:
                                    486 ;	.\stcboot.c:30: }
      0000E7 80 FE            [24]  487 	sjmp	00102$
                                    488 	.area CSEG    (CODE)
                                    489 	.area CONST   (CODE)
                                    490 	.area XINIT   (CODE)
                                    491 	.area CABS    (ABS,CODE)
