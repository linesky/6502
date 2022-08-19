;https://www.cs.otago.ac.nz/cosc243/resources/6502js-master/globalvars.html

start:
nop
lda #11
cmp xx
hlt:
jmp hlt
xx:
dcb 10

