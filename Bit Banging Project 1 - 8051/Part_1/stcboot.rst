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
                                     12 	.globl _CY
                                     13 	.globl _AC
                                     14 	.globl _F0
                                     15 	.globl _RS1
                                     16 	.globl _RS0
                                     17 	.globl _OV
                                     18 	.globl _F1
                                     19 	.globl _P
                                     20 	.globl _PS
                                     21 	.globl _PT1
                                     22 	.globl _PX1
                                     23 	.globl _PT0
                                     24 	.globl _PX0
                                     25 	.globl _RD
                                     26 	.globl _WR
                                     27 	.globl _T1
                                     28 	.globl _T0
                                     29 	.globl _INT1
                                     30 	.globl _INT0
                                     31 	.globl _TXD
                                     32 	.globl _RXD
                                     33 	.globl _P3_7
                                     34 	.globl _P3_6
                                     35 	.globl _P3_5
                                     36 	.globl _P3_4
                                     37 	.globl _P3_3
                                     38 	.globl _P3_2
                                     39 	.globl _P3_1
                                     40 	.globl _P3_0
                                     41 	.globl _EA
                                     42 	.globl _ES
                                     43 	.globl _ET1
                                     44 	.globl _EX1
                                     45 	.globl _ET0
                                     46 	.globl _EX0
                                     47 	.globl _P2_7
                                     48 	.globl _P2_6
                                     49 	.globl _P2_5
                                     50 	.globl _P2_4
                                     51 	.globl _P2_3
                                     52 	.globl _P2_2
                                     53 	.globl _P2_1
                                     54 	.globl _P2_0
                                     55 	.globl _SM0
                                     56 	.globl _SM1
                                     57 	.globl _SM2
                                     58 	.globl _REN
                                     59 	.globl _TB8
                                     60 	.globl _RB8
                                     61 	.globl _TI
                                     62 	.globl _RI
                                     63 	.globl _P1_7
                                     64 	.globl _P1_6
                                     65 	.globl _P1_5
                                     66 	.globl _P1_4
                                     67 	.globl _P1_3
                                     68 	.globl _P1_2
                                     69 	.globl _P1_1
                                     70 	.globl _P1_0
                                     71 	.globl _TF1
                                     72 	.globl _TR1
                                     73 	.globl _TF0
                                     74 	.globl _TR0
                                     75 	.globl _IE1
                                     76 	.globl _IT1
                                     77 	.globl _IE0
                                     78 	.globl _IT0
                                     79 	.globl _P0_7
                                     80 	.globl _P0_6
                                     81 	.globl _P0_5
                                     82 	.globl _P0_4
                                     83 	.globl _P0_3
                                     84 	.globl _P0_2
                                     85 	.globl _P0_1
                                     86 	.globl _P0_0
                                     87 	.globl _B
                                     88 	.globl _ACC
                                     89 	.globl _PSW
                                     90 	.globl _IP
                                     91 	.globl _P3
                                     92 	.globl _IE
                                     93 	.globl _P2
                                     94 	.globl _SBUF
                                     95 	.globl _SCON
                                     96 	.globl _P1
                                     97 	.globl _TH1
                                     98 	.globl _TH0
                                     99 	.globl _TL1
                                    100 	.globl _TL0
                                    101 	.globl _TMOD
                                    102 	.globl _TCON
                                    103 	.globl _PCON
                                    104 	.globl _DPH
                                    105 	.globl _DPL
                                    106 	.globl _SP
                                    107 	.globl _P0
                                    108 	.globl _seg_table
                                    109 	.globl _switchCount
                                    110 	.globl _number
                                    111 	.globl _delay
                                    112 	.globl _binary_count
                                    113 	.globl _cylon
                                    114 	.globl _dual_cylon
                                    115 	.globl _display_number
                                    116 	.globl _number_clicker
                                    117 ;--------------------------------------------------------
                                    118 ; special function registers
                                    119 ;--------------------------------------------------------
                                    120 	.area RSEG    (ABS,DATA)
      000000                        121 	.org 0x0000
                           000080   122 _P0	=	0x0080
                           000081   123 _SP	=	0x0081
                           000082   124 _DPL	=	0x0082
                           000083   125 _DPH	=	0x0083
                           000087   126 _PCON	=	0x0087
                           000088   127 _TCON	=	0x0088
                           000089   128 _TMOD	=	0x0089
                           00008A   129 _TL0	=	0x008a
                           00008B   130 _TL1	=	0x008b
                           00008C   131 _TH0	=	0x008c
                           00008D   132 _TH1	=	0x008d
                           000090   133 _P1	=	0x0090
                           000098   134 _SCON	=	0x0098
                           000099   135 _SBUF	=	0x0099
                           0000A0   136 _P2	=	0x00a0
                           0000A8   137 _IE	=	0x00a8
                           0000B0   138 _P3	=	0x00b0
                           0000B8   139 _IP	=	0x00b8
                           0000D0   140 _PSW	=	0x00d0
                           0000E0   141 _ACC	=	0x00e0
                           0000F0   142 _B	=	0x00f0
                                    143 ;--------------------------------------------------------
                                    144 ; special function bits
                                    145 ;--------------------------------------------------------
                                    146 	.area RSEG    (ABS,DATA)
      000000                        147 	.org 0x0000
                           000080   148 _P0_0	=	0x0080
                           000081   149 _P0_1	=	0x0081
                           000082   150 _P0_2	=	0x0082
                           000083   151 _P0_3	=	0x0083
                           000084   152 _P0_4	=	0x0084
                           000085   153 _P0_5	=	0x0085
                           000086   154 _P0_6	=	0x0086
                           000087   155 _P0_7	=	0x0087
                           000088   156 _IT0	=	0x0088
                           000089   157 _IE0	=	0x0089
                           00008A   158 _IT1	=	0x008a
                           00008B   159 _IE1	=	0x008b
                           00008C   160 _TR0	=	0x008c
                           00008D   161 _TF0	=	0x008d
                           00008E   162 _TR1	=	0x008e
                           00008F   163 _TF1	=	0x008f
                           000090   164 _P1_0	=	0x0090
                           000091   165 _P1_1	=	0x0091
                           000092   166 _P1_2	=	0x0092
                           000093   167 _P1_3	=	0x0093
                           000094   168 _P1_4	=	0x0094
                           000095   169 _P1_5	=	0x0095
                           000096   170 _P1_6	=	0x0096
                           000097   171 _P1_7	=	0x0097
                           000098   172 _RI	=	0x0098
                           000099   173 _TI	=	0x0099
                           00009A   174 _RB8	=	0x009a
                           00009B   175 _TB8	=	0x009b
                           00009C   176 _REN	=	0x009c
                           00009D   177 _SM2	=	0x009d
                           00009E   178 _SM1	=	0x009e
                           00009F   179 _SM0	=	0x009f
                           0000A0   180 _P2_0	=	0x00a0
                           0000A1   181 _P2_1	=	0x00a1
                           0000A2   182 _P2_2	=	0x00a2
                           0000A3   183 _P2_3	=	0x00a3
                           0000A4   184 _P2_4	=	0x00a4
                           0000A5   185 _P2_5	=	0x00a5
                           0000A6   186 _P2_6	=	0x00a6
                           0000A7   187 _P2_7	=	0x00a7
                           0000A8   188 _EX0	=	0x00a8
                           0000A9   189 _ET0	=	0x00a9
                           0000AA   190 _EX1	=	0x00aa
                           0000AB   191 _ET1	=	0x00ab
                           0000AC   192 _ES	=	0x00ac
                           0000AF   193 _EA	=	0x00af
                           0000B0   194 _P3_0	=	0x00b0
                           0000B1   195 _P3_1	=	0x00b1
                           0000B2   196 _P3_2	=	0x00b2
                           0000B3   197 _P3_3	=	0x00b3
                           0000B4   198 _P3_4	=	0x00b4
                           0000B5   199 _P3_5	=	0x00b5
                           0000B6   200 _P3_6	=	0x00b6
                           0000B7   201 _P3_7	=	0x00b7
                           0000B0   202 _RXD	=	0x00b0
                           0000B1   203 _TXD	=	0x00b1
                           0000B2   204 _INT0	=	0x00b2
                           0000B3   205 _INT1	=	0x00b3
                           0000B4   206 _T0	=	0x00b4
                           0000B5   207 _T1	=	0x00b5
                           0000B6   208 _WR	=	0x00b6
                           0000B7   209 _RD	=	0x00b7
                           0000B8   210 _PX0	=	0x00b8
                           0000B9   211 _PT0	=	0x00b9
                           0000BA   212 _PX1	=	0x00ba
                           0000BB   213 _PT1	=	0x00bb
                           0000BC   214 _PS	=	0x00bc
                           0000D0   215 _P	=	0x00d0
                           0000D1   216 _F1	=	0x00d1
                           0000D2   217 _OV	=	0x00d2
                           0000D3   218 _RS0	=	0x00d3
                           0000D4   219 _RS1	=	0x00d4
                           0000D5   220 _F0	=	0x00d5
                           0000D6   221 _AC	=	0x00d6
                           0000D7   222 _CY	=	0x00d7
                                    223 ;--------------------------------------------------------
                                    224 ; overlayable register banks
                                    225 ;--------------------------------------------------------
                                    226 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        227 	.ds 8
                                    228 ;--------------------------------------------------------
                                    229 ; internal ram data
                                    230 ;--------------------------------------------------------
                                    231 	.area DSEG    (DATA)
      000008                        232 _number::
      000008                        233 	.ds 2
      00000A                        234 _switchCount::
      00000A                        235 	.ds 2
      00000C                        236 _seg_table::
      00000C                        237 	.ds 10
                                    238 ;--------------------------------------------------------
                                    239 ; overlayable items in internal ram
                                    240 ;--------------------------------------------------------
                                    241 	.area	OSEG    (OVR,DATA)
                                    242 ;--------------------------------------------------------
                                    243 ; Stack segment in internal ram
                                    244 ;--------------------------------------------------------
                                    245 	.area SSEG
      000018                        246 __start__stack:
      000018                        247 	.ds	1
                                    248 
                                    249 ;--------------------------------------------------------
                                    250 ; indirectly addressable internal ram data
                                    251 ;--------------------------------------------------------
                                    252 	.area ISEG    (DATA)
                                    253 ;--------------------------------------------------------
                                    254 ; absolute internal ram data
                                    255 ;--------------------------------------------------------
                                    256 	.area IABS    (ABS,DATA)
                                    257 	.area IABS    (ABS,DATA)
                                    258 ;--------------------------------------------------------
                                    259 ; bit data
                                    260 ;--------------------------------------------------------
                                    261 	.area BSEG    (BIT)
                                    262 ;--------------------------------------------------------
                                    263 ; paged external ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area PSEG    (PAG,XDATA)
                                    266 ;--------------------------------------------------------
                                    267 ; uninitialized external ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area XSEG    (XDATA)
                                    270 ;--------------------------------------------------------
                                    271 ; absolute external ram data
                                    272 ;--------------------------------------------------------
                                    273 	.area XABS    (ABS,XDATA)
                                    274 ;--------------------------------------------------------
                                    275 ; initialized external ram data
                                    276 ;--------------------------------------------------------
                                    277 	.area XISEG   (XDATA)
                                    278 	.area HOME    (CODE)
                                    279 	.area GSINIT0 (CODE)
                                    280 	.area GSINIT1 (CODE)
                                    281 	.area GSINIT2 (CODE)
                                    282 	.area GSINIT3 (CODE)
                                    283 	.area GSINIT4 (CODE)
                                    284 	.area GSINIT5 (CODE)
                                    285 	.area GSINIT  (CODE)
                                    286 	.area GSFINAL (CODE)
                                    287 	.area CSEG    (CODE)
                                    288 ;--------------------------------------------------------
                                    289 ; interrupt vector
                                    290 ;--------------------------------------------------------
                                    291 	.area HOME    (CODE)
      000000                        292 __interrupt_vect:
      000000 02 00 4C         [24]  293 	ljmp	__sdcc_gsinit_startup
                                    294 ; restartable atomic support routines
      000003                        295 	.ds	5
      000008                        296 sdcc_atomic_exchange_rollback_start::
      000008 00               [12]  297 	nop
      000009 00               [12]  298 	nop
      00000A                        299 sdcc_atomic_exchange_pdata_impl:
      00000A E2               [24]  300 	movx	a, @r0
      00000B FB               [12]  301 	mov	r3, a
      00000C EA               [12]  302 	mov	a, r2
      00000D F2               [24]  303 	movx	@r0, a
      00000E 80 2C            [24]  304 	sjmp	sdcc_atomic_exchange_exit
      000010 00               [12]  305 	nop
      000011 00               [12]  306 	nop
      000012                        307 sdcc_atomic_exchange_xdata_impl:
      000012 E0               [24]  308 	movx	a, @dptr
      000013 FB               [12]  309 	mov	r3, a
      000014 EA               [12]  310 	mov	a, r2
      000015 F0               [24]  311 	movx	@dptr, a
      000016 80 24            [24]  312 	sjmp	sdcc_atomic_exchange_exit
      000018                        313 sdcc_atomic_compare_exchange_idata_impl:
      000018 E6               [12]  314 	mov	a, @r0
      000019 B5 02 02         [24]  315 	cjne	a, ar2, .+#5
      00001C EB               [12]  316 	mov	a, r3
      00001D F6               [12]  317 	mov	@r0, a
      00001E 22               [24]  318 	ret
      00001F 00               [12]  319 	nop
      000020                        320 sdcc_atomic_compare_exchange_pdata_impl:
      000020 E2               [24]  321 	movx	a, @r0
      000021 B5 02 02         [24]  322 	cjne	a, ar2, .+#5
      000024 EB               [12]  323 	mov	a, r3
      000025 F2               [24]  324 	movx	@r0, a
      000026 22               [24]  325 	ret
      000027 00               [12]  326 	nop
      000028                        327 sdcc_atomic_compare_exchange_xdata_impl:
      000028 E0               [24]  328 	movx	a, @dptr
      000029 B5 02 02         [24]  329 	cjne	a, ar2, .+#5
      00002C EB               [12]  330 	mov	a, r3
      00002D F0               [24]  331 	movx	@dptr, a
      00002E 22               [24]  332 	ret
      00002F                        333 sdcc_atomic_exchange_rollback_end::
                                    334 
      00002F                        335 sdcc_atomic_exchange_gptr_impl::
      00002F 30 F6 E0         [24]  336 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      000032 A8 82            [24]  337 	mov	r0, dpl
      000034 20 F5 D3         [24]  338 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      000037                        339 sdcc_atomic_exchange_idata_impl:
      000037 EA               [12]  340 	mov	a, r2
      000038 C6               [12]  341 	xch	a, @r0
      000039 F5 82            [12]  342 	mov	dpl, a
      00003B 22               [24]  343 	ret
      00003C                        344 sdcc_atomic_exchange_exit:
      00003C 8B 82            [24]  345 	mov	dpl, r3
      00003E 22               [24]  346 	ret
      00003F                        347 sdcc_atomic_compare_exchange_gptr_impl::
      00003F 30 F6 E6         [24]  348 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      000042 A8 82            [24]  349 	mov	r0, dpl
      000044 20 F5 D9         [24]  350 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      000047 80 CF            [24]  351 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    352 ;--------------------------------------------------------
                                    353 ; global & static initialisations
                                    354 ;--------------------------------------------------------
                                    355 	.area HOME    (CODE)
                                    356 	.area GSINIT  (CODE)
                                    357 	.area GSFINAL (CODE)
                                    358 	.area GSINIT  (CODE)
                                    359 	.globl __sdcc_gsinit_startup
                                    360 	.globl __sdcc_program_startup
                                    361 	.globl __start__stack
                                    362 	.globl __mcs51_genXINIT
                                    363 	.globl __mcs51_genXRAMCLEAR
                                    364 	.globl __mcs51_genRAMCLEAR
                                    365 ;	stcboot.c:12: unsigned int number = 0;
      0000A5 E4               [12]  366 	clr	a
      0000A6 F5 08            [12]  367 	mov	_number,a
      0000A8 F5 09            [12]  368 	mov	(_number + 1),a
                                    369 ;	stcboot.c:13: unsigned int switchCount = 0;
      0000AA F5 0A            [12]  370 	mov	_switchCount,a
      0000AC F5 0B            [12]  371 	mov	(_switchCount + 1),a
                                    372 ;	stcboot.c:16: unsigned char seg_table[] = {
      0000AE 75 0C C0         [24]  373 	mov	_seg_table,#0xc0
      0000B1 75 0D F9         [24]  374 	mov	(_seg_table + 0x0001),#0xf9
      0000B4 75 0E A4         [24]  375 	mov	(_seg_table + 0x0002),#0xa4
      0000B7 75 0F B0         [24]  376 	mov	(_seg_table + 0x0003),#0xb0
      0000BA 75 10 99         [24]  377 	mov	(_seg_table + 0x0004),#0x99
      0000BD 75 11 92         [24]  378 	mov	(_seg_table + 0x0005),#0x92
      0000C0 75 12 82         [24]  379 	mov	(_seg_table + 0x0006),#0x82
      0000C3 75 13 F8         [24]  380 	mov	(_seg_table + 0x0007),#0xf8
      0000C6 75 14 80         [24]  381 	mov	(_seg_table + 0x0008),#0x80
      0000C9 75 15 90         [24]  382 	mov	(_seg_table + 0x0009),#0x90
                                    383 	.area GSFINAL (CODE)
      0000CC 02 00 49         [24]  384 	ljmp	__sdcc_program_startup
                                    385 ;--------------------------------------------------------
                                    386 ; Home
                                    387 ;--------------------------------------------------------
                                    388 	.area HOME    (CODE)
                                    389 	.area HOME    (CODE)
      000049                        390 __sdcc_program_startup:
      000049 02 02 79         [24]  391 	ljmp	_main
                                    392 ;	return from main will return to caller
                                    393 ;--------------------------------------------------------
                                    394 ; code
                                    395 ;--------------------------------------------------------
                                    396 	.area CSEG    (CODE)
                                    397 ;------------------------------------------------------------
                                    398 ;Allocation info for local variables in function 'delay'
                                    399 ;------------------------------------------------------------
                                    400 ;time          Allocated to registers 
                                    401 ;------------------------------------------------------------
                                    402 ;	stcboot.c:21: void delay(unsigned int time) {
                                    403 ;	-----------------------------------------
                                    404 ;	 function delay
                                    405 ;	-----------------------------------------
      0000CF                        406 _delay:
                           000007   407 	ar7 = 0x07
                           000006   408 	ar6 = 0x06
                           000005   409 	ar5 = 0x05
                           000004   410 	ar4 = 0x04
                           000003   411 	ar3 = 0x03
                           000002   412 	ar2 = 0x02
                           000001   413 	ar1 = 0x01
                           000000   414 	ar0 = 0x00
      0000CF AE 82            [24]  415 	mov	r6, dpl
      0000D1 AF 83            [24]  416 	mov	r7, dph
                                    417 ;	stcboot.c:22: while (time--);
      0000D3                        418 00101$:
      0000D3 8E 04            [24]  419 	mov	ar4,r6
      0000D5 8F 05            [24]  420 	mov	ar5,r7
      0000D7 1E               [12]  421 	dec	r6
      0000D8 BE FF 01         [24]  422 	cjne	r6,#0xff,00113$
      0000DB 1F               [12]  423 	dec	r7
      0000DC                        424 00113$:
      0000DC EC               [12]  425 	mov	a,r4
      0000DD 4D               [12]  426 	orl	a,r5
      0000DE 70 F3            [24]  427 	jnz	00101$
                                    428 ;	stcboot.c:23: }
      0000E0 22               [24]  429 	ret
                                    430 ;------------------------------------------------------------
                                    431 ;Allocation info for local variables in function 'binary_count'
                                    432 ;------------------------------------------------------------
                                    433 ;count         Allocated to registers r7 
                                    434 ;------------------------------------------------------------
                                    435 ;	stcboot.c:26: int binary_count(void) {
                                    436 ;	-----------------------------------------
                                    437 ;	 function binary_count
                                    438 ;	-----------------------------------------
      0000E1                        439 _binary_count:
                                    440 ;	stcboot.c:28: if((P3 & 0x04) == 0){
      0000E1 E5 B0            [12]  441 	mov	a,_P3
      0000E3 20 E2 0C         [24]  442 	jb	acc.2,00112$
                                    443 ;	stcboot.c:29: switchCount++;
      0000E6 05 0A            [12]  444 	inc	_switchCount
      0000E8 E4               [12]  445 	clr	a
      0000E9 B5 0A 02         [24]  446 	cjne	a,_switchCount,00131$
      0000EC 05 0B            [12]  447 	inc	(_switchCount + 1)
      0000EE                        448 00131$:
                                    449 ;	stcboot.c:30: return 0;
      0000EE 90 00 00         [24]  450 	mov	dptr,#0x0000
                                    451 ;	stcboot.c:33: while (1) {
      0000F1 22               [24]  452 	ret
      0000F2                        453 00112$:
      0000F2 7F 00            [12]  454 	mov	r7,#0x00
      0000F4                        455 00104$:
                                    456 ;	stcboot.c:34: P1 = ~count;  // Output inverted count to LEDs
      0000F4 EF               [12]  457 	mov	a,r7
      0000F5 F4               [12]  458 	cpl	a
      0000F6 F5 90            [12]  459 	mov	_P1,a
                                    460 ;	stcboot.c:35: delay(500);
      0000F8 90 01 F4         [24]  461 	mov	dptr,#0x01f4
      0000FB C0 07            [24]  462 	push	ar7
      0000FD 12 00 CF         [24]  463 	lcall	_delay
      000100 D0 07            [24]  464 	pop	ar7
                                    465 ;	stcboot.c:36: count++;
      000102 0F               [12]  466 	inc	r7
                                    467 ;	stcboot.c:37: if(count == 255){
      000103 BF FF EE         [24]  468 	cjne	r7,#0xff,00104$
                                    469 ;	stcboot.c:38: return 0;
      000106 90 00 00         [24]  470 	mov	dptr,#0x0000
                                    471 ;	stcboot.c:42: }
      000109 22               [24]  472 	ret
                                    473 ;------------------------------------------------------------
                                    474 ;Allocation info for local variables in function 'cylon'
                                    475 ;------------------------------------------------------------
                                    476 ;pos           Allocated to registers r7 
                                    477 ;------------------------------------------------------------
                                    478 ;	stcboot.c:45: void cylon(void) {
                                    479 ;	-----------------------------------------
                                    480 ;	 function cylon
                                    481 ;	-----------------------------------------
      00010A                        482 _cylon:
                                    483 ;	stcboot.c:46: unsigned char pos = 1;
      00010A 7F 01            [12]  484 	mov	r7,#0x01
                                    485 ;	stcboot.c:47: while (1) {
      00010C                        486 00104$:
                                    487 ;	stcboot.c:48: P1 = ~pos;  // Invert output to turn LEDs on
      00010C EF               [12]  488 	mov	a,r7
      00010D F4               [12]  489 	cpl	a
      00010E F5 90            [12]  490 	mov	_P1,a
                                    491 ;	stcboot.c:49: delay(5000);
      000110 90 13 88         [24]  492 	mov	dptr,#0x1388
      000113 C0 07            [24]  493 	push	ar7
      000115 12 00 CF         [24]  494 	lcall	_delay
      000118 D0 07            [24]  495 	pop	ar7
                                    496 ;	stcboot.c:50: pos <<= 1;
      00011A EF               [12]  497 	mov	a,r7
      00011B 2F               [12]  498 	add	a,r7
                                    499 ;	stcboot.c:51: if (pos == 0) pos = 1;  // Reset to start position
      00011C FF               [12]  500 	mov	r7,a
      00011D 70 ED            [24]  501 	jnz	00104$
      00011F 7F 01            [12]  502 	mov	r7,#0x01
                                    503 ;	stcboot.c:53: }
      000121 80 E9            [24]  504 	sjmp	00104$
                                    505 ;------------------------------------------------------------
                                    506 ;Allocation info for local variables in function 'dual_cylon'
                                    507 ;------------------------------------------------------------
                                    508 ;pos1          Allocated to registers r7 
                                    509 ;pos2          Allocated to registers r6 
                                    510 ;------------------------------------------------------------
                                    511 ;	stcboot.c:56: void dual_cylon(void) {
                                    512 ;	-----------------------------------------
                                    513 ;	 function dual_cylon
                                    514 ;	-----------------------------------------
      000123                        515 _dual_cylon:
                                    516 ;	stcboot.c:57: unsigned char pos1 = 1, pos2 = 0x80;
      000123 7F 01            [12]  517 	mov	r7,#0x01
      000125 7E 80            [12]  518 	mov	r6,#0x80
                                    519 ;	stcboot.c:58: while (1) {
      000127                        520 00104$:
                                    521 ;	stcboot.c:59: P1 = ~(pos1 | pos2);  // Invert output for correct LED logic
      000127 EE               [12]  522 	mov	a,r6
      000128 4F               [12]  523 	orl	a,r7
      000129 F4               [12]  524 	cpl	a
      00012A F5 90            [12]  525 	mov	_P1,a
                                    526 ;	stcboot.c:60: delay(5000);
      00012C 90 13 88         [24]  527 	mov	dptr,#0x1388
      00012F C0 07            [24]  528 	push	ar7
      000131 C0 06            [24]  529 	push	ar6
      000133 12 00 CF         [24]  530 	lcall	_delay
      000136 D0 06            [24]  531 	pop	ar6
      000138 D0 07            [24]  532 	pop	ar7
                                    533 ;	stcboot.c:61: pos1 <<= 1;
      00013A EF               [12]  534 	mov	a,r7
      00013B 2F               [12]  535 	add	a,r7
      00013C FF               [12]  536 	mov	r7,a
                                    537 ;	stcboot.c:62: pos2 >>= 1;
      00013D EE               [12]  538 	mov	a,r6
      00013E C3               [12]  539 	clr	c
      00013F 13               [12]  540 	rrc	a
      000140 FE               [12]  541 	mov	r6,a
                                    542 ;	stcboot.c:63: if (pos1 == 0x80) {  // Reset condition
      000141 BF 80 E3         [24]  543 	cjne	r7,#0x80,00104$
                                    544 ;	stcboot.c:64: pos1 = 1;
      000144 7F 01            [12]  545 	mov	r7,#0x01
                                    546 ;	stcboot.c:65: pos2 = 0x80;
      000146 7E 80            [12]  547 	mov	r6,#0x80
                                    548 ;	stcboot.c:68: }
      000148 80 DD            [24]  549 	sjmp	00104$
                                    550 ;------------------------------------------------------------
                                    551 ;Allocation info for local variables in function 'display_number'
                                    552 ;------------------------------------------------------------
                                    553 ;temp          Allocated to registers r6 r7 
                                    554 ;ones          Allocated to registers r4 
                                    555 ;tens          Allocated to registers r3 
                                    556 ;hundreds      Allocated to registers r2 
                                    557 ;thousands     Allocated to registers r6 
                                    558 ;------------------------------------------------------------
                                    559 ;	stcboot.c:71: void display_number(void) {
                                    560 ;	-----------------------------------------
                                    561 ;	 function display_number
                                    562 ;	-----------------------------------------
      00014A                        563 _display_number:
                                    564 ;	stcboot.c:72: unsigned int temp = number;
      00014A AE 08            [24]  565 	mov	r6,_number
      00014C AF 09            [24]  566 	mov	r7,(_number + 1)
                                    567 ;	stcboot.c:74: unsigned char ones = temp % 10;
      00014E 75 16 0A         [24]  568 	mov	__moduint_PARM_2,#0x0a
      000151 75 17 00         [24]  569 	mov	(__moduint_PARM_2 + 1),#0x00
      000154 8E 82            [24]  570 	mov	dpl, r6
      000156 8F 83            [24]  571 	mov	dph, r7
      000158 C0 07            [24]  572 	push	ar7
      00015A C0 06            [24]  573 	push	ar6
      00015C 12 02 A7         [24]  574 	lcall	__moduint
      00015F AC 82            [24]  575 	mov	r4, dpl
      000161 D0 06            [24]  576 	pop	ar6
      000163 D0 07            [24]  577 	pop	ar7
                                    578 ;	stcboot.c:75: temp /= 10;
      000165 75 16 0A         [24]  579 	mov	__divuint_PARM_2,#0x0a
      000168 75 17 00         [24]  580 	mov	(__divuint_PARM_2 + 1),#0x00
                                    581 ;	stcboot.c:76: unsigned char tens = temp % 10;
      00016B 8E 82            [24]  582 	mov	dpl, r6
      00016D 8F 83            [24]  583 	mov	dph, r7
      00016F C0 04            [24]  584 	push	ar4
      000171 12 02 7E         [24]  585 	lcall	__divuint
      000174 AE 82            [24]  586 	mov	r6, dpl
      000176 AF 83            [24]  587 	mov	r7, dph
      000178 D0 04            [24]  588 	pop	ar4
      00017A 75 16 0A         [24]  589 	mov	__moduint_PARM_2,#0x0a
      00017D 75 17 00         [24]  590 	mov	(__moduint_PARM_2 + 1),#0x00
      000180 8E 82            [24]  591 	mov	dpl, r6
      000182 8F 83            [24]  592 	mov	dph, r7
      000184 C0 07            [24]  593 	push	ar7
      000186 C0 06            [24]  594 	push	ar6
      000188 C0 04            [24]  595 	push	ar4
      00018A 12 02 A7         [24]  596 	lcall	__moduint
      00018D AB 82            [24]  597 	mov	r3, dpl
      00018F D0 04            [24]  598 	pop	ar4
      000191 D0 06            [24]  599 	pop	ar6
      000193 D0 07            [24]  600 	pop	ar7
                                    601 ;	stcboot.c:77: temp /= 10;
      000195 75 16 0A         [24]  602 	mov	__divuint_PARM_2,#0x0a
      000198 75 17 00         [24]  603 	mov	(__divuint_PARM_2 + 1),#0x00
                                    604 ;	stcboot.c:78: unsigned char hundreds = temp % 10;
      00019B 8E 82            [24]  605 	mov	dpl, r6
      00019D 8F 83            [24]  606 	mov	dph, r7
      00019F C0 04            [24]  607 	push	ar4
      0001A1 C0 03            [24]  608 	push	ar3
      0001A3 12 02 7E         [24]  609 	lcall	__divuint
      0001A6 AE 82            [24]  610 	mov	r6, dpl
      0001A8 AF 83            [24]  611 	mov	r7, dph
      0001AA D0 03            [24]  612 	pop	ar3
      0001AC D0 04            [24]  613 	pop	ar4
      0001AE 75 16 0A         [24]  614 	mov	__moduint_PARM_2,#0x0a
      0001B1 75 17 00         [24]  615 	mov	(__moduint_PARM_2 + 1),#0x00
      0001B4 8E 82            [24]  616 	mov	dpl, r6
      0001B6 8F 83            [24]  617 	mov	dph, r7
      0001B8 C0 07            [24]  618 	push	ar7
      0001BA C0 06            [24]  619 	push	ar6
      0001BC C0 04            [24]  620 	push	ar4
      0001BE C0 03            [24]  621 	push	ar3
      0001C0 12 02 A7         [24]  622 	lcall	__moduint
      0001C3 AA 82            [24]  623 	mov	r2, dpl
      0001C5 D0 03            [24]  624 	pop	ar3
      0001C7 D0 04            [24]  625 	pop	ar4
      0001C9 D0 06            [24]  626 	pop	ar6
      0001CB D0 07            [24]  627 	pop	ar7
                                    628 ;	stcboot.c:79: temp /= 10;
      0001CD 75 16 0A         [24]  629 	mov	__divuint_PARM_2,#0x0a
      0001D0 75 17 00         [24]  630 	mov	(__divuint_PARM_2 + 1),#0x00
                                    631 ;	stcboot.c:80: unsigned char thousands = temp % 10;
      0001D3 8E 82            [24]  632 	mov	dpl, r6
      0001D5 8F 83            [24]  633 	mov	dph, r7
      0001D7 C0 04            [24]  634 	push	ar4
      0001D9 C0 03            [24]  635 	push	ar3
      0001DB C0 02            [24]  636 	push	ar2
      0001DD 12 02 7E         [24]  637 	lcall	__divuint
      0001E0 AE 82            [24]  638 	mov	r6, dpl
      0001E2 75 F0 0A         [24]  639 	mov	b,#0x0a
      0001E5 EE               [12]  640 	mov	a,r6
      0001E6 84               [48]  641 	div	ab
                                    642 ;	stcboot.c:82: P0 = seg_table[thousands];
      0001E7 E5 F0            [12]  643 	mov	a,b
      0001E9 24 0C            [12]  644 	add	a, #_seg_table
      0001EB F9               [12]  645 	mov	r1,a
      0001EC 87 80            [24]  646 	mov	_P0,@r1
                                    647 ;	stcboot.c:83: P2_0 = 0;
                                    648 ;	assignBit
      0001EE C2 A0            [12]  649 	clr	_P2_0
                                    650 ;	stcboot.c:84: delay(500);
      0001F0 90 01 F4         [24]  651 	mov	dptr,#0x01f4
      0001F3 12 00 CF         [24]  652 	lcall	_delay
      0001F6 D0 02            [24]  653 	pop	ar2
                                    654 ;	stcboot.c:85: P2_0 = 1;
                                    655 ;	assignBit
      0001F8 D2 A0            [12]  656 	setb	_P2_0
                                    657 ;	stcboot.c:87: P0 = seg_table[hundreds];
      0001FA EA               [12]  658 	mov	a,r2
      0001FB 24 0C            [12]  659 	add	a, #_seg_table
      0001FD F9               [12]  660 	mov	r1,a
      0001FE 87 80            [24]  661 	mov	_P0,@r1
                                    662 ;	stcboot.c:88: P2_1 = 0;
                                    663 ;	assignBit
      000200 C2 A1            [12]  664 	clr	_P2_1
                                    665 ;	stcboot.c:89: delay(500);
      000202 90 01 F4         [24]  666 	mov	dptr,#0x01f4
      000205 12 00 CF         [24]  667 	lcall	_delay
      000208 D0 03            [24]  668 	pop	ar3
                                    669 ;	stcboot.c:90: P2_1 = 1;
                                    670 ;	assignBit
      00020A D2 A1            [12]  671 	setb	_P2_1
                                    672 ;	stcboot.c:92: P0 = seg_table[tens];
      00020C EB               [12]  673 	mov	a,r3
      00020D 24 0C            [12]  674 	add	a, #_seg_table
      00020F F9               [12]  675 	mov	r1,a
      000210 87 80            [24]  676 	mov	_P0,@r1
                                    677 ;	stcboot.c:93: P2_2 = 0;
                                    678 ;	assignBit
      000212 C2 A2            [12]  679 	clr	_P2_2
                                    680 ;	stcboot.c:94: delay(500);
      000214 90 01 F4         [24]  681 	mov	dptr,#0x01f4
      000217 12 00 CF         [24]  682 	lcall	_delay
      00021A D0 04            [24]  683 	pop	ar4
                                    684 ;	stcboot.c:95: P2_2 = 1;
                                    685 ;	assignBit
      00021C D2 A2            [12]  686 	setb	_P2_2
                                    687 ;	stcboot.c:97: P0 = seg_table[ones];
      00021E EC               [12]  688 	mov	a,r4
      00021F 24 0C            [12]  689 	add	a, #_seg_table
      000221 F9               [12]  690 	mov	r1,a
      000222 87 80            [24]  691 	mov	_P0,@r1
                                    692 ;	stcboot.c:98: P2_3 = 0;
                                    693 ;	assignBit
      000224 C2 A3            [12]  694 	clr	_P2_3
                                    695 ;	stcboot.c:99: delay(500);
      000226 90 01 F4         [24]  696 	mov	dptr,#0x01f4
      000229 12 00 CF         [24]  697 	lcall	_delay
                                    698 ;	stcboot.c:100: P2_3 = 1;
                                    699 ;	assignBit
      00022C D2 A3            [12]  700 	setb	_P2_3
                                    701 ;	stcboot.c:101: }
      00022E 22               [24]  702 	ret
                                    703 ;------------------------------------------------------------
                                    704 ;Allocation info for local variables in function 'number_clicker'
                                    705 ;------------------------------------------------------------
                                    706 ;	stcboot.c:105: void number_clicker(void) {
                                    707 ;	-----------------------------------------
                                    708 ;	 function number_clicker
                                    709 ;	-----------------------------------------
      00022F                        710 _number_clicker:
                                    711 ;	stcboot.c:106: while (1) {
      00022F                        712 00111$:
                                    713 ;	stcboot.c:107: if ((P3 & 0x08) == 0) { // Button Pressed
      00022F E5 B0            [12]  714 	mov	a,_P3
      000231 20 E3 1E         [24]  715 	jb	acc.3,00104$
                                    716 ;	stcboot.c:108: delay(20000);
      000234 90 4E 20         [24]  717 	mov	dptr,#0x4e20
      000237 12 00 CF         [24]  718 	lcall	_delay
                                    719 ;	stcboot.c:109: number++;
      00023A 05 08            [12]  720 	inc	_number
      00023C E4               [12]  721 	clr	a
      00023D B5 08 02         [24]  722 	cjne	a,_number,00146$
      000240 05 09            [12]  723 	inc	(_number + 1)
      000242                        724 00146$:
                                    725 ;	stcboot.c:110: if (number > 9999) number = 0; // Roll over to 0
      000242 C3               [12]  726 	clr	c
      000243 74 0F            [12]  727 	mov	a,#0x0f
      000245 95 08            [12]  728 	subb	a,_number
      000247 74 27            [12]  729 	mov	a,#0x27
      000249 95 09            [12]  730 	subb	a,(_number + 1)
      00024B 50 05            [24]  731 	jnc	00104$
      00024D E4               [12]  732 	clr	a
      00024E F5 08            [12]  733 	mov	_number,a
      000250 F5 09            [12]  734 	mov	(_number + 1),a
      000252                        735 00104$:
                                    736 ;	stcboot.c:116: if ((P3 & 0x04) == 0) { // Button Pressed
      000252 E5 B0            [12]  737 	mov	a,_P3
      000254 20 E2 1D         [24]  738 	jb	acc.2,00109$
                                    739 ;	stcboot.c:117: delay(20000);
      000257 90 4E 20         [24]  740 	mov	dptr,#0x4e20
      00025A 12 00 CF         [24]  741 	lcall	_delay
                                    742 ;	stcboot.c:118: if (number == 0) number = 9999; // Roll over to 9999
      00025D E5 08            [12]  743 	mov	a,_number
      00025F 45 09            [12]  744 	orl	a,(_number + 1)
      000261 70 08            [24]  745 	jnz	00106$
      000263 75 08 0F         [24]  746 	mov	_number,#0x0f
      000266 75 09 27         [24]  747 	mov	(_number + 1),#0x27
      000269 80 09            [24]  748 	sjmp	00109$
      00026B                        749 00106$:
                                    750 ;	stcboot.c:119: else number--;
      00026B 15 08            [12]  751 	dec	_number
      00026D 74 FF            [12]  752 	mov	a,#0xff
      00026F B5 08 02         [24]  753 	cjne	a,_number,00150$
      000272 15 09            [12]  754 	dec	(_number + 1)
      000274                        755 00150$:
      000274                        756 00109$:
                                    757 ;	stcboot.c:124: display_number();
      000274 12 01 4A         [24]  758 	lcall	_display_number
                                    759 ;	stcboot.c:126: }
      000277 80 B6            [24]  760 	sjmp	00111$
                                    761 ;------------------------------------------------------------
                                    762 ;Allocation info for local variables in function 'main'
                                    763 ;------------------------------------------------------------
                                    764 ;	stcboot.c:129: void main(void) {
                                    765 ;	-----------------------------------------
                                    766 ;	 function main
                                    767 ;	-----------------------------------------
      000279                        768 _main:
                                    769 ;	stcboot.c:130: while (1) {
      000279                        770 00102$:
                                    771 ;	stcboot.c:134: number_clicker();
      000279 12 02 2F         [24]  772 	lcall	_number_clicker
                                    773 ;	stcboot.c:158: }
      00027C 80 FB            [24]  774 	sjmp	00102$
                                    775 	.area CSEG    (CODE)
                                    776 	.area CONST   (CODE)
                                    777 	.area XINIT   (CODE)
                                    778 	.area CABS    (ABS,CODE)
