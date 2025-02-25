#include <8051.h>

// 7-Segment Lookup Table (Common Cathode)
unsigned char seg_table[] = {
    0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0x80, 0x90
};

// Global Variable to Store the Number (0-9999)
unsigned int number = 0;

// Delay Function
void delay(unsigned int time) {
    while (time--);
}


// Function to Display 4-Digit Number on 7-Segment Display
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

// Main Function
void main(void) {
        number_clicker();
}
