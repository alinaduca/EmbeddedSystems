// #include<8051.h>
// unsigned char x;
// int main() {
//     TR0 = 0;
//     TMOD = 1;
//     TL0 = 0;
//     TH0 = 4;
//     x = 1;
//     P1 = ~x;
//     TR0=1;
//     P1=0xFE;
//     while(1) {
//         if(TF0==1) {
//             x = x << 1;
//             if(x == 0) x = 1;
//             P1 = ~x;
//             TF0=0;
//             TH0=4;
//             TL0=0;
//         }
//     }
//     return 0;
// }





#include<8051.h>
volatile unsigned char x;
unsigned char v[10];

void rutina_de_tratare() __interrupt 1
{
    x=x+1;
    if(x == 10) x = 0;
    TF0=0;
    TH0=4;
    TL0=0;
}

int main() {
    TR0=0;
    TMOD=1;
    TL0=100;
    TH0=0;
    EA=1;
    ET0=1;
    x = 1;
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
    P0_7=1; // daca e pe 0 atunci decodorul e oprit
    P1 = v[x];
    TR0=1;
    while(1) {
        P1 = v[x];
    }
    return 0;
}