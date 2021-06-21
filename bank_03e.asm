; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03e", ROMX[$4000], BANK[$3e]

    nop
    nop
    jr c, @+$3a

    ld l, h
    ld l, h
    add $c6
    add $c6
    cp $fe
    add $c6
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    add $c6
    db $fc
    db $fc
    add $c6
    add $c6
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    and $e6
    ret nz

    ret nz

    ret nz

    ret nz

    and $e6
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    call z, $c6cc
    add $c6
    add $cc
    call z, $f8f8
    nop
    nop
    nop
    nop
    cp $fe
    ret nz

    ret nz

    db $fc
    db $fc
    ret nz

    ret nz

    ret nz

    ret nz

    cp $fe
    nop
    nop
    nop
    nop
    cp $fe
    ret nz

    ret nz

    ret nz

    ret nz

    db $fc
    db $fc
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ldh [$e0], a
    adc $ce
    add $c6
    and $e6
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    add $c6
    add $c6
    cp $fe
    add $c6
    add $c6
    add $c6
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    jr @+$1a

    jr jr_03e_40a0

    jr jr_03e_40a2

    jr jr_03e_40a4

    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    add $c6
    add $c6
    xor $ee
    ld a, h
    ld a, h
    jr c, jr_03e_40d4

    db $10
    stop
    nop

jr_03e_40a0:
    nop
    nop

jr_03e_40a2:
    ld a, h
    ld a, h

jr_03e_40a4:
    ldh [$e0], a
    ld a, h
    ld a, h
    ld c, $0e
    adc $ce
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    add d
    add d
    add $c6
    xor $ee
    cp $fe
    sub $d6
    add $c6
    nop
    nop
    nop
    nop
    nop
    nop

jr_03e_40d4:
    db $10
    stop
    nop
    nop
    nop
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add h
    add h
    add h
    add h
    add h
    add h
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    nop
    nop
    ldh a, [$f0]
    ld [$0808], sp
    ld [$7070], sp
    ldh [$e0], a
    sub b
    sub b
    ldh [$e0], a
    adc h
    adc h
    sub d
    sub d
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    inc c
    inc c
    and b
    and b
    and d
    and d
    call z, $a0cc
    and b
    xor h
    xor h
    ld e, $1e
    db $10
    db $10
    inc c
    inc c
    ld [de], a
    ld [de], a
    inc h
    inc h
    ld [hl], $36
    ld [hl], $36
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    inc h
    inc h
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_03e_4160

    jr jr_03e_4162

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub d
    sub d
    nop
    nop

jr_03e_4160:
    nop
    nop

jr_03e_4162:
    nop
    nop
    jr nz, jr_03e_4186

    ld hl, sp-$08
    inc h
    inc h
    ld a, b
    ld a, b
    xor h
    xor h
    ld [hl], h
    ld [hl], h
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld hl, sp-$08
    db $10
    db $10
    ld h, h
    ld h, h
    sbc b
    sbc b
    nop
    nop
    nop
    nop
    jr nz, jr_03e_41a6

jr_03e_4186:
    db $f4
    db $f4
    inc h
    inc h
    ld [hl], b
    ld [hl], b
    xor b
    xor b
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    rrca
    rrca
    db $10
    db $10
    daa
    daa
    cpl
    cpl
    inc l
    inc l
    jr z, jr_03e_41c8

    nop
    nop
    nop
    nop
    rst $38
    rst $38

jr_03e_41a6:
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    db $10
    db $10
    ret z

    ret z

    add sp, -$18
    ld l, b
    ld l, b
    jr z, jr_03e_41e8

    jr z, jr_03e_41ea

    jr z, jr_03e_41ec

    jr z, jr_03e_41ee

    jr z, jr_03e_41f0

jr_03e_41c8:
    jr z, jr_03e_41f2

    jr z, jr_03e_41f4

    jr z, jr_03e_41f6

    jr z, jr_03e_41f8

    jr z, jr_03e_41fa

    jr z, jr_03e_41fc

    daa
    daa
    jr nc, jr_03e_4208

    rra
    rra
    rrca
    rrca
    nop
    nop
    nop
    nop
    jr z, jr_03e_420a

    jr z, jr_03e_420c

    ret z

    ret z

    jr jr_03e_4200

jr_03e_41e8:
    ldh a, [$f0]

jr_03e_41ea:
    ldh [$e0], a

jr_03e_41ec:
    nop
    nop

jr_03e_41ee:
    nop
    nop

jr_03e_41f0:
    nop
    nop

jr_03e_41f2:
    nop
    nop

jr_03e_41f4:
    nop
    nop

jr_03e_41f6:
    nop
    nop

jr_03e_41f8:
    nop
    nop

jr_03e_41fa:
    nop
    nop

jr_03e_41fc:
    nop
    nop
    nop
    nop

jr_03e_4200:
    db $10
    jr z, jr_03e_422b

    ld b, h
    ld a, h
    add d
    add d
    nop

jr_03e_4208:
    ld hl, sp-$7c

jr_03e_420a:
    add h
    db $fc

jr_03e_420c:
    add d
    add d
    db $fc
    nop
    inc a
    ld b, d
    add b
    add b
    add b
    ld b, d
    inc a
    nop
    ld hl, sp-$7c
    add d
    add d
    add d
    add h
    ld hl, sp+$00
    cp $80
    add b
    db $fc
    add b
    add b
    cp $00
    cp $80
    add b

jr_03e_422b:
    db $fc
    add b
    add b
    add b
    nop
    inc a
    ld b, d
    add b
    sbc [hl]
    add d
    ld b, d
    inc a
    nop
    add d
    add d
    add d
    cp $82
    add d
    add d
    nop
    ld a, h
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, h
    nop
    ld a, [hl]
    ld [$8808], sp
    adc b
    adc b
    ld [hl], b
    nop
    add h
    adc b
    sub b
    or b
    ret z

    add h
    add d
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    cp $00
    add d
    add $aa
    sub d
    add d
    add d
    add d
    nop
    add d
    jp nz, $92a2

    adc d
    add [hl]
    add d
    nop
    jr c, jr_03e_42b6

    add d
    add d
    add d
    ld b, h
    jr c, jr_03e_4278

jr_03e_4278:
    db $fc
    add d
    add d
    db $fc
    add b
    add b
    add b
    nop
    jr c, jr_03e_42c6

    add d
    add d
    adc d
    ld b, h
    ld a, [hl-]
    nop
    db $fc
    add d
    add d
    db $fc
    adc b
    add h
    add d
    nop
    ld a, b
    add h
    add b
    ld a, h
    ld [bc], a
    add d
    ld a, h
    nop
    cp $10
    db $10
    db $10
    db $10
    db $10
    stop
    add d
    add d
    add d
    add d
    add d
    ld b, d
    ld a, $00
    add d
    add d
    ld b, h
    ld b, h
    jr z, jr_03e_42d6

    stop
    add d
    add d
    sub d
    xor d
    add $c6

jr_03e_42b6:
    add d
    nop
    add $44
    jr z, @+$12

    jr z, jr_03e_4302

    add $00
    add d
    ld b, h
    jr z, jr_03e_42d4

    db $10
    db $10

jr_03e_42c6:
    stop
    cp $04
    ld [$2010], sp
    ld b, b
    cp $00
    inc c
    db $10
    jr nz, jr_03e_42f4

jr_03e_42d4:
    jr nz, @+$12

jr_03e_42d6:
    inc c
    nop
    ld h, b
    db $10
    ld [$0808], sp
    db $10
    ld h, b
    nop
    nop
    jr jr_03e_42fb

    nop
    nop
    jr jr_03e_42ff

    nop
    nop
    jr @+$1a

    nop
    jr jr_03e_4306

    ld [$1c10], sp
    db $10
    db $10
    db $10

jr_03e_42f4:
    db $10
    db $10
    inc e
    nop
    ld [hl], b
    db $10
    db $10

jr_03e_42fb:
    db $10
    db $10
    db $10
    ld [hl], b

jr_03e_42ff:
    nop
    nop
    nop

jr_03e_4302:
    jr c, jr_03e_4308

    inc a
    ld b, h

jr_03e_4306:
    ld a, $00

jr_03e_4308:
    ld b, b
    ld b, b
    ld b, b
    ld a, h
    ld b, d
    ld b, d
    ld a, h
    nop
    nop
    nop
    ld a, $40
    ld b, b
    ld b, b
    ld a, $00
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, $42
    ld b, d
    ld a, $00
    nop
    nop
    inc a
    ld b, d
    ld a, [hl]
    ld b, b
    ld a, $00
    inc c
    ld [de], a
    db $10
    ld a, [hl]
    db $10
    db $10
    stop
    nop
    nop
    ld a, $42
    ld b, d
    ld a, $02
    ld a, h
    ld b, b
    ld b, b
    ld b, b
    ld a, b
    ld b, h
    ld b, h
    ld b, h
    nop
    nop
    stop
    db $10
    db $10
    db $10
    stop
    nop
    ld [$0800], sp
    ld [$0808], sp
    jr nc, jr_03e_4391

    ld b, b
    ld b, [hl]
    ld e, b
    ld h, b
    ld e, b
    ld b, [hl]
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    db $ec
    sub d
    sub d
    sub d
    sub d
    nop
    nop
    nop
    inc a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    inc a
    ld b, d
    ld b, d
    ld b, d
    inc a
    nop
    nop
    nop
    ld a, h
    ld b, d
    ld b, d
    ld a, h
    ld b, b
    ld b, b
    nop
    nop
    ld a, $42
    ld b, d
    ld a, $02
    ld [bc], a
    nop
    nop
    ld c, [hl]
    ld d, b
    ld h, b
    ld b, b
    ld b, b
    nop
    nop

jr_03e_4391:
    nop
    inc a
    ld b, b

jr_03e_4394:
    inc a
    ld [bc], a
    ld a, h
    nop
    nop
    db $10
    ld a, h
    db $10
    db $10
    db $10
    inc c
    nop
    nop
    nop
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    inc a
    nop
    nop
    nop
    ld b, h
    ld b, h
    ld b, h
    jr z, jr_03e_43bf

    nop
    nop
    nop
    add d
    sub d
    sub d
    xor d
    ld b, h
    nop
    nop
    nop
    call nz, $1028
    jr z, jr_03e_4405

jr_03e_43bf:
    nop
    nop
    nop
    ld b, h
    ld b, h
    ld b, h
    inc a
    inc b
    ld a, b
    nop
    nop
    ld a, [hl]
    inc b
    jr jr_03e_43ee

    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03e_43ee:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_03e_4412

    jr z, jr_03e_4448

    ld a, h

jr_03e_4405:
    add d
    add d
    nop
    jr z, jr_03e_4442

    ld b, h
    add d
    add d
    ld b, h
    jr c, jr_03e_4410

jr_03e_4410:
    jr z, jr_03e_4394

jr_03e_4412:
    add d
    add d
    add d
    ld b, d
    ld a, $00
    jr z, jr_03e_441a

jr_03e_441a:
    jr c, jr_03e_4420

    inc a
    ld b, h
    ld a, $00

jr_03e_4420:
    jr z, jr_03e_4422

jr_03e_4422:
    inc a
    ld b, d
    ld b, d
    ld b, d
    inc a
    nop
    jr z, jr_03e_442a

jr_03e_442a:
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03e_4442:
    nop
    nop
    nop
    nop
    nop
    nop

jr_03e_4448:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp nz, $8242

    ld a, $42
    ld b, d
    ld a, $00
    ret z

    ld c, b
    adc b
    ld [$0808], sp
    ld [$c000], sp
    ld b, b
    sub [hl]
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    nop
    ret nz

    ld b, b
    sub e
    inc d
    jr jr_03e_44ae

    stop
    ret nz

    ld b, b
    sbc [hl]
    jr nz, jr_03e_44c3

    ld bc, $003e
    ret nz

    ld c, b
    cp [hl]
    ld [$0808], sp

jr_03e_44ae:
    ld b, $00
    ret nz

    ld b, b
    and d
    ld [hl+], a
    ld [hl+], a
    inc d
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03e_44c3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    jr nc, jr_03e_4579

    cp $7e
    jr nc, jr_03e_450f

    nop
    jr jr_03e_451a

    ld [$0010], sp
    nop
    nop
    nop
    ldh [$90], a
    ldh [$8a], a
    adc d
    inc c
    ld a, [bc]

jr_03e_450f:
    ld a, [bc]
    ret c

    xor b

jr_03e_4512:
    adc b
    adc b
    ld [de], a
    ld a, [de]
    ld d, $12
    nop
    nop

jr_03e_451a:
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    rst $20
    adc $18
    nop
    jr @+$1a

    nop
    jr jr_03e_4576

    inc a
    jr jr_03e_4555

    nop
    jr jr_03e_4540

jr_03e_4540:
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_03e_4577

    nop
    jr nc, @+$6a

    ld l, b
    ld [hl-], a
    ld e, d
    call z, $007a
    jr nc, jr_03e_4512

    inc a
    ld b, d
    ld a, [hl]

jr_03e_4555:
    ld b, b
    ld a, $00
    db $10
    jr @-$02

    cp $fc
    jr jr_03e_456f

    nop
    ld h, b
    ld d, b
    ld c, b
    ld b, h
    ld c, b
    ld d, b
    ld h, b
    nop
    ld h, b
    ld [hl], b
    ld a, b
    ld a, h
    ld a, b
    ld [hl], b
    ld h, b

jr_03e_456f:
    nop
    nop
    cp $fe
    ld a, h
    jr c, @+$12

jr_03e_4576:
    nop

jr_03e_4577:
    nop
    db $10

jr_03e_4579:
    jr c, jr_03e_45cf

    sub d
    jr c, jr_03e_45c2

    ld b, h
    jr c, jr_03e_45bd

    inc h
    inc a
    jr nz, @+$72

    jr nz, jr_03e_45f7

    jr nz, jr_03e_4589

jr_03e_4589:
    nop
    ld b, h
    jr z, jr_03e_459d

    jr z, jr_03e_45d3

    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_03e_45c7

    nop
    ld [bc], a
    inc b
    ld [$2010], sp

jr_03e_459d:
    ld b, b
    add b
    nop
    nop
    nop
    nop
    nop
    jr nc, @+$32

    db $10
    jr nz, jr_03e_45e1

    ld b, h
    ld b, h
    jr c, jr_03e_45bd

    ld a, h
    db $10
    stop
    jr c, jr_03e_45ff

    add $c6
    ld h, h
    jr c, jr_03e_45b8

jr_03e_45b8:
    nop
    jr @+$3a

    jr @+$1a

jr_03e_45bd:
    jr jr_03e_463d

    nop
    nop
    ld a, h

jr_03e_45c2:
    add $0e
    ld a, h
    ldh [$fe], a

jr_03e_45c7:
    nop
    nop
    ld a, [hl]
    inc c
    jr c, jr_03e_45d3

    add $7c

jr_03e_45cf:
    nop
    nop
    inc e
    inc a

jr_03e_45d3:
    ld l, h
    call z, $0cfe
    nop
    nop
    db $fc
    add b
    db $fc
    ld b, $c6
    ld a, h
    nop
    nop

jr_03e_45e1:
    ld a, h
    ret nz

    db $fc
    add $c6
    ld a, h
    nop
    nop
    cp $c6
    inc c
    jr jr_03e_461e

    jr nc, jr_03e_45f0

jr_03e_45f0:
    nop
    ld a, h
    add $7c
    add $c6
    ld a, h

jr_03e_45f7:
    nop
    nop
    ld a, h
    add $c6
    ld a, [hl]
    ld b, $7c

jr_03e_45ff:
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    jp z, $caff

    rst $38
    jp nz, $caff

    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    dec de
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    ld a, e
    rst $38
    rst $38

jr_03e_461e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    nop
    rst $38

jr_03e_463d:
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ret nz

    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ldh [rP1], a
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    db $fc
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    cp $00
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    ld e, $1e
    jr z, jr_03e_46fa

    jr z, jr_03e_46fc

    jr z, jr_03e_46fe

    jr z, jr_03e_4700

    jr z, jr_03e_4702

    jr z, jr_03e_4704

    jr z, jr_03e_4706

    jr z, jr_03e_4708

    nop
    nop
    nop
    nop
    jr jr_03e_46fe

    ld e, b
    ld e, b
    jr jr_03e_4702

    ld e, b
    ld e, b
    ld e, $1e
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    ccf
    ccf
    rst $38
    rst $38

jr_03e_46fa:
    nop
    nop

jr_03e_46fc:
    nop
    nop

jr_03e_46fe:
    nop
    nop

jr_03e_4700:
    ld a, [hl+]
    ld a, [hl+]

jr_03e_4702:
    ld a, [hl+]
    ld a, [hl+]

jr_03e_4704:
    jr nz, jr_03e_4726

jr_03e_4706:
    inc a
    inc a

jr_03e_4708:
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld a, $3e
    ld b, $06
    ld c, $0e
    ld e, $1e
    ld a, $3e
    ld e, $1e
    ld c, $0e
    ld b, $06
    nop
    nop
    ld a, $3e
    ld [hl+], a
    ld [hl+], a
    ld l, $2e

jr_03e_4726:
    jr z, jr_03e_4750

    jr z, jr_03e_4752

    jr c, jr_03e_4764

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, h
    ld e, h
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld e, h
    ld e, h
    nop
    nop
    nop
    nop
    nop
    nop
    sub b
    sub b
    rst $10
    rst $10
    push af
    push af
    or l
    or l
    sub a
    sub a
    nop
    nop

jr_03e_4750:
    nop
    nop

jr_03e_4752:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub d
    sub d
    nop
    nop
    nop
    nop
    nop
    nop

jr_03e_4764:
    nop
    nop
    cp $fe
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    db $fc
    db $fc
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    db $10
    db $10
    daa
    daa
    cpl
    cpl
    inc l
    inc l
    jr z, jr_03e_47c8

    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    db $10
    db $10
    ret z

    ret z

    add sp, -$18
    ld l, b
    ld l, b
    jr z, jr_03e_47e8

    jr z, jr_03e_47ea

    jr z, jr_03e_47ec

    jr z, jr_03e_47ee

    jr z, jr_03e_47f0

jr_03e_47c8:
    jr z, jr_03e_47f2

    jr z, jr_03e_47f4

    jr z, jr_03e_47f6

    jr z, jr_03e_47f8

    jr z, jr_03e_47fa

    jr z, jr_03e_47fc

    daa
    daa
    jr nc, jr_03e_4808

    rra
    rra
    rrca
    rrca
    nop
    nop
    nop
    nop
    jr z, jr_03e_480a

    jr z, jr_03e_480c

    ret z

    ret z

    jr jr_03e_4800

jr_03e_47e8:
    ldh a, [$f0]

jr_03e_47ea:
    ldh [$e0], a

jr_03e_47ec:
    nop
    nop

jr_03e_47ee:
    nop
    nop

jr_03e_47f0:
    nop
    nop

jr_03e_47f2:
    nop
    nop

jr_03e_47f4:
    nop
    nop

jr_03e_47f6:
    nop
    nop

jr_03e_47f8:
    nop
    nop

jr_03e_47fa:
    nop
    nop

jr_03e_47fc:
    nop
    nop
    nop
    nop

jr_03e_4800:
    nop
    nop
    nop
    rrca
    db $10
    daa
    cpl
    inc l

jr_03e_4808:
    nop
    nop

jr_03e_480a:
    nop
    rst $38

jr_03e_480c:
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ldh [rNR10], a
    ret z

    add sp, $68
    jr z, jr_03e_4842

    jr z, @+$2a

    jr z, jr_03e_4846

jr_03e_481e:
    jr z, jr_03e_4848

    jr z, jr_03e_484a

    jr z, jr_03e_484b

    jr nc, jr_03e_4845

    rrca
    nop
    jr z, jr_03e_4852

    jr z, jr_03e_47f4

    jr jr_03e_481e

    ldh [rP1], a
    nop
    nop
    inc a
    ld h, a
    ld b, d
    ld b, d
    ld h, a
    inc a
    nop
    nop
    nop
    jp $3c3c


    jp RST_00


    nop

jr_03e_4842:
    inc a
    and $42

jr_03e_4845:
    ld b, d

jr_03e_4846:
    and $3c

jr_03e_4848:
    inc h
    inc h

jr_03e_484a:
    inc h

jr_03e_484b:
    jr @+$1a

    jr jr_03e_4867

    inc h
    inc h
    inc h

jr_03e_4852:
    inc a
    ld h, a
    ld b, d
    ld b, d
    ld h, a
    inc a
    inc h
    inc h
    inc a
    and $42
    ld b, d
    and $3c
    nop
    nop
    nop
    rra
    jr nz, @+$31

    cpl

jr_03e_4867:
    inc l
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld hl, sp+$0c
    db $ec
    db $ec
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    cpl
    jr nz, jr_03e_48a5

    rrca
    nop
    inc l
    inc l
    inc l
    db $ec
    inc c
    db $fc
    ld hl, sp+$00
    nop
    nop
    nop
    rra
    jr nz, jr_03e_48c5

    cpl
    inc l
    nop
    nop
    nop
    rst $38
    inc sp
    ld h, [hl]
    rst $38
    nop
    nop
    nop
    nop
    ld hl, sp+$0c

jr_03e_48a5:
    db $ec
    db $ec
    inc l
    inc h
    inc [hl]
    inc a
    inc l
    inc h
    inc [hl]
    inc a
    inc l
    inc l
    inc l
    inc l
    cpl
    jr nz, jr_03e_48f5

    rra
    nop
    inc l
    inc l
    inc l
    db $ec
    inc c
    db $fc
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rrca

jr_03e_48c5:
    rra
    add hl, de
    jr jr_03e_48c9

jr_03e_48c9:
    nop
    nop
    nop
    inc a
    rst $38
    jp RST_00


    nop
    nop
    nop
    ldh a, [$f8]
    jr jr_03e_48f0

    jr jr_03e_48f2

    jr jr_03e_48f4

    jr jr_03e_48f6

    jr @+$1a

    jr jr_03e_48fa

    jr jr_03e_48fc

    rra
    rrca
    nop
    nop
    jr jr_03e_4902

    jr jr_03e_4904

    ld hl, sp-$10
    nop
    nop

jr_03e_48f0:
    nop
    nop

jr_03e_48f2:
    nop
    inc a

jr_03e_48f4:
    daa

jr_03e_48f5:
    daa

jr_03e_48f6:
    inc a
    jr jr_03e_48f9

jr_03e_48f9:
    nop

jr_03e_48fa:
    nop
    nop

jr_03e_48fc:
    rst $38
    rst $38
    nop
    nop
    nop
    nop

jr_03e_4902:
    nop
    inc a

jr_03e_4904:
    db $e4
    db $e4
    inc a
    jr jr_03e_4921

    jr jr_03e_4923

    jr jr_03e_4925

    jr jr_03e_4927

    jr jr_03e_4929

    jr jr_03e_492b

    inc a
    daa
    daa
    inc a
    nop
    jr jr_03e_4932

    jr @+$3e

    db $e4
    db $e4
    inc a
    nop
    nop

jr_03e_4921:
    nop
    nop

jr_03e_4923:
    nop
    rra

jr_03e_4925:
    ld a, $3f

jr_03e_4927:
    inc a
    nop

jr_03e_4929:
    nop
    nop

jr_03e_492b:
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop

jr_03e_4932:
    nop
    nop
    ldh a, [$f8]
    ld hl, sp+$78
    jr z, jr_03e_4962

    jr z, jr_03e_4964

    jr z, jr_03e_4966

    jr z, jr_03e_4968

    jr z, jr_03e_496a

    jr c, jr_03e_4980

    ccf
    ld a, $1f
    nop
    jr z, jr_03e_4972

    jr c, jr_03e_49c4

    ld hl, sp-$08
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rra
    inc e
    jr jr_03e_4959

jr_03e_4959:
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop

jr_03e_4962:
    nop
    nop

jr_03e_4964:
    ldh a, [$f8]

jr_03e_4966:
    jr c, jr_03e_4980

jr_03e_4968:
    jr jr_03e_4982

jr_03e_496a:
    jr jr_03e_4984

    jr jr_03e_4986

    jr jr_03e_4988

    jr jr_03e_498a

jr_03e_4972:
    jr jr_03e_4990

    rra
    rrca
    nop
    nop
    jr jr_03e_4992

    jr jr_03e_49b4

    ld hl, sp-$10
    nop
    nop

jr_03e_4980:
    nop
    nop

jr_03e_4982:
    nop
    rrca

jr_03e_4984:
    rra
    ccf

jr_03e_4986:
    ccf
    inc a

jr_03e_4988:
    nop
    nop

jr_03e_498a:
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop

jr_03e_4990:
    nop
    nop

jr_03e_4992:
    nop
    ldh a, [$f8]
    db $fc
    db $fc
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    ccf
    ccf
    rra
    rrca
    nop
    inc a
    inc a
    inc a
    db $fc
    db $fc
    ld hl, sp-$10
    nop
    ret nz

    ret nz

    ret nz

    ret nz

jr_03e_49b4:
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    db $10
    db $10
    jr nc, jr_03e_49f4

jr_03e_49c4:
    ld [hl], c
    ld [hl], c
    pop af
    pop af
    pop af
    pop af
    ld [hl], d
    ld [hl], d
    jr nc, jr_03e_49fe

    db $10
    db $10
    jr c, jr_03e_4a0a

    jr z, jr_03e_49fc

    cp b
    cp b
    ld b, b
    ld b, b
    ld b, e
    ld b, e
    jr nz, jr_03e_49fc

    db $10
    stop
    nop
    ld [bc], a
    ld [bc], a
    ld a, [de]
    ld a, [de]
    nop
    nop
    add hl, de
    add hl, de
    add c
    add c
    ld [bc], a
    ld [bc], a
    inc e
    inc e
    nop
    nop
    adc b
    adc b
    adc h
    adc h

jr_03e_49f4:
    ld c, $0e
    rrca
    rrca
    rrca
    rrca
    ld c, $0e

jr_03e_49fc:
    inc c
    inc c

jr_03e_49fe:
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03e_4a0a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    rra
    rra
    ldh a, [$f0]
    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    inc a
    ld b, b
    ld a, b
    ld b, b
    ld a, h
    ld b, b
    ld a, h
    ld b, b
    ld a, [hl]
    ld b, b
    ld a, [hl]
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld a, a
    ld a, a
    inc b
    inc a
    inc b
    ld a, h
    inc b
    ld a, h
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    add $c6
    add $c6
    add $c6
    db $fc
    db $fc
    ret nz

    ret nz

    nop
    nop
    ld b, b
    ld b, b
    ldh [$e0], a
    ld b, d
    ld b, d
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    db $10
    db $10
    jr c, jr_03e_4ad6

    db $10
    stop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    nop
    nop
    nop
    ldh a, [$f8]
    db $fc
    cp $fe
    cp $1e
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    nop
    nop
    jr jr_03e_4b2c

    jr jr_03e_4b2e

jr_03e_4ad6:
    ld e, $00
    nop
    nop
    nop
    inc bc
    rrca
    ccf
    rst $38
    nop
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld a, b
    ld a, b
    ld a, b
    ld a, h
    ld a, [hl]
    ccf
    rra
    nop
    nop
    nop
    nop
    nop
    sub d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld e, $1e
    ld e, $fe
    cp $fc
    ld hl, sp+$00
    nop
    nop
    nop
    ret nz

    ldh a, [$fc]
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc bc
    nop
    nop

jr_03e_4b2c:
    rst $38
    rst $38

jr_03e_4b2e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rlca
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rrca
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    rra
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ccf
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld a, a
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld a, $3e
    ld a, [hl]
    ld a, [hl]
    db $fc
    db $fc
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    call c, $fcdc
    db $fc
    add h
    add h
    add h
    add h
    ld a, b
    ld a, b
    nop
    nop
    ld [c], a
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    db $fc
    rrca
    db $fc
    rra
    ldh a, [$3f]
    ldh a, [$7f]
    ret nz

    rst $38
    ret nz

    sbc c
    rst $38
    rst $38
    ld h, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    db $fc
    ret nz

    db $fd
    ldh [$31], a
    ldh a, [$37]
    ld hl, sp+$0f
    db $fc
    rrca
    cp $03
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ldh a, [rIF]
    ldh a, [rIF]
    ret nz

    ccf
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    ld h, [hl]
    sbc c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    rrca
    ldh a, [rIF]
    ldh a, [$03]
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    ret nz

    ldh a, [$cf]
    ldh a, [$cf]
    di
    rst $08
    di
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop

jr_03e_4c1b:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld a, h
    nop
    db $fd
    nop
    pop af
    ld h, [hl]
    rst $30
    ld h, [hl]
    rst $20
    nop
    rst $18
    nop
    rra
    nop
    ld a, a
    nop
    ld a, h
    nop
    db $fd
    nop
    pop af
    jr @+$01

    jr jr_03e_4c1b

    nop
    rst $18
    nop
    rra
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    add c
    jp $dbbd


    and l
    db $db
    and l
    jp $ffbd


    add c
    rst $38
    rst $38
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    and $19
    rst $38
    nop
    nop
    jr jr_03e_4c7e

    inc l
    inc l
    ld e, [hl]
    ld e, [hl]
    ld a, [hl]
    ld a, [hl]
    inc a
    inc a
    jr jr_03e_4c88

    nop
    nop
    nop
    rst $38
    jr @+$01

    inc l
    rst $28
    ld e, [hl]
    rst $18
    ld a, [hl]
    rst $38
    inc a
    rst $38

jr_03e_4c7e:
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    jr @+$01

jr_03e_4c86:
    inc l
    rst $28

jr_03e_4c88:
    ld e, [hl]
    rst $18
    ld a, [hl]
    rst $38
    inc a
    rst $38
    jr @+$01

    nop
    rst $38
    rst $38
    nop
    rst $38
    jr jr_03e_4c86

    inc l
    rst $18
    ld e, [hl]
    rst $38
    ld a, [hl]
    rst $38
    inc a
    rst $38
    jr @+$01

    nop
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    cp $03
    rst $38
    ld bc, $01ff
    cp $03
    cp $03
    rst $38
    ld bc, $ff00
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $00
    rst $38
    di
    rst $08
    di
    rst $08
    di
    rst $08
    di
    rst $08
    di
    rst $08
    di
    rst $08
    di
    rst $08
    di
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    di
    rrca
    inc de
    rst $28
    inc sp

jr_03e_4d1d:
    rst $08
    di
    rst $08
    di
    rst $08
    nop
    ld a, h
    nop
    db $fd
    nop
    pop af
    nop
    rst $30
    nop
    rst $00
    nop
    rst $18
    nop
    rra
    nop

jr_03e_4d31:
    ld a, a
    nop

jr_03e_4d33:
    ld a, h
    jr jr_03e_4d33

    jr jr_03e_4d31

    nop
    rst $30
    nop
    rst $00
    jr jr_03e_4d1d

    jr jr_03e_4d5f

    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    add b
    nop

jr_03e_4d5f:
    add b
    nop
    add b
    nop
    ccf
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ret nz

    ld a, a
    ret nz

    ccf
    ldh a, [$1f]
    ldh a, [rIF]
    call z, $dc07
    inc bc
    rra
    ld bc, $ff7f
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, [hl]
    sbc c
    rst $38
    rst $38
    inc bc
    cp $03
    db $fc
    rrca
    ld hl, sp+$0f
    ldh a, [$3f]
    ldh [$3f], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ret nz

    ccf
    ldh a, [rIF]
    ldh a, [rIF]
    db $fc
    inc bc
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, [hl]
    sbc c
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    rrca
    ldh a, [rIF]
    ldh a, [$3f]
    ret nz

    ccf
    ret nz

    di
    rst $08
    di
    rst $08
    rst $30
    ret z

    rst $38
    ret nz

    ldh a, [$cf]
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $08
    di
    rst $08
    di
    rrca
    di
    rrca
    inc bc
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld e, $1e
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, h
    ld c, h
    jr c, jr_03e_4e68

    nop
    nop
    nop
    nop
    ld [hl], d
    ld [hl], d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc e
    sbc e
    sbc d
    sbc d
    ld [hl], d
    ld [hl], d
    nop
    nop
    nop
    nop
    ld l, a
    ld l, a
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    db $e3
    db $e3
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    nop
    nop
    nop
    nop
    call c, $26dc
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $1c
    inc e
    nop
    nop
    nop
    nop
    ld [hl], $36
    ld [hl], $36

jr_03e_4e68:
    inc a
    inc a
    jr c, jr_03e_4ea4

    inc a
    inc a
    ld [hl], $36
    nop
    nop
    nop
    nop
    ld [hl], d
    ld [hl], d
    ld a, [$9bfa]
    sbc e
    sbc d
    sbc d
    ld a, [$9afa]
    sbc d
    nop
    nop
    nop
    nop
    ld l, a
    ld l, a
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    db $e3
    db $e3
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    nop
    nop
    nop
    nop
    call c, $26dc
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $1c
    inc e
    nop
    nop
    rst $38
    nop

jr_03e_4ea4:
    nop
    nop
    ld a, h
    ld a, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld a, h
    ld a, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
    ld b, h
    ld b, h
    ld a, h
    ld a, h
    ld b, h
    ld b, h
    ld a, h
    ld a, h
    ld b, h
    ld b, h
    ld c, h
    ld c, h
    nop
    nop
    db $10
    db $10
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    db $10
    db $10
    jr z, jr_03e_4efa

    ld b, h
    ld b, h
    nop
    nop
    db $10
    db $10
    ld [hl], h
    ld [hl], h
    jr @+$1a

    jr nc, jr_03e_4f0e

    jr c, jr_03e_4f18

    ld d, h
    ld d, h
    db $10
    stop
    nop
    db $10
    db $10
    ld a, h
    ld a, h
    db $10
    db $10
    jr c, jr_03e_4f26

    ld d, h
    ld d, h
    ld d, h
    ld d, h
    db $10
    stop
    nop
    jr c, @+$3a

    ld b, h
    ld b, h

jr_03e_4efa:
    cp d
    cp d
    db $10
    db $10
    ld a, h
    ld a, h
    ld d, h
    ld d, h
    ld a, h
    ld a, h
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    ld a, h
    ld a, h
    db $10
    db $10

jr_03e_4f0e:
    db $10
    db $10
    db $10
    db $10
    ld a, h
    ld a, h
    rst $38
    rst $38
    rst $30
    rst $30

jr_03e_4f18:
    rst $20
    rst $20
    pop bc
    pop bc
    di
    di
    rst $30
    rst $30
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38

jr_03e_4f26:
    rst $30
    rst $30
    jp $dbc3


    db $db
    db $db
    db $db
    jp $c3c3


    jp $ffff


    nop
    jr c, jr_03e_4fa3

    add $c6
    cp $c6
    add $00
    db $fc
    add $c6
    db $fc
    add $c6
    db $fc
    nop
    ld a, h
    and $c0
    ret nz

    ret nz

    and $7c
    nop
    ld hl, sp-$34
    add $c6
    add $cc
    ld hl, sp+$00
    cp $c0
    ret nz

    db $fc
    ret nz

    ret nz

    cp $00
    cp $c0
    ret nz

    db $fc
    ret nz

    ret nz

    ret nz

    nop
    ld a, [hl]
    ldh [$c0], a
    adc $c6
    and $7e
    nop
    add $c6
    add $fe
    add $c6
    add $00
    ld a, [hl]
    jr jr_03e_4f90

    jr jr_03e_4f92

    jr @+$80

    nop
    ld b, $06
    ld b, $06
    add $c6
    ld a, h
    nop
    add $c6
    call z, $ccf8
    add $c6
    nop
    ld h, b
    ld h, b
    ld h, b

jr_03e_4f90:
    ld h, b
    ld h, b

jr_03e_4f92:
    ld h, b
    ld a, [hl]
    nop
    add d
    add $ee
    cp $d6
    add $c6
    nop
    add $e6
    or $fe
    sbc $ce

jr_03e_4fa3:
    add $00
    ld a, h
    add $c6
    add $c6
    add $7c
    nop
    db $fc
    add $c6
    add $fc
    ret nz

    ret nz

    nop
    ld a, h
    add $c6
    add $c6
    call c, $0076
    db $fc
    add $c6
    adc $f8
    call c, $00ce
    ld a, b
    call z, Call_03e_7cc0
    ld b, $c6
    ld a, h
    nop
    ld a, [hl]
    jr @+$1a

    jr @+$1a

    jr @+$1a

    nop
    add $c6
    add $c6
    add $c6
    ld a, h
    nop
    add $c6
    add $ee
    ld a, h
    jr c, jr_03e_4ff4

    nop
    add $c6
    sub $fe
    cp $ee
    add $00
    add $c6
    ld l, h
    jr c, jr_03e_505e

    add $c6

jr_03e_4ff4:
    nop
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    jr jr_03e_5013

    jr jr_03e_4ffd

jr_03e_4ffd:
    cp $0e
    inc e
    jr c, jr_03e_5072

    ldh [$fe], a
    ld a, h
    add $c6
    ld e, $18
    nop
    jr jr_03e_5024

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03e_5013:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03e_5024:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    ld b, $7e
    ld h, [hl]
    ld a, $00
    nop
    ld h, b
    ld h, b
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld a, h
    nop
    nop
    nop
    inc a
    ld h, [hl]
    ld h, b
    ld h, [hl]
    inc a
    nop
    nop
    ld b, $06
    ld a, $66
    ld h, [hl]
    ld a, $00
    nop
    nop
    inc a
    ld h, [hl]
    ld a, [hl]
    ld h, b
    inc a
    nop
    nop

jr_03e_505e:
    inc e
    jr nc, jr_03e_50dd

    jr nc, jr_03e_5093

    jr nc, jr_03e_5065

jr_03e_5065:
    nop
    ld a, $66
    ld h, [hl]
    ld a, $06
    ld a, h
    nop
    nop
    ld h, b
    ld h, b
    ld a, h
    ld h, [hl]

jr_03e_5072:
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    jr jr_03e_5078

jr_03e_5078:
    jr @+$1a

    jr @+$1a

    nop
    nop
    inc c
    nop
    inc c
    inc c
    call z, $0078
    nop
    ld h, b
    ld h, [hl]
    ld l, h
    ld a, b
    ld l, h
    ld h, [hl]
    nop
    nop
    ld [hl], b
    jr nc, jr_03e_50c1

    jr nc, jr_03e_50c3

jr_03e_5093:
    jr nc, jr_03e_5095

jr_03e_5095:
    nop
    nop
    db $fc
    sub $d6
    sub $c6
    nop
    nop
    nop
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    nop
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    nop
    nop
    nop
    inc a
    ld h, [hl]
    ld h, [hl]
    ld a, h
    ld h, b
    nop
    nop
    nop
    inc a
    ld h, [hl]
    ld h, [hl]
    ld a, $06
    nop
    nop
    nop
    ld [hl], $38

jr_03e_50c1:
    jr nc, jr_03e_50f3

jr_03e_50c3:
    jr nc, jr_03e_50c5

jr_03e_50c5:
    nop
    nop
    inc a
    ld h, b
    ld a, h
    inc c
    ld a, b
    nop
    nop
    jr nc, jr_03e_5148

    jr nc, @+$32

    jr nc, jr_03e_510c

    nop
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, $00

jr_03e_50dd:
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld l, h
    jr c, jr_03e_50e5

jr_03e_50e5:
    nop
    nop
    add $d6
    sub $d6
    db $ec
    nop
    nop
    nop
    add $6c
    jr c, jr_03e_515f

jr_03e_50f3:
    add $00
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld a, $06
    inc a
    nop
    nop
    nop
    ld a, [hl]
    inc c
    jr jr_03e_5133

    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03e_510c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03e_5133:
    nop
    nop
    db $10
    jr c, jr_03e_517c

    ld b, h
    jr c, @+$2a

    ld l, h

jr_03e_513c:
    nop
    jr c, jr_03e_5183

    ld d, h
    ld b, h
    jr c, jr_03e_5187

    jr c, jr_03e_5145

jr_03e_5145:
    jr c, jr_03e_519b

    cp d

jr_03e_5148:
    xor [hl]
    cp b
    ld b, h
    jr c, jr_03e_514d

jr_03e_514d:
    inc e
    ld [hl-], a
    ld c, d
    ld c, d
    ld [hl-], a
    ld [bc], a
    inc e
    nop
    ld c, $38
    ld b, h
    ld d, [hl]
    ld b, h
    jr c, @+$10

    nop
    ld [hl], b
    adc [hl]

jr_03e_515f:
    xor d
    adc h
    ld [hl], b
    jr nz, jr_03e_513c

    nop
    jr z, @+$3a

    ld b, h
    ld b, h
    jr c, jr_03e_51cb

    inc e
    nop
    ld b, h
    cp d
    add $d6
    add $ba
    ld b, h
    nop
    db $10
    jr c, jr_03e_51bc

    ld d, h
    ld b, h
    jr c, @+$12

jr_03e_517c:
    nop
    jr c, jr_03e_51c3

    ld d, h
    ld b, h
    jr c, jr_03e_5193

jr_03e_5183:
    ld h, b
    nop
    jr nz, jr_03e_51fd

jr_03e_5187:
    adc b
    xor b
    adc b
    db $76
    jr nz, jr_03e_518d

jr_03e_518d:
    jr c, jr_03e_51d3

    ld d, h
    ld b, h
    jr c, jr_03e_51a3

jr_03e_5193:
    inc e
    nop
    ld b, h
    jr c, @+$56

    xor d
    xor d
    sub d

jr_03e_519b:
    ld b, h
    nop
    nop
    jp nc, $aaba

    cp d
    sub [hl]

jr_03e_51a3:
    nop
    nop
    jr c, jr_03e_51eb

    cp d
    xor d
    cp d
    ld b, h
    jr c, jr_03e_51ad

jr_03e_51ad:
    jr c, @+$46

    ld d, h
    ld b, h
    ld a, b
    ld b, b
    ld b, b
    nop
    ld [hl], b
    adc b
    xor b
    adc b
    ld [hl], d

jr_03e_51ba:
    ld [de], a
    inc c

jr_03e_51bc:
    nop
    jr c, jr_03e_5203

    ld d, h
    ld b, h
    ld a, b
    ld c, h

jr_03e_51c3:
    ld b, b
    nop
    ld a, b
    add b
    cp b
    ld b, h
    ld a, [hl-]
    ld [bc], a

jr_03e_51cb:
    inc a
    nop
    ld a, h
    db $10
    jr c, jr_03e_5215

    ld d, h
    ld b, h

jr_03e_51d3:
    jr c, jr_03e_51d5

jr_03e_51d5:
    jr c, jr_03e_521b

    ld b, h
    jr c, jr_03e_522e

    sub d
    ld a, h
    nop
    ld b, h
    ld a, h
    inc h
    jr c, jr_03e_5226

    ld b, h
    jr c, jr_03e_51e5

jr_03e_51e5:
    db $10
    ld d, h
    jr c, jr_03e_522d

    ld d, h
    ld b, h

jr_03e_51eb:
    jr c, jr_03e_51ed

jr_03e_51ed:
    add $38
    ld b, h
    ld d, h
    ld b, h
    jr c, jr_03e_51ba

    nop
    ld b, h
    jr c, jr_03e_523c

    ld b, h
    jr c, jr_03e_520b

    jr c, jr_03e_521d

jr_03e_51fd:
    db $10
    jr c, jr_03e_5244

    ld b, h
    jr c, jr_03e_5213

jr_03e_5203:
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop

jr_03e_520b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03e_5213:
    nop
    rst $38

jr_03e_5215:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_03e_521b:
    rst $38
    nop

jr_03e_521d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03e_5226:
    db $10
    jr c, jr_03e_52a5

    cp $fe
    nop
    nop

jr_03e_522d:
    nop

jr_03e_522e:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0203
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, $07

jr_03e_523c:
    ld a, [bc]
    add hl, bc
    rrca
    dec bc
    rrca
    inc c
    rrca
    inc c

jr_03e_5244:
    nop
    add b
    add b
    add b
    add b
    add b
    ldh a, [$f0]
    ld [$e8f8], sp
    ld hl, sp-$08
    jr @-$06

    jr jr_03e_5260

    rrca
    ld a, [bc]
    dec c
    ld [$0a0f], sp
    dec c
    ld [$0a0f], sp
    dec c

jr_03e_5260:
    ld [$070b], sp
    rlca
    add sp, -$08
    xor b
    ld e, b
    ld [$a8f8], sp
    ld e, b
    ld [$a8f8], sp
    ld e, b
    ld [$f0f8], sp
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    jr nz, jr_03e_52a4

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    db $10
    db $10
    ld c, b
    ld c, b
    jr z, @+$2a

    nop
    nop
    nop
    nop
    jr nc, jr_03e_52ca

    ld [$640c], sp
    ld h, h
    ld [de], a
    ld [de], a
    ld c, d
    ld c, d
    jr z, jr_03e_52cc

jr_03e_52a4:
    nop

jr_03e_52a5:
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_03e_531c

    ld [hl], b
    ld d, b
    ld e, h
    ld a, h
    add d
    cp [hl]
    cp d
    add $ba
    add $82
    cp $aa
    sub $82
    cp $aa
    sub $82
    cp $7c
    ld a, h
    nop
    nop
    nop
    nop
    rra
    ccf
    jr nz, @+$41

jr_03e_52ca:
    cpl
    ccf

jr_03e_52cc:
    ld l, a
    ld a, h
    ld l, a
    ld a, h
    cpl
    inc a
    cpl
    ccf
    nop
    nop
    ld hl, sp-$04
    inc b
    db $fc
    db $f4
    db $fc
    db $f4
    inc a
    db $f4
    inc a
    db $f4
    inc a
    db $f4
    db $fc
    jr nz, @+$41

    inc h
    ccf
    ld l, $3f
    inc h
    ccf
    jr nz, jr_03e_532d

    jr nz, jr_03e_532f

    rra
    ccf
    nop
    nop
    inc b
    db $fc
    inc b
    db $fc
    inc d
    db $fc
    ld b, h
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld hl, sp-$04
    nop
    nop
    jr nc, jr_03e_5336

    nop
    nop
    jr nc, @+$32

    nop
    nop
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    nop
    nop
    nop
    nop
    jr nc, jr_03e_5346

    nop
    nop
    jr nc, jr_03e_534a

    nop
    nop

jr_03e_531c:
    dec [hl]
    scf
    dec [hl]
    scf
    nop
    nop
    nop
    nop
    jr nc, jr_03e_5356

    nop
    nop
    jr nc, @+$32

    nop
    jr nc, @+$37

jr_03e_532d:
    dec a
    dec [hl]

jr_03e_532f:
    dec a
    nop
    nop
    nop
    nop
    jr nc, jr_03e_5366

jr_03e_5336:
    nop
    jr nc, jr_03e_5369

    jr nc, jr_03e_533b

jr_03e_533b:
    nop
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop

jr_03e_5346:
    nop
    nop
    nop
    nop

jr_03e_534a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38

jr_03e_5356:
    ldh [rIE], a
    rst $08
    ldh a, [$9f]
    ldh [$91], a
    xor $97
    xor $97
    xor $9f
    ldh [rIE], a
    rst $38

jr_03e_5366:
    nop
    rst $38
    xor d

jr_03e_5369:
    ld d, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rlca
    rst $38
    di
    rrca
    ld sp, hl
    rlca
    adc c
    ld [hl], a
    jp hl


    ld [hl], a
    jp hl


    ld [hl], a
    ld sp, hl
    rlca
    rst $08
    ldh a, [$e1]
    cp $cf
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$e0]
    rst $38
    rst $08
    ldh a, [$9f]
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$cf], a
    ldh a, [$e1]
    cp $cf
    ldh a, [$9f]
    ldh [$91], a
    xor $97
    xor $97
    xor $8f
    ldh a, [$80]
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor d
    ld d, l
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    xor d
    rst $38
    rst $38
    rst $38
    adc c
    ld [hl], a
    jp hl


    ld [hl], a
    jp hl


    ld [hl], a
    pop af
    rrca
    add c
    ld a, a
    inc bc
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    di
    rrca
    add a
    ld a, a
    di
    rrca
    di
    rrca
    di
    rrca
    di
    rrca
    rlca
    rst $38
    di
    rrca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    di
    rrca
    add a
    ld a, a
    di
    rrca
    ld sp, hl
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    jr c, @+$3a

    ld a, h
    ld a, h
    cp $fe
    cp $fe
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$f8f8]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    cpl
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    ld a, [c]
    ldh a, [$e0]
    rst $38
    rst $38
    rst $38
    ld a, a
    ld [hl], a
    daa
    rlca
    inc bc
    rst $38
    rst $38
    rst $38
    or $f2
    ldh [$e0], a
    ret nz

    rst $38
    rst $38
    ld a, a
    scf
    daa
    inc bc
    inc bc
    ld bc, $ffff
    rst $38
    rst $38
    ei
    ld a, [$f8f8]
    rst $38
    rst $38
    rst $38
    ld a, a
    ld l, a
    cpl
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    or $f2
    ldh a, [$f0]
    rst $38
    rst $38
    ld a, a
    ld a, a
    scf
    daa
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    or $f2
    ldh [$e0], a
    ldh [rIE], a
    ld a, a
    ld a, a
    scf
    daa
    inc bc
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f4
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ld a, [$f0f0]
    rst $38
    rst $38
    rst $38
    ld a, a
    ld l, a
    cpl
    rlca
    rlca
    ld hl, sp-$08
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$02
    rst $38
    rst $38
    inc bc
    inc bc
    rlca
    rlca
    rrca
    ccf
    rst $38
    rst $38
    ret nz

    ret nz

    ret nz

    ldh [$f0], a
    db $fc
    rst $38
    rst $38
    ld bc, $0101
    inc bc
    rlca
    rra
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$04
    db $fc
    cp $ff
    rst $38
    rrca
    rrca
    rrca
    rra
    rra
    ccf
    rst $38
    rst $38
    ldh a, [$f8]
    ld hl, sp-$08
    db $fc
    cp $ff
    rst $38
    rlca
    rrca
    rrca
    rrca
    rra
    ccf
    rst $38
    rst $38
    ldh [$e0], a
    ldh [$f0], a
    ldh a, [$f8]
    cp $ff
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rrca
    ccf
    rst $38
    ldh a, [$f0]
    ld hl, sp-$04
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    cp $ff
    rst $38
    rlca
    rlca
    rrca
    rrca
    rra
    ccf
    rst $38
    rst $38
    rst $38
    cp $fc
    db $e4
    call nz, $e0c0
    ldh [rIE], a
    ld a, a
    ccf
    daa
    inc hl
    inc bc
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    db $fc
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    ccf
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    ei
    ei
    pop af
    pop af
    ld hl, sp-$01
    rst $38
    rst $38
    rst $28
    rst $28
    rst $00
    rst $00
    rrca
    ldh [$e0], a
    ldh [$f0], a
    db $fc
    db $fc
    cp $ff
    rlca
    rlca
    rlca
    rrca
    ccf
    ccf
    ld a, a
    rst $38
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    db $fc
    db $fc
    cp $ff
    rst $38
    rst $38
    rra
    rra
    ccf
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$04
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    pop af
    pop af
    ld hl, sp-$08
    rst $38
    rst $38
    rst $28
    rst $28
    rst $00
    rst $00
    rrca
    rrca
    rst $38
    rst $38
    rst $30
    or $e2
    ld [c], a
    ldh a, [$f0]
    rst $38
    ld a, a
    ld [hl], a
    scf
    inc hl
    inc hl
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fa
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ld a, [c]
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    ld a, a
    ld l, a
    daa
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    ei
    ei
    pop af
    pop af
    ld hl, sp-$01
    rst $38
    rst $38
    rst $28
    rst $28
    rst $00
    rst $00
    rrca
    rst $38
    or $f6
    and $e2
    ld [c], a
    ldh a, [$f0]
    rst $38
    rst $28
    ld l, a
    ld h, a
    ld b, a
    ld b, a
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$04
    cp $fe
    cp $ff
    rst $38
    rst $38
    rrca
    rra
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    ldh a, [$f8]
    db $fc
    cp $fe
    cp $ff
    rst $38
    rlca
    rrca
    rra
    ccf
    ccf
    ccf
    ld a, a
    rst $38
    ld hl, sp-$04
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$04
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld hl, sp-$08
    db $fc
    cp $fe
    cp $fe
    rst $38
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld e, a
    rra
    rst $38
    rst $38
    rst $38
    cp $fc
    ld hl, sp-$08
    ld hl, sp-$01
    rst $38
    rst $38
    ccf
    rra
    rrca
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    db $fc
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    cp a
    sbc a
    rra
    rrca
    rst $38
    rst $38
    rst $38
    cp $fc
    db $fc
    db $fc
    ld hl, sp-$01
    rst $38
    rst $38
    cp a
    sbc a
    sbc a
    rra
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fc
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ccf
    rra
    rst $38
    rst $38
    rst $38
    cp $f6
    ld a, [c]
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    ld c, a
    rlca
    rlca
    rst $38
    rst $28
    rst $20
    pop hl
    ret nz

    ret nz

    ret nz

    ret nz

    rst $38
    rst $30
    rst $20
    add a
    inc bc
    inc bc
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    db $fc
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    ccf
    rra
    rra
    db $fc
    db $fc
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rra
    rra
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    cp $ff
    rst $38
    rrca
    rra
    rra
    rra
    rra
    ccf
    rst $38
    rst $38
    ld hl, sp-$08
    db $fc
    db $fc
    cp $ff
    rst $38
    rst $38
    rrca
    rrca
    rra
    rra
    ccf
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    cp $ff
    rst $38
    rrca
    rrca
    rra
    rra
    rra
    ccf
    rst $38
    rst $38
    ld hl, sp-$08
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rra
    rra
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$02
    rst $38
    rst $38
    rlca
    rlca
    rrca
    rrca
    rra
    ld a, a
    rst $38
    rst $38
    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$02
    rst $38
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra
    ld a, a
    rst $38
    ld hl, sp-$08
    db $fc
    db $fc
    cp $ff
    rst $38
    rst $38
    rra
    rra
    ccf
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f6
    ld a, [c]
    ldh [$f0], a
    ldh [rIE], a
    rst $38
    rst $38
    ld l, a
    ld b, a
    rlca
    rrca
    rlca
    cp $f8
    ldh a, [$e0]
    ldh a, [$e0]
    ret nz

    ret nz

    ld a, a
    rra
    rrca
    rlca
    rrca
    rlca
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    cp $fc
    db $fc
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    ccf
    rra
    rra
    rst $38
    rst $38
    ld sp, hl
    ldh a, [$f1]
    ldh [$e0], a
    ldh [rIE], a
    rst $38
    rst $08
    add a
    rst $00
    inc bc
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f2
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld c, a
    rrca
    rst $38
    rst $38
    rst $38
    cp $f2
    ldh [$e0], a
    ldh [rIE], a
    rst $38
    rst $38
    ld a, a
    ld c, a
    rlca
    rlca
    rlca
    rst $38
    rst $38
    cp $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    rst $38
    ccf
    rra
    rra
    rra
    rra
    rra
    cp $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$04
    db $fc
    ccf
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$02
    rst $38
    rst $38
    rlca
    rlca
    rrca
    rrca
    rra
    ld a, a
    rst $38
    rst $38
    ret nz

    ldh [$e0], a
    ldh [$f0], a
    ld hl, sp-$02
    rst $38
    inc bc
    rlca
    rlca
    rlca
    rrca
    rra
    ld a, a
    rst $38
    ld hl, sp-$07
    ld sp, hl
    ld hl, sp-$04
    rst $38
    rst $38
    rst $38
    rra
    sbc a
    sbc a
    rra
    ccf
    rst $38
    rst $38
    rst $38
    pop hl
    di
    di
    pop af
    ld hl, sp-$02
    rst $38
    rst $38
    jp $e7e7


    rst $00
    rrca
    ccf
    rst $38
    rst $38
    ldh a, [$f1]
    ld sp, hl
    ld sp, hl
    db $fc
    rst $38
    rst $38
    rst $38
    rrca
    adc a
    sbc a
    sbc a
    ccf
    ld a, a
    rst $38
    rst $38
    pop hl
    di
    di
    ld sp, hl
    db $fc
    rst $38
    rst $38
    rst $38
    add a
    rst $08
    rst $08
    sbc a
    ccf
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rra
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    db $fc
    rst $38
    rra
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $ff
    rst $38
    rst $38
    rst $38
    ccf
    rra
    rra
    rra
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rra
    rra
    rra
    rst $38
    cp $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    rst $38
    ccf
    rra
    rra
    rra
    rra
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ccf
    rst $38
    rst $38
    ld sp, hl
    pop af
    pop af
    ldh a, [$f0]
    ldh a, [rIE]
    rst $38
    ccf
    rra
    rra
    rra
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    ld hl, sp-$07
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld hl, sp-$08
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$04
    rst $38
    rst $38
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp-$04
    rst $38
    rst $38
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f8
    ld_long a, $fff8
    rst $38
    rst $38
    rst $38
    ld a, a
    rra
    ld e, a
    rra
    cp $e4
    ret nz

    ret nz

    ldh [$f0], a
    ldh a, [$f0]
    ld a, a
    daa
    inc bc
    inc bc
    inc bc
    rlca
    rra
    rra
    rst $38
    rst $38
    rst $38
    or $f2
    ldh [$e0], a
    ldh [rIE], a
    rst $38
    ld a, a
    scf
    daa
    inc bc
    inc bc
    inc bc
    sbc $de
    adc h
    adc h
    add h
    ret nz

    ret nz

    ret nz

    rst $30
    rst $30
    ld h, e
    ld h, e
    ld b, e
    rlca
    rlca
    rlca
    rst $38
    rst $20
    rst $00
    jp $e3e3


    pop af
    ldh a, [rIE]
    rst $20
    jp $87c3


    add a
    rrca
    rra
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    db $fd
    db $fd
    db $fc
    db $fc
    cp $ff
    ccf
    ccf
    cp a
    cp a
    ccf
    ccf
    ld a, a
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    rst $38
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    rst $38
    rst $38
    ldh [$f0], a
    ldh a, [$f8]
    cp $ff
    rst $38
    rst $38
    inc bc
    rlca
    rlca
    rrca
    ccf
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$04
    rst $38
    rst $38
    rrca
    rrca
    rra
    rra
    ccf
    ld a, a
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f1]
    ld sp, hl
    rst $38
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    pop hl
    ld [c], a
    ldh a, [$f0]
    ldh a, [rIE]
    adc a
    rlca
    rlca
    rlca
    rlca
    rrca
    rra
    rst $38
    rst $38
    cp $f4
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    rst $38
    ld a, a
    cpl
    rlca
    rlca
    rlca
    rlca
    rst $38
    cp $e4
    ret nz

    add b
    add b
    add b
    add b
    rst $38
    ld a, a
    daa
    inc bc
    ld bc, $0101
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rrca
    rrca
    rra
    rst $38
    rst $38
    rst $38
    cp $fc
    db $fc
    db $fc
    db $fc
    rst $38
    rst $38
    rra
    rrca
    rlca
    rlca
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    ei
    di
    di
    pop af
    ld hl, sp-$01
    rst $38
    rst $38
    cp a
    sbc a
    sbc a
    rra
    ccf
    rst $38
    rst $30
    di
    db $e3
    db $e3
    pop af
    ldh [$e0], a
    rst $38
    rst $18
    sbc a
    adc a
    adc a
    rra
    rrca
    rrca
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp-$04
    db $fc
    rst $38
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    ldh [$f0], a
    ldh a, [$fc]
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rrca
    rrca
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$fc]
    rst $38
    rst $38
    inc bc
    inc bc
    rlca
    rlca
    rrca
    ccf
    rst $38
    rst $38
    cp $fc
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rra
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld hl, sp-$08
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rra
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    db $fc
    cp $ff
    rst $38
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    rst $38
    rst $38
    ld hl, sp-$04
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    ccf
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$f0], a
    ldh a, [$f8]
    db $fc
    db $fc
    cp $fe
    rrca
    rra
    rra
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $00
    rst $00
    jp $e0e0


    ldh [rIE], a
    rst $28
    rst $00
    rst $00
    add a
    rrca
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rra
    rrca
    rrca
    rst $38
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp-$01
    rst $38
    cp a
    cpl
    rrca
    rrca
    rrca
    rrca
    rst $38
    ld sp, hl
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp-$08
    rst $38
    sbc a
    adc a
    add a
    rlca
    rlca
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $18
    rst $20
    ei
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $18
    rst $28
    ld l, a
    xor a
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    ldh a, [$f8]
    db $fc
    db $fc
    db $fc
    cp $0f
    rrca
    rra
    ccf
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    rst $38
    rst $38
    rst $38
    rrca
    rra
    rra
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$04
    rst $38
    rst $38
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    rst $38
    rst $38
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$04
    rrca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    sbc l
    db $ed
    xor $f2
    db $fc
    cp $fd
    rst $38
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [c], a
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, a
    ld b, a
    rlca
    rlca
    rst $38
    db $fd
    call c, $e0c4
    ldh [$f0], a
    ldh a, [rIE]
    rst $38
    rst $28
    rst $08
    rrca
    rrca
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld hl, sp-$08
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ccf
    rra
    rra
    rrca
    rst $38
    db $fc
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    ret nz

    rst $38
    ccf
    rrca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld hl, sp-$08
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    ccf
    rra
    rst $38
    rst $38
    rst $38
    ei
    pop af
    ldh a, [$f0]
    ldh [rIE], a
    rst $38
    rst $38
    rst $18
    adc a
    rrca
    rrca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$04
    rst $38
    rst $38
    rrca
    rrca
    rrca
    rrca
    rra
    ccf
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$f8]
    db $fc
    cp $fe
    cp $1f
    rra
    rra
    rra
    ccf
    ld a, a
    ld a, a
    rst $38
    ldh a, [$f0]
    ld hl, sp-$07
    db $fd
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    rra
    sbc a
    cp a
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f9]
    rst $38
    rst $38
    inc bc
    inc bc
    rlca
    rlca
    rrca
    sbc a
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$f8]
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    ldh [$f0], a
    ldh a, [$f8]
    rst $38
    rst $38
    rlca
    rlca
    rlca
    rrca
    rrca
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    sbc a
    adc a
    rst $38
    rst $38
    cp $fe
    sbc h
    add h
    ret nz

    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], e
    ld b, e
    rlca
    rlca
    rst $38
    rst $38
    rst $30
    rst $30
    di
    di
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    rst $28
    rst $28
    rst $08
    rst $08
    sbc a
    sbc a
    rst $38
    rst $28
    rst $08
    rst $08
    rst $00
    and $e2
    ldh a, [$bf]
    cp a
    rra
    rra
    ccf
    dec a
    ld [hl], c
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ld hl, sp-$04
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $28
    adc a
    sbc a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    ldh a, [$f8]
    db $fc
    db $fc
    cp $ff
    rrca
    rrca
    rra
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    db $10
    add b
    ldh [$f8], a
    db $fc
    rst $38
    rst $38
    rst $38
    ld [$0701], sp
    rrca
    ccf
    rst $38
    rst $38
    rst $38
    ldh a, [$f8]
    ld hl, sp-$08
    pop af
    di
    rst $20
    rst $38
    rrca
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$f0f2]
    ldh a, [rIE]
    rst $38
    rst $38
    ld a, a
    ld e, a
    ld c, a
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    sbc a
    rrca
    rrca
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    rra
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    rst $38
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rra
    rst $38
    rst $38
    cp $f2
    ld [c], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ld a, a
    ld c, a
    ld b, a
    rlca
    rlca
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$20
    ret nz

    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rra
    rlca
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    db $e3
    db $e3
    ret nz

    ret nz

    ret nz

    ret nz

    rst $38
    rst $28
    rst $00
    rst $00
    inc bc
    inc bc
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    db $fc
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    ccf
    rra
    ldh [$f0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    rst $38
    rlca
    rrca
    rrca
    rrca
    rra
    rra
    ccf
    rst $38
    ldh [$e0], a
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    ld h, a
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$fc]
    rst $38
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rrca
    ccf
    rst $38
    ld hl, sp-$08
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rra
    rra
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    db $fc
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    ccf
    rra
    rra
    rrca
    rst $38
    cp $ee
    db $ec
    db $e4
    ldh [$e0], a
    ldh [rIE], a
    rst $38
    rst $28
    ld l, a
    ld c, a
    rrca
    rrca
    rrca
    rst $38
    rst $38
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$01
    rst $38
    ccf
    rra
    rra
    rra
    rra
    rra
    rst $38
    rst $38
    db $fc
    ld hl, sp-$10
    ldh [$e0], a
    ret nz

    rst $38
    rst $38
    ld a, a
    ccf
    rra
    rrca
    rrca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    pop af
    pop af
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $18
    adc a
    adc a
    rlca
    rlca
    rst $38
    rst $30
    db $e3
    pop hl
    ret nz

    ret nz

    ret nz

    ret nz

    rst $18
    adc a
    adc a
    rlca
    rlca
    rlca
    rlca
    rlca
    ld hl, sp-$08
    ld hl, sp-$04
    cp $ff
    rst $38
    rst $38
    rrca
    rrca
    rrca
    rra
    ccf
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    jp $e7e7


    rst $30
    di
    db $fc
    rlca
    rlca
    add a
    rst $08
    rst $08
    rst $18
    sbc a
    ld a, a
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$04
    rst $38
    rra
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    ret nz

    jp $e7e7


    db $e3
    ldh a, [$fc]
    rst $38
    rlca
    add a
    rst $08
    rst $08
    adc a
    rra
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    ldh [$e0], a
    ldh [$f3], a
    rst $38
    rst $38
    rlca
    rlca
    rlca
    rlca
    rlca
    rst $08
    rst $38
    rst $38
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f8]
    cp $ff
    rlca
    rlca
    rlca
    rrca
    rrca
    rra
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    rst $38
    ccf
    rra
    rra
    rra
    rra
    rra
    rst $38
    rst $38
    cp $f8
    ldh a, [$f0]
    ldh a, [$e0]
    rst $38
    rst $38
    rra
    rrca
    rlca
    rlca
    rlca
    rlca
    rst $38
    cp $fc
    db $fc
    ldh [$c0], a
    ret nz

    ldh [rIE], a
    ld a, a
    ccf
    ccf
    rlca
    inc bc
    inc bc
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    rst $38
    rst $38
    rra
    ccf
    ccf
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    ldh [$f0], a
    ldh a, [$f8]
    rst $38
    rst $38
    rlca
    rrca
    rrca
    rra
    ccf
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$04
    rst $38
    rst $38
    rrca
    rrca
    rrca
    rrca
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    rst $38
    rst $38
    cp $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    rst $38
    ld a, a
    ccf
    ccf
    rra
    rra
    rra
    rst $38
    rst $38
    rst $38
    xor $e6
    or $f0
    ldh a, [rIE]
    ld a, a
    ld a, a
    dec sp
    inc sp
    scf
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    di
    ldh [$e0], a
    ldh [$f0], a
    ldh a, [$bf]
    cp a
    ccf
    rra
    rra
    rra
    ccf
    ccf
    rst $38
    rst $30
    di
    di
    ldh a, [$f0]
    ldh a, [$e0]
    rst $38
    rst $18
    sbc a
    sbc a
    rra
    rra
    rra
    rrca
    rst $38
    rst $38
    di
    pop hl
    pop hl
    pop af
    pop af
    rst $38
    rst $38
    rst $38
    rst $20
    jp $c3c3


    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f8
    ld hl, sp-$0f
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rrca
    rrca
    rst $00
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    db $fc
    db $fc
    cp $ff
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ld a, a
    rst $38
    ldh [$e0], a
    ldh [$f0], a
    ldh a, [$f8]
    db $fc
    rst $38
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$f8]
    db $fc
    db $fc
    db $fd
    rst $38
    ccf
    ccf
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    ldh [$f0], a
    ldh a, [$f8]
    db $fc
    rst $38
    rrca
    rrca
    rrca
    rra
    rra
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ccf
    ld a, a
    rst $38
    di
    di
    pop af
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    rst $00
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f2
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld c, a
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f2
    ldh a, [$e0]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld c, a
    rrca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f2
    ldh a, [$e0]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld c, a
    rrca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f2
    ldh a, [$e0]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld c, a
    rrca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e1], a
    di
    pop af
    ld hl, sp-$02
    rst $38
    rst $38
    rlca
    add a
    rst $08
    adc a
    rra
    ld a, a
    rst $38
    rst $38
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$04
    rst $38
    rst $38
    rlca
    rlca
    rrca
    rrca
    rra
    ccf
    rst $38
    rst $38
    ldh [$e0], a
    ldh a, [$f0]
    db $fc
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    rrca
    rrca
    ccf
    rst $38
    rst $38
    rst $38
    pop hl
    db $e3
    di
    pop af
    ld hl, sp-$04
    rst $38
    rst $38
    add a
    rst $00
    rst $08
    adc a
    rra
    ccf
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$01
    ld a, a
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ei
    ei
    pop af
    pop af
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    rst $18
    rst $18
    adc a
    adc a
    sbc a
    sbc a
    rst $38
    ei
    ei
    ld sp, hl
    ld sp, hl
    db $fc
    db $fc
    db $fc
    rst $38
    rst $28
    rst $28
    rst $08
    rst $08
    rra
    rra
    rra
    rst $38
    rst $38
    cp $ec
    db $e4
    ldh [$c0], a
    ret nz

    rst $38
    rst $38
    rst $38
    ld l, a
    ld c, a
    rrca
    rlca
    rlca
    rst $38
    rst $38
    xor $ce
    add $c6
    and $e2
    ld a, a
    ld a, a
    scf
    inc sp
    inc sp
    ld h, e
    ld h, a
    ld b, a
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$02
    rst $38
    rst $38
    rrca
    rra
    rra
    rra
    rra
    rra
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$04
    db $fc
    cp $fc
    db $fc
    cp $ff
    rra
    ccf
    ccf
    ld a, a
    ccf
    ccf
    ld a, a
    rst $38
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    rst $38
    rra
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    jp $c7c7


    jp $f8e0


    rst $38
    rst $38
    add a
    rst $00
    rst $00
    add a
    rrca
    ccf
    rst $38
    rst $38
    ldh a, [$f8]
    ld hl, sp-$04
    db $fc
    db $fc
    cp $ff
    rrca
    rra
    ccf
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    adc $c6
    and $e2
    rst $38
    ld a, a
    ld a, a
    ld a, e
    add hl, sp
    ld sp, $2333
    rst $38
    rst $38
    rst $30
    and $e6
    and $e6
    ld a, [c]
    rst $38
    ld a, a
    ld l, a
    daa
    daa
    daa
    daa
    ld h, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$f2f2]
    ldh [$e0], a
    ldh [rIE], a
    ld a, a
    cpl
    daa
    daa
    inc bc
    inc bc
    inc bc
    ld sp, hl
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$01
    rst $08
    add a
    add a
    rrca
    rrca
    rra
    rra
    rst $38
    rst $38
    rst $38
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    ccf
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ldh a, [$f8]
    db $fc
    cp $fe
    cp $ff
    rst $38
    rlca
    rrca
    rra
    ccf
    ccf
    ccf
    ld a, a
    rst $38
    ld a, [c]
    ld a, [c]
    ld hl, sp-$08
    db $fc
    db $fc
    ld hl, sp-$07
    ld c, a
    ld c, a
    rra
    rra
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp-$04
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rra
    db $fc
    ld a, [$f2f2]
    ld a, [$fcfc]
    rst $38
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    rst $38
    db $fc
    db $fc
    db $fd
    db $fd
    db $fc
    cp $ff
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f8
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    rra
    rst $38
    rst $38
    cp $e4
    ret nz

    ldh [$c0], a
    ret nz

    rst $38
    rst $38
    ld a, a
    daa
    inc bc
    rlca
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    ld sp, hl
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld e, a
    rra
    rst $38
    rst $38
    rst $38
    db $fd
    ld sp, hl
    ld hl, sp-$08
    ld hl, sp-$01
    rst $38
    rst $38
    ld a, a
    ccf
    ccf
    rra
    rra
    rst $38
    rst $38
    rst $38
    cp $f8
    ld hl, sp-$08
    ld hl, sp-$01
    rst $38
    rst $38
    ld a, a
    ld e, a
    rra
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fc
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    ccf
    rra
    rra
    rra
    rra
    rst $38
    db $fd
    db $fd
    ld sp, hl
    ld sp, hl
    ld hl, sp-$08
    ld hl, sp-$01
    ld a, a
    ccf
    ccf
    rra
    rra
    rra
    rra
    ldh a, [$f8]
    ld hl, sp-$04
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$fc]
    rst $38
    rst $38
    inc bc
    inc bc
    rlca
    rlca
    rrca
    ccf
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$04
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$04
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$04
    rst $38
    rst $38
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    rst $38
    rst $38
    rst $38
    rra
    rra
    ccf
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $ff
    rst $38
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$04
    db $fc
    db $fc
    cp $ff
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    ld sp, hl
    pop af
    ld sp, hl
    db $fc
    call z, $ffff
    rst $38
    rst $08
    rst $00
    rst $08
    sbc a
    add hl, de
    rst $38
    rst $38
    rst $38
    cp $fc
    sbc h
    adc h
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld [hl], e
    ld h, e
    rlca
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ldh a, [$f0]
    ld sp, hl
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    adc a
    adc a
    rrca
    rst $38
    cp $fc
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [rIE]
    ccf
    rra
    rrca
    rrca
    rrca
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, a
    rrca
    db $fc
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ldh [$f8], a
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0f03
    rra
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh [$f0], a
    ldh a, [$f8]
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rra
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ld hl, sp-$04
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f8]
    ld hl, sp-$04
    db $fc
    cp $ff
    rst $38
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f2]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    sbc a
    rra
    rra
    rst $38
    rst $38
    cp $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$01
    rst $38
    cp a
    sbc a
    sbc a
    rrca
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rra
    rra
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$04
    db $fc
    cp $ff
    rst $38
    rrca
    rrca
    rrca
    rra
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    cp a
    rst $38
    cp $fe
    cp $fc
    db $fc
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp $fc
    ld hl, sp-$08
    ldh a, [$f0]
    rst $38
    rst $38
    ld a, a
    ccf
    rra
    rra
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    ccf
    ccf
    ccf
    rst $38
    rst $38
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$01
    rst $38
    ccf
    rra
    rra
    rra
    rra
    rra
    db $fc
    db $fc
    cp $fe
    cp $ff
    rst $38
    rst $38
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    db $fd
    ld hl, sp-$08
    db $fd
    db $fd
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    cp $ff
    rst $38
    rst $38
    ccf
    ccf
    ccf
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    rst $38
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$04
    db $fc
    db $fc
    cp $ff
    rst $38
    rst $38
    rra
    ccf
    ccf
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    rst $38
    ccf
    rra
    rra
    rra
    rra
    rra
    cp $fc
    db $fc
    adc $87
    add b
    ret z

    ld hl, sp+$7f
    ccf
    ccf
    ld [hl], e
    pop hl
    ld bc, $1f13
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rra
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld hl, sp-$08
    ld hl, sp-$01
    ccf
    rra
    rra
    rra
    rra
    rra
    rra
    db $fc
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $ff
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    rst $38
    db $fc
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$04
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ccf
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$04
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    cp $ff
    rst $38
    rst $38
    ccf
    ccf
    ccf
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    db $fc
    cp $ff
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    or $f2
    ld a, [c]
    ldh a, [rIE]
    rst $38
    rst $38
    ld a, a
    scf
    daa
    daa
    rlca
    rst $38
    ld a, [$f0f2]
    ldh a, [$f0]
    ldh a, [$f0]
    rst $38
    ld e, a
    ld c, a
    rrca
    rrca
    rrca
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rrca
    rst $38
    rst $38
    rst $38
    rst $30
    di
    ei
    ld sp, hl
    cp $ff
    rst $38
    ld a, a
    ld [hl], a
    ld h, a
    ld l, a
    ld c, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld hl, sp-$10
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f8]
    ld hl, sp-$08
    db $fc
    db $fc
    cp $ff
    rlca
    rrca
    rrca
    rrca
    rra
    rra
    ccf
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    rst $38
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    ccf
    rst $38
    db $fc
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$04
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    rrca
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$f8]
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    db $fc
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rra
    rra
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fa
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld e, a
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [c], a
    ldh [$e0], a
    ret nz

    rst $38
    rst $38
    rst $38
    ld c, a
    ld b, a
    rlca
    rlca
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld hl, sp-$10
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ccf
    rra
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fb
    ld hl, sp-$01
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    rst $28
    rrca
    rst $38
    rst $38
    rst $38
    rst $30
    di
    di
    pop af
    ldh a, [rIE]
    rst $38
    rst $38
    ld a, a
    ccf
    ccf
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f2
    di
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld c, a
    rst $08
    ccf
    ldh a, [$f0]
    ld hl, sp-$04
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$fc]
    rst $38
    rst $38
    inc bc
    inc bc
    rlca
    rlca
    rrca
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$04
    cp $ff
    db $fc
    db $fc
    cp $ff
    ccf
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    ldh a, [$f0]
    ld hl, sp-$04
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$04
    db $fc
    cp $ff
    rst $38
    rrca
    rrca
    rrca
    rra
    rra
    ccf
    rst $38
    rst $38
    ldh a, [$f8]
    ld hl, sp-$08
    db $fc
    rst $38
    rst $38
    rst $38
    rra
    rra
    ccf
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$04
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    adc h
    rst $08
    ret c

    ldh a, [rIE]
    rst $38
    rst $38
    ld a, a
    ld h, e
    rst $20
    scf
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ccf
    rst $38
    rst $38
    rst $38
    rst $30
    and $e4
    ret nz

    ret nz

    rst $38
    rst $38
    rst $38
    rst $18
    rst $08
    ld c, a
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    ld sp, hl
    db $fc
    cp h
    rst $38
    rst $38
    rst $38
    di
    di
    db $ed
    dec c
    inc bc
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$fc]
    rst $38
    rst $38
    rrca
    rrca
    rrca
    rrca
    rra
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$fc]
    rst $38
    rst $38
    rlca
    rlca
    rrca
    rrca
    rra
    ld a, a
    rst $38
    rst $38
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc b
    ret nz

    ldh a, [$fc]
    rst $38
    rst $38
    rst $38
    rst $38
    jp $0fc7


    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    ld sp, hl
    ld hl, sp-$08
    ld hl, sp-$01
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $08
    rst $20
    rst $20
    db $fc
    ld hl, sp-$08
    rst $38
    rst $30
    rst $20
    rst $00
    rst $08
    ld a, a
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f3
    db $fc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $08
    ccf
    rrca
    rst $38
    rst $38
    cp $fc
    rst $20
    ret z

    ret nc

    ldh [rIE], a
    rst $38
    ld a, a
    ccf
    rst $20
    inc de
    dec bc
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$10
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rrca
    rrca
    rst $38
    cp $fc
    db $fc
    ret z

    ret nz

    ret nz

    pop hl
    rst $38
    ld a, a
    ccf
    ccf
    inc de
    inc bc
    inc bc
    add a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$04
    rst $38
    rst $38
    rra
    rra
    rra
    rra
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    rst $38
    db $fc
    db $fc
    db $fc
    db $fd
    rst $38
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$04
    cp $ff
    rst $38
    rst $38
    rra
    rra
    rra
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$04
    cp $ff
    rrca
    rrca
    rra
    rra
    rra
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    rra
    rra
    ccf
    rst $38
    rst $38
    rst $38
    jp $c3c3


    pop hl
    ldh [$f0], a
    db $fc
    rst $38
    jp $c3c3


    add a
    rlca
    rrca
    ccf
    rst $38
    rst $38
    rst $38
    db $fc
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [rIE]
    rst $38
    ccf
    rra
    rra
    rra
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld hl, sp-$08
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rrca
    rrca
    rst $00
    rst $38
    rst $38
    cp $f2
    ldh [$e0], a
    ldh a, [$f0]
    rst $38
    rst $38
    ld a, a
    ld c, a
    rlca
    rlca
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rra
    rst $38
    cp a
    sbc a
    call nz, $e3c0
    rst $00
    rst $00
    rst $38
    ei
    di
    ld b, a
    rlca
    adc a
    rst $00
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    ld_long a, $fff8
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    cp a
    ccf
    rst $38
    rst $38
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [rIE]
    rst $38
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    ld hl, sp-$10
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    rra
    rrca
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp-$08
    db $fc
    rst $38
    rrca
    rrca
    rrca
    rra
    rra
    rra
    ccf
    rst $38
    di
    ld a, [c]
    ld a, [c]
    ei
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld h, a
    daa
    daa
    ld l, a
    rst $08
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    rst $38
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ld a, a
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    cp $ff
    rst $38
    rst $38
    rra
    rra
    rra
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $00
    db $e3
    ldh a, [$fc]
    db $fc
    cp $fe
    rst $38
    rst $00
    adc a
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$04
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    rra
    rra
    ccf
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ld hl, sp-$02
    cp $ff
    rst $38
    rst $38
    rrca
    rrca
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    sbc a
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    adc a
    add a
    rlca
    rlca
    rrca
    rst $38
    rst $38
    db $fd
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [rIE]
    ld a, a
    ld e, a
    rrca
    rrca
    rlca
    rlca
    rlca
    rst $38
    cp $e4
    ret nz

    ret nz

    ret nz

    ldh [$f0], a
    rst $38
    ld a, a
    ccf
    daa
    inc bc
    inc bc
    inc bc
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    db $fc
    db $fc
    ldh a, [$e0]
    rst $38
    rst $38
    ccf
    rra
    rra
    rra
    rlca
    inc bc
    db $fc
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    db $fc
    ld hl, sp-$08
    db $fc
    rst $38
    rst $38
    rrca
    rra
    rra
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh a, [$f8]
    ld hl, sp-$08
    db $fc
    cp $ff
    rst $38
    rlca
    rrca
    rrca
    rrca
    rra
    ccf
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp-$08
    db $fc
    rst $38
    rrca
    rrca
    rrca
    rra
    rra
    rra
    ccf
    rst $38
    ld hl, sp-$04
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rra
    rra
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$f0], a
    ld hl, sp-$08
    db $fc
    cp $ff
    rst $38
    inc bc
    rlca
    rrca
    rrca
    rra
    ccf
    rst $38
    rst $38
    rst $38
    cp $f2
    ld [c], a
    ldh [$e0], a
    ldh [$f0], a
    rst $38
    ld a, a
    ld c, a
    ld b, a
    rlca
    rlca
    rlca
    rrca
    rst $38
    rst $38
    cp $f6
    and $e6
    ld a, [c]
    ld a, [c]
    rst $38
    rst $38
    ld a, a
    ld l, a
    ld h, a
    ld h, a
    ld c, a
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld hl, sp-$04
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    rst $38
    rst $38
    cp $ec
    call nz, $fbc0
    jp z, $ffff

    ld a, a
    scf
    inc hl
    inc bc
    cp e
    dec bc
    rst $38
    rst $38
    cp $ec
    call nz, $fbc0
    jp z, $ffff

    ld a, a
    scf
    inc hl
    inc bc
    cp e
    dec bc
    rst $38
    rst $38
    cp $ec
    call nz, $fbc0
    jp z, $ffff

    ld a, a
    scf
    inc hl
    inc bc
    xor e
    dec hl
    rst $38
    rst $38
    cp $fc
    call nz, $fbc0
    jp z, $ffff

    ld a, a
    scf
    inc hl
    inc bc
    cp e
    inc hl
    rst $38
    rst $38
    cp $ec
    call nz, $fbc0
    jp z, $ffff

    ld a, a
    scf
    inc hl
    inc bc
    cp e
    inc hl
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    rst $38
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    rst $38
    ld a, [c]
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $4f
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ldh [$fb], a
    ldh [$f0], a
    db $fc
    rst $38
    rst $38
    cp e
    and e
    cp a
    rlca
    rrca
    ccf
    rst $38
    rst $38
    ei
    ldh [$fb], a
    ldh [$f0], a
    db $fc
    rst $38
    rst $38
    cp e
    adc e
    cp a
    rlca
    rrca
    ccf
    rst $38
    rst $38
    ei
    ldh [$fb], a
    ldh [$f0], a
    db $fc
    rst $38
    rst $38
    cp e
    adc e
    adc a
    rlca
    rrca
    ccf
    rst $38
    rst $38
    ei
    ldh [$fb], a
    ldh [$f0], a
    db $fc
    rst $38
    rst $38
    cp e
    adc e
    cp a
    rlca
    rrca
    ccf
    rst $38
    rst $38
    ei
    ldh [$fb], a
    ldh [$f0], a
    db $fc
    rst $38
    rst $38
    cp e
    xor e
    cp a
    rlca
    rrca
    ccf
    rst $38
    rst $38
    nop
    ld a, [$7434]
    and a
    jp nz, $0ddc

    jp $0f9d


    ld a, [$7434]
    and a
    jp nz, $0dc9

    jp $0f82


    ld de, $4200
    ld hl, $8800
    ld bc, $3e80
    ldh a, [rLCDC]
    bit 7, a
    jp z, $0fa4

    ld de, $4200
    ld hl, $8800
    ld bc, $3e20
    call $0ddc
    ld de, $4300
    ld hl, $8a00
    ld bc, $3e20
    call $0ddc
    ld de, $4400
    ld hl, $8c00
    ld bc, $3e20
    call $0ddc
    ld de, $4500
    ld hl, $8e00
    ld bc, $3e20
    call $0ddc
    ret


    ld de, $5214
    ld hl, $9600
    ld bc, $3e01
    call $0ddc
    ld de, $4f24
    ld hl, $9620
    ld bc, $3e01
    call $0dc9
    ld de, $4030
    ld hl, $9630
    ld bc, $3e16
    call $0dc9
    jr jr_03e_74cc

    ld de, $5424
    ld hl, $9610
    ld b, $3e
    ld c, $01
    call $0dc9
    ret


Call_03e_74be:
    ld de, $4600
    ld hl, $9600
    ld bc, $3e19
    call $0dc9
    jr jr_03e_74cc

Call_03e_74cc:
jr_03e_74cc:
    ld a, [$cfce]
    and $07
    ld bc, $0030
    ld hl, $4800
    call $30fe
    ld d, h
    ld e, l
    ld hl, $9790
    ld bc, $3e06
    call $0ddc
    ld hl, $97f0
    ld de, $5204
    ld bc, $3e01
    call $0ddc
    ret


    ld de, $4600
    ld hl, $9600
    ld bc, $3e0c
    call $0dc9
    ld hl, $9700
    ld de, $4700
    ld bc, $3e03
    call $0dc9
    call Call_03e_74cc
    ld de, $4ac0
    ld hl, $96c0
    ld bc, $3e04
    call $0ddc
    ld de, $4ae0
    ld hl, $9730
    ld bc, $3e06
    call $0ddc
    ld de, $4b10
    ld hl, $9550
    ld bc, $3e09
    call $0dc9
    ld de, $52a4
    ld hl, $95e0
    ld bc, $3e02
    call $0dc9
    ret


    call Call_03e_74be
    ld de, $4ac0
    ld hl, $96c0
    ld bc, $3e04
    call $0ddc
    ld de, $4ae0
    ld hl, $9780
    ld bc, $3e01
    call $0ddc
    ld de, $4af8
    ld hl, $9760
    ld bc, $3e02
    call $0ddc
    ld de, $4b10
    ld hl, $9550
    ld bc, $3e08
    call $0dc9
    ld de, $49b0
    ld hl, $9310
    ld bc, $3e11
    call $0dc9
    ret


    ld a, [$d003]
    ld hl, $d288
    call $3927
    push hl
    ld a, [$d003]
    inc a
    ld c, a
    ld b, $00
    ld hl, $d280
    add hl, bc
    ld a, [hl]
    pop hl
    cp $fd
    jr z, jr_03e_759c

    cp [hl]
    jr nz, jr_03e_75db

jr_03e_759c:
    ld b, h
    ld c, l
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    cp $65
    jr nc, jr_03e_75db

    ld a, [$c2dc]
    cp $01
    jr nz, jr_03e_75d9

    ld hl, $d281
    ld a, [$d003]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    cp $51
    jr z, jr_03e_75d9

    cp $52
    jr z, jr_03e_75d9

    ld [$cf60], a
    call $3856
    ld hl, $cbea
    add hl, bc
    add hl, bc
    ld a, [$d23d]
    cp [hl]
    jr nz, jr_03e_75db

    inc hl
    ld a, [$d23e]
    cp [hl]
    jr nz, jr_03e_75db

jr_03e_75d9:
    and a
    ret


jr_03e_75db:
    scf
    ret


    ld a, [$d002]
    ld d, a
    ld a, [$dcd7]
    ld b, a
    ld c, $00

jr_03e_75e7:
    ld a, c
    cp d
    jr z, jr_03e_75f8

    push bc
    ld a, c
    ld hl, $dd01
    call $3927
    pop bc
    ld a, [hl+]
    or [hl]
    jr nz, jr_03e_760b

jr_03e_75f8:
    inc c
    dec b
    jr nz, jr_03e_75e7

    ld a, [$d003]
    ld hl, $d2aa
    call $3927
    ld a, [hl+]
    or [hl]
    jr nz, jr_03e_760b

    scf
    ret


jr_03e_760b:
    and a
    ret


    ld hl, $c4a4
    ld de, $d47d
    call $1078
    ld a, $14
    ld [bc], a
    ld hl, $c544
    ld de, $d26b
    call $1078
    ld a, $14
    ld [bc], a
    ld hl, $c4bb
    ld de, $dcd8
    call Call_03e_7634
    ld hl, $c55b
    ld de, $d281

Call_03e_7634:
    ld c, $00

jr_03e_7636:
    ld a, [de]
    cp $ff
    ret z

    ld [$d265], a
    push bc
    push hl
    push de
    push hl
    ld a, c
    ldh [$b3], a
    call $343b
    pop hl
    call $1078
    pop de
    inc de
    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    inc c
    jr jr_03e_7636

    ld b, c
    ld d, b
    ld h, h
    ld [hl-], a
    ld b, c
    ld d, l
    ld [hl-], a
    ld b, c
    ld d, l
    inc d
    add hl, de
    ld d, b
    inc d
    add hl, de
    dec l
    inc hl
    ld [hl-], a
    ld b, [hl]
    add hl, de
    ld [hl-], a
    rra
    dec a
    jr z, jr_03e_76af

    ld [hl-], a
    ld e, d
    ld e, $37
    jr z, jr_03e_76ab

    ld c, e
    jr z, @+$39

    ld c, e
    inc a
    ld d, l
    ld b, c
    ld h, h
    add hl, de
    ld [hl-], a
    jr z, jr_03e_76cb

    ld c, e
    ld d, l
    ld h, h
    scf
    ld d, b
    jr z, jr_03e_76e1

    dec l
    ld b, [hl]
    jr z, jr_03e_76cc

    ld [hl-], a
    ld d, b
    inc hl
    inc a
    ld [hl-], a
    ld d, b
    jr z, @+$34

    ld b, [hl]
    ld l, c
    ld a, b
    add a
    inc hl
    ld [hl-], a
    ld b, c
    ld b, [hl]
    ld d, l
    ld h, h
    ld h, h
    ld a, b
    ld e, $2d
    scf
    ld b, c
    ld d, b
    jr z, jr_03e_76f6

    ld e, a
    ld a, b
    ld a, [hl-]
    inc hl
    inc a

jr_03e_76ab:
    ld b, [hl]
    ld e, a
    jr z, jr_03e_76f0

jr_03e_76af:
    dec l
    ld d, l
    ld h, h
    ld [hl], e
    add d
    ld e, $5a
    ld [hl], e
    add hl, de
    ld [hl-], a
    scf
    ld d, b
    inc a
    ld a, l
    jr z, @+$34

    inc hl
    inc hl
    inc a
    inc a
    ld d, l
    ld e, $2d
    ld l, c
    ld h, h
    jr z, @+$48

    ld e, a

jr_03e_76cb:
    ld [hl-], a

jr_03e_76cc:
    ld d, b
    ld b, [hl]
    ld h, h
    ld h, h
    scf
    ld e, a
    ld d, l
    ld d, l
    scf
    ld b, [hl]
    inc d
    ld h, h
    ld e, a
    jr nc, jr_03e_771c

    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld c, e
    ld e, d
    ld [hl], e

jr_03e_76e1:
    dec l
    ld b, [hl]
    inc a
    ld b, c
    ld a, l
    ld a, l
    ld a, l
    ld [hl-], a
    ld b, [hl]
    ld h, h
    sbc d
    ld h, h
    ld hl, $780f

jr_03e_76f0:
    call $1057
    call $1dcf

jr_03e_76f6:
    jp c, Jump_03e_777e

    ld hl, $7814
    call $1057
    ld a, $14
    ld hl, $4000
    rst $08
    jr c, jr_03e_777e

    ld a, [$d108]
    cp $fd
    jr z, jr_03e_7783

    call $389c
    call Call_03e_778a
    jr c, jr_03e_7779

    ld hl, $7819
    call $1057

jr_03e_771c:
    call $1dcf
    jr c, jr_03e_777e

    ld hl, $781e
    call $1057
    xor a
    ld [$cf5f], a
    ld a, [$d108]
    ld [$d265], a
    ld [$cf60], a
    call $3856
    ld b, $00
    ld de, $d086
    ld a, $04
    ld hl, $56b7
    rst $08
    call Call_03e_77be
    ld hl, $7837
    jr c, jr_03e_776c

    call Call_03e_77d3
    ld hl, $7837
    jr c, jr_03e_776c

    ld hl, $de41
    ld bc, $000b
    ld a, [$d109]
    call $30fe
    ld e, l
    ld d, h
    ld hl, $d086
    ld bc, $000b
    call $3026
    ld hl, $7823

jr_03e_776c:
    push hl
    call $389c
    ld hl, $783c
    call $1057
    pop hl
    jr jr_03e_7786

jr_03e_7779:
    ld hl, $782d
    jr jr_03e_7786

Jump_03e_777e:
jr_03e_777e:
    ld hl, $7828
    jr jr_03e_7786

jr_03e_7783:
    ld hl, $7832

jr_03e_7786:
    call $1057
    ret


Call_03e_778a:
    ld hl, $ddff
    ld bc, $000b
    ld a, [$d109]
    call $30fe
    ld de, $d47d
    ld c, $0b
    call Call_03e_77b1
    jr c, jr_03e_77bc

    ld hl, $dce5
    ld bc, $0030
    ld a, [$d109]
    call $30fe
    ld de, $d47b
    ld c, $02

Call_03e_77b1:
jr_03e_77b1:
    ld a, [de]
    cp [hl]
    jr nz, jr_03e_77bc

    inc hl
    inc de
    dec c
    jr nz, jr_03e_77b1

    and a
    ret


jr_03e_77bc:
    scf
    ret


Call_03e_77be:
    ld hl, $d086
    ld c, $0a

jr_03e_77c3:
    ld a, [hl+]
    cp $50
    jr z, jr_03e_77cf

    cp $7f
    jr nz, jr_03e_77d1

    dec c
    jr nz, jr_03e_77c3

jr_03e_77cf:
    scf
    ret


jr_03e_77d1:
    and a
    ret


Call_03e_77d3:
    ld hl, $de41
    ld bc, $000b
    ld a, [$d109]
    call $30fe
    push hl
    call Call_03e_7802
    ld b, c
    ld hl, $d086
    call Call_03e_7802
    pop hl
    ld a, c
    cp b
    jr nz, jr_03e_77fe

    ld de, $d086

jr_03e_77f2:
    ld a, [de]
    cp $50
    jr z, jr_03e_7800

    cp [hl]
    jr nz, jr_03e_77fe

    inc hl
    inc de
    jr jr_03e_77f2

jr_03e_77fe:
    and a
    ret


jr_03e_7800:
    scf
    ret


Call_03e_7802:
    ld c, $00

jr_03e_7804:
    ld a, [hl+]
    cp $50
    ret z

    inc c
    ld a, c
    cp $0a
    jr nz, jr_03e_7804

    ret


    ld d, $43
    ld b, b
    ld [hl], b
    ld d, b
    ld d, $a0
    ld b, b
    ld [hl], b
    ld d, b
    ld d, $cd
    ld b, b
    ld [hl], b
    ld d, b
    ld d, $42
    ld b, c
    ld [hl], b
    ld d, b
    ld d, $71
    ld b, c
    ld [hl], b
    ld d, b
    ld d, $9e
    ld b, c
    ld [hl], b
    ld d, b
    ld d, $be
    ld b, c
    ld [hl], b
    ld d, b
    ld d, $08
    ld b, d
    ld [hl], b
    ld d, b
    ld d, $22
    ld b, d
    ld [hl], b
    ld d, b
    ld d, $72
    ld b, d
    ld [hl], b
    ld d, b
    ld a, [$c2dd]
    call $37f3
    jr c, jr_03e_7876

    ld hl, $c2b0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $fec0
    add hl, bc
    ld a, l
    ld [$c2b0], a
    ld a, h
    ld [$c2b1], a
    ld hl, $c2b2
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0060
    add hl, bc
    ld a, l
    ld [$c2b2], a
    ld a, h
    ld [$c2b3], a
    ld a, $3a
    ld hl, $4b79
    rst $08
    call $3c55

jr_03e_7876:
    ret


    ldh a, [$de]
    push af
    xor a
    ldh [$de], a
    call $3c9d
    call $31f3
    call $0fc8
    call $1ad2
    call $300b
    ld a, [$c7e5]
    push af
    ldh a, [$cf]
    add $05
    ldh [$cf], a
    xor a
    ld [$c7e5], a
    ld a, $10
    ld hl, $5a7f
    rst $08
    call $0a80
    ld a, $01
    ld [$c7e5], a
    ld a, $11
    ld hl, $424d
    rst $08
    call $0a80
    pop af
    ld [$c7e5], a
    call $3c97
    call $04b6
    ldh a, [$cf]
    add $fb
    ldh [$cf], a
    call Call_03e_78c8
    pop af
    ldh [$de], a
    ret


Call_03e_78c8:
    call $0fc8
    call $0e5f
    call $0e51
    ld a, $10
    ld hl, $4ab2
    rst $08
    call $3200
    ld a, $0f
    ld hl, $5a97
    rst $08
    ld a, [hl+]
    ld [$d123], a
    ld a, [hl]
    ld [$d124], a
    ld b, $1c
    call $3340
    call $32f9
    ret


    push bc
    push hl
    ld a, [$d265]
    ld b, a
    ld c, $00
    ld hl, $791c

jr_03e_78fc:
    inc c
    ld a, [hl+]
    cp b
    jr nz, jr_03e_78fc

    ld a, c
    ld [$d265], a
    pop hl
    pop bc

jr_03e_7907:
    ret


    push bc
    push hl
    ld a, [$d265]
    dec a
    ld hl, $791c
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl]
    ld [$d265], a
    pop hl
    pop bc
    ret


    ld [hl], b
    ld [hl], e
    jr nz, jr_03e_7943

    dec d
    ld h, h
    ld [hl+], a
    ld d, b
    ld [bc], a
    ld h, a
    ld l, h
    ld h, [hl]
    ld e, b
    ld e, [hl]
    dec e
    rra
    ld l, b
    ld l, a
    add e
    dec sp
    sub a
    add d
    ld e, d
    ld c, b
    ld e, h
    ld a, e
    ld a, b
    add hl, bc
    ld a, a
    ld [hl], d
    call nc, $3ad5
    ld e, a
    ld d, $10
    ld c, a
    ld b, b
    ld c, e

jr_03e_7943:
    ld [hl], c
    ld b, e
    ld a, d
    ld l, d
    ld l, e
    jr jr_03e_7979

    ld [hl], $60
    ld c, h
    sub $7e
    ld a, [$527d]
    ld l, l
    rst $10
    jr c, jr_03e_79ac

    ld [hl-], a
    add b
    ret c

    reti


    jp c, $3053

    sub l
    db $db
    call c, $54dd
    inc a
    ld a, h
    sub d
    sub b
    sub c
    add h
    inc [hl]
    ld h, d
    sbc $df
    ldh [rNR51], a
    ld h, $19
    ld a, [de]
    pop hl
    ld [c], a
    sub e
    sub h
    adc h
    adc l
    ld [hl], h
    ld [hl], l

jr_03e_7979:
    db $e3
    db $e4
    dec de
    inc e
    adc d
    adc e
    daa
    jr z, jr_03e_7907

    adc b
    add a
    add [hl]
    ld b, d
    add hl, hl
    rla
    ld l, $3d
    ld a, $0d
    ld c, $0f
    push hl
    ld d, l
    add hl, sp
    inc sp
    ld sp, $e657
    rst $20
    ld a, [bc]
    dec bc
    inc c
    ld b, h
    add sp, $37
    ld h, c
    ld a, [hl+]
    sub [hl]
    adc a
    add c
    jp hl


    ld [$eb59], a
    ld h, e
    ld e, e
    db $ec
    ld h, l
    inc h
    ld l, [hl]
    dec [hl]

jr_03e_79ac:
    ld l, c
    db $ed
    ld e, l
    ccf
    ld b, c
    ld de, $7912
    ld bc, $4903
    xor $76
    ld [hl], a
    rst $28
    ldh a, [$f1]
    ld a, [c]
    ld c, l
    ld c, [hl]
    inc de
    inc d
    ld hl, $4a1e
    adc c
    adc [hl]
    di
    ld d, c
    db $f4
    push af
    inc b
    rlca
    dec b
    ld [$f606], sp
    rst $30
    ld hl, sp-$07
    dec hl
    inc l
    dec l
    ld b, l
    ld b, [hl]
    ld b, a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $cad3

    jp z, $34fa

    jp nc, $064f

    ld a, [de]
    ld hl, $ded9

jr_03e_7a21:
    ld a, [hl+]
    and a
    jr z, jr_03e_7a2b

    cp c
    ret z

    dec b
    jr nz, jr_03e_7a21

    ret


jr_03e_7a2b:
    dec hl
    ld [hl], c
    ret


    ld hl, $c5d0
    ld bc, $000c
    ld a, $7f
    call $3041
    ld a, [$c7dd]
    ld e, a
    ld d, $00
    ld hl, $ded9
    add hl, de
    ld a, [hl]
    ld e, a
    ld d, $00
    ld hl, $7a5a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld hl, $c5d0

jr_03e_7a52:
    ld a, [de]
    cp $ff
    ret z

    inc de
    ld [hl+], a
    jr jr_03e_7a52

    sub b
    ld a, d
    sub b
    ld a, d
    sub [hl]
    ld a, d
    sbc e
    ld a, d
    and c
    ld a, d
    xor b
    ld a, d
    xor a
    ld a, d
    or h
    ld a, d
    cp c
    ld a, d
    cp [hl]
    ld a, d
    rst $00
    ld a, d
    call z, $d17a
    ld a, d
    rst $10
    ld a, d
    call c, $e37a
    ld a, d
    db $eb
    ld a, d
    di
    ld a, d
    ei
    ld a, d
    inc b
    ld a, e
    dec bc
    ld a, e
    db $10
    ld a, e
    dec d
    ld a, e
    inc e
    ld a, e
    ld hl, $277b
    ld a, e
    dec l
    ld a, e
    ld b, b
    ld c, l
    ld b, [hl]
    ld d, c
    ld e, b
    rst $38
    ld b, c
    ld b, h
    ld b, b
    ld d, c
    rst $38
    ld b, d
    ld b, a
    ld b, b
    ld d, d
    ld b, h
    rst $38
    ld b, e
    ld c, b
    ld d, c
    ld b, h
    ld b, d
    ld d, e
    rst $38
    ld b, h
    ld c, l
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld b, h
    rst $38
    ld b, l
    ld c, b
    ld c, l
    ld b, e
    rst $38
    ld b, [hl]
    ld c, b
    ld d, l
    ld b, h
    rst $38
    ld b, a
    ld b, h
    ld c, e
    ld c, a
    rst $38
    ld c, b
    ld c, l
    ld b, d
    ld d, c
    ld b, h
    ld b, b
    ld d, d
    ld b, h
    rst $38
    ld c, c
    ld c, [hl]
    ld c, b
    ld c, l
    rst $38
    ld c, d
    ld b, h
    ld b, h
    ld c, a
    rst $38
    ld c, e
    ld b, b
    ld d, h
    ld b, [hl]
    ld b, a
    rst $38
    ld c, h
    ld b, b
    ld c, d
    ld b, h
    rst $38
    ld c, l
    ld d, h
    ld e, c
    ld e, c
    ld c, e
    ld b, h
    rst $38
    ld c, [hl]
    ld b, c
    ld d, d
    ld b, h
    ld d, c
    ld d, l
    ld b, h
    rst $38
    ld c, a
    ld b, h
    ld d, c
    ld b, l
    ld c, [hl]
    ld d, c
    ld c, h
    rst $38
    ld d, b
    ld d, h
    ld c, b
    ld b, d
    ld c, d
    ld b, h
    ld c, l
    rst $38
    ld d, c
    ld b, h
    ld b, b
    ld d, d
    ld d, d
    ld d, h
    ld d, c
    ld b, h
    rst $38
    ld d, d
    ld b, h
    ld b, b
    ld d, c
    ld b, d
    ld b, a
    rst $38
    ld d, e
    ld b, h
    ld c, e
    ld c, e
    rst $38
    ld d, h
    ld c, l
    ld b, e
    ld c, [hl]
    rst $38
    ld d, l
    ld b, b
    ld c, l
    ld c, b
    ld d, d
    ld b, a
    rst $38
    ld d, [hl]
    ld b, b
    ld c, l
    ld d, e
    rst $38
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    rst $38
    ld e, b
    ld c, b
    ld b, h
    ld c, e
    ld b, e
    rst $38
    ld e, c
    ld c, [hl]
    ld c, [hl]
    ld c, h
    rst $38
    ld a, $14
    ld hl, $4000
    rst $08
    jr c, jr_03e_7b9e

    ld a, [$d108]
    cp $81
    jr nz, jr_03e_7ba4

    ld a, [$d109]
    ld hl, $dcdf
    ld bc, $0030
    call $30fe
    push hl
    ld bc, $0015
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    ld bc, $0006
    add hl, bc
    ld b, h
    ld c, l
    call Call_03e_7bfc
    call Call_03e_7bdb
    ld a, $41
    ld hl, $5f33
    rst $08
    ld hl, $7ba9
    call $1057
    ld hl, $d1ea
    ld de, $dfe8
    ld c, $02
    call $31db
    jr nc, jr_03e_7b98

    ld hl, $d1ea
    ld de, $dfe8
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    inc de
    ld a, [$d109]
    ld hl, $ddff
    call $30f4
    call $3026
    ld a, $03
    ld [$c2dd], a
    ret


jr_03e_7b98:
    ld a, $02
    ld [$c2dd], a
    ret


jr_03e_7b9e:
    ld a, $01
    ld [$c2dd], a
    ret


jr_03e_7ba4:
    xor a
    ld [$c2dd], a
    ret


    ld d, $03
    ld d, d
    ld [hl], b
    ld d, b

Call_03e_7bae:
    ld hl, $96e0
    ld de, $7bbb
    ld bc, $3e02
    call $0eba
    ret


    jr jr_03e_7bd5

    jr nc, @+$32

    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr @+$1a

    inc sp
    inc sp
    ld b, [hl]
    ld b, [hl]
    ld [$0008], sp
    nop

jr_03e_7bd5:
    nop
    nop
    nop
    nop
    nop
    nop

Call_03e_7bdb:
    call Call_03e_7bae
    ld hl, $d073
    ld de, $d1ea
    ld bc, $4102
    call $3198
    ld [hl], $6e
    inc hl
    ld de, $d1eb
    ld bc, $4102
    call $3198
    ld [hl], $6f
    inc hl
    ld [hl], $50
    ret


Call_03e_7bfc:
    ld h, b
    ld l, c
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    rrc b
    rrc c
    ld a, [de]
    inc de
    rrca
    rrca
    xor b
    ld b, a
    ld a, [de]
    rrca
    rrca
    xor c
    ld c, a
    ld a, b
    and a
    jr nz, jr_03e_7c21

    ld a, c
    cp $0a
    jr nc, jr_03e_7c21

    ld hl, $00be
    add hl, bc
    ld d, h
    ld e, l
    jr jr_03e_7c78

jr_03e_7c21:
    ld hl, $7ca8
    ld a, $02
    ld [$d265], a

jr_03e_7c29:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    call Call_03e_7c9a
    jr nc, jr_03e_7c63

    call Call_03e_7ca1
    ld a, b
    ldh [$b3], a
    ld a, c
    ldh [$b4], a
    ld a, [hl]
    ldh [$b7], a
    ld b, $02
    call $3124
    ldh a, [$b6]
    ld c, a
    xor a
    ldh [$b4], a
    ldh [$b5], a
    ld a, $64
    ldh [$b6], a
    ld a, [$d265]
    ldh [$b7], a
    call $3119
    ld b, $00
    ldh a, [$b6]
    add c
    ld e, a
    ldh a, [$b5]
    adc b
    ld d, a
    jr jr_03e_7c78

jr_03e_7c63:
    inc hl
    ld a, [$d265]
    inc a
    ld [$d265], a
    cp $10
    jr c, jr_03e_7c29

    call Call_03e_7ca1
    ld hl, $0640
    add hl, bc
    ld d, h
    ld e, l

jr_03e_7c78:
    ld h, d
    ld l, e
    add hl, hl
    add hl, hl
    add hl, de
    add hl, hl
    ld de, $ff02
    ld a, $ff

jr_03e_7c83:
    inc a
    add hl, de
    jr c, jr_03e_7c83

    ld d, $00

jr_03e_7c89:
    cp $0c
    jr c, jr_03e_7c92

    sub $0c
    inc d
    jr jr_03e_7c89

jr_03e_7c92:
    ld e, a
    ld hl, $d1ea
    ld [hl], d
    inc hl
    ld [hl], e
    ret


Call_03e_7c9a:
    ld a, b
    cp d
    ret c

    ret nc

    ld a, c
    cp e
    ret


Call_03e_7ca1:
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    ret


    ld l, [hl]
    nop
    ld bc, $0136
    ld [bc], a
    add $02
    inc b
    sub [hl]
    ld a, [bc]
    inc d
    ld e, $1e
    ld [hl-], a
    ld l, $45
    ld h, h
    add $7f
    sub [hl]
    ld e, [hl]
    cp d
    sub [hl]

Call_03e_7cc0:
    ld l, [hl]
    pop hl
    ld h, h
    or $f4
    ld [hl-], a
    add $fc
    inc d
    cp d
    cp $05
    add d
    rst $38
    ld [bc], a
    and $ff
    ld bc, $e8fa
    rst $18
    ld [$d1ea], a
    ld a, [$dfe9]
    ld [$d1eb], a
    call Call_03e_7bdb
    ld hl, $7ce8
    call $1057
    ret


    ld d, $3a
    ld d, d
    ld [hl], b
    ld d, b
    ld hl, $c632
    ldh a, [$e4]
    and a
    jr z, jr_03e_7cf8

    ld hl, $d20c

jr_03e_7cf8:
    ld a, [hl]
    swap a
    and $08
    ld b, a
    ld a, [hl+]
    and $08
    srl a
    or b
    ld b, a
    ld a, [hl]
    swap a
    and $08
    srl a
    srl a
    or b
    ld b, a
    ld a, [hl]
    and $08
    srl a
    srl a
    srl a
    or b
    ld b, a
    add a
    add a
    add b
    ld b, a
    ld a, [hl-]
    and $03
    add b
    srl a
    add $1e
    inc a
    ld d, a
    ld a, [hl]
    and $03
    ld b, a
    ld a, [hl]
    and $30
    swap a
    add a
    add a
    or b
    inc a
    cp $06
    jr c, jr_03e_7d41

    inc a
    cp $0a
    jr c, jr_03e_7d41

    add $0a

jr_03e_7d41:
    push af
    ld a, $0f
    call $39e7
    pop af
    ld [hl], a
    ld a, d
    push af
    ld a, $0d
    ld hl, $52dc
    rst $08
    pop af
    ld d, a
    ret


    xor a
    ldh [$d4], a
    ldh a, [$e4]
    and a
    jr z, jr_03e_7d61

    call Call_03e_7d96
    jr jr_03e_7d64

jr_03e_7d61:
    call Call_03e_7d9d

jr_03e_7d64:
    call $0fb6
    jr jr_03e_7d91

    ld a, $0d
    ld hl, $65af
    rst $08
    jr jr_03e_7d77

    ld a, $0d
    ld hl, $65c3
    rst $08

jr_03e_7d77:
    xor a
    ldh [$d4], a
    ldh a, [$e4]
    and a
    jr z, jr_03e_7d85

    call Call_03e_7d96
    xor a
    jr jr_03e_7d8a

jr_03e_7d85:
    call Call_03e_7d9d
    ld a, $31

jr_03e_7d8a:
    ldh [$ad], a
    ld a, $13
    call $2d83

jr_03e_7d91:
    ld a, $01
    ldh [$d4], a
    ret


Call_03e_7d96:
    ld hl, $c4ac
    ld bc, $0707
    ret


Call_03e_7d9d:
    ld hl, $c51a
    ld bc, $0606
    ret


    ld de, $7e13
    ld a, [$c70a]
    ld b, a
    ld a, [$d265]
    ld c, a

jr_03e_7daf:
    ld a, [de]
    inc de
    cp $ff
    jr z, jr_03e_7dc0

    cp b
    jr nz, jr_03e_7dbc

    ld a, [de]
    cp c
    jr z, jr_03e_7dda

jr_03e_7dbc:
    inc de
    inc de
    jr jr_03e_7daf

jr_03e_7dc0:
    ld de, $7e20
    ld a, $0d
    call $39e1
    ld c, a

jr_03e_7dc9:
    ld a, [de]
    inc de
    cp $ff
    jr z, jr_03e_7e12

    cp b
    jr nz, jr_03e_7dd6

    ld a, [de]
    cp c
    jr z, jr_03e_7dda

jr_03e_7dd6:
    inc de
    inc de
    jr jr_03e_7dc9

jr_03e_7dda:
    xor a
    ldh [$b4], a
    ld hl, $d256
    ld a, [hl+]
    ldh [$b5], a
    ld a, [hl]
    ldh [$b6], a
    inc de
    ld a, [de]
    ldh [$b7], a
    call $3119
    ld a, $0a
    ldh [$b7], a
    ld b, $04
    call $3124
    ldh a, [$b4]
    and a
    ld bc, $ffff
    jr nz, jr_03e_7e0a

    ldh a, [$b5]
    ld b, a
    ldh a, [$b6]
    ld c, a
    or b
    jr nz, jr_03e_7e0a

    ld bc, $0001

jr_03e_7e0a:
    ld a, b
    ld [$d256], a
    ld a, c
    ld [$d257], a

jr_03e_7e12:
    ret


    ld bc, $0f15
    ld bc, $0514
    ld [bc], a
    inc d
    rrca
    ld [bc], a
    dec d
    dec b
    rst $38
    ld bc, $0597
    rst $38
    ld a, [$c2dc]
    and a
    ret nz

    ld a, [$cfc0]
    and a
    ret nz

    ldh a, [$e4]
    and a
    ret nz

    push de
    push bc
    ld hl, $7e80
    ld a, [$d858]
    ld b, a
    ld a, [$d857]
    ld c, a

jr_03e_7e3f:
    ld a, [hl]
    cp $ff
    jr z, jr_03e_7e7d

    srl b
    rr c
    jr nc, jr_03e_7e50

    ld a, [$d265]
    cp [hl]
    jr z, jr_03e_7e53

jr_03e_7e50:
    inc hl
    jr jr_03e_7e3f

jr_03e_7e53:
    ld a, [$d256]
    ld h, a
    ld d, a
    ld a, [$d257]
    ld l, a
    ld e, a
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    ld a, e
    or d
    jr nz, jr_03e_7e6f

    ld e, $01

jr_03e_7e6f:
    add hl, de
    jr nc, jr_03e_7e75

    ld hl, $ffff

jr_03e_7e75:
    ld a, h
    ld [$d256], a
    ld a, l
    ld [$d257], a

jr_03e_7e7d:
    pop bc
    pop de
    ret


    ld [bc], a
    rlca
    nop
    ld [$0109], sp
    add hl, de
    ld a, [de]
    dec b
    dec d
    rla
    ld d, $03
    jr jr_03e_7ea3

    inc b
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03e_7ea3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
