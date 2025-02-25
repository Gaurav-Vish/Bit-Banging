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
      000049 02 02 44         [24]  398 	ljmp	_main
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
                                    478 ;direction     Allocated to registers 
                                    479 ;pos           Allocated to registers 
                                    480 ;pos           Allocated to registers 
                                    481 ;------------------------------------------------------------
                                    482 ;	.\stcboot.c:43: void cylon(void) {
                                    483 ;	-----------------------------------------
                                    484 ;	 function cylon
                                    485 ;	-----------------------------------------
      000104                        486 _cylon:
                                    487 ;	.\stcboot.c:48: P1 = ~pos;  // Invert output to turn LEDs on
      000104 75 90 FE         [24]  488 	mov	_P1,#0xfe
                                    489 ;	.\stcboot.c:49: delay(5000);
      000107 90 13 88         [24]  490 	mov	dptr,#0x1388
                                    491 ;	.\stcboot.c:60: break;
                                    492 ;	.\stcboot.c:64: }
      00010A 02 00 CF         [24]  493 	ljmp	_delay
                                    494 ;------------------------------------------------------------
                                    495 ;Allocation info for local variables in function 'dual_cylon'
                                    496 ;------------------------------------------------------------
                                    497 ;pos1          Allocated to registers 
                                    498 ;pos2          Allocated to registers 
                                    499 ;------------------------------------------------------------
                                    500 ;	.\stcboot.c:67: void dual_cylon(void) {
                                    501 ;	-----------------------------------------
                                    502 ;	 function dual_cylon
                                    503 ;	-----------------------------------------
      00010D                        504 _dual_cylon:
                                    505 ;	.\stcboot.c:70: P1 = ~(pos1 | pos2);  // Invert output for correct LED logic
      00010D 75 90 7E         [24]  506 	mov	_P1,#0x7e
                                    507 ;	.\stcboot.c:71: delay(5000);
      000110 90 13 88         [24]  508 	mov	dptr,#0x1388
                                    509 ;	.\stcboot.c:76: pos2 = 0x80;
                                    510 ;	.\stcboot.c:79: }
      000113 02 00 CF         [24]  511 	ljmp	_delay
                                    512 ;------------------------------------------------------------
                                    513 ;Allocation info for local variables in function 'display_number'
                                    514 ;------------------------------------------------------------
                                    515 ;temp          Allocated to registers r6 r7 
                                    516 ;ones          Allocated to registers r4 
                                    517 ;tens          Allocated to registers r3 
                                    518 ;hundreds      Allocated to registers r2 
                                    519 ;thousands     Allocated to registers r6 
                                    520 ;------------------------------------------------------------
                                    521 ;	.\stcboot.c:82: void display_number(void) {
                                    522 ;	-----------------------------------------
                                    523 ;	 function display_number
                                    524 ;	-----------------------------------------
      000116                        525 _display_number:
                                    526 ;	.\stcboot.c:83: unsigned int temp = number;
      000116 AE 08            [24]  527 	mov	r6,_number
      000118 AF 09            [24]  528 	mov	r7,(_number + 1)
                                    529 ;	.\stcboot.c:85: unsigned char ones = temp % 10;
      00011A 75 1E 0A         [24]  530 	mov	__moduint_PARM_2,#0x0a
      00011D 75 1F 00         [24]  531 	mov	(__moduint_PARM_2 + 1),#0x00
      000120 8E 82            [24]  532 	mov	dpl, r6
      000122 8F 83            [24]  533 	mov	dph, r7
      000124 C0 07            [24]  534 	push	ar7
      000126 C0 06            [24]  535 	push	ar6
      000128 12 02 72         [24]  536 	lcall	__moduint
      00012B AC 82            [24]  537 	mov	r4, dpl
      00012D D0 06            [24]  538 	pop	ar6
      00012F D0 07            [24]  539 	pop	ar7
                                    540 ;	.\stcboot.c:86: temp /= 10;
      000131 75 1E 0A         [24]  541 	mov	__divuint_PARM_2,#0x0a
      000134 75 1F 00         [24]  542 	mov	(__divuint_PARM_2 + 1),#0x00
                                    543 ;	.\stcboot.c:87: unsigned char tens = temp % 10;
      000137 8E 82            [24]  544 	mov	dpl, r6
      000139 8F 83            [24]  545 	mov	dph, r7
      00013B C0 04            [24]  546 	push	ar4
      00013D 12 02 49         [24]  547 	lcall	__divuint
      000140 AE 82            [24]  548 	mov	r6, dpl
      000142 AF 83            [24]  549 	mov	r7, dph
      000144 D0 04            [24]  550 	pop	ar4
      000146 75 1E 0A         [24]  551 	mov	__moduint_PARM_2,#0x0a
      000149 75 1F 00         [24]  552 	mov	(__moduint_PARM_2 + 1),#0x00
      00014C 8E 82            [24]  553 	mov	dpl, r6
      00014E 8F 83            [24]  554 	mov	dph, r7
      000150 C0 07            [24]  555 	push	ar7
      000152 C0 06            [24]  556 	push	ar6
      000154 C0 04            [24]  557 	push	ar4
      000156 12 02 72         [24]  558 	lcall	__moduint
      000159 AB 82            [24]  559 	mov	r3, dpl
      00015B D0 04            [24]  560 	pop	ar4
      00015D D0 06            [24]  561 	pop	ar6
      00015F D0 07            [24]  562 	pop	ar7
                                    563 ;	.\stcboot.c:88: temp /= 10;
      000161 75 1E 0A         [24]  564 	mov	__divuint_PARM_2,#0x0a
      000164 75 1F 00         [24]  565 	mov	(__divuint_PARM_2 + 1),#0x00
                                    566 ;	.\stcboot.c:89: unsigned char hundreds = temp % 10;
      000167 8E 82            [24]  567 	mov	dpl, r6
      000169 8F 83            [24]  568 	mov	dph, r7
      00016B C0 04            [24]  569 	push	ar4
      00016D C0 03            [24]  570 	push	ar3
      00016F 12 02 49         [24]  571 	lcall	__divuint
      000172 AE 82            [24]  572 	mov	r6, dpl
      000174 AF 83            [24]  573 	mov	r7, dph
      000176 D0 03            [24]  574 	pop	ar3
      000178 D0 04            [24]  575 	pop	ar4
      00017A 75 1E 0A         [24]  576 	mov	__moduint_PARM_2,#0x0a
      00017D 75 1F 00         [24]  577 	mov	(__moduint_PARM_2 + 1),#0x00
      000180 8E 82            [24]  578 	mov	dpl, r6
      000182 8F 83            [24]  579 	mov	dph, r7
      000184 C0 07            [24]  580 	push	ar7
      000186 C0 06            [24]  581 	push	ar6
      000188 C0 04            [24]  582 	push	ar4
      00018A C0 03            [24]  583 	push	ar3
      00018C 12 02 72         [24]  584 	lcall	__moduint
      00018F AA 82            [24]  585 	mov	r2, dpl
      000191 D0 03            [24]  586 	pop	ar3
      000193 D0 04            [24]  587 	pop	ar4
      000195 D0 06            [24]  588 	pop	ar6
      000197 D0 07            [24]  589 	pop	ar7
                                    590 ;	.\stcboot.c:90: temp /= 10;
      000199 75 1E 0A         [24]  591 	mov	__divuint_PARM_2,#0x0a
      00019C 75 1F 00         [24]  592 	mov	(__divuint_PARM_2 + 1),#0x00
                                    593 ;	.\stcboot.c:91: unsigned char thousands = temp % 10;
      00019F 8E 82            [24]  594 	mov	dpl, r6
      0001A1 8F 83            [24]  595 	mov	dph, r7
      0001A3 C0 04            [24]  596 	push	ar4
      0001A5 C0 03            [24]  597 	push	ar3
      0001A7 C0 02            [24]  598 	push	ar2
      0001A9 12 02 49         [24]  599 	lcall	__divuint
      0001AC AE 82            [24]  600 	mov	r6, dpl
      0001AE 75 F0 0A         [24]  601 	mov	b,#0x0a
      0001B1 EE               [12]  602 	mov	a,r6
      0001B2 84               [48]  603 	div	ab
                                    604 ;	.\stcboot.c:93: P0 = seg_table[thousands];
      0001B3 E5 F0            [12]  605 	mov	a,b
      0001B5 24 14            [12]  606 	add	a, #_seg_table
      0001B7 F9               [12]  607 	mov	r1,a
      0001B8 87 80            [24]  608 	mov	_P0,@r1
                                    609 ;	.\stcboot.c:94: P2_0 = 0;
                                    610 ;	assignBit
      0001BA C2 A0            [12]  611 	clr	_P2_0
                                    612 ;	.\stcboot.c:95: delay(500);
      0001BC 90 01 F4         [24]  613 	mov	dptr,#0x01f4
      0001BF 12 00 CF         [24]  614 	lcall	_delay
      0001C2 D0 02            [24]  615 	pop	ar2
                                    616 ;	.\stcboot.c:96: P2_0 = 1;
                                    617 ;	assignBit
      0001C4 D2 A0            [12]  618 	setb	_P2_0
                                    619 ;	.\stcboot.c:98: P0 = seg_table[hundreds];
      0001C6 EA               [12]  620 	mov	a,r2
      0001C7 24 14            [12]  621 	add	a, #_seg_table
      0001C9 F9               [12]  622 	mov	r1,a
      0001CA 87 80            [24]  623 	mov	_P0,@r1
                                    624 ;	.\stcboot.c:99: P2_1 = 0;
                                    625 ;	assignBit
      0001CC C2 A1            [12]  626 	clr	_P2_1
                                    627 ;	.\stcboot.c:100: delay(500);
      0001CE 90 01 F4         [24]  628 	mov	dptr,#0x01f4
      0001D1 12 00 CF         [24]  629 	lcall	_delay
      0001D4 D0 03            [24]  630 	pop	ar3
                                    631 ;	.\stcboot.c:101: P2_1 = 1;
                                    632 ;	assignBit
      0001D6 D2 A1            [12]  633 	setb	_P2_1
                                    634 ;	.\stcboot.c:103: P0 = seg_table[tens];
      0001D8 EB               [12]  635 	mov	a,r3
      0001D9 24 14            [12]  636 	add	a, #_seg_table
      0001DB F9               [12]  637 	mov	r1,a
      0001DC 87 80            [24]  638 	mov	_P0,@r1
                                    639 ;	.\stcboot.c:104: P2_2 = 0;
                                    640 ;	assignBit
      0001DE C2 A2            [12]  641 	clr	_P2_2
                                    642 ;	.\stcboot.c:105: delay(500);
      0001E0 90 01 F4         [24]  643 	mov	dptr,#0x01f4
      0001E3 12 00 CF         [24]  644 	lcall	_delay
      0001E6 D0 04            [24]  645 	pop	ar4
                                    646 ;	.\stcboot.c:106: P2_2 = 1;
                                    647 ;	assignBit
      0001E8 D2 A2            [12]  648 	setb	_P2_2
                                    649 ;	.\stcboot.c:108: P0 = seg_table[ones];
      0001EA EC               [12]  650 	mov	a,r4
      0001EB 24 14            [12]  651 	add	a, #_seg_table
      0001ED F9               [12]  652 	mov	r1,a
      0001EE 87 80            [24]  653 	mov	_P0,@r1
                                    654 ;	.\stcboot.c:109: P2_3 = 0;
                                    655 ;	assignBit
      0001F0 C2 A3            [12]  656 	clr	_P2_3
                                    657 ;	.\stcboot.c:110: delay(500);
      0001F2 90 01 F4         [24]  658 	mov	dptr,#0x01f4
      0001F5 12 00 CF         [24]  659 	lcall	_delay
                                    660 ;	.\stcboot.c:111: P2_3 = 1;
                                    661 ;	assignBit
      0001F8 D2 A3            [12]  662 	setb	_P2_3
                                    663 ;	.\stcboot.c:112: }
      0001FA 22               [24]  664 	ret
                                    665 ;------------------------------------------------------------
                                    666 ;Allocation info for local variables in function 'number_clicker'
                                    667 ;------------------------------------------------------------
                                    668 ;	.\stcboot.c:116: void number_clicker(void) {
                                    669 ;	-----------------------------------------
                                    670 ;	 function number_clicker
                                    671 ;	-----------------------------------------
      0001FB                        672 _number_clicker:
                                    673 ;	.\stcboot.c:118: if ((P3 & 0x08) == 0) { // Button Pressed
      0001FB E5 B0            [12]  674 	mov	a,_P3
      0001FD 20 E3 1E         [24]  675 	jb	acc.3,00104$
                                    676 ;	.\stcboot.c:119: delay(5000);
      000200 90 13 88         [24]  677 	mov	dptr,#0x1388
      000203 12 00 CF         [24]  678 	lcall	_delay
                                    679 ;	.\stcboot.c:120: number++;
      000206 05 08            [12]  680 	inc	_number
      000208 E4               [12]  681 	clr	a
      000209 B5 08 02         [24]  682 	cjne	a,_number,00137$
      00020C 05 09            [12]  683 	inc	(_number + 1)
      00020E                        684 00137$:
                                    685 ;	.\stcboot.c:121: if (number > 9999) number = 0; // Roll over to 0
      00020E C3               [12]  686 	clr	c
      00020F 74 0F            [12]  687 	mov	a,#0x0f
      000211 95 08            [12]  688 	subb	a,_number
      000213 74 27            [12]  689 	mov	a,#0x27
      000215 95 09            [12]  690 	subb	a,(_number + 1)
      000217 50 05            [24]  691 	jnc	00104$
      000219 E4               [12]  692 	clr	a
      00021A F5 08            [12]  693 	mov	_number,a
      00021C F5 09            [12]  694 	mov	(_number + 1),a
      00021E                        695 00104$:
                                    696 ;	.\stcboot.c:127: if ((P3 & 0x12) == 0) { // Button Pressed
      00021E E5 B0            [12]  697 	mov	a,_P3
      000220 54 12            [12]  698 	anl	a,#0x12
      000222 70 1D            [24]  699 	jnz	00109$
                                    700 ;	.\stcboot.c:128: delay(5000);
      000224 90 13 88         [24]  701 	mov	dptr,#0x1388
      000227 12 00 CF         [24]  702 	lcall	_delay
                                    703 ;	.\stcboot.c:129: if (number == 0) number = 9999; // Roll over to 9999
      00022A E5 08            [12]  704 	mov	a,_number
      00022C 45 09            [12]  705 	orl	a,(_number + 1)
      00022E 70 08            [24]  706 	jnz	00106$
      000230 75 08 0F         [24]  707 	mov	_number,#0x0f
      000233 75 09 27         [24]  708 	mov	(_number + 1),#0x27
      000236 80 09            [24]  709 	sjmp	00109$
      000238                        710 00106$:
                                    711 ;	.\stcboot.c:130: else number--;
      000238 15 08            [12]  712 	dec	_number
      00023A 74 FF            [12]  713 	mov	a,#0xff
      00023C B5 08 02         [24]  714 	cjne	a,_number,00142$
      00023F 15 09            [12]  715 	dec	(_number + 1)
      000241                        716 00142$:
      000241                        717 00109$:
                                    718 ;	.\stcboot.c:134: display_number();
                                    719 ;	.\stcboot.c:136: }
      000241 02 01 16         [24]  720 	ljmp	_display_number
                                    721 ;------------------------------------------------------------
                                    722 ;Allocation info for local variables in function 'main'
                                    723 ;------------------------------------------------------------
                                    724 ;	.\stcboot.c:138: void main(void) {
                                    725 ;	-----------------------------------------
                                    726 ;	 function main
                                    727 ;	-----------------------------------------
      000244                        728 _main:
                                    729 ;	.\stcboot.c:139: while (1) {
      000244                        730 00102$:
                                    731 ;	.\stcboot.c:143: number_clicker();
      000244 12 01 FB         [24]  732 	lcall	_number_clicker
                                    733 ;	.\stcboot.c:145: }
      000247 80 FB            [24]  734 	sjmp	00102$
                                    735 	.area CSEG    (CODE)
                                    736 	.area CONST   (CODE)
                                    737 	.area CONST   (CODE)
      0002C3                        738 _period:
      0002C3 E8 03 00 00            739 	.byte #0xe8, #0x03, #0x00, #0x00	; 1000
                                    740 	.area CSEG    (CODE)
                                    741 	.area XINIT   (CODE)
                                    742 	.area CABS    (ABS,CODE)
