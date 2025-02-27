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
                                     12 	.globl _I2C_Write
                                     13 	.globl _I2C_Read
                                     14 	.globl _I2C_AckR
                                     15 	.globl _I2C_Ack
                                     16 	.globl _I2C_stop
                                     17 	.globl _I2C_start
                                     18 	.globl _I2C_init
                                     19 	.globl _delay
                                     20 	.globl _CY
                                     21 	.globl _AC
                                     22 	.globl _F0
                                     23 	.globl _RS1
                                     24 	.globl _RS0
                                     25 	.globl _OV
                                     26 	.globl _F1
                                     27 	.globl _P
                                     28 	.globl _PS
                                     29 	.globl _PT1
                                     30 	.globl _PX1
                                     31 	.globl _PT0
                                     32 	.globl _PX0
                                     33 	.globl _RD
                                     34 	.globl _WR
                                     35 	.globl _T1
                                     36 	.globl _T0
                                     37 	.globl _INT1
                                     38 	.globl _INT0
                                     39 	.globl _TXD
                                     40 	.globl _RXD
                                     41 	.globl _P3_7
                                     42 	.globl _P3_6
                                     43 	.globl _P3_5
                                     44 	.globl _P3_4
                                     45 	.globl _P3_3
                                     46 	.globl _P3_2
                                     47 	.globl _P3_1
                                     48 	.globl _P3_0
                                     49 	.globl _EA
                                     50 	.globl _ES
                                     51 	.globl _ET1
                                     52 	.globl _EX1
                                     53 	.globl _ET0
                                     54 	.globl _EX0
                                     55 	.globl _P2_7
                                     56 	.globl _P2_6
                                     57 	.globl _P2_5
                                     58 	.globl _P2_4
                                     59 	.globl _P2_3
                                     60 	.globl _P2_2
                                     61 	.globl _P2_1
                                     62 	.globl _P2_0
                                     63 	.globl _SM0
                                     64 	.globl _SM1
                                     65 	.globl _SM2
                                     66 	.globl _REN
                                     67 	.globl _TB8
                                     68 	.globl _RB8
                                     69 	.globl _TI
                                     70 	.globl _RI
                                     71 	.globl _P1_7
                                     72 	.globl _P1_6
                                     73 	.globl _P1_5
                                     74 	.globl _P1_4
                                     75 	.globl _P1_3
                                     76 	.globl _P1_2
                                     77 	.globl _P1_1
                                     78 	.globl _P1_0
                                     79 	.globl _TF1
                                     80 	.globl _TR1
                                     81 	.globl _TF0
                                     82 	.globl _TR0
                                     83 	.globl _IE1
                                     84 	.globl _IT1
                                     85 	.globl _IE0
                                     86 	.globl _IT0
                                     87 	.globl _P0_7
                                     88 	.globl _P0_6
                                     89 	.globl _P0_5
                                     90 	.globl _P0_4
                                     91 	.globl _P0_3
                                     92 	.globl _P0_2
                                     93 	.globl _P0_1
                                     94 	.globl _P0_0
                                     95 	.globl _B
                                     96 	.globl _ACC
                                     97 	.globl _PSW
                                     98 	.globl _IP
                                     99 	.globl _P3
                                    100 	.globl _IE
                                    101 	.globl _P2
                                    102 	.globl _SBUF
                                    103 	.globl _SCON
                                    104 	.globl _P1
                                    105 	.globl _TH1
                                    106 	.globl _TH0
                                    107 	.globl _TL1
                                    108 	.globl _TL0
                                    109 	.globl _TMOD
                                    110 	.globl _TCON
                                    111 	.globl _PCON
                                    112 	.globl _DPH
                                    113 	.globl _DPL
                                    114 	.globl _SP
                                    115 	.globl _P0
                                    116 ;--------------------------------------------------------
                                    117 ; special function registers
                                    118 ;--------------------------------------------------------
                                    119 	.area RSEG    (ABS,DATA)
      000000                        120 	.org 0x0000
                           000080   121 _P0	=	0x0080
                           000081   122 _SP	=	0x0081
                           000082   123 _DPL	=	0x0082
                           000083   124 _DPH	=	0x0083
                           000087   125 _PCON	=	0x0087
                           000088   126 _TCON	=	0x0088
                           000089   127 _TMOD	=	0x0089
                           00008A   128 _TL0	=	0x008a
                           00008B   129 _TL1	=	0x008b
                           00008C   130 _TH0	=	0x008c
                           00008D   131 _TH1	=	0x008d
                           000090   132 _P1	=	0x0090
                           000098   133 _SCON	=	0x0098
                           000099   134 _SBUF	=	0x0099
                           0000A0   135 _P2	=	0x00a0
                           0000A8   136 _IE	=	0x00a8
                           0000B0   137 _P3	=	0x00b0
                           0000B8   138 _IP	=	0x00b8
                           0000D0   139 _PSW	=	0x00d0
                           0000E0   140 _ACC	=	0x00e0
                           0000F0   141 _B	=	0x00f0
                                    142 ;--------------------------------------------------------
                                    143 ; special function bits
                                    144 ;--------------------------------------------------------
                                    145 	.area RSEG    (ABS,DATA)
      000000                        146 	.org 0x0000
                           000080   147 _P0_0	=	0x0080
                           000081   148 _P0_1	=	0x0081
                           000082   149 _P0_2	=	0x0082
                           000083   150 _P0_3	=	0x0083
                           000084   151 _P0_4	=	0x0084
                           000085   152 _P0_5	=	0x0085
                           000086   153 _P0_6	=	0x0086
                           000087   154 _P0_7	=	0x0087
                           000088   155 _IT0	=	0x0088
                           000089   156 _IE0	=	0x0089
                           00008A   157 _IT1	=	0x008a
                           00008B   158 _IE1	=	0x008b
                           00008C   159 _TR0	=	0x008c
                           00008D   160 _TF0	=	0x008d
                           00008E   161 _TR1	=	0x008e
                           00008F   162 _TF1	=	0x008f
                           000090   163 _P1_0	=	0x0090
                           000091   164 _P1_1	=	0x0091
                           000092   165 _P1_2	=	0x0092
                           000093   166 _P1_3	=	0x0093
                           000094   167 _P1_4	=	0x0094
                           000095   168 _P1_5	=	0x0095
                           000096   169 _P1_6	=	0x0096
                           000097   170 _P1_7	=	0x0097
                           000098   171 _RI	=	0x0098
                           000099   172 _TI	=	0x0099
                           00009A   173 _RB8	=	0x009a
                           00009B   174 _TB8	=	0x009b
                           00009C   175 _REN	=	0x009c
                           00009D   176 _SM2	=	0x009d
                           00009E   177 _SM1	=	0x009e
                           00009F   178 _SM0	=	0x009f
                           0000A0   179 _P2_0	=	0x00a0
                           0000A1   180 _P2_1	=	0x00a1
                           0000A2   181 _P2_2	=	0x00a2
                           0000A3   182 _P2_3	=	0x00a3
                           0000A4   183 _P2_4	=	0x00a4
                           0000A5   184 _P2_5	=	0x00a5
                           0000A6   185 _P2_6	=	0x00a6
                           0000A7   186 _P2_7	=	0x00a7
                           0000A8   187 _EX0	=	0x00a8
                           0000A9   188 _ET0	=	0x00a9
                           0000AA   189 _EX1	=	0x00aa
                           0000AB   190 _ET1	=	0x00ab
                           0000AC   191 _ES	=	0x00ac
                           0000AF   192 _EA	=	0x00af
                           0000B0   193 _P3_0	=	0x00b0
                           0000B1   194 _P3_1	=	0x00b1
                           0000B2   195 _P3_2	=	0x00b2
                           0000B3   196 _P3_3	=	0x00b3
                           0000B4   197 _P3_4	=	0x00b4
                           0000B5   198 _P3_5	=	0x00b5
                           0000B6   199 _P3_6	=	0x00b6
                           0000B7   200 _P3_7	=	0x00b7
                           0000B0   201 _RXD	=	0x00b0
                           0000B1   202 _TXD	=	0x00b1
                           0000B2   203 _INT0	=	0x00b2
                           0000B3   204 _INT1	=	0x00b3
                           0000B4   205 _T0	=	0x00b4
                           0000B5   206 _T1	=	0x00b5
                           0000B6   207 _WR	=	0x00b6
                           0000B7   208 _RD	=	0x00b7
                           0000B8   209 _PX0	=	0x00b8
                           0000B9   210 _PT0	=	0x00b9
                           0000BA   211 _PX1	=	0x00ba
                           0000BB   212 _PT1	=	0x00bb
                           0000BC   213 _PS	=	0x00bc
                           0000D0   214 _P	=	0x00d0
                           0000D1   215 _F1	=	0x00d1
                           0000D2   216 _OV	=	0x00d2
                           0000D3   217 _RS0	=	0x00d3
                           0000D4   218 _RS1	=	0x00d4
                           0000D5   219 _F0	=	0x00d5
                           0000D6   220 _AC	=	0x00d6
                           0000D7   221 _CY	=	0x00d7
                                    222 ;--------------------------------------------------------
                                    223 ; overlayable register banks
                                    224 ;--------------------------------------------------------
                                    225 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        226 	.ds 8
                                    227 ;--------------------------------------------------------
                                    228 ; internal ram data
                                    229 ;--------------------------------------------------------
                                    230 	.area DSEG    (DATA)
                                    231 ;--------------------------------------------------------
                                    232 ; overlayable items in internal ram
                                    233 ;--------------------------------------------------------
                                    234 	.area	OSEG    (OVR,DATA)
                                    235 ;--------------------------------------------------------
                                    236 ; Stack segment in internal ram
                                    237 ;--------------------------------------------------------
                                    238 	.area SSEG
      000008                        239 __start__stack:
      000008                        240 	.ds	1
                                    241 
                                    242 ;--------------------------------------------------------
                                    243 ; indirectly addressable internal ram data
                                    244 ;--------------------------------------------------------
                                    245 	.area ISEG    (DATA)
                                    246 ;--------------------------------------------------------
                                    247 ; absolute internal ram data
                                    248 ;--------------------------------------------------------
                                    249 	.area IABS    (ABS,DATA)
                                    250 	.area IABS    (ABS,DATA)
                                    251 ;--------------------------------------------------------
                                    252 ; bit data
                                    253 ;--------------------------------------------------------
                                    254 	.area BSEG    (BIT)
                                    255 ;--------------------------------------------------------
                                    256 ; paged external ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area PSEG    (PAG,XDATA)
                                    259 ;--------------------------------------------------------
                                    260 ; uninitialized external ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area XSEG    (XDATA)
                                    263 ;--------------------------------------------------------
                                    264 ; absolute external ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area XABS    (ABS,XDATA)
                                    267 ;--------------------------------------------------------
                                    268 ; initialized external ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area XISEG   (XDATA)
                                    271 	.area HOME    (CODE)
                                    272 	.area GSINIT0 (CODE)
                                    273 	.area GSINIT1 (CODE)
                                    274 	.area GSINIT2 (CODE)
                                    275 	.area GSINIT3 (CODE)
                                    276 	.area GSINIT4 (CODE)
                                    277 	.area GSINIT5 (CODE)
                                    278 	.area GSINIT  (CODE)
                                    279 	.area GSFINAL (CODE)
                                    280 	.area CSEG    (CODE)
                                    281 ;--------------------------------------------------------
                                    282 ; interrupt vector
                                    283 ;--------------------------------------------------------
                                    284 	.area HOME    (CODE)
      000000                        285 __interrupt_vect:
      000000 02 00 4C         [24]  286 	ljmp	__sdcc_gsinit_startup
                                    287 ; restartable atomic support routines
      000003                        288 	.ds	5
      000008                        289 sdcc_atomic_exchange_rollback_start::
      000008 00               [12]  290 	nop
      000009 00               [12]  291 	nop
      00000A                        292 sdcc_atomic_exchange_pdata_impl:
      00000A E2               [24]  293 	movx	a, @r0
      00000B FB               [12]  294 	mov	r3, a
      00000C EA               [12]  295 	mov	a, r2
      00000D F2               [24]  296 	movx	@r0, a
      00000E 80 2C            [24]  297 	sjmp	sdcc_atomic_exchange_exit
      000010 00               [12]  298 	nop
      000011 00               [12]  299 	nop
      000012                        300 sdcc_atomic_exchange_xdata_impl:
      000012 E0               [24]  301 	movx	a, @dptr
      000013 FB               [12]  302 	mov	r3, a
      000014 EA               [12]  303 	mov	a, r2
      000015 F0               [24]  304 	movx	@dptr, a
      000016 80 24            [24]  305 	sjmp	sdcc_atomic_exchange_exit
      000018                        306 sdcc_atomic_compare_exchange_idata_impl:
      000018 E6               [12]  307 	mov	a, @r0
      000019 B5 02 02         [24]  308 	cjne	a, ar2, .+#5
      00001C EB               [12]  309 	mov	a, r3
      00001D F6               [12]  310 	mov	@r0, a
      00001E 22               [24]  311 	ret
      00001F 00               [12]  312 	nop
      000020                        313 sdcc_atomic_compare_exchange_pdata_impl:
      000020 E2               [24]  314 	movx	a, @r0
      000021 B5 02 02         [24]  315 	cjne	a, ar2, .+#5
      000024 EB               [12]  316 	mov	a, r3
      000025 F2               [24]  317 	movx	@r0, a
      000026 22               [24]  318 	ret
      000027 00               [12]  319 	nop
      000028                        320 sdcc_atomic_compare_exchange_xdata_impl:
      000028 E0               [24]  321 	movx	a, @dptr
      000029 B5 02 02         [24]  322 	cjne	a, ar2, .+#5
      00002C EB               [12]  323 	mov	a, r3
      00002D F0               [24]  324 	movx	@dptr, a
      00002E 22               [24]  325 	ret
      00002F                        326 sdcc_atomic_exchange_rollback_end::
                                    327 
      00002F                        328 sdcc_atomic_exchange_gptr_impl::
      00002F 30 F6 E0         [24]  329 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      000032 A8 82            [24]  330 	mov	r0, dpl
      000034 20 F5 D3         [24]  331 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      000037                        332 sdcc_atomic_exchange_idata_impl:
      000037 EA               [12]  333 	mov	a, r2
      000038 C6               [12]  334 	xch	a, @r0
      000039 F5 82            [12]  335 	mov	dpl, a
      00003B 22               [24]  336 	ret
      00003C                        337 sdcc_atomic_exchange_exit:
      00003C 8B 82            [24]  338 	mov	dpl, r3
      00003E 22               [24]  339 	ret
      00003F                        340 sdcc_atomic_compare_exchange_gptr_impl::
      00003F 30 F6 E6         [24]  341 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      000042 A8 82            [24]  342 	mov	r0, dpl
      000044 20 F5 D9         [24]  343 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      000047 80 CF            [24]  344 	sjmp	sdcc_atomic_compare_exchange_idata_impl
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
      0000A5 02 00 49         [24]  359 	ljmp	__sdcc_program_startup
                                    360 ;--------------------------------------------------------
                                    361 ; Home
                                    362 ;--------------------------------------------------------
                                    363 	.area HOME    (CODE)
                                    364 	.area HOME    (CODE)
      000049                        365 __sdcc_program_startup:
      000049 02 00 FE         [24]  366 	ljmp	_main
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
                                    377 ;	.\stcboot.c:8: void delay(unsigned int time) {
                                    378 ;	-----------------------------------------
                                    379 ;	 function delay
                                    380 ;	-----------------------------------------
      0000A8                        381 _delay:
                           000007   382 	ar7 = 0x07
                           000006   383 	ar6 = 0x06
                           000005   384 	ar5 = 0x05
                           000004   385 	ar4 = 0x04
                           000003   386 	ar3 = 0x03
                           000002   387 	ar2 = 0x02
                           000001   388 	ar1 = 0x01
                           000000   389 	ar0 = 0x00
      0000A8 AE 82            [24]  390 	mov	r6, dpl
      0000AA AF 83            [24]  391 	mov	r7, dph
                                    392 ;	.\stcboot.c:9: while (time--);
      0000AC                        393 00101$:
      0000AC 8E 04            [24]  394 	mov	ar4,r6
      0000AE 8F 05            [24]  395 	mov	ar5,r7
      0000B0 1E               [12]  396 	dec	r6
      0000B1 BE FF 01         [24]  397 	cjne	r6,#0xff,00113$
      0000B4 1F               [12]  398 	dec	r7
      0000B5                        399 00113$:
      0000B5 EC               [12]  400 	mov	a,r4
      0000B6 4D               [12]  401 	orl	a,r5
      0000B7 70 F3            [24]  402 	jnz	00101$
                                    403 ;	.\stcboot.c:10: }
      0000B9 22               [24]  404 	ret
                                    405 ;------------------------------------------------------------
                                    406 ;Allocation info for local variables in function 'I2C_init'
                                    407 ;------------------------------------------------------------
                                    408 ;	.\stcboot.c:12: void I2C_init(void) {
                                    409 ;	-----------------------------------------
                                    410 ;	 function I2C_init
                                    411 ;	-----------------------------------------
      0000BA                        412 _I2C_init:
                                    413 ;	.\stcboot.c:13: SLC = 1;
                                    414 ;	assignBit
      0000BA D2 B1            [12]  415 	setb	_P3_1
                                    416 ;	.\stcboot.c:14: SDA = 1;
                                    417 ;	assignBit
      0000BC D2 B2            [12]  418 	setb	_P3_2
                                    419 ;	.\stcboot.c:15: }   
      0000BE 22               [24]  420 	ret
                                    421 ;------------------------------------------------------------
                                    422 ;Allocation info for local variables in function 'I2C_start'
                                    423 ;------------------------------------------------------------
                                    424 ;	.\stcboot.c:17: void I2C_start(void){
                                    425 ;	-----------------------------------------
                                    426 ;	 function I2C_start
                                    427 ;	-----------------------------------------
      0000BF                        428 _I2C_start:
                                    429 ;	.\stcboot.c:18: SLC = 1;
                                    430 ;	assignBit
      0000BF D2 B1            [12]  431 	setb	_P3_1
                                    432 ;	.\stcboot.c:19: SDA = 1;
                                    433 ;	assignBit
      0000C1 D2 B2            [12]  434 	setb	_P3_2
                                    435 ;	.\stcboot.c:20: delay(1); // wait for 1ms
      0000C3 90 00 01         [24]  436 	mov	dptr,#0x0001
      0000C6 12 00 A8         [24]  437 	lcall	_delay
                                    438 ;	.\stcboot.c:21: SDA = 0;
                                    439 ;	assignBit
      0000C9 C2 B2            [12]  440 	clr	_P3_2
                                    441 ;	.\stcboot.c:22: SLC = 0;
                                    442 ;	assignBit
      0000CB C2 B1            [12]  443 	clr	_P3_1
                                    444 ;	.\stcboot.c:23: }
      0000CD 22               [24]  445 	ret
                                    446 ;------------------------------------------------------------
                                    447 ;Allocation info for local variables in function 'I2C_stop'
                                    448 ;------------------------------------------------------------
                                    449 ;	.\stcboot.c:25: void I2C_stop(void){
                                    450 ;	-----------------------------------------
                                    451 ;	 function I2C_stop
                                    452 ;	-----------------------------------------
      0000CE                        453 _I2C_stop:
                                    454 ;	.\stcboot.c:26: SDA = 0;
                                    455 ;	assignBit
      0000CE C2 B2            [12]  456 	clr	_P3_2
                                    457 ;	.\stcboot.c:27: SDA = 1;
                                    458 ;	assignBit
      0000D0 D2 B2            [12]  459 	setb	_P3_2
                                    460 ;	.\stcboot.c:28: SLC = 0;
                                    461 ;	assignBit
      0000D2 C2 B1            [12]  462 	clr	_P3_1
                                    463 ;	.\stcboot.c:29: }
      0000D4 22               [24]  464 	ret
                                    465 ;------------------------------------------------------------
                                    466 ;Allocation info for local variables in function 'I2C_Ack'
                                    467 ;------------------------------------------------------------
                                    468 ;	.\stcboot.c:32: void I2C_Ack(void){
                                    469 ;	-----------------------------------------
                                    470 ;	 function I2C_Ack
                                    471 ;	-----------------------------------------
      0000D5                        472 _I2C_Ack:
                                    473 ;	.\stcboot.c:33: SDA = 1;
                                    474 ;	assignBit
      0000D5 D2 B2            [12]  475 	setb	_P3_2
                                    476 ;	.\stcboot.c:34: SLC = 1;
                                    477 ;	assignBit
      0000D7 D2 B1            [12]  478 	setb	_P3_1
                                    479 ;	.\stcboot.c:35: }
      0000D9 22               [24]  480 	ret
                                    481 ;------------------------------------------------------------
                                    482 ;Allocation info for local variables in function 'I2C_AckR'
                                    483 ;------------------------------------------------------------
                                    484 ;	.\stcboot.c:38: void I2C_AckR(void){
                                    485 ;	-----------------------------------------
                                    486 ;	 function I2C_AckR
                                    487 ;	-----------------------------------------
      0000DA                        488 _I2C_AckR:
                                    489 ;	.\stcboot.c:39: SDA = 1;
                                    490 ;	assignBit
      0000DA D2 B2            [12]  491 	setb	_P3_2
                                    492 ;	.\stcboot.c:40: SLC = 1;
                                    493 ;	assignBit
      0000DC D2 B1            [12]  494 	setb	_P3_1
                                    495 ;	.\stcboot.c:41: }
      0000DE 22               [24]  496 	ret
                                    497 ;------------------------------------------------------------
                                    498 ;Allocation info for local variables in function 'I2C_Read'
                                    499 ;------------------------------------------------------------
                                    500 ;	.\stcboot.c:44: void I2C_Read(void){
                                    501 ;	-----------------------------------------
                                    502 ;	 function I2C_Read
                                    503 ;	-----------------------------------------
      0000DF                        504 _I2C_Read:
                                    505 ;	.\stcboot.c:45: SDA = 1;
                                    506 ;	assignBit
      0000DF D2 B2            [12]  507 	setb	_P3_2
                                    508 ;	.\stcboot.c:46: SLC = 1;
                                    509 ;	assignBit
      0000E1 D2 B1            [12]  510 	setb	_P3_1
                                    511 ;	.\stcboot.c:47: }
      0000E3 22               [24]  512 	ret
                                    513 ;------------------------------------------------------------
                                    514 ;Allocation info for local variables in function 'I2C_Write'
                                    515 ;------------------------------------------------------------
                                    516 ;	.\stcboot.c:49: void I2C_Write(void){
                                    517 ;	-----------------------------------------
                                    518 ;	 function I2C_Write
                                    519 ;	-----------------------------------------
      0000E4                        520 _I2C_Write:
                                    521 ;	.\stcboot.c:50: I2C_start();
      0000E4 12 00 BF         [24]  522 	lcall	_I2C_start
                                    523 ;	.\stcboot.c:51: SDA = 1;
                                    524 ;	assignBit
      0000E7 D2 B2            [12]  525 	setb	_P3_2
                                    526 ;	.\stcboot.c:52: SLC = 1;
                                    527 ;	assignBit
      0000E9 D2 B1            [12]  528 	setb	_P3_1
                                    529 ;	.\stcboot.c:53: delay(1); // wait for 1ms
      0000EB 90 00 01         [24]  530 	mov	dptr,#0x0001
      0000EE 12 00 A8         [24]  531 	lcall	_delay
                                    532 ;	.\stcboot.c:54: SLC = 0;
                                    533 ;	assignBit
      0000F1 C2 B1            [12]  534 	clr	_P3_1
                                    535 ;	.\stcboot.c:55: SDA = 0;
                                    536 ;	assignBit
      0000F3 C2 B2            [12]  537 	clr	_P3_2
                                    538 ;	.\stcboot.c:56: delay(1); // wait for 1ms
      0000F5 90 00 01         [24]  539 	mov	dptr,#0x0001
      0000F8 12 00 A8         [24]  540 	lcall	_delay
                                    541 ;	.\stcboot.c:57: I2C_stop();
                                    542 ;	.\stcboot.c:58: }
      0000FB 02 00 CE         [24]  543 	ljmp	_I2C_stop
                                    544 ;------------------------------------------------------------
                                    545 ;Allocation info for local variables in function 'main'
                                    546 ;------------------------------------------------------------
                                    547 ;	.\stcboot.c:59: void main(void) {
                                    548 ;	-----------------------------------------
                                    549 ;	 function main
                                    550 ;	-----------------------------------------
      0000FE                        551 _main:
                                    552 ;	.\stcboot.c:60: I2C_init();
      0000FE 12 00 BA         [24]  553 	lcall	_I2C_init
                                    554 ;	.\stcboot.c:61: I2C_Write();
                                    555 ;	.\stcboot.c:69: }
      000101 02 00 E4         [24]  556 	ljmp	_I2C_Write
                                    557 	.area CSEG    (CODE)
                                    558 	.area CONST   (CODE)
                                    559 	.area XINIT   (CODE)
                                    560 	.area CABS    (ABS,CODE)
