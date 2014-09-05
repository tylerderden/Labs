
_main:
	LDI        27, 255
	OUT        93, 27
	LDI        27, 0
	OUT        94, 27

;lab1.c,1 :: 		void main() {
;lab1.c,2 :: 		DDRA = 0xFF;
	LDI        27, 255
	OUT        DDRA+0, 27
;lab1.c,3 :: 		do {
L_main0:
;lab1.c,4 :: 		PORTA = 0x00;
	LDI        27, 0
	OUT        PORTA+0, 27
;lab1.c,5 :: 		Delay_ms(1000);
	LDI        18, 41
	LDI        17, 150
	LDI        16, 128
	DEC        16
	BRNE       $-1
	DEC        17
	BRNE       $-3
	DEC        18
	BRNE       $-5
;lab1.c,6 :: 		PORTB = 0xFF;
	LDI        27, 255
	OUT        PORTB+0, 27
;lab1.c,7 :: 		Delay_ms(1000);
	LDI        18, 41
	LDI        17, 150
	LDI        16, 128
	DEC        16
	BRNE       $-1
	DEC        17
	BRNE       $-3
	DEC        18
	BRNE       $-5
;lab1.c,8 :: 		} while(1);
	JMP        L_main0
;lab1.c,9 :: 		}
L_end_main:
	JMP        L_end_main
; end of _main
