#include <8051.h>

// Function Prototypes
void delay(unsigned int time);
int binary_count(void);
void cylon(void);
void dual_cylon(void);
void number_clicker(void);
void display_number(void);

// Global Variables
unsigned int number = 0;
unsigned int switchCount = 0;

// 7-Segment Lookup Table (Common Cathode)
unsigned char seg_table[] = {
    0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0x80, 0x90
};

// Delay function
void delay(unsigned int time) {
    while (time--);
}

// Binary count from 0-255
int binary_count(void) {
    unsigned char count = 0;
    if((P3 & 0x04) == 0){
        switchCount++;
        return 0;
    }
    else{
        while (1) {
            P1 = ~count;  // Output inverted count to LEDs
            delay(500);
            count++;
            if(count == 255){
                return 0;
            }
        }
    }
}

// Cylon effect
void cylon(void) {
    unsigned char pos = 1;
    while (1) {
        P1 = ~pos;  // Invert output to turn LEDs on
        delay(5000);
        pos <<= 1;
        if (pos == 0) pos = 1;  // Reset to start position
    }
}

// Dual Cylon effect
void dual_cylon(void) {
    unsigned char pos1 = 1, pos2 = 0x80;
    while (1) {
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

    P0 = seg_table[thousands];
    P2_0 = 0;
    delay(500);
    P2_0 = 1;

    P0 = seg_table[hundreds];
    P2_1 = 0;
    delay(500);
    P2_1 = 1;

    P0 = seg_table[tens];
    P2_2 = 0;
    delay(500);
    P2_2 = 1;

    P0 = seg_table[ones];
    P2_3 = 0;
    delay(500);
    P2_3 = 1;
}


// Button-controlled number increment/decrement
void number_clicker(void) {
    while (1) {
        if ((P3 & 0x08) == 0) { // Button Pressed
            delay(20000);
            number++;
            if (number > 9999) number = 0; // Roll over to 0
//                display_number();
//            }
        }

        // Decrement Number (S4 - P3.2)
        if ((P3 & 0x04) == 0) { // Button Pressed
            delay(20000);
            if (number == 0) number = 9999; // Roll over to 9999
            else number--;
//                display_number();
//            }
        }
        // Update the 7-segment display
        display_number();
    }
}

// Main function
void main(void) {
    while (1) {
//        binary_count();
//        cylon();
//        dual_cylon();
        number_clicker();
    }
//    unsigned char count = 0;
//    if((P3 & 0x04) == 0){
//        count++;
//    }
//    while(1){
//        switch(switchCount % 5){
//        case 1:
//            binary_count();
//            break;
//        case 2:
//            cylon();
//            break;
//        case 3:
//            dual_cylon();
//            break;
//        case 4:
//            number_clicker();
//            break;
//        default:
//            P1 = 0x00;
//        }
//    }
}
