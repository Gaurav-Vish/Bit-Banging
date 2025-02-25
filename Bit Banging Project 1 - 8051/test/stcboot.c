// Sample program for the QX-mini51 STC89C52 development board
//
// Display 0123 on 7-segment LED display using multiplexing
// J6 must be closed to supply the 7-segment LED display
//
#include <8051.h>

// 0 bit means that segment is on
unsigned char seg_table[] = {
    0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0x80, 0x90
};

void delay(unsigned int i)
{
	unsigned int j, k;

	for (j = i; j > 0; j--)
		for (k = 125; k > 0; k--);
}

void display(void)
{
	P0 = seg_table[0];
	P2_0 = 0;
	delay(5);
	P2_0 = 1;

	P0 = seg_table[0];
	P2_1 = 0;
	delay(5);
	P2_1 = 1;

	P0 = seg_table[2];
	P2_2 = 0;
	delay(5);
	P2_2 = 1;

	P0 = seg_table[3];
	P2_3 = 0;
	delay(5);
	P2_3 = 1;
}

void main(void)
{
	unsigned int a;

	while (1) {
		for (a = 100; a > 0; a--) {
			display();
		}

	}
}
