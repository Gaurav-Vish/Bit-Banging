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
                                     12 	.globl _display
                                     13 	.globl _delay
                                     14 	.globl _CY
                                     15 	.globl _AC
                                     16 	.globl _F0
                                     17 	.globl _RS1
                                     18 	.globl _RS0
                                     19 	.globl _OV
                                     20 	.globl _F1
                                     21 	.globl _P
                                     22 	.globl _PS
                                     23 	.globl _PT1
                                     24 	.globl _PX1
                                     25 	.globl _PT0
                                     26 	.globl _PX0
                                     27 	.globl _RD
                                     28 	.globl _WR
                                     29 	.globl _T1
                                     30 	.globl _T0
                                     31 	.globl _INT1
                                     32 	.globl _INT0
                                     33 	.globl _TXD
                                     34 	.globl _RXD
                                     35 	.globl _P3_7
                                     36 	.globl _P3_6
                                     37 	.globl _P3_5
                                     38 	.globl _P3_4
                                     39 	.globl _P3_3
                                     40 	.globl _P3_2
                                     41 	.globl _P3_1
                                     42 	.globl _P3_0
                                     43 	.globl _EA
                                     44 	.globl _ES
                                     45 	.globl _ET1
                                     46 	.globl _EX1
                                     47 	.globl _ET0
                                     48 	.globl _EX0
                                     49 	.globl _P2_7
                                     50 	.globl _P2_6
                                     51 	.globl _P2_5
                                     52 	.globl _P2_4
                                     53 	.globl _P2_3
                                     54 	.globl _P2_2
                                     55 	.globl _P2_1
                                     56 	.globl _P2_0
                                     57 	.globl _SM0
                                     58 	.globl _SM1
                                     59 	.globl _SM2
                                     60 	.globl _REN
                                     61 	.globl _TB8
                                     62 	.globl _RB8
                                     63 	.globl _TI
                                     64 	.globl _RI
                                     65 	.globl _P1_7
                                     66 	.globl _P1_6
                                     67 	.globl _P1_5
                                     68 	.globl _P1_4
                                     69 	.globl _P1_3
                                     70 	.globl _P1_2
                                     71 	.globl _P1_1
                                     72 	.globl _P1_0
                                     73 	.globl _TF1
                                     74 	.globl _TR1
                                     75 	.globl _TF0
                                     76 	.globl _TR0
                                     77 	.globl _IE1
                                     78 	.globl _IT1
                                     79 	.globl _IE0
                                     80 	.globl _IT0
                                     81 	.globl _P0_7
                                     82 	.globl _P0_6
                                     83 	.globl _P0_5
                                     84 	.globl _P0_4
                                     85 	.globl _P0_3
                                     86 	.globl _P0_2
                                     87 	.globl _P0_1
                                     88 	.globl _P0_0
                                     89 	.globl _B
                                     90 	.globl _ACC
                                     91 	.globl _PSW
                                     92 	.globl _IP
                                     93 	.globl _P3
                                     94 	.globl _IE
                                     95 	.globl _P2
                                     96 	.globl _SBUF
                                     97 	.globl _SCON
                                     98 	.globl _P1
                                     99 	.globl _TH1
                                    100 	.globl _TH0
                                    101 	.globl _TL1
                                    102 	.globl _TL0
                                    103 	.globl _TMOD
                                    104 	.globl _TCON
                                    105 	.globl _PCON
                                    106 	.globl _DPH
                                    107 	.globl _DPL
                                    108 	.globl _SP
                                    109 	.globl _P0
                                    110 	.globl _seg_table
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
                                    222 ;--------------------------------------------------------
                                    223 ; internal ram data
                                    224 ;--------------------------------------------------------
                                    225 	.area DSEG    (DATA)
      000008                        226 _seg_table::
      000008                        227 	.ds 10
                                    228 ;--------------------------------------------------------
                                    229 ; overlayable items in internal ram
                                    230 ;--------------------------------------------------------
                                    231 	.area	OSEG    (OVR,DATA)
                                    232 ;--------------------------------------------------------
                                    233 ; Stack segment in internal ram
                                    234 ;--------------------------------------------------------
                                    235 	.area SSEG
      000012                        236 __start__stack:
      000012                        237 	.ds	1
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
      000000 02 00 4C         [24]  283 	ljmp	__sdcc_gsinit_startup
                                    284 ; restartable atomic support routines
      000003                        285 	.ds	5
      000008                        286 sdcc_atomic_exchange_rollback_start::
      000008 00               [12]  287 	nop
      000009 00               [12]  288 	nop
      00000A                        289 sdcc_atomic_exchange_pdata_impl:
      00000A E2               [24]  290 	movx	a, @r0
      00000B FB               [12]  291 	mov	r3, a
      00000C EA               [12]  292 	mov	a, r2
      00000D F2               [24]  293 	movx	@r0, a
      00000E 80 2C            [24]  294 	sjmp	sdcc_atomic_exchange_exit
      000010 00               [12]  295 	nop
      000011 00               [12]  296 	nop
      000012                        297 sdcc_atomic_exchange_xdata_impl:
      000012 E0               [24]  298 	movx	a, @dptr
      000013 FB               [12]  299 	mov	r3, a
      000014 EA               [12]  300 	mov	a, r2
      000015 F0               [24]  301 	movx	@dptr, a
      000016 80 24            [24]  302 	sjmp	sdcc_atomic_exchange_exit
      000018                        303 sdcc_atomic_compare_exchange_idata_impl:
      000018 E6               [12]  304 	mov	a, @r0
      000019 B5 02 02         [24]  305 	cjne	a, ar2, .+#5
      00001C EB               [12]  306 	mov	a, r3
      00001D F6               [12]  307 	mov	@r0, a
      00001E 22               [24]  308 	ret
      00001F 00               [12]  309 	nop
      000020                        310 sdcc_atomic_compare_exchange_pdata_impl:
      000020 E2               [24]  311 	movx	a, @r0
      000021 B5 02 02         [24]  312 	cjne	a, ar2, .+#5
      000024 EB               [12]  313 	mov	a, r3
      000025 F2               [24]  314 	movx	@r0, a
      000026 22               [24]  315 	ret
      000027 00               [12]  316 	nop
      000028                        317 sdcc_atomic_compare_exchange_xdata_impl:
      000028 E0               [24]  318 	movx	a, @dptr
      000029 B5 02 02         [24]  319 	cjne	a, ar2, .+#5
      00002C EB               [12]  320 	mov	a, r3
      00002D F0               [24]  321 	movx	@dptr, a
      00002E 22               [24]  322 	ret
      00002F                        323 sdcc_atomic_exchange_rollback_end::
                                    324 
      00002F                        325 sdcc_atomic_exchange_gptr_impl::
      00002F 30 F6 E0         [24]  326 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      000032 A8 82            [24]  327 	mov	r0, dpl
      000034 20 F5 D3         [24]  328 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      000037                        329 sdcc_atomic_exchange_idata_impl:
      000037 EA               [12]  330 	mov	a, r2
      000038 C6               [12]  331 	xch	a, @r0
      000039 F5 82            [12]  332 	mov	dpl, a
      00003B 22               [24]  333 	ret
      00003C                        334 sdcc_atomic_exchange_exit:
      00003C 8B 82            [24]  335 	mov	dpl, r3
      00003E 22               [24]  336 	ret
      00003F                        337 sdcc_atomic_compare_exchange_gptr_impl::
      00003F 30 F6 E6         [24]  338 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      000042 A8 82            [24]  339 	mov	r0, dpl
      000044 20 F5 D9         [24]  340 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      000047 80 CF            [24]  341 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    342 ;--------------------------------------------------------
                                    343 ; global & static initialisations
                                    344 ;--------------------------------------------------------
                                    345 	.area HOME    (CODE)
                                    346 	.area GSINIT  (CODE)
                                    347 	.area GSFINAL (CODE)
                                    348 	.area GSINIT  (CODE)
                                    349 	.globl __sdcc_gsinit_startup
                                    350 	.globl __sdcc_program_startup
                                    351 	.globl __start__stack
                                    352 	.globl __mcs51_genXINIT
                                    353 	.globl __mcs51_genXRAMCLEAR
                                    354 	.globl __mcs51_genRAMCLEAR
                                    355 ;	.\stcboot.c:9: unsigned char seg_table[] = {
      0000A5 75 08 C0         [24]  356 	mov	_seg_table,#0xc0
      0000A8 75 09 F9         [24]  357 	mov	(_seg_table + 0x0001),#0xf9
      0000AB 75 0A A4         [24]  358 	mov	(_seg_table + 0x0002),#0xa4
      0000AE 75 0B B0         [24]  359 	mov	(_seg_table + 0x0003),#0xb0
      0000B1 75 0C 99         [24]  360 	mov	(_seg_table + 0x0004),#0x99
      0000B4 75 0D 92         [24]  361 	mov	(_seg_table + 0x0005),#0x92
      0000B7 75 0E 82         [24]  362 	mov	(_seg_table + 0x0006),#0x82
      0000BA 75 0F F8         [24]  363 	mov	(_seg_table + 0x0007),#0xf8
      0000BD 75 10 80         [24]  364 	mov	(_seg_table + 0x0008),#0x80
      0000C0 75 11 90         [24]  365 	mov	(_seg_table + 0x0009),#0x90
                                    366 	.area GSFINAL (CODE)
      0000C3 02 00 49         [24]  367 	ljmp	__sdcc_program_startup
                                    368 ;--------------------------------------------------------
                                    369 ; Home
                                    370 ;--------------------------------------------------------
                                    371 	.area HOME    (CODE)
                                    372 	.area HOME    (CODE)
      000049                        373 __sdcc_program_startup:
      000049 02 01 18         [24]  374 	ljmp	_main
                                    375 ;	return from main will return to caller
                                    376 ;--------------------------------------------------------
                                    377 ; code
                                    378 ;--------------------------------------------------------
                                    379 	.area CSEG    (CODE)
                                    380 ;------------------------------------------------------------
                                    381 ;Allocation info for local variables in function 'delay'
                                    382 ;------------------------------------------------------------
                                    383 ;i             Allocated to registers 
                                    384 ;j             Allocated to registers r6 r7 
                                    385 ;k             Allocated to registers r4 r5 
                                    386 ;------------------------------------------------------------
                                    387 ;	.\stcboot.c:13: void delay(unsigned int i)
                                    388 ;	-----------------------------------------
                                    389 ;	 function delay
                                    390 ;	-----------------------------------------
      0000C6                        391 _delay:
                           000007   392 	ar7 = 0x07
                           000006   393 	ar6 = 0x06
                           000005   394 	ar5 = 0x05
                           000004   395 	ar4 = 0x04
                           000003   396 	ar3 = 0x03
                           000002   397 	ar2 = 0x02
                           000001   398 	ar1 = 0x01
                           000000   399 	ar0 = 0x00
      0000C6 AE 82            [24]  400 	mov	r6, dpl
      0000C8 AF 83            [24]  401 	mov	r7, dph
                                    402 ;	.\stcboot.c:17: for (j = i; j > 0; j--)
      0000CA                        403 00106$:
      0000CA EE               [12]  404 	mov	a,r6
      0000CB 4F               [12]  405 	orl	a,r7
      0000CC 60 14            [24]  406 	jz	00108$
                                    407 ;	.\stcboot.c:18: for (k = 125; k > 0; k--);
      0000CE 7C 7D            [12]  408 	mov	r4,#0x7d
      0000D0 7D 00            [12]  409 	mov	r5,#0x00
      0000D2                        410 00104$:
      0000D2 1C               [12]  411 	dec	r4
      0000D3 BC FF 01         [24]  412 	cjne	r4,#0xff,00141$
      0000D6 1D               [12]  413 	dec	r5
      0000D7                        414 00141$:
      0000D7 EC               [12]  415 	mov	a,r4
      0000D8 4D               [12]  416 	orl	a,r5
      0000D9 70 F7            [24]  417 	jnz	00104$
                                    418 ;	.\stcboot.c:17: for (j = i; j > 0; j--)
      0000DB 1E               [12]  419 	dec	r6
      0000DC BE FF 01         [24]  420 	cjne	r6,#0xff,00143$
      0000DF 1F               [12]  421 	dec	r7
      0000E0                        422 00143$:
      0000E0 80 E8            [24]  423 	sjmp	00106$
      0000E2                        424 00108$:
                                    425 ;	.\stcboot.c:19: }
      0000E2 22               [24]  426 	ret
                                    427 ;------------------------------------------------------------
                                    428 ;Allocation info for local variables in function 'display'
                                    429 ;------------------------------------------------------------
                                    430 ;	.\stcboot.c:21: void display(void)
                                    431 ;	-----------------------------------------
                                    432 ;	 function display
                                    433 ;	-----------------------------------------
      0000E3                        434 _display:
                                    435 ;	.\stcboot.c:23: P0 = seg_table[0];
      0000E3 85 08 80         [24]  436 	mov	_P0,_seg_table
                                    437 ;	.\stcboot.c:24: P2_0 = 0;
                                    438 ;	assignBit
      0000E6 C2 A0            [12]  439 	clr	_P2_0
                                    440 ;	.\stcboot.c:25: delay(5);
      0000E8 90 00 05         [24]  441 	mov	dptr,#0x0005
      0000EB 12 00 C6         [24]  442 	lcall	_delay
                                    443 ;	.\stcboot.c:26: P2_0 = 1;
                                    444 ;	assignBit
      0000EE D2 A0            [12]  445 	setb	_P2_0
                                    446 ;	.\stcboot.c:28: P0 = seg_table[0];
      0000F0 85 08 80         [24]  447 	mov	_P0,_seg_table
                                    448 ;	.\stcboot.c:29: P2_1 = 0;
                                    449 ;	assignBit
      0000F3 C2 A1            [12]  450 	clr	_P2_1
                                    451 ;	.\stcboot.c:30: delay(5);
      0000F5 90 00 05         [24]  452 	mov	dptr,#0x0005
      0000F8 12 00 C6         [24]  453 	lcall	_delay
                                    454 ;	.\stcboot.c:31: P2_1 = 1;
                                    455 ;	assignBit
      0000FB D2 A1            [12]  456 	setb	_P2_1
                                    457 ;	.\stcboot.c:33: P0 = seg_table[2];
      0000FD 85 0A 80         [24]  458 	mov	_P0,(_seg_table + 0x0002)
                                    459 ;	.\stcboot.c:34: P2_2 = 0;
                                    460 ;	assignBit
      000100 C2 A2            [12]  461 	clr	_P2_2
                                    462 ;	.\stcboot.c:35: delay(5);
      000102 90 00 05         [24]  463 	mov	dptr,#0x0005
      000105 12 00 C6         [24]  464 	lcall	_delay
                                    465 ;	.\stcboot.c:36: P2_2 = 1;
                                    466 ;	assignBit
      000108 D2 A2            [12]  467 	setb	_P2_2
                                    468 ;	.\stcboot.c:38: P0 = seg_table[3];
      00010A 85 0B 80         [24]  469 	mov	_P0,(_seg_table + 0x0003)
                                    470 ;	.\stcboot.c:39: P2_3 = 0;
                                    471 ;	assignBit
      00010D C2 A3            [12]  472 	clr	_P2_3
                                    473 ;	.\stcboot.c:40: delay(5);
      00010F 90 00 05         [24]  474 	mov	dptr,#0x0005
      000112 12 00 C6         [24]  475 	lcall	_delay
                                    476 ;	.\stcboot.c:41: P2_3 = 1;
                                    477 ;	assignBit
      000115 D2 A3            [12]  478 	setb	_P2_3
                                    479 ;	.\stcboot.c:42: }
      000117 22               [24]  480 	ret
                                    481 ;------------------------------------------------------------
                                    482 ;Allocation info for local variables in function 'main'
                                    483 ;------------------------------------------------------------
                                    484 ;a             Allocated to registers r6 r7 
                                    485 ;------------------------------------------------------------
                                    486 ;	.\stcboot.c:44: void main(void)
                                    487 ;	-----------------------------------------
                                    488 ;	 function main
                                    489 ;	-----------------------------------------
      000118                        490 _main:
                                    491 ;	.\stcboot.c:49: for (a = 100; a > 0; a--) {
      000118                        492 00112$:
      000118 7E 64            [12]  493 	mov	r6,#0x64
      00011A 7F 00            [12]  494 	mov	r7,#0x00
      00011C                        495 00105$:
                                    496 ;	.\stcboot.c:50: display();
      00011C C0 07            [24]  497 	push	ar7
      00011E C0 06            [24]  498 	push	ar6
      000120 12 00 E3         [24]  499 	lcall	_display
      000123 D0 06            [24]  500 	pop	ar6
      000125 D0 07            [24]  501 	pop	ar7
                                    502 ;	.\stcboot.c:49: for (a = 100; a > 0; a--) {
      000127 1E               [12]  503 	dec	r6
      000128 BE FF 01         [24]  504 	cjne	r6,#0xff,00130$
      00012B 1F               [12]  505 	dec	r7
      00012C                        506 00130$:
      00012C EE               [12]  507 	mov	a,r6
      00012D 4F               [12]  508 	orl	a,r7
      00012E 70 EC            [24]  509 	jnz	00105$
                                    510 ;	.\stcboot.c:54: }
      000130 80 E6            [24]  511 	sjmp	00112$
                                    512 	.area CSEG    (CODE)
                                    513 	.area CONST   (CODE)
                                    514 	.area XINIT   (CODE)
                                    515 	.area CABS    (ABS,CODE)
