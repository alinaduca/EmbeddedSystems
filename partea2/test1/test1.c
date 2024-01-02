#include <8051.h>
unsigned char x, i, v[15];
unsigned char cifre[4], n, tastaAnterioara, n_afis;
unsigned char apasatSET, activareTimer;
int main() {
    TR0 = 0;
    TMOD = 1;
    TH0 = 39;
    TL0 = 16;
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
    v[10] = 0xBF; //pentru * pun -
    v[11] = 0x89; //pentru # pun H
    v[12] = 0xFF; //pentru nimic
    apasatSET = 0;
    tastaAnterioara = 12;
    i = 0;
    n_afis = 3;
    cifre[0] = 12;
    cifre[1] = 12;
    cifre[2] = 12;
    cifre[3] = 12;
    activareTimer = 0;
    while(1) {
        if(apasatSET) {
            x = 12;
            P0 = 0xF7;
            if(P0_6 == 0) x = 1;
            else if(P0_5 == 0) x = 2;
            else if(P0_4 == 0) x = 3;

            P0=0xFB;
            // P0_2 = 0;
            if(P0_6 == 0) x = 4;
            else if(P0_5 == 0) x = 5;
            else if(P0_4 == 0) x = 6;

            P0 = 0xFD;
            // P0_1 = 0;
            if(P0_6 == 0) x = 7;
            else if(P0_5 == 0) x = 8;
            else if(P0_4 == 0) x = 9;

            P0 = 0xFE;
            if(P0_6 == 0) x = 10;
            else if(P0_5 == 0) x = 0;
            else if(P0_4 == 0) x = 11;

            if(tastaAnterioara != x && x != 12) {
                cifre[n] = x;
                n++;
            }

            if(n == 4) {
                apasatSET = 0;
                if(!activareTimer) {
                    TR0 = 1;
                    activareTimer = 1;
                }
            }

            tastaAnterioara = x;
        }

        if(TF0 == 1) {
            cifre[3]++;
            if(cifre[3] == 10) {
                cifre[3] = 0;
                cifre[2]++;
            }
            TF0 = 0;
            TH0 = 39;
            TL0 = 16;
        }
        
        if(P2_0 == 0) { //SET
            apasatSET = 1;
            n = 0;
        }

        if(P2_1 == 0) { //M+
            cifre[1]++;
            if(cifre[1] == 10) {
                cifre[1] = 0;
                cifre[0]++;
            }
        }

        if(P2_2 == 0) { //M-
            if(cifre[1] == 0) {
                if(cifre[0] > 0) {
                    cifre[1] = 9;
                    cifre[0]--;
                }
            }
            else cifre[1]--;
        }

        if(P2_3 == 0) { //S+
            cifre[3]++;
            if(cifre[3] == 10) {
                cifre[3] = 0;
                cifre[2]++;
            }
        }

        if(P2_4 == 0) { //S-
            if(cifre[3] == 0) {
                if(cifre[2] > 0) {
                    cifre[3] = 9;
                    cifre[2]--;
                }
            }
            else cifre[3]--;
        }

        P1 = 0xFF;
        P3 = i << 3;
        P1 = v[cifre[n_afis]];
        n_afis++;
        if(i == 0) i = 3;
        else i--;
        if(n_afis == 4) n_afis = 0;
    }
    return 0;
}