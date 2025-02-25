#include <8051.h>
// #include <reg51.h>

// Function Prototypes
void delay(unsigned int time);
void binary_count(void);
void cylon(void);
void dual_cylon(void);
void number_clicker(void);
void display_number(void);
void toggler(void);

// Global Variables
unsigned int number = 0;
unsigned int switchCount = 0;
unsigned long startmillis;
unsigned long currentmillis;
unsigned int buttonIndex = 0;
const unsigned long period = 1000;

unsigned char seg_table[] = {
    0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0x80, 0x90
};

// Timer funciton
void Init_Timer0(void)
{
	// TMOD |= 0x00;		// mode 1, 16-bit timer
	TMOD |= 0x01;		// mode 1, 16-bit timer
	TH0 = 0x00;		// overflow at 65536
	TL0 = 0x00;
	EA = 1;			// enable global interrupts
	ET0 = 1;		// enable timer0 interrupt
	TR0 = 1;		// timer on
}

void Timer0_isr(void) __interrupt(1) __using(1)
{
	TH0 = 0x00;		// reload
	TL0 = 0x00;
    buttonIndex++;
    if (buttonIndex > 5)
		buttonIndex = 1;
}


// Delay function
void delay(unsigned int time) {
    while (time--);
}

// void toggler(void){
// 	if ((P3 & 0x20) == 0){
// 		delay(5000);
// 		// break;
// 	}
// }

// Binary count from 0-255
void binary_count(void) {
    unsigned int count = 0;
    do{
        // startmillis = millis();
        P1 = ~count;  // Output inverted count to LEDs
        // if (currentmillis - startmillis >= period)
        delay(2000);
        count++;
		if ((P3 & 0x20) == 0){
            Timer0_isr();
			break;
		}
    }
    while (count < 256);
}

// Cylon effect
void cylon(void) {
    unsigned char pos = 1;
    unsigned char direction = 1; // 1 for forward, 0 for reverse

    while (1) {
		if ((P3 & 0x20) == 0){
            Timer0_isr();
			break;
		}
        P1 = ~pos;  // Invert output to turn LEDs on
        delay(5000);

        if (direction) {
            pos <<= 1;
            if (pos == 0x80) direction = 0;
        } else {
            pos >>= 1;
            if (pos == 0x01) direction = 1;  // Reverse at the beginning
        }
        // Check for exit condition
    }
}


// Dual Cylon effect
void dual_cylon(void) {
    unsigned char pos1 = 1, pos2 = 0x80;
    while (1) {
		if ((P3 & 0x20) == 0){
            P1=0xFF;
            Timer0_isr();
			break;
		}
        P1 = ~(pos1 | pos2);  // Invert output for correct LED logic
        delay(5000);
        pos1 <<= 1;
        pos2 >>= 1;
        if (pos1 == 0x80) {  // Reset condition
            pos1 = 1;
            pos2 = 0x80;
        }
    }
}

// Function to display a number (0-9999) on the 7-segment display
void display_number(void) {
    unsigned int temp = number;

    unsigned char ones = temp % 10;
    temp /= 10;
    unsigned char tens = temp % 10;
    temp /= 10;
    unsigned char hundreds = temp % 10;
    temp /= 10;
    unsigned char thousands = temp % 10;

    P0 = seg_table[thousands];	P2_0 = 0;	delay(500);	P2_0 = 1;
    P0 = seg_table[hundreds];	P2_1 = 0;	delay(500);	P2_1 = 1;
    P0 = seg_table[tens];		P2_2 = 0;	delay(500);	P2_2 = 1;
    P0 = seg_table[ones];		P2_3 = 0;	delay(500);	P2_3 = 1;
}

// Button-controlled number increment/decrement
void number_clicker(void) {
    while (1) {
		if ((P3 & 0x20) == 0){
			Timer0_isr();
			break;
		}
		display_number();
        if ((P3 & 0x08) == 0) { // Button Pressed
            delay(5000);
            number++;
            if (number > 9999) number = 0; // Roll over to 0
//                display_number();
//            }
        }

        // Decrement Number (S4 - P3.2)
        if ((P3 & 0x04) == 0) { // Button Pressed
            delay(5000);
            if (number == 0) number = 9999; // Roll over to 9999
            else number--;
        }
    }
}

void main(void) {
    Init_Timer0();
    while (1) {
       
    switch(buttonIndex) {
        case 1:
            binary_count();
            break;
        case 2:
            cylon();
            break;
        case 3:
            dual_cylon();
            break;
        case 4:
            number_clicker();
            break;
        default:
            break;
    }	
    }
}