#include <8051.h>
unsigned char v[10], i, c, x;

int main() {
    v[0] = 0xC0;
    v[1] = 0xF9;
    v[2] = 0xA4;
    v[3] = 0xB0;
    v[4] = 0x99;
    v[5] = 0x92;
    v[6] = 0x82;
    v[7] = 0xF8;
    v[8] = 0x80;
    v[9] = 0x90;
    while(1) {
        P3 = 0xFF;
        P3_6 = 0;
        P3_6 = 1; //front crescator pt activarea WR
        while(P3_2 == 1) ; //pt INTR
        P3_7 = 0; //ma pregatesc de citire
        x = P2;
        P3_7 = 1;
        c = x / 51;
        P3 = 0x00;
        P1 = v[c];
        for(i=0; i<100; i++) ;
        P1 = 0xFF;
    }
    return 0;
}


