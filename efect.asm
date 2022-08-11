;http://www.6502asm.com/


lda #$5
ldx #$0
again:
sta $200,x
sta $300,x
sta $400,x
sta $500,x
inx
inx
cmp $ff,x
bne again
hlt:
jmp hlt
rts