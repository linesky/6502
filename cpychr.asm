;http://www.6502asm.com/

jmp _start
_start:
lda #$5
sta $19
lda #$0
sta $1a
lda #>chrs
sta $16
lda #<chrs
sta $15
lda #$2
sta $18
lda #$0
sta $17
jsr chrcpy

hlt:
jmp hlt
rts

;$15,16,address
;$17,18,address2
;$19,value
;$1a,value
;$1b,counter
;$1c,counter
chrcpy:
lda #$8
sta $1c
chrcpy8:
lda #$8
sta $1b
chrcpy2:
ldx #$0
lda ($15,x)
sta ($17,x)
ldx $1b
dex
stx $1b
ldx $15
inx 
cpx #$0
bne chrcpy3
stx $15
ldx $16
inx
stx $16
ldx $15
chrcpy3:
stx $15
ldx $17
inx
cpx #$0
bne chrcpy4
stx $17
ldx $18
inx
stx $18
ldx $17
chrcpy4:
stx $17
ldx $1b
bne chrcpy2
lda $17
clc
adc #$18
bcc chrcpy14
clc
sta $17
ldx $18
inx 
stx $18
lda $17
chrcpy14:
clc
sta $17
ldx $1c
dex
stx $1c
cpx #$0
bne chrcpy8

rts
chrs:
dcb 0,0,0,5,5,0,0,0
dcb 0,0,5,0,0,5,0,0
dcb 0,0,5,0,0,5,0,0
dcb 0,0,5,5,5,5,0,0
dcb 0,0,5,0,0,5,0,0
dcb 0,0,5,0,0,5,0,0
dcb 0,0,5,0,0,5,0,0
dcb 0,0,5,0,0,5,0,0
dcb 5,5,5,5,5,5,5,5
dcb 5,5,5,5,5,5,5,5
dcb 5,5,5,5,5,5,5,5
dcb 5,5,5,5,5,5,5,5
dcb 5,5,5,5,5,5,5,5