;http://www.6502asm.com/



again:
ldx $fe
lda #$5
sta $200,x
sta $300,x
sta $400,x
sta $500,x
jmp again
hlt:
jmp hlt
rts