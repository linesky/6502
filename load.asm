;https://www.cs.otago.ac.nz/cosc243/resources/6502js-master/globalvars.html

start:
nop
lda #<start
sta $0
lda #>start
sta $1
hlt:
jmp hlt
xxx:
dcb 10