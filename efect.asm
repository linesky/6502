;http://www.6502asm.com/

lda #$2
sta $1
lda #$0
sta $0
ldy #$32
again:
lda #$5
ldx #$0
sta ($0,x)
lda $0
clc
adc #$21
bcc again2
sta $0
clc
lda $1
clc
adc #$1
sta $1
lda $0
again2:
sta $0
dex
cpy #$0
bne again

hlt:
jmp hlt
rts


