ROM_Start:

    ; Real header and code for the non-locked-on game at 0x00000000
    include 'header.asm'

    ; Lockon fake header starts at 2MB mark
    dcb.b   0x00200000-*, $FF

    include 's3header.asm'
	include 'lockon.asm'
    include 'hello.asm'

    ; Pad ROM to 4MB
    dcb.b   0x00400000-*, $FF