;http://www.6502asm.com/
jmp _start
_start:
lda #$5
sta $19
lda #$2
sta $16
lda #$0
sta $15
lda #$3
sta $18
lda #$fa
sta $17
jsr fill
jsr hlt

;$15,16,address
;$17,18,counter
;$19,value
fill:
ldx $17
cpx #$0
bne fill11
ldx $18
cpx #$0
beq fill10
fill11:
ldx #$0
lda $19
sta  ($15,x)
ldx $15
inx
cpx #$0
bne fill2
stx $15
ldx $16
inx
stx $16
ldx $15
fill2:
stx $15
ldx $17
dex
stx $17
cpx #$ff
bne fill22
ldx $18
dex
stx $18
fill22:
ldx $17
cpx #$0
bne fill11
ldx $18
cpx #$0
bne fill11
fill10:
hlt:
jmp hlt