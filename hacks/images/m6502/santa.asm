start:
ldx #0
cs:
lda $2000,x
sta $500,x
dex
bne cs

stx $20

loop:

inc $20
lda $20
and #$7f
tay
and #$1f
tax
lda sinus,x
tax

d:

lda #0
sta $1e0,x
sta $2e0,x
lda $1000,y
sta $200,x
lda $1080,y
sta $220,x
lda $1100,y
sta $240,x
lda $1180,y
sta $260,x
lda $1200,y
sta $280,x
lda $1280,y
sta $2a0,x
lda $1300,y
sta $2c0,x
lda $1380,y
sta $2c0,x
inx
iny
txa
and #$1f
bne d

jmp loop

; 32 ($20) long
sinus:
dcb 0,0,0,0,$20,$20,$20
dcb $40,$40,$60,$80,$a0,$a0,$c0,$c0,$c0
dcb $e0,$e0,$e0,$e0,$c0,$c0,$c0
dcb $a0,$a0,$80,$60,$40,$40,$20,$20,$20

*=$1000
santa:
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,$a,$a,0,0,0,0,0,0
dcb 0,0,0,0,0,$a,$a,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,2,2,2,1,0,0,0,0,$9,$9,$9,$9,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,$a,$a,$a,0,0,0,0,0
dcb 0,0,0,0,0,$a,$a,$a,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,$9,$9,0,0,0,0,0,0,0,0
dcb 0,1,1,2,2,0,$9,$9,$9,$9,$9,$9,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,$a,$a,$a,$a,$a,$a,0,0,0,0
dcb 0,0,0,$a,$a,$a,$a,$a,$a,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,$9,$9,$9,0,0,0,0,0,0
dcb 0,1,2,2,$9,$9,$9,$9,$9,$9,$9,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,$a,$a,$a,$a,$a,$a,$b
dcb $b,$b,$b,$b,$b,$b,$a,$a,$a,$a,$a,$a,$b,$b,$b,$b
dcb $b,$b,$b,$b,$b,$9,$9,$9,$9,$9,$9,$9,$9,$9,$9,$9
dcb $9,2,2,$9,$9,$9,$9,$9,$9,$9,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,$a,$a,$a,$a,$a,$a,$a
dcb $a,0,0,0,0,0,$a,$a,$a,$a,$a,$a,$a,$a,0,0
dcb 0,0,0,0,0,0,0,$9,$9,$9,$9,$9,$9,$9,$9,$9
dcb 2,2,$9,$9,$9,$9,$9,$9,$9,$9,$9,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,$a,$a,$a,$a,$a,$a,0
dcb $a,$a,0,0,0,0,$a,$a,$a,$a,$a,$a,0,$a,$a,0
dcb 0,0,0,0,0,$a,$a,0,0,$9,$a,$9,$9,$9,$9,$9
dcb $9,$9,$a,$9,$9,$9,$9,$9,$9,$9,$9,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,$a,0,$a,0,0,$a,0
dcb 0,$a,0,0,0,0,$a,0,$a,0,0,$a,0,0,$a,0
dcb 0,0,0,0,0,$a,0,0,0,$a,0,0,0,0,0,0
dcb 0,$a,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,$a,$a,0,$a,0,0,$a,$a
dcb 0,$a,$a,0,0,$a,$a,0,$a,0,0,$a,$a,0,$a,$a
dcb 0,0,0,0,0,0,$a,$a,$a,$a,$a,$a,$a,$a,$a,$a
dcb $a,$a,$a,$a,$a,$a,$a,$a,$a,$a,$a,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

*=$2000
dcb 0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0
dcb 0,0,0,0,0,0,0,0,0,0,0,0,$c,1,1,1
dcb 0,0,0,0,0,0,0,0,0,0,0,1,1,1,$a,$a
dcb 0,0,0,0,0,0,0,0,0,0,$c,1,1,1,1,1
dcb 1,1,$c,0,0,0,0,0,0,0,0,0,1,1,0,0
dcb 0,0,0,0,0,0,0,0,$c,1,1,1,1,1,1,1
dcb 1,1,1,1,1,$c,0,0,0,0,0,1,1,1,1,0
dcb 0,0,0,0,0,0,$c,1,1,1,1,1,1,1,1,1
dcb 1,1,1,1,1,1,$c,0,0,0,0,1,1,1,1,0
dcb 0,0,0,0,0,$c,1,1,1,1,1,1,1,1,1,1,1
dcb 1,1,1,1,1,1,1,1,$c,0,0,1,1,0,0
dcb 0,0,$c,1,1,1,1,1,1,1,1,1,1,1,1,1
dcb 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
dcb 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
dcb 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
dcb 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
	