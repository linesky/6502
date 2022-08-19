;https://www.cs.otago.ac.nz/cosc243/resources/6502js-master/globalvars.html

start:
nop
lda #16
sta mulx
lda #3
sta muly
jsr mul
jsr hlt
hlt:
jmp hlt
mulx:
dcb 0
muly:
dcb 0
mul:
lda #0
cmp muly
bne mul1
rts
mul1:
cmp mulx
bne mul2
rts
mul2:
ldx muly
mul3:
clc
adc mulx
dex
cpx #0
bne mul3
rts



