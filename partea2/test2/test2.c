#include <8051.h>
unsigned char x, v[15], tastaAnterioara;
unsigned char cifre[3][4], cif, n;
unsigned char a, b, c, aux, i, j, rez, delta;
unsigned char display[3], disp, n_afis, nrCif;
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
    v[10] = 0xBF; //pentru * pun -
    v[11] = 0x89; //pentru # pun H
    v[12] = 0xFF; //pentru nimic
    disp = 0;
    a = 0;
    b = 0;
    c = 0;
    n = 0;
    cif = 0;
    nrCif = 0;
    display[0] = 12;
    display[1] = 12;
    display[2] = 12;
    for(i = 0; i < 3; i++)
        for(j = 0; j < 4; j++)
            cifre[i][j] = 0;
    while(1) {
        x = 12;
        P0 = 0xF7;
        if(P0_6 == 0) x = 1;
        else if(P0_5 == 0) x = 2;
        else if(P0_4 == 0) x = 3;

        P0=0xFB;
        if(P0_6 == 0) x = 4;
        else if(P0_5 == 0) x = 5;
        else if(P0_4 == 0) x = 6;

        P0 = 0xFD;
        if(P0_6 == 0) x = 7;
        else if(P0_5 == 0) x = 8;
        else if(P0_4 == 0) x = 9;

        P0 = 0xFE;
        if(P0_6 == 0) x = 10;
        else if(P0_5 == 0) x = 0;
        else if(P0_4 == 0) x = 11;

        if(tastaAnterioara != x && x != 12) {
            if(x == 11) {
                if(cif > 0) {
                    aux = cifre[n][0] * 1000 + cifre[n][1] * 100 + cifre[n][2] * 10 + cifre[n][3];
                    if(n == 0) {
                        a = aux;
                    }
                    else if(n == 1) {
                        b = aux;
                    }
                    else if(n == 2) {
                        c = aux;
                    }
                    cif = 0;
                    n++;
                }
            }
            else if(x == 10) {
                n = 0;
                cif = 0;
                a = 0;
                b = 0;
                c = 0;
                for(i = 0; i < 3; i++)
                    for(j = 0; j < 4; j++)
                        cifre[i][j] = 0;
            }
            else if(x != 12) {
                if(n < 3 && cif < 4) {
                    cifre[n][cif] = x;
                    cif++;
                }
            }
        }
        
        if(n == 3) {
            //calculez delta
            //aflu radicalul
            //calculez x0 sau x1, in functie de switch-ul PM

            delta = b * b - 4 * a * c;
            if(P2_0 == 0) rez = (-b + delta/2) / (2 * a);
            else rez = (-b - delta/2) / (2 * a);
            
            display[0] = rez % 10;
            display[1] = (rez / 10) % 10;
            display[2] = (rez / 100) % 10; //maximul e 255
            if(display[2] == 0) {
                if(display[1] == 0) {
                    nrCif = 1;
                }
                else nrCif = 2;
            }
            else nrCif = 3;
            n = 0;
        }

        P1 = 0xFF;
        P3 = disp << 3;
        P1 = v[display[n_afis]];
        if(i == 0) i = 3;
        else i--;
        if(n_afis == 0) n_afis = nrCif;
        else n_afis--;
    }
    return 0;
}
