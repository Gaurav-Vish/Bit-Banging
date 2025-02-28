;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (MINGW64)
;--------------------------------------------------------
	.module stcboot
	
	.optsdcc -mmcs51 --model-small
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _period
	.globl _main
	.globl _Timer0_isr
	.globl _Init_Timer0
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _seg_table
	.globl _timercounttotal
	.globl _timercounter
	.globl _buttonIndex
	.globl _currentmillis
	.globl _startmillis
	.globl _switchCount
	.globl _number
	.globl _delay
	.globl _binary_count
	.globl _cylon
	.globl _dual_cylon
	.globl _display_number
	.globl _number_clicker
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_number::
	.ds 2
_switchCount::
	.ds 2
_startmillis::
	.ds 4
_currentmillis::
	.ds 4
_buttonIndex::
	.ds 2
_timercounter::
	.ds 2
_timercounttotal::
	.ds 2
_seg_table::
	.ds 10
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_Timer0_isr
; restartable atomic support routines
	.ds	2
sdcc_atomic_exchange_rollback_start::
	nop
	nop
sdcc_atomic_exchange_pdata_impl:
	movx	a, @r0
	mov	r3, a
	mov	a, r2
	movx	@r0, a
	sjmp	sdcc_atomic_exchange_exit
	nop
	nop
sdcc_atomic_exchange_xdata_impl:
	movx	a, @dptr
	mov	r3, a
	mov	a, r2
	movx	@dptr, a
	sjmp	sdcc_atomic_exchange_exit
sdcc_atomic_compare_exchange_idata_impl:
	mov	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	mov	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_pdata_impl:
	movx	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_xdata_impl:
	movx	a, @dptr
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@dptr, a
	ret
sdcc_atomic_exchange_rollback_end::

sdcc_atomic_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_exchange_pdata_impl
sdcc_atomic_exchange_idata_impl:
	mov	a, r2
	xch	a, @r0
	mov	dpl, a
	ret
sdcc_atomic_exchange_exit:
	mov	dpl, r3
	ret
sdcc_atomic_compare_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
	sjmp	sdcc_atomic_compare_exchange_idata_impl
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	.\stcboot.c:13: unsigned int number = 0;
	clr	a
	mov	_number,a
	mov	(_number + 1),a
;	.\stcboot.c:14: unsigned int switchCount = 0;
	mov	_switchCount,a
	mov	(_switchCount + 1),a
;	.\stcboot.c:17: unsigned int buttonIndex = 0;
	mov	_buttonIndex,a
	mov	(_buttonIndex + 1),a
;	.\stcboot.c:19: unsigned int timercounter = 0;
	mov	_timercounter,a
	mov	(_timercounter + 1),a
;	.\stcboot.c:20: unsigned int timercounttotal = 0;
	mov	_timercounttotal,a
	mov	(_timercounttotal + 1),a
;	.\stcboot.c:22: unsigned char seg_table[] = {
	mov	_seg_table,#0xc0
	mov	(_seg_table + 0x0001),#0xf9
	mov	(_seg_table + 0x0002),#0xa4
	mov	(_seg_table + 0x0003),#0xb0
	mov	(_seg_table + 0x0004),#0x99
	mov	(_seg_table + 0x0005),#0x92
	mov	(_seg_table + 0x0006),#0x82
	mov	(_seg_table + 0x0007),#0xf8
	mov	(_seg_table + 0x0008),#0x80
	mov	(_seg_table + 0x0009),#0x90
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Init_Timer0'
;------------------------------------------------------------
;	.\stcboot.c:27: void Init_Timer0(void)
;	-----------------------------------------
;	 function Init_Timer0
;	-----------------------------------------
_Init_Timer0:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	.\stcboot.c:29: TMOD |= 0x01;		// mode 1, 16-bit timer
	orl	_TMOD,#0x01
;	.\stcboot.c:30: TH0 = 0xFC;		// overflow at 65536
	mov	_TH0,#0xfc
;	.\stcboot.c:31: TL0 = 0x18;
	mov	_TL0,#0x18
;	.\stcboot.c:32: EA = 1;			// enable global interrupts
;	assignBit
	setb	_EA
;	.\stcboot.c:33: ET0 = 1;		// enable timer0 interrupt
;	assignBit
	setb	_ET0
;	.\stcboot.c:34: TR0 = 1;		// timer on
;	assignBit
	setb	_TR0
;	.\stcboot.c:35: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0_isr'
;------------------------------------------------------------
;	.\stcboot.c:37: void Timer0_isr(void) __interrupt(1) __using(1)
;	-----------------------------------------
;	 function Timer0_isr
;	-----------------------------------------
_Timer0_isr:
	ar7 = 0x0f
	ar6 = 0x0e
	ar5 = 0x0d
	ar4 = 0x0c
	ar3 = 0x0b
	ar2 = 0x0a
	ar1 = 0x09
	ar0 = 0x08
	push	acc
	push	psw
;	.\stcboot.c:39: TH0 = 0xFC;		// overflow at 65536
	mov	_TH0,#0xfc
;	.\stcboot.c:40: TL0 = 0x18;
	mov	_TL0,#0x18
;	.\stcboot.c:41: timercounter++;
	inc	_timercounter
	clr	a
	cjne	a,_timercounter,00103$
	inc	(_timercounter + 1)
00103$:
;	.\stcboot.c:42: }
	pop	psw
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;time          Allocated to registers 
;------------------------------------------------------------
;	.\stcboot.c:45: void delay(unsigned int time) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6, dpl
	mov	r7, dph
;	.\stcboot.c:46: while (time--);
00101$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00113$
	dec	r7
00113$:
	mov	a,r4
	orl	a,r5
	jnz	00101$
;	.\stcboot.c:47: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'binary_count'
;------------------------------------------------------------
;count         Allocated to registers r7 
;------------------------------------------------------------
;	.\stcboot.c:50: void binary_count(void) {
;	-----------------------------------------
;	 function binary_count
;	-----------------------------------------
_binary_count:
;	.\stcboot.c:55: while(count<255){
	mov	r7,#0x00
00103$:
	cjne	r7,#0xff,00126$
00126$:
	jnc	00106$
;	.\stcboot.c:56: P1 = ~count;  // Output inverted count to LEDs
	mov	ar6,r7
	mov	a,r6
	cpl	a
	mov	_P1,a
;	.\stcboot.c:60: delay(5000);
	mov	dptr,#0x1388
	push	ar7
	lcall	_delay
	pop	ar7
;	.\stcboot.c:61: count++;
	inc	r7
;	.\stcboot.c:63: if ((P3 & 0x20) == 0){
	mov	a,_P3
	jb	acc.5,00103$
;	.\stcboot.c:64: delay(5000);
	mov	dptr,#0x1388
;	.\stcboot.c:65: break;
;	.\stcboot.c:68: }
	ljmp	_delay
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'cylon'
;------------------------------------------------------------
;pos           Allocated to registers r7 
;direction     Allocated to registers r6 
;------------------------------------------------------------
;	.\stcboot.c:71: void cylon(void) {
;	-----------------------------------------
;	 function cylon
;	-----------------------------------------
_cylon:
;	.\stcboot.c:72: unsigned char pos = 1;
	mov	r7,#0x01
;	.\stcboot.c:73: unsigned char direction = 1; // 1 for forward, 0 for reverse
	mov	r6,#0x01
;	.\stcboot.c:75: while (1) {
00111$:
;	.\stcboot.c:76: if ((P3 & 0x20) == 0){
	mov	a,_P3
	jb	acc.5,00102$
;	.\stcboot.c:77: delay(5000);
	mov	dptr,#0x1388
;	.\stcboot.c:78: break;
	ljmp	_delay
00102$:
;	.\stcboot.c:80: P1 = ~pos;  // Invert output to turn LEDs on
	mov	a,r7
	cpl	a
	mov	_P1,a
;	.\stcboot.c:81: delay(5000);
	mov	dptr,#0x1388
	push	ar7
	push	ar6
	lcall	_delay
	pop	ar6
	pop	ar7
;	.\stcboot.c:83: if (direction) {
	mov	a,r6
	jz	00108$
;	.\stcboot.c:84: pos <<= 1;
	mov	a,r7
	add	a,r7
	mov	r7,a
;	.\stcboot.c:85: if (pos == 0x80) direction = 0;
	cjne	r7,#0x80,00111$
	mov	r6,#0x00
	sjmp	00111$
00108$:
;	.\stcboot.c:87: pos >>= 1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	.\stcboot.c:88: if (pos == 0x01) direction = 1;  // Reverse at the beginning
	cjne	r7,#0x01,00111$
	mov	r6,#0x01
;	.\stcboot.c:92: }
	sjmp	00111$
;------------------------------------------------------------
;Allocation info for local variables in function 'dual_cylon'
;------------------------------------------------------------
;pos1          Allocated to registers r7 
;pos2          Allocated to registers r6 
;------------------------------------------------------------
;	.\stcboot.c:96: void dual_cylon(void) {
;	-----------------------------------------
;	 function dual_cylon
;	-----------------------------------------
_dual_cylon:
;	.\stcboot.c:97: unsigned char pos1 = 1, pos2 = 0x80;
	mov	r7,#0x01
	mov	r6,#0x80
;	.\stcboot.c:98: while (1) {
00106$:
;	.\stcboot.c:99: if ((P3 & 0x20) == 0){
	mov	a,_P3
	jb	acc.5,00102$
;	.\stcboot.c:100: P1=0xFF;
	mov	_P1,#0xff
;	.\stcboot.c:101: delay(5000);
	mov	dptr,#0x1388
;	.\stcboot.c:102: break;
	ljmp	_delay
00102$:
;	.\stcboot.c:104: P1 = ~(pos1 | pos2);  // Invert output for correct LED logic
	mov	a,r6
	orl	a,r7
	cpl	a
	mov	_P1,a
;	.\stcboot.c:105: delay(5000);
	mov	dptr,#0x1388
	push	ar7
	push	ar6
	lcall	_delay
	pop	ar6
	pop	ar7
;	.\stcboot.c:106: pos1 <<= 1;
	mov	a,r7
	add	a,r7
	mov	r7,a
;	.\stcboot.c:107: pos2 >>= 1;
	mov	a,r6
	clr	c
	rrc	a
	mov	r6,a
;	.\stcboot.c:108: if (pos1 == 0x80) {  // Reset condition
	cjne	r7,#0x80,00106$
;	.\stcboot.c:109: pos1 = 1;
	mov	r7,#0x01
;	.\stcboot.c:110: pos2 = 0x80;
	mov	r6,#0x80
;	.\stcboot.c:113: }
	sjmp	00106$
;------------------------------------------------------------
;Allocation info for local variables in function 'display_number'
;------------------------------------------------------------
;temp          Allocated to registers r6 r7 
;ones          Allocated to registers r4 
;tens          Allocated to registers r3 
;hundreds      Allocated to registers r2 
;thousands     Allocated to registers r6 
;------------------------------------------------------------
;	.\stcboot.c:116: void display_number(void) {
;	-----------------------------------------
;	 function display_number
;	-----------------------------------------
_display_number:
;	.\stcboot.c:117: unsigned int temp = number;
	mov	r6,_number
	mov	r7,(_number + 1)
;	.\stcboot.c:119: unsigned char ones = temp % 10;
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl, r6
	mov	dph, r7
	push	ar7
	push	ar6
	lcall	__moduint
	mov	r4, dpl
	pop	ar6
	pop	ar7
;	.\stcboot.c:120: temp /= 10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
;	.\stcboot.c:121: unsigned char tens = temp % 10;
	mov	dpl, r6
	mov	dph, r7
	push	ar4
	lcall	__divuint
	mov	r6, dpl
	mov	r7, dph
	pop	ar4
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl, r6
	mov	dph, r7
	push	ar7
	push	ar6
	push	ar4
	lcall	__moduint
	mov	r3, dpl
	pop	ar4
	pop	ar6
	pop	ar7
;	.\stcboot.c:122: temp /= 10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
;	.\stcboot.c:123: unsigned char hundreds = temp % 10;
	mov	dpl, r6
	mov	dph, r7
	push	ar4
	push	ar3
	lcall	__divuint
	mov	r6, dpl
	mov	r7, dph
	pop	ar3
	pop	ar4
	mov	__moduint_PARM_2,#0x0a
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl, r6
	mov	dph, r7
	push	ar7
	push	ar6
	push	ar4
	push	ar3
	lcall	__moduint
	mov	r2, dpl
	pop	ar3
	pop	ar4
	pop	ar6
	pop	ar7
;	.\stcboot.c:124: temp /= 10;
	mov	__divuint_PARM_2,#0x0a
	mov	(__divuint_PARM_2 + 1),#0x00
;	.\stcboot.c:125: unsigned char thousands = temp % 10;
	mov	dpl, r6
	mov	dph, r7
	push	ar4
	push	ar3
	push	ar2
	lcall	__divuint
	mov	r6, dpl
	mov	b,#0x0a
	mov	a,r6
	div	ab
;	.\stcboot.c:127: P0 = seg_table[thousands];	P2_0 = 0;	delay(500);	P2_0 = 1;
	mov	a,b
	add	a, #_seg_table
	mov	r1,a
	mov	_P0,@r1
;	assignBit
	clr	_P2_0
	mov	dptr,#0x01f4
	lcall	_delay
	pop	ar2
;	assignBit
	setb	_P2_0
;	.\stcboot.c:128: P0 = seg_table[hundreds];	P2_1 = 0;	delay(500);	P2_1 = 1;
	mov	a,r2
	add	a, #_seg_table
	mov	r1,a
	mov	_P0,@r1
;	assignBit
	clr	_P2_1
	mov	dptr,#0x01f4
	lcall	_delay
	pop	ar3
;	assignBit
	setb	_P2_1
;	.\stcboot.c:129: P0 = seg_table[tens];		P2_2 = 0;	delay(500);	P2_2 = 1;
	mov	a,r3
	add	a, #_seg_table
	mov	r1,a
	mov	_P0,@r1
;	assignBit
	clr	_P2_2
	mov	dptr,#0x01f4
	lcall	_delay
	pop	ar4
;	assignBit
	setb	_P2_2
;	.\stcboot.c:130: P0 = seg_table[ones];		P2_3 = 0;	delay(500);	P2_3 = 1;
	mov	a,r4
	add	a, #_seg_table
	mov	r1,a
	mov	_P0,@r1
;	assignBit
	clr	_P2_3
	mov	dptr,#0x01f4
	lcall	_delay
;	assignBit
	setb	_P2_3
;	.\stcboot.c:131: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'number_clicker'
;------------------------------------------------------------
;	.\stcboot.c:134: void number_clicker(void) {
;	-----------------------------------------
;	 function number_clicker
;	-----------------------------------------
_number_clicker:
;	.\stcboot.c:135: while (1) {
00117$:
;	.\stcboot.c:136: if ((P3 & 0x20) == 0){
	mov	a,_P3
	jb	acc.5,00102$
;	.\stcboot.c:137: delay(5000);
	mov	dptr,#0x1388
;	.\stcboot.c:138: break;
	ljmp	_delay
00102$:
;	.\stcboot.c:140: display_number();
	lcall	_display_number
;	.\stcboot.c:141: if ((P3 & 0x08) == 0) { // Button Pressed
	mov	a,_P3
	jb	acc.3,00108$
;	.\stcboot.c:142: delay(5000);
	mov	dptr,#0x1388
	lcall	_delay
;	.\stcboot.c:143: if ((P3 & 0x08) == 0) { // Button Pressed
	mov	a,_P3
	jb	acc.3,00108$
;	.\stcboot.c:144: number++;
	inc	_number
	clr	a
	cjne	a,_number,00172$
	inc	(_number + 1)
00172$:
;	.\stcboot.c:145: if (number > 9999) number = 0; // Roll over to 0
	clr	c
	mov	a,#0x0f
	subb	a,_number
	mov	a,#0x27
	subb	a,(_number + 1)
	jnc	00108$
	clr	a
	mov	_number,a
	mov	(_number + 1),a
00108$:
;	.\stcboot.c:151: if ((P3 & 0x04) == 0) { // Button Pressed
	mov	a,_P3
	jb	acc.2,00117$
;	.\stcboot.c:152: delay(5000);
	mov	dptr,#0x1388
	lcall	_delay
;	.\stcboot.c:153: if ((P3 & 0x04) == 0) { // Button Pressed
	mov	a,_P3
	jb	acc.2,00117$
;	.\stcboot.c:154: if (number == 0) number = 9999; // Roll over to 9999
	mov	a,_number
	orl	a,(_number + 1)
	jnz	00110$
	mov	_number,#0x0f
	mov	(_number + 1),#0x27
	sjmp	00117$
00110$:
;	.\stcboot.c:155: else number--;
	dec	_number
	mov	a,#0xff
	cjne	a,_number,00177$
	dec	(_number + 1)
00177$:
;	.\stcboot.c:159: }
	sjmp	00117$
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	.\stcboot.c:161: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	.\stcboot.c:162: Init_Timer0();
	lcall	_Init_Timer0
;	.\stcboot.c:163: while (1) {
00112$:
;	.\stcboot.c:164: if ((P3 & 0x20) == 0) {
	mov	a,_P3
	mov	r7,a
	jb	acc.5,00104$
;	.\stcboot.c:165: buttonIndex++;
	inc	_buttonIndex
	clr	a
	cjne	a,_buttonIndex,00141$
	inc	(_buttonIndex + 1)
00141$:
;	.\stcboot.c:166: if (buttonIndex > 5)
	clr	c
	mov	a,#0x05
	subb	a,_buttonIndex
	clr	a
	subb	a,(_buttonIndex + 1)
	jnc	00104$
;	.\stcboot.c:167: buttonIndex = 1;
	mov	_buttonIndex,#0x01
	mov	(_buttonIndex + 1),#0x00
00104$:
;	.\stcboot.c:169: switch(buttonIndex) {
	clr	c
	mov	a,#0x04
	subb	a,_buttonIndex
	clr	a
	subb	a,(_buttonIndex + 1)
	jc	00112$
	mov	a,_buttonIndex
	mov	b,#0x03
	mul	ab
	mov	dptr,#00144$
	jmp	@a+dptr
00144$:
	ljmp	00112$
	ljmp	00105$
	ljmp	00106$
	ljmp	00107$
	ljmp	00108$
;	.\stcboot.c:170: case 1:
00105$:
;	.\stcboot.c:171: binary_count();
	lcall	_binary_count
;	.\stcboot.c:172: break;
;	.\stcboot.c:173: case 2:
	sjmp	00112$
00106$:
;	.\stcboot.c:174: cylon();
	lcall	_cylon
;	.\stcboot.c:175: break;
;	.\stcboot.c:176: case 3:
	sjmp	00112$
00107$:
;	.\stcboot.c:177: dual_cylon();
	lcall	_dual_cylon
;	.\stcboot.c:178: break;
;	.\stcboot.c:179: case 4:
	sjmp	00112$
00108$:
;	.\stcboot.c:180: number_clicker();
	lcall	_number_clicker
;	.\stcboot.c:181: break;
;	.\stcboot.c:184: }
;	.\stcboot.c:186: }
	sjmp	00112$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
_period:
	.byte #0xe8, #0x03, #0x00, #0x00	; 1000
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
