; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $046", ROMX[$4000], BANK[$46]

Call_046_4000:
    ld a, $01
    ld [$cd38], a
    jr jr_046_400b

Call_046_4007:
    xor a
    ld [$cd38], a

jr_046_400b:
    call Call_046_43cb
    ld a, $18
    ld [$cd33], a
    ld a, $19
    ld [$cd34], a
    ld a, $04
    ld [$c3f0], a
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a

jr_046_4024:
    call $0a57
    call Call_046_4473
    ld a, [$cf66]
    cp $1b
    jr c, jr_046_4037

    ld a, [$cd34]
    ld [$cf66], a

jr_046_4037:
    call Call_046_44a5
    call $68fa
    ld a, $45
    ld hl, $5dd3
    rst $08
    ld a, $45
    ld hl, $619d
    rst $08
    call $045a
    ld a, [$cf66]
    ld hl, $cd33
    cp [hl]
    jr nz, jr_046_4024

    pop af
    ldh [rSVBK], a
    call Call_046_4452
    call $222a
    ret


    ld a, $01
    ld [$cd38], a
    call Call_046_43cb
    ld a, $18
    ld [$cd33], a
    ld a, $19
    ld [$cd34], a
    ld a, $04
    ld [$c3f0], a
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a

jr_046_407d:
    call $0a57
    call Call_046_4473
    ld a, [$cf66]
    cp $1b
    jr c, jr_046_4090

    ld a, [$cd34]
    ld [$cf66], a

jr_046_4090:
    call Call_046_457c
    call $68fa
    ld a, $45
    ld hl, $5dd3
    rst $08
    ld a, $45
    ld hl, $619d
    rst $08
    call $045a
    ld a, [$cf66]
    ld hl, $cd33
    cp [hl]
    jr nz, jr_046_407d

    pop af
    ldh [rSVBK], a
    call Call_046_4452
    call $222a
    ret


Call_046_40b8:
    call Call_046_43cb
    ld a, $22
    ld [$cd33], a
    ld a, $23
    ld [$cd34], a
    ld a, $04
    ld [$c3f0], a
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a

jr_046_40d1:
    call $0a57
    call Call_046_4473
    ld a, [$cf66]
    cp $28
    jr c, jr_046_40e4

    ld a, [$cd34]
    ld [$cf66], a

jr_046_40e4:
    ld a, [$cf66]
    cp $10
    jr c, jr_046_40f2

    cp $16
    jr nc, jr_046_40f2

    call Call_046_484c

jr_046_40f2:
    call Call_046_44ec
    call $68fa
    ld a, $45
    ld hl, $5dd3
    rst $08
    ld a, $45
    ld hl, $619d
    rst $08
    call $045a
    ld a, [$cf66]
    ld hl, $cd33
    cp [hl]
    jr nz, jr_046_40d1

    pop af
    ldh [rSVBK], a
    call Call_046_4452
    call $222a
    ret


    ld a, $01
    ld [$cd38], a
    jr jr_046_4125

    xor a
    ld [$cd38], a

jr_046_4125:
    call Call_046_43cb
    ld a, $03
    ld [$cd33], a
    ld a, $0d
    ld [$cd34], a
    ld a, $04
    ld [$c3f0], a
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a

jr_046_413e:
    call $0a57
    call Call_046_4473
    ld a, [$cf66]
    cp $0f
    jr c, jr_046_4151

    ld a, [$cd34]
    ld [$cf66], a

jr_046_4151:
    call Call_046_454d
    call $68fa
    ld a, $45
    ld hl, $5dd3
    rst $08
    ld a, $45
    ld hl, $619d
    rst $08
    call $045a
    ld a, [$cf66]
    ld hl, $cd33
    cp [hl]
    jr nz, jr_046_413e

    xor a
    ld [$d000], a
    pop af
    ldh [rSVBK], a
    call Call_046_4452
    call Call_046_4180
    call $222a
    ret


Call_046_4180:
    ld a, [$c2dd]
    and a
    ret nz

    ld a, [$cd38]
    and a
    ret z

    ld a, $05
    call $2fcb
    ld hl, $cd69
    ld de, $a89c
    ld bc, $0016
    call $3026
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    ld de, $d202
    ld c, $96
    ld a, $5f
    ld hl, $50b3
    rst $08
    jr c, jr_046_41d0

    ld de, $d202
    ld bc, $0196
    ld a, $5f
    ld hl, $51e1
    rst $08
    jr c, jr_046_41d0

    ld hl, $d202
    ld de, $a8b2
    ld bc, $0096
    call $3026

jr_046_41c9:
    pop af
    ldh [rSVBK], a
    call $2fe1
    ret


jr_046_41d0:
    ld a, $d3
    ld [$c300], a
    ld [$c2dd], a
    jr jr_046_41c9

    call Call_046_43cb
    ld a, $02
    ld [$cd38], a
    ld a, $21
    ld [$cd33], a
    ld a, $22
    ld [$cd34], a
    ld a, $04
    ld [$c3f0], a
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a

jr_046_41f8:
    call $0a57
    call Call_046_4473
    ld a, [$cf66]
    cp $28
    jr c, jr_046_420b

    ld a, [$cd34]
    ld [$cf66], a

jr_046_420b:
    call Call_046_45c3
    call $68fa
    ld a, $45
    ld hl, $5dd3
    rst $08
    ld a, $45
    ld hl, $619d
    rst $08
    call $045a
    ld a, [$cf66]
    ld hl, $cd33
    cp [hl]
    jr nz, jr_046_41f8

    pop af
    ldh [rSVBK], a
    call Call_046_4452
    call $222a
    ret


    call Call_046_43cb
    ld a, $1b
    ld [$cd33], a
    ld a, $1c
    ld [$cd34], a
    ld a, $06
    ld [$c3f0], a
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a

jr_046_424c:
    call $0a57
    call Call_046_4473
    ld a, [$cf66]
    cp $1e
    jr c, jr_046_425f

    ld a, [$cd34]
    ld [$cf66], a

jr_046_425f:
    call Call_046_4624
    call $68fa
    ld a, $45
    ld hl, $5dd3
    rst $08
    ld a, $45
    ld hl, $619d
    rst $08
    call $045a
    ld a, [$cf66]
    ld hl, $cd33
    cp [hl]
    jr nz, jr_046_424c

    pop af
    ldh [rSVBK], a
    call Call_046_4452
    ret


    call Call_046_43cb
    ld a, $19
    ld [$cd33], a
    ld a, $1e
    ld [$cd34], a
    ld a, $05
    ld [$c3f0], a
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a

jr_046_429d:
    call $0a57
    call Call_046_4473
    ld a, [$cf66]
    cp $20
    jr c, jr_046_42b0

    ld a, [$cd34]
    ld [$cf66], a

jr_046_42b0:
    call Call_046_46f5
    call $68fa
    ld a, $45
    ld hl, $5dd3
    rst $08
    ld a, $45
    ld hl, $619d
    rst $08
    call $045a
    ld a, [$cf66]
    ld hl, $cd33
    cp [hl]
    jr nz, jr_046_429d

    pop af
    ldh [rSVBK], a
    call Call_046_4452
    ret


    call Call_046_43cb
    ld a, $18
    ld [$cd33], a
    ld a, $19
    ld [$cd34], a
    ld a, $04
    ld [$c3f0], a
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a

jr_046_42ee:
    call $0a57
    call Call_046_4473
    ld a, [$cf66]
    cp $1b
    jr c, jr_046_4301

    ld a, [$cd34]
    ld [$cf66], a

jr_046_4301:
    call Call_046_4746
    call $68fa
    ld a, $45
    ld hl, $5dd3
    rst $08
    ld a, $45
    ld hl, $619d
    rst $08
    call $045a
    ld a, [$cf66]
    ld hl, $cd33
    cp [hl]
    jr nz, jr_046_42ee

    pop af
    ldh [rSVBK], a
    call Call_046_4452
    call $222a
    ret


    call Call_046_43cb
    ld a, $15
    ld [$cd33], a
    ld a, $16
    ld [$cd34], a
    ld a, $06
    ld [$c3f0], a
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a

jr_046_4342:
    call $0a57
    call Call_046_4473
    ld a, [$cf66]
    cp $18
    jr c, jr_046_4355

    ld a, [$cd34]
    ld [$cf66], a

jr_046_4355:
    call Call_046_4671
    call $68fa
    ld a, $45
    ld hl, $5dd3
    rst $08
    ld a, $45
    ld hl, $619d
    rst $08
    call $045a
    ld a, [$cf66]
    ld hl, $cd33
    cp [hl]
    jr nz, jr_046_4342

    pop af
    ldh [rSVBK], a
    call Call_046_4452
    ret


    call Call_046_43cb
    ld a, $16
    ld [$cd33], a
    ld a, $17
    ld [$cd34], a
    ld a, $06
    ld [$c3f0], a
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a

jr_046_4393:
    call $0a57
    call Call_046_4473
    ld a, [$cf66]
    cp $19
    jr c, jr_046_43a6

    ld a, [$cd34]
    ld [$cf66], a

jr_046_43a6:
    call Call_046_46b2
    call $68fa
    ld a, $45
    ld hl, $5dd3
    rst $08
    ld a, $45
    ld hl, $619d
    rst $08
    call $045a
    ld a, [$cf66]
    ld hl, $cd33
    cp [hl]
    jr nz, jr_046_4393

    pop af
    ldh [rSVBK], a
    call Call_046_4452
    ret


Call_046_43cb:
    di
    ldh a, [rIE]
    ld [$cd32], a
    call $2fef
    xor a
    ldh [rIF], a
    ld [$c300], a
    ld [$c301], a
    ld [$c302], a
    ld [$cd80], a
    ld [$cd65], a
    ld [$cd66], a
    ld [$cd67], a
    ld [$cd68], a
    ld [$c31a], a
    ld [$cd89], a
    ld [$cd8a], a
    ld [$cd8b], a
    ld [$c3ec], a
    ld [$c3ed], a
    ld [$c3ee], a
    ld [$c3ef], a
    ld hl, $d0ed
    ld a, [hl]
    ld [$cd7f], a
    set 1, [hl]
    ld a, $0f
    ldh [rIE], a
    ld a, $01
    ldh [$c9], a
    ldh [$e9], a
    ei
    ld a, $41
    ld hl, $6462
    rst $08
    ld a, $41
    ld hl, $6464
    rst $08
    ld a, $45
    ld hl, $5d99
    rst $08
    ld a, $45
    ld hl, $615a
    rst $08
    ld a, $05
    call $2fcb
    xor a
    ld [$bfff], a
    call $2fe1
    ret


Call_046_4440:
    push af
    ld a, $05
    call $2fcb
    ld a, [$bfff]
    inc a
    ld [$bfff], a
    call $2fe1
    pop af
    ret


Call_046_4452:
    di
    xor a
    ldh [$c9], a
    ldh [$e9], a
    ldh [$9e], a
    call $2ff7
    xor a
    ldh [rIF], a
    ld a, [$cd32]
    ldh [rIE], a
    ei
    ld a, [$cd7f]
    ld [$d0ed], a
    ld a, [$c300]
    ld [$c2dd], a
    ret


Call_046_4473:
    ld a, [$cd65]
    and a
    ret z

    ld a, [$cd66]
    inc a
    ld [$cd66], a
    cp $3c
    ret nz

    xor a
    ld [$cd66], a
    ld a, [$cd67]
    inc a
    ld [$cd67], a
    cp $3c
    ret nz

    ld a, [$cd68]
    inc a
    ld [$cd68], a
    cp $63
    jr z, jr_046_44a0

    xor a
    ld [$cd67], a
    ret


jr_046_44a0:
    xor a
    ld [$cd65], a
    ret


Call_046_44a5:
    ld a, [$cf66]
    ld e, a
    ld d, $00
    ld hl, $44b4
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld l, [hl]
    ld c, b
    add b
    ld c, b
    adc l
    ld b, a
    or b
    ld c, b
    adc l
    ld b, a
    cp b
    ld c, b
    adc l
    ld b, a
    ret nz

    ld c, b
    adc l
    ld b, a
    ret z

    ld c, b
    adc l
    ld b, a
    inc bc
    ld c, c
    adc a
    ld c, d
    adc l
    ld b, a
    add b
    ld c, l
    sbc e
    ld c, l
    adc l
    ld b, a
    db $ed
    ld c, l
    ld l, l
    ld c, [hl]
    adc l
    ld b, a
    ld c, [hl]
    ld e, b
    db $76
    ld c, [hl]
    ld a, [hl]
    ld c, [hl]
    adc l
    ld b, a
    ld e, [hl]
    ld b, b
    db $76
    ld c, [hl]
    add a
    ld c, [hl]
    db $76
    ld c, [hl]

Call_046_44ec:
    ld a, [$cf66]
    ld e, a
    ld d, $00
    ld hl, $44fb
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld l, [hl]
    ld c, b
    add b
    ld c, b
    adc l
    ld b, a
    or b
    ld c, b
    adc l
    ld b, a
    cp b
    ld c, b
    adc l
    ld b, a
    ret nz

    ld c, b
    adc l
    ld b, a
    ret z

    ld c, b
    adc l
    ld b, a
    inc bc
    ld c, c
    ld d, h
    ld e, c
    adc l
    ld b, a
    ld [hl], e
    ld e, c
    adc l
    ld b, a
    add a
    ld e, c
    adc l
    ld b, a
    or h
    ld e, c
    jp z, $8d59

    ld b, a
    ld [c], a
    ld e, c
    dec c
    ld e, e
    adc l
    ld b, a
    ld l, e
    ld e, e
    dec sp
    ld e, e
    adc l
    ld b, a
    ld d, d
    ld e, e
    adc l
    ld b, a
    ld l, l
    ld c, [hl]
    adc l
    ld b, a
    db $76
    ld c, [hl]
    ld a, [hl]
    ld c, [hl]
    adc l
    ld b, a
    ld e, [hl]
    ld b, b
    db $76
    ld c, [hl]
    add a
    ld c, [hl]
    ld b, l
    ld e, e
    adc l
    ld b, a
    ret


    ld e, d
    db $76
    ld c, [hl]

Call_046_454d:
    ld a, [$cf66]
    ld e, a
    ld d, $00
    ld hl, $455c
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld [hl+], a
    ld c, c
    ld [hl], $49
    add d
    ld c, c
    ld e, [hl]
    ld b, b
    and d
    ld e, h
    xor e
    ld e, h
    cp b
    ld e, h
    jp $df5c


    ld e, h
    db $ec
    ld e, h
    sub a
    ld e, h
    xor e
    ld e, h
    cp b
    ld e, h
    db $76
    ld c, [hl]
    add a
    ld c, [hl]
    db $76
    ld c, [hl]

Call_046_457c:
    ld a, [$cf66]
    ld e, a
    ld d, $00
    ld hl, $458b
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld l, [hl]
    ld c, b
    add b
    ld c, b
    adc l
    ld b, a
    or b
    ld c, b
    adc l
    ld b, a
    cp b
    ld c, b
    adc l
    ld b, a
    ret nz

    ld c, b
    adc l
    ld b, a
    ret z

    ld c, b
    adc l
    ld b, a
    inc bc
    ld c, c
    ld a, d
    ld c, d
    adc l
    ld b, a
    inc e
    ld c, c
    xor $58
    rst $30
    ld e, b
    adc l
    ld b, a
    scf
    ld e, c
    ld l, l
    ld c, [hl]
    adc l
    ld b, a
    db $76
    ld c, [hl]
    ld a, [hl]
    ld c, [hl]
    adc l
    ld b, a
    ld e, [hl]
    ld b, b
    db $76
    ld c, [hl]
    add a
    ld c, [hl]
    db $76
    ld c, [hl]

Call_046_45c3:
    ld a, [$cf66]
    ld e, a
    ld d, $00
    ld hl, $45d2
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld l, [hl]
    ld c, b
    add b
    ld c, b
    adc l
    ld b, a
    or b
    ld c, b
    adc l
    ld b, a
    cp b
    ld c, b
    adc l
    ld b, a
    ret nz

    ld c, b
    adc l
    ld b, a
    ret z

    ld c, b
    adc l
    ld b, a
    inc bc
    ld c, c
    and h
    ld c, d
    adc l
    ld b, a
    sub d
    ld c, [hl]
    adc l
    ld b, a
    or b
    ld c, [hl]
    add $4e
    dec c
    ld c, a
    inc d
    ld c, a
    ld e, [hl]
    ld c, a
    adc l
    ld b, a
    ret nz

    ld c, a
    adc l
    ld b, a
    ld d, h
    ld d, b
    ret nc

    ld d, b
    adc l
    ld b, a
    db $ec
    ld d, b
    ld l, l
    ld c, [hl]
    adc l
    ld b, a
    db $76
    ld c, [hl]
    ld a, [hl]
    ld c, [hl]
    adc l
    ld b, a
    ld e, [hl]
    ld b, b
    db $76
    ld c, [hl]
    add a
    ld c, [hl]
    jp $df5c


    ld e, h
    db $ec
    ld e, h
    ld c, [hl]
    ld d, c
    db $76
    ld c, [hl]

Call_046_4624:
    ld a, [$cf66]
    ld e, a
    ld d, $00
    ld hl, $4633
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld h, [hl]
    ld c, b
    add b
    ld c, b
    adc l
    ld b, a
    or b
    ld c, b
    adc l
    ld b, a
    cp b
    ld c, b
    adc l
    ld b, a
    ret nz

    ld c, b
    adc l
    ld b, a
    ret z

    ld c, b
    adc l
    ld b, a
    inc bc
    ld c, c
    and h
    ld c, d
    adc l
    ld b, a
    sub d
    ld c, [hl]
    adc l
    ld b, a
    ld e, l
    ld d, c
    ld l, b
    ld c, a
    adc l
    ld b, a
    add hl, bc
    ld d, b
    adc l
    ld b, a
    ld d, h
    ld d, b
    ld l, l
    ld c, [hl]
    adc l
    ld b, a
    db $76
    ld c, [hl]
    ld a, [hl]
    ld c, [hl]
    adc l
    ld b, a
    ld e, [hl]
    ld b, b
    db $76
    ld c, [hl]
    add a
    ld c, [hl]
    db $76
    ld c, [hl]

Call_046_4671:
    ld a, [$cf66]
    ld e, a
    ld d, $00
    ld hl, $4680
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld h, [hl]
    ld c, b
    add b
    ld c, b
    adc l
    ld b, a
    or b
    ld c, b
    adc l
    ld b, a
    cp b
    ld c, b
    adc l
    ld b, a
    ret nz

    ld c, b
    adc l
    ld b, a
    ret z

    ld c, b
    adc l
    ld b, a
    inc bc
    ld c, c
    add b
    ld d, e
    adc b
    ld d, e
    and b
    ld d, e
    adc l
    ld b, a
    ld l, l
    ld c, [hl]
    adc l
    ld b, a
    db $76
    ld c, [hl]
    ld a, [hl]
    ld c, [hl]
    adc l
    ld b, a
    ld e, [hl]
    ld b, b
    db $76
    ld c, [hl]
    add a
    ld c, [hl]
    db $76
    ld c, [hl]

Call_046_46b2:
    ld a, [$cf66]
    ld e, a
    ld d, $00
    ld hl, $46c1
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld h, [hl]
    ld c, b
    add b
    ld c, b
    adc l
    ld b, a
    or b
    ld c, b
    adc l
    ld b, a
    cp b
    ld c, b
    adc l
    ld b, a
    ret nz

    ld c, b
    adc l
    ld b, a
    ret z

    ld c, b
    adc l
    ld b, a
    inc bc
    ld c, c
    add b
    ld d, e
    db $e3
    ld d, e
    ei
    ld d, e
    adc l
    ld b, a
    inc de
    ld d, h
    ld l, l
    ld c, [hl]
    adc l
    ld b, a
    db $76
    ld c, [hl]
    ld a, [hl]
    ld c, [hl]
    adc l
    ld b, a
    ld e, [hl]
    ld b, b
    db $76
    ld c, [hl]
    add a
    ld c, [hl]
    db $76
    ld c, [hl]

Call_046_46f5:
    ld a, [$cf66]
    ld e, a
    ld d, $00
    ld hl, $4704
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld l, d
    ld c, b
    add b
    ld c, b
    adc l
    ld b, a
    or b
    ld c, b
    adc l
    ld b, a
    cp b
    ld c, b
    adc l
    ld b, a
    ret nz

    ld c, b
    adc l
    ld b, a
    ret z

    ld c, b
    adc l
    ld b, a
    inc bc
    ld c, c
    cp h
    ld c, d
    adc l
    ld b, a
    ld d, c
    ld d, h
    ld hl, sp+$55
    ld [de], a
    ld d, [hl]
    add hl, hl
    ld d, [hl]
    ld c, b
    ld d, [hl]
    adc l
    ld b, a
    ld l, l
    ld c, [hl]
    adc l
    ld b, a
    db $76
    ld c, [hl]
    ld a, [hl]
    ld c, [hl]
    adc l
    ld b, a
    ld e, [hl]
    ld b, b
    ld a, l
    ld d, [hl]
    add l
    ld d, [hl]
    ld h, l
    ld d, [hl]
    ld l, l
    ld d, [hl]
    db $76
    ld c, [hl]
    add a
    ld c, [hl]
    db $76
    ld c, [hl]

Call_046_4746:
    ld a, [$cf66]
    ld e, a
    ld d, $00
    ld hl, $4755
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld l, [hl]
    ld c, b
    add b
    ld c, b
    adc l
    ld b, a
    or b
    ld c, b
    adc l
    ld b, a
    cp b
    ld c, b
    adc l
    ld b, a
    ret nz

    ld c, b
    adc l
    ld b, a
    ret z

    ld c, b
    adc l
    ld b, a
    inc bc
    ld c, c
    ret nc

    ld c, d
    adc l
    ld b, a
    ld a, [c]
    ld d, [hl]
    ret


    ld d, a
    call c, $8d57
    ld b, a
    ld l, l
    ld c, [hl]
    adc l
    ld b, a
    nop
    ld e, b
    db $76
    ld c, [hl]
    ld a, [hl]
    ld c, [hl]
    adc l
    ld b, a
    ld e, [hl]
    ld b, b
    db $76
    ld c, [hl]
    add a
    ld c, [hl]
    db $76
    ld c, [hl]
    ld a, [$c821]
    bit 1, a
    jr nz, jr_046_47af

    bit 2, a
    jr nz, jr_046_47d1

    bit 0, a
    jr nz, jr_046_47aa

    ld a, [$cd89]
    and $01
    jr z, jr_046_47a7

    ld a, $03
    ldh [rSVBK], a

jr_046_47a7:
    jp Jump_046_5e2e


jr_046_47aa:
    call Call_046_4821
    ret c

    ret


jr_046_47af:
    ld a, $00
    call $3e32
    ld [$c300], a
    ld a, l
    ld [$c301], a
    ld a, h
    ld [$c302], a
    ld a, $0a
    call $3e32
    ld a, [$c3f0]
    ld [$c319], a
    ld a, [$cd34]
    ld [$cf66], a
    ret


jr_046_47d1:
    ld hl, $cd89
    bit 0, [hl]
    jr nz, jr_046_4803

    set 0, [hl]
    ld a, $06
    ldh [rSVBK], a
    ld de, $d000
    ld bc, $1000
    ld a, [hl]
    sla a
    jr c, jr_046_47f9

    sla a
    jr c, jr_046_47fd

    sla a
    jr c, jr_046_47f5

    ld a, $24
    jr jr_046_47ff

jr_046_47f5:
    ld a, $28
    jr jr_046_47ff

jr_046_47f9:
    ld a, $2a
    jr jr_046_47ff

jr_046_47fd:
    ld a, $2c

jr_046_47ff:
    call $3e32
    ret


jr_046_4803:
    ld a, $d3

Call_046_4805:
Jump_046_4805:
    ld [$c300], a
    xor a
    ld [$c301], a
    ld [$c302], a
    ld a, $0a
    call $3e32
    ld a, [$c3f0]
    ld [$c319], a
    ld a, [$cd34]
    ld [$cf66], a
    ret


Call_046_4821:
    ld a, [$c319]
    cp $03
    jr c, jr_046_484a

    cp $04
    jr z, jr_046_484a

    ldh a, [$a8]
    cp $05
    jr nz, jr_046_484a

    ld a, $0a
    call $3e32
    ld a, $0a
    ld [$c300], a
    ld a, [$c3f0]
    ld [$c319], a
    ld a, [$cd34]
    ld [$cf66], a
    scf
    ret


jr_046_484a:
    and a
    ret


Call_046_484c:
    ldh a, [$a8]
    cp $05
    jr nz, jr_046_4864

    ld a, $0a
    call $3e32
    ld a, $0a
    ld [$c300], a
    ld a, [$cd34]
    ld [$cf66], a
    scf
    ret


jr_046_4864:
    and a
    ret


    ld a, $02
    jr jr_046_486f

    ld a, $01
    jr jr_046_486f

    xor a

jr_046_486f:
    ld [$cd48], a
    ld a, $00
    ld [$cd3c], a
    call Call_046_5e2e
    ld a, [$cd33]
    ld [$cd45], a
    call Call_046_5ed8
    ret c

    xor a
    ld [$cf64], a
    ld [$c807], a
    ld de, $cd81
    ld hl, $0046
    ld a, $02
    jp Jump_046_5e2b


    ld a, [$c821]
    bit 1, a
    jr nz, jr_046_48a5

    bit 2, a
    jr nz, jr_046_48a5

    bit 0, a
    jr z, jr_046_48aa

jr_046_48a5:
    ld a, $34
    jp Jump_046_5e2b


jr_046_48aa:
    call Call_046_5e2e
    jp Jump_046_5e2e


    ld de, $c346
    ld a, $0c
    jp Jump_046_5e2b


    ld de, $c3ac
    ld a, $0e
    jp Jump_046_5e2b


    ld de, $c3cd
    ld a, $10
    jp Jump_046_5e2b


    ld a, $01
    ld [$cd65], a
    call Call_046_48e7
    ld hl, $c708

jr_046_48d3:
    ld a, [de]
    inc de
    ld [hl+], a
    and a
    jr nz, jr_046_48d3

    call Call_046_5eb4
    call Call_046_5ec2
    ld hl, $c708
    ld a, $06
    jp Jump_046_5e2b


Call_046_48e7:
    ld de, $c346
    ld a, $05
    call $2fcb
    ld a, [$aa4a]
    call $2fe1
    and a
    ret z

    sla a
    ld c, a

jr_046_48fa:
    ld a, [de]
    inc de
    and a
    jr nz, jr_046_48fa

    dec c
    jr nz, jr_046_48fa

    ret


    ld a, [$c3f0]
    ld [$c319], a
    ld c, $01
    ld a, $45
    ld hl, $5e18
    rst $08
    ld a, $08
    ld [$cd3c], a
    call Call_046_5ed8
    jp Jump_046_5e2e


    call Call_046_4b42
    jp Jump_046_5e2e


    ld a, [$cd38]
    and a
    jr nz, jr_046_492d

    ld hl, $6ba5
    jr jr_046_4930

jr_046_492d:
    ld hl, $6bcb

jr_046_4930:
    call Call_046_69c0
    call Call_046_5e2e
    ld a, [$c31a]
    and a
    ret nz

    ld hl, $5cf7
    call $1d35
    call $1cbb
    call $1cfd
    call $321c
    ld hl, $ce89
    ld a, $40
    or [hl]
    ld [hl], a
    call $3200
    ld a, $01
    ld [$cd4f], a
    ld a, $01
    ldh [rSVBK], a
    ld a, [$d84c]
    bit 6, a
    jr nz, jr_046_496b

    ld hl, $5d64
    ld a, $05
    jr jr_046_4970

jr_046_496b:
    ld hl, $5d0c
    ld a, $0b

jr_046_4970:
    ld [$cd4a], a
    ld a, l
    ld [$cd4b], a
    ld a, h
    ld [$cd4c], a
    ld a, $03
    ldh [rSVBK], a
    call Call_046_5e2e
    ld hl, $c54d
    ld de, $5d07
    call $1078
    ld hl, $c575
    ld de, $5d07
    call $1078
    ld a, [$cd4b]
    ld l, a
    ld a, [$cd4c]
    ld h, a
    ld d, $00
    ld a, [$cd4f]
    dec a
    rlca
    rlca
    rlca
    ld e, a
    add hl, de
    ld a, l
    ld e, a
    ld a, h
    ld d, a
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld bc, $d099

jr_046_49b5:
    ld a, [hl+]
    cp $50
    jr z, jr_046_49c4

    cp $7f
    jr z, jr_046_49c2

    ld [bc], a
    inc bc
    jr jr_046_49b5

jr_046_49c2:
    ld a, $50

jr_046_49c4:
    ld [bc], a
    pop af
    ldh [rSVBK], a
    ld hl, $c561
    call $1078
    ld hl, $ffa7
    ld a, [hl]
    and $02
    jr nz, jr_046_4a39

    ld a, [hl]
    and $01
    jr nz, jr_046_4a01

    ld a, [hl]
    and $80
    jr nz, jr_046_49e6

    ld a, [hl]
    and $40
    jr nz, jr_046_49f2

jr_046_49e5:
    ret


jr_046_49e6:
    ld hl, $cd4f
    dec [hl]
    jr nz, jr_046_49e5

    ld a, [$cd4a]
    ld [hl], a
    jr jr_046_49e5

jr_046_49f2:
    ld a, [$cd4a]
    ld hl, $cd4f
    inc [hl]
    cp [hl]
    jr nc, jr_046_49e5

    ld a, $01
    ld [hl], a
    jr jr_046_49e5

jr_046_4a01:
    call $2009
    ld a, [$cd4f]
    ld hl, $cd4a
    cp [hl]
    jr z, jr_046_4a3c

    dec a
    and $fe
    srl a
    ld [$cf65], a
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    call $1c17
    pop af
    ldh [rSVBK], a
    ld a, [$cd38]
    and a
    jr nz, jr_046_4a30

    call Call_046_5d93
    ret c

    call Call_046_5dd1
    ret c

jr_046_4a30:
    ld a, [$cd4f]
    ld [$d800], a
    jp Jump_046_5e2e


jr_046_4a39:
    call $2009

jr_046_4a3c:
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    call $1c17
    pop af
    ldh [rSVBK], a
    ld a, $07
    ld [$cf66], a
    ld a, $00
    ld [$cd46], a
    ret


    ld a, [$cd55]
    ld l, a
    ld a, [$cd56]
    ld h, a
    ld de, $c3ec
    ld bc, $0004
    jp Jump_046_4ae4


    ld hl, $4bf7
    ld de, $cc60
    ld bc, $0080
    call $3026
    ld de, $d000
    ld bc, $1000
    jp Jump_046_4b10


    ld hl, $4bf7
    ld de, $cc60
    ld bc, $0080
    call $3026
    ld de, $d000
    ld bc, $1000
    jp Jump_046_4b10


    ld hl, $4ba5
    ld de, $cc60
    ld bc, $0080
    call $3026
    ld de, $d000
    ld bc, $1000
    jp Jump_046_4b10


    ld hl, $4c47
    ld de, $cc60
    ld bc, $0080
    call $3026
    ld a, $05
    ldh [rSVBK], a
    ld de, $d100
    ld bc, $0e00
    jr jr_046_4b10

    ld hl, $4c95
    ld de, $cc60
    ld bc, $0080
    call $3026
    ld de, $d000
    ld bc, $1000
    jr jr_046_4b10

    ld hl, $4ce5
    ld de, $cc60
    ld bc, $0080
    call $3026
    ld de, $d000
    ld bc, $1000
    jr jr_046_4b10

Jump_046_4ae4:
    push bc
    push de
    push hl
    ld a, $08
    ld [$cd3c], a
    call Call_046_5ed8
    pop hl
    ld c, $00
    ld de, $cc60

jr_046_4af5:
    ld a, [hl+]
    ld [de], a
    inc de
    and a
    jr z, jr_046_4b06

    inc c
    ld a, c
    cp $a6
    jr c, jr_046_4af5

    ld a, $da
    jp Jump_046_4805


jr_046_4b06:
    call Call_046_4b24
    pop de
    pop bc
    ld a, $2a
    jp Jump_046_5e2b


Jump_046_4b10:
jr_046_4b10:
    push de
    push bc
    ld a, $08
    ld [$cd3c], a
    call Call_046_5ed8
    call Call_046_4b24
    pop bc
    pop de
    ld a, $2a
    jp Jump_046_5e2b


Call_046_4b24:
    ld hl, $c346
    ld a, $08
    ld [hl+], a
    ld a, $c7
    ld [hl+], a
    ld a, $60
    ld [hl+], a
    ld a, $cc
    ld [hl+], a
    call Call_046_5eb4
    call Call_046_5ec2
    ld a, $80
    ld [$cd89], a
    ld hl, $c346
    ret


Call_046_4b42:
    ld hl, $d002
    ld a, l
    ld [$cd51], a
    ld a, h
    ld [$cd52], a
    call Call_046_4b8c
    ld a, l
    ld [$cd55], a
    ld [$cd59], a
    ld a, h
    ld [$cd56], a
    ld [$cd5a], a
    call Call_046_4b8c
    ld a, l
    ld [$cd53], a
    ld [$cd5d], a
    ld a, h
    ld [$cd54], a
    ld [$cd5e], a
    call Call_046_4b8c
    ld a, l
    ld [$cd57], a
    ld [$cd5b], a
    ld a, h
    ld [$cd58], a
    ld [$cd5c], a
    call Call_046_4b8c
    ld a, l
    ld [$cd5f], a
    ld a, h
    ld [$cd60], a
    ret


Call_046_4b8c:
jr_046_4b8c:
    call Call_046_4b9a
    ret nc

    ld a, [hl+]
    cp $0d
    jr nz, jr_046_4b8c

    dec hl
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


Call_046_4b9a:
    ld a, h
    cp $e0
    ret c

    ld a, $d3
    call Call_046_4805
    and a
    ret


    ld l, b
    ld [hl], h
    ld [hl], h
    ld [hl], b
    ld a, [hl-]
    cpl
    cpl
    ld h, a
    ld h, c
    ld l, l
    ld h, l
    ld h, d
    ld l, a
    ld a, c
    ld l, $64
    ld h, c
    ld [hl], h
    ld h, c
    ld h, e
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, $6e
    ld h, l
    ld l, $6a
    ld [hl], b
    cpl
    ld h, e
    ld h, a
    ld h, d
    cpl
    ld h, h
    ld l, a
    ld [hl], a
    ld l, [hl]
    ld l, h
    ld l, a
    ld h, c
    ld h, h
    ccf
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    dec a
    cpl
    jr nc, jr_046_4c0b

    cpl
    ld b, e
    ld b, a
    ld b, d
    dec l
    ld b, d
    ld e, b
    ld d, h
    ld c, d
    cpl
    ld h, l
    ld a, b
    ld h, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    cpl
    ld l, c
    ld l, [hl]
    ld h, h
    ld h, l
    ld a, b
    ld l, $74
    ld a, b
    ld [hl], h
    nop
    ld l, b
    ld [hl], h
    ld [hl], h
    ld [hl], b
    ld a, [hl-]
    cpl
    cpl
    ld h, a
    ld h, c
    ld l, l
    ld h, l
    ld h, d
    ld l, a
    ld a, c
    ld l, $64
    ld h, c
    ld [hl], h
    ld h, c
    ld h, e

jr_046_4c0b:
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, $6e
    ld h, l
    ld l, $6a
    ld [hl], b
    cpl
    ld h, e
    ld h, a
    ld h, d
    cpl
    ld h, h
    ld l, a
    ld [hl], a
    ld l, [hl]
    ld l, h
    ld l, a
    ld h, c
    ld h, h
    ccf
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    dec a
    cpl
    jr nc, jr_046_4c5d

    cpl
    ld b, e
    ld b, a
    ld b, d
    dec l
    ld b, d
    ld e, b
    ld d, h
    ld c, d
    cpl
    ld h, d
    ld h, c
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l
    cpl
    ld l, c
    ld l, [hl]
    ld h, h
    ld h, l
    ld a, b
    ld l, $74
    ld a, b
    ld [hl], h
    nop
    ld l, b
    ld [hl], h
    ld [hl], h
    ld [hl], b
    ld a, [hl-]
    cpl
    cpl
    ld h, a
    ld h, c
    ld l, l
    ld h, l
    ld h, d
    ld l, a
    ld a, c
    ld l, $64
    ld h, c
    ld [hl], h
    ld h, c
    ld h, e
    ld h, l
    ld l, [hl]

jr_046_4c5d:
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, $6e
    ld h, l
    ld l, $6a
    ld [hl], b
    cpl
    ld h, e
    ld h, a
    ld h, d
    cpl
    ld h, h
    ld l, a
    ld [hl], a
    ld l, [hl]
    ld l, h
    ld l, a
    ld h, c
    ld h, h
    ccf
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    dec a
    cpl
    jr nc, jr_046_4cad

    cpl
    ld b, e
    ld b, a
    ld b, d
    dec l
    ld b, d
    ld e, b
    ld d, h
    ld c, d
    cpl
    ld l, [hl]
    ld h, l
    ld [hl], a
    ld [hl], e
    cpl
    ld l, c
    ld l, [hl]
    ld h, h
    ld h, l
    ld a, b
    ld l, $74
    ld a, b
    ld [hl], h
    nop
    ld l, b
    ld [hl], h
    ld [hl], h
    ld [hl], b
    ld a, [hl-]
    cpl
    cpl
    ld h, a
    ld h, c
    ld l, l
    ld h, l
    ld h, d
    ld l, a
    ld a, c
    ld l, $64
    ld h, c
    ld [hl], h
    ld h, c
    ld h, e
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld h, l

jr_046_4cad:
    ld [hl], d
    ld l, $6e
    ld h, l
    ld l, $6a
    ld [hl], b
    cpl
    ld h, e
    ld h, a
    ld h, d
    cpl
    ld h, h
    ld l, a
    ld [hl], a
    ld l, [hl]
    ld l, h
    ld l, a
    ld h, c
    ld h, h
    ccf
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    dec a
    cpl
    jr nc, jr_046_4cfb

    cpl
    ld b, e
    ld b, a
    ld b, d
    dec l
    ld b, d
    ld e, b
    ld d, h
    ld c, d
    cpl
    ld d, b
    ld c, a
    ld c, e
    ld b, l
    ld d, e
    ld d, h
    ld b, c
    cpl
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], l
    ld l, $63
    ld h, a
    ld h, d
    nop
    ld l, b
    ld [hl], h
    ld [hl], h
    ld [hl], b
    ld a, [hl-]
    cpl
    cpl
    ld h, a
    ld h, c
    ld l, l
    ld h, l
    ld h, d
    ld l, a
    ld a, c
    ld l, $64
    ld h, c
    ld [hl], h
    ld h, c
    ld h, e
    ld h, l
    ld l, [hl]

jr_046_4cfb:
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, $6e
    ld h, l
    ld l, $6a
    ld [hl], b
    cpl
    ld h, e
    ld h, a
    ld h, d
    cpl
    ld h, h
    ld l, a
    ld [hl], a
    ld l, [hl]
    ld l, h
    ld l, a
    ld h, c
    ld h, h
    ccf
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    dec a
    cpl
    jr nc, jr_046_4d4b

    cpl
    ld b, e
    ld b, a
    ld b, d
    dec l
    ld b, d
    ld e, b
    ld d, h
    ld c, d
    cpl
    ld [hl], h
    ld h, c
    ld l, l
    ld h, c
    ld h, a
    ld l, a
    cpl
    ld l, c
    ld l, [hl]
    ld h, h
    ld h, l
    ld a, b
    ld l, $74
    ld a, b
    ld [hl], h
    nop
    ld hl, $d200
    ld a, [$cd38]
    and a
    jr nz, jr_046_4d6e

    ld a, [hl+]
    cp $94
    jr nz, jr_046_4d7b

    ld a, [hl]
    cp $05
    jr nz, jr_046_4d7b

    ld a, [$cd4f]

jr_046_4d4b:
    sla a
    ld b, a
    sla a
    sla a
    add b
    ld b, a
    ld a, $05
    call $2fcb
    ld a, b
    ld [$b2fb], a
    call $2fe1
    ld a, $5c
    ld hl, $4be4
    rst $08
    ld a, $5c
    ld hl, $40c4
    rst $08
    jr jr_046_4d78

jr_046_4d6e:
    ld a, [hl+]
    cp $96
    jr nz, jr_046_4d7b

    ld a, [hl]
    cp $00
    jr nz, jr_046_4d7b

jr_046_4d78:
    jp Jump_046_5e2e


jr_046_4d7b:
    ld a, $d3
    jp Jump_046_4805


    call Call_046_4e06
    ld a, [$cd38]
    and a
    jr z, jr_046_4d8e

    call Call_046_5e2e
    jr jr_046_4d9f

jr_046_4d8e:
    ld a, $09
    ld [$cd3c], a
    ld a, $12
    ld [$cd45], a
    call Call_046_5e2e
    call Call_046_5ed8
    ret c

jr_046_4d9f:
    ld hl, $c608
    call Call_046_5940
    ld a, [$cd38]
    and a
    jr nz, jr_046_4db2

    ld a, $8f
    ld [$cd3b], a
    jr jr_046_4db7

jr_046_4db2:
    ld a, $26
    ld [$cd3b], a

jr_046_4db7:
    ld hl, $d800
    ld a, $08
    ld [hl+], a
    ld a, $c6
    ld [hl+], a
    ld a, [$cd3b]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $c7
    ld [hl+], a
    ld a, [$cd39]
    ld [hl+], a
    ld a, [$cd3a]
    ld [hl+], a
    call Call_046_5eb4
    call Call_046_5ec2
    ld a, $40
    ld [$cd89], a
    ld hl, $d800
    ld de, $de00
    ld bc, $0200
    ld a, $2c
    jp Jump_046_5e2b


    ld a, [$cd38]
    and a
    jr z, jr_046_4e03

    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld a, $46
    ld hl, $793b
    rst $08
    pop af
    ldh [rSVBK], a

jr_046_4e03:
    jp Jump_046_5e2e


Call_046_4e06:
    ld hl, $d002
    ld a, [$cd38]
    and a
    jr z, jr_046_4e1d

jr_046_4e0f:
    call Call_046_4b9a
    ret nc

    ld a, [hl+]
    cp $0d
    jr nz, jr_046_4e0f

    ld a, [hl+]
    cp $0a
    jr nz, jr_046_4e0f

jr_046_4e1d:
    ld a, l
    ld [$cd39], a
    ld a, h
    ld [$cd3a], a

jr_046_4e25:
    call Call_046_4b9a
    ret nc

    ld a, [hl+]
    cp $0d
    jr nz, jr_046_4e25

    ld a, [hl+]
    cp $0a
    jr nz, jr_046_4e25

    dec hl
    xor a
    ld [hl-], a
    ld [hl], a
    jr jr_046_4e3e

Call_046_4e39:
jr_046_4e39:
    ld a, [hl+]
    and a
    jr nz, jr_046_4e39

    dec hl

jr_046_4e3e:
    ld a, [hl-]
    cp $2f
    jr nz, jr_046_4e3e

    inc hl
    inc hl
    ld de, $cd85
    ld c, $04

jr_046_4e4a:
    ld a, [hl+]
    cp $2e
    jr z, jr_046_4e63

    cp $30
    jr c, jr_046_4e67

    cp $3a
    jr nc, jr_046_4e67

    sub $30
    add $f6
    ld [de], a
    inc de
    dec c
    jr nz, jr_046_4e4a

    ld de, $cd85

jr_046_4e63:
    ld a, $50
    ld [de], a
    ret


jr_046_4e67:
    ld a, $f3
    ld [de], a
    inc de
    jr jr_046_4e63

Call_046_4e6d:
    xor a
    ld [$cd65], a
    ld a, $0a
    jp Jump_046_5e2b


    ld a, $0c
    ld [$cd3c], a
    jp Jump_046_5e2e


    call Call_046_5ed8
    ret c

    ld a, $36
    jp Jump_046_5e2b


    call Call_046_5ed8
    ret c

    ld a, [$cd33]
    ld [$cf66], a
    ret


    call Call_046_4440
    call Call_046_51d3
    ld a, [$cd53]
    ld l, a
    ld a, [$cd54]
    ld h, a
    ld de, $cc60
    call Call_046_51ad
    ret c

    ld de, $d800
    ld bc, $0800
    jp Jump_046_4b10


    call Call_046_4440
    ld hl, $d802
    ld de, $cd20
    ld bc, $000c
    call $3026
    call Call_046_52cc
    ret c

    jp Jump_046_5e2e


    call Call_046_4440
    call $103e
    ld hl, $d80e
    ld de, $c320
    ld bc, $0026
    call $3026
    xor a
    ld [$c31f], a
    ld a, $20
    ld [$c31b], a
    ld a, $c3
    ld [$c31c], a
    ld hl, $c5b9
    ld a, l
    ld [$c31d], a
    ld a, h
    ld [$c31e], a
    ld a, $02
    ld [$c31a], a
    ld a, $1d
    ld [$cd3c], a
    ld a, $24
    ld [$cd45], a
    ld a, $11
    ld [$cd46], a
    ld a, $1c
    ld [$cd47], a
    jp Jump_046_5e2e


    call Call_046_5ed8
    ret c

    call Call_046_4440
    call Call_046_4440
    ld a, [$cd51]
    ld l, a
    ld a, [$cd52]
    ld h, a
    ld de, $cc60
    call Call_046_51ad
    ret c

    ld a, [$cc60]
    and a
    jr z, jr_046_4f32

    ld hl, $6a13
    call Call_046_69c0

jr_046_4f32:
    ld a, [$cd57]
    ld l, a
    ld a, [$cd58]
    ld h, a
    ld de, $cc60
    call Call_046_51ad
    ret c

    ld hl, $cc60
    call Call_046_4e39
    ld a, $09
    ld [$cd3c], a
    ld a, $24
    ld [$cd45], a
    ld a, $13
    ld [$cd46], a
    ld a, $1c
    ld [$cd47], a
    jp Jump_046_5e2e


    call Call_046_5ed8
    ret c

    call Call_046_4440
    call $045a
    call Call_046_5223
    ret c

    call Call_046_4440
    ld a, [$cd51]
    ld l, a
    ld a, [$cd52]
    ld h, a
    ld de, $cc60
    call Call_046_51ad
    ret c

    ld a, [$cc60]
    and a
    jr z, jr_046_4fba

    ld hl, $c346
    ld a, $08
    ld [hl+], a
    ld a, $c6
    ld [hl+], a
    ld a, [$cd4b]
    ld [hl+], a
    ld a, [$cd4c]
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $c7
    ld [hl+], a
    ld a, $60
    ld [hl+], a
    ld a, $cc
    ld [hl+], a
    call Call_046_5eb4
    call Call_046_5ec2
    ld a, $40
    ld [$cd89], a
    ld hl, $c346
    ld de, $de00
    ld bc, $0200
    ld a, $2c
    jp Jump_046_5e2b


jr_046_4fba:
    call Call_046_5e2e
    jp Jump_046_5e2e


    call Call_046_4440
    ld a, [$cd55]
    ld l, a
    ld a, [$cd56]
    ld h, a
    ld de, $cc60
    call Call_046_51ad
    ret c

    ld a, [$cc60]
    and a
    jr z, jr_046_4ffa

    ld a, [$cd51]
    ld l, a
    ld a, [$cd52]
    ld h, a
    ld de, $cc60
    call Call_046_51ad
    ret c

    ld a, [$cc60]
    and a
    jr z, jr_046_4ff2

    ld hl, $6a2c
    jr jr_046_4ff5

jr_046_4ff2:
    ld hl, $6a4b

jr_046_4ff5:
    call Call_046_69c0
    jr jr_046_5009

jr_046_4ffa:
    ld hl, $6a4b
    call Call_046_69c0
    call Call_046_5e2e
    call Call_046_5e2e
    jp Jump_046_5e2e


jr_046_5009:
    call Call_046_4440
    call Call_046_5300
    ld a, [$cd55]
    ld l, a
    ld a, [$cd56]
    ld h, a
    ld de, $cc60
    call Call_046_51ad
    ret c

    ld hl, $c346
    ld a, $08
    ld [hl+], a
    ld a, $c6
    ld [hl+], a
    ld a, [$cd4b]
    ld [hl+], a
    ld a, [$cd4c]
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $c7
    ld [hl+], a
    ld a, $60
    ld [hl+], a
    ld a, $cc
    ld [hl+], a
    call Call_046_5eb4
    call Call_046_5ec2
    ld a, $40
    ld [$cd89], a
    ld hl, $c346
    ld de, $d000
    ld bc, $1000
    ld a, $2c
    jp Jump_046_5e2b


    ld a, $06
    call $2fcb
    ld hl, $d002
    ld a, [$cd4f]
    ld e, a
    ld a, [$cd50]
    ld d, a
    ld a, [$d000]
    ld c, a
    ld a, [$d001]
    ld b, a
    call Call_046_5192
    ret c

    ld a, [$cd89]
    and $01
    jr z, jr_046_508a

    ld a, $06
    ldh [rSVBK], a
    ld hl, $d002
    ld a, [$d000]
    ld c, a
    ld a, [$d001]
    ld b, a
    call Call_046_5192
    ret c

jr_046_508a:
    call $2fe1
    ld a, $03
    ldh [rSVBK], a
    ld a, $05
    call $2fcb
    ld a, [$cd4f]
    ld [$b1b3], a
    ld a, [$cd50]
    ld [$b1b4], a
    ld hl, $cd20
    ld de, $aa7f
    ld bc, $000c
    call $3026
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld a, [$d474]
    ld [$b2f3], a
    ld hl, $d475
    ld de, $b2f4
    ld bc, $0004
    call $3026
    pop af
    ldh [rSVBK], a
    call $2fe1
    jp Jump_046_5e2e


    ld a, $03
    ldh [rSVBK], a
    ld a, [$cd57]
    ld l, a
    ld a, [$cd58]
    ld h, a
    ld de, $cc60
    call Call_046_51ad
    ret c

    ld de, $d000
    ld bc, $1000
    jp Jump_046_4b10


    ld a, $05
    call $2fcb
    ld hl, $cd20
    ld de, $aa73
    ld bc, $000c
    call $3026
    call $2fe1
    ld a, $05
    call $2fcb
    ld a, $01
    ld [$aa72], a
    call $2fe1
    ld a, $06
    call $2fcb
    ld a, [$d000]
    ld c, a
    ld a, [$d001]
    ld b, a
    ld hl, $d002
    ld de, $a000
    call Call_046_5192
    ret c

    ld a, [$cd89]
    and $01
    jr z, jr_046_513e

    ld a, $06
    ldh [rSVBK], a
    ld a, [$d000]
    ld c, a
    ld a, [$d001]
    ld b, a
    ld hl, $d002
    call Call_046_5192
    ret c

jr_046_513e:
    ld a, $03
    ldh [rSVBK], a
    call $2fe1
    ld hl, $6a5a
    call Call_046_69c0
    jp Jump_046_5e2e


    call Call_046_5ed8
    ret c

    ld a, $1c
    ld [$cf66], a
    ld a, $0a
    ld [$c300], a
    ret


    ld hl, $d802
    ld de, $cd20
    ld bc, $000c
    call $3026
    ld a, $05
    call $2fcb
    ld hl, $cd20
    ld de, $aa7f
    ld c, $0c

jr_046_5176:
    ld a, [de]
    inc de
    cp [hl]
    jr nz, jr_046_5184

    inc hl
    dec c
    jr nz, jr_046_5176

    call Call_046_5e2e
    jr jr_046_518e

jr_046_5184:
    ld a, $16
    ld [$cf66], a
    ld a, $0b
    ld [$c300], a

jr_046_518e:
    call $2fe1
    ret


Call_046_5192:
    inc b
    inc c
    jr jr_046_519e

jr_046_5196:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, $bf
    cp d
    jr c, jr_046_51a6

jr_046_519e:
    dec c
    jr nz, jr_046_5196

    dec b
    jr nz, jr_046_5196

    and a
    ret


jr_046_51a6:
    ld a, $d3
    call Call_046_4805
    scf
    ret


Call_046_51ad:
    push bc
    ld c, $00
    ld a, $05
    ldh [rSVBK], a

jr_046_51b4:
    ld a, [hl+]
    ld [de], a
    inc de
    and a
    jr z, jr_046_51cc

    inc c
    ld a, c
    cp $a6
    jr c, jr_046_51b4

    ld a, $da
    call Call_046_4805
    ld a, $03
    ldh [rSVBK], a
    pop bc
    scf
    ret


jr_046_51cc:
    ld a, $03
    ldh [rSVBK], a
    pop bc
    and a
    ret


Call_046_51d3:
    ld hl, $d102
    ld a, l
    ld [$cd53], a
    ld a, h
    ld [$cd54], a
    call Call_046_520f
    ld a, l
    ld [$cd51], a
    ld a, [$cd4a]
    ld a, h
    ld [$cd52], a
    call Call_046_520f
    ld a, l
    ld [$cd55], a
    ld a, [$cd4a]
    ld a, h
    ld [$cd56], a
    call Call_046_520f
    ld a, [$cd49]
    ld a, l
    ld [$cd57], a
    ld a, [$cd4a]
    ld a, h
    ld [$cd58], a
    call Call_046_520f
    ret


Call_046_520f:
jr_046_520f:
    call Call_046_4b9a
    ret nc

    ld a, [hl+]
    cp $0d
    jr nz, jr_046_520f

    ld a, [hl+]
    cp $0a
    jr nz, jr_046_520f

    dec hl
    xor a
    ld [hl-], a
    ld [hl+], a
    inc hl
    ret


Call_046_5223:
    xor a
    ld [$cd4b], a
    ld [$cd4c], a
    ld a, $05
    call $2fcb
    ld hl, $c3cd
    ld de, $b092
    ld bc, $001f
    call $3026
    dec de
    xor a
    ld [de], a
    ld hl, $d810

jr_046_5241:
    ld a, [hl+]
    cp $50
    jr nz, jr_046_5241

    ld a, [hl+]
    ld [$cd4f], a
    ld a, [hl+]
    ld [$cd50], a
    ld a, [hl+]
    ld [$b1b1], a
    ld c, a
    ld a, [hl+]
    ld [$b1b2], a
    ld b, a
    ld de, $b1d3
    call $3026
    call $2fe1
    ld e, l
    ld d, h
    ld hl, $c608

jr_046_5266:
    ld a, [de]
    inc de
    cp $ff
    jr z, jr_046_52c2

    cp $fe
    jr z, jr_046_52a5

    call $2fcb
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    inc de
    ld b, a
    ld a, [de]
    inc de
    push de
    push af
    ld a, [$cd4b]
    ld e, a
    ld a, [$cd4c]
    ld d, a
    pop af

jr_046_5286:
    push af
    ld a, [bc]
    inc bc
    ld [hl+], a
    inc de
    pop af
    dec a
    jr nz, jr_046_5286

    call $2fe1
    ld a, e
    ld [$cd4b], a
    ld a, d
    ld [$cd4c], a
    pop de

jr_046_529b:
    and a
    jr z, jr_046_5266

    ld a, $d3
    call Call_046_4805
    scf
    ret


jr_046_52a5:
    ld a, [$cd4b]
    ld c, a
    ld a, [$cd4c]
    ld b, a
    ld a, [de]
    inc de

jr_046_52af:
    push af
    ld a, [de]
    inc de
    ld [hl+], a
    inc bc
    pop af
    dec a
    jr nz, jr_046_52af

    ld a, c
    ld [$cd4b], a
    ld a, b
    ld [$cd4c], a
    jr jr_046_529b

jr_046_52c2:
    ld a, e
    ld [$cd4d], a
    ld a, d
    ld [$cd4e], a
    and a
    ret


Call_046_52cc:
    ld a, $05
    call $2fcb
    ld hl, $aa73
    ld de, $c608
    ld bc, $000c
    call $3026
    call $2fe1
    ld hl, $c608
    ld de, $cd20
    ld c, $0c

jr_046_52e8:
    ld a, [de]
    inc de
    ld b, a
    ld a, [hl+]
    cp b
    jr nz, jr_046_52fe

    dec c
    jr nz, jr_046_52e8

    ld a, $1f
    ld [$cd3c], a
    ld a, $27
    ld [$cf66], a
    scf
    ret


jr_046_52fe:
    and a
    ret


Call_046_5300:
    xor a
    ld [$cd4b], a
    ld [$cd4c], a
    ld a, [$cd4d]
    ld e, a
    ld a, [$cd4e]
    ld d, a
    ld hl, $c608
    ld a, [$cd4b]
    ld c, a
    ld a, [$cd4c]
    ld b, a

jr_046_531a:
    ld a, [de]
    inc de
    cp $50
    jr z, jr_046_5324

    ld [hl+], a
    inc bc
    jr jr_046_531a

jr_046_5324:
    ld a, $3d
    ld [hl+], a
    inc bc
    ld a, c
    ld [$cd4b], a
    ld a, b
    ld [$cd4c], a
    ld a, [de]
    inc de
    call $2fcb
    ld a, [de]
    inc de
    ld c, a
    ld a, [de]
    inc de
    ld b, a
    ld a, [de]
    inc de
    push de
    push af
    ld a, [$cd4b]
    ld e, a
    ld a, [$cd4c]
    ld d, a
    pop af

jr_046_5348:
    push af
    ld a, [bc]
    and $f0
    swap a
    call Call_046_57bf
    ld [hl+], a
    inc de
    ld a, [bc]
    inc bc
    and $0f
    call Call_046_57bf
    ld [hl+], a
    inc de
    pop af
    dec a
    jr nz, jr_046_5348

    call $2fe1
    ld a, e
    ld [$cd4b], a
    ld a, d
    ld [$cd4c], a
    pop de
    ld a, [de]
    cp $50
    jr z, jr_046_537f

    ld a, [$cd4b]
    ld c, a
    ld a, [$cd4c]
    ld b, a
    ld a, $26
    ld [hl+], a
    inc bc
    jr jr_046_531a

jr_046_537f:
    ret


    ld a, $80
    ld [$cd49], a
    jp Jump_046_5e2e


    ld hl, $cd49
    dec [hl]
    ret nz

    ld hl, $cc60
    call Call_046_4e39
    ld a, $09
    ld [$cd3c], a
    ld a, $10
    ld [$cd45], a
    call Call_046_5e2e
    call Call_046_5ed8
    ret c

    call $045a
    ld a, $08
    ld [$cd3c], a
    call Call_046_5ed8
    ld hl, $c346
    ld a, $00
    ld [hl+], a
    ld a, $d0
    ld [hl+], a
    ld a, [$cd3b]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $c7
    ld [hl+], a
    ld a, $60
    ld [hl+], a
    ld a, $cc
    ld [hl+], a
    call Call_046_5eb4
    call Call_046_5ec2
    ld a, $40
    ld [$cd89], a
    ld hl, $c346
    ld de, $de00
    ld bc, $0200
    ld a, $2c
    jp Jump_046_5e2b


    ld hl, $cd49
    dec [hl]
    ret nz

    ld hl, $cc60
    call Call_046_4e39
    ld a, $09
    ld [$cd3c], a
    ld a, $11
    ld [$cd45], a
    call Call_046_5e2e
    call Call_046_5ed8
    ret c

    call $045a
    ld a, $08
    ld [$cd3c], a
    call Call_046_5ed8
    ld de, $d000
    ld bc, $1000
    jp Jump_046_4b10


    ld a, $06
    call $2fcb
    ld a, [$d000]
    ld c, a
    ld a, [$d001]
    ld b, a
    dec bc
    dec bc
    ld hl, $d002
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    call Call_046_5192
    ret c

    ld a, [$cd89]
    and $01
    jr z, jr_046_5447

    ld a, $06
    ldh [rSVBK], a
    ld a, [$d000]
    ld c, a
    ld a, [$d001]
    ld b, a
    ld hl, $d002
    call Call_046_5192
    ret c

jr_046_5447:
    ld a, $03
    ldh [rSVBK], a
    call $2fe1
    jp Jump_046_5e2e


    ld a, [$cd89]
    and $01
    jr z, jr_046_545d

    ld a, $d3
    jp Jump_046_4805


jr_046_545d:
    xor a
    ld [$cd50], a
    call Call_046_5694
    ld a, b
    ld [$cd49], a
    call Call_046_56cd
    ld a, [$d002]
    ld hl, $d003

Jump_046_5471:
    push af
    ld a, [hl+]
    ld [$c608], a
    ld a, [hl+]
    ld [$c60b], a
    ld a, [hl+]
    ld [$c609], a
    ld a, [hl+]
    ld [$c60a], a
    ld a, [hl+]
    ld [$c60c], a
    ld a, [hl+]
    ld [$c60d], a
    push hl
    ld a, [$c608]
    cp $ff
    jr z, jr_046_54a7

    ld a, [$c60a]
    cp $ff
    jr z, jr_046_54a7

    ld a, [$c609]
    cp $ff
    jr nz, jr_046_54a7

    call Call_046_5584
    jr c, jr_046_550c

    jr jr_046_54f0

jr_046_54a7:
    ld hl, $c608
    ld de, $c60b
    ld c, $03

jr_046_54af:
    ld a, [de]
    inc de
    cp [hl]
    inc hl
    jr c, jr_046_54f3

    jr z, jr_046_54b9

    jr nc, jr_046_54bc

jr_046_54b9:
    dec c
    jr nz, jr_046_54af

jr_046_54bc:
    ld c, $03
    ld hl, $cd49
    ld de, $c608

jr_046_54c4:
    ld a, [de]
    inc de
    cp $ff
    jr z, jr_046_54d1

    cp [hl]
    jr z, jr_046_54d1

    jr c, jr_046_54d5

    jr nc, jr_046_54f0

jr_046_54d1:
    inc hl
    dec c
    jr nz, jr_046_54c4

jr_046_54d5:
    ld c, $03
    ld hl, $cd49
    ld de, $c60b

jr_046_54dd:
    ld a, [de]
    inc de
    cp $ff
    jr z, jr_046_54ea

    cp [hl]
    jr c, jr_046_54f0

    jr z, jr_046_54ea

    jr nc, jr_046_550c

jr_046_54ea:
    inc hl
    dec c
    jr nz, jr_046_54dd

    jr jr_046_550c

jr_046_54f0:
    pop hl
    jr jr_046_5557

jr_046_54f3:
    ld c, $03
    ld hl, $cd49
    ld de, $c608

jr_046_54fb:
    ld a, [de]
    inc de
    cp $ff
    jr z, jr_046_5508

    cp [hl]
    jr c, jr_046_550c

    jr z, jr_046_5508

    jr nc, jr_046_54d5

jr_046_5508:
    inc hl
    dec c
    jr nz, jr_046_54fb

jr_046_550c:
    pop hl
    ld a, $01
    ld [$cd50], a
    ld a, l
    ld [$c608], a
    ld a, h
    ld [$c609], a
    ld de, $cd69
    ld c, $10
    ld b, $00

jr_046_5521:
    ld a, [de]
    inc de
    cp [hl]
    inc hl
    jr nz, jr_046_5528

    inc b

jr_046_5528:
    dec c
    jr nz, jr_046_5521

    ld a, $10
    cp b
    jr z, jr_046_5536

    inc hl
    inc hl
    inc hl
    inc hl
    jr jr_046_557a

jr_046_5536:
    ld a, [hl+]
    cp $50
    jr nz, jr_046_5552

    ld a, [hl+]
    cp $33
    jr nz, jr_046_5553

    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [$cd83]
    cp c
    jr nz, jr_046_5576

    ld a, [$cd84]
    cp b
    jr nz, jr_046_5576

    jr jr_046_555b

jr_046_5552:
    inc hl

jr_046_5553:
    inc hl
    inc hl
    jr jr_046_555b

jr_046_5557:
    ld de, $0014
    add hl, de

jr_046_555b:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    add hl, de
    pop af
    dec a
    jp nz, Jump_046_5471

    ld a, [$cd50]
    and a
    jr z, jr_046_5571

    ld a, $1a
    ld [$cf66], a
    ret


jr_046_5571:
    ld a, $d8
    jp Jump_046_4805


jr_046_5576:
    ld a, $10
    jr jr_046_557c

jr_046_557a:
    ld a, $0f

jr_046_557c:
    ld [$cf66], a
    pop af
    call Call_046_55c4
    ret


Call_046_5584:
    ld a, [$c608]
    ld b, a
    ld a, [$c60b]
    ld c, a
    cp b
    jr c, jr_046_559c

    ld a, [$cd49]
    cp b
    jr c, jr_046_55c2

jr_046_5595:
    cp c
    jr c, jr_046_55a2

    jr z, jr_046_55a2

    jr jr_046_55c2

jr_046_559c:
    ld a, [$cd49]
    cp b
    jr c, jr_046_5595

jr_046_55a2:
    ld a, [$c60a]
    ld b, a
    ld a, [$c60d]
    ld c, a
    cp b
    jr c, jr_046_55ba

    ld a, [$cd4b]
    cp b
    jr c, jr_046_55c2

jr_046_55b3:
    cp c
    jr c, jr_046_55c0

    jr z, jr_046_55c0

    jr jr_046_55c2

jr_046_55ba:
    ld a, [$cd4b]
    cp b
    jr c, jr_046_55b3

jr_046_55c0:
    scf
    ret


jr_046_55c2:
    and a
    ret


Call_046_55c4:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld de, $00a5
    ld a, b
    cp d
    jr c, jr_046_55d9

    jr z, jr_046_55d3

    jr nc, jr_046_55f3

jr_046_55d3:
    ld a, c
    cp e
    jr z, jr_046_55d9

    jr nc, jr_046_55f3

jr_046_55d9:
    ld de, $cc60
    call $3026
    xor a
    ld [de], a
    ld a, [$c608]
    ld l, a
    ld a, [$c609]
    ld h, a
    ld de, $cd69
    ld bc, $0010
    call $3026
    ret


jr_046_55f3:
    ld a, $d8
    jp Jump_046_4805


    ld a, $11
    ld [$cd3c], a
    ld a, $1c
    ld [$cd45], a
    ld a, $0f
    ld [$cd46], a
    ld a, $14
    ld [$cd47], a
    call Call_046_5e2e
    jp Jump_046_5e2e


    ld a, $14
    ld [$cd3c], a
    ld a, $1c
    ld [$cd45], a
    ld a, $10
    ld [$cd46], a
    ld a, $14
    ld [$cd47], a
    jp Jump_046_5e2e


    call Call_046_5ed8
    ret c

    ld a, $60
    ld l, a
    ld a, $cc
    ld h, a
    call Call_046_4e39
    ld a, $09
    ld [$cd3c], a
    ld a, $1c
    ld [$cd45], a
    ld a, $14
    ld [$cd47], a
    call Call_046_5e2e
    call Call_046_5ed8
    ret c

    call $045a
    ld a, $08
    ld [$cd3c], a
    call Call_046_5ed8
    call Call_046_4b24
    ld de, $d000
    ld bc, $1000
    ld a, $2a
    jp Jump_046_5e2b


    ld a, $1a
    ld [$cd3c], a
    call Call_046_5e2e
    call Call_046_5ed8
    ret c

    ld a, [$cd47]
    ld [$cf66], a
    ld a, $0a
    ld [$c300], a
    ret


    ld a, $18
    ld [$cd3c], a
    call Call_046_5e2e
    call Call_046_5ed8
    ret c

    ld a, $14
    ld [$cf66], a
    ld a, $0a
    ld [$c300], a
    ret


Call_046_5694:
    ld b, $00
    ld hl, $56b8

jr_046_5699:
    ld de, $c708
    ld a, [de]
    inc de
    cp [hl]
    inc hl
    jr nz, jr_046_56af

    ld a, [de]
    inc de
    cp [hl]
    inc hl
    jr nz, jr_046_56b0

    ld a, [de]
    inc de
    cp [hl]
    inc hl
    jr nz, jr_046_56b1

    ret


jr_046_56af:
    inc hl

jr_046_56b0:
    inc hl

jr_046_56b1:
    inc b
    ld a, b
    cp $07
    jr nz, jr_046_5699

    ret


    ld c, l
    ld l, a
    ld l, [hl]
    ld d, h
    ld [hl], l
    ld h, l
    ld d, a
    ld h, l
    ld h, h
    ld d, h
    ld l, b
    ld [hl], l
    ld b, [hl]
    ld [hl], d
    ld l, c
    ld d, e
    ld h, c
    ld [hl], h
    ld d, e
    ld [hl], l
    ld l, [hl]

Call_046_56cd:
    ld de, $c719
    call Call_046_56de
    ld [$cd4a], a
    inc de
    call Call_046_56de
    ld [$cd4b], a
    ret


Call_046_56de:
    ld a, [de]
    inc de
    sub $30
    sla a
    ld b, a
    sla a
    sla a
    add b
    ld c, a
    add hl, bc
    ld a, [de]
    inc de
    sub $30
    add c
    ret


    ld hl, $d002

jr_046_56f5:
    call Call_046_4b9a
    ret nc

    ld a, [hl+]
    cp $0d
    jr nz, jr_046_56f5

    ld a, [hl]
    cp $0a
    jr nz, jr_046_56f5

    xor a
    ld [hl-], a
    ld [hl+], a
    ld a, l
    ld [$cd5b], a
    ld a, h
    ld [$cd5c], a
    inc hl
    ld e, l
    ld d, h
    ld a, [de]
    inc de
    cp $0d
    jr nz, jr_046_5722

    ld a, [de]
    inc de
    cp $0a
    jr nz, jr_046_5722

    ld a, $0b
    jp Jump_046_4805


jr_046_5722:
    call $2f8c
    ld c, $00
    ld b, c

jr_046_5728:
    call Call_046_5798
    ld a, d
    cp $ff
    jr nz, jr_046_5735

    ld a, e
    cp $ff
    jr z, jr_046_574c

jr_046_5735:
    ldh a, [$e2]
    cp d
    jr c, jr_046_574c

    jr z, jr_046_573e

    jr jr_046_5745

jr_046_573e:
    ldh a, [$e1]
    cp e
    jr c, jr_046_574c

    jr z, jr_046_574c

jr_046_5745:
    inc bc
    ld a, c
    or b
    jr z, jr_046_5770

    jr jr_046_5728

jr_046_574c:
    ld a, [$cd5b]
    ld l, a
    ld a, [$cd5c]
    ld h, a

jr_046_5754:
    ld a, [hl-]
    cp $58
    jr nz, jr_046_5754

    ld d, $00

jr_046_575b:
    inc d
    ld a, [hl-]
    cp $58
    jr z, jr_046_575b

    inc hl
    inc hl
    ld a, d
    dec a
    jr z, jr_046_578e

    dec a
    jr z, jr_046_5785

    dec a
    jr z, jr_046_577e

    dec a
    jr z, jr_046_5775

jr_046_5770:
    ld a, $d3
    jp Jump_046_4805


jr_046_5775:
    ld a, b
    and $f0
    swap a
    call Call_046_57bf
    ld [hl+], a

jr_046_577e:
    ld a, b
    and $0f
    call Call_046_57bf
    ld [hl+], a

jr_046_5785:
    ld a, c
    and $f0
    swap a
    call Call_046_57bf
    ld [hl+], a

jr_046_578e:
    ld a, c
    and $0f
    call Call_046_57bf
    ld [hl+], a
    jp Jump_046_5e2e


Call_046_5798:
    ld d, $00
    ld e, d
    call Call_046_57b4
    swap a
    or d
    ld d, a
    call Call_046_57b4
    or d
    ld d, a
    call Call_046_57b4
    swap a
    or e
    ld e, a
    call Call_046_57b4
    or e
    ld e, a
    ret


Call_046_57b4:
    ld a, [hl+]
    cp $61
    jr nc, jr_046_57bc

    sub $30
    ret


jr_046_57bc:
    sub $57
    ret


Call_046_57bf:
    cp $0a
    jr nc, jr_046_57c6

    add $30
    ret


jr_046_57c6:
    add $57
    ret


    ld hl, $d002
    call Call_046_4e39
    ld a, $09
    ld [$cd3c], a
    ld a, $12
    ld [$cd45], a
    call Call_046_5e2e
    call Call_046_5ed8
    ret c

    call $045a
    ld hl, $d002
    ld de, $cc60
    ld bc, $0080
    call $3026
    dec de
    xor a
    ld [de], a
    call Call_046_4b24
    ld de, $d000
    ld bc, $1000
    ld a, $2a
    jp Jump_046_5e2b


    ld a, $fd
    ld [$c6d0], a
    ld [$c702], a
    ld a, [$cd81]
    ld [$c74e], a
    ld a, [$cf63]
    push af
    ld a, [$cf64]
    push af
    ld a, [$cf65]
    push af
    ld a, [$cf66]
    push af
    ld a, $01
    ldh [rSVBK], a
    call $2b29
    ld a, $42
    ld hl, $403d
    rst $08
    call Call_046_69ce
    call $3d47
    ld a, $03
    ldh [rSVBK], a
    pop af
    ld [$cf66], a
    pop af
    ld [$cf65], a
    pop af
    ld [$cf64], a
    pop af
    ld [$cf63], a
    ld a, $45
    ld hl, $5dc3
    rst $08
    jp Jump_046_5e2e


    ld a, [$cd80]
    and a
    jr nz, jr_046_58a0

    ld a, [$cd38]
    and a
    jr nz, jr_046_58a8

    ld a, $5c
    ld hl, $4000
    rst $08
    ld a, [$cf63]
    push af
    ld a, [$cf64]
    push af
    ld a, [$cf65]
    push af
    ld a, [$cf66]
    push af
    ld a, $01
    ldh [rSVBK], a
    call $2b29
    ld a, $42
    ld hl, $4000
    rst $08
    call Call_046_69ce
    call $3d47
    ld a, $03
    ldh [rSVBK], a
    pop af
    ld [$cf66], a
    pop af
    ld [$cf65], a
    pop af
    ld [$cf64], a
    pop af
    ld [$cf63], a
    ld a, $45
    ld hl, $5dc3
    rst $08
    jp Jump_046_5e2e


jr_046_58a0:
    ld a, $0a
    ld [$c300], a
    jp Jump_046_5e2e


jr_046_58a8:
    ld a, $5c
    ld hl, $405a
    rst $08
    ld a, [$cf63]
    push af
    ld a, [$cf64]
    push af
    ld a, [$cf65]
    push af
    ld a, [$cf66]
    push af
    ld a, $01
    ldh [rSVBK], a
    call $2b29
    ld a, $42
    ld hl, $4012
    rst $08
    call Call_046_69ce
    call $3d47
    ld a, $03
    ldh [rSVBK], a
    pop af
    ld [$cf66], a
    pop af
    ld [$cf65], a
    pop af
    ld [$cf64], a
    pop af
    ld [$cf63], a
    ld a, $45
    ld hl, $5dc3
    rst $08
    jp Jump_046_5e2e


    ld hl, $6ab2
    call Call_046_69c0
    call Call_046_5e2e
    ld a, [$c31a]
    and a
    ret nz

    ld hl, $c60a
    call Call_046_5940
    ld hl, $d800
    ld a, $08
    ld [hl+], a
    ld a, $c6
    ld [hl+], a
    ld a, $f6
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld a, $c7
    ld [hl+], a
    ld a, [$cd51]
    ld [hl+], a
    ld a, [$cd52]
    ld [hl+], a
    call Call_046_5eb4
    call Call_046_5ec2
    ld a, $40
    ld [$cd89], a
    ld hl, $d800
    ld de, $de00
    ld bc, $0200
    ld a, $2c
    jp Jump_046_5e2b


    ld a, $5c
    ld hl, $47f4
    rst $08
    jp Jump_046_5e2e


Call_046_5940:
    ld de, $c3cd
    ld c, $1e

jr_046_5945:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr z, jr_046_5953

    and a
    jr nz, jr_046_5945

    xor a

jr_046_594f:
    ld [hl+], a
    dec c
    jr nz, jr_046_594f

jr_046_5953:
    ret


    ld a, $1c
    ld [$cd3c], a
    call Call_046_5ed8
    ld hl, $c608
    ld de, $c3cd

jr_046_5962:
    ld a, [de]
    inc de
    ld [hl+], a
    and a
    jr nz, jr_046_5962

    call Call_046_5ec2
    ld hl, $c608
    ld a, $1e
    jp Jump_046_5e2b


    ld a, $01
    ld [$cf64], a
    xor a
    ld [$cf65], a
    ld [$d090], a
    ld de, $d000
    ld a, $20
    jp Jump_046_5e2b


    ld hl, $d001
    ld a, [$d000]
    or [hl]
    jr z, jr_046_59a0

    ld a, [$cf64]
    ld l, a
    ld a, [$cf65]
    ld h, a
    ld de, $d080
    ld a, $22
    jp Jump_046_5e2b


jr_046_59a0:
    ld a, [$d090]
    and a
    jr z, jr_046_59ae

    ld a, $16
    ld [$cf66], a
    jp Jump_046_5b0d


jr_046_59ae:
    ld a, $1b
    ld [$cf66], a
    ret


    ld a, [$d082]
    and a
    jr nz, jr_046_59c7

    ld a, [$d081]
    cp $07
    jr nc, jr_046_59c7

    call Call_046_5e2e
    jp Jump_046_59ca


jr_046_59c7:
    jp Jump_046_5ac9


Jump_046_59ca:
    ld a, $20
    ld [$cd89], a
    ld a, [$cf64]
    ld l, a
    ld a, [$cf65]
    ld h, a
    ld de, $d100
    ld bc, $0700
    ld a, $28
    jp Jump_046_5e2b


    ld c, $0c
    ld de, $5e33
    call Call_046_5e4f
    jp c, Jump_046_5ac9

    ld a, c
    cp $01
    jp nz, Jump_046_5ac9

    ld hl, $d880
    ld bc, $5af1

jr_046_59f9:
    ld a, [bc]
    and a
    jr z, jr_046_5a05

    cp [hl]
    jp nz, Jump_046_5ac9

    inc bc
    inc hl
    jr jr_046_59f9

jr_046_5a05:
    ld c, $17
    ld de, $5e40
    call Call_046_5e4f
    jp c, Jump_046_5aa7

    ld a, c
    cp $01
    jp nz, Jump_046_5aa7

    ld a, [$d880]
    cp $31
    jp nz, Jump_046_5aa7

    ld a, [$d881]
    cp $20
    jp nz, Jump_046_5aa7

    ld a, [$d88a]
    cp $20
    jp nz, Jump_046_5aa7

    ld a, [$d894]
    cp $20
    jp nz, Jump_046_5aa7

    xor a
    ld [$d8a0], a
    ld [$d8a1], a
    ld [$d8a2], a
    ld [$d8a3], a
    ld hl, $d8a0
    ld bc, $d889
    call Call_046_5e98
    call Call_046_5e98
    ld hl, $d8a0
    ld a, [$cd2d]
    cp [hl]
    jr nz, jr_046_5ac9

    inc hl
    ld a, [$cd2c]
    cp [hl]
    jr nz, jr_046_5ac9

    inc hl
    ld a, [$cd2b]
    cp [hl]
    jr nz, jr_046_5ac9

    inc hl
    ld a, [$cd2a]
    cp [hl]
    jr nz, jr_046_5ac9

    xor a
    ld [$d8a0], a
    ld [$d8a1], a
    ld [$d8a2], a
    ld [$d8a3], a
    ld hl, $d8a0
    ld bc, $d88e
    call Call_046_5e98
    ld bc, $d893
    call Call_046_5e98
    ld hl, $d8a0
    ld a, [$cd2f]
    cp [hl]
    jr nz, jr_046_5aa7

    inc hl
    ld a, [$cd2e]
    cp [hl]
    jr nz, jr_046_5aa7

    inc hl
    ld a, [$cd31]
    cp [hl]
    jr nz, jr_046_5aa7

    inc hl
    ld a, [$cd30]
    cp [hl]
    jr z, jr_046_5aaf

Jump_046_5aa7:
jr_046_5aa7:
    ld a, $25
    ld [$cf66], a
    jp Jump_046_5b45


jr_046_5aaf:
    ld a, [$d090]
    and a
    jr nz, jr_046_5aa7

    ld a, [$d895]
    sub $30
    ld [$d090], a
    ld a, [$cf64]
    ld [$d091], a
    ld a, [$cf65]
    ld [$d092], a

Jump_046_5ac9:
jr_046_5ac9:
    ld a, [$d000]
    ld l, a
    ld a, [$d001]
    ld h, a
    dec hl
    ld a, l
    ld [$d000], a
    ld a, h
    ld [$d001], a
    ld a, [$cf64]
    ld l, a
    ld a, [$cf65]
    ld h, a
    inc hl
    ld a, l
    ld [$cf64], a
    ld a, h
    ld [$cf65], a
    ld a, $10
    ld [$cf66], a
    ret


    ld b, e
    ld b, a
    ld b, d
    dec l
    ld b, d
    ld e, b
    ld d, h
    ld c, d
    dec l
    jr nc, jr_046_5b2c

    nop
    ld [hl], b
    ld l, a
    ld l, e
    ld h, l
    ld l, l
    ld l, a
    ld l, [hl]
    ld e, a
    ld h, e
    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    nop

Jump_046_5b0d:
    ld a, $08
    ld [$cd3c], a
    call Call_046_5ed8
    ld a, [$d090]
    cp $01
    jr z, jr_046_5b23

    ld a, $19
    ld [$cf66], a
    jr jr_046_5b3b

jr_046_5b23:
    ld a, $10
    ld [$cd89], a
    ld a, [$d091]
    ld l, a

jr_046_5b2c:
    ld a, [$d092]
    ld h, a
    ld de, $d100
    ld bc, $0700
    ld a, $24
    jp Jump_046_5e2b


jr_046_5b3b:
    ld a, [$d091]
    ld l, a
    ld a, [$d092]
    ld h, a
    jr jr_046_5b4d

Jump_046_5b45:
    ld a, [$cf64]
    ld l, a
    ld a, [$cf65]
    ld h, a

jr_046_5b4d:
    ld a, $26
    jp Jump_046_5e2b


    ld a, [$d090]
    cp $01
    jr nz, jr_046_5b66

    ld a, $05
    call $2fcb
    ld a, $04
    ld [$a800], a
    call $2fe1

jr_046_5b66:
    ld a, $1c
    jp Jump_046_5e2b


    ld a, [$d090]
    cp $01
    jr z, jr_046_5b75

    jp Jump_046_5e2e


jr_046_5b75:
    ld a, [$d100]
    ld b, a
    ld a, [$d101]
    or b
    jr z, jr_046_5be3

    ld hl, $d800
    ld de, $d102

jr_046_5b85:
    ld a, [de]
    inc de
    cp $0d
    jr nz, jr_046_5b85

    inc de
    ld a, [de]
    cp $0d
    jr nz, jr_046_5b85

    inc de
    inc de

jr_046_5b93:
    ld a, [de]
    inc de
    cp $0d
    jr z, jr_046_5bfa

    call Call_046_5c3e
    ret c

    ld [hl+], a
    ld a, [de]
    inc de
    call Call_046_5c3e
    ret c

    ld [hl+], a
    ld a, [de]
    inc de
    call Call_046_5c3e
    ret c

    ld [hl+], a
    ld a, [de]
    inc de
    call Call_046_5c3e
    ret c

    ld [hl], a
    push de
    ld d, [hl]
    dec hl
    ld c, [hl]
    dec hl
    ld b, [hl]
    dec hl
    ld a, [hl]
    sla b
    sla b
    sla b
    rla
    sla b
    rla
    ld [hl+], a
    ld [hl], b
    inc hl
    rrc c
    rrc c
    ld [hl], c
    dec hl
    ld a, $0f
    and c
    or [hl]
    ld [hl+], a
    ld a, [hl+]
    and $c0
    or [hl]
    dec hl
    ld [hl-], a
    dec hl
    pop de
    inc hl
    inc hl
    inc hl
    ld a, h
    cp $e0
    jr c, jr_046_5b93

jr_046_5be3:
    ld a, $19
    ld [$cf66], a
    ld a, $05
    call $2fcb
    ld a, $01
    ld [$a800], a
    call $2fe1
    xor a
    ld [$d090], a
    ret


jr_046_5bfa:
    inc de
    ld a, [de]
    cp $0d
    jr nz, jr_046_5b93

    ld a, l
    cp $69
    jr nz, jr_046_5be3

    ld a, h
    cp $d8
    jr nz, jr_046_5be3

    ld a, $05
    call $2fcb
    ld a, [$cf64]
    ld [$b090], a
    ld a, [$cf65]
    ld [$b091], a
    ld hl, $d800
    ld de, $b023
    ld bc, $0069
    call $3026
    ld a, $03
    ld [$a800], a
    call $2fe1
    ld hl, $d800
    ld de, $c608
    ld bc, $0069
    call $3026
    jp Jump_046_5e2e


Call_046_5c3e:
    cp $2b
    jr c, jr_046_5c68

    jr z, jr_046_5c80

    cp $2f
    jr c, jr_046_5c68

    jr z, jr_046_5c84

    cp $30
    jr c, jr_046_5c68

    cp $3a
    jr c, jr_046_5c88

    cp $3d
    jr c, jr_046_5c68

    jr z, jr_046_5c8c

    cp $41
    jr c, jr_046_5c68

    cp $5b
    jr c, jr_046_5c8f

    cp $61
    jr c, jr_046_5c68

    cp $7b
    jr c, jr_046_5c93

jr_046_5c68:
    ld a, $19
    ld [$cf66], a
    ld a, $05
    call $2fcb
    ld a, $01
    ld [$a800], a
    call $2fe1
    xor a
    ld [$d090], a
    scf
    ret


jr_046_5c80:
    ld a, $3e
    and a
    ret


jr_046_5c84:
    ld a, $3f
    and a
    ret


jr_046_5c88:
    add $04
    and a
    ret


jr_046_5c8c:
    xor a
    and a
    ret


jr_046_5c8f:
    sub $41
    and a
    ret


jr_046_5c93:
    sub $47
    and a
    ret


    ld hl, $6b0f
    call Call_046_69c0
    call Call_046_5e2e
    jr jr_046_5cab

    ld hl, $6af0
    call Call_046_69c0
    call Call_046_5e2e

jr_046_5cab:
    ld a, [$c31a]
    and a
    ret nz

    ld a, $80
    ld [$cd50], a
    call Call_046_5e2e
    ld hl, $cd50
    dec [hl]
    ret nz

    ld a, $00
    ld [$cf66], a
    ret


    ld a, [$cd38]
    and a
    jr z, jr_046_5cd1

    dec a
    jr z, jr_046_5cd6

    ld hl, $6a6a
    jr jr_046_5cd9

jr_046_5cd1:
    ld hl, $6b4a
    jr jr_046_5cd9

jr_046_5cd6:
    ld hl, $6b6e

jr_046_5cd9:
    call Call_046_69c0
    call Call_046_5e2e
    ld a, [$c31a]
    and a
    ret nz

    ld a, $0f
    ld [$cd3c], a
    call Call_046_5e2e
    call Call_046_5ed8
    ret c

    ld a, [$cd46]
    ld [$cf66], a
    ret


    ld b, b
    rlca
    inc c
    dec bc
    inc de
    nop
    nop
    nop
    ld b, b
    rlca
    rrca
    dec bc
    inc de
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld a, a
    xor $50
    ld a, a
    adc e
    sbc h
    rst $30
    or $7f
    ld d, b
    ld d, b
    ld a, a
    adc e
    sbc h
    ld hl, sp-$0a
    ld a, a
    ld d, b
    ld d, b
    ld a, a
    adc e
    sbc h
    ld sp, hl
    or $7f
    ld d, b
    ld d, b
    ld a, a
    adc e
    sbc h
    ld a, [$7ff6]
    ld d, b
    ld d, b
    ld a, a
    adc e
    sbc h
    ei
    or $7f
    ld d, b
    ld d, b
    ld a, a
    adc e
    sbc h
    db $fc
    or $7f
    ld d, b
    ld d, b
    ld a, a
    adc e
    sbc h
    db $fd
    or $7f
    ld d, b
    ld d, b
    ld a, a
    adc e
    sbc h
    cp $f6
    ld a, a
    ld d, b
    ld d, b
    ld a, a
    adc e
    sbc h
    rst $38
    or $7f
    ld d, b
    ld d, b
    ld a, a
    adc e
    sbc h
    rst $30
    or $f6
    ld d, b
    ld d, b
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    ld d, b
    ld a, a
    adc e
    sbc h
    rst $30
    or $7f
    ld d, b
    ld d, b
    ld a, a
    adc e
    sbc h
    ld hl, sp-$0a
    ld a, a
    ld d, b
    ld d, b
    ld a, a
    adc e
    sbc h
    ld sp, hl
    or $7f
    ld d, b
    ld d, b
    ld a, a
    adc e
    sbc h
    ld a, [$7ff6]
    ld d, b
    ld d, b
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    ld d, b
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b

Call_046_5d93:
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld a, [$cd4f]
    ld c, $0a
    call $3105
    ld hl, $cd50
    ld [hl], a
    ld bc, $0030
    ld de, $dcfe
    ld a, [$dcd7]

jr_046_5daf:
    push af
    ld a, [de]
    push hl
    push de
    pop hl
    add hl, bc
    push hl
    pop de
    pop hl
    cp [hl]
    jr z, jr_046_5dbd

    jr nc, jr_046_5dc6

jr_046_5dbd:
    pop af
    dec a
    jr nz, jr_046_5daf

    pop af
    ldh [rSVBK], a
    and a
    ret


jr_046_5dc6:
    pop af
    ld a, $04
    ld [$cf66], a
    pop af
    ldh [rSVBK], a
    scf
    ret


Call_046_5dd1:
    ldh a, [rSVBK]
    push af
    ld a, [$cd4f]
    cp $07
    jr nc, jr_046_5e08

    ld a, $01
    ldh [rSVBK], a
    ld hl, $dcfe
    ld bc, $0030
    ld de, $dcd8
    ld a, [$dcd7]

jr_046_5deb:
    push af
    ld a, [de]
    cp $96
    jr z, jr_046_5dfd

    cp $97
    jr z, jr_046_5dfd

    cp $f9
    jr c, jr_046_5e02

    cp $fc
    jr nc, jr_046_5e02

jr_046_5dfd:
    ld a, [hl]
    cp $46
    jr c, jr_046_5e0d

jr_046_5e02:
    add hl, bc
    inc de
    pop af
    dec a
    jr nz, jr_046_5deb

jr_046_5e08:
    pop af
    ldh [rSVBK], a
    and a
    ret


jr_046_5e0d:
    pop af
    ld a, [de]
    ld [$d265], a
    call $343b
    ld hl, $d073
    ld de, $cd49
    ld bc, $000b
    call $3026
    ld a, $0a
    ld [$cf66], a
    pop af
    ldh [rSVBK], a
    scf
    ret


Jump_046_5e2b:
    call $3e32

Call_046_5e2e:
Jump_046_5e2e:
    ld hl, $cf66
    inc [hl]
    ret


    ld e, b
    dec l
    ld b, a
    ld h, c
    ld l, l
    ld h, l
    dec l
    ld h, e
    ld l, a
    ld h, h
    ld h, l
    ld a, [hl-]
    ld a, [bc]
    ld e, b
    dec l
    ld b, a
    ld h, c
    ld l, l
    ld h, l
    dec l
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], l
    ld l, h
    ld [hl], h
    ld a, [hl-]
    ld a, [bc]

Call_046_5e4f:
    push bc
    ld hl, $d100
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a

jr_046_5e57:
    ld a, [de]
    cp [hl]
    jr z, jr_046_5e64

jr_046_5e5b:
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_046_5e57

jr_046_5e61:
    pop bc
    scf
    ret


jr_046_5e64:
    push de

jr_046_5e65:
    ld a, [de]
    inc de
    cp $0a
    jr z, jr_046_5e7a

    cp [hl]
    jr nz, jr_046_5e77

    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_046_5e65

    pop de
    jr jr_046_5e61

jr_046_5e77:
    pop de
    jr jr_046_5e5b

jr_046_5e7a:
    pop de
    pop bc
    inc hl
    ld de, $d880

jr_046_5e80:
    ld a, [hl+]
    ld [de], a
    inc de
    cp $0d
    jr z, jr_046_5e8c

    dec c
    jr nz, jr_046_5e80

    scf
    ret


jr_046_5e8c:
    and a
    ret


Call_046_5e8e:
    cp $60
    jr c, jr_046_5e95

    sub $57
    ret


jr_046_5e95:
    sub $30
    ret


Call_046_5e98:
    ld a, $02

jr_046_5e9a:
    push af
    ld a, [bc]
    dec bc
    call Call_046_5e8e
    or [hl]
    ld [hl], a
    ld a, [bc]
    dec bc
    call Call_046_5e8e
    rlca
    rlca
    rlca
    rlca
    or [hl]
    ld [hl], a
    inc hl
    pop af
    dec a
    and a
    jr nz, jr_046_5e9a

    ret


Call_046_5eb4:
    xor a
    ld [$c3cc], a
    ld de, $c3ac

jr_046_5ebb:
    ld a, [de]
    inc de
    ld [hl+], a
    and a
    jr nz, jr_046_5ebb

    ret


Call_046_5ec2:
    ld a, $05
    call $2fcb
    xor a
    ld [$aa5c], a
    ld de, $aa4c

jr_046_5ece:
    ld a, [de]
    inc de
    ld [hl+], a
    and a
    jr nz, jr_046_5ece

    call $2fe1
    ret


Call_046_5ed8:
    ldh a, [rSVBK]
    ld [$cd8c], a
    ld a, $01
    ldh [rSVBK], a
    call Call_046_5eee
    ld a, [$cd8c]
    ldh [rSVBK], a
    ld a, $01
    ldh [$d4], a
    ret


Call_046_5eee:
    ld a, [$cd3c]
    ld e, a
    ld d, $00
    ld hl, $5efd
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ccf
    ld e, a
    ld b, l
    ld e, a
    ld d, [hl]
    ld e, a
    db $76
    ld e, a
    sbc b
    ld e, a
    inc de
    ld h, c
    add hl, hl
    ld h, c
    ld sp, $3d61
    ld h, c
    ld c, e
    ld h, c
    ld l, l
    ld h, c
    sub d
    ld h, c
    and $62
    ld [bc], a
    ld h, e
    ld a, [hl-]
    ld h, e
    rlca
    ld h, d
    dec [hl]
    ld h, d
    ld d, a
    ld h, e
    ld l, e
    ld h, e
    adc l
    ld h, e
    push bc
    ld h, e
    reti


    ld h, e
    ld sp, hl
    ld h, e
    dec de
    ld h, h
    ld d, d
    ld h, h
    ld a, d
    ld h, h
    adc b
    ld h, h
    sbc [hl]
    ld h, h
    db $db
    ld h, h
    add sp, $64
    cp $64
    ld h, [hl]
    ld h, h
    ld a, d
    ld h, h
    call Call_046_65b9
    jp Jump_046_65b0


    ld hl, $c4cc
    ld de, $6661
    call $1078
    ld a, $80
    ld [$cd44], a
    jp Jump_046_65b0


    ld a, [$cd44]
    and a
    jr z, jr_046_5f62

    dec a
    ld [$cd44], a
    scf
    ret


jr_046_5f62:
    call Call_046_663c
    ld hl, $c4cc
    ld de, $66aa
    call $1078
    ld a, $80
    ld [$cd44], a
    jp Jump_046_65b0


    ld a, [$cd44]
    and a
    jr z, jr_046_5f82

    dec a
    ld [$cd44], a
    scf
    ret


jr_046_5f82:
    call Call_046_663c
    ld hl, $c4cc
    ld de, $6679
    call $1078
    call Call_046_65f5
    xor a
    ld [$cd44], a
    jp Jump_046_65b0


    call Call_046_6536
    ret c

    call $2009
    ld a, [$cd44]
    and a
    jr nz, jr_046_5fef

    call $1c07
    call Call_046_663c
    xor a
    ld [$c2dd], a
    call Call_046_600e
    ld a, [$c2dd]
    and a
    jr z, jr_046_5fd4

    call $1c07
    ld a, $41
    ld hl, $4061
    rst $08
    ld a, $45
    ld hl, $5dc3
    rst $08
    ld a, [$cd33]
    ld [$cf66], a
    ld a, $0a
    ld [$c300], a
    scf
    ret


jr_046_5fd4:
    ld hl, $c4cc
    ld de, $6692
    call $1078
    ld a, $01
    ld [$c30d], a
    ld a, $01
    ld [$c314], a
    ld a, $41
    ld hl, $4061
    rst $08
    and a
    ret


jr_046_5fef:
    call $1c07
    call $1c07
    ld a, $41
    ld hl, $4061
    rst $08
    ld a, [$cd45]
    ld [$cf66], a
    ld a, $45
    ld hl, $5dc3
    rst $08
    ld a, $0a
    ld [$c300], a
    scf
    ret


Call_046_600e:
    ld a, $05
    call $2fcb
    ld a, [$aa4b]
    and a
    jr z, jr_046_602a

    ld a, [$aa4c]
    call $2fe1
    and a
    ret nz

    ld a, $05
    call $2fcb
    xor a
    ld [$aa4b], a

jr_046_602a:
    call $2fe1
    ld a, [$cd48]
    and a
    jr z, jr_046_6039

    dec a
    jr z, jr_046_6081

    jp Jump_046_60ca


jr_046_6039:
    ld a, $03
    ldh [rSVBK], a
    ld hl, $c608
    ld de, $d800
    ld bc, $00f6
    call $3026
    ld a, $01
    ldh [rSVBK], a
    call $2b29
    ld a, $45
    ld hl, $765d
    rst $08
    call Call_046_69ce
    ld a, $03
    ldh [rSVBK], a
    ld hl, $d800
    ld de, $c608
    ld bc, $00f6
    call $3026
    ld a, $01
    ldh [rSVBK], a
    ld a, $45
    ld hl, $5d99
    rst $08
    ld c, $00
    ld a, $45
    ld hl, $5e18
    rst $08
    ld a, $01
    ld [$c305], a
    ret


jr_046_6081:
    xor a
    ld [$cf83], a
    ld [$cf82], a
    ld a, $13
    ld [$cf85], a
    ld a, $05
    ld [$cf84], a
    call $1c00
    ld a, $45
    ld hl, $765d
    rst $08
    ld a, $45
    ld hl, $7ab4
    rst $08
    ld a, $41
    ld hl, $6462
    rst $08
    ld a, $41
    ld hl, $6464
    rst $08
    call $1c07
    ld a, $41
    ld hl, $4061
    rst $08
    ld a, $45
    ld hl, $5d99
    rst $08
    ld c, $00
    ld a, $45
    ld hl, $5e18
    rst $08
    ld a, $01
    ld [$c305], a
    ret


Jump_046_60ca:
    xor a
    ld [$cf83], a
    ld [$cf82], a
    ld a, $13
    ld [$cf85], a
    ld a, $11
    ld [$cf84], a
    call $1c00
    ld a, $45
    ld hl, $765d
    rst $08
    ld a, $5f
    ld hl, $53f6
    rst $08
    ld a, $41
    ld hl, $6462
    rst $08
    ld a, $41
    ld hl, $6464
    rst $08
    call $1c07
    ld a, $41
    ld hl, $4061
    rst $08
    ld a, $45
    ld hl, $5d99
    rst $08
    ld c, $00
    ld a, $45
    ld hl, $5e18
    rst $08
    ld a, $01
    ld [$c305], a
    ret


    call Call_046_663c
    ld c, $01
    ld a, $45
    ld hl, $5e18
    rst $08
    ld hl, $c4cc
    ld de, $66c8
    call $1078
    and a
    ret


    ld a, $80
    ld [$cd44], a
    jp Jump_046_65b0


    ld hl, $cd44
    dec [hl]
    ret nz

    ld a, [$cd3c]
    inc a
    ld [$cd3c], a
    call Call_046_663c
    ld hl, $c4cc
    ld de, $66d2
    call $1078
    and a
    ret


    ld hl, $cd85
    ld a, [hl]
    cp $f3
    jr nz, jr_046_6155

    and a
    ret


jr_046_6155:
    call Call_046_61d6
    ret c

    call Call_046_663c
    ld hl, $c4cc
    ld de, $66f1
    call $1078
    ld a, $80
    ld [$cd44], a
    jp Jump_046_65b0


    ld a, [$cd44]
    and a
    jr z, jr_046_6179

    dec a
    ld [$cd44], a
    scf
    ret


jr_046_6179:
    call Call_046_663c
    call Call_046_61e6
    ld hl, $c4cc
    ld de, $c346
    call $1078
    call Call_046_65f5
    xor a
    ld [$cd44], a
    jp Jump_046_65b0


    call Call_046_6536
    ret c

    call $2009
    ld a, [$cd44]
    and a
    jr nz, jr_046_61b6

    call $1c07
    ld a, $41
    ld hl, $4061
    rst $08
    call Call_046_663c
    ld hl, $c4cc
    ld de, $66d2
    call $1078
    and a
    ret


jr_046_61b6:
    call $1c07
    ld a, $41
    ld hl, $4061
    rst $08
    ld a, [$cd45]
    ld [$cf66], a
    ld [$cd80], a
    call Call_046_663c
    ld hl, $c4cc
    ld de, $66d2
    call $1078
    scf
    ret


Call_046_61d6:
    ld a, [$cd85]
    cp $50
    jr nz, jr_046_61e4

    ld a, $d3
    call Call_046_4805
    scf
    ret


jr_046_61e4:
    and a
    ret


Call_046_61e6:
    ld hl, $6706
    ld de, $c346
    call Call_046_61ff
    ld hl, $cd85
    call Call_046_61ff
    ld hl, $670b
    call Call_046_61ff
    ld a, $50
    ld [de], a
    ret


Call_046_61ff:
jr_046_61ff:
    ld a, [hl+]
    cp $50
    ret z

    ld [de], a
    inc de
    jr jr_046_61ff

    ld hl, $62de
    call $1d35
    call $1cbb
    call $1cfd
    call $321c
    ld hl, $c550
    ld de, $62cf
    call $1078
    ld hl, $c578
    ld de, $62d3
    call $1078
    ld hl, $c54f
    ld a, $ed
    ld [hl], a
    xor a
    ld [$cd44], a
    jp Jump_046_65b0


    ld hl, $ffa7
    ld a, [hl]
    and $01
    jr nz, jr_046_628f

    ld a, [hl]
    and $02
    jr nz, jr_046_62c1

    ld a, [hl]
    and $40
    jr nz, jr_046_6251

    ld a, [hl]
    and $80
    jr nz, jr_046_6270

jr_046_624c:
    call Call_046_69f0
    scf
    ret


jr_046_6251:
    xor a
    ld [$cd8a], a
    ld [$cd8b], a
    ld a, [$cd44]
    and a
    jr z, jr_046_624c

    xor a
    ld [$cd44], a
    ld hl, $c54f
    ld a, $ed
    ld [hl], a
    ld hl, $c577
    ld a, $7f
    ld [hl], a
    jr jr_046_624c

jr_046_6270:
    xor a
    ld [$cd8a], a
    ld [$cd8b], a
    ld a, [$cd44]
    and a
    jr nz, jr_046_624c

    inc a
    ld [$cd44], a
    ld hl, $c54f
    ld a, $7f
    ld [hl], a
    ld hl, $c577
    ld a, $ed
    ld [hl], a
    jr jr_046_624c

jr_046_628f:
    xor a
    ld [$cd8a], a
    ld [$cd8b], a
    call $2009
    ld a, [$cd44]
    and a
    jr nz, jr_046_62c4

    call $1c07
    ld a, $41
    ld hl, $4061
    rst $08
    ld a, [$cd46]
    cp $00
    jr z, jr_046_62b4

    ld a, [$cd47]
    jr jr_046_62b7

jr_046_62b4:
    ld a, [$cd33]

jr_046_62b7:
    ld [$cf66], a
    ld a, $0a
    ld [$c300], a
    scf
    ret


jr_046_62c1:
    call $2009

jr_046_62c4:
    call $1c07
    ld a, $41
    ld hl, $4061
    rst $08
    and a
    ret


    sbc b
    add h
    sub d
    ld d, b
    adc l
    adc [hl]
    ld d, b
    ld b, b
    ld b, $0e
    ld a, [bc]
    inc de
    nop
    nop
    nop
    ld b, b
    rlca
    ld c, $0b
    inc de
    nop
    nop
    nop
    call Call_046_663c
    ld c, $02
    ld a, $45
    ld hl, $5e18
    rst $08
    ld hl, $c4cc
    ld de, $671e
    call $1078
    ld a, $80
    ld [$cd44], a
    jp Jump_046_65b0


    ld a, [$cd44]
    and a
    jr z, jr_046_630e

    dec a
    ld [$cd44], a
    scf
    ret


jr_046_630e:
    call Call_046_663c
    ld hl, $c4cc
    ld de, $672a
    call $1078
    ld hl, $c4f9
    ld de, $cd68
    ld bc, $8102
    call $3198
    ld hl, $c4fe
    ld de, $cd67
    ld bc, $8102
    call $3198
    ld a, $80
    ld [$cd44], a
    jp Jump_046_65b0


    ld a, [$cd44]
    and a
    jr z, jr_046_6346

    dec a
    ld [$cd44], a
    scf
    ret


jr_046_6346:
    call $1c07
    ld a, $41
    ld hl, $4061
    rst $08
    ld a, $45
    ld hl, $5dc3
    rst $08
    and a
    ret


    call Call_046_663c
    ld hl, $c4cc
    ld de, $6743
    call $1078
    ld a, $80
    ld [$cd44], a
    jp Jump_046_65b0


    ld a, [$cd44]
    and a
    jr z, jr_046_6377

    dec a
    ld [$cd44], a
    scf
    ret


jr_046_6377:
    call Call_046_663c
    ld hl, $c4cc
    ld de, $6755
    call $1078
    call Call_046_65f5
    xor a
    ld [$cd44], a
    jp Jump_046_65b0


    call Call_046_6536
    ret c

    call $2009
    ld a, [$cd44]
    and a
    jr nz, jr_046_63b1

    call $1c07
    ld a, $41
    ld hl, $4061
    rst $08
    call Call_046_663c
    ld hl, $c4cc
    ld de, $66d2
    call $1078
    and a
    ret


jr_046_63b1:
    call $1c07
    ld a, $41
    ld hl, $4061
    rst $08
    ld a, [$cd45]
    ld [$cf66], a
    ld [$cd80], a
    scf
    ret


    call Call_046_663c
    ld hl, $c4cc
    ld de, $6762
    call $1078
    ld a, $80
    ld [$cd44], a
    jp Jump_046_65b0


    ld a, [$cd44]
    and a
    jr z, jr_046_63e5

    dec a
    ld [$cd44], a
    scf
    ret


jr_046_63e5:
    call Call_046_663c
    ld hl, $c4cc
    ld de, $6779
    call $1078
    ld a, $80
    ld [$cd44], a
    jp Jump_046_65b0


    ld a, [$cd44]
    and a
    jr z, jr_046_6405

    dec a
    ld [$cd44], a
    scf
    ret


jr_046_6405:
    call Call_046_663c
    ld hl, $c4cc
    ld de, $6755
    call $1078
    call Call_046_65f5
    xor a
    ld [$cd44], a
    jp Jump_046_65b0


    call Call_046_6536
    ret c

    call $2009
    ld a, [$cd44]
    and a
    jr nz, jr_046_643f

    call $1c07
    ld a, $41
    ld hl, $4061
    rst $08
    call Call_046_663c
    ld hl, $c4cc
    ld de, $66d2
    call $1078
    and a
    ret


jr_046_643f:
    call $1c07
    ld a, $41
    ld hl, $4061
    rst $08
    ld a, $1c
    ld [$cf66], a
    ld [$cd80], a
    scf
    ret


    call Call_046_663c
    ld hl, $c4cc
    ld de, $6791
    call $1078
    ld a, $80
    ld [$cd44], a
    jp Jump_046_65b0


    call Call_046_663c
    ld hl, $c4cc
    ld de, $67c1
    call $1078
    ld a, $80
    ld [$cd44], a
    jp Jump_046_65b0


    ld a, [$cd44]
    and a
    jr z, jr_046_6486

    dec a
    ld [$cd44], a
    scf
    ret


jr_046_6486:
    and a
    ret


    call Call_046_663c
    ld hl, $c4cc
    ld de, $67ac
    call $1078
    call Call_046_65f5
    xor a
    ld [$cd44], a
    jp Jump_046_65b0


    call Call_046_6536
    ret c

    call $2009
    ld a, [$cd44]
    and a
    jr nz, jr_046_64c7

    call $1c07
    ld a, $41
    ld hl, $4061
    rst $08
    call Call_046_663c
    ld hl, $c4cc
    ld de, $66d2
    call $1078
    ld a, $14
    ld [$cf66], a
    and a
    ret


jr_046_64c7:
    call $1c07
    ld a, $41
    ld hl, $4061
    rst $08
    ld a, [$cd46]
    ld [$cf66], a
    ld [$cd80], a
    scf
    ret


    call Call_046_663c
    ld de, $66db
    ld hl, $c4cc
    call $1078
    ret


    call Call_046_663c
    ld hl, $c4cc
    ld de, $67d7
    call $1078
    call Call_046_65f5
    xor a
    ld [$cd44], a
    jp Jump_046_65b0


    call Call_046_6536
    ret c

    call $2009
    ld a, [$cd44]
    and a
    jr nz, jr_046_6522

    call $1c07
    ld a, $41
    ld hl, $4061
    rst $08
    call Call_046_663c
    ld hl, $c4cc
    ld de, $66d2
    call $1078
    and a
    ret


jr_046_6522:
    call $1c07
    ld a, $41
    ld hl, $4061
    rst $08
    ld a, [$cd45]
    ld [$cf66], a
    ld [$cd80], a
    scf
    ret


Call_046_6536:
    ld hl, $ffa7
    ld a, [hl]
    and $01
    jr nz, jr_046_65a7

    ld a, [hl]
    and $02
    jr nz, jr_046_65a2

    ld a, [hl]
    and $40
    jr nz, jr_046_6564

    ld a, [hl]
    and $80
    jr nz, jr_046_6583

jr_046_654d:
    ld a, [$cd3c]
    cp $04
    jr z, jr_046_6562

    call Call_046_69f0
    jr nz, jr_046_6562

    call $1c07
    ld a, $41
    ld hl, $4061
    rst $08

jr_046_6562:
    scf
    ret


jr_046_6564:
    xor a
    ld [$cd8a], a
    ld [$cd8b], a
    ld a, [$cd44]
    and a
    jr z, jr_046_654d

    xor a
    ld [$cd44], a
    ld hl, $c53b
    ld a, $ed
    ld [hl], a
    ld hl, $c563
    ld a, $7f
    ld [hl], a
    jr jr_046_654d

jr_046_6583:
    xor a
    ld [$cd8a], a
    ld [$cd8b], a
    ld a, [$cd44]
    and a
    jr nz, jr_046_654d

    inc a
    ld [$cd44], a
    ld hl, $c53b
    ld a, $7f
    ld [hl], a
    ld hl, $c563
    ld a, $ed
    ld [hl], a
    jr jr_046_654d

jr_046_65a2:
    ld a, $01
    ld [$cd44], a

jr_046_65a7:
    xor a
    ld [$cd8a], a
    ld [$cd8b], a
    and a
    ret


Jump_046_65b0:
    ld a, [$cd3c]
    inc a
    ld [$cd3c], a
    scf
    ret


Call_046_65b9:
    xor a
    ld [$cf83], a
    ld [$cf82], a
    ld a, $13
    ld [$cf85], a
    ld a, $05
    ld [$cf84], a
    call $1c00
    ld hl, $cdd9
    ld b, $06
    ld c, $14
    ld hl, $c4a0
    ld b, $04
    ld c, $12
    call $3eea
    ld a, $41
    ld hl, $4061
    rst $08
    call $1ad2
    ld c, $00
    ld a, $45
    ld hl, $5e18
    rst $08
    ld a, $01
    ld [$c305], a
    ret


Call_046_65f5:
    ld a, $0e
    ld [$cf83], a
    ld a, $13
    ld [$cf85], a
    ld a, $06
    ld [$cf82], a
    ld a, $0a
    ld [$cf84], a
    call $1c00
    ld hl, $ce5f
    ld b, $05
    ld c, $06
    ld hl, $c526
    ld b, $03
    ld c, $04
    call $3eea
    ld hl, $c53c
    ld de, $62cf
    call $1078
    ld hl, $c564
    ld de, $62d3
    call $1078
    ld hl, $c53b
    ld a, $ed
    ld [hl], a
    ld a, $41
    ld hl, $4061
    rst $08
    ret


Call_046_663c:
    ld hl, $c4b8
    ld de, $67f4
    call $1078
    ld hl, $c4cc
    ld de, $67f4
    call $1078
    ld hl, $c4e0
    ld de, $67f4
    call $1078
    ld hl, $c4f4
    ld de, $67f4
    call $1078
    ret


    cp d
    jp c, $d7b6

    ld a, a
    and c
    add hl, de
    add c
    and [hl]
    adc l
    xor e
    adc a
    db $e3
    add $4e
    inc sp
    sbc $dc
    rra
    or [hl]
    cp c
    rst $08
    cp l
    ld d, b
    and c
    add hl, de
    add c
    and [hl]
    add b
    rrca
    ld b, d
    adc a
    dec h
    inc l
    pop hl
    sbc $3b
    jp z, $334e

    or a
    jp $b27f


    rst $08
    cp l
    or [hl]
    and $50
    inc sp
    sbc $dc
    rra
    or [hl]
    cp c
    jp $cfb2


    cp l
    ld c, [hl]
    cp h
    ld a, [hl-]
    rst $10
    cp b
    ld a, a
    or l
    rst $08
    pop bc
    cp b
    jr nc, @-$43

    or d
    ld d, b
    inc sp
    sbc $dc
    db $dd
    or [hl]
    cp c
    reti


    call nz, $c27f
    or e
    call c, $e2d8
    or e
    ld c, [hl]
    cp [hl]
    jp nz, $b82f

    ret c

    ld [c], a
    or e
    ld c, d
    or [hl]
    or [hl]
    ret c

    rst $08
    cp l
    ld d, b
    cp [hl]
    jp nz, $b82f

    ld a, a
    cp h
    rst $08
    cp h
    ret nz

    ld d, b
    jp nz, $bcb3

    sbc $7f
    pop bc
    pop hl
    or e
    ld d, b
    jp nz, $bcb3

    sbc $7f
    pop bc
    pop hl
    or e
    ld c, [hl]
    adc l
    and a
    add a
    sub e
    ld a, a
    add e
    db $e3
    inc sp
    pop bc
    pop hl
    or e
    cp h
    ld d, b
    cp d
    ret


    ld a, a
    adc d
    db $e3
    ld a, [de]
    adc h
    add $ca
    ld c, [hl]
    jp nz, $dcb3

    ret c

    ld [c], a
    or e
    dec h
    adc $b6
    add $50
    or l
    or [hl]
    ret z

    ld c, d
    ld d, b
    or h
    sbc $4e
    or [hl]
    or [hl]
    ret c

    rst $08
    cp l
    ld a, a
    sub $db
    cp h
    or d
    ld a, a
    inc sp
    cp l
    or [hl]
    and $50
    jp nz, $bcb3

    sbc $7f
    cp h
    pop hl
    or e
    ret c

    ld [c], a
    or e
    ld d, b
    jp nz, $b2c5

    jr nc, jr_046_67ae

    inc l
    or [hl]
    sbc $4e
    ld a, a
    ld a, a
    call nc, Call_046_7fb8
    ld a, a
    ld a, a
    call z, Call_046_7fde
    ld a, a
    ld a, a
    dec sp
    ld [c], a
    or e
    ld d, b
    db $d3
    rst $18
    jp $c5b2


    or d
    ld a, a
    ld [de], a
    db $e3
    adc a
    ld h, $4e
    or c
    ret c

    rst $08
    cp l
    rst $20
    ld d, b
    ld [de], a
    db $e3
    adc a
    rra
    sub $d0
    cp d
    ret nc

    rst $08
    cp l
    or [hl]
    and $50
    or l
    push bc
    inc l
    ld a, a
    ld [de], a
    db $e3
    adc a
    rra
    sub $d0
    cp d
    sbc $30
    ld c, [hl]
    cp d
    call nz, $b14a
    ret c

    rst $08
    cp l
    ld h, $50
    cp a
    ret


    ld [de], a
    db $e3
    adc a
    inc h
    push bc
    cp b
    push bc
    rst $18
    jp $d9b2


    or [hl]
    ld c, [hl]
    cp d
    call c, $c3da
    ld a, a
    or d
    rst $08
    cp l
    ld d, b
    db $d3
    rst $18
    jp $d9b2


    ld a, a
    ld [de], a
    db $e3
    adc a
    call nz, $b54e
    push bc
    inc l
    ld [de], a
    db $e3
    adc a
    cp h
    or [hl]
    ld a, a
    or c
    ret c

    rst $08
    cp [hl]
    sbc $e7
    ld d, b
    ld [de], a
    db $e3

jr_046_67ae:
    adc a
    dec h
    sub $d0
    cp d
    ret nc

    db $dd
    ld c, [hl]
    pop bc
    pop hl
    or e
    cp h
    ld a, a
    cp h
    rst $08
    cp l
    or [hl]
    and $50
    or c
    ret nz

    rst $10
    cp h
    or d
    ld a, a
    sub l
    xor [hl]
    db $e3
    adc h
    jp z, $b14e

    ret c

    rst $08
    cp [hl]
    sbc $7f
    inc sp
    cp h
    ret nz

    ld d, b
    or c
    ret nz

    rst $10
    cp h
    or d
    sub l
    xor [hl]
    db $e3
    adc h
    ld c, d
    or c
    ret c

    rst $08
    cp l
    ld c, [hl]
    sub l
    xor [hl]
    db $e3
    adc h
    rra
    sub $d0
    cp d
    ret nc

    rst $08
    cp l
    or [hl]
    and $50
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld d, b
    ld b, b
    nop
    nop
    dec b
    inc de
    nop
    nop
    nop
    ld de, $ffb7
    ld bc, $ffb3
    ld hl, $689a
    call Call_046_688c
    ld bc, $ffb4
    ld hl, $68ba
    call Call_046_688c
    ld bc, $ffb5
    ld hl, $68da
    call Call_046_688c
    xor a
    ld b, a
    ldh a, [$b7]
    and $0f
    ld e, a
    ldh a, [$b9]
    and $0f
    call Call_046_6884
    ld e, a
    ldh a, [$bb]
    and $0f
    call Call_046_6884
    ld [$cd62], a
    ld e, b
    xor a
    ld b, a
    ldh a, [$b7]
    and $f0
    swap a
    call Call_046_6884
    ld e, a
    ldh a, [$b9]
    and $f0
    swap a
    call Call_046_6884
    ld e, a
    ldh a, [$bb]
    and $f0
    swap a
    call Call_046_6884
    ld [$cd63], a
    ld e, b
    xor a
    ld b, a
    ldh a, [$b8]
    and $0f
    call Call_046_6884
    ld e, a
    ldh a, [$ba]
    and $0f
    call Call_046_6884
    ld e, a
    ldh a, [$bc]
    and $0f
    call Call_046_6884
    ld [$cd64], a
    ret


Call_046_6884:
    add e
    cp $0a
    ret c

    sub $0a
    inc b
    ret


Call_046_688c:
    ld a, [bc]
    sla a
    ld c, a
    xor a
    ld b, a
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    inc de
    ret


    nop
    nop
    ld bc, $0200
    nop
    inc bc
    nop
    inc b
    nop
    dec b
    nop
    ld b, $00
    rlca
    nop
    ld [$0900], sp
    nop
    stop
    ld de, $1200
    nop
    inc de
    nop
    inc d
    nop
    dec d
    nop
    nop
    nop
    ld d, $00
    ld [hl-], a
    nop
    ld c, b
    nop
    ld h, h
    nop
    add b
    nop
    sub [hl]
    nop
    ld [de], a
    ld bc, $0128
    ld b, h
    ld bc, $0160
    db $76
    ld bc, $0192
    ld [$2402], sp
    ld [bc], a
    ld b, b
    ld [bc], a
    nop
    nop
    ld d, [hl]
    ld [bc], a
    ld [de], a
    dec b
    ld l, b
    rlca
    inc h
    db $10
    add b
    ld [de], a
    ld [hl], $15
    sub d
    rla
    ld c, b
    jr nz, @+$06

    inc hl
    ld h, b
    dec h
    ld d, $28
    ld [hl], d
    jr nc, @+$2a

jr_046_68f5:
    inc sp
    add h
    dec [hl]
    ld b, b
    jr c, jr_046_68f5

    ld a, [de]
    jp $165f


    nop
    ld hl, $6909
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld [hl], b
    ld l, c
    rrca
    ld l, c
    ld [hl], c
    ld l, c
    ld a, $01
    ldh [rSVBK], a
    call $103e
    ld a, $50
    ld hl, $c320
    ld bc, $008c
    call $3041
    ld a, [$c31b]
    ld l, a
    ld a, [$c31c]
    ld h, a
    ld de, $c320

jr_046_692c:
    ld a, [hl+]
    cp $57
    jr z, jr_046_694f

    cp $00
    jr z, jr_046_692c

    cp $50
    jr z, jr_046_692c

    cp $01
    jr z, jr_046_6941

    ld [de], a
    inc de
    jr jr_046_692c

jr_046_6941:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a

jr_046_6945:
    ld a, [bc]
    inc bc
    cp $50
    jr z, jr_046_692c

    ld [de], a
    inc de
    jr jr_046_6945

jr_046_694f:
    xor a
    ld [$c31f], a
    ld a, $20
    ld [$c31b], a
    ld a, $c3
    ld [$c31c], a
    ld hl, $c5b9
    ld a, l
    ld [$c31d], a
    ld a, h
    ld [$c31e], a
    ld hl, $c31a
    inc [hl]
    ld a, $03
    ldh [rSVBK], a
    ret


    ld hl, $c31f
    ldh a, [$a8]
    and a
    jr nz, jr_046_697f

    ld a, [hl]
    and a
    jr z, jr_046_697f

    dec [hl]
    ret


jr_046_697f:
    ld a, [$cfcc]
    and $07
    ld [hl], a
    ld hl, $cd8d
    ld a, [$c31b]
    ld e, a
    ld a, [$c31c]
    ld d, a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, e
    ld [$c31b], a
    ld a, d
    ld [$c31c], a
    ld a, $50
    ld [hl], a
    ld a, [$c31d]
    ld l, a
    ld a, [$c31e]
    ld h, a
    ld de, $cd8d
    call $1078
    ld a, c
    ld [$c31d], a
    ld a, b
    ld [$c31e], a
    ld a, [$cd8d]
    cp $50
    jr nz, jr_046_69bf

    xor a
    ld [$c31a], a

jr_046_69bf:
    ret


Call_046_69c0:
    ld a, l
    ld [$c31b], a
    ld a, h
    ld [$c31c], a
    ld a, $01
    ld [$c31a], a
    ret


Call_046_69ce:
    call $31f3
    call $2bae
    call $1d7d
    ld a, $41
    ld hl, $6462
    rst $08
    ld a, $41
    ld hl, $6464
    rst $08
    call $0d90
    ld a, $00
    ld hl, $2b5c
    rst $08
    call $1ad2
    ret


Call_046_69f0:
    ld a, $01
    and a
    ret


    ld a, [$cd8a]
    ld l, a
    ld a, [$cd8b]
    ld h, a
    inc hl
    ld a, l
    ld [$cd8a], a
    ld a, h
    ld [$cd8b], a
    ld de, $d5d0
    add hl, de
    bit 7, h
    ret nz

    ld a, $d6
    call Call_046_4805
    and a
    ret


    nop
    sub d
    add b
    sub l
    add h
    ld a, a
    add l
    adc b
    adc e
    add h
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld c, a
    or d
    and h
    xor l
    or e
    add sp, $57
    nop
    sub d
    and h
    xor l
    or e
    ld a, a
    sub d
    add b
    sub l
    add h
    ld a, a
    add l
    adc b
    adc e
    add h
    add sp, $4f
    sub c
    and h
    and b
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    adc l
    add h
    sub [hl]
    sub d
    ld [hl], l
    ld d, a
    nop
    sub c
    and h
    and b
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    adc l
    add h
    sub [hl]
    sub d
    ld [hl], l
    ld d, a
    nop
    sub c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld a, a
    adc l
    add h
    sub [hl]
    sub d
    rst $20
    ld d, a
    nop
    sub b
    or h
    xor b
    or e
    ld a, a
    or c
    and h
    and b
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    adc l
    add h
    sub [hl]
    sub d
    and $57
    nop
    add d
    and b
    xor l
    and d
    and h
    xor e
    and h
    and e
    ld a, a
    or d
    and h
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld c, a
    sub d
    add b
    sub l
    add h
    ld a, a
    add l
    adc b
    adc e
    add h
    add sp, $57
    nop
    adc [hl]
    add e
    add e
    ld a, a
    add h
    add [hl]
    add [hl]
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    rst $20
    ld d, a
    nop
    sub c
    and h
    and [hl]
    xor b
    or d
    or e
    and h
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    or c
    and h
    and d
    xor [hl]
    or c
    and e
    ld [hl], l
    ld d, a
    nop
    adc [hl]
    xor l
    and h
    ld a, a
    or l
    xor b
    or d
    xor b
    or e
    ld a, a
    xor a
    and h
    or c
    ld a, a
    and e
    and b
    cp b
    ld c, a
    xor a
    and h
    or c
    ld a, a
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    rst $20
    ld d, a
    nop
    add b
    ld a, a
    xor a
    and b
    or c
    or e
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or e
    xor [hl]
    xor a
    or d
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor e
    and h
    or l
    and h
    xor e
    add sp, $57
    ld bc, $cd49
    nop
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and [hl]
    xor [hl]
    ld c, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld d, c
    sub c
    adc [hl]
    adc [hl]
    adc h
    sub d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and b
    or c
    and h
    ld c, a
    adc e
    or l
    add sp, -$03
    or $7f
    xor [hl]
    or c
    ld a, a
    and a
    xor b
    and [hl]
    and a
    and h
    or c
    add sp, $57
    nop
    add d
    and b
    xor l
    and d
    and h
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld c, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    ld a, a
    and d
    and a
    and b
    xor e
    xor e
    and h
    xor l
    and [hl]
    and h
    and $57
    nop
    add h
    or a
    xor b
    or e
    ld a, a
    add [hl]
    sbc b
    adc h
    ld a, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld c, a
    add a
    adc [hl]
    adc l
    adc [hl]
    sub c
    ld a, a
    sub c
    adc [hl]
    adc e
    adc e
    and $57
    nop
    adc e
    xor b
    xor l
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    and a
    and h
    ld c, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    xor e
    and h
    or l
    and h
    xor e
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    and a
    and b
    xor e
    xor e
    and h
    xor l
    and [hl]
    and h
    and $57
    nop
    add d
    and a
    and h
    and d
    xor d
    ld a, a
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    ld c, a
    xor e
    xor b
    or d
    or e
    ld a, a
    and c
    cp b
    ld a, a
    xor h
    and b
    or a
    ld a, a
    xor e
    and h
    or l
    and h
    xor e
    and $57
    nop
    add h
    xor l
    or e
    and h
    or c
    ld a, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld c, a
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    and $57
    nop
    sub [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    and $57
    ld bc, $d099
    nop
    call nc, $917f
    adc [hl]
    adc [hl]
    adc h
    ld c, a
    ld d, b
    ld bc, $d0ac
    nop
    and $55
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or [hl]
    and b
    xor b
    or e
    ld [hl], l
    ld d, a
    call $103e
    call $2b29
    ld hl, $6814
    ld a, $23
    rst $08
    call Call_046_6c51
    call $2b3c
    ret


Call_046_6c51:
    xor a
    ldh [$d4], a
    ld hl, $cfcc
    ld a, [hl]
    push af
    set 4, [hl]
    ld a, [$d0ed]
    push af
    xor a
    ld [$d0ed], a
    ldh a, [$aa]
    push af
    ld a, $01
    ldh [$aa], a
    xor a
    ldh [$de], a
    ld [$cd49], a
    ld [$cd4a], a
    ld [$cd4c], a
    ld [$cd4d], a
    ld [$cd4e], a
    call Call_046_6d1b
    call $045a

jr_046_6c82:
    call $0a57
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_046_6ca8

    call Call_046_7314
    call Call_046_6cb7
    call Call_046_6d6e
    ld a, $78
    ld [$c3b5], a
    ld a, $23
    ld hl, $4f7a
    rst $08
    ld a, $41
    ld hl, $4061
    rst $08
    jr jr_046_6c82

jr_046_6ca8:
    call $300b
    pop af
    ldh [$aa], a
    pop af
    ld [$d0ed], a
    pop af
    ld [$cfcc], a
    ret


Call_046_6cb7:
    ld hl, $7a44
    ld a, [$cd49]
    ld c, a
    ld b, $00
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    add hl, bc
    ld de, $c51e
    ld a, [hl+]
    ld [de], a
    ld de, $c52c
    ld bc, $0007
    call $3026
    ld a, [$cd49]
    inc a
    ld [$cd49], a
    ld a, [hl]
    cp $ff
    jr nz, jr_046_6ceb

    xor a
    ld [$cd49], a

jr_046_6ceb:
    ld hl, $7b7d
    ld a, [$cd4a]
    ld c, a
    ld b, $00
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    add hl, bc
    ld de, $c557
    ld bc, $0007
    call $3026
    ld a, [$cd4a]
    inc a
    ld [$cd4a], a
    inc hl
    ld a, [hl]
    cp $ff
    ret nz

    xor a
    ld [$cd4a], a
    ret


Call_046_6d1b:
    call $31f3
    call $300b
    call $0fc8
    ld a, $5f
    ld hl, $4000
    rst $08
    ld a, [$cfa9]
    ld [$cd82], a
    dec a
    ldh [$b0], a
    ld a, $10
    ld [$c3b7], a
    ld hl, $683f
    ld a, $23
    ld e, $04
    rst $08
    ld hl, $683f
    ld a, $23
    ld e, $05
    rst $08
    ld hl, $c6d0
    ld bc, $0115
    xor a
    call $3041
    xor a
    ld [$cf63], a
    ld [$cf64], a
    ld [$cf65], a
    ld [$cf66], a
    ld [$cd30], a
    ld a, $02
    ld [$c7d4], a
    ld a, $10
    ld hl, $4bdc
    rst $08
    ret


Call_046_6d6e:
    ld a, [$cf63]
    ld hl, $6d78
    call Call_046_7239
    jp hl


    add d
    ld [hl], b
    rst $38
    ld [hl], b
    sub l
    ld l, l
    call nz, Call_046_4e6d
    ld l, [hl]
    sbc b
    ld l, [hl]
    adc a
    ld l, l
    inc b
    ld l, a
    ld c, [hl]
    ld l, a

Call_046_6d8a:
Jump_046_6d8a:
    ld hl, $cf63
    inc [hl]
    ret


    ld hl, $cf63
    set 7, [hl]
    ret


    ld hl, $6e38
    call $1d35
    call $1cbb
    ld hl, $c59c
    ld de, $6e40
    call $1078
    ld hl, $ceab
    ld bc, $0808
    call Call_046_6fd6
    ld a, $41
    ld hl, $4061
    rst $08
    call Call_046_6d8a
    ld a, $01
    ld [$cfa9], a
    ld hl, $6fcc
    call Call_046_6fb7
    ld hl, $ffa7
    ld a, [hl]
    and a
    ret z

    ld a, [hl]
    and $40
    jr nz, jr_046_6de6

    ld a, [hl]
    and $80
    jr nz, jr_046_6ded

    ld a, [hl]
    and $01
    jr nz, jr_046_6e06

    ld a, [hl]
    and $02
    ret z

    call $2009
    xor a
    ld [$cf63], a
    jr jr_046_6e2e

jr_046_6de6:
    ld a, [$cfa9]
    dec a
    ret z

    jr jr_046_6df4

jr_046_6ded:
    ld a, [$cfa9]
    inc a
    cp $04
    ret z

jr_046_6df4:
    push af
    ld hl, $6fcc
    call Call_046_6fbb
    pop af
    ld [$cfa9], a
    ld hl, $6fcc
    call Call_046_6fb7
    ret


jr_046_6e06:
    call $2009
    ld a, [$cfa9]
    dec a
    ld hl, $cd30
    ld [hl], a
    and a
    jr z, jr_046_6e28

    ld hl, $c5ba
    ld a, [$cfa9]
    cp $02
    jr z, jr_046_6e23

    call Call_046_7272
    jr jr_046_6e2b

jr_046_6e23:
    call Call_046_7267
    jr jr_046_6e2b

jr_046_6e28:
    ld a, $03
    ld [hl], a

jr_046_6e2b:
    call Call_046_6d8a

jr_046_6e2e:
    call $1c07
    ld a, $41
    ld hl, $4061
    rst $08
    ret


    ld b, b
    ld a, [bc]
    ld a, [bc]
    ld de, $0011
    nop
    nop
    inc [hl]
    pop bc
    rst $10
    inc sp
    db $d3
    ld c, [hl]
    rst $28
    add h
    adc h
    ld c, [hl]
    push af
    and b
    adc h
    ld d, b
    ld hl, $6fe8
    call $1d35
    call $1cbb
    ld hl, $c5c2
    ld de, $6ff0
    call $1078
    ld hl, $7013
    call $1d35
    call $1cbb
    ld hl, $c550
    ld de, $701b
    call $1078
    ld hl, $ce73
    ld bc, $0506
    call Call_046_6fd6
    ld hl, $ced2
    ld bc, $060b
    call Call_046_6fd6
    ld a, $41
    ld hl, $4061
    rst $08
    call Call_046_6d8a
    ld a, $01
    ld [$cfa9], a
    ld hl, $6fd2
    call Call_046_6fb7
    ld hl, $ffa7
    ld a, [hl]
    and a
    ret z

    ld a, [hl]
    and $40
    jr nz, jr_046_6ec1

    ld a, [hl]
    and $80
    jr nz, jr_046_6ec8

    ld a, [hl]
    and $01
    jr nz, jr_046_6ee1

    ld a, [hl]
    and $02
    ret z

    call $2009

jr_046_6eb4:
    ld hl, $c5ba
    ld a, $7f
    ld [hl], a
    ld a, $01
    ld [$cf63], a
    jr jr_046_6ef7

jr_046_6ec1:
    ld a, [$cfa9]
    dec a
    ret z

    jr jr_046_6ecf

jr_046_6ec8:
    ld a, [$cfa9]
    inc a
    cp $03
    ret z

jr_046_6ecf:
    push af
    ld hl, $6fd2
    call Call_046_6fbb
    pop af
    ld [$cfa9], a
    ld hl, $6fd2
    call Call_046_6fb7
    ret


jr_046_6ee1:
    call $2009
    ld a, [$cfa9]
    cp $02
    jr z, jr_046_6eb4

    ld a, [$cd4b]
    ld [$c2dd], a
    call Call_046_7022
    call Call_046_6d8a

jr_046_6ef7:
    call $1c07
    call $1c07
    ld a, $41
    ld hl, $4061
    rst $08
    ret


    ld hl, $6fe8
    call $1d35
    call $1cbb
    ld hl, $c5c2
    ld de, $7003
    call $1078
    ld hl, $7013
    call $1d35
    call $1cbb
    ld hl, $c550
    ld de, $701b
    call $1078
    ld hl, $ce73
    ld bc, $0506
    call Call_046_6fd6
    ld hl, $ced2
    ld bc, $060b
    call Call_046_6fd6
    ld a, $41
    ld hl, $4061
    rst $08
    call Call_046_6d8a
    ld a, $02
    ld [$cfa9], a
    ld hl, $6fd2
    call Call_046_6fb7
    ld hl, $ffa7
    ld a, [hl]
    and a
    ret z

    ld a, [hl]
    and $40
    jr nz, jr_046_6f77

    ld a, [hl]
    and $80
    jr nz, jr_046_6f7e

    ld a, [hl]
    and $01
    jr nz, jr_046_6f97

    ld a, [hl]
    and $02
    ret z

    call $2009

jr_046_6f6a:
    ld hl, $c5ba
    ld a, $7f
    ld [hl], a
    ld a, $01
    ld [$cf63], a
    jr jr_046_6faa

jr_046_6f77:
    ld a, [$cfa9]
    dec a
    ret z

    jr jr_046_6f85

jr_046_6f7e:
    ld a, [$cfa9]
    inc a
    cp $03
    ret z

jr_046_6f85:
    push af
    ld hl, $6fd2
    call Call_046_6fbb
    pop af
    ld [$cfa9], a
    ld hl, $6fd2
    call Call_046_6fb7
    ret


jr_046_6f97:
    call $2009
    ld a, [$cfa9]
    cp $02
    jr z, jr_046_6f6a

    ld a, $06
    ld [$cf63], a
    xor a
    ld [$c2dd], a

jr_046_6faa:
    call $1c07
    call $1c07
    ld a, $41
    ld hl, $4061
    rst $08
    ret


Call_046_6fb7:
    ld e, $ed
    jr jr_046_6fbd

Call_046_6fbb:
    ld e, $7f

jr_046_6fbd:
    ld a, [$cfa9]
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, e
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    ret


    sbc e
    push bc
    jp $ebc5


    push bc
    ld c, a
    push bc
    ld [hl], a
    push bc

Call_046_6fd6:
    ld de, $0014
    ld a, $03

jr_046_6fdb:
    push bc
    push hl

jr_046_6fdd:
    ld [hl+], a
    dec c
    jr nz, jr_046_6fdd

    pop hl
    add hl, de
    pop bc
    dec b
    jr nz, jr_046_6fdb

    ret


    ld b, b
    inc c
    add hl, bc
    ld de, $0013
    nop
    nop
    cp d
    ret


    ld a, a
    inc l
    ld [c], a
    or e
    cp c
    sbc $33
    ld c, [hl]
    sub $db
    cp h
    or d
    inc sp
    cp l
    or [hl]
    and $50
    cp d
    or e
    or [hl]
    sbc $dd
    ld c, [hl]
    pop bc
    pop hl
    or e
    cp h
    cp h
    rst $08
    cp l
    or [hl]
    and $50
    ld b, b
    rlca
    ld c, $0b
    inc de
    nop
    nop
    ld bc, $b2ca
    ld c, [hl]
    or d
    or d
    or h
    ld d, b

Call_046_7022:
    ld a, [$cd2e]
    and a
    jr z, jr_046_702e

    ld hl, $d099
    call Call_046_703d

jr_046_702e:
    ld a, [$cd30]
    and a
    ret z

    cp $03
    ret z

    ld hl, $d0ac
    call Call_046_703d
    ret


Call_046_703d:
    push hl
    push af
    ld c, $01

jr_046_7041:
    ld a, [hl+]
    cp $ef
    jr z, jr_046_7051

    cp $f5
    jr z, jr_046_7051

    cp $50
    jr z, jr_046_7055

    inc c
    jr jr_046_7041

jr_046_7051:
    dec hl
    ld a, $50
    ld [hl+], a

jr_046_7055:
    dec hl
    push hl
    ld e, $04
    ld d, $00
    add hl, de
    ld e, l
    ld d, h
    pop hl

jr_046_705f:
    ld a, [hl-]
    ld [de], a
    dec de
    dec c
    jr nz, jr_046_705f

    pop af
    pop de
    cp $01
    jr nz, jr_046_7070

    ld hl, $707a
    jr jr_046_7073

jr_046_7070:
    ld hl, $707e

jr_046_7073:
    ld bc, $0004
    call $3026
    ret


    add h
    adc h
    ret


    ld a, a
    and b
    adc h
    ret


    ld a, a
    call Call_046_7242
    ld a, $07
    ld [$c7d3], a
    call Call_046_7099
    call Call_046_7295
    call Call_046_7275
    call $32f9
    jp Jump_046_6d8a


Call_046_7099:
    ld c, $06
    ld hl, $c4bf
    ld a, [$c7d3]
    add a
    ld b, a
    xor a
    call Call_046_7236
    ld a, [$c7d0]
    ld e, a
    ld d, $00
    ld hl, $c6d0
    add hl, de
    ld e, l
    ld d, h
    ld hl, $c4d3
    ld a, [$c7d3]

jr_046_70b9:
    push af
    ld a, [de]
    ld [$d265], a
    push de
    push hl
    call Call_046_70cf
    pop hl
    ld de, $0028
    add hl, de
    pop de
    inc de
    pop af
    dec a
    jr nz, jr_046_70b9

    ret


Call_046_70cf:
    and a
    ret z

    call Call_046_70ec
    ret c

    call Call_046_70e1
    push hl
    call $343b
    pop hl
    call $1078
    ret


Call_046_70e1:
    call Call_046_721e
    jr nz, jr_046_70e8

    inc hl
    ret


jr_046_70e8:
    ld a, $01
    ld [hl+], a
    ret


Call_046_70ec:
    call Call_046_722a
    ret nz

    inc hl
    ld de, $70f9
    call $1078
    scf
    ret


    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    ld d, b
    ld hl, $ffa7
    ld a, [hl]
    and $02
    jr nz, jr_046_7141

    ld a, [hl]
    and $01
    jr nz, jr_046_7131

    call Call_046_7175
    jr nc, jr_046_7125

    ld a, [$cd4c]
    inc a
    and $03
    ld [$cd4c], a
    xor a
    ldh [$d4], a
    call Call_046_7099
    ld a, $01
    ldh [$d4], a
    ret


jr_046_7125:
    ld a, [$cd4c]
    and a
    ret z

    inc a
    and $03
    ld [$cd4c], a
    ret


jr_046_7131:
    call Call_046_720b
    call Call_046_722a
    jr z, jr_046_713d

    ld a, $01
    jr jr_046_7148

jr_046_713d:
    ld a, $02
    jr jr_046_7148

jr_046_7141:
    ld hl, $cf63
    ld a, $07
    ld [hl], a
    ret


jr_046_7148:
    call $2009
    ld [$cd4b], a
    and a
    jr z, jr_046_716c

    ld a, [$cf65]
    cp $00
    jr z, jr_046_7163

    cp $fe
    jr z, jr_046_7167

    cp $ff
    jr z, jr_046_716b

    jp Jump_046_6d8a


jr_046_7163:
    ld a, $01
    jr jr_046_716c

jr_046_7167:
    ld a, $02
    jr jr_046_716c

jr_046_716b:
    xor a

jr_046_716c:
    ld [$cd30], a
    ld a, $04
    ld [$cf63], a
    ret


Call_046_7175:
    ld a, [$c7d3]
    ld d, a
    ld a, [$c7d2]
    ld e, a
    ld hl, $ffa9
    ld a, [hl]
    and $40
    jr nz, jr_046_719a

    ld a, [hl]
    and $80
    jr nz, jr_046_71ae

    ld a, d
    cp e
    jr nc, jr_046_71ed

    ld a, [hl]
    and $20
    jr nz, jr_046_71c6

    ld a, [hl]
    and $10
    jr nz, jr_046_71d8

    jr jr_046_71ed

jr_046_719a:
    ld hl, $c7d1
    ld a, [hl]
    and a
    jr z, jr_046_71a4

    dec [hl]
    jr jr_046_71ef

jr_046_71a4:
    ld hl, $c7d0
    ld a, [hl]
    and a
    jr z, jr_046_71ed

    dec [hl]
    jr jr_046_71ef

jr_046_71ae:
    ld hl, $c7d1
    ld a, [hl]
    inc a
    cp e
    jr nc, jr_046_71ed

    cp d
    jr nc, jr_046_71bc

    inc [hl]
    jr jr_046_71ef

jr_046_71bc:
    ld hl, $c7d0
    add [hl]
    cp e
    jr nc, jr_046_71ed

    inc [hl]
    jr jr_046_71ef

jr_046_71c6:
    ld hl, $c7d0
    ld a, [hl]
    and a
    jr z, jr_046_71ed

    cp d
    jr nc, jr_046_71d4

    xor a
    ld [hl], a
    jr jr_046_71ef

jr_046_71d4:
    sub d
    ld [hl], a
    jr jr_046_71ef

jr_046_71d8:
    ld hl, $c7d0
    ld a, d
    add a
    add [hl]
    jr c, jr_046_71e3

    cp e
    jr c, jr_046_71e8

jr_046_71e3:
    ld a, e
    sub d
    ld [hl], a
    jr jr_046_71ef

jr_046_71e8:
    ld a, [hl]
    add d
    ld [hl], a
    jr jr_046_71ef

jr_046_71ed:
    and a
    ret


jr_046_71ef:
    call Call_046_7295
    call Call_046_7275
    scf
    ret


    ld hl, $c4a0
    ld a, $32
    ld bc, $0168
    call $3041
    ret


jr_046_7203:
    ld a, [de]
    cp $ff
    ret z

    inc de
    ld [hl+], a
    jr jr_046_7203

Call_046_720b:
    ld a, [$c7d1]
    ld hl, $c7d0
    add [hl]
    ld e, a
    ld d, $00
    ld hl, $c6d0
    add hl, de
    ld a, [hl]
    ld [$d265], a
    ret


Call_046_721e:
    push de
    push hl
    ld a, [$d265]
    dec a
    call $3393
    pop hl
    pop de
    ret


Call_046_722a:
    push de
    push hl
    ld a, [$d265]
    dec a
    call $339b
    pop hl
    pop de
    ret


Call_046_7236:
    jp $0fb8


Call_046_7239:
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_046_7242:
    ld hl, $c4f3
    ld de, $d099
    call $1078
    xor a
    ld [$cf5f], a
    ld a, $14
    ld hl, $4bdd
    rst $08
    ld hl, $c4f1
    ld a, [$d108]
    ld bc, $cd2f
    ld [bc], a
    dec bc
    jr c, jr_046_726a

    jr z, jr_046_726f

    ld a, $01
    ld [bc], a

Call_046_7267:
    ld [hl], $ef
    ret


jr_046_726a:
    xor a
    ld [bc], a
    ld [hl], $7f
    ret


jr_046_726f:
    ld a, $02
    ld [bc], a

Call_046_7272:
    ld [hl], $f5
    ret


Call_046_7275:
    call Call_046_7279
    ret


Call_046_7279:
    ld a, [$d265]
    ld [$cf60], a
    call Call_046_722a
    jr z, jr_046_728f

    call $3856
    ld a, [$d243]
    ld [$cf65], a
    jr jr_046_7294

jr_046_728f:
    ld a, $ff
    ld [$cf65], a

jr_046_7294:
    ret


Call_046_7295:
    ld hl, $c5a8
    ld de, $7308
    call $1078
    ld hl, $c5bc
    ld de, $7308
    call $1078
    call Call_046_720b
    call Call_046_722a
    jr z, jr_046_72d1

    ld a, [$c608]
    ld c, a
    ld a, [$c609]
    ld b, a
    ld hl, $0007
    add hl, bc
    xor a
    ld [hl], a
    ld hl, $0003
    add hl, bc
    ld e, [hl]
    ld a, $23
    ld hl, $69bc
    rst $08
    ld hl, $c5bc
    push hl
    call $343b
    jr jr_046_72e7

jr_046_72d1:
    ld a, [$c608]
    ld c, a
    ld a, [$c609]
    ld b, a
    ld hl, $0007
    add hl, bc
    ld a, $50
    ld [hl], a
    ld hl, $c5a8
    push hl
    ld de, $730e

jr_046_72e7:
    ld a, $06
    ld bc, $d0ac

jr_046_72ec:
    push af
    ld a, [de]
    ld [bc], a
    inc de
    inc bc
    pop af
    dec a
    and a
    jr nz, jr_046_72ec

    pop hl
    ld de, $d0ac
    call $1078
    ret


    or c
    add hl, hl
    reti


    ld d, h
    ld d, b
    adc $bc
    or d
    ld d, h
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld d, b
    ret nc

    jp z, $b9df

    sbc $50

Call_046_7314:
    call Call_046_731b
    call Call_046_73d9
    ret


Call_046_731b:
    ld hl, $7350
    ld a, [$cf63]
    cp $02
    jr c, jr_046_7349

    ld a, [$c7d1]
    cp $04
    jr nc, jr_046_7344

    cp $03
    jr c, jr_046_7349

    ld a, [$cf63]
    cp $02
    jr z, jr_046_7349

    cp $03
    jr z, jr_046_7349

    cp $06
    jr z, jr_046_7349

    ld bc, $737b
    jr jr_046_734c

jr_046_7344:
    ld bc, $7389
    jr jr_046_734c

jr_046_7349:
    ld bc, $736d

jr_046_734c:
    call Call_046_7397
    ret


    ld a, [de]
    ld e, [hl]
    ld a, [de]
    ld h, [hl]
    ld a, [de]
    ld l, [hl]
    ld a, [de]
    db $76
    ld a, [de]
    ld a, [hl]
    ld a, [de]
    add [hl]
    ld a, [de]
    adc [hl]
    ld [hl+], a
    ld e, [hl]
    ld [hl+], a
    ld h, [hl]
    ld [hl+], a
    ld l, [hl]
    ld [hl+], a
    db $76
    ld [hl+], a
    ld a, [hl]
    ld [hl+], a
    add [hl]
    ld [hl+], a
    adc [hl]
    rst $38
    jr nc, @+$33

    ld sp, $3131
    ld sp, $4032
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    jr nc, jr_046_73ae

    ld sp, $3939
    add hl, sp
    add hl, sp
    ld b, b
    ld b, c
    ld b, c
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp

Call_046_7397:
    ld de, $c400

jr_046_739a:
    ld a, [hl]
    cp $ff
    ret z

    ld a, [$c7d1]
    and $07
    swap a
    add [hl]
    inc hl
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [bc]
    inc bc

jr_046_73ae:
    ld [de], a
    inc de
    ld a, $05
    ld [de], a
    inc de
    jr jr_046_739a

jr_046_73b6:
    ld a, [hl]
    cp $ff
    ret z

    ld a, [$cd4d]
    and $07
    swap a
    add [hl]
    inc hl
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    push hl
    ld l, c
    ld h, b
    ld a, [$cd4e]
    add [hl]
    inc bc
    ld [de], a
    inc de
    pop hl
    ld a, $05
    ld [de], a
    inc de
    jr jr_046_73b6

Call_046_73d9:
    ld de, $c470
    push de
    ld a, [$c7d2]
    dec a
    ld e, a
    ld a, [$c7d1]
    ld hl, $c7d0
    add [hl]
    cp e
    jr z, jr_046_740d

    ld hl, $0000
    ld bc, $0070
    call $30fe
    ld e, l
    ld d, h
    ld b, $00
    ld a, d
    or e
    jr z, jr_046_740f

    ld a, [$c7d2]
    ld c, a

jr_046_7401:
    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc $00
    ld d, a
    jr c, jr_046_740f

    inc b
    jr jr_046_7401

jr_046_740d:
    ld b, $70

jr_046_740f:
    ld a, $15
    add b
    pop hl
    ld [hl+], a
    cp $41
    jr c, jr_046_742b

    ld a, [$cf63]
    cp $04
    jr z, jr_046_743b

    cp $05
    jr z, jr_046_743b

    cp $07
    jr z, jr_046_743b

    cp $08
    jr z, jr_046_743b

jr_046_742b:
    ld a, $9b
    ld [hl+], a
    ld a, [$cd4c]
    add $3c
    ld [hl+], a
    ld a, [$cd4c]
    add $01
    ld [hl], a
    ret


jr_046_743b:
    ld a, $9b
    ld [hl+], a
    ld a, $39
    ld [hl+], a
    xor a
    ld [hl], a
    ret


    call Call_046_744b
    call Call_046_745c
    ret


Call_046_744b:
    xor a
    ld [$cf63], a
    ld [$cf64], a
    ld [$cf65], a
    ld [$cf66], a
    call $05a7
    ret


Call_046_745c:
jr_046_745c:
    call Call_046_746a
    call $045a
    ld a, [$cf63]
    cp $04
    jr nz, jr_046_745c

    ret


Call_046_746a:
    ld a, [$cf63]
    ld e, a
    ld d, $00
    ld hl, $7479
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    add e
    ld [hl], h
    ld [hl], b
    ld [hl], l
    ret nz

    ld [hl], l
    ldh [$75], a
    rst $20
    ld [hl], l
    call Call_046_7538
    ld hl, $d47d
    ld a, $05

jr_046_748b:
    push af
    ld a, [hl+]
    ld [bc], a
    inc bc
    pop af
    dec a
    and a
    jr nz, jr_046_748b

    ld de, $0030
    ld hl, $dcdf
    ld a, [$cd82]
    dec a
    push af

jr_046_749f:
    and a
    jr z, jr_046_74a6

    add hl, de
    dec a
    jr jr_046_749f

jr_046_74a6:
    push bc
    ld a, $30

jr_046_74a9:
    push af
    ld a, [hl+]
    ld [bc], a
    inc bc
    pop af
    dec a
    and a
    jr nz, jr_046_74a9

    pop de
    push bc
    ld a, [de]
    ld [$cf60], a
    call $3856
    ld hl, $001f
    add hl, de
    ld a, [hl]
    ld [$d143], a
    ld hl, $0024
    add hl, de
    push hl
    ld hl, $000a
    add hl, de
    pop de
    push de
    ld b, $01
    ld a, $0c
    call $2d83
    pop de
    ld h, d
    ld l, e
    dec hl
    dec hl
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    pop bc
    ld de, $000b
    ld hl, $ddff
    pop af
    push af

jr_046_74e8:
    and a
    jr z, jr_046_74ef

    add hl, de
    dec a
    jr jr_046_74e8

jr_046_74ef:
    ld a, $0a

jr_046_74f1:
    push af
    ld a, [hl+]
    ld [bc], a
    inc bc
    pop af
    dec a
    and a
    jr nz, jr_046_74f1

    ld de, $000b
    ld hl, $de41
    pop af
    push af

jr_046_7502:
    and a
    jr z, jr_046_7509

    add hl, de
    dec a
    jr jr_046_7502

jr_046_7509:
    ld a, $0a

jr_046_750b:
    push af
    ld a, [hl+]
    ld [bc], a
    inc bc
    pop af
    dec a
    and a
    jr nz, jr_046_750b

    ld de, $002f
    ld hl, $a600
    pop af

jr_046_751b:
    and a
    jr z, jr_046_7522

    add hl, de
    dec a
    jr jr_046_751b

jr_046_7522:
    ld a, $00
    call $2fcb
    ld a, $2f

jr_046_7529:
    push af
    ld a, [hl+]
    ld [bc], a
    inc bc
    pop af
    dec a
    and a
    jr nz, jr_046_7529

    call $2fe1
    jp Jump_046_6d8a


Call_046_7538:
    ld bc, $c626
    ld a, [$d47b]
    ld [$cd2a], a
    ld [bc], a
    inc bc
    ld a, [$d47c]
    ld [$cd2b], a
    ld [bc], a
    inc bc
    ld a, [$d84a]
    ld [$cd2c], a
    ld [bc], a
    inc bc
    ld a, [$d84b]
    ld [$cd2d], a
    ld [bc], a
    inc bc
    ld a, [$cd2e]
    ld [bc], a
    inc bc
    ld a, [$cd2f]
    ld [bc], a
    inc bc
    ld a, [$cd30]
    ld [bc], a
    inc bc
    ld a, [$d265]
    ld [bc], a
    inc bc
    ret


    call Call_046_4007
    ld a, [$c2dd]
    and a
    jr nz, jr_046_757f

    call Call_046_7585
    jp Jump_046_6d8a


jr_046_757f:
    ld a, $04
    ld [$cf63], a
    ret


Call_046_7585:
    ld a, $03
    ldh [rSVBK], a
    ld hl, $d800
    ld de, $c608
    ld bc, $008f
    call $3026
    ld a, $01
    ldh [rSVBK], a
    ld a, $05
    call $2fcb
    ld de, $a800
    ld a, $01
    ld [de], a
    inc de
    ld hl, $c608
    ld bc, $008f
    call $3026
    push de
    pop hl
    ldh a, [$90]
    ld [hl+], a
    ldh a, [$8f]
    ld [hl+], a
    ldh a, [$8e]
    ld [hl+], a
    ldh a, [$8d]
    ld [hl], a
    call $2fe1
    ret


    ld a, [$cd82]
    dec a
    ld [$d109], a
    xor a
    ld [$d10b], a
    ld a, $03
    ld hl, $6039
    rst $08
    ld a, $5c
    ld hl, $4807
    rst $08
    ld a, $05
    ld hl, $4a58
    rst $08
    jp Jump_046_6d8a


    xor a
    ld [$c2dd], a
    jp Jump_046_6d8a


    ret


    ld a, $00
    call $2fcb
    ld hl, $d4ba
    ld de, $c608
    ld bc, $0004
    call $3026
    call $2fe1
    ld a, $05
    call $2fcb
    ld hl, $c608
    ld de, $b08c
    ld bc, $0004
    call $3026
    ld a, $02
    ld [$a800], a
    ld a, [$a81f]
    ld [$cd2a], a
    ld a, [$a820]
    ld [$cd2b], a
    ld a, [$a821]
    ld [$cd2c], a
    ld a, [$a822]
    ld [$cd2d], a
    ld a, [$a823]
    ld [$cd2e], a
    ld a, [$a824]
    ld [$cd2f], a
    ld a, [$a825]
    ld [$cd30], a
    ld a, [$a826]
    ld [$cd31], a
    call $2fe1
    call Call_046_744b
    call Call_046_764c
    ret


Call_046_764c:
jr_046_764c:
    call Call_046_765a
    call $045a
    ld a, [$cf63]
    cp $01
    jr nz, jr_046_764c

    ret


Call_046_765a:
    ld a, [$cf63]
    ld e, a
    ld d, $00
    ld hl, $7669
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld l, l
    db $76
    or e
    db $76
    call Call_046_40b8
    ld a, [$c2dd]
    and a
    jr nz, jr_046_76b0

    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    ld a, [$d090]
    ld b, a
    pop af
    ldh [rSVBK], a
    ld a, b
    and a
    jr z, jr_046_7691

    cp $01
    jr nz, jr_046_76b0

    call Call_046_76b4
    jr jr_046_76b0

jr_046_7691:
    ld a, $5c
    ld hl, $481d
    rst $08
    ld a, [$c2dd]
    and a
    jr z, jr_046_76b0

    xor a
    ld [$c2dd], a
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    ld a, $02
    ld [$d090], a
    pop af
    ldh [rSVBK], a

jr_046_76b0:
    jp Jump_046_6d8a


    ret


Call_046_76b4:
    ld a, $05
    call $2fcb
    ld a, [$cd30]
    ld [$c708], a
    ld a, [$cd31]
    ld [$c709], a
    ld a, $08
    ld [$cd20], a
    ld a, $c7
    ld [$cd21], a
    ld a, $0d
    ld [$cd22], a
    ld a, $c6
    ld [$cd23], a
    ld a, $3d
    ld [$cd24], a
    ld a, $c6
    ld [$cd25], a
    ld a, $42
    ld [$cd26], a
    ld a, $c6
    ld [$cd27], a
    ld a, $47
    ld [$cd28], a
    ld a, $c6
    ld [$cd29], a
    ld a, $46
    ld [$c628], a
    ld de, $c63d
    ld c, $05
    ld a, $5f
    ld hl, $5073
    rst $08
    jr nc, jr_046_770f

    ld a, $5f
    ld hl, $5187
    rst $08

jr_046_770f:
    ld de, $c63d
    ld bc, $0105
    ld a, $5f
    ld hl, $51e1
    rst $08
    jr nc, jr_046_7723

    ld a, $5f
    ld hl, $5187
    rst $08

jr_046_7723:
    ld de, $c642
    ld c, $05
    ld a, $5f
    ld hl, $5073
    rst $08
    jr nc, jr_046_7736

    ld a, $5f
    ld hl, $5199
    rst $08

jr_046_7736:
    ld de, $c642
    ld bc, $0105
    ld a, $5f
    ld hl, $51e1
    rst $08
    jr nc, jr_046_774a

    ld a, $5f
    ld hl, $5199
    rst $08

jr_046_774a:
    ld de, $c647
    ld c, $21
    ld a, $5f
    ld hl, $5073
    rst $08
    jr nc, jr_046_775d

    ld a, $5f
    ld hl, $51ab
    rst $08

jr_046_775d:
    ld de, $c647
    ld bc, $0221
    ld a, $5f
    ld hl, $51e1
    rst $08
    jr c, jr_046_7770

    ld a, b
    cp $02
    jr nz, jr_046_7776

jr_046_7770:
    ld a, $5f
    ld hl, $51ab
    rst $08

jr_046_7776:
    ld de, $c668
    ld c, $05
    ld a, $5f
    ld hl, $5073
    rst $08
    jr nc, jr_046_7789

    ld a, $5f
    ld hl, $51c9
    rst $08

jr_046_7789:
    ld de, $c668
    ld bc, $0105
    ld a, $5f
    ld hl, $51e1
    rst $08
    jr nc, jr_046_779d

    ld a, $5f
    ld hl, $51c9
    rst $08

jr_046_779d:
    ld a, [$c60e]
    cp $ff
    jr nz, jr_046_77a8

    xor a
    ld [$c60e], a

jr_046_77a8:
    ld a, [$cd31]
    ld [$c60d], a
    ld [$cf60], a
    call $3856
    ld hl, $c62c
    ld a, [hl]
    cp $02
    ld a, $02
    jr c, jr_046_77c5

    ld a, [hl]
    cp $64
    jr c, jr_046_77c6

    ld a, $64

jr_046_77c5:
    ld [hl], a

jr_046_77c6:
    ld [$d143], a
    ld hl, $c617
    ld de, $c631
    ld b, $01
    ld a, $0c
    call $2d83
    ld de, $c631
    ld hl, $c62f
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    call Call_046_798f
    ret


    ld a, [$c60d]
    ld [$c702], a
    ld [$d108], a
    ld a, [$cd81]
    ld [$c74e], a
    ld hl, $c63d
    ld de, $c724
    ld bc, $0005
    call $3026
    ld a, $50
    ld [de], a
    ld a, [$c613]
    ld [$c731], a
    ld a, [$c614]
    ld [$c732], a
    ld hl, $c622
    ld a, [hl+]
    ld [$c72f], a
    ld a, [hl]
    ld [$c730], a
    ld bc, $c60d
    ld a, $13
    ld hl, $7301
    rst $08
    ld a, c
    ld [$c733], a
    call $103e
    call $2b29
    ld a, $42
    ld hl, $4016
    rst $08
    ld a, $5f
    ld hl, $51f1
    rst $08
    ld a, $01
    ld [$d1e9], a
    ld a, $02
    ld [$c2dc], a
    ld a, $10
    ld hl, $61d8
    rst $08
    xor a
    ld [$c2dc], a
    ld a, $05
    ld hl, $4a58
    rst $08
    ld a, $05
    call $2fcb
    ld a, $05
    ld [$a800], a
    call $2fe1
    ld a, [$dcb5]
    ld b, a
    ld a, [$dcb6]
    ld c, a
    call $2147
    ld a, d
    or e
    jr z, jr_046_7872

    ld a, $01
    ld [de], a

jr_046_7872:
    call $2b3c
    call $3d47
    ret


    ld a, $5c
    ld hl, $489a
    rst $08
    ld a, [$c2dd]
    and a
    ret z

    ld a, $05
    call $2fcb
    ld a, [$a800]
    ld [$c2dd], a
    ld a, [$a890]
    ld [$cd49], a
    ld a, [$a891]
    ld [$cd4a], a
    ld a, [$a892]
    ld [$cd4b], a
    ld a, [$a893]
    ld [$cd4c], a
    call $2fe1
    ld a, [$c2dd]
    and a
    ret z

    ld hl, $cd4c
    ldh a, [$8d]
    cp [hl]
    ret nz

    dec hl
    ldh a, [$8e]
    cp [hl]
    ret nz

    ld hl, $cd4a
    ldh a, [$8f]
    cp [hl]
    jr nc, jr_046_78d8

    ld a, $18
    sub [hl]
    ld hl, $ff8f
    add [hl]
    ld [$cd4c], a
    ldh a, [$90]
    ld [$cd4b], a
    xor a
    ld [$cd4a], a
    jr jr_046_78e2

jr_046_78d8:
    ldh a, [$90]
    ld [$cd4b], a
    ldh a, [$8f]
    ld [$cd4c], a

jr_046_78e2:
    xor a
    ld l, a
    ld h, a
    ld b, a
    ld d, a
    ld a, [$cd4b]
    ld e, a
    ld a, [$cd4c]
    ld c, $3c
    call $30fe
    add hl, de
    push hl
    xor a
    ld l, a
    ld h, a
    ld b, a
    ld d, a
    ld a, [$cd49]
    ld e, a
    ld a, [$cd4a]
    ld c, $3c
    call $30fe
    add hl, de
    ld a, l
    cpl
    add $01
    ld e, a
    ld a, h
    cpl
    adc $00
    ld d, a
    pop hl
    add hl, de
    ld de, $ff88
    add hl, de
    bit 7, h
    ret z

    ld a, $02
    ld [$c2dd], a
    ret


    call Call_046_744b
    ld a, $05
    call $2fcb
    ld hl, $a81f
    ld de, $c626
    ld bc, $0008
    call $3026
    call $2fe1
    call Call_046_4000
    ret


    ld a, $05
    call $2fcb
    xor a
    ld [$a800], a
    ld hl, $a823
    ld de, $c608
    ld bc, $008f
    call $3026
    call $2fe1
    ld a, $08
    ld [$cd20], a
    ld a, $c6
    ld [$cd21], a
    ld a, $11
    ld [$cd22], a
    ld a, $c6
    ld [$cd23], a
    ld a, $41
    ld [$cd24], a
    ld a, $c6
    ld [$cd25], a
    ld a, $46
    ld [$cd26], a
    ld a, $c6
    ld [$cd27], a
    ld a, $4b
    ld [$cd28], a
    ld a, $c6
    ld [$cd29], a
    call Call_046_798f
    ld a, $05
    ld hl, $4a58
    rst $08
    ret


Call_046_798f:
    ld hl, $dcd7
    ld a, [hl]
    ld e, a
    inc [hl]
    ld a, [$cd20]
    ld l, a
    ld a, [$cd21]
    ld h, a
    inc hl
    ld bc, $dcd8
    ld d, e

jr_046_79a2:
    inc bc
    dec d
    jr nz, jr_046_79a2

    ld a, e
    ld [$d109], a
    ld a, [hl]
    ld [bc], a
    inc bc
    ld a, $ff
    ld [bc], a
    ld hl, $dcdf
    ld bc, $0030
    ld a, e
    ld [$cd2a], a

jr_046_79ba:
    add hl, bc
    dec a
    and a
    jr nz, jr_046_79ba

    ld e, l
    ld d, h
    ld a, [$cd22]
    ld l, a
    ld a, [$cd23]
    ld h, a
    ld bc, $0030
    call $3026
    ld hl, $ddff
    ld bc, $000b
    ld a, [$cd2a]

jr_046_79d8:
    add hl, bc
    dec a
    and a
    jr nz, jr_046_79d8

    ld e, l
    ld d, h
    ld a, [$cd24]
    ld l, a
    ld a, [$cd25]
    ld h, a
    ld bc, $000a
    call $3026
    ld a, $50
    ld [de], a
    ld hl, $de41
    ld bc, $000b
    ld a, [$cd2a]

jr_046_79f9:
    add hl, bc
    dec a
    and a
    jr nz, jr_046_79f9

    ld e, l
    ld d, h
    ld a, [$cd26]
    ld l, a
    ld a, [$cd27]
    ld h, a
    ld bc, $000a
    call $3026
    ld a, $50
    ld [de], a
    ld hl, $a600
    ld bc, $002f
    ld a, [$cd2a]

jr_046_7a1a:
    add hl, bc
    dec a
    and a
    jr nz, jr_046_7a1a

    ld a, $00
    call $2fcb
    ld e, l
    ld d, h
    ld a, [$cd28]
    ld l, a
    ld a, [$cd29]
    ld h, a
    ld bc, $002f
    call $3026
    call $2fe1
    ret


    ld a, $03
    ld hl, $6538
    rst $08
    ret c

    xor a
    ld [$c2dd], a
    ret


    ld b, a
    jr nc, jr_046_7a51

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld d, [hl]
    ld b, [hl]
    cpl
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_046_7a51:
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld b, l
    dec a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld d, h
    ld b, h
    jr nc, jr_046_7a69

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld d, e
    ld b, e
    cpl
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_046_7a69:
    ld a, [bc]
    ld a, [bc]
    ld d, d
    ld c, d
    dec a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld d, c
    ld c, d
    jr nc, jr_046_7a81

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld d, b
    ld c, d
    cpl
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_046_7a81:
    ld a, [bc]
    ld a, [bc]
    ld c, a
    ld c, d
    dec a
    ld a, [bc]

jr_046_7a87:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, [hl]
    ld c, d
    jr nc, jr_046_7a99

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, l
    ld b, d
    ld c, d
    cpl
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_046_7a99:
    ld a, [bc]
    ld l, e
    ld e, b
    ld c, d
    dec a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld l, d
    ld e, b
    ld c, d
    jr nc, jr_046_7ab1

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld l, c
    ld e, b
    ld c, d
    cpl
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_046_7ab1:
    ld a, [bc]
    ld l, b
    ld e, b
    ld c, d
    dec a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld h, [hl]
    ld h, a
    ld e, b
    ld c, d
    jr nc, jr_046_7ac9

    ld a, [bc]
    ld a, [bc]
    ld h, l
    ld a, [bc]
    ld e, b
    ld c, d
    cpl
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_046_7ac9:
    ld h, h
    ld a, [bc]
    ld e, b
    ld c, d
    dec a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld h, e
    ld a, [bc]
    ld e, b
    ld c, d
    jr nc, jr_046_7ae1

    ld a, [bc]
    ld h, c
    ld h, d
    ld a, [bc]
    ld e, b
    ld c, d
    cpl
    ld a, [bc]
    ld a, [bc]
    ld e, a

jr_046_7ae1:
    ld h, b
    ld a, [bc]
    ld e, b
    ld c, d
    dec a
    ld a, [bc]
    ld h, c
    ld h, d
    ld a, [bc]
    ld a, [bc]
    ld e, b
    ld c, d
    jr nc, jr_046_7af9

    ld h, e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld e, b
    ld c, d
    cpl
    ld l, c
    ld a, [bc]
    ld a, [bc]

jr_046_7af9:
    ld a, [bc]
    ld a, [bc]
    ld e, b
    ld c, d
    dec a
    add c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld e, b
    ld c, d
    jr nc, jr_046_7a87

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld e, b
    ld c, d
    cpl
    ld a, a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld e, b
    ld c, d
    dec a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld e, b
    ld c, d
    jr nc, jr_046_7b29

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld e, b
    ld c, d
    cpl
    ld l, b
    add a
    adc b

jr_046_7b29:
    adc c
    ld a, [bc]
    ld e, b
    ld c, d
    dec a
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], l
    db $76
    ld e, b
    ld c, d
    jr nc, jr_046_7bac

    db $76
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, b
    ld c, d
    cpl
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld l, l
    ld e, b
    ld c, d
    dec a
    ld [hl], l
    db $76
    ld [hl], a
    adc d
    adc e
    ld e, b
    ld c, d
    jr nc, jr_046_7bb5

    ld h, a
    ld h, l
    ld a, [bc]
    ld l, d
    ld e, b
    ld c, d
    cpl
    add e
    add h
    ld a, [bc]
    add e
    add h
    ld e, b
    ld c, d
    dec a
    ld a, [bc]
    add l
    add d
    add h
    ld a, [bc]
    ld e, b
    ld c, d
    jr nc, jr_046_7ba8

    add b
    ld b, b
    ld a, [bc]
    ld a, [bc]
    ld e, b
    ld c, d
    cpl
    add e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld e, b
    ld c, d
    dec a
    ld b, b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld e, b
    rst $38
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld d, $00
    ld a, b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    adc h
    nop
    ld a, c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    adc l
    nop
    ld a, d
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    adc [hl]
    nop
    ld a, e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    adc h
    nop
    ld a, h
    ld a, [bc]
    ld a, [bc]

jr_046_7ba8:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    adc l

jr_046_7bac:
    nop
    ld a, l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    adc [hl]
    nop

jr_046_7bb5:
    ld l, $7e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    adc h
    nop
    ld l, $80
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    adc l
    nop
    ld l, $81
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    adc [hl]
    nop
    ld l, $82
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    adc h
    nop
    ld l, $69
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    adc l
    nop
    ld l, $6a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    adc [hl]
    nop
    ld l, $6b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    adc h
    nop
    ld l, $0a
    ld l, b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    adc l
    nop
    ld l, $0a
    ld l, c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    adc [hl]
    nop
    ld l, $0a
    ld a, [bc]
    ld l, d
    ld a, [bc]
    ld a, [bc]
    adc h
    nop
    ld l, $0a
    ld a, [bc]
    ld l, e
    ld a, [bc]
    ld a, [bc]
    adc l
    nop
    ld l, $0a
    ld a, [bc]
    ld a, [bc]
    add b
    ld a, [bc]
    adc [hl]
    nop
    ld l, $0a
    ld a, [bc]
    ld a, [bc]
    add d
    ld a, [bc]
    adc h
    nop
    ld l, $0a
    ld a, [bc]
    ld a, [bc]
    ld l, h
    ld a, [bc]
    adc l
    nop
    ld l, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add e
    adc [hl]
    nop
    ld l, $0a
    ld l, e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    adc h
    nop
    ld l, $0a
    ld a, [bc]
    ld l, c
    ld a, [bc]
    ld a, [bc]
    adc l
    nop
    ld l, $0a
    ld a, [bc]
    ld l, d
    ld a, [bc]
    ld a, [bc]
    adc [hl]
    nop
    ld l, $0a
    ld a, [bc]
    ld a, [bc]
    ld l, b
    ld a, [bc]
    adc h
    nop
    ld l, $0a
    ld a, [bc]
    ld a, [bc]
    ld h, e
    ld a, [bc]
    adc l
    nop
    ld l, $0a
    ld a, [bc]
    ld h, c
    ld h, d
    ld a, [bc]
    adc [hl]
    nop
    ld l, $0a
    ld a, [bc]
    ld a, [bc]
    ld e, a
    ld h, b
    adc h
    nop
    ld l, $0a
    ld a, [bc]
    ld a, [bc]
    ld h, e
    ld a, [bc]
    adc l
    nop
    ld l, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld l, c
    adc h
    nop
    ld l, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld l, e
    adc l
    nop
    ld l, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add e
    adc [hl]
    nop
    ld l, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add [hl]
    adc h
    nop
    ld l, $0a
    add l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    adc l
    nop
    ld l, $0a
    ld a, [bc]
    add h
    ld a, [bc]
    ld a, [bc]
    adc [hl]
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_046_7fb8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_046_7fde:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
