PORTB = $6000   ; Port B of the I/O chip
PORTA = $6001   ; Port A of the I/O chip
DDRB = $6002    ; Data direction register for port B
DDRA = $6003    ; Data direction register for port A

  .org $8000 ; Start of program memory

reset:
  lda #%11111111 ; Set all pins on port A of the I/O chip to on
  sta DDRA
  lda #%11111111 ; Set all pins on port B of the I/O chip to on
  sta DDRB


loop:
  lda #%11111111 ; Set all pins on port A of the I/O chip to on
  sta DDRA
  lda #%11111111 ; Set all pins on port B of the I/O chip to on
  sta DDRB
  jmp loop

  .org $fffc
  .word reset 
  .word $0000


;https://youtu.be/oOYA-jsWTmc?t=149
; can manually manipulate the I/O ports. look in the code for this
