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
                                     12 	.globl _number_clicker
                                     13 	.globl _display_number
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
                                    111 	.globl _number
                                    112 	.globl _seg_table
                                    113 ;--------------------------------------------------------
                                    114 ; special function registers
                                    115 ;--------------------------------------------------------
                                    116 	.area RSEG    (ABS,DATA)
      000000                        117 	.org 0x0000
                           000080   118 _P0	=	0x0080
                           000081   119 _SP	=	0x0081
                           000082   120 _DPL	=	0x0082
                           000083   121 _DPH	=	0x0083
                           000087   122 _PCON	=	0x0087
                           000088   123 _TCON	=	0x0088
                           000089   124 _TMOD	=	0x0089
                           00008A   125 _TL0	=	0x008a
                           00008B   126 _TL1	=	0x008b
                           00008C   127 _TH0	=	0x008c
                           00008D   128 _TH1	=	0x008d
                           000090   129 _P1	=	0x0090
                           000098   130 _SCON	=	0x0098
                           000099   131 _SBUF	=	0x0099
                           0000A0   132 _P2	=	0x00a0
                           0000A8   133 _IE	=	0x00a8
                           0000B0   134 _P3	=	0x00b0
                           0000B8   135 _IP	=	0x00b8
                           0000D0   136 _PSW	=	0x00d0
                           0000E0   137 _ACC	=	0x00e0
                           0000F0   138 _B	=	0x00f0
                                    139 ;--------------------------------------------------------
                                    140 ; special function bits
                                    141 ;--------------------------------------------------------
                                    142 	.area RSEG    (ABS,DATA)
      000000                        143 	.org 0x0000
                           000080   144 _P0_0	=	0x0080
                           000081   145 _P0_1	=	0x0081
                           000082   146 _P0_2	=	0x0082
                           000083   147 _P0_3	=	0x0083
                           000084   148 _P0_4	=	0x0084
                           000085   149 _P0_5	=	0x0085
                           000086   150 _P0_6	=	0x0086
                           000087   151 _P0_7	=	0x0087
                           000088   152 _IT0	=	0x0088
                           000089   153 _IE0	=	0x0089
                           00008A   154 _IT1	=	0x008a
                           00008B   155 _IE1	=	0x008b
                           00008C   156 _TR0	=	0x008c
                           00008D   157 _TF0	=	0x008d
                           00008E   158 _TR1	=	0x008e
                           00008F   159 _TF1	=	0x008f
                           000090   160 _P1_0	=	0x0090
                           000091   161 _P1_1	=	0x0091
                           000092   162 _P1_2	=	0x0092
                           000093   163 _P1_3	=	0x0093
                           000094   164 _P1_4	=	0x0094
                           000095   165 _P1_5	=	0x0095
                           000096   166 _P1_6	=	0x0096
                           000097   167 _P1_7	=	0x0097
                           000098   168 _RI	=	0x0098
                           000099   169 _TI	=	0x0099
                           00009A   170 _RB8	=	0x009a
                           00009B   171 _TB8	=	0x009b
                           00009C   172 _REN	=	0x009c
                           00009D   173 _SM2	=	0x009d
                           00009E   174 _SM1	=	0x009e
                           00009F   175 _SM0	=	0x009f
                           0000A0   176 _P2_0	=	0x00a0
                           0000A1   177 _P2_1	=	0x00a1
                           0000A2   178 _P2_2	=	0x00a2
                           0000A3   179 _P2_3	=	0x00a3
                           0000A4   180 _P2_4	=	0x00a4
                           0000A5   181 _P2_5	=	0x00a5
                           0000A6   182 _P2_6	=	0x00a6
                           0000A7   183 _P2_7	=	0x00a7
                           0000A8   184 _EX0	=	0x00a8
                           0000A9   185 _ET0	=	0x00a9
                           0000AA   186 _EX1	=	0x00aa
                           0000AB   187 _ET1	=	0x00ab
                           0000AC   188 _ES	=	0x00ac
                           0000AF   189 _EA	=	0x00af
                           0000B0   190 _P3_0	=	0x00b0
                           0000B1   191 _P3_1	=	0x00b1
                           0000B2   192 _P3_2	=	0x00b2
                           0000B3   193 _P3_3	=	0x00b3
                           0000B4   194 _P3_4	=	0x00b4
                           0000B5   195 _P3_5	=	0x00b5
                           0000B6   196 _P3_6	=	0x00b6
                           0000B7   197 _P3_7	=	0x00b7
                           0000B0   198 _RXD	=	0x00b0
                           0000B1   199 _TXD	=	0x00b1
                           0000B2   200 _INT0	=	0x00b2
                           0000B3   201 _INT1	=	0x00b3
                           0000B4   202 _T0	=	0x00b4
                           0000B5   203 _T1	=	0x00b5
                           0000B6   204 _WR	=	0x00b6
                           0000B7   205 _RD	=	0x00b7
                           0000B8   206 _PX0	=	0x00b8
                           0000B9   207 _PT0	=	0x00b9
                           0000BA   208 _PX1	=	0x00ba
                           0000BB   209 _PT1	=	0x00bb
                           0000BC   210 _PS	=	0x00bc
                           0000D0   211 _P	=	0x00d0
                           0000D1   212 _F1	=	0x00d1
                           0000D2   213 _OV	=	0x00d2
                           0000D3   214 _RS0	=	0x00d3
                           0000D4   215 _RS1	=	0x00d4
                           0000D5   216 _F0	=	0x00d5
                           0000D6   217 _AC	=	0x00d6
                           0000D7   218 _CY	=	0x00d7
                                    219 ;--------------------------------------------------------
                                    220 ; overlayable register banks
                                    221 ;--------------------------------------------------------
                                    222 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        223 	.ds 8
                                    224 ;--------------------------------------------------------
                                    225 ; internal ram data
                                    226 ;--------------------------------------------------------
                                    227 	.area DSEG    (DATA)
      000008                        228 _seg_table::
      000008                        229 	.ds 10
      000012                        230 _number::
      000012                        231 	.ds 2
                                    232 ;--------------------------------------------------------
                                    233 ; overlayable items in internal ram
                                    234 ;--------------------------------------------------------
                                    235 	.area	OSEG    (OVR,DATA)
                                    236 ;--------------------------------------------------------
                                    237 ; Stack segment in internal ram
                                    238 ;--------------------------------------------------------
                                    239 	.area SSEG
      000016                        240 __start__stack:
      000016                        241 	.ds	1
                                    242 
                                    243 ;--------------------------------------------------------
                                    244 ; indirectly addressable internal ram data
                                    245 ;--------------------------------------------------------
                                    246 	.area ISEG    (DATA)
                                    247 ;--------------------------------------------------------
                                    248 ; absolute internal ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area IABS    (ABS,DATA)
                                    251 	.area IABS    (ABS,DATA)
                                    252 ;--------------------------------------------------------
                                    253 ; bit data
                                    254 ;--------------------------------------------------------
                                    255 	.area BSEG    (BIT)
                                    256 ;--------------------------------------------------------
                                    257 ; paged external ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area PSEG    (PAG,XDATA)
                                    260 ;--------------------------------------------------------
                                    261 ; uninitialized external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area XSEG    (XDATA)
                                    264 ;--------------------------------------------------------
                                    265 ; absolute external ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area XABS    (ABS,XDATA)
                                    268 ;--------------------------------------------------------
                                    269 ; initialized external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area XISEG   (XDATA)
                                    272 	.area HOME    (CODE)
                                    273 	.area GSINIT0 (CODE)
                                    274 	.area GSINIT1 (CODE)
                                    275 	.area GSINIT2 (CODE)
                                    276 	.area GSINIT3 (CODE)
                                    277 	.area GSINIT4 (CODE)
                                    278 	.area GSINIT5 (CODE)
                                    279 	.area GSINIT  (CODE)
                                    280 	.area GSFINAL (CODE)
                                    281 	.area CSEG    (CODE)
                                    282 ;--------------------------------------------------------
                                    283 ; interrupt vector
                                    284 ;--------------------------------------------------------
                                    285 	.area HOME    (CODE)
      000000                        286 __interrupt_vect:
      000000 02 00 4C         [24]  287 	ljmp	__sdcc_gsinit_startup
                                    288 ; restartable atomic support routines
      000003                        289 	.ds	5
      000008                        290 sdcc_atomic_exchange_rollback_start::
      000008 00               [12]  291 	nop
      000009 00               [12]  292 	nop
      00000A                        293 sdcc_atomic_exchange_pdata_impl:
      00000A E2               [24]  294 	movx	a, @r0
      00000B FB               [12]  295 	mov	r3, a
      00000C EA               [12]  296 	mov	a, r2
      00000D F2               [24]  297 	movx	@r0, a
      00000E 80 2C            [24]  298 	sjmp	sdcc_atomic_exchange_exit
      000010 00               [12]  299 	nop
      000011 00               [12]  300 	nop
      000012                        301 sdcc_atomic_exchange_xdata_impl:
      000012 E0               [24]  302 	movx	a, @dptr
      000013 FB               [12]  303 	mov	r3, a
      000014 EA               [12]  304 	mov	a, r2
      000015 F0               [24]  305 	movx	@dptr, a
      000016 80 24            [24]  306 	sjmp	sdcc_atomic_exchange_exit
      000018                        307 sdcc_atomic_compare_exchange_idata_impl:
      000018 E6               [12]  308 	mov	a, @r0
      000019 B5 02 02         [24]  309 	cjne	a, ar2, .+#5
      00001C EB               [12]  310 	mov	a, r3
      00001D F6               [12]  311 	mov	@r0, a
      00001E 22               [24]  312 	ret
      00001F 00               [12]  313 	nop
      000020                        314 sdcc_atomic_compare_exchange_pdata_impl:
      000020 E2               [24]  315 	movx	a, @r0
      000021 B5 02 02         [24]  316 	cjne	a, ar2, .+#5
      000024 EB               [12]  317 	mov	a, r3
      000025 F2               [24]  318 	movx	@r0, a
      000026 22               [24]  319 	ret
      000027 00               [12]  320 	nop
      000028                        321 sdcc_atomic_compare_exchange_xdata_impl:
      000028 E0               [24]  322 	movx	a, @dptr
      000029 B5 02 02         [24]  323 	cjne	a, ar2, .+#5
      00002C EB               [12]  324 	mov	a, r3
      00002D F0               [24]  325 	movx	@dptr, a
      00002E 22               [24]  326 	ret
      00002F                        327 sdcc_atomic_exchange_rollback_end::
                                    328 
      00002F                        329 sdcc_atomic_exchange_gptr_impl::
      00002F 30 F6 E0         [24]  330 	jnb	b.6, sdcc_atomic_exchange_xdata_impl
      000032 A8 82            [24]  331 	mov	r0, dpl
      000034 20 F5 D3         [24]  332 	jb	b.5, sdcc_atomic_exchange_pdata_impl
      000037                        333 sdcc_atomic_exchange_idata_impl:
      000037 EA               [12]  334 	mov	a, r2
      000038 C6               [12]  335 	xch	a, @r0
      000039 F5 82            [12]  336 	mov	dpl, a
      00003B 22               [24]  337 	ret
      00003C                        338 sdcc_atomic_exchange_exit:
      00003C 8B 82            [24]  339 	mov	dpl, r3
      00003E 22               [24]  340 	ret
      00003F                        341 sdcc_atomic_compare_exchange_gptr_impl::
      00003F 30 F6 E6         [24]  342 	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
      000042 A8 82            [24]  343 	mov	r0, dpl
      000044 20 F5 D9         [24]  344 	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
      000047 80 CF            [24]  345 	sjmp	sdcc_atomic_compare_exchange_idata_impl
                                    346 ;--------------------------------------------------------
                                    347 ; global & static initialisations
                                    348 ;--------------------------------------------------------
                                    349 	.area HOME    (CODE)
                                    350 	.area GSINIT  (CODE)
                                    351 	.area GSFINAL (CODE)
                                    352 	.area GSINIT  (CODE)
                                    353 	.globl __sdcc_gsinit_startup
                                    354 	.globl __sdcc_program_startup
                                    355 	.globl __start__stack
                                    356 	.globl __mcs51_genXINIT
                                    357 	.globl __mcs51_genXRAMCLEAR
                                    358 	.globl __mcs51_genRAMCLEAR
                                    359 ;	stcboot.c:4: unsigned char seg_table[] = {
      0000A5 75 08 C0         [24]  360 	mov	_seg_table,#0xc0
      0000A8 75 09 F9         [24]  361 	mov	(_seg_table + 0x0001),#0xf9
      0000AB 75 0A A4         [24]  362 	mov	(_seg_table + 0x0002),#0xa4
      0000AE 75 0B B0         [24]  363 	mov	(_seg_table + 0x0003),#0xb0
      0000B1 75 0C 99         [24]  364 	mov	(_seg_table + 0x0004),#0x99
      0000B4 75 0D 92         [24]  365 	mov	(_seg_table + 0x0005),#0x92
      0000B7 75 0E 82         [24]  366 	mov	(_seg_table + 0x0006),#0x82
      0000BA 75 0F F8         [24]  367 	mov	(_seg_table + 0x0007),#0xf8
      0000BD 75 10 80         [24]  368 	mov	(_seg_table + 0x0008),#0x80
      0000C0 75 11 90         [24]  369 	mov	(_seg_table + 0x0009),#0x90
                                    370 ;	stcboot.c:9: unsigned int number = 0;
      0000C3 E4               [12]  371 	clr	a
      0000C4 F5 12            [12]  372 	mov	_number,a
      0000C6 F5 13            [12]  373 	mov	(_number + 1),a
                                    374 	.area GSFINAL (CODE)
      0000C8 02 00 49         [24]  375 	ljmp	__sdcc_program_startup
                                    376 ;--------------------------------------------------------
                                    377 ; Home
                                    378 ;--------------------------------------------------------
                                    379 	.area HOME    (CODE)
                                    380 	.area HOME    (CODE)
      000049                        381 __sdcc_program_startup:
      000049 02 02 0C         [24]  382 	ljmp	_main
                                    383 ;	return from main will return to caller
                                    384 ;--------------------------------------------------------
                                    385 ; code
                                    386 ;--------------------------------------------------------
                                    387 	.area CSEG    (CODE)
                                    388 ;------------------------------------------------------------
                                    389 ;Allocation info for local variables in function 'delay'
                                    390 ;------------------------------------------------------------
                                    391 ;time          Allocated to registers 
                                    392 ;------------------------------------------------------------
                                    393 ;	stcboot.c:12: void delay(unsigned int time) {
                                    394 ;	-----------------------------------------
                                    395 ;	 function delay
                                    396 ;	-----------------------------------------
      0000CB                        397 _delay:
                           000007   398 	ar7 = 0x07
                           000006   399 	ar6 = 0x06
                           000005   400 	ar5 = 0x05
                           000004   401 	ar4 = 0x04
                           000003   402 	ar3 = 0x03
                           000002   403 	ar2 = 0x02
                           000001   404 	ar1 = 0x01
                           000000   405 	ar0 = 0x00
      0000CB AE 82            [24]  406 	mov	r6, dpl
      0000CD AF 83            [24]  407 	mov	r7, dph
                                    408 ;	stcboot.c:13: while (time--);
      0000CF                        409 00101$:
      0000CF 8E 04            [24]  410 	mov	ar4,r6
      0000D1 8F 05            [24]  411 	mov	ar5,r7
      0000D3 1E               [12]  412 	dec	r6
      0000D4 BE FF 01         [24]  413 	cjne	r6,#0xff,00113$
      0000D7 1F               [12]  414 	dec	r7
      0000D8                        415 00113$:
      0000D8 EC               [12]  416 	mov	a,r4
      0000D9 4D               [12]  417 	orl	a,r5
      0000DA 70 F3            [24]  418 	jnz	00101$
                                    419 ;	stcboot.c:14: }
      0000DC 22               [24]  420 	ret
                                    421 ;------------------------------------------------------------
                                    422 ;Allocation info for local variables in function 'display_number'
                                    423 ;------------------------------------------------------------
                                    424 ;temp          Allocated to registers r6 r7 
                                    425 ;ones          Allocated to registers r4 
                                    426 ;tens          Allocated to registers r3 
                                    427 ;hundreds      Allocated to registers r2 
                                    428 ;thousands     Allocated to registers r6 
                                    429 ;------------------------------------------------------------
                                    430 ;	stcboot.c:18: void display_number(void) {
                                    431 ;	-----------------------------------------
                                    432 ;	 function display_number
                                    433 ;	-----------------------------------------
      0000DD                        434 _display_number:
                                    435 ;	stcboot.c:19: unsigned int temp = number;
      0000DD AE 12            [24]  436 	mov	r6,_number
      0000DF AF 13            [24]  437 	mov	r7,(_number + 1)
                                    438 ;	stcboot.c:21: unsigned char ones = temp % 10;
      0000E1 75 14 0A         [24]  439 	mov	__moduint_PARM_2,#0x0a
      0000E4 75 15 00         [24]  440 	mov	(__moduint_PARM_2 + 1),#0x00
      0000E7 8E 82            [24]  441 	mov	dpl, r6
      0000E9 8F 83            [24]  442 	mov	dph, r7
      0000EB C0 07            [24]  443 	push	ar7
      0000ED C0 06            [24]  444 	push	ar6
      0000EF 12 02 38         [24]  445 	lcall	__moduint
      0000F2 AC 82            [24]  446 	mov	r4, dpl
      0000F4 D0 06            [24]  447 	pop	ar6
      0000F6 D0 07            [24]  448 	pop	ar7
                                    449 ;	stcboot.c:22: temp /= 10;
      0000F8 75 14 0A         [24]  450 	mov	__divuint_PARM_2,#0x0a
      0000FB 75 15 00         [24]  451 	mov	(__divuint_PARM_2 + 1),#0x00
                                    452 ;	stcboot.c:23: unsigned char tens = temp % 10;
      0000FE 8E 82            [24]  453 	mov	dpl, r6
      000100 8F 83            [24]  454 	mov	dph, r7
      000102 C0 04            [24]  455 	push	ar4
      000104 12 02 0F         [24]  456 	lcall	__divuint
      000107 AE 82            [24]  457 	mov	r6, dpl
      000109 AF 83            [24]  458 	mov	r7, dph
      00010B D0 04            [24]  459 	pop	ar4
      00010D 75 14 0A         [24]  460 	mov	__moduint_PARM_2,#0x0a
      000110 75 15 00         [24]  461 	mov	(__moduint_PARM_2 + 1),#0x00
      000113 8E 82            [24]  462 	mov	dpl, r6
      000115 8F 83            [24]  463 	mov	dph, r7
      000117 C0 07            [24]  464 	push	ar7
      000119 C0 06            [24]  465 	push	ar6
      00011B C0 04            [24]  466 	push	ar4
      00011D 12 02 38         [24]  467 	lcall	__moduint
      000120 AB 82            [24]  468 	mov	r3, dpl
      000122 D0 04            [24]  469 	pop	ar4
      000124 D0 06            [24]  470 	pop	ar6
      000126 D0 07            [24]  471 	pop	ar7
                                    472 ;	stcboot.c:24: temp /= 10;
      000128 75 14 0A         [24]  473 	mov	__divuint_PARM_2,#0x0a
      00012B 75 15 00         [24]  474 	mov	(__divuint_PARM_2 + 1),#0x00
                                    475 ;	stcboot.c:25: unsigned char hundreds = temp % 10;
      00012E 8E 82            [24]  476 	mov	dpl, r6
      000130 8F 83            [24]  477 	mov	dph, r7
      000132 C0 04            [24]  478 	push	ar4
      000134 C0 03            [24]  479 	push	ar3
      000136 12 02 0F         [24]  480 	lcall	__divuint
      000139 AE 82            [24]  481 	mov	r6, dpl
      00013B AF 83            [24]  482 	mov	r7, dph
      00013D D0 03            [24]  483 	pop	ar3
      00013F D0 04            [24]  484 	pop	ar4
      000141 75 14 0A         [24]  485 	mov	__moduint_PARM_2,#0x0a
      000144 75 15 00         [24]  486 	mov	(__moduint_PARM_2 + 1),#0x00
      000147 8E 82            [24]  487 	mov	dpl, r6
      000149 8F 83            [24]  488 	mov	dph, r7
      00014B C0 07            [24]  489 	push	ar7
      00014D C0 06            [24]  490 	push	ar6
      00014F C0 04            [24]  491 	push	ar4
      000151 C0 03            [24]  492 	push	ar3
      000153 12 02 38         [24]  493 	lcall	__moduint
      000156 AA 82            [24]  494 	mov	r2, dpl
      000158 D0 03            [24]  495 	pop	ar3
      00015A D0 04            [24]  496 	pop	ar4
      00015C D0 06            [24]  497 	pop	ar6
      00015E D0 07            [24]  498 	pop	ar7
                                    499 ;	stcboot.c:26: temp /= 10;
      000160 75 14 0A         [24]  500 	mov	__divuint_PARM_2,#0x0a
      000163 75 15 00         [24]  501 	mov	(__divuint_PARM_2 + 1),#0x00
                                    502 ;	stcboot.c:27: unsigned char thousands = temp % 10;
      000166 8E 82            [24]  503 	mov	dpl, r6
      000168 8F 83            [24]  504 	mov	dph, r7
      00016A C0 04            [24]  505 	push	ar4
      00016C C0 03            [24]  506 	push	ar3
      00016E C0 02            [24]  507 	push	ar2
      000170 12 02 0F         [24]  508 	lcall	__divuint
      000173 AE 82            [24]  509 	mov	r6, dpl
      000175 75 F0 0A         [24]  510 	mov	b,#0x0a
      000178 EE               [12]  511 	mov	a,r6
      000179 84               [48]  512 	div	ab
                                    513 ;	stcboot.c:29: P0 = seg_table[thousands];
      00017A E5 F0            [12]  514 	mov	a,b
      00017C 24 08            [12]  515 	add	a, #_seg_table
      00017E F9               [12]  516 	mov	r1,a
      00017F 87 80            [24]  517 	mov	_P0,@r1
                                    518 ;	stcboot.c:30: P2_0 = 0;
                                    519 ;	assignBit
      000181 C2 A0            [12]  520 	clr	_P2_0
                                    521 ;	stcboot.c:31: delay(500);
      000183 90 01 F4         [24]  522 	mov	dptr,#0x01f4
      000186 12 00 CB         [24]  523 	lcall	_delay
      000189 D0 02            [24]  524 	pop	ar2
                                    525 ;	stcboot.c:32: P2_0 = 1;
                                    526 ;	assignBit
      00018B D2 A0            [12]  527 	setb	_P2_0
                                    528 ;	stcboot.c:34: P0 = seg_table[hundreds];
      00018D EA               [12]  529 	mov	a,r2
      00018E 24 08            [12]  530 	add	a, #_seg_table
      000190 F9               [12]  531 	mov	r1,a
      000191 87 80            [24]  532 	mov	_P0,@r1
                                    533 ;	stcboot.c:35: P2_1 = 0;
                                    534 ;	assignBit
      000193 C2 A1            [12]  535 	clr	_P2_1
                                    536 ;	stcboot.c:36: delay(500);
      000195 90 01 F4         [24]  537 	mov	dptr,#0x01f4
      000198 12 00 CB         [24]  538 	lcall	_delay
      00019B D0 03            [24]  539 	pop	ar3
                                    540 ;	stcboot.c:37: P2_1 = 1;
                                    541 ;	assignBit
      00019D D2 A1            [12]  542 	setb	_P2_1
                                    543 ;	stcboot.c:39: P0 = seg_table[tens];
      00019F EB               [12]  544 	mov	a,r3
      0001A0 24 08            [12]  545 	add	a, #_seg_table
      0001A2 F9               [12]  546 	mov	r1,a
      0001A3 87 80            [24]  547 	mov	_P0,@r1
                                    548 ;	stcboot.c:40: P2_2 = 0;
                                    549 ;	assignBit
      0001A5 C2 A2            [12]  550 	clr	_P2_2
                                    551 ;	stcboot.c:41: delay(500);
      0001A7 90 01 F4         [24]  552 	mov	dptr,#0x01f4
      0001AA 12 00 CB         [24]  553 	lcall	_delay
      0001AD D0 04            [24]  554 	pop	ar4
                                    555 ;	stcboot.c:42: P2_2 = 1;
                                    556 ;	assignBit
      0001AF D2 A2            [12]  557 	setb	_P2_2
                                    558 ;	stcboot.c:44: P0 = seg_table[ones];
      0001B1 EC               [12]  559 	mov	a,r4
      0001B2 24 08            [12]  560 	add	a, #_seg_table
      0001B4 F9               [12]  561 	mov	r1,a
      0001B5 87 80            [24]  562 	mov	_P0,@r1
                                    563 ;	stcboot.c:45: P2_3 = 0;
                                    564 ;	assignBit
      0001B7 C2 A3            [12]  565 	clr	_P2_3
                                    566 ;	stcboot.c:46: delay(500);
      0001B9 90 01 F4         [24]  567 	mov	dptr,#0x01f4
      0001BC 12 00 CB         [24]  568 	lcall	_delay
                                    569 ;	stcboot.c:47: P2_3 = 1;
                                    570 ;	assignBit
      0001BF D2 A3            [12]  571 	setb	_P2_3
                                    572 ;	stcboot.c:48: }
      0001C1 22               [24]  573 	ret
                                    574 ;------------------------------------------------------------
                                    575 ;Allocation info for local variables in function 'number_clicker'
                                    576 ;------------------------------------------------------------
                                    577 ;	stcboot.c:50: void number_clicker(void) {
                                    578 ;	-----------------------------------------
                                    579 ;	 function number_clicker
                                    580 ;	-----------------------------------------
      0001C2                        581 _number_clicker:
                                    582 ;	stcboot.c:51: while (1) {
      0001C2                        583 00111$:
                                    584 ;	stcboot.c:52: if ((P3 & 0x08) == 0) { // Button Pressed
      0001C2 E5 B0            [12]  585 	mov	a,_P3
      0001C4 20 E3 1E         [24]  586 	jb	acc.3,00104$
                                    587 ;	stcboot.c:53: delay(20000);
      0001C7 90 4E 20         [24]  588 	mov	dptr,#0x4e20
      0001CA 12 00 CB         [24]  589 	lcall	_delay
                                    590 ;	stcboot.c:55: number++;
      0001CD 05 12            [12]  591 	inc	_number
      0001CF E4               [12]  592 	clr	a
      0001D0 B5 12 02         [24]  593 	cjne	a,_number,00146$
      0001D3 05 13            [12]  594 	inc	(_number + 1)
      0001D5                        595 00146$:
                                    596 ;	stcboot.c:56: if (number > 9999) number = 0; // Roll over to 0
      0001D5 C3               [12]  597 	clr	c
      0001D6 74 0F            [12]  598 	mov	a,#0x0f
      0001D8 95 12            [12]  599 	subb	a,_number
      0001DA 74 27            [12]  600 	mov	a,#0x27
      0001DC 95 13            [12]  601 	subb	a,(_number + 1)
      0001DE 50 05            [24]  602 	jnc	00104$
      0001E0 E4               [12]  603 	clr	a
      0001E1 F5 12            [12]  604 	mov	_number,a
      0001E3 F5 13            [12]  605 	mov	(_number + 1),a
      0001E5                        606 00104$:
                                    607 ;	stcboot.c:62: if ((P3 & 0x04) == 0) { // Button Pressed
      0001E5 E5 B0            [12]  608 	mov	a,_P3
      0001E7 20 E2 1D         [24]  609 	jb	acc.2,00109$
                                    610 ;	stcboot.c:63: delay(20000);
      0001EA 90 4E 20         [24]  611 	mov	dptr,#0x4e20
      0001ED 12 00 CB         [24]  612 	lcall	_delay
                                    613 ;	stcboot.c:65: if (number == 0) number = 9999; // Roll over to 9999
      0001F0 E5 12            [12]  614 	mov	a,_number
      0001F2 45 13            [12]  615 	orl	a,(_number + 1)
      0001F4 70 08            [24]  616 	jnz	00106$
      0001F6 75 12 0F         [24]  617 	mov	_number,#0x0f
      0001F9 75 13 27         [24]  618 	mov	(_number + 1),#0x27
      0001FC 80 09            [24]  619 	sjmp	00109$
      0001FE                        620 00106$:
                                    621 ;	stcboot.c:66: else number--;
      0001FE 15 12            [12]  622 	dec	_number
      000200 74 FF            [12]  623 	mov	a,#0xff
      000202 B5 12 02         [24]  624 	cjne	a,_number,00150$
      000205 15 13            [12]  625 	dec	(_number + 1)
      000207                        626 00150$:
      000207                        627 00109$:
                                    628 ;	stcboot.c:71: display_number();
      000207 12 00 DD         [24]  629 	lcall	_display_number
                                    630 ;	stcboot.c:73: }
      00020A 80 B6            [24]  631 	sjmp	00111$
                                    632 ;------------------------------------------------------------
                                    633 ;Allocation info for local variables in function 'main'
                                    634 ;------------------------------------------------------------
                                    635 ;	stcboot.c:76: void main(void) {
                                    636 ;	-----------------------------------------
                                    637 ;	 function main
                                    638 ;	-----------------------------------------
      00020C                        639 _main:
                                    640 ;	stcboot.c:78: number_clicker();
                                    641 ;	stcboot.c:80: }
      00020C 02 01 C2         [24]  642 	ljmp	_number_clicker
                                    643 	.area CSEG    (CODE)
                                    644 	.area CONST   (CODE)
                                    645 	.area XINIT   (CODE)
                                    646 	.area CABS    (ABS,CODE)
