#include "input.h"
 
char inp_kbd_getch(void) {
        char inp = 0;
        __asm {
                MOV AH, 00h
                INT 16H
                MOV [inp], AL
        }
        return inp;
}
 
void inp_kbd_getstr(char* buffer, UINT maxlen, char passchar) {
        UINT i = 0;
        char inp = 0;
        while(TRUE) {
                inp = inp_kbd_getch();
                if(inp == 13) { // Enter
                        return;
                } else if(inp == 8) { // Backspace
                        if(i > 0) {
                                i--;
                                buffer--;
                                *buffer = 0;
                                disp_txt_putch(inp);
                        }
                } else if(i < maxlen) {
                        *buffer = inp;
                        if(passchar==0)
                                disp_txt_putch(inp);
                        else
                                disp_txt_putch(passchar);
                        i++;
                        buffer++;
                }
        }
}