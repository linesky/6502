;https://www.cs.otago.ac.nz/cosc243/resources/6502js-master/globalvars.html

start:
nop
lda xxx
sta $0
hlt:
jmp hlt
xxx:
dcb 10
