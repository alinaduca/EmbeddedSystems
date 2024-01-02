// #include <8051.h>
// char i;
// int main() {
//     while(1) {
//         P3_0=1;
//         P3_1=0;
//         for(i=0;i<50;i++)
//     }
//     return 0;
// }


// #include <8051.h>
// char i, x;
// int main() {
//     P3 = 1;
//     while(1) {
//         if(P2_1==0) {
//             P3=0;
//         }
//         else {
//             if(P2_0==0) P3=1;
//             else P3=2;
//         }
//     }
//     return 0;
// }


// #include <8051.h>
// char i, buton_apasat, x;
// int main() {
//     buton_apasat=0;
//     // P3 = 1;
//     x=0;
//     while(1) {
//         if(P2_0==1 && buton_apasat==0) {
//             buton_apasat=1;
//             P3 = x+1;
//             x=1-x;
//         }
//         if(P2_0==0 && buton_apasat==1) {
//             buton_apasat=0;
//         }
//     }
//     return 0;
// }


#include <8051.h>
char i, buton_apasat, x;
int main() {
    buton_apasat=0;
    x=0;
    while(1) {
        if(P2_0==1 && buton_apasat==0) {
            buton_apasat=1;
            P3=0;
        }
        if(P2_0==0 && buton_apasat==1) {
            buton_apasat=0;
            P3 = x+1;
            x=1-x;
        }
    }
    return 0;
}