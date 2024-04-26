	   LXI H,2500
	   MOV C,M
	   LXI H,2501
	   MOV A,M
	   DCR C

REP:	   ADC M
	   DAA
	   DCR C
	   JNZ REP
	   STA 2600
	   HLT
# ORG 2500H
# DB 03H,15H
