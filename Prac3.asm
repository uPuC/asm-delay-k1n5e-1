;call delay20us
;call delay4ms
call delay1s
nop

ldi r16, 0x01
ldi r18, 10 ; contador

loop:
	call random
    dec  r18
    brne loop
	nop


nop

delay20us: 
    ldi R24, 103
	nxt:
		dec R24
   	    brne nxt
nop
ret


delay4ms:
	ldi R25, 90
	nxt1:
		ldi R26, 236
		nxt2:
			dec R26
			brne nxt2
		dec R25
		brne nxt1
ret


delay1s:
	ldi R27, 241
	nxt3:
		nop
		nop
		ldi R28, 71
		nxt4:
			nop
			nop
			ldi R29, 186
			nxt5:
				nop
				nop
				dec R29
				brne nxt5
			dec R28
			brne nxt4
		dec R27
		brne nxt3
nop
nop
ret


random:
	ldi R17, 0x1D	; mascara
	lsr r16			; shift -->
	brcc skip		; se revisa C, si es 0 --> skip
	eor R16, R17	; si no se skipea se aplica xor
skip:
	mov R25, R16	; muevo el valor a R25 para visualizar exclusivamente en ese registro
	ret 


