# BEGIN 0000H
	
	   XRA A
	   MVI C,05

REP:	   ADI 05
                           DAA
	   DCR C
	   JNZ REP
	   STA 2500H
	   HLT