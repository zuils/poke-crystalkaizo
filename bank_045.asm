; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $045", ROMX[$4000], BANK[$45]

    dec l
    dec l
    dec l
    nop
    ld b, e
    ld b, a
    ld b, d
    dec l
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    dec l
    jr nc, jr_045_403f

    nop
    nop
    inc sp
    ld b, b
    ld a, [hl-]
    ld b, b
    ld b, e
    ld b, b
    ld c, [hl]
    ld b, b
    ld d, e
    ld b, b
    ld e, b
    ld b, b
    ld h, d
    ld b, b
    ld [hl], h
    ld b, b
    adc l
    ld b, b
    sbc a
    ld b, b
    cp b
    ld b, b
    and $40
    db $10
    ld b, c
    ccf
    ld b, c
    ld h, b
    ld b, c
    ld h, b
    ld b, c
    ld h, e
    ld b, c
    ld b, [hl]
    ld [hl], d
    ld l, a
    ld l, l
    ld a, [hl-]
    jr nz, jr_045_403a

jr_045_403a:
    ld d, e
    ld h, l
    ld l, [hl]
    ld h, h
    ld h, l

jr_045_403f:
    ld [hl], d
    ld a, [hl-]
    jr nz, jr_045_4043

jr_045_4043:
    ld d, d
    ld h, l
    ld [hl], b
    ld l, h
    ld a, c
    dec l
    ld d, h
    ld l, a
    ld a, [hl-]
    jr nz, jr_045_404e

jr_045_404e:
    ld d, h
    ld l, a
    ld a, [hl-]
    jr nz, jr_045_4053

jr_045_4053:
    ld b, e
    ld h, e
    ld a, [hl-]
    jr nz, jr_045_4058

jr_045_4058:
    ld d, e
    ld [hl], l
    ld h, d
    ld l, d
    ld h, l
    ld h, e
    ld [hl], h
    ld a, [hl-]
    jr nz, jr_045_4062

jr_045_4062:
    ld c, l
    ld c, c
    ld c, l
    ld b, l
    dec l
    ld d, [hl]
    ld h, l
    ld [hl], d
    ld [hl], e
    ld l, c
    ld l, a
    ld l, [hl]
    ld a, [hl-]
    jr nz, jr_045_40a2

    ld l, $30
    nop
    ld e, b
    dec l
    ld b, a
    ld h, c
    ld l, l
    ld h, l
    dec l
    ld [hl], h
    ld l, c
    ld [hl], h
    ld l, h
    ld h, l
    ld a, [hl-]
    jr nz, jr_045_40db

    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    nop
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
    jr nz, jr_045_40de

    ld b, a
    ld b, d
    dec l
    nop
    ld e, b
    dec l
    ld b, a

jr_045_40a2:
    ld b, d
    ld l, l
    ld h, c
    ld l, c
    ld l, h
    dec l
    ld [hl], h
    ld a, c
    ld [hl], b
    ld h, l
    ld a, [hl-]
    jr nz, jr_045_4114

    ld a, b
    ld h, e
    ld l, h
    ld [hl], l
    ld [hl], e
    ld l, c
    db $76
    ld h, l
    nop
    ld b, e
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld [hl], h
    dec l
    ld d, h
    ld a, c
    ld [hl], b
    ld h, l
    ld a, [hl-]
    jr nz, jr_045_413b

    ld h, l
    ld a, b
    ld [hl], h
    cpl
    ld [hl], b
    ld l, h
    ld h, c
    ld l, c
    ld l, [hl]
    dec sp
    jr nz, jr_045_4136

    ld l, b
    ld h, c
    ld [hl], d
    ld [hl], e
    ld h, l
    ld [hl], h
    dec a
    ld l, c

jr_045_40db:
    ld [hl], e
    ld l, a
    dec l

jr_045_40de:
    ld [hl-], a
    jr nc, jr_045_4113

    ld [hl-], a
    dec l
    ld l, d
    ld [hl], b
    nop
    ld b, e
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld [hl], h
    dec l
    ld d, h
    ld a, c
    ld [hl], b
    ld h, l
    ld a, [hl-]
    jr nz, jr_045_4162

    ld [hl], l
    ld l, h
    ld [hl], h
    ld l, c
    ld [hl], b
    ld h, c
    ld [hl], d
    ld [hl], h
    cpl
    ld l, l
    ld l, c
    ld a, b
    ld h, l
    ld h, h
    dec sp
    jr nz, jr_045_4168

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld h, c
    ld [hl], d
    ld a, c
    dec a
    ld [hl+], a
    nop
    ld b, e
    ld l, a
    ld l, [hl]

jr_045_4113:
    ld [hl], h

jr_045_4114:
    ld h, l
    ld l, [hl]
    ld [hl], h
    dec l
    ld d, h
    ld a, c
    ld [hl], b
    ld h, l
    ld a, [hl-]
    jr nz, jr_045_4160

    ld [hl], b
    ld [hl], b
    ld l, h
    ld l, c
    ld h, e
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    cpl
    ld c, a
    ld h, e
    ld [hl], h
    ld h, l
    ld [hl], h
    dec l
    ld d, e
    ld [hl], h
    ld [hl], d
    ld h, l
    ld h, c
    ld l, l

jr_045_4136:
    dec sp
    jr nz, jr_045_41a7

    ld h, c
    ld l, l

jr_045_413b:
    ld h, l
    dec a
    ld [hl+], a
    nop
    ld b, e
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld [hl], h
    dec l
    ld d, h
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld [hl], e
    ld h, [hl]
    ld h, l
    ld [hl], d
    dec l
    ld b, l
    ld l, [hl]
    ld h, e
    ld l, a
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    ld a, [hl-]
    ld b, d
    ld h, c
    ld [hl], e
    ld h, l
    ld [hl], $34
    nop

jr_045_4160:
    dec l
    dec l

jr_045_4162:
    nop
    ld l, $00
    ld l, b
    ld b, d
    ld l, c

jr_045_4168:
    ld b, d
    inc a
    ld b, e
    or a
    ld b, e
    pop de
    ld b, h
    ld d, l
    ld c, e
    cp h
    ld c, e
    reti


    ld c, h
    ld h, d
    ld c, [hl]
    cp b
    ld d, d
    call nc, $cc54
    ld d, [hl]
    ei
    ld e, c
    sbc c
    ld b, c
    sbc a
    ld b, c
    and a
    ld b, c
    or c
    ld b, c
    or l
    ld b, c
    cp c
    ld b, c
    jp nz, $c841

    ld b, c
    sub $41
    db $e4
    ld b, c
    xor $41
    db $fc
    ld b, c
    add hl, bc
    ld b, d
    ld b, [hl]
    ld d, d
    ld c, a
    ld c, l
    ld a, [hl-]
    nop
    ld d, e
    ld b, l
    ld c, [hl]
    ld b, h
    ld b, l
    ld d, d
    ld a, [hl-]
    nop

jr_045_41a7:
    ld d, d
    ld b, l
    ld d, b
    ld c, h
    ld e, c
    dec l
    ld d, h
    ld c, a
    ld a, [hl-]
    nop
    ld d, h
    ld c, a
    ld a, [hl-]
    nop
    ld b, e
    ld b, e
    ld a, [hl-]
    nop
    ld d, e
    ld d, l
    ld b, d
    ld c, d
    ld b, l
    ld b, e
    ld d, h
    ld a, [hl-]
    nop
    ld b, h
    ld b, c
    ld d, h
    ld b, l
    ld a, [hl-]
    nop
    ld b, e
    ld c, a
    ld c, [hl]
    ld d, h
    ld b, l
    ld c, [hl]
    ld d, h
    dec l
    ld d, h
    ld e, c
    ld d, b
    ld b, l
    ld a, [hl-]
    nop
    ld c, l
    ld c, c
    ld c, l
    ld b, l
    dec l
    ld d, [hl]
    ld b, l
    ld d, d
    ld d, e
    ld c, c
    ld c, a
    ld c, [hl]
    ld a, [hl-]
    nop
    ld e, b
    dec l
    ld c, l
    ld b, c
    ld c, c
    ld c, h
    ld b, l
    ld d, d
    ld a, [hl-]
    nop
    ld e, b
    dec l
    ld b, a
    ld b, c
    ld c, l
    ld b, l
    dec l
    ld d, h
    ld c, c
    ld d, h
    ld c, h
    ld b, l
    ld a, [hl-]
    nop
    ld e, b
    dec l
    ld b, a
    ld b, c
    ld c, l
    ld b, l
    dec l
    ld b, e
    ld c, a
    ld b, h
    ld b, l
    ld a, [hl-]
    nop
    ld e, b
    dec l
    ld b, a
    ld b, d
    ld c, l
    ld b, c
    ld c, c
    ld c, h
    dec l
    ld d, h
    ld e, c
    ld d, b
    ld b, l
    ld a, [hl-]
    nop
    ld c, [hl]
    ld b, c
    ld c, l
    ld b, l
    dec a
    nop
    ld c, l
    ld d, l
    ld c, h
    ld d, h
    ld c, c
    ld d, b
    ld b, c
    ld d, d
    ld d, h
    nop
    ld b, d
    ld c, a
    ld d, l
    ld c, [hl]
    ld b, h
    ld b, c
    ld d, d
    ld e, c
    dec a
    nop
    dec a
    ccf
    ld c, c
    ld d, e
    ld c, a
    dec l
    ld [hl-], a
    jr nc, @+$34

    ld [hl-], a
    dec l
    ld c, d
    ld d, b
    ccf
    ld b, d
    ccf
    nop
    ld a, $0a
    ld [$0000], a
    ldh a, [$8c]
    push af
    push de
    ld a, [$dc02]
    add a
    ld e, a
    ld d, $00
    ld hl, $4165
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    jp hl


Jump_045_425c:
    ld [$dc02], a
    pop af
    ldh [$8c], a
    ldh [$8c], a
    ld [$4000], a
    ret


    ret


    ld h, d
    ld l, e
    xor a
    ld [$dc02], a
    ld [$dc03], a
    ld a, [hl+]
    ld [$dc00], a
    ldh [$8c], a
    ld [$4000], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]

Jump_045_4282:
jr_045_4282:
    ld a, [de]
    and a
    jr z, jr_045_42a4

    ld h, a
    ld a, [$dc03]
    and a
    jr nz, jr_045_4292

    ld a, h
    cp $80
    jr nc, jr_045_42ae

jr_045_4292:
    ld a, h
    cp $0d
    jr z, jr_045_42bb

    xor a
    ld [$dc02], a

Jump_045_429b:
jr_045_429b:
    inc e
    call z, Call_045_4333
    dec bc
    ld a, b
    or c
    jr nz, jr_045_4282

Jump_045_42a4:
jr_045_42a4:
    ld a, [$dc03]
    and a
    jr nz, jr_045_4303

    ld b, $80
    jr jr_045_42b0

jr_045_42ae:
    ld b, $81

jr_045_42b0:
    ld a, [$dc00]
    ld c, a
    ld a, $01
    ld h, d
    ld l, e
    jp Jump_045_425c


jr_045_42bb:
    and a
    jr z, jr_045_42a4

    inc e
    call z, Call_045_4333
    dec bc
    ld a, b
    or c
    jr z, jr_045_42a4

    ld a, [de]
    ld h, a
    ld a, [$dc03]
    and a
    jr nz, jr_045_42d4

    ld a, h
    cp $80
    jr nc, jr_045_42ae

jr_045_42d4:
    ld a, h
    cp $0a
    jr nz, jr_045_42ae

    ld a, [$dc03]
    and a
    jr nz, jr_045_430d

    ld a, [$dc02]
    and a
    jr nz, jr_045_4309

    ld a, $01
    ld [$dc02], a
    inc e
    call z, Call_045_4333
    dec bc
    ld a, b
    or c
    jr z, jr_045_42a4

    ld a, [de]
    cp $20
    jr z, jr_045_429b

    cp $09
    jr z, jr_045_429b

    jr jr_045_4282

jr_045_42fe:
    xor a
    ld b, a
    jp Jump_045_425c


jr_045_4303:
    xor a
    ld b, $01
    jp Jump_045_425c


jr_045_4309:
    xor a
    ld [$dc02], a

jr_045_430d:
    ld a, [$dc02]
    and a
    jr nz, jr_045_42fe

    ld a, $01
    ld [$dc03], a
    inc e
    call z, Call_045_4333
    dec bc
    ld a, b
    or c
    jr z, jr_045_42a4

    ld a, [de]
    and a
    jp z, Jump_045_42a4

    cp $2e
    jp nz, Jump_045_4282

    ld a, $01
    ld [$dc02], a
    jp Jump_045_429b


Call_045_4333:
    push bc
    ld bc, $dc00
    call Call_045_5d80
    pop bc
    ret


    push de
    ld h, d
    ld l, e
    ld c, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld b, $0b
    call Call_045_43f3
    cp $02
    jr z, jr_045_4358

    and a
    jr z, jr_045_4360

    pop hl

jr_045_4351:
    xor a
    ld b, $03
    jp Jump_045_425c


jr_045_4357:
    pop hl

jr_045_4358:
    pop hl
    ld a, $01
    ld b, $82
    jp Jump_045_425c


jr_045_4360:
    ld a, h
    ld [$dc03], a
    pop hl
    push bc
    push de
    ld c, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld b, $0c
    call Call_045_43f3
    cp $02
    jr z, jr_045_4357

    and a
    jr z, jr_045_4381

    xor a
    ld b, $02
    pop hl
    pop hl
    jp Jump_045_425c


jr_045_4381:
    pop de
    pop bc
    ld a, [$dc03]
    ld [$dc00], a
    ldh [$8c], a
    ld [$4000], a
    call Call_045_4c0b
    ld hl, $4004

jr_045_4394:
    ld de, $dc24

jr_045_4397:
    ld a, [hl+]
    and a
    jr z, jr_045_43ad

    ld b, a
    ld a, [de]
    inc de
    cp b
    jr z, jr_045_4397

jr_045_43a1:
    ld a, [hl+]
    and a
    jr nz, jr_045_43a1

    ld a, [hl]
    and a
    jr nz, jr_045_4394

    ld b, a
    jp Jump_045_425c


jr_045_43ad:
    ld a, [de]
    and a
    jr nz, jr_045_4351

    xor a
    ld b, $01
    jp Jump_045_425c


    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    ld a, [de]
    inc de
    push de
    ld d, a
    ld e, h
    call Call_045_43f3
    cp $02
    jr z, jr_045_43eb

    and a
    jr nz, jr_045_43ed

    ld a, h
    pop hl
    push af
    ld a, [hl+]
    ld [$dc01], a
    ldh [$8c], a
    ld [$4000], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld [hl], b
    xor a
    jp Jump_045_425c


jr_045_43eb:
    ld b, $82

jr_045_43ed:
    ld a, $01
    pop hl
    jp Jump_045_425c


Call_045_43f3:
    call Call_045_4412
    and a
    jr nz, jr_045_440d

    ld a, $04
    cp b
    jr c, jr_045_4407

    jr z, jr_045_4402

jr_045_4400:
    xor a
    ret


jr_045_4402:
    ld a, $00
    cp c
    jr nc, jr_045_4400

jr_045_4407:
    ld bc, $0400
    ld a, $02
    ret


jr_045_440d:
    ld a, $01
    ld b, $84
    ret


Call_045_4412:
    ld a, c
    ld [$dc00], a
    ldh [$8c], a
    ld [$4000], a
    ld hl, $417f
    ld a, b
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $00
    jr jr_045_444a

Jump_045_442b:
jr_045_442b:
    ld a, [de]
    and a
    jp z, Jump_045_44c2

    inc e
    call z, Call_045_44c8
    cp $0d
    jr nz, jr_045_442b

    ld a, [de]
    inc e
    call z, Call_045_44c8
    cp $0a
    jr nz, jr_045_442b

    ld a, [de]
    cp $2e
    jr z, jr_045_44ae

    cp $0d
    jr z, jr_045_44b8

jr_045_444a:
    ld a, [$dc00]
    ld [$dc02], a
    ld a, [de]
    and a
    jr z, jr_045_44c2

    inc e
    call z, Call_045_44c8
    cp $61
    jr c, jr_045_4462

    cp $7b
    jr nc, jr_045_4462

    sub $20

jr_045_4462:
    ld b, a
    ld a, [hl]
    and a
    jr z, jr_045_4476

    cp b
    jr nz, jr_045_446e

    inc c
    inc hl
    jr jr_045_444a

jr_045_446e:
    ld a, c
    and a
    jr z, jr_045_442b

    dec c
    dec hl
    jr jr_045_446e

jr_045_4476:
    ld a, $20
    cp b
    jr z, jr_045_4481

    ld a, $0a
    cp b
    jr z, jr_045_4481

    dec de

jr_045_4481:
    ld h, d
    ld l, e
    ld bc, $0000

jr_045_4486:
    ld a, [de]
    and a
    jr z, jr_045_44c2

    inc bc
    inc e
    call z, Call_045_44c8
    cp $0d
    jr nz, jr_045_4486

    ld a, [de]
    inc bc
    inc e
    call z, Call_045_44c8
    cp $0a
    jr nz, jr_045_4486

    ld a, [de]
    cp $20
    jr z, jr_045_4486

    cp $09
    jr z, jr_045_4486

    ld d, h
    ld e, l
    ld a, [$dc02]
    ld h, a
    xor a
    ret


jr_045_44ae:
    inc e
    call z, Call_045_44c8
    ld a, [de]
    cp $0d
    jp nz, Jump_045_442b

jr_045_44b8:
    inc e
    call z, Call_045_44c8
    ld a, [de]
    cp $0a
    jp nz, Jump_045_442b

Jump_045_44c2:
jr_045_44c2:
    ld a, $00
    ld [hl], a
    ld a, $01
    ret


Call_045_44c8:
    push bc
    ld bc, $dc00
    call Call_045_5d80
    pop bc
    ret


    call Call_045_4561
    dec de
    dec de
    push de
    inc de
    inc de
    inc de
    inc hl
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc hl
    ld a, [de]
    ld [hl-], a
    dec de
    ld a, [de]
    ld [hl], a
    xor a
    ld [$dc16], a
    ld [$dc17], a
    ld a, $02
    ld [$dc0e], a
    ld hl, $dc03
    ld c, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_045_4576
    cp $02
    jr z, jr_045_455b

    and a
    jr z, jr_045_4511

    ld a, $01
    ld [$dc0d], a
    call Call_045_46fa
    and a
    jr nz, jr_045_455b

    jr jr_045_451c

jr_045_4511:
    call Call_045_46a4
    and a
    jr nz, jr_045_455b

    ld a, $02
    ld [$dc0d], a

jr_045_451c:
    pop hl
    ld a, [hl+]
    ld [$dc01], a
    ldh [$8c], a
    ld [$4000], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [$dc0d]
    ld [de], a
    ld b, $00
    ld a, [$dc16]
    and a
    jr z, jr_045_4537

    ld b, $01

jr_045_4537:
    ld hl, $dc06
    ld a, [hl]
    ld [$dc01], a
    ldh [$8c], a
    ld [$4000], a
    ld hl, $dc09
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec de
    ld a, d
    or e
    jr z, jr_045_4559

    ld hl, $dc07
    ld e, [hl]
    inc hl
    ld d, [hl]
    xor a
    ld [de], a
    jp Jump_045_425c


jr_045_4559:
    ld b, $83

jr_045_455b:
    pop hl
    ld a, $01
    jp Jump_045_425c


Call_045_4561:
    ld hl, $dc03
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    ret


Call_045_4576:
    xor a
    ld [$dc0f], a
    ld b, $07
    call Call_045_43f3
    cp $02
    jr z, jr_045_45b6

    and a
    jr nz, jr_045_45b4

    ld a, h
    ld [$dc00], a
    ldh [$8c], a
    ld [$4000], a
    push hl
    push de
    push bc
    ld hl, $dc24
    call Call_045_5d53
    call Call_045_45c5
    pop bc
    pop de
    pop hl
    and a
    jr z, jr_045_45bf

    ld a, b
    and a
    jr nz, jr_045_45ba

    ld a, h
    ld [$dc00], a
    ldh [$8c], a
    ld [$4000], a
    ld hl, $4218
    call Call_045_4acf

jr_045_45b4:
    xor a
    ret


jr_045_45b6:
    ld b, $82
    jr jr_045_45bc

jr_045_45ba:
    ld b, $81

jr_045_45bc:
    ld a, $02
    ret


jr_045_45bf:
    ld a, $01
    ld [$dc0f], a
    ret


Call_045_45c5:
    ld hl, $dc24
    ld de, $421e
    ld c, $00

jr_045_45cd:
    ld a, [hl+]
    and a
    jr z, jr_045_45ef

    cp $20
    jr z, jr_045_45cd

    cp $0d
    jr z, jr_045_45f8

    cp $61
    jr c, jr_045_45e3

    cp $7b
    jr nc, jr_045_45e3

    sub $20

jr_045_45e3:
    ld b, a
    ld a, [de]
    and a
    jr z, jr_045_460e

    inc de
    cp b
    jr z, jr_045_45cd

    dec de
    jr jr_045_45cd

jr_045_45ef:
    ld b, $00
    jr jr_045_45f5

jr_045_45f3:
    ld b, $81

jr_045_45f5:
    ld a, $01
    ret


jr_045_45f8:
    ld a, [hl+]
    and a
    jr z, jr_045_45f3

    cp $0a
    jr nz, jr_045_45f3

    ld a, [hl+]
    and a
    jr z, jr_045_45f3

    cp $20
    jr z, jr_045_45cd

    cp $09
    jr z, jr_045_45cd

    jr jr_045_45f3

jr_045_460e:
    ld a, c
    and a
    jr nz, jr_045_4619

    ld c, $01
    ld de, $4228
    jr jr_045_45cd

jr_045_4619:
    dec hl
    ld a, [hl]
    cp $22
    jr nz, jr_045_4620

    inc hl

jr_045_4620:
    ld de, $ddc8
    ld b, $00
    ld c, $40

jr_045_4627:
    ld a, [hl+]
    cp $22
    jr z, jr_045_4636

    cp $0d
    jr z, jr_045_4636

    ld [de], a
    inc de
    inc b
    dec c
    jr nz, jr_045_4627

jr_045_4636:
    ld a, b
    ld [$ddc7], a
    xor a
    ret


Call_045_463c:
    ld a, [$dc00]
    push af
    push de
    ld hl, $ddc8
    ld a, [$ddc7]
    ld b, a

jr_045_4648:
    ld a, [de]
    ld c, a
    ld a, [hl+]
    cp c
    jr nz, jr_045_468a

    inc e
    call z, Call_045_469b
    dec b
    jr nz, jr_045_4648

    ld a, [de]
    cp $2d
    jr z, jr_045_4673

    cp $0d
    jr nz, jr_045_468a

    xor a
    ld [$dc10], a

jr_045_4662:
    inc e
    call z, Call_045_469b
    ld a, [de]
    cp $0a
    jr nz, jr_045_468a

    inc e
    call z, Call_045_469b
    xor a
    pop hl
    pop hl
    ret


jr_045_4673:
    inc e
    call z, Call_045_469b
    ld a, [de]
    cp $2d
    jr nz, jr_045_468a

    inc e
    call z, Call_045_469b
    ld a, $01
    ld [$dc10], a
    ld a, [de]
    cp $0d
    jr z, jr_045_4662

jr_045_468a:
    pop de
    pop af
    ld [$dc00], a
    ldh [$8c], a
    ld [$4000], a
    xor a
    ld [$dc10], a
    ld a, $01
    ret


Call_045_469b:
    push bc
    ld bc, $dc00
    call Call_045_5d80
    pop bc
    ret


Call_045_46a4:
    call Call_045_4867
    and a
    jr nz, jr_045_46e4

    ld hl, $dc03
    ld a, [hl+]
    ld [$dc00], a
    ldh [$8c], a
    ld [$4000], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_045_4a18
    and a
    jr nz, jr_045_46e8

    call Call_045_48c2
    and a
    jr nz, jr_045_46e4

    ld hl, $dc03
    ld a, [hl+]
    ld [$dc00], a
    ldh [$8c], a
    ld [$4000], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_045_4a7a
    and a
    jr nz, jr_045_46e8

jr_045_46da:
    dec bc
    dec bc
    call Call_045_49cc
    and a
    jr nz, jr_045_46e4

    xor a
    ret


jr_045_46e4:
    ld b, $83
    jr jr_045_46f7

jr_045_46e8:
    ld a, [$dc17]
    and a
    jr z, jr_045_46f5

    ld a, $01
    ld [$dc16], a
    jr jr_045_46da

jr_045_46f5:
    ld b, $81

jr_045_46f7:
    ld a, $01
    ret


Call_045_46fa:
    call Call_045_4867
    and a
    jp nz, Jump_045_478a

    ld hl, $dc03
    ld a, [hl+]
    ld [$dc00], a
    ldh [$8c], a
    ld [$4000], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_045_4a18
    and a
    jp nz, Jump_045_478e

    call Call_045_49cc
    and a
    jp nz, Jump_045_478a

    ld a, $01
    ld [$dc0e], a
    ld a, [$dc00]
    ldh [$8c], a
    ld [$4000], a
    ld a, $01
    ld [$dc15], a
    call Call_045_47cd
    and a
    jp nz, Jump_045_47b7

jr_045_4737:
    call Call_045_4843
    cp $01
    jr nz, jr_045_4749

    ld a, [$dc17]
    and a
    jr z, jr_045_4794

    ld a, $01
    ld [$dc16], a

jr_045_4749:
    call Call_045_494d
    and a
    jr nz, jr_045_478a

    ld a, [$dc16]
    and a
    jr nz, jr_045_4786

    ld hl, $dc03
    ld a, [hl+]
    ld [$dc00], a
    ldh [$8c], a
    ld [$4000], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_045_47cd
    and a
    jr nz, jr_045_47b7

    ld a, [$dc0e]
    cp $03
    jr nz, jr_045_4773

    dec bc
    dec bc

jr_045_4773:
    call Call_045_49cc
    and a
    jr nz, jr_045_478a

    ld a, [$dc0d]
    inc a
    ld [$dc0d], a
    ld a, [$dc16]
    and a
    jr z, jr_045_4799

jr_045_4786:
    ld b, $01
    jr jr_045_47cb

Jump_045_478a:
jr_045_478a:
    ld b, $83
    jr jr_045_4796

Jump_045_478e:
    ld a, [$dc17]
    and a
    jr nz, jr_045_4796

jr_045_4794:
    ld b, $81

jr_045_4796:
    ld a, $01
    ret


jr_045_4799:
    ld a, [$dc10]
    and a
    jr z, jr_045_4737

    jr jr_045_47cb

    ld hl, $dc03
    ld a, [hl+]
    ld [$dc00], a
    ldh [$8c], a
    ld [$4000], a
    call Call_045_4a7a
    and a
    jr z, jr_045_47cb

    xor a
    ld [$dc16], a

Jump_045_47b7:
jr_045_47b7:
    ld a, [$dc17]
    and a
    jr z, jr_045_4794

    ld a, $01
    ld [$dc16], a
    ld a, [$dc0d]
    cp $01
    jr nz, jr_045_4773

    ld b, $01

jr_045_47cb:
    xor a
    ret


Call_045_47cd:
    ld bc, $0000
    ld a, [$dc15]
    and a
    jr nz, jr_045_480c

jr_045_47d6:
    ld a, [de]
    and a
    jr z, jr_045_482f

    inc e
    call z, Call_045_483a
    inc bc
    cp $0d
    jr nz, jr_045_47d6

    ld a, [de]
    cp $0a
    jr nz, jr_045_482f

jr_045_47e8:
    inc bc
    inc e
    call z, Call_045_483a
    ld a, [de]
    cp $20
    jr z, jr_045_4827

    cp $09
    jr z, jr_045_4827

    cp $0d
    jr nz, jr_045_482b

    inc e
    call z, Call_045_483a
    ld a, [de]
    cp $0a
    jr nz, jr_045_482f

    inc e
    call z, Call_045_483a
    ld a, h
    and a
    jr z, jr_045_480c

    dec bc

jr_045_480c:
    ld a, [de]
    cp $2d
    jr nz, jr_045_47d6

    inc e
    call z, Call_045_483a
    ld a, [de]
    cp $2d
    jr nz, jr_045_47d6

    inc e
    call z, Call_045_483a
    push bc
    call Call_045_463c
    pop bc
    and a
    jr nz, jr_045_47d6

    ret


jr_045_4827:
    ld h, $01
    jr jr_045_47e8

jr_045_482b:
    ld h, $00
    jr jr_045_480c

jr_045_482f:
    and a
    jr nz, jr_045_4837

    ld a, $01
    ld [$dc17], a

jr_045_4837:
    ld a, $01
    ret


Call_045_483a:
    push bc
    ld bc, $dc00
    call Call_045_5d80
    pop bc
    ret


Call_045_4843:
    ld a, [$dc00]
    push af
    push de
    ldh [$8c], a
    ld [$4000], a
    call Call_045_4a18
    and a
    jr nz, jr_045_485f

    pop de
    pop af
    ld [$dc00], a
    ld hl, $4218
    call Call_045_4acf
    ret


jr_045_485f:
    pop de
    pop af
    ld [$dc00], a
    ld a, $01
    ret


Call_045_4867:
    ld hl, $dc06
    ld a, [hl+]
    ld [$dc01], a
    ldh [$8c], a
    ld [$4000], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $02
    ld [de], a
    inc e
    call z, Call_045_48b9
    ld a, $01
    ld [de], a
    inc e
    call z, Call_045_48b9
    ld hl, $dc03
    ld a, [hl+]
    ld [de], a
    inc e
    call z, Call_045_48b9
    ld a, [hl+]
    ld [de], a
    inc e
    call z, Call_045_48b9
    ld a, [hl+]
    ld [de], a
    inc e
    call z, Call_045_48b9
    ld hl, $dc06
    ld a, [$dc01]
    ld [hl+], a
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld d, $05

jr_045_48a9:
    dec bc
    ld a, b
    or c
    jr z, jr_045_48b6

    dec d
    jr nz, jr_045_48a9

    ld [hl], b
    dec hl
    ld [hl], c
    xor a
    ret


jr_045_48b6:
    ld a, $01
    ret


Call_045_48b9:
    push bc
    ld bc, $dc01
    call Call_045_5d80
    pop bc
    ret


Call_045_48c2:
    ld hl, $dc06
    ld a, [hl+]
    ld [$dc01], a
    ldh [$8c], a
    ld [$4000], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    inc e
    call z, Call_045_4944
    ld a, b
    ld [de], a
    inc e
    call z, Call_045_4944
    ld a, [$dc0e]
    ld [de], a
    inc e
    call z, Call_045_4944
    cp $03
    jr nz, jr_045_4904

    ld hl, $dc11
    ld a, [hl+]
    ld [de], a
    inc e
    call z, Call_045_4944
    ld a, [hl+]
    ld [de], a
    inc e
    call z, Call_045_4944
    ld a, [hl+]
    ld [de], a
    inc e
    call z, Call_045_4944
    ld a, [hl+]
    ld [de], a
    inc e
    call z, Call_045_4944

jr_045_4904:
    ld hl, $dc03
    ld a, [hl+]
    ld [de], a
    inc e
    call z, Call_045_4944
    ld a, [hl+]
    ld [de], a
    inc e
    call z, Call_045_4944
    ld a, [hl+]
    ld [de], a
    inc e
    call z, Call_045_4944
    ld hl, $dc06
    ld a, [$dc01]
    ld [hl+], a
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [$dc0e]
    cp $03
    jr z, jr_045_4932

    ld d, $06
    jr jr_045_4934

jr_045_4932:
    ld d, $0a

jr_045_4934:
    dec bc
    ld a, b
    or c
    jr z, jr_045_4941

    dec d
    jr nz, jr_045_4934

    ld [hl], b
    dec hl
    ld [hl], c
    xor a
    ret


jr_045_4941:
    ld a, $01
    ret


Call_045_4944:
    push bc
    ld bc, $dc01
    call Call_045_5d80
    pop bc
    ret


Call_045_494d:
    ld hl, $dc06
    ld a, [hl+]
    ld [$dc01], a
    ldh [$8c], a
    ld [$4000], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [$dc0e]
    ld [de], a
    inc e
    call z, Call_045_49c3
    cp $03
    jr nz, jr_045_4983

    ld hl, $dc11
    ld a, [hl+]
    ld [de], a
    inc e
    call z, Call_045_49c3
    ld a, [hl+]
    ld [de], a
    inc e
    call z, Call_045_49c3
    ld a, [hl+]
    ld [de], a
    inc e
    call z, Call_045_49c3
    ld a, [hl+]
    ld [de], a
    inc e
    call z, Call_045_49c3

jr_045_4983:
    ld hl, $dc03
    ld a, [hl+]
    ld [de], a
    inc e
    call z, Call_045_49c3
    ld a, [hl+]
    ld [de], a
    inc e
    call z, Call_045_49c3
    ld a, [hl+]
    ld [de], a
    inc e
    call z, Call_045_49c3
    ld hl, $dc06
    ld a, [$dc01]
    ld [hl+], a
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [$dc0e]
    cp $03
    jr z, jr_045_49b1

    ld d, $04
    jr jr_045_49b3

jr_045_49b1:
    ld d, $08

jr_045_49b3:
    dec bc
    ld a, b
    or c
    jr z, jr_045_49c0

    dec d
    jr nz, jr_045_49b3

    ld [hl], b
    dec hl
    ld [hl], c
    xor a
    ret


jr_045_49c0:
    ld a, $01
    ret


Call_045_49c3:
    push bc
    ld bc, $dc01
    call Call_045_5d80
    pop bc
    ret


Call_045_49cc:
    ld hl, $dc06
    ld a, [hl]
    ld [$dc01], a
    ldh [$8c], a
    ld [$4000], a
    push de
    ld hl, $dc09
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec de
    ld a, d
    or e
    jr z, jr_045_4a0b

    dec de
    ld a, d
    or e
    jr z, jr_045_4a0b

    ld [hl], d
    dec hl
    ld [hl], e
    ld hl, $dc07
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    inc e
    call z, Call_045_4a0f
    ld a, b
    ld [de], a
    inc e
    call z, Call_045_4a0f
    ld hl, $dc06
    ld a, [$dc01]
    ld [hl+], a
    ld [hl], e
    inc hl
    ld [hl], d
    pop de
    xor a
    ret


jr_045_4a0b:
    pop de
    ld a, $01
    ret


Call_045_4a0f:
    push bc
    ld bc, $dc01
    call Call_045_5d80
    pop bc
    ret


Call_045_4a18:
    ld bc, $0000
    ld h, b

jr_045_4a1c:
    inc bc
    ld a, [de]
    and a
    jr z, jr_045_4a66

    inc e
    call z, Call_045_4a71
    cp $0d
    jr nz, jr_045_4a1c

    ld a, [de]
    cp $0a
    jr nz, jr_045_4a66

jr_045_4a2e:
    inc bc
    inc e
    call z, Call_045_4a71
    ld a, [de]
    cp $20
    jr z, jr_045_4a5e

    cp $09
    jr z, jr_045_4a5e

    cp $0d
    jr nz, jr_045_4a62

    inc e
    call z, Call_045_4a71
    ld a, [de]
    cp $0a
    jr nz, jr_045_4a66

    inc e
    call z, Call_045_4a71
    ld a, h
    and a
    jr z, jr_045_4a52

    dec bc

jr_045_4a52:
    ld hl, $dc03
    ld a, [$dc00]
    ld [hl+], a
    ld [hl], e
    inc hl
    ld [hl], d
    xor a
    ret


jr_045_4a5e:
    ld h, $01
    jr jr_045_4a2e

jr_045_4a62:
    ld h, $00
    jr jr_045_4a1c

jr_045_4a66:
    and a
    jr nz, jr_045_4a6e

    ld a, $01
    ld [$dc17], a

jr_045_4a6e:
    ld a, $01
    ret


Call_045_4a71:
    push bc
    ld bc, $dc00
    call Call_045_5d80
    pop bc
    ret


Call_045_4a7a:
    ld bc, $0000

jr_045_4a7d:
    inc bc
    ld a, [de]
    and a
    jr z, jr_045_4abb

    inc e
    call z, Call_045_4ac6
    cp $0d
    jr nz, jr_045_4a7d

    ld a, [de]
    cp $0a
    jr nz, jr_045_4abb

    inc e
    call z, Call_045_4ac6
    inc bc
    ld a, [de]
    cp $2e
    jr nz, jr_045_4a7d

    inc e
    call z, Call_045_4ac6
    ld a, [de]
    cp $0d
    jr nz, jr_045_4a7d

    inc e
    call z, Call_045_4ac6
    ld a, [de]
    cp $0a
    jr nz, jr_045_4abb

    inc e
    call z, Call_045_4ac6
    ld hl, $dc03
    ld a, [$dc00]
    ld [hl+], a
    ld [hl], e
    inc hl
    ld [hl], d
    xor a
    ret


jr_045_4abb:
    and a
    jr nz, jr_045_4ac3

    ld a, $01
    ld [$dc17], a

jr_045_4ac3:
    ld a, $01
    ret


Call_045_4ac6:
    push bc
    ld bc, $dc00
    call Call_045_5d80
    pop bc
    ret


Call_045_4acf:
jr_045_4acf:
    push hl
    push bc

jr_045_4ad1:
    ld a, [hl]
    ld b, a
    ld a, [de]
    inc e
    call z, Call_045_4b4c
    cp $61
    jr c, jr_045_4ae2

    cp $7b
    jr nc, jr_045_4ae2

    sub $20

jr_045_4ae2:
    cp b
    jr z, jr_045_4af4

    pop bc
    dec bc
    push bc
    ld a, b
    or c
    jr nz, jr_045_4ad1

jr_045_4aec:
    ld a, $02
    ld [$dc0e], a
    pop bc
    pop hl
    ret


jr_045_4af4:
    inc hl

jr_045_4af5:
    ld a, [hl+]
    and a
    jr z, jr_045_4b19

    ld b, a
    ld a, [de]
    inc e
    call z, Call_045_4b4c
    cp $61
    jr c, jr_045_4b09

    cp $7b
    jr nc, jr_045_4b09

    sub $20

jr_045_4b09:
    cp b
    jr nz, jr_045_4b15

    pop bc
    dec bc
    push bc
    ld a, b
    or c
    jr nz, jr_045_4af5

    jr jr_045_4aec

jr_045_4b15:
    pop bc
    pop hl
    jr jr_045_4acf

jr_045_4b19:
    ld b, $00
    ld c, $40
    ld a, [de]
    cp $22
    jr nz, jr_045_4b26

    inc e
    call z, Call_045_4b4c

jr_045_4b26:
    ld hl, $dc11
    ld a, [$dc00]
    ld [hl+], a
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl

jr_045_4b31:
    ld a, [de]
    cp $22
    jr z, jr_045_4b42

    cp $0d
    jr z, jr_045_4b42

    inc e
    call z, Call_045_4b4c
    inc b
    dec c
    jr nz, jr_045_4b31

jr_045_4b42:
    ld [hl], b
    pop bc
    pop hl
    ld a, $03
    ld [$dc0e], a
    xor a
    ret


Call_045_4b4c:
    push bc
    ld bc, $dc00
    call Call_045_5d80
    pop bc
    ret


    call Call_045_4561
    ld b, $00
    ld hl, $dc03
    ld c, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $dc24

jr_045_4b65:
    push de
    push bc
    push hl
    call Call_045_43f3
    cp $02
    jr z, jr_045_4bb2

    and a
    jr nz, jr_045_4b8c

    ld a, h
    pop hl
    inc hl
    ld [hl-], a
    ld a, $01
    ld [hl+], a
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl

jr_045_4b82:
    pop bc
    pop de
    inc b
    ld a, b
    cp $0d
    jr z, jr_045_4b96

    jr jr_045_4b65

jr_045_4b8c:
    pop hl
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr jr_045_4b82

jr_045_4b96:
    ld hl, $dc06
    ld a, [hl+]
    ld [$dc01], a
    ldh [$8c], a
    ld [$4000], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld bc, $004e
    ld hl, $dc24
    call Call_045_5d6a
    jp Jump_045_425c


jr_045_4bb2:
    ld a, $01
    pop bc
    pop bc
    pop bc
    ld b, $82
    jp Jump_045_425c


    ld h, d
    ld l, e
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    inc hl
    push hl
    call Call_045_43f3
    cp $02
    jr z, jr_045_4c03

    and a
    jr nz, jr_045_4bff

    ld a, h
    ld [$dc00], a
    ldh [$8c], a
    ld [$4000], a
    call Call_045_4c0b
    ld hl, $dc24
    call Call_045_4c5e
    ld a, b
    or c
    jr z, jr_045_4bff

    pop hl
    ld a, [hl+]
    ld [$dc01], a
    ldh [$8c], a
    ld [$4000], a
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld hl, $dc24
    push bc
    call Call_045_5d6a
    pop hl
    jp Jump_045_425c


jr_045_4bff:
    ld b, $84
    jr jr_045_4c05

jr_045_4c03:
    ld b, $82

jr_045_4c05:
    ld a, $01
    pop hl
    jp Jump_045_425c


Call_045_4c0b:
    ld hl, $dc24
    push bc
    call Call_045_5d53
    pop bc
    ld hl, $dc24
    ld d, h
    ld e, l

jr_045_4c18:
    ld a, [hl+]
    cp $0d
    jr z, jr_045_4c34

    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_045_4c18

jr_045_4c24:
    xor a
    ld [de], a
    ld hl, $dc24
    ld bc, $0000

jr_045_4c2c:
    ld a, [hl+]
    inc bc
    and a
    jr nz, jr_045_4c2c

    dec bc
    xor a
    ret


jr_045_4c34:
    dec bc
    ld a, b
    or c
    jr z, jr_045_4c24

    ld a, [hl+]
    cp $0a
    jr nz, jr_045_4c18

    dec bc
    ld a, b
    or c
    jr z, jr_045_4c24

    ld a, [hl+]
    cp $20
    jr z, jr_045_4c4e

    cp $09
    jr z, jr_045_4c4e

    jr jr_045_4c24

jr_045_4c4e:
    dec bc
    ld a, b
    or c
    jr z, jr_045_4c24

    jr jr_045_4c18

    push bc
    ld bc, $dc00
    call Call_045_5d80
    pop bc
    ret


Call_045_4c5e:
    ld de, $ddc7
    push hl

jr_045_4c62:
    ld a, [hl+]
    ld [de], a
    inc de
    and a
    jr z, jr_045_4cc6

    cp $3d
    jr nz, jr_045_4c62

    ld a, [hl+]
    ld [de], a
    inc de
    cp $3f
    jr nz, jr_045_4c62

    dec de
    dec de

jr_045_4c75:
    ld a, [hl+]
    cp $3f
    jr nz, jr_045_4c75

    ld a, [hl+]
    cp $42
    jr nz, jr_045_4cb8

    inc hl
    ld bc, $0000
    push hl

jr_045_4c84:
    inc bc
    ld a, [hl+]
    cp $3f
    jr nz, jr_045_4c84

    inc bc
    ld a, [hl+]
    cp $3d
    jr nz, jr_045_4c84

    dec bc
    dec bc
    ld a, l
    ld [$dc03], a
    ld a, h
    ld [$dc04], a
    pop hl
    push de
    call Call_045_5c49
    pop de
    ld h, d
    ld l, e
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a

jr_045_4ca6:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_045_4ca6

    ld a, [$dc03]
    ld l, a
    ld a, [$dc04]
    ld h, a
    jr jr_045_4c62

jr_045_4cb8:
    ld a, $3d
    ld [de], a
    inc de
    ld a, $3f
    ld [de], a
    inc de

jr_045_4cc0:
    ld a, [hl+]
    ld [de], a
    inc de
    and a
    jr nz, jr_045_4cc0

jr_045_4cc6:
    ld [de], a
    pop hl
    ld de, $ddc7
    ld bc, $0000

jr_045_4cce:
    inc bc
    ld a, [de]
    ld [hl+], a
    inc de
    and a
    jr z, jr_045_4cd7

    jr jr_045_4cce

jr_045_4cd7:
    dec bc
    ret


    ld h, d
    ld l, e
    ld b, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push hl
    call Call_045_43f3
    and a
    jr nz, jr_045_4d33

    ld [$dc03], a
    ld [$dc04], a
    ld a, h
    ld [$dc00], a
    ldh [$8c], a
    ld [$4000], a
    ld hl, $dc24
    call Call_045_4d39
    ld hl, $dc24
    call Call_045_4d99
    pop hl
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl-]
    cp b
    jr c, jr_045_4d2d

    jr z, jr_045_4d29

jr_045_4d11:
    pop hl
    ld a, [hl+]
    ld [$dc01], a
    ldh [$8c], a
    ld [$4000], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld hl, $ddc7
    call Call_045_5d6a
    xor a
    jp Jump_045_425c


jr_045_4d29:
    ld a, [hl+]
    cp c
    jr nc, jr_045_4d11

jr_045_4d2d:
    ld b, $83
    jr jr_045_4d33

    ld b, $82

jr_045_4d33:
    pop hl
    ld a, $01
    jp Jump_045_425c


Call_045_4d39:
jr_045_4d39:
    ld a, [$dc04]
    and a
    jr nz, jr_045_4d4a

    ld a, [de]
    cp $28
    jr z, jr_045_4d55

    cp $22
    jr z, jr_045_4d55

    jr jr_045_4d7f

jr_045_4d4a:
    ld a, [de]
    cp $29
    jr z, jr_045_4d5f

    cp $22
    jr z, jr_045_4d6f

    jr jr_045_4d84

jr_045_4d55:
    ld [$dc03], a
    ld a, $01
    ld [$dc04], a
    jr jr_045_4d84

jr_045_4d5f:
    ld a, [$dc03]
    cp $28
    jr nz, jr_045_4d84

    xor a
    ld [$dc03], a
    ld [$dc04], a
    jr jr_045_4d84

jr_045_4d6f:
    ld a, [$dc03]
    cp $22
    jr nz, jr_045_4d84

    xor a
    ld [$dc03], a
    ld [$dc04], a
    jr jr_045_4d84

jr_045_4d7f:
    cp $20
    jr z, jr_045_4d84

    ld [hl+], a

jr_045_4d84:
    dec bc
    ld a, b
    or c
    jr z, jr_045_4d96

    inc e
    jr nz, jr_045_4d39

    push bc
    ld bc, $dc00
    call Call_045_5d80
    pop bc
    jr jr_045_4d39

jr_045_4d96:
    xor a
    ld [hl+], a
    ret


Call_045_4d99:
    ld de, $ddc7
    xor a
    ld [de], a

jr_045_4d9e:
    ld a, [hl+]
    call Call_045_4df1
    and a
    jr z, jr_045_4dde

    cp $40
    jr nz, jr_045_4d9e

    dec hl

jr_045_4daa:
    dec hl
    ld a, [hl]
    call Call_045_4e2d
    and a
    jr z, jr_045_4daa

    inc hl
    push hl
    ld b, $00

jr_045_4db6:
    ld a, [hl+]
    cp $40
    jr z, jr_045_4dc1

    call Call_045_4e2d
    and a
    jr nz, jr_045_4dc4

jr_045_4dc1:
    inc b
    jr jr_045_4db6

jr_045_4dc4:
    pop hl
    ld a, [$ddc7]
    and a
    jr z, jr_045_4dd2

    ld a, $2c
    inc de
    ld [de], a
    ld a, [$ddc7]

jr_045_4dd2:
    inc a
    ld [$ddc7], a

jr_045_4dd6:
    inc de
    ld a, [hl+]
    ld [de], a
    dec b
    jr nz, jr_045_4dd6

    jr jr_045_4d9e

jr_045_4dde:
    inc de
    xor a
    ld [de], a
    ld a, $dd
    cpl
    ld h, a
    ld a, $c8
    cpl
    ld l, a
    inc hl
    add hl, de
    ld b, h
    ld c, l
    inc bc
    inc bc
    xor a
    ret


Call_045_4df1:
    cp $1b
    ret nz

    ld a, [hl+]
    and a
    jr z, jr_045_4e2b

    cp $24
    jr nz, jr_045_4e09

    ld a, [hl+]
    and a
    jr z, jr_045_4e2b

    cp $42
    jr z, jr_045_4e0b

    cp $40
    jr z, jr_045_4e0b

    dec hl

jr_045_4e09:
    dec hl
    ret


jr_045_4e0b:
    ld a, [hl+]
    and a
    jr z, jr_045_4e2b

    cp $1b
    jr nz, jr_045_4e0b

    ld a, [hl+]
    and a
    jr z, jr_045_4e2b

    cp $28
    jr nz, jr_045_4e0b

    ld a, [hl+]
    and a
    jr z, jr_045_4e2b

    cp $42
    jr z, jr_045_4e29

    cp $4a
    jr z, jr_045_4e29

    jr jr_045_4e0b

jr_045_4e29:
    ld a, [hl+]
    ret


jr_045_4e2b:
    xor a
    ret


Call_045_4e2d:
    cp $30
    jr c, jr_045_4e45

    cp $40
    jr c, jr_045_4e58

    cp $41
    jr c, jr_045_4e45

    cp $5b
    jr c, jr_045_4e58

    cp $61
    jr c, jr_045_4e45

    cp $7b
    jr c, jr_045_4e58

jr_045_4e45:
    cp $20
    jr z, jr_045_4e58

    cp $2d
    jr z, jr_045_4e58

    cp $2e
    jr z, jr_045_4e58

    cp $5f
    jr z, jr_045_4e58

jr_045_4e55:
    ld a, $01
    ret


jr_045_4e58:
    cp $3c
    jr z, jr_045_4e55

    cp $3e
    jr z, jr_045_4e55

    xor a
    ret


    ld a, c
    and a
    jr nz, jr_045_4e6f

    ld a, [$dc23]
    and a
    jp z, Jump_045_425c

    jr jr_045_4e76

jr_045_4e6f:
    xor a
    ld [$dc23], a
    call Call_045_4ee9

jr_045_4e76:
    call Call_045_4f0a
    cp $ff
    jp z, Jump_045_425c

    and a
    jr nz, jr_045_4e99

    call Call_045_4ea0
    and a
    jr nz, jr_045_4e99

    ld hl, $dc09
    ld a, [hl+]
    cpl
    ld e, a
    ld a, [hl+]
    cpl
    ld d, a
    inc de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    xor a
    jp Jump_045_425c


jr_045_4e99:
    ld a, $01
    ld b, $83
    jp Jump_045_425c


Call_045_4ea0:
    ld hl, $dc06
    ld a, [hl+]
    ld [$dc01], a
    ldh [$8c], a
    ld [$4000], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a

Jump_045_4eb2:
    ld a, [hl+]
    ld b, a
    ld a, $0d
    ld [de], a
    dec bc
    ld a, b
    or c
    jr z, jr_045_4edb

    inc e
    call z, Call_045_4ee0
    ld a, $0a
    ld [de], a
    dec bc
    inc e
    call z, Call_045_4ee0
    ld hl, $dc06
    ld a, [$dc01]
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld [hl], b
    xor a
    ld [$dc23], a
    ret


jr_045_4edb:
    ld a, $01
    ld b, $83
    ret


Call_045_4ee0:
    push bc
    ld bc, $dc01
    call Call_045_5d80
    pop bc
    ret


Call_045_4ee9:
    ld hl, $dc03
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld c, a
    ld [hl+], a
    inc de
    ld a, [de]
    ld b, a
    ld [hl+], a
    inc de
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld [hl], d
    ret


Call_045_4f0a:
    call Call_045_4f39
    and a
    jr nz, jr_045_4f26

    ld a, [$dc03]
    cp $06
    jr c, jr_045_4f21

    cp $0c
    jr z, jr_045_4f23

    call Call_045_4f59
    and a
    jr nz, jr_045_4f23

jr_045_4f21:
    xor a
    ret


jr_045_4f23:
    ld a, $01
    ret


jr_045_4f26:
    call Call_045_4f59
    and a
    jr nz, jr_045_4f23

    ld hl, $dc0d
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    and a
    jr z, jr_045_4f21

    ld a, $ff
    ret


Call_045_4f39:
    ld hl, $dc0d
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [de]
    and a
    jr z, jr_045_4f58

    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld hl, $dc0d
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, $01
    ret


jr_045_4f58:
    ret


Call_045_4f59:
    ld a, [$dc23]
    and a
    jr nz, jr_045_4f7c

    ld a, [$dc03]
    cp $11
    jr z, jr_045_4fa7

    add a
    ld e, a
    ld d, $00
    ld hl, $4011
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_045_5020
    and a
    jr nz, jr_045_4fe7

    ld a, $01
    ld [$dc23], a

jr_045_4f7c:
    ld a, [$dc03]
    cp $05
    jr c, jr_045_4fc9

    jr z, jr_045_4fec

    cp $08
    jr c, jr_045_4fa5

    jr z, jr_045_4ff4

    cp $0b
    jr c, jr_045_4fa5

    jr z, jr_045_4ffc

    cp $0c
    jr z, jr_045_5007

    cp $0d
    jr z, jr_045_4fa5

    cp $10
    jr c, jr_045_5015

    jr z, jr_045_4fa5

    cp $12
    jr c, jr_045_4fa5

    jr jr_045_4fe7

jr_045_4fa5:
    xor a
    ret


jr_045_4fa7:
    ld hl, $dc0f
    ld c, [hl]
    inc hl
    ld a, [hl+]
    ld [$dc00], a
    ldh [$8c], a
    ld [$4000], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $dc24
    call Call_045_5d53
    ld hl, $dc24
    call Call_045_5020
    and a
    jr nz, jr_045_4fe7

    jr jr_045_501e

jr_045_4fc9:
    call Call_045_5062
    and a
    jr nz, jr_045_4fe7

    ld a, [$dc04]
    dec a
    ld [$dc04], a
    and a
    jr z, jr_045_4fdf

    call Call_045_4f39
    and a
    jr nz, jr_045_4fc9

jr_045_4fdf:
    ld a, [$dc05]
    ld [$dc04], a
    jr jr_045_501e

jr_045_4fe7:
    ld a, $01
    ld b, $83
    ret


jr_045_4fec:
    call Call_045_5062
    and a
    jr nz, jr_045_4fe7

    jr jr_045_501e

jr_045_4ff4:
    call Call_045_5179
    and a
    jr nz, jr_045_4fe7

    jr jr_045_501e

jr_045_4ffc:
    ld hl, $4000
    call Call_045_5217
    and a
    jr nz, jr_045_4fe7

    jr jr_045_501e

jr_045_5007:
    call Call_045_528f
    ld hl, $dc24
    call Call_045_5217
    and a
    jr nz, jr_045_4fe7

    jr jr_045_501e

jr_045_5015:
    ld hl, $4000
    call Call_045_5217
    and a
    jr nz, jr_045_4fe7

jr_045_501e:
    xor a
    ret


Call_045_5020:
    push hl
    ld hl, $dc06
    ld a, [hl+]
    ld [$dc01], a
    ldh [$8c], a
    ld [$4000], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    pop hl

jr_045_5036:
    ld a, [hl+]
    and a
    jr z, jr_045_5046

    ld [de], a
    dec bc
    ld a, b
    or c
    jr z, jr_045_5056

    inc e
    call z, Call_045_5059
    jr jr_045_5036

jr_045_5046:
    ld hl, $dc06
    ld a, [$dc01]
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld [hl], b
    xor a
    ret


jr_045_5056:
    ld a, $01
    ret


Call_045_5059:
    push bc
    ld bc, $dc01
    call Call_045_5d80
    pop bc
    ret


Call_045_5062:
    ld hl, $dc0f
    ld a, [hl+]
    and a
    jr z, jr_045_50ae

    ld c, a
    ld a, [hl+]
    ld [$dc00], a
    ldh [$8c], a
    ld [$4000], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld b, $00
    ld hl, $dc24
    ld a, [$dc23]
    cp $01
    jr z, jr_045_509b

    cp $02
    jr z, jr_045_5098

    cp $03
    jr nz, jr_045_50b2

    ld a, $2c
    ld [hl+], a
    ld a, $0d
    ld [hl+], a
    ld a, $0a
    ld [hl+], a
    ld a, $09
    ld [hl+], a
    jr jr_045_509b

jr_045_5098:
    ld a, $2c
    ld [hl+], a

jr_045_509b:
    call Call_045_5d53
    call Call_045_50b3
    call Call_045_5136
    ld a, [$dc23]
    inc a
    cp $04
    jr nz, jr_045_50ae

    ld a, $02

jr_045_50ae:
    ld [$dc23], a
    xor a

jr_045_50b2:
    ret


Call_045_50b3:
    ld hl, $dc24
    ld de, $ddc7
    ld b, $00

jr_045_50bb:
    ld c, $00
    ld a, [hl+]
    cp $1b
    jr z, jr_045_50c9

    ld [de], a
    inc de
    and a
    jr z, jr_045_5133

    jr jr_045_50bb

jr_045_50c9:
    inc c
    ld a, [hl]
    cp $24
    jr nz, jr_045_50bb

    inc hl
    inc c
    ld a, [hl]
    cp $42
    jr z, jr_045_50dc

    cp $40
    jr z, jr_045_50dc

    jr jr_045_50bb

jr_045_50dc:
    push hl

jr_045_50dd:
    inc c
    ld a, [hl+]
    and a
    jr z, jr_045_5133

    cp $1b
    jr nz, jr_045_50dd

    inc c
    ld a, [hl+]
    cp $28
    jr nz, jr_045_50dd

    inc c
    ld a, [hl+]
    cp $42
    jr z, jr_045_50f8

    cp $4a
    jr z, jr_045_50f8

    jr jr_045_50dd

jr_045_50f8:
    ld a, l
    ld [$dc13], a
    ld a, h
    ld [$dc14], a
    ld hl, $4232

jr_045_5103:
    ld a, [hl+]
    and a
    jr z, jr_045_510b

    ld [de], a
    inc de
    jr jr_045_5103

jr_045_510b:
    pop hl
    dec hl
    dec hl
    push de
    call Call_045_58c2
    pop de
    ld h, d
    ld l, e
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

jr_045_5119:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_045_5119

    ld a, $3f
    ld [de], a
    inc de
    ld a, $3d
    ld [de], a
    inc de
    ld a, [$dc13]
    ld l, a
    ld a, [$dc14]
    ld h, a
    jr jr_045_50bb

jr_045_5133:
    xor a
    ld [de], a
    ret


Call_045_5136:
    ld hl, $dc06
    ld a, [hl+]
    ld [$dc01], a
    ldh [$8c], a
    ld [$4000], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld hl, $ddc7

jr_045_514d:
    ld a, [hl+]
    and a
    jr z, jr_045_515d

    ld [de], a
    dec bc
    ld a, b
    or c
    jr z, jr_045_516d

    inc e
    call z, Call_045_5170
    jr jr_045_514d

jr_045_515d:
    ld hl, $dc06
    ld a, [$dc01]
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld [hl], b
    xor a
    ret


jr_045_516d:
    ld a, $01
    ret


Call_045_5170:
    push bc
    ld bc, $dc01
    call Call_045_5d80
    pop bc
    ret


Call_045_5179:
    ld hl, $dc06
    ld a, [hl+]
    ld [$dc01], a
    ldh [$8c], a
    ld [$4000], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld hl, HeaderManufacturerCode
    ld a, [hl+]
    ld [de], a
    dec bc
    ld a, b
    or c
    jr z, jr_045_51ef

    inc e
    call z, Call_045_520e
    ld a, [hl+]
    ld [de], a
    dec bc
    ld a, b
    or c
    jr z, jr_045_51ef

    inc e
    call z, Call_045_520e
    ld a, [hl+]
    ld [de], a
    dec bc
    ld a, b
    or c
    jr z, jr_045_51ef

    inc e
    call z, Call_045_520e
    ld a, [hl+]
    ld [de], a
    dec bc
    ld a, b
    or c
    jr z, jr_045_51ef

    inc e
    call z, Call_045_520e
    ld a, $2d
    ld [de], a
    dec bc
    ld a, b
    or c
    jr z, jr_045_51ef

    inc e
    call z, Call_045_520e
    ld a, [HeaderMaskROMVersion]
    ld h, a
    and $f0
    swap a
    cp $0a
    jr nc, jr_045_51d8

    add $30
    jr jr_045_51da

jr_045_51d8:
    add $37

jr_045_51da:
    ld [de], a
    dec bc
    ld a, b
    or c
    jr z, jr_045_51ef

    inc e
    call z, Call_045_520e
    ld a, h
    and $0f
    cp $0a
    jr nc, jr_045_51f2

    add $30
    jr jr_045_51f4

jr_045_51ef:
    ld a, $01
    ret


jr_045_51f2:
    add $37

jr_045_51f4:
    ld [de], a
    dec bc
    ld a, b
    or c
    jr z, jr_045_51ef

    inc e
    call z, Call_045_520e
    ld hl, $dc06
    ld a, [$dc01]
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld [hl], b
    xor a
    ret


Call_045_520e:
    push bc
    ld bc, $dc01
    call Call_045_5d80
    pop bc
    ret


Call_045_5217:
    push hl
    ld hl, $dc06
    ld a, [hl+]
    ld [$dc01], a
    ldh [$8c], a
    ld [$4000], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    pop hl

jr_045_522d:
    ld a, [hl+]
    and a
    jr z, jr_045_523d

    ld [de], a
    dec bc
    ld a, b
    or c
    jr z, jr_045_5262

    inc e
    call z, Call_045_5286
    jr jr_045_522d

jr_045_523d:
    ld a, [$dc03]
    cp $0b
    jr z, jr_045_5278

    cp $0c
    jr z, jr_045_5278

    cp $0e
    jr z, jr_045_5252

    cp $0f
    jr z, jr_045_5265

    jr jr_045_5262

jr_045_5252:
    ld hl, $dc06
    ld a, [$dc01]
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld [hl], b
    xor a
    ret


jr_045_5262:
    ld a, $01
    ret


jr_045_5265:
    ld h, $02

jr_045_5267:
    ld a, $2d
    ld [de], a
    dec bc
    ld a, b
    or c
    jr z, jr_045_5262

    inc e
    call z, Call_045_5286
    dec h
    jr nz, jr_045_5267

    jr jr_045_5252

jr_045_5278:
    ld a, $22
    ld [de], a
    dec bc
    ld a, b
    or c
    jr z, jr_045_5262

    inc e
    call z, Call_045_5286
    jr jr_045_5252

Call_045_5286:
    push bc
    ld bc, $dc01
    call Call_045_5d80
    pop bc
    ret


Call_045_528f:
    ld hl, $dc0f
    ld c, [hl]
    inc hl
    ld a, [hl+]
    ld [$dc00], a
    ldh [$8c], a
    ld [$4000], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld hl, $dc24

jr_045_52a4:
    ld a, [de]
    ld [hl+], a
    inc e
    call z, Call_045_52af
    dec c
    jr nz, jr_045_52a4

    ld [hl], c
    ret


Call_045_52af:
    push bc
    ld bc, $dc00
    call Call_045_5d80
    pop bc
    ret


    push bc
    call Call_045_537d
    push de
    ld h, d
    ld l, e
    ld a, [hl+]
    ld b, a
    ld c, $01
    call Call_045_53d2
    pop de
    and a
    jr nz, jr_045_52f9

jr_045_52ca:
    ld hl, $dc0d
    ld e, [hl]
    inc hl
    ld d, [hl]

jr_045_52d0:
    ld a, [$dc03]
    cp $03
    jr nz, jr_045_52d8

    push de

jr_045_52d8:
    cp $05
    jr nz, jr_045_52e7

    pop hl
    ld a, [hl+]
    ld b, a
    ld c, $03
    call Call_045_53d2
    and a
    jr nz, jr_045_52f9

jr_045_52e7:
    ld a, [de]
    inc de
    and a
    jr nz, jr_045_5301

    ld a, [$dc03]
    cp $06
    jr z, jr_045_5335

    inc a
    ld [$dc03], a
    jr jr_045_52d0

jr_045_52f9:
    pop hl
    ld a, $01
    ld b, $83
    jp Jump_045_425c


jr_045_5301:
    ld hl, $dc0d
    ld [hl], e
    inc hl
    ld [hl], d

jr_045_5307:
    ld [$dc05], a
    ld a, $01
    ld [$dc04], a
    call Call_045_53b5
    call Call_045_4f59
    and a
    jr nz, jr_045_52f9

    ld a, [$dc05]
    dec a
    jr nz, jr_045_5307

    ld a, [$dc03]
    inc a
    ld [$dc03], a
    call Call_045_4ea0
    and a
    jr nz, jr_045_52f9

    ld [$dc23], a
    ld a, [$dc03]
    cp $06
    jr nz, jr_045_52ca

jr_045_5335:
    call Call_045_53b5
    xor a
    ld [$dc23], a
    call Call_045_4f59
    and a
    jr nz, jr_045_52f9

    call Call_045_4ea0
    and a
    jr nz, jr_045_52f9

    ld a, [$dc03]
    inc a
    ld [$dc03], a
    cp $09
    jr nz, jr_045_5335

    pop bc
    ld a, b
    and a
    jr z, jr_045_536b

    call Call_045_53b5
    xor a
    ld [$dc23], a
    call Call_045_4f59
    and a
    jr nz, jr_045_52f9

    call Call_045_4ea0
    and a
    jr nz, jr_045_52f9

jr_045_536b:
    ld hl, $dc09
    ld a, [hl+]
    cpl
    ld e, a
    ld a, [hl+]
    cpl
    ld d, a
    inc de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    xor a
    jp Jump_045_425c


Call_045_537d:
    ld hl, $dc06
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld b, a
    inc de
    ld a, [de]
    ld [hl+], a
    inc hl
    ld a, [de]
    ld [hl-], a
    ld a, b
    ld [hl+], a
    inc de
    ld hl, $dc15
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld hl, $dc0d
    ld [hl], e
    inc hl
    ld [hl], d
    xor a
    ld [$dc03], a
    ld [$dc23], a
    ret


Call_045_53b5:
    ld hl, $dc0d
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    inc hl
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    inc de
    ld a, [de]
    ld [$dc0f], a
    inc de
    ld hl, $dc0d
    ld [hl], e
    inc hl
    ld [hl], d
    ret


Call_045_53d2:
    ld a, [$dc03]
    ld d, a
    ld a, [$dc04]
    ld e, a
    push de
    xor a
    ld [$dc03], a
    ld [$dc04], a
    ld a, $24
    ld [$dc13], a
    ld a, $dc
    ld [$dc14], a
    push bc
    jr jr_045_53f4

jr_045_53ef:
    ld a, [hl+]
    and a
    jr z, jr_045_5426

    ld b, a

jr_045_53f4:
    push bc

jr_045_53f5:
    ld a, [hl+]
    ld [$dc00], a
    ldh [$8c], a
    ld [$4000], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    push hl
    ld a, [$dc13]
    ld l, a
    ld a, [$dc14]
    ld h, a
    push bc
    ld b, $00
    call Call_045_5d53
    inc hl
    ld [hl], a
    pop bc
    ld a, l
    ld e, a
    ld [$dc13], a
    ld a, h
    ld d, a
    ld [$dc14], a
    dec b
    jr z, jr_045_542b

    pop hl
    jr jr_045_53f5

jr_045_5426:
    dec c
    jr nz, jr_045_53ef

    jr jr_045_5430

jr_045_542b:
    pop hl
    pop bc
    dec c
    jr nz, jr_045_53ef

jr_045_5430:
    ld a, l
    ld [$dc13], a
    ld a, h
    ld [$dc14], a
    xor a
    ld [de], a
    ld hl, $dc24

jr_045_543d:
    ld a, [hl+]
    and a
    jr nz, jr_045_543d

    ld a, [hl]
    and a
    jr z, jr_045_5457

    dec hl
    ld a, $2c
    ld [hl+], a
    jr jr_045_543d

jr_045_544b:
    pop hl
    ld a, h
    ld [$dc03], a
    ld a, l
    ld [$dc04], a
    ld a, $01
    ret


jr_045_5457:
    ld hl, $dc24
    call Call_045_4d99
    ld hl, $ddc8

jr_045_5460:
    ld a, [hl+]
    and a
    jr z, jr_045_546d

    cp $2c
    jr nz, jr_045_5460

    dec hl
    xor a
    ld [hl+], a
    jr jr_045_5460

jr_045_546d:
    pop de
    ld a, e
    cp $01
    jr z, jr_045_5477

    xor a
    ld [hl+], a
    jr jr_045_5478

jr_045_5477:
    dec bc

jr_045_5478:
    ld hl, $dc18
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    cp h
    jr c, jr_045_548c

    jr nz, jr_045_544b

    ld a, c
    cp l
    jr c, jr_045_548c

    jr z, jr_045_548c

    jr jr_045_544b

jr_045_548c:
    ld hl, $dc18
    ld a, c
    cpl
    ld e, a
    ld a, b
    cpl
    ld d, a
    inc de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld de, $dc18
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld hl, $dc15
    ld a, [hl+]
    ld [$dc01], a
    ldh [$8c], a
    ld [$4000], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $ddc8
    call Call_045_5d6a
    ld hl, $dc15
    ld a, [$dc01]
    ld [hl+], a
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, [$dc13]
    ld e, a
    ld a, [$dc14]
    ld d, a
    pop hl
    ld a, h
    ld [$dc03], a
    ld a, l
    ld [$dc04], a
    xor a
    ret


    xor a
    ld [$dc23], a
    call Call_045_55af
    call Call_045_560a
    and a
    jr nz, jr_045_552c

    call Call_045_55d1
    ld a, [$dc15]
    dec a
    ld [$dc15], a
    and a
    jp z, Jump_045_5577

    cp $01
    jr nz, jr_045_5531

    xor a
    ld [$dc1c], a

jr_045_54f7:
    ld a, [$dc16]
    cp $02
    jr z, jr_045_5502

    cp $03
    jr z, jr_045_550f

jr_045_5502:
    ld a, $0a
    ld [$dc03], a
    call Call_045_4f59
    and a
    jr z, jr_045_551a

    jr jr_045_552c

jr_045_550f:
    ld a, $0c
    ld [$dc03], a
    call Call_045_4f59
    and a
    jr nz, jr_045_552c

jr_045_551a:
    call Call_045_4ea0
    and a
    jr nz, jr_045_552c

    call Call_045_4ea0
    and a
    jr nz, jr_045_552c

    call Call_045_560a
    and a
    jr z, jr_045_55a0

jr_045_552c:
    ld a, $01
    jp Jump_045_425c


jr_045_5531:
    ld a, $01
    ld [$dc1c], a
    ld a, $0b
    ld [$dc03], a
    call Call_045_4f59
    and a
    jr nz, jr_045_552c

    call Call_045_4ea0
    and a
    jr nz, jr_045_552c

jr_045_5547:
    call Call_045_4ea0
    and a
    jr nz, jr_045_552c

    ld a, $0e
    ld [$dc03], a
    call Call_045_4f59
    and a
    jr nz, jr_045_552c

    call Call_045_4ea0
    and a
    jr nz, jr_045_552c

    jr jr_045_54f7

jr_045_5560:
    call Call_045_4ea0
    and a
    jr nz, jr_045_552c

    ld a, [$dc1c]
    and a
    jr z, jr_045_557d

    ld a, $0f
    ld [$dc03], a
    call Call_045_4f59
    and a
    jr nz, jr_045_552c

Jump_045_5577:
    call Call_045_4ea0
    and a
    jr nz, jr_045_552c

jr_045_557d:
    ld a, $10
    ld [$dc03], a
    call Call_045_4f59
    and a
    jr nz, jr_045_552c

    call Call_045_4ea0
    and a
    jr nz, jr_045_552c

    ld hl, $dc09
    ld a, [hl+]
    cpl
    ld e, a
    ld a, [hl+]
    cpl
    ld d, a
    inc de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    xor a
    jp Jump_045_425c


jr_045_55a0:
    ld a, [$dc15]
    dec a
    ld [$dc15], a
    and a
    jr z, jr_045_5560

    call Call_045_55d1
    jr jr_045_5547

Call_045_55af:
    ld hl, $dc06
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld b, a
    inc de
    ld a, [de]
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl+], a
    inc de
    ld a, [de]
    ld [$dc15], a
    inc de
    ld a, e
    ld [hl+], a
    ld [hl], d
    call Call_045_55d1
    ret


Call_045_55d1:
    ld a, [$dc0d]
    ld l, a
    ld a, [$dc0e]
    ld h, a
    ld a, [hl+]
    ld [$dc16], a
    cp $03
    jr nz, jr_045_55f0

    ld de, $dc10
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]
    ld [$dc0f], a

jr_045_55f0:
    ld de, $dc17
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, l
    ld [$dc0d], a
    ld a, h
    ld [$dc0e], a
    ret


Call_045_560a:
    ld a, [$dc06]
    ld [$dc01], a
    ld a, [$dc17]
    ld [$dc00], a
    ldh [$8c], a
    ld [$4000], a
    ld hl, $dc1a
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [$dc0a]
    cp b
    jp c, Jump_045_56b1

    jr nz, jr_045_5631

    ld a, [$dc09]
    cp c
    jp c, Jump_045_56b1

jr_045_5631:
    ld a, b
    or c
    jr z, jr_045_56a9

    ld a, [$dc09]
    ld l, a
    ld a, [$dc0a]
    ld h, a
    ld a, c
    cpl
    ld e, a
    ld a, b
    cpl
    ld d, a
    inc de
    add hl, de
    ld a, l
    ld [$dc09], a
    ld a, h
    ld [$dc0a], a

jr_045_564d:
    ld a, $03
    cp b
    jr c, jr_045_56b6

    jr nz, jr_045_5659

    ld a, $db
    cp c
    jr c, jr_045_56b6

jr_045_5659:
    ld a, [$dc1a]
    ld e, a
    ld a, [$dc1b]
    ld d, a
    ld a, c
    cpl
    ld l, a
    ld a, b
    cpl
    ld h, a
    inc hl
    add hl, de
    ld a, l
    ld [$dc1a], a
    ld a, h
    ld [$dc1b], a
    push bc
    ld hl, $dc18
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $dc24
    call Call_045_5d53
    ld hl, $dc18
    ld [hl], e
    inc hl
    ld [hl], d
    pop bc
    ld a, [$dc01]
    ldh [$8c], a
    ld [$4000], a
    ld hl, $dc07
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $dc24
    call Call_045_5d6a
    ld hl, $dc07
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $dc1a
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, b
    or c
    jr nz, jr_045_564d

jr_045_56a9:
    ld a, [$dc01]
    ld [$dc06], a
    xor a
    ret


Jump_045_56b1:
    ld a, $01
    ld b, $83
    ret


jr_045_56b6:
    ld a, $03
    cpl
    ld h, a
    ld a, $db
    cpl
    ld l, a
    add hl, bc
    ld de, $dc1a
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    ld bc, $03db
    jr jr_045_5659

    ld a, [$dc23]
    and a
    jp z, Jump_045_425c

    cp $02
    jr z, jr_045_56fa

    cp $03
    jr z, jr_045_56fd

    cp $04
    jr z, jr_045_56fd

    cp $05
    jr z, jr_045_5716

    cp $ff
    jr z, jr_045_572b

    cp $01
    jp nz, Jump_045_425c

    call Call_045_5732
    call Call_045_575c
    ld a, h
    ld [$dc12], a
    ld a, l
    ld [$dc11], a

jr_045_56fa:
    call Call_045_57d0

jr_045_56fd:
    call Call_045_581e
    and a
    jr nz, jr_045_572b

    ld a, [$dc23]
    cp $05
    jr z, jr_045_5716

    ld a, [$dc12]
    ld h, a
    ld a, [$dc11]
    ld l, a
    xor a
    jp Jump_045_425c


jr_045_5716:
    ld hl, $dc0a
    ld a, [hl+]
    cpl
    ld e, a
    ld a, [hl+]
    cpl
    ld d, a
    inc de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    xor a
    ld [$dc23], a
    jp Jump_045_425c


jr_045_572b:
    ld a, $01
    ld b, $83
    jp Jump_045_425c


Call_045_5732:
    ld hl, $dc02
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    dec de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


Call_045_575c:
    ld hl, $dc05
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $10
    ld b, $00
    ld c, b
    ld d, b
    ld a, $03

jr_045_576a:
    rl l
    rl h
    rl d
    cp d
    jr c, jr_045_577c

    rl c
    rl b
    dec e
    jr nz, jr_045_576a

    jr jr_045_578a

jr_045_577c:
    ld a, d
    sub $03
    ld d, a
    ld a, $03
    scf
    rl c
    rl b
    dec e
    jr nz, jr_045_576a

jr_045_578a:
    ld a, d
    and a
    jr z, jr_045_578f

    inc bc

jr_045_578f:
    sla c
    rl b
    sla c
    rl b
    ld h, b
    ld l, c
    push hl
    ld e, $10
    ld b, $00
    ld c, b
    ld d, b
    ld a, $40

jr_045_57a2:
    rl l
    rl h
    rl d
    cp d
    jr c, jr_045_57b4

    rl c
    rl b
    dec e
    jr nz, jr_045_57a2

    jr jr_045_57c3

jr_045_57b4:
    ld a, d
    sub $40
    ld d, a
    ld a, $40
    scf
    rl c
    rl b
    dec e
    jr nz, jr_045_57a2

    inc bc

jr_045_57c3:
    and a
    sla c
    rl b
    pop hl
    add hl, bc
    ld a, $02
    ld [$dc23], a
    ret


Call_045_57d0:
    ld hl, $dc05
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$dc0e]
    ld c, a
    ld a, [$dc0f]
    ld b, a
    cp h
    jr c, jr_045_57eb

    jr nz, jr_045_57e9

    ld a, c
    cp l
    jr c, jr_045_57eb

    jr z, jr_045_57eb

jr_045_57e9:
    ld b, h
    ld c, l

jr_045_57eb:
    push bc
    ld a, b
    cpl
    ld b, a
    ld a, c
    cpl
    ld c, a
    inc bc
    add hl, bc
    ld a, l
    ld [$dc05], a
    ld a, h
    ld [$dc06], a
    ld a, h
    or l
    jr nz, jr_045_580f

    pop bc
    ld a, c
    ld [$dc0e], a
    ld a, b
    ld [$dc0f], a
    ld a, $04
    ld [$dc23], a
    ret


jr_045_580f:
    pop bc
    ld a, c
    ld [$dc0e], a
    ld a, b
    ld [$dc0f], a
    ld a, $03
    ld [$dc23], a
    ret


Call_045_581e:
    ld a, [$dc23]
    and a
    ret z

    ld a, [$dc0e]
    ld c, a
    ld a, [$dc0f]
    ld b, a
    ld hl, $dc02
    ld a, [hl+]
    ld [$dc00], a
    ldh [$8c], a
    ld [$4000], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $dc24
    push bc
    call Call_045_5d53
    pop bc
    ld hl, $dc02
    ld a, [$dc00]
    ld [hl+], a
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $dc24
    ld de, $ddc7
    call Call_045_58c2
    ld hl, $ddc7
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    push hl
    ld a, [$dc0a]
    ld l, a
    ld a, [$dc0b]
    ld h, a
    cp b
    jr c, jr_045_58bb

    jr nz, jr_045_586e

    ld a, l
    cp c
    jr c, jr_045_58bb

jr_045_586e:
    push bc
    ld a, b
    cpl
    ld b, a
    ld a, c
    cpl
    ld c, a
    inc bc
    add hl, bc
    ld a, l
    ld [$dc0a], a
    ld a, h
    ld [$dc0b], a
    pop bc
    pop hl
    ld hl, $dc07
    ld a, [hl+]
    ld [$dc01], a
    ldh [$8c], a
    ld [$4000], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $ddc9
    call Call_045_5d6a
    ld hl, $dc07
    ld a, [$dc01]
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld a, [$dc23]
    cp $03
    jr z, jr_045_58b4

    cp $04
    jr z, jr_045_58ad

    jr jr_045_58bc

jr_045_58ad:
    ld a, $05
    ld [$dc23], a
    jr jr_045_58b9

jr_045_58b4:
    ld a, $02
    ld [$dc23], a

jr_045_58b9:
    xor a
    ret


jr_045_58bb:
    pop hl

jr_045_58bc:
    ld a, $ff
    ld [$dc23], a
    ret


Call_045_58c2:
    ld a, e
    ld [$dc20], a
    ld a, d
    ld [$dc21], a
    xor a
    ld [$dc22], a
    xor a
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld a, c
    ld [$dc19], a
    ld a, b
    ld [$dc1a], a
    ld c, e
    ld b, d
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    xor a
    ld [$dc1f], a

Jump_045_58e5:
    ld b, $03
    push hl
    ld hl, $dc1b

jr_045_58eb:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_045_58eb

    ld a, [$dc19]
    ld c, a
    ld a, [$dc1a]
    ld b, a
    xor a
    or b
    jr nz, jr_045_5914

    ld a, $02
    cp c
    jr c, jr_045_5914

    push hl
    dec hl
    ld a, c
    ld [$dc1f], a

jr_045_5908:
    xor a
    ld [hl-], a
    inc c
    ld a, $03
    cp c
    jr nz, jr_045_5908

    pop hl
    ld bc, $0003

jr_045_5914:
    dec bc
    dec bc
    dec bc
    ld a, c
    ld [$dc19], a
    ld a, b
    ld [$dc1a], a
    push de
    push hl
    ld hl, $dc20
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    inc de
    inc de
    inc de
    ld [hl], d
    dec hl
    ld [hl], e
    pop hl
    dec hl
    ld c, [hl]
    dec hl
    ld b, [hl]
    dec hl
    ld a, [hl]
    ld d, a
    srl a
    srl a
    ld [hl+], a
    ld a, $03
    and d
    ld d, a
    ld a, $f0
    and b
    or d
    swap a
    ld [hl+], a
    ld a, $0f
    and b
    ld d, a
    ld a, c
    and $c0
    or d
    rlca
    rlca
    ld [hl+], a
    ld a, $3f
    and c
    ld [hl-], a
    dec hl
    dec hl
    pop de
    ld b, h
    ld c, l
    pop hl
    ld a, [bc]
    inc bc
    call Call_045_59dc
    ld [hl+], a
    ld a, [bc]
    inc bc
    call Call_045_59dc
    ld [hl+], a
    ld a, [bc]
    inc bc
    call Call_045_59dc
    ld [hl+], a
    ld a, [bc]
    inc bc
    call Call_045_59dc
    ld [hl+], a
    ld a, [$dc22]
    inc a
    cp $10
    jr nz, jr_045_59b1

    push af
    push bc
    ld a, [$dc19]
    ld b, a
    ld a, [$dc1a]
    or b
    jr nz, jr_045_5998

    ld a, [$dc05]
    ld b, a
    ld a, [$dc06]
    or b
    jr nz, jr_045_5998

    pop bc
    pop af
    jr jr_045_59c4

jr_045_5998:
    pop bc
    pop af
    ld a, $0d
    ld [hl+], a
    ld a, $0a
    ld [hl+], a
    push hl
    ld hl, $dc20
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    inc bc
    inc bc
    ld a, b
    ld [hl-], a
    ld [hl], c
    pop hl
    xor a

jr_045_59b1:
    ld [$dc22], a
    ld a, [$dc19]
    cp $00
    jp nz, Jump_045_58e5

    ld a, [$dc1a]
    cp $00
    jp nz, Jump_045_58e5

jr_045_59c4:
    ld a, [$dc1f]
    cp $00
    jr z, jr_045_59d8

    push hl
    dec hl
    ld b, a

jr_045_59ce:
    ld a, $3d
    ld [hl-], a
    inc b
    ld a, $03
    cp b
    jr nz, jr_045_59ce

    pop hl

jr_045_59d8:
    ld a, $00
    ld [hl], a
    ret


Call_045_59dc:
    cp $1a
    jr c, jr_045_59ef

    cp $34
    jr c, jr_045_59f2

    cp $3e
    jr c, jr_045_59f5

    cp $3e
    jr z, jr_045_59f8

    ld a, $2f
    ret


jr_045_59ef:
    add $41
    ret


jr_045_59f2:
    add $47
    ret


jr_045_59f5:
    sub $04
    ret


jr_045_59f8:
    ld a, $2b
    ret


    ld a, [$dc23]
    and a
    jp z, Jump_045_425c

    cp $02
    jr z, jr_045_5a29

    cp $03
    jr z, jr_045_5a2c

    cp $04
    jr z, jr_045_5a2c

    cp $05
    jr z, jr_045_5a45

    cp $ff
    jr z, jr_045_5a5a

    cp $01
    jp nz, Jump_045_425c

    call Call_045_5732
    call Call_045_5a5f
    ld a, h
    ld [$dc11], a
    ld a, l
    ld [$dc12], a

jr_045_5a29:
    call Call_045_5ab0

jr_045_5a2c:
    call Call_045_5b00
    and a
    jr nz, jr_045_5a5a

    ld a, [$dc23]
    cp $05
    jr z, jr_045_5a45

    ld a, [$dc12]
    ld h, a
    ld a, [$dc11]
    ld l, a
    xor a
    jp Jump_045_425c


jr_045_5a45:
    ld hl, $dc0a
    ld a, [hl+]
    cpl
    ld e, a
    ld a, [hl+]
    cpl
    ld d, a
    inc de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    xor a
    ld [$dc23], a
    jp Jump_045_425c


jr_045_5a5a:
    ld a, $01
    jp Jump_045_425c


Call_045_5a5f:
    ld hl, $dc05
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld e, $10
    ld b, $00
    ld c, b
    ld d, b
    ld a, $42

jr_045_5a6e:
    rl l
    rl h
    rl d
    cp d
    jr c, jr_045_5a80

    rl c
    rl b
    dec e
    jr nz, jr_045_5a6e

    jr jr_045_5a8e

jr_045_5a80:
    ld a, d
    sub $42
    ld d, a
    ld a, $42
    scf
    rl c
    rl b
    dec e
    jr nz, jr_045_5a6e

jr_045_5a8e:
    sla c
    rl b
    pop hl
    ld a, b
    cpl
    ld b, a
    ld a, c
    cpl
    ld c, a
    inc bc
    add hl, bc
    srl h
    rr l
    srl h
    rr l
    ld b, h
    ld c, l
    sla c
    rl b
    add hl, bc
    ld a, $02
    ld [$dc23], a
    ret


Call_045_5ab0:
    ld hl, $dc05
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$dc0e]
    ld c, a
    ld a, [$dc0f]
    ld b, a
    cp h
    jr c, jr_045_5acb

    jr nz, jr_045_5ac9

    ld a, c
    cp l
    jr c, jr_045_5acb

    jr z, jr_045_5acb

jr_045_5ac9:
    ld b, h
    ld c, l

jr_045_5acb:
    push bc
    ld a, b
    cpl
    ld b, a
    ld a, c
    cpl
    ld c, a
    inc bc
    add hl, bc
    ld a, l
    ld [$dc05], a
    ld a, h
    ld [$dc06], a
    ld a, h
    or l
    jr nz, jr_045_5af0

    pop bc
    ld a, c
    ld [$dc0e], a
    ld a, b
    ld [$dc0f], a
    ld a, $04
    ld [$dc23], a
    xor a
    ret


jr_045_5af0:
    pop bc
    ld a, c
    ld [$dc0e], a
    ld a, b
    ld [$dc0f], a
    ld a, $03
    ld [$dc23], a
    xor a
    ret


Call_045_5b00:
    ld a, [$dc23]
    and a
    ret z

    ld a, [$dc0e]
    ld c, a
    ld a, [$dc0f]
    ld b, a
    ld hl, $dc02
    ld a, [hl+]
    ld [$dc00], a
    ldh [$8c], a
    ld [$4000], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $ddc7
    push bc
    call Call_045_5bc8
    pop hl
    and a
    jr z, jr_045_5b43

    cp $02
    jr z, jr_045_5b3b

    ld a, [$dc23]
    cp $04
    jr z, jr_045_5b43

    inc hl
    inc hl
    jr jr_045_5b43

jr_045_5b36:
    pop hl
    ld b, $83
    jr jr_045_5b3d

jr_045_5b3b:
    ld b, $81

jr_045_5b3d:
    ld a, $ff
    ld [$dc23], a
    ret


jr_045_5b43:
    ld a, [$dc10]
    add a
    cpl
    ld c, a
    ld b, $ff
    inc bc
    add hl, bc
    ld b, h
    ld c, l
    ld hl, $dc02
    ld a, [$dc00]
    ld [hl+], a
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $ddc7
    ld de, $dc24
    call Call_045_5c49
    ld hl, $dc24
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    push hl
    ld a, [$dc0a]
    ld l, a
    ld a, [$dc0b]
    ld h, a
    cp b
    jr c, jr_045_5b36

    jr nz, jr_045_5b7b

    ld a, l
    cp c
    jr c, jr_045_5b36

jr_045_5b7b:
    push bc
    ld a, b
    cpl
    ld b, a
    ld a, c
    cpl
    ld c, a
    inc bc
    add hl, bc
    ld a, l
    ld [$dc0a], a
    ld a, h
    ld [$dc0b], a
    pop bc
    pop hl
    ld hl, $dc07
    ld a, [hl+]
    ld [$dc01], a
    ldh [$8c], a
    ld [$4000], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $dc26
    call Call_045_5d6a
    ld hl, $dc07
    ld a, [$dc01]
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld a, [$dc23]
    cp $03
    jr z, jr_045_5bc1

    cp $04
    jr z, jr_045_5bba

    jr jr_045_5b3b

jr_045_5bba:
    ld a, $05
    ld [$dc23], a
    jr jr_045_5bc6

jr_045_5bc1:
    ld a, $02
    ld [$dc23], a

jr_045_5bc6:
    xor a
    ret


Call_045_5bc8:
    xor a
    ld [$dc10], a

jr_045_5bcc:
    ld a, [de]
    ld [hl+], a
    inc e
    call z, Call_045_5c3d
    dec bc
    ld a, b
    or c
    jr z, jr_045_5c46

    ld a, [de]
    ld [hl+], a
    inc e
    call z, Call_045_5c3d
    dec bc
    ld a, b
    or c
    jr z, jr_045_5c1b

    ld a, [de]
    ld [hl+], a
    inc e
    call z, Call_045_5c3d
    dec bc
    ld a, b
    or c
    jr z, jr_045_5c46

    ld a, [de]
    ld [hl+], a
    inc e
    call z, Call_045_5c3d
    dec bc
    ld a, b
    or c
    jr z, jr_045_5c3a

    ld a, [de]
    cp $0d
    jr nz, jr_045_5bcc

    inc e
    call z, Call_045_5c3d
    ld a, [de]
    cp $0a
    jr nz, jr_045_5c46

    inc e
    call z, Call_045_5c3d
    dec bc
    ld a, b
    or c
    jr z, jr_045_5c46

    ld a, [$dc10]
    inc a
    ld [$dc10], a
    dec bc
    ld a, b
    or c
    jr nz, jr_045_5bcc

jr_045_5c1b:
    ld a, [$dc23]
    cp $04
    jr z, jr_045_5c33

    ld a, [de]
    ld [hl+], a
    inc e
    call z, Call_045_5c3d
    ld a, [de]
    ld [hl+], a
    inc e
    call z, Call_045_5c3d
    xor a
    ld [hl], a
    ld a, $01
    ret


jr_045_5c33:
    dec hl
    dec hl
    xor a
    ld [hl], a
    ld a, $01
    ret


jr_045_5c3a:
    xor a
    ld [hl], a
    ret


Call_045_5c3d:
    push bc
    ld bc, $dc00
    call Call_045_5d80
    pop bc
    ret


jr_045_5c46:
    ld a, $02
    ret


Call_045_5c49:
    ld a, e
    ld [$dc1f], a
    ld a, d
    ld [$dc20], a
    xor a
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld a, c
    ld [$dc19], a
    ld a, b
    ld [$dc1a], a
    ld c, e
    ld b, d
    ld e, l
    ld d, h
    ld l, c
    ld h, b

Jump_045_5c64:
    ld a, [$dc1a]
    or a
    jr nz, jr_045_5c71

    ld a, [$dc19]
    cp $04
    jr c, jr_045_5c99

jr_045_5c71:
    ld b, $04
    push hl
    ld hl, $dc1b

jr_045_5c77:
    ld a, [de]
    inc de
    call Call_045_5cfd
    ld [hl+], a
    dec b
    jr nz, jr_045_5c77

    ld a, [$dc19]
    ld c, a
    ld a, [$dc1a]
    ld b, a
    dec bc
    dec bc
    dec bc
    dec bc

jr_045_5c8c:
    ld a, [de]
    cp $0d
    jr z, jr_045_5c95

    cp $0a
    jr nz, jr_045_5c9f

jr_045_5c95:
    inc de
    dec bc
    jr jr_045_5c8c

jr_045_5c99:
    ld a, $ff
    ld [$dc23], a
    ret


jr_045_5c9f:
    ld a, c
    ld [$dc19], a
    ld a, b
    ld [$dc1a], a
    push de
    push hl
    ld hl, $dc1f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    inc de
    inc de
    ld [hl], d
    dec hl
    ld [hl], e
    pop hl
    dec hl
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
    ld b, h
    ld c, l
    pop hl
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    ld a, [$dc19]
    cp $00
    jp nz, Jump_045_5c64

    ld a, [$dc1a]
    cp $00
    jp nz, Jump_045_5c64

    ret


Call_045_5cfd:
    cp $2b
    jr c, jr_045_5d27

    jr z, jr_045_5d2f

    cp $2f
    jr c, jr_045_5d27

    jr z, jr_045_5d32

    cp $30
    jr c, jr_045_5d27

    cp $3a
    jr c, jr_045_5d35

    cp $3d
    jr c, jr_045_5d27

    jr z, jr_045_5d38

    cp $41
    jr c, jr_045_5d27

    cp $5b
    jr c, jr_045_5d4d

    cp $61
    jr c, jr_045_5d27

    cp $7b
    jr c, jr_045_5d50

jr_045_5d27:
    pop hl
    pop hl
    ld a, $ff
    ld [$dc23], a
    ret


jr_045_5d2f:
    ld a, $3e
    ret


jr_045_5d32:
    ld a, $3f
    ret


jr_045_5d35:
    add $04
    ret


jr_045_5d38:
    push de
    push hl
    ld a, [$dc1f]
    ld l, a
    ld a, [$dc20]
    ld h, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec de
    ld [hl], d
    dec hl
    ld [hl], e
    pop hl
    pop de
    xor a
    ret


jr_045_5d4d:
    sub $41
    ret


jr_045_5d50:
    sub $47
    ret


Call_045_5d53:
jr_045_5d53:
    ld a, [de]
    ld [hl+], a
    inc e
    call z, Call_045_5d61
    dec bc
    ld a, b
    or c
    jr nz, jr_045_5d53

    xor a
    ld [hl], a
    ret


Call_045_5d61:
    push bc
    ld bc, $dc00
    call Call_045_5d80
    pop bc
    ret


Call_045_5d6a:
jr_045_5d6a:
    ld a, [hl+]
    ld [de], a
    inc e
    call z, Call_045_5d77
    dec bc
    ld a, b
    or c
    jr nz, jr_045_5d6a

    xor a
    ret


Call_045_5d77:
    push bc
    ld bc, $dc01
    call Call_045_5d80
    pop bc
    ret


Call_045_5d80:
    ld e, a
    ld a, d
    cp $bf
    jr z, jr_045_5d8b

    inc d
    ld a, e
    ld e, $00
    ret


jr_045_5d8b:
    ld a, [bc]
    inc a
    ld [bc], a
    ldh [$8c], a
    ld [$4000], a
    ld a, e
    ld d, $a0
    ld e, $00
    ret


    ld de, $601a
    ld hl, $8600
    ld bc, $4514
    call $0f82
    xor a
    ld [$c305], a
    ld [$c306], a
    ld [$c309], a
    ld [$c30a], a
    ld [$c30b], a
    ld [$c30c], a
    ld a, $10
    ld [$c307], a
    ld a, $18
    ld [$c308], a
    ret


    xor a
    ld [$c305], a
    ld a, $a0
    ld hl, $c47c
    ld bc, $0020
    call $3041
    ret


    ld a, [$c305]
    and a
    ret z

    ld a, $a0
    ld hl, $c47c
    ld bc, $0020
    call $3041
    call Call_045_5e22
    ld a, [$c309]
    sla a
    ld c, a
    ld b, $00
    ld hl, $5e86
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    push de
    pop hl
    ld de, $c47c
    ld a, [$c307]
    ld c, a
    ld a, [$c308]
    ld b, a
    ld a, [hl+]

jr_045_5e04:
    push af
    ld a, [hl+]
    add b
    ld [de], a
    inc de
    ld a, [hl+]
    add c
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    pop af
    dec a
    jr nz, jr_045_5e04

    ret


    ld a, c
    ld [$c30a], a
    xor a
    ld [$c30b], a
    jr jr_045_5e2b

Call_045_5e22:
    ld hl, $c30c
    dec [hl]
    ret nz

    ld hl, $c30b
    inc [hl]

jr_045_5e2b:
    ld a, [$c30a]
    sla a
    ld c, a
    ld b, $00
    ld hl, $5e59
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    pop hl
    ld a, [$c30b]
    sla a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    cp $ff
    jr nz, jr_045_5e51

    xor a
    ld [$c30b], a
    jr jr_045_5e2b

jr_045_5e51:
    ld [$c309], a
    ld a, [hl]
    ld [$c30c], a
    ret


    ld h, c
    ld e, [hl]
    ld l, h
    ld e, [hl]
    db $76
    ld e, [hl]
    ld a, c
    ld e, [hl]
    inc b
    ld [$0805], sp
    ld b, $08
    rlca
    ld [$0808], sp
    rst $38
    ld bc, $0208
    ld [$0803], sp
    add hl, bc
    ld [$080a], sp
    nop
    ld [$0bff], sp
    ld [$080c], sp
    dec c
    ld [$080e], sp
    rrca
    ld [$0800], sp
    rst $38
    and [hl]
    ld e, [hl]
    or a
    ld e, [hl]
    call z, $e15e
    ld e, [hl]
    or $5e
    inc de
    ld e, a
    jr nc, @+$61

    ld c, l
    ld e, a
    ld l, d
    ld e, a
    add a
    ld e, a
    sbc h
    ld e, a
    or c
    ld e, a
    add $5f
    db $db
    ld e, a
    ldh a, [$5f]
    dec b
    ld h, b
    inc b
    ld [$6000], sp
    ld bc, $0808
    ld h, c
    ld bc, $0010
    ld h, d
    ld bc, $0810
    ld h, e
    ld bc, $0005
    ld [$0064], sp
    ld [$6000], sp
    ld bc, $0808
    ld h, c
    ld bc, $0010
    ld h, d
    ld bc, $0810
    ld h, e
    ld bc, $0005
    ld [$0065], sp
    ld [$6000], sp
    ld bc, $0808
    ld h, c
    ld bc, $0010
    ld h, d
    ld bc, $0810
    ld h, e
    ld bc, $0005
    ld [$0066], sp
    ld [$6000], sp
    ld bc, $0808
    ld h, c
    ld bc, $0010
    ld h, d
    ld bc, $0810
    ld h, e
    ld bc, $0007
    nop
    ld h, a
    ld bc, $0008
    ld l, b
    ld bc, $0010
    ld l, l
    nop
    db $10
    ld [$0069], sp
    db $10
    db $10
    ld l, d
    nop
    jr jr_045_5f15

    ld l, e
    nop
    jr jr_045_5f21

    ld l, h
    nop
    rlca
    nop

jr_045_5f15:
    nop
    ld h, a
    ld bc, $0008
    ld l, b
    ld bc, $0010
    ld l, [hl]
    nop
    db $10

jr_045_5f21:
    ld [$0069], sp
    db $10
    db $10
    ld l, d
    nop
    jr jr_045_5f32

    ld l, e
    nop
    jr jr_045_5f3e

    ld l, h
    nop
    rlca
    nop

jr_045_5f32:
    nop
    ld h, a
    ld bc, $0008
    ld l, b
    ld bc, $0010
    ld l, a
    nop
    db $10

jr_045_5f3e:
    ld [$0069], sp
    db $10
    db $10
    ld l, d
    nop
    jr jr_045_5f4f

    ld l, e
    nop
    jr jr_045_5f5b

    ld l, h
    nop
    rlca
    nop

jr_045_5f4f:
    nop
    ld h, a
    ld bc, $0008
    ld l, b
    ld bc, $0010
    ld [hl], b
    nop
    db $10

jr_045_5f5b:
    ld [$0069], sp
    db $10
    db $10
    ld l, d
    nop
    jr jr_045_5f6c

    ld l, e
    nop
    jr jr_045_5f78

    ld l, h
    nop
    rlca
    nop

jr_045_5f6c:
    nop
    ld h, a
    ld bc, $0008
    ld l, b
    ld bc, $0010
    ld [hl], c
    nop
    db $10

jr_045_5f78:
    ld [$0069], sp
    db $10
    db $10
    ld l, d
    nop
    jr jr_045_5f89

    ld l, e
    nop
    jr @+$12

    ld l, h
    nop
    dec b
    nop

jr_045_5f89:
    ld [$0072], sp
    ld [$6000], sp
    ld bc, $0808
    ld h, c
    ld bc, $0010
    ld h, d
    ld bc, $0810
    ld h, e
    ld bc, $0005
    ld [$0073], sp
    ld [$6000], sp
    ld bc, $0808
    ld h, c
    ld bc, $0010
    ld h, d
    ld bc, $0810
    ld h, e
    ld bc, $0105
    ld [$6064], sp
    ld [$6000], sp
    ld bc, $0808
    ld h, c
    ld bc, $0010
    ld h, d
    ld bc, $0810
    ld h, e
    ld bc, $0105
    ld [$6065], sp
    ld [$6000], sp
    ld bc, $0808
    ld h, c
    ld bc, $0010
    ld h, d
    ld bc, $0810
    ld h, e
    ld bc, $0105
    ld [$6066], sp
    ld [$6000], sp
    ld bc, $0808
    ld h, c
    ld bc, $0010
    ld h, d
    ld bc, $0810
    ld h, e
    ld bc, $0105
    ld [$6072], sp
    ld [$6000], sp
    ld bc, $0808
    ld h, c
    ld bc, $0010
    ld h, d
    ld bc, $0810
    ld h, e
    ld bc, $0105
    ld [$6073], sp
    ld [$6000], sp
    ld bc, $0808
    ld h, c
    ld bc, $0010
    ld h, d
    ld bc, $0810
    ld h, e
    ld bc, $0101
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a

jr_045_6021:
    inc bc
    inc b
    rlca
    dec b
    rlca
    dec b
    rlca
    dec b
    rlca
    nop
    nop
    add b
    add b
    add b
    add b
    ldh a, [$f0]
    ld [$e8f8], sp
    ld hl, sp-$18
    jr jr_045_6021

    jr jr_045_603f

    rlca
    dec b
    rlca
    inc b

jr_045_603f:
    rlca
    dec b
    rlca
    inc b
    rlca
    dec b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ld [$a8f8], sp
    ld a, b
    ld [$a8f8], sp
    ld a, b
    ld [$a8f8], sp
    ld a, b
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
    ld h, b
    nop
    jr nz, jr_045_606a

jr_045_606a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    ld [$6800], sp
    nop
    jr z, jr_045_607a

jr_045_607a:
    nop
    nop
    nop
    nop
    jr c, jr_045_6080

jr_045_6080:
    inc b
    nop
    ld [hl], d
    nop
    ld a, [bc]
    nop
    ld l, d
    nop
    jr z, jr_045_608a

jr_045_608a:
    jr nz, jr_045_60ac

    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld e, [hl]
    ld a, [hl]
    add c
    rst $38
    cp l
    rst $38
    cp l
    db $e3
    cp l
    db $e3
    add c
    rst $38
    or l
    rst $28
    add c
    rst $38
    or l
    rst $28
    add c
    rst $38
    or l
    rst $28
    add c
    rst $38
    ld a, [hl]
    ld a, [hl]
    nop
    nop

jr_045_60ac:
    ld a, a
    ld a, a
    add b
    rst $38
    cp a
    rst $38
    cp a
    ldh a, [$bf]
    ldh a, [$bf]
    ldh a, [$bf]
    ldh a, [rP1]
    nop
    ldh [$e0], a
    db $10
    ldh a, [$d0]
    ldh a, [$d0]
    ldh a, [$d0]
    ldh a, [$d0]
    ldh a, [$d0]
    ldh a, [$bf]
    rst $38
    add b
    rst $38
    sub b
    rst $38
    cp b
    rst $38
    sub c
    rst $38
    add b
    rst $38
    ld b, b
    ld a, a
    ccf
    ccf
    ret nc

    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$50]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    jr nz, jr_045_610c

    jr nz, jr_045_610e

    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    jr nz, jr_045_6116

    ccf
    ccf
    nop
    nop
    jr nz, jr_045_611c

    jr nz, jr_045_611e

    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    jr nz, jr_045_6126

    ccf
    inc a
    nop
    nop
    jr nz, jr_045_612c

jr_045_610c:
    jr nz, jr_045_612e

jr_045_610e:
    ld d, b
    ld [hl], b
    adc b
    ld hl, sp-$78
    ld hl, sp+$70
    ld d, b

jr_045_6116:
    ccf
    rrca
    nop
    nop
    jr nz, jr_045_613c

jr_045_611c:
    ld d, b
    ld [hl], b

jr_045_611e:
    xor b
    ret c

    xor b
    ret c

    ld d, b
    ld [hl], b
    jr nz, jr_045_6146

jr_045_6126:
    ccf
    ccf
    nop
    nop
    jr nz, jr_045_612c

jr_045_612c:
    jr nz, jr_045_612e

jr_045_612e:
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    jr nz, jr_045_6156

    ccf
    ccf
    nop
    nop
    nop
    nop

jr_045_613c:
    nop
    nop
    jr c, jr_045_6140

jr_045_6140:
    inc b
    nop
    ld [hl], d
    nop
    ld a, [bc]
    nop

jr_045_6146:
    ld a, [bc]
    nop
    ld [$0000], sp
    nop
    nop
    nop
    jr c, jr_045_6150

jr_045_6150:
    inc b
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

jr_045_6156:
    ld [bc], a
    nop
    nop
    nop
    xor a
    ld [$c30d], a
    ld [$c319], a
    ld [$c310], a
    ld [$c311], a
    ld [$c312], a
    ld [$c313], a
    ld [$c314], a
    ld [$c315], a
    ld [$c318], a
    ld [$c3f6], a
    ld [$c3f8], a
    ld [$c3f2], a
    ld [$c3f4], a
    ld a, $24
    ld [$c3f5], a
    ld a, $07
    ld [$c3f7], a
    ld a, $b0
    ld [$c30e], a
    ld [$c3f1], a
    ld a, $48
    ld [$c30f], a
    ld [$c3f3], a
    ret


    ld a, [$c30d]
    and a
    ret z

    ld a, [$c319]
    cp $02
    jr c, jr_045_61b4

    ld a, $a0
    ld hl, $c400
    ld bc, $0064
    call $3041

jr_045_61b4:
    call Call_045_61b8
    ret


Call_045_61b8:
    ld a, [$c319]
    ld e, a
    ld d, $00
    ld hl, $61c7
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    push de
    ld h, c
    sub h
    ld h, d
    bit 4, d
    ld a, [c]
    ld h, d
    ret nz

    ld h, e
    ld l, [hl]
    ld h, e
    ld b, c
    ld h, h
    ldh a, [rSVBK]
    push af
    ld a, $06
    ldh [rSVBK], a
    ld hl, $7356
    ld de, $d000
    ld bc, $0300
    call $3026
    di

jr_045_61e9:
    ldh a, [rLY]
    cp $91
    jr nz, jr_045_61e9

    ld a, $d0
    ldh [rHDMA1], a
    ld a, $00
    ldh [rHDMA2], a
    ld a, $1c
    ldh [rHDMA3], a
    xor a
    ldh [rHDMA4], a
    ld a, $08
    ldh [rHDMA5], a
    ld a, $d0
    ldh [rHDMA1], a
    ld a, $80
    ldh [rHDMA2], a
    ld a, $1c
    ldh [rHDMA3], a
    ld a, $80
    ldh [rHDMA4], a
    ld a, $08
    ldh [rHDMA5], a
    ld a, $d1
    ldh [rHDMA1], a
    ld a, $00
    ldh [rHDMA2], a
    ld a, $1d
    ldh [rHDMA3], a
    xor a
    ldh [rHDMA4], a
    ld a, $08
    ldh [rHDMA5], a
    ld a, $01
    ldh [rVBK], a
    ld a, $d1
    ldh [rHDMA1], a
    ld a, $80
    ldh [rHDMA2], a
    ld a, $1c
    ldh [rHDMA3], a
    xor a
    ldh [rHDMA4], a
    ld a, $08
    ldh [rHDMA5], a
    ld a, $d2
    ldh [rHDMA1], a
    ld a, $00
    ldh [rHDMA2], a
    ld a, $1c
    ldh [rHDMA3], a
    ld a, $80
    ldh [rHDMA4], a
    ld a, $08
    ldh [rHDMA5], a
    ld a, $d2
    ldh [rHDMA1], a
    ld a, $80
    ldh [rHDMA2], a
    ld a, $1d
    ldh [rHDMA3], a
    xor a
    ldh [rHDMA4], a
    ld a, $08
    ldh [rHDMA5], a
    xor a
    ldh [rVBK], a
    ei
    pop af
    ldh [rSVBK], a
    ld a, $41
    ld hl, $4061
    rst $08
    ld a, $08
    ld [$c2a7], a
    ld de, $005f
    ld a, e
    ld [$c2a9], a
    ld a, d
    ld [$c2aa], a
    ld a, [$c319]
    inc a
    ld [$c319], a
    ret


    ld b, b
    ld b, $00
    ld de, $0013
    nop
    nop
    ld a, $5c
    ld hl, $4d02
    rst $08
    ld a, [$c319]
    inc a
    ld [$c319], a
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d030
    ld de, $c320
    ld bc, $0010
    call $3026
    ld hl, $734e
    ld de, $d038
    ld bc, $0008
    call $3026
    call $32f9
    pop af
    ldh [rSVBK], a
    ld a, $30
    ldh [$d2], a
    ret


    ld a, $5c
    ld hl, $4cc6
    rst $08
    ld a, [$c319]
    inc a
    ld [$c319], a
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $730e
    ld de, $d050
    ld bc, $0030
    call $3026
    call $32f9
    pop af
    ldh [rSVBK], a
    ret


    call Call_045_659d
    call Call_045_6758
    call Call_045_67a6
    ld a, [$c310]
    cp $fd
    ret z

    sla a
    ld c, a
    ld b, $00
    ld hl, $68c5
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    push de
    pop hl
    ld a, [$c30e]
    ld c, a
    ld a, [$c30f]
    ld b, a
    ld a, [$c318]
    ld e, a
    ld a, [hl+]
    sub e
    ld de, $c424

jr_045_6321:
    push af
    ld a, [hl+]
    add b
    ld [de], a
    inc de
    ld a, [hl+]
    add c
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    pop af
    dec a
    jr nz, jr_045_6321

    call Call_045_6468
    ld a, [$c3f5]
    sla a
    ld c, a
    ld b, $00
    ld hl, $68c5
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    push de
    pop hl
    ld a, [$c3f1]
    ld c, a
    ld a, [$c3f3]
    ld b, a
    ld a, [$c3f8]
    ld e, a
    ld a, [hl+]
    sub e
    ld de, $c400

jr_045_635a:
    push af
    ld a, [hl+]
    add b
    ld [de], a
    inc de
    ld a, [hl+]
    add c
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    pop af
    dec a
    jr nz, jr_045_635a

    ret


    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d080
    ld de, $d000
    ld bc, $0040
    call $3026
    pop af
    ldh [rSVBK], a
    call $32f9
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld a, $a0
    ld hl, $c400
    ld bc, $0040
    call $3041
    ld a, $90
    ldh [$d2], a
    call $1ad2
    pop af
    ldh [rSVBK], a
    ld a, $41
    ld hl, $4061
    rst $08
    ld a, $08
    ld [$c2a7], a
    ld a, [$c2c0]
    ld [$c2a9], a
    xor a
    ld [$c2aa], a
    xor a
    ld [$c319], a
    ld [$c30d], a
    ret


    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld a, $a0
    ld hl, $c400
    ld bc, $0040
    call $3041
    call $045a
    ld a, $05
    ld hl, $4146
    rst $08
    ld b, $09
    call $3340
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $c320
    ld de, $d030
    ld bc, $0010
    call $3026
    pop af
    ldh [rSVBK], a
    call $32f9
    call $045a
    ld a, $90
    ldh [$d2], a
    call $1ad2
    ld a, $05
    ld hl, $4157
    rst $08
    pop af
    ldh [rSVBK], a
    ld a, $41
    ld hl, $4061
    rst $08
    ld a, [$c2dc]
    cp $04
    jr z, jr_045_642a

    ld a, $08
    ld [$c2a7], a
    ld a, [$c2c0]
    ld [$c2a9], a
    xor a
    ld [$c2aa], a
    jr jr_045_6439

jr_045_642a:
    ld a, $08
    ld [$c2a7], a
    ld a, $00
    ld [$c2a9], a
    ld a, $00
    ld [$c2aa], a

jr_045_6439:
    xor a
    ld [$c319], a
    ld [$c30d], a
    ret


    ld a, $5f
    ld hl, $5405
    rst $08
    ld a, $90
    ldh [$d2], a
    ld a, $41
    ld hl, $4061
    rst $08
    ld a, $08
    ld [$c2a7], a
    ld a, [$c2c0]
    ld [$c2a9], a
    xor a
    ld [$c2aa], a
    xor a
    ld [$c319], a
    ld [$c30d], a
    ret


Call_045_6468:
    call Call_045_6567
    ld a, [$c314]
    cp $0d
    jr nz, jr_045_64a8

    ld hl, $c30e
    ld a, [hl]
    cp $50
    jr nc, jr_045_6484

    ld a, $50
    sub [hl]
    add $50
    ld [$c3f1], a
    jr jr_045_648d

jr_045_6484:
    sub $50
    ld c, a
    ld a, $50
    sub c
    ld [$c3f1], a

jr_045_648d:
    ld hl, $c30f
    ld a, [hl]
    cp $60
    jr nc, jr_045_649e

    ld a, $60
    sub [hl]
    add $60
    ld [$c3f3], a
    ret


jr_045_649e:
    sub $60
    ld c, a
    ld a, $60
    sub c
    ld [$c3f3], a
    ret


jr_045_64a8:
    ld hl, $c30e
    ld a, $b0
    cp [hl]
    jr nc, jr_045_64b8

    ld a, [$c3f1]
    and a
    jr z, jr_045_650b

    jr jr_045_64f2

jr_045_64b8:
    ld a, [$c3f1]
    sub [hl]
    jr nc, jr_045_64c1

    xor $ff
    inc a

jr_045_64c1:
    ld b, a
    ld c, $00
    ld a, $05

jr_045_64c6:
    srl b
    rr c
    dec a
    jr nz, jr_045_64c6

    ld a, c
    ld [$c3fa], a
    ld a, b
    ld [$c3f9], a
    ld a, [$c3f1]
    sub [hl]
    jr c, jr_045_64f2

    ld c, $00
    ld a, [$c3fa]
    xor $ff
    add $01
    rl c
    ld [$c3fa], a
    ld a, [$c3f9]
    xor $ff
    add c
    ld [$c3f9], a

jr_045_64f2:
    ld a, [$c3f2]
    ld l, a
    ld a, [$c3f1]
    ld h, a
    ld a, [$c3fa]
    ld e, a
    ld a, [$c3f9]
    ld d, a
    add hl, de
    ld a, l
    ld [$c3f2], a
    ld a, h
    ld [$c3f1], a

jr_045_650b:
    ld hl, $c30f
    ld a, $b0
    cp [hl]
    jr c, jr_045_654d

    ld a, [$c3f3]
    sub [hl]
    jr nc, jr_045_651c

    xor $ff
    inc a

jr_045_651c:
    ld b, a
    ld c, $00
    ld a, $05

jr_045_6521:
    srl b
    rr c
    dec a
    jr nz, jr_045_6521

    ld a, c
    ld [$c3fc], a
    ld a, b
    ld [$c3fb], a
    ld a, [$c3f3]
    sub [hl]
    jr c, jr_045_654d

    ld c, $00
    ld a, [$c3fc]
    xor $ff
    add $01
    rl c
    ld [$c3fc], a
    ld a, [$c3fb]
    xor $ff
    add c
    ld [$c3fb], a

jr_045_654d:
    ld a, [$c3f4]
    ld l, a
    ld a, [$c3f3]
    ld h, a
    ld a, [$c3fc]
    ld e, a
    ld a, [$c3fb]
    ld d, a
    add hl, de
    ld a, l
    ld [$c3f4], a
    ld a, h
    ld [$c3f3], a
    ret


Call_045_6567:
    ld hl, $c3f7
    dec [hl]
    ret nz

    ld hl, $c3f6
    inc [hl]

jr_045_6570:
    ld a, $07
    sla a
    ld c, a
    ld b, $00
    ld hl, $67eb
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    pop hl
    ld a, [$c3f6]
    sla a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    cp $fe
    jr nz, jr_045_6595

    xor a
    ld [$c3f6], a
    jr jr_045_6570

jr_045_6595:
    ld [$c3f5], a
    ld a, [hl]
    ld [$c3f7], a
    ret


Call_045_659d:
    ld a, [$c314]
    cp $12
    ret nc

    ld e, a
    ld d, $00
    ld hl, $65af
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, [hl]
    ld h, a
    push de
    ld h, l
    ret c

    ld h, l
    db $e3
    ld h, l
    push af
    ld h, l
    nop
    ld h, [hl]
    dec d
    ld h, [hl]
    jr @+$68

    inc hl
    ld h, [hl]
    dec [hl]
    ld h, [hl]
    ld b, b
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld e, h
    ld h, [hl]
    adc l
    ld h, [hl]
    sbc a
    ld h, [hl]
    and d
    ld h, [hl]
    call nz, $d666
    ld h, [hl]
    sub $66
    call Call_045_678e
    ld a, $00
    ld c, a
    ld a, $ff
    ld b, a
    ld a, $a8
    call Call_045_66f4
    call Call_045_6747
    ld a, [$c30e]
    cp $e8
    ret nz

    ld a, $01
    call Call_045_6780
    ret c

    jp Jump_045_6797


    ld a, $01
    ld c, a
    ld a, $01
    ld b, a
    ld a, $e8
    call Call_045_66f4
    call Call_045_6747
    ld a, [$c30e]
    cp $a8
    ret nz

    ld a, $01
    call Call_045_6780
    ret c

    ld a, $02
    ld [$c314], a
    ret


    call Call_045_678e
    ld a, $03
    ld c, a
    ld a, $01
    ld b, a
    ld a, $28
    call Call_045_671f
    call Call_045_6747
    ld a, [$c30f]
    cp $a0
    ret nz

    ld a, $06
    call Call_045_6780
    ret c

    jp Jump_045_6797


    ld a, $02
    ld c, a
    ld a, $ff
    ld b, a
    ld a, $a0
    call Call_045_671f
    call Call_045_6747
    ld a, [$c30f]
    cp $28
    ret nz

    ld a, $06
    call Call_045_6780
    ret c

    ld a, $07
    ld [$c314], a
    ret


    xor a
    ld [$c317], a
    call Call_045_678e
    ld hl, $c317
    ld a, $01
    xor [hl]
    ld [hl], a
    add $04
    ld c, a
    call Call_045_679c
    ld a, [$c317]
    and a
    jr nz, jr_045_6673

    ld a, $48
    jr jr_045_6675

jr_045_6673:
    ld a, $78

jr_045_6675:
    ld [$c30f], a
    call $2f8c
    ldh a, [$e1]
    and $07
    sla a
    sla a
    sla a
    add $30
    ld [$c30e], a
    call Call_045_6797
    ld a, [$c311]
    cp $ff
    ret nz

    ld a, $0b
    call Call_045_6780
    ret c

    ld a, $0c
    ld [$c314], a
    ret


    call Call_045_678e
    ld a, $a8
    ld [$c30e], a
    ld [$c3f1], a
    ld a, $60
    ld [$c30f], a
    ld [$c3f3], a
    ld a, $ff
    ld [$c316], a
    xor a
    ld [$c317], a
    ld a, $00
    ld c, a
    call Call_045_679c
    call Call_045_6797
    call Call_045_6747
    ld a, [$c30e]
    cp $58
    ret nz

    ld a, $06
    ld c, a
    call Call_045_679c
    call Call_045_6797
    call Call_045_6747
    ld a, [$c30e]
    cp $48
    jr nz, jr_045_66e4

    xor a
    ld [$c316], a

jr_045_66e4:
    ld a, [$c311]
    cp $ff
    ret nz

    ld a, $04
    ld [$c319], a
    xor a
    ld [$c314], a
    ret


Call_045_66f4:
    ld [$c30e], a
    ld a, b
    ld [$c316], a
    xor a
    ld [$c317], a
    ld hl, $c30f

jr_045_6702:
    call $2f8c
    ldh a, [$e1]
    and $07
    jr z, jr_045_670c

    dec a

jr_045_670c:
    sla a
    sla a
    sla a
    add $48
    cp [hl]
    jr z, jr_045_6702

    ld [hl], a
    call Call_045_679c
    call Call_045_6797
    ret


Call_045_671f:
    ld [$c30f], a
    ld a, b
    ld [$c317], a
    xor a
    ld [$c316], a
    ld hl, $c30e

jr_045_672d:
    call $2f8c
    ldh a, [$e1]
    and $07
    sla a
    sla a
    sla a
    add $30
    cp [hl]
    jr z, jr_045_672d

    ld [hl], a
    call Call_045_679c
    call Call_045_6797
    ret


Call_045_6747:
    ld hl, $c30e
    ld a, [$c316]
    add [hl]
    ld [hl], a
    ld hl, $c30f
    ld a, [$c317]
    add [hl]
    ld [hl], a
    ret


Call_045_6758:
    ld a, [$c30f]
    cp $30
    jr c, jr_045_6770

    jr z, jr_045_6770

    cp $38
    jr c, jr_045_6774

    jr z, jr_045_6774

    cp $40
    jr c, jr_045_6778

    jr z, jr_045_6778

    xor a
    jr jr_045_677a

jr_045_6770:
    ld a, $0c
    jr jr_045_677a

jr_045_6774:
    ld a, $08
    jr jr_045_677a

jr_045_6778:
    ld a, $04

jr_045_677a:
    ld [$c318], a
    ret


    ld a, $00

Call_045_6780:
    ld hl, $c315
    cp [hl]
    jr z, jr_045_678c

    ld a, [hl]
    ld [$c314], a
    scf
    ret


jr_045_678c:
    and a
    ret


Call_045_678e:
    ld hl, $c314
    ld a, [hl]
    ld [$c315], a
    inc [hl]
    ret


Call_045_6797:
Jump_045_6797:
    ld hl, $c314
    inc [hl]
    ret


Call_045_679c:
    ld a, c
    ld [$c311], a
    xor a
    ld [$c312], a
    jr jr_045_67af

Call_045_67a6:
    ld hl, $c313
    dec [hl]
    ret nz

    ld hl, $c312
    inc [hl]

jr_045_67af:
    ld a, [$c311]
    cp $ff
    ret z

    sla a
    ld c, a
    ld b, $00
    ld hl, $67eb
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    pop hl
    ld a, [$c312]
    sla a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    cp $ff
    jr z, jr_045_67dc

    cp $fe
    jr nz, jr_045_67e3

    xor a
    ld [$c312], a
    jr jr_045_67af

jr_045_67dc:
    ld a, $ff
    ld [$c311], a
    ld a, $fd

jr_045_67e3:
    ld [$c310], a
    ld a, [hl]
    ld [$c313], a
    ret


    ei
    ld h, a
    ld [$6768], sp
    ld l, b
    ld [hl], b
    ld l, b
    dec d
    ld l, b
    ld a, $68
    add c
    ld l, b
    xor [hl]
    ld l, b
    nop
    ld b, $01
    inc b
    ld [bc], a
    inc b
    inc bc
    ld b, $02
    inc b
    ld bc, $fe04
    inc b
    ld b, $05
    inc b
    ld b, $04
    rlca
    ld b, $06
    inc b
    dec b
    inc b
    cp $fd
    jr nz, @+$0a

    inc c
    add hl, bc
    inc h
    ld a, [bc]
    inc b
    dec bc
    ld [$040a], sp
    add hl, bc
    ld b, $0c
    inc b
    dec c
    ld [$050c], sp
    add hl, bc
    inc h
    ld a, [bc]
    inc b
    dec bc
    ld [$040a], sp
    add hl, bc
    ld b, $0c
    inc b
    dec c
    ld [$050c], sp
    add hl, bc
    ld [$0408], sp
    rst $38
    db $fd
    jr nz, jr_045_684f

    inc c
    rrca
    inc h
    db $10
    inc b
    ld de, $1008
    inc b
    rrca
    ld b, $12
    inc b
    inc de

jr_045_684f:
    ld [$0512], sp
    rrca
    inc h
    db $10
    inc b
    ld de, $1008
    inc b
    rrca
    ld b, $12
    inc b
    inc de
    ld [$0512], sp
    rrca
    ld [$040e], sp
    rst $38
    inc d
    ld [$0815], sp
    ld d, $08
    dec d
    ld [$17fe], sp
    dec b
    jr jr_045_6879

    add hl, de
    dec b
    ld a, [de]
    dec b
    dec de

jr_045_6879:
    dec b
    ld a, [de]
    dec b
    add hl, de
    dec b
    jr jr_045_6885

    cp $1c
    rlca
    dec e
    rlca

jr_045_6885:
    ld e, $0a
    rra
    ld a, [bc]
    jr nz, @+$07

    ld hl, $2005
    dec b
    ld hl, $2005
    jr jr_045_68b6

    inc b
    inc hl
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    inc hl
    ld [bc], a
    ld [hl+], a
    ld bc, $0123
    ld [hl+], a
    ld bc, $0423
    db $fd
    ld bc, $0123
    db $fd
    ld [bc], a
    inc hl
    ld [bc], a
    db $fd
    ld b, b
    rst $38
    inc h
    inc b
    dec h
    inc b
    ld h, $04
    daa
    inc b

jr_045_68b6:
    jr z, jr_045_68bc

    add hl, hl
    inc b
    ld a, [hl+]
    inc b

jr_045_68bc:
    dec hl
    inc b
    inc l
    inc b
    dec l
    inc b
    ld l, $04
    cp $23
    ld l, c
    ld h, b
    ld l, c
    and c
    ld l, c
    sbc $69
    dec de
    ld l, d
    ld e, b
    ld l, d
    sbc c
    ld l, d
    sub $6a
    dec de
    ld l, l
    ld c, h
    ld l, l
    add l
    ld l, l
    cp [hl]
    ld l, l
    rst $30
    ld l, l
    jr nc, jr_045_694f

    ld l, c
    ld l, [hl]
    sbc d
    ld l, [hl]
    db $d3
    ld l, [hl]
    inc c
    ld l, a
    ld b, l
    ld l, a
    ld a, [hl]
    ld l, a
    inc de
    ld l, e
    ld d, h
    ld l, e
    sub l
    ld l, e
    sub $6b
    rla
    ld l, h
    ld e, b
    ld l, h
    sbc c
    ld l, h
    jp c, $b76c

    ld l, a
    db $ec
    ld l, a
    dec h
    ld [hl], b
    ld d, [hl]
    ld [hl], b
    add e
    ld [hl], b
    ret nz

    ld [hl], b
    db $fd
    ld [hl], b
    ld a, [hl-]
    ld [hl], c
    ld [hl], a
    ld [hl], c
    sbc h
    ld [hl], c
    pop bc
    ld [hl], c
    and $71
    dec bc
    ld [hl], d
    jr nc, @+$74

    ld d, l
    ld [hl], d
    ld a, d
    ld [hl], d
    sbc a
    ld [hl], d
    call nz, $e972
    ld [hl], d
    rrca
    nop
    nop
    ld bc, $000a
    ld [$0d02], sp
    nop
    db $10
    inc bc
    dec c
    nop
    jr jr_045_6937

    dec c
    ld [$1100], sp

jr_045_6937:
    ld a, [bc]
    ld [$1208], sp
    ld a, [bc]
    ld [$1310], sp
    ld a, [bc]
    ld [$1418], sp
    dec c
    stop
    ld hl, $100a
    ld [$0a22], sp
    db $10
    db $10
    inc hl

jr_045_694f:
    ld a, [bc]
    db $10
    jr @+$26

    ld a, [bc]
    jr jr_045_6956

jr_045_6956:
    ld sp, $180a
    ld [$0a32], sp
    jr @+$12

    inc sp
    ld a, [bc]
    db $10
    ld bc, $0100
    ld a, [bc]
    ld bc, $0208
    dec c
    ld bc, $0310
    dec c
    ld bc, $0418
    dec c
    add hl, bc
    nop
    ld de, $090a
    ld [$0a12], sp
    add hl, bc
    db $10
    inc de
    ld a, [bc]
    add hl, bc
    jr jr_045_6994

    dec c
    ld de, $0500
    ld a, [bc]
    ld de, $0608
    ld a, [bc]
    ld de, $0710
    ld a, [bc]
    ld de, $3418
    ld a, [bc]
    add hl, de
    nop
    dec d

jr_045_6994:
    ld a, [bc]
    add hl, de
    ld [$0a16], sp
    add hl, de
    db $10
    rla
    ld a, [bc]
    add hl, de
    jr @+$37

    ld a, [bc]
    rrca
    ld bc, $0100
    ld a, [bc]
    ld bc, $0208
    dec c
    ld bc, $0310
    dec c
    ld bc, $0418
    dec c
    add hl, bc
    nop
    ld de, $090a
    ld [$0a12], sp
    add hl, bc
    db $10
    inc de
    ld a, [bc]
    add hl, bc
    jr @+$16

    dec c
    ld de, $2500
    ld a, [bc]
    ld de, $2608
    ld a, [bc]
    ld de, $2710
    ld a, [bc]
    ld de, $3418
    ld a, [bc]
    add hl, de
    ld [$0a36], sp
    add hl, de
    db $10
    scf
    ld a, [bc]
    add hl, de
    jr @+$37

    ld a, [bc]
    rrca
    nop
    nop
    ld bc, $000a
    ld [$0d02], sp
    nop
    db $10
    inc bc
    dec c
    nop
    jr jr_045_69f2

    dec c
    ld [$1100], sp

jr_045_69f2:
    ld a, [bc]
    ld [$1208], sp
    ld a, [bc]
    ld [$1310], sp
    ld a, [bc]
    ld [$1418], sp
    dec c
    stop
    db $10
    ld a, [bc]
    db $10
    ld [$0a20], sp
    db $10
    db $10
    jr nc, @+$0c

    db $10
    jr @+$26

    ld a, [bc]
    jr jr_045_6a11

jr_045_6a11:
    ld sp, $180a
    ld [$0a32], sp
    jr jr_045_6a29

    inc sp
    ld a, [bc]
    rrca
    nop
    nop
    inc b
    dec l
    nop
    ld [$2d03], sp
    nop
    db $10
    ld [bc], a
    dec l
    nop

jr_045_6a29:
    jr jr_045_6a2c

    ld a, [hl+]

jr_045_6a2c:
    ld [$1400], sp
    dec l
    ld [$1308], sp
    ld a, [hl+]
    ld [$1210], sp
    ld a, [hl+]
    ld [$1118], sp
    ld a, [hl+]
    stop
    inc h
    ld a, [hl+]
    db $10
    ld [$2a23], sp
    db $10
    db $10
    ld [hl+], a
    ld a, [hl+]
    db $10
    jr jr_045_6a6c

    ld a, [hl+]
    jr jr_045_6a56

    inc sp
    ld a, [hl+]
    jr @+$12

    ld [hl-], a
    ld a, [hl+]
    jr jr_045_6a6e

jr_045_6a56:
    ld sp, $102a
    ld bc, $0400
    dec l
    ld bc, $0308
    dec l
    ld bc, $0210
    dec l
    ld bc, $0118
    ld a, [hl+]
    add hl, bc
    nop
    inc d

jr_045_6a6c:
    dec l
    add hl, bc

jr_045_6a6e:
    ld [$2a13], sp
    add hl, bc
    db $10
    ld [de], a
    ld a, [hl+]
    add hl, bc
    jr jr_045_6a89

    ld a, [hl+]
    ld de, $3400
    ld a, [hl+]
    ld de, $0708
    ld a, [hl+]
    ld de, $0610
    ld a, [hl+]
    ld de, $0518
    ld a, [hl+]

jr_045_6a89:
    add hl, de
    nop
    dec [hl]
    ld a, [hl+]
    add hl, de
    ld [$2a17], sp
    add hl, de
    db $10
    ld d, $2a
    add hl, de
    jr jr_045_6aad

    ld a, [hl+]
    rrca
    ld bc, $0400
    dec l
    ld bc, $0308
    dec l
    ld bc, $0210
    dec l
    ld bc, $0118
    ld a, [hl+]
    add hl, bc
    nop
    inc d

jr_045_6aad:
    dec l
    add hl, bc
    ld [$2a13], sp
    add hl, bc
    db $10
    ld [de], a
    ld a, [hl+]
    add hl, bc
    jr jr_045_6aca

    ld a, [hl+]
    ld de, $3400
    ld a, [hl+]
    ld de, $2708
    ld a, [hl+]
    ld de, $2610
    ld a, [hl+]
    ld de, $2518
    ld a, [hl+]

jr_045_6aca:
    add hl, de
    nop
    dec [hl]
    ld a, [hl+]
    add hl, de
    ld [$2a37], sp
    add hl, de
    db $10
    ld [hl], $2a
    rrca
    nop
    nop
    inc b
    dec l
    nop
    ld [$2d03], sp
    nop
    db $10
    ld [bc], a
    dec l
    nop
    jr jr_045_6ae7

    ld a, [hl+]

jr_045_6ae7:
    ld [$1400], sp
    dec l
    ld [$1308], sp
    ld a, [hl+]
    ld [$1210], sp
    ld a, [hl+]
    ld [$1118], sp
    ld a, [hl+]
    stop
    inc h
    ld a, [hl+]
    db $10
    ld [$2a30], sp
    db $10
    db $10
    jr nz, jr_045_6b2d

    db $10
    jr jr_045_6b16

    ld a, [hl+]
    jr jr_045_6b11

    inc sp
    ld a, [hl+]
    jr jr_045_6b1d

    ld [hl-], a
    ld a, [hl+]
    jr jr_045_6b29

jr_045_6b11:
    ld sp, $102a
    jr jr_045_6b16

jr_045_6b16:
    nop
    dec bc
    jr jr_045_6b22

    ld [$180b], sp

jr_045_6b1d:
    db $10
    ld e, h
    dec bc
    jr @+$1a

jr_045_6b22:
    nop
    dec bc
    stop
    nop
    dec bc
    db $10

jr_045_6b29:
    ld [$0b5d], sp
    db $10

jr_045_6b2d:
    db $10
    ld e, [hl]
    dec bc
    db $10
    jr jr_045_6b33

jr_045_6b33:
    dec bc
    ld [$5000], sp
    dec bc
    ld [$5108], sp
    dec bc
    ld [$5210], sp
    dec bc
    ld [$5018], sp
    dec hl
    nop
    nop
    ld b, e
    dec bc
    nop
    ld [$0b44], sp
    nop
    db $10
    ld b, h
    dec hl
    nop
    jr jr_045_6b96

    dec hl
    db $10
    add hl, de
    nop
    nop
    dec bc
    add hl, de
    ld [$0b18], sp
    add hl, de
    db $10
    inc c
    dec bc
    add hl, de
    jr jr_045_6b64

jr_045_6b64:
    dec bc
    ld de, $4200
    dec bc
    ld de, $3a08
    dec bc
    ld de, $3a10
    dec hl
    ld de, $4218
    dec hl
    add hl, bc
    nop
    ld e, b
    dec bc
    add hl, bc
    ld [$0b45], sp
    add hl, bc
    db $10
    ld b, l
    dec hl
    add hl, bc
    jr @+$5a

    dec hl
    ld bc, $0d00
    dec bc
    ld bc, $4408
    dec bc
    ld bc, $4410
    dec hl
    ld bc, $0d18
    dec hl
    db $10

jr_045_6b96:
    jr jr_045_6b98

jr_045_6b98:
    nop
    dec bc
    jr @+$0a

    ld e, h
    dec hl
    jr jr_045_6bb0

    ld [$182b], sp
    jr jr_045_6ba5

jr_045_6ba5:
    dec bc
    stop
    nop
    dec bc
    db $10
    ld [$2b5e], sp
    db $10
    db $10

jr_045_6bb0:
    ld e, l
    dec hl
    db $10
    jr jr_045_6bb5

jr_045_6bb5:
    dec bc
    ld [$5000], sp
    dec bc
    ld [$5208], sp
    dec hl
    ld [$5110], sp
    dec hl
    ld [$5018], sp
    dec hl
    nop
    nop
    ld b, e
    dec bc
    nop
    ld [$0b44], sp
    nop
    db $10
    ld b, h
    dec hl
    nop
    jr jr_045_6c18

    dec hl
    db $10
    jr jr_045_6bd9

jr_045_6bd9:
    nop
    ld a, [bc]
    jr jr_045_6be5

    ld d, [hl]
    ld a, [bc]
    jr jr_045_6bf1

    ld d, a
    ld a, [bc]
    jr @+$1a

jr_045_6be5:
    nop
    ld a, [bc]
    stop
    ld h, h
    ld a, [bc]
    db $10
    ld [$0a4a], sp
    db $10
    db $10

jr_045_6bf1:
    ld c, e
    ld a, [bc]
    db $10
    jr @+$73

    ld a, [bc]
    ld [$5400], sp
    ld a, [bc]
    ld [$5508], sp
    ld a, [bc]
    ld [$5510], sp
    ld a, [hl+]
    ld [$5418], sp
    ld a, [hl+]
    nop
    nop
    ld c, b
    ld a, [bc]
    nop
    ld [$0a49], sp
    nop
    db $10
    ld c, c
    ld a, [hl+]
    nop
    jr jr_045_6c5e

    ld a, [hl+]
    db $10

jr_045_6c18:
    add hl, de
    nop
    nop
    ld a, [bc]
    add hl, de
    ld [$0a76], sp
    add hl, de
    db $10
    ld [hl], a
    ld a, [bc]
    add hl, de
    jr jr_045_6c27

jr_045_6c27:
    ld a, [bc]
    ld de, $6400
    ld a, [bc]
    ld de, $6908
    ld a, [bc]
    ld de, $6a10
    ld a, [bc]
    ld de, $6b18
    ld a, [bc]
    add hl, bc
    nop
    ld l, a
    ld a, [bc]
    add hl, bc
    ld [$0a70], sp
    add hl, bc
    db $10
    ld [hl], b
    ld a, [hl+]
    add hl, bc
    jr jr_045_6cb6

    ld a, [hl+]
    ld bc, $6300
    ld a, [bc]
    ld bc, $1908
    ld a, [bc]
    ld bc, $1910
    ld a, [hl+]
    ld bc, $6318
    ld a, [hl+]
    db $10
    ld a, [de]
    nop
    ld l, h
    ld a, [bc]
    ld a, [de]

jr_045_6c5e:
    ld [$0a6d], sp
    ld a, [de]
    db $10
    ld l, [hl]
    ld a, [bc]
    ld a, [de]
    jr jr_045_6c68

jr_045_6c68:
    ld a, [bc]
    ld [de], a
    nop
    ld e, a
    ld a, [bc]
    ld [de], a
    ld [$0a60], sp
    ld [de], a
    db $10
    ld h, c
    ld a, [bc]
    ld [de], a
    jr jr_045_6cda

    ld a, [bc]
    ld a, [bc]
    nop
    ld d, e
    ld a, [bc]
    ld a, [bc]
    ld [$0a55], sp
    ld a, [bc]
    db $10
    ld d, l
    ld a, [hl+]
    ld a, [bc]
    jr jr_045_6cdb

    ld a, [hl+]
    ld [bc], a
    nop
    ld b, [hl]
    ld a, [bc]
    ld [bc], a
    ld [$0a47], sp
    ld [bc], a
    db $10
    ld b, a
    ld a, [hl+]
    ld [bc], a
    jr jr_045_6cde

    ld a, [hl+]
    db $10
    add hl, de
    nop
    nop
    ld a, [hl+]
    add hl, de
    ld [$2a77], sp
    add hl, de
    db $10
    db $76
    ld a, [hl+]
    add hl, de
    jr jr_045_6ca9

jr_045_6ca9:
    ld a, [hl+]
    ld de, $6b00
    ld a, [hl+]
    ld de, $6a08
    ld a, [hl+]
    ld de, $6910
    ld a, [hl+]

jr_045_6cb6:
    ld de, $6418
    ld a, [hl+]
    add hl, bc
    nop
    ld l, a
    ld a, [bc]
    add hl, bc
    ld [$0a70], sp
    add hl, bc
    db $10
    ld [hl], b
    ld a, [hl+]
    add hl, bc
    jr jr_045_6d38

    ld a, [hl+]
    ld bc, $6300
    ld a, [bc]
    ld bc, $1908
    ld a, [bc]
    ld bc, $1910
    ld a, [hl+]
    ld bc, $6318
    ld a, [hl+]

jr_045_6cda:
    db $10

jr_045_6cdb:
    jr jr_045_6cdd

jr_045_6cdd:
    nop

jr_045_6cde:
    ld a, [bc]
    jr jr_045_6ce9

    ld d, a
    ld a, [hl+]
    jr jr_045_6cf5

    ld d, [hl]
    ld a, [hl+]
    jr @+$1a

jr_045_6ce9:
    nop
    ld a, [bc]
    stop
    ld [hl], c
    ld a, [hl+]
    db $10
    ld [$2a4b], sp
    db $10
    db $10

jr_045_6cf5:
    ld c, d
    ld a, [hl+]
    db $10
    jr @+$66

    ld a, [hl+]
    ld [$5400], sp
    ld a, [bc]
    ld [$5508], sp
    ld a, [bc]
    ld [$5510], sp
    ld a, [hl+]
    ld [$5418], sp
    ld a, [hl+]
    nop
    nop
    ld c, b
    ld a, [bc]
    nop
    ld [$0a49], sp
    nop
    db $10
    ld c, c
    ld a, [hl+]
    nop
    jr @+$4a

    ld a, [hl+]
    inc c
    nop
    nop
    jr c, jr_045_6d6a

    nop
    ld [$4a39], sp
    nop
    db $10
    add hl, sp
    ld l, d
    nop
    jr @+$3a

    ld l, d
    ld [$2800], sp
    ld c, d
    ld [$2908], sp
    ld c, d
    ld [$2910], sp
    ld l, d

jr_045_6d38:
    ld [$2818], sp
    ld l, d
    stop
    add hl, bc
    ld c, l
    db $10
    ld [$4a19], sp
    db $10
    db $10
    add hl, de
    ld l, d
    db $10
    jr jr_045_6d54

    ld l, l
    ld c, $00
    ld [$4a3b], sp
    nop
    db $10
    dec sp

jr_045_6d54:
    ld l, d
    ld [$2a00], sp
    ld c, d
    ld [$2b08], sp
    ld c, d
    ld [$2b10], sp
    ld l, d
    ld [$2a18], sp
    ld l, d
    stop
    ld a, [de]
    ld c, d
    db $10

jr_045_6d6a:
    ld [$4a1b], sp
    db $10
    db $10
    dec de
    ld l, d
    db $10
    jr jr_045_6d8e

    ld l, d
    jr jr_045_6d77

jr_045_6d77:
    ld a, [bc]
    ld c, d
    jr jr_045_6d83

    dec bc
    ld c, d
    jr jr_045_6d8f

    dec bc
    ld l, d
    jr @+$1a

jr_045_6d83:
    ld a, [bc]
    ld l, d
    ld c, $00
    nop
    dec [hl]
    ld a, [hl+]
    nop
    ld [$4a3c], sp

jr_045_6d8e:
    nop

jr_045_6d8f:
    db $10
    dec a
    ld c, d
    nop
    jr jr_045_6dd3

    ld c, d
    ld [$2c00], sp
    ld c, d
    ld [$2d08], sp
    ld c, d
    ld [$2e10], sp
    ld c, d
    ld [$2f18], sp
    ld c, d
    stop
    inc e
    ld c, d
    db $10
    ld [$4a1d], sp
    db $10
    db $10
    ld e, $4d
    db $10
    jr @+$21

    ld c, l
    jr jr_045_6dc8

    ld c, $4d
    jr @+$1a

    rrca
    ld c, d
    ld c, $00
    nop
    ld h, l
    ld c, d
    nop
    ld [$4a66], sp
    nop

jr_045_6dc8:
    db $10
    ld h, a
    ld c, d
    nop
    jr jr_045_6e36

    ld c, d
    ld [$5908], sp
    ld c, d

jr_045_6dd3:
    ld [$5a10], sp
    ld c, d
    ld [$5b18], sp
    ld c, d
    stop
    ld c, h
    ld c, d
    db $10
    ld [$4d4d], sp
    db $10
    db $10
    ld c, [hl]
    ld c, l
    db $10
    jr jr_045_6e39

    ld c, d
    jr jr_045_6ded

jr_045_6ded:
    ccf
    ld c, l
    jr jr_045_6df9

    ld b, b
    ld c, l
    jr jr_045_6e05

    ld b, c
    ld c, l
    ld c, $00

jr_045_6df9:
    nop
    ld a, $6a
    nop
    ld [$6a3d], sp
    nop
    db $10
    inc a
    ld l, d
    nop

jr_045_6e05:
    jr jr_045_6e3c

    ld a, [bc]
    ld [$2f00], sp
    ld l, d
    ld [$2e08], sp
    ld l, d
    ld [$2d10], sp
    ld l, d
    ld [$2c18], sp
    ld l, d
    stop
    rra
    ld l, l
    db $10
    ld [$6d1e], sp
    db $10
    db $10
    dec e
    ld l, d
    db $10
    jr @+$1e

    ld l, d
    jr jr_045_6e2a

jr_045_6e2a:
    rrca
    ld l, d
    jr jr_045_6e36

    ld c, $6d
    ld c, $00
    nop
    ld l, b
    ld l, d
    nop

jr_045_6e36:
    ld [$6a67], sp

jr_045_6e39:
    nop
    db $10
    ld h, [hl]

jr_045_6e3c:
    ld l, d
    nop
    jr jr_045_6ea5

    ld l, d
    ld [$5b00], sp
    ld l, d
    ld [$5a08], sp
    ld l, d
    ld [$5910], sp
    ld l, d
    stop
    ld c, a
    ld l, d
    db $10
    ld [$6d4e], sp
    db $10
    db $10
    ld c, l
    ld l, l
    db $10
    jr jr_045_6ea8

    ld l, d
    jr jr_045_6e67

    ld b, c
    ld l, l
    jr @+$12

    ld b, b
    ld l, l
    jr jr_045_6e7f

jr_045_6e67:
    ccf
    ld l, l
    inc c
    ld [$0900], sp
    dec c
    ld [$1908], sp
    ld a, [bc]
    ld [$1910], sp
    ld a, [hl+]
    ld [$0918], sp
    dec l
    stop
    jr z, @+$0c

    db $10

jr_045_6e7f:
    ld [$0a29], sp
    db $10
    db $10
    add hl, hl
    ld a, [hl+]
    db $10
    jr @+$2a

    ld a, [hl+]
    jr jr_045_6e8c

jr_045_6e8c:
    jr c, jr_045_6e98

    jr jr_045_6e98

    add hl, sp
    ld a, [bc]
    jr jr_045_6ea4

    add hl, sp
    ld a, [hl+]
    jr @+$1a

jr_045_6e98:
    jr c, jr_045_6ec4

    ld c, $00
    nop
    ld a, [bc]
    ld a, [bc]
    nop
    ld [$0a0b], sp
    nop

jr_045_6ea4:
    db $10

jr_045_6ea5:
    dec bc
    ld a, [hl+]
    nop

jr_045_6ea8:
    jr @+$0c

    ld a, [hl+]
    ld [$1a00], sp
    ld a, [bc]
    ld [$1b08], sp
    ld a, [bc]
    ld [$1b10], sp
    ld a, [hl+]
    ld [$1a18], sp
    ld a, [hl+]
    stop
    ld a, [hl+]
    ld a, [bc]
    db $10
    ld [$0a2b], sp
    db $10

jr_045_6ec4:
    db $10
    dec hl
    ld a, [hl+]
    db $10
    jr jr_045_6ef4

    ld a, [hl+]
    jr jr_045_6ed5

    dec sp
    ld a, [bc]
    jr @+$12

    dec sp
    ld a, [hl+]
    ld c, $00

jr_045_6ed5:
    db $10
    ld c, $0d
    nop
    jr @+$11

    ld a, [bc]
    ld [$1c00], sp
    ld a, [bc]
    ld [$1d08], sp
    ld a, [bc]
    ld [$1e10], sp
    dec c
    ld [$1f18], sp
    dec c
    stop
    inc l
    ld a, [bc]
    db $10
    ld [$0a2d], sp

jr_045_6ef4:
    db $10
    db $10
    ld l, $0a
    db $10
    jr jr_045_6f2a

    ld a, [bc]
    jr jr_045_6efe

jr_045_6efe:
    dec [hl]
    ld l, d
    jr jr_045_6f0a

    inc a
    ld a, [bc]
    jr jr_045_6f16

    dec a
    ld a, [bc]
    jr @+$1a

jr_045_6f0a:
    ld a, $0a
    ld c, $00
    nop
    ccf
    dec c
    nop
    ld [$0d40], sp
    nop

jr_045_6f16:
    db $10
    ld b, c
    dec c
    ld [$4c00], sp
    ld a, [bc]
    ld [$4d08], sp
    dec c
    ld [$4e10], sp
    dec c
    ld [$4f18], sp
    ld a, [bc]
    db $10

jr_045_6f2a:
    ld [$0a59], sp
    db $10
    db $10
    ld e, d
    ld a, [bc]
    db $10
    jr jr_045_6f8f

    ld a, [bc]
    jr jr_045_6f37

jr_045_6f37:
    ld h, l
    ld a, [bc]
    jr jr_045_6f43

    ld h, [hl]
    ld a, [bc]
    jr @+$12

    ld h, a
    ld a, [bc]
    jr @+$1a

jr_045_6f43:
    ld l, b
    ld a, [bc]
    ld c, $00
    nop
    rrca
    ld a, [hl+]
    nop
    ld [$2d0e], sp
    ld [$1f00], sp
    dec l
    ld [$1e08], sp
    dec l
    ld [$1d10], sp
    ld a, [hl+]
    ld [$1c18], sp
    ld a, [hl+]
    stop
    cpl
    ld a, [hl+]
    db $10
    ld [$2a2e], sp
    db $10
    db $10
    dec l
    ld a, [hl+]
    db $10
    jr @+$2e

    ld a, [hl+]
    jr jr_045_6f70

jr_045_6f70:
    ld a, $2a
    jr jr_045_6f7c

    dec a
    ld a, [hl+]
    jr jr_045_6f88

    inc a
    ld a, [hl+]
    jr @+$1a

jr_045_6f7c:
    dec [hl]
    ld c, d
    ld c, $00
    ld [$2d41], sp
    nop
    db $10
    ld b, b
    dec l
    nop

jr_045_6f88:
    jr jr_045_6fc9

    dec l
    ld [$4f00], sp
    ld a, [hl+]

jr_045_6f8f:
    ld [$4e08], sp
    dec l
    ld [$4d10], sp
    dec l
    ld [$4c18], sp
    ld a, [hl+]
    stop
    ld e, e
    ld a, [hl+]
    db $10
    ld [$2a5a], sp
    db $10
    db $10
    ld e, c
    ld a, [hl+]
    jr jr_045_6fa9

jr_045_6fa9:
    ld l, b
    ld a, [hl+]
    jr jr_045_6fb5

    ld h, a
    ld a, [hl+]
    jr @+$12

    ld h, [hl]
    ld a, [hl+]
    jr jr_045_6fcd

jr_045_6fb5:
    ld h, l
    ld a, [hl+]
    dec c
    ld a, [$7200]
    ld a, [bc]

jr_045_6fbc:
    ld a, [$7308]
    dec c
    ld a, [$7410]
    dec c
    ld a, [$7518]
    dec c
    ld [bc], a

jr_045_6fc9:
    nop
    add c
    ld a, [bc]
    ld [bc], a

jr_045_6fcd:
    ld [$0a82], sp
    ld [bc], a

jr_045_6fd1:
    db $10
    add e
    ld a, [bc]
    ld [bc], a
    jr @-$7a

    ld a, [bc]
    ld a, [bc]
    nop

jr_045_6fda:
    sub c
    ld a, [bc]
    ld a, [bc]
    ld [$0a92], sp
    ld a, [bc]
    db $10
    sub e
    ld a, [bc]
    ld a, [bc]
    jr @-$6a

    ld a, [bc]
    ld [de], a
    db $10
    and e
    ld a, [bc]
    ld c, $fd
    nop
    add l
    dec c
    db $fd
    ld [$0d86], sp
    dec b
    nop
    sub l
    dec c
    dec b
    ld [$0a96], sp
    dec b
    db $10
    sub a
    ld a, [bc]
    dec b
    jr @-$66

    ld a, [bc]
    dec c

jr_045_7006:
    nop
    and l
    ld a, [bc]
    dec c
    ld [$0aa6], sp
    dec c
    db $10
    and a
    ld a, [bc]
    dec c
    jr jr_045_6fbc

    ld a, [bc]
    dec d
    nop
    or e
    ld a, [bc]
    dec d
    ld [$0ab4], sp
    dec d
    db $10
    or l
    ld a, [bc]
    dec d
    jr jr_045_6fda

    ld a, [bc]
    inc c
    ld [$7900], sp
    dec c
    ld [$7a08], sp
    dec c
    ld [$7b10], sp
    ld a, [bc]
    ld [$7c18], sp
    ld a, [bc]
    stop
    adc c
    dec c
    db $10
    ld [$0a8a], sp
    db $10
    db $10
    adc e
    ld a, [bc]
    db $10
    jr jr_045_6fd1

    ld a, [bc]
    jr jr_045_7048

jr_045_7048:
    sbc c
    ld a, [bc]
    jr jr_045_7054

    sbc d
    ld a, [bc]
    jr @+$12

    sbc e
    ld a, [bc]
    jr jr_045_706c

jr_045_7054:
    sbc h
    ld a, [bc]
    dec bc
    ld [$7d00], sp
    ld a, [bc]
    ld [$7e08], sp

jr_045_705e:
    dec c
    ld [$7f10], sp
    dec c
    ld [$8018], sp
    ld a, [bc]
    stop
    adc l
    ld a, [bc]
    db $10

jr_045_706c:
    ld [$0a8e], sp
    db $10
    db $10

jr_045_7071:
    adc a
    ld a, [bc]
    db $10
    jr jr_045_7006

    ld a, [bc]
    jr jr_045_7081

    sbc [hl]
    ld a, [bc]
    jr jr_045_708d

    sbc a
    ld a, [bc]
    jr @+$1a

jr_045_7081:
    and b
    ld a, [bc]
    rrca
    nop
    nop
    and c
    ld a, [bc]
    nop
    ld [$0aa2], sp
    nop

jr_045_708d:
    db $10
    and d
    ld a, [hl+]
    nop
    jr @-$5d

    ld a, [hl+]
    ld [$b100], sp
    ld a, [bc]
    ld [$b208], sp

jr_045_709b:
    dec c
    ld [$b210], sp
    dec l
    ld [$b118], sp
    ld a, [hl+]
    stop
    xor e
    ld a, [bc]
    db $10
    ld [$0aac], sp
    db $10
    db $10
    xor h
    ld a, [hl+]
    db $10
    jr jr_045_705e

    ld a, [hl+]
    jr jr_045_70be

jr_045_70b6:
    and h
    ld a, [bc]
    jr jr_045_70ca

    add a
    ld a, [bc]
    jr @+$1a

jr_045_70be:
    adc b
    ld a, [bc]
    rrca
    nop
    nop
    and c
    ld a, [bc]
    nop
    ld [$0da2], sp
    nop

jr_045_70ca:
    db $10
    and d
    ld a, [hl+]
    nop
    jr jr_045_7071

    ld a, [hl+]
    ld [$b100], sp
    ld a, [bc]
    ld [$7808], sp
    dec c
    ld [$7810], sp
    dec l
    ld [$b118], sp
    ld a, [hl+]
    stop
    xor e
    ld a, [bc]
    db $10
    ld [$0aac], sp
    db $10
    db $10
    xor h
    ld a, [hl+]
    db $10
    jr jr_045_709b

    ld a, [hl+]
    jr jr_045_70fb

    and h
    ld a, [bc]
    jr jr_045_7107

    add a

jr_045_70f8:
    ld a, [bc]
    jr @+$1a

jr_045_70fb:
    adc b
    ld a, [bc]
    rrca
    nop
    nop
    xor c
    ld a, [bc]
    nop
    ld [$0aaa], sp
    nop

jr_045_7107:
    db $10
    xor d
    ld a, [hl+]
    nop
    jr jr_045_70b6

    ld a, [hl+]
    ld [$b700], sp
    ld a, [bc]
    ld [$b808], sp
    ld a, [bc]
    ld [$b810], sp
    ld a, [hl+]

jr_045_711a:
    ld [$b718], sp
    ld a, [hl+]
    stop
    xor e
    ld a, [bc]
    db $10
    ld [$0aac], sp
    db $10
    db $10
    xor h
    ld a, [hl+]
    db $10
    jr @-$51

    ld a, [bc]
    jr jr_045_7138

    and h
    ld a, [bc]
    jr jr_045_7144

    cp d
    ld a, [bc]
    jr @+$1a

jr_045_7138:
    cp e
    ld a, [bc]
    rrca
    nop
    nop
    xor [hl]
    inc c
    nop
    ld [$0caf], sp
    nop

jr_045_7144:
    db $10
    xor a
    inc l
    nop
    jr jr_045_70f8

    inc l
    ld [$bc00], sp
    inc c
    ld [$bd08], sp
    inc c
    ld [$bd10], sp
    inc l
    ld [$bc18], sp
    inc l
    stop
    cp a
    inc c
    db $10
    ld [$0c9d], sp
    db $10
    db $10
    sbc l
    inc l
    db $10
    jr jr_045_711a

    inc c
    jr jr_045_7175

    cp c
    inc c
    jr jr_045_7181

    ret nz

    inc c
    jr jr_045_718d

jr_045_7175:
    cp [hl]
    inc c
    add hl, bc
    inc d
    nop
    rra
    ld b, $14
    ld [$0620], sp
    inc d

jr_045_7181:
    db $10
    ld hl, $0c06
    nop
    db $10
    ld b, $0c
    ld [$0611], sp
    inc c

jr_045_718d:
    db $10
    ld [de], a
    ld b, $04
    nop
    ld bc, $0406
    ld [$0602], sp
    inc b
    db $10
    inc bc
    ld b, $09
    inc d
    nop
    ld [hl+], a
    ld b, $14
    ld [$0623], sp
    inc d
    db $10
    inc h
    ld b, $0c
    nop
    inc de
    ld b, $0c
    ld [$0614], sp
    inc c
    db $10
    dec d
    ld b, $04
    nop
    inc b
    ld b, $04
    ld [$0605], sp
    inc b
    db $10
    ld b, $06
    add hl, bc
    inc d
    nop
    dec h
    ld b, $14
    ld [$0626], sp
    inc d
    db $10
    daa
    ld b, $0c
    nop
    ld d, $06
    inc c
    ld [$0617], sp
    inc c
    db $10
    jr @+$08

    inc b
    nop
    rlca
    ld b, $04
    ld [$0608], sp
    inc b
    db $10
    add hl, bc
    ld b, $09
    inc d
    nop
    jr z, jr_045_71f1

    inc d
    ld [$0629], sp
    inc d
    db $10

jr_045_71f1:
    ld a, [hl+]
    ld b, $0c
    nop
    add hl, de
    ld b, $0c
    ld [$061a], sp
    inc c
    db $10
    dec de
    ld b, $04
    nop
    ld a, [bc]
    ld b, $04
    ld [$060b], sp
    inc b
    db $10
    inc c
    ld b, $09
    inc d
    nop
    dec hl
    ld b, $14
    ld [$062c], sp
    inc d
    db $10
    dec l
    ld b, $0c
    nop
    inc e
    ld b, $0c
    ld [$061d], sp
    inc c
    db $10
    ld e, $06
    inc b
    nop
    dec c
    ld b, $04
    ld [$060e], sp
    inc b
    db $10
    rrca
    ld b, $09
    inc d
    nop
    ld b, a
    ld b, $14
    ld [$0648], sp
    inc d
    db $10
    ld c, c
    ld b, $0c
    nop
    dec sp
    ld b, $0c
    ld [$063c], sp
    inc c
    db $10
    dec sp
    ld h, $04
    nop
    ld l, $06
    inc b
    ld [$062f], sp
    inc b
    db $10
    jr nc, jr_045_725b

    add hl, bc
    inc d
    nop
    dec [hl]
    ld b, $14

jr_045_725b:
    ld [$064a], sp
    inc d
    db $10
    dec [hl]
    ld b, $0c
    nop
    dec a
    ld b, $0c
    ld [$0635], sp
    inc c
    db $10
    dec a
    ld h, $04
    nop
    ld sp, $0406
    ld [$0632], sp
    inc b
    db $10
    ld sp, $0926
    inc d
    nop
    ld c, e
    ld b, $14
    ld [$064c], sp
    inc d
    db $10
    ld c, l
    ld b, $0c
    nop
    ld a, $06
    inc c
    ld [$063f], sp
    inc c
    db $10
    ld b, b
    ld b, $04
    nop
    inc sp
    ld b, $04
    ld [$0634], sp
    inc b
    db $10
    dec [hl]
    ld b, $09
    inc d
    nop
    ld c, [hl]
    ld b, $14
    ld [$064f], sp
    inc d
    db $10
    ld d, b
    ld b, $0c
    nop
    ld b, c
    ld b, $0c
    ld [$0642], sp
    inc c
    db $10
    ld b, e
    ld b, $04
    nop
    dec [hl]
    ld b, $04
    ld [$0636], sp
    inc b
    db $10
    scf
    ld b, $09
    inc d
    nop
    ld d, c
    ld b, $14
    ld [$0652], sp
    inc d
    db $10
    dec [hl]
    ld b, $0c
    nop
    ld b, h
    ld b, $0c
    ld [$0645], sp
    inc c
    db $10
    ld b, [hl]
    ld b, $04
    nop
    jr c, jr_045_72e7

    inc b
    ld [$0639], sp
    inc b
    db $10

jr_045_72e7:
    ld a, [hl-]
    ld b, $09
    stop
    nop
    ld [bc], a
    db $10
    ld [$0200], sp
    db $10
    stop
    ld [bc], a
    ld [$0000], sp
    ld [bc], a
    ld [$0008], sp
    ld [bc], a
    inc c
    db $10
    rra
    ld b, $00
    nop
    nop
    ld [bc], a
    nop
    ld [$0200], sp
    inc b
    db $10
    db $10
    ld b, $ff
    ld a, a
    and a
    db $10
    sbc a
    inc de
    cp a
    inc d
    rst $38
    ld a, a
    and a
    db $10
    rst $38
    ld [bc], a
    sbc a
    inc de
    rst $38
    ld a, a
    ld [hl], b
    ld a, [hl]
    pop af
    ld a, a
    rst $38
    ld a, a
    and l
    inc d
    and a
    db $10
    sbc a
    inc de
    ld [hl], e
    add hl, de
    rst $38
    ld a, a
    db $e3
    ld a, l
    inc h
    ld h, a
    ldh [$30], a
    rst $38
    ld a, a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld h, h
    ld e, c
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    db $76
    ld hl, $0200
    nop
    ld [bc], a
    nop
    ld [bc], a
    rst $18
    ld a, e
    ld [bc], a
    nop
    ld a, [hl+]
    dec h
    rst $08
    add hl, sp
    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    push bc
    add $c2
    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    add $c5
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    jp $c2c4


    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    call nz, $c1c3
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    jp $c2c4


    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    call nz, $c1c3
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    jp $c2c4


    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    call nz, $c1c3
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    jp $c2c4


    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    call nz, $c1c3
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    jp $c2c4


    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    call nz, $c1c3
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    jp $c2c4


    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    call nz, $c1c3
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    jp $c2c4


    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    jp nz, $c2c2

    call nz, $c1c3
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    jp $c2c4


    jp nz, $c2c2

    jp nz, $c2c2

    ret c

    jp nz, $d8c2

    jp nz, $c2c2

    jp nz, $c4c2

    jp $c1c1


    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    rst $00
    ret z

    jp z, $cccb

    call $c2ce
    rst $08
    ret nc

    pop de
    jp nc, $c2d3

    call nc, $d6d5
    rst $10
    ret z

    rst $00
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ret


    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    adc a
    adc a
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
    rrca
    rrca
    rrca
    rrca
    xor a
    xor a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    adc a
    adc a
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
    rrca
    rrca
    rrca
    rrca
    xor a
    xor a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    adc a
    adc a
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
    rrca
    rrca
    rrca
    rrca
    xor a
    xor a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    adc a
    adc a
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
    rrca
    rrca
    rrca
    rrca
    xor a
    xor a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    adc a
    adc a
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
    rrca
    rrca
    rrca
    rrca
    xor a
    xor a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    adc a
    adc a
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
    rrca
    rrca
    rrca
    rrca
    xor a
    xor a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    adc a
    adc a
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
    rrca
    rrca
    rrca
    rrca
    xor a
    xor a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    adc a
    adc a
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
    rrca
    rrca
    rrca
    rrca
    xor a
    xor a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    adc a
    adc a
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    adc a
    rrca
    rrca
    adc a
    rrca
    rrca
    rrca
    rrca
    rrca
    xor a
    xor a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    rrca
    adc a
    adc a
    adc a
    adc a
    adc a
    rrca
    adc a
    adc a
    adc a
    adc a
    xor a
    xor a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, $7e
    ld hl, $74b6
    rst $08
    ret


    ldh a, [$aa]
    push af
    ld a, $01
    ldh [$aa], a
    call Call_045_766b
    pop af
    ldh [$aa], a
    ret


Call_045_766b:
    call Call_045_7699
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    call Call_045_76ee
    ld a, $05
    call $2fcb
    ld hl, $b1f3
    ld de, $cd49
    ld bc, $0008
    call $3026
    ld de, $c708
    ld bc, $0011
    call $3026
    call $2fe1
    pop af
    ldh [rSVBK], a
    ret


Call_045_7699:
    ld a, $05
    call $2fcb
    ld hl, $cd49
    ld de, $b1f3
    ld bc, $0008
    call $3026
    ld hl, $c708
    ld bc, $0011
    call $3026
    call $2fe1
    xor a
    ld [$cd49], a
    ld [$cd4a], a
    ld [$cd4b], a
    ld [$cd4c], a
    ld [$cd4d], a
    ld [$cd4e], a
    ld [$cd4f], a
    ld hl, $c708
    ld bc, $0011
    call $3041
    call $31f3
    call $300b
    ld a, $5c
    ld hl, $5c87
    rst $08
    ld a, $41
    ld hl, $4061
    rst $08
    ld a, $23
    ld hl, $4f53
    rst $08
    ret


Call_045_76ee:
jr_045_76ee:
    call $0a57
    ld a, [$cd49]
    bit 7, a
    jr nz, jr_045_7709

    call Call_045_7719
    ld a, $23
    ld hl, $4f69
    rst $08
    ld a, $41
    ld hl, $4061
    rst $08
    jr jr_045_76ee

jr_045_7709:
    ld a, $23
    ld hl, $4f53
    rst $08
    call $31f3
    call $0fdb
    call $300b
    ret


Call_045_7719:
    ld a, [$cd49]
    ld e, a
    ld d, $00
    ld hl, $7728
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    jr c, jr_045_77a1

    ld h, h
    ld [hl], a
    xor d
    ld a, b
    add sp, $78
    ld b, d
    ld a, c
    db $76
    ld a, c
    add h
    ld a, c
    and a
    ld a, c
    ld a, $5c
    ld hl, $5ccd
    rst $08
    ld de, $3018
    ld a, $1d
    call $3b2a
    ld hl, $000c
    add hl, bc
    ld a, $06
    ld [hl], a
    ld de, $4820
    ld a, $1d
    call $3b2a
    ld hl, $000c
    add hl, bc
    ld a, $07
    ld [hl], a
    ld a, $03
    ld [$cd23], a
    jp Jump_045_7a0a


    ld a, [$cd4a]
    cp $10
    jr nz, jr_045_776f

    ld a, $01
    jr jr_045_7770

jr_045_776f:
    xor a

jr_045_7770:
    ld [$cd24], a
    ld hl, $ffa7
    ld a, [hl]
    and $04
    jr nz, jr_045_77a5

    ld a, [hl]
    and $08
    jr nz, jr_045_77ac

    ld a, [hl]
    and $01
    jp nz, Jump_045_784c

    ld a, [hl]
    and $02
    jr nz, jr_045_77d6

    ld hl, $ffa9
    ld a, [hl]
    and $40
    jr nz, jr_045_77f1

    ld a, [hl]
    and $80
    jr nz, jr_045_780a

    ld a, [hl]
    and $20
    jp nz, Jump_045_782d

    ld a, [hl]
    and $10

jr_045_77a1:
    jp nz, Jump_045_7837

    ret


Jump_045_77a5:
jr_045_77a5:
    ld a, $5c
    ld hl, $5cf0
    rst $08
    ret


Jump_045_77ac:
jr_045_77ac:
    ld a, $02
    ld [$cd4c], a
    ld a, $04
    ld [$cd4d], a
    ret


Jump_045_77b7:
    ld a, $03
    ld [$cd24], a
    ld a, [$cd4a]
    and a
    jr z, jr_045_77c5

    jp Jump_045_7a0a


jr_045_77c5:
    ld a, $06
    ld [$cd49], a
    ret


Jump_045_77cb:
    ld a, $80
    ld [$cd49], a
    ld [$c2dd], a
    jp Jump_045_7a0a


jr_045_77d6:
    call $2009
    ld a, [$cd4a]
    and a
    ret z

    dec a
    ld [$cd4a], a
    ld e, a
    ld d, $00
    ld hl, $c708
    add hl, de
    xor a
    ld [hl], a
    ld hl, $c4f2
    add hl, de
    ld [hl], a
    ret


jr_045_77f1:
    ld a, [$cd4d]
    and a
    ret z

    dec a
    ld [$cd4d], a
    cp $03
    ret nz

    ld a, [$cd4c]
    ld e, a
    sla a
    sla a
    add e

jr_045_7806:
    ld [$cd4c], a
    ret


jr_045_780a:
    ld a, [$cd4d]
    cp $04
    ret z

    inc a
    ld [$cd4d], a
    cp $04
    ret nz

    ld a, [$cd4c]
    cp $0a
    jr nc, jr_045_7825

    cp $05
    jr nc, jr_045_7829

    xor a
    jr jr_045_7806

jr_045_7825:
    ld a, $02
    jr jr_045_7806

jr_045_7829:
    ld a, $01
    jr jr_045_7806

Jump_045_782d:
    ld a, [$cd4c]
    and a
    ret z

    dec a
    ld [$cd4c], a
    ret


Jump_045_7837:
    ld e, $0d
    ld a, [$cd4d]
    cp $04
    jr nz, jr_045_7842

    ld e, $02

jr_045_7842:
    ld a, [$cd4c]
    cp e
    ret z

    inc a
    ld [$cd4c], a
    ret


Jump_045_784c:
    call $2009
    ld a, [$cd4d]
    cp $04
    jr nz, jr_045_7866

    ld a, [$cd4c]
    cp $02
    jp z, Jump_045_77b7

    cp $01
    jp z, Jump_045_77cb

    jp Jump_045_77a5


jr_045_7866:
    ld a, [$cd4a]
    ld e, a
    cp $10
    jp z, Jump_045_77ac

    inc a
    ld [$cd4a], a
    ld d, $00
    ld a, [$cd4b]
    and a
    jr nz, jr_045_7880

    ld hl, $7a0f
    jr jr_045_7883

jr_045_7880:
    ld hl, $7a47

jr_045_7883:
    push de
    ld a, [$cd4c]
    ld b, a
    ld a, [$cd4d]
    ld c, $0e
    call $3105
    add b
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld hl, $c708
    add hl, de
    ld [hl], a
    pop de
    ld hl, $c4f2
    add hl, de
    sub $20
    ld [hl], a
    ld a, e
    cp $0f
    ret nz

    jp Jump_045_77ac


    ld hl, $79b5
    call $1d35
    call $1cbb
    call $1cfd
    ld hl, $79bd
    call $1d35
    call $1cbb
    call $1cfd
    ld a, $41
    ld hl, $4061
    rst $08
    ld hl, $c550
    ld de, $79c5
    call $1078
    ld hl, $c577
    ld a, $ed
    ld [hl], a
    ld hl, $c5b9
    ld de, $79cc
    call $1078
    ld a, $01
    ld [$cd4e], a
    jp Jump_045_7a0a


    ldh a, [$a7]
    cp $02
    jr z, jr_045_7939

    cp $01
    jr z, jr_045_7925

    cp $80
    jr z, jr_045_790f

    cp $40
    ret nz

    ld a, [$cd4e]
    and a
    ret z

    dec a
    ld [$cd4e], a
    ld hl, $c54f
    ld a, $ed
    ld [hl], a
    ld hl, $c577
    ld a, $7f
    ld [hl], a
    ret


jr_045_790f:
    ld a, [$cd4e]
    and a
    ret nz

    inc a
    ld [$cd4e], a
    ld hl, $c54f
    ld a, $7f
    ld [hl], a
    ld hl, $c577
    ld a, $ed
    ld [hl], a
    ret


jr_045_7925:
    call $2009
    ld a, [$cd4e]
    and a
    jr nz, jr_045_7939

    call $1c07
    ld a, $01
    ld [$cd4f], a
    jp Jump_045_7a0a


jr_045_7939:
    call $1c07
    call $1c07
    jp Jump_045_7a0a


    call $103e
    ld hl, $c5b9
    ld de, $79f7
    call $1078
    ld a, $1e
    ld [$cd4e], a
    ld a, $05
    call $2fcb
    ld a, [$cd4f]
    ld [$aa4b], a
    ld hl, $c708
    ld de, $aa4c
    ld bc, $0011
    call $3026
    call $2fe1
    ld a, [$cd4f]
    and a
    jr z, jr_045_797e

    call Call_045_7a0a
    ld hl, $cd4e
    dec [hl]
    ret nz

    call $1c07

jr_045_797e:
    ld a, $80
    ld [$cd49], a
    ret


    ld hl, $79b5
    call $1d35
    call $1cbb
    call $1cfd
    ld a, $41
    ld hl, $4061
    rst $08
    ld hl, $c5b9
    ld de, $79e1
    call $1078
    ld a, $1e
    ld [$cd4e], a
    call Call_045_7a0a
    ld hl, $cd4e
    dec [hl]
    ret nz

    call $1c07
    ld a, $01
    ld [$cd49], a
    ret


    ld b, b
    inc c
    nop
    ld de, $0013
    nop
    nop
    ld b, b
    rlca
    ld c, $0b
    inc de
    nop
    nop
    nop
    jp z, Jump_045_4eb2

    or d
    or d
    or h
    ld d, b
    cp d
    dec h
    ld b, b
    adc h
    xor c
    db $e3
    inc de
    rra
    adc $2f
    sbc $bc
    jp $b54f


    or a
    rst $08
    cp l
    or [hl]
    and $50
    ld b, b
    adc h
    xor c
    db $e3
    inc de
    ld c, d
    add $e1
    or e
    ret c

    ld [c], a
    cp b
    ld c, a
    cp e
    jp c, $b2c3

    rst $08
    cp [hl]
    sbc $e7
    ld d, b
    xor b
    rlca
    add c
    xor e
    ld b, b
    adc h
    xor c
    db $e3
    inc de
    rra
    adc $2f
    sbc $4f
    cp h
    rst $08
    cp h
    ret nz

    ld d, b

Call_045_7a0a:
Jump_045_7a0a:
    ld hl, $cd49
    inc [hl]
    ret


    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    jr nz, jr_045_7a4b

    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    jr nz, jr_045_7a67

    jr nc, jr_045_7a7a

    ld [hl-], a
    inc sp

jr_045_7a4b:
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_045_7a8a

    jr nz, jr_045_7a73

    jr nz, jr_045_7a75

    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    jr nz, jr_045_7a82

    jr nz, jr_045_7a90

    dec l
    ld l, $2f

jr_045_7a67:
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    jr nz, jr_045_7a90

    jr nz, jr_045_7acd

    ld e, h

jr_045_7a73:
    ld e, l
    ld e, [hl]

jr_045_7a75:
    ld e, a
    ld h, b
    ld a, e
    ld a, h
    ld a, l

jr_045_7a7a:
    ld a, [hl]
    jr nz, @+$22

    jr nz, @+$22

    ldh a, [$aa]
    push af

jr_045_7a82:
    ld a, $01
    ldh [$aa], a
    call Call_045_7a8d
    pop af

jr_045_7a8a:
    ldh [$aa], a
    ret


Call_045_7a8d:
    call Call_045_7a94

jr_045_7a90:
    call Call_045_7acd
    ret


Call_045_7a94:
    xor a
    ld [$cf63], a
    ld [$cf64], a
    ld [$cf65], a
    ld [$cf66], a
    call $31f3
    call $300b
    ld a, $5c
    ld hl, $6e78
    rst $08
    ld a, $41
    ld hl, $4000
    rst $08
    ret


    call $31f3
    call $300b
    ld a, $5c
    ld hl, $6e78
    rst $08
    ld a, $5c
    ld hl, $6eb9
    rst $08
    ld a, $41
    ld hl, $4061
    rst $08
    ret


Call_045_7acd:
jr_045_7acd:
    call $0a57
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_045_7ae2

    call Call_045_7ae9
    ld a, $41
    ld hl, $4000
    rst $08
    jr jr_045_7acd

jr_045_7ae2:
    call $31f3
    call $300b
    ret


Call_045_7ae9:
    ld a, [$cf63]
    ld e, a
    ld d, $00
    ld hl, $7af8
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld b, $7b
    inc d
    ld a, e
    jr z, jr_045_7b79

    ld sp, $4f7b
    ld a, e
    or [hl]
    ld a, e
    ld c, d
    ld a, h
    ld a, $5c
    ld hl, $6eb9
    rst $08
    ld a, $10
    ld [$cf64], a
    jp Jump_045_7cdd


    ld hl, $cf64
    dec [hl]
    ret nz

    ld hl, $7cbc
    call $1d35
    call $1cbb
    call $1cfd
    jp Jump_045_7cdd


    ld hl, $7cd3
    call $1057
    jp Jump_045_7cdd


    ld hl, $7cc4
    call $1d35
    call $1cbb
    call $1cfd
    ld hl, $c550
    ld de, $7ccc
    call $1078
    ld hl, $c54f
    ld a, $ed
    ld [hl], a
    jp Jump_045_7cdd


    ldh a, [$a7]
    cp $02
    jr z, jr_045_7ba4

    cp $01
    jr z, jr_045_7b8c

    cp $80
    jr z, jr_045_7b76

    cp $40
    ret nz

    ld a, [$cf64]
    and a
    ret z

    dec a
    ld [$cf64], a
    ld hl, $c54f
    ld a, $ed
    ld [hl], a
    ld hl, $c577
    ld a, $7f
    ld [hl], a
    ret


jr_045_7b76:
    ld a, [$cf64]

jr_045_7b79:
    and a
    ret nz

    inc a
    ld [$cf64], a
    ld hl, $c54f
    ld a, $7f
    ld [hl], a
    ld hl, $c577
    ld a, $ed
    ld [hl], a
    ret


jr_045_7b8c:
    call $2009
    ld a, [$cf64]
    and a
    jr nz, jr_045_7ba4

    call $1c07
    call $1c07
    ld a, $41
    ld hl, $4061
    rst $08
    jp Jump_045_7cdd


jr_045_7ba4:
    call $1c07
    call $1c07
    ld a, $41
    ld hl, $4061
    rst $08
    ld a, $80
    ld [$cf63], a
    ret


    call Call_045_7c89
    ld a, $01
    ldh [$d4], a
    ld a, $46
    ld hl, $4284
    rst $08
    call $300b
    ld a, [$c300]
    and a
    jr z, jr_045_7be7

    cp $0a
    jr z, jr_045_7be1

jr_045_7bd0:
    ld a, $02
    ld [$c303], a
    ld a, $5f
    ld hl, $7555
    rst $08
    ld a, $80
    ld [$cf63], a
    ret


jr_045_7be1:
    ld a, $80
    ld [$cf63], a
    ret


jr_045_7be7:
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    ld a, [$cd89]
    and $01
    jr nz, jr_045_7c16

    ld a, [$d000]
    cp $fe
    jr nz, jr_045_7c16

    ld a, [$d001]
    cp $0f
    jr nz, jr_045_7c16

    ld hl, $dfec
    ld de, $cd69
    ld c, $10

jr_045_7c0b:
    ld a, [de]
    inc de
    cp [hl]
    jr nz, jr_045_7c16

    inc hl
    dec c
    jr nz, jr_045_7c0b

    jr jr_045_7c20

jr_045_7c16:
    pop af
    ldh [rSVBK], a
    ld a, $d3
    ld [$c300], a
    jr jr_045_7bd0

jr_045_7c20:
    pop af
    ldh [rSVBK], a
    ld a, $5c
    ld hl, $6eb9
    rst $08
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    ld a, $07
    call $2fcb
    ld hl, $d002
    ld de, $b000
    ld bc, $1000
    call $3026
    call $2fe1
    pop af
    ldh [rSVBK], a
    jp Jump_045_7cdd


    ld hl, $7cbc
    call $1d35
    call $1cbb
    call $1cfd
    ld a, $41
    ld hl, $4061
    rst $08
    ld hl, $7cd8
    call $1057
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $0008
    ld c, $08

jr_045_7c71:
    push hl
    ld a, $ff
    ld [hl+], a
    ld a, $7f
    ld [hl], a
    pop hl
    add hl, de
    dec c
    jr nz, jr_045_7c71

    call $04b6
    pop af
    ldh [rSVBK], a
    ld a, $80
    ld [$cf63], a
    ret


Call_045_7c89:
    ld a, $07
    call $2fcb
    ld l, $00
    ld h, l
    ld de, $b000
    ld bc, $0ffc

jr_045_7c97:
    push bc
    ld a, [de]
    inc de
    ld c, a
    ld b, $00
    add hl, bc
    pop bc
    dec bc
    ld a, b
    or c
    jr nz, jr_045_7c97

    ld a, l
    ld [$cd83], a
    ld a, h
    ld [$cd84], a
    ld hl, $bfea
    ld de, $cd69
    ld bc, $0010
    call $3026
    call $2fe1
    ret


    ld b, b
    inc c
    nop
    ld de, $0013
    nop
    nop
    ld b, b
    rlca
    ld c, $0b
    inc de
    nop
    nop
    nop
    jp z, Jump_045_4eb2

    or d
    or d
    or h
    ld d, b
    ld d, $c2
    ld d, b
    ld [hl], c
    ld d, b
    ld d, $21
    ld d, c
    ld [hl], c
    ld d, b

Jump_045_7cdd:
    ld hl, $cf63
    inc [hl]
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
