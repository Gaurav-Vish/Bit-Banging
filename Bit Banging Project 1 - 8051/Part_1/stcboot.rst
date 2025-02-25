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
                                    237 ; internal ram data
                                    238 ;--------------------------------------------------------
                                    239 	.area DSEG    (DATA)
      000010                        240 _number::
      000010                        241 	.ds 2
      000012                        242 _switchCount::
      000012                        243 	.ds 2
      000014                        244 _startmillis::
      000014                        245 	.ds 4
      000018                        246 _currentmillis::
      000018                        247 	.ds 4
      00001C                        248 _buttonIndex::
      00001C                        249 	.ds 2
      00001E                        250 _seg_table::
      00001E                        251 	.ds 10
                                    252 ;--------------------------------------------------------
                                    253 ; overlayable items in internal ram
                                    254 ;--------------------------------------------------------
                                    255 	.area	OSEG    (OVR,DATA)
                                    256 ;--------------------------------------------------------
                                    257 ; Stack segment in internal ram
                                    258 ;--------------------------------------------------------
                                    259 	.area SSEG
      00002A                        260 __start__stack:
      00002A                        261 	.ds	1
                                    262 
                                    263 ;--------------------------------------------------------
                                    264 ; indirectly addressable internal ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area ISEG    (DATA)
                                    267 ;--------------------------------------------------------
                                    268 ; absolute internal ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area IABS    (ABS,DATA)
                                    271 	.area IABS    (ABS,DATA)
                                    272 ;--------------------------------------------------------
                                    273 ; bit data
                                    274 ;--------------------------------------------------------
                                    275 	.area BSEG    (BIT)
                                    276 ;--------------------------------------------------------
                                    277 ; paged external ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area PSEG    (PAG,XDATA)
                                    280 ;--------------------------------------------------------
                                    281 ; uninitialized external ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area XSEG    (XDATA)
                                    284 ;--------------------------------------------------------
                                    285 ; absolute external ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area XABS    (ABS,XDATA)
                                    288 ;--------------------------------------------------------
                                    289 ; initialized external ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area XISEG   (XDATA)
                                    292 	.area HOME    (CODE)
                                    293 	.area GSINIT0 (CODE)
                                    294 	.area GSINIT1 (CODE)
                                    295 	.area GSINIT2 (CODE)
                                    296 	.area GSINIT3 (CODE)
                                    297 	.area GSINIT4 (CODE)
                                    298 	.area GSINIT5 (CODE)
                                    299 	.area GSINIT  (CODE)
                                    300 	.area GSFINAL (CODE)
                                    301 	.area CSEG    (CODE)
                                    302 ;--------------------------------------------------------
                                    303 ; interrupt vector
                                    304 ;--------------------------------------------------------
                                    305 	.area HOME    (CODE)
      000000                        306 __interrupt_vect:
      000000 02 00 54         [24]  307 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  308 	reti
      000004                        309 	.ds	7
      00000B 02 00 EB         [24]  310 	ljmp	_Timer0_isr
                                    311 ; restartable atomic support routines
      00000E                        312 	.ds	2
      000010                        313 sdcc_atomic_exchange_rollback_start::
      000010 00               [12]  314 	nop
      000011 00               [12]  315 	nop
      000012                        316 sdcc_atomic_exchange_pdata_impl:
      000012 E2               [24]  317 	movx	a, @r0
      000013 FB               [12]  318 	mov	r3, a
      000014 EA               [12]  319 	mov	a, r2
      000015 F2               [24]  320 	movx	@r0, a
      000016 80 2C            [24]  321 	sjmp	sdcc_atomic_exchange_exit
      000018 00               [12]  322 	nop
      000019 00               [12]  323 	nop
      00001A                        324 sdcc_atomic_exchange_xdata_impl:
      00001A E0               [24]  325 	movx	a, @dptr
      00001B FB               [12]  326 	mov	r3, a
      00001C EA               [12]  327 	mov	a, r2
      00001D F0               [24]  328 	movx	@dptr, a
      00001E 80 24            [24]  329 	sjmp	sdcc_atomic_exchange_exit
      000020                        330 sdcc_atomic_compare_exchange_idata_impl:
      000020 E6               [12]  331 	mov	a, @r0
      000021 B5 02 02         [24]  332 	cjne	a, ar2, .+#5
      000024 EB               [12]  333 	mov	a, r3
      000025 F6               [12]  334 	mov	@r0, a
      000026 22               [24]  335 	ret
      000027 00               [12]  336 	nop
      000028                        337 sdcc_atomic_compare_exchange_pdata_impl:
      000028 E2               [24]  338 	movx	a, @r0
      000029 B5 02 02         [24]  339 	cjne	a, ar2, .+#5
      00002C EB               [12]  340 	mov	a, r3
      00002D F2               [24]  341 	movx	@r0, a
      00002E 22               [24]  342 	ret
      00002F 00               [12]  343 	nop
      000030                        344 sdcc_atomic_compare_exchange_xdata_impl:
      000030 E0               [24]  345 	movx	a, @dptr
      000031 B5 02 02         [24]  346 	cjne	a, ar2, .+#5
      000034 EB               [12]  347 	mov	a, r3
      000035 F0               [24]  348 	movx	@dptr, a
      000036 22               [24]  349 	ret
      000037                        350 sdcc_atomic_exchange_rollback_end::
                                    351 
      000037                        352 sdcc_atomic_exchange_gptr_impl::
      000037 30 F6 E0         [24]  353 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      00003A A8 82            [24]  354 	mov	r0, dpl
      00003C 20 F5 D3         [24]  355 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      00003F                        356 sdcc_atomic_exchange_idata_impl:
      00003F EA               [12]  357 	mov	a, r2
      000040 C6               [12]  358 	xch	a, @r0
      000041 F5 82            [12]  359 	mov	dpl, a
      000043 22               [24]  360 	ret
      000044                        361 sdcc_atomic_exchange_exit:
      000044 8B 82            [24]  362 	mov	dpl, r3
      000046 22               [24]  363 	ret
      000047                        364 sdcc_atomic_compare_exchange_gptr_impl::
      000047 30 F6 E6         [24]  365 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      00004A A8 82            [24]  366 	mov	r0, dpl
      00004C 20 F5 D9         [24]  367 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      00004F 80 CF            [24]  368 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    369 ;--------------------------------------------------------
                                    370 ; global & static initialisations
                                    371 ;--------------------------------------------------------
                                    372 	.area HOME    (CODE)
                                    373 	.area GSINIT  (CODE)
                                    374 	.area GSFINAL (CODE)
                                    375 	.area GSINIT  (CODE)
                                    376 	.globl __sdcc_gsinit_startup
                                    377 	.globl __sdcc_program_startup
                                    378 	.globl __start__stack
                                    379 	.globl __mcs51_genXINIT
                                    380 	.globl __mcs51_genXRAMCLEAR
                                    381 	.globl __mcs51_genRAMCLEAR
                                    382 ;	.\stcboot.c:14: unsigned int number = 0;
      0000AD E4               [12]  383 	clr	a
      0000AE F5 10            [12]  384 	mov	_number,a
      0000B0 F5 11            [12]  385 	mov	(_number + 1),a
                                    386 ;	.\stcboot.c:15: unsigned int switchCount = 0;
      0000B2 F5 12            [12]  387 	mov	_switchCount,a
      0000B4 F5 13            [12]  388 	mov	(_switchCount + 1),a
                                    389 ;	.\stcboot.c:18: unsigned int buttonIndex = 0;
      0000B6 F5 1C            [12]  390 	mov	_buttonIndex,a
      0000B8 F5 1D            [12]  391 	mov	(_buttonIndex + 1),a
                                    392 ;	.\stcboot.c:21: unsigned char seg_table[] = {
      0000BA 75 1E C0         [24]  393 	mov	_seg_table,#0xc0
      0000BD 75 1F F9         [24]  394 	mov	(_seg_table + 0x0001),#0xf9
      0000C0 75 20 A4         [24]  395 	mov	(_seg_table + 0x0002),#0xa4
      0000C3 75 21 B0         [24]  396 	mov	(_seg_table + 0x0003),#0xb0
      0000C6 75 22 99         [24]  397 	mov	(_seg_table + 0x0004),#0x99
      0000C9 75 23 92         [24]  398 	mov	(_seg_table + 0x0005),#0x92
      0000CC 75 24 82         [24]  399 	mov	(_seg_table + 0x0006),#0x82
      0000CF 75 25 F8         [24]  400 	mov	(_seg_table + 0x0007),#0xf8
      0000D2 75 26 80         [24]  401 	mov	(_seg_table + 0x0008),#0x80
      0000D5 75 27 90         [24]  402 	mov	(_seg_table + 0x0009),#0x90
                                    403 	.area GSFINAL (CODE)
      0000D8 02 00 51         [24]  404 	ljmp	__sdcc_program_startup
                                    405 ;--------------------------------------------------------
                                    406 ; Home
                                    407 ;--------------------------------------------------------
                                    408 	.area HOME    (CODE)
                                    409 	.area HOME    (CODE)
      000051                        410 __sdcc_program_startup:
      000051 02 02 DA         [24]  411 	ljmp	_main
                                    412 ;	return from main will return to caller
                                    413 ;--------------------------------------------------------
                                    414 ; code
                                    415 ;--------------------------------------------------------
                                    416 	.area CSEG    (CODE)
                                    417 ;------------------------------------------------------------
                                    418 ;Allocation info for local variables in function 'Init_Timer0'
                                    419 ;------------------------------------------------------------
                                    420 ;	.\stcboot.c:26: void Init_Timer0(void)
                                    421 ;	-----------------------------------------
                                    422 ;	 function Init_Timer0
                                    423 ;	-----------------------------------------
      0000DB                        424 _Init_Timer0:
                           000007   425 	ar7 = 0x07
                           000006   426 	ar6 = 0x06
                           000005   427 	ar5 = 0x05
                           000004   428 	ar4 = 0x04
                           000003   429 	ar3 = 0x03
                           000002   430 	ar2 = 0x02
                           000001   431 	ar1 = 0x01
                           000000   432 	ar0 = 0x00
                                    433 ;	.\stcboot.c:28: TMOD |= 0x01;		// mode 1, 16-bit timer
      0000DB 43 89 01         [24]  434 	orl	_TMOD,#0x01
                                    435 ;	.\stcboot.c:29: TH0 = 0xFC;		// overflow at 65536
      0000DE 75 8C FC         [24]  436 	mov	_TH0,#0xfc
                                    437 ;	.\stcboot.c:30: TL0 = 0x18;
      0000E1 75 8A 18         [24]  438 	mov	_TL0,#0x18
                                    439 ;	.\stcboot.c:31: EA = 1;			// enable global interrupts
                                    440 ;	assignBit
      0000E4 D2 AF            [12]  441 	setb	_EA
                                    442 ;	.\stcboot.c:32: ET0 = 1;		// enable timer0 interrupt
                                    443 ;	assignBit
      0000E6 D2 A9            [12]  444 	setb	_ET0
                                    445 ;	.\stcboot.c:33: TR0 = 1;		// timer on
                                    446 ;	assignBit
      0000E8 D2 8C            [12]  447 	setb	_TR0
                                    448 ;	.\stcboot.c:34: }
      0000EA 22               [24]  449 	ret
                                    450 ;------------------------------------------------------------
                                    451 ;Allocation info for local variables in function 'Timer0_isr'
                                    452 ;------------------------------------------------------------
                                    453 ;	.\stcboot.c:36: void Timer0_isr(void) __interrupt(1) __using(1)
                                    454 ;	-----------------------------------------
                                    455 ;	 function Timer0_isr
                                    456 ;	-----------------------------------------
      0000EB                        457 _Timer0_isr:
                           00000F   458 	ar7 = 0x0f
                           00000E   459 	ar6 = 0x0e
                           00000D   460 	ar5 = 0x0d
                           00000C   461 	ar4 = 0x0c
                           00000B   462 	ar3 = 0x0b
                           00000A   463 	ar2 = 0x0a
                           000009   464 	ar1 = 0x09
                           000008   465 	ar0 = 0x08
                                    466 ;	.\stcboot.c:38: TH0 = 0xFC;		// overflow at 65536
      0000EB 75 8C FC         [24]  467 	mov	_TH0,#0xfc
                                    468 ;	.\stcboot.c:39: TL0 = 0x18;
      0000EE 75 8A 18         [24]  469 	mov	_TL0,#0x18
                                    470 ;	.\stcboot.c:41: }
      0000F1 32               [24]  471 	reti
                                    472 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    473 ;	eliminated unneeded push/pop not_psw
                                    474 ;	eliminated unneeded push/pop dpl
                                    475 ;	eliminated unneeded push/pop dph
                                    476 ;	eliminated unneeded push/pop b
                                    477 ;	eliminated unneeded push/pop acc
                                    478 ;------------------------------------------------------------
                                    479 ;Allocation info for local variables in function 'delay'
                                    480 ;------------------------------------------------------------
                                    481 ;time          Allocated to registers 
                                    482 ;------------------------------------------------------------
                                    483 ;	.\stcboot.c:45: void delay(unsigned int time) {
                                    484 ;	-----------------------------------------
                                    485 ;	 function delay
                                    486 ;	-----------------------------------------
      0000F2                        487 _delay:
                           000007   488 	ar7 = 0x07
                           000006   489 	ar6 = 0x06
                           000005   490 	ar5 = 0x05
                           000004   491 	ar4 = 0x04
                           000003   492 	ar3 = 0x03
                           000002   493 	ar2 = 0x02
                           000001   494 	ar1 = 0x01
                           000000   495 	ar0 = 0x00
      0000F2 AE 82            [24]  496 	mov	r6, dpl
      0000F4 AF 83            [24]  497 	mov	r7, dph
                                    498 ;	.\stcboot.c:46: while (time--);
      0000F6                        499 00101$:
      0000F6 8E 04            [24]  500 	mov	ar4,r6
      0000F8 8F 05            [24]  501 	mov	ar5,r7
      0000FA 1E               [12]  502 	dec	r6
      0000FB BE FF 01         [24]  503 	cjne	r6,#0xff,00113$
      0000FE 1F               [12]  504 	dec	r7
      0000FF                        505 00113$:
      0000FF EC               [12]  506 	mov	a,r4
      000100 4D               [12]  507 	orl	a,r5
      000101 70 F3            [24]  508 	jnz	00101$
                                    509 ;	.\stcboot.c:47: }
      000103 22               [24]  510 	ret
                                    511 ;------------------------------------------------------------
                                    512 ;Allocation info for local variables in function 'binary_count'
                                    513 ;------------------------------------------------------------
                                    514 ;count         Allocated to registers r6 r7 
                                    515 ;------------------------------------------------------------
                                    516 ;	.\stcboot.c:50: void binary_count(void) {
                                    517 ;	-----------------------------------------
                                    518 ;	 function binary_count
                                    519 ;	-----------------------------------------
      000104                        520 _binary_count:
                                    521 ;	.\stcboot.c:52: do{
      000104 7E 00            [12]  522 	mov	r6,#0x00
      000106 7F 00            [12]  523 	mov	r7,#0x00
      000108                        524 00103$:
                                    525 ;	.\stcboot.c:53: P1 = ~count;  // Output inverted count to LEDs
      000108 8E 05            [24]  526 	mov	ar5,r6
      00010A ED               [12]  527 	mov	a,r5
      00010B F4               [12]  528 	cpl	a
      00010C F5 90            [12]  529 	mov	_P1,a
                                    530 ;	.\stcboot.c:54: delay(2000);
      00010E 90 07 D0         [24]  531 	mov	dptr,#0x07d0
      000111 C0 07            [24]  532 	push	ar7
      000113 C0 06            [24]  533 	push	ar6
      000115 12 00 F2         [24]  534 	lcall	_delay
      000118 D0 06            [24]  535 	pop	ar6
      00011A D0 07            [24]  536 	pop	ar7
                                    537 ;	.\stcboot.c:55: count++;
      00011C 0E               [12]  538 	inc	r6
      00011D BE 00 01         [24]  539 	cjne	r6,#0x00,00120$
      000120 0F               [12]  540 	inc	r7
      000121                        541 00120$:
                                    542 ;	.\stcboot.c:56: if ((P3 & 0x20) == 0){
      000121 E5 B0            [12]  543 	mov	a,_P3
      000123 20 E5 06         [24]  544 	jb	acc.5,00104$
                                    545 ;	.\stcboot.c:57: delay(5000);
      000126 90 13 88         [24]  546 	mov	dptr,#0x1388
                                    547 ;	.\stcboot.c:58: break;
      000129 02 00 F2         [24]  548 	ljmp	_delay
      00012C                        549 00104$:
                                    550 ;	.\stcboot.c:61: while (count < 256);
      00012C 74 FF            [12]  551 	mov	a,#0x100 - 0x01
      00012E 2F               [12]  552 	add	a,r7
      00012F 50 D7            [24]  553 	jnc	00103$
                                    554 ;	.\stcboot.c:62: }
      000131 22               [24]  555 	ret
                                    556 ;------------------------------------------------------------
                                    557 ;Allocation info for local variables in function 'cylon'
                                    558 ;------------------------------------------------------------
                                    559 ;pos           Allocated to registers r7 
                                    560 ;direction     Allocated to registers r6 
                                    561 ;------------------------------------------------------------
                                    562 ;	.\stcboot.c:65: void cylon(void) {
                                    563 ;	-----------------------------------------
                                    564 ;	 function cylon
                                    565 ;	-----------------------------------------
      000132                        566 _cylon:
                                    567 ;	.\stcboot.c:66: unsigned char pos = 1;
      000132 7F 01            [12]  568 	mov	r7,#0x01
                                    569 ;	.\stcboot.c:67: unsigned char direction = 1; // 1 for forward, 0 for reverse
      000134 7E 01            [12]  570 	mov	r6,#0x01
                                    571 ;	.\stcboot.c:69: while (1) {
      000136                        572 00111$:
                                    573 ;	.\stcboot.c:70: if ((P3 & 0x20) == 0){
      000136 E5 B0            [12]  574 	mov	a,_P3
      000138 20 E5 06         [24]  575 	jb	acc.5,00102$
                                    576 ;	.\stcboot.c:71: delay(5000);
      00013B 90 13 88         [24]  577 	mov	dptr,#0x1388
                                    578 ;	.\stcboot.c:72: break;
      00013E 02 00 F2         [24]  579 	ljmp	_delay
      000141                        580 00102$:
                                    581 ;	.\stcboot.c:74: P1 = ~pos;  // Invert output to turn LEDs on
      000141 EF               [12]  582 	mov	a,r7
      000142 F4               [12]  583 	cpl	a
      000143 F5 90            [12]  584 	mov	_P1,a
                                    585 ;	.\stcboot.c:75: delay(5000);
      000145 90 13 88         [24]  586 	mov	dptr,#0x1388
      000148 C0 07            [24]  587 	push	ar7
      00014A C0 06            [24]  588 	push	ar6
      00014C 12 00 F2         [24]  589 	lcall	_delay
      00014F D0 06            [24]  590 	pop	ar6
      000151 D0 07            [24]  591 	pop	ar7
                                    592 ;	.\stcboot.c:77: if (direction) {
      000153 EE               [12]  593 	mov	a,r6
      000154 60 0A            [24]  594 	jz	00108$
                                    595 ;	.\stcboot.c:78: pos <<= 1;
      000156 EF               [12]  596 	mov	a,r7
      000157 2F               [12]  597 	add	a,r7
      000158 FF               [12]  598 	mov	r7,a
                                    599 ;	.\stcboot.c:79: if (pos == 0x80) direction = 0;
      000159 BF 80 DA         [24]  600 	cjne	r7,#0x80,00111$
      00015C 7E 00            [12]  601 	mov	r6,#0x00
      00015E 80 D6            [24]  602 	sjmp	00111$
      000160                        603 00108$:
                                    604 ;	.\stcboot.c:81: pos >>= 1;
      000160 EF               [12]  605 	mov	a,r7
      000161 C3               [12]  606 	clr	c
      000162 13               [12]  607 	rrc	a
      000163 FF               [12]  608 	mov	r7,a
                                    609 ;	.\stcboot.c:82: if (pos == 0x01) direction = 1;  // Reverse at the beginning
      000164 BF 01 CF         [24]  610 	cjne	r7,#0x01,00111$
      000167 7E 01            [12]  611 	mov	r6,#0x01
                                    612 ;	.\stcboot.c:86: }
      000169 80 CB            [24]  613 	sjmp	00111$
                                    614 ;------------------------------------------------------------
                                    615 ;Allocation info for local variables in function 'dual_cylon'
                                    616 ;------------------------------------------------------------
                                    617 ;pos1          Allocated to registers r7 
                                    618 ;pos2          Allocated to registers r6 
                                    619 ;------------------------------------------------------------
                                    620 ;	.\stcboot.c:90: void dual_cylon(void) {
                                    621 ;	-----------------------------------------
                                    622 ;	 function dual_cylon
                                    623 ;	-----------------------------------------
      00016B                        624 _dual_cylon:
                                    625 ;	.\stcboot.c:91: unsigned char pos1 = 1, pos2 = 0x80;
      00016B 7F 01            [12]  626 	mov	r7,#0x01
      00016D 7E 80            [12]  627 	mov	r6,#0x80
                                    628 ;	.\stcboot.c:92: while (1) {
      00016F                        629 00106$:
                                    630 ;	.\stcboot.c:93: if ((P3 & 0x20) == 0){
      00016F E5 B0            [12]  631 	mov	a,_P3
      000171 20 E5 09         [24]  632 	jb	acc.5,00102$
                                    633 ;	.\stcboot.c:94: P1=0xFF;
      000174 75 90 FF         [24]  634 	mov	_P1,#0xff
                                    635 ;	.\stcboot.c:95: delay(5000);
      000177 90 13 88         [24]  636 	mov	dptr,#0x1388
                                    637 ;	.\stcboot.c:96: break;
      00017A 02 00 F2         [24]  638 	ljmp	_delay
      00017D                        639 00102$:
                                    640 ;	.\stcboot.c:98: P1 = ~(pos1 | pos2);  // Invert output for correct LED logic
      00017D EE               [12]  641 	mov	a,r6
      00017E 4F               [12]  642 	orl	a,r7
      00017F F4               [12]  643 	cpl	a
      000180 F5 90            [12]  644 	mov	_P1,a
                                    645 ;	.\stcboot.c:99: delay(5000);
      000182 90 13 88         [24]  646 	mov	dptr,#0x1388
      000185 C0 07            [24]  647 	push	ar7
      000187 C0 06            [24]  648 	push	ar6
      000189 12 00 F2         [24]  649 	lcall	_delay
      00018C D0 06            [24]  650 	pop	ar6
      00018E D0 07            [24]  651 	pop	ar7
                                    652 ;	.\stcboot.c:100: pos1 <<= 1;
      000190 EF               [12]  653 	mov	a,r7
      000191 2F               [12]  654 	add	a,r7
      000192 FF               [12]  655 	mov	r7,a
                                    656 ;	.\stcboot.c:101: pos2 >>= 1;
      000193 EE               [12]  657 	mov	a,r6
      000194 C3               [12]  658 	clr	c
      000195 13               [12]  659 	rrc	a
      000196 FE               [12]  660 	mov	r6,a
                                    661 ;	.\stcboot.c:102: if (pos1 == 0x80) {  // Reset condition
      000197 BF 80 D5         [24]  662 	cjne	r7,#0x80,00106$
                                    663 ;	.\stcboot.c:103: pos1 = 1;
      00019A 7F 01            [12]  664 	mov	r7,#0x01
                                    665 ;	.\stcboot.c:104: pos2 = 0x80;
      00019C 7E 80            [12]  666 	mov	r6,#0x80
                                    667 ;	.\stcboot.c:107: }
      00019E 80 CF            [24]  668 	sjmp	00106$
                                    669 ;------------------------------------------------------------
                                    670 ;Allocation info for local variables in function 'display_number'
                                    671 ;------------------------------------------------------------
                                    672 ;temp          Allocated to registers r6 r7 
                                    673 ;ones          Allocated to registers r4 
                                    674 ;tens          Allocated to registers r3 
                                    675 ;hundreds      Allocated to registers r2 
                                    676 ;thousands     Allocated to registers r6 
                                    677 ;------------------------------------------------------------
                                    678 ;	.\stcboot.c:110: void display_number(void) {
                                    679 ;	-----------------------------------------
                                    680 ;	 function display_number
                                    681 ;	-----------------------------------------
      0001A0                        682 _display_number:
                                    683 ;	.\stcboot.c:111: unsigned int temp = number;
      0001A0 AE 10            [24]  684 	mov	r6,_number
      0001A2 AF 11            [24]  685 	mov	r7,(_number + 1)
                                    686 ;	.\stcboot.c:113: unsigned char ones = temp % 10;
      0001A4 75 28 0A         [24]  687 	mov	__moduint_PARM_2,#0x0a
      0001A7 75 29 00         [24]  688 	mov	(__moduint_PARM_2 + 1),#0x00
      0001AA 8E 82            [24]  689 	mov	dpl, r6
      0001AC 8F 83            [24]  690 	mov	dph, r7
      0001AE C0 07            [24]  691 	push	ar7
      0001B0 C0 06            [24]  692 	push	ar6
      0001B2 12 03 58         [24]  693 	lcall	__moduint
      0001B5 AC 82            [24]  694 	mov	r4, dpl
      0001B7 D0 06            [24]  695 	pop	ar6
      0001B9 D0 07            [24]  696 	pop	ar7
                                    697 ;	.\stcboot.c:114: temp /= 10;
      0001BB 75 28 0A         [24]  698 	mov	__divuint_PARM_2,#0x0a
      0001BE 75 29 00         [24]  699 	mov	(__divuint_PARM_2 + 1),#0x00
                                    700 ;	.\stcboot.c:115: unsigned char tens = temp % 10;
      0001C1 8E 82            [24]  701 	mov	dpl, r6
      0001C3 8F 83            [24]  702 	mov	dph, r7
      0001C5 C0 04            [24]  703 	push	ar4
      0001C7 12 03 2F         [24]  704 	lcall	__divuint
      0001CA AE 82            [24]  705 	mov	r6, dpl
      0001CC AF 83            [24]  706 	mov	r7, dph
      0001CE D0 04            [24]  707 	pop	ar4
      0001D0 75 28 0A         [24]  708 	mov	__moduint_PARM_2,#0x0a
      0001D3 75 29 00         [24]  709 	mov	(__moduint_PARM_2 + 1),#0x00
      0001D6 8E 82            [24]  710 	mov	dpl, r6
      0001D8 8F 83            [24]  711 	mov	dph, r7
      0001DA C0 07            [24]  712 	push	ar7
      0001DC C0 06            [24]  713 	push	ar6
      0001DE C0 04            [24]  714 	push	ar4
      0001E0 12 03 58         [24]  715 	lcall	__moduint
      0001E3 AB 82            [24]  716 	mov	r3, dpl
      0001E5 D0 04            [24]  717 	pop	ar4
      0001E7 D0 06            [24]  718 	pop	ar6
      0001E9 D0 07            [24]  719 	pop	ar7
                                    720 ;	.\stcboot.c:116: temp /= 10;
      0001EB 75 28 0A         [24]  721 	mov	__divuint_PARM_2,#0x0a
      0001EE 75 29 00         [24]  722 	mov	(__divuint_PARM_2 + 1),#0x00
                                    723 ;	.\stcboot.c:117: unsigned char hundreds = temp % 10;
      0001F1 8E 82            [24]  724 	mov	dpl, r6
      0001F3 8F 83            [24]  725 	mov	dph, r7
      0001F5 C0 04            [24]  726 	push	ar4
      0001F7 C0 03            [24]  727 	push	ar3
      0001F9 12 03 2F         [24]  728 	lcall	__divuint
      0001FC AE 82            [24]  729 	mov	r6, dpl
      0001FE AF 83            [24]  730 	mov	r7, dph
      000200 D0 03            [24]  731 	pop	ar3
      000202 D0 04            [24]  732 	pop	ar4
      000204 75 28 0A         [24]  733 	mov	__moduint_PARM_2,#0x0a
      000207 75 29 00         [24]  734 	mov	(__moduint_PARM_2 + 1),#0x00
      00020A 8E 82            [24]  735 	mov	dpl, r6
      00020C 8F 83            [24]  736 	mov	dph, r7
      00020E C0 07            [24]  737 	push	ar7
      000210 C0 06            [24]  738 	push	ar6
      000212 C0 04            [24]  739 	push	ar4
      000214 C0 03            [24]  740 	push	ar3
      000216 12 03 58         [24]  741 	lcall	__moduint
      000219 AA 82            [24]  742 	mov	r2, dpl
      00021B D0 03            [24]  743 	pop	ar3
      00021D D0 04            [24]  744 	pop	ar4
      00021F D0 06            [24]  745 	pop	ar6
      000221 D0 07            [24]  746 	pop	ar7
                                    747 ;	.\stcboot.c:118: temp /= 10;
      000223 75 28 0A         [24]  748 	mov	__divuint_PARM_2,#0x0a
      000226 75 29 00         [24]  749 	mov	(__divuint_PARM_2 + 1),#0x00
                                    750 ;	.\stcboot.c:119: unsigned char thousands = temp % 10;
      000229 8E 82            [24]  751 	mov	dpl, r6
      00022B 8F 83            [24]  752 	mov	dph, r7
      00022D C0 04            [24]  753 	push	ar4
      00022F C0 03            [24]  754 	push	ar3
      000231 C0 02            [24]  755 	push	ar2
      000233 12 03 2F         [24]  756 	lcall	__divuint
      000236 AE 82            [24]  757 	mov	r6, dpl
      000238 75 F0 0A         [24]  758 	mov	b,#0x0a
      00023B EE               [12]  759 	mov	a,r6
      00023C 84               [48]  760 	div	ab
                                    761 ;	.\stcboot.c:121: P0 = seg_table[thousands];	P2_0 = 0;	delay(500);	P2_0 = 1;
      00023D E5 F0            [12]  762 	mov	a,b
      00023F 24 1E            [12]  763 	add	a, #_seg_table
      000241 F9               [12]  764 	mov	r1,a
      000242 87 80            [24]  765 	mov	_P0,@r1
                                    766 ;	assignBit
      000244 C2 A0            [12]  767 	clr	_P2_0
      000246 90 01 F4         [24]  768 	mov	dptr,#0x01f4
      000249 12 00 F2         [24]  769 	lcall	_delay
      00024C D0 02            [24]  770 	pop	ar2
                                    771 ;	assignBit
      00024E D2 A0            [12]  772 	setb	_P2_0
                                    773 ;	.\stcboot.c:122: P0 = seg_table[hundreds];	P2_1 = 0;	delay(500);	P2_1 = 1;
      000250 EA               [12]  774 	mov	a,r2
      000251 24 1E            [12]  775 	add	a, #_seg_table
      000253 F9               [12]  776 	mov	r1,a
      000254 87 80            [24]  777 	mov	_P0,@r1
                                    778 ;	assignBit
      000256 C2 A1            [12]  779 	clr	_P2_1
      000258 90 01 F4         [24]  780 	mov	dptr,#0x01f4
      00025B 12 00 F2         [24]  781 	lcall	_delay
      00025E D0 03            [24]  782 	pop	ar3
                                    783 ;	assignBit
      000260 D2 A1            [12]  784 	setb	_P2_1
                                    785 ;	.\stcboot.c:123: P0 = seg_table[tens];		P2_2 = 0;	delay(500);	P2_2 = 1;
      000262 EB               [12]  786 	mov	a,r3
      000263 24 1E            [12]  787 	add	a, #_seg_table
      000265 F9               [12]  788 	mov	r1,a
      000266 87 80            [24]  789 	mov	_P0,@r1
                                    790 ;	assignBit
      000268 C2 A2            [12]  791 	clr	_P2_2
      00026A 90 01 F4         [24]  792 	mov	dptr,#0x01f4
      00026D 12 00 F2         [24]  793 	lcall	_delay
      000270 D0 04            [24]  794 	pop	ar4
                                    795 ;	assignBit
      000272 D2 A2            [12]  796 	setb	_P2_2
                                    797 ;	.\stcboot.c:124: P0 = seg_table[ones];		P2_3 = 0;	delay(500);	P2_3 = 1;
      000274 EC               [12]  798 	mov	a,r4
      000275 24 1E            [12]  799 	add	a, #_seg_table
      000277 F9               [12]  800 	mov	r1,a
      000278 87 80            [24]  801 	mov	_P0,@r1
                                    802 ;	assignBit
      00027A C2 A3            [12]  803 	clr	_P2_3
      00027C 90 01 F4         [24]  804 	mov	dptr,#0x01f4
      00027F 12 00 F2         [24]  805 	lcall	_delay
                                    806 ;	assignBit
      000282 D2 A3            [12]  807 	setb	_P2_3
                                    808 ;	.\stcboot.c:125: }
      000284 22               [24]  809 	ret
                                    810 ;------------------------------------------------------------
                                    811 ;Allocation info for local variables in function 'number_clicker'
                                    812 ;------------------------------------------------------------
                                    813 ;	.\stcboot.c:128: void number_clicker(void) {
                                    814 ;	-----------------------------------------
                                    815 ;	 function number_clicker
                                    816 ;	-----------------------------------------
      000285                        817 _number_clicker:
                                    818 ;	.\stcboot.c:129: while (1) {
      000285                        819 00113$:
                                    820 ;	.\stcboot.c:130: if ((P3 & 0x20) == 0){
      000285 E5 B0            [12]  821 	mov	a,_P3
      000287 20 E5 06         [24]  822 	jb	acc.5,00102$
                                    823 ;	.\stcboot.c:131: delay(5000);
      00028A 90 13 88         [24]  824 	mov	dptr,#0x1388
                                    825 ;	.\stcboot.c:132: break;
      00028D 02 00 F2         [24]  826 	ljmp	_delay
      000290                        827 00102$:
                                    828 ;	.\stcboot.c:134: display_number();
      000290 12 01 A0         [24]  829 	lcall	_display_number
                                    830 ;	.\stcboot.c:135: if ((P3 & 0x08) == 0) { // Button Pressed
      000293 E5 B0            [12]  831 	mov	a,_P3
      000295 20 E3 1E         [24]  832 	jb	acc.3,00106$
                                    833 ;	.\stcboot.c:136: delay(5000);
      000298 90 13 88         [24]  834 	mov	dptr,#0x1388
      00029B 12 00 F2         [24]  835 	lcall	_delay
                                    836 ;	.\stcboot.c:137: number++;
      00029E 05 10            [12]  837 	inc	_number
      0002A0 E4               [12]  838 	clr	a
      0002A1 B5 10 02         [24]  839 	cjne	a,_number,00155$
      0002A4 05 11            [12]  840 	inc	(_number + 1)
      0002A6                        841 00155$:
                                    842 ;	.\stcboot.c:138: if (number > 9999) number = 0; // Roll over to 0
      0002A6 C3               [12]  843 	clr	c
      0002A7 74 0F            [12]  844 	mov	a,#0x0f
      0002A9 95 10            [12]  845 	subb	a,_number
      0002AB 74 27            [12]  846 	mov	a,#0x27
      0002AD 95 11            [12]  847 	subb	a,(_number + 1)
      0002AF 50 05            [24]  848 	jnc	00106$
      0002B1 E4               [12]  849 	clr	a
      0002B2 F5 10            [12]  850 	mov	_number,a
      0002B4 F5 11            [12]  851 	mov	(_number + 1),a
      0002B6                        852 00106$:
                                    853 ;	.\stcboot.c:144: if ((P3 & 0x04) == 0) { // Button Pressed
      0002B6 E5 B0            [12]  854 	mov	a,_P3
      0002B8 20 E2 CA         [24]  855 	jb	acc.2,00113$
                                    856 ;	.\stcboot.c:145: delay(5000);
      0002BB 90 13 88         [24]  857 	mov	dptr,#0x1388
      0002BE 12 00 F2         [24]  858 	lcall	_delay
                                    859 ;	.\stcboot.c:146: if (number == 0) number = 9999; // Roll over to 9999
      0002C1 E5 10            [12]  860 	mov	a,_number
      0002C3 45 11            [12]  861 	orl	a,(_number + 1)
      0002C5 70 08            [24]  862 	jnz	00108$
      0002C7 75 10 0F         [24]  863 	mov	_number,#0x0f
      0002CA 75 11 27         [24]  864 	mov	(_number + 1),#0x27
      0002CD 80 B6            [24]  865 	sjmp	00113$
      0002CF                        866 00108$:
                                    867 ;	.\stcboot.c:147: else number--;
      0002CF 15 10            [12]  868 	dec	_number
      0002D1 74 FF            [12]  869 	mov	a,#0xff
      0002D3 B5 10 02         [24]  870 	cjne	a,_number,00159$
      0002D6 15 11            [12]  871 	dec	(_number + 1)
      0002D8                        872 00159$:
                                    873 ;	.\stcboot.c:150: }
      0002D8 80 AB            [24]  874 	sjmp	00113$
                                    875 ;------------------------------------------------------------
                                    876 ;Allocation info for local variables in function 'main'
                                    877 ;------------------------------------------------------------
                                    878 ;	.\stcboot.c:152: void main(void) {
                                    879 ;	-----------------------------------------
                                    880 ;	 function main
                                    881 ;	-----------------------------------------
      0002DA                        882 _main:
                                    883 ;	.\stcboot.c:153: while (1) {
      0002DA                        884 00112$:
                                    885 ;	.\stcboot.c:154: if ((P3 & 0x20) == 0) {
      0002DA E5 B0            [12]  886 	mov	a,_P3
      0002DC FF               [12]  887 	mov	r7,a
      0002DD 20 E5 18         [24]  888 	jb	acc.5,00104$
                                    889 ;	.\stcboot.c:155: buttonIndex++;
      0002E0 05 1C            [12]  890 	inc	_buttonIndex
      0002E2 E4               [12]  891 	clr	a
      0002E3 B5 1C 02         [24]  892 	cjne	a,_buttonIndex,00141$
      0002E6 05 1D            [12]  893 	inc	(_buttonIndex + 1)
      0002E8                        894 00141$:
                                    895 ;	.\stcboot.c:156: if (buttonIndex > 5)
      0002E8 C3               [12]  896 	clr	c
      0002E9 74 05            [12]  897 	mov	a,#0x05
      0002EB 95 1C            [12]  898 	subb	a,_buttonIndex
      0002ED E4               [12]  899 	clr	a
      0002EE 95 1D            [12]  900 	subb	a,(_buttonIndex + 1)
      0002F0 50 06            [24]  901 	jnc	00104$
                                    902 ;	.\stcboot.c:157: buttonIndex = 1;
      0002F2 75 1C 01         [24]  903 	mov	_buttonIndex,#0x01
      0002F5 75 1D 00         [24]  904 	mov	(_buttonIndex + 1),#0x00
      0002F8                        905 00104$:
                                    906 ;	.\stcboot.c:159: switch(buttonIndex) {
      0002F8 C3               [12]  907 	clr	c
      0002F9 74 04            [12]  908 	mov	a,#0x04
      0002FB 95 1C            [12]  909 	subb	a,_buttonIndex
      0002FD E4               [12]  910 	clr	a
      0002FE 95 1D            [12]  911 	subb	a,(_buttonIndex + 1)
      000300 40 D8            [24]  912 	jc	00112$
      000302 E5 1C            [12]  913 	mov	a,_buttonIndex
      000304 75 F0 03         [24]  914 	mov	b,#0x03
      000307 A4               [48]  915 	mul	ab
      000308 90 03 0C         [24]  916 	mov	dptr,#00144$
      00030B 73               [24]  917 	jmp	@a+dptr
      00030C                        918 00144$:
      00030C 02 02 DA         [24]  919 	ljmp	00112$
      00030F 02 03 1B         [24]  920 	ljmp	00105$
      000312 02 03 20         [24]  921 	ljmp	00106$
      000315 02 03 25         [24]  922 	ljmp	00107$
      000318 02 03 2A         [24]  923 	ljmp	00108$
                                    924 ;	.\stcboot.c:160: case 1:
      00031B                        925 00105$:
                                    926 ;	.\stcboot.c:161: binary_count();
      00031B 12 01 04         [24]  927 	lcall	_binary_count
                                    928 ;	.\stcboot.c:162: break;
                                    929 ;	.\stcboot.c:163: case 2:
      00031E 80 BA            [24]  930 	sjmp	00112$
      000320                        931 00106$:
                                    932 ;	.\stcboot.c:164: cylon();
      000320 12 01 32         [24]  933 	lcall	_cylon
                                    934 ;	.\stcboot.c:165: break;
                                    935 ;	.\stcboot.c:166: case 3:
      000323 80 B5            [24]  936 	sjmp	00112$
      000325                        937 00107$:
                                    938 ;	.\stcboot.c:167: dual_cylon();
      000325 12 01 6B         [24]  939 	lcall	_dual_cylon
                                    940 ;	.\stcboot.c:168: break;
                                    941 ;	.\stcboot.c:169: case 4:
      000328 80 B0            [24]  942 	sjmp	00112$
      00032A                        943 00108$:
                                    944 ;	.\stcboot.c:170: number_clicker();
      00032A 12 02 85         [24]  945 	lcall	_number_clicker
                                    946 ;	.\stcboot.c:171: break;
                                    947 ;	.\stcboot.c:174: }
                                    948 ;	.\stcboot.c:176: }
      00032D 80 AB            [24]  949 	sjmp	00112$
                                    950 	.area CSEG    (CODE)
                                    951 	.area CONST   (CODE)
                                    952 	.area CONST   (CODE)
      0003A9                        953 _period:
      0003A9 E8 03 00 00            954 	.byte #0xe8, #0x03, #0x00, #0x00	; 1000
                                    955 	.area CSEG    (CODE)
                                    956 	.area XINIT   (CODE)
                                    957 	.area CABS    (ABS,CODE)
