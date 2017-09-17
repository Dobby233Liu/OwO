void putchar
 void puts(const char* s); 
 char* hello = "go get a new pc";
 void main(void) { puts(hello); while(1==1) {} } 
 void puts(const char* s) { while (*s != 0) { putchar (*s); s++; } } 
 void putchar(char c) { __asm { mov ah, 0Eh mov al, [c] mov bh, 0 mov bl, 0Fh int 10h } 