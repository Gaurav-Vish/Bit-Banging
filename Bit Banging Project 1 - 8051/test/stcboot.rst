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
                                     11 	.globl _period
                                     12 	.globl _main
                                     13 	.globl _CY
                                     14 	.globl _AC
                                     15 	.globl _F0
                                     16 	.globl _RS1
                                     17 	.globl _RS0
                                     18 	.globl _OV
                                     19 	.globl _F1
                                     20 	.globl _P
                                     21 	.globl _PS
                                     22 	.globl _PT1
                                     23 	.globl _PX1
                                     24 	.globl _PT0
                                     25 	.globl _PX0
                                     26 	.globl _RD
                                     27 	.globl _WR
                                     28 	.globl _T1
                                     29 	.globl _T0
                                     30 	.globl _INT1
                                     31 	.globl _INT0
                                     32 	.globl _TXD
                                     33 	.globl _RXD
                                     34 	.globl _P3_7
                                     35 	.globl _P3_6
                                     36 	.globl _P3_5
                                     37 	.globl _P3_4
                                     38 	.globl _P3_3
                                     39 	.globl _P3_2
                                     40 	.globl _P3_1
                                     41 	.globl _P3_0
                                     42 	.globl _EA
                                     43 	.globl _ES
                                     44 	.globl _ET1
                                     45 	.globl _EX1
                                     46 	.globl _ET0
                                     47 	.globl _EX0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _SM0
                                     57 	.globl _SM1
                                     58 	.globl _SM2
                                     59 	.globl _REN
                                     60 	.globl _TB8
                                     61 	.globl _RB8
                                     62 	.globl _TI
                                     63 	.globl _RI
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _TF1
                                     73 	.globl _TR1
                                     74 	.globl _TF0
                                     75 	.globl _TR0
                                     76 	.globl _IE1
                                     77 	.globl _IT1
                                     78 	.globl _IE0
                                     79 	.globl _IT0
                                     80 	.globl _P0_7
                                     81 	.globl _P0_6
                                     82 	.globl _P0_5
                                     83 	.globl _P0_4
                                     84 	.globl _P0_3
                                     85 	.globl _P0_2
                                     86 	.globl _P0_1
                                     87 	.globl _P0_0
                                     88 	.globl _B
                                     89 	.globl _ACC
                                     90 	.globl _PSW
                                     91 	.globl _IP
                                     92 	.globl _P3
                                     93 	.globl _IE
                                     94 	.globl _P2
                                     95 	.globl _SBUF
                                     96 	.globl _SCON
                                     97 	.globl _P1
                                     98 	.globl _TH1
                                     99 	.globl _TH0
                                    100 	.globl _TL1
                                    101 	.globl _TL0
                                    102 	.globl _TMOD
                                    103 	.globl _TCON
                                    104 	.globl _PCON
                                    105 	.globl _DPH
                                    106 	.globl _DPL
                                    107 	.globl _SP
                                    108 	.globl _P0
                                    109 	.globl _seg_table
                                    110 	.globl _buttonIndex
                                    111 	.globl _currentmillis
                                    112 	.globl _startmillis
                                    113 	.globl _switchCount
                                    114 	.globl _number
                                    115 	.globl _delay
                                    116 	.globl _binary_count
                                    117 	.globl _cylon
                                    118 	.globl _dual_cylon
                                    119 	.globl _display_number
                                    120 	.globl _number_clicker
                                    121 ;--------------------------------------------------------
                                    122 ; special function registers
                                    123 ;--------------------------------------------------------
                                    124 	.area RSEG    (ABS,DATA)
      000000                        125 	.org 0x0000
                           000080   126 _P0	=	0x0080
                           000081   127 _SP	=	0x0081
                           000082   128 _DPL	=	0x0082
                           000083   129 _DPH	=	0x0083
                           000087   130 _PCON	=	0x0087
                           000088   131 _TCON	=	0x0088
                           000089   132 _TMOD	=	0x0089
                           00008A   133 _TL0	=	0x008a
                           00008B   134 _TL1	=	0x008b
                           00008C   135 _TH0	=	0x008c
                           00008D   136 _TH1	=	0x008d
                           000090   137 _P1	=	0x0090
                           000098   138 _SCON	=	0x0098
                           000099   139 _SBUF	=	0x0099
                           0000A0   140 _P2	=	0x00a0
                           0000A8   141 _IE	=	0x00a8
                           0000B0   142 _P3	=	0x00b0
                           0000B8   143 _IP	=	0x00b8
                           0000D0   144 _PSW	=	0x00d0
                           0000E0   145 _ACC	=	0x00e0
                           0000F0   146 _B	=	0x00f0
                                    147 ;--------------------------------------------------------
                                    148 ; special function bits
                                    149 ;--------------------------------------------------------
                                    150 	.area RSEG    (ABS,DATA)
      000000                        151 	.org 0x0000
                           000080   152 _P0_0	=	0x0080
                           000081   153 _P0_1	=	0x0081
                           000082   154 _P0_2	=	0x0082
                           000083   155 _P0_3	=	0x0083
                           000084   156 _P0_4	=	0x0084
                           000085   157 _P0_5	=	0x0085
                           000086   158 _P0_6	=	0x0086
                           000087   159 _P0_7	=	0x0087
                           000088   160 _IT0	=	0x0088
                           000089   161 _IE0	=	0x0089
                           00008A   162 _IT1	=	0x008a
                           00008B   163 _IE1	=	0x008b
                           00008C   164 _TR0	=	0x008c
                           00008D   165 _TF0	=	0x008d
                           00008E   166 _TR1	=	0x008e
                           00008F   167 _TF1	=	0x008f
                           000090   168 _P1_0	=	0x0090
                           000091   169 _P1_1	=	0x0091
                           000092   170 _P1_2	=	0x0092
                           000093   171 _P1_3	=	0x0093
                           000094   172 _P1_4	=	0x0094
                           000095   173 _P1_5	=	0x0095
                           000096   174 _P1_6	=	0x0096
                           000097   175 _P1_7	=	0x0097
                           000098   176 _RI	=	0x0098
                           000099   177 _TI	=	0x0099
                           00009A   178 _RB8	=	0x009a
                           00009B   179 _TB8	=	0x009b
                           00009C   180 _REN	=	0x009c
                           00009D   181 _SM2	=	0x009d
                           00009E   182 _SM1	=	0x009e
                           00009F   183 _SM0	=	0x009f
                           0000A0   184 _P2_0	=	0x00a0
                           0000A1   185 _P2_1	=	0x00a1
                           0000A2   186 _P2_2	=	0x00a2
                           0000A3   187 _P2_3	=	0x00a3
                           0000A4   188 _P2_4	=	0x00a4
                           0000A5   189 _P2_5	=	0x00a5
                           0000A6   190 _P2_6	=	0x00a6
                           0000A7   191 _P2_7	=	0x00a7
                           0000A8   192 _EX0	=	0x00a8
                           0000A9   193 _ET0	=	0x00a9
                           0000AA   194 _EX1	=	0x00aa
                           0000AB   195 _ET1	=	0x00ab
                           0000AC   196 _ES	=	0x00ac
                           0000AF   197 _EA	=	0x00af
                           0000B0   198 _P3_0	=	0x00b0
                           0000B1   199 _P3_1	=	0x00b1
                           0000B2   200 _P3_2	=	0x00b2
                           0000B3   201 _P3_3	=	0x00b3
                           0000B4   202 _P3_4	=	0x00b4
                           0000B5   203 _P3_5	=	0x00b5
                           0000B6   204 _P3_6	=	0x00b6
                           0000B7   205 _P3_7	=	0x00b7
                           0000B0   206 _RXD	=	0x00b0
                           0000B1   207 _TXD	=	0x00b1
                           0000B2   208 _INT0	=	0x00b2
                           0000B3   209 _INT1	=	0x00b3
                           0000B4   210 _T0	=	0x00b4
                           0000B5   211 _T1	=	0x00b5
                           0000B6   212 _WR	=	0x00b6
                           0000B7   213 _RD	=	0x00b7
                           0000B8   214 _PX0	=	0x00b8
                           0000B9   215 _PT0	=	0x00b9
                           0000BA   216 _PX1	=	0x00ba
                           0000BB   217 _PT1	=	0x00bb
                           0000BC   218 _PS	=	0x00bc
                           0000D0   219 _P	=	0x00d0
                           0000D1   220 _F1	=	0x00d1
                           0000D2   221 _OV	=	0x00d2
                           0000D3   222 _RS0	=	0x00d3
                           0000D4   223 _RS1	=	0x00d4
                           0000D5   224 _F0	=	0x00d5
                           0000D6   225 _AC	=	0x00d6
                           0000D7   226 _CY	=	0x00d7
                                    227 ;--------------------------------------------------------
                                    228 ; overlayable register banks
                                    229 ;--------------------------------------------------------
                                    230 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        231 	.ds 8
                                    232 ;--------------------------------------------------------
                                    233 ; internal ram data
                                    234 ;--------------------------------------------------------
                                    235 	.area DSEG    (DATA)
      000008                        236 _number::
      000008                        237 	.ds 2
      00000A                        238 _switchCount::
      00000A                        239 	.ds 2
      00000C                        240 _startmillis::
      00000C                        241 	.ds 4
      000010                        242 _currentmillis::
      000010                        243 	.ds 4
      000014                        244 _buttonIndex::
      000014                        245 	.ds 2
      000016                        246 _seg_table::
      000016                        247 	.ds 10
                                    248 ;--------------------------------------------------------
                                    249 ; overlayable items in internal ram
                                    250 ;--------------------------------------------------------
                                    251 	.area	OSEG    (OVR,DATA)
                                    252 ;--------------------------------------------------------
                                    253 ; Stack segment in internal ram
                                    254 ;--------------------------------------------------------
                                    255 	.area SSEG
      000022                        256 __start__stack:
      000022                        257 	.ds	1
                                    258 
                                    259 ;--------------------------------------------------------
                                    260 ; indirectly addressable internal ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area ISEG    (DATA)
                                    263 ;--------------------------------------------------------
                                    264 ; absolute internal ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area IABS    (ABS,DATA)
                                    267 	.area IABS    (ABS,DATA)
                                    268 ;--------------------------------------------------------
                                    269 ; bit data
                                    270 ;--------------------------------------------------------
                                    271 	.area BSEG    (BIT)
                                    272 ;--------------------------------------------------------
                                    273 ; paged external ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area PSEG    (PAG,XDATA)
                                    276 ;--------------------------------------------------------
                                    277 ; uninitialized external ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area XSEG    (XDATA)
                                    280 ;--------------------------------------------------------
                                    281 ; absolute external ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area XABS    (ABS,XDATA)
                                    284 ;--------------------------------------------------------
                                    285 ; initialized external ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area XISEG   (XDATA)
                                    288 	.area HOME    (CODE)
                                    289 	.area GSINIT0 (CODE)
                                    290 	.area GSINIT1 (CODE)
                                    291 	.area GSINIT2 (CODE)
                                    292 	.area GSINIT3 (CODE)
                                    293 	.area GSINIT4 (CODE)
                                    294 	.area GSINIT5 (CODE)
                                    295 	.area GSINIT  (CODE)
                                    296 	.area GSFINAL (CODE)
                                    297 	.area CSEG    (CODE)
                                    298 ;--------------------------------------------------------
                                    299 ; interrupt vector
                                    300 ;--------------------------------------------------------
                                    301 	.area HOME    (CODE)
      000000                        302 __interrupt_vect:
      000000 02 00 4C         [24]  303 	ljmp	__sdcc_gsinit_startup
                                    304 ; restartable atomic support routines
      000003                        305 	.ds	5
      000008                        306 sdcc_atomic_exchange_rollback_start::
      000008 00               [12]  307 	nop
      000009 00               [12]  308 	nop
      00000A                        309 sdcc_atomic_exchange_pdata_impl:
      00000A E2               [24]  310 	movx	a, @r0
      00000B FB               [12]  311 	mov	r3, a
      00000C EA               [12]  312 	mov	a, r2
      00000D F2               [24]  313 	movx	@r0, a
      00000E 80 2C            [24]  314 	sjmp	sdcc_atomic_exchange_exit
      000010 00               [12]  315 	nop
      000011 00               [12]  316 	nop
      000012                        317 sdcc_atomic_exchange_xdata_impl:
      000012 E0               [24]  318 	movx	a, @dptr
      000013 FB               [12]  319 	mov	r3, a
      000014 EA               [12]  320 	mov	a, r2
      000015 F0               [24]  321 	movx	@dptr, a
      000016 80 24            [24]  322 	sjmp	sdcc_atomic_exchange_exit
      000018                        323 sdcc_atomic_compare_exchange_idata_impl:
      000018 E6               [12]  324 	mov	a, @r0
      000019 B5 02 02         [24]  325 	cjne	a, ar2, .+#5
      00001C EB               [12]  326 	mov	a, r3
      00001D F6               [12]  327 	mov	@r0, a
      00001E 22               [24]  328 	ret
      00001F 00               [12]  329 	nop
      000020                        330 sdcc_atomic_compare_exchange_pdata_impl:
      000020 E2               [24]  331 	movx	a, @r0
      000021 B5 02 02         [24]  332 	cjne	a, ar2, .+#5
      000024 EB               [12]  333 	mov	a, r3
      000025 F2               [24]  334 	movx	@r0, a
      000026 22               [24]  335 	ret
      000027 00               [12]  336 	nop
      000028                        337 sdcc_atomic_compare_exchange_xdata_impl:
      000028 E0               [24]  338 	movx	a, @dptr
      000029 B5 02 02         [24]  339 	cjne	a, ar2, .+#5
      00002C EB               [12]  340 	mov	a, r3
      00002D F0               [24]  341 	movx	@dptr, a
      00002E 22               [24]  342 	ret
      00002F                        343 sdcc_atomic_exchange_rollback_end::
                                    344 
      00002F                        345 sdcc_atomic_exchange_gptr_impl::
      00002F 30 F6 E0         [24]  346 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      000032 A8 82            [24]  347 	mov	r0, dpl
      000034 20 F5 D3         [24]  348 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      000037                        349 sdcc_atomic_exchange_idata_impl:
      000037 EA               [12]  350 	mov	a, r2
      000038 C6               [12]  351 	xch	a, @r0
      000039 F5 82            [12]  352 	mov	dpl, a
      00003B 22               [24]  353 	ret
      00003C                        354 sdcc_atomic_exchange_exit:
      00003C 8B 82            [24]  355 	mov	dpl, r3
      00003E 22               [24]  356 	ret
      00003F                        357 sdcc_atomic_compare_exchange_gptr_impl::
      00003F 30 F6 E6         [24]  358 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      000042 A8 82            [24]  359 	mov	r0, dpl
      000044 20 F5 D9         [24]  360 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      000047 80 CF            [24]  361 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    362 ;--------------------------------------------------------
                                    363 ; global & static initialisations
                                    364 ;--------------------------------------------------------
                                    365 	.area HOME    (CODE)
                                    366 	.area GSINIT  (CODE)
                                    367 	.area GSFINAL (CODE)
                                    368 	.area GSINIT  (CODE)
                                    369 	.globl __sdcc_gsinit_startup
                                    370 	.globl __sdcc_program_startup
                                    371 	.globl __start__stack
                                    372 	.globl __mcs51_genXINIT
                                    373 	.globl __mcs51_genXRAMCLEAR
                                    374 	.globl __mcs51_genRAMCLEAR
                                    375 ;	.\stcboot.c:14: unsigned int number = 0;
      0000A5 E4               [12]  376 	clr	a
      0000A6 F5 08            [12]  377 	mov	_number,a
      0000A8 F5 09            [12]  378 	mov	(_number + 1),a
                                    379 ;	.\stcboot.c:15: unsigned int switchCount = 0;
      0000AA F5 0A            [12]  380 	mov	_switchCount,a
      0000AC F5 0B            [12]  381 	mov	(_switchCount + 1),a
                                    382 ;	.\stcboot.c:18: unsigned int buttonIndex = 0;
      0000AE F5 14            [12]  383 	mov	_buttonIndex,a
      0000B0 F5 15            [12]  384 	mov	(_buttonIndex + 1),a
                                    385 ;	.\stcboot.c:22: unsigned char seg_table[] = {
      0000B2 75 16 C0         [24]  386 	mov	_seg_table,#0xc0
      0000B5 75 17 F9         [24]  387 	mov	(_seg_table + 0x0001),#0xf9
      0000B8 75 18 A4         [24]  388 	mov	(_seg_table + 0x0002),#0xa4
      0000BB 75 19 B0         [24]  389 	mov	(_seg_table + 0x0003),#0xb0
      0000BE 75 1A 99         [24]  390 	mov	(_seg_table + 0x0004),#0x99
      0000C1 75 1B 92         [24]  391 	mov	(_seg_table + 0x0005),#0x92
      0000C4 75 1C 82         [24]  392 	mov	(_seg_table + 0x0006),#0x82
      0000C7 75 1D F8         [24]  393 	mov	(_seg_table + 0x0007),#0xf8
      0000CA 75 1E 80         [24]  394 	mov	(_seg_table + 0x0008),#0x80
      0000CD 75 1F 90         [24]  395 	mov	(_seg_table + 0x0009),#0x90
                                    396 	.area GSFINAL (CODE)
      0000D0 02 00 49         [24]  397 	ljmp	__sdcc_program_startup
                                    398 ;--------------------------------------------------------
                                    399 ; Home
                                    400 ;--------------------------------------------------------
                                    401 	.area HOME    (CODE)
                                    402 	.area HOME    (CODE)
      000049                        403 __sdcc_program_startup:
      000049 02 02 BB         [24]  404 	ljmp	_main
                                    405 ;	return from main will return to caller
                                    406 ;--------------------------------------------------------
                                    407 ; code
                                    408 ;--------------------------------------------------------
                                    409 	.area CSEG    (CODE)
                                    410 ;------------------------------------------------------------
                                    411 ;Allocation info for local variables in function 'delay'
                                    412 ;------------------------------------------------------------
                                    413 ;time          Allocated to registers 
                                    414 ;------------------------------------------------------------
                                    415 ;	.\stcboot.c:27: void delay(unsigned int time) {
                                    416 ;	-----------------------------------------
                                    417 ;	 function delay
                                    418 ;	-----------------------------------------
      0000D3                        419 _delay:
                           000007   420 	ar7 = 0x07
                           000006   421 	ar6 = 0x06
                           000005   422 	ar5 = 0x05
                           000004   423 	ar4 = 0x04
                           000003   424 	ar3 = 0x03
                           000002   425 	ar2 = 0x02
                           000001   426 	ar1 = 0x01
                           000000   427 	ar0 = 0x00
      0000D3 AE 82            [24]  428 	mov	r6, dpl
      0000D5 AF 83            [24]  429 	mov	r7, dph
                                    430 ;	.\stcboot.c:28: while (time--);
      0000D7                        431 00101$:
      0000D7 8E 04            [24]  432 	mov	ar4,r6
      0000D9 8F 05            [24]  433 	mov	ar5,r7
      0000DB 1E               [12]  434 	dec	r6
      0000DC BE FF 01         [24]  435 	cjne	r6,#0xff,00113$
      0000DF 1F               [12]  436 	dec	r7
      0000E0                        437 00113$:
      0000E0 EC               [12]  438 	mov	a,r4
      0000E1 4D               [12]  439 	orl	a,r5
      0000E2 70 F3            [24]  440 	jnz	00101$
                                    441 ;	.\stcboot.c:29: }
      0000E4 22               [24]  442 	ret
                                    443 ;------------------------------------------------------------
                                    444 ;Allocation info for local variables in function 'binary_count'
                                    445 ;------------------------------------------------------------
                                    446 ;count         Allocated to registers r6 r7 
                                    447 ;------------------------------------------------------------
                                    448 ;	.\stcboot.c:39: void binary_count(void) {
                                    449 ;	-----------------------------------------
                                    450 ;	 function binary_count
                                    451 ;	-----------------------------------------
      0000E5                        452 _binary_count:
                                    453 ;	.\stcboot.c:41: do{
      0000E5 7E 00            [12]  454 	mov	r6,#0x00
      0000E7 7F 00            [12]  455 	mov	r7,#0x00
      0000E9                        456 00103$:
                                    457 ;	.\stcboot.c:43: P1 = ~count;  // Output inverted count to LEDs
      0000E9 8E 05            [24]  458 	mov	ar5,r6
      0000EB ED               [12]  459 	mov	a,r5
      0000EC F4               [12]  460 	cpl	a
      0000ED F5 90            [12]  461 	mov	_P1,a
                                    462 ;	.\stcboot.c:45: delay(2000);
      0000EF 90 07 D0         [24]  463 	mov	dptr,#0x07d0
      0000F2 C0 07            [24]  464 	push	ar7
      0000F4 C0 06            [24]  465 	push	ar6
      0000F6 12 00 D3         [24]  466 	lcall	_delay
      0000F9 D0 06            [24]  467 	pop	ar6
      0000FB D0 07            [24]  468 	pop	ar7
                                    469 ;	.\stcboot.c:46: count++;
      0000FD 0E               [12]  470 	inc	r6
      0000FE BE 00 01         [24]  471 	cjne	r6,#0x00,00120$
      000101 0F               [12]  472 	inc	r7
      000102                        473 00120$:
                                    474 ;	.\stcboot.c:47: if ((P3 & 0x20) == 0){
      000102 E5 B0            [12]  475 	mov	a,_P3
      000104 20 E5 06         [24]  476 	jb	acc.5,00104$
                                    477 ;	.\stcboot.c:48: delay(5000);
      000107 90 13 88         [24]  478 	mov	dptr,#0x1388
                                    479 ;	.\stcboot.c:49: break;
      00010A 02 00 D3         [24]  480 	ljmp	_delay
      00010D                        481 00104$:
                                    482 ;	.\stcboot.c:52: while (count < 256);
      00010D 74 FF            [12]  483 	mov	a,#0x100 - 0x01
      00010F 2F               [12]  484 	add	a,r7
      000110 50 D7            [24]  485 	jnc	00103$
                                    486 ;	.\stcboot.c:53: }
      000112 22               [24]  487 	ret
                                    488 ;------------------------------------------------------------
                                    489 ;Allocation info for local variables in function 'cylon'
                                    490 ;------------------------------------------------------------
                                    491 ;pos           Allocated to registers r7 
                                    492 ;direction     Allocated to registers r6 
                                    493 ;------------------------------------------------------------
                                    494 ;	.\stcboot.c:56: void cylon(void) {
                                    495 ;	-----------------------------------------
                                    496 ;	 function cylon
                                    497 ;	-----------------------------------------
      000113                        498 _cylon:
                                    499 ;	.\stcboot.c:57: unsigned char pos = 1;
      000113 7F 01            [12]  500 	mov	r7,#0x01
                                    501 ;	.\stcboot.c:58: unsigned char direction = 1; // 1 for forward, 0 for reverse
      000115 7E 01            [12]  502 	mov	r6,#0x01
                                    503 ;	.\stcboot.c:60: while (1) {
      000117                        504 00111$:
                                    505 ;	.\stcboot.c:61: if ((P3 & 0x20) == 0){
      000117 E5 B0            [12]  506 	mov	a,_P3
      000119 20 E5 06         [24]  507 	jb	acc.5,00102$
                                    508 ;	.\stcboot.c:62: delay(5000);
      00011C 90 13 88         [24]  509 	mov	dptr,#0x1388
                                    510 ;	.\stcboot.c:63: break;
      00011F 02 00 D3         [24]  511 	ljmp	_delay
      000122                        512 00102$:
                                    513 ;	.\stcboot.c:65: P1 = ~pos;  // Invert output to turn LEDs on
      000122 EF               [12]  514 	mov	a,r7
      000123 F4               [12]  515 	cpl	a
      000124 F5 90            [12]  516 	mov	_P1,a
                                    517 ;	.\stcboot.c:66: delay(5000);
      000126 90 13 88         [24]  518 	mov	dptr,#0x1388
      000129 C0 07            [24]  519 	push	ar7
      00012B C0 06            [24]  520 	push	ar6
      00012D 12 00 D3         [24]  521 	lcall	_delay
      000130 D0 06            [24]  522 	pop	ar6
      000132 D0 07            [24]  523 	pop	ar7
                                    524 ;	.\stcboot.c:68: if (direction) {
      000134 EE               [12]  525 	mov	a,r6
      000135 60 0A            [24]  526 	jz	00108$
                                    527 ;	.\stcboot.c:69: pos <<= 1;
      000137 EF               [12]  528 	mov	a,r7
      000138 2F               [12]  529 	add	a,r7
      000139 FF               [12]  530 	mov	r7,a
                                    531 ;	.\stcboot.c:70: if (pos == 0x80) direction = 0;
      00013A BF 80 DA         [24]  532 	cjne	r7,#0x80,00111$
      00013D 7E 00            [12]  533 	mov	r6,#0x00
      00013F 80 D6            [24]  534 	sjmp	00111$
      000141                        535 00108$:
                                    536 ;	.\stcboot.c:72: pos >>= 1;
      000141 EF               [12]  537 	mov	a,r7
      000142 C3               [12]  538 	clr	c
      000143 13               [12]  539 	rrc	a
      000144 FF               [12]  540 	mov	r7,a
                                    541 ;	.\stcboot.c:73: if (pos == 0x01) direction = 1;  // Reverse at the beginning
      000145 BF 01 CF         [24]  542 	cjne	r7,#0x01,00111$
      000148 7E 01            [12]  543 	mov	r6,#0x01
                                    544 ;	.\stcboot.c:78: }
      00014A 80 CB            [24]  545 	sjmp	00111$
                                    546 ;------------------------------------------------------------
                                    547 ;Allocation info for local variables in function 'dual_cylon'
                                    548 ;------------------------------------------------------------
                                    549 ;pos1          Allocated to registers r7 
                                    550 ;pos2          Allocated to registers r6 
                                    551 ;------------------------------------------------------------
                                    552 ;	.\stcboot.c:82: void dual_cylon(void) {
                                    553 ;	-----------------------------------------
                                    554 ;	 function dual_cylon
                                    555 ;	-----------------------------------------
      00014C                        556 _dual_cylon:
                                    557 ;	.\stcboot.c:83: unsigned char pos1 = 1, pos2 = 0x80;
      00014C 7F 01            [12]  558 	mov	r7,#0x01
      00014E 7E 80            [12]  559 	mov	r6,#0x80
                                    560 ;	.\stcboot.c:84: while (1) {
      000150                        561 00106$:
                                    562 ;	.\stcboot.c:85: if ((P3 & 0x20) == 0){
      000150 E5 B0            [12]  563 	mov	a,_P3
      000152 20 E5 09         [24]  564 	jb	acc.5,00102$
                                    565 ;	.\stcboot.c:86: P1=0xFF;
      000155 75 90 FF         [24]  566 	mov	_P1,#0xff
                                    567 ;	.\stcboot.c:87: delay(5000);
      000158 90 13 88         [24]  568 	mov	dptr,#0x1388
                                    569 ;	.\stcboot.c:88: break;
      00015B 02 00 D3         [24]  570 	ljmp	_delay
      00015E                        571 00102$:
                                    572 ;	.\stcboot.c:90: P1 = ~(pos1 | pos2);  // Invert output for correct LED logic
      00015E EE               [12]  573 	mov	a,r6
      00015F 4F               [12]  574 	orl	a,r7
      000160 F4               [12]  575 	cpl	a
      000161 F5 90            [12]  576 	mov	_P1,a
                                    577 ;	.\stcboot.c:91: delay(5000);
      000163 90 13 88         [24]  578 	mov	dptr,#0x1388
      000166 C0 07            [24]  579 	push	ar7
      000168 C0 06            [24]  580 	push	ar6
      00016A 12 00 D3         [24]  581 	lcall	_delay
      00016D D0 06            [24]  582 	pop	ar6
      00016F D0 07            [24]  583 	pop	ar7
                                    584 ;	.\stcboot.c:92: pos1 <<= 1;
      000171 EF               [12]  585 	mov	a,r7
      000172 2F               [12]  586 	add	a,r7
      000173 FF               [12]  587 	mov	r7,a
                                    588 ;	.\stcboot.c:93: pos2 >>= 1;
      000174 EE               [12]  589 	mov	a,r6
      000175 C3               [12]  590 	clr	c
      000176 13               [12]  591 	rrc	a
      000177 FE               [12]  592 	mov	r6,a
                                    593 ;	.\stcboot.c:94: if (pos1 == 0x80) {  // Reset condition
      000178 BF 80 D5         [24]  594 	cjne	r7,#0x80,00106$
                                    595 ;	.\stcboot.c:95: pos1 = 1;
      00017B 7F 01            [12]  596 	mov	r7,#0x01
                                    597 ;	.\stcboot.c:96: pos2 = 0x80;
      00017D 7E 80            [12]  598 	mov	r6,#0x80
                                    599 ;	.\stcboot.c:99: }
      00017F 80 CF            [24]  600 	sjmp	00106$
                                    601 ;------------------------------------------------------------
                                    602 ;Allocation info for local variables in function 'display_number'
                                    603 ;------------------------------------------------------------
                                    604 ;temp          Allocated to registers r6 r7 
                                    605 ;ones          Allocated to registers r4 
                                    606 ;tens          Allocated to registers r3 
                                    607 ;hundreds      Allocated to registers r2 
                                    608 ;thousands     Allocated to registers r6 
                                    609 ;------------------------------------------------------------
                                    610 ;	.\stcboot.c:102: void display_number(void) {
                                    611 ;	-----------------------------------------
                                    612 ;	 function display_number
                                    613 ;	-----------------------------------------
      000181                        614 _display_number:
                                    615 ;	.\stcboot.c:103: unsigned int temp = number;
      000181 AE 08            [24]  616 	mov	r6,_number
      000183 AF 09            [24]  617 	mov	r7,(_number + 1)
                                    618 ;	.\stcboot.c:105: unsigned char ones = temp % 10;
      000185 75 20 0A         [24]  619 	mov	__moduint_PARM_2,#0x0a
      000188 75 21 00         [24]  620 	mov	(__moduint_PARM_2 + 1),#0x00
      00018B 8E 82            [24]  621 	mov	dpl, r6
      00018D 8F 83            [24]  622 	mov	dph, r7
      00018F C0 07            [24]  623 	push	ar7
      000191 C0 06            [24]  624 	push	ar6
      000193 12 03 39         [24]  625 	lcall	__moduint
      000196 AC 82            [24]  626 	mov	r4, dpl
      000198 D0 06            [24]  627 	pop	ar6
      00019A D0 07            [24]  628 	pop	ar7
                                    629 ;	.\stcboot.c:106: temp /= 10;
      00019C 75 20 0A         [24]  630 	mov	__divuint_PARM_2,#0x0a
      00019F 75 21 00         [24]  631 	mov	(__divuint_PARM_2 + 1),#0x00
                                    632 ;	.\stcboot.c:107: unsigned char tens = temp % 10;
      0001A2 8E 82            [24]  633 	mov	dpl, r6
      0001A4 8F 83            [24]  634 	mov	dph, r7
      0001A6 C0 04            [24]  635 	push	ar4
      0001A8 12 03 10         [24]  636 	lcall	__divuint
      0001AB AE 82            [24]  637 	mov	r6, dpl
      0001AD AF 83            [24]  638 	mov	r7, dph
      0001AF D0 04            [24]  639 	pop	ar4
      0001B1 75 20 0A         [24]  640 	mov	__moduint_PARM_2,#0x0a
      0001B4 75 21 00         [24]  641 	mov	(__moduint_PARM_2 + 1),#0x00
      0001B7 8E 82            [24]  642 	mov	dpl, r6
      0001B9 8F 83            [24]  643 	mov	dph, r7
      0001BB C0 07            [24]  644 	push	ar7
      0001BD C0 06            [24]  645 	push	ar6
      0001BF C0 04            [24]  646 	push	ar4
      0001C1 12 03 39         [24]  647 	lcall	__moduint
      0001C4 AB 82            [24]  648 	mov	r3, dpl
      0001C6 D0 04            [24]  649 	pop	ar4
      0001C8 D0 06            [24]  650 	pop	ar6
      0001CA D0 07            [24]  651 	pop	ar7
                                    652 ;	.\stcboot.c:108: temp /= 10;
      0001CC 75 20 0A         [24]  653 	mov	__divuint_PARM_2,#0x0a
      0001CF 75 21 00         [24]  654 	mov	(__divuint_PARM_2 + 1),#0x00
                                    655 ;	.\stcboot.c:109: unsigned char hundreds = temp % 10;
      0001D2 8E 82            [24]  656 	mov	dpl, r6
      0001D4 8F 83            [24]  657 	mov	dph, r7
      0001D6 C0 04            [24]  658 	push	ar4
      0001D8 C0 03            [24]  659 	push	ar3
      0001DA 12 03 10         [24]  660 	lcall	__divuint
      0001DD AE 82            [24]  661 	mov	r6, dpl
      0001DF AF 83            [24]  662 	mov	r7, dph
      0001E1 D0 03            [24]  663 	pop	ar3
      0001E3 D0 04            [24]  664 	pop	ar4
      0001E5 75 20 0A         [24]  665 	mov	__moduint_PARM_2,#0x0a
      0001E8 75 21 00         [24]  666 	mov	(__moduint_PARM_2 + 1),#0x00
      0001EB 8E 82            [24]  667 	mov	dpl, r6
      0001ED 8F 83            [24]  668 	mov	dph, r7
      0001EF C0 07            [24]  669 	push	ar7
      0001F1 C0 06            [24]  670 	push	ar6
      0001F3 C0 04            [24]  671 	push	ar4
      0001F5 C0 03            [24]  672 	push	ar3
      0001F7 12 03 39         [24]  673 	lcall	__moduint
      0001FA AA 82            [24]  674 	mov	r2, dpl
      0001FC D0 03            [24]  675 	pop	ar3
      0001FE D0 04            [24]  676 	pop	ar4
      000200 D0 06            [24]  677 	pop	ar6
      000202 D0 07            [24]  678 	pop	ar7
                                    679 ;	.\stcboot.c:110: temp /= 10;
      000204 75 20 0A         [24]  680 	mov	__divuint_PARM_2,#0x0a
      000207 75 21 00         [24]  681 	mov	(__divuint_PARM_2 + 1),#0x00
                                    682 ;	.\stcboot.c:111: unsigned char thousands = temp % 10;
      00020A 8E 82            [24]  683 	mov	dpl, r6
      00020C 8F 83            [24]  684 	mov	dph, r7
      00020E C0 04            [24]  685 	push	ar4
      000210 C0 03            [24]  686 	push	ar3
      000212 C0 02            [24]  687 	push	ar2
      000214 12 03 10         [24]  688 	lcall	__divuint
      000217 AE 82            [24]  689 	mov	r6, dpl
      000219 75 F0 0A         [24]  690 	mov	b,#0x0a
      00021C EE               [12]  691 	mov	a,r6
      00021D 84               [48]  692 	div	ab
                                    693 ;	.\stcboot.c:113: P0 = seg_table[thousands];	P2_0 = 0;	delay(500);	P2_0 = 1;
      00021E E5 F0            [12]  694 	mov	a,b
      000220 24 16            [12]  695 	add	a, #_seg_table
      000222 F9               [12]  696 	mov	r1,a
      000223 87 80            [24]  697 	mov	_P0,@r1
                                    698 ;	assignBit
      000225 C2 A0            [12]  699 	clr	_P2_0
      000227 90 01 F4         [24]  700 	mov	dptr,#0x01f4
      00022A 12 00 D3         [24]  701 	lcall	_delay
      00022D D0 02            [24]  702 	pop	ar2
                                    703 ;	assignBit
      00022F D2 A0            [12]  704 	setb	_P2_0
                                    705 ;	.\stcboot.c:114: P0 = seg_table[hundreds];	P2_1 = 0;	delay(500);	P2_1 = 1;
      000231 EA               [12]  706 	mov	a,r2
      000232 24 16            [12]  707 	add	a, #_seg_table
      000234 F9               [12]  708 	mov	r1,a
      000235 87 80            [24]  709 	mov	_P0,@r1
                                    710 ;	assignBit
      000237 C2 A1            [12]  711 	clr	_P2_1
      000239 90 01 F4         [24]  712 	mov	dptr,#0x01f4
      00023C 12 00 D3         [24]  713 	lcall	_delay
      00023F D0 03            [24]  714 	pop	ar3
                                    715 ;	assignBit
      000241 D2 A1            [12]  716 	setb	_P2_1
                                    717 ;	.\stcboot.c:115: P0 = seg_table[tens];		P2_2 = 0;	delay(500);	P2_2 = 1;
      000243 EB               [12]  718 	mov	a,r3
      000244 24 16            [12]  719 	add	a, #_seg_table
      000246 F9               [12]  720 	mov	r1,a
      000247 87 80            [24]  721 	mov	_P0,@r1
                                    722 ;	assignBit
      000249 C2 A2            [12]  723 	clr	_P2_2
      00024B 90 01 F4         [24]  724 	mov	dptr,#0x01f4
      00024E 12 00 D3         [24]  725 	lcall	_delay
      000251 D0 04            [24]  726 	pop	ar4
                                    727 ;	assignBit
      000253 D2 A2            [12]  728 	setb	_P2_2
                                    729 ;	.\stcboot.c:116: P0 = seg_table[ones];		P2_3 = 0;	delay(500);	P2_3 = 1;
      000255 EC               [12]  730 	mov	a,r4
      000256 24 16            [12]  731 	add	a, #_seg_table
      000258 F9               [12]  732 	mov	r1,a
      000259 87 80            [24]  733 	mov	_P0,@r1
                                    734 ;	assignBit
      00025B C2 A3            [12]  735 	clr	_P2_3
      00025D 90 01 F4         [24]  736 	mov	dptr,#0x01f4
      000260 12 00 D3         [24]  737 	lcall	_delay
                                    738 ;	assignBit
      000263 D2 A3            [12]  739 	setb	_P2_3
                                    740 ;	.\stcboot.c:117: }
      000265 22               [24]  741 	ret
                                    742 ;------------------------------------------------------------
                                    743 ;Allocation info for local variables in function 'number_clicker'
                                    744 ;------------------------------------------------------------
                                    745 ;	.\stcboot.c:120: void number_clicker(void) {
                                    746 ;	-----------------------------------------
                                    747 ;	 function number_clicker
                                    748 ;	-----------------------------------------
      000266                        749 _number_clicker:
                                    750 ;	.\stcboot.c:121: while (1) {
      000266                        751 00113$:
                                    752 ;	.\stcboot.c:122: if ((P3 & 0x20) == 0){
      000266 E5 B0            [12]  753 	mov	a,_P3
      000268 20 E5 06         [24]  754 	jb	acc.5,00102$
                                    755 ;	.\stcboot.c:123: delay(5000);
      00026B 90 13 88         [24]  756 	mov	dptr,#0x1388
                                    757 ;	.\stcboot.c:124: break;
      00026E 02 00 D3         [24]  758 	ljmp	_delay
      000271                        759 00102$:
                                    760 ;	.\stcboot.c:126: display_number();
      000271 12 01 81         [24]  761 	lcall	_display_number
                                    762 ;	.\stcboot.c:127: if ((P3 & 0x08) == 0) { // Button Pressed
      000274 E5 B0            [12]  763 	mov	a,_P3
      000276 20 E3 1E         [24]  764 	jb	acc.3,00106$
                                    765 ;	.\stcboot.c:128: delay(5000);
      000279 90 13 88         [24]  766 	mov	dptr,#0x1388
      00027C 12 00 D3         [24]  767 	lcall	_delay
                                    768 ;	.\stcboot.c:129: number++;
      00027F 05 08            [12]  769 	inc	_number
      000281 E4               [12]  770 	clr	a
      000282 B5 08 02         [24]  771 	cjne	a,_number,00155$
      000285 05 09            [12]  772 	inc	(_number + 1)
      000287                        773 00155$:
                                    774 ;	.\stcboot.c:130: if (number > 9999) number = 0; // Roll over to 0
      000287 C3               [12]  775 	clr	c
      000288 74 0F            [12]  776 	mov	a,#0x0f
      00028A 95 08            [12]  777 	subb	a,_number
      00028C 74 27            [12]  778 	mov	a,#0x27
      00028E 95 09            [12]  779 	subb	a,(_number + 1)
      000290 50 05            [24]  780 	jnc	00106$
      000292 E4               [12]  781 	clr	a
      000293 F5 08            [12]  782 	mov	_number,a
      000295 F5 09            [12]  783 	mov	(_number + 1),a
      000297                        784 00106$:
                                    785 ;	.\stcboot.c:136: if ((P3 & 0x04) == 0) { // Button Pressed
      000297 E5 B0            [12]  786 	mov	a,_P3
      000299 20 E2 CA         [24]  787 	jb	acc.2,00113$
                                    788 ;	.\stcboot.c:137: delay(5000);
      00029C 90 13 88         [24]  789 	mov	dptr,#0x1388
      00029F 12 00 D3         [24]  790 	lcall	_delay
                                    791 ;	.\stcboot.c:138: if (number == 0) number = 9999; // Roll over to 9999
      0002A2 E5 08            [12]  792 	mov	a,_number
      0002A4 45 09            [12]  793 	orl	a,(_number + 1)
      0002A6 70 08            [24]  794 	jnz	00108$
      0002A8 75 08 0F         [24]  795 	mov	_number,#0x0f
      0002AB 75 09 27         [24]  796 	mov	(_number + 1),#0x27
      0002AE 80 B6            [24]  797 	sjmp	00113$
      0002B0                        798 00108$:
                                    799 ;	.\stcboot.c:139: else number--;
      0002B0 15 08            [12]  800 	dec	_number
      0002B2 74 FF            [12]  801 	mov	a,#0xff
      0002B4 B5 08 02         [24]  802 	cjne	a,_number,00159$
      0002B7 15 09            [12]  803 	dec	(_number + 1)
      0002B9                        804 00159$:
                                    805 ;	.\stcboot.c:142: }
      0002B9 80 AB            [24]  806 	sjmp	00113$
                                    807 ;------------------------------------------------------------
                                    808 ;Allocation info for local variables in function 'main'
                                    809 ;------------------------------------------------------------
                                    810 ;	.\stcboot.c:144: void main(void) {
                                    811 ;	-----------------------------------------
                                    812 ;	 function main
                                    813 ;	-----------------------------------------
      0002BB                        814 _main:
                                    815 ;	.\stcboot.c:145: while (1) {
      0002BB                        816 00112$:
                                    817 ;	.\stcboot.c:146: if ((P3 & 0x20) == 0) {
      0002BB E5 B0            [12]  818 	mov	a,_P3
      0002BD FF               [12]  819 	mov	r7,a
      0002BE 20 E5 18         [24]  820 	jb	acc.5,00104$
                                    821 ;	.\stcboot.c:147: buttonIndex++;
      0002C1 05 14            [12]  822 	inc	_buttonIndex
      0002C3 E4               [12]  823 	clr	a
      0002C4 B5 14 02         [24]  824 	cjne	a,_buttonIndex,00141$
      0002C7 05 15            [12]  825 	inc	(_buttonIndex + 1)
      0002C9                        826 00141$:
                                    827 ;	.\stcboot.c:148: if (buttonIndex > 5)
      0002C9 C3               [12]  828 	clr	c
      0002CA 74 05            [12]  829 	mov	a,#0x05
      0002CC 95 14            [12]  830 	subb	a,_buttonIndex
      0002CE E4               [12]  831 	clr	a
      0002CF 95 15            [12]  832 	subb	a,(_buttonIndex + 1)
      0002D1 50 06            [24]  833 	jnc	00104$
                                    834 ;	.\stcboot.c:149: buttonIndex = 1;
      0002D3 75 14 01         [24]  835 	mov	_buttonIndex,#0x01
      0002D6 75 15 00         [24]  836 	mov	(_buttonIndex + 1),#0x00
      0002D9                        837 00104$:
                                    838 ;	.\stcboot.c:151: switch(buttonIndex) {
      0002D9 C3               [12]  839 	clr	c
      0002DA 74 04            [12]  840 	mov	a,#0x04
      0002DC 95 14            [12]  841 	subb	a,_buttonIndex
      0002DE E4               [12]  842 	clr	a
      0002DF 95 15            [12]  843 	subb	a,(_buttonIndex + 1)
      0002E1 40 D8            [24]  844 	jc	00112$
      0002E3 E5 14            [12]  845 	mov	a,_buttonIndex
      0002E5 75 F0 03         [24]  846 	mov	b,#0x03
      0002E8 A4               [48]  847 	mul	ab
      0002E9 90 02 ED         [24]  848 	mov	dptr,#00144$
      0002EC 73               [24]  849 	jmp	@a+dptr
      0002ED                        850 00144$:
      0002ED 02 02 BB         [24]  851 	ljmp	00112$
      0002F0 02 02 FC         [24]  852 	ljmp	00105$
      0002F3 02 03 01         [24]  853 	ljmp	00106$
      0002F6 02 03 06         [24]  854 	ljmp	00107$
      0002F9 02 03 0B         [24]  855 	ljmp	00108$
                                    856 ;	.\stcboot.c:152: case 1:
      0002FC                        857 00105$:
                                    858 ;	.\stcboot.c:153: binary_count();
      0002FC 12 00 E5         [24]  859 	lcall	_binary_count
                                    860 ;	.\stcboot.c:154: break;
                                    861 ;	.\stcboot.c:155: case 2:
      0002FF 80 BA            [24]  862 	sjmp	00112$
      000301                        863 00106$:
                                    864 ;	.\stcboot.c:156: cylon();
      000301 12 01 13         [24]  865 	lcall	_cylon
                                    866 ;	.\stcboot.c:157: break;
                                    867 ;	.\stcboot.c:158: case 3:
      000304 80 B5            [24]  868 	sjmp	00112$
      000306                        869 00107$:
                                    870 ;	.\stcboot.c:159: dual_cylon();
      000306 12 01 4C         [24]  871 	lcall	_dual_cylon
                                    872 ;	.\stcboot.c:160: break;
                                    873 ;	.\stcboot.c:161: case 4:
      000309 80 B0            [24]  874 	sjmp	00112$
      00030B                        875 00108$:
                                    876 ;	.\stcboot.c:162: number_clicker();
      00030B 12 02 66         [24]  877 	lcall	_number_clicker
                                    878 ;	.\stcboot.c:163: break;
                                    879 ;	.\stcboot.c:166: }
                                    880 ;	.\stcboot.c:168: }
      00030E 80 AB            [24]  881 	sjmp	00112$
                                    882 	.area CSEG    (CODE)
                                    883 	.area CONST   (CODE)
                                    884 	.area CONST   (CODE)
      00038A                        885 _period:
      00038A E8 03 00 00            886 	.byte #0xe8, #0x03, #0x00, #0x00	; 1000
                                    887 	.area CSEG    (CODE)
                                    888 	.area XINIT   (CODE)
                                    889 	.area CABS    (ABS,CODE)
