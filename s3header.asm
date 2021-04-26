
	; Fake Sonic 3 header. The S&K cart will see this at the 2MB mark
	; and attempt to decompress FMV frames from it.
	;
	; Our ROM needs to be >2MB for this to work, or it will mirror the first 2MB,
	; and we probably want to store a game there.

	; Fake vector table
	dc.l   0x00000000   ; Initial stack pointer value
	dc.l   0x00000000   ; Start of program
	dc.l   0x00000000   ; Bus error
	dc.l   0x00000000   ; Address error
	dc.l   0x00000000   ; Illegal instruction
	dc.l   0x00000000   ; Division by zero
	dc.l   0x00000000   ; CHK CPU_Exception
	dc.l   0x00000000   ; TRAPV CPU_Exception
	dc.l   0x00000000   ; Privilege violation
	dc.l   0x00000000   ; TRACE exception
	dc.l   0x00000000   ; Line-A emulator
	dc.l   0x00000000   ; Line-F emulator
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Spurious exception
	dc.l   0x00000000   ; IRQ level 1
	dc.l   0x00000000   ; IRQ level 2
	dc.l   0x00000000   ; IRQ level 3
	dc.l   0x00000000   ; IRQ level 4 (horizontal retrace interrupt)
	dc.l   0x00000000   ; IRQ level 5
	dc.l   0x00000000   ; IRQ level 6 (vertical retrace interrupt)
	dc.l   0x00000000   ; IRQ level 7
	dc.l   0x00000000   ; TRAP #00 exception
	dc.l   0x00000000   ; TRAP #01 exception
	dc.l   0x00000000   ; TRAP #02 exception
	dc.l   0x00000000   ; TRAP #03 exception
	dc.l   0x00000000   ; TRAP #04 exception
	dc.l   0x00000000   ; TRAP #05 exception
	dc.l   0x00000000   ; TRAP #06 exception
	dc.l   0x00000000   ; TRAP #07 exception
	dc.l   0x00000000   ; TRAP #08 exception
	dc.l   0x00000000   ; TRAP #09 exception
	dc.l   0x00000000   ; TRAP #10 exception
	dc.l   0x00000000   ; TRAP #11 exception
	dc.l   0x00000000   ; TRAP #12 exception
	dc.l   0x00000000   ; TRAP #13 exception
	dc.l   0x00000000   ; TRAP #14 exception
	dc.l   0x00000000   ; TRAP #15 exception
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Unused (reserved)
	dc.l   0x00000000   ; Unused (reserved)

    ; Fake Sonic 3 Genesis header
	dc.b "SEGA MEGA DRIVE "                                                                 ; 16 bytes - Console name
	dc.b "                "                                                                 ; 16 bytes - Copyright holder and release date
	dc.b "                                                "                                 ; 48 bytes - Domestic name
	dc.b "                                                "                                 ; 48 bytes - International name
	dc.b "GM MK-1079 -00"                                                                   ; 14 bytes - Game type and product code
	dc.w 0x0000                                                                             ; 02 bytes - Checksum
	dc.b "                "                                                                 ; 16 bytes - I/O support
	dc.l 0x00000000                                                                         ; 04 bytes - Start address of ROM
	dc.l 0x00000000                                                                         ; 04 bytes - End address of ROM
	dc.l 0x00000000                                                                         ; 04 bytes - Start address of RAM
	dc.l 0x00000000                                                                         ; 04 bytes - End address of RAM
	dc.b "    "                                                                             ; 04 bytes - SRAM enabled
	dc.b "    "                                                                             ; 04 bytes - Start address of SRAM
	dc.b "    "                                                                             ; 04 bytes - End address of SRAM
	dc.b "            "                                                                     ; 12 bytes - Modem
	dc.b "                                        "                                         ; 40 bytes - Notes
	dc.b "                "                                                                 ; 16 bytes - Country codes
	                                                                                        ; ------------------------
	                                                                                        ; 256 bytes total
