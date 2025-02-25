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
                                    110 	.globl _currentmillis
                                    111 	.globl _startmillis
                                    112 	.globl _switchCount
                                    113 	.globl _number
                                    114 	.globl _delay
                                    115 	.globl _binary_count
                                    116 	.globl _cylon
                                    117 	.globl _dual_cylon
                                    118 	.globl _display_number
                                    119 	.globl _number_clicker
                                    120 ;--------------------------------------------------------
                                    121 ; special function registers
                                    122 ;--------------------------------------------------------
                                    123 	.area RSEG    (ABS,DATA)
      000000                        124 	.org 0x0000
                           000080   125 _P0	=	0x0080
                           000081   126 _SP	=	0x0081
                           000082   127 _DPL	=	0x0082
                           000083   128 _DPH	=	0x0083
                           000087   129 _PCON	=	0x0087
                           000088   130 _TCON	=	0x0088
                           000089   131 _TMOD	=	0x0089
                           00008A   132 _TL0	=	0x008a
                           00008B   133 _TL1	=	0x008b
                           00008C   134 _TH0	=	0x008c
                           00008D   135 _TH1	=	0x008d
                           000090   136 _P1	=	0x0090
                           000098   137 _SCON	=	0x0098
                           000099   138 _SBUF	=	0x0099
                           0000A0   139 _P2	=	0x00a0
                           0000A8   140 _IE	=	0x00a8
                           0000B0   141 _P3	=	0x00b0
                           0000B8   142 _IP	=	0x00b8
                           0000D0   143 _PSW	=	0x00d0
                           0000E0   144 _ACC	=	0x00e0
                           0000F0   145 _B	=	0x00f0
                                    146 ;--------------------------------------------------------
                                    147 ; special function bits
                                    148 ;--------------------------------------------------------
                                    149 	.area RSEG    (ABS,DATA)
      000000                        150 	.org 0x0000
                           000080   151 _P0_0	=	0x0080
                           000081   152 _P0_1	=	0x0081
                           000082   153 _P0_2	=	0x0082
                           000083   154 _P0_3	=	0x0083
                           000084   155 _P0_4	=	0x0084
                           000085   156 _P0_5	=	0x0085
                           000086   157 _P0_6	=	0x0086
                           000087   158 _P0_7	=	0x0087
                           000088   159 _IT0	=	0x0088
                           000089   160 _IE0	=	0x0089
                           00008A   161 _IT1	=	0x008a
                           00008B   162 _IE1	=	0x008b
                           00008C   163 _TR0	=	0x008c
                           00008D   164 _TF0	=	0x008d
                           00008E   165 _TR1	=	0x008e
                           00008F   166 _TF1	=	0x008f
                           000090   167 _P1_0	=	0x0090
                           000091   168 _P1_1	=	0x0091
                           000092   169 _P1_2	=	0x0092
                           000093   170 _P1_3	=	0x0093
                           000094   171 _P1_4	=	0x0094
                           000095   172 _P1_5	=	0x0095
                           000096   173 _P1_6	=	0x0096
                           000097   174 _P1_7	=	0x0097
                           000098   175 _RI	=	0x0098
                           000099   176 _TI	=	0x0099
                           00009A   177 _RB8	=	0x009a
                           00009B   178 _TB8	=	0x009b
                           00009C   179 _REN	=	0x009c
                           00009D   180 _SM2	=	0x009d
                           00009E   181 _SM1	=	0x009e
                           00009F   182 _SM0	=	0x009f
                           0000A0   183 _P2_0	=	0x00a0
                           0000A1   184 _P2_1	=	0x00a1
                           0000A2   185 _P2_2	=	0x00a2
                           0000A3   186 _P2_3	=	0x00a3
                           0000A4   187 _P2_4	=	0x00a4
                           0000A5   188 _P2_5	=	0x00a5
                           0000A6   189 _P2_6	=	0x00a6
                           0000A7   190 _P2_7	=	0x00a7
                           0000A8   191 _EX0	=	0x00a8
                           0000A9   192 _ET0	=	0x00a9
                           0000AA   193 _EX1	=	0x00aa
                           0000AB   194 _ET1	=	0x00ab
                           0000AC   195 _ES	=	0x00ac
                           0000AF   196 _EA	=	0x00af
                           0000B0   197 _P3_0	=	0x00b0
                           0000B1   198 _P3_1	=	0x00b1
                           0000B2   199 _P3_2	=	0x00b2
                           0000B3   200 _P3_3	=	0x00b3
                           0000B4   201 _P3_4	=	0x00b4
                           0000B5   202 _P3_5	=	0x00b5
                           0000B6   203 _P3_6	=	0x00b6
                           0000B7   204 _P3_7	=	0x00b7
                           0000B0   205 _RXD	=	0x00b0
                           0000B1   206 _TXD	=	0x00b1
                           0000B2   207 _INT0	=	0x00b2
                           0000B3   208 _INT1	=	0x00b3
                           0000B4   209 _T0	=	0x00b4
                           0000B5   210 _T1	=	0x00b5
                           0000B6   211 _WR	=	0x00b6
                           0000B7   212 _RD	=	0x00b7
                           0000B8   213 _PX0	=	0x00b8
                           0000B9   214 _PT0	=	0x00b9
                           0000BA   215 _PX1	=	0x00ba
                           0000BB   216 _PT1	=	0x00bb
                           0000BC   217 _PS	=	0x00bc
                           0000D0   218 _P	=	0x00d0
                           0000D1   219 _F1	=	0x00d1
                           0000D2   220 _OV	=	0x00d2
                           0000D3   221 _RS0	=	0x00d3
                           0000D4   222 _RS1	=	0x00d4
                           0000D5   223 _F0	=	0x00d5
                           0000D6   224 _AC	=	0x00d6
                           0000D7   225 _CY	=	0x00d7
                                    226 ;--------------------------------------------------------
                                    227 ; overlayable register banks
                                    228 ;--------------------------------------------------------
                                    229 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        230 	.ds 8
                                    231 ;--------------------------------------------------------
                                    232 ; internal ram data
                                    233 ;--------------------------------------------------------
                                    234 	.area DSEG    (DATA)
      000008                        235 _number::
      000008                        236 	.ds 2
      00000A                        237 _switchCount::
      00000A                        238 	.ds 2
      00000C                        239 _startmillis::
      00000C                        240 	.ds 4
      000010                        241 _currentmillis::
      000010                        242 	.ds 4
      000014                        243 _seg_table::
      000014                        244 	.ds 10
                                    245 ;--------------------------------------------------------
                                    246 ; overlayable items in internal ram
                                    247 ;--------------------------------------------------------
                                    248 	.area	OSEG    (OVR,DATA)
                                    249 ;--------------------------------------------------------
                                    250 ; Stack segment in internal ram
                                    251 ;--------------------------------------------------------
                                    252 	.area SSEG
      000020                        253 __start__stack:
      000020                        254 	.ds	1
                                    255 
                                    256 ;--------------------------------------------------------
                                    257 ; indirectly addressable internal ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area ISEG    (DATA)
                                    260 ;--------------------------------------------------------
                                    261 ; absolute internal ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area IABS    (ABS,DATA)
                                    264 	.area IABS    (ABS,DATA)
                                    265 ;--------------------------------------------------------
                                    266 ; bit data
                                    267 ;--------------------------------------------------------
                                    268 	.area BSEG    (BIT)
                                    269 ;--------------------------------------------------------
                                    270 ; paged external ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area PSEG    (PAG,XDATA)
                                    273 ;--------------------------------------------------------
                                    274 ; uninitialized external ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area XSEG    (XDATA)
                                    277 ;--------------------------------------------------------
                                    278 ; absolute external ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area XABS    (ABS,XDATA)
                                    281 ;--------------------------------------------------------
                                    282 ; initialized external ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area XISEG   (XDATA)
                                    285 	.area HOME    (CODE)
                                    286 	.area GSINIT0 (CODE)
                                    287 	.area GSINIT1 (CODE)
                                    288 	.area GSINIT2 (CODE)
                                    289 	.area GSINIT3 (CODE)
                                    290 	.area GSINIT4 (CODE)
                                    291 	.area GSINIT5 (CODE)
                                    292 	.area GSINIT  (CODE)
                                    293 	.area GSFINAL (CODE)
                                    294 	.area CSEG    (CODE)
                                    295 ;--------------------------------------------------------
                                    296 ; interrupt vector
                                    297 ;--------------------------------------------------------
                                    298 	.area HOME    (CODE)
      000000                        299 __interrupt_vect:
      000000 02 00 4C         [24]  300 	ljmp	__sdcc_gsinit_startup
                                    301 ; restartable atomic support routines
      000003                        302 	.ds	5
      000008                        303 sdcc_atomic_exchange_rollback_start::
      000008 00               [12]  304 	nop
      000009 00               [12]  305 	nop
      00000A                        306 sdcc_atomic_exchange_pdata_impl:
      00000A E2               [24]  307 	movx	a, @r0
      00000B FB               [12]  308 	mov	r3, a
      00000C EA               [12]  309 	mov	a, r2
      00000D F2               [24]  310 	movx	@r0, a
      00000E 80 2C            [24]  311 	sjmp	sdcc_atomic_exchange_exit
      000010 00               [12]  312 	nop
      000011 00               [12]  313 	nop
      000012                        314 sdcc_atomic_exchange_xdata_impl:
      000012 E0               [24]  315 	movx	a, @dptr
      000013 FB               [12]  316 	mov	r3, a
      000014 EA               [12]  317 	mov	a, r2
      000015 F0               [24]  318 	movx	@dptr, a
      000016 80 24            [24]  319 	sjmp	sdcc_atomic_exchange_exit
      000018                        320 sdcc_atomic_compare_exchange_idata_impl:
      000018 E6               [12]  321 	mov	a, @r0
      000019 B5 02 02         [24]  322 	cjne	a, ar2, .+#5
      00001C EB               [12]  323 	mov	a, r3
      00001D F6               [12]  324 	mov	@r0, a
      00001E 22               [24]  325 	ret
      00001F 00               [12]  326 	nop
      000020                        327 sdcc_atomic_compare_exchange_pdata_impl:
      000020 E2               [24]  328 	movx	a, @r0
      000021 B5 02 02         [24]  329 	cjne	a, ar2, .+#5
      000024 EB               [12]  330 	mov	a, r3
      000025 F2               [24]  331 	movx	@r0, a
      000026 22               [24]  332 	ret
      000027 00               [12]  333 	nop
      000028                        334 sdcc_atomic_compare_exchange_xdata_impl:
      000028 E0               [24]  335 	movx	a, @dptr
      000029 B5 02 02         [24]  336 	cjne	a, ar2, .+#5
      00002C EB               [12]  337 	mov	a, r3
      00002D F0               [24]  338 	movx	@dptr, a
      00002E 22               [24]  339 	ret
      00002F                        340 sdcc_atomic_exchange_rollback_end::
                                    341 
      00002F                        342 sdcc_atomic_exchange_gptr_impl::
      00002F 30 F6 E0         [24]  343 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      000032 A8 82            [24]  344 	mov	r0, dpl
      000034 20 F5 D3         [24]  345 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      000037                        346 sdcc_atomic_exchange_idata_impl:
      000037 EA               [12]  347 	mov	a, r2
      000038 C6               [12]  348 	xch	a, @r0
      000039 F5 82            [12]  349 	mov	dpl, a
      00003B 22               [24]  350 	ret
      00003C                        351 sdcc_atomic_exchange_exit:
      00003C 8B 82            [24]  352 	mov	dpl, r3
      00003E 22               [24]  353 	ret
      00003F                        354 sdcc_atomic_compare_exchange_gptr_impl::
      00003F 30 F6 E6         [24]  355 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      000042 A8 82            [24]  356 	mov	r0, dpl
      000044 20 F5 D9         [24]  357 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      000047 80 CF            [24]  358 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    359 ;--------------------------------------------------------
                                    360 ; global & static initialisations
                                    361 ;--------------------------------------------------------
                                    362 	.area HOME    (CODE)
                                    363 	.area GSINIT  (CODE)
                                    364 	.area GSFINAL (CODE)
                                    365 	.area GSINIT  (CODE)
                                    366 	.globl __sdcc_gsinit_startup
                                    367 	.globl __sdcc_program_startup
                                    368 	.globl __start__stack
                                    369 	.globl __mcs51_genXINIT
                                    370 	.globl __mcs51_genXRAMCLEAR
                                    371 	.globl __mcs51_genRAMCLEAR
                                    372 ;	.\stcboot.c:12: unsigned int number = 0;
      0000A5 E4               [12]  373 	clr	a
      0000A6 F5 08            [12]  374 	mov	_number,a
      0000A8 F5 09            [12]  375 	mov	(_number + 1),a
                                    376 ;	.\stcboot.c:13: unsigned int switchCount = 0;
      0000AA F5 0A            [12]  377 	mov	_switchCount,a
      0000AC F5 0B            [12]  378 	mov	(_switchCount + 1),a
                                    379 ;	.\stcboot.c:19: unsigned char seg_table[] = {
      0000AE 75 14 C0         [24]  380 	mov	_seg_table,#0xc0
      0000B1 75 15 F9         [24]  381 	mov	(_seg_table + 0x0001),#0xf9
      0000B4 75 16 A4         [24]  382 	mov	(_seg_table + 0x0002),#0xa4
      0000B7 75 17 B0         [24]  383 	mov	(_seg_table + 0x0003),#0xb0
      0000BA 75 18 99         [24]  384 	mov	(_seg_table + 0x0004),#0x99
      0000BD 75 19 92         [24]  385 	mov	(_seg_table + 0x0005),#0x92
      0000C0 75 1A 82         [24]  386 	mov	(_seg_table + 0x0006),#0x82
      0000C3 75 1B F8         [24]  387 	mov	(_seg_table + 0x0007),#0xf8
      0000C6 75 1C 80         [24]  388 	mov	(_seg_table + 0x0008),#0x80
      0000C9 75 1D 90         [24]  389 	mov	(_seg_table + 0x0009),#0x90
                                    390 	.area GSFINAL (CODE)
      0000CC 02 00 49         [24]  391 	ljmp	__sdcc_program_startup
                                    392 ;--------------------------------------------------------
                                    393 ; Home
                                    394 ;--------------------------------------------------------
                                    395 	.area HOME    (CODE)
                                    396 	.area HOME    (CODE)
      000049                        397 __sdcc_program_startup:
      000049 02 02 72         [24]  398 	ljmp	_main
                                    399 ;	return from main will return to caller
                                    400 ;--------------------------------------------------------
                                    401 ; code
                                    402 ;--------------------------------------------------------
                                    403 	.area CSEG    (CODE)
                                    404 ;------------------------------------------------------------
                                    405 ;Allocation info for local variables in function 'delay'
                                    406 ;------------------------------------------------------------
                                    407 ;time          Allocated to registers 
                                    408 ;------------------------------------------------------------
                                    409 ;	.\stcboot.c:24: void delay(unsigned int time) {
                                    410 ;	-----------------------------------------
                                    411 ;	 function delay
                                    412 ;	-----------------------------------------
      0000CF                        413 _delay:
                           000007   414 	ar7 = 0x07
                           000006   415 	ar6 = 0x06
                           000005   416 	ar5 = 0x05
                           000004   417 	ar4 = 0x04
                           000003   418 	ar3 = 0x03
                           000002   419 	ar2 = 0x02
                           000001   420 	ar1 = 0x01
                           000000   421 	ar0 = 0x00
      0000CF AE 82            [24]  422 	mov	r6, dpl
      0000D1 AF 83            [24]  423 	mov	r7, dph
                                    424 ;	.\stcboot.c:25: while (time--);
      0000D3                        425 00101$:
      0000D3 8E 04            [24]  426 	mov	ar4,r6
      0000D5 8F 05            [24]  427 	mov	ar5,r7
      0000D7 1E               [12]  428 	dec	r6
      0000D8 BE FF 01         [24]  429 	cjne	r6,#0xff,00113$
      0000DB 1F               [12]  430 	dec	r7
      0000DC                        431 00113$:
      0000DC EC               [12]  432 	mov	a,r4
      0000DD 4D               [12]  433 	orl	a,r5
      0000DE 70 F3            [24]  434 	jnz	00101$
                                    435 ;	.\stcboot.c:26: }
      0000E0 22               [24]  436 	ret
                                    437 ;------------------------------------------------------------
                                    438 ;Allocation info for local variables in function 'binary_count'
                                    439 ;------------------------------------------------------------
                                    440 ;count         Allocated to registers r6 r7 
                                    441 ;------------------------------------------------------------
                                    442 ;	.\stcboot.c:29: void binary_count(void) {
                                    443 ;	-----------------------------------------
                                    444 ;	 function binary_count
                                    445 ;	-----------------------------------------
      0000E1                        446 _binary_count:
                                    447 ;	.\stcboot.c:31: do{
      0000E1 7E 00            [12]  448 	mov	r6,#0x00
      0000E3 7F 00            [12]  449 	mov	r7,#0x00
      0000E5                        450 00101$:
                                    451 ;	.\stcboot.c:33: P1 = ~count;  // Output inverted count to LEDs
      0000E5 8E 05            [24]  452 	mov	ar5,r6
      0000E7 ED               [12]  453 	mov	a,r5
      0000E8 F4               [12]  454 	cpl	a
      0000E9 F5 90            [12]  455 	mov	_P1,a
                                    456 ;	.\stcboot.c:35: delay(5000);
      0000EB 90 13 88         [24]  457 	mov	dptr,#0x1388
      0000EE C0 07            [24]  458 	push	ar7
      0000F0 C0 06            [24]  459 	push	ar6
      0000F2 12 00 CF         [24]  460 	lcall	_delay
      0000F5 D0 06            [24]  461 	pop	ar6
      0000F7 D0 07            [24]  462 	pop	ar7
                                    463 ;	.\stcboot.c:36: count++;
      0000F9 0E               [12]  464 	inc	r6
      0000FA BE 00 01         [24]  465 	cjne	r6,#0x00,00119$
      0000FD 0F               [12]  466 	inc	r7
      0000FE                        467 00119$:
                                    468 ;	.\stcboot.c:38: while (count < 256);
      0000FE 74 FF            [12]  469 	mov	a,#0x100 - 0x01
      000100 2F               [12]  470 	add	a,r7
      000101 50 E2            [24]  471 	jnc	00101$
                                    472 ;	.\stcboot.c:39: return;
                                    473 ;	.\stcboot.c:40: }
      000103 22               [24]  474 	ret
                                    475 ;------------------------------------------------------------
                                    476 ;Allocation info for local variables in function 'cylon'
                                    477 ;------------------------------------------------------------
                                    478 ;pos           Allocated to registers r7 
                                    479 ;------------------------------------------------------------
                                    480 ;	.\stcboot.c:43: void cylon(void) {
                                    481 ;	-----------------------------------------
                                    482 ;	 function cylon
                                    483 ;	-----------------------------------------
      000104                        484 _cylon:
                                    485 ;	.\stcboot.c:44: unsigned char pos = 1;
      000104 7F 01            [12]  486 	mov	r7,#0x01
                                    487 ;	.\stcboot.c:45: while (1) {
      000106                        488 00104$:
                                    489 ;	.\stcboot.c:46: P1 = ~pos;  // Invert output to turn LEDs on
      000106 EF               [12]  490 	mov	a,r7
      000107 F4               [12]  491 	cpl	a
      000108 F5 90            [12]  492 	mov	_P1,a
                                    493 ;	.\stcboot.c:47: delay(5000);
      00010A 90 13 88         [24]  494 	mov	dptr,#0x1388
      00010D C0 07            [24]  495 	push	ar7
      00010F 12 00 CF         [24]  496 	lcall	_delay
      000112 D0 07            [24]  497 	pop	ar7
                                    498 ;	.\stcboot.c:48: pos <<= 1;
      000114 EF               [12]  499 	mov	a,r7
      000115 2F               [12]  500 	add	a,r7
                                    501 ;	.\stcboot.c:49: if (pos == 0) pos = 1;  // Reset to start position
      000116 FF               [12]  502 	mov	r7,a
      000117 70 ED            [24]  503 	jnz	00104$
      000119 7F 01            [12]  504 	mov	r7,#0x01
                                    505 ;	.\stcboot.c:51: }
      00011B 80 E9            [24]  506 	sjmp	00104$
                                    507 ;------------------------------------------------------------
                                    508 ;Allocation info for local variables in function 'dual_cylon'
                                    509 ;------------------------------------------------------------
                                    510 ;pos1          Allocated to registers r7 
                                    511 ;pos2          Allocated to registers r6 
                                    512 ;------------------------------------------------------------
                                    513 ;	.\stcboot.c:54: void dual_cylon(void) {
                                    514 ;	-----------------------------------------
                                    515 ;	 function dual_cylon
                                    516 ;	-----------------------------------------
      00011D                        517 _dual_cylon:
                                    518 ;	.\stcboot.c:55: unsigned char pos1 = 1, pos2 = 0x80;
      00011D 7F 01            [12]  519 	mov	r7,#0x01
      00011F 7E 80            [12]  520 	mov	r6,#0x80
                                    521 ;	.\stcboot.c:56: while (1) {
      000121                        522 00104$:
                                    523 ;	.\stcboot.c:57: P1 = ~(pos1 | pos2);  // Invert output for correct LED logic
      000121 EE               [12]  524 	mov	a,r6
      000122 4F               [12]  525 	orl	a,r7
      000123 F4               [12]  526 	cpl	a
      000124 F5 90            [12]  527 	mov	_P1,a
                                    528 ;	.\stcboot.c:58: delay(5000);
      000126 90 13 88         [24]  529 	mov	dptr,#0x1388
      000129 C0 07            [24]  530 	push	ar7
      00012B C0 06            [24]  531 	push	ar6
      00012D 12 00 CF         [24]  532 	lcall	_delay
      000130 D0 06            [24]  533 	pop	ar6
      000132 D0 07            [24]  534 	pop	ar7
                                    535 ;	.\stcboot.c:59: pos1 <<= 1;
      000134 EF               [12]  536 	mov	a,r7
      000135 2F               [12]  537 	add	a,r7
      000136 FF               [12]  538 	mov	r7,a
                                    539 ;	.\stcboot.c:60: pos2 >>= 1;
      000137 EE               [12]  540 	mov	a,r6
      000138 C3               [12]  541 	clr	c
      000139 13               [12]  542 	rrc	a
      00013A FE               [12]  543 	mov	r6,a
                                    544 ;	.\stcboot.c:61: if (pos1 == 0x80) {  // Reset condition
      00013B BF 80 E3         [24]  545 	cjne	r7,#0x80,00104$
                                    546 ;	.\stcboot.c:62: pos1 = 1;
      00013E 7F 01            [12]  547 	mov	r7,#0x01
                                    548 ;	.\stcboot.c:63: pos2 = 0x80;
      000140 7E 80            [12]  549 	mov	r6,#0x80
                                    550 ;	.\stcboot.c:66: }
      000142 80 DD            [24]  551 	sjmp	00104$
                                    552 ;------------------------------------------------------------
                                    553 ;Allocation info for local variables in function 'display_number'
                                    554 ;------------------------------------------------------------
                                    555 ;temp          Allocated to registers r6 r7 
                                    556 ;ones          Allocated to registers r4 
                                    557 ;tens          Allocated to registers r3 
                                    558 ;hundreds      Allocated to registers r2 
                                    559 ;thousands     Allocated to registers r6 
                                    560 ;------------------------------------------------------------
                                    561 ;	.\stcboot.c:69: void display_number(void) {
                                    562 ;	-----------------------------------------
                                    563 ;	 function display_number
                                    564 ;	-----------------------------------------
      000144                        565 _display_number:
                                    566 ;	.\stcboot.c:70: unsigned int temp = number;
      000144 AE 08            [24]  567 	mov	r6,_number
      000146 AF 09            [24]  568 	mov	r7,(_number + 1)
                                    569 ;	.\stcboot.c:72: unsigned char ones = temp % 10;
      000148 75 1E 0A         [24]  570 	mov	__moduint_PARM_2,#0x0a
      00014B 75 1F 00         [24]  571 	mov	(__moduint_PARM_2 + 1),#0x00
      00014E 8E 82            [24]  572 	mov	dpl, r6
      000150 8F 83            [24]  573 	mov	dph, r7
      000152 C0 07            [24]  574 	push	ar7
      000154 C0 06            [24]  575 	push	ar6
      000156 12 02 A0         [24]  576 	lcall	__moduint
      000159 AC 82            [24]  577 	mov	r4, dpl
      00015B D0 06            [24]  578 	pop	ar6
      00015D D0 07            [24]  579 	pop	ar7
                                    580 ;	.\stcboot.c:73: temp /= 10;
      00015F 75 1E 0A         [24]  581 	mov	__divuint_PARM_2,#0x0a
      000162 75 1F 00         [24]  582 	mov	(__divuint_PARM_2 + 1),#0x00
                                    583 ;	.\stcboot.c:74: unsigned char tens = temp % 10;
      000165 8E 82            [24]  584 	mov	dpl, r6
      000167 8F 83            [24]  585 	mov	dph, r7
      000169 C0 04            [24]  586 	push	ar4
      00016B 12 02 77         [24]  587 	lcall	__divuint
      00016E AE 82            [24]  588 	mov	r6, dpl
      000170 AF 83            [24]  589 	mov	r7, dph
      000172 D0 04            [24]  590 	pop	ar4
      000174 75 1E 0A         [24]  591 	mov	__moduint_PARM_2,#0x0a
      000177 75 1F 00         [24]  592 	mov	(__moduint_PARM_2 + 1),#0x00
      00017A 8E 82            [24]  593 	mov	dpl, r6
      00017C 8F 83            [24]  594 	mov	dph, r7
      00017E C0 07            [24]  595 	push	ar7
      000180 C0 06            [24]  596 	push	ar6
      000182 C0 04            [24]  597 	push	ar4
      000184 12 02 A0         [24]  598 	lcall	__moduint
      000187 AB 82            [24]  599 	mov	r3, dpl
      000189 D0 04            [24]  600 	pop	ar4
      00018B D0 06            [24]  601 	pop	ar6
      00018D D0 07            [24]  602 	pop	ar7
                                    603 ;	.\stcboot.c:75: temp /= 10;
      00018F 75 1E 0A         [24]  604 	mov	__divuint_PARM_2,#0x0a
      000192 75 1F 00         [24]  605 	mov	(__divuint_PARM_2 + 1),#0x00
                                    606 ;	.\stcboot.c:76: unsigned char hundreds = temp % 10;
      000195 8E 82            [24]  607 	mov	dpl, r6
      000197 8F 83            [24]  608 	mov	dph, r7
      000199 C0 04            [24]  609 	push	ar4
      00019B C0 03            [24]  610 	push	ar3
      00019D 12 02 77         [24]  611 	lcall	__divuint
      0001A0 AE 82            [24]  612 	mov	r6, dpl
      0001A2 AF 83            [24]  613 	mov	r7, dph
      0001A4 D0 03            [24]  614 	pop	ar3
      0001A6 D0 04            [24]  615 	pop	ar4
      0001A8 75 1E 0A         [24]  616 	mov	__moduint_PARM_2,#0x0a
      0001AB 75 1F 00         [24]  617 	mov	(__moduint_PARM_2 + 1),#0x00
      0001AE 8E 82            [24]  618 	mov	dpl, r6
      0001B0 8F 83            [24]  619 	mov	dph, r7
      0001B2 C0 07            [24]  620 	push	ar7
      0001B4 C0 06            [24]  621 	push	ar6
      0001B6 C0 04            [24]  622 	push	ar4
      0001B8 C0 03            [24]  623 	push	ar3
      0001BA 12 02 A0         [24]  624 	lcall	__moduint
      0001BD AA 82            [24]  625 	mov	r2, dpl
      0001BF D0 03            [24]  626 	pop	ar3
      0001C1 D0 04            [24]  627 	pop	ar4
      0001C3 D0 06            [24]  628 	pop	ar6
      0001C5 D0 07            [24]  629 	pop	ar7
                                    630 ;	.\stcboot.c:77: temp /= 10;
      0001C7 75 1E 0A         [24]  631 	mov	__divuint_PARM_2,#0x0a
      0001CA 75 1F 00         [24]  632 	mov	(__divuint_PARM_2 + 1),#0x00
                                    633 ;	.\stcboot.c:78: unsigned char thousands = temp % 10;
      0001CD 8E 82            [24]  634 	mov	dpl, r6
      0001CF 8F 83            [24]  635 	mov	dph, r7
      0001D1 C0 04            [24]  636 	push	ar4
      0001D3 C0 03            [24]  637 	push	ar3
      0001D5 C0 02            [24]  638 	push	ar2
      0001D7 12 02 77         [24]  639 	lcall	__divuint
      0001DA AE 82            [24]  640 	mov	r6, dpl
      0001DC 75 F0 0A         [24]  641 	mov	b,#0x0a
      0001DF EE               [12]  642 	mov	a,r6
      0001E0 84               [48]  643 	div	ab
                                    644 ;	.\stcboot.c:80: P0 = seg_table[thousands];
      0001E1 E5 F0            [12]  645 	mov	a,b
      0001E3 24 14            [12]  646 	add	a, #_seg_table
      0001E5 F9               [12]  647 	mov	r1,a
      0001E6 87 80            [24]  648 	mov	_P0,@r1
                                    649 ;	.\stcboot.c:81: P2_0 = 0;
                                    650 ;	assignBit
      0001E8 C2 A0            [12]  651 	clr	_P2_0
                                    652 ;	.\stcboot.c:82: delay(500);
      0001EA 90 01 F4         [24]  653 	mov	dptr,#0x01f4
      0001ED 12 00 CF         [24]  654 	lcall	_delay
      0001F0 D0 02            [24]  655 	pop	ar2
                                    656 ;	.\stcboot.c:83: P2_0 = 1;
                                    657 ;	assignBit
      0001F2 D2 A0            [12]  658 	setb	_P2_0
                                    659 ;	.\stcboot.c:85: P0 = seg_table[hundreds];
      0001F4 EA               [12]  660 	mov	a,r2
      0001F5 24 14            [12]  661 	add	a, #_seg_table
      0001F7 F9               [12]  662 	mov	r1,a
      0001F8 87 80            [24]  663 	mov	_P0,@r1
                                    664 ;	.\stcboot.c:86: P2_1 = 0;
                                    665 ;	assignBit
      0001FA C2 A1            [12]  666 	clr	_P2_1
                                    667 ;	.\stcboot.c:87: delay(500);
      0001FC 90 01 F4         [24]  668 	mov	dptr,#0x01f4
      0001FF 12 00 CF         [24]  669 	lcall	_delay
      000202 D0 03            [24]  670 	pop	ar3
                                    671 ;	.\stcboot.c:88: P2_1 = 1;
                                    672 ;	assignBit
      000204 D2 A1            [12]  673 	setb	_P2_1
                                    674 ;	.\stcboot.c:90: P0 = seg_table[tens];
      000206 EB               [12]  675 	mov	a,r3
      000207 24 14            [12]  676 	add	a, #_seg_table
      000209 F9               [12]  677 	mov	r1,a
      00020A 87 80            [24]  678 	mov	_P0,@r1
                                    679 ;	.\stcboot.c:91: P2_2 = 0;
                                    680 ;	assignBit
      00020C C2 A2            [12]  681 	clr	_P2_2
                                    682 ;	.\stcboot.c:92: delay(500);
      00020E 90 01 F4         [24]  683 	mov	dptr,#0x01f4
      000211 12 00 CF         [24]  684 	lcall	_delay
      000214 D0 04            [24]  685 	pop	ar4
                                    686 ;	.\stcboot.c:93: P2_2 = 1;
                                    687 ;	assignBit
      000216 D2 A2            [12]  688 	setb	_P2_2
                                    689 ;	.\stcboot.c:95: P0 = seg_table[ones];
      000218 EC               [12]  690 	mov	a,r4
      000219 24 14            [12]  691 	add	a, #_seg_table
      00021B F9               [12]  692 	mov	r1,a
      00021C 87 80            [24]  693 	mov	_P0,@r1
                                    694 ;	.\stcboot.c:96: P2_3 = 0;
                                    695 ;	assignBit
      00021E C2 A3            [12]  696 	clr	_P2_3
                                    697 ;	.\stcboot.c:97: delay(500);
      000220 90 01 F4         [24]  698 	mov	dptr,#0x01f4
      000223 12 00 CF         [24]  699 	lcall	_delay
                                    700 ;	.\stcboot.c:98: P2_3 = 1;
                                    701 ;	assignBit
      000226 D2 A3            [12]  702 	setb	_P2_3
                                    703 ;	.\stcboot.c:99: }
      000228 22               [24]  704 	ret
                                    705 ;------------------------------------------------------------
                                    706 ;Allocation info for local variables in function 'number_clicker'
                                    707 ;------------------------------------------------------------
                                    708 ;	.\stcboot.c:103: void number_clicker(void) {
                                    709 ;	-----------------------------------------
                                    710 ;	 function number_clicker
                                    711 ;	-----------------------------------------
      000229                        712 _number_clicker:
                                    713 ;	.\stcboot.c:105: if ((P3 & 0x08) == 0) { // Button Pressed
      000229 E5 B0            [12]  714 	mov	a,_P3
      00022B 20 E3 1E         [24]  715 	jb	acc.3,00104$
                                    716 ;	.\stcboot.c:106: delay(5000);
      00022E 90 13 88         [24]  717 	mov	dptr,#0x1388
      000231 12 00 CF         [24]  718 	lcall	_delay
                                    719 ;	.\stcboot.c:107: number++;
      000234 05 08            [12]  720 	inc	_number
      000236 E4               [12]  721 	clr	a
      000237 B5 08 02         [24]  722 	cjne	a,_number,00137$
      00023A 05 09            [12]  723 	inc	(_number + 1)
      00023C                        724 00137$:
                                    725 ;	.\stcboot.c:108: if (number > 9999) number = 0; // Roll over to 0
      00023C C3               [12]  726 	clr	c
      00023D 74 0F            [12]  727 	mov	a,#0x0f
      00023F 95 08            [12]  728 	subb	a,_number
      000241 74 27            [12]  729 	mov	a,#0x27
      000243 95 09            [12]  730 	subb	a,(_number + 1)
      000245 50 05            [24]  731 	jnc	00104$
      000247 E4               [12]  732 	clr	a
      000248 F5 08            [12]  733 	mov	_number,a
      00024A F5 09            [12]  734 	mov	(_number + 1),a
      00024C                        735 00104$:
                                    736 ;	.\stcboot.c:114: if ((P3 & 0x12) == 0) { // Button Pressed
      00024C E5 B0            [12]  737 	mov	a,_P3
      00024E 54 12            [12]  738 	anl	a,#0x12
      000250 70 1D            [24]  739 	jnz	00109$
                                    740 ;	.\stcboot.c:115: delay(5000);
      000252 90 13 88         [24]  741 	mov	dptr,#0x1388
      000255 12 00 CF         [24]  742 	lcall	_delay
                                    743 ;	.\stcboot.c:116: if (number == 0) number = 9999; // Roll over to 9999
      000258 E5 08            [12]  744 	mov	a,_number
      00025A 45 09            [12]  745 	orl	a,(_number + 1)
      00025C 70 08            [24]  746 	jnz	00106$
      00025E 75 08 0F         [24]  747 	mov	_number,#0x0f
      000261 75 09 27         [24]  748 	mov	(_number + 1),#0x27
      000264 80 09            [24]  749 	sjmp	00109$
      000266                        750 00106$:
                                    751 ;	.\stcboot.c:117: else number--;
      000266 15 08            [12]  752 	dec	_number
      000268 74 FF            [12]  753 	mov	a,#0xff
      00026A B5 08 02         [24]  754 	cjne	a,_number,00142$
      00026D 15 09            [12]  755 	dec	(_number + 1)
      00026F                        756 00142$:
      00026F                        757 00109$:
                                    758 ;	.\stcboot.c:121: display_number();
                                    759 ;	.\stcboot.c:123: }
      00026F 02 01 44         [24]  760 	ljmp	_display_number
                                    761 ;------------------------------------------------------------
                                    762 ;Allocation info for local variables in function 'main'
                                    763 ;------------------------------------------------------------
                                    764 ;	.\stcboot.c:125: void main(void) {
                                    765 ;	-----------------------------------------
                                    766 ;	 function main
                                    767 ;	-----------------------------------------
      000272                        768 _main:
                                    769 ;	.\stcboot.c:126: while (1) {
      000272                        770 00102$:
                                    771 ;	.\stcboot.c:129: dual_cylon();
      000272 12 01 1D         [24]  772 	lcall	_dual_cylon
                                    773 ;	.\stcboot.c:132: }
      000275 80 FB            [24]  774 	sjmp	00102$
                                    775 	.area CSEG    (CODE)
                                    776 	.area CONST   (CODE)
                                    777 	.area CONST   (CODE)
      0002F1                        778 _period:
      0002F1 E8 03 00 00            779 	.byte #0xe8, #0x03, #0x00, #0x00	; 1000
                                    780 	.area CSEG    (CODE)
                                    781 	.area XINIT   (CODE)
                                    782 	.area CABS    (ABS,CODE)
