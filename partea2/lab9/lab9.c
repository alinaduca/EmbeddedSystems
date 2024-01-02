#include <8051.h>
char i, x;
int main() {
    // P3=2;
    x=1;
    // P1=0b00000000;
    // P1_0=1;
    // x=P1;
    P1=~x;
    while(1) {
        for(i=0;i<5;i++);
        P1=~x;
        x=x<<1;
        if(P1_7==0) {
            x=1;
        }
    }
    return 0;
}