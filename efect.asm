;http://www.6502asm.com/

lda #$2
sta $1
lda #$0
sta $0
ldy #$20
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
dey
cpy #$0
bne again

lda #$2
sta $1
lda #$1f
sta $0
ldy #$20
back:
lda #$5
ldx #$0
sta ($0,x)
lda $0
clc
adc #$1f
bcc back2
sta $0
clc
lda $1
clc
adc #$1
sta $1
lda $0
back2:
sta $0
dey
cpy #$0
bne back




hlt:
jmp hlt
rts


