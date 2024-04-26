# BEGIN 0000H
START:	   MVI D,05	// Counter

W:	   LXI H,2000
	   MVI C,05	// Counter

X:	   MOV A,M
	   INX H
	   MOV B,M
	   CMP B
	   JC Y
	   MOV M,A
	   DCX H
	   MOV M,B
	   INX H

Y:	   DCR C
	   JNZ X
	   DCR D
	   JNZ W
	   HLT
# ORG 2000
# DB 23H,45H,09H,FFH,08H,27H
