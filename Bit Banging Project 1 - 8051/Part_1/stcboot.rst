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
                                    112 	.globl _timercounttotal
                                    113 	.globl _timercounter
                                    114 	.globl _buttonIndex
                                    115 	.globl _currentmillis
                                    116 	.globl _startmillis
                                    117 	.globl _switchCount
                                    118 	.globl _number
                                    119 	.globl _delay
                                    120 	.globl _binary_count
                                    121 	.globl _cylon
                                    122 	.globl _dual_cylon
                                    123 	.globl _display_number
                                    124 	.globl _number_clicker
                                    125 ;--------------------------------------------------------
                                    126 ; special function registers
                                    127 ;--------------------------------------------------------
                                    128 	.area RSEG    (ABS,DATA)
      000000                        129 	.org 0x0000
                           000080   130 _P0	=	0x0080
                           000081   131 _SP	=	0x0081
                           000082   132 _DPL	=	0x0082
                           000083   133 _DPH	=	0x0083
                           000087   134 _PCON	=	0x0087
                           000088   135 _TCON	=	0x0088
                           000089   136 _TMOD	=	0x0089
                           00008A   137 _TL0	=	0x008a
                           00008B   138 _TL1	=	0x008b
                           00008C   139 _TH0	=	0x008c
                           00008D   140 _TH1	=	0x008d
                           000090   141 _P1	=	0x0090
                           000098   142 _SCON	=	0x0098
                           000099   143 _SBUF	=	0x0099
                           0000A0   144 _P2	=	0x00a0
                           0000A8   145 _IE	=	0x00a8
                           0000B0   146 _P3	=	0x00b0
                           0000B8   147 _IP	=	0x00b8
                           0000D0   148 _PSW	=	0x00d0
                           0000E0   149 _ACC	=	0x00e0
                           0000F0   150 _B	=	0x00f0
                                    151 ;--------------------------------------------------------
                                    152 ; special function bits
                                    153 ;--------------------------------------------------------
                                    154 	.area RSEG    (ABS,DATA)
      000000                        155 	.org 0x0000
                           000080   156 _P0_0	=	0x0080
                           000081   157 _P0_1	=	0x0081
                           000082   158 _P0_2	=	0x0082
                           000083   159 _P0_3	=	0x0083
                           000084   160 _P0_4	=	0x0084
                           000085   161 _P0_5	=	0x0085
                           000086   162 _P0_6	=	0x0086
                           000087   163 _P0_7	=	0x0087
                           000088   164 _IT0	=	0x0088
                           000089   165 _IE0	=	0x0089
                           00008A   166 _IT1	=	0x008a
                           00008B   167 _IE1	=	0x008b
                           00008C   168 _TR0	=	0x008c
                           00008D   169 _TF0	=	0x008d
                           00008E   170 _TR1	=	0x008e
                           00008F   171 _TF1	=	0x008f
                           000090   172 _P1_0	=	0x0090
                           000091   173 _P1_1	=	0x0091
                           000092   174 _P1_2	=	0x0092
                           000093   175 _P1_3	=	0x0093
                           000094   176 _P1_4	=	0x0094
                           000095   177 _P1_5	=	0x0095
                           000096   178 _P1_6	=	0x0096
                           000097   179 _P1_7	=	0x0097
                           000098   180 _RI	=	0x0098
                           000099   181 _TI	=	0x0099
                           00009A   182 _RB8	=	0x009a
                           00009B   183 _TB8	=	0x009b
                           00009C   184 _REN	=	0x009c
                           00009D   185 _SM2	=	0x009d
                           00009E   186 _SM1	=	0x009e
                           00009F   187 _SM0	=	0x009f
                           0000A0   188 _P2_0	=	0x00a0
                           0000A1   189 _P2_1	=	0x00a1
                           0000A2   190 _P2_2	=	0x00a2
                           0000A3   191 _P2_3	=	0x00a3
                           0000A4   192 _P2_4	=	0x00a4
                           0000A5   193 _P2_5	=	0x00a5
                           0000A6   194 _P2_6	=	0x00a6
                           0000A7   195 _P2_7	=	0x00a7
                           0000A8   196 _EX0	=	0x00a8
                           0000A9   197 _ET0	=	0x00a9
                           0000AA   198 _EX1	=	0x00aa
                           0000AB   199 _ET1	=	0x00ab
                           0000AC   200 _ES	=	0x00ac
                           0000AF   201 _EA	=	0x00af
                           0000B0   202 _P3_0	=	0x00b0
                           0000B1   203 _P3_1	=	0x00b1
                           0000B2   204 _P3_2	=	0x00b2
                           0000B3   205 _P3_3	=	0x00b3
                           0000B4   206 _P3_4	=	0x00b4
                           0000B5   207 _P3_5	=	0x00b5
                           0000B6   208 _P3_6	=	0x00b6
                           0000B7   209 _P3_7	=	0x00b7
                           0000B0   210 _RXD	=	0x00b0
                           0000B1   211 _TXD	=	0x00b1
                           0000B2   212 _INT0	=	0x00b2
                           0000B3   213 _INT1	=	0x00b3
                           0000B4   214 _T0	=	0x00b4
                           0000B5   215 _T1	=	0x00b5
                           0000B6   216 _WR	=	0x00b6
                           0000B7   217 _RD	=	0x00b7
                           0000B8   218 _PX0	=	0x00b8
                           0000B9   219 _PT0	=	0x00b9
                           0000BA   220 _PX1	=	0x00ba
                           0000BB   221 _PT1	=	0x00bb
                           0000BC   222 _PS	=	0x00bc
                           0000D0   223 _P	=	0x00d0
                           0000D1   224 _F1	=	0x00d1
                           0000D2   225 _OV	=	0x00d2
                           0000D3   226 _RS0	=	0x00d3
                           0000D4   227 _RS1	=	0x00d4
                           0000D5   228 _F0	=	0x00d5
                           0000D6   229 _AC	=	0x00d6
                           0000D7   230 _CY	=	0x00d7
                                    231 ;--------------------------------------------------------
                                    232 ; overlayable register banks
                                    233 ;--------------------------------------------------------
                                    234 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        235 	.ds 8
                                    236 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                        237 	.ds 8
                                    238 ;--------------------------------------------------------
                                    239 ; internal ram data
                                    240 ;--------------------------------------------------------
                                    241 	.area DSEG    (DATA)
      000010                        242 _number::
      000010                        243 	.ds 2
      000012                        244 _switchCount::
      000012                        245 	.ds 2
      000014                        246 _startmillis::
      000014                        247 	.ds 4
      000018                        248 _currentmillis::
      000018                        249 	.ds 4
      00001C                        250 _buttonIndex::
      00001C                        251 	.ds 2
      00001E                        252 _timercounter::
      00001E                        253 	.ds 2
      000020                        254 _timercounttotal::
      000020                        255 	.ds 2
      000022                        256 _seg_table::
      000022                        257 	.ds 10
                                    258 ;--------------------------------------------------------
                                    259 ; overlayable items in internal ram
                                    260 ;--------------------------------------------------------
                                    261 	.area	OSEG    (OVR,DATA)
                                    262 ;--------------------------------------------------------
                                    263 ; Stack segment in internal ram
                                    264 ;--------------------------------------------------------
                                    265 	.area SSEG
      00002E                        266 __start__stack:
      00002E                        267 	.ds	1
                                    268 
                                    269 ;--------------------------------------------------------
                                    270 ; indirectly addressable internal ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area ISEG    (DATA)
                                    273 ;--------------------------------------------------------
                                    274 ; absolute internal ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area IABS    (ABS,DATA)
                                    277 	.area IABS    (ABS,DATA)
                                    278 ;--------------------------------------------------------
                                    279 ; bit data
                                    280 ;--------------------------------------------------------
                                    281 	.area BSEG    (BIT)
                                    282 ;--------------------------------------------------------
                                    283 ; paged external ram data
                                    284 ;--------------------------------------------------------
                                    285 	.area PSEG    (PAG,XDATA)
                                    286 ;--------------------------------------------------------
                                    287 ; uninitialized external ram data
                                    288 ;--------------------------------------------------------
                                    289 	.area XSEG    (XDATA)
                                    290 ;--------------------------------------------------------
                                    291 ; absolute external ram data
                                    292 ;--------------------------------------------------------
                                    293 	.area XABS    (ABS,XDATA)
                                    294 ;--------------------------------------------------------
                                    295 ; initialized external ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area XISEG   (XDATA)
                                    298 	.area HOME    (CODE)
                                    299 	.area GSINIT0 (CODE)
                                    300 	.area GSINIT1 (CODE)
                                    301 	.area GSINIT2 (CODE)
                                    302 	.area GSINIT3 (CODE)
                                    303 	.area GSINIT4 (CODE)
                                    304 	.area GSINIT5 (CODE)
                                    305 	.area GSINIT  (CODE)
                                    306 	.area GSFINAL (CODE)
                                    307 	.area CSEG    (CODE)
                                    308 ;--------------------------------------------------------
                                    309 ; interrupt vector
                                    310 ;--------------------------------------------------------
                                    311 	.area HOME    (CODE)
      000000                        312 __interrupt_vect:
      000000 02 00 54         [24]  313 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  314 	reti
      000004                        315 	.ds	7
      00000B 02 00 F3         [24]  316 	ljmp	_Timer0_isr
                                    317 ; restartable atomic support routines
      00000E                        318 	.ds	2
      000010                        319 sdcc_atomic_exchange_rollback_start::
      000010 00               [12]  320 	nop
      000011 00               [12]  321 	nop
      000012                        322 sdcc_atomic_exchange_pdata_impl:
      000012 E2               [24]  323 	movx	a, @r0
      000013 FB               [12]  324 	mov	r3, a
      000014 EA               [12]  325 	mov	a, r2
      000015 F2               [24]  326 	movx	@r0, a
      000016 80 2C            [24]  327 	sjmp	sdcc_atomic_exchange_exit
      000018 00               [12]  328 	nop
      000019 00               [12]  329 	nop
      00001A                        330 sdcc_atomic_exchange_xdata_impl:
      00001A E0               [24]  331 	movx	a, @dptr
      00001B FB               [12]  332 	mov	r3, a
      00001C EA               [12]  333 	mov	a, r2
      00001D F0               [24]  334 	movx	@dptr, a
      00001E 80 24            [24]  335 	sjmp	sdcc_atomic_exchange_exit
      000020                        336 sdcc_atomic_compare_exchange_idata_impl:
      000020 E6               [12]  337 	mov	a, @r0
      000021 B5 02 02         [24]  338 	cjne	a, ar2, .+#5
      000024 EB               [12]  339 	mov	a, r3
      000025 F6               [12]  340 	mov	@r0, a
      000026 22               [24]  341 	ret
      000027 00               [12]  342 	nop
      000028                        343 sdcc_atomic_compare_exchange_pdata_impl:
      000028 E2               [24]  344 	movx	a, @r0
      000029 B5 02 02         [24]  345 	cjne	a, ar2, .+#5
      00002C EB               [12]  346 	mov	a, r3
      00002D F2               [24]  347 	movx	@r0, a
      00002E 22               [24]  348 	ret
      00002F 00               [12]  349 	nop
      000030                        350 sdcc_atomic_compare_exchange_xdata_impl:
      000030 E0               [24]  351 	movx	a, @dptr
      000031 B5 02 02         [24]  352 	cjne	a, ar2, .+#5
      000034 EB               [12]  353 	mov	a, r3
      000035 F0               [24]  354 	movx	@dptr, a
      000036 22               [24]  355 	ret
      000037                        356 sdcc_atomic_exchange_rollback_end::
                                    357 
      000037                        358 sdcc_atomic_exchange_gptr_impl::
      000037 30 F6 E0         [24]  359 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      00003A A8 82            [24]  360 	mov	r0, dpl
      00003C 20 F5 D3         [24]  361 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      00003F                        362 sdcc_atomic_exchange_idata_impl:
      00003F EA               [12]  363 	mov	a, r2
      000040 C6               [12]  364 	xch	a, @r0
      000041 F5 82            [12]  365 	mov	dpl, a
      000043 22               [24]  366 	ret
      000044                        367 sdcc_atomic_exchange_exit:
      000044 8B 82            [24]  368 	mov	dpl, r3
      000046 22               [24]  369 	ret
      000047                        370 sdcc_atomic_compare_exchange_gptr_impl::
      000047 30 F6 E6         [24]  371 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      00004A A8 82            [24]  372 	mov	r0, dpl
      00004C 20 F5 D9         [24]  373 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      00004F 80 CF            [24]  374 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    375 ;--------------------------------------------------------
                                    376 ; global & static initialisations
                                    377 ;--------------------------------------------------------
                                    378 	.area HOME    (CODE)
                                    379 	.area GSINIT  (CODE)
                                    380 	.area GSFINAL (CODE)
                                    381 	.area GSINIT  (CODE)
                                    382 	.globl __sdcc_gsinit_startup
                                    383 	.globl __sdcc_program_startup
                                    384 	.globl __start__stack
                                    385 	.globl __mcs51_genXINIT
                                    386 	.globl __mcs51_genXRAMCLEAR
                                    387 	.globl __mcs51_genRAMCLEAR
                                    388 ;	.\stcboot.c:13: unsigned int number = 0;
      0000AD E4               [12]  389 	clr	a
      0000AE F5 10            [12]  390 	mov	_number,a
      0000B0 F5 11            [12]  391 	mov	(_number + 1),a
                                    392 ;	.\stcboot.c:14: unsigned int switchCount = 0;
      0000B2 F5 12            [12]  393 	mov	_switchCount,a
      0000B4 F5 13            [12]  394 	mov	(_switchCount + 1),a
                                    395 ;	.\stcboot.c:17: unsigned int buttonIndex = 0;
      0000B6 F5 1C            [12]  396 	mov	_buttonIndex,a
      0000B8 F5 1D            [12]  397 	mov	(_buttonIndex + 1),a
                                    398 ;	.\stcboot.c:19: unsigned int timercounter = 0;
      0000BA F5 1E            [12]  399 	mov	_timercounter,a
      0000BC F5 1F            [12]  400 	mov	(_timercounter + 1),a
                                    401 ;	.\stcboot.c:20: unsigned int timercounttotal = 0;
      0000BE F5 20            [12]  402 	mov	_timercounttotal,a
      0000C0 F5 21            [12]  403 	mov	(_timercounttotal + 1),a
                                    404 ;	.\stcboot.c:22: unsigned char seg_table[] = {
      0000C2 75 22 C0         [24]  405 	mov	_seg_table,#0xc0
      0000C5 75 23 F9         [24]  406 	mov	(_seg_table + 0x0001),#0xf9
      0000C8 75 24 A4         [24]  407 	mov	(_seg_table + 0x0002),#0xa4
      0000CB 75 25 B0         [24]  408 	mov	(_seg_table + 0x0003),#0xb0
      0000CE 75 26 99         [24]  409 	mov	(_seg_table + 0x0004),#0x99
      0000D1 75 27 92         [24]  410 	mov	(_seg_table + 0x0005),#0x92
      0000D4 75 28 82         [24]  411 	mov	(_seg_table + 0x0006),#0x82
      0000D7 75 29 F8         [24]  412 	mov	(_seg_table + 0x0007),#0xf8
      0000DA 75 2A 80         [24]  413 	mov	(_seg_table + 0x0008),#0x80
      0000DD 75 2B 90         [24]  414 	mov	(_seg_table + 0x0009),#0x90
                                    415 	.area GSFINAL (CODE)
      0000E0 02 00 51         [24]  416 	ljmp	__sdcc_program_startup
                                    417 ;--------------------------------------------------------
                                    418 ; Home
                                    419 ;--------------------------------------------------------
                                    420 	.area HOME    (CODE)
                                    421 	.area HOME    (CODE)
      000051                        422 __sdcc_program_startup:
      000051 02 02 F2         [24]  423 	ljmp	_main
                                    424 ;	return from main will return to caller
                                    425 ;--------------------------------------------------------
                                    426 ; code
                                    427 ;--------------------------------------------------------
                                    428 	.area CSEG    (CODE)
                                    429 ;------------------------------------------------------------
                                    430 ;Allocation info for local variables in function 'Init_Timer0'
                                    431 ;------------------------------------------------------------
                                    432 ;	.\stcboot.c:27: void Init_Timer0(void)
                                    433 ;	-----------------------------------------
                                    434 ;	 function Init_Timer0
                                    435 ;	-----------------------------------------
      0000E3                        436 _Init_Timer0:
                           000007   437 	ar7 = 0x07
                           000006   438 	ar6 = 0x06
                           000005   439 	ar5 = 0x05
                           000004   440 	ar4 = 0x04
                           000003   441 	ar3 = 0x03
                           000002   442 	ar2 = 0x02
                           000001   443 	ar1 = 0x01
                           000000   444 	ar0 = 0x00
                                    445 ;	.\stcboot.c:29: TMOD |= 0x01;		// mode 1, 16-bit timer
      0000E3 43 89 01         [24]  446 	orl	_TMOD,#0x01
                                    447 ;	.\stcboot.c:30: TH0 = 0xFC;		// overflow at 65536
      0000E6 75 8C FC         [24]  448 	mov	_TH0,#0xfc
                                    449 ;	.\stcboot.c:31: TL0 = 0x18;
      0000E9 75 8A 18         [24]  450 	mov	_TL0,#0x18
                                    451 ;	.\stcboot.c:32: EA = 1;			// enable global interrupts
                                    452 ;	assignBit
      0000EC D2 AF            [12]  453 	setb	_EA
                                    454 ;	.\stcboot.c:33: ET0 = 1;		// enable timer0 interrupt
                                    455 ;	assignBit
      0000EE D2 A9            [12]  456 	setb	_ET0
                                    457 ;	.\stcboot.c:34: TR0 = 1;		// timer on
                                    458 ;	assignBit
      0000F0 D2 8C            [12]  459 	setb	_TR0
                                    460 ;	.\stcboot.c:35: }
      0000F2 22               [24]  461 	ret
                                    462 ;------------------------------------------------------------
                                    463 ;Allocation info for local variables in function 'Timer0_isr'
                                    464 ;------------------------------------------------------------
                                    465 ;	.\stcboot.c:37: void Timer0_isr(void) __interrupt(1) __using(1)
                                    466 ;	-----------------------------------------
                                    467 ;	 function Timer0_isr
                                    468 ;	-----------------------------------------
      0000F3                        469 _Timer0_isr:
                           00000F   470 	ar7 = 0x0f
                           00000E   471 	ar6 = 0x0e
                           00000D   472 	ar5 = 0x0d
                           00000C   473 	ar4 = 0x0c
                           00000B   474 	ar3 = 0x0b
                           00000A   475 	ar2 = 0x0a
                           000009   476 	ar1 = 0x09
                           000008   477 	ar0 = 0x08
      0000F3 C0 E0            [24]  478 	push	acc
      0000F5 C0 D0            [24]  479 	push	psw
                                    480 ;	.\stcboot.c:39: TH0 = 0xFC;		// overflow at 65536
      0000F7 75 8C FC         [24]  481 	mov	_TH0,#0xfc
                                    482 ;	.\stcboot.c:40: TL0 = 0x18;
      0000FA 75 8A 18         [24]  483 	mov	_TL0,#0x18
                                    484 ;	.\stcboot.c:41: timercounter++;
      0000FD 05 1E            [12]  485 	inc	_timercounter
      0000FF E4               [12]  486 	clr	a
      000100 B5 1E 02         [24]  487 	cjne	a,_timercounter,00103$
      000103 05 1F            [12]  488 	inc	(_timercounter + 1)
      000105                        489 00103$:
                                    490 ;	.\stcboot.c:42: }
      000105 D0 D0            [24]  491 	pop	psw
      000107 D0 E0            [24]  492 	pop	acc
      000109 32               [24]  493 	reti
                                    494 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    495 ;	eliminated unneeded push/pop dpl
                                    496 ;	eliminated unneeded push/pop dph
                                    497 ;	eliminated unneeded push/pop b
                                    498 ;------------------------------------------------------------
                                    499 ;Allocation info for local variables in function 'delay'
                                    500 ;------------------------------------------------------------
                                    501 ;time          Allocated to registers 
                                    502 ;------------------------------------------------------------
                                    503 ;	.\stcboot.c:45: void delay(unsigned int time) {
                                    504 ;	-----------------------------------------
                                    505 ;	 function delay
                                    506 ;	-----------------------------------------
      00010A                        507 _delay:
                           000007   508 	ar7 = 0x07
                           000006   509 	ar6 = 0x06
                           000005   510 	ar5 = 0x05
                           000004   511 	ar4 = 0x04
                           000003   512 	ar3 = 0x03
                           000002   513 	ar2 = 0x02
                           000001   514 	ar1 = 0x01
                           000000   515 	ar0 = 0x00
      00010A AE 82            [24]  516 	mov	r6, dpl
      00010C AF 83            [24]  517 	mov	r7, dph
                                    518 ;	.\stcboot.c:46: while (time--);
      00010E                        519 00101$:
      00010E 8E 04            [24]  520 	mov	ar4,r6
      000110 8F 05            [24]  521 	mov	ar5,r7
      000112 1E               [12]  522 	dec	r6
      000113 BE FF 01         [24]  523 	cjne	r6,#0xff,00113$
      000116 1F               [12]  524 	dec	r7
      000117                        525 00113$:
      000117 EC               [12]  526 	mov	a,r4
      000118 4D               [12]  527 	orl	a,r5
      000119 70 F3            [24]  528 	jnz	00101$
                                    529 ;	.\stcboot.c:47: }
      00011B 22               [24]  530 	ret
                                    531 ;------------------------------------------------------------
                                    532 ;Allocation info for local variables in function 'binary_count'
                                    533 ;------------------------------------------------------------
                                    534 ;count         Allocated to registers r7 
                                    535 ;------------------------------------------------------------
                                    536 ;	.\stcboot.c:50: void binary_count(void) {
                                    537 ;	-----------------------------------------
                                    538 ;	 function binary_count
                                    539 ;	-----------------------------------------
      00011C                        540 _binary_count:
                                    541 ;	.\stcboot.c:55: while(count<255){
      00011C 7F 00            [12]  542 	mov	r7,#0x00
      00011E                        543 00103$:
      00011E BF FF 00         [24]  544 	cjne	r7,#0xff,00126$
      000121                        545 00126$:
      000121 50 1C            [24]  546 	jnc	00106$
                                    547 ;	.\stcboot.c:56: P1 = ~count;  // Output inverted count to LEDs
      000123 8F 06            [24]  548 	mov	ar6,r7
      000125 EE               [12]  549 	mov	a,r6
      000126 F4               [12]  550 	cpl	a
      000127 F5 90            [12]  551 	mov	_P1,a
                                    552 ;	.\stcboot.c:60: delay(5000);
      000129 90 13 88         [24]  553 	mov	dptr,#0x1388
      00012C C0 07            [24]  554 	push	ar7
      00012E 12 01 0A         [24]  555 	lcall	_delay
      000131 D0 07            [24]  556 	pop	ar7
                                    557 ;	.\stcboot.c:61: count++;
      000133 0F               [12]  558 	inc	r7
                                    559 ;	.\stcboot.c:63: if ((P3 & 0x20) == 0){
      000134 E5 B0            [12]  560 	mov	a,_P3
      000136 20 E5 E5         [24]  561 	jb	acc.5,00103$
                                    562 ;	.\stcboot.c:64: delay(5000);
      000139 90 13 88         [24]  563 	mov	dptr,#0x1388
                                    564 ;	.\stcboot.c:65: break;
                                    565 ;	.\stcboot.c:68: }
      00013C 02 01 0A         [24]  566 	ljmp	_delay
      00013F                        567 00106$:
      00013F 22               [24]  568 	ret
                                    569 ;------------------------------------------------------------
                                    570 ;Allocation info for local variables in function 'cylon'
                                    571 ;------------------------------------------------------------
                                    572 ;pos           Allocated to registers r7 
                                    573 ;direction     Allocated to registers r6 
                                    574 ;------------------------------------------------------------
                                    575 ;	.\stcboot.c:71: void cylon(void) {
                                    576 ;	-----------------------------------------
                                    577 ;	 function cylon
                                    578 ;	-----------------------------------------
      000140                        579 _cylon:
                                    580 ;	.\stcboot.c:72: unsigned char pos = 1;
      000140 7F 01            [12]  581 	mov	r7,#0x01
                                    582 ;	.\stcboot.c:73: unsigned char direction = 1; // 1 for forward, 0 for reverse
      000142 7E 01            [12]  583 	mov	r6,#0x01
                                    584 ;	.\stcboot.c:75: while (1) {
      000144                        585 00111$:
                                    586 ;	.\stcboot.c:76: if ((P3 & 0x20) == 0){
      000144 E5 B0            [12]  587 	mov	a,_P3
      000146 20 E5 06         [24]  588 	jb	acc.5,00102$
                                    589 ;	.\stcboot.c:77: delay(5000);
      000149 90 13 88         [24]  590 	mov	dptr,#0x1388
                                    591 ;	.\stcboot.c:78: break;
      00014C 02 01 0A         [24]  592 	ljmp	_delay
      00014F                        593 00102$:
                                    594 ;	.\stcboot.c:80: P1 = ~pos;  // Invert output to turn LEDs on
      00014F EF               [12]  595 	mov	a,r7
      000150 F4               [12]  596 	cpl	a
      000151 F5 90            [12]  597 	mov	_P1,a
                                    598 ;	.\stcboot.c:81: delay(5000);
      000153 90 13 88         [24]  599 	mov	dptr,#0x1388
      000156 C0 07            [24]  600 	push	ar7
      000158 C0 06            [24]  601 	push	ar6
      00015A 12 01 0A         [24]  602 	lcall	_delay
      00015D D0 06            [24]  603 	pop	ar6
      00015F D0 07            [24]  604 	pop	ar7
                                    605 ;	.\stcboot.c:83: if (direction) {
      000161 EE               [12]  606 	mov	a,r6
      000162 60 0A            [24]  607 	jz	00108$
                                    608 ;	.\stcboot.c:84: pos <<= 1;
      000164 EF               [12]  609 	mov	a,r7
      000165 2F               [12]  610 	add	a,r7
      000166 FF               [12]  611 	mov	r7,a
                                    612 ;	.\stcboot.c:85: if (pos == 0x80) direction = 0;
      000167 BF 80 DA         [24]  613 	cjne	r7,#0x80,00111$
      00016A 7E 00            [12]  614 	mov	r6,#0x00
      00016C 80 D6            [24]  615 	sjmp	00111$
      00016E                        616 00108$:
                                    617 ;	.\stcboot.c:87: pos >>= 1;
      00016E EF               [12]  618 	mov	a,r7
      00016F C3               [12]  619 	clr	c
      000170 13               [12]  620 	rrc	a
      000171 FF               [12]  621 	mov	r7,a
                                    622 ;	.\stcboot.c:88: if (pos == 0x01) direction = 1;  // Reverse at the beginning
      000172 BF 01 CF         [24]  623 	cjne	r7,#0x01,00111$
      000175 7E 01            [12]  624 	mov	r6,#0x01
                                    625 ;	.\stcboot.c:92: }
      000177 80 CB            [24]  626 	sjmp	00111$
                                    627 ;------------------------------------------------------------
                                    628 ;Allocation info for local variables in function 'dual_cylon'
                                    629 ;------------------------------------------------------------
                                    630 ;pos1          Allocated to registers r7 
                                    631 ;pos2          Allocated to registers r6 
                                    632 ;------------------------------------------------------------
                                    633 ;	.\stcboot.c:96: void dual_cylon(void) {
                                    634 ;	-----------------------------------------
                                    635 ;	 function dual_cylon
                                    636 ;	-----------------------------------------
      000179                        637 _dual_cylon:
                                    638 ;	.\stcboot.c:97: unsigned char pos1 = 1, pos2 = 0x80;
      000179 7F 01            [12]  639 	mov	r7,#0x01
      00017B 7E 80            [12]  640 	mov	r6,#0x80
                                    641 ;	.\stcboot.c:98: while (1) {
      00017D                        642 00106$:
                                    643 ;	.\stcboot.c:99: if ((P3 & 0x20) == 0){
      00017D E5 B0            [12]  644 	mov	a,_P3
      00017F 20 E5 09         [24]  645 	jb	acc.5,00102$
                                    646 ;	.\stcboot.c:100: P1=0xFF;
      000182 75 90 FF         [24]  647 	mov	_P1,#0xff
                                    648 ;	.\stcboot.c:101: delay(5000);
      000185 90 13 88         [24]  649 	mov	dptr,#0x1388
                                    650 ;	.\stcboot.c:102: break;
      000188 02 01 0A         [24]  651 	ljmp	_delay
      00018B                        652 00102$:
                                    653 ;	.\stcboot.c:104: P1 = ~(pos1 | pos2);  // Invert output for correct LED logic
      00018B EE               [12]  654 	mov	a,r6
      00018C 4F               [12]  655 	orl	a,r7
      00018D F4               [12]  656 	cpl	a
      00018E F5 90            [12]  657 	mov	_P1,a
                                    658 ;	.\stcboot.c:105: delay(5000);
      000190 90 13 88         [24]  659 	mov	dptr,#0x1388
      000193 C0 07            [24]  660 	push	ar7
      000195 C0 06            [24]  661 	push	ar6
      000197 12 01 0A         [24]  662 	lcall	_delay
      00019A D0 06            [24]  663 	pop	ar6
      00019C D0 07            [24]  664 	pop	ar7
                                    665 ;	.\stcboot.c:106: pos1 <<= 1;
      00019E EF               [12]  666 	mov	a,r7
      00019F 2F               [12]  667 	add	a,r7
      0001A0 FF               [12]  668 	mov	r7,a
                                    669 ;	.\stcboot.c:107: pos2 >>= 1;
      0001A1 EE               [12]  670 	mov	a,r6
      0001A2 C3               [12]  671 	clr	c
      0001A3 13               [12]  672 	rrc	a
      0001A4 FE               [12]  673 	mov	r6,a
                                    674 ;	.\stcboot.c:108: if (pos1 == 0x80) {  // Reset condition
      0001A5 BF 80 D5         [24]  675 	cjne	r7,#0x80,00106$
                                    676 ;	.\stcboot.c:109: pos1 = 1;
      0001A8 7F 01            [12]  677 	mov	r7,#0x01
                                    678 ;	.\stcboot.c:110: pos2 = 0x80;
      0001AA 7E 80            [12]  679 	mov	r6,#0x80
                                    680 ;	.\stcboot.c:113: }
      0001AC 80 CF            [24]  681 	sjmp	00106$
                                    682 ;------------------------------------------------------------
                                    683 ;Allocation info for local variables in function 'display_number'
                                    684 ;------------------------------------------------------------
                                    685 ;temp          Allocated to registers r6 r7 
                                    686 ;ones          Allocated to registers r4 
                                    687 ;tens          Allocated to registers r3 
                                    688 ;hundreds      Allocated to registers r2 
                                    689 ;thousands     Allocated to registers r6 
                                    690 ;------------------------------------------------------------
                                    691 ;	.\stcboot.c:116: void display_number(void) {
                                    692 ;	-----------------------------------------
                                    693 ;	 function display_number
                                    694 ;	-----------------------------------------
      0001AE                        695 _display_number:
                                    696 ;	.\stcboot.c:117: unsigned int temp = number;
      0001AE AE 10            [24]  697 	mov	r6,_number
      0001B0 AF 11            [24]  698 	mov	r7,(_number + 1)
                                    699 ;	.\stcboot.c:119: unsigned char ones = temp % 10;
      0001B2 75 2C 0A         [24]  700 	mov	__moduint_PARM_2,#0x0a
      0001B5 75 2D 00         [24]  701 	mov	(__moduint_PARM_2 + 1),#0x00
      0001B8 8E 82            [24]  702 	mov	dpl, r6
      0001BA 8F 83            [24]  703 	mov	dph, r7
      0001BC C0 07            [24]  704 	push	ar7
      0001BE C0 06            [24]  705 	push	ar6
      0001C0 12 03 73         [24]  706 	lcall	__moduint
      0001C3 AC 82            [24]  707 	mov	r4, dpl
      0001C5 D0 06            [24]  708 	pop	ar6
      0001C7 D0 07            [24]  709 	pop	ar7
                                    710 ;	.\stcboot.c:120: temp /= 10;
      0001C9 75 2C 0A         [24]  711 	mov	__divuint_PARM_2,#0x0a
      0001CC 75 2D 00         [24]  712 	mov	(__divuint_PARM_2 + 1),#0x00
                                    713 ;	.\stcboot.c:121: unsigned char tens = temp % 10;
      0001CF 8E 82            [24]  714 	mov	dpl, r6
      0001D1 8F 83            [24]  715 	mov	dph, r7
      0001D3 C0 04            [24]  716 	push	ar4
      0001D5 12 03 4A         [24]  717 	lcall	__divuint
      0001D8 AE 82            [24]  718 	mov	r6, dpl
      0001DA AF 83            [24]  719 	mov	r7, dph
      0001DC D0 04            [24]  720 	pop	ar4
      0001DE 75 2C 0A         [24]  721 	mov	__moduint_PARM_2,#0x0a
      0001E1 75 2D 00         [24]  722 	mov	(__moduint_PARM_2 + 1),#0x00
      0001E4 8E 82            [24]  723 	mov	dpl, r6
      0001E6 8F 83            [24]  724 	mov	dph, r7
      0001E8 C0 07            [24]  725 	push	ar7
      0001EA C0 06            [24]  726 	push	ar6
      0001EC C0 04            [24]  727 	push	ar4
      0001EE 12 03 73         [24]  728 	lcall	__moduint
      0001F1 AB 82            [24]  729 	mov	r3, dpl
      0001F3 D0 04            [24]  730 	pop	ar4
      0001F5 D0 06            [24]  731 	pop	ar6
      0001F7 D0 07            [24]  732 	pop	ar7
                                    733 ;	.\stcboot.c:122: temp /= 10;
      0001F9 75 2C 0A         [24]  734 	mov	__divuint_PARM_2,#0x0a
      0001FC 75 2D 00         [24]  735 	mov	(__divuint_PARM_2 + 1),#0x00
                                    736 ;	.\stcboot.c:123: unsigned char hundreds = temp % 10;
      0001FF 8E 82            [24]  737 	mov	dpl, r6
      000201 8F 83            [24]  738 	mov	dph, r7
      000203 C0 04            [24]  739 	push	ar4
      000205 C0 03            [24]  740 	push	ar3
      000207 12 03 4A         [24]  741 	lcall	__divuint
      00020A AE 82            [24]  742 	mov	r6, dpl
      00020C AF 83            [24]  743 	mov	r7, dph
      00020E D0 03            [24]  744 	pop	ar3
      000210 D0 04            [24]  745 	pop	ar4
      000212 75 2C 0A         [24]  746 	mov	__moduint_PARM_2,#0x0a
      000215 75 2D 00         [24]  747 	mov	(__moduint_PARM_2 + 1),#0x00
      000218 8E 82            [24]  748 	mov	dpl, r6
      00021A 8F 83            [24]  749 	mov	dph, r7
      00021C C0 07            [24]  750 	push	ar7
      00021E C0 06            [24]  751 	push	ar6
      000220 C0 04            [24]  752 	push	ar4
      000222 C0 03            [24]  753 	push	ar3
      000224 12 03 73         [24]  754 	lcall	__moduint
      000227 AA 82            [24]  755 	mov	r2, dpl
      000229 D0 03            [24]  756 	pop	ar3
      00022B D0 04            [24]  757 	pop	ar4
      00022D D0 06            [24]  758 	pop	ar6
      00022F D0 07            [24]  759 	pop	ar7
                                    760 ;	.\stcboot.c:124: temp /= 10;
      000231 75 2C 0A         [24]  761 	mov	__divuint_PARM_2,#0x0a
      000234 75 2D 00         [24]  762 	mov	(__divuint_PARM_2 + 1),#0x00
                                    763 ;	.\stcboot.c:125: unsigned char thousands = temp % 10;
      000237 8E 82            [24]  764 	mov	dpl, r6
      000239 8F 83            [24]  765 	mov	dph, r7
      00023B C0 04            [24]  766 	push	ar4
      00023D C0 03            [24]  767 	push	ar3
      00023F C0 02            [24]  768 	push	ar2
      000241 12 03 4A         [24]  769 	lcall	__divuint
      000244 AE 82            [24]  770 	mov	r6, dpl
      000246 75 F0 0A         [24]  771 	mov	b,#0x0a
      000249 EE               [12]  772 	mov	a,r6
      00024A 84               [48]  773 	div	ab
                                    774 ;	.\stcboot.c:127: P0 = seg_table[thousands];	P2_0 = 0;	delay(500);	P2_0 = 1;
      00024B E5 F0            [12]  775 	mov	a,b
      00024D 24 22            [12]  776 	add	a, #_seg_table
      00024F F9               [12]  777 	mov	r1,a
      000250 87 80            [24]  778 	mov	_P0,@r1
                                    779 ;	assignBit
      000252 C2 A0            [12]  780 	clr	_P2_0
      000254 90 01 F4         [24]  781 	mov	dptr,#0x01f4
      000257 12 01 0A         [24]  782 	lcall	_delay
      00025A D0 02            [24]  783 	pop	ar2
                                    784 ;	assignBit
      00025C D2 A0            [12]  785 	setb	_P2_0
                                    786 ;	.\stcboot.c:128: P0 = seg_table[hundreds];	P2_1 = 0;	delay(500);	P2_1 = 1;
      00025E EA               [12]  787 	mov	a,r2
      00025F 24 22            [12]  788 	add	a, #_seg_table
      000261 F9               [12]  789 	mov	r1,a
      000262 87 80            [24]  790 	mov	_P0,@r1
                                    791 ;	assignBit
      000264 C2 A1            [12]  792 	clr	_P2_1
      000266 90 01 F4         [24]  793 	mov	dptr,#0x01f4
      000269 12 01 0A         [24]  794 	lcall	_delay
      00026C D0 03            [24]  795 	pop	ar3
                                    796 ;	assignBit
      00026E D2 A1            [12]  797 	setb	_P2_1
                                    798 ;	.\stcboot.c:129: P0 = seg_table[tens];		P2_2 = 0;	delay(500);	P2_2 = 1;
      000270 EB               [12]  799 	mov	a,r3
      000271 24 22            [12]  800 	add	a, #_seg_table
      000273 F9               [12]  801 	mov	r1,a
      000274 87 80            [24]  802 	mov	_P0,@r1
                                    803 ;	assignBit
      000276 C2 A2            [12]  804 	clr	_P2_2
      000278 90 01 F4         [24]  805 	mov	dptr,#0x01f4
      00027B 12 01 0A         [24]  806 	lcall	_delay
      00027E D0 04            [24]  807 	pop	ar4
                                    808 ;	assignBit
      000280 D2 A2            [12]  809 	setb	_P2_2
                                    810 ;	.\stcboot.c:130: P0 = seg_table[ones];		P2_3 = 0;	delay(500);	P2_3 = 1;
      000282 EC               [12]  811 	mov	a,r4
      000283 24 22            [12]  812 	add	a, #_seg_table
      000285 F9               [12]  813 	mov	r1,a
      000286 87 80            [24]  814 	mov	_P0,@r1
                                    815 ;	assignBit
      000288 C2 A3            [12]  816 	clr	_P2_3
      00028A 90 01 F4         [24]  817 	mov	dptr,#0x01f4
      00028D 12 01 0A         [24]  818 	lcall	_delay
                                    819 ;	assignBit
      000290 D2 A3            [12]  820 	setb	_P2_3
                                    821 ;	.\stcboot.c:131: }
      000292 22               [24]  822 	ret
                                    823 ;------------------------------------------------------------
                                    824 ;Allocation info for local variables in function 'number_clicker'
                                    825 ;------------------------------------------------------------
                                    826 ;	.\stcboot.c:134: void number_clicker(void) {
                                    827 ;	-----------------------------------------
                                    828 ;	 function number_clicker
                                    829 ;	-----------------------------------------
      000293                        830 _number_clicker:
                                    831 ;	.\stcboot.c:135: while (1) {
      000293                        832 00117$:
                                    833 ;	.\stcboot.c:136: if ((P3 & 0x20) == 0){
      000293 E5 B0            [12]  834 	mov	a,_P3
      000295 20 E5 06         [24]  835 	jb	acc.5,00102$
                                    836 ;	.\stcboot.c:137: delay(5000);
      000298 90 13 88         [24]  837 	mov	dptr,#0x1388
                                    838 ;	.\stcboot.c:138: break;
      00029B 02 01 0A         [24]  839 	ljmp	_delay
      00029E                        840 00102$:
                                    841 ;	.\stcboot.c:140: display_number();
      00029E 12 01 AE         [24]  842 	lcall	_display_number
                                    843 ;	.\stcboot.c:141: if ((P3 & 0x08) == 0) { // Button Pressed
      0002A1 E5 B0            [12]  844 	mov	a,_P3
      0002A3 20 E3 23         [24]  845 	jb	acc.3,00108$
                                    846 ;	.\stcboot.c:142: delay(5000);
      0002A6 90 13 88         [24]  847 	mov	dptr,#0x1388
      0002A9 12 01 0A         [24]  848 	lcall	_delay
                                    849 ;	.\stcboot.c:143: if ((P3 & 0x08) == 0) { // Button Pressed
      0002AC E5 B0            [12]  850 	mov	a,_P3
      0002AE 20 E3 18         [24]  851 	jb	acc.3,00108$
                                    852 ;	.\stcboot.c:144: number++;
      0002B1 05 10            [12]  853 	inc	_number
      0002B3 E4               [12]  854 	clr	a
      0002B4 B5 10 02         [24]  855 	cjne	a,_number,00172$
      0002B7 05 11            [12]  856 	inc	(_number + 1)
      0002B9                        857 00172$:
                                    858 ;	.\stcboot.c:145: if (number > 9999) number = 0; // Roll over to 0
      0002B9 C3               [12]  859 	clr	c
      0002BA 74 0F            [12]  860 	mov	a,#0x0f
      0002BC 95 10            [12]  861 	subb	a,_number
      0002BE 74 27            [12]  862 	mov	a,#0x27
      0002C0 95 11            [12]  863 	subb	a,(_number + 1)
      0002C2 50 05            [24]  864 	jnc	00108$
      0002C4 E4               [12]  865 	clr	a
      0002C5 F5 10            [12]  866 	mov	_number,a
      0002C7 F5 11            [12]  867 	mov	(_number + 1),a
      0002C9                        868 00108$:
                                    869 ;	.\stcboot.c:151: if ((P3 & 0x04) == 0) { // Button Pressed
      0002C9 E5 B0            [12]  870 	mov	a,_P3
      0002CB 20 E2 C5         [24]  871 	jb	acc.2,00117$
                                    872 ;	.\stcboot.c:152: delay(5000);
      0002CE 90 13 88         [24]  873 	mov	dptr,#0x1388
      0002D1 12 01 0A         [24]  874 	lcall	_delay
                                    875 ;	.\stcboot.c:153: if ((P3 & 0x04) == 0) { // Button Pressed
      0002D4 E5 B0            [12]  876 	mov	a,_P3
      0002D6 20 E2 BA         [24]  877 	jb	acc.2,00117$
                                    878 ;	.\stcboot.c:154: if (number == 0) number = 9999; // Roll over to 9999
      0002D9 E5 10            [12]  879 	mov	a,_number
      0002DB 45 11            [12]  880 	orl	a,(_number + 1)
      0002DD 70 08            [24]  881 	jnz	00110$
      0002DF 75 10 0F         [24]  882 	mov	_number,#0x0f
      0002E2 75 11 27         [24]  883 	mov	(_number + 1),#0x27
      0002E5 80 AC            [24]  884 	sjmp	00117$
      0002E7                        885 00110$:
                                    886 ;	.\stcboot.c:155: else number--;
      0002E7 15 10            [12]  887 	dec	_number
      0002E9 74 FF            [12]  888 	mov	a,#0xff
      0002EB B5 10 02         [24]  889 	cjne	a,_number,00177$
      0002EE 15 11            [12]  890 	dec	(_number + 1)
      0002F0                        891 00177$:
                                    892 ;	.\stcboot.c:159: }
      0002F0 80 A1            [24]  893 	sjmp	00117$
                                    894 ;------------------------------------------------------------
                                    895 ;Allocation info for local variables in function 'main'
                                    896 ;------------------------------------------------------------
                                    897 ;	.\stcboot.c:161: void main(void) {
                                    898 ;	-----------------------------------------
                                    899 ;	 function main
                                    900 ;	-----------------------------------------
      0002F2                        901 _main:
                                    902 ;	.\stcboot.c:162: Init_Timer0();
      0002F2 12 00 E3         [24]  903 	lcall	_Init_Timer0
                                    904 ;	.\stcboot.c:163: while (1) {
      0002F5                        905 00112$:
                                    906 ;	.\stcboot.c:164: if ((P3 & 0x20) == 0) {
      0002F5 E5 B0            [12]  907 	mov	a,_P3
      0002F7 FF               [12]  908 	mov	r7,a
      0002F8 20 E5 18         [24]  909 	jb	acc.5,00104$
                                    910 ;	.\stcboot.c:165: buttonIndex++;
      0002FB 05 1C            [12]  911 	inc	_buttonIndex
      0002FD E4               [12]  912 	clr	a
      0002FE B5 1C 02         [24]  913 	cjne	a,_buttonIndex,00141$
      000301 05 1D            [12]  914 	inc	(_buttonIndex + 1)
      000303                        915 00141$:
                                    916 ;	.\stcboot.c:166: if (buttonIndex > 5)
      000303 C3               [12]  917 	clr	c
      000304 74 05            [12]  918 	mov	a,#0x05
      000306 95 1C            [12]  919 	subb	a,_buttonIndex
      000308 E4               [12]  920 	clr	a
      000309 95 1D            [12]  921 	subb	a,(_buttonIndex + 1)
      00030B 50 06            [24]  922 	jnc	00104$
                                    923 ;	.\stcboot.c:167: buttonIndex = 1;
      00030D 75 1C 01         [24]  924 	mov	_buttonIndex,#0x01
      000310 75 1D 00         [24]  925 	mov	(_buttonIndex + 1),#0x00
      000313                        926 00104$:
                                    927 ;	.\stcboot.c:169: switch(buttonIndex) {
      000313 C3               [12]  928 	clr	c
      000314 74 04            [12]  929 	mov	a,#0x04
      000316 95 1C            [12]  930 	subb	a,_buttonIndex
      000318 E4               [12]  931 	clr	a
      000319 95 1D            [12]  932 	subb	a,(_buttonIndex + 1)
      00031B 40 D8            [24]  933 	jc	00112$
      00031D E5 1C            [12]  934 	mov	a,_buttonIndex
      00031F 75 F0 03         [24]  935 	mov	b,#0x03
      000322 A4               [48]  936 	mul	ab
      000323 90 03 27         [24]  937 	mov	dptr,#00144$
      000326 73               [24]  938 	jmp	@a+dptr
      000327                        939 00144$:
      000327 02 02 F5         [24]  940 	ljmp	00112$
      00032A 02 03 36         [24]  941 	ljmp	00105$
      00032D 02 03 3B         [24]  942 	ljmp	00106$
      000330 02 03 40         [24]  943 	ljmp	00107$
      000333 02 03 45         [24]  944 	ljmp	00108$
                                    945 ;	.\stcboot.c:170: case 1:
      000336                        946 00105$:
                                    947 ;	.\stcboot.c:171: binary_count();
      000336 12 01 1C         [24]  948 	lcall	_binary_count
                                    949 ;	.\stcboot.c:172: break;
                                    950 ;	.\stcboot.c:173: case 2:
      000339 80 BA            [24]  951 	sjmp	00112$
      00033B                        952 00106$:
                                    953 ;	.\stcboot.c:174: cylon();
      00033B 12 01 40         [24]  954 	lcall	_cylon
                                    955 ;	.\stcboot.c:175: break;
                                    956 ;	.\stcboot.c:176: case 3:
      00033E 80 B5            [24]  957 	sjmp	00112$
      000340                        958 00107$:
                                    959 ;	.\stcboot.c:177: dual_cylon();
      000340 12 01 79         [24]  960 	lcall	_dual_cylon
                                    961 ;	.\stcboot.c:178: break;
                                    962 ;	.\stcboot.c:179: case 4:
      000343 80 B0            [24]  963 	sjmp	00112$
      000345                        964 00108$:
                                    965 ;	.\stcboot.c:180: number_clicker();
      000345 12 02 93         [24]  966 	lcall	_number_clicker
                                    967 ;	.\stcboot.c:181: break;
                                    968 ;	.\stcboot.c:184: }
                                    969 ;	.\stcboot.c:186: }
      000348 80 AB            [24]  970 	sjmp	00112$
                                    971 	.area CSEG    (CODE)
                                    972 	.area CONST   (CODE)
                                    973 	.area CONST   (CODE)
      0003C4                        974 _period:
      0003C4 E8 03 00 00            975 	.byte #0xe8, #0x03, #0x00, #0x00	; 1000
                                    976 	.area CSEG    (CODE)
                                    977 	.area XINIT   (CODE)
                                    978 	.area CABS    (ABS,CODE)
