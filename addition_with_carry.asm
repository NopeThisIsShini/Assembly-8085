#begin 2000h
LXI H, 2050H
LDA 2051H
MOV B,M
ADD B
STA 2052H
JC LOOP
MVI A,00H
STA 2054H
JMP LOOP1
LOOP: MVI A ,01H
STA 2054H
LOOP1:HLT
#ORG 2050H
# DB FFH,FFH