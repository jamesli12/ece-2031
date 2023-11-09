; An empty asm file ...

ORG 0
WaitSwitchesDown:
	IN Switches
	JPOS WaitSwitchesDown

SetSpeed:
	STORE Speed

GetButtons:
	LOAD ButtonsCHANGELATER
	STORE ButtonInput

Rotate:
	//Do rotate stuff here

ShowLEDs:
	OUT LEDs
	Jump SetSpeed


	

Speed: DW 0
IsDynamic: DW 0
ButtonInput:   DW 0
Zero: DW 0

; IO address constants
Switches:  EQU 000
LEDs:      EQU 001
Timer:     EQU 002
Hex0:      EQU 004
Hex1:      EQU 005

