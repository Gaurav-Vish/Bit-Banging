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
                                     13 	.globl _Timer0_isr
                                     14 	.globl _Init_Timer0
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
                                    111 	.globl _seg_table
                                    112 	.globl _buttonIndex
                                    113 	.globl _currentmillis
                                    114 	.globl _startmillis
                                    115 	.globl _switchCount
                                    116 	.globl _number
                                    117 	.globl _delay
                                    118 	.globl _binary_count
                                    119 	.globl _cylon
                                    120 	.globl _dual_cylon
                                    121 	.globl _display_number
                                    122 	.globl _number_clicker
                                    123 ;--------------------------------------------------------
                                    124 ; special function registers
                                    125 ;--------------------------------------------------------
                                    126 	.area RSEG    (ABS,DATA)
      000000                        127 	.org 0x0000
                           000080   128 _P0	=	0x0080
                           000081   129 _SP	=	0x0081
                           000082   130 _DPL	=	0x0082
                           000083   131 _DPH	=	0x0083
                           000087   132 _PCON	=	0x0087
                           000088   133 _TCON	=	0x0088
                           000089   134 _TMOD	=	0x0089
                           00008A   135 _TL0	=	0x008a
                           00008B   136 _TL1	=	0x008b
                           00008C   137 _TH0	=	0x008c
                           00008D   138 _TH1	=	0x008d
                           000090   139 _P1	=	0x0090
                           000098   140 _SCON	=	0x0098
                           000099   141 _SBUF	=	0x0099
                           0000A0   142 _P2	=	0x00a0
                           0000A8   143 _IE	=	0x00a8
                           0000B0   144 _P3	=	0x00b0
                           0000B8   145 _IP	=	0x00b8
                           0000D0   146 _PSW	=	0x00d0
                           0000E0   147 _ACC	=	0x00e0
                           0000F0   148 _B	=	0x00f0
                                    149 ;--------------------------------------------------------
                                    150 ; special function bits
                                    151 ;--------------------------------------------------------
                                    152 	.area RSEG    (ABS,DATA)
      000000                        153 	.org 0x0000
                           000080   154 _P0_0	=	0x0080
                           000081   155 _P0_1	=	0x0081
                           000082   156 _P0_2	=	0x0082
                           000083   157 _P0_3	=	0x0083
                           000084   158 _P0_4	=	0x0084
                           000085   159 _P0_5	=	0x0085
                           000086   160 _P0_6	=	0x0086
                           000087   161 _P0_7	=	0x0087
                           000088   162 _IT0	=	0x0088
                           000089   163 _IE0	=	0x0089
                           00008A   164 _IT1	=	0x008a
                           00008B   165 _IE1	=	0x008b
                           00008C   166 _TR0	=	0x008c
                           00008D   167 _TF0	=	0x008d
                           00008E   168 _TR1	=	0x008e
                           00008F   169 _TF1	=	0x008f
                           000090   170 _P1_0	=	0x0090
                           000091   171 _P1_1	=	0x0091
                           000092   172 _P1_2	=	0x0092
                           000093   173 _P1_3	=	0x0093
                           000094   174 _P1_4	=	0x0094
                           000095   175 _P1_5	=	0x0095
                           000096   176 _P1_6	=	0x0096
                           000097   177 _P1_7	=	0x0097
                           000098   178 _RI	=	0x0098
                           000099   179 _TI	=	0x0099
                           00009A   180 _RB8	=	0x009a
                           00009B   181 _TB8	=	0x009b
                           00009C   182 _REN	=	0x009c
                           00009D   183 _SM2	=	0x009d
                           00009E   184 _SM1	=	0x009e
                           00009F   185 _SM0	=	0x009f
                           0000A0   186 _P2_0	=	0x00a0
                           0000A1   187 _P2_1	=	0x00a1
                           0000A2   188 _P2_2	=	0x00a2
                           0000A3   189 _P2_3	=	0x00a3
                           0000A4   190 _P2_4	=	0x00a4
                           0000A5   191 _P2_5	=	0x00a5
                           0000A6   192 _P2_6	=	0x00a6
                           0000A7   193 _P2_7	=	0x00a7
                           0000A8   194 _EX0	=	0x00a8
                           0000A9   195 _ET0	=	0x00a9
                           0000AA   196 _EX1	=	0x00aa
                           0000AB   197 _ET1	=	0x00ab
                           0000AC   198 _ES	=	0x00ac
                           0000AF   199 _EA	=	0x00af
                           0000B0   200 _P3_0	=	0x00b0
                           0000B1   201 _P3_1	=	0x00b1
                           0000B2   202 _P3_2	=	0x00b2
                           0000B3   203 _P3_3	=	0x00b3
                           0000B4   204 _P3_4	=	0x00b4
                           0000B5   205 _P3_5	=	0x00b5
                           0000B6   206 _P3_6	=	0x00b6
                           0000B7   207 _P3_7	=	0x00b7
                           0000B0   208 _RXD	=	0x00b0
                           0000B1   209 _TXD	=	0x00b1
                           0000B2   210 _INT0	=	0x00b2
                           0000B3   211 _INT1	=	0x00b3
                           0000B4   212 _T0	=	0x00b4
                           0000B5   213 _T1	=	0x00b5
                           0000B6   214 _WR	=	0x00b6
                           0000B7   215 _RD	=	0x00b7
                           0000B8   216 _PX0	=	0x00b8
                           0000B9   217 _PT0	=	0x00b9
                           0000BA   218 _PX1	=	0x00ba
                           0000BB   219 _PT1	=	0x00bb
                           0000BC   220 _PS	=	0x00bc
                           0000D0   221 _P	=	0x00d0
                           0000D1   222 _F1	=	0x00d1
                           0000D2   223 _OV	=	0x00d2
                           0000D3   224 _RS0	=	0x00d3
                           0000D4   225 _RS1	=	0x00d4
                           0000D5   226 _F0	=	0x00d5
                           0000D6   227 _AC	=	0x00d6
                           0000D7   228 _CY	=	0x00d7
                                    229 ;--------------------------------------------------------
                                    230 ; overlayable register banks
                                    231 ;--------------------------------------------------------
                                    232 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        233 	.ds 8
                                    234 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        235 	.ds 8
                                    236 ;--------------------------------------------------------
                                    237 ; overlayable bit register bank
                                    238 ;--------------------------------------------------------
                                    239 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        240 bits:
      000020                        241 	.ds 1
                           008000   242 	b0 = bits[0]
                           008100   243 	b1 = bits[1]
                           008200   244 	b2 = bits[2]
                           008300   245 	b3 = bits[3]
                           008400   246 	b4 = bits[4]
                           008500   247 	b5 = bits[5]
                           008600   248 	b6 = bits[6]
                           008700   249 	b7 = bits[7]
                                    250 ;--------------------------------------------------------
                                    251 ; internal ram data
                                    252 ;--------------------------------------------------------
                                    253 	.area DSEG    (DATA)
      000021                        254 _number::
      000021                        255 	.ds 2
      000023                        256 _switchCount::
      000023                        257 	.ds 2
      000025                        258 _startmillis::
      000025                        259 	.ds 4
      000029                        260 _currentmillis::
      000029                        261 	.ds 4
      00002D                        262 _buttonIndex::
      00002D                        263 	.ds 2
      00002F                        264 _seg_table::
      00002F                        265 	.ds 10
                                    266 ;--------------------------------------------------------
                                    267 ; overlayable items in internal ram
                                    268 ;--------------------------------------------------------
                                    269 	.area	OSEG    (OVR,DATA)
                                    270 ;--------------------------------------------------------
                                    271 ; Stack segment in internal ram
                                    272 ;--------------------------------------------------------
                                    273 	.area SSEG
      000039                        274 __start__stack:
      000039                        275 	.ds	1
                                    276 
                                    277 ;--------------------------------------------------------
                                    278 ; indirectly addressable internal ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area ISEG    (DATA)
                                    281 ;--------------------------------------------------------
                                    282 ; absolute internal ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area IABS    (ABS,DATA)
                                    285 	.area IABS    (ABS,DATA)
                                    286 ;--------------------------------------------------------
                                    287 ; bit data
                                    288 ;--------------------------------------------------------
                                    289 	.area BSEG    (BIT)
                                    290 ;--------------------------------------------------------
                                    291 ; paged external ram data
                                    292 ;--------------------------------------------------------
                                    293 	.area PSEG    (PAG,XDATA)
                                    294 ;--------------------------------------------------------
                                    295 ; uninitialized external ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area XSEG    (XDATA)
                                    298 ;--------------------------------------------------------
                                    299 ; absolute external ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area XABS    (ABS,XDATA)
                                    302 ;--------------------------------------------------------
                                    303 ; initialized external ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area XISEG   (XDATA)
                                    306 	.area HOME    (CODE)
                                    307 	.area GSINIT0 (CODE)
                                    308 	.area GSINIT1 (CODE)
                                    309 	.area GSINIT2 (CODE)
                                    310 	.area GSINIT3 (CODE)
                                    311 	.area GSINIT4 (CODE)
                                    312 	.area GSINIT5 (CODE)
                                    313 	.area GSINIT  (CODE)
                                    314 	.area GSFINAL (CODE)
                                    315 	.area CSEG    (CODE)
                                    316 ;--------------------------------------------------------
                                    317 ; interrupt vector
                                    318 ;--------------------------------------------------------
                                    319 	.area HOME    (CODE)
      000000                        320 __interrupt_vect:
      000000 02 00 7E         [24]  321 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  322 	reti
      000004                        323 	.ds	7
      00000B 02 01 15         [24]  324 	ljmp	_Timer0_isr
                                    325 ; restartable atomic support routines
      00000E                        326 	.ds	2
      000010                        327 sdcc_atomic_exchange_rollback_start::
      000010 00               [12]  328 	nop
      000011 00               [12]  329 	nop
      000012                        330 sdcc_atomic_exchange_pdata_impl:
      000012 E2               [24]  331 	movx	a, @r0
      000013 FB               [12]  332 	mov	r3, a
      000014 EA               [12]  333 	mov	a, r2
      000015 F2               [24]  334 	movx	@r0, a
      000016 80 2C            [24]  335 	sjmp	sdcc_atomic_exchange_exit
      000018 00               [12]  336 	nop
      000019 00               [12]  337 	nop
      00001A                        338 sdcc_atomic_exchange_xdata_impl:
      00001A E0               [24]  339 	movx	a, @dptr
      00001B FB               [12]  340 	mov	r3, a
      00001C EA               [12]  341 	mov	a, r2
      00001D F0               [24]  342 	movx	@dptr, a
      00001E 80 24            [24]  343 	sjmp	sdcc_atomic_exchange_exit
      000020                        344 sdcc_atomic_compare_exchange_idata_impl:
      000020 E6               [12]  345 	mov	a, @r0
      000021 B5 02 02         [24]  346 	cjne	a, ar2, .+#5
      000024 EB               [12]  347 	mov	a, r3
      000025 F6               [12]  348 	mov	@r0, a
      000026 22               [24]  349 	ret
      000027 00               [12]  350 	nop
      000028                        351 sdcc_atomic_compare_exchange_pdata_impl:
      000028 E2               [24]  352 	movx	a, @r0
      000029 B5 02 02         [24]  353 	cjne	a, ar2, .+#5
      00002C EB               [12]  354 	mov	a, r3
      00002D F2               [24]  355 	movx	@r0, a
      00002E 22               [24]  356 	ret
      00002F 00               [12]  357 	nop
      000030                        358 sdcc_atomic_compare_exchange_xdata_impl:
      000030 E0               [24]  359 	movx	a, @dptr
      000031 B5 02 02         [24]  360 	cjne	a, ar2, .+#5
      000034 EB               [12]  361 	mov	a, r3
      000035 F0               [24]  362 	movx	@dptr, a
      000036 22               [24]  363 	ret
      000037                        364 sdcc_atomic_exchange_rollback_end::
                                    365 
      000037                        366 sdcc_atomic_exchange_gptr_impl::
      000037 30 F6 E0         [24]  367 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      00003A A8 82            [24]  368 	mov	r0, dpl
      00003C 20 F5 D3         [24]  369 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      00003F                        370 sdcc_atomic_exchange_idata_impl:
      00003F EA               [12]  371 	mov	a, r2
      000040 C6               [12]  372 	xch	a, @r0
      000041 F5 82            [12]  373 	mov	dpl, a
      000043 22               [24]  374 	ret
      000044                        375 sdcc_atomic_exchange_exit:
      000044 8B 82            [24]  376 	mov	dpl, r3
      000046 22               [24]  377 	ret
      000047                        378 sdcc_atomic_compare_exchange_gptr_impl::
      000047 30 F6 E6         [24]  379 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      00004A A8 82            [24]  380 	mov	r0, dpl
      00004C 20 F5 D9         [24]  381 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      00004F 80 CF            [24]  382 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    383 ;--------------------------------------------------------
                                    384 ; global & static initialisations
                                    385 ;--------------------------------------------------------
                                    386 	.area HOME    (CODE)
                                    387 	.area GSINIT  (CODE)
                                    388 	.area GSFINAL (CODE)
                                    389 	.area GSINIT  (CODE)
                                    390 	.globl __sdcc_gsinit_startup
                                    391 	.globl __sdcc_program_startup
                                    392 	.globl __start__stack
                                    393 	.globl __mcs51_genXINIT
                                    394 	.globl __mcs51_genXRAMCLEAR
                                    395 	.globl __mcs51_genRAMCLEAR
                                    396 ;	.\stcboot.c:14: unsigned int number = 0;
      0000D7 E4               [12]  397 	clr	a
      0000D8 F5 21            [12]  398 	mov	_number,a
      0000DA F5 22            [12]  399 	mov	(_number + 1),a
                                    400 ;	.\stcboot.c:15: unsigned int switchCount = 0;
      0000DC F5 23            [12]  401 	mov	_switchCount,a
      0000DE F5 24            [12]  402 	mov	(_switchCount + 1),a
                                    403 ;	.\stcboot.c:18: unsigned int buttonIndex = 0;
      0000E0 F5 2D            [12]  404 	mov	_buttonIndex,a
      0000E2 F5 2E            [12]  405 	mov	(_buttonIndex + 1),a
                                    406 ;	.\stcboot.c:21: unsigned char seg_table[] = {
      0000E4 75 2F C0         [24]  407 	mov	_seg_table,#0xc0
      0000E7 75 30 F9         [24]  408 	mov	(_seg_table + 0x0001),#0xf9
      0000EA 75 31 A4         [24]  409 	mov	(_seg_table + 0x0002),#0xa4
      0000ED 75 32 B0         [24]  410 	mov	(_seg_table + 0x0003),#0xb0
      0000F0 75 33 99         [24]  411 	mov	(_seg_table + 0x0004),#0x99
      0000F3 75 34 92         [24]  412 	mov	(_seg_table + 0x0005),#0x92
      0000F6 75 35 82         [24]  413 	mov	(_seg_table + 0x0006),#0x82
      0000F9 75 36 F8         [24]  414 	mov	(_seg_table + 0x0007),#0xf8
      0000FC 75 37 80         [24]  415 	mov	(_seg_table + 0x0008),#0x80
      0000FF 75 38 90         [24]  416 	mov	(_seg_table + 0x0009),#0x90
                                    417 	.area GSFINAL (CODE)
      000102 02 00 51         [24]  418 	ljmp	__sdcc_program_startup
                                    419 ;--------------------------------------------------------
                                    420 ; Home
                                    421 ;--------------------------------------------------------
                                    422 	.area HOME    (CODE)
                                    423 	.area HOME    (CODE)
      000051                        424 __sdcc_program_startup:
      000051 02 03 9A         [24]  425 	ljmp	_main
                                    426 ;	return from main will return to caller
                                    427 ;--------------------------------------------------------
                                    428 ; code
                                    429 ;--------------------------------------------------------
                                    430 	.area CSEG    (CODE)
                                    431 ;------------------------------------------------------------
                                    432 ;Allocation info for local variables in function 'Init_Timer0'
                                    433 ;------------------------------------------------------------
                                    434 ;	.\stcboot.c:26: void Init_Timer0(void)
                                    435 ;	-----------------------------------------
                                    436 ;	 function Init_Timer0
                                    437 ;	-----------------------------------------
      000105                        438 _Init_Timer0:
                           000007   439 	ar7 = 0x07
                           000006   440 	ar6 = 0x06
                           000005   441 	ar5 = 0x05
                           000004   442 	ar4 = 0x04
                           000003   443 	ar3 = 0x03
                           000002   444 	ar2 = 0x02
                           000001   445 	ar1 = 0x01
                           000000   446 	ar0 = 0x00
                                    447 ;	.\stcboot.c:28: TMOD |= 0x01;		// mode 1, 16-bit timer
      000105 43 89 01         [24]  448 	orl	_TMOD,#0x01
                                    449 ;	.\stcboot.c:29: TH0 = 0xFC;		// overflow at 65536
      000108 75 8C FC         [24]  450 	mov	_TH0,#0xfc
                                    451 ;	.\stcboot.c:30: TL0 = 0x18;
      00010B 75 8A 18         [24]  452 	mov	_TL0,#0x18
                                    453 ;	.\stcboot.c:31: EA = 1;			// enable global interrupts
                                    454 ;	assignBit
      00010E D2 AF            [12]  455 	setb	_EA
                                    456 ;	.\stcboot.c:32: ET0 = 1;		// enable timer0 interrupt
                                    457 ;	assignBit
      000110 D2 A9            [12]  458 	setb	_ET0
                                    459 ;	.\stcboot.c:33: TR0 = 1;		// timer on
                                    460 ;	assignBit
      000112 D2 8C            [12]  461 	setb	_TR0
                                    462 ;	.\stcboot.c:34: }
      000114 22               [24]  463 	ret
                                    464 ;------------------------------------------------------------
                                    465 ;Allocation info for local variables in function 'Timer0_isr'
                                    466 ;------------------------------------------------------------
                                    467 ;	.\stcboot.c:36: void Timer0_isr(void) __interrupt(1) __using(1)
                                    468 ;	-----------------------------------------
                                    469 ;	 function Timer0_isr
                                    470 ;	-----------------------------------------
      000115                        471 _Timer0_isr:
                           00000F   472 	ar7 = 0x0f
                           00000E   473 	ar6 = 0x0e
                           00000D   474 	ar5 = 0x0d
                           00000C   475 	ar4 = 0x0c
                           00000B   476 	ar3 = 0x0b
                           00000A   477 	ar2 = 0x0a
                           000009   478 	ar1 = 0x09
                           000008   479 	ar0 = 0x08
      000115 C0 20            [24]  480 	push	bits
      000117 C0 E0            [24]  481 	push	acc
      000119 C0 F0            [24]  482 	push	b
      00011B C0 82            [24]  483 	push	dpl
      00011D C0 83            [24]  484 	push	dph
      00011F C0 07            [24]  485 	push	(0+7)
      000121 C0 06            [24]  486 	push	(0+6)
      000123 C0 05            [24]  487 	push	(0+5)
      000125 C0 04            [24]  488 	push	(0+4)
      000127 C0 03            [24]  489 	push	(0+3)
      000129 C0 02            [24]  490 	push	(0+2)
      00012B C0 01            [24]  491 	push	(0+1)
      00012D C0 00            [24]  492 	push	(0+0)
      00012F C0 D0            [24]  493 	push	psw
      000131 75 D0 08         [24]  494 	mov	psw,#0x08
                                    495 ;	.\stcboot.c:38: TH0 = 0xFC;		// reload
      000134 75 8C FC         [24]  496 	mov	_TH0,#0xfc
                                    497 ;	.\stcboot.c:39: TL0 = 0x18;
      000137 75 8A 18         [24]  498 	mov	_TL0,#0x18
                                    499 ;	.\stcboot.c:40: buttonIndex++;
      00013A 05 2D            [12]  500 	inc	_buttonIndex
      00013C E4               [12]  501 	clr	a
      00013D B5 2D 02         [24]  502 	cjne	a,_buttonIndex,00123$
      000140 05 2E            [12]  503 	inc	(_buttonIndex + 1)
      000142                        504 00123$:
                                    505 ;	.\stcboot.c:41: if (buttonIndex > 5)
      000142 C3               [12]  506 	clr	c
      000143 74 05            [12]  507 	mov	a,#0x05
      000145 95 2D            [12]  508 	subb	a,_buttonIndex
      000147 E4               [12]  509 	clr	a
      000148 95 2E            [12]  510 	subb	a,(_buttonIndex + 1)
      00014A 50 06            [24]  511 	jnc	00102$
                                    512 ;	.\stcboot.c:42: buttonIndex = 1;
      00014C 75 2D 01         [24]  513 	mov	_buttonIndex,#0x01
      00014F 75 2E 00         [24]  514 	mov	(_buttonIndex + 1),#0x00
      000152                        515 00102$:
                                    516 ;	.\stcboot.c:43: switch(buttonIndex) {
      000152 C3               [12]  517 	clr	c
      000153 74 04            [12]  518 	mov	a,#0x04
      000155 95 2D            [12]  519 	subb	a,_buttonIndex
      000157 E4               [12]  520 	clr	a
      000158 95 2E            [12]  521 	subb	a,(_buttonIndex + 1)
      00015A 40 43            [24]  522 	jc	00109$
      00015C E5 2D            [12]  523 	mov	a,_buttonIndex
      00015E 75 F0 03         [24]  524 	mov	b,#0x03
      000161 A4               [48]  525 	mul	ab
      000162 90 01 66         [24]  526 	mov	dptr,#00126$
      000165 73               [24]  527 	jmp	@a+dptr
      000166                        528 00126$:
      000166 02 01 9F         [24]  529 	ljmp	00109$
      000169 02 01 75         [24]  530 	ljmp	00103$
      00016C 02 01 80         [24]  531 	ljmp	00104$
      00016F 02 01 8B         [24]  532 	ljmp	00105$
      000172 02 01 96         [24]  533 	ljmp	00106$
                                    534 ;	.\stcboot.c:44: case 1:
      000175                        535 00103$:
                                    536 ;	.\stcboot.c:45: binary_count();
      000175 75 D0 00         [24]  537 	mov	psw,#0x00
      000178 12 01 D0         [24]  538 	lcall	_binary_count
      00017B 75 D0 08         [24]  539 	mov	psw,#0x08
                                    540 ;	.\stcboot.c:46: break;
                                    541 ;	.\stcboot.c:47: case 2:
      00017E 80 1F            [24]  542 	sjmp	00109$
      000180                        543 00104$:
                                    544 ;	.\stcboot.c:48: cylon();
      000180 75 D0 00         [24]  545 	mov	psw,#0x00
      000183 12 01 FB         [24]  546 	lcall	_cylon
      000186 75 D0 08         [24]  547 	mov	psw,#0x08
                                    548 ;	.\stcboot.c:49: break;
                                    549 ;	.\stcboot.c:50: case 3:
      000189 80 14            [24]  550 	sjmp	00109$
      00018B                        551 00105$:
                                    552 ;	.\stcboot.c:51: dual_cylon();
      00018B 75 D0 00         [24]  553 	mov	psw,#0x00
      00018E 12 02 31         [24]  554 	lcall	_dual_cylon
      000191 75 D0 08         [24]  555 	mov	psw,#0x08
                                    556 ;	.\stcboot.c:52: break;
                                    557 ;	.\stcboot.c:53: case 4:
      000194 80 09            [24]  558 	sjmp	00109$
      000196                        559 00106$:
                                    560 ;	.\stcboot.c:54: number_clicker();
      000196 75 D0 00         [24]  561 	mov	psw,#0x00
      000199 12 03 48         [24]  562 	lcall	_number_clicker
      00019C 75 D0 08         [24]  563 	mov	psw,#0x08
                                    564 ;	.\stcboot.c:58: }
      00019F                        565 00109$:
                                    566 ;	.\stcboot.c:59: }
      00019F D0 D0            [24]  567 	pop	psw
      0001A1 D0 00            [24]  568 	pop	(0+0)
      0001A3 D0 01            [24]  569 	pop	(0+1)
      0001A5 D0 02            [24]  570 	pop	(0+2)
      0001A7 D0 03            [24]  571 	pop	(0+3)
      0001A9 D0 04            [24]  572 	pop	(0+4)
      0001AB D0 05            [24]  573 	pop	(0+5)
      0001AD D0 06            [24]  574 	pop	(0+6)
      0001AF D0 07            [24]  575 	pop	(0+7)
      0001B1 D0 83            [24]  576 	pop	dph
      0001B3 D0 82            [24]  577 	pop	dpl
      0001B5 D0 F0            [24]  578 	pop	b
      0001B7 D0 E0            [24]  579 	pop	acc
      0001B9 D0 20            [24]  580 	pop	bits
      0001BB 02 00 54         [24]  581 	ljmp	sdcc_atomic_maybe_rollback
                                    582 ;------------------------------------------------------------
                                    583 ;Allocation info for local variables in function 'delay'
                                    584 ;------------------------------------------------------------
                                    585 ;time          Allocated to registers 
                                    586 ;------------------------------------------------------------
                                    587 ;	.\stcboot.c:63: void delay(unsigned int time) {
                                    588 ;	-----------------------------------------
                                    589 ;	 function delay
                                    590 ;	-----------------------------------------
      0001BE                        591 _delay:
                           000007   592 	ar7 = 0x07
                           000006   593 	ar6 = 0x06
                           000005   594 	ar5 = 0x05
                           000004   595 	ar4 = 0x04
                           000003   596 	ar3 = 0x03
                           000002   597 	ar2 = 0x02
                           000001   598 	ar1 = 0x01
                           000000   599 	ar0 = 0x00
      0001BE AE 82            [24]  600 	mov	r6, dpl
      0001C0 AF 83            [24]  601 	mov	r7, dph
                                    602 ;	.\stcboot.c:64: while (time--);
      0001C2                        603 00101$:
      0001C2 8E 04            [24]  604 	mov	ar4,r6
      0001C4 8F 05            [24]  605 	mov	ar5,r7
      0001C6 1E               [12]  606 	dec	r6
      0001C7 BE FF 01         [24]  607 	cjne	r6,#0xff,00113$
      0001CA 1F               [12]  608 	dec	r7
      0001CB                        609 00113$:
      0001CB EC               [12]  610 	mov	a,r4
      0001CC 4D               [12]  611 	orl	a,r5
      0001CD 70 F3            [24]  612 	jnz	00101$
                                    613 ;	.\stcboot.c:65: }
      0001CF 22               [24]  614 	ret
                                    615 ;------------------------------------------------------------
                                    616 ;Allocation info for local variables in function 'binary_count'
                                    617 ;------------------------------------------------------------
                                    618 ;count         Allocated to registers r6 r7 
                                    619 ;------------------------------------------------------------
                                    620 ;	.\stcboot.c:75: void binary_count(void) {
                                    621 ;	-----------------------------------------
                                    622 ;	 function binary_count
                                    623 ;	-----------------------------------------
      0001D0                        624 _binary_count:
                                    625 ;	.\stcboot.c:77: do{
      0001D0 7E 00            [12]  626 	mov	r6,#0x00
      0001D2 7F 00            [12]  627 	mov	r7,#0x00
      0001D4                        628 00103$:
                                    629 ;	.\stcboot.c:79: P1 = ~count;  // Output inverted count to LEDs
      0001D4 8E 05            [24]  630 	mov	ar5,r6
      0001D6 ED               [12]  631 	mov	a,r5
      0001D7 F4               [12]  632 	cpl	a
      0001D8 F5 90            [12]  633 	mov	_P1,a
                                    634 ;	.\stcboot.c:81: delay(2000);
      0001DA 90 07 D0         [24]  635 	mov	dptr,#0x07d0
      0001DD C0 07            [24]  636 	push	ar7
      0001DF C0 06            [24]  637 	push	ar6
      0001E1 12 01 BE         [24]  638 	lcall	_delay
      0001E4 D0 06            [24]  639 	pop	ar6
      0001E6 D0 07            [24]  640 	pop	ar7
                                    641 ;	.\stcboot.c:82: count++;
      0001E8 0E               [12]  642 	inc	r6
      0001E9 BE 00 01         [24]  643 	cjne	r6,#0x00,00120$
      0001EC 0F               [12]  644 	inc	r7
      0001ED                        645 00120$:
                                    646 ;	.\stcboot.c:83: if ((P3 & 0x20) == 0){
      0001ED E5 B0            [12]  647 	mov	a,_P3
      0001EF 20 E5 03         [24]  648 	jb	acc.5,00104$
                                    649 ;	.\stcboot.c:84: Timer0_isr();
                                    650 ;	.\stcboot.c:85: break;
      0001F2 02 01 15         [24]  651 	ljmp	_Timer0_isr
      0001F5                        652 00104$:
                                    653 ;	.\stcboot.c:88: while (count < 256);
      0001F5 74 FF            [12]  654 	mov	a,#0x100 - 0x01
      0001F7 2F               [12]  655 	add	a,r7
      0001F8 50 DA            [24]  656 	jnc	00103$
                                    657 ;	.\stcboot.c:89: }
      0001FA 22               [24]  658 	ret
                                    659 ;------------------------------------------------------------
                                    660 ;Allocation info for local variables in function 'cylon'
                                    661 ;------------------------------------------------------------
                                    662 ;pos           Allocated to registers r7 
                                    663 ;direction     Allocated to registers r6 
                                    664 ;------------------------------------------------------------
                                    665 ;	.\stcboot.c:92: void cylon(void) {
                                    666 ;	-----------------------------------------
                                    667 ;	 function cylon
                                    668 ;	-----------------------------------------
      0001FB                        669 _cylon:
                                    670 ;	.\stcboot.c:93: unsigned char pos = 1;
      0001FB 7F 01            [12]  671 	mov	r7,#0x01
                                    672 ;	.\stcboot.c:94: unsigned char direction = 1; // 1 for forward, 0 for reverse
      0001FD 7E 01            [12]  673 	mov	r6,#0x01
                                    674 ;	.\stcboot.c:96: while (1) {
      0001FF                        675 00111$:
                                    676 ;	.\stcboot.c:97: if ((P3 & 0x20) == 0){
      0001FF E5 B0            [12]  677 	mov	a,_P3
      000201 20 E5 03         [24]  678 	jb	acc.5,00102$
                                    679 ;	.\stcboot.c:98: Timer0_isr();
                                    680 ;	.\stcboot.c:99: break;
      000204 02 01 15         [24]  681 	ljmp	_Timer0_isr
      000207                        682 00102$:
                                    683 ;	.\stcboot.c:101: P1 = ~pos;  // Invert output to turn LEDs on
      000207 EF               [12]  684 	mov	a,r7
      000208 F4               [12]  685 	cpl	a
      000209 F5 90            [12]  686 	mov	_P1,a
                                    687 ;	.\stcboot.c:102: delay(5000);
      00020B 90 13 88         [24]  688 	mov	dptr,#0x1388
      00020E C0 07            [24]  689 	push	ar7
      000210 C0 06            [24]  690 	push	ar6
      000212 12 01 BE         [24]  691 	lcall	_delay
      000215 D0 06            [24]  692 	pop	ar6
      000217 D0 07            [24]  693 	pop	ar7
                                    694 ;	.\stcboot.c:104: if (direction) {
      000219 EE               [12]  695 	mov	a,r6
      00021A 60 0A            [24]  696 	jz	00108$
                                    697 ;	.\stcboot.c:105: pos <<= 1;
      00021C EF               [12]  698 	mov	a,r7
      00021D 2F               [12]  699 	add	a,r7
      00021E FF               [12]  700 	mov	r7,a
                                    701 ;	.\stcboot.c:106: if (pos == 0x80) direction = 0;
      00021F BF 80 DD         [24]  702 	cjne	r7,#0x80,00111$
      000222 7E 00            [12]  703 	mov	r6,#0x00
      000224 80 D9            [24]  704 	sjmp	00111$
      000226                        705 00108$:
                                    706 ;	.\stcboot.c:108: pos >>= 1;
      000226 EF               [12]  707 	mov	a,r7
      000227 C3               [12]  708 	clr	c
      000228 13               [12]  709 	rrc	a
      000229 FF               [12]  710 	mov	r7,a
                                    711 ;	.\stcboot.c:109: if (pos == 0x01) direction = 1;  // Reverse at the beginning
      00022A BF 01 D2         [24]  712 	cjne	r7,#0x01,00111$
      00022D 7E 01            [12]  713 	mov	r6,#0x01
                                    714 ;	.\stcboot.c:113: }
      00022F 80 CE            [24]  715 	sjmp	00111$
                                    716 ;------------------------------------------------------------
                                    717 ;Allocation info for local variables in function 'dual_cylon'
                                    718 ;------------------------------------------------------------
                                    719 ;pos1          Allocated to registers r7 
                                    720 ;pos2          Allocated to registers r6 
                                    721 ;------------------------------------------------------------
                                    722 ;	.\stcboot.c:117: void dual_cylon(void) {
                                    723 ;	-----------------------------------------
                                    724 ;	 function dual_cylon
                                    725 ;	-----------------------------------------
      000231                        726 _dual_cylon:
                                    727 ;	.\stcboot.c:118: unsigned char pos1 = 1, pos2 = 0x80;
      000231 7F 01            [12]  728 	mov	r7,#0x01
      000233 7E 80            [12]  729 	mov	r6,#0x80
                                    730 ;	.\stcboot.c:119: while (1) {
      000235                        731 00106$:
                                    732 ;	.\stcboot.c:120: if ((P3 & 0x20) == 0){
      000235 E5 B0            [12]  733 	mov	a,_P3
      000237 20 E5 06         [24]  734 	jb	acc.5,00102$
                                    735 ;	.\stcboot.c:121: P1=0xFF;
      00023A 75 90 FF         [24]  736 	mov	_P1,#0xff
                                    737 ;	.\stcboot.c:122: Timer0_isr();
                                    738 ;	.\stcboot.c:123: break;
      00023D 02 01 15         [24]  739 	ljmp	_Timer0_isr
      000240                        740 00102$:
                                    741 ;	.\stcboot.c:125: P1 = ~(pos1 | pos2);  // Invert output for correct LED logic
      000240 EE               [12]  742 	mov	a,r6
      000241 4F               [12]  743 	orl	a,r7
      000242 F4               [12]  744 	cpl	a
      000243 F5 90            [12]  745 	mov	_P1,a
                                    746 ;	.\stcboot.c:126: delay(5000);
      000245 90 13 88         [24]  747 	mov	dptr,#0x1388
      000248 C0 07            [24]  748 	push	ar7
      00024A C0 06            [24]  749 	push	ar6
      00024C 12 01 BE         [24]  750 	lcall	_delay
      00024F D0 06            [24]  751 	pop	ar6
      000251 D0 07            [24]  752 	pop	ar7
                                    753 ;	.\stcboot.c:127: pos1 <<= 1;
      000253 EF               [12]  754 	mov	a,r7
      000254 2F               [12]  755 	add	a,r7
      000255 FF               [12]  756 	mov	r7,a
                                    757 ;	.\stcboot.c:128: pos2 >>= 1;
      000256 EE               [12]  758 	mov	a,r6
      000257 C3               [12]  759 	clr	c
      000258 13               [12]  760 	rrc	a
      000259 FE               [12]  761 	mov	r6,a
                                    762 ;	.\stcboot.c:129: if (pos1 == 0x80) {  // Reset condition
      00025A BF 80 D8         [24]  763 	cjne	r7,#0x80,00106$
                                    764 ;	.\stcboot.c:130: pos1 = 1;
      00025D 7F 01            [12]  765 	mov	r7,#0x01
                                    766 ;	.\stcboot.c:131: pos2 = 0x80;
      00025F 7E 80            [12]  767 	mov	r6,#0x80
                                    768 ;	.\stcboot.c:134: }
      000261 80 D2            [24]  769 	sjmp	00106$
                                    770 ;------------------------------------------------------------
                                    771 ;Allocation info for local variables in function 'display_number'
                                    772 ;------------------------------------------------------------
                                    773 ;temp          Allocated to registers r6 r7 
                                    774 ;ones          Allocated to registers r4 
                                    775 ;tens          Allocated to registers r3 
                                    776 ;hundreds      Allocated to registers r2 
                                    777 ;thousands     Allocated to registers r6 
                                    778 ;------------------------------------------------------------
                                    779 ;	.\stcboot.c:137: void display_number(void) {
                                    780 ;	-----------------------------------------
                                    781 ;	 function display_number
                                    782 ;	-----------------------------------------
      000263                        783 _display_number:
                                    784 ;	.\stcboot.c:138: unsigned int temp = number;
      000263 AE 21            [24]  785 	mov	r6,_number
      000265 AF 22            [24]  786 	mov	r7,(_number + 1)
                                    787 ;	.\stcboot.c:140: unsigned char ones = temp % 10;
      000267 75 10 0A         [24]  788 	mov	__moduint_PARM_2,#0x0a
      00026A 75 11 00         [24]  789 	mov	(__moduint_PARM_2 + 1),#0x00
      00026D 8E 82            [24]  790 	mov	dpl, r6
      00026F 8F 83            [24]  791 	mov	dph, r7
      000271 C0 07            [24]  792 	push	ar7
      000273 C0 06            [24]  793 	push	ar6
      000275 12 03 C8         [24]  794 	lcall	__moduint
      000278 AC 82            [24]  795 	mov	r4, dpl
      00027A D0 06            [24]  796 	pop	ar6
      00027C D0 07            [24]  797 	pop	ar7
                                    798 ;	.\stcboot.c:141: temp /= 10;
      00027E 75 10 0A         [24]  799 	mov	__divuint_PARM_2,#0x0a
      000281 75 11 00         [24]  800 	mov	(__divuint_PARM_2 + 1),#0x00
                                    801 ;	.\stcboot.c:142: unsigned char tens = temp % 10;
      000284 8E 82            [24]  802 	mov	dpl, r6
      000286 8F 83            [24]  803 	mov	dph, r7
      000288 C0 04            [24]  804 	push	ar4
      00028A 12 03 9F         [24]  805 	lcall	__divuint
      00028D AE 82            [24]  806 	mov	r6, dpl
      00028F AF 83            [24]  807 	mov	r7, dph
      000291 D0 04            [24]  808 	pop	ar4
      000293 75 10 0A         [24]  809 	mov	__moduint_PARM_2,#0x0a
      000296 75 11 00         [24]  810 	mov	(__moduint_PARM_2 + 1),#0x00
      000299 8E 82            [24]  811 	mov	dpl, r6
      00029B 8F 83            [24]  812 	mov	dph, r7
      00029D C0 07            [24]  813 	push	ar7
      00029F C0 06            [24]  814 	push	ar6
      0002A1 C0 04            [24]  815 	push	ar4
      0002A3 12 03 C8         [24]  816 	lcall	__moduint
      0002A6 AB 82            [24]  817 	mov	r3, dpl
      0002A8 D0 04            [24]  818 	pop	ar4
      0002AA D0 06            [24]  819 	pop	ar6
      0002AC D0 07            [24]  820 	pop	ar7
                                    821 ;	.\stcboot.c:143: temp /= 10;
      0002AE 75 10 0A         [24]  822 	mov	__divuint_PARM_2,#0x0a
      0002B1 75 11 00         [24]  823 	mov	(__divuint_PARM_2 + 1),#0x00
                                    824 ;	.\stcboot.c:144: unsigned char hundreds = temp % 10;
      0002B4 8E 82            [24]  825 	mov	dpl, r6
      0002B6 8F 83            [24]  826 	mov	dph, r7
      0002B8 C0 04            [24]  827 	push	ar4
      0002BA C0 03            [24]  828 	push	ar3
      0002BC 12 03 9F         [24]  829 	lcall	__divuint
      0002BF AE 82            [24]  830 	mov	r6, dpl
      0002C1 AF 83            [24]  831 	mov	r7, dph
      0002C3 D0 03            [24]  832 	pop	ar3
      0002C5 D0 04            [24]  833 	pop	ar4
      0002C7 75 10 0A         [24]  834 	mov	__moduint_PARM_2,#0x0a
      0002CA 75 11 00         [24]  835 	mov	(__moduint_PARM_2 + 1),#0x00
      0002CD 8E 82            [24]  836 	mov	dpl, r6
      0002CF 8F 83            [24]  837 	mov	dph, r7
      0002D1 C0 07            [24]  838 	push	ar7
      0002D3 C0 06            [24]  839 	push	ar6
      0002D5 C0 04            [24]  840 	push	ar4
      0002D7 C0 03            [24]  841 	push	ar3
      0002D9 12 03 C8         [24]  842 	lcall	__moduint
      0002DC AA 82            [24]  843 	mov	r2, dpl
      0002DE D0 03            [24]  844 	pop	ar3
      0002E0 D0 04            [24]  845 	pop	ar4
      0002E2 D0 06            [24]  846 	pop	ar6
      0002E4 D0 07            [24]  847 	pop	ar7
                                    848 ;	.\stcboot.c:145: temp /= 10;
      0002E6 75 10 0A         [24]  849 	mov	__divuint_PARM_2,#0x0a
      0002E9 75 11 00         [24]  850 	mov	(__divuint_PARM_2 + 1),#0x00
                                    851 ;	.\stcboot.c:146: unsigned char thousands = temp % 10;
      0002EC 8E 82            [24]  852 	mov	dpl, r6
      0002EE 8F 83            [24]  853 	mov	dph, r7
      0002F0 C0 04            [24]  854 	push	ar4
      0002F2 C0 03            [24]  855 	push	ar3
      0002F4 C0 02            [24]  856 	push	ar2
      0002F6 12 03 9F         [24]  857 	lcall	__divuint
      0002F9 AE 82            [24]  858 	mov	r6, dpl
      0002FB 75 F0 0A         [24]  859 	mov	b,#0x0a
      0002FE EE               [12]  860 	mov	a,r6
      0002FF 84               [48]  861 	div	ab
                                    862 ;	.\stcboot.c:148: P0 = seg_table[thousands];	P2_0 = 0;	delay(500);	P2_0 = 1;
      000300 E5 F0            [12]  863 	mov	a,b
      000302 24 2F            [12]  864 	add	a, #_seg_table
      000304 F9               [12]  865 	mov	r1,a
      000305 87 80            [24]  866 	mov	_P0,@r1
                                    867 ;	assignBit
      000307 C2 A0            [12]  868 	clr	_P2_0
      000309 90 01 F4         [24]  869 	mov	dptr,#0x01f4
      00030C 12 01 BE         [24]  870 	lcall	_delay
      00030F D0 02            [24]  871 	pop	ar2
                                    872 ;	assignBit
      000311 D2 A0            [12]  873 	setb	_P2_0
                                    874 ;	.\stcboot.c:149: P0 = seg_table[hundreds];	P2_1 = 0;	delay(500);	P2_1 = 1;
      000313 EA               [12]  875 	mov	a,r2
      000314 24 2F            [12]  876 	add	a, #_seg_table
      000316 F9               [12]  877 	mov	r1,a
      000317 87 80            [24]  878 	mov	_P0,@r1
                                    879 ;	assignBit
      000319 C2 A1            [12]  880 	clr	_P2_1
      00031B 90 01 F4         [24]  881 	mov	dptr,#0x01f4
      00031E 12 01 BE         [24]  882 	lcall	_delay
      000321 D0 03            [24]  883 	pop	ar3
                                    884 ;	assignBit
      000323 D2 A1            [12]  885 	setb	_P2_1
                                    886 ;	.\stcboot.c:150: P0 = seg_table[tens];		P2_2 = 0;	delay(500);	P2_2 = 1;
      000325 EB               [12]  887 	mov	a,r3
      000326 24 2F            [12]  888 	add	a, #_seg_table
      000328 F9               [12]  889 	mov	r1,a
      000329 87 80            [24]  890 	mov	_P0,@r1
                                    891 ;	assignBit
      00032B C2 A2            [12]  892 	clr	_P2_2
      00032D 90 01 F4         [24]  893 	mov	dptr,#0x01f4
      000330 12 01 BE         [24]  894 	lcall	_delay
      000333 D0 04            [24]  895 	pop	ar4
                                    896 ;	assignBit
      000335 D2 A2            [12]  897 	setb	_P2_2
                                    898 ;	.\stcboot.c:151: P0 = seg_table[ones];		P2_3 = 0;	delay(500);	P2_3 = 1;
      000337 EC               [12]  899 	mov	a,r4
      000338 24 2F            [12]  900 	add	a, #_seg_table
      00033A F9               [12]  901 	mov	r1,a
      00033B 87 80            [24]  902 	mov	_P0,@r1
                                    903 ;	assignBit
      00033D C2 A3            [12]  904 	clr	_P2_3
      00033F 90 01 F4         [24]  905 	mov	dptr,#0x01f4
      000342 12 01 BE         [24]  906 	lcall	_delay
                                    907 ;	assignBit
      000345 D2 A3            [12]  908 	setb	_P2_3
                                    909 ;	.\stcboot.c:152: }
      000347 22               [24]  910 	ret
                                    911 ;------------------------------------------------------------
                                    912 ;Allocation info for local variables in function 'number_clicker'
                                    913 ;------------------------------------------------------------
                                    914 ;	.\stcboot.c:155: void number_clicker(void) {
                                    915 ;	-----------------------------------------
                                    916 ;	 function number_clicker
                                    917 ;	-----------------------------------------
      000348                        918 _number_clicker:
                                    919 ;	.\stcboot.c:156: while (1) {
      000348                        920 00113$:
                                    921 ;	.\stcboot.c:157: if ((P3 & 0x20) == 0){
      000348 E5 B0            [12]  922 	mov	a,_P3
      00034A 20 E5 03         [24]  923 	jb	acc.5,00102$
                                    924 ;	.\stcboot.c:158: Timer0_isr();
                                    925 ;	.\stcboot.c:159: break;
      00034D 02 01 15         [24]  926 	ljmp	_Timer0_isr
      000350                        927 00102$:
                                    928 ;	.\stcboot.c:161: display_number();
      000350 12 02 63         [24]  929 	lcall	_display_number
                                    930 ;	.\stcboot.c:162: if ((P3 & 0x08) == 0) { // Button Pressed
      000353 E5 B0            [12]  931 	mov	a,_P3
      000355 20 E3 1E         [24]  932 	jb	acc.3,00106$
                                    933 ;	.\stcboot.c:163: delay(5000);
      000358 90 13 88         [24]  934 	mov	dptr,#0x1388
      00035B 12 01 BE         [24]  935 	lcall	_delay
                                    936 ;	.\stcboot.c:164: number++;
      00035E 05 21            [12]  937 	inc	_number
      000360 E4               [12]  938 	clr	a
      000361 B5 21 02         [24]  939 	cjne	a,_number,00155$
      000364 05 22            [12]  940 	inc	(_number + 1)
      000366                        941 00155$:
                                    942 ;	.\stcboot.c:165: if (number > 9999) number = 0; // Roll over to 0
      000366 C3               [12]  943 	clr	c
      000367 74 0F            [12]  944 	mov	a,#0x0f
      000369 95 21            [12]  945 	subb	a,_number
      00036B 74 27            [12]  946 	mov	a,#0x27
      00036D 95 22            [12]  947 	subb	a,(_number + 1)
      00036F 50 05            [24]  948 	jnc	00106$
      000371 E4               [12]  949 	clr	a
      000372 F5 21            [12]  950 	mov	_number,a
      000374 F5 22            [12]  951 	mov	(_number + 1),a
      000376                        952 00106$:
                                    953 ;	.\stcboot.c:171: if ((P3 & 0x04) == 0) { // Button Pressed
      000376 E5 B0            [12]  954 	mov	a,_P3
      000378 20 E2 CD         [24]  955 	jb	acc.2,00113$
                                    956 ;	.\stcboot.c:172: delay(5000);
      00037B 90 13 88         [24]  957 	mov	dptr,#0x1388
      00037E 12 01 BE         [24]  958 	lcall	_delay
                                    959 ;	.\stcboot.c:173: if (number == 0) number = 9999; // Roll over to 9999
      000381 E5 21            [12]  960 	mov	a,_number
      000383 45 22            [12]  961 	orl	a,(_number + 1)
      000385 70 08            [24]  962 	jnz	00108$
      000387 75 21 0F         [24]  963 	mov	_number,#0x0f
      00038A 75 22 27         [24]  964 	mov	(_number + 1),#0x27
      00038D 80 B9            [24]  965 	sjmp	00113$
      00038F                        966 00108$:
                                    967 ;	.\stcboot.c:174: else number--;
      00038F 15 21            [12]  968 	dec	_number
      000391 74 FF            [12]  969 	mov	a,#0xff
      000393 B5 21 02         [24]  970 	cjne	a,_number,00159$
      000396 15 22            [12]  971 	dec	(_number + 1)
      000398                        972 00159$:
                                    973 ;	.\stcboot.c:177: }
      000398 80 AE            [24]  974 	sjmp	00113$
                                    975 ;------------------------------------------------------------
                                    976 ;Allocation info for local variables in function 'main'
                                    977 ;------------------------------------------------------------
                                    978 ;	.\stcboot.c:179: void main(void) {
                                    979 ;	-----------------------------------------
                                    980 ;	 function main
                                    981 ;	-----------------------------------------
      00039A                        982 _main:
                                    983 ;	.\stcboot.c:180: Init_Timer0();
      00039A 12 01 05         [24]  984 	lcall	_Init_Timer0
                                    985 ;	.\stcboot.c:181: while (1) {
      00039D                        986 00102$:
                                    987 ;	.\stcboot.c:184: }
      00039D 80 FE            [24]  988 	sjmp	00102$
                                    989 	.area CSEG    (CODE)
                                    990 	.area CONST   (CODE)
                                    991 	.area CONST   (CODE)
      000419                        992 _period:
      000419 E8 03 00 00            993 	.byte #0xe8, #0x03, #0x00, #0x00	; 1000
                                    994 	.area CSEG    (CODE)
                                    995 	.area XINIT   (CODE)
                                    996 	.area CABS    (ABS,CODE)
