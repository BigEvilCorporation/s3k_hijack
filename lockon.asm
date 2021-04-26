
	; The first Kosinksi-compressed payload the S&K cart tries to load
	; from the Sonic 3 cart - this would be frame 1 of the intro FMV here
	dcb.b   0x00350D26-*, $FF

	; Some Kosinski packets to blow through the stack and write a new return address
	;
	; Source addr is 0x00350D26
	; Dest addr is 0xFFFF0000
	; Stack is at 0xFFFFFDF8
	; Return address is at 0xFFFFFDF4
	;
	; This could be smaller if we used Kosinksi's dictionary method instead
	; of an uncompressed stream, but I can't be bothered to figure it out
	; right now

	; Max packet we can store is 16 bytes, so we need 4062 packets to reach 0xFFFFFDE8
	dc.b $FF,$FF							; 16 bytes uncompressed
	REPT (0xFDE8/16)
	dc.b $AA,$FF,$FF,$FF,$FF,$FF,$FF,$FF	; First 15 bytes
	dc.b $FF,$FF,$FF,$FF,$FF,$FF,$FF
	dc.b $FF,$FF							; Next compressor token
	dc.b $DD								; Last byte
	ENDR

	; Last 16-byte packet needs different end compressor token
	dc.b $AA,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	dc.b $FF,$FF,$FF,$FF,$FF,$FF,$FF
	dc.b $FF,$2F							; 12 bytes of padding remain
	dc.b $DD

	; Remaining padding to take us up to 0xFFFFFDF4
	dc.b $01,$02,$03,$04,$05,$06,$07,$08	; 8 bytes of padding
	dc.l CPU_EntryPoint_SNK					; The return address
	dc.b $00,$F0,$00						; End of data

	even
