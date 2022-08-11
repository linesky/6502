lda #$5
ldx #$0
again:
sta $200,x
inx
cmp $ff,x
bne again
hlt:
jmp hlt
rts

