;http://www.6502asm.com/

lda #$2
sta $1
lda #$0
sta $0
ford:
again:
lda #$5
ldx #$0
sta ($0,x)
ldx $0
inx
stx $0
cpx #$0
bne again
ldx $1
inx
stx $1
cpx #$6
bne ford
hlt:
jmp hlt
rts

