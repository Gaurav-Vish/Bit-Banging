#include <8051.h>

#define	LED	P1
void delay(unsigned int time) {
    while (time--);
}

void Init_Timer0(void)
{
	TMOD |= 0x01;		// mode 1, 16-bit timer
	TH0 = 0xFC;		// overflow at 65536
	TL0 = 0x18;
	EA = 1;			// enable global interrupts
	ET0 = 1;		// enable timer0 interrupt
	TR0 = 1;		// timer on
}

void Timer0_isr(void) __interrupt(1) __using(1)
{
	TH0 = 0xFC;		// overflow at 65536
	TL0 = 0x18;
	// P1=~P1;
}

void main(void)
{
	Init_Timer0();
	P1 =0;
	while (1);
}