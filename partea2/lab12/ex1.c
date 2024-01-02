#include <8051.h>
unsigned char x;
unsigned char v[15];
int main() {
    // P0 = 0b11111110;
    // P0_0 = 0xFE;
    // P0_1 = 0xFD;
    // 0xFB
    // 0xF7
    P3 = 0x00;
    v[0] = 0xF0;
    v[1] = 0xF9;
    v[2] = 0xA4;
    v[3] = 0xB0;
    v[4] = 0x99;
    v[5] = 0x92;
    v[6] = 0x82;
    v[7] = 0xF8;
    v[8] = 0x80;
    v[9] = 0x90;
    v[10] = 0x00;//pentru steluta
    v[11] = 0x00;//pentru diez
    v[12] = 0xFF;//nimic
    while(1) {
        x = 12;
        P0 = 0xFD;
        if(P0_4 == 0) {
            x = 9;
        }
        else if(P0_5 == 0) {
            x = 8;
        }
        else if(P0_6 == 0) {
            x = 7;
        }

        P0 = 0xFE;
        if(P0_4 == 0) {
            x = 11;
        }
        else if(P0_5 == 0) {
            x = 0;
        }
        else if(P0_6 == 0) {
            x = 10;
        }

        P0 = 0xFB;
        if(P0_4 == 0) {
            x = 6;
        }
        else if(P0_5 == 0) {
            x = 5;
        }
        else if(P0_6 == 0) {
            x = 4;
        }

        P0 = 0xF7;
        if(P0_4 == 0) {
            x = 3;
        }
        else if(P0_5 == 0) {
            x = 2;
        }
        else if(P0_6 == 0) {
            x = 1;
        }
        P1 = v[x];
    }
    return 0;
}