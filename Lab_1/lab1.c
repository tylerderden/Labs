void main() {
     DDRA = 0xFF;
     do {
        PORTA = 0x00;
        Delay_ms(1000);
        PORTB = 0xFF;
        Delay_ms(1000);
     } while(1);
}
