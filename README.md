A demonstration of hijacking the Sonic & Knuckles lock-on cart to run user code.

Along with a fake Sonic 3 header, it provides a corrupt Kosinski compression packet at the address from which S&K tries to read the first FMV frame for the SEGA logo, engineered to cause the decompressor to blow through the stack and write a new RTS address that jumps to user code.