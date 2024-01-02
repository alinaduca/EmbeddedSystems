#include <8051.h>
unsigned char x;
unsigned char u;
unsigned char z;
unsigned char v[10];
unsigned char i, j;
int main() {
    // x = 7;
    x = 98;
    P3 = 0x00;
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
        if(x > 9 && x <= 99) {
            z=0;
            u = x;
            while(u >= 10) {
                u = u - 10;
                // x = x + 1;
                z=z+1;
            }
            P3=0x00;
            P1 = v[u];
            for(j=0; j<20;j++);
            P1 = v[z];
            P3=0x08;
        }
        for(i=0; i<5;i++);
    }
    return 0;
}



// #include <8051.h>
// unsigned char x;
// unsigned char u;
// unsigned char z;
// unsigned char s;
// unsigned char v[10];
// unsigned char i, j;
// int main() {
//     // x = 7;
//     x = 198;
//     P3 = 0x00;
//     v[0] = 0xC0;
//     v[1] = 0xF9;
//     v[2] = 0xA4;
//     v[3] = 0xB0;
//     v[4] = 0x99;
//     v[5] = 0x92;
//     v[6] = 0x82;
//     v[7] = 0xF8;
//     v[8] = 0x80;
//     v[9] = 0x90;
//     while(1) {
//         if(x > 9 && x <= 99) {
//             s=0;
//             z=x;
//             while(z>=100) {
//                 z=z-100;
//                 s=s+1;
//             }
//             u = z;
//             z = 0;
//             while(u >= 10) {
//                 u = u - 10;
//                 z=z+1;
//             }
//             P3=0x00;
//             P1 = v[u];
//             for(j=0; j<20;j++);
//             P1 = v[z];
//             P3=0x08;
//             for(j=0; j<20;j++);
//             P1=v[s];
//             P3=0x10;

//         }
//         for(i=0; i<5;i++);
//     }
//     return 0;
// }