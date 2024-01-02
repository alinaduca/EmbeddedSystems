#include <8051.h>
int main() {
    P1 = 0b10101010;
    while(1) {
        P1 = ~P1;
    }
    return 0;
}