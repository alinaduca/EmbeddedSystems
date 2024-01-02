#include <8051.h>
unsigned char x;
unsigned char v[15];
unsigned char nr_taste_apasate;
unsigned char display1;
unsigned char display2;
unsigned char display3;
unsigned char display4;
unsigned char tasta_veche;
unsigned char i;
int main() {
    // P0 = 0b11111110;
    // P0_0 = 0xFE;
    // P0_1 = 0xFD;
    // 0xFB
    // 0xF7
    nr_taste_apasate = 0;
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
    nr_taste_apasate = 0;
    display1 = 12;
    display2 = 12;
    display3 = 12;
    display4 = 12;
    while(1) {
        x = 12;
        P0 = 0xFD;
        if(P0_4 == 0) {
            x = 9;
            if(tasta_veche != x) {
                nr_taste_apasate++;
                display1 = x;
                tasta_veche = x;
            }
        }
        else if(P0_5 == 0) {
            x = 8;
            if(tasta_veche != x) {
                nr_taste_apasate++;
                display1 = x;
                tasta_veche = x;
                if(nr_taste_apasate == 2) {
                    display2 = x;
                }
                else {
                    display1 = x;
                }
            }
            // tasta_veche = x;
            // nr_taste_apasate++;
        }
        else if(P0_6 == 0) {
            x = 7;
            nr_taste_apasate++;
            if(nr_taste_apasate == 3) display3 = x;
            else {
                if(nr_taste_apasate == 2) {
                    display2 = x;
                }
                else {
                    display1 = x;
                }
            }
        }

        P0 = 0xFE;
        if(P0_4 == 0) {
            x = 11;
            nr_taste_apasate++;
            if(nr_taste_apasate == 4) {
                display4 = x;
            }
            else if(nr_taste_apasate == 3) {
                display3 = x;P3 = 0x0F;
        P1 = v[display2];
        for(i = 0; i < 5; i++);
            }
            else if(nr_taste_apasate == 2) {
                display2 = x;
            }
            else {
                display1 = x;
            }
        }
        else if(P0_5 == 0) {
            x = 0;
            nr_taste_apasate++;
            if(nr_taste_apasate == 4) {
                display4 = x;
            }
            else if(nr_taste_apasate == 3) {
                display3 = x;
            }
            else if(nr_taste_apasate == 2) {
                display2 = x;
            }
            else {
                display1 = x;
            }
        }
        else if(P0_6 == 0) {
            x = 10;
            nr_taste_apasate++;
            if(nr_taste_apasate == 4) {
                display4 = x;
            }
            else if(nr_taste_apasate == 3) {
                display3 = x;
            }
            else if(nr_taste_apasate == 2) {
                display2 = x;
            }
            else {
                display1 = x;
            }
        }

        P0 = 0xFB;
        if(P0_4 == 0) {
            x = 6;
            nr_taste_apasate++;
            if(nr_taste_apasate == 4) {
                display4 = x;
            }
            else if(nr_taste_apasate == 3) {
                display3 = x;
            }
            else if(nr_taste_apasate == 2) {
                display2 = x;
            }
            else {
                display1 = x;
            }
        }
        else if(P0_5 == 0) {
            x = 5;
            nr_taste_apasate++;
            if(nr_taste_apasate == 4) {
                display4 = x;
            }
            else if(nr_taste_apasate == 3) {
                display3 = x;
            }
            else if(nr_taste_apasate == 2) {
                display2 = x;
            }
            else {
                display1 = x;
            }
        }
        else if(P0_6 == 0) {
            x = 4;
            nr_taste_apasate++;
            if(nr_taste_apasate == 4) {
                display4 = x;
            }
            else if(nr_taste_apasate == 3) {
                display3 = x;
            }
            else if(nr_taste_apasate == 2) {
                display2 = x;
            }
            else {
                display1 = x;
            }
        }

        P0 = 0xF7;
        if(P0_4 == 0) {
            x = 3;
            nr_taste_apasate++;
            if(nr_taste_apasate == 4) {
                display4 = x;
            }
            else if(nr_taste_apasate == 3) {
                display3 = x;
            }
            else if(nr_taste_apasate == 2) {
                display2 = x;
            }
            else {
                display1 = x;
            }
        }
        else if(P0_5 == 0) {
            x = 2;
            nr_taste_apasate++;
            if(nr_taste_apasate == 4) {
                display4 = x;
            }
            else if(nr_taste_apasate == 3) {
                display3 = x;
            }
            else if(nr_taste_apasate == 2) {
                display2 = x;
            }
            else {
                display1 = x;
            }
        }
        else if(P0_6 == 0) {
            x = 1;
            nr_taste_apasate++;
            if(nr_taste_apasate == 4) {
                display4 = x;
            }
            else if(nr_taste_apasate == 3) {
                display3 = x;
            }
            else if(nr_taste_apasate == 2) {
                display2 = x;
            }
            else {
                display1 = x;
            }            
        }
        if(nr_taste_apasate == 1) {
            P3 = 0x00;
            P1 = v[display1];
        }
        if(nr_taste_apasate == 2) {
            P3 = 0x00;
            P1 = v[display1];
            for(i = 0; i < 10; i++);
            P3 = 0x0F;
            P1 = v[display2];
            for(i = 0; i < 10; i++);
            
        }
        // for(i = 0; i < 5; i++);
        // P3 = 0x0F;
        // P1 = v[display2];
        // for(i = 0; i < 5; i++);
        // P3 = 0xF0;
        // P1 = v[display3];
        // for(i = 0; i < 5; i++);
        // P3 = 0xFF;
        // P1 = v[display4];
        // for(i = 0; i < 5; i++);
    }
    return 0;
}