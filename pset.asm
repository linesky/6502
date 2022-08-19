;http://www.6502asm.com/
jmp _start
_start:
lda #$5
sta $19
lda #$1
sta $1b
lda #$0
sta $1a
jsr pset
jsr hlt



;$1a, x
;$1b,y
;$19,color
pset:
lda #$1f
ldx $1a
cmp x
bcs pset12
lda #$1f
ldx $1b
cmp x
bcs pset12
lda #$1
sta $17
lda #$0
sta $18
ldx $1b
ldy #$2
cpx #$0
beq pset3
pset2:
clc
adc #$20
bcc pset5
clc
iny
pset5:
clc
dex
cpx #$0
bne pset2
pset3:
sty $16
clc 
adc $1a
clc
sta $15
jsr fill
pset12:
rts
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
rts
hlt:
jmp hlt